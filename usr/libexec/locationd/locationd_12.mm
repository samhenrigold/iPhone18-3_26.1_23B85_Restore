uint64_t sub_1000C7DB0(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (*(a1 + 28))
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
      v3 = *(a1 + 28);
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
    if ((*(a1 + 28) & 2) == 0)
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
    v3 = *(a1 + 28);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102637EC8 + 16);
    }

    v9 = sub_1000C7D40(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
  }

LABEL_26:
  *(a1 + 24) = v4;
  return v4;
}

uint64_t sub_1000C7EAC(unsigned int *a1, unsigned int a2)
{
  v3 = a1[14];
  if (v3)
  {
    if ((v3 & 2) != 0)
    {
      v4 = (((v3 << 31) >> 31) & 9) + 9;
    }

    else
    {
      v4 = ((v3 << 31) >> 31) & 9;
    }

    if ((v3 & 4) != 0)
    {
      v5 = a1[6];
      if ((v5 & 0x80000000) != 0)
      {
        v6 = 11;
      }

      else if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        v3 = a1[14];
      }

      else
      {
        v6 = 2;
      }

      v4 += v6;
    }

    if ((v3 & 8) != 0)
    {
      v8 = a1[7];
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = a1[14];
      }

      else
      {
        v9 = 2;
      }

      v4 += v9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v10 = a1[10];
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
        v3 = a1[14];
      }

      else
      {
        v11 = 2;
      }

      v4 += v11;
    }

    v12 = ((v3 >> 5) & 2) + v4;
    if ((v3 & 0x80) != 0)
    {
      result = v12 + 5;
    }

    else
    {
      result = v12;
    }
  }

  else
  {
    result = 0;
  }

  a1[13] = result;
  return result;
}

uint64_t sub_1000C7FBC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(result + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102637EC8 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t sub_1000C8058(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 20))
  {
    v5 = *(result + 8);
    if (!v5)
    {
      v5 = *(qword_102637ED0 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2, a4);
  }

  return result;
}

uint64_t sub_1000C8084(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 44), a2, a4);
    if ((*(v5 + 56) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return result;
  }

LABEL_17:
  v7 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, v7, a3);
}

void sub_1000C81A4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1000D0100(a1);

  operator delete();
}

void sub_1000C81DC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1000CFEBC(a1);

  operator delete();
}

void sub_1000C8214(uint64_t a1, uint64_t a2)
{
  sub_1000C828C(*(a1 + 40), *a2);
  if (*(a2 + 8))
  {
    sub_1000A2B60((a1 + 72), a2);
    sub_1000CB57C((*(a1 + 40) + 3728), a2);

    sub_1000CB718(a1);
  }
}

void sub_1000C828C(uint64_t a1, double a2)
{
  sub_1000C8470(a1 + 3296);
  sub_10062ADF4(a1 + 4232);
  sub_1000C83B0(a1 + 3368);
  sub_1000C54CC(a1 + 3440);
  sub_1000C88D4(a1 + 3512);
  sub_1000CA484(a1 + 3584);
  sub_1000CA484(a1 + 3656);
  sub_1000CA544(a1 + 3728);
  sub_1000C9C50(a1 + 3800);
  sub_1000C8F80(a1 + 3872);
  sub_1000C95FC(a1 + 3944);
  sub_1000C96BC(a1 + 4016);
  sub_1000C9B90(a1 + 4088);
  sub_1000CAE68(a1 + 4160);
  sub_1000CB2A0(a1 + 4304);
  sub_1000CB4BC(a1 + 4376);
  sub_10062AEB4(a1 + 4448);
  sub_1000CB360((a1 + 3584));

  sub_1000CB360((a1 + 3656));
}

void sub_1000C83B0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_1000C8470(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void *sub_1000C8530(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 121) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 104);
      v8 = *(a1 + 122);
      *buf = 134218752;
      v37 = v7 - v4;
      v38 = 2048;
      v39 = v4;
      v40 = 2048;
      v41 = v7;
      v42 = 1024;
      v43 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, all-day elevation, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v23 = *(a1 + 104);
      v24 = *(a1 + 122);
      v28 = 134218752;
      v29 = v23 - v4;
      v30 = 2048;
      v31 = v4;
      v32 = 2048;
      v33 = v23;
      v34 = 1024;
      v35 = v24;
      LODWORD(v27) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "#Warning Input, all-day elevation, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", COERCE_DOUBLE(&v28), v27);
      v26 = v25;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLCoarseElevationChangeEntry>::update(CFAbsoluteTime)", "%s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 122) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 121) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = (v10 + 8 * (v9 >> 8));
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v12 + 16 * v9;
  }

  v14 = v10 + 8 * (v9 >> 8);
LABEL_19:
  v15 = v13;
  while (1)
  {
    v16 = v11 == v10 ? 0 : *(v10 + (((*(a1 + 64) + v9) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 64) + v9);
    if (v15 == v16 || vabdd_f64(*(a1 + 104), *v15) <= 1200.0)
    {
      break;
    }

    v15 += 2;
    v13 += 16;
    if (*v14 + 4096 == v13)
    {
      v17 = *(v14 + 8);
      v14 += 8;
      v13 = v17;
      goto LABEL_19;
    }
  }

  if (v11 == v10)
  {
    v18 = 0;
  }

  else
  {
    v18 = *v12 + 16 * v9;
  }

  result = sub_1000B3638((a1 + 24), v12, v18, v14, v13);
  v20 = *(a1 + 64);
  if (v20)
  {
    v21 = *(*(*(a1 + 32) + (((v20 + *(a1 + 56) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v20 + *(a1 + 56) - 1)) + 180.0 + 20.0;
  }

  else
  {
    v21 = -1.79769313e308;
  }

  v22 = v21 > a2 && *(a1 + 123) != 1;
  *(a1 + 120) = v22;
  return result;
}

void sub_1000C88D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void *sub_1000C8994(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v38 = v7;
      v39 = 2048;
      v40 = v8 - v4;
      v41 = 2048;
      v42 = v4;
      v43 = 2048;
      v44 = v8;
      v45 = 1024;
      v46 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v21 = *(a1 + 8);
      v22 = *(a1 + 104);
      v23 = *(a1 + 121);
      v27 = 136316162;
      v28 = v21;
      v29 = 2048;
      v30 = v22 - v4;
      v31 = 2048;
      v32 = v4;
      v33 = 2048;
      v34 = v22;
      v35 = 1024;
      v36 = v23;
      LODWORD(v26) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", &v27, v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLSwimEntry>::update(CFAbsoluteTime) [Data_T = CLSwimEntry]", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 / 0x1A));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v13 + 152 * (v10 % 0x1A));
  }

  v15 = (v11 + 8 * (v10 / 0x1A));
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + 8 * ((*(a1 + 64) + v10) / 0x1A)) + 152 * ((*(a1 + 64) + v10) % 0x1A);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *(v16 + 5)) <= 1200.0)
    {
      break;
    }

    v14 += 152;
    v16 += 152;
    if ((*v15 + 3952) == v14)
    {
      v18 = v15[1];
      ++v15;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v13 + 152 * (v10 % 0x1A));
  }

  return sub_1000C8D14((a1 + 24), v13, v19, v15, v14);
}

void *sub_1000C8D14(void *a1, void *a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 26 * (a4 - a2) - 0x79435E50D79435E5 * (&a5[-*a4] >> 3) + 0x79435E50D79435E5 * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x1A));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*v9 + 152 * (v7 % 0x1A));
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 26 * (a2 - v9) - 0x79435E50D79435E5 * (&a3[-*a2] >> 3) + 0x79435E50D79435E5 * (&v10[-*v9] >> 3);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x1A);
  v24[0].n128_u64[1] = v10;
  sub_1000B9760(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1000B9760(v24, v6);
      sub_10045F038(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1000B9760(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x1A));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = (*v16 + 152 * (v14 % 0x1A));
      }

      v24[0] = v12;
      sub_10045F1EC(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x1A));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 152 * (v19 % 0x1A);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_1000B9760(v24, v11);
  return v24[0].n128_u64[0];
}

void sub_1000C8F80(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void *sub_1000C9040(void *a1, char *a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 24 * ((a4 - a2) >> 3) - 0x30C30C30C30C30C3 * (&a5[-*a4] >> 3) + 0x30C30C30C30C30C3 * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x18));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*v9 + 168 * (v7 % 0x18));
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 24 * ((a2 - v9) >> 3) - 0x30C30C30C30C30C3 * (&a3[-*a2] >> 3) + 0x30C30C30C30C30C3 * (&v10[-*v9] >> 3);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x18);
  v24[0].n128_u64[1] = v10;
  sub_1010F17CC(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1010F17CC(v24, v6);
      sub_1010F1870(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1010F17CC(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x18));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = (*v16 + 168 * (v14 % 0x18));
      }

      v24[0] = v12;
      sub_1010F1A24(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x18));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 168 * (v19 % 0x18);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_1010F17CC(v24, v11);
  return v24[0].n128_u64[0];
}

void *sub_1000C92B4(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v38 = v7;
      v39 = 2048;
      v40 = v8 - v4;
      v41 = 2048;
      v42 = v4;
      v43 = 2048;
      v44 = v8;
      v45 = 1024;
      v46 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v21 = *(a1 + 8);
      v22 = *(a1 + 104);
      v23 = *(a1 + 121);
      v27 = 136316162;
      v28 = v21;
      v29 = 2048;
      v30 = v22 - v4;
      v31 = 2048;
      v32 = v4;
      v33 = 2048;
      v34 = v22;
      v35 = 1024;
      v36 = v23;
      LODWORD(v26) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", &v27, v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLCalorimetryFunctionalStrengthDMFeatures>::update(CFAbsoluteTime) [Data_T = CLCalorimetryFunctionalStrengthDMFeatures]", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 >> 8));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v13 + 16 * v10;
  }

  v15 = v11 + 8 * (v10 >> 8);
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + (((*(a1 + 64) + v10) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 64) + v10);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 2;
    v14 += 16;
    if (*v15 + 4096 == v14)
    {
      v18 = *(v15 + 8);
      v15 += 8;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v13 + 16 * v10;
  }

  return sub_1000B3638((a1 + 24), v13, v19, v15, v14);
}

void sub_1000C95FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_1000C96BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void *sub_1000C977C(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v38 = v7;
      v39 = 2048;
      v40 = v8 - v4;
      v41 = 2048;
      v42 = v4;
      v43 = 2048;
      v44 = v8;
      v45 = 1024;
      v46 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v21 = *(a1 + 8);
      v22 = *(a1 + 104);
      v23 = *(a1 + 121);
      v27 = 136316162;
      v28 = v21;
      v29 = 2048;
      v30 = v22 - v4;
      v31 = 2048;
      v32 = v4;
      v33 = 2048;
      v34 = v22;
      v35 = 1024;
      v36 = v23;
      LODWORD(v26) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", &v27, v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLCalorimetryDanceDMFeatures>::update(CFAbsoluteTime) [Data_T = CLCalorimetryDanceDMFeatures]", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 / 0xAA));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v13 + 24 * (v10 % 0xAA));
  }

  v15 = (v11 + 8 * (v10 / 0xAA));
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + 8 * ((*(a1 + 64) + v10) / 0xAA)) + 24 * ((*(a1 + 64) + v10) % 0xAA);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 3;
    v14 += 24;
    if ((*v15 + 4080) == v14)
    {
      v18 = v15[1];
      ++v15;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v13 + 24 * (v10 % 0xAA));
  }

  return sub_1000CA088((a1 + 24), v13, v19, v15, v14);
}

void *sub_1000C9AF4(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x5555555555555555 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 169 - v3;
      v6 = &v2[-(v5 / 0xAA)];
      *result = v6;
      v4 = *v6 + 24 * (170 * (v5 / 0xAA) - v5) + 4056;
    }

    else
    {
      *result = &v2[v3 / 0xAA];
      v4 = v2[v3 / 0xAA] + 24 * (v3 % 0xAA);
    }

    result[1] = v4;
  }

  return result;
}

void sub_1000C9B90(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_1000C9C50(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void *sub_1000C9D10(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v38 = v7;
      v39 = 2048;
      v40 = v8 - v4;
      v41 = 2048;
      v42 = v4;
      v43 = 2048;
      v44 = v8;
      v45 = 1024;
      v46 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v21 = *(a1 + 8);
      v22 = *(a1 + 104);
      v23 = *(a1 + 121);
      v27 = 136316162;
      v28 = v21;
      v29 = 2048;
      v30 = v22 - v4;
      v31 = 2048;
      v32 = v4;
      v33 = 2048;
      v34 = v22;
      v35 = 1024;
      v36 = v23;
      LODWORD(v26) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", &v27, v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<_CLFitnessMachineData>::update(CFAbsoluteTime) [Data_T = _CLFitnessMachineData]", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 / 0x18));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v13 + 168 * (v10 % 0x18));
  }

  v15 = (v11 + 8 * (v10 / 0x18));
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + 8 * ((*(a1 + 64) + v10) / 0x18)) + 168 * ((*(a1 + 64) + v10) % 0x18);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 21;
    v14 += 168;
    if ((*v15 + 4032) == v14)
    {
      v18 = *(v15 + 1);
      v15 += 8;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v13 + 168 * (v10 % 0x18));
  }

  return sub_1000C9040((a1 + 24), v13, v19, v15, v14);
}

void *sub_1000CA088(void *a1, void *a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 170 * (a4 - a2) - 0x5555555555555555 * (&a5[-*a4] >> 3) + 0x5555555555555555 * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0xAA));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*v9 + 24 * (v7 % 0xAA));
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 170 * (a2 - v9) - 0x5555555555555555 * (&a3[-*a2] >> 3) + 0x5555555555555555 * (&v10[-*v9] >> 3);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0xAA);
  v24[0].n128_u64[1] = v10;
  sub_1000C9AF4(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1000C9AF4(v24, v6);
      sub_100F9DFE0(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1000C9AF4(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0xAA));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = (*v16 + 24 * (v14 % 0xAA));
      }

      v24[0] = v12;
      sub_100F9E194(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0xAA));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 24 * (v19 % 0xAA);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_1000C9AF4(v24, v11);
  return v24[0].n128_u64[0];
}

void sub_1000CA2F4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*(a1 + 258))
  {
    v9 = *(a2 + 8);
    v10 = *(a2 + 4);
    v7 = a4;
    v8 = 2;
    sub_1013194B0(a1, &v7);
    if (qword_1025D4760 != -1)
    {
      sub_101B52FC8();
    }

    v5 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67174913;
      v12 = v10;
      v13 = 2048;
      v14 = a4;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController_feedGnssAvailability,gnssAvailabilityEvidence,%{private}d,currentTime,%f", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B53470();
    }
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101B52ED8();
    }

    v6 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController,CLOutdoorEstimatorTurnOffGnssAvailability", &v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B5339C();
    }
  }
}

void sub_1000CA484(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_1000CA544(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

uint64_t sub_1000CA604(char **a1, uint64_t a2, double a3)
{
  v6 = sub_1000CAADC(a2);
  if ((v6 & 0x100000000) == 0)
  {
    sub_101B6DFAC(a2);
  }

  v7 = v6;
  v8 = *a1;

  return sub_1000D4CD8(v8, v7, 1, a3);
}

uint64_t sub_1000CA668(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  if (*(a1 + 28) == 1)
  {
    v5 = (*(**a1 + 48))(a2);
    if (*(a1 + 64) == 1)
    {
      v6 = sub_1000CA604(*(a1 + 8), *(a1 + 48), v3);
    }

    else
    {
      v6 = 0;
    }

    if (qword_1025D4230 != -1)
    {
      sub_10198BE00();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 67109888;
      v29 = v11;
      v30 = 2048;
      v31 = v3;
      v32 = 1024;
      v33 = v5;
      v34 = 1024;
      v35 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_10198BD94();
      }

      *v22 = 2048;
      *&v22[2] = v3;
      *&v22[10] = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      LODWORD(v20) = 30;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", &v21, v20, 67109888, *v22);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLStepCountEntry>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLStepCountEntry>]", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v2 = v5 & v6;
    return v2 & 1;
  }

  v7 = *(a1 + 24);
  if (v7 == 1)
  {
    v12 = *(a1 + 64);
    v13 = sub_1000CA604(*(a1 + 8), *(a1 + 48), a2.n128_f64[0]);
    if (qword_1025D4230 != -1)
    {
      sub_10198BE00();
    }

    v2 = v12 & v13;
    v14 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 67110144;
      v29 = v15;
      v30 = 2048;
      v31 = v3;
      v32 = 1024;
      v33 = v12;
      v34 = 1024;
      v35 = v13 & 1;
      v36 = 1024;
      v37 = v12 & v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_10198BD94();
      }

      *v22 = 2048;
      *&v22[2] = v3;
      *&v22[10] = 1024;
      v24 = 1024;
      v25 = v13 & 1;
      v26 = 1024;
      v27 = v12 & v13;
      LODWORD(v20) = 36;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", &v21, v20, 67110144, *v22, *&v22[8]);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLStepCountEntry>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLStepCountEntry>]", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    return v2 & 1;
  }

  if (v7)
  {
    return v2 & 1;
  }

  v8 = *(**a1 + 48);

  return v8();
}

uint64_t sub_1000CAADC(int a1)
{
  if ((a1 - 1) > 0xF)
  {
    return 0x100000006;
  }

  else
  {
    return qword_101D24460[a1 - 1] | qword_101D243E0[a1 - 1];
  }
}

void *sub_1000CAB14(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v38 = v7;
      v39 = 2048;
      v40 = v8 - v4;
      v41 = 2048;
      v42 = v4;
      v43 = 2048;
      v44 = v8;
      v45 = 1024;
      v46 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v21 = *(a1 + 8);
      v22 = *(a1 + 104);
      v23 = *(a1 + 121);
      v27 = 136316162;
      v28 = v21;
      v29 = 2048;
      v30 = v22 - v4;
      v31 = 2048;
      v32 = v4;
      v33 = 2048;
      v34 = v22;
      v35 = 1024;
      v36 = v23;
      LODWORD(v26) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", &v27, v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLCalorimetryRowingDMFeatures>::update(CFAbsoluteTime) [Data_T = CLCalorimetryRowingDMFeatures]", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 >> 7));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v13 + 32 * (*(a1 + 56) & 0x7FLL);
  }

  v15 = v11 + 8 * (v10 >> 7);
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + (((*(a1 + 64) + v10) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 64) + v10) & 0x7F);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 4;
    v14 += 32;
    if (*v15 + 4096 == v14)
    {
      v18 = *(v15 + 8);
      v15 += 8;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v13 + 32 * (*(a1 + 56) & 0x7FLL);
  }

  return sub_1000B98C0((a1 + 24), v13, v19, v15, v14);
}

void sub_1000CAE68(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void *sub_1000CAF28(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v38 = v7;
      v39 = 2048;
      v40 = v8 - v4;
      v41 = 2048;
      v42 = v4;
      v43 = 2048;
      v44 = v8;
      v45 = 1024;
      v46 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v21 = *(a1 + 8);
      v22 = *(a1 + 104);
      v23 = *(a1 + 121);
      v27 = 136316162;
      v28 = v21;
      v29 = 2048;
      v30 = v22 - v4;
      v31 = 2048;
      v32 = v4;
      v33 = 2048;
      v34 = v22;
      v35 = 1024;
      v36 = v23;
      LODWORD(v26) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", &v27, v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLCalorimetryKickboxingDMFeatures>::update(CFAbsoluteTime) [Data_T = CLCalorimetryKickboxingDMFeatures]", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 / 0xAA));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v13 + 24 * (v10 % 0xAA));
  }

  v15 = (v11 + 8 * (v10 / 0xAA));
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(v11 + 8 * ((*(a1 + 64) + v10) / 0xAA)) + 24 * ((*(a1 + 64) + v10) % 0xAA);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 3;
    v14 += 24;
    if ((*v15 + 4080) == v14)
    {
      v18 = v15[1];
      ++v15;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v13 + 24 * (v10 % 0xAA));
  }

  return sub_1000CA088((a1 + 24), v13, v19, v15, v14);
}

void sub_1000CB2A0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

void sub_1000CB360(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 6);
    v5 = *(a1 + 28);
    if (v4)
    {
      v6 = *(a1 + 28);
      if (v4 == 1)
      {
        v5 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Keeping source active, legacyMode, %d, dataProviderMode, %d", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EA700(a1);
  }

  v7 = *(a1 + 6);
  if (!v7 || *(a1 + 28) == 1)
  {
    sub_100632D24(*a1);
    v7 = *(a1 + 6);
  }

  if (v7 == 1 || *(a1 + 28) == 1)
  {
    sub_100632DB4(a1, 0, *(a1 + 5));
  }
}

void sub_1000CB4BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 28) == 1)
  {
    (*(**a1 + 40))();
    v2 = *(a1 + 24);
  }

  if ((v2 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v3 = *(a1 + 56);
    if (v3 < sub_1000081AC() && *(a1 + 64) == 1)
    {
      sub_1012004D8(*(a1 + 8), *(a1 + 48));
      if (*(a1 + 64) == 1)
      {
        *(a1 + 64) = 0;
      }
    }
  }
}

uint64_t *sub_1000CB57C(uint64_t *result, uint64_t a2)
{
  if (!*(result + 6) || (*(result + 28) & 1) != 0)
  {
    if (!*result)
    {
      sub_1018D0F24();
    }

    v3 = *(**result + 32);
    v4 = *result;

    return v3(v4, a2);
  }

  return result;
}

double sub_1000CB5DC(void *a1, __int128 *a2)
{
  v4 = a1[8];
  if (v4 >= 0x5DC && v4 % 0x64 == 0)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101A35BA4();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[1];
      v8 = a1[8];
      v10 = 136315394;
      v11 = v7;
      v12 = 2048;
      v13 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Extremely large CLNatalieInputBuffer, %s, size, %lu", &v10, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A35BB8();
    }
  }

  *&result = sub_1000C3B70(a1 + 3, a2).n128_u64[0];
  return result;
}

void sub_1000CB718(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = sub_1004A2080(*(v2 + 40) + 3728, &v72, v1);
  if (v4)
  {
    v7 = *(v3 + 32);
    v6.n128_f64[0] = v1;
    v8 = sub_1000CCE3C(*(v3 + 40) + 3296, v6);
    (**v7)(buf, v7, &v72, v8, *(v3 + 40), v1);
    (*(**buf + 24))(*buf, *(v3 + 40), v1);
    v4 = *&buf[8];
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }
  }

  if ((*(v3 + 216) & 1) == 0)
  {
    v9.n128_u64[1] = 0;
    do
    {
      if (!*(v3 + 112))
      {
        break;
      }

      v10 = *(*(*(v3 + 80) + ((*(v3 + 104) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v3 + 104) & 0x1FFLL));
      v9.n128_f64[0] = v10;
      if (sub_1000CD414(*(v3 + 40) + 3728, v9) && sub_1004A2080(*(v3 + 40) + 3728, &v72, v10))
      {
        sub_1005A7B84(*(v3 + 40) + 3296, v60, v10);
        (***(v3 + 32))(&v58, v10);
        v11.n128_f64[0] = v10;
        if ((sub_1000CDACC(v58, *(v3 + 40), v11) & 1) != 0 || (v12 = *(v3 + 112) + *(v3 + 104) - 1, vabdd_f64(*(*(*(v3 + 80) + ((v12 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v12 & 0x1FF)), v10) > *(v3 + 16)))
        {
          sub_1000D30E4(*(v3 + 40), v10, v5);
          v13 = (*(*v58 + 16))(buf);
          sub_1005A791C(v13, buf, *(v3 + 40), &v52);
          v15 = v57;
          if (v57)
          {
            v16 = v53;
          }

          else
          {
            (*(**(v3 + 32) + 16))(v61);
            (*(*v61[0] + 16))(buf);
            if (v61[1])
            {
              sub_100008080(v61[1]);
            }

            v16 = *&buf[12];
            v15 = DWORD1(v68);
          }

          *&v14 = v74;
          if (v74 <= 1.0 && (v73 & 0xFFFFFFFB) == 3)
          {
            v20 = 1;
          }

          else
          {
            v20 = v73;
          }

          v21 = sub_1000D85C4((*(v3 + 40) + 4520), v20, v14);
          sub_1000D7F78(v16, v21);
          v45 = v24;
          if (v15 <= 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = v15;
          }

          sub_10001A3E8(v22, v23);
          if (sub_10001CF3C())
          {
            sub_100E8A478(*(v3 + 64), v25, *(*(v3 + 40) + 24), v45);
          }

          sub_1000DD728(v3 + 520, *(v3 + 40), v50);
          if (v51 == 1)
          {
            v26 = [NSDate dateWithTimeIntervalSinceReferenceDate:*&v50[1]];
            [*(v3 + 56) writeToHealthRunningPower:v26 startDate:v26 endDate:*v50];
          }

          if (*(v3 + 218) == 1 && *(*(v3 + 40) + 248) == 1)
          {
            v61[0] = off_102491780;
            v61[1] = COERCE_VOID_(CFAbsoluteTimeGetCurrent());
            v27 = v52;
            v28 = v55;
            v29 = v54;
            v62 = v55;
            v63 = v52;
            v30 = v56;
            v64 = v56;
            v65 = v54;
            v33 = sub_10015ADF4(v31, v32);
            sub_1010CF5BC(v33, v61);
            sub_10152D354(buf);
            sub_1015560F4(buf);
            v71 |= 1u;
            v69 = v61[1];
            v34 = v70;
            *(v70 + 28) |= 1u;
            *(v34 + 8) = v28;
            v35 = v70;
            *(v70 + 28) |= 4u;
            *(v35 + 16) = v27;
            v36 = v70;
            *(v70 + 28) |= 8u;
            *(v36 + 20) = HIDWORD(v27);
            v37 = v70;
            *(v70 + 28) |= 0x10u;
            *(v37 + 24) = v30;
            v38 = v70;
            *(v70 + 28) |= 2u;
            *(v38 + 12) = v29;
            if (qword_102637F48 != -1)
            {
              sub_1018D0DFC();
            }

            if (qword_102637F50)
            {
              sub_1017F73BC(qword_102637F50, buf);
            }

            sub_101532FA8(buf);
          }

          v39 = v55;
          (*(**(v3 + 32) + 8))(buf);
          (*(**buf + 16))(&v48);
          if (*&buf[8])
          {
            sub_100008080(*&buf[8]);
          }

          if (v49 > 0.0)
          {
            if (v39 >= 1.3)
            {
              v40 = v39;
            }

            else
            {
              v40 = 1.3;
            }

            v39 = v40 + v49;
          }

          sub_1000DDC60(v3 + 248, *(*(v3 + 40) + 16), v39);
        }

        v18 = 3;
        v4 = v59;
        if (v59)
        {
          sub_100008080(v59);
        }
      }

      else
      {
        if (qword_1025D4230 != -1)
        {
          sub_1018D1104();
        }

        v17 = qword_1025D4238;
        if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "Popping out an activity since there's no activity associated with current time.  This shouldn't happen", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018D112C(&v46, v47);
        }

        *(v3 + 104) = vaddq_s64(*(v3 + 104), xmmword_101C66230);
        v4 = sub_1000A2BE8(v3 + 72, 1);
        v18 = 0;
      }
    }

    while (!v18);
    v41 = sub_1000DA93C(v4, v5);
    sub_1000DCFEC(v41, 0, 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0, 0);
    memset(buf, 0, sizeof(buf));
    *&v67 = 0;
    v44 = sub_1000A23E0(v42, v43);
    sub_1000DD1D0(v44, buf);
  }
}

void sub_1000CCD74(_Unwind_Exception *a1)
{
  if (STACK[0x228])
  {
    sub_100008080(STACK[0x228]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000CCE3C(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  if (*(a1 + 28) == 1)
  {
    v5 = (*(**a1 + 48))(a2);
    if (*(a1 + 64) == 1)
    {
      v6 = sub_1000CA604(*(a1 + 8), *(a1 + 48), v3);
    }

    else
    {
      v6 = 0;
    }

    if (qword_1025D4230 != -1)
    {
      sub_10189393C();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 67109888;
      v29 = v11;
      v30 = 2048;
      v31 = v3;
      v32 = 1024;
      v33 = v5;
      v34 = 1024;
      v35 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101893950();
      }

      *v22 = 2048;
      *&v22[2] = v3;
      *&v22[10] = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      LODWORD(v20) = 30;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", &v21, v20, 67109888, *v22);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCatherineData>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCatherineData>]", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v2 = v5 & v6;
    return v2 & 1;
  }

  v7 = *(a1 + 24);
  if (v7 == 1)
  {
    v12 = *(a1 + 64);
    v13 = sub_1000CA604(*(a1 + 8), *(a1 + 48), a2.n128_f64[0]);
    if (qword_1025D4230 != -1)
    {
      sub_10189393C();
    }

    v2 = v12 & v13;
    v14 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 67110144;
      v29 = v15;
      v30 = 2048;
      v31 = v3;
      v32 = 1024;
      v33 = v12;
      v34 = 1024;
      v35 = v13 & 1;
      v36 = 1024;
      v37 = v12 & v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101893950();
      }

      *v22 = 2048;
      *&v22[2] = v3;
      *&v22[10] = 1024;
      v24 = 1024;
      v25 = v13 & 1;
      v26 = 1024;
      v27 = v12 & v13;
      LODWORD(v20) = 36;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", &v21, v20, 67110144, *v22, *&v22[8]);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCatherineData>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCatherineData>]", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    return v2 & 1;
  }

  if (v7)
  {
    return v2 & 1;
  }

  v8 = *(**a1 + 48);

  return v8();
}

void sub_1000CD2B0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 208) == 1)
  {

    sub_1011D6FD8(a1, a2, a3);
  }

  else
  {
    v6 = a1[4];
    a1[3] = 0;
    a1[4] = 0;
    if (v6)
    {
      sub_100008080(v6);
    }

    v7 = a1[6];
    a1[5] = 0;
    a1[6] = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    v8 = a1[8];
    a1[7] = 0;
    a1[8] = 0;
    if (v8)
    {
      sub_100008080(v8);
    }

    v9 = a1[10];
    a1[9] = 0;
    a1[10] = 0;
    if (v9)
    {
      sub_100008080(v9);
    }

    v10 = a1[12];
    a1[11] = 0;
    a1[12] = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    v11 = a1[14];
    a1[13] = 0;
    a1[14] = 0;
    if (v11)
    {
      sub_100008080(v11);
    }

    v12 = a1[16];
    a1[15] = 0;
    a1[16] = 0;
    if (v12)
    {
      sub_100008080(v12);
    }

    v13 = a1[18];
    a1[17] = 0;
    a1[18] = 0;
    if (v13)
    {
      sub_100008080(v13);
    }

    v14 = a1[20];
    a1[19] = 0;
    a1[20] = 0;
    if (v14)
    {
      sub_100008080(v14);
    }

    v15 = a1[22];
    a1[21] = 0;
    a1[22] = 0;
    if (v15)
    {
      sub_100008080(v15);
    }

    v16 = a1[24];
    a1[23] = 0;
    a1[24] = 0;
    if (v16)
    {
      sub_100008080(v16);
    }

    v17 = a1[32];
    a1[31] = 0;
    a1[32] = 0;
    if (v17)
    {
      sub_100008080(v17);
    }

    v18 = a1[26];
    a1[25] = 0;
    a1[26] = 0;
    if (v18)
    {
      sub_100008080(v18);
    }

    if (*(a2 + 8) == 5)
    {
      v20 = a1[27];
      v19 = a1[28];
    }

    else
    {
      v20 = a1[1];
      v19 = a1[2];
    }

    *a3 = v20;
    a3[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

uint64_t sub_1000CD414(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  if (*(a1 + 28) == 1)
  {
    v5 = (*(**a1 + 48))(a2);
    if (*(a1 + 64) == 1)
    {
      v6 = sub_1000CA604(*(a1 + 8), *(a1 + 48), v3);
    }

    else
    {
      v6 = 0;
    }

    if (qword_1025D4230 != -1)
    {
      sub_10189393C();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 67109888;
      v29 = v11;
      v30 = 2048;
      v31 = v3;
      v32 = 1024;
      v33 = v5;
      v34 = 1024;
      v35 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101893950();
      }

      *v22 = 2048;
      *&v22[2] = v3;
      *&v22[10] = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      LODWORD(v20) = 30;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", &v21, v20, 67109888, *v22);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>]", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v2 = v5 & v6;
    return v2 & 1;
  }

  v7 = *(a1 + 24);
  if (v7 == 1)
  {
    v12 = *(a1 + 64);
    v13 = sub_1000CA604(*(a1 + 8), *(a1 + 48), a2.n128_f64[0]);
    if (qword_1025D4230 != -1)
    {
      sub_10189393C();
    }

    v2 = v12 & v13;
    v14 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 67110144;
      v29 = v15;
      v30 = 2048;
      v31 = v3;
      v32 = 1024;
      v33 = v12;
      v34 = 1024;
      v35 = v13 & 1;
      v36 = 1024;
      v37 = v12 & v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101893950();
      }

      *v22 = 2048;
      *&v22[2] = v3;
      *&v22[10] = 1024;
      v24 = 1024;
      v25 = v13 & 1;
      v26 = 1024;
      v27 = v12 & v13;
      LODWORD(v20) = 36;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", &v21, v20, 67110144, *v22, *&v22[8]);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>]", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    return v2 & 1;
  }

  if (v7)
  {
    return v2 & 1;
  }

  v8 = *(**a1 + 48);

  return v8();
}

void sub_1000CD888(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a3.n128_f64[0];
  if (sub_1000CD414(a2 + 3728, a3))
  {
    if (sub_1004A2080(a2 + 3728, &v8, v4))
    {
      v6 = *(a1 + 8);
      *(v6 + 8) = v9;
      *(v6 + 9) = CLMotionActivity::isTypeIndoorPedestrian();
      v7 = *(a1 + 24);
      *(v7 + 8) = v9;
      *(v7 + 9) = CLMotionActivity::isTypeIndoorPedestrian();
      if (v9 == 1)
      {
        sub_100AAF21C(a2 + 3440);
        sub_1004A243C(a2 + 3296);
        if (CLMotionActivity::isTypeIndoorPedestrian())
        {
          sub_100A9C040(a2 + 3872);
        }
      }
    }
  }
}

BOOL sub_1000CD974(uint64_t a1, double a2)
{
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(*(*(a1 + 32) + 8 * ((v4 + *(a1 + 56) - 1) / 0x11uLL)) + 232 * ((v4 + *(a1 + 56) - 1) % 0x11uLL));
  }

  else
  {
    v5 = -1.79769313e308;
  }

  if (v5 >= a2)
  {
    if (sub_1000A2C48(a1, v11, v10, a2))
    {
      return 1;
    }

    v6 = (a1 + 80);
  }

  else
  {
    v6 = (a1 + 80);
    if (*(a1 + 80) == 1)
    {
      v7 = *(a1 + 16);
      if (*(a1 + 72) - v7 < a2 && v7 + *(a1 + 88) > a2)
      {
        v8 = *(a1 + 104);
        if (v8 - (*(*a1 + 56))(a1, a2) < a2)
        {
          return 0;
        }
      }
    }
  }

  return (*v6 & 1) != 0 || (*(a1 + 120) & 1) != 0 || *(a1 + 104) + -2.0 >= a2;
}

uint64_t sub_1000CDACC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a3.n128_f64[0];
  result = sub_1000CD414(a2 + 3728, a3);
  if (result)
  {
    result = sub_1004A2080(a2 + 3728, v8, v4);
    if (result)
    {
      if (v8[208])
      {
        return (*(*a1 + 32))(a1, a2, v4);
      }

      v7.n128_f64[0] = v4;
      result = sub_1000CDBA0(a2 + 3512, v7);
      if (result)
      {
        return (*(*a1 + 32))(a1, a2, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1000CDBA0(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  if (*(a1 + 28) == 1)
  {
    v5 = (*(**a1 + 48))(a2);
    if (*(a1 + 64) == 1)
    {
      v6 = sub_1000CA604(*(a1 + 8), *(a1 + 48), v3);
    }

    else
    {
      v6 = 0;
    }

    if (qword_1025D4230 != -1)
    {
      sub_1018FE7D0();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 67109888;
      v29 = v11;
      v30 = 2048;
      v31 = v3;
      v32 = 1024;
      v33 = v5;
      v34 = 1024;
      v35 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018FE7E4();
      }

      *v22 = 2048;
      *&v22[2] = v3;
      *&v22[10] = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      LODWORD(v20) = 30;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", &v21, v20, 67109888, *v22);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCoarseElevationChangeEntry>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCoarseElevationChangeEntry>]", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v2 = v5 & v6;
    return v2 & 1;
  }

  v7 = *(a1 + 24);
  if (v7 == 1)
  {
    v12 = *(a1 + 64);
    v13 = sub_1000CA604(*(a1 + 8), *(a1 + 48), a2.n128_f64[0]);
    if (qword_1025D4230 != -1)
    {
      sub_1018FE7D0();
    }

    v2 = v12 & v13;
    v14 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 67110144;
      v29 = v15;
      v30 = 2048;
      v31 = v3;
      v32 = 1024;
      v33 = v12;
      v34 = 1024;
      v35 = v13 & 1;
      v36 = 1024;
      v37 = v12 & v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018FE7E4();
      }

      *v22 = 2048;
      *&v22[2] = v3;
      *&v22[10] = 1024;
      v24 = 1024;
      v25 = v13 & 1;
      v26 = 1024;
      v27 = v12 & v13;
      LODWORD(v20) = 36;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", &v21, v20, 67110144, *v22, *&v22[8]);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCoarseElevationChangeEntry>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLCoarseElevationChangeEntry>]", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    return v2 & 1;
  }

  if (v7)
  {
    return v2 & 1;
  }

  v8 = *(**a1 + 48);

  return v8();
}

uint64_t sub_1000CE014(void *a1, double a2)
{
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  v4 = a1[8];
  if (v4)
  {
    v5 = *(*(a1[4] + (((v4 + a1[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v4 + *(a1 + 56) - 1));
  }

  else
  {
    v5 = -1.79769313e308;
  }

  if (v5 >= a2 && sub_1000D52D0(a1, v21, v20, a2) || (v6 = *(a1 + 13), v6 - (*(*a1 + 56))(a1, a2) >= a2) || (*(a1 + 121) & 1) != 0)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A268();
    }

    v7 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v8 = a1[1];
      v9 = (*(*a1 + 56))(a1, a2);
      *buf = 136315650;
      v29 = v8;
      v30 = 2048;
      v31 = a2;
      v32 = 2048;
      v33 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "%s is ready at, %f, timeout, %f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B3212C(a1, a2);
    }

    return 1;
  }

  else
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A268();
    }

    v11 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v12 = a1[1];
      v13 = (*(*a1 + 56))(a1, a2);
      *buf = 136315650;
      v29 = v12;
      v30 = 2048;
      v31 = a2;
      v32 = 2048;
      v33 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "%s is not ready at, %f, timeout, %f", buf, 0x20u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v14 = qword_1025D4238;
      v15 = a1[1];
      v16 = (*(*a1 + 56))(a1, a2);
      v22 = 136315650;
      v23 = v15;
      v24 = 2048;
      v25 = a2;
      v26 = 2048;
      v27 = v16;
      LODWORD(v19) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v14, 2, "%s is not ready at, %f, timeout, %f", &v22, v19, *v20);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLNatalieInput<CLCoarseElevationChangeEntry>::isReady(CFAbsoluteTime)", "%s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }

      return 0;
    }
  }

  return result;
}

double sub_1000CE3A8(uint64_t a1, double a2)
{
  v2 = 2.0;
  if (*(a1 + 120) == 1 && (*(a1 + 123) & 1) == 0)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      v4 = *(*(*(a1 + 32) + (((v3 + *(a1 + 56) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v3 + *(a1 + 56) - 1)) + 180.0 + 20.0;
    }

    else
    {
      v4 = -1.79769313e308;
    }

    v2 = v4 - a2;
  }

  *(a1 + 96) = v2;
  return v2;
}

uint64_t sub_1000CE420(uint64_t a1, double a2)
{
  v4 = (*(*a1 + 40))(a1);
  v6 = 24;
  if (v4)
  {
    v6 = 8;
  }

  v7 = *(**(a1 + v6) + 32);
  v5.n128_f64[0] = a2;

  return v7(v5);
}

uint64_t sub_1000CE4D0(double a1, uint64_t a2, uint64_t a3)
{
  sub_1004A2080(a3 + 3728, v8, a1);
  if (CLMotionActivity::isTypePedestrian() && v8[208] == 1)
  {
    v5.n128_f64[0] = a1;
    result = sub_1000CA668(a3 + 3584, v5);
    if (result)
    {
      v7.n128_f64[0] = a1;
      return sub_100AAF3EC(a3 + 3440, v7);
    }
  }

  else
  {
    v5.n128_f64[0] = a1;
    return sub_1000CA668(a3 + 3584, v5);
  }

  return result;
}

BOOL sub_1000CE580(double a1, double a2)
{
  v2 = a2 * 39.3700981;
  v3 = fmax((v2 + -59.0) * 0.0375 + 4.2, 4.2);
  if (v3 > 4.8)
  {
    v3 = 4.8;
  }

  return 2.23693991 / v3 > a1 && a1 > 0.0;
}

void sub_1000CE5E8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xC7CE0C7CE0C7CFLL)
  {
    operator new();
  }

  sub_1001D0818();
}

unsigned __int16 *sub_1000CE644(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[12 * (v3 - v2)];
  v5 = *a2;
  *(v4 + 3) = *(a2 + 2);
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

uint64_t sub_1000CE6B0(uint64_t *a1, unsigned __int16 *a2)
{
  if (*a1 >= a2[1])
  {
    v2 = a2[1];
  }

  else
  {
    v2 = *a1;
  }

  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = -1.0;
  while (1)
  {
    v9 = sub_1000C6BD8(a2, v6);
    v10 = a1[5];
    if (!v10)
    {
      sub_1000CF05C();
    }

    if ((*(*v10 + 48))(v10, v9))
    {
      if (v8 == -1.0)
      {
        v8 = v11;
      }

      if (++v5 >= *(a1 + 2))
      {
        break;
      }
    }

    if (v2 == ++v6)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1000CE7D0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a2 + 20) == 128;
  }

  v3 = v2;
  return v3 ^ 1u;
}

uint64_t sub_1000CE7F4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  return sub_1000CE87C(v2, 2, &v4);
}

uint64_t sub_1000CE828(uint64_t a1, double a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1000CE87C(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
    return result;
  }

  v6 = result;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = (*v6 + v7);
    if (*v9 != *(v6 + 16) || v9[1] != a2)
    {
      goto LABEL_7;
    }

    v10 = v9[2];
    v11 = *(v9 + 2);
    result = (*(v9 + 1))(v6, a3);
    if (result)
    {
      break;
    }

    v3 = *(v6 + 8);
LABEL_7:
    ++v8;
    v7 += 24;
    if (v3 <= v8)
    {
      return result;
    }
  }

  if (*(v6 + 17) <= 1u && *(v6 + 16) != v10)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101AE5C5C();
    }

    v12 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(v6 + 17);
      v14 = *(v6 + 16);
      *buf = 67109888;
      v24 = v13;
      v25 = 1024;
      v26 = a2;
      v27 = 1024;
      v28 = v14;
      v29 = 1024;
      v30 = v10;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "[FSM] %u,event,%u,transition,from,%u,to,%u", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101AE5C70();
      }

      v15 = *(v6 + 16);
      LOWORD(v19) = 1024;
      HIWORD(v19) = a2;
      v20 = v15;
      v21 = 1024;
      v22 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "[FSM] %u,event,%u,transition,from,%u,to,%u", &v18, 26, 67109888, v19);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "void CMFiniteStateMachine::signal(uint8_t, const void *)", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  *(v6 + 16) = v10;
  return v11(v6, a3);
}

BOOL sub_1000CEB20(uint64_t a1, uint64_t a2)
{
  result = 0;
  v3 = *(a2 + 20);
  if (v3 != 256 && v3 != 512)
  {
    return v3 != 4096;
  }

  return result;
}

uint64_t sub_1000CEB5C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  return sub_1000CE87C(v2, 4, &v4);
}

uint64_t sub_1000CEB90(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  return sub_1000CE87C(v2, 6, &v4);
}

uint64_t sub_1000CEBDC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  return sub_1000CE87C(v2, 7, &v4);
}

double *sub_1000CEC28(double *a1, double *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  do
  {
    v5 = a1[v2 + 1];
    v6 = v5;
    ++v2;
  }

  while (v6 > v4);
  v7 = &a1[v2];
  v8 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v11 = *--a2;
      v12 = v11;
    }

    while (v12 <= v4);
  }

  else
  {
    do
    {
      v9 = *--a2;
      v10 = v9;
    }

    while (v10 <= v4);
  }

  if (v7 < a2)
  {
    v13 = *a2;
    v14 = &a1[v2];
    v15 = a2;
    do
    {
      *v14 = v13;
      *v15 = v5;
      do
      {
        v16 = v14[1];
        ++v14;
        v5 = v16;
        v17 = v16;
      }

      while (v17 > v4);
      do
      {
        v18 = *--v15;
        v13 = v18;
        v19 = v18;
      }

      while (v19 <= v4);
    }

    while (v14 < v15);
    v8 = v14 - 1;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v3;
  return v8;
}

uint64_t sub_1000CECF4(_OWORD *a1, uint64_t a2)
{
  a1[2] = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  a1[5] = *(a2 + 48);
  a1[6] = v4;
  a1[3] = v2;
  a1[4] = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  a1[9] = *(a2 + 112);
  a1[10] = v7;
  a1[7] = v5;
  a1[8] = v6;
  return sub_1000D0778(a1, (a2 + 8), *a2);
}

uint64_t sub_1000CED24(uint64_t a1, uint64_t a2)
{
  *(a2 + 144) = 0;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = (*(*a1 + 16))(a1, &v14, &v12);
  if (result)
  {
    v4 = *(&v15 + 1);
    if (*(&v15 + 1) == *(&v13 + 1))
    {
      return 0;
    }

    else
    {
      if (*v15 == *(&v15 + 1))
      {
        v4 = *(v15 - 8) + 3952;
      }

      v5 = *(v4 - 136);
      *a2 = *(v4 - 152);
      *(a2 + 16) = v5;
      v6 = *(v4 - 120);
      v7 = *(v4 - 104);
      v8 = *(v4 - 72);
      *(a2 + 64) = *(v4 - 88);
      *(a2 + 80) = v8;
      *(a2 + 32) = v6;
      *(a2 + 48) = v7;
      v9 = *(v4 - 56);
      v10 = *(v4 - 40);
      v11 = *(v4 - 24);
      *(a2 + 144) = *(v4 - 8);
      *(a2 + 112) = v10;
      *(a2 + 128) = v11;
      *(a2 + 96) = v9;
      return 1;
    }
  }

  return result;
}

BOOL sub_1000CEE14(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = (v5 + 8 * (v4 / 0x1A));
  if (*(a1 + 40) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 152 * (v4 % 0x1A);
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v7;
  v8 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v8;
  v9 = *(a1 + 56) + *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = (v10 + 8 * (v9 / 0x1A));
  if (*(a1 + 40) == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 152 * (v9 % 0x1A);
  }

  if (a3[3] != v12)
  {
    v13 = *v11;
    v14 = 1.79769313e308;
    v15 = v12;
    v16 = v11;
    while (1)
    {
      v17 = v15;
      if (v15 == v13)
      {
        v17 = *(v16 - 1) + 3952;
      }

      v18 = vabdd_f64(*(v17 - 112), a4);
      if (v18 < v14 && v18 < *(a1 + 16))
      {
        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v16;
        *(a2 + 24) = v15;
        v13 = *v16;
        v19 = v15;
        if (v15 == *v16)
        {
          v19 = *(v16 - 1) + 3952;
        }

        v14 = v18;
        if (*(v19 - 112) == a4)
        {
          break;
        }
      }

      if (v15 == v13)
      {
        v20 = *--v16;
        v13 = v20;
        v15 = v20 + 3952;
      }

      v15 -= 152;
      if (a3[3] == v15)
      {
        v12 = v15;
        return *(a2 + 24) != v12;
      }
    }

    v12 = a3[3];
  }

  return *(a2 + 24) != v12;
}

uint64_t sub_1000CEF64(uint64_t a1, uint64_t a2)
{
  *(a2 + 160) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = (*(*a1 + 16))(a1, &v15, &v13);
  if (result)
  {
    v4 = *(&v16 + 1);
    if (*(&v16 + 1) == *(&v14 + 1))
    {
      return 0;
    }

    else
    {
      if (*v16 == *(&v16 + 1))
      {
        v4 = *(v16 - 8) + 4032;
      }

      v5 = *(v4 - 168);
      v6 = *(v4 - 136);
      *(a2 + 16) = *(v4 - 152);
      *(a2 + 32) = v6;
      *a2 = v5;
      v7 = *(v4 - 120);
      v8 = *(v4 - 104);
      v9 = *(v4 - 72);
      *(a2 + 80) = *(v4 - 88);
      *(a2 + 96) = v9;
      *(a2 + 48) = v7;
      *(a2 + 64) = v8;
      v10 = *(v4 - 56);
      v11 = *(v4 - 40);
      v12 = *(v4 - 24);
      *(a2 + 160) = *(v4 - 8);
      *(a2 + 128) = v11;
      *(a2 + 144) = v12;
      *(a2 + 112) = v10;
      return 1;
    }
  }

  return result;
}

void sub_1000CF05C()
{
  exception = __cxa_allocate_exception(8uLL);
}

double *sub_1000CF0A8(double *result, double *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = *v4;
        v5 = v4[1];
        v4 = v2;
        v7 = v5;
        v8 = v6;
        if (v7 > v8)
        {
          v9 = v3;
          while (1)
          {
            *(result + v9 + 8) = v6;
            if (!v9)
            {
              break;
            }

            v6 = *(result + v9 - 8);
            v10 = v6;
            v9 -= 8;
            if (v7 <= v10)
            {
              v11 = (result + v9 + 8);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v5;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

void sub_1000CF128(uint64_t a1, __int128 *a2, uint64_t a3, double a4)
{
  if (*(a1 + 260))
  {
    v5 = a2[1];
    v10 = *a2;
    v11 = v5;
    v8 = a4;
    v9 = 6;
    sub_101319B64(a1, &v8);
    if (qword_1025D4760 != -1)
    {
      sub_101B52FC8();
    }

    v6 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134283777;
      v13 = *(&v10 + 1);
      v14 = 2048;
      v15 = a4;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController_feedCMGpsModelOutput,gpsModelOutputEvidence,%{private}f,currentTime,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B53630();
    }
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101B52ED8();
    }

    v7 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController,CLOutdoorEstimatorTurnOffCMGpsModelOutput", &v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B5355C();
    }
  }
}

double sub_1000CF2B0(uint64_t a1)
{
  __src = 0;
  v25 = 0;
  v26 = 0;
  sub_1003E4354(&__src, 0x40uLL);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 == v3)
  {
    v4 = v25;
  }

  else
  {
    v4 = v25;
    do
    {
      v5 = *(v2 + 8);
      if (v4 >= v26)
      {
        v6 = __src;
        v7 = v4 - __src;
        v8 = (v4 - __src) >> 3;
        v9 = v8 + 1;
        if ((v8 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v10 = v26 - __src;
        if ((v26 - __src) >> 2 > v9)
        {
          v9 = v10 >> 2;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v9;
        }

        if (v11)
        {
          sub_1000B9708(&__src, v11);
        }

        v12 = v8;
        v13 = (8 * v8);
        v14 = &v13[-v12];
        *v13 = v5;
        v4 = v13 + 1;
        memcpy(v14, v6, v7);
        v15 = __src;
        __src = v14;
        v25 = v4;
        v26 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v4++ = v5;
      }

      v25 = v4;
      v2 += 16;
    }

    while (v2 != v3);
  }

  v16 = __src;
  if (__src == v4)
  {
    v22 = -1.0;
    if (!__src)
    {
      return v22;
    }

    goto LABEL_32;
  }

  sub_1000CF4A8(__src, v4, &v27, 126 - 2 * __clz((v4 - __src) >> 3), 1);
  v16 = __src;
  v17 = (v25 - __src) >> 3;
  if (v17 >= 5)
  {
    v17 = 5;
  }

  if (v25 == __src)
  {
    v19 = 0.0;
  }

  else
  {
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    v19 = 0.0;
    v20 = __src;
    do
    {
      v21 = *v20++;
      v19 = v19 + v21;
      --v18;
    }

    while (v18);
  }

  v22 = v19 / v17;
  if (__src)
  {
LABEL_32:
    v25 = v16;
    operator delete(v16);
  }

  return v22;
}

void sub_1000CF484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double *sub_1000CF4A8(double *result, double *a2, uint64_t a3, uint64_t a4, char a5)
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
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v78 = *(a2 - 1);
        v79 = v78;
        v80 = *v9;
        v81 = *v9;
        if (v79 > v81)
        {
          *v9 = v78;
          *(a2 - 1) = v80;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v82 = v9 + 1;
      v83 = v9[1];
      v84 = v9 + 2;
      v85 = v9[2];
      v86 = v83;
      v87 = *v9;
      v88 = *v9;
      v89 = v85;
      if (v86 <= v88)
      {
        if (v89 > v86)
        {
          *v82 = v85;
          *v84 = v83;
          v90 = v9;
          v91 = v9 + 1;
          if (v89 > v88)
          {
            goto LABEL_108;
          }

LABEL_110:
          v104 = *(a2 - 1);
          v105 = v104;
          if (v86 < v105)
          {
            *v84 = v104;
            *(a2 - 1) = v83;
            v106 = *v84;
            v107 = *v84;
            v108 = *v82;
            v109 = *v82;
            if (v107 > v109)
            {
              v9[1] = v106;
              v9[2] = v108;
              v110 = *v9;
              v111 = *v9;
              if (v107 > v111)
              {
                *v9 = v106;
                *(v9 + 1) = v110;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v89 > v86)
        {
          v90 = v9;
          v91 = v9 + 2;
          v86 = *v9;
          v83 = *v9;
          goto LABEL_108;
        }

        *v9 = v83;
        v9[1] = v87;
        v90 = v9 + 1;
        v91 = v9 + 2;
        v86 = v88;
        v83 = v87;
        if (v89 > v88)
        {
LABEL_108:
          *v90 = v85;
          *v91 = v87;
          goto LABEL_110;
        }
      }

      v86 = v85;
      v83 = v85;
      goto LABEL_110;
    }

    if (v12 == 5)
    {

      return sub_100248674(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_1000CF0A8(v9, a2);
      }

      else if (v9 != a2)
      {
        while (v8 + 1 != a2)
        {
          v97 = *v8;
          v96 = v8[1];
          v101 = ++v8;
          v98 = v96;
          v99 = v97;
          if (v98 > v99)
          {
            do
            {
              *v101 = v97;
              v97 = *(v101 - 2);
              v100 = v97;
              --v101;
            }

            while (v98 > v100);
            *v101 = v96;
          }
        }
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_100FBE518(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    v16 = v15;
    if (v12 >= 0x81)
    {
      v17 = *v13;
      v18 = *v13;
      v19 = *v9;
      v20 = *v9;
      if (v18 <= v20)
      {
        if (v16 > v18)
        {
          *v13 = v15;
          *(a2 - 1) = v17;
          v25 = *v13;
          v26 = *v9;
          v27 = *v9;
          if (v25 > v27)
          {
            *v9 = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v16 > v18)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v17;
        *v13 = v19;
        v31 = *(a2 - 1);
        v32 = v31;
        if (v32 > v20)
        {
          *v13 = v31;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v33 = v13 - 1;
      v34 = *(v13 - 1);
      v35 = v34;
      v36 = v9[1];
      v37 = v36;
      v38 = *(a2 - 2);
      v39 = v38;
      if (v35 <= v37)
      {
        if (v39 > v35)
        {
          *v33 = v38;
          *(a2 - 2) = v34;
          v40 = *v33;
          v41 = v9[1];
          v42 = v41;
          if (v40 > v42)
          {
            v9[1] = *v33;
            *v33 = v41;
          }
        }
      }

      else
      {
        if (v39 > v35)
        {
          v9[1] = v38;
          goto LABEL_43;
        }

        v9[1] = v34;
        *v33 = v36;
        v45 = *(a2 - 2);
        v46 = v45;
        if (v46 > v37)
        {
          *v33 = v45;
LABEL_43:
          *(a2 - 2) = v36;
        }
      }

      v48 = v13[1];
      v47 = v13 + 1;
      v49 = v48;
      v50 = v48;
      v51 = v9[2];
      v52 = v51;
      v53 = *(a2 - 3);
      v54 = v53;
      if (v50 <= v52)
      {
        if (v54 > v50)
        {
          *v47 = v53;
          *(a2 - 3) = v49;
          v55 = *v47;
          v56 = v9[2];
          v57 = v56;
          if (v55 > v57)
          {
            v9[2] = *v47;
            *v47 = v56;
          }
        }
      }

      else
      {
        if (v54 > v50)
        {
          v9[2] = v53;
          goto LABEL_52;
        }

        v9[2] = v49;
        *v47 = v51;
        v58 = *(a2 - 3);
        v59 = v58;
        if (v59 > v52)
        {
          *v47 = v58;
LABEL_52:
          *(a2 - 3) = v51;
        }
      }

      v60 = *v14;
      v61 = *v14;
      v62 = *v33;
      v63 = *v33;
      v64 = *v47;
      v65 = *v47;
      if (v61 <= v63)
      {
        if (v65 > v61)
        {
          *v14 = v64;
          *v47 = v60;
          v47 = v14;
          v60 = v62;
          if (v65 > v63)
          {
            goto LABEL_59;
          }

          v60 = v64;
        }
      }

      else
      {
        if (v65 <= v61)
        {
          *v33 = v60;
          *v14 = v62;
          v33 = v14;
          v60 = v64;
          if (v65 <= v63)
          {
            v60 = v62;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v33 = v64;
        *v47 = v62;
      }

LABEL_60:
      v66 = *v9;
      *v9 = v60;
      *v14 = v66;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v21 = *v9;
    v22 = *v9;
    v23 = *v13;
    v24 = *v13;
    if (v22 > v24)
    {
      if (v16 > v22)
      {
        *v13 = v15;
        goto LABEL_38;
      }

      *v13 = v21;
      *v9 = v23;
      v43 = *(a2 - 1);
      v44 = v43;
      if (v44 > v24)
      {
        *v9 = v43;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v16 <= v22)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v21;
    v28 = *v9;
    v29 = *v13;
    v30 = *v13;
    if (v28 <= v30)
    {
      goto LABEL_39;
    }

    *v13 = *v9;
    *v9 = v29;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    v67 = *(v9 - 1);
    v68 = *v9;
    if (v67 <= v68)
    {
      result = sub_1002481B4(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v69 = sub_1000CEC28(v9, a2);
    if ((v70 & 1) == 0)
    {
      goto LABEL_67;
    }

    v71 = sub_100248280(v9, v69, a3);
    v9 = v69 + 1;
    result = sub_100248280(v69 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v69;
      if (v71)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v71)
    {
LABEL_67:
      result = sub_1000CF4A8(v8, v69, a3, -v11, a5 & 1);
      v9 = v69 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v72 = *v9;
  v73 = v9[1];
  v74 = v73;
  v75 = *v9;
  v76 = *(a2 - 1);
  v77 = v76;
  if (v74 <= v75)
  {
    if (v77 > v74)
    {
      v9[1] = v76;
      *(a2 - 1) = v73;
      v93 = *v9;
      v92 = v9[1];
      v94 = v92;
      v95 = *v9;
      if (v94 > v95)
      {
        *v9 = v92;
        v9[1] = v93;
      }
    }
  }

  else
  {
    if (v77 <= v74)
    {
      *v9 = v73;
      v9[1] = v72;
      v102 = *(a2 - 1);
      v103 = v102;
      if (v103 <= v75)
      {
        return result;
      }

      v9[1] = v102;
    }

    else
    {
      *v9 = v76;
    }

    *(a2 - 1) = v72;
  }

  return result;
}

uint64_t sub_1000CFB4C(uint64_t result, double *a2)
{
  v2 = *(a2 + 2);
  if (v2 == 3)
  {
    v4 = *a2;
    if (*(result + 2416) == 0.0)
    {
      *(result + 2416) = v4;
    }

    *(result + 2424) = v4;
    ++*(result + 2432);
  }

  else if (v2 == 2)
  {
    v3 = *a2;
    if (*(result + 2400) == 0.0)
    {
      *(result + 2400) = v3;
    }

    *(result + 2408) = v3;
    ++*(result + 2436);
  }

  v5 = a2[3];
  if (*(result + 2472) < v5)
  {
    *(result + 2472) = v5;
  }

  if (*(result + 2480) > v5)
  {
    *(result + 2480) = v5;
  }

  *(result + 2488) = v5 + *(result + 2488);
  ++*(result + 2496);
  v6 = *(a2 + 2);
  if (*(result + 2504) < v6)
  {
    *(result + 2504) = v6;
  }

  if (v6 >= 0.0)
  {
    for (i = 0; i != 17; ++i)
    {
      if (v6 <= dword_101D791D0[i])
      {
        break;
      }
    }

    if (i >= 0x10)
    {
      LODWORD(i) = 16;
    }

    ++*(result + 4 * i + 2508);
  }

  return result;
}

void sub_1000CFC60(double *result, double *a2, __n128 a3, __n128 a4)
{
  v4 = a3.n128_f64[0];
  v5 = *a2;
  v6 = a2[1];
  if (v6 > *a2)
  {
    v7 = result[279];
    if (v7 < result[292])
    {
      v7 = result[292];
    }

    if (v5 < v7)
    {
      v5 = v7;
    }

    if (v6 < result[287])
    {
      v6 = result[287];
    }

    result[287] = v6;
    sub_10125C400(result, v5, v4);
  }
}

double sub_1000CFCA0(void **a1, uint64_t *__src, void **a3, uint64_t *a4, void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_1000CFD64(&v15, __src, a5[1], *a1 + 510, *a5);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_1000CFD64(&v15, v13, a5[1], v13 + 510, *a5);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = a5[1];
  }

  sub_1000CFD64(&v15, v9, v8, a4, v7);
  result = *&v16;
  *a5 = v16;
  return result;
}

uint64_t *sub_1000CFD64@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __dst + 4080) >> 3);
      if ((0xCCCCCCCCCCCCCCCDLL * (a4 - v9)) < v11)
      {
        v11 = 0xCCCCCCCCCCCCCCCDLL * (a4 - v9);
      }

      v12 = 5 * v11;
      v13 = 40 * v11;
      if (v11)
      {
        __src = memmove(__dst, v9, 40 * v11);
      }

      v9 += v12;
      if (v9 == a4)
      {
        break;
      }

      v14 = *v6++;
      v10 = v14;
      __dst = v14;
    }

    __dst += v13;
    if (*(v6 - 1) + 4080 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = __dst;
  return __src;
}

uint64_t sub_1000CFE44(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 102 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x66)
  {
    a2 = 1;
  }

  if (v5 < 0xCC)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_1000CFEBC(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B4768;
  if (qword_102637ED0 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

id sub_1000CFF48(int a1, unsigned int *a2, void *__src, void *a4)
{
  v5 = *a2;
  memcpy(__dst, __src, sizeof(__dst));
  return [a4 onMotionStateMediatorNotification:v5 data:__dst];
}

id sub_1000D0038(uint64_t a1)
{
  result = [*(a1 + 8) pipelinedSeeded];
  if (result)
  {
    v3 = *(**(a1 + 24) + 152);

    return v3();
  }

  return result;
}

void sub_1000D00AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024546D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1000D0100(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B47E0;
  if (qword_102637EC8 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1000D018C(uint64_t a1, void *a2)
{
  v4 = sub_10000B1F8(a1, a2);
  v6 = 1;
  v5 = sub_10001A6B0(v4, &v6);
  sub_1000D01E0(a1 + 456, &v5, a2);
}

void sub_1000D01E0(uint64_t a1, double *a2, void *a3)
{
  if (*(a1 + 2880) != 4 || *(a1 + 2840) == 1)
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
    v8 = *a3;
    v9 = a3[2];
    v10 = a3[3];
    v11 = a3[4];
    *buf = 134350080;
    v54 = v7;
    v55 = 2050;
    v56 = v8;
    v57 = 1026;
    *v58 = v9;
    *&v58[4] = 1026;
    *&v58[6] = v10;
    LOWORD(v59[0]) = 2050;
    *(v59 + 2) = v11;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#fusion,received outdoor update,mct_now,%{public}.3f,start_time_cfat,%{public}.3f,type,%{public}d,confidence,%{public}d,prob,%{public}.2f", buf, 0x2Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v26 = *a2;
    v27 = *a3;
    v28 = a3[2];
    v29 = a3[3];
    v30 = a3[4];
    *v46 = 134350080;
    *&v46[4] = v26;
    v47[0] = 2050;
    *&v47[1] = v27;
    v47[5] = 1026;
    v48 = v28;
    v49 = 1026;
    v50 = v29;
    v51 = 2050;
    v52 = v30;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,received outdoor update,mct_now,%{public}.3f,start_time_cfat,%{public}.3f,type,%{public}d,confidence,%{public}d,prob,%{public}.2f", v46, 44);
    v32 = v31;
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::indoorOutdoorUpdate(const CFTimeInterval &, const CLOutdoor_Type::OutdoorUpdate &)", "%s\n", v31);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  v13 = sub_100D6B41C(a1, v12);
  if (v13)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v14 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#fusion,indoorOutdoor state update is ignored,detected likely in-flight Airplane Mode.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      *v46 = 0;
      LODWORD(v37) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,indoorOutdoor state update is ignored,detected likely in-flight Airplane Mode.", v46, v37);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::indoorOutdoorUpdate(const CFTimeInterval &, const CLOutdoor_Type::OutdoorUpdate &)", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  else if (a3[2])
  {
    v17 = a3[6];
    v19 = *(a3 + 1);
    v18 = *(a3 + 2);
    v20 = *a3;
    *(a1 + 2680) = *a2;
    *(a1 + 2688) = v20;
    *(a1 + 2704) = v19;
    *(a1 + 2720) = v18;
    *(a1 + 2736) = v17;
    *v46 = 0xBFF0000000000000;
    CLMotionActivity::getInit(v13);
    if ((*(a1 + 2904) & 1) == 0 && sub_1000D0738(a1 + 2424, v46) && *v46 > 0.0 && (*v46 < 0.0 || *v46 <= *a2 && *a2 - *v46 > 2.56))
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v21 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v22 = *a2;
        v23 = *v46;
        v24 = CLMotionActivity::activityTypeToString();
        v25 = CLMotionActivity::activityConfidenceToString();
        *buf = 134349826;
        v54 = v22;
        v55 = 2050;
        v56 = v23;
        v57 = 2080;
        *v58 = v24;
        *&v58[8] = 2080;
        v59[0] = v25;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#fusion,re-using last known motion state,mct_now,%{public}.3f,lastMotionState_mct,%{public}.3f,type,%s,confidence,%s", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v33 = qword_1025D4778;
        v34 = *a2;
        v38 = 134349826;
        v39 = v34;
        v40 = 2050;
        v41 = *v46;
        v42 = 2080;
        v43 = CLMotionActivity::activityTypeToString();
        v44 = 2080;
        v45 = CLMotionActivity::activityConfidenceToString();
        LODWORD(v37) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v33, 2, "#fusion,re-using last known motion state,mct_now,%{public}.3f,lastMotionState_mct,%{public}.3f,type,%s,confidence,%s", &v38, v37);
        v36 = v35;
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::indoorOutdoorUpdate(const CFTimeInterval &, const CLOutdoor_Type::OutdoorUpdate &)", "%s\n", v35);
        if (v36 != buf)
        {
          free(v36);
        }
      }

      *v46 = *a2;
      sub_1000CECF4((a1 + 2424), v46);
      sub_1000D0BB8(a1, a2);
    }
  }
}

void sub_1000D072C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_1000D0738(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  v4 = v3;
  if (v3 >= 0.0)
  {
    *a2 = *v2;
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[4];
    a2[3] = v2[3];
    a2[4] = v7;
    a2[1] = v5;
    a2[2] = v6;
    v8 = v2[5];
    v9 = v2[6];
    v10 = v2[8];
    a2[7] = v2[7];
    a2[8] = v10;
    a2[5] = v8;
    a2[6] = v9;
  }

  return v4 >= 0.0;
}

uint64_t sub_1000D0778(uint64_t a1, unsigned int *a2, double a3)
{
  if (CLMotionActivity::isTypeDriving())
  {
    isVehicularHighConfidence = CLMotionActivity::isVehicularHighConfidence();
    if (a2[1] > 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = isVehicularHighConfidence;
    }

    if (v7)
    {
      v8 = 7;
    }

    else
    {
      v8 = 6;
    }

    goto LABEL_30;
  }

  isTypeStatic = CLMotionActivity::isTypeStatic();
  if (a2[1] > 0)
  {
    v10 = isTypeStatic;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    *(a1 + 24) = 1;
    v24 = 1;
    *buf = &v24;
    result = sub_1000AE2AC(a1, &v24, &unk_101C66300, buf);
LABEL_31:
    *(result + 40) = a3;
    return result;
  }

  if (CLMotionActivity::isTypeCycling())
  {
LABEL_14:
    *(a1 + 24) = 6;
    v24 = 6;
    *buf = &v24;
    result = sub_1000AE2AC(a1, &v24, &unk_101C66300, buf);
    goto LABEL_31;
  }

  if ((CLMotionActivity::isTypePedestrian() & 1) != 0 || CLMotionActivity::isTypeIndoorPedestrian())
  {
    if (a2[1] >= 1)
    {
      if (CLMotionActivity::isTypeWalking())
      {
        v8 = 4;
LABEL_30:
        *(a1 + 24) = v8;
        v24 = v8;
        *buf = &v24;
        result = sub_1000AE2AC(a1, &v24, &unk_101C66300, buf);
        goto LABEL_31;
      }

      if (CLMotionActivity::isTypeRunning())
      {
        v8 = 5;
        goto LABEL_30;
      }
    }

    v8 = 3;
    goto LABEL_30;
  }

  if ((CLMotionActivity::isTypeUnclassifiedMoving() & 1) == 0)
  {
    v12 = CLMotionActivity::isTypeStatic();
    v13 = a2[1] ? 0 : v12;
    if (v13 != 1)
    {
      goto LABEL_34;
    }
  }

  if (CLMotionActivity::isTypeInVehicle())
  {
    goto LABEL_14;
  }

  result = sub_100680DF4(a1, a3, 600.0);
  if ((result & 1) == 0)
  {
LABEL_34:
    if (qword_1025D4770 != -1)
    {
      sub_1018FE80C();
    }

    v14 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v15 = *a2;
      v16 = CLMotionActivity::activityTypeToString();
      v17 = a2[1];
      *buf = 134350082;
      *&buf[4] = a3;
      v35 = 1026;
      v36 = v15;
      v37 = 2082;
      v38 = v16;
      v39 = 1026;
      v40 = v17;
      v41 = 2082;
      v42 = CLMotionActivity::activityConfidenceToString();
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#motion,mct,%{public}.3f,unsupported motionType,%{public}d,%{public}s,confidence,%{public}d,%{public}s,Pedestrian Dynamics mode/level will be used", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE820(buf);
      v18 = qword_1025D4778;
      v19 = *a2;
      v20 = CLMotionActivity::activityTypeToString();
      v21 = a2[1];
      v24 = 134350082;
      v25 = a3;
      v26 = 1026;
      v27 = v19;
      v28 = 2082;
      v29 = v20;
      v30 = 1026;
      v31 = v21;
      v32 = 2082;
      v33 = CLMotionActivity::activityConfidenceToString();
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v18, 2, "#motion,mct,%{public}.3f,unsupported motionType,%{public}d,%{public}s,confidence,%{public}d,%{public}s,Pedestrian Dynamics mode/level will be used", &v24, 44);
      v23 = v22;
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionMotionActivity::updateAnticipatedDeviceDynamicsMode(const CFTimeInterval, const CLMotionActivity &)", "%s\n", v22);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    *(a1 + 24) = 4;
    v24 = 4;
    *buf = &v24;
    result = sub_1000AE2AC(a1, &v24, &unk_101C66300, buf);
    goto LABEL_31;
  }

  return result;
}

void sub_1000D0BAC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_1000D0BB8(uint64_t a1, double *a2)
{
  v4 = (a1 + 2448);
  v5 = sub_1000D127C(a1 + 1552, a2, (a1 + 2448));
  if ((v5 & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v6 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v7 = *a2;
      v8 = *v4;
      *buf = 134349312;
      v56 = v7;
      v57 = 1026;
      v58 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,Failed to update fusion predictor filter dynamics mode,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      v39 = *a2;
      v40 = *v4;
      v49 = 134349312;
      v50 = v39;
      v51 = 1026;
      v52 = v40;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct,%{public}.3f,Failed to update fusion predictor filter dynamics mode,%{public}d", &v49, 18);
      v42 = v41;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateAnticipatedDynamicsMode(const CFTimeInterval &)", "%s\n", v41);
      if (v42 != buf)
      {
        free(v42);
      }
    }
  }

  v9 = v5 ^ 1;
  v10 = *(a1 + 224);
  if (v10 != (a1 + 232))
  {
    do
    {
      if ((sub_1000D127C((v10 + 29), a2, v4) & 1) == 0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v11 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v12 = *a2;
          v13 = *v4;
          v14 = *(v10 + 220);
          *buf = 134349568;
          v56 = v12;
          v57 = 1026;
          v58 = v13;
          v59 = 1026;
          v60 = v14;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,Failed to update provider hypothesis predictor filter dynamics mode,%{public}d,hID,%{public}d", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v18 = *a2;
          v19 = *v4;
          v20 = *(v10 + 220);
          v49 = 134349568;
          v50 = v18;
          v51 = 1026;
          v52 = v19;
          v53 = 1026;
          v54 = v20;
          LODWORD(v47) = 24;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct,%{public}.3f,Failed to update provider hypothesis predictor filter dynamics mode,%{public}d,hID,%{public}d", &v49, v47);
          v22 = v21;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateAnticipatedDynamicsMode(const CFTimeInterval &)", "%s\n", v21);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        v9 = 1;
      }

      v15 = v10[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v10[2];
          v17 = *v16 == v10;
          v10 = v16;
        }

        while (!v17);
      }

      v10 = v16;
    }

    while (v16 != (a1 + 232));
  }

  for (i = *(a1 + 248); i; i = *i)
  {
    if ((sub_1000D127C((i + 25), a2, v4) & 1) == 0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v24 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v25 = *a2;
        v26 = *v4;
        v27 = *(i + 212);
        *buf = 134349568;
        v56 = v25;
        v57 = 1026;
        v58 = v26;
        v59 = 1026;
        v60 = v27;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,Failed to update fused hypothesis predictor filter dynamics mode,%{public}d,hID,%{public}d", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v28 = *a2;
        v29 = *v4;
        v30 = *(i + 212);
        v49 = 134349568;
        v50 = v28;
        v51 = 1026;
        v52 = v29;
        v53 = 1026;
        v54 = v30;
        LODWORD(v47) = 24;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct,%{public}.3f,Failed to update fused hypothesis predictor filter dynamics mode,%{public}d,hID,%{public}d", &v49, v47);
        v32 = v31;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateAnticipatedDynamicsMode(const CFTimeInterval &)", "%s\n", v31);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      v9 = 1;
    }
  }

  if (*(a1 + 1104))
  {
    v33 = *(a1 + 816);
    v34 = *a2 <= v33 ? v33 + 0.001 : *a2;
    v48 = v34;
    if ((sub_1000D127C(a1 + 448, &v48, v4) & 1) == 0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v35 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v36 = *(a1 + 2448);
        v37 = *(a1 + 1096);
        *buf = 134349568;
        v56 = v48;
        v57 = 1026;
        v58 = v36;
        v59 = 1026;
        v60 = v37;
        _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "#fusion,mct,%{public}.3f,Failed to update Latest Selected Hypothesis predictor filter dynamics mode,%{public}d,hID,%{public}d", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v43 = *(a1 + 2448);
        v44 = *(a1 + 1096);
        v49 = 134349568;
        v50 = v48;
        v51 = 1026;
        v52 = v43;
        v53 = 1026;
        v54 = v44;
        LODWORD(v47) = 24;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,mct,%{public}.3f,Failed to update Latest Selected Hypothesis predictor filter dynamics mode,%{public}d,hID,%{public}d", &v49, v47);
        v46 = v45;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateAnticipatedDynamicsMode(const CFTimeInterval &)", "%s\n", v45);
        if (v46 != buf)
        {
          free(v46);
        }
      }

      v9 = 1;
    }
  }

  return (v9 & 1) == 0;
}

void sub_1000D1264(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000D127C(uint64_t a1, double *a2, int *a3)
{
  sub_100029004(a1, a2);
  if ((*a1 & 1) == 0)
  {
LABEL_27:
    v7 = *a3;
LABEL_28:
    *(a1 + 360) = v7;
    return 1;
  }

  if ((*a3 - 2) >= 9 && *a3 != 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v21 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 596);
      v23 = *a2;
      *buf = 67240448;
      v33 = v22;
      v34 = 2050;
      v35 = v23;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,zupt update for known stationary dynamics", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v24 = *(a1 + 596);
      v25 = *a2;
      v28 = 67240448;
      v29 = v24;
      v30 = 2050;
      v31 = v25;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,mct,%{public}.3f,zupt update for known stationary dynamics", &v28, 18);
      v27 = v26;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictOnDynamicsModeUpdate(const CFTimeInterval &, const LCFusionDynamicsMode &)", "%s\n", v26);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    sub_1000AE380(a1, a2, -1.0);
    goto LABEL_27;
  }

  if (sub_10002980C(a1, a2))
  {
    v7 = *a3;
    v8 = *a3 - 1;
    v9 = 20.0;
    if (v8 <= 9)
    {
      v9 = dbl_101C89520[v8];
    }

    v10 = v9 * v9 * 0.5;
    if (*(a1 + 248) > v10 || *(a1 + 288) > v10)
    {
      *(a1 + 184) = 0u;
      v11 = *(a1 + 176);
      v12 = *(a1 + 208);
      *(a1 + 200) = 0u;
      *(a1 + 216) = 0u;
      *(a1 + 232) = 0u;
      *(a1 + 248) = 0u;
      *(a1 + 264) = 0u;
      *(a1 + 280) = 0;
      *(a1 + 248) = v10;
      *(a1 + 288) = v10;
      *(a1 + 200) = v11;
      *(a1 + 208) = v12;
    }

    goto LABEL_28;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v13 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 596);
    v15 = *a2;
    *buf = 67240448;
    v33 = v14;
    v34 = 2050;
    v35 = v15;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,DynamicsMode-based prediction failed", buf, 0x12u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101912E28(buf);
    v17 = *(a1 + 596);
    v18 = *a2;
    v28 = 67240448;
    v29 = v17;
    v30 = 2050;
    v31 = v18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,mct,%{public}.3f,DynamicsMode-based prediction failed", &v28, 18);
    v20 = v19;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictOnDynamicsModeUpdate(const CFTimeInterval &, const LCFusionDynamicsMode &)", "%s\n", v19);
    if (v20 != buf)
    {
      free(v20);
    }

    return 0;
  }

  return result;
}

void sub_1000D1628(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1000D1634(unsigned int *a1)
{
  result = *a1;
  if (result <= 12149)
  {
    if (result <= 2009)
    {
      if (result < 0xC)
      {
        return result;
      }

      v3 = (result - 41) > 0x3B;
      v4 = 1 << (result - 41);
      v5 = 0x800000003F08801;
LABEL_20:
      v8 = v4 & v5;
      if (!v3 && v8 != 0)
      {
        return result;
      }

      goto LABEL_71;
    }

    if (result <= 2100)
    {
      v3 = (result - 2010) > 0x3D;
      v4 = 1 << (result + 38);
      v5 = 0x2488004000005401;
      goto LABEL_20;
    }

    v10 = (result - 2101) > 0x31 || ((1 << (result - 53)) & 0x2000000000011) == 0;
    if (!v10 || (result - 3015) < 2)
    {
      return result;
    }

    v7 = 11805;
    goto LABEL_67;
  }

  if (result > 15651)
  {
    if (result > 18239)
    {
      if (result <= 90120)
      {
        if (result > 19089)
        {
          if (result == 19090)
          {
            return result;
          }

          v7 = 19150;
        }

        else
        {
          if (result == 18240)
          {
            return result;
          }

          v7 = 19030;
        }
      }

      else
      {
        if (result > 515620)
        {
          if (result == 515621 || result == 515652)
          {
            return result;
          }

          if (result == 519150)
          {
            return 19160;
          }

          goto LABEL_71;
        }

        if ((result - 90121) < 2)
        {
          return result;
        }

        v7 = 90603;
      }

      goto LABEL_67;
    }

    if (result <= 15732)
    {
      v6 = (result - 15652);
      if (v6 <= 0x3B)
      {
        if (((1 << (result - 36)) & 0x840101) != 0)
        {
          return result;
        }

        if (v6 == 59)
        {
          return 15710;
        }
      }

      goto LABEL_71;
    }

    if (result <= 18049)
    {
      if (result == 15733)
      {
        return result;
      }

      v7 = 17150;
    }

    else
    {
      if (result == 18050)
      {
        return 18070;
      }

      if (result == 18100)
      {
        return 18225;
      }

      v7 = 18200;
    }

LABEL_67:
    if (result == v7)
    {
      return result;
    }

    goto LABEL_71;
  }

  if (result > 15254)
  {
    if (result <= 15459)
    {
      if ((result - 15330) <= 0x1E && ((1 << (result + 30)) & 0x40100001) != 0)
      {
        return result;
      }

      v7 = 15255;
    }

    else
    {
      if (result <= 15591)
      {
        if (result == 15460)
        {
          return result;
        }

        if (result == 15560)
        {
          return 15562;
        }

        goto LABEL_71;
      }

      if (result == 15592 || result == 15610)
      {
        return result;
      }

      v7 = 15620;
    }

    goto LABEL_67;
  }

  if (result <= 15099)
  {
    if (result == 12150 || result == 15030)
    {
      return result;
    }

    v7 = 15055;
    goto LABEL_67;
  }

  if ((result - 15100) <= 0x32 && ((1 << (result + 4)) & 0x4000000000401) != 0 || result == 15230)
  {
    return result;
  }

  if (result == 15250)
  {
    return 15240;
  }

LABEL_71:
  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v11 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v12 = *a1;
    v14[0] = 67240192;
    v14[1] = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "Received unhandled motion activity type: %{public}d", v14, 8u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_101B8759C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1000D1A24(int a1)
{
  result = 1;
  if (a1 > 12149)
  {
    if (a1 <= 15651)
    {
      if (a1 > 15329)
      {
        if ((a1 - 15562) <= 0x3A && ((1 << (a1 + 54)) & 0x401000040000001) != 0 || (a1 - 15330) <= 0x1E && ((1 << (a1 + 30)) & 0x40100001) != 0)
        {
          return result;
        }

        v3 = 15460;
      }

      else
      {
        if (a1 > 15099)
        {
          if ((a1 - 15100) > 0x32 || ((1 << (a1 + 4)) & 0x4000000000401) == 0)
          {
            v4 = a1 - 15230;
            if (v4 > 0x19 || ((1 << v4) & 0x2000401) == 0)
            {
              return 0;
            }
          }

          return result;
        }

        if (a1 == 12150 || a1 == 15030)
        {
          return result;
        }

        v3 = 15055;
      }
    }

    else if (a1 > 19029)
    {
      if (a1 <= 90120)
      {
        if (a1 > 19149)
        {
          if (a1 == 19150)
          {
            return result;
          }

          v3 = 19160;
        }

        else
        {
          if (a1 == 19030)
          {
            return result;
          }

          v3 = 19090;
        }
      }

      else if (a1 > 515620)
      {
        if (a1 == 515621)
        {
          return result;
        }

        v3 = 515652;
      }

      else
      {
        if ((a1 - 90121) < 2)
        {
          return result;
        }

        v3 = 90603;
      }
    }

    else if (a1 <= 17149)
    {
      if ((a1 - 15652) <= 0x3A && ((1 << (a1 - 36)) & 0x400000000840101) != 0)
      {
        return result;
      }

      v3 = 15733;
    }

    else
    {
      if ((a1 - 18200) <= 0x28 && ((1 << (a1 - 24)) & 0x10002000001) != 0 || a1 == 17150)
      {
        return result;
      }

      v3 = 18070;
    }

    goto LABEL_55;
  }

  if (a1 > 2009)
  {
    if (a1 <= 2100)
    {
      v5 = a1 - 2010;
      if (v5 <= 0x3D)
      {
        v6 = 1 << v5;
        v7 = 0x2488004000005401;
        goto LABEL_23;
      }

      return 0;
    }

    if ((a1 - 2101) <= 0x31 && ((1 << (a1 - 53)) & 0x2000000000011) != 0 || (a1 - 3015) < 2)
    {
      return result;
    }

    v3 = 11805;
LABEL_55:
    if (a1 == v3)
    {
      return result;
    }

    return 0;
  }

  if (a1 < 0xC)
  {
    return result;
  }

  v8 = a1 - 41;
  if (v8 > 0x3B)
  {
    return 0;
  }

  v6 = 1 << v8;
  v7 = 0x800000003F08801;
LABEL_23:
  if ((v6 & v7) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000D1D00(unsigned int *a1)
{
  if (*a1 < 3)
  {
    return *a1 + 1;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled confidence type: %{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B87688(a1);
    return 0;
  }

  return result;
}

void sub_1000D1DF8(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onMotionStateMediatorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onMotionStateMediatorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000D1FD4(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000D1FD4(unsigned int *a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v19 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(v20);
  sub_10000B324(v7, v20[0].i64);
  v21 = 25;
  v20[0].i32[0] = 25;
  v8 = sub_10000AD98(&v21);
  v20[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  v21 = 4;
  sub_1000D2118(v10, &v21, v20, a1 + 1305, &v19, a3, a4);
  v12 = *(a1 + 35);
  if (v12)
  {
    v12 = (*(*v12 + 40))(v12, a3, a4);
  }

  if (!*a3)
  {
    v12 = *(a1 + 96);
    if (v12)
    {
      sub_1000DD340(v12, (a4 + 8));
    }
  }

  v13 = *(a1 + 38);
  if (v13)
  {
    v14 = *(a4 + 16);
    if (v14 == 15)
    {
      v18 = sub_10000B1F8(v12, v11);
      v21 = 1;
      sub_10001A6B0(v18, &v21);
      v17 = v13;
      v16 = 0;
    }

    else
    {
      if (v14 != 13)
      {
        return;
      }

      v15 = sub_10000B1F8(v12, v11);
      v21 = 1;
      sub_10001A6B0(v15, &v21);
      v16 = *(a4 + 96);
      v17 = v13;
    }

    sub_100EA83F4(v17, v16);
  }
}

void sub_1000D2118(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, unsigned int *a6, uint64_t *a7)
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
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v12;
        v93 = 1024;
        LODWORD(v94) = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionStateMediator_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
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
        *v88 = 67109376;
        *v89 = v16;
        *&v89[4] = 1024;
        *&v89[6] = v18;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLMotionStateMediator_Type,silo entry invalid,from_valid,%d,to_valid,%d", v88, 14);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLMotionStateMediator_Type::Notification &, const CLMotionStateMediator_Type::NotificationData &)", "%s\n", v19);
        if (v20 != &buf)
        {
          free(v20);
        }
      }

      return;
    }

    v27 = sub_10000AED0();
    v29 = sub_10000B1F8(v27, v28);
    sub_10000AED4(v29, v76);
    sub_10000AFE4(v88, a2, a3, a4, v76);
    v91 |= 2u;
    v30 = v90;
    if (!v90)
    {
      operator new();
    }

    *(v90 + 492) |= 0x800u;
    v31 = *(v30 + 352);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 200) |= 0x100000u;
    v32 = *(v31 + 160);
    if (!v32)
    {
      operator new();
    }

    v33 = *a5;
    *(v32 + 28) |= 1u;
    *(v32 + 8) = v33;
    v34 = sub_1000D2AD8(a6);
    if (!sub_10041ECEC(v34))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13641, "::CLP::LogEntry::PrivateData::MotionStateMediatorNotification_NotificationType_IsValid(value)");
    }

    v35 = *(v32 + 28);
    *(v32 + 12) = v34;
    *(v32 + 28) = v35 | 6;
    v36 = *(v32 + 16);
    if (!v36)
    {
      operator new();
    }

    v37 = *a6;
    if (*a6 > 2)
    {
      if (v37 - 3 < 3)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v37)
      {
        if (v37 != 1)
        {
          if (v37 == 2)
          {
            v38 = sub_1005CFDDC(v36);
            sub_10126CE40(a7, v38);
          }

          goto LABEL_64;
        }

LABEL_83:
        sub_10000CE1C(v88);
        return;
      }

      v39 = sub_1000D2A34(v36);
      v40 = *a7;
      *(v39 + 32) |= 1u;
      *(v39 + 8) = v40;
      v41 = sub_1000D2A34(v36);
      v42 = *(a7 + 209);
      *(v41 + 32) |= 4u;
      *(v41 + 24) = v42;
      v43 = sub_1000D2A34(v36);
      v44 = sub_1000D2BF4(v43);
      sub_1000D2CD4((a7 + 1), v44, *(a7 + 209));
    }

LABEL_64:
    v45 = sub_10000BFC0(a1, v88);
    if (*(a1 + 8) == 1)
    {
      v46 = v45;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v47 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &v77);
        if (SBYTE3(v81) >= 0)
        {
          v48 = &v77;
        }

        else
        {
          v48 = v77;
        }

        v67 = v48;
        LODWORD(v69[0]) = a3->i32[0];
        sub_1013230DC(v69, v74);
        if (v75 >= 0)
        {
          v49 = v74;
        }

        else
        {
          v49 = v74[0];
        }

        v71 = *a4;
        v50 = __p;
        v51 = sub_1013230DC(&v71, __p);
        if (v73 < 0)
        {
          v50 = __p[0];
        }

        v53 = *a6;
        v54 = sub_10000B1F8(v51, v52);
        v55 = sub_100125220(v54);
        LODWORD(buf) = 67110402;
        HIDWORD(buf) = v46;
        v93 = 2080;
        v94 = v67;
        v95 = 2080;
        v96 = v49;
        v97 = 2080;
        v98 = v50;
        v99 = 1024;
        v100 = v53;
        v101 = 2050;
        v102 = v55;
        _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionStateMediator_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
        if (v73 < 0)
        {
          operator delete(__p[0]);
        }

        if (v75 < 0)
        {
          operator delete(v74[0]);
        }

        if (SBYTE3(v81) < 0)
        {
          operator delete(v77);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D8D04(&buf);
        v56 = qword_1025D4608;
        sub_101322EE0(a2, v74);
        if (v75 >= 0)
        {
          v57 = v74;
        }

        else
        {
          v57 = v74[0];
        }

        v71 = a3->i32[0];
        v58 = __p;
        sub_1013230DC(&v71, __p);
        if (v73 < 0)
        {
          v58 = __p[0];
        }

        v68 = *a4;
        v59 = sub_1013230DC(&v68, v69);
        if (v70 >= 0)
        {
          v61 = v69;
        }

        else
        {
          v61 = v69[0];
        }

        v62 = *a6;
        v63 = sub_10000B1F8(v59, v60);
        v64 = sub_100125220(v63);
        LODWORD(v77) = 67110402;
        HIDWORD(v77) = v46;
        v78 = 2080;
        v79 = v57;
        v80 = 2080;
        v81 = v58;
        v82 = 2080;
        v83 = v61;
        v84 = 1024;
        v85 = v62;
        v86 = 2050;
        v87 = v64;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v56, 2, "#locctl,#rec,recordMessage,CLMotionStateMediator_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &v77, 54);
        v66 = v65;
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }

        if (v73 < 0)
        {
          operator delete(__p[0]);
        }

        if (v75 < 0)
        {
          operator delete(v74[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLMotionStateMediator_Type::Notification &, const CLMotionStateMediator_Type::NotificationData &)", "%s\n", v66);
        if (v66 != &buf)
        {
          free(v66);
        }
      }
    }

    goto LABEL_83;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v21 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, &buf);
    v22 = SBYTE3(v96) >= 0 ? &buf : buf;
    *v88 = 136315138;
    *v89 = v22;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionStateMediator_Type,unsupported message type,%s", v88, 0xCu);
    if (SBYTE3(v96) < 0)
    {
      operator delete(buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DA148();
  }
}

uint64_t sub_1000D2A34(uint64_t a1)
{
  *(a1 + 28) |= 1u;
  if (!*(a1 + 8))
  {
    operator new();
  }

  return *(a1 + 8);
}

void *sub_1000D2AB4(void *result)
{
  *result = &off_1024B4AB0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1000D2AD8(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 6)
  {
    return dword_101C807E8[v1];
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertMotionStateMediatorNotificationTypeToProtobuf,unhandled type,%d", v6, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DA24C(a1);
    return 0;
  }

  return result;
}

void *sub_1000D2BD0(void *result)
{
  *result = off_1024B4A38;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1000D2BF4(uint64_t a1)
{
  *(a1 + 32) |= 2u;
  if (!*(a1 + 16))
  {
    operator new();
  }

  return *(a1 + 16);
}

uint64_t sub_1000D2C74(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &off_102452C20;
  *(result + 24) = 0;
  return result;
}

double sub_1000D2CA0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1024528D8;
  *(a1 + 22) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return result;
}

void sub_1000D2CD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v6 = sub_1000D1634(a1);
    if ((sub_1000D1A24(v6) & 1) == 0)
    {
      sub_10188270C();
    }

    *(a2 + 92) |= 1u;
    *(a2 + 8) = v6;
    v7 = sub_1000D1D00((a1 + 4));
    if (!sub_10041ECF8(v7))
    {
      sub_101882738();
    }

    *(a2 + 92) |= 2u;
    *(a2 + 12) = v7;
    v8 = sub_1000D3994((a1 + 12));
    if (!sub_10041ECEC(v8))
    {
      sub_101882764();
    }

    *(a2 + 92) |= 4u;
    *(a2 + 16) = v8;
    v9 = sub_1000D1D00((a1 + 16));
    if (!sub_10041ECF8(v9))
    {
      sub_101882790();
    }

    v10 = *(a2 + 92);
    *(a2 + 20) = v9;
    *(a2 + 28) = *(a1 + 32);
    *(a2 + 24) = *(a1 + 36);
    v11 = *(a1 + 48);
    *(a2 + 92) = v10 | 0xB8;
    *(a2 + 29) = v11;
    v12 = sub_1000D3A98((a1 + 52));
    if (!sub_10041ECF8(v12))
    {
      sub_1018827BC();
    }

    *(a2 + 92) |= 0x100u;
    *(a2 + 48) = v12;
    v13 = sub_1000D3B90((a1 + 100));
    if (!sub_10042B16C(v13))
    {
      sub_101882840();
    }

    v14 = *(a2 + 92);
    *(a2 + 76) = v13;
    v15 = *(a1 + 56);
    *(a2 + 92) = v14 | 0x8200;
    *(a2 + 40) = v15;
    v16 = sub_1000D1634((a1 + 88));
    if ((sub_1000D1A24(v16) & 1) == 0)
    {
      sub_1018827E8();
    }

    *(a2 + 92) |= 0x800u;
    *(a2 + 52) = v16;
    v17 = sub_1000D1D00((a1 + 92));
    if (!sub_10041ECF8(v17))
    {
      sub_101882814();
    }

    v18 = *(a2 + 92);
    *(a2 + 72) = v17;
    *(a2 + 92) = v18 | 0x5000;
    v19 = *(a2 + 80);
    if (!v19)
    {
      operator new();
    }

    if ((sub_1000D3C88((a1 + 80), v19, 1) & 1) == 0)
    {
      if (qword_1025D4730 != -1)
      {
        sub_101B83560();
      }

      v20 = qword_1025D4738;
      if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "Error: Failed to convert CLMotionActivity start CF time to protobuf", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101B872F0();
      }

      (*(*v19 + 32))(v19);
    }

    if ((a3 & 1) == 0)
    {
      *(a2 + 92) |= 0x2000u;
      v21 = *(a2 + 64);
      if (!v21)
      {
        operator new();
      }

      if ((sub_1000D4008((a1 + 40), v21, 1) & 1) == 0)
      {
        if (qword_1025D4730 != -1)
        {
          sub_101B83ACC();
        }

        v22 = qword_1025D4738;
        if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
        {
          *v24 = 0;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "Error: Failed to convert CLMotionActivity mach timestamp to protobuf", v24, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101B873D4();
        }

        (*(*v21 + 32))(v21);
      }
    }
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v23 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v26 = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "pActivity,Invalid pointer", v26, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B874B8();
    }
  }
}

uint64_t sub_1000D30E4(uint64_t a1, double a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  *(a1 + 16) = a2;
  v5 = (a1 + 16);
  *(a1 + 24) = a2;
  v6 = (a1 + 24);
  v7 = sub_1000D51F0((a1 + 3728), a3);
  if ((*(*v7 + 16))(v7, &v69, &v67, a2))
  {
    v8 = *(&v70 + 1);
    v11 = v70;
    v10 = v11 >> 64;
    v9 = v11;
    if (*(&v70 + 1) == *v70)
    {
      v10 = *(v70 - 8) + 3944;
    }

    v12 = *(v10 - 232);
    v13 = *(v10 - 216);
    *(a1 + 72) = *(v10 - 200);
    *(a1 + 56) = v13;
    *(a1 + 40) = v12;
    v14 = *(v10 - 184);
    v15 = *(v10 - 168);
    v16 = *(v10 - 152);
    *(a1 + 136) = *(v10 - 136);
    *(a1 + 120) = v16;
    *(a1 + 104) = v15;
    *(a1 + 88) = v14;
    v17 = *(v10 - 120);
    v18 = *(v10 - 104);
    v19 = *(v10 - 88);
    *(a1 + 200) = *(v10 - 72);
    *(a1 + 184) = v19;
    *(a1 + 168) = v18;
    *(a1 + 152) = v17;
    v20 = *(v10 - 56);
    v21 = *(v10 - 40);
    v22 = *(v10 - 24);
    *(a1 + 264) = *(v10 - 8);
    *(a1 + 248) = v22;
    *(a1 + 232) = v21;
    *(a1 + 216) = v20;
    if (v8 == *v9)
    {
      v25 = *--v9;
      v23 = *(v25 + 3712);
      *&v70 = v9;
      v8 = *v9 + 3944;
    }

    else
    {
      v23 = *(v8 - 232);
    }

    *v6 = v23;
    *v5 = v23;
    v26 = v8 - 232;
    *(&v70 + 1) = v26;
    if (*(&v68 + 1) == v26)
    {
      v24 = v23;
    }

    else
    {
      if (v26 == *v9)
      {
        v26 = *(v9 - 1) + 3944;
      }

      v24 = *(v26 - 232);
      *v5 = v24;
    }
  }

  else
  {
    v23 = *v6;
    v24 = *v5;
  }

  if (v23 - v24 >= 0.1)
  {
    if (v23 - v24 <= 10.24)
    {
      goto LABEL_24;
    }

    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v28 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v29 = *v5;
      v30 = *v6;
      *buf = 134218240;
      *&buf[4] = v29;
      *&buf[12] = 2048;
      *&buf[14] = v30;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "ModelInput, Larger than expected gap between begin and end ts.  Setting end ts to some sane default. (%f, %f)", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EB3C4(v5, v6);
    }

    v23 = *v6;
    v27 = -10.24;
  }

  else
  {
    v27 = -2.56;
  }

  v24 = v23 + v27;
  *v5 = v24;
LABEL_24:
  *(a1 + 32) = v23 - v24;
  memset(buf, 0, 20);
  memset(&buf[24], 0, 25);
  v31 = *&buf[16];
  *(a1 + 272) = 0u;
  *(a1 + 288) = v31;
  *(a1 + 304) = *&buf[32];
  *(a1 + 320) = *&buf[48];
  *(a1 + 324) = 1;
  *(a1 + 272) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  sub_1000D53F0(a1, a2);
  if (*(a1 + 32) < 0.1)
  {
    *(a1 + 32) = 0x3FF0000000000000;
  }

  sub_1005A7B84(a1 + 3296, (a1 + 344), a2);
  sub_10062BECC(a1 + 4232, (a1 + 984), a2);
  sub_10062C1E4(a1 + 3440, (a1 + 488), a2);
  v32.n128_f64[0] = a2;
  sub_10062C514(a1 + 3512, (a1 + 704), v32);
  sub_10062C824(a1 + 3800, a1 + 552, a2);
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  memset(v91, 0, sizeof(v91));
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  v33 = *(a1 + 3392);
  if (v33 && *(a1 + 3396) != 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = (*(**(a1 + 3368) + 24))(*(a1 + 3368), v91, a2);
    v33 = *(a1 + 3392);
  }

  if ((v33 == 1 || *(a1 + 3396) == 1) && *(a1 + 3432) == 1)
  {
    v35 = sub_1006338D8(*(a1 + 3376), &v71, a2, *(a1 + 3400));
  }

  else
  {
    v35 = 0;
  }

  if (*(a1 + 3396) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v36 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v37 = *(a1 + 3416);
      *buf = 67110656;
      *&buf[4] = v37;
      *&buf[8] = 2048;
      *&buf[10] = a2;
      *&buf[18] = 1024;
      *&buf[20] = v34;
      *&buf[24] = 2048;
      *&buf[26] = *&v91[0];
      *&buf[34] = 1024;
      *&buf[36] = v35;
      *&buf[40] = 2048;
      *&buf[42] = v71;
      *&buf[50] = 1024;
      v90 = *v91 == *&v71;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v57 = *(a1 + 3416);
      v76[0] = 67110656;
      v76[1] = v57;
      v77 = 2048;
      v78 = a2;
      v79 = 1024;
      v80 = v34;
      v81 = 2048;
      v82 = *&v91[0];
      v83 = 1024;
      v84 = v35;
      v85 = 2048;
      v86 = v71;
      v87 = 1024;
      v88 = *v91 == *&v71;
      LODWORD(v66) = 56;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", v76, v66, v67, *(&v67 + 1), v68, *(&v68 + 1), v69);
      v59 = v58;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLOdometerEntry>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLOdometerEntry>, T = CMDataProvider::Types::CMDPOdometer, LegacyT = CLOdometerEntry, ConverterT = OdometerConverter]", "%s\n", v58);
      if (v59 != buf)
      {
        free(v59);
      }
    }
  }

  v38 = (a1 + 408);
  v39 = *(a1 + 3392);
  if (v39 == 1)
  {
    v46 = v74;
    *(a1 + 440) = v73;
    *(a1 + 456) = v46;
    *(a1 + 472) = v75;
    v47 = v72;
    *v38 = v71;
    *(a1 + 424) = v47;
  }

  else if (!v39)
  {
    v40 = *(&v91[0] + 1);
    v41 = *&v91[3];
    v42 = *(&v91[1] + 1);
    v43 = *&v91[1];
    v44 = v92;
    v45 = BYTE4(v92);
    *(a1 + 408) = *&v91[0];
    *(a1 + 416) = v91[2];
    *(a1 + 432) = v40;
    *(a1 + 440) = v41;
    *(a1 + 448) = v42;
    *(a1 + 456) = v43;
    *(a1 + 464) = *(&v91[3] + 8);
    *(a1 + 480) = v44;
    *(a1 + 481) = v45;
  }

  if (*v38 > 0.0)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v48 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v49 = *(a1 + 432);
      v50 = *(a1 + 408);
      v51 = *(a1 + 416);
      v52 = *(a1 + 448);
      *buf = 134219008;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = v50;
      *&buf[22] = 2048;
      *&buf[24] = v49;
      *&buf[32] = 2048;
      *&buf[34] = v51;
      *&buf[42] = 2048;
      *&buf[44] = v52;
      _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "ModelInput, Event time, %.2f, GPS sample time, %.2f, distance, %.2f, speed, %.2f, altitude, %.2f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v60 = *(a1 + 432);
      v61 = *(a1 + 408);
      v62 = *(a1 + 416);
      v63 = *(a1 + 448);
      LODWORD(v91[0]) = 134219008;
      *(v91 + 4) = a2;
      WORD6(v91[0]) = 2048;
      *(v91 + 14) = v61;
      WORD3(v91[1]) = 2048;
      *(&v91[1] + 1) = v60;
      LOWORD(v91[2]) = 2048;
      *(&v91[2] + 2) = v62;
      WORD5(v91[2]) = 2048;
      *(&v91[2] + 12) = v63;
      LODWORD(v66) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "ModelInput, Event time, %.2f, GPS sample time, %.2f, distance, %.2f, speed, %.2f, altitude, %.2f", COERCE_DOUBLE(v91), v66, *&v67, *(&v67 + 1), *&v68);
      v65 = v64;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::setTime(CFAbsoluteTime)", "%s\n", v64);
      if (v65 != buf)
      {
        free(v65);
      }
    }
  }

  sub_10062CB98(a1 + 3872, a1 + 720, a2);
  v53.n128_f64[0] = a2;
  sub_10062CF08(a1 + 4016, a1 + 904, v53);
  v54.n128_f64[0] = a2;
  sub_10062D22C(a1 + 3944, (a1 + 888), v54);
  sub_10062D53C(a1 + 4088, (a1 + 928), a2);
  v55.n128_f64[0] = a2;
  sub_10062D854(a1 + 4160, a1 + 960, v55);
  sub_10062DB78(a1 + 4304, a1 + 1016, a2);
  sub_10062DEB8(a1 + 4376);
  return sub_10062E224(a1 + 4448, a1 + 3136, a2);
}

uint64_t sub_1000D3994(int *a1)
{
  if (!*a1)
  {
    return 1;
  }

  if (*a1 == 1)
  {
    return 2;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled mounted state type: %{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B87774(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1000D3A98(unsigned int *a1)
{
  if (*a1 < 3)
  {
    return *a1 + 1;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled vehicle exit state type: %{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B87860(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1000D3B90(unsigned int *a1)
{
  if (*a1 < 5)
  {
    return *a1 + 1;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled vehicle confidence type: %{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B8794C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1000D3C88(double *a1, uint64_t a2, char a3)
{
  if (!a2)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v11 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "pTimeStamp,Invalid pointer", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B8575C();
    }

    return 0;
  }

  v4 = *a1;
  v5 = *a1 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*a1 <= -1 || (v5 - 0x10000000000000) >> 53 >= 0x3FF) && (*a1 - 1) >= 0xFFFFFFFFFFFFFLL && v5 != 0)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v12 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v13 = *a1;
      *buf = 134349056;
      v23 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "CF absolute time cannot be negative or infinite: %{public}lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B85488();
    }

    return 0;
  }

  *(a2 + 36) |= 1u;
  *(a2 + 8) = v4;
  if ((a3 & 1) == 0)
  {
    if (!qword_102664AD0)
    {
      operator new();
    }

    *&v21 = -1.0;
    v10 = sub_1002633B8(qword_102664AD0, a1, &v21);
    if (v10)
    {
      v15 = v21;
      *(a2 + 36) |= 2u;
      *(a2 + 16) = v15;
    }

    else
    {
      if (qword_1025D4730 != -1)
      {
        sub_101B83ACC();
      }

      v16 = qword_1025D4738;
      if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
      {
        v17 = *a1;
        *buf = 134217984;
        v23 = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "Error: CF absolute to mach absolute time conversion failed: %lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B85574();
      }
    }

    v20 = 0xBFF0000000000000;
    if (sub_100131674(qword_102664AD0, &v21, &v20))
    {
      v18 = v20;
      *(a2 + 36) |= 4u;
      *(a2 + 24) = v18;
      return v10;
    }

    if (qword_1025D4730 != -1)
    {
      sub_101B83ACC();
    }

    v19 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v23 = *&v21;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "Error: Mach absolute to mach continuous time conversion failed: %lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B85668();
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000D4008(double *a1, uint64_t a2, char a3)
{
  if (!a2)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v11 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "pTimeStamp,Invalid pointer", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B83CDC();
    }

    return 0;
  }

  v4 = *a1;
  v5 = *a1 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*a1 <= -1 || (v5 - 0x10000000000000) >> 53 >= 0x3FF) && (*a1 - 1) >= 0xFFFFFFFFFFFFFLL && v5 != 0)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v12 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v13 = *a1;
      *buf = 134349056;
      v24 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "Mach absolute time cannot be negative or infinite: %{public}lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B839E0();
    }

    return 0;
  }

  *(a2 + 36) |= 2u;
  *(a2 + 16) = v4;
  if ((a3 & 1) == 0)
  {
    if (!qword_102664AD0)
    {
      operator new();
    }

    v22 = 0xBFF0000000000000;
    v10 = sub_100131674(qword_102664AD0, a1, &v22);
    if (v10)
    {
      v15 = v22;
      *(a2 + 36) |= 4u;
      *(a2 + 24) = v15;
    }

    else
    {
      if (qword_1025D4730 != -1)
      {
        sub_101B83ACC();
      }

      v16 = qword_1025D4738;
      if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
      {
        v17 = *a1;
        *buf = 134217984;
        v24 = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "Mach absolute to mach continuous time conversion failed: %lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B83AF4();
      }
    }

    v21 = 0xBFF0000000000000;
    if (sub_100309F2C(qword_102664AD0, a1, &v21))
    {
      v18 = v21;
      *(a2 + 36) |= 1u;
      *(a2 + 8) = v18;
      return v10;
    }

    if (qword_1025D4730 != -1)
    {
      sub_101B83ACC();
    }

    v19 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
    {
      v20 = *a1;
      *buf = 134217984;
      v24 = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "Mach absolute to CF absolute time conversion failed: %lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B83BE8();
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000D4388(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (*(a1 + 28))
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
      v3 = *(a1 + 28);
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
    if ((*(a1 + 28) & 2) == 0)
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
    v3 = *(a1 + 28);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102637EF8 + 16);
    }

    v9 = sub_1000D4524(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
  }

LABEL_26:
  *(a1 + 24) = v4;
  return v4;
}

uint64_t sub_1000D4484(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v5 = *(a1 + 16);
      if (!v5)
      {
        v5 = *(qword_102636CF8 + 16);
      }

      v6 = sub_1000D45F8(v5, a2);
      v8 = v6;
      if (v6 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, v7);
      }

      else
      {
        v9 = 1;
      }

      v4 += v8 + v9 + 1;
      v3 = *(a1 + 32);
    }

    result = ((v3 >> 1) & 2) + v4;
  }

  else
  {
    result = 0;
  }

  *(a1 + 28) = result;
  return result;
}

uint64_t sub_1000D4524(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 28))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    v4 = *(qword_102637F00 + 8);
  }

  v5 = sub_1000D4484(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102637F00 + 16);
    }

    v9 = sub_10042F2A4(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v3 = (v3 + v11 + v12 + 1);
  }

LABEL_18:
  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_1000D45F8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 92);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_39;
  }

  if (v3)
  {
    v6 = *(a1 + 8);
    if ((v6 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v6 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      v3 = *(a1 + 92);
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
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v7 = *(a1 + 12);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
    v3 = *(a1 + 92);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v9 = *(a1 + 16);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 92);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
    if ((v3 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if ((v3 & 8) != 0)
  {
LABEL_28:
    v11 = *(a1 + 20);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      v3 = *(a1 + 92);
    }

    else
    {
      v12 = 2;
    }

    v4 += v12;
  }

LABEL_34:
  v13 = ((v3 >> 3) & 2) + v4;
  if ((v3 & 0x20) != 0)
  {
    v13 += 5;
  }

  if ((v3 & 0x40) != 0)
  {
    v13 += 9;
  }

  v5 = v13 + ((v3 >> 6) & 2);
LABEL_39:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_96;
  }

  if ((v3 & 0x100) != 0)
  {
    v14 = *(a1 + 48);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
      v3 = *(a1 + 92);
    }

    else
    {
      v15 = 2;
    }

    LODWORD(v5) = v15 + v5;
  }

  v16 = v5 + 9;
  if ((v3 & 0x200) == 0)
  {
    v16 = v5;
  }

  if ((v3 & 0x400) != 0)
  {
    v5 = v16 + 9;
  }

  else
  {
    v5 = v16;
  }

  if ((v3 & 0x800) != 0)
  {
    v17 = *(a1 + 52);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
      v3 = *(a1 + 92);
    }

    else
    {
      v18 = 2;
    }

    v5 = (v18 + v5);
    if ((v3 & 0x1000) == 0)
    {
LABEL_54:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_70;
    }
  }

  else if ((v3 & 0x1000) == 0)
  {
    goto LABEL_54;
  }

  v19 = *(a1 + 72);
  if ((v19 & 0x80000000) != 0)
  {
    v20 = 11;
  }

  else if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
    v3 = *(a1 + 92);
  }

  else
  {
    v20 = 2;
  }

  v5 = (v20 + v5);
  if ((v3 & 0x2000) == 0)
  {
LABEL_55:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_80;
  }

LABEL_70:
  v21 = *(a1 + 64);
  if (!v21)
  {
    v21 = *(qword_102636CC0 + 64);
  }

  v22 = *(v21 + 36);
  v23 = (v22 << 31 >> 31) & 9;
  if ((v22 & 2) != 0)
  {
    v23 += 9;
  }

  if ((v22 & 4) != 0)
  {
    v23 += 9;
  }

  if (*(v21 + 36))
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  *(v21 + 32) = v24;
  v5 = (v5 + v24 + 2);
  v3 = *(a1 + 92);
  if ((v3 & 0x4000) == 0)
  {
LABEL_56:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_90;
  }

LABEL_80:
  v25 = *(a1 + 80);
  if (!v25)
  {
    v25 = *(qword_102636CC0 + 80);
  }

  v26 = *(v25 + 36);
  v27 = (v26 << 31 >> 31) & 9;
  if ((v26 & 2) != 0)
  {
    v27 += 9;
  }

  if ((v26 & 4) != 0)
  {
    v27 += 9;
  }

  if (*(v25 + 36))
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  *(v25 + 32) = v28;
  v5 = (v5 + v28 + 2);
  if ((*(a1 + 92) & 0x8000) != 0)
  {
LABEL_90:
    v29 = *(a1 + 76);
    if ((v29 & 0x80000000) != 0)
    {
      v30 = 12;
    }

    else if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 2;
    }

    else
    {
      v30 = 3;
    }

    v5 = (v30 + v5);
  }

LABEL_96:
  *(a1 + 88) = v5;
  return v5;
}

uint64_t sub_1000D48FC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(result + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102637EF8 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

uint64_t sub_1000D4998(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637F00 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(qword_102637F00 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return result;
}

uint64_t sub_1000D4A24(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
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

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102636CF8 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((*(v5 + 32) & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 24);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v8, a2, a4);
  }

  return result;
}

uint64_t sub_1000D4AC0(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 92);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 29), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 48), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 52), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 72), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_31:
  v7 = *(v5 + 64);
  if (!v7)
  {
    v7 = *(qword_102636CC0 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v7, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_37;
  }

LABEL_34:
  v8 = *(v5 + 80);
  if (!v8)
  {
    v8 = *(qword_102636CC0 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v8, a2, a4);
  if ((*(v5 + 92) & 0x8000) != 0)
  {
LABEL_37:
    v9 = *(v5 + 76);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x10, v9, a2, a4);
  }

  return result;
}

uint64_t sub_1000D4CD8(char *a1, int a2, uint64_t a3, double a4)
{
  v25 = a2;
  *buf = off_1024628A0;
  *&v44[4] = buf;
  v8 = sub_1000A6A6C(a1, a2);
  sub_1000A69EC(buf);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (sub_1000A6B04(a1, a2, a3))
  {
    v9 = sub_1003DD9F8((a1 + 24), &v25);
    v10 = (*(**v9 + 32))(*v9, a3);
    v11 = (*(*a1 + 24))(a1, a3);
    v12 = v9[3];
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v13 = v12 + a4;
    v14 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      v15 = a1 + 48;
      if (a1[71] < 0)
      {
        v15 = *v15;
      }

      *buf = 136316674;
      *&buf[4] = v15;
      v41 = 1024;
      v42 = v25;
      v43 = 2048;
      *v44 = a4;
      *&v44[8] = 1024;
      *&v44[10] = v10 >= a4;
      v45 = 1024;
      v46 = v13 < v11;
      v47 = 2048;
      v48 = v10;
      v49 = 2048;
      v50 = v11;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[Composite-%s] Stream %d readiness evaluated for time %f, future, %d, passed latency, %d, latest, %f, now, %f", buf, 0x3Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45A0 != -1)
      {
        sub_1018D6BF4();
      }

      v22 = a1 + 48;
      if (a1[71] < 0)
      {
        v22 = *v22;
      }

      v26 = 136316674;
      v27 = v22;
      v28 = 1024;
      v29 = v25;
      v30 = 2048;
      v31 = a4;
      v32 = 1024;
      v33 = v10 >= a4;
      v34 = 1024;
      v35 = v13 < v11;
      v36 = 2048;
      v37 = v10;
      v38 = 2048;
      v39 = v11;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 1, "[Composite-%s] Stream %d readiness evaluated for time %f, future, %d, passed latency, %d, latest, %f, now, %f", &v26, 60);
      v24 = v23;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CMDataProviderComposite::Composite::isStreamReady(CMDataProviderFactory::FactoryStream, CFTimeInterval, CMDataProviderFactoryStream::TimeBase) const", "%s\n", v23);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    return v13 < v11 || v10 >= a4;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018D6BF4();
  }

  v17 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_ERROR))
  {
    v18 = a1 + 48;
    if (a1[71] < 0)
    {
      v18 = *v18;
    }

    *buf = 136315650;
    *&buf[4] = v18;
    v41 = 1024;
    v42 = a2;
    v43 = 1024;
    *v44 = a3;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "[Composite-%s] Temporarily unsupported time base request for stream %d, base %d", buf, 0x18u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45A0 != -1)
    {
      sub_1018D6BF4();
    }

    v19 = a1 + 48;
    if (a1[71] < 0)
    {
      v19 = *v19;
    }

    v26 = 136315650;
    v27 = v19;
    v28 = 1024;
    v29 = a2;
    v30 = 1024;
    LODWORD(v31) = a3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 16, "[Composite-%s] Temporarily unsupported time base request for stream %d, base %d", &v26, 24);
    v21 = v20;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CMDataProviderComposite::Composite::isStreamReady(CMDataProviderFactory::FactoryStream, CFTimeInterval, CMDataProviderFactoryStream::TimeBase) const", "%s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }

    return 0;
  }

  return result;
}

void sub_1000D5190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1000A69EC(va);
  _Unwind_Resume(a1);
}

double sub_1000D51B0(uint64_t a1, int a2)
{
  result = -1.0;
  if (a2 == 1 && *(a1 + 66))
  {
    v3 = *(a1 + 66) + *(a1 + 64) - 1;
    v4 = *(a1 + 68);
    if (v3 < v4)
    {
      v4 = 0;
    }

    return *(a1 + 56 * (v3 - v4) + 72);
  }

  return result;
}

uint64_t sub_1000D51F0(uint64_t *a1, uint64_t a2)
{
  if (!*(a1 + 6))
  {
    v2 = *a1;
    if (*a1)
    {
      return v2;
    }

LABEL_8:
    sub_1018EB4D8();
  }

  v2 = *a1;
  if (*(a1 + 28) == 1 && v2 == 0)
  {
    goto LABEL_8;
  }

  return v2;
}

uint64_t sub_1000D522C(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  result = (*(*a1 + 16))(a1, &v7, &v5);
  if (result)
  {
    v4 = *(&v8 + 1);
    if (*(&v8 + 1) == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      if (*v8 == *(&v8 + 1))
      {
        v4 = *(v8 - 8) + 4096;
      }

      *a2 = *(v4 - 16);
      return 1;
    }
  }

  return result;
}

BOOL sub_1000D52D0(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = (v5 + 8 * (v4 >> 8));
  if (*(a1 + 40) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 16 * v4;
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v7;
  v8 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v8;
  v9 = *(a1 + 56) + *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = (v10 + 8 * (v9 >> 8));
  if (*(a1 + 40) == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 16 * v9;
  }

  if (a3[3] != v12)
  {
    v13 = *v11;
    v14 = 1.79769313e308;
    v15 = v12;
    v16 = v11;
    while (1)
    {
      v17 = v15;
      if (v15 == v13)
      {
        v17 = *(v16 - 1) + 4096;
      }

      v18 = vabdd_f64(*(v17 - 16), a4);
      if (v18 < v14 && v18 < *(a1 + 16))
      {
        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v16;
        *(a2 + 24) = v15;
        v13 = *v16;
        v19 = v15;
        if (v15 == *v16)
        {
          v19 = *(v16 - 1) + 4096;
        }

        v14 = v18;
        if (*(v19 - 16) == a4)
        {
          break;
        }
      }

      if (v15 == v13)
      {
        v20 = *--v16;
        v13 = v20;
        v15 = v20 + 4096;
      }

      v15 -= 16;
      if (a3[3] == v15)
      {
        v12 = v15;
        return *(a2 + 24) != v12;
      }
    }

    v12 = a3[3];
  }

  return *(a2 + 24) != v12;
}

void sub_1000D53F0(uint64_t a1, double a2)
{
  sub_1000D6D94(4, &v161);
  v8 = v161;
  if (v161 && v162 != 1)
  {
LABEL_60:
    v153 = 0;
    goto LABEL_61;
  }

  *v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v9 = sub_1000D51F0((a1 + 3584), v7);
  if (!(*(*v9 + 16))(v9, v159, &v157, a2))
  {
    v33 = a1;
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
      v33 = a1;
    }

    v34 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v36 = sub_1000D51F0((v33 + 3584), v35);
      v37 = v36[8];
      if (v37)
      {
        v38 = *(*(v36[4] + 8 * ((v37 + v36[7] - 1) / 0x16uLL)) + 184 * ((v37 + v36[7] - 1) % 0x16uLL) + 8);
      }

      else
      {
        v38 = 0xFFEFFFFFFFFFFFFFLL;
      }

      *buf = 134218240;
      v171 = a2;
      v172 = 2048;
      *v173 = v38;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Legacy steps lookup failed, time, %f, lastEntry, %f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EB688((a1 + 3584), a2);
    }

    goto LABEL_60;
  }

  v10 = *(&v160 + 1);
  if (*(&v158 + 1) == *(&v160 + 1))
  {
LABEL_24:
    v153 = 0;
  }

  else
  {
    v11 = *v160;
    v12 = *v160;
    v13 = *(&v160 + 1);
    v14 = v160;
    while (1)
    {
      v15 = *(&v160 + 1);
      if (*(&v160 + 1) == v11)
      {
        v15 = *(v160 - 8) + 4048;
      }

      v16 = v13;
      if (v13 == v12)
      {
        v16 = *(v14 - 8) + 4048;
      }

      if (*(v15 - 176) > *(v16 - 176))
      {
        v17 = *(&v160 + 1);
        if (*(&v160 + 1) == v11)
        {
          v17 = *(v160 - 8) + 4048;
        }

        v18 = v13;
        if (v13 == v12)
        {
          v18 = *(v14 - 8) + 4048;
        }

        if (*(v17 - 176) - *(v18 - 176) < 60.0)
        {
          v19 = *(&v160 + 1);
          if (*(&v160 + 1) == v11)
          {
            v19 = *(v160 - 8) + 4048;
          }

          v20 = v13;
          if (v13 == v12)
          {
            v20 = *(v14 - 8) + 4048;
          }

          if (*(v19 - 176) - *(v20 - 176) > *(a1 + 24) - *(a1 + 16) + -1.0)
          {
            break;
          }
        }
      }

      if (v13 == v12)
      {
        v21 = *(v14 - 8);
        v14 -= 8;
        v12 = v21;
        v13 = v21 + 4048;
      }

      v13 -= 184;
      if (*(&v158 + 1) == v13)
      {
        goto LABEL_24;
      }
    }

    if (*(&v160 + 1) == v11)
    {
      v10 = *(v160 - 8) + 4048;
    }

    v146 = *(v10 - 160);
    v142 = *(v10 - 24);
    v143 = *(v10 - 32);
    v144 = *(v10 - 10);
    if (v13 == v12)
    {
      v13 = *(v14 - 8) + 4048;
    }

    v2 = *(v10 - 176);
    v4 = *(v10 - 152);
    v140 = *(v10 - 104);
    v5 = *(v13 - 176);
    v145 = *(v13 - 160);
    v3 = *(v13 - 152);
    v153 = 1;
    v141 = *(v13 - 32);
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA6D8();
  }

  v22 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v23 = v5;
    *buf = 134218752;
    v24 = 0xBFF0000000000000;
    if (!v153)
    {
      v23 = -1.0;
    }

    v171 = v23;
    v25 = v145;
    if (!v153)
    {
      v25 = -1;
    }

    v172 = 1024;
    if (v153)
    {
      v24 = *&v2;
    }

    *v173 = v25;
    v26 = v146;
    if (!v153)
    {
      v26 = -1;
    }

    *&v173[4] = 2048;
    *&v173[6] = v24;
    *&v173[14] = 1024;
    *&v173[16] = v26;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Legacy steps lookup, startTime, %f, count, %d, startTime, %f, count, %d", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v27 = *&v5;
    if (!v153)
    {
      v27 = 0xBFF0000000000000;
    }

    *__p = 134218752;
    v28 = v145;
    if (!v153)
    {
      v28 = -1;
    }

    *&__p[4] = v27;
    if (v153)
    {
      v29 = *&v2;
    }

    else
    {
      v29 = 0xBFF0000000000000;
    }

    v165 = 1024;
    v30 = v146;
    if (!v153)
    {
      v30 = -1;
    }

    *v166 = v28;
    *&v166[4] = 2048;
    *&v166[6] = v29;
    *&v166[14] = 1024;
    *&v166[16] = v30;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "[Steps snapshot] Legacy steps lookup, startTime, %f, count, %d, startTime, %f, count, %d", COERCE_DOUBLE(__p), 34, *v131.i64, v131.i32[2]);
    v32 = v31;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v31);
    if (v32 != buf)
    {
      free(v32);
    }
  }

LABEL_61:
  v39 = a1;
  v168 = 0uLL;
  LOBYTE(v169) = 0;
  if (v8 != 1 && v162 != 1)
  {
    v148 = 0;
    v152 = 0;
    v149 = 0u;
    v42 = 0.0;
    v45 = -1;
    v150 = 1;
    v151 = 0;
    goto LABEL_213;
  }

  v159[0] = 0;
  v159[1] = 0;
  *&v160 = 0;
  v40 = v163;
  v41 = v163 + a2;
  if (!sub_1011FE4B8(*(a1 + 3280), v159, a2 + -60.0, v163 + a2))
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
      v39 = a1;
    }

    v44 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Data provider legacy steps lookup failed", buf, 2u);
    }

    v43 = 0.0;
    if (!sub_10000A100(121, 2))
    {
      v152 = 0;
      goto LABEL_72;
    }

    sub_1018EB7F8(buf);
    *__p = 0;
    LODWORD(v130) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "[Steps snapshot] Data provider legacy steps lookup failed", __p, *&v130);
    v87 = v86;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v86);
    if (v87 != buf)
    {
      free(v87);
    }

    v152 = 0;
    v42 = 0.0;
    goto LABEL_260;
  }

  v42 = *(v159[1] - 7);
  if (vabdd_f64(v42, a2) > v40)
  {
    v152 = 0;
    v43 = 0.0;
LABEL_72:
    v42 = 0.0;
    goto LABEL_97;
  }

  v43 = 0.0;
  if (v159[1] == v159[0])
  {
LABEL_83:
    v152 = 0;
    v42 = 0.0;
  }

  else
  {
    v46 = v159[1];
    v47 = v159[1];
    while (1)
    {
      v48 = *(v47 - 7);
      v47 -= 7;
      v49 = v48;
      v50 = v42 - v48;
      v51 = v42 > v48 && v50 < 60.0;
      if (v51 && v50 > *(a1 + 24) - *(a1 + 16) + -1.0)
      {
        break;
      }

      v46 = v47;
      if (v47 == v159[0])
      {
        goto LABEL_83;
      }
    }

    v136 = *(v159[1] - 11);
    v131 = *(v159[1] - 2);
    HIDWORD(v135) = *(v159[1] - 16);
    v147 = *(v159[1] - 3);
    v138 = *(v159[1] - 12);
    v139 = *(v46 - 12);
    v137 = *(v46 - 11);
    v152 = 1;
    v43 = v49;
    v133 = *(v159[1] - 5);
    v134 = *(v46 - 5);
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA6D8();
    v39 = a1;
  }

  v52 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v53 = v43;
    *buf = 134218752;
    v54 = 0xBFF0000000000000;
    if (!v152)
    {
      v53 = -1.0;
    }

    v171 = v53;
    v55 = v139;
    if (!v152)
    {
      v55 = -1;
    }

    v172 = 1024;
    if (v152)
    {
      v54 = *&v42;
    }

    *v173 = v55;
    v56 = v138;
    if (!v152)
    {
      v56 = -1;
    }

    *&v173[4] = 2048;
    *&v173[6] = v54;
    *&v173[14] = 1024;
    *&v173[16] = v56;
    _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Data provider legacy steps lookup, startTime, %f, count, %d, startTime, %f, count, %d", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v119 = *&v43;
    if (!v152)
    {
      v119 = 0xBFF0000000000000;
    }

    *__p = 134218752;
    v120 = v139;
    if (!v152)
    {
      v120 = -1;
    }

    *&__p[4] = v119;
    if (v152)
    {
      v121 = *&v42;
    }

    else
    {
      v121 = 0xBFF0000000000000;
    }

    v165 = 1024;
    v122 = v138;
    if (!v152)
    {
      v122 = -1;
    }

    *v166 = v120;
    *&v166[4] = 2048;
    *&v166[6] = v121;
    *&v166[14] = 1024;
    *&v166[16] = v122;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "[Steps snapshot] Data provider legacy steps lookup, startTime, %f, count, %d, startTime, %f, count, %d", COERCE_DOUBLE(__p), 34, *v131.i64, v131.i32[2]);
    v124 = v123;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v123);
    if (v124 != buf)
    {
      free(v124);
    }

LABEL_260:
    v39 = a1;
  }

LABEL_97:
  v157 = 0uLL;
  *&v158 = 0;
  if (qword_1025D4230 != -1)
  {
    sub_1018EA6D8();
    v39 = a1;
  }

  v57 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v58 = *(v39 + 24) - *(v39 + 16);
    *buf = 134218496;
    v171 = a2 - v58;
    v172 = 2048;
    *v173 = a2;
    *&v173[8] = 2048;
    *&v173[10] = v58;
    _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Pednet steps lookup, start, %f, end, %f, duration, %f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v83 = *(a1 + 24) - *(a1 + 16);
    *__p = 134218496;
    *&__p[4] = a2 - v83;
    v165 = 2048;
    *v166 = a2;
    *&v166[8] = 2048;
    *&v166[10] = v83;
    LODWORD(v130) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "[Steps snapshot] Pednet steps lookup, start, %f, end, %f, duration, %f", COERCE_DOUBLE(__p), v130, *v131.i64);
    v85 = v84;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v84);
    if (v85 != buf)
    {
      free(v85);
    }

    v39 = a1;
  }

  if (sub_1000D6FDC(*(v39 + 3280), &v157, a2 - (*(v39 + 24) - *(v39 + 16)), v41))
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
      v39 = a1;
    }

    v59 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v171) = -1227133513 * ((*(&v157 + 1) - v157) >> 3);
      _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Pednet lookup results, size, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EB7F8(buf);
      *__p = 67109120;
      *&__p[4] = -1227133513 * ((*(&v157 + 1) - v157) >> 3);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "[Steps snapshot] Pednet lookup results, size, %d", __p);
      v89 = v88;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v88);
      if (v89 != buf)
      {
        free(v89);
      }

      v39 = a1;
    }

    v61 = *(&v157 + 1);
    v60 = v157;
    v149 = *(*(&v157 + 1) - 56);
    v151 = *(*(&v157 + 1) - 40);
    v148 = *(*(&v157 + 1) - 32);
    v168 = *(*(&v157 + 1) - 24);
    v150 = *(*(&v157 + 1) - 4);
    v169 = *(*(&v157 + 1) - 8);
    if (v157 == *(&v157 + 1))
    {
      goto LABEL_167;
    }

    do
    {
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v62 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
      {
        v63 = 0;
        v64 = *v60;
        v65 = *(v60 + 4);
        v66 = *(v60 + 3);
        v67 = *(v60 + 13) & 0x3FF;
        v166[9] = 10;
        strcpy(__p, "0000000000");
        v68 = 9;
        do
        {
          if ((v67 >> v63))
          {
            if (v166[9] >= 0)
            {
              v69 = __p;
            }

            else
            {
              v69 = *__p;
            }

            v69[v68] = 49;
          }

          ++v63;
          --v68;
        }

        while (v63 != 10);
        if (v166[9] >= 0)
        {
          v70 = __p;
        }

        else
        {
          v70 = *__p;
        }

        *buf = 134218754;
        v171 = v64;
        v172 = 1024;
        *v173 = v65;
        *&v173[4] = 2048;
        *&v173[6] = v66;
        *&v173[14] = 2080;
        *&v173[16] = v70;
        _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Pednet lookup result, startTime, %f, count, %d, distance, %f, config, %s", buf, 0x26u);
        if ((v166[9] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4230 != -1)
        {
          sub_1018EA6D8();
        }

        v71 = 0;
        v72 = qword_1025D4238;
        v73 = *v60;
        v74 = *(v60 + 4);
        v75 = *(v60 + 3);
        v76 = *(v60 + 13) & 0x3FF;
        v156 = 10;
        strcpy(v155, "0000000000");
        v77 = 9;
        do
        {
          if ((v76 >> v71))
          {
            v78 = v155;
            if (v156 < 0)
            {
              v78 = v155[0];
            }

            *(v78 + v77) = 49;
          }

          ++v71;
          --v77;
        }

        while (v71 != 10);
        v79 = v155;
        if (v156 < 0)
        {
          v79 = v155[0];
        }

        *__p = 134218754;
        *&__p[4] = v73;
        v165 = 1024;
        *v166 = v74;
        *&v166[4] = 2048;
        *&v166[6] = v75;
        *&v166[14] = 2080;
        *&v166[16] = v79;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v72, 2, "[Steps snapshot] Pednet lookup result, startTime, %f, count, %d, distance, %f, config, %s", COERCE_DOUBLE(__p), 38, *v131.i64, v131.i64[1]);
        v81 = v80;
        if (v156 < 0)
        {
          operator delete(v155[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v81);
        if (v81 != buf)
        {
          free(v81);
        }
      }

      v60 += 7;
    }

    while (v60 != v61);
    goto LABEL_165;
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA6D8();
    v39 = a1;
  }

  v82 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v82, OS_LOG_TYPE_DEBUG, "[Steps snapshot] Data provider pednet steps lookup failed", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    *__p = 0;
    LODWORD(v130) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "[Steps snapshot] Data provider pednet steps lookup failed", __p, *&v130);
    v91 = v90;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v90);
    if (v91 != buf)
    {
      free(v91);
    }

    v148 = 0;
    v149 = 0u;
    v150 = 1;
    v151 = 0;
LABEL_165:
    v39 = a1;
    goto LABEL_166;
  }

  v148 = 0;
  v149 = 0u;
  v150 = 1;
  v151 = 0;
LABEL_166:
  v60 = v157;
LABEL_167:
  if (v60)
  {
    *(&v157 + 1) = v60;
    operator delete(v60);
  }

  if (v159[0])
  {
    v159[1] = v159[0];
    operator delete(v159[0]);
  }

  v45 = v147 | 1;
  if (v162)
  {
    if ((v153 & v152) == 1 && (v2 != v42 || v5 != v43))
    {
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v92 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219520;
        v171 = a2;
        v172 = 2048;
        *v173 = v2;
        *&v173[8] = 2048;
        *&v173[10] = v42;
        *&v173[18] = 2048;
        *&v173[20] = v5;
        *&v173[28] = 2048;
        *&v173[30] = v43;
        *&v173[38] = 1024;
        *v174 = v2 == v42;
        *&v174[4] = 1024;
        *&v174[6] = v5 == v43;
        _os_log_impl(dword_100000000, v92, OS_LOG_TYPE_DEFAULT, "[Steps snapshot] Detected difference in step outputs, time, %f, legacy, start, [%f, %f], end, [%f, %f], equal, [%d, %d]", buf, 0x40u);
      }

      v39 = a1;
      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4230 != -1)
        {
          sub_1018EA6D8();
        }

        *__p = 134219520;
        *&__p[4] = a2;
        v165 = 2048;
        *v166 = v2;
        *&v166[8] = 2048;
        *&v166[10] = v42;
        *&v166[18] = 2048;
        *&v166[20] = v5;
        *&v166[28] = 2048;
        *&v166[30] = v43;
        *&v166[38] = 1024;
        *v167 = v2 == v42;
        *&v167[4] = 1024;
        *&v167[6] = v5 == v43;
        LODWORD(v130) = 64;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[Steps snapshot] Detected difference in step outputs, time, %f, legacy, start, [%f, %f], end, [%f, %f], equal, [%d, %d]", COERCE_DOUBLE(__p), v130, *v131.i64, *&v131.i64[1], v132, LODWORD(v133), LODWORD(v134));
        v126 = v125;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v125);
        if (v126 != buf)
        {
          free(v126);
        }

        v39 = a1;
      }
    }

    if (v153)
    {
      v93 = v146 - v145;
      if (v146 == v145)
      {
        v94 = 0.0;
      }

      else
      {
        v94 = v4 - v3;
      }

      v95 = v2;
    }

    else
    {
      v94 = 0.0;
      v93 = 0;
      v95 = 0.0;
    }

    v96 = *(v39 + 248) != 1 || (v93 | v151) == 0;
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v97 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, v96))
    {
      v98 = 0;
      v166[9] = 10;
      strcpy(__p, "0000000000");
      v99 = 9;
      do
      {
        if (((v150 & 0x3FF) >> v98))
        {
          if (v166[9] >= 0)
          {
            v100 = __p;
          }

          else
          {
            v100 = *__p;
          }

          v100[v99] = 49;
        }

        ++v98;
        --v99;
      }

      while (v98 != 10);
      v101 = __p;
      if (v166[9] < 0)
      {
        v101 = *__p;
      }

      *buf = 134219778;
      v171 = a2;
      v172 = 2048;
      *v173 = v95;
      *&v173[8] = 1024;
      *&v173[10] = v93;
      *&v173[14] = 2048;
      *&v173[16] = v94;
      *&v173[24] = 2048;
      *&v173[26] = v149;
      *&v173[34] = 1024;
      *&v173[36] = v151;
      *v174 = 2048;
      *&v174[2] = v148;
      *&v174[10] = 2080;
      *&v174[12] = v101;
      _os_log_impl(dword_100000000, v97, v96, "[Steps snapshot] Comparison, %f, legacy step, startTime, %f, count, %d, distance, %f, arbitrated, startTime, %f, count, %d, distance, %f, config, %s", buf, 0x4Au);
      if ((v166[9] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v112 = 0;
      v113 = qword_1025D4238;
      BYTE7(v160) = 10;
      strcpy(v159, "0000000000");
      v114 = 9;
      do
      {
        if (((v150 & 0x3FF) >> v112))
        {
          if ((SBYTE7(v160) & 0x80u) == 0)
          {
            v115 = v159;
          }

          else
          {
            v115 = v159[0];
          }

          *(v115 + v114) = 49;
        }

        ++v112;
        --v114;
      }

      while (v112 != 10);
      v116 = v159;
      if (SBYTE7(v160) < 0)
      {
        v116 = v159[0];
      }

      *__p = 134219778;
      *&__p[4] = a2;
      v165 = 2048;
      *v166 = v95;
      *&v166[8] = 1024;
      *&v166[10] = v93;
      *&v166[14] = 2048;
      *&v166[16] = v94;
      *&v166[24] = 2048;
      *&v166[26] = v149;
      *&v166[34] = 1024;
      *&v166[36] = v151;
      *v167 = 2048;
      *&v167[2] = v148;
      *&v167[10] = 2080;
      *&v167[12] = v116;
      LODWORD(v130) = 74;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v113, v96, "[Steps snapshot] Comparison, %f, legacy step, startTime, %f, count, %d, distance, %f, arbitrated, startTime, %f, count, %d, distance, %f, config, %s", COERCE_DOUBLE(__p), v130, v131.i32[0], *&v131.i64[1], v132, LODWORD(v133), v134, v135);
      v118 = v117;
      if (SBYTE7(v160) < 0)
      {
        operator delete(v159[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v118);
      if (v118 != buf)
      {
        free(v118);
      }
    }

    if ((v150 & 2) == 0 && (v95 != *&v149 || v93 != v151))
    {
      if (qword_1025D4230 != -1)
      {
        sub_1018EA6D8();
      }

      v102 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, v96))
      {
        v103 = *(a1 + 248);
        *buf = 134219776;
        v171 = a2;
        v172 = 1024;
        *v173 = v103;
        *&v173[4] = 2048;
        *&v173[6] = v95;
        *&v173[14] = 1024;
        *&v173[16] = v93;
        *&v173[20] = 2048;
        *&v173[22] = v94;
        *&v173[30] = 2048;
        *&v173[32] = v149;
        *v174 = 1024;
        *&v174[2] = v151;
        *&v174[6] = 2048;
        *&v174[8] = v148;
        _os_log_impl(dword_100000000, v102, v96, "[Steps snapshot] Detected difference in batched pednet steps, time, %f in session, %d, legacy, [%f, %d, %f], batched pednet, [%f, %d, %f]", buf, 0x46u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4230 != -1)
        {
          sub_1018EA6D8();
        }

        v127 = *(a1 + 248);
        *__p = 134219776;
        *&__p[4] = a2;
        v165 = 1024;
        *v166 = v127;
        *&v166[4] = 2048;
        *&v166[6] = v95;
        *&v166[14] = 1024;
        *&v166[16] = v93;
        *&v166[20] = 2048;
        *&v166[22] = v94;
        *&v166[30] = 2048;
        *&v166[32] = v149;
        *v167 = 1024;
        *&v167[2] = v151;
        *&v167[6] = 2048;
        *&v167[8] = v148;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, v96, "[Steps snapshot] Detected difference in batched pednet steps, time, %f in session, %d, legacy, [%f, %d, %f], batched pednet, [%f, %d, %f]", COERCE_DOUBLE(__p), 70, *v131.i64, v131.i32[2], v132, v133, LODWORD(v134), *&v135);
        v129 = v128;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNatalieModelInput::populateStepsData(CFAbsoluteTime)", "%s\n", v128);
        if (v129 != buf)
        {
          free(v129);
        }
      }
    }

    v39 = a1;
  }

LABEL_213:
  if (v161 != 1)
  {
    if (!v161 && v153)
    {
      v104 = v4 - v3;
      if ((v144 - 1) > 8u)
      {
        v105 = 0;
      }

      else
      {
        v105 = dword_101C82254[(v144 - 1)];
      }

      v109 = v105 | 0x20;
      if (((1 << v144) & 0x154) == 0)
      {
        v109 = v105;
      }

      if (v144 <= 8u)
      {
        v105 = v109;
      }

      if (v146 == v145)
      {
        v104 = 0.0;
      }

      *(v39 + 272) = v2;
      *(v39 + 280) = v2 + 2.55999994;
      *(v39 + 288) = v146 - v145;
      v110 = vdup_n_s32(v146 == v145);
      *(v39 + 296) = v104;
      v111.i64[0] = v110.u32[0];
      v111.i64[1] = v110.u32[1];
      *(v39 + 304) = vandq_s8(v140, vcgezq_s64(vshlq_n_s64(v111, 0x3FuLL)));
      *(v39 + 320) = v142;
      *(v39 + 324) = v105 | 1;
      *(v39 + 328) = v2;
      *(v39 + 336) = v143 - v141;
    }

    return;
  }

  if (!v152)
  {
    if (*(v39 + 248) != 1)
    {
      return;
    }

LABEL_224:
    *(v39 + 272) = v149;
    *(v39 + 288) = v151;
    *(v39 + 296) = v148;
    *(v39 + 304) = v168;
    *(v39 + 320) = v169;
    *(v39 + 324) = v150;
    return;
  }

  *(v39 + 328) = v42;
  *(v39 + 336) = v136 - v137;
  if (*(v39 + 248))
  {
    goto LABEL_224;
  }

  v106 = v133 - v134;
  if (v138 == v139)
  {
    v106 = 0.0;
  }

  *(v39 + 272) = v42;
  *(v39 + 280) = v42 + 2.55999994;
  *(v39 + 288) = v138 - v139;
  *(v39 + 296) = v106;
  v107 = vdup_n_s32(v138 == v139);
  v108.i64[0] = v107.u32[0];
  v108.i64[1] = v107.u32[1];
  *(v39 + 304) = vandq_s8(v131, vcgezq_s64(vshlq_n_s64(v108, 0x3FuLL)));
  *(v39 + 320) = BYTE4(v135);
  *(v39 + 324) = v45;
}
uint64_t sub_10045CCE0(uint64_t a1, double a2)
{
  if (!*(a1 + 96))
  {
    return *(a1 + 1056);
  }

  if (sub_10045CBF8(a1, v3, a2))
  {
    return v4;
  }

  return 0;
}

__n128 sub_10045CD24@<Q0>(void *a1@<X0>, double *a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = a1[11] + a1[12];
  v7 = a1[8];
  v8 = a1[9];
  v9 = (v7 + 8 * (v6 / 0xAA));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 24 * (v6 % 0xAA);
  }

  v11 = 0;
  while (1)
  {
    v12 = v8 == v7 ? 0 : *(v7 + 8 * (a1[11] / 0xAAuLL)) + 24 * (a1[11] % 0xAAuLL);
    if (v12 == v10)
    {
      break;
    }

    if (v10 == *v9)
    {
      v15 = *(v9 - 1);
      result.n128_u64[0] = *(v15 + 4056);
      if (result.n128_f64[0] <= *a2)
      {
        break;
      }

      v14 = v15 + 4080;
    }

    else
    {
      result.n128_u64[0] = *(v10 - 24);
      v14 = v10;
      if (result.n128_f64[0] <= *a2)
      {
        break;
      }
    }

    v16 = (v14 - 24);
    v17 = a3[2];
    if (v11 >= v17)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 3);
      v19 = v18 + 1;
      if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10028C64C();
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *a3) >> 3);
      if (2 * v20 > v19)
      {
        v19 = 2 * v20;
      }

      if (v20 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        sub_10045EB88(a3, v21);
      }

      v22 = 24 * v18;
      v23 = *v16;
      *(v22 + 16) = v16[1].n128_u64[0];
      *v22 = v23;
      v11 = (24 * v18 + 24);
      v24 = a3[1] - *a3;
      v25 = (v22 - v24);
      memcpy((v22 - v24), *a3, v24);
      v26 = *a3;
      *a3 = v25;
      a3[1] = v11;
      a3[2] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      result = *v16;
      v11[1].n128_u64[0] = v16[1].n128_u64[0];
      *v11 = result;
      v11 = (v11 + 24);
    }

    a3[1] = v11;
    if (v10 == *v9)
    {
      v27 = *--v9;
      v10 = v27 + 4080;
    }

    v10 -= 24;
    v7 = a1[8];
    v8 = a1[9];
  }

  v28 = *a3;
  v29 = &v11[-2].n128_i8[8];
  if (*a3 != v11 && v29 > v28)
  {
    v31 = v28 + 24;
    do
    {
      result = *(v31 - 24);
      v32 = *(v31 - 1);
      v33 = *(v29 + 2);
      *(v31 - 24) = *v29;
      *(v31 - 1) = v33;
      *(v29 + 2) = v32;
      *v29 = result;
      v29 -= 24;
      v34 = v31 >= v29;
      v31 += 24;
    }

    while (!v34);
  }

  return result;
}

void sub_10045CF94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045CFB4(void *a1@<X0>, const void **a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = a1[11] + a1[12];
  v9 = a1[8];
  v10 = a1[9];
  v11 = (v9 + 8 * (v8 / 0xAA));
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 24 * (v8 % 0xAA);
  }

  v13 = 0;
  while (1)
  {
    v14 = v10 == v9 ? 0 : *(v9 + 8 * (a1[11] / 0xAAuLL)) + 24 * (a1[11] % 0xAAuLL);
    if (v14 == v12)
    {
      break;
    }

    v15 = *v11;
    if (v12 == *v11)
    {
      v18 = *(v11 - 1);
      v19 = *(v18 + 4056);
      if (v19 < a3)
      {
        break;
      }

      if (v19 > a4)
      {
        v15 = v12;
        goto LABEL_30;
      }

      v17 = v18 + 4080;
LABEL_17:
      v20 = v17 - 24;
      v21 = a2[2];
      if (v13 >= v21)
      {
        v23 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a2) >> 3);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a2) >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x555555555555555)
        {
          v26 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          sub_10045EB88(a2, v26);
        }

        v27 = 24 * v23;
        v28 = *v20;
        *(v27 + 16) = *(v20 + 16);
        *v27 = v28;
        v13 = (24 * v23 + 24);
        v29 = a2[1] - *a2;
        v30 = (v27 - v29);
        memcpy((v27 - v29), *a2, v29);
        v31 = *a2;
        *a2 = v30;
        a2[1] = v13;
        a2[2] = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        v22 = *v20;
        *(v13 + 2) = *(v17 - 8);
        *v13 = v22;
        v13 += 24;
      }

      a2[1] = v13;
      v15 = *v11;
      goto LABEL_30;
    }

    v16 = *(v12 - 24);
    if (v16 < a3)
    {
      break;
    }

    v17 = v12;
    if (v16 <= a4)
    {
      goto LABEL_17;
    }

LABEL_30:
    if (v12 == v15)
    {
      v32 = *--v11;
      v12 = v32 + 4080;
    }

    v12 -= 24;
    v9 = a1[8];
    v10 = a1[9];
  }

  v33 = *a2;
  v34 = v13 - 24;
  if (*a2 != v13 && v34 > v33)
  {
    v36 = v33 + 24;
    do
    {
      v37 = *(v36 - 24);
      v38 = *(v36 - 1);
      v39 = *(v34 + 2);
      *(v36 - 24) = *v34;
      *(v36 - 1) = v39;
      *(v34 + 2) = v38;
      *v34 = v37;
      v34 -= 24;
      v40 = v36 >= v34;
      v36 += 24;
    }

    while (!v40);
  }
}

void sub_10045D240(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10045D260(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_10045AA20(a1);
  if (v6)
  {
    if (*(a1 + 2136))
    {
      sub_101883C04();
    }

    v36 = 0x7FFFFFFFFFFFFFFFLL;
    memset(v37, 0, sizeof(v37));
    v8 = *a2;
    v7 = *(a2 + 8);
    v9 = a3 - v7;
    v10 = v7 < a3;
    v11 = 0.0;
    if (!v10)
    {
      v9 = 0.0;
    }

    v12 = *(a1 + 2184);
    v13 = v12 - v9;
    if (v8 < a3)
    {
      v11 = a3 - v8;
    }

    v14 = v12 - v11;
    v38 = v12 - v9;
    v39 = v12 - v11;
    v40 = v8;
    v50 = 0;
    v41 = 0;
    v15 = *(a1 + 192);
    v16 = *(a1 + 1008);
    if (v15)
    {
      v17 = *(*(*(a1 + 160) + 8 * ((v15 + *(a1 + 184) - 1) / 0x1AuLL)) + 152 * ((v15 + *(a1 + 184) - 1) % 0x1AuLL) + 72) + v16;
    }

    else
    {
      v17 = *(a1 + 1008);
    }

    v42 = v17;
    v43 = v14;
    v44 = v16;
    v45 = 0;
    v46 = (*(*a1 + 128))(a1, v8);
    v18 = *(a1 + 192);
    if (v18)
    {
      v19 = *(*(*(a1 + 160) + 8 * ((v18 + *(a1 + 184) - 1) / 0x1AuLL)) + 152 * ((v18 + *(a1 + 184) - 1) % 0x1AuLL) + 108) + 1;
    }

    else
    {
      v19 = 1;
    }

    v47 = v19;
    v48 = 0u;
    v49 = 0u;
    if (*(a1 + 96))
    {
      v20 = sub_10045CBF8(a1, &v26, *a2);
      v21 = DWORD1(v27);
      if (!v20)
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = *(a1 + 1060);
    }

    LODWORD(v50) = v21;
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    if ((*(*a1 + 120))(a1, &v26))
    {
      DWORD2(v48) = DWORD2(v33);
      v22 = DWORD2(v33) + 1;
    }

    else
    {
      v22 = 1;
    }

    if (*(a2 + 20) == 1)
    {
      sub_10045B300(a1);
      DWORD2(v48) = v22;
    }

    v23 = *(a2 + 16);
    if (v23)
    {
      if (v23 != 1)
      {
LABEL_27:
        HIDWORD(v45) = (*(*a1 + 136))(a1, *(a1 + 96), v8 - vabdd_f64(v14, v13), v8);
        uuid_copy(v37, (a1 + 1014));
        *&v49 = sub_100A5EB0C(&v36, a1);
        sub_10045A4E4(a1, &v36);
        sub_101212FB8((a1 + 1664));
        return v6;
      }

      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    LODWORD(v45) = v24;
    goto LABEL_27;
  }

  return v6;
}

uint64_t sub_10045D584(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  result = sub_10045AA20(a1);
  if (result)
  {
    if (*(a1 + 1013) == 1)
    {
      v11 = *(a1 + 1008);
      v12 = (*(*a1 + 128))(a1, a3);
      v13 = sub_100C5E758(a1 + 1560, a3);
      v14 = *(a1 + 1064);
      v15 = (*(*a1 + 136))(a1, *(a1 + 96), a3 - a5, a3);
      if (*(a1 + 96))
      {
        v16 = sub_10045CBF8(a1, v25, a3);
        v17 = v25[5];
        if (!v16)
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = *(a1 + 1060);
      }

      v18 = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 40) = a4 - a5;
      *(a2 + 48) = a4;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 56) = 0;
      *(a2 + 80) = a4;
      *(a2 + 88) = v11;
      *(a2 + 96) = 0;
      *(a2 + 104) = v12;
      *(a2 + 108) = 0;
      *(a2 + 112) = v13;
      *(a2 + 116) = v14;
      *(a2 + 120) = 0;
      *(a2 + 124) = v15;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = v17;
      if (v13 > 0.0)
      {
        v18 = (*(*a1 + 136))(a1, *(a1 + 1640), 0.0, a3);
      }

      *(a2 + 100) = v18;
      v19 = *(a1 + 192);
      if (v19)
      {
        v20 = *(*(a1 + 160) + 8 * ((v19 + *(a1 + 184) - 1) / 0x1AuLL)) + 152 * ((v19 + *(a1 + 184) - 1) % 0x1AuLL);
        LODWORD(v19) = *(v20 + 120);
        v21 = *(v20 + 108);
      }

      else
      {
        v21 = 0;
      }

      *(a2 + 120) = v19;
      *(a2 + 108) = v21;
      if ((*(*a1 + 176))(a1))
      {
        v22 = *(a1 + 192);
        if (v22)
        {
          v23 = *(*(*(a1 + 160) + 8 * ((v22 + *(a1 + 184) - 1) / 0x1AuLL)) + 152 * ((v22 + *(a1 + 184) - 1) % 0x1AuLL) + 72);
        }

        else
        {
          v23 = 0.0;
        }

        (*(*a1 + 120))(a1, v25);
        v24 = v23 + sub_101212D20(a1 + 1664, v26);
        if (v23 + *(a1 + 1008) + -2.0 < v24)
        {
          v24 = v23 + *(a1 + 1008) + -2.0;
        }
      }

      else
      {
        v24 = sub_100A5E470(a1 + 2120);
      }

      *(a2 + 72) = v24;
      uuid_copy((a2 + 8), (a1 + 1014));
      uuid_parse("00000000-0000-0000-0000-000000000000", (a2 + 24));
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10045D8C8(unsigned __int8 *a1, double a2, double a3)
{
  if (((*(*a1 + 176))(a1) & 1) == 0 && sub_100A5E9A0(a1))
  {

    sub_10045B0C0(a1, a2, a3);
  }
}

__n128 sub_10045D958@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (a1 + 992);
  v6 = *(a1 + 992);
  v7 = (a1 + 2192);
  v8 = *(a1 + 2192);
  if (v6 >= v8)
  {
    if (qword_1025D4240 != -1)
    {
      sub_101883700();
    }

    v13 = qword_1025D4248;
    if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_ERROR))
    {
      v14 = *v5;
      v15 = *v7;
      *buf = 134218240;
      v41 = v14;
      v42 = 2048;
      v43 = v15;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "Session start time should be > session end time, not alterting timestamps, sessionStart, %f, sessionEnd, %f", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101883D7C();
    }
  }

  else
  {
    v9 = v6 + 0.1;
    if (*(a2 + 40) >= v9)
    {
      v9 = *(a2 + 40);
    }

    v10 = v8 + -0.1;
    if (v10 >= *(a2 + 48))
    {
      v10 = *(a2 + 48);
    }

    if (v9 < v10)
    {
      v11 = *(a2 + 16);
      *a3 = *a2;
      *(a3 + 16) = v11;
      *(a3 + 32) = *(a2 + 32);
      *(a3 + 40) = v9;
      *(a3 + 48) = v10;
      *(a3 + 88) = *(a2 + 88);
      *(a3 + 104) = *(a2 + 104);
      *(a3 + 120) = *(a2 + 120);
      *(a3 + 136) = *(a2 + 136);
      *(a3 + 56) = *(a2 + 56);
      result = *(a2 + 72);
      *(a3 + 72) = result;
      return result;
    }

    if (qword_1025D4240 != -1)
    {
      sub_101883700();
    }

    v16 = qword_1025D4248;
    if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_ERROR))
    {
      v17 = *v5;
      v18 = *v7;
      v19 = *(a2 + 40);
      v20 = *(a2 + 48);
      *buf = 134218752;
      v41 = v17;
      v42 = 2048;
      v43 = v18;
      v44 = 2048;
      v45 = v19;
      v46 = 2048;
      v47 = v20;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "sanitizing entry resulted in startTime > endTime, not altering timestamps, sessionStart, %f, sessionEnd, %f, entryStart, %f, entryEnd, %f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4240 != -1)
      {
        sub_1018830D0();
      }

      v25 = *v5;
      v26 = *v7;
      v27 = *(a2 + 40);
      v28 = *(a2 + 48);
      v32 = 134218752;
      v33 = v25;
      v34 = 2048;
      v35 = v26;
      v36 = 2048;
      v37 = v27;
      v38 = 2048;
      v39 = v28;
      LODWORD(v31) = 42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4248, 16, "sanitizing entry resulted in startTime > endTime, not altering timestamps, sessionStart, %f, sessionEnd, %f, entryStart, %f, entryEnd, %f", COERCE_DOUBLE(&v32), v31);
      v30 = v29;
      sub_100152C7C("Generic", 1, 0, 0, "CLSwimEntry CLSwimDataStore::sanitizeEntryStartEndTimes(const CLSwimEntry &)", "%s\n", v29);
      if (v30 != buf)
      {
        free(v30);
      }
    }
  }

  v21 = *(a2 + 112);
  *(a3 + 96) = *(a2 + 96);
  *(a3 + 112) = v21;
  *(a3 + 128) = *(a2 + 128);
  *(a3 + 144) = *(a2 + 144);
  v22 = *(a2 + 48);
  *(a3 + 32) = *(a2 + 32);
  *(a3 + 48) = v22;
  v23 = *(a2 + 80);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v23;
  result = *a2;
  v24 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v24;
  return result;
}

__n128 sub_10045DCB0(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 26 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10045ED30(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x1A)) + 152 * (v7 % 0x1A);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v12;
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  result = *(a2 + 96);
  v14 = *(a2 + 112);
  v15 = *(a2 + 128);
  *(v8 + 144) = *(a2 + 144);
  *(v8 + 112) = v14;
  *(v8 + 128) = v15;
  *(v8 + 96) = result;
  ++a1[5];
  return result;
}

uint64_t sub_10045DDB0(void *a1, unint64_t a2, double a3, double a4)
{
  sub_10107A19C(v24);
  v8 = a1[11] + a1[12];
  v9 = a1[8];
  v10 = a1[9];
  v11 = (v9 + 8 * (v8 / 0xAA));
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 24 * (v8 % 0xAA);
  }

  v13 = 0;
  while (1)
  {
    v14 = v10 == v9 ? 0 : *(v9 + 8 * (a1[11] / 0xAAuLL)) + 24 * (a1[11] % 0xAAuLL);
    if (v14 == v12)
    {
      return sub_10107A1D0(v24);
    }

    v15 = *v11;
    if (v12 == *v11)
    {
      v19 = *(v11 - 1);
      v20 = *(v19 + 4056);
      if (v20 < a3 || v13 >= a2)
      {
        return sub_10107A1D0(v24);
      }

      if (v20 > a4)
      {
        v15 = v12;
        goto LABEL_24;
      }

      v18 = v19 + 4080;
LABEL_23:
      sub_10107A1A8(v24, *(v18 - 16));
      ++v13;
      v15 = *v11;
      goto LABEL_24;
    }

    v16 = *(v12 - 24);
    if (v16 < a3 || v13 >= a2)
    {
      return sub_10107A1D0(v24);
    }

    v18 = v12;
    if (v16 <= a4)
    {
      goto LABEL_23;
    }

LABEL_24:
    if (v12 == v15)
    {
      v22 = *--v11;
      v12 = v22 + 4080;
    }

    v12 -= 24;
    v9 = a1[8];
    v10 = a1[9];
  }
}

void sub_10045DF20(uint64_t a1, double a2)
{
  *(a1 + 2192) = a2;
  if (qword_1025D4240 != -1)
  {
    sub_101883700();
  }

  v3 = qword_1025D4248;
  if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "data store setting session end time to %f", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101883E78(a2);
  }
}

uint64_t sub_10045E058(uint64_t a1)
{
  *a1 = off_1024556A0;
  sub_1003C93BC(a1 + 64, *(a1 + 72));
  sub_10045E1B0((a1 + 16));
  return a1;
}

void sub_10045E0AC(uint64_t a1)
{
  *a1 = off_1024556A0;
  sub_1003C93BC(a1 + 64, *(a1 + 72));
  sub_10045E1B0((a1 + 16));

  operator delete();
}

void sub_10045E120(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  a1[7] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[4];
      v2 = (a1[3] + 8);
      a1[3] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 512;
LABEL_7:
    a1[6] = v6;
  }

  v8 = a1[9];
  v7 = a1 + 9;
  sub_1003C93BC((v7 - 1), v8);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
}

uint64_t sub_10045E1B0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

void sub_10045E25C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_10045E3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10045E430(unint64_t *a1, void *a2)
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

      sub_10045E858(a1, v11);
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

void sub_10045E538(const void **a1, void *a2)
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

      sub_10045E858(a1, v9);
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

void sub_10045E644(unint64_t *a1, void *a2)
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

      sub_10045E858(a1[4], v11);
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

void sub_10045E74C(const void **a1, void *a2)
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

      sub_10045E858(a1[4], v9);
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

void sub_10045E858(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t *sub_10045E8A0(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_1000B8E4C(v6, a2);
  return v3;
}

void sub_10045E914(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t **a5)
{
  v7 = a2;
  if (a1 == a3)
  {
    v8 = *a5;
    while (v7 != a4)
    {
      sub_10045DCB0(v8, v7);
      v7 += 152;
    }
  }

  else
  {
    v10 = a1;
    v11 = *a1 + 3952;
    v8 = *a5;
    if (v11 != a2)
    {
      do
      {
        sub_10045DCB0(v8, v7);
        v7 += 152;
      }

      while (v7 != v11);
    }

    while (1)
    {
      *a5 = v8;
      if (++v10 == a3)
      {
        break;
      }

      v12 = *v10;
      v13 = 3952;
      do
      {
        sub_10045DCB0(v8, v12);
        v12 += 152;
        v13 -= 152;
      }

      while (v13);
    }

    for (i = *v10; i != a4; i += 152)
    {
      sub_10045DCB0(v8, i);
    }
  }

  *a5 = v8;
}

void sub_10045EA08(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t *sub_10045EA60(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10045EADC(result, a4);
  }

  return result;
}

void sub_10045EAC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045EADC(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_10045EB2C(a1, a2);
  }

  sub_10028C64C();
}

void sub_10045EB2C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_10045EB88(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t *sub_10045EBE0(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10045EC84(result, a4);
  }

  return result;
}

void sub_10045EC68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045EC84(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    sub_10045ECD4(a1, a2);
  }

  sub_10028C64C();
}

void sub_10045ECD4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_10045ED30(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1A;
  v3 = v1 - 26;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_10045EEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10045EF04(uint64_t a1, char *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_100019438((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_100019438(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_10045EF84(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v3 = *sub_1000F2B3C(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

__n128 sub_10045F038@<Q0>(uint64_t *a1@<X1>, char *a2@<X2>, char **a3@<X3>, unint64_t a4@<X4>, char *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = (a3 - 1);
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_10045F108(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = (v19 + 3952);
    }

    v12 = (*v17 + 3952);
    v11 = a2;
  }

  sub_10045F108(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_10045F108@<X0>(char *a1@<X1>, char *a2@<X2>, char *a3@<X3>, char *a4@<X4>, char **a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = 0x86BCA1AF286BCA1BLL * (&a4[-v10] >> 3);
      if ((0x86BCA1AF286BCA1BLL * ((v11 - a1) >> 3)) < v12)
      {
        v12 = 0x86BCA1AF286BCA1BLL * ((v11 - a1) >> 3);
      }

      v11 -= 152 * v12;
      a4 -= 152 * v12;
      if (v12)
      {
        result = memmove(a4, v11, 152 * v12);
      }

      if (v11 == a1)
      {
        break;
      }

      v14 = *(v6 - 1);
      v6 -= 8;
      v10 = v14;
      a4 = (v14 + 3952);
    }

    if ((*v6 + 3952) == a4)
    {
      v15 = *(v6 + 1);
      v6 += 8;
      a4 = v15;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

double sub_10045F1EC(void **a1, uint64_t *__src, void **a3, uint64_t *a4, void ***a5)
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
    sub_10045F2B0(&v15, __src, a5[1], *a1 + 494, *a5);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_10045F2B0(&v15, v13, a5[1], v13 + 494, *a5);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = a5[1];
  }

  sub_10045F2B0(&v15, v9, v8, a4, v7);
  result = *&v16;
  *a5 = v16;
  return result;
}

uint64_t *sub_10045F2B0@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = 0x86BCA1AF286BCA1BLL * ((v10 - __dst + 3952) >> 3);
      if ((0x86BCA1AF286BCA1BLL * (a4 - v9)) < v11)
      {
        v11 = 0x86BCA1AF286BCA1BLL * (a4 - v9);
      }

      v12 = 152 * v11;
      if (v11)
      {
        __src = memmove(__dst, v9, 152 * v11);
      }

      v9 = (v9 + v12);
      if (v9 == a4)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += v12;
    if (*(v6 - 1) + 3952 == __dst)
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

void sub_10045F398(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_10045F520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10045F56C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_10045F6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10045F7BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_1024556E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10045F840(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10045F88C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10045F90C@<X0>(uint64_t result@<X0>, int a2@<W1>, __int16 a3@<W2>, __int16 a4@<W8>, double a5@<D2>)
{
  *(v7 - 90) = a3;
  *(v6 + 104) = result;
  *(v7 - 80) = a3;
  *(v6 + 114) = a5;
  *(v7 - 70) = 2080;
  *(v6 + 124) = v5;
  *(v7 - 60) = a4;
  *(v6 + 134) = a2;
  return result;
}

BOOL sub_10045F964()
{
  v1 = qword_1025D4248;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_10045FB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100008080(a14);
  }

  _Unwind_Resume(exception_object);
}

id sub_100460750(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak enableBOMScan];
}

NSDictionary *sub_100460A34(uint64_t a1)
{
  v4[0] = @"bomDisableCount";
  v2 = [NSNumber numberWithUnsignedInteger:*(a1 + 32)];
  v4[1] = @"timeSinceLastDisable";
  v5[0] = v2;
  v5[1] = [NSNumber numberWithDouble:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
}

id sub_100460E78(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4700 != -1)
  {
    sub_101883FB8();
  }

  v3 = qword_1025D4708;
  if (os_log_type_enabled(qword_1025D4708, OS_LOG_TYPE_INFO))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ut BOM reset check}", v5, 0x12u);
  }

  [objc_loadWeak((a1 + 32)) resetBOMScanIfNeeded];
  return [objc_loadWeak((a1 + 32)) scheduleDailyResetBOMScan];
}

id sub_100461864(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) silo];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004618F0;
  v4[3] = &unk_102447418;
  v4[4] = *(a1 + 32);
  return [v2 afterInterval:v4 async:5.0];
}

void sub_1004618F0(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 24))
  {
    if (qword_1025D4660 != -1)
    {
      sub_101883FCC();
    }

    v2 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315138;
      v6 = "[CLEmergencyWifiAvailability _scheduleWifiArtifactsAllocation:]_block_invoke";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s, device, previously retrieved", &v5, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018845B0();
    }
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_101883FCC();
    }

    v4 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315138;
      v6 = "[CLEmergencyWifiAvailability _scheduleWifiArtifactsAllocation:]_block_invoke_2";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s, device, timer retrieve", &v5, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018846A4();
    }

    [*(a1 + 32) _registerForLqmScoreNotifications];
  }
}

void sub_1004626F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10046276C;
  v4[3] = &unk_1024473F0;
  v4[4] = a2;
  v4[5] = v2;
  dispatch_async(v3, v4);
}

void sub_10046276C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 type];
    if (v4 == 9)
    {
      v10 = [*(*(a1 + 40) + 40) wakeOnWirelessEnabled];
      [*(*(a1 + 40) + 48) setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", v10), @"isWoWEnabledKey"}];
      if (qword_1025D4660 != -1)
      {
        sub_101883FCC();
      }

      v11 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        v12 = @"Disabled";
        if (v10)
        {
          v12 = @"Enabled";
        }

        *v16 = 136315394;
        *&v16[4] = "[CLEmergencyWifiAvailability _setupMonitoringEvent]_block_invoke";
        *&v16[12] = 2112;
        *&v16[14] = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "%s, wow changed to, %@", v16, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018857E4(v10);
      }

      [*(a1 + 40) submitWowChangeEventToBiome];
    }

    else if (v4 == 6)
    {
      v5 = [*(a1 + 32) info];
      v6 = [v5 objectForKeyedSubscript:CWFEventLinkChangeStatusKey];
      v7 = [v6 isLinkDown];
      if (v7)
      {
        v8 = [v6 reason] != 1 && objc_msgSend(v6, "reason") != 5;
      }

      else
      {
        v8 = 1;
      }

      [*(*(a1 + 40) + 48) setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", v7 ^ 1), @"isWiFiStartingKey"}];
      [*(*(a1 + 40) + 48) setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", v8), @"isWiFiSwitchOnKey"}];
      if (qword_1025D4660 != -1)
      {
        sub_101883FCC();
      }

      v13 = qword_1025D4668;
      if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
      {
        v14 = @"NO";
        *&v16[4] = "[CLEmergencyWifiAvailability _setupMonitoringEvent]_block_invoke";
        if (v7)
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        *v16 = 136315650;
        *&v16[14] = v15;
        *&v16[12] = 2112;
        if (v8)
        {
          v14 = @"YES";
        }

        *&v16[22] = 2112;
        v17 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "%s, isLinkDown, %@, isWifiSwitchOn, %@", v16, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101885908(v7, v8);
      }

      [*(a1 + 40) submitWifiAvailabilityEventToBiome];
    }
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_101883FCC();
    }

    v9 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 136315138;
      *&v16[4] = "[CLEmergencyWifiAvailability _setupMonitoringEvent]_block_invoke_2";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "%s, event nil", v16, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101885A44();
    }
  }
}

void sub_100462DB4(id a1, id a2, id a3, BOOL *a4)
{
  if (qword_1025D4660 != -1)
  {
    sub_101883FCC();
  }

  v6 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "[CLEmergencyWifiAvailability _submitWifiAvailabilityEventToBiome]_block_invoke";
    v15 = 2112;
    v16 = a2;
    v17 = 2112;
    v18 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "%s, key, %@, value, %@", &v13, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101885D20(a2, a3, v7, v8, v9, v10, v11, v12);
  }
}

uint64_t sub_100463460(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char *a6)
{

  return sub_100152C7C(a1, a2, a3, 0, v6, a6);
}

void sub_1004634D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = CMPedestrianFenceIdentifier;
    v3 = a2;
    [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
    sub_1004649FC();
  }
}

void sub_1004635AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004635E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = CMErrorMessage;
    v3 = [NSNumber numberWithInteger:a2];
    [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
    sub_1004649FC();
  }
}

void sub_1004636D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10046377C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = CMBackgroundInertialOdometry;
    v3 = a2;
    [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
    sub_100464B40();
  }
}

void sub_100463858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004638A4(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = off_1024558B8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v5 = [[CLPedestrianFenceClientDelegate alloc] initWithPedestrianFenceClient:a1];
  *(a1 + 24) = v5;
  [(CLPedestrianFenceClientDelegate *)v5 setValid:1];
  v6 = [objc_msgSend(a3 "vendor")];
  *(a1 + 32) = v6;
  [v6 registerDelegate:*(a1 + 24) inSilo:{objc_msgSend(a3, "silo")}];
  [*(a1 + 32) setDelegateEntityName:"CLPedestrianFenceClient"];
  v7 = [[CLBackgroundInertialOdometryClientDelegate alloc] initWithPedestrianFenceClient:a1];
  *(a1 + 40) = v7;
  [(CLBackgroundInertialOdometryClientDelegate *)v7 setValid:1];
  v8 = [objc_msgSend(a3 "vendor")];
  *(a1 + 48) = v8;
  [v8 registerDelegate:*(a1 + 40) inSilo:{objc_msgSend(a3, "silo")}];
  [*(a1 + 48) setDelegateEntityName:"CLBackgroundInertialOdometryService"];
  CLConnection::setDefaultMessageHandler();
  CLConnection::setDisconnectionHandler();
  return a1;
}

void sub_100463AA4(_Unwind_Exception *a1)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  sub_100143A80(v1);
  _Unwind_Resume(a1);
}

void sub_100463AD8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_100463B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_100463B6C(uint64_t a1)
{
  result = [*(a1 + 32) teardownClient:*(a1 + 24)];
  if (*(a1 + 56) == 1)
  {
    v3 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v3 = *v3;
    }

    result = [*(a1 + 32) odometryClient:+[NSString stringWithUTF8String:](NSString requestInterval:{"stringWithUTF8String:", v3), &off_102551C40}];
  }

  if (*(a1 + 88) == 1)
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);

    return [v4 stopBackgroundInertialOdometryUpdatesForClient:v5];
  }

  return result;
}

void *sub_100463C08(uint64_t a1)
{
  *a1 = off_1024558B8;

  *(a1 + 32) = 0;
  [*(a1 + 24) setValid:0];

  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  [*(a1 + 40) setValid:0];

  *(a1 + 40) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  return sub_100143A80(a1);
}

void sub_100463CC8(uint64_t a1)
{
  sub_100463C08(a1);

  operator delete();
}

void sub_100463D00(uint64_t a1, uint64_t a2)
{
  v4 = CLConnectionMessage::name(*a2);
  if (*(v4 + 23) < 0 && *(v4 + 8) == 52 && !memcmp(*v4, "PedestrianFence/kCLConnectionMessageInertialOdometry", 0x34uLL) || (v5 = CLConnectionMessage::name(*a2), *(v5 + 23) < 0) && *(v5 + 8) == 62 && !memcmp(*v5, "PedestrianFence/kCLConnectionMessageBackgroundInertialOdometry", 0x3EuLL))
  {
    sub_10000EC00(buf, "com.apple.locationd.inertialodometry");
    isEntitled = CLConnection::isEntitled();
    v9 = isEntitled;
    if (v35 < 0)
    {
      operator delete(*buf);
      if (v9)
      {
        goto LABEL_21;
      }
    }

    else if (isEntitled)
    {
      goto LABEL_21;
    }

    if (qword_1025D4510 != -1)
    {
      sub_101886490();
    }

    v19 = qword_1025D4518;
    if (os_log_type_enabled(qword_1025D4518, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "Subscription: Client not entitled.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018864B8();
    }

    return;
  }

  sub_10000EC00(buf, "com.apple.locationd.pedestrianfencemanager");
  v6 = CLConnection::isEntitled();
  v7 = v6;
  if (v35 < 0)
  {
    operator delete(*buf);
    if (v7)
    {
      goto LABEL_21;
    }

LABEL_14:
    if (qword_1025D4500 != -1)
    {
      sub_101886384();
    }

    v10 = qword_1025D4508;
    if (os_log_type_enabled(qword_1025D4508, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "Subscription: Client not entitled.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018863AC();
    }

    return;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_21:
  v11 = CLConnectionMessage::name(*a2);
  if (*(v11 + 23) < 0 && *(v11 + 8) == 51 && !memcmp(*v11, "PedestrianFence/kCLConnectionMessagePedestrianFence", 0x33uLL))
  {
    v20 = *a2;
    v18 = *(a2 + 8);
    v33[0] = v20;
    v33[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100464224(a1, v33);
    goto LABEL_70;
  }

  v12 = CLConnectionMessage::name(*a2);
  if (*(v12 + 23) < 0 && *(v12 + 8) == 61 && !memcmp(*v12, "PedestrianFence/kCLConnectionMessagePedestrianFenceSimulation", 0x3DuLL))
  {
    v24 = *a2;
    v18 = *(a2 + 8);
    v32[0] = v24;
    v32[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100464504(a1, v32);
    goto LABEL_70;
  }

  v13 = CLConnectionMessage::name(*a2);
  if (*(v13 + 23) < 0 && *(v13 + 8) == 58 && !memcmp(*v13, "PedestrianFence/kCLConnectionMessagePedestrianFenceSession", 0x3AuLL))
  {
    v25 = *a2;
    v18 = *(a2 + 8);
    v31[0] = v25;
    v31[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10046466C(a1, v31);
    goto LABEL_70;
  }

  v14 = CLConnectionMessage::name(*a2);
  if (*(v14 + 23) < 0 && *(v14 + 8) == 52 && !memcmp(*v14, "PedestrianFence/kCLConnectionMessageInertialOdometry", 0x34uLL))
  {
    v26 = *a2;
    v18 = *(a2 + 8);
    v30[0] = v26;
    v30[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1004647A4(a1, v30);
    goto LABEL_70;
  }

  v15 = CLConnectionMessage::name(*a2);
  if (*(v15 + 23) < 0 && *(v15 + 8) == 62 && !memcmp(*v15, "PedestrianFence/kCLConnectionMessageBackgroundInertialOdometry", 0x3EuLL))
  {
    v27 = *a2;
    v18 = *(a2 + 8);
    v29[0] = v27;
    v29[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100464860(a1, v29);
    goto LABEL_70;
  }

  v16 = CLConnectionMessage::name(*a2);
  if (sub_100030AF8(v16, "PedestrianFence/kCLConnectionMessageEnableIOMotionSimulation"))
  {
    v17 = *a2;
    v18 = *(a2 + 8);
    v28[0] = v17;
    v28[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100464934(a1, v28);
LABEL_70:
    if (v18)
    {
      sub_100008080(v18);
    }

    return;
  }

  if (qword_1025D4500 != -1)
  {
    sub_101886384();
  }

  v21 = qword_1025D4508;
  if (os_log_type_enabled(qword_1025D4508, OS_LOG_TYPE_FAULT))
  {
    v22 = CLConnectionMessage::name(*a2);
    if (*(v22 + 23) >= 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *v22;
    }

    *buf = 136446210;
    *&buf[4] = v23;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "Got unhandled mesage of type %{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10188659C(a2);
  }
}

void sub_1004641D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100464224(uint64_t a1, CLConnectionMessage **a2)
{
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  v4 = [Dictionary objectForKey:@"kCLConnectionMessageSubscribeKey"];
  if (v4)
  {
    v5 = v4;
    v6 = [Dictionary objectForKey:CMPedestrianFenceIdentifier];
    if (v6)
    {
      v7 = v6;
      if ([v5 BOOLValue])
      {
        v8 = [Dictionary objectForKey:CMPedestrianFenceRadius];
        if (v8)
        {
          v11 = a1 + 24;
          v9 = *(a1 + 24);
          v10 = *(v11 + 8);
          [v8 floatValue];

          [v10 setFence:v7 forClient:v9 withRadius:?];
        }

        else
        {
          if (qword_1025D4500 != -1)
          {
            sub_1018866D8();
          }

          v20 = qword_1025D4508;
          if (os_log_type_enabled(qword_1025D4508, OS_LOG_TYPE_FAULT))
          {
            *v21 = 0;
            _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "Invalid parameters!", v21, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018866EC();
          }
        }
      }

      else
      {
        v14 = [Dictionary objectForKey:CMPedestrianFenceForceClear];
        v15 = [Dictionary objectForKey:CMPedestrianFenceForceClearAll];
        if ([v14 BOOLValue])
        {
          v16 = [v15 BOOLValue];
          v17 = *(a1 + 32);
          if (v16)
          {

            [v17 forceClearAllFences];
          }

          else
          {

            [v17 forceClearFence:?];
          }
        }

        else
        {
          v19 = *(a1 + 24);
          v18 = *(a1 + 32);

          [v18 clearFence:v7 forClient:v19];
        }
      }
    }

    else
    {
      if (qword_1025D4500 != -1)
      {
        sub_1018866D8();
      }

      v13 = qword_1025D4508;
      if (os_log_type_enabled(qword_1025D4508, OS_LOG_TYPE_FAULT))
      {
        *v22 = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "Invalid paramaters!", v22, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018867C8();
      }
    }
  }

  else
  {
    if (qword_1025D4500 != -1)
    {
      sub_1018866D8();
    }

    v12 = qword_1025D4508;
    if (os_log_type_enabled(qword_1025D4508, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Couldn't get value for kCLConnectionMessageSubscribeKey key", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018868A4();
    }
  }
}

void sub_100464504(uint64_t a1, CLConnectionMessage **a2)
{
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  v4 = [Dictionary objectForKey:CMPedestrianFenceIdentifier];
  v5 = [Dictionary objectForKey:CMPedestrianFenceDelay];
  v6 = [Dictionary objectForKey:CMPedestrianFenceShouldWake];
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || v6 == 0)
  {
    if (qword_1025D4500 != -1)
    {
      sub_1018866D8();
    }

    v9 = qword_1025D4508;
    if (os_log_type_enabled(qword_1025D4508, OS_LOG_TYPE_FAULT))
    {
      *v17 = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Invalid simulation paramaters!", v17, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101886980();
    }
  }

  else
  {
    v10 = v6;
    v13 = a1 + 24;
    v11 = *(a1 + 24);
    v12 = *(v13 + 8);
    [v5 doubleValue];
    v15 = v14;
    v16 = [v10 BOOLValue];

    [v12 simulateFence:v4 forClient:v11 withExitAfterDelay:v16 wake:v15];
  }
}

void sub_10046466C(uint64_t a1, CLConnectionMessage **a2)
{
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  v4 = [Dictionary objectForKey:@"kCLConnectionMessageSubscribeKey"];
  if (v4)
  {
    v5 = [v4 BOOLValue];
    v8 = a1 + 24;
    v6 = *(a1 + 24);
    v7 = *(v8 + 8);
    if (v5)
    {
      v9 = [Dictionary objectForKey:CMPedestrianFenceClientIdentifier];

      [v7 startSessionForClient:v6 withIdentifier:v9];
    }

    else
    {

      [v7 endSessionForClient:v6];
    }
  }

  else
  {
    if (qword_1025D4500 != -1)
    {
      sub_1018866D8();
    }

    v10 = qword_1025D4508;
    if (os_log_type_enabled(qword_1025D4508, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Couldn't get value for inSession key", v11, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101886A5C();
    }
  }
}

id sub_1004647A4(uint64_t a1, CLConnectionMessage **a2)
{
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  v4 = [Dictionary objectForKey:CMInertialOdometryUpdateInterval];
  result = [Dictionary objectForKey:CMPedestrianFenceClientIdentifier];
  if (v4)
  {
    v6 = result == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = result;
    *(a1 + 56) = 1;
    sub_10000EC00(&v8, [result UTF8String]);
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    *(a1 + 64) = v8;
    *(a1 + 80) = v9;
    return [*(a1 + 32) odometryClient:v7 requestInterval:v4];
  }

  return result;
}

id sub_100464860(uint64_t a1, CLConnectionMessage **a2)
{
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  v4 = [Dictionary objectForKey:CMPedestrianFenceClientIdentifier];
  result = [Dictionary objectForKey:@"kCLConnectionMessageSubscribeKey"];
  if (v4)
  {
    v6 = result == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = result;
    *(a1 + 88) = 1;
    sub_10000EC00(&v11, [v4 UTF8String]);
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    *(a1 + 96) = v11;
    *(a1 + 112) = v12;
    v8 = [v7 BOOLValue];
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    if (v8)
    {
      return [v9 startBackgroundInertialOdometryUpdatesForClient:v10 withIdentifier:v4 usingReferenceFrame:1];
    }

    else
    {
      return [v9 stopBackgroundInertialOdometryUpdatesForClient:v10];
    }
  }

  return result;
}

id sub_100464934(uint64_t a1, CLConnectionMessage **a2)
{
  result = [CLConnectionMessage::getDictionary(*a2) objectForKey:CMPedestrianFenceEnableMotionSimulation];
  if (result)
  {
    v4 = *(a1 + 48);
    v5 = [result BOOLValue];

    return [v4 enableMotionSimulation:v5];
  }

  return result;
}

void *sub_100464A70(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_100464ACC((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_100464ACC(uint64_t a1, char *a2, void *a3)
{
  sub_10000EC00(&__p, a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_100464B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100464BB4(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_100464C10((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_100464C10(uint64_t a1, char *a2, void *a3)
{
  sub_10000EC00(&__p, a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_100464C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100464C88()
{
  sub_10001CAF4(buf);
  v0 = *buf;
  v3 = sub_10001A3E8(v1, v2);
  v5 = sub_100328630(v3, v4);
  v8 = 0;
  if (sub_10001CB4C(v0, "EnableFenceLogEntryRecorder", &v8, 0xFFFFFFFFLL))
  {
    v5 = v8;
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  if (qword_1025D4640 != -1)
  {
    sub_101886B38();
  }

  v6 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = v5 & 1;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Fence: EnableFenceLogEntryRecorder,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101886B60(v5 & 1);
  }

  return v5 & 1;
}

void sub_100464DCC(void *a1)
{
  *a1 = off_1024559D0;
  a1[2] = 0;
  sub_100464F24(&v1);
  operator new();
}

uint64_t sub_100464F24@<X0>(uint64_t a1@<X8>)
{
  sub_100465434(a1);
  if (*(a1 + 23) < 0)
  {
    *(a1 + 8) = 8;
    v2 = *a1;
  }

  else
  {
    *(a1 + 23) = 8;
    v2 = a1;
  }

  strcpy(v2, "cl_fence");
  sub_10001CAF4(buf);
  v12[0] = 0;
  v3 = sub_10001CB4C(*buf, "WriteLocationdLogsToCrashReporterFolder", v12, 0xFFFFFFFFLL);
  v4 = v3 & v12[0];
  if (v14)
  {
    sub_100008080(v14);
  }

  if (v4)
  {
    v5 = "/var/mobile/Library/Logs/CrashReporter/com.apple.locationd/fence";
  }

  else
  {
    v5 = "/var/mobile/Library/Logs/locationd/fence";
  }

  sub_100006044((a1 + 48), v5);
  sub_10001CAF4(buf);
  v12[0] = 0;
  v6 = sub_10001CB4C(*buf, "EnableLargeFenceLogs", v12, 0xFFFFFFFFLL);
  v7 = v6 & v12[0];
  if (v14)
  {
    sub_100008080(v14);
  }

  if (v7)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101886B38();
    }

    v8 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Fence: EnableLargeFenceLogs is set", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101886C78(buf);
      *v12 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 0, "Fence: EnableLargeFenceLogs is set", v12, 2);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 2, "static CLProtobufSerializer::Config CLFenceLogEntrySerializer::generateLoggerConfig()", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    *(a1 + 104) *= 16;
  }

  *(a1 + 116) = 0;
  *(a1 + 117) = sub_1010660EC();
  result = sub_100464C88();
  *(a1 + 118) = result;
  return result;
}

void sub_1004651F0(uint64_t a1)
{
  if (qword_1025D4640 != -1)
  {
    sub_101886CBC();
  }

  v2 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Fence: Truncating and re-opening CLFenceLogEntrySerializer log", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101886CD0();
  }

  sub_10106A17C(*(a1 + 16));
  sub_101066F20(*(a1 + 16));
  *(a1 + 8) = CFAbsoluteTimeGetCurrent();
}

void *sub_1004652A0(void *a1)
{
  *a1 = off_1024559D0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100465310(void *a1)
{
  *a1 = off_1024559D0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete();
}

uint64_t sub_1004653A0(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
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

uint64_t sub_100465434(uint64_t a1)
{
  v2 = sub_10000EC00(a1, "cl_proto");
  sub_10000EC00(v2 + 3, ".bin");
  sub_10000EC00((a1 + 48), "/var/mobile/Library/Logs/com.apple.locationd");
  sub_10000EC00((a1 + 72), "");
  *(a1 + 96) = 0x410FA40000000000;
  *(a1 + 104) = 314572800;
  *(a1 + 112) = 250;
  *(a1 + 116) = 65537;
  *(a1 + 120) = 257;
  return a1;
}

void sub_1004654BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

float sub_100465508(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v5 = (1.0 / a3) / 6.28318531;
  *a1 = v5;
  *(a1 + 4) = a2;
  v6 = (a4 / a2);
  result = a5 / a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = result;
  return result;
}

float sub_100465540(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 >= a3)
  {
    v3 = a3;
  }

  v5 = 0.0;
  v6 = v3 > v4;
  v7 = v3 - v4;
  if (v6)
  {
    v8 = (a2 + 4 * v4);
    v9 = 0.0;
    v10 = 1;
    v11 = v7;
    v12 = 0.0;
    do
    {
      v13 = *v8++;
      v14 = v13 - v12;
      v12 = v12 + ((v13 - v12) / v10);
      v9 = v9 + (v14 * (v13 - v12));
      ++v10;
      --v11;
    }

    while (v11);
    if (v7 >= 2)
    {
      v5 = (v9 / (v7 - 1));
    }
  }

  return pow(v5, 4.0);
}

float sub_1004655CC(uint64_t a1, uint64_t a2, float *a3, unint64_t a4)
{
  if (a4)
  {
    v4 = 0;
    v5 = 0;
    v6 = 3.4028e38;
    do
    {
      if (*(a2 + 4 * v4) < v6)
      {
        v6 = *(a2 + 4 * v4);
        v5 = v4;
      }

      ++v4;
    }

    while (a4 != v4);
  }

  else
  {
    v5 = 0;
    v6 = 3.4028e38;
  }

  if (v5 >= a4)
  {
    v8 = 0.0;
  }

  else
  {
    v7 = 0;
    do
    {
      if (*(a2 + 4 * v5) > v6)
      {
        v6 = *(a2 + 4 * v5);
        v7 = v5;
      }

      ++v5;
    }

    while (a4 != v5);
    v8 = v7;
  }

  *a3 = fmaxf(v6, 0.0);
  return *(a1 + 4) * v8;
}

id sub_100465BE8(uint64_t a1, void *a2)
{
  if (!*(a1 + 128))
  {
    *(a1 + 128) = [[CLOSTransaction alloc] initWithDescription:"CS Session"];
  }

  *(a1 + 200) = 0;
  [*(a1 + 8) setSessionStalenessInterval:5.0];
  if ((*(**(a1 + 56) + 16))(*(a1 + 56)))
  {

    return sub_10046AA14(a1, a2);
  }

  else
  {
    if ((*(**(a1 + 56) + 24))(*(a1 + 56)))
    {
      if (qword_1025D4630 != -1)
      {
        sub_101886EF8();
      }

      v5 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@GtsWarn, GizmoSync, handleStartSession, #CloneMe", v6, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018872DC();
      }
    }

    return 0;
  }
}

void sub_1004660C0(char *a1, uint64_t a2)
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v3 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v4 = a1[192];
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "@GtsSync, CsSync, handleServiceError, %{public}c", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101887778(a1);
  }
}

uint64_t sub_1004662F8(uint64_t a1, void *a2)
{
  if ((*(**(a1 + 56) + 16))(*(a1 + 56)))
  {

    return sub_10046B5E8(a1, a2);
  }

  else
  {
    v5 = (*(**(a1 + 56) + 24))(*(a1 + 56));
    if (v5)
    {

      return sub_10046C488(v5, v6);
    }

    else
    {
      return 256;
    }
  }
}

void sub_100466570(uint64_t a1, void *a2)
{
  if ((*(**(a1 + 56) + 24))(*(a1 + 56)))
  {
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v4 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "@GtsWarn, GizmoSync, handleApplyChanges, #CloneMe", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101887E40();
    }
  }

  else
  {
    v5 = [a2 properties];
    v6 = [v5 objectForKey:@"kSYDictionaryObjectSyncIDKey"];
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v17 = [v6 UTF8String];
      v18 = 2050;
      v19 = [a2 changeType];
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "@GtsMgr, change, syncId, %{public}s, type, %{public}ld", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101887C34(v6, a2);
    }

    if (v6)
    {
      v8 = [v5 objectForKey:@"kCLTileSyncObjectDataKey"];
      [objc_msgSend(v5 objectForKey:{@"kCLTileSyncObjectSyncTimestampKey", "doubleValue"}];
      v15 = v9;
      v10 = [v6 UTF8String];
      v11 = strlen(v10);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100061080();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      *(&__p.__r_.__value_.__s + 23) = v11;
      if (v11)
      {
        memmove(&__p, v10, v11);
      }

      __p.__r_.__value_.__s.__data_[v12] = 0;
      sub_100B4EC90(buf, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_10046D308(a1, buf, v8, &v15);
      if (v21 < 0)
      {
        operator delete(v20);
      }
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_101887948();
      }

      v13 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "@GtsCont, change with no data!!!", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101887D5C();
      }
    }

    *(a1 + 193) = 1;
  }
}

void sub_1004668A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100466B38(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 160);
  v6 = v4 == 73 || v4 == 82;
  if (a2)
  {
    v7 = *(a1 + 196) + 1;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 196) = v7;
  v8 = (*(**(a1 + 56) + 32))(*(a1 + 56));
  sub_100469378(a1 + 208, v2, v8);
  if ((*(a1 + 193) & 1) == 0)
  {
    sub_100236B38((a1 + 168));
    if ((*(a1 + 200) & 1) == 0)
    {
      *(a1 + 192) = 88;
    }
  }

  *(a1 + 193) = 0;
  if ((*(**(a1 + 56) + 16))(*(a1 + 56)))
  {
    v9 = v2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *(a1 + 196);
    if (v10 <= 3)
    {
      if (v10 == 1 || (*(a1 + 120) & 1) != 0)
      {
        v11 = "CsErrorShort";
        v12 = 30.0;
      }

      else
      {
        v11 = "CsErrorLong";
        v12 = 600.0;
      }

      sub_10046A36C(a1, v11, v12);
    }
  }

  *(a1 + 128) = 0;
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v13 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 196);
    v15 = *(a1 + 192);
    v16 = *(a1 + 200);
    v17 = *(a1 + 160);
    v18 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
    v19 = *(a1 + 120);
    *buf = 67241984;
    v45 = v2;
    v46 = 1026;
    v47 = v14;
    v48 = 1026;
    v49 = v15;
    v50 = 1026;
    v51 = v16;
    v52 = 1026;
    v53 = v6;
    v54 = 1026;
    v55 = v17;
    v56 = 2050;
    v57 = v18;
    v58 = 1026;
    v59 = v19;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "@GtsMgr, handleSessionDidEnd, error, %{public}d, %{public}d, change, %{public}c, pending, %{public}d, psActive, %{public}d, syncState, %{public}c, queue, %{public}ld, exchanged, %{public}d", buf, 0x36u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v21 = *(a1 + 196);
    v22 = *(a1 + 192);
    v23 = *(a1 + 200);
    v24 = *(a1 + 160);
    v25 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
    v26 = *(a1 + 120);
    v29[0] = 67241984;
    v29[1] = v2;
    v30 = 1026;
    v31 = v21;
    v32 = 1026;
    v33 = v22;
    v34 = 1026;
    v35 = v23;
    v36 = 1026;
    v37 = v6;
    v38 = 1026;
    v39 = v24;
    v40 = 2050;
    v41 = v25;
    v42 = 1026;
    v43 = v26;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 1, "@GtsMgr, handleSessionDidEnd, error, %{public}d, %{public}d, change, %{public}c, pending, %{public}d, psActive, %{public}d, syncState, %{public}c, queue, %{public}ld, exchanged, %{public}d", v29, 54);
    v28 = v27;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileSyncManager::handleSessionDidEnd(BOOL)", "%s\n", v27);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  *(a1 + 120) = 0;
  return v6;
}

void sub_100467074(uint64_t a1, void *a2)
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v4 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v5 = [objc_msgSend(a2 "UUIDString")];
    v6 = (*(**(a1 + 56) + 56))(*(a1 + 56));
    v7 = 136446466;
    v8 = v5;
    v9 = 2050;
    v10 = v6 / 86400.0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "@GtsMgr, willSwitch, new, %{public}s, days inactive, %{public}0.1f", &v7, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018883E8();
  }
}

void sub_1004672D8(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 160);
  [*(a1 + 8) setSessionStalenessInterval:5.0];
  v7 = 88;
  if (a2 && (a3 & 1) == 0)
  {
    sub_10046A920(a1);
    if (*(a1 + 136))
    {
      v8 = 76;
    }

    else
    {
      v8 = 83;
    }

    *(a1 + 160) = v8;
    v7 = 82;
  }

  if (a3 && (a2 & 1) == 0)
  {
    [*(a1 + 8) suspend];
    *(a1 + 160) = 76;
    v7 = 83;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v9 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 160);
    v11 = *(a1 + 136);
    v12 = (*(**(a1 + 56) + 56))(*(a1 + 56));
    *buf = 67241728;
    v33 = a2;
    v34 = 1026;
    v35 = a3;
    v36 = 1026;
    v37 = v7;
    v38 = 1026;
    v39 = v6;
    v40 = 1026;
    v41 = v10;
    v42 = 1026;
    v43 = v11;
    v44 = 2050;
    v45 = v12 / 86400.0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "@GtsMgr, handlePairSwitch, ids ,%{public}d, %{public}d, resume/suspend, %{public}c, state, %{public}c, %{public}c, restricted, %{public}d, inactive, %{public}0.1f", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v13 = qword_1025D4638;
    v14 = *(a1 + 160);
    v15 = *(a1 + 136);
    v16 = (*(**(a1 + 56) + 56))(*(a1 + 56));
    v19[0] = 67241728;
    v19[1] = a2;
    v20 = 1026;
    v21 = a3;
    v22 = 1026;
    v23 = v7;
    v24 = 1026;
    v25 = v6;
    v26 = 1026;
    v27 = v14;
    v28 = 1026;
    v29 = v15;
    v30 = 2050;
    v31 = v16 / 86400.0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v13, 1, "@GtsMgr, handlePairSwitch, ids ,%{public}d, %{public}d, resume/suspend, %{public}c, state, %{public}c, %{public}c, restricted, %{public}d, inactive, %{public}0.1f", v19, 48);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "void CLTileSyncManager::handlePairingSwitch(BOOL, BOOL)", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }
}

id sub_100467718(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "activeSyncSession")];
  v3 = [objc_msgSend(*(a1 + 32) "activeSyncSession")];
  if (v3 > 2)
  {
    v4 = "Unknown";
  }

  else
  {
    v4 = off_102455B70[v3];
  }

  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@GtsFlow, PS, handleSyncTrapTurn%s, 1", &v8, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101888724();
  }

  result = sub_1004678C4(*(*(a1 + 40) + 8), v2 == 0);
  if (result)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "@GtsFlow, PS, syncDidCompleteTx, 2, skipped", &v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101888814();
    }

    return [*(*(a1 + 40) + 24) syncDidComplete];
  }

  return result;
}

uint64_t sub_1004678C4(uint64_t a1, int a2)
{
  v3 = *(a1 + 160);
  if (a2)
  {
    v4 = 73;
  }

  else
  {
    v4 = 82;
  }

  *(a1 + 160) = v4;
  if ((*(**(a1 + 56) + 48))(*(a1 + 56)))
  {
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@GtsMgr, xSyncTrap, canDownload", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101888A10();
    }

    return 1;
  }

  v6 = (*(**(a1 + 56) + 56))(*(a1 + 56));
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v7 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    *v28 = v6 / 3600.0;
    *&v28[8] = 2050;
    *v29 = v6 / 86400.0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "@GtsSync, since last switched, hours, %{public}0.1f, days, %{public}0.1f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018888F0(v6);
  }

  if (v6 < *(a1 + 88) || *(a1 + 200) == 1)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v8 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349568;
      v9 = *(a1 + 88);
      v10 = *(a1 + 200);
      *v28 = v6 / 86400.0;
      *&v28[8] = 2050;
      *v29 = v9 / 86400.0;
      *&v29[8] = 1026;
      v30[0] = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "@GtsMgr, xSyncTrap, days inactive, %{public}0.1f, thresh, %{public}0.1f, pending, %{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_101887948();
      }

      v23 = 134349568;
      v15 = *(a1 + 88);
      v16 = *(a1 + 200);
      *v24 = v6 / 86400.0;
      *&v24[8] = 2050;
      *v25 = v15 / 86400.0;
      *&v25[8] = 1026;
      v26[0] = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@GtsMgr, xSyncTrap, days inactive, %{public}0.1f, thresh, %{public}0.1f, pending, %{public}d", &v23, 28);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileSyncManager::handleSyncTrapTurn(BOOL)", "%s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    return 1;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101887948();
  }

  v12 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 160);
    v14 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
    *buf = 67240960;
    *v28 = v3;
    *&v28[4] = 1026;
    *&v28[6] = v13;
    *v29 = 2050;
    *&v29[2] = v14;
    LOWORD(v30[0]) = 2050;
    *(v30 + 2) = v6;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "@GtsFlow, CS, setNeedsReset, 1, BeginPair, state, %{public}c, %{public}c, queuewas, %{public}ld, inactive, %{public}0.1f", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v19 = *(a1 + 160);
    v20 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
    v23 = 67240960;
    *v24 = v3;
    *&v24[4] = 1026;
    *&v24[6] = v19;
    *v25 = 2050;
    *&v25[2] = v20;
    LOWORD(v26[0]) = 2050;
    *(v26 + 2) = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@GtsFlow, CS, setNeedsReset, 1, BeginPair, state, %{public}c, %{public}c, queuewas, %{public}ld, inactive, %{public}0.1f", &v23, 34);
    v22 = v21;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileSyncManager::handleSyncTrapTurn(BOOL)", "%s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  *(a1 + 192) = 84;
  *(a1 + 200) = 1;
  sub_100236B38((a1 + 168));
  [*(a1 + 8) setHasChangesAvailable];
  return 0;
}

void sub_1004680B0(uint64_t a1)
{
  v2 = (a1 + 32);
  if (![*(a1 + 32) syncRestriction])
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 0;
    goto LABEL_5;
  }

  if ([*v2 syncRestriction] == 1)
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = 1;
LABEL_5:

    sub_100468218(v3, v4);
    return;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
  {
    v6 = [*v2 syncRestriction];
    v7 = 134349056;
    v8 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "@GtsSync, PsCoord, RestrictionUnknown, %{public}ld, #CloneMe", &v7, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101888DD4();
  }
}

void sub_100468218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 160);
  *(a1 + 136) = a2;
  if (a2)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v4 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "@GtsSync, PsCoord, RestrictionLimitPush", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101888FA0();
    }

    v5 = 76;
    goto LABEL_17;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v6 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "@GtsSync, PsCoord, RestrictionNone", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101888EC4();
  }

  if ((*(**(a1 + 56) + 40))(*(a1 + 56)))
  {
    v5 = 83;
LABEL_17:
    *(a1 + 160) = v5;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101887948();
  }

  v7 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 160);
    v9 = *(a1 + 136);
    *buf = 67240704;
    v20 = v3;
    v21 = 1026;
    v22 = v8;
    v23 = 1026;
    v24 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "@GtsMgr, restriction, state was, %{public}c, now, %{public}c, restricted, %{public}d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v10 = *(a1 + 160);
    v11 = *(a1 + 136);
    v14[0] = 67240704;
    v14[1] = v3;
    v15 = 1026;
    v16 = v10;
    v17 = 1026;
    v18 = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 1, "@GtsMgr, restriction, state was, %{public}c, now, %{public}c, restricted, %{public}d", v14, 20);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "void CLTileSyncManager::handleRestrictionChange(BOOL)", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }
}

void sub_1004686E8(char *a1, uint64_t a2)
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v3 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v4 = a1[160];
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "@GtsMgr, SyncTrapEnd, oldstate, %{public}c", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101889310(a1);
  }

  a1[160] = 83;
  sub_10046A36C(a1, "ClosePS", 1.0);
}

void sub_100468904(double *a1, double a2)
{
  a1[6] = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [NSMutableArray arrayWithCapacity:11];
  [(NSMutableArray *)v4 setObject:[NSNumber atIndexedSubscript:"numberWithInt:" numberWithInt:?], 0];
  [(NSMutableArray *)v4 setObject:[NSNumber atIndexedSubscript:"numberWithInt:" numberWithInt:?], 1];
  [(NSMutableArray *)v4 setObject:[NSNumber atIndexedSubscript:"numberWithInt:" numberWithInt:?], 2];
  [(NSMutableArray *)v4 setObject:[NSNumber atIndexedSubscript:"numberWithInt:" numberWithInt:?], 3];
  [(NSMutableArray *)v4 setObject:[NSNumber atIndexedSubscript:"numberWithInt:" numberWithInt:?], 4];
  [(NSMutableArray *)v4 setObject:[NSNumber atIndexedSubscript:"numberWithInt:" numberWithInt:?], 5];
  [(NSMutableArray *)v4 setObject:[NSNumber atIndexedSubscript:"numberWithInt:" numberWithInt:?], 6];
  [(NSMutableArray *)v4 setObject:[NSNumber atIndexedSubscript:"numberWithInt:" numberWithInt:?], 7];
  [(NSMutableArray *)v4 setObject:[NSNumber atIndexedSubscript:"numberWithInt:" numberWithInt:?], 8];
  [(NSMutableArray *)v4 setObject:[NSNumber atIndexedSubscript:"numberWithDouble:" numberWithDouble:?], 9];
  v5 = [(NSMutableArray *)v4 setObject:[NSNumber atIndexedSubscript:"numberWithDouble:" numberWithDouble:?], 10];
  v7 = sub_1000206B4(v5, v6);
  v8 = sub_1003046B4(v7);
  v10 = *sub_1000206B4(v8, v9);
  (*(v10 + 944))();

  objc_autoreleasePoolPop(v3);
}

void sub_100468AE8(uint64_t a1, double a2)
{
  v4 = objc_autoreleasePoolPush();
  v23 = 0;
  v6 = sub_1000206B4(v4, v5);
  if (sub_1004FC4F4(v6, @"TileSyncAwd", &v23))
  {
    v7 = v23;
    if ([v23 count] == 11)
    {
      *a1 = [objc_msgSend(v7 objectAtIndexedSubscript:{0), "intValue"}];
      *(a1 + 4) = [objc_msgSend(v7 objectAtIndexedSubscript:{1), "intValue"}];
      *(a1 + 8) = [objc_msgSend(v7 objectAtIndexedSubscript:{2), "intValue"}];
      *(a1 + 12) = [objc_msgSend(v7 objectAtIndexedSubscript:{3), "intValue"}];
      *(a1 + 24) = [objc_msgSend(v7 objectAtIndexedSubscript:{4), "intValue"}];
      *(a1 + 16) = [objc_msgSend(v7 objectAtIndexedSubscript:{5), "intValue"}];
      *(a1 + 20) = [objc_msgSend(v7 objectAtIndexedSubscript:{6), "intValue"}];
      *(a1 + 28) = [objc_msgSend(v7 objectAtIndexedSubscript:{7), "intValue"}];
      *(a1 + 32) = [objc_msgSend(v7 objectAtIndexedSubscript:{8), "intValue"}];
      [objc_msgSend(v7 objectAtIndexedSubscript:{9), "doubleValue"}];
      *(a1 + 40) = v8;
      [objc_msgSend(v7 objectAtIndexedSubscript:{10), "doubleValue"}];
      *(a1 + 48) = v9;
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_101887948();
      }

      v10 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        v11 = [v7 count];
        *buf = 134349056;
        v25 = *&v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "@GtsAwd, plist, error, load, %{public}lu", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018895B4();
      }
    }
  }

  v12 = a2 - *(a1 + 48);
  if (v12 > 7776000.0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v13 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 48);
      *buf = 134349568;
      v25 = v12;
      v26 = 2050;
      v27 = 7776000.0;
      v28 = 2050;
      v29 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "@GtsAwd, plist, clear, %{public}.1f, thresh, %{public}.0f, last, %{public}.1f", buf, 0x20u);
    }

    v15 = sub_10000A100(121, 2);
    if (v15)
    {
      sub_1018896A4((a1 + 48));
    }

    v17 = sub_1000206B4(v15, v16);
    sub_1004FA94C(v17);
  }

  objc_autoreleasePoolPop(v4);
  v18 = (a1 + 40);
  v19 = *(a1 + 40);
  if (v19 > a2 || v19 + 604800.0 < a2)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v21 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      v22 = *v18;
      *buf = 134349312;
      v25 = v22;
      v26 = 2048;
      v27 = a2;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "@GtsAwd, plist, error, time, %{public}.1f, now, %.1f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018897AC((a1 + 40), a2);
    }

    *v18 = a2;
  }

  sub_100468E90(a1, "loadcache", a2);
}

void sub_100468E90(int *a1, uint64_t a2, double a3)
{
  v6 = (a1 + 12);
  v7 = a3 - *(a1 + 6);
  if (v7 > 604800.0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v8 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v6;
      *buf = 134349568;
      v67 = *&v7;
      v68 = 2050;
      *v69 = 0x4122750000000000;
      *&v69[8] = 2050;
      v70 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "@GtsAwd, plist, clear, %{public}.1f, thresh, %{public}.0f, last, %{public}.1f", buf, 0x20u);
    }

    v10 = sub_10000A100(121, 2);
    if (v10)
    {
      sub_1018898BC(v6);
    }

    v12 = sub_1000206B4(v10, v11);
    sub_1004FA94C(v12);
  }

  v13 = *(a1 + 5);
  if (qword_1025D4630 != -1)
  {
    sub_101887948();
  }

  v14 = a3 - v13;
  v15 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *a1;
    v17 = a1[1];
    v18 = a1[2];
    v19 = a1[3];
    v20 = a1[4];
    v21 = vcvtd_n_f64_s32(a1[5], 0xAuLL);
    v22 = a1[6];
    v23 = a1[7];
    v24 = vcvtd_n_f64_s32(a1[8], 0xAuLL);
    v25 = *(a1 + 6);
    *buf = 136449538;
    v67 = a2;
    v68 = 1026;
    *v69 = v16;
    *&v69[4] = 1026;
    *&v69[6] = v17;
    LOWORD(v70) = 1026;
    *(&v70 + 2) = v18;
    HIWORD(v70) = 1026;
    v71 = v19;
    v72 = 1026;
    v73 = v22;
    v74 = 1026;
    v75 = v20;
    v76 = 2050;
    v77 = v21;
    v78 = 1026;
    v79 = v23;
    v80 = 2050;
    v81 = v24;
    v82 = 2050;
    v83 = v14 / 3600.0;
    v84 = 1026;
    v85 = v14 > 604800.0;
    v86 = 2050;
    v87 = v25;
    v88 = 2050;
    v89 = v7 / 3600.0;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "@GtsAwd, snap, %{public}s, sessions, %{public}d, empty, %{public}d, completed, %{public}d, errored, %{public}d, requested, %{public}d, synced, %{public}d, sizemb, %{public}.1f, week, %{public}d, %{public}.1f, sinceweekly, %{public}0.1f, reset, %{public}d, lastSave, %{public}0.1f, %{public}0.1f", buf, 0x6Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v26 = *a1;
    v27 = a1[1];
    v28 = a1[2];
    v29 = a1[3];
    v30 = a1[4];
    v31 = vcvtd_n_f64_s32(a1[5], 0xAuLL);
    v32 = a1[6];
    v33 = a1[7];
    v34 = vcvtd_n_f64_s32(a1[8], 0xAuLL);
    v38 = 136449538;
    v35 = *(a1 + 6);
    v39 = a2;
    v40 = 1026;
    v41 = v26;
    v42 = 1026;
    v43 = v27;
    v44 = 1026;
    v45 = v28;
    v46 = 1026;
    v47 = v29;
    v48 = 1026;
    v49 = v32;
    v50 = 1026;
    v51 = v30;
    v52 = 2050;
    v53 = v31;
    v54 = 1026;
    v55 = v33;
    v56 = 2050;
    v57 = v34;
    v58 = 2050;
    v59 = v14 / 3600.0;
    v60 = 1026;
    v61 = v14 > 604800.0;
    v62 = 2050;
    v63 = v35;
    v64 = 2050;
    v65 = v7 / 3600.0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@GtsAwd, snap, %{public}s, sessions, %{public}d, empty, %{public}d, completed, %{public}d, errored, %{public}d, requested, %{public}d, synced, %{public}d, sizemb, %{public}.1f, week, %{public}d, %{public}.1f, sinceweekly, %{public}0.1f, reset, %{public}d, lastSave, %{public}0.1f, %{public}0.1f", &v38, 110);
    v37 = v36;
    sub_100152C7C("Generic", 1, 0, 2, "void CLTileSyncAWD::weekLongLogging(const char *, CFAbsoluteTime)", "%s\n", v36);
    if (v37 != buf)
    {
      free(v37);
    }
  }

  if (v14 > 604800.0)
  {
    a1[7] = 0;
    a1[8] = 0;
    *(a1 + 5) = *(a1 + 5) + 604800.0;
  }
}

void sub_10046927C(double *a1, uint64_t a2, double a3)
{
  ++*a1;
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v6 = *a1;
    v7[0] = 67240192;
    v7[1] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "@GtsAwd, started, %{public}d", v7, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018899C4(a1);
  }

  sub_100468904(a1, a3);
}

void sub_100469378(uint64_t a1, int a2, double a3)
{
  if (a2)
  {
    ++*(a1 + 12);
  }

  ++*(a1 + 8);
  sub_100468904(a1, a3);

  sub_100468E90(a1, "endsync", a3);
}

void sub_1004693EC(double *a1, int a2, double a3)
{
  if (!a2)
  {
    ++*(a1 + 1);
  }

  *(a1 + 6) += a2;
  sub_100468904(a1, a3);
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 6);
    v7 = *a1;
    *buf = 67240704;
    v18 = a2;
    v19 = 1026;
    v20 = v6;
    v21 = 1026;
    v22 = v7;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "@GtsAwd, request, tiles, %{public}d, total, %{public}d, sessions, %{public}d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v8 = *(a1 + 6);
    v9 = *a1;
    v12[0] = 67240704;
    v12[1] = a2;
    v13 = 1026;
    v14 = v8;
    v15 = 1026;
    v16 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 1, "@GtsAwd, request, tiles, %{public}d, total, %{public}d, sessions, %{public}d", v12, 20);
    v11 = v10;
    sub_100152C7C("Generic", 1, 0, 2, "void CLTileSyncAWD::tilesRequested(CFAbsoluteTime, int)", "%s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void sub_1004695D8(uint64_t a1, void *a2, double a3)
{
  v6 = a2 + 512;
  if (a2 < -512)
  {
    v6 = a2 + 1535;
  }

  v7.i32[0] = 1;
  v7.i32[1] = v6 >> 10;
  *(a1 + 16) = vadd_s32(*(a1 + 16), v7);
  *(a1 + 28) = vadd_s32(*(a1 + 28), v7);
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v8 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v9 = vcvtd_n_f64_s32(*(a1 + 20), 0xAuLL);
    v10[0] = 67240448;
    v10[1] = a2;
    v11 = 2050;
    v12 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@GtsAwd, serialized, %{public}d, totalmb, %{public}.1f", v10, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101889AB0((a1 + 20), a2);
  }

  sub_100468904(a1, a3);
}

void sub_100469718(int *a1, _DWORD *a2, double a3)
{
  v5 = *a1;
  v6 = 1;
  if (*a1 >= 101)
  {
    v7 = *a1;
    do
    {
      v5 = v7 / 0xA;
      v6 *= 10;
      v8 = v7 > 0x3F1;
      v7 /= 0xAu;
    }

    while (v8);
  }

  a2[10] = v6 * v5;
  v9 = a1[1];
  v10 = 1;
  if (v9 >= 101)
  {
    v11 = a1[1];
    do
    {
      v9 = v11 / 0xA;
      v10 *= 10;
      v8 = v11 > 0x3F1;
      v11 /= 0xAu;
    }

    while (v8);
  }

  a2[11] = v10 * v9;
  v12 = a1[2];
  v13 = 1;
  if (v12 >= 101)
  {
    v14 = a1[2];
    do
    {
      v12 = v14 / 0xA;
      v13 *= 10;
      v8 = v14 > 0x3F1;
      v14 /= 0xAu;
    }

    while (v8);
  }

  a2[12] = v13 * v12;
  v15 = a1[3];
  v16 = 1;
  if (v15 >= 101)
  {
    v17 = a1[3];
    do
    {
      v15 = v17 / 0xA;
      v16 *= 10;
      v8 = v17 > 0x3F1;
      v17 /= 0xAu;
    }

    while (v8);
  }

  a2[13] = v16 * v15;
  v18 = a1[4];
  v19 = 1;
  if (v18 >= 101)
  {
    v20 = a1[4];
    do
    {
      v18 = v20 / 0xA;
      v19 *= 10;
      v8 = v20 > 0x3F1;
      v20 /= 0xAu;
    }

    while (v8);
  }

  v21 = a1[5];
  a2[14] = v19 * v18;
  a2[15] = v21;
  sub_100468E90(a1, "report", a3);
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;

  sub_100468904(a1, a3);
}

uint64_t sub_1004698BC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_102455A20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  v7 = *a4;
  *a4 = 0;
  *(a1 + 56) = v7;
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = xmmword_101C78B60;
  v8 = (a1 + 88);
  *(a1 + 104) = [objc_msgSend(a3 "silo")];
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = *a5;
  v9 = a5[1];
  *(a1 + 152) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 168) = 0;
  *(a1 + 160) = 76;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 88;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  if (((*(**(a1 + 56) + 16))(*(a1 + 56)) & 1) == 0 && ((*(**(a1 + 56) + 24))(*(a1 + 56)) & 1) == 0)
  {
    sub_101889BC0();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Tiles/CLTileSyncManager.mm", 571, "CLTileSyncManager");
    __break(1u);
  }

  sub_10001CAF4(buf);
  sub_1000B9370(*buf, "ManifestRate", (a1 + 96));
  if (v44)
  {
    sub_100008080(v44);
  }

  sub_10001CAF4(buf);
  sub_1000B9370(*buf, "QwsPeriod", v8);
  if (v44)
  {
    sub_100008080(v44);
  }

  v10 = (*(**(a1 + 56) + 32))(*(a1 + 56));
  *(a1 + 72) = v10;
  sub_100236B38((a1 + 168));
  v11 = sub_100469F28(a1);
  if ((*(**(a1 + 56) + 16))(*(a1 + 56)))
  {
    v12 = sub_10046A0D8(a1);
  }

  else
  {
    v12 = 1;
  }

  if ((v11 & v12) != 0)
  {
    v13 = 83;
  }

  else
  {
    v13 = 76;
  }

  *(a1 + 160) = v13;
  if (qword_1025D4630 != -1)
  {
    sub_101887948();
  }

  v14 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v15 = (*(**(a1 + 56) + 16))(*(a1 + 56));
    v16 = (*(**(a1 + 56) + 24))(*(a1 + 56));
    v17 = *(a1 + 96);
    v18 = *(a1 + 160);
    v19 = (*(**(a1 + 56) + 48))(*(a1 + 56));
    *buf = 67241728;
    *&buf[4] = v15;
    LOWORD(v44) = 1026;
    *(&v44 + 2) = v16;
    HIWORD(v44) = 2050;
    v45 = v17;
    v46 = 1026;
    v47 = v12;
    v48 = 1026;
    v49 = v11;
    v50 = 1026;
    v51 = v18;
    v52 = 1026;
    v53 = v19;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "@GtsInit, CG, %{public}d, %{public}d, rate, %{public}0.0f, state, %{public}d, %{public}d, %{public}c, canDownload, %{public}d", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101889D78(buf);
    v21 = qword_1025D4638;
    v22 = (*(**(a1 + 56) + 16))(*(a1 + 56));
    v23 = (*(**(a1 + 56) + 24))(*(a1 + 56));
    v24 = *(a1 + 96);
    v25 = *(a1 + 160);
    v26 = (*(**(a1 + 56) + 48))(*(a1 + 56));
    v30[0] = 67241728;
    v30[1] = v22;
    v31 = 1026;
    v32 = v23;
    v33 = 2050;
    v34 = v24;
    v35 = 1026;
    v36 = v12;
    v37 = 1026;
    v38 = v11;
    v39 = 1026;
    v40 = v25;
    v41 = 1026;
    v42 = v26;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v21, 0, "@GtsInit, CG, %{public}d, %{public}d, rate, %{public}0.0f, state, %{public}d, %{public}d, %{public}c, canDownload, %{public}d", v30, 48);
    v28 = v27;
    sub_100152C7C("Generic", 1, 0, 2, "CLTileSyncManager::CLTileSyncManager(CLITilesManager *, id<CLIntersiloUniverse>, std::unique_ptr<IExternal>, std::shared_ptr<CLWifiAccessPointLocationService>)", "%s\n", v27);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  sub_100468AE8(a1 + 208, v10);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10046A254;
  v29[3] = &unk_102449A78;
  v29[4] = a1;
  [*(a1 + 104) setHandler:v29];
  sub_10046A36C(a1, "Timer", *(a1 + 96));
  return a1;
}

void sub_100469E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_100236AE4(va);
  v24 = *(v22 + 152);
  if (v24)
  {
    sub_100008080(v24);
  }

  v25 = *(v22 + 56);
  *(v22 + 56) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100469F28(uint64_t a1)
{
  *(a1 + 16) = -[CLTileSyncDelegate initWithSyncManager:silo:]([CLTileSyncDelegate alloc], "initWithSyncManager:silo:", a1, [*(a1 + 64) silo]);
  v2 = objc_alloc(off_1025D59A0());
  v3 = [v2 initWithService:@"com.apple.private.alloy.location.wifitilesync" priority:-20 asMasterStore:(*(**(a1 + 56) + 16))(*(a1 + 56)) options:0];
  *(a1 + 8) = v3;
  [v3 setDelegate:*(a1 + 16) queue:{objc_msgSend(objc_msgSend(*(a1 + 64), "silo"), "queue")}];
  *(a1 + 24) = objc_alloc_init(CLTileSyncSyChange);
  [*(a1 + 8) setSessionStalenessInterval:1.0];
  if (*(a1 + 8))
  {
    result = (*(**(a1 + 56) + 40))(*(a1 + 56));
    if (result)
    {
      sub_10046A920(a1);
      return 1;
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "@GtsInit, CsObjects failed", v6, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101889DBC();
      return 0;
    }
  }

  return result;
}

BOOL sub_10046A0D8(uint64_t a1)
{
  v2 = [(objc_class *)off_1025D5990() syncCoordinatorWithServiceName:@"com.apple.pairedsync.locationd"];
  *(a1 + 32) = v2;
  v3 = [v2 setDelegate:*(a1 + 16)];
  *(a1 + 40) = [objc_alloc(off_1025D5998(v3)) initWithDelegate:*(a1 + 16)];
  v4 = (a1 + 40);
  *(a1 + 136) = [*(a1 + 32) syncRestriction] != 0;
  if (!*(a1 + 32) || !*v4)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32) == 0;
      v7 = *v4 == 0;
      v9[0] = 67240448;
      v9[1] = v6;
      v10 = 1026;
      v11 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "@GtsInit, PsObjects failed, C, %{public}d, O, %{public}d", v9, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101889E98();
    }
  }

  return (*(a1 + 136) & 1) == 0;
}

uint64_t sub_10046A254(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v3 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v4 = *(v2 + 112);
    v6 = 136446210;
    v7 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "@GtsTimer, fired, %{public}s", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101889FA8();
  }

  sub_10046A36C(v2, "Timer", *(v2 + 96));
  return (*(*v2 + 48))(v2, *(v2 + 112));
}

void sub_10046A36C(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(**(a1 + 56) + 16))(*(a1 + 56)))
  {
    if ((*(**(a1 + 56) + 48))(*(a1 + 56)))
    {
      if (qword_1025D4630 != -1)
      {
        sub_101886EF8();
      }

      v6 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "@GtsTimer, direct, skip", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188A09C();
      }
    }

    else
    {
      if (*(a1 + 160) != 83)
      {
        a3 = *(a1 + 96);
      }

      if (qword_1025D4630 != -1)
      {
        sub_101886EF8();
      }

      v7 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 160);
        *buf = 134349570;
        v19 = a3;
        v20 = 2082;
        v21 = a2;
        v22 = 1026;
        v23 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "@GtsTimer, nextfire, %{public}.0f, %{public}s, state, %{public}c", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4630 != -1)
        {
          sub_101887948();
        }

        v9 = *(a1 + 160);
        v12 = 134349570;
        v13 = a3;
        v14 = 2082;
        v15 = a2;
        v16 = 1026;
        v17 = v9;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 1, "@GtsTimer, nextfire, %{public}.0f, %{public}s, state, %{public}c", &v12, 28);
        v11 = v10;
        sub_100152C7C("Generic", 1, 0, 2, "void CLTileSyncManager::setManifestFire(const char *, CFTimeInterval)", "%s\n", v10);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      *(a1 + 112) = a2;
      [*(a1 + 104) setNextFireDelay:a3];
    }
  }
}

uint64_t sub_10046A62C(uint64_t a1, uint64_t a2)
{
  *a1 = off_102455A20;
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v3 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "@GtsMgr, dtor", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101889D78(buf);
    v10[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 1, "@GtsMgr, dtor", v10, 2);
    v9 = v8;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLTileSyncManager::~CLTileSyncManager()", "%s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  sub_10046A828(a1, v4);

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;

  *buf = a1 + 168;
  sub_100236AE4(buf);
  v5 = *(a1 + 152);
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void sub_10046A81C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_10046A828(id *a1, uint64_t a2)
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v3 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "@GtsMgr, release", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188A178();
  }

  a1[1] = 0;
  a1[2] = 0;

  a1[3] = 0;
}

void sub_10046A8E8(uint64_t a1, uint64_t a2)
{
  sub_10046A62C(a1, a2);

  operator delete();
}

void sub_10046A920(uint64_t a1)
{
  v3 = 0;
  [*(a1 + 8) resume:&v3];
  if (v3)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v1 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      v2 = [objc_msgSend(v3 "localizedDescription")];
      *buf = 136446210;
      v5 = v2;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_INFO, "@GtsSync, CsError, 1, resume, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188A254();
    }
  }
}

id sub_10046AA14(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    v4 = [a2 objectForKey:@"kSYDictionaryObjectSyncIDKey"];
    v5 = [a2 objectForKey:@"kCLTileSyncControlRequest"];
    if ([v4 isEqualToString:@"Control"] && objc_msgSend(v5, "isEqualToString:", @"Request"))
    {
      sub_10046A36C(a1, "GizmoReq", 30.0);
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_101886EF8();
      }

      v6 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        *v36 = [v4 UTF8String];
        *&v36[8] = 2082;
        *&v36[10] = [v5 UTF8String];
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "@GtsMgr, Mismatching keys, syncId, %{public}s, request, %{public}s", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188A348();
      }
    }

    if (*(a1 + 192) != 88)
    {
      if (qword_1025D4630 != -1)
      {
        sub_101887948();
      }

      v7 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 192);
        *buf = 67240192;
        *v36 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "@GtsMgr, Crossing sessions, %{public}c, #CloneMe", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188A444((a1 + 192));
      }
    }

LABEL_33:
    v10 = 0;
    goto LABEL_34;
  }

  v9 = *(a1 + 192);
  if (v9 == 84)
  {
    sub_10046AF78(a1, 1);
    v10 = [objc_msgSend(*(a1 + 24) "properties")];
    goto LABEL_34;
  }

  if (v9 != 77)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v12 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 192);
      *buf = 67240192;
      *v36 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "@GtsMgr, Unexpected Companion startSession flow, type, %{public}c, #CloneMe", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188A620((a1 + 192));
    }

    goto LABEL_33;
  }

  v10 = [objc_msgSend(*(a1 + 24) "properties")];
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v11 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    *v36 = [v10 count];
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "@GtsManif, CompTx, %{public}ld", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188A530();
  }

LABEL_34:
  if (qword_1025D4630 != -1)
  {
    sub_101887948();
  }

  v14 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 192);
    v16 = [a2 count];
    v17 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
    v18 = [v10 count];
    *buf = 67240960;
    *v36 = v15;
    *&v36[4] = 2050;
    *&v36[6] = v16;
    *&v36[14] = 2050;
    *&v36[16] = v17;
    v37 = 2050;
    v38 = v18;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "@GtsSync, CsService, startSession, %{public}c, mdin, %{public}ld, queue, %{public}ld, mdout, %{public}ld", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v22 = qword_1025D4638;
    v23 = *(a1 + 192);
    v24 = [a2 count];
    v25 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
    v28[0] = 67240960;
    v28[1] = v23;
    v29 = 2050;
    v30 = v24;
    v31 = 2050;
    v32 = v25;
    v33 = 2050;
    v34 = [v10 count];
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v22, 1, "@GtsSync, CsService, startSession, %{public}c, mdin, %{public}ld, queue, %{public}ld, mdout, %{public}ld", v28, 38);
    v27 = v26;
    sub_100152C7C("Generic", 1, 0, 2, "NSDictionary *CLTileSyncManager::handleStartSessionCompanion(NSDictionary *)", "%s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  v19 = (*(**(a1 + 56) + 32))(*(a1 + 56));
  sub_10046927C((a1 + 208), v20, v19);
  return v10;
}

id sub_10046AF78(uint64_t a1, int a2)
{
  v3 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = sub_10018D3FC(v3 + 184);
  v6 = sub_1006982C8(v3 + 184);
  if (v5 != v6)
  {
    v7 = v6;
    do
    {
      *buf = *(v5 + 32);
      *&buf[16] = *(v5 + 48);
      if (*(v5 + 79) < 0)
      {
        sub_100007244(&v49, *(v5 + 56), *(v5 + 64));
      }

      else
      {
        v49 = *(v5 + 56);
        v50 = *(v5 + 72);
      }

      v8 = sub_100085520(v3 + 184, buf);
      if (!a2 || ((*(**(a1 + 48) + 32))(*(a1 + 48), v8) & 1) != 0)
      {
        v9 = [NSNumber numberWithDouble:*(v8 + 176)];
        sub_100B4EC94(__p);
        v10 = v44 >= 0 ? __p : *__p;
        [v4 setObject:v9 forKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v10)}];
        if (SHIBYTE(v44) < 0)
        {
          operator delete(*__p);
        }
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49);
      }

      v11 = *(v5 + 8);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v5 + 16);
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
    }

    while (v12 != v7);
  }

  if (qword_1025D4630 != -1)
  {
    sub_101887948();
  }

  v14 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 112);
    v16 = sub_100008880(v3 + 184);
    v17 = [v4 count];
    *buf = 136446978;
    *&buf[4] = v15;
    *&buf[12] = 2050;
    *&buf[14] = v16;
    *&buf[22] = 1024;
    LODWORD(v49) = v17;
    WORD2(v49) = 1026;
    *(&v49 + 6) = a2;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "@GtsManif, PrepTx, %{public}s, tiles, %{public}lu, %d, currentOnly, %{public}d", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v33 = qword_1025D4638;
    v34 = *(a1 + 112);
    v35 = sub_100008880(v3 + 184);
    v36 = [v4 count];
    *__p = 136446978;
    *&__p[4] = v34;
    v42 = 2050;
    v43 = v35;
    v44 = 1024;
    v45 = v36;
    v46 = 1026;
    v47 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v33, 0, "@GtsManif, PrepTx, %{public}s, tiles, %{public}lu, %d, currentOnly, %{public}d", __p, 34);
    v38 = v37;
    sub_100152C7C("Generic", 1, 0, 2, "void CLTileSyncManager::createManifestInSyChange(BOOL)", "%s\n", v37);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
  if (v18)
  {
    v19 = MEMORY[0];
    do
    {
      v20 = 0;
      do
      {
        if (MEMORY[0] != v19)
        {
          objc_enumerationMutation(v4);
        }

        v21 = *(8 * v20);
        if (qword_1025D4630 != -1)
        {
          sub_101887948();
        }

        v22 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
        {
          v23 = [v21 UTF8String];
          [objc_msgSend(v4 objectForKeyedSubscript:{v21), "doubleValue"}];
          *buf = 136380931;
          *&buf[4] = v23;
          *&buf[12] = 2050;
          *&buf[14] = v24;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "@GtsManif, entry, %{private}s, gentime, %{public}.1f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4630 != -1)
          {
            sub_101887948();
          }

          v25 = qword_1025D4638;
          v26 = [v21 UTF8String];
          [objc_msgSend(v4 objectForKeyedSubscript:{v21), "doubleValue"}];
          *__p = 136380931;
          *&__p[4] = v26;
          v42 = 2050;
          v43 = v27;
          LODWORD(v39) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v25, 1, "@GtsManif, entry, %{private}s, gentime, %{public}.1f", __p, v39);
          v29 = v28;
          sub_100152C7C("Generic", 1, 0, 2, "void CLTileSyncManager::createManifestInSyChange(BOOL)", "%s\n", v28);
          if (v29 != buf)
          {
            free(v29);
          }
        }

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
      v18 = v30;
    }

    while (v30);
  }

  v31 = [NSDictionary dictionaryWithObjectsAndKeys:@"Control", @"kSYDictionaryObjectSyncIDKey", v4, @"kCLTileSyncControlManifestDict", 0];
  [*(a1 + 24) setObjectIdentifier:@"Control"];
  [*(a1 + 24) setChangeType:1];
  result = [*(a1 + 24) setProperties:v31];
  *(a1 + 192) = 77;
  *(a1 + 200) = 1;
  return result;
}

void sub_10046B5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10046B5E8(uint64_t a1, void *a2)
{
  v73 = (a1 + 192);
  if (*(a1 + 192) != 77)
  {
    goto LABEL_53;
  }

  *(a1 + 192) = 65;
  *(a1 + 120) = 1;
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v3 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a2 count];
    v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
    *buf = 134349312;
    *&buf[4] = v4;
    *&buf[12] = 2050;
    *&buf[14] = v5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "@GtsManif, CompRx, %{public}ld, queue, %{public}lu, metadata", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188A70C(a2, a1);
  }

  v6 = (*(**(a1 + 56) + 32))(*(a1 + 56));
  sub_1004693EC((a1 + 208), [a2 count], v6);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
  if (v7)
  {
    v8 = MEMORY[0];
    do
    {
      v9 = 0;
      do
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(8 * v9);
        v11 = (*(**(a1 + 48) + 16))(*(a1 + 48));
        v12 = [v10 UTF8String];
        v13 = strlen(v12);
        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_100061080();
        }

        v14 = v13;
        if (v13 >= 0x17)
        {
          operator new();
        }

        buf[23] = v13;
        if (v13)
        {
          memmove(buf, v12, v13);
        }

        buf[v14] = 0;
        sub_100B4EC90(&v84, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (sub_1000852BC(&v84))
        {
          v15 = sub_1000853E0(v11 + 184, &v84);
          if (qword_1025D4630 != -1)
          {
            sub_101887948();
          }

          v16 = qword_1025D4638;
          if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
          {
            v17 = [v10 UTF8String];
            *buf = 136380931;
            *&buf[4] = v17;
            *&buf[12] = 1026;
            *&buf[14] = v15;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "@GtsManif, CompReply, %{private}s, have, %{public}d", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101889D78(buf);
            v28 = qword_1025D4638;
            v29 = [v10 UTF8String];
            v75 = 136380931;
            *v76 = v29;
            *&v76[8] = 1026;
            *&v76[10] = v15;
            LODWORD(v71) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 1, "@GtsManif, CompReply, %{private}s, have, %{public}d", &v75, v71);
            v31 = v30;
            sub_100152C7C("Generic", 1, 0, 2, "std::tuple<BOOL, BOOL, BOOL> CLTileSyncManager::handleEnqueueChangesCompanion(NSDictionary *)", "%s\n", v30);
            if (v31 != buf)
            {
              free(v31);
            }
          }

          if (v15)
          {
            v18 = sub_100085520(v11 + 184, &v84);
            sub_10046C570(a1, v18);
          }
        }

        else
        {
          if (qword_1025D4630 != -1)
          {
            sub_101887948();
          }

          v19 = qword_1025D4638;
          if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
          {
            v20 = [v10 UTF8String];
            *buf = 136380675;
            *&buf[4] = v20;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "@GtsManif, BadId, enqueueC, %{private}s, #CloneMe", buf, 0xCu);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101889D78(buf);
            v24 = qword_1025D4638;
            v25 = [v10 UTF8String];
            v75 = 136380675;
            *v76 = v25;
            LODWORD(v71) = 12;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v24, 16, "@GtsManif, BadId, enqueueC, %{private}s, #CloneMe", &v75, v71);
            v27 = v26;
            sub_100152C7C("Generic", 1, 0, 0, "std::tuple<BOOL, BOOL, BOOL> CLTileSyncManager::handleEnqueueChangesCompanion(NSDictionary *)", "%s\n", v26);
            if (v27 != buf)
            {
              free(v27);
            }
          }

          if (qword_1025D48A0 != -1)
          {
            sub_10188A838();
          }

          v21 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315650;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Tiles/CLTileSyncManager.mm";
            *&buf[12] = 1024;
            *&buf[14] = 966;
            *&buf[18] = 2080;
            *&buf[20] = "false";
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "Assert Failed, %s, %d, %s", buf, 0x1Cu);
          }

          v22 = sub_10000A100(121, 0);
          if (v22)
          {
            sub_10188A860(buf);
            v75 = 136315650;
            *v76 = "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Tiles/CLTileSyncManager.mm";
            *&v76[8] = 1024;
            *&v76[10] = 966;
            v77 = 2080;
            v78 = "false";
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assert Failed, %s, %d, %s", &v75, 28, v72);
            v33 = v32;
            v22 = sub_100152C7C("Generic", 1, 0, 0, "std::tuple<BOOL, BOOL, BOOL> CLTileSyncManager::handleEnqueueChangesCompanion(NSDictionary *)", "%s\n", v32);
            if (v33 != buf)
            {
              free(v33);
            }
          }

          sub_1004E5DF8(v22, v23);
        }

        if (SHIBYTE(v87) < 0)
        {
          operator delete(__p);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
      v7 = v34;
    }

    while (v34);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4) >= 0x29)
  {
    [*(a1 + 8) setSessionStalenessInterval:300.0];
    v35 = 1;
  }

  else
  {
LABEL_53:
    v35 = 0;
  }

  if (![a2 count])
  {
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v41 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEFAULT, "@GtsFlow, CS, metadataX, 3", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188AC90();
    }

    goto LABEL_71;
  }

  v36 = *v73;
  if (v36 > 0x51)
  {
    if (v36 == 84)
    {
      if (qword_1025D4630 != -1)
      {
        sub_101887948();
      }

      v50 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEFAULT, "@GtsFlow, CS, enqueueChanges, 3, SyncTrap", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188A8A4();
      }

      *v73 = 77;
      goto LABEL_96;
    }

    if (v36 != 82)
    {
      goto LABEL_58;
    }

LABEL_74:
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    v42 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *v73;
      *buf = 67240192;
      *&buf[4] = v43;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "@GtsFlow, CS, enqueueChanges, 3, Manifest, %{public}c", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188AAA8(v73);
    }

LABEL_96:
    v39 = 1;
    v40 = 1;
    goto LABEL_97;
  }

  if (v36 != 65)
  {
    if (v36 != 77)
    {
LABEL_58:
      if (qword_1025D4630 != -1)
      {
        sub_101887948();
      }

      v37 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *v73;
        *buf = 67240192;
        *&buf[4] = v38;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "@GtsFlow, CS, enqueueChanges, 3, Unexpected change type, %{public}c", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188AB9C(v73);
      }

      v39 = 0;
      v40 = 0;
      goto LABEL_97;
    }

    goto LABEL_74;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101887948();
  }

  v44 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v45 = *(a1 + 192);
    v46 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
    *buf = 67240448;
    *&buf[4] = v45;
    *&buf[8] = 2050;
    *&buf[10] = v46;
    _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEFAULT, "@GtsFlow, CS, enqueueChanges, 3, TileData, %{public}c, queue, %{public}ld", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188A988();
  }

  v47 = *(a1 + 168);
  if (*(a1 + 176) == v47)
  {
LABEL_71:
    v40 = 0;
    v39 = 1;
LABEL_97:
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    goto LABEL_98;
  }

  v48 = *v47;
  v85 = *(v47 + 2);
  v84 = v48;
  if (*(v47 + 47) < 0)
  {
    sub_100007244(&__p, *(v47 + 3), *(v47 + 4));
  }

  else
  {
    v49 = *(v47 + 24);
    v87 = *(v47 + 5);
    __p = v49;
  }

  sub_10046CB08(a1, &v84);
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  sub_10046EED8(buf, (*(a1 + 168) + 48), *(a1 + 176), *(a1 + 168));
  v55 = v54;
  for (i = *(a1 + 176); i != v55; i -= 48)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  *(a1 + 176) = v55;
  if (qword_1025D4630 != -1)
  {
    sub_101887948();
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  v57 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v58 = *v73;
    v59 = sub_100085338(&v84);
    v60 = sub_100085314(&v84);
    v61 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
    *buf = 67240961;
    *&buf[4] = v58;
    *&buf[8] = 2053;
    *&buf[10] = v59;
    *&buf[18] = 2053;
    *&buf[20] = v60;
    v82 = 2050;
    v83 = v61;
    _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_INFO, "@GtsSync, CsSession, %{public}c, llsw, %{sensitive}.2lf, %{sensitive}.2lf, queue, %{public}ld", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101889D78(buf);
    v64 = qword_1025D4638;
    v65 = *v73;
    v66 = sub_100085338(&v84);
    v67 = sub_100085314(&v84);
    v68 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
    v75 = 67240961;
    *v76 = v65;
    *&v76[4] = 2053;
    *&v76[6] = v66;
    v77 = 2053;
    v78 = *&v67;
    v79 = 2050;
    v80 = v68;
    LODWORD(v71) = 38;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v64, 1, "@GtsSync, CsSession, %{public}c, llsw, %{sensitive}.2lf, %{sensitive}.2lf, queue, %{public}ld", &v75, v71);
    v70 = v69;
    sub_100152C7C("Generic", 1, 0, 2, "std::tuple<BOOL, BOOL, BOOL> CLTileSyncManager::handleEnqueueChangesCompanion(NSDictionary *)", "%s\n", v69);
    if (v70 != buf)
    {
      free(v70);
    }

    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  v39 = *(a1 + 176) == *(a1 + 168);
  if (SHIBYTE(v87) < 0)
  {
    operator delete(__p);
  }

  v40 = 1;
LABEL_98:
  if (p_info[198] != -1)
  {
    sub_101887948();
  }

  v52 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *buf = 67240704;
    *&buf[4] = v40;
    *&buf[8] = 1026;
    *&buf[10] = v39;
    *&buf[14] = 1026;
    *&buf[16] = v35;
    _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_INFO, "@GtsSync, enqueue return, change, %{public}d, complete, %{public}d, large, %{public}d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_101887948();
    }

    LODWORD(v84) = 67240704;
    DWORD1(v84) = v40;
    WORD4(v84) = 1026;
    *(&v84 + 10) = v39;
    HIWORD(v84) = 1026;
    LODWORD(v85) = v35;
    LODWORD(v71) = 20;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 1, "@GtsSync, enqueue return, change, %{public}d, complete, %{public}d, large, %{public}d", &v84, v71);
    v63 = v62;
    sub_100152C7C("Generic", 1, 0, 2, "std::tuple<BOOL, BOOL, BOOL> CLTileSyncManager::handleEnqueueChangesCompanion(NSDictionary *)", "%s\n", v62);
    if (v63 != buf)
    {
      free(v63);
    }
  }

  return v40 | (v39 << 8) | (v35 << 16);
}

void sub_10046C41C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x75F]) < 0)
  {
    operator delete(STACK[0x748]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10046C488(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v2 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67240704;
    v4[1] = 0;
    v5 = 1026;
    v6 = 1;
    v7 = 1026;
    v8 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "@GtsSync, enqueue return, change, %{public}d, complete, %{public}d, large, %{public}d", v4, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188AD74();
  }

  return 256;
}

void sub_10046C570(uint64_t a1, uint64_t a2)
{
  if ((*(**(a1 + 56) + 16))(*(a1 + 56)))
  {
    v4 = (a2 + 48);
    if (!*(a2 + 48))
    {
      v5 = (a1 + 160);
      if ((*(a1 + 160) & 0xFE) == 0x4C)
      {
        if (qword_1025D4630 != -1)
        {
          sub_101886EF8();
        }

        v6 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
        {
          v7 = *v5;
          *buf = 67240192;
          LODWORD(v44) = v7;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "@GtsPair, skipevent, add, blocking sync state, %{public}c", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10188AE80(v5);
        }
      }

      else
      {
        v8 = *(a1 + 168);
        v9 = *(a1 + 176);
        if (v8 != v9)
        {
          while (!sub_100B4F5A8(v8, a2 + 48))
          {
            v8 += 48;
            if (v8 == v9)
            {
              v8 = v9;
              break;
            }
          }

          v9 = *(a1 + 176);
        }

        if (v8 != v9)
        {
          sub_10046EED8(buf, (v8 + 48), v9, v8);
          v11 = v10;
          for (i = *(a1 + 176); i != v11; i -= 48)
          {
            if (*(i - 1) < 0)
            {
              operator delete(*(i - 24));
            }
          }

          *(a1 + 176) = v11;
          if (qword_1025D4630 != -1)
          {
            sub_101887948();
          }

          v13 = qword_1025D4638;
          if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
          {
            v14 = sub_100085338(a2 + 48);
            v15 = sub_100085314(a2 + 48);
            v16 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
            *buf = 134546177;
            v44 = v14;
            v45 = 2053;
            v46 = v15;
            v47 = 2050;
            v48 = v16;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "@GtsCont, replaceadd, llsw, %{sensitive}.2lf, %{sensitive}.2lf, size, %{public}ld", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4630 != -1)
            {
              sub_101887948();
            }

            v28 = qword_1025D4638;
            v29 = sub_100085338(a2 + 48);
            v30 = sub_100085314(a2 + 48);
            v31 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
            v35 = 134546177;
            v36 = v29;
            v37 = 2053;
            v38 = v30;
            v39 = 2050;
            v40 = v31;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 1, "@GtsCont, replaceadd, llsw, %{sensitive}.2lf, %{sensitive}.2lf, size, %{public}ld", &v35, 32);
            v33 = v32;
            sub_100152C7C("Generic", 1, 0, 2, "void CLTileSyncManager::addTileSync(CLTileFile *)", "%s\n", v32);
            if (v33 != buf)
            {
              free(v33);
            }
          }
        }

        v17 = (*(**(a1 + 48) + 32))(*(a1 + 48), a2);
        if (v17)
        {
          sub_10046E4E8((a1 + 168), *(a1 + 168), v4);
        }

        else
        {
          sub_100241F3C((a1 + 168), v4);
        }

        if (qword_1025D4630 != -1)
        {
          sub_101887948();
        }

        v18 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
        {
          v19 = sub_100085338(v4);
          v20 = sub_100085314(v4);
          v21 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
          *buf = 134546433;
          v44 = v19;
          v45 = 2053;
          v46 = v20;
          v47 = 2050;
          v48 = v21;
          v49 = 1024;
          v50 = v17;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "@GtsCont, add, llsw, %{sensitive}.2lf, %{sensitive}.2lf, size, %{public}ld, current, {public}%d", buf, 0x26u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4630 != -1)
          {
            sub_101887948();
          }

          v22 = qword_1025D4638;
          v23 = sub_100085338(v4);
          v24 = sub_100085314(v4);
          v25 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
          v35 = 134546433;
          v36 = v23;
          v37 = 2053;
          v38 = v24;
          v39 = 2050;
          v40 = v25;
          v41 = 1024;
          v42 = v17;
          LODWORD(v34) = 38;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v22, 1, "@GtsCont, add, llsw, %{sensitive}.2lf, %{sensitive}.2lf, size, %{public}ld, current, {public}%d", &v35, v34);
          v27 = v26;
          sub_100152C7C("Generic", 1, 0, 2, "void CLTileSyncManager::addTileSync(CLTileFile *)", "%s\n", v26);
          if (v27 != buf)
          {
            free(v27);
          }
        }
      }
    }
  }
}

BOOL sub_10046CB08(uint64_t a1, uint64_t a2)
{
  sub_10000FF38(v50, "sendEventToGizmo", 0);
  sub_1012625C4(*(a1 + 144), v48);
  if (v49)
  {
    *v63 = 0;
    *&v63[8] = v63;
    *&v63[16] = 0x3812000000;
    v64 = sub_100047404;
    v65 = sub_1000483CC;
    v66 = &unk_10238AE8B;
    sub_101262D80(*(a1 + 144), a2, v67);
    v4 = *(*&v63[8] + 48);
    v5 = v4 != 0;
    if (v4)
    {
      v6 = (*(**(a1 + 56) + 32))(*(a1 + 56));
      v7 = (*(**(a1 + 56) + 32))(*(a1 + 56));
      sub_1004695D8(a1 + 208, (*(*(*&v63[8] + 48) + 8) - **(*&v63[8] + 48)), v7);
      v8 = [NSData alloc];
      v9 = *(*&v63[8] + 48);
      v10 = *v9;
      v11 = v9[1];
      v12 = v11 - *v9;
      if (v11 == *v9)
      {
        sub_10046F324();
      }

      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = nullsub_116;
      v47[3] = &unk_102455A88;
      v47[4] = v63;
      v13 = [v8 initWithBytesNoCopy:v10 length:v12 deallocator:v47];
      sub_100B4EC94(__p);
      if (v71 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = *__p;
      }

      v15 = [NSDictionary dictionaryWithObjectsAndKeys:[NSString stringWithUTF8String:v14], @"kSYDictionaryObjectSyncIDKey", v13, @"kCLTileSyncObjectDataKey", [NSNumber numberWithDouble:v6], @"kCLTileSyncObjectSyncTimestampKey", 0];
      if (SHIBYTE(v71) < 0)
      {
        operator delete(*__p);
      }

      v16 = *(a1 + 24);
      sub_100B4EC94(__p);
      if (v71 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = *__p;
      }

      [v16 setObjectIdentifier:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v17)}];
      if (SHIBYTE(v71) < 0)
      {
        operator delete(*__p);
      }

      [*(a1 + 24) setChangeType:1];
      [*(a1 + 24) setProperties:v15];
      if (qword_1025D4630 != -1)
      {
        sub_101887948();
      }

      v18 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        v19 = sub_100085338(a2);
        v20 = sub_100085314(a2);
        v21 = *(a2 + 4);
        v22 = *(a2 + 8);
        v23 = *(*(*&v63[8] + 48) + 8) - **(*&v63[8] + 48);
        v24 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
        *__p = 134546945;
        *&__p[4] = v19;
        v69 = 2053;
        v70 = v20;
        v71 = 1025;
        v72 = v21;
        v73 = 1025;
        v74 = v22;
        v75 = 2050;
        v76 = v23;
        v77 = 2050;
        v78 = v24;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "@GtsComp, add, llsw, %{sensitive}.2lf, %{sensitive}.2lf, tile_x, %{private}d, tile_y, %{private}d, tilesize, %{public}ld, queue, %{public}lu", __p, 0x36u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_31;
      }

      sub_101889D78(__p);
      v25 = qword_1025D4638;
      v26 = sub_100085338(a2);
      v27 = sub_100085314(a2);
      v28 = *(a2 + 4);
      v29 = *(a2 + 8);
      v30 = *(*(*&v63[8] + 48) + 8) - **(*&v63[8] + 48);
      v31 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
      v51 = 134546945;
      v52 = v26;
      v53 = 2053;
      v54 = v27;
      v55 = 1025;
      v56 = v28;
      v57 = 1025;
      v58 = v29;
      v59 = 2050;
      v60 = v30;
      v61 = 2050;
      v62 = v31;
      LODWORD(v46) = 54;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v25, 1, "@GtsComp, add, llsw, %{sensitive}.2lf, %{sensitive}.2lf, tile_x, %{private}d, tile_y, %{private}d, tilesize, %{public}ld, queue, %{public}lu", &v51, v46);
      v33 = v32;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileSyncManager::sendEventToGizmo(TileId &)", "%s\n", v32);
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_101887948();
      }

      v37 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_ERROR, "Unable to send #tile, it is missing", __p, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_31;
      }

      sub_101889D78(__p);
      LOWORD(v51) = 0;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4638, 16, "Unable to send #tile, it is missing", &v51, 2);
      v33 = v45;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLTileSyncManager::sendEventToGizmo(TileId &)", "%s\n", v45);
    }

    if (v33 != __p)
    {
      free(v33);
    }

LABEL_31:
    _Block_object_dispose(v63, 8);
    v38 = v67[0];
    v67[0] = 0;
    if (v38)
    {
      sub_10046F36C(v67, v38);
    }

    goto LABEL_33;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101887948();
  }

  v34 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v35 = sub_100085338(a2);
    v36 = sub_100085314(a2);
    *__p = 134545921;
    *&__p[4] = v35;
    v69 = 2053;
    v70 = v36;
    _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "@GtsCont, addlost, llsw, %{sensitive}.2lf, %{sensitive}.2lf", __p, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101889D78(__p);
    v40 = qword_1025D4638;
    v41 = sub_100085338(a2);
    v42 = sub_100085314(a2);
    *v63 = 134545921;
    *&v63[4] = v41;
    *&v63[12] = 2053;
    *&v63[14] = v42;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v40, 1, "@GtsCont, addlost, llsw, %{sensitive}.2lf, %{sensitive}.2lf", v63, 22);
    v44 = v43;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileSyncManager::sendEventToGizmo(TileId &)", "%s\n", v43);
    if (v44 != __p)
    {
      free(v44);
    }
  }

  v5 = 0;
LABEL_33:
  sub_10001A420(v50);
  return v5;
}

void sub_10046D274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  _Block_object_dispose(&a49, 8);
  v64 = a55;
  a55 = 0;
  if (v64)
  {
    sub_10046F36C(v62 + 48, v64);
  }

  sub_10001A420(&a39);
  _Unwind_Resume(a1);
}

void sub_10046D308(uint64_t a1, int *a2, void *a3, double *a4)
{
  if (*a2)
  {
    sub_10188AF74();
  }

  (*(**(a1 + 48) + 16))(*(a1 + 48));
  if ((*(**(a1 + 56) + 64))(*(a1 + 56)))
  {
    if (*a4 >= *(a1 + 72))
    {
      if (*a2)
      {
        if (qword_1025D4630 != -1)
        {
          sub_101886EF8();
        }

        v12 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
        {
          v13 = *a2;
          LODWORD(buf.__r_.__value_.__l.__data_) = 67240192;
          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "@GtsError, Adding non-Wifi tile, %{public}d, #CloneMe", &buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10188B220(a2);
        }
      }

      else
      {
        sub_1010CB1A0(a2, v31);
        v14 = sub_100B4FFA0(a2);
        v15 = v14;
        if (*(v14 + 23) >= 0)
        {
          v16 = *(v14 + 23);
        }

        else
        {
          v16 = v14[1];
        }

        p_buf = &buf;
        sub_100070148(&buf, v16 + 1);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        if (v16)
        {
          if (v15[23] >= 0)
          {
            v18 = v15;
          }

          else
          {
            v18 = *v15;
          }

          memmove(p_buf, v18, v16);
        }

        *(&p_buf->__r_.__value_.__l.__data_ + v16) = 47;
        if ((v32 & 0x80u) == 0)
        {
          v19 = v31;
        }

        else
        {
          v19 = v31[0];
        }

        if ((v32 & 0x80u) == 0)
        {
          v20 = v32;
        }

        else
        {
          v20 = v31[1];
        }

        v21 = std::string::append(&buf, v19, v20);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v30 = v21->__r_.__value_.__r.__words[2];
        *__p = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (v30 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        if ([a3 writeToFile:+[NSString stringWithUTF8String:](NSString atomically:{"stringWithUTF8String:", v23), 1}])
        {
          sub_1010C954C(*(a1 + 144), *a4);
        }

        if (qword_1025D4630 != -1)
        {
          sub_101887948();
        }

        v24 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
        {
          v25 = __p;
          if (v30 < 0)
          {
            v25 = __p[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
          *(buf.__r_.__value_.__r.__words + 4) = v25;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "Failed writing tile to file, %{private}s", &buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101889D78(&buf);
          v26 = __p;
          if (v30 < 0)
          {
            v26 = __p[0];
          }

          v33 = 136380675;
          v34 = v26;
          _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4638, 16, "Failed writing tile to file, %{private}s", &v33, 12);
          v28 = v27;
          sub_100152C7C("Generic", 1, 0, 0, "void CLTileSyncManager::addTile(const TileId &, NSData *, const CFAbsoluteTime &)", "%s\n", v27);
          if (v28 != &buf)
          {
            free(v28);
          }
        }

        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p[0]);
        }

        if (v32 < 0)
        {
          operator delete(v31[0]);
        }
      }
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_101886EF8();
      }

      v8 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        v9 = *a4;
        v10 = *(a1 + 72);
        LODWORD(buf.__r_.__value_.__l.__data_) = 134349312;
        *(buf.__r_.__value_.__r.__words + 4) = v9;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@GtsSync, drop older add, timestamp, %{public}0.1f, toggle/reset, %{public}0.1f", &buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188B380();
      }
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v11 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "@GtsLock, drop add on LS off", &buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188B13C();
    }
  }
}

void sub_10046DC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10046DC7C(uint64_t a1)
{
  if ((*(**(a1 + 56) + 16))(*(a1 + 56)))
  {
    sub_10046A36C(a1, "Indexed", 1.0);
  }

  result = (*(**(a1 + 56) + 24))(*(a1 + 56));
  if (result)
  {

    return sub_10046DD28(a1, v3);
  }

  return result;
}

uint64_t sub_10046DD28(uint64_t result, uint64_t a2)
{
  if (*(result + 80) == 1)
  {
    v7 = v2;
    v8 = v3;
    v4 = result;
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "@GtsGiz, reclearing", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188B494();
    }

    *(v4 + 80) = 0;
    return (*(**(v4 + 48) + 40))(*(v4 + 48));
  }

  return result;
}

void sub_10046DDFC(uint64_t a1)
{
  if ((*(**(a1 + 56) + 16))(*(a1 + 56)))
  {

    sub_10046DE68(a1, v2);
  }
}

void sub_10046DE68(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v3 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
    v5 = *(a1 + 196);
    v6 = 134349312;
    v7 = v4;
    v8 = 1026;
    v9 = v5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "@GtsMgr, Nearby, queue, %{public}lu, sessionErrors, %{public}d", &v6, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188B570();
  }

  if (*(a1 + 196))
  {
    sub_10046A36C(a1, "Nearby", 1.0);
  }
}

void sub_10046DF80(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *(a1 + 72) = (*(**(a1 + 56) + 32))(*(a1 + 56));
  if ((*(**(a1 + 56) + 16))(*(a1 + 56)))
  {
    v4 = [*(a1 + 64) silo];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10046E16C;
    v5[3] = &unk_102455A60;
    v5[4] = a1;
    v6 = v2;
    [v4 async:v5];
  }

  if ((*(**(a1 + 56) + 24))(*(a1 + 56)))
  {
    sub_10046E098(a1, v2);
  }
}

void sub_10046E098(uint64_t a1, int a2)
{
  v4 = (*(**(a1 + 48) + 24))(*(a1 + 48));
  if (!a2 && (v4 & 1) == 0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "@GtsGiz, reclear pending", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188B684();
    }

    *(a1 + 80) = 1;
  }
}

void sub_10046E16C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v4 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    v6 = 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 176) - *(v3 + 168)) >> 4);
    v7[0] = 67240448;
    v7[1] = v5;
    v8 = 2050;
    v9 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "@GtsCont, ToggleReset, %{public}d, queuewas, %{public}ld", v7, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10188B760();
  }

  sub_100236B38((v3 + 168));
}

void sub_10046E280(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (((*(**(a1 + 56) + 24))(*(a1 + 56)) & 1) == 0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v8 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      *buf = 136446723;
      v18 = a2;
      v19 = 2053;
      v20 = a3;
      v21 = 2053;
      v22 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@GtsCont, %{public}s, llsw, %{sensitive}.2lf, %{sensitive}.2lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_101887948();
      }

      v11 = 136446723;
      v12 = a2;
      v13 = 2053;
      v14 = a3;
      v15 = 2053;
      v16 = a4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 1, "@GtsCont, %{public}s, llsw, %{sensitive}.2lf, %{sensitive}.2lf", &v11, 32);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLTileSyncManager::handleTileAdded(const char *, double, double)", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    sub_10046A36C(a1, a2, 30.0);
  }
}

void sub_10046E484(uint64_t a1, _DWORD *a2)
{
  (*(**(a1 + 56) + 32))(*(a1 + 56));

  sub_100469718((a1 + 208), a2, v4);
}

unint64_t sub_10046E4E8(void *a1, uint64_t a2, __int128 *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v12 = *a1;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4) + 1;
    if (v13 > 0x555555555555555)
    {
      sub_10028C64C();
    }

    v14 = a2 - v12;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v12) >> 4);
    v16 = 2 * v15;
    if (2 * v15 <= v13)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 4) + 1;
    }

    if (v15 >= 0x2AAAAAAAAAAAAAALL)
    {
      v17 = 0x555555555555555;
    }

    else
    {
      v17 = v16;
    }

    v23 = a1;
    if (v17)
    {
      sub_100242100(a1, v17);
    }

    v19 = 0;
    v20 = 16 * (v14 >> 4);
    v21 = v20;
    v22 = 0;
    sub_10046EFEC(&v19, a3);
    v4 = sub_10046F17C(a1, &v19, v4);
    sub_1002368FC(&v19);
  }

  else if (a2 == v6)
  {
    sub_100242158(a1, a3);
  }

  else
  {
    sub_10046EF64(a1, a2, v6, a2 + 48);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 3;
    if (v8)
    {
      v9 = 0;
    }

    v10 = &a3[v9];
    v11 = *v10;
    *(v4 + 16) = *(v10 + 2);
    *v4 = v11;
    std::string::operator=((v4 + 24), v10 + 1);
  }

  return v4;
}

void sub_10046E648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002368FC(va);
  _Unwind_Resume(a1);
}

void sub_10046E65C(uint64_t a1, uint64_t a2)
{
  if ((*(**(a1 + 56) + 16))(*(a1 + 56)))
  {
    if ((*(**(a1 + 56) + 48))(*(a1 + 56)))
    {
      if (qword_1025D4630 != -1)
      {
        sub_101886EF8();
      }

      v4 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "@GtsManif, skip, direct", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188BA30();
      }
    }

    else
    {
      v29 = (*(**(a1 + 48) + 16))(*(a1 + 48));
      v6 = !(*(**(a1 + 48) + 24))(*(a1 + 48)) || *(a1 + 160) != 83 || sub_100008880(v29 + 184) == 0;
      v8 = *(a1 + 168);
      v7 = *(a1 + 176);
      if (qword_1025D4630 != -1)
      {
        sub_101886EF8();
      }

      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v10 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        v11 = (*(**(a1 + 48) + 24))(*(a1 + 48)) ^ 1;
        v12 = *(a1 + 160);
        v13 = sub_100008880(v29 + 184);
        v14 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
        *buf = 136447234;
        v41 = a2;
        v42 = 1026;
        v43 = v11;
        v44 = 1026;
        v45 = v12;
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v46 = 2050;
        v47 = v13;
        v48 = 2050;
        v49 = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "@GtsManif, check, %{public}s, state, %{public}d, %{public}c, %{public}lu, sync, %{public}lu", buf, 0x2Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4630 != -1)
        {
          sub_101887948();
        }

        v18 = qword_1025D4638;
        v19 = (*(**(a1 + 48) + 24))(*(a1 + 48)) ^ 1;
        v20 = *(a1 + 160);
        v21 = sub_100008880(v29 + 184);
        v22 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 176) - *(a1 + 168)) >> 4);
        v30 = 136447234;
        v31 = a2;
        v32 = 1026;
        v33 = v19;
        v34 = 1026;
        v35 = v20;
        v36 = 2050;
        v37 = v21;
        v38 = 2050;
        v39 = v22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v18, 1, "@GtsManif, check, %{public}s, state, %{public}d, %{public}c, %{public}lu, sync, %{public}lu", &v30, 44);
        v24 = v23;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLTileSyncManager::sendCompanionManifest(const char *)", "%s\n", v23);
        if (v24 != buf)
        {
          free(v24);
        }

        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v15 = v7 != v8 || v6;
      if (v15 == 1)
      {
        if (qword_1025D4630 != -1)
        {
          sub_101887948();
        }

        v16 = p_info[199];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 136446722;
          v41 = a2;
          v42 = 1026;
          v43 = v6;
          v44 = 1026;
          v45 = v7 != v8;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "@GtsManif, skip, %{public}s, state, %{public}d, sync, %{public}d", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4630 != -1)
          {
            sub_101887948();
          }

          v25 = p_info[199];
          v30 = 136446722;
          v31 = a2;
          v32 = 1026;
          v33 = v6;
          v34 = 1026;
          v35 = v7 != v8;
          LODWORD(v28) = 24;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v25, 1, "@GtsManif, skip, %{public}s, state, %{public}d, sync, %{public}d", &v30, v28);
          v27 = v26;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLTileSyncManager::sendCompanionManifest(const char *)", "%s\n", v26);
          if (v27 != buf)
          {
            free(v27);
          }
        }

        if (v7 != v8)
        {
          sub_10046A36C(a1, "Syncing", 30.0);
        }
      }

      else
      {
        sub_10046AF78(a1, 0);
        if (qword_1025D4630 != -1)
        {
          sub_101887948();
        }

        v17 = p_info[199];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "@GtsFlow, CS, setHasChanges, 1, SendManifest", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10188B954();
        }

        [*(a1 + 8) setHasChangesAvailable];
      }
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "@GtsManif, return, not companion", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188B878();
    }
  }
}

Class sub_10046ED00()
{
  if (qword_1026562F8 != -1)
  {
    sub_10188BB0C();
  }

  result = objc_getClass("SYDictionaryObject");
  qword_1026562F0 = result;
  off_1025D57A8 = sub_10046ED54;
  return result;
}

Class sub_10046ED8C()
{
  if (qword_102656310 != -1)
  {
    sub_10188BB20();
  }

  result = objc_getClass("PSYSyncCoordinator");
  qword_102656308 = result;
  off_1025D5990 = sub_10046EDE0;
  return result;
}

Class sub_10046EE18()
{
  if (qword_102656310 != -1)
  {
    sub_10188BB20();
  }

  result = objc_getClass("PSYInitialSyncStateObserver");
  qword_102656320 = result;
  off_1025D5998 = sub_10046EE6C;
  return result;
}

Class sub_10046EE78()
{
  if (qword_1026562F8 != -1)
  {
    sub_10188BB0C();
  }

  result = objc_getClass("SYService");
  qword_102656328 = result;
  off_1025D59A0 = sub_10046EECC;
  return result;
}

__int128 *sub_10046EED8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      if (*(a4 + 47) < 0)
      {
        operator delete(*(a4 + 24));
      }

      v8 = *(v5 + 24);
      *(a4 + 40) = *(v5 + 5);
      *(a4 + 24) = v8;
      *(v5 + 47) = 0;
      *(v5 + 24) = 0;
      v5 += 3;
      a4 += 48;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_10046EF64(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      v11 = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 24) = v11;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = 0;
      v9 += 48;
      v8 += 48;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_10046F238(&v13, a2, v7, v6);
}

unint64_t *sub_10046EFEC(unint64_t *result, __int128 *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    if (v5 <= *result)
    {
      v10 = v4 - *result;
      v9 = v10 == 0;
      v11 = 0x5555555555555556 * (v10 >> 4);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = result[4];
      v16[4] = v3[4];
      sub_100242100(v13, v12);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    result = sub_10046EED8(v16, v5, v4, &v5[-3 * (v6 >> 1)]);
    v4 = v8;
    v3[1] += 16 * v7;
    v3[2] = v8;
  }

  v14 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v14;
  if (*(a2 + 47) < 0)
  {
    result = sub_100007244((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v15 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v15;
  }

  v3[2] += 48;
  return result;
}

uint64_t sub_10046F17C(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  sub_100241F7C(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_100241F7C(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_10046F238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      v10 = *(a3 + v7 - 48);
      *(v9 - 32) = *(a3 + v7 - 32);
      *(v9 - 48) = v10;
      v11 = (a4 + v7 - 24);
      if (*(a4 + v7 - 1) < 0)
      {
        operator delete(*v11);
      }

      v12 = *(v8 - 24);
      *(a4 + v7 - 8) = *(v8 - 8);
      *v11 = v12;
      *(v8 - 1) = 0;
      *(v8 - 24) = 0;
      v7 -= 48;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void sub_10046F2DC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 48;
  }
}

void sub_10046F36C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

uint64_t sub_10046F3C8(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2082;
  *(v3 + 14) = result;
  return result;
}

void sub_10046F3EC(uint64_t a1@<X8>)
{
  *(v3 + 14) = v2;
  *(v4 - 74) = v1;
  *(v3 + 24) = a1;
}

double sub_10046F414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 1, a8);
}

void sub_10046F42C(float a1)
{
  *(v2 - 96) = a1;
  *(v1 + 4) = v3;
  *(v2 - 84) = 2050;
}

uint64_t sub_10046FB5C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 3)
      {
        switch(v12)
        {
          case 4:
            *(a1 + 32) |= 0x10u;
            v44 = 0;
            v29 = [a2 position] + 4;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 4, v30 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 28) = v44;
            goto LABEL_95;
          case 5:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v49 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v49 & 0x7F) << v37;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v10 = v38++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_93;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v39;
            }

LABEL_93:
            v42 = 20;
            break;
          case 6:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 32) |= 8u;
            while (1)
            {
              v48 = 0;
              v22 = [a2 position] + 1;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v21 |= (v48 & 0x7F) << v19;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v10 = v20++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_85;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v21;
            }

LABEL_85:
            v42 = 24;
            break;
          default:
LABEL_54:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_95;
        }
      }

      else
      {
        switch(v12)
        {
          case 1:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            while (1)
            {
              v47 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v47 & 0x7F) << v24;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v10 = v25++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_77;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v26;
            }

LABEL_77:
            v42 = 8;
            break;
          case 2:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v46 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v46 & 0x7F) << v32;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v10 = v33++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_89;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v34;
            }

LABEL_89:
            v42 = 12;
            break;
          case 3:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v50 = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v50 & 0x7F) << v13;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_81;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v15;
            }

LABEL_81:
            v42 = 16;
            break;
          default:
            goto LABEL_54;
        }
      }

      *(a1 + v42) = v18;
LABEL_95:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1004712F8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v70) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v70 & 0x7F) << v5;
        if ((v70 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          *(a1 + 108) |= 0x100u;
          v70 = 0;
          v12 = [a2 position] + 8;
          if (v12 >= [a2 position] && (v13 = objc_msgSend(a2, "position") + 8, v13 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v67 = v70;
          v68 = 72;
          goto LABEL_146;
        case 2u:
          *(a1 + 108) |= 8u;
          v70 = 0;
          v46 = [a2 position] + 8;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 8, v47 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v67 = v70;
          v68 = 32;
          goto LABEL_146;
        case 3u:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 108) |= 0x2000u;
          while (1)
          {
            LOBYTE(v70) = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v70 & 0x7F) << v32;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v10 = v33++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_113;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v34;
          }

LABEL_113:
          v65 = 100;
          goto LABEL_125;
        case 4u:
          *(a1 + 108) |= 1u;
          v70 = 0;
          v42 = [a2 position] + 8;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 8, v43 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v67 = v70;
          v68 = 8;
          goto LABEL_146;
        case 5u:
          *(a1 + 108) |= 0x20u;
          v70 = 0;
          v22 = [a2 position] + 8;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v67 = v70;
          v68 = 48;
          goto LABEL_146;
        case 6u:
          *(a1 + 108) |= 0x40u;
          v70 = 0;
          v48 = [a2 position] + 8;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 8, v49 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v67 = v70;
          v68 = 56;
          goto LABEL_146;
        case 7u:
          *(a1 + 108) |= 0x200u;
          v70 = 0;
          v52 = [a2 position] + 8;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 8, v53 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v67 = v70;
          v68 = 80;
          goto LABEL_146;
        case 8u:
          *(a1 + 108) |= 0x10u;
          v70 = 0;
          v44 = [a2 position] + 8;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 8, v45 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v67 = v70;
          v68 = 40;
          goto LABEL_146;
        case 9u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 108) |= 0x1000u;
          while (1)
          {
            LOBYTE(v70) = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v70 & 0x7F) << v59;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v10 = v60++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_124;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v61;
          }

LABEL_124:
          v65 = 96;
          goto LABEL_125;
        case 0xAu:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 108) |= 0x8000u;
          while (1)
          {
            LOBYTE(v70) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v70 & 0x7F) << v26;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v10 = v27++ >= 9;
            if (v10)
            {
              LOBYTE(v31) = 0;
              goto LABEL_109;
            }
          }

          v31 = (v28 != 0) & ~[a2 hasError];
LABEL_109:
          v66 = 105;
          goto LABEL_120;
        case 0xBu:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 108) |= 0x4000u;
          while (1)
          {
            LOBYTE(v70) = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v70 & 0x7F) << v54;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v10 = v55++ >= 9;
            if (v10)
            {
              LOBYTE(v31) = 0;
              goto LABEL_119;
            }
          }

          v31 = (v56 != 0) & ~[a2 hasError];
LABEL_119:
          v66 = 104;
LABEL_120:
          *(a1 + v66) = v31;
          goto LABEL_147;
        case 0xCu:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 108) |= 0x400u;
          while (1)
          {
            LOBYTE(v70) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v70 & 0x7F) << v16;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v10 = v17++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_107;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v18;
          }

LABEL_107:
          v65 = 88;
          goto LABEL_125;
        case 0xDu:
          *(a1 + 108) |= 4u;
          v70 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v67 = v70;
          v68 = 24;
          goto LABEL_146;
        case 0xEu:
          *(a1 + 108) |= 2u;
          v70 = 0;
          v50 = [a2 position] + 8;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v67 = v70;
          v68 = 16;
          goto LABEL_146;
        case 0xFu:
          *(a1 + 108) |= 0x80u;
          v70 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v67 = v70;
          v68 = 64;
LABEL_146:
          *(a1 + v68) = v67;
          goto LABEL_147;
        case 0x10u:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 108) |= 0x800u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_147;
      }

      while (1)
      {
        LOBYTE(v70) = 0;
        v40 = [a2 position] + 1;
        if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v39 |= (v70 & 0x7F) << v37;
        if ((v70 & 0x80) == 0)
        {
          break;
        }

        v37 += 7;
        v10 = v38++ >= 9;
        if (v10)
        {
          v21 = 0;
          goto LABEL_117;
        }
      }

      v21 = [a2 hasError] ? 0 : v39;
LABEL_117:
      v65 = 92;
LABEL_125:
      *(a1 + v65) = v21;
LABEL_147:
      v69 = [a2 position];
    }

    while (v69 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

BOOL sub_100473590(double *a1, int a2, double a3, double a4, double a5, double a6)
{
  result = sub_1000CE580(a5, a6);
  v11 = 0.0;
  if (!result)
  {
    v12 = 2.1;
    if (a4 > 0.0)
    {
      v13 = a3 * 2.23693991 / a4;
      if (v13 >= 1.0)
      {
        v12 = ((v13 * -0.793) + ((v13 * 0.3564) * v13)) + 3.142;
        if (v12 > 8.0)
        {
          v12 = 8.0;
        }
      }
    }

    v14 = 1.1;
    if (!a2)
    {
      v14 = 1.0;
    }

    v15 = v14 * v12;
    if (v15 > 20.0)
    {
      v15 = 20.0;
    }

    v11 = *a1 + v15;
  }

  *a1 = v11;
  return result;
}

double sub_100473684(uint64_t a1)
{
  v1 = sub_100D83718(a1, 1);
  *v1 = off_102455BB8;
  *(v1 + 96) = dword_100000000;
  *(v1 + 104) = 26;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0x7FF0000000000000;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  result = 2.22507386e-308;
  *(v1 + 160) = xmmword_101C78BB0;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0x10000000000000;
  *(v1 + 192) = 0;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 216) = 0;
  return result;
}

void sub_100473718(uint64_t a1, int a2)
{
  if (*(a1 + 96) != a2)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188BB34();
    }

    v4 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 96);
      v6[0] = 68289538;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2050;
      v10 = a2;
      v11 = 2050;
      v12 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Changing source state, new state:%{public, location:CLStreamingAwareLocationProviderLocalGPSStateMachine::LocationSourceState}lld, old state:%{public, location:CLStreamingAwareLocationProviderLocalGPSStateMachine::LocationSourceState}lld}", v6, 0x26u);
    }

    *(a1 + 96) = a2;
    if (a2 != 1)
    {
      *(a1 + 100) = 1;
    }
  }
}

void sub_10047382C(uint64_t a1, int a2)
{
  if (*(a1 + 96) != 1)
  {
    sub_10188BB48();
  }

  v4 = *(a1 + 100);
  if (v4 != a2)
  {
    if (a2 != 1 || v4 != 2)
    {
      goto LABEL_27;
    }

    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v5 == v6)
    {
      v13 = 0;
      v7 = 0;
      v10 = 0;
      v16 = 0;
    }

    else
    {
      v7 = 0;
      v8 = *(a1 + 64);
      do
      {
        v9 = *v8++;
        if (v9 == 3)
        {
          ++v7;
        }
      }

      while (v8 != v6);
      v10 = 0;
      v11 = *(a1 + 64);
      do
      {
        v12 = *v11++;
        if (v12 == 2)
        {
          ++v10;
        }
      }

      while (v11 != v6);
      v13 = 0;
      v14 = *(a1 + 64);
      do
      {
        v15 = *v14++;
        if (v15 == 1)
        {
          ++v13;
        }
      }

      while (v14 != v6);
      v16 = 0;
      do
      {
        if (!*v5++)
        {
          ++v16;
        }
      }

      while (v5 != v6);
    }

    if (v10 > 2 || v13 > 1 || v16 >= 2)
    {
      if (qword_1025D47B0 != -1)
      {
        sub_10188BB34();
      }

      v20 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
      {
        v21 = (*(a1 + 72) - *(a1 + 64)) >> 2;
        *buf = 134350848;
        *v42 = v7;
        *&v42[8] = 2050;
        *&v42[10] = v10;
        *&v42[18] = 2050;
        *&v42[20] = 2;
        *&v42[28] = 2050;
        *&v42[30] = v13;
        v43 = 2050;
        v44 = 1;
        v45 = 2050;
        v46 = v16;
        v47 = 2050;
        v48 = 1;
        v49 = 2050;
        v50 = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "Will not change to remote compatible workout state due to companion not meeting availability criteria,ahq,%{public}ld,a,%{public}ld,thresh_a,%{public}ld,ua,%{public}ld,thresh_ua,%{public}ld,uk,%{public}ld,thresh_uk,%{public}ld,buffsize,%{public}zu", buf, 0x52u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D47B0 != -1)
        {
          sub_10188BD18();
        }

        v22 = (*(a1 + 72) - *(a1 + 64)) >> 2;
        v25 = 134350848;
        v26 = v7;
        v27 = 2050;
        v28 = v10;
        v29 = 2050;
        v30 = 2;
        v31 = 2050;
        v32 = v13;
        v33 = 2050;
        v34 = 1;
        v35 = 2050;
        v36 = v16;
        v37 = 2050;
        v38 = 1;
        v39 = 2050;
        v40 = v22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47B8, 0, "Will not change to remote compatible workout state due to companion not meeting availability criteria,ahq,%{public}ld,a,%{public}ld,thresh_a,%{public}ld,ua,%{public}ld,thresh_ua,%{public}ld,uk,%{public}ld,thresh_uk,%{public}ld,buffsize,%{public}zu", &v25, 82);
        v24 = v23;
        sub_100152C7C("Generic", 1, 0, 2, "void CLStreamingAwareLocationProviderLocalGPSStateMachine::changeWorkoutState(WorkoutState)", "%s\n", v23);
        if (v24 != buf)
        {
          free(v24);
        }
      }
    }

    else
    {
LABEL_27:
      if (qword_1025D47B0 != -1)
      {
        sub_10188BB34();
      }

      v18 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 100);
        *buf = 68289538;
        *v42 = 0;
        *&v42[4] = 2082;
        *&v42[6] = "";
        *&v42[14] = 2050;
        *&v42[16] = a2;
        *&v42[24] = 2050;
        *&v42[26] = v19;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Changing workout state, new state:%{public, location:CLStreamingAwareLocationProviderLocalGPSStateMachine::WorkoutState}lld, old state:%{public, location:CLStreamingAwareLocationProviderLocalGPSStateMachine::WorkoutState}lld}", buf, 0x26u);
      }

      *(a1 + 100) = a2;
    }
  }
}

uint64_t sub_100473BDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  if ((v4 - 2) < 2)
  {
LABEL_2:
    if (qword_1025D47B0 != -1)
    {
      sub_10188BD18();
    }

    goto LABEL_4;
  }

  if (v4 == 1)
  {
    v7 = sub_100D83978(a1);
    if (a2)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v7 = 0;
    if (a2)
    {
      goto LABEL_2;
    }
  }

  if (v7)
  {
    goto LABEL_2;
  }

  *(a1 + 184) = 0x10000000000000;
  *(a1 + 192) = 0;
  *(a1 + 160) = xmmword_101C78BB0;
  if (qword_1025D47B0 != -1)
  {
    sub_10188BB34();
  }

  v8 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v9 = 68289026;
    v10 = 2082;
    v11 = "";
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Clearing motion sample data}", &v9, 0x12u);
    goto LABEL_2;
  }

LABEL_4:
  v5 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v9 = 68289282;
    v10 = 2082;
    v11 = "";
    v12 = 1026;
    v13 = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Setting motion alarm state, enabled:%{public}d}", &v9, 0x18u);
  }

  return (*(**(a1 + 32) + 16))(*(a1 + 32), a2);
}

void sub_100473DB0(uint64_t a1)
{
  if (qword_1025D47B0 != -1)
  {
    sub_10188BB34();
  }

  v2 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 96);
    v4 = *(a1 + 100);
    v5 = *(a1 + 144);
    *v14 = 68289794;
    *&v14[8] = 2082;
    *&v14[10] = "";
    v15 = 2050;
    v16 = v3;
    v17 = 2050;
    v18 = v4;
    v19 = 1026;
    v20 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Starting providers, state:%{public, location:CLStreamingAwareLocationProviderLocalGPSStateMachine::LocationSourceState}lld, workoutState:%{public, location:CLStreamingAwareLocationProviderLocalGPSStateMachine::WorkoutState}lld, workoutForceGPSOn:%{public}hhd}", v14, 0x2Cu);
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *v14 = _Q0;
  *&v14[16] = 0;
  v16 = 0;
  v11 = *(a1 + 96);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      sub_1001ED860(a1, 0);
      goto LABEL_18;
    }

    if (v11 == 4)
    {
LABEL_14:
      sub_1000F2160(a1, 0, v14);
LABEL_18:
      sub_1000F2160(a1, 1, v14);
      goto LABEL_19;
    }

    if (v11 != 5)
    {
      return;
    }

    sub_1000F2160(a1, 0, v14);
LABEL_16:
    sub_1001ED860(a1, 1u);
LABEL_19:
    v12 = 0;
LABEL_20:
    sub_100473BDC(a1, v12);
    return;
  }

  if (!v11)
  {
    sub_1001ED860(a1, 0);
    goto LABEL_16;
  }

  if (v11 != 1)
  {
    if (v11 != 2)
    {
      return;
    }

    goto LABEL_14;
  }

  if (*(a1 + 144) == 1)
  {
    sub_1000F2160(a1, 0, v14);
    v14[17] = 1;
    v12 = 0;
    if (!sub_100D83978(a1))
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v13 = *(a1 + 100);
  switch(v13)
  {
    case 0:
      sub_1000F2160(a1, 0, v14);
      v12 = 1;
      sub_1001ED860(a1, 1u);
      goto LABEL_20;
    case 1:
      sub_1001ED860(a1, 0);
      goto LABEL_30;
    case 2:
      sub_1000F2160(a1, 0, v14);
LABEL_30:
      v14[17] = 1;
      goto LABEL_18;
  }
}

void sub_100474000(uint64_t a1, double a2)
{
  v4 = *(a1 + 96);
  if (qword_1025D47B0 != -1)
  {
    sub_10188BB34();
  }

  v5 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2050;
    v11 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Determining state, current state:%{public, location:CLStreamingAwareLocationProviderLocalGPSStateMachine::LocationSourceState}lld}", v7, 0x1Cu);
  }

  v6 = *(a1 + 104);
  if (v6 && v6 != 26)
  {
    sub_100474124(a1, a2);
  }

  else
  {
    sub_1004741C0(a1, a2);
  }

  sub_100473DB0(a1);
}

void sub_100474124(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_6:

    sub_1004741C0(a1, a2);
    return;
  }

  while (1)
  {
    v5 = *(v4 + 7);
    if (v5 <= 0)
    {
      break;
    }

LABEL_5:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  if (v5 < 0)
  {
    ++v4;
    goto LABEL_5;
  }

  sub_100473718(a1, 1);

  sub_100474D00(a1, a2);
}

void sub_1004741C0(uint64_t a1, double a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_16:
    v10 = 0;
LABEL_24:

    sub_100473718(a1, v10);
    return;
  }

  v5 = *(a1 + 16);
  do
  {
    v6 = *(v5 + 7);
    if (v6 > 0)
    {
      goto LABEL_6;
    }

    if ((v6 & 0x80000000) == 0)
    {
      if (sub_100D83978(a1))
      {
        v14 = *(v2 + 112);
        if (v14 != 3)
        {
          if (v14 == 4)
          {
            goto LABEL_23;
          }

          if (*(v2 + 128) != 1 || ((v15 = a2 - *(v2 + 120), v15 >= 0.0) ? (v16 = v15 > 30.0) : (v16 = 1), v16))
          {
            v18 = 1;
            v19 = &v18;
            v17 = *(sub_1000B91DC(v2 + 40, &v18, &unk_101C66300, &v19) + 8);
            v12 = v2;
            if (v17 == 1)
            {
              v13 = 2;
            }

            else
            {
              v13 = 3;
            }

            goto LABEL_28;
          }
        }

        a1 = v2;
        v10 = 4;
        goto LABEL_24;
      }

LABEL_23:
      a1 = v2;
      v10 = 5;
      goto LABEL_24;
    }

    ++v5;
LABEL_6:
    v5 = *v5;
  }

  while (v5);
  v7 = *(a1 + 16);
  while (1)
  {
    v8 = *(v7 + 7);
    if (v8 <= 1)
    {
      break;
    }

LABEL_11:
    v7 = *v7;
    if (!v7)
    {
      do
      {
        v9 = *(v3 + 7);
        if (v9 <= 2)
        {
          if (v9 == 2)
          {
            goto LABEL_17;
          }

          ++v3;
        }

        v3 = *v3;
      }

      while (v3);
      goto LABEL_16;
    }
  }

  if (v8 != 1)
  {
    ++v7;
    goto LABEL_11;
  }

LABEL_17:
  if ((sub_100D83978(a1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v18 = 0;
  v19 = &v18;
  v11 = *(sub_1000B91DC(v2 + 40, &v18, &unk_101C66300, &v19) + 8);
  v12 = v2;
  if (v11 == 1)
  {
    v13 = 4;
  }

  else
  {
    v13 = 5;
  }

LABEL_28:
  sub_100473718(v12, v13);
}

void sub_100474380(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t a4, double a5)
{
  v25 = a5;
  if (!sub_100D836FC(*a3))
  {
    goto LABEL_36;
  }

  v10 = *(a4 + 928);
  if ((*(a4 + 96) - 6) >= 3)
  {
    v11 = *(a4 + 436);
    *(a1 + 112) = v11;
    if ((v11 - 3) <= 1)
    {
      if (v11 == 4)
      {
        *(a1 + 120) = a5;
        *(a1 + 128) = 1;
      }

      if (qword_1025D47B0 != -1)
      {
        sub_10188BB34();
      }

      v12 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a4 + 436);
        v14 = *(a4 + 96);
        v15 = *(a4 + 76);
        *buf = 68290050;
        v27 = 2082;
        *&buf[4] = 0;
        v28 = "";
        v29 = 2050;
        v30 = a2;
        v31 = 1026;
        *v32 = v13;
        *&v32[4] = 1026;
        *&v32[6] = v14;
        *v33 = 2050;
        *&v33[2] = v15;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cltr,Received track notification, source:%{public, location:CLStreamingAwareLocationProviderStateMachine::LocationSource}lld, trackProximity:%{public}d, type:%{public}d, timestamp:%{public}f}", buf, 0x32u);
      }
    }
  }

  v16 = *(a1 + 96);
  if (v16 != 1)
  {
    if (v16 != 5)
    {
      if (v16 == 3 && a2 != 1)
      {
        return;
      }

LABEL_36:
      (*(**(a1 + 32) + 8))(*(a1 + 32), *a3, a4);
      return;
    }

    goto LABEL_28;
  }

  if (a2)
  {
    v17 = a2 == 1;
    v18 = a2 != 1;
    if (a2 == 1 && v10)
    {
      if (qword_1025D47B0 != -1)
      {
        sub_10188BD18();
      }

      v19 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        v20 = *a3;
        v21 = *(a4 + 928);
        v22 = *(a4 + 76);
        *buf = 68290050;
        *&buf[4] = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2050;
        v30 = 1;
        v31 = 2050;
        *v32 = v20;
        *&v32[8] = 2050;
        *v33 = v21;
        *&v33[8] = 2050;
        v34 = v22;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received motion rich location notification, source:%{public, location:CLStreamingAwareLocationProviderStateMachine::LocationSource}lld, notification:%{public, location:CLLocationProvider_Type::Notification}lld, motion data:%{public, location:CLLocationProvider_Type::MotionDetected}lld, timestamp:%{public}f}", buf, 0x3Au);
      }

      sub_1004746D8(a1, (a4 + 928), (a4 + 76), &v25);
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
    *(a1 + 208) = a5;
    v18 = 1;
    *(a1 + 216) = 1;
  }

  v23 = *(a1 + 100);
  if (v23 != 2)
  {
    if (v23 == 1)
    {
      if (!v17)
      {
        return;
      }

      goto LABEL_36;
    }

    if (v23)
    {
      goto LABEL_36;
    }
  }

  if (v18)
  {
LABEL_28:
    if (a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if ((*(a1 + 104) | 8) != 0x1B)
  {
    v24 = 0;
    *buf = &v24;
    if (*(sub_1000B91DC(a1 + 40, &v24, &unk_101C66300, buf) + 8) != 3 || *(a1 + 216) != 1 || vabdd_f64(a5, *(a1 + 208)) >= 4.0)
    {
      goto LABEL_36;
    }
  }
}

uint64_t sub_1004746D8(uint64_t a1, int *a2, double *a3, double *a4)
{
  v6 = *a2;
  if (*a2 == *(a1 + 192))
  {
    v7 = *(a1 + 184);
    if (v7 >= *a3)
    {
      v7 = *a3;
    }
  }

  else
  {
    *(a1 + 192) = v6;
    v7 = *a3;
  }

  *(a1 + 184) = v7;
  v8 = v7 + 30.0;
  if (v6 == 1)
  {
    v7 = v7 + 15.0;
  }

  if (v6 == 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v9 <= *a4)
  {
    v9 = INFINITY;
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10188BB34();
    }

    v10 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *a4;
      v12 = v9 - *a4;
      *buf = 68289794;
      *&buf[4] = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2050;
      v24 = v11;
      v25 = 2050;
      v26 = v9;
      v27 = 2050;
      v28 = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Scheduling timer for motion confidence, now_s:%{public}.09f, fire time_s:%{public}.09f, delta_s:%{public}.09f}", buf, 0x30u);
    }
  }

  if (!*(a1 + 200))
  {
    (*(**(a1 + 32) + 32))(buf);
    v13 = *buf;
    *buf = 0;
    v14 = *(a1 + 200);
    *(a1 + 200) = v13;
    if (v14)
    {
      (*(*v14 + 40))(v14);
      v15 = *buf;
      *buf = 0;
      if (v15)
      {
        (*(*v15 + 40))(v15);
      }
    }

    v16 = *(a1 + 200);
    v19[0] = off_102455D20;
    v19[1] = a1;
    v19[3] = v19;
    (*(*v16 + 8))(v16, v19);
    sub_100475894(v19);
  }

  v17 = **(a1 + 200);
  if (v9 == INFINITY)
  {
    return (*(v17 + 24))();
  }

  (*v17)(v9);
  return (*(**(a1 + 200) + 16))(*(a1 + 200));
}

void sub_1004749E0(uint64_t a1, unint64_t a2, double a3)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  if (!a2 || a2 == 26)
  {
    v5 = 0;
    *(a1 + 136) = 0x7FF0000000000000;
    goto LABEL_22;
  }

  if (v4 > 0x21)
  {
    goto LABEL_10;
  }

  if (((1 << v4) & 0x201028006) == 0)
  {
    if (((1 << v4) & 0x4000001) != 0)
    {
      goto LABEL_19;
    }

    if (((1 << v4) & 0x8080000) != 0)
    {
      v6 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v6 = 2;
    goto LABEL_11;
  }

  v6 = 0;
  if (a2 > 0x21)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (((1 << a2) & 0x201028006) != 0)
  {
    v7 = 0;
    goto LABEL_17;
  }

  if (((1 << a2) & 0x8080000) != 0)
  {
    v7 = 1;
  }

  else
  {
LABEL_16:
    v7 = 2;
  }

LABEL_17:
  if (v6 == v7)
  {
    v5 = 0;
    goto LABEL_22;
  }

LABEL_19:
  *(a1 + 136) = a3;
  *(a1 + 72) = *(a1 + 64);
  if (*(a1 + 216) == 1)
  {
    *(a1 + 216) = 0;
  }

  v5 = 1;
LABEL_22:
  if (qword_1025D47B0 != -1)
  {
    sub_10188BB34();
  }

  v8 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 104);
    v10[0] = 68289538;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2050;
    v14 = v9;
    v15 = 1026;
    v16 = v5;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Workout change, currentWorkout:%{public}ld, workoutStarted:%{public}hhd}", v10, 0x22u);
  }
}

double sub_100474BCC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 216);
  *(a1 + 160) = *a2;
  *(a1 + 168) = v3;
  return result;
}

uint64_t sub_100474BDC(uint64_t result, unsigned int a2, double a3)
{
  v7 = a2;
  v6 = a3;
  if (*(result + 96) == 1)
  {
    v4 = result;
    if (qword_1025D47B0 != -1)
    {
      sub_10188BB34();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v9 = 2082;
      v10 = "";
      v11 = 2050;
      v12 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Motion alarm fired, detected motion:%{public, location:CLLocationProvider_Type::MotionDetected}lld}", buf, 0x1Cu);
    }

    return sub_1004746D8(v4, &v7, &v6, &v6);
  }

  return result;
}

void sub_100474CE8(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    v2 = v1 == 3;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    sub_100473DB0(a1);
  }
}

uint64_t sub_100474D00(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  if (v4 > 0x21)
  {
LABEL_61:
    v6 = 0;
    v5 = 2;
    goto LABEL_4;
  }

  if (((1 << v4) & 0x201028006) == 0)
  {
    if (((1 << v4) & 0x8080000) != 0)
    {
      v6 = 0;
      v7 = 0;
      v5 = 1;
      goto LABEL_7;
    }

    if (((1 << v4) & 0x4000001) != 0)
    {
      if (qword_1025D47B0 != -1)
      {
        goto LABEL_79;
      }

      while (1)
      {
        v26 = qword_1025D47B8;
        if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          v33 = 2082;
          v34 = "";
          v35 = 2082;
          v36 = "assert";
          v37 = 2081;
          v38 = "isInWorkout()";
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:This function must only be called in workout scenarios., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D47B0 != -1)
          {
            sub_10188BD18();
          }
        }

        v27 = qword_1025D47B8;
        if (os_signpost_enabled(qword_1025D47B8))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          v33 = 2082;
          v34 = "";
          v35 = 2082;
          v36 = "assert";
          v37 = 2081;
          v38 = "isInWorkout()";
          _os_signpost_emit_with_name_impl(dword_100000000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "This function must only be called in workout scenarios.", "{msg%{public}.0s:This function must only be called in workout scenarios., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D47B0 != -1)
          {
            sub_10188BD18();
          }
        }

        v28 = qword_1025D47B8;
        if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          *&buf[4] = 0;
          v33 = 2082;
          v34 = "";
          v35 = 2082;
          v36 = "assert";
          v37 = 2081;
          v38 = "isInWorkout()";
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_INFO, "{msg%{public}.0s:This function must only be called in workout scenarios., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Streaming/CLStreamingAwareLocationProviderLocalGPSStateMachine.mm", 396, "setWorkoutStateBasedOnMotionCompatibility");
        __break(1u);
LABEL_79:
        sub_10188BB34();
      }
    }

    goto LABEL_61;
  }

  v5 = 0;
  v6 = 1;
LABEL_4:
  v7 = 1;
LABEL_7:
  if (!sub_100D83978(a1) || *(a1 + 112) == 4)
  {
    goto LABEL_12;
  }

  if (v5 == 2)
  {
    v6 = 0;
    v9 = 0;
    v8 = 1;
    goto LABEL_13;
  }

  if (v5 == 1)
  {
    v6 = 0;
LABEL_12:
    v8 = 0;
    v9 = 1;
    goto LABEL_13;
  }

  v22 = *(a1 + 192);
  if (v22 == 1)
  {
    if (a2 - *(a1 + 184) >= 15.0)
    {
      v9 = 0;
      v8 = 1;
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  if (v22 != 2 || a2 - *(a1 + 184) < 30.0 || *(a1 + 160) + 15.0 <= a2 || *(a1 + 168) <= 0.0)
  {
LABEL_63:
    v9 = 0;
    v8 = 0;
    goto LABEL_64;
  }

  v8 = 0;
  v9 = 1;
LABEL_64:
  if (qword_1025D47B0 != -1)
  {
    sub_10188BB34();
  }

  v23 = qword_1025D47B8;
  v6 = 1;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v24 = *(a1 + 192);
    v25 = *(a1 + 184);
    *buf = 68290306;
    *&buf[4] = 0;
    v33 = 2082;
    v34 = "";
    v35 = 2050;
    v36 = v24;
    v37 = 2050;
    v38 = v25;
    v39 = 2050;
    v40 = a2;
    v41 = 1026;
    v42 = v8;
    v43 = 1026;
    v44 = v9;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_INFO, "{msg%{public}.0s:In pedestrian workout, Motion compatible?, remote motion:%{public, location:CLLocationProvider_Type::MotionDetected}lld, sample time_s:%{public}.09f, now_s:%{public}.09f, prefer remote:%{public}hhd, prefer local:%{public}hhd}", buf, 0x3Cu);
  }

LABEL_13:
  if (*(a1 + 176) != v6)
  {
    (*(**(a1 + 32) + 24))(*(a1 + 32), v6);
    *(a1 + 176) = v6;
  }

  if ((v9 | v8) == 1)
  {
    sub_10047382C(a1, v9 ^ 1);
  }

  if (*(a1 + 100) == 1)
  {
    v10 = 1;
    if (*(a1 + 112) != 4)
    {
      if (*(a1 + 128) == 1)
      {
        v11 = a2 - *(a1 + 120);
        v10 = v11 <= 30.0 && v11 >= 0.0;
      }

      else
      {
        v10 = 0;
      }
    }

    v30 = 1;
    *buf = &v30;
    if (*(sub_1000B91DC(a1 + 40, &v30, &unk_101C66300, buf) + 8) && (v29 = 1, *buf = &v29, *(sub_1000B91DC(a1 + 40, &v29, &unk_101C66300, buf) + 8) != 3))
    {
      if (!v10)
      {
LABEL_39:
        sub_10047382C(a1, 2);
        goto LABEL_40;
      }
    }

    else if (!v10)
    {
      goto LABEL_40;
    }

    if (qword_1025D47B0 != -1)
    {
      sub_10188BD18();
    }

    v12 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#cltr,user was recently on a track,changing WorkoutState to RemoteCompatibleButUnavailable", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188BD40();
    }

    goto LABEL_39;
  }

  v30 = 1;
  *buf = &v30;
  if (*(sub_1000B91DC(a1 + 40, &v30, &unk_101C66300, buf) + 8) == 3 && *(a1 + 100) == 2 && (v9 & 1) == 0)
  {
    sub_10047382C(a1, 1);
  }

LABEL_40:
  v13 = vabdd_f64(*(a1 + 136), a2);
  if (v13 < 180.0)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 144) = v14;
  if (v13 <= 10.0)
  {
    *(a1 + 72) = *(a1 + 64);
  }

  if (*(a1 + 152))
  {
    if (v14)
    {
LABEL_47:
      v16 = *(a1 + 152);
      v15 = a1 + 152;
      (**v16)(v16, *(v15 - 16) + 180.0);
      return (*(**v15 + 16))();
    }
  }

  else
  {
    (*(**(a1 + 32) + 32))(buf);
    v18 = *buf;
    *buf = 0;
    v19 = *(a1 + 152);
    *(a1 + 152) = v18;
    if (v19)
    {
      (*(*v19 + 40))(v19);
      v20 = *buf;
      *buf = 0;
      if (v20)
      {
        (*(*v20 + 40))(v20);
      }
    }

    v21 = *(a1 + 152);
    v31[0] = off_102455C90;
    v31[1] = a1;
    v31[3] = v31;
    (*(*v21 + 8))(v21, v31);
    sub_100475894(v31);
    if (*(a1 + 144))
    {
      goto LABEL_47;
    }
  }

  return (*(**(a1 + 152) + 24))(*(a1 + 152));
}

void sub_100475500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100475894(va);
  _Unwind_Resume(a1);
}

void sub_100475520(void *a1)
{
  sub_100475590(a1);

  operator delete();
}

uint64_t sub_100475590(void *a1)
{
  *a1 = off_102455BB8;
  v2 = a1[25];
  a1[25] = 0;
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = a1[19];
  a1[19] = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return sub_100475640(a1);
}

uint64_t sub_100475640(uint64_t a1)
{
  *a1 = &off_1024AEAE8;
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  sub_1003C93BC(a1 + 40, *(a1 + 48));
  sub_1003C93BC(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_100475718(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102455C90;
  a2[1] = v2;
  return result;
}

uint64_t sub_100475744(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_1025D47B0 != -1)
  {
    sub_10188BB34();
  }

  v4 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Reconsidering forced GPS state}", v6, 0x12u);
  }

  return (*(*v3 + 96))(v3, v2);
}

uint64_t sub_100475848(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100475894(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100475984(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102455D20;
  a2[1] = v2;
  return result;
}

uint64_t sub_1004759B0(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (qword_1025D47B0 != -1)
  {
    sub_10188BB34();
  }

  v4 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Reconsidering motion compatibility}", v6, 0x12u);
  }

  return (*(*v3 + 96))(v3, v2);
}

uint64_t sub_100475AB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100475F14(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004793B8;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102656350 != -1)
  {
    dispatch_once(&qword_102656350, block);
  }

  return qword_102636EE0;
}

void sub_100476400(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100476420(uint64_t result, uint64_t a2)
{
  if ((*(result + 109) & 1) == 0)
  {
    if ((sub_100023B30(result, a2) & 0x20000000) != 0)
    {
      sub_10047BDD0();
    }

    sub_1008281C4();
  }

  return result;
}
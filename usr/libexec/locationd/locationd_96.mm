void sub_1006D4CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char *a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  a42 = &a20;
  sub_10064AA34(&a42);
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006D4DC8(void *a1, uint64_t a2, int a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134217984;
    v21 = a1;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CELL_LOC: start sequence, This, %p", &v20, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190D74C();
  }

  if (a3)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CELL_LOC: beginning cell database", &v20, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190D950();
    }

    v7 = sub_1006C5194(a1);
    v8 = sub_1006C5084(a1);
    v9 = sub_1006C52A4(a1);
    v10 = sub_100090470(a1);
    v11 = sub_1006C53B4(a1);
    sub_100652C64(*(v7 + 32));
    sub_100652C64(*(v8 + 32));
    sub_100652C64(*(v9 + 32));
    sub_100652C64(*(v10 + 32));
    return sub_100652C64(*(v11 + 32));
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v14 = (a1[28] + a1[23] + a1[33] + a1[38] + a1[43]);
      v20 = 134217984;
      v21 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "CELL_LOC: ending cell database (%lu cells still pending)", &v20, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190D83C();
    }

    v15 = sub_1006C5194(a1);
    sub_100652C6C(*(v15 + 32));
    v16 = sub_1006C5084(a1);
    sub_100652C6C(*(v16 + 32));
    v17 = sub_1006C52A4(a1);
    sub_100652C6C(*(v17 + 32));
    v18 = sub_100090470(a1);
    sub_100652C6C(*(v18 + 32));
    v19 = sub_1006C53B4(a1);
    return sub_100652C6C(*(v19 + 32));
  }
}

void sub_1006D5068(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  sub_10123E5CC(v37, a3, 9);
  sub_10007AD10(v37, -1, -1, -1, -1);
  v7 = sub_1006CCAA0(v37, v6);
  v8 = sub_1006C5084(a1);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v9 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a4 + 4);
    v11 = *(a4 + 12);
    v12 = *(a4 + 20);
    v13 = *v7;
    v14 = v7[1];
    v15 = v7[2];
    v16 = v7[3];
    v17 = *(a4 + 84);
    v18 = *(a1 + 384);
    *buf = 136317955;
    v67 = "Network-Cell";
    v68 = 1024;
    v69 = 1;
    v70 = 2053;
    v71 = v10;
    v72 = 2053;
    v73 = v11;
    v74 = 2048;
    v75 = v12;
    v76 = 1024;
    v77 = v13;
    v78 = 1024;
    v79 = v14;
    v80 = 1024;
    v81 = v15;
    v82 = 1024;
    v83 = v16;
    v84 = 1024;
    v85 = v17;
    v86 = 1024;
    v87 = v18;
    v88 = 1024;
    v89 = -1;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,LAC,0x%x,CI,0x%x,Confidence,%d,Count,%d,lock,%d", buf, 0x5Au);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v23 = *(a4 + 4);
    v24 = *(a4 + 12);
    v25 = *(a4 + 20);
    v26 = *v7;
    v27 = v7[1];
    v28 = v7[2];
    v29 = v7[3];
    v30 = *(a4 + 84);
    v31 = *(a1 + 384);
    v42 = 136317955;
    v43 = "Network-Cell";
    v44 = 1024;
    v45 = 1;
    v46 = 2053;
    v47 = v23;
    v48 = 2053;
    v49 = v24;
    v50 = 2048;
    v51 = v25;
    v52 = 1024;
    v53 = v26;
    v54 = 1024;
    v55 = v27;
    v56 = 1024;
    v57 = v28;
    v58 = 1024;
    v59 = v29;
    v60 = 1024;
    v61 = v30;
    v62 = 1024;
    v63 = v31;
    v64 = 1024;
    v65 = -1;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,LAC,0x%x,CI,0x%x,Confidence,%d,Count,%d,lock,%d", &v42, 90);
    v33 = v32;
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterScdmaCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::ScdmaCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v32);
    if (v33 != buf)
    {
      free(v33);
    }
  }

  v19 = sub_1006E1130(a1 + 208, v7);
  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v21 = sub_1006CCAA0(v37, v20);
    if (sub_1006AA994(*(v8 + 32), v21, a4))
    {
      ++*(a1 + 384);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      LOWORD(v42) = 0;
      LODWORD(v36) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "#Warning Location Services disabled, not storing location entry", &v42, v36);
      v35 = v34;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterScdmaCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::ScdmaCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v34);
      if (v35 != buf)
      {
        free(v35);
      }
    }
  }

  if ((a1 + 216) != v19)
  {
    sub_10045E8A0((a1 + 208), v19);
    operator delete(v19);
  }

  if (v41 < 0)
  {
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void sub_1006D54F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

void sub_1006D5520(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_10123E5CC(v27, a3, 9);
  sub_10007AD10(v27, -1, -1, -1, -1);
  v5 = sub_1006CCAA0(v27, v4);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v6 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *v5;
    v8 = v5[1];
    v9 = v5[2];
    v10 = v5[3];
    *buf = 136317187;
    v51 = "Network-Cell";
    v52 = 0x805000000000400;
    *v53 = 0;
    *&v53[8] = 2053;
    *&v53[10] = 0;
    *&v53[18] = 2048;
    *&v53[20] = 0xBFF0000000000000;
    *&v53[28] = 1024;
    *&v53[30] = v7;
    *&v53[34] = 1024;
    *&v53[36] = v8;
    *&v53[40] = 1024;
    *&v53[42] = v9;
    *&v53[46] = 1024;
    LODWORD(v54) = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,LAC,0x%x,CI,0x%x,", buf, 0x48u);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v18 = *v5;
    v19 = v5[1];
    v20 = v5[2];
    v21 = v5[3];
    v32 = 136317187;
    v33 = "Network-Cell";
    v34 = 1024;
    v35 = 0;
    v36 = 2053;
    v37 = 0;
    v38 = 2053;
    v39 = 0;
    v40 = 2048;
    v41 = 0xBFF0000000000000;
    v42 = 1024;
    v43 = v18;
    v44 = 1024;
    v45 = v19;
    v46 = 1024;
    v47 = v20;
    v48 = 1024;
    v49 = v21;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,LAC,0x%x,CI,0x%x,", &v32, 72);
    v23 = v22;
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterScdmaCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::ScdmaCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v22);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v52 = 0;
    v51 = 0;
    *v53 = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v53[16] = _Q0;
    *&v53[32] = _Q0;
    v54 = 0xBFF0000000000000;
    *buf = 0xFFFF;
    v56 = 0;
    v59 = 0;
    v57 = 0xBFF0000000000000;
    v58 = 0;
    v61 = 0xBFF0000000000000;
    v60 = 0;
    v62 = 0x7FFFFFFF;
    v65 = 0;
    v63 = 0;
    v64 = 0;
    v66 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v16 = sub_1006C5084(a1);
    sub_1006AA994(*(v16 + 32), v5, buf);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      LOWORD(v32) = 0;
      LODWORD(v26) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "#Warning Location Services disabled, not storing location entry", &v32, v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterScdmaCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::ScdmaCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  sub_1006E13A8((a1 + 208), v5);
  if (v31 < 0)
  {
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_1006D5964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

void sub_1006D5990(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  sub_10123E314(v35, a3, 0);
  sub_10007AD10(v35, -1, -1, -1, -1);
  v6 = sub_1006CBCE4(v35);
  v7 = sub_1006C5194(a1);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v8 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a4 + 4);
    v10 = *(a4 + 12);
    v11 = *(a4 + 20);
    v12 = *v6;
    v13 = v6[1];
    v14 = v6[2];
    v15 = v6[3];
    v16 = *(a4 + 84);
    v17 = *(a1 + 384);
    *buf = 136317955;
    v65 = "Network-Cell";
    v66 = 1024;
    v67 = 1;
    v68 = 2053;
    v69 = v9;
    v70 = 2053;
    v71 = v10;
    v72 = 2048;
    v73 = v11;
    v74 = 1024;
    v75 = v12;
    v76 = 1024;
    v77 = v13;
    v78 = 1024;
    v79 = v14;
    v80 = 1024;
    v81 = v15;
    v82 = 1024;
    v83 = v16;
    v84 = 1024;
    v85 = v17;
    v86 = 1024;
    v87 = -1;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,LAC,0x%x,CI,0x%x,Confidence,%d,Count,%d,lock,%d", buf, 0x5Au);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v21 = *(a4 + 4);
    v22 = *(a4 + 12);
    v23 = *(a4 + 20);
    v24 = *v6;
    v25 = v6[1];
    v26 = v6[2];
    v27 = v6[3];
    v28 = *(a4 + 84);
    v29 = *(a1 + 384);
    v40 = 136317955;
    v41 = "Network-Cell";
    v42 = 1024;
    v43 = 1;
    v44 = 2053;
    v45 = v21;
    v46 = 2053;
    v47 = v22;
    v48 = 2048;
    v49 = v23;
    v50 = 1024;
    v51 = v24;
    v52 = 1024;
    v53 = v25;
    v54 = 1024;
    v55 = v26;
    v56 = 1024;
    v57 = v27;
    v58 = 1024;
    v59 = v28;
    v60 = 1024;
    v61 = v29;
    v62 = 1024;
    v63 = -1;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,LAC,0x%x,CI,0x%x,Confidence,%d,Count,%d,lock,%d", &v40, 90);
    v31 = v30;
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::Cell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v30);
    if (v31 != buf)
    {
      free(v31);
    }
  }

  v18 = sub_1006E1130(a1 + 168, v6);
  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v19 = sub_1006CBCE4(v35);
    if (sub_1006AA994(*(v7 + 32), v19, a4))
    {
      ++*(a1 + 384);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v20 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      LOWORD(v40) = 0;
      LODWORD(v34) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "#Warning Location Services disabled, not storing location entry", &v40, v34);
      v33 = v32;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::Cell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v32);
      if (v33 != buf)
      {
        free(v33);
      }
    }
  }

  if ((a1 + 176) != v18)
  {
    sub_10045E8A0((a1 + 168), v18);
    operator delete(v18);
  }

  if (v39 < 0)
  {
    operator delete(__p);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }
}

void sub_1006D5E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

void sub_1006D5E48(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_10123E314(v26, a3, 0);
  sub_10007AD10(v26, -1, -1, -1, -1);
  v4 = sub_1006CBCE4(v26);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v5 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];
    *buf = 136317187;
    v50 = "Network-Cell";
    v51 = 0x805000000000400;
    *v52 = 0;
    *&v52[8] = 2053;
    *&v52[10] = 0;
    *&v52[18] = 2048;
    *&v52[20] = 0xBFF0000000000000;
    *&v52[28] = 1024;
    *&v52[30] = v6;
    *&v52[34] = 1024;
    *&v52[36] = v7;
    *&v52[40] = 1024;
    *&v52[42] = v8;
    *&v52[46] = 1024;
    LODWORD(v53) = v9;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,LAC,0x%x,CI,0x%x,", buf, 0x48u);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v17 = *v4;
    v18 = v4[1];
    v19 = v4[2];
    v20 = v4[3];
    v31 = 136317187;
    v32 = "Network-Cell";
    v33 = 1024;
    v34 = 0;
    v35 = 2053;
    v36 = 0;
    v37 = 2053;
    v38 = 0;
    v39 = 2048;
    v40 = 0xBFF0000000000000;
    v41 = 1024;
    v42 = v17;
    v43 = 1024;
    v44 = v18;
    v45 = 1024;
    v46 = v19;
    v47 = 1024;
    v48 = v20;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,LAC,0x%x,CI,0x%x,", &v31, 72);
    v22 = v21;
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::Cell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v51 = 0;
    v50 = 0;
    *v52 = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v52[16] = _Q0;
    *&v52[32] = _Q0;
    v53 = 0xBFF0000000000000;
    *buf = 0xFFFF;
    v55 = 0;
    v58 = 0;
    v56 = 0xBFF0000000000000;
    v57 = 0;
    v60 = 0xBFF0000000000000;
    v59 = 0;
    v61 = 0x7FFFFFFF;
    v64 = 0;
    v62 = 0;
    v63 = 0;
    v65 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v15 = sub_1006C5194(a1);
    sub_1006AA994(*(v15 + 32), v4, buf);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      LOWORD(v31) = 0;
      LODWORD(v25) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "#Warning Location Services disabled, not storing location entry", &v31, v25);
      v24 = v23;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::Cell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v23);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  sub_1006E13A8((a1 + 168), v4);
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }
}

void sub_1006D628C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

void sub_1006D62B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10123E998(v50, a3, 3);
  sub_10007AD10(v50, -1, -1, -1, -1);
  v7 = sub_1006CB140(v50, v6);
  sub_100621C1C(v7, __p);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v8 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a4 + 4);
    v10 = *(a4 + 12);
    v11 = *(a4 + 20);
    v12 = *v7;
    v13 = v7[58];
    v14 = v7[8];
    v15 = v7[9];
    v16 = v7[11];
    v17 = *(a4 + 84);
    v18 = *(a1 + 384);
    *buf = 136318211;
    v76 = "Network-Cell";
    v77 = 1024;
    *v78 = 1;
    *&v78[4] = 2053;
    *&v78[6] = v9;
    *&v78[14] = 2053;
    *&v78[16] = v10;
    *&v78[24] = 2048;
    *&v78[26] = v11;
    v79 = 1024;
    v80 = v12;
    v81 = 1024;
    v82 = v13;
    v83 = 1024;
    v84 = v14;
    v85 = 1024;
    v86 = v15;
    v87 = 1024;
    v88 = v16;
    v89 = 1024;
    v90 = v17;
    v91 = 1024;
    v92 = v18;
    v93 = 1024;
    v94 = -1;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,SID,%03d,NID,%03d,BSID,%03d,Confidence,%d,Count,%d,lock,%d", buf, 0x60u);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v27 = *(a4 + 4);
    v28 = *(a4 + 12);
    v29 = *(a4 + 20);
    v30 = *v7;
    v31 = v7[58];
    v32 = v7[8];
    v33 = v7[9];
    v34 = v7[11];
    v35 = *(a4 + 84);
    v36 = *(a1 + 384);
    v55 = 136318211;
    v56 = "Network-Cell";
    v57 = 1024;
    *v58 = 1;
    *&v58[4] = 2053;
    *&v58[6] = v27;
    *&v58[14] = 2053;
    *&v58[16] = v28;
    *&v58[24] = 2048;
    *&v58[26] = v29;
    v59 = 1024;
    v60 = v30;
    v61 = 1024;
    v62 = v31;
    v63 = 1024;
    v64 = v32;
    v65 = 1024;
    v66 = v33;
    v67 = 1024;
    v68 = v34;
    v69 = 1024;
    v70 = v35;
    v71 = 1024;
    v72 = v36;
    v73 = 1024;
    v74 = -1;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,SID,%03d,NID,%03d,BSID,%03d,Confidence,%d,Count,%d,lock,%d", &v55, 96);
    v38 = v37;
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCdmaCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::CdmaCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v37);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v19 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v20 = __p;
    if (v49 < 0)
    {
      v20 = __p[0];
    }

    v21 = *(a4 + 4);
    v22 = *(a4 + 12);
    v23 = *(a4 + 20);
    *buf = 136315907;
    v76 = v20;
    v77 = 2053;
    *v78 = v21;
    *&v78[8] = 2053;
    *&v78[10] = v22;
    *&v78[18] = 2048;
    *&v78[20] = v23;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "CELL_LOC: server response cell(%s) loc (%{sensitive}lf %{sensitive}lf) acc(%lf)", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v39 = __p;
    if (v49 < 0)
    {
      v39 = __p[0];
    }

    v40 = *(a4 + 4);
    v41 = *(a4 + 12);
    v42 = *(a4 + 20);
    v55 = 136315907;
    v56 = v39;
    v57 = 2053;
    *v58 = v40;
    *&v58[8] = 2053;
    *&v58[10] = v41;
    *&v58[18] = 2048;
    *&v58[20] = v42;
    LODWORD(v47) = 42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "CELL_LOC: server response cell(%s) loc (%{sensitive}lf %{sensitive}lf) acc(%lf)", &v55, v47);
    v44 = v43;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCdmaCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::CdmaCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v43);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  v24 = sub_1006E10AC(a1 + 248, v7);
  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v25 = sub_1006C52A4(a1);
    if (sub_1009433FC(*(v25 + 32), v7, a4))
    {
      ++*(a1 + 384);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v26 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      LOWORD(v55) = 0;
      LODWORD(v47) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "#Warning Location Services disabled, not storing location entry", &v55, v47);
      v46 = v45;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCdmaCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::CdmaCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v45);
      if (v46 != buf)
      {
        free(v46);
      }
    }
  }

  if ((a1 + 256) != v24)
  {
    sub_10045E8A0((a1 + 248), v24);
    sub_10064AAB8((v24 + 4));
    operator delete(v24);
  }

  if (v49 < 0)
  {
    operator delete(__p[0]);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }
}

void sub_1006D68FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10056D2F4(&a17);
  _Unwind_Resume(a1);
}

void sub_1006D6948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10123E998(v29, a3, 3);
  sub_10007AD10(v29, -1, -1, -1, -1);
  v5 = sub_1006CB140(v29, v4);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v6 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *v5;
    v8 = v5[58];
    v9 = v5[8];
    v10 = v5[9];
    v11 = v5[11];
    *buf = 136317443;
    v55 = "Network-Cell";
    v56 = 0x805000000000400;
    *v57 = 0;
    *&v57[8] = 2053;
    *&v57[10] = 0;
    *&v57[18] = 2048;
    *&v57[20] = 0xBFF0000000000000;
    *&v57[28] = 1024;
    *&v57[30] = v7;
    *&v57[34] = 1024;
    *&v57[36] = v8;
    *&v57[40] = 1024;
    *&v57[42] = v9;
    *&v57[46] = 1024;
    LODWORD(v58) = v10;
    WORD2(v58) = 1024;
    *(&v58 + 6) = v11;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,SID,%03d,NID,%03d,BSID,%03d", buf, 0x4Eu);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v19 = *v5;
    v20 = v5[58];
    v21 = v5[8];
    v22 = v5[9];
    v23 = v5[11];
    v34 = 136317443;
    v35 = "Network-Cell";
    v36 = 1024;
    v37 = 0;
    v38 = 2053;
    v39 = 0;
    v40 = 2053;
    v41 = 0;
    v42 = 2048;
    v43 = 0xBFF0000000000000;
    v44 = 1024;
    v45 = v19;
    v46 = 1024;
    v47 = v20;
    v48 = 1024;
    v49 = v21;
    v50 = 1024;
    v51 = v22;
    v52 = 1024;
    v53 = v23;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,SID,%03d,NID,%03d,BSID,%03d", &v34, 78);
    v25 = v24;
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCdmaCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::CdmaCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v24);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v56 = 0;
    v55 = 0;
    *v57 = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v57[16] = _Q0;
    *&v57[32] = _Q0;
    *&v58 = 0xBFF0000000000000;
    *buf = 0xFFFF;
    v59 = 0;
    v62 = 0;
    v60 = 0xBFF0000000000000;
    v61 = 0;
    v64 = 0xBFF0000000000000;
    v63 = 0;
    v65 = 0x7FFFFFFF;
    v68 = 0;
    v66 = 0;
    v67 = 0;
    v69 = 0;
    *(&v58 + 1) = CFAbsoluteTimeGetCurrent();
    v17 = sub_1006C52A4(a1);
    sub_1009433FC(*(v17 + 32), v5, buf);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      LOWORD(v34) = 0;
      LODWORD(v28) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "#Warning Location Services disabled, not storing location entry", &v34, v28);
      v27 = v26;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterCdmaCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::CdmaCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v26);
      if (v27 != buf)
      {
        free(v27);
      }
    }
  }

  sub_1006E13FC((a1 + 248), v5);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_1006D6DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

void sub_1006D6DD8(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  sub_10123EC40(v67, a3, 6);
  sub_10007AD10(v67, -1, -1, -1, -1);
  v7 = sub_10007513C(v67, v6);
  sub_100081198(v65);
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v10 = v66;
    v11 = v65[0];
    sub_100072AFC(a4, __p);
    v12 = v65;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if ((v101 & 0x80000000) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = *__p;
    }

    *buf = 136315395;
    *&buf[4] = v12;
    v73 = 2085;
    *v74 = v13;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CELL_LOC: server response lte cell, %s, location, %{sensitive}s", buf, 0x16u);
    if (SBYTE3(v101) < 0)
    {
      operator delete(*__p);
    }

    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(__p);
    v33 = qword_1025D4628;
    v34 = v66;
    v35 = v65[0];
    sub_100072AFC(a4, buf);
    v36 = v65;
    if (v34 < 0)
    {
      v36 = v35;
    }

    if (v74[9] >= 0)
    {
      v37 = buf;
    }

    else
    {
      v37 = *buf;
    }

    v93 = 136315395;
    v94 = v36;
    v95 = 2085;
    v96 = v37;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v33, 2, "CELL_LOC: server response lte cell, %s, location, %{sensitive}s", &v93, 22);
    v39 = v38;
    if ((v74[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v39);
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    if (v39 != __p)
    {
      free(v39);
    }
  }

  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v14 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a4 + 4);
    v16 = *(a4 + 12);
    v17 = *(a4 + 20);
    v18 = *v7;
    v19 = v7[1];
    v20 = v7[2];
    v21 = v7[3];
    v22 = *(a4 + 84);
    v23 = *(a1 + 384);
    *__p = 136317955;
    *&__p[4] = "Network-Cell";
    v98 = 1024;
    v99 = 1;
    v100 = 2053;
    v101 = v15;
    v102 = 2053;
    v103 = v16;
    v104 = 2048;
    v105 = v17;
    v106 = 1024;
    v107 = v18;
    v108 = 1024;
    v109 = v19;
    v110 = 1024;
    v111 = v20;
    v112 = 1024;
    v113 = v21;
    v114 = 1024;
    v115 = v22;
    v116 = 1024;
    v117 = v23;
    v118 = 1024;
    v119 = -1;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,TAC,0x%x,CI,0x%x,Confidence,%d,Count,%d,lock,%d", __p, 0x5Au);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(__p);
    v40 = *(a4 + 4);
    v41 = *(a4 + 12);
    v42 = *(a4 + 20);
    v43 = *v7;
    v44 = v7[1];
    v45 = v7[2];
    v46 = v7[3];
    v47 = *(a4 + 84);
    v48 = *(a1 + 384);
    *buf = 136317955;
    *&buf[4] = "Network-Cell";
    v73 = 1024;
    *v74 = 1;
    *&v74[4] = 2053;
    *&v74[6] = v40;
    v75 = 2053;
    v76 = v41;
    v77 = 2048;
    v78 = v42;
    v79 = 1024;
    v80 = v43;
    v81 = 1024;
    v82 = v44;
    v83 = 1024;
    v84 = v45;
    v85 = 1024;
    v86 = v46;
    v87 = 1024;
    v88 = v47;
    v89 = 1024;
    v90 = v48;
    v91 = 1024;
    v92 = -1;
    LODWORD(v64) = 90;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,TAC,0x%x,CI,0x%x,Confidence,%d,Count,%d,lock,%d", buf, v64);
    v50 = v49;
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v49);
    if (v50 != __p)
    {
      free(v50);
    }
  }

  v24 = sub_1006E1130(a1 + 288, v7);
  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v25 = sub_100090470(a1);
    if (sub_100CF9658(*(v25 + 32), v7, a4))
    {
      ++*(a1 + 384);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v26 = p_info[197];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(__p);
      v61 = p_info[197];
      *buf = 0;
      LODWORD(v64) = 2;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v61, 0, "#Warning Location Services disabled, not storing location entry", buf, v64);
      v63 = v62;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v62);
      if (v63 != __p)
      {
        free(v63);
      }
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v27 = p_info[197];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = *(a1 + 304);
    sub_100081198(__p);
    v29 = (v101 & 0x80000000) == 0 ? __p : *__p;
    *buf = 134218242;
    *&buf[4] = v28;
    v73 = 2080;
    *v74 = v29;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "NETWORK: pending, known, before, %lu, cell, %s", buf, 0x16u);
    if (SBYTE3(v101) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(__p);
    v51 = p_info[197];
    v52 = *(a1 + 304);
    sub_100081198(buf);
    if (v74[9] >= 0)
    {
      v53 = buf;
    }

    else
    {
      v53 = *buf;
    }

    v93 = 134218242;
    v94 = v52;
    v95 = 2080;
    v96 = v53;
    LODWORD(v64) = 22;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v51, 2, "NETWORK: pending, known, before, %lu, cell, %s", &v93, v64);
    v55 = v54;
    if ((v74[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v55);
    if (v55 != __p)
    {
      free(v55);
    }
  }

  if ((a1 + 296) != v24)
  {
    sub_10045E8A0((a1 + 288), v24);
    operator delete(v24);
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v30 = p_info[197];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = *(a1 + 304);
    sub_100081198(__p);
    v32 = (v101 & 0x80000000) == 0 ? __p : *__p;
    *buf = 134218242;
    *&buf[4] = v31;
    v73 = 2080;
    *v74 = v32;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "NETWORK: pending, known, after, %lu, cell, %s", buf, 0x16u);
    if (SBYTE3(v101) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(__p);
    v56 = p_info[197];
    v57 = *(a1 + 304);
    sub_100081198(buf);
    if (v74[9] >= 0)
    {
      v58 = buf;
    }

    else
    {
      v58 = *buf;
    }

    v93 = 134218242;
    v94 = v57;
    v95 = 2080;
    v96 = v58;
    LODWORD(v64) = 22;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v56, 2, "NETWORK: pending, known, after, %lu, cell, %s", &v93, v64);
    v60 = v59;
    if ((v74[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v60);
    if (v60 != __p)
    {
      free(v60);
    }
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }
}

void sub_1006D7758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10056D2F4(&a17);
  _Unwind_Resume(a1);
}

void sub_1006D77C4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  sub_10123EC40(v43, a3, 6);
  sub_10007AD10(v43, -1, -1, -1, -1);
  v5 = sub_10007513C(v43, v4);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v6 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *v5;
    v8 = v5[1];
    v9 = v5[2];
    v10 = v5[3];
    *buf = 136317187;
    *&buf[4] = "Network-Cell";
    v68 = 0x805000000000400;
    *v69 = 0;
    *&v69[8] = 2053;
    *&v69[10] = 0;
    *&v69[18] = 2048;
    *&v69[20] = 0xBFF0000000000000;
    *&v69[28] = 1024;
    *&v69[30] = v7;
    *&v69[34] = 1024;
    *&v69[36] = v8;
    *&v69[40] = 1024;
    *&v69[42] = v9;
    *&v69[46] = 1024;
    LODWORD(v70) = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,TAC,0x%x,CI,0x%x,", buf, 0x48u);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v24 = *v5;
    v25 = v5[1];
    v26 = v5[2];
    v27 = v5[3];
    *v52 = 136317187;
    *&v52[4] = "Network-Cell";
    v53 = 1024;
    *v54 = 0;
    *&v54[4] = 2053;
    *&v54[6] = 0;
    v55 = 2053;
    v56 = 0;
    v57 = 2048;
    v58 = 0xBFF0000000000000;
    v59 = 1024;
    v60 = v24;
    v61 = 1024;
    v62 = v25;
    v63 = 1024;
    v64 = v26;
    v65 = 1024;
    v66 = v27;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,TAC,0x%x,CI,0x%x,", v52, 72);
    v29 = v28;
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v28);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v68 = 0;
    *&buf[4] = 0;
    *v69 = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v69[16] = _Q0;
    *&v69[32] = _Q0;
    v70 = _Q0;
    *buf = 0xFFFF;
    v71 = 0;
    v74 = 0;
    v72 = 0xBFF0000000000000;
    v73 = 0;
    v76 = 0xBFF0000000000000;
    v75 = 0;
    v77 = 0x7FFFFFFF;
    v80 = 0;
    v78 = 0;
    v79 = 0;
    v81 = 0;
    *(&v70 + 1) = CFAbsoluteTimeGetCurrent();
    v16 = sub_100090470(a1);
    sub_100CF9658(*(v16 + 32), v5, buf);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      *v52 = 0;
      LODWORD(v42) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "#Warning Location Services disabled, not storing location entry", v52, v42);
      v41 = v40;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v40);
      if (v41 != buf)
      {
        free(v41);
      }
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v18 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 304);
    sub_100081198(buf);
    v20 = v69[3] >= 0 ? buf : *buf;
    *v52 = 134218242;
    *&v52[4] = v19;
    v53 = 2080;
    *v54 = v20;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "NETWORK: pending, unknown, before, %lu, cell, %s", v52, 0x16u);
    if ((v69[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v30 = qword_1025D4628;
    v31 = *(a1 + 304);
    sub_100081198(v52);
    if (v54[9] >= 0)
    {
      v32 = v52;
    }

    else
    {
      v32 = *v52;
    }

    v48 = 134218242;
    v49 = v31;
    v50 = 2080;
    v51 = v32;
    LODWORD(v42) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v30, 2, "NETWORK: pending, unknown, before, %lu, cell, %s", &v48, v42);
    v34 = v33;
    if ((v54[9] & 0x80000000) != 0)
    {
      operator delete(*v52);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v34);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  sub_1006E13A8((a1 + 288), v5);
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v21 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 304);
    sub_100081198(buf);
    v23 = v69[3] >= 0 ? buf : *buf;
    *v52 = 134218242;
    *&v52[4] = v22;
    v53 = 2080;
    *v54 = v23;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "NETWORK: pending, unknown, after, %lu, cell, %s", v52, 0x16u);
    if ((v69[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v35 = qword_1025D4628;
    v36 = *(a1 + 304);
    sub_100081198(v52);
    if (v54[9] >= 0)
    {
      v37 = v52;
    }

    else
    {
      v37 = *v52;
    }

    v48 = 134218242;
    v49 = v36;
    v50 = 2080;
    v51 = v37;
    LODWORD(v42) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v35, 2, "NETWORK: pending, unknown, after, %lu, cell, %s", &v48, v42);
    v39 = v38;
    if ((v54[9] & 0x80000000) != 0)
    {
      operator delete(*v52);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterLteCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::LteCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v39);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  if (v47 < 0)
  {
    operator delete(__p);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }
}

void sub_1006D7F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

void sub_1006D7F78(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  sub_10123EEDC(v67, a3, 10);
  sub_10007AD10(v67, -1, -1, -1, -1);
  v7 = sub_100681E80(v67, v6);
  sub_10062233C(v65);
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v10 = v66;
    v11 = v65[0];
    sub_100072AFC(a4, __p);
    v12 = v65;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if ((v101 & 0x80000000) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = *__p;
    }

    *buf = 136315395;
    *&buf[4] = v12;
    v73 = 2085;
    *v74 = v13;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CELL_LOC: server response nr cell, %s, location, %{sensitive}s", buf, 0x16u);
    if (SBYTE3(v101) < 0)
    {
      operator delete(*__p);
    }

    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(__p);
    v33 = qword_1025D4628;
    v34 = v66;
    v35 = v65[0];
    sub_100072AFC(a4, buf);
    v36 = v65;
    if (v34 < 0)
    {
      v36 = v35;
    }

    if (v74[9] >= 0)
    {
      v37 = buf;
    }

    else
    {
      v37 = *buf;
    }

    v93 = 136315395;
    v94 = v36;
    v95 = 2085;
    v96 = v37;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v33, 2, "CELL_LOC: server response nr cell, %s, location, %{sensitive}s", &v93, 22);
    v39 = v38;
    if ((v74[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v39);
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    if (v39 != __p)
    {
      free(v39);
    }
  }

  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v14 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a4 + 4);
    v16 = *(a4 + 12);
    v17 = *(a4 + 20);
    v18 = *v7;
    v19 = *(v7 + 4);
    v20 = *(v7 + 8);
    v21 = *(v7 + 16);
    v22 = *(a4 + 84);
    v23 = *(a1 + 384);
    *__p = 136317955;
    *&__p[4] = "Network-Cell";
    v98 = 1024;
    v99 = 1;
    v100 = 2053;
    v101 = v15;
    v102 = 2053;
    v103 = v16;
    v104 = 2048;
    v105 = v17;
    v106 = 1024;
    v107 = v18;
    v108 = 1024;
    v109 = v19;
    v110 = 1024;
    v111 = v20;
    v112 = 2048;
    v113 = v21;
    v114 = 1024;
    v115 = v22;
    v116 = 1024;
    v117 = v23;
    v118 = 1024;
    v119 = -1;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,TAC,0x%x,CI,0x%llx,Confidence,%d,Count,%d,lock,%d", __p, 0x5Eu);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(__p);
    v40 = *(a4 + 4);
    v41 = *(a4 + 12);
    v42 = *(a4 + 20);
    v43 = *v7;
    v44 = *(v7 + 4);
    v45 = *(v7 + 8);
    v46 = *(v7 + 16);
    v47 = *(a4 + 84);
    v48 = *(a1 + 384);
    *buf = 136317955;
    *&buf[4] = "Network-Cell";
    v73 = 1024;
    *v74 = 1;
    *&v74[4] = 2053;
    *&v74[6] = v40;
    v75 = 2053;
    v76 = v41;
    v77 = 2048;
    v78 = v42;
    v79 = 1024;
    v80 = v43;
    v81 = 1024;
    v82 = v44;
    v83 = 1024;
    v84 = v45;
    v85 = 2048;
    v86 = v46;
    v87 = 1024;
    v88 = v47;
    v89 = 1024;
    v90 = v48;
    v91 = 1024;
    v92 = -1;
    LODWORD(v64) = 94;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,TAC,0x%x,CI,0x%llx,Confidence,%d,Count,%d,lock,%d", buf, v64);
    v50 = v49;
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v49);
    if (v50 != __p)
    {
      free(v50);
    }
  }

  v24 = sub_1006E11B4(a1 + 328, v7);
  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v25 = sub_1006C53B4(a1);
    if (sub_1007F551C(*(v25 + 32), v7, a4))
    {
      ++*(a1 + 384);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v26 = p_info[197];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(__p);
      v61 = p_info[197];
      *buf = 0;
      LODWORD(v64) = 2;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v61, 0, "#Warning Location Services disabled, not storing location entry", buf, v64);
      v63 = v62;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v62);
      if (v63 != __p)
      {
        free(v63);
      }
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v27 = p_info[197];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = *(a1 + 344);
    sub_10062233C(__p);
    v29 = (v101 & 0x80000000) == 0 ? __p : *__p;
    *buf = 134218242;
    *&buf[4] = v28;
    v73 = 2080;
    *v74 = v29;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "NETWORK: pending, known, before, %lu, cell, %s", buf, 0x16u);
    if (SBYTE3(v101) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(__p);
    v51 = p_info[197];
    v52 = *(a1 + 344);
    sub_10062233C(buf);
    if (v74[9] >= 0)
    {
      v53 = buf;
    }

    else
    {
      v53 = *buf;
    }

    v93 = 134218242;
    v94 = v52;
    v95 = 2080;
    v96 = v53;
    LODWORD(v64) = 22;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v51, 2, "NETWORK: pending, known, before, %lu, cell, %s", &v93, v64);
    v55 = v54;
    if ((v74[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v55);
    if (v55 != __p)
    {
      free(v55);
    }
  }

  if ((a1 + 336) != v24)
  {
    sub_10045E8A0((a1 + 328), v24);
    operator delete(v24);
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v30 = p_info[197];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = *(a1 + 344);
    sub_10062233C(__p);
    v32 = (v101 & 0x80000000) == 0 ? __p : *__p;
    *buf = 134218242;
    *&buf[4] = v31;
    v73 = 2080;
    *v74 = v32;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "NETWORK: pending, known, after, %lu, cell, %s", buf, 0x16u);
    if (SBYTE3(v101) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(__p);
    v56 = p_info[197];
    v57 = *(a1 + 344);
    sub_10062233C(buf);
    if (v74[9] >= 0)
    {
      v58 = buf;
    }

    else
    {
      v58 = *buf;
    }

    v93 = 134218242;
    v94 = v57;
    v95 = 2080;
    v96 = v58;
    LODWORD(v64) = 22;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v56, 2, "NETWORK: pending, known, after, %lu, cell, %s", &v93, v64);
    v60 = v59;
    if ((v74[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocation(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, const CLDaemonLocation &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v60);
    if (v60 != __p)
    {
      free(v60);
    }
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }
}

void sub_1006D8900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10056D2F4(&a17);
  _Unwind_Resume(a1);
}

void sub_1006D896C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  sub_10123EEDC(v43, a3, 10);
  sub_10007AD10(v43, -1, -1, -1, -1);
  v5 = sub_100681E80(v43, v4);
  if (qword_1025D48C0 != -1)
  {
    sub_10190DA2C();
  }

  v6 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *v5;
    v8 = *(v5 + 4);
    v9 = *(v5 + 8);
    v10 = *(v5 + 16);
    *buf = 136317187;
    *&buf[4] = "Network-Cell";
    v68 = 0x805000000000400;
    *v69 = 0;
    *&v69[8] = 2053;
    *&v69[10] = 0;
    *&v69[18] = 2048;
    *&v69[20] = 0xBFF0000000000000;
    *&v69[28] = 1024;
    *&v69[30] = v7;
    *&v69[34] = 1024;
    *&v69[36] = v8;
    *&v69[40] = 1024;
    *&v69[42] = v9;
    *&v69[46] = 2048;
    *&v70 = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,TAC,0x%x,CI,0x%llx,", buf, 0x4Cu);
  }

  if (sub_10000A100(123, 2))
  {
    sub_10190DA54(buf);
    v24 = *v5;
    v25 = *(v5 + 4);
    v26 = *(v5 + 8);
    v27 = *(v5 + 16);
    *v52 = 136317187;
    *&v52[4] = "Network-Cell";
    v53 = 1024;
    *v54 = 0;
    *&v54[4] = 2053;
    *&v54[6] = 0;
    v55 = 2053;
    v56 = 0;
    v57 = 2048;
    v58 = 0xBFF0000000000000;
    v59 = 1024;
    v60 = v24;
    v61 = 1024;
    v62 = v25;
    v63 = 1024;
    v64 = v26;
    v65 = 2048;
    v66 = v27;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,MCC,%03d,MNC,%03d,TAC,0x%x,CI,0x%llx,", v52, 76);
    v29 = v28;
    sub_100152C7C("LOCATION", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v28);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    v68 = 0;
    *&buf[4] = 0;
    *v69 = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v69[16] = _Q0;
    *&v69[32] = _Q0;
    v70 = _Q0;
    *buf = 0xFFFF;
    v71 = 0;
    v74 = 0;
    v72 = 0xBFF0000000000000;
    v73 = 0;
    v76 = 0xBFF0000000000000;
    v75 = 0;
    v77 = 0x7FFFFFFF;
    v80 = 0;
    v78 = 0;
    v79 = 0;
    v81 = 0;
    *(&v70 + 1) = CFAbsoluteTimeGetCurrent();
    v16 = sub_1006C53B4(a1);
    sub_1007F551C(*(v16 + 32), v5, buf);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entry", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      *v52 = 0;
      LODWORD(v42) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "#Warning Location Services disabled, not storing location entry", v52, v42);
      v41 = v40;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v40);
      if (v41 != buf)
      {
        free(v41);
      }
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v18 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 344);
    sub_10062233C(buf);
    v20 = v69[3] >= 0 ? buf : *buf;
    *v52 = 134218242;
    *&v52[4] = v19;
    v53 = 2080;
    *v54 = v20;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "NETWORK: pending, unknown, before, %lu, cell, %s", v52, 0x16u);
    if ((v69[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v30 = qword_1025D4628;
    v31 = *(a1 + 344);
    sub_10062233C(v52);
    if (v54[9] >= 0)
    {
      v32 = v52;
    }

    else
    {
      v32 = *v52;
    }

    v48 = 134218242;
    v49 = v31;
    v50 = 2080;
    v51 = v32;
    LODWORD(v42) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v30, 2, "NETWORK: pending, unknown, before, %lu, cell, %s", &v48, v42);
    v34 = v33;
    if ((v54[9] & 0x80000000) != 0)
    {
      operator delete(*v52);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v34);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  sub_1006E1458((a1 + 328), v5);
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v21 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 344);
    sub_10062233C(buf);
    v23 = v69[3] >= 0 ? buf : *buf;
    *v52 = 134218242;
    *&v52[4] = v22;
    v53 = 2080;
    *v54 = v23;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "NETWORK: pending, unknown, after, %lu, cell, %s", v52, 0x16u);
    if ((v69[3] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v35 = qword_1025D4628;
    v36 = *(a1 + 344);
    sub_10062233C(v52);
    if (v54[9] >= 0)
    {
      v37 = v52;
    }

    else
    {
      v37 = *v52;
    }

    v48 = 134218242;
    v49 = v36;
    v50 = 2080;
    v51 = v37;
    LODWORD(v42) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v35, 2, "NETWORK: pending, unknown, after, %lu, cell, %s", &v48, v42);
    v39 = v38;
    if ((v54[9] & 0x80000000) != 0)
    {
      operator delete(*v52);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterNrCellLocationUnknown(CLNetworkLocationRequester *, const CLTelephonyService_Type::NrCell &, CLNetworkLocationRequester::RequestType, int)", "%s\n", v39);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  if (v47 < 0)
  {
    operator delete(__p);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }
}

void sub_1006D90E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

void sub_1006D9128(uint64_t a1, uint64_t a2, uint64_t a3, __int128 **a4, int a5, int a6, int a7)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v11 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 0xD37A6F4DE9BD37A7 * ((*(a3 + 8) - *a3) >> 3);
    v13 = 0xD37A6F4DE9BD37A7 * ((a4[1] - *a4) >> 3);
    *buf = 134349312;
    *v98 = v12;
    *&v98[8] = 2050;
    *&v98[10] = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "AlsWifi, seriesComplete, known, %{public}lu, unknown, %{public}lu", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190DA98();
  }

  v83 = (*(**(a1 + 112) + 32))(*(a1 + 112));
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v14 = *(a1 + 400);
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = a1 + 400;
  do
  {
    if (*(v14 + 32) >= a6)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * (*(v14 + 32) < a6));
  }

  while (v14);
  if (v15 == a1 + 400 || *(v15 + 32) > a6)
  {
LABEL_14:
    if (a5 != 1)
    {
      *buf = -1;
      sub_1006E0068(&v91, buf, v98, 1uLL);
      goto LABEL_16;
    }

    sub_10190DE3C(buf);
    v72 = *buf;
LABEL_104:
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Network/CLNetworkLocationProvider.mm", v72, "onLocationRequesterWifiLocationSeriesComplete");
    goto LABEL_106;
  }

  if (&v91 != (v15 + 40))
  {
    sub_100731D80(&v91, *(v15 + 40), *(v15 + 48), (*(v15 + 48) - *(v15 + 40)) >> 2);
  }

  sub_1006E14AC((a1 + 392), v15);
  if (v92 == v91)
  {
    if (qword_1025D4640 != -1)
    {
      sub_10190DBC0();
    }

    v75 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v98 = 0;
      *&v98[4] = 2082;
      *&v98[6] = "";
      *&v98[14] = 2082;
      *&v98[16] = "assert";
      *&v98[24] = 2081;
      v99 = "fenceKeys.size() > 0";
      _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:At least one fence key required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4640 != -1)
      {
        sub_10190DBC0();
      }
    }

    v76 = off_1025D4648;
    if (os_signpost_enabled(off_1025D4648))
    {
      *buf = 68289539;
      *v98 = 0;
      *&v98[4] = 2082;
      *&v98[6] = "";
      *&v98[14] = 2082;
      *&v98[16] = "assert";
      *&v98[24] = 2081;
      v99 = "fenceKeys.size() > 0";
      _os_signpost_emit_with_name_impl(dword_100000000, v76, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "At least one fence key required", "{msg%{public}.0s:At least one fence key required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4640 != -1)
      {
        sub_10190DBC0();
      }
    }

    v77 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v98 = 0;
      *&v98[4] = 2082;
      *&v98[6] = "";
      *&v98[14] = 2082;
      *&v98[16] = "assert";
      *&v98[24] = 2081;
      v99 = "fenceKeys.size() > 0";
      _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_INFO, "{msg%{public}.0s:At least one fence key required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v72 = 2290;
    goto LABEL_104;
  }

  if (qword_1025D4640 != -1)
  {
    sub_10190DBC0();
  }

  v67 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v68 = *(a1 + 408);
    *buf = 134283777;
    *v98 = v68;
    *&v98[8] = 2049;
    *&v98[10] = (v92 - v91) >> 2;
    _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_DEBUG, "AlsWifi, seriesComplete, tags remain, %{private}zu, keys, %{private}zu", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190DBE8(buf);
    v69 = *(a1 + 408);
    LODWORD(v94.__r_.__value_.__l.__data_) = 134283777;
    *(v94.__r_.__value_.__r.__words + 4) = v69;
    WORD2(v94.__r_.__value_.__r.__words[1]) = 2049;
    *(&v94.__r_.__value_.__r.__words[1] + 6) = (v92 - v91) >> 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "AlsWifi, seriesComplete, tags remain, %{private}zu, keys, %{private}zu", &v94, 22);
    v71 = v70;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterWifiLocationSeriesComplete(CLNetworkLocationRequester *, const std::vector<CLAlsWifiAccessPoint> &, const std::vector<CLAlsWifiAccessPoint> &, CLNetworkLocationRequester::RequestType, int, CLNetworkLocationRequest_Type::CLAlsWifiBand)", "%s\n", v70);
    if (v71 != buf)
    {
      free(v71);
    }
  }

LABEL_16:
  if (v83)
  {
    v16 = *(a1 + 584);
    if (v16 != (a1 + 592))
    {
      do
      {
        v17 = v16[4];
        v89 = 0;
        v90 = 0;
        __p = 0;
        sub_10064A838(&__p, *a3, *(a3 + 8), 0xD37A6F4DE9BD37A7 * ((*(a3 + 8) - *a3) >> 3));
        (*(*v17 + 24))(v17, &__p, a5 == 1);
        if (__p)
        {
          v89 = __p;
          operator delete(__p);
        }

        v18 = v16[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v16[2];
            v20 = *v19 == v16;
            v16 = v19;
          }

          while (!v20);
        }

        v16 = v19;
      }

      while (v19 != (a1 + 592));
    }
  }

  __src = 0;
  v86 = 0;
  v87 = 0;
  v22 = *a3;
  v21 = *(a3 + 8);
  if (*a3 == v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0;
    do
    {
      if (a1 + 424 == sub_100198C70(a1 + 416, v22 + 22))
      {
        if ((v22[40] - 1) >= 0xE)
        {
          if (qword_1025D4630 != -1)
          {
            sub_10190DC2C();
          }

          v24 = qword_1025D4638;
          if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
          {
            sub_1000ECD9C(&v94);
            v25 = &v94;
            if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v25 = v94.__r_.__value_.__r.__words[0];
            }

            v26 = v22[40];
            v27 = *(a1 + 120);
            *buf = 136315906;
            *v98 = v25;
            *&v98[8] = 1024;
            *&v98[10] = v26;
            *&v98[14] = 1024;
            *&v98[16] = a5 == 1;
            *&v98[20] = 1024;
            *&v98[22] = v27;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "Extra 5GHz #als response, mac, %s, channel, %d, isNearbyQuery, %d, fDataProtectionEnabled, %d", buf, 0x1Eu);
            if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v94.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_10190DC54(buf);
            v55 = qword_1025D4638;
            sub_1000ECD9C(&v84);
            v56 = &v84;
            if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v56 = v84.__r_.__value_.__r.__words[0];
            }

            v57 = v22[40];
            v58 = *(a1 + 120);
            LODWORD(v94.__r_.__value_.__l.__data_) = 136315906;
            *(v94.__r_.__value_.__r.__words + 4) = v56;
            WORD2(v94.__r_.__value_.__r.__words[1]) = 1024;
            *(&v94.__r_.__value_.__r.__words[1] + 6) = v57;
            WORD1(v94.__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(v94.__r_.__value_.__r.__words[2]) = a5 == 1;
            v95 = 1024;
            v96 = v58;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v55, 2, "Extra 5GHz #als response, mac, %s, channel, %d, isNearbyQuery, %d, fDataProtectionEnabled, %d", &v94, 30, v79, v80);
            v60 = v59;
            if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v84.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterWifiLocationSeriesComplete(CLNetworkLocationRequester *, const std::vector<CLAlsWifiAccessPoint> &, const std::vector<CLAlsWifiAccessPoint> &, CLNetworkLocationRequester::RequestType, int, CLNetworkLocationRequest_Type::CLAlsWifiBand)", "%s\n", v60);
            if (v60 != buf)
            {
              free(v60);
            }
          }
        }
      }

      else
      {
        ++v23;
      }

      v28 = v86;
      if (v86 >= v87)
      {
        v39 = __src;
        v40 = v86 - __src;
        v41 = 0xD37A6F4DE9BD37A7 * ((v86 - __src) >> 3);
        v42 = v41 + 1;
        if (v41 + 1 > 0x1642C8590B21642)
        {
          sub_10028C64C();
        }

        if (0xA6F4DE9BD37A6F4ELL * ((v87 - __src) >> 3) > v42)
        {
          v42 = 0xA6F4DE9BD37A6F4ELL * ((v87 - __src) >> 3);
        }

        if (0xD37A6F4DE9BD37A7 * ((v87 - __src) >> 3) >= 0xB21642C8590B21)
        {
          v42 = 0x1642C8590B21642;
        }

        if (v42)
        {
          sub_10064A6B8(&__src, v42);
        }

        v43 = 8 * ((v86 - __src) >> 3);
        v44 = *v22;
        v45 = *(v22 + 1);
        v46 = *(v22 + 3);
        *(v43 + 32) = *(v22 + 2);
        *(v43 + 48) = v46;
        *v43 = v44;
        *(v43 + 16) = v45;
        v47 = *(v22 + 4);
        v48 = *(v22 + 5);
        v49 = *(v22 + 7);
        *(v43 + 96) = *(v22 + 6);
        *(v43 + 112) = v49;
        *(v43 + 64) = v47;
        *(v43 + 80) = v48;
        v50 = *(v22 + 8);
        v51 = *(v22 + 9);
        v52 = *(v22 + 10);
        *(v43 + 176) = *(v22 + 22);
        *(v43 + 144) = v51;
        *(v43 + 160) = v52;
        *(v43 + 128) = v50;
        v38 = 184 * v41 + 184;
        v53 = (184 * v41 - v40);
        memcpy((v43 - v40), v39, v40);
        v54 = __src;
        __src = v53;
        v86 = v38;
        v87 = 0;
        if (v54)
        {
          operator delete(v54);
        }
      }

      else
      {
        v29 = *v22;
        v30 = *(v22 + 1);
        v31 = *(v22 + 3);
        *(v86 + 2) = *(v22 + 2);
        *(v28 + 3) = v31;
        *v28 = v29;
        *(v28 + 1) = v30;
        v32 = *(v22 + 4);
        v33 = *(v22 + 5);
        v34 = *(v22 + 7);
        *(v28 + 6) = *(v22 + 6);
        *(v28 + 7) = v34;
        *(v28 + 4) = v32;
        *(v28 + 5) = v33;
        v35 = *(v22 + 8);
        v36 = *(v22 + 9);
        v37 = *(v22 + 10);
        *(v28 + 22) = *(v22 + 22);
        *(v28 + 9) = v36;
        *(v28 + 10) = v37;
        *(v28 + 8) = v35;
        v38 = (v28 + 184);
      }

      v86 = v38;
      v22 += 46;
    }

    while (v22 != v21);
  }

  sub_1006D9D94(&__src);
  sub_1006E01CC(buf, *a4, a4[1], &__src);
  if (v83 == 1)
  {
    if (v23)
    {
      sub_10126466C(*(a1 + 672), v23);
    }

    v61 = *(a1 + 672);
    Current_2 = j__CFAbsoluteTimeGetCurrent_2();
    v63 = sub_101261454(v61, &__src, &v91, a7, Current_2);
    if (v63)
    {
      if (0xD37A6F4DE9BD37A7 * ((v86 - __src) >> 3) == v63)
      {
        *(a1 + 388) -= 373475417 * ((*(a3 + 8) - *a3) >> 3);
        goto LABEL_70;
      }

      sub_10190DC98();
      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Network/CLNetworkLocationProvider.mm", 2330, "onLocationRequesterWifiLocationSeriesComplete");
LABEL_106:
      __break(1u);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v64 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not storing location entries", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      LOWORD(v94.__r_.__value_.__l.__data_) = 0;
      LODWORD(v78) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "#Warning Location Services disabled, not storing location entries", &v94, v78);
      v74 = v73;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterWifiLocationSeriesComplete(CLNetworkLocationRequester *, const std::vector<CLAlsWifiAccessPoint> &, const std::vector<CLAlsWifiAccessPoint> &, CLNetworkLocationRequester::RequestType, int, CLNetworkLocationRequest_Type::CLAlsWifiBand)", "%s\n", v73);
      if (v74 != buf)
      {
        free(v74);
      }
    }
  }

LABEL_70:
  v65 = __src;
  v66 = v86;
  if (__src != v86)
  {
    do
    {
      sub_1006E14F0((a1 + 416), v65 + 22);
      v65 += 184;
    }

    while (v65 != v66);
    v65 = __src;
  }

  if (v65)
  {
    v86 = v65;
    operator delete(v65);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }
}

void sub_1006D9D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006D9D94(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_10064A6B8(a1, 0xD37A6F4DE9BD37A7 * (v4 >> 3));
    }

    v6 = 0;
    if (0xD37A6F4DE9BD37A7 * (v3 >> 3))
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = (v7 - v8);
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_1006D9E88(int *a1, uint64_t a2, double *a3, const __CFDictionary *a4)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[144];
    LODWORD(v10) = 67109120;
    HIDWORD(v10) = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "NETWORK: stats: onLocationRequesterResponse, %d", &v10, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190E010(a1);
  }

  ++a1[144];
  v10 = 0;
  result = sub_1004E801C(a4, a3, &v10);
  if (result)
  {
    return TMSetSourceTime();
  }

  return result;
}

void sub_1006D9FAC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v18[3] = a3;
  v19 = a4;
  v18[0] = a4;
  v5 = (*(**(a1 + 112) + 16))(*(a1 + 112), a2);
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 352);
    *buf = 67240448;
    v21 = v5;
    v22 = 1026;
    v23 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Notice NETWORK: no response from server, reachability, %{public}d, queryRetries, %{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190E0FC();
  }

  if (sub_100071CA0())
  {
    sub_10004FD18();
    sub_10004345C(buf, "queryFailed", &v19);
    v17 = *(a1 + 184);
    sub_10004345C(buf, "p1", &v17);
    v17 = *(a1 + 264);
    sub_10004345C(buf, "p2", &v17);
    v17 = *(a1 + 304);
    sub_10004345C(buf, "p3", &v17);
    v17 = *(a1 + 432);
    sub_10004345C(buf, "p4", &v17);
    v17 = *(a1 + 344);
    sub_10004345C(buf, "p5", &v17);
    sub_100071CAC(buf, "locationd");
    sub_100005DA4();
  }

  if (v19 == *(a1 + 528))
  {
    *(a1 + 528) = -1;
  }

  sub_10026ED10(a1 + 464);
  Current = CFAbsoluteTimeGetCurrent();
  v9 = (a1 + 352);
  if (*(a1 + 352) > 4)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v15 = *v9;
      *buf = 67109376;
      v21 = v15;
      v22 = 1024;
      v23 = 5;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "NETWORK: retry count %d exceeded %d - not retrying", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190E20C();
    }

    sub_1006DA480(a1);
    sub_10018646C(a1, "max.retries");
    *buf = 3;
    (*(*a1 + 152))(a1, buf, v18, 0, 0xFFFFFFFFLL, 0);
  }

  else if (v5)
  {
    v10 = Current;
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v12 = *v9;
      *buf = 67109376;
      v21 = v12;
      v22 = 1024;
      v23 = 5;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "NETWORK: retry query, %d, %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190E310();
    }

    v13 = *v9;
    if (!*v9)
    {
      *(a1 + 360) = v10;
    }

    *(a1 + 352) = v13 + 1;
    sub_100185DCC(a1, "retry.query");
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "NETWORK: data reachability is not available - not retrying", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190E414();
    }

    sub_1006DA480(a1);
    *(a1 + 352) = 5;
    sub_10018646C(a1, "no.data.reachability");
    *buf = 3;
    (*(*a1 + 152))(a1, buf, v18, 0, 0xFFFFFFFFLL, 0);
  }

  *(a1 + 384) = 0;
}

void sub_1006DA480(uint64_t a1)
{
  v2 = (a1 + 184);
  if (*(a1 + 184) > 0x3BuLL || *(a1 + 224) > 0x3BuLL || *(a1 + 264) > 0x3BuLL || *(a1 + 304) > 0x3BuLL || *(a1 + 432) > 0x3BuLL || *(a1 + 344) >= 0x3CuLL)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 184);
      v5 = *(a1 + 224);
      v6 = *(a1 + 264);
      v7 = *(a1 + 304);
      v8 = *(a1 + 432);
      v9 = *(a1 + 344);
      v17 = 134219520;
      v18 = v4;
      v19 = 2048;
      v20 = v5;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v7;
      v25 = 2048;
      v26 = v8;
      v27 = 2048;
      v28 = v9;
      v29 = 1024;
      v30 = 60;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "trimming pending gsm, %lu, scdma, %lu, cdma, %lu, lte, %lu, wifis, %lu, nr, %lu, to, %d", &v17, 0x44u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190E4F8();
    }

    if (*v2 >= 0x3D)
    {
      v10 = v2 - 2;
      do
      {
        v11 = *v10;
        sub_10045E8A0(v2 - 2, *v10);
        operator delete(v11);
      }

      while (*v2 > 0x3C);
    }

    if (*(a1 + 224) >= 0x3DuLL)
    {
      do
      {
        v12 = *(a1 + 208);
        sub_10045E8A0((a1 + 208), v12);
        operator delete(v12);
      }

      while (*(a1 + 224) > 0x3CuLL);
    }

    if (*(a1 + 264) >= 0x3DuLL)
    {
      do
      {
        v13 = *(a1 + 248);
        sub_10045E8A0((a1 + 248), v13);
        sub_10064AAB8((v13 + 4));
        operator delete(v13);
      }

      while (*(a1 + 264) > 0x3CuLL);
    }

    if (*(a1 + 304) >= 0x3DuLL)
    {
      do
      {
        v14 = *(a1 + 288);
        sub_10045E8A0((a1 + 288), v14);
        operator delete(v14);
      }

      while (*(a1 + 304) > 0x3CuLL);
    }

    if (*(a1 + 432) >= 0x3DuLL)
    {
      do
      {
        v15 = *(a1 + 416);
        sub_10045E8A0((a1 + 416), v15);
        operator delete(v15);
      }

      while (*(a1 + 432) > 0x3CuLL);
    }

    if (*(a1 + 344) >= 0x3DuLL)
    {
      do
      {
        v16 = *(a1 + 328);
        sub_10045E8A0((a1 + 328), v16);
        operator delete(v16);
      }

      while (*(a1 + 344) > 0x3CuLL);
    }
  }
}

uint64_t sub_1006DA72C(void *a1, uint64_t a2, int a3, int a4)
{
  v12 = a4;
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "NETWORK: query failed for nearbys - not retrying", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190E870();
  }

  a1[48] = 0;
  *buf = a4;
  v11 = a3;
  sub_1006E2070((a1 + 49), &v12);
  v9 = 3;
  (*(*a1 + 152))(a1, &v9, buf, 0, 0xFFFFFFFFLL, 0);
  return sub_10026ED10((a1 + 58));
}

void sub_1006DA83C(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  v6 = a1[97];
  v11[0] = a4;
  v11[1] = v6;
  v7 = a1[96];
  v11[2] = v7;
  v11[3] = a3;
  if (a1[132] == a4)
  {
    a1[132] = -1;
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v18 = a4;
    v19 = 1024;
    v20 = v7;
    v21 = 1024;
    v22 = v6;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "NETWORK: query: finished, tag, %d, cells, %d, wifis, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v12[0] = 67109632;
    v12[1] = a4;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "NETWORK: query: finished, tag, %d, cells, %d, wifis, %d", v12, 20, v11[0]);
    v10 = v9;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onLocationRequesterFinished(CLNetworkLocationRequester *, CLNetworkLocationRequester::RequestType, int)", "%s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  a1[88] = 0;
  if (a1[96] >= 1)
  {
    *buf = 0;
    (*(*a1 + 152))(a1, buf, v11, 0, 0xFFFFFFFFLL, 0);
    a1[96] = 0;
  }

  if (a1[97] > 0)
  {
    *buf = 1;
    (*(*a1 + 152))(a1, buf, v11, 0, 0xFFFFFFFFLL, 0);
    a1[97] = 0;
  }

  *buf = 2;
  (*(*a1 + 152))(a1, buf, v11, 0, 0xFFFFFFFFLL, 0);
  sub_10026ED10((a1 + 116));
  sub_10010DA40(a1, "onLocationRequesterFinished");
}

void sub_1006DAB30(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  if (*a3 == 16)
  {
    (*(**(a1 + 448) + 48))(*(a1 + 448), a2);
    (*(**(a1 + 448) + 56))(*(a1 + 448));
    v14 = *(a1 + 672);

    sub_101262E98(v14);
  }

  else if (*a3 == 6)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v7 = *a4;
      v8 = a4[1];
      *buf = 67109376;
      v26 = v7;
      v27 = 1024;
      v28 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "NETWORK: onStatusNotification, kNotificationReachability, from, %d, to, %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190E94C();
    }

    v9 = a4[1];
    *(a1 + 608) = v9;
    if (v9 && !*a4)
    {
      sub_1006C8A2C(a1);
    }

    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 608);
      v12 = *a4;
      v13 = *(a1 + 352);
      *buf = 67240704;
      v26 = v11;
      v27 = 1026;
      v28 = v12;
      v29 = 1026;
      v30 = v13;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "@ClxLink, reach, %{public}d, last, %{public}d, retries, %{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v15 = *(a1 + 608);
      v16 = *a4;
      v17 = *(a1 + 352);
      v20[0] = 67240704;
      v20[1] = v15;
      v21 = 1026;
      v22 = v16;
      v23 = 1026;
      v24 = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@ClxLink, reach, %{public}d, last, %{public}d, retries, %{public}d", v20, 20);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onStatusNotification(int, const CLDaemonStatus_Type::Notification &, const CLDaemonStatus_Type::NotificationData &)", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }
}

id *sub_1006DAE4C(id *result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = result;
  if (*a3 == 4)
  {
    if (*(a4 + 188) != 1)
    {
      if (qword_1025D4620 != -1)
      {
        sub_10190BC08();
      }

      v6 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, clearing all local cache", v7, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190EA44();
      }

      return sub_1006DAFAC(v4);
    }
  }

  else if (!*a3)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Location Services reset, clearing all local cache", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190EB20();
    }

    sub_1006DAFAC(v4);
    return (*(**(v4 + 112) + 40))(*(v4 + 112));
  }

  return result;
}

id *sub_1006DAFAC(uint64_t a1)
{
  v2 = sub_10000FF38(v24, "clearAlsDatabaseEntries", 0);
  v4 = sub_10001A3E8(v2, v3);
  v6 = sub_10003A088(v4, v5);
  if ((v6 & 0x400) != 0)
  {
    v7 = sub_1006C5194(a1);
    sub_100654B28(*(v7 + 32));
    v8 = sub_1006C521C(a1);
    sub_100654B28(*(v8 + 32));
  }

  if ((v6 & 0x800000) != 0)
  {
    v9 = sub_1006C5084(a1);
    sub_100654B28(*(v9 + 32));
    v10 = sub_1006C510C(a1);
    sub_100654B28(*(v10 + 32));
  }

  if ((v6 & 0x800) != 0)
  {
    v11 = sub_1006C52A4(a1);
    sub_100654B28(*(v11 + 32));
    v12 = sub_1006C532C(a1);
    sub_100654B28(*(v12 + 32));
  }

  if ((v6 & 0x40000) != 0)
  {
    v13 = sub_100090470(a1);
    sub_100654B28(*(v13 + 32));
    v14 = sub_10007BA1C(a1);
    sub_100654B28(*(v14 + 32));
  }

  if ((v6 & 0x4000000) != 0)
  {
    v15 = sub_1006C53B4(a1);
    sub_100654B28(*(v15 + 32));
    v16 = sub_1006C543C(a1);
    sub_100654B28(*(v16 + 32));
  }

  sub_1012628F8(*(a1 + 672));
  sub_10126299C(*(a1 + 672));
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v17 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Clearing associated AP centroids in WifiAssociatedApCentroidStore", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v23[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "Clearing associated AP centroids in WifiAssociatedApCentroidStore", v23, 2);
    v22 = v21;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::clearDatabaseEntries()", "%s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  sub_100C4278C();
  sub_1003C93BC(a1 + 168, *(a1 + 176));
  *(a1 + 168) = a1 + 176;
  *(a1 + 176) = 0;
  v19 = *(a1 + 216);
  v18 = a1 + 216;
  *(v18 - 32) = 0;
  sub_1003C93BC(v18 - 8, v19);
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 - 8) = v18;
  sub_1006E079C(v18 + 32, *(v18 + 40));
  *(v18 + 40) = 0;
  *(v18 + 48) = 0;
  *(v18 + 32) = v18 + 40;
  sub_1003C93BC(v18 + 72, *(v18 + 80));
  *(v18 + 80) = 0;
  *(v18 + 88) = 0;
  *(v18 + 72) = v18 + 80;
  sub_1003C93BC(v18 + 112, *(v18 + 120));
  *(v18 + 120) = 0;
  *(v18 + 128) = 0;
  *(v18 + 112) = v18 + 120;
  sub_1003C93BC(v18 + 200, *(v18 + 208));
  *(v18 + 208) = 0;
  *(v18 + 216) = 0;
  *(v18 + 200) = v18 + 208;
  return sub_10001A420(v24);
}

void sub_1006DB280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

void sub_1006DB2A4(uint64_t a1, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v8 = *a3;
    v14 = 67109120;
    v15 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "onCompanionNotification, notification, %d", &v14, 8u);
  }

  v9 = sub_10000A100(121, 2);
  if (v9)
  {
    sub_10190EBFC(a3);
  }

  if (*a3 == 5)
  {
    sub_10001A3E8(v9, v10);
    if (sub_10001CF3C())
    {
      v11 = *a4;
      *(a1 + 440) = v11;
      if (v11 == 1)
      {
        sub_1006C8A2C(a1);
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *a4;
      v14 = 67240192;
      v15 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "@ClxLink, Nearby, %{public}d", &v14, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190ECE8(a4);
    }
  }
}

void sub_1006DB440(uint64_t a1, int a2)
{
  *(a1 + 120) = a2 != 1;
  v3 = (a1 + 120);
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    if (*v3)
    {
      v5 = "enabled";
    }

    else
    {
      v5 = "disabled";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Data protection is now %s", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190EDD4();
  }

  if ((*v3 & 1) == 0)
  {
    sub_1006DB568(a1);
    sub_1006DCCE0(a1, v6);
    nullsub_34();
  }
}

_BYTE *sub_1006DB568(void *a1)
{
  sub_101262854(a1[84]);
  v2 = a1[20];
  if (v2)
  {
    sub_1006DCFA0(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    sub_1006DCFA0(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    sub_1006DCFA0(v4);
  }

  v5 = a1[24];
  if (v5)
  {
    sub_1006DCFA0(v5);
  }

  v6 = a1[30];
  if (v6)
  {
    sub_1006DD4A8(v6);
  }

  v7 = a1[29];
  if (v7)
  {
    sub_1006DD4A8(v7);
  }

  v8 = a1[35];
  if (v8)
  {
    sub_1006DD9B0(v8);
  }

  v9 = a1[34];
  if (v9)
  {
    sub_1006DD9B0(v9);
  }

  v10 = a1[40];
  if (v10)
  {
    sub_1006DDEB8(v10);
  }

  result = a1[39];
  if (result)
  {

    return sub_1006DDEB8(result);
  }

  return result;
}

void sub_1006DB620(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  sub_101264804(*(a1 + 672));
  if (!*a3)
  {
    v7 = *a4;

    sub_1006DB440(a1, v7);
  }
}

void sub_1006DB688(uint64_t a1, uint64_t a2, int *a3, void **a4)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_100072010(a3);
    sub_1000238CC(v8, __p);
    v9 = v40 >= 0 ? __p : *__p;
    *buf = 136446210;
    *&buf[4] = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Nlp, received %{public}s", buf, 0xCu);
    if (v40 < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190EEE0(a3);
  }

  v10 = sub_100072010(a3);
  if (CFEqual(v10, @"kDataStatusNotification"))
  {
    v11 = *a4;
    if (*a4)
    {
      *buf = 0u;
      v42 = 0u;
      v43 = 1065353216;
      if (sub_10116D15C(v11, buf))
      {
        *v31 = 0;
        *__p = v31;
        v12 = sub_1006E20E0(buf, v31, &unk_101C66300, __p);
        *(a1 + 612) = *(v12 + 6);
        if (sub_1000649A0(v12, v13))
        {
          *v31 = 1;
          *__p = v31;
          *(a1 + 616) = *(sub_1006E20E0(buf, v31, &unk_101C66300, __p) + 6);
        }

        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v14 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 612);
          v16 = *(a1 + 616);
          *__p = 134349312;
          *&__p[4] = v15;
          v38 = 2050;
          v39 = v16;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Nlp, dataindictor, both, %{public}ld, %{public}ld", __p, 0x16u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_42;
        }

        sub_10190B9FC(__p);
        v17 = *(a1 + 612);
        v18 = *(a1 + 616);
        *v31 = 134349312;
        *&v31[4] = v17;
        v32 = 2050;
        v33 = v18;
        _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 0, "Nlp, dataindictor, both, %{public}ld, %{public}ld", v31, 22);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v19);
        if (v20 == __p)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v24 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          v25 = sub_100072010(a3);
          sub_1000238CC(v25, __p);
          v26 = v40 >= 0 ? __p : *__p;
          *v31 = 136446210;
          *&v31[4] = v26;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "Nlp, invalid, datacopy, %{public}s", v31, 0xCu);
          if (v40 < 0)
          {
            operator delete(*__p);
          }
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_42;
        }

        sub_10190B9FC(__p);
        v27 = qword_1025D4628;
        v28 = sub_100072010(a3);
        sub_1000238CC(v28, v31);
        if (v34 >= 0)
        {
          v29 = v31;
        }

        else
        {
          v29 = *v31;
        }

        v35 = 136446210;
        v36 = v29;
        _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v27, 16, "Nlp, invalid, datacopy, %{public}s", &v35, 12);
        v20 = v30;
        if (v34 < 0)
        {
          operator delete(*v31);
        }

        sub_100152C7C("Generic", 1, 0, 0, "void CLNetworkLocationProvider::onTelephonyNotification(int, const CLTelephonyService_Type::Notification &, const CLTelephonyService_Type::NotificationData &)", "%s\n", v20);
        if (v20 == __p)
        {
          goto LABEL_42;
        }
      }

      free(v20);
LABEL_42:
      sub_1004906DC(buf);
      return;
    }

    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v21 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v22 = sub_100072010(a3);
      sub_1000238CC(v22, __p);
      v23 = v40 >= 0 ? __p : *__p;
      *buf = 136446210;
      *&buf[4] = v23;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "Nlp, invalid, data, %{public}s", buf, 0xCu);
      if (v40 < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_10190EFF0(a3);
    }
  }
}

void sub_1006DBBEC(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_10001A3E8(a1, a2);
  v7 = sub_10003A088(v5, v6);
  if ((v7 & 0x400) != 0)
  {
    v17 = sub_1006C5194(a1);
    v25 = a3;
    sub_1001B0B4C(*(v17 + 32), &v25);
    v18 = sub_1006C521C(a1);
    v25 = a3;
    sub_1001B0B4C(*(v18 + 32), &v25);
    if ((v7 & 0x800000) == 0)
    {
LABEL_3:
      if ((v7 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v7 & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  v19 = sub_1006C5084(a1);
  v25 = a3;
  sub_1001B0B4C(*(v19 + 32), &v25);
  v20 = sub_1006C510C(a1);
  v25 = a3;
  sub_1001B0B4C(*(v20 + 32), &v25);
  if ((v7 & 0x800) == 0)
  {
LABEL_4:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v23 = sub_100090470(a1);
    v25 = a3;
    sub_1001B0B4C(*(v23 + 32), &v25);
    v24 = sub_10007BA1C(a1);
    v25 = a3;
    sub_1001B0B4C(*(v24 + 32), &v25);
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  v21 = sub_1006C52A4(a1);
  v25 = a3;
  sub_1001B0B4C(*(v21 + 32), &v25);
  v22 = sub_1006C532C(a1);
  v25 = a3;
  sub_1001B0B4C(*(v22 + 32), &v25);
  if ((v7 & 0x40000) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v7 & 0x4000000) != 0)
  {
LABEL_6:
    v8 = sub_1006C53B4(a1);
    v25 = a3;
    sub_1001B0B4C(*(v8 + 32), &v25);
    v9 = sub_1006C543C(a1);
    v25 = a3;
    sub_1001B0B4C(*(v9 + 32), &v25);
  }

LABEL_7:
  Current = CFAbsoluteTimeGetCurrent();
  sub_1012629AC(*(a1 + 672), a3);
  v11.n128_f64[0] = a3;
  sub_1006DBDD0(v11, Current, a1, (a1 + 168));
  v12.n128_f64[0] = a3;
  sub_1006DC014(v12, Current, a1, (a1 + 208));
  v13.n128_f64[0] = a3;
  sub_1006DC258(v13, Current, a1, (a1 + 248));
  v14.n128_f64[0] = a3;
  sub_1006DC4A4(v14, Current, a1, (a1 + 288));
  v15.n128_f64[0] = a3;
  sub_1006DC6E8(v15, Current, a1, (a1 + 328));
  v16.n128_f64[0] = a3;
  sub_1006DC92C(v16, Current, a1, (a1 + 416));
}

void sub_1006DBDD0(__n128 a1, double a2, uint64_t a3, uint64_t **a4)
{
  v5 = a4 + 1;
  v4 = *a4;
  if (*a4 != (a4 + 1))
  {
    v7 = a1.n128_f64[0];
    do
    {
      v9 = v4[1];
      v10 = v4;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v13 = *(v4 + 8);
      if (qword_1025D48A0 != -1)
      {
        sub_10190CAD8();
      }

      v14 = vabdd_f64(a2, v13);
      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v24 = v14;
        v25 = 2048;
        v26 = v7;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_10190CAD8();
        }

        v19 = 134218240;
        v20 = v14;
        v21 = 2048;
        v22 = v7;
        LODWORD(v18) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", COERCE_DOUBLE(&v19), v18);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::cleanPendingListByAge(Container &, CFTimeInterval, CFAbsoluteTime) [Container = std::map<CLTelephonyService_Type::Cell, double>]", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      if (v14 >= v7)
      {
        sub_10045E8A0(a4, v4);
        operator delete(v4);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }
}

void sub_1006DC014(__n128 a1, double a2, uint64_t a3, uint64_t **a4)
{
  v5 = a4 + 1;
  v4 = *a4;
  if (*a4 != (a4 + 1))
  {
    v7 = a1.n128_f64[0];
    do
    {
      v9 = v4[1];
      v10 = v4;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v13 = *(v4 + 8);
      if (qword_1025D48A0 != -1)
      {
        sub_10190CAD8();
      }

      v14 = vabdd_f64(a2, v13);
      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v24 = v14;
        v25 = 2048;
        v26 = v7;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_10190CAD8();
        }

        v19 = 134218240;
        v20 = v14;
        v21 = 2048;
        v22 = v7;
        LODWORD(v18) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", COERCE_DOUBLE(&v19), v18);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::cleanPendingListByAge(Container &, CFTimeInterval, CFAbsoluteTime) [Container = std::map<CLTelephonyService_Type::ScdmaCell, double>]", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      if (v14 >= v7)
      {
        sub_10045E8A0(a4, v4);
        operator delete(v4);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }
}

void sub_1006DC258(__n128 a1, double a2, uint64_t a3, uint64_t **a4)
{
  v5 = a4 + 1;
  v4 = *a4;
  if (*a4 != (a4 + 1))
  {
    v7 = a1.n128_f64[0];
    do
    {
      v9 = v4[1];
      v10 = v4;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v13 = *(v4 + 58);
      if (qword_1025D48A0 != -1)
      {
        sub_10190CAD8();
      }

      v14 = vabdd_f64(a2, v13);
      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v24 = v14;
        v25 = 2048;
        v26 = v7;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_10190CAD8();
        }

        v19 = 134218240;
        v20 = v14;
        v21 = 2048;
        v22 = v7;
        LODWORD(v18) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", COERCE_DOUBLE(&v19), v18);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::cleanPendingListByAge(Container &, CFTimeInterval, CFAbsoluteTime) [Container = std::map<CLTelephonyService_Type::CdmaCell, double>]", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      if (v14 >= v7)
      {
        sub_10045E8A0(a4, v4);
        sub_10064AAB8((v4 + 4));
        operator delete(v4);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }
}

void sub_1006DC4A4(__n128 a1, double a2, uint64_t a3, uint64_t **a4)
{
  v5 = a4 + 1;
  v4 = *a4;
  if (*a4 != (a4 + 1))
  {
    v7 = a1.n128_f64[0];
    do
    {
      v9 = v4[1];
      v10 = v4;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v13 = *(v4 + 15);
      if (qword_1025D48A0 != -1)
      {
        sub_10190CAD8();
      }

      v14 = vabdd_f64(a2, v13);
      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v24 = v14;
        v25 = 2048;
        v26 = v7;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_10190CAD8();
        }

        v19 = 134218240;
        v20 = v14;
        v21 = 2048;
        v22 = v7;
        LODWORD(v18) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", COERCE_DOUBLE(&v19), v18);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::cleanPendingListByAge(Container &, CFTimeInterval, CFAbsoluteTime) [Container = std::map<CLTelephonyService_Type::LteCell, double>]", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      if (v14 >= v7)
      {
        sub_10045E8A0(a4, v4);
        operator delete(v4);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }
}

void sub_1006DC6E8(__n128 a1, double a2, uint64_t a3, uint64_t **a4)
{
  v5 = a4 + 1;
  v4 = *a4;
  if (*a4 != (a4 + 1))
  {
    v7 = a1.n128_f64[0];
    do
    {
      v9 = v4[1];
      v10 = v4;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v13 = *(v4 + 16);
      if (qword_1025D48A0 != -1)
      {
        sub_10190CAD8();
      }

      v14 = vabdd_f64(a2, v13);
      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v24 = v14;
        v25 = 2048;
        v26 = v7;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_10190CAD8();
        }

        v19 = 134218240;
        v20 = v14;
        v21 = 2048;
        v22 = v7;
        LODWORD(v18) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", COERCE_DOUBLE(&v19), v18);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::cleanPendingListByAge(Container &, CFTimeInterval, CFAbsoluteTime) [Container = std::map<CLTelephonyService_Type::NrCell, double>]", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      if (v14 >= v7)
      {
        sub_10045E8A0(a4, v4);
        operator delete(v4);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }
}

void sub_1006DC92C(__n128 a1, double a2, uint64_t a3, uint64_t **a4)
{
  v5 = a4 + 1;
  v4 = *a4;
  if (*a4 != (a4 + 1))
  {
    v7 = a1.n128_f64[0];
    do
    {
      v9 = v4[1];
      v10 = v4;
      if (v9)
      {
        do
        {
          v11 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v11 = v10[2];
          v12 = *v11 == v10;
          v10 = v11;
        }

        while (!v12);
      }

      v13 = *(v4 + 5);
      if (qword_1025D48A0 != -1)
      {
        sub_10190CAD8();
      }

      v14 = vabdd_f64(a2, v13);
      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v24 = v14;
        v25 = 2048;
        v26 = v7;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_10190CAD8();
        }

        v19 = 134218240;
        v20 = v14;
        v21 = 2048;
        v22 = v7;
        LODWORD(v18) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "NETWORK: cleaning, curEntryAge, %.1lf, ageThreshold, %.1lf", COERCE_DOUBLE(&v19), v18);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::cleanPendingListByAge(Container &, CFTimeInterval, CFAbsoluteTime) [Container = std::map<CLMacAddress, double>]", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      if (v14 >= v7)
      {
        sub_10045E8A0(a4, v4);
        operator delete(v4);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }
}

void sub_1006DCB70(uint64_t a1)
{
  if (*(a1 + 520))
  {
    sub_10018646C(a1, "onRetryTimer");
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 520);
      v4 = *(a1 + 352);
      v5 = *(a1 + 432);
      v6 = *(a1 + 184);
      v7 = *(a1 + 224);
      v8 = *(a1 + 264);
      v9 = *(a1 + 304);
      v10 = *(a1 + 344);
      v11 = 136317186;
      v12 = "onRetryTimer";
      v13 = 2048;
      v14 = v3;
      v15 = 1024;
      v16 = v4;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v6;
      v21 = 2048;
      v22 = v7;
      v23 = 2048;
      v24 = v8;
      v25 = 2048;
      v26 = v9;
      v27 = 2048;
      v28 = v10;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "NETWORK: onRetryTimer, %s, %p, fQueryRetries, %d, pending, %lu, %lu, %lu, %lu, %lu, %lu", &v11, 0x58u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190F108();
    }

    sub_1006D3F7C(a1);
  }
}

void sub_1006DCCE0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 665) & 1) == 0)
  {
    v3 = sub_1000206B4(a1, a2);
    sub_100021668(v3, &v21);
    v4 = std::string::append(&v21, "/lockCache_encryptedA.db", 0x18uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v23 = v4->__r_.__value_.__r.__words[2];
    *v22 = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v6 = SHIBYTE(v23);
    if (v23 >= 0)
    {
      v7 = HIBYTE(v23);
    }

    else
    {
      v7 = v22[1];
    }

    v8 = &v21;
    sub_100070148(&v21, v7 + 8);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v21.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (v6 >= 0)
      {
        v9 = v22;
      }

      else
      {
        v9 = v22[0];
      }

      memmove(v8, v9, v7);
    }

    strcpy(v8 + v7, "-journal");
    v10 = v19;
    sub_100070148(v19, v7 + 4);
    if (v20 < 0)
    {
      v10 = v19[0];
    }

    if (v7)
    {
      if (v6 >= 0)
      {
        v11 = v22;
      }

      else
      {
        v11 = v22[0];
      }

      memmove(v10, v11, v7);
    }

    strcpy(v10 + v7, "-shm");
    sub_100070148(__p, v7 + 4);
    if (v18 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v6 >= 0)
    {
      v13 = v22;
    }

    else
    {
      v13 = v22[0];
    }

    if (v7)
    {
      memmove(v12, v13, v7);
    }

    strcpy(v12 + v7, "-wal");
    sub_1004E8E24(v13);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v21;
    }

    else
    {
      v14 = v21.__r_.__value_.__r.__words[0];
    }

    sub_1004E8E24(v14);
    if (v20 >= 0)
    {
      v15 = v19;
    }

    else
    {
      v15 = v19[0];
    }

    sub_1004E8E24(v15);
    if (v18 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    sub_1004E8E24(v16);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    *(a1 + 665) = 1;
  }
}

void sub_1006DCF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006DCFA0(_BYTE *result)
{
  if (*result == 1)
  {
    v1[0] = 0;
    v1[1] = v1;
    v1[2] = 0x3812000000;
    v1[3] = sub_10004746C;
    v1[4] = sub_1000483F4;
    v1[5] = &unk_10238AE8B;
    sub_1006E23FC();
  }

  return result;
}

void sub_1006DD2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint8_t buf)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  v34 = a28;
  a28 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1006DD4A8(_BYTE *result)
{
  if (*result == 1)
  {
    v1[0] = 0;
    v1[1] = v1;
    v1[2] = 0x3812000000;
    v1[3] = sub_1006E271C;
    v1[4] = sub_1006E272C;
    v1[5] = &unk_10238AE8B;
    sub_1006E2764();
  }

  return result;
}

void sub_1006DD800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint8_t buf)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  v34 = a28;
  a28 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1006DD9B0(_BYTE *result)
{
  if (*result == 1)
  {
    v1[0] = 0;
    v1[1] = v1;
    v1[2] = 0x3812000000;
    v1[3] = sub_1006E2C68;
    v1[4] = sub_1006E2C78;
    v1[5] = &unk_10238AE8B;
    sub_1006E2CB0();
  }

  return result;
}

void sub_1006DDD08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint8_t buf)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  v34 = a28;
  a28 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_1006DDEB8(_BYTE *result)
{
  if (*result == 1)
  {
    v1[0] = 0;
    v1[1] = v1;
    v1[2] = 0x3812000000;
    v1[3] = sub_1006E2FF0;
    v1[4] = sub_1006E3000;
    v1[5] = &unk_10238AE8B;
    sub_1005BEEC0();
  }

  return result;
}

void sub_1006DE210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint8_t buf)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  v34 = a28;
  a28 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1006DE480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1006DE4B0(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_10246B960;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_1006DE594(uint64_t result, uint64_t a2)
{
  v9 = a2;
  if ((*(result + 108) & 1) == 0)
  {
    v4 = *(result + 88);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = result + 80;
    v6 = result + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != result + 88 && *(v6 + 32) <= a2)
    {
      while (*(v6 + 56))
      {
        *buf = *(*(v6 + 40) + 28);
        (*(*result + 112))(result, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_10190C160();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = (result + 8);
        if (*(result + 31) < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10190F2D4();
      }
    }
  }
}

BOOL sub_1006DE810(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = a2;
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_10190C160();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = v3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_10190F4D4();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006DE9A4(char *a1, int a2, int *a3)
{
  HIDWORD(v25) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10004E6E0((v15 + 40), &v25 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_10190C174();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10190C174();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1025D47F8;
                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v22;
                LODWORD(v25) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 17, "%{public}s; notification %{public}s not found", &v30, v25);
                v24 = v23;
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLNetworkLocationProvider_Type::Notification, CLNetworkLocationProvider_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLNetworkLocationProvider_Type::Notification, NotificationData_T = CLNetworkLocationProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

uint64_t sub_1006DED48(uint64_t a1, int *a2, _OWORD *a3)
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

uint64_t sub_1006DEE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  return (*(*a1 + 152))(a1, a2, v5, a3, a4, 0);
}

void sub_1006DEED0(uint64_t a1, int *a2, _OWORD *a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_100248B84(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      operator new();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_1006E1544(a3);
    }
  }
}

void sub_1006DF3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_1006DF3CC(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10190C160();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v32 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190F6E4(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10190C160();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v32 = v5;
      v33 = 2048;
      v34[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190F5D4(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      v8 = (a1 + 8);
      do
      {
        v9 = v7[5];
        if (v9 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_10190C174();
            }

            v10 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v11 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v11 = *v8;
              }

              v12 = *(v7 + 8);
              v13 = *(v9 + 7);
              *buf = 136315650;
              v32 = v11;
              v33 = 1024;
              LODWORD(v34[0]) = v12;
              WORD2(v34[0]) = 1024;
              *(v34 + 6) = v13;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_10190C174();
              }

              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v8;
              }

              v18 = *(v7 + 8);
              v19 = *(v9 + 7);
              v25 = 136315650;
              v26 = v17;
              v27 = 1024;
              v28 = v18;
              v29 = 1024;
              v30 = v19;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 2, "%s; clients, id: %d, notification: %d", &v25, 24, v24);
              v21 = v20;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLNetworkLocationProvider_Type::Notification, CLNetworkLocationProvider_Type::NotificationData>::listClients() [Notification_T = CLNetworkLocationProvider_Type::Notification, NotificationData_T = CLNetworkLocationProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v20);
              if (v21 != buf)
              {
                free(v21);
              }
            }

            v14 = v9[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v9 = v15;
          }

          while (v15 != v7 + 6);
        }

        v22 = v7[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v7[2];
            v16 = *v23 == v7;
            v7 = v23;
          }

          while (!v16);
        }

        v7 = v23;
      }

      while (v23 != (a1 + 88));
    }
  }
}

void sub_1006DF790(uint64_t a1)
{
  sub_1006E3270(a1);

  operator delete();
}

id sub_1006DF7C8(uint64_t a1, int a2, void *a3)
{
  result = sub_1006E1B40(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_1006DF878(uint64_t a1)
{
  sub_1003C93BC(a1 + 240, *(a1 + 248));
  sub_1003C93BC(a1 + 8, *(a1 + 16));
  return a1;
}

__n128 sub_1006DF8B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_10038EB38((v4 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(v4 + 32) = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 96);
  *(v4 + 80) = *(a2 + 80);
  *(v4 + 96) = v7;
  *(v4 + 48) = v5;
  *(v4 + 64) = v6;
  v8 = *(a2 + 112);
  v9 = *(a2 + 128);
  v10 = *(a2 + 160);
  *(v4 + 144) = *(a2 + 144);
  *(v4 + 160) = v10;
  *(v4 + 112) = v8;
  *(v4 + 128) = v9;
  v11 = *(a2 + 176);
  v12 = *(a2 + 192);
  v13 = *(a2 + 208);
  *(v4 + 220) = *(a2 + 220);
  *(v4 + 192) = v12;
  *(v4 + 208) = v13;
  *(v4 + 176) = v11;
  if (*(a2 + 263) < 0)
  {
    sub_100007244((v4 + 240), *(a2 + 240), *(a2 + 248));
  }

  else
  {
    v14 = *(a2 + 240);
    *(v4 + 256) = *(a2 + 256);
    *(v4 + 240) = v14;
  }

  v15 = *(a2 + 264);
  v16 = *(a2 + 296);
  *(v4 + 280) = *(a2 + 280);
  *(v4 + 296) = v16;
  *(v4 + 264) = v15;
  v17 = *(a2 + 312);
  v18 = *(a2 + 328);
  v19 = *(a2 + 360);
  *(v4 + 344) = *(a2 + 344);
  *(v4 + 360) = v19;
  *(v4 + 312) = v17;
  *(v4 + 328) = v18;
  result = *(a2 + 376);
  v21 = *(a2 + 392);
  v22 = *(a2 + 408);
  *(v4 + 424) = *(a2 + 424);
  *(v4 + 392) = v21;
  *(v4 + 408) = v22;
  *(v4 + 376) = result;
  *(a1 + 8) = v4 + 432;
  return result;
}

void sub_1006DF9C0(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 16) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1006DF9E8(unint64_t *a1, uint64_t a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x97B425ED097B42)
  {
    sub_10028C64C();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 4);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 4) >= 0x4BDA12F684BDA1)
  {
    v6 = 0x97B425ED097B42;
  }

  else
  {
    v6 = v3;
  }

  v36 = a1;
  if (v6)
  {
    sub_1006DFC0C(a1, v6);
  }

  v7 = 432 * v2;
  v33 = 0;
  v34 = v7;
  v35 = 432 * v2;
  *v7 = *a2;
  v8 = 432 * v2;
  *(v8 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_10038EB38((v8 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(v7 + 32) = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 64);
  v11 = *(a2 + 96);
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 96) = v11;
  *(v7 + 48) = v9;
  *(v7 + 64) = v10;
  v12 = *(a2 + 112);
  v13 = *(a2 + 128);
  v14 = *(a2 + 160);
  *(v7 + 144) = *(a2 + 144);
  *(v7 + 160) = v14;
  *(v7 + 112) = v12;
  *(v7 + 128) = v13;
  v15 = *(a2 + 176);
  v16 = *(a2 + 192);
  v17 = *(a2 + 208);
  *(v7 + 220) = *(a2 + 220);
  *(v7 + 192) = v16;
  *(v7 + 208) = v17;
  *(v7 + 176) = v15;
  if (*(a2 + 263) < 0)
  {
    sub_100007244((v7 + 240), *(a2 + 240), *(a2 + 248));
  }

  else
  {
    v18 = *(a2 + 240);
    *(v7 + 256) = *(a2 + 256);
    *(v7 + 240) = v18;
  }

  v19 = *(a2 + 264);
  v20 = *(a2 + 296);
  *(v7 + 280) = *(a2 + 280);
  *(v7 + 296) = v20;
  *(v7 + 264) = v19;
  v21 = *(a2 + 312);
  v22 = *(a2 + 328);
  v23 = *(a2 + 360);
  *(v7 + 344) = *(a2 + 344);
  *(v7 + 360) = v23;
  *(v7 + 312) = v21;
  *(v7 + 328) = v22;
  v24 = *(a2 + 376);
  v25 = *(a2 + 392);
  v26 = *(a2 + 408);
  *(v7 + 424) = *(a2 + 424);
  *(v7 + 392) = v25;
  *(v7 + 408) = v26;
  *(v7 + 376) = v24;
  *&v35 = v35 + 432;
  v27 = a1[1];
  v28 = v34 + *a1 - v27;
  sub_1006DFC68(a1, *a1, v27, v28);
  v29 = *a1;
  *a1 = v28;
  v30 = a1[2];
  v32 = v35;
  *(a1 + 1) = v35;
  *&v35 = v29;
  *(&v35 + 1) = v30;
  v33 = v29;
  v34 = v29;
  sub_1006DFD84(&v33);
  return v32;
}

void sub_1006DFBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v10 = *v7;
  if (*v7)
  {
    *(v8 + 16) = v10;
    operator delete(v10);
  }

  sub_1006DFD84(va);
  _Unwind_Resume(a1);
}

void sub_1006DFC0C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x97B425ED097B43)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1006DFC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v7 = *(v6 + 96);
      v9 = *(v6 + 48);
      v8 = *(v6 + 64);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = v7;
      *(a4 + 48) = v9;
      *(a4 + 64) = v8;
      v10 = *(v6 + 160);
      v12 = *(v6 + 112);
      v11 = *(v6 + 128);
      *(a4 + 144) = *(v6 + 144);
      *(a4 + 160) = v10;
      *(a4 + 112) = v12;
      *(a4 + 128) = v11;
      v14 = *(v6 + 192);
      v13 = *(v6 + 208);
      v15 = *(v6 + 176);
      *(a4 + 220) = *(v6 + 220);
      *(a4 + 192) = v14;
      *(a4 + 208) = v13;
      *(a4 + 176) = v15;
      *(a4 + 32) = *(v6 + 32);
      v16 = *(v6 + 240);
      *(a4 + 256) = *(v6 + 256);
      *(a4 + 240) = v16;
      *(v6 + 248) = 0;
      *(v6 + 256) = 0;
      *(v6 + 240) = 0;
      v17 = *(v6 + 360);
      v19 = *(v6 + 312);
      v18 = *(v6 + 328);
      *(a4 + 344) = *(v6 + 344);
      *(a4 + 360) = v17;
      *(a4 + 312) = v19;
      *(a4 + 328) = v18;
      v20 = *(v6 + 264);
      v21 = *(v6 + 296);
      *(a4 + 280) = *(v6 + 280);
      *(a4 + 296) = v21;
      *(a4 + 264) = v20;
      v23 = *(v6 + 392);
      v22 = *(v6 + 408);
      v24 = *(v6 + 376);
      *(a4 + 424) = *(v6 + 424);
      *(a4 + 392) = v23;
      *(a4 + 408) = v22;
      *(a4 + 376) = v24;
      v6 += 432;
      a4 += 432;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_10064AAB8(v5);
      v5 += 432;
    }
  }
}

uint64_t sub_1006DFD84(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 432;
    sub_10064AAB8(i - 432);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1006DFDD4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1006DFE30(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t *sub_1006DFE88(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_100187DB8(result, a4);
  }

  return result;
}

void sub_1006DFEE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_1006DFEFC(uint64_t a1)
{
  v4[0] = @"recent";
  v5[0] = [NSNumber numberWithInt:*(a1 + 40)];
  v4[1] = @"onlist";
  v5[1] = [NSNumber numberWithInt:*(a1 + 44)];
  v4[2] = @"queued";
  v5[2] = [NSNumber numberWithInt:*(a1 + 48)];
  v4[3] = @"usecache";
  v5[3] = [NSNumber numberWithBool:*(a1 + 52)];
  v4[4] = @"type";
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  v5[4] = [NSString stringWithUTF8String:v2];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];
}

void **sub_1006E0068(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_10038EBB4(v6, v10);
    }

    sub_10028C64C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15++ = v16;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

__int128 *sub_1006E01CC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v18 = 0xD37A6F4DE9BD37A7 * ((v7 - *a4) >> 3);
        v19 = v18 + 1;
        if (v18 + 1 > 0x1642C8590B21642)
        {
          sub_10028C64C();
        }

        v20 = 0xD37A6F4DE9BD37A7 * ((v8 - *a4) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0xB21642C8590B21)
        {
          v21 = 0x1642C8590B21642;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          sub_10064A6B8(a4, v21);
        }

        v22 = 8 * ((v7 - *a4) >> 3);
        v23 = *v5;
        v24 = v5[1];
        v25 = v5[3];
        *(v22 + 32) = v5[2];
        *(v22 + 48) = v25;
        *v22 = v23;
        *(v22 + 16) = v24;
        v26 = v5[4];
        v27 = v5[5];
        v28 = v5[7];
        *(v22 + 96) = v5[6];
        *(v22 + 112) = v28;
        *(v22 + 64) = v26;
        *(v22 + 80) = v27;
        v29 = v5[8];
        v30 = v5[9];
        v31 = v5[10];
        *(v22 + 176) = *(v5 + 22);
        *(v22 + 144) = v30;
        *(v22 + 160) = v31;
        *(v22 + 128) = v29;
        v7 = 184 * v18 + 184;
        v32 = *(a4 + 8) - *a4;
        v33 = 184 * v18 - v32;
        memcpy((v22 - v32), *a4, v32);
        v34 = *a4;
        *a4 = v33;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        v9 = *v5;
        v10 = v5[1];
        v11 = v5[3];
        *(v7 + 32) = v5[2];
        *(v7 + 48) = v11;
        *v7 = v9;
        *(v7 + 16) = v10;
        v12 = v5[4];
        v13 = v5[5];
        v14 = v5[7];
        *(v7 + 96) = v5[6];
        *(v7 + 112) = v14;
        *(v7 + 64) = v12;
        *(v7 + 80) = v13;
        v15 = v5[8];
        v16 = v5[9];
        v17 = v5[10];
        *(v7 + 176) = *(v5 + 22);
        *(v7 + 144) = v16;
        *(v7 + 160) = v17;
        *(v7 + 128) = v15;
        v7 += 184;
      }

      *(a4 + 8) = v7;
      v5 = (v5 + 184);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1006E03AC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1006E03F8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1006E03F8(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006E04A8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1006E04F4(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1006E04F4(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006E05A4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1006E05F0(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1006E05F0(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006E06A0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1006E06EC(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1006E06EC(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1006E079C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1006E079C(a1, *a2);
    sub_1006E079C(a1, a2[1]);
    sub_10064AAB8((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_1006E07F8(uint64_t **a1, _DWORD *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_1006E0894(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1006E0894(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_1006E091C(a3, v4 + 8))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1006E091C(v7 + 8, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

BOOL sub_1006E091C(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v3 = a1[1];
    v4 = a2[1];
    v2 = v3 < v4;
    if (v3 == v4)
    {
      if (a1[2] == a2[2] && a1[3] == a2[3])
      {
        return 0;
      }

      v6 = a1[2];
      v7 = a2[2];
      v2 = v6 < v7;
      if (v6 == v7)
      {
        return a1[3] < a2[3];
      }
    }
  }

  return v2;
}

void *sub_1006E0988(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *sub_1006E0A30(a1, &v7, a2);
  if (!v5)
  {
    sub_1006E0AB8();
  }

  return v5;
}

void *sub_1006E0A30(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_1006E0C64(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1006E0C64((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1006E0BEC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
  }

  sub_1006E0C18(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E0C18(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10064AAB8(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL sub_1006E0C64(uint64_t a1, uint64_t a2)
{
  if (sub_1006E0D20(a1, a2))
  {
    return 0;
  }

  v5 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v6 = *(a1 + 232);
    v7 = *(a2 + 232);
    v5 = v6 < v7;
    if (v6 == v7)
    {
      v8 = *(a1 + 32);
      v9 = *(a2 + 32);
      v5 = v8 < v9;
      if (v8 == v9)
      {
        v10 = *(a1 + 36);
        v11 = *(a2 + 36);
        v5 = v10 < v11;
        if (v10 == v11)
        {
          v12 = *(a1 + 44);
          v13 = *(a2 + 44);
          v5 = v12 < v13;
          if (v12 == v13)
          {
            if (sub_1006E0DE8((a1 + 240), (a2 + 240)))
            {
              return *(a1 + 40) < *(a2 + 40);
            }

            else
            {
              return (sub_100019438((a1 + 240), (a2 + 240)) & 0x80u) != 0;
            }
          }
        }
      }
    }
  }

  return v5;
}

BOOL sub_1006E0D20(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[8] != a2[8] || a1[9] != a2[9] || a1[10] != a2[10] || a1[11] != a2[11] || a1[12] != a2[12])
  {
    return 0;
  }

  result = sub_1006E0DE8(a1 + 30, a2 + 30);
  if (!result)
  {
    return result;
  }

  return a1[13] == a2[13] && a1[14] == a2[14];
}

BOOL sub_1006E0DE8(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t sub_1006E0E5C(uint64_t **a1, _DWORD *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_1006E0894(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_1006E0F0C(uint64_t **a1, uint64_t a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_1006E0FB8(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_1006E0FB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_1006E1040(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1006E1040((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

BOOL sub_1006E1040(uint64_t a1, uint64_t a2)
{
  v2 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v3 = *(a1 + 4);
    v4 = *(a2 + 4);
    v2 = v3 < v4;
    if (v3 == v4)
    {
      if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
      {
        return 0;
      }

      v6 = *(a1 + 8);
      v7 = *(a2 + 8);
      v2 = v6 < v7;
      if (v6 == v7)
      {
        return *(a1 + 16) < *(a2 + 16);
      }
    }
  }

  return v2;
}

uint64_t sub_1006E10AC(uint64_t a1, uint64_t a2)
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
    v6 = sub_1006E0C64(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_1006E0C64(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1006E1130(uint64_t a1, _DWORD *a2)
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
    v6 = sub_1006E091C((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_1006E091C(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1006E11B4(uint64_t a1, uint64_t a2)
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
    v6 = sub_1006E1040(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_1006E1040(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

void *sub_1006E1238(uint64_t **a1, void *a2, uint64_t a3, void **a4)
{
  v4 = *sub_100197070(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1006E12D0(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t sub_1006E13A8(uint64_t **a1, _DWORD *a2)
{
  v3 = sub_1006E1130(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10045E8A0(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_1006E13FC(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1006E10AC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10045E8A0(a1, v3);
  sub_10064AAB8((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t sub_1006E1458(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1006E11B4(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10045E8A0(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t *sub_1006E14AC(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10045E8A0(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    a2[6] = v4;
    operator delete(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_1006E14F0(uint64_t **a1, void *a2)
{
  v3 = sub_100198C70(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10045E8A0(a1, v3);
  operator delete(v4);
  return 1;
}

void sub_1006E15F0(void *a1, int *a2, void *a3)
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
        v10 = sub_1006E1B40(a3);
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

            v15 = *(v11 + 7);
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
              sub_1006E19AC(a1, &v38, &v39, a3);
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
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
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
                sub_10190C174();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
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
                  sub_10190C174();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLNetworkLocationProvider_Type::Notification, CLNetworkLocationProvider_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLNetworkLocationProvider_Type::Notification, NotificationData_T = CLNetworkLocationProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
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

_BYTE *sub_1006E19AC(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1006E1B40(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

void sub_1006E1AC4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10246B8C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006E1B20(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_1006E1B40(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1006E1BDC(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1006E1DB4(a1);
    }

    else
    {
      return 0;
    }
  }
}

id sub_1006E1BDC(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_1006E1FB8(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10190F7E0();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C89215 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10190F7F4();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10190F7E0();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C89215 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10190F8FC();
    }
  }

  return 0;
}

id sub_1006E1DB4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10190F7E0();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C89215 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10190FA04();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10190F7E0();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C89215 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10190FB0C();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1006E1FB8(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254EE70))
  {
    if ([objc_msgSend(a2 "serialized")] != 16)
    {
      sub_10190FC14();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t sub_1006E2070(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_1006E14AC(a1, v4);
  return 1;
}

uint64_t *sub_1006E20E0(void *a1, int *a2, uint64_t a3, _DWORD **a4)
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

void *sub_1006E2330(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1006E24CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1006E2518(void *a1, uint64_t a2, uint64_t a3, sqlite3_int64 a4)
{
  ++*(*(a1[4] + 8) + 24);
  *&v4 = -1;
  *(&v4 + 1) = -1;
  v5[0] = v4;
  v5[1] = v4;
  sub_1006AB524(a2, a4, v5);
}

uint64_t sub_1006E271C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1006E272C(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1006E2834(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1006E2880(void *a1, uint64_t a2, uint64_t a3, sqlite3_int64 a4)
{
  ++*(*(a1[4] + 8) + 24);
  sub_10006BB6C(v6);
  sub_100943D50(a2, a4, v6);
}

void sub_1006E2C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10064A5B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006E2C68(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1006E2C78(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1006E2D80(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1006E2DCC(void *a1, uint64_t a2, uint64_t a3, sqlite3_int64 a4)
{
  ++*(*(a1[4] + 8) + 24);
  v5 = -1;
  memset(v4, 255, sizeof(v4));
  v6 = 0;
  v7 = 0;
  v8 = -1;
  v9 = -1;
  v10 = -1;
  v11 = xmmword_101C7F0A0;
  sub_100CFA3B0(a2, a4, v4);
}

uint64_t sub_1006E2FF0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1006E3000(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1006E3038(void *a1, uint64_t a2, uint64_t a3, sqlite3_int64 a4)
{
  v4 = -1;
  ++*(*(a1[4] + 8) + 24);
  v5 = -1;
  v6 = -1;
  v7 = -1;
  v8 = -1;
  v9 = 0u;
  v10 = -1;
  v11 = -1;
  v12 = -1;
  v13 = 0xFFFFFFFF00000000;
  v14 = 0;
  sub_1007F6274(a2, a4, &v4);
}

uint64_t sub_1006E3270(uint64_t a1)
{
  *a1 = off_10246B960;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_1006E338C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1006E33AC(void *a1@<X8>, float a2@<S0>)
{
  *(v5 - 80) = a2;
  *(a1 + 4) = v2;
  *(v5 - 68) = 2082;
  *(a1 + 14) = (v3 + 0x8000000000000000) & 0x7FFFFFFFFFFFFFFFLL;
  *(v5 - 58) = 2050;
  a1[3] = v4;
}

void sub_1006E3404(int a1@<W8>, float a2@<S0>)
{
  *(v8 - 96) = a2;
  *(v8 - 92) = a1;
  *(v8 - 88) = 1024;
  *(v7 + 10) = v2;
  *(v8 - 82) = 1024;
  *(v8 - 80) = v3;
  *(v8 - 76) = 1024;
  *(v7 + 22) = v4;
  *(v8 - 70) = 2053;
  *(v7 + 28) = v5;
  *(v8 - 60) = 2053;
  *(v7 + 38) = v6;
}

void sub_1006E34A0()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

void sub_1006E3558(uint64_t *a1, void *a2)
{
  v2 = a1;
  if (a2)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3020000000;
    v22 = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1006E3A40;
    v18[3] = &unk_10245D2D0;
    v18[4] = &v19;
    v18[5] = a1;
    [a2 setExpirationHandler:v18];
    if (*(v20 + 40) == 1)
    {
      v17 = 0;
      if (([a2 setTaskExpiredWithRetryAfter:&v17 error:0.0] & 1) == 0)
      {
        if (qword_1025D4870 != -1)
        {
          sub_1019103B4();
        }

        v4 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
        {
          v5 = v2;
          if (*(v2 + 23) < 0)
          {
            v5 = *v2;
          }

          *buf = 138412546;
          v28 = v17;
          v29 = 2080;
          v30 = v5;
          _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#bg,runtimeHandler,failed to set task expired,error,%@,name,%s", buf, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4870 != -1)
          {
            sub_1019103B4();
          }

          if (*(v2 + 23) < 0)
          {
            v2 = *v2;
          }

          v23 = 138412546;
          v24 = v17;
          v25 = 2080;
          v26 = v2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#bg,runtimeHandler,failed to set task expired,error,%@,name,%s", &v23, 22);
          v15 = v14;
          sub_100152C7C("Generic", 1, 0, 0, "void CLBackgroundSystemTask::runtimeHandler(BGSystemTask *) const", "%s\n", v14);
          if (v15 != buf)
          {
            free(v15);
          }
        }

        [a2 setTaskCompleted];
      }
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      v8 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v2;
        if (*(v2 + 23) < 0)
        {
          v9 = *v2;
        }

        *buf = 136315138;
        v28 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#bg,runtimeHandler,running background task,name,%s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4870 != -1)
        {
          sub_1019103B4();
        }

        v11 = v2;
        if (*(v2 + 23) < 0)
        {
          v11 = *v2;
        }

        v23 = 136315138;
        v24 = v11;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 0, "#bg,runtimeHandler,running background task,name,%s", &v23);
        v13 = v12;
        sub_100152C7C("Generic", 1, 0, 2, "void CLBackgroundSystemTask::runtimeHandler(BGSystemTask *) const", "%s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      v10 = v2[3];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1006E3B40;
      block[3] = &unk_102449A78;
      block[4] = v2;
      dispatch_async(v10, block);
      [a2 setTaskCompleted];
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v7 = v2;
      if (*(v2 + 23) < 0)
      {
        v7 = *v2;
      }

      *buf = 136315138;
      v28 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#bg,runtimeHandler,invalid task,name,%s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019103F0();
    }
  }
}

void sub_1006E3A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006E3A40(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_1025D4870 != -1)
  {
    sub_1019103DC();
  }

  v3 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v2;
    if (*(v2 + 23) < 0)
    {
      v4 = *v2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#bg,runtimeHandler,expiration requested,stopping,name,%s", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019104F8(v2);
  }

  *(*(*(a1 + 32) + 8) + 40) = 1;
}

void sub_1006E3B40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3 = *(v1 + 56);
  if (!v3)
  {
    sub_1000CF05C();
  }

  (*(*v3 + 48))(v3);

  objc_autoreleasePoolPop(v2);
}

id sub_1006E3BAC(uint64_t *a1)
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    if (*(a1 + 23) < 0)
    {
      v4 = *a1;
    }

    v5 = [NSString stringWithUTF8String:v4];
    v6 = a1[3];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1006E3EA4;
    v16[3] = &unk_10246B978;
    v16[4] = a1;
    v7 = [v3 registerForTaskWithIdentifier:v5 usingQueue:v6 launchHandler:v16];
    if (v7)
    {
      *(a1 + 93) = 1;
    }

    if (qword_1025D4870 != -1)
    {
      sub_1019103B4();
    }

    v8 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1;
      if (*(a1 + 23) < 0)
      {
        v9 = *a1;
      }

      *buf = 67109378;
      LODWORD(v21[0]) = v7;
      WORD2(v21[0]) = 2080;
      *(v21 + 6) = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#bg,registerTask,isRegistered,%d,name,%s", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      if (*(a1 + 23) < 0)
      {
        a1 = *a1;
      }

      v17[0] = 67109378;
      v17[1] = v7;
      v18 = 2080;
      v19 = a1;
      LODWORD(v15) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 0, "#bg,registerTask,isRegistered,%d,name,%s", v17, v15);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBackgroundSystemTask::registerTask()", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v12 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v13 = a1;
      if (*(a1 + 23) < 0)
      {
        v13 = *a1;
      }

      *buf = 136315138;
      v21[0] = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#bg,registerTask,no task scheduler,name,%s", buf, 0xCu);
    }

    v7 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_1019105F8(a1);
      return 0;
    }
  }

  return v7;
}

BOOL sub_1006E3EAC(uint64_t a1)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
      return sub_1006E3EEC(a1) != 0;
    }
  }

  else if (*(a1 + 23))
  {
    return sub_1006E3EEC(a1) != 0;
  }

  return 0;
}

id sub_1006E3EEC(void ***a1)
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  if (!v2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v8 = a1;
      if (*(a1 + 23) < 0)
      {
        v8 = *a1;
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#bg,getSubmittedRequest,no task scheduler,name,%s", &v9, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019107F8(a1);
    }

    return 0;
  }

  v3 = a1;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  result = [v2 taskRequestForIdentifier:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v3)}];
  if (!result)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1;
      if (*(a1 + 23) < 0)
      {
        v6 = *a1;
      }

      v9 = 136315138;
      v10 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#bg,getSubmittedRequest,task does not exist,name,%s", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019106F8();
    }

    return 0;
  }

  return result;
}

void sub_1006E40B4(void ***a1)
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  if (v2)
  {
    v10 = 0;
    v3 = a1;
    if (*(a1 + 23) < 0)
    {
      v3 = *a1;
    }

    if (([v2 cancelTaskRequestWithIdentifier:+[NSString stringWithUTF8String:](NSString error:{"stringWithUTF8String:", v3), &v10}] & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      v4 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v5 = a1;
        if (*(a1 + 23) < 0)
        {
          v5 = *a1;
        }

        *buf = 138412546;
        v16 = v10;
        v17 = 2080;
        v18 = v5;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#bg,cancelSubmittedRequest,failed,error,%@,name,%s", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4870 != -1)
        {
          sub_1019103B4();
        }

        if (*(a1 + 23) < 0)
        {
          a1 = *a1;
        }

        v11 = 138412546;
        v12 = v10;
        v13 = 2080;
        v14 = a1;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4878, 16, "#bg,cancelSubmittedRequest,failed,error,%@,name,%s", &v11, 22);
        v7 = v6;
        sub_100152C7C("Generic", 1, 0, 0, "void CLBackgroundSystemTask::cancelSubmittedRequest() const", "%s\n", v6);
        if (v7 != buf)
        {
          free(v7);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v8 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v9 = a1;
      if (*(a1 + 23) < 0)
      {
        v9 = *a1;
      }

      *buf = 136315138;
      v16 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#bg,cancelSubmittedRequest,no task scheduler,name,%s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019108F8(a1);
    }
  }
}

id sub_1006E4354(uint64_t a1)
{
  if (qword_1025D4870 != -1)
  {
    sub_1019103DC();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1;
    if (*(a1 + 23) < 0)
    {
      v3 = *a1;
    }

    v22 = 136315138;
    v23 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#bg,start,scheduling background system task,name,%s", &v22, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019109F8(a1);
  }

  if (sub_1006E48A4(a1))
  {
    if ((*(a1 + 93) & 1) == 0 && (sub_1006E3BAC(a1) & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      v18 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v19 = a1;
        if (*(a1 + 23) < 0)
        {
          v19 = *a1;
        }

        v22 = 136315138;
        v23 = v19;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "#bg,start,failed to register task,name,%s", &v22, 0xCu);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101910BF8(a1);
        return 0;
      }

      return result;
    }

    v4 = sub_1006E3EEC(a1);
    v5 = v4;
    v6 = *(a1 + 72);
    if (v6 == 4)
    {
      if ((*(a1 + 92) & 1) != 0 || !v4)
      {
        goto LABEL_36;
      }

      if (!sub_1006E4B70(a1, v4))
      {
        if (qword_1025D4870 != -1)
        {
          sub_1019103B4();
        }

        v20 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
        {
          v21 = a1;
          if (*(a1 + 23) < 0)
          {
            v21 = *a1;
          }

          v22 = 136315138;
          v23 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#bg,start,periodic task unchanged,do nothing,name,%s", &v22, 0xCu);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          sub_101910CF8(a1);
          return 0;
        }

        return result;
      }

      v6 = *(a1 + 72);
    }

    if ((v6 - 1) <= 2 && (*(a1 + 92) & 1) == 0 && v5)
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      v7 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1;
        if (*(a1 + 23) < 0)
        {
          v8 = *a1;
        }

        v22 = 136315138;
        v23 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#bg,start,single shot task unchanged,do nothing,name,%s", &v22, 0xCu);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101910DF8(a1);
        return 0;
      }

      return result;
    }

LABEL_36:
    if (v5)
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      v12 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        v13 = a1;
        if (*(a1 + 23) < 0)
        {
          v13 = *a1;
        }

        v22 = 136315138;
        v23 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#bg,start,cancelling previous task,name,%s", &v22, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101910EF8(a1);
      }

      sub_1006E40B4(a1);
      v6 = *(a1 + 72);
    }

    if (v6 == 4)
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      v14 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        v15 = a1;
        if (*(a1 + 23) < 0)
        {
          v15 = *a1;
        }

        v22 = 136315138;
        v23 = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#bg,start,submit periodic request,name,%s", &v22, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019110F8(a1);
      }

      return sub_1006E4D10(a1);
    }

    else
    {
      if ((v6 - 1) > 2)
      {
        return 0;
      }

      if (qword_1025D4870 != -1)
      {
        sub_1019103B4();
      }

      v16 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        v17 = a1;
        if (*(a1 + 23) < 0)
        {
          v17 = *a1;
        }

        v22 = 136315138;
        v23 = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#bg,start,submit single shot request,name,%s", &v22, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101910FF8(a1);
      }

      return sub_1006E4DE0(a1);
    }
  }

  if (qword_1025D4870 != -1)
  {
    sub_1019103B4();
  }

  v10 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    v11 = a1;
    if (*(a1 + 23) < 0)
    {
      v11 = *a1;
    }

    v22 = 136315138;
    v23 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#bg,start,invalid settings,name,%s", &v22, 0xCu);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101910AF8(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1006E48A4(uint64_t *a1)
{
  v2 = a1 + 23;
  if ((*(a1 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      goto LABEL_3;
    }

LABEL_8:
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#bg,areSettingsValid,identifier not set", &v11, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1019114F8();
    return 0;
  }

  if (!a1[1])
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!a1[3])
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v6 = a1;
      if (*v2 < 0)
      {
        v6 = *a1;
      }

      v11 = 136315138;
      v12 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#bg,areSettingsValid,queue is invalid,name,%s", &v11, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1019113F8();
    return 0;
  }

  if (!a1[7])
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v8 = a1;
      if (*v2 < 0)
      {
        v8 = *a1;
      }

      v11 = 136315138;
      v12 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#bg,areSettingsValid,task is invalid,name,%s", &v11, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1019112F8();
    return 0;
  }

  if ((*(a1 + 18) - 1) < 4)
  {
    return 1;
  }

  if (qword_1025D4870 != -1)
  {
    sub_1019103DC();
  }

  v9 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    v10 = a1;
    if (*v2 < 0)
    {
      v10 = *a1;
    }

    v11 = 136315138;
    v12 = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#bg,areSettingsValid,schedule is invalid,name,%s", &v11, 0xCu);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1019111F8();
    return 0;
  }

  return result;
}

BOOL sub_1006E4B70(void ***a1, void *a2)
{
  if (!a2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v7 = a1;
      if (*(a1 + 23) < 0)
      {
        v7 = *a1;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#bg,isRequestChanged,invalid request,name,%s", &v8, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101911604(a1);
    }

    return 1;
  }

  sub_1006E5154(a1, a2, "pastRequest");
  if ([a2 priority] != a1[8] || *(a1 + 89) != objc_msgSend(a2, "requiresInexpensiveNetworkConnectivity") || *(a1 + 88) != objc_msgSend(a2, "requiresExternalPower") || *(a1 + 90) != objc_msgSend(a2, "requiresNetworkConnectivity") || *(a1 + 91) != objc_msgSend(a2, "resourceIntensive"))
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [a2 interval];
  return v4 != *(a1 + 10);
}

id sub_1006E4D10(double *a1)
{
  v2 = [BGRepeatingSystemTaskRequest alloc];
  v3 = a1;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  v4 = [v2 initWithIdentifier:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v3)}];
  [v4 setPriority:*(a1 + 8)];
  [v4 setRequiresInexpensiveNetworkConnectivity:*(a1 + 89)];
  [v4 setRequiresNetworkConnectivity:*(a1 + 90)];
  [v4 setRequiresExternalPower:*(a1 + 88)];
  [v4 setResourceIntensive:*(a1 + 91)];
  [v4 setInterval:a1[10]];
  [v4 setMinDurationBetweenInstances:a1[10] * 0.8];
  v5 = sub_1006E4EBC(a1, v4);

  return v5;
}

id sub_1006E4DE0(uint64_t *a1)
{
  v2 = [BGNonRepeatingSystemTaskRequest alloc];
  v3 = a1;
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;
  }

  v4 = [v2 initWithIdentifier:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v3)}];
  [v4 setPriority:a1[8]];
  [v4 setRequiresInexpensiveNetworkConnectivity:*(a1 + 89)];
  [v4 setRequiresNetworkConnectivity:*(a1 + 90)];
  [v4 setRequiresExternalPower:*(a1 + 88)];
  [v4 setResourceIntensive:*(a1 + 91)];
  v5 = *(a1 + 18);
  if (v5 == 1)
  {
    [v4 setTrySchedulingBefore:*(a1 + 10)];
  }

  else if (v5 == 2)
  {
    [v4 setScheduleAfter:*(a1 + 10)];
  }

  v6 = sub_1006E5008(a1, v4);

  return v6;
}

id sub_1006E4EBC(const char *a1, void *a2)
{
  v9 = 0;
  v4 = [+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler "sharedScheduler")];
  if (v4)
  {
    v5 = "submitRequestSuccess";
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103B4();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v7 = a1;
      if (a1[23] < 0)
      {
        v7 = *a1;
      }

      *buf = 138412546;
      v11 = v9;
      v12 = 2080;
      v13 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#bg,submitRequest,failed,error,%@,name,%s", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101911704();
    }

    v5 = "submitRequestFailed";
  }

  sub_1006E5154(a1, a2, v5);
  return v4;
}

id sub_1006E5008(const char *a1, void *a2)
{
  v9 = 0;
  v4 = [+[BGSystemTaskScheduler sharedScheduler](BGSystemTaskScheduler "sharedScheduler")];
  if (v4)
  {
    v5 = "submitRequestSuccess";
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103B4();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v7 = a1;
      if (a1[23] < 0)
      {
        v7 = *a1;
      }

      *buf = 138412546;
      v11 = v9;
      v12 = 2080;
      v13 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#bg,submitRequest,failed,error,%@,name,%s", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101911808();
    }

    v5 = "submitRequestFailed";
  }

  sub_1006E5154(a1, a2, v5);
  return v4;
}

void sub_1006E5154(const char *a1, void *a2, char *a3)
{
  if (a2)
  {
    objc_opt_class();
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v7 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (objc_opt_isKindOfClass())
    {
      if (qword_1025D4870 != -1)
      {
        sub_1019103DC();
      }

      v8 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "<empty note>";
        if (a3)
        {
          v9 = a3;
        }

        v59 = v9;
        v10 = [objc_msgSend(a2 "identifier")];
        v61 = a3;
        v11 = *(a1 + 18);
        v12 = a1;
        v13 = [a2 priority];
        v14 = [a2 requiresInexpensiveNetworkConnectivity];
        v15 = [a2 requiresExternalPower];
        v16 = [a2 requiresNetworkConnectivity];
        v17 = [a2 resourceIntensive];
        [a2 scheduleAfter];
        v19 = v18;
        [a2 trySchedulingBefore];
        *buf = 136317442;
        v84 = v59;
        v85 = 2080;
        v86 = v10;
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v87 = 1024;
        v88 = v11;
        a3 = v61;
        v89 = 1024;
        v90 = v13;
        a1 = v12;
        v7 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v91 = 1024;
        v92 = v14;
        v93 = 1024;
        v94 = v15;
        v95 = 1024;
        v96 = v16;
        v97 = 1024;
        v98 = v17;
        v99 = 2048;
        v100 = v19;
        v101 = 2048;
        v102 = v20;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#bg,logRequest,nonRepeatingRequest,note,%s,name,%s,scheduleType,%d,priority,%d,requiresInexpensiveNetworkConnectivity,%d,requiresExternalPower,%d,requiresNetworkConnectivity,%d,resourceIntensive,%d,scheduleAfter,%.1f,trySchedulingBefore,%.1f", buf, 0x4Eu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4870 != -1)
        {
          sub_1019103B4();
        }

        v45 = qword_1025D4878;
        v62 = a3;
        if (!a3)
        {
          a3 = "<empty note>";
        }

        v46 = [objc_msgSend(a2 "identifier")];
        v60 = a1;
        v47 = *(a1 + 18);
        v48 = [a2 priority];
        v49 = [a2 requiresInexpensiveNetworkConnectivity];
        v50 = [a2 requiresExternalPower];
        v51 = [a2 requiresNetworkConnectivity];
        v52 = [a2 resourceIntensive];
        [a2 scheduleAfter];
        v54 = v53;
        [a2 trySchedulingBefore];
        v63 = 136317442;
        v64 = a3;
        v65 = 2080;
        v66 = v46;
        v67 = 1024;
        v68 = v47;
        v69 = 1024;
        v70 = v48;
        v71 = 1024;
        v72 = v49;
        v73 = 1024;
        v74 = v50;
        v75 = 1024;
        v76 = v51;
        v77 = 1024;
        v78 = v52;
        v79 = 2048;
        v80 = v54;
        v81 = 2048;
        v82 = v55;
        LODWORD(v58) = 78;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v45, 0, "#bg,logRequest,nonRepeatingRequest,note,%s,name,%s,scheduleType,%d,priority,%d,requiresInexpensiveNetworkConnectivity,%d,requiresExternalPower,%d,requiresNetworkConnectivity,%d,resourceIntensive,%d,scheduleAfter,%.1f,trySchedulingBefore,%.1f", &v63, v58, v60, v62);
        v57 = v56;
        sub_100152C7C("Generic", 1, 0, 2, "void CLBackgroundSystemTask::logRequest(BGSystemTaskRequest *, const char *) const", "%s\n", v56);
        if (v57 != buf)
        {
          free(v57);
        }

        a1 = v59;
        a3 = v61;
        v7 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (p_info[270] != -1)
      {
        sub_1019103B4();
      }

      v21 = v7[271];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = "<empty note>";
        if (a3)
        {
          v22 = a3;
        }

        v61 = v22;
        v23 = [objc_msgSend(a2 "identifier")];
        LODWORD(v59) = *(a1 + 18);
        v24 = a1;
        v25 = [a2 priority];
        v26 = [a2 requiresInexpensiveNetworkConnectivity];
        v27 = [a2 requiresExternalPower];
        v28 = [a2 requiresNetworkConnectivity];
        v29 = [a2 resourceIntensive];
        [a2 interval];
        *buf = 136317186;
        v84 = v61;
        v85 = 2080;
        v86 = v23;
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v87 = 1024;
        v88 = v59;
        v89 = 1024;
        v90 = v25;
        a1 = v24;
        v7 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v91 = 1024;
        v92 = v26;
        v93 = 1024;
        v94 = v27;
        v95 = 1024;
        v96 = v28;
        v97 = 1024;
        v98 = v29;
        v99 = 2048;
        v100 = v30;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#bg,logRequest,repeatingRequest,note,%s,name,%s,scheduleType,%d,priority,%d,requiresInexpensiveNetworkConnectivity,%d,requiresExternalPower,%d,requiresNetworkConnectivity,%d,resourceIntensive,%d,interval,%.1f", buf, 0x44u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (p_info[270] != -1)
        {
          sub_1019103B4();
        }

        v31 = v7[271];
        if (a3)
        {
          v32 = a3;
        }

        else
        {
          v32 = "<empty note>";
        }

        v33 = [objc_msgSend(a2 "identifier")];
        v34 = *(a1 + 18);
        v35 = [a2 priority];
        v36 = [a2 requiresInexpensiveNetworkConnectivity];
        v37 = [a2 requiresExternalPower];
        v38 = [a2 requiresNetworkConnectivity];
        v39 = [a2 resourceIntensive];
        [a2 interval];
        v63 = 136317186;
        v64 = v32;
        v65 = 2080;
        v66 = v33;
        v67 = 1024;
        v68 = v34;
        v69 = 1024;
        v70 = v35;
        v71 = 1024;
        v72 = v36;
        v73 = 1024;
        v74 = v37;
        v75 = 1024;
        v76 = v38;
        v77 = 1024;
        v78 = v39;
        v79 = 2048;
        v80 = v40;
        LODWORD(v58) = 68;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v31, 0, "#bg,logRequest,repeatingRequest,note,%s,name,%s,scheduleType,%d,priority,%d,requiresInexpensiveNetworkConnectivity,%d,requiresExternalPower,%d,requiresNetworkConnectivity,%d,resourceIntensive,%d,interval,%.1f", &v63, v58, v59, v61);
        v42 = v41;
        sub_100152C7C("Generic", 1, 0, 2, "void CLBackgroundSystemTask::logRequest(BGSystemTaskRequest *, const char *) const", "%s\n", v41);
        if (v42 != buf)
        {
          free(v42);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1019103DC();
    }

    v43 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v44 = "<empty note>";
      if (a3)
      {
        v44 = a3;
      }

      *buf = 136315138;
      v84 = v44;
      _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_ERROR, "#bg,logRequest,invalid request,%s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10191190C(a3);
    }
  }
}

void sub_1006E5878(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(a1 + 4) = v2;
  *(v4 - 52) = 2080;
  *(a1 + 14) = v3;
}

uint64_t sub_1006E652C(uint64_t a1)
{
  *a1 = off_10246B9C8;
  v2 = [objc_msgSend(*(a1 + 128) "vendor")];
  if (*(a1 + 95) < 0)
  {
    sub_100007244(__dst, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *__dst = *(a1 + 72);
    v11 = *(a1 + 88);
  }

  if (*(a1 + 119) < 0)
  {
    sub_100007244(&__p, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    __p = *(a1 + 96);
    v13 = *(a1 + 112);
  }

  v14 = *(a1 + 120);
  [v2 checkWeakPersistentClientWithIdentifier:sub_1006E679C(__dst)];
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__dst[0]);
  }

  v3 = *(a1 + 240);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, 0);
  if (v4)
  {
    v5 = MEMORY[0];
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(v3);
        }

        [objc_msgSend(*(a1 + 240) objectForKeyedSubscript:{*(8 * i)), "invalidate"}];
      }

      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3);
    }

    while (v4);
  }

  sub_1006E6A20(a1 + 200);
  sub_1004906DC(a1 + 160);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    sub_100008080(v7);
  }

  sub_1003C93BC(a1 + 24, *(a1 + 32));
  v8 = *(a1 + 16);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

void sub_1006E6760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    if (a22 < 0)
    {
      operator delete(__p);
    }

    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id sub_1006E679C(__int128 *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_1006E6AF4;
  v4[3] = &unk_10246BA68;
  if (*(a1 + 23) < 0)
  {
    sub_100007244(&v5, *a1, *(a1 + 1));
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 2);
  }

  if (*(a1 + 47) < 0)
  {
    sub_100007244(&__p, *(a1 + 3), *(a1 + 4));
  }

  else
  {
    __p = *(a1 + 24);
    v8 = *(a1 + 5);
  }

  v9 = *(a1 + 6);
  v2 = [v4 copy];
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5);
  }

  return v2;
}

void sub_1006E6898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E68CC(uint64_t result)
{
  if (*(result + 248) == 1)
  {
    v1 = result;
    *(result + 248) = 0;
    sub_1006E6C7C((result + 160));
    sub_1003C93BC(v1 + 24, *(v1 + 32));
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 24) = v1 + 32;
    v2 = *(v1 + 48);
    sub_10000E198(&v3, (v1 + 8));
    (*(*v2 + 16))(v2, &v3);
    if (v4)
    {
      sub_100008080(v4);
    }

    return (*(*v1 + 56))(v1);
  }

  return result;
}

void sub_1006E6994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006E69AC(uint64_t a1)
{
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

uint64_t sub_1006E6A20(uint64_t a1)
{
  sub_1006E6A5C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1006E6A5C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1006E6AA0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1006E6AA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100008080(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

char *sub_1006E6AF4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[55] < 0)
  {
    result = sub_100007244(a2, *(result + 4), *(result + 5));
  }

  else
  {
    *a2 = *(result + 2);
    *(a2 + 16) = *(result + 6);
  }

  if (v2[79] < 0)
  {
    result = sub_100007244((a2 + 24), *(v2 + 7), *(v2 + 8));
  }

  else
  {
    *(a2 + 24) = *(v2 + 56);
    *(a2 + 40) = *(v2 + 9);
  }

  *(a2 + 48) = *(v2 + 10);
  return result;
}

void sub_1006E6B70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1006E6B8C(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 55) < 0)
  {
    result = sub_100007244(result + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 6) = *(a2 + 48);
    *(result + 2) = v4;
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_100007244(v3 + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(v3 + 56) = v5;
  }

  *(v3 + 10) = *(a2 + 80);
  return result;
}

void sub_1006E6C08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006E6C24(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void *sub_1006E6C7C(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t sub_1006E6CE8()
{
  result = sub_100008074();
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006E6D88(uint64_t a1, uint64_t a2)
{
  if (qword_102658F80 != -1)
  {
    sub_101911A5C();
  }

  return qword_1026371F8;
}

void sub_1006E6DC8(void *a1)
{
  sub_101137710(a1);

  operator delete();
}

double sub_1006E6E00(uint64_t a1, void *a2, double *a3)
{
  if (a2)
  {
    if (qword_1025D4320 != -1)
    {
      sub_101911A70();
    }

    v4 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
    {
      v11 = 67240192;
      LODWORD(v12) = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "[AccessoryProximity] Unrecognized interval notification %{public}d", &v11, 8u);
    }

    v5 = 0.0;
    if (sub_10000A100(121, 0))
    {
      sub_101911A84(a2);
    }
  }

  else
  {
    sub_1011381C4(a1, a2);
    if (qword_1025D4320 != -1)
    {
      sub_101911A70();
    }

    v8 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
    {
      v9 = *a3;
      v11 = 134349056;
      v12 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[AccessoryProximity] Setting update interval to %{public}f", &v11, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101911B74(a3);
    }

    sub_10017A1F4(*(a1 + 32), *a3);
    v5 = *a3;
    if (*a3 > 0.0)
    {
      *(a1 + 29) = 0;
    }
  }

  return v5;
}

double sub_1006E6F9C(uint64_t *a1, void *a2, double *a3)
{
  if (a2)
  {
    if (qword_1025D4320 != -1)
    {
      sub_101911A70();
    }

    v4 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
    {
      v11 = 67240192;
      LODWORD(v12) = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "[AccessoryProximity] Unrecognized batch notification %{public}d", &v11, 8u);
    }

    v5 = 0.0;
    if (sub_10000A100(121, 0))
    {
      sub_101911C6C(a2);
    }
  }

  else
  {
    sub_1011381C4(a1, a2);
    if (qword_1025D4320 != -1)
    {
      sub_101911A70();
    }

    v8 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
    {
      v9 = *a3;
      v11 = 134349056;
      v12 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[AccessoryProximity] Setting batch interval to %{public}f", &v11, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101911D5C(a3);
    }

    sub_100179350(a1[4], *a3);
    return *a3;
  }

  return v5;
}

void sub_1006E712C(uint64_t a1, uint64_t a2)
{
  sub_100061FD8(a1, 0, a2, 32);
  if ((*(a1 + 29) & 1) == 0)
  {
    v15 = *"N/A";
    v16 = unk_101C89387;
    v17 = xmmword_101C89397;
    v18 = unk_101C893A7;
    v19 = *"N/A";
    *(a1 + 29) = 1;
    v14 = 0;
    v20 = unk_101C893C7;
    memset(v21, 0, sizeof(v21));
    memset(v22, 0, sizeof(v22));
    if (sub_1011378CC(a1, &v14))
    {
      *buf = 0u;
      memset(v13, 0, sizeof(v13));
      v3 = sub_10026E634(*(a1 + 32));
      if (sub_1012AC674(buf, v3, @"OSCL", 0x25))
      {
        v4 = 0;
        v5 = &v21[5];
        do
        {
          snprintf(v5, 0x25uLL, "%02x", buf[v4++]);
          v5 += 2;
        }

        while (v4 != 37);
      }

      v10 = 0;
      v11[0] = 0;
      *(v11 + 5) = 0;
      v6 = sub_10026E634(*(a1 + 32));
      if (sub_1012AC674(&v10, v6, @"PDTC", 0x15))
      {
        v7 = 0;
        v8 = v22;
        do
        {
          snprintf(v8, 0x15uLL, "%02x", *(&v11[-1] + v7++));
          v8 += 2;
        }

        while (v7 != 21);
      }

      sub_100061FD8(a1, 1, &v14, 224);
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_101911E54();
      }

      v9 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "[AccessoryProximity] Service not found!", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101911E7C();
      }
    }
  }
}

void sub_1006E7398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DataValue = IOHIDEventGetDataValue();
  IntegerValue = IOHIDEventGetIntegerValue();
  if (DataValue)
  {
    v8 = IntegerValue == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = IntegerValue;
    v10 = IOHIDEventGetIntegerValue();
    v11 = IOHIDEventGetIntegerValue();
    if (v11 == 65300 && v10 == 3)
    {
      TimeStamp = IOHIDEventGetTimeStamp();
      v13 = sub_1000080EC(TimeStamp);
      v14 = sub_1012ABB78(a4);
      if (v9 == 10)
      {
        v15 = *(DataValue + 4);
      }

      else
      {
        if (v9 != 8)
        {
          if (qword_1025D4320 != -1)
          {
            sub_101911A70();
          }

          v41 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2082;
            *&buf[20] = "assert";
            *v76 = 2081;
            *&v76[2] = "length == sizeof(CLClefOpticalTempSampleV1)";
            _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[AccessoryProximity] Incorrect optical and temperature size., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
            if (qword_1025D4320 != -1)
            {
              sub_101911E54();
            }
          }

          v42 = qword_1025D4328;
          if (os_signpost_enabled(qword_1025D4328))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2082;
            *&buf[20] = "assert";
            *v76 = 2081;
            *&v76[2] = "length == sizeof(CLClefOpticalTempSampleV1)";
            _os_signpost_emit_with_name_impl(dword_100000000, v42, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[AccessoryProximity] Incorrect optical and temperature size.", "{msg%{public}.0s:[AccessoryProximity] Incorrect optical and temperature size., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
            if (qword_1025D4320 != -1)
            {
              sub_101911E54();
            }
          }

          v43 = qword_1025D4328;
          if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2082;
            *&buf[20] = "assert";
            *v76 = 2081;
            *&v76[2] = "length == sizeof(CLClefOpticalTempSampleV1)";
            _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[AccessoryProximity] Incorrect optical and temperature size., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          }

          abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Shared/Motion/Notifiers/CLAccessoryProximity.mm", 178, "onEventData");
        }

        v15 = 0;
      }

      v17 = *DataValue;
      v18 = DataValue[1];
      v19 = *(DataValue + 2);
      v20 = *(DataValue + 1);
      v21 = *(DataValue + 3);
      if (qword_1025D4320 != -1)
      {
        sub_101911A70();
      }

      v22 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
      {
        v23 = *DataValue;
        v24 = DataValue[1];
        v25 = DataValue[2];
        v26 = DataValue[3];
        v27 = DataValue[4];
        v28 = DataValue[5];
        v29 = DataValue[6];
        v30 = DataValue[7];
        *buf = 67244032;
        *&buf[4] = v17;
        *&buf[8] = 1026;
        *&buf[10] = v18;
        *&buf[14] = 1026;
        *&buf[16] = v19;
        *&buf[20] = 1026;
        *&buf[22] = v20;
        *&buf[26] = 1026;
        *v76 = v21;
        *&v76[4] = 1026;
        *&v76[6] = v15;
        v77 = 2050;
        v78 = v14;
        v79 = 2050;
        v80 = v13;
        v81 = 1026;
        v82 = v23;
        v83 = 1026;
        v84 = v24;
        v85 = 1026;
        v86 = v25;
        v87 = 1026;
        v88 = v26;
        v89 = 1026;
        v90 = v27;
        v91 = 1026;
        v92 = v28;
        v93 = 1026;
        v94 = v29;
        v95 = 1026;
        v96 = v30;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "[AccessoryProximity] location_id,%{public}d,status,%{public}d,base,%{public}d,peak,%{public}d,temp,%{public}d,seq,%{public}d,sensorTime,%{public}llu,timestamp,%{public}20.20f,raw %{public}02x %{public}02x %{public}02x %{public}02x %{public}02x %{public}02x %{public}02x %{public}02x", buf, 0x6Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4320 != -1)
        {
          sub_101911E54();
        }

        v31 = *DataValue;
        v32 = DataValue[1];
        v33 = DataValue[2];
        v34 = DataValue[3];
        v35 = DataValue[4];
        v36 = DataValue[5];
        v37 = DataValue[6];
        v38 = DataValue[7];
        v44[0] = 67244032;
        v44[1] = v17;
        v45 = 1026;
        v46 = v18;
        v47 = 1026;
        v48 = v19;
        v49 = 1026;
        v50 = v20;
        v51 = 1026;
        v52 = v21;
        v53 = 1026;
        v54 = v15;
        v55 = 2050;
        v56 = v14;
        v57 = 2050;
        v58 = v13;
        v59 = 1026;
        v60 = v31;
        v61 = 1026;
        v62 = v32;
        v63 = 1026;
        v64 = v33;
        v65 = 1026;
        v66 = v34;
        v67 = 1026;
        v68 = v35;
        v69 = 1026;
        v70 = v36;
        v71 = 1026;
        v72 = v37;
        v73 = 1026;
        v74 = v38;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4328, 2, "[AccessoryProximity] location_id,%{public}d,status,%{public}d,base,%{public}d,peak,%{public}d,temp,%{public}d,seq,%{public}d,sensorTime,%{public}llu,timestamp,%{public}20.20f,raw %{public}02x %{public}02x %{public}02x %{public}02x %{public}02x %{public}02x %{public}02x %{public}02x", v44, 106);
        v40 = v39;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLAccessoryProximity::onEventData(void *, void *, IOHIDEventRef)", "%s\n", v39);
        if (v40 != buf)
        {
          free(v40);
        }
      }

      *buf = v13;
      *&buf[8] = v14;
      buf[16] = v17;
      buf[17] = v18;
      *&buf[20] = v19;
      *&buf[18] = v20;
      *&buf[22] = v21;
      *&buf[24] = v15;
      sub_1006E712C(a1, buf);
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_101911A70();
      }

      v16 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
      {
        *buf = 134349312;
        *&buf[4] = v11;
        *&buf[12] = 2050;
        *&buf[14] = v10;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "[AccessoryProximity] Invalid usage page/usage: {%{public}ld,%{public}ld}", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101911F88(v11, v10);
      }
    }
  }
}
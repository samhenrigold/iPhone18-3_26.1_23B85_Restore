unint64_t sub_1002B9BFC(uint64_t *a1, char *a2, unint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v3 = *a1;
    v4 = a1[1];
  }

  v5 = a2[23];
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
    v7 = a2[23];
  }

  else
  {
    v7 = *(a2 + 1);
  }

  v8 = v4 - a3;
  if (v4 < a3)
  {
    return -1;
  }

  if (v7)
  {
    v9 = v3 + v4;
    if (v8 >= v7)
    {
      v12 = v3 + a3;
      v13 = *v6;
      do
      {
        if (v8 - v7 == -1)
        {
          break;
        }

        v14 = memchr(v12, v13, v8 - v7 + 1);
        if (!v14)
        {
          break;
        }

        v10 = v14;
        if (!memcmp(v14, v6, v7))
        {
          goto LABEL_14;
        }

        v12 = v10 + 1;
        v8 = v9 - (v10 + 1);
      }

      while (v8 >= v7);
    }

    v10 = v9;
LABEL_14:
    if (v10 == v9)
    {
      return -1;
    }

    else
    {
      return v10 - v3;
    }
  }

  return a3;
}

size_t sub_1002B9CCC(size_t result, uint64_t a2, double a3)
{
  if (*result == 1)
  {
    v4 = result;
    if (sub_1002BFDB4(result, a3))
    {
      v5 = objc_autoreleasePoolPush();
      v7 = objc_alloc_init(NSMutableArray);
      v8 = *(v4 + 8);
      for (i = *(v4 + 16); v8 != i; v8 += 3)
      {
        v10 = v8;
        if (*(v8 + 23) < 0)
        {
          v10 = *v8;
        }

        [v7 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", v10)}];
      }

      sub_100327DC4(v7, v6, *(v4 + 40));
      objc_autoreleasePoolPop(v5);
      sub_1001E573C((v4 + 8));
      v11 = 0;
      *(v4 + 52) = 0;
    }

    else
    {
      v11 = *(v4 + 52);
    }

    v12 = *(a2 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 8);
    }

    *(v4 + 52) = v11 + v12;
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    result = strlen(v13);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    v14 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    HIBYTE(v30) = result;
    if (result)
    {
      result = memmove(&__dst, v13, result);
    }

    *(&__dst + v14) = 0;
    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15)
    {
      v18 = *(v4 + 8);
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v18) >> 3);
      v20 = v19 + 1;
      if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10028C64C();
      }

      v21 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v18) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x555555555555555)
      {
        v22 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v22 = v20;
      }

      v31[4] = v4 + 8;
      if (v22)
      {
        sub_1001A19D8(v4 + 8, v22);
      }

      v23 = 24 * v19;
      *v23 = __dst;
      *(v23 + 16) = v30;
      v17 = 24 * v19 + 24;
      v24 = *(v4 + 8);
      v25 = *(v4 + 16) - v24;
      v26 = 24 * v19 - v25;
      memcpy((v23 - v25), v24, v25);
      v27 = *(v4 + 8);
      *(v4 + 8) = v26;
      *(v4 + 16) = v17;
      v28 = *(v4 + 24);
      *(v4 + 24) = 0;
      v31[2] = v27;
      v31[3] = v28;
      v31[0] = v27;
      v31[1] = v27;
      result = sub_100197A50(v31);
    }

    else
    {
      *v16 = __dst;
      *(v16 + 16) = v30;
      v17 = v16 + 24;
    }

    *(v4 + 16) = v17;
  }

  return result;
}

void sub_1002B9F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002B9F80(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v9 = (a1 + 8);
  v8 = *(a1 + 8);
  v73 = a1 + 8;
  (*(v8 + 16))(a1 + 8);
  v74 = 256;
  v10 = v9[28];
  if (v10 && *(a1 + 216))
  {
    v11 = a4[5];
    v93 = a4[4];
    v94 = v11;
    v12 = a4[7];
    v95 = a4[6];
    v96 = v12;
    v13 = a4[1];
    v89 = *a4;
    v90 = v13;
    v14 = a4[3];
    v91 = a4[2];
    v92 = v14;
    if (*(a4 + 151) < 0)
    {
      sub_100007244(&v97, *(a4 + 16), *(a4 + 17));
      v10 = *(a1 + 232);
    }

    else
    {
      v97 = *(a4 + 8);
    }

    memcpy(v98, a4 + 152, sizeof(v98));
    if (((*(*v10 + 32))(v10, a4) & 1) == 0)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_101B095F4();
      }

      v31 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v32 = *(a4 + 1);
        *buf = 134349056;
        *&buf[4] = v32;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,match() returned false", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B095B0(buf);
        v53 = *(a4 + 1);
        v75 = 134349056;
        v76 = v53;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,%{public}.1lf,match() returned false", &v75, 12);
        v55 = v54;
        sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLMapMatchingEngineBase::match(CLDaemonLocation &, CLDaemonLocationPrivate &, CLMapCrumb &)", "%s\n", v54);
        if (v55 != buf)
        {
          free(v55);
        }
      }

      v17 = 0;
      goto LABEL_60;
    }

    (*(**(a1 + 232) + 160))(&v71);
    v18 = (*(**(a1 + 232) + 168))(*(a1 + 232));
    sub_10000EC00(__p, "NoRouteHintCrumb");
    sub_1002BC9B8(a4, __p);
    if (v70 < 0)
    {
      operator delete(__p[0]);
    }

    v19 = *(a4 + 3);
    if ((*(a1 + 184) - 3) > 1)
    {
      v33 = *(a1 + 344);
      if (v33 <= 0.0 || vabdd_f64(v19, v33) >= 30.0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      *(a1 + 344) = v19;
    }

    v20 = *(a1 + 248);
    if (v20 && (*(*v20 + 88))(v20))
    {
      if (((*(**(a1 + 248) + 32))(*(a1 + 248), &v89) & 1) == 0)
      {
        if (qword_1025D46B0 != -1)
        {
          sub_101B095F4();
        }

        v49 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = *(&v89 + 1);
          _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,matchRouteHints() returned false", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B095B0(buf);
          v75 = 134349056;
          v76 = *(&v89 + 1);
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,%{public}.1lf,matchRouteHints() returned false", &v75, 12);
          v57 = v56;
          sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLMapMatchingEngineBase::match(CLDaemonLocation &, CLDaemonLocationPrivate &, CLMapCrumb &)", "%s\n", v56);
          if (v57 != buf)
          {
            free(v57);
          }
        }

        v17 = 0;
        goto LABEL_58;
      }

      sub_10000EC00(v67, "RouteHintCrumb");
      sub_1002BC9B8(&v89, v67);
      if (v68 < 0)
      {
        operator delete(v67[0]);
      }

      if (v98[112] == 1)
      {
        v21 = v94;
        a4[4] = v93;
        a4[5] = v21;
        v22 = v96;
        a4[6] = v95;
        a4[7] = v22;
        v23 = v90;
        *a4 = v89;
        a4[1] = v23;
        v24 = v92;
        a4[2] = v91;
        a4[3] = v24;
        std::string::operator=((a4 + 8), &v97);
        memcpy(a4 + 152, v98, 0x118uLL);
        (*(**(a1 + 248) + 160))(buf);
        v25 = *buf;
        v26 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
        }

        v27 = v72;
        v71 = v25;
        v72 = v26;
        if (v27)
        {
          sub_100008080(v27);
        }

        if (*&buf[8])
        {
          sub_100008080(*&buf[8]);
        }

        v18 = (*(**(a1 + 232) + 168))(*(a1 + 232));
        if (qword_1025D46B0 != -1)
        {
          sub_101B095F4();
        }

        v28 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349056;
          *&buf[4] = *(&v89 + 1);
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,Using solution with route hints", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B095B0(buf);
          v75 = 134349056;
          v76 = *(&v89 + 1);
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,%{public}.1lf,Using solution with route hints", &v75, 12);
          v30 = v29;
          sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLMapMatchingEngineBase::match(CLDaemonLocation &, CLDaemonLocationPrivate &, CLMapCrumb &)", "%s\n", v29);
          if (v30 != buf)
          {
            free(v30);
          }
        }
      }
    }

LABEL_44:
    sub_1002BD468(a1, a4, a2, a3);
    v34 = *(a1 + 336);
    if (v34)
    {
      *(a3 + 124) = -1;
      *(a3 + 128) = 0xBFF0000000000000;
      *(a3 + 136) = -1;
      *(a3 + 144) = 0;
      *(a3 + 152) = 0;
      *(a3 + 160) = 0xBFF0000000000000;
      if (*(a4 + 264) == 1 && (*(a4 + 265) & 1) == 0 && sub_1006F8014(v34, &v71, v18, a4))
      {
        v35 = *(a1 + 336);
        v36 = *(v35 + 16);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v37 = *(v35 + 40);
        v38 = *(v35 + 64);
        v39 = *(v35 + 32);
        v40 = *(v35 + 48);
        *(a3 + 124) = *(v35 + 24);
        *(a3 + 128) = v39;
        *(a3 + 136) = v37;
        *(a3 + 144) = v40;
        *(a3 + 160) = v38;
        if (qword_1025D46B0 != -1)
        {
          sub_101B095F4();
        }

        v41 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          v42 = *(a3 + 124);
          v43 = *(a3 + 128);
          v44 = *(a3 + 136);
          v45 = *(a3 + 144);
          v46 = *(a3 + 152);
          v47 = *(a3 + 160);
          *buf = 134350593;
          *&buf[4] = *(&v89 + 1);
          *&buf[12] = 1026;
          *&buf[14] = v42;
          v100 = 2050;
          v101 = v43;
          v102 = 2049;
          v103 = v44;
          v104 = 2053;
          v105 = v45;
          v106 = 2053;
          v107 = v46;
          v108 = 2050;
          v109 = v47;
          _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,estimatedLane,%{public}d,laneProbability,%{public}.2lf,featureId,%{private}lld,LL,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.1lf", buf, 0x44u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B095B0(buf);
          v58 = *(a3 + 124);
          v59 = *(a3 + 128);
          v60 = *(a3 + 136);
          v61 = *(a3 + 144);
          v62 = *(a3 + 152);
          v63 = *(a3 + 160);
          v75 = 134350593;
          v76 = *(&v89 + 1);
          v77 = 1026;
          v78 = v58;
          v79 = 2050;
          v80 = v59;
          v81 = 2049;
          v82 = v60;
          v83 = 2053;
          v84 = v61;
          v85 = 2053;
          v86 = v62;
          v87 = 2050;
          v88 = v63;
          LODWORD(v66) = 68;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMMLE,%{public}.1lf,estimatedLane,%{public}d,laneProbability,%{public}.2lf,featureId,%{private}lld,LL,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.1lf", &v75, v66);
          v65 = v64;
          sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLMapMatchingEngineBase::match(CLDaemonLocation &, CLDaemonLocationPrivate &, CLMapCrumb &)", "%s\n", v64);
          if (v65 != buf)
          {
            free(v65);
          }
        }

        if (v36)
        {
          sub_100008080(v36);
        }
      }
    }

    v17 = 1;
LABEL_58:
    if (v72)
    {
      sub_100008080(v72);
    }

LABEL_60:
    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    goto LABEL_62;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_1000E8BB4();
  }

  v15 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a2 + 76);
    *buf = 134349056;
    *&buf[4] = v16;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,null pointers for matcher and geometry", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B095B0(buf);
    v50 = *(a2 + 76);
    LODWORD(v89) = 134349056;
    *(&v89 + 4) = v50;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 16, "CLMM,%{public}.1lf,null pointers for matcher and geometry", &v89, 12);
    v52 = v51;
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLMapMatchingEngineBase::match(CLDaemonLocation &, CLDaemonLocationPrivate &, CLMapCrumb &)", "%s\n", v51);
    if (v52 != buf)
    {
      free(v52);
    }
  }

  v17 = 0;
LABEL_62:
  (*(*v9 + 24))(v9);
  return v17;
}

void sub_1002BAA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a25)
  {
    sub_100008080(a25);
  }

  if (a60 < 0)
  {
    operator delete(__p);
  }

  sub_1017EC98C(&a26);
  _Unwind_Resume(a1);
}

void sub_1002BAAD4(void *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  JUMPOUT(0x1002BAACCLL);
}

void sub_1002BAAE4(uint64_t a1)
{
  if (qword_1025D46B0 != -1)
  {
    sub_1002CF0D0();
  }

  v2 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 36);
    v4 = *(a1 + 40);
    v12[0] = 67240448;
    v12[1] = v3;
    v13 = 1026;
    v14 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLMM,MapsAPICallCount,%{public}d,MapsAPIQueryContinuousFailCount,%{public}d", v12, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AFFCB4(a1, v5, v6, v7, v8, v9, v10, v11);
  }
}

uint64_t sub_1002BABC8(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    if (*(a1 + 96) == 1)
    {
      sub_1002BAAE4(v5);
    }

    sub_1002BC750(a1 + 1848, a1 + 1008);
    v6 = *(a2 + 12);
    if (v6 >= 0.0)
    {
      *(a1 + 3872) = *(a2 + 1);
      *(a1 + 3832) = v6;
    }

    *(a1 + 3712) = 0;
    sub_1002BC954(a1, *(a2 + 13), *(a2 + 24));
    v7 = (a1 + 1128);
    sub_1002BC960(a1, a1 + 1128);
    v8 = *(a2 + 56);
    *(a2 + 152) = v8;
    *&v9 = *(a2 + 13);
    *(a2 + 40) = *(&v8 + 1);
    *(a2 + 21) = v9;
    *(&v9 + 1) = v8;
    a2[18] = v8;
    a2[19] = v9;
    *(a2 + 328) = v8;
    *(a2 + 70) = 0;
    if (*(a2 + 1) - *(a1 + 1976) <= 6.0)
    {
LABEL_23:
      v19 = *(a2 + 12);
      *buf = v19;
      sub_1000423D4(a1 + 2976, buf);
      v20 = *(a1 + 4024);
      if (v20 < 0.0)
      {
        if (*(a2 + 3) - *(a1 + 4008) >= 900.0)
        {
          v20 = 5.55555556;
        }

        else
        {
          v20 = 1.66666667;
        }
      }

      if (*(a2 + 12) <= v20 && (*(a1 + 2232) & 1) == 0)
      {
        if (*(a1 + 96) == 1)
        {
          if (qword_1025D46B0 != -1)
          {
            sub_101B05628();
          }

          v25 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
          {
            v26 = *(a2 + 1);
            *buf = 134349056;
            *&buf[4] = v26;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf, not matching", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B05650(buf);
            v57 = *(a2 + 1);
            v165 = 134349056;
            v166 = v57;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,%{public}.1lf, not matching", &v165, 12);
            v59 = v58;
            sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "%s\n", v58);
            if (v59 != buf)
            {
              free(v59);
            }
          }
        }

LABEL_56:
        v27 = 1;
        if (!v4)
        {
          return v27;
        }

        goto LABEL_108;
      }

      if (*(a2 + 348) == 1)
      {
        if (*(a1 + 96) == 1)
        {
          if (qword_1025D46B0 != -1)
          {
            sub_101B05628();
          }

          v21 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "CLMM,opportunistic tile download only, favorable GPS conditions", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B05650(buf);
            LOWORD(v165) = 0;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,opportunistic tile download only, favorable GPS conditions", &v165, 2);
            v56 = v55;
            sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "%s\n", v55);
            if (v56 != buf)
            {
              free(v56);
            }
          }
        }

        v22 = *(a1 + 112);
      }

      else
      {
        v22 = 1;
      }

      if (*(a1 + 4128) == 1 && (v22 & 1) != 0)
      {
        v23 = *(a1 + 3040);
        v22 = 1;
        if (v23)
        {
          if (v23 >= *(a1 + 2984))
          {
            if ((*(a1 + 2992) / v23) <= 22.222)
            {
              v22 = 1;
            }

            else
            {
              if (*(a1 + 96) == 1)
              {
                if (qword_1025D46B0 != -1)
                {
                  sub_101B05628();
                }

                v24 = qword_1025D46B8;
                if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "CLMM,opportunistic tile download only, high speed threshold", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101B05650(buf);
                  LOWORD(v165) = 0;
                  LODWORD(v161) = 2;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,opportunistic tile download only, high speed threshold", &v165, v161);
                  v112 = v111;
                  sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "%s\n", v111);
                  if (v112 != buf)
                  {
                    free(v112);
                  }
                }
              }

              v22 = 0;
            }
          }
        }
      }

      v28 = v22 & (*(a1 + 113) == 0);
      if (*(a1 + 96) == 1)
      {
        if (qword_1025D46B0 != -1)
        {
          sub_101B05628();
        }

        v29 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          v30 = *(a2 + 1);
          *buf = 134349312;
          *&buf[4] = v30;
          v172 = 1026;
          *v173 = v28;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "CLMM,match,%{public}.1lf,allowsNetworkUsage,%{public}d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B05650(buf);
          v52 = *(a2 + 1);
          v165 = 134349312;
          v166 = v52;
          v167 = 1026;
          *v168 = v28;
          LODWORD(v161) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,match,%{public}.1lf,allowsNetworkUsage,%{public}d", &v165, v161);
          v54 = v53;
          sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "%s\n", v53);
          if (v54 != buf)
          {
            free(v54);
          }
        }
      }

      (*(*v5 + 32))(v5, v28);
      (*(*v5 + 48))(v5, a2, 450.0);
      v5[1] = *(a2 + 1);
      (*(*v5 + 96))(v5);
      sub_100253098(a1 + 984, *(a1 + 992));
      *(a1 + 984) = a1 + 992;
      *(a1 + 992) = 0u;
      *(a1 + 944) = *(a1 + 936);
      sub_1002982C8((a1 + 936), 0xC0uLL);
      sub_100253630(a1 + 1008);
      v31 = *a2;
      v32 = a2[1];
      v33 = a2[3];
      *(a1 + 1160) = a2[2];
      *(a1 + 1176) = v33;
      *v7 = v31;
      *(a1 + 1144) = v32;
      v34 = a2[4];
      v35 = a2[5];
      v36 = a2[7];
      *(a1 + 1224) = a2[6];
      *(a1 + 1240) = v36;
      *(a1 + 1192) = v34;
      *(a1 + 1208) = v35;
      std::string::operator=((a1 + 1256), (a2 + 8));
      memcpy((a1 + 1280), a2 + 152, 0x118uLL);
      v37 = *(a1 + 1976);
      v38 = *(a1 + 1136) - v37;
      *(a1 + 1640) = v38;
      if (v38 == 0.0)
      {
        if (*(a1 + 96) == 1)
        {
          if (qword_1025D46B0 != -1)
          {
            sub_101B05628();
          }

          v39 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_INFO, "CLMM,Time difference between updates is zero,update ignored", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B05650(buf);
            LOWORD(v165) = 0;
            LODWORD(v161) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,Time difference between updates is zero,update ignored", &v165, v161);
            v18 = v40;
            sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "%s\n", v40);
LABEL_73:
            if (v18 != buf)
            {
              free(v18);
            }

            goto LABEL_107;
          }
        }

        goto LABEL_107;
      }

      v41 = 4.9;
      if (*(a1 + 1356) == 1 && *(a1 + 2232) == 1 && v38 > 4.9)
      {
        v42 = *(a1 + 1480);
        if (v42 <= v37 + 1.2 && v42 > 0.0)
        {
          v41 = 75.0;
        }
      }

      if (v38 < 0.0 || v38 > v41)
      {
        sub_1002529C4(a1);
      }

      if (*(a1 + 864) == *(a1 + 872))
      {
        *(a1 + 1640) = 0;
      }

      sub_1010270EC(a1, a1 + 1128);
      sub_101028238(a1, a1 + 1128);
      sub_10103D0D0(a1, a1 + 1128);
      ++*(a1 + 100);
      if (sub_101034080(a1))
      {
        *(a1 + 1845) = sub_10103D1B0(a1);
        if (sub_10103D6B8(a1))
        {
          if (!sub_1010367A4(a1))
          {
            goto LABEL_110;
          }

          if (!sub_1010325C8(a1))
          {
            goto LABEL_106;
          }

          if ((sub_101036D38(a1) & 1) == 0)
          {
LABEL_110:
            (*(*a1 + 40))(a1);
            goto LABEL_111;
          }

          sub_10103A340(a1);
          if (sub_10103B644(a1))
          {
            v164 = 0;
            if ((sub_10103C528(a1, &v164) & 1) == 0)
            {
              goto LABEL_234;
            }

            if (v164 == 1 && !sub_10103CB40(a1))
            {
              (*(*a1 + 40))(a1);
              goto LABEL_107;
            }

            if (*(a1 + 1392) == 1 && (v44 = *(a1 + 1016), *(a1 + 777) = *(v44 + 16), *(a1 + 780) = *(v44 + 20), *(a1 + 784) = *(a1 + 1649), *(a1 + 2232) == 1))
            {
              if (*(a1 + 2080) != *(a1 + 1240) && sub_101027094(*(a1 + 1432) - *(a1 + 2272)) > 45.0)
              {
                v45 = *(a1 + 3080);
                if (v45 == a1 + 3072)
                {
                  v49 = 1;
                }

                else
                {
                  v46 = *(a1 + 1240);
                  do
                  {
                    v47 = **(v45 + 16);
                    v48 = v46 == v47;
                    v49 = v46 != v47;
                    if (v48)
                    {
                      break;
                    }

                    v45 = *(v45 + 8);
                  }

                  while (v45 != a1 + 3072);
                }

                v60 = *(a1 + 3128);
                if (v60 == a1 + 3120)
                {
LABEL_127:
                  if (v49)
                  {
                    v61 = *(a1 + 1016);
                    v62 = *(a1 + 1024);
                    if (v62)
                    {
                      atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v63 = *(a1 + 1856);
                    v64 = *(a1 + 1864);
                    if (v64)
                    {
                      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v65 = *(v61 + 136);
                    v66 = 0.0;
                    v67 = 0.0;
                    v68 = 0.0;
                    if (*(v61 + 144) != v65)
                    {
                      v67 = *v65;
                      v68 = v65[1];
                    }

                    v69 = *(v63 + 136);
                    v70 = 0.0;
                    if (*(v63 + 144) != v69)
                    {
                      v66 = *v69;
                      v70 = v69[1];
                    }

                    if (sub_1004E60BC(v67, v68, v66, v70, 0.0000001))
                    {
                      goto LABEL_152;
                    }

                    v71 = *(v61 + 136);
                    v72 = 0.0;
                    v73 = 0.0;
                    v74 = 0.0;
                    if (*(v61 + 144) != v71)
                    {
                      v73 = *v71;
                      v74 = v71[1];
                    }

                    v75 = *(v63 + 144);
                    v76 = 0.0;
                    if (v75 != *(v63 + 136))
                    {
                      v72 = *(v75 - 16);
                      v76 = *(v75 - 8);
                    }

                    if (sub_1004E60BC(v73, v74, v72, v76, 0.0000001))
                    {
                      goto LABEL_152;
                    }

                    v77 = *(v61 + 144);
                    v78 = 0.0;
                    v79 = 0.0;
                    v80 = 0.0;
                    if (v77 != *(v61 + 136))
                    {
                      v79 = *(v77 - 16);
                      v80 = *(v77 - 8);
                    }

                    v81 = *(v63 + 136);
                    v82 = 0.0;
                    if (*(v63 + 144) != v81)
                    {
                      v78 = *v81;
                      v82 = v81[1];
                    }

                    if (sub_1004E60BC(v79, v80, v78, v82, 0.0000001))
                    {
                      goto LABEL_152;
                    }

                    v83 = *(v61 + 144);
                    v84 = 0.0;
                    v85 = 0.0;
                    v86 = 0.0;
                    if (v83 != *(v61 + 136))
                    {
                      v85 = *(v83 - 16);
                      v86 = *(v83 - 8);
                    }

                    v87 = *(v63 + 144);
                    v88 = 0.0;
                    if (v87 != *(v63 + 136))
                    {
                      v84 = *(v87 - 16);
                      v88 = *(v87 - 8);
                    }

                    if (sub_1004E60BC(v85, v86, v84, v88, 0.0000001))
                    {
LABEL_152:
                      v89 = 1;
                    }

                    else
                    {
                      v89 = 0;
                    }

                    if (*(a1 + 96) == 1)
                    {
                      if (qword_1025D46B0 != -1)
                      {
                        sub_101B05628();
                      }

                      v90 = qword_1025D46B8;
                      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
                      {
                        v91 = *(a1 + 1136);
                        v92 = **(a1 + 1016);
                        v93 = **(a1 + 1856);
                        *buf = 134349825;
                        *&buf[4] = v91;
                        v172 = 1026;
                        *v173 = v89;
                        *&v173[4] = 2049;
                        *&v173[6] = v92;
                        *&v173[14] = 2049;
                        *&v173[16] = v93;
                        _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,hopping check,connecting roads,%{public}d,current road,%{private}lld,prior road,%{private}lld", buf, 0x26u);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101B05650(buf);
                        v143 = *(a1 + 1136);
                        v144 = **(a1 + 1016);
                        v145 = **(a1 + 1856);
                        v165 = 134349825;
                        v166 = v143;
                        v167 = 1026;
                        *v168 = v89;
                        *&v168[4] = 2049;
                        *&v168[6] = v144;
                        *&v168[14] = 2049;
                        *&v168[16] = v145;
                        LODWORD(v161) = 38;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,%{public}.1lf,hopping check,connecting roads,%{public}d,current road,%{private}lld,prior road,%{private}lld", &v165, v161);
                        v147 = v146;
                        sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "%s\n", v146);
                        if (v147 != buf)
                        {
                          free(v147);
                        }
                      }
                    }

                    if (v64)
                    {
                      sub_100008080(v64);
                    }

                    if (v62)
                    {
                      sub_100008080(v62);
                    }

                    if ((v89 & 1) == 0)
                    {
                      v94 = *(a1 + 1656);
                      if (!v94 || !*v94)
                      {
                        goto LABEL_185;
                      }

                      v162 = *(a1 + 1016);
                      v95 = *(a1 + 1024);
                      if (v95)
                      {
                        atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v96 = *(a1 + 1856);
                      v97 = *(a1 + 1864);
                      if (v97)
                      {
                        atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v98 = *(*(a1 + 1656) + 136);
                      v99 = 0.0;
                      v100 = 0.0;
                      v101 = 0.0;
                      if (*(*(a1 + 1656) + 144) != v98)
                      {
                        v100 = *v98;
                        v101 = v98[1];
                      }

                      v102 = v96[18];
                      v103 = 0.0;
                      if (v102 != v96[17])
                      {
                        v99 = *(v102 - 16);
                        v103 = *(v102 - 8);
                      }

                      v163 = sub_1004E60BC(v100, v101, v99, v103, 0.0000001);
                      if (*(a1 + 96))
                      {
                        if (qword_1025D46B0 != -1)
                        {
                          sub_101B05628();
                        }

                        v104 = qword_1025D46B8;
                        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
                        {
                          v105 = *(a1 + 1136);
                          v106 = *v96;
                          v107 = **(a1 + 1656);
                          v108 = *v162;
                          *buf = 134349825;
                          *&buf[4] = v105;
                          v172 = 2049;
                          *v173 = v106;
                          *&v173[8] = 2049;
                          *&v173[10] = v107;
                          *&v173[18] = 2049;
                          *&v173[20] = v108;
                          _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,hopping check,prior road,%{private}lld, connected to the incoming road,%{private}lld, of the current solution road,%{private}lld", buf, 0x2Au);
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_101B05650(buf);
                          v155 = *(a1 + 1136);
                          v156 = *v96;
                          v157 = **(a1 + 1656);
                          v158 = *v162;
                          v165 = 134349825;
                          v166 = v155;
                          v167 = 2049;
                          *v168 = v156;
                          *&v168[8] = 2049;
                          *&v168[10] = v157;
                          *&v168[18] = 2049;
                          *&v168[20] = v158;
                          LODWORD(v161) = 42;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,%{public}.1lf,hopping check,prior road,%{private}lld, connected to the incoming road,%{private}lld, of the current solution road,%{private}lld", &v165, v161);
                          v160 = v159;
                          sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "%s\n", v159);
                          if (v160 != buf)
                          {
                            free(v160);
                          }
                        }
                      }

                      if (v97)
                      {
                        sub_100008080(v97);
                      }

                      if (v95)
                      {
                        sub_100008080(v95);
                      }

                      if (!v163)
                      {
LABEL_185:
                        sub_100109D18((a1 + 608), *(a1 + 2256), *(a1 + 2264), *(a1 + 1416), *(a1 + 1424), *(a1 + 1200));
                        v110 = v109 > 35.0 || *(a1 + 2680) > 15;
                        if (*(a1 + 96) == 1)
                        {
                          if (qword_1025D46B0 != -1)
                          {
                            sub_101B05628();
                          }

                          v113 = qword_1025D46B8;
                          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
                          {
                            v114 = *(a1 + 1136);
                            v115 = *(a1 + 2272);
                            v116 = *(a1 + 1432);
                            v117 = **(a1 + 1016);
                            v118 = **(a1 + 1856);
                            *buf = 134350337;
                            *&buf[4] = v114;
                            v172 = 1026;
                            *v173 = v110;
                            *&v173[4] = 2050;
                            *&v173[6] = v115;
                            *&v173[14] = 2050;
                            *&v173[16] = v116;
                            *&v173[24] = 2049;
                            *&v173[26] = v117;
                            v174 = 2049;
                            v175 = v118;
                            _os_log_impl(dword_100000000, v113, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,hopping between roads detected,reset,%{public}d,priorfullSnapCourse,%{public}.1lf,currentFullSnapCourse,%{public}.1lf,priorId,%{private}llu,currentId,%{private}llu", buf, 0x3Au);
                          }

                          if (sub_10000A100(121, 2))
                          {
                            sub_101B05650(buf);
                            v148 = *(a1 + 1136);
                            v149 = *(a1 + 2272);
                            v150 = *(a1 + 1432);
                            v151 = **(a1 + 1016);
                            v152 = **(a1 + 1856);
                            v165 = 134350337;
                            v166 = v148;
                            v167 = 1026;
                            *v168 = v110;
                            *&v168[4] = 2050;
                            *&v168[6] = v149;
                            *&v168[14] = 2050;
                            *&v168[16] = v150;
                            *&v168[24] = 2049;
                            *&v168[26] = v151;
                            v169 = 2049;
                            v170 = v152;
                            LODWORD(v161) = 58;
                            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,%{public}.1lf,hopping between roads detected,reset,%{public}d,priorfullSnapCourse,%{public}.1lf,currentFullSnapCourse,%{public}.1lf,priorId,%{private}llu,currentId,%{private}llu", &v165, v161);
                            v154 = v153;
                            sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "%s\n", v153);
                            if (v154 != buf)
                            {
                              free(v154);
                            }
                          }
                        }

                        if (v110)
                        {
                          goto LABEL_234;
                        }
                      }
                    }
                  }
                }

                else
                {
                  while (*(a1 + 1240) != **(v60 + 16))
                  {
                    v60 = *(v60 + 8);
                    if (v60 == a1 + 3120)
                    {
                      goto LABEL_127;
                    }
                  }
                }
              }

              sub_100F42218((a1 + 3072), *(a1 + 3056), a1 + 3048);
              sub_10004FF5C((a1 + 3048));
              v51 = (a1 + 3096);
              sub_100F42218((a1 + 3120), *(a1 + 3104), a1 + 3096);
            }

            else
            {
              sub_10004FF5C((a1 + 3072));
              v51 = (a1 + 3120);
            }

            sub_10004FF5C(v51);
            if (*(a1 + 1008) == 1)
            {
              v119 = **(a1 + 1016);
              *buf = v119;
              v120 = *(a1 + 1036);
              buf[8] = *(a1 + 1036);
              if (!*(a1 + 928) || (v121 = *(a1 + 920), v119 != *(v121 + 16)) || v120 != *(v121 + 24))
              {
                sub_10103D878(a1 + 912, buf);
              }

              if (*(a1 + 1008) == 1)
              {
                if (*(a1 + 1848) == 1 && *buf == **(a1 + 1856) && buf[8] == *(a1 + 1876))
                {
                  v122 = *(a1 + 2680) + 1;
                }

                else
                {
                  v122 = 0;
                }

                *(a1 + 1840) = v122;
                if (*(a1 + 1848) == 1)
                {
                  sub_100109D18((a1 + 608), *(a1 + 1888), *(a1 + 1896), *(a1 + 1048), *(a1 + 1056), *(a1 + 1200));
                  v124 = v123;
                  sub_100E9C67C(buf, a1 + 1856);
                  v165 = 0;
                  if (sub_101031BB0(a1, buf, &v165, v124))
                  {
                    *(a1 + 2688) = 1;
                    *(a1 + 2824) = v165;
                    sub_101033CFC(a1 + 2712, buf);
                    *(a1 + 2704) = *(a1 + 1976);
                  }

                  sub_100E9C84C(buf);
                }
              }

              else
              {
                *(a1 + 1840) = 0;
              }
            }

            if (*(a1 + 2688) == 1)
            {
              if (*(a1 + 1008) != 1 || (sub_100109D18((a1 + 608), *(a1 + 2744), *(a1 + 2752), *(a1 + 1280), *(a1 + 1288), *(a1 + 1200)), *(a1 + 2696) = v125, v125 > 450.0))
              {
                *(a1 + 2688) = 0;
              }
            }

            sub_10103AB10(a1);
            if (*(a1 + 1184) == 0.0 && *(a1 + 1192) == 0.0)
            {
              if (qword_1025D46B0 != -1)
              {
                sub_101B05628();
              }

              v126 = qword_1025D46B8;
              if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v126, OS_LOG_TYPE_ERROR, "CLMM,Unexpected crumb lat==lon==0", buf, 2u);
              }

              if (!sub_10000A100(121, 0))
              {
                goto LABEL_234;
              }

              sub_101B05650(buf);
              LOWORD(v165) = 0;
              LODWORD(v161) = 2;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 16, "CLMM,Unexpected crumb lat==lon==0", &v165, v161);
              v139 = v138;
              sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "%s\n", v138);
              if (v139 == buf)
              {
                goto LABEL_234;
              }

              goto LABEL_257;
            }

            if (*(a1 + 1008) == 1)
            {
              if (*(a1 + 1280) == 0.0 && *(a1 + 1288) == 0.0)
              {
                if (qword_1025D46B0 != -1)
                {
                  sub_101B05628();
                }

                v127 = qword_1025D46B8;
                if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v127, OS_LOG_TYPE_ERROR, "CLMM,Unexpected crumb snapLat==snapLon==0", buf, 2u);
                }

                if (!sub_10000A100(121, 0))
                {
                  goto LABEL_234;
                }

                sub_101B05650(buf);
                LOWORD(v165) = 0;
                LODWORD(v161) = 2;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 16, "CLMM,Unexpected crumb snapLat==snapLon==0", &v165, v161);
                v139 = v140;
                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "%s\n", v140);
                if (v139 == buf)
                {
                  goto LABEL_234;
                }

LABEL_257:
                free(v139);
LABEL_234:
                (*(*a1 + 40))(a1);
LABEL_111:
                v27 = 0;
                ++*(a1 + 104);
                if (!v4)
                {
                  return v27;
                }

                goto LABEL_108;
              }

              v128 = *(a1 + 1016);
              if (v128)
              {
                *(a1 + 1477) = *(v128 + 17);
              }
            }

            v129 = *v7;
            v130 = *(a1 + 1144);
            v131 = *(a1 + 1176);
            a2[2] = *(a1 + 1160);
            a2[3] = v131;
            *a2 = v129;
            a2[1] = v130;
            v132 = *(a1 + 1192);
            v133 = *(a1 + 1208);
            v134 = *(a1 + 1240);
            a2[6] = *(a1 + 1224);
            a2[7] = v134;
            a2[4] = v132;
            a2[5] = v133;
            std::string::operator=((a2 + 8), (a1 + 1256));
            memcpy(a2 + 152, (a1 + 1280), 0x118uLL);
            if (*(a1 + 1392) == 1)
            {
              *(a1 + 4008) = *(a1 + 1152);
              if (*(a1 + 776) == 1 && *(a1 + 1648) == 1)
              {
                if (*(a1 + 96) == 1)
                {
                  if (qword_1025D46B0 != -1)
                  {
                    sub_101B05628();
                  }

                  v135 = qword_1025D46B8;
                  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(dword_100000000, v135, OS_LOG_TYPE_DEBUG, "CLMM,holdCourse engaged but not snapping course", buf, 2u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_101B05650(buf);
                    LOWORD(v165) = 0;
                    LODWORD(v161) = 2;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,holdCourse engaged but not snapping course", &v165, v161);
                    v142 = v141;
                    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "%s\n", v141);
                    if (v142 != buf)
                    {
                      free(v142);
                    }
                  }
                }

                *(a2 + 21) = *(a1 + 848);
              }

              sub_10103D8D0(a1, a2);
              v136 = *(a1 + 1392);
              *buf = *(a2 + 24);
              if (v136 & 1) != 0 && (sub_101026D64(a1, buf))
              {
                v137 = buf;
LABEL_252:
                *(a2 + 24) = *v137;
                goto LABEL_56;
              }
            }

            else
            {
              *(a2 + 21) = *(a1 + 848);
              ++*(a1 + 104);
              *buf = *(a2 + 24);
            }

            v137 = (a1 + 856);
            goto LABEL_252;
          }
        }
      }

LABEL_106:
      (*(*a1 + 40))(a1);
      goto LABEL_107;
    }

    v10 = *(a1 + 3008);
    v11 = *(a1 + 3016);
    *(a1 + 3040) = 0;
    v12 = (v11 - v10) >> 3;
    if (v12 >= 3)
    {
      do
      {
        operator delete(*v10);
        v10 = (*(a1 + 3008) + 8);
        *(a1 + 3008) = v10;
        v12 = (*(a1 + 3016) - v10) >> 3;
      }

      while (v12 > 2);
    }

    if (v12 == 1)
    {
      v13 = 512;
    }

    else
    {
      if (v12 != 2)
      {
LABEL_22:
        *(a1 + 2992) = 0;
        goto LABEL_23;
      }

      v13 = 1024;
    }

    *(a1 + 3032) = v13;
    goto LABEL_22;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_101B05780();
  }

  v14 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a2 + 1);
    *buf = 134349056;
    *&buf[4] = v15;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,Unexpected,invalid geometry pointer, mapMatch", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B05650(buf);
    v16 = *(a2 + 1);
    v165 = 134349056;
    v166 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 16, "CLMM,%{public}.1lf,Unexpected,invalid geometry pointer, mapMatch", &v165, 12);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLParticleMapMatcher::match(CLMapCrumb &)", "%s\n", v17);
    goto LABEL_73;
  }

LABEL_107:
  v27 = 0;
  if (v4)
  {
LABEL_108:
    sub_100008080(v4);
  }

  return v27;
}

void sub_1002BC688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (v23)
  {
    sub_100008080(v23);
    if (!v22)
    {
LABEL_3:
      if (!v21)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      sub_100008080(v21);
      goto LABEL_8;
    }
  }

  else if (!v22)
  {
    goto LABEL_3;
  }

  sub_100008080(v22);
  if (!v21)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_1002BC750(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v8;
  *(a1 + 24) = v7;
  v9 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 64) = v9;
  if (a1 != a2)
  {
    sub_100252F20((a1 + 96), *(a2 + 96), *(a2 + 104), 0x8E38E38E38E38E39 * ((*(a2 + 104) - *(a2 + 96)) >> 3));
  }

  v10 = *(a2 + 120);
  v11 = *(a2 + 136);
  v12 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v12;
  *(a1 + 136) = v11;
  *(a1 + 120) = v10;
  v13 = *(a2 + 184);
  v14 = *(a2 + 200);
  v15 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v15;
  *(a1 + 200) = v14;
  *(a1 + 184) = v13;
  std::string::operator=((a1 + 248), (a2 + 248));
  memcpy((a1 + 272), (a2 + 272), 0x118uLL);
  v16 = *(a2 + 568);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 568) = v16;
  v17 = *(a2 + 584);
  v18 = *(a2 + 600);
  v19 = *(a2 + 616);
  *(a1 + 627) = *(a2 + 627);
  *(a1 + 600) = v18;
  *(a1 + 616) = v19;
  *(a1 + 584) = v17;
  v20 = *(a2 + 648);
  v21 = *(a2 + 656);
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 648) = v20;
  v22 = *(a1 + 656);
  *(a1 + 656) = v21;
  if (v22)
  {
    sub_100008080(v22);
  }

  *(a1 + 664) = *(a2 + 664);
  v23 = *(a2 + 672);
  v24 = *(a2 + 680);
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 672) = v23;
  v25 = *(a1 + 680);
  *(a1 + 680) = v24;
  if (v25)
  {
    sub_100008080(v25);
  }

  v26 = *(a2 + 688);
  v27 = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a1 + 688) = v26;
  *(a1 + 704) = v27;
  v28 = *(a2 + 728);
  *(a1 + 737) = *(a2 + 737);
  *(a1 + 728) = v28;
  if (a1 != a2)
  {
    sub_100252F20((a1 + 760), *(a2 + 760), *(a2 + 768), 0x8E38E38E38E38E39 * ((*(a2 + 768) - *(a2 + 760)) >> 3));
  }

  v29 = *(a2 + 784);
  v30 = *(a2 + 800);
  v31 = *(a2 + 816);
  *(a1 + 830) = *(a2 + 830);
  *(a1 + 800) = v30;
  *(a1 + 816) = v31;
  *(a1 + 784) = v29;
  return a1;
}

uint64_t sub_1002BC954(uint64_t result, double a2, double a3)
{
  *(result + 848) = a2;
  *(result + 856) = a3;
  return result;
}

uint64_t sub_1002BC960(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 229);
  v3 = *(a2 + 8);
  if (*(result + 816) != v2 || *(result + 832) == 0.0)
  {
    *(result + 832) = v3;
    *(result + 816) = v2;
  }

  *(result + 824) = v3;
  return result;
}

uint64_t sub_1002BC990@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 1024);
  *a2 = *(result + 1016);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002BC9B8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1002B88C4();
  v5 = a2;
  if (*(a2 + 23) < 0)
  {
    v5 = *a2;
  }

  *buf = v5;
  v6 = (a1 + 88);
  v7 = (a1 + 192);
  v8 = (a1 + 96);
  v9 = (a1 + 200);
  v10 = (a1 + 208);
  v11 = (a1 + 216);
  v12 = (a1 + 360);
  v40 = (a1 + 424);
  v24 = (a1 + 420);
  v25 = (a1 + 404);
  v31 = (a1 + 416);
  v32 = (a1 + 362);
  v23 = (a1 + 361);
  v33 = (a1 + 349);
  v34 = (a1 + 351);
  v36 = (a1 + 184);
  v37 = (a1 + 304);
  v38 = (a1 + 80);
  v39 = (a1 + 72);
  v35 = (a1 + 296);
  v29 = (a1 + 168);
  v30 = (a1 + 288);
  v27 = (a1 + 160);
  v28 = (a1 + 152);
  v26 = (a1 + 104);
  sub_1002BD028(v4, "CLMM,%{public}s,T,%{public}.1lf,usable,%{public}d,ambiguous,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,crse,%{public}.1lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCrse,%{public}.1lf,fSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,fSnapCrse,%{public}.1lf,hunc,%{public}.1lf,alt,%{public}.1lf,vunc,%{public}.1lf,crseUnc,%{public}.1lf,spdMps,%{public}.3lf,spdUncMps,%{public}.1lf,a95,%{public}.1lf,b95,%{public}.1lf,theta,%{public}.1lf,shifted,%{public}d,propagated,%{public}d,rail,%{public}d,bridge,%{public}d,tunnel,%{public}d,locationType,%{public}d,sigEnv,%{public}d,sigEnvFid,%{public}d,rw,%{public}.2lf", buf, (a1 + 8), (a1 + 264), (a1 + 265), (a1 + 56), (a1 + 64), (a1 + 104), (a1 + 152), (a1 + 160), (a1 + 168), (a1 + 288), (a1 + 296), (a1 + 304), (a1 + 80), (a1 + 72), (a1 + 88), (a1 + 192), (a1 + 96), (a1 + 184), (a1 + 200), (a1 + 208), (a1 + 216), (a1 + 351), (a1 + 360), (a1 + 349), (a1 + 361), (a1 + 362), (a1 + 404), (a1 + 416), (a1 + 420), (a1 + 424));
  if (qword_1025D46B0 != -1)
  {
    sub_101B6F0CC();
  }

  v13 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v14 = a2;
    if (*(a2 + 23) < 0)
    {
      v14 = *a2;
    }

    v15 = *(a1 + 8);
    *&buf[4] = v14;
    v16 = *(a1 + 265);
    v105 = v15;
    v109 = v16;
    v17 = *(a1 + 64);
    v111 = *(a1 + 56);
    v113 = v17;
    v117 = *v28;
    v119 = *v27;
    v121 = *v29;
    v125 = *v35;
    v127 = *v37;
    v129 = *v38;
    v133 = *v6;
    v135 = *v7;
    v137 = *v8;
    v141 = *v9;
    v143 = *v10;
    v145 = *v11;
    v149 = *v12;
    v153 = *v23;
    v157 = *v25;
    v161 = *v24;
    v107 = *(a1 + 264);
    v115 = *v26;
    v123 = *v30;
    v110 = 2053;
    v112 = 2053;
    v116 = 2053;
    v118 = 2053;
    v122 = 2053;
    v124 = 2053;
    v131 = *v39;
    v139 = *v36;
    v147 = *v34;
    v151 = *v33;
    v155 = *v32;
    v159 = *v31;
    v106 = 1026;
    v108 = 1026;
    v146 = 1026;
    v148 = 1026;
    v150 = 1026;
    v152 = 1026;
    v154 = 1026;
    v156 = 1026;
    v158 = 1026;
    v160 = 1026;
    v104 = 2050;
    v114 = 2050;
    v120 = 2050;
    v126 = 2050;
    v128 = 2050;
    v130 = 2050;
    v132 = 2050;
    v134 = 2050;
    v136 = 2050;
    v138 = 2050;
    v140 = 2050;
    v142 = 2050;
    v144 = 2050;
    v162 = 2050;
    v163 = *v40;
    *buf = 136453891;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "CLMM,%{public}s,T,%{public}.1lf,usable,%{public}d,ambiguous,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,crse,%{public}.1lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCrse,%{public}.1lf,fSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,fSnapCrse,%{public}.1lf,hunc,%{public}.1lf,alt,%{public}.1lf,vunc,%{public}.1lf,crseUnc,%{public}.1lf,spdMps,%{public}.3lf,spdUncMps,%{public}.1lf,a95,%{public}.1lf,b95,%{public}.1lf,theta,%{public}.1lf,shifted,%{public}d,propagated,%{public}d,rail,%{public}d,bridge,%{public}d,tunnel,%{public}d,locationType,%{public}d,sigEnv,%{public}d,sigEnvFid,%{public}d,rw,%{public}.2lf", buf, 0x110u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D46B0 != -1)
    {
      sub_101B6F0CC();
    }

    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v72 = *v6;
    v74 = *v7;
    v76 = *v8;
    v80 = *v9;
    v82 = *v10;
    v84 = *v11;
    v88 = *v12;
    v92 = *v23;
    v18 = *v24;
    v96 = *v25;
    v100 = v18;
    v42 = a2;
    v44 = *(a1 + 8);
    v46 = *(a1 + 264);
    v48 = *(a1 + 265);
    v19 = *(a1 + 64);
    v50 = *(a1 + 56);
    v52 = v19;
    v54 = *v26;
    v56 = *v28;
    v58 = *v27;
    v60 = *v29;
    v62 = *v30;
    v49 = 2053;
    v51 = 2053;
    v55 = 2053;
    v57 = 2053;
    v61 = 2053;
    v63 = 2053;
    v64 = *v35;
    v66 = *v37;
    v68 = *v38;
    v70 = *v39;
    v78 = *v36;
    v86 = *v34;
    v90 = *v33;
    v94 = *v32;
    v98 = *v31;
    v45 = 1026;
    v47 = 1026;
    v85 = 1026;
    v87 = 1026;
    v89 = 1026;
    v91 = 1026;
    v93 = 1026;
    v95 = 1026;
    v97 = 1026;
    v99 = 1026;
    v43 = 2050;
    v53 = 2050;
    v59 = 2050;
    v65 = 2050;
    v67 = 2050;
    v69 = 2050;
    v71 = 2050;
    v73 = 2050;
    v75 = 2050;
    v77 = 2050;
    v79 = 2050;
    v81 = 2050;
    v83 = 2050;
    v101 = 2050;
    v102 = *v40;
    v41 = 136453891;
    LODWORD(v22) = 272;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,%{public}s,T,%{public}.1lf,usable,%{public}d,ambiguous,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,crse,%{public}.1lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCrse,%{public}.1lf,fSnapLL,%{sensitive}.7lf,%{sensitive}.7lf,fSnapCrse,%{public}.1lf,hunc,%{public}.1lf,alt,%{public}.1lf,vunc,%{public}.1lf,crseUnc,%{public}.1lf,spdMps,%{public}.3lf,spdUncMps,%{public}.1lf,a95,%{public}.1lf,b95,%{public}.1lf,theta,%{public}.1lf,shifted,%{public}d,propagated,%{public}d,rail,%{public}d,bridge,%{public}d,tunnel,%{public}d,locationType,%{public}d,sigEnv,%{public}d,sigEnvFid,%{public}d,rw,%{public}.2lf", &v41, v22);
    v21 = v20;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMapCrumb::condensedDebugOutput(const std::string) const", "%s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }
}

void sub_1002BD028(_BYTE *a1, char *a2, void *a3, uint64_t *a4, unsigned __int8 *a5, unsigned __int8 *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, unsigned __int8 *a25, unsigned __int8 *a26, unsigned __int8 *a27, unsigned __int8 *a28, unsigned __int8 *a29, unsigned int *a30, unsigned int *a31, unsigned int *a32, void *a33, ...)
{
  if (*a1 == 1)
  {
    v36 = sub_10000EC00(v45, a2);
    sub_1002B97B0(v36);
    bzero(a1 + 56, 0x800uLL);
    v37 = *a4;
    if (v46 >= 0)
    {
      snprintf(a1 + 56, 0x800uLL, v45, *a3, v37, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, *a14, *a15, *a16, *a17, *a18, *a19, *a20, *a21, *a22, *a23, *a24, *a25, *a26, *a27, *a28, *a29, *a30, *a31, *a32, *a33);
    }

    else
    {
      snprintf(a1 + 56, 0x800uLL, v45[0], *a3, v37, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, *a14, *a15, *a16, *a17, *a18, *a19, *a20, *a21, *a22, *a23, *a24, *a25, *a26, *a27, *a28, *a29, *a30, *a31, *a32, *a33);
    }

    Current = CFAbsoluteTimeGetCurrent();
    sub_10000EC00(v43, a1 + 56);
    sub_1002B9CCC(a1, v43, Current);
    if (v44 < 0)
    {
      operator delete(v43[0]);
    }

    if (v46 < 0)
    {
      operator delete(v45[0]);
    }
  }
}

double sub_1002BD298(uint64_t a1, float64x2_t *a2)
{
  v4 = *(a1 + 32);
  *(a1 + 368) = v4;
  *(a1 + 384) = v4;
  v18 = 0;
  v16 = 0.0;
  v17 = 0;
  v15 = 0;
  sub_10000EC00(v13, "SnapOutput");
  if (sub_1002BD4DC(a1, a2, v13, &v18, &v17, *(a1 + 152), *(a1 + 160)))
  {
    sub_10000EC00(__p, "FullSnapOutput");
    v5 = !sub_1002BD4DC(a1, a2, __p, &v16, &v15, *(a1 + 288), *(a1 + 296));
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v5 = 1;
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = v17;
    *(a1 + 368) = v18;
    *(a1 + 376) = v9;
    v10 = v15;
    result = v16;
    *(a1 + 384) = v16;
    *(a1 + 392) = v10;
    return result;
  }

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (qword_1025D46B0 != -1)
  {
    sub_101B6F0CC();
  }

  v6 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 8);
    *buf = 134349056;
    v20 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLMM, %{public}.1lf, not matching, unable to compute snap from raw positions", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B6F0F4(a1);
  }

  return result;
}

void sub_1002BD42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

double sub_1002BD468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1002BD298(a2, (a1 + 280));
  if ((*(a2 + 265) & 1) == 0)
  {
    *(a3 + 4) = *(a2 + 368);
    *(a3 + 60) = *(a2 + 168);
    *(a3 + 116) = *(a2 + 104);
    *(a3 + 20) = *(a2 + 80);
  }

  result = *(a2 + 192);
  *(a3 + 68) = result;
  *(a4 + 52) = *(a2 + 350);
  return result;
}

BOOL sub_1002BD4DC(uint64_t a1, float64x2_t *a2, uint64_t *a3, double *a4, double *a5, double a6, double a7)
{
  if (sub_10002807C(*(a1 + 56), *(a1 + 64)) || sub_10002807C(*(a1 + 32), *(a1 + 40)))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101B6F204();
    }

    v14 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 8);
      *buf = 134349056;
      v45 = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLMM, %{public}.1lf, null island", buf, 0xCu);
    }

    v16 = 0;
    if (!sub_10000A100(121, 0))
    {
      return v16;
    }

    sub_101B6F218(a1);
    return 0;
  }

  v30 = 0.0;
  v31 = 0.0;
  v29 = 0.0;
  if (!sub_1001063B0(a2, &v30, &v31, &v29, *(a1 + 56), *(a1 + 64), *(a1 + 72), a6, a7, *(a1 + 72)))
  {
    return 0;
  }

  v28 = 0;
  v16 = sub_1002AC7D4(a2->f64, a4, a5, &v28, *(a1 + 32), *(a1 + 40), *(a1 + 72), v30, v31, v29);
  if (v16)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101B6F0CC();
    }

    v18 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 8);
      v20 = a3;
      if (*(a3 + 23) < 0)
      {
        v20 = *a3;
      }

      v21 = *a4;
      v22 = *a5;
      *buf = 134350339;
      v45 = v19;
      v46 = 2080;
      v47 = v20;
      v48 = 2053;
      v49 = a6;
      v50 = 2053;
      v51 = a7;
      v52 = 2053;
      v53 = v21;
      v54 = 2053;
      v55 = v22;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLMM, %{public}.1lf, New Snap Coordinates,%s,inSnapLat,%{sensitive}.8lf,inSnapLon,%{sensitive}.8lf,outSnapLat,%{sensitive}.8lf,outSnapLon,%{sensitive}.8lf", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D46B0 != -1)
      {
        sub_101B6F0CC();
      }

      v23 = *(a1 + 8);
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v24 = *a4;
      v25 = *a5;
      v32 = 134350339;
      v33 = v23;
      v34 = 2080;
      v35 = a3;
      v36 = 2053;
      v37 = a6;
      v38 = 2053;
      v39 = a7;
      v40 = 2053;
      v41 = v24;
      v42 = 2053;
      v43 = v25;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM, %{public}.1lf, New Snap Coordinates,%s,inSnapLat,%{sensitive}.8lf,inSnapLon,%{sensitive}.8lf,outSnapLat,%{sensitive}.8lf,outSnapLon,%{sensitive}.8lf", &v32, 62);
      v27 = v26;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapCrumb::computeSnapCoordinatesFromRawGPSCoordinates(CLDistanceCalc &, const std::string, double, double, double &, double &) const", "%s\n", v26);
      if (v27 != buf)
      {
        free(v27);
      }
    }
  }

  return v16;
}

BOOL sub_1002BD858(uint64_t a1, uint64_t *a2, double a3)
{
  v3 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1002BD9B4((a1 + 3824), a2, &v6, *(a1 + 96), a3);
  if (v7)
  {
    sub_100008080(v7);
  }

  return v4;
}

void sub_1002BD8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002BD8D0(void *result, uint64_t a2, char a3)
{
  if ((*(result + 105) & 0xFFFFFFFE) != 2)
  {
    v16 = v3;
    v17 = v4;
    if ((*(a2 + 96) & 0xFFFFFFF7) == 1)
    {
      v6 = result;
      if (*(result + 357) == 1)
      {
        result = result[29];
        if (result)
        {
          result = (*(*result + 136))(result, v11, *(a2 + 76));
          if (result)
          {
            HIDWORD(v12) = *(a2 + 132);
            LOBYTE(v13) = a3;
            v9[4] = v12;
            v9[5] = v13;
            v9[6] = v14;
            v9[0] = v11[0];
            v9[1] = v11[1];
            v8 = v6[46];
            v10 = v15;
            v9[2] = v11[2];
            v9[3] = v11[3];
            return [v8 setTunnelEndPointPositionAssistance:v9];
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1002BD9B4(unsigned __int8 *a1, uint64_t *a2, void *a3, int a4, double a5)
{
  *a2 = 0xBFF0000000000000;
  if (*a1 != 1 || (v7 = *(a1 + 8)) == 0 || *(v7 + 18) != 1 || (v11 = *(a1 + 22), v11 > 0.0) && vabdd_f64(a5, v11) <= 0.9)
  {
    if (a4)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_101AB1498();
      }

      v13 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v15 = *(v14 + 18);
        }

        else
        {
          v15 = -1;
        }

        v16 = *a1;
        v17 = *(a1 + 22);
        *buf = 67240704;
        *v132 = v15;
        *&v132[4] = 1026;
        *&v132[6] = v16;
        *v133 = 2050;
        *&v133[2] = v17;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "CLMM,no TEPA,isTunnel,%{public}d,isSnapUsable,%{public}d,lastAssistanceTime,%{public}.1lf", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AB15BC(a1);
      }
    }

    return 0;
  }

  if ([GEOLocationShifter isLocationShiftRequiredForCoordinate:*(a1 + 12), *(a1 + 13)])
  {
    if (a4)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_101AB1498();
      }

      v12 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *v132 = a5;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,no TEPA, shifted coordinates", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AB14AC(a5);
      }
    }

    return 0;
  }

  v20 = *(a1 + 8);
  v21 = *(a1 + 9);
  v103 = v20;
  v104 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *(v20 + 18);
  v23 = *(a1 + 14);
  *(a2 + 72) = 0;
  if (v22 != 1)
  {
    v24 = 0;
    v25 = 0.0;
    goto LABEL_74;
  }

  v24 = 0;
  v25 = 0.0;
  __asm { FMOV            V0.2D, #-1.0 }

  v97 = _Q0;
  while (1)
  {
    v31 = v103;
    if (!v103)
    {
      goto LABEL_74;
    }

    if (v24 == 200)
    {
      break;
    }

    sub_10029244C(v103);
    v32 = v31[5];
    *a2 = a5;
    v33 = v103;
    v34 = *(v103 + 18);
    if (v34 == *(v103 + 17))
    {
      a2[1] = 0;
      v35 = 0;
    }

    else
    {
      a2[1] = *(v34 - 16);
      v35 = *(v34 - 8);
    }

    a2[2] = v35;
    *(a2 + 4) = sub_1003E491C(v33);
    v36 = v103;
    a2[8] = *(v103 + 12);
    if (sub_1003E49B0(v36) >= 1)
    {
      *(a2 + 72) = 1;
    }

    v37 = fmod(*(a1 + 22) - *(a2 + 4), 360.0);
    if (v37 < 0.0)
    {
      v37 = v37 + 360.0;
    }

    if (v37 > 180.0)
    {
      v37 = v37 + -360.0;
    }

    if (fabs(v37) > 7.5)
    {
      *(a2 + 72) = 1;
    }

    v38 = v103;
    sub_10029244C(v103);
    v39 = 1.0 - v23;
    v40 = v38[5];
    v101 = 0;
    v102 = 0.0;
    v99 = &v99;
    v100 = &v99;
    *v107 = 0;
    *&v107[16] = v97;
    *v108 = 0uLL;
    *&v108[16] = 0xBFF0000000000000;
    v120 = 0;
    v121 = 0;
    v117 = 0u;
    v118 = 0u;
    v119 = 0;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    memset(v125, 0, sizeof(v125));
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    memset(v116, 0, sizeof(v116));
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    memset(v109, 0, sizeof(v109));
    *&v108[24] = 0u;
    v130 = 0xBFF0000000000000;
    v129 = 0;
    *&v107[8] = a5;
    if (!(*(**a3 + 80))(*a3, v107, &v99, 0, 1, &v103, 1, &v102, v23, v40 * (1.0 - v23) + 1.0))
    {
      goto LABEL_59;
    }

    if (v101 != 1 || v102 < 0.0)
    {
      if (a4)
      {
        if (qword_1025D46B0 != -1)
        {
          sub_101AB142C();
        }

        v47 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240192;
          *v132 = v101;
          _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "CLMM,no TEPA,multi-outbound,%{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AB1454(buf);
          v105 = 67240192;
          v106 = v101;
          LODWORD(v96) = 8;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,no TEPA,multi-outbound,%{public}d", &v105, v96);
          v49 = v48;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "%s\n", v48);
          if (v49 != buf)
          {
            free(v49);
          }
        }
      }

      v46 = 0;
      *a2 = 0xBFF0000000000000;
      goto LABEL_67;
    }

    v41 = v100[2];
    v42 = v100[3];
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v43 = v104;
    v103 = v41;
    v104 = v42;
    if (v43)
    {
      sub_100008080(v43);
      v41 = v103;
    }

    v44 = sub_1003E493C(v41, 0, 1u);
    if (v44 < 0.0)
    {
      goto LABEL_56;
    }

    v45 = fmod(v44 - *(a2 + 4), 360.0);
    if (v45 < 0.0)
    {
      v45 = v45 + 360.0;
    }

    if (v45 > 180.0)
    {
      v45 = v45 + -360.0;
    }

    if (fabs(v45) > 7.5)
    {
LABEL_56:
      *(a2 + 72) = 1;
    }

    v23 = 0.0;
    if (v103)
    {
      v46 = *(v103 + 18);
    }

    else
    {
LABEL_59:
      v46 = 0;
    }

LABEL_67:
    if (SHIBYTE(v112) < 0)
    {
      operator delete(*(&v111 + 1));
    }

    v25 = v25 + v32 * v39;
    sub_10004FF5C(&v99);
    ++v24;
    if ((v46 & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  *a2 = 0xBFF0000000000000;
  if (a4)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101AB142C();
    }

    v71 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      *v132 = 201;
      _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEBUG, "CLMM,TEPA,outgoing reached max iterations,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AB1454(buf);
      *v107 = 0xC904020100;
      LODWORD(v96) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,TEPA,outgoing reached max iterations,%{public}d", v107, v96);
      v93 = v92;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "%s\n", v92);
      if (v93 != buf)
      {
        free(v93);
      }
    }

    v24 = 201;
LABEL_74:
    v50 = *a2;
    if (*a2 > 0.0)
    {
      *(a2 + 14) = v25;
      a2[3] = 0x4039000000000000;
      *(a2 + 5) = xmmword_101D062D0;
      a2[7] = 0xBFF0000000000000;
      v51 = *(a1 + 4);
      if (v51 > 0.0)
      {
        a2[6] = *(a1 + 5);
        *(a2 + 7) = v51;
      }

      *(a1 + 22) = v50;
      a2[11] = 0;
      a2[12] = 0;
      v52 = a2 + 11;
      *(a2 + 13) = v25;
      v53 = *(a1 + 8);
      v54 = *(a1 + 9);
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v55 = v104;
      v103 = v53;
      v104 = v54;
      if (v55)
      {
        sub_100008080(v55);
        v53 = v103;
      }

      if (*(v53 + 18) == 1)
      {
        v56 = 0;
        v57 = *(a1 + 14);
        __asm { FMOV            V0.2D, #-1.0 }

        v98 = _Q0;
        while (1)
        {
          v59 = v103;
          if (!v103)
          {
            goto LABEL_125;
          }

          if (v56 == 200)
          {
            a2[13] = 0xBFF0000000000000;
            *v52 = 0;
            a2[12] = 0;
            if (a4)
            {
              if (qword_1025D46B0 != -1)
              {
                sub_101AB142C();
              }

              v72 = qword_1025D46B8;
              if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67240192;
                *v132 = 201;
                _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEBUG, "CLMM,TEPA,incoming reached max iterations,%{public}d", buf, 8u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101AB1454(buf);
                *v107 = 0xC904020100;
                LODWORD(v96) = 8;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,TEPA,incoming reached max iterations,%{public}d", v107, v96);
                v95 = v94;
                sub_100152C7C("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "%s\n", v94);
                if (v95 != buf)
                {
                  free(v95);
                }
              }
            }

            v56 = 201;
            goto LABEL_125;
          }

          sub_10029244C(v103);
          *(a2 + 13) = *(a2 + 13) + v59[5] * v57;
          v60 = v103;
          v61 = *(v103 + 17);
          if (*(v103 + 18) == v61)
          {
            v62 = 0uLL;
          }

          else
          {
            v62 = *v61;
          }

          *v52 = v62;
          sub_10029244C(v60);
          v63 = v60[5];
          v101 = 0;
          v102 = 0.0;
          v99 = &v99;
          v100 = &v99;
          *v107 = 0;
          *&v107[16] = v98;
          *v108 = 0uLL;
          *&v108[16] = 0xBFF0000000000000;
          v120 = 0;
          v121 = 0;
          v117 = 0u;
          v118 = 0u;
          v119 = 0;
          v122 = 0u;
          v123 = 0u;
          v124 = 0u;
          memset(v125, 0, sizeof(v125));
          v126 = 0u;
          v127 = 0u;
          v128 = 0u;
          memset(v116, 0, sizeof(v116));
          v115 = 0u;
          v114 = 0u;
          v113 = 0u;
          v112 = 0u;
          v111 = 0u;
          v110 = 0u;
          memset(v109, 0, sizeof(v109));
          *&v108[24] = 0u;
          v130 = 0xBFF0000000000000;
          v129 = 0;
          *&v107[8] = a5;
          if (!(*(**a3 + 80))(*a3, v107, 0, &v99, 0, &v103, 1, &v102, v57, v63 * v57 + 1.0))
          {
            goto LABEL_103;
          }

          if (v101 != 1 || v102 < 0.0)
          {
            break;
          }

          v64 = v100[2];
          v65 = v100[3];
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v66 = v104;
          v103 = v64;
          v104 = v65;
          if (v66)
          {
            sub_100008080(v66);
            v64 = v103;
          }

          v57 = 1.0;
          if (!v64)
          {
            goto LABEL_103;
          }

          v67 = *(v64 + 18);
LABEL_104:
          if (SHIBYTE(v112) < 0)
          {
            operator delete(*(&v111 + 1));
          }

          sub_10004FF5C(&v99);
          ++v56;
          if ((v67 & 1) == 0)
          {
            goto LABEL_125;
          }
        }

        a2[13] = 0xBFF0000000000000;
        *v52 = 0;
        a2[12] = 0;
        if (a4)
        {
          if (qword_1025D46B0 != -1)
          {
            sub_101AB142C();
          }

          v68 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67240192;
            *v132 = v101;
            _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEBUG, "CLMM,no TEPA,multi-inbound,%{public}d", buf, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AB1454(buf);
            v105 = 67240192;
            v106 = v101;
            LODWORD(v96) = 8;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,no TEPA,multi-inbound,%{public}d", &v105, v96);
            v70 = v69;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "%s\n", v69);
            if (v70 != buf)
            {
              free(v70);
            }
          }
        }

LABEL_103:
        v67 = 0;
        goto LABEL_104;
      }

      v56 = 0;
LABEL_125:
      if (qword_1025D46B0 != -1)
      {
        sub_101AB142C();
      }

      v73 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v74 = a2[1];
        v75 = a2[2];
        v76 = a2[11];
        v77 = a2[12];
        v78 = a2[6];
        v79 = a2[7];
        v80 = a2[13];
        v81 = a2[14];
        *buf = 134351617;
        *v132 = a5;
        *&v132[8] = 2053;
        *v133 = v74;
        *&v133[8] = 2053;
        v134 = v75;
        v135 = 2053;
        v136 = v76;
        v137 = 2053;
        v138 = v77;
        v139 = 2050;
        v140 = v78;
        v141 = 2050;
        v142 = v79;
        v143 = 2050;
        v144 = v80;
        v145 = 2050;
        v146 = v81;
        v147 = 1026;
        v148 = v24;
        v149 = 1026;
        v150 = v56;
        _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,TEPA,ell,%{sensitive}.7lf,%{sensitive}.7lf,sll,%{sensitive}.7lf,%{sensitive}.7lf,alt,%{public}.1lf,vUnc,%{public}.1lf,length,%{public}.2lf,distFromCurrentParticle,%{public}.1lf,iterCountOut,%{public}d,iterCountIn,%{public}d", buf, 0x68u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AB1454(buf);
        v82 = a2[1];
        v83 = a2[2];
        v84 = a2[11];
        v85 = a2[12];
        v86 = a2[6];
        v87 = a2[7];
        v88 = a2[13];
        v89 = a2[14];
        *v107 = 134351617;
        *&v107[4] = a5;
        *&v107[12] = 2053;
        *&v107[14] = v82;
        *&v107[22] = 2053;
        *&v107[24] = v83;
        *v108 = 2053;
        *&v108[2] = v84;
        *&v108[10] = 2053;
        *&v108[12] = v85;
        *&v108[20] = 2050;
        *&v108[22] = v86;
        *&v108[30] = 2050;
        *&v108[32] = v87;
        LOWORD(v109[0]) = 2050;
        *(v109 + 2) = v88;
        HIWORD(v109[2]) = 2050;
        *&v109[3] = v89;
        LOWORD(v109[5]) = 1026;
        *(&v109[5] + 2) = v24;
        HIWORD(v109[6]) = 1026;
        v109[7] = v56;
        LODWORD(v96) = 104;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,%{public}.1lf,TEPA,ell,%{sensitive}.7lf,%{sensitive}.7lf,sll,%{sensitive}.7lf,%{sensitive}.7lf,alt,%{public}.1lf,vUnc,%{public}.1lf,length,%{public}.2lf,distFromCurrentParticle,%{public}.1lf,iterCountOut,%{public}d,iterCountIn,%{public}d", v107, v96);
        v91 = v90;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::SolutionPropagator::findTunnelEndPoint(double, CLGpsAssistant_Type::TunnelEndPositionAssistance &, CLMapGeometryPtr, BOOL)", "%s\n", v90);
        if (v91 != buf)
        {
          free(v91);
        }
      }
    }
  }

  v18 = *a2 > 0.0;
  if (v104)
  {
    sub_100008080(v104);
  }

  return v18;
}

void sub_1002BE7F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a20)
  {
    sub_100008080(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002BE860(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 8);
  if (*(a2 + 8) < 0.0 || (v5 = a3, sub_10002807C(*(a2 + 56), *(a2 + 64))))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_1000E8BB4();
    }

    v7 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a2 + 8);
      v9 = *(a2 + 56);
      v10 = *(a2 + 64);
      v17 = 134349569;
      v18 = v8;
      v19 = 2053;
      v20 = v9;
      v21 = 2053;
      v22 = v10;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,bufferMapData,invalid time or location,LL,%{sensitive}.7lf,%{sensitive}.7lf", &v17, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B0A3A4(v4, a2);
    }

    return;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
LABEL_19:
      if (qword_1025D46B0 != -1)
      {
        sub_1000E8BB4();
      }

      v12 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
      {
        v13 = *v4;
        v17 = 134349312;
        v18 = v13;
        v19 = 1026;
        LODWORD(v20) = v5;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,bufferMapData,Unknown dynamics,%{public}d", &v17, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101B0A288(v4, v5);
      }

      return;
    }

    if (v5 != 1)
    {
      return;
    }

    v11 = a1[27];
    if (!v11)
    {
      return;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v11 = a1[72];
        if (!v11)
        {
          return;
        }

        break;
      case 3:
        v11 = a1[75];
        if (!v11)
        {
          return;
        }

        break;
      case 4:
        goto LABEL_19;
      default:
        return;
    }
  }

  v14 = *(a2 + 8);
  v15 = *(a2 + 56);
  v16 = *(a2 + 64);

  sub_1002BEAA8(v11, v14, v15, v16);
}

uint64_t sub_1002BEAA8(uint64_t a1, double a2, CLLocationDegrees a3, CLLocationDegrees a4)
{
  if (*(a1 + 33) != 1)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  if (*(v5 + 192) == 1)
  {
    v9 = sub_1002AF6D8(a1);
    v5 = *(a1 + 16);
    if (v9)
    {
      *(v5 + 192) = 0;
    }
  }

  v10 = *(v5 + 176);

  return sub_1002AFB0C(v5, 0, 0, 1, a2, a3, a4, v10);
}

uint64_t sub_1002BEB60(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 132);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_40;
  }

  if (*(a1 + 132))
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(qword_102637D30 + 8);
    }

    v7 = *(v6 + 36);
    if (*(v6 + 36))
    {
      v8 = (v7 << 31 >> 31) & 9;
      if ((v7 & 2) != 0)
      {
        v8 += 9;
      }

      if ((v7 & 4) != 0)
      {
        v7 = v8 + 9;
      }

      else
      {
        v7 = v8;
      }
    }

    *(v6 + 32) = v7;
    v4 = v7 + 2;
    v3 = *(a1 + 132);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v4 = 0;
  if ((*(a1 + 132) & 2) != 0)
  {
LABEL_15:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102637D30 + 16);
    }

    v10 = sub_100300AF4(v9, a2);
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
    v3 = *(a1 + 132);
  }

LABEL_21:
  if ((v3 & 0x10) != 0)
  {
    v13 = *(a1 + 72);
    if (!v13)
    {
      v13 = *(qword_102637D30 + 72);
    }

    v14 = sub_1002AF30C(v13, a2);
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
    v3 = *(a1 + 132);
  }

  v17 = v4 + 9;
  if ((v3 & 0x20) == 0)
  {
    v17 = v4;
  }

  if ((v3 & 0x40) != 0)
  {
    v5 = v17 + 9;
  }

  else
  {
    v5 = v17;
  }

  if ((v3 & 0x80) != 0)
  {
    v18 = *(a1 + 96);
    if (!v18)
    {
      v18 = *(qword_102637D30 + 96);
    }

    v19 = sub_1002FCD60(v18, a2);
    v20 = v19;
    if (v19 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
    }

    else
    {
      v21 = 1;
    }

    v5 += v20 + v21 + 1;
  }

LABEL_40:
  v22 = *(a1 + 32);
  v23 = v22 + v5;
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = sub_1002FCE14(*(*(a1 + 24) + 8 * v24), a2);
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
      }

      else
      {
        v27 = 1;
      }

      v23 += v26 + v27;
      ++v24;
    }

    while (v24 < *(a1 + 32));
  }

  v28 = *(a1 + 56);
  v29 = v28 + v23;
  if (v28 >= 1)
  {
    v30 = 0;
    do
    {
      v31 = sub_1002CDA44(*(*(a1 + 48) + 8 * v30), a2);
      v32 = v31;
      if (v31 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2);
      }

      else
      {
        v33 = 1;
      }

      v29 += v32 + v33;
      ++v30;
    }

    while (v30 < *(a1 + 56));
  }

  v34 = *(a1 + 112);
  v35 = (v34 + v29);
  if (v34 >= 1)
  {
    v36 = 0;
    do
    {
      v37 = sub_100D18614(*(*(a1 + 104) + 8 * v36), a2);
      v38 = v37;
      if (v37 >= 0x80)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37, a2);
      }

      else
      {
        v39 = 1;
      }

      v35 = (v38 + v35 + v39);
      ++v36;
    }

    while (v36 < *(a1 + 112));
  }

  *(a1 + 128) = v35;
  return v35;
}

uint64_t sub_1002BEDE4(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (*(a1 + 44))
  {
    v5 = *(a1 + 16);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 44);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 44) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102637BB8 + 8);
  }

  v7 = sub_1002FC8A8(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
  }

  else
  {
    v9 = 1;
  }

  v4 = (v4 + v8 + v9 + 1);
  v3 = *(a1 + 44);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v10 = *(a1 + 20);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(a1 + 44);
    }

    else
    {
      v11 = 2;
    }

    v4 = (v11 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(a1 + 24);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(a1 + 44);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_30:
  v14 = *(a1 + 28);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(a1 + 44);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v16 = *(a1 + 32);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
    v3 = *(a1 + 44);
  }

  else
  {
    v17 = 2;
  }

  v4 = (v17 + v4);
  if ((v3 & 0x40) != 0)
  {
LABEL_38:
    v18 = *(a1 + 36);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
    }

    else
    {
      v19 = 2;
    }

    v4 = (v19 + v4);
  }

LABEL_42:
  *(a1 + 40) = v4;
  return v4;
}

BOOL sub_1002BEF78(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8) < 0x10u && *(a2 + 12) < 5u;
  if (v3)
  {
    *(a1 + 3720) = 0;
    sub_1000AC16C(a1, a2);
    sub_1000AB298((a1 + 520), 0, 0);
    sub_1000AB298((a1 + 592), 0, 0);
    sub_1000AB298((a1 + 664), 0, 0);
    sub_1000AB298((a1 + 2504), 0, 0);
    sub_1000AB298((a1 + 3024), 0, 0);
    sub_1000AB298((a1 + 3192), 0, 0);
    *(a1 + 3712) = *(a1 + 8);
  }

  return v3;
}

uint64_t sub_1002BF024(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x40000000FLL;
  *a1 = off_1024C4B80;
  *(a1 + 8) = 0u;
  *(a1 + 32) = a1 + 40;
  *(a1 + 544) = 0x400000001;
  *(a1 + 520) = off_10249E090;
  *(a1 + 528) = 0u;
  *(a1 + 552) = a1 + 560;
  *(a1 + 616) = 0x100000004;
  *(a1 + 592) = off_10249DBA8;
  *(a1 + 600) = 0u;
  *(a1 + 624) = a1 + 632;
  *(a1 + 688) = 0xF0000000FLL;
  *(a1 + 664) = off_1024C4B38;
  *(a1 + 672) = xmmword_101D15380;
  *(a1 + 696) = a1 + 704;
  *(a1 + 2528) = 0x40000000FLL;
  *(a1 + 2504) = off_1024C4B80;
  *(a1 + 2512) = xmmword_101D15390;
  *(a1 + 2536) = a1 + 2544;
  *(a1 + 3048) = 0x400000004;
  *(a1 + 3024) = off_10249DBF0;
  *(a1 + 3032) = xmmword_101CF0660;
  *(a1 + 3056) = a1 + 3064;
  *(a1 + 3216) = 0x40000000FLL;
  *(a1 + 3192) = off_1024C4B80;
  *(a1 + 3200) = 0u;
  *(a1 + 3224) = a1 + 3232;
  *(a1 + 3712) = 0;
  *(a1 + 3720) = 0;
  sub_1002BEF78(a1, a2);
  return a1;
}

void sub_1002BF1FC(_Unwind_Exception *a1)
{
  v1[399] = off_1024721D0;
  v1[378] = off_1024721D0;
  v1[313] = off_1024721D0;
  v1[83] = off_1024721D0;
  v1[74] = off_1024721D0;
  v1[65] = off_1024721D0;
  *v1 = off_1024721D0;
  _Unwind_Resume(a1);
}

uint64_t sub_1002BF2C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3 != 58 || a3[1])
  {
    sub_101AF2870();
  }

  v13 = 0x100000001;
  v11 = off_1024C4BC8;
  *&v6 = 0x100000001;
  *(&v6 + 1) = 0x100000001;
  v12 = v6;
  v14 = &v15;
  *sub_1002BF744(&v11, 0) = a2;
  v7 = *(a1 + 12);
  sub_1002BF780(v10, v7, 1u);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      *sub_1002BF744(v10, i) = i;
    }
  }

  return sub_1002BF870(a4, a1, &v11, v10);
}

void sub_1002BF3A8(_DWORD *a1)
{
  if (a1[2])
  {
    v1 = a1[3] == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    sub_1002BF548(a1);
    sub_1000AC264(a1 + 798, a1[928], a1[929]);
    if (a1[928])
    {
      v3 = 0;
      do
      {
        sub_1002BF2C4(a1, v3, ":", v10);
        v7 = 0x400000001;
        v5 = off_10249E090;
        v6 = xmmword_101CF0670;
        v8 = &v9;
        sub_1002BFBB4(v10, (a1 + 130), &v5);
        sub_1002BF2C4((a1 + 798), v3, ":", v4);
        sub_1002BFF2C(v4, &v5);
        ++v3;
      }

      while (v3 < a1[928]);
    }

    sub_1002A2C08(v10, a1[800], a1[801]);
    sub_1002C0078(v4);
  }
}

void sub_1002BF524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002C06A8(va);
  _Unwind_Resume(a1);
}

void sub_1002BF548(_DWORD *a1)
{
  if (a1[2])
  {
    v2 = a1[3] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v20[3] = 0x400000001;
    v20[0] = off_10249E090;
    v20[1] = 0;
    v20[2] = 0;
    v20[4] = &v21;
    sub_1000AC16C((a1 + 130), v20);
  }

  else
  {
    sub_1002BF2C4(a1, 0, ":", v20);
    sub_1000AC16C((a1 + 130), v20);
    if (a1[928] >= 2u)
    {
      v3 = 1;
      do
      {
        v4 = v3 + 1;
        sub_1002BF2C4(a1, v3, ":", v20);
        v7 = 0x400000001;
        v5 = off_10249E090;
        v6 = xmmword_101CF0670;
        v8 = &v9;
        sub_1002BFBB4(v20, (a1 + 130), &v5);
        v12 = 0x400000001;
        v10 = off_10249E090;
        v11 = xmmword_101CF0670;
        v13 = &v14;
        sub_1000AB504(&v5, &v10, 1.0 / v4);
        v17 = 0x400000001;
        v15 = off_10249E090;
        v16 = xmmword_101CF0670;
        v18 = &v19;
        sub_1002BFCB4((a1 + 130), &v10, &v15);
        sub_1000AC16C((a1 + 130), &v15);
        v3 = v4;
      }

      while (v4 < a1[928]);
    }
  }
}

uint64_t sub_1002BF744(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_101AF2C38();
  }

  if (a2 < 0)
  {
    sub_101AF2C0C();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_101AF2BE0();
  }

  return v2 + 4 * a2;
}

uint64_t sub_1002BF780(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x100000004;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024C4C10;
  if ((a3 & 0x80000000) != 0)
  {
    v3 = "nc >= 0";
    v4 = 487;
    v5 = "cnmatrix.h";
    v6 = "CNMatrix";
    goto LABEL_9;
  }

  if (a2 > 4)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
LABEL_8:
    v5 = "cnmatrixbase.h";
    v6 = "SetMatrixSize";
LABEL_9:
    __assert_rtn(v6, v5, v4, v3);
  }

  if (a3 >= 2)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
    goto LABEL_8;
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t sub_1002BF870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x400000001;
  *(a1 + 8) = xmmword_101CF0670;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1024C4C58;
  *(a1 + 104) = 0x100000001;
  *(a1 + 72) = a2;
  *(a1 + 80) = off_1024C4BC8;
  *&v7 = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  *(a1 + 88) = v7;
  *(a1 + 112) = a1 + 120;
  v8 = a1 + 128;
  *(a1 + 152) = 0x100000004;
  *(a1 + 128) = off_1024C4C10;
  *(a1 + 136) = xmmword_101D153A0;
  *(a1 + 160) = a1 + 168;
  sub_1002BFAB4(a1 + 80, a3);
  sub_1002BFAB4(v8, a4);
  v9 = *(a1 + 96);
  if (*(a1 + 24) < v9)
  {
    v17 = "this->max_num_rows_ >= num_rows";
    v18 = 422;
    goto LABEL_12;
  }

  v10 = *(a1 + 144);
  if (*(a1 + 28) < v10)
  {
    v17 = "this->max_num_cols_ >= num_cols";
    v18 = 423;
LABEL_12:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v18, v17);
  }

  *(a1 + 8) = v9;
  *(a1 + 12) = v10;
  *(a1 + 16) = v10 * v9;
  *(a1 + 20) = v9;
  if (v10)
  {
    v11 = 0;
    for (i = 0; i != v10; ++i)
    {
      if (v9)
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = sub_1002BFB70(a2, *(*(a1 + 112) + v13), *(*(a1 + 160) + 4 * i));
          v13 += 4;
          *(*(a1 + 32) + 8 * v14++) = *v15;
        }

        while (4 * v9 != v13);
      }

      v11 += v9;
    }
  }

  return a1;
}

void sub_1002BFA54(_Unwind_Exception *a1)
{
  v1[16] = off_10249DC90;
  v1[10] = off_10249DC90;
  *v1 = off_1024721D0;
  _Unwind_Resume(a1);
}

uint64_t sub_1002BFAB4(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(a2 + 8);
    if (*(result + 24) < v2)
    {
      sub_101A267C4();
    }

    v3 = *(a2 + 12);
    if (*(result + 28) < v3)
    {
      sub_101A26798();
    }

    *(result + 8) = v2;
    *(result + 12) = v3;
    v4 = v3 * v2;
    *(result + 16) = v4;
    *(result + 20) = v2;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v9 = (v5 - 1);
      v10 = *(result + 32);
      v11 = *(a2 + 32);
      v12 = v9;
      v13 = v10;
      v14 = v11;
      do
      {
        v15 = *v14++;
        *v13++ = v15;
        --v12;
      }

      while (v12);
      v10[v9] = v11[v9];
    }

    else if (v4 >= 1)
    {
      v6 = 0;
      v7 = *(a2 + 32);
      v8 = *(result + 32);
      do
      {
        *(v8 + 4 * v6) = *(v7 + 4 * v6);
        ++v6;
      }

      while (v6 < *(result + 16));
    }
  }

  return result;
}

uint64_t sub_1002BFB70(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_101A26BB8();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    sub_101A26B8C();
  }

  if (v4 >= *(a1 + 16))
  {
    sub_101A26B60();
  }

  return v3 + 8 * v4;
}

float64x2_t sub_1002BFBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4 != *(a2 + 8))
  {
    sub_101AF2B30();
  }

  v7 = *(a1 + 12);
  if (v7 != *(a2 + 12))
  {
    sub_101AF2B5C();
  }

  if (a1 == a3)
  {
    sub_101AF2BB4();
  }

  if (a2 == a3)
  {
    sub_101AF2B88();
  }

  sub_1000AB298(a3, v4, v7);
  v9 = *(a3 + 16);
  if (v9 > 3)
  {
    v16 = *(a1 + 32);
    v17 = *(a2 + 32);
    v18 = (v16 + 8 * (v9 - 2));
    v19 = *(a3 + 32);
    v20 = (v17 + 8 * (v9 - 2));
    v21 = (v19 + 8 * (v9 - 2));
    v22 = (v9 - 1) >> 1;
    do
    {
      v23 = *v16++;
      v24 = v23;
      v25 = *v17++;
      *v19++ = vsubq_f64(v24, v25);
      --v22;
    }

    while (v22);
    result = vsubq_f64(*v18, *v20);
    *v21 = result;
  }

  else if (v9 >= 1)
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = *(a3 + 32);
    do
    {
      v13 = *v10++;
      v14 = v13;
      v15 = *v11++;
      result.f64[0] = v14 - v15;
      *v12++ = result.f64[0];
      --v9;
    }

    while (v9);
  }

  return result;
}

float64x2_t sub_1002BFCB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4 != *(a2 + 8))
  {
    sub_101AF2A54();
  }

  v7 = *(a1 + 12);
  if (v7 != *(a2 + 12))
  {
    sub_101AF2A80();
  }

  if (a1 == a3)
  {
    sub_101AF2AD8();
  }

  if (a2 == a3)
  {
    sub_101AF2AAC();
  }

  sub_1000AB298(a3, v4, v7);
  v9 = *(a3 + 16);
  if (v9 > 3)
  {
    v16 = *(a1 + 32);
    v17 = *(a2 + 32);
    v18 = (v16 + 8 * (v9 - 2));
    v19 = *(a3 + 32);
    v20 = (v17 + 8 * (v9 - 2));
    v21 = (v19 + 8 * (v9 - 2));
    v22 = (v9 - 1) >> 1;
    do
    {
      v23 = *v16++;
      v24 = v23;
      v25 = *v17++;
      *v19++ = vaddq_f64(v24, v25);
      --v22;
    }

    while (v22);
    result = vaddq_f64(*v18, *v20);
    *v21 = result;
  }

  else if (v9 >= 1)
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = *(a3 + 32);
    do
    {
      v13 = *v10++;
      v14 = v13;
      v15 = *v11++;
      result.f64[0] = v14 + v15;
      *v12++ = result.f64[0];
      --v9;
    }

    while (v9);
  }

  return result;
}

BOOL sub_1002BFDB4(uint64_t a1, double a2)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = v4 < 0.0;
  if (v4 < 0.0 || ((v7 = vabdd_f64(v4, a2), !v5) ? (v8 = v7 <= 30.0) : (v8 = 1), !v8))
  {
    sub_100C2E920(a1, a2);
  }

  *(a1 + 32) = a2;
  return *(a1 + 48) == 1 && *(a1 + 52) > 25000;
}

__n128 sub_1002BFE4C(unint64_t *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 21 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1002B4364(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x15)) + 192 * (v7 % 0x15);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  *(v8 + 32) = a2[2];
  *(v8 + 48) = v11;
  *v8 = v9;
  *(v8 + 16) = v10;
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[7];
  *(v8 + 96) = a2[6];
  *(v8 + 112) = v14;
  *(v8 + 64) = v12;
  *(v8 + 80) = v13;
  result = a2[8];
  v16 = a2[9];
  v17 = a2[11];
  *(v8 + 160) = a2[10];
  *(v8 + 176) = v17;
  *(v8 + 128) = result;
  *(v8 + 144) = v16;
  ++a1[5];
  return result;
}

uint64_t sub_1002BFF2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    sub_101A261E0();
  }

  v5 = *(a1 + 12);
  if (v5 != *(a2 + 12))
  {
    sub_101A2620C();
  }

  if (v5)
  {
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      if (v2)
      {
        for (j = 0; j != v2; ++j)
        {
          v9 = *(*(a2 + 32) + 8 * (v6 + j));
          *sub_1002BFB70(*(a1 + 72), *(*(a1 + 112) + 4 * j), *(*(a1 + 160) + 4 * i)) = v9;
          *sub_1000AC220(a1, j, i) = v9;
        }
      }

      v6 += v2;
    }
  }

  return a1;
}

void sub_1002C0078(uint64_t a1)
{
  *(a1 + 24) = 0x1000007F1;
  *a1 = &off_1024C4CA0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_101D153B0;
  sub_1002C0008(a1);
}

void sub_1002C00E0(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    operator delete[]();
  }

  *v1 = off_1024721D0;
  _Unwind_Resume(exception_object);
}

_DWORD *sub_1002C0128(_DWORD *a1, _DWORD *a2, uint64_t a3, _DWORD *a4, uint64_t a5, _DWORD *a6)
{
  v8 = a1[2];
  v7 = a1[3];
  if (v7 <= v8)
  {
    v9 = a1[2];
  }

  else
  {
    v9 = a1[3];
  }

  if (v7 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (a1 == a2)
  {
    sub_101AF30DC();
  }

  if (a1 == a3)
  {
    sub_101AF30B0();
  }

  if (a1 == a4)
  {
    sub_101AF3084();
  }

  if (a1 == a5)
  {
    sub_101AF3058();
  }

  if (a1 == a6)
  {
    sub_101AF302C();
  }

  if (a2 == a3)
  {
    sub_101AF3000();
  }

  if (a2 == a4)
  {
    sub_101AF2FD4();
  }

  if (a2 == a5)
  {
    sub_101AF2FA8();
  }

  if (a2 == a6)
  {
    sub_101AF2F7C();
  }

  if (a3 == a4)
  {
    sub_101AF2F50();
  }

  if (a3 == a5)
  {
    sub_101AF2F24();
  }

  if (a3 == a6)
  {
    sub_101AF2EF8();
  }

  if (a4 == a5)
  {
    sub_101AF2ECC();
  }

  if (a4 == a6)
  {
    sub_101AF2EA0();
  }

  if (a5 == a6)
  {
    sub_101AF2E74();
  }

  v15 = *(a3 + 28) * *(a3 + 24);
  if (!v15)
  {
    sub_101AF2E48();
  }

  if (v15 < 3 * v10 + v9)
  {
    sub_101AF2E1C();
  }

  if (v15 < 5 * v10)
  {
    sub_101AF2DF0();
  }

  if (a2[6] < v8)
  {
    sub_101AF2DC4();
  }

  if (a2[7] < v7)
  {
    sub_101AF2D98();
  }

  if (a4[6] < v8)
  {
    sub_101AF2D6C();
  }

  if (a4[7] < v8)
  {
    sub_101AF2D40();
  }

  if (*(a5 + 24) < v8)
  {
    sub_101AF2D14();
  }

  if (*(a5 + 28) < v7)
  {
    sub_101AF2CE8();
  }

  if (a6[6] < v7)
  {
    sub_101AF2CBC();
  }

  if (a6[7] < v7)
  {
    sub_101AF2C90();
  }

  sub_1000AC16C(a2, a1);
  v16 = a2[2];
  v17 = a2[3];
  v30 = 65;
  v29 = 65;
  v27 = v17;
  v28 = v16;
  v18 = dgesvd_NEWLAPACK();
  v19 = **(a3 + 32);
  if (v15 < v19 && cnprint::CNPrinter::GetLogLevel(v18) <= 1)
  {
    LOWORD(v28) = 4;
    LOBYTE(v27) = 1;
    cnprint::CNPrinter::Print(&v28, &v27, "Warning: Svd optimal workspace size %u is greater than provided workspace size %u; performance may suffer.", v19, v15);
  }

  sub_1000AB298(a3, *(a3 + 24), *(a3 + 28));
  sub_1000AB298(a4, v8, v8);
  sub_1000AB298(a5, v8, v7);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v21 = *(*(a5 + 32) + 8 * i);
      *sub_1000AC220(a5, i, i) = v21;
    }
  }

  if (v7)
  {
    v22 = 0;
    do
    {
      v23 = v22;
      if (v8 < v22)
      {
        v22 = v8;
      }

      if (v22)
      {
        for (j = 0; j != v22; ++j)
        {
          *sub_1000AC220(a5, j, v23) = 0;
        }
      }

      v22 = v23 + 1;
      v25 = v23 + 1;
      if (v23 + 1 < v8)
      {
        do
        {
          *sub_1000AC220(a5, v25++, v23) = 0;
        }

        while (v8 != v25);
      }
    }

    while (v22 != v7);
  }

  sub_1000AB298(a6, v7, v7);
  return sub_1002C04FC(a6);
}

_DWORD *sub_1002C04FC(_DWORD *a1)
{
  if (a1[6] < a1[3])
  {
    sub_101AF3160();
  }

  if (a1[7] < a1[2])
  {
    sub_101AF3134();
  }

  (*(*a1 + 24))(a1);
  v3 = a1[2];
  v2 = a1[3];

  return sub_1000AB298(a1, v2, v3);
}

void sub_1002C0584(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      if (!a2)
      {
        sub_101940180();
      }

      v6 = v4 + v2 - *(a1 + 20);
      if (v6 <= 0)
      {
        sub_1003146C8();
      }

      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = (v7 - 1);
        v9 = *(a1 + 32);
        v10 = 1;
        do
        {
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = *(v9 + 8 * v10);
            v13 = v10;
            do
            {
              v13 = v13 * v6 % v8;
              v14 = *(v9 + 8 * v13);
              *(v9 + 8 * v13) = v12;
              *v11 = 1;
              v11 = &a2[v13];
              v12 = v14;
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v8);
      }
    }
  }
}

void *sub_1002C06A8(void *a1)
{
  *a1 = &off_1024C4CA0;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    operator delete[]();
  }

  *a1 = off_1024721D0;
  return a1;
}

uint64_t sub_1002C0724@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (*a2 != 58 || a2[1])
  {
    sub_101AF2A28();
  }

  v7 = *(a1 + 8);
  sub_1002BF780(v16, v7, 1u);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      *sub_1002BF744(v16, i) = i;
    }
  }

  v13 = 0x100000001;
  v11 = off_1024C4BC8;
  *&v9 = 0x100000001;
  *(&v9 + 1) = 0x100000001;
  v12 = v9;
  v14 = &v15;
  *sub_1002BF744(&v11, 0) = a3;
  return sub_1002C0810(a4, a1, v16, &v11);
}

uint64_t sub_1002C0810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x100000004;
  *(a1 + 8) = xmmword_101D153A0;
  *(a1 + 32) = a1 + 40;
  *a1 = off_1024C4CE8;
  *(a1 + 104) = 0x100000004;
  *(a1 + 72) = a2;
  *(a1 + 80) = off_1024C4C10;
  *(a1 + 88) = xmmword_101D153A0;
  *(a1 + 112) = a1 + 120;
  v7 = a1 + 136;
  *(a1 + 160) = 0x100000001;
  *(a1 + 136) = off_1024C4BC8;
  *&v8 = 0x100000001;
  *(&v8 + 1) = 0x100000001;
  *(a1 + 144) = v8;
  *(a1 + 168) = a1 + 176;
  sub_1002BFAB4(a1 + 80, a3);
  sub_1002BFAB4(v7, a4);
  v9 = *(a1 + 96);
  if (*(a1 + 24) < v9)
  {
    v17 = "this->max_num_rows_ >= num_rows";
    v18 = 422;
    goto LABEL_12;
  }

  v10 = *(a1 + 152);
  if (*(a1 + 28) < v10)
  {
    v17 = "this->max_num_cols_ >= num_cols";
    v18 = 423;
LABEL_12:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v18, v17);
  }

  *(a1 + 8) = v9;
  *(a1 + 12) = v10;
  *(a1 + 16) = v10 * v9;
  *(a1 + 20) = v9;
  if (v10)
  {
    v11 = 0;
    for (i = 0; i != v10; ++i)
    {
      if (v9)
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = sub_1002BFB70(a2, *(*(a1 + 112) + v13), *(*(a1 + 168) + 4 * i));
          v13 += 4;
          *(*(a1 + 32) + 8 * v14++) = *v15;
        }

        while (4 * v9 != v13);
      }

      v11 += v9;
    }
  }

  return a1;
}

void sub_1002C09E4(_Unwind_Exception *a1)
{
  v1[17] = off_10249DC90;
  v1[10] = off_10249DC90;
  *v1 = off_1024721D0;
  _Unwind_Resume(a1);
}

void sub_1002C0A44(uint64_t result, uint64_t a2)
{
  if (*(result + 8))
  {
    v6 = *(result + 12) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v40[4] = v5;
    v40[5] = v4;
    v40[10] = v2;
    v40[11] = v3;
    if (*(result + 3720) == 1)
    {
      v23 = 0x400000001;
      v22 = xmmword_101CF0670;
      v21 = off_10249E090;
      v24 = &v25;
      sub_1002BFBB4(a2, result + 520, &v21);
      v8 = sub_1002C0C78(&v21, result + 592);
      sub_1002C0CF8(v10, *(result + 604), *(result + 600));
      sub_1002CD878((result + 592), v10);
      v13 = 0x400000001;
      v11 = off_10249E090;
      v12 = xmmword_101CF0670;
      v14 = &v15;
      sub_1000AB504(v10, &v11, v8);
      v18 = 0x400000001;
      v17 = xmmword_101CF0670;
      v16 = off_10249E090;
      v19 = &v20;
      sub_1002BFBB4(&v21, &v11, &v16);
      v38 = 0x400000001;
      v36 = off_10249E090;
      v37 = xmmword_101CF0670;
      v39 = v40;
      v33 = 0x10000018BLL;
      v32 = xmmword_101D15370;
      v31 = off_1024C4D30;
      v34 = &v35;
      v28 = 0x100000001;
      *&v9 = 0x100000001;
      *(&v9 + 1) = 0x100000001;
      v27 = v9;
      v26 = off_10249E0D8;
      v29 = &v30;
      sub_1002C0DC4(&v16, &v36, &v31, &v26, "2");
    }
  }
}

double sub_1002C0C78(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1 && *(a1 + 12) != 1)
  {
    sub_101AF31E4();
  }

  if (*(a2 + 8) != 1 && *(a2 + 12) != 1)
  {
    sub_101AF31B8();
  }

  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    sub_101AF318C();
  }

  if (v4 < 1)
  {
    return 0.0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  result = 0.0;
  do
  {
    v8 = *v5++;
    v9 = v8;
    v10 = *v6++;
    result = result + v9 * v10;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t sub_1002C0CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x400000001;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_10249E090;
  if (a2 > 1)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 5)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

void sub_1002C0DC4(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, char *__s1)
{
  if (a1 == a2)
  {
    sub_101AF33C8();
  }

  if (a1 == a3)
  {
    sub_101AF339C();
  }

  if (a1 == a4)
  {
    sub_101AF3370();
  }

  if (a2 == a3)
  {
    sub_101AF3344();
  }

  if (a2 == a4)
  {
    sub_101AF3318();
  }

  if (a3 == a4)
  {
    sub_101AF32EC();
  }

  v7 = *(a1 + 16);
  if (*(a2 + 16) < v7)
  {
    sub_101AF32C0();
  }

  if (v7)
  {
    v9 = *(a1 + 8);
    v10 = *__s1;
    if (v9 == 1 || (v11 = *(a1 + 12), v11 == 1))
    {
      if (v10 == 50)
      {
        if (!__s1[1])
        {
          v12 = *(a1 + 32);
          v13 = *v12 * *v12;
          if (v7 != 1)
          {
            v14 = v12 + 1;
            v15 = v7 - 1;
            do
            {
              v16 = *v14++;
              v13 = v13 + v16 * v16;
              --v15;
            }

            while (v15);
          }

          return;
        }
      }

      else if (v10 == 49 && !__s1[1])
      {
        v56 = *(a1 + 32);
        v57 = fabs(*v56);
        if (v7 != 1)
        {
          v58 = v56 + 1;
          v59 = v7 - 1;
          do
          {
            v60 = *v58++;
            v57 = v57 + fabs(v60);
            --v59;
          }

          while (v59);
        }

        return;
      }

      if (!strcmp(__s1, "inf"))
      {
        v23 = *(a1 + 32);
        v24 = fabs(*v23);
        if (v7 != 1)
        {
          v25 = v23 + 1;
          v26 = v7 - 1;
          do
          {
            v27 = *v25++;
            v28 = fabs(v27);
            if (v28 > v24)
            {
              v24 = v28;
            }

            --v26;
          }

          while (v26);
        }
      }

      else if (!strcmp(__s1, "-inf"))
      {
        v40 = *(a1 + 32);
        v41 = fabs(*v40);
        if (v7 != 1)
        {
          v42 = v40 + 1;
          v43 = v7 - 1;
          do
          {
            v44 = *v42++;
            v45 = fabs(v44);
            if (v45 < v41)
            {
              v41 = v45;
            }

            --v43;
          }

          while (v43);
        }
      }

      else
      {
        v73 = 0.0;
        if (sscanf(__s1, "%lg", &v73) != 1)
        {
          sub_101AF3210(__s1);
        }

        v17 = v73;
        if (fabs(v73) >= 2.22044605e-16)
        {
          v46 = *(a1 + 32);
          v47 = pow(fabs(*v46), v73);
          if (v7 != 1)
          {
            v48 = v46 + 1;
            v49 = v7 - 1;
            do
            {
              v50 = *v48++;
              v47 = v47 + pow(fabs(v50), v17);
              --v49;
            }

            while (v49);
          }

          pow(v47, 1.0 / v17);
        }
      }

      return;
    }

    if (v10 == 50)
    {
      if (!__s1[1])
      {
        sub_100FC1474(a1, a2, a3, a4);
        return;
      }

      goto LABEL_30;
    }

    if (v10 != 49 || __s1[1])
    {
LABEL_30:
      if (!strcmp(__s1, "inf"))
      {
        if (v9)
        {
          v29 = *(a1 + 32);
          v30 = *(a2 + 32);
          v31 = v9;
          do
          {
            v32 = *v29++;
            *v30++ = fabs(v32);
            --v31;
          }

          while (v31);
        }

        if (v11 <= 1)
        {
          v34 = *(a2 + 32);
        }

        else
        {
          v33 = *(a1 + 32);
          v34 = *(a2 + 32);
          v35 = 1;
          v36 = v9;
          do
          {
            v37 = v9;
            v38 = v36;
            v39 = v34;
            if (v9)
            {
              do
              {
                *v39 = fabs(*(v33 + 8 * v38)) + *v39;
                ++v39;
                ++v38;
                --v37;
              }

              while (v37);
            }

            ++v35;
            v36 += v9;
          }

          while (v35 != v11);
        }

        v51 = *v34;
        if (v9 >= 2)
        {
          v52 = v34 + 1;
          v53 = v9 - 1;
          do
          {
            v54 = *v52++;
            v55 = v54;
            if (v54 > v51)
            {
              v51 = v55;
            }

            --v53;
          }

          while (v53);
        }
      }

      else
      {
        if (strcmp(__s1, "fro"))
        {
          sub_101AF3268(__s1);
        }

        v18 = *(a1 + 32);
        v19 = *v18 * *v18;
        if (v7 != 1)
        {
          v20 = v18 + 1;
          v21 = v7 - 1;
          do
          {
            v22 = *v20++;
            v19 = v19 + v22 * v22;
            --v21;
          }

          while (v21);
        }
      }

      return;
    }

    if (v11)
    {
      v61 = 0;
      v62 = *(a1 + 32);
      v63 = *(a2 + 32);
      v64 = 1;
      do
      {
        v65 = fabs(*(v62 + 8 * (v9 * v61)));
        v63[v61] = v65;
        v66 = v9 - 1;
        v67 = v64;
        if (v9 >= 2)
        {
          do
          {
            v65 = v65 + fabs(*(v62 + 8 * v67));
            v63[v61] = v65;
            ++v67;
            --v66;
          }

          while (v66);
        }

        ++v61;
        v64 += v9;
      }

      while (v61 != v11);
      v68 = *v63;
      v69 = v63 + 1;
      v70 = v11 - 1;
      do
      {
        v71 = *v69++;
        v72 = v71;
        if (v71 > v68)
        {
          v68 = v72;
        }

        --v70;
      }

      while (v70);
    }
  }
}

uint64_t sub_1002C1240(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0x300000003;
  *(a1 + 16) = off_10249DB60;
  *(a1 + 24) = xmmword_101CF0650;
  *(a1 + 48) = a1 + 56;
  return a1;
}

uint64_t sub_1002C12EC(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 96);
  if (*(a1 + 96))
  {
    sub_1000AB298(a2, 3, 3);
    v5 = *(a1 + 128);
    *sub_1000AC220(a2, 0, 0) = v5;
    v6 = *(a1 + 136);
    *sub_1000AC220(a2, 0, 1) = v6;
    v7 = *(a1 + 144);
    *sub_1000AC220(a2, 0, 2) = v7;
    v8 = *(a1 + 136);
    *sub_1000AC220(a2, 1, 0) = v8;
    v9 = *(a1 + 152);
    *sub_1000AC220(a2, 1, 1) = v9;
    v10 = *(a1 + 160);
    *sub_1000AC220(a2, 1, 2) = v10;
    v11 = *(a1 + 144);
    *sub_1000AC220(a2, 2, 0) = v11;
    v12 = *(a1 + 160);
    *sub_1000AC220(a2, 2, 1) = v12;
    v13 = *(a1 + 168);
    *sub_1000AC220(a2, 2, 2) = v13;
  }

  return v2;
}

uint64_t sub_1002C1414(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x300000003;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_10249DB60;
  if (a2 > 3)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 4)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t sub_1002C14DC(uint64_t a1, double *a2, double *a3)
{
  v3 = *(a1 + 8);
  if (v3 == 1)
  {
    v7 = sub_1000AB4C0(a1 + 16, 0, 0);
    v8 = *a2;
    v9 = sub_1000AB4C0(a1 + 16, 0, 1) * a2[1] + v7 * v8;
    *a3 = v9 + sub_1000AB4C0(a1 + 16, 0, 2) * a2[2];
    v10 = sub_1000AB4C0(a1 + 16, 1, 0);
    v11 = *a2;
    v12 = sub_1000AB4C0(a1 + 16, 1, 1) * a2[1] + v10 * v11;
    a3[1] = v12 + sub_1000AB4C0(a1 + 16, 1, 2) * a2[2];
    v13 = sub_1000AB4C0(a1 + 16, 2, 0);
    v14 = *a2;
    v15 = sub_1000AB4C0(a1 + 16, 2, 1) * a2[1] + v13 * v14;
    a3[2] = v15 + sub_1000AB4C0(a1 + 16, 2, 2) * a2[2];
  }

  return v3;
}

uint64_t sub_1002C1614(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 176) || !*(a1 + 177))
  {
    return 0;
  }

  sub_1000AB298(a2, 4, 4);
  v4 = *(a1 + 216);
  *sub_1000AC220(a2, 0, 0) = v4;
  v5 = *(a1 + 224);
  v6 = 1;
  *sub_1000AC220(a2, 0, 1) = v5;
  v7 = *(a1 + 232);
  *sub_1000AC220(a2, 0, 2) = v7;
  v8 = *(a1 + 240);
  *sub_1000AC220(a2, 0, 3) = v8;
  v9 = *(a1 + 224);
  *sub_1000AC220(a2, 1, 0) = v9;
  v10 = *(a1 + 248);
  *sub_1000AC220(a2, 1, 1) = v10;
  v11 = *(a1 + 256);
  *sub_1000AC220(a2, 1, 2) = v11;
  v12 = *(a1 + 264);
  *sub_1000AC220(a2, 1, 3) = v12;
  v13 = *(a1 + 232);
  *sub_1000AC220(a2, 2, 0) = v13;
  v14 = *(a1 + 256);
  *sub_1000AC220(a2, 2, 1) = v14;
  v15 = *(a1 + 272);
  *sub_1000AC220(a2, 2, 2) = v15;
  v16 = *(a1 + 280);
  *sub_1000AC220(a2, 2, 3) = v16;
  v17 = *(a1 + 240);
  *sub_1000AC220(a2, 3, 0) = v17;
  v18 = *(a1 + 264);
  *sub_1000AC220(a2, 3, 1) = v18;
  v19 = *(a1 + 280);
  *sub_1000AC220(a2, 3, 2) = v19;
  v20 = *(a1 + 288);
  *sub_1000AC220(a2, 3, 3) = v20;
  return v6;
}

void sub_1002C17F8(uint64_t a1)
{
  if (*(a1 + 4800))
  {
    __p[0] = 0;
    __p[1] = 0;
    v3 = 0;
    std::mutex::lock((a1 + 4536));
    raven::ConvertRavenSolutionEventToSerializedProtobufLogEntry();
    std::mutex::unlock((a1 + 4536));
    sub_1000145C0(*(a1 + 4800), __p);
    if (SHIBYTE(v3) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1002C186C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C18A0(uint64_t a1)
{
  std::mutex::lock((a1 + 4536));
  v44 = 0;
  sub_100153734(&v44 + 1, &v44, *(a1 + 3160));
  if (qword_1025D4680 != -1)
  {
    sub_101A20320();
  }

  v2 = (a1 + 2980);
  v3 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 528);
    v5 = *v2;
    v6 = *(a1 + 2988);
    v7 = *(a1 + 2996);
    v8 = *(a1 + 3004);
    v9 = *(a1 + 3012);
    v10 = *(a1 + 3020);
    v11 = *(a1 + 3028);
    v12 = *(a1 + 3036);
    v13 = *(a1 + 3044);
    v14 = *(a1 + 1496) + *(a1 + 1488);
    v15 = *(a1 + 3176);
    v16 = *(a1 + 3180);
    v17 = *(a1 + 3184);
    v18 = *(a1 + 1464);
    v19 = *(a1 + 1472);
    v20 = *(a1 + 1480);
    v21 = *(a1 + 2320) * 1000000000.0;
    v22 = sqrt(*(a1 + 2344)) * 1000000000.0;
    *buf = 67245571;
    v89 = v4;
    v90 = 2053;
    v91 = v5;
    v92 = 2053;
    v93 = v6;
    v94 = 2050;
    v95 = v7;
    v96 = 2049;
    v97 = v8;
    v98 = 2050;
    v99 = v9;
    v100 = 2049;
    v101 = v10;
    v102 = 2050;
    v103 = v11;
    v104 = 2049;
    v105 = v12;
    v106 = 2050;
    v107 = v13;
    v108 = 1026;
    v109 = HIDWORD(v44);
    v110 = 1026;
    v111 = v44;
    v112 = 2050;
    v113 = v14;
    v114 = 2050;
    v115 = v15;
    v116 = 2050;
    v117 = v16;
    v118 = 2050;
    v119 = v17;
    v120 = 2050;
    v121 = v18;
    v122 = 2050;
    v123 = v19;
    v124 = 2050;
    v125 = v20;
    v126 = 2050;
    v127 = v21;
    v128 = 2050;
    v129 = v22;
    v130 = 2082;
    v131 = "GNSSLocationService";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "Raven,Fix,1,solution_type,%{public}d,lat,%{sensitive}.8f,lon,%{sensitive}.8f,hunc,%{public}.1f,alt,%{private}.2f,alt_unc,%{public}.1f,speed,%{private}.2f,speed_unc,%{public}.1f,course,%{private}.1f,course_unc,%{public}.1f,gps_week,%{public}d,gps_tow_ms,%{public}d,raven_time,%{public}.3f,err_elp_A,%{public}.1f,err_elp_B,%{public}.1f,err_elp_AZ,%{public}.1f,weight_PT,%{public}.1f,weight_CE,%{public}.1f,weight_PNT,%{public}.1f,clkD,%{public}.1f,clkD_unc,%{public}.1f,generatingProcess,%{public}s", buf, 0xD2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A20348(buf);
    v23 = *(a1 + 528);
    v24 = *v2;
    v25 = *(a1 + 2988);
    v26 = *(a1 + 2996);
    v27 = *(a1 + 3004);
    v28 = *(a1 + 3012);
    v29 = *(a1 + 3020);
    v30 = *(a1 + 3028);
    v31 = *(a1 + 3036);
    v32 = *(a1 + 3044);
    v33 = *(a1 + 1496) + *(a1 + 1488);
    v34 = *(a1 + 3176);
    v35 = *(a1 + 3180);
    v36 = *(a1 + 3184);
    v37 = *(a1 + 1464);
    v38 = *(a1 + 1472);
    v39 = *(a1 + 1480);
    v40 = *(a1 + 2320) * 1000000000.0;
    v41 = sqrt(*(a1 + 2344)) * 1000000000.0;
    v45[0] = 67245571;
    v45[1] = v23;
    v46 = 2053;
    v47 = v24;
    v48 = 2053;
    v49 = v25;
    v50 = 2050;
    v51 = v26;
    v52 = 2049;
    v53 = v27;
    v54 = 2050;
    v55 = v28;
    v56 = 2049;
    v57 = v29;
    v58 = 2050;
    v59 = v30;
    v60 = 2049;
    v61 = v31;
    v62 = 2050;
    v63 = v32;
    v64 = 1026;
    v65 = HIDWORD(v44);
    v66 = 1026;
    v67 = v44;
    v68 = 2050;
    v69 = v33;
    v70 = 2050;
    v71 = v34;
    v72 = 2050;
    v73 = v35;
    v74 = 2050;
    v75 = v36;
    v76 = 2050;
    v77 = v37;
    v78 = 2050;
    v79 = v38;
    v80 = 2050;
    v81 = v39;
    v82 = 2050;
    v83 = v40;
    v84 = 2050;
    v85 = v41;
    v86 = 2082;
    v87 = "GNSSLocationService";
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4688, 0, "Raven,Fix,1,solution_type,%{public}d,lat,%{sensitive}.8f,lon,%{sensitive}.8f,hunc,%{public}.1f,alt,%{private}.2f,alt_unc,%{public}.1f,speed,%{private}.2f,speed_unc,%{public}.1f,course,%{private}.1f,course_unc,%{public}.1f,gps_week,%{public}d,gps_tow_ms,%{public}d,raven_time,%{public}.3f,err_elp_A,%{public}.1f,err_elp_B,%{public}.1f,err_elp_AZ,%{public}.1f,weight_PT,%{public}.1f,weight_CE,%{public}.1f,weight_PNT,%{public}.1f,clkD,%{public}.1f,clkD_unc,%{public}.1f,generatingProcess,%{public}s", v45, 210);
    v43 = v42;
    sub_100152C7C("Generic", 1, 0, 2, "void CLRavenController::LogMostRecentRavenSolution() const", "%s\n", v42);
    if (v43 != buf)
    {
      free(v43);
    }
  }

  std::mutex::unlock((a1 + 4536));
}

uint64_t sub_1002C1CD0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v4 = v3;
  v5 = v2;
  v6 = (v3 + 680);
  v7 = *v2 & 0x7FFFFFFFFFFFFFFFLL;
  v8 = (v7 - 1) < 0xFFFFFFFFFFFFFLL;
  v9 = *v2 < 0 && (v7 - 0x10000000000000) >> 53 < 0x3FF;
  if (*v2 >= 0)
  {
    v8 = 0;
  }

  v10 = v7 == 0x7FF0000000000000 || v8;
  if ((*v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v10 = 1;
  }

  if ((v10 | v9) == 1)
  {
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v11 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
    {
      v12 = *v5;
      *buf = 134349056;
      *&buf[4] = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "Raven: solution requested at invalid time: %{public}.3lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A264E4();
    }

    sub_100021AFC(buf);
    v13 = v165;
    *(v4 + 96) = v164;
    *(v4 + 112) = v13;
    *(v4 + 128) = v166[0];
    *(v4 + 140) = *(v166 + 12);
    v14 = v161;
    *(v4 + 32) = v160;
    *(v4 + 48) = v14;
    v15 = v163;
    *(v4 + 64) = v162;
    *(v4 + 80) = v15;
    v16 = v159;
    *v4 = *buf;
    *(v4 + 16) = v16;
    memcpy((v4 + 160), v167, 0x201uLL);
    v17 = v168;
    v168 = 0uLL;
    v18 = *(v4 + 688);
    *v6 = v17;
    if (v18)
    {
      sub_100008080(v18);
    }

    v19 = v174[0];
    *(v4 + 760) = v173;
    *(v4 + 776) = v19;
    *(v4 + 785) = *(v174 + 9);
    v20 = v170;
    *(v4 + 696) = v169;
    *(v4 + 712) = v20;
    v21 = v172;
    *(v4 + 728) = v171;
    *(v4 + 744) = v21;
    v22 = v175;
    v175 = 0uLL;
    v23 = *(v4 + 816);
    v6[8] = v22;
    if (v23)
    {
      sub_100008080(v23);
    }

    *(v4 + 888) = v180;
    v24 = v179;
    *(v4 + 856) = v178;
    *(v4 + 872) = v24;
    v25 = v177;
    *(v4 + 824) = v176;
    *(v4 + 840) = v25;
    *(v4 + 896) = v181;
    v26 = (v4 + 904);
    if (*(v4 + 927) < 0)
    {
      operator delete(*v26);
    }

    *(v4 + 920) = v183;
    *v26 = __p;
    HIBYTE(v183) = 0;
    LOBYTE(__p) = 0;
    *(v4 + 1104) = v195;
    *(v4 + 1120) = v196;
    *(v4 + 1136) = v197;
    *(v4 + 1152) = v198;
    *(v4 + 1040) = v191;
    *(v4 + 1056) = v192;
    *(v4 + 1072) = v193;
    *(v4 + 1088) = v194;
    v27 = v189;
    *(v4 + 992) = v188;
    *(v4 + 1008) = v27;
    *(v4 + 1024) = v190;
    v28 = v185;
    *(v4 + 928) = v184;
    *(v4 + 944) = v28;
    v29 = v187;
    *(v4 + 960) = v186;
    *(v4 + 976) = v29;
    v30 = v199;
    v199 = 0uLL;
    v31 = *(v4 + 1168);
    v6[30] = v30;
    if (v31)
    {
      sub_100008080(v31);
    }

LABEL_45:
    v54 = v207;
    *(v4 + 1272) = v206;
    *(v4 + 1288) = v54;
    *(v4 + 1304) = v208;
    v55 = v203;
    *(v4 + 1208) = v202;
    *(v4 + 1224) = v55;
    v56 = v205;
    *(v4 + 1240) = v204;
    *(v4 + 1256) = v56;
    v57 = v201;
    *(v4 + 1176) = v200;
    *(v4 + 1192) = v57;
    v58 = *(v4 + 1320);
    *(v4 + 1320) = v209;
    v209 = 0;

    *(v4 + 1504) = v221;
    *(v4 + 1520) = v222;
    *(v4 + 1536) = v223;
    *(v4 + 1552) = v224;
    *(v4 + 1440) = v217;
    *(v4 + 1456) = v218;
    *(v4 + 1472) = v219;
    *(v4 + 1488) = v220;
    *(v4 + 1376) = v213;
    *(v4 + 1392) = v214;
    *(v4 + 1408) = v215;
    *(v4 + 1424) = v216;
    *(v4 + 1328) = v210;
    *(v4 + 1344) = v211;
    *(v4 + 1360) = v212;

    if (*(&v199 + 1))
    {
      sub_100008080(*(&v199 + 1));
    }

    if (SHIBYTE(v183) < 0)
    {
      operator delete(__p);
    }

    if (*(&v175 + 1))
    {
      sub_100008080(*(&v175 + 1));
    }

    if (*(&v168 + 1))
    {
      sub_100008080(*(&v168 + 1));
    }

    return 0;
  }

  v32 = v1;
  if (*(v1 + 4784) != 1 || *(v1 + 4856) == v1 + 4808)
  {
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v34 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "Raven: location requested with estimator not enabled", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A26400();
    }

    sub_100021AFC(buf);
    v35 = v165;
    *(v4 + 96) = v164;
    *(v4 + 112) = v35;
    *(v4 + 128) = v166[0];
    *(v4 + 140) = *(v166 + 12);
    v36 = v161;
    *(v4 + 32) = v160;
    *(v4 + 48) = v36;
    v37 = v163;
    *(v4 + 64) = v162;
    *(v4 + 80) = v37;
    v38 = v159;
    *v4 = *buf;
    *(v4 + 16) = v38;
    memcpy((v4 + 160), v167, 0x201uLL);
    v39 = v168;
    v168 = 0uLL;
    v40 = *(v4 + 688);
    *v6 = v39;
    if (v40)
    {
      sub_100008080(v40);
    }

    v41 = v174[0];
    *(v4 + 760) = v173;
    *(v4 + 776) = v41;
    *(v4 + 785) = *(v174 + 9);
    v42 = v170;
    *(v4 + 696) = v169;
    *(v4 + 712) = v42;
    v43 = v172;
    *(v4 + 728) = v171;
    *(v4 + 744) = v43;
    v44 = v175;
    v175 = 0uLL;
    v45 = *(v4 + 816);
    v6[8] = v44;
    if (v45)
    {
      sub_100008080(v45);
    }

    *(v4 + 888) = v180;
    v46 = v179;
    *(v4 + 856) = v178;
    *(v4 + 872) = v46;
    v47 = v177;
    *(v4 + 824) = v176;
    *(v4 + 840) = v47;
    *(v4 + 896) = v181;
    v48 = (v4 + 904);
    if (*(v4 + 927) < 0)
    {
      operator delete(*v48);
    }

    *(v4 + 920) = v183;
    *v48 = __p;
    HIBYTE(v183) = 0;
    LOBYTE(__p) = 0;
    *(v4 + 1104) = v195;
    *(v4 + 1120) = v196;
    *(v4 + 1136) = v197;
    *(v4 + 1152) = v198;
    *(v4 + 1040) = v191;
    *(v4 + 1056) = v192;
    *(v4 + 1072) = v193;
    *(v4 + 1088) = v194;
    v49 = v189;
    *(v4 + 992) = v188;
    *(v4 + 1008) = v49;
    *(v4 + 1024) = v190;
    v50 = v185;
    *(v4 + 928) = v184;
    *(v4 + 944) = v50;
    v51 = v187;
    *(v4 + 960) = v186;
    *(v4 + 976) = v51;
    v52 = v199;
    v199 = 0uLL;
    v53 = *(v4 + 1168);
    v6[30] = v52;
    if (v53)
    {
      sub_100008080(v53);
    }

    goto LABEL_45;
  }

  sub_10029FB44(buf);
  v33 = *(v32 + 4792);
  if (v33)
  {
    *v91 = *v5;
    v91[8] = 1;
    sub_100E4E4B0(v33, buf, v91);
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A20320();
  }

  v60 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
  {
    v61 = *v5;
    *v91 = 134349056;
    *&v91[4] = v61;
    _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_INFO, "Raven: could not retrieve Raven solution at time %{public}.3lf", v91, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A20348(v91);
    v86 = *v5;
    v89 = 134349056;
    v90 = v86;
    _os_log_send_and_compose_impl(2, 0, v91, 1628, dword_100000000, qword_1025D4688, 1, "Raven: could not retrieve Raven solution at time %{public}.3lf", &v89, 12);
    v88 = v87;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::GetLocation(const CFTimeInterval &, CLLocationProvider_Type::NotificationData &, const GNSS::DaemonLocation &) const", "%s\n", v87);
    if (v88 != v91)
    {
      free(v88);
    }
  }

  sub_100021AFC(v91);
  v62 = v98;
  *(v4 + 96) = v97;
  *(v4 + 112) = v62;
  *(v4 + 128) = v99[0];
  *(v4 + 140) = *(v99 + 12);
  v63 = v94;
  *(v4 + 32) = v93;
  *(v4 + 48) = v63;
  v64 = v96;
  *(v4 + 64) = v95;
  *(v4 + 80) = v64;
  v65 = v92;
  *v4 = *v91;
  *(v4 + 16) = v65;
  memcpy((v4 + 160), v100, 0x201uLL);
  v66 = v101;
  v101 = 0uLL;
  v67 = *(v4 + 688);
  *v6 = v66;
  if (v67)
  {
    sub_100008080(v67);
  }

  v68 = v107[0];
  *(v4 + 760) = v106;
  *(v4 + 776) = v68;
  *(v4 + 785) = *(v107 + 9);
  v69 = v103;
  *(v4 + 696) = v102;
  *(v4 + 712) = v69;
  v70 = v105;
  *(v4 + 728) = v104;
  *(v4 + 744) = v70;
  v71 = v108;
  v108 = 0uLL;
  v72 = *(v4 + 816);
  v6[8] = v71;
  if (v72)
  {
    sub_100008080(v72);
  }

  *(v4 + 888) = v113;
  v73 = v112;
  *(v4 + 856) = v111;
  *(v4 + 872) = v73;
  v74 = v110;
  *(v4 + 824) = v109;
  *(v4 + 840) = v74;
  *(v4 + 896) = v114;
  v75 = (v4 + 904);
  if (*(v4 + 927) < 0)
  {
    operator delete(*v75);
  }

  *(v4 + 920) = v116;
  *v75 = v115;
  HIBYTE(v116) = 0;
  LOBYTE(v115) = 0;
  *(v4 + 1104) = v128;
  *(v4 + 1120) = v129;
  *(v4 + 1136) = v130;
  *(v4 + 1152) = v131;
  *(v4 + 1040) = v124;
  *(v4 + 1056) = v125;
  *(v4 + 1072) = v126;
  *(v4 + 1088) = v127;
  v76 = v122;
  *(v4 + 992) = v121;
  *(v4 + 1008) = v76;
  *(v4 + 1024) = v123;
  v77 = v118;
  *(v4 + 928) = v117;
  *(v4 + 944) = v77;
  v78 = v120;
  *(v4 + 960) = v119;
  *(v4 + 976) = v78;
  v79 = v132;
  v132 = 0uLL;
  v80 = *(v4 + 1168);
  v6[30] = v79;
  if (v80)
  {
    sub_100008080(v80);
  }

  v81 = v140;
  *(v4 + 1272) = v139;
  *(v4 + 1288) = v81;
  *(v4 + 1304) = v141;
  v82 = v136;
  *(v4 + 1208) = v135;
  *(v4 + 1224) = v82;
  v83 = v138;
  *(v4 + 1240) = v137;
  *(v4 + 1256) = v83;
  v84 = v134;
  *(v4 + 1176) = v133;
  *(v4 + 1192) = v84;
  v85 = *(v4 + 1320);
  *(v4 + 1320) = v142;
  v142 = 0;

  *(v4 + 1504) = v154;
  *(v4 + 1520) = v155;
  *(v4 + 1536) = v156;
  *(v4 + 1552) = v157;
  *(v4 + 1440) = v150;
  *(v4 + 1456) = v151;
  *(v4 + 1472) = v152;
  *(v4 + 1488) = v153;
  *(v4 + 1376) = v146;
  *(v4 + 1392) = v147;
  *(v4 + 1408) = v148;
  *(v4 + 1424) = v149;
  *(v4 + 1328) = v143;
  *(v4 + 1344) = v144;
  *(v4 + 1360) = v145;

  if (*(&v132 + 1))
  {
    sub_100008080(*(&v132 + 1));
  }

  if (SHIBYTE(v116) < 0)
  {
    operator delete(v115);
  }

  if (*(&v108 + 1))
  {
    sub_100008080(*(&v108 + 1));
  }

  if (*(&v101 + 1))
  {
    sub_100008080(*(&v101 + 1));
  }

  raven::RavenSolutionEvent::~RavenSolutionEvent(buf);
  return 0;
}

void sub_1002C2C7C(uint64_t a1, __int128 *a2)
{
  *buf = 0;
  if (sub_10000608C(a1, buf, 1))
  {
    [*(a1 + 3248) setNextFireDelay:30.0];
  }

  sub_100021AFC(&v24);
  v4 = a2[7];
  v29 = a2[6];
  v30 = v4;
  v31[0] = a2[8];
  *(v31 + 12) = *(a2 + 140);
  v5 = a2[3];
  *v26 = a2[2];
  *&v26[16] = v5;
  v6 = a2[5];
  v27 = a2[4];
  v28 = v6;
  v7 = a2[1];
  v24 = *a2;
  v25 = v7;
  memcpy(v32, a2 + 10, 0x201uLL);
  v8 = *(a2 + 85);
  v9 = *(a2 + 86);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32[65] = v8;
  v10 = v33;
  v33 = v9;
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = *(a2 + 776);
  v38 = *(a2 + 760);
  v39[0] = v11;
  *(v39 + 9) = *(a2 + 785);
  v12 = *(a2 + 712);
  v34 = *(a2 + 696);
  v35 = v12;
  v13 = *(a2 + 744);
  v36 = *(a2 + 728);
  v37 = v13;
  v14 = v32[43];
  v15 = *&v26[20];
  v16 = *&v26[20] <= 0.0;
  *(a1 + 3264) = v32[43];
  if (!v16 && *&v26[12] >= 0.0)
  {
    *(a1 + 3272) = *&v26[12];
    *(a1 + 3280) = v15;
    *(a1 + 3288) = v14;
  }

  *buf = 0;
  (*(*a1 + 152))(a1, buf, &v24, 0, 0xFFFFFFFFLL, 0);
  if (qword_1025D4650 != -1)
  {
    sub_101A773B8();
  }

  v17 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 3344);
    *buf = 67240448;
    v49 = v18 & 1;
    v50 = 1026;
    v51 = (v18 >> 1) & 1;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "CLGnssProvider,notifyClientsWithFix,GnssStatus,1Hz,%{public}d,RhythmicGnss,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A77C90(buf);
    v21 = *(a1 + 3344);
    v45[0] = 67240448;
    v45[1] = v21 & 1;
    v46 = 1026;
    v47 = (v21 >> 1) & 1;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "CLGnssProvider,notifyClientsWithFix,GnssStatus,1Hz,%{public}d,RhythmicGnss,%{public}d", v45, 14, v24, v25, *v26);
    v23 = v22;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssProvider::notifyClientsWithFix(const GNSS::DaemonLocation &)", "%s\n", v22);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  *buf = 0;
  v19 = sub_10000608C(a1, buf, 1);
  v20 = *(a1 + 3356);
  if (v20 != v19)
  {
    *buf = 0;
    sub_1001C5AB8(a1, v19 > v20, v19, buf);
  }

  *(a1 + 3688) = sub_1000081AC();
  sub_1001C577C(a1, (a1 + 3672));

  if (v43)
  {
    sub_100008080(v43);
  }

  if (v42 < 0)
  {
    operator delete(__p);
  }

  if (v40)
  {
    sub_100008080(v40);
  }

  if (v33)
  {
    sub_100008080(v33);
  }
}

void sub_1002C2FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1002C302C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8270;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1002C3080(uint64_t a1, uint64_t a2)
{
  sub_100021AFC(v15);
  v4 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v4;
  v16[0] = *(a2 + 128);
  *(v16 + 12) = *(a2 + 140);
  v5 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v5;
  v6 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v6;
  v7 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v7;
  memcpy(v17, (a2 + 160), sizeof(v17));
  v8 = *(a2 + 680);
  v9 = *(a2 + 688);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v8;
  v10 = v19;
  v19 = v9;
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = *(a2 + 776);
  v24 = *(a2 + 760);
  v25[0] = v11;
  *(v25 + 9) = *(a2 + 785);
  v12 = *(a2 + 712);
  v20 = *(a2 + 696);
  v21 = v12;
  v13 = *(a2 + 744);
  v22 = *(a2 + 728);
  v23 = v13;
  v14 = 30;
  (*(*a1 + 152))(a1, &v14, v15, 0, 0xFFFFFFFFLL, 0);

  if (v29)
  {
    sub_100008080(v29);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v26)
  {
    sub_100008080(v26);
  }

  if (v19)
  {
    sub_100008080(v19);
  }
}

void sub_1002C31DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1002C31F8(uint64_t a1, char *a2)
{
  v3 = sub_1001E4A58(a1, a2);

  sub_1002C3230(v3, a2);
}

void sub_1002C3230(uint64_t a1, char *a2)
{
  v4 = (a1 + 112);
  std::__shared_mutex_base::lock_shared((a1 + 112));
  v5 = *(a1 + 104);
  v6 = *a2;
  std::__shared_mutex_base::unlock_shared(v4);
  if (!v5 && (v6 & 1) != 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168DAB0();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      *v20 = 134545921;
      *&v20[4] = v8;
      v21 = 2053;
      v22 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#imag,al,user pos at KnownAC ingestion lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", v20, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10168DB08(a2);
    }

    *v20 = v4;
    v20[8] = 1;
    std::__shared_mutex_base::lock_shared(v4);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    if (v10 == v11)
    {
      v13 = 1.0e12;
      v12 = 1.0e12;
    }

    else
    {
      v12 = 1.0e12;
      v13 = 1.0e12;
      do
      {
        v14 = *(a2 + 1);
        v15 = *v10;
        v16 = sub_1002AADB4(*(a2 + 2), v10[1]);
        v17 = vabdd_f64(v14, v15);
        if (v17 < v12)
        {
          v12 = v17;
        }

        v18 = fabs(v16);
        if (v18 < v13)
        {
          v13 = v18;
        }

        v10 += 3;
      }

      while (v10 != v11);
    }

    std::__shared_mutex_base::unlock_shared(v4);
    if (qword_1025D4650 != -1)
    {
      sub_10168DC30();
    }

    v19 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 134283777;
      *&v20[4] = v12;
      v21 = 2049;
      v22 = v13;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#imag,al,dist to nearest lat,%{private}.2f,lon,%{private}.2f", v20, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10168DC58(v12, v13);
    }

    std::__shared_mutex_base::lock(v4);
    *(a1 + 72) = *(a2 + 8);
    *(a1 + 88) = v12;
    *(a1 + 96) = v13;
    *(a1 + 104) = 1;
    std::__shared_mutex_base::unlock(v4);
  }
}

void sub_1002C3480(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002C34B4(uint64_t result, int a2, _DWORD *a3, uint64_t a4)
{
  v11 = a2;
  if (*a3 == 30)
  {
    v5 = (a4 + 96);
    if ((*(a4 + 96) & 0xFFFFFFF7) == 1)
    {
      if ((*(result + 4784) & 1) != 0 || *(result + 4800))
      {
        sub_10000AED0();
        sub_10000B230(v10);
        sub_1002C3630(v7, v10, &v11, a4, buf);
        sub_100294A04(result, buf, 0);
        sub_10000CE1C(buf);
      }
    }

    else
    {
      if (qword_1025D4680 != -1)
      {
        sub_101A2038C();
      }

      v8 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
      {
        v9 = *v5;
        *buf = 67109120;
        v13 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "HandleVendorLocationNotification received non-GNSS location,type,%d", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A25BC8();
      }
    }
  }
}

void sub_1002C3610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

void sub_1002C3630(uint64_t a1, uint64_t *a2, int *a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 52) |= 2u;
  v8 = *(a5 + 40);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 488) |= 8u;
  v9 = *(v8 + 32);
  if (!v9)
  {
    operator new();
  }

  sub_100294964(a2, a5);
  *(v9 + 100) |= 1u;
  v10 = *(v9 + 8);
  if (!v10)
  {
    operator new();
  }

  if ((sub_10027E930(a2, v10) & 1) == 0)
  {
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v11 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Error: Failed to convert location notification receipt time to protobuf", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A246A4();
    }
  }

  v12 = *a3;
  *(v9 + 100) |= 2u;
  *(v9 + 40) = v12;
  sub_1002AAE10(a4, v9);
}

uint64_t sub_1002C3814(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (v8 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_36;
        }

        if (v7 == 4)
        {
          if (v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          *v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = *v17;
          *(a1 + 40) |= 8u;
          v16 = *(this + 1);
          if (v16 < *(this + 2) && *v16 == 45)
          {
            *(this + 1) = v16 + 1;
            goto LABEL_44;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 5)
          {
            goto LABEL_21;
          }

LABEL_44:
          v17[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v17[0];
          *(a1 + 40) |= 0x10u;
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

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      *v17 = 0;
      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v17);
        if (!result)
        {
          return result;
        }

        v11 = *v17;
        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 8) = v11;
      *(a1 + 40) |= 1u;
      if (v12 < v9 && *v12 == 21)
      {
        *(this + 1) = v12 + 1;
LABEL_32:
        v17[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v17) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v17[0];
        *(a1 + 40) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 29)
        {
          *(this + 1) = v14 + 1;
LABEL_36:
          v17[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v17) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v17[0];
          *(a1 + 40) |= 4u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 33)
          {
            *(this + 1) = v15 + 1;
            goto LABEL_40;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 5)
    {
      goto LABEL_32;
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

uint64_t sub_1002C3AA8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    v5 = *(this + 1);
    if (v5 < *(this + 2))
    {
      TagFallback = *v5;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
    *(this + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        *(a1 + 112) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v102 = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v9;
          *(this + 1) = v9 + 1;
        }

        v20 = *(this + 14);
        v21 = *(this + 15);
        *(this + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v102);
        if (!sub_10028560C(v8, this, v23) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v22);
        v24 = *(this + 14);
        v25 = __OFSUB__(v24, 1);
        v26 = v24 - 1;
        if (v26 < 0 == v25)
        {
          *(this + 14) = v26;
        }

        v27 = *(this + 1);
        if (v27 >= *(this + 2) || *v27 != 18)
        {
          continue;
        }

        *(this + 1) = v27 + 1;
        goto LABEL_50;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

LABEL_50:
        *(a1 + 112) |= 2u;
        v28 = *(a1 + 16);
        if (!v28)
        {
          operator new();
        }

        v102 = 0;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v29;
          *(this + 1) = v29 + 1;
        }

        v30 = *(this + 14);
        v31 = *(this + 15);
        *(this + 14) = v30 + 1;
        if (v30 >= v31)
        {
          return 0;
        }

        v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v102);
        if (!sub_1002C4758(v28, this, v33) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
        v34 = *(this + 14);
        v25 = __OFSUB__(v34, 1);
        v35 = v34 - 1;
        if (v35 < 0 == v25)
        {
          *(this + 14) = v35;
        }

        v36 = *(this + 1);
        v10 = *(this + 2);
        if (v36 >= v10 || *v36 != 24)
        {
          continue;
        }

        v14 = v36 + 1;
        *(this + 1) = v14;
LABEL_64:
        if (v14 >= v10 || (v37 = *v14, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v38 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v37;
          v38 = v14 + 1;
          *(this + 1) = v38;
        }

        *(a1 + 112) |= 4u;
        if (v38 >= v10 || *v38 != 32)
        {
          continue;
        }

        v15 = v38 + 1;
        *(this + 1) = v15;
LABEL_72:
        if (v15 >= v10 || (v40 = *v15, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v41 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v40;
          v41 = v15 + 1;
          *(this + 1) = v41;
        }

        *(a1 + 112) |= 8u;
        if (v41 >= v10 || *v41 != 40)
        {
          continue;
        }

        v11 = v41 + 1;
        *(this + 1) = v11;
LABEL_80:
        if (v11 >= v10 || (v42 = *v11, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v43 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v42;
          v43 = v11 + 1;
          *(this + 1) = v43;
        }

        v16 = *(a1 + 112) | 0x10;
        *(a1 + 112) = v16;
        if (v43 >= v10 || *v43 != 50)
        {
          continue;
        }

        *(this + 1) = v43 + 1;
LABEL_88:
        *(a1 + 112) = v16 | 0x20;
        v44 = *(a1 + 48);
        if (!v44)
        {
          operator new();
        }

        v102 = 0;
        v45 = *(this + 1);
        if (v45 >= *(this + 2) || *v45 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v45;
          *(this + 1) = v45 + 1;
        }

        v46 = *(this + 14);
        v47 = *(this + 15);
        *(this + 14) = v46 + 1;
        if (v46 >= v47)
        {
          return 0;
        }

        v48 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v102);
        if (!sub_1002C5650(v44, this, v49) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v48);
        v50 = *(this + 14);
        v25 = __OFSUB__(v50, 1);
        v51 = v50 - 1;
        if (v51 < 0 == v25)
        {
          *(this + 14) = v51;
        }

        v52 = *(this + 1);
        if (v52 >= *(this + 2) || *v52 != 58)
        {
          continue;
        }

        *(this + 1) = v52 + 1;
LABEL_102:
        *(a1 + 112) |= 0x40u;
        v53 = *(a1 + 56);
        if (!v53)
        {
          operator new();
        }

        v102 = 0;
        v54 = *(this + 1);
        if (v54 >= *(this + 2) || *v54 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v54;
          *(this + 1) = v54 + 1;
        }

        v55 = *(this + 14);
        v56 = *(this + 15);
        *(this + 14) = v55 + 1;
        if (v55 >= v56)
        {
          return 0;
        }

        v57 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v102);
        if (!sub_1002CC8B0(v53, this, v58) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v57);
        v59 = *(this + 14);
        v25 = __OFSUB__(v59, 1);
        v60 = v59 - 1;
        if (v60 < 0 == v25)
        {
          *(this + 14) = v60;
        }

        v61 = *(this + 1);
        if (v61 >= *(this + 2) || *v61 != 66)
        {
          continue;
        }

        *(this + 1) = v61 + 1;
LABEL_116:
        *(a1 + 112) |= 0x80u;
        v62 = *(a1 + 64);
        if (!v62)
        {
          operator new();
        }

        v102 = 0;
        v63 = *(this + 1);
        if (v63 >= *(this + 2) || *v63 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v63;
          *(this + 1) = v63 + 1;
        }

        v64 = *(this + 14);
        v65 = *(this + 15);
        *(this + 14) = v64 + 1;
        if (v64 >= v65)
        {
          return 0;
        }

        v66 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v102);
        if (!sub_1002C5AD8(v62, this, v67) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v66);
        v68 = *(this + 14);
        v25 = __OFSUB__(v68, 1);
        v69 = v68 - 1;
        if (v69 < 0 == v25)
        {
          *(this + 14) = v69;
        }

        v70 = *(this + 1);
        if (v70 >= *(this + 2) || *v70 != 74)
        {
          continue;
        }

        *(this + 1) = v70 + 1;
LABEL_130:
        *(a1 + 112) |= 0x100u;
        v71 = *(a1 + 72);
        if (!v71)
        {
          operator new();
        }

        v102 = 0;
        v72 = *(this + 1);
        if (v72 >= *(this + 2) || *v72 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v72;
          *(this + 1) = v72 + 1;
        }

        v73 = *(this + 14);
        v74 = *(this + 15);
        *(this + 14) = v73 + 1;
        if (v73 >= v74)
        {
          return 0;
        }

        v75 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v102);
        if (!sub_1002C5D9C(v71, this, v76) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v75);
        v77 = *(this + 14);
        v25 = __OFSUB__(v77, 1);
        v78 = v77 - 1;
        if (v78 < 0 == v25)
        {
          *(this + 14) = v78;
        }

        v79 = *(this + 1);
        if (v79 >= *(this + 2) || *v79 != 85)
        {
          continue;
        }

        *(this + 1) = v79 + 1;
LABEL_144:
        v102 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v102) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = v102;
        *(a1 + 112) |= 0x200u;
        v80 = *(this + 1);
        v18 = *(this + 2);
        if (v80 >= v18 || *v80 != 88)
        {
          continue;
        }

        v19 = v80 + 1;
        *(this + 1) = v19;
LABEL_148:
        v102 = 0;
        if (v19 >= v18 || (v81 = *v19, (v81 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v102);
          if (!result)
          {
            return result;
          }

          v81 = v102;
        }

        else
        {
          *(this + 1) = v19 + 1;
        }

        if (v81 <= 4)
        {
          *(a1 + 112) |= 0x400u;
          *(a1 + 84) = v81;
        }

        v82 = *(this + 1);
        if (v82 >= *(this + 2) || *v82 != 98)
        {
          continue;
        }

        *(this + 1) = v82 + 1;
LABEL_158:
        *(a1 + 112) |= 0x800u;
        v83 = *(a1 + 88);
        if (!v83)
        {
          operator new();
        }

        v102 = 0;
        v84 = *(this + 1);
        if (v84 >= *(this + 2) || *v84 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v84;
          *(this + 1) = v84 + 1;
        }

        v85 = *(this + 14);
        v86 = *(this + 15);
        *(this + 14) = v85 + 1;
        if (v85 >= v86)
        {
          return 0;
        }

        v87 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v102);
        if (!sub_1002CC8B0(v83, this, v88) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v87);
        v89 = *(this + 14);
        v25 = __OFSUB__(v89, 1);
        v90 = v89 - 1;
        if (v90 < 0 == v25)
        {
          *(this + 14) = v90;
        }

        v91 = *(this + 1);
        v12 = *(this + 2);
        if (v91 >= v12 || *v91 != 104)
        {
          continue;
        }

        v13 = v91 + 1;
        *(this + 1) = v13;
LABEL_172:
        v102 = 0;
        if (v13 >= v12 || (v92 = *v13, (v92 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v102);
          if (!result)
          {
            return result;
          }

          v92 = v102;
          v93 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          v93 = v13 + 1;
          *(this + 1) = v93;
        }

        *(a1 + 104) = v92 != 0;
        v17 = *(a1 + 112) | 0x1000;
        *(a1 + 112) = v17;
        if (v93 >= v12 || *v93 != 114)
        {
          continue;
        }

        *(this + 1) = v93 + 1;
LABEL_180:
        *(a1 + 112) = v17 | 0x2000;
        v94 = *(a1 + 96);
        if (!v94)
        {
          operator new();
        }

        v102 = 0;
        v95 = *(this + 1);
        if (v95 >= *(this + 2) || *v95 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v102))
          {
            return 0;
          }
        }

        else
        {
          v102 = *v95;
          *(this + 1) = v95 + 1;
        }

        v96 = *(this + 14);
        v97 = *(this + 15);
        *(this + 14) = v96 + 1;
        if (v96 >= v97)
        {
          return 0;
        }

        v98 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v102);
        if (!sub_100D108B0(v94, this, v99) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v98);
        v100 = *(this + 14);
        v25 = __OFSUB__(v100, 1);
        v101 = v100 - 1;
        if (v101 < 0 == v25)
        {
          *(this + 14) = v101;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v14 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_64;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v15 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_72;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_80;
      case 6u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        v16 = *(a1 + 112);
        goto LABEL_88;
      case 7u:
        if (v7 == 2)
        {
          goto LABEL_102;
        }

        goto LABEL_38;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_116;
        }

        goto LABEL_38;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        goto LABEL_130;
      case 0xAu:
        if (v7 == 5)
        {
          goto LABEL_144;
        }

        goto LABEL_38;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_148;
      case 0xCu:
        if (v7 == 2)
        {
          goto LABEL_158;
        }

        goto LABEL_38;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_172;
      case 0xEu:
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        v17 = *(a1 + 112);
        goto LABEL_180;
      default:
LABEL_38:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t sub_1002C4758(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v7 != 1)
            {
              if (v7 != 2 || v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_53;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v103 = 0;
            v9 = *(this + 1);
            if (v9 >= *(this + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v103);
              if (!result)
              {
                return result;
              }

              v10 = v103;
            }

            else
            {
              *(this + 1) = v9 + 1;
            }

            if (v10 <= 0xC)
            {
              *(a1 + 96) |= 1u;
              *(a1 + 88) = v10;
            }

            v12 = *(this + 1);
            if (v12 < *(this + 2) && *v12 == 18)
            {
              *(this + 1) = v12 + 1;
LABEL_53:
              *(a1 + 96) |= 2u;
              v13 = *(a1 + 8);
              if (!v13)
              {
                operator new();
              }

              v103 = 0;
              v14 = *(this + 1);
              if (v14 >= *(this + 2) || *v14 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v103))
                {
                  return 0;
                }
              }

              else
              {
                v103 = *v14;
                *(this + 1) = v14 + 1;
              }

              v15 = *(this + 14);
              v16 = *(this + 15);
              *(this + 14) = v15 + 1;
              if (v15 >= v16)
              {
                return 0;
              }

              v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v103);
              if (!sub_1002C53A4(v13, this, v18) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v17);
              v19 = *(this + 14);
              v20 = __OFSUB__(v19, 1);
              v21 = v19 - 1;
              if (v21 < 0 == v20)
              {
                *(this + 14) = v21;
              }

              v22 = *(this + 1);
              if (v22 < *(this + 2) && *v22 == 26)
              {
                *(this + 1) = v22 + 1;
LABEL_67:
                *(a1 + 96) |= 4u;
                v23 = *(a1 + 16);
                if (!v23)
                {
                  operator new();
                }

                v103 = 0;
                v24 = *(this + 1);
                if (v24 >= *(this + 2) || *v24 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v103))
                  {
                    return 0;
                  }
                }

                else
                {
                  v103 = *v24;
                  *(this + 1) = v24 + 1;
                }

                v25 = *(this + 14);
                v26 = *(this + 15);
                *(this + 14) = v25 + 1;
                if (v25 >= v26)
                {
                  return 0;
                }

                v27 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v103);
                if (!sub_100D0E0C8(v23, this, v28) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v27);
                v29 = *(this + 14);
                v20 = __OFSUB__(v29, 1);
                v30 = v29 - 1;
                if (v30 < 0 == v20)
                {
                  *(this + 14) = v30;
                }

                v31 = *(this + 1);
                if (v31 < *(this + 2) && *v31 == 34)
                {
                  *(this + 1) = v31 + 1;
                  goto LABEL_81;
                }
              }
            }
          }

          else
          {
            if (v7 == 3)
            {
              if (v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_67;
            }

            if (v7 != 4)
            {
              if (v7 != 5 || v8 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_95;
            }

            if (v8 != 2)
            {
              goto LABEL_43;
            }

LABEL_81:
            *(a1 + 96) |= 8u;
            v32 = *(a1 + 24);
            if (!v32)
            {
              operator new();
            }

            v103 = 0;
            v33 = *(this + 1);
            if (v33 >= *(this + 2) || *v33 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v103))
              {
                return 0;
              }
            }

            else
            {
              v103 = *v33;
              *(this + 1) = v33 + 1;
            }

            v34 = *(this + 14);
            v35 = *(this + 15);
            *(this + 14) = v34 + 1;
            if (v34 >= v35)
            {
              return 0;
            }

            v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v103);
            if (!sub_1002C582C(v32, this, v37) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
            v38 = *(this + 14);
            v20 = __OFSUB__(v38, 1);
            v39 = v38 - 1;
            if (v39 < 0 == v20)
            {
              *(this + 14) = v39;
            }

            v40 = *(this + 1);
            if (v40 < *(this + 2) && *v40 == 42)
            {
              *(this + 1) = v40 + 1;
LABEL_95:
              *(a1 + 96) |= 0x10u;
              v41 = *(a1 + 32);
              if (!v41)
              {
                operator new();
              }

              v103 = 0;
              v42 = *(this + 1);
              if (v42 >= *(this + 2) || *v42 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v103))
                {
                  return 0;
                }
              }

              else
              {
                v103 = *v42;
                *(this + 1) = v42 + 1;
              }

              v43 = *(this + 14);
              v44 = *(this + 15);
              *(this + 14) = v43 + 1;
              if (v43 >= v44)
              {
                return 0;
              }

              v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v103);
              if (!sub_1002C6E20(v41, this, v46) || *(this + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
              v47 = *(this + 14);
              v20 = __OFSUB__(v47, 1);
              v48 = v47 - 1;
              if (v48 < 0 == v20)
              {
                *(this + 14) = v48;
              }

              v49 = *(this + 1);
              if (v49 < *(this + 2) && *v49 == 50)
              {
                *(this + 1) = v49 + 1;
LABEL_109:
                *(a1 + 96) |= 0x20u;
                v50 = *(a1 + 40);
                if (!v50)
                {
                  operator new();
                }

                v103 = 0;
                v51 = *(this + 1);
                if (v51 >= *(this + 2) || *v51 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v103))
                  {
                    return 0;
                  }
                }

                else
                {
                  v103 = *v51;
                  *(this + 1) = v51 + 1;
                }

                v52 = *(this + 14);
                v53 = *(this + 15);
                *(this + 14) = v52 + 1;
                if (v52 >= v53)
                {
                  return 0;
                }

                v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v103);
                if (!sub_1002C73F8(v50, this, v55) || *(this + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v54);
                v56 = *(this + 14);
                v20 = __OFSUB__(v56, 1);
                v57 = v56 - 1;
                if (v57 < 0 == v20)
                {
                  *(this + 14) = v57;
                }

                v58 = *(this + 1);
                if (v58 < *(this + 2) && *v58 == 58)
                {
                  *(this + 1) = v58 + 1;
                  goto LABEL_123;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          break;
        }

        if (v7 == 9)
        {
          if (v8 != 2)
          {
            goto LABEL_43;
          }

LABEL_151:
          *(a1 + 96) |= 0x100u;
          v77 = *(a1 + 64);
          if (!v77)
          {
            operator new();
          }

          v103 = 0;
          v78 = *(this + 1);
          if (v78 >= *(this + 2) || *v78 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v103))
            {
              return 0;
            }
          }

          else
          {
            v103 = *v78;
            *(this + 1) = v78 + 1;
          }

          v79 = *(this + 14);
          v80 = *(this + 15);
          *(this + 14) = v79 + 1;
          if (v79 >= v80)
          {
            return 0;
          }

          v81 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v103);
          if (!sub_1002C7950(v77, this, v82) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v81);
          v83 = *(this + 14);
          v20 = __OFSUB__(v83, 1);
          v84 = v83 - 1;
          if (v84 < 0 == v20)
          {
            *(this + 14) = v84;
          }

          v85 = *(this + 1);
          if (v85 < *(this + 2) && *v85 == 82)
          {
            *(this + 1) = v85 + 1;
LABEL_165:
            *(a1 + 96) |= 0x200u;
            v86 = *(a1 + 72);
            if (!v86)
            {
              operator new();
            }

            v103 = 0;
            v87 = *(this + 1);
            if (v87 >= *(this + 2) || *v87 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v103))
              {
                return 0;
              }
            }

            else
            {
              v103 = *v87;
              *(this + 1) = v87 + 1;
            }

            v88 = *(this + 14);
            v89 = *(this + 15);
            *(this + 14) = v88 + 1;
            if (v88 >= v89)
            {
              return 0;
            }

            v90 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v103);
            if (!sub_100D0F668(v86, this, v91) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v90);
            v92 = *(this + 14);
            v20 = __OFSUB__(v92, 1);
            v93 = v92 - 1;
            if (v93 < 0 == v20)
            {
              *(this + 14) = v93;
            }

            v94 = *(this + 1);
            if (v94 < *(this + 2) && *v94 == 90)
            {
              *(this + 1) = v94 + 1;
              goto LABEL_179;
            }
          }
        }

        else
        {
          if (v7 == 10)
          {
            if (v8 == 2)
            {
              goto LABEL_165;
            }

            goto LABEL_43;
          }

          if (v7 != 11 || v8 != 2)
          {
            goto LABEL_43;
          }

LABEL_179:
          *(a1 + 96) |= 0x400u;
          v95 = *(a1 + 80);
          if (!v95)
          {
            operator new();
          }

          v103 = 0;
          v96 = *(this + 1);
          if (v96 >= *(this + 2) || *v96 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v103))
            {
              return 0;
            }
          }

          else
          {
            v103 = *v96;
            *(this + 1) = v96 + 1;
          }

          v97 = *(this + 14);
          v98 = *(this + 15);
          *(this + 14) = v97 + 1;
          if (v97 >= v98)
          {
            return 0;
          }

          v99 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v103);
          if (!sub_1002C53A4(v95, this, v100) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v99);
          v101 = *(this + 14);
          v20 = __OFSUB__(v101, 1);
          v102 = v101 - 1;
          if (v102 < 0 == v20)
          {
            *(this + 14) = v102;
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

      if (v7 == 6)
      {
        if (v8 != 2)
        {
          goto LABEL_43;
        }

        goto LABEL_109;
      }

      if (v7 != 7)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_43;
      }

LABEL_123:
      *(a1 + 96) |= 0x40u;
      v59 = *(a1 + 48);
      if (!v59)
      {
        operator new();
      }

      v103 = 0;
      v60 = *(this + 1);
      if (v60 >= *(this + 2) || *v60 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v103))
        {
          return 0;
        }
      }

      else
      {
        v103 = *v60;
        *(this + 1) = v60 + 1;
      }

      v61 = *(this + 14);
      v62 = *(this + 15);
      *(this + 14) = v61 + 1;
      if (v61 >= v62)
      {
        return 0;
      }

      v63 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v103);
      if (!sub_1002C714C(v59, this, v64) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v63);
      v65 = *(this + 14);
      v20 = __OFSUB__(v65, 1);
      v66 = v65 - 1;
      if (v66 < 0 == v20)
      {
        *(this + 14) = v66;
      }

      v67 = *(this + 1);
      if (v67 < *(this + 2) && *v67 == 66)
      {
        *(this + 1) = v67 + 1;
LABEL_137:
        *(a1 + 96) |= 0x80u;
        v68 = *(a1 + 56);
        if (!v68)
        {
          operator new();
        }

        v103 = 0;
        v69 = *(this + 1);
        if (v69 >= *(this + 2) || *v69 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v103))
          {
            return 0;
          }
        }

        else
        {
          v103 = *v69;
          *(this + 1) = v69 + 1;
        }

        v70 = *(this + 14);
        v71 = *(this + 15);
        *(this + 14) = v70 + 1;
        if (v70 >= v71)
        {
          return 0;
        }

        v72 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v103);
        if (!sub_1002C76A4(v68, this, v73) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v72);
        v74 = *(this + 14);
        v20 = __OFSUB__(v74, 1);
        v75 = v74 - 1;
        if (v75 < 0 == v20)
        {
          *(this + 14) = v75;
        }

        v76 = *(this + 1);
        if (v76 < *(this + 2) && *v76 == 74)
        {
          *(this + 1) = v76 + 1;
          goto LABEL_151;
        }
      }
    }

    if (v7 == 8 && v8 == 2)
    {
      goto LABEL_137;
    }

LABEL_43:
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

uint64_t sub_1002C53A4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v22 = 0;
      v11 = *(this + 1);
      v8 = *(this + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
        if (!result)
        {
          return result;
        }

        v12 = v22;
        v13 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      *(a1 + 8) = v12 != 0;
      *(a1 + 16) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(this + 1) = v9;
LABEL_29:
        v22 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
          v16 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 9) = v15 != 0;
        *(a1 + 16) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(this + 1) = v14;
LABEL_37:
          v22 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
            v18 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 10) = v17 != 0;
          *(a1 + 16) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(this + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(this + 1) = v20;
            }

            *(a1 + 11) = v19 != 0;
            *(a1 + 16) |= 8u;
            if (v20 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1002C5650(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v12 = *(this + 1);
        v10 = *(this + 2);
LABEL_24:
        v16[0] = 0;
        if (v12 >= v10 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v16);
          if (!result)
          {
            return result;
          }

          v13 = v16[0];
          v14 = *(this + 1);
          v10 = *(this + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(this + 1) = v14;
        }

        *(a1 + 24) = v13 != 0;
        *(a1 + 32) |= 4u;
        if (v14 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      *v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = *v16;
      *(a1 + 32) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        *v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v16;
        *(a1 + 32) |= 2u;
        v11 = *(this + 1);
        v10 = *(this + 2);
        if (v11 < v10 && *v11 == 24)
        {
          v12 = v11 + 1;
          *(this + 1) = v12;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_1002C582C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(this + 1);
            v8 = *(this + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v8 = *(this + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v22 = 0;
      v11 = *(this + 1);
      v8 = *(this + 2);
      if (v11 >= v8 || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
        if (!result)
        {
          return result;
        }

        v12 = v22;
        v13 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      *(a1 + 8) = v12 != 0;
      *(a1 + 16) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(this + 1) = v9;
LABEL_29:
        v22 = 0;
        if (v9 >= v8 || (v15 = *v9, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
          v16 = *(this + 1);
          v8 = *(this + 2);
        }

        else
        {
          v16 = v9 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 9) = v15 != 0;
        *(a1 + 16) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(this + 1) = v14;
LABEL_37:
          v22 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
            if (!result)
            {
              return result;
            }

            v17 = v22;
            v18 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 10) = v17 != 0;
          *(a1 + 16) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(this + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(this + 1);
              v8 = *(this + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(this + 1) = v20;
            }

            *(a1 + 11) = v19 != 0;
            *(a1 + 16) |= 8u;
            if (v20 == v8 && (*(this + 11) || *(this + 6) == *(this + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(this + 1);
      v8 = *(this + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1002C5AD8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(this + 1);
          v11 = *(this + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(this + 1);
        v11 = *(this + 2);
        if (v13 >= v11 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v15 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v14;
          v15 = v13 + 1;
          *(this + 1) = v15;
        }

        *(a1 + 48) |= 1u;
        if (v15 < v11 && *v15 == 16)
        {
          v12 = v15 + 1;
          *(this + 1) = v12;
LABEL_32:
          if (v12 >= v11 || (v17 = *v12, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            *(a1 + 16) = v17;
            v18 = v12 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 48) |= 2u;
          if (v18 < v11 && *v18 == 25)
          {
            *(this + 1) = v18 + 1;
LABEL_40:
            *v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 24) = *v23;
            *(a1 + 48) |= 4u;
            v19 = *(this + 1);
            if (v19 < *(this + 2) && *v19 == 33)
            {
              *(this + 1) = v19 + 1;
              goto LABEL_44;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

LABEL_44:
      *v23 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v23) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = *v23;
      *(a1 + 48) |= 8u;
      v20 = *(this + 1);
      v9 = *(this + 2);
      if (v20 < v9 && *v20 == 40)
      {
        v10 = v20 + 1;
        *(this + 1) = v10;
LABEL_48:
        v23[0] = 0;
        if (v10 >= v9 || (v21 = *v10, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v23);
          if (!result)
          {
            return result;
          }

          v21 = v23[0];
          v22 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          v22 = v10 + 1;
          *(this + 1) = v22;
        }

        *(a1 + 40) = v21 != 0;
        *(a1 + 48) |= 0x10u;
        if (v22 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
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
      goto LABEL_48;
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

uint64_t sub_1002C5D9C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 5)
        {
          goto LABEL_49;
        }

        v87 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v87) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = v87;
        *(a1 + 116) |= 1u;
        v8 = *(this + 1);
        if (v8 >= *(this + 2) || *v8 != 21)
        {
          continue;
        }

        *(this + 1) = v8 + 1;
        goto LABEL_31;
      case 2u:
        if (v7 != 5)
        {
          goto LABEL_49;
        }

LABEL_31:
        v87 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v87) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 12) = v87;
        v13 = *(a1 + 116) | 2;
        *(a1 + 116) = v13;
        v16 = *(this + 1);
        if (v16 >= *(this + 2) || *v16 != 26)
        {
          continue;
        }

        *(this + 1) = v16 + 1;
LABEL_35:
        *(a1 + 116) = v13 | 4;
        v17 = *(a1 + 16);
        if (!v17)
        {
          operator new();
        }

        v87 = 0;
        v18 = *(this + 1);
        if (v18 >= *(this + 2) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v87))
          {
            return 0;
          }
        }

        else
        {
          v87 = *v18;
          *(this + 1) = v18 + 1;
        }

        v24 = *(this + 14);
        v25 = *(this + 15);
        *(this + 14) = v24 + 1;
        if (v24 >= v25)
        {
          return 0;
        }

        v26 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v87);
        if (!sub_100D11420(v17, this, v27) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v26);
        v28 = *(this + 14);
        v29 = __OFSUB__(v28, 1);
        v30 = v28 - 1;
        if (v30 < 0 == v29)
        {
          *(this + 14) = v30;
        }

        v31 = *(this + 1);
        if (v31 >= *(this + 2) || *v31 != 34)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_62:
        *(a1 + 116) |= 8u;
        v32 = *(a1 + 24);
        if (!v32)
        {
          operator new();
        }

        v87 = 0;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v87))
          {
            return 0;
          }
        }

        else
        {
          v87 = *v33;
          *(this + 1) = v33 + 1;
        }

        v34 = *(this + 14);
        v35 = *(this + 15);
        *(this + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v87);
        if (!sub_1002C691C(v32, this, v37) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
        v38 = *(this + 14);
        v29 = __OFSUB__(v38, 1);
        v39 = v38 - 1;
        if (v39 < 0 == v29)
        {
          *(this + 14) = v39;
        }

        v40 = *(this + 1);
        if (v40 >= *(this + 2) || *v40 != 42)
        {
          continue;
        }

        *(this + 1) = v40 + 1;
LABEL_76:
        *(a1 + 116) |= 0x10u;
        v41 = *(a1 + 32);
        if (!v41)
        {
          operator new();
        }

        v87 = 0;
        v42 = *(this + 1);
        if (v42 >= *(this + 2) || *v42 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v87))
          {
            return 0;
          }
        }

        else
        {
          v87 = *v42;
          *(this + 1) = v42 + 1;
        }

        v43 = *(this + 14);
        v44 = *(this + 15);
        *(this + 14) = v43 + 1;
        if (v43 >= v44)
        {
          return 0;
        }

        v45 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v87);
        if (!sub_1002C691C(v41, this, v46) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v45);
        v47 = *(this + 14);
        v29 = __OFSUB__(v47, 1);
        v48 = v47 - 1;
        if (v48 < 0 == v29)
        {
          *(this + 14) = v48;
        }

        v49 = *(this + 1);
        if (v49 >= *(this + 2) || *v49 != 50)
        {
          continue;
        }

        *(this + 1) = v49 + 1;
LABEL_90:
        *(a1 + 116) |= 0x20u;
        v50 = *(a1 + 40);
        if (!v50)
        {
          operator new();
        }

        v87 = 0;
        v51 = *(this + 1);
        if (v51 >= *(this + 2) || *v51 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v87))
          {
            return 0;
          }
        }

        else
        {
          v87 = *v51;
          *(this + 1) = v51 + 1;
        }

        v52 = *(this + 14);
        v53 = *(this + 15);
        *(this + 14) = v52 + 1;
        if (v52 >= v53)
        {
          return 0;
        }

        v54 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v87);
        if (!sub_1002C691C(v50, this, v55) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v54);
        v56 = *(this + 14);
        v29 = __OFSUB__(v56, 1);
        v57 = v56 - 1;
        if (v57 < 0 == v29)
        {
          *(this + 14) = v57;
        }

        v58 = *(this + 1);
        v14 = *(this + 2);
        if (v58 >= v14 || *v58 != 56)
        {
          continue;
        }

        v20 = v58 + 1;
        *(this + 1) = v20;
LABEL_104:
        if (v20 >= v14 || (v59 = *v20, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v60 = *(this + 1);
          v14 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v59;
          v60 = v20 + 1;
          *(this + 1) = v60;
        }

        *(a1 + 116) |= 0x40u;
        if (v60 >= v14 || *v60 != 64)
        {
          continue;
        }

        v15 = v60 + 1;
        *(this + 1) = v15;
LABEL_112:
        if (v15 >= v14 || (v62 = *v15, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 52));
          if (!result)
          {
            return result;
          }

          v63 = *(this + 1);
          v14 = *(this + 2);
        }

        else
        {
          *(a1 + 52) = v62;
          v63 = v15 + 1;
          *(this + 1) = v63;
        }

        *(a1 + 116) |= 0x80u;
        if (v63 >= v14 || *v63 != 72)
        {
          continue;
        }

        v23 = v63 + 1;
        *(this + 1) = v23;
LABEL_120:
        v87 = 0;
        if (v23 >= v14 || (v64 = *v23, (v64 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v87);
          if (!result)
          {
            return result;
          }

          v64 = v87;
        }

        else
        {
          *(this + 1) = v23 + 1;
        }

        if (v64 <= 6)
        {
          *(a1 + 116) |= 0x100u;
          *(a1 + 56) = v64;
        }

        v65 = *(this + 1);
        v11 = *(this + 2);
        if (v65 >= v11 || *v65 != 80)
        {
          continue;
        }

        v12 = v65 + 1;
        *(this + 1) = v12;
LABEL_130:
        v87 = 0;
        if (v12 >= v11 || (v66 = *v12, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v87);
          if (!result)
          {
            return result;
          }

          v66 = v87;
        }

        else
        {
          *(this + 1) = v12 + 1;
        }

        if (v66 <= 6)
        {
          *(a1 + 116) |= 0x200u;
          *(a1 + 60) = v66;
        }

        v67 = *(this + 1);
        v21 = *(this + 2);
        if (v67 >= v21 || *v67 != 88)
        {
          continue;
        }

        v22 = v67 + 1;
        *(this + 1) = v22;
LABEL_140:
        v87 = 0;
        if (v22 >= v21 || (v68 = *v22, (v68 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v87);
          if (!result)
          {
            return result;
          }

          v68 = v87;
          v69 = *(this + 1);
          v21 = *(this + 2);
        }

        else
        {
          v69 = v22 + 1;
          *(this + 1) = v69;
        }

        *(a1 + 64) = v68;
        *(a1 + 116) |= 0x400u;
        if (v69 >= v21 || *v69 != 101)
        {
          continue;
        }

        *(this + 1) = v69 + 1;
LABEL_148:
        v87 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v87) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 68) = v87;
        *(a1 + 116) |= 0x800u;
        v70 = *(this + 1);
        if (v70 >= *(this + 2) || *v70 != 109)
        {
          continue;
        }

        *(this + 1) = v70 + 1;
LABEL_152:
        v87 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v87))
        {
          *(a1 + 72) = v87;
          v19 = *(a1 + 116) | 0x1000;
          *(a1 + 116) = v19;
          v71 = *(this + 1);
          if (v71 < *(this + 2) && *v71 == 114)
          {
            *(this + 1) = v71 + 1;
LABEL_156:
            *(a1 + 116) = v19 | 0x2000;
            if (*(a1 + 80) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v72 = *(this + 1);
            v10 = *(this + 2);
            if (v72 < v10 && *v72 == 120)
            {
              v9 = v72 + 1;
              *(this + 1) = v9;
LABEL_162:
              if (v9 >= v10 || (v73 = *v9, v73 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 76));
                if (!result)
                {
                  return result;
                }

                v74 = *(this + 1);
                v10 = *(this + 2);
              }

              else
              {
                *(a1 + 76) = v73;
                v74 = (v9 + 1);
                *(this + 1) = v74;
              }

              *(a1 + 116) |= 0x4000u;
              if (v10 - v74 >= 2 && *v74 == 130 && v74[1] == 1)
              {
                do
                {
                  *(this + 1) = v74 + 2;
LABEL_171:
                  v75 = *(a1 + 100);
                  v76 = *(a1 + 96);
                  if (v76 >= v75)
                  {
                    if (v75 == *(a1 + 104))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 88), v75 + 1);
                      v75 = *(a1 + 100);
                    }

                    *(a1 + 100) = v75 + 1;
                    operator new();
                  }

                  v77 = *(a1 + 88);
                  *(a1 + 96) = v76 + 1;
                  v78 = *(v77 + 8 * v76);
                  v87 = 0;
                  v79 = *(this + 1);
                  if (v79 >= *(this + 2) || *v79 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v87))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v87 = *v79;
                    *(this + 1) = v79 + 1;
                  }

                  v80 = *(this + 14);
                  v81 = *(this + 15);
                  *(this + 14) = v80 + 1;
                  if (v80 >= v81)
                  {
                    return 0;
                  }

                  v82 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v87);
                  if (!sub_1002C6AD4(v78, this, v83) || *(this + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v82);
                  v84 = *(this + 14);
                  v29 = __OFSUB__(v84, 1);
                  v85 = v84 - 1;
                  if (v85 < 0 == v29)
                  {
                    *(this + 14) = v85;
                  }

                  v74 = *(this + 1);
                  v86 = *(this + 2);
                }

                while (v86 - v74 > 1 && *v74 == 130 && v74[1] == 1);
                if (v74 == v86 && (*(this + 11) || *(this + 6) == *(this + 10)))
                {
                  *(this + 8) = 0;
                  result = 1;
                  *(this + 36) = 1;
                  return result;
                }
              }
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 != 2)
        {
          goto LABEL_49;
        }

        v13 = *(a1 + 116);
        goto LABEL_35;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_62;
        }

        goto LABEL_49;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_76;
        }

        goto LABEL_49;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_90;
        }

        goto LABEL_49;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v20 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_104;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_112;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v23 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_120;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v12 = *(this + 1);
        v11 = *(this + 2);
        goto LABEL_130;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v22 = *(this + 1);
        v21 = *(this + 2);
        goto LABEL_140;
      case 0xCu:
        if (v7 == 5)
        {
          goto LABEL_148;
        }

        goto LABEL_49;
      case 0xDu:
        if (v7 == 5)
        {
          goto LABEL_152;
        }

        goto LABEL_49;
      case 0xEu:
        if (v7 != 2)
        {
          goto LABEL_49;
        }

        v19 = *(a1 + 116);
        goto LABEL_156;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_49;
        }

        v9 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_162;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_49;
      default:
LABEL_49:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t sub_1002C691C(_DWORD *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 5)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        a1[4] = v12;
        a1[6] |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 5)
      {
        goto LABEL_20;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v14) & 1) == 0)
      {
        return 0;
      }

      a1[2] = v14;
      a1[6] |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 21)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        a1[3] = v13;
        a1[6] |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 29)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 5)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_1002C6AD4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 5)
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 32) |= 1u;
      v9 = *(a1 + 8);
      if (!v9)
      {
        operator new();
      }

      v30 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v30))
        {
          return 0;
        }
      }

      else
      {
        v30 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v30);
      if (!sub_1002C5650(v9, this, v14) || *(this + 36) != 1)
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
LABEL_30:
        *(a1 + 32) |= 2u;
        v19 = *(a1 + 16);
        if (!v19)
        {
          operator new();
        }

        v31 = 0;
        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v31))
          {
            return 0;
          }
        }

        else
        {
          v31 = *v20;
          *(this + 1) = v20 + 1;
        }

        v21 = *(this + 14);
        v22 = *(this + 15);
        *(this + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v31);
        if (!sub_1002CC8B0(v19, this, v24) || *(this + 36) != 1)
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
        if (v27 < *(this + 2) && *v27 == 29)
        {
          *(this + 1) = v27 + 1;
LABEL_44:
          v29 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v29) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v29;
          *(a1 + 32) |= 4u;
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

    if (v8 == 2)
    {
      goto LABEL_30;
    }

LABEL_18:
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
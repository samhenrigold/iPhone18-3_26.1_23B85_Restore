void sub_100172D30()
{
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  JUMPOUT(0x100172D4CLL);
}

void sub_100172D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52)
{
  STACK[0x200] = &a20;
  sub_10057833C(&STACK[0x200]);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  if (a42)
  {
    a43 = a42;
    operator delete(a42);
  }

  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  if (a48)
  {
    a49 = a48;
    operator delete(a48);
  }

  if (a51)
  {
    a52 = a51;
    operator delete(a51);
  }

  if (a15)
  {
    JUMPOUT(0x100172E30);
  }

  JUMPOUT(0x100172E38);
}

void sub_100172E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100172FA8(int a1@<W0>, std::string *a2@<X8>)
{
  if (a1 == 2)
  {
    sub_10000EC00(v11, "mobile");
    sub_10016C650(v11, &v18);
    v7 = std::string::append(&v18, "/Library/locationd/ColdStorage/", 0x1FuLL);
    *a2 = *v7;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (v12 < 0)
    {
      v6 = v11[0];
      goto LABEL_19;
    }
  }

  else if (a1 == 1)
  {
    sub_10000EC00(v13, "mobile");
    sub_10016C650(v13, &v17);
    v3 = std::string::append(&v17, "/Library/locationd/ColdStorage/", 0x1FuLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    v5 = std::string::append(&v18, "cold_encryptedB.db", 0x12uLL);
    *a2 = *v5;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (v14 < 0)
    {
      v6 = v13[0];
LABEL_19:
      operator delete(v6);
    }
  }

  else
  {
    sub_10000EC00(__p, "root");
    sub_10016C650(__p, &v17);
    v8 = std::string::append(&v17, "/Library/Caches/locationd/", 0x1AuLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v18, "cold_encryptedB.db", 0x12uLL);
    *a2 = *v10;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (v16 < 0)
    {
      v6 = __p[0];
      goto LABEL_19;
    }
  }
}

void sub_100173190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 25) < 0)
  {
    operator delete(*(v32 - 48));
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10017324C(void *a1, uint64_t a2)
{
  v4 = sub_100F9F31C(a1, a2);
  sub_100C608A8(v4 + 64, a2);
  sub_100C6AE0C(a1 + 128, a2);
  sub_10130B594((a1 + 172), a2);
  return a1;
}

void sub_10017329C(_Unwind_Exception *a1)
{
  sub_100C6AE10((v1 + 1024));
  sub_100C608AC((v1 + 512));
  sub_100F9F320(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001732D0(uint64_t result, unsigned int a2)
{
  if ((result - 1) > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_101C8C6E8[(result - 1)];
  }

  if (a2 - 1 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_101C8C6E8[a2 - 1];
  }

  if (v2 <= v3)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

void sub_100173378(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  ++*(v4 + 116);
  v62[0] = 0;
  v62[1] = 0;
  v60 = 0;
  v61 = v62;
  v58 = 0;
  v59 = 0;
  if (a2)
  {
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    if (sub_1002AFFF4(v6, v5, v7, v8))
    {
      *(v4 + 56) = v6;
      *(v4 + 64) = v7;
      *(v4 + 72) = v8;
      *(v4 + 80) = v5;
    }

    *(v4 + 124) = 0;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
    if (v9)
    {
      v10 = MEMORY[0];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(a2);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sub_100C38B1C();
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
      }

      while (v9);
    }

    if ((v4 + 328) != &v58)
    {
      sub_100C36FA0((v4 + 328), v58, v59, (v59 - v58) >> 4);
    }
  }

  else
  {
    *(v4 + 120) = vadd_s32(*(v4 + 120), 0x100000001);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (qword_1025D46B0 != -1)
    {
      sub_101A2ED68();
    }

    v12 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 64);
      v13 = *(a1 + 72);
      v15 = *(a1 + 56);
      v17 = *(v4 + 112);
      v16 = *(v4 + 116);
      v18 = *(v4 + 120);
      v19 = *(v4 + 124);
      v20 = *(a1 + 88);
      *buf = 134547457;
      *&buf[4] = v14;
      *&buf[12] = 2053;
      *v83 = v13;
      *&v83[8] = 2050;
      *v84 = v15;
      *&v84[8] = 1026;
      *v85 = v16;
      *&v85[4] = 1026;
      *&v85[6] = v17;
      v86 = 1026;
      *v87 = v18;
      *&v87[4] = 1026;
      *&v87[6] = v19;
      *v88 = 1026;
      *&v88[2] = v20;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Roads,queryForRoadsWithinDistance returned,xpcError,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,apiCalls,%{public}d,bufferDataCalls,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d,network,%{public}d", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A2ED90(buf);
      v36 = *(a1 + 64);
      v35 = *(a1 + 72);
      v37 = *(a1 + 56);
      v39 = *(v4 + 112);
      v38 = *(v4 + 116);
      v40 = *(v4 + 120);
      v41 = *(v4 + 124);
      v42 = *(a1 + 88);
      v63 = 134547457;
      *v64 = v36;
      *&v64[8] = 2053;
      *v65 = v35;
      *&v65[8] = 2050;
      *v66 = v37;
      *&v66[8] = 1026;
      *v67 = v38;
      *&v67[4] = 1026;
      *&v67[6] = v39;
      v68 = 1026;
      *v69 = v40;
      *&v69[4] = 1026;
      *&v69[6] = v41;
      *v70 = 1026;
      *&v70[2] = v42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 16, "CLMM,CLTSP,Roads,queryForRoadsWithinDistance returned,xpcError,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,apiCalls,%{public}d,bufferDataCalls,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d,network,%{public}d", &v63, 62);
      v44 = v43;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)_block_invoke", "%s\n", v43);
      if (v44 != buf)
      {
        free(v44);
      }
    }
  }

  *(v4 + 224) = 0;
  if (*(a1 + 56) > *(v4 + 160))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101A2ED68();
    }

    v21 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      if (a2)
      {
        v22 = [a2 count];
      }

      else
      {
        v22 = 0;
      }

      v23 = 0.0;
      if (*(a1 + 80) >= 0.0)
      {
        v23 = vabdd_f64(sub_1000081AC(), *(a1 + 80)) * 1000.0;
      }

      v25 = *(a1 + 64);
      v24 = *(a1 + 72);
      v26 = *(a1 + 56);
      v27 = *(v4 + 320);
      v29 = *(v4 + 112);
      v28 = *(v4 + 116);
      v30 = *(v4 + 120);
      v31 = *(v4 + 124);
      v32 = *(a1 + 88);
      *buf = 67243265;
      *&buf[4] = v22;
      *&buf[8] = 1026;
      *&buf[10] = 0;
      *v83 = 2050;
      *&v83[2] = v23;
      *v84 = 2053;
      *&v84[2] = v25;
      *v85 = 2053;
      *&v85[2] = v24;
      v86 = 2050;
      *v87 = v26;
      *&v87[8] = 1026;
      *v88 = a2 == 0;
      *&v88[4] = 1026;
      v89 = v28;
      v90 = 2050;
      v91 = v27;
      v92 = 1026;
      v93 = v29;
      v94 = 1026;
      v95 = v30;
      v96 = 1026;
      v97 = v31;
      v98 = 1026;
      v99 = v32;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Roads,MapHelperService,roadCount,%{public}d,sizeOfRoad,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,error,%{public}d,apiCalls,%{public}d,connectionBufferUsedCount,%{public}lu,bufferDataCalls,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d,network,%{public}d", buf, 0x64u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D46B0 != -1)
      {
        sub_101A2ED68();
      }

      v33 = qword_1025D46B8;
      if (a2)
      {
        v34 = [a2 count];
      }

      else
      {
        v34 = 0;
      }

      v45 = 0.0;
      if (*(a1 + 80) >= 0.0)
      {
        v45 = vabdd_f64(sub_1000081AC(), *(a1 + 80)) * 1000.0;
      }

      v47 = *(a1 + 64);
      v46 = *(a1 + 72);
      v48 = *(a1 + 56);
      v49 = *(v4 + 320);
      v51 = *(v4 + 112);
      v50 = *(v4 + 116);
      v52 = *(v4 + 120);
      v53 = *(v4 + 124);
      v54 = *(a1 + 88);
      v63 = 67243265;
      *v64 = v34;
      *&v64[4] = 1026;
      *&v64[6] = 0;
      *v65 = 2050;
      *&v65[2] = v45;
      *v66 = 2053;
      *&v66[2] = v47;
      *v67 = 2053;
      *&v67[2] = v46;
      v68 = 2050;
      *v69 = v48;
      *&v69[8] = 1026;
      *v70 = a2 == 0;
      *&v70[4] = 1026;
      v71 = v50;
      v72 = 2050;
      v73 = v49;
      v74 = 1026;
      v75 = v51;
      v76 = 1026;
      v77 = v52;
      v78 = 1026;
      v79 = v53;
      v80 = 1026;
      v81 = v54;
      LODWORD(v57) = 100;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v33, 2, "CLMM,CLTSP,Roads,MapHelperService,roadCount,%{public}d,sizeOfRoad,%{public}d,responseTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,radius,%{public}.2lf,error,%{public}d,apiCalls,%{public}d,connectionBufferUsedCount,%{public}lu,bufferDataCalls,%{public}d,bufferingFailedCount,%{public}d,consecutiveBufferingFailed,%{public}d,network,%{public}d", &v63, v57);
      v56 = v55;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::queryUsingXPCService(const double, const double, const double, const double, const BOOL, const BOOL)_block_invoke", "%s\n", v55);
      if (v56 != buf)
      {
        free(v56);
      }
    }
  }

  *buf = &v58;
  sub_1004CA974(buf);
  sub_1003C93BC(&v61, v62[0]);
}

void sub_100173AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char *a39)
{
  a39 = &a19;
  sub_1004CA974(&a39);
  sub_1003C93BC(&a22, a23);
  _Unwind_Resume(a1);
}

uint64_t sub_100173B50(uint64_t result, BOOL *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  v3 = *(result + 192);
  v4 = *(result + 104);
  if (v3 <= 0.0 || v4 < 0.0)
  {
    if (v4 < 0.0)
    {
      return result;
    }

    v5 = 1;
  }

  else
  {
    *a3 = 1;
    v5 = v3 < 180.0;
  }

  *a2 = v5;
  return result;
}

void sub_100173BA0()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_100173BEC(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = *a2;
  if (*a2 && (*(v3 + 217) & 0x10) != 0)
  {
    if (*(v3 + 96) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#gpsd,startCompleted,success", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101773200();
      }

      v7 = *(a1 + 2168);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100173E18;
      block[3] = &unk_102449A78;
      block[4] = a1;
      dispatch_async(v7, block);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        v10 = *(*a2 + 96);
        *buf = 67240192;
        v13 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#gpsd,startCompleted,fail,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101773108(a2);
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#gpsd,startCompleted,fail,missing data", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1017732DC();
    }
  }
}

void sub_100173E18(uint64_t result)
{
  v1 = *(result + 32);
  if (v1[1696] == 1)
  {
    (*(*v1 + 216))(*(result + 32), 0);

    sub_100173FA0(v1, 0x1Cu);
  }
}

uint64_t *sub_100173E94(uint64_t a1, void *a2, __n128 a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67240192;
    v7[1] = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#tt,timeTransferPulse,%{public}d", v7, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101777500(a2);
  }

  sub_100173FA0(a1, 0x1Bu);
  result = *(a1 + 2904);
  if (result && a2)
  {
    return sub_10168939C(result);
  }

  if (result)
  {
    if ((a2 & 1) == 0)
    {
      return sub_100174044(result);
    }
  }

  return result;
}

void sub_100173FA0(uint64_t a1, unsigned int a2)
{
  sub_1001324C4(v4);
  if (!sub_100132484(a2))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  v6 |= 4u;
  v5 = a2;
  sub_10013256C(a1, v4);
  sub_100133DCC(v4);
}

void sub_100174030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100133DCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100174044(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return sub_100174054(result);
  }

  return result;
}

uint64_t sub_100174054(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (!v1)
  {
    return 0;
  }

  result = v1(a1 + 112);
  if (!result)
  {
    return result;
  }

  if (TelephonyBasebandPCITransportDeregisterTimeEvent())
  {
    *(a1 + 104) = 0;
    if (qword_1025D4650 != -1)
    {
      sub_101991890();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 68289026;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssTTPCIe,PCITransportDeregisterTimeEvent,Success}", &v6, 0x12u);
    }

    return 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101991890();
  }

  v5 = qword_1025D4658;
  result = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v6 = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssTTPCIe,PCITransportDeregisterTimeEvent,failure}", &v6, 0x12u);
    return 0;
  }

  return result;
}

uint64_t sub_1001741CC(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 28) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_10246DAD0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1001741FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      v11 = *(this + 1);
      v8 = *(this + 2);
      if (v11 >= v8 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v13 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v12;
        v13 = v11 + 1;
        *(this + 1) = v13;
      }

      *(a1 + 36) |= 1u;
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

        *(a1 + 24) = v15 != 0;
        *(a1 + 36) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(this + 1) = v14;
LABEL_37:
          if (v14 >= v8 || (v17 = *v14, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
            if (!result)
            {
              return result;
            }

            v18 = *(this + 1);
            v8 = *(this + 2);
          }

          else
          {
            *(a1 + 16) = v17;
            v18 = v14 + 1;
            *(this + 1) = v18;
          }

          *(a1 + 36) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(this + 1) = v10;
LABEL_45:
            v21 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
              if (!result)
              {
                return result;
              }

              v19 = v21;
            }

            else
            {
              *(this + 1) = v10 + 1;
            }

            if (sub_1001744A4(v19))
            {
              if (!sub_1001744A4(v19))
              {
                sub_10191E450();
              }

              *(a1 + 36) |= 8u;
              *(a1 + 28) = v19;
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

void sub_1001744B0(uint64_t a1, uint64_t a2, __n128 a3)
{
  if ((*(a2 + 217) & 4) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#gpsd,#ee,received EE indication but data is empty", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1017725EC();
    }

    return;
  }

  v22[0] = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v5 = *(a2 + 80);
  if (!v5)
  {
    v5 = *(qword_102637FA0 + 80);
  }

  sub_10017495C(v5, v22);
  if (v22[0] != 4)
  {
    if (v22[0] == 3)
    {
      v7 = 0;
      v6 = 1;
      goto LABEL_16;
    }

    if (v22[0])
    {
      v7 = 0;
      v6 = 0;
      goto LABEL_16;
    }
  }

  v6 = 2;
  v7 = 1;
LABEL_16:
  if ((v25 & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v23;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#gpsd,#ee,vendor reported integrity failure,dataTimeGpsNs,%{public}llu", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1017723F8();
    }
  }

  if (v25)
  {
    v9 = 0;
  }

  else
  {
    v9 = 12;
  }

  v21 = 0;
  v10 = sub_1001749C4(a1 + 2424, &v21);
  v11 = v23;
  v12 = v24;
  v13 = v10 - v23;
  v20 = v13;
  *(a1 + 2456) = v13;
  if (v12 <= v11)
  {
    v14 = 0;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v14 = v12 - v11;
    v15 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v12 - v11;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#gpsd,#ee,Extended ephemeris file data durationSeconds,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017724F4();
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_100154094();
  }

  v16 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240960;
    *&buf[4] = v25;
    *&buf[8] = 2050;
    *&buf[10] = v13;
    v34 = 1026;
    v35 = v21;
    v36 = 1026;
    v37 = v6;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#gpsd,#ee,decoded EE callback,integrityPassed,%{public}d,data_age_seconds,%{public}.1f,isAgeReliable,%{public}d,fileType,%{public}d", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v26[0] = 67240960;
    v26[1] = v25;
    v27 = 2050;
    v28 = v13;
    v29 = 1026;
    v30 = v21;
    v31 = 1026;
    v32 = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#gpsd,#ee,decoded EE callback,integrityPassed,%{public}d,data_age_seconds,%{public}.1f,isAgeReliable,%{public}d,fileType,%{public}d", v26, 30, *&v20);
    v19 = v18;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::handleDecodedExtendedEphemerisIndication(const proto::gpsd::Indication &)", "%s\n", v18);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  (*(*a1 + 48))(buf, a1);
  sub_1016C3E0C(a1 + 8, (*buf + 24), v9, v6, &v20);
  sub_10164E298(buf);
  v17 = v7 ^ 1;
  if (!*(a1 + 1480))
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0 && v12 > v11)
  {
    sub_10099BB00(a1 + 1456, v14);
  }
}

void sub_100174940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_10164E298(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10017495C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 36);
  if (v2)
  {
    *(a2 + 8) = *(result + 8);
    if ((v2 & 4) == 0)
    {
LABEL_3:
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      *(a2 + 24) = *(result + 24);
      if ((v2 & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 16) = *(result + 16);
  if ((v2 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v2 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v3 = *(result + 28) - 1;
  if (v3 <= 5)
  {
    *a2 = 0x30404020100uLL >> (8 * v3);
  }

  return result;
}

double sub_1001749C4(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 16) == 1 && (v4 = sub_1001347BC(), v5 = v4 - *a1, v4 >= *a1))
  {
    *a2 = 1;
    return (v5 + *(a1 + 8)) * 0.000000001;
  }

  else
  {
    *a2 = 0;
    v10 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v7 = sub_100153734(&v10 + 1, &v10, Current);
    LODWORD(v7) = HIDWORD(v10);
    LODWORD(v8) = v10;
    return v8 / 1000.0 + *&v7 * 604800.0;
  }
}

void sub_100174A6C(uint64_t a1)
{
  if (*(a1 + 1680) == 1)
  {
    sub_10001CAF4(v33);
    v3 = *v33;
    sub_10167CF48(v4, v5, &v30);
    sub_1017652C8(a1, v6, &v29);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v29;
    }

    else
    {
      v7 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v30, v7, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_1005CC044(v3, "GpsAssistanceFileDstUrl", &__p, &v32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (*&v33[8])
    {
      sub_100008080(*&v33[8]);
    }

    memset(&v30, 0, sizeof(v30));
    operator new();
  }

  memset(&v30, 0, sizeof(v30));
  sub_10001CAF4(&v32);
  if (sub_100175094(v32.__r_.__value_.__l.__data_, "GpsAssistanceFileSrcUrl", &v30))
  {
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = v30.__r_.__value_.__l.__size_;
    }

    if (v32.__r_.__value_.__l.__size_)
    {
      sub_100008080(v32.__r_.__value_.__l.__size_);
    }

    if (v12)
    {
LABEL_30:
      memset(&v29, 0, sizeof(v29));
      sub_10001CAF4(&v32);
      if (sub_100175094(v32.__r_.__value_.__l.__data_, "GpsAssistanceFileDstUrl", &v29))
      {
        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v14 = v29.__r_.__value_.__l.__size_;
        }

        v15 = v32.__r_.__value_.__l.__size_;
        if (v32.__r_.__value_.__l.__size_)
        {
          sub_100008080(v32.__r_.__value_.__l.__size_);
        }

        if (v14)
        {
LABEL_52:
          if (qword_1025D4650 != -1)
          {
            sub_100154094();
          }

          v22 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            v23 = &v30;
            if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v23 = v30.__r_.__value_.__r.__words[0];
            }

            v24 = &v29;
            if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v24 = v29.__r_.__value_.__r.__words[0];
            }

            LODWORD(v32.__r_.__value_.__l.__data_) = 136315394;
            *(v32.__r_.__value_.__r.__words + 4) = v23;
            WORD2(v32.__r_.__value_.__r.__words[1]) = 2080;
            *(&v32.__r_.__value_.__r.__words[1] + 6) = v24;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#gpsd,#ee,AssistanceFileSourceUrl,%s,AssistanceFileDestUrl,%s", &v32, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1017700B0(&v32);
            v25 = &v30;
            if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v25 = v30.__r_.__value_.__r.__words[0];
            }

            v26 = &v29;
            if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v26 = v29.__r_.__value_.__r.__words[0];
            }

            *v33 = 136315394;
            *&v33[4] = v25;
            *&v33[12] = 2080;
            *&v33[14] = v26;
            _os_log_send_and_compose_impl(2, 0, &v32, 1628, dword_100000000, qword_1025D4658, 2, "#gpsd,#ee,AssistanceFileSourceUrl,%s,AssistanceFileDestUrl,%s", v33, 22);
            v28 = v27;
            sub_100152C7C("Generic", 1, 0, 2, "virtual std::unique_ptr<CLGnssAssistanceFile> CLGnssDaemonDevice::getAssistanceFileInfo() const", "%s\n", v27);
            if (v28 != &v32)
            {
              free(v28);
            }
          }

          operator new();
        }
      }

      else
      {
        v15 = v32.__r_.__value_.__l.__size_;
        if (v32.__r_.__value_.__l.__size_)
        {
          sub_100008080(v32.__r_.__value_.__l.__size_);
        }
      }

      sub_10167CF48(v15, v13, &v32);
      sub_101765138(a1, v16, v33);
      if ((v34 & 0x80u) == 0)
      {
        v17 = v33;
      }

      else
      {
        v17 = *v33;
      }

      if ((v34 & 0x80u) == 0)
      {
        v18 = v34;
      }

      else
      {
        v18 = *&v33[8];
      }

      v19 = std::string::append(&v32, v17, v18);
      v20 = v19->__r_.__value_.__r.__words[0];
      v35[0] = v19->__r_.__value_.__l.__size_;
      *(v35 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
      v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      v29.__r_.__value_.__r.__words[0] = v20;
      v29.__r_.__value_.__l.__size_ = v35[0];
      *(&v29.__r_.__value_.__r.__words[1] + 7) = *(v35 + 7);
      *(&v29.__r_.__value_.__s + 23) = v21;
      if (v34 < 0)
      {
        operator delete(*v33);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      goto LABEL_52;
    }
  }

  else if (v32.__r_.__value_.__l.__size_)
  {
    sub_100008080(v32.__r_.__value_.__l.__size_);
  }

  sub_101765004(a1, &v32, v11);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v30 = v32;
  goto LABEL_30;
}

void sub_100174F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100175094(uint64_t a1, const char *a2, std::string *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_100005050(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

void sub_100175108(uint64_t a1)
{
  v1 = (a1 + 8);
  sub_100175228(*(a1 + 8));
  if (*(*v1 + 84))
  {
    v2 = 3.0;
  }

  else
  {
    v2 = 30.0;
  }

  [*(*v1 + 48) setNextFireDelay:v2];
  if (qword_1025D4650 != -1)
  {
    sub_10168BBC0();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(*v1 + 84);
    v5 = 134218240;
    v6 = v2;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#tt, timer setNextFireDelay,%f,continuousMode,%d", &v5, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10168C750(v1, v2);
  }
}

void sub_100175228(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 8) "silo")];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100175774;
  block[3] = &unk_102449A78;
  block[4] = a1;
  dispatch_async(v2, block);
}

BOOL sub_1001752AC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = (*(**a1 + 16))(*a1);
  result = sub_10004FCC4(a2, *(*v4 - 8));
  if (!result)
  {
    v7 = *a1;
    *a1 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v10 = *(a2 + 8);
    v9 = (a2 + 8);
    v8 = v10;
    v11 = v10;
    if (v10 < 0)
    {
      v12 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    v15 = "N18CLGnssTimeTransfer15NotAllowedStateE";
    if (("N18CLGnssTimeTransfer15NotAllowedStateE" & 0x8000000000000000) != 0)
    {
      v16 = ("N18CLGnssTimeTransfer15NotAllowedStateE" & 0x7FFFFFFFFFFFFFFFLL);
      v17 = 5381;
      do
      {
        v15 = v17;
        v18 = *v16++;
        v17 = (33 * v17) ^ v18;
      }

      while (v18);
    }

    if (v11 == v15)
    {
      operator new();
    }

    v19 = v8;
    if (v8 < 0)
    {
      v20 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v21 = 5381;
      do
      {
        v19 = v21;
        v22 = *v20++;
        v21 = (33 * v21) ^ v22;
      }

      while (v22);
    }

    v23 = "N18CLGnssTimeTransfer9IdleStateE";
    if (("N18CLGnssTimeTransfer9IdleStateE" & 0x8000000000000000) != 0)
    {
      v24 = ("N18CLGnssTimeTransfer9IdleStateE" & 0x7FFFFFFFFFFFFFFFLL);
      v25 = 5381;
      do
      {
        v23 = v25;
        v26 = *v24++;
        v25 = (33 * v25) ^ v26;
      }

      while (v26);
    }

    if (v19 == v23)
    {
      operator new();
    }

    if (v8 < 0)
    {
      v27 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v28 = 5381;
      do
      {
        v8 = v28;
        v29 = *v27++;
        v28 = (33 * v28) ^ v29;
      }

      while (v29);
    }

    v30 = "N18CLGnssTimeTransfer11ActiveStateE";
    if (("N18CLGnssTimeTransfer11ActiveStateE" & 0x8000000000000000) != 0)
    {
      v31 = ("N18CLGnssTimeTransfer11ActiveStateE" & 0x7FFFFFFFFFFFFFFFLL);
      v32 = 5381;
      do
      {
        v30 = v32;
        v33 = *v31++;
        v32 = (33 * v32) ^ v33;
      }

      while (v33);
    }

    if (v8 == v30)
    {
      operator new();
    }

    if (qword_1025D4650 != -1)
    {
      sub_10168BBC0();
    }

    v34 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      v35 = *v9 & 0x7FFFFFFFFFFFFFFFLL;
      v36 = 136446466;
      v37 = v35;
      v38 = 2082;
      v39 = v5;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_FAULT, "#tt, unknown state %{public}s when handling event in state %{public}s", &v36, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10168C210(v9);
    }

    operator new();
  }

  return result;
}

void sub_100175774(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6[0] = off_1024F96E0;
  v6[1] = v1;
  v6[2] = v1;
  v6[3] = v6;
  v2 = *(v1 + 120);
  if (!v2)
  {
    sub_1000CF05C();
  }

  v3 = (*(*v2 + 48))(v2, v6);
  sub_1001767B8(v6);
  if ((v3 & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168BCB8();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#tt, failed to send command to start time transfer", v5, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10168C124();
    }
  }
}

uint64_t sub_1001758C0(uint64_t a1, uint64_t a2)
{
  sub_100175A0C(v6, a2);
  v3 = *(a1 + 8);
  sub_100175974(v7, v6);
  v4 = sub_100175AB4(v3, v7);
  sub_1001767B8(v7);
  sub_1001767B8(v6);
  return v4;
}

void sub_100175950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1001767B8(va1);
  sub_1001767B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100175974(uint64_t a1, uint64_t a2)
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

uint64_t sub_100175A0C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

__n128 sub_100175A8C(uint64_t a1, uint64_t a2)
{
  *a2 = off_1024F96E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100175AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == 1)
  {
    v4 = *(a2 + 24);
    if (!v4)
    {
      sub_1000CF05C();
    }

    (*(*v4 + 48))(v4, *a1);
  }

  return v2;
}

uint64_t sub_100175B18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v6[0] = off_1024F9750;
  v6[1] = v3;
  v6[3] = v6;
  v5[0] = off_1024F97D0;
  v5[1] = v2;
  v5[3] = v5;
  (*(*a2 + 200))(a2, v6, v5);
  sub_1001764CC(v5);
  return sub_100176170(v6);
}

void sub_100175BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1001764CC(va);
  sub_100176170(va1);
  _Unwind_Resume(a1);
}

void sub_100175C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100175CD8(v6, a2);
  sub_100175D94(v5, a3);
  sub_100175E2C(a1, v6, v5);
  sub_1001764CC(v5);
  sub_100176170(v6);
  sub_10017654C(a1, 1);
}

void sub_100175CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1001764CC(va);
  sub_100176170(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100175CD8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100175D70(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024F9750;
  a2[1] = v2;
  return result;
}

uint64_t sub_100175D94(uint64_t a1, uint64_t a2)
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

void *sub_100175E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100175E70((a1 + 1520), a2);

  return sub_1001761F0((a1 + 1552), a3);
}

void *sub_100175E70(void *a1, uint64_t a2)
{
  sub_100175CD8(v4, a2);
  sub_100175F08(v4, a1);
  sub_100176170(v4);
  return a1;
}

uint64_t sub_100175EE4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024F97D0;
  a2[1] = v2;
  return result;
}

void *sub_100175F08(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100176160(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100176170(uint64_t a1)
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

void *sub_1001761F0(void *a1, uint64_t a2)
{
  sub_100175D94(v4, a2);
  sub_100176264(v4, a1);
  sub_1001764CC(v4);
  return a1;
}

void *sub_100176264(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1001764BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1001764CC(uint64_t a1)
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

void sub_10017654C(uint64_t a1, char a2)
{
  if (*(a1 + 1544))
  {
    v4 = a1 + 1520;

    sub_1000B92AC(v4, a2);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    if (qword_1025D4650 != -1)
    {
      sub_10174F5D8();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning,#tt,Time transfer state callback is not set.", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10174F5EC();
    }
  }
}

BOOL sub_1001765FC(uint64_t a1, unsigned __int8 *a2)
{
  v2 = **(a1 + 8);
  v3 = (*(*v2 + 40))(v2, *a2);
  v4 = v2[1];

  return sub_1001752AC(v4, v3);
}

_UNKNOWN **sub_100176664(uint64_t a1, int a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10168BBC0();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5 = (*(*a1 + 16))(a1);
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = v5;
    v12 = 1026;
    v13 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#tt, state event, state:%{public, location:escape_only}s, enabled:%{public}hhd}", v7, 0x22u);
  }

  if (a2 && *(a1 + 16) == 1 && (*(a1 + 17) & 1) != 0)
  {
  }

  else
  {
    return *(***(a1 + 8) - 8);
  }
}

uint64_t sub_1001767B8(uint64_t a1)
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

void sub_10017683C(uint64_t a1, uint64_t a2, double *a3, __n128 a4)
{
  if (*(a1 + 136) == 1)
  {
    v6 = a2;
    v7 = *(a1 + 144);
    v8 = *a3;
    if (v7 <= 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = *a3 - v7;
    }

    v10 = *(a1 + 64);
    if (v10 <= 0.0)
    {
      v11 = 65.0;
    }

    else
    {
      v11 = v8 - v10;
    }

    v12 = *(a1 + 80);
    v13 = v8 - v12;
    if (v12 <= 0.0)
    {
      v14 = 7200.0;
    }

    else
    {
      v14 = v13;
    }

    v104 = v14;
    if (v9 <= 15.0)
    {
      v15 = *(a1 + 464);
    }

    else
    {
      v15 = 1;
    }

    v18 = sqrtf(((*(a1 + 476) * *(a1 + 476)) + (*(a1 + 472) * *(a1 + 472))) + (*(a1 + 480) * *(a1 + 480)));
    v19 = *(a1 + 484);
    v20 = *(a1 + 488);
    if (*(a1 + 492) > 0x40u || v11 < 65.0)
    {
      v22 = v11;
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754D8();
      }

      v21 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v140 = v11;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "#GPSPowerSavings,short session active,%{public}.0lf", buf, 0xCu);
      }

      v22 = 0.0;
      if (sub_10000A100(121, 2))
      {
        sub_101875C68();
      }
    }

    v23 = v19 + v18;
    if ((v15 & 1) != 0 && v23 < 5.0 && v20 < 2.0)
    {
      v25 = *(a1 + 784);
      if (v25)
      {
        if (*(v25 + 1) == 1 && (*(a1 + 466) & 1) == 0 && (*(a1 + 467) & 1) == 0 && (*(a1 + 468) & 1) == 0 && v22 < 65.0 && v104 < 7200.0)
        {
          if ((*(a1 + 48) & 1) == 0)
          {
            *(a1 + 528) = *a3;
            *(a1 + 48) = 1;
            if (qword_1025D4600 != -1)
            {
              sub_1018754B0();
            }

            v69 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_INFO, "#GPSPowerSavings,fCanSafelyTurnOffGps,transition,true", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101875D5C();
            }
          }

          ++*(a1 + 496);
          goto LABEL_123;
        }
      }
    }

    if (*(a1 + 48) != 1)
    {
LABEL_123:
      sub_1001776B0(a1, v6);
      goto LABEL_124;
    }

    *(a1 + 536) = *a3;
    *(a1 + 48) = 0;
    if (qword_1025D4600 != -1)
    {
      sub_1018754B0();
    }

    v26 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "#GPSPowerSavings,fCanSafelyTurnOffGps,transition,false", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101875AB0();
      if ((v15 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else if ((v15 & 1) == 0)
    {
LABEL_53:
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v27 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        v140 = v9;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,reason,isStationaryThresholdMet,%{public}.1lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101875E38();
      }
    }

    if (v23 >= 5.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v28 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v29 = (*(a1 + 484) + sqrtf(((*(a1 + 476) * *(a1 + 476)) + (*(a1 + 472) * *(a1 + 472))) + (*(a1 + 480) * *(a1 + 480))));
        *buf = 134349056;
        v140 = v29;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,reason,isDisplacementThresholdMet,%{public}.1lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018754B0();
        }

        v100 = (*(a1 + 484) + sqrtf(((*(a1 + 476) * *(a1 + 476)) + (*(a1 + 472) * *(a1 + 472))) + (*(a1 + 480) * *(a1 + 480))));
        v105 = 134349056;
        v106 = v100;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#GPSPowerSavings,reason,isDisplacementThresholdMet,%{public}.1lf", &v105, 12);
        v102 = v101;
        sub_100152C7C("Generic", 1, 0, 2, "void CLGpsPowerSavingsMonitor::evaluateSessionState(const BOOL, const CFTimeInterval &)", "%s\n", v101);
        if (v102 != buf)
        {
          free(v102);
        }
      }
    }

    if (v20 >= 2.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v30 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v31 = *(a1 + 488);
        *buf = 134349056;
        v140 = v31;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,reason,isVelocityThresholdMet,%{public}.1lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101875F2C((a1 + 488));
      }
    }

    v32 = *(a1 + 784);
    if (!v32 || (*v32 & 1) == 0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v33 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,reason,assocToAnyAp", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101876030();
      }

      v32 = *(a1 + 784);
      if (!v32)
      {
        goto LABEL_82;
      }
    }

    if ((v32[1] & 1) == 0)
    {
LABEL_82:
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v34 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,reason,assocToPersonalizedAp", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187610C();
      }
    }

    if (*(a1 + 466) == 1)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v35 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,reason,fWasFitness", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018761E8();
      }
    }

    if (*(a1 + 467) == 1)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v36 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,reason,fWasDriving", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018762C4();
      }
    }

    if (*(a1 + 468) == 1)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v37 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,reason,fIsConnectedVehicleFlag", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018763A0();
      }
    }

    if (v22 >= 65.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v38 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        v140 = v22;
        _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,reason,wifiAgeSec,%{public}.1lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187647C();
      }
    }

    if (v104 >= 7200.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v39 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        v140 = v104;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,reason,gpsAgeSec,%{public}.1lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101876570();
      }
    }

    goto LABEL_123;
  }

  if (*(a1 + 48) == 1)
  {
    *(a1 + 536) = *a3;
    *(a1 + 48) = 0;
    if (qword_1025D4600 != -1)
    {
      sub_1018754D8();
    }

    v16 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "#GPSPowerSavings,fCanSafelyTurnOffGps,transition,false", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101875AB0();
    }

    if (qword_1025D4600 != -1)
    {
      sub_1018754B0();
    }

    v17 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,reason,fPlausiblyStationary", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101875B8C();
    }
  }

LABEL_124:
  if (*(a1 + 500))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018754B0();
    }

    v40 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v41 = *(a1 + 144);
      if (v41 <= 0.0)
      {
        v42 = -1.0;
      }

      else
      {
        v42 = *a3 - v41;
      }

      v43 = *(a1 + 464);
      v44 = *(a1 + 520);
      if (v44 <= 0.0)
      {
        v45 = -1.0;
      }

      else
      {
        v45 = *a3 - v44;
      }

      v46 = -1.0;
      if (sub_10018E7E0(a1 + 308) && sub_10018E7E0(a1 + 152))
      {
        sub_1001097CC((a1 + 8), a1 + 308, a1 + 152);
        v46 = v47;
      }

      v48 = *(a1 + 136);
      v49 = *(a1 + 784);
      if (v49)
      {
        v50 = *v49;
        LODWORD(v49) = v49[1];
      }

      else
      {
        v50 = 0;
      }

      v51 = ((*(a1 + 476) * *(a1 + 476)) + (*(a1 + 472) * *(a1 + 472))) + (*(a1 + 480) * *(a1 + 480));
      v52 = *(a1 + 484);
      v53 = *(a1 + 80);
      v54 = *a3;
      *buf = 134353152;
      v55 = v52 + sqrtf(v51);
      v56 = v54 - v53;
      v58 = *(a1 + 64);
      v57 = *(a1 + 72);
      v59 = v54 - v57;
      v60 = -1.0;
      if (v53 <= 0.0)
      {
        v56 = -1.0;
      }

      v61 = v57 <= 0.0;
      v62 = *(a1 + 488);
      v63 = *(a1 + 466);
      v64 = *(a1 + 467);
      v65 = *(a1 + 468);
      v66 = *(a1 + 48);
      v67 = *(a1 + 51);
      v140 = v42;
      v68 = v55;
      if (v61)
      {
        v59 = -1.0;
      }

      if (v58 > 0.0)
      {
        v60 = v54 - v58;
      }

      v141 = 1026;
      v142 = v43;
      v143 = 2050;
      v144 = v45;
      v145 = 2050;
      v146 = v46;
      v147 = 1026;
      v148 = v48;
      v149 = 1026;
      v150 = v50;
      v151 = 1026;
      v152 = v49;
      v153 = 2050;
      v154 = v68;
      v155 = 2050;
      v156 = v56;
      v157 = 2050;
      v158 = v59;
      v159 = 2050;
      v160 = v60;
      v161 = 2050;
      v162 = v62;
      v163 = 1026;
      v164 = v63;
      v165 = 1026;
      v166 = v64;
      v167 = 1026;
      v168 = v65;
      v169 = 1026;
      v170 = v66;
      v171 = 1026;
      v172 = v67;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,status,stationaryTime,%{public}.0lf,startedStationary,%{public}d,bestAccuracySessionDuration,%{public}.0lf,GpsWiFidist,%{public}.1lf,fPlausiblyStationary,%{public}d,assocToAnyAP,%{public}d,assocToPersonalizedAP,%{public}d,IODisplacement,%{public}.1lf,ageOfGpsOn,%{public}.0lf,ageOfGpsFix,%{public}.0lf,ageOfWifiFix,%{public}.0lf,maxIOv,%{public}.1lf,fWasFitness,%{public}d,fWasDriving,%{public}d,fIsConVehicleFlag,%{public}d,fCanSafelyTurnOffGps,%{public}d,fIsBatteryNotCharging,%{public}d", buf, 0x88u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v70 = qword_1025D4608;
      v71 = *(a1 + 144);
      if (v71 <= 0.0)
      {
        v72 = -1.0;
      }

      else
      {
        v72 = *a3 - v71;
      }

      v73 = *(a1 + 464);
      v74 = *(a1 + 520);
      if (v74 <= 0.0)
      {
        v75 = -1.0;
      }

      else
      {
        v75 = *a3 - v74;
      }

      v76 = -1.0;
      if (sub_10018E7E0(a1 + 308) && sub_10018E7E0(a1 + 152))
      {
        sub_1001097CC((a1 + 8), a1 + 308, a1 + 152);
        v76 = v77;
      }

      v78 = *(a1 + 136);
      v79 = *(a1 + 784);
      if (v79)
      {
        v80 = *v79;
        LODWORD(v79) = v79[1];
      }

      else
      {
        v80 = 0;
      }

      v81 = ((*(a1 + 476) * *(a1 + 476)) + (*(a1 + 472) * *(a1 + 472))) + (*(a1 + 480) * *(a1 + 480));
      v82 = *(a1 + 484);
      v83 = *(a1 + 80);
      v84 = *a3;
      v105 = 134353152;
      v85 = v82 + sqrtf(v81);
      v86 = v84 - v83;
      v88 = *(a1 + 64);
      v87 = *(a1 + 72);
      v89 = v84 - v87;
      v90 = -1.0;
      if (v83 <= 0.0)
      {
        v86 = -1.0;
      }

      v61 = v87 <= 0.0;
      v91 = *(a1 + 488);
      v92 = *(a1 + 466);
      v93 = *(a1 + 467);
      v94 = *(a1 + 468);
      v95 = *(a1 + 48);
      v96 = *(a1 + 51);
      v106 = v72;
      v97 = v85;
      if (v61)
      {
        v89 = -1.0;
      }

      if (v88 > 0.0)
      {
        v90 = v84 - v88;
      }

      v107 = 1026;
      v108 = v73;
      v109 = 2050;
      v110 = v75;
      v111 = 2050;
      v112 = v76;
      v113 = 1026;
      v114 = v78;
      v115 = 1026;
      v116 = v80;
      v117 = 1026;
      v118 = v79;
      v119 = 2050;
      v120 = v97;
      v121 = 2050;
      v122 = v86;
      v123 = 2050;
      v124 = v89;
      v125 = 2050;
      v126 = v90;
      v127 = 2050;
      v128 = v91;
      v129 = 1026;
      v130 = v92;
      v131 = 1026;
      v132 = v93;
      v133 = 1026;
      v134 = v94;
      v135 = 1026;
      v136 = v95;
      v137 = 1026;
      v138 = v96;
      LODWORD(v103) = 136;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v70, 2, "#GPSPowerSavings,status,stationaryTime,%{public}.0lf,startedStationary,%{public}d,bestAccuracySessionDuration,%{public}.0lf,GpsWiFidist,%{public}.1lf,fPlausiblyStationary,%{public}d,assocToAnyAP,%{public}d,assocToPersonalizedAP,%{public}d,IODisplacement,%{public}.1lf,ageOfGpsOn,%{public}.0lf,ageOfGpsFix,%{public}.0lf,ageOfWifiFix,%{public}.0lf,maxIOv,%{public}.1lf,fWasFitness,%{public}d,fWasDriving,%{public}d,fIsConVehicleFlag,%{public}d,fCanSafelyTurnOffGps,%{public}d,fIsBatteryNotCharging,%{public}d", &v105, v103);
      v99 = v98;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGpsPowerSavingsMonitor::evaluateSessionState(const BOOL, const CFTimeInterval &)", "%s\n", v98);
      if (v99 != buf)
      {
        free(v99);
      }
    }
  }
}

void sub_1001776B0(uint64_t a1, char a2)
{
  if (*(a1 + 136) == 1)
  {
    ++*(a1 + 500);
    v3 = *(a1 + 784);
    if (v3 && *(v3 + 1) == 1)
    {
      ++*(a1 + 508);
      if ((*(a1 + 465) & 1) == 0)
      {
        ++*(a1 + 580);
      }

      if (*(a1 + 520) > 0.0 && (a2 & 1) == 0)
      {
        ++*(a1 + 504);
      }

      v4 = *(a1 + 484) + sqrtf(((*(a1 + 476) * *(a1 + 476)) + (*(a1 + 472) * *(a1 + 472))) + (*(a1 + 480) * *(a1 + 480)));
      if (v4 >= 1.0)
      {
        if (v4 >= 2.0)
        {
          if (v4 >= 5.0)
          {
            if (v4 >= 10.0)
            {
              if (v4 >= 20.0)
              {
                if (v4 >= 50.0)
                {
                  ++*(a1 + 616);
                }

                else
                {
                  ++*(a1 + 612);
                }
              }

              else
              {
                ++*(a1 + 608);
              }
            }

            else
            {
              ++*(a1 + 604);
            }
          }

          else
          {
            ++*(a1 + 600);
          }
        }

        else
        {
          ++*(a1 + 596);
        }
      }

      else
      {
        ++*(a1 + 592);
      }

      v6 = *(a1 + 488);
      if (v6 >= 1.0)
      {
        if (v6 >= 2.0)
        {
          if (v6 >= 3.0)
          {
            if (v6 >= 4.0)
            {
              if (v6 >= 5.0)
              {
                ++*(a1 + 640);
              }

              else
              {
                ++*(a1 + 636);
              }
            }

            else
            {
              ++*(a1 + 632);
            }
          }

          else
          {
            ++*(a1 + 628);
          }
        }

        else
        {
          ++*(a1 + 624);
        }
      }

      else
      {
        ++*(a1 + 620);
      }

      if (sub_10018E7E0(a1 + 308) && *(a1 + 328) < 100.0 && sub_10018E7E0(a1 + 152) && *(a1 + 172) < 100.0)
      {
        sub_1001097CC((a1 + 8), a1 + 308, a1 + 152);
        if (v7 >= 5.0)
        {
          if (v7 >= 10.0)
          {
            if (v7 >= 20.0)
            {
              if (v7 >= 50.0)
              {
                if (v7 >= 100.0)
                {
                  if (v7 >= 200.0)
                  {
                    if (v7 >= 500.0)
                    {
                      if (v7 >= 1000.0)
                      {
                        ++*(a1 + 676);
                      }

                      else
                      {
                        ++*(a1 + 672);
                      }
                    }

                    else
                    {
                      ++*(a1 + 668);
                    }
                  }

                  else
                  {
                    ++*(a1 + 664);
                  }
                }

                else
                {
                  ++*(a1 + 660);
                }
              }

              else
              {
                ++*(a1 + 656);
              }
            }

            else
            {
              ++*(a1 + 652);
            }
          }

          else
          {
            ++*(a1 + 648);
          }
        }

        else
        {
          ++*(a1 + 644);
        }
      }
    }

    else
    {
      ++*(a1 + 512);
    }

    if (*(a1 + 508))
    {
      if (*(a1 + 51) == 1)
      {
        v5 = *(a1 + 784);
        if (v5)
        {
          if (*v5 == 1)
          {
            ++*(a1 + 556);
          }

          if (v5[1] == 1)
          {
            ++*(a1 + 560);
          }
        }
      }
    }
  }
}

void sub_100177A60()
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v0 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "#gnssband,sendGnssBandChangeNotification", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101946CA4();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, CLGnssBandsChangedNotification, 0, 0, 0);
}

uint64_t sub_100177B18(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 0;
  v2 = dword_1026592D0;
  switch(dword_1026592D0)
  {
    case 0:
    case 281:
      if (qword_1025D4870 != -1)
      {
        sub_10191BF9C();
      }

      v6 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v7 = 67109120;
        v8 = v2;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Unsupported HW type %d; file a radar to CoreMotion Factory | 1.0", &v7, 8u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_10191CE7C(v2);
        goto LABEL_16;
      }

      break;
    case 2:
    case 3:
    case 5:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 22:
    case 23:
    case 37:
    case 38:
    case 40:
    case 41:
    case 43:
    case 52:
    case 81:
    case 83:
    case 85:
    case 87:
      if (qword_1025D4870 != -1)
      {
        sub_10191BF9C();
      }

      v5 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
      {
        v7 = 67109120;
        v8 = v2;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Old hardware,%d is not supported", &v7, 8u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_10191CF74(v2);
LABEL_16:
        result = 0;
      }

      break;
    case 6:
    case 60:
    case 61:
    case 204:
      result = 4;
      break;
    case 24:
    case 25:
    case 27:
    case 28:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 78:
    case 79:
    case 80:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 168:
    case 170:
    case 171:
    case 172:
    case 173:
    case 176:
    case 177:
    case 233:
      result = 31;
      break;
    case 26:
      result = 15;
      break;
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 62:
    case 63:
    case 64:
    case 65:
    case 76:
    case 77:
    case 134:
    case 135:
    case 136:
    case 137:
    case 144:
    case 145:
    case 146:
    case 147:
    case 154:
    case 155:
    case 156:
    case 157:
    case 161:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 254:
    case 255:
    case 256:
    case 257:
    case 258:
      result = 23;
      break;
    case 39:
    case 42:
    case 148:
    case 149:
    case 198:
    case 199:
    case 200:
    case 201:
    case 259:
    case 260:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
      result = 6;
      break;
    case 50:
    case 51:
    case 66:
    case 67:
    case 74:
    case 75:
    case 82:
    case 84:
    case 86:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 150:
    case 151:
    case 152:
    case 153:
      if (qword_102659280 != -1)
      {
        sub_10191CE68();
      }

      v3 = byte_102659288 == 0;
      v4 = 22;
      goto LABEL_20;
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 280:
      if (qword_102659280 != -1)
      {
        sub_10191CE68();
      }

      v3 = byte_102659288 == 0;
      v4 = 54;
LABEL_20:
      if (v3)
      {
        result = v4;
      }

      else
      {
        result = v4 + 1;
      }

      break;
    case 169:
    case 174:
    case 175:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
      result = 63;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1001781AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v7);
  if (Current != sub_10018D3EC())
  {
    sub_1019985D8(a1);
  }

  sub_100178584(*(a1 + 40));
  if (a3)
  {
    [*(a1 + 168) setObject:-[CLPropertyValue initWithValue:dirty:]([CLPropertyValue alloc] forKeyedSubscript:{"initWithValue:dirty:", a3, 1), a2}];
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_101995F5C();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      v9 = 138543362;
      v10 = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "[CLIoHidInterface] Could not set property value for %{public}@", &v9, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10199874C();
    }
  }

  sub_1001787EC(*(a1 + 40));
}

uint64_t sub_100178340(uint64_t a1, __IOHIDServiceClient *a2, const __CFString *a3, const void *a4)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v8);
  if (Current != sub_10018D3EC())
  {
    sub_101997228();
  }

  if (!a2)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101995F5C();
    }

    v10 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "[CLIoHidInterface] Property can not be set for null hidServiceRef", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_101997470();
    return 0;
  }

  if (IOHIDServiceClientSetProperty(a2, a3, a4))
  {
    return 1;
  }

  if (qword_1025D4200 != -1)
  {
    sub_101995F5C();
  }

  v11 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] IOHIDServiceClientSetProperty() returned false", v12, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10199738C();
    return 0;
  }

  return result;
}

uint64_t sub_100178498(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8 = sub_100011660(a1, a2);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10017A754;
  v11[3] = &unk_1024814E8;
  v11[4] = &v13;
  v11[5] = a1;
  v12 = v6;
  v11[6] = a3;
  *&v11[7] = a4;
  sub_10017A794(v8, v11);
  v9 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v9;
}

void sub_10017856C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100178584(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v3);
  if (Current != sub_10018D3EC())
  {
    sub_1019962D8();
  }

  if (!*(a1 + 40))
  {
    v10 = @"HighFrequency";
    v4 = &__kCFBooleanFalse;
    if (*(a1 + 48))
    {
      v4 = &__kCFBooleanTrue;
    }

    v11 = v4;
    [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v5 = IOHIDEventSystemClientCreateWithType();
    *(a1 + 40) = v5;
    if (v5)
    {
      sub_100011660(v5, v6);
      sub_10018D3EC();
      IOHIDEventSystemClientScheduleWithRunLoop();
      IOHIDEventSystemClientRegisterEventCallback();
      IOHIDEventSystemClientRegisterResetCallback();
      IOHIDEventSystemClientRegisterDeviceMatchingCallback();
      sub_1009B3EB0(a1);
      IOHIDEventSystemClientSetProperty(*(a1 + 40), @"PreserveTimestamp", kCFBooleanTrue);
      if (qword_1025D4200 != -1)
      {
        sub_10199643C();
      }

      v7 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Event system client initialized successfully", v9, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101996464();
      }
    }

    else
    {
      if (qword_1025D4200 != -1)
      {
        sub_10199643C();
      }

      v8 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        *v9 = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "[CLIoHidInterface] Could not create event system client. All bets are off", v9, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101996548();
      }
    }
  }
}

void sub_1001787EC(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v3);
  if (Current == sub_10018D3EC())
  {
    if (qword_1025D4200 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_101997554(qword_1025D4200 == -1);
    __break(1u);
  }

  sub_101995F5C();
LABEL_3:
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Apply all dirty device properties", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019976C0();
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 == v7)
  {
    goto LABEL_54;
  }

  LOBYTE(v61) = 1;
  v55 = *(a1 + 16);
  do
  {
    v8 = v6[1];
    if (v8)
    {
      v9 = *v6;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v58 = v8;
      v57 = std::__shared_weak_count::lock(v8);
      if (v57)
      {
        v56 = v6;
        if (v9)
        {
          v10 = *(v9 + 168);
          v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10);
          if (v11)
          {
            v12 = MEMORY[0];
            v59 = v10;
            v60 = MEMORY[0];
            do
            {
              v62 = v11;
              for (i = 0; i != v62; i = i + 1)
              {
                if (MEMORY[0] != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v14 = *(8 * i);
                v15 = [*(v9 + 168) objectForKeyedSubscript:v14];
                if ([v15 dirty])
                {
                  if (!*(v9 + 24))
                  {
                    sub_1009B43BC(a1, 0);
                  }

                  if (*(a1 + 52) >= 10 && (*(v9 + 48) & 1) != 0)
                  {
                    LOBYTE(v61) = 1;
                  }

                  else
                  {
                    v16 = *(v9 + 24);
                    if (v16)
                    {
                      v17 = [v15 value];
                      [v15 setDirty:{sub_100178340(v17, v16, v14, v17) ^ 1}];
                      if (v61)
                      {
                        v61 = [v15 dirty] ^ 1;
                      }

                      else
                      {
                        LOBYTE(v61) = 0;
                      }

                      if (qword_1025D4200 != -1)
                      {
                        sub_10199643C();
                      }

                      v21 = p_info[65];
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                      {
                        v22 = p_info;
                        v23 = a1;
                        v24 = v9;
                        v27 = v9 + 16;
                        v26 = *(v9 + 16);
                        v25 = *(v27 + 4);
                        v28 = [v15 value];
                        v29 = [v15 dirty];
                        *buf = 67241218;
                        v30 = "successfully";
                        if (v29)
                        {
                          v30 = "unsuccessfully";
                        }

                        *v74 = v25;
                        *&v74[4] = 1026;
                        *&v74[6] = v26;
                        v75 = 2114;
                        v76 = v14;
                        v77 = 2114;
                        v78 = v28;
                        v79 = 2082;
                        v80 = v30;
                        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Property for usage pair {%{public}d, %{public}d}: {%{public}@ = %{public}@} was set %{public}s", buf, 0x2Cu);
                        a1 = v23;
                        p_info = v22;
                        v9 = v24;
                        v10 = v59;
                      }

                      v12 = v60;
                      if (sub_10000A100(121, 2))
                      {
                        sub_101996798(buf);
                        v54 = a1;
                        v31 = p_info[65];
                        v32 = v9;
                        v35 = v9 + 16;
                        v34 = *(v9 + 16);
                        v33 = *(v35 + 4);
                        v36 = [v15 value];
                        v37 = [v15 dirty];
                        v63 = 67241218;
                        v38 = "successfully";
                        if (v37)
                        {
                          v38 = "unsuccessfully";
                        }

                        v64 = v33;
                        v65 = 1026;
                        v66 = v34;
                        v67 = 2114;
                        v68 = v14;
                        v69 = 2114;
                        v70 = v36;
                        v71 = 2082;
                        v72 = v38;
                        LODWORD(v53) = 44;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v31, 0, "[CLIoHidInterface] Property for usage pair {%{public}d, %{public}d}: {%{public}@ = %{public}@} was set %{public}s", &v63, v53);
                        v40 = v39;
                        sub_100152C7C("Generic", 1, 0, 2, "void CLIoHidInterface::applyAllDirtyDeviceProperties()", "%s\n", v39);
                        a1 = v54;
                        v9 = v32;
                        v12 = v60;
                        if (v40 != buf)
                        {
                          free(v40);
                        }

                        v10 = v59;
                      }
                    }

                    else
                    {
                      if (qword_1025D4200 != -1)
                      {
                        sub_10199643C();
                      }

                      v18 = p_info[65];
                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                      {
                        v20 = *(v9 + 16);
                        v19 = *(v9 + 20);
                        *buf = 67240448;
                        *v74 = v19;
                        *&v74[4] = 1026;
                        *&v74[6] = v20;
                        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Service for device with usage pair {%{public}d, %{public}d} is not ready", buf, 0xEu);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101996798(buf);
                        v41 = p_info[65];
                        v43 = *(v9 + 16);
                        v42 = *(v9 + 20);
                        v63 = 67240448;
                        v64 = v42;
                        v65 = 1026;
                        v66 = v43;
                        LODWORD(v53) = 14;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v41, 0, "[CLIoHidInterface] Service for device with usage pair {%{public}d, %{public}d} is not ready", &v63, v53);
                        v45 = v44;
                        sub_100152C7C("Generic", 1, 0, 2, "void CLIoHidInterface::applyAllDirtyDeviceProperties()", "%s\n", v44);
                        if (v45 != buf)
                        {
                          free(v45);
                        }
                      }

                      LOBYTE(v61) = 0;
                    }
                  }
                }
              }

              v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10);
            }

            while (v11);
          }
        }

        sub_100008080(v57);
        v7 = v55;
        v6 = v56;
      }

      std::__shared_weak_count::__release_weak(v58);
    }

    v6 += 2;
  }

  while (v6 != v7);
  if (v61)
  {
LABEL_54:
    *(a1 + 52) = 0;
LABEL_55:
    v46 = 1.79769313e308;
    goto LABEL_56;
  }

  v47 = *(a1 + 52);
  *(a1 + 52) = v47 + 1;
  if (v47 > 4)
  {
    if (v47 > 9)
    {
      if (qword_1025D4200 != -1)
      {
        sub_10199643C();
      }

      v52 = p_info[65];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_FAULT, "[CLIoHidInterface] Could not set all properties after too many retries. Giving up.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019977AC();
      }

      goto LABEL_55;
    }

    v50 = CFAbsoluteTimeGetCurrent();
    if (qword_1025D4200 != -1)
    {
      sub_10199643C();
    }

    v51 = p_info[65];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *v74 = 0x4004000000000000;
      _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_INFO, "[CLIoHidInterface] Could not set all properties. Setting timer to fire %{public}f seconds from now", buf, 0xCu);
    }

    v46 = v50 + 2.5;
    if (sub_10000A100(121, 2))
    {
      sub_101997898();
    }
  }

  else
  {
    v48 = CFAbsoluteTimeGetCurrent();
    if (qword_1025D4200 != -1)
    {
      sub_10199643C();
    }

    v49 = p_info[65];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *v74 = 0x3FD0000000000000;
      _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "[CLIoHidInterface] Could not set all properties. Setting timer to fire %{public}f seconds from now", buf, 0xCu);
    }

    v46 = v48 + 0.25;
    if (sub_10000A100(121, 2))
    {
      sub_10199799C();
    }
  }

LABEL_56:
  CFRunLoopTimerSetNextFireDate(*(a1 + 56), v46);
}

void sub_100178F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, std::__shared_weak_count *a16)
{
  sub_100008080(a15);
  std::__shared_weak_count::__release_weak(a16);
  _Unwind_Resume(a1);
}

void *sub_100178FC8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_1001790A4(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = v2 + 80 * a2;
  v6 = *(v3 + 32);
  v4 = v3 + 32;
  v5 = v6;
  v7 = *(v4 - 16);
  if (v7 <= 0.0)
  {
    if (v5 != (v4 + 8))
    {
      do
      {
        *(v5 + 11) = 1;
        v19 = v5[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v5[2];
            v15 = *v20 == v5;
            v5 = v20;
          }

          while (!v15);
        }

        v5 = v20;
      }

      while (v20 != (v4 + 8));
    }
  }

  else if (v5 != (v2 + 80 * a2 + 40))
  {
    do
    {
      if (v7 <= 0.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_1019894E8();
        }

        v10 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
        {
          v11 = *(*(a1 + 16) + 80 * a2 + 16);
          *buf = 134217984;
          v24 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "CLMotionNotifier::updateSamplePeriod UpdateInterval:%f", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4200 != -1)
          {
            sub_1019894E8();
          }

          v16 = *(*(a1 + 16) + 80 * a2 + 16);
          v21 = 134217984;
          v22 = v16;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 17, "CLMotionNotifier::updateSamplePeriod UpdateInterval:%f", COERCE_DOUBLE(&v21));
          v18 = v17;
          sub_100152C7C("Generic", 1, 0, 0, "void CLMotionNotifier::updateSamplePeriods(int)", "%s\n", v17);
          if (v18 != buf)
          {
            free(v18);
          }
        }
      }

      v12 = *(a1 + 16);
      v7 = *(v12 + 80 * a2 + 16);
      *(v5 + 11) = llround(*(v5 + 6) / v7);
      v13 = v5[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v5[2];
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
    }

    while (v14 != (v12 + 80 * a2 + 40));
  }
}

uint64_t sub_100179350(uint64_t a1, double a2)
{
  v3 = rint(a2 * 1000000.0);
  if (v3 >= 1000000)
  {
    v3 = 1000000;
  }

  if (v3 <= 10000)
  {
    v4 = 10000;
  }

  else
  {
    v4 = v3;
  }

  v5 = [[NSNumber alloc] initWithLong:v4];
  (*(*a1 + 16))(a1, @"BatchInterval", v5);

  return v4;
}

void *sub_100179400(uint64_t a1)
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
      v9 = "21CLHeadingSubscription" & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Creating subscription due to demand, type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    operator new();
  }

  if (!result)
  {
    sub_1019F0E54();
  }

  return result;
}

uint64_t sub_100179604(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = sub_10005C6F0(a1, a2, a3, a4, a5);
  *v6 = off_1024C3450;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0xBFF0000000000000;
  *(v6 + 104) = xmmword_101C7C270;
  *(v6 + 120) = unk_101C7C280;
  *(v6 + 136) = xmmword_101C7C290;
  *(v6 + 72) = xmmword_101C7C250;
  *(v6 + 88) = unk_101C7C260;
  *(v6 + 152) = 0xFFFFFFFF00000000;
  *(v6 + 160) = 0x3F947AE147AE147BLL;
  *(v6 + 168) = 0;
  v8 = sub_10017973C(v6, v7);
  if ((v8 & 1) == 0)
  {
    *(a1 + 160) = 0x3F9999999999999ALL;
  }

  *(a1 + 56) = sub_100177B18(v8) & 1;
  return a1;
}

void sub_1001796C0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 168);
  *(v1 + 168) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_100114E74(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_10017973C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100023B30(a1, a2);
  if ((v2 & 0x20) != 0)
  {
    return 1;
  }

  else
  {
    return (sub_100023B30(v2, v3) >> 4) & 1;
  }
}

void *sub_100179768(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = off_1025019A0;
  v9 = a5;
  *a1 = off_102476D68;
  a1[1] = v9;
  a1[2] = a3;
  a1[3] = a4;
  v10 = a2;
  a1[5] = 0;
  a1[4] = v10;
  a1[6] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_10084E154;
  aBlock[3] = &unk_10245AE50;
  aBlock[4] = v14;
  a1[5] = _Block_copy(aBlock);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001FAD2C;
  v12[3] = &unk_10245AE78;
  v12[4] = v14;
  a1[6] = _Block_copy(v12);
  _Block_object_dispose(v14, 8);
  return a1;
}

uint64_t sub_1001798F0(uint64_t a1)
{
  *a1 = off_1024B57C8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0xBFF0000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xBFF0000000000000;
  *(a1 + 88) = 0x600000000;
  *(a1 + 96) = -3.53369517e72;
  *(a1 + 104) = 0;
  *(a1 + 108) = -1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 228) = 0u;
  *(a1 + 184) = 0x8000000080000000;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 6;
  *(a1 + 276) = 0;
  *(a1 + 244) = 0u;
  *(a1 + 257) = 0u;
  sub_10017BD98(a1 + 400);
  return a1;
}

void sub_1001799C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001799DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = sub_100179400(a2);
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

void sub_100179BEC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *a3 = 0uLL;
  sub_10017B020(a1 + 8, a2, &v3);
  if (*(&v3 + 1))
  {
    sub_100008080(*(&v3 + 1));
  }
}

void sub_100179C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_100179C54(uint64_t a1, uint64_t a2, double *a3)
{
  result = 0.0;
  if (!a2)
  {
    v17 = v3;
    v18 = v4;
    v7 = *a3;
    if (*a3 <= 0.0)
    {
      *(a1 + 28) = 0;
      (*(*a1 + 56))(a1, v7);
      [*(*(a1 + 40) + 16) unregister:*(*(a1 + 40) + 8) forNotification:0];
      *(a1 + 48) = 0;
    }

    else
    {
      sub_100179E9C(a1, a2);
      if (sub_100008074() && !*(a1 + 88))
      {
        context.version = 0;
        context.info = a1;
        memset(&context.retain, 0, 24);
        v8 = CFRunLoopTimerCreate(kCFAllocatorDefault, 1.79769313e308, 1.79769313e308, 0, 0, sub_1009E89E8, &context);
        *(a1 + 56) = v8;
        if (v8)
        {
          sub_100011660(v8, v9);
          v10 = sub_10018D3EC();
          CFRunLoopAddTimer(v10, *(a1 + 56), kCFRunLoopCommonModes);
        }

        else
        {
          if (qword_1025D42E0 != -1)
          {
            sub_1019AA328();
          }

          v13 = qword_1025D42E8;
          if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
          {
            *v15 = 0;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "Could not create timer", v15, 2u);
          }

          v11 = sub_10000A100(121, 0);
          if (v11)
          {
            sub_1019AA5B4();
          }
        }

        v14 = sub_100179E9C(v11, v12);
        *(a1 + 72) = (*(*v14 + 56))(v14);
      }

      *(a1 + 48) = 1;
      if ((*(a1 + 64) & 1) == 0)
      {
        sub_100179ED4(a1);
      }
    }

    return *(a1 + 32);
  }

  return result;
}

double sub_100179E14(uint64_t a1, uint64_t a2, double *a3)
{
  v4 = a2;
  sub_100179C54(a1, a2, a3);
  if (!v4)
  {
    if (*a3 <= 0.0)
    {
      if (*(a1 + 184) == 1)
      {
        sub_1009BC1B0(a1);
      }

      if (*(a1 + 192))
      {
        v7 = &unk_101CD19C8;
      }

      else
      {
        v7 = a3;
      }

      v6 = a1;
    }

    else
    {
      v6 = a1;
      v7 = a3;
    }

    sub_10017A050(v6, v7);
  }

  result = *a3;
  *(a1 + 264) = *a3;
  return result;
}

uint64_t sub_100179E9C(uint64_t a1, uint64_t a2)
{
  if (qword_10265E460 != -1)
  {
    sub_101A6DD40();
  }

  return qword_102637D38;
}

uint64_t sub_100179ED4(uint64_t a1)
{
  v2 = (a1 + 83);
  if (*(a1 + 83) == 1)
  {
    v3 = *(a1 + 84);
  }

  else
  {
    v3 = *(a1 + 72) > 0.0 && CFAbsoluteTimeGetCurrent() - *(a1 + 72) < 432000.0;
  }

  if (qword_1025D42E0 != -1)
  {
    sub_1019AA394();
  }

  v4 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *v2;
    v7[0] = 67109376;
    v7[1] = v3 & 1;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Cover attached,%d,forced,%d", v7, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019AA6B4((v3 & 1), v2);
  }

  [*(*(a1 + 40) + 16) register:*(*(a1 + 40) + 8) forNotification:0 registrationInfo:0];
  return (*(*a1 + 48))(a1, v3 & 1);
}

uint64_t sub_10017A050(uint64_t a1, double *a2)
{
  if (qword_1025D42E0 != -1)
  {
    sub_10199C694();
  }

  v4 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 134349056;
    *&buf[4] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Setting compass update interval to %{public}f", buf, 0xCu);
  }

  v6 = sub_10000A100(121, 2);
  if (v6)
  {
    sub_10199CA90(a2);
  }

  if (*(a1 + 136))
  {
    v8 = sub_100023B30(v6, v7);
    v9 = (a1 + 168);
    if ((v8 & 0x20) != 0)
    {
      v10 = (a1 + 168);
    }

    else
    {
      v10 = (a1 + 152);
    }

    if ((v8 & 0x20) != 0)
    {
      v9 = (a1 + 152);
    }
  }

  else
  {
    v9 = (a1 + 168);
    v10 = (a1 + 152);
  }

  if (*v9)
  {
    sub_10017A1F4(*v9, 0.0);
  }

  if (!*v10)
  {
    v11 = sub_1009B38EC(0, v7);
    sub_101860780(v11);
  }

  return sub_10017A1F4(*v10, *a2);
}

uint64_t sub_10017A1F4(uint64_t a1, double a2)
{
  v2 = rint(a2 * 1000000.0);
  if (a2 < 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return sub_10017A214(a1, v3);
}

uint64_t sub_10017A214(uint64_t a1, uint64_t a2)
{
  v4 = [[NSNumber alloc] initWithLong:a2];
  (*(*a1 + 16))(a1, @"ReportInterval", v4);

  return a2;
}

uint64_t sub_10017A294(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  return pthread_dependency_fulfill_np();
}

BOOL sub_10017A2DC(void *a1, uint64_t a2, uint64_t a3, double *a4)
{
  v8 = (*(*a3 + 24))(a3);
  v9 = *a4;
  v10 = *a4 * v8;
  v29 = v10;
  if (v9 == 0.0)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1019893E4();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Requested update interval cannot be == 0.0 and dispatcher cannot be NULL. Use interval < 0.0 for spectator.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019893F8();
    }
  }

  else
  {
    if (v9 < 0.0)
    {
      operator new();
    }

    v12 = a1[2];
    if (v10 > 0.0 && ((v13 = v12 + 80 * a2, v15 = *(v13 + 8), v14 = (v13 + 8), v16 = v15, v10 < v15) || v16 <= 0.0))
    {
      *v14 = v10;
      v18 = (*(*a1 + 24))(a1, a2, &v29);
      v12 = a1[2];
      *(v12 + 80 * a2 + 24) = v18;
      v17 = *a4;
      v10 = v29;
    }

    else
    {
      v17 = v9;
    }

    v19 = (v12 + 80 * a2);
    if (v17 < *v19 || *v19 <= 0.0)
    {
      *v19 = v17;
      v23 = (*(*a1 + 16))(a1, a2, a4);
      v24 = a1[2] + 80 * a2;
      *(v24 + 16) = v23;
      *buf = a3;
      *v31 = dword_100000000;
      *&v31[8] = v17;
      *&v31[16] = v10;
      sub_100178FC8(v24 + 32, buf, buf);
      sub_1001790A4(a1, a2);
    }

    else
    {
      if (v19[2] <= 0.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_1019894E8();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "CLMotionNotifier::addDispatcherPrivate UpdateInterval is zero!", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101989510();
        }
      }

      v21 = a1[2] + 80 * a2;
      v22 = llround(*a4 / *(v21 + 16));
      *buf = a3;
      *v31 = 0;
      *&v31[4] = v22;
      *&v31[8] = v17;
      *&v31[16] = v10;
      sub_100178FC8(v21 + 32, buf, buf);
    }

    (*(*a1 + 40))(a1, a2, *(a1[2] + 80 * a2 + 48) - 1);
    if (qword_1025D4200 != -1)
    {
      sub_1019894E8();
    }

    v25 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      v26 = *a4;
      v27 = 0.0;
      if (*a4 > 0.0)
      {
        v27 = 1.0 / v26;
      }

      *buf = 67109632;
      *&buf[4] = a2;
      *v31 = 2048;
      *&v31[2] = v26;
      *&v31[10] = 2048;
      *&v31[12] = v27;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLMotionNotifier::addDispatcherPrivate Added dispatcher for notification:%d, Update Interval:%f(%.1fHz)", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101989600(a4, a2);
    }
  }

  return v9 != 0.0;
}

BOOL sub_10017A754(uint64_t a1)
{
  result = sub_10017A2DC(*(a1 + 40), *(a1 + 64), *(a1 + 48), (a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10017A794(uint64_t a1, uint64_t a2)
{
  if (CFRunLoopGetCurrent() == *qword_102637700)
  {
    v4 = objc_autoreleasePoolPush();
    (*(a2 + 16))(a2);

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    inited = pthread_dependency_init_np();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10017A294;
    v5[3] = &unk_10244FAF0;
    v5[4] = a2;
    v5[5] = &v6;
    sub_100042800(inited, v5);
    pthread_dependency_wait_np();
  }
}

id sub_10017A884(uint64_t a1, void *a2)
{
  if (qword_1025D42E0 != -1)
  {
    sub_10199C694();
  }

  v4 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67240192;
    v6[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Compass for AOP started. CoverAttached %{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10199C6A8(a2);
  }

  *(a1 + 272) = a2;
  return [*(*(a1 + 296) + 16) register:*(*(a1 + 296) + 8) forNotification:31 registrationInfo:0];
}

id sub_10017A97C(uint64_t a1, int a2, void *a3)
{
  result = sub_10017AF7C(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

id sub_10017A9CC(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        dispatch_once(&qword_1025D41A0, &stru_102504520);
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v10 = v2;
        v11 = 2048;
        v12 = 0;
        v13 = 2080;
        v14 = "N31CLGeomagneticModelProvider_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      if (!sub_10000A100(121, 0))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D41A0 != -1)
      {
        dispatch_once(&qword_1025D41A0, &stru_102504520);
      }

      LODWORD(v8) = 134218498;
      HIDWORD(v8) = v2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D41A8, 16, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v8, 32, v8);
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        dispatch_once(&qword_1025D41A0, &stru_102504520);
      }

      v6 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        v10 = v2;
        v11 = 2048;
        v12 = 0;
        v13 = 2080;
        v14 = "N31CLGeomagneticModelProvider_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      if (!sub_10000A100(121, 0))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D41A0 != -1)
      {
        dispatch_once(&qword_1025D41A0, &stru_102504520);
      }

      LODWORD(v8) = 134218498;
      HIDWORD(v8) = v2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D41A8, 17, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v8, 32, v8);
    }

    v7 = v4;
    sub_100152C7C("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = CLGeomagneticModelProvider_Type::NotificationData, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocation/Shared/Intersilo/CLCppContainer.h:250:46)]", "%s\n", v4);
    if (v7 != buf)
    {
      free(v7);
    }

    return 0;
  }

  return [a1 cppObjectPtr];
}

uint64_t sub_10017AE20(uint64_t a1, int *a2, _OWORD *a3)
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

  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  a3[2] = v8[2];
  a3[3] = v11;
  *a3 = v9;
  a3[1] = v10;
  return 1;
}

_BYTE *sub_10017AE84(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10017AF7C(a4);
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

id sub_10017AF7C(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_101855AF8(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_10017A9CC(a1);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10017B020(uint64_t a1, uint64_t a2, CLConnectionMessage **a3)
{
  v6 = (*(*a2 + 16))(a2);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a3, v6);
  sub_100005548(v15, DictionaryOfClasses);
  v14 = 0;
  if (sub_10001CB4C(v15, "kCLConnectionMessageSubscribeKey", &v14, 0xFFFFFFFFLL))
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = (a2 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, v14, v15);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101AECAB4();
    }

    v11 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
      if (qword_1025D4790 != -1)
      {
        sub_101AECAB4();
      }
    }

    v12 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't get value for kCLConnectionMessageSubscribeKey key", "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
    }
  }

  return sub_100005DA4();
}

void sub_10017B250(uint64_t a1, int a2, uint64_t a3)
{
  v6 = objc_alloc_init(NSAutoreleasePool);
  v26 = 0xBFF0000000000000;
  sub_1000B9370(a3, "kCLConnectionMessageHeadingFilterKey", &v26);
  if (*(a1 + 56) == 1)
  {
    if (a2)
    {
      *(a1 + 64) = v26;
      if (qword_1025D42E0 != -1)
      {
        sub_101AECA48();
      }

      v7 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 24);
        v9 = *(a1 + 64);
        buf[0] = 138412546;
        *&buf[1] = v8;
        v34 = 2048;
        v35 = v9;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "client '%@' subscribing to compass filter %.2f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AECA70(buf);
        v19 = *(a1 + 24);
        v20 = *(a1 + 64);
        v29 = 138412546;
        v30 = v19;
        v31 = 2048;
        v32 = v20;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42E8, 2, "client '%@' subscribing to compass filter %.2f", &v29, 22);
        v22 = v21;
        sub_100152C7C("Generic", 1, 0, 2, "void CLHeadingSubscription::handleRequestHeading(BOOL, const CLNameValuePair &)", "%s\n", v21);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      if (!*(a1 + 168))
      {
        v27 = @"ClientName";
        v28 = [*(a1 + 24) description];
        [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        [*(a1 + 8) silo];
        operator new();
      }

      if (!*(a1 + 48))
      {
        operator new();
      }
    }

    else
    {
      if (qword_1025D42E0 != -1)
      {
        sub_101AECA48();
      }

      v10 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 24);
        buf[0] = 138412290;
        *&buf[1] = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "client '%@' unsubscribing from compass", buf, 0xCu);
      }

      v12 = sub_10000A100(121, 2);
      if (v12)
      {
        sub_101AECA70(buf);
        v23 = *(a1 + 24);
        v29 = 138412290;
        v30 = v23;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42E8, 2, "client '%@' unsubscribing from compass", &v29, 12);
        v25 = v24;
        v12 = sub_100152C7C("Generic", 1, 0, 2, "void CLHeadingSubscription::handleRequestHeading(BOOL, const CLNameValuePair &)", "%s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      if (*(a1 + 168))
      {
        v14 = sub_10017C3BC(v12, v13);
        sub_10095D9F8(v14, 0, *(a1 + 168));
        v15 = *(a1 + 168);
        *(a1 + 168) = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }
      }

      v16 = *(a1 + 48);
      if (v16)
      {
        sub_100E0BB64(v16, v13);
        sub_100E0C2A0(*(a1 + 48), v17);
        v18 = *(a1 + 48);
        *(a1 + 48) = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }
    }
  }

  *(a1 + 104) = xmmword_101C7C270;
  *(a1 + 120) = unk_101C7C280;
  *(a1 + 136) = xmmword_101C7C290;
  *(a1 + 152) = 0xFFFFFFFF00000000;
  *(a1 + 72) = xmmword_101C7C250;
  *(a1 + 88) = unk_101C7C260;
  sub_1000F3B70(a1);
}

uint64_t sub_10017B81C(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_10017B8D0(uint64_t a1, int a2, int *a3, char *a4)
{
  v34 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 32) <= a2)
    {
      *v35 = v10;
      v14 = *a3;
      v17 = *(v10 + 48);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 28) >= v14)
        {
          v18 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 28) < v14));
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 28))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 64);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 32) >= v14)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * (*(v19 + 32) < v14));
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 32))
      {
        v33 = v20;
        v27 = *(v20 + 56);
        v28 = *a4;
        *buf = &v34;
        *(sub_100007FA0(v20 + 40, &v34, &unk_101C66300, buf) + 32) = v28;
        v39 = 0u;
        v40 = 0u;
        memset(buf, 0, sizeof(buf));
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10017AD6C(buf);
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = a1 + 56;
        v33 = a1 + 64;
        v22 = byte_10262F5B1;
        HIDWORD(v32) = v14;
        *buf = &v32 + 4;
        *(sub_100024014(a1 + 56, &v32 + 1, &unk_101C66300, buf) + 80) = v22;
        HIDWORD(v32) = *a3;
        *buf = &v32 + 4;
        v23 = sub_100024014(a1 + 56, &v32 + 1, &unk_101C66300, buf);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        HIDWORD(v32) = *a3;
        *buf = &v32 + 4;
        v26 = sub_100024014(v21, &v32 + 1, &unk_101C66300, buf);
        *buf = &v34;
        *(sub_100007FA0((v26 + 5), &v34, &unk_101C66300, buf) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410(*v35 + 40, buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    dispatch_once(&qword_1025D47F0, &stru_1025044A8);
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    *&buf[12] = 1026;
    *&buf[14] = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47F0 != -1)
    {
      dispatch_once(&qword_1025D47F0, &stru_1025044A8);
    }

    v29 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v29 = *v29;
    }

    *v35 = 136446466;
    *&v35[4] = v29;
    v36 = 1026;
    v37 = a2;
    LODWORD(v32) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; client %{public}d does not exist", v35, v32);
    v31 = v30;
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::registerForNotification(int, const Notification_T &, const RegistrationInfo_T &) [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v30);
    if (v31 != buf)
    {
      free(v31);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10017BD98(uint64_t a1)
{
  *a1 = 1542;
  *(a1 + 4) = 0;
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = xmmword_101D028B0;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0;
  v3 = 0;
  v4 = &v3;
  *(sub_100E0C488((a1 + 56), &v3, &unk_101C66300, &v4) + 5) = 0;
  v3 = 1;
  v4 = &v3;
  *(sub_100E0C488((a1 + 56), &v3, &unk_101C66300, &v4) + 5) = 0;
  v3 = 2;
  v4 = &v3;
  *(sub_100E0C488((a1 + 56), &v3, &unk_101C66300, &v4) + 5) = 0;
  v3 = 3;
  v4 = &v3;
  *(sub_100E0C488((a1 + 56), &v3, &unk_101C66300, &v4) + 5) = 0;
  v3 = 4;
  v4 = &v3;
  *(sub_100E0C488((a1 + 56), &v3, &unk_101C66300, &v4) + 5) = 0;
  v3 = 5;
  v4 = &v3;
  *(sub_100E0C488((a1 + 56), &v3, &unk_101C66300, &v4) + 5) = 0;
  v3 = 6;
  v4 = &v3;
  *(sub_100E0C488((a1 + 56), &v3, &unk_101C66300, &v4) + 5) = 0;
  return a1;
}

uint64_t sub_10017BF6C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 88);
  if (v3 == 1.79769313e308)
  {
    return 2;
  }

  if (v3 >= Current + -1800.0)
  {
    return v3 <= Current;
  }

  return 0;
}

uint64_t sub_10017BFC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10017BFF4(a1, a2);
  v3 = sub_10017BF6C(v2);
  if (v3 == 2)
  {
    return 2;
  }

  else
  {
    return v3 == 1;
  }
}

uint64_t sub_10017BFF4(uint64_t a1, uint64_t a2)
{
  if (qword_10265D700 != -1)
  {
    sub_101A38468();
  }

  return qword_102637B50;
}

uint64_t sub_10017C02C(uint64_t a1, uint64_t a2)
{
  if (qword_10265C390 != -1)
  {
    sub_1019D3688();
  }

  return qword_1026377D8;
}

uint64_t sub_10017C064(uint64_t a1, double *a2)
{
  v4 = sub_100177B18(a1);
  v6 = v4;
  if (v4)
  {
    if (!*(a1 + 80))
    {
      v7 = sub_1009B38EC(v4, v5);
      v11 = 0xA0000FF00;
      v12 = 0;
      sub_101860780(v7);
    }

    if (qword_1025D42D0 != -1)
    {
      sub_1019D3708();
    }

    v8 = qword_1025D42D8;
    if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_INFO))
    {
      v9 = *a2;
      *buf = 134349056;
      *&buf[4] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Setting magnetometer update and batch interval to %{public}f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019D3730(a2);
    }

    sub_10017A1F4(*(a1 + 80), *a2);
    sub_100179350(*(a1 + 80), *a2);
  }

  return v6 & 1;
}

uint64_t sub_10017C3BC(uint64_t a1, uint64_t a2)
{
  if (qword_10265BE70 != -1)
  {
    sub_1019AA314();
  }

  return qword_102637750;
}

uint64_t sub_10017C3F4(uint64_t result, int a2, unint64_t a3, unint64_t a4)
{
  if (!a2 && a3 < a4)
  {
    v4 = result;
    if ((*(result + 184) & 1) == 0)
    {
      result = sub_10017C53C(result, 0);
      v5 = result;
      v7 = v6;
      if (result != v6)
      {
        while (1)
        {
          v8 = (*(**(v5 + 32) + 32))(*(v5 + 32));
          objc_opt_class();
          result = objc_opt_isKindOfClass();
          if (result)
          {
            v9 = [v8 objectForKeyedSubscript:@"ClientName"];
            objc_opt_class();
            result = objc_opt_isKindOfClass();
            if (result)
            {
              result = [v9 isEqualToString:@"com.apple.NanoMaps"];
              if (result)
              {
                break;
              }
            }
          }

          v10 = *(v5 + 8);
          if (v10)
          {
            do
            {
              v11 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              v11 = *(v5 + 16);
              v12 = *v11 == v5;
              v5 = v11;
            }

            while (!v12);
          }

          v5 = v11;
          if (v11 == v7)
          {
            v5 = v7;
            break;
          }
        }
      }

      *(v4 + 184) = v5 != v7;
    }
  }

  return result;
}

double sub_10017C55C(uint64_t a1, uint64_t a2, double *a3)
{
  if (a2)
  {
    v3 = a2;
    if (qword_1025D42D0 != -1)
    {
      sub_1002DDE14();
    }

    v4 = qword_1025D42D8;
    if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_FAULT))
    {
      v13[0] = 67240192;
      v13[1] = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Unrecognized magnetometer notification %{public}d", v13, 8u);
    }

    v5 = 0.0;
    if (sub_10000A100(121, 0))
    {
      sub_1019D3844(v3);
    }
  }

  else
  {
    v8 = sub_10017C064(a1, a3);
    if (*a3 > 0.0 && !*(a1 + 40))
    {
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      operator new();
    }

    if (*a3 <= 0.0 && *(a1 + 40))
    {
      v10 = sub_10017C774(v8, v9);
      sub_10095D9F8(v10, 0, *(a1 + 40));
      v11 = *(a1 + 40);
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      *(a1 + 40) = 0;
    }

    return *a3;
  }

  return v5;
}

uint64_t sub_10017C774(uint64_t a1, uint64_t a2)
{
  if (qword_10265EA18 != -1)
  {
    sub_101A82218();
  }

  return qword_102637D58;
}

uint64_t sub_10017C7AC(char a1, uint64_t a2)
{
  result = qword_102636F38;
  if (!qword_102636F38)
  {
    v4 = sub_100011660(0, a2);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1005A8AEC;
    v5[3] = &unk_1024610B0;
    v6 = a1;
    sub_10017A794(v4, v5);
    return qword_102636F38;
  }

  return result;
}

uint64_t sub_10017C838(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_1000B0BE8(a1, v8);
  v3 = v8[0];
  ++*(a2 + 496);
  if (CLMotionActivity::isTypeInVehicle())
  {
    if (DWORD1(v8[0]) == 2)
    {
      v4 = 6;
    }

    else
    {
      v4 = 3;
    }

    goto LABEL_10;
  }

  isTypePedestrian = CLMotionActivity::isTypePedestrian();
  if (v3 == 100 || isTypePedestrian)
  {
    v4 = 2;
    goto LABEL_10;
  }

  if (CLMotionActivity::isTypeStatic())
  {
    v4 = 1;
LABEL_10:
    v7 = v4;
LABEL_11:
    v10 = &v7;
    result = sub_100E0C488((a2 + 456), &v7, &unk_101C66300, &v10);
    ++*(result + 20);
    return result;
  }

  if (CLMotionActivity::isTypeUnclassifiedMoving())
  {
    v7 = 0;
    goto LABEL_11;
  }

  if (CLMotionActivity::isTypeCycling())
  {
    v4 = 4;
    goto LABEL_10;
  }

  result = CLMotionActivity::isTypeIndoorActivity();
  if (result)
  {
    v4 = 5;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10017C960(uint64_t a1)
{
  v2 = *(a1 + 32);
  memset(v16, 0, sizeof(v16));
  v3 = 0uLL;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0xBFF0000000000000;
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
    v3 = 0uLL;
  }

  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0xBFF0000000000000;
  *(v2 + 88) = 0x600000000;
  *(v2 + 96) = -3.53369517e72;
  *(v2 + 104) = 0xFFFFFFFF00000000;
  *(v2 + 112) = v3;
  *(v2 + 128) = v3;
  *(v2 + 144) = v3;
  *(v2 + 160) = v3;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0x8000000080000000;
  *(v2 + 192) = v3;
  *(v2 + 208) = v3;
  *(v2 + 224) = 6;
  v4 = v16[0];
  v5 = v16[1];
  *(v2 + 257) = v16[2];
  *(v2 + 241) = v5;
  *(v2 + 225) = v4;
  *(v2 + 273) = 0;
  *(v2 + 276) = 0;
  *(v2 + 328) = 6;
  sub_10017BD98(v16);
  v6 = v16[1];
  *(v2 + 400) = v16[0];
  *(v2 + 416) = v6;
  *(v2 + 432) = v16[2];
  *(v2 + 448) = v17;
  sub_100BE1788(v2 + 456, v18);
  *(v2 + 496) = v19;
  sub_1004906DC(v18);
  if (qword_1025D42E0 != -1)
  {
    sub_101A95D38();
  }

  v7 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    if (*(v8 + 23) < 0)
    {
      v8 = *v8;
    }

    LODWORD(v16[0]) = 136315138;
    *(v16 + 4) = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "starting metric session (CompassSession) for %s", v16, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A95D60();
  }

  *(v2 + 40) = 1;
  *(v2 + 48) = CFAbsoluteTimeGetCurrent();
  v9 = std::string::operator=((v2 + 56), *(a1 + 40));
  v11 = sub_10017C3BC(v9, v10);
  v13 = sub_10017BFC8(v11, v12);
  *(v2 + 276) = v13;
  if (!*(v2 + 8))
  {
    operator new();
  }

  if (!*(v2 + 16))
  {
    operator new();
  }

  result = sub_100023B30(v13, v14);
  if ((result & 0x10) != 0)
  {
    if (!*(v2 + 24))
    {
      operator new();
    }

    if (!*(v2 + 32))
    {
      operator new();
    }
  }

  return result;
}

void sub_10017CDA8(_BYTE *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  sub_100011660(a1, a2);
  sub_10001160C();
  if (v4 > 34)
  {
    if (v4 > 42)
    {
      if (v4 == 43)
      {
        if (a3)
        {
          if (a1[1815])
          {
            return;
          }

          a1[1815] = 1;
          v17 = 310;
        }

        else
        {
          if (!a1[1815])
          {
            return;
          }

          a1[1815] = 0;
          v17 = 54;
        }

        *buf = v17;
        sub_100F66F7C((a1 + 192), buf, 0);
        return;
      }

      if (v4 != 44)
      {
        if (v4 != 45)
        {
          return;
        }

        if (a3)
        {
          if (a1[1817])
          {
            return;
          }

          a1[1817] = 1;
          v12 = 312;
        }

        else
        {
          if (!a1[1817])
          {
            return;
          }

          a1[1817] = 0;
          v12 = 56;
        }

        *buf = v12;
        sub_100F67324((a1 + 192), buf, 0);
        return;
      }

      if (a3)
      {
        if (a1[1816])
        {
          return;
        }

        a1[1816] = 1;
        v19 = 311;
      }

      else
      {
        if (!a1[1816])
        {
          return;
        }

        a1[1816] = 0;
        v19 = 55;
      }

      *buf = v19;
      sub_100F67150((a1 + 192), buf, 0);
    }

    else
    {
      if (v4 != 35)
      {
        if (v4 != 40)
        {
          if (v4 != 41)
          {
            return;
          }

          if (a3)
          {
            if (a1[1814])
            {
              return;
            }

            a1[1814] = 1;
            v10 = 308;
          }

          else
          {
            if (!a1[1814])
            {
              return;
            }

            a1[1814] = 0;
            v10 = 52;
          }

          *buf = v10;
          sub_100F66DA8((a1 + 192), buf, 0);
          return;
        }

        if (a3)
        {
          if (a1[1813])
          {
            return;
          }

          a1[1813] = 1;
          v18 = 305;
        }

        else
        {
          if (!a1[1813])
          {
            return;
          }

          a1[1813] = 0;
          v18 = 49;
        }

        *buf = v18;
        sub_100F66BD4((a1 + 192), buf, 0);
        return;
      }

      if (qword_1025D4210 != -1)
      {
        sub_10027BA68();
      }

      v13 = qword_1025D4218;
      if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        v23 = a3;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "kNotificationPedometerPathStraightness, numberOfSpectators = %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ADB584(a3);
      }
    }
  }

  else
  {
    if (v4 > 6)
    {
      switch(v4)
      {
        case 7:
          if (a1[861])
          {
            return;
          }

          v14 = *(*a1 + 200);
          v16 = a1;
          v15 = a3 != 0;

          break;
        case 31:
          if (a3)
          {
            if (a1[1419])
            {
              return;
            }

            v14 = *(*a1 + 544);
            v16 = a1;
            v15 = 1;
          }

          else
          {
            if (!a1[1419])
            {
              return;
            }

            v14 = *(*a1 + 544);
            v16 = a1;
            v15 = 0;
          }

          break;
        case 34:
          if (a3)
          {
            if (a1[1420])
            {
              return;
            }

            a1[1420] = 1;
            buf[1] = 1;
            if (qword_1025D4210 != -1)
            {
              sub_10027BA68();
            }

            v11 = qword_1025D4218;
            if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
            {
              *v21 = 0;
              _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "Turning on AOP SPL", v21, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101ADB674();
            }
          }

          else
          {
            if (!a1[1420])
            {
              return;
            }

            a1[1420] = 0;
            buf[1] = 0;
            if (qword_1025D4210 != -1)
            {
              sub_10027BA68();
            }

            v20 = qword_1025D4218;
            if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
            {
              *v21 = 0;
              _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "Turning off AOP SPL", v21, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101ADB750();
            }
          }

          sub_100F62314((a1 + 192), buf, 0);
          return;
        default:
          return;
      }

      v14(v16, v15);
      return;
    }

    if (v4)
    {
      if (v4 == 2)
      {
        if (!a3)
        {
          return;
        }

        v6 = a1 + 840;
        v7 = a1;
        v8 = 2;
        v9 = 16;
      }

      else
      {
        if (v4 != 4 || !a3 || a1[283] != 1 || a1[859] != 1)
        {
          return;
        }

        v6 = a1 + 284;
        v7 = a1;
        v8 = 4;
        v9 = 60;
      }
    }

    else
    {
      if (!a3 || a1[859] != 1)
      {
        return;
      }

      v6 = a1 + 680;
      v7 = a1;
      v8 = 0;
      v9 = 160;
    }

    sub_100013B00(v7, v8, v6, v9);
  }
}

void sub_10017D388(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011660(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017C960;
  v5[3] = &unk_10245D2A8;
  v5[4] = a1;
  v5[5] = a2;
  sub_10017A794(v4, v5);
}

void sub_10017D408(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = *a3;
  *a3 = 0uLL;
  sub_1001799DC(a1 + 8, v3, &v4);
  if (*(&v4 + 1))
  {
    sub_100008080(*(&v4 + 1));
  }
}

void sub_10017D454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017D46C(uint64_t a1)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 760) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101941E94();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v2 = _os_activity_create(dword_100000000, "CL: CLGnssController::sendGnssBandChangeNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101941EA8();
    }

    v3 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssController::sendGnssBandChangeNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  v4 = [*(a1 + 760) silo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100177B14;
  v5[3] = &unk_102449A78;
  v5[4] = a1;
  [v4 sync:v5];
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10017D670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v9 = _Q0;
  return (*(*a1 + 96))(a1, a2, a3, &v9);
}

uint64_t sub_10017D6C4(uint64_t a1)
{
  result = *(a1 + 3912);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_10017D6F4(uint64_t a1)
{
  v1 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  v2 = v1[28];
  if (v2)
  {
    (*(*v2 + 56))(v2);
  }

  return (*(*v1 + 24))(v1);
}

void sub_10017D7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10017D7BC(uint64_t a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1003115AC();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67240192;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "L5Context,AccHigh,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A6559C(a2);
  }

  if (*(a1 + 52) != a2)
  {
    *(a1 + 52) = a2;
    sub_10017DC7C(a1);
  }
}

uint64_t sub_10017D8B4(uint64_t a1, int *a2)
{
  if (!*a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A772C8();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#wigo,on,GnssProviderInternal", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A793CC();
    }
  }

  if (sub_1000F4588())
  {
    v5 = *a2;
    if (*a2 <= 34)
    {
      if (v5 > 28)
      {
        if (v5 == 29)
        {
          sub_100801AF4((a1 + 120), 1);
        }

        else if (v5 == 34)
        {
          sub_10017EC94(a1 + 120, 1);
        }
      }

      else if (v5)
      {
        if (v5 == 28)
        {
          sub_100801F78((a1 + 120), 1);
        }
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101A773B8();
        }

        v11 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Start location in location notification", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A79678();
        }

        sub_10017DE58(a1, a2);
        sub_1001B5324(a1);
        *buf = *a2;
        v12 = sub_10000608C(a1, buf, 1);
        sub_1001C5AB8(a1, 1, v12, a2);
      }
    }

    else if (v5 <= 37)
    {
      if (v5 == 35)
      {
        sub_100254280((a1 + 120), 1);
      }

      else if (v5 == 37)
      {
        sub_10080250C(a1 + 120, 1);
      }
    }

    else
    {
      switch(v5)
      {
        case '&':
          sub_1008022D0((a1 + 120), 1);
          break;
        case ',':
          sub_10027CEC4(a1 + 120, 1);
          break;
        case '-':
          if (qword_1025D4650 != -1)
          {
            sub_101A773B8();
          }

          v6 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "kNotificationGNSSStatusIndication registered", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7959C();
          }

          v7 = *(a1 + 32);
          if (v7)
          {
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100D63D48;
            block[3] = &unk_102449A78;
            block[4] = a1;
            dispatch_async([objc_msgSend(v7 "silo")], block);
          }

          break;
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      v9 = *a2;
      *buf = 67240192;
      v15 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Internal registeration for notification,%{public}d,failed", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A794A8(a2);
    }
  }

  return 1;
}

void sub_10017DC7C(uint64_t a1)
{
  if (*(a1 + 51) == 1)
  {
    v2 = sub_1001BEC04();
    if ((v2 & 0x100000000) != 0)
    {
      v3 = v2;
      if (qword_1025D4650 != -1)
      {
        sub_1003115AC();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p) = 67240192;
        HIDWORD(__p) = v3;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "L5Context,forcing L5 band use to %{public}d", &__p, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A651E0(v3, &__p);
        v3 = __p;
      }

      __p = 0;
      v6 = 0;
      v7 = 0;
      *a1 = v3;
      if (*(a1 + 32))
      {
        sub_100D09BCC(a1 + 8, v3);
        if (__p)
        {
          v6 = __p;
          operator delete(__p);
        }
      }
    }

    else if (sub_1001BED58(v2))
    {

      sub_100D0947C(a1);
    }

    else
    {

      sub_1001B934C(a1);
    }
  }
}

void sub_10017DE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017DE58(uint64_t result, _DWORD *a2)
{
  if (!*a2)
  {
    v3 = result;
    v4 = sub_1000F44E4(result, 0);

    return sub_10017DEA4(v3 + 120, v4);
  }

  return result;
}

uint64_t sub_10017DEA4(uint64_t result, int *a2)
{
  v3 = result;
  if (*(result + 568) != a2 || !*(result + 640) || !*(result + 608))
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v4 = (v3 + 568);
    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v6 = *v4;
      v7[0] = 67240448;
      v7[1] = v6;
      v8 = 1026;
      v9 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "OperatingModeFrom,%{public}d,OperatingModeTo,%{public}d", v7, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101941D9C(v3 + 568, a2);
    }

    *(v3 + 648) = *v4;
    *(v3 + 656) = *(v3 + 576);
    sub_100806104((v3 + 664), v3 + 584);
    sub_100806104((v3 + 696), v3 + 616);
    sub_1007FD984(v3, a2);
    return sub_1001BF630(v3 + 2576, 15);
  }

  return result;
}

void sub_10017DFF8(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v22.i32[2] = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(&v22.i64[1] + 4);
  sub_10000B324(v7, (&v22.i64[1] + 4));
  v22.i32[3] = 15;
  v22.i32[0] = 15;
  v8 = sub_10000AD98(&v22.u32[3]);
  v22.i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  v22.i32[3] = 4;
  sub_10001E898(v10, &v22.u32[3], &v22, (a1 + 5220), &v22.i32[2], a3, a4);
  v11 = *a3;
  if (*a3 <= 40)
  {
    if (v11 == 11)
    {
      sub_1001B7EF4(a1, a4 + 824);
      return;
    }

    if (v11 == 26)
    {
      sub_10028497C(a1, a4);
      return;
    }

    goto LABEL_8;
  }

  if (v11 != 41)
  {
    if (v11 == 43)
    {
      sub_100675DCC(a1, a4);
      return;
    }

LABEL_8:
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v12 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a4 + 96);
      v14 = *(a4 + 4);
      v15 = *(a4 + 12);
      v16 = *(a4 + 20);
      v17 = *a3;
      v22.i32[3] = 67241217;
      v23 = v13;
      v24 = 2053;
      v25 = v14;
      v26 = 2053;
      v27 = v15;
      v28 = 2050;
      v29 = v16;
      v30 = 1026;
      v31 = v17;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "onGpsNotification,locationType,%{public}d,lat,%{sensitive}.7lf,long,%{sensitive}.7lf,acc,%{public}.01lf,notification,%{public}d", &v22.u8[12], 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FA6E0();
    }

    sub_10010CA08(a1, *(a1 + 336), v18, a3, a4);
    sub_1002B0B68(a1 + 800, a3, a4);
    v19 = *(a1 + 5960);
    if (v19)
    {
      sub_1002B0DB4(v19, a3, a4);
    }

    if (*(a1 + 784))
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v20 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v22.i16[6] = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#HST, Location Controller Updating with GPS location", &v22.u8[12], 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FA818();
      }

      sub_1002B14F0(*(a1 + 784), a4);
    }

    return;
  }

  sub_100182974(a1, a4);
  v21 = *(a1 + 280);
  if (v21)
  {
    (*(*v21 + 24))(v21, a3, a4);
  }
}

void sub_10017E2E0(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018741E8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onGpsNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018741FC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onGpsNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10017DFF8(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10017E4BC(uint64_t result, int *a2)
{
  if (*a2 == 15 || *a2 == 0)
  {
    v17[5] = v2;
    v17[6] = v3;
    v5 = result;
    if (*(result + 336))
    {
      *&v13 = result + 336;
      result = sub_100109DF4(result + 232, (result + 336), &unk_101C66300, &v13);
      if (*(result + 911) == 1)
      {
        result = sub_100027514((v5 + 800), v7);
        if ((result & 1) == 0)
        {
          __asm { FMOV            V0.2D, #-1.0 }

          v13 = _Q0;
          v14 = 0;
          v16 = 0;
          v15 = sub_1000F44E4(v5, *a2);
          v17[0] = (v5 + 336);
          v12 = sub_10010A224(v5 + 256, (v5 + 336), &unk_101C66300, v17)[5];
          LODWORD(v17[0]) = 0;
          sub_100109ECC(v12, v17, &v13);
        }
      }
    }
  }

  return result;
}

void sub_10017E59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001A3E8(a1, a2);
  if (!sub_1000F4760(v6, v7))
  {
    return;
  }

  v8 = sub_1000184F4(a1, a2);
  v9 = [v8 clientAnchor];
  if (!v9)
  {
    goto LABEL_5;
  }

  sub_10000EC00(&__p, [v9 UTF8String]);
  v10 = sub_1005D7C24(qword_102659E68, &__p);
  v11 = v10;
  if ((v30[3] & 0x80000000) != 0)
  {
    operator delete(__p);
    if (v11)
    {
LABEL_5:
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
      {
        __p = 68289282;
        v27 = 2082;
        v28 = "";
        v29 = 2114;
        *v30 = v8;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SystemStatusAttribution attempting deattribution for attribution-unavailable client. Aborting deattribution, Client:%{public, location:escape_only}@}", &__p, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v13 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        __p = 68289282;
        v27 = 2082;
        v28 = "";
        v29 = 2114;
        *v30 = v8;
        v14 = "#SystemStatusAttribution attempting deattribution for attribution-unavailable client. Aborting deattribution";
        v15 = "{msg%{public}.0s:#SystemStatusAttribution attempting deattribution for attribution-unavailable client. Aborting deattribution, Client:%{public, location:escape_only}@}";
LABEL_12:
        _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v14, v15, &__p, 0x1Cu);
        return;
      }

      return;
    }
  }

  else if (v10)
  {
    goto LABEL_5;
  }

  v16 = [objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v8), "dictionary"}];
  v17 = sub_1000F70DC(v8, v16);
  if (!v17)
  {
    return;
  }

  if (v17 != 2)
  {
    goto LABEL_23;
  }

  v8 = qword_102659F08;
  if (*(a1 + 448) != 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v19 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      __p = 68289282;
      v27 = 2082;
      v28 = "";
      v29 = 2114;
      *v30 = v8;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution deattribution for System Service; defaulting to Traffic for record keeping, SystemService:%{public, location:escape_only}@}", &__p, 0x1Cu);
    }

LABEL_23:
    v18 = 1;
    goto LABEL_24;
  }

  v18 = 0;
LABEL_24:
  v20 = [*(a1 + 440) objectForKey:v8];
  v21 = v20;
  if (v20)
  {
    [v20 decrementAttributionCountForServiceType:a3];
    if (v18)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v22 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        __p = 68289794;
        v27 = 2082;
        v28 = "";
        v29 = 1026;
        *v30 = a3;
        *&v30[4] = 2114;
        *&v30[6] = v8;
        v31 = 2114;
        v32 = v21;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution #AttributionRecord servicetype count decremented, ServiceType:%{public}d, Client:%{public, location:escape_only}@, Record:%{public, location:escape_only}@}", &__p, 0x2Cu);
      }

      if ([v21 totalAttributionCount])
      {
        return;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v23 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        __p = 68289282;
        v27 = 2082;
        v28 = "";
        v29 = 2114;
        *v30 = v8;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution No subscriptions remaining after deattribution; removing AttributionRecord for client and ending system status attribution, Client:%{public, location:escape_only}@}", &__p, 0x1Cu);
      }
    }

    else if ([v21 totalAttributionCount])
    {
      return;
    }

    v25 = (sub_100031744(v16) & 6) == 0 || (sub_10001971C(a1, v8) & 1) == 0;
    sub_100251A28(a1, v8, v21, v25);
    return;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v24 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    __p = 68289282;
    v27 = 2082;
    v28 = "";
    v29 = 2114;
    *v30 = v8;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SystemStatusAttribution attempting to deattribute unattributed client. Aborting deattribution., Client:%{public, location:escape_only}@}", &__p, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v13 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    __p = 68289282;
    v27 = 2082;
    v28 = "";
    v29 = 2114;
    *v30 = v8;
    v14 = "#SystemStatusAttribution attempting to deattribute unattributed client. Aborting deattribution.";
    v15 = "{msg%{public}.0s:#SystemStatusAttribution attempting to deattribute unattributed client. Aborting deattribution., Client:%{public, location:escape_only}@}";
    goto LABEL_12;
  }
}

void sub_10017EADC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 sub_10017EAEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[19].n128_u8[8] == 1)
  {
    result.n128_u64[0] = v1[20].n128_u64[0];
    if (result.n128_f64[0] == *(a1 + 40))
    {
      if (qword_1025D4790 != -1)
      {
        sub_100312440();
      }

      v4 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
      {
        v5 = v1[1].n128_u64[1];
        v7[0] = 68289282;
        v7[1] = 0;
        v8 = 2082;
        v9 = "";
        v10 = 2114;
        v11 = v5;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received location system state of LocationUpdateSession, Client:%{public, location:escape_only}@}", v7, 0x1Cu);
      }

      v6 = *(a1 + 48);
      result = *v6;
      v1[23].n128_u64[0] = v6[1].n128_u64[0];
      v1[22] = result;
    }
  }

  return result;
}

double sub_10017EC04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017EAEC;
  v5[3] = &unk_10245D2F0;
  v5[4] = v2;
  result = *(a1 + 56);
  *&v5[5] = result;
  v5[6] = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    if (*(v4 + 8) != -1)
    {
      *&result = sub_10017EAEC(v5).n128_u64[0];
    }
  }

  return result;
}

void sub_10017EC94(uint64_t a1, void *a2)
{
  v2 = *(a1 + 1184);
  if (v2)
  {
    sub_10017D7BC(v2, a2);
  }
}

uint64_t sub_10017ECA4(uint64_t result)
{
  v1 = *(result + 682);
  if (*(result + 683) != v1)
  {
    v2 = result;
    *(result + 683) = v1;
    if (qword_1025D4600 != -1)
    {
      sub_101873CF0();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v4 = *(v2 + 682);
      *buf = 67240192;
      v12 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "#GPSPowerSavings,reporting state to powerlog,fThrottlingGps,%{public}d", buf, 8u);
    }

    v5 = sub_10000A100(121, 2);
    if (v5)
    {
      sub_101873D04((v2 + 682));
    }

    v7 = *(v2 + 682);
    v8 = sub_10000B1F8(v5, v6);
    *buf = 0;
    v10[0] = [NSNumber numberWithDouble:sub_10001A6B0(v8, buf), @"eventCfTimeSec"];
    v9[1] = @"eventType";
    v10[1] = [NSNumber numberWithInt:6];
    v9[2] = @"eventStatus";
    v10[2] = [NSNumber numberWithInt:v7];
    return sub_10006FFF0([NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3], "GnssSession");
  }

  return result;
}

uint64_t sub_10017EE1C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!*a3)
  {
    if ((*(**(a1 + 24) + 200))(*(a1 + 24)) < 1)
    {
      if (![*(a1 + 8) state] && (objc_msgSend(*(a1 + 8), "locationGroupsLoaded") & 1) == 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101869E48();
        }

        v5 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *v7 = 0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "No more clients but availability tiles still loaded - clearing", v7, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10186D074();
        }

        [*(a1 + 8) clearLocationGroups];
      }
    }

    else
    {
      sub_10017EF60(a1, a2);
    }

    if ((*(**(a1 + 24) + 208))(*(a1 + 24)))
    {
      sub_10025DFCC(a1, 1);
    }
  }

  return 1;
}

void sub_10017EF60(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = (*(**(a1 + 24) + 200))(*(a1 + 24));
    v6 = sub_10037F018([*(a1 + 8) state]);
    *buf = 67109378;
    *&buf[4] = v5;
    v14 = 2080;
    v15 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "request start pipelined provider, we have %d clients, ProviderState::%s", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186B5A8(a1);
  }

  v7 = [*(a1 + 8) state];
  [*(a1 + 8) setState:2];
  if (!v7)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "was stopped, starting pipelined provider", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186B6E8();
    }

LABEL_30:
    v11 = *(a1 + 8);
    v12[0] = 0;
    [v11 setLastIndoorError:v12];
    if (v12[0] == 1)
    {
      v12[0] = 0;
    }

    sub_10000EC00(buf, "startprovider");
    sub_10017F2F4(a1, 0, buf);
    if (v16 < 0)
    {
      operator delete(*buf);
    }

    sub_10000EC00(buf, "client/wake");
    sub_10018EA08(a1, a2, buf);
    goto LABEL_35;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v8 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "ignoring request to start provider - already running", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186B8B0();
      }

      return;
    }

    goto LABEL_30;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101869E5C();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "interrupting debounce - resuming provider", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186B7CC();
  }

  (*(**(a1 + 24) + 56))(*(a1 + 24));
  if (![*(a1 + 8) pipelinedSeeded])
  {
    sub_10000EC00(buf, "interrupting debounce");
    sub_100264D7C(a1, buf);
LABEL_35:
    if (v16 < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_10017F2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10017F2F4(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  if ([*(a1 + 8) pipelinedSeeded] == a2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      v7 = sub_10017F5D4([*v5 pipelinedSeeded]);
      if (*(a3 + 23) >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      *buf = 136446466;
      v26 = v7;
      v27 = 2082;
      v28 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "@IndoorSeed, same, %{public}s, %{public}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186A234();
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_10017F5D4(a2);
      if (*(a3 + 23) >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      v12 = sub_10017F5D4([*v5 pipelinedSeeded]);
      *buf = 136446722;
      v26 = v10;
      v27 = 2082;
      v28 = v11;
      v29 = 2082;
      v30 = v12;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "@IndoorSeed, set, %{public}s, %{public}s, was, %{public}s", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v14 = qword_1025D4628;
      v15 = sub_10017F5D4(a2);
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v16 = sub_10017F5D4([*v5 pipelinedSeeded]);
      v19 = 136446722;
      v20 = v15;
      v21 = 2082;
      v22 = a3;
      v23 = 2082;
      v24 = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v14, 0, "@IndoorSeed, set, %{public}s, %{public}s, was, %{public}s", &v19, 32);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "void CLIndoorLogic::setSeedState(PipelinedSeeded, const std::string &)", "%s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  return [*v5 setPipelinedSeeded:a2];
}

const char *sub_10017F5D4(void *a1)
{
  if (a1 < 3)
  {
    return (&off_102446BC0)[a1];
  }

  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    v4[0] = 67240192;
    v4[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Corrupt PipelinedSeeded: got %{public}d", v4, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10186A358(a1);
  }

  return "Unknown pipelinedSeeded";
}

void sub_10017F6FC(uint64_t a1)
{
  *(a1 + 50) = 1;
  if (qword_1025D4600 != -1)
  {
    sub_1018754D8();
  }

  v1 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_INFO, "#GPSPowerSavings,notification,session starting from location controller", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018771B4();
  }
}

uint64_t sub_10017F798(char *a1, int a2, unsigned int *a3, uint64_t a4)
{
  HIDWORD(v26) = a2;
  v8 = sub_100044914(a1, a2, a3, a4);
  result = 1;
  if (v8 && !*a3)
  {
    v10 = *(a1 + 84);
    v11 = *(a1 + 87);
    v12 = (sub_10001CF04(1, v7) & (*(a4 + 24) == 1)) == 0;
    v13 = 680;
    if (!v12)
    {
      v13 = 656;
    }

    sub_1003C9410(&a1[v13], &v26 + 1, &v26 + 1);
    if (qword_1025D4620 != -1)
    {
      sub_101B1AFCC();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 84);
      v16 = *(a1 + 87);
      v17 = *a3;
      *buf = 134349824;
      v36 = v15;
      v37 = 2050;
      v38 = v16;
      v39 = 1026;
      v40 = HIDWORD(v26);
      v41 = 1026;
      v42 = v17;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "regionalClients,%{public}lu, indoorClients,%{public}lu, client, %{public}d, notification,%{public}d", buf, 0x22u);
    }

    v18 = -v11;
    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101B1AFCC();
      }

      v21 = *(a1 + 84);
      v22 = *(a1 + 87);
      v23 = *a3;
      v27 = 134349824;
      v28 = v21;
      v29 = 2050;
      v30 = v22;
      v31 = 1026;
      v32 = HIDWORD(v26);
      v33 = 1026;
      v34 = v23;
      LODWORD(v26) = 34;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "regionalClients,%{public}lu, indoorClients,%{public}lu, client, %{public}d, notification,%{public}d", &v27, v26);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLPipelineLocationProvider::registerForNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::RegInfo &)", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    v19.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v20 = *(a1 + 18);
    if (v10 != v18 || *(a1 + 84) == -*(a1 + 87))
    {
      sub_10025DEA4(v20, v19.__d_.__rep_);
      return 1;
    }

    else
    {
      return sub_10017EE1C(v20, v19.__d_.__rep_, a3);
    }
  }

  return result;
}

uint64_t sub_10017FA28(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 28)
  {
    v3.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    sub_1003813C0(*(a1 + 144), v3.__d_.__rep_);
  }

  return 1;
}

uint64_t sub_10017FA6C(uint64_t a1, uint64_t a2)
{
  if (![*(a1 + 16) pipelinedEnabled])
  {
    return 1;
  }

  if (![*(a1 + 8) wifiPowered])
  {
    return 2;
  }

  if (*[*(a1 + 8) latestPosition] != 1)
  {
    return 3;
  }

  [*(a1 + 8) latestNavModeEstimate];
  if (v4 == 2 && *(a1 + 40) != 1)
  {
    return 4;
  }

  if (*[*(a1 + 8) lastIndoorError] == 1)
  {
    v5 = [*(a1 + 8) lastIndoorError];
    if ((*v5 & 1) == 0)
    {
      sub_10186A448();
    }

    v6 = v5;
    v7 = sub_10025D130(a1) ? 300000000000 : [*(a1 + 16) errorBackoffDuration];
    if (v7 + *(v6 + 1) > a2)
    {
      return 5;
    }
  }

  if ([*(a1 + 8) isStreamingClientInFitnessSession])
  {
    return 6;
  }

  if ([*(a1 + 8) isVehicleConnected] && *(a1 + 40) != 1)
  {
    return 7;
  }

  if ([*(a1 + 8) isInVehicleNavigation] && *(a1 + 40) != 1)
  {
    return 8;
  }

  if ([*(a1 + 8) hasAtLeastOneClientWithCLActivityTypeFitness])
  {
    return 9;
  }

  if (sub_10018E9E4([*(a1 + 8) fitnessModeStateMachine]))
  {
    return 10;
  }

  return 0;
}

const char *sub_10017FC28(void *a1)
{
  if (a1 < 0xB)
  {
    return (&off_102446BF0)[a1];
  }

  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    v4[0] = 67240192;
    v4[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Corrupt KeepOffReason (short): got %{public}d", v4, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101870264(a1);
  }

  return "Unknown";
}

void sub_10017FD1C(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 45)
  {
    *(a1 + 24) = *(a4 + 1488);
    v5 = (a1 + 24);
    *(a1 + 40) = *(a4 + 1504);
    if (qword_1025D4790 != -1)
    {
      sub_1018B3DA8();
    }

    v6 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 134284033;
      v23 = v7;
      v24 = 2049;
      v25 = v8;
      v26 = 2049;
      v27 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,daemon,handleGnssStatusUpdateNotification,gnssStart,%{private}.3lf,gnssStop,%{private}.3lf,gnssYield,%{private}.3lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4790 != -1)
      {
        sub_100249B74();
      }

      v11 = *(a1 + 24);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v16 = 134284033;
      v17 = v11;
      v18 = 2049;
      v19 = v12;
      v20 = 2049;
      v21 = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "#CLGNSSStateQueryAssertion,daemon,handleGnssStatusUpdateNotification,gnssStart,%{private}.3lf,gnssStop,%{private}.3lf,gnssYield,%{private}.3lf", &v16, 32);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGNSSStateQueryAssertion::handleGnssStatusUpdateNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    sub_10011E75C(a1, v5);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_1018B3DA8();
    }

    v10 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,daemon,not handleGnssStatusUpdateNotification", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B4574();
    }
  }
}

void sub_10017FF80(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 16) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018B4444();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGNSSStateQueryAssertion::handleGnssStatusUpdateNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018B4458();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGNSSStateQueryAssertion::handleGnssStatusUpdateNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10017FD1C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10018014C(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_10018022C(char *a1, void *a2, int *a3, char *a4)
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
          sub_1001805E4(buf);
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
        v22 = byte_10262F699;
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
    sub_101A5A37C();
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
    sub_101A5B15C(a1, a2);
    return 0;
  }

  return result;
}

uint64_t sub_100180690(uint64_t a1, int *a2, void *a3)
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

_BYTE *sub_1001806EC(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1001809E8(a4);
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

id sub_1001807E4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101A5B5A4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CF7635 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A5B5B8();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101A5B5A4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CF7635 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A5B6C0();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1001809E8(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1001807E4(a1);
}

id sub_100180A48(uint64_t a1, int a2, void *a3)
{
  result = sub_1001809E8(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

void sub_100180A98(uint64_t a1, _DWORD *a2, char *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019284A8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssAssistanceSignalEnv::onSigEnvNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019284BC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssAssistanceSignalEnv::onSigEnvNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100180C64(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100180C64(uint64_t result, uint64_t a2, _DWORD *a3, char *a4)
{
  if (!*a3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101928290();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(result + 48);
      v8 = *a4;
      v9[0] = 67240448;
      v9[1] = v7;
      v10 = 1026;
      v11 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLSE,priorSignalEnvironment,%{public}d,newSignalEnvironment,%{public}d", v9, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101928790(result, a4);
    }

    if (*(result + 48) != *a4)
    {
      *(result + 48) = *a4;
      sub_100180D80(result);
    }
  }
}

uint64_t sub_100180D80(uint64_t result)
{
  if ((*(result + 64) & 1) == 0)
  {
    v2 = result;
    *(result + 56) = sub_1000081AC();
    v3 = *(v2 + 48);

    return sub_100180F48(v2 + 16, v3);
  }

  return result;
}

void sub_100180DCC(void *a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 68289282;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 1026;
    v14 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, handleassistancesignalenv:%{public}d}", v10, 0x18u);
  }

  v5 = a1[124];
  if (v5)
  {
    sub_100180F9C(v5, a2);
  }

  v6 = a1[127];
  if (v6)
  {
    sub_100180FA4(v6, a2);
  }

  (*(**a1 + 104))(*a1, a2);
  v7 = a1[141];
  if (v7)
  {
    sub_1001514C4(v7, a2);
  }

  v8 = a1[148];
  if (v8)
  {
    sub_1001513C0(v8, a2);
  }

  sub_1001514CC(*a1 + 8, a2);
  v9 = a1[150];
  if (v9)
  {
    sub_100EABE18(v9, a2);
  }
}

uint64_t sub_100180F48(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_100180FAC(uint64_t a1, int a2)
{
  sub_1001324C4(v8);
  v4 = sub_100132484(0x14u);
  if (!v4)
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  v9 = 20;
  v11 |= 0x1004u;
  v6 = v10;
  if (!v10)
  {
    operator new();
  }

  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        if (sub_1001811C8(0))
        {
          v7 = 0;
          goto LABEL_25;
        }

        goto LABEL_28;
      case 1:
        if (sub_1001811C8(1u))
        {
          v7 = 1;
          goto LABEL_25;
        }

        goto LABEL_28;
      case 2:
        if (sub_1001811C8(2u))
        {
          v7 = 2;
LABEL_25:
          *(v6 + 16) |= 1u;
          *(v6 + 8) = v7;
          goto LABEL_26;
        }

        goto LABEL_28;
    }

    goto LABEL_26;
  }

  switch(a2)
  {
    case 3:
LABEL_23:
      if (sub_1001811C8(3u))
      {
        v7 = 3;
        goto LABEL_25;
      }

      goto LABEL_28;
    case 4:
      if (sub_10071B1C8(v4, v5))
      {
        if (sub_1001811C8(4u))
        {
          v7 = 4;
          goto LABEL_25;
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    case 6:
      if (sub_1001811C8(6u))
      {
        v7 = 6;
        goto LABEL_25;
      }

LABEL_28:
      __assert_rtn("set_signal_environment_type", "GpsdProtocol.pb.h", 10214, "::proto::gnss::SignalEnvironmentType_IsValid(value)");
  }

LABEL_26:
  sub_10013256C(a1, v8);
  sub_100133DCC(v8);
}

double sub_100181198(uint64_t a1)
{
  *a1 = off_1024B9078;
  *&result = 15;
  *(a1 + 8) = 15;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1001811E0(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 16))
  {
    v4 = *(a1 + 8);
    if ((v4 & 0x80000000) != 0)
    {
      result = 11;
    }

    else if (v4 >= 0x80)
    {
      result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, a2) + 1;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 12) = result;
  return result;
}

uint64_t sub_10018123C(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
  }

  return result;
}

void sub_100181258(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  if (qword_1025D47B0 != -1)
  {
    sub_101A7D5D0();
  }

  v4 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[94];
    v8[0] = 67240448;
    v8[1] = v5;
    v9 = 1026;
    v10 = v2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#ilsa,StreamingAwareLocationProviderStateMachine,isLocationStreamingAllowed,old,%{public}d,new,%{public}d", v8, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7D6D4(a1, v2);
  }

  v6 = a1[94];
  a1[94] = v2;
  if (v6 != v2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    (*(*a1 + 96))(a1, Current);
  }
}

void sub_100181388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1025D47B0 != -1)
  {
    sub_101A83044();
  }

  v6 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a4 + 1480);
    v9[0] = 68289282;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1026;
    v13 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ilsa,CLStreamingAwareLocationProvider,onLocationStreamingControlStateNotification, allowStreaming:%{public}d}", v9, 0x18u);
  }

  v8 = *(a1 + 128);
  if (v8)
  {
    sub_100181258(v8, *(a4 + 1480));
  }
}

void sub_100181480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A83080();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLStreamingAwareLocationProvider::onLocationStreamingControlStateNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A83094();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLStreamingAwareLocationProvider::onLocationStreamingControlStateNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100181388(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100181644(char *a1, void *a2, int *a3, char *a4)
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
        memset(buf, 0, 20);
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_100521BAC(buf);
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
        v22 = byte_1025D68E9;
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
    sub_1018B2978();
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
    *&buf[12] = 1026;
    *&buf[14] = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_1018B2A94(a1, a2);
    return 0;
  }

  return result;
}

uint64_t sub_100181A2C(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_100181AE0(char *a1, void *a2, int *a3, char *a4)
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
        bzero(buf, 0x658uLL);
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1011AA184(buf);
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
        v22 = byte_102632BB9;
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
    sub_101B593CC();
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
    sub_101B594E0(a1, a2);
    return 0;
  }

  return result;
}

id sub_100181EA0(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "vendor")];
  v4 = 0;
  [v2 setGpsAssistantHasClients:sub_10000608C(a1 forNotification:{&v4, 1) != 0, 0}];
  v4 = 1;
  [v2 setGpsAssistantHasClients:sub_10000608C(a1 forNotification:{&v4, 1) != 0, 1}];
  v4 = 5;
  [v2 setGpsAssistantHasClients:sub_10000608C(a1 forNotification:{&v4, 1) != 0, 5}];
  v4 = 4;
  return [v2 setGpsAssistantHasClients:sub_10000608C(a1 forNotification:{&v4, 1) != 0, 4}];
}

uint64_t sub_100181F94(uint64_t a1, int *a2, uint64_t a3)
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

  v9 = *v8;
  *(a3 + 16) = *(v8 + 4);
  *a3 = v9;
  return 1;
}

void sub_100181FF8(_OWORD *a1, uint64_t a2, char a3)
{
  if (*(a2 + 76) >= 0.0 && sub_100072814(a2))
  {
    v6 = *(a2 + 96);
    v7 = v6 == 11 || v6 == 4;
    if (v7 && (a3 & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10170CF60();
      }

      v8 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a2 + 4);
        v10 = *(a2 + 12);
        v11 = *(a2 + 20);
        v12 = *(a2 + 96);
        v21 = 134546433;
        v22 = v9;
        v23 = 2053;
        v24 = v10;
        v25 = 2048;
        v26 = v11;
        v27 = 1024;
        v28 = v12;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#imag,al,ref lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hUnc,%.1f,type,%d", &v21, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10170DF88(a2, (a2 + 96));
      }

      v13 = *(a2 + 16);
      a1[5] = *a2;
      a1[6] = v13;
      v14 = *(a2 + 32);
      v15 = *(a2 + 48);
      v16 = *(a2 + 80);
      a1[9] = *(a2 + 64);
      a1[10] = v16;
      a1[7] = v14;
      a1[8] = v15;
      v17 = *(a2 + 96);
      v18 = *(a2 + 112);
      v19 = *(a2 + 128);
      *(a1 + 220) = *(a2 + 140);
      a1[12] = v18;
      a1[13] = v19;
      a1[11] = v17;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10170CF60();
    }

    v20 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v21) = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#imag,al,ref loc invalid", &v21, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10170E0BC();
    }
  }
}

uint64_t sub_100182230(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_1001822E4(uint64_t a1, int *a2, void *__dst)
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

  memcpy(__dst, v8, 0x658uLL);
  return 1;
}

void sub_100182360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 661) = *(a1 + 664);
  *(a1 + 662) = *(a1 + 665);
  v5 = *(a4 + 1448);
  v6 = *(a4 + 1452);
  v7 = *(a4 + 1456);
  v8 = *(a4 + 1464);
  v9 = *(a4 + 1472);
  if (qword_1025D4650 != -1)
  {
    sub_10197D50C();
  }

  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v11 = (a1 + 1144);
    if (*(a1 + 1167) < 0)
    {
      v11 = *v11;
    }

    *buf = 136316674;
    v59 = v11;
    v60 = 1026;
    v61 = v5;
    v62 = 1026;
    v63 = v7;
    v64 = 1026;
    v65 = v8 & 1;
    v66 = 1026;
    v67 = (v8 >> 1) & 1;
    v68 = 1026;
    v69 = v6;
    v70 = 1026;
    v71 = v9;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,onRhythmicModeOfOperationNotification,modeOfOps,%{public}d,powerMode,%{public}d,1Hz,%{public}d,rhythmic,%{public}d,state,%{public}d,hasRhythmicClients,%{public}d", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_10197CEB8();
    }

    v25 = (a1 + 1144);
    if (*(a1 + 1167) < 0)
    {
      v25 = *v25;
    }

    v40 = 136316674;
    v41 = v25;
    v42 = 1026;
    v43 = v5;
    v44 = 1026;
    v45 = v7;
    v46 = 1026;
    v47 = v8 & 1;
    v48 = 1026;
    v49 = (v8 >> 1) & 1;
    v50 = 1026;
    v51 = v6;
    v52 = 1026;
    v53 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "GPSODOM%s,onRhythmicModeOfOperationNotification,modeOfOps,%{public}d,powerMode,%{public}d,1Hz,%{public}d,rhythmic,%{public}d,state,%{public}d,hasRhythmicClients,%{public}d", &v40, 48);
    v27 = v26;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssOdometer::onRhythmicModeOfOperationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  *(a1 + 664) = v8 & 1;
  if (v5 == 1)
  {
    *(a1 + 665) = v9 & (v7 == 1);
  }

  if ((v8 & 2) != 0)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v12 = (*(a1 + 736) >> 1) & 1;
  }

  *(a1 + 666) = v12;
  if (qword_1025D4650 != -1)
  {
    sub_10197CEB8();
  }

  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v14 = (a1 + 1144);
    if (*(a1 + 1167) < 0)
    {
      v14 = *v14;
    }

    v15 = *(a1 + 661);
    v16 = *(a1 + 664);
    v17 = *(a1 + 662);
    v18 = *(a1 + 665);
    v19 = *(a1 + 663);
    v20 = *(a1 + 666);
    v21 = *(a1 + 667);
    v22 = *(a1 + 668);
    *buf = 136317186;
    v59 = v14;
    v60 = 1026;
    v61 = v15;
    v62 = 1026;
    v63 = v16;
    v64 = 1026;
    v65 = v17;
    v66 = 1026;
    v67 = v18;
    v68 = 1026;
    v69 = v19;
    v70 = 1026;
    v71 = v20;
    v72 = 1026;
    v73 = v21;
    v74 = 1026;
    v75 = v22;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,1Hz before,%{public}d,after,%{public}d,Rhythmic before,%{public}d,after,%{public}d,RhythmicFixQualified before,%{public}d,after,%{public}d,LowPowerMode,%{public}d,InAWalkOrRunWorkout,%{public}d", buf, 0x3Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_10197CEB8();
    }

    v28 = (a1 + 1144);
    if (*(a1 + 1167) < 0)
    {
      v28 = *v28;
    }

    v29 = *(a1 + 661);
    v30 = *(a1 + 664);
    v31 = *(a1 + 662);
    v32 = *(a1 + 665);
    v33 = *(a1 + 663);
    v34 = *(a1 + 666);
    v35 = *(a1 + 667);
    v36 = *(a1 + 668);
    v40 = 136317186;
    v41 = v28;
    v42 = 1026;
    v43 = v29;
    v44 = 1026;
    v45 = v30;
    v46 = 1026;
    v47 = v31;
    v48 = 1026;
    v49 = v32;
    v50 = 1026;
    v51 = v33;
    v52 = 1026;
    v53 = v34;
    v54 = 1026;
    v55 = v35;
    v56 = 1026;
    v57 = v36;
    LODWORD(v39) = 60;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "GPSODOM%s,1Hz before,%{public}d,after,%{public}d,Rhythmic before,%{public}d,after,%{public}d,RhythmicFixQualified before,%{public}d,after,%{public}d,LowPowerMode,%{public}d,InAWalkOrRunWorkout,%{public}d", &v40, v39);
    v38 = v37;
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssOdometer::onRhythmicModeOfOperationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v37);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  v23 = *(a1 + 24);
  if (v23)
  {
    sub_10014F998(v23, *(a1 + 664), *(a1 + 661), *(a1 + 665), *(a1 + 662), *(a1 + 666), *(a1 + 663), *(a1 + 667), *(a1 + 668));
  }

  *(a1 + 736) = v8;
  *(a1 + 728) = v7;
  *(a1 + 724) = v6;
  *(a1 + 744) = v9;
  if (*(a1 + 665) == 1 && *(a1 + 667) == 1)
  {
    v24 = *(a1 + 668);
  }

  else
  {
    v24 = 0;
  }

  *(a1 + 665) = v24 & 1;
}

uint64_t sub_100182868(uint64_t a1)
{
  if (*(a1 + 10) == 1 && *(a1 + 11) == 1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101A85004();
    }

    v2 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#CLProactiveLoc,Warning reset interval requested but new value is ambigous", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A86C30();
    }
  }

  if (*(a1 + 10) == 1)
  {
    v3 = 72;
    if (*(a1 + 8))
    {
      v3 = 64;
    }

    v4 = *(a1 + v3);
  }

  else if (*(a1 + 11) != 1 || (v4 = *(a1 + 88), v4 <= 0.0))
  {
    v4 = *(a1 + 1000);
    if (v4 < 0.0)
    {
      return 0;
    }
  }

  *(a1 + 56) = v4;
  return 1;
}

void sub_100182974(void *a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 1456) == 1)
  {
    v3 = *(a2 + 1472) & (*(a2 + 1448) == 1);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[205];
  if (*(a2 + 1472))
  {
    if (v4)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1018FA228();
      }

      v5 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "GPSODOM,registering or re-registering for path straightness metric", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FA520();
      }

      a1 = [*(v2[205] + 16) register:*(v2[205] + 8) forNotification:4 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1002976C8();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "fStepCountClient not instantiated. Cannot register for path straightness notifications", v12, 2u);
      }

      a1 = sub_10000A100(121, 0);
      if (a1)
      {
        sub_1018FA5FC();
      }
    }
  }

  else if (v4)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1018FA228();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "GPSODOM,unregistering or re-unregistering for path straightness metric", v11, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FA444();
    }

    a1 = [*(v2[205] + 16) unregister:*(v2[205] + 8) forNotification:4];
  }

  v8 = v2[38];
  if (v8)
  {
    v9 = sub_10000B1F8(a1, a2);
    v14 = 1;
    v10.n128_f64[0] = sub_10001A6B0(v9, &v14);
    sub_10014F93C(v8, v10, v3);
  }
}

void sub_100182B78(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452770;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100182BCC(uint64_t result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 28);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
    if ((*(v5 + 28) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 12), a2, a4);
  v6 = *(v5 + 28);
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
  v7 = *(v5 + 17);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

BOOL sub_100182C90(_BOOL8 result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = sub_100182FA8(result);
    if (!sub_10041ECEC(v4))
    {
      sub_101882688();
    }

    v5 = *(a2 + 28);
    *(a2 + 8) = v4;
    v6 = *(v3 + 4);
    *(a2 + 28) = v5 | 3;
    *(a2 + 16) = v6;
    v7 = sub_100182E84((v3 + 8));
    result = sub_1000183C8(v7);
    if (!result)
    {
      sub_1018826B4();
    }

    v8 = *(a2 + 28);
    *(a2 + 12) = v7;
    *(a2 + 20) = *(v3 + 16);
    v9 = *(v3 + 24);
    *(a2 + 28) = v8 | 0x1C;
    *(a2 + 17) = v9;
  }

  return result;
}

uint64_t sub_100182D24(uint64_t a1)
{
  *(a1 + 128) |= 0x1000u;
  if (!*(a1 + 88))
  {
    operator new();
  }

  return *(a1 + 88);
}

uint64_t sub_100182DA4(unsigned int *a1, unsigned int a2)
{
  v3 = a1[7];
  if (v3)
  {
    if (v3)
    {
      v6 = a1[2];
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = a1[7];
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    v7 = (v3 & 2) + v4;
    if ((v3 & 4) != 0)
    {
      v8 = a1[3];
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = a1[7];
      }

      else
      {
        v9 = 2;
      }

      v7 += v9;
    }

    if ((v3 & 8) != 0)
    {
      v10 = a1[5];
      if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
        v3 = a1[7];
      }

      else
      {
        v11 = 2;
      }

      v7 += v11;
    }

    result = ((v3 >> 3) & 2) + v7;
  }

  else
  {
    result = 0;
  }

  a1[6] = result;
  return result;
}

uint64_t sub_100182E84(int *a1)
{
  if ((*a1 + 1) < 4)
  {
    return (*a1 + 2);
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "ConvertGnssRhythmicModeToProtobuf,unhandled type,%{public}d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101B8B850(a1);
    return 0;
  }

  return result;
}

uint64_t sub_100182F78(uint64_t result)
{
  *result = off_102452770;
  *(result + 8) = dword_100000000;
  *(result + 16) = 0;
  *(result + 20) = 0;
  *(result + 28) = 0;
  return result;
}

uint64_t sub_100182FA8(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 3)
  {
    return dword_101D7A830[v1];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v4 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    v6[0] = 67240192;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "ConvertGnssModeOfOperationToProtobuf,unhandled type,%{public}d", v6, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101B8B75C(a1);
    return 0;
  }

  return result;
}
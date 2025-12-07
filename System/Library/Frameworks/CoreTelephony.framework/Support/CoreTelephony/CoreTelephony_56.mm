void sub_10038BE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  sub_10038E4E4(&a48);
  _Unwind_Resume(a1);
}

void LazuliProvisioningServerWrapper::restartProvisioning(LazuliProvisioningServerWrapper *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 14);
      if (v4)
      {
        v5 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = (this + 128);
          if (*(this + 151) < 0)
          {
            v6 = *v6;
          }

          LODWORD(__p[0]) = 136446210;
          *(__p + 4) = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Erasing server folder and restarting provisioning", __p, 0xCu);
        }

        v7 = *(this + 16);
        sub_10000501C(__p, "Restart provisioning");
        sub_100A9B39C(this + 72, v7, __p);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }

        v8 = *(this + 40);
        if (*(this + 151) < 0)
        {
          sub_100005F2C(__p, *(this + 16), *(this + 17));
        }

        else
        {
          *__p = *(this + 8);
          v13 = *(this + 18);
        }

        sub_10075E230(v8, __p);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }

        v10 = *(this + 39);
        *(this + 38) = 0;
        *(this + 39) = 0;
        if (v10)
        {
          sub_100004A34(v10);
        }

        v11 = *(this + 37);
        *(this + 36) = 0;
        *(this + 37) = 0;
        if (v11)
        {
          sub_100004A34(v11);
        }

        (*(*v4 + 240))(v4, *(this + 14));
        (*(*v4 + 184))(v4, *(this + 14));
LABEL_25:
        sub_100004A34(v3);
        return;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v9 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    sub_10176DD48();
  }

  if (v3)
  {
    goto LABEL_25;
  }
}

uint64_t LazuliProvisioningServerWrapper::startDeProvisioning(LazuliProvisioningServerWrapper *this, uint64_t a2)
{
  if (LazuliProvisioningServerWrapper::didReceiveAnyDisabledXml(this))
  {
    v3 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (this + 128);
      if (*(this + 151) < 0)
      {
        v4 = *v4;
      }

      *buf = 136446210;
      *&buf[4] = v4;
      v5 = "#I [%{public}s] Access is disabled (deprovisioning ignored)...";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, buf, 0xCu);
      return 0;
    }

    return 0;
  }

  v6 = *(this + 45);
  if (!v6 || !*(v6 + 136))
  {
    v44[0] = 0;
    memset(v43, 0, sizeof(v43));
    memset(v42, 0, sizeof(v42));
    memset(v41, 0, sizeof(v41));
    *buf = 0u;
    memset(v40, 0, sizeof(v40));
    v44[1] = 1;
    memset(&v44[2], 0, 30);
    *&v44[28] = -1;
    memset(&v45, 0, sizeof(v45));
    v8 = *(this + 15);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = *(this + 14);
        if (v10)
        {
          v11 = (*(*v10 + 112))(v10, *(this + 14));
          std::string::operator=(buf, v11);
          std::string::operator=((v40 + 8), (v11 + 24));
          std::string::operator=(v41, (v11 + 48));
          std::string::operator=(&v41[1], (v11 + 72));
          std::string::operator=(v42, (v11 + 96));
          std::string::operator=(&v42[1], (v11 + 120));
          std::string::operator=(v43, (v11 + 144));
          std::string::operator=(&v43[1], (v11 + 168));
          v12 = *(v11 + 208);
          *v44 = *(v11 + 192);
          *&v44[16] = v12;
          std::string::operator=(&v45, (v11 + 224));
          if (LazuliProvisioningServerWrapper::canStartProvisioning(this, buf))
          {
            *__val = 0;
            *v26 = 0u;
            v27 = 0u;
            LazuliProvisioningServerWrapper::getTokenAndVersionFromXml(this, v26);
            v13 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = (this + 128);
              if (*(this + 151) < 0)
              {
                v14 = *v14;
              }

              *v29 = 136446210;
              v30 = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Starting de-provisioning...", v29, 0xCu);
            }

            v15 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = this + 128;
              v17 = this + 128;
              if (*(this + 151) < 0)
              {
                v17 = *v16;
              }

              v18 = asStringBool(v44[1]);
              v19 = v18;
              if (*(this + 151) < 0)
              {
                v16 = *v16;
              }

              v20 = v26[0];
              if ((SBYTE7(v27) & 0x80u) == 0)
              {
                v20 = v26;
              }

              if (BYTE8(v27))
              {
                v21 = v20;
              }

              else
              {
                v21 = "nil";
              }

              if (LOBYTE(__val[1]) == 1)
              {
                std::to_string(&__p, __val[0]);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                *v29 = 136447234;
                v30 = v17;
                v31 = 2080;
                v32 = v19;
                v33 = 2080;
                v34 = v16;
                v35 = 2082;
                v36 = v21;
                v37 = 2082;
                v38 = p_p;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Carrier based: %s, url: %s, token: %{public}s, version: %{public}s", v29, 0x34u);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                *v29 = 136447234;
                v30 = v17;
                v31 = 2080;
                v32 = v18;
                v33 = 2080;
                v34 = v16;
                v35 = 2082;
                v36 = v21;
                v37 = 2082;
                v38 = "nil";
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Carrier based: %s, url: %s, token: %{public}s, version: %{public}s", v29, 0x34u);
              }
            }

            LazuliProvisioningServerWrapper::resetRetryTimer(this);
            if (v44[1])
            {
              LazuliProvisioningServerWrapper::getWebHelperInitializer(this, v29);
              sub_100413F40(v29);
            }

            LazuliProvisioningServerWrapper::getWebHelperInitializer(this, v29);
            sub_100783AA8(v29);
          }

          LazuliProvisioningServerWrapper::handleDeprovisioningComplete(this, 0);
LABEL_48:
          sub_100004A34(v9);
LABEL_49:
          sub_10038E4E4(buf);
          return 0;
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v23 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      sub_10176DDB8();
    }

    if (!v9)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v3 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (this + 128);
    if (*(this + 151) < 0)
    {
      v7 = *v7;
    }

    *buf = 136446210;
    *&buf[4] = v7;
    v5 = "#I [%{public}s] Server is Access-Control (deprovisioning ignored)...";
    goto LABEL_12;
  }

  return 0;
}

void sub_10038C8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v46);
  sub_10038E4E4(&a46);
  _Unwind_Resume(a1);
}

uint64_t LazuliProvisioningServerWrapper::eraseAccessControlConfigForServer(LazuliProvisioningServerWrapper *this)
{
  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 151) < 0)
    {
      v3 = *(this + 16);
      sub_100005F2C(__p, v3, *(this + 17));
    }

    else
    {
      v3 = this + 128;
      *__p = *(this + 8);
      v11 = *(this + 18);
    }

    v4 = __p;
    if (v11 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136446466;
    *&buf[4] = v3;
    v13 = 2082;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Erasing Access control config for server: %{public}s", buf, 0x16u);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = *(this + 40);
  if (v5)
  {
    if (*(this + 151) < 0)
    {
      sub_100005F2C(__p, *(this + 16), *(this + 17));
    }

    else
    {
      *__p = *(this + 8);
      v11 = *(this + 18);
    }

    v6 = sub_1002CB0A8();
    sub_10000501C(buf, v6);
    sub_10075E5D0(v5, __p, buf);
    if (v15 < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = *(this + 45);
  if (v7)
  {
    v8 = *(v7 + 144);
    *(v7 + 136) = 0;
    *(v7 + 144) = 0;
    if (v8)
    {
      sub_100004A34(v8);
    }
  }

  return 1;
}

void LazuliProvisioningServerWrapper::setXmlCollection(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v4 = *(a1 + 368);
    *(a1 + 360) = v2;
    *(a1 + 368) = v3;
    if (v4)
    {
      sub_100004A34(v4);
    }
  }
}

uint64_t LazuliProvisioningServerWrapper::getXmlCollection@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 368);
  *a2 = *(this + 360);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

LazuliProvisioningWebHelper *LazuliProvisioningServerWrapper::dump(LazuliProvisioningServerWrapper *this)
{
  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 128);
    if (*(this + 151) < 0)
    {
      v3 = *v3;
    }

    v25 = 136446466;
    v26 = v3;
    v27 = 2082;
    v28 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] url: %{public}s", &v25, 0x16u);
  }

  v4 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (this + 128);
    if (*(this + 151) < 0)
    {
      v5 = *v5;
    }

    v6 = *(this + 53);
    if (v6 > 4)
    {
      v7 = "??";
    }

    else
    {
      v7 = off_101E46D08[v6];
    }

    v8 = CSIBOOLAsString(*(this + 208));
    v25 = 136446722;
    v26 = v5;
    v27 = 2080;
    v28 = v7;
    v29 = 2080;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] DynamicParameters [.didFail: %s, .needsPSAccess: %s]", &v25, 0x20u);
  }

  v9 = *(this + 27);
  if (v9)
  {
    sub_1004633F0(v9, 1);
  }

  else
  {
    v10 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (this + 128);
      if (*(this + 151) < 0)
      {
        v11 = *v11;
      }

      v25 = 136446210;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Full XML timer --> not active", &v25, 0xCu);
    }
  }

  v12 = *(this + 31);
  if (v12)
  {
    sub_1004633F0(v12, 1);
  }

  else
  {
    v13 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = (this + 128);
      if (*(this + 151) < 0)
      {
        v14 = *v14;
      }

      v25 = 136446210;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Refresh XML timer --> not active", &v25, 0xCu);
    }
  }

  v15 = *(this + 29);
  if (v15)
  {
    sub_1004633F0(v15, 1);
  }

  else
  {
    v16 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = (this + 128);
      if (*(this + 151) < 0)
      {
        v17 = *v17;
      }

      v25 = 136446210;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Unauthorized XML timer --> not active", &v25, 0xCu);
    }
  }

  v18 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = (this + 128);
    if (*(this + 151) < 0)
    {
      v19 = *v19;
    }

    v20 = *(this + 38);
    if (*(this + 36))
    {
      v21 = "YES";
    }

    else
    {
      v21 = "NO";
    }

    v25 = 136446722;
    if (v20)
    {
      v22 = "YES";
    }

    else
    {
      v22 = "NO";
    }

    v26 = v19;
    v27 = 2080;
    v28 = v21;
    v29 = 2080;
    v30 = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] 3GPP provisioner: %s, non-CarrierBased provisioner: %s", &v25, 0x20u);
  }

  v23 = *(this + 36);
  if (v23)
  {
    LazuliProvisioningWebHelper::describe(v23);
  }

  result = *(this + 38);
  if (result)
  {
    return LazuliProvisioningWebHelper::describe(result);
  }

  return result;
}

void LazuliProvisioningServerWrapper::getAdditionalServers(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t LazuliProvisioningServerWrapper::isAppAttestationOngoing(LazuliProvisioningServerWrapper *this)
{
  result = *(this + 38);
  if (result)
  {
    return sub_10078502C(result);
  }

  return result;
}

void LazuliProvisioningServerWrapper::attestationComplete(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 96);
      if (v6)
      {
        (*(*v6 + 96))(v6, a2);
        v7 = *(a1 + 320);
        if (*(a1 + 151) < 0)
        {
          sub_100005F2C(__p, *(a1 + 128), *(a1 + 136));
        }

        else
        {
          *__p = *(a1 + 128);
          v10 = *(a1 + 144);
        }

        sub_100760BC4(v7, __p, a2);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    sub_10176DE28();
    if (!v5)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v5)
  {
LABEL_14:
    sub_100004A34(v5);
  }
}

void LazuliProvisioningServerWrapper::readAttestationKeyFromDisk(LazuliProvisioningServerWrapper *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 40);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *(this + 8);
    v5 = *(this + 18);
  }

  sub_100760FC0(v3, __p, a2);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10038D224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningServerWrapper::readVapidFromDisk(LazuliProvisioningServerWrapper *this@<X0>, void **a2@<X8>)
{
  v3 = *(this + 40);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *(this + 8);
    v5 = *(this + 18);
  }

  sub_1007618C8(v3, __p, a2);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10038D2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliProvisioningServerWrapper::removeVapidFromDisk(LazuliProvisioningServerWrapper *this)
{
  v1 = *(this + 40);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *(this + 8);
    v5 = *(this + 18);
  }

  v2 = sub_100761DA8(v1, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_10038D344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningServerWrapper::readPushUrlFromDisk(LazuliProvisioningServerWrapper *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 40);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *(this + 8);
    v5 = *(this + 18);
  }

  sub_100762520(v3, __p, a2);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10038D3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliProvisioningServerWrapper::removePushUrlFromDisk(LazuliProvisioningServerWrapper *this)
{
  v1 = *(this + 40);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *(this + 8);
    v5 = *(this + 18);
  }

  v2 = sub_1007629C0(v1, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_10038D464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningServerWrapper::requestProvisioningToken(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 112);
      if (v6)
      {
        (*(*v6 + 224))(v6, a2);
        goto LABEL_8;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_10176DE98();
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

LABEL_8:
  sub_100004A34(v5);
}

void LazuliProvisioningServerWrapper::eraseProvisioningToken(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 112);
      if (v6)
      {
        (*(*v6 + 232))(v6, a2);
        goto LABEL_8;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_10176DF08();
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

LABEL_8:
  sub_100004A34(v5);
}

void LazuliProvisioningServerWrapper::eraseUserInteractionRequiredXml(LazuliProvisioningServerWrapper *this)
{
  v2 = sub_100B39268();
  v3 = *(this + 45);
  if (v3)
  {
    v4 = v2;
    v5 = *(v3 + 152);
    if (v5)
    {
      v6 = sub_100B39274(v5);
      v8 = v7;
      v9 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          v11 = (this + 128);
          if (*(this + 151) < 0)
          {
            v11 = *v11;
          }

          *buf = 136446466;
          *&buf[4] = v11;
          *&buf[12] = 2048;
          *&buf[14] = v6;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] User intraction XML is valid: %ld", buf, 0x16u);
        }
      }

      else
      {
        if (v10)
        {
          v12 = (this + 128);
          if (*(this + 151) < 0)
          {
            v12 = *v12;
          }

          *buf = 136446466;
          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = v4;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Erasing %s of invalid validity", buf, 0x16u);
        }

        v13 = *(this + 40);
        if (*(this + 151) < 0)
        {
          sub_100005F2C(buf, *(this + 16), *(this + 17));
        }

        else
        {
          *buf = *(this + 8);
          *&buf[16] = *(this + 18);
        }

        sub_10000501C(__p, v4);
        sub_10075E5D0(v13, buf, __p);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }
    }
  }
}

void LazuliProvisioningServerWrapper::eraseUnauthorizedXml(LazuliProvisioningServerWrapper *this)
{
  v2 = sub_100579D70();
  v3 = *(this + 45);
  if (v3)
  {
    v4 = v2;
    v5 = *(v3 + 72);
    if (v5)
    {
      v6 = sub_100579D8C(v5);
      v8 = v7;
      v9 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          v11 = (this + 128);
          if (*(this + 151) < 0)
          {
            v11 = *v11;
          }

          *buf = 136446466;
          *&buf[4] = v11;
          *&buf[12] = 2048;
          *&buf[14] = v6;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Unauthorized XML is valid: %ld", buf, 0x16u);
        }
      }

      else
      {
        if (v10)
        {
          v12 = (this + 128);
          if (*(this + 151) < 0)
          {
            v12 = *v12;
          }

          *buf = 136446466;
          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = sub_100579D70();
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Erasing %s of invalid validity", buf, 0x16u);
        }

        v13 = *(this + 40);
        if (*(this + 151) < 0)
        {
          sub_100005F2C(buf, *(this + 16), *(this + 17));
        }

        else
        {
          *buf = *(this + 8);
          *&buf[16] = *(this + 18);
        }

        sub_10000501C(__p, v4);
        sub_10075E5D0(v13, buf, __p);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }
    }
  }
}

uint64_t LazuliProvisioningServerWrapper::handleFeatureUnavailable(LazuliProvisioningServerWrapper *this)
{
  LazuliProvisioningServerWrapper::eraseUserInteractionRequiredXml(this);
  LazuliProvisioningServerWrapper::eraseUnauthorizedXml(this);
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  CurrentConfig = LazuliProvisioningServerWrapper::getCurrentConfig(this);
  sub_10038E288(v4, CurrentConfig);
  if ((BYTE1(v5) & 1) == 0)
  {
    LazuliProvisioningServerWrapper::eraseFullAndRefreshXmlForServer(this);
    LazuliProvisioningServerWrapper::eraseAccessControlConfigForServer(this);
  }

  LazuliProvisioningServerWrapper::resetRetryTimer(this);
  *(this + 47) = 0;
  return sub_10038E4E4(v4);
}

void LazuliProvisioningServerWrapper::scheduleRetry(LazuliProvisioningServerWrapper *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a4;
  LazuliProvisioningServerWrapper::resetRetryTimer(a1);
  operator new();
}

void sub_10038DE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002B644(v10 - 104);
  sub_1002535AC(v10 - 160);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  sub_10038B6D4(&a9);
  _Unwind_Resume(a1);
}

void LazuliProvisioningServerWrapper::requestSigning(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 96);
      if (v6)
      {
        (*(*v6 + 80))(v6, a2);
LABEL_11:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_10176DF78();
  }

  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  (*(*a1 + 64))(a1, 0, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    goto LABEL_11;
  }
}

void LazuliProvisioningServerWrapper::signingComplete(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v3 = *(*v2 + 80);

    v3();
  }

  else
  {
    v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176DFE8();
    }
  }
}

uint64_t sub_10038E0A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 87) < 0)
  {
    sub_100005F2C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v8 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v8;
  }

  if (*(a2 + 111) < 0)
  {
    sub_100005F2C((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v9 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v9;
  }

  v10 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_10038E1A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(v1 + 24);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    sub_100004A34(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038E1FC(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

char *sub_10038E288(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_100005F2C(__dst + 120, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(__dst + 17) = *(a2 + 17);
    *(__dst + 120) = v9;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100005F2C(__dst + 144, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = a2[9];
    *(__dst + 20) = *(a2 + 20);
    *(__dst + 9) = v10;
  }

  if (*(a2 + 191) < 0)
  {
    sub_100005F2C(__dst + 168, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    *(__dst + 23) = *(a2 + 23);
    *(__dst + 168) = v11;
  }

  v12 = a2[13];
  *(__dst + 12) = a2[12];
  *(__dst + 13) = v12;
  if (*(a2 + 247) < 0)
  {
    sub_100005F2C(__dst + 224, *(a2 + 28), *(a2 + 29));
  }

  else
  {
    v13 = a2[14];
    *(__dst + 30) = *(a2 + 30);
    *(__dst + 14) = v13;
  }

  return __dst;
}

void sub_10038E420(_Unwind_Exception *exception_object)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

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

uint64_t sub_10038E4E4(uint64_t a1)
{
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

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

uint64_t sub_10038E598(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_10038E5E8(uint64_t a1)
{
  if (*(a1 + 1232) == 1)
  {
    if (*(a1 + 1168) == 1)
    {
      sub_10038E6A4(a1 + 720);
    }

    if (*(a1 + 712) == 1)
    {
      sub_100009970(a1 + 688, *(a1 + 696));
    }

    if (*(a1 + 648) == 1)
    {
      sub_10038E7C0(a1 + 120);
    }

    if (*(a1 + 112) == 1)
    {
      v3 = (a1 + 88);
      sub_1002CB430(&v3);
      sub_100009970(a1 + 64, *(a1 + 72));
    }

    if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

uint64_t sub_10038E6A4(uint64_t a1)
{
  if (*(a1 + 440) == 1 && *(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  if (*(a1 + 408) == 1 && *(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 360) == 1)
  {
    if (*(a1 + 352) == 1 && *(a1 + 351) < 0)
    {
      operator delete(*(a1 + 328));
    }

    if (*(a1 + 327) < 0)
    {
      operator delete(*(a1 + 304));
    }
  }

  if (*(a1 + 256) == 1)
  {
    if (*(a1 + 239) < 0)
    {
      operator delete(*(a1 + 216));
    }

    if (*(a1 + 215) < 0)
    {
      operator delete(*(a1 + 192));
    }

    if (*(a1 + 191) < 0)
    {
      operator delete(*(a1 + 168));
    }

    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }
  }

  if (*(a1 + 112) == 1)
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
  }

  return a1;
}

uint64_t sub_10038E7C0(uint64_t a1)
{
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  sub_100009970(a1 + 80, *(a1 + 88));
  sub_100009970(a1 + 56, *(a1 + 64));
  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_10038E99C(void *a1, unsigned int *a2, uint64_t *a3, __int128 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E46748;
  sub_10038EAFC((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_10038EA18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E46748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10038EA6C(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
}

uint64_t sub_10038EAFC(uint64_t a1, unsigned int *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  v6 = a3[1];
  v8 = *a3;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10075C9D8(a1, v5, &v8, a4);
  if (v9)
  {
    sub_100004A34(v9);
  }

  return a1;
}

void sub_10038EB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038EBF8(void *a1, unsigned int *a2, uint64_t *a3, __int128 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E46798;
  sub_10038ECD4((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_10038EC74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E46798;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10038ECD4(uint64_t a1, unsigned int *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  v6 = a3[1];
  v8 = *a3;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10098DDCC(a1, v5, &v8, a4);
  if (v9)
  {
    sub_100004A34(v9);
  }

  return a1;
}

void sub_10038ED34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10038ED4C(ctu::OsLogLogger *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v8 = *(this + 4);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 1);
  *(this + 1) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

uint64_t *sub_10038EE14(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_10002B644(v2 + 88);
    v3 = *(v2 + 80);
    *(v2 + 80) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    if (*(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      sub_100004A34(v4);
    }

    v5 = *(v2 + 16);
    if (v5)
    {
      dispatch_release(v5);
    }

    ctu::OsLogLogger::~OsLogLogger(v2);

    operator delete();
  }

  return result;
}

void sub_10038EED0(uint64_t a1)
{
  v9 = a1;
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(v2 + 104);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4 && *(v2 + 96))
    {
      *(v2 + 212) = *v1;
      v5 = *(v2 + 296);
      *(v2 + 288) = 0;
      *(v2 + 296) = 0;
      if (v5)
      {
        sub_100004A34(v5);
      }

      v6 = *(v2 + 312);
      *(v2 + 304) = 0;
      *(v2 + 312) = 0;
      if (v6)
      {
        sub_100004A34(v6);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v2 + 56));
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = (v2 + 128);
    if (*(v2 + 151) < 0)
    {
      v8 = *v8;
    }

    *buf = 136446210;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Client has disappeared", buf, 0xCu);
  }

  if (!v4)
  {
LABEL_15:
    operator delete();
  }

LABEL_14:
  sub_100004A34(v4);
  goto LABEL_15;
}

void sub_10038F03C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

uint64_t sub_10038F068(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v4 = sub_10038F0E0(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *(a2 + 23) >= 0 ? a2 : *a2;
  v7 = *(v5 + 55) >= 0 ? (v5 + 32) : *(v5 + 32);
  if (strcasecmp(v6, v7) < 0)
  {
    return v3;
  }

  return v5;
}

uint64_t sub_10038F0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    do
    {
      if (*(v5 + 55) >= 0)
      {
        v7 = (v5 + 32);
      }

      else
      {
        v7 = *(v5 + 32);
      }

      v8 = strcasecmp(v7, v6);
      if (v8 >= 0)
      {
        a4 = v5;
      }

      v5 = *(v5 + ((v8 >> 28) & 8));
    }

    while (v5);
  }

  return a4;
}

void *sub_10038F1DC(void *a1, uint64_t *a2, void *a3, _OWORD *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E467E8;
  sub_10038F2D4((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_10038F258(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E467E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10038F2D4(uint64_t a1, uint64_t *a2, void *a3, _OWORD *a4)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1002CAE28(a1, &v7, a3, a4);
  if (v8)
  {
    sub_100004A34(v8);
  }

  return a1;
}

void sub_10038F330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038F3BC(void *a1, uint64_t *a2, _OWORD *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E46838;
  sub_10038F4B4((a1 + 3), a2, a3);
  return a1;
}

void sub_10038F438(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E46838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10038F4B4(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100579C6C(a1, &v6, a3);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

void sub_10038F510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038F59C(void *a1, uint64_t *a2, _OWORD *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E46888;
  sub_10038F694((a1 + 3), a2, a3);
  return a1;
}

void sub_10038F618(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E46888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10038F694(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1008D70A4(a1, &v6, a3);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

void sub_10038F6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038F77C(void *a1, uint64_t *a2, _OWORD *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E468D8;
  sub_10038F874((a1 + 3), a2, a3);
  return a1;
}

void sub_10038F7F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E468D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10038F874(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100B39160(a1, &v6, a3);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

void sub_10038F8D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038F95C(void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E46928;
  sub_10038FA54((a1 + 3), a2, a3);
  return a1;
}

void sub_10038F9D8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E46928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10038FA54(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100A2B0D4(a1, &v6, a3);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

void sub_10038FAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038FB3C(void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E46978;
  sub_10038FC34(a1 + 3, a2, a3);
  return a1;
}

void sub_10038FBB8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E46978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10038FC34(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100649088(a1, &v6, a3);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

void sub_10038FC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038FD44(void *a1, unsigned int *a2, uint64_t *a3, NSObject **a4, const char **a5, uint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E469C8;
  sub_10038FEAC((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void sub_10038FDC0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E469C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10038FE14(uint64_t a1)
{
  sub_10002B644(a1 + 112);
  v2 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    dispatch_release(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
}

uint64_t sub_10038FEAC(uint64_t a1, unsigned int *a2, uint64_t *a3, NSObject **a4, const char **a5, uint64_t *a6)
{
  v7 = *a2;
  v8 = a3[1];
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004630A4(a1, v7, &v10, a4, *a5, a6);
  if (v11)
  {
    sub_100004A34(v11);
  }

  return a1;
}

void sub_10038FF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038FF28(void *a1)
{
  *a1 = off_101E46A18;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10038FF74(void *a1)
{
  *a1 = off_101E46A18;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_100390054(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E46A18;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_100390094(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003900A4(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003900E4(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[1])
      {
LABEL_20:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 104);
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          v8 = *(v3 + 96);
          if (v8)
          {
            if (*(v3 + 151) < 0)
            {
              sub_100005F2C(__p, *(v3 + 128), *(v3 + 136));
            }

            else
            {
              *__p = *(v3 + 128);
              v12 = *(v3 + 144);
            }

            (*(*v8 + 40))(v8, __p);
            if (SHIBYTE(v12) < 0)
            {
              operator delete(__p[0]);
            }

LABEL_19:
            sub_100004A34(v7);
            goto LABEL_20;
          }
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 56));
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (v3 + 128);
        if (*(v3 + 151) < 0)
        {
          v10 = *v10;
        }

        LODWORD(__p[0]) = 136446210;
        *(__p + 4) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Client disappeared while handling refresh timer expiry", __p, 0xCu);
      }

      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }
}

void sub_100390280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_100004A34(v15);
  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1003902C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10039030C(void *a1)
{
  *a1 = off_101E46A98;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100390358(void *a1)
{
  *a1 = off_101E46A98;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_100390438(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E46A98;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_100390478(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100390488(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003904C8(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[1])
      {
LABEL_20:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 104);
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          v8 = *(v3 + 96);
          if (v8)
          {
            if (*(v3 + 151) < 0)
            {
              sub_100005F2C(__p, *(v3 + 128), *(v3 + 136));
            }

            else
            {
              *__p = *(v3 + 128);
              v12 = *(v3 + 144);
            }

            (*(*v8 + 48))(v8, __p);
            if (SHIBYTE(v12) < 0)
            {
              operator delete(__p[0]);
            }

LABEL_19:
            sub_100004A34(v7);
            goto LABEL_20;
          }
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 56));
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (v3 + 128);
        if (*(v3 + 151) < 0)
        {
          v10 = *v10;
        }

        LODWORD(__p[0]) = 136446210;
        *(__p + 4) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Client disappeared while handling full XML timer expiry", __p, 0xCu);
      }

      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }
}

void sub_100390664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_100004A34(v15);
  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1003906A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003906F0(void *a1)
{
  *a1 = off_101E46B18;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10039073C(void *a1)
{
  *a1 = off_101E46B18;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_10039081C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E46B18;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_10039085C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10039086C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003908AC(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[1])
      {
LABEL_20:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 104);
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          v8 = *(v3 + 96);
          if (v8)
          {
            if (*(v3 + 151) < 0)
            {
              sub_100005F2C(__p, *(v3 + 128), *(v3 + 136));
            }

            else
            {
              *__p = *(v3 + 128);
              v12 = *(v3 + 144);
            }

            (*(*v8 + 56))(v8, __p);
            if (SHIBYTE(v12) < 0)
            {
              operator delete(__p[0]);
            }

LABEL_19:
            sub_100004A34(v7);
            goto LABEL_20;
          }
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 56));
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (v3 + 128);
        if (*(v3 + 151) < 0)
        {
          v10 = *v10;
        }

        LODWORD(__p[0]) = 136446210;
        *(__p + 4) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Client disappeared while handling unauthorized XML timer expiry", __p, 0xCu);
      }

      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }
}

void sub_100390A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_100004A34(v15);
  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_100390A88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100390AD4(uint64_t a1)
{
  *a1 = off_101E46B98;
  sub_100007E44(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100390B28(uint64_t a1)
{
  *a1 = off_101E46B98;
  sub_100007E44(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_100390C64(uint64_t a1, void *a2)
{
  *a2 = off_101E46B98;
  v4 = a2 + 1;
  if (*(a1 + 31) < 0)
  {
    sub_100005F2C(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *v4 = v5;
  }

  return sub_1001058C4((a2 + 4), a1 + 32);
}

void sub_100390CE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100390D08(char *a1)
{
  sub_100390DE0((a1 + 8));

  operator delete(a1);
}

uint64_t sub_100390D44(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100390D94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100390DE0(uint64_t a1)
{
  sub_100007E44(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_100390E30(uint64_t a1)
{
  *a1 = off_101E46C18;
  sub_100007E44(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100390E84(uint64_t a1)
{
  *a1 = off_101E46C18;
  sub_100007E44(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_100390FB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E46C18;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  return sub_1001058C4(a2 + 40, a1 + 40);
}

void sub_100391030(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_100391054(char *a1)
{
  sub_1003911B0((a1 + 8));

  operator delete(a1);
}

uint64_t sub_100391090(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 320);
  if (*(v4 + 151) < 0)
  {
    sub_100005F2C(__p, *(v4 + 128), *(v4 + 136));
  }

  else
  {
    *__p = *(v4 + 128);
    v9 = *(v4 + 144);
  }

  sub_100762124(v5, __p, a2);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(a1 + 64);
  if (!v6)
  {
    sub_100022DB4();
  }

  return (*(*v6 + 48))(v6, a2);
}

void sub_100391148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100391164(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003911B0(uint64_t a1)
{
  sub_100007E44(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void *sub_100391200(void *a1)
{
  *a1 = off_101E46C98;
  sub_10002B644((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100391250(void *a1)
{
  *a1 = off_101E46C98;
  sub_10002B644((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_100391348(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100391368(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E46C98;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10009CF40(a2 + 32, a1 + 32);
}

void sub_1003913D4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003913F4(void *a1)
{
  sub_100287520(a1 + 8);

  operator delete(a1);
}

void sub_100391430(void *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v3[4] = a1[2];
  v3[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3[6] = v1;
  sub_10009CF40(&v4, (a1 + 4));
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (v1 + 8));
  operator new();
}

void sub_100391598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1003915C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100391614(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = v1[1];
  if (v2)
  {
    v3 = v1[2];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*v1)
      {
        sub_10038EE14((v3 + 384), 0);
        sub_10038EE14((v3 + 384), 0);
        v6 = v1[6];
        if (!v6)
        {
          sub_100022DB4();
        }

        (*(*v6 + 48))(v6);
      }

      sub_100004A34(v5);
    }
  }

  sub_1003916F0(&v9);
  return sub_1000049E0(&v8);
}

void sub_1003916CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004A34(v9);
  sub_1003916F0(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003916F0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10002B644(v1 + 24);
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1003917F0(uint64_t a1, void *a2, void *a3)
{
  v6 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v10, kCtLoggingSystemName, "rm.mdl");
  ctu::OsLogLogger::OsLogLogger(v11, &v10);
  ctu::OsLogLogger::OsLogLogger(v6, v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  ctu::OsLogContext::~OsLogContext(&v10);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_101E46D90;
  v7 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 68) = 2;
  *(a1 + 72) = 8;
  *(a1 + 73) = 0;
  return a1;
}

void sub_1003918F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  RadioModelInterface::~RadioModelInterface(v3);
  _Unwind_Resume(a1);
}

void sub_10039192C(void *a1)
{
  *a1 = off_101E46D90;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  RadioModelInterface::~RadioModelInterface(a1);
}

void sub_1003919AC(void *a1)
{
  sub_10039192C(a1);

  operator delete();
}

void sub_1003919E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 73);
    if (v3 > 4)
    {
      v4 = "???";
    }

    else
    {
      v4 = off_101E46FB0[v3];
    }

    v5 = *(a1 + 74);
    if (v5 > 4)
    {
      v6 = "???";
    }

    else
    {
      v6 = off_101E46FB0[v5];
    }

    v11 = 136315650;
    v12 = v4;
    v13 = 2080;
    v14 = v6;
    v15 = 2080;
    v16 = asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Clearing: Current: %s, Pending: %s and Operating Mode: %s", &v11, 0x20u);
  }

  *(a1 + 72) = 8;
  *(a1 + 74) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 48);
      if (v10)
      {
        (*(*v10 + 40))(v10, *(a1 + 72));
      }

      sub_100004A34(v9);
    }
  }
}

void sub_100391B50(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = printers::asString((a1 + 64), v3);
    v15 = 2080;
    v16 = printers::asString((a1 + 65), v4);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Radio Intialized: %s, Ticket Available: %s", &v13, 0x16u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asString();
    v6 = asString();
    v13 = 136315394;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Current Modes: Operating %s & Airplane Mode: %s", &v13, 0x16u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 73);
    if (v7 > 4)
    {
      v8 = "???";
    }

    else
    {
      v8 = off_101E46FB0[v7];
    }

    v9 = *(a1 + 74);
    if (v9 > 4)
    {
      v10 = "???";
    }

    else
    {
      v10 = off_101E46FB0[v9];
    }

    v13 = 136315394;
    v14 = v8;
    v15 = 2080;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Operating Mode Requests: Current %s & Pending %s", &v13, 0x16u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = printers::asString((a1 + 75), v11);
    v13 = 136315138;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Send Airplane Mode Notification: %s", &v13, 0xCu);
  }
}

atomic_uint **sub_100391D68(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I baseband on", v4, 2u);
  }

  sub_10014BF94(&event::baseband::on[3]);
  v2 = sub_100081A98(&event::baseband::on[1]);
  return sub_100081ADC(v2);
}

atomic_uint **sub_100391DE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I baseband off (reset)", v4, 2u);
  }

  sub_10014BF94(&event::baseband::reset[3]);
  v2 = sub_100081A98(&event::baseband::reset[1]);
  return sub_100081ADC(v2);
}

atomic_uint **sub_100391E60(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I baseband off (shutdown)", v4, 2u);
  }

  sub_10014BF94(&event::baseband::off[3]);
  v2 = sub_100081A98(&event::baseband::off[1]);
  return sub_100081ADC(v2);
}

void sub_100391EDC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10176E058(a1, v2);
  }

  if (*(a1 + 73))
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    *v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    v23 = 0u;
    sub_10000C320(&v23);
    v3 = sub_10000C030(&v24, "\n=== Operating Mode Status ===", 30);
    v4 = sub_10000C030(v3, "\n Operating Mode = ", 19);
    v5 = asString();
    v6 = strlen(v5);
    v7 = sub_10000C030(v4, v5, v6);
    v8 = sub_10000C030(v7, "\n Current Transition = ", 23);
    v9 = *(a1 + 73);
    if (v9 > 4)
    {
      v10 = "???";
    }

    else
    {
      v10 = off_101E46FB0[v9];
    }

    v11 = strlen(v10);
    v12 = sub_10000C030(v8, v10, v11);
    v13 = sub_10000C030(v12, "\n Pending Transition = ", 23);
    v14 = *(a1 + 74);
    if (v14 > 4)
    {
      v15 = "???";
    }

    else
    {
      v15 = off_101E46FB0[v14];
    }

    v16 = strlen(v15);
    v17 = sub_10000C030(v13, v15, v16);
    sub_10000C030(v17, "\n Current Transition: Failed (continue)", 39);
    *(a1 + 73) = 0;
    sub_100392274(a1, &v23);
    v18 = *(a1 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006EE70(&v24 + 8, __p);
      v19 = v22 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v40 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %{public}s\n===  ===  ===  ===  ===  ===  ===", buf, 0xCu);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *&v24 = v20;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[1]);
    }

    std::locale::~locale(v25);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }
}

void sub_100392254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10068C9D8(va);
  _Unwind_Resume(a1);
}

void sub_100392274(void *result, uint64_t a2)
{
  if (!*(result + 74))
  {
    return;
  }

  sub_10000C030((a2 + 16), "\n Pending Transition: ", 22);
  v4 = *(result + 74);
  v5 = 0x706010008uLL >> (8 * v4);
  if (v4 >= 5)
  {
    LOBYTE(v5) = 8;
  }

  if ((v5 & 0xF) != *(result + 72))
  {
    if (*(result + 74) > 1u)
    {
      switch(v4)
      {
        case 2u:
          v6 = "Going Low Power";
          break;
        case 3u:
          v6 = "Going Camp Only";
          break;
        case 4u:
          v6 = "Going Stewie";
          goto LABEL_16;
        default:
LABEL_21:
          sub_100392EE8(result, *(result + 74), 1);
          *(result + 74) = 0;
          return;
      }

      v7 = (a2 + 16);
      v8 = 15;
      goto LABEL_20;
    }

    if (!*(result + 74))
    {
      goto LABEL_6;
    }

    v6 = "Going Online";
LABEL_16:
    v7 = (a2 + 16);
    v8 = 12;
LABEL_20:
    sub_10000C030(v7, v6, v8);
    goto LABEL_21;
  }

  *(result + 74) = 0;
LABEL_6:

  sub_10000C030((a2 + 16), "Settled", 7);
}

uint64_t sub_100392398(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (v4 > 8)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_1017FA06C[v4];
  }

  *(a1 + 72) = a2;
  v6 = *(a1 + 8);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  v8 = a2;
  if (v7)
  {
    *buf = 136315138;
    *&buf[4] = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Baseband %s mode", buf, 0xCu);
    v8 = *(a1 + 72);
  }

  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 == 6)
      {
        v5 = 1;
        goto LABEL_29;
      }

      if (v8 != 8)
      {
        if (v8 != 7)
        {
          goto LABEL_29;
        }

        goto LABEL_15;
      }

      goto LABEL_20;
    }

    if (v8 == 4)
    {
LABEL_20:
      if (capabilities::ct::supportsRadioModeWorkaroundForWatch(v7))
      {
        v5 = 0;
      }

      else
      {
        v5 = 2;
      }

      goto LABEL_29;
    }

LABEL_19:
    v5 = 0;
    goto LABEL_29;
  }

  if (v8 > 1)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    if (v8 == 1)
    {
LABEL_15:
      sub_10014BF94(&event::radio::off[3]);
      v9 = sub_100081A98(&event::radio::off[1]);
      sub_100081ADC(v9);
      if (*(a1 + 75) != 1)
      {
        v5 = 0;
        *(a1 + 75) = 1;
        goto LABEL_29;
      }

      sub_100392988(a1, 1);
      goto LABEL_19;
    }
  }

  else
  {
    sub_10014BF94(&event::radio::on[3]);
    v10 = sub_100081A98(&event::radio::on[1]);
    sub_100081ADC(v10);
    sub_1002C54F4();
    if (*(a1 + 75) == 1)
    {
      sub_100392988(a1, 0);
    }

    else
    {
      *(a1 + 75) = 1;
    }

    v5 = 2;
  }

LABEL_29:
  sub_100392C18(event::baseband::operatingMode, *(a1 + 72));
  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = v12;
      v14 = *(a1 + 48);
      if (v14)
      {
        (*(*v14 + 40))(v14, a2);
      }

      sub_100004A34(v13);
    }
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  *v42 = 0u;
  memset(v41, 0, sizeof(v41));
  *buf = 0u;
  v40 = 0u;
  sub_10000C320(buf);
  v15 = sub_10000C030(&v40, "\n=== Operating Mode Status ===", 30);
  v16 = sub_10000C030(v15, "\n Operating Mode = ", 19);
  v17 = asString();
  v18 = strlen(v17);
  v19 = sub_10000C030(v16, v17, v18);
  v20 = sub_10000C030(v19, "\n Current Transition = ", 23);
  v21 = *(a1 + 73);
  if (v21 > 4)
  {
    v22 = "???";
  }

  else
  {
    v22 = off_101E46FB0[v21];
  }

  v23 = strlen(v22);
  v24 = sub_10000C030(v20, v22, v23);
  v25 = sub_10000C030(v24, "\n Pending Transition = ", 23);
  v26 = *(a1 + 74);
  if (v26 > 4)
  {
    v27 = "???";
  }

  else
  {
    v27 = off_101E46FB0[v26];
  }

  v28 = strlen(v27);
  sub_10000C030(v25, v27, v28);
  v29 = *(a1 + 73);
  v30 = 8;
  if (v29 > 1)
  {
    switch(v29)
    {
      case 2u:
        v30 = 1;
        break;
      case 3u:
        v30 = 6;
        break;
      case 4u:
        v30 = 7;
        break;
    }

LABEL_50:
    if (v30 == *(a1 + 72))
    {
      *(a1 + 73) = 0;
      sub_10000C030(&v40, "\n Current Transition: Settled", 29);
      sub_100392274(a1, buf);
    }

    else
    {
      sub_10000C030(&v40, "\n Current Transition: Waiting for mode change", 45);
    }

    goto LABEL_53;
  }

  if (*(a1 + 73))
  {
    if (v29 == 1)
    {
      v30 = 0;
    }

    goto LABEL_50;
  }

LABEL_53:
  v31 = *(a1 + 8);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006EE70(&v40 + 8, __p);
    v32 = v36 >= 0 ? __p : __p[0];
    *v37 = 136446210;
    v38 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %{public}s\n===  ===  ===  ===  ===  ===  ===", v37, 0xCu);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *&v40 = v33;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[1]);
  }

  std::locale::~locale(v41);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v5;
}

void sub_100392988(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    goto LABEL_14;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 32));
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  v25 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v25);
  if (!v10)
  {
    v12 = 0;
LABEL_10:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_12;
    }

LABEL_11:
    operator new();
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_12:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

LABEL_14:
  v14 = Registry::getServiceMap(*(a1 + 32));
  v15 = v14;
  v16 = "N3awd7metrics14MetricCountersE";
  if (("N3awd7metrics14MetricCountersE" & 0x8000000000000000) != 0)
  {
    v17 = ("N3awd7metrics14MetricCountersE" & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(v14);
  v25 = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, &v25);
  if (!v20)
  {
    v22 = 0;
LABEL_22:
    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v22 = v20[3];
  v21 = v20[4];
  if (!v21)
  {
    goto LABEL_22;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v15);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  v23 = 0;
  if (v22)
  {
LABEL_23:
    v24 = sub_100AFFDB8(v22);
    sub_100B00EAC(v24, v2);
  }

LABEL_24:
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }
}

void sub_100392BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_100392C18(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_100393F5C((a1 + 24), a2);
  v4 = sub_100394138((a1 + 8));

  return sub_10039417C(v4, v2);
}

void sub_100392C84(uint64_t a1)
{
  shouldRadioInitInAirplaneMode = capabilities::ct::shouldRadioInitInAirplaneMode(a1);
  v3 = *(a1 + 72);
  if ((v3 - 1) >= 5 && v3 != 7 && (v3 != 8 || shouldRadioInitInAirplaneMode == 0))
  {
    v12 = *(a1 + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = asString();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Baseband booted in online mode, current request: %s", &v17, 0xCu);
    }

    v13 = *(a1 + 68);
    if (v13 <= 1)
    {
      if (v13)
      {
        if (v13 != 1)
        {
          return;
        }

        v14 = a1;
        v15 = 4;
      }

      else
      {
        v14 = a1;
        v15 = 2;
      }

      goto LABEL_31;
    }

    if (v13 != 2)
    {
      if (v13 != 3)
      {
        return;
      }

      goto LABEL_30;
    }

    if (*(a1 + 72) == 8)
    {
      return;
    }

LABEL_27:
    v14 = a1;
    v15 = 1;
LABEL_31:
    sub_100392EE8(v14, v15, 1);
    return;
  }

  v5 = *(a1 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Baseband booted in airplane mode", &v17, 2u);
  }

  if (!isActiveLowPowerMode())
  {
    v7 = *(a1 + 68);
    v8 = *(a1 + 8);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 == 3)
    {
      if (v9)
      {
        v10 = asString();
        v17 = 136315138;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Getting Baseband out of airplane mode %s", &v17, 0xCu);
      }

LABEL_30:
      v14 = a1;
      v15 = 3;
      goto LABEL_31;
    }

    if (v9)
    {
      v16 = asString();
      v17 = 136315138;
      v18 = v16;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Getting Baseband out of airplane mode %s", &v17, 0xCu);
    }

    goto LABEL_27;
  }

  v6 = *(a1 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I In Airplane Mode: Do Nothing", &v17, 2u);
  }
}

void sub_100392EE8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a2;
  if (*(a1 + 73) != a2)
  {
    if (*(a1 + 73))
    {
      *(a1 + 74) = a2;
      goto LABEL_14;
    }

    v19 = a3;
    v20 = *(a1 + 72);
    if (*(a1 + 76) == 1)
    {
      if ((v20 - 1) < 5 || v20 == 7)
      {
        v22 = *(a1 + 8);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v23 = "#I Forcing AP mode - in AP mode, no outstanding requests ...";
        v24 = v22;
        v25 = 2;
LABEL_40:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
        return;
      }

      v48 = *(a1 + 8);
      if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v3 = 2;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Forcing low power mode", buf, 2u);
        if (*(a1 + 73))
        {
          goto LABEL_14;
        }

        v42 = 1;
      }

      else
      {
        v42 = 1;
        v3 = 2;
      }

      goto LABEL_72;
    }

    if (v20 != 2)
    {
      if ((a2 - 1) <= 3u)
      {
        v42 = 0x7060100u >> (8 * ((a2 - 1) & 0x1F));
      }

      else
      {
        v42 = 8;
      }

LABEL_72:
      if (*(a1 + 72) == v42)
      {
        v43 = *(a1 + 8);
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        if (v3 > 4)
        {
          v44 = "???";
        }

        else
        {
          v44 = off_101E46FB0[v3];
        }

        v49 = asString();
        *buf = 136315394;
        *&buf[4] = v44;
        *&buf[12] = 2080;
        *&buf[14] = v49;
        v23 = "#I Dropping operation request %s - Already in %s";
        v24 = v43;
        goto LABEL_39;
      }

      *(a1 + 73) = v3;
      v45 = 0x706010008uLL >> (8 * v3);
      if (v3 >= 5)
      {
        LOBYTE(v45) = 8;
      }

      sub_100393C84(a1, v45 & 0xF, v19);
LABEL_14:
      v16 = *(a1 + 8);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v17 = *(a1 + 73);
      if (v17 > 4)
      {
        v18 = "???";
      }

      else
      {
        v18 = off_101E46FB0[v17];
      }

      v37 = *(a1 + 74);
      if (v37 > 4)
      {
        v38 = "???";
      }

      else
      {
        v38 = off_101E46FB0[v37];
      }

      *buf = 136315394;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = v38;
      v23 = "#I Operating Mode Requests: Current (%s) Pending (%s)";
      v24 = v16;
LABEL_39:
      v25 = 22;
      goto LABEL_40;
    }

    v26 = *(a1 + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Baseband is in factory test mode. Ignoring request to make it go online", buf, 2u);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 32));
    v28 = ServiceMap;
    if (v29 < 0)
    {
      v30 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
      v31 = 5381;
      do
      {
        v29 = v31;
        v32 = *v30++;
        v31 = (33 * v31) ^ v32;
      }

      while (v32);
    }

    std::mutex::lock(ServiceMap);
    *buf = v29;
    v33 = sub_100009510(&v28[1].__m_.__sig, buf);
    if (v33)
    {
      v35 = v33[3];
      v34 = v33[4];
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v28);
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v34);
        v36 = 0;
LABEL_81:
        if (v35)
        {
          if (((*(*v35 + 32))(v35) & 1) == 0)
          {
            v46 = *(a1 + 8);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
            {
              v47 = asString();
              sub_10176E11C(v47, buf, v46);
            }
          }
        }

        if ((v36 & 1) == 0)
        {
          goto LABEL_86;
        }

        return;
      }
    }

    else
    {
      v35 = 0;
    }

    std::mutex::unlock(v28);
    v34 = 0;
    v36 = 1;
    goto LABEL_81;
  }

  v5 = *(a1 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176E164(v3, a1, v5);
  }

  if (!*(a1 + 74))
  {
    return;
  }

  *(a1 + 74) = 0;
  if (v3 != 1)
  {
    goto LABEL_65;
  }

  memset(&buf[8], 0, 32);
  v65 = 0x500000000000000;
  *&v66[8] = 0u;
  v70 = 0u;
  v69 = 0u;
  memset(&v67, 0, sizeof(v67));
  v68 = 23;
  qmemcpy(&buf[23], "\tRadio", 6);
  qmemcpy(buf, "Telephony", 9);
  v66[23] = 14;
  qmemcpy(v66, "Operating Mode", 14);
  sub_1000167D4(&v67, "Requesting operating mode matching current requested operating mode with pending request", 0x58uLL);
  v60 = &v68;
  v61 = 0;
  sub_1001E9F04(&v60, 5uLL);
  v68 |= 0x11uLL;
  v6 = Registry::getServiceMap(*(a1 + 32));
  v7 = v6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(v6);
  v60 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v60);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_42;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_42:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_43;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_43:
  sub_100D9EC48(__dst, buf);
  v63 = 0;
  (*(*v14 + 16))(v14, __dst, v62);
  sub_10010DF14(v62);
  if (v59 < 0)
  {
    operator delete(__p);
  }

  if (v57 < 0)
  {
    operator delete(v56);
  }

  if (v55 < 0)
  {
    operator delete(v54);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v51 < 0)
  {
    operator delete(__dst[0]);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (SBYTE7(v70) < 0)
  {
    operator delete(v69);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if ((v66[23] & 0x80000000) != 0)
  {
    operator delete(*v66);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(*&buf[24]);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

LABEL_65:
  v39 = *(a1 + 56);
  if (v39)
  {
    v40 = std::__shared_weak_count::lock(v39);
    if (v40)
    {
      v34 = v40;
      v41 = *(a1 + 48);
      if (v41)
      {
        (*(*v41 + 32))(v41);
      }

LABEL_86:
      sub_100004A34(v34);
    }
  }
}

void sub_1003935B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039363C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 68) != a2)
  {
    v2 = a2;
    *(a1 + 68) = a2;
    active = isActiveLowPowerMode();
    if (active)
    {
      v5 = "Entering airplane mode";
    }

    else
    {
      v5 = "Exiting airplane mode";
    }

    v14 = _os_activity_create(&_mh_execute_header, v5, &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    *state = 0;
    *&state[8] = 0;
    os_activity_scope_enter(v14, state);
    os_activity_scope_leave(state);
    sub_1000C0590(&v14);
    v6 = *(a1 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (active)
      {
        v7 = "Entering";
      }

      else
      {
        v7 = "Exiting";
      }

      v8 = asString();
      *state = 136315394;
      *&state[4] = v7;
      *&state[12] = 2080;
      *&state[14] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s airplane mode: operatingModeType: %s", state, 0x16u);
    }

    if (*(a1 + 64))
    {
      if (v2 <= 1)
      {
        if (v2)
        {
          if (v2 != 1)
          {
            return;
          }

          v9 = *(a1 + 72);
          v10 = 4;
          if (v9 == 1)
          {
            goto LABEL_29;
          }

          if (v9 == 7)
          {
            return;
          }
        }

        else
        {
          v13 = *(a1 + 72);
          if (v13 == 1)
          {
            return;
          }

          v10 = 2;
          if (v13 == 7)
          {
            goto LABEL_29;
          }
        }

        sub_1000C5B08(event::radio::disabling);
LABEL_29:
        sub_100392EE8(a1, v10, 1);
        return;
      }

      if (v2 == 3)
      {
        if ((sub_100393890(a1) & 1) == 0)
        {
          return;
        }

        v10 = 3;
        goto LABEL_29;
      }

      if (v2 == 2 && (sub_100393890(a1) & 1) != 0)
      {
        v10 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      v11 = *(a1 + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = asString();
        *state = 136315138;
        *&state[4] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Baseband not initialized for request %s", state, 0xCu);
      }

      sub_100392988(a1, active);
    }
  }
}

uint64_t sub_100393890(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 32));
  v4 = ServiceMap;
  if (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      v1 = 1;
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  v36 = (*(*v11 + 72))(v11);
  v35 = (*(*v11 + 80))(v11);
  v13 = Registry::getServiceMap(*(a1 + 32));
  v14 = v13;
  if (v15 < 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(v13);
  *buf = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, buf);
  if (v19)
  {
    v20 = v19[3];
    v21 = v19[4];
    if (v21)
    {
      v1 = v21 + 8;
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      v22 = 0;
      if (!v20)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v20 = 0;
  }

  std::mutex::unlock(v14);
  v21 = 0;
  v22 = 1;
  if (!v20)
  {
LABEL_15:
    v23 = *(a1 + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10176E230(v23);
    }

    goto LABEL_23;
  }

LABEL_19:
  (*(*v20 + 16))(v20, 1);
  isSimUnreadable = subscriber::isSimUnreadable();
  if (v35 != 1 || (v36 & 1) != 0 || (v25 = (a1 + 65), isSimUnreadable & 1 | ((*(a1 + 65) & 1) == 0)))
  {
    v1 = 1;
  }

  else
  {
    v27 = *(a1 + 8);
    v1 = 0;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = printers::asString(&v35, v28);
      v31 = printers::asString(&v36, v30);
      v33 = printers::asString(v25, v32);
      v34 = subscriber::asString();
      *buf = 136315906;
      *&buf[4] = v29;
      v38 = 2080;
      v39 = v31;
      v40 = 2080;
      v41 = v33;
      v42 = 2080;
      v43 = v34;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Waiting to exit airplane mode; activation enabled: %s, baseband activated: %s, with ticket: %s, sim %s", buf, 0x2Au);
      v1 = 0;
    }
  }

LABEL_23:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  return (v20 != 0) & v1;
}

void sub_100393BCC(_Unwind_Exception *exception_object)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  if ((v3 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100393C24(capabilities::ct *a1, void *a2)
{
  result = capabilities::ct::supportsVoiceCall(a1);
  if ((result & 1) == 0)
  {
    v5 = a2[1];
    if (*a2 == v5)
    {
      v7 = 1;
    }

    else
    {
      v6 = *a2 + 168;
      do
      {
        v7 = *(v6 - 160) == 1;
        v8 = *(v6 - 160) != 1 || v6 == v5;
        v6 += 168;
      }

      while (!v8);
    }

    *(a1 + 76) = v7;
  }

  return result;
}

void sub_100393C84(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 75) = a3;
  v4 = *(a1 + 56);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 48);
      if (v8)
      {
        v9 = *(a1 + 8);
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        if (a2 == 1)
        {
          if (v10)
          {
            v11 = 136315138;
            v12 = asString();
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Delay entering %s", &v11, 0xCu);
          }

          (*(*v8 + 24))(v8);
        }

        else
        {
          if (v10)
          {
            v11 = 136315138;
            v12 = asString();
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Requesting mode %s now", &v11, 0xCu);
          }

          (*(*v8 + 16))(v8, a2);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_100393E98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10176E274(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100393EB4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100393EEC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100393F1C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100393F5C(uint64_t *a1, uint64_t a2)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v11 = 0u;
  v12 = 0u;
  *v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  sub_10000D518(&v8);
  v3 = asString();
  v4 = strlen(v3);
  sub_10000C030(&v8, v3, v4);
  sub_10006EE70(&v8 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  std::locale::~locale(v9);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10039410C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100394138(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10039417C(uint64_t *a1, char a2)
{
  v24 = a2;
  v23 = 0uLL;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v27, v3);
  v4 = a1[1];
  if (v4)
  {
    if (atomic_load_explicit((v4 + 8), memory_order_acquire) == 1)
    {
      sub_1003943F4(a1, &v27, 0, 1);
    }

    v5 = *a1;
    v6 = a1[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
    v5 = *a1;
  }

  v7 = v23;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  v26[0] = v7;
  sub_10004A724(v26 + 1);
  sub_10004A704(*(&v38 + 1));
  sub_10004A6B0(&v27);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v42 = 0;
  v43 = 10;
  v44 = &v27 + 8;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = &v24;
  v8 = sub_10039448C(&v23);
  v22[0] = &v27;
  v22[1] = a1;
  v22[2] = sub_1003946DC(v8);
  v9 = sub_10039448C(&v23);
  v10 = sub_10004AA88((v9 + 16));
  v11 = sub_10039448C(&v23);
  v12 = *(sub_1003946DC(v11) + 8);
  v13 = sub_10039448C(&v23);
  *&v20 = v12;
  *(&v20 + 1) = sub_1003946DC(v13);
  *&v21 = &v27;
  *(&v21 + 1) = *(&v20 + 1);
  sub_10039492C(&v20);
  v14 = sub_10039448C(&v23);
  v15 = sub_1003946DC(v14);
  v16 = sub_10039448C(&v23);
  *&v18 = v15;
  *(&v18 + 1) = sub_1003946DC(v16);
  *&v19 = &v27;
  *(&v19 + 1) = *(&v18 + 1);
  sub_10039492C(&v18);
  v26[0] = v20;
  v26[1] = v21;
  v25[0] = v18;
  v25[1] = v19;
  sub_100394720(v10, v26, v25);
  sub_100394CF4(v22);
  sub_1003955AC(&v27);
  return sub_10004A724(&v23 + 1);
}

void sub_1003943A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003943F4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v5 = a4;
  v6 = a3;
  v9 = sub_10039448C(a1);
  v10 = sub_1003946DC(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_10039448C(a1);
    v11 = *(sub_1003946DC(v12) + 8);
  }

  v14 = v11;
  return sub_1003944D0(a1, a2, v6, &v14, v5);
}

uint64_t sub_10039448C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1003944D0(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_10039448C(a1);
  result = sub_1003946DC(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1003945E8(v10 + 2);
        sub_10039462C(v15, a2);
        v10 = v22;
      }

      if (*(sub_1003945E8(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_10039448C(a1);
        v18 = sub_1003946DC(v17);
        v19 = sub_1003945E8(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_10039448C(a1);
      result = sub_1003946DC(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t sub_1003945E8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_10039462C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_100394698(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_100394698(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_1003946DC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100394720(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1003947A8(a2);
    *a2 = *(*a2 + 8);
    sub_10039492C(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1003947A8(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_100394848((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

uint64_t sub_100394848(unsigned __int8 **a1, uint64_t *a2)
{
  v2 = sub_1003945E8(a2);
  v3 = (sub_100394698((v2 + 32)) + 24);

  return sub_100394894(v3);
}

uint64_t sub_100394894(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_10039492C(uint64_t *result)
{
  v1 = *result;
  if (*result != result[3])
  {
    if (v1 == result[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((result[2] + 8), *(result[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_100394B8C((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1003945E8((*result + 16));
      sub_100394BD0(v4, &v14, (result[2] + 8));
      v5 = sub_1003945E8((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 280);
      }

      else
      {
        ++*(v6 + 284);
      }

      v7 = sub_1003945E8((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_1000821A0(result, &v14, *result);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *result;
      v1 = result[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *result = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = result[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_100394B8C((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1000821A0(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_100394B50(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100394B8C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100394BD0(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_100394698(result + 4); ; i += 6)
    {
      result = sub_100394698(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_100394CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_100394CF4(void *a1)
{
  if (*(*a1 + 284) > *(*a1 + 280))
  {
    sub_100394D38(a1[1], a1[2]);
  }

  return a1;
}

void sub_100394D38(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_10039448C(a1);
  if (sub_1003946DC(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_10039448C(a1);
    v8 = *(sub_1003946DC(v7) + 8);
    sub_1003944D0(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_100394ED8(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_100394F7C(&v2, a2);
}

uint64_t sub_100394F38(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100394F7C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100394FE8(&v2, a2);
}

void sub_100395058(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100395098(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_1003951B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10039533C(a1, a2);
  sub_1003953A8((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

uint64_t *sub_10039533C(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    sub_1000FB140(a1, (v2 + 16));
  }

  return a1;
}

uint64_t sub_1003953A8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100395410(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10039547C(&v2, a2);
}

void sub_1003954EC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_10039552C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_1003955AC(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 288), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_100395684(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100395788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v15)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003957BC(void *a1, NSObject **a2, uint64_t *a3, void *a4)
{
  *a1 = off_101E2DC48;
  sub_1003959A4(a1 + 1, a2, &kCtLoggingSystemName, &off_101E46FD8);
  *a1 = off_101E46FF0;
  v7 = a4[1];
  a1[6] = *a4;
  a1[7] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "CellularPlanPolicyManager");
  v8 = a1[3];
  v14 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = a1[4];
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  v10 = *a3;
  v11 = a3[1];
  a1[10] = *a3;
  a1[11] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v10 = a1[10];
  }

  (*(*v10 + 768))(v10);
  return a1;
}

void sub_10039591C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v20 = v17[11];
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = v17[9];
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = v17[7];
  if (v22)
  {
    sub_100004A34(v22);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 5));
  sub_1000C0544(v18);
  CellularPlanPolicyManagerInterface::~CellularPlanPolicyManagerInterface(v17);
  _Unwind_Resume(a1);
}

void *sub_1003959A4(void *a1, NSObject **a2, const char **a3, const char **a4)
{
  *a1 = 0;
  a1[1] = 0;
  v7 = *a2;
  a1[2] = *a2;
  if (v7)
  {
    dispatch_retain(v7);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 4), *a3, *a4);
  return a1;
}

uint64_t sub_100395A14(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I bootstrapped", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v5, *(a1 + 48));
  ctu::RestModule::connect();
  if (v6)
  {
    sub_100004A34(v6);
  }

  result = *(a1 + 96);
  if (result)
  {
    (*(*result + 16))(result);
    sub_100004AA0(buf, (a1 + 8));
    v4 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v4);
    }

    operator new();
  }

  return result;
}

void sub_100395B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100396848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100395BDC(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I shutdown", v5, 2u);
  }

  v3 = a1[12];
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  return ctu::RestModule::disconnect((a1 + 8));
}

uint64_t sub_100395C74(capabilities::ct *a1, __int16 a2)
{
  v4 = capabilities::ct::supportsGemini(a1);
  result = 1;
  if (!v4 || (a2 & 0x100) == 0)
  {
    return result;
  }

  if ((a2 & 1) == 0)
  {
    return 0;
  }

  (***(a1 + 10))(&__p);
  ServiceMap = Registry::getServiceMap(__p);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v22 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v22);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_12:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_13:
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (!v14)
  {
LABEL_23:
    v18 = 0;
    result = 0;
    if (v15)
    {
      return result;
    }

    goto LABEL_24;
  }

  sub_10000501C(&__p, "CN");
  v16 = (*(*v14 + 24))(v14, &__p);
  v17 = v16;
  if (v21 < 0)
  {
    operator delete(__p);
    if ((v17 & 0x100) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((v16 & 0x100) == 0)
  {
    goto LABEL_23;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_23;
  }

  v18 = 1;
  result = 1;
  if ((v15 & 1) == 0)
  {
LABEL_24:
    sub_100004A34(v13);
    return v18;
  }

  return result;
}

void sub_100395E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100395E70(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96))
  {
    sub_1003968C8(v3, a2);
    v3[7] = 0;
    operator new();
  }

  return sub_100395FD8(a2, 0);
}

void sub_100395FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100396848(va);
  sub_100396344(v11 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100395FD8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = BYTE4(a2);
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100396034(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a1 + 96))
  {
    sub_100396D38(v5, a3);
    v5[7] = 0;
    operator new();
  }

  v3 = a2 ^ 1;

  return sub_1003961B4(a3, v3, 6);
}

void sub_100396188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_100396848(va);
  sub_100294724(v15 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_1003961B4(uint64_t a1, char a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_100396210(void *a1)
{
  *a1 = off_101E46FF0;
  v2 = a1[13];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);

  CellularPlanPolicyManagerInterface::~CellularPlanPolicyManagerInterface(a1);
}

void sub_1003962A0(void *a1)
{
  *a1 = off_101E46FF0;
  v2 = a1[13];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  CellularPlanPolicyManagerInterface::~CellularPlanPolicyManagerInterface(a1);

  operator delete();
}

uint64_t sub_100396344(uint64_t a1)
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

void sub_100396444(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100396518);
  __cxa_rethrow();
}

void sub_100396484(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003964D8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100396518(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_100396544(void *a1)
{
  *a1 = off_101E47148;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100396590(void *a1)
{
  *a1 = off_101E47148;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100396670(uint64_t result, uint64_t a2)
{
  *a2 = off_101E47148;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003966B0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003966C0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100396700(void *a1, unsigned __int16 *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9[0] = 67109378;
          v9[1] = v4 & 1;
          v10 = 2080;
          v11 = asString();
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Cellular plan regulatory restriction active and reason_code : %{BOOL}d :%s", v9, 0x12u);
        }
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1003967FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100396848(uint64_t a1)
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

uint64_t sub_1003968C8(uint64_t a1, uint64_t a2)
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

void *sub_100396960(void *a1)
{
  *a1 = off_101E471D8;
  sub_100396344((a1 + 2));
  return a1;
}

void sub_1003969A4(void *a1)
{
  *a1 = off_101E471D8;
  sub_100396344((a1 + 2));

  operator delete();
}

uint64_t sub_100396A84(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E471D8;
  a2[1] = v2;
  return sub_1003968C8((a2 + 2), a1 + 16);
}

void sub_100396ABC(void *a1)
{
  sub_100396344(a1 + 16);

  operator delete(a1);
}

uint64_t sub_100396AF8(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = v3 >> 8;
  v5 = *(a1 + 8);
  if ((*(**(v5 + 80) + 104))(*(v5 + 80)) && (v3 & 1) != 0 && (sub_100395C74(v5, v3 | 0x100u) & 1) == 0)
  {
    v7 = *(v5 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I China Install not allowed with reason_code:%s", &v8, 0xCu);
    }

    return sub_100395FD8(a1 + 16, ((v4 << 24) | (v3 << 8)) + 0x100010001);
  }

  else
  {

    return sub_100395FD8(a1 + 16, (v4 << 24) | (v3 << 8) | 0x100010000);
  }
}

uint64_t sub_100396C6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100396CB8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100396D38(uint64_t a1, uint64_t a2)
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

void *sub_100396DD0(void *a1)
{
  *a1 = off_101E47258;
  sub_100294724((a1 + 3));
  return a1;
}

void sub_100396E14(void *a1)
{
  *a1 = off_101E47258;
  sub_100294724((a1 + 3));

  operator delete();
}

uint64_t sub_100396F00(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E47258;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return sub_100396D38(a2 + 24, a1 + 24);
}

void sub_100396F44(void *a1)
{
  sub_100294724(a1 + 24);

  operator delete(a1);
}

uint64_t sub_100396F80(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if (capabilities::ct::supportsGemini(a1) && (v3 & 1) != 0 && (sub_100395C74(v4, v3 | 0x100u) & 1) == 0)
  {
    v11 = *(v4 + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14[0] = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I China Install not allowed with reason_code:%s", &v13, 0xCu);
    }

    v10 = v3 >> 8;
    v8 = a1 + 24;
    v9 = 0;
  }

  else
  {
    v5 = *(v4 + 5);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v13 = 67109378;
      LODWORD(v14[0]) = v3;
      WORD2(v14[0]) = 2080;
      *(v14 + 6) = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Cellular plan regulatory restriction active : %{BOOL}d reason_code:%s", &v13, 0x12u);
    }

    if (*(a1 + 16) == 1)
    {
      v7 = v3 | ~capabilities::ct::supportsGemini(v6);
      v8 = a1 + 24;
      v9 = v7 & 1;
    }

    else
    {
      v8 = a1 + 24;
      v9 = (v3 & 1) == 0;
    }

    v10 = v3 >> 8;
  }

  return sub_1003961B4(v8, v9, v10);
}

uint64_t sub_10039710C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100397158(uint64_t a1, uint64_t a2)
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

void sub_10039724C(void *a1)
{
  *a1 = off_101E472D8;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  TMKXPCServer.shutdown()();
}

void sub_1003972AC(void *a1)
{
  sub_10039724C(a1);

  operator delete();
}

uint64_t sub_1003972E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100293290(v4, a2);
    sub_1003973B4(v2, v4);
    return sub_10028ED7C(v4);
  }

  else
  {

    return sub_100186828(a2, 4);
  }
}

void sub_100397398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10028ED7C(va);
  _Unwind_Resume(a1);
}

void sub_1003973B4(uint64_t a1, uint64_t a2)
{
  v4 = +[D2DConnectionFactory sharedInstance];
  (***(a1 + 56))(&v15);
  v16 = v15;
  v15 = 0uLL;
  v5 = *(a1 + 24);
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = [v4 createConnectionWithRegistry:&v16 queue:&object];
  v7 = *(a1 + 144);
  *(a1 + 144) = v6;

  if (object)
  {
    dispatch_release(object);
  }

  if (*(&v16 + 1))
  {
    sub_100004A34(*(&v16 + 1));
  }

  if (*(&v15 + 1))
  {
    sub_100004A34(*(&v15 + 1));
  }

  v8 = *(a1 + 144);
  sub_100004AA0(&v10, (a1 + 8));
  sub_100397DC0(&v10, &v15);
  if (v15)
  {
    v9 = v15 + 136;
  }

  else
  {
    v9 = 0;
  }

  v12 = v9;
  v13 = *(&v15 + 1);
  v15 = 0uLL;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3321888768;
  v17[2] = sub_100397E44;
  v17[3] = &unk_101E47410;
  v17[4] = a1;
  sub_100293290(v18, a2);
  [v8 setDelegate:&v12 forTarget:0 completion:v17];
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (*(&v15 + 1))
  {
    sub_100004A34(*(&v15 + 1));
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_10028ED7C(v18);
}

void sub_100397588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  sub_10028ED7C(v19 + 40);
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_10039760C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    sub_100A843E8(v1);
  }
}

uint64_t sub_100397620@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_100397664(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100397674(v2, a2);
  }
}

void sub_100397674(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I try to connect target", v8, 2u);
  }

  v5 = *(a1 + 144);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  [v5 tryConnectWithCode:v7];
}

void sub_10039773C(uint64_t a1, uint64_t a2, NSObject **a3, uint64_t *a4)
{
  v7 = *a3;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a4[1];
  v13 = *a4;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(__p, "s.xtp");
  sub_1007D0FF4(a1, a2, &object, &v13, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E47330;
  *(a1 + 136) = off_101E473D0;
  *(a1 + 184) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 240) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  if (a2 == 1)
  {
    v9 = objc_alloc_init(CellularPlanCrossPlatformTransferMessageCodec);
    v10 = *(a1 + 168);
    *(a1 + 168) = v9;

    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Create CellularPlanCrossPlatformSourceTransportController::impl", __p, 2u);
    }

    (***(a1 + 56))(v12);
    v12[3] = a1 + 40;
    sub_10039C900();
  }

  __assert_rtn("impl", "CellularPlanCrossPlatformSourceTransportController.mm", 152, "cellplan::PlanTransferEndpoint::kSource == endpoint");
}

void sub_100397AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_10039CE5C(&a17);
  sub_100009970(&a9, a10);
  sub_100009970(v27, *(v26 + 232));
  v30 = *(v26 + 216);
  if (v30)
  {
    sub_100004A34(v30);
  }

  if (*(v26 + 207) < 0)
  {
    operator delete(*v28);
  }

  v31 = *(v26 + 160);
  if (v31)
  {
    sub_100004A34(v31);
  }

  TMKXPCServer.shutdown()();
  sub_1007D10DC(v26);
  _Unwind_Resume(a1);
}

uint64_t sub_100397C3C(uint64_t a1)
{
  *a1 = off_101E47330;
  *(a1 + 136) = off_101E473D0;
  sub_100A843E8(a1);
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I destory CellularPlanCrossPlatformSourceTransportController::impl", v6, 2u);
  }

  sub_100009970(a1 + 224, *(a1 + 232));
  v3 = *(a1 + 216);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    sub_100004A34(v4);
  }

  TMKXPCServer.shutdown()();
  return sub_1007D10DC(a1);
}

void sub_100397D4C(uint64_t a1)
{
  sub_100397C3C(a1);

  operator delete();
}

void sub_100397D84(uint64_t a1)
{
  sub_100397C3C(a1 - 136);

  operator delete();
}

void *sub_100397DC0@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_100397E44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (*(a1 + 64))
  {
    if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I start connection", v4, 2u);
    }

    [*(v1 + 144) start];
    sub_100186828(a1 + 40, 0);
  }

  else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_FAULT))
  {
    sub_10176E298();
  }
}

void sub_100397F14(uint64_t a1, int a2)
{
  if (*(a1 + 48) != 1)
  {
    sub_10176E2D8();
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I connection state changed to %d", buf, 8u);
  }

  v20 = 0;
  v21 = 0;
  (*(*a1 + 32))(&v20, a1);
  v18 = 0;
  v19 = 0;
  (***(a1 + 56))(&v16);
  Registry::getNotificationSenderFactory(buf, v16);
  v5 = *buf;
  (***(a1 + 56))(&v12);
  Registry::getTimerService(&v14, v12);
  (*(*v5 + 168))(&v18, v5, &v14, a1 + 24);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v18)
  {
    v6 = objc_opt_new();
    v7 = [NSString stringWithUTF8String:sub_100649BE0(*(a1 + 48))];
    [v6 setObject:v7 forKey:@"kCrossTransferEndpoint"];

    v8 = [NSNumber numberWithBool:a2 == 1];
    [v6 setObject:v8 forKey:@"kCrossTransferConnected"];

    v9 = v18;
    v11 = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    (*(*v9 + 40))(v9, &v11);
    sub_10001021C(&v11);
  }

  if (a2 == 1)
  {
    v10 = *(a1 + 152);
    sub_10000501C(buf, "kConnected");
    (*(*v10 + 24))(v10, buf);
    if (v24 < 0)
    {
      operator delete(*buf);
    }
  }

  else if (!a2)
  {
    sub_10039831C(a1);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }
}

void sub_100398238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039831C(uint64_t a1)
{
  sub_1007D114C(a1, 1, 1);
  (*(**(a1 + 152) + 32))(*(a1 + 152));
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void sub_100398434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 168) decodeMessage:v3];
  if (!v4)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176E4F0();
    }

    sub_1003991D4(a1, 2);
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
    *(buf.__r_.__value_.__r.__words + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Timer received: %@", &buf, 0xCu);
  }

  v8 = v6;
  sub_10000501C(&buf, [v6 UTF8String]);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  *(a1 + 96) = buf;
  v9 = *(a1 + 152);
  v10 = v6;
  sub_10000501C(&buf, [v6 UTF8String]);
  (*(*v9 + 24))(v9, &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v4;
    v12 = [v11 versions];
    sub_100399308(v12, &buf);
    if (*(a1 + 207) < 0)
    {
      operator delete(*(a1 + 184));
    }

    *(a1 + 184) = buf;
    *(&buf.__r_.__value_.__s + 23) = 0;
    buf.__r_.__value_.__s.__data_[0] = 0;

    if ((*(a1 + 207) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 192))
      {
LABEL_13:
        v13 = *(a1 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v11 friendlyDeviceName];
          v15 = [v11 sessionID];
          LODWORD(buf.__r_.__value_.__l.__data_) = 138412546;
          *(buf.__r_.__value_.__r.__words + 4) = v14;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Got SessionRequest friendlyDeviceName=%@, session:%lld", &buf, 0x16u);
        }

        v16 = [v11 sessionID];
        v17 = *(a1 + 232);
        *(a1 + 176) = v16;
        sub_100009970(a1 + 224, v17);
        *(a1 + 232) = 0;
        *(a1 + 240) = 0;
        *(a1 + 224) = a1 + 232;
        (***(a1 + 56))(&buf);
        ServiceMap = Registry::getServiceMap(buf.__r_.__value_.__l.__data_);
        v19 = ServiceMap;
        v20 = "22CellularPlanController";
        if (("22CellularPlanController" & 0x8000000000000000) != 0)
        {
          v21 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
          v22 = 5381;
          do
          {
            v20 = v22;
            v23 = *v21++;
            v22 = (33 * v22) ^ v23;
          }

          while (v23);
        }

        std::mutex::lock(ServiceMap);
        v70[0] = v20;
        v24 = sub_100009510(&v19[1].__m_.__sig, v70);
        if (v24)
        {
          v26 = v24[3];
          v25 = v24[4];
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v19);
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v25);
            v27 = 0;
LABEL_49:
            (*(*a1 + 32))(&v72, a1);
            v78[0] = off_101E47698;
            v78[1] = a1;
            v78[3] = v78;
            (*(*v26 + 480))(v26, 1, 5, &v72, 0, v78);
            sub_10028ED7C(v78);
            if (v73)
            {
              sub_100004A34(v73);
            }

            if ((v27 & 1) == 0)
            {
              sub_100004A34(v25);
            }

            if (buf.__r_.__value_.__l.__size_)
            {
              sub_100004A34(buf.__r_.__value_.__l.__size_);
            }

            goto LABEL_100;
          }
        }

        else
        {
          v26 = 0;
        }

        std::mutex::unlock(v19);
        v25 = 0;
        v27 = 1;
        goto LABEL_49;
      }
    }

    else if (*(a1 + 207))
    {
      goto LABEL_13;
    }

    *(a1 + 120) = 1;
    sub_1003991D4(a1, 1);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v4;
    v29 = v28;
    if (*(a1 + 176))
    {
      v30 = [v28 sessionID];
      v31 = *(a1 + 176);
      if (v30 == v31)
      {
        v32 = [v29 status];
        v33 = [v32 count] == 0;

        if (!v33)
        {
          v34 = [v29 status];
          v35 = [v34 objectAtIndexedSubscript:0];
          *(a1 + 128) = [v35 status];
        }

        v36 = [v29 status];
        sub_1003993F4(a1, v36, 1);

        v37 = [v29 status];
        sub_100399BC8(a1, v37);

        v38 = *(a1 + 40);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I received Session notification which means session ends", &buf, 2u);
        }

        sub_10039831C(a1);
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176E480(&buf, v31, [v29 sessionID]);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176E4BC();
    }

LABEL_60:

    goto LABEL_100;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v4;
    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
      *(buf.__r_.__value_.__r.__words + 4) = v39;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Received SimTransferProfile Request %@", &buf, 0xCu);
    }

    if (*(a1 + 176))
    {
      v41 = [v39 sessionID];
      v42 = *(a1 + 176);
      if (v41 == v42)
      {
        v43 = [v39 iccid];
        if (v43)
        {
        }

        else
        {
          v51 = [v39 iccid];
          v52 = [v51 length] == 0;

          if (v52)
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_10176E418();
            }

LABEL_98:
            v50 = 2;
LABEL_99:
            *(a1 + 120) = v50;
            sub_100399EA0(a1, 2);
          }
        }

        v53 = [v39 iccid];
        v54 = sub_100399FD8(a1, v53);

        if (v54)
        {
          v55 = [NSString stringWithUTF8String:sub_100649C38(1)];
          v56 = *(a1 + 40);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I Send TransferPlanTransferReq", &buf, 2u);
          }

          v71 = 0;
          std::to_string(&buf, *(a1 + 176));
          v57 = [v39 iccid];
          v58 = v57;
          sub_10000501C(v76, [v57 UTF8String]);
          memset(v70, 0, sizeof(v70));
          sub_10016FB64(v70, v76, v78, 1uLL);
          v59 = [v39 iccid];
          v60 = v59;
          sub_10000501C(v74, [v59 UTF8String]);
          memset(v69, 0, sizeof(v69));
          sub_10016FB64(v69, v74, v76, 1uLL);
          v67[0] = 0;
          v67[1] = 0;
          v68 = 0;
          __p[0] = 0;
          __p[1] = 0;
          v66 = 0;
          sub_10092144C(&buf, v70, v69, v67, __p, &v71);
          if (SHIBYTE(v66) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v68) < 0)
          {
            operator delete(v67[0]);
          }

          v67[0] = v69;
          sub_1000087B4(v67);
          if (v75 < 0)
          {
            operator delete(v74[0]);
          }

          v69[0] = v70;
          sub_1000087B4(v69);
          if (v77 < 0)
          {
            operator delete(v76[0]);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          v61 = v71;
          v62[0] = _NSConcreteStackBlock;
          v62[1] = 3321888768;
          v62[2] = sub_10039A05C;
          v62[3] = &unk_101E47440;
          buf.__r_.__value_.__r.__words[0] = a1;
          sub_1002306AC((a1 + 8), &buf.__r_.__value_.__l.__size_);
          v63 = *&buf.__r_.__value_.__l.__data_;
          v64 = buf.__r_.__value_.__r.__words[2];
          if (buf.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((buf.__r_.__value_.__r.__words[2] + 16), 1uLL, memory_order_relaxed);
          }

          sub_100A84468(a1, v55, v61, 0, v62);
          if (buf.__r_.__value_.__r.__words[2])
          {
            std::__shared_weak_count::__release_weak(buf.__r_.__value_.__r.__words[2]);
          }

          if (v64)
          {
            std::__shared_weak_count::__release_weak(v64);
          }

          sub_10001021C(&v71);

          goto LABEL_100;
        }

        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10176E3E4();
        }

        goto LABEL_98;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176E3A8(&buf, v42, [v39 sessionID]);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176E44C();
    }

    v50 = 1;
    goto LABEL_99;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = v4;
    v29 = v44;
    if (!*(a1 + 176))
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176E374();
      }

      goto LABEL_60;
    }

    v45 = [v44 sessionID];
    v46 = *(a1 + 176);
    v47 = *(a1 + 40);
    if (v45 != v46)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176E338(&buf, v46, [v29 sessionID]);
      }

      goto LABEL_60;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      v48 = [v29 status];
      LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
      *(buf.__r_.__value_.__r.__words + 4) = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I received ProfileNotification %@", &buf, 0xCu);
    }

    v49 = [v29 status];
    sub_1003993F4(a1, v49, 0);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176E304();
  }

LABEL_100:
}

void sub_1003991D4(void *a1, uint64_t a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Reply Session Error %ld", &v7, 0xCu);
  }

  a1[22] = 0;
  v5 = objc_alloc_init(ObjcSimTransferStartSessionResponse);
  [(ObjcSimTransferStartSessionResponse *)v5 setMsgError:a2];
  sub_10039BB74(a1, v5);
  a1[15] = a2;
  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I end session due to session error", &v7, 2u);
  }

  sub_10039831C(a1);
}

void sub_100399308(void *a1@<X1>, void *a2@<X8>)
{
  v7 = a1;
  v3 = objc_alloc_init(CellularPlanCrossPlatformTransportUtility);
  v4 = [(CellularPlanCrossPlatformTransportUtility *)v3 getSupportVersions];
  v5 = [(CellularPlanCrossPlatformTransportUtility *)v3 findHighestMatchingVersionFrom:v4 to:v7];
  v6 = v5;
  if (v5)
  {
    sub_10000501C(a2, [v5 UTF8String]);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_1003993F4(uint64_t a1, void *a2, int a3)
{
  v28 = a2;
  v29 = a1;
  v45 = 0;
  v46 = 0;
  (***(a1 + 56))(&__dst);
  v27 = a3;
  Registry::getNotificationSenderFactory(&__p, __dst);
  v5 = __p;
  (***(a1 + 56))(&v41);
  Registry::getTimerService(&v43, v41);
  (*(*v5 + 168))(&v45, v5, &v43, a1 + 24);
  if (v44)
  {
    sub_100004A34(v44);
  }

  if (v42)
  {
    sub_100004A34(v42);
  }

  if (*(&__p + 1))
  {
    sub_100004A34(*(&__p + 1));
  }

  if (*(&__dst + 1))
  {
    sub_100004A34(*(&__dst + 1));
  }

  if (v45)
  {
    theDict = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v7 = theDict;
      theDict = Mutable;
      *&__p = v7;
      sub_1000296E0(&__p);
    }

    *v38 = 0;
    v39 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v8)
    {
      v9 = *v38;
      *v38 = v8;
      *&__p = v9;
      sub_1000296E0(&__p);
    }

    if ([v28 count])
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v10 = v28;
      v11 = [v10 countByEnumeratingWithState:&v34 objects:v53 count:16];
      if (v11)
      {
        v12 = *v35;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v34 + 1) + 8 * i);
            v15 = [v14 iccid];
            v16 = v15;
            sub_10000501C(v31, [v15 UTF8String]);
            if (SHIBYTE(v32) < 0)
            {
              sub_100005F2C(&__dst, v31[0], v31[1]);
            }

            else
            {
              __dst = *v31;
              v49 = v32;
            }

            v47 = 0;
            if (SHIBYTE(v49) < 0)
            {
              sub_100005F2C(&__p, __dst, *(&__dst + 1));
            }

            else
            {
              __p = __dst;
              v51 = v49;
            }

            v52 = 0;
            if (ctu::cf::convert_copy())
            {
              v17 = v47;
              v47 = v52;
              v41 = v17;
              sub_100005978(&v41);
            }

            if (SHIBYTE(v51) < 0)
            {
              operator delete(__p);
            }

            v33 = v47;
            v47 = 0;
            sub_100005978(&v47);
            if (SHIBYTE(v49) < 0)
            {
              operator delete(__dst);
            }

            sub_1001768B8(*v38, @"kSourceIccid", v33);
            sub_100005978(&v33);
            if (SHIBYTE(v32) < 0)
            {
              operator delete(v31[0]);
            }

            if ([v14 status])
            {
              v18 = [v14 status];
              v19 = sub_10039C558(v18, v18);
              *&__dst = 0;
              *&__p = v19;
              v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &__p);
              if (v20)
              {
                v21 = __dst;
                *&__dst = v20;
                *&__p = v21;
                sub_100029A48(&__p);
              }
            }

            else
            {
              *&__dst = 0;
              *&__p = 5;
              v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &__p);
              if (v22)
              {
                v23 = __dst;
                *&__dst = v22;
                *&__p = v23;
                sub_100029A48(&__p);
              }
            }

            v41 = __dst;
            *&__dst = 0;
            sub_100029A48(&__dst);
            sub_100209DF4(*v38, @"kInstallStatus", v41);
            sub_100029A48(&v41);
            sub_10039D64C(v39, *v38);
          }

          v11 = [v10 countByEnumeratingWithState:&v34 objects:v53 count:16];
        }

        while (v11);
      }
    }

    else
    {
      *&__dst = 0;
      *&__p = 5;
      v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &__p);
      if (v24)
      {
        *&__dst = v24;
        *&__p = 0;
        sub_100029A48(&__p);
        v25 = __dst;
      }

      else
      {
        v25 = 0;
      }

      v41 = v25;
      *&__dst = 0;
      sub_100029A48(&__dst);
      sub_100209DF4(*v38, @"kInstallStatus", v25);
      sub_100029A48(&v41);
      sub_10039D64C(v39, *v38);
    }

    if (v27)
    {
      sub_10039D6BC(theDict, @"kCrossTransferEndSession", 1);
      if (*(v29 + 249) == 1)
      {
        sub_10039D6BC(theDict, @"kCrossTransferSecureIntentRejected", 1);
      }
    }

    sub_1002B24E0(theDict, @"kMultiplePlanInstallStatus", v39);
    v26 = v45;
    sub_100010180(&v30, &theDict);
    (*(*v26 + 40))(v26, &v30);
    sub_10001021C(&v30);
    sub_1000296E0(v38);
    sub_1000279DC(&v39);
    sub_1000296E0(&theDict);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176E524();
  }

  if (v46)
  {
    sub_100004A34(v46);
  }
}

void sub_100399A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28, const void *a29, const void *a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  sub_1000296E0(&a28);
  sub_1000279DC(&a29);
  sub_1000296E0(&a30);
  if (a38)
  {
    sub_100004A34(a38);
  }

  _Unwind_Resume(a1);
}

void sub_100399BC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v12 = v3;
    obj = v3;
    v4 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v4)
    {
      v5 = *v16;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          if ([v7 status] == 1)
          {
            v8 = [NSString stringWithUTF8String:sub_100649C38(2)];
            v21[0] = @"kSourceIccid";
            v9 = [v7 iccid];
            v22[0] = v9;
            v22[1] = &stru_101F6AFB8;
            v21[1] = @"kTargetEid";
            v21[2] = @"kTargetName";
            v22[2] = @"Android";
            v10 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];

            v11 = *(a1 + 40);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v20 = v10;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I fake transfer confirmation : %@", buf, 0xCu);
            }

            v14[0] = _NSConcreteStackBlock;
            v14[1] = 3321888768;
            v14[2] = nullsub_506;
            v14[3] = &unk_101E474D8;
            sub_100A84468(a1, v8, v10, 0, v14);
          }
        }

        v4 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v4);
    }

    v3 = v12;
  }
}

void sub_100399EA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Reply Profile Error %ld", &v7, 0xCu);
  }

  v5 = objc_alloc_init(ObjcSimTransferProfileResponse);
  [(ObjcSimTransferProfileResponse *)v5 setMsgError:a2];
  [(ObjcSimTransferProfileResponse *)v5 setSessionID:*(a1 + 176)];
  sub_10039BFE4(a1, v5);
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I end session due to profile error", &v7, 2u);
  }

  sub_10039831C(a1);
}

BOOL sub_100399FD8(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10000501C(__p, [v3 UTF8String]);
  v4 = sub_10016FA58(a1 + 224, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4 != 0;
}

void sub_10039A05C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(a1 + 32);
  if (v15)
  {
    *(v17 + 120) = 3;
    sub_100399EA0(v17, 3);
  }

  v32 = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v31 = 0;
  *__p = 0u;
  v30 = 0u;
  sub_10039AA88(&v32, __p);
  v18 = objc_alloc_init(ObjcSimTransferProfileResponse);
  if (LOBYTE(__p[0]) == 1)
  {
    v19 = *(v17 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I User Declined transfer on source", buf, 2u);
    }

    *(v17 + 249) = 1;
    v20 = 7;
  }

  else
  {
    v20 = 0;
  }

  [(ObjcSimTransferProfileResponse *)v18 setMsgError:v20];
  if ([v31 count])
  {
    v21 = [v31 objectAtIndexedSubscript:0];
    [(ObjcSimTransferProfileResponse *)v18 setItem:v21];
  }

  v22 = [(ObjcSimTransferProfileResponse *)v18 item];
  v23 = *(v17 + 88);
  *(v17 + 88) = v22;

  [(ObjcSimTransferProfileResponse *)v18 setSessionID:*(v17 + 176)];
  (***(v17 + 56))(&v27);
  *buf = v27;
  v27 = 0uLL;
  v24 = sub_1009347B8(buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (*(&v27 + 1))
  {
    sub_100004A34(*(&v27 + 1));
  }

  if ((v24 & 1) == 0)
  {
    if (v30 >= 0)
    {
      v25 = &__p[1];
    }

    else
    {
      v25 = __p[1];
    }

    v26 = [NSString stringWithUTF8String:v25];
    [(ObjcSimTransferProfileResponse *)v18 setSourceEID:v26];
  }

  sub_10039BFE4(v17, v18);

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[1]);
  }

  sub_10001021C(&v32);
}

void sub_10039A2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  sub_10039C58C(va);
  sub_10001021C(va1);

  _Unwind_Resume(a1);
}

uint64_t sub_10039A374(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 48);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10039A398(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10039A3B0(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176E558();
  }

  (*(**(a1 + 152) + 32))(*(a1 + 152));
  v16 = 0;
  v17 = 0;
  (***(a1 + 56))(&v12);
  Registry::getNotificationSenderFactory(&v14, v12);
  v2 = v14;
  (***(a1 + 56))(&v8);
  Registry::getTimerService(&v10, v8);
  (*(*v2 + 168))(&v16, v2, &v10, a1 + 24);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v16)
  {
    v3 = objc_opt_new();
    v4 = [NSString stringWithUTF8String:sub_100649BE0(*(a1 + 48))];
    [v3 setObject:v4 forKey:@"kCrossTransferEndpoint"];

    v5 = [NSNumber numberWithBool:1];
    [v3 setObject:v5 forKey:@"kIsCodeError"];

    v6 = v16;
    v7 = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    (*(*v6 + 40))(v6, &v7);
    sub_10001021C(&v7);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }
}

void sub_10039A600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);

  v6 = *(v4 - 40);
  if (v6)
  {
    sub_100004A34(v6);
  }

  _Unwind_Resume(a1);
}

void sub_10039A69C(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176E58C();
  }
}

void sub_10039A734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039A750(uint64_t a1, uint64_t *a2)
{
  v19[0] = 0;
  v19[1] = 0;
  (***(a1 + 56))(&v15);
  Registry::getNotificationSenderFactory(&v17, v15);
  v4 = v17;
  (***(a1 + 56))(&v11);
  Registry::getTimerService(&v13, v11);
  (*(*v4 + 168))(v19, v4, &v13, a1 + 24);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (v19[0])
  {
    v5 = objc_opt_new();
    v6 = [NSString stringWithUTF8String:sub_100649BE0(*(a1 + 48))];
    [v5 setObject:v6 forKey:@"kCrossTransferEndpoint"];

    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = [NSString stringWithUTF8String:v7];
    [v5 setObject:v8 forKey:@"kCrossTransferTimeout"];

    v9 = v19[0];
    v10 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    (*(*v9 + 40))(v9, &v10);
    sub_10001021C(&v10);
  }

  sub_10039831C(a1);
}

void sub_10039A960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);

  v6 = *(v4 - 56);
  if (v6)
  {
    sub_100004A34(v6);
  }

  _Unwind_Resume(a1);
}

void sub_10039AA04(uint64_t a1, uint64_t a2)
{
  sub_1007D1B2C(a1, a2);

  sub_1007D114C(a1, 1, 0);
}

void sub_10039AA44(uint64_t a1, uint64_t a2)
{
  v2 = a1 - 136;
  sub_1007D1B2C(a1 - 136, a2);

  sub_1007D114C(v2, 1, 0);
}

uint64_t sub_10039AA88@<X0>(const void **a1@<X1>, uint64_t a2@<X8>)
{
  v46 = 0;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  *v42 = 0u;
  v43 = 0u;
  sub_100010024(&v41, a1);
  sub_10091F7B4(&v41, v42);
  sub_10001021C(&v41);
  v3 = +[NSMutableArray array];
  memset(&v40, 0, sizeof(v40));
  sub_10000501C(&v40, "");
  v4 = *(&v43 + 1);
  if (*(&v43 + 1) != &v44)
  {
    v37 = a2;
    while (1)
    {
      v5 = *(v4 + 353);
      v6 = objc_alloc_init(ObjcSimTransferItem);
      v7 = v4 + 2;
      if (*(v4 + 55) < 0)
      {
        v7 = *v7;
      }

      v8 = [NSString stringWithUTF8String:v7, v37];
      [(ObjcSimTransferItem *)v6 setIccid:v8];

      v9 = v4 + 13;
      if (*(v4 + 127) < 0)
      {
        v9 = *v9;
      }

      v10 = [NSString stringWithUTF8String:v9];
      [(ObjcSimTransferItem *)v6 setMcc:v10];

      v11 = v4 + 8;
      if (*(v4 + 151) < 0)
      {
        v11 = *v11;
      }

      v12 = [NSString stringWithUTF8String:v11];
      [(ObjcSimTransferItem *)v6 setMnc:v12];

      v13 = v4 + 19;
      if (*(v4 + 175) < 0)
      {
        v13 = *v13;
      }

      v14 = [NSString stringWithUTF8String:v13];
      [(ObjcSimTransferItem *)v6 setGid1:v14];

      v15 = v4 + 11;
      if (*(v4 + 199) < 0)
      {
        v15 = *v15;
      }

      v16 = [NSString stringWithUTF8String:v15];
      [(ObjcSimTransferItem *)v6 setGid2:v16];

      v17 = v4 + 25;
      if (*(v4 + 223) < 0)
      {
        v17 = *v17;
      }

      v18 = [NSString stringWithUTF8String:v17];
      [(ObjcSimTransferItem *)v6 setCarrierName:v18];

      v19 = v4 + 31;
      if (*(v4 + 271) < 0)
      {
        v19 = *v19;
      }

      v20 = [NSString stringWithUTF8String:v19];
      [(ObjcSimTransferItem *)v6 setPhoneNumber:v20];

      v21 = v4 + 14;
      if (*(v4 + 247) < 0)
      {
        v21 = *v21;
      }

      v22 = [NSString stringWithUTF8String:v21];
      [(ObjcSimTransferItem *)v6 setImsi:v22];

      v23 = v4 + 17;
      if (*(v4 + 295) < 0)
      {
        v23 = *v23;
      }

      v24 = [NSString stringWithUTF8String:v23];
      [(ObjcSimTransferItem *)v6 setImei:v24];

      [(ObjcSimTransferItem *)v6 setError:0];
      if ((*(v4 + 319) & 0x8000000000000000) != 0)
      {
        if (*(v4 + 38))
        {
LABEL_25:
          v25 = objc_alloc_init(ObjcSimTransferProfileTokenInfo);
          v26 = v4 + 37;
          if (*(v4 + 319) < 0)
          {
            v26 = *v26;
          }

          v27 = [NSString stringWithUTF8String:v26];
          [(ObjcSimTransferProfileTokenInfo *)v25 setToken:v27];

          v28 = v4 + 20;
          if (*(v4 + 343) < 0)
          {
            v28 = *v28;
          }

          v29 = [NSString stringWithUTF8String:v28];
          [(ObjcSimTransferProfileTokenInfo *)v25 setTokenExpiry:v29];

          [(ObjcSimTransferItem *)v6 setToken:v25];
        }
      }

      else if (*(v4 + 319))
      {
        goto LABEL_25;
      }

      std::string::operator=(&v40, (v4 + 56));
      [v3 addObject:v6];

      v30 = *(v4 + 1);
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = *(v4 + 2);
          v32 = *v31 == v4;
          v4 = v31;
        }

        while (!v32);
      }

      v4 = v31;
      if (v31 == &v44)
      {
        v33 = v5 == 2;
        a2 = v37;
        goto LABEL_38;
      }
    }
  }

  v33 = 0;
LABEL_38:
  v34 = [v3 copy];
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *&v40.__r_.__value_.__l.__data_;
    *&v39 = *(&v40.__r_.__value_.__l + 2);
  }

  *a2 = v33;
  *(a2 + 8) = __p;
  v35 = v39;
  v39 = 0u;
  __p = 0u;
  *(a2 + 24) = v35;
  *(a2 + 32) = v34;
  if (SBYTE7(v39) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  sub_10039C608(&v43 + 8, v44);
  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }

  return sub_100111C2C(v45);
}

void sub_10039AF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10039C5C8(&a23);
  sub_100111C2C(&a31);
  _Unwind_Resume(a1);
}

void sub_10039B028(uint64_t a1)
{
  *__p = 0u;
  v16 = 0u;
  v13 = 0u;
  *v14 = 0u;
  *v12 = 0u;
  v11 = 0;
  sub_10092DD0C(v12, &v11);
  v2 = [NSString stringWithUTF8String:sub_100649C38(0)];
  v3 = v11;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I send ListReq", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_10039B23C;
  v7[3] = &unk_101E47470;
  sub_100004AA0(buf, (a1 + 8));
  v6 = *buf;
  v5 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v5);
    v8 = a1;
    v9 = v6;
    v10 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v8 = a1;
    v9 = *buf;
    v10 = 0;
  }

  sub_100A84468(a1, v2, v3, 0, v7);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  sub_10001021C(&v11);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[1]);
  }
}

void sub_10039B1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, const void *a16, __int16 a17, char a18, char a19)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  sub_10001021C(&a16);
  sub_100265450(&a17);
  _Unwind_Resume(a1);
}

void sub_10039B23C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v9;
  v56 = v10;
  v14 = v11;
  v15 = v12;
  v16 = *(a1 + 32);
  v17 = *(v16 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I get ListReq response inError=%@", buf, 0xCu);
  }

  if (v14)
  {
    sub_1003991D4(v16, 3);
  }

  theDict = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  sub_1000167D4((v16 + 96), "ObjcSimTransferStartSessionResponse", 0x23uLL);
  if (!CFDictionaryContainsKey(theDict, @"CrossPlatformTransferListReqErr"))
  {
    v65 = 0;
    *v63 = 0u;
    v64 = 0u;
    sub_10039AA88(&theDict, v63);
    v55 = objc_alloc_init(ObjcSimTransferStartSessionResponse);
    [(ObjcSimTransferStartSessionResponse *)v55 setMsgError:0];
    v23 = [NSNumber numberWithUnsignedLongLong:*(v16 + 176)];
    [(ObjcSimTransferStartSessionResponse *)v55 setSessionID:v23];

    v24 = (v16 + 184);
    if (*(v16 + 207) < 0)
    {
      v24 = *v24;
    }

    v25 = [NSString stringWithUTF8String:v24];
    [(ObjcSimTransferStartSessionResponse *)v55 setVersion:v25];

    [(ObjcSimTransferStartSessionResponse *)v55 setItems:v65];
    v62 = 0;
    (***(v16 + 56))(buf);
    ServiceMap = Registry::getServiceMap(*&buf[0]);
    v27 = ServiceMap;
    if (v28 < 0)
    {
      v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
      v30 = 5381;
      do
      {
        v28 = v30;
        v31 = *v29++;
        v30 = (33 * v30) ^ v31;
      }

      while (v31);
    }

    std::mutex::lock(ServiceMap);
    *&v58 = v28;
    v32 = sub_100009510(&v27[1].__m_.__sig, &v58);
    if (v32)
    {
      v34 = v32[3];
      v33 = v32[4];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v27);
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v33);
        v35 = 0;
LABEL_37:
        (*(*v34 + 152))(&v62, v34);
        if ((v35 & 1) == 0)
        {
          sub_100004A34(v33);
        }

        if (*(&buf[0] + 1))
        {
          sub_100004A34(*(&buf[0] + 1));
        }

        [(ObjcSimTransferStartSessionResponse *)v55 setFriendlyDeviceName:v62];
        v43 = [(ObjcSimTransferStartSessionResponse *)v55 items];
        v44 = [v43 objectAtIndexedSubscript:0];
        v45 = *(v16 + 88);
        *(v16 + 88) = v44;

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v46 = v65;
        v47 = [v46 countByEnumeratingWithState:&v58 objects:buf count:16];
        if (v47)
        {
          v48 = *v59;
          do
          {
            for (i = 0; i != v47; i = i + 1)
            {
              if (*v59 != v48)
              {
                objc_enumerationMutation(v46);
              }

              v50 = *(*(&v58 + 1) + 8 * i);
              v51 = [v50 iccid];
              v52 = v51;
              sub_10000501C(&__p, [v51 UTF8String]);
              sub_10017695C((v16 + 224), &__p, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            v47 = [v46 countByEnumeratingWithState:&v58 objects:buf count:16];
          }

          while (v47);
        }

        v53 = *(v16 + 40);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          sub_100074B94(*(v16 + 224), (v16 + 232), ",", 1, &__p);
          v54 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *v67 = 136315138;
          v68 = v54;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I Reply Session Response selected iccids=%s", v67, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        sub_10039BB74(v16, v55);
        sub_100005978(&v62);

        if (SHIBYTE(v64) < 0)
        {
          operator delete(v63[1]);
        }

        goto LABEL_58;
      }
    }

    else
    {
      v34 = 0;
    }

    std::mutex::unlock(v27);
    v33 = 0;
    v35 = 1;
    goto LABEL_37;
  }

  Value = CFDictionaryGetValue(theDict, @"CrossPlatformTransferListReqErr");
  v19 = Value;
  LODWORD(buf[0]) = 0;
  if (Value)
  {
    v20 = CFGetTypeID(Value);
    if (v20 == CFNumberGetTypeID())
    {
      ctu::cf::assign(buf, v19, v21);
    }

    v22 = buf[0];
  }

  else
  {
    v22 = 0;
  }

  v36 = *(v16 + 40);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I ListReq error: send Session Response With error", buf, 2u);
  }

  switch(v22)
  {
    case 2:
      v37 = objc_alloc_init(ObjcSimTransferStartSessionResponse);
      [(ObjcSimTransferStartSessionResponse *)v37 setMsgError:5];
      v41 = [NSNumber numberWithUnsignedLongLong:*(v16 + 176)];
      [(ObjcSimTransferStartSessionResponse *)v37 setSessionID:v41];

      v39 = (v16 + 184);
      if (*(v16 + 207) < 0)
      {
        v39 = *v39;
      }

      goto LABEL_34;
    case 1:
      v37 = objc_alloc_init(ObjcSimTransferStartSessionResponse);
      [(ObjcSimTransferStartSessionResponse *)v37 setMsgError:6];
      v40 = [NSNumber numberWithUnsignedLongLong:*(v16 + 176)];
      [(ObjcSimTransferStartSessionResponse *)v37 setSessionID:v40];

      v39 = (v16 + 184);
      if (*(v16 + 207) < 0)
      {
        v39 = *v39;
      }

      goto LABEL_34;
    case 0:
      v37 = objc_alloc_init(ObjcSimTransferStartSessionResponse);
      [(ObjcSimTransferStartSessionResponse *)v37 setMsgError:7];
      v38 = [NSNumber numberWithUnsignedLongLong:*(v16 + 176)];
      [(ObjcSimTransferStartSessionResponse *)v37 setSessionID:v38];

      v39 = (v16 + 184);
      if (*(v16 + 207) < 0)
      {
        v39 = *v39;
      }

LABEL_34:
      v42 = [NSString stringWithUTF8String:v39];
      [(ObjcSimTransferStartSessionResponse *)v37 setVersion:v42];

      sub_10039BB74(v16, v37);
      *(v16 + 120) = [(ObjcSimTransferStartSessionResponse *)v37 msgError];

      break;
  }

LABEL_58:
  sub_10001021C(&theDict);
}

void sub_10039B998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, const void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_10001021C(&a36);

  _Unwind_Resume(a1);
}

uint64_t sub_10039BB40(uint64_t result, uint64_t a2)
{
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 48);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10039BB64(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10039BB74(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 168) encodeStartSessionResponse:a2];
  sub_10039BBEC(a1, v3, @"ObjcSimTransferStartSessionResponse");
}

void sub_10039BBEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 152);
  sub_10000501C(__p, [v6 UTF8String]);
  (*(*v7 + 24))(v7, __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, [v6 UTF8String]);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  *(a1 + 96) = *__p;
  *(a1 + 112) = v18;
  sub_100004AA0(__p, (a1 + 8));
  v9 = __p[0];
  v8 = __p[1];
  if (__p[1])
  {
    atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v8);
  }

  v10 = *(a1 + 144);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3321888768;
  v12[2] = sub_10039C05C;
  v12[3] = &unk_101E474A8;
  v14 = a1;
  v15 = v9;
  v16 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v6;
  v13 = v11;
  [v10 send:v5 completion:v12];

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_10039BD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  _Unwind_Resume(a1);
}

void sub_10039BDEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I RequestID's %@ becomes available", buf, 0xCu);
  }

  if (*(a1 + 248) == 1 && [v3 isEqualToString:qword_101FBA2B0])
  {
    *(a1 + 248) = 0;
    v5 = *(a1 + 216);
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    if (v5)
    {
      sub_100004A34(v5);
    }

    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I RequestID's handler becomes available", buf, 2u);
    }

    *buf = 0uLL;
    sub_100004AA0(buf, (a1 + 8));
    operator new();
  }
}

void sub_10039BFB8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10039BFE4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 168) encodeProfileResponse:a2];
  sub_10039BBEC(a1, v3, @"ObjcSimTransferProfileResponse");
}

void sub_10039C05C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[7];
  if (v4)
  {
    v5 = a1[5];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (a1[6])
      {
        v8 = *(v5 + 40);
        if (v3)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = a1[4];
            v10 = [v3 localizedDescription];
            sub_10176E5C0(v9, v10, &v12, v8);
          }
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = a1[4];
          v12 = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Send %@ Success", &v12, 0xCu);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10039C170(_Unwind_Exception *a1)
{
  sub_100004A34(v2);

  _Unwind_Resume(a1);
}

void sub_10039C190(uint64_t a1)
{
  v2 = [*(a1 + 72) objectForKeyedSubscript:qword_101FBA2B0];

  if (v2)
  {
    memset(buf, 0, sizeof(buf));
    sub_100004AA0(buf, (a1 + 8));
    operator new();
  }

  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Start Timer to wait requestID handler available", buf, 2u);
  }

  (***(a1 + 56))(&v9);
  Registry::getTimerService(&v11, v9);
  sub_10000501C(__p, "requestID.waiting");
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10039C49C;
  v6[3] = &unk_101E26008;
  v6[4] = a1;
  v4 = objc_retainBlock(v6);
  *buf = *__p;
  v15 = v8;
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  ctu::TimerService::createOneShotTimerImpl();
  if (SHIBYTE(v15) < 0)
  {
    operator delete(*buf);
  }

  sub_10039C50C((a1 + 208), &v13);
  v5 = v13;
  v13 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  *(a1 + 248) = 1;
}

void sub_10039C424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24)
{
  v27 = *(v25 - 72);
  *(v25 - 72) = 0;
  if (v27)
  {
    sub_10176B574(v27);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    sub_100004A34(a24);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(a1);
}

void sub_10039C49C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Time out, reply session error", v3, 2u);
  }

  sub_1003991D4(v1, 3);
}

void *sub_10039C50C(void *a1, uint64_t *a2)
{
  sub_10039D0F4(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t sub_10039C558(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1017FABD0[a2 - 1];
  }
}

uint64_t sub_10039C58C(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10039C5C8(uint64_t a1)
{
  sub_10039C608(a1 + 24, *(a1 + 32));
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10039C608(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10039C608(a1, *a2);
    sub_10039C608(a1, a2[1]);
    sub_10039C664((a2 + 4));

    operator delete(a2);
  }
}

void sub_10039C664(uint64_t a1)
{
  sub_10027DF50(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_10039C750(void *a1, unsigned __int8 *a2, NSObject **a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E47568;
  sub_10039C848((a1 + 3), a2, a3, a4);
}

void sub_10039C7CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E47568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10039C848(uint64_t a1, unsigned __int8 *a2, NSObject **a3, uint64_t *a4)
{
  v6 = *a2;
  v7 = *a3;
  v11 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a4;
  v9 = a4[1];
  v10[0] = v8;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10039773C(a1, v6, &v11, v10);
}

void sub_10039C8DC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10039C974(void *a1, __int128 *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E475B8;
  sub_10039CA6C(a1 + 3, a2, a3);
  return a1;
}

void sub_10039C9F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E475B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10039CA6C(void *a1, __int128 *a2, uint64_t *a3)
{
  v5 = *a2;
  *a2 = 0uLL;
  sub_100A07A54(a1, &v5, *a3);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }

  return a1;
}

void sub_10039CABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_10039CAD4(uint64_t **a1, char *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_10039CB54(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *sub_10039CB54(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_100074A00(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_10039CBE4();
  }

  return result;
}

void sub_10039CC80(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10039CD0C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E47608;
  a2[1] = v2;
  return result;
}

void sub_10039CD38(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a3;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = 136315394;
    v10 = v8;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I last received event: %s timeout in %d", &v9, 0x12u);
  }

  sub_10039A750(v5, a2);
}

uint64_t sub_10039CE10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10039CE5C(uint64_t a1)
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

uint64_t sub_10039CF4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E47698;
  a2[1] = v2;
  return result;
}

void sub_10039CF78(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = v3[5];
  if (*a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176E61C(v2, v4);
    }

    v3[15] = 3;
    sub_1003991D4(v3, 3);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I create bootstrap plan transfer success", v5, 2u);
  }

  sub_10039C190(v3);
}

uint64_t sub_10039D028(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10039D074(uint64_t **a1)
{
  v1 = a1;
  sub_10039B028(**a1);
  operator delete();
}

uint64_t *sub_10039D0F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

void sub_10039D178(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10039D1B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10039D1E0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10039D220(uint64_t **a1)
{
  v1 = a1;
  sub_10039B028(**a1);
  operator delete();
}

void sub_10039D2A0(uint64_t **a1)
{
  v1 = **a1;
  [*(v1 + 144) stop:{sub_1007D1B8C(v1), a1}];
  (***(v1 + 56))(&v12);
  ServiceMap = Registry::getServiceMap(v12);
  v3 = ServiceMap;
  v4 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v5 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  v14[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v14);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  v14[0] = off_101E47768;
  v14[3] = v14;
  (*(*v10 + 1016))(v10, 1, v14);
  sub_10039D5CC(v14);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  operator delete();
}

void sub_10039D484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  va_start(va, a11);
  sub_10039D5CC(va);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  operator delete();
}

uint64_t sub_10039D580(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E477D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10039D5CC(uint64_t a1)
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

BOOL sub_10039D64C(__CFArray *a1, CFTypeRef cf)
{
  v5 = cf;
  if (cf)
  {
    CFRetain(cf);
    CFArrayAppendValue(a1, cf);
  }

  sub_100DA3324(&v5);
  return cf != 0;
}

void sub_10039D6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10039D6BC(CFMutableDictionaryRef theDict, CFTypeRef cf, int a3)
{
  v12 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = &kCFBooleanTrue;
  if (!a3)
  {
    v6 = &kCFBooleanFalse;
  }

  v7 = *v6;
  v11 = *v6;
  if (cf)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    CFDictionaryAddValue(theDict, cf, v7);
  }

  sub_100DA3324(&v11);
  sub_100DA3324(&v12);
  return v9;
}
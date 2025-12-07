void sub_1004F069C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004F072C(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = a2;
  if ((sub_100071FDC(*a1, a2) & 0x100000000) != 0)
  {
    v6 = *a1[1];
    v7 = v6[11];
    v8 = v6[10];
    if (v8 >= v7)
    {
      if (v7 == v6[12])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 8), v7 + 1);
        v7 = v6[11];
      }

      v6[11] = v7 + 1;
      sub_1004F0CC0();
    }

    v9 = *(v6 + 4);
    v6[10] = v8 + 1;
    v10 = *(v9 + 8 * v8);
    v10[5] |= 1u;
    v10[2] = a3;
    v11 = sub_100A392D0(*a1, v4);
    if ((v11 & 0x100000000) != 0)
    {
      v10[5] |= 2u;
      v10[3] = v11;
      if (v4 == 15)
      {
        v31 = 0;
        v32[0] = 0;
        v32[1] = 0;
        sub_1003ED1D8(&v31, *a1 + 56);
        v12 = v32[0];
        if (v32[0])
        {
          v13 = v32;
          v14 = v32[0];
          do
          {
            if (v14[8] >= 15)
            {
              v13 = v14;
            }

            v14 = *&v14[2 * (v14[8] < 15)];
          }

          while (v14);
          if (v13 != v32 && v13[8] <= 15)
          {
            v15 = *(v13 + 5);
            if (v15)
            {
              if (*(v15 + 24) == 1)
              {
                v16 = *v15;
                v17 = v15[1];
                if (*v15 != v17)
                {
                  while (1)
                  {
                    v18 = a1[2];
                    v19 = v18[33];
                    v20 = v18[32];
                    if (v20 >= v19)
                    {
                      if (v19 == v18[34])
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v18 + 30), v19 + 1);
                        v19 = v18[33];
                      }

                      v18[33] = v19 + 1;
                      sub_1004F0C5C();
                    }

                    v21 = *(v18 + 15);
                    v18[32] = v20 + 1;
                    v22 = *(v21 + 8 * v20);
                    if (*(v16 + 4) != 1)
                    {
                      goto LABEL_31;
                    }

                    v23 = *v16;
                    if (!*v16)
                    {
                      break;
                    }

                    if (v23 == 1)
                    {
                      if (!awd::metrics::CommCenterEntitlementResponse_CommCenter5GEntitlementDetails_CC5GPlanType_IsValid(1, v12))
                      {
                        goto LABEL_54;
                      }

LABEL_30:
                      *(v22 + 40) |= 1u;
                      *(v22 + 8) = v23;
                    }

LABEL_31:
                    if (*(v16 + 9) == 1)
                    {
                      v24 = *(v16 + 8);
                      *(v22 + 40) |= 2u;
                      *(v22 + 12) = v24;
                    }

                    if (*(v16 + 16) == 1)
                    {
                      v25 = v16[3];
                      *(v22 + 40) |= 4u;
                      *(v22 + 32) = v25;
                    }

                    if (*(v16 + 48) == 1)
                    {
                      v26 = *(v16 + 3);
                      v27 = *(v16 + 4);
                      while (1)
                      {
                        if (v26 == v27)
                        {
                          goto LABEL_49;
                        }

                        v28 = *v26;
                        if (*v26 == 1)
                        {
                          break;
                        }

                        if (v28)
                        {
                          goto LABEL_48;
                        }

                        if ((awd::metrics::CommCenterEntitlementResponse_CommCenter5GEntitlementDetails_CC5GPlanSupportedRAT_IsValid(0, v12) & 1) == 0)
                        {
                          goto LABEL_53;
                        }

                        v29 = *(v22 + 24);
                        if (v29 == *(v22 + 28))
                        {
                          goto LABEL_45;
                        }

                        v28 = 0;
LABEL_47:
                        v30 = *(v22 + 16);
                        *(v22 + 24) = v29 + 1;
                        *(v30 + 4 * v29) = v28;
LABEL_48:
                        ++v26;
                      }

                      if (!awd::metrics::CommCenterEntitlementResponse_CommCenter5GEntitlementDetails_CC5GPlanSupportedRAT_IsValid(1, v12))
                      {
LABEL_53:
                        __assert_rtn("add_supportedrats", "CCMetricsCarrierEntitlements.pb.h", 1343, "::awd::metrics::CommCenterEntitlementResponse_CommCenter5GEntitlementDetails_CC5GPlanSupportedRAT_IsValid(value)");
                      }

                      v29 = *(v22 + 24);
                      if (v29 != *(v22 + 28))
                      {
                        v28 = 1;
                        goto LABEL_47;
                      }

LABEL_45:
                      sub_10080B50C((v22 + 16), v29 + 1);
                      v29 = *(v22 + 24);
                      goto LABEL_47;
                    }

LABEL_49:
                    v16 += 16;
                    if (v16 == v17)
                    {
                      v12 = v32[0];
                      goto LABEL_51;
                    }
                  }

                  if ((awd::metrics::CommCenterEntitlementResponse_CommCenter5GEntitlementDetails_CC5GPlanType_IsValid(0, v12) & 1) == 0)
                  {
LABEL_54:
                    __assert_rtn("set_plan_type", "CCMetricsCarrierEntitlements.pb.h", 1279, "::awd::metrics::CommCenterEntitlementResponse_CommCenter5GEntitlementDetails_CC5GPlanType_IsValid(value)");
                  }

                  goto LABEL_30;
                }
              }
            }
          }
        }

LABEL_51:
        sub_10006EC28(&v31, v12);
      }
    }
  }
}

uint64_t sub_1004F0AA4(uint64_t a1)
{
  sub_10006DCAC(a1 + 24, *(a1 + 32));
  sub_10006DCAC(a1, *(a1 + 8));
  return a1;
}

unint64_t sub_1004F0AE0(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v2 = a1 + 32;
  v3 = v4;
  if (v4)
  {
    v5 = v2;
    do
    {
      if (*(v3 + 28) >= a2)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 28) < a2));
    }

    while (v3);
    if (v5 != v2 && *(v5 + 28) <= a2)
    {
      v9 = *(v5 + 32);
      v7 = v9 & 0xFFFFFF00;
      LODWORD(v3) = v9;
      v6 = &_mh_execute_header;
      return v6 | v7 | v3;
    }

    v6 = 0;
    LODWORD(v3) = 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  return v6 | v7 | v3;
}

void sub_1004F0B4C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = sub_10000D79C(a1);
  if (v5)
  {
    v6 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v6 = *v6;
    }

    v7 = v4 - v6;
  }

  else
  {
    v7 = 0;
  }

  *&a2->__r_.__value_.__l.__data_ = *(a1 + 64);
  a2->__r_.__value_.__r.__words[2] = *(a1 + 80);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  std::string::resize(a2, v7 + v5, 0);
  std::string::erase(a2, 0, v7);
  sub_10000BD98(a1);
}

void sub_1004F0BDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004F0D24(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10009A404(a1, a2);
  }

  return a1;
}

void *sub_1004F0DA4(void *a1, char *a2, char *a3)
{
  v5 = sub_10000501C(a1, a2);
  sub_10000501C(v5 + 3, a3);
  return a1;
}

void sub_1004F0DDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004F0DF8(void *a1, char *a2, char *a3)
{
  v5 = sub_10000501C(a1, a2);
  sub_10000501C(v5 + 3, a3);
  return a1;
}

void sub_1004F0E30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004F0E4C(void *a1, char *a2, char *a3)
{
  v5 = sub_10000501C(a1, a2);
  sub_10000501C(v5 + 3, a3);
  return a1;
}

void sub_1004F0E84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004F0EA0(uint64_t a1, char *a2, __int128 *a3)
{
  sub_10000501C(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

void sub_1004F0EF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004F0F10(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000D0358(result, a4);
  }

  return result;
}

void sub_1004F0F68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1004F0F84(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v8)
  {
    v6 = 0;
    v7 = 0;
    sub_10001C610(&v6);
    v4 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_10001C0A0(&v8);
  return v4;
}

void sub_1004F10B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004F1130(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  *(a2 + 76) |= 0x10u;
  v5 = *(a2 + 64);
  if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v5, v4);
  if (sub_10053588C(**(a1 + 40), 0))
  {
    v6 = sub_1005376EC(**(a1 + 40));
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v74;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v74 != v10)
          {
            objc_enumerationMutation(v6);
          }

          AwdEntitlementRequestType = entitlements::getAwdEntitlementRequestType(*(*(&v73 + 1) + 8 * i), v8);
          if (AwdEntitlementRequestType != -1)
          {
            v13 = AwdEntitlementRequestType;
            v14 = *(a2 + 56);
            if (v14 == *(a2 + 60))
            {
              sub_10080B50C((a2 + 48), v14 + 1);
              v14 = *(a2 + 56);
            }

            v15 = *(a2 + 48);
            *(a2 + 56) = v14 + 1;
            *(v15 + 4 * v14) = v13;
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v9);
    }

    v16 = *(a2 + 24);
    if (v16 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v16 + 1);
      v16 = *(a2 + 24);
    }

    v17 = *(a2 + 16);
    *(a2 + 24) = v16 + 1;
    *(v17 + 4 * v16) = 1;
  }

  if (sub_10053588C(**(a1 + 40), 1))
  {
    v18 = sub_1005376A8(**(a1 + 40));
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v69 objects:v77 count:16];
    if (v19)
    {
      v21 = v19;
      v22 = *v70;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v70 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = entitlements::getAwdEntitlementRequestType(*(*(&v69 + 1) + 8 * j), v20);
          if (v24 != -1)
          {
            v25 = v24;
            v26 = *(a2 + 40);
            if (v26 == *(a2 + 44))
            {
              sub_10080B50C((a2 + 32), v26 + 1);
              v26 = *(a2 + 40);
            }

            v27 = *(a2 + 32);
            *(a2 + 40) = v26 + 1;
            *(v27 + 4 * v26) = v25;
          }
        }

        v21 = [v18 countByEnumeratingWithState:&v69 objects:v77 count:16];
      }

      while (v21);
    }

    v28 = *(a2 + 24);
    if (v28 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v28 + 1);
      v28 = *(a2 + 24);
    }

    v29 = *(a2 + 16);
    *(a2 + 24) = v28 + 1;
    *(v29 + 4 * v28) = 2;
  }

  if (sub_10053588C(**(a1 + 40), 2))
  {
    v30 = *(a2 + 24);
    if (v30 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v30 + 1);
      v30 = *(a2 + 24);
    }

    v31 = *(a2 + 16);
    *(a2 + 24) = v30 + 1;
    *(v31 + 4 * v30) = 3;
  }

  if (sub_10053588C(**(a1 + 40), 3))
  {
    v32 = *(a2 + 24);
    if (v32 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v32 + 1);
      v32 = *(a2 + 24);
    }

    v33 = *(a2 + 16);
    *(a2 + 24) = v32 + 1;
    *(v33 + 4 * v32) = 4;
  }

  if (sub_10053588C(**(a1 + 40), 11))
  {
    v34 = *(a2 + 24);
    if (v34 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v34 + 1);
      v34 = *(a2 + 24);
    }

    v35 = *(a2 + 16);
    *(a2 + 24) = v34 + 1;
    *(v35 + 4 * v34) = 9;
  }

  if (sub_10053588C(**(a1 + 40), 13))
  {
    v36 = *(a2 + 24);
    if (v36 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v36 + 1);
      v36 = *(a2 + 24);
    }

    v37 = *(a2 + 16);
    *(a2 + 24) = v36 + 1;
    *(v37 + 4 * v36) = 6;
  }

  if (sub_10053588C(**(a1 + 40), 5))
  {
    v38 = *(a2 + 24);
    if (v38 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v38 + 1);
      v38 = *(a2 + 24);
    }

    v39 = *(a2 + 16);
    *(a2 + 24) = v38 + 1;
    *(v39 + 4 * v38) = 7;
  }

  if (sub_10053588C(**(a1 + 40), 6))
  {
    v40 = *(a2 + 24);
    if (v40 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v40 + 1);
      v40 = *(a2 + 24);
    }

    v41 = *(a2 + 16);
    *(a2 + 24) = v40 + 1;
    *(v41 + 4 * v40) = 8;
  }

  if (sub_10053588C(**(a1 + 40), 4))
  {
    v42 = *(a2 + 24);
    if (v42 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v42 + 1);
      v42 = *(a2 + 24);
    }

    v43 = *(a2 + 16);
    *(a2 + 24) = v42 + 1;
    *(v43 + 4 * v42) = 5;
  }

  if (sub_10053588C(**(a1 + 40), 12))
  {
    v44 = *(a2 + 24);
    if (v44 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v44 + 1);
      v44 = *(a2 + 24);
    }

    v45 = *(a2 + 16);
    *(a2 + 24) = v44 + 1;
    *(v45 + 4 * v44) = 10;
  }

  if (sub_10053588C(**(a1 + 40), 28))
  {
    v46 = *(a2 + 24);
    if (v46 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v46 + 1);
      v46 = *(a2 + 24);
    }

    v47 = *(a2 + 16);
    *(a2 + 24) = v46 + 1;
    *(v47 + 4 * v46) = 11;
  }

  if (sub_10053588C(**(a1 + 40), 29))
  {
    v48 = *(a2 + 24);
    if (v48 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v48 + 1);
      v48 = *(a2 + 24);
    }

    v49 = *(a2 + 16);
    *(a2 + 24) = v48 + 1;
    *(v49 + 4 * v48) = 12;
  }

  if (sub_10053588C(**(a1 + 40), 19))
  {
    v50 = *(a2 + 24);
    if (v50 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v50 + 1);
      v50 = *(a2 + 24);
    }

    v51 = *(a2 + 16);
    *(a2 + 24) = v50 + 1;
    *(v51 + 4 * v50) = 21;
  }

  if (sub_10053588C(**(a1 + 40), 8))
  {
    v52 = *(a2 + 24);
    if (v52 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v52 + 1);
      v52 = *(a2 + 24);
    }

    v53 = *(a2 + 16);
    *(a2 + 24) = v52 + 1;
    *(v53 + 4 * v52) = 16;
  }

  if (sub_10053588C(**(a1 + 40), 18))
  {
    v54 = *(a2 + 24);
    if (v54 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v54 + 1);
      v54 = *(a2 + 24);
    }

    v55 = *(a2 + 16);
    *(a2 + 24) = v54 + 1;
    *(v55 + 4 * v54) = 15;
  }

  if (sub_10053588C(**(a1 + 40), 21))
  {
    v56 = *(a2 + 24);
    if (v56 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v56 + 1);
      v56 = *(a2 + 24);
    }

    v57 = *(a2 + 16);
    *(a2 + 24) = v56 + 1;
    *(v57 + 4 * v56) = 23;
  }

  if (sub_10053588C(**(a1 + 40), 9))
  {
    v58 = *(a2 + 24);
    if (v58 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v58 + 1);
      v58 = *(a2 + 24);
    }

    v59 = *(a2 + 16);
    *(a2 + 24) = v58 + 1;
    *(v59 + 4 * v58) = 17;
  }

  if (sub_10053588C(**(a1 + 40), 10))
  {
    v60 = *(a2 + 24);
    if (v60 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v60 + 1);
      v60 = *(a2 + 24);
    }

    v61 = *(a2 + 16);
    *(a2 + 24) = v60 + 1;
    *(v61 + 4 * v60) = 18;
  }

  if (sub_10053588C(**(a1 + 40), 16))
  {
    v62 = *(a2 + 24);
    if (v62 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v62 + 1);
      v62 = *(a2 + 24);
    }

    v63 = *(a2 + 16);
    *(a2 + 24) = v62 + 1;
    *(v63 + 4 * v62) = 19;
  }

  if (sub_10053588C(**(a1 + 40), 17))
  {
    v64 = *(a2 + 24);
    if (v64 == *(a2 + 28))
    {
      sub_10080B50C((a2 + 16), v64 + 1);
      v64 = *(a2 + 24);
    }

    v65 = *(a2 + 16);
    *(a2 + 24) = v64 + 1;
    *(v65 + 4 * v64) = 20;
  }

  result = sub_10053588C(**(a1 + 40), 20);
  if (result)
  {
    v67 = *(a2 + 24);
    if (v67 == *(a2 + 28))
    {
      result = sub_10080B50C((a2 + 16), v67 + 1);
      v67 = *(a2 + 24);
    }

    v68 = *(a2 + 16);
    *(a2 + 24) = v67 + 1;
    *(v68 + 4 * v67) = 22;
  }

  return result;
}

uint64_t **sub_1004F190C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1000A58E4("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 32);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1004F1964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      if (!v13)
      {
        goto LABEL_7;
      }

LABEL_13:
      PersonalityInfo::iccid(***(a1 + 128));
      sub_100004AA0(buf, (a1 + 8));
      v18 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
      }

      v20[5] = 0;
      operator new();
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_7:
  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PersonalityInfo::logPrefix(***(a1 + 128));
    v17 = *(a1 + 160);
    *buf = 136315906;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v22 = 2080;
    v23 = v17;
    v24 = 2080;
    v25 = "";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing controller", buf, 0x2Au);
  }

  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(a1, a2, &v19);
  sub_10004EC58(&v19, v20[0]);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1004F1C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004F1C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      if (!v13)
      {
        goto LABEL_7;
      }

LABEL_13:
      PersonalityInfo::iccid(***(a1 + 128));
      sub_100004AA0(buf, (a1 + 8));
      v18 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
      }

      v20[5] = 0;
      operator new();
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_7:
  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PersonalityInfo::logPrefix(***(a1 + 128));
    v17 = *(a1 + 160);
    *buf = 136315906;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v22 = 2080;
    v23 = v17;
    v24 = 2080;
    v25 = "";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sMissing controller", buf, 0x2Au);
  }

  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(a1, a2, &v19);
  sub_10004EC58(&v19, v20[0]);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1004F1F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004F1F78(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1004F1FD0(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1004F1FD0(void *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1004F2058(v5, (v5 + 8), v4 + 8, (v4 + 8));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_1004F2058(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_10002E2F4(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1004F20E8();
  }

  return result;
}

void sub_1004F2170(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1004F218C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1004F218C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_1004F21F0(void *a1)
{
  *a1 = off_101E51FE0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F223C(void *a1)
{
  *a1 = off_101E51FE0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F232C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E51FE0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  *(a2 + 33) = 0;
  *(a2 + 36) = 0;
  return result;
}

void sub_1004F237C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F238C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F23CC(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[2])
      {
        v7 = a2 + 1;
        v8 = a2[1];
        v9 = v8;
        if (a2[2])
        {
          *(v8 + 16) = &v9;
          *a2 = v7;
          *v7 = 0;
          a2[2] = 0;
        }

        v11[0] = 0;
        v11[1] = 0;
        sub_100004AA0(v11, (v5 + 8));
        operator new();
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1004F256C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1004F25B8(unsigned __int8 **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (*(*v1 + 744))
  {
    v3 = v1[8];
    sub_1004F1F78(v7, (v1 + 16));
    entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(v2, v3, v7);
    sub_10004EC58(v7, v7[1]);
  }

  sub_1004F265C(&v6);
  return sub_1000049E0(&v5);
}

void sub_1004F262C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a13, void *a14)
{
  sub_10004EC58(&a13, a14);
  sub_1004F265C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004F265C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10004EC58(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return a1;
}

uint64_t sub_1004F26B0(uint64_t a1)
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

void *sub_1004F2730(void *a1)
{
  *a1 = off_101E52070;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F277C(void *a1)
{
  *a1 = off_101E52070;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F2860(uint64_t result, uint64_t a2)
{
  *a2 = off_101E52070;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004F28A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F28B8(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F28F8(uint64_t a1, void *a2, __int16 *a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = *a3;
    v7 = *(a1 + 8);
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      if (*(a1 + 24))
      {
        v11 = v7;
        v12 = v6;
        v13 = *(a1 + 16);
        v9 = a2 + 1;
        v10 = a2[1];
        v14 = *a2;
        v15 = v10;
        if (a2[2])
        {
          *(v10 + 16) = &v15;
          *a2 = v9;
          *v9 = 0;
          a2[2] = 0;
        }

        else
        {
          v14 = &v15;
        }

        sub_1004F2A0C((v7 + 8), &v11);
      }

      sub_100004A34(v8);
    }
  }
}

uint64_t sub_1004F29C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004F2A0C(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_1004F2B1C(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1004F2B94(v3);
  sub_1004F2D04(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004F2B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1004F2D04(va);
  v10 = a9;
  a9 = 0;
  if (v10)
  {
    sub_1002B78C4(&a9, v10);
  }

  _Unwind_Resume(a1);
}

void sub_1004F2B94(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 9) == 1)
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(v2 + 128));
      if ((*(a1 + 9) & 1) == 0)
      {
        sub_1000D1644();
      }

      v5 = *(v2 + 160);
      *buf = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = v5;
      v14 = 2080;
      v15 = "";
      v16 = 2080;
      v17 = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sFailed EAP AKA with error:%s", buf, 0x34u);
    }
  }

  if (*(v2 + 744))
  {
    v6 = *(a1 + 10);
    sub_1004F1F78(v7, a1 + 16);
    entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(v2, v6, v7);
    sub_10004EC58(v7, v7[1]);
  }
}

uint64_t *sub_1004F2D04(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10004EC58(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return a1;
}

uint64_t sub_1004F2D58(uint64_t a1)
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

void *sub_1004F2DD8(void *a1)
{
  *a1 = off_101E52100;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F2E24(void *a1)
{
  *a1 = off_101E52100;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F2F08(uint64_t result, uint64_t a2)
{
  *a2 = off_101E52100;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004F2F50(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F2F60(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F2FA0(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = *a3;
    v7 = *(a1 + 8);
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      if (*(a1 + 24))
      {
        v11 = v7;
        v12 = v6;
        v13 = BYTE4(v6);
        v14 = *(a1 + 16);
        v9 = a2 + 1;
        v10 = a2[1];
        v15 = *a2;
        v16 = v10;
        if (a2[2])
        {
          *(v10 + 16) = &v16;
          *a2 = v9;
          *v9 = 0;
          a2[2] = 0;
        }

        else
        {
          v15 = &v16;
        }

        sub_1004F30BC((v7 + 8), &v11);
      }

      sub_100004A34(v8);
    }
  }
}

uint64_t sub_1004F3070(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004F30BC(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_1004F31CC(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1004F3244(v3);
  sub_1004F33B4(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1004F321C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1004F33B4(va);
  v10 = a9;
  a9 = 0;
  if (v10)
  {
    sub_1002B78C4(&a9, v10);
  }

  _Unwind_Resume(a1);
}

void sub_1004F3244(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 12) == 1)
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(v2 + 128));
      if ((*(a1 + 12) & 1) == 0)
      {
        sub_1000D1644();
      }

      v5 = *(v2 + 160);
      *buf = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = v5;
      v14 = 2080;
      v15 = "";
      v16 = 2080;
      v17 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sFailed EAP AKA with error:%s", buf, 0x34u);
    }
  }

  if (*(v2 + 744))
  {
    v6 = *(a1 + 16);
    sub_1004F1F78(v7, a1 + 24);
    entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(v2, v6, v7);
    sub_10004EC58(v7, v7[1]);
  }
}

uint64_t *sub_1004F33B4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10004EC58(v1 + 24, *(v1 + 32));
    operator delete();
  }

  return a1;
}

uint64_t sub_1004F3408(uint64_t a1)
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

uint64_t sub_1004F3488(uint64_t a1, uint64_t a2)
{
  sub_1004F34D4(a1, a2);
  *(a1 + 48) = *(a2 + 48);
  if (a1 != a2)
  {
    sub_1001122C4((a1 + 56), *(a2 + 56), *(a2 + 64), *(a2 + 64) - *(a2 + 56));
  }

  return a1;
}

uint64_t sub_1004F34D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    sub_1001122C4((a1 + 16), *(a2 + 16), *(a2 + 24), *(a2 + 24) - *(a2 + 16));
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void *sub_1004F3524(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 32) = *(v9 + 32);
          if (v8 != v9)
          {
            sub_1001122C4(v8 + 5, v9[5], v9[6], v9[6] - v9[5]);
            v8 = v14;
          }

          sub_1004F36A4(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_1004F3714(&v12);
  }

  if (a2 != a3)
  {
    sub_1004F376C(v5);
  }

  return result;
}

void sub_1004F3690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004F3714(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004F36A4(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 32))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  sub_1000070DC(a1, v3, v5, a2);
  return a2;
}

uint64_t sub_1004F3714(uint64_t a1)
{
  sub_10004EC58(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10004EC58(*a1, v2);
  }

  return a1;
}

void sub_1004F3880(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1004F218C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1004F389C(uint64_t a1)
{
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  sub_100005978((a1 + 168));
  if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = (a1 + 40);
  sub_1000087B4(&v4);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1004F39FC(atomic_uint **a1)
{
  *a1 = off_101E519D0;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004F3BCC(uint64_t a1)
{
  sub_10006DCAC(a1 + 24, *(a1 + 32));
  sub_1000FB1B0(a1);
  return a1;
}

void sub_1004F3CB4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F3D20(&v2, a2);
}

void sub_1004F3D90(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F3DB8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10004A724((result + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_1004F3E2C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F3F50(atomic_uint **a1)
{
  *a1 = off_101E51A40;
  sub_10004A724(a1 + 2);

  operator delete();
}

void sub_1004F41D0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F423C(&v2, a2);
}

void sub_1004F42AC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F42E8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F43F4(atomic_uint **a1)
{
  *a1 = off_101E51AB0;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t *sub_1004F4674(uint64_t *a1, uint64_t a2)
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

uint64_t sub_1004F46E0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1004F4748(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F47B4(&v2, a2);
}

void sub_1004F4824(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

void sub_1004F48F4(atomic_uint **a1)
{
  *a1 = off_101E51B20;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004F4AC4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1004F4BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004F4D40(a1, a2);
  sub_1004F4DAC((v4 + 3), a2 + 24);
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

uint64_t *sub_1004F4D40(uint64_t *a1, uint64_t a2)
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

uint64_t sub_1004F4DAC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1004F4E14(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F4E80(&v2, a2);
}

void sub_1004F4EF0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F4F30(uint64_t result)
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

void sub_1004F4FB0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F501C(&v2, a2);
}

void sub_1004F508C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F50CC(uint64_t result)
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

uint64_t sub_1004F5148(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1004F518C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F51F8(&v2, a2);
}

void sub_1004F5268(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F52A8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F53CC(atomic_uint **a1)
{
  *a1 = off_101E51B90;
  sub_10004A724(a1 + 2);

  operator delete();
}

void sub_1004F564C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F56B8(&v2, a2);
}

void sub_1004F5728(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F5768(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F588C(atomic_uint **a1)
{
  *a1 = off_101E51C00;
  sub_10004A724(a1 + 2);

  operator delete();
}

void sub_1004F5B0C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F5B78(&v2, a2);
}

void sub_1004F5BE8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F5C28(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F5D4C(atomic_uint **a1)
{
  *a1 = off_101E51C70;
  sub_10004A724(a1 + 2);

  operator delete();
}

void sub_1004F5FCC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F6038(&v2, a2);
}

void sub_1004F60A8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F60E8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F620C(atomic_uint **a1)
{
  *a1 = off_101E51CE0;
  sub_10004A724(a1 + 2);

  operator delete();
}

void sub_1004F648C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F64F8(&v2, a2);
}

void sub_1004F6568(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F65A8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F66CC(atomic_uint **a1)
{
  *a1 = off_101E51D50;
  sub_10004A724(a1 + 2);

  operator delete();
}

void sub_1004F694C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F69B8(&v2, a2);
}

void sub_1004F6A28(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F6A68(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F6B8C(atomic_uint **a1)
{
  *a1 = off_101E51DC0;
  sub_10004A724(a1 + 2);

  operator delete();
}

void sub_1004F6E0C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F6E78(&v2, a2);
}

void sub_1004F6EE8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F6F28(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F704C(atomic_uint **a1)
{
  *a1 = off_101E51E30;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1004F721C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1004F7310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004F7498(a1, a2);
  sub_1004F7504((v4 + 3), a2 + 24);
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

uint64_t *sub_1004F7498(uint64_t *a1, uint64_t a2)
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

uint64_t sub_1004F7504(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1004F756C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F75D8(&v2, a2);
}

void sub_1004F7648(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F7688(uint64_t result)
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

void sub_1004F7708(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F7774(&v2, a2);
}

void sub_1004F77E4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F7824(uint64_t result)
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

uint64_t sub_1004F78A0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1004F78E4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F7950(&v2, a2);
}

void sub_1004F79C0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F7A00(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F7B24(atomic_uint **a1)
{
  *a1 = off_101E51EA0;
  sub_10004A724(a1 + 2);

  operator delete();
}

void sub_1004F7DA4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F7E10(&v2, a2);
}

void sub_1004F7E80(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F7EC0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1004F7FE4(atomic_uint **a1)
{
  *a1 = off_101E51F10;
  sub_10004A724(a1 + 2);

  operator delete();
}

void sub_1004F8264(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1004F82D0(&v2, a2);
}

void sub_1004F8340(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1004F8380(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void *sub_1004F83FC(void *a1)
{
  *a1 = off_101E52B90;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F8448(void *a1)
{
  *a1 = off_101E52B90;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F8528(uint64_t result, uint64_t a2)
{
  *a2 = off_101E52B90;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004F8568(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F8578(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F85B8(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v10 = *v3;
  v11 = v5;
  if (v3[2])
  {
    v5[2] = &v11;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v10 = &v11;
  }

  sub_1004F86DC(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[3])
      {
        entitlements::CEHTTPDriver::handleConnectionStateChange_sync(v7, &v10);
      }

      sub_100004A34(v9);
    }
  }

  sub_1004EDBF8(&v10, v11);
}

void sub_1004F8668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  sub_100004A34(v11);
  sub_1004EDBF8(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1004F8690(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004F86DC(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_1004EDBF8(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v11, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v10, object, count);
    xpc_release(object[0]);
    for (i = v12; i != v10[1] || v11 != v10[0]; i = ++v12)
    {
      v9 = 0;
      object[0] = &v11;
      object[1] = i;
      sub_10003EAD4(object, &v9);
      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        object[0] = 0;
        v8 = 0u;
        object[1] = &v8;
        v6 = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1004F8990(object, &v6);
        xpc_release(v6);
        sub_1004F8B44(a1, object, object);
        sub_10006DCAC(&object[1], v8);
      }

      xpc_release(v9);
    }

    xpc_release(v10[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_1004F88F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, xpc_object_t a17)
{
  xpc_release(object);
  xpc_release(*(v18 - 64));
  xpc_release(v17);
  _Unwind_Resume(a1);
}

void sub_1004F8990(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    read_rest_value();
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_1004F8AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004F8B44(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    sub_1004F8C00();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
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

void *sub_1004F8C98(void *a1)
{
  *a1 = off_101E52C10;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F8CE4(void *a1)
{
  *a1 = off_101E52C10;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F8DC4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E52C10;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004F8E04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F8E14(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F8E54(uint64_t *a1, xpc_object_t *a2)
{
  sub_10011E228(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        entitlements::CEHTTPDriver::handleDataAttached_sync(v4);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1004F8EE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004F8F30(void *a1)
{
  *a1 = off_101E52C90;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F8F7C(void *a1)
{
  *a1 = off_101E52C90;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F905C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E52C90;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004F909C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F90AC(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F90EC(uint64_t *a1, xpc_object_t *a2)
{
  sub_10032DFE4(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        entitlements::CEHTTPDriver::handleConnectionAvailability_sync(v4);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1004F917C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004F91C8(void *a1)
{
  *a1 = off_101E52D10;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F9214(void *a1)
{
  *a1 = off_101E52D10;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F92F4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E52D10;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004F9334(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F9344(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F9384(void *a1, xpc *a2)
{
  v4 = a1[1];
  if (xpc_get_type(*a2) == &_xpc_type_null)
  {
    if (*(v4 + 1))
    {
      *(v4 + 1) = 0;
    }
  }

  else
  {
    if ((*(v4 + 1) & 1) == 0)
    {
      *v4 = 256;
    }

    *v4 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[3])
      {
        entitlements::CEHTTPDriver::sendRequestIfPending_sync(v7);
      }

      sub_100004A34(v9);
    }
  }
}

uint64_t sub_1004F9458(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004F94A4(void *a1)
{
  *a1 = off_101E52D90;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F94F0(void *a1)
{
  *a1 = off_101E52D90;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004F95D0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E52D90;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004F9610(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004F9620(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004F9660(void *a1)
{
  v6[0] = 0;
  v6[1] = 0;
  read_rest_value();
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        entitlements::CEHTTPDriver::handleDataContextError_sync(v3, v6);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1004F96E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004F9730(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1004F9874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100101814(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1004F98D0(uint64_t *a1, uint64_t a2)
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

uint64_t sub_1004F993C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1004F99A4(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_100222BDC(result);
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N3ctu12DispatchSlotIZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_5EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_5EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1004F9AA0(NSObject ***a1, int a2, char a3)
{
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = v4;
    v9 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  else
  {
    v8 = (*a1)[2];
    v9 = 0;
  }

  v6 = off_101E52E98;
  v7 = v3;
  operator new();
}

uint64_t sub_1004F9C98(uint64_t a1)
{
  sub_100B8B714(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100B8BC24(v2);
    operator delete();
  }

  if (*(a1 + 40))
  {
    operator delete();
  }

  result = *(a1 + 48);
  if (result)
  {

    operator delete();
  }

  return result;
}

void sub_1004F9D3C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_5" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_5" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1004F9E20(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = *a1;
      v5 = std::__shared_weak_count::lock(v3);
      if (v5)
      {
        v6 = v5;
        if (*(a1 + 8))
        {
          entitlements::CEHTTPDriver::handleBBActivationEvent_sync(v4);
        }

        sub_100004A34(v6);
      }
    }
  }
}

void *sub_1004F9EB0(void *a1)
{
  *a1 = off_101E52EC8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004F9EFC(void *a1)
{
  *a1 = off_101E52EC8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1004F9F68(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::lock(v2);
  }

  operator new();
}

void sub_1004FA018(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004FA0BC(void *a1)
{
  *a1 = off_101E52F18;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1004FA108(void *a1)
{
  *a1 = off_101E52F18;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void sub_1004FA1E0(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1004FA324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100101814(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004FA380(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_100222BDC(result);
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N3ctu12DispatchSlotIZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_6EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_6EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1004FA47C(NSObject ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = **a1;
  v8 = (*a1)[1];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v12 = v9;
    v13 = v10;
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  else
  {
    v12 = (*a1)[2];
    v13 = 0;
  }

  v11[0] = off_101E52FD0;
  v11[1] = v8;
  sub_1004FA57C(v7, v11, v6, v5, v4);
}

void sub_1004FA55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100B8F984(&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004FA6F0(uint64_t a1)
{
  sub_10014A300(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100B8F984(v2);
    operator delete();
  }

  if (*(a1 + 40))
  {
    operator delete();
  }

  if (*(a1 + 48))
  {
    operator delete();
  }

  result = *(a1 + 56);
  if (result)
  {

    operator delete();
  }

  return result;
}

void sub_1004FA7B0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_6" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN12entitlements12CEHTTPDriver15initialize_syncEvE3$_6" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1004FA894(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 8))
      {
        entitlements::CEHTTPDriver::handleBBActivationEvent_sync(v3);
      }

      sub_100004A34(v5);
    }
  }
}

void *sub_1004FA91C(void *a1)
{
  *a1 = off_101E53000;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004FA968(void *a1)
{
  *a1 = off_101E53000;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004FAA48(uint64_t result, uint64_t a2)
{
  *a2 = off_101E53000;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004FAA88(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004FAA98(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004FAAD8(void *a1, rest::PairedDeviceInfoList *a2, const xpc::object *a3)
{
  v4 = a1[1];
  v16 = 0;
  v17 = 0uLL;
  rest::read_rest_value(&v16, a2, a3);
  v5 = *v4;
  v6 = v16;
  v14 = v16;
  v15 = v17;
  v17 = 0uLL;
  v16 = 0;
  if (v14 == v15)
  {
    v8 = 0;
  }

  else
  {
    v7 = v6 + 216;
    do
    {
      v8 = *(v7 - 8) == 3;
      v9 = *(v7 - 8) == 3 || v7 == v15;
      v7 += 216;
    }

    while (!v9);
  }

  *v4 = v8;
  v18 = &v14;
  sub_10032DC68(&v18);
  if (v5 != *v4)
  {
    v10 = a1[4];
    if (v10)
    {
      v11 = a1[2];
      v12 = std::__shared_weak_count::lock(v10);
      if (v12)
      {
        v13 = v12;
        if (a1[3])
        {
          entitlements::CEHTTPDriver::handleDeviceInProximityChange_sync(v11, v5);
        }

        sub_100004A34(v13);
      }
    }
  }

  v18 = &v16;
  sub_10032DC68(&v18);
}

void sub_1004FABCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_100004A34(v13);
  *(v14 - 40) = &a13;
  sub_10032DC68((v14 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_1004FABF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004FAC44(void *a1)
{
  *a1 = off_101E53080;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004FAC90(void *a1)
{
  *a1 = off_101E53080;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1004FAD70(uint64_t result, uint64_t a2)
{
  *a2 = off_101E53080;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004FADB0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004FADC0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1004FAE00(void *a1, char *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      if (a1[2])
      {
        v6 = a1[3];
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
        }

        v7[0] = 0;
        v7[1] = 0;
        sub_100004AA0(v7, (v4 + 8));
        operator new();
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1004FAF2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1004FAF78(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        v6 = *(v1 + 24);
        *(v3 + 600) = v6;
        if (v6 == 1)
        {
          v7 = *(v3 + 40);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = PersonalityInfo::logPrefix(***(v3 + 128));
            v9 = *(v3 + 160);
            *buf = 136315906;
            v14 = v8;
            v15 = 2080;
            v16 = " ";
            v17 = 2080;
            v18 = v9;
            v19 = 2080;
            v20 = "";
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sBaseband activated, initiating any pending transactions", buf, 0x2Au);
          }

          entitlements::CEHTTPDriver::sendRequestIfPending_sync(v3);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_10007B284(&v12);
  return sub_1000049E0(&v11);
}

void sub_1004FB0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007B284(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1004FB184(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E53100;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1004FB1D8(uint64_t a1)
{
  if (*(a1 + 616) == 1 && *(a1 + 615) < 0)
  {
    operator delete(*(a1 + 592));
  }

  if (*(a1 + 584) == 1)
  {
    sub_100220C2C(a1 + 128);
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

uint64_t sub_1004FB298(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v22 = 0u;
  v23 = 0u;
  *v21 = 0u;
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  sub_10000D518(&v19);
  v6 = *(a2 + 23);
  v7 = (v6 & 0x80u) != 0;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v7)
  {
    v8 = *a2;
  }

  else
  {
    v8 = a2;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = "<invalid>";
  }

  v10 = strlen(v9);
  v11 = sub_10000C030(&v19, v9, v10);
  v12 = sub_10000C030(v11, ", ", 2);
  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v13 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  sub_10000C030(v12, v14, v15);
  sub_10006EE70(&v19 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  std::locale::~locale(v20);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1004FB498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1004FB4B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26 = 0uLL;
  v39 = 0u;
  v40 = 0u;
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
  v6 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v29, v6);
  v7 = a1[1];
  if (v7)
  {
    if (atomic_load_explicit((v7 + 8), memory_order_acquire) == 1)
    {
      sub_1005A28D0(a1, &v29, 0, 1);
    }

    v8 = *a1;
    v9 = a1[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
    v8 = *a1;
  }

  v10 = v26;
  *&v26 = v8;
  *(&v26 + 1) = v9;
  v28[0] = v10;
  sub_10004A724(v28 + 1);
  sub_10004A704(*(&v40 + 1));
  sub_10004A6B0(&v29);
  v42 = 0u;
  v43 = 0u;
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
  v29 = 0u;
  v44 = 0;
  v45 = 10;
  v46 = &v29 + 8;
  v47 = 0;
  v48 = a2;
  v49 = a3;
  v50 = 0;
  v51 = 0;
  v11 = sub_1005A2568(&v26);
  v25[0] = &v29;
  v25[1] = a1;
  v25[2] = sub_1005A3780(v11);
  v12 = sub_1005A2568(&v26);
  v13 = sub_10004AA88((v12 + 16));
  v14 = sub_1005A2568(&v26);
  v15 = *(sub_1005A3780(v14) + 8);
  v16 = sub_1005A2568(&v26);
  *&v23 = v15;
  *(&v23 + 1) = sub_1005A3780(v16);
  *&v24 = &v29;
  *(&v24 + 1) = *(&v23 + 1);
  sub_1004FB894(&v23);
  v17 = sub_1005A2568(&v26);
  v18 = sub_1005A3780(v17);
  v19 = sub_1005A2568(&v26);
  *&v21 = v18;
  *(&v21 + 1) = sub_1005A3780(v19);
  *&v22 = &v29;
  *(&v22 + 1) = *(&v21 + 1);
  sub_1004FB894(&v21);
  v28[0] = v23;
  v28[1] = v24;
  v27[0] = v21;
  v27[1] = v22;
  sub_1004FB724(v13, v28, v27);
  sub_1004FBC5C(v25);
  sub_1004FBE40(&v29);
  return sub_10004A724(&v26 + 1);
}

void sub_1004FB6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_1000FFEDC(va);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_1004FB724(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1004FB7AC(a2);
    *a2 = *(*a2 + 8);
    sub_1004FB894(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1004FB7AC(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1004FB84C((v2 + 272), (*a1 + 16));
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

uint64_t sub_1004FB84C(uint64_t *a1, uint64_t *a2)
{
  v2 = sub_1005A25AC(a2);
  v3 = (sub_1005A2F30((v2 + 32)) + 24);

  return sub_1005A3D38(v3);
}

void sub_1004FB894(uint64_t *result)
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
      v3 = sub_1004FBAF4((*result + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1005A25AC((*result + 16));
      sub_1004FBB38(v4, &v14, (result[2] + 8));
      v5 = sub_1005A25AC((*result + 16));
      v6 = result[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 288);
      }

      else
      {
        ++*(v6 + 292);
      }

      v7 = sub_1005A25AC((*result + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_1002AA390(result, &v14, *result);
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
        v13 = sub_1004FBAF4((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1002AA390(result, &v14, result[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1004FBAB8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004FBAF4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1004FBB38(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_1005A2F30(result + 4); ; i += 6)
    {
      result = sub_1005A2F30(v3);
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

void sub_1004FBC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void *sub_1004FBC5C(void *a1)
{
  if (*(*a1 + 292) > *(*a1 + 288))
  {
    sub_1004FBCA0(a1[1], a1[2]);
  }

  return a1;
}

void sub_1004FBCA0(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_1005A2568(a1);
  if (sub_1005A3780(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_1005A2568(a1);
    v8 = *(sub_1005A3780(v7) + 8);
    sub_1005A27B8(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_1004FBE40(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 296), v4);
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

void sub_1004FBF18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1004FBFAC(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E53150;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1004FC028(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E53150;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004FC088(uint64_t a1, int *a2, uint64_t *a3)
{
  v4 = *a2;
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v6;
    *(a1 + 32) = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v5);
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v6;
    *(a1 + 32) = 0;
  }

  return a1;
}

void *sub_1004FC0E8(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          std::string::operator=((v8 + 5), (v9 + 5));
          *(v8 + 64) = *(v9 + 64);
          sub_1001723F0(v5, v14);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10028582C(&v12);
  }

  if (a2 != a3)
  {
    sub_1004FC260(v5);
  }

  return result;
}

void sub_1004FC24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10028582C(va);
  _Unwind_Resume(a1);
}

void sub_1004FC364(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002859C8(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1004FC380(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t *sub_1004FC3DC(uint64_t *a1, uint64_t *a2)
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

void sub_1004FC460(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004FC498(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1005348EC(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1004FC4DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1004FC51C(uint64_t **a1)
{
  v1 = a1;
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(**a1);
  operator delete();
}

__n128 sub_1004FC610(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E53200;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

intptr_t sub_1004FC640(uint64_t a1, MCC *this)
{
  MCC::getStringValue(&v6, this);
  v3 = *(a1 + 8);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  v4 = v6;
  *(v3 + 16) = v7;
  *v3 = v4;
  return dispatch_semaphore_signal(**(a1 + 16));
}

uint64_t sub_1004FC6A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004FC758(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_1004FC784(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004FC7BC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_1004FC7DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1004FC81C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1004FC874(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1004FC874(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1004FC8FC(v5, (v5 + 8), v4 + 32, (v4 + 32));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1004FC8FC(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_1004FC98C(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1004F37F8();
  }

  return result;
}

uint64_t *sub_1004FC98C(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 32), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 32) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 32))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *sub_1004FCB34(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t *sub_1004FCC0C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
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

uint64_t sub_1004FCCE4(uint64_t a1)
{
  *a1 = off_101E53308;
  sub_10004EC58(a1 + 72, *(a1 + 80));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1004FCD4C(uint64_t a1)
{
  *a1 = off_101E53308;
  sub_10004EC58(a1 + 72, *(a1 + 80));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1004FCE9C(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1004FCED4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E53308;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    sub_100005F2C((a2 + 40), *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v5 = *(a1 + 40);
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 40) = v5;
  }

  *(a2 + 64) = *(a1 + 64);
  result = sub_1004FC81C((a2 + 72), a1 + 72);
  *(a2 + 96) = *(a1 + 96);
  return result;
}

void sub_1004FCF80(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004FCFB0(uint64_t a1)
{
  sub_10004EC58(a1 + 72, *(a1 + 80));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1004FD010(uint64_t a1)
{
  sub_10004EC58(a1 + 72, *(a1 + 80));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_1004FD06C(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v10 = 0;
  v8 = 0u;
  *v9 = 0u;
  v7 = 0u;
  rest::read_rest_value();
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 8);
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      if (*(a1 + 16))
      {
        v11 = v4;
        v12 = *(a1 + 32);
        LOBYTE(v13) = 0;
        v15 = 0;
        if (BYTE8(v8) == 1)
        {
          v13 = v7;
          v14 = v8;
          if (v8)
          {
            *(*(&v7 + 1) + 16) = &v13 + 8;
            *&v7 = &v7 + 8;
            *(&v7 + 1) = 0;
            *&v8 = 0;
          }

          else
          {
            *&v13 = &v13 + 8;
          }

          v15 = 1;
        }

        *v16 = *v9;
        v17 = v10;
        v9[1] = 0;
        v10 = 0;
        v9[0] = 0;
        if (*(a1 + 63) < 0)
        {
          sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
        }

        else
        {
          *__p = *(a1 + 40);
          __p[2] = *(a1 + 56);
        }

        __p[3] = *(a1 + 64);
        sub_1004FC81C(&v19, a1 + 72);
        v20 = *(a1 + 96);
        v21[0] = 0;
        v21[1] = 0;
        sub_100004AA0(v21, (v4 + 8));
        operator new();
      }

      sub_100004A34(v5);
    }
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }

  if (BYTE8(v8) == 1)
  {
    sub_10004EC58(&v7, *(&v7 + 1));
  }

  xpc_release(object);
}

uint64_t sub_1004FD43C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004FD488(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 24) == 1)
  {
    sub_10004EC58(a1, *(a1 + 8));
  }

  return a1;
}

uint64_t *sub_1004FD4D4(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(*v1 + 744))
  {
    if (*(v1 + 40) == 1)
    {
      ctu::base64::encode();
      v3 = (v2 + 488);
      if (*(v2 + 511) < 0)
      {
        operator delete(*v3);
      }

      *v3 = v8;
      *(v2 + 504) = v9;
      v4 = *(v1 + 8);
      sub_1004F1F78(&v8, v1 + 16);
      entitlements::CEHTTPDriver::handle_EAPAKA_ChallengeResponse_sync(v2, v4, &v8);
      sub_10004EC58(&v8, *(&v8 + 1));
    }

    else
    {
      sub_1004EA3A4((v1 + 96));
    }
  }

  sub_1004FD5C8(&v7);
  return sub_1000049E0(&v6);
}

void sub_1004FD598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a13, void *a14)
{
  sub_10004EC58(&a13, a14);
  sub_1004FD5C8(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004FD5C8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10004EC58(v1 + 104, *(v1 + 112));
    if (*(v1 + 95) < 0)
    {
      operator delete(*(v1 + 72));
    }

    v2 = *(v1 + 48);
    if (v2)
    {
      *(v1 + 56) = v2;
      operator delete(v2);
    }

    if (*(v1 + 40) == 1)
    {
      sub_10004EC58(v1 + 16, *(v1 + 24));
    }

    operator delete();
  }

  return a1;
}

void sub_1004FD6D4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1004FD7A8);
  __cxa_rethrow();
}

void sub_1004FD714(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004FD768(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004FD7A8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 416))();
  }

  return result;
}

void sub_1004FD7F0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x20u);
}

void cellplan::CellularPlanControllerPhone::create(uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  operator new();
}

void sub_1004FE058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    sub_101760EE4(a10);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  v15 = *(v13 + 8);
  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::init_sync(cellplan::CellularPlanControllerPhone *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I CellularPlanControllerPhone initialized", buf, 2u);
  }

  v3 = *(this + 16);
  v4 = *(this + 3);
  v54 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  sub_100004AA0(&v51, this + 1);
  if (v51)
  {
    v5 = v51 + 88;
  }

  else
  {
    v5 = 0;
  }

  v52 = v5;
  v53 = *(&v51 + 1);
  v51 = 0uLL;
  (*(*v3 + 416))(buf, v3, &v54, &v52);
  v6 = *buf;
  memset(buf, 0, sizeof(buf));
  v7 = *(this + 19);
  *(this + 9) = v6;
  if (v7)
  {
    sub_100004A34(v7);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v53)
  {
    sub_100004A34(v53);
  }

  if (*(&v51 + 1))
  {
    sub_100004A34(*(&v51 + 1));
  }

  if (v54)
  {
    dispatch_release(v54);
  }

  v8 = *(this + 16);
  v9 = *(this + 3);
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  (*(*v8 + 440))(buf, v8, &object);
  v10 = *buf;
  memset(buf, 0, sizeof(buf));
  v11 = *(this + 25);
  *(this + 12) = v10;
  if (v11)
  {
    sub_100004A34(v11);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (object)
  {
    dispatch_release(object);
  }

  v12 = *(this + 16);
  sub_100004AA0(&v51, this + 1);
  v13 = v51 + 72;
  if (!v51)
  {
    v13 = 0;
  }

  v48 = v13;
  v49 = *(&v51 + 1);
  v51 = 0uLL;
  (*(*v12 + 608))(buf, v12, &v48);
  v14 = *buf;
  memset(buf, 0, sizeof(buf));
  v15 = *(this + 27);
  *(this + 13) = v14;
  if (v15)
  {
    sub_100004A34(v15);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v49)
  {
    sub_100004A34(v49);
  }

  if (*(&v51 + 1))
  {
    sub_100004A34(*(&v51 + 1));
  }

  v16 = *(this + 16);
  v17 = *(this + 3);
  v47 = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  v18 = *(this + 25);
  v45 = *(this + 24);
  v46 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v16 + 560))(buf, v16, &v47, &v45);
  v19 = *buf;
  memset(buf, 0, sizeof(buf));
  v20 = *(this + 31);
  *(this + 15) = v19;
  if (v20)
  {
    sub_100004A34(v20);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v46)
  {
    sub_100004A34(v46);
  }

  if (v47)
  {
    dispatch_release(v47);
  }

  v21 = *(this + 16);
  v22 = *(this + 3);
  v44 = v22;
  if (v22)
  {
    dispatch_retain(v22);
  }

  v23 = *(this + 23);
  v42 = *(this + 22);
  v43 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v51, this + 1);
  if (v51)
  {
    v24 = v51 + 80;
  }

  else
  {
    v24 = 0;
  }

  v40 = v24;
  v41 = *(&v51 + 1);
  v51 = 0uLL;
  (*(*v21 + 592))(buf, v21, &v44, &v42, &v40);
  v25 = *buf;
  memset(buf, 0, sizeof(buf));
  v26 = *(this + 21);
  *(this + 10) = v25;
  if (v26)
  {
    sub_100004A34(v26);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v41)
  {
    sub_100004A34(v41);
  }

  if (*(&v51 + 1))
  {
    sub_100004A34(*(&v51 + 1));
  }

  if (v43)
  {
    sub_100004A34(v43);
  }

  if (v44)
  {
    dispatch_release(v44);
  }

  (***(this + 16))(&v37);
  v51 = v37;
  v37 = 0uLL;
  subscriber::makeSimSlotRange();
  if (*(&v51 + 1))
  {
    sub_100004A34(*(&v51 + 1));
  }

  if (*(&v37 + 1))
  {
    sub_100004A34(*(&v37 + 1));
  }

  v27 = *buf;
  v28 = *&buf[8];
  if (*buf != *&buf[8])
  {
    v29 = v39;
    do
    {
      if (v29(*v27))
      {
        break;
      }

      ++v27;
    }

    while (v27 != v28);
    v30 = *&buf[8];
    while (v27 != v30)
    {
      v31 = *v27++;
      v36 = 10;
      LODWORD(v37) = v31;
      *&v51 = &v36;
      v32 = sub_10031D3B0(this + 1088, &v36, &unk_101802C98, &v51);
      *&v51 = &v37;
      *(sub_10030C46C((v32 + 5), &v37, &unk_101802C98, &v51) + 8) = 6;
      v36 = 12;
      *&v51 = &v36;
      v33 = sub_10031D3B0(this + 1088, &v36, &unk_101802C98, &v51);
      *&v51 = &v37;
      *(sub_10030C46C((v33 + 5), &v37, &unk_101802C98, &v51) + 8) = 6;
      v36 = 11;
      *&v51 = &v36;
      v34 = sub_10031D3B0(this + 1088, &v36, &unk_101802C98, &v51);
      *&v51 = &v37;
      *(sub_10030C46C((v34 + 5), &v37, &unk_101802C98, &v51) + 8) = 6;
      v36 = 14;
      *&v51 = &v36;
      v35 = sub_10031D3B0(this + 1088, &v36, &unk_101802C98, &v51);
      *&v51 = &v37;
      *(sub_10030C46C((v35 + 5), &v37, &unk_101802C98, &v51) + 8) = 6;
      while (v27 != v28 && (v29(*v27) & 1) == 0)
      {
        ++v27;
      }
    }
  }
}

void sub_1004FE6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, dispatch_object_t object, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(v26 + 8);
  if (v28)
  {
    sub_100004A34(v28);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::CellularPlanControllerPhone(uint64_t a1, NSObject **a2, void (****a3)(__int128 *__return_ptr), void *a4, void *a5)
{
  ctu::OsLogContext::OsLogContext(&v9, kCtLoggingSystemName, "cp.ctr.ph");
  sub_1001303E4((a1 + 8), a2, &v9);
  ctu::OsLogContext::~OsLogContext(&v9);
  (***a3)(&v8);
  operator new();
}

void sub_1004FEC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v26 = v23[35];
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = v23[33];
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = v23[31];
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = v23[29];
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = v23[27];
  if (v30)
  {
    sub_100004A34(v30);
  }

  v31 = v23[25];
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = v23[23];
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = v23[21];
  if (v33)
  {
    sub_100004A34(v33);
  }

  v34 = v23[19];
  if (v34)
  {
    sub_100004A34(v34);
  }

  v35 = v23[17];
  if (v35)
  {
    sub_100004A34(v35);
  }

  v36 = v23[15];
  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
  }

  v37 = v23[13];
  if (v37)
  {
    sub_100004A34(v37);
  }

  CellularPlanMultiplexerDelegate::~CellularPlanMultiplexerDelegate(v24);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  v38 = v23[6];
  v23[6] = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  ctu::OsLogLogger::~OsLogLogger((v23 + 5));
  sub_1000C0544(v23 + 1);
  _Unwind_Resume(a1);
}

void sub_1004FEE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x1004FEE14);
}

void cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone(cellplan::CellularPlanControllerPhone *this)
{
  *this = off_101E533E8;
  *(this + 7) = off_101E53688;
  *(this + 8) = off_101E536B8;
  *(this + 9) = &off_101E53780;
  *(this + 10) = off_101E537C0;
  v2 = (this + 88);
  *(this + 11) = off_101E53840;
  v21 = (this + 1400);
  sub_100112048(&v21);
  if (*(this + 1391) < 0)
  {
    operator delete(*(this + 171));
  }

  if (*(this + 1351) < 0)
  {
    operator delete(*(this + 166));
  }

  if (*(this + 1288) == 1)
  {
    if (*(this + 1319) < 0)
    {
      operator delete(*(this + 162));
    }

    *(this + 1288) = 0;
  }

  if (*(this + 1256) == 1)
  {
    if (*(this + 1287) < 0)
    {
      operator delete(*(this + 158));
    }

    *(this + 1256) = 0;
  }

  if (*(this + 1255) < 0)
  {
    operator delete(*(this + 154));
  }

  v3 = *(this + 152);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(this + 1208) == 1)
  {
    if (*(this + 1207) < 0)
    {
      operator delete(*(this + 148));
    }

    sub_100005978(this + 147);
    sub_100005978(this + 146);
    if (*(this + 1159) < 0)
    {
      operator delete(*(this + 142));
    }

    if (*(this + 1135) < 0)
    {
      operator delete(*(this + 139));
    }
  }

  sub_1004EDBF8(this + 1088, *(this + 137));
  v4 = *(this + 135);
  if (v4)
  {
    _Block_release(v4);
  }

  sub_100077CD4(this + 1048, *(this + 132));
  v5 = *(this + 126);
  if (v5)
  {
    *(this + 127) = v5;
    operator delete(v5);
  }

  v6 = *(this + 125);
  *(this + 125) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*(this + 999) < 0)
  {
    operator delete(*(this + 122));
  }

  sub_10006DCAC(this + 952, *(this + 120));
  sub_10006DCAC(this + 928, *(this + 117));
  v21 = (this + 896);
  sub_10032DC68(&v21);
  sub_100170380(this + 872, *(this + 110));
  sub_10013DF64(this + 848, *(this + 107));
  sub_10006DCAC(this + 824, *(this + 104));
  sub_10006DCAC(this + 800, *(this + 101));
  sub_1000EFBF0(this + 744);
  sub_100523A60(this + 712, *(this + 90));
  sub_10052085C(this + 568);
  v21 = (this + 544);
  sub_10052091C(&v21);
  sub_10027E6B0(this + 408);
  sub_100319DE8(this + 328);
  v21 = (this + 304);
  sub_1000B2AF8(&v21);
  v7 = *(this + 37);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(this + 35);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 33);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(this + 31);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v11 = *(this + 29);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(this + 27);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(this + 25);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(this + 23);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(this + 21);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(this + 19);
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = *(this + 17);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = *(this + 15);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = *(this + 13);
  if (v19)
  {
    sub_100004A34(v19);
  }

  CellularPlanMultiplexerDelegate::~CellularPlanMultiplexerDelegate(v2);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  v20 = *(this + 6);
  *(this + 6) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone(this);

  operator delete();
}

uint64_t sub_1004FF230(uint64_t a1)
{
  v3 = (a1 + 176);
  sub_100112048(&v3);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    *(a1 + 64) = 0;
  }

  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    *(a1 + 32) = 0;
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void non-virtual thunk tocellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone(cellplan::CellularPlanControllerPhone *this)
{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 56));
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 64));
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 72));
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 80));
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 88));
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 56));

  operator delete();
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 64));

  operator delete();
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 72));

  operator delete();
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 80));

  operator delete();
}

{
  cellplan::CellularPlanControllerPhone::~CellularPlanControllerPhone((this - 88));

  operator delete();
}

void cellplan::CellularPlanControllerPhone::bootstrapService_sync(cellplan::CellularPlanControllerPhone *this)
{
  sub_100004AA0(&v3, this + 1);
  v1 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
  }

  sub_10000501C(&__p, "/cc/props/carrier_entitlements_info");
  operator new();
}

void sub_1004FF89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::handleSimUpdated_sync(uint64_t a1, _DWORD **a2)
{
  (***(a1 + 128))(&v39);
  v49 = v39;
  v39 = 0uLL;
  subscriber::makeSimSlotRange();
  if (*(&v49 + 1))
  {
    sub_100004A34(*(&v49 + 1));
  }

  if (*(&v39 + 1))
  {
    sub_100004A34(*(&v39 + 1));
  }

  v4 = v32;
  v5 = v33;
  if (v32 != v33)
  {
    v6 = v34;
    do
    {
      if (v34(*v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != v33);
    v7 = v33;
    if (v4 != v33)
    {
      v8 = 0;
      v9 = (a1 + 1056);
      while (1)
      {
        v31 = *v4;
        *v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        *v56 = 0u;
        *v53 = 0u;
        *v54 = 0u;
        memset(v52, 0, sizeof(v52));
        *v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        sub_100922C88(v31, (a1 + 304), &v49);
        *v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        *v46 = 0u;
        *v43 = 0u;
        *v44 = 0u;
        memset(v42, 0, sizeof(v42));
        *v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        sub_100922C88(v31, a2, &v39);
        if (v49 != 1 || (v39 & 1) == 0)
        {
          goto LABEL_65;
        }

        if (subscriber::isSimReady())
        {
          goto LABEL_45;
        }

        if ((v49 & 1) == 0)
        {
          goto LABEL_95;
        }

        if (!subscriber::isSimReady())
        {
LABEL_45:
          if (v49 != 1)
          {
LABEL_95:
            __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
          }

          v8 |= subscriber::isSimAbsent();
          goto LABEL_65;
        }

        *__p = 0u;
        v38 = 0u;
        cellplan::CellularPlanControllerPhone::getPhoneSimIccid_sync(__p, a1, v31);
        if (LOBYTE(__p[0]) == 1)
        {
          break;
        }

LABEL_64:
        v8 = 1;
LABEL_65:
        if (v39 == 1)
        {
          if (SHIBYTE(v48) < 0)
          {
            operator delete(v47[1]);
          }

          if (SHIBYTE(v47[0]) < 0)
          {
            operator delete(v46[0]);
          }

          if (SHIBYTE(v45) < 0)
          {
            operator delete(v44[1]);
          }

          if (SHIBYTE(v44[0]) < 0)
          {
            operator delete(v43[0]);
          }

          __p[0] = v42;
          sub_100034D1C(__p);
          if (v40[1])
          {
            *&v41 = v40[1];
            operator delete(v40[1]);
          }
        }

        if (v49 == 1)
        {
          if (SHIBYTE(v58) < 0)
          {
            operator delete(v57[1]);
          }

          if (SHIBYTE(v57[0]) < 0)
          {
            operator delete(v56[0]);
          }

          if (SHIBYTE(v55) < 0)
          {
            operator delete(v54[1]);
          }

          if (SHIBYTE(v54[0]) < 0)
          {
            operator delete(v53[0]);
          }

          *&v39 = v52;
          sub_100034D1C(&v39);
          if (v50[1])
          {
            *&v51 = v50[1];
            operator delete(v50[1]);
          }
        }

        do
        {
          ++v4;
        }

        while (v4 != v5 && (v6(*v4) & 1) == 0);
        if (v4 == v7)
        {
          goto LABEL_92;
        }
      }

      v10 = *v9;
      if (*v9)
      {
        v11 = a1 + 1056;
        do
        {
          if (*(v10 + 32) >= v31)
          {
            v11 = v10;
          }

          v10 = *(v10 + 8 * (*(v10 + 32) < v31));
        }

        while (v10);
        if (v11 != v9 && v31 >= *(v11 + 32))
        {
          *buf = &v31;
          v12 = sub_100170BC0(a1 + 1048, &v31, &unk_101802C98, buf);
          if ((__p[0] & 1) == 0)
          {
            __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
          }

          v13 = *(v12 + 63);
          if (v13 >= 0)
          {
            v14 = *(v12 + 63);
          }

          else
          {
            v14 = v12[6];
          }

          v15 = HIBYTE(v38);
          if (v38 < 0)
          {
            v15 = v38;
          }

          if (v14 == v15)
          {
            v16 = v13 >= 0 ? v12 + 5 : v12[5];
            v17 = v38 >= 0 ? &__p[1] : __p[1];
            if (!memcmp(v16, v17, v14))
            {
LABEL_62:
              if (SHIBYTE(v38) < 0)
              {
                operator delete(__p[1]);
              }

              goto LABEL_64;
            }
          }
        }
      }

      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = subscriber::asString();
        *buf = 136315138;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I New sim swap in slot %s", buf, 0xCu);
      }

      (*(**(a1 + 128) + 680))(buf);
      v20 = (*(**buf + 72))(*buf, v31);
      *v35 = &v31;
      sub_1002B167C(a1 + 952, &v31, &unk_101802C98, v35)[5] = v20;
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      memset(buf, 0, sizeof(buf));
      v21 = *(a1 + 360);
      if (*(a1 + 368) == v21 || *(a1 + 352) != 1)
      {
        if (*(a1 + 544) == *(a1 + 552))
        {
          goto LABEL_51;
        }
      }

      else
      {
        *buf = *(v21 + 16);
      }

      v22 = *(a1 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Have a remote device paired", v35, 2u);
      }

      cellplan::CellularPlanControllerPhone::getSIMStatusOnDeviceOr4FFChange(a1, v31);
LABEL_51:
      v23 = *(a1 + 1000);
      if (v23)
      {
        (*(*v23 + 16))(v23);
        v24 = *(a1 + 1000);
        *(a1 + 1000) = 0;
        if (v24)
        {
          (*(*v24 + 8))(v24);
        }
      }

      if (*(a1 + 256))
      {
        v25 = *(a1 + 40);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_101772C84(&v29, v30, v25);
        }

        v26 = 328;
        if (*(a1 + 1224))
        {
          v26 = 1368;
        }

        v28 = (a1 + v26 + 32);
        v27 = *v28;
        if (v28[1] != *v28)
        {
          *buf = *(v27 + 16);
          (*(**(a1 + 256) + 144))(*(a1 + 256), buf);
        }
      }

      if ((__p[0] & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }
  }

  LOBYTE(v8) = 0;
LABEL_92:
  (*(**(a1 + 160) + 64))(*(a1 + 160), a1 + 304);
  cellplan::CellularPlanControllerPhone::updateRemoteSimSubscriptionInfo_sync(a1);
  if (v8)
  {
    (*(**(a1 + 96) + 16))(*(a1 + 96));
  }
}

void sub_100500000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (a23 == 1 && a29 < 0)
  {
    operator delete(__p);
  }

  sub_1005032D8(&a30);
  sub_1005032D8(&a52);
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::handleRemoteVinylInfoUpdated_sync(cellplan::CellularPlanControllerPhone *this, const RemoteVinylInfo *a2)
{
  if (RemoteVinylInfo::operator==())
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I RemoteVinylInfo: No update", buf, 2u);
    }

    return;
  }

  v47 = 0uLL;
  v5 = *(this + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I RemoteVinylInfo: Updating", buf, 2u);
  }

  v6 = *(this + 32);
  if (*(this + 352))
  {
    if (v6)
    {
      v7 = *(this + 45);
      if (*(this + 46) != v7)
      {
        v47 = *(v7 + 16);
        v8 = (*(*v6 + 104))(v6);
        if (v8 != v47 || v9 != *(&v47 + 1))
        {
          if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
          {
            sub_101772CF8();
          }

          (*(**(this + 32) + 152))(*(this + 32));
        }
      }
    }
  }

  else
  {
    if (v6)
    {
      v11 = *(this + 45);
      if (*(this + 46) != v11)
      {
        v47 = *(v11 + 16);
        v12 = (*(*v6 + 104))(v6);
        if (v12 == v47 && v13 == *(&v47 + 1))
        {
          if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
          {
            sub_101772CC4();
          }

          (*(**(this + 32) + 144))(*(this + 32), &v47);
        }
      }
    }

    LODWORD(v41[0]) = 0;
    *&v40[0] = 0;
    memset(buf, 0, sizeof(buf));
    BYTE8(v40[0]) = 0;
    memset(v40 + 12, 0, 34);
    v15 = RemoteVinylInfo::operator==();
    v38.__r_.__value_.__r.__words[0] = &v40[1];
    sub_100112048(&v38);
    if (SBYTE7(v40[0]) < 0)
    {
      operator delete(*buf);
      if (!v15)
      {
        goto LABEL_34;
      }
    }

    else if (!v15)
    {
      goto LABEL_34;
    }

    v16 = *(this + 5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Detected all remote devices un-paired", buf, 2u);
    }

    v17 = *(this + 24);
    if (v17)
    {
      (*(*v17 + 40))(v17, 3, 10);
      (*(**(this + 24) + 40))(*(this + 24), 3, 12);
    }
  }

LABEL_34:
  memset(&v38, 0, sizeof(v38));
  cellplan::CellularPlanControllerPhone::getRemoteActiveIccid_sync(&v38, (this + 328));
  size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v38.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    (*(**(this + 20) + 88))(*(this + 20), 1, &v38);
  }

  (*(**(this + 20) + 32))(*(this + 20), this + 328);
  cellplan::CellularPlanControllerPhone::updateDatabaseWithCurrentWatchInfo_sync(this);
  cellplan::CellularPlanControllerPhone::updateRemoteSimSubscriptionInfo_sync(this);
  v19 = a2[1].var0.__rep_.__l.__size_;
  v20 = *(&a2[1].var0.__rep_.__l + 2);
  if (v20 != v19 && a2[1].var0.__rep_.__s.__data_[0] == 1)
  {
    v47 = *(v19 + 16);
    v21 = *(this + 45);
    v22 = *(this + 46);
LABEL_82:
    v31 = *(v19 + 12) | &_mh_execute_header;
    goto LABEL_84;
  }

  v21 = *(this + 45);
  v22 = *(this + 46);
  if (v22 != v21 && *(this + 352) == 1)
  {
    v47 = *(v21 + 16);
    v23 = *(this + 5);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Detected a remote device paired", buf, 2u);
    }

    (*(**(this + 12) + 48))(*(this + 12));
    (***(this + 16))(&v34);
    *buf = v34;
    v34 = 0uLL;
    subscriber::makeSimSlotRange();
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (*(&v34 + 1))
    {
      sub_100004A34(*(&v34 + 1));
    }

    v24 = v35;
    v25 = v36;
    if (v35 == v36)
    {
      goto LABEL_94;
    }

    v26 = v37;
    do
    {
      if (v26(*v24))
      {
        break;
      }

      ++v24;
    }

    while (v24 != v25);
    v27 = v36;
    while (1)
    {
      if (v24 == v27)
      {
        goto LABEL_94;
      }

      v28 = *v24;
      v29 = *(this + 24);
      if (v29)
      {
        v30 = (*(*v29 + 32))(v29, *v24, 10);
        (*(**(this + 24) + 32))(*(this + 24), v28, 12);
      }

      else
      {
        v30 = 6;
      }

      v46 = 0;
      v44 = 0u;
      *__p = 0u;
      *v42 = 0u;
      v43 = 0u;
      *v41 = 0u;
      memset(v40, 0, sizeof(v40));
      *buf = 0u;
      (*(**(this + 20) + 248))(buf);
      if (buf[0] == 1 && v30 == 2)
      {
        if (!*(this + 125) && v44 == 3)
        {
          cellplan::CellularPlanControllerPhone::getSIMStatusOnDeviceOr4FFChange(this, v28);
          if ((buf[0] & 1) == 0)
          {
            goto LABEL_78;
          }
        }
      }

      else if (!buf[0])
      {
        goto LABEL_78;
      }

      if (BYTE8(v44) == 1)
      {
        if (SHIBYTE(v46) < 0)
        {
          operator delete(__p[0]);
        }

        BYTE8(v44) = 0;
      }

      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42[1]);
      }

      if (BYTE8(v40[2]) == 1)
      {
        if (SHIBYTE(v42[0]) < 0)
        {
          operator delete(v41[0]);
        }

        BYTE8(v40[2]) = 0;
      }

      if (BYTE8(v40[0]) == 1 && SBYTE7(v40[2]) < 0)
      {
        operator delete(*&v40[1]);
      }

      do
      {
LABEL_78:
        ++v24;
      }

      while (v24 != v25 && (v26(*v24) & 1) == 0);
    }
  }

  if (v20 != v19)
  {
    goto LABEL_82;
  }

  v31 = 0;
LABEL_84:
  if (v21 == v22)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(v21 + 12) | &_mh_execute_header;
  }

  if (HIDWORD(v31) != HIDWORD(v32) || !HIDWORD(v31))
  {
    if (HIDWORD(v31) != HIDWORD(v32))
    {
      goto LABEL_90;
    }

LABEL_92:
    v33 = (**(this + 12) + 16);
    goto LABEL_93;
  }

  if (v31 == v32)
  {
    goto LABEL_92;
  }

LABEL_90:
  v33 = (**(this + 12) + 48);
LABEL_93:
  (*v33)();
LABEL_94:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_10050080C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_100004A34(a21);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::handleRemoteDeviceIdentifiersUpdated_sync(cellplan::CellularPlanControllerPhone *this, const RemoteDeviceIdentifiers *a2)
{
  v3 = cellplan::RemoteDeviceIdentifiers::operator!=();
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = CSIBOOLAsString(v3);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I RemoteDeviceIdentifiers updated: %s", &v5, 0xCu);
  }

  if (v3)
  {
    cellplan::CellularPlanControllerPhone::updateDatabaseWithCurrentWatchInfo_sync(this);
  }
}

void cellplan::CellularPlanControllerPhone::handleFamilyDeviceInfosUpdated_sync(uint64_t a1, uint64_t *a2)
{
  (*(**(a1 + 160) + 56))(*(a1 + 160), a1 + 544);
  v4 = *(a1 + 544);
  v5 = *(a1 + 552);
  v6 = 0x2E8BA2E8BA2E8BA3;
  if (v4 != v5)
  {
    v7 = (a1 + 1080);
    while (1)
    {
      v9 = *a2;
      v8 = a2[1];
      if (*a2 != v8)
      {
        while ((cellplan::RemoteProvisioningDeviceInfo::operator==() & 1) == 0)
        {
          v9 += 216;
          if (v9 == v8)
          {
            v9 = v8;
            break;
          }
        }

        v8 = a2[1];
      }

      if (v9 != v8)
      {
        goto LABEL_87;
      }

      v72 = 0uLL;
      v73 = 0;
      sub_10027E628(&v72, *(v4 + 176), *(v4 + 184), ((*(v4 + 184) - *(v4 + 176)) >> 3) * v6);
      if (v72 != *(&v72 + 1))
      {
        v10 = *(a1 + 256);
        if (v10)
        {
          if (*v7)
          {
            v71 = *(v72 + 16);
            *buf = (*(*v10 + 104))(v10);
            *&buf[8] = v11;
            v12 = *buf == v71 && v11 == *(&v71 + 1);
            if (v12)
            {
              if (*(&v72 + 1) == v72)
              {
                sub_1002030E0();
              }

              if (*(v72 + 80) == 1 && *(v72 + 56) != *(v72 + 64))
              {
                v49 = v7;
                v14 = *a2;
                v13 = a2[1];
                *v69 = v71;
                if (v14 != v13)
                {
                  do
                  {
                    memset(buf, 0, sizeof(buf));
                    *&v56 = 0;
                    sub_10027E628(buf, *(v14 + 176), *(v14 + 184), ((*(v14 + 184) - *(v14 + 176)) >> 3) * v6);
                    v15 = v6;
                    if (*buf == *&buf[8])
                    {
                      *&v50 = buf;
                      sub_100112048(&v50);
                    }

                    else
                    {
                      v17 = *(*buf + 16) != *v69 || *(*buf + 24) != *&v69[8];
                      *&v50 = buf;
                      sub_100112048(&v50);
                      if (!v17)
                      {
                        v6 = v15;
                        goto LABEL_33;
                      }
                    }

                    v14 += 216;
                    v6 = v15;
                  }

                  while (v14 != v13);
                  v14 = v13;
LABEL_33:
                  v13 = a2[1];
                }

                v12 = v14 == v13;
                v7 = v49;
                if (!v12)
                {
                  *v69 = 0u;
                  v70 = 0u;
                  v18 = *(v14 + 176);
                  if (*(v14 + 184) == v18)
                  {
                    sub_1002030E0();
                  }

                  sub_100112464(v69, v18 + 56);
                  if (BYTE8(v70) == 1)
                  {
                    if (*(&v72 + 1) == v72)
                    {
                      sub_1002030E0();
                    }

                    if (*(v72 + 64) - *(v72 + 56) <= *&v69[8] - *v69)
                    {
                      goto LABEL_51;
                    }
                  }

                  v19 = *(a1 + 40);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I leverage VinylInfoInd as fetch response", buf, 2u);
                  }

                  v20 = *(a1 + 160);
                  v21 = *(a1 + 1040);
                  v52 = 0;
                  __p = 0uLL;
                  v53[0] = 0;
                  v54 = 0;
                  sub_100520D38(buf, v21, &__p, v53, 0);
                  (*(*v20 + 96))(v20, 0, buf);
                  if (v68 == 1)
                  {
                    sub_100E3A5D4(v57);
                  }

                  if (SHIBYTE(v56) < 0)
                  {
                    operator delete(*&buf[8]);
                  }

                  if (v54 == 1)
                  {
                    sub_100E3A5D4(v53);
                  }

                  if (SHIBYTE(v52) < 0)
                  {
                    operator delete(__p);
                  }

                  *buf = 0;
                  if (*(&v72 + 1) == v72)
                  {
                    sub_1002030E0();
                  }

                  sub_1005027A0(v49, buf, v72);
                  if (BYTE8(v70))
                  {
LABEL_51:
                    *buf = v69;
                    sub_100112120(buf);
                  }
                }
              }
            }
          }
        }
      }

      if (*v4 == 1)
      {
        break;
      }

LABEL_67:
      v66 = 0u;
      v67 = 0u;
      *v64 = 0u;
      memset(v65, 0, sizeof(v65));
      v62 = 0u;
      *v63 = 0u;
      v60 = 0u;
      *v61 = 0u;
      v58 = 0u;
      *v59 = 0u;
      v56 = 0u;
      *v57 = 0u;
      *buf = 0u;
      cellplan::RemoteDeviceIdentifiers::operator=();
      std::string::operator=(&v65[1], (v4 + 144));
      v65[4] = *(v4 + 168);
      if (&v65[1] != (v4 + 144))
      {
        sub_100169D44(&v65[5], *(v4 + 176), *(v4 + 184), ((*(v4 + 184) - *(v4 + 176)) >> 3) * v6);
      }

      v27 = *(v4 + 200);
      DWORD2(v67) = *(v4 + 208);
      *&v67 = v27;
      (*(**(a1 + 176) + 32))(*(a1 + 176), buf);
      *v69 = &v65[5];
      sub_100112048(v69);
      if (SHIBYTE(v65[3]) < 0)
      {
        operator delete(v65[1]);
      }

      if (SHIBYTE(v64[0]) < 0)
      {
        operator delete(v63[0]);
      }

      if (BYTE8(v60) == 1)
      {
        if (SBYTE7(v62) < 0)
        {
          operator delete(v61[0]);
        }

        BYTE8(v60) = 0;
      }

      if (BYTE8(v58) == 1)
      {
        if (SBYTE7(v60) < 0)
        {
          operator delete(v59[0]);
        }

        BYTE8(v58) = 0;
      }

      if (SBYTE7(v58) < 0)
      {
        operator delete(v57[0]);
      }

      if (buf[0] == 1 && SHIBYTE(v56) < 0)
      {
        operator delete(*&buf[8]);
      }

      *buf = &v72;
      sub_100112048(buf);
LABEL_87:
      v4 += 216;
      if (v4 == v5)
      {
        goto LABEL_88;
      }
    }

    if (v8 == a2[1])
    {
      goto LABEL_63;
    }

    v22 = *(v9 + 176);
    if (v22 == *(v9 + 184))
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v22 + 12) | &_mh_execute_header;
    }

    v24 = *(v4 + 176);
    if (v24 == *(v4 + 184))
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v24 + 12) | &_mh_execute_header;
    }

    if (HIDWORD(v23) == HIDWORD(v25) && HIDWORD(v23))
    {
      if (v23 != v25)
      {
LABEL_63:
        v26 = (**(a1 + 96) + 48);
LABEL_66:
        (*v26)();
        goto LABEL_67;
      }
    }

    else if (HIDWORD(v23) != HIDWORD(v25))
    {
      goto LABEL_63;
    }

    v26 = (**(a1 + 96) + 16);
    goto LABEL_66;
  }

LABEL_88:
  if (*a2 != a2[1] && *(a1 + 544) == *(a1 + 552))
  {
    v28 = *(a1 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Detected all altAccount devices un-paired", buf, 2u);
    }

    v29 = *(a1 + 192);
    if (v29)
    {
      (*(*v29 + 40))(v29, 3, 11);
      (*(**(a1 + 192) + 40))(*(a1 + 192), 3, 14);
    }
  }

  v30 = *(a1 + 544);
  v31 = *(a1 + 552);
  if (v30 != v31)
  {
    while ((*v30 & 1) == 0)
    {
      v30 += 216;
      if (v30 == v31)
      {
        goto LABEL_101;
      }
    }
  }

  if (v30 == v31)
  {
LABEL_101:
    buf[0] = 0;
    LOBYTE(v59[0]) = 0;
    LOBYTE(v61[0]) = 0;
    LOBYTE(v63[1]) = 0;
    LODWORD(v66) = 0;
    v56 = 0uLL;
    *&buf[8] = 0;
    LOBYTE(v57[0]) = 0;
    v62 = 0uLL;
    v61[1] = 0;
    LOBYTE(v63[0]) = 0;
    v64[1] = 0;
    v65[0] = 0;
    v64[0] = 0;
    LOBYTE(v65[1]) = 0;
    memset(&v65[1] + 4, 0, 34);
    *(a1 + 1224) = 0;
    cellplan::RemoteDeviceIdentifiers::operator=();
    v33 = (a1 + 1368);
    if (*(a1 + 1391) < 0)
    {
      operator delete(*v33);
    }

    *v33 = *v64;
    *(a1 + 1384) = v65[0];
    HIBYTE(v65[0]) = 0;
    LOBYTE(v64[0]) = 0;
    *(a1 + 1392) = v65[1];
    sub_100169EC0((a1 + 1400));
    *(a1 + 1400) = *&v65[2];
    *(a1 + 1416) = v65[4];
    memset(&v65[2], 0, 24);
    *(a1 + 1424) = v65[5];
    *(a1 + 1432) = v66;
    *v69 = &v65[2];
  }

  else
  {
    *&v66 = 0;
    *v64 = 0u;
    memset(v65, 0, sizeof(v65));
    v62 = 0u;
    *v63 = 0u;
    v60 = 0u;
    *v61 = 0u;
    v58 = 0u;
    *v59 = 0u;
    v56 = 0u;
    *v57 = 0u;
    v32 = *(a1 + 1224);
    *buf = 0u;
    buf[0] = v32;
    sub_10027E51C(&buf[8], (a1 + 1232));
    if (*(a1 + 1391) < 0)
    {
      sub_100005F2C(v64, *(a1 + 1368), *(a1 + 1376));
    }

    else
    {
      *v64 = *(a1 + 1368);
      v65[0] = *(a1 + 1384);
    }

    v65[1] = *(a1 + 1392);
    memset(&v65[2], 0, 24);
    sub_10027E628(&v65[2], *(a1 + 1400), *(a1 + 1408), ((*(a1 + 1408) - *(a1 + 1400)) >> 3) * v6);
    v65[5] = *(a1 + 1424);
    LODWORD(v66) = *(a1 + 1432);
    *(a1 + 1224) = *v30;
    cellplan::RemoteDeviceIdentifiers::operator=();
    std::string::operator=((a1 + 1368), (v30 + 144));
    *(a1 + 1392) = *(v30 + 168);
    if (a1 + 1224 != v30)
    {
      sub_100169D44((a1 + 1400), *(v30 + 176), *(v30 + 184), ((*(v30 + 184) - *(v30 + 176)) >> 3) * v6);
    }

    v34 = *(v30 + 200);
    *(a1 + 1432) = *(v30 + 208);
    *(a1 + 1424) = v34;
    v72 = 0uLL;
    v35 = *(v30 + 176);
    if (*(v30 + 184) == v35)
    {
      v41 = *(a1 + 40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#E Cannot find EID", v69, 2u);
      }
    }

    else
    {
      v72 = *(v35 + 16);
      v36 = *(a1 + 256);
      if (v36)
      {
        v37 = (*(*v36 + 104))(v36);
        if (v37 != v72 || v38 != *(&v72 + 1))
        {
          v40 = *(a1 + 40);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *v69 = 0;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Switched to a different gizmo while provisioning ongoing", v69, 2u);
          }

          (*(**(a1 + 256) + 152))(*(a1 + 256));
        }
      }
    }

    if ((v65[1] & 1) == 0 && *(a1 + 1392) == 1)
    {
      v42 = *(a1 + 40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Detected an altAccount device being switched", v69, 2u);
      }

      (***(a1 + 128))(&v50);
      v71 = v50;
      v50 = 0uLL;
      subscriber::makeSimSlotRange();
      if (*(&v71 + 1))
      {
        sub_100004A34(*(&v71 + 1));
      }

      if (*(&v50 + 1))
      {
        sub_100004A34(*(&v50 + 1));
      }

      v43 = *v69;
      v44 = *&v69[8];
      if (*v69 != *&v69[8])
      {
        v45 = v70;
        do
        {
          if (v45(*v43))
          {
            break;
          }

          ++v43;
        }

        while (v43 != v44);
        v46 = *&v69[8];
        while (v43 != v46)
        {
          v47 = *(a1 + 192);
          if (v47)
          {
            v48 = *v43;
            (*(*v47 + 32))(v47, v48, 11);
            (*(**(a1 + 192) + 32))(*(a1 + 192), v48, 14);
          }

          do
          {
            ++v43;
          }

          while (v43 != v44 && (v45(*v43) & 1) == 0);
        }
      }

      cellplan::CellularPlanControllerPhone::checkSubscription_sync(a1, 1);
    }

    *v69 = &v65[2];
  }

  sub_100112048(v69);
  if (SHIBYTE(v65[0]) < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61[1]);
  }

  if (LOBYTE(v59[0]) == 1)
  {
    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59[1]);
    }

    LOBYTE(v59[0]) = 0;
  }

  if (LOBYTE(v57[0]) == 1)
  {
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[1]);
    }

    LOBYTE(v57[0]) = 0;
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(*&buf[8]);
  }
}

void sub_100501528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  if (*(v47 - 152) == 1)
  {
    a47 = v47 - 176;
    sub_100112120(&a47);
  }

  *(v47 - 144) = v47 - 128;
  sub_100112048((v47 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_10050167C(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100525524(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void sub_1005016E0(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/regulatory_restriction_active");
  v5[0] = off_101E54750;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_100501794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1005017C0(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/airplane_mode");
  v5[0] = off_101E547D0;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_100501874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1005018A0(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/cellular_data_setting");
  v5[0] = off_101E54850;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_100501954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::handleCarrierBundleChange_sync(uint64_t this)
{
  if (*(this + 744) - 1 <= 2)
  {
    return (*(**(this + 96) + 16))();
  }

  return this;
}

void sub_1005019BC(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/in_home_countries");
  v5[0] = off_101E54950;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_100501A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::handleActivePairedDeviceInfoUpdated_sync(uint64_t this)
{
  if (*(this + 1208) != 1)
  {
    return this;
  }

  v1 = this;
  this = rest::PairedDeviceInfoList::isAnyDeviceInState();
  if (this)
  {
    return this;
  }

  (***(v1 + 128))(&v12);
  ServiceMap = Registry::getServiceMap(v12);
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
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
  v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v14);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
LABEL_10:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
LABEL_11:
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v10)
  {
    (*(*v10 + 16))(v10, v1 + 1112);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  return sub_100503374(v1 + 1112);
}

void sub_100501C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100501C30(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/prefs-nb/user_default_voice_slot");
  v5[0] = off_101E54A50;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_100501CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::handleDumpState_sync(cellplan::CellularPlanControllerPhone *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    (*(*v2 + 192))(v2);
  }

  (*(**(this + 20) + 296))(*(this + 20));
  v3 = *(this + 32);
  if (v3)
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = (*(*v3 + 104))(v3);
      v10[1] = v5;
      (*(**(this + 32) + 104))(*(this + 32));
      ctu::hex(v10, 0x10, v6);
      v7 = v12 >= 0 ? __p : *__p;
      *buf = 136315138;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Provisioning in flight for (%s)", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(*__p);
      }
    }
  }

  if (*(this + 1208) == 1)
  {
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (this + 1112);
      if (*(this + 1135) < 0)
      {
        v9 = *v9;
      }

      *__p = 136315138;
      *&__p[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Suppressing until ready Notification: (%s)", __p, 0xCu);
    }
  }
}

uint64_t cellplan::CellularPlanControllerPhone::shutdownService_sync(cellplan::CellularPlanControllerPhone *this)
{
  (*(**(this + 18) + 32))(*(this + 18));

  return ctu::RestModule::disconnect((this + 288));
}

void cellplan::CellularPlanControllerPhone::getRemoteDeviceInfoForEid_sync(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*a2 == 0)
  {
    goto LABEL_17;
  }

  v28 = 0uLL;
  v4 = a1[45];
  if (a1[46] != v4)
  {
    v28 = *(v4 + 16);
  }

  if (v28 != *a2 || *(&v28 + 1) != *(a2 + 8))
  {
    v6 = a1[68];
    v7 = a1[69];
    if (v6 != v7)
    {
      v8 = v6 + 144;
      while (1)
      {
        v9 = *(v8 + 32);
        if (*(v8 + 40) != v9)
        {
          v28 = *(v9 + 16);
        }

        if (v28 == *a2 && *(&v28 + 1) == *(a2 + 8))
        {
          break;
        }

        v11 = v8 + 72;
        v8 += 216;
        if (v11 == v7)
        {
          goto LABEL_17;
        }
      }

      v12 = 1;
      sub_100520A6C(v14, &v12, v8, (v8 - 136));
      sub_100520B54(a3, v14);
      goto LABEL_20;
    }

LABEL_17:
    *a3 = 0;
    a3[8] = 0;
    a3[88] = 0;
    return;
  }

  v12 = 0;
  sub_100520A6C(v14, &v12, (a1 + 41), (a1 + 51));
  sub_100520B54(a3, v14);
LABEL_20:
  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v23 == 1)
  {
    if (v25 < 0)
    {
      operator delete(v24);
    }

    v23 = 0;
  }

  if (v20 == 1)
  {
    if (v22 < 0)
    {
      operator delete(__p);
    }

    v20 = 0;
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  v13 = &v17;
  sub_100112048(&v13);
  if (v16 < 0)
  {
    operator delete(v15);
  }
}

void sub_100502128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100502148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100502148(uint64_t a1)
{
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 136) == 1)
  {
    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    *(a1 + 136) = 0;
  }

  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    *(a1 + 104) = 0;
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v3 = (a1 + 40);
  sub_100112048(&v3);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void cellplan::CellularPlanControllerPhone::updateDatabaseWithCurrentWatchInfo_sync(cellplan::CellularPlanControllerPhone *this)
{
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  __p = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  *v14 = 0u;
  v15 = 0u;
  *v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  *v9 = 0u;
  (*(**(this + 20) + 208))(&v8);
  if (v8 != 1 || *(this + 432) != 1)
  {
    goto LABEL_42;
  }

  if ((SBYTE7(v20) & 0x80u) == 0)
  {
    v2 = BYTE7(v20);
  }

  else
  {
    v2 = *(&__p + 1);
  }

  v3 = *(this + 431);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(this + 52);
  }

  if (v2 == v3 && ((SBYTE7(v20) & 0x80u) == 0 ? (p_p = &__p) : (p_p = __p), v4 >= 0 ? (v6 = this + 408) : (v6 = *(this + 51)), !memcmp(p_p, v6, v2)))
  {
    cellplan::RemoteDeviceIdentifiers::operator=();
    if ((v8 & 1) == 0)
    {
      __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
    }

    (*(**(this + 22) + 32))(*(this + 22), &v8 + 8);
  }

  else
  {
LABEL_42:
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_101772D2C();
    }
  }

  if (v8 == 1)
  {
    v7 = v21;
    sub_100112048(&v7);
    if (SBYTE7(v20) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(*(&v16 + 1));
    }

    if (LOBYTE(v14[0]) == 1)
    {
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[1]);
      }

      LOBYTE(v14[0]) = 0;
    }

    if (LOBYTE(v12[0]) == 1)
    {
      if (SHIBYTE(v13) < 0)
      {
        operator delete(v12[1]);
      }

      LOBYTE(v12[0]) = 0;
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[1]);
    }

    if (BYTE8(v8) == 1 && SHIBYTE(v10[0]) < 0)
    {
      operator delete(v9[0]);
    }
  }
}

void cellplan::CellularPlanControllerPhone::getRemoteActiveIccid_sync(std::string *__return_ptr a1@<X8>, const RemoteVinylInfo *a2@<X1>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  size = a2[1].var0.__rep_.__l.__size_;
  if (size != *(&a2[1].var0.__rep_.__l + 2))
  {
    v5 = 0u;
    v6 = 0u;
    sub_100112464(&v5, size + 56);
    if (BYTE8(v6) == 1)
    {
      v4 = v5;
      if (v5 != *(&v5 + 1))
      {
        while ((*(v4 + 90) & 1) == 0)
        {
          v4 += 216;
          if (v4 == *(&v5 + 1))
          {
            goto LABEL_9;
          }
        }
      }

      if (v4 == *(&v5 + 1) || (std::string::operator=(a1, (v4 + 16)), (BYTE8(v6) & 1) != 0))
      {
LABEL_9:
        v7 = &v5;
        sub_100112120(&v7);
      }
    }
  }
}

void sub_100502518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    *(v13 - 24) = &a9;
    sub_100112120((v13 - 24));
  }

  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::updateRemoteSimSubscriptionInfo_sync(cellplan::CellularPlanControllerPhone *this)
{
  memset(v3, 0, sizeof(v3));
  if (*(this + 600) == 1)
  {
    sub_100523744(v3, this + 38);
  }

  memset(v2, 0, sizeof(v2));
  (*(**(this + 20) + 216))(v2);
  sub_1005207F4(this + 568, v2);
  sub_100220B4C(v2);
  sub_100220B4C(v3);
}

void cellplan::CellularPlanControllerPhone::getSIMStatusOnDeviceOr4FFChange(uint64_t a1, uint64_t a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100502D80;
  v5[3] = &unk_101E53898;
  v5[4] = a1;
  v4 = _Block_copy(v5);
  v6 = v4;
  cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(a1, a2, 0, 1, &v6);
  if (v4)
  {
    _Block_release(v4);
  }
}

void sub_100502738(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100502758(uint64_t a1)
{
  if (*(a1 + 248) == 1)
  {
    sub_100E3A5D4(a1 + 32);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1005027A0(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  sub_100F11B6C(&v7, a3);
  v6[0] = 1;
  (*(v3 + 16))(v3, v4, v6);
  if (v6[0] == 1)
  {
    if (v10[24] == 1)
    {
      v5 = v10;
      sub_100112120(&v5);
    }

    if (v9 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_100502868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10016A858(va);
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::checkSubscription_sync(cellplan::CellularPlanControllerPhone *this, uint64_t a2)
{
  v2 = a2;
  v4 = _Block_copy(&stru_101E54170);
  v5 = v4;
  cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(this, 3, 0, v2, &v5);
  if (v4)
  {
    _Block_release(v4);
  }
}

void sub_1005028F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(uint64_t a1, uint64_t a2, unsigned int a3, char a4, void **a5)
{
  v5 = a2;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2000000000;
  v34 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x4002000000;
  v30[3] = sub_100513D4C;
  v32[0] = 0;
  v32[1] = 0;
  v30[4] = sub_100513D88;
  v31 = v32;
  (***(a1 + 128))(buf);
  *__p = *buf;
  memset(buf, 0, sizeof(buf));
  subscriber::makeSimSlotRange();
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v7 = v27;
  v8 = v28;
  if (v27 != v28)
  {
    v9 = v29;
    do
    {
      if (v29(*v7))
      {
        break;
      }

      ++v7;
    }

    while (v7 != v28);
    v10 = v28;
    if (v7 != v28)
    {
      v11 = 0;
      do
      {
        v12 = *v7;
        __p[0] = 0;
        __p[1] = 0;
        v26 = 0;
        if (v5 != 3)
        {
          (*(**(a1 + 160) + 280))(buf);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p[0]);
          }

          v26 = v36;
          *__p = *buf;
          if (SHIBYTE(v36) < 0)
          {
            if (__p[1] != 32)
            {
              *__p[0] = 0;
              __p[1] = 0;
              goto LABEL_24;
            }

            v13 = *(a1 + 40);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = __p[0];
              goto LABEL_21;
            }
          }

          else
          {
            if (SHIBYTE(v36) != 32)
            {
              LOBYTE(__p[0]) = 0;
              HIBYTE(v26) = 0;
              goto LABEL_24;
            }

            v13 = *(a1 + 40);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = __p;
LABEL_21:
              *buf = 136315138;
              *&buf[4] = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Pending subscription device id (%s)", buf, 0xCu);
            }
          }
        }

LABEL_24:
        ++v11;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1174405120;
        aBlock[2] = sub_100514CD8;
        aBlock[3] = &unk_101E53EA8;
        v22 = v12;
        aBlock[4] = v30;
        aBlock[5] = v33;
        aBlock[6] = a1;
        v23 = v11;
        v15 = *a5;
        if (*a5)
        {
          v15 = _Block_copy(v15);
        }

        v21 = v15;
        v16 = _Block_copy(aBlock);
        v24 = v16;
        cellplan::CellularPlanControllerPhone::getSubscriptionInfoPerSlot(a1, v12, a3, a4, __p, &v24);
        if (v16)
        {
          _Block_release(v16);
        }

        if (v21)
        {
          _Block_release(v21);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
        }

        do
        {
          ++v7;
        }

        while (v7 != v8 && (v9(*v7) & 1) == 0);
      }

      while (v7 != v10);
    }
  }

  _Block_object_dispose(v30, 8);
  sub_10052BF90(&v31, v32[0]);
  _Block_object_dispose(v33, 8);
}

void sub_100502CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *aBlock, uint64_t a21, uint64_t a22, void *__p, std::__shared_weak_count *a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char *a38)
{
  if (a24)
  {
    sub_100004A34(a24);
  }

  v40 = *(v38 - 136);
  if (v40)
  {
    sub_100004A34(v40);
  }

  _Block_object_dispose(&a32, 8);
  sub_10052BF90(&a37, a38);
  _Block_object_dispose((v38 - 176), 8);
  _Unwind_Resume(a1);
}

atomic_uint **sub_100502D80(atomic_uint **result, void *a2)
{
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    v3 = result[4];
    do
    {
      if (*(v2 + 10) == 2)
      {
        v4 = *(v3 + 5);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v8 = subscriber::asString();
          v9 = *(v2 + 10);
          *buf = 136315394;
          v11 = v8;
          v12 = 1024;
          v13 = v9;
          _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Done getSIMStatusOnDeviceOr4FFChange for slot %s: %d", buf, 0x12u);
        }

        sub_100502F4C(v3 + 1, &event::entitlements::refreshEntitlementCache, cellplan::CellularPlanControllerPhone::handleRefreshEntitlementCache, 0);
      }

      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != a2 + 1);
  }

  return result;
}

void sub_100502F4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1005269F4;
  aBlock[3] = &unk_101E54B40;
  aBlock[4] = a1;
  aBlock[5] = a3;
  aBlock[6] = a4;
  v8 = _Block_copy(aBlock);
  sub_100004AA0(&v6, a1);
  sub_100526A40(a2, &v6, a1[2], &v8);
}

void cellplan::CellularPlanControllerPhone::handleRefreshEntitlementCache(uint64_t a1, uint64_t a2)
{
  (***(a1 + 128))(&v8);
  v9 = v8;
  v8 = 0uLL;
  v3 = SlotIdFromPersonalityId();
  if (*(&v9 + 1))
  {
    sub_100004A34(*(&v9 + 1));
  }

  if (*(&v8 + 1))
  {
    sub_100004A34(*(&v8 + 1));
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1005034F0;
  aBlock[3] = &unk_101E538B8;
  aBlock[4] = a1;
  v6 = v3;
  v4 = _Block_copy(aBlock);
  v7 = v4;
  cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(a1, v3, 0, 0, &v7);
  if (v4)
  {
    _Block_release(v4);
  }
}

void sub_100503140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v18)
  {
    _Block_release(v18);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::getPhoneSimIccid_sync(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  *v11 = 0u;
  v12 = 0u;
  *v10 = 0u;
  v8 = 0u;
  memset(v9, 0, sizeof(v9));
  v6 = 0u;
  *v7 = 0u;
  sub_100922C88(a3, (a2 + 304), &v6);
  if (v6 == 1)
  {
    v4 = HIBYTE(v11[0]);
    if (SHIBYTE(v11[0]) < 0)
    {
      v4 = v10[1];
    }

    if (!v4 || (sub_10016C728(a1, v10), (v6 & 1) != 0))
    {
      if (SHIBYTE(v15) < 0)
      {
        operator delete(*(&v14 + 1));
      }

      if (SBYTE7(v14) < 0)
      {
        operator delete(v13);
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[1]);
      }

      if (SHIBYTE(v11[0]) < 0)
      {
        operator delete(v10[0]);
      }

      v5 = v9;
      sub_100034D1C(&v5);
      if (v7[1])
      {
        *&v8 = v7[1];
        operator delete(v7[1]);
      }
    }
  }
}

void sub_1005032AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1005032D8(va);
  if (*v5)
  {
    sub_101772D60();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005032D8(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 175) < 0)
    {
      operator delete(*(a1 + 152));
    }

    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    v4 = (a1 + 48);
    sub_100034D1C(&v4);
    v2 = *(a1 + 24);
    if (v2)
    {
      *(a1 + 32) = v2;
      operator delete(v2);
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100503374(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    sub_100005978((a1 + 64));
    sub_100005978((a1 + 56));
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 96) = 0;
  }

  return a1;
}

uint64_t cellplan::CellularPlanControllerPhone::isPasscodeEnabled_sync(cellplan::CellularPlanControllerPhone *this)
{
  v2 = *(this + 28);
  if (!v2)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  (*(*v2 + 16))(&v7);
  if (v7)
  {
    if ((*(*v7 + 16))(v7, 1))
    {
      v3 = 1;
      goto LABEL_9;
    }

    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Device passcode is not enabled", v6, 2u);
    }
  }

  v3 = 0;
LABEL_9:
  if (v8)
  {
    sub_100004A34(v8);
  }

  return v3;
}

void sub_1005034D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005034F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = a2 + 8;
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = (a1 + 40);
  v6 = *(a1 + 40);
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
  if (v7 != v3 && v6 >= *(v7 + 32))
  {
    v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v7 + 40);
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I handleRefreshEntitlementCache, rsp: %d", buf, 8u);
    }

    v10 = *(v7 + 40);
    if (v10 <= 3 && v10 != 2)
    {
      *buf = v5;
      v12 = sub_1005268B8(v2 + 712, v5, &unk_101802C98, buf);
      sub_1001039A0(v12 + 5);
    }
  }

  else
  {
LABEL_20:
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101772D90();
    }
  }
}

uint64_t *cellplan::CellularPlanControllerPhone::handleEntitlementChanged(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  cellplan::CellularPlanControllerPhone::processEntitlementStateChanged_sync(a1, a2, 10, a3, a4);
  cellplan::CellularPlanControllerPhone::processEntitlementStateChanged_sync(a1, a2, 12, a3, a4);
  cellplan::CellularPlanControllerPhone::processEntitlementStateChanged_sync(a1, a2, 11, a3, a4);

  return cellplan::CellularPlanControllerPhone::processEntitlementStateChanged_sync(a1, a2, 14, a3, a4);
}

uint64_t *cellplan::CellularPlanControllerPhone::processEntitlementStateChanged_sync(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5)
{
  v36 = a3;
  v37 = a2;
  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (((*a4 >> a3) & 1) == 0)
  {
    v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = sub_10006EE44(a3);
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s entitlement not supported", buf, 0xCu);
    }

    *buf = &v36;
    v22 = sub_10031D3B0(a1 + 1088, &v36, &unk_101802C98, buf);
    *buf = &v37;
    result = sub_10030C46C((v22 + 5), &v37, &unk_101802C98, buf);
    v23 = 6;
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = sub_10006EE44(a3);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s entitlement supported", buf, 0xCu);
  }

  v15 = *(a5 + 8);
  v14 = a5 + 8;
  v13 = v15;
  if (v15)
  {
    v16 = v14;
    do
    {
      if (*(v13 + 28) >= v36)
      {
        v16 = v13;
      }

      v13 = *(v13 + 8 * (*(v13 + 28) < v36));
    }

    while (v13);
    if (v16 != v14 && v36 >= *(v16 + 28))
    {
      v24 = *(v16 + 32);
      if (v24 != 4)
      {
        *buf = &v36;
        v28 = sub_10031D3B0(a1 + 1088, &v36, &unk_101802C98, buf);
        *buf = &v37;
        result = sub_10030C46C((v28 + 5), &v37, &unk_101802C98, buf);
        if (*(result + 8) != v24)
        {
          v29 = *v11;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = sub_10006EE44(v36);
            *buf = &v36;
            v31 = sub_10031D3B0(a1 + 1088, &v36, &unk_101802C98, buf);
            *buf = &v37;
            v32 = sub_10030C46C((v31 + 5), &v37, &unk_101802C98, buf);
            v33 = sub_100A38E08(*(v32 + 8));
            v34 = sub_100A38E08(v24);
            *buf = 136315650;
            *&buf[4] = v30;
            v39 = 2080;
            v40 = v33;
            v41 = 2080;
            v42 = v34;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s from [%s] to [%s]", buf, 0x20u);
          }

          *buf = &v36;
          v35 = sub_10031D3B0(a1 + 1088, &v36, &unk_101802C98, buf);
          *buf = &v37;
          result = sub_10030C46C((v35 + 5), &v37, &unk_101802C98, buf);
          *(result + 8) = v24;
          if ((v36 & 0xFFFFFFFE) == 0xA)
          {
            if (v24 == 2)
            {
              cellplan::CellularPlanControllerPhone::getSIMStatusOnDeviceOr4FFChange(a1, v37);
            }

            return (*(**(a1 + 96) + 16))(*(a1 + 96));
          }
        }

        return result;
      }

      v25 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
      {
        v26 = sub_10006EE44(v36);
        *buf = 136315138;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s set to requested, ignore ...", buf, 0xCu);
      }

      *buf = &v36;
      v27 = sub_10031D3B0(a1 + 1088, &v36, &unk_101802C98, buf);
      *buf = &v37;
      result = sub_10030C46C((v27 + 5), &v37, &unk_101802C98, buf);
      v23 = 4;
LABEL_19:
      *(result + 8) = v23;
      return result;
    }
  }

  v17 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = sub_10006EE44(v36);
    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s is not tracked", buf, 0xCu);
  }

  *buf = &v36;
  v19 = sub_10031D3B0(a1 + 1088, &v36, &unk_101802C98, buf);
  *buf = &v37;
  result = sub_10030C46C((v19 + 5), &v37, &unk_101802C98, buf);
  *(result + 8) = 6;
  if (v36 > 11)
  {
    if (v36 == 14)
    {
      goto LABEL_26;
    }

    if (v36 != 12)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (v36 == 10)
  {
LABEL_22:
    if (*(a1 + 368) != *(a1 + 360) && *(a1 + 352) == 1)
    {
      result = *(a1 + 192);
      if (result)
      {
        return (*(*result + 32))(result, v37);
      }
    }
  }

  if (v36 != 11)
  {
    return result;
  }

LABEL_26:
  if (*(a1 + 544) != *(a1 + 552))
  {
    result = *(a1 + 192);
    if (result)
    {
      return (*(*result + 32))(result, v37);
    }
  }

  return result;
}

void cellplan::CellularPlanControllerPhone::getRemoteIccidsForSignup_sync(uint64_t a1, unsigned int a2, uint64_t *a3, void *a4)
{
  v5 = *a3;
  if (a3[1] == *a3)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101772DC4();
    }
  }

  else if (*(v5 + 80) == 1 && *(v5 + 56) != *(v5 + 64))
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    (*(**(a1 + 128) + 680))(v26);
    (*(*v26[0] + 56))(&v39);
    if (v26[1])
    {
      sub_100004A34(v26[1]);
    }

    if (v39 != v40)
    {
      v8 = *a3;
      if (a3[1] == *a3)
      {
        sub_1002030E0();
      }

      if ((*(v8 + 80) & 1) == 0)
      {
        sub_1000D1644();
      }

      v9 = *(v8 + 56);
      for (i = *(v8 + 64); v9 != i; v9 += 216)
      {
        v38 = 0;
        *__p = 0u;
        v37 = 0u;
        *v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        *v33 = 0u;
        *v30 = 0u;
        *v31 = 0u;
        *v28 = 0u;
        v29 = 0u;
        *v26 = 0u;
        v27 = 0u;
        v11 = (v9 + 16);
        (*(**(a1 + 160) + 120))(v26);
        if (v38 != 1 || BYTE8(v29) != 5)
        {
          goto LABEL_15;
        }

        (*(**(a1 + 128) + 680))(&buf);
        v12 = (*(*buf + 160))(buf, a2);
        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }

        if ((v12 & 1) == 0)
        {
          v22 = *(a1 + 40);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v9 + 39) < 0)
            {
              v11 = *v11;
            }

            LODWORD(buf) = 136315138;
            *(&buf + 4) = v11;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Skipping unusable plan (%s) in signup request", &buf, 0xCu);
          }
        }

        else
        {
LABEL_15:
          v14 = v39;
          v13 = v40;
          if (v39 != v40)
          {
            v15 = *(v9 + 39);
            while (1)
            {
              v16 = *(v14 + 23);
              v17 = v16 < 0 ? *(v14 + 8) : *(v14 + 23);
              if ((v15 & 0x80) != 0)
              {
                if (v17 == -1)
                {
LABEL_67:
                  sub_10013C334();
                }

                v19 = *(v9 + 16);
                v18 = *(v9 + 24) >= v17 ? v17 : *(v9 + 24);
              }

              else
              {
                if (v17 == -1)
                {
                  goto LABEL_67;
                }

                v18 = v15 >= v17 ? v17 : v15;
                v19 = (v9 + 16);
              }

              v20 = v16 >= 0 ? v14 : *v14;
              if (!memcmp(v19, v20, v18) && v18 == v17)
              {
                break;
              }

              v14 += 24;
              if (v14 == v13)
              {
                goto LABEL_47;
              }
            }

            v23 = a4[1];
            if (v23 >= a4[2])
            {
              v24 = sub_1000053A0(a4, (v9 + 16));
            }

            else
            {
              sub_10011C7A4(a4, (v9 + 16));
              v24 = v23 + 24;
            }

            a4[1] = v24;
          }
        }

LABEL_47:
        if (v38 == 1)
        {
          if (SBYTE7(v37) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v35) < 0)
          {
            operator delete(v34[1]);
          }

          if (SHIBYTE(v34[0]) < 0)
          {
            operator delete(v33[0]);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31[1]);
          }

          if (SHIBYTE(v31[0]) < 0)
          {
            operator delete(v30[0]);
          }

          if (SBYTE7(v29) < 0)
          {
            operator delete(v28[0]);
          }

          if (SHIBYTE(v27) < 0)
          {
            operator delete(v26[1]);
          }
        }
      }
    }

    v26[0] = &v39;
    sub_1000087B4(v26);
  }
}

void sub_1005040A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10050411C(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_1000053A0(a1, a2);
  }

  else
  {
    sub_10011C7A4(a1, a2);
    v4 = v3 + 24;
  }

  a1[1] = v4;
  return v4 - 24;
}

void cellplan::CellularPlanControllerPhone::fetchProfile_sync(uint64_t a1, __int128 *a2, uint64_t a3, void **a4)
{
  v5 = *a4;
  if (*a4)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a1 + 1080);
  *(a1 + 1080) = v5;
  if (v6)
  {
    _Block_release(v6);
  }

  sub_100527954();
}

void sub_1005042E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100504318(void *result, char *a2)
{
  if (*a2 == 1)
  {
    v3 = result;
    v4 = result[4];
    v5 = *(v4 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a2[100];
      v7 = a2[99];
      *buf = 67109376;
      *&buf[4] = v6;
      LOWORD(__p) = 1024;
      *(&__p + 2) = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I have new profile Disable [%d] Delete [%d]", buf, 0xEu);
      v8 = *a2;
      v9 = *(v4 + 160);
      v10 = *(v4 + 1040);
      v12 = 0;
      v11 = 0uLL;
      if ((v8 & 1) == 0)
      {
        __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
      }
    }

    else
    {
      v9 = *(v4 + 160);
      v10 = *(v4 + 1040);
      v12 = 0;
      v11 = 0uLL;
    }

    sub_100F11F00(v13, (a2 + 8));
    v14 = 1;
    sub_100520D38(buf, v10, &v11, v13, 0);
    (*(*v9 + 96))(v9, 1, buf);
    if (v18[216] == 1)
    {
      sub_100E3A5D4(v18);
    }

    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v14 == 1)
    {
      sub_100E3A5D4(v13);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11);
    }

    if ((*a2 & 1) == 0)
    {
      sub_10176B810();
    }

    if ((a2[100] & 1) != 0 || a2[99] == 1)
    {
      *buf = 0;
      __p = 0;
      (*(**(v4 + 96) + 64))(buf);
      if (*buf)
      {
        (*(**buf + 120))(*buf);
      }

      if (__p)
      {
        sub_100004A34(__p);
      }
    }

    result = *(v4 + 256);
    if (result)
    {
      if ((*a2 & 1) == 0)
      {
        sub_10176B810();
      }

      return (*(*result + 80))(result, v3 + 5, a2 + 8);
    }
  }

  return result;
}
uint64_t sub_100799668(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007996B4(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  result = *sub_100005C2C(a1, &v5, a2);
  if (!result)
  {
    sub_100799748();
  }

  return result;
}

void sub_1007997E8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100799874(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7D098;
  a2[1] = v2;
  return result;
}

void sub_1007998A0(uint64_t a1, char *a2, char *a3)
{
  v3 = *(a1 + 8);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (v3 + 8));
  operator new();
}

uint64_t sub_10079998C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007999D8(uint64_t **a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 8))
    {
      v4 = "success";
    }

    else
    {
      v4 = "failure";
    }

    v5 = "out";
    if (*(v1 + 9))
    {
      v5 = "";
    }

    *buf = 136315394;
    v8 = v4;
    v9 = 2080;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Delete transfer plan from cloud result: %s, with%s CK modification", buf, 0x16u);
  }

  if (*(v1 + 9) == 1)
  {
    sub_100795F34(v2, *(v2 + 496), 8, *(v1 + 8), 0, 80000);
    *(v2 + 496) = 0;
  }

  operator delete();
}

uint64_t sub_100799BAC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7D118;
  a2[1] = v2;
  return result;
}

void sub_100799BD8(uint64_t a1, uint64_t *a2, int *a3, int *a4)
{
  v4 = *(a1 + 8);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (v4 + 8));
  operator new();
}

uint64_t sub_100799CCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100799D18(uint64_t **a1)
{
  v8 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 8))
    {
      v4 = "success";
    }

    else
    {
      v4 = "failure";
    }

    v5 = "out";
    v6 = *(v1 + 9);
    v10 = v4;
    v7 = *(v1 + 3);
    *buf = 136315650;
    if (v6)
    {
      v5 = "";
    }

    v11 = 2080;
    v12 = v5;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Saved and uploaded to cloud result: %s, with%s CK modification, with error code: %d", buf, 0x1Cu);
  }

  if (*(v1 + 9) == 1)
  {
    sub_100795F34(v2, *(v1 + 4) | *(v2 + 496), *(v1 + 5), *(v1 + 8), 0, *(v1 + 3));
    *(v2 + 496) = 0;
  }

  operator delete();
}

uint64_t sub_100799F18(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E7D208))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100799F64(void *a1)
{
  *a1 = off_101E7D228;
  sub_10002B644((a1 + 2));
  return a1;
}

void sub_100799FA8(void *a1)
{
  *a1 = off_101E7D228;
  sub_10002B644((a1 + 2));

  operator delete();
}

uint64_t sub_10079A088(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E7D228;
  a2[1] = v2;
  return sub_10009CF40((a2 + 2), a1 + 16);
}

void sub_10079A0C0(void *a1)
{
  sub_10002B644(a1 + 16);

  operator delete(a1);
}

void sub_10079A0FC(uint64_t a1, __int128 *a2, __int128 *a3, _BYTE *a4)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v10 = *a3;
  v11 = *(a3 + 2);
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  v5 = *(a1 + 8);
  if (!*a4)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    sub_100794108(v5, &v10, &v17);
    sub_100795830(v5, &v12, &v17);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_100794A7C(v5, &v12, v5 + 368, (v5 + 440), &v17, &v14);
    memset(buf, 0, sizeof(buf));
    v21 = 0;
    sub_1005C9648(buf, v14, v15, 0x8F5C28F5C28F5C29 * ((v15 - v14) >> 3));
    v22 = 0uLL;
    v23 = 0;
    sub_1002831D0(&v22, *(v5 + 264), *(v5 + 272), 0x8E38E38E38E38E39 * ((*(v5 + 272) - *(v5 + 264)) >> 3));
    sub_10028AABC((v5 + 288));
    *(v5 + 288) = *buf;
    *(v5 + 304) = v21;
    v21 = 0;
    memset(buf, 0, sizeof(buf));
    sub_100798324((v5 + 312));
    *(v5 + 312) = v22;
    *(v5 + 328) = v23;
    v23 = 0;
    v22 = 0uLL;
    v27 = &v22;
    sub_10027E114(&v27);
    v27 = buf;
    sub_10027B2AC(&v27);
    sub_10079553C(v5, &v17, v8);
    *buf = v5;
    sub_100004AA0(&v27, (v5 + 8));
    v9 = v28;
    *&buf[8] = v27;
    v21 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
    }

    sub_10009CF40(&v22, a1 + 16);
    memset(v24, 0, sizeof(v24));
    sub_10044EDCC(v24, v17, v18, 0x34F72C234F72C235 * ((v18 - v17) >> 3));
    v25 = 0uLL;
    v26 = 0;
    sub_1002831D0(&v25, *(v5 + 264), *(v5 + 272), 0x8E38E38E38E38E39 * ((*(v5 + 272) - *(v5 + 264)) >> 3));
    v29 = 0;
    operator new();
  }

  v6 = *(v5 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E upload blacklist failure: %s", buf, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(*v7 + 48))(v7);
  }

  *buf = &v10;
  sub_10027B2AC(buf);
  *buf = &v12;
  sub_100111BA8(buf);
}

void sub_10079A508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char **a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  sub_100297224(v25 - 120);
  sub_10079A628(&a23);
  a22 = &a16;
  sub_10027B2AC(&a22);
  a16 = &a19;
  sub_10044F294(&a16);
  a16 = &a9;
  sub_10027B2AC(&a16);
  a16 = &a13;
  sub_100111BA8(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10079A5DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10079A628(uint64_t a1)
{
  v4 = (a1 + 80);
  sub_10027E114(&v4);
  v4 = (a1 + 56);
  sub_10044F294(&v4);
  sub_10002B644(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_10079A688(uint64_t a1)
{
  *a1 = off_101E7D2A8;
  v4 = (a1 + 88);
  sub_10027E114(&v4);
  v4 = (a1 + 64);
  sub_10044F294(&v4);
  sub_10002B644(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10079A704(uint64_t a1)
{
  *a1 = off_101E7D2A8;
  v3 = (a1 + 88);
  sub_10027E114(&v3);
  v3 = (a1 + 64);
  sub_10044F294(&v3);
  sub_10002B644(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10079A838(uint64_t a1)
{
  v3 = (a1 + 88);
  sub_10027E114(&v3);
  v3 = (a1 + 64);
  sub_10044F294(&v3);
  sub_10002B644(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10079A894(uint64_t a1)
{
  v3 = (a1 + 88);
  sub_10027E114(&v3);
  v3 = (a1 + 64);
  sub_10044F294(&v3);
  sub_10002B644(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_10079A8F8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a1[1];
  v5 = a1[7];
  if (v5)
  {
    (*(*v5 + 48))(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      if (a1[2])
      {
        if (v3)
        {
          v41 = v3;
          v42 = v7;
          v9 = *(v4 + 240);
          if (v9 != *(v4 + 248))
          {
            do
            {
              v10 = a1[8];
              v11 = a1[9];
              sub_10044EF84(v52, v9);
              if (v10 == v11)
              {
LABEL_49:
                sub_10044F1E0(v52);
                v9 = (v9 + 232);
                v27 = *(v4 + 248);
              }

              else
              {
                if ((v55 & 0x80u) == 0)
                {
                  v12 = v55;
                }

                else
                {
                  v12 = v54[1];
                }

                if ((v55 & 0x80u) == 0)
                {
                  v13 = v54;
                }

                else
                {
                  v13 = v54[0];
                }

                if ((v57 & 0x80u) == 0)
                {
                  v14 = v57;
                }

                else
                {
                  v14 = v56[1];
                }

                if ((v57 & 0x80u) == 0)
                {
                  v15 = v56;
                }

                else
                {
                  v15 = v56[0];
                }

                if ((v53 & 0x80u) == 0)
                {
                  v16 = v53;
                }

                else
                {
                  v16 = v52[1];
                }

                v17 = v52;
                if ((v53 & 0x80u) != 0)
                {
                  v17 = v52[0];
                }

                __s1 = v17;
                while (1)
                {
                  v18 = *(v10 + 47);
                  v19 = v18;
                  if ((v18 & 0x80u) != 0)
                  {
                    v18 = *(v10 + 32);
                  }

                  if (v12 == v18)
                  {
                    v20 = v19 >= 0 ? (v10 + 24) : *(v10 + 24);
                    if (!memcmp(v13, v20, v12))
                    {
                      v21 = *(v10 + 71);
                      v22 = v21;
                      if ((v21 & 0x80u) != 0)
                      {
                        v21 = *(v10 + 56);
                      }

                      if (v14 == v21)
                      {
                        v23 = v22 >= 0 ? (v10 + 48) : *(v10 + 48);
                        if (!memcmp(v15, v23, v14))
                        {
                          v24 = *(v10 + 23);
                          v25 = v24;
                          if ((v24 & 0x80u) != 0)
                          {
                            v24 = *(v10 + 8);
                          }

                          if (v16 == v24)
                          {
                            v26 = v25 >= 0 ? v10 : *v10;
                            if (!memcmp(__s1, v26, v16))
                            {
                              break;
                            }
                          }
                        }
                      }
                    }
                  }

                  v10 += 232;
                  if (v10 == v11)
                  {
                    goto LABEL_49;
                  }
                }

                sub_10044F1E0(v52);
                v28 = *(v4 + 248);
                if ((v9 + 232) == v28)
                {
                  v27 = v9;
                }

                else
                {
                  v29 = v9;
                  do
                  {
                    v27 = (v29 + 232);
                    sub_100796250(v29, (v29 + 232));
                    v30 = v29 + 464;
                    v29 += 232;
                  }

                  while (v30 != v28);
                  v28 = *(v4 + 248);
                }

                while (v28 != v27)
                {
                  v28 -= 232;
                  sub_10044F1E0(v28);
                }

                *(v4 + 248) = v27;
              }
            }

            while (v9 != v27);
          }

          v31 = *(v4 + 264);
          while (v31 != *(v4 + 272))
          {
            v33 = a1[11];
            v32 = a1[12];
            if (*(v31 + 23) < 0)
            {
              sub_100005F2C(__dst, *v31, *(v31 + 8));
            }

            else
            {
              v34 = *v31;
              v47 = *(v31 + 16);
              *__dst = v34;
            }

            if (*(v31 + 47) < 0)
            {
              sub_100005F2C(&v48, *(v31 + 24), *(v31 + 32));
            }

            else
            {
              v35 = *(v31 + 24);
              v49 = *(v31 + 40);
              v48 = v35;
            }

            if (*(v31 + 71) < 0)
            {
              sub_100005F2C(&__p, *(v31 + 48), *(v31 + 56));
            }

            else
            {
              v36 = *(v31 + 48);
              v51 = *(v31 + 64);
              __p = v36;
            }

            if (v33 == v32)
            {
              v38 = 0;
            }

            else
            {
              do
              {
                v37 = rest::DeleteCloudCellularPlanBlacklistRecord::operator==();
                v38 = v37;
                v33 += 72;
                if (v33 == v32)
                {
                  v39 = 1;
                }

                else
                {
                  v39 = v37;
                }
              }

              while (v39 != 1);
            }

            if (SHIBYTE(v51) < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v49) < 0)
            {
              operator delete(v48);
            }

            if (SHIBYTE(v47) < 0)
            {
              operator delete(__dst[0]);
              if (!v38)
              {
LABEL_85:
                v31 += 72;
                continue;
              }
            }

            else if (!v38)
            {
              goto LABEL_85;
            }

            sub_10079AF08(v44, (v31 + 72), *(v4 + 272), v31);
            sub_10027E168(v4 + 264, v40);
          }

          sub_10028AABC((v4 + 288));
          *(v4 + 288) = 0;
          *(v4 + 296) = 0;
          *(v4 + 304) = 0;
          memset(v44, 0, sizeof(v44));
          sub_100798324((v4 + 312));
          *(v4 + 312) = 0;
          *(v4 + 320) = 0;
          *(v4 + 328) = 0;
          memset(v45, 0, sizeof(v45));
          v58[0] = v45;
          sub_10027E114(v58);
          v58[0] = v44;
          sub_10027B2AC(v58);
          v8 = v42;
          (*(**(v4 + 104) + 104))(*(v4 + 104), v4 + 240);
          LOWORD(v3) = v41;
          (*(**(v4 + 104) + 120))(*(v4 + 104), v4 + 264);
        }

        if ((v3 & 0x100) != 0)
        {
          *(v4 + 500) = 0;
        }
      }

      sub_100004A34(v8);
    }
  }
}

uint64_t sub_10079ADB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10079AE04(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10009CF40(a1 + 24, a2 + 24);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_10044EDCC((a1 + 56), *(a2 + 56), *(a2 + 64), 0x34F72C234F72C235 * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_1002831D0((a1 + 80), *(a2 + 80), *(a2 + 88), 0x8E38E38E38E38E39 * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  return a1;
}

void sub_10079AECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10044F294(va);
  sub_10002B644(v3 + 24);
  v5 = *(v3 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

__int128 *sub_10079AF08(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      if (*(a4 + 47) < 0)
      {
        operator delete(*(a4 + 24));
      }

      v8 = *(v5 + 24);
      *(a4 + 40) = *(v5 + 5);
      *(a4 + 24) = v8;
      *(v5 + 47) = 0;
      *(v5 + 24) = 0;
      if (*(a4 + 71) < 0)
      {
        operator delete(*(a4 + 48));
      }

      v9 = v5[3];
      *(a4 + 64) = *(v5 + 8);
      *(a4 + 48) = v9;
      *(v5 + 71) = 0;
      *(v5 + 48) = 0;
      v5 = (v5 + 72);
      a4 += 72;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_10079AFD4(uint64_t a1)
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

void *sub_10079B054(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_100005C2C(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_10079B108();
  }

  return v5;
}

void *sub_10079B1AC(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_100005C2C(a1, &v6, a2);
  if (!result)
  {
    sub_10079B250();
  }

  return result;
}

void sub_10079B2EC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10079B308(uint64_t a1)
{
  *a1 = off_101E7D338;
  v2 = (a1 + 64);
  v5 = (a1 + 88);
  sub_10027E114(&v5);
  v5 = v2;
  sub_10027B2AC(&v5);
  sub_100297224(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_10079B384(uint64_t a1)
{
  *a1 = off_101E7D338;
  v2 = (a1 + 64);
  v4 = (a1 + 88);
  sub_10027E114(&v4);
  v4 = v2;
  sub_10027B2AC(&v4);
  sub_100297224(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

uint64_t sub_10079B490(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7D338;
  result = sub_10079B7CC(a2 + 8, a1 + 8);
  *(a2 + 116) = 0;
  return result;
}

void sub_10079B4E0(uint64_t a1)
{
  v2 = (a1 + 64);
  v4 = (a1 + 88);
  sub_10027E114(&v4);
  v4 = v2;
  sub_10027B2AC(&v4);
  sub_100297224(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10079B53C(uint64_t a1)
{
  v2 = (a1 + 64);
  v4 = (a1 + 88);
  sub_10027E114(&v4);
  v4 = v2;
  sub_10027B2AC(&v4);
  sub_100297224(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(a1);
}

uint64_t sub_10079B5A0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = *(a1 + 8);
  v6 = v5[5];
  v7 = *a2 >> 8;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0x8E38E38E38E38E39 * ((*(a1 + 96) - *(a1 + 88)) >> 3);
    v9 = (*(a1 + 72) - *(a1 + 64)) >> 3;
    v15 = 134219010;
    v16 = v8;
    v10 = "";
    v17 = 2048;
    v18 = 0x8F5C28F5C28F5C29 * v9;
    if ((v7 & 1) == 0)
    {
      v10 = "out";
    }

    v19 = 1024;
    v20 = v3 & 1;
    v21 = 2080;
    v22 = v10;
    v23 = 1024;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Remove %ld self in blacklist table, and save %ld blacklist plans, result: %d, with%s CK modification, with error code: %d", &v15, 0x2Cu);
  }

  if (*(a1 + 96) == *(a1 + 88))
  {
    v11 = 2 * (*(a1 + 72) != *(a1 + 64));
  }

  else
  {
    v11 = (2 * (*(a1 + 72) != *(a1 + 64))) | 8;
  }

  if (v7)
  {
    v12 = v5[5];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 112);
      v15 = 67109120;
      LODWORD(v16) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I fBlacklistUploadReasons:0x%x", &v15, 8u);
    }

    sub_100795F34(v5, *(a1 + 112), v11, v3 & 1, 1, v4);
  }

  return sub_100456F04(a1 + 32, v3);
}

uint64_t sub_10079B780(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10079B7CC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100456684(a1 + 24, a2 + 24);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_1005C9648((a1 + 56), *(a2 + 56), *(a2 + 64), 0x8F5C28F5C28F5C29 * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_1002831D0((a1 + 80), *(a2 + 80), *(a2 + 88), 0x8E38E38E38E38E39 * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_10079B89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10027B2AC(va);
  sub_100297224(v3 + 24);
  v5 = *(v3 + 16);
  if (v5)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10079B8D8(uint64_t a1, uint64_t a2)
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

void *sub_10079B958(void *a1)
{
  *a1 = off_101E7D3B8;
  sub_10079AFD4((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10079B9A8(void *a1)
{
  *a1 = off_101E7D3B8;
  sub_10079AFD4((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_10079BA98(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10079BAB8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E7D3B8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_10079BD5C((a2 + 3), a1 + 24);
}

void sub_10079BB1C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079BB3C(char *a1)
{
  sub_10079BDF4((a1 + 8));

  operator delete(a1);
}

void sub_10079BB78(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v3 = *a2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v7 = v3;
  v8 = v2;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_10079BD5C(v9, a1 + 24);
  v9[7] = 0;
  operator new();
}

void sub_10079BCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, ...)
{
  va_start(va, a12);
  sub_10079C4D0(v12 - 72);
  sub_10079BE40(va);
  a12 = &a9;
  sub_100111BA8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_10079BD10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10079BD5C(uint64_t a1, uint64_t a2)
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

void sub_10079BDF4(uint64_t a1)
{
  sub_10079AFD4(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void **sub_10079BE40(void **a1)
{
  sub_10079AFD4((a1 + 3));
  v3 = a1;
  sub_100111BA8(&v3);
  return a1;
}

uint64_t sub_10079BE80(uint64_t a1)
{
  *a1 = off_101E7D438;
  sub_10079AFD4(a1 + 32);
  v3 = (a1 + 8);
  sub_100111BA8(&v3);
  return a1;
}

void sub_10079BEDC(uint64_t a1)
{
  *a1 = off_101E7D438;
  sub_10079AFD4(a1 + 32);
  v2 = (a1 + 8);
  sub_100111BA8(&v2);
  operator delete();
}

void sub_10079BFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100111BA8(va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_10079C020(uint64_t a1, void *a2)
{
  *a2 = off_101E7D438;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  sub_10079C2D8(a2 + 1, *(a1 + 8), *(a1 + 16), 0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  return sub_10079BD5C((a2 + 4), a1 + 32);
}

void sub_10079C0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100111BA8(va);
  _Unwind_Resume(a1);
}

void sub_10079C0C8(uint64_t a1)
{
  v1 = (a1 + 8);
  sub_10079AFD4(a1 + 32);
  v2 = v1;
  sub_100111BA8(&v2);
}

void sub_10079C104(void **a1)
{
  v2 = a1 + 1;
  sub_10079AFD4((a1 + 4));
  v3 = v2;
  sub_100111BA8(&v3);
  operator delete(a1);
}

void sub_10079C14C(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v3 = v5;
  v6 = *(a2 + 8);
  v4 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10079C2D8(v8, *(a1 + 8), *(a1 + 16), 0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  memset(v7, 0, sizeof(v7));
  sub_1005C9648(v7, v3, v4, 0x8F5C28F5C28F5C29 * ((v4 - v3) >> 3));
  sub_100795EA8(a1 + 32, v8, v7, 0);
  v9 = v7;
  sub_10027B2AC(&v9);
  v9 = v8;
  sub_100111BA8(&v9);
  v8[0] = &v5;
  sub_10027B2AC(v8);
}

void sub_10079C244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 40) = v17;
  sub_10027B2AC((v18 - 40));
  *(v18 - 40) = &a17;
  sub_100111BA8((v18 - 40));
  *(v18 - 40) = &a11;
  sub_10027B2AC((v18 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_10079C28C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10079C2D8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10079C360(result, a4);
  }

  return result;
}

void sub_10079C340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100111BA8(&a9);
  _Unwind_Resume(a1);
}

void sub_10079C360(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xA0A0A0A0A0A0A1)
  {
    sub_10079C3B0(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_10079C3B0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xA0A0A0A0A0A0A1)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10079C40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = sub_10031A3B0((a4 + v7), a2 + v7);
      sub_10027F834(v8 + 248, (a2 + v7 + 248));
      *(a4 + v7 + 400) = *(a2 + v7 + 400);
      v7 += 408;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_10079C494(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 408;
    v5 = -v2;
    do
    {
      v4 = sub_100111C2C(v4) - 408;
      v5 += 408;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10079C4D0(uint64_t a1)
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

uint64_t sub_10079C550(uint64_t a1)
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

__n128 sub_10079C64C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7D4D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void sub_10079C684(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = rest::asString();
    v7 = 1024;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I subscribeRecordChange. type: [%s] result: [%d]", &v5, 0x12u);
  }

  *(v3 + 494) = v2;
}

uint64_t sub_10079C748(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10079C794(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_100005C2C(a1, &v6, a2);
  if (!result)
  {
    sub_10079C838();
  }

  return result;
}

void sub_10079C8D4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_10079C9DC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10079D310(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10079CC90(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  return a1;
}

void sub_10079CCE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  operator delete();
}

uint64_t sub_10079CD58(uint64_t a1, void *a2, const void *a3, const void *a4, CFTypeRef **a5, int a6)
{
  *a1 = &off_101E7D630;
  *(a1 + 8) = *a2;
  v10 = a2[1];
  *(a1 + 16) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = a3;
  sub_10079D2D0((a1 + 24), &v28);
  v28 = a4;
  sub_10079D2D0((a1 + 32), &v28);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v11 = (a1 + 40);
  *(a1 + 56) = 0;
  *(a1 + 64) = a6;
  v12 = *a5;
  v13 = a5[1];
  if (*a5 != v13)
  {
    do
    {
      v14 = *v12;
      CFRetain(*v12);
      v16 = *(a1 + 48);
      v15 = *(a1 + 56);
      if (v16 >= v15)
      {
        v18 = (v16 - *v11) >> 3;
        if ((v18 + 1) >> 61)
        {
          sub_1000CE3D4();
        }

        v19 = v15 - *v11;
        v20 = v19 >> 2;
        if (v19 >> 2 <= (v18 + 1))
        {
          v20 = v18 + 1;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          sub_10005B2E0(a1 + 40, v21);
        }

        v22 = (8 * v18);
        *v22 = v14;
        v17 = 8 * v18 + 8;
        v23 = *(a1 + 40);
        v24 = *(a1 + 48) - v23;
        v25 = v22 - v24;
        memcpy(v22 - v24, v23, v24);
        v26 = *(a1 + 40);
        *(a1 + 40) = v25;
        *(a1 + 48) = v17;
        *(a1 + 56) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v16 = v14;
        v17 = (v16 + 1);
      }

      *(a1 + 48) = v17;
      ++v12;
    }

    while (v12 != v13);
  }

  return a1;
}

void sub_10079CEE4(_Unwind_Exception *a1)
{
  sub_100005978((v1 + 24));
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10079CF30(uint64_t a1, const void *a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v5 = ServiceMap;
  v6 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v7 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
  v16 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v16);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  v14 = sub_10071C318(v12, *(a1 + 24), a2, (a1 + 40), *(a1 + 64), 0, 0);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return v14 == 0;
}

void sub_10079D044(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079D060(uint64_t a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v5 = ServiceMap;
  v6 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v7 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
  v14 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v14);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  sub_10071C330(a2, v12, *(a1 + 24), (a1 + 40), *(a1 + 64));
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10079D160(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10079D17C(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v3 = ServiceMap;
  v4 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v5 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
  v12 = sub_10071C340(v10, *(a1 + 24), (a1 + 40), *(a1 + 64));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  return v12 == 0;
}

void sub_10079D278(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079D298(uint64_t a1)
{
  sub_10079D310(a1);

  operator delete();
}

const void **sub_10079D2D0(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t sub_10079D310(uint64_t a1)
{
  *a1 = &off_101E7D630;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 != v3)
  {
    do
    {
      CFRelease(*v2++);
    }

    while (v2 != v3);
    v2 = *(a1 + 40);
  }

  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  sub_100005978((a1 + 32));
  sub_100005978((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

BOOL sub_10079D3AC(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  v16 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v16);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  v14 = (*(*v12 + 48))(v12, a1 + 72, *(a1 + 24), a2, *(a1 + 32), a1 + 40, *(a1 + 64), 0);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return v14 == 0;
}

void sub_10079D4E0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079D4FC(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  v12 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v12);
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
  (*(*v10 + 64))(v10, a1 + 72, *(a1 + 24), *(a1 + 32), a1 + 40, *(a1 + 64));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_10079D620(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10079D63C(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  v12 = (*(*v10 + 72))(v10, a1 + 72, *(a1 + 24), *(a1 + 32), a1 + 40, *(a1 + 64));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  return v12 == 0;
}

void sub_10079D75C(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10079D778(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return sub_10079D310(a1);
}

void sub_10079D7BC(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_10079D310(a1);

  operator delete();
}

uint64_t sub_10079D818(unsigned int a1)
{
  v1 = sub_10001C650(8);
  v2 = *v1;
  v3 = *(v1 + 1);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    isMetricNecessary = 0;
    if (!v3)
    {
      return isMetricNecessary;
    }

    goto LABEL_5;
  }

  isMetricNecessary = wis::WISServerConnection::isMetricNecessary(v2);
  if (v3)
  {
LABEL_5:
    sub_100004A34(v3);
  }

  return isMetricNecessary;
}

void sub_10079D888(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079D8A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10001C650(8);
  v3 = *v2;
  v4 = *(v2 + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    wis::WISServerConnection::RegisterQueriableMetricCallbackForIdentifier();
  }

  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_10079D95C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079D984(int a1, int a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7, int a8, int a9)
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1174405120;
  v15[2] = sub_10079DD98;
  v15[3] = &unk_101E7D6D0;
  v26 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v16, *a3, *(a3 + 1));
  }

  else
  {
    v16 = *a3;
    v17 = *(a3 + 2);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(&v18, *a4, *(a4 + 1));
  }

  else
  {
    v18 = *a4;
    v19 = *(a4 + 2);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(&v20, *a5, *(a5 + 1));
  }

  else
  {
    v20 = *a5;
    v21 = *(a5 + 2);
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(&v22, *a6, *(a6 + 1));
  }

  else
  {
    v22 = *a6;
    v23 = *(a6 + 2);
  }

  if (*(a7 + 23) < 0)
  {
    sub_100005F2C(&__p, *a7, *(a7 + 1));
  }

  else
  {
    __p = *a7;
    v25 = *(a7 + 2);
  }

  v27 = a8;
  v28 = a9;
  v29 = a1;
  sub_10079DBD8(0x80013, v15);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }
}

void sub_10079DB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10079DBD8(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_10079DD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10079DD98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 76);
  *(a2 + 24) = *(a1 + 152);
  *(a2 + 76) = v4 | 3;
  v5 = *(a2 + 8);
  if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v5, (a1 + 32));
  *(a2 + 76) |= 4u;
  v6 = *(a2 + 16);
  if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v6, (a1 + 56));
  *(a2 + 76) |= 0x20u;
  v7 = *(a2 + 40);
  if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v7, (a1 + 80));
  *(a2 + 76) |= 0x40u;
  v8 = *(a2 + 48);
  if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v8, (a1 + 104));
  *(a2 + 76) |= 0x80u;
  v9 = *(a2 + 56);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, (a1 + 128));
  v10 = *(a1 + 156);
  v11 = *(a2 + 76);
  *(a2 + 76) = v11 | 0x10;
  *(a2 + 28) = v10;
  v12 = v11 | 0x110;
  v13 = *(a1 + 160);
  *(a2 + 76) = v12;
  *(a2 + 64) = v13;
  result = subscriber::simSlotAsInstance();
  *(a2 + 76) |= 0x200u;
  *(a2 + 68) = result;
  return result;
}

_BYTE *sub_10079DF38(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 55) < 0)
  {
    result = sub_100005F2C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 6) = *(a2 + 48);
    *(result + 2) = v4;
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_100005F2C(v3 + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(v3 + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    result = sub_100005F2C(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(v3 + 12) = *(a2 + 96);
    *(v3 + 5) = v6;
  }

  if (*(a2 + 127) < 0)
  {
    result = sub_100005F2C(v3 + 104, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(v3 + 15) = *(a2 + 120);
    *(v3 + 104) = v7;
  }

  if (*(a2 + 151) < 0)
  {
    return sub_100005F2C(v3 + 128, *(a2 + 128), *(a2 + 136));
  }

  v8 = *(a2 + 128);
  *(v3 + 18) = *(a2 + 144);
  *(v3 + 8) = v8;
  return result;
}

void sub_10079E024(_Unwind_Exception *exception_object)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

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

  _Unwind_Resume(exception_object);
}

void sub_10079E088(uint64_t a1)
{
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

void sub_10079E110(int a1, __int128 *a2, __int128 *a3, int a4, __int128 *a5, int a6)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_10079E468;
  v10[3] = &unk_101E7D700;
  v17 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v11, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    v12 = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v13, *a3, *(a3 + 1));
  }

  else
  {
    v13 = *a3;
    v14 = *(a3 + 2);
  }

  v18 = a4;
  v19 = a6;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(&__p, *a5, *(a5 + 1));
  }

  else
  {
    __p = *a5;
    v16 = *(a5 + 2);
  }

  sub_10079E2A8(0x80009, v10);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }
}

void sub_10079E25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10079E2A8(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_10079E3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_10079E468(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  *(a2 + 16) = *(a1 + 104);
  *(a2 + 56) = v4 | 3;
  v5 = *(a2 + 8);
  if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v5, (a1 + 32));
  *(a2 + 56) |= 4u;
  v6 = *(a2 + 24);
  if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v6, (a1 + 56));
  v7 = *(a1 + 108);
  v8 = *(a2 + 56);
  *(a2 + 56) = v8 | 8;
  *(a2 + 20) = v7;
  *(a2 + 48) = *(a1 + 112);
  *(a2 + 56) = v8 | 0x68;
  v9 = *(a2 + 40);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v9, (a1 + 80));
}

_BYTE *sub_10079E584(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 55) < 0)
  {
    result = sub_100005F2C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 6) = *(a2 + 48);
    *(result + 2) = v4;
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_100005F2C(v3 + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(v3 + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    return sub_100005F2C(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  v6 = *(a2 + 80);
  *(v3 + 12) = *(a2 + 96);
  *(v3 + 5) = v6;
  return result;
}

void sub_10079E620(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_10079E654(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

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

void sub_10079E6BC(int a1, int a2, char a3, int a4, std::string *this, uint64_t a6, uint64_t a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, uint64_t a19)
{
  if (std::string::find(this, 58, 0) == -1)
  {
    v27 = std::string::find(this, 46, 0);
    if (v27 != -1)
    {
      v28 = std::string::find(this, 46, v27 + 1);
      if (v28 != -1)
      {
        v29 = std::string::basic_string(&v62, this, 0, v28 + 1, &v63);
        v30 = std::string::append(v29, "0.0", 3uLL);
        v31 = v30->__r_.__value_.__r.__words[0];
        v64[0] = v30->__r_.__value_.__l.__size_;
        *(v64 + 7) = *(&v30->__r_.__value_.__r.__words[1] + 7);
        v32 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(this->__r_.__value_.__l.__data_);
        }

        v33 = v64[0];
        this->__r_.__value_.__r.__words[0] = v31;
        this->__r_.__value_.__l.__size_ = v33;
        *(&this->__r_.__value_.__r.__words[1] + 7) = *(v64 + 7);
        *(&this->__r_.__value_.__s + 23) = v32;
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  else if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 1174405120;
  v34[2] = sub_10079ED50;
  v34[3] = &unk_101E7D730;
  v61 = a3;
  v52 = a2;
  v53 = a4;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(v35, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    *v35 = *&this->__r_.__value_.__l.__data_;
    v36 = this->__r_.__value_.__r.__words[2];
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(v37, *a6, *(a6 + 8));
  }

  else
  {
    *v37 = *a6;
    v38 = *(a6 + 16);
  }

  if (*(a7 + 23) < 0)
  {
    sub_100005F2C(v39, *a7, *(a7 + 8));
  }

  else
  {
    *v39 = *a7;
    v40 = *(a7 + 16);
  }

  v54 = a8;
  if (*(a9 + 23) < 0)
  {
    sub_100005F2C(v41, *a9, *(a9 + 8));
  }

  else
  {
    *v41 = *a9;
    v42 = *(a9 + 16);
  }

  v55 = a10;
  v56 = a11;
  v43 = a12;
  v57 = a1;
  if (*(a13 + 23) < 0)
  {
    sub_100005F2C(v44, *a13, *(a13 + 8));
  }

  else
  {
    *v44 = *a13;
    v45 = *(a13 + 16);
  }

  if (*(a14 + 23) < 0)
  {
    sub_100005F2C(v46, *a14, *(a14 + 8));
  }

  else
  {
    *v46 = *a14;
    v47 = *(a14 + 16);
  }

  if (*(a15 + 23) < 0)
  {
    sub_100005F2C(v48, *a15, *(a15 + 8));
  }

  else
  {
    *v48 = *a15;
    v49 = *(a15 + 16);
  }

  v58 = a16;
  v59 = a17;
  v60 = a18;
  if (*(a19 + 23) < 0)
  {
    sub_100005F2C(__p, *a19, *(a19 + 8));
  }

  else
  {
    *__p = *a19;
    v51 = *(a19 + 16);
  }

  sub_10079EB90(0x8000A, v34);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48[0]);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }
}

void sub_10079EAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (*(v61 - 121) < 0)
  {
    operator delete(*(v61 - 144));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10079EB90(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_10079ECD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_10079ED50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 132);
  *(a2 + 24) = *(a1 + 232);
  v5 = *(a1 + 268);
  *(a2 + 132) = v4 | 0x11;
  *(a2 + 28) = v5;
  *(a2 + 48) = *(a1 + 236);
  *(a2 + 132) = v4 | 0x33;
  v6 = *(a2 + 8);
  if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v6, (a1 + 32));
  *(a2 + 132) |= 4u;
  v7 = *(a2 + 16);
  if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v7, (a1 + 56));
  *(a2 + 132) |= 8u;
  v8 = *(a2 + 32);
  if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v8, (a1 + 80));
  v9 = *(a2 + 132);
  *(a2 + 92) = *(a1 + 240);
  *(a2 + 132) = v9 | 0xA000;
  v10 = *(a2 + 96);
  if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v10, (a1 + 104));
  v11 = *(a1 + 244);
  v12 = *(a2 + 132);
  *(a2 + 132) = v12 | 0x80;
  *(a2 + 52) = v11;
  *(a2 + 104) = *(a1 + 248);
  v13 = *(a1 + 128);
  *(a2 + 132) = v12 | 0x4180;
  *(a2 + 56) = v13;
  v14 = subscriber::simSlotAsInstance();
  v15 = *(a2 + 132);
  *(a2 + 132) = v15 | 0x40000;
  *(a2 + 116) = v14;
  v16 = *(a1 + 159);
  if (v16 < 0)
  {
    v16 = *(a1 + 144);
  }

  if (v16)
  {
    *(a2 + 132) = v15 | 0x40200;
    v17 = *(a2 + 64);
    if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v17, (a1 + 136));
  }

  v18 = *(a1 + 183);
  if (v18 < 0)
  {
    v18 = *(a1 + 168);
  }

  if (v18)
  {
    *(a2 + 132) |= 0x400u;
    v19 = *(a2 + 72);
    if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v19, (a1 + 160));
  }

  v20 = *(a1 + 207);
  if (v20 < 0)
  {
    v20 = *(a1 + 192);
  }

  v21 = *(a2 + 132);
  if (v20)
  {
    *(a2 + 132) = v21 | 0x800;
    v22 = *(a2 + 80);
    if (v22 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v22, (a1 + 184));
    v21 = *(a2 + 132);
  }

  v23 = *(a1 + 256);
  *(a2 + 132) = v21 | 0x1000;
  *(a2 + 88) = v23;
  v24 = *(a1 + 260);
  *(a2 + 132) = v21 | 0x11000;
  *(a2 + 108) = v24;
  *(a2 + 112) = *(a1 + 264);
  *(a2 + 132) = v21 | 0xB1000;
  v25 = *(a2 + 120);
  if (v25 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v25, (a1 + 208));
}

_BYTE *sub_10079F044(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 55) < 0)
  {
    result = sub_100005F2C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 6) = *(a2 + 48);
    *(result + 2) = v4;
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_100005F2C(v3 + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(v3 + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    result = sub_100005F2C(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(v3 + 12) = *(a2 + 96);
    *(v3 + 5) = v6;
  }

  if (*(a2 + 127) < 0)
  {
    result = sub_100005F2C(v3 + 104, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(v3 + 15) = *(a2 + 120);
    *(v3 + 104) = v7;
  }

  if (*(a2 + 159) < 0)
  {
    result = sub_100005F2C(v3 + 136, *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v8 = *(a2 + 136);
    *(v3 + 19) = *(a2 + 152);
    *(v3 + 136) = v8;
  }

  if (*(a2 + 183) < 0)
  {
    result = sub_100005F2C(v3 + 160, *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v9 = *(a2 + 160);
    *(v3 + 22) = *(a2 + 176);
    *(v3 + 10) = v9;
  }

  if (*(a2 + 207) < 0)
  {
    result = sub_100005F2C(v3 + 184, *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v10 = *(a2 + 184);
    *(v3 + 25) = *(a2 + 200);
    *(v3 + 184) = v10;
  }

  if (*(a2 + 231) < 0)
  {
    return sub_100005F2C(v3 + 208, *(a2 + 208), *(a2 + 216));
  }

  v11 = *(a2 + 208);
  *(v3 + 28) = *(a2 + 224);
  *(v3 + 13) = v11;
  return result;
}

void sub_10079F1A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

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

  _Unwind_Resume(exception_object);
}

void sub_10079F254(uint64_t a1)
{
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

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

void sub_10079F514(uint64_t *a1, unsigned int a2)
{
  v4 = sub_10001C650(8);
  v6 = *v4;
  v5 = *(v4 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v9 = v8;
    if (v8)
    {
      v10 = *a1;
      *a1 = 0;
      if (v10)
      {
        if (*(v10 + 68))
        {
          WISTimestamp = *(v10 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v8);
          *(v10 + 68) |= 1u;
          *(v10 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v9, WISTimestamp, *v9, v10);
        (*(*v10 + 8))(v10);
      }

      wis::WISServerConnection::SubmitMetric(v6, v9);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_10079F620(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10079F7C0(uint64_t *a1, unsigned int a2)
{
  v4 = sub_10001C650(8);
  v6 = *v4;
  v5 = *(v4 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v9 = v8;
    if (v8)
    {
      v10 = *a1;
      *a1 = 0;
      if (v10)
      {
        if (*(v10 + 40))
        {
          WISTimestamp = *(v10 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v8);
          *(v10 + 40) |= 1u;
          *(v10 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v9, WISTimestamp, *v9, v10);
        (*(*v10 + 8))(v10);
      }

      wis::WISServerConnection::SubmitMetric(v6, v9);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_10079F8CC(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10079FA1C(uint64_t *a1, unsigned int a2)
{
  v4 = sub_10001C650(8);
  v6 = *v4;
  v5 = *(v4 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v9 = v8;
    if (v8)
    {
      v10 = *a1;
      *a1 = 0;
      if (v10)
      {
        if (*(v10 + 36))
        {
          WISTimestamp = *(v10 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v8);
          *(v10 + 36) |= 1u;
          *(v10 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v9, WISTimestamp, *v9, v10);
        (*(*v10 + 8))(v10);
      }

      wis::WISServerConnection::SubmitMetric(v6, v9);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_10079FB28(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10079FC64(uint64_t *a1, unsigned int a2)
{
  v4 = sub_10001C650(8);
  v6 = *v4;
  v5 = *(v4 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v9 = v8;
    if (v8)
    {
      v10 = *a1;
      *a1 = 0;
      if (v10)
      {
        if (*(v10 + 28))
        {
          WISTimestamp = *(v10 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v8);
          *(v10 + 28) |= 1u;
          *(v10 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v9, WISTimestamp, *v9, v10);
        (*(*v10 + 8))(v10);
      }

      wis::WISServerConnection::SubmitMetric(v6, v9);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_10079FD70(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10079FDB8(int a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = sub_10079FFEC;
  v2[3] = &unk_101E7D760;
  v3 = a1;
  return sub_10079FE2C(0x8001D, v2);
}

BOOL sub_10079FE2C(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_10079FF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10079FFEC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  *(a2 + 24) |= 1u;
  *(a2 + 16) = v2;
  return result;
}

BOOL sub_1007A0004()
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 0x40000000;
  v1[2] = sub_10007FBA0;
  v1[3] = &unk_101E7DA00;
  v2 = 0;
  return sub_10007F968(0x80072, v1);
}

BOOL sub_1007A0078()
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 0x40000000;
  v1[2] = sub_10007FBA0;
  v1[3] = &unk_101E7DA00;
  v2 = 2;
  return sub_10007F968(0x80072, v1);
}

BOOL sub_1007A00F0(char a1, char a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1007A0330;
  v5[3] = &unk_101E7D780;
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v6 = a4;
  return sub_1007A0170(0x800D1, v5);
}

BOOL sub_1007A0170(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_1007A02B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A0330(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 28);
  *(a2 + 18) = *(result + 36);
  *(a2 + 16) = *(result + 37);
  v3 = *(result + 38);
  *(a2 + 28) = v2 | 0xE;
  *(a2 + 17) = v3;
  v4 = *(result + 32);
  *(a2 + 28) = v2 | 0x1E;
  *(a2 + 20) = v4;
  return result;
}

BOOL sub_1007A0368(int a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = sub_1007A059C;
  v2[3] = &unk_101E7D7A0;
  v3 = a1;
  return sub_1007A03DC(0x8010D, v2);
}

BOOL sub_1007A03DC(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_1007A051C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A059C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  *(a2 + 24) |= 2u;
  *(a2 + 16) = v2;
  return result;
}

BOOL sub_1007A05B4(char a1, int a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1007A07EC;
  v3[3] = &unk_101E7D7C0;
  v5 = a1;
  v4 = a2;
  return sub_1007A062C(0x800FE, v3);
}

BOOL sub_1007A062C(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_1007A076C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A07EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 36);
  v3 = *(a2 + 28);
  *(a2 + 28) = v3 | 2;
  *(a2 + 16) = v2;
  v4 = *(result + 32);
  *(a2 + 28) = v3 | 6;
  *(a2 + 20) = v4;
  return result;
}

void sub_1007A0814(__int128 *a1, int a2, int a3, char a4, char a5)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1174405120;
  v5[2] = sub_1007A0AAC;
  v5[3] = &unk_101E7D7E0;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(&__p, *a1, *(a1 + 1));
  }

  else
  {
    __p = *a1;
    v7 = *(a1 + 2);
  }

  sub_1007A08EC(0x80107, v5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void sub_1007A08D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1007A08EC(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_1007A0A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_1007A0AAC(uint64_t a1, uint64_t a2)
{
  *(a2 + 40) |= 2u;
  v4 = *(a1 + 60);
  *(a2 + 16) = *(a1 + 56);
  result = awd::metrics::CommCenterCellularPlanType_IsValid(v4, a2);
  if ((result & 1) == 0)
  {
    sub_10177E118();
  }

  v6 = *(a2 + 40);
  *(a2 + 32) = v4;
  *(a2 + 20) = *(a1 + 64);
  v7 = *(a1 + 65);
  *(a2 + 40) = v6 | 0x34;
  *(a2 + 21) = v7;
  if ((*(a1 + 55) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 40))
    {
      return result;
    }
  }

  else if (!*(a1 + 55))
  {
    return result;
  }

  *(a2 + 40) = v6 | 0x3C;
  v8 = *(a2 + 24);
  if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v8, (a1 + 32));
}

BOOL sub_1007A0B98(char a1, char a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1007A0C18;
  v5[3] = &unk_101E7D810;
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v6 = a4;
  return sub_1007A0170(0x800D2, v5);
}

uint64_t sub_1007A0C18(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 28);
  *(a2 + 18) = *(result + 36);
  *(a2 + 16) = *(result + 37);
  v3 = *(result + 38);
  *(a2 + 28) = v2 | 0xE;
  *(a2 + 17) = v3;
  v4 = *(result + 32);
  *(a2 + 28) = v2 | 0x1E;
  *(a2 + 20) = v4;
  return result;
}

uint64_t sub_1007A0C50(uint64_t a1, char a2, char a3, int a4)
{
  result = sub_10079D818(0x800D6u);
  if (result)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = sub_1007A0EB8;
    v8[3] = &unk_101E7D830;
    v10 = a2;
    v11 = a3;
    v9 = a4;
    return sub_1007A0CF8(0x800D6, v8);
  }

  return result;
}

BOOL sub_1007A0CF8(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_1007A0E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A0EB8(uint64_t result, uint64_t a2)
{
  *(a2 + 28) |= 2u;
  v2 = *(a2 + 16);
  if (!v2)
  {
    operator new();
  }

  v3 = *(v2 + 48);
  *(v2 + 24) = *(result + 36);
  v4 = *(result + 37);
  *(v2 + 48) = v3 | 0xC;
  *(v2 + 25) = v4;
  v5 = *(result + 32);
  *(v2 + 48) = v3 | 0x1C;
  *(v2 + 28) = v5;
  return result;
}

uint64_t sub_1007A0F64(uint64_t a1, int a2, char a3, uint64_t a4, int a5, int a6, char a7)
{
  result = sub_10079D818(0x80133u);
  if (result)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 0x40000000;
    v15[2] = sub_1007A11F4;
    v15[3] = &unk_101E7D850;
    v19 = a3;
    v15[4] = a1;
    v15[5] = a4;
    v16 = a2;
    v17 = a5;
    v18 = a6;
    v20 = a7;
    return sub_1007A1034(0x80133, v15);
  }

  return result;
}

BOOL sub_1007A1034(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_1007A1174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A11F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  *(a2 + 52) |= 2u;
  v5 = *(a2 + 16);
  if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v5, v4);
  v6 = *(a1 + 48);
  if ((awd::metrics::CommCenterCellularPlanType_IsValid(v6, v7) & 1) == 0)
  {
    sub_10177E144();
  }

  v9 = *(a2 + 52);
  *(a2 + 24) = v6;
  *(a2 + 40) = *(a1 + 60);
  v10 = *(a1 + 40);
  *(a2 + 52) = v9 | 0x1C;
  *(a2 + 32) = v10;
  v11 = *(a1 + 52);
  if ((awd::metrics::CommCenterCellularPlanInstallType_IsValid(v11, v8) & 1) == 0)
  {
    sub_10177E170();
  }

  *(a2 + 52) |= 0x20u;
  *(a2 + 28) = v11;
  v13 = *(a1 + 56);
  result = awd::metrics::CommCenterCellularPlanMonitorModeType_IsValid(v13, v12);
  if ((result & 1) == 0)
  {
    sub_10177E19C();
  }

  v15 = *(a2 + 52);
  *(a2 + 44) = v13;
  v16 = *(a1 + 61);
  *(a2 + 52) = v15 | 0xC0;
  *(a2 + 41) = v16;
  return result;
}

uint64_t sub_1007A12F4(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, int a12, char a13, int a14, char a15)
{
  result = sub_10079D818(0x80126u);
  if (result)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 0x40000000;
    v24[2] = sub_1007A15B4;
    v24[3] = &unk_101E7D870;
    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = a5;
    v24[4] = a4;
    v24[5] = a6;
    v24[6] = a7;
    v24[7] = a8;
    v24[8] = a9;
    v24[9] = a11;
    v29 = a10;
    v30 = a12;
    v32 = a13;
    v31 = a14;
    v33 = a15;
    return sub_1007A13F4(0x80126, v24);
  }

  return result;
}

BOOL sub_1007A13F4(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_1007A1534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A15B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 100);
  *(a2 + 16) = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = v4 | 0xE;
  *(a2 + 100) = v4 | 0xE;
  *(a2 + 32) = v5;
  v7 = *(a1 + 32);
  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = *(v7 + 8);
  }

  if (v8)
  {
    *(a2 + 100) = v4 | 0x1E;
    v9 = *(a2 + 24);
    if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v9, v7);
    v6 = *(a2 + 100);
  }

  *(a2 + 36) = *(a1 + 92);
  v10 = *(a1 + 40);
  *(a2 + 100) = v6 | 0x60;
  v11 = *(a2 + 40);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v12 = *(a1 + 48);
  *(a2 + 100) |= 0x80u;
  v13 = *(a2 + 48);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v14 = *(a1 + 56);
  *(a2 + 100) |= 0x100u;
  v15 = *(a2 + 56);
  if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v15, v14);
  v16 = *(a1 + 64);
  *(a2 + 100) |= 0x200u;
  v17 = *(a2 + 64);
  if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  v18 = *(a2 + 100);
  *(a2 + 80) = *(a1 + 96);
  v19 = *(a1 + 72);
  *(a2 + 100) = v18 | 0xC00;
  v20 = *(a2 + 72);
  if (v20 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v20, v19);
  v21 = *(a2 + 100);
  v22 = *(a1 + 104);
  *(a2 + 84) = *(a1 + 100);
  v23 = *(a1 + 108);
  *(a2 + 100) = v21 | 0x3000;
  *(a2 + 92) = v23;
  result = awd::metrics::CommCenterCellularPlanInternetTransport_IsValid(v22, v24);
  if ((result & 1) == 0)
  {
    sub_10177E1C8();
  }

  v26 = *(a2 + 100);
  *(a2 + 88) = v22;
  v27 = *(a1 + 109);
  *(a2 + 100) = v26 | 0xC000;
  *(a2 + 93) = v27;
  return result;
}

void sub_1007A17E4(uint64_t a1, int a2, int a3, char a4, char a5, char a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, __int16 a12, int a13, int a14, __int128 *a15, int a16, char a17, char a18, int a19, __int128 *a20, __int128 *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int128 *a27, char a28, __int128 *a29, __int128 *a30, __int128 *a31, __int128 *a32)
{
  if (sub_10079D818(0x80127u))
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 1174405120;
    v40[2] = sub_1007A1D78;
    v40[3] = &unk_101E7D890;
    v40[4] = a1;
    v69 = a16;
    v70 = a2;
    v71 = a3;
    v77 = a4;
    v78 = a5;
    v79 = a7;
    v80 = a6;
    v81 = a8;
    v82 = a9;
    v72 = a14;
    v73 = a10;
    v74 = a11;
    sub_10006F264(&v41, a15);
    v83 = a12;
    v84 = a17;
    v85 = a18;
    v75 = a19;
    sub_10006F264(&v44, a20);
    sub_10006F264(&v47, a21);
    v50 = a23;
    v51 = a24;
    v52 = a22;
    v53 = a25;
    v76 = a26;
    sub_10006F264(&v54, a27);
    v86 = a28;
    sub_10006F264(&v57, a29);
    sub_10006F264(&v60, a30);
    sub_10006F264(&v63, a31);
    sub_10006F264(&__p, a32);
    sub_1007A1BB8(0x80127, v40);
    if (v68 == 1 && v67 < 0)
    {
      operator delete(__p);
    }

    if (v65 == 1 && v64 < 0)
    {
      operator delete(v63);
    }

    if (v62 == 1 && v61 < 0)
    {
      operator delete(v60);
    }

    if (v59 == 1 && v58 < 0)
    {
      operator delete(v57);
    }

    if (v56 == 1 && v55 < 0)
    {
      operator delete(v54);
    }

    if (v49 == 1 && v48 < 0)
    {
      operator delete(v47);
    }

    if (v46 == 1 && v45 < 0)
    {
      operator delete(v44);
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }
  }
}

void sub_1007A1A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62, void *a63)
{
  if (a69 == 1 && a68 < 0)
  {
    operator delete(__p);
  }

  if (a66 == 1 && a65 < 0)
  {
    operator delete(a63);
  }

  if (a62 == 1 && a61 < 0)
  {
    operator delete(a56);
  }

  if (a55 == 1 && a54 < 0)
  {
    operator delete(a49);
  }

  if (a48 == 1 && a47 < 0)
  {
    operator delete(a42);
  }

  if (a37 == 1 && a36 < 0)
  {
    operator delete(a31);
  }

  if (a30 == 1 && a29 < 0)
  {
    operator delete(a24);
  }

  if (a23 == 1 && a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1007A1BB8(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_1007A1CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_1007A1D78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    v5 = *(v4 + 8);
  }

  if (v5)
  {
    *(a2 + 188) |= 2u;
    v6 = *(a2 + 16);
    if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v6, v4);
  }

  v7 = *(a1 + 328);
  if ((awd::metrics::CommCenterCellularPlanInternetTransport_IsValid(v7, a2) & 1) == 0)
  {
    sub_10177E1F4();
  }

  v9 = *(a2 + 188);
  *(a2 + 76) = v7;
  *(a2 + 24) = *(a1 + 332);
  *(a2 + 32) = *(a1 + 368);
  *(a2 + 33) = *(a1 + 369);
  *(a2 + 34) = 0;
  v10 = *(a1 + 370);
  *(a2 + 188) = v9 | 0x4017C;
  *(a2 + 56) = v10;
  if ((awd::metrics::CommCenterCellularPlanType_IsValid(0, v8) & 1) == 0)
  {
    sub_10177E220();
  }

  v12 = *(a2 + 188);
  *(a2 + 36) = 0;
  *(a2 + 35) = *(a1 + 371);
  *(a2 + 57) = *(a1 + 372);
  v13 = *(a1 + 373);
  *(a2 + 188) = v12 | 0x4A80;
  *(a2 + 58) = v13;
  v14 = *(a1 + 340);
  if ((awd::metrics::CommCenterCellularPlanTransferPlanSource_IsValid(v14, v11) & 1) == 0)
  {
    sub_10177E24C();
  }

  v16 = *(a2 + 188);
  v17 = v16 | 0x10000;
  *(a2 + 188) = v16 | 0x10000;
  *(a2 + 72) = v14;
  if (*(a1 + 348) == 1)
  {
    v18 = *(a1 + 344);
    v17 = v16 | 0x11000;
    *(a2 + 188) = v16 | 0x11000;
    *(a2 + 48) = v18;
  }

  if (*(a1 + 356) == 1)
  {
    v17 |= 0x2000u;
    *(a2 + 52) = *(a1 + 352);
  }

  if (*(a1 + 64) == 1)
  {
    *(a2 + 188) = v17 | 0x20000;
    v19 = *(a2 + 64);
    if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v19, (a1 + 40));
    v17 = *(a2 + 188);
  }

  if (*(a1 + 375) == 1)
  {
    v17 |= 0x8000u;
    *(a2 + 60) = *(a1 + 374);
  }

  *(a2 + 59) = *(a1 + 376);
  v20 = *(a1 + 377);
  *(a2 + 188) = v17 | 0x180000;
  *(a2 + 128) = v20;
  v21 = *(a1 + 360);
  *(a2 + 188) = v17 | 0x380000;
  *(a2 + 88) = v21;
  if (*(a1 + 96) == 1)
  {
    *(a2 + 188) = v17 | 0x780000;
    v22 = *(a2 + 80);
    if (v22 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v22, (a1 + 72));
  }

  if (*(a1 + 128) == 1)
  {
    *(a2 + 188) |= 0x800000u;
    v23 = *(a2 + 96);
    if (v23 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v23, (a1 + 104));
  }

  v24 = *(a1 + 136);
  v25 = *(v24 + 23);
  if (v25 < 0)
  {
    v25 = *(v24 + 8);
  }

  if (v25)
  {
    *(a2 + 188) |= 0x4000000u;
    v26 = *(a2 + 112);
    if (v26 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v26, v24);
  }

  v27 = *(a1 + 144);
  if (*(v27 + 4) == 1)
  {
    v28 = *v27;
    *(a2 + 188) |= 0x1000000u;
    *(a2 + 92) = v28;
  }

  v29 = *(a1 + 152);
  if (*(v29 + 8) == 1)
  {
    v30 = *v29;
    *(a2 + 188) |= 0x2000000u;
    *(a2 + 104) = v30;
  }

  v31 = *(a1 + 160);
  if (*(v31 + 8) == 1)
  {
    v32 = *v31;
    *(a2 + 188) |= 0x8000000u;
    *(a2 + 120) = v32;
  }

  v33 = *(a1 + 364);
  result = awd::metrics::CommCenterCellularPlanTransferFlowType_IsValid(v33, v15);
  if ((result & 1) == 0)
  {
    sub_10177E278();
  }

  v35 = *(a2 + 188) | 0x40000000;
  *(a2 + 188) = v35;
  *(a2 + 132) = v33;
  if (*(a1 + 192) == 1)
  {
    *(a2 + 192) |= 1u;
    v36 = *(a2 + 144);
    if (v36 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v36, (a1 + 168));
    v35 = *(a2 + 188);
  }

  v37 = *(a1 + 378);
  *(a2 + 188) = v35 | 0x80000000;
  *(a2 + 130) = v37;
  if (*(a1 + 224) == 1)
  {
    *(a2 + 192) |= 2u;
    v38 = *(a2 + 152);
    if (v38 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v38, (a1 + 200));
  }

  if (*(a1 + 256) == 1)
  {
    *(a2 + 192) |= 4u;
    v39 = *(a2 + 160);
    if (v39 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v39, (a1 + 232));
  }

  if (*(a1 + 288) == 1)
  {
    *(a2 + 192) |= 8u;
    v40 = *(a2 + 168);
    if (v40 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v40, (a1 + 264));
  }

  if (*(a1 + 320) == 1)
  {
    *(a2 + 192) |= 0x10u;
    v41 = *(a2 + 176);
    if (v41 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    return std::string::operator=(v41, (a1 + 296));
  }

  return result;
}

_BYTE *sub_1007A226C(_BYTE *a1, uint64_t a2)
{
  sub_10006F264(a1 + 40, (a2 + 40));
  sub_10006F264(a1 + 72, (a2 + 72));
  sub_10006F264(a1 + 104, (a2 + 104));
  sub_10006F264(a1 + 168, (a2 + 168));
  sub_10006F264(a1 + 200, (a2 + 200));
  sub_10006F264(a1 + 232, (a2 + 232));
  sub_10006F264(a1 + 264, (a2 + 264));
  return sub_10006F264(a1 + 296, (a2 + 296));
}

void sub_1007A22F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 288) == 1 && *(v1 + 287) < 0)
  {
    operator delete(*(v1 + 264));
  }

  if (*(v1 + 256) == 1 && *(v1 + 255) < 0)
  {
    operator delete(*(v1 + 232));
  }

  if (*(v1 + 224) == 1 && *(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  if (*(v1 + 192) == 1 && *(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 128) == 1 && *(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 96) == 1 && *(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 64) == 1 && *(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A23F0(uint64_t a1)
{
  if (*(a1 + 320) == 1 && *(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 288) == 1 && *(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 256) == 1 && *(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 224) == 1 && *(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 192) == 1 && *(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void sub_1007A2508(uint64_t a1, __int128 *a2, uint64_t a3, char a4, char a5, char a6, char a7, char a8, char a9, uint64_t a10, int a11, __int128 *a12, uint64_t a13, uint64_t a14, __int128 *a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int128 *a20, char a21, char a22, __int128 *a23, __int128 *a24, __int128 *a25, __int128 *a26)
{
  if (sub_10079D818(0x80151u))
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 1174405120;
    v34[2] = sub_1007A2A80;
    v34[3] = &unk_101E7D8C0;
    v34[4] = a1;
    sub_10006F264(&v35, a2);
    v64 = a11;
    v38 = a3;
    v68 = a4;
    v69 = a5;
    v70 = a6;
    v71 = a7;
    v72 = a8;
    v73 = a9;
    v65 = a10;
    sub_10006F264(&v39, a12);
    v42 = a13;
    v43 = a14;
    sub_10006F264(&v44, a15);
    v66 = a16;
    v47 = a17;
    v48 = a18;
    v67 = a19;
    sub_10006F264(&v49, a20);
    v74 = a21;
    v75 = a22;
    sub_10006F264(&v52, a23);
    sub_10006F264(&v55, a24);
    sub_10006F264(&v58, a25);
    sub_10006F264(&__p, a26);
    sub_1007A28C0(0x80151, v34);
    if (v63 == 1 && v62 < 0)
    {
      operator delete(__p);
    }

    if (v60 == 1 && v59 < 0)
    {
      operator delete(v58);
    }

    if (v57 == 1 && v56 < 0)
    {
      operator delete(v55);
    }

    if (v54 == 1 && v53 < 0)
    {
      operator delete(v52);
    }

    if (v51 == 1 && v50 < 0)
    {
      operator delete(v49);
    }

    if (v46 == 1 && v45 < 0)
    {
      operator delete(v44);
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }
  }
}

void sub_1007A279C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, char a63)
{
  if (a69 == 1 && a68 < 0)
  {
    operator delete(__p);
  }

  if (a66 == 1 && a65 < 0)
  {
    operator delete(a64);
  }

  if (a63 == 1 && a62 < 0)
  {
    operator delete(a57);
  }

  if (a56 == 1 && a55 < 0)
  {
    operator delete(a50);
  }

  if (a49 == 1 && a48 < 0)
  {
    operator delete(a43);
  }

  if (a40 == 1 && a39 < 0)
  {
    operator delete(a34);
  }

  if (a31 == 1 && a30 < 0)
  {
    operator delete(a25);
  }

  if (a23 == 1 && a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1007A28C0(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_1007A2A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_1007A2A80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    v5 = *(v4 + 8);
  }

  if (v5)
  {
    *(a2 + 144) |= 2u;
    v6 = *(a2 + 16);
    if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v6, v4);
  }

  if (*(a1 + 64) == 1)
  {
    *(a2 + 144) |= 0x400u;
    v7 = *(a2 + 40);
    if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v7, (a1 + 40));
  }

  v8 = *(a1 + 336);
  if ((awd::metrics::CommCenterCellularPlanInternetTransport_IsValid(v8, a2) & 1) == 0)
  {
    sub_10177E2A4();
  }

  v9 = *(a2 + 144);
  *(a2 + 64) = v8;
  v10 = *(a1 + 72);
  *(a2 + 144) = v9 | 0x808;
  v11 = *(a2 + 24);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  v13 = *(a2 + 144);
  *(a2 + 36) = *(a1 + 360);
  *(a2 + 37) = *(a1 + 361);
  *(a2 + 38) = *(a1 + 362);
  *(a2 + 39) = *(a1 + 363);
  *(a2 + 68) = *(a1 + 364);
  v14 = *(a1 + 365);
  v15 = v13 | 0x3F0;
  *(a2 + 144) = v13 | 0x3F0;
  *(a2 + 69) = v14;
  if (*(a1 + 344) == 1)
  {
    v16 = *(a1 + 340);
    v15 = v13 | 0x3F4;
    *(a2 + 144) = v13 | 0x3F4;
    *(a2 + 32) = v16;
  }

  if (*(a1 + 104) == 1)
  {
    *(a2 + 144) = v15 | 0x1000;
    v17 = *(a2 + 48);
    if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v17, (a1 + 80));
  }

  if (*(a1 + 120) == 1)
  {
    v18 = *(a1 + 112);
    *(a2 + 144) |= 0x4000u;
    *(a2 + 72) = v18;
  }

  if (*(a1 + 152) == 1)
  {
    *(a2 + 144) |= 0x8000u;
    v19 = *(a2 + 80);
    if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v19, (a1 + 128));
  }

  if (*(a1 + 352) == 1)
  {
    v20 = *(a1 + 348);
    *(a2 + 144) |= 0x2000u;
    *(a2 + 56) = v20;
  }

  if (*(a1 + 168) == 1)
  {
    v21 = *(a1 + 160);
    *(a2 + 144) |= 0x10000u;
    *(a2 + 88) = v21;
  }

  v22 = *(a1 + 356);
  result = awd::metrics::CommCenterCellularPlanTransferFlowType_IsValid(v22, v12);
  if ((result & 1) == 0)
  {
    sub_10177E2D0();
  }

  v24 = *(a2 + 144);
  *(a2 + 136) = v22;
  if (*(a1 + 200) == 1)
  {
    *(a2 + 144) = v24 | 0xA0000;
    v25 = *(a2 + 96);
    if (v25 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v25, (a1 + 176));
    v26 = *(a2 + 144);
  }

  else
  {
    v26 = v24 | 0x20000;
  }

  *(a2 + 70) = *(a1 + 366);
  v27 = *(a1 + 367);
  *(a2 + 144) = v26 | 0x140000;
  *(a2 + 71) = v27;
  if (*(a1 + 232) == 1)
  {
    *(a2 + 144) = v26 | 0x340000;
    v28 = *(a2 + 104);
    if (v28 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v28, (a1 + 208));
  }

  if (*(a1 + 264) == 1)
  {
    *(a2 + 144) |= 0x400000u;
    v29 = *(a2 + 112);
    if (v29 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v29, (a1 + 240));
  }

  if (*(a1 + 296) == 1)
  {
    *(a2 + 144) |= 0x800000u;
    v30 = *(a2 + 120);
    if (v30 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v30, (a1 + 272));
  }

  if (*(a1 + 328) == 1)
  {
    *(a2 + 144) |= 0x1000000u;
    v31 = *(a2 + 128);
    if (v31 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    return std::string::operator=(v31, (a1 + 304));
  }

  return result;
}

_BYTE *sub_1007A2EAC(_BYTE *a1, __int128 *a2)
{
  sub_10006F264(a1 + 40, (a2 + 40));
  sub_10006F264(a1 + 80, a2 + 5);
  sub_10006F264(a1 + 128, a2 + 8);
  sub_10006F264(a1 + 176, a2 + 11);
  sub_10006F264(a1 + 208, a2 + 13);
  sub_10006F264(a1 + 240, a2 + 15);
  sub_10006F264(a1 + 272, a2 + 17);
  return sub_10006F264(a1 + 304, a2 + 19);
}

void sub_1007A2F30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 296) == 1 && *(v1 + 295) < 0)
  {
    operator delete(*(v1 + 272));
  }

  if (*(v1 + 264) == 1 && *(v1 + 263) < 0)
  {
    operator delete(*(v1 + 240));
  }

  if (*(v1 + 232) == 1 && *(v1 + 231) < 0)
  {
    operator delete(*(v1 + 208));
  }

  if (*(v1 + 200) == 1 && *(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 152) == 1 && *(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 104) == 1 && *(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 64) == 1 && *(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A3030(uint64_t a1)
{
  if (*(a1 + 328) == 1 && *(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 296) == 1 && *(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 264) == 1 && *(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 232) == 1 && *(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 200) == 1 && *(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

uint64_t sub_1007A3148(uint64_t a1, int a2)
{
  result = sub_10079D818(0x80152u);
  if (result)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_1007A33A0;
    v5[3] = &unk_101E7D8F0;
    v5[4] = a1;
    v6 = a2;
    return sub_1007A31E0(0x80152, v5);
  }

  return result;
}

BOOL sub_1007A31E0(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_1007A3320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_1007A33A0(std::string *result, uint64_t a2)
{
  v3 = result;
  size = result[1].__r_.__value_.__l.__size_;
  v5 = *(size + 23);
  if (v5 < 0)
  {
    v5 = *(size + 8);
  }

  if (v5)
  {
    *(a2 + 32) |= 4u;
    v6 = *(a2 + 16);
    if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    result = std::string::operator=(v6, size);
  }

  v7 = v3[1].__r_.__value_.__r.__words[2];
  *(a2 + 32) |= 2u;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1007A3440(uint64_t a1, int a2, int a3, char a4)
{
  result = sub_10079D818(0x80127u);
  if (result)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_1007A34EC;
    v9[3] = &unk_101E7D910;
    v9[4] = a1;
    v10 = a3;
    v11 = a2;
    v12 = a4;
    return sub_1007A1BB8(0x80127, v9);
  }

  return result;
}

uint64_t sub_1007A34EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    v5 = *(v4 + 8);
  }

  if (v5)
  {
    *(a2 + 188) |= 2u;
    v6 = *(a2 + 16);
    if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v6, v4);
  }

  v7 = *(a2 + 188);
  v8 = *(a1 + 44);
  *(a2 + 24) = *(a1 + 40);
  *(a2 + 188) = v7 | 0x44;
  *(a2 + 34) = 1;
  result = awd::metrics::CommCenterCellularPlanType_IsValid(v8, a2);
  if ((result & 1) == 0)
  {
    sub_10177E220();
  }

  v10 = *(a2 + 188);
  *(a2 + 36) = v8;
  *(a2 + 188) = v10 | 0x600;
  v11 = *(a2 + 40);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a1 + 48);
  *(v11 + 16) |= 1u;
  *(v11 + 8) = v12;
  return result;
}

uint64_t sub_1007A3614()
{
  result = sub_10079D818(0x80135u);
  if (result)
  {

    return sub_1007A3660(0x80135, &stru_101E7D950);
  }

  return result;
}

BOOL sub_1007A3660(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_1007A37A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A3824(uint64_t a1)
{
  result = sub_10079D818(0x80149u);
  if (result)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 0x40000000;
    v3[2] = sub_1007A3A74;
    v3[3] = &unk_101E7D970;
    v3[4] = a1;
    return sub_1007A38B4(0x80149, v3);
  }

  return result;
}

BOOL sub_1007A38B4(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v9 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v9)
  {
    v4 = sub_10001C650(8);
    v6 = *v4;
    v5 = *(v4 + 1);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10001C0A0(&v9);
  return v7;
}

void sub_1007A39F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_1007A3A74(std::string *result, int *a2)
{
  size = result[1].__r_.__value_.__l.__size_;
  v4 = *size;
  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (v4 == 2);
  }

  v6 = a2[14];
  v7 = v6 | 2;
  a2[14] = v6 | 2;
  a2[10] = v5;
  if (size[36] == 1)
  {
    v8 = *(size + 8);
    v7 = v6 | 0x12;
    a2[14] = v6 | 0x12;
    a2[12] = v8;
  }

  if (size[44] == 1)
  {
    v9 = *(size + 10);
    a2[14] = v7 | 8;
    a2[11] = v9;
  }

  v10 = *(size + 1);
  v11 = size + 16;
  if (v10 != size + 16)
  {
    do
    {
      v12 = a2[7];
      v13 = a2[6];
      if (v13 >= v12)
      {
        if (v12 == a2[8])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 4), v12 + 1);
          v12 = a2[7];
        }

        a2[7] = v12 + 1;
        sub_1007A3EE8();
      }

      v14 = *(a2 + 2);
      a2[6] = v13 + 1;
      v15 = *(v14 + 8 * v13);
      *(v15 + 56) |= 1u;
      v16 = *(v15 + 8);
      if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        operator new();
      }

      result = std::string::operator=(v16, (v10 + 56));
      v17 = *(v15 + 56);
      *(v15 + 16) = v10[80];
      *(v15 + 20) = v10[81];
      v18 = *(v10 + 41);
      v19 = v17 | 0x1E;
      *(v15 + 56) = v17 | 0x1E;
      *(v15 + 21) = v18;
      if (v10[88] == 1)
      {
        v20 = *(v10 + 21);
        v19 = v17 | 0x5E;
        *(v15 + 56) = v17 | 0x5E;
        *(v15 + 48) = v20;
      }

      if (v10[120] == 1)
      {
        *(v15 + 56) = v19 | 0x200;
        v21 = *(v15 + 40);
        if (v21 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = std::string::operator=(v21, v10 + 4);
      }

      v22 = *(v10 + 1);
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
          v23 = *(v10 + 2);
          v24 = *v23 == v10;
          v10 = v23;
        }

        while (!v24);
      }

      v10 = v23;
    }

    while (v23 != v11);
  }

  return result;
}

unint64_t sub_1007A3C94()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return 1000 * v1.tv_sec + v1.tv_usec / 0x3E8uLL;
}

const char *sub_1007A3CEC(unsigned int a1)
{
  if (a1 > 2)
  {
    return "switch state unknown?";
  }

  else
  {
    return off_101E7DA20[a1];
  }
}

void *sub_1007A3E08(void *a1, unsigned int *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E7D9C0;
  wis::WISServerConnection::WISServerConnection((a1 + 3), *a2);
  return a1;
}

void sub_1007A3E88(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7D9C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void DataServiceController::getEntitlementsGenres(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = [LSApplicationRecord alloc];
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v42 = 0;
  v33 = [v5 initWithBundleIdentifier:v7 allowPlaceholder:0 error:&v42];
  v34 = v42;

  if (v34)
  {
    v8 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v30 = a2;
      }

      else
      {
        v30 = *a2;
      }

      *v46 = 136315650;
      *&v46[4] = "getEntitlementsGenres";
      *&v46[12] = 2114;
      *&v46[14] = v34;
      *&v46[22] = 2082;
      *&v46[24] = v30;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s: (0) cannot get LSApplicationRecord: %{public}@ for %{public}s", v46, 0x20u);
    }

LABEL_7:
    *(a3 + 16) = 0;
    *(a3 + 8) = 0;
    *a3 = a3 + 8;
    goto LABEL_8;
  }

  if (!v33)
  {
    v11 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10177E3E4();
    }

    goto LABEL_7;
  }

  v9 = [v33 entitlements];
  v10 = [v9 objectForKey:@"com.apple.developer.networking.slicing.appcategory" ofClass:objc_opt_class()];

  if (v10)
  {
    memset(v46, 0, 32);
    sub_1007A488C(v10, v46);
    if (*v46)
    {
      if (DataServiceController::localizeEntitlementGenreName(a1, &v46[8]))
      {
        *(a3 + 16) = 0;
        *(a3 + 8) = 0;
        *a3 = a3 + 8;
        if (v46[31] < 0)
        {
          sub_100005F2C(__p, *&v46[8], *&v46[16]);
        }

        else
        {
          *__p = *&v46[8];
          v41 = *&v46[24];
        }

        *&buf[8] = *__p;
        *buf = *v46;
        v45 = v41;
        __p[0] = 0;
        __p[1] = 0;
        v41 = 0;
        sub_1007A8D18(a3, buf, buf);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(*&buf[8]);
        }

        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_84;
      }

      v27 = sub_100032AC8((a1 + 40));
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v29 = a2;
        }

        else
        {
          v29 = *a2;
        }

        *buf = 136315650;
        *&buf[4] = "getEntitlementsGenres";
        *&buf[12] = 2082;
        *&buf[14] = v29;
        *&buf[22] = 2114;
        v45 = v10;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E %s: (2.0) cannot get localize genreName in LSApplicationRecord for %{public}s: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v27 = sub_100032AC8((a1 + 40));
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v28 = a2;
        }

        else
        {
          v28 = *a2;
        }

        *buf = 136315650;
        *&buf[4] = "getEntitlementsGenres";
        *&buf[12] = 2082;
        *&buf[14] = v28;
        *&buf[22] = 2114;
        v45 = v10;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E %s: (2) cannot get genre in LSApplicationRecord for %{public}s: %{public}@", buf, 0x20u);
      }
    }

    *(a3 + 16) = 0;
    *(a3 + 8) = 0;
    *a3 = a3 + 8;
LABEL_84:
    if (v46[31] < 0)
    {
      operator delete(*&v46[8]);
    }

    goto LABEL_8;
  }

  v12 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10177E2FC();
  }

  v13 = [v33 entitlements];
  v14 = objc_opt_class();
  v32 = [v13 objectForKey:@"com.apple.developer.networking.slicing.appcategory" ofClass:v14 valuesOfClass:objc_opt_class()];

  if (v32)
  {
    *(a3 + 16) = 0;
    *(a3 + 8) = 0;
    *a3 = a3 + 8;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = v32;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (!v16)
    {
      goto LABEL_51;
    }

    v17 = *v37;
    while (1)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v36 + 1) + 8 * i);
        memset(v46, 0, 32);
        sub_1007A488C(v19, v46);
        if (!*v46)
        {
          v20 = sub_100032AC8((a1 + 40));
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v21 = a2;
            }

            else
            {
              v21 = *a2;
            }

            *buf = 136315650;
            *&buf[4] = "getEntitlementsGenres";
            *&buf[12] = 2082;
            *&buf[14] = v21;
            *&buf[22] = 2114;
            v45 = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E %s: (3) cannot get genre in LSApplicationRecord for %{public}s: %{public}@", buf, 0x20u);
          }

          goto LABEL_35;
        }

        if (!DataServiceController::localizeEntitlementGenreName(a1, &v46[8]))
        {
          v20 = sub_100032AC8((a1 + 40));
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v22 = a2;
            }

            else
            {
              v22 = *a2;
            }

            *buf = 136315650;
            *&buf[4] = "getEntitlementsGenres";
            *&buf[12] = 2082;
            *&buf[14] = v22;
            *&buf[22] = 2114;
            v45 = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E %s: (3.0) cannot get genre in LSApplicationRecord for %{public}s: %{public}@", buf, 0x20u);
          }

LABEL_35:

          goto LABEL_47;
        }

        if (v46[31] < 0)
        {
          sub_100005F2C(__p, *&v46[8], *&v46[16]);
        }

        else
        {
          *__p = *&v46[8];
          v41 = *&v46[24];
        }

        *buf = *v46;
        *&buf[8] = *__p;
        v45 = v41;
        __p[0] = 0;
        __p[1] = 0;
        v41 = 0;
        sub_1007A8D18(a3, buf, buf);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(*&buf[8]);
        }

        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_47:
        if (v46[31] < 0)
        {
          operator delete(*&v46[8]);
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v36 objects:v43 count:16];
      if (!v16)
      {
LABEL_51:

        v23 = v32;
        if (!*(a3 + 16))
        {
          v24 = sub_100032AC8((a1 + 40));
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v25 = a2;
            }

            else
            {
              v25 = *a2;
            }

            *v46 = 136315394;
            *&v46[4] = "getEntitlementsGenres";
            *&v46[12] = 2082;
            *&v46[14] = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E %s: (4) cannot get genre in LSApplicationRecord for %{public}s", v46, 0x16u);
          }

          v26 = a3;
          sub_100077CD4(a3, *(a3 + 8));
          goto LABEL_77;
        }

        goto LABEL_78;
      }
    }
  }

  v31 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    sub_10177E370();
  }

  v26 = a3;
LABEL_77:
  v26[2] = 0;
  v26[1] = 0;
  *v26 = v26 + 1;
  v23 = v32;
LABEL_78:

LABEL_8:
}

void sub_1007A4748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100077CD4(a16, *(a16 + 8));
  if (*(v31 - 113) < 0)
  {
    operator delete(*(v31 - 136));
  }

  _Unwind_Resume(a1);
}

void sub_1007A488C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  memset(v11, 0, 7);
  v4 = [v3 length];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = 0;
  v6 = 1;
  while ([v3 characterAtIndex:v5] != 45)
  {
    v6 = ++v5 < v4;
    if (v4 == v5)
    {
      goto LABEL_5;
    }
  }

  if (v5)
  {
    v10 = [v3 substringToIndex:v5];
    ctu::cf::assign();
    memset(v11, 0, 7);

    if (v6)
    {
      v7 = (v5 + 1);
      goto LABEL_6;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = v6;
LABEL_6:
  if (v7 <= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  while (v8 != v7)
  {
    v9 = [v3 characterAtIndex:v7++];
    if (v9 != 32)
    {
      if (v7 - 1 < v4)
      {
        operator new[]();
      }

      break;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v11[0];
  *(a2 + 27) = *(v11 + 3);
  *(a2 + 31) = 0;
}

void sub_1007A4B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL DataServiceController::localizeEntitlementGenreName(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v5 = ServiceMap;
  if (v6 < 0)
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

LABEL_17:
      v27 = 0;
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(__dst, *a2, *(a2 + 8));
      }

      else
      {
        *__dst = *a2;
        v25 = *(a2 + 16);
      }

      if (SHIBYTE(v25) < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
      }

      else
      {
        *__p = *__dst;
        v32 = v25;
      }

      v28 = 0;
      if (SHIBYTE(v32) < 0)
      {
        sub_100005F2C(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        *&buf[16] = v32;
      }

      v29 = 0;
      if (ctu::cf::convert_copy())
      {
        v17 = v28;
        v28 = v29;
        format = v17;
        sub_100005978(&format);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      v26 = v28;
      v28 = 0;
      sub_100005978(&v28);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p[0]);
      }

      DataUtils::normalizeAppCategory();
      sub_100005978(&v26);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__dst[0]);
      }

      format = 0;
      (*(*v12 + 40))(&format, v12, kAlertDialogLocalizationTable, @"GENRE_FOR_SLICING_GENERIC_%@", 0);
      if (format)
      {
        StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(0, 0, @"%@ Apps", format, 0, v27);
      }

      else
      {
        v19 = sub_100032AC8((a1 + 40));
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "localizeEntitlementGenreName";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#E %s: GENRE_FOR_SLICING_GENERIC is empty", buf, 0xCu);
        }

        StringWithValidatedFormat = CFStringCreateWithFormat(0, 0, @"%@ Apps", v27);
      }

      v20 = v27;
      v27 = StringWithValidatedFormat;
      *buf = v20;
      sub_100005978(buf);
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v21 = *buf;
      __p[0] = *&buf[8];
      *(__p + 7) = *&buf[15];
      v22 = buf[23];
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      v23 = __p[0];
      *a2 = v21;
      *(a2 + 8) = v23;
      *(a2 + 15) = *(__p + 7);
      *(a2 + 23) = v22;
      sub_100005978(&format);
      sub_100005978(&v27);
      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }

      return v12 != 0;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_7:
  v14 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    *buf = 136315394;
    *&buf[4] = "localizeEntitlementGenreName";
    *&buf[12] = 2082;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E %s: (3.0) cannot localize genreName in LSApplicationRecord for %{public}s", buf, 0x16u);
  }

  if ((v13 & 1) == 0)
  {
LABEL_13:
    sub_100004A34(v11);
  }

  return v12 != 0;
}

void sub_1007A4FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, const void *a19, __int16 a20, char a21, char a22, uint64_t a23, const void *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100005978(&a24);
  sub_100005978(&a19);
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  _Unwind_Resume(a1);
}

void sub_1007A5068(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x1007A5060);
}

void DataServiceController::getEntitlementsTrafficClasses(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = [LSApplicationRecord alloc];
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = [NSString stringWithUTF8String:v7];
  v39 = 0;
  v33 = [v6 initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v39];
  v34 = v39;

  if (v34)
  {
    v9 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 23) >= 0)
      {
        v30 = a2;
      }

      else
      {
        v30 = *a2;
      }

      *v47 = 136315650;
      *&v47[4] = "getEntitlementsTrafficClasses";
      *&v47[12] = 2114;
      *&v47[14] = v34;
      *&v47[22] = 2082;
      *&v47[24] = v30;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s: (0) cannot get LSApplicationRecord: %{public}@ for %{public}s", v47, 0x20u);
    }

LABEL_7:
    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
    goto LABEL_8;
  }

  if (!v33)
  {
    v13 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177E540();
    }

    goto LABEL_7;
  }

  v10 = [v33 entitlements];
  v11 = [v10 objectForKey:@"com.apple.developer.networking.slicing.trafficcategory" ofClass:objc_opt_class()];

  if (!v11)
  {
    v14 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10177E458();
    }

    v15 = [v33 entitlements];
    v16 = objc_opt_class();
    v32 = [v15 objectForKey:@"com.apple.developer.networking.slicing.trafficcategory" ofClass:v16 valuesOfClass:objc_opt_class()];

    if (v32)
    {
      a3[2] = 0;
      a3[1] = 0;
      *a3 = a3 + 1;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v17 = v32;
      v18 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v18)
      {
        v19 = *v36;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v35 + 1) + 8 * i);
            memset(v47, 0, 32);
            sub_1007A5760(v21, v47);
            if (*v47)
            {
              *buf = *v47;
              if (DataServiceController::getTrafficClassFromIndex(*v47, buf, v22))
              {
                *v47 = *buf;
              }

              sub_1004C50EC(a3, v47, v47);
            }

            else
            {
              v23 = sub_100032AC8((a1 + 40));
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                if (*(a2 + 23) >= 0)
                {
                  v24 = a2;
                }

                else
                {
                  v24 = *a2;
                }

                *buf = 136315650;
                v42 = "getEntitlementsTrafficClasses";
                v43 = 2082;
                v44 = v24;
                v45 = 2114;
                v46 = v21;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E %s: (3) cannot get genre in LSApplicationRecord for %{public}s: %{public}@", buf, 0x20u);
              }
            }

            if (v47[31] < 0)
            {
              operator delete(*&v47[8]);
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v18);
      }

      v25 = v32;
      if (a3[2])
      {
        goto LABEL_64;
      }

      v26 = sub_100032AC8((a1 + 40));
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v27 = a2;
        }

        else
        {
          v27 = *a2;
        }

        *v47 = 136315394;
        *&v47[4] = "getEntitlementsTrafficClasses";
        *&v47[12] = 2082;
        *&v47[14] = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#E %s: (4) cannot get genre in LSApplicationRecord for %{public}s", v47, 0x16u);
      }

      sub_10006DCAC(a3, a3[1]);
    }

    else
    {
      v31 = sub_100032AC8((a1 + 40));
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        sub_10177E4CC();
      }
    }

    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
    v25 = v32;
LABEL_64:

    goto LABEL_8;
  }

  memset(v47, 0, 32);
  sub_1007A5760(v11, v47);
  if (*v47)
  {
    *buf = *v47;
    if (DataServiceController::getTrafficClassFromIndex(*v47, buf, v12))
    {
      *v47 = *buf;
    }

    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
    sub_1004C50EC(a3, v47, v47);
  }

  else
  {
    v28 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      *buf = 136315650;
      v42 = "getEntitlementsTrafficClasses";
      v43 = 2082;
      v44 = v29;
      v45 = 2114;
      v46 = v11;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#E %s: (2) cannot get genre in LSApplicationRecord for %{public}s: %{public}@", buf, 0x20u);
    }

    a3[2] = 0;
    a3[1] = 0;
    *a3 = a3 + 1;
  }

  if (v47[31] < 0)
  {
    operator delete(*&v47[8]);
  }

LABEL_8:
}

void sub_1007A5674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12)
{
  sub_10006DCAC(v12, *(v12 + 8));

  _Unwind_Resume(a1);
}

void sub_1007A5760(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  memset(v11, 0, 7);
  v4 = [v3 length];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = 0;
  v6 = 1;
  while ([v3 characterAtIndex:v5] != 45)
  {
    v6 = ++v5 < v4;
    if (v4 == v5)
    {
      goto LABEL_5;
    }
  }

  if (v5)
  {
    v10 = [v3 substringToIndex:v5];
    ctu::cf::assign();
    memset(v11, 0, 7);

    if (v6)
    {
      v7 = (v5 + 1);
      goto LABEL_6;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = v6;
LABEL_6:
  if (v7 <= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  while (v8 != v7)
  {
    v9 = [v3 characterAtIndex:v7++];
    if (v9 != 32)
    {
      if (v7 - 1 < v4)
      {
        operator new[]();
      }

      break;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v11[0];
  *(a2 + 27) = *(v11 + 3);
  *(a2 + 31) = 0;
}

void sub_1007A59E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1007A5CD4(void *a1, uint64_t a2)
{
  sub_100457284(v4, a2);
  sub_1007A8DFC(v4, a1);
  sub_1003F2928(v4);
  return a1;
}

void sub_1007A63D4(uint64_t a1, void *a2)
{
  v3 = a2;
  status = nw_path_get_status(v3);
  v5 = sub_100032AC8(*(*(a1 + 32) + 24));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = status;
    v7 = 2080;
    v8 = asStringBool(status == nw_path_status_satisfied);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I non-LL: status = %d, connected = %s", v6, 0x12u);
  }

  sub_1007A64FC(*(a1 + 32) + 32, 0, (status == nw_path_status_satisfied) | 0x100);
}

uint64_t sub_1007A64FC(uint64_t a1, __int16 a2, __int16 a3)
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

void sub_1007A6558(uint64_t a1, void *a2)
{
  v3 = a2;
  status = nw_path_get_status(v3);
  v5 = sub_100032AC8(*(*(a1 + 32) + 24));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = status;
    v7 = 2080;
    v8 = asStringBool(status == nw_path_status_satisfied);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I LL: status = %d, connected = %s", v6, 0x12u);
  }

  sub_1007A64FC(*(a1 + 32) + 32, (status == nw_path_status_satisfied) | 0x100, 0);
}

void *sub_1007A6764(void *a1, uint64_t a2)
{
  sub_1007A93AC(v4, a2);
  sub_1007A9140(v4, a1);
  sub_1007A9444(v4);
  return a1;
}

id DataServiceController::isAnalyticsLocationAuthorized_sync(DataServiceController *this)
{
  v1 = *(this + 669);
  if (v1)
  {
    return [*v1 isLocationAuthorized_sync];
  }

  else
  {
    return 0;
  }
}

id non-virtual thunk toDataServiceController::isAnalyticsLocationAuthorized_sync(DataServiceController *this)
{
  v1 = *(this + 662);
  if (v1)
  {
    return [*v1 isLocationAuthorized_sync];
  }

  else
  {
    return 0;
  }
}

void *sub_1007A6CE4(void *a1, uint64_t a2)
{
  sub_1007A9544(v4, a2);
  sub_1007A95DC(v4, a1);
  sub_1007A94C4(v4);
  return a1;
}

void sub_1007A6DBC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = DataTelephonyCallObserverImpl;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1007A7194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void DataServiceController::notifyLLPHS_sync(uint64_t a1, __int16 a2, __int16 a3, int a4)
{
  v14 = a2;
  v13 = a3;
  DataServiceController::getLLPHSState_sync(a1, &v14, &v13);
  v6 = (*(*a1 + 2288))(a1);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  if (v6)
  {
    v8 = a4 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (HIBYTE(v14) == 1 && v14 == 1 && HIBYTE(v13) == 1 && (v13 & 1) != 0)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  if (notify_is_valid_token(*(a1 + 5232)))
  {
    notify_set_state(*(a1 + 5232), v7);
    v9 = notify_post("com.apple.CoreTelephony.Slicing.LLPHS.State");
    v10 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "com.apple.CoreTelephony.Slicing.LLPHS.State";
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s notified %llu: %lu", buf, 0x20u);
    }
  }

  if (notify_is_valid_token(*(a1 + 5236)))
  {
    notify_set_state(*(a1 + 5236), v7);
    v11 = notify_post("com.apple.private.restrict-post.CoreTelephony.Slicing.LLPHS.State");
    v12 = sub_100032AC8((a1 + 40));
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "com.apple.private.restrict-post.CoreTelephony.Slicing.LLPHS.State";
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s notified %llu: %lu", buf, 0x20u);
    }
  }
}

void DataServiceController::setSliceEventsListeners_sync(DataServiceController *this, int a2, int a3, char a4)
{
  if ((a2 & a3 & 1) == 0 && (a4 & 1) == 0)
  {
    DataServiceController::notifyLLPHS_sync(this, a2 | 0x100, a3 | 0x100, 0);
  }

  if ((*(*this + 2288))(this))
  {
    if (!*(this + 657))
    {
      operator new();
    }

    if (!*(this + 663))
    {
      operator new();
    }

    if (!*(this + 666))
    {
      operator new();
    }

    if (*(this + 5225) != a2)
    {
      *(this + 5225) = a2;
      DistributedCenter = CFNotificationCenterGetDistributedCenter();
      v7 = DistributedCenter;
      if (!a2)
      {
        CFNotificationCenterRemoveObserver(DistributedCenter, this, @"com.apple.LaunchServices.applicationRegistered", 0);
        CFNotificationCenterRemoveObserver(v7, this, @"com.apple.LaunchServices.applicationUnregistered", 0);
        notify_cancel(*(this + 1307));
        *(this + 1307) = -1;
        return;
      }

      CFNotificationCenterAddObserver(DistributedCenter, this, sub_1007A7B1C, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      CFNotificationCenterAddObserver(v7, this, sub_1007A7B1C, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      if (!*(this + 669))
      {
        sub_1007AA18C();
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1007A7BE8;
      v13[3] = &unk_101E7DAD8;
      v13[4] = this;
      v8 = objc_retainBlock(v13);
      v9 = sub_100032AC8(this + 3);
      v10 = notify_register_dispatch(kSBSLockStateNotifyKey, this + 1307, v9, v8) == 0;

      if (v10)
      {
        v11 = sub_100032AC8(this + 5);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v12 = "#N ScreenLockObserver: registered for lock state notification";
          goto LABEL_21;
        }
      }

      else
      {
        v11 = sub_100032AC8(this + 5);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v12 = "#N ScreenLockObserver: failed to register for lock state notification";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
        }
      }
    }
  }
}

void sub_1007A7B1C(int a1, DataServiceController *a2, CFTypeRef cf1, uint64_t a4, const __CFDictionary *a5)
{
  if (CFEqual(cf1, @"com.apple.LaunchServices.applicationRegistered"))
  {
    sub_1007A8BB0(a5, &v8);
    DataServiceController::appsRegistered(a2, 1, &v8);
  }

  if (CFEqual(cf1, @"com.apple.LaunchServices.applicationUnregistered"))
  {
    sub_1007A8BB0(a5, &v8);
    DataServiceController::appsRegistered(a2, 0, &v8);
  }
}

void sub_1007A7BE8(uint64_t a1, int token)
{
  v3 = *(a1 + 32);
  v6 = 0;
  notify_get_state(token, &v6);
  v4 = sub_100032AC8(v3 + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asStringBool(v6 != 0);
    *buf = 67109378;
    *&buf[4] = token;
    LOWORD(v9) = 2080;
    *(&v9 + 2) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I ScreenLockObserver: token=%d, state = %s", buf, 0x12u);
  }

  if (!v6)
  {
    *buf = 0;
    v9 = 0uLL;
    DataServiceController::handleFrontmostAppsChanged_sync(v3);
    v7 = buf;
    sub_1000087B4(&v7);
  }
}

void sub_1007A7CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

void DataServiceController::updateSlicingDefinitionsWithAppDB(uint64_t a1, unint64_t **a2)
{
  if ((*(*a1 + 2288))(a1))
  {
    v4 = *(a1 + 5456);
    *(a1 + 5456) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    sub_100009970(a1 + 5280, *(a1 + 5288));
    *(a1 + 5280) = a1 + 5288;
    *(a1 + 5288) = 0u;
    if (*(a1 + 5348) == 1)
    {
      if (DataServiceController::supportsCallKit(a1))
      {
        v5 = *(a1 + 5152);
        if (v5 != (a1 + 5160))
        {
          do
          {
            memset(__p, 0, 24);
            if (*(v5 + 55) < 0)
            {
              sub_100005F2C(__p, v5[4], v5[5]);
            }

            else
            {
              *__p = *(v5 + 2);
              __p[2] = *(v5 + 6);
            }

            sub_100005BA0(a1 + 5280, __p, __p);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            v6 = v5[1];
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
                v7 = v5[2];
                v8 = *v7 == v5;
                v5 = v7;
              }

              while (!v8);
            }

            v5 = v7;
          }

          while (v7 != (a1 + 5160));
        }
      }
    }

    v9 = (*(*a1 + 1112))(a1);
    v10 = sub_100032AC8((a1 + 40));
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = a2;
        if (*(a2 + 23) < 0)
        {
          v12 = *a2;
        }

        LODWORD(__p[0]) = 136446210;
        *(__p + 4) = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Update slicing definitions (full), reason: %{public}s (stage 1)", __p, 0xCu);
      }

      v13 = DataServiceController::qosClass(a1);
      v14 = dispatch_queue_attr_make_with_qos_class(0, v13, 0);
      v15 = dispatch_queue_create("updateSlicingDefinitionsWithAppDB", v14);

      __p[0] = a1;
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&__p[1], *a2, a2[1]);
      }

      else
      {
        *&__p[1] = *a2;
        __p[3] = a2[2];
      }

      v16 = *(a1 + 112);
      __p[4] = *(a1 + 104);
      __p[5] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
      }

      v17 = v15;
      operator new();
    }

    if (v11)
    {
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      LODWORD(__p[0]) = 136446210;
      *(__p + 4) = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Update slicing definitions (full), reason: %{public}s: preferred SIM unknown, bailing", __p, 0xCu);
    }
  }
}

BOOL DataServiceController::isAppWithBundleIdActive(uint64_t a1, uint64_t *a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 104));
  v4 = ServiceMap;
  v5 = "23ApplicationStateMonitor";
  if (("23ApplicationStateMonitor" & 0x8000000000000000) != 0)
  {
    v6 = ("23ApplicationStateMonitor" & 0x7FFFFFFFFFFFFFFFLL);
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
  v15 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v15);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
  if (!v11)
  {
LABEL_7:
    v13 = 0;
    if (v12)
    {
      return v13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v13 = sub_1006DFAC8(v11, a2);
  if ((v12 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v10);
  }

  return v13;
}

void sub_1007A8214(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void DataServiceController::getAppInfo(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v11 = NEHelperCopyAppInfo();
  v12 = v11;
  if (!v11)
  {
    v12 = xpc_null_create();
  }

  v13 = v12;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    if (xpc_get_type(v13) != &_xpc_type_dictionary)
    {
      v15 = xpc_null_create();
    }
  }

  else
  {
    v15 = xpc_null_create();
  }

  if (xpc_get_type(v15) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v15, "app-identifier");
    if (string)
    {
      v17 = sub_100032AC8((v10 + 40));
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v32 = string;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I getAppInfo: Got app identifier: %s", buf, 0xCu);
      }

      sub_100016890(v3, string);
    }

    uuid = xpc_dictionary_get_uuid(v15, "app-euuid");
    if (uuid)
    {
      v19 = [[NSUUID alloc] initWithUUIDBytes:uuid];
      v20 = [v19 UUIDString];
      v21 = v20;
      v22 = [v20 UTF8String];

      v23 = sub_100032AC8((v10 + 40));
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v32 = v22;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I getAppInfo: Got uuid: %s", buf, 0xCu);
      }

      sub_100016890(v5, v22);
    }
  }

  bzero(buf, 0x1001uLL);
  if (proc_pidpath(v9, buf, 0x1000u) >= 1)
  {
    v33 = 0;
    sub_10000501C(&v27, buf);
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    *v7 = v27;
    *(v7 + 16) = v28;
    v27 = 0uLL;
    v28 = 0;
    ctu::tokenize();
    if (*(&v27 + 1) != v27)
    {
      if (*(*(&v27 + 1) - 1) < 0)
      {
        sub_100005F2C(__dst, *(*(&v27 + 1) - 24), *(*(&v27 + 1) - 16));
      }

      else
      {
        v24 = *(*(&v27 + 1) - 24);
        v30 = *(*(&v27 + 1) - 8);
        *__dst = v24;
      }

      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      *v7 = *__dst;
      *(v7 + 16) = v30;
    }

    v25 = sub_100032AC8((v10 + 40));
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v7 + 23) >= 0)
      {
        v26 = v7;
      }

      else
      {
        v26 = *v7;
      }

      *__dst = 136315138;
      *&__dst[4] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I getAppInfo: Got procName: %s", __dst, 0xCu);
    }

    *__dst = &v27;
    sub_1000087B4(__dst);
  }
}

void sub_1007A85E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_1000087B4(&a13);

  _Unwind_Resume(a1);
}

void DataServiceController::appsRegistered(DataServiceController *a1, char a2, char *a3)
{
  v4 = DataServiceController::qosClass(a1);
  v5 = dispatch_queue_attr_make_with_qos_class(0, v4, 0);
  v6 = dispatch_queue_create("appsRegisteredTmp", v5);

  sub_100074920(&v8, a3);
  v7 = v6;
  operator new();
}

void DataServiceController::notifySlicingInterfaceStatus_sync(DataServiceController *this)
{
  v2 = (*(*this + 1120))(this);
  v3 = 0;
  for (i = 28; i != 36; ++i)
  {
    *buf = 0;
    *&buf[8] = 0;
    DataServiceController::getConnection_sync(this, v2, i, buf);
    if (*buf && (((*(**buf + 168))(*buf) & 1) != 0 || ((*(**buf + 176))(*buf) & 1) != 0))
    {
      if ((*(**buf + 184))(*buf))
      {
        v5 = (*(**buf + 200))(*buf);
        if ((v5 & 0x80000000) == 0)
        {
          v12 = 0;
          v13 = 0;
          DataServiceController::getPDPActivator(&v12, this, v5);
          if (v12 && (*(*v12 + 160))(v12, 0))
          {
            v10 = 0;
            v11 = 0;
            (*(*v12 + 64))(&v10);
            if (v10 && (*(*v10 + 96))(v10))
            {
              v3 |= 1 << v5;
            }

            if (v11)
            {
              sub_100004A34(v11);
            }
          }

          if (v13)
          {
            sub_100004A34(v13);
          }
        }
      }
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v3 != *(this + 656))
  {
    if (notify_is_valid_token(*(this + 1310)))
    {
      notify_set_state(*(this + 1310), v3);
      v6 = notify_post("com.apple.CoreTelephony.Slicing.Interfaces.Active.State");
      v7 = sub_100032AC8(this + 5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "com.apple.CoreTelephony.Slicing.Interfaces.Active.State";
        *&buf[12] = 2048;
        *&buf[14] = v3;
        v15 = 2048;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s notified 0x%llu: status = %lu", buf, 0x20u);
      }
    }

    if (notify_is_valid_token(*(this + 1311)))
    {
      notify_set_state(*(this + 1311), v3);
      v8 = notify_post("com.apple.private.restrict-post.CoreTelephony.Slicing.Interfaces.Active.State");
      v9 = sub_100032AC8(this + 5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "com.apple.private.restrict-post.CoreTelephony.Slicing.Interfaces.Active.State";
        *&buf[12] = 2048;
        *&buf[14] = v3;
        v15 = 2048;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s notified 0x%llu: status = %lu", buf, 0x20u);
      }
    }

    *(this + 656) = v3;
  }
}

void sub_1007A8B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A8BB0(const __CFDictionary *a1@<X0>, void *a2@<X8>)
{
  if (a1 && (Value = CFDictionaryGetValue(a1, @"bundleIDs")) != 0 && (v4 = Value, v5 = CFGetTypeID(Value), v5 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(v4);
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        if (ValueAtIndex)
        {
          v10 = CFGetTypeID(ValueAtIndex);
          if (v10 == CFStringGetTypeID())
          {
            __p[0] = 0;
            __p[1] = 0;
            v12 = 0;
            v13 = 0uLL;
            v14 = 0;
            ctu::cf::assign();
            *__p = v13;
            v12 = v14;
            sub_100005BA0(a2, __p, __p);
            if (SHIBYTE(v12) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }
    }
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }
}

void sub_1007A8CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100009970(v14, *(v14 + 8));
  _Unwind_Resume(a1);
}

void *sub_1007A8D18(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void *sub_1007A8DFC(void *result, void *a2)
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
        memset(v5, 0, sizeof(v5));
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

void sub_1007A905C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1007A90F4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E7DB78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007A9140(void *result, void *a2)
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
        memset(v5, 0, sizeof(v5));
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

void sub_1007A93A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1007A93AC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1007A9444(uint64_t a1)
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

uint64_t sub_1007A94C4(uint64_t a1)
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

uint64_t sub_1007A9544(uint64_t a1, uint64_t a2)
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

void *sub_1007A95DC(void *result, void *a2)
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
        memset(v5, 0, sizeof(v5));
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

void sub_1007A983C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1007A98E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1007A9920(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7DB98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007A99F0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7DBE8;
  a2[1] = v2;
  return result;
}

void sub_1007A9A1C(uint64_t a1, char *a2, char *a3)
{
  v3 = *(a1 + 8);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (v3 + 8));
  operator new();
}

uint64_t sub_1007A9B20(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007A9B6C(DataServiceController ***a1)
{
  v1 = a1;
  DataServiceController::resetSlicePoliciesOnVpnChange_sync(**a1, *(*a1 + 8), *(*a1 + 9));
  operator delete();
}

DataVPNManagerImpl **sub_1007A9BF4(DataVPNManagerImpl **a1, uint64_t a2)
{
  *a1 = 0;
  v4 = [DataVPNManagerImpl alloc];
  sub_100457284(v8, a2);
  v5 = [(DataVPNManagerImpl *)v4 initWithCallback:v8];
  v6 = *a1;
  *a1 = v5;

  sub_1003F2928(v8);
  return a1;
}

void sub_1007A9C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003F2928(va);

  _Unwind_Resume(a1);
}

void sub_1007A9CE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7DC68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007A9DB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7DCB8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007A9DF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

TerminusAvailabilityManagerImpl **sub_1007A9E3C(TerminusAvailabilityManagerImpl **a1, uint64_t a2, id *a3)
{
  v6 = objc_alloc_init(TerminusAvailabilityManagerImpl);
  *a1 = v6;
  sub_1007A93AC(v9, a2);
  v7 = sub_100032AC8(a3);
  [(TerminusAvailabilityManagerImpl *)v6 start:v9 queue:v7];

  sub_1007A9444(v9);
  return a1;
}

void sub_1007A9EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_1007A9444(va);
  _Unwind_Resume(a1);
}

void sub_1007A9F48(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7DD38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007AA018(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7DD88;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007AA044(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

DataTelephonyCallObserverImpl **sub_1007AA090(DataTelephonyCallObserverImpl **a1, uint64_t a2, id *a3)
{
  *a1 = 0;
  v6 = [DataTelephonyCallObserverImpl alloc];
  sub_1007A9544(v11, a2);
  v7 = sub_100032AC8(a3);
  v8 = [(DataTelephonyCallObserverImpl *)v6 initWithCallback:v11 queue:v7];
  v9 = *a1;
  *a1 = v8;

  sub_1007A94C4(v11);
  return a1;
}

void sub_1007AA150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = v4;

  sub_1007A94C4(va);
  _Unwind_Resume(a1);
}

CoreLocationAnalytics **sub_1007AA1F8(CoreLocationAnalytics **a1, id *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E7DE18;
  sub_1007AA2D4(a1 + 3, a2);
  return a1;
}

void sub_1007AA274(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7DE18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

CoreLocationAnalytics **sub_1007AA2D4(CoreLocationAnalytics **a1, id *a2)
{
  v5 = *a2;
  sub_1007AA34C(a1, &v5);
  v3 = v5;
  v5 = 0;

  return a1;
}

CoreLocationAnalytics **sub_1007AA34C(CoreLocationAnalytics **a1, id *a2)
{
  *a1 = 0;
  v4 = [CoreLocationAnalytics alloc];
  v5 = sub_100032AC8(a2);
  v6 = [(CoreLocationAnalytics *)v4 initWithQueue:v5];
  v7 = *a1;
  *a1 = v6;

  return a1;
}

uint64_t *sub_1007AA3DC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100009970(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return a1;
}

void sub_1007AA430(BOOL *a1)
{
  v2 = *a1;
  v3 = sub_100032AC8((*a1 + 40));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asStringBool(a1[8]);
    v5 = *(a1 + 4);
    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 1024;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I appsRegistered: %s (%u bundleIds)", buf, 0x12u);
  }

  v29[0] = 0;
  v29[1] = 0;
  v28 = v29;
  ServiceMap = Registry::getServiceMap(*(v2 + 104));
  v7 = ServiceMap;
  if (v8 < 0)
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
  *buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, buf);
  if (v12)
  {
    v13 = v12[3];
    v14 = v12[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = v14;
      sub_100004A34(v14);
      v27 = 0;
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v7);
  v26 = 0;
  v27 = 1;
  if (!v13)
  {
    goto LABEL_29;
  }

LABEL_12:
  v15 = *(a1 + 2);
  if (v15 != (a1 + 24))
  {
    do
    {
      v16 = v15 + 4;
      (*(*v13 + 72))(buf, v13, v15 + 4);
      v30[0] = v15 + 4;
      v17 = sub_1007AA92C(&v28, v15 + 4, &unk_101802C98, v30, &v31);
      v18 = v17 + 8;
      v19 = v17 + 7;
      sub_100009970((v17 + 7), v17[8]);
      v20 = *&buf[8];
      *(v18 - 1) = *buf;
      *v18 = v20;
      v21 = *&buf[16];
      v18[1] = *&buf[16];
      if (v21)
      {
        *(v20 + 16) = v18;
        *buf = &buf[8];
        *&buf[8] = 0uLL;
        v20 = 0;
      }

      else
      {
        *v19 = v18;
      }

      sub_100009970(buf, v20);
      *buf = v15 + 4;
      if (!sub_1007AA92C(&v28, v15 + 4, &unk_101802C98, buf, v30)[9])
      {
        v22 = sub_100032AC8((v2 + 40));
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          if (*(v15 + 55) < 0)
          {
            v16 = *v16;
          }

          *buf = 136446210;
          *&buf[4] = v16;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "cannot get UUIDs for bundle id: %{public}s (1)", buf, 0xCu);
        }
      }

      v23 = v15[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v15[2];
          v25 = *v24 == v15;
          v15 = v24;
        }

        while (!v25);
      }

      v15 = v24;
    }

    while (v24 != (a1 + 24));
  }

LABEL_29:
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  *buf = v2;
  buf[8] = a1[8];
  sub_1007AACF0(&buf[16], &v28);
  v30[0] = 0;
  v30[1] = 0;
  sub_100004AA0(v30, (v2 + 8));
  operator new();
}

void sub_1007AA8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1007AA3DC(va);
  _Unwind_Resume(a1);
}

void *sub_1007AA92C(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_100005C2C(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_1007AA9E0();
  }

  return v5;
}

uint64_t *sub_1007AAA84(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 != (v1 + 24))
  {
    do
    {
      v4 = sub_100032AC8((v2 + 40));
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v3 + 4;
        if (*(v3 + 55) < 0)
        {
          v5 = v3[4];
        }

        v6 = asStringBool(*(v1 + 8));
        v7 = v3[9];
        *buf = 136315650;
        *&buf[4] = v5;
        v18 = 2080;
        v19 = v6;
        v20 = 1024;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I appsRegistered[%s]: %s (%u uuids)", buf, 0x1Cu);
      }

      if (v3[9] || (v12 = sub_100007A6C(v2 + 4984, v3 + 32), v2 + 4992 == v12) || (*(v12 + 112) & 1) == 0)
      {
        *buf = v3 + 4;
        v8 = sub_1004C2088((v2 + 4984), v3 + 4, &unk_101802C98, buf, &v16);
        sub_1002644E8((v8 + 11), v3 + 56);
      }

      v9 = v3[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != (v1 + 24));
  }

  DataServiceController::resetSlicePolicies_sync(v2, 3, 1, 0);
  sub_1007AAC9C(&v15);
  return sub_1000049E0(&v14);
}

void sub_1007AAC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  sub_1007AAC9C(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007AAC9C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10036F160(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return a1;
}

void *sub_1007AACF0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1007AAD48(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1007AAD48(void *result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007AADD0(v5, (v5 + 8), v4 + 32, (v4 + 32));
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

void *sub_1007AADD0(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v9 = 0;
  v10 = 0;
  v4 = *sub_100074A00(a1, a2, &v10, &v9, a3);
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    sub_1007AAE70();
  }

  return v4;
}

uint64_t **sub_1007AAEE8(uint64_t **__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_100074920(__dst + 3, a2 + 24);
  return __dst;
}

void sub_1007AAF44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1007AAF60(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

void sub_1007ABDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, int a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, char *a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54, uint64_t a55, void *a56, void *a57, std::__shared_weak_count *a58)
{
  if (a58)
  {
    sub_100004A34(a58);
  }

  sub_100004A34(a13);
  sub_1007ADBC0(&a47, a48);
  sub_1007AD620(&a50, a51);
  if ((a15 & 1) == 0)
  {
    sub_100004A34(a12);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a54)
  {
    sub_100004A34(a54);
  }

  sub_1007AAF60(&a26);
  _Unwind_Resume(a1);
}

void *sub_1007AC098(void *a1, std::mutex *this)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E7DE68;
  a1[3] = this;
  std::mutex::lock(this);
  return a1;
}

void sub_1007AC11C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7DE68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1007AC1F0(void *a1, const char **a2, const char *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E50888;
  ctu::OsLogLogger::OsLogLogger((a1 + 3), *a2, a3);
  return a1;
}

void sub_1007AC250(uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_100009970((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_1007AC2B0(uint64_t **a1, uint64_t ***a2, uint64_t a3, _OWORD **a4)
{
  v6 = 0;
  v4 = *sub_100005C2C(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1007AC37C(uint64_t *a1)
{
  v1 = *a1;
  v72 = a1;
  v73 = v1;
  v2 = *v1;
  bzero(v76, 0x3D8uLL);
  v75 = -1;
  sub_10000501C(v76, "Managed Apps");
  v76[3] = 36;
  sub_10000501C(v77, "Mobile Software Apps");
  v77[3] = 6000;
  sub_10000501C(v78, "Business Apps");
  v78[3] = 6001;
  sub_10000501C(v79, "Weather Apps");
  v79[3] = 6002;
  sub_10000501C(v80, "Utilities Apps");
  v80[3] = 6003;
  sub_10000501C(v81, "Travel Apps");
  v81[3] = 6004;
  sub_10000501C(v82, "Sports Apps");
  v82[3] = 6005;
  sub_10000501C(v83, "Social Networking Apps");
  v83[3] = 6006;
  sub_10000501C(v84, "Reference Apps");
  v84[3] = 6007;
  sub_10000501C(v85, "Productivity Apps");
  v85[3] = 6008;
  sub_10000501C(v86, "Photo & Video Apps");
  v86[3] = 6009;
  sub_10000501C(v87, "News Apps");
  v87[3] = 6010;
  sub_10000501C(v88, "Navigation Apps");
  v88[3] = 6011;
  sub_10000501C(v89, "Music Apps");
  v89[3] = 6012;
  sub_10000501C(v90, "Lifestyle Apps");
  v90[3] = 6013;
  sub_10000501C(v91, "Health & Fitness Apps");
  v91[3] = 6014;
  sub_10000501C(v92, "Games Apps");
  v92[3] = 6015;
  sub_10000501C(v93, "Finance Apps");
  v93[3] = 6016;
  sub_10000501C(v94, "Entertainment Apps");
  v94[3] = 6017;
  sub_10000501C(v95, "Education Apps");
  v95[3] = 6018;
  sub_10000501C(v96, "Books Apps");
  v96[3] = 6020;
  sub_10000501C(v97, "Medical Apps");
  v97[3] = 6021;
  sub_10000501C(v98, "Magazines & Newspapers Apps");
  v98[3] = 6022;
  sub_10000501C(v99, "Catalogs Apps");
  v99[3] = 6023;
  sub_10000501C(v100, "Food & Drink Apps");
  v100[3] = 6024;
  sub_10000501C(v101, "Shopping Apps");
  v101[3] = 6025;
  sub_10000501C(v102, "Stickers Apps");
  v102[3] = 6026;
  sub_10000501C(v103, "Developer Tools Apps");
  v103[3] = 6027;
  sub_10000501C(v104, "Graphics & Design Apps");
  v104[3] = 9000;
  sub_10000501C(v105, "Communication Apps");
  v105[3] = 9001;
  sub_10000501C(v106, "Streaming Apps");
  v3 = sub_100032AC8(*(v1 + 8));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v1 + 24);
    if (*(v1 + 47) < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Update slicing definitions (full), reason: %{public}s (stage 2)", buf, 0xCu);
  }

  v71 = v1;

  if (v2 + 623 != (v1 + 48))
  {
    sub_1007AD230(v2 + 623, *(v1 + 48), (v1 + 56));
  }

  if (v2 + 632 != (v1 + 72))
  {
    sub_1007AD9E8(v2 + 632, *(v1 + 72), (v1 + 80));
  }

  v6 = *(v1 + 96);
  v5 = *(v1 + 104);
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v2[635] = v6;
  v7 = v2[636];
  v2[636] = v5;
  if (v7)
  {
    sub_100004A34(v7);
  }

  context = objc_autoreleasePoolPush();
  ServiceMap = Registry::getServiceMap(v2[13]);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (!v14)
  {
    v15 = 0;
    goto LABEL_20;
  }

  v15 = v14[3];
  v16 = v14[4];
  if (!v16)
  {
LABEL_20:
    std::mutex::unlock(v9);
    v68 = 0;
    v70 = 1;
    goto LABEL_21;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v68 = v16;
  sub_100004A34(v16);
  v70 = 0;
LABEL_21:
  v17 = 0;
  v18 = kAlertDialogLocalizationTable;
  do
  {
    v19 = &v76[v17 - 1];
    if (v15)
    {
      v107 = 0;
      if (*v19 == -1)
      {
        (*(*v15 + 40))(&v108, v15, v18, @"GENRE_FOR_SLICING_MANAGED", 0);
        *buf = v107;
        v107 = v108;
        *&v108 = 0;
        sub_100005978(buf);
        sub_100005978(&v108);
      }

      else
      {
        v20 = [NSString stringWithFormat:@"GENRE_FOR_SLICING_%llu", *v19];
        (*(*v15 + 40))(&v108, v15, v18, v20, 0);
        *buf = v107;
        v107 = v108;
        *&v108 = 0;
        sub_100005978(buf);
        sub_100005978(&v108);
      }

      if (v107)
      {
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        v29 = *buf;
        *&v108 = *&buf[8];
        *(&v108 + 7) = *&buf[15];
        v30 = buf[23];
        v31 = v2[635];
        *buf = &v76[v17 - 1];
        v32 = sub_1004C5D94(v31, &v76[v17 - 1], &unk_101802C98, buf);
        v33 = v32;
        if (*(v32 + 63) < 0)
        {
          operator delete(v32[5]);
        }

        v34 = v108;
        v33[5] = v29;
        v33[6] = v34;
        *(v33 + 55) = *(&v108 + 7);
        *(v33 + 63) = v30;
      }

      else
      {
        v35 = v2[635];
        v36 = *(v35 + 8);
        if (!v36)
        {
          goto LABEL_47;
        }

        v37 = *v19;
        v38 = v35 + 8;
        do
        {
          v39 = *(v36 + 32);
          v26 = v39 >= v37;
          v40 = v39 < v37;
          if (v26)
          {
            v38 = v36;
          }

          v36 = *(v36 + 8 * v40);
        }

        while (v36);
        if (v38 == v35 + 8 || v37 < *(v38 + 32))
        {
LABEL_47:
          *buf = &v76[v17 - 1];
          v41 = sub_1004C5D94(v35, &v76[v17 - 1], &unk_101802C98, buf);
          std::string::operator=((v41 + 5), (v19 + 1));
        }
      }

      sub_100005978(&v107);
    }

    else
    {
      v21 = v2[635];
      v22 = *(v21 + 8);
      if (!v22)
      {
        goto LABEL_33;
      }

      v23 = *v19;
      v24 = v21 + 8;
      do
      {
        v25 = *(v22 + 32);
        v26 = v25 >= v23;
        v27 = v25 < v23;
        if (v26)
        {
          v24 = v22;
        }

        v22 = *(v22 + 8 * v27);
      }

      while (v22);
      if (v24 == v21 + 8 || v23 < *(v24 + 32))
      {
LABEL_33:
        *buf = &v76[v17 - 1];
        v28 = sub_1004C5D94(v21, &v76[v17 - 1], &unk_101802C98, buf);
        std::string::operator=((v28 + 5), (v19 + 1));
      }
    }

    v17 += 4;
  }

  while (v17 != 124);
  if ((v70 & 1) == 0)
  {
    sub_100004A34(v68);
  }

  objc_autoreleasePoolPop(context);
  v42 = v71;
  sub_10006DCAC((v2 + 626), v2[627]);
  v2[626] = (v2 + 627);
  *(v2 + 627) = 0u;
  sub_10006DCAC((v2 + 629), v2[630]);
  v2[629] = (v2 + 630);
  *(v2 + 315) = 0u;
  *(v2 + 5347) = *(v71 + 113);
  v43 = *(v71 + 112);
  if (*(v2 + 5346) != v43)
  {
    *(v2 + 5346) = v43;
    if (v43)
    {
      v44 = v2[14];
      *&v108 = v2[13];
      *(&v108 + 1) = v44;
      if (v44)
      {
        atomic_fetch_add_explicit(v44 + 1, 1uLL, memory_order_relaxed);
      }

      subscriber::makeSimSlotRange();
      if (*(&v108 + 1))
      {
        sub_100004A34(*(&v108 + 1));
      }

      v45 = *buf;
      v46 = *&buf[8];
      if (*buf != *&buf[8])
      {
        v47 = *&buf[16];
        do
        {
          if (v47(*v45))
          {
            break;
          }

          ++v45;
        }

        while (v45 != v46);
        v48 = *&buf[8];
        if (v45 != *&buf[8])
        {
          while (1)
          {
            v49 = *v45;
            v50 = sub_100032AC8(*(v42 + 8));
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v51 = subscriber::asString();
              LODWORD(v108) = 136315138;
              *(&v108 + 4) = v51;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Enabling slicing feature on supervisedDevice device (%s)", &v108, 0xCu);
            }

            v52 = Registry::getServiceMap(v2[13]);
            v53 = v52;
            if (v54 < 0)
            {
              v55 = (v54 & 0x7FFFFFFFFFFFFFFFLL);
              v56 = 5381;
              do
              {
                v54 = v56;
                v57 = *v55++;
                v56 = (33 * v56) ^ v57;
              }

              while (v57);
            }

            std::mutex::lock(v52);
            v107 = v54;
            v58 = sub_100009510(&v53[1].__m_.__sig, &v107);
            if (!v58)
            {
              break;
            }

            v60 = v58[3];
            v59 = v58[4];
            if (!v59)
            {
              goto LABEL_72;
            }

            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v53);
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
            v49 = v49;
            sub_100004A34(v59);
            v61 = 0;
LABEL_73:
            (*(*v60 + 8))(&v108, v60, v49);
            v74 = 0;
            (*(*v108 + 32))(v108, 4, 1, &v74);
            sub_10001021C(&v74);
            if (*(&v108 + 1))
            {
              sub_100004A34(*(&v108 + 1));
            }

            if ((v61 & 1) == 0)
            {
              sub_100004A34(v59);
            }

            if (++v45 == v46)
            {
              v42 = v71;
            }

            else
            {
              v42 = v71;
              do
              {
                if (v47(*v45))
                {
                  break;
                }

                ++v45;
              }

              while (v45 != v46);
            }

            if (v45 == v48)
            {
              goto LABEL_84;
            }
          }

          v60 = 0;
LABEL_72:
          std::mutex::unlock(v53);
          v59 = 0;
          v61 = 1;
          goto LABEL_73;
        }
      }
    }
  }

LABEL_84:
  v62 = ((*v2)[140])(v2);
  v63 = DataServiceController::SlicesDataContainer::useEntitlementsGenres((v2 + 620), v62);
  DataServiceController::adjustSlicesAppsDb(v2, v63 ^ 1);
  v64 = (v42 + 24);
  ((*v2)[303])(v2, 3, v42 + 24, 0);
  v65 = sub_100032AC8(*(v42 + 8));
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v42 + 47) < 0)
    {
      v64 = *v64;
    }

    *buf = 136446210;
    *&buf[4] = v64;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I Update slicing definitions (full), reason: %{public}s (stage 2 ends)", buf, 0xCu);
  }

  memset(buf, 0, sizeof(buf));
  DataServiceController::handleFrontmostAppsChanged_sync(v2);
  *&v108 = buf;
  sub_1000087B4(&v108);
  v66 = 124;
  do
  {
    if (*(&v76[v66 - 1] - 1) < 0)
    {
      operator delete((&v72)[v66]);
    }

    v66 -= 4;
  }

  while (v66 * 8);
  sub_1007AD19C(&v73);
  return sub_1000049E0(&v72);
}

void sub_1007ACFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v21 = va_arg(va1, void);
  v18 = *(v16 - 136);
  if (v18)
  {
    sub_100004A34(v18);
  }

  v19 = &STACK[0x420];
  v20 = -992;
  while (1)
  {
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    v19 -= 4;
    v20 += 32;
    if (!v20)
    {
      sub_1007AD19C(va1);
      sub_1000049E0(va);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t *sub_1007AD19C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 128);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 104);
    if (v3)
    {
      sub_100004A34(v3);
    }

    sub_1007ADBC0(v1 + 72, *(v1 + 80));
    sub_1007AD620(v1 + 48, *(v1 + 56));
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return a1;
}

uint64_t **sub_1007AD230(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
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

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          sub_1007AD3B8((v8 + 4), (v9 + 4));
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_1007AD5C8(&v13);
  }

  if (a2 != a3)
  {
    sub_1007AD6CC(v5);
  }

  return result;
}

std::string *sub_1007AD3B8(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1, a2);
  sub_1007AD418(&a1[1], &a2[1]);
  sub_1007AD4A8(&a1[2].__r_.__value_.__l.__size_, &a2[2].__r_.__value_.__l.__size_);
  v4 = a2[3].__r_.__value_.__r.__words[2];
  a1[4].__r_.__value_.__s.__data_[0] = a2[4].__r_.__value_.__s.__data_[0];
  a1[3].__r_.__value_.__r.__words[2] = v4;
  sub_1007AD538(&a1[4].__r_.__value_.__l.__size_, &a2[4].__r_.__value_.__l.__size_);
  return a1;
}

void sub_1007AD418(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v4 = (a2 + 8);
      v3 = *a2;

      sub_1004C06CC(a1, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    sub_10006DCAC(a1, *(a1 + 8));
    *(a1 + 24) = 0;
  }

  else
  {
    sub_1002B84C8(a1, a2);
    *(a1 + 24) = 1;
  }
}

void sub_1007AD4A8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v4 = (a2 + 8);
      v3 = *a2;

      sub_1001730B8(a1, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    sub_100009970(a1, *(a1 + 8));
    *(a1 + 24) = 0;
  }

  else
  {
    sub_100074920(a1, a2);
    *(a1 + 24) = 1;
  }
}

void sub_1007AD538(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v4 = (a2 + 8);
      v3 = *a2;

      sub_1004C08D0(a1, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    sub_10006DCAC(a1, *(a1 + 8));
    *(a1 + 24) = 0;
  }

  else
  {
    sub_1004C0AD4(a1, a2);
    *(a1 + 24) = 1;
  }
}

uint64_t *sub_1007AD5C8(uint64_t *a1)
{
  sub_1007AD620(*a1, a1[2]);
  v2 = a1[1];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      a1[1] = v2;
    }

    sub_1007AD620(*a1, v2);
  }

  return a1;
}

void sub_1007AD620(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1007AD620(a1, *a2);
    sub_1007AD620(a1, *(a2 + 1));
    if (a2[160] == 1)
    {
      sub_10006DCAC((a2 + 136), *(a2 + 18));
    }

    if (a2[112] == 1)
    {
      sub_100009970((a2 + 88), *(a2 + 12));
    }

    if (a2[80] == 1)
    {
      sub_10006DCAC((a2 + 56), *(a2 + 8));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1007AD6CC(uint64_t **a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  sub_1007AD730();
}

void sub_1007AD7A8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1004C2200(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_1007AD7C4(char *__dst, __int128 *a2)
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

  sub_1007AD8A4((__dst + 24), a2 + 24);
  sub_1007AD910((__dst + 56), a2 + 56);
  v5 = *(a2 + 11);
  __dst[96] = *(a2 + 96);
  *(__dst + 11) = v5;
  sub_1007AD97C((__dst + 104), a2 + 104);
  return __dst;
}

void sub_1007AD848(_Unwind_Exception *exception_object)
{
  if (*(v1 + 80) == 1)
  {
    sub_100009970(v1 + 56, *(v1 + 64));
  }

  if (*(v1 + 48) == 1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007AD8A4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    sub_1002B84C8(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1007AD8EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_10006DCAC(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007AD910(uint64_t a1, char *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (a2[24] == 1)
  {
    sub_100074920(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1007AD958(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_100009970(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007AD97C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    sub_1004C0AD4(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1007AD9C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_10006DCAC(v1, *(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1007AD9E8(uint64_t *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
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
          v8[4] = v9[4];
          if (v8 != v9)
          {
            sub_1001730B8(v8 + 5, v9[5], v9 + 6);
            v8 = v14;
          }

          sub_10024FB30(v5, v8);
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

    result = sub_1007ADB68(&v12);
  }

  if (a2 != a3)
  {
    sub_1007ADC20(v5);
  }

  return result;
}

void sub_1007ADB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007ADB68(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007ADB68(uint64_t *a1)
{
  sub_1007ADBC0(*a1, a1[2]);
  v2 = a1[1];
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
      a1[1] = v2;
    }

    sub_1007ADBC0(*a1, v2);
  }

  return a1;
}

void sub_1007ADBC0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007ADBC0(a1, *a2);
    sub_1007ADBC0(a1, a2[1]);
    sub_100009970((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_1007ADD2C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007AC250(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_1007ADD48(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1007ADDA0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1007ADDA0(uint64_t result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007ADE28(v5, (v5 + 8), v4 + 32);
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

uint64_t sub_1007ADE28(uint64_t **a1, uint64_t *a2, char *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_100074A00(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1007AD730();
  }

  return result;
}
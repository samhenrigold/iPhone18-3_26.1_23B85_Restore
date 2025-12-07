void sub_1004A8834(_Unwind_Exception *exception_object)
{
  if (*(v1 - 233) < 0)
  {
    operator delete(*(v1 - 256));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004A8884(FILE *a1, _OWORD *a2, uint64_t a3, int *a4, void *a5)
{
  if (a1)
  {
    if (a2)
    {
      if (!feof(a1))
      {
        v14 = 0;
        v15 = (a3 + 24);
        while (1)
        {
          LOBYTE(__ptr[0]) = 0;
          if (fread(__ptr, 1uLL, 1uLL, a1) != 1)
          {
            return 0;
          }

          v16 = ftell(a1);
          if (LOBYTE(__ptr[0]) == 67)
          {
            v17 = v16;
            LOBYTE(v108) = 67;
            if (fread(&v108 + 1, 1uLL, 8uLL, a1) != 8)
            {
              return 0;
            }

            *(a3 + 32) = v109;
            *v15 = v108;
            if (*(a3 + 24) == 0x5641455352484C43 && *(a3 + 32) == 76)
            {
              v19 = 0;
              *a4 = 9;
              do
              {
                *(a2 + v19) = *(v15 + v19);
                ++v19;
                v20 = *a4;
              }

              while (*a4 > v19);
              v21 = (110 - v20);
              if (fread(a2 + v20, 1uLL, v21, a1) == v21)
              {
                v22 = *a2;
                v23 = a2[2];
                *(a3 + 40) = a2[1];
                *(a3 + 56) = v23;
                *v15 = v22;
                v24 = a2[3];
                v25 = a2[4];
                v26 = a2[5];
                *(a3 + 118) = *(a2 + 94);
                *(a3 + 88) = v25;
                *(a3 + 104) = v26;
                *(a3 + 72) = v24;
                v27 = *a4 + v21;
                *a4 = v27;
                if (*(a3 + 24) == 0x5641455352484C43 && *(a3 + 32) == 76)
                {
                  if (fread(a2 + v27, 1uLL, 1uLL, a1) == 1)
                  {
                    v28 = *a4;
                    *(a3 + 134) = *(a2 + *a4);
                    *a4 = ++v28;
                    if (fread(a2 + v28, 1uLL, 1uLL, a1) == 1)
                    {
                      v29 = *a4;
                      *(a3 + 135) = *(a2 + *a4);
                      *a4 = ++v29;
                      if (fread(a2 + v29, 1uLL, 1uLL, a1) == 1)
                      {
                        v30 = *a4;
                        *(a3 + 136) = *(a2 + *a4);
                        *a4 = ++v30;
                        if (fread(a2 + v30, 1uLL, 1uLL, a1) == 1)
                        {
                          v31 = *a4;
                          *(a3 + 137) = *(a2 + *a4);
                          *a4 = ++v31;
                          if (fread(a2 + v31, 1uLL, 4uLL, a1) == 4)
                          {
                            v32 = *a4;
                            v33 = COERCE_FLOAT(bswap32(*(a2 + *a4)));
                            *(a3 + 140) = v33;
                            v34 = v32 + 4;
                            *a4 = v34;
                            if (fabsf(v33 + -0.05) <= 0.0001)
                            {
                              if (fread(a2 + v34, 1uLL, 8uLL, a1) == 8)
                              {
                                v46 = *a4;
                                *(a3 + 144) = bswap64(*(a2 + *a4));
                                v46 += 8;
                                *a4 = v46;
                                if (fread(a2 + v46, 1uLL, 4uLL, a1) == 4)
                                {
                                  v47 = *a4;
                                  *(a3 + 152) = bswap32(*(a2 + *a4));
                                  v47 += 4;
                                  *a4 = v47;
                                  if (fread(a2 + v47, 1uLL, 4uLL, a1) == 4)
                                  {
                                    v48 = *a4;
                                    *(a3 + 156) = bswap32(*(a2 + *a4));
                                    v48 += 4;
                                    *a4 = v48;
                                    if (fread(a2 + v48, 1uLL, 4uLL, a1) == 4)
                                    {
                                      *a5 = *a4;
                                      v49 = *a4;
                                      *(a3 + 160) = bswap32(*(a2 + *a4));
                                      *a4 = v49 + 4;
                                      if (qword_1025D4650 != -1)
                                      {
                                        sub_101893D4C();
                                      }

                                      v50 = qword_1025D4658;
                                      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
                                      {
                                        v51 = *(a3 + 134);
                                        v52 = *(a3 + 135);
                                        v53 = *(a3 + 136);
                                        v54 = *(a3 + 137);
                                        v55 = *(a3 + 140);
                                        v56 = *(a3 + 144);
                                        v57 = *(a3 + 152);
                                        v58 = *(a3 + 156);
                                        v59 = *(a3 + 160);
                                        *buf = 67176705;
                                        *v93 = v51;
                                        *&v93[4] = 1025;
                                        *&v93[6] = v52;
                                        v94 = 1029;
                                        v95 = v53;
                                        v96 = 1029;
                                        v97 = v54;
                                        v98 = 2049;
                                        v99 = v55;
                                        v100 = 2049;
                                        v101 = v56;
                                        v102 = 1025;
                                        v103 = v57;
                                        v104 = 1025;
                                        v105 = v58;
                                        v106 = 1025;
                                        v107 = v59;
                                        _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "HRSE,readAvlHelper,vers,%{private}d,headerLen,%{private}d,minLat,%{sensitive}d,maxLat,%{sensitive}d,binsize,%{private}.7f,timestamp,%{private}.1f,expirationAge,%{private}d,dataSizeBytes,%{private}d,crc,%{private}d", buf, 0x40u);
                                      }

                                      if (sub_10000A100(121, 2))
                                      {
                                        bzero(buf, 0x65CuLL);
                                        if (qword_1025D4650 != -1)
                                        {
                                          sub_101893E7C();
                                        }

                                        v64 = *(a3 + 134);
                                        v65 = *(a3 + 135);
                                        v66 = *(a3 + 136);
                                        v67 = *(a3 + 137);
                                        v68 = *(a3 + 140);
                                        v69 = *(a3 + 144);
                                        v70 = *(a3 + 152);
                                        v71 = *(a3 + 156);
                                        v72 = *(a3 + 160);
                                        __ptr[0] = 67176705;
                                        __ptr[1] = v64;
                                        v76 = 1025;
                                        v77 = v65;
                                        v78 = 1029;
                                        v79 = v66;
                                        v80 = 1029;
                                        v81 = v67;
                                        v82 = 2049;
                                        v83 = v68;
                                        v84 = 2049;
                                        v85 = v69;
                                        v86 = 1025;
                                        v87 = v70;
                                        v88 = 1025;
                                        v89 = v71;
                                        v90 = 1025;
                                        v91 = v72;
                                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "HRSE,readAvlHelper,vers,%{private}d,headerLen,%{private}d,minLat,%{sensitive}d,maxLat,%{sensitive}d,binsize,%{private}.7f,timestamp,%{private}.1f,expirationAge,%{private}d,dataSizeBytes,%{private}d,crc,%{private}d", __ptr, 64);
                                        v74 = v73;
                                        sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLHrseTileAvailability::readAvlHelper(FILE *, unsigned char *, CLHRSETileAvailability &, size_t &, size_t &)", "%s\n", v73);
                                        if (v74 != buf)
                                        {
                                          free(v74);
                                        }
                                      }

                                      return 1;
                                    }

                                    else
                                    {
                                      if (qword_1025D4650 != -1)
                                      {
                                        sub_101893D4C();
                                      }

                                      v63 = qword_1025D4658;
                                      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                                      {
                                        *buf = 0;
                                        _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - crc", buf, 2u);
                                      }

                                      result = sub_10000A100(121, 0);
                                      if (result)
                                      {
                                        sub_101894938();
                                        return 0;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    if (qword_1025D4650 != -1)
                                    {
                                      sub_101893D4C();
                                    }

                                    v62 = qword_1025D4658;
                                    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                                    {
                                      *buf = 0;
                                      _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - data size", buf, 2u);
                                    }

                                    result = sub_10000A100(121, 0);
                                    if (result)
                                    {
                                      sub_10189485C();
                                      return 0;
                                    }
                                  }
                                }

                                else
                                {
                                  if (qword_1025D4650 != -1)
                                  {
                                    sub_101893D4C();
                                  }

                                  v61 = qword_1025D4658;
                                  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 0;
                                    _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - expiration age", buf, 2u);
                                  }

                                  result = sub_10000A100(121, 0);
                                  if (result)
                                  {
                                    sub_101894780();
                                    return 0;
                                  }
                                }
                              }

                              else
                              {
                                if (qword_1025D4650 != -1)
                                {
                                  sub_101893D4C();
                                }

                                v60 = qword_1025D4658;
                                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 0;
                                  _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - timestamp", buf, 2u);
                                }

                                result = sub_10000A100(121, 0);
                                if (result)
                                {
                                  sub_1018946A4();
                                  return 0;
                                }
                              }
                            }

                            else
                            {
                              v35 = (a3 + 140);
                              if (qword_1025D4650 != -1)
                              {
                                sub_101893D4C();
                              }

                              v36 = qword_1025D4658;
                              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                              {
                                v37 = *v35;
                                *buf = 134349056;
                                *v93 = v37;
                                _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,coarse avl file is not 0.05 deg by 0.05 deg,spacing unexpected,%{public}.1f,re-download needed", buf, 0xCu);
                              }

                              result = sub_10000A100(121, 0);
                              if (result)
                              {
                                sub_101894A14(v35);
                                return 0;
                              }
                            }
                          }

                          else
                          {
                            if (qword_1025D4650 != -1)
                            {
                              sub_101893D4C();
                            }

                            v45 = qword_1025D4658;
                            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 0;
                              _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - binsize", buf, 2u);
                            }

                            result = sub_10000A100(121, 0);
                            if (result)
                            {
                              sub_1018945C8();
                              return 0;
                            }
                          }
                        }

                        else
                        {
                          if (qword_1025D4650 != -1)
                          {
                            sub_101893D4C();
                          }

                          v44 = qword_1025D4658;
                          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 0;
                            _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - maxLat", buf, 2u);
                          }

                          result = sub_10000A100(121, 0);
                          if (result)
                          {
                            sub_1018944EC();
                            return 0;
                          }
                        }
                      }

                      else
                      {
                        if (qword_1025D4650 != -1)
                        {
                          sub_101893D4C();
                        }

                        v43 = qword_1025D4658;
                        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - minLat", buf, 2u);
                        }

                        result = sub_10000A100(121, 0);
                        if (result)
                        {
                          sub_101894410();
                          return 0;
                        }
                      }
                    }

                    else
                    {
                      if (qword_1025D4650 != -1)
                      {
                        sub_101893D4C();
                      }

                      v42 = qword_1025D4658;
                      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - headerLength", buf, 2u);
                      }

                      result = sub_10000A100(121, 0);
                      if (result)
                      {
                        sub_101894334();
                        return 0;
                      }
                    }
                  }

                  else
                  {
                    if (qword_1025D4650 != -1)
                    {
                      sub_101893D4C();
                    }

                    v41 = qword_1025D4658;
                    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - version", buf, 2u);
                    }

                    result = sub_10000A100(121, 0);
                    if (result)
                    {
                      sub_101894258();
                      return 0;
                    }
                  }
                }

                else
                {
                  if (qword_1025D4650 != -1)
                  {
                    sub_101893D4C();
                  }

                  v40 = qword_1025D4658;
                  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - invalid header string", buf, 2u);
                  }

                  result = sub_10000A100(121, 0);
                  if (result)
                  {
                    sub_10189417C();
                    return 0;
                  }
                }
              }

              else
              {
                if (qword_1025D4650 != -1)
                {
                  sub_101893D4C();
                }

                v39 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file - header string", buf, 2u);
                }

                result = sub_10000A100(121, 0);
                if (result)
                {
                  sub_1018940A0();
                  return 0;
                }
              }

              return result;
            }

            if (fseek(a1, v17, 0))
            {
              if (qword_1025D4650 != -1)
              {
                sub_101893D4C();
              }

              v38 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,fseek returned non-zero", buf, 2u);
              }

              if (sub_10000A100(121, 0))
              {
                sub_101893EE8();
              }

              return 0;
            }
          }

          if (!feof(a1) && v14++ < 0x1FF)
          {
            continue;
          }

          break;
        }
      }

      if (qword_1025D4650 != -1)
      {
        sub_101893D4C();
      }

      v10 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,did not synchronize to tile header_string", buf, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101893FC4();
        return 0;
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101893D4C();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,null buffer", buf, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101894B24();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101893D4C();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#Error,HRSE,readAvlHelper,invalid availability file", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101894C00();
      return 0;
    }
  }

  return result;
}

void *sub_1004A95C0(uint64_t a1)
{
  result = sub_1001FB750(a1);
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  return result;
}

uint64_t sub_1004A964C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = a3;
  sub_100F44CC0(a1 + 8, a2);
  *(a1 + 112) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  v12 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v10 = _Q0;
  v11 = _Q0;
  sub_1004ABBB4((a1 + 208), 0xCuLL, &v11);
  *(a1 + 256) = v10;
  *(a1 + 272) = v10;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  sub_1004A9728(a1);
  return a1;
}

void sub_1004A96EC(_Unwind_Exception *a1)
{
  sub_1000F8B58(v3 + 12);
  sub_1003FFD68(v4);
  sub_100102BC8(v3);
  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

double sub_1004A9728(uint64_t a1)
{
  v2 = ([+[NSTimeZone secondsFromGMT]% 3600 localTimeZone];
  if (v2 != *(a1 + 296))
  {
    if (qword_1025D4230 != -1)
    {
      sub_101894CDC();
    }

    v4 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 296);
      v6[0] = 67109376;
      v6[1] = v5;
      v7 = 1024;
      v8 = v2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "StandPlus,time zone change,clearing everything,old,%d,new,%d", v6, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101894CF0((a1 + 296), v2);
    }

    *(a1 + 296) = v2;
    *&result = sub_1004A986C(a1).n128_u64[0];
  }

  return result;
}

__n128 sub_1004A986C(uint64_t a1)
{
  sub_1008AFA98((a1 + 8));
  v2 = *(a1 + 120);
  v3 = *(a1 + 128);
  *(a1 + 152) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 128);
      v2 = (*(a1 + 120) + 8);
      *(a1 + 120) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 256;
  }

  *(a1 + 144) = v6;
LABEL_8:
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  *(a1 + 200) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 176);
      v7 = (*(a1 + 168) + 8);
      *(a1 + 168) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 51;
    goto LABEL_14;
  }

  if (v9 == 2)
  {
    v11 = 102;
LABEL_14:
    *(a1 + 192) = v11;
  }

  v20 = 0;
  v22 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v18 = _Q0;
  memset(v19, 0, sizeof(v19));
  v21 = _Q0;
  sub_1004ABBB4(v19, 0xCuLL, &v21);
  v20 = 0xBFF0000000000000;
  sub_1004AC150((a1 + 208), v19);
  *(a1 + 256) = v20;
  sub_1000F8B58(v19);
  *(a1 + 264) = 0xBFF0000000000000;
  result = v18;
  *(a1 + 272) = v18;
  *(a1 + 288) = 0xBFF0000000000000;
  return result;
}

void sub_1004A99B4(uint64_t a1, double *a2)
{
  v4 = *a2;
  *(a1 + 280) = *a2;
  if (*(a1 + 288) > *(a1 + 256))
  {
    sub_1004A9CA4(a1);
    v6 = *(a1 + 168);
    if (*(a1 + 176) == v6)
    {
      v8 = 0;
    }

    else
    {
      v7 = *(a1 + 200) + *(a1 + 192);
      v8 = *(v6 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
    }

    if (v8 == v5 || v4 < *(v5 + 8))
    {
      if (qword_1025D4230 != -1)
      {
        sub_101894CDC();
      }

      v9 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "StandPlus,ignoring calorimetry input", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101894F10();
      }

      sub_1004A9DF0(a1);
      sub_1004AA1F8(a1);
      return;
    }

    *(a1 + 288) = 0xBFF0000000000000;
  }

  sub_100F44CF0(a1 + 8, a2);
  v25.n128_f64[0] = v10;
  v25.n128_u64[1] = v11;
  if (v10 != *(a1 + 264) && (v10 != -1.0 || *(a1 + 152) != 0))
  {
    sub_1004AA308(a1, &v25);
  }

  sub_1004A9DF0(a1);
  sub_1004AA1F8(a1);
  if (*(a1 + 200) >= 8uLL)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101894DFC();
    }

    v13 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "StandPlus,maxReached,sedentaryTimer", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101894E24();
    }

    v14 = *(a1 + 192);
    v15 = *(a1 + 168);
    v16 = (v15 + 8 * (v14 / 0x66));
    if (*(a1 + 176) == v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = (*v16 + 40 * (v14 % 0x66));
    }

    v18 = *(a1 + 200);
    *buf = v15 + 8 * (v14 / 0x66);
    v27 = v17;
    sub_1000C5804(buf, v18);
    v19 = &v27[-**buf];
    v20 = 0xCCCCCCCCCCCCCCCDLL * (v19 >> 3);
    if (v19 < 321)
    {
      v24 = 109 - v20;
      v22 = (*buf - 8 * (v24 / 0x66));
      v23 = (*v22 + 40 * (102 * (v24 / 0x66) - v24) + 4040);
    }

    else
    {
      v21 = v20 - 8;
      v22 = (*buf + 8 * (v21 / 0x66));
      v23 = (*v22 + 40 * (v21 % 0x66));
    }

    sub_1004AA4E8((a1 + 160), v16, v17, v22, v23);
  }
}

void *sub_1004A9CA4(uint64_t a1)
{
  v1 = *(a1 + 192);
  v2 = v1 + *(a1 + 200);
  v3 = *(a1 + 168);
  v4 = *(a1 + 176);
  v5 = (v3 + 8 * (v2 / 0x66));
  v6 = *(a1 + 296);
  v7 = floor(*(a1 + 280) + v6) - (vcvtmd_s64_f64(*(a1 + 280) + v6) % 3600);
  v8 = (v3 + 8 * (v1 / 0x66));
  if (v4 == v3)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 40 * (v1 % 0x66);
  }

  v10 = v7 - v6;
  v11 = v2 % 0x66;
  v12 = 1.79769313e308;
  result = v5;
LABEL_5:
  v14 = v9;
  while (1)
  {
    v15 = v4 == v3 ? 0 : *v5 + 40 * v11;
    if (v14 == v15)
    {
      return result;
    }

    if (*(v14 + 16) == 2)
    {
      v16 = *(v14 + 8);
      if (v16 > v10 && v16 < v12)
      {
        v12 = *(v14 + 8);
        result = v8;
      }
    }

    v9 += 40;
    v14 += 40;
    if (*v8 + 4080 == v9)
    {
      v18 = v8[1];
      ++v8;
      v9 = v18;
      goto LABEL_5;
    }
  }
}

double *sub_1004A9DF0(double *result)
{
  v1 = floor(result[35] + *(result + 74)) - (vcvtmd_s64_f64(result[35] + *(result + 74)) % 3600) - *(result + 74);
  if (v1 > result[32])
  {
    v2 = result;
    sub_1004AA1F8(result);
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    v52 = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    v51 = _Q0;
    sub_1004ABBB4(v49, 0xCuLL, &v51);
    v50 = 0xBFF0000000000000;
    sub_1004AC150(v2 + 26, v49);
    *(v2 + 32) = v50;
    sub_1000F8B58(v49);
    v8 = *(v2 + 27);
    if (*(v2 + 28) != v8)
    {
      v9 = *(v2 + 30);
      v10 = (v8 + 8 * (v9 / 0xAA));
      v11 = *v10;
      v12 = &(*v10)[3 * (v9 % 0xAA)];
      v13 = *(v8 + 8 * ((*(v2 + 31) + v9) / 0xAA)) + 24 * ((*(v2 + 31) + v9) % 0xAA);
      if (v12 != v13)
      {
        v14 = 0;
        do
        {
          v15 = v1 + v14;
          *v12 = v15;
          v12[1] = v15 + 300.0;
          v12 += 3;
          if (v12 - v11 == 4080)
          {
            v16 = v10[1];
            ++v10;
            v11 = v16;
            v12 = v16;
          }

          v14 += 300;
        }

        while (v12 != v13);
      }
    }

    v2[32] = v1;
    sub_1008AFA98(v2 + 1);
    v2[36] = -1.0;
    v17 = *(v2 + 24);
    v18 = *(v2 + 21);
    v19 = *(v2 + 22);
    v20 = (v18 + 8 * (v17 / 0x66));
    if (v19 == v18)
    {
      v22 = 0;
      v31 = 0;
      v32 = (v18 + 8 * ((v17 + *(v2 + 25)) / 0x66));
    }

    else
    {
      v21 = *(v18 + 8 * (v17 / 0x66));
      v22 = v21 + 40 * (v17 % 0x66);
      v23 = *(v18 + 8 * ((*(v2 + 25) + v17) / 0x66)) + 40 * ((*(v2 + 25) + v17) % 0x66);
      if (v22 != v23)
      {
        while (*(v22 + 8) >= v1)
        {
          v22 += 40;
          if (v22 - v21 == 4080)
          {
            v24 = v20[1];
            ++v20;
            v21 = v24;
            v22 = v24;
          }

          if (v22 == v23)
          {
            v22 = *(v18 + 8 * ((*(v2 + 25) + v17) / 0x66)) + 40 * ((*(v2 + 25) + v17) % 0x66);
            goto LABEL_26;
          }
        }
      }

      if (v22 != v23)
      {
        v25 = v22;
        for (i = v20; ; v21 = *i)
        {
          v25 += 40;
          if (v25 - v21 == 4080)
          {
            v27 = i[1];
            ++i;
            v25 = v27;
          }

          if (v25 == v23)
          {
            break;
          }

          if (*(v25 + 8) >= v1)
          {
            v28 = *v25;
            v29 = *(v25 + 16);
            *(v22 + 32) = *(v25 + 32);
            *v22 = v28;
            *(v22 + 16) = v29;
            v22 += 40;
            if (v22 - *v20 == 4080)
            {
              v30 = v20[1];
              ++v20;
              v22 = v30;
            }
          }
        }

        v17 = *(v2 + 24);
        v18 = *(v2 + 21);
        v19 = *(v2 + 22);
      }

LABEL_26:
      v33 = v17 + *(v2 + 25);
      v32 = (v18 + 8 * (v33 / 0x66));
      if (v19 == v18)
      {
        v31 = 0;
      }

      else
      {
        v31 = (*v32 + 40 * (v33 % 0x66));
      }
    }

    sub_1004AA4E8(v2 + 20, v20, v22, v32, v31);
    v34 = *(v2 + 18);
    v35 = *(v2 + 15);
    v36 = *(v2 + 16);
    v37 = (v35 + 8 * (v34 >> 8));
    if (v36 == v35)
    {
      v39 = 0;
      v46 = 0;
      v47 = (v35 + 8 * ((v34 + *(v2 + 19)) >> 8));
    }

    else
    {
      v38 = *v37;
      v39 = *v37 + 16 * v34;
      v40 = *(v35 + (((*(v2 + 19) + v34) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v2 + 152) + v34);
      if (v39 != v40)
      {
        while (*(v39 + 8) >= v1)
        {
          v39 += 16;
          if (v39 - v38 == 4096)
          {
            v41 = v37[1];
            ++v37;
            v38 = v41;
            v39 = v41;
          }

          if (v39 == v40)
          {
            v39 = *(v35 + (((*(v2 + 19) + v34) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v2 + 152) + v34);
            goto LABEL_47;
          }
        }
      }

      if (v39 != v40)
      {
        v42 = v39;
        for (j = v37; ; v38 = *j)
        {
          v42 += 16;
          if (v42 - v38 == 4096)
          {
            v44 = j[1];
            ++j;
            v42 = v44;
          }

          if (v42 == v40)
          {
            break;
          }

          if (*(v42 + 8) >= v1)
          {
            *v39 = *v42;
            v39 += 16;
            if (v39 - *v37 == 4096)
            {
              v45 = v37[1];
              ++v37;
              v39 = v45;
            }
          }
        }

        v34 = *(v2 + 18);
        v35 = *(v2 + 15);
        v36 = *(v2 + 16);
      }

LABEL_47:
      v48 = v34 + *(v2 + 19);
      v47 = (v35 + 8 * (v48 >> 8));
      if (v36 == v35)
      {
        v46 = 0;
      }

      else
      {
        v46 = *v47 + 16 * v48;
      }
    }

    return sub_1000B3638(v2 + 14, v37, v39, v47, v46);
  }

  return result;
}

void sub_1004AA1F8(uint64_t a1)
{
  sub_1004AB0EC(a1);
  sub_1004AAF64(a1);
  v2 = *(a1 + 240);
  v3 = *(*(a1 + 216) + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA);
  v4 = *(v3 + 8);
  if (*(a1 + 280) > v4)
  {
    v5 = *v3;
    v6 = sub_1004AB3CC(a1, *v3, v4);
    if (v6 >= 5)
    {
      v7 = 5;
    }

    else
    {
      v7 = v6;
    }

    *(v3 + 16) = v7;
    v8 = *a1;
    if (v5 > 0.0 && v8 != 0)
    {
      v10 = *v3;
      v13 = *(v3 + 16);
      v12 = v10;
      (**v8)(v8, &v12);
      v2 = *(a1 + 240);
    }

    v11 = *(a1 + 248) - 1;
    *(a1 + 240) = v2 + 1;
    *(a1 + 248) = v11;
    sub_10027E208(a1 + 208, 1);
    sub_1004A9728(a1);
  }
}

void sub_1004AA308(uint64_t a1, __n128 *a2)
{
  if (qword_1025D4230 != -1)
  {
    sub_101894CDC();
  }

  v4 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2->n128_u64[0];
    v6 = a2->n128_i64[1];
    v9 = 134349312;
    v10 = v5;
    v11 = 2050;
    v12 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "StandPlus,minuteAdded,startTime,%{public}f,endTime,%{public}f", &v9, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101894FFC();
  }

  if (*(a1 + 152) >= 0xF0uLL)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101894DFC();
    }

    v7 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(*(a1 + 120) + ((*(a1 + 144) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 144));
      v9 = 134349056;
      v10 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "StandPlus,maxReached,minutes,startTime,%{public}f", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101895100();
    }

    *(a1 + 144) = vaddq_s64(*(a1 + 144), xmmword_101C66230);
    sub_100014444(a1 + 112, 1);
  }

  sub_1004AB450((a1 + 112), a2);
  *(a1 + 264) = *a2;
  sub_1004AB618(a1, a2);
}

void *sub_1004AA4E8(void *a1, void *a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 102 * (a4 - a2) - 0x3333333333333333 * (&a5[-*a4] >> 3) + 0x3333333333333333 * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x66));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*v9 + 40 * (v7 % 0x66));
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 102 * (a2 - v9) - 0x3333333333333333 * (&a3[-*a2] >> 3) + 0x3333333333333333 * (&v10[-*v9] >> 3);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x66);
  v24[0].n128_u64[1] = v10;
  sub_1000C5804(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1000C5804(v24, v6);
      sub_1004AC444(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1000C5804(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x66));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v16 + 40 * (v14 % 0x66);
      }

      v24[0] = v12;
      sub_1004AC604(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x66));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 40 * (v19 % 0x66);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_1000C5804(v24, v11);
  return v24[0].n128_u64[0];
}

void sub_1004AA754(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 296);
  v5 = floor(*a2 + v4) - (vcvtmd_s64_f64(*a2 + v4) % 3600) - v4;
  v6 = floor(*a2 + 3600.0 + v4) - (vcvtmd_s64_f64(*a2 + 3600.0 + v4) % 3600) - v4;
  if (vabdd_f64(*a2, v5) >= vabdd_f64(*a2, v6))
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(a2 + 16);
  if (v8 == 2)
  {
    v24 = v7 + 3600.0 + -1.0;
    v9 = (a2 + 8);
    if (*(a2 + 8) >= v24)
    {
      v9 = &v24;
    }
  }

  else
  {
    v9 = (a2 + 8);
  }

  v10 = *v9;
  v24 = v7;
  v25 = v10;
  v26 = v8;
  v27 = *(a2 + 20);
  v28 = *(a2 + 24);
  v29 = 0;
  sub_1004AAA2C((a1 + 160), &v24);
  v11 = *(a2 + 16);
  if (v11 > 2)
  {
    if ((v11 - 3) > 1)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  switch(v11)
  {
    case 0:
LABEL_15:
      sub_1004AAAE4(a1);
      break;
    case 1:
      sub_1004AAF64(a1);
      break;
    case 2:
      sub_1004AB0EC(a1);
      break;
  }

LABEL_17:
  if (*(a1 + 200) >= 8uLL)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101894DFC();
    }

    v12 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "StandPlus,maxReached,sedentaryTimer", &v24, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101895208();
    }

    v13 = *(a1 + 192);
    v14 = *(a1 + 168);
    v15 = (v14 + 8 * (v13 / 0x66));
    if (*(a1 + 176) == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = (*v15 + 40 * (v13 % 0x66));
    }

    v17 = *(a1 + 200);
    *&v24 = v14 + 8 * (v13 / 0x66);
    v25 = v16;
    sub_1000C5804(&v24, v17);
    v18 = &v25[-**&v24];
    v19 = 0xCCCCCCCCCCCCCCCDLL * (v18 >> 3);
    if (v18 < 321)
    {
      v23 = 109 - v19;
      v21 = (*&v24 - 8 * (v23 / 0x66));
      v22 = (*v21 + 40 * (102 * (v23 / 0x66) - v23) + 4040);
    }

    else
    {
      v20 = v19 - 8;
      v21 = (*&v24 + 8 * (v20 / 0x66));
      v22 = (*v21 + 40 * (v20 % 0x66));
    }

    sub_1004AA4E8((a1 + 160), v15, v16, v21, v22);
  }
}

__n128 sub_1004AAA2C(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 102 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1004AC788(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  result = *a2;
  v10 = *(a2 + 16);
  *(v8 + 32) = *(a2 + 32);
  *v8 = result;
  *(v8 + 16) = v10;
  ++a1[5];
  return result;
}

void sub_1004AAAE4(uint64_t *a1)
{
  v2 = a1[21];
  if (a1[22] == v2)
  {
    sub_1004A9CA4(a1);
    v17 = v18;
    v9 = 0;
  }

  else
  {
    v3 = a1[24];
    v4 = v3 + a1[25];
    v5 = *(v2 + 8 * (v4 / 0x66));
    v6 = (v2 + 8 * (v4 / 0x66));
    v7 = v5 + 40 * (v4 % 0x66);
    v8 = *(v2 + 8 * (v3 / 0x66)) + 40 * (v3 % 0x66);
    if (v7 == v8)
    {
      sub_1004A9CA4(a1);
      v17 = v19;
      v9 = v7;
    }

    else
    {
      v9 = v5 + 40 * (v4 % 0x66);
      do
      {
        v10 = v9;
        if (v9 == v5)
        {
          v10 = *(v6 - 1) + 4080;
        }

        v11 = *(v10 - 24);
        v12 = v11 > 4;
        v13 = (1 << v11) & 0x19;
        if (!v12 && v13 != 0)
        {
          break;
        }

        if (v9 == v5)
        {
          v15 = *--v6;
          v5 = v15;
          v9 = v15 + 4080;
        }

        v9 -= 40;
      }

      while (v8 != v9);
      sub_1004A9CA4(a1);
      v17 = v16;
    }

    if (v9 != v8 && v7 == v17)
    {
      a1[36] = a1[35];
      sub_1008AFA98(a1 + 1);
      v20 = v9;
      if (v9 == *v6)
      {
        v20 = *(v6 - 1) + 4080;
      }

      if ((*(v20 - 8) & 1) == 0)
      {
        if (qword_1025D4230 != -1)
        {
          sub_101894CDC();
        }

        v21 = qword_1025D4238;
        if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
        {
          v22 = v9;
          if (v9 == *v6)
          {
            v22 = *(v6 - 1) + 4080;
          }

          v23 = *(v22 - 32);
          *buf = 134217984;
          *&buf[4] = v23;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "StandPlus,firing reminder immediately,firedTime,%f", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018952EC(v6);
        }

        if (v9 == *v6)
        {
          *(*(v6 - 1) + 4072) = 1;
          v9 = *(v6 - 1) + 4080;
        }

        else
        {
          *(v9 - 8) = 1;
        }

        v29 = *(v9 - 24);
        *buf = *(v9 - 40);
        v40 = v29;
        sub_1004AB4DC(a1, buf);
      }

      return;
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_101894CDC();
  }

  v24 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v25 = a1[21];
    if (a1[22] == v25)
    {
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v26 = a1[24];
      v27 = *(v25 + 8 * (v26 / 0x66)) + 40 * (v26 % 0x66);
      v28 = *(v25 + 8 * ((a1[25] + v26) / 0x66)) + 40 * ((a1[25] + v26) % 0x66);
    }

    *buf = 67109376;
    *&buf[4] = v9 == v27;
    *&buf[8] = 1024;
    *&buf[10] = v17 != v28;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "StandPlus,no reminder %d,hour earned %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_101894DFC();
    }

    v30 = a1[21];
    if (a1[22] == v30)
    {
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v31 = a1[24];
      v32 = *(v30 + 8 * (v31 / 0x66)) + 40 * (v31 % 0x66);
      v33 = *(v30 + 8 * ((a1[25] + v31) / 0x66)) + 40 * ((a1[25] + v31) % 0x66);
    }

    v36[0] = 67109376;
    v36[1] = v9 == v32;
    v37 = 1024;
    v38 = v17 != v33;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "StandPlus,no reminder %d,hour earned %d", v36, 14);
    v35 = v34;
    sub_100152C7C("Generic", 1, 0, 2, "void CLStandPlusMinuteEstimator::checkAndFireReminder()", "%s\n", v34);
    if (v35 != buf)
    {
      free(v35);
    }
  }
}

uint64_t *sub_1004AAF64(uint64_t *result)
{
  v1 = *(result + 32);
  if (*(result + 35) > v1 + 3600.0)
  {
    v2 = result;
    v3 = result[24];
    v4 = v3 + result[25];
    v5 = result[21];
    v6 = (v5 + 8 * (v4 / 0x66));
    if (result[22] == v5)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v7 = *(v5 + 8 * (v4 / 0x66));
      v8 = v7 + 40 * (v4 % 0x66);
      v9 = *(v5 + 8 * (v3 / 0x66)) + 40 * (v3 % 0x66);
      if (v8 != v9)
      {
        v10 = (v5 + 8 * (v4 / 0x66));
        do
        {
          if (v8 == v7)
          {
            v11 = *--v10;
            v7 = v11;
            if (*(v11 + 4056) == 1)
            {
              break;
            }

            v8 = v7 + 4080;
            v6 = v10;
          }

          else if (*(v8 - 24) == 1)
          {
            break;
          }

          v8 -= 40;
        }

        while (v9 != v8);
      }
    }

    if (v9 != v8)
    {
      result = sub_1004AB3CC(result, *(result + 32), v1 + 3600.0);
      if (v8 == *v6)
      {
        v13 = *(v6 - 1);
        v14 = *(v13 + 4040) == v1 && result == 0;
        if (v14 && (*(v13 + 4072) & 1) == 0)
        {
          *(v13 + 4072) = 1;
          v8 = *(v6 - 1) + 4080;
          goto LABEL_29;
        }
      }

      else
      {
        v12 = *(v8 - 40) == v1 && result == 0;
        if (v12 && (*(v8 - 8) & 1) == 0)
        {
          *(v8 - 8) = 1;
LABEL_29:
          v15 = *(v8 - 24);
          v16[0] = *(v8 - 40);
          v16[1] = v15;
          return sub_1004AB4DC(v2, v16);
        }
      }
    }
  }

  return result;
}

void sub_1004AB0EC(uint64_t a1)
{
  sub_1004A9CA4(a1);
  v3 = v2;
  v4 = *(a1 + 168);
  if (*(a1 + 176) == v4)
  {
    v6 = 0;
  }

  else
  {
    v5 = *(a1 + 200) + *(a1 + 192);
    v6 = *(v4 + 8 * (v5 / 0x66)) + 40 * (v5 % 0x66);
  }

  if (v6 == v2)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101894CDC();
    }

    v13 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "StandPlus,no hour earned", v16, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101895614();
    }
  }

  else
  {
    v7 = v2 + 1;
    if (*(a1 + 280) > *(v2 + 1) && !*(a1 + 152))
    {
      if (qword_1025D4230 != -1)
      {
        sub_101894CDC();
      }

      v8 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *v3;
        v10 = *(v3 + 1);
        *v16 = 134349312;
        *&v16[4] = v9;
        *&v16[12] = 2050;
        *&v16[14] = v10;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "StandPlus,empty minute buffer,forcing minute from early stand hour,startTime,%{public}f,firedTime,%{public}f", v16, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101895408(v3);
      }

      v12 = *v3;
      v11 = v3[1];
      if (vabdd_f64(v11, *v3) >= 60.0)
      {
        *v16 = v11 + -60.0;
        *&v16[8] = v11;
      }

      else
      {
        *v16 = *v3;
        *&v16[8] = v12 + 60.0;
      }

      sub_1004AB450((a1 + 112), v16);
      sub_1008AFA98((a1 + 8));
    }

    if ((v3[4] & 1) == 0)
    {
      if (qword_1025D4230 != -1)
      {
        sub_101894DFC();
      }

      v14 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
      {
        v15 = *v7;
        *v16 = 134217984;
        *&v16[4] = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "StandPlus,firing stand hour immediately,firedTime,%f", v16, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101895520();
      }

      *(v3 + 32) = 1;
      *v16 = *v3;
      *&v16[16] = *(v3 + 1);
      sub_1004AB4DC(a1, v16);
    }
  }
}

uint64_t sub_1004AB3CC(void *a1, double a2, double a3)
{
  v3 = a1[15];
  if (a1[16] == v3)
  {
    return 0;
  }

  v4 = a1[18];
  v5 = (v3 + 8 * (v4 >> 8));
  v6 = *v5;
  v7 = *v5 + 16 * v4;
  v8 = *(v3 + (((a1[19] + v4) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 152) + v4);
  if (v7 == v8)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v10 = *(v7 + 8);
    v11 = v10 >= a2;
    if (v10 >= a3)
    {
      v11 = 0;
    }

    v7 += 16;
    if (v7 - v6 == 4096)
    {
      v12 = v5[1];
      ++v5;
      v6 = v12;
      v7 = v12;
    }

    result = (result + v11);
  }

  while (v7 != v8);
  return result;
}

__n128 sub_1004AB450(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1004AC95C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

uint64_t *sub_1004AB4DC(uint64_t *result, uint64_t *a2)
{
  if (*result)
  {
    v3 = result;
    if (qword_1025D4230 != -1)
    {
      sub_101894CDC();
    }

    v4 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *a2;
      v6 = a2[1];
      v7 = *(a2 + 4);
      *v10 = 134349568;
      *&v10[4] = v5;
      *&v10[12] = 2050;
      *&v10[14] = v6;
      *&v10[22] = 1026;
      *&v10[24] = v7;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "StandPlus,enforced alarm,startTime,%{public}f,firedTime,%{public}f,type,%{public}d", v10, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101895700(a2);
    }

    v8 = *v3;
    v9 = *(a2 + 1);
    *v10 = *a2;
    *&v10[16] = v9;
    return (*(*v8 + 8))(v8, v10);
  }

  return result;
}

void sub_1004AB618(int64x2_t *a1, uint64_t a2)
{
  sub_1004A9CA4(a1);
  v5 = v4;
  v6 = a1[10].i64[1];
  if (a1[11].i64[0] == v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[12].i64[1] + a1[12].i64[0];
    v8 = *(v6 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  }

  if (v8 == v4)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101894CDC();
    }

    v18 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a2 + 8);
      *buf = 134349056;
      *&buf[4] = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "StandPlus,forcing reset from early stand minute,endTime,%{public}f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189581C();
    }

    v20 = *(a2 + 8);
    *buf = floor(v20 + a1[18].i32[2]) - (vcvtmd_s64_f64(v20 + a1[18].i32[2]) % 3600) - a1[18].i32[2];
    *&buf[8] = floor(v20);
    *&buf[16] = 2;
    buf[20] = 1;
    *&buf[24] = 0;
    v38 = 0;
    sub_1004AAA2C(&a1[10], buf);
    v21 = a1[12].i64[0] + a1[12].i64[1];
    v22 = a1[10].i64[1];
    v23 = (v22 + 8 * (v21 / 0x66));
    v24 = *v23;
    v25 = *v23 + 40 * (v21 % 0x66);
    if (a1[11].i64[0] == v22)
    {
      v25 = 0;
    }

    v26 = v25 - v24;
    v27 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - v24) >> 3);
    if (v26 < 41)
    {
      v5 = v23[-((102 - v27) / 0x66)] + 40 * (102 * ((102 - v27) / 0x66) - (102 - v27)) + 4040;
    }

    else
    {
      v5 = v23[(v27 - 1) / 0x66] + 40 * ((v27 - 1) % 0x66);
    }
  }

  else
  {
    v9 = *v4 + 60.0;
    if (v4[1] >= v9)
    {
      v9 = v4[1];
    }

    if (v9 < floor(*(*(a1[7].i64[1] + ((a1[9].i64[0] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a1[9].i64[0] + 8)))
    {
      if (qword_1025D4230 != -1)
      {
        sub_101894CDC();
      }

      v10 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(v5 + 8);
        v12 = *(*(a1[7].i64[1] + ((a1[9].i64[0] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a1[9].i64[0] + 8);
        *buf = 134349312;
        *&buf[4] = v11;
        *&buf[12] = 2050;
        *&buf[14] = v12;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "StandPlus,forcing minute from early stand hour,%{public}f,endTime,%{public}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4230 != -1)
        {
          sub_101894DFC();
        }

        v29 = *(v5 + 8);
        v30 = *(*(a1[7].i64[1] + ((a1[9].i64[0] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a1[9].i64[0] + 8);
        v33 = 134349312;
        v34 = v29;
        v35 = 2050;
        v36 = v30;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "StandPlus,forcing minute from early stand hour,%{public}f,endTime,%{public}f", &v33, 22);
        v32 = v31;
        sub_100152C7C("Generic", 1, 0, 2, "void CLStandPlusMinuteEstimator::checkAndFireResetWithMinute(const CLStandPlusMinute &)", "%s\n", v31);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      v13 = *(v5 + 8);
      v14 = (*(a1[7].i64[1] + ((a1[9].i64[0] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a1[9].i64[0]);
      if (vabdd_f64(v13, v14[1]) >= 60.0)
      {
        v28 = *v5;
        if (vabdd_f64(v13, *v5) >= 60.0)
        {
          *buf = v13 + -60.0;
          *&buf[8] = v13;
        }

        else
        {
          *buf = *v5;
          *&buf[8] = v28 + 60.0;
        }

        sub_1004ABB34(a1 + 7, buf);
      }

      else
      {
        v15 = v13 + -60.0;
        v16 = *v5;
        if (*v5 >= v15)
        {
          v15 = *v5;
        }

        *v14 = v15;
        v17 = v16 + 60.0;
        if (v16 + 60.0 < *(v5 + 8))
        {
          v17 = *(v5 + 8);
        }

        v14[1] = v17;
      }
    }
  }

  if ((*(v5 + 32) & 1) == 0)
  {
    *(v5 + 32) = 1;
    *buf = *v5;
    *&buf[16] = *(v5 + 16);
    sub_1004AB4DC(a1->i64, buf);
  }
}

int64x2_t sub_1004ABB34(int64x2_t *a1, _OWORD *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_1004ACB30(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 8));
  v7 = *v6 + 16 * v4;
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 16) = *a2;
  result = vaddq_s64(a1[2], xmmword_101C79510);
  a1[2] = result;
  return result;
}

unint64_t *sub_1004ABBB4(unint64_t *a1, unint64_t a2, __int128 *a3)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  if (a2)
  {
    sub_1004ABC04(a1, a2, a3);
  }

  return a1;
}

void *sub_1004ABC04(unint64_t *a1, unint64_t a2, __int128 *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 170 * ((v7 - v6) >> 3) - 1;
  }

  v9 = a1[5] + a1[4];
  v10 = v8 - v9;
  v11 = a2 > v10;
  v12 = a2 - v10;
  if (v11)
  {
    sub_1004ABD60(a1, v12);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v13 = (v6 + 8 * (v9 / 0xAA));
  if (v7 == v6)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 24 * (v9 % 0xAA);
    v15 = v14;
  }

  v23 = v13;
  v24 = v15;
  result = sub_1000C9AF4(&v23, a2);
  v17 = v24;
  if (v14 != v24)
  {
    v18 = v23;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4080;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14;
        do
        {
          v21 = *a3;
          *(v20 + 16) = *(a3 + 2);
          *v20 = v21;
          v20 += 24;
        }

        while (v20 != v19);
      }

      a1[5] -= 0x5555555555555555 * ((v19 - v14) >> 3);
      if (v13 == v18)
      {
        break;
      }

      v22 = v13[1];
      ++v13;
      v14 = v22;
    }

    while (v22 != v17);
  }

  return result;
}

void sub_1004ABD60(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0xAA)
  {
    v5 = v4 / 0xAA + 1;
  }

  else
  {
    v5 = v4 / 0xAA;
  }

  v6 = a1[4];
  if (v5 >= v6 / 0xAA)
  {
    v7 = v6 / 0xAA;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0xAA)
  {
    for (a1[4] = v6 - 170 * v7; v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      sub_10045E430(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        sub_10045E858(a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= 170 * v7; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_10045E430(a1, v16);
    }
  }
}

void sub_1004AC030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004AC0A4(void *a1)
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
    v6 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 170;
  }

  a1[4] = v6;
}

uint64_t sub_1004AC150(void **a1, uint64_t a2)
{
  sub_1004AC0A4(a1);
  sub_1004AC1A0(a1);
  result = sub_1004AC37C(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_1004AC1A0(void **a1)
{
  if (a1[5])
  {
    sub_10027E208(a1, 0);
    sub_1004AC224(a1, 0);
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

  sub_1004AC29C(a1);
}

uint64_t sub_1004AC224(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
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

void sub_1004AC29C(void **a1)
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

uint64_t sub_1004AC37C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_1004AC29C(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

uint64_t sub_1004AC3E4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x66)
  {
    a2 = 1;
  }

  if (v2 < 0xCC)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 102;
  }

  return v4 ^ 1u;
}

__n128 sub_1004AC444@<Q0>(uint64_t *a1@<X1>, char *a2@<X2>, char **a3@<X3>, unint64_t a4@<X4>, char *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
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
      sub_1004AC514(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = (v19 + 4080);
    }

    v12 = (*v17 + 4080);
    v11 = a2;
  }

  sub_1004AC514(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_1004AC514@<X0>(char *a1@<X1>, char *a2@<X2>, char *a3@<X3>, char *a4@<X4>, char **a5@<X8>)
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
      v12 = 0xCCCCCCCCCCCCCCCDLL * (&a4[-v10] >> 3);
      if ((0xCCCCCCCCCCCCCCCDLL * ((v11 - a1) >> 3)) < v12)
      {
        v12 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - a1) >> 3);
      }

      v11 -= 40 * v12;
      a4 -= 40 * v12;
      if (v12)
      {
        result = memmove(a4, v11, 40 * v12 - 7);
      }

      if (v11 == a1)
      {
        break;
      }

      v14 = *(v6 - 1);
      v6 -= 8;
      v10 = v14;
      a4 = (v14 + 4080);
    }

    if ((*v6 + 4080) == a4)
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

double sub_1004AC604(void **a1, _BYTE *a2, void **a3, _BYTE *a4, void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
  }

  else
  {
    v10 = a1 + 1;
    v7 = *a5;
    v8 = a5[1];
    for (i = *a1 + 4080; ; i = v12 + 4080)
    {
      sub_1004AC6A8(&v14, a2, v8, i, v7);
      v8 = *(&v15 + 1);
      v7 = v15;
      *a5 = v15;
      a5[1] = v8;
      if (v10 == a3)
      {
        break;
      }

      v12 = *v10++;
      a2 = v12;
    }

    a2 = *v10;
  }

  sub_1004AC6A8(&v14, a2, v8, a4, v7);
  result = *&v15;
  *a5 = v15;
  return result;
}

uint64_t *sub_1004AC6A8@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X1>, char *__dst@<X4>, _BYTE *a4@<X2>, void **a5@<X3>)
{
  v6 = a5;
  v7 = __src;
  if (__src != a4)
  {
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __dst + 4080) >> 3);
      if ((0xCCCCCCCCCCCCCCCDLL * (&a4[-v7] >> 3)) < v11)
      {
        v11 = 0xCCCCCCCCCCCCCCCDLL * (&a4[-v7] >> 3);
      }

      v12 = 5 * v11;
      v13 = 40 * v11;
      if (v11)
      {
        result = memmove(__dst, v7, v13 - 7);
      }

      v7 += 8 * v12;
      if (v7 == a4)
      {
        break;
      }

      v15 = *v6++;
      v10 = v15;
      __dst = v15;
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

  *a1 = v7;
  a1[1] = v6;
  a1[2] = __dst;
  return result;
}

void sub_1004AC788(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
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

void sub_1004AC910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004AC95C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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

void sub_1004ACAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004ACB30(const void **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v1) - 1;
  }

  v5 = a1[4];
  if ((v4 - (a1[5] + v5)) < 0x100)
  {
    v6 = a1[3];
    v7 = *a1;
    v8 = v6 - *a1;
    if (v3 < v8)
    {
      if (v1 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v10[4] = a1;
    sub_10045E858(a1, v9);
  }

  a1[4] = (v5 + 256);
  v10[0] = *(v2 - 8);
  a1[2] = (v2 - 8);
  sub_10045E538(a1, v10);
}

void sub_1004ACD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1004ACD78(void *a1)
{
  *a1 = 0x10000000000;
  sub_10082C208((a1 + 129), &off_1024572B0);
  return a1;
}

unsigned __int16 *sub_1004ACDB8(unsigned __int16 *a1, char a2, float a3)
{
  result = sub_10082C20C(a1 + 516, a3);
  if ((a2 & 1) == 0)
  {
    v7 = a1[1];
    v8 = *(a1 + 1);
    v9 = *a1;
    if (v9 + v7 >= v8)
    {
      v10 = *(a1 + 1);
    }

    else
    {
      v10 = 0;
    }

    *&a1[2 * (v9 + v7 - v10) + 4] = v6;
    if (v8 <= v7)
    {
      if (v9 + 1 < v8)
      {
        LOWORD(v8) = 0;
      }

      *a1 = v9 + 1 - v8;
    }

    else
    {
      a1[1] = v7 + 1;
    }
  }

  return result;
}

unsigned __int16 *sub_1004ACE40(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 3288);
  sub_100AEA7C8((a2 + 32), v10);
  sub_1004ACED8(v10, v11);
  v4 = sub_10011FB70(v11, (a2 + 8));
  v6 = v5;
  v8 = v7;
  sub_1004ACDB8(a1, *(a1 + 3288), v4);
  sub_1004ACDB8((a1 + 1096), *(a1 + 3288), v6);
  return sub_1004ACDB8((a1 + 2192), *(a1 + 3288), v8);
}

float *sub_1004ACED8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    v5 = 0;
    do
    {
      v6 = sub_10011AECC(a1, v4, v5);
      result = sub_1004ACF54(a2, v5, v4);
      *result = v6;
      ++v5;
    }

    while (v5 != 3);
    ++v4;
  }

  while (v4 != 3);
  return result;
}

uint64_t sub_1004ACF54(uint64_t a1, void *a2, unint64_t a3)
{
  if (a2 >= 3)
  {
    sub_101895C94(a2);
  }

  if (a3 >= 3)
  {
    sub_101895DC0(a3);
  }

  return a1 + 4 * (a2 + 3 * a3);
}

BOOL sub_1004ACFB8()
{
  v1 = qword_1025D48A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

uint64_t sub_1004ACFD8(uint64_t result, int a2, int a3, double a4)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = a4;
  return result;
}

BOOL sub_1004ACFEC(uint64_t a1, double a2)
{
  sub_1004AD044(a1, a2);
  v4 = *a1;
  if (*a1 == *(a1 + 16))
  {
    *(a1 + 8) = a2;
  }

  if (v4 >= 1)
  {
    *a1 = v4 - 1;
  }

  return v4 > 0;
}

uint64_t sub_1004AD044(double *a1, double a2)
{
  v3 = a1[1];
  v4 = vabdd_f64(a2, v3);
  v5 = a1[3];
  if (v4 < v5)
  {
    return *a1;
  }

  result = *(a1 + 4);
  if (v4 >= v5 * result)
  {
    *a1 = result;
  }

  else
  {
    v7 = vcvtmd_s64_f64(v4 / v5);
    v8 = *a1 + *(a1 + 5) * v7;
    if (v8 >= result)
    {
      result = result;
    }

    else
    {
      result = v8;
    }

    *a1 = result;
    a2 = v3 + v7 * v5;
  }

  a1[1] = a2;
  return result;
}

id sub_1004AD104(double *a1)
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", *a1), @"value"}];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", a1[1]), @"lastUpdateTime"}];
  [v2 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", *(a1 + 4)), @"maxAmount"}];
  [v2 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", *(a1 + 5)), @"refillAmount"}];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", a1[3]), @"refillTime"}];
  return v2;
}

void sub_1004AD1E4(void *a1)
{
  [objc_msgSend(a1 objectForKeyedSubscript:{@"maxAmount", "unsignedIntValue"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"refillAmount", "unsignedIntValue"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"refillTime", "doubleValue"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"value", "unsignedIntValue"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{@"lastUpdateTime", "doubleValue"}];
  operator new();
}

uint64_t sub_1004AD5BC(uint64_t a1, void *a2)
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
        LOBYTE(v39) = 0;
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

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
      if ((v11 >> 3) <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v39 = 0;
            v27 = [a2 position] + 4;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 4, v28 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v36 = v39;
            v37 = 40;
          }

          else
          {
            if (v12 != 4)
            {
              goto LABEL_62;
            }

            v39 = 0;
            v17 = [a2 position] + 4;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v36 = v39;
            v37 = 36;
          }
        }

        else
        {
          if (v12 == 1)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            while (1)
            {
              LOBYTE(v39) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v39 & 0x7F) << v21;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v10 = v22++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_67;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v23;
            }

LABEL_67:
            *(a1 + 12) = v26;
            goto LABEL_85;
          }

          if (v12 != 2)
          {
            goto LABEL_62;
          }

          v39 = 0;
          v15 = [a2 position] + 4;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v36 = v39;
          v37 = 16;
        }
      }

      else if (v12 <= 6)
      {
        if (v12 == 5)
        {
          v39 = 0;
          v31 = [a2 position] + 4;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 4, v32 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v36 = v39;
          v37 = 8;
        }

        else
        {
          if (v12 != 6)
          {
LABEL_62:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_85;
          }

          v39 = 0;
          v19 = [a2 position] + 4;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 4, v20 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v36 = v39;
          v37 = 24;
        }
      }

      else
      {
        switch(v12)
        {
          case 7:
            v39 = 0;
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

            v36 = v39;
            v37 = 20;
            break;
          case 8:
            v39 = 0;
            v33 = [a2 position] + 4;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 4, v34 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v36 = v39;
            v37 = 28;
            break;
          case 9:
            v39 = 0;
            v13 = [a2 position] + 4;
            if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v36 = v39;
            v37 = 32;
            break;
          default:
            goto LABEL_62;
        }
      }

      *(a1 + v37) = v36;
LABEL_85:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1004AE64C(uint64_t a1, int a2, char a3, char a4)
{
  result = sub_10015EFE0(a1, a2);
  *result = off_1024572F8;
  *(result + 200) = a3;
  *(result + 201) = a4;
  *(result + 202) = 0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  return result;
}

uint64_t sub_1004AE6A0(void *a1)
{
  *a1 = off_1024572F8;
  sub_1004AE904(a1);
  v2 = a1[27];
  if (v2)
  {
    sub_100008080(v2);
  }

  return sub_10015AC4C(a1);
}

void sub_1004AE708(void *a1)
{
  sub_1004AE6A0(a1);

  operator delete();
}

void sub_1004AE740(uint64_t a1)
{
  sub_1004AE85C(a1, (a1 + 40));
  if (*(a1 + 201) == 1)
  {
    v3 = *(a1 + 208);
    v2 = (a1 + 208);
    v4 = sub_100FB37E8(v3);
    *(v2 - 6) = v4;
    if (v4)
    {
      if (qword_1025D42C0 != -1)
      {
        sub_101896018();
      }

      v5 = qword_1025D42C8;
      if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
      {
        v6 = sub_10026E634(*v2);
        v7 = *(*v2 + 16);
        v8 = *(*v2 + 20);
        v9 = 134349568;
        v10 = v6;
        v11 = 1026;
        v12 = v8;
        v13 = 1026;
        v14 = v7;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[CLSensorFusionServiceSPU] FastPath opened,serviceRef,%{public}p,usagePage,%{public}d,usage,%{public}d", &v9, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10189602C(v2);
      }
    }
  }
}

void sub_1004AE85C(uint64_t a1, double *a2)
{
  v3 = *(a1 + 208);
  if (!v3)
  {
    v4 = sub_1009B38EC(0, a2);
    sub_1004AEA30(v4);
  }

  sub_10017A1F4(v3, *a2);
  sub_1009B5D14(*(a1 + 208), sub_1004AEAC8, a1);
}

void sub_1004AE904(uint64_t a1)
{
  *v8 = 0;
  sub_1004AE85C(a1, v8);
  if (*(a1 + 202) == 1)
  {
    v3 = *(a1 + 208);
    v2 = (a1 + 208);
    *(v2 - 6) = 0;
    sub_100FB3A3C(v3);
    if (qword_1025D42C0 != -1)
    {
      sub_101896018();
    }

    v4 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_10026E634(*v2);
      v6 = *(*v2 + 16);
      v7 = *(*v2 + 20);
      *v8 = 134349568;
      *&v8[4] = v5;
      v9 = 1026;
      v10 = v7;
      v11 = 1026;
      v12 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[CLSensorFusionServiceSPU] FastPath closed,serviceRef,%{public}p,usagePage,%{public}d,usage,%{public}d", v8, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189613C(v2);
    }
  }
}

void sub_1004AEAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    sub_100008080(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004AEAC8(uint64_t a1, float32x4_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v7 = 0xBFF0000000000000;
  sub_10011E648((&v7 + 8), a2);
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v12 = xmmword_101C79540;
  v13 = 0x1FF00000000;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (sub_1004AEC68(a5, 0, &v7, xmmword_101C79540))
  {
    sub_10015EB18(a1, &v7);
  }
}

double sub_1004AEB58(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v5 = *(a1 + 208);
  if (v5)
  {
    if (*(a1 + 202) == 1 && (v6 = (*(*v5 + 32))(v5, a3)) != 0)
    {
      v8 = v6;
      sub_1004AEC68(v6, 0, a2, v7);

      CFRelease(v8);
    }

    else
    {

      sub_1005653B0(a1, a2);
    }
  }

  else
  {
    *a2 = 0xBFF0000000000000;
    v10 = 0uLL;
    sub_10011E648(&v10, a3);
    result = *v10.i64;
    *(a2 + 8) = v10;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 96) = 0;
    *(a2 + 36) = 0;
    *(a2 + 52) = 0;
    *(a2 + 44) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
  }

  return result;
}

uint64_t sub_1004AEC68(uint64_t a1, int a2, uint64_t a3, float32x4_t a4)
{
  *a3 = 0xBFF0000000000000;
  *buf = 0;
  *&buf[8] = 0;
  sub_10011E648(buf, a4);
  *(a3 + 8) = *buf;
  *(a3 + 96) = 0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  if (a1)
  {
    v50 = 0;
    v51 = 0;
    IOHIDEventGetVendorDefinedData();
    if (v51 && v50 > 0)
    {
      TimeStamp = IOHIDEventGetTimeStamp();
      v8 = sub_1000080EC(TimeStamp);
      sub_1001F96F0(buf, v51, v50);
      if (buf[0] > 3u)
      {
        if (buf[0] == 4)
        {
          *a3 = v8;
          *v52 = *&buf[12];
          sub_10011E648(v52, *&buf[12]);
          *(a3 + 8) = *v52;
          *&v15 = *&v40[12];
          *(&v15 + 1) = __PAIR64__(*v40, v41);
          *(a3 + 24) = v15;
          *(a3 + 40) = *&v40[4];
          *(a3 + 84) = 2;
          return 1;
        }

        if (buf[0] == 255)
        {
          if (v50 < 1)
          {
            v13 = 0;
          }

          else
          {
            v13 = *v51;
          }

          if (qword_1025D4210 != -1)
          {
            sub_10189624C();
          }

          v34 = qword_1025D4218;
          if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
          {
            *v52 = 67109376;
            *&v52[4] = v13;
            *&v52[8] = 2048;
            *&v52[10] = v50;
            _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_FAULT, "Bad device motion report,type,%d,size,%lu", v52, 0x12u);
          }

          result = sub_10000A100(121, 0);
          if (result)
          {
            sub_101896274(&v50, v13);
            return 0;
          }

          return result;
        }
      }

      else
      {
        if (buf[0] == 2)
        {
          if (a2 && *&buf[4] != a2)
          {
            return 0;
          }

          *v52 = *v40;
          sub_10011E648(v52, *v40);
          v35 = vsub_f32(*&buf[16], v46);
          v37 = v35;
          v38 = *&buf[24] - v47;
          v18 = sub_10011E6AC(v52);
          v20 = 0;
          v21 = 0.0;
          do
          {
            v21 = v21 + (v37.f32[v20] * v37.f32[v20]);
            ++v20;
          }

          while (v20 != 3);
          v22 = sqrtf(v21);
          _V4.S[1] = v35.i32[1];
          __asm { FMLA            S2, S1, V4.S[1] }

          v29 = v22 * sqrtf(1.0 - (((_S2 + (v18 * v35.f32[0])) / v22) * ((_S2 + (v18 * v35.f32[0])) / v22)));
          v30 = sub_10017C3BC(v16, v17);
          sub_1009BC3C4(v30, v45, fabsf(v29));
          v32 = v31;
          *a3 = v8;
          v36 = *v40;
          sub_10011E648(&v36, *v40);
          *(a3 + 8) = v36;
          *&v33 = v42;
          *(&v33 + 1) = __PAIR64__(*&v40[16], v43);
          *(a3 + 24) = v33;
          *(a3 + 40) = v41;
          *(a3 + 48) = v37;
          *(a3 + 56) = v38;
          *(a3 + 80) = buf[1];
          *(a3 + 60) = v44;
          *(a3 + 64) = v32;
          *(a3 + 68) = v48;
          *(a3 + 76) = v49;
          *(a3 + 81) = 2;
          *(a3 + 82) = *&buf[2];
          *(a3 + 84) = 15;
          *(a3 + 96) = *&buf[4];
          result = 1;
          *(a3 + 88) = 0;
          return result;
        }

        if (buf[0] == 3)
        {
          if (!a2 || *&buf[4] == a2)
          {
            *a3 = v8;
            *v52 = *&buf[12];
            sub_10011E648(v52, *&buf[12]);
            *(a3 + 8) = *v52;
            *&v9 = *&v40[12];
            *(&v9 + 1) = __PAIR64__(*v40, v41);
            *(a3 + 24) = v9;
            *(a3 + 40) = *&v40[4];
            *(a3 + 80) = 511;
            *(a3 + 48) = xmmword_101C79550;
            *(a3 + 64) = -1082130432;
            *(a3 + 82) = *&buf[1];
            *(a3 + 84) = 3;
            *(a3 + 96) = *&buf[4];
            *(a3 + 88) = 0;
            return 1;
          }

          return 0;
        }
      }

      if (qword_1025D42C0 != -1)
      {
        sub_101896394();
      }

      v14 = qword_1025D42C8;
      if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_FAULT))
      {
        *v52 = 67240192;
        *&v52[4] = buf[0];
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Unexpected device motion report type %{public}d, returning", v52, 8u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1018963BC(buf);
        return 0;
      }
    }

    else
    {
      if (qword_1025D42C0 != -1)
      {
        sub_101896394();
      }

      v12 = qword_1025D42C8;
      if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Empty payload, returning", buf, 2u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_1018964C8();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D42C0 != -1)
    {
      sub_101896394();
    }

    v10 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#Warning Device motion event ref invalid", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018965C0();
      return 0;
    }
  }

  return result;
}

void *sub_1004AF2B4(void *a1, unsigned int *a2, unsigned int *a3, char *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024573A0;
  sub_100FB3618((a1 + 3), *a2, *a3, *a4, *a5);
  return a1;
}

void sub_1004AF340(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024573A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004B1564(uint64_t a1, void *a2)
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
        LOBYTE(v64) = 0;
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

        v7 |= (v64 & 0x7F) << v5;
        if ((v64 & 0x80) == 0)
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
      if ((v11 >> 3) <= 5)
      {
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            while (1)
            {
              LOBYTE(v64) = 0;
              v38 = [a2 position] + 1;
              if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v37 |= (v64 & 0x7F) << v35;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v10 = v36++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_111;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v37;
            }

LABEL_111:
            v59 = 52;
          }

          else
          {
            if (v12 != 2)
            {
LABEL_106:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_143;
            }

            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 60) |= 4u;
            while (1)
            {
              LOBYTE(v64) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v64 & 0x7F) << v30;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v10 = v31++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_115;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v32;
            }

LABEL_115:
            v59 = 32;
          }
        }

        else
        {
          switch(v12)
          {
            case 3:
              v49 = 0;
              v50 = 0;
              v51 = 0;
              *(a1 + 60) |= 0x20u;
              while (1)
              {
                LOBYTE(v64) = 0;
                v52 = [a2 position] + 1;
                if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v51 |= (v64 & 0x7F) << v49;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v10 = v50++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_125;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v51;
              }

LABEL_125:
              v59 = 44;
              break;
            case 4:
              v40 = 0;
              v41 = 0;
              v42 = 0;
              *(a1 + 60) |= 0x10u;
              while (1)
              {
                LOBYTE(v64) = 0;
                v43 = [a2 position] + 1;
                if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v42 |= (v64 & 0x7F) << v40;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v40 += 7;
                v10 = v41++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_119;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v42;
              }

LABEL_119:
              v59 = 40;
              break;
            case 5:
              v19 = 0;
              v20 = 0;
              v21 = 0;
              *(a1 + 60) |= 0x80u;
              while (1)
              {
                LOBYTE(v64) = 0;
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

                v21 |= (v64 & 0x7F) << v19;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v19 += 7;
                v10 = v20++ >= 9;
                if (v10)
                {
                  LOBYTE(v24) = 0;
                  goto LABEL_121;
                }
              }

              v24 = (v21 != 0) & ~[a2 hasError];
LABEL_121:
              v60 = 56;
LABEL_133:
              *(a1 + v60) = v24;
              goto LABEL_143;
            default:
              goto LABEL_106;
          }
        }
      }

      else
      {
        if (v12 > 8)
        {
          if (v12 == 9)
          {
            *(a1 + 60) |= 1u;
            v64 = 0;
            v56 = [a2 position] + 8;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 8, v57 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v61 = v64;
            v62 = 8;
            goto LABEL_142;
          }

          if (v12 == 10)
          {
            *(a1 + 60) |= 2u;
            v64 = 0;
            v47 = [a2 position] + 8;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 8, v48 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v61 = v64;
            v62 = 16;
            goto LABEL_142;
          }

          if (v12 != 11)
          {
            goto LABEL_106;
          }

          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 60) |= 0x100u;
          while (1)
          {
            LOBYTE(v64) = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v64 & 0x7F) << v25;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              LOBYTE(v24) = 0;
              goto LABEL_132;
            }
          }

          v24 = (v27 != 0) & ~[a2 hasError];
LABEL_132:
          v60 = 57;
          goto LABEL_133;
        }

        if (v12 == 6)
        {
          *(a1 + 60) |= 0x40u;
          LODWORD(v64) = 0;
          v54 = [a2 position] + 4;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 4, v55 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 48) = v64;
          goto LABEL_143;
        }

        if (v12 == 7)
        {
          v64 = 0;
          v45 = [a2 position] + 8;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v61 = v64;
          v62 = 24;
LABEL_142:
          *(a1 + v62) = v61;
          goto LABEL_143;
        }

        if (v12 != 8)
        {
          goto LABEL_106;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 60) |= 8u;
        while (1)
        {
          LOBYTE(v64) = 0;
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

          v15 |= (v64 & 0x7F) << v13;
          if ((v64 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_129;
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

LABEL_129:
        v59 = 36;
      }

      *(a1 + v59) = v18;
LABEL_143:
      v63 = [a2 position];
    }

    while (v63 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1004B2F04(uint64_t a1, void *a2)
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
        LOBYTE(v21[0]) = 0;
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

        v7 |= (v21[0] & 0x7F) << v5;
        if ((v21[0] & 0x80) == 0)
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

      if ((v11 >> 3) == 2)
      {
        v18 = objc_alloc_init(ALCLMotionActivity);

        *(a1 + 8) = v18;
        v21[0] = 0;
        v21[1] = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        result = sub_1004B1564(v18, a2);
        if (!result)
        {
          return result;
        }

        PBReaderRecallMark();
      }

      else if ((v11 >> 3) == 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        while (1)
        {
          LOBYTE(v21[0]) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v14 |= (v21[0] & 0x7F) << v12;
          if ((v21[0] & 0x80) == 0)
          {
            break;
          }

          v12 += 7;
          v10 = v13++ >= 9;
          if (v10)
          {
            v17 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v17 = 0;
        }

        else
        {
          v17 = v14;
        }

LABEL_36:
        *(a1 + 16) = v17;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1004B3D14(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 < [a2 length] && (objc_msgSend(a2, "hasError") & 1) == 0)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v42) = 0;
        v9 = [a2 position] + 1;
        if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v8 |= (v42 & 0x7F) << v6;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v12 = 0;
          goto LABEL_16;
        }
      }

      if ([a2 hasError])
      {
        v12 = 0;
      }

      else
      {
        v12 = v8;
      }

LABEL_16:
      if (([a2 hasError] & 1) == 0 && (v12 & 7) != 4)
      {
        switch((v12 >> 3))
        {
          case 1u:
            v42 = 0;
            v13 = [a2 position] + 8;
            if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v42;
            goto LABEL_100;
          case 2u:
            v28 = objc_alloc_init(ALActivityOverrideMsg);

            *(a1 + 16) = v28;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1004B2F04(v28, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 3u:
            v24 = objc_alloc_init(ALCLBodyMetrics);

            *(a1 + 32) = v24;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1004AD5BC(v24, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 4u:
            v26 = objc_alloc_init(ALMotionState);

            *(a1 + 120) = v26;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100490A98(v26, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 5u:
            v19 = objc_alloc_init(ALCLNatalieDataDeprecated);

            *(a1 + 128) = v19;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100F8EB10(v19, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 6u:
            v31 = objc_alloc_init(ALCLSedentaryAlarmDataDeprecated);

            *(a1 + 160) = v31;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100E36950(v31, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 7u:
            v34 = objc_alloc_init(ALCLStepCountEntry);

            *(a1 + 184) = v34;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10049B750(v34, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 8u:
            v27 = objc_alloc_init(ALCLStrideCalEntryDeprecated);

            *(a1 + 200) = v27;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1005A617C(v27, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 9u:
            v37 = objc_alloc_init(ALCLSessionCatherine);

            *(a1 + 168) = v37;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10074B858(v37, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0xAu:
            v21 = objc_alloc_init(ALCLJacksonData);

            *(a1 + 112) = v21;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100521F14(v21, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0xBu:
            v36 = objc_alloc_init(ALCLStrideCalEntry);

            *(a1 + 192) = v36;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100495648(v36, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0xCu:
            v18 = objc_alloc_init(ALCLSedentaryAlarmData);

            *(a1 + 152) = v18;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10049F2C0(v18, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0xDu:
            v20 = objc_alloc_init(ALCLAllDayHeartRate);

            *(a1 + 24) = v20;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10092D8CC(v20, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0xEu:
            v33 = objc_alloc_init(ALCMCalorieDataDeprecated);

            *(a1 + 48) = v33;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100AE1468(v33, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0xFu:
            v17 = objc_alloc_init(ALCMCoarseElevationDeprecated);

            *(a1 + 64) = v17;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100F32D34(v17, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x10u:
            v25 = objc_alloc_init(ALCMFitnessTracking);

            *(a1 + 96) = v25;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10132EFF4(v25, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x11u:
            v15 = objc_alloc_init(ALCLOdometer);

            *(a1 + 136) = v15;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_101349404(v15, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x12u:
            v29 = objc_alloc_init(ALCLElevationDeprecated);

            *(a1 + 80) = v29;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100BE1E5C(v29, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x13u:
            v35 = objc_alloc_init(ALCLIDSStatus);

            *(a1 + 104) = v35;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1009ED9B4(v35, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x14u:
            v39 = objc_alloc_init(ALCLStairClimbingModel);

            *(a1 + 176) = v39;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100905EFC(v39, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x15u:
            v30 = objc_alloc_init(ALCLRowingModel);

            *(a1 + 144) = v30;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100945890(v30, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x16u:
            v32 = objc_alloc_init(ALCMExerciseMinute);

            *(a1 + 88) = v32;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10115671C(v32, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x17u:
            v38 = objc_alloc_init(ALCMWorkoutEventDeprecated);

            *(a1 + 216) = v38;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_100F78C7C(v38, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x18u:
            v40 = objc_alloc_init(ALCMElevation);

            *(a1 + 72) = v40;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10046FB5C(v40, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x19u:
            v23 = objc_alloc_init(ALCMCoarseElevation);

            *(a1 + 56) = v23;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1008FBFC0(v23, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x1Au:
            v22 = objc_alloc_init(ALCMCalorieData);

            *(a1 + 40) = v22;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_10075C184(v22, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_99;
          case 0x1Bu:
            v41 = objc_alloc_init(ALCMWorkoutEvent);

            *(a1 + 208) = v41;
            v42 = 0;
            v43 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1012A221C(v41, a2);
            if (!result)
            {
              return result;
            }

LABEL_99:
            PBReaderRecallMark();
LABEL_100:
            v4 = a2;
            continue;
          default:
            if (PBReaderSkipValueWithTag())
            {
              goto LABEL_100;
            }

            return 0;
        }
      }
    }

    return [a2 hasError] ^ 1;
  }
}

void sub_1004B5F3C(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = 0;
  operator new();
}

void sub_1004B6340(_Unwind_Exception *a1)
{
  sub_10053700C(v1 + 32);
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1004B6404(void *a1)
{
  v2 = a1 + 4;
  (*(a1[4] + 16))(a1 + 4);
  if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    [+[NSFileManager defaultManager](NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:" contents:*a1 attributes:0, 0];
  }

  v3 = a1[1];
  if (v3)
  {
    [v3 closeFile];
  }

  v4 = [NSFileHandle fileHandleForWritingAtPath:*a1];
  v5 = v4;
  a1[1] = v4;
  if (v4)
  {
    [(NSFileHandle *)v4 seekToEndOfFile];
    if (qword_1025D48A0 != -1)
    {
      sub_101896750();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*a1 UTF8String];
      v8 = a1[1];
      *buf = 136315394;
      v20 = v7;
      v21 = 2048;
      v22 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLActivityLoggerWriter open log file filePath is %s, file is %p.", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189670C(buf);
      v10 = qword_1025D48A8;
      v11 = [*a1 UTF8String];
      v12 = a1[1];
      v15 = 136315394;
      v16 = v11;
      v17 = 2048;
      v18 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v10, 2, "CLActivityLoggerWriter open log file filePath is %s, file is %p.", &v15, 22);
      v14 = v13;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLActivityLoggerWriter::open()", "%s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  (*(*v2 + 24))(v2);
  return v5 != 0;
}

void sub_1004B6680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

id sub_1004B66B8(uint64_t a1)
{
  v1 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  v2 = [*(v1 - 24) offsetInFile];
  (*(*v1 + 24))(v1);
  return v2;
}

void sub_1004B6750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004B6764(void *a1, void *a2)
{
  v4 = a1[4];
  v14 = a1 + 4;
  (*(v4 + 16))();
  v16 = 256;
  if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    v5 = [a2 data];
    v6 = [v5 length];
    v13 = v6;
    if (qword_1025D48A0 != -1)
    {
      sub_101896750();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v19 = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLActivityLoggerWriter logData, prepare to log %d bytes", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10189670C(buf);
      v17[0] = 67109120;
      v17[1] = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "CLActivityLoggerWriter logData, prepare to log %d bytes", v17);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLActivityLoggerWriter::logData(PBCodable *)", "%s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v8 = a1[2];
    while (1)
    {
      v9 = (**v8)(v8, v5);
      if (!v9)
      {
        break;
      }

      v8 = *(v8 + 8);
      if (!v8)
      {
        [a1[1] writeData:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", &v13, 2)}];
        [a1[1] writeData:v5];
        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (v16)
  {
    pthread_mutex_unlock(v15);
  }

  else
  {
    (*(*v14 + 24))(v14);
  }

  return v9;
}

void sub_1004B6A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004B6BBC(uint64_t a1)
{
  [*(a1 + 8) closeFile];

  sub_10053700C(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

void sub_1004B6C7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101896764(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004B6C98(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004B6CD0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_1004B6D00(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1004B6DA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101896764(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004B6DC0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_1004B6DF0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1004B6E98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101896764(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004B6EB0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_1004B6EE0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1004B71D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004B7570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004B7688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004B79AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004B7B20(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100710F18(result);

    operator delete();
  }

  return result;
}

void sub_1004B7B6C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018968C8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFenceSubscription::onFenceNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018968DC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFenceSubscription::onFenceNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1004BD1BC(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1004B7D38(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018968C8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFenceSubscription::onBTLEFenceNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018968DC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFenceSubscription::onBTLEFenceNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1004BEA00(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1004B7F08@<X0>(uint64_t a1@<X8>)
{
  v6[0] = off_102457768;
  v6[1] = sub_100157570;
  v6[2] = 0;
  v6[3] = v6;
  sub_10000EC00(v7, "kCLConnectionMessageRegionState");
  sub_1004BF5CC(&v8, v6);
  v5[0] = off_1024577F8;
  v5[1] = sub_1004B814C;
  v5[2] = 0;
  v5[3] = v5;
  sub_10000EC00(v9, "kCLConnectionMessageRegionMonitoring");
  sub_1004BF5CC(&v10, v5);
  v4[0] = off_102457768;
  v4[1] = sub_1004BC18C;
  v4[2] = 0;
  v4[3] = v4;
  sub_10000EC00(v11, "kCLConnectionMessageChangeFencesStateMatchingHandoffTags");
  sub_1004BF5CC(v12, v4);
  sub_1004C0C00(a1, v7, 3);
  for (i = 0; i != -21; i -= 7)
  {
    sub_1004C0818(&v12[i * 8]);
    if (SHIBYTE(v11[i + 2]) < 0)
    {
      operator delete(v11[i]);
    }
  }

  sub_1004C0818(v4);
  sub_1004C0818(v5);
  return sub_1004C0818(v6);
}

void sub_1004B80C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = -168;
  v20 = v17;
  do
  {
    v20 = sub_1004BF64C(v20) - 56;
    v19 += 56;
  }

  while (v19);
  sub_1004C0818(&a9);
  sub_1004C0818(&a13);
  sub_1004C0818(&a17);
  _Unwind_Resume(a1);
}

void sub_1004B814C(uint64_t a1, char a2, uint64_t a3)
{
  v233 = a2;
  v5 = objc_alloc_init(NSAutoreleasePool);
  v232 = 0;
  v231 = 0;
  v230 = 1;
  v229 = 1;
  if (sub_10005BBE4(a3, "kCLConnectionMessageRegionTypeKey", &v232))
  {
    if (sub_10001CB4C(a3, "kCLConnectionMessageSubscribeKey", &v233, 0xFFFFFFFFLL))
    {
      if (sub_1004FBF14(a3, "kCLConnectionMessageNameKey", &v231))
      {
        if (sub_10001CB4C(a3, "kCLConnectionMessageNotifyOnEntryKey", &v230, 0xFFFFFFFFLL))
        {
          if (sub_10001CB4C(a3, "kCLConnectionMessageNotifyOnExitKey", &v229, 0xFFFFFFFFLL))
          {
            v228 = 0;
            if (sub_10001CB4C(a3, "kCLConnectionMessageConservativeEntry", &v228 + 1, 0xFFFFFFFFLL))
            {
              if (sub_10001CB4C(a3, "kCLConnectionMessageEmergencyKey", &v228, 0xFFFFFFFFLL))
              {
                if (v228 != 1 || (sub_1004BC7F8(a1) & 1) != 0)
                {
                  sub_1000238CC(v231, &v226);
                  sub_10000EC00(&__src, [objc_msgSend(*(a1 + 24) "legacyClientKey")]);
                  sub_10000EC00(&__p, "");
                  sub_10000EC00(&__str, "");
                  if (sub_100175094(a3, "kCLConnectionMessageOnBehalfOfKey", &__str))
                  {
                    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      size = __str.__r_.__value_.__l.__size_;
                    }

                    if (size)
                    {
                      if ((sub_1004BC690(a1) & 1) == 0)
                      {
                        if (qword_1025D4790 != -1)
                        {
                          sub_101896904();
                        }

                        v49 = qword_1025D4798;
                        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                        {
                          v50 = *(a1 + 24);
                          p_p = &__p;
                          if (SHIBYTE(v223) < 0)
                          {
                            p_p = __p;
                          }

                          *buf = 138543618;
                          *&buf[4] = v50;
                          *&buf[12] = 2082;
                          *&buf[14] = p_p;
                          _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have appropriate entitlement to act as a proxy service to %{public}s", buf, 0x16u);
                        }

                        if (sub_10000A100(121, 0))
                        {
                          sub_10189692C(buf);
                          v52 = *(a1 + 24);
                          v53 = &__p;
                          if (SHIBYTE(v223) < 0)
                          {
                            v53 = __p;
                          }

                          LODWORD(v239[0]) = 138543618;
                          *(v239 + 4) = v52;
                          WORD2(v239[1]) = 2082;
                          *(&v239[1] + 6) = v53;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Client %{public}@ does not have appropriate entitlement to act as a proxy service to %{public}s", v239, 22);
                          v55 = v54;
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v54);
                          if (v55 != buf)
                          {
                            free(v55);
                          }
                        }

                        goto LABEL_345;
                      }

                      sub_100034EE4(buf, &__str);
                      sub_100037ACC(buf, v239);
                      if (SHIBYTE(v223) < 0)
                      {
                        operator delete(__p);
                      }

                      __p = *v239;
                      v223 = v239[2];
                      HIBYTE(v239[2]) = 0;
                      LOBYTE(v239[0]) = 0;
                      sub_100039BE8(buf);
                    }
                  }

                  else
                  {
                    if (qword_1025D4790 != -1)
                    {
                      sub_101896904();
                    }

                    v22 = qword_1025D4798;
                    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
                    {
                      p_src = &__src;
                      if (v225 < 0)
                      {
                        p_src = __src;
                      }

                      v24 = &v226;
                      if (v227 < 0)
                      {
                        v24 = v226;
                      }

                      *buf = 136381187;
                      *&buf[4] = "kCLConnectionMessageOnBehalfOfKey";
                      *&buf[12] = 2081;
                      *&buf[14] = p_src;
                      *&buf[22] = 2081;
                      *&buf[24] = v24;
                      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "#Warning Couldn't get value for key %{private}s, %{private}s/%{private}s", buf, 0x20u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_10189692C(buf);
                      v138 = &__src;
                      if (v225 < 0)
                      {
                        v138 = __src;
                      }

                      v139 = &v226;
                      if (v227 < 0)
                      {
                        v139 = v226;
                      }

                      LODWORD(v239[0]) = 136381187;
                      *(v239 + 4) = "kCLConnectionMessageOnBehalfOfKey";
                      WORD2(v239[1]) = 2081;
                      *(&v239[1] + 6) = v138;
                      HIWORD(v239[2]) = 2081;
                      v240 = v139;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "#Warning Couldn't get value for key %{private}s, %{private}s/%{private}s", v239, 32);
                      v141 = v140;
                      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v140);
                      if (v141 != buf)
                      {
                        free(v141);
                      }
                    }
                  }

                  sub_10000EC00(&v220, "");
                  sub_100175094(a3, "kCLConnectionMessageDeviceIDKey", &v220);
                  v25 = HIBYTE(v220.__r_.__value_.__r.__words[2]);
                  if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v25 = v220.__r_.__value_.__l.__size_;
                  }

                  if (v25)
                  {
                    if ((sub_1004BC8E8(a1) & 1) == 0)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v36 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        v37 = *(a1 + 24);
                        *buf = 138543362;
                        *&buf[4] = v37;
                        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_FAULT, "#Warning #FenceHandoff %{public}@ does not have the appropriate entitlement for fence handoff service", buf, 0xCu);
                      }

                      if (sub_10000A100(121, 0))
                      {
                        sub_10189692C(buf);
                        v38 = *(a1 + 24);
                        LODWORD(v239[0]) = 138543362;
                        *(v239 + 4) = v38;
                        LODWORD(v173) = 12;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "#Warning #FenceHandoff %{public}@ does not have the appropriate entitlement for fence handoff service", v239, v173);
                        v40 = v39;
                        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v39);
                        if (v40 != buf)
                        {
                          free(v40);
                        }
                      }

                      goto LABEL_343;
                    }

                    v26 = [NSUUID alloc];
                    if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v27 = &v220;
                    }

                    else
                    {
                      v27 = v220.__r_.__value_.__r.__words[0];
                    }

                    v28 = [v26 initWithUUIDString:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v27)}];
                  }

                  else
                  {
                    v28 = 0;
                  }

                  sub_10000EC00(&v219, "");
                  sub_100175094(a3, "kCLConnectionMessageHandoffTagKey", &v219);
                  v33 = HIBYTE(v220.__r_.__value_.__r.__words[2]);
                  if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v33 = v220.__r_.__value_.__l.__size_;
                  }

                  if (!v33)
                  {
                    goto LABEL_92;
                  }

                  v34 = HIBYTE(v219.__r_.__value_.__r.__words[2]);
                  if ((v219.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v34 = v219.__r_.__value_.__l.__size_;
                  }

                  if (!v34)
                  {
                    if (qword_1025D4790 != -1)
                    {
                      sub_101896904();
                    }

                    v56 = qword_1025D4798;
                    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                    {
                      v57 = &v226;
                      if (v227 < 0)
                      {
                        v57 = v226;
                      }

                      *buf = 68289282;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2082;
                      *&buf[20] = v57;
                      _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#FenceHandoff Handoff is empty for a handed of region, fenceName:%{public, location:escape_only}s}", buf, 0x1Cu);
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }
                    }

                    v58 = qword_1025D4798;
                    if (!os_signpost_enabled(qword_1025D4798))
                    {
                      goto LABEL_341;
                    }

                    v59 = &v226;
                    if (v227 < 0)
                    {
                      v59 = v226;
                    }

                    *buf = 68289282;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2082;
                    *&buf[20] = v59;
                    v60 = "#FenceHandoff Handoff is empty for a handed of region";
                    v61 = "{msg%{public}.0s:#FenceHandoff Handoff is empty for a handed of region, fenceName:%{public, location:escape_only}s}";
                  }

                  else
                  {
LABEL_92:
                    v35 = 0;
                    if (v232 <= 1)
                    {
                      if (v232)
                      {
                        if (v232 != 1)
                        {
LABEL_339:
                          if ((v35 & sub_1000F3B70(a1)) == 1)
                          {
                            sub_1000F3388(a1);
                          }

                          goto LABEL_341;
                        }

LABEL_105:
                        *v234 = 0;
                        v218 = 0.0;
                        v217 = 0.0;
                        v216 = 0.0;
                        v215 = 0;
                        if ((sub_10001CB4C(a3, "kCLConnectionMessageMonitoringNearby", &v215, 0xFFFFFFFFLL) & 1) == 0)
                        {
                          if (qword_1025D4790 != -1)
                          {
                            sub_101896904();
                          }

                          v71 = qword_1025D4798;
                          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 136446210;
                            *&buf[4] = "kCLConnectionMessageMonitoringNearby";
                            _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                          }

                          if (!sub_10000A100(121, 0))
                          {
                            goto LABEL_341;
                          }

                          sub_10189692C(buf);
                          LODWORD(v239[0]) = 136446210;
                          *(v239 + 4) = "kCLConnectionMessageMonitoringNearby";
                          LODWORD(v173) = 12;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, v173);
                          v73 = v72;
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v72);
                          goto LABEL_469;
                        }

                        v41 = v232;
                        if (v232 == 3 && (sub_1004BC960(a1) & 1) == 0)
                        {
                          if (qword_1025D4790 != -1)
                          {
                            sub_101896904();
                          }

                          v83 = qword_1025D4798;
                          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                          {
                            v84 = *(a1 + 24);
                            *buf = 138543362;
                            *&buf[4] = v84;
                            _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have appropriate entitlement to use significant", buf, 0xCu);
                          }

                          if (!sub_10000A100(121, 0))
                          {
                            goto LABEL_341;
                          }

                          sub_10189692C(buf);
                          v85 = *(a1 + 24);
                          LODWORD(v239[0]) = 138543362;
                          *(v239 + 4) = v85;
                          LODWORD(v173) = 12;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Client %{public}@ does not have appropriate entitlement to use significant", v239, v173);
                          v73 = v86;
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v86);
                          goto LABEL_469;
                        }

                        v214 = 0;
                        if ((sub_10001CB4C(a3, "kCLConnectionMessageLowPowerFenceKey", &v214, 0xFFFFFFFFLL) & 1) == 0)
                        {
                          if (qword_1025D4790 != -1)
                          {
                            sub_101896904();
                          }

                          v81 = qword_1025D4798;
                          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 136446210;
                            *&buf[4] = "kCLConnectionMessageLowPowerFenceKey";
                            _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                          }

                          if (!sub_10000A100(121, 0))
                          {
                            goto LABEL_341;
                          }

                          sub_10189692C(buf);
                          LODWORD(v239[0]) = 136446210;
                          *(v239 + 4) = "kCLConnectionMessageLowPowerFenceKey";
                          LODWORD(v173) = 12;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, v173);
                          v73 = v82;
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v82);
                          goto LABEL_469;
                        }

                        if (v214 && (sub_1004BC870(a1) & 1) == 0)
                        {
                          if (qword_1025D4790 != -1)
                          {
                            sub_101896904();
                          }

                          v93 = qword_1025D4798;
                          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                          {
                            v94 = *(a1 + 24);
                            *buf = 138543362;
                            *&buf[4] = v94;
                            _os_log_impl(dword_100000000, v93, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have appropriate entitlement to use low power fence", buf, 0xCu);
                          }

                          if (!sub_10000A100(121, 0))
                          {
                            goto LABEL_341;
                          }

                          sub_10189692C(buf);
                          v95 = *(a1 + 24);
                          LODWORD(v239[0]) = 138543362;
                          *(v239 + 4) = v95;
                          LODWORD(v173) = 12;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Client %{public}@ does not have appropriate entitlement to use low power fence", v239, v173);
                          v73 = v96;
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v96);
                          goto LABEL_469;
                        }

                        sub_1004F9A30(a1 + 72, a3);
                        *(a1 + 65) = 1;
                        if (*(a1 + 64) == 1)
                        {
                          if (v233 == 1)
                          {
                            if ((sub_1000B9370(a3, "kCLConnectionMessageLatitudeKey", v234) & 1) == 0)
                            {
                              if (qword_1025D4790 != -1)
                              {
                                sub_101896904();
                              }

                              v111 = qword_1025D4798;
                              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                              {
                                *buf = 136446210;
                                *&buf[4] = "kCLConnectionMessageLatitudeKey";
                                _os_log_impl(dword_100000000, v111, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                              }

                              if (!sub_10000A100(121, 0))
                              {
                                goto LABEL_341;
                              }

                              sub_10189692C(buf);
                              LODWORD(v239[0]) = 136446210;
                              *(v239 + 4) = "kCLConnectionMessageLatitudeKey";
                              LODWORD(v173) = 12;
                              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, v173);
                              v73 = v112;
                              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v112);
                              goto LABEL_469;
                            }

                            if ((sub_1000B9370(a3, "kCLConnectionMessageLongitudeKey", &v218) & 1) == 0)
                            {
                              if (qword_1025D4790 != -1)
                              {
                                sub_101896904();
                              }

                              v119 = qword_1025D4798;
                              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                              {
                                *buf = 136446210;
                                *&buf[4] = "kCLConnectionMessageLongitudeKey";
                                _os_log_impl(dword_100000000, v119, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                              }

                              if (!sub_10000A100(121, 0))
                              {
                                goto LABEL_341;
                              }

                              sub_10189692C(buf);
                              LODWORD(v239[0]) = 136446210;
                              *(v239 + 4) = "kCLConnectionMessageLongitudeKey";
                              LODWORD(v173) = 12;
                              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, v173);
                              v73 = v120;
                              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v120);
                              goto LABEL_469;
                            }

                            if ((sub_1000B9370(a3, "kCLConnectionMessageRadiusKey", &v217) & 1) == 0)
                            {
                              if (qword_1025D4790 != -1)
                              {
                                sub_101896904();
                              }

                              v124 = qword_1025D4798;
                              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                              {
                                *buf = 136446210;
                                *&buf[4] = "kCLConnectionMessageRadiusKey";
                                _os_log_impl(dword_100000000, v124, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                              }

                              if (!sub_10000A100(121, 0))
                              {
                                goto LABEL_341;
                              }

                              sub_10189692C(buf);
                              LODWORD(v239[0]) = 136446210;
                              *(v239 + 4) = "kCLConnectionMessageRadiusKey";
                              LODWORD(v173) = 12;
                              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, v173);
                              v73 = v125;
                              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v125);
                              goto LABEL_469;
                            }

                            if ((sub_1000B9370(a3, "kCLConnectionMessageDesiredAccuracyKey", &v216) & 1) == 0)
                            {
                              if (qword_1025D4790 != -1)
                              {
                                sub_101896904();
                              }

                              v136 = qword_1025D4798;
                              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                              {
                                *buf = 136446210;
                                *&buf[4] = "kCLConnectionMessageDesiredAccuracyKey";
                                _os_log_impl(dword_100000000, v136, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                              }

                              if (!sub_10000A100(121, 0))
                              {
                                goto LABEL_341;
                              }

                              sub_10189692C(buf);
                              LODWORD(v239[0]) = 136446210;
                              *(v239 + 4) = "kCLConnectionMessageDesiredAccuracyKey";
                              LODWORD(v173) = 12;
                              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, v173);
                              v73 = v137;
                              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v137);
                              goto LABEL_469;
                            }

                            v213 = 0;
                            if (sub_10005BBE4(a3, "kCLConnectionMessageReferenceFrameKey", &v213))
                            {
                              if (qword_1025D4640 != -1)
                              {
                                sub_101896970();
                              }

                              v42 = off_1025D4648;
                              if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
                              {
                                if (SHIBYTE(v223) >= 0)
                                {
                                  v43 = &__p;
                                }

                                else
                                {
                                  v43 = __p;
                                }

                                v44 = &__src;
                                if (v225 < 0)
                                {
                                  v44 = __src;
                                }

                                v176 = v44;
                                v177 = v43;
                                v45 = &v226;
                                if (v227 < 0)
                                {
                                  v45 = v226;
                                }

                                v175 = v45;
                                v174 = LocationLogEncryptionDataSize();
                                v46 = LocationLogEncryptionEncryptData();
                                v47 = LocationLogEncryptionDataSize();
                                v48 = LocationLogEncryptionEncryptData();
                                *buf = 68291331;
                                *&buf[4] = 0;
                                *&buf[8] = 2082;
                                *&buf[10] = "";
                                *&buf[18] = 2082;
                                *&buf[20] = v177;
                                *&buf[28] = 2082;
                                *&buf[30] = v176;
                                v246 = 2081;
                                v247 = v175;
                                v248 = 1040;
                                v249 = v174;
                                v250 = 2098;
                                v251 = v46;
                                v252 = 1040;
                                v253 = v47;
                                v254 = 2098;
                                v255 = v48;
                                v256 = 2050;
                                v257 = v217;
                                v258 = 2050;
                                v259 = v216;
                                _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Adding geographic fence, onBehalf:%{public, location:escape_only}s, clientKey:%{public, location:escape_only}s, fenceName:%{private, location:escape_only}s, center.latitude:%{public, location:Encrypted_latitude}.*P, center.longitude:%{public, location:Encrypted_longitude}.*P, radius:%{public}f, desiredAccuracy:%{public}f}", buf, 0x64u);
                              }

                              if (SHIBYTE(v225) < 0)
                              {
                                sub_100007244(&v211, __src, *(&__src + 1));
                              }

                              else
                              {
                                v211 = __src;
                                v212 = v225;
                              }

                              if (SHIBYTE(v227) < 0)
                              {
                                sub_100007244(&v209, v226, *(&v226 + 1));
                              }

                              else
                              {
                                v209 = v226;
                                v210 = v227;
                              }

                              if (SHIBYTE(v223) < 0)
                              {
                                sub_100007244(&v207, __p, *(&__p + 1));
                              }

                              else
                              {
                                v207 = __p;
                                v208 = v223;
                              }

                              v149 = *v234;
                              v150 = v218;
                              v151 = v217;
                              v152 = v216;
                              if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
                              {
                                sub_100007244(&v206, v219.__r_.__value_.__l.__data_, v219.__r_.__value_.__l.__size_);
                              }

                              else
                              {
                                v206 = v219;
                              }

                              sub_100BC8698(buf, &v211, &v209, &v207, -1, &v206, v28, 0, v149, v150, v151, v152);
                              if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v206.__r_.__value_.__l.__data_);
                              }

                              if (SHIBYTE(v208) < 0)
                              {
                                operator delete(v207);
                              }

                              if (SHIBYTE(v210) < 0)
                              {
                                operator delete(v209);
                              }

                              if (SHIBYTE(v212) < 0)
                              {
                                operator delete(v211);
                              }

                              if (v230 == 1)
                              {
                                v260 |= 1uLL;
                              }

                              if (v229 == 1)
                              {
                                v260 |= 2uLL;
                              }

                              if (v214)
                              {
                                v260 |= 0x20uLL;
                              }

                              if (v41 == 3)
                              {
                                v260 |= 0x80uLL;
                              }

                              if (HIBYTE(v228) == 1)
                              {
                                v260 |= 4uLL;
                              }

                              if (v228 == 1)
                              {
                                v260 |= 0x10uLL;
                              }

                              if (v215)
                              {
                                v260 |= 0x40uLL;
                              }

                              v261 = v213;
                              v153 = *(*sub_10005BA08(a1) + 16);
                              sub_1004BF718(v205, buf);
                              [v153 addFence:sub_1004BCF74(v205)];
                              sub_1004BF9B8(v205);
                              sub_100F354F8(a1);
                              goto LABEL_337;
                            }

                            if (qword_1025D4790 != -1)
                            {
                              sub_101896904();
                            }

                            v142 = qword_1025D4798;
                            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                            {
                              *buf = 136446210;
                              *&buf[4] = "kCLConnectionMessageReferenceFrameKey";
                              _os_log_impl(dword_100000000, v142, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                            }

                            if (!sub_10000A100(121, 0))
                            {
                              goto LABEL_341;
                            }

                            goto LABEL_321;
                          }

                          if (qword_1025D4640 != -1)
                          {
                            sub_101896970();
                          }

                          v97 = off_1025D4648;
                          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
                          {
                            v98 = &__p;
                            if (SHIBYTE(v223) < 0)
                            {
                              v98 = __p;
                            }

                            v99 = &__src;
                            if (v225 < 0)
                            {
                              v99 = __src;
                            }

                            v100 = &v226;
                            if (v227 < 0)
                            {
                              v100 = v226;
                            }

                            *buf = 136446723;
                            *&buf[4] = v98;
                            *&buf[12] = 2082;
                            *&buf[14] = v99;
                            *&buf[22] = 2081;
                            *&buf[24] = v100;
                            _os_log_impl(dword_100000000, v97, OS_LOG_TYPE_DEFAULT, "Removing geographic fence [%{public}s]/%{public}s/%{private}s", buf, 0x20u);
                          }

                          if (sub_10000A100(121, 2))
                          {
                            sub_101896998(buf);
                            v157 = &__p;
                            if (SHIBYTE(v223) < 0)
                            {
                              v157 = __p;
                            }

                            v158 = &__src;
                            if (v225 < 0)
                            {
                              v158 = __src;
                            }

                            v159 = &v226;
                            if (v227 < 0)
                            {
                              v159 = v226;
                            }

                            LODWORD(v239[0]) = 136446723;
                            *(v239 + 4) = v157;
                            WORD2(v239[1]) = 2082;
                            *(&v239[1] + 6) = v158;
                            HIWORD(v239[2]) = 2081;
                            v240 = v159;
                            LODWORD(v173) = 32;
                            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 0, "Removing geographic fence [%{public}s]/%{public}s/%{private}s", v239, v173);
                            v161 = v160;
                            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v160);
                            if (v161 != buf)
                            {
                              free(v161);
                            }
                          }

                          if (SHIBYTE(v225) < 0)
                          {
                            sub_100007244(&__dst, __src, *(&__src + 1));
                          }

                          else
                          {
                            __dst = __src;
                            v204 = v225;
                          }

                          if (SHIBYTE(v227) < 0)
                          {
                            sub_100007244(&v201, v226, *(&v226 + 1));
                          }

                          else
                          {
                            v201 = v226;
                            v202 = v227;
                          }

                          if (SHIBYTE(v223) < 0)
                          {
                            sub_100007244(&v199, __p, *(&__p + 1));
                          }

                          else
                          {
                            v199 = __p;
                            v200 = v223;
                          }

                          sub_10005FC54(buf, &__dst, &v201, &v199);
                          if (SHIBYTE(v200) < 0)
                          {
                            operator delete(v199);
                          }

                          if (SHIBYTE(v202) < 0)
                          {
                            operator delete(v201);
                          }

                          if (SHIBYTE(v204) < 0)
                          {
                            operator delete(__dst);
                          }

                          v114 = *(*sub_10005BA08(a1) + 16);
                          sub_1004BF718(v198, buf);
                          [v114 removeFence:sub_1004BCF74(v198)];
                          v115 = v198;
LABEL_336:
                          sub_1004BF9B8(v115);
LABEL_337:
                          sub_1004BF9B8(buf);
                        }

LABEL_338:
                        v35 = 1;
                        goto LABEL_339;
                      }

                      sub_1004BFB14(v239, &__src, &v226, &__p);
                      if (sub_100175094(a3, "kCLConnectionMessageProximityUUIDKey", &v239[1]))
                      {
                        if (sub_1004FB1EC(a3, "kCLConnectionMessageMajorKey", &v241, 0xFFFFFFFFLL))
                        {
                          if (sub_1004FB1EC(a3, "kCLConnectionMessageMinorKey", &v242, 0xFFFFFFFFLL))
                          {
                            LODWORD(v218) = 0;
                            if (sub_10005BBE4(a3, "kCLConnectionMessageRegionDefinitionKey", &v218))
                            {
                              v243 = LOBYTE(v218) & 7;
                              LOBYTE(v217) = 0;
                              if (sub_10001CB4C(a3, "kCLConnectionMessageNotifyEntryStateOnDisplayKey", &v217, 0xFFFFFFFFLL))
                              {
                                if (v230 == 1)
                                {
                                  v244 |= 1u;
                                }

                                if (v229 == 1)
                                {
                                  v244 |= 2u;
                                }

                                if (LOBYTE(v217) == 1)
                                {
                                  v244 |= 4u;
                                }

                                if (HIBYTE(v228) == 1)
                                {
                                  v244 |= 8u;
                                }

                                if (v233 != 1)
                                {
                                  v121 = *(*sub_10005B860(a1) + 16);
                                  v178[0] = _NSConcreteStackBlock;
                                  v178[1] = 3321888768;
                                  v178[2] = sub_1004BD15C;
                                  v178[3] = &unk_102457600;
                                  v63 = v179;
                                  sub_1004C04F8(v179, v239);
                                  [v121 doAsync:v178];
                                  goto LABEL_361;
                                }

                                if (sub_10117DF9C(v239))
                                {
                                  v62 = *(*sub_10005B860(a1) + 16);
                                  v180[0] = _NSConcreteStackBlock;
                                  v180[1] = 3321888768;
                                  v180[2] = sub_1004BD114;
                                  v180[3] = &unk_102457600;
                                  v63 = v181;
                                  sub_1004C04F8(v181, v239);
                                  [v62 doAsync:v180];
                                  sub_100F354F8(a1);
LABEL_361:
                                  sub_10005DB2C(v63);
                                  sub_10005DB2C(v239);
                                  v35 = 1;
                                  goto LABEL_339;
                                }

                                if (qword_1025D4790 != -1)
                                {
                                  sub_101896904();
                                }

                                v126 = qword_1025D4798;
                                if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                                {
                                  v127 = &__p;
                                  if (SHIBYTE(v223) < 0)
                                  {
                                    v127 = __p;
                                  }

                                  v128 = &__src;
                                  if (v225 < 0)
                                  {
                                    v128 = __src;
                                  }

                                  v129 = &v226;
                                  if (v227 < 0)
                                  {
                                    v129 = v226;
                                  }

                                  *buf = 136446722;
                                  *&buf[4] = v127;
                                  *&buf[12] = 2082;
                                  *&buf[14] = v128;
                                  *&buf[22] = 2082;
                                  *&buf[24] = v129;
                                  _os_log_impl(dword_100000000, v126, OS_LOG_TYPE_FAULT, "Invalid beacon region request [%{public}s]/%{public}s/%{public}s.", buf, 0x20u);
                                }

                                if (!sub_10000A100(121, 0))
                                {
                                  goto LABEL_301;
                                }

                                sub_10189692C(buf);
                                v130 = &__p;
                                if (SHIBYTE(v223) < 0)
                                {
                                  v130 = __p;
                                }

                                v131 = &__src;
                                if (v225 < 0)
                                {
                                  v131 = __src;
                                }

                                v132 = &v226;
                                if (v227 < 0)
                                {
                                  v132 = v226;
                                }

                                *v234 = 136446722;
                                *&v234[4] = v130;
                                v235 = 2082;
                                v236 = v131;
                                v237 = 2082;
                                v238 = v132;
                                LODWORD(v173) = 32;
                                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Invalid beacon region request [%{public}s]/%{public}s/%{public}s.", v234, v173);
                                v80 = v133;
                                sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v133);
                              }

                              else
                              {
                                if (qword_1025D4790 != -1)
                                {
                                  sub_101896904();
                                }

                                v113 = qword_1025D4798;
                                if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                                {
                                  *buf = 136446210;
                                  *&buf[4] = "kCLConnectionMessageNotifyEntryStateOnDisplayKey";
                                  _os_log_impl(dword_100000000, v113, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                                }

                                if (!sub_10000A100(121, 0))
                                {
                                  goto LABEL_301;
                                }

                                sub_10189692C(buf);
                                *v234 = 136446210;
                                *&v234[4] = "kCLConnectionMessageNotifyEntryStateOnDisplayKey";
                                LODWORD(v173) = 12;
                                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v234, v173);
                                v80 = v167;
                                sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v167);
                              }
                            }

                            else
                            {
                              if (qword_1025D4790 != -1)
                              {
                                sub_101896904();
                              }

                              v105 = qword_1025D4798;
                              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                              {
                                *buf = 136446210;
                                *&buf[4] = "kCLConnectionMessageRegionDefinitionKey";
                                _os_log_impl(dword_100000000, v105, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                              }

                              if (!sub_10000A100(121, 0))
                              {
                                goto LABEL_301;
                              }

                              sub_10189692C(buf);
                              *v234 = 136446210;
                              *&v234[4] = "kCLConnectionMessageRegionDefinitionKey";
                              LODWORD(v173) = 12;
                              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v234, v173);
                              v80 = v106;
                              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v106);
                            }
                          }

                          else
                          {
                            if (qword_1025D4790 != -1)
                            {
                              sub_101896904();
                            }

                            v91 = qword_1025D4798;
                            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                            {
                              *buf = 136446210;
                              *&buf[4] = "kCLConnectionMessageMinorKey";
                              _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                            }

                            if (!sub_10000A100(121, 0))
                            {
                              goto LABEL_301;
                            }

                            sub_10189692C(buf);
                            *v234 = 136446210;
                            *&v234[4] = "kCLConnectionMessageMinorKey";
                            LODWORD(v173) = 12;
                            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v234, v173);
                            v80 = v92;
                            sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v92);
                          }
                        }

                        else
                        {
                          if (qword_1025D4790 != -1)
                          {
                            sub_101896904();
                          }

                          v89 = qword_1025D4798;
                          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 136446210;
                            *&buf[4] = "kCLConnectionMessageMajorKey";
                            _os_log_impl(dword_100000000, v89, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                          }

                          if (!sub_10000A100(121, 0))
                          {
                            goto LABEL_301;
                          }

                          sub_10189692C(buf);
                          *v234 = 136446210;
                          *&v234[4] = "kCLConnectionMessageMajorKey";
                          LODWORD(v173) = 12;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v234, v173);
                          v80 = v90;
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v90);
                        }
                      }

                      else
                      {
                        if (qword_1025D4790 != -1)
                        {
                          sub_101896904();
                        }

                        v78 = qword_1025D4798;
                        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 136446210;
                          *&buf[4] = "kCLConnectionMessageProximityUUIDKey";
                          _os_log_impl(dword_100000000, v78, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                        }

                        if (!sub_10000A100(121, 0))
                        {
                          goto LABEL_301;
                        }

                        sub_10189692C(buf);
                        *v234 = 136446210;
                        *&v234[4] = "kCLConnectionMessageProximityUUIDKey";
                        LODWORD(v173) = 12;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v234, v173);
                        v80 = v79;
                        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v79);
                      }

                      if (v80 != buf)
                      {
                        free(v80);
                      }

LABEL_301:
                      sub_10005DB2C(v239);
LABEL_341:
                      if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v219.__r_.__value_.__l.__data_);
                      }

LABEL_343:
                      if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v220.__r_.__value_.__l.__data_);
                      }

LABEL_345:
                      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__str.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v223) < 0)
                      {
                        operator delete(__p);
                      }

                      if (SHIBYTE(v225) < 0)
                      {
                        operator delete(__src);
                      }

                      if (SHIBYTE(v227) < 0)
                      {
                        operator delete(v226);
                      }

                      goto LABEL_353;
                    }

                    if (v232 != 2)
                    {
                      if (v232 != 3)
                      {
                        goto LABEL_339;
                      }

                      goto LABEL_105;
                    }

                    if ((sub_1004BC780(a1) & 1) == 0)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v74 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        v75 = *(a1 + 24);
                        *buf = 138543362;
                        *&buf[4] = v75;
                        _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have appropriate entitlement to use polygonal regions", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_341;
                      }

                      sub_10189692C(buf);
                      v76 = *(a1 + 24);
                      LODWORD(v239[0]) = 138543362;
                      *(v239 + 4) = v76;
                      LODWORD(v173) = 12;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Client %{public}@ does not have appropriate entitlement to use polygonal regions", v239, v173);
                      v73 = v77;
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v77);
                      goto LABEL_469;
                    }

                    LOBYTE(v213) = 0;
                    if ((sub_10001CB4C(a3, "kCLConnectionMessageMonitoringNearby", &v213, 0xFFFFFFFFLL) & 1) == 0)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v87 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageMonitoringNearby";
                        _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_341;
                      }

                      sub_10189692C(buf);
                      LODWORD(v239[0]) = 136446210;
                      *(v239 + 4) = "kCLConnectionMessageMonitoringNearby";
                      LODWORD(v173) = 12;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, v173);
                      v73 = v88;
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v88);
                      goto LABEL_469;
                    }

                    if (v213 == 1 && (sub_1004BC708(a1) & 1) == 0)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v101 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        v102 = *(a1 + 24);
                        *buf = 138543362;
                        *&buf[4] = v102;
                        _os_log_impl(dword_100000000, v101, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have appropriate entitlement to monitor while nearby", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_341;
                      }

                      sub_10189692C(buf);
                      v103 = *(a1 + 24);
                      LODWORD(v239[0]) = 138543362;
                      *(v239 + 4) = v103;
                      LODWORD(v173) = 12;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Client %{public}@ does not have appropriate entitlement to monitor while nearby", v239, v173);
                      v73 = v104;
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v104);
                      goto LABEL_469;
                    }

                    if (*(a1 + 64) != 1)
                    {
                      goto LABEL_338;
                    }

                    if (v233 != 1)
                    {
                      if (qword_1025D4640 != -1)
                      {
                        sub_101896970();
                      }

                      v107 = off_1025D4648;
                      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
                      {
                        v108 = &__p;
                        if (SHIBYTE(v223) < 0)
                        {
                          v108 = __p;
                        }

                        v109 = &__src;
                        if (v225 < 0)
                        {
                          v109 = __src;
                        }

                        v110 = &v226;
                        if (v227 < 0)
                        {
                          v110 = v226;
                        }

                        *buf = 136446723;
                        *&buf[4] = v108;
                        *&buf[12] = 2082;
                        *&buf[14] = v109;
                        *&buf[22] = 2081;
                        *&buf[24] = v110;
                        _os_log_impl(dword_100000000, v107, OS_LOG_TYPE_DEBUG, "Removing geographic polygonal fence [%{public}s]/%{public}s/%{private}s", buf, 0x20u);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101896998(buf);
                        v162 = &__p;
                        if (SHIBYTE(v223) < 0)
                        {
                          v162 = __p;
                        }

                        v163 = &__src;
                        if (v225 < 0)
                        {
                          v163 = __src;
                        }

                        v164 = &v226;
                        if (v227 < 0)
                        {
                          v164 = v226;
                        }

                        LODWORD(v239[0]) = 136446723;
                        *(v239 + 4) = v162;
                        WORD2(v239[1]) = 2082;
                        *(&v239[1] + 6) = v163;
                        HIWORD(v239[2]) = 2081;
                        v240 = v164;
                        LODWORD(v173) = 32;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Removing geographic polygonal fence [%{public}s]/%{public}s/%{private}s", v239, v173);
                        v166 = v165;
                        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v165);
                        if (v166 != buf)
                        {
                          free(v166);
                        }
                      }

                      if (SHIBYTE(v225) < 0)
                      {
                        sub_100007244(&v187, __src, *(&__src + 1));
                      }

                      else
                      {
                        v187 = __src;
                        v188 = v225;
                      }

                      if (SHIBYTE(v227) < 0)
                      {
                        sub_100007244(&v185, v226, *(&v226 + 1));
                      }

                      else
                      {
                        v185 = v226;
                        v186 = v227;
                      }

                      if (SHIBYTE(v223) < 0)
                      {
                        sub_100007244(&v183, __p, *(&__p + 1));
                      }

                      else
                      {
                        v183 = __p;
                        v184 = v223;
                      }

                      sub_10005FC54(buf, &v187, &v185, &v183);
                      if (SHIBYTE(v184) < 0)
                      {
                        operator delete(v183);
                      }

                      if (SHIBYTE(v186) < 0)
                      {
                        operator delete(v185);
                      }

                      if (SHIBYTE(v188) < 0)
                      {
                        operator delete(v187);
                      }

                      v118 = *(*sub_10005BA08(a1) + 16);
                      sub_1004BF718(v182, buf);
                      [v118 removeFence:sub_1004BCF74(v182)];
                      v115 = v182;
                      goto LABEL_336;
                    }

                    LODWORD(v217) = 0;
                    LODWORD(v216) = 0;
                    *v234 = 0;
                    if ((sub_10005BBE4(a3, "kCLConnectionMessageReferenceFrameKey", &v217) & 1) == 0)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v116 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageReferenceFrameKey";
                        _os_log_impl(dword_100000000, v116, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_341;
                      }

LABEL_321:
                      sub_10189692C(buf);
                      LODWORD(v239[0]) = 136446210;
                      *(v239 + 4) = "kCLConnectionMessageReferenceFrameKey";
                      LODWORD(v173) = 12;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, v173);
                      v73 = v117;
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v117);
                      goto LABEL_469;
                    }

                    if ((sub_10005BBE4(a3, "kCLConnectionMessagePolygonalVerticesCountKey", &v216) & 1) == 0)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v122 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessagePolygonalVerticesCountKey";
                        _os_log_impl(dword_100000000, v122, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_341;
                      }

                      sub_10189692C(buf);
                      LODWORD(v239[0]) = 136446210;
                      *(v239 + 4) = "kCLConnectionMessagePolygonalVerticesCountKey";
                      LODWORD(v173) = 12;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, v173);
                      v73 = v123;
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v123);
                      goto LABEL_469;
                    }

                    if (!sub_1004FC7C8(a3, @"kCLConnectionMessagePolygonalVerticesKey", v234))
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v134 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessagePolygonalVerticesKey";
                        _os_log_impl(dword_100000000, v134, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_341;
                      }

                      sub_10189692C(buf);
                      LODWORD(v239[0]) = 136446210;
                      *(v239 + 4) = "kCLConnectionMessagePolygonalVerticesKey";
                      LODWORD(v173) = 12;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, v173);
                      v73 = v135;
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v135);
                      goto LABEL_469;
                    }

                    if (qword_1025D4640 != -1)
                    {
                      sub_101896970();
                    }

                    v64 = off_1025D4648;
                    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
                    {
                      v65 = &__p;
                      if (SHIBYTE(v223) < 0)
                      {
                        v65 = __p;
                      }

                      v66 = &__src;
                      if (v225 < 0)
                      {
                        v66 = __src;
                      }

                      v67 = &v226;
                      if (v227 < 0)
                      {
                        v67 = v226;
                      }

                      *buf = 136446723;
                      *&buf[4] = v65;
                      *&buf[12] = 2082;
                      *&buf[14] = v66;
                      *&buf[22] = 2081;
                      *&buf[24] = v67;
                      _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEBUG, "Adding geographic polygonal fence [%{public}s]/%{public}s/%{private}s", buf, 0x20u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101896998(buf);
                      v168 = &__p;
                      if (SHIBYTE(v223) < 0)
                      {
                        v168 = __p;
                      }

                      v169 = &__src;
                      if (v225 < 0)
                      {
                        v169 = __src;
                      }

                      v170 = &v226;
                      if (v227 < 0)
                      {
                        v170 = v226;
                      }

                      LODWORD(v239[0]) = 136446723;
                      *(v239 + 4) = v168;
                      WORD2(v239[1]) = 2082;
                      *(&v239[1] + 6) = v169;
                      HIWORD(v239[2]) = 2081;
                      v240 = v170;
                      LODWORD(v173) = 32;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Adding geographic polygonal fence [%{public}s]/%{public}s/%{private}s", v239, v173);
                      v172 = v171;
                      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v171);
                      if (v172 != buf)
                      {
                        free(v172);
                      }
                    }

                    v218 = 0.0;
                    v68 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:*v234 error:&v218];
                    v69 = [(NSArray *)v68 count];
                    if (v218 == 0.0)
                    {
                      v143 = v69;
                      if (LODWORD(v216) == v69)
                      {
                        if (kCLPolygonalRegionMinVertices <= SLODWORD(v216) && kCLPolygonalRegionMaxVertices >= SLODWORD(v216))
                        {
                          memset(v239, 0, sizeof(v239));
                          sub_1004BD074(v239, SLODWORD(v216));
                          if (SLODWORD(v216) >= 1)
                          {
                            v144 = 0;
                            do
                            {
                              [-[NSArray objectAtIndexedSubscript:](v68 objectAtIndexedSubscript:{v144), "coordinate"}];
                              *buf = v145;
                              [-[NSArray objectAtIndexedSubscript:](v68 objectAtIndexedSubscript:{v144), "coordinate"}];
                              *&buf[8] = v146;
                              sub_1004BFA38(v239, buf);
                              ++v144;
                            }

                            while (v144 < SLODWORD(v216));
                          }

                          if (SHIBYTE(v225) < 0)
                          {
                            sub_100007244(&v196, __src, *(&__src + 1));
                          }

                          else
                          {
                            v196 = __src;
                            v197 = v225;
                          }

                          if (SHIBYTE(v227) < 0)
                          {
                            sub_100007244(&v194, v226, *(&v226 + 1));
                          }

                          else
                          {
                            v194 = v226;
                            v195 = v227;
                          }

                          if (SHIBYTE(v223) < 0)
                          {
                            sub_100007244(&v192, __p, *(&__p + 1));
                          }

                          else
                          {
                            v192 = __p;
                            v193 = v223;
                          }

                          sub_10000EC00(v190, "");
                          sub_100BC869C(buf, &v196, &v194, &v192, v239, -1, v190, 0, 0);
                          if (v191 < 0)
                          {
                            operator delete(v190[0]);
                          }

                          if (SHIBYTE(v193) < 0)
                          {
                            operator delete(v192);
                          }

                          if (SHIBYTE(v195) < 0)
                          {
                            operator delete(v194);
                          }

                          if (SHIBYTE(v197) < 0)
                          {
                            operator delete(v196);
                          }

                          if (v230 == 1)
                          {
                            v260 |= 1uLL;
                          }

                          if (v229 == 1)
                          {
                            v260 |= 2uLL;
                          }

                          if (HIBYTE(v228) == 1)
                          {
                            v260 |= 4uLL;
                          }

                          if (v213 == 1)
                          {
                            v260 |= 8uLL;
                          }

                          if (v228 == 1)
                          {
                            v260 |= 0x10uLL;
                          }

                          v261 = LODWORD(v217);
                          v156 = *(*sub_10005BA08(a1) + 16);
                          sub_1004BF718(v189, buf);
                          [v156 addFence:sub_1004BCF74(v189)];
                          sub_1004BF9B8(v189);
                          sub_100F354F8(a1);
                          sub_1004BF9B8(buf);
                          if (v239[0])
                          {
                            v239[1] = v239[0];
                            operator delete(v239[0]);
                          }

                          goto LABEL_338;
                        }

                        if (qword_1025D4790 != -1)
                        {
                          sub_101896904();
                        }

                        v154 = qword_1025D4798;
                        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 67240192;
                          *&buf[4] = LODWORD(v216);
                          _os_log_impl(dword_100000000, v154, OS_LOG_TYPE_FAULT, "Number of vertices received invalid, %{public}d, monitoring", buf, 8u);
                        }

                        if (!sub_10000A100(121, 0))
                        {
                          goto LABEL_341;
                        }

                        sub_10189692C(buf);
                        LODWORD(v239[0]) = 67240192;
                        HIDWORD(v239[0]) = LODWORD(v216);
                        LODWORD(v173) = 8;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Number of vertices received invalid, %{public}d, monitoring", v239, v173);
                        v73 = v155;
                        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v155);
                      }

                      else
                      {
                        if (qword_1025D4790 != -1)
                        {
                          sub_101896904();
                        }

                        v147 = qword_1025D4798;
                        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 67240448;
                          *&buf[4] = LODWORD(v216);
                          *&buf[8] = 2050;
                          *&buf[10] = v143;
                          _os_log_impl(dword_100000000, v147, OS_LOG_TYPE_FAULT, "Number of vertices received doesn't match stored, %{public}d, %{public}lu", buf, 0x12u);
                        }

                        if (!sub_10000A100(121, 0))
                        {
                          goto LABEL_341;
                        }

                        sub_10189692C(buf);
                        LODWORD(v239[0]) = 67240448;
                        HIDWORD(v239[0]) = LODWORD(v216);
                        LOWORD(v239[1]) = 2050;
                        *(&v239[1] + 2) = v143;
                        LODWORD(v173) = 18;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Number of vertices received doesn't match stored, %{public}d, %{public}lu", v239, v173);
                        v73 = v148;
                        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v148);
                      }

LABEL_469:
                      if (v73 != buf)
                      {
                        free(v73);
                      }

                      goto LABEL_341;
                    }

                    if (qword_1025D4790 != -1)
                    {
                      sub_101896904();
                    }

                    v70 = qword_1025D4798;
                    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 68289282;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2114;
                      *&buf[20] = v218;
                      _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to get vertices from data in handleRequestRegionMonitoring, error:%{public, location:escape_only}@}", buf, 0x1Cu);
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }
                    }

                    v58 = qword_1025D4798;
                    if (!os_signpost_enabled(qword_1025D4798))
                    {
                      goto LABEL_341;
                    }

                    *buf = 68289282;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2114;
                    *&buf[20] = v218;
                    v60 = "Unable to get vertices from data in handleRequestRegionMonitoring";
                    v61 = "{msg%{public}.0s:Unable to get vertices from data in handleRequestRegionMonitoring, error:%{public, location:escape_only}@}";
                  }

                  _os_signpost_emit_with_name_impl(dword_100000000, v58, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v60, v61, buf, 0x1Cu);
                  goto LABEL_341;
                }

                if (qword_1025D4790 != -1)
                {
                  sub_101896904();
                }

                v29 = qword_1025D4798;
                if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                {
                  v30 = *(a1 + 24);
                  *buf = 138543362;
                  *&buf[4] = v30;
                  _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have the appropriate entitlement to act as an emergency service", buf, 0xCu);
                }

                if (sub_10000A100(121, 0))
                {
                  sub_10189692C(buf);
                  v31 = *(a1 + 24);
                  LODWORD(v239[0]) = 138543362;
                  *(v239 + 4) = v31;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Client %{public}@ does not have the appropriate entitlement to act as an emergency service", v239, 12);
                  v9 = v32;
                  sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v32);
LABEL_60:
                  if (v9 != buf)
                  {
                    free(v9);
                  }
                }
              }

              else
              {
                if (qword_1025D4790 != -1)
                {
                  sub_101896904();
                }

                v20 = qword_1025D4798;
                if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136446210;
                  *&buf[4] = "kCLConnectionMessageEmergencyKey";
                  _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                }

                if (sub_10000A100(121, 0))
                {
                  sub_10189692C(buf);
                  LODWORD(v239[0]) = 136446210;
                  *(v239 + 4) = "kCLConnectionMessageEmergencyKey";
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, 12);
                  v9 = v21;
                  sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v21);
                  goto LABEL_60;
                }
              }
            }

            else
            {
              if (qword_1025D4790 != -1)
              {
                sub_101896904();
              }

              v18 = qword_1025D4798;
              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
              {
                *buf = 136446210;
                *&buf[4] = "kCLConnectionMessageConservativeEntry";
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
              }

              if (sub_10000A100(121, 0))
              {
                sub_10189692C(buf);
                LODWORD(v239[0]) = 136446210;
                *(v239 + 4) = "kCLConnectionMessageConservativeEntry";
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, 12);
                v9 = v19;
                sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v19);
                goto LABEL_60;
              }
            }
          }

          else
          {
            if (qword_1025D4790 != -1)
            {
              sub_101896904();
            }

            v16 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
            {
              *buf = 136446210;
              *&buf[4] = "kCLConnectionMessageNotifyOnExitKey";
              _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
            }

            if (sub_10000A100(121, 0))
            {
              sub_10189692C(buf);
              LODWORD(v239[0]) = 136446210;
              *(v239 + 4) = "kCLConnectionMessageNotifyOnExitKey";
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, 12);
              v9 = v17;
              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v17);
              goto LABEL_60;
            }
          }
        }

        else
        {
          if (qword_1025D4790 != -1)
          {
            sub_101896904();
          }

          v14 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446210;
            *&buf[4] = "kCLConnectionMessageNotifyOnEntryKey";
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10189692C(buf);
            LODWORD(v239[0]) = 136446210;
            *(v239 + 4) = "kCLConnectionMessageNotifyOnEntryKey";
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, 12);
            v9 = v15;
            sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v15);
            goto LABEL_60;
          }
        }
      }

      else
      {
        if (qword_1025D4790 != -1)
        {
          sub_101896904();
        }

        v12 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          *&buf[4] = "kCLConnectionMessageNameKey";
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10189692C(buf);
          LODWORD(v239[0]) = 136446210;
          *(v239 + 4) = "kCLConnectionMessageNameKey";
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, 12);
          v9 = v13;
          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v13);
          goto LABEL_60;
        }
      }
    }

    else
    {
      if (qword_1025D4790 != -1)
      {
        sub_101896904();
      }

      v10 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "kCLConnectionMessageSubscribeKey";
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189692C(buf);
        LODWORD(v239[0]) = 136446210;
        *(v239 + 4) = "kCLConnectionMessageSubscribeKey";
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, 12);
        v9 = v11;
        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v11);
        goto LABEL_60;
      }
    }
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101896904();
    }

    v7 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "kCLConnectionMessageRegionTypeKey";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189692C(buf);
      LODWORD(v239[0]) = 136446210;
      *(v239 + 4) = "kCLConnectionMessageRegionTypeKey";
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v239, 12);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleRequestRegionMonitoring(BOOL, const CLNameValuePair &)", "%s\n", v8);
      goto LABEL_60;
    }
  }

LABEL_353:
}

void sub_1004BBDDC(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(STACK[0x708]);
  }

  if (SLOBYTE(STACK[0x737]) < 0)
  {
    operator delete(STACK[0x720]);
  }

  if (SLOBYTE(STACK[0x74F]) < 0)
  {
    operator delete(STACK[0x738]);
  }

  if (SLOBYTE(STACK[0x767]) < 0)
  {
    operator delete(STACK[0x750]);
  }

  if (SLOBYTE(STACK[0x77F]) < 0)
  {
    operator delete(STACK[0x768]);
  }

  if (SLOBYTE(STACK[0x797]) < 0)
  {
    operator delete(STACK[0x780]);
  }

  _Unwind_Resume(a1);
}

void sub_1004BC18C(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  if (qword_1025D47A0 != -1)
  {
    sub_101896A48();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 24);
    *buf = 68289282;
    *v25 = 0;
    *&v25[4] = 2082;
    *&v25[6] = "";
    v26 = 2114;
    v27 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#FenceHandoff handleChangeFencesStateMatchingHandoffTags, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  if (sub_1004BC8E8(a1))
  {
    if (*(a1 + 64) != 1)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1018969DC();
      }

      v16 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 24);
        *buf = 68289282;
        *v25 = 0;
        *&v25[4] = 2082;
        *&v25[6] = "";
        v26 = 2114;
        v27 = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warn #FenceHandoff fence manager doesn't exist yet!, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      v10 = [NSError errorWithDomain:kCLErrorDomain code:5 userInfo:0];
      goto LABEL_21;
    }

    Dictionary = CLConnectionMessage::getDictionary(*a2);
    v8 = [Dictionary objectForKeyedSubscript:@"kCLConnectionMessageHandoffTagKey"];
    v9 = [[NSUUID alloc] initWithUUIDString:{objc_msgSend(Dictionary, "objectForKeyedSubscript:", @"kCLConnectionMessageUUIDKey"}];
    if (v9)
    {
      [*(*sub_10005BA08(a1) + 16) requestChangeFencesStateMatchingHandoffTags:v8 forDeviceID:v9];
      v10 = 0;
LABEL_21:
      [+[NSMutableDictionary dictionary](NSMutableDictionary "dictionary")];
      CLConnectionMessage::sendReply();
      goto LABEL_22;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_1018969DC();
    }

    v18 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v19 = [objc_msgSend(Dictionary objectForKeyedSubscript:{@"kCLConnectionMessageUUIDKey", "UTF8String"}];
      *buf = 68289282;
      *v25 = 0;
      *&v25[4] = 2082;
      *&v25[6] = "";
      v26 = 2082;
      v27 = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to create uuid object, uuidString:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018969DC();
      }
    }

    v20 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v21 = [objc_msgSend(Dictionary objectForKeyedSubscript:{@"kCLConnectionMessageUUIDKey", "UTF8String"}];
      *buf = 68289282;
      *v25 = 0;
      *&v25[4] = 2082;
      *&v25[6] = "";
      v26 = 2082;
      v27 = v21;
      _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to create uuid object", "{msg%{public}.0s:Unable to create uuid object, uuidString:%{public, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101896904();
    }

    v11 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      v12 = *(a1 + 24);
      *buf = 138543362;
      *v25 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "#Warning #FenceHandoff %{public}@ does not have the appropriate entitlement for fence handoff service", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189692C(buf);
      v13 = *(a1 + 24);
      v22 = 138543362;
      v23 = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "#Warning #FenceHandoff %{public}@ does not have the appropriate entitlement for fence handoff service", &v22, 12);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleChangeFencesStateMatchingHandoffTags(std::shared_ptr<CLConnectionMessage>)", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

LABEL_22:
}

uint64_t sub_1004BC690(uint64_t a1)
{
  sub_10000EC00(&__p, "com.apple.locationd.region_proxy_service");
  v2 = sub_1001C2F40(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_1004BC6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BC708(uint64_t a1)
{
  sub_10000EC00(&__p, "com.apple.locationd.region_while_nearby");
  v2 = sub_1001C2F40(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_1004BC764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BC780(uint64_t a1)
{
  sub_10000EC00(&__p, "com.apple.location.region_polygonal");
  v2 = sub_1001C2F40(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_1004BC7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BC7F8(uint64_t a1)
{
  sub_10000EC00(&__p, "com.apple.location.region_aggressive");
  v2 = sub_1001C2F40(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_1004BC854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BC870(uint64_t a1)
{
  sub_10000EC00(&__p, "com.apple.location.region_low_power");
  v2 = sub_1001C2F40(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_1004BC8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BC8E8(uint64_t a1)
{
  sub_10000EC00(&__p, "com.apple.locationd.region_fence_handoff");
  v2 = sub_1001C2F40(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_1004BC944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BC960(uint64_t a1)
{
  sub_10000EC00(&__p, "com.apple.locationd.significant_region");
  v2 = sub_1001C2F40(a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return v2;
}

void sub_1004BC9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004BC9D8(uint64_t a1, uint64_t a2)
{
  sub_1004FD3B0(a2, "kCLConnectionMessageNameKey", (a1 + 24));
  sub_1000EBF44((a1 + 48), v23);
  sub_10003B25C(v23);
  v4 = v32;
  if ((v32 & 0x80u) != 0)
  {
    v4 = v31[1];
  }

  if (v4)
  {
    sub_10003B25C(v23);
    v5 = v31;
  }

  else
  {
    v5 = &v27;
  }

  sub_1004FD3B0(a2, "kCLConnectionMessageOnBehalfOfKey", v5);
  LODWORD(buf) = *(a1 + 180);
  sub_10004345C(a2, "kCLConnectionMessageReferenceFrameKey", &buf);
  v6 = *(a1 + 216);
  if (v6)
  {
    v7 = [objc_msgSend(v6 "UUIDString")];
  }

  else
  {
    v7 = "";
  }

  sub_1002DC414(a2, "kCLConnectionMessageDeviceIDKey", v7);
  sub_1004FD3B0(a2, "kCLConnectionMessageHandoffTagKey", (a1 + 192));
  LOBYTE(buf) = *(a1 + 160) & 1;
  sub_100043360(a2, "kCLConnectionMessageNotifyOnEntryKey", &buf);
  LOBYTE(buf) = (*(a1 + 160) & 2) != 0;
  sub_100043360(a2, "kCLConnectionMessageNotifyOnExitKey", &buf);
  LOBYTE(buf) = (*(a1 + 160) & 4) != 0;
  sub_100043360(a2, "kCLConnectionMessageConservativeEntry", &buf);
  LOBYTE(buf) = (*(a1 + 160) & 0x10) != 0;
  sub_100043360(a2, "kCLConnectionMessageEmergencyKey", &buf);
  if (*(a1 + 232) == *(a1 + 224))
  {
    LOBYTE(v21) = (*(a1 + 160) & 0x40) != 0;
    sub_100043360(a2, "kCLConnectionMessageMonitoringNearby", &v21);
    if ((*(a1 + 160) & 0x80) != 0)
    {
      LODWORD(buf) = 3;
    }

    else
    {
      LODWORD(buf) = 1;
    }

    sub_10004345C(a2, "kCLConnectionMessageRegionTypeKey", &buf);
    sub_100116D68(a2, "kCLConnectionMessageLatitudeKey", (a1 + 72));
    sub_100116D68(a2, "kCLConnectionMessageLongitudeKey", (a1 + 80));
    sub_100116D68(a2, "kCLConnectionMessageRadiusKey", (a1 + 88));
    sub_100116D68(a2, "kCLConnectionMessageDesiredAccuracyKey", (a1 + 104));
    LOBYTE(buf) = (*(a1 + 160) & 0x20) != 0;
    sub_100043360(a2, "kCLConnectionMessageLowPowerFenceKey", &buf);
    goto LABEL_27;
  }

  LOBYTE(buf) = (*(a1 + 160) & 8) != 0;
  sub_100043360(a2, "kCLConnectionMessageMonitoringNearby", &buf);
  LODWORD(buf) = 2;
  sub_10004345C(a2, "kCLConnectionMessageRegionTypeKey", &buf);
  v8 = *(a1 + 232) - *(a1 + 224);
  v9 = v8 >> 4;
  v22 = v8 >> 4;
  v10 = (v8 >> 4);
  v11 = [[NSMutableArray alloc] initWithCapacity:v10];
  if (v9 >= 1)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = [[_CLVertex alloc] initWithClientCoordinate:{*(*(a1 + 224) + v12), *(*(a1 + 224) + v12 + 8)}];
      [v11 addObject:v14];

      ++v13;
      v12 += 16;
    }

    while (v13 < v10);
  }

  v21 = 0;
  v15 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v21];
  if (!v21)
  {
    v19 = v15;

    sub_10004345C(a2, "kCLConnectionMessagePolygonalVerticesCountKey", &v22);
    sub_1000433CC(a2, "kCLConnectionMessagePolygonalVerticesKey", v19);
LABEL_27:
    v18 = 1;
    goto LABEL_28;
  }

  if (qword_1025D4790 != -1)
  {
    sub_101896904();
  }

  v16 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    buf = 68289282;
    v38 = 2082;
    v39 = "";
    v40 = 2114;
    v41 = v21;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to encode vertices in populateGeographicRegion, error:%{public, location:escape_only}@}", &buf, 0x1Cu);
    if (qword_1025D4790 != -1)
    {
      sub_101896904();
    }
  }

  v17 = qword_1025D4798;
  if (os_signpost_enabled(qword_1025D4798))
  {
    buf = 68289282;
    v38 = 2082;
    v39 = "";
    v40 = 2114;
    v41 = v21;
    _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to encode vertices in populateGeographicRegion", "{msg%{public}.0s:Unable to encode vertices in populateGeographicRegion, error:%{public, location:escape_only}@}", &buf, 0x1Cu);
  }

  v18 = 0;
LABEL_28:
  if (v36 < 0)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  return v18;
}

void sub_1004BCF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

id sub_1004BCF74(__int128 *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1004C1180;
  v3[3] = &unk_102457868;
  sub_1004BF718(&v4, a1);
  v1 = [v3 copy];
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }

  return v1;
}

void sub_1004BD074(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_1003E5FE8(a1, a2);
    }

    sub_10028C64C();
  }
}

void sub_1004BD1BC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  sub_10000EC00(__p, [objc_msgSend(*(a1 + 24) "legacyClientKey")]);
  v7 = *(a4 + 23);
  if (v7 >= 0)
  {
    v8 = *(a4 + 23);
  }

  else
  {
    v8 = *(a4 + 8);
  }

  v9 = v118;
  if ((v118 & 0x80u) != 0)
  {
    v9 = __p[1];
  }

  if (v8 == v9)
  {
    v10 = v7 >= 0 ? a4 : *a4;
    v11 = (v118 & 0x80u) == 0 ? __p : __p[0];
    if (!memcmp(v10, v11, v8))
    {
      sub_10004FD18();
      sub_10004FD18();
      if (*(a4 + 161))
      {
        goto LABEL_155;
      }

      v12 = *a3;
      if (*a3 <= 4)
      {
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            if (sub_1004BC9D8(a4, v116))
            {
              *buf = sub_10007005C(v116);
              sub_1004BE874(a1, buf);
            }
          }

          else if (v12 == 4)
          {
            if (qword_1025D4640 != -1)
            {
              sub_101896970();
            }

            v28 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "Fence: received, kNotificationFenceFailure", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101896998(buf);
              *v119 = 0;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: received, kNotificationFenceFailure", v119, 2);
              v59 = v58;
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v58);
              if (v59 != buf)
              {
                free(v59);
              }
            }

            if ((sub_1004BC9D8(a4, v116) & 1) == 0)
            {
              sub_1004FD3B0(v116, "kCLConnectionMessageNameKey", (a4 + 24));
            }

            *buf = 5;
            sub_1004FD1C8(v116, "kCLConnectionMessageErrorKey", buf);
            *buf = sub_10007005C(v116);
            sub_1004BE7F0(a1, buf);
          }
        }

        else if (v12 >= 2)
        {
          if (v12 == 2 && sub_1004BC9D8(a4, v116))
          {
            *buf = 6;
            sub_1004FD1C8(v116, "kCLConnectionMessageErrorKey", buf);
            *buf = sub_10007005C(v116);
            sub_1004BE7F0(a1, buf);
          }
        }

        else if (sub_1004BC9D8(a4, v116))
        {
          *buf = *a3 != 0;
          sub_10004345C(v116, "kCLConnectionMessageEventKey", buf);
          if (qword_1025D4640 != -1)
          {
            sub_101896970();
          }

          v114 = (a4 + 500);
          v13 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            v14 = *a3;
            v15 = *(a4 + 23);
            v16 = *a4;
            v17 = *(a4 + 24);
            v18 = *(a4 + 47);
            v106 = *v114;
            v107 = *(a4 + 508);
            v108 = *(a4 + 516);
            v110 = *(a4 + 592);
            v112 = *(a4 + 152);
            v19 = sub_1004BE71C(a4);
            v20 = *(a4 + 96);
            if (v18 >= 0)
            {
              v21 = a4 + 24;
            }

            else
            {
              v21 = v17;
            }

            v22 = "exit";
            if (v15 >= 0)
            {
              v23 = a4;
            }

            else
            {
              v23 = v16;
            }

            v24 = *(a4 + 160);
            if (!v14)
            {
              v22 = "entry";
            }

            v26 = *(a4 + 224);
            v25 = *(a4 + 232);
            v27 = *(a4 + 188);
            *buf = 136383747;
            *&buf[4] = v22;
            v145 = 2082;
            v146 = v23;
            v147 = 2081;
            *v148 = v21;
            *&v148[8] = 2049;
            *&v148[10] = v106;
            v149 = 2049;
            v150 = v107;
            v151 = 2050;
            v152 = v108;
            v153 = 1026;
            v154 = v110;
            v155 = 2049;
            v156 = v112;
            v157 = 1025;
            v158 = v19;
            v159 = 1025;
            v160 = v20 >= 7000.0;
            v161 = 1025;
            v162 = (v24 >> 4) & 1;
            v163 = 1025;
            v164 = v25 != v26;
            v165 = 1025;
            v166 = v27;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Notifying client of fence %{private}s for %{public}s/%{private}s (location <%{private}+.8f,%{private}+.8f> acc %{public}.2f type %{public}d, \t\t\t\t\t\t\tsinceLast,%{private}.1f, fence,%{private}d,%{private}d,%{private}d,%{private}d,%{private}d", buf, 0x6Cu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101896998(buf);
            v62 = *a3;
            v63 = *(a4 + 23);
            v64 = *a4;
            v65 = *(a4 + 24);
            v66 = *(a4 + 47);
            v67 = *v114;
            v68 = *(a4 + 508);
            v109 = *(a4 + 516);
            v111 = *(a4 + 592);
            v113 = off_1025D4648;
            v115 = *(a4 + 152);
            v69 = sub_1004BE71C(a4);
            v70 = *(a4 + 96);
            if (v66 >= 0)
            {
              v71 = a4 + 24;
            }

            else
            {
              v71 = v65;
            }

            v72 = "exit";
            if (v63 >= 0)
            {
              v73 = a4;
            }

            else
            {
              v73 = v64;
            }

            v74 = *(a4 + 160);
            if (!v62)
            {
              v72 = "entry";
            }

            v76 = *(a4 + 224);
            v75 = *(a4 + 232);
            v77 = *(a4 + 188);
            *v119 = 136383747;
            *&v119[4] = v72;
            v120 = 2082;
            v121 = v73;
            v122 = 2081;
            *v123 = v71;
            *&v123[8] = 2049;
            *&v123[10] = v67;
            v124 = 2049;
            v125 = v68;
            v126 = 2050;
            v127 = v109;
            v128 = 1026;
            v129 = v111;
            v130 = 2049;
            v131 = v115;
            v132 = 1025;
            v133 = v69;
            v134 = 1025;
            v135 = v70 >= 7000.0;
            v136 = 1025;
            v137 = (v74 >> 4) & 1;
            v138 = 1025;
            v139 = v75 != v76;
            v140 = 1025;
            v141 = v77;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v113, 2, "Notifying client of fence %{private}s for %{public}s/%{private}s (location <%{private}+.8f,%{private}+.8f> acc %{public}.2f type %{public}d, \t\t\t\t\t\t\tsinceLast,%{private}.1f, fence,%{private}d,%{private}d,%{private}d,%{private}d,%{private}d", v119, 108);
            v79 = v78;
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v78);
            if (v79 != buf)
            {
              free(v79);
            }
          }

          *buf = sub_10007005C(v116);
          sub_1004BE76C(a1, buf);
        }

        goto LABEL_155;
      }

      if (v12 <= 6)
      {
        if (v12 == 5)
        {
          if (sub_1004BC9D8(a4, v116))
          {
            v35 = *(a4 + 271);
            if ((v35 & 0x80u) != 0)
            {
              v35 = *(a4 + 256);
            }

            if (v35)
            {
              sub_10004FD18();
              if ((sub_1004BC9D8(a4 + 248, v119) & 1) == 0)
              {
                if (qword_1025D4640 != -1)
                {
                  sub_101896970();
                }

                v36 = off_1025D4648;
                if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "#Warning Couldn't populate alternate region", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101896998(buf);
                  *v142 = 0;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 0, "#Warning Couldn't populate alternate region", v142, 2);
                  v102 = v101;
                  sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v101);
                  if (v102 != buf)
                  {
                    free(v102);
                  }
                }

                sub_1004FD3B0(v116, "kCLConnectionMessageNameKey", (a4 + 24));
              }

              sub_1004FD480(v116, "kCLConnectionMessageAlternateRegionKey", v119);
              sub_100005DA4();
            }

            else
            {
              if (qword_1025D4640 != -1)
              {
                sub_101896970();
              }

              v54 = off_1025D4648;
              if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "No alternate region available", buf, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101896998(buf);
                *v119 = 0;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "No alternate region available", v119, 2);
                v100 = v99;
                sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v99);
                if (v100 != buf)
                {
                  free(v100);
                }
              }
            }

            *buf = sub_10007005C(v116);
            sub_1004BE8F8(a1, buf);
          }

          if (qword_1025D4640 != -1)
          {
            sub_101896970();
          }

          v47 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
          {
            sub_100BC8988(a4, buf);
            v48 = v147 >= 0 ? buf : *buf;
            *v119 = 136315138;
            *&v119[4] = v48;
            _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEFAULT, "#Warning Can't populate fence, %s", v119, 0xCu);
            if (SHIBYTE(v147) < 0)
            {
              operator delete(*buf);
            }
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_155;
          }

          sub_101896998(buf);
          v49 = off_1025D4648;
          sub_100BC8988(a4, v119);
          if (v122 >= 0)
          {
            v50 = v119;
          }

          else
          {
            v50 = *v119;
          }

          *v142 = 136315138;
          *&v142[4] = v50;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v49, 0, "#Warning Can't populate fence, %s", v142);
          v46 = v51;
          if (SHIBYTE(v122) < 0)
          {
            operator delete(*v119);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v46);
          goto LABEL_126;
        }

        if (v12 != 6)
        {
          goto LABEL_155;
        }
      }

      else
      {
        if (v12 == 7)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101896970();
          }

          v37 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "Fence: received, kNotificationFenceNotAuthorized", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101896998(buf);
            *v119 = 0;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: received, kNotificationFenceNotAuthorized", v119, 2);
            v61 = v60;
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v60);
            if (v61 != buf)
            {
              free(v61);
            }
          }

          if (sub_1004BC9D8(a4, v116))
          {
            if (qword_1025D4640 != -1)
            {
              sub_101896970();
            }

            v38 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
            {
              if (*(a4 + 23) >= 0)
              {
                v39 = *&a4;
              }

              else
              {
                v39 = *a4;
              }

              if (*(a4 + 47) >= 0)
              {
                v40 = (a4 + 24);
              }

              else
              {
                v40 = *(a4 + 24);
              }

              *buf = 136446466;
              *&buf[4] = v39;
              v145 = 2082;
              v146 = v40;
              _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "#Notice Fence: kNotificationFenceNotAuthorized, bundle not authorized for location, %{public}s, fence, %{public}s", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101896998(buf);
              v86 = *(a4 + 23) >= 0 ? a4 : *a4;
              v87 = *(a4 + 47);
              v90 = *(a4 + 24);
              v89 = a4 + 24;
              v88 = v90;
              v91 = (v87 >= 0 ? v89 : v88);
              *v119 = 136446466;
              *&v119[4] = v86;
              v120 = 2082;
              v121 = v91;
              LODWORD(v103) = 22;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 0, "#Notice Fence: kNotificationFenceNotAuthorized, bundle not authorized for location, %{public}s, fence, %{public}s", v119, v103);
              v93 = v92;
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v92);
              if (v93 != buf)
              {
                free(v93);
              }
            }

            *buf = 4;
            sub_1004FD1C8(v116, "kCLConnectionMessageErrorKey", buf);
            *buf = sub_10007005C(v116);
            sub_1004BE7F0(a1, buf);
          }

          if (qword_1025D4640 != -1)
          {
            sub_101896970();
          }

          v52 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_FAULT, "Fence: kNotificationFenceNotAuthorized, failed to populate fence", buf, 2u);
          }

          if (!sub_10000A100(121, 0))
          {
            goto LABEL_155;
          }

          sub_101896998(buf);
          *v119 = 0;
          LODWORD(v103) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 17, "Fence: kNotificationFenceNotAuthorized, failed to populate fence", v119, v103);
          v46 = v53;
          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v53);
          if (v46 == buf)
          {
            goto LABEL_155;
          }

LABEL_134:
          free(v46);
          goto LABEL_155;
        }

        if (v12 == 9)
        {
          if (sub_1004BC9D8(a4, v116))
          {
            *buf = *(a4 + 656);
            sub_100116D68(v116, "kCLConnectionMessageRegionWatchdogSinceLast", buf);
            *buf = sub_10007005C(v116);
            sub_1004BE97C(a1, buf);
          }

          goto LABEL_155;
        }

        if (v12 != 8 || (sub_100F355E8(a1) & 1) == 0)
        {
LABEL_155:
          sub_100005DA4();
          sub_100005DA4();
          goto LABEL_156;
        }
      }

      if (sub_1004BC9D8(a4, v116))
      {
        if (qword_1025D4640 != -1)
        {
          sub_101896970();
        }

        v29 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
        {
          v30 = *a3;
          sub_100BC8988(a4, v119);
          v31 = "kNotificationFenceState";
          if (v30 != 8)
          {
            v31 = "kNotificationRegionStateRequest";
          }

          v32 = *v119;
          if (v122 >= 0)
          {
            v32 = v119;
          }

          v33 = *(a4 + 652);
          if ((v33 + 1) > 4)
          {
            v34 = "---";
          }

          else
          {
            v34 = off_1024578C8[v33 + 1];
          }

          *buf = 136315906;
          *&buf[4] = v31;
          v145 = 2080;
          v146 = v32;
          v147 = 1024;
          *v148 = v33;
          *&v148[4] = 2080;
          *&v148[6] = v34;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "Fence: received, %s, %s, state, %d, %s", buf, 0x26u);
          if (SHIBYTE(v122) < 0)
          {
            operator delete(*v119);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101896998(buf);
          v80 = off_1025D4648;
          v81 = *a3;
          sub_100BC8988(a4, v142);
          v82 = "kNotificationFenceState";
          if (v81 != 8)
          {
            v82 = "kNotificationRegionStateRequest";
          }

          v83 = *v142;
          if (v143 >= 0)
          {
            v83 = v142;
          }

          v84 = *(a4 + 652);
          if ((v84 + 1) > 4)
          {
            v85 = "---";
          }

          else
          {
            v85 = off_1024578C8[v84 + 1];
          }

          *v119 = 136315906;
          *&v119[4] = v82;
          v120 = 2080;
          v121 = v83;
          v122 = 1024;
          *v123 = v84;
          *&v123[4] = 2080;
          *&v123[6] = v85;
          LODWORD(v103) = 38;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v80, 2, "Fence: received, %s, %s, state, %d, %s", v119, v103, v104, v105);
          v98 = v97;
          if (v143 < 0)
          {
            operator delete(*v142);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v98);
          if (v98 != buf)
          {
            free(v98);
          }
        }

        v55 = *(a4 + 652) + 1;
        if (v55 >= 3)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101896970();
          }

          v56 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
          {
            v57 = *(a4 + 652);
            *buf = 67240192;
            *&buf[4] = v57;
            _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_FAULT, "Fence: unknown state, %{public}d", buf, 8u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101896998(buf);
            v94 = *(a4 + 652);
            *v119 = 67240192;
            *&v119[4] = v94;
            LODWORD(v103) = 8;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 17, "Fence: unknown state, %{public}d", v119, v103);
            v96 = v95;
            sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v95);
            if (v96 != buf)
            {
              free(v96);
            }
          }

          v55 = 0;
        }

        *buf = v55;
        sub_10004345C(v116, "kCLConnectionMessageStatusKey", buf);
        *buf = sub_10007005C(v116);
        sub_1004BE698(a1, buf);
      }

      if (qword_1025D4640 != -1)
      {
        sub_101896970();
      }

      v41 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
      {
        sub_100BC8988(a4, buf);
        v42 = v147 >= 0 ? buf : *buf;
        *v119 = 136315138;
        *&v119[4] = v42;
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "Fence: kNotificationRegionStateRequest, failed to populateGeographicRegion, %s", v119, 0xCu);
        if (SHIBYTE(v147) < 0)
        {
          operator delete(*buf);
        }
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_155;
      }

      sub_101896998(buf);
      v43 = off_1025D4648;
      sub_100BC8988(a4, v119);
      if (v122 >= 0)
      {
        v44 = v119;
      }

      else
      {
        v44 = *v119;
      }

      *v142 = 136315138;
      *&v142[4] = v44;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v43, 17, "Fence: kNotificationRegionStateRequest, failed to populateGeographicRegion, %s", v142);
      v46 = v45;
      if (SHIBYTE(v122) < 0)
      {
        operator delete(*v119);
      }

      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::onFenceNotification(int, const CLFenceManager_Type::Notification &, const CLFenceManager_Type::NotificationData &)", "%s\n", v46);
LABEL_126:
      if (v46 == buf)
      {
        goto LABEL_155;
      }

      goto LABEL_134;
    }
  }

LABEL_156:
  if (v118 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004BE5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  sub_100005DA4();
  sub_100005DA4();
  sub_100005DA4();
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004BE704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BE7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BE85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BE8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BE964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BE9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BEA00(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  sub_10000EC00(__p, [objc_msgSend(*(a1 + 24) "legacyClientKey")]);
  v7 = *(a4 + 63);
  if (v7 >= 0)
  {
    v8 = *(a4 + 63);
  }

  else
  {
    v8 = *(a4 + 48);
  }

  v9 = v64;
  if ((v64 & 0x80u) != 0)
  {
    v9 = __p[1];
  }

  if (v8 == v9)
  {
    v10 = a4 + 40;
    v11 = v7 >= 0 ? (a4 + 40) : *(a4 + 40);
    v12 = (v64 & 0x80u) == 0 ? __p : __p[0];
    if (!memcmp(v11, v12, v8))
    {
      sub_10004FD18();
      if ((sub_100A8FD44(a4, v62) & 1) != 0 && (*(a4 + 113) & 1) == 0)
      {
        v13 = *a3;
        if (*a3 == 3)
        {
          if (*(a4 + 120))
          {
            if (qword_1025D4790 != -1)
            {
              sub_101896904();
            }

            v21 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
            {
              v22 = a4 + 88;
              if (*(a4 + 63) >= 0)
              {
                v23 = a4 + 40;
              }

              else
              {
                v23 = *(a4 + 40);
              }

              if (*(a4 + 111) < 0)
              {
                v22 = *(a4 + 88);
              }

              *buf = 136446467;
              *&buf[4] = v23;
              v70 = 2081;
              v71 = v22;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "@iB: Sending kCLConnectionMessageRegionMonitoringError for region,'%{public}s/%{private}s'.", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10189692C(buf);
              v38 = a4 + 88;
              if (*(a4 + 63) >= 0)
              {
                v39 = a4 + 40;
              }

              else
              {
                v39 = *(a4 + 40);
              }

              if (*(a4 + 111) < 0)
              {
                v38 = *(a4 + 88);
              }

              v65 = 136446467;
              v66 = v39;
              v67 = 2081;
              v68 = v38;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "@iB: Sending kCLConnectionMessageRegionMonitoringError for region,'%{public}s/%{private}s'.", &v65, 22);
              v41 = v40;
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onBTLEFenceNotification(int, const CLBTLEFenceManager_Type::Notification &, const CLBTLEFenceManager_Type::NotificationData &)", "%s\n", v40);
              if (v41 != buf)
              {
                free(v41);
              }
            }

            if (*(a4 + 120) == 1)
            {
              *buf = 4;
            }

            else
            {
              *buf = 5;
            }

            sub_1004FD1C8(v62, "kCLConnectionMessageErrorKey", buf);
            *buf = sub_10007005C(v62);
            sub_1004BE7F0(a1, buf);
          }

          v24 = *(a4 + 168);
          if (v24 == 2)
          {
            v25 = 1;
          }

          else
          {
            v25 = 2 * (v24 == 4);
          }

          *buf = v25;
          sub_10004345C(v62, "kCLConnectionMessageStatusKey", buf);
          if (qword_1025D4790 != -1)
          {
            sub_101896904();
          }

          v26 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            v27 = a4 + 88;
            if (*(a4 + 63) >= 0)
            {
              v28 = a4 + 40;
            }

            else
            {
              v28 = *(a4 + 40);
            }

            if (*(a4 + 111) < 0)
            {
              v27 = *(a4 + 88);
            }

            *buf = 136446467;
            *&buf[4] = v28;
            v70 = 2081;
            v71 = v27;
            _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "@iB: Sending kCLConnectionMessageRegionState for region,'%{public}s/%{private}s'.", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10189692C(buf);
            v54 = *(a4 + 88);
            v53 = a4 + 88;
            v52 = v54;
            if (*(v53 - 25) >= 0)
            {
              v55 = v10;
            }

            else
            {
              v55 = *(v53 - 48);
            }

            if (*(v53 + 23) >= 0)
            {
              v52 = v53;
            }

            v65 = 136446467;
            v66 = v55;
            v67 = 2081;
            v68 = v52;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "@iB: Sending kCLConnectionMessageRegionState for region,'%{public}s/%{private}s'.", &v65, 22);
            v57 = v56;
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onBTLEFenceNotification(int, const CLBTLEFenceManager_Type::Notification &, const CLBTLEFenceManager_Type::NotificationData &)", "%s\n", v56);
            if (v57 != buf)
            {
              free(v57);
            }
          }

          *buf = sub_10007005C(v62);
          sub_1004BE698(a1, buf);
        }

        if (v13 == 2)
        {
          if (qword_1025D4790 != -1)
          {
            sub_101896904();
          }

          v17 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            v18 = a4 + 88;
            if (*(a4 + 63) >= 0)
            {
              v19 = a4 + 40;
            }

            else
            {
              v19 = *(a4 + 40);
            }

            if (*(a4 + 111) < 0)
            {
              v18 = *(a4 + 88);
            }

            *buf = 136446467;
            *&buf[4] = v19;
            v70 = 2081;
            v71 = v18;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "@iB: Sending kCLConnectionMessageRegionMonitoring for region,'%{public}s/%{private}s'.", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10189692C(buf);
            v34 = a4 + 88;
            if (*(a4 + 63) >= 0)
            {
              v35 = a4 + 40;
            }

            else
            {
              v35 = *(a4 + 40);
            }

            if (*(a4 + 111) < 0)
            {
              v34 = *(a4 + 88);
            }

            v65 = 136446467;
            v66 = v35;
            v67 = 2081;
            v68 = v34;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "@iB: Sending kCLConnectionMessageRegionMonitoring for region,'%{public}s/%{private}s'.", &v65, 22);
            v37 = v36;
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onBTLEFenceNotification(int, const CLBTLEFenceManager_Type::Notification &, const CLBTLEFenceManager_Type::NotificationData &)", "%s\n", v36);
            if (v37 != buf)
            {
              free(v37);
            }
          }

          v20 = *(a4 + 168);
          if (v20 == 4)
          {
            *buf = 1;
            sub_10004345C(v62, "kCLConnectionMessageEventKey", buf);
          }

          else if (v20 == 2)
          {
            *buf = 0;
            sub_10004345C(v62, "kCLConnectionMessageEventKey", buf);
          }

          else
          {
            if (qword_1025D4790 != -1)
            {
              sub_101896904();
            }

            v32 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
            {
              v33 = *(a4 + 168);
              *buf = 67240192;
              *&buf[4] = v33;
              _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_FAULT, "Unsupported region transition state,%{public}d will not be reported.", buf, 8u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_10189692C(buf);
              v58 = *(a4 + 168);
              v65 = 67240192;
              LODWORD(v66) = v58;
              LODWORD(v61) = 8;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Unsupported region transition state,%{public}d will not be reported.", &v65, v61);
              v60 = v59;
              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::onBTLEFenceNotification(int, const CLBTLEFenceManager_Type::Notification &, const CLBTLEFenceManager_Type::NotificationData &)", "%s\n", v59);
              if (v60 != buf)
              {
                free(v60);
              }
            }
          }

          *buf = sub_10007005C(v62);
          sub_1004BE76C(a1, buf);
        }

        if (!v13)
        {
          if (*(a4 + 120))
          {
            if (qword_1025D4790 != -1)
            {
              sub_101896904();
            }

            v14 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
            {
              v15 = a4 + 88;
              if (*(a4 + 63) >= 0)
              {
                v16 = a4 + 40;
              }

              else
              {
                v16 = *(a4 + 40);
              }

              if (*(a4 + 111) < 0)
              {
                v15 = *(a4 + 88);
              }

              *buf = 136446467;
              *&buf[4] = v16;
              v70 = 2081;
              v71 = v15;
              _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "@iB: Sending kCLConnectionMessageRegionMonitoringError for region,'%{public}s/%{private}s'.", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10189692C(buf);
              v42 = a4 + 88;
              if (*(a4 + 63) >= 0)
              {
                v43 = a4 + 40;
              }

              else
              {
                v43 = *(a4 + 40);
              }

              if (*(a4 + 111) < 0)
              {
                v42 = *(a4 + 88);
              }

              v65 = 136446467;
              v66 = v43;
              v67 = 2081;
              v68 = v42;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "@iB: Sending kCLConnectionMessageRegionMonitoringError for region,'%{public}s/%{private}s'.", &v65, 22);
              v45 = v44;
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onBTLEFenceNotification(int, const CLBTLEFenceManager_Type::Notification &, const CLBTLEFenceManager_Type::NotificationData &)", "%s\n", v44);
              if (v45 != buf)
              {
                free(v45);
              }
            }

            if (*(a4 + 120) == 1)
            {
              *buf = 4;
            }

            else
            {
              *buf = 5;
            }

            sub_1004FD1C8(v62, "kCLConnectionMessageErrorKey", buf);
            *buf = sub_10007005C(v62);
            sub_1004BE7F0(a1, buf);
          }

          if (qword_1025D4790 != -1)
          {
            sub_101896904();
          }

          v29 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            v30 = a4 + 88;
            if (*(a4 + 63) >= 0)
            {
              v31 = a4 + 40;
            }

            else
            {
              v31 = *(a4 + 40);
            }

            if (*(a4 + 111) < 0)
            {
              v30 = *(a4 + 88);
            }

            *buf = 136446467;
            *&buf[4] = v31;
            v70 = 2081;
            v71 = v30;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "@iB: Sending kCLConnectionMessageRegionMonitoringSetupCompleted for region,'%{public}s/%{private}s'.", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10189692C(buf);
            v48 = *(a4 + 88);
            v47 = a4 + 88;
            v46 = v48;
            if (*(v47 - 25) >= 0)
            {
              v49 = v10;
            }

            else
            {
              v49 = *(v47 - 48);
            }

            if (*(v47 + 23) >= 0)
            {
              v46 = v47;
            }

            v65 = 136446467;
            v66 = v49;
            v67 = 2081;
            v68 = v46;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 0, "@iB: Sending kCLConnectionMessageRegionMonitoringSetupCompleted for region,'%{public}s/%{private}s'.", &v65, 22);
            v51 = v50;
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::onBTLEFenceNotification(int, const CLBTLEFenceManager_Type::Notification &, const CLBTLEFenceManager_Type::NotificationData &)", "%s\n", v50);
            if (v51 != buf)
            {
              free(v51);
            }
          }

          *buf = sub_10007005C(v62);
          sub_1004BE874(a1, buf);
        }
      }

      sub_100005DA4();
    }
  }

  if (v64 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004BF51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_100005DA4();
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004BF5CC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004BF64C(uint64_t a1)
{
  sub_1004C0818(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_1004BF718(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100007244(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100007244(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  *(__dst + 120) = *(a2 + 120);
  *(__dst + 104) = v9;
  *(__dst + 88) = v8;
  *(__dst + 72) = v7;
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  v12 = *(a2 + 168);
  *(__dst + 181) = *(a2 + 181);
  *(__dst + 168) = v12;
  *(__dst + 152) = v11;
  *(__dst + 136) = v10;
  if (*(a2 + 215) < 0)
  {
    sub_100007244(__dst + 192, *(a2 + 24), *(a2 + 25));
  }

  else
  {
    v13 = a2[12];
    *(__dst + 26) = *(a2 + 26);
    *(__dst + 12) = v13;
  }

  *(__dst + 27) = 0;
  v14 = *(a2 + 27);
  *(__dst + 28) = 0;
  *(__dst + 27) = v14;
  *(__dst + 29) = 0;
  *(__dst + 30) = 0;
  sub_1004BF900(__dst + 28, *(a2 + 28), *(a2 + 29), (*(a2 + 29) - *(a2 + 28)) >> 4);
  return __dst;
}

void sub_1004BF85C(_Unwind_Exception *exception_object)
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

uint64_t *sub_1004BF900(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004BF97C(result, a4);
  }

  return result;
}

void sub_1004BF960(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004BF97C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1003E5FE8(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_1004BF9B8(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    *(a1 + 232) = v2;
    operator delete(v2);
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
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
uint64_t sub_10007C548(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    if (*(a1 + 167))
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    v3 = v2 | *(a1 + 711);
    v4 = *(a1 + 2064);
    if (v4 == (a1 + 2072))
    {
      LOWORD(v5) = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = v4[5];
        if (*(*(v6 + 8) + 192))
        {
          if (sub_10007AF64(v6))
          {
            v7 = 2;
          }

          else
          {
            v7 = 0;
          }

          v5 |= v7 | sub_10007AF54(v4[5]);
        }

        v8 = v4[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v4[2];
            v10 = *v9 == v4;
            v4 = v9;
          }

          while (!v10);
        }

        v4 = v9;
      }

      while (v9 != (a1 + 2072));
    }

    v13 = v5;
    v14 = v5 ^ v3;
    v15 = qword_100BCE918;
    v16 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      v19[0] = 67109632;
      v19[1] = v3;
      v20 = 1024;
      v21 = v13;
      v22 = 1024;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "updateADVBufferConfig current:%02x new:%02x configChanged:%02x", v19, 0x14u);
    }

    if (v13 == v3)
    {
      return 0;
    }

    if ((v14 & 2) != 0)
    {
      if ((v13 & 2) == 0)
      {
        v16 = sub_10079DECC(a1, 0);
        if ((v14 & 1) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_33;
      }

      *(a1 + 170) = 0;
      v16 = sub_1007A5C6C(a1, 0);
      if (v16)
      {
        v16 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR);
        if (v16)
        {
          sub_100875790();
          if ((v14 & 1) == 0)
          {
LABEL_42:
            if ((*(a1 + 167) & 1) == 0 && (*(a1 + 711) & 1) == 0)
            {
              sub_100067CB0(a1);
            }

            return 0;
          }

LABEL_33:
          if (v13)
          {
            if ((v13 & 2) != 0 && (v18 = sub_10000C798(v16, v17), (*(*v18 + 744))(v18) < 2))
            {
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
              {
                sub_1008757F8();
              }
            }

            else
            {
              *(a1 + 714) = 0;
              if (sub_1007A5C6C(a1, 1) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
              {
                sub_100875834();
              }
            }
          }

          else
          {
            sub_10079DECC(a1, 1);
          }

          goto LABEL_42;
        }
      }
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_33;
  }

  v11 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ADVBUFF cannot update ADV Buffer config when in Legacy mode", v19, 2u);
  }

  return 12;
}

uint64_t sub_10007C858(void *a1)
{
  v1 = a1[229];
  if (v1 == a1 + 230)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = 0;
    do
    {
      v3 = *(v1 + 28);
      v4 = *(v1 + 16);
      v5 = v2 | 8;
      if (!*(v1 + 16))
      {
        v5 = v2;
      }

      v6 = v2 | 0x10;
      if (!*(v1 + 16))
      {
        v6 = v2;
      }

      v7 = v2 | (v4 != 0);
      if (v3 != 22)
      {
        v7 = v2;
      }

      if (v3 != 16)
      {
        v6 = v7;
      }

      if (v3 != 15)
      {
        v5 = v6;
      }

      v8 = v4 == 0;
      if (*(v1 + 16))
      {
        v9 = v2 | 2;
      }

      else
      {
        v9 = v2;
      }

      v10 = v2 | 4;
      if (v8)
      {
        v10 = v2;
      }

      if (v3 != 7)
      {
        v10 = v2;
      }

      if (*(v1 + 28))
      {
        v9 = v10;
      }

      if (*(v1 + 28) <= 0xEu)
      {
        v2 = v9;
      }

      else
      {
        v2 = v5;
      }

      v11 = v1[1];
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
          v12 = v1[2];
          v8 = *v12 == v1;
          v1 = v12;
        }

        while (!v8);
      }

      v1 = v12;
    }

    while (v12 != a1 + 230);
  }

  v13 = a1[258];
  v14 = a1 + 259;
  if (v13 == a1 + 259)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      v16 = sub_10007AF84(v13[5]);
      if (sub_10007AF74(v13[5]))
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }

      if (sub_10007AF94(v13[5]))
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      if (sub_10007CD30(v13[5]))
      {
        v19 = 8;
      }

      else
      {
        v19 = 0;
      }

      if (sub_10007CD40(v13[5]))
      {
        v20 = 16;
      }

      else
      {
        v20 = 0;
      }

      v21 = v13[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v13[2];
          v8 = *v22 == v13;
          v13 = v22;
        }

        while (!v8);
      }

      v15 |= v16 | v17 | v18 | v19 | v20;
      v13 = v22;
    }

    while (v22 != v14);
  }

  v23 = v15;
  v24 = v15 ^ v2;
  v25 = qword_100BCE918;
  v26 = v15 ^ v2;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v31 = v2;
    v32 = 1024;
    v33 = v23;
    v34 = 1024;
    v35 = v24;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "AOPBTBUFF config current:%d new:%d configChanged:%d", buf, 0x14u);
  }

  if (v23 == v2)
  {
    return 0;
  }

  if (v26)
  {
    if (v23)
    {
      v27 = sub_1000C6490(a1, 22);
      if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_1008769D8();
        if ((v26 & 2) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_70;
      }
    }

    else
    {
      v27 = sub_1000C76A8(a1, 22);
      if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100876A40();
        if ((v26 & 2) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_70;
      }
    }

    if ((v26 & 2) == 0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v27 = 0;
    if ((v26 & 2) == 0)
    {
      goto LABEL_77;
    }
  }

LABEL_70:
  if ((v23 & 2) != 0)
  {
    v27 = sub_1000C6490(a1, 0);
    if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100876AA8();
    }
  }

  else
  {
    v27 = sub_1000C76A8(a1, 0);
    if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100876B10();
    }
  }

LABEL_77:
  if ((v26 & 4) == 0)
  {
    goto LABEL_85;
  }

  if ((v23 & 4) == 0)
  {
    v27 = sub_1000C76A8(a1, 7);
    if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100876BE0();
      if ((v26 & 8) == 0)
      {
        goto LABEL_93;
      }

LABEL_86:
      if ((v23 & 8) != 0)
      {
        v27 = sub_1000C6490(a1, 15);
        if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_100876C48();
        }
      }

      else
      {
        v27 = sub_1000C76A8(a1, 15);
        if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_100876CB0();
        }
      }

      goto LABEL_93;
    }

LABEL_85:
    if ((v26 & 8) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_86;
  }

  v27 = sub_1000C6490(a1, 7);
  if (!v27 || !os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_85;
  }

  sub_100876B78();
  if ((v26 & 8) != 0)
  {
    goto LABEL_86;
  }

LABEL_93:
  if ((v26 & 0x10) != 0)
  {
    if ((v23 & 0x10) != 0)
    {
      v27 = sub_1000C6490(a1, 16);
      if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100876D18();
      }
    }

    else
    {
      v27 = sub_1000C76A8(a1, 16);
      if (v27 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100876D80();
      }
    }
  }

  return v27;
}

void sub_10007CD50(unsigned __int8 *a1)
{
  v2 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v3 = sub_10007CF9C(a1);
    v4 = a1[144];
    v5 = a1[1870];
    v6 = a1[1888];
    v9[0] = 67109888;
    v9[1] = v3;
    v10 = 1024;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "enableAOPBTBuffersIfNeeded haveAnyHwAOPBTBufferRequests:%d fScreenState:%d fAOPBTBufferReadInProgress:%d fAOPBTProxCtxBufferReadInProgress:%d", v9, 0x1Au);
  }

  if (sub_10007CF9C(a1))
  {
    if ((!_os_feature_enabled_impl() || sub_1007A4098(a1)) && sub_10007D00C(a1) && (a1[1870] & 1) == 0)
    {
      v7 = sub_1000C5CF0(a1, 22, 1);
      if (_os_feature_enabled_impl())
      {
        v8 = sub_1000C5CF0(a1, 16, 1);
      }

      else
      {
        v8 = 0;
      }

      if (v7 | v8)
      {
        if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
        {
          sub_10087498C();
        }
      }

      else
      {
        sub_1007A4198(a1);
      }
    }

    if (sub_10007D074(a1) && (a1[1888] & 1) == 0 && sub_1000C5CF0(a1, 0, 1) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_1008749FC();
    }

    if (sub_10007D0DC(a1) && (a1[1888] & 1) == 0 && (a1[144] & 1) == 0 && sub_1000C5CF0(a1, 7, 1) && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      sub_100874A64();
    }
  }
}

BOOL sub_10007CF9C(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    v3 = *(*(v1[5] + 8) + 148) - 1;
    result = v3 < 0xFF;
    if (v3 < 0xFF)
    {
      break;
    }

    v5 = v1[1];
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
        v6 = v1[2];
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

uint64_t sub_10007D00C(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    v3 = *(*(v1[5] + 8) + 148);
    result = v3 & 1;
    if (v3)
    {
      break;
    }

    v5 = v1[1];
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
        v6 = v1[2];
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

uint64_t sub_10007D074(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    v3 = *(*(v1[5] + 8) + 148);
    result = (v3 >> 1) & 1;
    if ((v3 & 2) != 0)
    {
      break;
    }

    v5 = v1[1];
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
        v6 = v1[2];
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

uint64_t sub_10007D0DC(uint64_t a1)
{
  v1 = *(a1 + 2064);
  v2 = (a1 + 2072);
  if (v1 == (a1 + 2072))
  {
    return 0;
  }

  do
  {
    v3 = *(*(v1[5] + 8) + 148);
    result = (v3 >> 2) & 1;
    if ((v3 & 4) != 0)
    {
      break;
    }

    v5 = v1[1];
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
        v6 = v1[2];
        v7 = *v6 == v1;
        v1 = v6;
      }

      while (!v7);
    }

    v1 = v6;
  }

  while (v6 != v2);
  return result;
}

uint64_t sub_10007D144(uint64_t a1)
{
  v1 = *(a1 + 2064);
  if (v1 != (a1 + 2072))
  {
    do
    {
      v2 = *(v1[5] + 8);
      v3 = *(v2 + 120);
      v4 = *(v2 + 128);
      while (v3 != v4)
      {
        if (*(v3 + 104) == 2)
        {
          return 1;
        }

        v3 += 112;
      }

      v5 = v1[1];
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
          v6 = v1[2];
          v7 = *v6 == v1;
          v1 = v6;
        }

        while (!v7);
      }

      v1 = v6;
    }

    while (v6 != (a1 + 2072));
  }

  return 0;
}

uint64_t sub_10007D1C4(uint64_t a1)
{
  v1 = *(a1 + 2064);
  if (v1 != (a1 + 2072))
  {
    do
    {
      v2 = *(v1[5] + 8);
      v3 = *(v2 + 120);
      v4 = *(v2 + 128);
      while (v3 != v4)
      {
        if (*(v3 + 104) == 3)
        {
          return 1;
        }

        v3 += 112;
      }

      v5 = v1[1];
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
          v6 = v1[2];
          v7 = *v6 == v1;
          v1 = v6;
        }

        while (!v7);
      }

      v1 = v6;
    }

    while (v6 != (a1 + 2072));
  }

  return 0;
}

void sub_10007D244(uint64_t a1)
{
  v199 = a1 + 4096;
  v200 = *(a1 + 4422);
  v1 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG);
  if (v1)
  {
    sub_100876DE8();
  }

  if (*(v199 + 325))
  {
    v3 = sub_10000C7D0(v1, v2);
    v4 = (*(*v3 + 616))(v3);
    v6 = sub_10000C7D0(v4, v5);
    v7 = (*(*v6 + 400))(v6, 1);
    v9 = sub_10000C7D0(v7, v8);
    v10 = (*(*v9 + 392))(v9, 1);
    v12 = sub_10000C7D0(v10, v11);
    v13 = (*(*v12 + 632))(v12);
    v15 = sub_10000C7D0(v13, v14);
    (*(*v15 + 776))(v15);
  }

  v16 = sub_10007F460(a1);
  *(v199 + 232) = 1;
  v264 = 0;
  v263 = 0;
  v262 = &v263;
  v261 = 0;
  v260 = 0;
  v259 = &v260;
  v18 = *(a1 + 2064);
  v218 = (a1 + 2072);
  if (v18 == (a1 + 2072))
  {
    goto LABEL_252;
  }

  do
  {
    v19 = v18[5];
    memset(__dst, 0, 24);
    v226 = v19;
    sub_10006D7D8(__dst, *(*(v19 + 8) + 88), *(*(v19 + 8) + 96), 0xAAAAAAAAAAAAAAABLL * ((*(*(v19 + 8) + 96) - *(*(v19 + 8) + 88)) >> 5));
    v20 = *__dst;
    if (*__dst == *&__dst[8])
    {
      v28 = 0;
    }

    else
    {
      do
      {
        v21 = *(v20 + 56);
        v255 = 0u;
        v256 = 0u;
        v257 = 0u;
        v258 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v255 objects:v274 count:16];
        if (v23)
        {
          v24 = *v256;
          while (2)
          {
            v25 = 0;
            do
            {
              if (*v256 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = *(*(&v255 + 1) + 8 * v25);
              if (qword_100B508D0 != -1)
              {
                sub_1000C32C8();
              }

              *__p = sub_100046458(off_100B508C8, v26, 0);
              if (*__p)
              {
                sub_10005B93C(&v259, __p, __p);
                if (v261 >= 0x1F)
                {
                  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
                  {
                    sub_100876E90(&v253, v254);
                  }

                  v28 = 1;
                  goto LABEL_25;
                }
              }

              else
              {
                v27 = qword_100BCE918;
                if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Tried to add device to matching list that was not present", buf, 2u);
                }
              }

              v25 = v25 + 1;
            }

            while (v23 != v25);
            v23 = [v22 countByEnumeratingWithState:&v255 objects:v274 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        v28 = 0;
LABEL_25:

        v20 += 96;
        if (v20 == *&__dst[8])
        {
          v30 = 1;
        }

        else
        {
          v30 = v28;
        }
      }

      while ((v30 & 1) == 0);
    }

    v31 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      v36 = sub_1007B330C((*(v226 + 8) + 248));
      sub_100018384(v18[4], __p);
      v37 = __p;
      if (v272 < 0)
      {
        v37 = *__p;
      }

      *buf = 134218242;
      *&buf[4] = v36;
      *&buf[12] = 2082;
      *&buf[14] = v37;
      _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "bypassFilterDuplicateTable 0x%0256llx  %{public}s", buf, 0x16u);
      if (v272 < 0)
      {
        operator delete(*__p);
      }
    }

    *__p = __dst;
    sub_10003B78C(__p);
    v32 = v18[1];
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      do
      {
        v33 = v18[2];
        v34 = *v33 == v18;
        v18 = v33;
      }

      while (!v34);
    }

    if (v33 == v218)
    {
      v35 = 1;
    }

    else
    {
      v35 = v28;
    }

    v18 = v33;
  }

  while ((v35 & 1) == 0);
  if ((v28 & 1) == 0)
  {
LABEL_252:
    if (!v200 || *(v199 + 325) == 1)
    {
      v38 = v259;
      if (v259 != &v260)
      {
        do
        {
          v39 = sub_10000C7D0(v16, v17);
          v16 = (*(*v39 + 760))(v39, v38[4]);
          v40 = v38[1];
          if (v40)
          {
            do
            {
              v41 = v40;
              v40 = *v40;
            }

            while (v40);
          }

          else
          {
            do
            {
              v41 = v38[2];
              v34 = *v41 == v38;
              v38 = v41;
            }

            while (!v34);
          }

          v38 = v41;
        }

        while (v41 != &v260);
      }
    }

    if ((a1 + 4336) != &v259)
    {
      sub_10007F4E4((a1 + 4336), v259, &v260);
    }

    v210 = 0;
  }

  else
  {
    v210 = 1;
  }

  v42 = *(a1 + 2064);
  if (v42 != v218)
  {
    do
    {
      v227 = v42[5];
      if ((sub_1000178BC(v227) & 1) == 0)
      {
        goto LABEL_168;
      }

      v43 = *(v227 + 81);
      if (v43 > 0x20)
      {
        goto LABEL_168;
      }

      if (((1 << v43) & 0x114) != 0)
      {
        if (!sub_10000D1C8(v227))
        {
          goto LABEL_168;
        }

        if (*(v227 + 224) != 1)
        {
          goto LABEL_168;
        }

        v44 = sub_100024BE0(v227);
        v45 = *v44;
        v212 = v44[1];
        if (*v44 == v212)
        {
          goto LABEL_168;
        }

        v215 = 0;
        while (1)
        {
          v46 = *(v227 + 8);
          if (*(v46 + 172) == 1 && !*(a1 + 2376))
          {
            v65 = qword_100BCEA38;
            if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_DEFAULT))
            {
              sub_10003B85C(v45, __dst);
              v66 = __dst;
              if ((__dst[23] & 0x80u) != 0)
              {
                v66 = *__dst;
              }

              *__p = 136446210;
              *&__p[4] = v66;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "skipping adding %{public}s to filters", __p, 0xCu);
              if (__dst[23] < 0)
              {
                operator delete(*__dst);
              }
            }
          }

          else
          {
            if (*(v46 + 243) < ++v215)
            {
              v92 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
              {
                sub_100018384(v42[4], __p);
                v93 = v272;
                v94 = *__p;
                v95 = sub_100024BE0(v227);
                v96 = __p;
                if (v93 < 0)
                {
                  v96 = v94;
                }

                v97 = (v95[1] - *v95) >> 2;
                *__dst = 136446722;
                *&__dst[4] = v96;
                *&__dst[12] = 1024;
                *&__dst[14] = v215;
                *&__dst[18] = 2048;
                *&__dst[20] = 0xCCCCCCCCCCCCCCCDLL * v97;
                _os_log_error_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "%{public}s asked to scan for more than %d (%ld) UUID's.", __dst, 0x1Cu);
                if (v272 < 0)
                {
                  operator delete(*__p);
                }
              }

              goto LABEL_168;
            }

            v47 = *v45;
            *&__dst[16] = *(v45 + 16);
            *__dst = v47;
            v220 = sub_10007F6E0(v227, __dst);
            v48 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
            {
              sub_10003B85C(v45, __dst);
              v49 = __dst;
              if ((__dst[23] & 0x80u) != 0)
              {
                v49 = *__dst;
              }

              *__p = 136315394;
              *&__p[4] = v49;
              *&__p[12] = 2112;
              *&__p[14] = v220;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "addFilters BG aUUID:%s enhancedRules:%@", __p, 0x16u);
              if (__dst[23] < 0)
              {
                operator delete(*__dst);
              }
            }

            if ([v220 count])
            {
              v241 = 0u;
              v242 = 0u;
              v239 = 0u;
              v240 = 0u;
              v50 = v220;
              v51 = [v50 countByEnumeratingWithState:&v239 objects:v267 count:16];
              if (v51)
              {
                v52 = *v240;
                do
                {
                  for (i = 0; i != v51; i = i + 1)
                  {
                    if (*v240 != v52)
                    {
                      objc_enumerationMutation(v50);
                    }

                    v54 = *(*(&v239 + 1) + 8 * i);
                    v55 = [v54 objectForKeyedSubscript:@"configController"];
                    v56 = [v55 BOOLValue];

                    if (v56)
                    {
                      sub_100095F7C(a1, v54);
                    }
                  }

                  v51 = [v50 countByEnumeratingWithState:&v239 objects:v267 count:16];
                }

                while (v51);
              }
            }

            else
            {
              *__dst = v45;
              *(sub_100080394(&v262, v45, &unk_1008A9BD0, __dst) + 48) = 0;
              v57 = sub_10007F6D4(v227);
              v58 = sub_10000CA3C(v243, v57);
              v59 = *v45;
              *&__dst[16] = *(v45 + 16);
              *__dst = v59;
              v60 = sub_10007FB9C(v58, v243, __dst);
              *__dst = v45;
              *(sub_100080394(&v262, v45, &unk_1008A9BD0, __dst) + 49) = v60;
              sub_10000CEDC(v243, v243[1]);
              v63 = sub_10000C798(v61, v62);
              if ((*(*v63 + 352))(v63))
              {
                if (sub_10003C8E8(v227))
                {
                  v64 = *(v227 + 224);
                }

                else
                {
                  v64 = 0;
                }

                *__dst = v45;
                v67 = sub_100080394(&v262, v45, &unk_1008A9BD0, __dst);
                *(v67 + 48) |= v64;
              }
            }
          }

          v45 += 20;
          if (v45 == v212)
          {
            goto LABEL_168;
          }
        }
      }

      if (((1 << v43) & 0x100010000) == 0)
      {
        goto LABEL_168;
      }

      *(a1 + 1865) |= sub_100024BA4(v227);
      *(a1 + 1866) |= sub_100024BCC(v227);
      if (!sub_10007F648(v227) && *(v227 + 224) == 1)
      {
        v68 = sub_100024BE0(v227);
        v69 = *v68;
        v213 = v68[1];
        if (*v68 != v213)
        {
          v216 = 0;
          do
          {
            v70 = *(v227 + 8);
            if (*(v70 + 172) == 1 && !*(a1 + 2376))
            {
              v89 = qword_100BCEA38;
              if (os_log_type_enabled(qword_100BCEA38, OS_LOG_TYPE_INFO))
              {
                sub_10003B85C(v69, __dst);
                v90 = __dst;
                if ((__dst[23] & 0x80u) != 0)
                {
                  v90 = *__dst;
                }

                *__p = 136446210;
                *&__p[4] = v90;
                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "skipping adding %{public}s to filters", __p, 0xCu);
                if (__dst[23] < 0)
                {
                  operator delete(*__dst);
                }
              }
            }

            else
            {
              if (*(v70 + 243) < ++v216)
              {
                v98 = qword_100BCE918;
                if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
                {
                  sub_100018384(v42[4], __p);
                  v112 = v272;
                  v113 = *__p;
                  v114 = sub_100024BE0(v227);
                  v115 = __p;
                  if (v112 < 0)
                  {
                    v115 = v113;
                  }

                  v116 = (v114[1] - *v114) >> 2;
                  *__dst = 136446722;
                  *&__dst[4] = v115;
                  *&__dst[12] = 1024;
                  *&__dst[14] = v216;
                  *&__dst[18] = 2048;
                  *&__dst[20] = 0xCCCCCCCCCCCCCCCDLL * v116;
                  _os_log_error_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "%{public}s asked to scan for more than %d (%ld) UUID's.", __dst, 0x1Cu);
                  if (v272 < 0)
                  {
                    operator delete(*__p);
                  }
                }

                break;
              }

              v71 = sub_10007F6D4(v227);
              v72 = sub_10000CA3C(v252, v71);
              v73 = *v69;
              *&__dst[16] = *(v69 + 16);
              *__dst = v73;
              v74 = sub_10007FB9C(v72, v252, __dst);
              sub_10000CEDC(v252, v252[1]);
              v75 = *v69;
              *&__dst[16] = *(v69 + 16);
              *__dst = v75;
              v221 = sub_10007F6E0(v227, __dst);
              v76 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
              {
                sub_10003B85C(v69, __dst);
                v77 = __dst;
                if ((__dst[23] & 0x80u) != 0)
                {
                  v77 = *__dst;
                }

                *__p = 136315394;
                *&__p[4] = v77;
                *&__p[12] = 2112;
                *&__p[14] = v221;
                _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "addFilters FG/DMN aUUID:%s enhancedRules:%@", __p, 0x16u);
                if (__dst[23] < 0)
                {
                  operator delete(*__dst);
                }
              }

              if ([v221 count])
              {
                v250 = 0u;
                v251 = 0u;
                v248 = 0u;
                v249 = 0u;
                v78 = v221;
                v79 = [v78 countByEnumeratingWithState:&v248 objects:v269 count:16];
                if (v79)
                {
                  v80 = *v249;
                  do
                  {
                    for (j = 0; j != v79; j = j + 1)
                    {
                      if (*v249 != v80)
                      {
                        objc_enumerationMutation(v78);
                      }

                      v82 = *(*(&v248 + 1) + 8 * j);
                      v83 = [v82 objectForKeyedSubscript:@"configController"];
                      v84 = [v83 BOOLValue];

                      if (v84)
                      {
                        sub_100095F7C(a1, v82);
                      }
                    }

                    v79 = [v78 countByEnumeratingWithState:&v248 objects:v269 count:16];
                  }

                  while (v79);
                }
              }

              else
              {
                *__dst = v69;
                *(sub_100080394(&v262, v69, &unk_1008A9BD0, __dst) + 48) = 0;
                *__dst = v69;
                v85 = sub_100080394(&v262, v69, &unk_1008A9BD0, __dst);
                *(v85 + 49) = v74;
                v87 = sub_10000C798(v85, v86);
                if ((*(*v87 + 352))(v87))
                {
                  if (sub_10003C8E8(v227))
                  {
                    v88 = *(v227 + 224);
                  }

                  else
                  {
                    v88 = 0;
                  }

                  *__dst = v69;
                  v91 = sub_100080394(&v262, v69, &unk_1008A9BD0, __dst);
                  *(v91 + 48) |= v88;
                }
              }
            }

            v69 += 20;
          }

          while (v69 != v213);
        }
      }

      if (*(a1 + 1859) == 1)
      {
        if (!v200 || *(v199 + 325) == 1)
        {
          sub_1007B42A8(v227);
        }

        v99 = sub_1007B4FE8(v227);
        v100 = v99;
        if (v99 && [v99 count])
        {
          [*(a1 + 4408) addObjectsFromArray:v100];
        }
      }

      v101 = sub_10008043C(v227, v210, (a1 + 4416));
      v246 = 0u;
      v247 = 0u;
      v244 = 0u;
      v245 = 0u;
      v102 = v101;
      v103 = [v102 countByEnumeratingWithState:&v244 objects:v268 count:16];
      if (v103)
      {
        v104 = *v245;
        do
        {
          v105 = 0;
          do
          {
            if (*v245 != v104)
            {
              objc_enumerationMutation(v102);
            }

            v106 = *(*(&v244 + 1) + 8 * v105);
            v107 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
            {
              if (*(v227 + 255) < 0)
              {
                sub_100008904(__dst, *(v227 + 232), *(v227 + 240));
              }

              else
              {
                *__dst = *(v227 + 232);
                *&__dst[16] = *(v227 + 248);
              }

              v108 = __dst;
              if ((__dst[23] & 0x80u) != 0)
              {
                v108 = *__dst;
              }

              *__p = 136315394;
              *&__p[4] = v108;
              *&__p[12] = 2112;
              *&__p[14] = v106;
              _os_log_debug_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEBUG, "addUniqueRulesToDictionary: %s rule %@", __p, 0x16u);
              if (__dst[23] < 0)
              {
                operator delete(*__dst);
              }
            }

            sub_100080858(a1, v106);
            v105 = v105 + 1;
          }

          while (v103 != v105);
          v109 = [v102 countByEnumeratingWithState:&v244 objects:v268 count:16];
          v103 = v109;
        }

        while (v109);
      }

LABEL_168:
      v110 = v42[1];
      if (v110)
      {
        do
        {
          v111 = v110;
          v110 = *v110;
        }

        while (v110);
      }

      else
      {
        do
        {
          v111 = v42[2];
          v34 = *v111 == v42;
          v42 = v111;
        }

        while (!v34);
      }

      v42 = v111;
    }

    while (v111 != v218);
  }

  v117 = [*(a1 + 4392) count];
  if (!v117)
  {
    memset(__dst, 0, 22);
    v119 = sub_10000C798(0, v118);
    if ((*(*v119 + 656))(v119))
    {
      v120 = 3;
    }

    else
    {
      v120 = 1;
    }

    v121 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0xFF04000200;
      *&__p[8] = 1024;
      *&__p[10] = -87;
      _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "Adding bogus rule for type %d and RSSI %d", __p, 0xEu);
    }

    v122 = +[NSMutableDictionary dictionary];
    v123 = [NSData dataWithBytes:__dst length:22];
    [v122 setObject:v123 forKeyedSubscript:@"data"];

    v124 = [NSData dataWithBytes:__dst length:22];
    [v122 setObject:v124 forKeyedSubscript:@"mask"];

    v125 = [NSNumber numberWithChar:169];
    [v122 setObject:v125 forKeyedSubscript:@"rssi"];

    v126 = [NSNumber numberWithUnsignedChar:255];
    [v122 setObject:v126 forKeyedSubscript:@"puckType"];

    v127 = [NSNumber numberWithUnsignedChar:2];
    [v122 setObject:v127 forKeyedSubscript:@"matchAllDevices"];

    v128 = [NSNumber numberWithUnsignedLongLong:0];
    [v122 setObject:v128 forKeyedSubscript:@"address"];

    v129 = [NSNumber numberWithBool:0];
    [v122 setObject:v129 forKeyedSubscript:@"bypassFilterDuplicate"];

    v130 = [NSNumber numberWithUnsignedChar:v120];
    [v122 setObject:v130 forKeyedSubscript:@"targetCore"];

    v131 = [NSNumber numberWithUnsignedChar:1];
    [v122 setObject:v131 forKeyedSubscript:@"rssithresholdOrder"];

    v132 = [NSNumber numberWithBool:1];
    [v122 setObject:v132 forKeyedSubscript:@"report127dBm"];

    v133 = [NSNumber numberWithBool:1];
    [v122 setObject:v133 forKeyedSubscript:@"report27dBm"];

    sub_100080858(a1, v122);
    *(a1 + 1866) = 1;
  }

  if (!v200 || *(v199 + 325) == 1)
  {
    v237 = 0u;
    v238 = 0u;
    v235 = 0u;
    v236 = 0u;
    obj = *(a1 + 4392);
    v203 = [obj countByEnumeratingWithState:&v235 objects:v266 count:16];
    if (v203)
    {
      v202 = *v236;
LABEL_190:
      v134 = 0;
      while (1)
      {
        if (*v236 != v202)
        {
          objc_enumerationMutation(obj);
        }

        v204 = v134;
        v135 = *(*(&v235 + 1) + 8 * v134);
        *&__dst[8] = 0;
        *__dst = 0;
        v136 = [v135 objectForKeyedSubscript:@"data"];
        v137 = v136;
        v138 = [v136 bytes];
        v139 = [v135 objectForKeyedSubscript:@"data"];
        sub_10000C704(__dst, v138, [v139 length]);

        *&__p[8] = 0;
        *__p = 0;
        v140 = [v135 objectForKeyedSubscript:@"mask"];
        v141 = v140;
        v142 = [v140 bytes];
        v143 = [v135 objectForKeyedSubscript:@"mask"];
        sub_10000C704(__p, v142, [v143 length]);

        v146 = sub_10000C7D0(v144, v145);
        v228 = sub_10000C5F8(__dst);
        v224 = sub_10000C5E0(__dst);
        v222 = sub_10000C5F8(__p);
        v219 = sub_10000C5E0(__p);
        v209 = [v135 objectForKeyedSubscript:@"rssi"];
        v217 = [v209 intValue];
        v208 = [v135 objectForKeyedSubscript:@"puckType"];
        v214 = [v208 unsignedIntValue];
        v207 = [v135 objectForKeyedSubscript:@"matchAllDevices"];
        v211 = [v207 unsignedIntValue];
        v206 = [v135 objectForKeyedSubscript:@"address"];
        v147 = [v206 unsignedLongLongValue];
        v205 = [v135 objectForKeyedSubscript:@"bypassFilterDuplicate"];
        v148 = [v205 unsignedIntValue];
        v149 = [v135 objectForKeyedSubscript:@"targetCore"];
        v150 = [v149 unsignedIntValue];
        v151 = [v135 objectForKeyedSubscript:@"rssithresholdOrder"];
        v152 = [v151 unsignedIntValue];
        v153 = [v135 objectForKeyedSubscript:@"report127dBm"];
        LOBYTE(v140) = [v153 unsignedIntValue];
        v154 = [v135 objectForKeyedSubscript:@"report27dBm"];
        BYTE4(v198) = [v154 unsignedIntValue];
        BYTE3(v198) = v140;
        BYTE2(v198) = v152;
        BYTE1(v198) = v150;
        LOBYTE(v198) = v148;
        v155 = (*(*v146 + 672))(v146, v228, v224, v222, v219, v217, v214, v211, v147, v198);

        if (v155)
        {
          v156 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v155;
            _os_log_error_impl(&_mh_execute_header, v156, OS_LOG_TYPE_ERROR, "Failed to add rule with result %d", buf, 8u);
          }
        }

        *__p = &off_100AE0A78;
        if (*&__p[8])
        {
          sub_10000C808(*&__p[8]);
        }

        *__dst = &off_100AE0A78;
        if (*&__dst[8])
        {
          sub_10000C808(*&__dst[8]);
        }

        if (v155)
        {
          break;
        }

        v134 = v204 + 1;
        if (v203 == (v204 + 1))
        {
          v203 = [obj countByEnumeratingWithState:&v235 objects:v266 count:16];
          if (v203)
          {
            goto LABEL_190;
          }

          break;
        }
      }
    }

    v157 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG);
    if (v157)
    {
      sub_100876EC4();
    }

    v159 = sub_10000C7D0(v157, v158);
    v117 = (*(*v159 + 744))(v159, *(a1 + 4416));
    if (*(a1 + 1865) == 1 && (!v200 || (*(v199 + 325) & 1) != 0))
    {
      v160 = sub_10000C7D0(v117, v118);
      v117 = (*(*v160 + 624))(v160, 1);
    }
  }

  if (!v264)
  {
    v117 = [*(a1 + 4400) count];
    if (!v117)
    {
      memset(__dst, 0, 20);
      sub_100065F40(__dst, &xmmword_1008C56A8, 16);
      *__p = __dst;
      v117 = sub_100080394(&v262, __dst, &unk_1008A9BD0, __p);
      v117[48] = 0;
    }
  }

  if (!v200 || *(v199 + 325) == 1)
  {
    v161 = sub_10000C7D0(v117, v118);
    v162 = (*(*v161 + 392))(v161, 1);
    v164 = v262;
    if (v262 == &v263)
    {
      v229 = -87;
    }

    else
    {
      while (1)
      {
        v165 = sub_10000C798(v162, v163);
        v166 = (*(*v165 + 352))(v165);
        v167 = *(v164 + 48);
        v168 = *(v164 + 49);
        if (v168 >= -87)
        {
          v169 = -87;
        }

        else
        {
          v169 = *(v164 + 49);
        }

        v229 = v169;
        v170 = qword_100BCE918;
        v171 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
        if (v171)
        {
          *__dst = 67109120;
          *&__dst[4] = v168;
          _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_INFO, "addScanFilterByUUID uuidFilterOptions.rssiThreshold %d", __dst, 8u);
        }

        v173 = sub_10000C7D0(v171, v172);
        *__dst = *(v164 + 28);
        *&__dst[16] = *(v164 + 11);
        v162 = (*(*v173 + 408))(v173, __dst, v166 & v167, v229, 1, 1);
        if (v162)
        {
          break;
        }

        v174 = v164[1];
        if (v174)
        {
          do
          {
            v175 = v174;
            v174 = *v174;
          }

          while (v174);
        }

        else
        {
          do
          {
            v175 = v164[2];
            v34 = *v175 == v164;
            v164 = v175;
          }

          while (!v34);
        }

        v164 = v175;
        if (v175 == &v263)
        {
          goto LABEL_231;
        }
      }

      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_10003B85C(v164 + 28, __dst);
        sub_100876F38();
      }
    }

LABEL_231:
    v233 = 0u;
    v234 = 0u;
    v231 = 0u;
    v232 = 0u;
    v223 = *(a1 + 4400);
    v176 = [v223 countByEnumeratingWithState:&v231 objects:v265 count:16];
    if (v176)
    {
      v225 = *v232;
      while (2)
      {
        for (k = 0; k != v176; k = k + 1)
        {
          if (*v232 != v225)
          {
            objc_enumerationMutation(v223);
          }

          v178 = *(*(&v231 + 1) + 8 * k);
          memset(buf, 0, 20);
          v179 = [v178 objectForKeyedSubscript:@"uuid"];
          v180 = v179;
          v181 = [v179 bytes];
          v182 = [v178 objectForKeyedSubscript:@"uuid"];
          sub_100065F40(buf, v181, [v182 length]);

          v183 = [v178 objectForKeyedSubscript:@"allowDups"];
          v184 = [v183 BOOLValue];

          v187 = sub_10000C798(v185, v186);
          v188 = (*(*v187 + 352))(v187);
          LODWORD(v181) = v188;
          v190 = sub_10000C7D0(v188, v189);
          *__p = *buf;
          *&__p[16] = *&buf[16];
          v191 = [v178 objectForKeyedSubscript:@"data"];
          LOBYTE(v182) = [v191 length];
          v192 = [v178 objectForKeyedSubscript:@"data"];
          v193 = v192;
          v194 = [v192 bytes];
          v195 = [v178 objectForKeyedSubscript:@"mask"];
          v196 = v195;
          LOBYTE(v197) = 1;
          LODWORD(v182) = (*(*v190 + 416))(v190, __p, v181 & v184, v229, 1, v182, v194, [v195 bytes], v197);

          if (v182)
          {
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
            {
              sub_10003B85C(buf, __p);
              sub_100876F94();
            }

            goto LABEL_242;
          }
        }

        v176 = [v223 countByEnumeratingWithState:&v231 objects:v265 count:16];
        if (v176)
        {
          continue;
        }

        break;
      }
    }

LABEL_242:
  }

  if ((a1 + 4368) != &v262)
  {
    sub_100081E2C((a1 + 4368), v262, &v263);
  }

  *(a1 + 1864) = 1;
  if ((v200 & 1) != 0 || *(v199 + 325) == 1)
  {
    sub_100081FA0(a1, *(a1 + 1859));
  }

  else
  {
    *(v199 + 232) = 0;
  }

  *(a1 + 1863) = 0;
  *(a1 + 1859) = 0;
  sub_10000CEDC(&v259, v260);
  sub_10000CEDC(&v262, v263);
}

void sub_10007F090(_Unwind_Exception *a1)
{
  sub_10000CEDC(&STACK[0x2B0], STACK[0x2B8]);
  sub_10000CEDC(&STACK[0x2C8], STACK[0x2D0]);
  _Unwind_Resume(a1);
}

id sub_10007F460(uint64_t a1)
{
  v2 = (a1 + 4376);
  sub_10000CEDC(a1 + 4368, *(a1 + 4376));
  *(a1 + 4368) = v2;
  *v2 = 0u;
  sub_10000CEDC(a1 + 4336, *(a1 + 4344));
  *(a1 + 4336) = a1 + 4344;
  *(a1 + 4344) = 0u;
  [*(a1 + 4392) removeAllObjects];
  [*(a1 + 4400) removeAllObjects];
  result = [*(a1 + 4408) removeAllObjects];
  *(a1 + 4416) = 0;
  return result;
}

uint64_t *sub_10007F4E4(uint64_t *result, void *a2, void *a3)
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
    if (*(v6 + 8))
    {
      v8 = *(v6 + 8);
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
      v13 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          sub_10039D604(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_100083B10(v13);
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

    result = sub_100084E60(&v12);
  }

  if (a2 != a3)
  {
    sub_10005BA08(v5, a2 + 4);
  }

  return result;
}

void sub_10007F634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

BOOL sub_10007F648(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(a1 + 81) == 32 && *(v1 + 1) == 1 && *(v1 + 8) == *(v1 + 16))
  {
    if ([*(v1 + 112) count])
    {
      return 0;
    }

    v1 = *(a1 + 8);
    if (*(v1 + 88) != *(v1 + 96))
    {
      return 0;
    }
  }

  if (*(v1 + 8) == *(v1 + 16))
  {
    return 1;
  }

  return *(v1 + 56) != *(v1 + 64);
}

id sub_10007F6E0(uint64_t a1, unsigned __int8 *a2)
{
  v29 = +[NSMutableArray array];
  v4 = *(a1 + 8);
  v5 = *(v4 + 120);
  for (i = *(v4 + 128); v5 != i; v5 += 112)
  {
    v7 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      sub_10003B85C(a2, v34);
      v8 = v36;
      v9 = v34[0];
      sub_10007FC10(v5);
      v10 = v34;
      if (v8 < 0)
      {
        v10 = v9;
      }

      if (v33 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = *__p;
      }

      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "enhancedUUIDRulesForUUID uuid:%s filter:%s", buf, 0x16u);
      if (v33 < 0)
      {
        operator delete(*__p);
      }

      if (v36 < 0)
      {
        operator delete(v34[0]);
      }
    }

    if (*(v5 + 104) == 1)
    {
      *v34 = *(v5 + 20);
      v35 = *(v5 + 36);
      if (sub_10004E15C(v34, a2))
      {
        v12 = +[NSMutableDictionary dictionary];
        v13 = v12;
        v14 = *(v5 + 72);
        v15 = *(v5 + 73);
        v16 = *(v5 + 79);
        v17 = *a2;
        if (v17 == 2 || v17 == 16)
        {
          *buf = 0;
          *&buf[8] = 0;
          sub_10007A930(a2, buf);
          if (sub_10000C5E0(v5 + 40) && sub_10000C5E0(v5 + 56) || (v16 & 1) == 0)
          {
            if (v14 >= 0)
            {
              LOBYTE(v14) = -87;
            }

            v18 = [NSData dataWithBytes:buf length:*a2];
            [v13 setObject:v18 forKeyedSubscript:@"uuid"];

            v19 = sub_10000C5F8(v5 + 40);
            v20 = [NSData dataWithBytes:v19 length:sub_10000C5E0(v5 + 40)];
            [v13 setObject:v20 forKeyedSubscript:@"data"];

            v21 = sub_10000C5F8(v5 + 56);
            v22 = [NSData dataWithBytes:v21 length:sub_10000C5E0(v5 + 56)];
            [v13 setObject:v22 forKeyedSubscript:@"mask"];

            v23 = [NSNumber numberWithChar:v14];
            [v13 setObject:v23 forKeyedSubscript:@"rssi"];

            v24 = [NSNumber numberWithBool:v15 != 0];
            [v13 setObject:v24 forKeyedSubscript:@"allowDups"];

            v25 = [NSNumber numberWithBool:v16];
            [v13 setObject:v25 forKeyedSubscript:@"configController"];

            [v29 addObject:v13];
            v26 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
            {
              sub_10007FC10(v5);
              v27 = v34;
              if (v36 < 0)
              {
                v27 = v34[0];
              }

              *__p = 136315394;
              *&__p[4] = v27;
              v31 = 2112;
              v32 = v13;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "enhancedRule %s converted to %@", __p, 0x16u);
              if (v36 < 0)
              {
                operator delete(v34[0]);
              }
            }
          }
        }

        else
        {
        }
      }
    }
  }

  return v29;
}

uint64_t sub_10007FB9C(uint64_t a1, uint64_t **a2, _OWORD *a3)
{
  if (a2 + 1 == sub_10007C324(a2, a3))
  {
    return -87;
  }

  else
  {
    v7 = a3;
    return *(sub_1007B25FC(a2, a3, &unk_1008A9BD0, &v7) + 48);
  }
}

uint64_t sub_10007FC10(uint64_t a1)
{
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  *v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  memset(v64, 0, sizeof(v64));
  sub_100008760(&v63);
  v2 = sub_100007774(&v63, "EnhancedFilterDefinition Type:", 30);
  sub_100007E30(&__p, off_100B05158[*(a1 + 104)]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    LODWORD(p_p) = __p.__r_.__value_.__l.__data_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v4 = __p.__r_.__value_.__r.__words[1];
  }

  v5 = sub_100007774(v2, p_p, v4);
  sub_100007774(v5, " configController:", 18);
  v6 = std::ostream::operator<<();
  v7 = sub_100007774(v6, " filterId:", 10);
  v8 = [*a1 UTF8String];
  v9 = v8;
  v10 = strlen(v8);
  v11 = sub_100007774(v7, v9, v10);
  v12 = sub_100007774(v11, " bundle:", 8);
  v13 = [*(a1 + 8) UTF8String];
  v14 = v13;
  v15 = strlen(v13);
  sub_100007774(v12, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v16 = *(a1 + 104);
  if (v16 == 2)
  {
    sub_100007774(&v63, " manufacturerID: ", 17);
    std::ostream::operator<<();
  }

  else if (v16 == 1)
  {
    v17 = sub_100007774(&v63, " uuid:", 6);
    sub_10003B85C(a1 + 20, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &__p;
    }

    else
    {
      LODWORD(v18) = __p.__r_.__value_.__l.__data_;
    }

    v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : LODWORD(__p.__r_.__value_.__r.__words[1]);
    sub_100007774(v17, v18, v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (!sub_10000D26C(a1 + 40))
  {
    v20 = sub_100007774(&v63, " blob:", 6);
    sub_10000C250(a1 + 40, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &__p;
    }

    else
    {
      LODWORD(v21) = __p.__r_.__value_.__l.__data_;
    }

    v22 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : LODWORD(__p.__r_.__value_.__r.__words[1]);
    sub_100007774(v20, v21, v22);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (!sub_10000D26C(a1 + 56))
  {
    v23 = sub_100007774(&v63, " mask:", 6);
    sub_10000C250(a1 + 56, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &__p;
    }

    else
    {
      LODWORD(v24) = __p.__r_.__value_.__l.__data_;
    }

    v25 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : LODWORD(__p.__r_.__value_.__r.__words[1]);
    sub_100007774(v23, v24, v25);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 104) == 3)
  {
    v26 = *(a1 + 80);
    if (v26 > 1)
    {
      if (v26 == 1000)
      {
        v27 = "NSStringCompareOptions";
      }

      else
      {
        v27 = "EndsWith";
      }
    }

    else if (v26)
    {
      v27 = "StartsWith";
    }

    else
    {
      v27 = "Contains";
    }

    sub_100007E30(&__p, v27);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &__p;
    }

    else
    {
      LODWORD(v28) = __p.__r_.__value_.__l.__data_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = __p.__r_.__value_.__r.__words[1];
    }

    sub_100007774(&v63, v28, v29);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 80) == 1000)
    {
      sub_10067C3E8(a1, *(a1 + 88));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &__p;
      }

      else
      {
        LODWORD(v30) = __p.__r_.__value_.__l.__data_;
      }

      v31 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : LODWORD(__p.__r_.__value_.__r.__words[1]);
      sub_100007774(&v63, v30, v31);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v32 = sub_100007774(&v63, ":", 1);
    v33 = [*(a1 + 96) UTF8String];
    v34 = v33;
    v35 = strlen(v33);
    sub_100007774(v32, v34, v35);
  }

  v36 = sub_100007774(&v63, " rssi:", 6);
  std::to_string(&__p, *(a1 + 72));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &__p;
  }

  else
  {
    LODWORD(v37) = __p.__r_.__value_.__l.__data_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = __p.__r_.__value_.__r.__words[1];
  }

  v39 = sub_100007774(v36, v37, v38);
  v40 = sub_100007774(v39, " rssiThreshold:", 15);
  std::to_string(&v61, *(a1 + 76));
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v61;
  }

  else
  {
    LODWORD(v41) = v61.__r_.__value_.__l.__data_;
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v61.__r_.__value_.__r.__words[1];
  }

  v43 = sub_100007774(v40, v41, v42);
  v44 = sub_100007774(v43, " report127:", 11);
  std::to_string(&v60, *(a1 + 77));
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = &v60;
  }

  else
  {
    LODWORD(v45) = v60.__r_.__value_.__l.__data_;
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v46 = v60.__r_.__value_.__r.__words[1];
  }

  v47 = sub_100007774(v44, v45, v46);
  v48 = sub_100007774(v47, " repor127:", 10);
  std::to_string(&v59, *(a1 + 78));
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = &v59;
  }

  else
  {
    LODWORD(v49) = v59.__r_.__value_.__l.__data_;
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v50 = v59.__r_.__value_.__r.__words[1];
  }

  sub_100007774(v48, v49, v50);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v51 = sub_100007774(&v63, " forceDups:", 11);
  std::to_string(&__p, *(a1 + 73));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &__p;
  }

  else
  {
    LODWORD(v52) = __p.__r_.__value_.__l.__data_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = __p.__r_.__value_.__r.__words[1];
  }

  v54 = sub_100007774(v51, v52, v53);
  v55 = sub_100007774(v54, " bypassFilterDups:", 18);
  std::to_string(&v61, *(a1 + 74));
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = &v61;
  }

  else
  {
    LODWORD(v56) = v61.__r_.__value_.__l.__data_;
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v57 = v61.__r_.__value_.__r.__words[1];
  }

  sub_100007774(v55, v56, v57);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65[1]);
  }

  std::locale::~locale(v64);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000802D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_1003B8618(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_100080394(uint64_t **a1, unsigned __int8 *a2, uint64_t a3, _OWORD **a4)
{
  v6 = 0;
  v4 = *sub_10004E3C8(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

id sub_10008043C(uint64_t a1, int a2, _DWORD *a3)
{
  v37 = +[NSMutableArray array];
  v4 = *(a1 + 8);
  v5 = *(v4 + 88);
  v6 = *(v4 + 96);
  if (v5 != v6)
  {
    v34 = *(v4 + 96);
    do
    {
      v7 = *(v5 + 48);
      v8 = *(v5 + 8);
      v40 = *(v5 + 49);
      v9 = *(v5 + 50);
      v10 = *(v5 + 51);
      v11 = *(v5 + 52);
      v12 = *(v5 + 56);
      if (*(v5 + 68))
      {
        v13 = *(v5 + 65);
        v39 = v12;
        v14 = [v12 count];
        v38 = v13;
        v15 = a2;
        if (!v14)
        {
          v15 = 1;
        }

        if (v15)
        {
          v16 = 2;
        }

        else
        {
          v16 = 3;
        }

        v17 = +[NSMutableDictionary dictionary];
        v18 = sub_10000C5F8(v5 + 16);
        v19 = [NSData dataWithBytes:v18 length:sub_10000C5E0(v5 + 16)];
        [v17 setObject:v19 forKeyedSubscript:@"data"];

        v20 = sub_10000C5F8(v5 + 32);
        v21 = [NSData dataWithBytes:v20 length:sub_10000C5E0(v5 + 32)];
        [v17 setObject:v21 forKeyedSubscript:@"mask"];

        v22 = [NSNumber numberWithChar:v7];
        [v17 setObject:v22 forKeyedSubscript:@"rssi"];

        v23 = [NSNumber numberWithUnsignedChar:v8];
        [v17 setObject:v23 forKeyedSubscript:@"puckType"];

        v24 = [NSNumber numberWithUnsignedChar:v16];
        [v17 setObject:v24 forKeyedSubscript:@"matchAllDevices"];

        v25 = [NSNumber numberWithUnsignedLongLong:0];
        [v17 setObject:v25 forKeyedSubscript:@"address"];

        v26 = [NSNumber numberWithUnsignedChar:v9];
        [v17 setObject:v26 forKeyedSubscript:@"bypassFilterDuplicate"];

        v27 = [NSNumber numberWithUnsignedChar:v10];
        [v17 setObject:v27 forKeyedSubscript:@"targetCore"];

        v28 = [NSNumber numberWithUnsignedChar:v11];
        [v17 setObject:v28 forKeyedSubscript:@"rssithresholdOrder"];

        v29 = [NSNumber numberWithBool:v38];
        [v17 setObject:v29 forKeyedSubscript:@"shouldConsolidateRule"];

        v30 = [NSNumber numberWithBool:*(v5 + 66)];
        [v17 setObject:v30 forKeyedSubscript:@"report127dBm"];

        v31 = [NSNumber numberWithBool:*(v5 + 67)];
        [v17 setObject:v31 forKeyedSubscript:@"report27dBm"];

        [v37 addObject:v17];
        v32 = 1 << v8;
        if (!v40)
        {
          v32 = 0;
        }

        *a3 |= v32;

        v12 = v39;
        v6 = v34;
      }

      v5 += 96;
    }

    while (v5 != v6);
  }

  return v37;
}

void sub_100080858(uint64_t a1, void *a2)
{
  v2 = a2;
  v76 = +[NSMutableArray array];
  v3 = sub_1000814FC(v76, v2);
  if (v3)
  {
    v5 = sub_10000C798(v3, v4);
    if (!(*(*v5 + 1048))(v5))
    {
      goto LABEL_10;
    }

    if (*(a1 + 4426) != 1)
    {
      goto LABEL_10;
    }

    v6 = [v2 objectForKeyedSubscript:@"puckType"];
    v7 = [v6 unsignedIntValue];

    if (v7 != 16 && v7 != 7)
    {
      goto LABEL_10;
    }

    v8 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
    {
      v9 = sub_10079D8BC(v7);
      v10 = *(a1 + 4426);
      *buf = 67109890;
      *&buf[4] = v7;
      *&buf[8] = 2080;
      *&buf[10] = v9;
      *&buf[18] = 1024;
      *&buf[20] = v10;
      *&buf[24] = 1024;
      *&buf[26] = 1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "LeObserver::addUniqueMatchRulesToDictionary ignoring type %d(%s) fSystemWillSleep:%d requiresWA:%d", buf, 0x1Eu);
    }

    if (v7 != 7 && v7 != 16)
    {
LABEL_10:
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      obj = *(a1 + 4392);
      v11 = [obj countByEnumeratingWithState:&v84 objects:v98 count:16];
      if (v11)
      {
        v78 = *v85;
        *&v12 = 67109632;
        v70 = v12;
        do
        {
          v79 = v11;
          for (i = 0; i != v79; i = i + 1)
          {
            if (*v85 != v78)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v84 + 1) + 8 * i);
            v15 = [v14 objectForKeyedSubscript:{@"puckType", v70}];
            v16 = [v2 objectForKeyedSubscript:@"puckType"];
            v17 = [v15 isEqual:v16];

            if (!v17)
            {
              continue;
            }

            v18 = qword_100BCE918;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
            {
              v19 = [v14 objectForKeyedSubscript:@"puckType"];
              v20 = [v2 objectForKeyedSubscript:@"shouldConsolidateRule"];
              v21 = [v20 BOOLValue];
              *buf = 138413058;
              *&buf[4] = v19;
              *&buf[12] = 1024;
              *&buf[14] = v21;
              *&buf[18] = 2112;
              *&buf[20] = v14;
              *&buf[28] = 2112;
              *&buf[30] = v2;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Already have this rule for type %@ consolidate %d %@ new rule %@.", buf, 0x26u);
            }

            v22 = [v14 objectForKeyedSubscript:@"bypassFilterDuplicate"];
            v23 = [v2 objectForKeyedSubscript:@"bypassFilterDuplicate"];
            if (([v22 isEqualToNumber:v23] & 1) == 0)
            {

LABEL_22:
              v27 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
              {
                v28 = [v14 objectForKeyedSubscript:@"puckType"];
                v29 = [v14 objectForKeyedSubscript:@"bypassFilterDuplicate"];
                v30 = [v14 objectForKeyedSubscript:@"rssi"];
                v31 = [v2 objectForKeyedSubscript:@"bypassFilterDuplicate"];
                v32 = [v2 objectForKeyedSubscript:@"rssi"];
                *buf = 138413314;
                *&buf[4] = v28;
                *&buf[12] = 2112;
                *&buf[14] = v29;
                *&buf[22] = 2112;
                *&buf[24] = v30;
                *&buf[32] = 2112;
                *&buf[34] = v31;
                v96 = 2112;
                v97 = v32;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Consolidate rules type %@ old bypassFilterDuplicate %@ rssi %@ new bypassFilterDuplicate %@ rssi %@", buf, 0x34u);
              }

              goto LABEL_24;
            }

            v24 = [v14 objectForKeyedSubscript:@"rssi"];
            v25 = [v2 objectForKeyedSubscript:@"rssi"];
            v26 = [v24 isEqualToNumber:v25];

            if ((v26 & 1) == 0)
            {
              goto LABEL_22;
            }

LABEL_24:
            v33 = [v2 objectForKeyedSubscript:@"shouldConsolidateRule"];
            if (v33)
            {
              v34 = [v2 objectForKeyedSubscript:@"shouldConsolidateRule"];
              v35 = [v34 BOOLValue];

              v36 = v35 ^ 1;
            }

            else
            {
              v36 = 0;
            }

            v37 = [v14 objectForKeyedSubscript:@"shouldConsolidateRule"];
            if (v37)
            {
              v38 = [v14 objectForKeyedSubscript:@"shouldConsolidateRule"];
              v39 = [v38 BOOLValue];

              v40 = v39 ^ 1;
            }

            else
            {
              v40 = 0;
            }

            if (((v36 | v40) & 1) == 0)
            {
              goto LABEL_43;
            }

            v41 = [v2 objectForKeyedSubscript:@"data"];
            v42 = [v14 objectForKeyedSubscript:@"data"];
            v43 = v42;
            if (!v41 || !v42)
            {
              goto LABEL_42;
            }

            memset(buf, 0, 25);
            v75 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", buf, [v41 length]);
            v44 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", buf, [v43 length]);
            if ([v43 isEqualToData:v44] & 1) != 0 || (objc_msgSend(v41, "isEqualToData:", v75) & 1) != 0 || (objc_msgSend(v43, "isEqualToData:", v41))
            {
              if ([v43 isEqualToData:v41] & 1) != 0 || (objc_msgSend(v14, "objectForKeyedSubscript:", @"matchAllDevices"), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "objectForKeyedSubscript:", @"matchAllDevices"), v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v45, "isEqualToNumber:", v46), v46, v45, (v47))
              {
                v48 = [v14 objectForKeyedSubscript:@"rssi"];
                v49 = [v2 objectForKeyedSubscript:@"rssi"];
                v50 = [v48 isEqualToNumber:v49];

                v51 = qword_100BCE918;
                if (v50)
                {
                  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
                  {
                    v73 = [v2 objectForKeyedSubscript:@"puckType"];
                    v71 = [v73 intValue];
                    v72 = [v2 objectForKeyedSubscript:@"rssi"];
                    v60 = [v72 intValue];
                    v61 = [v2 objectForKeyedSubscript:@"shouldConsolidateRule"];
                    v62 = [v61 intValue];
                    *v89 = v70;
                    v90 = v71;
                    v91 = 1024;
                    v92 = v60;
                    v93 = 1024;
                    v94 = v62;
                    _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "New rule for type %d rssi:%d shouldConsolidate:%d is the same - consolidating", v89, 0x14u);
                  }

LABEL_42:
LABEL_43:
                  [v76 addObject:v14];
                  continue;
                }

                if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
                {
                  v52 = [v2 objectForKeyedSubscript:@"puckType"];
                  v53 = [v52 intValue];
                  *v89 = 67109120;
                  v90 = v53;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "rssi is different for type %d - ignore consolidating", v89, 8u);
                }
              }

              else
              {
                v54 = qword_100BCE918;
                if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
                {
                  v55 = [v2 objectForKeyedSubscript:@"puckType"];
                  v56 = [v55 intValue];
                  *v89 = 67109120;
                  v90 = v56;
                  _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "device filer is different for type %d - ignore consolidating", v89, 8u);
                }
              }
            }

            else
            {
              v57 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
              {
                v58 = [v2 objectForKeyedSubscript:@"puckType"];
                v59 = [v58 intValue];
                *v89 = 67109120;
                v90 = v59;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "non-zero data is different for type %d - ignore consolidating", v89, 8u);
              }
            }
          }

          v11 = [obj countByEnumeratingWithState:&v84 objects:v98 count:16];
        }

        while (v11);
      }

      if ([v76 count])
      {
        v63 = [v2 copy];
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v64 = v76;
        v65 = [v64 countByEnumeratingWithState:&v80 objects:v88 count:16];
        v66 = v65;
        if (v65)
        {
          v67 = *v81;
          do
          {
            v68 = 0;
            v69 = v63;
            do
            {
              if (*v81 != v67)
              {
                objc_enumerationMutation(v64);
              }

              v63 = sub_1000816F8(v65, *(*(&v80 + 1) + 8 * v68), v69);

              v68 = v68 + 1;
              v69 = v63;
            }

            while (v66 != v68);
            v65 = [v64 countByEnumeratingWithState:&v80 objects:v88 count:16];
            v66 = v65;
          }

          while (v65);
        }

        [*(a1 + 4392) removeObjectsInArray:v64];
        [*(a1 + 4392) addObject:v63];
      }

      else
      {
        [*(a1 + 4392) addObject:v2];
      }
    }
  }
}

uint64_t sub_1000814FC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"data"];
  v4 = [v3 length];

  v5 = [v2 objectForKeyedSubscript:@"mask"];
  v6 = [v5 length];

  v9 = sub_10000C7D0(v7, v8);
  v10 = (*(*v9 + 4128))(v9);
  v12 = v4;
  if (v4 <= v10 && (v13 = sub_10000C7D0(v10, v11), v6 <= (*(*v13 + 4128))(v13)))
  {
    v15 = 1;
  }

  else
  {
    v14 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
    {
      v17 = [v2 objectForKeyedSubscript:@"puckType"];
      v18[0] = 67109890;
      v18[1] = v12;
      v19 = 1024;
      v20 = v6;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v2;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "The blobLen(%d) and maskLen(%d) are not support for this rule type %@, %@ ", v18, 0x22u);
    }

    v15 = 0;
  }

  return v15;
}

id sub_1000816F8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 mutableCopy];
  v7 = [v4 objectForKeyedSubscript:@"bypassFilterDuplicate"];
  v8 = [v7 unsignedIntValue];

  v9 = [v5 objectForKeyedSubscript:@"bypassFilterDuplicate"];
  LOBYTE(v7) = [v9 unsignedIntValue];

  v10 = [v4 objectForKeyedSubscript:@"rssi"];
  v11 = [v10 intValue];

  v12 = [v5 objectForKeyedSubscript:@"rssi"];
  v13 = [v12 intValue];

  v14 = (v8 | v7) != 0;
  if ((v11 << 24) >= (v13 << 24))
  {
    v15 = v13;
  }

  else
  {
    v15 = v11;
  }

  v16 = [NSNumber numberWithUnsignedChar:v14];
  [v6 setObject:v16 forKeyedSubscript:@"bypassFilterDuplicate"];

  v17 = [NSNumber numberWithChar:v15];
  [v6 setObject:v17 forKeyedSubscript:@"rssi"];

  v18 = [v4 objectForKeyedSubscript:@"mask"];
  v19 = [v5 objectForKeyedSubscript:@"mask"];
  v20 = v19;
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  if (v18)
  {
    if (v19)
    {
      v21 = [v18 length];
      if (v21 == [v20 length] && objc_msgSend(v18, "length") && objc_msgSend(v20, "length"))
      {
        v22 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", v27, [v18 length]);
        if ([v18 isEqual:v22])
        {
        }

        else
        {
          v23 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", v27, [v20 length]);
          v24 = [v20 isEqual:v23];

          if (!v24)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

  [v6 setObject:0 forKeyedSubscript:@"mask"];
  [v6 setObject:0 forKeyedSubscript:@"data"];
LABEL_13:
  v25 = [v6 copy];

  return v25;
}

uint64_t sub_100081A70(char *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (v2[200] == 9)
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    v3 = sub_10009BD9C(a1, a2);
    a1 = (*(*v3 + 64))(v3, &__p);
    v4 = HIBYTE(v20);
    if (a1)
    {
      goto LABEL_3;
    }

    if (v20 < 0)
    {
      v16 = v19;
      if (!v19)
      {
LABEL_4:
        operator delete(__p);
        goto LABEL_5;
      }

      p_p = __p;
      goto LABEL_23;
    }

    if (HIBYTE(v20))
    {
      p_p = &__p;
      v16 = HIBYTE(v20);
LABEL_23:
      if (v16 >= 2)
      {
        v17 = &p_p[v16];
        a1 = p_p;
        do
        {
          a1 = memchr(a1, 66, v16 - 1);
          if (!a1)
          {
            break;
          }

          if (*a1 == 12354)
          {
            if (a1 != v17 && a1 - p_p != -1)
            {
              v2[343] &= ~0x100000u;
            }

            break;
          }

          ++a1;
          v16 = v17 - a1;
        }

        while (v17 - a1 >= 2);
      }

LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

LABEL_5:
  v5 = sub_10000C7D0(a1, a2);
  if (sub_10008215C(v5, 0x64u))
  {
    v2[343] |= 0x2000000u;
  }

  if ((*(*v2 + 3152))(v2))
  {
    v2[343] |= 0x4000000u;
  }

  v6 = (*(*v2 + 2624))(v2);
  if (v6)
  {
    v2[343] |= 0x1000000u;
  }

  v8 = sub_10000C798(v6, v7);
  v9 = (*(*v8 + 792))(v8);
  if (v9)
  {
    v2[343] |= 0x8000000u;
  }

  v11 = sub_10000C798(v9, v10);
  if ((*(*v11 + 808))(v11))
  {
    v2[343] |= 0x10000000u;
  }

  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v13 = v2[343];
    LODWORD(__p) = 67109120;
    HIDWORD(__p) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "fEnabledFeatures: %x", &__p, 8u);
  }

  return sub_100082540();
}

void sub_100081D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100081E2C(uint64_t *result, void *a2, void *a3)
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

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v10 = *(v9 + 28);
          *(v8 + 11) = *(v9 + 11);
          *(v8 + 28) = v10;
          *(v8 + 24) = *(v9 + 24);
          sub_100713EE8(v5, v8);
          v8 = v14;
          v15 = v14;
          if (v14)
          {
            v14 = sub_100083B10(v14);
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

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_100084E60(&v13);
  }

  if (a2 != a3)
  {
    sub_100081D68(v5, a2 + 28);
  }

  return result;
}

void sub_100081F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

void sub_100081FA0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    sub_100876FF0();
  }

  v6 = sub_10008205C(v4, v5);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100072408;
  v7[3] = &unk_100AE15D8;
  v7[4] = a1;
  v8 = v2;
  sub_10000CA94(v6, v7);
}

uint64_t sub_10008205C(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F028 != -1)
  {
    sub_100843ECC();
  }

  return qword_100B6F020;
}

void sub_100082094(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 48);
  if (v2 != (v1 + 56))
  {
    do
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008743BC();
      }

      sub_1000C7A50(off_100B508C8, v2 + 25);
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (v1 + 56));
    v1 = *(*(a1 + 32) + 8);
  }

  v8 = *(v1 + 56);
  v7 = (v1 + 56);
  sub_10000CEDC((v7 - 1), v8);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
}

uint64_t sub_10008215C(uint64_t a1, unsigned int a2)
{
  if (sub_100082218(a1))
  {
    goto LABEL_2;
  }

  v5 = *(a1 + 800);
  if (v5 - 1 > 0xF9E)
  {
    v4 = 0;
    return v4 & 1;
  }

  v4 = 0;
  if (a2 <= 4)
  {
    if (a2 - 2 >= 3)
    {
      if (a2 < 2)
      {
        v4 = *(a1 + 415);
      }

      return v4 & 1;
    }

    goto LABEL_12;
  }

  switch(a2)
  {
    case 5u:
      goto LABEL_16;
    case 6u:
      v4 = *(a1 + 440);
      return v4 & 1;
    case 0x64u:
LABEL_12:
      if (v5 <= 0x7CF)
      {
        if (v5 - 20 >= 6)
        {
          goto LABEL_16;
        }

LABEL_2:
        v4 = 1;
        return v4 & 1;
      }

      if (v5 != 2000)
      {
        goto LABEL_2;
      }

LABEL_16:
      v4 = *(a1 + 436);
      break;
  }

  return v4 & 1;
}

uint64_t sub_100082218(uint64_t a1)
{
  if ((*(a1 + 800) - 5000) < 0x3E8)
  {
    return 1;
  }

  v3 = _os_feature_enabled_impl();
  v4 = *(a1 + 800);
  if ((v4 - 2001) < 0x7CF)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 6000)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100082288(uint64_t a1)
{
  v1 = *(a1 + 800);
  if (!v1)
  {
    goto LABEL_4;
  }

  if (v1 <= 0x7CF)
  {
    if (v1 <= 0x13)
    {
LABEL_4:
      v2 = 0;
      return v2 & 1;
    }

LABEL_7:
    v2 = *(a1 + 1400) ^ 1;
    return v2 & 1;
  }

  v2 = 0;
  if (v1 <= 0xF9F && v1 != 2000)
  {
    goto LABEL_7;
  }

  return v2 & 1;
}

uint64_t sub_1000822E0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049BD90;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E590 != -1)
  {
    dispatch_once(&qword_100B6E590, block);
  }

  return byte_100B6E588;
}

uint64_t sub_100082370(uint64_t a1, uint64_t a2)
{
  if (qword_100B6E5B0 != -1)
  {
    sub_10083142C();
  }

  return byte_100B6E5A8;
}

uint64_t sub_1000823A8(int a1, void (*a2)())
{
  v11 = 0;
  v12 = 0;
  result = sub_10001FFD8(&v11);
  if (!result)
  {
    if (HIBYTE(v12))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3131, "OI_STATUS _BCM_LEMetaEnableFeatures(uint32_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v8 = WORD2(v12);
      if (WORD1(v12) > WORD2(v12))
      {
        if (BYTE6(v12) == 2)
        {
          ++WORD2(v12);
          *(v11 + v8) = 1;
          if (HIBYTE(v12))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3132, "OI_STATUS _BCM_LEMetaEnableFeatures(uint32_t, BT_VSC_COMPLETE_CB)");
          }

          else if (WORD1(v12) - WORD2(v12) > 3)
          {
            if (BYTE6(v12) == 2)
            {
              *(v11 + WORD2(v12)) = a1;
              *(v11 + WORD2(v12) + 2) = BYTE2(a1);
              *(v11 + WORD2(v12) + 3) = HIBYTE(a1);
              WORD2(v12) += 4;
              return sub_100020078(233, v11, BYTE4(v12), a2, sub_100022AD0, v5, v6, v7);
            }

            v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3132, v10);
          }

          v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
          goto LABEL_17;
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3131, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100082540()
{
  if (off_100B60668)
  {
    v0 = off_100B60668();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v0);
    v1 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1000825CC(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 229);
}

void sub_10008261C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    sub_1008775C0();
  }

  v6 = sub_100007EE8(v4, v5);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000826D4;
  v7[3] = &unk_100AE15D8;
  v7[4] = a1;
  v8 = v2;
  sub_10000CA94(v6, v7);
}

uint64_t sub_1000826D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
  {
    sub_100877648();
  }

  sub_10007F460(v2);
  *(v2 + 4328) = 0;
  *(v2 + 1858) = *(a1 + 40);
  return sub_100017DE0(v2, 1);
}

uint64_t sub_100082750(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  if ((*(*v3 + 632))(v3))
  {
    v4 = *(a1 + 2064);
    if (v4 != (a1 + 2072))
    {
      v5 = 0;
      while (1)
      {
        if (sub_1000178BC(v4[5]))
        {
          if (!sub_100028FB4(v4[5]))
          {
            v6 = v4[5];
            if (*(*(v6 + 8) + 172) != 1 || (*(a1 + 1255) & 1) == 0)
            {
              break;
            }
          }
        }

LABEL_15:
        v9 = v4[1];
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
            v10 = v4[2];
            v11 = *v10 == v4;
            v4 = v10;
          }

          while (!v11);
        }

        v4 = v10;
        if (v10 == (a1 + 2072))
        {
          goto LABEL_23;
        }
      }

      v7 = *(v6 + 81);
      if (v7 != 16 && v7 != 32)
      {
        if (!sub_10000D1C8(v6))
        {
LABEL_14:
          v5 |= *(*(v4[5] + 8) + 312);
          goto LABEL_15;
        }

        v6 = v4[5];
      }

      v8 = sub_100024BE0(v6);
      if (v8[1] != *v8 && (sub_10003C8E8(v4[5]) & 1) != 0)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }
  }

LABEL_22:
  v5 = 0;
LABEL_23:
  v12 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v5 & 1;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "overrideEnableGlobalDupFilter:%d", v14, 8u);
  }

  return v5 & 1;
}

uint64_t sub_10008290C(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100082B9C;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 225, 1, v3, 0);
}

uint64_t sub_100082984(char a1, void (*a2)())
{
  v12 = 0;
  v13 = 0;
  result = sub_10001FFD8(&v12);
  if (!result)
  {
    if (HIBYTE(v13))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6282, "OI_STATUS _BCM_OlympicRetainDuplicatesOnLeScanStart(_Bool, BT_VSC_COMPLETE_CB)");
    }

    else if (WORD1(v13) - WORD2(v13) > 3)
    {
      if (BYTE6(v13) == 2)
      {
        *(v12 + WORD2(v13)) = 54;
        *(v12 + WORD2(v13) + 1) = 0;
        *(v12 + WORD2(v13) + 3) = 0;
        v8 = WORD2(v13);
        v9 = WORD2(v13) + 4;
        WORD2(v13) += 4;
        if (HIBYTE(v13))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6283, "OI_STATUS _BCM_OlympicRetainDuplicatesOnLeScanStart(_Bool, BT_VSC_COMPLETE_CB)");
        }

        else if (WORD1(v13) > v9)
        {
          if (BYTE6(v13) == 2)
          {
            WORD2(v13) = v8 + 5;
            *(v12 + v9) = a1;
            return sub_100020078(226, v12, BYTE4(v13), a2, sub_100083FE4, v5, v6, v7);
          }

          v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_17:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6283, v11);
        }

        v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
        goto LABEL_17;
      }

      v10 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_13:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6282, v10);
    }

    v10 = "ByteStream_NumReadBytesAvail(bs) >= 4";
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100082B10()
{
  if (off_100B60638)
  {
    v0 = off_100B60638();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v0);
    v1 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

void sub_100082BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v10 = qword_100B6B1D8;
  v9 = qword_100B6B1E0;
  v30 = xmmword_100B6B1E8;
  v29 = WORD1(xmmword_100B6B1E8);
  if (WORD5(xmmword_100B6B1E8) | WORD4(xmmword_100B6B1E8))
  {
    v11 = WORD1(xmmword_100B6B1E8) == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || (byte_100B6B218 & 1) == 0)
  {
LABEL_10:

    sub_10008518C(a1, a2, a3, a4, a5, a6, a7, a8);
    return;
  }

  *&v31[3] = 0;
  *v31 = 0;
  if (sub_100084230() >= 0x7D0 && sub_100084230() <= 0xF9F && sub_100084230() >= 0xBB8)
  {
    v12 = WORD4(xmmword_100B6B1E8);
    v13 = WORD5(xmmword_100B6B1E8);
    goto LABEL_19;
  }

  v13 = WORD5(xmmword_100B6B1E8);
  v12 = WORD4(xmmword_100B6B1E8);
  if (!WORD5(xmmword_100B6B1E8) || !WORD4(xmmword_100B6B1E8))
  {
LABEL_19:
    if (v12)
    {
      v13 = v12;
      v22 = 4;
    }

    else
    {
      v22 = 8;
    }

    v28 = v13;
    if (v8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not start LE scan (leScanParamsScanCoreCb): %!", v8);
        v23 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      xmmword_100B6B1E8 = 0u;
      *&byte_100B6B1F8 = 0u;
      unk_100B6B1C8 = 0u;
      *&qword_100B6B1D8 = 0u;
      byte_100B6B212 = 0;
      if (v10)
      {
        v10(v8, v9);
      }

      else
      {
        sub_1000D660C();
      }

      return;
    }

    if (byte_100B6B218 == 1 && byte_100B6B215 == 1)
    {
      sub_1000841FC(v31);
      if (byte_100B6B216)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      byte_100B6B1F8 = v24;
      if (sub_100084230() >= 0x7D0 && sub_100084230() <= 0xF9F && sub_100084230() >= 0xBB8 && WORD5(xmmword_100B6B1E8) && WORD4(xmmword_100B6B1E8))
      {
        v25 = v31[0];
        v26 = BYTE13(xmmword_100B6B1E8);
        v27 = byte_100B6B1F8;
      }

      else
      {
        v25 = v31[0];
        v26 = BYTE13(xmmword_100B6B1E8);
        v27 = byte_100B6B1F8;
      }

      sub_10008395C(v25, v26, 1, &v30, &v29, &v28, v27, v22);
      return;
    }

    a1 = 0;
    goto LABEL_10;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("ELNAOn and ELNAByass cannot be used with ScanCore together leScanWindowScanCoreELNAOn=%d leScanWindowScanCoreELNABypass=%d", WORD3(xmmword_100B6B1E8), WORD5(xmmword_100B6B1E8));
    v21 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_10008518C(v8, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_100082ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if ((qword_100B663B0 & 0x20) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Local device does not support active scanning.");
      v3 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1330;
  }

  if (!a1)
  {
    sub_1000D660C();
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_32:
    sub_1000D660C();
    goto LABEL_33;
  }

  if (!a2)
  {
    goto LABEL_32;
  }

LABEL_10:
  if (*a2 && *(a2 + 8) && a1 && *(a2 + 16))
  {
    if ((byte_100B663B8 & 0xA) != 0)
    {
      if (qword_100B663C0 || off_100B663D0 || off_100B663C8)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("We are already scanning.");
          v14 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        return 4060;
      }

      else
      {
        v8 = *(a1 + 4);
        if (!*(a1 + 4))
        {
          if (*(a1 + 1))
          {
            v8 = 2048;
          }

          else
          {
            v8 = 0;
          }
        }

        v9 = *(a1 + 6);
        if (!*(a1 + 6))
        {
          if (*(a1 + 1))
          {
            v9 = 18;
          }

          else
          {
            v9 = 0;
          }
        }

        result = sub_10008319C((*a1 & 1) == 0, v8, v9, *(a1 + 8), *(a1 + 12), *(a1 + 10), *(a1 + 2), *(a1 + 3), *(a1 + 16), *(a1 + 14), *(a1 + 15), *(a1 + 18), *(a1 + 19), *(a1 + 20), HIWORD(*(a1 + 20)), *(a1 + 24), HIBYTE(*(a1 + 24)), sub_100085620, sub_100008BB4, sub_10007BDEC, a3);
        if (!result)
        {
          if (*(a1 + 1))
          {
            v10 = 1;
          }

          else
          {
            v10 = 2;
          }

          byte_100B663D8 = v10;
          v11 = *(a2 + 16);
          *&qword_100B663C0 = *a2;
          off_100B663D0 = v11;
        }
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("We can only scan in Central or Obeserver mode.");
        v13 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 132;
    }

    return result;
  }

LABEL_33:
  if (sub_10000C240())
  {
    sub_10000AF54("Invalid parameters");
    v12 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 101;
}

uint64_t sub_10008319C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, unsigned int a8, unsigned __int8 a9, char a10, char a11, char a12, char a13, __int16 a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21)
{
  *&v60[3] = 0;
  *v60 = 0;
  if (memcmp(&unk_100B6B1C8, "", 0x40uLL))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE scan already in progress.");
      v29 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 118;
  }

  if (byte_100B6B210 == 1)
  {
    sub_1000D660C();
  }

  if (!a19 || !a18 || !a20)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid callback functions");
    v32 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_84:
    sub_10080F7A0();
    return 101;
  }

  if (!(a4 | a3 | a5 | a6))
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Cannot start scan when both main and LP cores window is set to 0");
    v33 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a1 >= 2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan type parameters : %d", a1);
    v31 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a2 && (a2 - 16385) <= 0xFFFFC002)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan interval parameters : %d", a2);
    v34 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a3 && (a3 - 16385) <= 0xFFFFC002)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan interval parameters : %d", a3);
    v35 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a4 && (a4 - 4) >= 0x3FFD)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan window parameters for leScanWindowLPCore : %d", a4);
    v36 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a5 && (a5 - 16385) <= 0xFFFFC002)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan window parameters for leScanWindowScanCoreELNAOn : %d", a5);
    v37 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a6 && (a6 - 16385) <= 0xFFFFC002)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan window parameters for leScanWindowScanCoreELNABypass : %d", a6);
    v38 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (sub_100084230() >= 0x7D0 && sub_100084230() <= 0xF9F)
  {
    v39 = sub_100084230();
    if (!a5 || !a6 || v39 >= 0xBB8)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  if (a5 && a6)
  {
LABEL_55:
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan window parameters for leScanWindowScanCoreELNAOn : %d and leScanWindowScanCoreELNABypass : %d. Both cannot be used at the same time.", a5, a6);
    v40 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

LABEL_58:
  if (a7 >= 2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan filter : %d", a7);
    v41 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a8 >= 2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan filter duplicate setting : %d", a8);
    v42 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  if (a9 >= 2u && (byte_100B6B211 & 1) == 0)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan phy setting : %d", a9);
    v52 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_84;
  }

  sub_1000841FC(v60);
  byte_100B6B212 = 1;
  unk_100B6B1C8 = a18;
  off_100B6B1D0 = a19;
  qword_100B6B1D8 = a20;
  qword_100B6B1E0 = a21;
  LOBYTE(xmmword_100B6B1E8) = a1;
  WORD1(xmmword_100B6B1E8) = a2;
  WORD2(xmmword_100B6B1E8) = a3;
  WORD3(xmmword_100B6B1E8) = a4;
  WORD4(xmmword_100B6B1E8) = a5;
  WORD5(xmmword_100B6B1E8) = a6;
  byte_100B6B202 = a11 != 0;
  BYTE12(xmmword_100B6B1E8) = a9;
  BYTE13(xmmword_100B6B1E8) = a7;
  BYTE14(xmmword_100B6B1E8) = a8;
  *(&xmmword_100B6B1E8 + 15) = 258;
  byte_100B6B1F9 = 1;
  byte_100B6B1FE = a10;
  if (!byte_100B6B213)
  {
    a12 = 0;
  }

  byte_100B6B1FF = a12;
  byte_100B6B203 = a13;
  word_100B6B204 = a14;
  word_100B6B206 = a15;
  byte_100B6B200 = a16;
  byte_100B6B201 = a17;
  v59[0] = a1;
  v59[1] = a1;
  v59[2] = a1;
  v58[0] = a2;
  v58[1] = a2;
  v58[2] = a2;
  v57[0] = a3;
  v57[1] = a3;
  v57[2] = a3;
  if (byte_100B6B214 == 1)
  {
    if ((byte_100B6B215 & 1) == 0 && (byte_100B6B213 & 1) == 0)
    {
      goto LABEL_73;
    }

LABEL_76:
    if (byte_100B6B216)
    {
      v51 = 2;
    }

    else
    {
      v51 = 1;
    }

    byte_100B6B1F8 = v51;
    if (!a2 || !a3)
    {
      sub_100084F40(0, v43, a9, v44, v45, v46, v47, v48);
      return 0;
    }

    v56 = sub_100084F40;
    LOBYTE(v55) = a12;
    v50 = sub_10008395C(v60[0], a7, a9, v59, v58, v57, v51, 1u);
    goto LABEL_89;
  }

  if (byte_100B6B213)
  {
    goto LABEL_76;
  }

LABEL_73:
  if (byte_100B6B216)
  {
    v56 = 1;
    v55 = a7;
    v50 = sub_100018960(215, sub_100084F40, a9, v44, v45, v46, v47, v48, v60[0]);
  }

  else
  {
    v55 = a2;
    v56 = a3;
    v50 = sub_100018960(171, sub_100084F40, a9, v44, v45, v46, v47, v48, a1);
  }

LABEL_89:
  v30 = v50;
  if (v50)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not start a LE scan %!", v30, v55, v56);
      v54 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    xmmword_100B6B1E8 = 0u;
    *&byte_100B6B1F8 = 0u;
    unk_100B6B1C8 = 0u;
    *&qword_100B6B1D8 = 0u;
    byte_100B6B212 = 0;
  }

  return v30;
}

uint64_t sub_10008395C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v8 = 101;
  if (a8 <= 8 && ((1 << a8) & 0x116) != 0)
  {
    if (off_100B605E0)
    {
      v8 = off_100B605E0(a1, a2, a3);
      if (!v8)
      {
        return v8;
      }
    }

    else
    {
      v8 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v8);
      v9 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v8;
}

uint64_t sub_100083A20(unsigned int a1)
{
  if (a1 > 2)
  {
    v2 = 0;
  }

  else
  {
    if (qword_100BC7028 != -1)
    {
      dispatch_once(&qword_100BC7028, &stru_100B08060);
    }

    v2 = atomic_exchange(&byte_100BC7020[a1], 1u) ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_100083A98(uint64_t a1, unsigned int a2, int a3)
{
  result = 7;
  if (a2 && a3)
  {
    v4 = 100 * a3 / a2;
    if (v4 <= 0x4B)
    {
      if (v4 <= 0x32)
      {
        if (v4 <= 0x22)
        {
          if (v4 <= 0xA)
          {
            if (v4 <= 4)
            {
              if (v4 > 1)
              {
                return 5;
              }

              else
              {
                return 6;
              }
            }

            else
            {
              return 4;
            }
          }

          else
          {
            return 3;
          }
        }

        else
        {
          return 2;
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_100083B10(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_100083B64(uint64_t a1, uint64_t a2)
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
        if (*(a2 + 28) >= *(v4 + 7))
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
  sub_10000856C(a1, v3, v5, a2);
  return a2;
}

uint64_t sub_100083BD4(char a1, char a2, char a3, char a4, char a5, __int16 a6, __int16 a7, void (*a8)())
{
  v33 = 0;
  v34 = 0;
  result = sub_10001FFD8(&v33);
  if (!result)
  {
    if (HIBYTE(v34))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6132, "OI_STATUS _BCM_OlympicLESetScanEnable(const uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v20 = WORD2(v34);
      if (WORD1(v34) > WORD2(v34))
      {
        if (BYTE6(v34) == 2)
        {
          ++WORD2(v34);
          *(v33 + v20) = a1;
          if (HIBYTE(v34))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6133, "OI_STATUS _BCM_OlympicLESetScanEnable(const uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v21 = WORD2(v34);
            if (WORD1(v34) > WORD2(v34))
            {
              if (BYTE6(v34) == 2)
              {
                ++WORD2(v34);
                *(v33 + v21) = a2;
                if (HIBYTE(v34))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6134, "OI_STATUS _BCM_OlympicLESetScanEnable(const uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v22 = WORD2(v34);
                  if (WORD1(v34) > WORD2(v34))
                  {
                    if (BYTE6(v34) == 2)
                    {
                      ++WORD2(v34);
                      *(v33 + v22) = a3;
                      if (HIBYTE(v34))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6135, "OI_STATUS _BCM_OlympicLESetScanEnable(const uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                      }

                      else
                      {
                        v23 = WORD2(v34);
                        if (WORD1(v34) > WORD2(v34))
                        {
                          if (BYTE6(v34) == 2)
                          {
                            ++WORD2(v34);
                            *(v33 + v23) = a4;
                            if (HIBYTE(v34))
                            {
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6136, "OI_STATUS _BCM_OlympicLESetScanEnable(const uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                            }

                            else
                            {
                              v24 = WORD2(v34);
                              if (WORD1(v34) > WORD2(v34))
                              {
                                if (BYTE6(v34) == 2)
                                {
                                  ++WORD2(v34);
                                  *(v33 + v24) = a5;
                                  if (HIBYTE(v34))
                                  {
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6137, "OI_STATUS _BCM_OlympicLESetScanEnable(const uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                  }

                                  else if (WORD1(v34) - WORD2(v34) > 1)
                                  {
                                    if (BYTE6(v34) == 2)
                                    {
                                      *(v33 + WORD2(v34)) = a7;
                                      v25 = WORD2(v34) + 2;
                                      WORD2(v34) += 2;
                                      if (HIBYTE(v34))
                                      {
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6138, "OI_STATUS _BCM_OlympicLESetScanEnable(const uint8_t, uint8_t, uint8_t, uint8_t, uint8_t, uint16_t, uint16_t, BT_VSC_COMPLETE_CB)");
                                      }

                                      else if (WORD1(v34) - v25 > 1)
                                      {
                                        if (BYTE6(v34) == 2)
                                        {
                                          *(v33 + v25) = a6;
                                          *(v33 + WORD2(v34) + 1) = HIBYTE(a6);
                                          WORD2(v34) += 2;
                                          return sub_100020078(553, v33, BYTE4(v34), a8, sub_100022AD0, v17, v18, v19);
                                        }

                                        v32 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_52:
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6138, v32);
                                      }

                                      v32 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                      goto LABEL_52;
                                    }

                                    v31 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_48:
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6137, v31);
                                  }

                                  v31 = "ByteStream_NumReadBytesAvail(bs) >= 2";
                                  goto LABEL_48;
                                }

                                v30 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_44:
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6136, v30);
                              }
                            }

                            v30 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                            goto LABEL_44;
                          }

                          v29 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_40:
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6135, v29);
                        }
                      }

                      v29 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                      goto LABEL_40;
                    }

                    v28 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_36:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6134, v28);
                  }
                }

                v28 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_36;
              }

              v27 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_32:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6133, v27);
            }
          }

          v27 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_32;
        }

        v26 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_28:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6132, v26);
      }
    }

    v26 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_28;
  }

  return result;
}

void sub_100083FE4(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, void), uint64_t *a3)
{
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 763, "void _BCM_ByteStreamEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    goto LABEL_4;
  }

  if (*(a3 + 5) - *(a3 + 6) <= 1)
  {
LABEL_4:
    if (sub_10000C240())
    {
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 764, "void _BCM_ByteStreamEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
        v4 = 0;
      }

      else
      {
        v4 = *(a3 + 5) - *(a3 + 6);
      }

      sub_10000AF54("Invalid data size %d", v4);
      v10 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (result && sub_10000C240() && ((v7 = *(a3 + 6), v8 = *a3 + v7, !*(a3 + 15)) ? (v9 = *(a3 + 5) - v7) : (sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 769, "void _BCM_ByteStreamEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)"), v9 = 0), sub_10000AF54("hlCb 0x%x, data %@", a2, v8, v9), v11 = sub_10000C050(0x54u), os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F604();
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  v12 = *a3;
  v13 = *(a3 + 6);
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 772, "void _BCM_ByteStreamEventParser(OI_STATUS, GENERIC_HL_CB, OI_BYTE_STREAM *)");
    v14 = 0;
  }

  else
  {
    v14 = *(a3 + 10) - v13;
  }

  a2(result, v12 + v13, v14);
}

uint64_t sub_1000841AC(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 225);
}

uint64_t sub_1000841FC(uint64_t result)
{
  v1 = &dword_100B6A57E[2 * byte_100B6A57D] - byte_100B6A57D;
  v2 = v1[6];
  v3 = *(v1 + 2);
  *result = *v1;
  *(result + 4) = v3;
  *(result + 6) = v2;
  return result;
}

uint64_t sub_10008423C(char a1, char a2, unsigned __int8 a3, char *a4, _WORD *a5, _BYTE *a6, char a7, char a8, _BYTE *a9, char a10, void (*a11)())
{
  v46 = 0;
  v47 = 0;
  result = sub_10001FFD8(&v46);
  if (result)
  {
    return result;
  }

  LOBYTE(v23) = 0;
  v25 = 3;
  v26 = a3;
  do
  {
    LOBYTE(v23) = (v26 & 1) + v23;
    v26 >>= 1;
    --v25;
  }

  while (v25);
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6168, "OI_STATUS _BCM_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_55;
  }

  v27 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_55:
    v41 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_57;
  }

  if (BYTE6(v47) != 2)
  {
    v41 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_57:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6168, v41);
  }

  ++WORD2(v47);
  *(v46 + v27) = a1;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6169, "OI_STATUS _BCM_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_59;
  }

  v28 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_59:
    v42 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_61;
  }

  if (BYTE6(v47) != 2)
  {
    v42 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_61:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6169, v42);
  }

  ++WORD2(v47);
  *(v46 + v28) = a2;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6170, "OI_STATUS _BCM_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_63;
  }

  v29 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_63:
    v43 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_65;
  }

  if (BYTE6(v47) != 2)
  {
    v43 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_65:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6170, v43);
  }

  ++WORD2(v47);
  *(v46 + v29) = a3;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6171, "OI_STATUS _BCM_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_67;
  }

  v30 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_67:
    v44 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_69;
  }

  if (BYTE6(v47) != 2)
  {
    v44 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_69:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6171, v44);
  }

  ++WORD2(v47);
  *(v46 + v30) = (4 * a10) | a7;
  if (HIBYTE(v47))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6172, "OI_STATUS _BCM_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
    goto LABEL_71;
  }

  v31 = WORD2(v47);
  if (WORD1(v47) <= WORD2(v47))
  {
LABEL_71:
    v45 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_73;
  }

  if (BYTE6(v47) != 2)
  {
    v45 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_73:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6172, v45);
  }

  ++WORD2(v47);
  *(v46 + v31) = a8;
  if (v23)
  {
    v23 = v23;
    while (!HIBYTE(v47))
    {
      v32 = WORD2(v47);
      if (WORD1(v47) <= WORD2(v47))
      {
        goto LABEL_52;
      }

      if (BYTE6(v47) != 2)
      {
        v40 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_53;
      }

      v33 = *a4;
      ++WORD2(v47);
      *(v46 + v32) = v33;
      if (HIBYTE(v47))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6176, "OI_STATUS _BCM_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_48:
        v39 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_49:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6176, v39);
      }

      if (WORD1(v47) - WORD2(v47) <= 1)
      {
        goto LABEL_48;
      }

      if (BYTE6(v47) != 2)
      {
        v39 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_49;
      }

      *(v46 + WORD2(v47)) = *a5;
      v34 = WORD2(v47) + 2;
      WORD2(v47) += 2;
      if (HIBYTE(v47))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6177, "OI_STATUS _BCM_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_44:
        v38 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_45:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6177, v38);
      }

      if (WORD1(v47) - v34 <= 1)
      {
        goto LABEL_44;
      }

      if (BYTE6(v47) != 2)
      {
        v38 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_45;
      }

      *(v46 + v34) = *a6;
      *(v46 + WORD2(v47) + 1) = a6[1];
      v35 = WORD2(v47) + 2;
      WORD2(v47) += 2;
      if (HIBYTE(v47))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6178, "OI_STATUS _BCM_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_40:
        v37 = "ByteStream_NumReadBytesAvail(bs) >= 2";
LABEL_41:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6178, v37);
      }

      if (WORD1(v47) - v35 <= 1)
      {
        goto LABEL_40;
      }

      if (BYTE6(v47) != 2)
      {
        v37 = "(bs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_41;
      }

      *(v46 + v35) = *a9;
      *(v46 + WORD2(v47) + 1) = a9[1];
      v36 = BYTE4(v47) + 2;
      a9 += 2;
      WORD2(v47) += 2;
      a6 += 2;
      ++a5;
      ++a4;
      if (!--v23)
      {
        return sub_100020078(567, v46, v36, a11, sub_100022AD0, v20, v21, v22);
      }
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6175, "OI_STATUS _BCM_OlympicLESetScanParametersMultiCore(uint8_t, uint8_t, uint8_t, uint8_t *, uint16_t *, uint16_t *, uint8_t, uint8_t, uint16_t *, uint8_t, BT_VSC_COMPLETE_CB)");
LABEL_52:
    v40 = "ByteStream_NumReadBytesAvail(bs) >= 1";
LABEL_53:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6175, v40);
  }

  v36 = BYTE4(v47);
  return sub_100020078(567, v46, v36, a11, sub_100022AD0, v20, v21, v22);
}

uint64_t sub_1000847C4(uint64_t a1, __int128 *a2, int a3, unsigned int *a4)
{
  v52[0] = 0;
  v52[1] = 0;
  sub_100007F88(v52, a1 + 48);
  if (!a3)
  {
    v8 = (a1 + 388);
    if (*(a1 + 388))
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((*a2 & 1) == 0 && *(a1 + 388) == 1)
  {
    *(a1 + 504) = CFAbsoluteTimeGetCurrent();
    ++*(a1 + 512);
  }

  v8 = (a1 + 388);
  if ((*(a1 + 388) & 1) == 0 && *a2 == 1)
  {
LABEL_9:
    if (qword_100B508D0 != -1)
    {
      sub_10084A9B0();
    }

    sub_100795F74(off_100B508C8);
  }

LABEL_12:
  v9 = *a2;
  *(v8 + 10) = *(a2 + 10);
  *v8 = v9;
  *(a1 + 414) = a3;
  if ((a1 + 416) != a4)
  {
    sub_100084CFC((a1 + 416), *a4, a4 + 2);
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  v36 = 0u;
  sub_100007AD0(&v36);
  v10 = sub_100007774(&v37, "Discovery scans ", 16);
  if (a3)
  {
    v11 = "enabled ";
  }

  else
  {
    v11 = "disbled ";
  }

  sub_100007774(v10, v11, 8);
  if (a3)
  {
    v12 = *v8 ? "passive" : "active";
    v13 = *v8 ? 7 : 6;
    sub_100007774(&v37, v12, v13);
    v14 = sub_100007774(&v37, " with ", 6);
    v15 = *(a1 + 391) ? "No " : "";
    v16 = *(a1 + 391) ? 3 : 0;
    v17 = sub_100007774(v14, v15, v16);
    sub_100007774(v17, "duplicates ", 11);
    v18 = std::ostream::operator<<();
    sub_100007774(v18, "/", 1);
    v19 = std::ostream::operator<<();
    sub_100007774(v19, "/", 1);
    v20 = std::ostream::operator<<();
    sub_100007774(v20, "/", 1);
    v21 = std::ostream::operator<<();
    sub_100007774(v21, "//", 2);
    std::ostream::operator<<();
    sub_100007774(&v37, " usecases:", 10);
    v22 = *(a1 + 416);
    if (v22 != (a1 + 424))
    {
      do
      {
        v23 = sub_10002BC74(*(v22 + 7));
        v24 = v23;
        v25 = strlen(v23);
        v26 = sub_100007774(&v37, v24, v25);
        sub_100007774(v26, ",", 1);
        v27 = v22[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v22[2];
            v29 = *v28 == v22;
            v22 = v28;
          }

          while (!v29);
        }

        v22 = v28;
      }

      while (v28 != (a1 + 424));
    }
  }

  v30 = qword_100BCEAD0;
  if (os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_DEFAULT))
  {
    std::stringbuf::str();
    v31 = v35 >= 0 ? &__p : __p;
    *buf = 136315138;
    v54 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    if (v35 < 0)
    {
      operator delete(__p);
    }
  }

  *&v37 = v32;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[1]);
  }

  std::locale::~locale(v38);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return sub_1000088CC(v52);
}

void sub_100084CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1007FC91C(va);
  sub_1000088CC(v9 - 96);
  _Unwind_Resume(a1);
}

void *sub_100084CFC(void *result, unsigned int *a2, unsigned int *a3)
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
      v13 = sub_100083B10(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = v9[7];
          sub_100083B64(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_100083B10(v13);
          }

          v10 = *(v9 + 1);
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
              a2 = *(v9 + 2);
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

    result = sub_100084E60(&v12);
  }

  if (a2 != a3)
  {
    sub_10008605C(v5, a2 + 7);
  }

  return result;
}

void sub_100084E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100084E60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100084E60(uint64_t a1)
{
  sub_10000CEDC(*a1, *(a1 + 16));
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

    sub_10000CEDC(*a1, v2);
  }

  return a1;
}

void sub_100084EB8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 5;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100084F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v10 = qword_100B6B1D8;
  v9 = qword_100B6B1E0;
  *&v27[3] = 0;
  *v27 = 0;
  v26 = xmmword_100B6B1E8;
  v11 = WORD1(xmmword_100B6B1E8);
  v25 = WORD1(xmmword_100B6B1E8);
  v12 = WORD3(xmmword_100B6B1E8);
  v24 = WORD3(xmmword_100B6B1E8);
  if (a1)
  {
LABEL_2:
    if (sub_10000C240())
    {
      sub_10000AF54("Could not start LE scan (leScanParamsLPCoreCb): %!", v8);
      v13 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    xmmword_100B6B1E8 = 0u;
    *&byte_100B6B1F8 = 0u;
    unk_100B6B1C8 = 0u;
    *&qword_100B6B1D8 = 0u;
    byte_100B6B212 = 0;
    if (v10)
    {
      v10(v8, v9);
    }

    else
    {
      sub_1000D660C();
    }

    return;
  }

  if (byte_100B6B214 == 1 && byte_100B6B215 == 1)
  {
    sub_1000841FC(v27);
    if (byte_100B6B216)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    byte_100B6B1F8 = v21;
    if (byte_100B6B218)
    {
      if (WORD3(xmmword_100B6B1E8))
      {
        v22 = v27[0];
        v23 = BYTE13(xmmword_100B6B1E8);
        goto LABEL_22;
      }

      if (WORD4(xmmword_100B6B1E8) | WORD5(xmmword_100B6B1E8))
      {
        sub_100082BB4(0, v14, v15, v16, v17, v18, v19, v20);
        return;
      }
    }

    else if (v11 && v12)
    {
      v22 = v27[0];
      v23 = BYTE13(xmmword_100B6B1E8);
LABEL_22:
      v8 = sub_10008395C(v22, v23, 1, &v26, &v25, &v24, v21, 2u);
      if (!v8)
      {
        return;
      }

      goto LABEL_2;
    }

    sub_10008518C(0, v14, v15, v16, v17, v18, v19, v20);
    return;
  }

  sub_10008518C(0, a2, a3, a4, a5, a6, a7, a8);
}

void sub_10008518C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v10 = qword_100B6B1D8;
  v9 = qword_100B6B1E0;
  if (a1)
  {
    goto LABEL_55;
  }

  v11 = byte_100B6B215;
  if (byte_100B6B215 != 1)
  {
    if (byte_100B6B216)
    {
      v12 = sub_100018960(216, sub_1000855A0, a3, a4, a5, a6, a7, a8, 1);
    }

    else
    {
      v12 = sub_100018960(172, sub_1000855A0, a3, a4, a5, a6, a7, a8, 1);
    }

LABEL_52:
    v8 = v12;
    if (!v12)
    {
      return;
    }

    goto LABEL_55;
  }

  if (byte_100B6B216)
  {
    v11 = 2;
  }

  byte_100B6B1F8 = v11;
  if (byte_100B6B214 == 1)
  {
    byte_100B6B1F9 = WORD2(xmmword_100B6B1E8) != 0;
    if (WORD3(xmmword_100B6B1E8))
    {
      byte_100B6B1F9 = (WORD2(xmmword_100B6B1E8) != 0) | 2;
    }
  }

  if (byte_100B6B218 != 1)
  {
    v13 = 1;
    goto LABEL_42;
  }

  if (WORD5(xmmword_100B6B1E8))
  {
    byte_100B6B1F9 |= 8u;
    if (!WORD4(xmmword_100B6B1E8))
    {
      goto LABEL_18;
    }
  }

  else if (!WORD4(xmmword_100B6B1E8))
  {
    if (byte_100B6B202)
    {
      v13 = 3;
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_42;
  }

  byte_100B6B1F9 |= 4u;
LABEL_18:
  if (byte_100B6B202)
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  if (byte_100B6B1FE)
  {
    v15 = WORD2(xmmword_100B6B1E8) == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v14 |= 4u;
  }

  if (!byte_100B6B203)
  {
    v13 = v14;
    goto LABEL_42;
  }

  v13 = v14 | 8;
  if (word_100B6B206 > 1u)
  {
    if (word_100B6B206 == 2)
    {
      v13 = v14 | 0x28;
      goto LABEL_42;
    }

    if (word_100B6B206 == 4)
    {
      v13 = v14 | 0x38;
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  if (word_100B6B206)
  {
    if (word_100B6B206 == 1)
    {
      v13 = v14 | 0x18;
      goto LABEL_42;
    }

LABEL_38:
    if (sub_10000C240())
    {
      sub_10000AF54("Unexpected scancore coex query interval %d", word_100B6B206);
      v16 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

LABEL_42:
  if (byte_100B6B21B == 1)
  {
    if (byte_100B6B200 == 1)
    {
      if (byte_100B6B201)
      {
        v13 |= 0x80u;
      }

      else
      {
        v13 |= 0x40u;
      }
    }

    else if (byte_100B6B201)
    {
      v13 |= 0xC0u;
    }
  }

  if (byte_100B6B1F9)
  {
    v12 = sub_10007AFA4(v13, byte_100B6B1F8, BYTE14(xmmword_100B6B1E8), HIBYTE(xmmword_100B6B1E8), byte_100B6B1F9);
    goto LABEL_52;
  }

  v8 = 408;
LABEL_55:
  if (sub_10000C240())
  {
    sub_10000AF54("Could not start LE scan (leScanParamsCb): %!", v8);
    v17 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  xmmword_100B6B1E8 = 0u;
  *&byte_100B6B1F8 = 0u;
  unk_100B6B1C8 = 0u;
  *&qword_100B6B1D8 = 0u;
  byte_100B6B212 = 0;
  if (v10)
  {
    v10(v8, v9);
  }

  else
  {
    sub_1000D660C();
  }
}

void sub_1000854DC(uint64_t result)
{
  if (result)
  {
    v1 = 1;
LABEL_3:

    sub_1002DA024(result, v1);
    return;
  }

  if (byte_100B6B214 == 1 && (byte_100B6B21A & 1) == 0)
  {
    result = sub_1002A258C();
    byte_100B6B21A = 1;
    v1 = 0;
    goto LABEL_3;
  }

  v2 = unk_100B6B1C8;
  v3 = qword_100B6B1E0;
  byte_100B6B212 = 0;
  if (unk_100B6B1C8)
  {

    v2(0, v3);
  }
}

void sub_1000855A0(uint64_t a1)
{
  if (a1)
  {
    v2 = 3;

LABEL_4:
    sub_1002DA024(a1, v2);
    return;
  }

  if (byte_100B6B219 == 1)
  {
    a1 = sub_1002A2474();
    v2 = 2;

    goto LABEL_4;
  }

  sub_1000854DC(0);
}

uint64_t sub_100085620()
{
  if (qword_100B663C0)
  {
    return qword_100B663C0();
  }

  return result;
}

void sub_100085634(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000857DC;
  v4[3] = &unk_100AE0900;
  v5 = v2;
  sub_10000CA94(v3, v4);
}

void sub_1000856B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 1984);
  if (v3)
  {
    v4 = a2;
    if (v3 != 2)
    {
      v5 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT))
      {
        sub_100875EEC(v5);
      }
    }

    v6 = qword_100BCE918;
    if (v4)
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_ERROR))
      {
        sub_100875F70();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Scanning started successfully", buf, 2u);
      }

      *(a1 + 2120) = 0;
      sub_10007C438(a1, 3u);
      sub_100016340(a1, 0);
    }
  }

  else
  {
    v7 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring late scan started event", v9, 2u);
    }

    sub_10003C478(a1, v8);
  }
}

void sub_1000857DC(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;
  v3 = *(a1 + 32);

  sub_1000856B0(v2, v3);
}

void sub_1000858C0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1007B2978(v3, v2);
  _Unwind_Resume(a1);
}

_BYTE *sub_1000858DC(_BYTE *result)
{
  v1 = result;
  if ((result[9] & 1) == 0)
  {
    result = (*(*result + 16))(result);
  }

  if (v1[8] == 1)
  {
    v2 = *(*v1 + 8);

    return v2(v1);
  }

  return result;
}

uint64_t sub_10008598C(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100876628();
  }

  v2 = off_100B51070;
  v3 = *(a1 + 24);

  return sub_1000859E4(v2, v3, a1);
}

uint64_t sub_1000859E4(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 2072);
  if (v3)
  {
    v5 = result;
    v6 = result + 2072;
    do
    {
      v7 = *(v3 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * v9);
    }

    while (v3);
    if (v6 != result + 2072 && *(v6 + 32) <= a2)
    {
      v10 = *(v6 + 40);
      if (*(v10 + 88) == a3 && (*(*(v10 + 8) + 172) & 1) == 0)
      {
        v11 = *(v10 + 96);
        v12 = qword_100BCE918;
        if (v11 >= 3 && os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_FAULT))
        {
          *__p = 136446210;
          *&__p[4] = "level < kNumScanLevels";
          _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", __p, 0xCu);
          v12 = qword_100BCE918;
        }

        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
        if (v13)
        {
          sub_100018384(a2, __p);
          v14 = v16 >= 0 ? __p : *__p;
          *buf = 136446466;
          v18 = v14;
          v19 = 1024;
          v20 = v11 + 1;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Session %{public}s is now at scan level %d", buf, 0x12u);
          if (v16 < 0)
          {
            operator delete(*__p);
          }
        }

        *(v10 + 96) = v11 + 1;
        if (v11 > 1)
        {
          *(v10 + 88) = 0;
        }

        else
        {
          sub_10007088C(v13, a2, v10);
        }

        return sub_100017DE0(v5, 0);
      }
    }
  }

  return result;
}

void *sub_100085BC8(void *result)
{
  *result = &off_100AE0AB8;
  result[1] = 0;
  result[2] = &off_100AE0AB8;
  result[3] = 0;
  result[4] = &off_100AE0AB8;
  result[5] = 0;
  result[6] = &off_100AE0AB8;
  result[7] = 0;
  result[8] = &off_100AE0AB8;
  result[9] = 0;
  return result;
}

uint64_t sub_100085C68(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100085CE0;
  v3[3] = &unk_100AF2390;
  v3[4] = a2;
  return sub_10002173C(a1, 251, 1, v3, 0);
}

uint64_t sub_100085CF8()
{
  if (off_100B60710)
  {
    v0 = off_100B60710();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v0);
    v1 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_100085D84(uint64_t a1, void (*a2)())
{
  v16 = 0;
  v17 = 0;
  result = sub_10001FFD8(&v16);
  if (!result)
  {
    if (HIBYTE(v17))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3765, "OI_STATUS _BCM_LEMetaAddDeviceToMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
    }

    else
    {
      v5 = WORD2(v17);
      if (WORD1(v17) > WORD2(v17))
      {
        if (BYTE6(v17) == 2)
        {
          ++WORD2(v17);
          *(v16 + v5) = 53;
          if (HIBYTE(v17))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3766, "OI_STATUS _BCM_LEMetaAddDeviceToMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
          }

          else
          {
            v6 = WORD2(v17);
            if (WORD1(v17) > WORD2(v17))
            {
              if (BYTE6(v17) == 2)
              {
                ++WORD2(v17);
                *(v16 + v6) = 0;
                if (HIBYTE(v17))
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3767, "OI_STATUS _BCM_LEMetaAddDeviceToMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
                }

                else
                {
                  v7 = WORD2(v17);
                  if (WORD1(v17) > WORD2(v17))
                  {
                    if (BYTE6(v17) == 2)
                    {
                      ++WORD2(v17);
                      *(v16 + v7) = BYTE6(a1);
                      v15[0] = BYTE5(a1);
                      v15[1] = BYTE4(a1);
                      v15[2] = BYTE3(a1);
                      v15[3] = BYTE2(a1);
                      v15[4] = BYTE1(a1);
                      v15[5] = a1;
                      if (HIBYTE(v17))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3771, "OI_STATUS _BCM_LEMetaAddDeviceToMatchingAddressList(const BTAddress, BT_VSC_COMPLETE_CB)");
                      }

                      else if (WORD1(v17) - WORD2(v17) > 5)
                      {
                        if (BYTE6(v17) == 2)
                        {
                          sub_1000075EC((v16 + WORD2(v17)), v15, 6uLL);
                          WORD2(v17) += 6;
                          return sub_100020078(233, v16, BYTE4(v17), a2, sub_100022AD0, v8, v9, v10);
                        }

                        v14 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3771, v14);
                      }

                      v14 = "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE";
                      goto LABEL_31;
                    }

                    v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3767, v13);
                  }
                }

                v13 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                goto LABEL_27;
              }

              v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3766, v12);
            }
          }

          v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
          goto LABEL_23;
        }

        v11 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 3765, v11);
      }
    }

    v11 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10008600C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 251);
}

uint64_t **sub_1000860FC(uint64_t **result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100062A98(v5, v5 + 1, v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
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

void sub_10008667C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10008667C(a1, *a2);
    sub_10008667C(a1, a2[1]);
    a2[5] = &off_100AE0AB8;
    v4 = a2[6];
    if (v4)
    {
      sub_10000C808(v4);
    }

    operator delete(a2);
  }
}

void *sub_1000866FC(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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
      v7 = v4[4];
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

uint64_t *sub_1000867EC(uint64_t a1, const void ***a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_1000A61B8(a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1000A61B8(a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void *sub_100086888(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10009690C(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t sub_100086910(int a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 *a4)
{
  result = 161;
  if (a2 && a3 >= 2 && a1 == 15 && a4)
  {
    v7 = a2[1];
    v8 = *a2;
    LODWORD(v9) = 2;
    if (v7 != 56 && v7 != 51)
    {
      if (v7 != 9)
      {
        v10 = 0;
LABEL_16:
        v11 = sub_10000F034(161, a2);
        (*(*v11 + 424))(v11, v7, v8, v10, *a4);
        return 0;
      }

      LODWORD(v9) = 5;
    }

    if ((v8 & 0x80u) == 0)
    {
      v9 = v9;
    }

    else
    {
      v9 = (v9 + 3);
    }

    if (v9 >= a3)
    {
      return 161;
    }

    v10 = a2[v9];
    goto LABEL_16;
  }

  return result;
}

void *sub_1000869F8(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!sub_1000A61B8(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t *sub_100086A74(void *a1, void *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_1000A61B8(a1, a5, a2 + 4))
  {
    if (!sub_1000A61B8(a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1000A61B8(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1000A61B8(a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1000867EC(a1, a3, a5);
}

uint64_t sub_100086C20(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  bzero(__src, 0x4178uLL);
  v183[0] = 0;
  v183[1] = 0;
  v5 = sub_100007F88(v183, v4 + 64);
  if ((*(v4 + 49) & 1) == 0)
  {
    v7 = qword_100BCE9A8;
    if (!os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      return sub_1000088CC(v183);
    }

    *buf = 0;
    v8 = "Stack is not started, updateAdvertisement returning";
    v9 = v7;
    goto LABEL_8;
  }

  v161 = v4;
  if ((v3 & 1) == 0 && *(v4 + 17033) == 1)
  {
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
    {
      sub_10086ABF4();
    }

    return sub_1000088CC(v183);
  }

  v158 = v4 + 0x4000;
  if (*(v4 + 17172) == 1)
  {
    v10 = sub_10000C798(v5, v6);
    if ((*(*v10 + 1048))(v10))
    {
      v11 = *(v4 + 17104);
      v12 = qword_100BCE9A8;
      v13 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "LeBroadcaster::updateAdvertisement System about to go to sleep, but in the middle of reconfig", buf, 2u);
        }

        goto LABEL_14;
      }

      if (!v13)
      {
        return sub_1000088CC(v183);
      }

      *buf = 0;
      v8 = "LeBroadcaster::updateAdvertisement System about to go to sleep, will try again later";
      v9 = v12;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      return sub_1000088CC(v183);
    }
  }

LABEL_14:
  if ((*(v161 + 128) | 2) == 2)
  {
    v14 = qword_100BCE9A8;
    if (*(v158 + 648) == 1)
    {
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "updateAdvertisement busy with address change, will try again later", buf, 2u);
      }

      sub_1000937AC(v161, 0);
      return sub_1000088CC(v183);
    }

    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
    {
      sub_10086AC30();
    }

    sub_100097D14(v161, 0);
    *(v158 + 649) = 0;
    v180 = 0;
    v181[0] = 0;
    v181[1] = 0;
    sub_1000690B8(&v180, v161 + 16912);
    v16 = v180;
    if (v180 == v181)
    {
      LOBYTE(v17) = 0;
      v30 = 1;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      while (1)
      {
        if (qword_100B512F8 != -1)
        {
          sub_10086ACE4();
        }

        v19 = sub_10006E254(off_100B512F0, v16[4]);
        if (qword_100B512F8 != -1)
        {
          sub_10086ACE4();
        }

        v20 = sub_100070518(off_100B512F0, v16[4]);
        _ZF = (v19 & 0x30) != 0 || v19 == 1;
        v22 = _ZF;
        if ((v22 | v20))
        {
          break;
        }

        v23 = v17;
        v24 = v16[6];
        v25 = *(v24 + 264) == 2;
        if (*(v24 + 360) == 1)
        {
          v26 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(v16[4], buf);
            v27 = buf;
            if ((buf[23] & 0x80u) != 0)
            {
              v27 = *buf;
            }

            LODWORD(v202) = 136446210;
            *(&v202 + 4) = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Session %{public}s requires power assertion", &v202, 0xCu);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          v18 = 1;
        }

        v28 = v16[1];
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v16[2];
            _ZF = *v29 == v16;
            v16 = v29;
          }

          while (!_ZF);
        }

        v17 = v25 | v23;
        v16 = v29;
        if (v29 == v181)
        {
          goto LABEL_53;
        }
      }

      v17 = 1;
LABEL_53:
      v30 = v17 ^ 1;
      if (v18 & 1) != 0 && (v17)
      {
        v31 = v161;
        sub_1007294E4(v161);
        LOBYTE(v17) = 1;
        goto LABEL_57;
      }
    }

    v31 = v161;
    sub_100099094(v161);
LABEL_57:
    if (!*(v31 + 144))
    {
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
        sub_10086AE18();
      }

      goto LABEL_256;
    }

    if (sub_100096908())
    {
      v32 = sub_100096908();
    }

    else
    {
      v32 = 1;
    }

    v202 = 0uLL;
    v203 = 0;
    v179[0] = 0;
    v179[1] = 0;
    v177[1] = 0;
    v178 = v179;
    v176 = v177;
    v177[0] = 0;
    v175[0] = 0;
    v175[1] = 0;
    v173[1] = 0;
    v174 = v175;
    v172 = v173;
    v173[0] = 0;
    v171[0] = 0;
    v171[1] = 0;
    v169[1] = 0;
    v170 = v171;
    v168 = v169;
    v169[0] = 0;
    sub_100088F6C(v161, &v180, __src, v32, &v202, &v178, &v176, &v174, &v170, &v168);
    v153 = v30;
    v156 = v17;
    v152 = v32;
    if (v32)
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 3352 * v32;
      v159 = v36;
      while (1)
      {
        _X22 = &__src[v33 + 6660];
        _X26 = v161 + 6812 + v33;
        v39 = &__src[v33];
        v40 = (v161 + v33);
        v41 = sub_100088E58(v161, &__src[v33], (v161 + v33 + 152));
        __asm
        {
          PRFM            #0, [X26]
          PRFM            #0, [X22]
        }

        if (v41)
        {
          v47 = qword_100BCE9B0;
          if (os_log_type_enabled(qword_100BCE9B0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *&buf[4] = v34;
            _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "Advertising instance %d changed:", buf, 8u);
            v47 = qword_100BCE9B0;
          }

          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            _X8 = v40 + 3505;
            __asm { PRFM            #0, [X8] }

            _X8 = v39 + 3353;
            v59 = *(v161 + v33 + 153);
            __asm { PRFM            #0, [X8] }

            LODWORD(_X8) = __src[v33 + 1];
            v61 = *(v161 + v33 + 154);
            v62 = *&__src[v33 + 2];
            *buf = 67109888;
            *&buf[4] = v59;
            *&buf[8] = 1024;
            *&buf[10] = _X8;
            *&buf[14] = 1024;
            *&buf[16] = v61;
            *&buf[20] = 1024;
            *&buf[22] = v62;
            _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "\ttype:%d-->%d interval:%d-->%d", buf, 0x1Au);
            v47 = qword_100BCE9B0;
          }

          v48 = &__src[v33];
          v49 = memcmp(&__src[v33 + 5], (v161 + v33 + 157), 0x672uLL);
          v48[3319] = v49 != 0;
          v50 = memcmp(&__src[v33 + 1658], (v161 + v33 + 1810), 0x672uLL);
          v48[3320] = v50 != 0;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109376;
            *&buf[4] = v49 != 0;
            *&buf[8] = 1024;
            *&buf[10] = v50 != 0;
            _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "AdvDataChanged:%d scanDataChanged:%d", buf, 0xEu);
          }

          v36 = v159;
          if (v34 == 2)
          {
            v51 = sub_10000E92C();
            if (!(*(*v51 + 184))(v51))
            {
              goto LABEL_87;
            }
          }

          v52 = qword_100BCE9B0;
          if (os_log_type_enabled(qword_100BCE9B0, OS_LOG_TYPE_DEBUG))
          {
            _X8 = v40 + 5160;
            __asm { PRFM            #0, [X8] }

            _X8 = v39 + 5008;
            v66 = *(v161 + v33 + 1808);
            __asm { PRFM            #0, [X8] }

            LODWORD(_X8) = *&__src[v33 + 1656];
            *buf = 68158978;
            *&buf[4] = v66;
            *&buf[8] = 2096;
            *&buf[10] = v161 + v33 + 157;
            *&buf[18] = 1024;
            *&buf[20] = v66;
            *&buf[24] = 1040;
            *&buf[26] = _X8;
            *&buf[30] = 2096;
            v188[0].__locale_ = &__src[v33 + 5];
            LOWORD(v188[1].__locale_) = 1024;
            *(&v188[1].__locale_ + 2) = _X8;
            _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "\tAdvertising Data:%.*P(%d)-->%.*P(%d)", buf, 0x2Eu);
            v52 = qword_100BCE9B0;
          }

          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            v68 = *(v161 + v33 + 3460);
            v69 = *&__src[v33 + 3308];
            *buf = 68158978;
            *&buf[4] = v68;
            *&buf[8] = 2096;
            *&buf[10] = v161 + v33 + 1810;
            *&buf[18] = 1024;
            *&buf[20] = v68;
            *&buf[24] = 1040;
            *&buf[26] = v69;
            *&buf[30] = 2096;
            v188[0].__locale_ = &__src[v33 + 1658];
            LOWORD(v188[1].__locale_) = 1024;
            *(&v188[1].__locale_ + 2) = v69;
            _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "\tScan Response:%.*P(%d)-->%.*P(%d)", buf, 0x2Eu);
            v52 = qword_100BCE9B0;
          }

          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            v70 = *(v161 + v33 + 3462);
            v71 = *(v161 + v33 + 3469);
            *buf = 68158466;
            *&buf[4] = 6;
            *&buf[8] = 2096;
            *&buf[10] = v161 + v33 + 3463;
            *&buf[18] = 1024;
            *&buf[20] = v70;
            *&buf[24] = 1024;
            *&buf[26] = v71;
            _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "\tadvertising address:%.6P type:%d override:%d", buf, 0x1Eu);
          }
        }

        v53 = (v39[3311] << 40) | (v39[3312] << 32) | (v39[3313] << 24) | (v39[3314] << 16) | (v39[3315] << 8) | v39[3316];
        v54 = v53 | (v39[3310] << 48);
        if (v53)
        {
          v55 = v54 == ((v40[3463] << 40) | (v40[3464] << 32) | (v40[3465] << 24) | (v40[3466] << 16) | (v40[3467] << 8) | v40[3468] | (v40[3462] << 48));
        }

        else
        {
          v55 = 1;
        }

        if (!v55)
        {
          sub_100729D74(v161, v54, v34);
        }

LABEL_87:
        v35 |= v41;
        ++v34;
        v33 += 3352;
        if (v36 == v33)
        {
          goto LABEL_90;
        }
      }
    }

    v35 = 0;
LABEL_90:
    v72 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
    {
      v150 = *(v161 + 128);
      if (v150 > 3)
      {
        v151 = "UNKNOWN";
      }

      else
      {
        v151 = off_100B0ADD8[v150];
      }

      *buf = 136446722;
      *&buf[4] = v151;
      *&buf[12] = 1024;
      *&buf[14] = v35 & 1;
      *&buf[18] = 1024;
      *&buf[20] = v156 & 1;
      _os_log_debug_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "fAdvertisementState:%{public}s dataChanged:%d validSession:%d", buf, 0x18u);
    }

    v74 = *(v161 + 128);
    if (((v74 == 0) & v156) == 1)
    {
      if (v152)
      {
        v75 = 0;
        do
        {
          v162 = &__src[3352 * v75];
          v160 = *(v162 + 1);
          v201 = 0;
          v199 = 0u;
          v200 = 0u;
          v197 = 0u;
          v198 = 0u;
          v195 = 0u;
          v196 = 0u;
          v193 = 0u;
          v194 = 0u;
          v191 = 0u;
          v192 = 0u;
          *v189 = 0u;
          v190 = 0u;
          memset(v188, 0, sizeof(v188));
          memset(buf, 0, sizeof(buf));
          sub_100007AD0(buf);
          sub_100007774(&buf[16], "[", 1);
          v76 = std::ostream::operator<<();
          v77 = sub_100007774(v76, "] ", 2);
          if (v160 >= 0x4000)
          {
            v78 = "Not ";
          }

          else
          {
            v78 = "";
          }

          v79 = sub_100007774(v77, v78, 4 * ((v160 & 0xC000) != 0));
          v80 = sub_100007774(v79, "Starting ", 9);
          if (v75)
          {
            v81 = "Non ";
          }

          else
          {
            v81 = "";
          }

          v82 = sub_100007774(v80, v81, 4 * (v75 != 0));
          v83 = sub_100007774(v82, "Connectable ", 12);
          if (v75 == 4)
          {
            v84 = "Extended";
          }

          else
          {
            v84 = "";
          }

          v85 = sub_100007774(v83, v84, 8 * (v75 == 4));
          sub_100007774(v85, " Advertising instance ", 22);
          if (!v75)
          {
            v86 = HIBYTE(v203);
            if (v203 < 0)
            {
              v86 = *(&v202 + 1);
            }

            if (v86)
            {
              v87 = sub_100007774(&buf[16], "name ", 6);
              if (v203 >= 0)
              {
                v88 = &v202;
              }

              else
              {
                LODWORD(v88) = v202;
              }

              if (v203 >= 0)
              {
                v89 = HIBYTE(v203);
              }

              else
              {
                v89 = DWORD2(v202);
              }

              v90 = sub_100007774(v87, v88, v89);
              sub_100007774(v90, ", ", 3);
            }
          }

          v184 = v75;
          __p = &v184;
          v91 = sub_100096318(&v178, &v184, &unk_1008A9BD0, &__p);
          if (v91[6] != v91[5])
          {
            sub_100007774(&buf[16], "UUID(s) [ ", 10);
            for (i = 0; ; ++i)
            {
              v184 = v75;
              __p = &v184;
              v93 = sub_100096318(&v178, &v184, &unk_1008A9BD0, &__p);
              if (0xCCCCCCCCCCCCCCCDLL * ((v93[6] - v93[5]) >> 2) <= i)
              {
                break;
              }

              v164 = v75;
              *v185 = &v164;
              v94 = sub_100096318(&v178, &v164, &unk_1008A9BD0, v185);
              sub_10003B85C(v94[5] + 20 * i, &__p);
              if ((v167 & 0x80u) == 0)
              {
                p_p = &__p;
              }

              else
              {
                LODWORD(p_p) = __p;
              }

              if ((v167 & 0x80u) == 0)
              {
                v96 = v167;
              }

              else
              {
                v96 = v166;
              }

              v97 = sub_100007774(&buf[16], p_p, v96);
              sub_100007774(v97, " ", 1);
              if (v167 < 0)
              {
                operator delete(__p);
              }
            }

            sub_100007774(&buf[16], "], ", 3);
          }

          v184 = v75;
          __p = &v184;
          v98 = sub_100095D64(&v168, &v184, &unk_1008A9BD0, &__p);
          v99 = v98 + 5;
          v100 = 255;
          while (!*v99)
          {
            ++v99;
            v100 -= 64;
            if (v100 <= 0x3F)
            {
              if ((v98[8] & 0x7FFFFFFFFFFFFFFFLL) == 0)
              {
                goto LABEL_137;
              }

              break;
            }
          }

          sub_100007774(&buf[16], "Apple Types [ ", 14);
          for (j = 0; ; ++j)
          {
            v184 = v75;
            __p = &v184;
            sub_100095D64(&v168, &v184, &unk_1008A9BD0, &__p);
            if (j == 255)
            {
              break;
            }

            v184 = v75;
            __p = &v184;
            if ((sub_100095D64(&v168, &v184, &unk_1008A9BD0, &__p)[(j >> 6) + 5] >> j))
            {
              v102 = std::ostream::operator<<();
              sub_100007774(v102, " ", 1);
            }
          }

          sub_100007774(&buf[16], "], ", 3);
LABEL_137:
          v184 = v75;
          __p = &v184;
          v103 = sub_100096318(&v176, &v184, &unk_1008A9BD0, &__p);
          if (v103[6] != v103[5])
          {
            sub_100007774(&buf[16], "hashed UUID(s) [ ", 17);
            for (k = 0; ; ++k)
            {
              v184 = v75;
              __p = &v184;
              v105 = sub_100096318(&v176, &v184, &unk_1008A9BD0, &__p);
              if (0xCCCCCCCCCCCCCCCDLL * ((v105[6] - v105[5]) >> 2) <= k)
              {
                break;
              }

              v164 = v75;
              *v185 = &v164;
              v106 = sub_100096318(&v176, &v164, &unk_1008A9BD0, v185);
              sub_10003B85C(v106[5] + 20 * k, &__p);
              if ((v167 & 0x80u) == 0)
              {
                v107 = &__p;
              }

              else
              {
                LODWORD(v107) = __p;
              }

              if ((v167 & 0x80u) == 0)
              {
                v108 = v167;
              }

              else
              {
                v108 = v166;
              }

              v109 = sub_100007774(&buf[16], v107, v108);
              sub_100007774(v109, " ", 1);
              if (v167 < 0)
              {
                operator delete(__p);
              }
            }

            sub_100007774(&buf[16], "], ", 3);
          }

          v184 = v75;
          __p = &v184;
          v110 = sub_100096318(&v174, &v184, &unk_1008A9BD0, &__p);
          if (v110[6] != v110[5])
          {
            sub_100007774(&buf[16], "solicited UUID(s) [ ", 20);
            for (m = 0; ; ++m)
            {
              v184 = v75;
              __p = &v184;
              v112 = sub_100096318(&v174, &v184, &unk_1008A9BD0, &__p);
              if (0xCCCCCCCCCCCCCCCDLL * ((v112[6] - v112[5]) >> 2) <= m)
              {
                break;
              }

              v164 = v75;
              *v185 = &v164;
              v113 = sub_100096318(&v174, &v164, &unk_1008A9BD0, v185);
              sub_10003B85C(v113[5] + 20 * m, &__p);
              if ((v167 & 0x80u) == 0)
              {
                v114 = &__p;
              }

              else
              {
                LODWORD(v114) = __p;
              }

              if ((v167 & 0x80u) == 0)
              {
                v115 = v167;
              }

              else
              {
                v115 = v166;
              }

              v116 = sub_100007774(&buf[16], v114, v115);
              sub_100007774(v116, " ", 1);
              if (v167 < 0)
              {
                operator delete(__p);
              }
            }

            sub_100007774(&buf[16], "], ", 3);
          }

          v184 = v75;
          __p = &v184;
          if (sub_100095E9C(&v170, &v184, &unk_1008A9BD0, &__p)[7])
          {
            sub_100007774(&buf[16], "service Data [ ", 15);
            v184 = v75;
            __p = &v184;
            v117 = sub_100095E9C(&v170, &v184, &unk_1008A9BD0, &__p)[5];
            while (1)
            {
              v184 = v75;
              __p = &v184;
              if (v117 == sub_100095E9C(&v170, &v184, &unk_1008A9BD0, &__p) + 6)
              {
                break;
              }

              sub_10003B85C((v117 + 4), &__p);
              if ((v167 & 0x80u) == 0)
              {
                v118 = &__p;
              }

              else
              {
                LODWORD(v118) = __p;
              }

              if ((v167 & 0x80u) == 0)
              {
                v119 = v167;
              }

              else
              {
                v119 = v166;
              }

              v120 = sub_100007774(&buf[16], v118, v119);
              v121 = sub_100007774(v120, "(", 1);
              sub_10000C250((v117 + 7), v185);
              if ((v186 & 0x80u) == 0)
              {
                v122 = v185;
              }

              else
              {
                LODWORD(v122) = *v185;
              }

              if ((v186 & 0x80u) == 0)
              {
                v123 = v186;
              }

              else
              {
                v123 = *&v185[8];
              }

              v124 = sub_100007774(v121, v122, v123);
              sub_100007774(v124, ") ", 2);
              if (v186 < 0)
              {
                operator delete(*v185);
              }

              if (v167 < 0)
              {
                operator delete(__p);
              }

              v125 = v117[1];
              v126 = v117;
              if (v125)
              {
                do
                {
                  v117 = v125;
                  v125 = *v125;
                }

                while (v125);
              }

              else
              {
                do
                {
                  v117 = v126[2];
                  _ZF = *v117 == v126;
                  v126 = v117;
                }

                while (!_ZF);
              }
            }

            sub_100007774(&buf[16], "], ", 3);
          }

          if (v75 == 3)
          {
            sub_100007774(&buf[16], "ObjectDiscovery Data, ", 22);
          }

          if ((v160 & 0xC000) == 0)
          {
            sub_100007774(&buf[16], "interval=", 9);
            v127 = std::ostream::operator<<();
            v128 = sub_100007774(v127, "ms", 2);
            if (v162[3322])
            {
              sub_100007774(&buf[16], "primaryPHY ", 11);
              v128 = std::ostream::operator<<();
            }

            if (v162[3323])
            {
              sub_100007774(&buf[16], "secondaryPHY ", 13);
              v128 = std::ostream::operator<<();
            }

            if (v162[3324])
            {
              sub_100007774(&buf[16], "primaryPhyOptions ", 18);
              v128 = std::ostream::operator<<();
            }

            if (v162[3325])
            {
              sub_100007774(&buf[16], "secondaryPhyOptions ", 20);
              v128 = std::ostream::operator<<();
            }

            v130 = sub_10000C7D0(v128, v129);
            if (sub_100095E40(v130, v131))
            {
              if (_os_feature_enabled_impl())
              {
                if (v162[3326])
                {
                  sub_100007774(&buf[16], " useDecisionBasedAdvPayload ", 28);
                  std::ostream::operator<<();
                  sub_100007774(&buf[16], " DBAFDecisionTypeFlags ", 23);
                  std::ostream::operator<<();
                  sub_100007774(&buf[16], " DBAFDecisionDataLength ", 24);
                  std::ostream::operator<<();
                  if (v162[3328])
                  {
                    v132 = sub_100007774(&buf[16], " DBAFDecisionData ", 18);
                    v133 = *v132;
                    *(v132 + *(*v132 - 24) + 8) = *(v132 + *(*v132 - 24) + 8) & 0xFFFFFFB5 | 8;
                    *(v132 + *(v133 - 24) + 8) |= 0x4000u;
                    LOBYTE(__p) = 48;
                    sub_10004DE98(v132, &__p);
                    if (v162[3328])
                    {
                      v134 = 0;
                      do
                      {
                        *(&v188[1].__locale_ + *(*&buf[16] - 24)) = 2;
                        LOBYTE(__p) = *(*(v162 + 417) + v134);
                        v135 = sub_100007774(&buf[16], &__p, 1);
                        sub_100007774(v135, " ", 1);
                        ++v134;
                      }

                      while (v134 < v162[3328]);
                    }
                  }
                }
              }
            }
          }

          v136 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
          {
            std::stringbuf::str();
            v137 = (v167 & 0x80u) == 0 ? &__p : __p;
            *v185 = 136446210;
            *&v185[4] = v137;
            _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_INFO, "%{public}s", v185, 0xCu);
            if (v167 < 0)
            {
              operator delete(__p);
            }
          }

          *buf = v157;
          *&buf[*(v157 - 24)] = v155;
          *&buf[16] = v154;
          if (SHIBYTE(v190) < 0)
          {
            operator delete(v189[1]);
          }

          std::locale::~locale(v188);
          std::iostream::~basic_iostream();
          std::ios::~ios();
          ++v75;
        }

        while (v75 != v152);
      }

      sub_1000888D8(v161, v73);
      buf[0] = 0;
      sub_1000216B4(buf);
      v138 = sub_10009561C(__src, v152, 0, sub_100092B14, 0);
      if (v138 == 118)
      {
        sub_10008D888(1);
      }

      sub_100022214(buf);
      if (v138)
      {
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          sub_10086AD74();
        }

        if (v138 == 4073)
        {
          *(v158 + 648) = 1;
        }

        else if (v138 == 118)
        {
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
          {
            sub_10086ADDC();
          }

          v147 = *(v161 + 56);
          v163[0] = _NSConcreteStackBlock;
          v163[1] = 3221225472;
          v163[2] = sub_10072CF84;
          v163[3] = &unk_100ADF8F8;
          v163[4] = v161;
          sub_10008E008(v147, 200, v163);
        }
      }

      else
      {
        sub_10008E164(v161, 1u);
        if (v152)
        {
          memcpy((v161 + 152), __src, 3352 * v152);
        }
      }

      goto LABEL_253;
    }

    if (v74 != 2 || ((v35 | v153) & 1) == 0)
    {
      sub_1000C10E8(v161, v73);
      v142 = qword_100BCE9A8;
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
      {
        if (v35)
        {
          v143 = 89;
        }

        else
        {
          v143 = 78;
        }

        if (v156)
        {
          v144 = 89;
        }

        else
        {
          v144 = 78;
        }

        v145 = *(v161 + 128);
        if (v145 > 3)
        {
          v146 = "UNKNOWN";
        }

        else
        {
          v146 = off_100B0ADD8[v145];
        }

        *buf = 67109890;
        *&buf[4] = v143;
        *&buf[8] = 1024;
        *&buf[10] = v144;
        *&buf[14] = 1024;
        *&buf[16] = v145;
        *&buf[20] = 2080;
        *&buf[22] = v146;
        _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_INFO, "updateAdvertisement not doing anything dataChanged:%c validSessions:%c state:%d(%s)", buf, 0x1Eu);
      }

      goto LABEL_254;
    }

    v139 = qword_100BCE9A8;
    v140 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO);
    if (v35 & v156)
    {
      if (v140)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_INFO, "Restarting advertisement as data has changed!", buf, 2u);
      }
    }

    else
    {
      if (v140)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_INFO, "Stopping advertisement as there are no more advertising sessions", buf, 2u);
      }

      if (v152)
      {
        bzero((v161 + 152), 3352 * v152);
      }
    }

    sub_1000888D8(v161, v141);
    buf[0] = 0;
    sub_1000216B4(buf);
    v148 = sub_10008D888(0);
    sub_100022214(buf);
    if (v148 == 4073)
    {
      *(v158 + 648) = 1;
    }

    else if (!v148)
    {
      sub_10008E164(v161, 3u);
LABEL_253:
      sub_10002249C(buf);
LABEL_254:
      sub_10000CEDC(&v168, v169[0]);
      sub_10008E104(&v170, v171[0]);
      sub_10008E0A0(&v172, v173[0]);
      sub_10008E0A0(&v174, v175[0]);
      sub_10008E0A0(&v176, v177[0]);
      sub_10008E0A0(&v178, v179[0]);
      if (SHIBYTE(v203) < 0)
      {
        operator delete(v202);
      }

LABEL_256:
      sub_10008667C(&v180, v181[0]);
      return sub_1000088CC(v183);
    }

    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
    {
      sub_10086AD0C();
    }

    goto LABEL_253;
  }

  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
  {
    sub_10086AE54();
  }

  *(v158 + 649) = 1;
  v15 = *(v161 + 56);
  v182[0] = _NSConcreteStackBlock;
  v182[1] = 3221225472;
  v182[2] = sub_1000C0730;
  v182[3] = &unk_100ADF8F8;
  v182[4] = v161;
  sub_10008E008(v15, 200, v182);
  return sub_1000088CC(v183);
}

void sub_100088770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000CEDC(&a40, a41);
  sub_10008E104(&a43, a44);
  sub_10008E0A0(&a46, a47);
  sub_10008E0A0(&a49, a50);
  sub_10008E0A0(&a52, a53);
  sub_10008E0A0(&a55, a56);
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  sub_10008667C(&a58, a59);
  sub_1000088CC(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_1000888D8(uint64_t a1, uint64_t a2)
{
  if (qword_100BC7AC8 != -1)
  {
    sub_10086BA88();
  }

  v3 = sub_10000C7D0(a1, a2);
  result = (*(*v3 + 4080))(v3);
  if (result)
  {
    if (!*(a1 + 17104))
    {
      sub_100088DD4(0, 0, byte_100BC7AC2);
    }
  }

  return result;
}

void sub_100088A40(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v5 = a3;
  *a1 = &off_100B0C418;
  *(a1 + 8) = 0;
  v8 = (a1 + 8);
  v9 = &off_100B51000;
  if (qword_100B512C8 != -1)
  {
    sub_100872D28();
  }

  v10 = sub_10008D004(off_100B512C0, v5);
  if (a4)
  {
    v11 = [NSString stringWithFormat:@"%@.ForceWake", v10];

    AssertionID = 0;
    *v31 = 1;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"AssertName", v11);
    v13 = IOPMAssertionDeclareSystemActivityWithProperties();
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v24 = v11;
      LOWORD(v25) = 1024;
      *(&v25 + 2) = v13;
      WORD3(v25) = 2080;
      *(&v25 + 1) = "kIOPMSystemSleepNotReverted";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "IOPMAssertionDeclareSystemActivityWithProperties %@ returned %d systemState=%s ", buf, 0x1Cu);
    }

    CFRelease(Mutable);
    v9 = &off_100B51000;
  }

  else
  {
    AssertionID = 0;
    v13 = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, v10, &AssertionID);
    v11 = v10;
  }

  objc_storeStrong(v8, v11);
  *(a1 + 16) = v5;
  *(a1 + 20) = a2;
  *(a1 + 24) = a4;
  *(a1 + 28) = AssertionID;
  if (v13)
  {
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      v20 = v11;
      v21 = [v11 UTF8String];
      *buf = 136315394;
      v24 = v21;
      LOWORD(v25) = 1024;
      *(&v25 + 2) = v13;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to take assertionId for name: %s, return value was: %d", buf, 0x12u);
      v15 = qword_100BCE8D8;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = v11;
      sub_100872D3C([v11 UTF8String], v31, v13, v15);
    }
  }

  v17 = *(a1 + 20);
  Current = CFAbsoluteTimeGetCurrent();
  v19 = *(a1 + 28);
  if (v9[89] != -1)
  {
    sub_100872D94();
  }

  sub_10008DC2C(off_100B512C0);
  if (v9[89] != -1)
  {
    sub_100872D94();
  }

  *buf = v17;
  LODWORD(v24) = 0;
  HIDWORD(v24) = v5;
  LODWORD(v25) = 0;
  *(&v25 + 4) = Current;
  HIDWORD(v25) = v13;
  v26 = a4;
  v27 = 0;
  v28 = 0;
  v29 = v19;
  v30 = 0;
  sub_10008D9FC(off_100B512C0, buf);
}

BOOL sub_100088E58(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (*a2 != *a3)
  {
    return 1;
  }

  if (*(a2 + 1) != *(a3 + 1))
  {
    return 1;
  }

  if (a2[4] != a3[4])
  {
    return 1;
  }

  if (*(a2 + 828) != *(a3 + 828))
  {
    return 1;
  }

  if (*(a2 + 1654) != *(a3 + 1654))
  {
    return 1;
  }

  if (a2[3317] != a3[3317])
  {
    return 1;
  }

  if (a2[3318] != a3[3318])
  {
    return 1;
  }

  if (a2[3344] != a3[3344])
  {
    return 1;
  }

  v5 = *(a1 + 16992);
  if (memcmp(a2 + 5, a3 + 5, v5) || memcmp(a2 + 1658, a3 + 1658, v5))
  {
    return 1;
  }

  return *(a2 + 3310) != *(a3 + 3310) || *(a2 + 3313) != *(a3 + 3313);
}

void sub_100088F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = __chkstk_darwin(a1);
  v446 = v12;
  v447 = v11;
  v445 = v13;
  v15 = v14;
  v451 = v16;
  v18 = v17;
  v436 = v19;
  v20 = v10;
  v468 = 0uLL;
  v469 = 0;
  v466 = 0uLL;
  v467 = 0;
  v464 = 0uLL;
  v465 = 0;
  v461 = 0;
  v462 = 0;
  v463 = 0;
  v529 = 0x4000;
  v528 = 0x4000400040004000;
  bzero(v17, 0xD18uLL);
  v442 = v15;
  if (v15[1].n128_i8[7] < 0)
  {
    *v15->n128_u64[0] = 0;
    v15->n128_u64[1] = 0;
  }

  else
  {
    v15->n128_u8[0] = 0;
    v15[1].n128_u8[7] = 0;
  }

  if (v451)
  {
    v21 = 0;
    v22 = vdupq_n_s64(v451 - 1);
    v23 = v18 + 15080;
    v24 = xmmword_1008A4930;
    v25 = xmmword_1008A4940;
    v26 = xmmword_1008A4950;
    v27 = xmmword_1008A4960;
    v28 = xmmword_1008A4970;
    v29 = xmmword_1008A4980;
    v30 = xmmword_1008A4990;
    v31 = v18 + 3348;
    v32 = xmmword_1008A49A0;
    v33 = vdupq_n_s64(0x10uLL);
    do
    {
      v34 = vmovn_s64(vcgeq_u64(v22, v32));
      if (vuzp1_s8(vuzp1_s16(v34, *v22.i8), *v22.i8).u8[0])
      {
        LOBYTE(v18[v21 + 1672]) = 7;
      }

      if (vuzp1_s8(vuzp1_s16(v34, *&v22), *&v22).i8[1])
      {
        LOBYTE(v31[v21]) = 7;
      }

      if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v30))), *&v22).i8[2])
      {
        LOBYTE(v31[v21 + 1676]) = 7;
        LOBYTE(v18[v21 + 6700]) = 7;
      }

      v35 = vmovn_s64(vcgeq_u64(v22, v29));
      if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i32[1])
      {
        LOBYTE(v18[v21 + 8376]) = 7;
      }

      if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i8[5])
      {
        LOBYTE(v18[v21 + 10052]) = 7;
      }

      if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v28)))).i8[6])
      {
        LOBYTE(v18[v21 + 11728]) = 7;
        LOBYTE(v18[v21 + 13404]) = 7;
      }

      v36 = vmovn_s64(vcgeq_u64(v22, v27));
      if (vuzp1_s8(vuzp1_s16(v36, *v22.i8), *v22.i8).u8[0])
      {
        LOBYTE(v23[v21]) = 7;
      }

      if (vuzp1_s8(vuzp1_s16(v36, *&v22), *&v22).i8[1])
      {
        LOBYTE(v23[v21 + 1676]) = 7;
      }

      if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v26))), *&v22).i8[2])
      {
        LOBYTE(v18[v21 + 18432]) = 7;
        LOBYTE(v18[v21 + 20108]) = 7;
      }

      v37 = vmovn_s64(vcgeq_u64(v22, v25));
      if (vuzp1_s8(*&v22, vuzp1_s16(v37, *&v22)).i32[1])
      {
        LOBYTE(v18[v21 + 21784]) = 7;
      }

      if (vuzp1_s8(*&v22, vuzp1_s16(v37, *&v22)).i8[5])
      {
        LOBYTE(v18[v21 + 23460]) = 7;
      }

      if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v24)))).i8[6])
      {
        LOBYTE(v18[v21 + 25136]) = 7;
        LOBYTE(v18[v21 + 26812]) = 7;
      }

      v29 = vaddq_s64(v29, v33);
      v30 = vaddq_s64(v30, v33);
      v32 = vaddq_s64(v32, v33);
      v28 = vaddq_s64(v28, v33);
      v27 = vaddq_s64(v27, v33);
      v26 = vaddq_s64(v26, v33);
      v25 = vaddq_s64(v25, v33);
      v21 += 26816;
      v24 = vaddq_s64(v24, v33);
    }

    while (26816 * ((v451 + 15) >> 4) != v21);
  }

  v444 = v20 + 0x4000;
  v38 = *v436;
  v448 = v18;
  v449 = v436 + 1;
  if (*v436 == v436 + 1)
  {
    v438 = 0;
    v39 = 0;
    v441 = 28;
    v439 = 28;
    goto LABEL_162;
  }

  v435 = v20;
  v39 = 0;
  v438 = 0;
  v437 = 0;
  v443 = 0;
  v40 = v451;
  do
  {
    if (qword_100B512F8 != -1)
    {
      sub_10086ACE4();
    }

    v41 = sub_10006E254(off_100B512F0, v38[4]);
    v42 = *(v38[6] + 264);
    v43 = &v18[1676 * v42];
    *(v43 + 3344) = 7;
    if (_os_feature_enabled_impl())
    {
      v44 = *(v38[6] + 488);
      v45 = *(v38[6] + 12);
      if ([v44 count] && objc_msgSend(v44, "count") <= v451)
      {
        if (v45)
        {
          v159 = 0;
        }

        else
        {
          v159 = 3;
        }

        v450 = v159;
        v160 = qword_100BCE9A8;
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
        {
          v161 = __p;
          sub_100018384(v38[4], __p);
          if (v513 < 0)
          {
            v161 = __p[0];
          }

          v162 = *(v38[6] + 488);
          v163 = *(v38[6] + 222);
          *v514 = 136446722;
          *&v514[4] = v161;
          *&v514[12] = 2112;
          *v515 = v162;
          *&v515[8] = 1024;
          *&v515[10] = v163;
          _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "SWUP: Session %{public}s has payload data array len %@ with adv interval %u", v514, 0x1Cu);
          if (SHIBYTE(v513) < 0)
          {
            operator delete(__p[0]);
          }
        }

        bzero(v18, 0xD18uLL);
        if (v451)
        {
          v164 = v18;
          do
          {
            v164[1] = 0x4000;
            *(v164 + 3344) = 7;
            v164 += 1676;
            --v40;
          }

          while (v40);
        }

        v165 = 0;
        v166 = v18 + 3311;
        while ([v44 count] > v165)
        {
          v167 = [v44 objectAtIndexedSubscript:v165];
          v168 = v167;
          memcpy(v18 + 5, [v167 bytes], objc_msgSend(v167, "length"));
          v169 = [v167 length];
          v18[828] = v169;
          v170 = v18;
          v171 = *(v444 + 706);
          if (!*(v444 + 706))
          {
            v171 = *(v38[6] + 222);
          }

          *(v170 + 1) = v171;
          *v170 = 0;
          v172 = v170;
          v170[1] = v450;
          v173 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
          {
            _X8 = v172 + 13366;
            __asm { PRFM            #0, [X8] }

            v178 = v172[3310];
            v179 = v172[3317];
            v180 = v172[3344];
            *v514 = 67111682;
            *&v514[4] = v165;
            *&v514[8] = 1040;
            *&v514[10] = v169;
            *v515 = 2096;
            *&v515[2] = v166 - 3306;
            *&v515[10] = 1024;
            *&v515[12] = v169;
            *&v515[16] = 1024;
            *&v516[4] = 1040;
            *v517 = 6;
            *&v517[4] = 2096;
            v518 = v166;
            v519 = 1024;
            v520 = v178;
            v521 = 1024;
            *v516 = v171;
            v522 = v179;
            v523 = 1024;
            v524 = v450;
            v525 = 1024;
            v526 = v180;
            _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_DEFAULT, "SWUP: instance=%d, AdvData=%.*P(%d) interval=%x address:%.6P type:%d overrideAddress:%d ADVType:%d advChannelMask %d", v514, 0x4Cu);
          }

          ++v165;
          v18 = v172 + 3352;
          v166 += 3352;
        }

        goto LABEL_613;
      }
    }

    if (qword_100B512F8 != -1)
    {
      sub_10086ACE4();
    }

    v46 = sub_100026F14(off_100B512F0, v38[4]);
    if (!v46)
    {
      goto LABEL_46;
    }

    LODWORD(v497) = 0;
    buf[0] = 0;
    if (qword_100B512F8 != -1)
    {
      sub_10086ACE4();
    }

    v46 = sub_100063344(off_100B512F0, v38[4], &v497, buf);
    if (v497 == 1)
    {
LABEL_46:
      if (v41 != 1 && v41 != 32)
      {
        if (v41 == 16)
        {
          sub_1000965B8(&v468, (v38 + 5));
          v48 = v38[6];
          if (v42)
          {
            v49 = *(&v528 + v42);
            if (v49 >= *(v48 + 222))
            {
              LOWORD(v49) = *(v48 + 222);
            }
          }

          else
          {
            LOWORD(v49) = 48;
          }

          *(&v528 + v42) = v49;
          v46 = *(v48 + 256);
          if (!v46)
          {
            goto LABEL_85;
          }

          v61 = v451 <= 1 ? 0 : v42;
          if ((v61 & 0xFFFFFFFB) == 0)
          {
            goto LABEL_85;
          }

          goto LABEL_84;
        }

        if (*(v38[6] + 264) != 2)
        {
LABEL_85:
          v63 = v38[6];
          if (*(v63 + 264) == 4)
          {
            v64 = *(v63 + 339);
            if (*(v63 + 339))
            {
              v65 = qword_100BCE9A8;
              v46 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
              if (v46)
              {
                *v514 = 67109376;
                *&v514[4] = v64;
                *&v514[8] = 1024;
                *&v514[10] = 4;
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Overriding primaryPHY:%d instance:%d", v514, 0xEu);
                v63 = v38[6];
                LOBYTE(v64) = *(v63 + 339);
                v66 = *(v63 + 264);
              }

              else
              {
                v66 = 4;
              }

              LOBYTE(v448[1676 * v66 + 1661]) = v64;
            }

            else
            {
              v66 = 4;
            }

            v67 = *(v63 + 340);
            if (*(v63 + 340))
            {
              v68 = qword_100BCE9A8;
              v46 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
              if (v46)
              {
                *v514 = 67109376;
                *&v514[4] = v67;
                *&v514[8] = 1024;
                *&v514[10] = v66;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Overriding secondaryPHY:%d instance:%d", v514, 0xEu);
                v63 = v38[6];
                LOBYTE(v67) = *(v63 + 340);
              }

              HIBYTE(v448[1676 * *(v63 + 264) + 1661]) = v67;
            }

            v69 = sub_10000C7D0(v46, v47);
            v18 = v448;
            v46 = sub_100413638(v69);
            if ((v46 & 1) != 0 || (v70 = sub_10000C7D0(v46, v47), v46 = (*(*v70 + 3080))(v70), v46))
            {
              v71 = v38[6];
              v72 = *(v71 + 343);
              if (*(v71 + 343))
              {
                v73 = qword_100BCE9A8;
                v46 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
                if (v46)
                {
                  v74 = *(v71 + 264);
                  *v514 = 67109376;
                  *&v514[4] = v72;
                  *&v514[8] = 1024;
                  *&v514[10] = v74;
                  _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Overriding primaryPhyOptions:%d instance:%d", v514, 0xEu);
                  v71 = v38[6];
                  LOBYTE(v72) = *(v71 + 343);
                }

                LOBYTE(v448[1676 * *(v71 + 264) + 1662]) = v72;
              }

              v75 = *(v71 + 344);
              if (*(v71 + 344))
              {
                v76 = qword_100BCE9A8;
                v46 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
                if (v46)
                {
                  v77 = *(v71 + 264);
                  *v514 = 67109376;
                  *&v514[4] = v75;
                  *&v514[8] = 1024;
                  *&v514[10] = v77;
                  _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Overriding secondaryPhyOptions:%d instance:%d", v514, 0xEu);
                  v71 = v38[6];
                  LOBYTE(v75) = *(v71 + 344);
                }

                HIBYTE(v448[1676 * *(v71 + 264) + 1662]) = v75;
              }
            }
          }

          v78 = sub_10000C7D0(v46, v47);
          if (sub_100095E40(v78, v79))
          {
            if (_os_feature_enabled_impl())
            {
              v80 = v38[6];
              if (*(v80 + 345))
              {
                v81 = &v18[1676 * *(v80 + 264)];
                *(v81 + 3326) = *(v80 + 345);
                *(v81 + 3327) = *(v80 + 346);
                v82 = *(v80 + 352);
                v83 = v82;
                *&v18[1676 * *(v38[6] + 264) + 1668] = [v82 bytes];

                v84 = qword_100BCE9A8;
                if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
                {
                  v85 = &v18[1676 * *(v38[6] + 264)];
                  v86 = *(v85 + 3326);
                  v87 = *(v85 + 3327);
                  v88 = *(v85 + 3328);
                  v89 = *(v85 + 417);
                  *v514 = 67109890;
                  *&v514[8] = 1024;
                  *&v514[10] = v87;
                  *v515 = 1024;
                  *&v514[4] = v86;
                  *&v515[2] = v88;
                  *&v515[6] = 2080;
                  *&v515[8] = v89;
                  _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Using DBAF - getDecisionAdvDataEnable: %d, getDBAFDecisionTypeFlags: %d, getDBAFDecisionDataLength: %d, getDBAFDecisionData: %s", v514, 0x1Eu);
                }
              }
            }
          }

          v90 = v38[6];
          if (*(v90 + 12) == 1 && *(v90 + 264) == 4)
          {
            v91 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
            {
              sub_100018384(v38[4], v514);
              v92 = v514;
              if (v515[9] < 0)
              {
                v92 = *v514;
              }

              LODWORD(__p[0]) = 136446210;
              *(__p + 4) = v92;
              _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Forcing extended connectable instead of legacy connectable due to session %{public}s", __p, 0xCu);
              if ((v515[9] & 0x80000000) != 0)
              {
                operator delete(*v514);
              }

              v90 = v38[6];
            }

            v438 = 1;
          }

          if (*(v90 + 307) == 1)
          {
            v93 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
            {
              sub_100018384(v38[4], v514);
              v94 = v514;
              if (v515[9] < 0)
              {
                v94 = *v514;
              }

              LODWORD(__p[0]) = 136446210;
              *(__p + 4) = v94;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "Session %{public}s wants to stop on address change", __p, 0xCu);
              if ((v515[9] & 0x80000000) != 0)
              {
                operator delete(*v514);
              }

              v90 = v38[6];
            }
          }

          if (*(v90 + 464) == 1)
          {
            v95 = *(v90 + 264);
            if (v95)
            {
              v443 |= v95 == 1;
            }

            else
            {
              v437 = 1;
            }
          }

          if (v41 >= 8)
          {
            v96 = sub_10000C5E0(v90 + 152);
            if (v96 || (v96 = sub_10000C5E0(v38[6] + 136)) != 0)
            {
              v98 = sub_10000C7D0(v96, v97);
              if ((*(*v98 + 3032))(v98))
              {
                if (*(v43 + 3321))
                {
                  v99 = 1;
                }

                else
                {
                  v99 = *(v38[6] + 409);
                }

                *(v43 + 3321) = v99 & 1;
              }

              sub_1000965B8(&v461, (v38 + 5));
              if (WORD1(v528) >= *(v38[6] + 222))
              {
                v100 = *(v38[6] + 222);
              }

              else
              {
                v100 = WORD1(v528);
              }

              WORD1(v528) = v100;
              v101 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                sub_100018384(v38[4], __p);
                v102 = v513 >= 0 ? __p : __p[0];
                v103 = sub_10000C5E0(v38[6] + 152);
                v104 = sub_10000C5E0(v38[6] + 136);
                v105 = *(v38[6] + 222);
                *v514 = 136447234;
                *&v514[4] = v102;
                *&v514[12] = 2048;
                *v515 = v103;
                *&v515[8] = 2048;
                *&v515[10] = v104;
                *v516 = 1024;
                *&v516[2] = v100;
                *v517 = 1024;
                *&v517[2] = v105;
                _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Session %{public}s has Non-Apple manufacturer data len %zu LE Bluetooth Device address len %zu updated minNonConnectableInterval %u (%u from session)", v514, 0x2Cu);
                if (SHIBYTE(v513) < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }

          v39 = 1;
          goto LABEL_149;
        }
      }

      v52 = v38[6];
      if (*(v52 + 264) == 2)
      {
        *__p = xmmword_1008A4F34;
        LODWORD(v513) = 0;
        sub_10000D03C(v514, __p);
        v53 = sub_100058794(v52 + 112, v514);
        v46 = v38[6];
        if (v46 + 120 == v53 && (*(v46 + 410) & 1) == 0)
        {
          sub_100725650(v46);
          v54 = qword_100BCEA40;
          v46 = os_log_type_enabled(qword_100BCEA40, OS_LOG_TYPE_DEFAULT);
          if (v46)
          {
            sub_100018384(v38[4], v514);
            v55 = v514;
            if (v515[9] < 0)
            {
              v55 = *v514;
            }

            LODWORD(__p[0]) = 136446210;
            *(__p + 4) = v55;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "session %{public}s advertises Exposure Notification data", __p, 0xCu);
            if ((v515[9] & 0x80000000) != 0)
            {
              operator delete(*v514);
            }
          }
        }
      }

      v56 = sub_10000C7D0(v46, v47);
      if ((*(*v56 + 3032))(v56))
      {
        if (*(v43 + 3321))
        {
          v57 = 1;
        }

        else
        {
          v57 = *(v38[6] + 409);
        }

        *(v43 + 3321) = v57 & 1;
      }

      sub_1000965B8(&v466, (v38 + 5));
      v58 = v38[6];
      v59 = *(v58 + 264);
      v60 = *(&v528 + v59);
      if (v60 >= *(v58 + 222))
      {
        LOWORD(v60) = *(v58 + 222);
      }

      *(&v528 + v59) = v60;
      v46 = *(v58 + 256);
      if (!v46)
      {
        goto LABEL_85;
      }

      v61 = v451 <= 1 ? 0 : v42;
      if ((v61 & 0xFFFFFFFB) == 0)
      {
        goto LABEL_85;
      }

LABEL_84:
      HIBYTE(v18[1676 * v61 + 1658]) = 1;
      v46 = sub_10009A66C(v46);
      v62 = &v18[1676 * v61];
      *(v62 + 3316) = BYTE6(v46);
      v62[1657] = WORD2(v46);
      *(v62 + 1655) = v46;
      goto LABEL_85;
    }

    v50 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
    {
      sub_100018384(v38[4], __p);
      v51 = __p;
      if (v513 < 0)
      {
        v51 = __p[0];
      }

      *v514 = 136446722;
      *&v514[4] = v51;
      *&v514[12] = 1024;
      *v515 = v497;
      *&v515[4] = 1024;
      *&v515[6] = buf[0];
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "session %{public}s cannot advertise in powerState:%d restrictedMode:%d", v514, 0x18u);
      if (SHIBYTE(v513) < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_149:
    v106 = v38[1];
    if (v106)
    {
      do
      {
        v107 = v106;
        v106 = *v106;
      }

      while (v106);
    }

    else
    {
      do
      {
        v107 = v38[2];
        _ZF = *v107 == v38;
        v38 = v107;
      }

      while (!_ZF);
    }

    v38 = v107;
  }

  while (v107 != v449);
  v109 = 28;
  if (v437)
  {
    v110 = 31;
  }

  else
  {
    v110 = 28;
  }

  v439 = v110;
  if (v443)
  {
    v109 = 31;
  }

  v441 = v109;
  v20 = v435;
LABEL_162:
  v111 = v20 + 16936;
  v112 = *(v20 + 16944);
  if (v112 != v20 + 16936)
  {
    v113 = 0;
    v114 = 0;
    while (1)
    {
      v115 = *v449;
      if (!*v449)
      {
        goto LABEL_172;
      }

      v116 = *(v112 + 16);
      v117 = v436 + 1;
      do
      {
        v118 = v115[4];
        _CF = v118 >= v116;
        v120 = v118 < v116;
        if (_CF)
        {
          v117 = v115;
        }

        v115 = v115[v120];
      }

      while (v115);
      if (v117 != v449 && (v121 = v117[4], v116 >= v121))
      {
        v123 = v117[6];
        if (*(v123 + 264) != 2)
        {
          __p[1] = 0;
          __p[0] = 0;
          v513 = 0;
          sub_10000CB74(__p, (v123 + 64));
          v514[0] = 0;
          *&v497 = v514;
          v126 = sub_100096318(v447, v514, &unk_1008A9BD0, &v497);
          sub_100098724(v126, v126 + 5, __p, 0xFFFFu);
          v127 = v528;
          if (v528 >= 0x122u)
          {
            v127 = 290;
          }

          LOWORD(v528) = v127;
          if ((*(v444 + 578) & 1) == 0)
          {
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
            {
              sub_10086B8AC(&v459, v460);
            }

            goto LABEL_206;
          }

          if (v451 < 4 || (*(v444 + 577) & 1) == 0)
          {
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
            {
              sub_10086B8E8(&v457, v458);
            }

            goto LABEL_206;
          }

          v497 = 0uLL;
          *&v498 = 0;
          sub_1000987D4(v117[6], 2, &v497);
          v128 = v497;
          if (*(&v497 + 1) == v497)
          {
            v136 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
            {
              sub_100018384(v117[4], v514);
              if (v515[9] >= 0)
              {
                v145 = v514;
              }

              else
              {
                v145 = *v514;
              }

              *buf = 136446210;
              *&buf[4] = v145;
              v146 = v136;
              v147 = "session %{public}s does not have 16bit UUID's";
              goto LABEL_223;
            }

            if (!v128)
            {
              goto LABEL_206;
            }
          }

          else
          {
            v129 = v113;
            v130 = *(v444 + 610);
            v131 = v129;
            if (v130 <= v129)
            {
              v137 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
              {
                *v514 = 67109376;
                *&v514[4] = v131;
                *&v514[8] = 1024;
                *&v514[10] = v130;
                v113 = v131;
                _os_log_debug_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEBUG, "We have %d advertisers, max is %d, can't fit more", v514, 0xEu);
              }

              else
              {
                v113 = v131;
              }

              goto LABEL_217;
            }

            v132 = sub_1000269D4();
            v113 = v131;
            v133 = v117[6];
            if (v132 - *(v133 + 320) < *(v133 + 328))
            {
              if (*(v133 + 336))
              {
                sub_1000965B8(&v464, (v117 + 5));
                v134 = v529;
                if (v529 >= 0x122u)
                {
                  v134 = 290;
                }

                v529 = v134;
                v113 = (v131 + 1);
                goto LABEL_217;
              }

              v144 = qword_100BCE9A8;
              if (!os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_217;
              }

              sub_100018384(v117[4], v514);
              if (v515[9] >= 0)
              {
                v148 = v514;
              }

              else
              {
                v148 = *v514;
              }

              *buf = 136446210;
              *&buf[4] = v148;
              v146 = v144;
              v147 = "session %{public}s was never in foreground, extended advertising not allowed, skipping";
LABEL_223:
              _os_log_debug_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEBUG, v147, buf, 0xCu);
              if ((v515[9] & 0x80000000) == 0)
              {
                goto LABEL_217;
              }

              v143 = *v514;
LABEL_225:
              operator delete(v143);
              goto LABEL_217;
            }

            v138 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
            {
              sub_100018384(v117[4], buf);
              v139 = buf;
              if (SBYTE7(v490) < 0)
              {
                v139 = *buf;
              }

              v140 = v117[6];
              v142 = *(v140 + 320);
              v141 = *(v140 + 328);
              *v514 = 136446722;
              *&v514[4] = v139;
              *&v514[12] = 2048;
              *v515 = v132 - v142;
              *&v515[8] = 2048;
              *&v515[10] = v141;
              _os_log_debug_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEBUG, "session %{public}s has been advertising in background for %llu seconds, but max is %llu, skipping", v514, 0x20u);
              if (SBYTE7(v490) < 0)
              {
                v143 = *buf;
                goto LABEL_225;
              }
            }

LABEL_217:
            v128 = v497;
            if (!v497)
            {
LABEL_206:
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              ++v114;
              v39 = 1;
              goto LABEL_173;
            }
          }

          *(&v497 + 1) = v128;
          operator delete(v128);
          goto LABEL_206;
        }

        v124 = qword_100BCEA40;
        if (os_log_type_enabled(qword_100BCEA40, OS_LOG_TYPE_INFO))
        {
          sub_100018384(v121, v514);
          if (v515[9] >= 0)
          {
            v125 = v514;
          }

          else
          {
            v125 = *v514;
          }

          LODWORD(__p[0]) = 136446210;
          *(__p + 4) = v125;
          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_INFO, "Session %{public}s is on the EN instance, skipping hash", __p, 0xCu);
LABEL_199:
          if ((v515[9] & 0x80000000) != 0)
          {
            operator delete(*v514);
          }
        }
      }

      else
      {
LABEL_172:
        v122 = qword_100BCE9A8;
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          sub_100018384(*(v112 + 16), v514);
          if (v515[9] >= 0)
          {
            v135 = v514;
          }

          else
          {
            v135 = *v514;
          }

          LODWORD(__p[0]) = 136446210;
          *(__p + 4) = v135;
          _os_log_error_impl(&_mh_execute_header, v122, OS_LOG_TYPE_ERROR, "Could not find %{public}s in our advertising sessions, ignoring", __p, 0xCu);
          goto LABEL_199;
        }
      }

LABEL_173:
      v112 = *(v112 + 8);
      if (v112 == v111)
      {
        v149 = v114;
        LODWORD(v113) = v113;
        goto LABEL_232;
      }
    }
  }

  v149 = 0;
  LODWORD(v113) = 0;
LABEL_232:
  v150 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *v514 = 67109376;
    *&v514[4] = v149;
    *&v514[8] = 1024;
    *&v514[10] = v113;
    _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "background advertising sessions:AppleMFG:%d Extended:%d", v514, 0xEu);
  }

  if (v39)
  {
    if (qword_100B50910 != -1)
    {
      sub_10086AEE8();
    }

    if ((sub_10009885C(off_100B50908) & 1) == 0)
    {
      v151 = qword_100BCE9A8;
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
      {
        *v514 = 0;
        _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_INFO, "Limiting advertisement duty cycle based on other activies", v514, 2u);
      }

      v152 = v528;
      if (v528 <= 0x122u)
      {
        v152 = 290;
      }

      LOWORD(v528) = v152;
      v153 = WORD1(v528);
      if (WORD1(v528) <= 0x122u)
      {
        v153 = 290;
      }

      WORD1(v528) = v153;
    }

    bzero(v514, 0x203AuLL);
    bzero(__p, 0x203AuLL);
    v511 = 0;
    v510 = 0;
    v509 = 0;
    v508 = 0;
    v505[0] = v439;
    v505[1] = v441;
    v506 = vdupq_n_s64(0x1FuLL);
    v440 = *(v444 + 608);
    v507 = v440;
    v504 = 0;
    v503 = 0u;
    v502 = 0u;
    v501 = 0u;
    v500 = 0u;
    v499 = 0u;
    v498 = 0u;
    v497 = 0u;
    v496 = 0;
    v495 = 0u;
    v494 = 0u;
    v493 = 0u;
    v492 = 0u;
    v491 = 0u;
    v490 = 0u;
    *buf = 0u;
    v488 = 0;
    v487 = 0u;
    memset(v486, 0, sizeof(v486));
    v485 = 0;
    memset(v484, 0, sizeof(v484));
    v483 = 0;
    memset(v482, 0, sizeof(v482));
    v481 = 0;
    memset(v480, 0, sizeof(v480));
    v456 = 0;
    v455 = 0;
    if (*(&v468 + 1) != v468)
    {
      v154 = *(v468 + 8);
      if (*(v154 + 39) < 0)
      {
        sub_100008904(__dst, *(v154 + 16), *(v154 + 24));
      }

      else
      {
        __dst[0] = *(v154 + 16);
        __dst[1].n128_u64[0] = *(v154 + 32);
      }

      v181 = v442;
      if (v442[1].n128_i8[7] < 0)
      {
        operator delete(v442->n128_u64[0]);
        v181 = v442;
      }

      *v181 = __dst[0];
      v181[1].n128_u64[0] = __dst[1].n128_u64[0];
      for (i = v468; i != *(&v468 + 1); i += 16)
      {
        memset(__dst, 0, 24);
        sub_1000987D4(*(i + 8), 2, __dst);
        if (v451 < 2)
        {
          v184 = 0;
        }

        else
        {
          v184 = *(*(i + 8) + 264);
        }

        sub_100098724(v183, &v497 + 3 * v184, __dst, 0xFFFFu);
        sub_1000987D4(*(i + 8), 4, v478);
        v185 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v478;
        __dst[1].n128_u64[0] = v479;
        sub_100098724(v185, &buf[24 * v184], __dst, 0xFFFFu);
        sub_1000987D4(*(i + 8), 16, v478);
        v186 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v478;
        __dst[1].n128_u64[0] = v479;
        sub_100098724(v186, v486 + 3 * v184, __dst, 0xFFFFu);
        sub_10009869C(*(i + 8), 2, v478);
        v187 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v478;
        __dst[1].n128_u64[0] = v479;
        sub_100098724(v187, v484 + 3 * v184, __dst, 0xFFFFu);
        sub_10009869C(*(i + 8), 4, v478);
        v188 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v478;
        __dst[1].n128_u64[0] = v479;
        sub_100098724(v188, v482 + 3 * v184, __dst, 0xFFFFu);
        sub_10009869C(*(i + 8), 16, v478);
        v189 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v478;
        __dst[1].n128_u64[0] = v479;
        sub_100098724(v189, v480 + 3 * v184, __dst, 0xFFFFu);
        *(&v455 + v184) = *(v486 + 3 * v184 + 1) != *(v486 + 3 * v184);
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }
      }
    }

    if (v451)
    {
      v190 = v464;
      if (*(&v464 + 1) != v464 && *(v444 + 578) == 1 && *(v444 + 577) == 1)
      {
        do
        {
          memset(__dst, 0, 24);
          sub_1000987D4(*(v190 + 8), 2, __dst);
          if (0xCCCCCCCCCCCCCCCDLL * ((__dst[0].n128_u64[1] - __dst[0].n128_u64[0]) >> 2) >= 3)
          {
            sub_10072CB48(__dst, 2uLL);
          }

          sub_100098724(v191, &v503, __dst, 0xFFFFu);
          if (__dst[0].n128_u64[0])
          {
            __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
            operator delete(__dst[0].n128_u64[0]);
          }

          v190 += 16;
        }

        while (v190 != *(&v464 + 1));
        v456 = 0;
      }
    }

    v192 = v466;
    if (*(&v466 + 1) != v466)
    {
      while (2)
      {
        v193 = v442;
        v194 = v442[1].n128_u8[7];
        v195 = v194;
        if ((v194 & 0x80u) != 0)
        {
          v194 = v442->n128_u64[1];
        }

        if (v194)
        {
          goto LABEL_310;
        }

        v196 = *(v192 + 8);
        if (*(v196 + 39) < 0)
        {
          sub_100008904(__dst, *(v196 + 16), *(v196 + 24));
          v193 = v442;
          if ((v442[1].n128_u8[7] & 0x80) != 0)
          {
LABEL_308:
            operator delete(v193->n128_u64[0]);
            v193 = v442;
          }
        }

        else
        {
          __dst[0] = *(v196 + 16);
          __dst[1].n128_u64[0] = *(v196 + 32);
          if (v195 < 0)
          {
            goto LABEL_308;
          }
        }

        *v193 = __dst[0];
        v193[1].n128_u64[0] = __dst[1].n128_u64[0];
LABEL_310:
        if (v451 < 2)
        {
          v197 = 0;
        }

        else
        {
          v197 = *(*(v192 + 8) + 264);
        }

        memset(__dst, 0, 24);
        sub_1000987D4(*(v192 + 8), 2, __dst);
        sub_100098724(v198, &v497 + 3 * v197, __dst, 0xFFFFu);
        sub_1000987D4(*(v192 + 8), 4, v478);
        v199 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v478;
        __dst[1].n128_u64[0] = v479;
        sub_100098724(v199, &buf[24 * v197], __dst, 0xFFFFu);
        sub_1000987D4(*(v192 + 8), 16, v478);
        v200 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v478;
        __dst[1].n128_u64[0] = v479;
        sub_100098724(v200, v486 + 3 * v197, __dst, 0xFFFFu);
        sub_10009869C(*(v192 + 8), 2, v478);
        v201 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v478;
        __dst[1].n128_u64[0] = v479;
        sub_100098724(v201, v484 + 3 * v197, __dst, 0xFFFFu);
        sub_10009869C(*(v192 + 8), 4, v478);
        v202 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v478;
        __dst[1].n128_u64[0] = v479;
        sub_100098724(v202, v482 + 3 * v197, __dst, 0xFFFFu);
        sub_10009869C(*(v192 + 8), 16, v478);
        v203 = __dst[0].n128_u64[0];
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        __dst[0] = *v478;
        __dst[1].n128_u64[0] = v479;
        sub_100098724(v203, v480 + 3 * v197, __dst, 0xFFFFu);
        if (__dst[0].n128_u64[0])
        {
          __dst[0].n128_u64[1] = __dst[0].n128_u64[0];
          operator delete(__dst[0].n128_u64[0]);
        }

        v192 += 16;
        if (v192 == *(&v466 + 1))
        {
          break;
        }

        continue;
      }
    }

    v204 = *(&v468 + 1);
    v205 = v468;
    if (*(&v468 + 1) == v468)
    {
      goto LABEL_338;
    }

    while (2)
    {
      v206 = sub_10000C5E0(*(v205 + 8) + 224);
      v207 = sub_10000C5F8(*(v205 + 8) + 224);
      if (v451 < 2)
      {
        v208 = 0;
        if (!v206)
        {
          goto LABEL_336;
        }
      }

      else
      {
        v208 = *(*(v205 + 8) + 264);
        if (!v206)
        {
          goto LABEL_336;
        }
      }

      v209 = *(&v510 + v208);
      if (v206 <= v505[v208] - v209)
      {
        memcpy(&v514[1650 * v208 + v209], v207, v206);
        *(&v510 + v208) = v209 + v206;
      }

LABEL_336:
      v205 += 16;
      v204 = *(&v468 + 1);
      if (v205 != *(&v468 + 1))
      {
        continue;
      }

      break;
    }

    v205 = v468;
LABEL_338:
    if (v204 != v205)
    {
      do
      {
        v210 = sub_10000C5E0(*(v205 + 8) + 48);
        v211 = sub_10000C5F8(*(v205 + 8) + 48);
        if (v451 < 2)
        {
          LOBYTE(v212) = 0;
        }

        else
        {
          v212 = *(*(v205 + 8) + 264);
        }

        v470.n128_u8[0] = v212;
        __dst[0].n128_u64[0] = &v470;
        v213 = sub_100095D64(a10, &v470, &unk_1008A9BD0, __dst);
        sub_100097DEC(v213, v211, v210, (v213 + 5));
        if (v210)
        {
          v214 = v470.n128_u8[0];
          v215 = *(&v510 + v470.n128_u8[0]);
          if (v210 <= v505[v470.n128_u8[0]] - v215)
          {
            memcpy(&v514[1650 * v470.n128_u8[0] + v215], v211, v210);
            *(&v510 + v214) = v215 + v210;
          }
        }

        v205 += 16;
      }

      while (v205 != *(&v468 + 1));
    }

    if (v455 == 1)
    {
      v216 = v510;
      v217 = v505[0];
      v470.n128_u8[0] = 0;
      __dst[0].n128_u64[0] = &v470;
      v218 = sub_100096318(v445, &v470, &unk_1008A9BD0, __dst);
      LOBYTE(v453) = 0;
      __dst[0].n128_u64[0] = &v453;
      v219 = sub_100096318(v447, &v453, &unk_1008A9BD0, __dst);
      v220 = sub_10009846C(v219, &v514[v216], (v217 - v216), v486, 0x10u, v218 + 5, v219 + 5);
      LOWORD(v510) = v510 + v220;
    }

    if (BYTE1(v455) == 1)
    {
      v221 = WORD1(v510);
      v470.n128_u8[0] = 1;
      __dst[0].n128_u64[0] = &v470;
      v222 = sub_100096318(v445, &v470, &unk_1008A9BD0, __dst);
      LOBYTE(v453) = 1;
      __dst[0].n128_u64[0] = &v453;
      v223 = sub_100096318(v447, &v453, &unk_1008A9BD0, __dst);
      v224 = sub_10009846C(v223, &v527[v221], (v441 - v221), &v486[1] + 1, 0x10u, v222 + 5, v223 + 5);
      WORD1(v510) += v224;
    }

    if (v456 == 1)
    {
      v225 = v511;
      v470.n128_u8[0] = 4;
      __dst[0].n128_u64[0] = &v470;
      v226 = sub_100096318(v445, &v470, &unk_1008A9BD0, __dst);
      LOBYTE(v453) = 4;
      __dst[0].n128_u64[0] = &v453;
      v227 = sub_100096318(v447, &v453, &unk_1008A9BD0, __dst);
      v228 = sub_10009846C(v227, &v527[v225 + 4950], (v440 - v225), &v487, 0x10u, v226 + 5, v227 + 5);
      v511 += v228;
    }

    if (v451)
    {
      v229 = 0;
      v230 = 0;
      v231 = v514;
      do
      {
        v232 = *(&v510 + v230);
        v233 = v505[v230];
        v470.n128_u8[0] = v230;
        __dst[0].n128_u64[0] = &v470;
        v234 = sub_100096318(v445, &v470, &unk_1008A9BD0, __dst);
        LOBYTE(v453) = v230;
        __dst[0].n128_u64[0] = &v453;
        v235 = sub_100096318(v447, &v453, &unk_1008A9BD0, __dst);
        LOWORD(v232) = *(&v510 + v230) + sub_10009846C(v235, &v231[v232], (v233 - v232), &buf[v229], 4u, v234 + 5, v235 + 5);
        *(&v510 + v230) = v232;
        v470.n128_u8[0] = v230;
        __dst[0].n128_u64[0] = &v470;
        v236 = sub_100096318(v445, &v470, &unk_1008A9BD0, __dst);
        LOBYTE(v453) = v230;
        __dst[0].n128_u64[0] = &v453;
        v237 = sub_100096318(v447, &v453, &unk_1008A9BD0, __dst);
        v238 = *(&v510 + v230) + sub_10009846C(v237, &v231[v232], (v233 - v232), (&v497 + v229), 2u, v236 + 5, v237 + 5);
        *(&v510 + v230) = v238;
        if ((*(&v455 + v230) & 1) == 0)
        {
          v470.n128_u8[0] = v230;
          __dst[0].n128_u64[0] = &v470;
          v239 = sub_100096318(v445, &v470, &unk_1008A9BD0, __dst);
          LOBYTE(v453) = v230;
          __dst[0].n128_u64[0] = &v453;
          v240 = sub_100096318(v447, &v453, &unk_1008A9BD0, __dst);
          v238 = *(&v510 + v230) + sub_10009846C(v240, &v231[v238], (v233 - v238), (v486 + v229), 0x10u, v239 + 5, v240 + 5);
          *(&v510 + v230) = v238;
        }

        v470.n128_u8[0] = v230;
        __dst[0].n128_u64[0] = &v470;
        v241 = sub_100096318(v446, &v470, &unk_1008A9BD0, __dst);
        v242 = *(&v510 + v230) + sub_10009830C(v241, &v231[v238], (v233 - v238), (v484 + v229), 2u, v241 + 5);
        *(&v510 + v230) = v242;
        v470.n128_u8[0] = v230;
        __dst[0].n128_u64[0] = &v470;
        v243 = sub_100096318(v446, &v470, &unk_1008A9BD0, __dst);
        v244 = *(&v510 + v230) + sub_10009830C(v243, &v231[v242], (v233 - v242), (v482 + v229), 4u, v243 + 5);
        *(&v510 + v230) = v244;
        v470.n128_u8[0] = v230;
        __dst[0].n128_u64[0] = &v470;
        v245 = sub_100096318(v446, &v470, &unk_1008A9BD0, __dst);
        *(&v510 + v230++) += sub_10009830C(v245, &v231[v244], (v233 - v244), (v480 + v229), 0x10u, v245 + 5);
        v229 += 24;
        v231 += 1650;
      }

      while (24 * v451 != v229);
    }

    for (j = v468; j != *(&v468 + 1); j += 16)
    {
      memset(__dst, 0, 24);
      sub_1000575BC(__dst, *(j + 8) + 112);
      if (v451 < 2)
      {
        v247 = 0;
      }

      else
      {
        v247 = *(*(j + 8) + 264);
      }

      LOBYTE(v453) = v247;
      v248 = *(&v510 + v247);
      v249 = v505[v247];
      v478[0] = &v453;
      v250 = sub_100095E9C(a9, &v453, &unk_1008A9BD0, v478);
      v251 = sub_100098140(v250, &v514[1650 * v247 + v248], v249 - v248, __dst, v250 + 5, 2);
      *(&v510 + v453) += v251;
      sub_10004CE24(__dst, __dst[0].n128_u64[1]);
    }

    v252 = *(&v466 + 1);
    for (k = v466; k != *(&v466 + 1); v252 = *(&v466 + 1))
    {
      memset(__dst, 0, 24);
      sub_1000575BC(__dst, *(k + 8) + 112);
      if (v451 < 2)
      {
        v254 = 0;
      }

      else
      {
        v254 = *(*(k + 8) + 264);
      }

      LOBYTE(v453) = v254;
      v255 = *(&v510 + v254);
      v256 = v505[v254];
      v478[0] = &v453;
      v257 = sub_100095E9C(a9, &v453, &unk_1008A9BD0, v478);
      v258 = sub_100098140(v257, &v514[1650 * v254 + v255], v256 - v255, __dst, v257 + 5, 2);
      *(&v510 + v453) += v258;
      sub_10004CE24(__dst, __dst[0].n128_u64[1]);
      k += 16;
    }

    v259 = v442[1].n128_u8[7];
    if ((v259 & 0x80u) != 0)
    {
      v259 = v442->n128_u64[1];
    }

    if (v259)
    {
      v454 = 0;
      v260 = v505[0];
      v261 = v510;
      __dst[0].n128_u64[0] = &v454;
      v262 = sub_100096318(v447, &v454, &unk_1008A9BD0, __dst);
      v263 = -21;
      if (v262[6] == v262[5])
      {
        v263 = 0;
      }

      v264 = v263 + v260;
      v265 = v442;
      v266 = v442[1].n128_i8[7];
      if ((v266 & 0x80000000) == 0)
      {
        v267 = v442[1].n128_i8[7];
      }

      else
      {
        v267 = v442->n128_u64[1];
      }

      v268 = (v260 - v261) > v264;
      if ((v260 - v261) >= v264)
      {
        v264 = v260 - v261;
      }

      v269 = v268;
      v270 = v264 - 2;
      if (v267 <= v270)
      {
        v271 = v442->n128_u64[1];
      }

      else
      {
        LOBYTE(v271) = v270;
      }

      if (v267 <= v270)
      {
        LOBYTE(v270) = v442[1].n128_u8[7];
      }

      if ((v266 & 0x80000000) == 0)
      {
        v272 = v270;
      }

      else
      {
        v272 = v271;
      }

      if (v267 + 2 <= (v260 - v261))
      {
        v273 = 1;
      }

      else
      {
        v273 = v269;
      }

      v274 = v454;
      if (v273)
      {
        v275 = &v514[1650 * v454];
      }

      else
      {
        v275 = __p + 1650 * v454;
      }

      if (v273)
      {
        v276 = &v510;
      }

      else
      {
        v276 = &v508;
      }

      if ((v266 & 0x8000000000000000) != 0)
      {
        if (v442->n128_u64[1] > v272)
        {
          v478[0] = v442->n128_u64[1];
          v470.n128_u64[0] = v272;
          v277 = v442->n128_u64[0];
          goto LABEL_402;
        }
      }

      else if (v272 < v266)
      {
        v478[0] = v442[1].n128_i8[7];
        v470.n128_u64[0] = v272;
        v277 = v442;
LABEL_402:
        v453 = v277;
        v278 = malloc_type_calloc(v272 + 1, 1uLL, 0x100004077774924uLL);
        v452 = v278;
        v279 = iconv_open("UTF-8", "UTF-8");
        if (iconv(v279, &v453, v478, &v452, v470.n128_u64))
        {
          v280 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
          {
            if (v442[1].n128_i8[7] >= 0)
            {
              v281 = v442;
            }

            else
            {
              v281 = v442->n128_u64[0];
            }

            __dst[0].n128_u32[0] = 136315394;
            *(__dst[0].n128_u64 + 4) = v281;
            __dst[0].n128_u16[6] = 2080;
            *(&__dst[0].n128_u64[1] + 6) = v278;
            _os_log_impl(&_mh_execute_header, v280, OS_LOG_TYPE_INFO, "Adjusted advertisement name %s to fit - using %s", __dst, 0x16u);
          }
        }

        iconv_close(v279);
        free(v278);
        v272 -= v470.n128_u8[0];
        v265 = v442;
        LOBYTE(v266) = v442[1].n128_u8[7];
      }

      v282 = v272;
      v283 = *(v276 + v274);
      *(v276 + v274) = v283 + 1;
      v275[v283] = v272 + 1;
      v284 = v272;
      v285 = v283 + 2;
      v286 = (v283 + 1);
      if ((v266 & 0x80) != 0)
      {
        v288 = v265;
        v265 = v265->n128_u64[0];
        if (v288->n128_u64[1] > v284)
        {
          v287 = 8;
        }

        else
        {
          v287 = 9;
        }
      }

      else if (v284 < v266)
      {
        v287 = 8;
      }

      else
      {
        v287 = 9;
      }

      *(v276 + v274) = v285;
      v275[v286] = v287;
      memcpy(&v275[v285], v265, v284);
      *(v276 + v274) = v285 + v282;
      v252 = *(&v466 + 1);
    }

    v289 = v466;
    if (v252 != v466)
    {
      while (2)
      {
        v290 = sub_10000C5E0(*(v289 + 8) + 224);
        v291 = sub_10000C5F8(*(v289 + 8) + 224);
        if (v451 < 2)
        {
          v292 = 0;
          if (!v290)
          {
            goto LABEL_424;
          }
        }

        else
        {
          v292 = *(*(v289 + 8) + 264);
          if (!v290)
          {
            goto LABEL_424;
          }
        }

        v293 = *(&v510 + v292);
        if (v290 <= v505[v292] - v293)
        {
          memcpy(&v514[1650 * v292 + v293], v291, v290);
          *(&v510 + v292) = v293 + v290;
        }

LABEL_424:
        v289 += 16;
        v252 = *(&v466 + 1);
        if (v289 == *(&v466 + 1))
        {
          v289 = v466;
          break;
        }

        continue;
      }
    }

    if (v252 != v289)
    {
      do
      {
        v294 = sub_10000C5E0(*(v289 + 8) + 48);
        v295 = sub_10000C5F8(*(v289 + 8) + 48);
        if (v451 < 2)
        {
          LOBYTE(v296) = 0;
        }

        else
        {
          v296 = *(*(v289 + 8) + 264);
        }

        v470.n128_u8[0] = v296;
        __dst[0].n128_u64[0] = &v470;
        v297 = sub_100095D64(a10, &v470, &unk_1008A9BD0, __dst);
        sub_100097DEC(v297, v295, v294, (v297 + 5));
        if (v294)
        {
          v298 = v470.n128_u8[0];
          v299 = *(&v510 + v470.n128_u8[0]);
          if (v294 <= v505[v470.n128_u8[0]] - v299)
          {
            memcpy(&v514[1650 * v470.n128_u8[0] + v299], v295, v294);
            *(&v510 + v298) = v299 + v294;
          }
        }

        v289 += 16;
      }

      while (v289 != *(&v466 + 1));
      if (_os_feature_enabled_impl())
      {
        v300 = 0;
        v477 = 0;
        v475 = 0u;
        v476 = 0u;
        v473 = 0u;
        v474 = 0u;
        v472 = 0u;
        memset(__dst, 0, sizeof(__dst));
        do
        {
          v301 = &__dst[0].n128_u64[v300];
          v301[2] = 0;
          __dst[0].n128_u64[v300 + 1] = 0;
          *v301 = &__dst[0].n128_u64[v300 + 1];
          v300 += 3;
        }

        while (v300 != 15);
        v302 = *(&v466 + 1);
        for (m = v466; m != v302; m += 16)
        {
          v304 = *(m + 8);
          if (*(v304 + 512))
          {
            if (v451 < 2)
            {
              v305 = 0;
            }

            else
            {
              v305 = *(v304 + 264);
            }

            sub_10072CB84(&__dst[0].n128_u64[3 * v305], *(v304 + 496), (v304 + 504));
            v302 = *(&v466 + 1);
          }
        }

        v306 = 0;
        while (1)
        {
          v307 = &__dst[0].n128_u64[3 * v306];
          if (!v307[2])
          {
            goto LABEL_462;
          }

          v308 = 0;
          v309 = 0;
          v312 = *v307;
          v311 = v307 + 1;
          v310 = v312;
          v313 = &v514[1650 * v306];
          do
          {
            if ((v309 & 1) == 0)
            {
              v317 = sub_10000C5E0((v310 + 5));
              v315 = *(&v510 + v306);
              if (v317 + 6 > (v505[v306] - v315))
              {
                v309 = 0;
                goto LABEL_455;
              }

              v308 = &v313[v315];
              *&v313[v315] = 5046020;
              v316 = v315 + 4;
              *(&v510 + v306) = v315 + 4;
              v315 = (v315 + 4);
              goto LABEL_453;
            }

            v314 = sub_10000C5E0((v310 + 5));
            v315 = *(&v510 + v306);
            if (v314 + 2 <= (v505[v306] - v315))
            {
              v316 = *(&v510 + v306);
LABEL_453:
              v313[v315] = *(v310 + 32);
              *(&v510 + v306) = v316 + 1;
              v318 = sub_10000C5E0((v310 + 5));
              v319 = *(&v510 + v306);
              v313[v319] = v318;
              v320 = v319 + 1;
              *(&v510 + v306) = v319 + 1;
              v321 = sub_10000C5F8((v310 + 5));
              memcpy(&v313[v320], v321, v318);
              LOWORD(v315) = *(&v510 + v306) + v318;
              *(&v510 + v306) = v315;
            }

            v309 = 1;
LABEL_455:
            v322 = v310[1];
            if (v322)
            {
              do
              {
                v323 = v322;
                v322 = *v322;
              }

              while (v322);
            }

            else
            {
              do
              {
                v323 = v310[2];
                _ZF = *v323 == v310;
                v310 = v323;
              }

              while (!_ZF);
            }

            v310 = v323;
          }

          while (v323 != v311);
          *v308 = v313 + v315 + ~v308;
LABEL_462:
          if (++v306 == 5)
          {
            for (n = 0; n != -120; n -= 24)
            {
              sub_100046348(&v476 + n, *(&v476 + n + 8));
            }

            break;
          }
        }
      }
    }

    v325 = v461;
    v326 = v462;
    if (v462 != v461)
    {
      v327 = v451 > 1;
      v328 = &v514[1650 * v327];
      v329 = (&v510 | (2 * v327));
      do
      {
        v330 = sub_10000C5E0(*(v325 + 8) + 152);
        if (v330)
        {
          v331 = sub_10000C5F8(*(v325 + 8) + 152);
          v332 = v330 + 2;
          if (v330 != -2)
          {
            v333 = *v329;
            v334 = 1650 - v333;
            if (v332 <= 1650 - v333)
            {
              v328[v333] = v330 + 1;
              v336 = v333 + 2;
              v328[(v333 + 1)] = -1;
              memcpy(&v328[(v333 + 2)], v331, v330);
              *v329 = v336 + v330;
            }

            else
            {
              v335 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                __dst[0].n128_u32[0] = 67109632;
                __dst[0].n128_u32[1] = v327;
                __dst[0].n128_u16[4] = 2048;
                *(&__dst[0].n128_u64[1] + 2) = v332;
                __dst[1].n128_u16[1] = 2048;
                *(__dst[1].n128_u64 + 4) = v334;
                _os_log_impl(&_mh_execute_header, v335, OS_LOG_TYPE_DEFAULT, "Non Apple manufacturer data cannot fit in advertisement instance %u mfgDataLen %zu available space %lu", __dst, 0x1Cu);
              }
            }
          }
        }

        v325 += 16;
        v326 = v462;
      }

      while (v325 != v462);
      v325 = v461;
    }

    v337 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
    {
      __dst[0].n128_u32[0] = 134218496;
      *(__dst[0].n128_u64 + 4) = (*(&v466 + 1) - v466) >> 4;
      __dst[0].n128_u16[6] = 2048;
      *(&__dst[0].n128_u64[1] + 6) = (*(&v468 + 1) - v468) >> 4;
      __dst[1].n128_u16[3] = 2048;
      __dst[1].n128_u64[1] = (v326 - v325) >> 4;
      _os_log_impl(&_mh_execute_header, v337, OS_LOG_TYPE_INFO, "dameon %lu fg %lu lp %lu", __dst, 0x20u);
      v325 = v461;
      v326 = v462;
    }

    if (v326 != v325)
    {
      v338 = v451 > 1;
      v339 = &v514[1650 * v338];
      v340 = (&v510 | (2 * v338));
      do
      {
        v341 = sub_10000C5E0(*(v325 + 8) + 136);
        v342 = v341;
        if (v341)
        {
          if (v341 == 7)
          {
            v343 = sub_10000C5F8(*(v325 + 8) + 136);
            v344 = *v340;
            if ((v344 - 1651) > 0xFFFFFFFFFFFFFFF6)
            {
              v348 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                __dst[0].n128_u32[0] = 67109632;
                __dst[0].n128_u32[1] = v338;
                __dst[0].n128_u64[1] = 0x800000000090400;
                __dst[1].n128_u64[0] = 1650 - v344;
                _os_log_impl(&_mh_execute_header, v348, OS_LOG_TYPE_DEFAULT, "LE Bluetooth Device Address cannot fit in advertisement instance %u leBtAddrAdStructLen %hhu available space %lu", __dst, 0x18u);
              }
            }

            else
            {
              v339[v344] = 8;
              v339[(v344 + 1)] = 27;
              v345 = &v339[(v344 + 2)];
              v346 = *v343;
              *(v345 + 3) = *(v343 + 3);
              *v345 = v346;
              *v340 = v344 + 9;
            }
          }

          else
          {
            v347 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
            {
              __dst[0].n128_u64[0] = 0x704000300;
              __dst[0].n128_u16[4] = 2048;
              *(&__dst[0].n128_u64[1] + 2) = v342;
              __dst[1].n128_u16[1] = 1024;
              __dst[1].n128_u32[1] = v338;
              _os_log_error_impl(&_mh_execute_header, v347, OS_LOG_TYPE_ERROR, "Advertisement data for device address must have length %d (len %zu), instance %u", __dst, 0x18u);
            }
          }
        }

        v325 += 16;
      }

      while (v325 != v462);
    }

    v470.n128_u8[0] = 0;
    __dst[0].n128_u64[0] = &v470;
    v349 = sub_100096318(v447, &v470, &unk_1008A9BD0, __dst);
    if (v349[6] != v349[5])
    {
      v478[1] = 0;
      v478[0] = 0;
      LOBYTE(v453) = 0;
      __dst[0].n128_u64[0] = &v453;
      for (ii = sub_100096318(v447, &v453, &unk_1008A9BD0, __dst)[5]; ; ii += 20)
      {
        LOBYTE(v453) = 0;
        __dst[0].n128_u64[0] = &v453;
        if (ii == sub_100096318(v447, &v453, &unk_1008A9BD0, __dst)[6])
        {
          break;
        }

        v470.n128_u8[0] = 0;
        LOBYTE(v453) = 0;
        v351 = *ii;
        __dst[1].n128_u32[0] = *(ii + 16);
        __dst[0] = v351;
        sub_100570420(__dst, &v470, &v453);
        *(v478 + v470.n128_u8[0]) |= 1 << v453;
      }

      v352 = qword_100BCE9A8;
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
      {
        __dst[0].n128_u64[0] = 0x1004100202;
        __dst[0].n128_u16[4] = 2096;
        *(&__dst[0].n128_u64[1] + 2) = v478;
        _os_log_impl(&_mh_execute_header, v352, OS_LOG_TYPE_INFO, "Hashed UUIDs: %.16P", __dst, 0x12u);
      }

      v353 = v505[0];
      v354 = v510;
      if ((LOBYTE(v505[0]) - v508) <= 0x14uLL && os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_FAULT))
      {
        sub_10086B924();
      }

      v355 = __p;
      if ((v353 - v354) > 0x14uLL)
      {
        v355 = v514;
      }

      v356 = &v508;
      if ((v353 - v354) > 0x14uLL)
      {
        v356 = &v510;
      }

      v357 = *v356;
      *(v355 + v357) = 20;
      *(v355 + (v357 + 1)) = -1;
      *(v355 + (v357 + 2)) = 76;
      *(v355 + (v357 + 3)) = 0;
      *(v355 + (v357 + 4)) = 1;
      *(v355 + (v357 + 5)) = *v478;
      *v356 = v357 + 21;
    }

    v358 = v468;
    if (*(&v468 + 1) != v468)
    {
      while (2)
      {
        v359 = sub_10000C5E0(*(v358 + 8) + 272);
        v360 = sub_10000C5F8(*(v358 + 8) + 272);
        v361 = sub_10000C5E0(*(v358 + 8) + 288);
        v362 = sub_10000C5F8(*(v358 + 8) + 288);
        if (v451 < 2)
        {
          LOBYTE(v363) = 0;
        }

        else
        {
          v363 = *(*(v358 + 8) + 264);
          if (v363 == 4)
          {
            v364 = *(v444 + 608);
            LOBYTE(v363) = 4;
            goto LABEL_508;
          }
        }

        v364 = 31;
LABEL_508:
        if (v359 - 1 < v364)
        {
          memcpy(&v514[1650 * v363], v360, v359);
          *(&v510 + v363) = v359;
          LOBYTE(v448[1676 * v363 + 1659]) = 1;
        }

        if (v361 - 1 < v364)
        {
          memcpy(__p + 1650 * v363, v362, v361);
          *(&v508 + v363) = v361;
        }

        v358 += 16;
        if (v358 == *(&v468 + 1))
        {
          break;
        }

        continue;
      }
    }

    v365 = v466;
    if (*(&v466 + 1) != v466)
    {
      while (2)
      {
        v366 = sub_10000C5E0(*(v365 + 8) + 272);
        v367 = sub_10000C5F8(*(v365 + 8) + 272);
        v368 = sub_10000C5E0(*(v365 + 8) + 288);
        v369 = sub_10000C5F8(*(v365 + 8) + 288);
        if (v451 < 2)
        {
          LOBYTE(v370) = 0;
        }

        else
        {
          v370 = *(*(v365 + 8) + 264);
          if (v370 == 4)
          {
            v371 = *(v444 + 608);
            LOBYTE(v370) = 4;
            goto LABEL_519;
          }
        }

        v371 = 31;
LABEL_519:
        if (v366 - 1 < v371)
        {
          memcpy(&v514[1650 * v370], v367, v366);
          *(&v510 + v370) = v366;
          LOBYTE(v448[1676 * v370 + 1659]) = 1;
        }

        if (v368 - 1 < v371)
        {
          memcpy(__p + 1650 * v370, v369, v368);
          *(&v508 + v370) = v368;
        }

        v365 += 16;
        if (v365 == *(&v466 + 1))
        {
          break;
        }

        continue;
      }
    }

    if (_os_feature_enabled_impl())
    {
      v372 = *v436;
      if (*v436 != v449)
      {
        do
        {
          v373 = v372[6];
          v374 = *(v373 + 440);
          if ((v374 & 0xFFFF0000) == 0xF0000)
          {
            v375 = *(v373 + 264);
            v376 = *(&v528 + v375);
            v377 = *(v373 + 222);
            if (v376 != v377)
            {
              v378 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEBUG))
              {
                v381 = sub_10002D1A4(v374);
                __dst[0].n128_u32[0] = 67109890;
                __dst[0].n128_u32[1] = v375;
                __dst[0].n128_u16[4] = 1024;
                *(&__dst[0].n128_u32[2] + 2) = v376;
                __dst[0].n128_u16[7] = 1024;
                __dst[1].n128_u32[0] = v377;
                __dst[1].n128_u16[2] = 2080;
                *(__dst[1].n128_u64 + 6) = v381;
                _os_log_debug_impl(&_mh_execute_header, v378, OS_LOG_TYPE_DEBUG, "Update advInterval for instance %d from %d to %d for %s", __dst, 0x1Eu);
                LOWORD(v377) = *(v372[6] + 222);
              }

              *(&v528 + v375) = v377;
            }
          }

          v379 = v372[1];
          if (v379)
          {
            do
            {
              v380 = v379;
              v379 = *v379;
            }

            while (v379);
          }

          else
          {
            do
            {
              v380 = v372[2];
              _ZF = *v380 == v372;
              v372 = v380;
            }

            while (!_ZF);
          }

          v372 = v380;
        }

        while (v380 != v449);
      }
    }

    v382 = _os_feature_enabled_impl();
    if (v382)
    {
      v384 = sub_10000C798(v382, v383);
      if ((*(*v384 + 384))(v384))
      {
        for (jj = v466; jj != *(&v466 + 1); jj += 16)
        {
          v386 = *(jj + 8);
          LOBYTE(v452) = *(v386 + 264);
          *v478 = xmmword_1008A4F34;
          LODWORD(v479) = 0;
          sub_10000D03C(__dst, v478);
          if (*(jj + 8) + 120 != sub_100058794(v386 + 112, __dst))
          {
            v478[0] = &v452;
            v387 = sub_100095E9C(a9, &v452, &unk_1008A9BD0, v478);
            *v478 = xmmword_1008A4F34;
            LODWORD(v479) = 0;
            sub_10000D03C(&v470, v478);
            v388 = sub_100058794((v387 + 5), &v470);
            v478[0] = &v452;
            if (sub_100095E9C(a9, &v452, &unk_1008A9BD0, v478) + 6 != v388)
            {
              v389 = *(*(jj + 8) + 256);
              if (v389)
              {
                if ((v452 & 0xFB) != 0)
                {
                  HIBYTE(v448[1676 * v452 + 1658]) = 1;
                  v390 = sub_10009A66C(v389);
                  v391 = &v448[1676 * v452];
                  *(v391 + 3316) = BYTE6(v390);
                  v391[1657] = WORD2(v390);
                  *(v391 + 1655) = v390;
                }
              }
            }
          }
        }
      }
    }

    v392 = v448;
    if (v451)
    {
      v393 = 0;
      v394 = 0;
      if (v438)
      {
        v395 = 0;
      }

      else
      {
        v395 = 3;
      }

      if (v438)
      {
        v396 = 3;
      }

      else
      {
        v396 = 0;
      }

      v397 = __p;
      v398 = v514;
      do
      {
        v399 = &v392[v393];
        *v399 = 0;
        v399[1] = *(&v528 + v394);
        v400 = v396;
        if (v394)
        {
          v400 = v395;
          if (v394 != 4)
          {
            v400 = 3;
          }
        }

        *(v399 + 1) = v400;
        v401 = *(&v510 + v394);
        if (v401)
        {
          memcpy(&v448[v393 + 2] + 1, v398, *(&v510 + v394));
          v448[v393 + 828] = v401;
        }

        v402 = *(&v508 + v394);
        if (v402)
        {
          memcpy(&v448[v393 + 829], v397, *(&v508 + v394));
          v448[v393 + 1654] = v402;
        }

        if (v394 <= 1)
        {
          if (!v394)
          {
            v403 = *(v444 + 708);
            if (!*(v444 + 708))
            {
              goto LABEL_586;
            }

            v410 = qword_100BCE9A8;
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
            {
              __dst[0].n128_u32[0] = 67109120;
              __dst[0].n128_u32[1] = v403;
              _os_log_impl(&_mh_execute_header, v410, OS_LOG_TYPE_DEFAULT, "Using override value (%d) for connectable advertisement interval", __dst, 8u);
              LOWORD(v403) = *(v444 + 708);
            }

            goto LABEL_585;
          }

          if (v394 == 1)
          {
            v403 = *(v444 + 710);
            if (*(v444 + 710))
            {
              v405 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                __dst[0].n128_u32[0] = 67109120;
                __dst[0].n128_u32[1] = v403;
                _os_log_impl(&_mh_execute_header, v405, OS_LOG_TYPE_DEFAULT, "Using override value (%d) for non connectable advertisement interval", __dst, 8u);
                LOWORD(v403) = *(v444 + 710);
              }

              goto LABEL_585;
            }
          }
        }

        else
        {
          switch(v394)
          {
            case 2:
              v406 = *(v444 + 718);
              if (*(v444 + 718))
              {
                v407 = qword_100BCE9A8;
                if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
                {
                  __dst[0].n128_u32[0] = 67109120;
                  __dst[0].n128_u32[1] = v406;
                  _os_log_impl(&_mh_execute_header, v407, OS_LOG_TYPE_DEFAULT, "Using override value (%d) for Contact advertisement interval", __dst, 8u);
                  LOWORD(v406) = *(v444 + 718);
                }

                v399[1] = v406;
              }

              v408 = sub_10000E92C();
              if (((*(*v408 + 184))(v408) & 1) == 0)
              {
                goto LABEL_588;
              }

              break;
            case 3:
              v403 = *(v444 + 714);
              if (!*(v444 + 714))
              {
                break;
              }

              v409 = qword_100BCE9A8;
              if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
              {
                __dst[0].n128_u32[0] = 67109120;
                __dst[0].n128_u32[1] = v403;
                _os_log_impl(&_mh_execute_header, v409, OS_LOG_TYPE_DEFAULT, "Using override value (%d) for Object Discovery advertisement interval", __dst, 8u);
                LOWORD(v403) = *(v444 + 714);
              }

              goto LABEL_585;
            case 4:
              v403 = *(v444 + 716);
              if (*(v444 + 716))
              {
                v404 = qword_100BCE9A8;
                if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
                {
                  __dst[0].n128_u32[0] = 67109120;
                  __dst[0].n128_u32[1] = v403;
                  _os_log_impl(&_mh_execute_header, v404, OS_LOG_TYPE_DEFAULT, "Using override value (%d) for Extended advertisement interval", __dst, 8u);
                  LOWORD(v403) = *(v444 + 716);
                }

LABEL_585:
                v399[1] = v403;
              }

              break;
          }
        }

LABEL_586:
        v411 = qword_100BCE9B0;
        if (os_log_type_enabled(qword_100BCE9B0, OS_LOG_TYPE_DEBUG))
        {
          _X8 = v399 + 2504;
          __asm { PRFM            #0, [X8] }

          _X8 = v399 + 1677;
          v415 = v448[v393 + 828];
          _X11 = &v448[v393 + 3330];
          v417 = v505[v394];
          __asm { PRFM            #0, [X11] }

          LODWORD(_X11) = v448[v393 + 1654];
          __asm { PRFM            #0, [X8] }

          LODWORD(_X8) = v399[1];
          v420 = LOBYTE(v448[v393 + 1655]);
          v421 = HIBYTE(v448[v393 + 1658]);
          v422 = *(v399 + 1);
          __dst[0].n128_u32[0] = 67112706;
          __dst[0].n128_u32[1] = v394;
          __dst[0].n128_u16[4] = 1040;
          *(&__dst[0].n128_u32[2] + 2) = v415;
          __dst[0].n128_u16[7] = 2096;
          __dst[1].n128_u64[0] = &v448[v393 + 2] + 1;
          __dst[1].n128_u16[4] = 1024;
          *(&__dst[1].n128_u32[2] + 2) = v415;
          __dst[1].n128_u16[7] = 2048;
          *&v472 = v417;
          WORD4(v472) = 1040;
          *(&v472 + 10) = _X11;
          HIWORD(v472) = 2096;
          *&v473 = &v448[v393 + 829];
          WORD4(v473) = 1024;
          *(&v473 + 10) = _X11;
          HIWORD(v473) = 2048;
          *&v474 = v417;
          WORD4(v474) = 1024;
          *(&v474 + 10) = _X8;
          HIWORD(v474) = 1040;
          LODWORD(v475) = 6;
          WORD2(v475) = 2096;
          *(&v475 + 6) = &v448[v393 + 1655] + 1;
          HIWORD(v475) = 1024;
          LODWORD(v476) = v420;
          WORD2(v476) = 1024;
          *(&v476 + 6) = v421;
          WORD5(v476) = 1024;
          HIDWORD(v476) = v422;
          _os_log_debug_impl(&_mh_execute_header, v411, OS_LOG_TYPE_DEBUG, "%d. AdvData=%.*P(%d/%ld) ScanRspData=%.*P(%d/%ld) interval=%x address:%.6P type:%d overrideAddress:%d ADVType:%d", __dst, 0x70u);
        }

LABEL_588:
        ++v394;
        v393 += 1676;
        v397 = (v397 + 1650);
        v398 += 1650;
        v392 = v448;
      }

      while (1676 * v451 != v393);
    }

    for (kk = 0; kk != -120; kk -= 24)
    {
      v424 = *(&v480[6] + kk);
      if (v424)
      {
        *(&v480[6] + kk + 8) = v424;
        operator delete(v424);
      }
    }

    for (mm = 0; mm != -120; mm -= 24)
    {
      v426 = *(&v482[6] + mm);
      if (v426)
      {
        *(&v482[6] + mm + 8) = v426;
        operator delete(v426);
      }
    }

    for (nn = 0; nn != -120; nn -= 24)
    {
      v428 = *(&v484[6] + nn);
      if (v428)
      {
        *(&v484[6] + nn + 8) = v428;
        operator delete(v428);
      }
    }

    for (i1 = 0; i1 != -120; i1 -= 24)
    {
      v430 = *(&v487 + i1);
      if (v430)
      {
        *(&v487 + i1 + 8) = v430;
        operator delete(v430);
      }
    }

    for (i2 = 0; i2 != -120; i2 -= 24)
    {
      v432 = *(&v495 + i2);
      if (v432)
      {
        *(&v495 + i2 + 8) = v432;
        operator delete(v432);
      }
    }

    for (i3 = 0; i3 != -120; i3 -= 24)
    {
      v434 = *(&v503 + i3);
      if (v434)
      {
        *(&v503 + i3 + 8) = v434;
        operator delete(v434);
      }
    }
  }

  else if (v451)
  {
    v155 = v451;
    v156 = v18 + 1;
    v157 = &v528;
    do
    {
      v158 = *v157;
      v157 = (v157 + 2);
      *v156 = v158;
      v156 += 1676;
      --v155;
    }

    while (v155);
  }

LABEL_613:
  *v514 = &v461;
  sub_10008D02C(v514);
  *v514 = &v464;
  sub_10008D02C(v514);
  *v514 = &v466;
  sub_10008D02C(v514);
  *v514 = &v468;
  sub_10008D02C(v514);
}
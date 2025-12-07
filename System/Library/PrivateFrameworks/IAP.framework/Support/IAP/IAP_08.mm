uint64_t sub_100078C34(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if ((result & 7) == 0)
    {
      v3 = *(result + 32);
      if (!v3)
      {
        return 0;
      }

      if ((v3 & 7) == 0)
      {
        v4 = *(v3 + 58);
        if (v4 >= 2)
        {
LABEL_13:
          __break(0x550Au);
          __break(0x5507u);
          return result;
        }

        if ((v4 & 1) == 0)
        {
          result = sub_1000C4254(result, a2);
          if (result)
          {
            if ((result & 7) == 0)
            {
              sub_100094564(result, v2, 0);
              v5 = (*(*v2 + 16))(v2, 0);
              sub_1000B748C(v2, 0, 0, 0, v5, 0, 0);
            }
          }

          goto LABEL_12;
        }

        return 0;
      }
    }

LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100078E94(uint64_t result, uint64_t a2, void *a3, int a4)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    __break(0x5518u);
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_1000946EC(result, a2);
  if (!result)
  {
    return 2;
  }

  v7 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  v8 = sub_10005BB24(result, 0);
  result = sub_100065198(v8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_19;
  }

  result = sub_100092790(result, v7, 0);
  if (!result)
  {
    v9 = 2;
    goto LABEL_16;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_19;
  }

  if ((a4 + 8) <= 0xF)
  {
    v9 = sub_100075B90(result, a3, a4);
LABEL_16:
    sub_10005BB6C(v7, 0);
    return v9;
  }

LABEL_20:
  __break(0x550Au);
  return result;
}

uint64_t sub_100078F78(uint64_t result, int a2)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
    return result;
  }

  result = 0;
  if (a2 <= 473)
  {
    if (a2 != 70 && a2 != 131 && a2 != 134)
    {
      return result;
    }

    return 1;
  }

  if (a2 == 474 || a2 == 53504 || a2 == 512)
  {
    return 1;
  }

  return result;
}

BOOL sub_100078FD4(int a1, int a2)
{
  result = 1;
  if (a1 <= 130)
  {
    if ((a1 - 27) > 0x2B || ((1 << (a1 - 27)) & 0x80400000001) == 0)
    {
      return a1 || ((a2 - 1) & 0xFFFFFFFB) != 0;
    }

    return 0;
  }

  if (a1 == 131 || a1 == 134)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100079038(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_25;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_25;
  }

  result = sub_10004B1AC(result, a2);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_25;
  }

  v4 = (*(*result + 744))(result);
  if (v4)
  {
LABEL_6:
    sub_100075B90(v2, a2, 0);
    sub_100075B90(v2, a2, 3);
    sub_100075B90(v2, a2, 4);
    sub_100075B90(v2, a2, 6);
    return 0;
  }

  result = sub_10004B1AC(v4, v5);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_25;
  }

  result = (*(*result + 752))(result);
  if (!result)
  {
    if (a2)
    {
      goto LABEL_15;
    }

    __break(0x5518u);
LABEL_25:
    __break(0x5516u);
    goto LABEL_26;
  }

  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_25;
  }

  result = (*(*a2 + 208))(a2);
  if (result == 1)
  {
    goto LABEL_6;
  }

LABEL_15:
  v6 = *(v2 + 1416);
  if (v6 + 8 <= 0xF)
  {
    if (v6 > 5 || ((1 << v6) & 0x39) == 0)
    {
      sub_100075B90(v2, a2, 0);
    }

    result = sub_100075B90(v2, a2, 3);
    if (result)
    {
      v9 = 7;
      if ((a2 & 7) == 0)
      {
        v7 = (*(*a2 + 16))(a2, 0);
        sub_1000B748C(a2, 0, 0, 25, v7, &v9, 1);
      }
    }

    else if ((a2 & 7) == 0)
    {
      v8 = (*(*a2 + 16))(a2, 0);
      sub_1000B748C(a2, 0, 0, 20, v8, 0, 0);
    }

    goto LABEL_25;
  }

LABEL_26:
  __break(0x550Au);
  __break(0x5507u);
  return result;
}

uint64_t sub_100079318(uint64_t result)
{
  if (!result || (result & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
    goto LABEL_13;
  }

  v1 = *(result + 1976);
  if (v1 < 2)
  {
    if ((v1 & 1) != 0 || *(result + 1968))
    {
      return 0;
    }

    v4 = 0;
    result = *(result + 8);
    if (result)
    {
      if ((result & 7) == 0)
      {
        result = sub_100018DC0(result);
        if (result)
        {
          v2 = result;
          if ((result & 7) == 0)
          {
            v3 = (*(*result + 16))(result, 0);
            sub_1000B748C(v2, 0, 0, 39, v3, &v4, 1);
          }
        }
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x550Au);
  return result;
}

void sub_100079448(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    goto LABEL_189;
  }

  v2 = a1;
  if ((a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_189;
  }

  v6 = *(a2 + 128);
  v3 = *(a2 + 8);
  v4 = *(a2 + 68);
  v96 = 4;
  if (!v3)
  {
    sub_1000E1D34();
  }

  v7 = sub_100065198(a1);
  if (!v7 || (v7 & 7) != 0)
  {
    goto LABEL_189;
  }

  v82 = sub_1000933B0(v7, v3);
  v95 = 5380;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __buf[14] = v8;
  __buf[15] = v8;
  __buf[12] = v8;
  __buf[13] = v8;
  __buf[10] = v8;
  __buf[11] = v8;
  __buf[8] = v8;
  __buf[9] = v8;
  __buf[6] = v8;
  __buf[7] = v8;
  __buf[4] = v8;
  __buf[5] = v8;
  __buf[2] = v8;
  __buf[3] = v8;
  __buf[0] = v8;
  __buf[1] = v8;
  v9 = kdebug_trace();
  v10 = *(v2 + 1416);
  if ((v10 + 8) >= 0x10)
  {
    goto LABEL_191;
  }

  if (v10 != 3)
  {
    v96 = 7;
    if (*(v2 + 1440) == 2 && *(v2 + 1443) == 7 && *(v2 + 1444) == 7)
    {
      v14 = *(v2 + 1445);
      if (v14 == 255)
      {
        goto LABEL_196;
      }

      v15 = v14 + 1;
      *(v2 + 1445) = v15;
      if ((v15 & 0xFC) == 0)
      {
        v96 = 4;
        LOBYTE(v95) = 4;
        v16 = 1;
        v27 = 2;
LABEL_67:
        v17 = 2;
LABEL_41:
        sub_1000B7DB4(a2, v3, 0, 0, v27, v4, &v95, v17);
        sub_1000B6DB4(*(v2 + 8), a2, 0, 1u);
        if ((v16 & 1) == 0)
        {
          sub_100079038(v2, v3);
        }

        goto LABEL_43;
      }
    }

    v16 = 0;
    LOBYTE(v95) = 7;
    v17 = 1;
LABEL_40:
    v27 = 22;
    goto LABEL_41;
  }

  v11 = *(a2 + 24);
  __n = 0;
  v93 = 20;
  v96 = 8;
  if (v6 < 2)
  {
    v13 = 255;
    v12 = 255;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_189;
    }

    if (v11 == -1)
    {
      goto LABEL_195;
    }

    v12 = *v11;
    v13 = v11[1];
  }

  v18 = *(v2 + 1440);
  if (__PAIR64__(*(v2 + 1441), v18) != __PAIR64__(v13, v12))
  {
    syslog(3, "%s ERROR: Auth version mismatch, expected major.minor: %02X.%02X, received %02X.%02X\n", "HandleRetDevAuthenticationInfo", v18, *(v2 + 1441), v12, v13);
    v16 = 0;
    goto LABEL_39;
  }

  v19 = sub_100065198(v9);
  if (!v19 || (v19 & 7) != 0)
  {
    goto LABEL_189;
  }

  v20 = sub_100059008(v19, v3, v12, v13, &__n);
  v21 = *(v2 + 2368);
  if (v21 > 1)
  {
    goto LABEL_191;
  }

  v22 = v20;
  if (v21)
  {
    goto LABEL_44;
  }

  if ((v3 & 7) != 0)
  {
    goto LABEL_189;
  }

  v20 = (*(*v3 + 272))(v3);
  if (!v20)
  {
LABEL_44:
    if (v22)
    {
      goto LABEL_82;
    }
  }

  else if (v12 != 2 || v13)
  {
    v23 = *(v2 + 8);
    if (v23 && (v23 & 7) == 0)
    {
      if (sub_10005BFD0(v23))
      {
LABEL_36:
        *(v2 + 1438) = 0;
        sub_100075B90(v2, v3, 2);
        sub_100075B90(v2, v3, 0);
        sub_100076C34(*(v2 + 8), v3, 0);
LABEL_37:
        v16 = 1;
LABEL_39:
        LOBYTE(v95) = v96;
        v17 = 1;
        goto LABEL_40;
      }

      if (v24 && (v24 & 7) == 0)
      {
        v25 = *(v2 + 8);
        v26 = (*(*v24 + 392))(v24);
        sub_100076B84(1, v25, v3, v26, 0);
        goto LABEL_36;
      }
    }

    goto LABEL_189;
  }

  v28 = sub_100065198(v20);
  if (!v28 || (v28 & 7) != 0)
  {
    goto LABEL_189;
  }

  LODWORD(v9) = sub_100092F68(v28, v3);
  v29 = v9 & 3;
  if (v6 == 2 && v12 == 1)
  {
    v96 = 0;
    sub_1000B7DB4(a2, v3, 0, 0, 22, v4, &v96, 1);
    sub_1000B6DB4(*(v2 + 8), a2, 0, 1u);
    v9 = sub_100075B90(v2, v3, 4);
    if (v29 == 2 && v82 != 56 && !*(v2 + 1978))
    {
      v9 = sub_100079318(v2);
    }

    if (__n - 16 > 4)
    {
      __break(0x5518u);
      goto LABEL_135;
    }

    *(v2 + 1446) = __n;
    v30 = sub_100065198(v9);
    if (v30 && (v30 & 7) == 0)
    {
      sub_100059D78(v30, v3, __n, __buf);
      if (!v9)
      {
        v31 = __n;
        if (__n < 0x100)
        {
          v32 = __buf;
          if (!__CFADD__(__buf, __n))
          {
            *(__buf + __n) = *(v2 + 1438);
            v33 = v31 + 1;
            goto LABEL_60;
          }

          goto LABEL_195;
        }

LABEL_197:
        __break(0x5512u);
LABEL_198:
        sub_1000E22F0(v9);
      }

LABEL_135:
      sub_1000E22F0(v9);
    }

LABEL_189:
    __break(0x5516u);
    goto LABEL_190;
  }

  if (v6 - 5 > 0x7FF || v12 != 2)
  {
LABEL_82:
    v16 = 0;
    goto LABEL_39;
  }

  if (v11 > 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_195;
  }

  v34 = v11[2];
  v35 = v11[3];
  if (v34 > v35)
  {
    goto LABEL_82;
  }

  pthread_mutex_lock((v2 + 1448));
  if (v34 || *(v2 + 1443) || *(v2 + 1444))
  {
    if (v34 != *(v2 + 1443) || v35 != *(v2 + 1444) || (v9 = *(v2 + 1408)) == 0)
    {
      v36 = 7;
      goto LABEL_80;
    }

    v81 = v29;
    if ((v9 & 3) != 0)
    {
      goto LABEL_189;
    }

    if (v11 <= 0xFFFFFFFFFFFFFFFBLL)
    {
      if ((v6 - 4) >> 16)
      {
        goto LABEL_196;
      }

      LODWORD(v9) = sub_10005A0DC(v9, v11 + 4, (v6 - 4));
      if (v9)
      {
        v36 = 4;
LABEL_80:
        v96 = v36;
LABEL_81:
        pthread_mutex_unlock((v2 + 1448));
        goto LABEL_82;
      }

      v96 = 0;
      goto LABEL_93;
    }

LABEL_195:
    __break(0x5513u);
    goto LABEL_196;
  }

  v81 = v29;
  v9 = *(v2 + 1408);
  if (!v9)
  {
    operator new();
  }

  if ((v9 & 3) != 0)
  {
    goto LABEL_189;
  }

  if (v11 > 0xFFFFFFFFFFFFFFFBLL)
  {
    goto LABEL_195;
  }

  if ((v6 - 4) >> 16)
  {
    goto LABEL_196;
  }

  LODWORD(v9) = sub_10005A084(v9, v11 + 4, (v6 - 4));
  if (!v9)
  {
    v96 = 0;
    *(v2 + 1444) = v35;
LABEL_93:
    v37 = 1;
    goto LABEL_94;
  }

  v37 = v96 == 0;
LABEL_94:
  if (!v37 || v34 != v35)
  {
    if (!v37)
    {
      goto LABEL_81;
    }

    if (v34 != 255)
    {
      *(v2 + 1443) = v34 + 1;
      pthread_mutex_unlock((v2 + 1448));
      LOBYTE(v95) = v96;
      v16 = 1;
      v27 = 2;
      goto LABEL_67;
    }

LABEL_196:
    __break(0x5507u);
    goto LABEL_197;
  }

  v92 = 0;
  v38 = *(v2 + 1408);
  if (!v38)
  {
    goto LABEL_132;
  }

  if ((v38 & 3) != 0)
  {
    goto LABEL_189;
  }

  v39 = sub_10005A184(v38, &v92);
  if (v39)
  {
    goto LABEL_132;
  }

  v40 = sub_100065198(v39);
  if (!v40 || (v40 & 7) != 0)
  {
    goto LABEL_189;
  }

  v41 = sub_100092B58(v40, v3);
  if ((v41 & ~v92) != 0)
  {
    v36 = 11;
    goto LABEL_80;
  }

  v44 = *(v2 + 1408);
  if (!v44)
  {
    goto LABEL_132;
  }

  if ((v44 & 3) != 0)
  {
    goto LABEL_189;
  }

  if (!sub_10005A3A0(v44, v42, v43))
  {
    goto LABEL_132;
  }

  v45 = *(v2 + 1408);
  if (!v45 || (v45 & 3) != 0)
  {
    goto LABEL_189;
  }

  if (sub_10005A364(v45))
  {
LABEL_132:
    v36 = 10;
    goto LABEL_80;
  }

  sub_10006733C(v2, 0xFFFFFFFFLL, &v93, 0, 0xFFFFLL);
  v91 = 0x7FFFFFFF;
  v46 = *(v2 + 1408);
  if (!v46 || (v46 & 3) != 0)
  {
    goto LABEL_189;
  }

  v47 = sub_10005A2E0(v46, &v91);
  if (!v47)
  {
    v48 = sub_100065198(v47);
    if (!v48 || (v48 & 7) != 0)
    {
      goto LABEL_189;
    }

    if (v91 < 0)
    {
      goto LABEL_191;
    }

    sub_100058F68(v48, v3, v91);
  }

  if (!v96)
  {
    v49 = *(v2 + 2368);
    if (v49 > 1)
    {
      goto LABEL_191;
    }

    if ((v49 & 1) == 0)
    {
      if ((v3 & 7) != 0)
      {
        goto LABEL_189;
      }

      if ((*(*v3 + 272))(v3))
      {
        if (v91 < 0)
        {
          goto LABEL_191;
        }

        if (v91)
        {
          pthread_mutex_unlock((v2 + 1448));
          v50 = *(v2 + 8);
          if (!v50 || (v50 & 7) != 0)
          {
            goto LABEL_189;
          }

          if ((sub_10005BFD0(v50) & 1) == 0)
          {
            if (!v51 || (v51 & 7) != 0)
            {
              goto LABEL_189;
            }

            v52 = *(v2 + 8);
            v53 = (*(*v51 + 392))(v51);
            sub_100076B84(1, v52, v3, v53, 0);
          }

          *(v2 + 1438) = 0;
          sub_100075B90(v2, v3, 2);
          sub_100075B90(v2, v3, 0);
          sub_100076C34(*(v2 + 8), v3, 0);
          pthread_mutex_lock((v2 + 1448));
          v96 = 11;
          pthread_mutex_unlock((v2 + 1448));
          goto LABEL_37;
        }
      }
    }
  }

  v87 = 0;
  v88 = &v87;
  v89 = 0x2000000000;
  v90 = 0;
  sub_1000B7DB4(a2, v3, 0, 0, 22, v4, &v96, 1);
  sub_1000B6DB4(*(v2 + 8), a2, 0, 1u);
  v54 = sub_10003848C();
  v55 = *(v2 + 8);
  if (!v55)
  {
    goto LABEL_189;
  }

  if ((v55 & 7) != 0)
  {
    goto LABEL_189;
  }

  v56 = sub_100018DC0(v55);
  if (!v56 || (v56 & 7) != 0)
  {
    goto LABEL_189;
  }

  if ((*(*v56 + 224))(v56))
  {
    *(v88 + 24) = 1;
    goto LABEL_164;
  }

  v57 = *(v2 + 8);
  if (!v57)
  {
    goto LABEL_189;
  }

  if ((v57 & 7) != 0)
  {
    goto LABEL_189;
  }

  sub_10005CB70(v57, 1);
  v86 = 0;
  v58 = *(v2 + 1408);
  if (!v58 || (v58 & 3) != 0)
  {
    goto LABEL_189;
  }

  sub_10005A15C(v58, &v86);
  v97[0] = 0xAAAAAAAAAAAAAAAALL;
  v97[1] = 0xAAAAAAAAAAAAAAAALL;
  v85 = v97;
  v84 = 16;
  v59 = IapAuthCertSerial();
  v60 = dispatch_semaphore_create(0);
  if (v59)
  {
    v61 = v60;
    v62 = malloc_type_calloc((2 * v84) | 1, 1uLL, 0x100004077774924uLL);
    v63 = sub_100038378(v62, (2 * v84) | 1, v85, v84, "%02X", 0);
    v65 = sub_100048620(v63, v64);
    if (!v65 || (v65 & 7) != 0)
    {
      goto LABEL_189;
    }

    if ((*(*v65 + 208))(v65))
    {
      v66 = *(v2 + 8);
      if (!v66)
      {
        goto LABEL_189;
      }

      if ((v66 & 7) != 0)
      {
        goto LABEL_189;
      }

      v67 = sub_100018DC0(v66);
      if (!v67 || (v67 & 7) != 0)
      {
        goto LABEL_189;
      }

      v68 = (*(*v67 + 224))(v67) ^ 1;
    }

    else
    {
      v68 = 0;
    }

    v83[0] = _NSConcreteStackBlock;
    v83[1] = 0x40000000;
    v83[2] = sub_10007A218;
    v83[3] = &unk_100116010;
    v83[4] = &v87;
    v83[5] = v61;
    sub_100013804(v62, v2 + 1592, v68, v83);
    syslog(4, "Waiting for user authorization...");
    if (!v61)
    {
      goto LABEL_199;
    }

    dispatch_semaphore_wait(v61, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v61);
    if (v62)
    {
      free(v62);
    }

    syslog(4, "Done waiting for user authorization!");
  }

  else
  {
    syslog(3, "Couldn't get cert serial for user authorization!\n");
  }

  v69 = *(v88 + 24);
  if (v69 > 1)
  {
LABEL_191:
    __break(0x550Au);
    goto LABEL_192;
  }

  if ((v69 & 1) == 0)
  {
LABEL_190:
    pthread_mutex_unlock((v2 + 1448));
    sub_100075B90(v2, v3, -1);
    pthread_mutex_lock((v2 + 1448));
    v80 = 0;
    v32 = &v95;
    v33 = 2;
    goto LABEL_193;
  }

LABEL_164:
  v70 = sub_10003848C();
  v71 = v70 >= v54;
  v72 = v70 - v54;
  if (!v71)
  {
    __break(0x5515u);
    __break(0x550Cu);
LABEL_199:
    __break(0x5510u);
LABEL_200:
    __break(0x5500u);
    return;
  }

  syslog(3, "Authorization response time: %dms\n", v72);
  v74 = *(v2 + 8);
  v76 = (v74 & 7) == 0 && v74 != 0;
  if (v72 < 751)
  {
    if (!v76)
    {
      goto LABEL_189;
    }

    sub_10005CB70(v74, 0);
    pthread_mutex_unlock((v2 + 1448));
    sub_100075B90(v2, v3, 4);
    v77 = pthread_mutex_lock((v2 + 1448));
    if (v81 == 2 && v82 != 56 && !*(v2 + 1978))
    {
      v77 = sub_100079318(v2);
    }

    v78 = sub_100065198(v77);
    if (!v78 || (v78 & 7) != 0)
    {
      goto LABEL_189;
    }

    sub_100059D78(v78, v3, __n, __buf);
    v79 = *(v2 + 1408);
    if (v79)
    {
      if ((v79 & 3) != 0)
      {
        goto LABEL_189;
      }

      LODWORD(v9) = sub_10005A3BC(v79, __buf, __n);
      if (v9)
      {
        goto LABEL_198;
      }

      v33 = __n + 1;
      if (__n != -1)
      {
        if (__n <= 0xFF)
        {
          v32 = __buf;
          if (!__CFADD__(__buf, __n))
          {
            *(__buf + __n) = *(v2 + 1438);
            v80 = 1;
            goto LABEL_193;
          }

          goto LABEL_195;
        }

        goto LABEL_197;
      }

      goto LABEL_200;
    }

LABEL_192:
    v96 = 10;
    v33 = 2;
    v32 = &v95;
    v80 = 1;
LABEL_193:
    _Block_object_dispose(&v87, 8);
    pthread_mutex_unlock((v2 + 1448));
    if (!v80)
    {
LABEL_43:
      kdebug_trace();
      return;
    }

LABEL_60:
    sub_100075B90(v2, v3, 5);
    sub_1000B748C(v3, 0, 0, 23, v4, v32, v33);
  }

  if (!v76)
  {
    goto LABEL_189;
  }

  sub_10005CC18(v74, v73);
  pthread_mutex_unlock((v2 + 1448));
  _Block_object_dispose(&v87, 8);
}

NSObject *sub_10007A218(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  *(*(v3 + 8) + 24) = a2;
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  __break(0x5510u);
  return result;
}

uint64_t sub_10007A230(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    goto LABEL_90;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_90;
  }

  v38 = 4;
  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_90;
  }

  v4 = *(result + 1416);
  if ((v4 + 8) >= 0x10)
  {
    goto LABEL_91;
  }

  v5 = *(a2 + 128);
  v6 = *(a2 + 8);
  if (v5 >= *(result + 1446) && v4 == 5 && v5 <= *(result + 1436))
  {
    v8 = *(a2 + 24);
    v38 = 7;
    v37 = 23;
    v9 = sub_10006733C(result, 0xFFFFFFFFLL, &v37, 0, 0xFFFFLL);
    if ((byte_10012BCB0 & 1) == 0)
    {
      v10 = *(v2 + 1440);
      if (v10 == 2)
      {
        pthread_mutex_lock((v2 + 1448));
        if (!v8 || (result = *(v2 + 1408)) == 0)
        {
          pthread_mutex_unlock((v2 + 1448));
          v7 = 2;
          goto LABEL_30;
        }

        if ((result & 3) != 0)
        {
          goto LABEL_90;
        }

        v7 = sub_10005A414(result, v8, v5);
        pthread_mutex_unlock((v2 + 1448));
        if (v7)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v10 != 1)
        {
          v7 = 94;
          goto LABEL_30;
        }

        result = sub_100065198(v9);
        if (!result || (result & 7) != 0)
        {
          goto LABEL_90;
        }

        result = sub_1000932FC(result, v6);
        v11 = *(v2 + 2369);
        if (v11 > 1)
        {
          goto LABEL_91;
        }

        v12 = result;
        if (result == 53248 && (v11 & 1) != 0)
        {
          sub_1000DDEEC(0, 4, "%s:%d Debug DeviceID, pretend valid signature\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 3135);
        }

        else
        {
          v36 = -1431655766;
          v35 = 0xAAAAAAAAAAAAAAAALL;
          v13 = pthread_self();
          pthread_getschedparam(v13, &v36, &v35);
          sched_priority = v35.sched_priority;
          v35.sched_priority = 31;
          v15 = pthread_self();
          v16 = pthread_setschedparam(v15, v36, &v35);
          result = sub_100065198(v16);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_90;
          }

          v7 = sub_100059E14(result, v6, v12, v8, v5);
          v35.sched_priority = sched_priority;
          v17 = pthread_self();
          pthread_setschedparam(v17, v36, &v35);
          if (v7)
          {
            goto LABEL_30;
          }
        }

        v32 = sub_10006825C(v6);
        if (v32)
        {
          result = sub_100065198(v32);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_90;
          }

          v33 = sub_1000932FC(result, v6);
          if (v33 == 474)
          {
            result = sub_10004B1AC(v33, v34);
            if (!result || (result & 7) != 0)
            {
              goto LABEL_90;
            }

            (*(*result + 176))(result, *(v2 + 8), v6);
          }
        }
      }
    }

    v7 = 0;
    v38 = 0;
LABEL_30:
    sub_1000B7DB4(a2, v6, 0, 0, 25, *(a2 + 68), &v38, 1);
    goto LABEL_31;
  }

  v7 = 2;
  sub_1000B7854(a2, v6, 0, 0, 2, *(a2 + 68), 4, 0x18u, 0, 255, 0, 0, 0, 0);
LABEL_31:
  result = sub_1000B6DB4(*(v2 + 8), a2, 0, 1u);
  if (v38 <= 0x1F)
  {
    if (v38)
    {
      if (v4 == 5)
      {
        return sub_100079038(v2, v6);
      }

      return v7;
    }

    result = sub_100075B90(v2, v6, 6);
    if (!v6 || (v6 & 7) != 0)
    {
      goto LABEL_90;
    }

    result = (*(*v6 + 264))(v6);
    *(v2 + 2215) = result;
    v18 = *(v2 + 2214);
    if (v18 <= 1)
    {
      v19 = v18 == 0;
      v20 = result ^ 1;
      if (!v19)
      {
        v20 = 1;
      }

      if (v20)
      {
        goto LABEL_54;
      }

      v21 = sub_100065198(result);
      v22 = (*(*v6 + 208))(v6);
      result = *(v2 + 8);
      if (!result || (result & 7) != 0)
      {
        goto LABEL_90;
      }

      result = sub_10005BDFC(result);
      if (v22 <= 7)
      {
        if (v22)
        {
          goto LABEL_54;
        }

        if (result == result)
        {
          if (result == 13)
          {
            if (!v21 || (v21 & 7) != 0)
            {
              goto LABEL_90;
            }

            v23 = sub_1000933B0(v21, v6);
            result = sub_100092B58(v21, v6);
            if (v23 == 56 && (result & 0x440) == 0 && (*(v2 + 1272) & 1) != 0)
            {
              result = sub_100076E70(v2, v24, 1);
              if (result)
              {
                sub_1000DDEEC(0, 4, "%s SetLineOutState failed _ackStatus:%02X\n", "HandleRetDevAuthenticationSignature", result);
              }
            }
          }

LABEL_54:
          result = sub_100065198(result);
          if (!result || (result & 7) != 0)
          {
            goto LABEL_90;
          }

          v25 = sub_100092F68(result, v6);
          v26 = v25 >> 4;
          if (v26 == 2)
          {
            v27 = 1;
          }

          else
          {
            v27 = 5;
          }

          if (v26 == 1)
          {
            v28 = 0;
          }

          else
          {
            v28 = v27;
          }

          if (v28 == 5)
          {
            goto LABEL_76;
          }

          v25 = (*(*v6 + 208))(v6);
          if (v28 == v25)
          {
            goto LABEL_76;
          }

          v35.sched_priority = 0;
          pthread_mutex_lock((v2 + 1448));
          result = *(v2 + 1408);
          if (result)
          {
            if ((result & 3) != 0)
            {
              goto LABEL_90;
            }

            v29 = sub_10005A184(result, &v35);
            v7 = v29;
            if (!v29)
            {
              result = sub_100065198(v29);
              if (!result || (result & 7) != 0)
              {
                goto LABEL_90;
              }

              v7 = 0;
              v35.sched_priority &= dword_10012CE80;
            }
          }

          v25 = pthread_mutex_unlock((v2 + 1448));
          if (!v35.sched_priority)
          {
LABEL_76:
            result = sub_100065198(v25);
            if (result && (result & 7) == 0)
            {
              if (sub_100058EBC(result, v6) == 6)
              {
                v31 = *(v2 + 1440);
                sub_100074630(v2, v6, 0, 0);
                if (v31)
                {
                  *(v2 + 1440) = v31;
                }
              }

              else
              {
                sub_100074630(v2, v6, 0, 0);
              }

              return v7;
            }

            goto LABEL_90;
          }

          result = sub_100065198(v25);
          if (result)
          {
            if ((result & 7) == 0)
            {
              v30 = sub_10005941C(result, v6, v35.sched_priority);
              result = sub_100065198(v30);
              if (result)
              {
                if ((result & 7) == 0)
                {
                  v25 = sub_10005939C(result, v6, v28);
                  goto LABEL_76;
                }
              }
            }
          }

LABEL_90:
          __break(0x5516u);
        }
      }
    }
  }

LABEL_91:
  __break(0x550Au);
  return result;
}

uint64_t sub_10007A818(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  if (!v1)
  {
    goto LABEL_31;
  }

  v3 = v1;
  if ((v1 & 7) != 0)
  {
    goto LABEL_31;
  }

  v4 = v2;
  bzero(v14, 0x803uLL);
  v13 = 2;
  if (!v4 || (v4 & 7) != 0)
  {
    goto LABEL_31;
  }

  if (*(v4 + 128))
  {
    return 4;
  }

  v7 = *(v4 + 8);
  v8 = sub_100065198(v5);
  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_31;
  }

  if (sub_100058EBC(v8, v7) != 6)
  {
    return 7;
  }

  if (*(v3 + 1440) != 2)
  {
    return 4;
  }

  memset(__b, 170, sizeof(__b));
  __n = 2048;
  result = sub_100059F60(__b, &__n);
  if (result || (v9 = __n, !__n))
  {
    if (result)
    {
      return 2;
    }

    v10 = 0;
    goto LABEL_28;
  }

  if (__n > 0x8000)
  {
LABEL_34:
    __break(0x5507u);
    return result;
  }

  if (((__n - 1) >> 7))
  {
    if (&v14[2] == 0 || &v13 < 0xFFFFFFFFFFFFFFFDLL)
    {
      v15[4] = __b[4];
      v15[5] = __b[5];
      v15[6] = __b[6];
      v15[7] = __b[7];
      v15[0] = __b[0];
      v15[1] = __b[1];
      v15[2] = __b[2];
      v14[1] = 0;
      v14[2] = (__n - 1) >> 7;
      v15[3] = __b[3];
      if (__b <= 0xFFFFFFFFFFFFFF7FLL)
      {
        if (__n >= 0x80)
        {
          __n -= 128;
          sub_1000B748C(v7, 0, 0, 27, *(v4 + 68), &v13, 132);
        }

        __break(0x5515u);
        goto LABEL_34;
      }
    }

LABEL_32:
    __break(0x5513u);
  }

  if (__n - 1 > 0x7F)
  {
    __break(0x5518u);
LABEL_31:
    __break(0x5516u);
    goto LABEL_32;
  }

  if (&v14[2] != 0 && &v13 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_32;
  }

  v14[1] = 0;
  if (&v13 > 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_32;
  }

  v14[2] = (__n - 1) >> 7;
  if ((v15 + 1) != 0 && &v13 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    goto LABEL_32;
  }

  memcpy(v15, __b, __n);
  v10 = v9 + 4;
LABEL_28:
  sub_1000B7DB4(v4, v7, 0, 0, 27, *(v4 + 68), &v13, v10);
  return 0;
}

uint64_t sub_10007AAC4(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_14;
  }

  if (*(a2 + 128) != 1)
  {
    return 2;
  }

  v3 = *(a2 + 8);
  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_14;
  }

  result = sub_100058EBC(result, v3);
  if (result != 6)
  {
    return 2;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
LABEL_14:
    __break(0x5516u);
    return result;
  }

  if (*v4)
  {
    sub_1000DDEEC(0, 4, "%s:%d authentication status failure.\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 3518);
  }

  return 0;
}

uint64_t sub_10007AB78(uint64_t a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_14;
  }

  v4 = *(a2 + 128);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v12 + 15) = v7;
  v11[13] = v7;
  v12[0] = v7;
  v11[11] = v7;
  v11[12] = v7;
  v11[9] = v7;
  v11[10] = v7;
  v11[8] = v7;
  v11[6] = v7;
  v11[7] = v7;
  v11[4] = v7;
  v11[5] = v7;
  v11[2] = v7;
  v11[3] = v7;
  v11[0] = v7;
  v11[1] = v7;
  if (v4 < 4)
  {
    return 2;
  }

  v8 = sub_100065198(a1);
  if (!v8 || (v8 & 7) != 0)
  {
LABEL_14:
    __break(0x5516u);
  }

  if (sub_100058EBC(v8, v5) != 6 || *(a1 + 1440) != 2)
  {
    return 2;
  }

  v10 = 255;
  result = sub_100059FD8(v5, v6, (v4 - 1), v11, &v10);
  if (!result)
  {
    sub_1000B7DB4(a2, *(a2 + 8), 0, 0, 30, *(a2 + 68), v11, v10);
    return 0;
  }

  return result;
}

uint64_t sub_10007ACC0(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_14;
  }

  if (*(a2 + 128) != 1)
  {
    return 2;
  }

  v3 = *(a2 + 8);
  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_14;
  }

  result = sub_100058EBC(result, v3);
  if (result != 6)
  {
    return 2;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
LABEL_14:
    __break(0x5516u);
    return result;
  }

  if (*v4)
  {
    sub_1000DDEEC(0, 4, "%s:%d Authentication status failure!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 3636);
  }

  return 0;
}

uint64_t sub_10007AD74(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_210;
  }

  v2 = a1;
  if ((a1 & 7) != 0)
  {
    goto LABEL_210;
  }

  v3 = a2;
  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_210;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    return 22;
  }

  v5 = *(a1 + 1976);
  if (v5 >= 2)
  {
    goto LABEL_213;
  }

  v6 = *(a2 + 128);
  v7 = 22;
  if (*(a2 + 128) && (v5 & 1) == 0)
  {
    v8 = *(a2 + 24);
    if (!v8)
    {
      goto LABEL_210;
    }

    v9 = *v8;
    switch(*v8)
    {
      case 0:
        if (v6 != 5 || *(a1 + 1968))
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_215;
        }

        v25 = bswap32(*(v8 + 1));
        if ((v25 & 1) == 0)
        {
          v16 = 0;
          *(a1 + 1968) = 0;
          goto LABEL_89;
        }

        *(a1 + 1968) = v25 & 0xFFFFCFFF;
        v7 = 22;
        v16 = 1;
        goto LABEL_90;
      case 1:
      case 6:
      case 7:
      case 8:
      case 0xE:
        if ((v6 - 2) > 0x3Fu)
        {
          goto LABEL_88;
        }

        v10 = 1;
        break;
      case 2:
        if (v6 != 8)
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_215;
        }

        v18 = *(v8 + 1);
        v19 = sub_10004B1AC(a1, a2);
        if (!v19 || (v19 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = (*(*v19 + 112))(v19);
        if (bswap32(v18) != a1)
        {
          goto LABEL_88;
        }

        if (v8 > 0xFFFFFFFFFFFFFFFALL)
        {
          goto LABEL_211;
        }

        *(v2 + 1662) = *(v8 + 5);
        if (v8 > 0xFFFFFFFFFFFFFFF9)
        {
          goto LABEL_211;
        }

        *(v2 + 1663) = *(v8 + 6);
        if (v8 > 0xFFFFFFFFFFFFFFF8)
        {
          goto LABEL_211;
        }

        *(v2 + 1664) = *(v8 + 7);
        v20 = *(v2 + 8);
        if (!v20 || (v20 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = sub_10005BF5C(v20, (v2 + 1592));
        v7 = 22;
        v16 = 4;
        goto LABEL_90;
      case 3:
        if (v6 != 4)
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_211;
        }

        v27 = *(v8 + 1);
        if (v27 > 0xE)
        {
          goto LABEL_88;
        }

        if (v8 >= 0xFFFFFFFFFFFFFFFDLL || __CFADD__(a1 + 1666, 2 * v27))
        {
          goto LABEL_211;
        }

        *(a1 + 1666 + 2 * v27) = bswap32(*(v8 + 2)) >> 16;
        v28 = *(a1 + 8);
        if (!v28 || (v28 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = sub_10005BF5C(v28, (v2 + 1592));
        v7 = 22;
        v16 = 8;
        goto LABEL_90;
      case 4:
        if (v6 != 4)
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_211;
        }

        *(a1 + 1656) = *(v8 + 1);
        if (v8 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_211;
        }

        *(a1 + 1657) = *(v8 + 2);
        if (v8 > 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_211;
        }

        *(a1 + 1658) = *(v8 + 3);
        v17 = *(a1 + 8);
        if (!v17 || (v17 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = sub_10005BF5C(v17, (v2 + 1592));
        v7 = 22;
        v16 = 16;
        goto LABEL_90;
      case 5:
        if (v6 != 4)
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_211;
        }

        *(a1 + 1659) = *(v8 + 1);
        if (v8 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_211;
        }

        *(a1 + 1660) = *(v8 + 2);
        if (v8 > 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_211;
        }

        *(a1 + 1661) = *(v8 + 3);
        v26 = *(a1 + 8);
        if (!v26 || (v26 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = sub_10005BF5C(v26, (v2 + 1592));
        v7 = 22;
        v16 = 32;
        goto LABEL_90;
      case 9:
        if (v6 != 3)
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_215;
        }

        a2 = bswap32(*(v8 + 1)) >> 16;
        if (a2 < 0x80)
        {
          goto LABEL_88;
        }

        if ((v4 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = (*(*v4 + 144))(*(v3 + 8));
        v7 = 22;
        v16 = 512;
        goto LABEL_90;
      case 0xA:
        if (v6 != 2)
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_211;
        }

        v16 = (*(v8 + 1) > 7u) << 10;
        goto LABEL_89;
      case 0xB:
        if (v6 != 5)
        {
          goto LABEL_88;
        }

        if (v8 == -1)
        {
          goto LABEL_215;
        }

        v21 = bswap32(*(v8 + 1));
        *(a1 + 1952) = v21;
        v22 = *(a1 + 8);
        v23 = (v22 & 7) != 0 || v22 == 0;
        v24 = !v23;
        if ((v21 & 0xF) != 0)
        {
          if (!v24)
          {
            goto LABEL_210;
          }

          sub_10005BD18(v22, 0, 2u);
        }

        else
        {
          if (!v24)
          {
            goto LABEL_210;
          }

          sub_10005BD4C(v22, 0, 2u);
        }

        v62 = *(v2 + 1952) & 0xF;
        if (v62)
        {
          v7 = sub_10007B860(*(v2 + 8), v62);
        }

        else
        {
          v7 = 22;
        }

        v63 = *(v2 + 8);
        if (!v63 || (v63 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = sub_10005BF5C(v63, (v2 + 1592));
        v16 = 2048;
        goto LABEL_90;
      case 0xC:
        sub_1000DDEEC(0, 4, "%s:%d Accessory returned OTA data - should never be here\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 3864);
        v7 = 22;
        v16 = 4096;
        goto LABEL_90;
      case 0xD:
        sub_1000DDEEC(0, 4, "%s:%d Accessory returned OTA waiver data - should never be here\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 3870);
        v7 = 22;
        v16 = 0x2000;
        goto LABEL_90;
      default:
        return 22;
    }

    while (1)
    {
      if (~v8 < v10)
      {
        goto LABEL_211;
      }

      if (!*(v8 + v10))
      {
        break;
      }

      if (v10 == 0xFF)
      {
        __break(0x5507u);
LABEL_213:
        __break(0x550Au);
LABEL_214:
        __break(0x5514u);
LABEL_215:
        __break(0x5500u);
        JUMPOUT(0x10007B824);
      }

      v11 = v10 + 1;
      if (v10++ >= v6)
      {
        goto LABEL_22;
      }
    }

    v11 = v10;
LABEL_22:
    if (v6 <= v11)
    {
LABEL_88:
      v16 = 0;
      goto LABEL_89;
    }

    if (*v8 <= 6u)
    {
      if (v9 == 1)
      {
        if (v8 == -1)
        {
          goto LABEL_211;
        }

        v14 = v6 - 1;
        v15 = (a1 + 1592);
        goto LABEL_181;
      }

      if (v9 == 6)
      {
        if (v8 == -1)
        {
          goto LABEL_211;
        }

        v14 = v6 - 1;
        v15 = (a1 + 1696);
        goto LABEL_181;
      }
    }

    else
    {
      switch(v9)
      {
        case 7:
          if (v8 == -1)
          {
            goto LABEL_211;
          }

          v14 = v6 - 1;
          v15 = (a1 + 1760);
          goto LABEL_181;
        case 8:
          if (v8 == -1)
          {
            goto LABEL_211;
          }

          v14 = v6 - 1;
          v15 = (a1 + 1824);
          goto LABEL_181;
        case 14:
          if (v8 == -1)
          {
            goto LABEL_211;
          }

          v14 = v6 - 1;
          v15 = (a1 + 1888);
LABEL_181:
          memcpy(v15, (v8 + 1), v14);
          break;
      }
    }

    v54 = *v8;
    if (v54 > 0x1F)
    {
      goto LABEL_214;
    }

    v55 = *(v2 + 8);
    if (!v55 || (v55 & 7) != 0)
    {
      goto LABEL_210;
    }

    v16 = 1 << v54;
    a1 = sub_10005BF5C(v55, (v2 + 1592));
LABEL_89:
    v7 = 22;
LABEL_90:
    if (*(v2 + 1968) && v16)
    {
      if (v16 == 8)
      {
        v29 = sub_100065198(a1);
        if (!v29 || (v29 & 7) != 0)
        {
          goto LABEL_210;
        }

        a1 = sub_100092B58(v29, v4);
        if (a1 == *(v2 + 1972))
        {
          goto LABEL_104;
        }

LABEL_96:
        LOWORD(v68) = 3;
        v30 = sub_100065198(a1);
        if (!v30 || (v30 & 7) != 0)
        {
          goto LABEL_210;
        }

        v31 = sub_100092B58(v30, v4);
        v32 = 0;
        for (i = 1; ((*(v2 + 1972) ^ v31) & i) == 0; i *= 2)
        {
          if (v32++ > 0xD)
          {
            sub_1000DDEEC(0, 4, "%s:%d invalid lingo number!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 4082);
            return 12;
          }
        }

        if (&v64 != -33)
        {
          BYTE1(v68) = v32;
          sub_1000B748C(v4, 0, 0, 39, *(v3 + 68), &v68, 2);
        }
      }

      else
      {
        if ((v16 & 0x80000000) != 0)
        {
          goto LABEL_214;
        }

LABEL_104:
        while (!(v16 >> 14))
        {
          v35 = 2 * v16;
          v23 = (*(v2 + 1968) & (2 * v16)) == 0;
          v16 *= 2;
          if (!v23)
          {
            if (v35 > 0x7Fu)
            {
              if (v35 <= 0x3FFu)
              {
                switch(v35)
                {
                  case 0x80u:
                    v36 = 7;
                    break;
                  case 0x100u:
                    v36 = 8;
                    break;
                  case 0x200u:
                    v36 = 9;
                    break;
                  default:
                    return v7;
                }
              }

              else if (v35 > 0xFFFu)
              {
                if (v35 == 4096)
                {
                  v36 = 12;
                }

                else
                {
                  if (v35 != 0x2000)
                  {
                    return v7;
                  }

                  v36 = 13;
                }
              }

              else if (v35 == 1024)
              {
                v36 = 10;
              }

              else
              {
                if (v35 != 2048)
                {
                  return v7;
                }

                v36 = 11;
              }

LABEL_198:
              LOBYTE(v68) = v36;
              v59 = *(v3 + 68);
              v60 = v4;
              v61 = 1;
LABEL_199:
              sub_1000B748C(v60, 0, 0, 39, v59, &v68, v61);
            }

            if (v35 > 0xFu)
            {
              switch(v35)
              {
                case 0x10u:
                  v36 = 4;
                  break;
                case 0x20u:
                  v36 = 5;
                  break;
                case 0x40u:
                  v36 = 6;
                  break;
                default:
                  return v7;
              }

              goto LABEL_198;
            }

            if (v35 == 2)
            {
              v36 = 1;
              goto LABEL_198;
            }

            if (v35 != 4)
            {
              if (v35 != 8)
              {
                return v7;
              }

              goto LABEL_96;
            }

            v68 = 2;
            v67 = -86;
            v66 = -86;
            v65 = -86;
            v56 = sub_10004B1AC(a1, a2);
            v58 = sub_10004B1AC(v56, v57);
            if (v58)
            {
              if ((v58 & 7) == 0)
              {
                *(&v68 + 1) = bswap32((*(*v58 + 112))(v58));
                if (v56)
                {
                  if ((v56 & 7) == 0)
                  {
                    (*(*v56 + 160))(v56, &v67, &v66, &v65);
                    BYTE5(v68) = v67;
                    BYTE6(v68) = v66;
                    HIBYTE(v68) = v65;
                    v59 = *(v3 + 68);
                    v60 = v4;
                    v61 = 8;
                    goto LABEL_199;
                  }
                }
              }
            }

            goto LABEL_210;
          }
        }

        if (v16 != 0x4000)
        {
          return v7;
        }

        sub_1000651C8(*(v2 + 8), a2);
        if (v37)
        {
          if ((v37 & 7) != 0)
          {
            goto LABEL_210;
          }

          v37 = sub_1000629DC(v37, *(v2 + 1980));
        }

        v38 = *(v2 + 1968);
        if ((v38 & 8) != 0)
        {
          v40 = 0;
          v41 = 0;
          while (1)
          {
            v42 = sub_100065198(v37);
            if (!v42 || (v42 & 7) != 0)
            {
              goto LABEL_210;
            }

            v37 = sub_100092B58(v42, v4);
            if ((v37 >> v41))
            {
              if (v40 > ~(v2 + 1666))
              {
                goto LABEL_211;
              }

              v37 = sub_10007B9B0(v2, v4, v41, *(v2 + 2 * v41 + 1666));
              if (!v37)
              {
                break;
              }
            }

            ++v41;
            v40 += 2;
            if (v41 == 15)
            {
              v39 = 1;
              goto LABEL_149;
            }
          }

          v39 = 0;
LABEL_149:
          v38 = *(v2 + 1968);
        }

        else
        {
          v39 = 1;
        }

        if ((v38 & 4) == 0 || (v43 = *(v2 + 1662), v43 == 255) || (v44 = *(v2 + 1663), v44 == 255) || (v45 = *(v2 + 1664), v45 == 255))
        {
          v46 = 1;
        }

        else
        {
          v46 = sub_10007BA9C(v2, v43, v44, v45);
        }

        v47 = *(v2 + 8);
        if (v47 && (v47 & 7) == 0)
        {
          v48 = sub_10005BDFC(v47);
          if (v46)
          {
            if (v39)
            {
              *(v2 + 1976) = 1;
              if (v48 != v48)
              {
                goto LABEL_213;
              }

              v49 = 7;
            }

            else
            {
              if (v48 != v48)
              {
                goto LABEL_213;
              }

              v49 = 4;
            }
          }

          else
          {
            if (v48 != v48)
            {
              goto LABEL_213;
            }

            v49 = 2;
          }

          if (v48 == -1)
          {
            v50 = 16;
          }

          else
          {
            v50 = v48;
          }

          v51 = sub_100065778(v2, v4, v49, v50);
          if (*(v2 + 1696) || *(v2 + 1760) || *(v2 + 1592))
          {
            v53 = sub_100048620(v51, v52);
            if (!v53 || (v53 & 7) != 0)
            {
              goto LABEL_210;
            }

            (*(*v53 + 312))(v53, v4, *(v2 + 2208), v2 + 1592, v2 + 1760, v2 + 1696);
          }

          return 0;
        }

LABEL_210:
        __break(0x5516u);
      }

LABEL_211:
      __break(0x5513u);
    }
  }

  return v7;
}

uint64_t sub_10007B860(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if ((result & 7) != 0)
    {
      goto LABEL_17;
    }

    result = sub_10005BD04(result);
    if (!result)
    {
      goto LABEL_17;
    }

    v3 = result;
    if ((result & 7) != 0)
    {
      goto LABEL_17;
    }

    v4 = sub_100018DC0(result);
    if (!v4)
    {
      return 2;
    }

    v5 = v4;
    sub_10005BB24(v3, 0);
    result = sub_1000653EC(0, v3);
    if (!result)
    {
      v7 = 2;
LABEL_14:
      sub_10005BB6C(v3, 0);
      return v7;
    }

    if ((result & 7) == 0)
    {
      if ((*(result + 1952) & a2 & 0xF) != 0)
      {
        *(result + 1984) = a2 & 0xF;
        v8 = bswap32(a2);
        if ((v5 & 7) == 0)
        {
          v6 = (*(*v5 + 16))(v5, 0);
          sub_1000B748C(v5, 0, 0, 70, v6, &v8, 4);
        }

        goto LABEL_17;
      }

      v7 = 22;
      goto LABEL_14;
    }
  }

  else
  {
    __break(0x5518u);
  }

LABEL_17:
  __break(0x5516u);
  return result;
}

BOOL sub_10007B9B0(_BOOL8 result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!result || result & 7 || !a2 || (a2 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v6 = *(result + 1516);
    v7 = (*(*a2 + 224))(a2);
    if (a3 > 0xE)
    {
      return 0;
    }

    v8 = v6 & 0x721D;
    if (!v7)
    {
      v8 = v6;
    }

    if ((v8 >> a3))
    {
      v10 = -1;
      v9 = -1;
      sub_100065198(v7);
      sub_1000C9B60(a3, &v10, &v9);
      result = 0;
      if (v10 != 255 && v9 != 255)
      {
        return (v9 | (v10 << 8)) >= a4;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10007BA9C(uint64_t result, uint64_t a2, int a3, unsigned int a4)
{
  if (!result || (result & 7) != 0 || (v6 = a2, v9 = -86, v8 = -86, v7 = -86, (result = sub_10004B1AC(result, a2)) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    (*(*result + 160))(result, &v9, &v8, &v7);
    return ((v6 << 16) | (a3 << 8) | a4) <= ((v9 << 16) | (v8 << 8) | v7);
  }

  return result;
}

uint64_t sub_10007BB60(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    goto LABEL_143;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_143;
  }

  if (!a2)
  {
    goto LABEL_143;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_143;
  }

  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 128);
  v25 = -21846;
  v7 = sub_100046A8C(a1, a2);
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_143;
  }

  if ((v8 & 7) != 0)
  {
    goto LABEL_143;
  }

  v9 = sub_10005BC54(v8);
  v10 = sub_100065198(v9);
  if (!v10)
  {
    goto LABEL_143;
  }

  v11 = v10;
  if ((v10 & 7) != 0)
  {
    goto LABEL_143;
  }

  v12 = sub_100092F68(v10, v4);
  v13 = sub_100058FB0(v11, v4);
  if (!v6 || (v12 & 3) != 1 || v13)
  {
    goto LABEL_16;
  }

  if (!v5)
  {
LABEL_143:
    __break(0x5516u);
    goto LABEL_144;
  }

  v14 = *v5;
  if (v14 != 3 && v14 <= 0x16)
  {
    sub_1000B7854(a2, v4, 0, 0, 2, *(a2 + 68), 7, 0x29u, 0, 255, 0, 0, 0, 0);
    sub_1000B6DB4(*(a1 + 8), a2, 0, 1u);
    sub_100079038(a1, v4);
    return 25;
  }

LABEL_16:
  v15 = 4;
  if (v5)
  {
    if (v6 == 1)
    {
      v16 = *v5;
      if (v16 <= 0x16)
      {
        LOBYTE(v25) = *v5;
        switch(v16)
        {
          case 0u:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v18 = sub_1000BE5F8(v9 + 16);
            if (v18 > 3)
            {
              goto LABEL_145;
            }

            if (v18 == 1)
            {
              goto LABEL_127;
            }

            if (v18 != 2)
            {
              goto LABEL_132;
            }

            goto LABEL_130;
          case 1u:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v17 = sub_1000BF398(v9 + 16);
            goto LABEL_92;
          case 2u:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v17 = sub_1000BF360(v9 + 16);
            if (v17 > 3)
            {
              goto LABEL_145;
            }

            LOBYTE(v17) = v17 != 0;
            goto LABEL_93;
          case 3u:
            if (!v7 || (v7 & 7) != 0)
            {
              goto LABEL_143;
            }

            if (!(*(*v7 + 192))(v7, v4))
            {
              goto LABEL_132;
            }

            if (!sub_10006852C(v4))
            {
              return 7;
            }

            if (!v9)
            {
              goto LABEL_143;
            }

            if ((v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v19 = *(v9 + 168);
            if (!v19 || (v19 & 7) != 0)
            {
              goto LABEL_143;
            }

            if (&v24 == -31)
            {
              goto LABEL_144;
            }

            LOBYTE(v17) = *(v19 + 16) != 0;
            goto LABEL_94;
          case 4u:
          case 5u:
          case 6u:
          case 7u:
            if (sub_10007C398(v4))
            {
              return 16;
            }

            else
            {
              return 7;
            }

          case 8u:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v21 = sub_1000BF3D0(v9 + 16);
            if (v21 > 7)
            {
              goto LABEL_145;
            }

            v15 = 7;
            if (v21 <= 1)
            {
              if (v21)
              {
LABEL_130:
                if (&v25 == -1)
                {
                  goto LABEL_144;
                }

                LOBYTE(v17) = 1;
              }

              else
              {
LABEL_132:
                if (&v25 == -1)
                {
                  goto LABEL_144;
                }

                LOBYTE(v17) = 0;
              }
            }

            else
            {
              switch(v21)
              {
                case 2:
LABEL_127:
                  if (&v24 == -31)
                  {
                    goto LABEL_144;
                  }

                  LOBYTE(v17) = 2;
                  break;
                case 3:
                  if (&v24 == -31)
                  {
                    goto LABEL_144;
                  }

                  LOBYTE(v17) = 3;
                  break;
                case 4:
                  if (&v24 != -31)
                  {
                    LOBYTE(v17) = 4;
                    break;
                  }

LABEL_144:
                  __break(0x5513u);
LABEL_145:
                  __break(0x550Au);
                  JUMPOUT(0x10007C33CLL);
                default:
                  return v15;
              }
            }

LABEL_94:
            HIBYTE(v25) = v17;
LABEL_95:
            v20 = *(a2 + 8);
            if (v20)
            {
              sub_1000B7DB4(a2, v20, 0, 0, 42, *(a2 + 68), &v25, 2);
              return 0;
            }

            __break(0x5518u);
            goto LABEL_143;
          case 9u:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v17 = sub_1000BF408(v9 + 16);
            goto LABEL_92;
          case 0xAu:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v17 = sub_1000BF328(v9 + 16);
            goto LABEL_92;
          case 0xCu:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v17 = sub_1000BF440(v9 + 16);
            goto LABEL_92;
          case 0xDu:
            if (!sub_10007C398(v4))
            {
              goto LABEL_112;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v17 = sub_1000BF478(v9 + 16);
LABEL_92:
            if (v17 <= 1)
            {
              goto LABEL_93;
            }

            goto LABEL_145;
          case 0xEu:
            if (!v7 || (v7 & 7) != 0)
            {
              goto LABEL_143;
            }

            if (!(*(*v7 + 240))(v7, v4))
            {
              return v15;
            }

            if (!sub_10007C398(v4))
            {
              return 7;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            LOBYTE(v17) = sub_10007C408(v9);
            goto LABEL_93;
          case 0xFu:
            if (!sub_10007C398(v4))
            {
              return 7;
            }

            v17 = *(a1 + 2203);
            goto LABEL_92;
          case 0x10u:
            if (!v7 || (v7 & 7) != 0)
            {
              goto LABEL_143;
            }

            if (!(*(*v7 + 248))(v7, v4))
            {
              return v15;
            }

            if (!sub_10007C398(v4))
            {
              return 7;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            LOBYTE(v17) = sub_10007C43C(v9);
            goto LABEL_93;
          case 0x11u:
            if (!sub_10007C398(v4))
            {
              return 7;
            }

            if (!v7 || (v7 & 7) != 0)
            {
              goto LABEL_143;
            }

            if (((*(*v7 + 184))(v7) & 1) == 0 && !(*(*v7 + 200))(v7))
            {
              return v15;
            }

            if (!sub_100068624(v4))
            {
              return 7;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            v22 = *(v9 + 328);
            if (v22 >= 4)
            {
              goto LABEL_145;
            }

            switch(v22)
            {
              case 2u:
                goto LABEL_127;
              case 1u:
                goto LABEL_130;
              case 0u:
                goto LABEL_132;
            }

            goto LABEL_95;
          case 0x12u:
            if (!v7 || (v7 & 7) != 0)
            {
              goto LABEL_143;
            }

            if (!(*(*v7 + 176))(v7) || ((*(*v7 + 160))(v7) & 1) != 0 || ((*(*v7 + 168))(v7) & 1) != 0)
            {
LABEL_112:
              sub_1000DDEEC(0, 4, "%s:%d Bad parameter!\n");
              return v15;
            }

            if (!sub_10007C398(v4))
            {
              return 7;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            LOBYTE(v17) = sub_10007C470(v9);
LABEL_93:
            if (&v24 != -31)
            {
              goto LABEL_94;
            }

            goto LABEL_144;
          case 0x15u:
            if (!sub_10007C398(v4))
            {
              return 7;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            LOBYTE(v17) = sub_10007C4A4(v9);
            goto LABEL_93;
          case 0x16u:
            if (!sub_10007C398(v4))
            {
              return 7;
            }

            if (!v7 || (v7 & 7) != 0)
            {
              goto LABEL_143;
            }

            if (!(*(*v7 + 112))(v7))
            {
              return 7;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_143;
            }

            LOBYTE(v17) = (*(*(v9 + 1296) + 112))(v9 + 1296, 0);
            goto LABEL_93;
          default:
            goto LABEL_112;
        }
      }
    }
  }

  return v15;
}

uint64_t sub_10007C398(uint64_t a1)
{
  result = sub_100065198(a1);
  if (!result)
  {
    __break(0x5518u);
LABEL_8:
    sub_1000E1D34();
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = sub_100092B58(result, a1);
    LODWORD(result) = sub_100058FB0(v3, a1);
    if (v4)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_10007C408(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    v1 = *(result + 680);
    if (v1 && (*(result + 680) & 7) == 0)
    {
      return *(v1 + 16) != 0;
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10007C43C(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    v1 = *(result + 776);
    if (v1 && (*(result + 776) & 7) == 0)
    {
      return *(v1 + 16) != 0;
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10007C470(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    v1 = *(result + 872);
    if (v1 && (*(result + 872) & 7) == 0)
    {
      return *(v1 + 16) != 0;
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10007C4A4(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    v1 = *(result + 1256);
    if (v1 && (*(result + 1256) & 7) == 0)
    {
      return *(v1 + 16) != 0;
    }
  }

  __break(0x5516u);
  return result;
}

void sub_10007C4D8(uint64_t a1)
{
  if (!a1 || (a1 & 7) != 0)
  {
LABEL_48:
    __break(0x5516u);
    return;
  }

  if (!strcmp((a1 + 1592), "Drive Kit Plus"))
  {
    if (*(a1 + 2104))
    {
      v2 = *(a1 + 2088);
      v24 = v2;
      if (v2 != a1 + 2096)
      {
        v3 = 0;
        while (!v3)
        {
          if (!v2 || (v2 & 7) != 0)
          {
            goto LABEL_48;
          }

          v4 = *(v2 + 40);
          if (v4)
          {
            if ((v4 & 7) != 0)
            {
              goto LABEL_48;
            }

            v3 = strcmp(*(v4 + 24), "com.mbrdna.drivestyle") == 0;
          }

          else
          {
            v3 = 0;
          }

          sub_100007D44(&v24);
          v2 = v24;
          if (v24 == a1 + 2096)
          {
            if (!v3)
            {
              return;
            }

            break;
          }
        }

        v5 = sub_10000C0EC();
        pthread_mutex_lock(&stru_10012B758);
        v6 = *(v5 + 8);
        if (v6 == v5)
        {
LABEL_47:
          pthread_mutex_unlock(&stru_10012B758);
          return;
        }

        while (v6 && (v6 & 7) == 0)
        {
          if (*(v6 + 16))
          {
            v7 = *(a1 + 8);
            if (!v7)
            {
              goto LABEL_48;
            }

            if ((v7 & 7) != 0)
            {
              goto LABEL_48;
            }

            v8 = sub_100018DC0(v7);
            if (!v8 || (v8 & 7) != 0)
            {
              goto LABEL_48;
            }

            v9 = (*(*v8 + 96))(v8, *(v6 + 16));
            if (v9)
            {
              v11 = *(v6 + 16);
              if (!v11 || (v11 & 7) != 0)
              {
                goto LABEL_48;
              }

              if (*(v11 + 32))
              {
                v12 = sub_1000CC7A0(v9, v10);
                if (!v12 || (v12 & 7) != 0)
                {
                  goto LABEL_48;
                }

                v13 = (*(*v12 + 104))(v12, *(v6 + 16));
                if (v13)
                {
                  v14 = v13;
                  v15 = *(a1 + 8);
                  if (!v15 || (v15 & 7) != 0)
                  {
                    goto LABEL_48;
                  }

                  v16 = *(v6 + 16);
                  if (v16 != sub_100018DC0(v15))
                  {
                    if ((v14 & 7) != 0)
                    {
                      goto LABEL_48;
                    }

                    if (((*(*v14 + 48))(v14) & 0x1000) != 0)
                    {
                      v17 = *(v6 + 16);
                      if (!v17)
                      {
                        goto LABEL_48;
                      }

                      if ((v17 & 7) != 0)
                      {
                        goto LABEL_48;
                      }

                      v18 = (*(*v17 + 200))(v17);
                      v19 = (*(*v14 + 104))(v14);
                      if (!v19)
                      {
                        goto LABEL_48;
                      }

                      v20 = v19;
                      if ((v19 & 3) != 0)
                      {
                        goto LABEL_48;
                      }

                      v21 = (*(*v14 + 104))(v14);
                      if (!v21)
                      {
                        goto LABEL_48;
                      }

                      v22 = v21;
                      if ((v21 & 3) != 0)
                      {
                        goto LABEL_48;
                      }

                      v23 = (*(*v14 + 104))(v14);
                      if (!v23 || (v23 & 3) != 0)
                      {
                        goto LABEL_48;
                      }

                      syslog(4, "%s:%s-%d found another port %s that supports Display Port on same connector, with acc details %s, %s, %s", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", "CheckForVideoResourceOverride", 4796, v18, v20, (v22 + 104), (v23 + 168));
                    }
                  }
                }
              }
            }
          }

          v6 = *(v6 + 8);
          if (v6 == v5)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_48;
      }
    }
  }
}

uint64_t sub_10007C83C(uint64_t result)
{
  if (!result)
  {
    goto LABEL_20;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_20;
  }

  if (qword_10012BCB8 != -1)
  {
    sub_1000E23E0();
  }

  v2 = byte_10012B488;
  v3 = byte_10012BCB1;
  result = sub_10007C9B4(*(v1 + 8));
  v4 = *(v1 + 1976);
  if (v4 >= 2)
  {
    goto LABEL_19;
  }

  v5 = result;
  if (v4)
  {
    goto LABEL_9;
  }

  v6 = *(v1 + 1977);
  if (v6 > 1)
  {
LABEL_19:
    __break(0x550Au);
    goto LABEL_20;
  }

  if ((v6 & 1) == 0)
  {
    sub_1000DDEEC(0, 4, "AccInfo Pending, skip sending Database Changed Notification until ready(%d) or timeout(%d)");
    return 0;
  }

LABEL_9:
  if (((v2 | v3) & 1) == 0)
  {
    return 0;
  }

  result = 1;
  if (v5 && (byte_10012BCB1 & 1) == 0)
  {
    if ((v5 & 3) == 0)
    {
      if (!strstr((v5 + 104), "TOYOTA"))
      {
        return 1;
      }

      sub_1000DDEEC(0, 4, "Detected Blacklisted HeadUnit ('%s' / '%s'), skip sending Database Changed Notification");
      return 0;
    }

LABEL_20:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10007C9B4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  result = sub_10005A9E0(a1);
  if (!result)
  {
    return 0;
  }

  if ((a1 & 7) != 0 || (result = sub_10005BD04(a1)) == 0 || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {

    return sub_10005BF44(result);
  }

  return result;
}

uint64_t sub_10007CA30(uint64_t result, unsigned int a2)
{
  if (!result)
  {
    goto LABEL_40;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_40;
  }

  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_40;
  }

  result = sub_100018DC0(result);
  if (!result)
  {
    __break(0x5518u);
    goto LABEL_40;
  }

  v5 = result;
  result = sub_100065198(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_40;
  }

  result = sub_1000933B0(result, v5);
  if (result != 56)
  {
    goto LABEL_14;
  }

  v7 = *(v2 + 2200);
  if (v7 > 1)
  {
LABEL_41:
    __break(0x550Au);
    return result;
  }

  if (v7 == 1)
  {
LABEL_14:
    LOBYTE(v8) = 1;
    return v8 & 1;
  }

  LOBYTE(v8) = 1;
  if (a2 <= 9)
  {
    if (a2 >= 3)
    {
      if (a2 == 3)
      {
        v8 = *(v2 + 2056);
        return v8 & 1;
      }

      if (a2 != 8)
      {
        return v8 & 1;
      }
    }

    goto LABEL_30;
  }

  if (a2 <= 16)
  {
    if (a2 != 10)
    {
      if (a2 == 14)
      {
        v8 = (*(v2 + 2057) >> 6) & 1;
      }

      return v8 & 1;
    }

LABEL_30:
    v8 = (*(v2 + 2056) >> 2) & 1;
    return v8 & 1;
  }

  if (a2 == 17)
  {
    v8 = (*(v2 + 2056) >> 1) & 1;
    return v8 & 1;
  }

  if (a2 == 18)
  {
    v8 = (*(v2 + 2057) >> 4) & 1;
    return v8 & 1;
  }

  if (a2 != 22)
  {
    return v8 & 1;
  }

  if ((*(v2 + 2058) & 0x80) == 0)
  {
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  result = sub_100046A8C(result, v6);
  if (!result || (result & 7) != 0)
  {
LABEL_40:
    __break(0x5516u);
    goto LABEL_41;
  }

  v9 = *(*result + 112);

  return v9();
}

uint64_t sub_10007CBB8(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    goto LABEL_249;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_249;
  }

  if (!a2)
  {
    goto LABEL_249;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_249;
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 128);
  v9 = sub_100046A8C(a1, a2);
  v10 = *(a1 + 8);
  if (!v10)
  {
    goto LABEL_249;
  }

  if ((v10 & 7) != 0)
  {
    goto LABEL_249;
  }

  v11 = sub_10005BC54(v10);
  v12 = sub_100065198(v11);
  if (!v12)
  {
    goto LABEL_249;
  }

  v13 = v12;
  if ((v12 & 7) != 0)
  {
    goto LABEL_249;
  }

  v14 = sub_100092F68(v12, v6);
  v15 = sub_100058FB0(v13, v6);
  if (v8 && (v14 & 3) == 1 && !v15)
  {
    if (!v7)
    {
LABEL_249:
      __break(0x5516u);
      goto LABEL_250;
    }

    v16 = *v7;
    if (v16 != 3 && v16 <= 0x16)
    {
      sub_1000B7854(a2, v6, 0, 0, 2, *(a2 + 68), 7, 0x2Bu, 0, 255, 0, 0, 0, 0);
      sub_1000B6DB4(*(a1 + 8), a2, 0, 1u);
      sub_100079038(a1, v6);
      v17 = 25;
LABEL_26:
      sub_1000DDEEC(0, 4, "%s:%d invalid payload!\n");
      return v17;
    }
  }

  else if (!v7)
  {
    v17 = 4;
    goto LABEL_26;
  }

  if (v8 >= 3)
  {
    v18 = *v7;
    if (v18 <= 0x16)
    {
      v19 = sub_10007CA30(a1, *v7);
      if (v19)
      {
        switch(v18)
        {
          case 0u:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v39 = v7[1];
            if (v39 > 2)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            v40 = v7[2];
            if (v40 > 1)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v25 = sub_1000BF518(v11 + 16, dword_1000EF204[v39], v40 != 0);
            goto LABEL_242;
          case 1u:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v45 = v7[1];
            if (v7[1] && v45 != 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            if (v7[2] == 1)
            {
              v46 = 1;
              goto LABEL_235;
            }

            if (!v7[2])
            {
              v46 = 0;
LABEL_235:
              if (v11 && (v11 & 7) == 0)
              {
                v25 = sub_10007D7A4(v11, v45, v46);
                goto LABEL_242;
              }

              goto LABEL_249;
            }

            return 4;
          case 2u:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v33 = v7[1];
            if (v33 > 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            if (v7[2] == 1)
            {
              v34 = 1;
              goto LABEL_231;
            }

            if (!v7[2])
            {
              v34 = 0;
LABEL_231:
              if (v11 && (v11 & 7) == 0)
              {
                v25 = sub_10007D780(v11, v33, v34);
LABEL_242:
                v17 = v25;
                goto LABEL_243;
              }

              goto LABEL_249;
            }

            return 4;
          case 3u:
            if (v8 != 3)
            {
              return 4;
            }

            if (!v6 || (v6 & 7) != 0)
            {
              goto LABEL_249;
            }

            if ((*(*v6 + 224))(v6))
            {
              return 4;
            }

            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_249;
            }

            v49 = (*(*v9 + 192))(v9, v6);
            if (!v49)
            {
              if (v7 != -1)
              {
                return 4 * (v7[1] != 0);
              }

LABEL_250:
              __break(0x5513u);
              JUMPOUT(0x10007D6A0);
            }

            v50 = sub_100065198(v49);
            if (!v50 || (v50 & 7) != 0)
            {
              goto LABEL_249;
            }

            v51 = sub_100092B58(v50, v6);
            v52 = sub_10007D6FC(*(a1 + 8));
            *(a1 + 2212) = 1;
            if ((v51 & 0x400) != 0)
            {
              v66 = v52;
              v67 = sub_100069E2C(v6);
              if (v66 & 0x200000) == 0 && (v67)
              {
                return 0;
              }
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            if (!v7[1])
            {
LABEL_245:
              v53 = 0;
              goto LABEL_246;
            }

            if (v7[1] != 1)
            {
              return 4;
            }

            v53 = 1;
LABEL_246:

            return sub_100076E70(a1, v26, v53);
          case 4u:
          case 5u:
          case 6u:
          case 7u:
            v21 = sub_10007C398(v6) == 0;
            v22 = 16;
            goto LABEL_22;
          case 8u:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            if (v7[1] > 4u)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v35 = sub_1000BF3D0(v11 + 16);
            v26 = v7[1];
            if ((v26 - 1) >= 4)
            {
              v26 = v35;
              if (v35 > 7)
              {
                goto LABEL_244;
              }
            }

            v25 = sub_10007D7C8(v11, v26, 0);
            goto LABEL_242;
          case 9u:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v31 = v7[1];
            if (v31 > 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            v32 = v7[2];
            if (v32 > 1)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v25 = sub_10007D7EC(v11, v31, v32 != 0);
            goto LABEL_242;
          case 0xAu:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v47 = v7[1];
            if (v7[1] && v47 != 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            if (v7[2] == 1)
            {
              v48 = 1;
              goto LABEL_239;
            }

            if (!v7[2])
            {
              v48 = 0;
LABEL_239:
              if (v11 && (v11 & 7) == 0)
              {
                v25 = sub_10007D75C(v11, v47, v48);
                goto LABEL_242;
              }

              goto LABEL_249;
            }

            return 4;
          case 0xCu:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v27 = v7[1];
            if (v27 > 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            v28 = v7[2];
            if (v28 > 1)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v25 = sub_10007D810(v11, v27, v28 != 0);
            goto LABEL_242;
          case 0xDu:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v23 = v7[1];
            if (v23 > 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            v24 = v7[2];
            if (v24 > 1)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v25 = sub_10007D834(v11, v23, v24 != 0);
            goto LABEL_242;
          case 0xEu:
            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_249;
            }

            if (!(*(*v9 + 240))(v9, v6))
            {
              return 4;
            }

            if (sub_10007C398(v6))
            {
              if (v8 != 3)
              {
                v54 = 0;
                v17 = 7;
                goto LABEL_200;
              }
            }

            else
            {
              v54 = 0;
              v17 = 7;
              if (v8 != 3 || (a3 & 1) == 0)
              {
                goto LABEL_200;
              }
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v58 = v7[1];
            v21 = v58 == 1;
            v59 = v58 > 1;
            v54 = v21;
            v17 = (4 * v59);
LABEL_200:
            sub_100075A48(a1, v54, 0);
            return v17;
          case 0xFu:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v36 = v7[1];
            if (v36 > 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            v37 = v7[2];
            if (v37 > 1)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v17 = sub_1000C05AC(v11 + 432, v36 != 0, v37 != 0);
            *(a1 + 2203) = sub_10007D858(v11);
            goto LABEL_243;
          case 0x10u:
            if (!v9 || (v9 & 7) != 0)
            {
              goto LABEL_249;
            }

            if (!(*(*v9 + 248))(v9, v6))
            {
              return 4;
            }

            if ((a3 & 1) == 0 && !sub_10007C398(v6))
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v38 = v7[1];
            if (v38 > 1)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            sub_1000C05AC(v11 + 720, v38 == 1, 0);
            return 0;
          case 0x11u:
            v21 = sub_10007C398(v6) == 0;
            v22 = 4;
LABEL_22:
            if (v21)
            {
              return 7;
            }

            else
            {
              return v22;
            }

          case 0x12u:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v41 = v7[1];
            if (v41 > 1)
            {
              return 4;
            }

            v42 = *(a1 + 8);
            v44 = (v42 & 7) == 0 && v42 != 0;
            if (v41 == 1)
            {
              if (!v44)
              {
                goto LABEL_249;
              }

              sub_10005BD18(v42, 0, 3u);
            }

            else
            {
              if (!v44)
              {
                goto LABEL_249;
              }

              sub_10005BD4C(v42, 0, 3u);
            }

            v64 = *(a1 + 2200);
            if (v64 > 1)
            {
              goto LABEL_244;
            }

            if ((v64 & 1) == 0 && (*(a1 + 1273) & 0x10) == 0)
            {
              v17 = 4;
LABEL_224:
              if (!v64 && (*(a1 + 1273) & 0x10) != 0)
              {
                sub_10007D8C0(*(a1 + 8), v41 == 1);
              }

LABEL_243:
              if (v17 > 0x1F)
              {
                goto LABEL_244;
              }

              return v17;
            }

            if (v11 && (v11 & 7) == 0)
            {
              v65 = sub_1000C05AC(v11 + 816, v41 == 1, 0);
              v64 = *(a1 + 2200);
              if (v64 <= 1)
              {
                v17 = v65;
                goto LABEL_224;
              }

LABEL_244:
              __break(0x550Au);
              goto LABEL_245;
            }

            goto LABEL_249;
          case 0x13u:
            if (sub_10007C398(v6))
            {
              if (v8 != 3)
              {
                return 4;
              }
            }

            else
            {
              v17 = 4;
              if (v8 != 3 || (a3 & 1) == 0)
              {
                return v17;
              }
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v56 = v7[1];
            if (v56 <= 1)
            {
              if (v7 > 0xFFFFFFFFFFFFFFFDLL)
              {
                goto LABEL_250;
              }

              v57 = v7[2];
              if (v57 <= 1)
              {
                if (v11 && (v11 & 7) == 0)
                {
                  v17 = sub_1000C05AC(v11 + 528, v56 != 0, v57 != 0);
                  *(a1 + 2213) = sub_10007D88C(v11);
                  goto LABEL_243;
                }

                goto LABEL_249;
              }
            }

            break;
          case 0x15u:
            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v29 = v7[1];
            if (v29 > 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            if (v7[2] > 1u)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v30 = *(a1 + 2200);
            if (v30 > 1)
            {
              goto LABEL_244;
            }

            v25 = sub_1000C2978(v11 + 1200, v29 == 1, 1, v30 == 0);
            goto LABEL_242;
          case 0x16u:
            v55 = sub_100046A8C(v19, v20);
            if (!v55 || (v55 & 7) != 0)
            {
              goto LABEL_249;
            }

            if (!(*(*v55 + 112))(v55))
            {
              return 4;
            }

            if ((sub_10007C398(v6) & 1) == 0 && !a3)
            {
              return 7;
            }

            if (v8 != 3)
            {
              return 4;
            }

            if (v7 == -1)
            {
              goto LABEL_250;
            }

            v60 = v7[1];
            if (v60 > 1)
            {
              return 4;
            }

            if (v7 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_250;
            }

            v61 = v7[2];
            if (v61 > 1)
            {
              return 4;
            }

            if (!v11 || (v11 & 7) != 0)
            {
              goto LABEL_249;
            }

            v62 = *(a1 + 2200);
            if (v62 > 1)
            {
              goto LABEL_244;
            }

            v25 = sub_1000BD004(v11 + 1296, v60 != 0, v61 != 0, v62 == 0);
            goto LABEL_242;
          default:
            v17 = 4;
            sub_1000DDEEC(0, 4, "CIapLingoGeneral::HandleSetiPodPreferences invalid preference: 0x%02X\n");
            return v17;
        }
      }
    }
  }

  return 4;
}

uint64_t sub_10007D6FC(uint64_t result)
{
  if (!result)
  {
    __break(0x5518u);
LABEL_9:
    __break(0x5516u);
    return result;
  }

  v1 = result;
  result = sub_10005A9E0(result);
  if (!result)
  {
    return 0;
  }

  if ((v1 & 7) != 0)
  {
    goto LABEL_9;
  }

  return sub_10005BF14(v1);
}

uint64_t sub_10007D75C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 2)
  {
    return sub_1000BF768(result + 16, a2, a3);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10007D780(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 4)
  {
    return sub_1000BF7D8(result + 16, a2, a3);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10007D7A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 2)
  {
    return sub_1000BF848(result + 16, a2, a3);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10007D7C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 8)
  {
    return sub_1000BF8B8(result + 16, a2, a3);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10007D7EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 2)
  {
    return sub_1000BEEDC(result + 16, a2, a3);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10007D810(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 2)
  {
    return sub_1000BEE6C(result + 16, a2, a3);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10007D834(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 < 2)
  {
    return sub_1000BF928(result + 16, a2, a3);
  }

  __break(0x550Au);
  return result;
}

BOOL sub_10007D858(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    v1 = *(result + 488);
    if (v1 && (*(result + 488) & 7) == 0)
    {
      return *(v1 + 16) != 0;
    }
  }

  __break(0x5516u);
  return result;
}

BOOL sub_10007D88C(_BOOL8 result)
{
  if (result && !(result & 7))
  {
    v1 = *(result + 584);
    if (v1 && (*(result + 584) & 7) == 0)
    {
      return *(v1 + 16) != 0;
    }
  }

  __break(0x5516u);
  return result;
}

uint64_t sub_10007D8C0(uint64_t result, char a2)
{
  if (!result)
  {
    sub_1000DDEEC(0, 4, "%s:%d SetDisplayPort:  no handle!..", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 13295);
    return 22;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_10005BD04(result);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_100018DC0(result);
  if (!result)
  {
    return 22;
  }

  v3 = result;
  v5 = a2;
  if ((result & 7) == 0)
  {
    v4 = (*(*result + 16))(result, 0);
    sub_1000B748C(v3, 0, 0, 96, v4, &v5, 1);
  }

LABEL_10:
  __break(0x5516u);
  return result;
}

uint64_t sub_10007D9D0(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    goto LABEL_119;
  }

  if ((a1 & 7) != 0)
  {
    goto LABEL_119;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v4;
  v40 = v4;
  v37 = v4;
  v38 = v4;
  v35 = v4;
  v36 = v4;
  if (!a2)
  {
    goto LABEL_119;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_119;
  }

  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 128);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = sub_1000C4254(a1, a2);
  if (!v8 || (v8 & 7) != 0)
  {
    goto LABEL_119;
  }

  v9 = 0;
  if (sub_100094598(v8, v5))
  {
    v10 = *(a2 + 68);
LABEL_12:
    WORD5(v35) = v10;
    goto LABEL_13;
  }

  if (v6 && v7 >= 2)
  {
    v10 = bswap32(*v6) >> 16;
    v9 = 2;
    goto LABEL_12;
  }

LABEL_13:
  result = sub_10007C398(v5);
  if (!result)
  {
    v21 = 0;
    v20 = 7;
    goto LABEL_109;
  }

  if (!v5 || !v6)
  {
    __break(0x5518u);
LABEL_119:
    __break(0x5516u);
    goto LABEL_120;
  }

  v13 = v9 + 2;
  if (v9 + 2 >= v7)
  {
    goto LABEL_108;
  }

  *&v35 = v5;
  WORD4(v35) = 44;
  v14 = ~v6;
  if (~v6 < v9)
  {
    goto LABEL_120;
  }

  v15 = *(v6 + v9);
  LODWORD(v36) = v15;
  v16 = v9 | 1;
  if (v14 < v16)
  {
    goto LABEL_120;
  }

  v17 = *(v6 + v16);
  DWORD1(v36) = v17;
  if (v14 < v13)
  {
    goto LABEL_120;
  }

  v18 = v7 - v13;
  if (v7 < v13)
  {
    goto LABEL_122;
  }

  if (WORD1(v18))
  {
LABEL_123:
    __break(0x5507u);
    goto LABEL_124;
  }

  if (v15 > 1)
  {
    goto LABEL_121;
  }

  if (v15)
  {
    v32 = 1;
    v31 = 5996;
    v19 = "%s:%d CIapLingoGeneral::HandleTxdTunnelDataToiPod: Invalid tunnel class: %d\n";
LABEL_25:
    v20 = 4;
    sub_1000DDEEC(0, 4, v19, "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", v31, v32);
    v21 = 0;
    goto LABEL_109;
  }

  if (v17 > 0x1F)
  {
LABEL_121:
    __break(0x550Au);
LABEL_122:
    __break(0x5515u);
    goto LABEL_123;
  }

  v12 = (v6 + v13);
  v22 = (v7 - v13);
  if (v17 <= 7)
  {
    if (v17 <= 3)
    {
      if (!v17)
      {
        if (v22 != 2)
        {
          goto LABEL_108;
        }

        LOBYTE(v37) = *v12;
        if (v12 == -1)
        {
          goto LABEL_120;
        }

        v20 = 0;
        v27 = v12[1];
LABEL_74:
        HIDWORD(v36) = v27;
        goto LABEL_75;
      }

      if (v17 != 3)
      {
        goto LABEL_76;
      }

      if (v22 != 2)
      {
        goto LABEL_108;
      }

      BYTE12(v36) = *v12;
      if (v12 == -1)
      {
        goto LABEL_120;
      }

      v20 = 0;
      v23 = v12[1];
LABEL_43:
      BYTE13(v36) = v23;
      goto LABEL_75;
    }

    if (v17 == 4)
    {
      if (v22 != 2)
      {
        goto LABEL_108;
      }

      v20 = 0;
      v28 = *v12;
      goto LABEL_65;
    }

    if (v17 != 6)
    {
      goto LABEL_76;
    }

    if (!v22)
    {
      goto LABEL_108;
    }

    v24 = *v12;
    DWORD2(v36) = v24;
    if (v24 <= 7)
    {
      if (v24 > 2)
      {
        if (v24 > 4)
        {
          if (v24 == 5)
          {
            v21 = 0;
            v20 = 4;
            if (v22 == 1 || v22 > 0x41)
            {
              goto LABEL_109;
            }

            if (v12 == -1)
            {
              goto LABEL_120;
            }

            memcpy(&v36 + 12, v12 + 1, v22 - 1);
            result = sub_100067C84(&v36 + 12, 0x40u);
            if (result)
            {
              goto LABEL_68;
            }

            v25 = 5843;
          }

          else
          {
            if (v24 != 6)
            {
              v32 = v24;
              v31 = 5880;
              v19 = "%s:%d CIapLingoGeneral::HandleTxdTunnelDataToiPod: Invalid tunnel dev info type: 0x%02X\n";
              goto LABEL_25;
            }

            v21 = 0;
            v20 = 4;
            if (v22 == 1 || v22 > 0x41)
            {
              goto LABEL_109;
            }

            if (v12 == -1)
            {
              goto LABEL_120;
            }

            memcpy(&v36 + 12, v12 + 1, v22 - 1);
            result = sub_100067C84(&v36 + 12, 0x40u);
            if (result)
            {
              goto LABEL_68;
            }

            v25 = 5870;
          }

          goto LABEL_84;
        }

        if (v24 != 3)
        {
          v21 = 0;
          v20 = 4;
          if (v22 == 1 || v22 > 0x21)
          {
            goto LABEL_109;
          }

          if (v12 == -1)
          {
            goto LABEL_120;
          }

          memcpy(&v36 + 12, v12 + 1, v22 - 1);
          result = sub_100067C84(&v36 + 12, 0x20u);
          if (result)
          {
            goto LABEL_68;
          }

          v25 = 5816;
          goto LABEL_84;
        }

        if (v22 == 2)
        {
          if (v12 == -1)
          {
            goto LABEL_120;
          }

          v20 = 0;
          BYTE12(v36) = v12[1];
          goto LABEL_75;
        }

        goto LABEL_108;
      }

      if (v24)
      {
        if (v24 == 1)
        {
          if (v22 != 3)
          {
            goto LABEL_108;
          }

          if (v12 == -1)
          {
            goto LABEL_120;
          }

          BYTE12(v36) = v12[1];
          if (v12 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_120;
          }

          v20 = 0;
          v23 = v12[2];
          goto LABEL_43;
        }

        if (v22 == 3)
        {
          if (v12 == -1)
          {
            goto LABEL_120;
          }

          HIDWORD(v36) = v12[1];
          if (v12 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_120;
          }

          v20 = 0;
          LOBYTE(v37) = v12[2];
          goto LABEL_75;
        }

LABEL_108:
        v21 = 0;
        v20 = 4;
        goto LABEL_109;
      }

      if (v22 != 3)
      {
        goto LABEL_108;
      }

      if (v12 == -1)
      {
        goto LABEL_124;
      }

      v20 = 0;
      v28 = *(v12 + 1);
LABEL_65:
      WORD6(v36) = bswap32(v28) >> 16;
      goto LABEL_75;
    }

    goto LABEL_121;
  }

  if (v17 <= 14)
  {
    if (v17 != 8)
    {
      if (v17 != 11)
      {
        goto LABEL_76;
      }

      goto LABEL_58;
    }

    if (v22 != 7)
    {
      goto LABEL_108;
    }

    BYTE3(v37) = *v12;
    if (v12 != -1)
    {
      LOWORD(v37) = bswap32(*(v12 + 1)) >> 16;
      if (v12 > 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_120;
      }

      BYTE2(v37) = v12[3];
      v20 = 0;
      v26 = *(v12 + 3) & 0xFFFFFF00;
LABEL_73:
      v27 = bswap32(v26);
      goto LABEL_74;
    }

LABEL_124:
    __break(0x5500u);
    return result;
  }

  if (v17 == 15)
  {
    if (v22 - 1 > 0x1F)
    {
      goto LABEL_108;
    }

    memcpy(&v36 + 12, v12, v18);
    result = sub_100067C84(&v36 + 12, 0x20u);
    if (result)
    {
LABEL_68:
      v20 = 0;
      goto LABEL_75;
    }

    v25 = 5943;
LABEL_84:
    v31 = v25;
    v19 = "%s:%d CIapLingoGeneral::HandleTxdTunnelDataToiPod: 0 length buffer provided\n";
    goto LABEL_25;
  }

  if (v17 == 17)
  {
LABEL_58:
    if (v22 != 4)
    {
      goto LABEL_108;
    }

    v20 = 0;
    v26 = *v12;
    goto LABEL_73;
  }

  if (v17 != 19)
  {
LABEL_76:
    v32 = v17;
    v31 = 5984;
    v19 = "%s:%d CIapLingoGeneral::HandleTxdTunnelDataToiPod: Invalid tunnel cmdID: 0x%02X\n";
    goto LABEL_25;
  }

  if (!v22)
  {
    goto LABEL_108;
  }

  v21 = 0;
  v20 = 4;
  if (v22 == 1 && !*v12)
  {
    v20 = 0;
    HIDWORD(v36) = 0;
LABEL_75:
    v21 = 1;
  }

LABEL_109:
  v33 = -21846;
  v34 = -86;
  v29 = sub_1000C4254(result, v12);
  if (!v29 || (v29 & 7) != 0)
  {
    goto LABEL_119;
  }

  if (sub_100094598(v29, v5))
  {
    v30 = 0;
  }

  else
  {
    v33 = bswap32(WORD5(v35)) >> 16;
    v30 = 2;
  }

  if (__CFADD__(&v33, v30))
  {
LABEL_120:
    __break(0x5513u);
  }

  *(&v33 + v30) = v20;
  sub_1000B7DB4(a2, v5, 0, 0, 45, *(a2 + 68), &v33, v30 | 1);
  sub_1000B6DB4(*(a1 + 8), a2, 0, 1u);
  if (v21)
  {
    sub_100077384(a1, 0, 1, &v35, 96);
  }

  return v20;
}

uint64_t sub_10007E020(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a1 & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
LABEL_24:
    __break(0x5516u);
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    __break(0x5518u);
    goto LABEL_24;
  }

  v5 = *(a2 + 128);
  v6 = *(a2 + 8);
  v7 = sub_10007C398(v6);
  if (!v7)
  {
    return 7;
  }

  if (v5 != 3)
  {
    return 4;
  }

  HIWORD(v13) = -1;
  LODWORD(v13) = 0;
  v9 = sub_1000C4254(v7, v8);
  if (!v9 || (v9 & 7) != 0)
  {
    goto LABEL_24;
  }

  result = sub_100094598(v9, v6);
  if (result)
  {
    v11 = *(a2 + 68);
  }

  else
  {
    if (v4 >= 0xFFFFFFFFFFFFFFFELL)
    {
LABEL_26:
      __break(0x5513u);
      goto LABEL_27;
    }

    v11 = bswap32(*v4++) >> 16;
  }

  v12 = *v4;
  if (v12 > 0x1F)
  {
    __break(0x550Au);
    goto LABEL_26;
  }

  if (!v12)
  {
    return v12;
  }

  result = sub_10006733C(a1, *(a2 + 68), &v13 + 3, &v13, 0xFFFFLL);
  if (result)
  {
    sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::HandleAckTunnelDataToDev timeout before response received !\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 6137);
    return v12;
  }

  v15 = 0u;
  v16 = 0u;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v14 = v6;
  LOWORD(v15) = HIWORD(v13);
  if (!HIWORD(v11))
  {
    WORD1(v15) = v11;
    DWORD1(v16) = v13;
    BYTE8(v16) = 4;
    sub_100077384(a1, 0, 1, &v14, 96);
    return v12;
  }

LABEL_27:
  __break(0x5507u);
  return result;
}

uint64_t sub_10007E1E0(uint64_t result, unint64_t a2)
{
  if (!result)
  {
    goto LABEL_35;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_35;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_34;
  }

  v5 = *(a2 + 8);
  v6 = *(a2 + 128);
  result = sub_10007C398(v5);
  if (!result)
  {
    return 7;
  }

  if (v6 < 4)
  {
    return 4;
  }

  if (!v5)
  {
LABEL_34:
    __break(0x5518u);
    goto LABEL_35;
  }

  v21 = 0;
  v22 = 0;
  v19 = v5;
  v20 = 49;
  result = sub_1000C4254(result, v7);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_35;
  }

  result = sub_100094598(result, v5);
  if (result)
  {
    v9 = 0;
    v10 = *(a2 + 68);
  }

  else
  {
    v10 = bswap32(*v4) >> 16;
    v9 = 2;
  }

  WORD1(v20) = v10;
  if (~v4 < v9)
  {
    goto LABEL_36;
  }

  v12 = *(v4 + v9);
  LODWORD(v21) = v12;
  if (v12 <= 1)
  {
    if (v12)
    {
      v11 = 4;
      sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::HandleTxdTunnelControlToiPod invalid control type: 0x%02X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 6223, 1);
      v13 = 0;
    }

    else
    {
      if (v9 + 2 != v6)
      {
        goto LABEL_24;
      }

      v14 = v9 | 1;
      if (~v4 < v14)
      {
LABEL_36:
        __break(0x5513u);
        goto LABEL_37;
      }

      v15 = *(v4 + v14);
      if (v15 <= 3)
      {
        v11 = 0;
        HIDWORD(v21) = v15;
        LOBYTE(v22) = 0;
        v13 = 1;
      }

      else
      {
LABEL_24:
        v13 = 0;
        v11 = 4;
      }
    }

    v17 = -21846;
    v18 = -86;
    result = sub_1000C4254(result, v8);
    if (result && (result & 7) == 0)
    {
      result = sub_100094598(result, v5);
      if (result)
      {
        v16 = 0;
      }

      else
      {
        v17 = bswap32(v10) >> 16;
        v16 = 2;
      }

      if (!__CFADD__(&v17, v16))
      {
        *(&v17 + v16) = v11;
        sub_1000B7DB4(a2, v5, 0, 0, 50, *(a2 + 68), &v17, v16 | 1);
        sub_1000B6DB4(*(v2 + 8), a2, 0, 1u);
        if (v13)
        {
          sub_100077384(v2, 0, 2, &v19, 32);
        }

        return v11;
      }

      goto LABEL_36;
    }

LABEL_35:
    __break(0x5516u);
    goto LABEL_36;
  }

LABEL_37:
  __break(0x550Au);
  return result;
}

uint64_t sub_10007E414(uint64_t result, int a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0) || (memset(&__str, 0, sizeof(__str)), (result = sub_100065198(result)) == 0) || (result & 7) != 0 || (v6 = sub_1000949E0(result, a3, 0), (result = sub_10004B1AC(v6, v7)) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_29;
  }

  if ((*(*result + 344))(result, &__str, v6))
  {
    v8 = *(v3 + 2343);
    if (v8 < 0)
    {
      v9 = *(v3 + 2328);
    }

    else
    {
      v9 = *(v3 + 2343);
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (v9 == size)
    {
      v11 = v8 >= 0 ? (v3 + 2320) : *(v3 + 2320);
      v12 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      if (!memcmp(v11, v12, v9) && !a2)
      {
        sub_1000DDEEC(0, 4, "%s:%d REPEAT NOTIFICATION: notification %d m_LastAppFocus is %s and audioFocusAppBundleID = %s\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 6345, 10, v11, v12);
        goto LABEL_25;
      }
    }

    result = sub_1000D6C34(a3, 2);
    if (result < 0x10000)
    {
      operator new[]();
    }

LABEL_29:
    __break(0x5507u);
    return result;
  }

LABEL_25:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return 2;
}

uint64_t sub_10007E6A8(uint64_t result, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!result || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (a2 <= 0x1F && a5 < 4)
  {
    return sub_100088544(*(result + 8), a2, a3, a4, a5, a6, a7);
  }

  __break(0x550Au);
  return result;
}

uint64_t sub_10007E6D4(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_13;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_13;
  }

  v3 = *(result + 8);
  if (!v3 || (*(result + 8) & 7) != 0)
  {
    goto LABEL_13;
  }

  if ((*(v3 + 1994) & 0x10) == 0)
  {
    return 2;
  }

  v5 = 0;
  result = sub_10004B1AC(result, a2);
  if (result && (result & 7) == 0)
  {
    v5 = (*(*result + 200))(result) != 0;
    sub_100088544(*(v2 + 8), 0x14u, &v5, 1u, 1, 0, 0xFFFFFFFFLL);
    return 0;
  }

  else
  {
LABEL_13:
    __break(0x5516u);
  }

  return result;
}

uint64_t sub_10007E798(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result || (v3 = result, (result & 7) != 0) || (v5 = a2, memset(&__str, 0, sizeof(__str)), (result = sub_10004B1AC(result, a2)) == 0) || (result & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_28;
  }

  if ((*(*result + 312))(result, &__str))
  {
    v6 = *(v3 + 2367);
    if (v6 < 0)
    {
      v7 = *(v3 + 2352);
    }

    else
    {
      v7 = *(v3 + 2367);
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (v7 == size)
    {
      v9 = v6 >= 0 ? (v3 + 2344) : *(v3 + 2344);
      v10 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      if (!memcmp(v9, v10, v7) && !v5)
      {
        sub_1000DDEEC(0, 4, "%s:%d REPEAT NOTIFICATION: notification %d m_LastAppFocusAppName is %s and audioFocusAppName = %s\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 6451, 19, v9, v10);
        goto LABEL_24;
      }
    }

    result = sub_1000D6C34(a3, 2);
    if (result < 0x10000)
    {
      operator new[]();
    }

LABEL_28:
    __break(0x5507u);
    return result;
  }

  syslog(4, "GetNowPlayingAppName() failed to return now playing app display name\n");
LABEL_24:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return 2;
}

uint64_t sub_10007EA24(uint64_t a1, unint64_t a2)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_509;
  }

  if (!*(a1 + 8))
  {
    return 89;
  }

  v5 = sub_100065198(a1);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_509;
  }

  if (!sub_100094BFC(v5, *(a1 + 8)))
  {
    return 89;
  }

  v6 = *(a1 + 8);
  if (!v6 || (v6 & 7) != 0)
  {
    goto LABEL_509;
  }

  v7 = sub_10005ACA0(v6);
  if (v7)
  {
    return 89;
  }

  if (!a2 || (a2 & 7) != 0 || (v10 = *(a2 + 8), v11 = *(a2 + 126), (v12 = sub_100065198(v7)) == 0) || (v12 & 7) != 0)
  {
LABEL_509:
    __break(0x5516u);
  }

  v13 = sub_100092B58(v12, v10);
  v15 = *(a1 + 1416);
  if ((v15 + 8) >= 0x10)
  {
LABEL_510:
    __break(0x550Au);
    goto LABEL_511;
  }

  v16 = v13;
  v17 = *(a2 + 128);
  v18 = *(a2 + 24);
  if (v15 == -2)
  {
    sub_100074630(a1, v10, 1, 1);
    v13 = sub_100076C34(*(a1 + 8), v10, 0);
  }

  if (v11 <= 0x38u && ((1 << v11) & 0x100000000080002) != 0)
  {
    strcpy(v213, "y");
    v13 = sub_10006733C(a1, 0xFFFFFFFFLL, v213, 0, 0xFFFFLL);
  }

  switch(v11)
  {
    case 1:
      sub_100074DFC(a1, a2);
      goto LABEL_347;
    case 3:
      if ((v16 & 0x10) == 0)
      {
        goto LABEL_441;
      }

      v213[0] = -86;
      if (sub_100097578(v213, *(a1 + 8)))
      {
        goto LABEL_192;
      }

      LODWORD(v8) = 4;
      sub_1000B7DB4(a2, v10, 0, 0, 4, *(a2 + 68), v213, 1);
      goto LABEL_480;
    case 5:
      if ((v16 & 0x10) == 0)
      {
        goto LABEL_441;
      }

      kdebug_trace();
      v24 = sub_10007717C(a1, 1u);
      if (!v24)
      {
        v89 = *(a2 + 68);
        HIDWORD(v207) = 0;
        LOWORD(v207) = 0;
        sub_1000B7768(v10, 0, 0, 2, v89, 6, 5, 3000);
      }

      goto LABEL_290;
    case 6:
      if ((v16 & 0x10) == 0)
      {
        goto LABEL_441;
      }

      v213[0] = 0;
      if (sub_100097578(v213, *(a1 + 8)))
      {
        goto LABEL_192;
      }

      if (v213[0] > 1u)
      {
        goto LABEL_510;
      }

      if ((v213[0] & 1) == 0)
      {
        goto LABEL_386;
      }

      sub_100097394(*(a1 + 8), 1);
      if (!v86)
      {
        v87 = *(a2 + 68);
        HIDWORD(v207) = 0;
        LOWORD(v207) = 0;
        sub_1000B7768(v10, 0, 0, 2, v87, 6, 6, 3000);
      }

LABEL_192:
      LODWORD(v8) = 2;
      goto LABEL_480;
    case 7:
      memset(v213, 170, 24);
      v128 = sub_10004B1AC(v13, v14);
      if (!v128 || (v128 & 7) != 0)
      {
        goto LABEL_509;
      }

      (*(*v128 + 88))(v213);
      v129 = v213[23];
      if (v213[23] >= 0)
      {
        v57 = v213;
      }

      else
      {
        v57 = *v213;
      }

      if (v213[23] < 0)
      {
        v129 = *&v213[8];
      }

      v58 = __CFADD__(v129, 1);
      v130 = v129 + 1;
      if (v58)
      {
        goto LABEL_512;
      }

      if (v130 >> 16)
      {
        goto LABEL_513;
      }

      v60 = *(a2 + 68);
      v61 = v130;
      v62 = a2;
      v63 = v10;
      v64 = 8;
      goto LABEL_276;
    case 9:
      LOBYTE(v209) = -86;
      v212 = -86;
      v211 = -86;
      v88 = sub_10004B1AC(v13, v14);
      if (!v88 || (v88 & 7) != 0)
      {
        goto LABEL_509;
      }

      (*(*v88 + 160))(v88, &v209, &v212, &v211);
      v213[0] = v209;
      v213[1] = v212;
      v213[2] = v211;
      v50 = *(a2 + 68);
      v51 = a2;
      v52 = v10;
      v53 = 10;
      goto LABEL_439;
    case 11:
      memset(v213, 170, 24);
      v55 = sub_10004B1AC(v13, v14);
      if (!v55 || (v55 & 7) != 0)
      {
        goto LABEL_509;
      }

      (*(*v55 + 96))(v213);
      v56 = v213[23];
      if (v213[23] >= 0)
      {
        v57 = v213;
      }

      else
      {
        v57 = *v213;
      }

      if (v213[23] < 0)
      {
        v56 = *&v213[8];
      }

      v58 = __CFADD__(v56, 1);
      v59 = v56 + 1;
      if (v58)
      {
        goto LABEL_512;
      }

      if (v59 >> 16)
      {
        goto LABEL_513;
      }

      v60 = *(a2 + 68);
      v61 = v59;
      v62 = a2;
      v63 = v10;
      v64 = 12;
LABEL_276:
      sub_1000B7DB4(v62, v63, 0, 0, v64, v60, v57, v61);
      if ((v213[23] & 0x80000000) != 0)
      {
        operator delete(*v213);
      }

      goto LABEL_441;
    case 13:
      v65 = sub_10004B1AC(v13, v14);
      if (!v65)
      {
        goto LABEL_509;
      }

      if ((v65 & 7) != 0)
      {
        goto LABEL_509;
      }

      v66 = (*(*v65 + 112))(v65);
      memset(v213, 170, 24);
      v68 = sub_10004B1AC(v66, v67);
      if (!v68 || (v68 & 7) != 0)
      {
        goto LABEL_509;
      }

      (*(*v68 + 104))(v213);
      v69 = v213[23];
      if (v213[23] < 0)
      {
        v69 = *&v213[8];
      }

      v58 = __CFADD__(v69, 4);
      v70 = v69 + 4;
      if (!v58 && v70 != -1)
      {
        operator new[]();
      }

      goto LABEL_512;
    case 15:
      if (*(a2 + 128) != 1)
      {
        goto LABEL_441;
      }

      LOBYTE(v209) = -1;
      v212 = -1;
      v81 = *(a2 + 24);
      if (!v81)
      {
        goto LABEL_509;
      }

      v82 = *v81;
      if (v82 > 0xE)
      {
        goto LABEL_172;
      }

      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_509;
      }

      v83 = *(a1 + 1516);
      v84 = (*(*v10 + 224))(v10);
      v85 = v83 & 0x721D;
      if (!v84)
      {
        v85 = v83;
      }

      if ((v85 >> v82))
      {
        sub_100065198(v84);
        sub_1000C9B60(v82, &v209, &v212);
      }

LABEL_172:
      if (v209 == 255 && v212 == 255)
      {
        goto LABEL_441;
      }

      v213[0] = v82;
      v213[1] = v209;
      v213[2] = v212;
      v50 = *(a2 + 68);
      v51 = a2;
      v52 = v10;
      v53 = 16;
      goto LABEL_439;
    case 17:
      if (*(a2 + 128))
      {
        goto LABEL_441;
      }

      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_509;
      }

      *v213 = __rev16((*(*v10 + 168))(v10));
      v50 = *(a2 + 68);
      v51 = a2;
      v52 = v10;
      v53 = 18;
      goto LABEL_256;
    case 19:
      sub_100077528(a1, a2);
      return 0;
    case 21:
      v46 = *(a1 + 1512);
      if (v46 > 1)
      {
        goto LABEL_510;
      }

      if ((v46 & 1) == 0)
      {
        goto LABEL_104;
      }

      v47 = *(a1 + 1514);
      if (v47 == 255)
      {
        goto LABEL_513;
      }

      v48 = v47 + 1;
      v49 = (v47 + 1);
      *(a1 + 1514) = v48;
      if (v49 < 2 || v49 > *(a1 + 1513))
      {
LABEL_104:
        sub_100079448(a1, a2);
        return v45;
      }

      sub_1000B9034(a2);
      if (*(a1 + 1514) != *(a1 + 1513))
      {
        return 0;
      }

      v8 = 0;
      *(a1 + 1513) = 0;
      return v8;
    case 24:
      return sub_10007A230(a1, a2);
    case 26:
      v24 = sub_10007A818(a1);
      goto LABEL_290;
    case 28:
      if (!sub_10007AAC4(a1, a2))
      {
        goto LABEL_347;
      }

      goto LABEL_441;
    case 29:
      sub_10007AB78(a1, a2);
      goto LABEL_441;
    case 31:
      if (!sub_10007ACC0(a1, a2))
      {
        goto LABEL_347;
      }

      goto LABEL_441;
    case 32:
      v213[0] = 0;
      v113 = sub_10000C0EC();
      v114 = pthread_mutex_lock(&stru_10012B758);
      v115 = *(v113 + 8);
      while (2)
      {
        if (v115 == v113)
        {
          goto LABEL_415;
        }

        if (!v115 || (v115 & 7) != 0)
        {
          goto LABEL_509;
        }

        v116 = *(v115 + 16);
        if (!v116 || (*(v115 + 16) & 7) != 0)
        {
          goto LABEL_509;
        }

        if (!*(v116 + 32))
        {
          goto LABEL_243;
        }

        v118 = sub_100065198(v114);
        if (!v118 || (v118 & 7) != 0)
        {
          goto LABEL_509;
        }

        v114 = sub_1000930CC(v118, *(v115 + 16));
        if (!v114)
        {
LABEL_243:
          v115 = *(v115 + 8);
          continue;
        }

        break;
      }

      v213[0] = 1;
LABEL_415:
      pthread_mutex_unlock(&stru_10012B758);
      v50 = *(a2 + 68);
      v51 = a2;
      v52 = v10;
      v53 = 33;
LABEL_416:
      v80 = 1;
      goto LABEL_440;
    case 34:
      if (*(a2 + 128) != 1)
      {
        goto LABEL_441;
      }

      v146 = sub_100065198(v13);
      if (!v146 || (v146 & 7) != 0)
      {
        goto LABEL_509;
      }

      v147 = sub_100092F68(v146, v10);
      if ((v147 & 0xC) != 8)
      {
        goto LABEL_346;
      }

      v148 = *(a2 + 24);
      if (!v148)
      {
        goto LABEL_509;
      }

      v149 = *v148;
      v150 = sub_100065198(v147);
      if (!v150 || (v150 & 7) != 0)
      {
        goto LABEL_509;
      }

      sub_100092FE4(v150, v10, 0, v149 != 0);
      goto LABEL_386;
    case 36:
      if (*(a2 + 128))
      {
        goto LABEL_441;
      }

      *v213 = 0xAAAAAAAAAAAAAAAALL;
      v71 = sub_100046A8C(v13, v14);
      v73 = sub_100045A94(v71, v72);
      if (!v73)
      {
        goto LABEL_509;
      }

      if ((v73 & 7) != 0)
      {
        goto LABEL_509;
      }

      v74 = (*(*v73 + 128))(v73);
      if (!v71 || (v71 & 7) != 0)
      {
        goto LABEL_509;
      }

      if (v74)
      {
        v75 = 0x100000000000041;
      }

      else
      {
        v75 = 65;
      }

      if ((*(*v71 + 192))(v71, v10))
      {
        v75 |= 2uLL;
      }

      if ((*(*v71 + 216))(v71))
      {
        v75 |= 4uLL;
      }

      if ((*(*v71 + 224))(v71))
      {
        v75 |= 8uLL;
      }

      if ((*(*v71 + 232))(v71))
      {
        v75 |= 0x10uLL;
      }

      v76 = (*(*v71 + 240))(v71, v10);
      v77 = v75 | 0x20;
      if (!v76)
      {
        v77 = v75;
      }

      *v213 = _byteswap_uint64(v77);
      v50 = *(a2 + 68);
      v51 = a2;
      v52 = v10;
      v53 = 37;
      goto LABEL_162;
    case 38:
      if (v17 != 1)
      {
        goto LABEL_441;
      }

      v139 = *(a1 + 1192);
      if (v139 == v10 || !v139)
      {
        *(a1 + 1192) = v10;
        if (!v18)
        {
          goto LABEL_509;
        }

        v178 = *v18;
        v179 = sub_100048620(v13, v14);
        if (!v179 || (v179 & 7) != 0)
        {
          goto LABEL_509;
        }

        v180 = (*(*v179 + 256))(v179, (v178 & 1) == 0);
        v31 = 0;
        if (v180 == 45)
        {
          v181 = 4;
        }

        else
        {
          v181 = 2;
        }

        if (v180)
        {
          LODWORD(v8) = v181;
        }

        else
        {
          LODWORD(v8) = 0;
        }
      }

      else
      {
        v31 = 0;
        LODWORD(v8) = 9;
      }

      goto LABEL_481;
    case 40:
      if (!sub_10007AD74(a1, a2))
      {
        goto LABEL_347;
      }

      goto LABEL_441;
    case 41:
      v24 = sub_10007BB60(a1, a2);
      if (v24 == 25)
      {
        return 0;
      }

      goto LABEL_290;
    case 43:
      pthread_mutex_lock((a1 + 1280));
      v38 = *(a1 + 8);
      if (!v38)
      {
        goto LABEL_509;
      }

      if ((v38 & 7) != 0)
      {
        goto LABEL_509;
      }

      v39 = sub_10005BDFC(v38);
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_509;
      }

      v40 = v39;
      if ((*(*v10 + 208))(v10) == 1 || ((*(*v10 + 224))(v10) & 1) != 0 || !sub_10006825C(v10))
      {
        goto LABEL_85;
      }

      if (!sub_10006825C(v10))
      {
        LODWORD(v8) = 4;
LABEL_87:
        pthread_mutex_unlock((a1 + 1280));
        goto LABEL_396;
      }

      if (v40 == v40)
      {
        LODWORD(v8) = 4;
        if (v40 != -1 && v40 <= 15)
        {
LABEL_85:
          LODWORD(v8) = sub_10007CBB8(a1, a2, 0);
          if (v8 == 25)
          {
            a2 = 0;
          }
        }

        goto LABEL_87;
      }

      goto LABEL_510;
    case 44:
      v79 = sub_10007D9D0(a1, a2);
      return 2 * (v79 != 0);
    case 47:
      v8 = 2 * (sub_10007E020(a1, a2) != 0);
      goto LABEL_451;
    case 49:
      v79 = sub_10007E1E0(a1, a2);
      return 2 * (v79 != 0);
    case 52:
      if (v17 != 1)
      {
        goto LABEL_441;
      }

      v156 = sub_10004B1AC(v13, v14);
      if (!v156 || (v156 & 7) != 0 || !v18)
      {
        goto LABEL_509;
      }

      v138 = (*(*v156 + 632))(v156, 2, *v18);
      goto LABEL_336;
    case 53:
      *v213 = sub_100081574(a1);
      v50 = *(a2 + 68);
      v51 = a2;
      v52 = v10;
      v53 = 54;
      goto LABEL_416;
    case 55:
      kdebug_trace();
      if (v17 != 1)
      {
        LODWORD(v8) = 4;
        goto LABEL_389;
      }

      if (!v18)
      {
        goto LABEL_509;
      }

      v78 = *v18;
      if (v78 <= 7)
      {
        LODWORD(v8) = sub_10007717C(a1, v78);
LABEL_389:
        kdebug_trace();
        goto LABEL_480;
      }

      goto LABEL_510;
    case 56:
      v24 = sub_100081650(a1);
      goto LABEL_290;
    case 57:
      v31 = 0;
      LODWORD(v8) = 2 * (sub_100081DB4(a1, a2) != 0);
      goto LABEL_481;
    case 59:
      if (sub_100082D70(a1, a2))
      {
        goto LABEL_346;
      }

      goto LABEL_347;
    case 62:
      if (v17 != 8)
      {
        goto LABEL_347;
      }

      if (!v18)
      {
        goto LABEL_509;
      }

      v41 = bswap64(*v18);
      if (v41 >> 25)
      {
        goto LABEL_347;
      }

      *(a1 + 1272) = v41;
      v42 = *(a1 + 8);
      if (!v42 || (v42 & 7) != 0)
      {
        goto LABEL_509;
      }

      v43 = sub_10005BDFC(v42);
      if (v43 != v43)
      {
        goto LABEL_510;
      }

      if (v43 == -1)
      {
        v44 = 16;
      }

      else
      {
        v44 = v43;
      }

      sub_100065778(a1, v10, 0xEu, v44);
LABEL_347:
      sub_1000B9034(a2);
      return 0;
    case 65:
      sub_100083398(a1, a2);
      return 0;
    case 66:
      sub_100083698(a1, a2);
      goto LABEL_347;
    case 71:
      if (v17 != 4)
      {
        goto LABEL_450;
      }

      if (!v18)
      {
        goto LABEL_509;
      }

      v32 = bswap32(*v18);
      v33 = *(a1 + 1984);
      if (v32 != v33)
      {
        sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::ProcessCmd: RetAccStatusNotification 0x%08X != 0x%08X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 7286, v32, v33);
      }

      v8 = 0;
      *(a1 + 1984) = v32;
      goto LABEL_451;
    case 72:
      *&v94 = 0xAAAAAAAAAAAAAAAALL;
      *(&v94 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v213[28] = v94;
      *v213 = v94;
      *&v213[16] = v94;
      if (v17 < 2)
      {
        goto LABEL_450;
      }

      if (!v18)
      {
        goto LABEL_509;
      }

      v95 = *v18;
      if (v95 > 1)
      {
        if (v95 == 2)
        {
          v8 = 2;
          if (v17 != 3)
          {
            goto LABEL_451;
          }

          *&v213[4] = 2;
          *v213 = sub_1000CE018(*(a1 + 8));
          if (v18 == -1)
          {
            goto LABEL_511;
          }

          v194 = *(v18 + 1);
          *&v213[8] = v194;
          if (v18 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_511;
          }

          v195 = *(v18 + 2);
          *&v213[12] = v195;
          if (v194 > 3 || v195 > 3)
          {
            goto LABEL_510;
          }

          sub_1000DDEEC(0, 4, "%s:%d Ret/AccStatus/Notification Fault %02xh %02xh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 7421, v194, v195);
          if ((*(a1 + 1984) & 4) != 0)
          {
            goto LABEL_458;
          }
        }

        else
        {
          if (v95 != 3)
          {
            goto LABEL_442;
          }

          if (v17 != 2)
          {
LABEL_450:
            v8 = 2;
LABEL_451:
            sub_1000B9034(a2);
            return v8;
          }

          *&v213[4] = 3;
          *v213 = sub_1000CE018(*(a1 + 8));
          if (v18 == -1)
          {
            goto LABEL_511;
          }

          v182 = *(v18 + 1);
          *&v213[8] = v182;
          if (v182 > 1)
          {
            goto LABEL_510;
          }

          sub_1000DDEEC(0, 4, "%s:%d Ret/AccStatus/Notification Unreliable Accessory %02xh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 7450, v182);
          if ((*(a1 + 1984) & 8) != 0)
          {
            goto LABEL_458;
          }
        }

LABEL_461:
        v8 = 0;
        goto LABEL_451;
      }

      if (*v18)
      {
        if (v95 == 1)
        {
          sub_100007DB0(a1 + 2376);
          if (!v10 || (v10 & 7) != 0)
          {
            goto LABEL_509;
          }

          sub_100007DB0(v10 + 48);
          HIDWORD(v96) = 954437177 * (v17 - 1);
          LODWORD(v96) = HIDWORD(v96);
          if ((v96 >> 2) <= 0x71C71C7 && v17 >= 0x25)
          {
            v97 = 0;
            v98 = ~v18;
            v8 = 2;
            LODWORD(v99) = 36;
            while (1)
            {
              *&v213[4] = 1;
              *v213 = sub_1000CE018(*(a1 + 8));
              v100 = v97 + 1;
              v58 = __CFADD__(v18, v100);
              v101 = (v18 + v100);
              if (v58)
              {
                goto LABEL_512;
              }

              if (!v101)
              {
                goto LABEL_509;
              }

              *&v213[8] = bswap32(*v101);
              v102 = v97 + 5;
              v58 = __CFADD__(v18, v102);
              v103 = (v18 + v102);
              if (v58)
              {
                goto LABEL_512;
              }

              if (!v103)
              {
                goto LABEL_509;
              }

              *&v213[12] = bswap32(*v103);
              v104 = v97 + 9;
              v58 = __CFADD__(v18, v104);
              v105 = (v18 + v104);
              if (v58)
              {
                goto LABEL_512;
              }

              if (!v105)
              {
                goto LABEL_509;
              }

              *&v213[16] = bswap32(*v105);
              v106 = v97 + 13;
              if (v98 < v106)
              {
                goto LABEL_511;
              }

              v213[20] = *(v18 + v106);
              v107 = v97 + 14;
              if (v98 < v107)
              {
                goto LABEL_511;
              }

              v213[21] = *(v18 + v107);
              v108 = v97 + 15;
              if (v98 < v108)
              {
                goto LABEL_511;
              }

              strlcpy(&v213[22], (v18 + v108), 0x10uLL);
              v109 = v97 + 31;
              if (v98 < v109)
              {
                goto LABEL_511;
              }

              v110 = (v18 + v109);
              v111 = *v110;
              *&v213[42] = *(v110 + 2);
              *&v213[38] = v111;
              if (&vars0 == 120)
              {
                goto LABEL_511;
              }

              sub_1000DDEEC(0, 4, "%s:%s:%d Ret/AccStatus/Notification BT %08xh %08xh %08xh %02xh %02xh %02xh:%02xh:%02xh:%02xh:%02xh:%02xh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", "ProcessCmd", 7369, *&v213[8], *&v213[12], *&v213[16], v213[20], v213[21], v213[38], v213[39], v213[40], v213[41], v213[42], v213[43]);
              if (v213[21])
              {
                goto LABEL_451;
              }

              if ((*(a1 + 1984) & 2) != 0)
              {
                v209 = *&v213[38];
                v210 = *&v213[42];
                sub_1000505C0(v10 + 48, &v209);
                v112 = *(a1 + 8);
                if (!v112 || (v112 & 7) != 0)
                {
                  goto LABEL_509;
                }

                sub_10005BCC8(v112, 0, 5, v213, 44);
              }

              v8 = 0;
              v97 = v99;
              v99 = v99 + 36;
              if (v99 >= v17)
              {
                goto LABEL_451;
              }
            }
          }

          goto LABEL_450;
        }

LABEL_442:
        if (v18 < 0xFFFFFFFFFFFFFFFELL)
        {
          sub_1000DDEEC(0, 4, "%s:%d Ret/AccStatus/Notification Unknown type=%xh data=%02xh %02xh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 7467, v95, *(v18 + 1), *(v18 + 2));
          goto LABEL_450;
        }

        goto LABEL_511;
      }

      if (v17 != 3)
      {
        goto LABEL_450;
      }

      *&v213[4] = 0;
      *v213 = sub_1000CE018(*(a1 + 8));
      if (v18 == -1 || (v192 = *(v18 + 1), *&v213[8] = v192, v18 > 0xFFFFFFFFFFFFFFFDLL))
      {
LABEL_511:
        __break(0x5513u);
        goto LABEL_512;
      }

      v193 = *(v18 + 2);
      v213[12] = *(v18 + 2);
      if (v192 <= 7)
      {
        sub_1000DDEEC(0, 4, "%s:%d Ret/AccStatus/Notification Power %02xh %02xh\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 7321, v192, v193);
        if ((*(a1 + 1984) & 1) == 0)
        {
          goto LABEL_461;
        }

LABEL_458:
        v196 = *(a1 + 8);
        if (!v196 || (v196 & 7) != 0)
        {
          goto LABEL_509;
        }

        sub_10005BCC8(v196, 0, 5, v213, 44);
        goto LABEL_461;
      }

      goto LABEL_510;
    case 73:
      if (v17 != 8)
      {
        goto LABEL_441;
      }

      if (!v18)
      {
        goto LABEL_509;
      }

      v29 = bswap64(*v18);
      v30 = sub_10008387C(a1, v29);
      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = v29;
      }

      LODWORD(v8) = 4 * (v30 != 0);
      goto LABEL_481;
    case 75:
      v25 = kdebug_trace();
      if (*(a2 + 128) != 1)
      {
        goto LABEL_441;
      }

      if (!v18)
      {
        goto LABEL_509;
      }

      v26 = *v18;
      __chkstk_darwin(v25);
      LOBYTE(v208) = -86;
      v207 = 0xAAAAAAAAAAAAAAAALL;
      if (!v10)
      {
        goto LABEL_479;
      }

      if (v26 > 0x1F)
      {
        goto LABEL_510;
      }

      if (v26 > 0xE)
      {
        goto LABEL_479;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_509;
      }

      if ((!(*(*v10 + 224))(v10) || ((1 << v26) & 0x8DE2) == 0) && sub_100068B4C(v26, v27))
      {
        switch(v26)
        {
          case 0:
            sub_1000811F4(v10, &v207, 9);
            goto LABEL_478;
          case 1:
            v197 = sub_1000924A8(&v207, 9);
            goto LABEL_477;
          case 2:
            v197 = sub_1000AD154(v10, &v207, 9);
            goto LABEL_477;
          case 3:
            v197 = sub_100073670(&v207, 9);
            goto LABEL_477;
          case 4:
            v197 = sub_1000A78D4(&v207, 9);
            goto LABEL_477;
          case 5:
            v197 = sub_1000AA130(&v207, 9);
            goto LABEL_477;
          case 6:
            v197 = sub_1000B55D4(&v207, 9);
            goto LABEL_477;
          case 8:
            v197 = sub_100064E98(&v207, 9);
            goto LABEL_477;
          case 9:
            v197 = sub_1000B01A8(&v207, 9);
            goto LABEL_477;
          case 10:
            v197 = sub_10006B7B0(&v207, 9);
            goto LABEL_477;
          case 12:
            v197 = sub_1000B2984(&v207, 9);
            goto LABEL_477;
          case 13:
            v197 = sub_100096B84(&v207, 9);
            goto LABEL_477;
          case 14:
            v197 = sub_100091684(&v207, 9);
LABEL_477:
            if (!v197)
            {
LABEL_478:
              sub_1000B7DB4(a2, v10, 0, 0, 76, *(a2 + 68), &v207, 9);
            }

            break;
          default:
            break;
        }
      }

LABEL_479:
      kdebug_trace();
      LODWORD(v8) = 4;
      goto LABEL_480;
    case 77:
      if (v17)
      {
        goto LABEL_441;
      }

      v54 = *(a1 + 8);
      if (!v54 || (v54 & 7) != 0)
      {
        goto LABEL_509;
      }

      *v213 = bswap64(*(v54 + 1992));
      v50 = *(a2 + 68);
      v51 = a2;
      v52 = v10;
      v53 = 78;
LABEL_162:
      v80 = 8;
      goto LABEL_440;
    case 79:
      if (v17)
      {
        goto LABEL_441;
      }

      *v213 = bswap64(sub_100083924(a1, v14));
      v50 = *(a2 + 68);
      v51 = a2;
      v52 = v10;
      v53 = 81;
      goto LABEL_162;
    case 80:
      if (v17 < 4)
      {
        goto LABEL_441;
      }

      if (v18 >= 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_512;
      }

      v135 = *(v18 + 3);
      v136 = sub_1000C4254(v13, v14);
      if (!v136 || (v136 & 7) != 0)
      {
        goto LABEL_509;
      }

      if (!sub_100094598(v136, v10))
      {
        goto LABEL_441;
      }

      v137 = *(a1 + 8);
      if (!v137 || (v137 & 7) != 0)
      {
        goto LABEL_509;
      }

      v138 = sub_10005C6CC(v137, bswap32(v135) >> 16);
LABEL_336:
      v31 = 0;
      if (v138)
      {
        LODWORD(v8) = 0;
      }

      else
      {
        LODWORD(v8) = 4;
      }

      goto LABEL_481;
    case 82:
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_509;
      }

      v162 = (*(*v10 + 224))(v10);
      v31 = 0;
      LODWORD(v8) = 4;
      if (v17 != 4 || (v162 & 1) != 0)
      {
        goto LABEL_481;
      }

      if (!v18)
      {
        goto LABEL_509;
      }

      v164 = *v18;
      if (v18 >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_512;
      }

      v165 = *(v18 + 2);
      v213[0] = -86;
      v166 = sub_100048620(v162, v163);
      if (!v166 || (v166 & 7) != 0)
      {
        goto LABEL_509;
      }

      v167 = (*(*v166 + 272))(v166, v10, bswap32(v164) >> 16, __rev16(v165));
      if (v167 > 3)
      {
        goto LABEL_510;
      }

      v213[0] = v167;
      v50 = *(a2 + 68);
      v51 = a2;
      v52 = v10;
      v53 = 83;
      goto LABEL_416;
    case 84:
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_509;
      }

      v34 = (*(*v10 + 224))(v10);
      v31 = 0;
      LODWORD(v8) = 4;
      if (v17 != 2 || (v34 & 1) != 0)
      {
        goto LABEL_481;
      }

      if (!v18)
      {
        goto LABEL_509;
      }

      v35 = bswap32(*v18) >> 16;
      *(a1 + 2208) = v35;
      v8 = sub_1000839D4(a1, v10, v35);
      v37 = sub_100048620(v8, v36);
      if (!v37 || (v37 & 7) != 0)
      {
        goto LABEL_509;
      }

      (*(*v37 + 288))(v37, v10, v8);
      LODWORD(v8) = 0;
      v31 = 0;
      *(a1 + 2204) = 1;
      goto LABEL_481;
    case 85:
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_509;
      }

      v90 = (*(*v10 + 224))(v10);
      v31 = 0;
      LODWORD(v8) = 4;
      if (v17 != 2 || (v90 & 1) != 0)
      {
        goto LABEL_481;
      }

      if (!v18)
      {
        goto LABEL_509;
      }

      v92 = *v18;
      v93 = sub_100048620(v90, v91);
      if (!v93 || (v93 & 7) != 0)
      {
        goto LABEL_509;
      }

      (*(*v93 + 320))(v93, v10, __rev16(v92));
      goto LABEL_386;
    case 86:
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_509;
      }

      v124 = (*(*v10 + 224))(v10);
      v31 = 0;
      LODWORD(v8) = 4;
      if (v17 != 1 || (v124 & 1) != 0)
      {
        goto LABEL_481;
      }

      if (!v18)
      {
        goto LABEL_509;
      }

      v126 = *v18;
      if (v126 > 1)
      {
        goto LABEL_441;
      }

      v127 = sub_100048620(v124, v125);
      if (!v127 || (v127 & 7) != 0)
      {
        goto LABEL_509;
      }

      (*(*v127 + 336))(v127, v10, v126 != 0);
      goto LABEL_386;
    case 88:
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_509;
      }

      v157 = (*(*v10 + 224))(v10);
      v31 = 0;
      LODWORD(v8) = 4;
      if (v17 != 1 || (v157 & 1) != 0)
      {
        goto LABEL_481;
      }

      if (!v18)
      {
        goto LABEL_509;
      }

      v159 = *v18;
      if (v159 > 3)
      {
        goto LABEL_510;
      }

      if (v159 == 2)
      {
        v191 = sub_100048620(v157, v158);
        if (!v191 || (v191 & 7) != 0)
        {
          goto LABEL_509;
        }

        v161 = (*(*v191 + 344))(v191, v10);
      }

      else if (v159 == 1)
      {
        v190 = sub_100048620(v157, v158);
        if (!v190 || (v190 & 7) != 0)
        {
          goto LABEL_509;
        }

        v161 = (*(*v190 + 328))(v190, v10);
      }

      else
      {
        if (*v18)
        {
          goto LABEL_441;
        }

        v160 = sub_100048620(v157, v158);
        if (!v160 || (v160 & 7) != 0)
        {
          goto LABEL_509;
        }

        v161 = (*(*v160 + 296))(v160, v10);
      }

      *&v213[1] = -21846;
      v213[0] = v159;
      if (&vars0 == 159)
      {
LABEL_512:
        __break(0x5500u);
LABEL_513:
        __break(0x5507u);
        __break(0x5515u);
        JUMPOUT(0x100081000);
      }

      *&v213[1] = __rev16(v161);
      v50 = *(a2 + 68);
      v51 = a2;
      v52 = v10;
      v53 = 89;
LABEL_439:
      v80 = 3;
LABEL_440:
      sub_1000B7DB4(v51, v52, 0, 0, v53, v50, v213, v80);
LABEL_441:
      v31 = 0;
      LODWORD(v8) = 4;
      goto LABEL_481;
    case 90:
      if (!v10 || (v10 & 7) != 0)
      {
        goto LABEL_509;
      }

      v119 = (*(*v10 + 224))(v10);
      v31 = 0;
      LODWORD(v8) = 4;
      if (v17 || (v119 & 1) != 0)
      {
        goto LABEL_481;
      }

      *v213 = -21846;
      v121 = sub_100048620(v119, v120);
      if (!v121 || (v121 & 7) != 0)
      {
        goto LABEL_509;
      }

      v122 = (*(*v121 + 280))(v121, v10);
      if (!(*(*v10 + 272))(v10))
      {
        goto LABEL_255;
      }

      if (!v123 || (v123 & 7) != 0)
      {
        goto LABEL_509;
      }

      if (v122 >= v123[94])
      {
        v122 = v123[94];
      }

LABEL_255:
      *v213 = __rev16(v122);
      v50 = *(a2 + 68);
      v51 = a2;
      v52 = v10;
      v53 = 91;
LABEL_256:
      v80 = 2;
      goto LABEL_440;
    case 92:
      v28 = sub_100065198(v13);
      if (!v28 || (v28 & 7) != 0)
      {
        goto LABEL_509;
      }

      if (sub_100058EBC(v28, v10) != 6)
      {
        goto LABEL_441;
      }

      v24 = sub_100083BA0(a1, a2);
LABEL_290:
      LODWORD(v8) = v24;
      goto LABEL_480;
    case 94:
      v19 = sub_100065198(v13);
      if (!v19 || (v19 & 7) != 0)
      {
        goto LABEL_509;
      }

      if (sub_100058EBC(v19, v10) != 6)
      {
        goto LABEL_441;
      }

      v8 = sub_100083C74(a1, a2);
      if (!v8)
      {
        goto LABEL_451;
      }

      goto LABEL_480;
    case 97:
      if (v17 != 1)
      {
        goto LABEL_441;
      }

      if (!v18)
      {
        goto LABEL_509;
      }

      v168 = *v18;
      *&v169 = 0xAAAAAAAAAAAAAAAALL;
      *(&v169 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v213[16] = v169;
      *&v213[32] = v169;
      *v213 = v169;
      v170 = v168 == 1 ? 0 : 9;
      *v213 = v170;
      *&v213[8] = v10;
      v171 = sub_100065198(v13);
      if (!v171)
      {
        goto LABEL_509;
      }

      if ((v171 & 7) != 0)
      {
        goto LABEL_509;
      }

      v172 = sub_1000932FC(v171, v10);
      *&v213[16] = v172;
      v173 = sub_100065198(v172);
      if (!v173 || (v173 & 7) != 0)
      {
        goto LABEL_509;
      }

      *&v213[20] = sub_100092B58(v173, v10);
      *&v213[24] = *(a1 + 8);
      sub_100077384(a1, 0, 4, v213, 48);
      goto LABEL_386;
    case 98:
      if (!v17)
      {
        goto LABEL_441;
      }

      if (v18)
      {
        operator new[]();
      }

      goto LABEL_509;
    case 100:
      v24 = sub_100083D34(a1, a2);
      goto LABEL_290;
    case 101:
      memset(v213, 0, 24);
      v131 = sub_100065198(v13);
      if (!v131)
      {
        goto LABEL_509;
      }

      if ((v131 & 7) != 0)
      {
        goto LABEL_509;
      }

      v132 = sub_1000949E0(v131, v10, 0);
      v134 = sub_10004B1AC(v132, v133);
      if (!v134 || (v134 & 7) != 0)
      {
        goto LABEL_509;
      }

      if (!(*(*v134 + 344))(v134, v213, v132))
      {
        LODWORD(v8) = 4;
        if ((v213[23] & 0x80000000) != 0)
        {
          operator delete(*v213);
        }

LABEL_396:
        if (!a2)
        {
          return 0;
        }

        goto LABEL_480;
      }

      if (!(sub_1000D6C34(v10, 0) >> 16))
      {
        operator new[]();
      }

      goto LABEL_513;
    case 103:
      if (v17 != 1)
      {
        goto LABEL_441;
      }

      if (!v18)
      {
        goto LABEL_509;
      }

      v140 = *v18;
      memset(v213, 0, 24);
      if (v140 > 1)
      {
        goto LABEL_510;
      }

      v141 = sub_10002DDA4(v13, v14);
      if (!v141 || (v141 & 7) != 0)
      {
        goto LABEL_509;
      }

      (*(*v141 + 96))(v141, v140, v213);
      v142 = v213[23];
      if (v213[23] < 0)
      {
        v142 = *&v213[8];
      }

      if (v142 < 0xFFFFFFFFFFFFFFFELL)
      {
        sub_1000D6C34(v10, 0);
        operator new[]();
      }

      goto LABEL_512;
    case 105:
      if (v17)
      {
        goto LABEL_346;
      }

      v20 = sub_10004B1AC(v13, v14);
      if (!v20 || (v20 & 7) != 0)
      {
        goto LABEL_509;
      }

      v21 = (*(*v20 + 192))(v20);
      if (v21)
      {
        v23 = sub_1000154F0(v21, v22);
        if (!v23 || (v23 & 7) != 0)
        {
          goto LABEL_509;
        }

        sub_10001804C(v23);
        goto LABEL_346;
      }

      v183 = sub_10004B1AC(v21, v22);
      if (!v183 || (v183 & 7) != 0)
      {
        goto LABEL_509;
      }

      v184 = (*(*v183 + 184))(v183);
      v185 = v184;
      v187 = sub_1000154F0(v184, v186);
      v189 = (v187 & 7) == 0 && v187 != 0;
      if ((v185 & 1) == 0)
      {
        if (!v189)
        {
          goto LABEL_509;
        }

        sub_100017F50(v187);
LABEL_346:
        v31 = 0;
        LODWORD(v8) = 2;
        goto LABEL_481;
      }

      if (!v189)
      {
        goto LABEL_509;
      }

      sub_10001814C(v187);
LABEL_386:
      LODWORD(v8) = 0;
LABEL_480:
      v31 = 0;
LABEL_481:
      if ((a2 & 7) != 0)
      {
        goto LABEL_509;
      }

      if (*(a2 + 126) == v11)
      {
        sub_1000B7854(a2, v10, 0, 0, 2, *(a2 + 68), v8, v11, 0, 255, 0, 0, 0, 0);
      }

      v198 = *(a1 + 8);
      if (v11 != 80)
      {
        v199 = sub_1000B6DB4(v198, a2, 0, 1u);
        v8 = v199;
        if (v11 != 73 || !v31)
        {
          return v8;
        }

        if (v31)
        {
          v201 = sub_100052234(v199, v200);
          if (!v201 || (v201 & 7) != 0)
          {
            goto LABEL_509;
          }

          *v213 = (*(*v201 + 88))(v201);
          v199 = sub_100088544(*(a1 + 8), 0, v213, 4u, 2, 0, 0xFFFFFFFFLL);
        }

        if ((v31 & 0x400) != 0)
        {
          v199 = sub_10007E414(a1, 1, v10);
        }

        if ((v31 & 0x4000) != 0)
        {
          v202 = sub_100052234(v199, v200);
          if (!v202 || (v202 & 7) != 0)
          {
            goto LABEL_509;
          }

          *v213 = (*(*v202 + 96))(v202);
          v199 = sub_100088544(*(a1 + 8), 0xEu, v213, 4u, 2, 0, 0xFFFFFFFFLL);
        }

        if ((v31 & 0x8000) != 0)
        {
          v203 = sub_1000D5ED0(v199, v200);
          if (!v203 || (v203 & 7) != 0)
          {
            goto LABEL_509;
          }

          *v213 = (*(*v203 + 104))(v203);
          v199 = sub_100088544(*(a1 + 8), 0xFu, v213, 1u, 2, 0, 0xFFFFFFFFLL);
        }

        if ((v31 & 0x20000) == 0)
        {
          goto LABEL_507;
        }

        v204 = sub_10004B1AC(v199, v200);
        if (v204 && (v204 & 7) == 0)
        {
          (*(*v204 + 664))(v204, 0);
LABEL_507:
          if ((v31 & 0x80000) != 0)
          {
            sub_10007E798(a1, 1, v10);
          }

          return v8;
        }

        goto LABEL_509;
      }

      return sub_1000B6DB4(v198, a2, 1, 0);
    case 108:
      if (*(a2 + 128) != 7)
      {
        LODWORD(v8) = 4;
        sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::ProcessCmd error handling kIapGeneralRequestSiriMode\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 8033);
        goto LABEL_480;
      }

      if (v18 > 0xFFFFFFFFFFFFFFF9)
      {
        goto LABEL_511;
      }

      v2.i32[0] = *v18;
      v151 = *(v18 + 4);
      v152 = *(v18 + 5);
      v153 = *(v18 + 6);
      v154 = sub_10004B1AC(v13, v14);
      if (!v154 || (v154 & 7) != 0)
      {
        goto LABEL_509;
      }

      v155 = vmovl_u8(v2).u64[0];
      *v213 = vuzp1_s8(v155, v155).u32[0];
      v213[4] = v151;
      v213[5] = v152;
      if (v153 > 3)
      {
        goto LABEL_510;
      }

      (*(*v154 + 704))(v154, v213, v153);
      goto LABEL_386;
    case 109:
      v143 = *(a2 + 128);
      v144 = *(a2 + 24);
      if (!*(a2 + 128) || !v144)
      {
        v206 = *(a2 + 128);
        v207 = *(a2 + 24);
        v205 = 8049;
        v177 = "%s:%s-%d kIapGeneralAccessoryUserLog error, tmpDataLen=%u and dataPtr=%hhx";
        goto LABEL_393;
      }

      v145 = sub_10004B1AC(v13, v14);
      if (!v145 || (v145 & 7) != 0)
      {
        goto LABEL_509;
      }

      (*(*v145 + 728))(v145, v144, v143);
      goto LABEL_386;
    case 110:
      v174 = *(a2 + 128);
      v175 = *(a2 + 24);
      if (!*(a2 + 128) || !v175)
      {
        v206 = *(a2 + 128);
        v207 = *(a2 + 24);
        v205 = 8064;
        v177 = "%s:%s-%d kIapGeneralAccessoryKernelLog error, tmpDataLen=%u and dataPtr=%hhx";
LABEL_393:
        LODWORD(v8) = 4;
        syslog(4, v177, "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", "ProcessCmd", v205, v206, v207);
        goto LABEL_480;
      }

      v176 = sub_10004B1AC(v13, v14);
      if (!v176 || (v176 & 7) != 0)
      {
        goto LABEL_509;
      }

      (*(*v176 + 736))(v176, v175, v174);
      goto LABEL_386;
    default:
      LODWORD(v8) = 4;
      sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::ProcessCmd: Invalid CmdID: 0x%04X\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 8073, v11);
      goto LABEL_480;
  }
}

uint64_t sub_1000811F4(uint64_t result, uint64_t a2, int a3)
{
  if (!a2 || a3 != 9)
  {
    __break(0x5518u);
    goto LABEL_41;
  }

  v4 = result;
  v5 = sub_100046A8C(result, a2);
  result = sub_100065198(v5);
  if (!result)
  {
    goto LABEL_41;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_41;
  }

  result = sub_1000949E0(result, v4, 0);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_41;
  }

  v6 = result;
  v7 = (*(*v5 + 192))(v5, v4);
  v8 = (*(*v5 + 256))(v5);
  v9 = 0x404A853FELL;
  if (v8)
  {
    v9 = 0x604A853FELL;
  }

  v10 = v9 | v7;
  if ((*(*v5 + 216))(v5))
  {
    v10 |= 0x8000uLL;
  }

  if ((*(*v5 + 224))(v5))
  {
    v10 |= 0x10000uLL;
  }

  if ((*(*v5 + 232))(v5))
  {
    v10 |= 0x20000uLL;
  }

  if (v4)
  {
    if ((*(*v5 + 240))(v5, v4))
    {
      v10 |= 0x40000uLL;
    }

    if ((*(*v5 + 248))(v5, v4))
    {
      v10 |= 0x400000uLL;
    }
  }

  if ((*(*v5 + 152))(v5))
  {
    v11 = v10 | 0x1000000;
  }

  else
  {
    v11 = v10;
  }

  if ((*(*v5 + 120))(v5))
  {
    v11 |= 0x8000000uLL;
  }

  if ((*(*v5 + 128))(v5))
  {
    v11 |= 0x10000000uLL;
  }

  result = (*(*v5 + 136))(v5);
  if (result)
  {
    v11 |= 0x20000000uLL;
  }

  if (v6)
  {
    if ((v6 & 7) != 0)
    {
      goto LABEL_41;
    }

    if (sub_10005BDCC(v6))
    {
      v11 |= 0x2000uLL;
    }
  }

  result = (*(*v5 + 88))(v5);
  if (v6 && result)
  {
    if ((v6 & 7) == 0)
    {
      result = sub_10005BDCC(v6);
      if (result)
      {
        v11 |= 0x100100000uLL;
      }

      goto LABEL_38;
    }

LABEL_41:
    __break(0x5516u);
    goto LABEL_42;
  }

LABEL_38:
  *a2 = 0;
  if (a2 != -1)
  {
    *(a2 + 1) = bswap64(v11);
    return 0;
  }

LABEL_42:
  __break(0x5500u);
  return result;
}

uint64_t sub_100081574(uint64_t result)
{
  if (!result || (v1 = result, (result & 7) != 0) || (v3 = 0, (result = sub_100065198(result)) == 0) || (result & 7) != 0 || (result = sub_100092790(result, *(v1 + 8), 0xDu), (result & 7) != 0))
  {
    __break(0x5516u);
    goto LABEL_15;
  }

  v2 = result;
  result = sub_100097578(&v3, *(v1 + 8));
  if (v3 >= 2u)
  {
LABEL_15:
    __break(0x550Au);
    return result;
  }

  result = v3 == 1;
  if (v2 && v3 != 1)
  {
    result = sub_100095A00(v2);
    if (result <= 3)
    {
      if (result != 3)
      {
        return dword_1000EF210[result];
      }

      sub_1000DDEEC(0, 4, "%s:%d Got an unknown iPod Out Mode!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 18272);
      return 0;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_100081650(uint64_t result)
{
  if (!result)
  {
    goto LABEL_95;
  }

  v1 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_95;
  }

  result = kdebug_trace();
  *(v1 + 2212) = 1;
  if (!*(v1 + 8))
  {
    __break(0x5518u);
    goto LABEL_95;
  }

  v2 = sub_100065198(result);
  result = *(v1 + 8);
  if (!result)
  {
    goto LABEL_95;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_95;
  }

  result = sub_100018DC0(result);
  if (!v2 || (v2 & 7) != 0)
  {
    goto LABEL_95;
  }

  v3 = result;
  result = sub_1000592F0(v2, result);
  v32 = -21846;
  v4 = *(v1 + 1588);
  v8 = __CFADD__(v4, 1);
  v5 = v4 + 1;
  if (!v8)
  {
    v6 = result;
    *(v1 + 1588) = v5;
    result = *(v1 + 8);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_95;
    }

    sub_10005BB24(result, 3u);
    result = sub_100092790(v2, *(v1 + 8), 3u);
    if (result)
    {
      if ((result & 7) != 0)
      {
        goto LABEL_95;
      }

      (*(*result + 88))(result, *(v1 + 8));
    }

    result = *(v1 + 8);
    if (!result)
    {
      goto LABEL_95;
    }

    if ((result & 7) != 0)
    {
      goto LABEL_95;
    }

    sub_10005BB6C(result, 3u);
    result = *(v1 + 8);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_95;
    }

    sub_10005BB24(result, 4u);
    result = sub_100092790(v2, *(v1 + 8), 4u);
    if (result)
    {
      if ((result & 7) != 0)
      {
        goto LABEL_95;
      }

      (*(*result + 88))(result, *(v1 + 8));
    }

    result = *(v1 + 8);
    if (!result)
    {
      goto LABEL_95;
    }

    if ((result & 7) != 0)
    {
      goto LABEL_95;
    }

    sub_10005BB6C(result, 4u);
    result = *(v1 + 8);
    if (!result || (result & 7) != 0)
    {
      goto LABEL_95;
    }

    result = sub_10005BDFC(result);
    if (result == result)
    {
      v7 = result;
      if (result != -1)
      {
        goto LABEL_39;
      }

      if (!v3 || (v3 & 7) != 0)
      {
        goto LABEL_95;
      }

      if (((*(*v3 + 224))(v3) & 1) != 0 || ((*(*v3 + 56))(v3), !IOAccessoryManagerGetServiceWithPrimaryPort()))
      {
        v7 = -1;
        goto LABEL_39;
      }

      result = IOAccessoryManagerGetAccessoryID();
      if (result == result)
      {
        v8 = result != 100 && result >= 0x10;
        if (v8)
        {
          v7 = -1;
        }

        else
        {
          v7 = result;
        }

LABEL_39:
        *(v1 + 1224) = 1;
        if (v7 == -1)
        {
          v9 = 16;
        }

        else
        {
          v9 = v7;
        }

        *(v1 + 1228) = v9;
        *(v1 + 1232) = v3;
        *(v1 + 1240) = 0;
        *(v1 + 1248) = *(v1 + 8);
        pthread_mutex_lock((v1 + 1280));
        v32 = 112;
        sub_10006733C(v1, 0xFFFFFFFFLL, &v32, 0, 0xFFFFLL);
        v32 = 113;
        sub_10006733C(v1, 0xFFFFFFFFLL, &v32, 0, 0xFFFFLL);
        v32 = 115;
        sub_10006733C(v1, 0xFFFFFFFFLL, &v32, 0, 0xFFFFLL);
        pthread_mutex_unlock((v1 + 1280));
        sub_100075A08(v1);
        v32 = 0;
        sub_10006733C(v1, 0xFFFFFFFFLL, &v32, 0, 0xFFFFLL);
        v32 = 20;
        sub_10006733C(v1, 0xFFFFFFFFLL, &v32, 0, 0xFFFFLL);
        v32 = 23;
        v10 = sub_10006733C(v1, 0xFFFFFFFFLL, &v32, 0, 0xFFFFLL);
        result = sub_100065198(v10);
        if (result && (result & 7) == 0)
        {
          v11 = sub_100059100(result, v3);
          if (!v6)
          {
            goto LABEL_55;
          }

          result = sub_100065198(v11);
          if (result)
          {
            if ((result & 7) == 0)
            {
              v12 = sub_100092B58(result, v6);
              result = sub_100065198(v12);
              if (result)
              {
                if ((result & 7) == 0)
                {
                  v13 = sub_100059100(result, v6);
                  result = sub_100065198(v13);
                  if (result)
                  {
                    if ((result & 7) == 0)
                    {
                      sub_100092C44(result, v6);
                      v14 = sub_1000769C0(v1, *(v1 + 8), -1);
                      result = sub_100065198(v14);
                      if (result)
                      {
                        if ((result & 7) == 0)
                        {
                          sub_100058CA0(result, v6, -1);
                          if (v12)
                          {
                            LOWORD(v28[0]) = 120;
                            sub_10006733C(v1, 0xFFFFFFFFLL, v28, 0, 0xFFFFLL);
                            sub_100076A8C(v1, *(v1 + 8), v6, v12);
                          }

LABEL_55:
                          result = sub_10008387C(v1, 132);
                          if (*(v1 + 2202))
                          {
                            v15 = 15;
LABEL_93:
                            kdebug_trace();
                            return v15;
                          }

                          if (v3)
                          {
                            if ((v3 & 7) == 0)
                            {
                              v16 = (*(*v3 + 264))(v3);
                              *(v1 + 2214) = v16;
                              result = sub_100065198(v16);
                              if (result)
                              {
                                if ((result & 7) == 0)
                                {
                                  sub_100093338(result, v3, 56);
                                  sub_100075B90(v1, v3, 0);
                                  *(v1 + 2200) = 1;
                                  result = *(v1 + 8);
                                  if (result)
                                  {
                                    if ((result & 7) == 0)
                                    {
                                      v17 = sub_10005BC54(result);
                                      result = sub_100075A48(v1, 0, 0);
                                      if (v17)
                                      {
                                        if ((v17 & 7) == 0)
                                        {
                                          v18 = *(v17 + 776);
                                          if (v18)
                                          {
                                            if ((v18 & 7) == 0)
                                            {
                                              if (*(v18 + 16))
                                              {
                                                result = sub_1000C05AC(v17 + 720, 0, 0);
                                              }

                                              result = sub_100065198(result);
                                              if (result)
                                              {
                                                if ((result & 7) == 0)
                                                {
                                                  v19 = sub_100093438(result, v3);
                                                  result = sub_100065198(v19);
                                                  if (result)
                                                  {
                                                    if ((result & 7) == 0)
                                                    {
                                                      sub_100092FE4(result, v3, 0, 0);
                                                      sub_10007692C(v1, v20, 1);
                                                      if (((*(*v3 + 224))(v3) & 1) == 0)
                                                      {
                                                        sub_100076E70(v1, v21, 0);
                                                      }

                                                      v30 = 0xAAAAAAAAAAAAAAAALL;
                                                      v31 = 0xAAAAAAAAAAAAAAAALL;
                                                      v28[0] = 0xF00000000;
                                                      v28[1] = v3;
                                                      v28[2] = 0;
                                                      v29 = *(v1 + 8);
                                                      v22 = sub_10005FBC8(0, 0, v28, 48, v29);
                                                      result = sub_1000CC7A0(v22, v23);
                                                      if (result)
                                                      {
                                                        v24 = result;
                                                        if ((result & 7) == 0)
                                                        {
                                                          v25 = sub_1000CE018(*(v1 + 8));
                                                          (*(*v24 + 120))(v24, v25);
                                                          sub_1000743E4(v1, 1);
                                                          *(v1 + 1272) = 0;
                                                          sub_10007478C(v1 + 1992);
                                                          sub_100074588(v1);
                                                          result = *(v1 + 8);
                                                          if (result)
                                                          {
                                                            if ((result & 7) == 0)
                                                            {
                                                              sub_10005BD80(result);
                                                              v32 = 116;
                                                              v26 = sub_10006797C(v1, 116);
                                                              if (v26)
                                                              {
LABEL_87:
                                                                if (sub_10006825C(v3) && (v7 == 100 || v7 == -1))
                                                                {
                                                                  *(v1 + 1533) = 1;
                                                                  if (sub_1000671A8(v1, -1, 115, 0, 2000))
                                                                  {
                                                                    sub_1000DDEEC(0, 4, "%s:%d SetCmdTimeout failed!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 16006);
                                                                  }
                                                                }

                                                                sub_10008387C(v1, 132);
                                                                v15 = 0;
                                                                goto LABEL_93;
                                                              }

                                                              result = sub_100065198(v26);
                                                              if (result && (result & 7) == 0)
                                                              {
                                                                if (sub_1000C9FD0(result))
                                                                {
                                                                  if ((*(*v3 + 208))(v3) == 2)
                                                                  {
                                                                    v27 = 10100;
                                                                  }

                                                                  else
                                                                  {
                                                                    v27 = 3100;
                                                                  }

                                                                  sub_1000671A8(v1, -1, v32, 0, v27);
                                                                }

                                                                goto LABEL_87;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_95:
        __break(0x5516u);
      }
    }

    __break(0x550Au);
  }

  __break(0x5500u);
  return result;
}

uint64_t sub_100081DB4(uint64_t result, uint64_t a2)
{
  if (!result || (v2 = result, (result & 7) != 0) || (result = kdebug_trace(), !a2) || (a2 & 7) != 0)
  {
LABEL_17:
    __break(0x5516u);
    __break(0x5513u);
    __break(0x5507u);
    goto LABEL_18;
  }

  if (!*(a2 + 128))
  {
    v5 = 22;
    goto LABEL_11;
  }

  v4 = *(v2 + 2200);
  if (v4 < 2)
  {
    if ((v4 & 1) == 0 || *(v2 + 2202))
    {
      v5 = 2;
LABEL_11:
      kdebug_trace();
      return v5;
    }

    v7 = *(a2 + 24);
    if (v7)
    {
      v6 = *(a2 + 8);
      if (*v7)
      {
        if (*(a2 + 128) != 1)
        {
          operator new();
        }
      }

      sub_10008B6B4(v2 + 1992, 0);
      sub_10008B7B4(v2, a2, v6);
      v5 = 0;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(0x550Au);
  __break(0x5500u);
  __break(0x5515u);
  __break(0x5514u);
  return result;
}

uint64_t sub_100082D70(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_39;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_39;
  }

  v17 = 8;
  result = *(result + 8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_39;
  }

  result = sub_100018DC0(result);
  if (!a2 || (a2 & 7) != 0)
  {
    goto LABEL_39;
  }

  v5 = *(a2 + 128);
  v6 = *(a2 + 24);
  v7 = *(a2 + 68);
  v16 = 116;
  if (v5 != 1)
  {
    return 2;
  }

  if (v6)
  {
    v8 = v2[34].__opaque[16];
    if (v8 < 2)
    {
      v9 = result;
      v10 = *v6;
      if ((v8 & 1) == 0 && !v2[34].__opaque[18])
      {
        return 4;
      }

      if (v2[34].__opaque[18])
      {
        v17 = 5;
        v16 = 116;
        sub_10006733C(v2, 0xFFFFFFFFLL, &v16, 0, 0xFFFFLL);
        goto LABEL_17;
      }

      if ((v8 & 1) == 0)
      {
        return 4;
      }

      if (v10 <= 7)
      {
        if (v10 <= 1)
        {
          if (v10)
          {
            v12 = 4;
LABEL_24:
            v17 = v12;
            goto LABEL_17;
          }

          result = sub_10008BCD0(v2[31].__opaque);
          v17 = result;
          if (result)
          {
LABEL_17:
            v2[34].__opaque[16] = 0;
            sub_1000B748C(v9, 0, 0, 60, v7, &v17, 1);
          }

          v13 = v2[30].__opaque[37];
          if (v13 <= 1)
          {
            if ((v13 & 1) == 0)
            {
              goto LABEL_17;
            }

            v14 = v2[30].__opaque[36];
            if (v14 <= 1)
            {
              if ((v14 & 1) == 0)
              {
                v12 = 2;
                goto LABEL_24;
              }

              goto LABEL_17;
            }
          }

          goto LABEL_40;
        }

        if (v10 == 2)
        {
          v17 = 6;
          v16 = 116;
          sub_10006733C(v2, 0xFFFFFFFFLL, &v16, 0, 0xFFFFLL);
          result = pthread_mutex_lock(v2 + 21);
          v15 = v2[34].__opaque[18];
          if (v15 != 255)
          {
            v2[34].__opaque[18] = v15 + 1;
            pthread_mutex_unlock(v2 + 21);
            sub_100087400(v2, 0);
            goto LABEL_17;
          }

          goto LABEL_41;
        }

        if (v10 == 3)
        {
          v17 = 4;
          v16 = 116;
          sub_10006733C(v2, 0xFFFFFFFFLL, &v16, 0, 0xFFFFLL);
          v2[34].__opaque[17] = 1;
          sub_1000671A8(v2, -1, 114, 0, 3000);
          goto LABEL_17;
        }

        v11 = 4;
        sub_1000DDEEC(0, 4, "%s:%d accEndIDPSStatus %X is not supported\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 16147, v10);
        return v11;
      }
    }
  }

  else
  {
LABEL_39:
    __break(0x5516u);
  }

LABEL_40:
  __break(0x550Au);
LABEL_41:
  __break(0x5507u);
  return result;
}

uint64_t sub_100083398(uint64_t result, __darwin_time_t a2)
{
  if (!result)
  {
    goto LABEL_49;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_49;
  }

  if (*(a2 + 128) != 2)
  {
    return sub_1000B9034(a2);
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    goto LABEL_49;
  }

  if (v4 == -1)
  {
LABEL_50:
    __break(0x5513u);
    goto LABEL_51;
  }

  v5 = *(a2 + 68);
  v6 = *v4;
  v7 = v4[1];
  if (v7 <= 66)
  {
    if (v7 != 63)
    {
      if (v7 == 64)
      {
        return sub_1000B9034(a2);
      }

      goto LABEL_15;
    }

    v15 = 0;
    v16 = 117;
    if (sub_10006733C(result, v5, &v16, &v15, 0xFFFFLL) || !v15)
    {
      return sub_1000B9034(a2);
    }

    v14 = bswap32(*v15) >> 16;
    if (!v6)
    {
      result = sub_100013610(v2 + 1200, &v14);
      if (v2 + 1208 != result)
      {
        if (!result)
        {
          goto LABEL_49;
        }

        if ((result & 7) != 0)
        {
          goto LABEL_49;
        }

        v11 = *(result + 40);
        if (!v11 || (v11 & 7) != 0)
        {
          goto LABEL_49;
        }

        *(v11 + 32) = 1;
      }
    }

    if (v15)
    {
      operator delete[]();
    }

    result = sub_10004AB10(0, v10);
    if (result)
    {
      v12 = result;
      if ((result & 7) == 0)
      {
        v13 = sub_1000CE018(*(v2 + 8));
        (*(*v12 + 128))(v12, v13, v14, v6 == 0);
        return sub_1000B9034(a2);
      }
    }

    goto LABEL_49;
  }

  if (v7 != 67)
  {
    if (v7 != 93)
    {
      if (v7 == 96)
      {
        v16 = 96;
        sub_10006733C(result, v5, &v16, 0, 0xFFFFLL);
        return sub_1000B9034(a2);
      }

LABEL_15:
      sub_1000DDEEC(0, 4, "%s:%d DevACK for cmdID %X not handled\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 12711, v7);
      return sub_1000B9034(a2);
    }

    v15 = 0;
    v16 = 93;
    if (sub_10006733C(result, v5, &v16, &v15, 0xFFFFLL))
    {
      return sub_1000B9034(a2);
    }

    result = v15;
    if (!v15)
    {
      return sub_1000B9034(a2);
    }

    if ((v15 & 7) == 0)
    {
      operator delete();
    }

    goto LABEL_49;
  }

  v15 = 0;
  v16 = 118;
  v8 = sub_10006733C(result, v5, &v16, &v15, 0xFFFFLL);
  v9 = v15;
  if (v8 || !v15)
  {
LABEL_28:
    if (v9)
    {
      operator delete[]();
    }

    return sub_1000B9034(a2);
  }

  v14 = bswap32(*v15) >> 16;
  result = sub_100013610(v2 + 1200, &v14);
  if (v2 + 1208 == result)
  {
LABEL_25:
    if (!v6)
    {
      sub_100087A14(v2, v14, 0xFFFFFFFF);
    }

    v9 = v15;
    goto LABEL_28;
  }

  if (!result || (result & 7) != 0 || (result = *(result + 40)) == 0 || (result & 7) != 0)
  {
LABEL_49:
    __break(0x5516u);
    goto LABEL_50;
  }

  if (!WORD1(v5))
  {
    sub_1000891A4(result, v5);
    goto LABEL_25;
  }

LABEL_51:
  __break(0x5507u);
  return result;
}

void sub_100083698(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_25;
  }

  v4 = *(a2 + 24);
  v5 = *(a2 + 128);
  v18 = 0;
  if (v5 < 3)
  {
    v14 = 0;
    LODWORD(v12) = 0;
    v15 = 4;
LABEL_21:
    v16 = *(result + 8);
    if (v16 && (v16 & 7) == 0)
    {
      v17 = sub_100018DC0(v16);
      if (v12 >= v14)
      {
        sub_1000B7768(v17, 0, 0, 2, *(a2 + 68), v15, 66, 0);
      }

      goto LABEL_26;
    }

LABEL_25:
    __break(0x5516u);
LABEL_26:
    __break(0x5515u);
    goto LABEL_27;
  }

  if (!v4)
  {
    goto LABEL_25;
  }

  v18 = bswap32(*v4) >> 16;
  v6 = sub_100013610(result + 1200, &v18);
  if (result + 1208 == v6)
  {
    v14 = 0;
    LODWORD(v12) = 0;
    v15 = 1;
    goto LABEL_21;
  }

  if (!v6)
  {
    goto LABEL_25;
  }

  if ((v6 & 7) != 0)
  {
    goto LABEL_25;
  }

  v8 = *(v6 + 40);
  v9 = sub_10004AB10(v6, v7);
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = v9;
  if ((v9 & 7) != 0)
  {
    goto LABEL_25;
  }

  v11 = sub_1000CE018(*(result + 8));
  if (v4 < 0xFFFFFFFFFFFFFFFELL)
  {
    v12 = v5 - 2;
    v13 = (*(*v10 + 120))(v10, v11, v18, v12, v4 + 1);
    v14 = v13;
    if (v13 == v12)
    {
      v15 = 0;
    }

    else
    {
      sub_1000DDEEC(0, 4, "%s:%d ERROR: acceptedBytes=%d, sentBytes=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 14086, v13, v12);
      v15 = 23;
    }

    if (!v8 || (v8 & 7) != 0)
    {
      goto LABEL_25;
    }

    *(v8 + 36) = v12;
    *(v8 + 40) = v14;
    goto LABEL_21;
  }

LABEL_27:
  __break(0x5513u);
}

uint64_t sub_10008387C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_10;
  }

  v2 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_10;
  }

  result = sub_100083924(result, a2);
  if ((a2 & ~result) != 0)
  {
    return 22;
  }

  v4 = v2[1];
  if (!v4 || (v4 & 7) != 0)
  {
LABEL_10:
    __break(0x5516u);
  }

  else
  {
    *(v4 + 1992) = a2 | 0x84;
    if ((a2 & 0x100000) != 0)
    {
      (*(*v2 + 16))(v2, 327688, 0, 0);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100083924(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0 || (result = sub_100046A8C(result, a2)) == 0 || (result & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v2 = (*(*result + 216))(result);
    if (v2)
    {
      v3 = 1769125;
    }

    else
    {
      v3 = 1769124;
    }

    v6 = -1;
    v5 = -1;
    sub_100065198(v2);
    sub_1000C9B60(7, &v6, &v5);
    if (v5 == -1 || v6 == 255)
    {
      return v3;
    }

    else
    {
      return v3 | 8;
    }
  }

  return result;
}

uint64_t sub_1000839D4(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!result)
  {
    goto LABEL_27;
  }

  v3 = result;
  if ((result & 7) != 0)
  {
    goto LABEL_27;
  }

  v6 = a3;
  if (sub_1000477BC() == 1)
  {
LABEL_26:
    syslog(4, "MapAvailableCurrent: %d -> %d", a3, v6);
    return v6;
  }

  v7 = sub_100047284();
  result = sub_1000C4254(v7, v8);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_27;
  }

  result = sub_10005A468(result, a2);
  if (v7 >= 8)
  {
LABEL_28:
    __break(0x550Au);
    goto LABEL_29;
  }

  v10 = result;
  v11 = a3 < 0x5DD || v7 == 3;
  v12 = v11 ? 1 : result;
  v13 = v12 ? a3 : 1500;
  result = sub_100048620(result, v9);
  v20 = v13;
  if (!result || (v14 = result, (result & 7) != 0))
  {
LABEL_27:
    __break(0x5516u);
    goto LABEL_28;
  }

  v15 = (*(*result + 232))(result);
  result = (*(*v14 + 240))(v14);
  v16 = 100 * v15;
  if ((v16 & 0xFFFFFFFF00000000) != 0)
  {
LABEL_29:
    __break(0x550Cu);
    goto LABEL_30;
  }

  if (!result)
  {
LABEL_30:
    __break(0x5503u);
    goto LABEL_31;
  }

  v17 = v16 / result;
  if (v16 / result <= 0xFF)
  {
    if (a2 && (a2 & 7) == 0)
    {
      v18 = (*(*a2 + 224))(a2);
      sub_100047814(v18, v3 + 1592, v3 + 1760, v3 + 1696, v10, v7, v13, v17, &v20);
      if (v19)
      {
        v6 = v20;
      }

      else
      {
        v6 = v13;
      }

      goto LABEL_26;
    }

    goto LABEL_27;
  }

LABEL_31:
  __break(0x5507u);
  return result;
}

uint64_t sub_100083BA0(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_20;
  }

  if (!a2)
  {
    return 4;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_20;
  }

  v3 = *(a2 + 128);
  v4 = v3 - 2;
  if (v3 < 2)
  {
    return 4;
  }

  v5 = *(a2 + 24);
  if (!v5)
  {
LABEL_20:
    __break(0x5516u);
    goto LABEL_21;
  }

  if (v5 == -1)
  {
    goto LABEL_21;
  }

  v6 = *v5;
  v7 = v5[1];
  if (v7 != 1)
  {
    if (!v5[1])
    {
      if (v5 <= 0xFFFFFFFFFFFFFFFDLL)
      {

        return sub_10008CC60(result, v6, (v5 + 2), v4);
      }

LABEL_21:
      __break(0x5513u);
      return result;
    }

    sub_1000DDEEC(0, 4, "%s:%d Unknown VPortType(%d) Id=%d\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 18604, v7, v6);
    return 4;
  }

  if (v5 > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_21;
  }

  return sub_10008CD3C(result, v6, v5 + 2, v4);
}

uint64_t sub_100083C74(uint64_t result, uint64_t a2)
{
  if (!result || (result & 7) != 0)
  {
    goto LABEL_15;
  }

  if (!a2)
  {
    return 4;
  }

  if ((a2 & 7) != 0)
  {
    goto LABEL_15;
  }

  v2 = *(a2 + 128);
  v3 = 4;
  if (!*(a2 + 128))
  {
    return v3;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    return v3;
  }

  result = sub_10008D110(result, *v4);
  if (!result)
  {
    return 4;
  }

  if ((result & 7) != 0)
  {
LABEL_15:
    __break(0x5516u);
    goto LABEL_16;
  }

  result = *(result + 16);
  if (!result)
  {
    return 4;
  }

  if ((result & 7) != 0)
  {
    goto LABEL_15;
  }

  if (v4 != -1)
  {
    (*(*result + 360))(result, v4 + 1, (v2 - 1));
    return 0;
  }

LABEL_16:
  __break(0x5513u);
  return result;
}

uint64_t sub_100083D34(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    goto LABEL_47;
  }

  v2 = result;
  if ((result & 7) != 0 || !a2 || (a2 & 7) != 0)
  {
    goto LABEL_47;
  }

  v3 = *(a2 + 24);
  v4 = *(a2 + 128);
  v5 = *(a2 + 8);
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  if (v4 <= 1)
  {
    goto LABEL_36;
  }

  v24 = v5;
  if (!v3)
  {
    goto LABEL_47;
  }

  if (v3 == -1)
  {
    goto LABEL_46;
  }

  v6 = *(v3 + 1);
  if (v6 >= 4)
  {
    goto LABEL_49;
  }

  v7 = *v3;
  if ((v6 - 1) < 2)
  {
    if (v4 != 2)
    {
      v23 = *v3;
      if (v3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (v4 >= 4)
        {
          v8 = *(v3 + 2);
          if (*(v3 + 2))
          {
            v9 = 0;
            v10 = result + 2096;
            v11 = 3;
            while (1)
            {
              v12 = v11 + 1;
              if (((v11 + 1) & 0x100) != 0)
              {
                goto LABEL_48;
              }

              if (~v3 < v11)
              {
                goto LABEL_46;
              }

              v25 = *(v3 + v11);
              result = sub_10008E904(v2 + 2088, &v25);
              if (v10 != result)
              {
                v13 = *sub_1000894D0(v2 + 2088, &v25);
                result = sub_1000894D0(&v26, &v25);
                *result = v13;
                ++v9;
              }

              if (v4 > v12)
              {
                v11 = v12;
                if (v9 < v8)
                {
                  continue;
                }
              }

              if (v4 <= v12)
              {
                goto LABEL_36;
              }

              v14 = v12;
              goto LABEL_34;
            }
          }
        }

        if (v4 < 4)
        {
          goto LABEL_36;
        }

        v14 = 3;
LABEL_34:
        v18 = (v4 - 1);
        if (v18 <= ~v3)
        {
          if (*(v3 + v18))
          {
            goto LABEL_36;
          }

          if (v14 <= ~v3)
          {
            v15 = (v3 + v14);
            if (v6 == 2)
            {
              v19 = sub_1000E1434(v15);
              if (!v19)
              {
                v17 = 2;
                goto LABEL_37;
              }

              result = sub_1000154F0(v19, v20);
              if (result)
              {
                v21 = result;
                if ((result & 7) == 0)
                {
                  v22 = sub_1000CE018(*(v2 + 8));
                  v16 = sub_100017960(v21, v15, v22);
LABEL_29:
                  if (v16)
                  {
                    v17 = 0;
                  }

                  else
                  {
                    v17 = 2;
                  }

                  goto LABEL_37;
                }
              }

LABEL_47:
              __break(0x5516u);
LABEL_48:
              __break(0x5507u);
              goto LABEL_49;
            }

            v7 = v23;
            goto LABEL_25;
          }
        }
      }

LABEL_46:
      __break(0x5513u);
      goto LABEL_47;
    }

LABEL_36:
    v17 = 4;
LABEL_37:
    sub_1000089F8(&v26);
    return v17;
  }

  if (*(v3 + 1))
  {
    goto LABEL_36;
  }

  result = sub_10008A054(&v26, (result + 2088));
  v15 = *(v2 + 2112);
  if (!v15)
  {
    goto LABEL_36;
  }

LABEL_25:
  result = sub_10004B1AC(result, a2);
  if (!result || (result & 7) != 0)
  {
    goto LABEL_47;
  }

  if (v7 <= 1)
  {
    v16 = (*(*result + 320))(result, v6, v7, v24, &v26, v15);
    goto LABEL_29;
  }

LABEL_49:
  __break(0x550Au);
  return result;
}

uint64_t sub_100083FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (a1 & 7) != 0)
  {
    goto LABEL_298;
  }

  v134 = 0;
  v5 = *(a1 + 8);
  if (!v5 || (v5 & 7) != 0)
  {
    goto LABEL_298;
  }

  v9 = a2;
  result = sub_10005BC54(v5);
  v11 = result;
  if (v9 > 127)
  {
    if (v9 > 1023)
    {
      if (v9 == 1024)
      {
        if (a3)
        {
          return sub_100085C34(a1, a4, a3);
        }

        return v134;
      }

      if (v9 != 2048 && v9 != 0x4000)
      {
        return v134;
      }

      if (result && (result & 7) == 0)
      {
        sub_1000BB6E0(result, v9, a3);
        return v134;
      }

      goto LABEL_298;
    }

    if (v9 == 128)
    {
      sub_1000857D8(128, a3);
      if (a4)
      {
        if ((a4 & 7) != 0)
        {
          goto LABEL_298;
        }

        if ((*(*a4 + 272))(a4))
        {
          *(a1 + 1516) &= *(a4 + 204);
        }
      }

      pthread_mutex_lock((a1 + 1280));
      if (a3 != a3)
      {
        goto LABEL_299;
      }

      if (a3 > 15 || a3 == -1)
      {
        if (a3 == 100)
        {
          *(a1 + 1528) = 0;
          *(a1 + 1532) = 0;
          *(a1 + 1588) = 0;
        }

        else
        {
          sub_1000DDEEC(0, 4, "%s:%d CIapLingoGeneral::NotifyEvent invalid accessory resistor ID: %d !\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 8617, a3);
        }
      }

      else
      {
        LOWORD(v133) = 112;
        *&v135 = 0;
        if (a3 >= 0)
        {
          v56 = 1 << a3;
        }

        else
        {
          v56 = 0;
        }

        sub_10006733C(a1, 0xFFFFFFFFLL, &v133, &v135, 0xFFFFLL);
        if ((v56 & 0x18CB) != 0)
        {
          if ((v56 & 0xC1) == 0)
          {
            goto LABEL_131;
          }

          v58 = *(a1 + 2368);
          if (v58 > 1)
          {
            goto LABEL_299;
          }

          if (v58)
          {
            goto LABEL_169;
          }

          v59 = *(a1 + 8);
          if (!v59 || (v59 & 7) != 0)
          {
            goto LABEL_298;
          }

          if ((sub_10005BCA0(v59) & 1) == 0)
          {
LABEL_169:
            v60 = 1;
          }

          else
          {
LABEL_131:
            v60 = 0;
          }

          sub_100076E70(a1, v57, v60);
        }

        v79 = *(a1 + 1528);
        if (v79 > 7)
        {
          goto LABEL_299;
        }

        if (v79 <= 1)
        {
          *(a1 + 1528) = 1;
          v80 = *(a1 + 8);
          if (!v80 || (v80 & 7) != 0)
          {
            goto LABEL_298;
          }

          v81 = sub_10005BDFC(v80);
          if (v81 != v81)
          {
            goto LABEL_299;
          }

          v134 = sub_1000671A8(a1, -1, 112, v81, 3000);
        }

        v82 = *(a1 + 1533);
        if (v82 > 1)
        {
          goto LABEL_299;
        }

        if (v82)
        {
          LOWORD(v133) = 115;
          v134 = sub_10006733C(a1, 0xFFFFFFFFLL, &v133, 0, 0xFFFFLL);
          if (v134)
          {
            sub_1000DDEEC(0, 4, "%s:%d ClrCmdTimeout failed!\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/Source/IapLingoGeneral.cpp", 8631);
          }

          v83 = *(a1 + 1536);
          if (v83 > 0x1F)
          {
            goto LABEL_299;
          }

          if (v83 != 25)
          {
            *(a1 + 1540) = a3;
            sub_100077384(a1, 0, 0, (a1 + 1536), 48);
          }

          if ((a3 & 0x80000000) == 0 && ((1 << a3) & 0xE400) != 0)
          {
            v84 = *(a1 + 2212);
            if (v84 > 1)
            {
              goto LABEL_299;
            }

            if ((v84 & 1) == 0)
            {
              v85 = *(a1 + 1552);
              LODWORD(v135) = 0x7FFFFFFF;
              v86 = *(a1 + 1408);
              if (v86)
              {
                if ((v86 & 3) != 0)
                {
                  goto LABEL_298;
                }

                v86 = sub_10005A2E0(v86, &v135);
              }

              v87 = sub_100065198(v86);
              if (!v87 || (v87 & 7) != 0)
              {
                goto LABEL_298;
              }

              v88 = sub_100092B58(v87, a4);
              v90 = *(a1 + 1584);
              if (v90 > 3)
              {
                goto LABEL_299;
              }

              if (v90)
              {
                if (v90 == 2)
                {
                  goto LABEL_199;
                }

                if (sub_100078FD4(v85, v88))
                {
                  if ((v135 & 0x80000000) != 0)
                  {
                    goto LABEL_299;
                  }

                  if (v135)
                  {
LABEL_199:
                    sub_100076E70(a1, v89, v90 == 1);
                  }
                }
              }
            }
          }
        }

        *(a1 + 1533) = 0;
        *(a1 + 1536) = 0x6400000019;
        *(a1 + 1544) = a4;
        *(a1 + 1552) = 0;
        *(a1 + 1560) = *(a1 + 8);
        *(a1 + 1584) = 0;
      }

      pthread_mutex_unlock((a1 + 1280));
      return v134;
    }

    if (v9 != 256)
    {
      return v134;
    }

    v12 = sub_1000857D8(256, a3);
    v14 = *(a1 + 1524);
    if (v14 <= 3)
    {
      *(a1 + 1524) = a3;
      if (a3 <= 3)
      {
        if (a3 >= 2)
        {
          __break(0x5518u);
          goto LABEL_298;
        }

        v15 = sub_100048620(v12, v13);
        if (!v15 || (v15 & 7) != 0)
        {
          goto LABEL_298;
        }

        if (*(a1 + 1524) <= 3u)
        {
          (*(*v15 + 264))(v15, a4);
          v16 = *(a1 + 1524);
          if (v16 <= 3)
          {
            if (v16 == v14)
            {
              return v134;
            }

            v17 = *(a1 + 1528);
            if (v17 > 7)
            {
              goto LABEL_299;
            }

            if (v17 < 4)
            {
              return v134;
            }

            v18 = *(a1 + 8);
            if (v18 && (v18 & 7) == 0)
            {
              v20 = sub_10005BDFC(v18);
              v21 = *(a1 + 1524);
              if (v21 > 3)
              {
                goto LABEL_299;
              }

              if (v21 == 1)
              {
                if (!v11)
                {
                  goto LABEL_298;
                }

                if ((v11 & 7) != 0)
                {
                  goto LABEL_298;
                }

                v91 = *(v11 + 1256);
                if (!v91 || (v91 & 7) != 0)
                {
                  goto LABEL_298;
                }

                if (*(v91 + 16))
                {
                  v92 = sub_10004B1AC(v21, v19);
                  if (!v92 || (v92 & 7) != 0)
                  {
                    goto LABEL_298;
                  }

                  v21 = (*(*v92 + 456))(v92);
                }

                v93 = sub_1000D0360(v21, v19);
                if (v93 && (v93 & 7) == 0)
                {
                  v94 = (*(*v93 + 120))(v93);
                  if (v94)
                  {
                    v96 = sub_1000D0360(v94, v95);
                    if (!v96 || (v96 & 7) != 0)
                    {
                      goto LABEL_298;
                    }

                    v97 = (*(*v96 + 176))(v96);
                    if (v97)
                    {
                      *&v99 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v99 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      v139 = v99;
                      v140 = v99;
                      v137 = v99;
                      v138 = v99;
                      v135 = v99;
                      v136 = v99;
                      v100 = sub_1000D0360(v97, v98);
                      if (!v100 || (v100 & 7) != 0)
                      {
                        goto LABEL_298;
                      }

                      *&v135 = (*(*v100 + 104))(v100);
                      WORD5(v135) = 0;
                      *&v136 = 0x1200000000;
                      HIDWORD(v136) = 0;
                      LOBYTE(v137) = 1;
                      sub_1000858FC(&v135);
                    }
                  }

                  if (v20 != v20)
                  {
                    goto LABEL_299;
                  }

                  if (v20 == 14)
                  {
                    goto LABEL_224;
                  }

                  v101 = *(a1 + 2203);
                  if (v101 > 1)
                  {
                    goto LABEL_299;
                  }

                  if (v101)
                  {
LABEL_224:
                    sub_1000BD2E0(v11 + 112, 1);
                  }

                  return v134;
                }
              }

              else
              {
                if (v21)
                {
                  sub_1000E23F4(v21);
                }

                v22 = sub_10004B1AC(v21, v19);
                if (!v22)
                {
                  goto LABEL_298;
                }

                if ((v22 & 7) != 0)
                {
                  goto LABEL_298;
                }

                v23 = (*(*v22 + 464))(v22);
                v25 = sub_1000D0360(v23, v24);
                if (!v25 || (v25 & 7) != 0)
                {
                  goto LABEL_298;
                }

                v26 = (*(*v25 + 120))(v25);
                if (v26)
                {
                  v28 = sub_1000D0360(v26, v27);
                  if (!v28 || (v28 & 7) != 0)
                  {
                    goto LABEL_298;
                  }

                  v29 = (*(*v28 + 176))(v28);
                  if (v29)
                  {
                    *&v31 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v139 = v31;
                    v140 = v31;
                    v137 = v31;
                    v138 = v31;
                    v135 = v31;
                    v136 = v31;
                    v32 = sub_1000D0360(v29, v30);
                    if (!v32 || (v32 & 7) != 0)
                    {
                      goto LABEL_298;
                    }

                    *&v135 = (*(*v32 + 104))(v32);
                    WORD5(v135) = 0;
                    *&v136 = 0x1200000000;
                    HIDWORD(v136) = 0;
                    LOBYTE(v137) = 0;
                    sub_1000858FC(&v135);
                  }
                }

                if (v20 != v20)
                {
                  goto LABEL_299;
                }

                if (v20 != 14)
                {
                  v33 = *(a1 + 2203);
                  if (v33 > 1)
                  {
                    goto LABEL_299;
                  }

                  if ((v33 & 1) == 0)
                  {
                    return v134;
                  }
                }

                v34 = *(a1 + 8);
                if (v34)
                {
                  if ((v34 & 7) == 0)
                  {
                    v35 = sub_10005AC88(v34);
                    if (v11)
                    {
                      if ((v11 & 7) == 0)
                      {
                        if (a4)
                        {
                          v36 = a4;
                        }

                        else
                        {
                          v36 = v35;
                        }

                        sub_1000BD8A0(v11 + 112, v36, 0);
                        return v134;
                      }
                    }
                  }
                }
              }
            }

LABEL_298:
            __break(0x5516u);
          }
        }
      }
    }

LABEL_299:
    __break(0x550Au);
  }

  if (v9 <= 7)
  {
    if (v9 != 1)
    {
      if (v9 != 4)
      {
        return v134;
      }

      sub_1000857D8(4, a3);
      if (a4 && (a4 & 7) == 0)
      {
        if ((*(*a4 + 208))(a4) && (sub_1000D6BF8(a4) & 1) == 0)
        {
          LOWORD(v135) = 121;
          sub_10006733C(a1, 0xFFFFFFFFLL, &v135, 0, 0xFFFFLL);
          sub_1000671A8(a1, -1, v135, 0, 3000);
        }

        return v134;
      }

      goto LABEL_298;
    }

    LODWORD(v135) = -1;
    v133 = -1;
    v37 = sub_100065198(result);
    if (!v37 || (v37 & 7) != 0)
    {
      goto LABEL_298;
    }

    sub_1000C7FA0(v37, &v135, &v133);
    if ((v133 + 8) > 0xF || (v135 + 8) > 0xF)
    {
      goto LABEL_299;
    }

    if (v133 == v135)
    {
      return v134;
    }

    v38 = *(a1 + 8);
    if (!v38 || (v38 & 7) != 0)
    {
      goto LABEL_298;
    }

    v39 = sub_100018DC0(v38);
    v40 = v39;
    if (!v39)
    {
      v41 = sub_100065198(0);
      if (!v41 || (v41 & 7) != 0)
      {
        goto LABEL_298;
      }

      v39 = sub_100094CA0(v41, 0);
      v40 = v39;
    }

    v42 = sub_100065198(v39);
    if (!v42 || (v42 & 7) != 0)
    {
      goto LABEL_298;
    }

    v43 = sub_1000933B0(v42, v40);
    if (v43 != 56 && v43 != 19)
    {
      goto LABEL_277;
    }

    v45 = *(a1 + 8);
    if (!v45 || (v45 & 7) != 0)
    {
      goto LABEL_298;
    }

    v43 = sub_10005BF90(v45);
    if (v43)
    {
LABEL_277:
      if ((v133 + 8) > 0xF)
      {
        goto LABEL_299;
      }

      v122 = v135;
      if (v133 == 2)
      {
        if ((v135 + 8) > 0xF)
        {
          goto LABEL_299;
        }

        if (v135 == 4)
        {
          v123 = sub_1000C4254(v43, v44);
          if (!v123 || (v123 & 7) != 0)
          {
            goto LABEL_298;
          }

          v43 = sub_100094564(v123, a4, 0);
          v122 = v135;
        }
      }

      if ((v122 + 8) > 0xF)
      {
        goto LABEL_299;
      }

      if ((v122 - 1) > 1)
      {
        return v134;
      }

      v124 = sub_100065198(v43);
      if (v124)
      {
        if ((v124 & 7) == 0)
        {
          v125 = sub_100092B58(v124, a4);
          v126 = v125;
          v127 = sub_100065198(v125);
          if (v127)
          {
            if ((v127 & 7) == 0)
            {
              v128 = sub_1000592F0(v127, a4);
              *(a1 + 2200) = 0;
              *(a1 + 2202) = 0;
              sub_10008DD60(0, a4, 0);
              sub_100085118(a1, a4, 9u, v126);
              if (!v128)
              {
                return v134;
              }

              v130 = sub_100065198(v129);
              if (v130 && (v130 & 7) == 0)
              {
                v131 = sub_100092B58(v130, v128);
                sub_1000856D8(a1, *(a1 + 8), 9u, v131);
                return v134;
              }
            }
          }
        }
      }

      goto LABEL_298;
    }

    if ((v133 + 8) > 0xF)
    {
      goto LABEL_299;
    }

    if ((v133 - 1) < 2)
    {
      goto LABEL_260;
    }

    if (!v40 || (v40 & 7) != 0)
    {
      goto LABEL_298;
    }

    v43 = (*(*v40 + 272))(v40);
    if ((v43 & 1) == 0)
    {
      v46 = sub_100065198(v43);
      if (!v46 || (v46 & 7) != 0)
      {
        goto LABEL_298;
      }

      v43 = sub_1000932FC(v46, v40);
      v47 = v135;
      v48 = v135 + 8;
      if (v43 == 70)
      {
        if (v48 > 0xF)
        {
          goto LABEL_299;
        }

        if (v135 == 3)
        {
          goto LABEL_251;
        }
      }

      else if (v48 > 0xF)
      {
        goto LABEL_299;
      }

      if (v135 == 2)
      {
        sub_100074AEC(a1, 1, 1);
      }

      else
      {
        v102 = pthread_mutex_lock((a1 + 2256));
        for (i = *(a1 + 2240); i != a1 + 2232; i = *(i + 8))
        {
          if (!i)
          {
            goto LABEL_298;
          }

          if ((i & 7) != 0)
          {
            goto LABEL_298;
          }

          v104 = *(i + 16);
          v105 = sub_100065198(v102);
          if (!v105)
          {
            goto LABEL_298;
          }

          if ((v105 & 7) != 0)
          {
            goto LABEL_298;
          }

          if (!v104)
          {
            goto LABEL_298;
          }

          if ((v104 & 7) != 0)
          {
            goto LABEL_298;
          }

          v106 = *(v104 + 16);
          if ((v106 & 7) != 0)
          {
            goto LABEL_298;
          }

          v107 = sub_1000949E0(v105, v106, 0);
          v108 = sub_100065198(v107);
          if (!v108)
          {
            goto LABEL_298;
          }

          if ((v108 & 7) != 0)
          {
            goto LABEL_298;
          }

          v109 = *(v104 + 16);
          if ((v109 & 7) != 0)
          {
            goto LABEL_298;
          }

          v102 = sub_1000933B0(v108, v109);
          if (v107 && (v102 == 56 || v102 == 19))
          {
            if ((v107 & 7) != 0)
            {
              goto LABEL_298;
            }

            v102 = sub_10005BF90(v107);
            if ((v102 & 1) == 0)
            {
              v102 = sub_10008505C(v107, v47);
            }
          }
        }

        pthread_mutex_unlock((a1 + 2256));
      }

      v43 = sub_10008505C(*(a1 + 8), v47);
      v134 = v43;
    }

LABEL_251:
    if ((v133 + 8) > 0xF)
    {
      goto LABEL_299;
    }

    if (v133 == 3)
    {
      v110 = v135;
      if ((v135 + 8) > 0xF)
      {
        goto LABEL_299;
      }

      if (v135 != 4)
      {
        goto LABEL_261;
      }

      *(a1 + 2200) = 0;
      *(a1 + 2202) = 0;
      v111 = sub_10006825C(a4);
      if ((v111 & 1) == 0)
      {
        goto LABEL_259;
      }

      v112 = sub_100065198(v111);
      if (!v112 || (v112 & 7) != 0)
      {
        goto LABEL_298;
      }

      if (sub_100058F00(v112, a4) || (v43 = strcmp((a1 + 1592), "Apple Component AV Cable"), v43) && (v43 = strcmp((a1 + 1592), "Apple Composite AV Cable"), v43))
      {
LABEL_259:
        v43 = sub_100078C34(v40, 1);
      }
    }

LABEL_260:
    v110 = v135;
    if ((v135 + 8) > 0xF)
    {
      goto LABEL_299;
    }

LABEL_261:
    if (v110 == 4)
    {
      v132 = -21846;
      v113 = sub_100075B90(a1, a4, 0);
      *(a1 + 2200) = 0;
      *(a1 + 2202) = 0;
      *(a1 + 1528) = 0;
      *(a1 + 1532) = 0;
      *(a1 + 1588) = 0;
      v114 = sub_100065198(v113);
      if (!v114)
      {
        goto LABEL_298;
      }

      if ((v114 & 7) != 0)
      {
        goto LABEL_298;
      }

      v115 = sub_1000592F0(v114, a4);
      v116 = sub_100065198(v115);
      if (!v116 || (v116 & 7) != 0)
      {
        goto LABEL_298;
      }

      v117 = sub_100059100(v116, a4);
      if (v115)
      {
        v118 = sub_100065198(v117);
        if (!v118 || (v118 & 7) != 0)
        {
          goto LABEL_298;
        }

        sub_100059100(v118, v115);
      }

      v132 = 20;
      sub_10006733C(a1, 0xFFFFFFFFLL, &v132, 0, 0xFFFFLL);
      v132 = 23;
      v43 = sub_10006733C(a1, 0xFFFFFFFFLL, &v132, 0, 0xFFFFLL);
      v110 = v135;
      if ((v135 + 8) > 0xF)
      {
        goto LABEL_299;
      }
    }

    if (v110 == 3)
    {
      v119 = sub_100065198(v43);
      if (!v119)
      {
        goto LABEL_298;
      }

      if ((v119 & 7) != 0)
      {
        goto LABEL_298;
      }

      v120 = sub_100093438(v119, a4);
      v121 = sub_100065198(v120);
      if (!v121 || (v121 & 7) != 0)
      {
        goto LABEL_298;
      }

      sub_100092FE4(v121, a4, 0, 0);
    }

    goto LABEL_277;
  }

  if (v9 == 8)
  {
    sub_1000857D8(8, a3);
    v49 = *(a1 + 8);
    if (!v49 || (v49 & 7) != 0)
    {
      goto LABEL_298;
    }

    v50 = sub_10005BDFC(v49);
    if (v50 != v50)
    {
      goto LABEL_299;
    }

    if (v50 == 14)
    {
      goto LABEL_104;
    }

    v51 = *(a1 + 2203);
    if (v51 > 1)
    {
      goto LABEL_299;
    }

    if (v51)
    {
LABEL_104:
      if (!v11 || (v11 & 7) != 0)
      {
        goto LABEL_298;
      }

      sub_1000BD8A0(v11 + 112, a4, 0);
    }

    v52 = *(a1 + 8);
    if (v52 && (v52 & 7) == 0)
    {
      v53 = sub_10005ACF4(v52);
      if (v53)
      {
        v54 = *(a1 + 8);
        if (!v54 || (v54 & 7) != 0)
        {
          goto LABEL_298;
        }

        v55 = sub_10005BE5C(v54);
      }

      else
      {
        v63 = sub_100065198(v53);
        if (!v63 || (v63 & 7) != 0)
        {
          goto LABEL_298;
        }

        v55 = sub_100092B58(v63, a4);
      }

      v64 = v55;
      v65 = sub_100065198(v55);
      if (v65)
      {
        if ((v65 & 7) == 0)
        {
          v66 = sub_1000592F0(v65, a4);
          *(a1 + 2200) = 0;
          *(a1 + 2202) = 0;
          if (v11)
          {
            if ((v11 & 7) == 0)
            {
              v67 = *(v11 + 776);
              if (v67)
              {
                if ((v67 & 7) == 0)
                {
                  v68 = v66;
                  if (*(v67 + 16))
                  {
                    sub_1000C05AC(v11 + 720, 0, 0);
                  }

                  if (a4)
                  {
                    sub_10008DD60(0, a4, 0);
                  }

                  sub_1000C1FF4(v11 + 1104, 0);
                  sub_100085118(a1, a4, 9u, v64);
                  if (v68)
                  {
                    v70 = sub_100065198(v69);
                    if (!v70 || (v70 & 7) != 0)
                    {
                      goto LABEL_298;
                    }

                    v71 = sub_100092B58(v70, v68);
                    v72 = v71;
                    sub_10007702C(a1, v68, v71);
                    sub_1000856D8(a1, *(a1 + 8), 9u, v72);
                  }

                  v73 = *(a1 + 2368);
                  if (v73 > 1)
                  {
                    goto LABEL_299;
                  }

                  if (v73)
                  {
                    return v134;
                  }

                  v74 = *(a1 + 8);
                  if (v74 && (v74 & 7) == 0)
                  {
                    v75 = sub_10005BFD0(v74);
                    if (!a4 || !v75)
                    {
                      return v134;
                    }

                    if ((a4 & 7) == 0)
                    {
                      if (!(*(*a4 + 272))(a4))
                      {
                        return v134;
                      }

                      if (v76 && (v76 & 7) == 0)
                      {
                        v77 = *(a1 + 8);
                        v78 = (*(*v76 + 392))(v76);
                        sub_100076B84(0, v77, a4, v78, 0);
                        return v134;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_298;
  }

  if (v9 != 32)
  {
    return v134;
  }

  if (*(a1 + 1176) == a3)
  {
    sub_10006770C(a1, &v134);
    return 0;
  }

  if (*(a1 + 1980) != a3)
  {
    return v134;
  }

  if (*(a1 + 1976) > 1u)
  {
    goto LABEL_299;
  }

  if (*(a1 + 1976))
  {
    return v134;
  }

  v61 = *(a1 + 1978);
  if (v61 != 255)
  {
    v62 = v61 + 1;
    if ((v61 + 1) > 2u)
    {
      *(a1 + 1977) = 1;
    }

    else
    {
      sub_1000743E4(a1, 0);
      sub_100079318(a1);
    }

    *(a1 + 1978) = v62;
    return v134;
  }

  __break(0x5507u);
  return result;
}
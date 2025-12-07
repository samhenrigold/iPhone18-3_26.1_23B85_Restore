uint64_t sub_10022FD4C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100230424;
  }

  else
  {
    v2 = sub_10022FE60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022FE60()
{
  v1 = v0[30];
  v2 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  sub_1004BAC04();
  sub_10009F434(v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[26];
    v10 = v0[22];
    v11 = v0[6];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v8 + 8))(v7, v9);
    sub_100007214(v10, &qword_100601E88, &qword_1004CB610);
    v12 = sub_1004BB6C4();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v13 = v0[30];
    v15 = v0[27];
    v14 = v0[28];
    v17 = v0[25];
    v16 = v0[26];
    v18 = v0[23];
    v19 = v0[24];
    v20 = v0[22];
    sub_1004BACF4();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    (*(v6 + 8))(v20, v13);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1002300B8()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1002306D0;
  }

  else
  {
    v2 = sub_1002301CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002301CC()
{
  v1 = v0[33];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  sub_1004BAC04();
  sub_10009F464(v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[16];
    v10 = v0[12];
    v11 = v0[6];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v8 + 8))(v7, v9);
    sub_100007214(v10, &qword_100601E90, &qword_1004CB6E0);
    v12 = sub_1004BB6C4();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v13 = v0[33];
    v15 = v0[17];
    v14 = v0[18];
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[13];
    v19 = v0[14];
    v20 = v0[12];
    sub_1004BB364();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    (*(v6 + 8))(v20, v13);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100230424()
{
  v21 = v0;

  swift_errorRetain();
  v1 = sub_1004B8094();
  v2 = sub_1004BC984();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  if (v3)
  {
    v19 = v0[28];
    v18 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136446466;
    v10 = sub_1004BAD14();
    v12 = sub_100012018(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch music video from Media API with catalogID=%{public}s: %@", v7, 0x16u);
    sub_100007214(v8, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v9);

    (*(v5 + 8))(v19, v18);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[6];
  v15 = sub_1004BB6C4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002306D0()
{
  v21 = v0;

  swift_errorRetain();
  v1 = sub_1004B8094();
  v2 = sub_1004BC984();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  if (v3)
  {
    v19 = v0[18];
    v18 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136446466;
    v10 = sub_1004BAD14();
    v12 = sub_100012018(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch song from Media API with catalogID=%{public}s: %@", v7, 0x16u);
    sub_100007214(v8, &qword_100602710, &qword_1004CB540);

    sub_100004C6C(v9);

    (*(v5 + 8))(v19, v18);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[6];
  v15 = sub_1004BB6C4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10023097C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, static Logger.playlistCovers);
  sub_100007084(v2, static Logger.playlistCovers);
  return sub_1004B80A4();
}

uint64_t static Logger.playlistCovers.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_1006000B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v4 = sub_100007084(v3, static Logger.playlistCovers);
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, v4, v3);
}

void sub_100230AA8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10024DBBC(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_100230C70(v4);
  *a1 = v2;
}

void sub_100230B14(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10024DBBC(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = sub_1004BD8B4(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (*v12 >= v13)
          {
            break;
          }

          v14 = *(v12 + 5);
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v13;
          *(v12 + 1) = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_100003ABC(&qword_100607AB8, &qword_1004D5A10);
      v7 = sub_1004BC314();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = (v7 + 4);
    v18[1] = v6;
    sub_100230E0C(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_100230C70(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1004BD8B4(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100003ABC(&qword_100607AB8, &qword_1004D5A10);
        v5 = sub_1004BC314();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_10023139C(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100230D78(0, v2, 1, a1);
  }
}

uint64_t sub_100230D78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v4 + 32 * a3;
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = *(v11 - 24);
      v13 = *(v11 - 16) < v9;
      if (v8 != v12)
      {
        v13 = v8 < v12;
      }

      if (!v13)
      {
LABEL_4:
        ++a3;
        v5 += 32;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v14 = *v11;
      v15 = *(v11 + 24);
      v16 = *(v11 - 16);
      *v11 = *(v11 - 32);
      *(v11 + 16) = v16;
      *(v11 - 24) = v8;
      *(v11 - 16) = v9;
      *(v11 - 8) = v15;
      *(v11 - 32) = v14;
      v11 -= 32;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100230E0C(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_10024DB80(v8);
    }

    v84 = v8 + 16;
    v85 = *(v8 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v8[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_100231958((*a3 + 32 * *v86), (*a3 + 32 * *v88), (*a3 + 32 * v89), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 16);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 16);
      v14 = v9 + 2;
      v15 = (v12 + 80);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 32 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v11);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = v22[1];
            v26 = *(v23 - 16);
            *v22 = *(v23 - 32);
            v22[1] = v26;
            *(v23 - 32) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 32;
          v11 += 32;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100018024(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v38 = *(v8 + 3);
    v39 = v5 + 1;
    if (v5 >= v38 >> 1)
    {
      v8 = sub_100018024((v38 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v39;
    v40 = v8 + 32;
    v41 = &v8[16 * v5 + 32];
    *v41 = v9;
    *(v41 + 1) = v7;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v8[16 * v39];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v40[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v5 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v8[16 * v39];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v40[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v40[16 * v5 - 16];
        v80 = *v79;
        v81 = &v40[16 * v5];
        v82 = *(v81 + 1);
        sub_100231958((*a3 + 32 * *v79), (*a3 + 32 * *v81), (*a3 + 32 * v82), v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *(v8 + 2);
        if (v5 >= v83)
        {
          goto LABEL_101;
        }

        v39 = v83 - 1;
        memmove(&v40[16 * v5], v81 + 16, 16 * (v83 - 1 - v5));
        *(v8 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v40[16 * v39];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v8[16 * v39];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v40[16 * v5];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v5 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v91;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v7;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 32 * v7 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 16) >= v31)
    {
LABEL_29:
      ++v7;
      v29 += 32;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    v35 = *v33;
    v36 = *(v33 - 16);
    *v33 = *(v33 - 32);
    *(v33 + 16) = v36;
    *(v33 - 16) = v31;
    *(v33 - 8) = v34;
    *(v33 - 32) = v35;
    v33 -= 32;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

void sub_10023139C(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v10 = sub_10024DB80(v10);
    }

    v92 = *(v10 + 2);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = *&v10[16 * v92];
        v94 = *&v10[16 * v92 + 24];
        sub_100231B5C((*a3 + 32 * v93), (*a3 + 32 * *&v10[16 * v92 + 16]), (*a3 + 32 * v94), v5);
        if (v4)
        {
          goto LABEL_104;
        }

        if (v94 < v93)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10024DB80(v10);
        }

        if (v92 - 2 >= *(v10 + 2))
        {
          goto LABEL_120;
        }

        v95 = &v10[16 * v92];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_10024DAF4(v92 - 1);
        v92 = *(v10 + 2);
        if (v92 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = 32 * v11;
      v16 = *a3 + 32 * v11;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16) < v14;
      if (v13 != v17)
      {
        v18 = v13 < v17;
      }

      v19 = v11 + 2;
      v20 = (v16 + 80);
      while (v7 != v19)
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v23 = v14 >= *v20;
        if (v21 != v13)
        {
          v23 = v21 >= v13;
        }

        ++v19;
        v20 += 4;
        v14 = v22;
        v13 = v21;
        if (v18 == v23)
        {
          v9 = v19 - 1;
          if (!v18)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      v9 = v7;
      if (!v18)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v9 < v11)
      {
        goto LABEL_123;
      }

      if (v11 < v9)
      {
        v24 = 0;
        v25 = 32 * v9;
        v26 = v11;
        do
        {
          if (v26 != v9 + v24 - 1)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_129;
            }

            v27 = (v32 + v15);
            v28 = v32 + v25;
            v29 = *v27;
            v30 = v27[1];
            v31 = *(v28 - 16);
            *v27 = *(v28 - 32);
            v27[1] = v31;
            *(v28 - 32) = v29;
            *(v28 - 16) = v30;
          }

          ++v26;
          --v24;
          v25 -= 32;
          v15 += 32;
        }

        while (v26 < v9 + v24);
        v7 = a3[1];
      }
    }

LABEL_24:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_122;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_124;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v9 < v11)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_100018024(0, *(v10 + 2) + 1, 1, v10);
    }

    v5 = *(v10 + 2);
    v47 = *(v10 + 3);
    v48 = v5 + 1;
    if (v5 >= v47 >> 1)
    {
      v10 = sub_100018024((v47 > 1), v5 + 1, 1, v10);
    }

    *(v10 + 2) = v48;
    v49 = &v10[16 * v5];
    *(v49 + 4) = v11;
    *(v49 + 5) = v9;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v5)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v10 + 4);
          v53 = *(v10 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_63:
          if (v55)
          {
            goto LABEL_110;
          }

          v68 = &v10[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_113;
          }

          v74 = &v10[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_117;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v78 = &v10[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_77:
        if (v73)
        {
          goto LABEL_112;
        }

        v81 = &v10[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_115;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_84:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v90 = *&v10[16 * v89 + 32];
        v5 = *&v10[16 * v51 + 40];
        sub_100231B5C((*a3 + 32 * v90), (*a3 + 32 * *&v10[16 * v51 + 32]), (*a3 + 32 * v5), v50);
        if (v4)
        {
          goto LABEL_104;
        }

        if (v5 < v90)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10024DB80(v10);
        }

        if (v89 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v91 = &v10[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        sub_10024DAF4(v51);
        v48 = *(v10 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v10[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_108;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_109;
      }

      v63 = &v10[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_111;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_114;
      }

      if (v67 >= v59)
      {
        v85 = &v10[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_94;
    }
  }

  v33 = *a3;
  v34 = *a3 + 32 * v9;
  v35 = v11 - v9;
LABEL_34:
  v36 = v33 + 32 * v9;
  v37 = *(v36 + 8);
  v38 = *(v36 + 16);
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = *(v40 - 24);
    v42 = *(v40 - 16) < v38;
    if (v37 != v41)
    {
      v42 = v37 < v41;
    }

    if (!v42)
    {
LABEL_33:
      ++v9;
      v34 += 32;
      --v35;
      if (v9 != v7)
      {
        goto LABEL_34;
      }

      v9 = v7;
      goto LABEL_43;
    }

    if (!v33)
    {
      break;
    }

    v43 = *v40;
    v44 = *(v40 + 24);
    v45 = *(v40 - 16);
    *v40 = *(v40 - 32);
    *(v40 + 16) = v45;
    *(v40 - 24) = v37;
    *(v40 - 16) = v38;
    *(v40 - 8) = v44;
    *(v40 - 32) = v43;
    v40 -= 32;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_100231958(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v6 - 2) < *(v14 - 2))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_100231B5C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = v6[1];
      v19 = v4[1];
      v20 = v4[2] < v6[2];
      if (v18 != v19)
      {
        v20 = v18 < v19;
      }

      if (v20)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_26:
    v5 -= 4;
    do
    {
      v21 = v5 + 4;
      v22 = *(v14 - 3);
      v23 = *(v6 - 3);
      v24 = *(v6 - 2) < *(v14 - 2);
      if (v22 != v23)
      {
        v24 = v22 < v23;
      }

      if (v24)
      {
        v27 = v6 - 4;
        if (v21 != v6)
        {
          v28 = *(v6 - 1);
          *v5 = *v27;
          *(v5 + 1) = v28;
        }

        if (v14 <= v4 || (v6 -= 4, v27 <= v7))
        {
          v6 = v27;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v25 = v14 - 4;
      if (v21 != v14)
      {
        v26 = *(v14 - 1);
        *v5 = *v25;
        *(v5 + 1) = v26;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v25 > v4);
    v14 = v25;
  }

LABEL_39:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v29 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v29 >> 5));
  }

  return 1;
}

uint64_t _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0()
{
  v0 = UIColor.rgba.getter();
  v2 = v1;
  v4 = v3;
  sub_100003ABC(&qword_100602E90, &qword_1004CCAD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004C5070;
  v6 = lround(v0 * 255.0);
  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = v6;
  v7 = lround(v2 * 255.0);
  *(v5 + 96) = &type metadata for Int;
  *(v5 + 104) = &protocol witness table for Int;
  *(v5 + 72) = v7;
  v8 = lround(v4 * 255.0);
  *(v5 + 136) = &type metadata for Int;
  *(v5 + 144) = &protocol witness table for Int;
  *(v5 + 112) = v8;

  return String.init(format:_:)(0x323025586C323025, 0xEF586C323025586CLL, v5);
}

uint64_t _s9MusicCore14PlaylistCoversO6SourceO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100601E00, &qword_1004C9C90);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - v6;
  type metadata accessor for PlaylistCovers.Source(0);
  __chkstk_darwin();
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v11 = &v20 - v10;
  sub_100003ABC(&qword_100607AC0, &qword_1004D5A68);
  __chkstk_darwin();
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1002324C8(a1, &v20 - v12);
  sub_1002324C8(a2, &v13[v15]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002324C8(v13, v9);
    v16 = *v9;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = sub_1000E9888(v16, *&v13[v15]);

LABEL_9:
      sub_100233888(v13);
      return v17 & 1;
    }
  }

  else
  {
    sub_1002324C8(v13, v11);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1004BB4D4();
      sub_1002338E4(&qword_100607AC8, &type metadata accessor for Track, &protocol conformance descriptor for Track);
      v17 = sub_1004BAAD4();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v11, v4);
      goto LABEL_9;
    }

    (*(v5 + 8))(v11, v4);
  }

  sub_100007214(v13, &qword_100607AC0, &qword_1004D5A68);
  v17 = 0;
  return v17 & 1;
}

id _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004BD124();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSScanner);
  v9 = sub_1004BBE24();
  v10 = [v8 initWithString:v9];

  (*(v5 + 104))(v7, enum case for NSScanner.NumberRepresentation.hexadecimal(_:), v4);
  v11 = sub_1004BD104();
  v13 = v12;
  result = (*(v5 + 8))(v7, v4);
  if (v13)
  {
    if (qword_1006000B0 != -1)
    {
      swift_once();
    }

    v15 = sub_1004B80B4();
    sub_100007084(v15, static Logger.playlistCovers);

    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_100012018(a1, a2, &v22);
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to decode hexadecimal string representation=%{public}s as UInt64.", v18, 0xCu);
      sub_100004C6C(v19);
    }

    return 0;
  }

  else if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = [objc_allocWithZone(UIColor) initWithRed:BYTE2(v11) / 255.0 green:BYTE1(v11) / 255.0 blue:v11 / 255.0 alpha:1.0];

    return v20;
  }

  return result;
}

uint64_t type metadata accessor for PlaylistCovers.Source(uint64_t a1)
{
  result = qword_100607A70;
  if (!qword_100607A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002324C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCovers.Source(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10023252C()
{
  result = qword_100601E08;
  if (!qword_100601E08)
  {
    sub_100003B68(&qword_100601E00, &qword_1004C9C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601E08);
  }

  return result;
}

unint64_t sub_100232594()
{
  result = qword_1006079F8;
  if (!qword_1006079F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006079F8);
  }

  return result;
}

void sub_1002325E8(uint64_t a1)
{
  sub_10023265C(319);
  if (v1 <= 0x3F)
  {
    sub_1002326BC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10023265C(uint64_t a1)
{
  if (!qword_100607A80)
  {
    sub_1004BB4D4();
    v1 = sub_1004BAAE4();
    if (!v2)
    {
      atomic_store(v1, &qword_100607A80);
    }
  }
}

void sub_1002326BC(uint64_t a1)
{
  if (!qword_100607A88)
  {
    sub_1004BBA44();
    v1 = sub_1004BC3B4();
    if (!v2)
    {
      atomic_store(v1, &qword_100607A88);
    }
  }
}

uint64_t sub_100232724(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&unk_100603F30, &unk_1004CE6A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100232794(char *a1)
{
  v40 = a1;

  sub_100230AA8(&v40);
  v1 = v40;
  v2 = *(v40 + 16);
  if (v2)
  {
    v3 = (v40 + 48);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      if (*v3 < 0.5)
      {
        v38 = *v3;
        v36 = *(v3 - 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100015190(0, *(v4 + 2) + 1, 1);
          v4 = v40;
        }

        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        v7 = v38;
        if (v6 >= v5 >> 1)
        {
          sub_100015190((v5 > 1), v6 + 1, 1);
          v7 = v38;
          v4 = v40;
        }

        *(v4 + 2) = v6 + 1;
        v8 = &v4[32 * v6];
        *(v8 + 2) = v36;
        *(v8 + 3) = v7;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v40 = v4;

  sub_100230B14(&v40);

  v10 = v40;
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = *(v40 + 16);
    v14 = _swiftEmptyArrayStorage;
    while (v12 < *(v1 + 16))
    {
      v20 = (v1 + 32 + 32 * v12);
      v21 = *v20;
      v22 = v20[1];
      if (v13)
      {
        v23 = *(v10 + 2);
        v24 = (v10 + 32);
        v25 = v13;
        while (v23)
        {
          if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v21, *v24), vceqq_f64(v22, v24[1])))))
          {
            goto LABEL_16;
          }

          --v23;
          v24 += 2;
          if (!--v25)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

LABEL_23:
      v37 = v22;
      v39 = v21;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v14;
      if ((v26 & 1) == 0)
      {
        sub_100015190(0, *(v14 + 2) + 1, 1);
        v14 = v40;
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      v18 = v37;
      v17 = v39;
      if (v16 >= v15 >> 1)
      {
        sub_100015190((v15 > 1), v16 + 1, 1);
        v18 = v37;
        v17 = v39;
        v14 = v40;
      }

      *(v14 + 2) = v16 + 1;
      v19 = &v14[32 * v16];
      *(v19 + 2) = v17;
      *(v19 + 3) = v18;
LABEL_16:
      if (++v12 == v11)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_27:
  v40 = v14;
  sub_1000234B4(v10);
  v27 = v40;
  v28 = *(v40 + 16);
  if (!v28)
  {

    v30 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0)
    {
      goto LABEL_31;
    }

LABEL_38:
    sub_1004BD484();
    sub_1004BD484();
    sub_1004BD484();
    sub_1004BD484();
    goto LABEL_36;
  }

  v40 = _swiftEmptyArrayStorage;
  sub_1004BD524();
  v29 = (v27 + 56);
  do
  {
    [objc_allocWithZone(UIColor) initWithHue:*(v29 - 3) saturation:*(v29 - 2) brightness:*(v29 - 1) alpha:*v29];
    sub_1004BD4F4();
    sub_1004BD534();
    sub_1004BD544();
    sub_1004BD504();
    v29 += 4;
    --v28;
  }

  while (v28);

  v30 = v40;
  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v31 == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v31 < 3)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v31 != 3)
  {
    v32 = *(v30 + 40);
    v33 = *(v30 + 48);
    v34 = *(v30 + 56);
    *(v30 + 32);
    v32;
    v33;
    v35 = v34;
LABEL_36:

    return;
  }

LABEL_44:
  __break(1u);

  __break(1u);
}

uint64_t sub_100232BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100232BD0, 0, 0);
}

uint64_t sub_100232BD0()
{
  v125 = v0;
  v1 = v0;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = [objc_allocWithZone(UIColor) initWithCGColor:v0[2]];
  v118 = UIColor.hsba.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_allocWithZone(UIColor) initWithCGColor:v4];
  v120 = UIColor.hsba.getter();
  v14 = v13;
  v16 = v15;

  v17 = [objc_allocWithZone(UIColor) initWithCGColor:v3];
  v119 = UIColor.hsba.getter();
  v19 = v18;
  v21 = v20;

  v22 = [objc_allocWithZone(UIColor) initWithCGColor:v2];
  v115 = UIColor.hsba.getter();
  v116 = v23;
  v25 = v24;

  v121 = v7;
  if (v7 > 0.05 && v9 > 0.2)
  {
    if (v16 < 0.3)
    {
      if (v21 >= 0.3)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }

    if (v16 <= 0.3)
    {
LABEL_53:
      v59 = v14 + 0.2;
      v60 = v16 + 0.1;
      v61 = 1.0;
      if (v59 > 1.0)
      {
LABEL_54:
        if (v60 <= v61)
        {
          v62 = v19 + 0.1;
          v59 = 1.0;
          if (v62 <= 1.0)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

LABEL_59:
        v62 = v19 + 0.1;
        v60 = 1.0;
        v59 = v61;
        if (v62 <= 1.0)
        {
LABEL_64:
          v61 = v21 + 0.2;
          if (v21 + 0.2 > 1.0)
          {
            v61 = 1.0;
          }

          goto LABEL_66;
        }

LABEL_63:
        v62 = 1.0;
        goto LABEL_64;
      }

      if (v60 > 1.0)
      {
        v61 = v59;
        goto LABEL_59;
      }

      v62 = v19 + 0.1;
LABEL_62:
      if (v62 <= v61)
      {
        v67 = v21 + 0.2;
        if (v67 <= v61)
        {
          v66 = v25 + 0.2;
          v63 = 1.0;
          v64 = v9;
          if (v66 <= 1.0)
          {
            v65 = v116 + 0.6;
            if (v116 + 0.6 <= 1.0)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          v61 = v67;
LABEL_68:
          v65 = v116 + 0.6;
          v66 = v63;
          v67 = v61;
          if (v116 + 0.6 <= 1.0)
          {
LABEL_70:
            sub_100003ABC(&qword_1006011C8, &qword_1004C7D80);
            v68 = swift_allocObject();
            *(v68 + 16) = xmmword_1004C50B0;
            *(v68 + 32) = v118;
            *(v68 + 40) = v121;
            *(v68 + 48) = v64;
            *(v68 + 56) = v11;
            *(v68 + 64) = v120;
            *(v68 + 72) = v59;
            *(v68 + 80) = v60;
            *(v68 + 88) = 0x3FF0000000000000;
            *(v68 + 96) = v119;
            *(v68 + 104) = v62;
            *(v68 + 112) = v67;
            *(v68 + 120) = 0x3FF0000000000000;
            *(v68 + 128) = v115;
            *(v68 + 136) = v66;
            *(v68 + 144) = v65;
            *(v68 + 152) = 0x3FF0000000000000;
            sub_100232794(v68);
            v70 = v69;
            v72 = v71;
            v74 = v73;
            v76 = v75;

            if (qword_1006000B0 != -1)
            {
              swift_once();
            }

            v77 = sub_1004B80B4();
            sub_100007084(v77, static Logger.playlistCovers);
            v39 = v70;
            v40 = v72;
            v41 = v74;
            v42 = v76;
            v43 = sub_1004B8094();
            v78 = sub_1004BC9A4();

            if (!os_log_type_enabled(v43, v78))
            {
              goto LABEL_97;
            }

            v45 = swift_slowAlloc();
            v122 = v78;
            v46 = swift_slowAlloc();
            v124 = v46;
            *v45 = 136446210;
            v79 = PlaylistCovers.RecipeColors.description.getter(v39, v40, v41, v42);
            v81 = sub_100012018(v79, v80, &v124);

            *(v45 + 4) = v81;
            v50 = "Using recipe 3 colors=%{public}s";
            goto LABEL_74;
          }

LABEL_69:
          v65 = 1.0;
          goto LABEL_70;
        }

LABEL_66:
        v63 = v25 + 0.2;
        v64 = v9;
        if (v63 > 1.0)
        {
          v63 = 1.0;
        }

        goto LABEL_68;
      }

      goto LABEL_63;
    }

LABEL_21:
    if (v21 > 0.3)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

  if (v14 > 0.05 && v16 > 0.2)
  {
    if (v16 >= 0.3)
    {
LABEL_17:
      if (v16 <= 0.3 || v21 <= 0.3)
      {
        goto LABEL_53;
      }

LABEL_22:
      v26 = v19 + 0.4;
      if (v14 + 0.1 <= 1.0)
      {
        v27 = v14 + 0.1;
      }

      else
      {
        v27 = 1.0;
      }

      if (v26 > 1.0)
      {
        v26 = 1.0;
      }

      if (v25 + -0.2 < 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v25 + -0.2;
      }

      sub_100003ABC(&qword_1006011C8, &qword_1004C7D80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1004C50B0;
      *(v29 + 32) = v118;
      *(v29 + 40) = v7;
      *(v29 + 48) = v9;
      *(v29 + 56) = v11;
      *(v29 + 64) = v120;
      *(v29 + 72) = v27;
      *(v29 + 80) = v16;
      *(v29 + 88) = 0x3FF0000000000000;
      *(v29 + 96) = v119;
      *(v29 + 104) = v26;
      *(v29 + 112) = v21;
      *(v29 + 120) = 0x3FF0000000000000;
      *(v29 + 128) = v115;
      *(v29 + 136) = v28;
      *(v29 + 144) = v116;
      *(v29 + 152) = 0x3FF0000000000000;
      sub_100232794(v29);
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      if (qword_1006000B0 != -1)
      {
        swift_once();
      }

      v38 = sub_1004B80B4();
      sub_100007084(v38, static Logger.playlistCovers);
      v39 = v31;
      v40 = v33;
      v41 = v35;
      v42 = v37;
      v43 = sub_1004B8094();
      v44 = sub_1004BC9A4();

      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_97;
      }

      v45 = swift_slowAlloc();
      v122 = v44;
      v46 = swift_slowAlloc();
      v124 = v46;
      *v45 = 136446210;
      v47 = PlaylistCovers.RecipeColors.description.getter(v39, v40, v41, v42);
      v49 = sub_100012018(v47, v48, &v124);

      *(v45 + 4) = v49;
      v50 = "Using recipe 2 colors=%{public}s";
LABEL_74:
      _os_log_impl(&_mh_execute_header, v43, v122, v50, v45, 0xCu);
      sub_100004C6C(v46);
LABEL_96:

LABEL_97:

      goto LABEL_98;
    }

    if (v21 < 0.3)
    {
LABEL_38:
      v117 = v9;
      v51 = v14 + 0.3;
      v52 = v16 + 0.2;
      v53 = 1.0;
      if (v14 + 0.3 <= 1.0)
      {
        v54 = v119;
        if (v52 <= 1.0)
        {
          v55 = v121 + 0.5;
          v56 = v117 + 0.2;
          v57 = 1.0;
          v114 = v11;
          if (v121 + 0.5 <= 1.0)
          {
            if (v56 <= 1.0)
            {
              v58 = v118;
              v93 = -0.5;
              if (v119 >= 0.5)
              {
                goto LABEL_89;
              }

              goto LABEL_88;
            }

            v58 = v118;
            goto LABEL_87;
          }

          v58 = v118;
          v55 = 1.0;
          if (v56 > 1.0)
          {
            goto LABEL_87;
          }

LABEL_86:
          v57 = v56;
          goto LABEL_87;
        }
      }

      else
      {
        v51 = 1.0;
        v54 = v119;
        if (v52 <= 1.0)
        {
          v53 = v16 + 0.2;
        }
      }

      v55 = v121 + 0.5;
      v56 = v117 + 0.2;
      v57 = 1.0;
      v114 = v11;
      if (v121 + 0.5 <= 1.0)
      {
        if (v56 <= 1.0)
        {
          v58 = v118;
          v93 = -0.5;
          v52 = v53;
          if (v54 >= 0.5)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v58 = v118;
        v52 = v53;
        goto LABEL_87;
      }

      v58 = v118;
      v52 = v53;
      v55 = 1.0;
      if (v56 > 1.0)
      {
LABEL_87:
        v93 = -0.5;
        v56 = v57;
        if (v54 >= 0.5)
        {
LABEL_89:
          v94 = v54 + v93;
          if (v21 + 0.8 <= 1.0)
          {
            v95 = v21 + 0.8;
          }

          else
          {
            v95 = 1.0;
          }

          sub_100003ABC(&qword_1006011C8, &qword_1004C7D80);
          v96 = swift_allocObject();
          *(v96 + 16) = xmmword_1004C50B0;
          *(v96 + 32) = v58;
          *(v96 + 40) = v121;
          *(v96 + 48) = v117;
          *(v96 + 56) = v114;
          *(v96 + 64) = v120;
          *(v96 + 72) = v51;
          *(v96 + 80) = v52;
          *(v96 + 88) = 0x3FF0000000000000;
          *(v96 + 96) = v58;
          *(v96 + 104) = v55;
          *(v96 + 112) = v56;
          *(v96 + 120) = 0x3FF0000000000000;
          *(v96 + 128) = v94;
          *(v96 + 136) = v19;
          *(v96 + 144) = v95;
          *(v96 + 152) = 0x3FF0000000000000;
          sub_100232794(v96);
          v98 = v97;
          v100 = v99;
          v102 = v101;
          v104 = v103;

          if (qword_1006000B0 != -1)
          {
            swift_once();
          }

          v105 = sub_1004B80B4();
          sub_100007084(v105, static Logger.playlistCovers);
          v39 = v98;
          v40 = v100;
          v41 = v102;
          v42 = v104;
          v43 = sub_1004B8094();
          v106 = sub_1004BC9A4();

          if (!os_log_type_enabled(v43, v106))
          {
            goto LABEL_97;
          }

          v107 = swift_slowAlloc();
          v123 = v1;
          v124 = swift_slowAlloc();
          v108 = v124;
          *v107 = 136446210;
          v109 = PlaylistCovers.RecipeColors.description.getter(v39, v40, v41, v42);
          v111 = sub_100012018(v109, v110, &v124);

          *(v107 + 4) = v111;
          _os_log_impl(&_mh_execute_header, v43, v106, "Using recipe 1 colors=%{public}s", v107, 0xCu);
          sub_100004C6C(v108);
          v1 = v123;
          goto LABEL_96;
        }

LABEL_88:
        v93 = 0.5;
        goto LABEL_89;
      }

      goto LABEL_86;
    }

    if (v16 > 0.3)
    {
LABEL_48:
      if (v21 > 0.3)
      {
        goto LABEL_22;
      }
    }

LABEL_49:
    v59 = v14 + 0.2;
    v60 = v16 + 0.1;
    v61 = 1.0;
    if (v59 > 1.0)
    {
      goto LABEL_54;
    }

    v62 = v19 + 0.1;
    if (v60 > 1.0)
    {
      v60 = 1.0;
      if (v62 <= 1.0)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v19 > 0.05 && v21 > 0.2)
  {
    if (v16 >= 0.3)
    {
      if (v16 > 0.3)
      {
        goto LABEL_21;
      }

      goto LABEL_49;
    }

LABEL_37:
    if (v21 < 0.3)
    {
      goto LABEL_38;
    }

LABEL_47:
    if (v16 <= 0.3)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  if (v25 > 0.05 && v116 > 0.2)
  {
    if (v16 >= 0.3)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

  if (qword_1006000B0 != -1)
  {
    swift_once();
  }

  v82 = sub_1004B80B4();
  sub_100007084(v82, static Logger.playlistCovers);
  v83 = sub_1004B8094();
  v84 = sub_1004BC9A4();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v124 = v86;
    *v85 = 136446210;
    if (qword_1006000A0 != -1)
    {
      swift_once();
    }

    v87 = PlaylistCovers.RecipeColors.description.getter(qword_100617698, qword_1006176A0, qword_1006176A8, qword_1006176B0);
    v89 = sub_100012018(v87, v88, &v124);

    *(v85 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v83, v84, "Using black and white colors=%{public}s", v85, 0xCu);
    sub_100004C6C(v86);
  }

  if (qword_1006000A0 != -1)
  {
    swift_once();
  }

  v90 = qword_1006176A0;
  v92 = qword_1006176A8;
  v91 = qword_1006176B0;
  v39 = qword_100617698;
  v40 = v90;
  v41 = v92;
  v42 = v91;
LABEL_98:
  v112 = v1[1];

  return v112(v39, v40, v41, v42);
}

uint64_t sub_100233888(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCovers.Source(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002338E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall PresentationSource.present(_:)(MusicCore::Alert *a1)
{
  v2 = v1;
  v4 = sub_1000C88F4(&a1->title.value._countAndFlagsBits, 0, 1);
  style = a1->style;
  v6 = *(v2 + 80);
  v19 = v4;
  if (v6)
  {
    v7 = *(v2 + 88);
    v8 = qword_1006000B8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_1004B80B4();
    sub_100007084(v9, qword_100607AD0);
    v10 = sub_1004B8094();
    v11 = sub_1004BC9A4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Deferring presentation…", v12, 2u);
    }

    v13 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_10023620C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10023720C;
    aBlock[3] = &unk_1005BAE50;
    v14 = _Block_copy(aBlock);
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_100047AC4(v2, aBlock);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_100048998(aBlock, v16 + 24);
    *(v16 + 120) = v19;
    *(v16 + 128) = style;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v19;
    v6(v2, v18, sub_10005BB20, v16);
    sub_10003CC4C(v6, v7);
  }

  else
  {
    sub_1002346EC(v4, style, 1, 0, 0);
  }
}

void *PresentationSource.present(_:internalOnly:)(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_100238978(v8);

    v6 = v9;
    if (v9)
    {
      v7 = v10;
      sub_100009178(v8, v9);
      (*(v7 + 8))(a1, a2 & 1, v6, v7);
      return sub_100004C6C(v8);
    }

    else
    {
      return sub_100007214(v8, &qword_100601CE0, &qword_1004C99F0);
    }
  }

  return result;
}

void PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(void *a1, char a2, char a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v11 = *(v5 + 80);
  if (v11)
  {
    v12 = *(v5 + 88);
    v13 = qword_1006000B8;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_1004B80B4();
    sub_100007084(v14, qword_100607AD0);
    v15 = sub_1004B8094();
    v16 = sub_1004BC9A4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Deferring presentation…", v17, 2u);
    }

    v18 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_10023620C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10023720C;
    aBlock[3] = &unk_1005BAEA0;
    v19 = _Block_copy(aBlock);
    v20 = [v18 initWithTimeout:v19 interruptionHandler:10.0];
    _Block_release(v19);

    sub_100047AC4(v6, aBlock);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    sub_100048998(aBlock, v21 + 24);
    *(v21 + 120) = a1;
    *(v21 + 128) = a2 & 1;
    *(v21 + 129) = a3 & 1;
    *(v21 + 136) = a4;
    *(v21 + 144) = a5;
    v22 = v20;
    v23 = a1;
    sub_10002F518(a4, a5);
    v11(v6, v23, sub_10005BC70, v21);
    sub_10003CC4C(v11, v12);
  }

  else
  {
    v24 = (a2 & 1);
    v25 = (a3 & 1);

    sub_1002346EC(a1, v24, v25, a4, a5);
  }
}

__n128 PresentationSource.Position.init(source:permittedArrowDirections:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  result = *a1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  *(a3 + 48) = a2;
  return result;
}

Swift::Void __swiftcall PresentationSource.Position.configure(_:)(UIViewController a1)
{
  v2 = [(objc_class *)a1.super.super.isa popoverPresentationController];
  if (v2)
  {
    v3 = *v1;
    v8 = v2;
    if (*(v1 + 40))
    {
      if (*(v1 + 40) == 1)
      {
        [v2 setBarButtonItem:v3];
      }

      else
      {
        [v2 setSourceItem:v3];
      }
    }

    else
    {
      v5 = *(v1 + 24);
      v4 = *(v1 + 32);
      v7 = *(v1 + 8);
      v6 = *(v1 + 16);
      [v2 setSourceView:v3];
      [v8 setSourceRect:{v7, v6, v5, v4}];
      sub_10023727C(v1);
    }

    [v8 setPermittedArrowDirections:*(v1 + 48)];
  }
}

__n128 PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  v14 = *(a2 + 16);
  *(a7 + 8) = *a2;
  *(a7 + 24) = v14;
  result = *(a2 + 32);
  *(a7 + 40) = result;
  *(a7 + 56) = *(a2 + 48);
  *(a7 + 64) = a3;
  *(a7 + 72) = a4;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6;
  return result;
}

void PresentationSource.viewController.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*PresentationSource.viewController.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100234190;
}

void sub_100234190(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

void PresentationSource.windowScene.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      v3 = [v2 window];

      [v3 windowScene];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t PresentationSource.configurationHandler.getter()
{
  v1 = *(v0 + 64);
  sub_10002F518(v1, *(v0 + 72));
  return v1;
}

uint64_t PresentationSource.configurationHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10003CC4C(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PresentationSource.presentationDeferral.getter()
{
  v1 = *(v0 + 80);
  sub_10002F518(v1, *(v0 + 88));
  return v1;
}

uint64_t PresentationSource.presentationDeferral.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10003CC4C(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

double static PresentationSource.topmost(in:)@<D0>(uint64_t a1@<X8>)
{
  v2 = UIWindowScene.rootViewController.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v3 presentedViewController];
    v5 = v3;
    if (v4)
    {
      v6 = v3;
      while (1)
      {
        v5 = v4;
        if (([v4 canPresentViewControllers] & 1) == 0)
        {
          break;
        }

        v4 = [v5 presentedViewController];
        v6 = v5;
        if (!v4)
        {
          goto LABEL_9;
        }
      }

      v5 = v6;
    }

LABEL_9:

    swift_unknownObjectWeakInit();
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    *(a1 + 40) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *&result = 255;
    *(a1 + 48) = xmmword_1004C5090;
  }

  else
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  return result;
}

void *static PresentationSource.topmostPresentedViewController(in:options:)(uint64_t a1, char a2)
{
  v3 = UIWindowScene.rootViewController.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v4 presentedViewController];
  if (v5)
  {
    v6 = v4;
    do
    {
      v7 = v5;
      if ((a2 & 1) != 0 && ![v5 canPresentViewControllers])
      {

        v4 = v7;
        goto LABEL_11;
      }

      v5 = [v7 presentedViewController];
      v6 = v7;
    }

    while (v5);
    v6 = v7;
  }

  else
  {
    v6 = v4;
  }

LABEL_11:

  return v6;
}

__n128 PresentationSource.init(viewController:position:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  swift_unknownObjectWeakAssign();

  v6 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v6;
  result = *(a2 + 32);
  *(a3 + 40) = result;
  *(a3 + 56) = *(a2 + 48);
  return result;
}

id static PresentationSource.topmostPresentedViewController(from:options:)(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 presentedViewController];
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      if ((a2 & 1) != 0 && ([v4 canPresentViewControllers] & 1) == 0)
      {
        break;
      }

      v4 = [v5 presentedViewController];
      v3 = v5;
      if (!v4)
      {
        return v5;
      }
    }
  }

  return v3;
}

double PresentationSource.init(windowScene:position:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = UIWindowScene.rootViewController.getter();

  if (v6)
  {
    swift_unknownObjectWeakInit();
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    v7 = *(a2 + 16);
    *(a3 + 8) = *a2;
    *(a3 + 24) = v7;
    v8 = *(a2 + 32);
    *(a3 + 40) = v8;
    *(a3 + 56) = *(a2 + 48);
  }

  else
  {
    sub_100007214(a2, &qword_100607AF0, &qword_1004D5A80);
    *&v8 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 1;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
  }

  return *&v8;
}

void sub_1002346EC(void *a1, void *a2, id a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v12 = sub_1004BA994();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (&v216 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10009F080(0, v16, v17);
  *v15 = sub_1004BCB44();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = sub_1004BA9C4();
  (*(v13 + 8))(v15, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_103;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v233 = v6;
    LODWORD(v231) = a2;
    v232 = a3;
    a3 = Strong;
    v20 = [a3 presentedViewController];
    a2 = a3;
    if (v20)
    {
      v21 = a3;
      do
      {
        a2 = v20;

        v20 = [a2 presentedViewController];
        v21 = a2;
      }

      while (v20);
    }

    v22 = [a2 transitionCoordinator];
    if (v22)
    {
      v6 = v22;
      if (qword_1006000B8 == -1)
      {
LABEL_8:
        v23 = sub_1004B80B4();
        sub_100007084(v23, qword_100607AD0);
        v24 = a1;
        swift_unknownObjectRetain();
        v25 = sub_1004B8094();
        v26 = sub_1004BC9A4();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v228 = v25;
          v28 = v27;
          v229 = swift_slowAlloc();
          *&v241 = v229;
          *v28 = 136446466;
          v29 = v24;
          v230 = v24;
          v30 = v29;
          v31 = [v29 description];
          v32 = sub_1004BBE64();
          LODWORD(v227) = v26;
          v33 = a3;
          v34 = a5;
          v35 = v32;
          v36 = a4;
          v38 = v37;

          v39 = v35;
          a5 = v34;
          a3 = v33;
          v40 = sub_100012018(v39, v38, &v241);
          a4 = v36;

          *(v28 + 4) = v40;
          *(v28 + 12) = 2082;
          *&aBlock = v6;
          swift_unknownObjectRetain();
          sub_100003ABC(&qword_100607B88, &unk_1004D5EF0);
          v41 = sub_1004BBF04();
          v43 = sub_100012018(v41, v42, &v241);
          v24 = v230;

          *(v28 + 14) = v43;
          v44 = v228;
          _os_log_impl(&_mh_execute_header, v228, v227, "Attempted to present %{public}s, but needs to wait for the ongoing transition %{public}s to complete first", v28, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        sub_100047AC4(v233, &v241);
        v78 = swift_allocObject();
        *(v78 + 16) = v6;
        *(v78 + 24) = v24;
        sub_100048998(&v241, v78 + 32);
        *(v78 + 128) = v231 & 1;
        *(v78 + 129) = v232 & 1;
        *(v78 + 136) = a4;
        *(v78 + 144) = a5;
        *&v236 = sub_100237928;
        *(&v236 + 1) = v78;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v235 = sub_100236858;
        *(&v235 + 1) = &unk_1005BB170;
        v79 = _Block_copy(&aBlock);
        v80 = v24;
        swift_unknownObjectRetain();
        sub_10002F518(a4, a5);

        [v6 animateAlongsideTransition:0 completion:v79];
        _Block_release(v79);

        swift_unknownObjectRelease();
        return;
      }

LABEL_103:
      swift_once();
      goto LABEL_8;
    }

    if ([a2 canPresentViewControllers])
    {
      v58 = a2;
      [a1 setPlayActivityFeatureNameSourceViewController:v58];
      v60 = _s27WeakViewControllerReferenceCMa(0, v59);
      v61 = objc_allocWithZone(v60);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v240.receiver = v61;
      v240.super_class = v60;
      v62 = objc_msgSendSuper2(&v240, "init");
      if (qword_1005FFF60 != -1)
      {
        swift_once();
      }

      v230 = a4;
      objc_setAssociatedObject(a1, qword_100604400, v62, 1);
      v229 = v58;

      v63 = v233;
      v64 = v233[8];
      if (v64)
      {
        v64(a1);
      }

      v225 = a5;
      v220 = [a1 modalPresentationStyle];
      objc_opt_self();
      v224 = swift_dynamicCastObjCClass();
      v65 = a1;
      v67 = v63[1];
      v66 = v63[2];
      v69 = v63[3];
      v68 = v63[4];
      v71 = v63[5];
      v70 = v63[6];
      v72 = v63[7];
      objc_opt_self();
      v73 = v65;
      v74 = swift_dynamicCastObjCClass();
      v227 = v67;
      v226 = v69;
      v233 = v68;
      v75 = v68;
      v76 = v71;
      v228 = v72;
      sub_100237848(v67, v66, v69, v75, v71, v70);
      if (v74)
      {
        v77 = [v74 preferredStyle] == 0;
      }

      else
      {
        v77 = 0;
      }

      v107 = v70;
      v108 = v229;
      v223 = v73;
      v109 = v66;
      if (v70 == 0xFF && !v224)
      {
        v110 = v223;
        if ([v223 modalPresentationStyle] == 7)
        {
          v111 = [v110 popoverPresentationController];
          if (v111)
          {
            v112 = v111;
            v221 = a3;
            if (qword_1006000B8 != -1)
            {
              swift_once();
            }

            v113 = sub_1004B80B4();
            sub_100007084(v113, qword_100607AD0);
            v114 = sub_1004B8094();
            v115 = sub_1004BC9A4();
            if (os_log_type_enabled(v114, v115))
            {
              v116 = swift_slowAlloc();
              *v116 = 0;
            }

            v117 = [v112 sourceItem];
            if (v117)
            {
              v118 = v117;
              swift_unknownObjectRetain();
              v119 = sub_1004B8094();
              v120 = sub_1004BC9A4();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v119, v120))
              {
                v121 = swift_slowAlloc();
                v222 = swift_slowAlloc();
                *&v241 = v222;
                *v121 = 136446210;
                *&aBlock = v118;
                swift_unknownObjectRetain();
                sub_100003ABC(&qword_100607B80, &unk_1004D5EE0);
                v122 = sub_1004BBF04();
                v224 = v109;
                v124 = sub_100012018(v122, v123, &v241);
                v219 = v112;
                v125 = v120;
                v126 = v124;

                *(v121 + 4) = v126;
                _os_log_impl(&_mh_execute_header, v119, v125, "Using sourceItem=%{public}s as the position", v121, 0xCu);
                sub_100004C6C(v222);

                sub_100237880(v227, v224, v226, v233, v76, v107);
              }

              else
              {
                sub_100237880(v227, v109, v226, v233, v76, v107);
              }

              v109 = 0;
              v226 = 0;
              v233 = 0;
              v76 = 0;
              v228 = 15;
              v107 = 2;
              v227 = v118;
              a3 = v221;
            }

            else
            {
              v127 = [v112 sourceView];
              a3 = v221;
              if (v127)
              {
                v128 = v127;
                v224 = v109;
                v129 = v127;
                v130 = sub_1004B8094();
                v131 = sub_1004BC9A4();

                if (os_log_type_enabled(v130, v131))
                {
                  v132 = swift_slowAlloc();
                  v219 = v132;
                  v222 = swift_slowAlloc();
                  *&v241 = v222;
                  *v132 = 136446210;
                  v133 = v129;
                  v134 = [v133 description];
                  v135 = sub_1004BBE64();
                  v218 = v130;
                  v136 = v135;
                  v217 = v131;
                  v138 = v137;

                  a3 = v221;
                  v139 = sub_100012018(v136, v138, &v241);

                  v140 = v219;
                  *(v219 + 4) = v139;
                  v141 = v218;
                  _os_log_impl(&_mh_execute_header, v218, v217, "Using sourceView=%{public}s as the position", v140, 0xCu);
                  sub_100004C6C(v222);
                }

                else
                {
                }

                [v112 sourceRect];
                v146 = v145;
                v148 = v147;
                v150 = v149;
                v152 = v151;
                sub_100237880(v227, v224, v226, v233, v76, v107);

                v107 = 0;
                v109 = v146;
                v226 = v148;
                v233 = v150;
                v76 = v152;
                v228 = 15;
                v227 = v128;
              }

              else
              {
                v142 = sub_1004B8094();
                v143 = sub_1004BC994();
                if (os_log_type_enabled(v142, v143))
                {
                  v144 = swift_slowAlloc();
                  v224 = v109;
                  *v144 = 0;
                  v109 = v224;
                }
              }
            }
          }
        }
      }

      v153 = [v108 view];
      if (!v153)
      {
        __break(1u);
        return;
      }

      v154 = v153;
      v155 = [v153 window];

      v224 = v109;
      v222 = v76;
      v156 = v223;
      if (v155 && (v157 = [v155 traitCollection], v155, v158 = objc_msgSend(v157, "horizontalSizeClass"), v157, v158 == 2) && (v231 & 1) != 0)
      {
        if (v107 == 0xFF)
        {
          LOBYTE(v159) = [v156 modalPresentationStyle] == 7;
          goto LABEL_71;
        }

        v159 = 1;
      }

      else
      {
        v159 = 0;
        if (v107 == 0xFF)
        {
          goto LABEL_71;
        }
      }

      *&v241 = v227;
      *(&v241 + 1) = v109;
      *&v242 = v226;
      *(&v242 + 1) = v233;
      *&v243 = v76;
      BYTE8(v243) = v107;
      v244 = v228;
      if (PresentationSource.Position.canPresent(from:)(v108))
      {
        if ((v159 | v77))
        {
          v221 = a3;
          if (qword_1006000B8 != -1)
          {
            swift_once();
          }

          v160 = sub_1004B80B4();
          v161 = sub_100007084(v160, qword_100607AD0);
          v162 = v156;
          v231 = v161;
          v163 = sub_1004B8094();
          v164 = sub_1004BC9A4();

          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            v220 = swift_slowAlloc();
            *&aBlock = v220;
            *v165 = 136446210;
            v166 = v162;
            v167 = [v166 description];
            v168 = sub_1004BBE64();
            v170 = v169;

            v171 = sub_100012018(v168, v170, &aBlock);

            *(v165 + 4) = v171;
            v109 = v224;
            sub_100004C6C(v220);
          }

          v172 = v230;
          v173 = v221;
          v174 = v226;
          v175 = v227;
          [v162 setModalPresentationStyle:7];
          v176 = [v162 popoverPresentationController];
          if (v176)
          {
            v220 = v162;

            v177 = v175;
            v178 = v175;
            v179 = v233;
            v180 = v222;
            sub_100237848(v177, v109, v174, v233, v222, v107);
            sub_10023785C(v178, v109, v174, v179, v180, v107);
            v181 = sub_1004B8094();
            v182 = sub_1004BC9A4();
            v231 = v107;
            v183 = v181;
            v184 = v182;
            sub_100237880(v178, v109, v174, v179, v180, v107);
            if (os_log_type_enabled(v183, v184))
            {
              v185 = swift_slowAlloc();
              v186 = swift_slowAlloc();
              v239 = v186;
              *v185 = 136446210;
              aBlock = v241;
              v235 = v242;
              v236 = v243;
              v237 = v244;
              LOBYTE(v107) = v231;
              sub_10023785C(v178, v109, v226, v179, v180, v231);
              v187 = sub_1004BBF04();
              v189 = sub_100012018(v187, v188, &v239);
              v109 = v224;

              *(v185 + 4) = v189;
              _os_log_impl(&_mh_execute_header, v183, v184, "Configuring viewController with popover position=%{public}s", v185, 0xCu);
              sub_100004C6C(v186);
              v174 = v226;
              v172 = v230;

              v173 = v221;
            }

            else
            {

              LOBYTE(v107) = v231;
            }

            v204 = v220;
            v238 = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate;
            v205 = swift_dynamicCastObjCProtocolConditional();
            v175 = v227;
            v156 = v223;
            if (v205)
            {
              v206 = v205;
              v207 = v204;
              v208 = [v207 presentationController];
              if (v208)
              {
                v209 = v208;
                [v208 setDelegate:v206];

                v109 = v224;
              }
            }

            v210 = [v204 popoverPresentationController];
            if (v210)
            {
              v211 = v210;
              v212 = v233;
              if (v107)
              {
                if (v107 == 1)
                {
                  [v210 setBarButtonItem:v175];
                }

                else
                {
                  [v210 setSourceItem:v175];
                }
              }

              else
              {
                v213 = v222;
                v214 = v222;
                [v210 setSourceView:v227];
                [v211 setSourceRect:{*&v109, *&v174, *&v212, *&v214}];
                v215 = v213;
                v175 = v227;
                sub_100237880(v227, v109, v174, v212, v215, v107);
              }

              [v211 setPermittedArrowDirections:v228];

              sub_100237880(v175, v109, v174, v233, v222, v107);
            }

            else
            {
              sub_100237880(v175, v109, v174, v233, v222, v107);
            }
          }

          goto LABEL_84;
        }

        LOBYTE(v159) = 0;
      }

LABEL_71:
      objc_opt_self();
      v190 = swift_dynamicCastObjCClass();
      if (v190)
      {
        [v190 setAllowsCustomPresentationStyle:1];
        v191 = 2;
      }

      else
      {
        v191 = v220;
        if (v220 == -2)
        {
          v192 = [v108 traitCollection];
          [v192 horizontalSizeClass];
        }

        else if (((v220 == 7) & v159) == 1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v191 = 3;
          }

          else
          {
            v191 = 7;
          }
        }
      }

      v193 = a3;
      if (qword_1006000B8 != -1)
      {
        swift_once();
      }

      v194 = sub_1004B80B4();
      sub_100007084(v194, qword_100607AD0);
      v195 = sub_1004B8094();
      v196 = sub_1004BC9A4();
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        *&aBlock = v198;
        *v197 = 136446210;
        v239 = v191;
        type metadata accessor for UIModalPresentationStyle(0);
        v199 = sub_1004BBF04();
        v201 = sub_100012018(v199, v200, &aBlock);

        *(v197 + 4) = v201;
        _os_log_impl(&_mh_execute_header, v195, v196, "Presenting viewController with style=%{public}s", v197, 0xCu);
        sub_100004C6C(v198);
        v109 = v224;
      }

      v172 = v230;
      v173 = v193;
      v174 = v226;
      [v156 setModalPresentationStyle:v191];
      v175 = v227;
LABEL_84:
      if (v172)
      {
        *&v236 = v172;
        *(&v236 + 1) = v225;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v235 = sub_1000D6C80;
        *(&v235 + 1) = &unk_1005BB120;
        v202 = _Block_copy(&aBlock);
        v109 = v224;
      }

      else
      {
        v202 = 0;
      }

      v203 = v229;
      [v229 presentViewController:v156 animated:v232 & 1 completion:v202];

      _Block_release(v202);
      sub_100237880(v175, v109, v174, v233, v222, v107);
      return;
    }

    if (qword_1006000B8 != -1)
    {
      swift_once();
    }

    v81 = sub_1004B80B4();
    sub_100007084(v81, qword_100607AD0);
    v82 = a1;
    v83 = a2;
    v84 = sub_1004B8094();
    v85 = sub_1004BC9A4();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v221 = a3;
      v87 = v86;
      *&v241 = swift_slowAlloc();
      *v87 = 136446466;
      v88 = v82;
      v89 = [v88 description];
      v90 = sub_1004BBE64();
      v230 = a4;
      v91 = v90;
      v225 = a5;
      v93 = v92;

      v94 = sub_100012018(v91, v93, &v241);

      *(v87 + 4) = v94;
      *(v87 + 12) = 2082;
      v95 = v83;
      v96 = [v95 description];
      v97 = sub_1004BBE64();
      v99 = v98;

      v100 = v97;
      a4 = v230;
      v101 = sub_100012018(v100, v99, &v241);
      a5 = v225;

      *(v87 + 14) = v101;
      _os_log_impl(&_mh_execute_header, v84, v85, "Attempted to present %{public}s, but need to dismiss %{public}s first", v87, 0x16u);
      swift_arrayDestroy();

      a3 = v221;
    }

    sub_100047AC4(v233, &v241);
    v102 = swift_allocObject();
    *(v102 + 16) = v83;
    *(v102 + 24) = v82;
    sub_100048998(&v241, v102 + 32);
    *(v102 + 128) = v231 & 1;
    v103 = v232 & 1;
    *(v102 + 129) = v103;
    *(v102 + 136) = a4;
    *(v102 + 144) = a5;
    *&v236 = sub_100237830;
    *(&v236 + 1) = v102;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v235 = sub_1000D6C80;
    *(&v235 + 1) = &unk_1005BB0F8;
    v104 = _Block_copy(&aBlock);
    v105 = v82;
    sub_10002F518(a4, a5);
    v106 = v83;

    [v106 dismissViewControllerAnimated:v103 completion:v104];
    _Block_release(v104);
  }

  else
  {
    if (qword_1006000B8 != -1)
    {
      swift_once();
    }

    v45 = sub_1004B80B4();
    sub_100007084(v45, qword_100607AD0);
    v46 = a1;
    v47 = sub_1004B8094();
    v48 = sub_1004BC9A4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v241 = v50;
      *v49 = 136446210;
      v51 = v46;
      v52 = [v51 description];
      v53 = sub_1004BBE64();
      v54 = a4;
      v56 = v55;

      v57 = sub_100012018(v53, v56, &v241);
      a4 = v54;

      *(v49 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v47, v48, "Attempted to present viewController=%{public}s but there is no viewController to present onto.", v49, 0xCu);
      sub_100004C6C(v50);
    }

    if (a4)
    {
      a4();
    }
  }
}

void sub_10023620C(uint64_t a1, uint64_t a2)
{
  if (qword_1006000B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();
  sub_100007084(v2, qword_100607AD0);
  oslog = sub_1004B8094();
  v3 = sub_1004BC994();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
  }
}

void sub_1002362F4(void *a1, uint64_t a2, void *a3, char a4, char a5, void (*a6)(void), uint64_t a7)
{
  if (qword_1006000B8 != -1)
  {
    swift_once();
  }

  v13 = sub_1004B80B4();
  sub_100007084(v13, qword_100607AD0);
  v14 = sub_1004B8094();
  v15 = sub_1004BC9A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Presenting after deferral…", v16, 2u);
  }

  [a1 disarm];
  sub_1002346EC(a3, (a4 & 1), (a5 & 1), a6, a7);
}

void sub_10023642C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, char a6, void (*a7)(void), uint64_t a8)
{
  if (qword_1006000B8 != -1)
  {
    swift_once();
  }

  v12 = sub_1004B80B4();
  sub_100007084(v12, qword_100607AD0);
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = sub_1004B8094();
  v15 = sub_1004BC9A4();

  swift_unknownObjectRelease();
  v41 = v13;
  if (os_log_type_enabled(v14, v15))
  {
    v40 = a7;
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    swift_unknownObjectRetain();
    sub_100003ABC(&qword_100607B88, &unk_1004D5EF0);
    v17 = sub_1004BBF04();
    v19 = sub_100012018(v17, v18, aBlock);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    v20 = v13;
    v21 = [v20 description];
    v22 = a8;
    v23 = a4;
    v24 = sub_1004BBE64();
    v26 = v25;

    v27 = v24;
    a4 = v23;
    a8 = v22;
    v28 = sub_100012018(v27, v26, aBlock);

    *(v16 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "TransitionCoordinator %{public}s completed ongoing animations. Now attemptying to re-present %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a7 = v40;
  }

  v29 = *(a4 + 80);
  if (v29)
  {
    v30 = *(a4 + 88);

    v31 = sub_1004B8094();
    v32 = sub_1004BC9A4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Deferring presentation…", v33, 2u);
    }

    v34 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_10023620C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10023720C;
    aBlock[3] = &unk_1005BB198;
    v35 = _Block_copy(aBlock);
    v36 = [v34 initWithTimeout:v35 interruptionHandler:10.0];
    _Block_release(v35);

    sub_100047AC4(a4, aBlock);
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    sub_100048998(aBlock, v37 + 24);
    *(v37 + 120) = v41;
    *(v37 + 128) = a5 & 1;
    *(v37 + 129) = a6 & 1;
    *(v37 + 136) = a7;
    *(v37 + 144) = a8;
    v38 = v41;
    v39 = v36;
    sub_10002F518(a7, a8);
    v29(a4, v38, sub_10005BC70, v37);
    sub_10003CC4C(v29, v30);
  }

  else
  {
    sub_1002346EC(v41, (a5 & 1), (a6 & 1), a7, a8);
  }
}

uint64_t sub_100236858(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1002368B8(void *a1, void *a2, uint64_t a3, char a4, char a5, void (*a6)(void), uint64_t a7)
{
  if (qword_1006000B8 != -1)
  {
    swift_once();
  }

  v11 = sub_1004B80B4();
  sub_100007084(v11, qword_100607AD0);
  v12 = a1;
  v13 = a2;
  v14 = sub_1004B8094();
  v15 = sub_1004BC9A4();

  if (os_log_type_enabled(v14, v15))
  {
    v42 = a6;
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    v17 = v12;
    v18 = [v17 description];
    v41 = a3;
    v19 = sub_1004BBE64();
    v21 = v20;

    v22 = sub_100012018(v19, v21, aBlock);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = v13;
    v24 = [v23 description];
    v25 = sub_1004BBE64();
    v27 = v26;

    v28 = v25;
    a3 = v41;
    v29 = sub_100012018(v28, v27, aBlock);

    *(v16 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v14, v15, "Dismissed %{public}s, now attempting to re-present %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a6 = v42;
  }

  v30 = *(a3 + 80);
  if (v30)
  {
    v31 = *(a3 + 88);

    v32 = sub_1004B8094();
    v33 = sub_1004BC9A4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Deferring presentation…", v34, 2u);
    }

    v35 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_10023620C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10023720C;
    aBlock[3] = &unk_1005BB1E8;
    v36 = _Block_copy(aBlock);
    v37 = [v35 initWithTimeout:v36 interruptionHandler:10.0];
    _Block_release(v36);

    sub_100047AC4(a3, aBlock);
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    sub_100048998(aBlock, v38 + 24);
    *(v38 + 120) = v13;
    *(v38 + 128) = a4 & 1;
    *(v38 + 129) = a5 & 1;
    *(v38 + 136) = a6;
    *(v38 + 144) = a7;
    v39 = v13;
    v40 = v37;
    sub_10002F518(a6, a7);
    v30(a3, v39, sub_10005BC70, v38);
    sub_10003CC4C(v30, v31);
  }

  else
  {
    sub_1002346EC(v13, (a4 & 1), (a5 & 1), a6, a7);
  }
}

Swift::Bool __swiftcall PresentationSource.Position.canPresent(from:)(UIViewController from)
{
  if (!*(v1 + 40))
  {
    v6 = [*v1 window];
    if (!v6)
    {
      return v6;
    }

    goto LABEL_15;
  }

  if (*(v1 + 40) != 1)
  {
    swift_unknownObjectRetain();
    v6 = [(objc_class *)from.super.super.isa view];
    if (v6)
    {
      v8 = v6;
      swift_getObjectType();
      sub_1004BCD74();

      if ((v21 & 1) != 0 || (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = 0.0, v23.size.height = 0.0, CGRectEqualToRect(v20, v23)))
      {
        sub_10023727C(v1);
LABEL_14:
        LOBYTE(v6) = 0;
        return v6;
      }

      v6 = [(objc_class *)from.super.super.isa view];
      if (v6)
      {
        v10 = v6;
        [v6 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v22.origin.x = v12;
        v22.origin.y = v14;
        v22.size.width = v16;
        v22.size.height = v18;
        LOBYTE(v10) = CGRectIntersectsRect(v22, v20);
        sub_10023727C(v1);
        LOBYTE(v6) = v10;
        return v6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return v6;
  }

  v2 = *v1;
  v3 = [v2 customView];
  if (!v3 || (v4 = v3, v5 = [v3 window], v4, !v5))
  {
    v9 = [v2 customView];
    sub_10023727C(v1);
    if (v9)
    {

      goto LABEL_14;
    }

LABEL_15:
    LOBYTE(v6) = 1;
    return v6;
  }

  sub_10023727C(v1);
  LOBYTE(v6) = 1;
  return v6;
}

void *PresentationSource.Position.init(view:rect:permittedArrowDirections:)@<X0>(void *result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 0uLL;
  if (result)
  {
    if (a2[2])
    {
      v5 = a4;

      v4 = 0uLL;
      a4 = v5;
      result = 0;
      a3 = 0;
      v6 = 255;
      v7 = 0uLL;
    }

    else
    {
      v6 = 0;
      v4 = *a2;
      v7 = a2[1];
    }
  }

  else
  {
    a3 = 0;
    v6 = 255;
    v7 = 0uLL;
  }

  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 24) = v7;
  *(a4 + 40) = v6;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PresentationSource.Position.init(sourceItem:permittedArrowDirections:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 2;
  if (!result)
  {
    v3 = 255;
  }

  *a3 = result;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  if (result)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  *(a3 + 40) = v3;
  *(a3 + 48) = v4;
  return result;
}

uint64_t sub_100236FD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_100607AD0);
  sub_100007084(v2, qword_100607AD0);
  return sub_1004B80A4();
}

void UIWindowScene.presentationSource.getter(uint64_t a1@<X8>)
{
  v2 = UIWindowScene.rootViewController.getter();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectWeakInit();
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 48) = 255;
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 56) = 0;
}

uint64_t sub_1002370DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1004BC474();
  v2[4] = sub_1004BC464();
  v4 = sub_1004BC3E4();

  return _swift_task_switch(sub_100237174, v4, v3);
}

uint64_t sub_100237174()
{
  v1 = *(v0 + 16);

  v2 = sub_1000C88F4(v1, 0, 1);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v1 + 32), 1, 0, 0);

  v3 = *(v0 + 8);

  return v3();
}

double sub_10023720C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_100237260(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002372AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100607AF0, &qword_1004D5A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023731C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100607AF0, &qword_1004D5A80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100237400()
{
  result = qword_100607AF8;
  if (!qword_100607AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607AF8);
  }

  return result;
}

unint64_t sub_100237458()
{
  result = qword_100607B00;
  if (!qword_100607B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607B00);
  }

  return result;
}

unint64_t sub_1002374B0()
{
  result = qword_100607B08;
  if (!qword_100607B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607B08);
  }

  return result;
}

unint64_t sub_100237508()
{
  result = qword_100607B10;
  if (!qword_100607B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607B10);
  }

  return result;
}

uint64_t sub_10023755C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1002375B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_100237634(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10023767C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002376DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100237724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10023779C()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_100048974(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

id sub_100237848(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_10023785C(result, a2, a3, a4, a5, a6);
  }

  return result;
}

id sub_10023785C(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    return swift_unknownObjectRetain();
  }

  if (a6 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_100237880(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    sub_100048974(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_100237894()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_100048974(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t View.viewPresenting<A, B>(_:modifier:)@<X0>(uint64_t *a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v16[0] = a6;
  v16[1] = a7;
  v8 = *a1;
  v9 = sub_1004B8D64();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v16 - v11;
  sub_1004BA124();
  type metadata accessor for PresentedViewState(0, *(v8 + 80), v13, v14);
  v16[2] = a5;
  v16[3] = v16[0];
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004B9F84();
  return (*(v10 + 8))(v12, v9);
}

uint64_t PresentedViewState.isPresented.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

uint64_t PresentedViewState.isPresented.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

uint64_t sub_100237C3C@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

void (*PresentedViewState.isPresented.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin();
  v3[4] = swift_getKeyPath();
  __chkstk_darwin();
  v3[5] = swift_getKeyPath();
  v3[6] = sub_1004B8594();
  return sub_1001BF1BC;
}

uint64_t PresentedViewState.$isPresented.getter()
{
  swift_beginAccess();
  sub_100003ABC(&qword_1006051A8, &qword_1004D8F60);
  sub_1004B8574();
  return swift_endAccess();
}

uint64_t PresentedViewState.$isPresented.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100605D10, &qword_1004D5F60);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_1006051A8, &qword_1004D8F60);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PresentedViewState.$isPresented.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_100003ABC(&qword_100605D10, &qword_1004D5F60);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  PresentedViewState.$isPresented.getter();
  return sub_100238064;
}

void sub_100238064(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    PresentedViewState.$isPresented.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PresentedViewState.$isPresented.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PresentedViewState.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = sub_1004BD174();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PresentedViewState.__allocating_init()()
{
  v0 = swift_allocObject();
  PresentedViewState.init()();
  return v0;
}

uint64_t *PresentedViewState.init()()
{
  v1 = *v0;
  v2 = sub_100003ABC(&qword_1006051A8, &qword_1004D8F60);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9[-v4];
  v6 = qword_100607B90;
  v7 = *(v1 + 80);
  v9[15] = 0;
  sub_1004B8564();
  (*(v3 + 32))(v0 + v6, v5, v2);
  (*(*(v7 - 8) + 56))(v0 + *(*v0 + 96), 1, 1, v7);
  return v0;
}

void PresentedViewState.present(_:animated:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 80);
  v6 = sub_1004BD174();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  v11 = *(v5 - 8);
  (*(v11 + 16))(&v13 - v9, a1, v5, v8);
  (*(v11 + 56))(v10, 0, 1, v5);
  v12 = *(*v2 + 96);
  swift_beginAccess();
  (*(v7 + 40))(v2 + v12, v10, v6);
  swift_endAccess();
  if (a2)
  {
    sub_1004BA7B4();
    sub_1004B8B24();
  }

  else
  {
    PresentedViewState.isPresented.setter(1);
  }
}

uint64_t *PresentedViewState.deinit()
{
  v1 = qword_100607B90;
  v2 = sub_100003ABC(&qword_1006051A8, &qword_1004D8F60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 96);
  v4 = sub_1004BD174();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PresentedViewState.__deallocating_deinit()
{
  PresentedViewState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100238670@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

void sub_10023870C(uint64_t a1)
{
  sub_1001B5C1C();
  if (v1 <= 0x3F)
  {
    sub_1004BD174();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1002387DC(void *a1)
{
  v1 = a1[1];
  sub_1004B8D64();
  type metadata accessor for PresentedViewState(255, v1, v2, v3);
  sub_1004BD174();
  sub_1004B9864();
  sub_1004B8D64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1002388BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v9);
  (*(a4 + 8))(v9, a2, a3, a4);
  return sub_1002391B4(v9);
}

void sub_100238978(uint64_t a1@<X8>)
{
  if (![v1 isViewLoaded])
  {
    v7 = [v1 parentViewController];
    if (v7)
    {
      v8 = v7;
      sub_100238978(a1);
      goto LABEL_8;
    }

LABEL_12:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v8 = v3;
  v4 = [v3 window];
  if (!v4 || (v5 = v4, v6 = [v4 windowScene], v5, !v6))
  {

    goto LABEL_12;
  }

  UIWindowScene.noticePresenting.getter(a1);

LABEL_8:
}

uint64_t PresentedViewState<A>.present(_:)(__int128 *a1)
{
  v3 = *a1;
  *(v2 + 104) = a1[1];
  v4 = a1[3];
  *(v2 + 120) = a1[2];
  *(v2 + 136) = v4;
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  *(v2 + 152) = *(a1 + 8);
  *(v2 + 88) = v3;
  sub_1004BC474();
  *(v2 + 272) = sub_1004BC464();
  v6 = sub_1004BC3E4();

  return _swift_task_switch(sub_100238B4C, v6, v5);
}

uint64_t sub_100238B4C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);

  v3 = v1 + *(*v1 + 96);
  swift_beginAccess();
  *(v0 + 16) = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  *(v0 + 80) = *(v3 + 64);
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  *(v0 + 32) = v4;
  sub_1000C7A60(v2, v0 + 160);
  *v3 = *(v0 + 88);
  v7 = *(v0 + 120);
  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  *(v3 + 64) = *(v0 + 152);
  *(v3 + 32) = v7;
  *(v3 + 48) = v8;
  *(v3 + 16) = v9;
  sub_100007214(v0 + 16, &qword_100602B60, &qword_1004D0580);
  *swift_task_alloc() = &type metadata for Alert;
  swift_getKeyPath();

  *swift_task_alloc() = &type metadata for Alert;
  swift_getKeyPath();

  *(v0 + 160) = 1;

  sub_1004B85B4();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100238CF8(__int128 *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000136EC;

  return PresentedViewState<A>.present(_:)(a1);
}

uint64_t sub_100238D90()
{
  result = swift_slowAlloc();
  qword_100607C18 = result;
  return result;
}

double UIWindowScene.noticePresenting.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1006000C0 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v1, qword_100607C18))
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_100007214(v6, &qword_100605110, &unk_1004CD280);
    goto LABEL_10;
  }

  sub_100003ABC(&qword_100607C20, &unk_1004D6040);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t UIWindowScene.noticePresenting.setter(uint64_t a1)
{
  if (qword_1006000C0 != -1)
  {
    swift_once();
  }

  v3 = qword_100607C18;
  sub_100239054(a1, v12);
  v4 = v13;
  if (v13)
  {
    sub_100009178(v12, v13);
    v5 = *(v4 - 8);
    v6 = __chkstk_darwin();
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_1004BD9A4();
    (*(v5 + 8))(v8, v4);
    sub_100004C6C(v12);
  }

  else
  {
    v9 = 0;
  }

  objc_setAssociatedObject(v1, v3, v9, 1);
  swift_unknownObjectRelease();
  return sub_100007214(a1, &qword_100601CE0, &qword_1004C99F0);
}

uint64_t sub_100239054(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100601CE0, &qword_1004C99F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*UIWindowScene.noticePresenting.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  UIWindowScene.noticePresenting.getter(v3);
  return sub_10023913C;
}

void sub_10023913C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100239054(*a1, v2 + 40);
    UIWindowScene.noticePresenting.setter(v2 + 40);
    sub_100007214(v2, &qword_100601CE0, &qword_1004C99F0);
  }

  else
  {
    UIWindowScene.noticePresenting.setter(*a1);
  }

  free(v2);
}

uint64_t sub_1002391B4(uint64_t a1)
{
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100239210(uint64_t a1, uint64_t a2)
{
  sub_1004B6B04();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

uint64_t PresentedViewState<A>.present(_:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_1004B6B04();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_1004BC474();
  v2[12] = sub_1004BC464();
  v5 = sub_1004BC3E4();
  v2[13] = v5;
  v2[14] = v4;

  return _swift_task_switch(sub_1002393E0, v5, v4);
}

uint64_t sub_1002393E0()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  sub_100009178(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_10023950C;
  v5 = v0[8];

  return v7(v5, v2, v3);
}

uint64_t sub_10023950C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10023962C, v3, v2);
}

uint64_t sub_10023962C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000F7E0(v0[8]);
  }

  else
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    (*(v5 + 32))(v4, v0[8], v6);
    (*(v5 + 16))(v8, v4, v6);
    (*(v5 + 56))(v8, 0, 1, v6);
    v9 = *(*v7 + 96);
    swift_beginAccess();
    sub_1000DD4EC(v8, v7 + v9);
    swift_endAccess();
    sub_1004BA7B4();
    sub_1004B8B24();

    (*(v5 + 8))(v4, v6);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100239810(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000136EC;

  return PresentedViewState<A>.present(_:)(a1);
}

uint64_t sub_1002398A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v29 = a1;
  v30 = sub_100003ABC(&qword_100607C40, &qword_1004D61D8);
  __chkstk_darwin();
  v28 = &v25 - v6;
  v7 = sub_100003ABC(&qword_100607C48, &qword_1004D61E0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v25 - v9;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v12 = &v25 - v11;
  v13 = sub_1004B6B04();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*a3 + 96);
  swift_beginAccess();
  sub_1000C8C40(a3 + v17, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000F7E0(v12);
    v18 = sub_100003ABC(&qword_100607C50, &qword_1004D61E8);
    (*(*(v18 - 8) + 16))(v28, v29, v18);
    swift_storeEnumTagMultiPayload();
    v19 = sub_1000206D4(&qword_100607C58, &qword_100607C50, &qword_1004D61E8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v31 = v18;
    v32 = v19;
    swift_getOpaqueTypeConformance2();
    return sub_1004B9514();
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_100003ABC(&qword_100607C28, &qword_1004D6110);
    v26 = v7;
    sub_1000206D4(&qword_100607C30, &qword_100607C28, &qword_1004D6110, &protocol conformance descriptor for PresentedViewState<A>);
    sub_1004B8B84();
    swift_getKeyPath();
    sub_1004B8B94();

    v25 = a4;
    v27 = v13;
    v23 = sub_100003ABC(&qword_100607C50, &qword_1004D61E8);
    v24 = sub_1000206D4(&qword_100607C58, &qword_100607C50, &qword_1004D61E8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v21 = v16;
    sub_1004B9E94();

    v22 = v26;
    (*(v8 + 16))(v28, v10, v26);
    swift_storeEnumTagMultiPayload();
    v31 = v23;
    v32 = v24;
    swift_getOpaqueTypeConformance2();
    sub_1004B9514();
    (*(v8 + 8))(v10, v22);
    return (*(v14 + 8))(v21, v27);
  }
}

void sub_100239DE0(_BYTE *a3@<X8>)
{
  sub_1004B6B04();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a3 = v4;
}

uint64_t sub_100239E7C(char *a1, uint64_t *a2)
{
  sub_1004B6B04();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

double View.shareSheetPresenting(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_100003ABC(&qword_100607C28, &qword_1004D6110);
  sub_1000206D4(&qword_100607C30, &qword_100607C28, &qword_1004D6110, &protocol conformance descriptor for PresentedViewState<A>);
  sub_1004B8B74();
  sub_1004BA124();

  return result;
}

uint64_t sub_100239FE8(void *a1)
{
  sub_1004B8D64();
  sub_10023A04C();
  return swift_getWitnessTable();
}

unint64_t sub_10023A04C()
{
  result = qword_100607C38;
  if (!qword_100607C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607C38);
  }

  return result;
}

unint64_t sub_10023A0F8()
{
  result = qword_100607C60;
  if (!qword_100607C60)
  {
    sub_100003B68(&qword_100607C68, &unk_1004D6270);
    sub_100003B68(&qword_100607C50, &qword_1004D61E8);
    sub_1000206D4(&qword_100607C58, &qword_100607C50, &qword_1004D61E8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607C60);
  }

  return result;
}

unint64_t static LibraryModelRequest.label.getter(uint64_t a1, uint64_t a2)
{
  sub_1004BD404(27);

  swift_getMetatypeMetadata();
  v3._countAndFlagsBits = sub_1004BDC84();
  sub_1004BC024(v3);

  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  sub_1004BC024(v4);
  swift_getMetatypeMetadata();
  v5._countAndFlagsBits = sub_1004BDC84();
  sub_1004BC024(v5);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  sub_1004BC024(v6);
  return 0xD000000000000014;
}

void *LibraryModelRequest.section.getter()
{
  v1 = *(v0 + 8);
  sub_10023A318(v1, *(v0 + 16), *(v0 + 24), *(v0 + 32));
  return v1;
}

double sub_10023A318(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    v6 = a1;
    v7 = a2;
  }

  return result;
}

void LibraryModelRequest.section.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10023A3C4(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
}

double sub_10023A3C4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

void *LibraryModelRequest.item.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = v1;
  v4 = v2;

  return v1;
}

void LibraryModelRequest.item.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
}

uint64_t LibraryModelRequest.filter.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void LibraryModelRequest.filter.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 80) = a1;
  *(v4 + 88) = a2 & 1;
  *(v4 + 96) = a3;
  *(v4 + 104) = a4;
}

uint64_t LibraryModelRequest.itemRange.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 112) = result;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3 & 1;
  return result;
}

uint64_t LibraryModelRequest.label.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

void LibraryModelRequest.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

double LibraryModelRequest.init(library:section:item:scopedContainers:filter:itemRange:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, char a12, __int128 a13, __int128 a14, char a15, uint64_t a16, uint64_t a17)
{
  v25[160] = a12 & 1;
  v25[152] = a15 & 1;
  *&v26 = a1;
  *(&v26 + 1) = a2;
  *&v27 = a3;
  *(&v27 + 1) = a4;
  *&v28 = a5;
  *(&v28 + 1) = a6;
  *&v29 = a7;
  *(&v29 + 1) = a8;
  v30 = a10;
  *&v31 = a11;
  BYTE8(v31) = a12 & 1;
  v32 = a13;
  v33 = a14;
  LOBYTE(v34) = a15 & 1;
  *(&v34 + 1) = 0;
  v35 = 0;
  v36[0] = a1;
  v36[1] = a2;
  v36[2] = a3;
  v36[3] = a4;
  v36[4] = a5;
  v36[5] = a6;
  v36[6] = a7;
  v36[7] = a8;
  v37 = a10;
  v38 = a11;
  v39 = a12 & 1;
  v40 = a13;
  v41 = a14;
  v42 = a15 & 1;
  v43 = 0;
  v44 = 0;
  v18 = type metadata accessor for LibraryModelRequest(0, a16, a17, a4);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v25, &v26, v18);
  (*(v19 + 8))(v36, v18);
  v20 = v33;
  *(a9 + 96) = v32;
  *(a9 + 112) = v20;
  *(a9 + 128) = v34;
  *(a9 + 144) = v35;
  v21 = v29;
  *(a9 + 32) = v28;
  *(a9 + 48) = v21;
  v22 = v31;
  *(a9 + 64) = v30;
  *(a9 + 80) = v22;
  result = *&v26;
  v24 = v27;
  *a9 = v26;
  *(a9 + 16) = v24;
  return result;
}

void LibraryModelRequest.mediaPlayerRequest()(uint64_t a1)
{
  v2 = v1;
  sub_100003ABC(&qword_100607C70, &unk_1004D6280);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = v1[6];
  v21 = v1[7];
  v22 = v1[8];
  v23 = *(v1 + 18);
  v16 = v1[2];
  v17 = v1[3];
  v18 = v1[4];
  v19 = v1[5];
  v14 = *v1;
  v15 = v1[1];
  v5 = v4;
  WitnessTable = swift_getWitnessTable();
  sub_10023B404(v5, a1, WitnessTable);
  [v5 setMediaLibrary:{*v1, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23}];
  isa = 0;
  if (*(v2 + 2) && *(v2 + 4))
  {
    sub_100009130(0, &unk_100604280, MPIdentifierSet_ptr);
    isa = sub_1004BC284().super.isa;
  }

  [v5 setAllowedSectionIdentifiers:isa];

  v8 = *(v2 + 8);
  if (v8)
  {
    sub_100009130(0, &unk_100604280, MPIdentifierSet_ptr);
    v8 = sub_1004BC284().super.isa;
  }

  [v5 setAllowedItemIdentifiers:v8];

  v9 = *(v2 + 9);
  if (v9)
  {
    sub_100009130(0, &qword_100603540, MPModelObject_ptr);
    v9 = sub_1004BC284().super.isa;
  }

  [v5 setScopedContainers:v9];

  v10 = *(v2 + 13);
  if (*(v2 + 88))
  {
    v11 = MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
  }

  else
  {
    v11 = v2 + 5;
  }

  [v5 setFilteringOptions:*v11];
  if (v10)
  {
    v12 = sub_1004BBE24();
  }

  else
  {
    v12 = 0;
  }

  [v5 setFilterText:v12];

  if ((v2[8] & 1) == 0)
  {
    if (__OFSUB__(*(v2 + 15), *(v2 + 14)))
    {
      __break(1u);
      return;
    }

    [v5 setContentRange:?];
  }

  if (*(v2 + 18))
  {
    v13 = sub_1004BBE24();
  }

  else
  {
    v13 = 0;
  }

  [v5 setLabel:v13];
}

uint64_t UIView.Border.thickness.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t static LibraryModelRequest.Filter.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a4)
    {
      if (a8)
      {
        if (a3 == a7 && a4 == a8)
        {
          return 1;
        }

        if (sub_1004BD9C4())
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if ((a6 & 1) == 0 && a1 == a5)
  {
    goto LABEL_6;
  }

  return result;
}

BOOL static LibraryModelRequest.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_100009130(0, &qword_100604490, NSObject_ptr);
  if ((sub_1004BCFA4() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_10023A318(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
    sub_10023A318(v4, v5, v6, v7);
    sub_10023A3C4(v4, v5, v6, v7);
    sub_10023A3C4(v8, v9, v11, v10);
    return 0;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  sub_10023A318(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  sub_10023A318(v4, v5, v6, v7);
  v18 = static LibraryContentConfiguration.__derived_struct_equals(_:_:)(v4, v5, v6, v7, v8, v9, v11, v10);

  sub_10023A3C4(v4, v5, v6, v7);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if ((static LibraryContentConfiguration.__derived_struct_equals(_:_:)(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 72);
  v13 = *(a2 + 72);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = sub_1000E9874(v12, v13);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if ((static LibraryModelRequest.Filter.__derived_struct_equals(_:_:)(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a2 + 80), *(a2 + 88), *(a2 + 96), *(a2 + 104)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 128))
  {
    if (!*(a2 + 128))
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if ((*(a2 + 128) & 1) == 0 && *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120))
  {
LABEL_21:
    v16 = *(a1 + 144);
    v17 = *(a2 + 144);
    if (v16)
    {
      return v17 && (*(a1 + 136) == *(a2 + 136) && v16 == v17 || (sub_1004BD9C4() & 1) != 0);
    }

    return !v17;
  }

  return result;
}

uint64_t static LibraryContentConfiguration.__derived_struct_equals(_:_:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (a1)
  {
    if (!a5)
    {
      return 0;
    }

    sub_100009130(0, &qword_100607C78, MPModelKind_ptr);
    v14 = a5;
    v15 = a1;
    v16 = sub_1004BCFA4();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  sub_100009130(0, &qword_100604490, NSObject_ptr);
  if (sub_1004BCFA4())
  {
    if (a3)
    {
      if (!a7)
      {
        return 0;
      }

      v17 = sub_1000E95E4(a3, a7);

      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    else if (a7)
    {
      return 0;
    }

    if (a4)
    {
      if (a8)
      {

        v18 = sub_1000E95F8(a4, a8);

        if (v18)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

double sub_10023AEFC@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_10023A318(v2, v3, v4, v5);
}

double sub_10023AF10@<D0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v5 = v1[7];
  v4 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;

  v6 = v2;
  v7 = v3;

  return result;
}

uint64_t LibraryContentConfiguration<>.init()()
{
  sub_100003ABC(&unk_1006040A0, &unk_1004CF310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C50A0;
  *(v0 + 32) = sub_1004BBE64();
  *(v0 + 40) = v1;
  isa = sub_1004BC284().super.isa;

  v3 = [objc_opt_self() propertySetWithProperties:isa];

  return 0;
}

uint64_t sub_10023B0C0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10023B0FC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10023B138(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10023B174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10023B1B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10023B1C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10023B1FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10023B244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10023B2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10023B2E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10023B340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_10023B3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_10023B404(void *a1, uint64_t a2, uint64_t a3)
{
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = &v46 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_1004BD174();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v46 - v12;
  v14 = __chkstk_darwin();
  v16 = &v46 - v15;
  v17 = *(a3 + 56);
  v55 = v3;
  v58 = a2;
  v48 = v17;
  (v17)(a2, a3, v14);
  v18 = *(v8 - 8);
  v57 = *(v18 + 48);
  v19 = v57(v16, 1, v8);
  v51 = v9;
  v49 = v10;
  if (v19 == 1)
  {
    (*(v10 + 8))(v16, v9);
    v20 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = (*(AssociatedConformanceWitness + 24))(v8, AssociatedConformanceWitness);
    (*(v18 + 8))(v16, v8);
  }

  [v59 setSectionKind:v20];

  v22 = v48;
  v48(v58, a3);
  v23 = v57(v13, 1, v8);
  v24 = v50;
  if (v23 == 1)
  {
    v25 = 0;
    v26 = v49;
    v27 = v51;
  }

  else
  {
    v28 = swift_getAssociatedConformanceWitness();
    v25 = (*(v28 + 32))(v8, v28);
    v26 = v18;
    v27 = v8;
  }

  (*(v26 + 8))(v13, v27);
  [v59 setSectionProperties:v25];

  v22(v58, a3);
  if (v57(v24, 1, v8) == 1)
  {
    (*(v49 + 8))(v24, v51);
  }

  else
  {
    v29 = swift_getAssociatedConformanceWitness();
    v30 = (*(v29 + 56))(v8, v29);
    (*(v18 + 8))(v24, v8);
    if (v30)
    {
      sub_100009130(0, &qword_100603530, NSSortDescriptor_ptr);
      v31.super.isa = sub_1004BC284().super.isa;

      goto LABEL_12;
    }
  }

  v31.super.isa = 0;
LABEL_12:
  [v59 setSectionSortDescriptors:v31.super.isa];

  v57 = *(a3 + 64);
  v32 = v52;
  v33 = v58;
  (v57)(v58, a3);
  v34 = AssociatedTypeWitness;
  v35 = swift_getAssociatedConformanceWitness();
  v36 = v35[3](v34, v35);
  v47 = a3;
  v54 = *(v54 + 8);
  (v54)(v32, v34);
  v37 = v59;
  [v59 setItemKind:v36];

  v38 = a3;
  v39 = v57;
  (v57)(v33, v38);
  v40 = v35[4](v34, v35);
  v41 = v32;
  v42 = v54;
  (v54)(v41, v34);
  [v37 setItemProperties:v40];

  v43 = v53;
  v39(v33, v47);
  v44 = v35[7](v34, v35);
  v42(v43, v34);
  if (v44)
  {
    sub_100009130(0, &qword_100603530, NSSortDescriptor_ptr);
    v45.super.isa = sub_1004BC284().super.isa;
  }

  else
  {
    v45.super.isa = 0;
  }

  [v59 setItemSortDescriptors:v45.super.isa];
}

double sub_10023BAD0@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *x8_0@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = *(a4 + 16);
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;

  WitnessTable = swift_getWitnessTable();
  ModelRequest.perform(_:_:)(sub_10023C1B4, v9, a4, WitnessTable, x8_0);

  return result;
}

void ModelRequest.perform(_:_:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v11 = *(a4 + 72);

  v12 = v11(a3, a4);
  v16[4] = sub_10023C190;
  v16[5] = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000E26FC;
  v16[3] = &unk_1005BB4E8;
  v13 = _Block_copy(v16);
  v14 = v12;

  v15 = [v14 newOperationWithResponseHandler:v13];
  _Block_release(v13);

  if (qword_1006000C8 != -1)
  {
    swift_once();
  }

  [(objc_class *)ModelRequestQueue.super.isa addOperation:v15];
  a5[3] = sub_100009130(0, &qword_100607ED0, NSOperation_ptr);
  a5[4] = &protocol witness table for NSOperation;

  *a5 = v15;
}

id static MPPropertySet.sectionTitle.getter()
{
  sub_100003ABC(&unk_1006040A0, &unk_1004CF310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C50A0;
  *(v0 + 32) = sub_1004BBE64();
  *(v0 + 40) = v1;
  isa = sub_1004BC284().super.isa;

  v3 = [objc_opt_self() propertySetWithProperties:isa];

  return v3;
}

id sub_10023BDF4()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  v1 = sub_1004BBE24();
  [v0 setName:v1];

  [v0 setMaxConcurrentOperationCount:4];
  result = [v0 setQualityOfService:33];
  ModelRequestQueue.super.isa = v0;
  return result;
}

NSOperationQueue *ModelRequestQueue.unsafeMutableAddressor()
{
  if (qword_1006000C8 != -1)
  {
    swift_once();
  }

  return &ModelRequestQueue;
}

uint64_t sub_10023BEE4(void *a1, uint64_t a2, void (*a3)(Swift::Int, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  if (!a1)
  {
    if (!a2)
    {
      sub_10023C1FC();
      v10 = swift_allocError();
      *v20 = 0;
      *(v20 + 8) = 0;
      *(v20 + 16) = 2;
      swift_errorRetain();
LABEL_8:
      v18 = 0;
      v19 = 1;
      goto LABEL_9;
    }

LABEL_7:
    sub_10023C1FC();
    v10 = swift_allocError();
    *v21 = v7;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    swift_errorRetain();
    swift_errorRetain();
    v7 = 0;
    goto LABEL_8;
  }

  swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCastUnknownClass();
  if (!v9)
  {
    if (!v7)
    {
      v29 = a1;
      v23 = sub_100003ABC(&qword_100607ED8, &unk_1004D65C0);
      WitnessTable = swift_getWitnessTable();
      v25 = sub_10013F918(&v29, v23, WitnessTable);
      v27 = v26;
      sub_10023C1FC();
      v10 = swift_allocError();
      *v28 = v25;
      *(v28 + 8) = v27;
      v19 = 1;
      *(v28 + 16) = 1;
      swift_errorRetain();
      v7 = 0;
      v18 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v10 = v9;
  sub_100003ABC(&unk_1006035A0, &unk_1004CDAC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004C50A0;
  v12 = MPModelResponseDidInvalidateNotification;
  v13.location = MPModelResponseDidInvalidateNotification;
  v13.length = v10;
  v14 = CFRange.init(_:)(v13);
  *(v11 + 56) = &type metadata for NotificationTrigger;
  *(v11 + 64) = &protocol witness table for NotificationTrigger;
  *(v11 + 32) = v14;
  type metadata accessor for BindingRequestResponseInvalidation(0, v14.length);
  swift_allocObject();
  v15 = a1;
  v16 = v12;
  v7 = BindingRequestResponseInvalidation.init(triggers:)(v11);
  v18 = sub_10023C25C(v7, v17);
  v19 = 0;
LABEL_9:
  a3(v10, v19, v7, v18);
  sub_10023C250(v10, v19);
  sub_10023C250(v10, v19);
  return swift_unknownObjectRelease();
}

uint64_t sub_10023C158()
{

  return swift_deallocObject();
}

uint64_t sub_10023C19C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10023C1B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v7 = a1;
  v8 = a2 & 1;
  return v5(&v7, a3, a4);
}

unint64_t sub_10023C1FC()
{
  result = qword_100607EE0;
  if (!qword_100607EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607EE0);
  }

  return result;
}

void sub_10023C250(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_10023C25C(uint64_t a1, uint64_t a2)
{
  result = qword_1006050E8;
  if (!qword_1006050E8)
  {
    type metadata accessor for BindingRequestResponseInvalidation(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006050E8);
  }

  return result;
}

uint64_t sub_10023C2B4(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t static Request.label.getter(uint64_t a1)
{
  swift_getMetatypeMetadata();

  return sub_1004BDC84();
}

double Request.performThenCompleteOnMain(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  v11 = *(a5 + 32);

  v11(a1, sub_10023C7E8, v10, a4, a5);

  return result;
}

uint64_t sub_10023C3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a4;
  v35 = a5;
  v36 = a2;
  v37 = a3;
  v38 = sub_1004BA8F4();
  v41 = *(v38 - 8);
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004BA924();
  v39 = *(v12 - 8);
  v40 = v12;
  __chkstk_darwin();
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a6;
  swift_getAssociatedTypeWitness();
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  v16 = sub_1004BDC04();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = &v32 - v19;
  sub_10009F080(0, v21, v22);
  v33 = sub_1004BCB44();
  (*(v17 + 16))(v20, a1, v16);
  v23 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v15;
  *(v24 + 3) = a7;
  v25 = v35;
  *(v24 + 4) = v34;
  *(v24 + 5) = v25;
  (*(v17 + 32))(&v24[v23], v20, v16);
  v26 = &v24[(v18 + v23 + 7) & 0xFFFFFFFFFFFFFFF8];
  v27 = v37;
  *v26 = v36;
  v26[1] = v27;
  aBlock[4] = sub_10023D4A4;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005BB680;
  v28 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1004BA914();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000F50DC();
  sub_100003ABC(&unk_100604C00, &qword_1004CDBC0);
  sub_1000E6118();
  v29 = v38;
  sub_1004BD2D4();
  v30 = v33;
  sub_1004BCB54();
  _Block_release(v28);

  (*(v41 + 8))(v11, v29);
  return (*(v39 + 8))(v14, v40);
}

uint64_t sub_10023C7B0()
{

  return swift_deallocObject();
}

uint64_t Request.response(previousRevision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_getAssociatedTypeWitness();
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  v5[7] = sub_1004BDC04();
  sub_100003B68(&qword_100607EE8, &qword_1004D66B0);
  v5[8] = swift_getTupleTypeMetadata2();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10023C908, 0, 0);
}

uint64_t sub_10023C908()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_10023CA04;
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001BLL, 0x8000000100504A80, sub_10023CDE4, v3, v6);
}

uint64_t sub_10023CA04()
{

  return _swift_task_switch(sub_10023CB1C, 0, 0);
}

uint64_t sub_10023CB1C()
{
  v1 = (v0[9] + *(v0[8] + 48));
  v2 = *v1;
  v3 = v1[1];
  (*(*(v0[7] - 8) + 32))(v0[2], v0[9]);

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_10023CBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  sub_1004BDC04();
  sub_100003B68(&qword_100607EE8, &qword_1004D66B0);
  swift_getTupleTypeMetadata2();
  v9 = sub_1004BC414();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &v18[-1] - v12;
  (*(v10 + 16))(&v18[-1] - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v10 + 32))(v15 + v14, v13, v9);
  (*(a5 + 32))(v18, a3, sub_10023D1B0, v15, a4, a5);

  return sub_10023D2E8(v18);
}

uint64_t sub_10023CDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  v9 = sub_1004BDC04();
  sub_100003B68(&qword_100607EE8, &qword_1004D66B0);
  swift_getTupleTypeMetadata2();
  v10 = __chkstk_darwin();
  v13 = (&v15 + *(v12 + 48) - v11);
  (*(*(v9 - 8) + 16))(&v15 - v11, a1, v9, v10);
  *v13 = a2;
  v13[1] = a3;
  sub_1004BC414();
  swift_unknownObjectRetain();
  return sub_1004BC404();
}

uint64_t Array<A>.cancel()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004BC3B4();
  swift_getWitnessTable();
  return sub_1004BC204();
}

uint64_t sub_10023D098()
{
  swift_getAssociatedTypeWitness();
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  sub_1004BDC04();
  sub_100003B68(&qword_100607EE8, &qword_1004D66B0);
  swift_getTupleTypeMetadata2();
  v1 = sub_1004BC414();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10023D1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  swift_getAssociatedTypeWitness();
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  sub_1004BDC04();
  sub_100003B68(&qword_100607EE8, &qword_1004D66B0);
  swift_getTupleTypeMetadata2();
  v9 = *(sub_1004BC414() - 8);
  v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_10023CDF0(a1, a2, a3, v10, v7, v8);
}

uint64_t sub_10023D2E8(uint64_t a1)
{
  v2 = sub_100003ABC(qword_100607EF0, &unk_1004D6760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10023D350()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  v2 = *(sub_1004BDC04() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3, AssociatedTypeWitness);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10023D4A4()
{
  swift_getAssociatedTypeWitness();
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  v1 = *(sub_1004BDC04() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(v0 + 32))(v0 + v2, *v3, v3[1]);
}

uint64_t sub_10023D580(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10023D598@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t *RequestResponse.Controller.__allocating_init(request:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v7 = sub_100242480(a1, v4, v5, v6);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v7;
}

uint64_t *RequestResponse.Controller.init(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = sub_100242480(a1, a2, a3, a4);
  (*(*(*(v6 + 80) - 8) + 8))(a1);
  return v7;
}

uint64_t sub_10023D760()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  RequestResponseInvalidatable.invalidate()();

  return swift_unknownObjectRelease();
}

uint64_t property wrapper backing initializer of RequestResponse.Controller.revision(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  return sub_1001BED48(&v3, v1);
}

double sub_10023D824(uint64_t a1)
{
  sub_100242860(a1);

  return result;
}

void sub_10023D85C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v19 - v8;
  v10 = *(v3 + 96);
  swift_beginAccess();
  v11 = *(v5 + 16);
  v11(v9, v1 + v10, v4);
  v19[1] = *(*(v3 + 88) + 8);
  v12 = sub_1004BBD84();
  v13 = *(v5 + 8);
  v13(v9, v4);
  if ((v12 & 1) == 0)
  {
    v19[0] = v7;
    RequestResponse.Controller.revision.getter();
    sub_10023D760();

    v14 = *(*v2 + 176);
    swift_beginAccess();
    v15 = *(v2 + v14);
    if (v15)
    {
      v11(v9, (v15 + *(*v15 + 96)), v4);
      v16 = v2 + v10;
      v17 = v19[0];
      v11(v19[0], v16, v4);

      v18 = sub_1004BBD84();
      v13(v17, v4);
      v13(v9, v4);
      if ((v18 & 1) == 0)
      {
        sub_10023D760();
      }
    }

    sub_10023DB94();
  }
}

uint64_t RequestResponse.Controller.revision.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

void sub_10023DB94()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    RequestResponse.Controller.setNeedsReload(_:)(0, 0);
  }
}

uint64_t RequestResponse.Controller.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t RequestResponse.Controller.request.setter(uint64_t a1)
{
  v3 = *v1;
  sub_100242990(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*RequestResponse.Controller.request.modify(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 96);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_10023DE80;
}

void sub_10023DE80(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_100242990(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_100242990(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_10023DF5C@<X0>(uint64_t *a1@<X8>)
{
  result = RequestResponse.Controller.revision.getter();
  *a1 = result;
  return result;
}

double sub_10023DF88(void *a1)
{

  sub_100242860(v1);

  return result;
}

double sub_10023DFCC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = RequestResponse.Controller.revision.getter();
  v6 = *(v5 + *(*v5 + 112));

  v8 = *(a1 + *(*a1 + 112));
  if (v6 != v8)
  {
    v9 = RequestResponse.Controller.revision.getter();
    v10 = *(v9 + *(*v9 + 112));

    if (v8 >= v10)
    {
      if (qword_1006000D0 != -1)
      {
        swift_once();
      }

      v26 = sub_1004B80B4();
      sub_100007084(v26, qword_1006176E0);
      swift_retain_n();

      v27 = sub_1004B8094();
      v28 = sub_1004BC984();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134349312;
        v30 = RequestResponse.Controller.revision.getter();
        v31 = *(v30 + *(*v30 + 112));

        *(v29 + 4) = v31;

        *(v29 + 12) = 2050;
        *(v29 + 14) = v8;

        _os_log_impl(&_mh_execute_header, v27, v28, "Attempted to apply a revision which ID (%{public}ld) is older than the previous revision's (%{public}ld).", v29, 0x16u);
      }

      else
      {
      }

      sub_100242860(v32);
    }

    else
    {
      v11 = *(*v2 + 184);
      v12 = *(v2 + v11);
      if (v12)
      {
        v13 = *(v12 + *(*v12 + 112));

        v14 = RequestResponse.Controller.revision.getter();

        v15 = *(v14 + *(*v14 + 112));

        if (v15 >= v13)
        {
          *(v2 + v11) = 0;
        }
      }

      v16 = *(*v2 + 176);
      swift_beginAccess();
      v17 = *(v2 + v16);
      if (v17)
      {
        v18 = *(v17 + *(*v17 + 112));

        v19 = RequestResponse.Controller.revision.getter();

        v20 = *(v19 + *(*v19 + 112));

        if (v20 >= v18)
        {
          *(v2 + v16) = 0;
        }
      }

      v21 = RequestResponse.Controller.revision.getter();
      sub_10023E8C8(v21);
      v22 = *(*v21 + 112);
      swift_beginAccess();
      v24 = *(v4 + 80);
      v23 = *(v4 + 88);
      type metadata accessor for RequestResponse.Revision(255, v24, v23, v25);
      swift_getFunctionTypeMetadata2();
      sub_1004BC3B4();
      sub_1004BBCA4();
      swift_endAccess();
      if (v60)
      {
        v61[0] = v60;
        __chkstk_darwin();
        swift_getWitnessTable();
        sub_1004BC204();
      }

      swift_beginAccess();
      sub_1004BBC84();
      sub_1004BBCB4();
      swift_endAccess();
      v33 = RequestResponse.Controller.revision.getter();
      v34 = *(v33 + *(*v33 + 120) + 8);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v36 = (*(v34 + 40))(ObjectType, v34);
      swift_unknownObjectRelease();
      if (v36)
      {
        if (qword_1006000D0 != -1)
        {
          swift_once();
        }

        v37 = sub_1004B80B4();
        sub_100007084(v37, qword_1006176E0);
        v38 = sub_1004B8094();
        v39 = sub_1004BC9A4();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v59 = v22;
          v41 = swift_slowAlloc();
          v61[0] = v41;
          *v40 = 136446210;
          v42 = (*(v23 + 24))(v24, v23);
          v44 = sub_100012018(v42, v43, v61);

          *(v40 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v38, v39, "╭ %{public}s", v40, 0xCu);
          sub_100004C6C(v41);
          v22 = v59;
        }

        v45 = sub_1004B8094();
        v46 = sub_1004BC9A4();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "╞ 🔄 Invalid", v47, 2u);
        }

        v48 = sub_1004B8094();
        v49 = sub_1004BC9A4();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 134349056;
          *(v50 + 4) = *(v21 + v22);

          _os_log_impl(&_mh_execute_header, v48, v49, "╰ RevisionID=%{public}ld", v50, 0xCu);
        }

        else
        {
        }

        sub_10023DB94();
      }

      else
      {
        v51 = RequestResponse.Controller.revision.getter();
        v52 = *(v51 + *(*v51 + 112));

        v53 = RequestResponse.Controller.revision.getter();
        v54 = *(v53 + *(*v53 + 120) + 8);
        swift_unknownObjectRetain();

        v55 = swift_getObjectType();
        v56 = swift_allocObject();
        swift_weakInit();
        v57 = swift_allocObject();
        v57[2] = v24;
        v57[3] = v23;
        v57[4] = v56;
        v57[5] = v52;
        v58 = *(v54 + 24);

        v58(sub_100243390, v57, v55, v54);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_10023E8C8(uint64_t a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);

    v5(v1, a1);
    return sub_10003CC4C(v5, v6);
  }

  return result;
}

double sub_10023E958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = RequestResponse.Controller.revision.getter();
    v13 = *(v12 + *(*v12 + 112));

    if (v13 == a4)
    {
      if (qword_1006000D0 != -1)
      {
        swift_once();
      }

      v14 = sub_1004B80B4();
      sub_100007084(v14, qword_1006176E0);
      v15 = sub_1004B8094();
      v16 = sub_1004BC9A4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v39[0] = v18;
        *v17 = 136446210;
        v19 = (*(a6 + 24))(a5, a6);
        v21 = sub_100012018(v19, v20, v39);

        *(v17 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "╭ %{public}s", v17, 0xCu);
        sub_100004C6C(v18);
      }

      v22 = sub_1004B8094();
      v23 = sub_1004BC9A4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "╞ 🔄 Invalidated", v24, 2u);
      }

      v25 = sub_1004B8094();
      v26 = sub_1004BC9A4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134349056;
        *(v27 + 4) = a4;
        _os_log_impl(&_mh_execute_header, v25, v26, "╞ RevisionID=%{public}ld", v27, 0xCu);
      }

      swift_unknownObjectRetain();
      v28 = sub_1004B8094();
      v29 = sub_1004BC9A4();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39[0] = v31;
        *v30 = 136446210;
        swift_getObjectType();
        v32 = sub_1004BD9D4();
        v34 = sub_100012018(v32, v33, v39);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v28, v29, "╰ Invalidator=%{public}s", v30, 0xCu);
        sub_100004C6C(v31);
      }

      v35 = v11 + *(*v11 + 136);
      swift_beginAccess();
      v36 = *v35;
      if (*v35)
      {
        v37 = *(v35 + 8);

        v38 = RequestResponse.Controller.revision.getter();
        v36(v11, v38);
        sub_10003CC4C(v36, v37);
      }

      sub_10023DB94();
    }
  }

  return result;
}

uint64_t RequestResponse.Controller.$revision.getter()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for RequestResponse.Revision(255, *(v1 + 80), *(v1 + 88), v2);
  sub_1004B85D4();
  sub_1004B8574();
  return swift_endAccess();
}

uint64_t RequestResponse.Controller.willReloadRequest.getter()
{
  v1 = (v0 + *(*v0 + 112));
  swift_beginAccess();
  v2 = *v1;
  sub_10002F518(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.willReloadRequest.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 112));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10003CC4C(v6, v7);
}

uint64_t RequestResponse.Controller.willApplyRevision.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  v2 = *v1;
  sub_10002F518(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.willApplyRevision.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 120));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10003CC4C(v6, v7);
}

uint64_t RequestResponse.Controller.didApplyRevision.getter()
{
  v1 = (v0 + *(*v0 + 128));
  swift_beginAccess();
  v2 = *v1;
  sub_10002F518(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.didApplyRevision.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10003CC4C(v6, v7);
}

uint64_t RequestResponse.Controller.revisionDidInvalidate.getter()
{
  v1 = (v0 + *(*v0 + 136));
  swift_beginAccess();
  v2 = *v1;
  sub_10002F518(*v1, v1[1]);
  return v2;
}

uint64_t RequestResponse.Controller.revisionDidInvalidate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 136));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10003CC4C(v6, v7);
}

void sub_10023F340(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *(*v2 + 144);
  swift_beginAccess();
  if (*(v2 + v4) != v3)
  {
    v5 = RequestResponse.Controller.revision.getter();
    v6 = *(v5 + *(*v5 + 120) + 8);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 40))(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *(*v2 + 176);
      swift_beginAccess();
      if (!*(v2 + v9) || (, v10 = RequestResponse.Revision.isValid.getter(), , !v10))
      {
        sub_10023DB94();
      }
    }
  }
}

BOOL RequestResponse.Revision.isValid.getter()
{
  v1 = *(v0 + *(*v0 + 120) + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v1) = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return (v1 & 1) == 0;
}

uint64_t RequestResponse.Controller.isAutomaticReloadingEnabled.getter()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return *(v0 + v1);
}

void RequestResponse.Controller.isAutomaticReloadingEnabled.setter(char a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_10023F340(v4);
}

void (*RequestResponse.Controller.isAutomaticReloadingEnabled.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 144);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_10023F648;
}

double sub_10023F660(char a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  if (*(v1 + v3) & 1) == 0 && (a1)
  {
    v5 = *(v1 + *(*v1 + 184));
    if (v5)
    {
      v6 = *(*v5 + 112);
      v7 = *(v5 + v6);

      v8 = RequestResponse.Controller.revision.getter();
      v9 = *(v8 + *(*v8 + 112));

      if (v9 < v7)
      {
        if (qword_1006000D0 != -1)
        {
          swift_once();
        }

        v10 = sub_1004B80B4();
        sub_100007084(v10, qword_1006176E0);
        v11 = sub_1004B8094();
        v12 = sub_1004BC9A4();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "╭ ⏰ RRC resumed, applying pending revision", v13, 2u);
        }

        v14 = sub_1004B8094();
        v15 = sub_1004BC9A4();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 134349056;
          *(v16 + 4) = *(v5 + v6);

          _os_log_impl(&_mh_execute_header, v14, v15, "╞ RevisionID=%{public}ld", v16, 0xCu);
        }

        else
        {
        }

        sub_10023F8A0(v5);
      }
    }
  }

  return result;
}

void sub_10023F8A0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(MSVBlockGuard);
  v17[4] = sub_100241758;
  v17[5] = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10023720C;
  v17[3] = &unk_1005BBA80;
  v5 = _Block_copy(v17);
  v6 = [v4 initWithTimeout:v5 interruptionHandler:10.0];
  _Block_release(v5);

  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = a1;
  v8 = v2 + *(*v2 + 120);
  swift_beginAccess();
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);

    v11 = v6;
    sub_10002F518(v9, v10);
    if (qword_1006000D0 != -1)
    {
      swift_once();
    }

    v12 = sub_1004B80B4();
    sub_100007084(v12, qword_1006176E0);
    v13 = sub_1004B8094();
    v14 = sub_1004BC9A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "╞ 🫸 calling willApplyRevision; Waiting for client to accept it.", v15, 2u);
    }

    v9(v2, a1, sub_100243304, v7);

    sub_10003CC4C(v9, v10);
  }

  else
  {

    v16 = v6;
    sub_100241840(v16, v2, a1);
  }
}

uint64_t RequestResponse.Controller.isPaused.getter()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return *(v0 + v1);
}

double RequestResponse.Controller.isPaused.setter(char a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_10023F660(v4);
}

void (*RequestResponse.Controller.isPaused.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 152);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_10023FC88;
}

void sub_10023FCA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 32), a2);

  free(v3);
}

void RequestResponse.Controller.setNeedsReload(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *v3;
  v8 = sub_1004BA8F4();
  v50 = *(v8 - 8);
  __chkstk_darwin();
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1004BA924();
  v47 = *(v49 - 8);
  __chkstk_darwin();
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 80);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v45 - v14;
  if (a1)
  {
    v16 = swift_allocObject();
    v16[2] = v12;
    v17 = *(v7 + 88);
    v16[3] = v17;
    v16[4] = a1;
    v16[5] = a2;
    aBlock[6] = sub_100242B58;
    aBlock[7] = v16;
    swift_beginAccess();
    type metadata accessor for RequestResponse.Revision(255, v12, v17, v18);
    swift_getFunctionTypeMetadata2();
    sub_1004BC3B4();

    sub_1004BC364();
    swift_endAccess();
    v6 = *v3;
  }

  v19 = *(v6 + 192);
  if ((*(v3 + v19) & 1) == 0)
  {
    *(v3 + v19) = 1;
    v20 = *(*v3 + 176);
    swift_beginAccess();
    v23 = *(v3 + v20);
    if (v23)
    {
      v46 = v8;
      v24 = *(*v3 + 96);
      swift_beginAccess();
      (*(v13 + 16))(v15, v3 + v24, v12);
      v25 = *(*v23 + 96);
      v26 = *(v7 + 88);
      v27 = *(v26 + 40);

      LOBYTE(v25) = v27(v23 + v25, v12, v26);
      (*(v13 + 8))(v15, v12);
      if (v25)
      {
        if (qword_1006000D0 != -1)
        {
          swift_once();
        }

        v28 = sub_1004B80B4();
        sub_100007084(v28, qword_1006176E0);
        v29 = sub_1004B8094();
        v30 = sub_1004BC9A4();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          aBlock[0] = v45;
          *v31 = 136446210;
          v32 = (*(v26 + 24))(v12, v26);
          v34 = sub_100012018(v32, v33, aBlock);

          *(v31 + 4) = v34;
          _os_log_impl(&_mh_execute_header, v29, v30, "╭ %{public}s", v31, 0xCu);
          sub_100004C6C(v45);
        }

        v35 = sub_1004B8094();
        v36 = sub_1004BC9A4();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "╞ 🛑 Cancelled", v37, 2u);
        }

        v38 = sub_1004B8094();
        v39 = sub_1004BC9A4();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 134349056;
          *(v40 + 4) = *(v23 + *(*v23 + 112));

          _os_log_impl(&_mh_execute_header, v38, v39, "╰ RevisionID=%{public}ld", v40, 0xCu);
        }

        else
        {
        }

        v41 = *(v23 + *(*v23 + 112));
        swift_beginAccess();
        sub_10019A5F4(&v51, v41);
        swift_endAccess();
        sub_10023D760();
      }

      v8 = v46;
    }

    sub_10009F080(0, v21, v22);
    v42 = sub_1004BCB44();
    aBlock[4] = sub_100242B04;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D6C80;
    aBlock[3] = &unk_1005BB6A8;
    v43 = _Block_copy(aBlock);

    sub_1004BA914();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100243228(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003ABC(&unk_100604C00, &qword_1004CDBC0);
    sub_1000E6118();
    v44 = v48;
    sub_1004BD2D4();
    sub_1004BCB54();
    _Block_release(v43);

    (*(v50 + 8))(v44, v8);
    (*(v47 + 8))(v11, v49);
  }
}

void sub_1002404BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v61 - v8;
  v11 = *(v10 + 192);
  if (*(v1 + v11) != 1)
  {
    return;
  }

  *(v1 + v11) = 0;
  v12 = *(*v1 + 176);
  swift_beginAccess();
  v64 = v12;
  v13 = *(v2 + v12);
  if (v13 || (v13 = *(v2 + *(*v2 + 184))) != 0)
  {
    v14 = *(v13 + *(*v13 + 112));
    v15 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v59 = RequestResponse.Controller.revision.getter();
    v60 = *(v59 + *(*v59 + 112));

    v15 = v60 + 1;
    if (!__OFADD__(v60, 1))
    {
LABEL_5:
      v62 = v7;
      v16 = *(*v2 + 96);
      swift_beginAccess();
      v63 = v5;
      v61[0] = v5[2];
      v61[1] = v5 + 2;
      (v61[0])(v9, v2 + v16, v4);
      v17 = *(*v2 + 160);
      swift_beginAccess();
      v72[0] = *(v2 + v17);
      v68 = v9;
      v69 = v15;
      *&v70 = v15;
      swift_beginAccess();
      v65 = *(v3 + 88);
      v66 = v4;
      type metadata accessor for RequestResponse.Revision(255, v4, v65, v18);
      swift_getFunctionTypeMetadata2();
      sub_1004BC3B4();
      sub_1004BBC84();

      v7 = v68;
      sub_1004BBCB4();
      swift_endAccess();
      *(v2 + v17) = sub_1004BC304();

      v19 = v2 + *(*v2 + 112);
      swift_beginAccess();
      v20 = *v19;
      if (*v19)
      {
        v21 = *(v19 + 8);

        v20(v2, v7);
        sub_10003CC4C(v20, v21);
      }

      swift_checkMetadataState();
      swift_allocObject();
      v5 = sub_1002421DC(v69, v7);
      *(v2 + v64) = v5;

      if (qword_1006000D0 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_8:
  v22 = sub_1004B80B4();
  sub_100007084(v22, qword_1006176E0);
  v23 = sub_1004B8094();
  v24 = sub_1004BC9A4();
  v25 = os_log_type_enabled(v23, v24);
  v67 = v5;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v73[0] = v27;
    *v26 = 136446210;
    v28 = (*(v65 + 24))();
    v30 = sub_100012018(v28, v29, v73);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "╭ %{public}s", v26, 0xCu);
    sub_100004C6C(v27);

    v7 = v68;
  }

  v31 = sub_1004B8094();
  v32 = sub_1004BC9A4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "╞ 🕺Performing", v33, 2u);
  }

  v34 = sub_1004B8094();
  v35 = sub_1004BC9A4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134349056;
    *(v36 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v34, v35, "╞ RevisionID=%{public}ld", v36, 0xCu);
  }

  v37 = sub_1004B8094();
  v38 = sub_1004BC9A4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v73[0] = v40;
    *v39 = 136446210;
    swift_beginAccess();
    (v61[0])(v62, v7, v66);
    v41 = sub_1004BBF04();
    v43 = sub_100012018(v41, v42, v73);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "╰ Request=%{public}s", v39, 0xCu);
    sub_100004C6C(v40);
  }

  v44 = v69;
  swift_beginAccess();
  v45 = RequestResponse.Controller.revision.getter();
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  v47[2] = v67;
  v47[3] = v46;
  v47[4] = v44;
  v48 = v65;
  v49 = v7;
  v50 = *(v65 + 32);

  v51 = v66;
  v50(v73, v45, sub_100243144, v47, v66, v48);

  sub_100243150(v73, &v70);
  if (v71)
  {
    sub_100013414(&v70, v72);
    v52 = v64;
    swift_beginAccess();
    v53 = *(v2 + v52);
    v54 = v63;
    if (v53)
    {
      swift_endAccess();
      v56 = v68;
      if (*(v53 + *(*v53 + 112)) == v69)
      {
        type metadata accessor for RequestResponse.Controller.TaskInvalidator(0, v51, v65, v55);
        sub_10001342C(v72, &v70);
        v57 = swift_allocObject();
        *(v57 + 56) = 0;
        *(v57 + 64) = 0;
        *(v57 + 72) = 0;
        sub_100013414(&v70, v57 + 16);
        WitnessTable = swift_getWitnessTable();

        sub_1002431C0(v57, WitnessTable);
      }

      sub_100004C6C(v72);
      sub_10023D2E8(v73);
      (v54[1])(v56, v51);
    }

    else
    {
      sub_100004C6C(v72);
      sub_10023D2E8(v73);
      swift_endAccess();

      (v54[1])(v68, v51);
    }
  }

  else
  {
    sub_10023D2E8(v73);

    sub_10023D2E8(&v70);
    (v63[1])(v49, v51);
  }
}

uint64_t sub_100240E2C(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  sub_100013414(a1, v2 + 16);
  return v2;
}

uint64_t sub_100240E78(uint64_t result)
{
  if (*(v1 + 56) == 1 && (result & 1) == 0)
  {
    v2 = *(v1 + 40);
    v3 = *(v1 + 48);
    sub_100009178((v1 + 16), v2);
    return (*(v3 + 8))(v2, v3);
  }

  return result;
}

uint64_t sub_100240EDC(char a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  return sub_100240E78(v2);
}

uint64_t sub_100240EEC()
{
  sub_100004C6C(v0 + 2);
  sub_10003CC4C(v0[8], v0[9]);

  return swift_deallocClassInstance();
}

uint64_t sub_100240F2C()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_10002F518(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_100240F7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_10003CC4C(v5, v6);
}

uint64_t (*sub_10024102C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56);
  return sub_100241058;
}

double sub_10024108C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*a4 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  v13 = sub_1004BDC04();
  (*(*(v13 - 8) + 24))(&a4[v12], a1, v13);
  swift_endAccess();
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    type metadata accessor for GenericRequestResponseInvalidation(0, v14);
    v15 = swift_allocObject();
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 16) = 0x636972656E6547;
    *(v15 + 24) = 0xE700000000000000;
    a3 = sub_100243228(qword_100608078, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);
  }

  swift_unknownObjectRetain();
  sub_1002431C0(v15, a3);
  swift_unknownObjectRelease();
  sub_10009F080(0, v16, v17);
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a4;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1002432B0, v18);

  return result;
}

double sub_1002412B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_1006000D0 != -1)
    {
      swift_once();
    }

    v9 = sub_1004B80B4();
    sub_100007084(v9, qword_1006176E0);
    v10 = sub_1004B8094();
    v11 = sub_1004BC9A4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35[0] = v13;
      *v12 = 136446210;
      v14 = (*(*(v5 + 88) + 24))(*(v5 + 80));
      v16 = sub_100012018(v14, v15, v35);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "╭ %{public}s", v12, 0xCu);
      sub_100004C6C(v13);
    }

    v17 = sub_1004B8094();
    v18 = sub_1004BC9A4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "╞ ✅ Finished Loading", v19, 2u);
    }

    v20 = sub_1004B8094();
    v21 = sub_1004BC9A4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134349056;
      *(v22 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v20, v21, "╞ RevisionID=%{public}ld", v22, 0xCu);
    }

    v23 = *(a3 + *(*a3 + 112));
    swift_beginAccess();
    sub_100129C28(v23);
    v25 = v24;
    swift_endAccess();
    if (v25)
    {
      v26 = *(*v8 + 152);
      swift_beginAccess();
      if (*(v8 + v26) != 1)
      {
        v33 = RequestResponse.Controller.revision.getter();
        v34 = *(v33 + *(*v33 + 112));

        if (v34 < v23)
        {
          sub_10023F8A0(a3);
        }

        goto LABEL_24;
      }

      v27 = *(*v8 + 184);
      v28 = *(v8 + v27);
      if (v28)
      {
        if (*(v28 + *(*v28 + 112)) >= a2)
        {
          goto LABEL_24;
        }
      }

      else if (a2 <= 0)
      {
LABEL_24:

        return result;
      }

      *(v8 + v27) = a3;

      v29 = sub_1004B8094();
      v30 = sub_1004BC9A4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "╰ 💤 Set as Pending; RRC is Paused";
        goto LABEL_22;
      }
    }

    else
    {
      v29 = sub_1004B8094();
      v30 = sub_1004BC9A4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "╰ ⏭ Skipping revision; Cancelled";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v29, v30, v32, v31, 2u);
      }
    }
  }

  return result;
}

void sub_100241758(uint64_t a1, uint64_t a2)
{
  if (qword_1006000D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();
  sub_100007084(v2, qword_1006176E0);
  oslog = sub_1004B8094();
  v3 = sub_1004BC994();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
  }
}

void sub_100241840(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 disarm];

  sub_100242860(v3);

  if (qword_1006000D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1004B80B4();
  sub_100007084(v4, qword_1006176E0);
  oslog = sub_1004B8094();
  v5 = sub_1004BC9A4();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "╰ 👌 Applied", v6, 2u);
  }
}

uint64_t *RequestResponse.Controller.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 96), v2);
  v3 = *(*v0 + 104);
  type metadata accessor for RequestResponse.Revision(255, v2, *(v1 + 88), v4);
  v5 = sub_1004B85D4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_10003CC4C(*(v0 + *(*v0 + 112)), *(v0 + *(*v0 + 112) + 8));
  sub_10003CC4C(*(v0 + *(*v0 + 120)), *(v0 + *(*v0 + 120) + 8));
  sub_10003CC4C(*(v0 + *(*v0 + 128)), *(v0 + *(*v0 + 128) + 8));
  sub_10003CC4C(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8));

  return v0;
}

uint64_t RequestResponse.Revision.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  v4 = sub_1004BDC04();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t RequestResponse.Revision.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  v5 = sub_1004BDC04();
  v6 = *(v5 - 1);
  __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  sub_10023D598(v5, &v12, a1);
  return (*(*(AssociatedTypeWitness - 8) + 56))(a1, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_100241ECC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 40))(ObjectType, a2);
  if (result)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    RequestResponseInvalidatable.invalidate()();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *RequestResponse.Revision.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  v1 = *(*v0 + 104);
  swift_getAssociatedTypeWitness();
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  v2 = sub_1004BDC04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1002420D8(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_100242158(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_1006176E0);
  sub_100007084(v2, qword_1006176E0);
  return sub_1004B80A4();
}

uint64_t *sub_1002421DC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  swift_getAssociatedTypeWitness();
  sub_100003B68(&qword_100604C30, &qword_1004C8490);
  v8 = sub_1004BDC04();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = (&v19 - v11);
  *(v2 + *(v5 + 112)) = a1;
  (*(*(v7 - 8) + 16))(v2 + *(*v2 + 96), a2, v7, v10);
  type metadata accessor for RequestResponse.Revision.InitialResponseLoadingError(0, v7, v6, v13);
  swift_getWitnessTable();
  *v12 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (*(v9 + 32))(v2 + *(*v2 + 104), v12, v8);
  type metadata accessor for GenericRequestResponseInvalidation(0, v14);
  v15 = swift_allocObject();
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(v15 + 16) = 0x636972656E6547;
  *(v15 + 24) = 0xE700000000000000;
  v16 = sub_100243228(qword_100608078, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);
  v17 = (v2 + *(*v2 + 120));
  *v17 = v15;
  v17[1] = v16;
  return v2;
}

uint64_t *sub_100242480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v5;
  v8 = (v5 + *(*v5 + 112));
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + *(*v5 + 120));
  *v9 = 0;
  v9[1] = 0;
  v10 = (v5 + *(*v5 + 128));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v5 + *(*v5 + 136));
  *v11 = 0;
  v11[1] = 0;
  *(v5 + *(*v5 + 144)) = 0;
  *(v5 + *(*v5 + 152)) = 0;
  v12 = *(*v5 + 160);
  v13 = *(v7 + 80);
  type metadata accessor for RequestResponse.Revision(255, v13, *(v7 + 88), a4);
  swift_getFunctionTypeMetadata2();
  *(v5 + v12) = sub_1004BC304();
  v14 = *(*v5 + 168);
  v15 = sub_1004BC3B4();
  swift_getTupleTypeMetadata2();
  v16 = sub_1004BC304();
  v17 = sub_1000CC72C(v16, &type metadata for Int, v15, &protocol witness table for Int);

  *(v5 + v14) = v17;
  *(v5 + *(*v5 + 176)) = 0;
  *(v5 + *(*v5 + 184)) = 0;
  *(v5 + *(*v5 + 192)) = 0;
  *(v5 + *(*v5 + 200)) = &_swiftEmptySetSingleton;
  (*(*(v13 - 8) + 16))(v5 + *(*v5 + 96), a1, v13);
  swift_checkMetadataState();
  swift_allocObject();
  v18 = sub_1002421DC(0, a1);
  sub_10023D760();
  swift_beginAccess();
  v19 = *v18;
  v21 = v18;
  sub_1001BED48(&v21, v19);
  swift_endAccess();
  return v5;
}

uint64_t sub_1002427D8@<X0>(uint64_t *a1@<X8>)
{
  result = RequestResponse.Controller.revision.getter();
  *a1 = result;
  return result;
}

double sub_100242804(void *a1)
{

  sub_100242860(v1);

  return result;
}

__n128 sub_100242854(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_100242860(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85B4();
  sub_10023DFCC(v2);

  return result;
}

uint64_t sub_100242990(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10[-v5];
  v8 = *(v7 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_10023D85C(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100242B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100242B20()
{

  return swift_deallocObject();
}

uint64_t sub_100242C04(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for RequestResponse.Revision(255, result, *(a1 + 88), v3);
    result = sub_1004B85D4();
    if (v5 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100242DA8(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_100003B68(&qword_100604C30, &qword_1004C8490);
    v1 = sub_1004BDC04();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v1;
}

uint64_t sub_100242EE0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100242F1C(uint64_t a1, uint64_t a2)
{
  v3._countAndFlagsBits = (*(a2 + 24))();
  sub_1004BC024(v3);

  return 0x3A664F6B736154;
}

uint64_t sub_100242F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RequestResponse.Revision(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1004B85C4();
  v6 = __chkstk_darwin();
  (*(v8 + 16))(&v10 - v7, a1, v6);
  swift_beginAccess();
  sub_1004B85D4();
  sub_1004B8584();
  return swift_endAccess();
}

uint64_t sub_1002430CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100243104()
{

  return swift_deallocObject();
}

uint64_t sub_100243150(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(qword_100607EF0, &unk_1004D6760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002431C0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 120));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRetain();
  sub_100241ECC(v4, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_100243228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100243270()
{

  return swift_deallocObject();
}

uint64_t sub_1002432BC()
{

  return swift_deallocObject();
}

uint64_t sub_100243310(uint64_t (**a1)(uint64_t *, uint64_t *))
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v5 = *(v1 + 24);
  v6 = v2;
  return v3(&v6, &v5);
}

uint64_t sub_100243358()
{

  return swift_deallocObject();
}

uint64_t BindingRequestResponseInvalidation.__allocating_init(triggers:)(uint64_t a1)
{
  v2 = swift_allocObject();
  BindingRequestResponseInvalidation.init(triggers:)(a1);
  return v2;
}

uint64_t GenericRequestResponseInvalidation.__allocating_init(label:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

Swift::Void __swiftcall RequestResponseInvalidatable.invalidate()()
{
  v3 = v1;
  v4 = v0;
  if (((*(v1 + 40))() & 1) == 0)
  {
    (*(v3 + 48))(1, v4, v3);
    v5 = (*(v3 + 16))(v4, v3);
    if (v5)
    {
      v7 = v5;
      v8 = v6;
      v5(v2, v3);

      sub_10003CC4C(v7, v8);
    }
  }
}

uint64_t GenericRequestResponseInvalidation.init(label:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t GenericRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_10002F518(v1, *(v0 + 40));
  return v1;
}

uint64_t GenericRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_10003CC4C(v5, v6);
}

uint64_t GenericRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

void *GenericRequestResponseInvalidation.deinit()
{

  sub_10003CC4C(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t GenericRequestResponseInvalidation.__deallocating_deinit()
{

  sub_10003CC4C(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_100243768()
{
  v1 = *(*v0 + 16);

  return v1;
}

void *CompoundRequestResponseInvalidation.__allocating_init(responseInvalidations:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1002444CC(a1);

  return v2;
}

void *CompoundRequestResponseInvalidation.init(responseInvalidations:)(uint64_t a1)
{
  v1 = sub_1002444CC(a1);

  return v1;
}

uint64_t CompoundRequestResponseInvalidation.append(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = v2;
    v5 = result;
    ObjectType = swift_getObjectType();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = *(a2 + 24);
    swift_unknownObjectRetain();

    v8(sub_10024479C, v7, ObjectType, a2);

    swift_beginAccess();
    v9 = *(v2 + 40);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 40) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_100018CA8(0, v9[2] + 1, 1, v9);
      *(v3 + 40) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_100018CA8((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[2 * v12];
    v13[4] = v5;
    v13[5] = a2;
    *(v3 + 40) = v9;
    swift_endAccess();
    if (((*(a2 + 40))(ObjectType, a2) & 1) != 0 && (swift_beginAccess(), *(v3 + 32) != 1) && (*(v3 + 32) = 1, swift_beginAccess(), (v14 = *(v3 + 16)) != 0))
    {
      v15 = *(v3 + 24);

      v14(v5, a2);
      swift_unknownObjectRelease();
      return sub_10003CC4C(v14, v15);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_100243A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if (*(v7 + 32) == 1 || (*(v7 + 32) = 1, swift_beginAccess(), (v8 = *(v7 + 16)) == 0))
    {
    }

    else
    {
      v9 = *(v7 + 24);

      v8(a1, a2);

      sub_10003CC4C(v8, v9);
    }
  }

  return result;
}

Swift::Void __swiftcall CompoundRequestResponseInvalidation.append(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = *(a1._rawValue + 2);
  swift_beginAccess();
  swift_beginAccess();
  if (v4)
  {
    v5 = (a1._rawValue + 32);
    do
    {
      v16 = *v5;
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = *(*(&v16 + 1) + 24);
      swift_unknownObjectRetain_n();

      v9(sub_1002449AC, v8, ObjectType, *(&v16 + 1));

      swift_beginAccess();
      v10 = *(v2 + 40);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 40) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_100018CA8(0, v10[2] + 1, 1, v10);
        *(v2 + 40) = v10;
      }

      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        v10 = sub_100018CA8((v12 > 1), v13 + 1, 1, v10);
      }

      v10[2] = v13 + 1;
      *&v10[2 * v13 + 4] = v16;
      *(v2 + 40) = v10;
      swift_endAccess();
      if (((*(*(&v16 + 1) + 40))(ObjectType, *(&v16 + 1)) & 1) != 0 && (*(v2 + 32) & 1) == 0 && (*(v2 + 32) = 1, (v14 = *(v2 + 16)) != 0))
      {
        v15 = *(v2 + 24);

        v14(v6, *(&v16 + 1));
        swift_unknownObjectRelease_n();
        sub_10003CC4C(v14, v15);
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v5;
      --v4;
    }

    while (v4);
  }
}

void CompoundRequestResponseInvalidation.debugDescription.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = v1 + 40;
    while (v3 < *(v1 + 16))
    {
      ++v3;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v5 = sub_1004BD9D4();
      v7 = v6;

      v8._countAndFlagsBits = v5;
      v8._object = v7;
      sub_1004BC024(v8);

      v9._countAndFlagsBits = 124;
      v9._object = 0xE100000000000000;
      sub_1004BC024(v9);
      swift_unknownObjectRelease();

      v4 += 16;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v10._countAndFlagsBits = 93;
    v10._object = 0xE100000000000000;
    sub_1004BC024(v10);
  }
}

uint64_t CompoundRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t *CompoundRequestResponseInvalidation.deinit()
{
  sub_10003CC4C(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t CompoundRequestResponseInvalidation.__deallocating_deinit()
{
  sub_10003CC4C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t BindingRequestResponseInvalidation.__allocating_init(trigger:)(void *a1)
{
  sub_100003ABC(&unk_1006035A0, &unk_1004CDAC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C50A0;
  sub_10001342C(a1, v2 + 32);
  v3 = swift_allocObject();
  BindingRequestResponseInvalidation.init(triggers:)(v2);
  sub_100004C6C(a1);
  return v3;
}

uint64_t BindingRequestResponseInvalidation.init(triggers:)(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  type metadata accessor for Whitetail.Binding(0, v6);
  swift_allocObject();

  *(v2 + 16) = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v7, 0, sub_1002447E4, v5);

  return v2;
}

double sub_100244140(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    if (*(v4 + 40) == 1 || (*(v4 + 40) = 1, swift_beginAccess(), (v5 = *(v4 + 24)) == 0))
    {
    }

    else
    {
      v6 = *(v4 + 32);
      v7 = sub_100244960(&qword_1006050E8, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);

      v5(v4, v7);

      sub_10003CC4C(v5, v6);
    }
  }

  return result;
}

uint64_t BindingRequestResponseInvalidation.debugDescription.getter()
{

  sub_100003ABC(&qword_100608100, &qword_1004D6A68);
  v1._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v1);

  return 0x3D676E69646E6942;
}

uint64_t BindingRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

void *BindingRequestResponseInvalidation.deinit()
{

  sub_10003CC4C(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t BindingRequestResponseInvalidation.__deallocating_deinit()
{

  sub_10003CC4C(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_100244448()
{

  sub_100003ABC(&qword_100608100, &qword_1004D6A68);
  v1._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v1);

  return 0x3D676E69646E6942;
}

void *sub_1002444CC(uint64_t a1)
{
  v2 = v1;
  v21 = v2;
  v2[2] = 0;
  v2 += 2;
  *(v2 + 16) = 0;
  v2[3] = _swiftEmptyArrayStorage;
  v4 = v2 + 3;
  v2[1] = 0;
  v5 = *(a1 + 16);
  v20 = v2 + 2;
  swift_beginAccess();
  v19 = v2;
  swift_beginAccess();
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      v22 = v5;
      v23 = *v6;
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = v4;
      v11 = *(*(&v23 + 1) + 24);
      swift_unknownObjectRetain_n();

      v11(sub_1002449AC, v9, ObjectType, *(&v23 + 1));
      v4 = v10;

      swift_beginAccess();
      v12 = v21[5];
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21[5] = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_100018CA8(0, v12[2] + 1, 1, v12);
        *v10 = v12;
      }

      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        v12 = sub_100018CA8((v14 > 1), v15 + 1, 1, v12);
      }

      v12[2] = v15 + 1;
      *&v12[2 * v15 + 4] = v23;
      *v10 = v12;
      swift_endAccess();
      if (((*(*(&v23 + 1) + 40))(ObjectType, *(&v23 + 1)) & 1) != 0 && (*v20 & 1) == 0 && (*v20 = 1, (v16 = *v19) != 0))
      {
        v17 = v21[3];

        v16(v7, *(&v23 + 1));
        swift_unknownObjectRelease_n();
        sub_10003CC4C(v16, v17);
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v6;
      v5 = v22 - 1;
    }

    while (v22 != 1);
  }

  return v21;
}

uint64_t sub_100244764()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002447A4()
{

  return swift_deallocObject();
}

uint64_t sub_1002447EC(uint64_t a1)
{
  result = sub_100244960(&qword_100608108, type metadata accessor for GenericRequestResponseInvalidation, &protocol conformance descriptor for GenericRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100244868(uint64_t a1)
{
  result = sub_100244960(&qword_100608110, type metadata accessor for CompoundRequestResponseInvalidation, &protocol conformance descriptor for CompoundRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002448E4(uint64_t a1)
{
  result = sub_100244960(&qword_100608118, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100244960(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Logger.sharePlayTogether.unsafeMutableAddressor(uint64_t a1, uint64_t a2)
{
  if (qword_1006000D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();

  return sub_100007084(v2, static Logger.sharePlayTogether);
}

uint64_t SharePlayTogetherSession.isEqual(_:)(uint64_t a1)
{
  sub_10000F778(a1, v6, &qword_100605110, &unk_1004CD280);
  if (!v7)
  {
    sub_100007214(v6, &qword_100605110, &unk_1004CD280);
    goto LABEL_9;
  }

  type metadata accessor for SharePlayTogetherSession(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  if (*&v5[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier] == *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier) && *&v5[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier + 8] == *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier + 8))
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_1004BD9C4();
  }

  return v3 & 1;
}

uint64_t SharePlayTogetherSession.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_identifier);

  return v1;
}

SEL *sub_100244C64(SEL *result)
{
  if (*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session))
  {
    return [*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session) *result];
  }

  __break(1u);
  return result;
}

void *SharePlayTogetherSession.title.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result localizedSessionName];
    v3 = sub_1004BBE64();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SharePlayTogetherSession.joinToken.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result joinToken];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.routeType.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SharePlayTogetherSession.routeType.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_routeType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SharePlayTogetherSession.routeSymbolName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

void sub_100244EE0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_100244F60(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1004B85B4();
}

uint64_t SharePlayTogetherSession.routeSymbolName.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1004B85B4();
}

void (*SharePlayTogetherSession.routeSymbolName.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D5140;
}

uint64_t SharePlayTogetherSession.$routeSymbolName.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100608368, &qword_1004D6C88);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_100608360, &qword_1004D6C80);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$routeSymbolName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_100608368, &qword_1004D6C88);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__routeSymbolName;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_100608360, &qword_1004D6C80);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D5144;
}

uint64_t SharePlayTogetherSession.participants.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

void sub_100245484(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v3;
}

uint64_t sub_100245504(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1004B85B4();
}

uint64_t SharePlayTogetherSession.participants.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1004B85B4();
}

void (*SharePlayTogetherSession.participants.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D3DD4;
}

uint64_t SharePlayTogetherSession.$participants.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100608388, &qword_1004D6CE8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_100608380, &qword_1004D6CE0);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$participants.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_100608388, &qword_1004D6CE8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__participants;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_100608380, &qword_1004D6CE0);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D4114;
}

void (*SharePlayTogetherSession.connectedParticipantsCount.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D5140;
}

uint64_t SharePlayTogetherSession.$connectedParticipantsCount.setter(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_1006083A0, &qword_1004D6D40);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003ABC(&qword_100608398, &qword_1004D6D38);
  sub_1004B8584();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharePlayTogetherSession.$connectedParticipantsCount.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003ABC(&qword_1006083A0, &qword_1004D6D40);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession__connectedParticipantsCount;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003ABC(&qword_100608398, &qword_1004D6D38);
  sub_1004B8574();
  swift_endAccess();
  return sub_1001D5144;
}

void sub_100245D24(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v3;
}

uint64_t sub_100245DA4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1004B85B4();
}

uint64_t sub_100245E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_1004B85B4();
}

void (*SharePlayTogetherSession.pendingParticipantsCount.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1004B8594();
  return sub_1001D5140;
}
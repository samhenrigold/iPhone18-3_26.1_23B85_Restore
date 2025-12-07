uint64_t sub_1001F7E90(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1001F7EA8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1001F7EE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 172))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001F7F2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 172) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 172) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001F7FA8()
{
  v2 = (v0 + 120);
  v3 = *(v0 + 120);
  v4 = *(v0 + 144);
  if ((v4 - 1) < 2)
  {
    return 0;
  }

  v6 = (v0 + 152);
  v7 = *(v0 + 152);
  if (v4)
  {
    v9 = *(v0 + 128);
    v10 = *(v0 + 168);
    v11 = *(v0 + 160);
    v12 = *(v0 + 136);
    *v2 = 0;
    *(v0 + 128) = 0;
    *(v0 + 136) = 0;
    *(v0 + 144) = 2;
    *v6 = 0;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0;
    sub_1001F57E4(*(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32), v4, v7, v11, v10, &v16, *v0);
    sub_100191644(v3, v9, v12);

    if (v1)
    {
    }

    else
    {

      v14[0] = v18;
      v14[1] = v17;
      v14[2] = v16;
      *v15 = 0;
      *&v15[8] = 0xE000000000000000;
      *&v15[16] = 0;
      *&v15[24] = v19 & 0x80201;
      v15[28] = 0;
      v27 = v16;
      v28[0] = *v15;
      v25 = v18;
      v26 = v17;
      *(v28 + 13) = *&v15[13];

      v13 = sub_1001F1DEC();
      sub_100191670(v14);
      sub_1001916C4(&v16);
      return v13;
    }
  }

  else
  {
    *v2 = 0;
    *(v0 + 128) = 0;
    *(v0 + 136) = 0;
    *(v0 + 144) = 1;
    *v6 = 0;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0;
    v8 = *v0;
    v20 = 0;
    v21 = 0xE000000000000000;
    v22 = 0;
    v23 = 0xE000000000000000;
    v24 = (v8 & 1) == 0;
    return sub_1001F0F00();
  }
}

uint64_t sub_1001F8198(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v102 = a3;
  v7 = _s6LoggerVMa(0);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v94 - v10;
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v15 = &v94 - v14;
  __chkstk_darwin(v16);
  v18 = &v94 - v17;
  __chkstk_darwin(v19);
  v21 = &v94 - v20;
  __chkstk_darwin(v22);
  v28 = &v94 - v27;
  v101 = v3;
  if (*(v3 + 144) == 1)
  {
    v97 = v25;
    v98 = v26;
    v99 = v24;
    v100 = v23;
    sub_100014CEC(a1, a2);
    result = sub_1001F6454(a1, a2, &v104);
    if (!v4)
    {
      v30 = v102;
      sub_100190B00(v102, v28);
      sub_100190B00(v30, v21);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1001F8DF8(&v104, v103);
      v31 = sub_1004A4A54();
      v32 = sub_1004A5FF4();
      sub_1001F8E54(&v104);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v95 = v31;
        v34 = v33;
        v96 = swift_slowAlloc();
        v103[0] = v96;
        *v34 = 68158722;
        *(v34 + 4) = 2;
        *(v34 + 8) = 256;
        v35 = v100;
        v36 = *(v100 + 20);
        v111 = v32;
        v37 = v21[v36];
        sub_100190CD4(v21);
        *(v34 + 10) = v37;
        *(v34 + 11) = 2082;
        v38 = *&v28[*(v35 + 20) + 4];
        sub_100190CD4(v28);
        v39 = ConnectionID.debugDescription.getter(v38);
        v41 = sub_10015BA6C(v39, v40, v103);

        *(v34 + 13) = v41;
        *(v34 + 21) = 2080;
        v43 = v106;
        v42 = v107;

        v44 = sub_10015BA6C(v43, v42, v103);

        *(v34 + 23) = v44;
        *(v34 + 31) = 2082;
        v112 = v104;
        v45 = sub_1004A5824();
        v47 = sub_10015BA6C(v45, v46, v103);

        *(v34 + 33) = v47;
        v48 = v95;
        _os_log_impl(&_mh_execute_header, v95, v111, "[%.*hhx-%{public}s] NTLM: Received challenge with target: '%s', flags: {%{public}s}", v34, 0x29u);
        swift_arrayDestroy();

        if (v110)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_100190CD4(v21);

        sub_100190CD4(v28);
        if (v110)
        {
          goto LABEL_12;
        }
      }

      v49 = v109;
      v50 = v102;
      sub_100190B00(v102, v18);
      sub_100190B00(v50, v15);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v51 = sub_1004A4A54();
      v52 = sub_1004A5FF4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v103[0] = v96;
        *v53 = 68158978;
        *(v53 + 4) = 2;
        *(v53 + 8) = 256;
        v54 = v100;
        v55 = *(v100 + 20);
        LODWORD(v95) = v52;
        v56 = v15[v55];
        sub_100190CD4(v15);
        *(v53 + 10) = v56;
        *(v53 + 11) = 2082;
        v57 = *&v18[*(v54 + 20) + 4];
        sub_100190CD4(v18);
        v58 = ConnectionID.debugDescription.getter(v57);
        v60 = sub_10015BA6C(v58, v59, v103);

        *(v53 + 13) = v60;
        *(v53 + 21) = 256;
        *(v53 + 23) = v49;
        *(v53 + 24) = 256;
        *(v53 + 26) = BYTE1(v49);
        *(v53 + 27) = 512;
        *(v53 + 29) = HIWORD(v49);
        _os_log_impl(&_mh_execute_header, v51, v95, "[%.*hhx-%{public}s] NTLM: Received challenge with OS version %hhu.%hhu.%hu", v53, 0x1Fu);
        sub_1000197E0(v96);
      }

      else
      {
        sub_100190CD4(v15);

        sub_100190CD4(v18);
      }

LABEL_12:
      v61 = v104;
      v62 = v98;
      if ((v104 & 0x200) == 0)
      {
        v63 = v99;
        if ((v104 & 0x80000) == 0)
        {
          goto LABEL_14;
        }

LABEL_20:
        v78 = v102;
        sub_100190B00(v102, v63);
        v79 = v97;
        sub_100190B00(v78, v97);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v80 = sub_1004A4A54();
        v81 = sub_1004A6034();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          LODWORD(v96) = v61;
          v84 = v83;
          v103[0] = v83;
          *v82 = 68158210;
          *(v82 + 4) = 2;
          *(v82 + 8) = 256;
          v85 = v100;
          v86 = *(v79 + *(v100 + 20));
          sub_100190CD4(v79);
          *(v82 + 10) = v86;
          *(v82 + 11) = 2082;
          v87 = *(v63 + *(v85 + 20) + 4);
          sub_100190CD4(v63);
          v88 = ConnectionID.debugDescription.getter(v87);
          v90 = sub_10015BA6C(v88, v89, v103);

          *(v82 + 13) = v90;
          _os_log_impl(&_mh_execute_header, v80, v81, "[%.*hhx-%{public}s] NTLM: NTLM2 Session Response flag set", v82, 0x15u);
          sub_1000197E0(v84);
          v61 = v96;

          v64 = v108;
          if (v108)
          {
            goto LABEL_15;
          }
        }

        else
        {
          sub_100190CD4(v79);

          sub_100190CD4(v63);
          v64 = v108;
          if (v108)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_24;
      }

      v66 = v102;
      sub_100190B00(v102, v98);
      sub_100190B00(v66, v11);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v67 = sub_1004A4A54();
      v68 = sub_1004A5FF4();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        LODWORD(v96) = v61;
        v71 = v70;
        v103[0] = v70;
        *v69 = 68158210;
        *(v69 + 4) = 2;
        *(v69 + 8) = 256;
        v72 = v100;
        v73 = v11[*(v100 + 20)];
        sub_100190CD4(v11);
        *(v69 + 10) = v73;
        *(v69 + 11) = 2082;
        v74 = *(v62 + *(v72 + 20) + 4);
        sub_100190CD4(v62);
        v75 = ConnectionID.debugDescription.getter(v74);
        v77 = sub_10015BA6C(v75, v76, v103);

        *(v69 + 13) = v77;
        _os_log_impl(&_mh_execute_header, v67, v68, "[%.*hhx-%{public}s] NTLM: NTLM Authentication flag set", v69, 0x15u);
        sub_1000197E0(v71);
        v61 = v96;

        v63 = v99;
        if ((v61 & 0x80000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_100190CD4(v11);

        sub_100190CD4(v62);
        v63 = v99;
        if ((v61 & 0x80000) != 0)
        {
          goto LABEL_20;
        }
      }

LABEL_14:
      v64 = v108;
      if (v108)
      {
LABEL_15:
        v65 = *(v64 + 16);
        v103[0] = 0;
        v103[1] = v65;
        v103[2] = v64 + 32;
        v103[3] = v64 + 32 + v65;

        v91 = sub_1001F65D0(v103);

LABEL_25:
        v92 = v105;

        result = sub_1001F8E54(&v104);
        v93 = v101;
        *(v101 + 120) = 0;
        *(v93 + 128) = 0;
        *(v93 + 136) = 255;
        *(v93 + 144) = v91;
        *(v93 + 152) = v64;
        *(v93 + 160) = v92;
        *(v93 + 168) = v61;
        return result;
      }

LABEL_24:
      v91 = _swiftEmptyArrayStorage;
      goto LABEL_25;
    }
  }

  else
  {
    sub_1001F8C00();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

BOOL sub_1001F8A74(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a2 + 3);
  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else
    {
      if (v2 != 2)
      {
        v5 = *a2;
        v6 = *(a2 + 2);
        v7 = *(a2 + 4);
        v8 = *(a2 + 5);
        v9 = *(a2 + 12);
        v10 = *(a1 + 12);
        v12 = *(a1 + 4);
        v11 = *(a1 + 5);
        v13 = *(a1 + 2);
        v15 = *a1;
        v16 = v13;
        v17 = v2;
        v18 = v12;
        v19 = v11;
        v20 = v10;
        if (v3 >= 3)
        {
          v21 = v5;
          v22 = v6;
          v23 = v3;
          v24 = v7;
          v25 = v8;
          v26 = v9;
          return sub_1001F5270(&v15, &v21);
        }

        return 0;
      }

      if (v3 != 2)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  return 1;
}

BOOL sub_1001F8B38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v14[0] = v2;
  *(v14 + 12) = *(a1 + 156);
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v15[8] = a2[8];
  v16[0] = v7;
  *(v16 + 12) = *(a2 + 156);
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[7];
  v15[6] = a2[6];
  v15[7] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  return sub_1001F8C54(v13, v15);
}

unint64_t sub_1001F8C00()
{
  result = qword_1005D4B58;
  if (!qword_1005D4B58)
  {
    result = swift_getWitnessTable("i$\n", &_s14descr100587B79C4NTLMV24InvalidStateForChallengeVN, v0, v1);
    atomic_store(result, &qword_1005D4B58);
  }

  return result;
}

BOOL sub_1001F8C54(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v33 = v2;
  v34 = v3;
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  v11 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v11 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v12 = v7 == v9 && v8 == v10;
  if (!v12 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 88);
  v22[2] = *(a1 + 72);
  v22[3] = v14;
  v22[4] = *(a1 + 104);
  v22[0] = *(a1 + 40);
  v22[1] = v13;
  v15 = *(a2 + 56);
  v16 = *(a2 + 88);
  v21[2] = *(a2 + 72);
  v21[3] = v16;
  v21[4] = *(a2 + 104);
  v21[0] = *(a2 + 40);
  v21[1] = v15;
  if ((sub_1001EFF14(v22, v21) & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 18);
  v18 = *(a2 + 18);
  if (v17 == 2)
  {
    return v18 == 2;
  }

  if (v17 == 1)
  {
    return v18 == 1;
  }

  if (v17)
  {
    v23 = *(a1 + 120);
    v19 = *(a1 + 17);
    v26 = *(a1 + 152);
    v27 = *(a1 + 42);
    v24 = v19;
    v25 = v17;
    if (v18 >= 3)
    {
      v28 = *(a2 + 120);
      v20 = *(a2 + 17);
      v31 = *(a2 + 152);
      v32 = *(a2 + 42);
      v29 = v20;
      v30 = v18;
      if (sub_1001F5270(&v23, &v28))
      {
        return 1;
      }
    }
  }

  else if (!v18)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1001F8EB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 52))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F8F14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double sub_1001F8F70(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void sub_1001F8FB4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v75 = _s6LoggerVMa(0);
  __chkstk_darwin(v75);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v9 = &v71 - v8;
  __chkstk_darwin(v10);
  v12 = &v71 - v11;
  __chkstk_darwin(v13);
  v15 = (&v71 - v14);
  __chkstk_darwin(v16);
  v19 = &v71 - v18;
  v20 = a2 >> 62;
  v77 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v20)
    {
      goto LABEL_8;
    }

    LODWORD(v21) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v21 = v21;
      goto LABEL_7;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v20 != 2)
  {
    goto LABEL_8;
  }

  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v24 = __OFSUB__(v22, v23);
  v21 = v22 - v23;
  if (v24)
  {
    goto LABEL_47;
  }

LABEL_7:
  if (v21 > 499)
  {
    if (v20 > 1)
    {
      if (v20 != 2)
      {
LABEL_34:
        __chkstk_darwin(v17);
        *(&v71 - 2) = v56;
        sub_100172534(sub_1001FA114, (&v71 - 4), a1, a2);
        return;
      }

      v55 = *(a1 + 16);
      v54 = *(a1 + 24);
      v24 = __OFSUB__(v54, v55);
      v53 = v54 - v55;
      if (!v24)
      {
        goto LABEL_33;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    LODWORD(v53) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v53 = v53;
LABEL_33:
      if (v53 <= 4999)
      {
        goto LABEL_34;
      }

      sub_100190B00(a3, v12);
      sub_100190B00(a3, v9);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_100014CEC(a1, a2);
      sub_100014CEC(a1, a2);
      v19 = v9;
      v57 = sub_1004A4A54();
      v58 = sub_1004A6014();
      if (!os_log_type_enabled(v57, v58))
      {
        sub_100014D40(a1, a2);
        sub_100190CD4(v19);
        sub_100014D40(a1, a2);

        v70 = v12;
        goto LABEL_42;
      }

      v59 = v12;
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = v75;
      v15 = v61;
      v78[0] = v61;
      *v60 = 68158466;
      *(v60 + 4) = 2;
      *(v60 + 8) = 256;
      v63 = v19[*(v62 + 20)];
      sub_100190CD4(v19);
      *(v60 + 10) = v63;
      *(v60 + 11) = 2082;
      v64 = *(v59 + *(v62 + 20) + 4);
      sub_100190CD4(v59);
      v65 = ConnectionID.debugDescription.getter(v64);
      v67 = sub_10015BA6C(v65, v66, v78);

      *(v60 + 13) = v67;
      *(v60 + 21) = 2048;
      if (v77 == 2)
      {
        v68 = *(a1 + 16);
        v32 = *(a1 + 24);
        sub_100014D40(a1, a2);
        v69 = v32 - v68;
        if (__OFSUB__(v32, v68))
        {
          __break(1u);
          goto LABEL_40;
        }

LABEL_45:
        *(v60 + 23) = v69;
        sub_100014D40(a1, a2);
        _os_log_impl(&_mh_execute_header, v57, v58, "[%.*hhx-%{public}s] XOAUTH2 error (%{iec-bytes}ld)", v60, 0x1Fu);
        sub_1000197E0(v15);

        return;
      }

      sub_100014D40(a1, a2);
      LODWORD(v69) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v69 = v69;
        goto LABEL_45;
      }

LABEL_50:
      __break(1u);
      return;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_8:
  v73 = v9;
  v74 = v12;
  sub_1004A3F54();
  swift_allocObject();
  v25 = sub_1004A3F44();
  sub_1001FA130();
  v76 = v25;
  sub_1004A3F34();
  v27 = v78[0];
  v26 = v78[1];
  v29 = v78[2];
  v28 = v78[3];
  v31 = v78[4];
  v30 = v78[5];
  sub_100190B00(a3, v19);
  sub_100190B00(a3, v15);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v32 = sub_1004A4A54();
  v33 = sub_1004A6014();

  if (!os_log_type_enabled(v32, v33))
  {
LABEL_40:
    sub_100190CD4(v15);

    v70 = v19;
LABEL_42:
    sub_100190CD4(v70);
    return;
  }

  v34 = swift_slowAlloc();
  v72 = v27;
  v35 = v75;
  v74 = v31;
  v36 = v34;
  v77 = swift_slowAlloc();
  v78[0] = v77;
  *v36 = 68158978;
  *(v36 + 4) = 2;
  *(v36 + 8) = 256;
  v37 = *(v35 + 20);
  v73 = v29;
  v38 = *(v15 + v37);
  sub_100190CD4(v15);
  *(v36 + 10) = v38;
  *(v36 + 11) = 2082;
  v39 = v30;
  v40 = *&v19[*(v35 + 20) + 4];
  sub_100190CD4(v19);
  v41 = ConnectionID.debugDescription.getter(v40);
  v43 = sub_10015BA6C(v41, v42, v78);

  *(v36 + 13) = v43;
  *(v36 + 21) = 2082;
  if (v26)
  {
    v44 = v72;
  }

  else
  {
    v44 = 0;
  }

  if (v26)
  {
    v45 = v26;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  v46 = sub_10015BA6C(v44, v45, v78);

  *(v36 + 23) = v46;
  *(v36 + 31) = 2082;
  if (v28)
  {
    v47 = v73;
  }

  else
  {
    v47 = 0;
  }

  if (v28)
  {
    v48 = v28;
  }

  else
  {
    v48 = 0xE000000000000000;
  }

  v49 = sub_10015BA6C(v47, v48, v78);

  *(v36 + 33) = v49;
  *(v36 + 41) = 2082;

  if (v39)
  {
    v50 = v74;
  }

  else
  {
    v50 = 0;
  }

  if (v39)
  {
    v51 = v39;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  v52 = sub_10015BA6C(v50, v51, v78);

  *(v36 + 43) = v52;
  _os_log_impl(&_mh_execute_header, v32, v33, "[%.*hhx-%{public}s] XOAUTH2 error: status '%{public}s',  schemes '%{public}s',  scope '%{public}s'", v36, 0x33u);
  swift_arrayDestroy();
}

BOOL sub_1001F983C(_BOOL8 *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 11)
  {
    return v4 >> 60 == 11;
  }

  if (v3 >> 60 == 15)
  {
    return v4 >> 60 == 15;
  }

  if (((v4 >> 60) | 4) == 0xF)
  {
    return 0;
  }

  return sub_10003A194(*a1, v3, *a2, v4);
}

BOOL sub_1001F98A0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v13[4] = a2[4];
  v8 = *a2;
  v13[1] = a2[1];
  v12[4] = v3;
  v13[0] = v8;
  v10 = *(a2 + 10);
  v9 = *(a2 + 11);
  if ((sub_1001EFF14(v12, v13) & 1) == 0)
  {
    return 0;
  }

  if (v6 >> 60 == 11)
  {
    return v9 >> 60 == 11;
  }

  if (v6 >> 60 != 15)
  {
    return ((v9 >> 60) | 4) != 0xF && sub_10003A194(v5, v6, v10, v9);
  }

  return v9 >> 60 == 15;
}

uint64_t sub_1001F997C()
{
  v2 = *(v0 + 88);
  if (v2 >> 60 == 11)
  {
    return 0;
  }

  if (v2 >> 60 == 15)
  {
    sub_10018D6F4();
    swift_allocError();
    *v3 = xmmword_1004DB2C0;
    *(v3 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 80);
    sub_100014CEC(v1, *(v0 + 88));
    sub_100191718(v1, v2);
    *(v0 + 80) = xmmword_1004D25F0;
  }

  return v1;
}

uint64_t sub_1001F9A40(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(v3 + 88) >> 60 == 15)
  {
    sub_1001F8FB4(a1, a2, a3);
    result = sub_100191718(*(v3 + 80), *(v3 + 88));
    *(v3 + 80) = xmmword_1004DA570;
  }

  else
  {
    sub_10018D6F4();
    swift_allocError();
    *v5 = xmmword_1004DB2C0;
    *(v5 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_1001F9ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _s6LoggerVMa(0);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  sub_100190B00(a3, &v24 - v11);
  sub_100190B00(a3, v9);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v13 = sub_1004A4A54();
  v14 = sub_1004A6014();
  if (!os_log_type_enabled(v13, v14))
  {
    sub_100190CD4(v9);

    sub_100190CD4(v12);
    return;
  }

  v24 = v3;
  v15 = swift_slowAlloc();
  v25 = a2;
  v16 = v15;
  v17 = swift_slowAlloc();
  v26 = v17;
  *v16 = 68158722;
  *(v16 + 4) = 2;
  *(v16 + 8) = 256;
  v18 = v9[*(v7 + 20)];
  sub_100190CD4(v9);
  *(v16 + 10) = v18;
  *(v16 + 11) = 2082;
  v19 = *&v12[*(v7 + 20) + 4];
  sub_100190CD4(v12);
  v20 = ConnectionID.debugDescription.getter(v19);
  v22 = sub_10015BA6C(v20, v21, &v26);

  *(v16 + 13) = v22;
  *(v16 + 21) = 1040;
  v23 = v25 - a1;
  if (!a1)
  {
    v23 = 0;
  }

  if (v23 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v23 <= 0x7FFFFFFF)
  {
    *(v16 + 23) = v23;
    *(v16 + 27) = 2098;
    if (a1)
    {
      *(v16 + 29) = a1;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%.*hhx-%{public}s] XOAUTH2 error: %{public}.*P", v16, 0x25u);
      sub_1000197E0(v17);

      return;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1001F9D2C()
{
  v1 = 0x73656D65686373;
  if (*v0 != 1)
  {
    v1 = 0x65706F6373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_1001F9D80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001FA260(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001F9DA8(uint64_t a1)
{
  v2 = sub_1001FA574();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F9DE4(uint64_t a1)
{
  v2 = sub_1001FA574();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001F9E20@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1001FA370(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1001F9E64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v27 = xmmword_1004DC1F0;
  v8 = sub_1001D9734(0x3D72657375, 0xE500000000000000);
  v10 = v9;
  sub_1004A4434();
  sub_100014D40(v8, v10);

  v11 = sub_1001D9734(a1, a2);
  v13 = v12;
  sub_1004A4434();
  sub_100014D40(v11, v13);
  v25 = sub_10000C9C0(&qword_1005D4B60, &qword_1004E49A8);
  v26 = sub_1001FA078();
  LOBYTE(v24[0]) = 1;
  sub_10002587C(v24, v25);
  sub_1004A43D4();
  sub_1000197E0(v24);
  v14 = sub_1001D9734(0x6165423D68747561, 0xEC00000020726572);
  v16 = v15;
  sub_1004A4434();
  sub_100014D40(v14, v16);

  v17 = sub_1001D9734(a3, a4);
  v19 = v18;
  sub_1004A4434();
  sub_100014D40(v17, v19);
  v20 = sub_1001E194C(&off_1005A3890);
  v22 = v21;
  sub_1004A4434();
  sub_100014D40(v20, v22);
  return v27;
}

unint64_t sub_1001FA078()
{
  result = qword_1005D4B68;
  if (!qword_1005D4B68)
  {
    v3 = sub_10000DEFC(&qword_1005D4B60, &qword_1004E49A8);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> CollectionOfOne<A>, v3, v0, v1);
    atomic_store(result, &qword_1005D4B68);
  }

  return result;
}

uint64_t sub_1001FA0DC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1001FA130()
{
  result = qword_1005D4B70;
  if (!qword_1005D4B70)
  {
    result = swift_getWitnessTable(")0\n", &type metadata for S, v0, v1);
    atomic_store(result, &qword_1005D4B70);
  }

  return result;
}

uint64_t sub_1001FA184(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1001FA1E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1001FA260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1004A6D34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656D65686373 && a2 == 0xE700000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004A6D34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1001FA370@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000C9C0(&qword_1005D4B78, &qword_1004E5110);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_10002587C(a1, a1[3]);
  sub_1001FA574();
  sub_1004A6F84();
  if (v2)
  {
    return sub_1000197E0(a1);
  }

  v25 = 0;
  v9 = sub_1004A6B24();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v12 = sub_1004A6B24();
  v14 = v13;
  v21 = v12;
  v23 = 2;
  v15 = sub_1004A6B24();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_1000197E0(a1);
  v20 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_1001FA574()
{
  result = qword_1005D4B80;
  if (!qword_1005D4B80)
  {
    result = swift_getWitnessTable(byte_1004E51DC, &type metadata for S.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D4B80);
  }

  return result;
}

unint64_t sub_1001FA5DC()
{
  result = qword_1005D4B88;
  if (!qword_1005D4B88)
  {
    result = swift_getWitnessTable(byte_1004E51B4, &type metadata for S.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D4B88);
  }

  return result;
}

unint64_t sub_1001FA634()
{
  result = qword_1005D4B90;
  if (!qword_1005D4B90)
  {
    result = swift_getWitnessTable(byte_1004E5124, &type metadata for S.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D4B90);
  }

  return result;
}

unint64_t sub_1001FA68C()
{
  result = qword_1005D4B98;
  if (!qword_1005D4B98)
  {
    result = swift_getWitnessTable("U!\n", &type metadata for S.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005D4B98);
  }

  return result;
}

unint64_t sub_1001FA6E8()
{
  result = qword_1005D4BA0;
  if (!qword_1005D4BA0)
  {
    result = swift_getWitnessTable("9\x1B\n", &type metadata for PathAttribute, v0, v1);
    atomic_store(result, &qword_1005D4BA0);
  }

  return result;
}

unint64_t sub_1001FA740()
{
  result = qword_1005D4BA8;
  if (!qword_1005D4BA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BetterPathAvailability, &type metadata for BetterPathAvailability, v0, v1);
    atomic_store(result, &qword_1005D4BA8);
  }

  return result;
}

unint64_t sub_1001FA798()
{
  result = qword_1005D4BB0;
  if (!qword_1005D4BB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PathViability, &type metadata for PathViability, v0, v1);
    atomic_store(result, &qword_1005D4BB0);
  }

  return result;
}

uint64_t sub_1001FA828()
{
  v0 = sub_10000C9C0(&qword_1005D4BC0, &unk_1004E53B0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v16 - v2;
  v4 = sub_1004A5194();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A51C4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A51D4();
  sub_1004A51A4();
  v12 = *(v1 + 56);
  (*(v9 + 32))(v3, v11, v8);
  (*(v5 + 32))(&v3[v12], v7, v4);
  v13 = (*(v9 + 88))(v3, v8);
  if (v13 == enum case for NWPath.Status.satisfied(_:))
  {
    (*(v5 + 8))(&v3[v12], v4);
    return 0x6569667369746173;
  }

  else if (v13 == enum case for NWPath.Status.unsatisfied(_:))
  {
    v15 = (*(v5 + 88))(&v3[v12], v4);
    if (v15 == enum case for NWPath.UnsatisfiedReason.notAvailable(_:))
    {
      return 0x6C69617641746F6ELL;
    }

    else if (v15 == enum case for NWPath.UnsatisfiedReason.cellularDenied(_:))
    {
      return 0x72616C756C6C6563;
    }

    else if (v15 == enum case for NWPath.UnsatisfiedReason.wifiDenied(_:))
    {
      return 0x696E654469666977;
    }

    else if (v15 == enum case for NWPath.UnsatisfiedReason.localNetworkDenied(_:))
    {
      return 0xD000000000000012;
    }

    else if (v15 == enum case for NWPath.UnsatisfiedReason.vpnInactive(_:))
    {
      return 0x7463616E496E7076;
    }

    else
    {
      (*(v5 + 8))(&v3[v12], v4);
      return 0x6673697461736E75;
    }
  }

  else if (v13 == enum case for NWPath.Status.requiresConnection(_:))
  {
    (*(v5 + 8))(&v3[v12], v4);
    return 0xD000000000000012;
  }

  else
  {
    sub_100025F40(v3, &qword_1005D4BC0, &unk_1004E53B0);
    return 63;
  }
}

uint64_t sub_1001FAC30()
{
  v0 = sub_1004A4C14();
  v42 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v41 - v4;
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = sub_10000C9C0(&qword_1005D4BB8, &qword_1004E53A8);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = sub_1004A4C74();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A4C84();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100025F40(v14, &qword_1005D4BB8, &qword_1004E53A8);
    sub_1004A4C34();
    v19 = v42;
    (*(v42 + 16))(v2, v5, v0);
    v20 = (*(v19 + 88))(v2, v0);
    v21 = v0;
    if (v20 == enum case for NWInterface.InterfaceType.other(_:))
    {
      v22 = 0x726568746FLL;
      (*(v19 + 8))(v5, v0);
    }

    else if (v20 == enum case for NWInterface.InterfaceType.wifi(_:))
    {
      v22 = 1768319351;
      (*(v19 + 8))(v5, v0);
    }

    else if (v20 == enum case for NWInterface.InterfaceType.cellular(_:))
    {
      v22 = 0x72616C756C6C6563;
      (*(v19 + 8))(v5, v0);
    }

    else if (v20 == enum case for NWInterface.InterfaceType.wiredEthernet(_:))
    {
      v22 = 0x6874456465726977;
      (*(v19 + 8))(v5, v0);
    }

    else
    {
      v30 = enum case for NWInterface.InterfaceType.loopback(_:);
      v31 = *(v19 + 8);
      v32 = v20;
      v33 = v21;
      v31(v5);
      if (v32 == v30)
      {
        return 0x6B636162706F6F6CLL;
      }

      else
      {
        v22 = 0x6E776F6E6B6E75;
        (v31)(v2, v33);
      }
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1004A4C34();
    v23 = v42;
    (*(v42 + 16))(v8, v11, v0);
    v24 = (*(v23 + 88))(v8, v0);
    v25 = v0;
    v26 = v11;
    if (v24 == enum case for NWInterface.InterfaceType.other(_:))
    {
      v27 = v16;
      v28 = 0x726568746FLL;
      (*(v23 + 8))(v26, v25);
      v29 = 0xE500000000000000;
    }

    else if (v24 == enum case for NWInterface.InterfaceType.wifi(_:))
    {
      v27 = v16;
      v28 = 1768319351;
      (*(v23 + 8))(v26, v25);
      v29 = 0xE400000000000000;
    }

    else
    {
      v27 = v16;
      if (v24 == enum case for NWInterface.InterfaceType.cellular(_:))
      {
        v28 = 0x72616C756C6C6563;
        (*(v23 + 8))(v26, v25);
        v29 = 0xE800000000000000;
      }

      else if (v24 == enum case for NWInterface.InterfaceType.wiredEthernet(_:))
      {
        v28 = 0x6874456465726977;
        (*(v23 + 8))(v26, v25);
        v29 = 0xED000074656E7265;
      }

      else
      {
        v34 = v25;
        v35 = v18;
        v36 = enum case for NWInterface.InterfaceType.loopback(_:);
        v37 = *(v23 + 8);
        v38 = v24;
        v37(v26);
        if (v38 == v36)
        {
          v28 = 0x6B636162706F6F6CLL;
          v29 = 0xE800000000000000;
        }

        else
        {
          v28 = 0x6E776F6E6B6E75;
          (v37)(v8, v34);
          v29 = 0xE700000000000000;
        }

        v18 = v35;
      }
    }

    v45._countAndFlagsBits = v28;
    v45._object = v29;
    sub_1004A5994(v45);

    v46._countAndFlagsBits = 45;
    v46._object = 0xE100000000000000;
    sub_1004A5994(v46);
    v47._countAndFlagsBits = sub_1001FB280(v39);
    sub_1004A5994(v47);

    v22 = v43;
    (*(v27 + 8))(v18, v15);
  }

  return v22;
}

uint64_t sub_1001FB280(__n128 a1)
{
  v2 = v1;
  v3 = sub_1004A4C74();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for NWInterface.RadioType.wifi(_:))
  {
    (*(v4 + 96))(v7, v3);
    v3 = sub_1004A4C44();
    v4 = *(v3 - 8);
    v9 = (*(v4 + 88))(v7, v3);
    if (v9 == enum case for NWInterface.RadioType.WiFi.b(_:))
    {
      return 98;
    }

    if (v9 == enum case for NWInterface.RadioType.WiFi.a(_:))
    {
      return 97;
    }

    if (v9 == enum case for NWInterface.RadioType.WiFi.g(_:))
    {
      return 103;
    }

    if (v9 == enum case for NWInterface.RadioType.WiFi.n(_:))
    {
      return 110;
    }

    if (v9 == enum case for NWInterface.RadioType.WiFi.ac(_:))
    {
      return 25441;
    }

    if (v9 == enum case for NWInterface.RadioType.WiFi.ax(_:))
    {
      return 30817;
    }

    goto LABEL_33;
  }

  if (v8 != enum case for NWInterface.RadioType.cell(_:))
  {
LABEL_33:
    v14 = 63;
    goto LABEL_34;
  }

  (*(v4 + 96))(v7, v3);
  v3 = sub_1004A4C64();
  v4 = *(v3 - 8);
  v11 = (*(v4 + 88))(v7, v3);
  if (v11 == enum case for NWInterface.RadioType.Cellular.dualConnectivity5G(_:))
  {
    (*(v4 + 96))(v7, v3);
    v3 = sub_1004A4C54();
    v4 = *(v3 - 8);
    v12 = (*(v4 + 88))(v7, v3);
    if (v12 == enum case for NWInterface.RadioType.Cellular.NewRadio5GVariant.sub6GHz(_:))
    {
      return 0x732E47356C617564;
    }

    if (v12 == enum case for NWInterface.RadioType.Cellular.NewRadio5GVariant.mmWave(_:))
    {
      return 0x6D2E47356C617564;
    }

    v14 = 0x47356C617564;
  }

  else if (v11 == enum case for NWInterface.RadioType.Cellular.standalone5G(_:))
  {
    (*(v4 + 96))(v7, v3);
    v3 = sub_1004A4C54();
    v4 = *(v3 - 8);
    v13 = (*(v4 + 88))(v7, v3);
    if (v13 == enum case for NWInterface.RadioType.Cellular.NewRadio5GVariant.sub6GHz(_:))
    {
      return 0x47366275732E4735;
    }

    if (v13 == enum case for NWInterface.RadioType.Cellular.NewRadio5GVariant.mmWave(_:))
    {
      return 0x7661576D6D2E4735;
    }

    v14 = 18229;
  }

  else
  {
    if (v11 == enum case for NWInterface.RadioType.Cellular.lte(_:))
    {
      return 6648940;
    }

    if (v11 == enum case for NWInterface.RadioType.Cellular.wcdma(_:))
    {
      return 0x616D646377;
    }

    if (v11 == enum case for NWInterface.RadioType.Cellular.gsm(_:))
    {
      return 7172967;
    }

    if (v11 == enum case for NWInterface.RadioType.Cellular.cdma(_:))
    {
      return 1634559075;
    }

    if (v11 == enum case for NWInterface.RadioType.Cellular.evdo(_:))
    {
      return 1868854885;
    }

    v14 = 1819043171;
  }

LABEL_34:
  (*(v4 + 8))(v7, v3);
  return v14;
}

uint64_t sub_1001FB7F8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_10020163C(v11, *(*(v2 + 48) + ((v9 << 8) | (4 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001FB8D8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_100201A38(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001FB9B4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_100201A1C(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void *sub_1001FBAA0()
{
  v1 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v1);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100197BAC(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload <= 10)
    {
      if ((EnumCaseMultiPayload - 6) < 2 || EnumCaseMultiPayload == 3)
      {
        sub_10016D98C(v3);
        return sub_1001CC12C(&off_1005A3A88);
      }

LABEL_25:
      sub_10016D98C(v3);
      return _swiftEmptySetSingleton;
    }

    if (EnumCaseMultiPayload != 11)
    {
      v12 = *v3;

      v13 = sub_1001FBD14(v12);
      sub_1000B37D8(v12);
      return v13;
    }

    v14 = *v3;
    v19 = sub_1001FBD14(v14);
    v15 = 5;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 14)
  {
    if (EnumCaseMultiPayload != 13)
    {
      v7 = *v3;

      v19 = sub_1001FBD14(v7);
      sub_100201A1C(&v18 + 7, 1);
      v8 = v7;
LABEL_24:
      sub_1000B37D8(v8);
      return v19;
    }

    v14 = *v3;
    v19 = sub_1001FBD14(v14);
    sub_100201A1C(&v18 + 7, 5);
    v15 = 1;
LABEL_23:
    sub_100201A1C(&v18 + 7, v15);
    v8 = v14;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 15)
  {
    v16 = sub_10000C9C0(&qword_1005CD558, &unk_1004CF330);
    v17 = sub_1001FBD90(*(v3 + *(v16 + 48)));

    sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
    return v17;
  }

  if (EnumCaseMultiPayload != 16)
  {
    goto LABEL_25;
  }

  v9 = *(v3 + *(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48) + 1);

  if (v9)
  {
    v10 = &off_1005A3AB0;
  }

  else
  {
    v10 = &off_1005A3AD8;
  }

  v11 = sub_1001CC12C(v10);
  sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
  return v11;
}

void *sub_1001FBD14(unint64_t a1)
{
  v7 = _swiftEmptySetSingleton;
  sub_1001FC4C0(a1);
  if (v2)
  {
    sub_100201A1C(&v5, 1);
    sub_100201A1C(&v4, 2);
  }

  if (sub_1001FC608(a1))
  {
    sub_100201A1C(&v6, 3);
  }

  return v7;
}

void *sub_1001FBD90(uint64_t a1)
{
  v1 = _swiftEmptySetSingleton;
  v17 = _swiftEmptySetSingleton;
  v2 = *(a1 + 16);
  if (v2)
  {
    for (i = (a1 + 64); ; i += 10)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *(i + 4);
      v10 = *i | (*(i + 4) << 32);
      v16 = _swiftEmptySetSingleton;
      v11 = v9 >> 5;
      if (v11 <= 2)
      {
        if (v11)
        {
          v12 = v11 == 1;
        }

        else
        {
          v12 = 0;
        }

        v4 = _swiftEmptySetSingleton;
        if (!v12)
        {
          goto LABEL_4;
        }

        sub_100051190(v7, v8);
      }

      else if (v11 > 4)
      {
        v4 = _swiftEmptySetSingleton;
        if (v11 == 5)
        {
          goto LABEL_4;
        }

        if (v7 | v6 | v5 | v8)
        {
          v13 = 0;
        }

        else
        {
          v13 = v10 == 0xC000000000;
        }

        if (!v13 && v10 == 0xC000000000 && v5 == 1 && !(v7 | v6 | v8))
        {
          sub_100201A1C(&v15, 3);
          v4 = v16;
          goto LABEL_4;
        }
      }

      else
      {
      }

      v4 = _swiftEmptySetSingleton;
LABEL_4:
      sub_1001FB9B4(v4);
      sub_1001FC9B4(v5, v6, v7, v8, v10);
      if (!--v2)
      {
        return v17;
      }
    }
  }

  return v1;
}

Swift::Int sub_1001FBFB0()
{
  v1 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v1);
  v3 = (&v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100197BAC(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0x14u:
      sub_10016D98C(v3);
      goto LABEL_3;
    case 3u:
      sub_10016D98C(v3);
      v4 = &off_1005A3B00;
      return sub_1001CC140(v4);
    case 0xAu:

      v9 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v10 = *(v9 + 64);
      sub_100014D40(*(v3 + *(v9 + 80)), *(v3 + *(v9 + 80) + 8));
      sub_100025F40(v3 + v10, &qword_1005D0F20, &qword_1004E9390);
      goto LABEL_3;
    case 0xBu:
      v27 = *v3;
      v28 = &off_1005A3BC8;
      goto LABEL_40;
    case 0xCu:
      v7 = *v3;

      v8 = &off_1005A3C18;
      goto LABEL_15;
    case 0xDu:
      v27 = *v3;
      v28 = &off_1005A3BF0;
LABEL_40:
      v29 = sub_1001CC140(v28);
      v34 = _swiftEmptySetSingleton;
      if (sub_1001FC608(v27))
      {
        sub_100201A38(&v33 + 7, 5);
      }

      sub_1001FC7E4(v27);
      if (v30)
      {
        sub_100201A38(&v33 + 7, 3);
      }

      v31 = sub_1001FB8D8(v34, v29);
      sub_1000B37D8(v27);
      return v31;
    case 0xEu:
      v7 = *v3;

      v8 = &off_1005A3C40;
LABEL_15:
      v11 = sub_1001CC140(v8);
      v34 = _swiftEmptySetSingleton;
      if (sub_1001FC608(v7))
      {
        sub_100201A38(&v33 + 7, 5);
      }

      sub_1001FC7E4(v7);
      if (v12)
      {
        sub_100201A38(&v33 + 7, 3);
      }

      v13 = sub_1001FB8D8(v34, v11);
      sub_1000B37D8(v7);
      return v13;
    case 0xFu:
      v15 = *(v3 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48));
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = (v15 + 64);
        v18 = &off_1005A3B50;
        while (1)
        {
          if (*(v17 + 4) >> 5 >= 6u)
          {
            v19 = *v17 | (*(v17 + 4) << 32);
            v20 = *(v17 - 1);
            v21 = *(v17 - 4);
            v22 = *(v17 - 2) | *(v17 - 3);
            if (v22 | v21 | v20 || v19 != 0xC000000000)
            {
              v24 = v22 | v20;
              v25 = v19 == 0xC000000000 && v21 == 1;
              if (v25 && v24 == 0)
              {
                break;
              }
            }
          }

          v17 += 10;
          if (!--v16)
          {
            v18 = &off_1005A3B78;
            break;
          }
        }
      }

      else
      {
        v18 = &off_1005A3B78;
      }

      v6 = v18;
LABEL_48:
      v32 = sub_1001CC140(v6);
      sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
      return v32;
    case 0x10u:
      v5 = *(v3 + *(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48) + 1);

      if (v5)
      {
        v6 = &off_1005A3C68;
      }

      else
      {
        v6 = &off_1005A3C90;
      }

      goto LABEL_48;
    case 0x11u:
    case 0x12u:
      sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00);

      sub_100025F40(v3, &unk_1005D91B0, &unk_1004CF400);
      v4 = &off_1005A3BA0;
      return sub_1001CC140(v4);
    case 0x13u:
      v4 = &off_1005A3CE0;
      return sub_1001CC140(v4);
    case 0x16u:
    case 0x17u:
    case 0x19u:
    case 0x1Bu:
LABEL_3:
      v4 = &off_1005A3D08;
      return sub_1001CC140(v4);
    case 0x18u:
    case 0x1Du:
      goto LABEL_5;
    case 0x1Au:
    case 0x1Cu:
      v4 = &off_1005A3B28;
      return sub_1001CC140(v4);
    default:
      sub_10016D98C(v3);
LABEL_5:
      v4 = &off_1005A3CB8;
      return sub_1001CC140(v4);
  }
}

void sub_1001FC4C0(unint64_t a1)
{
  while (1)
  {
    v2 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
    if (v2 > 15)
    {
      break;
    }

    if (v2 != 15)
    {
      if (v2 >= 0xE)
      {
        v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1000B3664(v6);
        sub_1001FC4C0(v6);
        sub_1000B37D8(v6);
      }

      return;
    }

    v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    sub_1001FC4C0(v3);
    if (v4)
    {
      return;
    }
  }

  v5 = 1 << v2;
  if ((v5 & 0xF67F0000) == 0 && (v5 & 0x8800000) == 0)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v8 = *(v7 + 16);

    v9 = 0;
    while (1)
    {
      if (v8 == v9)
      {
LABEL_15:

        return;
      }

      if (v9 >= *(v7 + 16))
      {
        break;
      }

      v10 = v9 + 1;
      v11 = *(v7 + 8 * v9 + 32);
      sub_1000B3664(v11);
      sub_1001FC4C0(v11);
      v13 = v12;
      sub_1000B37D8(v11);
      v9 = v10;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001FC608(unint64_t a1)
{
  while (2)
  {
    LOBYTE(v2) = 0;
    switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
    {
      case 5uLL:
      case 0xBuLL:
      case 0x1BuLL:
        goto LABEL_3;
      case 0xEuLL:
        v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1000B3664(v4);
        v5 = sub_1001FC608(v4);
        sub_1000B37D8(v4);
        return v5 & 1;
      case 0xFuLL:
        v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if ((sub_1001FC608(v3) & 1) == 0)
        {
          continue;
        }

LABEL_3:
        LOBYTE(v2) = 1;
        return v2 & 1;
      case 0x18uLL:
        v7 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v8 = *(v7 + 16);

        v9 = 0;
        break;
      case 0x1CuLL:
        LOBYTE(v2) = *(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20) + 16) != 0;
        return v2 & 1;
      case 0x1FuLL:
        v2 = 0x3F8Eu >> ((a1 + 131068) >> 3);
        return v2 & 1;
      default:
        return v2 & 1;
    }

    break;
  }

  while (v8 != v9)
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      JUMPOUT(0x1001FC764);
    }

    v10 = v9 + 1;
    v11 = *(v7 + 8 * v9 + 32);
    sub_1000B3664(v11);
    v12 = sub_1001FC608(v11);
    sub_1000B37D8(v11);
    v9 = v10;
    if (v12)
    {

      LOBYTE(v2) = 1;
      return v2 & 1;
    }
  }

  LOBYTE(v2) = 0;
  return v2 & 1;
}

void sub_1001FC7E4(unint64_t a1)
{
  while (1)
  {
    v2 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
    if (v2 > 15)
    {
      break;
    }

    if (v2 != 15)
    {
      if (v2 >= 0xE)
      {
        v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1000B3664(v6);
        sub_1001FC7E4(v6);
        sub_1000B37D8(v6);
      }

      return;
    }

    v3 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    sub_1001FC7E4(v3);
    if (v4)
    {
      return;
    }
  }

  v5 = 1 << v2;
  if ((v5 & 0xF68F0000) == 0 && (v5 & 0x8700000) == 0)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v8 = *(v7 + 16);

    v9 = 0;
    while (1)
    {
      if (v8 == v9)
      {
LABEL_15:

        return;
      }

      if (v9 >= *(v7 + 16))
      {
        break;
      }

      v10 = v9 + 1;
      v11 = *(v7 + 8 * v9 + 32);
      sub_1000B3664(v11);
      sub_1001FC7E4(v11);
      v13 = v12;
      sub_1000B37D8(v11);
      v9 = v10;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001FC92C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 56);
    do
    {
      v3 = *v2;
      v5 = *(v2 - 2);
      v4 = *(v2 - 1);
      v6 = *(v2 - 3);

      sub_100201734(&v7, v6, v5, v4, v3);

      v2 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_1001FC9B4(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5)
{
  v6 = (a5 >> 37) & 7;
  if (v6 == 4 || v6 == 3)
  {
  }

  else if (v6 == 1)
  {

    sub_1000511A4(a3, a4);
  }
}

unint64_t sub_1001FCA50()
{
  result = qword_1005D4BC8;
  if (!qword_1005D4BC8)
  {
    result = swift_getWitnessTable(asc_1004E5444, &_s18PipeliningBehaviorON, v0, v1);
    atomic_store(result, &qword_1005D4BC8);
  }

  return result;
}

unint64_t sub_1001FCAA8()
{
  result = qword_1005D4BD0;
  if (!qword_1005D4BD0)
  {
    v3 = sub_10000DEFC(&qword_1005D4BD8, qword_1004E5470);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005D4BD0);
  }

  return result;
}

unint64_t sub_1001FCB10()
{
  result = qword_1005D4BE0;
  if (!qword_1005D4BE0)
  {
    result = swift_getWitnessTable(aY_25, &_s21PipeliningRequirementON, v0, v1);
    atomic_store(result, &qword_1005D4BE0);
  }

  return result;
}

uint64_t sub_1001FCB64(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001FCB9C()
{
  v2 = *(v0 + 88);
  if (v2 >> 60 == 15)
  {
    sub_10018D6F4();
    swift_allocError();
    *v3 = xmmword_1004DB2C0;
    *(v3 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 80);
    sub_100014CEC(v1, *(v0 + 88));
    sub_100191720(v1, v2);
    *(v0 + 80) = xmmword_1004D25F0;
  }

  return v1;
}

uint64_t sub_1001FCC58(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v3 = *(a1 + 2);
    v4 = *(a2 + 2);
    if (v3)
    {
      if (v4 && (*(a1 + 1) == *(a2 + 1) && v3 == v4 || (sub_1004A6D34() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1001FCCD8(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        if (a2 == a5 && a3 == a6)
        {
          return 1;
        }

        if (sub_1004A6D34())
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t CommandConnection.RecentErrors.Error.kind.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CommandConnection.RecentErrors.Error(0) + 20);

  return sub_1001FCE5C(a1, v3);
}

uint64_t sub_1001FCE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CommandConnection.RecentErrors.Error.init(time:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002076F0(a2, v8, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_100207758(v8, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    goto LABEL_8;
  }

  v13 = sub_1004A5214();
  v14 = *(v13 - 8);
  if ((*(v14 + 88))(v8, v13) != enum case for NWError.posix(_:))
  {
    (*(v14 + 8))(v8, v13);
    goto LABEL_8;
  }

  (*(v14 + 96))(v8, v13);
  if (*v8 == 94)
  {
    sub_100207758(a2, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  if (*v8 != 89)
  {
LABEL_8:
    *v12 = a1;
    sub_100207668(a2, v12 + *(v9 + 20), type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_9:
    sub_100207668(v12, a3, type metadata accessor for CommandConnection.RecentErrors.Error);
    v15 = 0;
    return (*(v10 + 56))(a3, v15, 1, v9);
  }

  sub_100207758(a2, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  v15 = 1;
  return (*(v10 + 56))(a3, v15, 1, v9);
}

uint64_t static CommandConnection.RecentErrors.Error.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) + 20);

  return _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_1001FD254(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(a1 + *(a3 + 20), a2 + *(a3 + 20));
  }

  else
  {
    return 0;
  }
}

uint64_t CommandConnection.RecentErrors.statistics.getter@<X0>(uint64_t x8_0@<X8>)
{

  return CommandConnection.RecentErrors.Statistics.init(_:)(v3, x8_0);
}

uint64_t CommandConnection.RecentErrors.Statistics.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004A5214();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v40);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v51 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CommandConnection.RecentErrors.Statistics(0);
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  v13 = v5;
  v14 = *(v5 + 56);
  v39 = *(v12 + 48);
  v14(a2 + v39, 1, 1, v4);
  v38 = *(v12 + 52);
  v52 = v4;
  v47 = v14;
  v48 = v5 + 56;
  v14(a2 + v38, 1, 1, v4);
  v15 = a1;
  v16 = *(a1 + 16);
  if (!v16)
  {
  }

  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v17 = *(v9 + 20);
  v18 = *(v51 + 80);
  v37 = v15;
  v19 = v15 + ((v18 + 32) & ~v18);
  v20 = *(v51 + 72);
  v21 = (v13 + 32);
  v50 = v20;
  v51 = v17;
  while (1)
  {
    sub_1002076F0(v19, v11, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1002076F0(&v11[v17], v8, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    sub_100207758(v11, type metadata accessor for CommandConnection.RecentErrors.Error);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v23 = v21;
          v24 = *v8;
          v25 = v8[1];
          v26 = v8[2];
          result = sub_10010E7C0(v43, v42, v41);
          v28 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_27;
          }

          v43 = v24;
          ++v44;
          *(a2 + 8) = v28;
          *(a2 + 32) = v24;
          *(a2 + 40) = v25;
          v41 = v26;
          v42 = v25;
          *(a2 + 48) = v26;
          v21 = v23;
          v20 = v50;
          v17 = v51;
        }

        else
        {
          sub_100207758(v8, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
          *(a2 + 2) = 1;
        }
      }

      else
      {
        sub_100207758(v8, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        *(a2 + 1) = 1;
      }

      goto LABEL_4;
    }

    if (EnumCaseMultiPayload > 4)
    {
      break;
    }

    if (EnumCaseMultiPayload != 3)
    {
      v29 = *v21;
      v30 = v49;
      result = (*v21)(v49, v8, v52);
      v33 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_26;
      }

      ++v45;
      *(a2 + 16) = v33;
      v32 = v39;
      goto LABEL_19;
    }

    sub_100207758(v8, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    *(a2 + 3) = 1;
LABEL_4:
    v19 += v20;
    if (!--v16)
    {
    }
  }

  if (EnumCaseMultiPayload != 5)
  {
    *a2 = 1;
    goto LABEL_4;
  }

  v29 = *v21;
  v30 = v49;
  result = (*v21)(v49, v8, v52);
  v31 = v46 + 1;
  if (!__OFADD__(v46, 1))
  {
    ++v46;
    *(a2 + 24) = v31;
    v32 = v38;
LABEL_19:
    sub_100025F40(a2 + v32, &unk_1005D54F0, &unk_1004E8DA0);
    v34 = v30;
    v35 = v52;
    v29((a2 + v32), v34, v52);
    v36 = a2 + v32;
    v17 = v51;
    v47(v36, 0, 1, v35);
    v20 = v50;
    goto LABEL_4;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t CommandConnection.RecentErrors.Statistics.lastResponseText.getter()
{
  v1 = v0[4];
  sub_10010E780(v1, v0[5], v0[6]);
  return v1;
}

uint64_t CommandConnection.RecentErrors.Statistics.lastResponseText.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10010E7C0(v3[4], v3[5], v3[6]);
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  return result;
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNetworkError.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 48);

  return sub_1002077B8(v4, a1);
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNetworkError.setter(uint64_t a1, __n128 a2)
{
  v4 = v2 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 48);

  return sub_100207828(a1, v4);
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNoViableNetworkError.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 52);

  return sub_1002077B8(v4, a1);
}

uint64_t CommandConnection.RecentErrors.Statistics.lastNoViableNetworkError.setter(uint64_t a1, __n128 a2)
{
  v4 = v2 + *(type metadata accessor for CommandConnection.RecentErrors.Statistics(0) + 52);

  return sub_100207828(a1, v4);
}

uint64_t sub_1001FDA58@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a3;
  v128 = a2;
  v119 = a1;
  v110 = sub_1004A4064();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v117);
  v118 = (&v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000C9C0(&qword_1005D35E0, &qword_1004DD1C8);
  __chkstk_darwin(v5 - 8);
  v123 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v116 = &v106 - v8;
  __chkstk_darwin(v9);
  v113 = &v106 - v10;
  __chkstk_darwin(v11);
  v111 = &v106 - v12;
  __chkstk_darwin(v13);
  v112 = &v106 - v14;
  __chkstk_darwin(v15);
  v122 = &v106 - v16;
  __chkstk_darwin(v17);
  v121 = &v106 - v18;
  __chkstk_darwin(v19);
  v115 = &v106 - v20;
  __chkstk_darwin(v21);
  v114 = &v106 - v22;
  v23 = sub_1004A5214();
  v120 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v106 - v27;
  __chkstk_darwin(v29);
  v31 = &v106 - v30;
  v32 = sub_1004A4E34();
  v124 = *(v32 - 8);
  __chkstk_darwin(v32);
  v34 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v106 - v36;
  v38 = type metadata accessor for ConnectionEvent(0);
  __chkstk_darwin(v38);
  v40 = &v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v125 = *(v41 - 8);
  v126 = v41;
  __chkstk_darwin(v41);
  v43 = &v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002076F0(v128, v40, type metadata accessor for ConnectionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v106 = v31;
    v107 = v28;
    v49 = v121;
    v50 = v122;
    v51 = v37;
    v52 = v123;
    v53 = v124;
    v54 = v32;
    v55 = v120;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v56 = v51;
        v57 = v54;
        (*(v124 + 32))(v51, v40, v54);
        (*(v53 + 16))(v34, v56, v57);
        v58 = (*(v53 + 88))(v34, v57);
        v59 = v23;
        if (v58 == enum case for NWConnection.State.waiting(_:))
        {
          (*(v53 + 96))(v34, v57);
          v60 = v107;
          (*(v55 + 32))(v107, v34, v59);
          v61 = v118;
          (*(v55 + 16))(v118, v60, v59);
          swift_storeEnumTagMultiPayload();
          v62 = v115;
          CommandConnection.RecentErrors.Error.init(time:kind:)(v119, v61, v115);
          sub_100207758(v128, type metadata accessor for ConnectionEvent);
          (*(v55 + 8))(v60, v59);
          (*(v53 + 8))(v56, v57);
          v45 = v125;
          v47 = v126;
          v63 = (*(v125 + 48))(v62, 1, v126);
          v46 = v127;
          if (v63)
          {
            v64 = v62;
LABEL_25:
            sub_100025F40(v64, &qword_1005D35E0, &qword_1004DD1C8);
            v48 = 1;
            return (*(v45 + 56))(v46, v48, 1, v47);
          }

          v90 = v62;
          v65 = v43;
        }

        else
        {
          v79 = v23;
          v47 = v126;
          v46 = v127;
          v80 = v118;
          if (v58 != enum case for NWConnection.State.failed(_:))
          {
            sub_100207758(v128, type metadata accessor for ConnectionEvent);
            v96 = *(v53 + 8);
            v96(v56, v57);
            v96(v34, v57);
            v48 = 1;
            v45 = v125;
            return (*(v45 + 56))(v46, v48, 1, v47);
          }

          (*(v53 + 96))(v34, v57);
          v81 = v106;
          v82 = v34;
          v83 = v79;
          (*(v55 + 32))(v106, v82, v79);
          (*(v55 + 16))(v80, v81, v79);
          swift_storeEnumTagMultiPayload();
          v84 = v114;
          CommandConnection.RecentErrors.Error.init(time:kind:)(v119, v80, v114);
          sub_100207758(v128, type metadata accessor for ConnectionEvent);
          (*(v55 + 8))(v81, v83);
          (*(v124 + 8))(v56, v57);
          v45 = v125;
          if ((*(v125 + 48))(v84, 1, v47))
          {
            v64 = v84;
            goto LABEL_25;
          }

          v90 = v84;
          v65 = v43;
        }

LABEL_58:
        sub_100207668(v90, v65, type metadata accessor for CommandConnection.RecentErrors.Error);
        sub_100207668(v65, v46, type metadata accessor for CommandConnection.RecentErrors.Error);
        v48 = 0;
        return (*(v45 + 56))(v46, v48, 1, v47);
      }

      type metadata accessor for ConnectionEvent.FailureReason(0);
      v72 = swift_getEnumCaseMultiPayload();
      if (v72 > 1)
      {
        v45 = v125;
        if (v72 == 2)
        {
          goto LABEL_37;
        }

        v87 = v43;
        v88 = v118;
        swift_storeEnumTagMultiPayload();
        CommandConnection.RecentErrors.Error.init(time:kind:)(v119, v88, v50);
        sub_100207758(v128, type metadata accessor for ConnectionEvent);
        v47 = v126;
        v89 = (*(v45 + 48))(v50, 1, v126);
        v46 = v127;
        if (v89)
        {
          v64 = v50;
          goto LABEL_25;
        }

        v90 = v50;
        v65 = v87;
        goto LABEL_58;
      }

      v45 = v125;
      v65 = v43;
      if (v72)
      {
        v91 = v25;
        v92 = v25;
        v93 = v23;
        (*(v55 + 32))(v92, v40, v23);
        v94 = v118;
        (*(v55 + 16))(v118, v91, v23);
        swift_storeEnumTagMultiPayload();
        v95 = v112;
        CommandConnection.RecentErrors.Error.init(time:kind:)(v119, v94, v112);
        sub_100207758(v128, type metadata accessor for ConnectionEvent);
        (*(v55 + 8))(v91, v93);
        v47 = v126;
        if ((*(v45 + 48))(v95, 1, v126))
        {
          v75 = v95;
          goto LABEL_41;
        }

        v90 = v95;
      }

      else
      {
        v73 = *(v40 + 2);
        v74 = v118;
        *v118 = *v40;
        *(v74 + 16) = v73;
        swift_storeEnumTagMultiPayload();
        CommandConnection.RecentErrors.Error.init(time:kind:)(v119, v74, v49);
        sub_100207758(v128, type metadata accessor for ConnectionEvent);
        v47 = v126;
        if ((*(v45 + 48))(v49, 1, v126))
        {
          v75 = v49;
LABEL_41:
          sub_100025F40(v75, &qword_1005D35E0, &qword_1004DD1C8);
          v48 = 1;
          v46 = v127;
          return (*(v45 + 56))(v46, v48, 1, v47);
        }

        v90 = v49;
      }

      goto LABEL_57;
    }

    v65 = v43;
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for UntaggedResponse(0);
      v66 = swift_getEnumCaseMultiPayload();
      v45 = v125;
      v67 = v119;
      if ((v66 - 1) >= 2)
      {
        if (v66 != 4)
        {
          sub_100207758(v128, type metadata accessor for ConnectionEvent);
          v71 = type metadata accessor for UntaggedResponse;
          v70 = v40;
          goto LABEL_38;
        }

        v85 = *(v40 + 2);
        v86 = v118;
        *v118 = *v40;
        *(v86 + 16) = v85;
        swift_storeEnumTagMultiPayload();
        CommandConnection.RecentErrors.Error.init(time:kind:)(v67, v86, v52);
        sub_100207758(v128, type metadata accessor for ConnectionEvent);
        v47 = v126;
        if ((*(v45 + 48))(v52, 1, v126))
        {
          v75 = v52;
          goto LABEL_41;
        }

        v90 = v52;
LABEL_57:
        v46 = v127;
        goto LABEL_58;
      }

      v68 = *v40;
      v69 = *(v40 + 2);
      v47 = v126;
      v46 = v127;
    }

    else
    {
      v68 = *v40;
      v69 = *(v40 + 2);
      v76 = v40[24];
      v45 = v125;
      v67 = v119;
      if (!v40[24])
      {
        sub_10001114C(*v40);

        goto LABEL_37;
      }

      v47 = v126;
      v46 = v127;
      if (v76 == 1)
      {
        if ((~v68 & 0xF000000000000007) != 0 && v68 == 0x800000000000006CLL)
        {
          v97 = v65;
          v129 = *(&v68 + 1);
          v130 = v69;
          sub_1000110B0(0x800000000000006CLL);

          v98 = v108;
          sub_1004A4014();
          sub_1001C2190();
          v99 = sub_1004A6444();
          v101 = v100;
          (*(v109 + 8))(v98, v110);

          v102 = HIBYTE(v101) & 0xF;
          if ((v101 & 0x2000000000000000) == 0)
          {
            v102 = v99 & 0xFFFFFFFFFFFFLL;
          }

          if (!v102)
          {

            v99 = 0;
            v101 = 0;
          }

          v103 = v118;
          *v118 = v99;
          *(v103 + 8) = v101;
          swift_storeEnumTagMultiPayload();
          v104 = v111;
          CommandConnection.RecentErrors.Error.init(time:kind:)(v67, v103, v111);
          sub_10001114C(0x800000000000006CLL);

          sub_100207758(v128, type metadata accessor for ConnectionEvent);
          v78 = v104;
          if (!(*(v45 + 48))(v104, 1, v47))
          {
            v90 = v104;
            v65 = v97;
            goto LABEL_58;
          }

          goto LABEL_24;
        }

        v77 = v118;
        *v118 = v68;
        *(v77 + 16) = v69;
        swift_storeEnumTagMultiPayload();
        v78 = v113;
LABEL_23:
        CommandConnection.RecentErrors.Error.init(time:kind:)(v67, v77, v78);
        sub_100207758(v128, type metadata accessor for ConnectionEvent);
        if (!(*(v45 + 48))(v78, 1, v47))
        {
          v90 = v78;
          goto LABEL_58;
        }

LABEL_24:
        v64 = v78;
        goto LABEL_25;
      }
    }

    v77 = v118;
    *v118 = v68;
    *(v77 + 16) = v69;
    swift_storeEnumTagMultiPayload();
    v78 = v116;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v45 = v125;
    sub_100207758(v128, type metadata accessor for ConnectionEvent);
    v70 = v40;
    v71 = type metadata accessor for ConnectionEvent;
LABEL_38:
    sub_100207758(v70, v71);
    v48 = 1;
    v47 = v126;
    v46 = v127;
    return (*(v45 + 56))(v46, v48, 1, v47);
  }

  v45 = v125;
  if (EnumCaseMultiPayload == 6)
  {
LABEL_37:
    v71 = type metadata accessor for ConnectionEvent;
    v70 = v128;
    goto LABEL_38;
  }

  v47 = v126;
  v46 = v127;
  sub_100207758(v128, type metadata accessor for ConnectionEvent);
  v48 = 1;
  return (*(v45 + 56))(v46, v48, 1, v47);
}

uint64_t CommandConnection.RecentErrors.backOffBehavior.getter(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1001FEBF4(a1);
  if (*(result + 16))
  {
    v10 = 0;
    v11 = 1 << *(result + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(result + 56);
    if (v13)
    {
      while (1)
      {
        v14 = v10;
LABEL_9:
        v15 = *(*(result + 48) + 24 * (__clz(__rbit64(v13)) | (v14 << 6)) + 16);
        if (v15 > 3 || v15 == 2)
        {
          break;
        }

        v13 &= v13 - 1;
        v10 = v14;
        if (!v13)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }

LABEL_6:
    while (1)
    {
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v14 >= ((v11 + 63) >> 6))
      {

        return 2;
      }

      v13 = *(result + 56 + 8 * v14);
      ++v10;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    if (sub_1001FEDFC(a1))
    {
      return 1;
    }

    v17 = 0;
    v18 = *(a1 + 16);
    while (v18 != v17)
    {
      sub_1002076F0(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17++, v8, type metadata accessor for CommandConnection.RecentErrors.Error);
      v19 = *(v5 + 20);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v19) = _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(&v8[v19], v4);
      sub_100207758(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      sub_100207758(v8, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v19)
      {
        return 1;
      }
    }

    if (sub_1001FF004(a1))
    {
      return 1;
    }

    v20 = sub_1001FF1B8(a1);
    if (v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = 3;
    }

    if (v20)
    {
      return 1;
    }

    else
    {
      return v21;
    }
  }

  return result;
}

void *sub_1001FEBF4(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v2);
  v4 = (v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptySetSingleton;
  v19 = _swiftEmptySetSingleton;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v6 + 20);
    v13 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      sub_1002076F0(v13, v9, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1002076F0(&v9[v12], v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100207758(v9, type metadata accessor for CommandConnection.RecentErrors.Error);
        v15 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind;
        v16 = v4;
      }

      else
      {
        sub_1001FF578(v18, *v4, v4[1], v4[2]);
        sub_100191E44(v18[0], v18[1], v18[2]);
        v15 = type metadata accessor for CommandConnection.RecentErrors.Error;
        v16 = v9;
      }

      sub_100207758(v16, v15);
      v13 += v14;
      --v11;
    }

    while (v11);
    return v19;
  }

  return v10;
}

uint64_t sub_1001FEDFC(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v2);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(v6 + 20);
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    do
    {
      sub_1002076F0(v12, v9, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_100207668(&v9[v11], v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = *v4;
        v15 = ~*v4 & 0xF000000000000007;

        if (v15)
        {
          v16 = __ROR8__(v14 + 0x7FFFFFFFFFFFFF94, 3);
          v17 = ((v14 >> 59) & 0x1E | (v14 >> 2) & 1) != 0x11 || v16 >= 0xF;
          if (!v17 && ((0x6E27u >> v16) & 1) != 0)
          {
            return 1;
          }

          sub_10001114C(v14);
        }
      }

      else
      {
        sub_100207758(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      v12 += v13;
      --v10;
    }

    while (v10);
  }

  return 0;
}

BOOL sub_1001FF004(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);
  v12 = v9 - 1;
  do
  {
    v13 = v12;
    sub_1002076F0(v10, v8, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_100207668(&v8[*(v5 + 20)], v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100207758(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    result = EnumCaseMultiPayload == 2;
    if (EnumCaseMultiPayload == 2)
    {
      break;
    }

    v12 = v13 - 1;
    v10 += v11;
  }

  while (v13);
  return result;
}

BOOL sub_1001FF1B8(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);
  v12 = v9 - 1;
  do
  {
    v13 = v12;
    sub_1002076F0(v10, v8, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_100207668(&v8[*(v5 + 20)], v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100207758(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    result = EnumCaseMultiPayload == 3;
    if (EnumCaseMultiPayload == 3)
    {
      break;
    }

    v12 = v13 - 1;
    v10 += v11;
  }

  while (v13);
  return result;
}

uint64_t CommandConnection.RecentErrors.containsAuthenticationFailure.getter(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    do
    {
      sub_1002076F0(v10, v8, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1002076F0(&v8[*(v5 + 20)], v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) < 5)
      {
        sub_100207758(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      else if (EnumCaseMultiPayload != 6)
      {
        sub_100207758(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        sub_100207758(v8, type metadata accessor for CommandConnection.RecentErrors.Error);
        return 1;
      }

      sub_100207758(v8, type metadata accessor for CommandConnection.RecentErrors.Error);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t sub_1001FF578(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = *v4;
  sub_1004A6E94();
  v22 = a1;
  v21 = v4;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      sub_1004A6EB4(3uLL);
      goto LABEL_14;
    }

    if (a4 == 3)
    {
      sub_1004A6EB4(4uLL);
      goto LABEL_14;
    }

LABEL_8:
    sub_1004A6EB4(0);
    if ((~a2 & 0xF000000000000007) != 0)
    {
      sub_1004A6EC4(1u);
      ResponseTextCode.hash(into:)(v24, a2);
    }

    else
    {
      sub_1004A6EC4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    goto LABEL_14;
  }

  if (!a4)
  {
    sub_1004A6EB4(1uLL);
    goto LABEL_14;
  }

  if (a4 != 1)
  {
    goto LABEL_8;
  }

  sub_1004A6EB4(2uLL);
LABEL_14:
  v9 = sub_1004A6F14();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_32:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = *v21;
    sub_1001978DC(a2, a3, a4);
    sub_100202F4C(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *v21 = v24[0];
    *v22 = a2;
    v22[1] = a3;
    v22[2] = a4;
    return 1;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = (*(v8 + 48) + 24 * v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    if (v16 > 1)
    {
      break;
    }

    if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_27;
      }

      if (a4 == 1)
      {
        goto LABEL_33;
      }
    }

    else if (!a4)
    {
      goto LABEL_33;
    }

LABEL_17:
    v11 = (v11 + 1) & v12;
    if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (v16 == 2)
  {
    if (a4 == 2)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  if (v16 == 3)
  {
    if (a4 == 3)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

LABEL_27:
  if (a4 < 4)
  {
    goto LABEL_17;
  }

  sub_1000110B0(*v13);

  v17 = static ResponseText.__derived_struct_equals(_:_:)(v14, v15);
  sub_100191E44(v14, v15, v16);
  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_100191E44(a2, a3, a4);
  v20 = (*(v8 + 48) + 24 * v11);
  v14 = *v20;
  v15 = v20[1];
  v16 = v20[2];
LABEL_33:
  *v22 = v14;
  v22[1] = v15;
  v22[2] = v16;
  sub_1001978DC(v14, v15, v16);
  return 0;
}

uint64_t sub_1001FF838(__int128 *a1, __int128 *a2)
{
  v3 = a2;
  v4 = a2[3];
  v267 = a2[2];
  v268 = v4;
  v269 = a2[4];
  v5 = a2[1];
  v265 = *a2;
  v266 = v5;
  v243 = *v2;
  sub_1004A6E94();
  v6 = *(v3 + 1);
  v8 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = *(v3 + 7);
  if ((v9 & 0x1000000000000000) != 0)
  {
    v10 = *(v3 + 6);
    v257 = *v3;
    v258 = v6;
    v259 = v8;
    v260 = v7;
    v261 = v3[2];
    v262 = v10;
    v263 = v9 & 0xEFFFFFFFFFFFFFFFLL;
    v264 = v3[4];
    sub_1004A6EB4(1uLL);
    sub_1001EEF30(&v252);
  }

  else
  {
    sub_1004A6EB4(0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  v11 = sub_1004A6F14();
  v12 = v243;
  v13 = v243 + 56;
  v14 = -1 << *(v243 + 32);
  v15 = v11 & ~v14;
  if (((*(v243 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_410:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v247 = *v241;
    sub_10019782C(v3, &v252);
    sub_10020320C(v3, v15, isUniquelyReferenced_nonNull_native);
    *v241 = v247;
    v206 = v3[3];
    a1[2] = v3[2];
    a1[3] = v206;
    a1[4] = v3[4];
    v207 = v3[1];
    result = 1;
    *a1 = *v3;
    a1[1] = v207;
    return result;
  }

  v16 = ~v14;
  v244 = ~v14;
  while (1)
  {
    v17 = (*(v12 + 48) + 80 * v15);
    v252 = *v17;
    v19 = v17[3];
    v18 = v17[4];
    v20 = v17[2];
    v253 = v17[1];
    v254 = v20;
    v255 = v19;
    v256 = v18;
    v21 = *(&v252 + 1);
    v22 = *(&v253 + 1);
    v23 = v253;
    v24 = *(&v19 + 1);
    if ((*(&v19 + 1) & 0x1000000000000000) == 0)
    {
      if ((*(v3 + 63) & 0x10) != 0)
      {
        goto LABEL_10;
      }

      v25 = *(v3 + 2);
      v26 = *(v3 + 3);
      if (v252 != *v3 && (sub_1004A6D34() & 1) == 0)
      {
        goto LABEL_9;
      }

      if (v23 == v25 && v22 == v26)
      {
        goto LABEL_413;
      }

      v27 = sub_1004A6D34();
      v16 = v244;
      v13 = v243 + 56;
      if (v27)
      {
        goto LABEL_413;
      }

      goto LABEL_10;
    }

    v28 = *(v3 + 7);
    if ((v28 & 0x1000000000000000) == 0)
    {
      goto LABEL_10;
    }

    v29 = *(&v256 + 1);
    v31 = *v3;
    v30 = *(v3 + 1);
    v32 = *(v3 + 2);
    v33 = *(v3 + 3);
    v34 = *(v3 + 9);
    v35 = (*(&v256 + 1) >> 59) & 6 | ((*(&v255 + 1) & 0x2000000000000000) != 0);
    if (v35 <= 2)
    {
      break;
    }

    if (v35 > 4)
    {
      v38 = (v28 >> 61) & 1;
      v39 = v34 >> 59;
      if (v35 == 5)
      {
        if ((v39 & 6 | v38) != 5)
        {
          goto LABEL_10;
        }
      }

      else if ((v39 & 6 | v38) != 6)
      {
        goto LABEL_10;
      }

LABEL_59:
      if (v252 == __PAIR128__(v30, v31) || (v47 = *(v3 + 2), v48 = *(v3 + 3), v49 = sub_1004A6D34(), v32 = v47, v33 = v48, v16 = v244, v13 = v243 + 56, (v49 & 1) != 0))
      {
        if (v23 == v32 && v22 == v33)
        {
          goto LABEL_413;
        }

        v50 = sub_1004A6D34();
        v16 = v244;
        v13 = v243 + 56;
        if (v50)
        {
          goto LABEL_413;
        }
      }

      goto LABEL_10;
    }

    if (v35 == 3)
    {
      if (((v34 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 3)
      {
        goto LABEL_10;
      }

      goto LABEL_59;
    }

    if (((v34 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 4)
    {
      goto LABEL_10;
    }

    v44 = *(&v252 + 1) >> 62;
    v45 = v30 >> 62;
    if (*(&v252 + 1) >> 62 == 3)
    {
      v46 = 0;
      if (v252 == __PAIR128__(0xC000000000000000, 0) && v30 >> 62 == 3)
      {
        v46 = 0;
        if (!v31 && v30 == 0xC000000000000000)
        {
          goto LABEL_163;
        }
      }

      goto LABEL_151;
    }

    if (v44 > 1)
    {
      if (v44 != 2)
      {
        v46 = 0;
        if (v45 > 1)
        {
LABEL_74:
          if (v45 == 2)
          {
            v52 = *(v31 + 16);
            v51 = *(v31 + 24);
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            if (v53)
            {
              goto LABEL_418;
            }

LABEL_154:
            v12 = v243;
            if (v46 != v54)
            {
              goto LABEL_10;
            }

LABEL_158:
            if (v46 >= 1)
            {
              v233 = *(v3 + 3);
              if (v44 > 1)
              {
                v230 = *(v3 + 2);
                if (v44 == 2)
                {
                  v99 = *(v252 + 16);
                  v100 = *(v252 + 24);
                  v101 = *(v3 + 1);
                  v102 = *v3;
                  sub_100014CEC(v31, v30);
                  sub_100014CEC(v102, v101);
                  sub_10019782C(&v252, &v247);
                  sub_100014CEC(v102, v101);
                  v103 = sub_10003A0DC(v99, v100, v21 & 0x3FFFFFFFFFFFFFFFLL, v102, v101);
                  sub_100014D40(v102, v101);
                  sub_100014D40(v102, v101);
                  v104 = v102;
                  v105 = v101;
                  goto LABEL_276;
                }

                *&v246[6] = 0;
                *v246 = 0;
                v150 = v30;
                v151 = v31;
                sub_100014CEC(v31, v30);
                sub_10019782C(&v252, &v247);
                sub_100014CEC(v151, v150);
                sub_100066884(v246, v151, v150, &v247);
                sub_100014D40(v151, v150);
                sub_100014D40(v151, v150);
                v89 = v230;
                v88 = v233;
                if ((v247 & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

              else
              {
                if (!v44)
                {
                  v85 = *(v3 + 2);
                  *v246 = v252;
                  *&v246[8] = DWORD2(v252);
                  *&v246[12] = WORD6(v252);
                  v86 = v30;
                  v87 = v31;
                  sub_100014CEC(v31, v30);
                  sub_10019782C(&v252, &v247);
                  sub_100014CEC(v87, v86);
                  sub_100066884(v246, v87, v86, &v247);
                  sub_100014D40(v87, v86);
                  sub_100014D40(v87, v86);
                  v88 = v233;
                  v89 = v85;
                  if ((v247 & 1) == 0)
                  {
                    goto LABEL_7;
                  }

                  goto LABEL_164;
                }

                v230 = *(v3 + 2);
                v146 = v252;
                v147 = v252 >> 32;
                if (v252 >> 32 < v252)
                {
                  goto LABEL_442;
                }

                v148 = *(v3 + 1);
                v149 = *v3;
                sub_100014CEC(v31, v30);
                sub_100014CEC(v149, v148);
                sub_10019782C(&v252, &v247);
                sub_100014CEC(v149, v148);
                v103 = sub_10003A0DC(v146, v147, v21 & 0x3FFFFFFFFFFFFFFFLL, v149, v148);
                sub_100014D40(v149, v148);
                sub_100014D40(v149, v148);
                v104 = v149;
                v105 = v148;
LABEL_276:
                sub_100014D40(v104, v105);
                v89 = v230;
                v88 = v233;
                if ((v103 & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

LABEL_164:
              v91 = v22 >> 62;
              v92 = v88 >> 62;
              if (v22 >> 62 == 3)
              {
                v93 = 0;
                if (!v23 && v22 == 0xC000000000000000 && v88 >> 62 == 3)
                {
                  v93 = 0;
                  if (!v89 && v88 == 0xC000000000000000)
                  {
                    goto LABEL_411;
                  }
                }
              }

              else if (v91 == 2)
              {
                v129 = *(v23 + 16);
                v128 = *(v23 + 24);
                v53 = __OFSUB__(v128, v129);
                v93 = v128 - v129;
                if (v53)
                {
                  goto LABEL_437;
                }
              }

              else if (v91 == 1)
              {
                LODWORD(v93) = HIDWORD(v23) - v23;
                if (__OFSUB__(HIDWORD(v23), v23))
                {
                  goto LABEL_438;
                }

                v93 = v93;
              }

              else
              {
                v93 = BYTE6(v22);
              }

              if (v92 > 1)
              {
                if (v92 != 2)
                {
                  goto LABEL_6;
                }

                v132 = *(v89 + 16);
                v131 = *(v89 + 24);
                v53 = __OFSUB__(v131, v132);
                v130 = v131 - v132;
                if (v53)
                {
                  goto LABEL_429;
                }
              }

              else if (v92)
              {
                LODWORD(v130) = HIDWORD(v89) - v89;
                if (__OFSUB__(HIDWORD(v89), v89))
                {
                  goto LABEL_428;
                }

                v130 = v130;
              }

              else
              {
                v130 = BYTE6(v88);
              }

              if (v93 != v130)
              {
                goto LABEL_7;
              }

              if (v93 < 1)
              {
                goto LABEL_411;
              }

              v133 = v89;
              sub_100014CEC(v89, v88);
              v134 = v23;
              v135 = v22;
              v136 = v133;
              v137 = v88;
              goto LABEL_246;
            }
          }

          else if (v46)
          {
            goto LABEL_118;
          }

LABEL_163:
          v249 = v254;
          *&v250 = v255;
          v251 = v256;
          v247 = v252;
          v248 = v253;
          *(&v250 + 1) = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
          v88 = v33;
          v90 = v32;
          sub_1001915E8(&v247, v246);
          v89 = v90;
          goto LABEL_164;
        }

        goto LABEL_152;
      }

      v60 = *(v252 + 16);
      v59 = *(v252 + 24);
      v53 = __OFSUB__(v59, v60);
      v46 = v59 - v60;
      if (v53)
      {
        goto LABEL_424;
      }

      goto LABEL_151;
    }

    if (v44)
    {
      LODWORD(v46) = DWORD1(v252) - v252;
      if (__OFSUB__(DWORD1(v252), v252))
      {
        goto LABEL_426;
      }

      v46 = v46;
LABEL_151:
      if (v45 > 1)
      {
        goto LABEL_74;
      }

      goto LABEL_152;
    }

    v46 = BYTE14(v252);
    if (v45 > 1)
    {
      goto LABEL_74;
    }

LABEL_152:
    if (!v45)
    {
      v54 = BYTE6(v30);
      goto LABEL_154;
    }

    v12 = v243;
    if (__OFSUB__(HIDWORD(v31), v31))
    {
      goto LABEL_416;
    }

    if (v46 == HIDWORD(v31) - v31)
    {
      goto LABEL_158;
    }

LABEL_10:
    v15 = (v15 + 1) & v16;
    if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_410;
    }
  }

  if (v35)
  {
    if (v35 == 1)
    {
      if (((v34 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 1)
      {
        goto LABEL_10;
      }

      v235 = v255;
      v236 = *(v3 + 4);
      v237 = v254;
      v238 = *(v3 + 5);
      v239 = *(&v254 + 1);
      v36 = *(&v252 + 1) >> 62;
      if (*(&v252 + 1) >> 62 == 3)
      {
        v37 = 0;
        if (v252 == __PAIR128__(0xC000000000000000, 0) && v30 >> 62 == 3)
        {
          v37 = 0;
          if (!v31 && v30 == 0xC000000000000000)
          {
            goto LABEL_119;
          }
        }
      }

      else if (v36 > 1)
      {
        if (v36 == 2)
        {
          v56 = *(v252 + 16);
          v55 = *(v252 + 24);
          v53 = __OFSUB__(v55, v56);
          v37 = v55 - v56;
          if (v53)
          {
            goto LABEL_422;
          }
        }

        else
        {
          v37 = 0;
        }
      }

      else if (v36)
      {
        LODWORD(v37) = DWORD1(v252) - v252;
        if (__OFSUB__(DWORD1(v252), v252))
        {
          goto LABEL_423;
        }

        v37 = v37;
      }

      else
      {
        v37 = BYTE14(v252);
      }

      v63 = v30 >> 62;
      if ((v30 >> 62) > 1)
      {
        if (v63 == 2)
        {
          v66 = *(v31 + 16);
          v65 = *(v31 + 24);
          v53 = __OFSUB__(v65, v66);
          v64 = v65 - v66;
          if (v53)
          {
            goto LABEL_419;
          }

LABEL_109:
          v12 = v243;
          if (v37 != v64)
          {
            goto LABEL_10;
          }

LABEL_113:
          if (v37 >= 1)
          {
            v229 = *(v3 + 2);
            v232 = *(v3 + 3);
            v225 = *(v3 + 6);
            v226 = *(v3 + 1);
            v220 = *v3;
            v222 = v256;
            v223 = *(v3 + 9);
            v224 = *(v3 + 8);
            if (v36 <= 1)
            {
              if (!v36)
              {
                *v246 = v252;
                *&v246[8] = DWORD2(v252);
                *&v246[12] = WORD6(v252);
                v67 = v30;
                v68 = v31;
                sub_100014CEC(v31, v30);
                sub_10019782C(&v252, &v247);
                sub_100014CEC(v68, v67);
                goto LABEL_272;
              }

              v216 = v252;
              v219 = v252 >> 32;
              if (v252 >> 32 < v252)
              {
                goto LABEL_441;
              }

              v145 = *v3;
              sub_100014CEC(v31, v30);
              sub_100014CEC(v145, v226);
              sub_10019782C(&v252, &v247);
              sub_100014CEC(v145, v226);
              v218 = sub_10003A0DC(v216, v219, v21 & 0x3FFFFFFFFFFFFFFFLL, v220, v226);
              sub_100014D40(v220, v226);
              sub_100014D40(v220, v226);
              v97 = v220;
              v98 = v226;
LABEL_269:
              sub_100014D40(v97, v98);
              v71 = v229;
              v72 = v232;
              if (v218)
              {
                goto LABEL_120;
              }

LABEL_7:
              sub_100193BF0(&v252);
LABEL_8:
              v12 = v243;
LABEL_9:
              v16 = v244;
              v13 = v243 + 56;
              goto LABEL_10;
            }

            if (v36 == 2)
            {
              v215 = *(v252 + 24);
              v217 = *(v252 + 16);
              v96 = *v3;
              sub_100014CEC(v31, v30);
              sub_100014CEC(v96, v226);
              sub_10019782C(&v252, &v247);
              sub_100014CEC(v96, v226);
              v218 = sub_10003A0DC(v217, v215, v21 & 0x3FFFFFFFFFFFFFFFLL, v220, v226);
              sub_100014D40(v220, v226);
              sub_100014D40(v220, v226);
              v97 = v220;
              v98 = v226;
              goto LABEL_269;
            }

            *&v246[6] = 0;
            *v246 = 0;
            v67 = v30;
            v68 = v31;
            sub_100014CEC(v31, v30);
            sub_10019782C(&v252, &v247);
            sub_100014CEC(v68, v67);
LABEL_272:
            sub_100066884(v246, v68, v67, &v247);
            sub_100014D40(v68, v226);
            sub_100014D40(v220, v226);
            v71 = v229;
            v72 = v232;
            if ((v247 & 1) == 0)
            {
              goto LABEL_7;
            }

LABEL_120:
            v73 = v22 >> 62;
            if (v22 >> 62 == 3)
            {
              v74 = 0;
              if (v23)
              {
                goto LABEL_251;
              }

              if (v22 != 0xC000000000000000)
              {
                goto LABEL_251;
              }

              if (v72 >> 62 != 3)
              {
                goto LABEL_251;
              }

              v74 = 0;
              if (v71 || v72 != 0xC000000000000000)
              {
                goto LABEL_251;
              }

LABEL_325:
              v174 = v239 >> 62;
              v175 = v238 >> 62;
              if (v239 >> 62 == 3)
              {
                v176 = 0;
                v177 = v237;
                if (v237)
                {
                  goto LABEL_340;
                }

                if (v239 != 0xC000000000000000)
                {
                  goto LABEL_340;
                }

                if (v238 >> 62 != 3)
                {
                  goto LABEL_340;
                }

                v176 = 0;
                if (v236 || v238 != 0xC000000000000000)
                {
                  goto LABEL_340;
                }
              }

              else
              {
                v177 = v237;
                if (v174 == 2)
                {
                  v179 = *(v237 + 16);
                  v178 = *(v237 + 24);
                  v53 = __OFSUB__(v178, v179);
                  v176 = v178 - v179;
                  if (v53)
                  {
                    goto LABEL_450;
                  }
                }

                else if (v174 == 1)
                {
                  LODWORD(v176) = HIDWORD(v237) - v237;
                  if (__OFSUB__(HIDWORD(v237), v237))
                  {
                    goto LABEL_449;
                  }

                  v176 = v176;
                }

                else
                {
                  v176 = BYTE6(v239);
                }

LABEL_340:
                if (v175 > 1)
                {
                  if (v175 != 2)
                  {
                    if (v176)
                    {
                      goto LABEL_7;
                    }

                    goto LABEL_354;
                  }

                  v182 = *(v236 + 16);
                  v181 = *(v236 + 24);
                  v53 = __OFSUB__(v181, v182);
                  v180 = v181 - v182;
                  if (v53)
                  {
                    goto LABEL_443;
                  }
                }

                else if (v175)
                {
                  LODWORD(v180) = HIDWORD(v236) - v236;
                  if (__OFSUB__(HIDWORD(v236), v236))
                  {
                    goto LABEL_444;
                  }

                  v180 = v180;
                }

                else
                {
                  v180 = BYTE6(v238);
                }

                if (v176 != v180)
                {
                  goto LABEL_7;
                }

                if (v176 >= 1)
                {
                  sub_100014CEC(v236, v238);
                  if ((sub_100039F4C(v177, v239, v236, v238) & 1) == 0)
                  {
                    goto LABEL_7;
                  }
                }
              }

LABEL_354:
              v183 = v24 & 0xCFFFFFFFFFFFFFFFLL;
              v184 = v28 & 0xCFFFFFFFFFFFFFFFLL;
              v185 = v24 >> 62;
              v186 = v28 >> 62;
              if (v24 >> 62 == 3)
              {
                v187 = 0;
                v188 = v235;
                if (v235)
                {
                  goto LABEL_369;
                }

                if (v183 != 0xC000000000000000)
                {
                  goto LABEL_369;
                }

                if (v28 >> 62 != 3)
                {
                  goto LABEL_369;
                }

                v187 = 0;
                if (v225 || v184 != 0xC000000000000000)
                {
                  goto LABEL_369;
                }
              }

              else
              {
                if (v185 == 2)
                {
                  v188 = v235;
                  v190 = *(v235 + 16);
                  v189 = *(v235 + 24);
                  v53 = __OFSUB__(v189, v190);
                  v187 = v189 - v190;
                  if (v53)
                  {
                    goto LABEL_458;
                  }
                }

                else if (v185 == 1)
                {
                  v188 = v235;
                  LODWORD(v187) = HIDWORD(v235) - v235;
                  if (__OFSUB__(HIDWORD(v235), v235))
                  {
                    goto LABEL_457;
                  }

                  v187 = v187;
                }

                else
                {
                  v187 = BYTE6(v24);
                  v188 = v235;
                }

LABEL_369:
                if (v186 > 1)
                {
                  if (v186 != 2)
                  {
                    if (v187)
                    {
                      goto LABEL_7;
                    }

                    goto LABEL_383;
                  }

                  v193 = *(v225 + 16);
                  v192 = *(v225 + 24);
                  v53 = __OFSUB__(v192, v193);
                  v191 = v192 - v193;
                  if (v53)
                  {
                    goto LABEL_455;
                  }
                }

                else if (v186)
                {
                  LODWORD(v191) = HIDWORD(v225) - v225;
                  if (__OFSUB__(HIDWORD(v225), v225))
                  {
                    goto LABEL_456;
                  }

                  v191 = v191;
                }

                else
                {
                  v191 = BYTE6(v28);
                }

                if (v187 != v191)
                {
                  goto LABEL_7;
                }

                if (v187 >= 1)
                {
                  sub_100014CEC(v225, v28 & 0xCFFFFFFFFFFFFFFFLL);
                  if ((sub_100039F4C(v188, v183, v225, v184) & 1) == 0)
                  {
                    goto LABEL_7;
                  }
                }
              }

LABEL_383:
              v194 = v29 & 0xCFFFFFFFFFFFFFFFLL;
              v195 = v29 >> 62;
              v196 = v223 >> 62;
              if (v29 >> 62 == 3)
              {
                v93 = 0;
                v197 = v222;
                if (!v222 && v194 == 0xC000000000000000 && v223 >> 62 == 3)
                {
                  v93 = 0;
                  if (!v224 && (v223 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000)
                  {
                    goto LABEL_411;
                  }
                }
              }

              else if (v195 == 2)
              {
                v197 = v222;
                v199 = *(v222 + 16);
                v198 = *(v222 + 24);
                v53 = __OFSUB__(v198, v199);
                v93 = v198 - v199;
                if (v53)
                {
                  goto LABEL_462;
                }
              }

              else if (v195 == 1)
              {
                LODWORD(v93) = HIDWORD(v222) - v222;
                if (__OFSUB__(HIDWORD(v222), v222))
                {
                  __break(1u);
LABEL_462:
                  __break(1u);
                  sub_100193BF0(v3);
                  sub_100193BF0(v3);
                  v249 = v267;
                  *&v250 = v268;
                  v251 = v269;
                  v247 = v265;
                  v248 = v266;
                  *(&v250 + 1) = *(&v268 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                  sub_1001B4100(&v247);

                  __break(1u);
                  return result;
                }

                v197 = v222;
                v93 = v93;
              }

              else
              {
                v197 = v222;
                v93 = BYTE6(v29);
              }

              if (v196 <= 1)
              {
                v200 = v224;
                if (v196)
                {
                  LODWORD(v201) = HIDWORD(v224) - v224;
                  if (__OFSUB__(HIDWORD(v224), v224))
                  {
                    goto LABEL_460;
                  }

                  v201 = v201;
                }

                else
                {
                  v201 = BYTE6(v223);
                }

LABEL_407:
                if (v93 != v201)
                {
                  goto LABEL_7;
                }

                if (v93 < 1)
                {
                  goto LABEL_411;
                }

                v204 = v200;
                sub_100014CEC(v200, v223 & 0xCFFFFFFFFFFFFFFFLL);
                v134 = v197;
                v135 = v194;
                v136 = v204;
                v137 = v223 & 0xCFFFFFFFFFFFFFFFLL;
LABEL_246:
                v138 = sub_100039F4C(v134, v135, v136, v137);
                sub_100193BF0(&v252);
                if (v138)
                {
                  goto LABEL_412;
                }

                goto LABEL_8;
              }

              v200 = v224;
              if (v196 == 2)
              {
                v203 = *(v224 + 16);
                v202 = *(v224 + 24);
                v53 = __OFSUB__(v202, v203);
                v201 = v202 - v203;
                if (v53)
                {
                  goto LABEL_459;
                }

                goto LABEL_407;
              }

LABEL_6:
              if (!v93)
              {
                goto LABEL_411;
              }

              goto LABEL_7;
            }

            if (v73 > 1)
            {
              if (v73 == 2)
              {
                v95 = *(v23 + 16);
                v94 = *(v23 + 24);
                v53 = __OFSUB__(v94, v95);
                v74 = v94 - v95;
                if (v53)
                {
                  goto LABEL_439;
                }
              }

              else
              {
                v74 = 0;
              }
            }

            else if (v73)
            {
              LODWORD(v74) = HIDWORD(v23) - v23;
              if (__OFSUB__(HIDWORD(v23), v23))
              {
                goto LABEL_440;
              }

              v74 = v74;
            }

            else
            {
              v74 = BYTE6(v22);
            }

LABEL_251:
            v139 = v72 >> 62;
            if ((v72 >> 62) > 1)
            {
              if (v139 != 2)
              {
                if (v74)
                {
                  goto LABEL_7;
                }

                goto LABEL_325;
              }

              v142 = *(v71 + 16);
              v141 = *(v71 + 24);
              v53 = __OFSUB__(v141, v142);
              v140 = v141 - v142;
              if (v53)
              {
                goto LABEL_431;
              }
            }

            else if (v139)
            {
              LODWORD(v140) = HIDWORD(v71) - v71;
              if (__OFSUB__(HIDWORD(v71), v71))
              {
                goto LABEL_430;
              }

              v140 = v140;
            }

            else
            {
              v140 = BYTE6(v72);
            }

            if (v74 != v140)
            {
              goto LABEL_7;
            }

            if (v74 < 1)
            {
              goto LABEL_325;
            }

            if (v73 > 1)
            {
              if (v73 != 2)
              {
                *(&v247 + 6) = 0;
                *&v247 = 0;
                v143 = v72;
                v144 = v71;
                sub_100014CEC(v71, v72);
                sub_100014CEC(v144, v143);
LABEL_324:
                sub_100066884(&v247, v144, v143, v246);
                sub_100014D40(v144, v143);
                sub_100014D40(v144, v143);
                if ((v246[0] & 1) == 0)
                {
                  goto LABEL_7;
                }

                goto LABEL_325;
              }

              v152 = *(v23 + 24);
              v228 = *(v23 + 16);
            }

            else
            {
              if (!v73)
              {
                *&v247 = v23;
                WORD4(v247) = v22;
                BYTE10(v247) = BYTE2(v22);
                BYTE11(v247) = BYTE3(v22);
                BYTE12(v247) = BYTE4(v22);
                BYTE13(v247) = BYTE5(v22);
                v143 = v72;
                v144 = v71;
                sub_100014CEC(v71, v72);
                sub_100014CEC(v144, v143);
                goto LABEL_324;
              }

              v152 = v23 >> 32;
              v228 = v23;
              if (v23 >> 32 < v23)
              {
                goto LABEL_454;
              }
            }

            v171 = v72;
            v172 = v71;
            sub_100014CEC(v71, v72);
            sub_100014CEC(v172, v171);
            sub_100014CEC(v172, v171);
            v173 = sub_10003A0DC(v228, v152, v22 & 0x3FFFFFFFFFFFFFFFLL, v172, v171);
            sub_100014D40(v172, v171);
            sub_100014D40(v172, v171);
            sub_100014D40(v172, v171);
            if ((v173 & 1) == 0)
            {
              goto LABEL_7;
            }

            goto LABEL_325;
          }
        }

        else if (v37)
        {
LABEL_118:
          v12 = v243;
          goto LABEL_10;
        }

LABEL_119:
        v224 = *(v3 + 8);
        v225 = *(v3 + 6);
        v222 = v256;
        v223 = *(v3 + 9);
        v249 = v254;
        *&v250 = v255;
        v251 = v256;
        v247 = v252;
        v248 = v253;
        *(&v250 + 1) = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        v69 = v33;
        v70 = v32;
        sub_1001915E8(&v247, v246);
        v71 = v70;
        v72 = v69;
        goto LABEL_120;
      }

      if (!v63)
      {
        v64 = BYTE6(v30);
        goto LABEL_109;
      }

      v12 = v243;
      if (__OFSUB__(HIDWORD(v31), v31))
      {
        goto LABEL_417;
      }

      if (v37 == HIDWORD(v31) - v31)
      {
        goto LABEL_113;
      }
    }

    else
    {
      if (((v34 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0)) != 2)
      {
        goto LABEL_10;
      }

      v42 = *(&v252 + 1) >> 62;
      if (*(&v252 + 1) >> 62 == 3)
      {
        v43 = 0;
        if (v252 == __PAIR128__(0xC000000000000000, 0) && v30 >> 62 == 3)
        {
          v43 = 0;
          if (!v31 && v30 == 0xC000000000000000)
          {
            goto LABEL_413;
          }
        }
      }

      else if (v42 > 1)
      {
        if (v42 == 2)
        {
          v58 = *(v252 + 16);
          v57 = *(v252 + 24);
          v53 = __OFSUB__(v57, v58);
          v43 = v57 - v58;
          if (v53)
          {
            goto LABEL_425;
          }
        }

        else
        {
          v43 = 0;
        }
      }

      else if (v42)
      {
        LODWORD(v43) = DWORD1(v252) - v252;
        if (__OFSUB__(DWORD1(v252), v252))
        {
          goto LABEL_427;
        }

        v43 = v43;
      }

      else
      {
        v43 = BYTE14(v252);
      }

      v75 = v30 >> 62;
      if ((v30 >> 62) <= 1)
      {
        if (v75)
        {
          if (__OFSUB__(HIDWORD(v31), v31))
          {
            goto LABEL_415;
          }

          if (v43 != HIDWORD(v31) - v31)
          {
            goto LABEL_10;
          }
        }

        else if (v43 != BYTE6(v30))
        {
          goto LABEL_10;
        }

LABEL_141:
        if (v43 < 1)
        {
          goto LABEL_413;
        }

        if (v42 <= 1)
        {
          if (!v42)
          {
            *v246 = v252;
            *&v246[8] = DWORD2(v252);
            *&v246[12] = WORD6(v252);
            v79 = v30;
            v80 = v31;
            sub_10019782C(v3, &v247);
            sub_10019782C(v3, &v247);
            sub_10019782C(&v252, &v247);
            v81 = v80;
            goto LABEL_219;
          }

          v83 = v252;
          v84 = v252 >> 32;
          if (v252 >> 32 < v252)
          {
            goto LABEL_434;
          }

          v82 = *v3;
          v79 = *(v3 + 1);
LABEL_217:
          sub_10019782C(v3, &v247);
          sub_10019782C(v3, &v247);
          sub_10019782C(v3, &v247);
          sub_10019782C(&v252, &v247);
          v119 = sub_10003A0DC(v83, v84, v21 & 0x3FFFFFFFFFFFFFFFLL, v82, v79);
          sub_100193BF0(v3);
          sub_100193BF0(&v252);
          sub_100193BF0(v3);
          sub_100193BF0(v3);
LABEL_314:
          v12 = v243;
          v16 = v244;
          v13 = v243 + 56;
          if (v119)
          {
            goto LABEL_413;
          }

          goto LABEL_10;
        }

        v82 = *v3;
        v79 = *(v3 + 1);
        if (v42 == 2)
        {
          v83 = *(v252 + 16);
          v84 = *(v252 + 24);
          goto LABEL_217;
        }

        *&v246[6] = 0;
        *v246 = 0;
        sub_10019782C(v3, &v247);
        sub_10019782C(v3, &v247);
        sub_10019782C(&v252, &v247);
        v81 = v82;
LABEL_219:
        sub_100066884(v246, v81, v79, &v247);
        sub_100193BF0(&v252);
        sub_100193BF0(v3);
        sub_100193BF0(v3);
        v120 = v247;
LABEL_318:
        v12 = v243;
        v16 = v244;
        v13 = v243 + 56;
        if (v120)
        {
          goto LABEL_413;
        }

        goto LABEL_10;
      }

      if (v75 != 2)
      {
        if (!v43)
        {
          goto LABEL_413;
        }

        goto LABEL_10;
      }

      v77 = *(v31 + 16);
      v76 = *(v31 + 24);
      v53 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v53)
      {
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
LABEL_435:
        __break(1u);
LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
LABEL_440:
        __break(1u);
LABEL_441:
        __break(1u);
LABEL_442:
        __break(1u);
LABEL_443:
        __break(1u);
LABEL_444:
        __break(1u);
LABEL_445:
        __break(1u);
LABEL_446:
        __break(1u);
LABEL_447:
        __break(1u);
LABEL_448:
        __break(1u);
LABEL_449:
        __break(1u);
LABEL_450:
        __break(1u);
LABEL_451:
        __break(1u);
LABEL_452:
        __break(1u);
LABEL_453:
        __break(1u);
LABEL_454:
        __break(1u);
LABEL_455:
        __break(1u);
LABEL_456:
        __break(1u);
LABEL_457:
        __break(1u);
LABEL_458:
        __break(1u);
LABEL_459:
        __break(1u);
LABEL_460:
        __break(1u);
      }

      if (v43 == v78)
      {
        goto LABEL_141;
      }
    }

    goto LABEL_10;
  }

  if ((v34 >> 59) & 6 | ((v28 & 0x2000000000000000) != 0))
  {
    goto LABEL_10;
  }

  v40 = *(&v252 + 1) >> 62;
  if (*(&v252 + 1) >> 62 == 3)
  {
    v41 = 0;
    if (v252 != __PAIR128__(0xC000000000000000, 0))
    {
      goto LABEL_188;
    }

    if (v30 >> 62 != 3)
    {
      goto LABEL_188;
    }

    v41 = 0;
    if (v31 || v30 != 0xC000000000000000)
    {
      goto LABEL_188;
    }

    goto LABEL_204;
  }

  if (v40 > 1)
  {
    if (v40 == 2)
    {
      v62 = *(v252 + 16);
      v61 = *(v252 + 24);
      v53 = __OFSUB__(v61, v62);
      v41 = v61 - v62;
      if (v53)
      {
        goto LABEL_433;
      }
    }

    else
    {
      v41 = 0;
    }
  }

  else if (v40)
  {
    LODWORD(v41) = DWORD1(v252) - v252;
    if (__OFSUB__(DWORD1(v252), v252))
    {
      goto LABEL_432;
    }

    v41 = v41;
  }

  else
  {
    v41 = BYTE14(v252);
  }

LABEL_188:
  v106 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v106 != 2)
    {
      if (v41)
      {
        goto LABEL_10;
      }

      goto LABEL_204;
    }

    v109 = *(v31 + 16);
    v108 = *(v31 + 24);
    v53 = __OFSUB__(v108, v109);
    v107 = v108 - v109;
    if (v53)
    {
      goto LABEL_420;
    }
  }

  else if (v106)
  {
    LODWORD(v107) = HIDWORD(v31) - v31;
    if (__OFSUB__(HIDWORD(v31), v31))
    {
      goto LABEL_421;
    }

    v107 = v107;
  }

  else
  {
    v107 = BYTE6(v30);
  }

  if (v41 != v107)
  {
    goto LABEL_10;
  }

  if (v41 < 1)
  {
LABEL_204:
    v249 = v254;
    *&v250 = v255;
    v251 = v256;
    v247 = v252;
    v248 = v253;
    *(&v250 + 1) = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
    v115 = v33;
    v116 = v32;
    sub_1001915E8(&v247, v246);
    v114 = v116;
    v113 = v115;
    goto LABEL_205;
  }

  if (v40 > 1)
  {
    v123 = *v3;
    v227 = *(v3 + 1);
    v231 = *(v3 + 2);
    v234 = *(v3 + 3);
    if (v40 == 2)
    {
      v124 = *(v252 + 16);
      v240 = *(v252 + 24);
      v247 = v252;
      v248 = v253;
      v249 = v254;
      *&v250 = v255;
      v251 = v256;
      *(&v250 + 1) = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      sub_1001915E8(&v247, v246);
      v125 = sub_1004A40D4();
      if (v125)
      {
        v126 = sub_1004A4104();
        if (__OFSUB__(v124, v126))
        {
          goto LABEL_452;
        }

        v125 += v124 - v126;
      }

      if (__OFSUB__(v240, v124))
      {
        goto LABEL_448;
      }

      sub_1004A40F4();
      v127 = v125;
    }

    else
    {
      memset(v245, 0, 14);
      v249 = v254;
      *&v250 = v255;
      v251 = v256;
      v247 = v252;
      v248 = v253;
      *(&v250 + 1) = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      sub_1001915E8(&v247, v246);
      v127 = v245;
    }

    v166 = v123;
  }

  else
  {
    v221 = *v3;
    if (!v40)
    {
      v110 = *(v3 + 2);
      v111 = *(v3 + 3);
      v245[0] = v252;
      LODWORD(v245[1]) = DWORD2(v252);
      WORD2(v245[1]) = WORD6(v252);
      *&v250 = v255;
      v251 = v256;
      v249 = v254;
      v247 = v252;
      v248 = v253;
      *(&v250 + 1) = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      v112 = v30;
      sub_1001915E8(&v247, v246);
      sub_100066884(v245, v221, v112, v246);
      v113 = v111;
      v114 = v110;
      if ((v246[0] & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_205;
    }

    v227 = *(v3 + 1);
    v231 = *(v3 + 2);
    v234 = *(v3 + 3);
    v163 = v252;
    if (v252 >> 32 < v252)
    {
      goto LABEL_447;
    }

    v249 = v254;
    *&v250 = v255;
    v251 = v256;
    v247 = v252;
    v248 = v253;
    *(&v250 + 1) = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
    sub_1001915E8(&v247, v246);
    v164 = sub_1004A40D4();
    if (v164)
    {
      v165 = sub_1004A4104();
      if (__OFSUB__(v163, v165))
      {
        goto LABEL_453;
      }

      v164 += v163 - v165;
    }

    sub_1004A40F4();
    v127 = v164;
    v166 = v221;
  }

  sub_100066884(v127, v166, v227, v246);
  v114 = v231;
  v113 = v234;
  if ((v246[0] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_205:
  v117 = v22 >> 62;
  if (v22 >> 62 != 3)
  {
    if (v117 > 1)
    {
      if (v117 == 2)
      {
        v122 = *(v23 + 16);
        v121 = *(v23 + 24);
        v53 = __OFSUB__(v121, v122);
        v118 = v121 - v122;
        if (v53)
        {
          goto LABEL_445;
        }
      }

      else
      {
        v118 = 0;
      }
    }

    else if (v117)
    {
      LODWORD(v118) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_446;
      }

      v118 = v118;
    }

    else
    {
      v118 = BYTE6(v22);
    }

LABEL_285:
    v153 = v113 >> 62;
    if ((v113 >> 62) > 1)
    {
      if (v153 != 2)
      {
        if (!v118)
        {
          goto LABEL_411;
        }

        goto LABEL_7;
      }

      v156 = *(v114 + 16);
      v155 = *(v114 + 24);
      v53 = __OFSUB__(v155, v156);
      v154 = v155 - v156;
      if (v53)
      {
        goto LABEL_435;
      }
    }

    else if (v153)
    {
      LODWORD(v154) = HIDWORD(v114) - v114;
      if (__OFSUB__(HIDWORD(v114), v114))
      {
        goto LABEL_436;
      }

      v154 = v154;
    }

    else
    {
      v154 = BYTE6(v113);
    }

    if (v118 != v154)
    {
      goto LABEL_7;
    }

    if (v118 < 1)
    {
      goto LABEL_411;
    }

    if (v117 > 1)
    {
      if (v117 != 2)
      {
        *(&v247 + 6) = 0;
        *&v247 = 0;
        v169 = v113;
        v170 = v114;
        sub_100014CEC(v114, v113);
        sub_100014CEC(v170, v169);
        sub_100066884(&v247, v170, v169, v246);
        sub_100193BF0(&v252);
        sub_100014D40(v170, v169);
        v159 = v170;
        v160 = v169;
        goto LABEL_317;
      }

      v161 = *(v23 + 16);
      v162 = *(v23 + 24);
    }

    else
    {
      if (!v117)
      {
        *&v247 = v23;
        WORD4(v247) = v22;
        BYTE10(v247) = BYTE2(v22);
        BYTE11(v247) = BYTE3(v22);
        BYTE12(v247) = BYTE4(v22);
        BYTE13(v247) = BYTE5(v22);
        v157 = v113;
        v158 = v114;
        sub_100014CEC(v114, v113);
        sub_100014CEC(v158, v157);
        sub_100066884(&v247, v158, v157, v246);
        sub_100193BF0(&v252);
        sub_100014D40(v158, v157);
        v159 = v158;
        v160 = v157;
LABEL_317:
        sub_100014D40(v159, v160);
        v120 = v246[0];
        goto LABEL_318;
      }

      v161 = v23;
      v162 = v23 >> 32;
      if (v23 >> 32 < v23)
      {
        goto LABEL_451;
      }
    }

    v167 = v113;
    v168 = v114;
    sub_100014CEC(v114, v113);
    sub_100014CEC(v168, v167);
    sub_100014CEC(v168, v167);
    v119 = sub_10003A0DC(v161, v162, v22 & 0x3FFFFFFFFFFFFFFFLL, v168, v167);
    sub_100014D40(v168, v167);
    sub_100193BF0(&v252);
    sub_100014D40(v168, v167);
    sub_100014D40(v168, v167);
    goto LABEL_314;
  }

  v118 = 0;
  if (v23)
  {
    goto LABEL_285;
  }

  if (v22 != 0xC000000000000000)
  {
    goto LABEL_285;
  }

  if (v113 >> 62 != 3)
  {
    goto LABEL_285;
  }

  v118 = 0;
  if (v114 || v113 != 0xC000000000000000)
  {
    goto LABEL_285;
  }

LABEL_411:
  sub_100193BF0(v3);
  v3 = &v252;
LABEL_412:
  v12 = v243;
LABEL_413:
  sub_100193BF0(v3);
  v209 = (*(v12 + 48) + 80 * v15);
  v247 = *v209;
  v210 = v209[3];
  v211 = v209[4];
  v212 = v209[2];
  v248 = v209[1];
  v250 = v210;
  v251 = v211;
  v249 = v212;
  v213 = v209[3];
  a1[2] = v209[2];
  a1[3] = v213;
  a1[4] = v209[4];
  v214 = v209[1];
  *a1 = *v209;
  a1[1] = v214;
  sub_10019782C(&v247, v246);
  return 0;
}

uint64_t sub_10020163C(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1004A6E94();
  sub_1004A6EE4(a2);
  v6 = sub_1004A6F14();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100204DCC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100201734(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v10 = *v5;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (a5)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(a4 >> 14);
  }

  v11 = sub_1004A6F14();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v10;
    v16 = *(v10 + 48);
    do
    {
      v17 = v16 + 32 * v14;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *v17 == a2 && *(v17 + 8) == a3;
      if (v20 || (sub_1004A6D34() & 1) != 0)
      {
        if (v19)
        {
          if (a5)
          {
            goto LABEL_16;
          }
        }

        else if ((a5 & 1) == 0 && !((v18 ^ a4) >> 14))
        {
LABEL_16:

          v21 = *(v28 + 48) + 32 * v14;
          v23 = *v21;
          v22 = *(v21 + 8);
          v24 = *(v21 + 16);
          LOBYTE(v21) = *(v21 + 24);
          *a1 = v23;
          *(a1 + 8) = v22;
          *(a1 + 16) = v24;
          *(a1 + 24) = v21;

          return 0;
        }
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v29;
  v27 = a5 & 1;

  sub_100204F18(a2, a3, a4, v27, v14, isUniquelyReferenced_nonNull_native);
  *v29 = v31;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = v27;
  return 1;
}

uint64_t sub_100201924(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1004A6E94();
  sub_1004A6EB4(a2);
  v6 = sub_1004A6F14();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10020510C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100201A54(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  sub_1004A6E94();
  sub_1004A6EB4(a2);
  v12 = sub_1004A6F14();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_100205258(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL sub_100201B74()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EB4(0);
  v2 = sub_1004A6F14() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_1002053C8(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_100201C28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D4DE8, &qword_1004E5E00);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_100202DE8(*v15, *(v15 + 8), *(v15 + 16), v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      v15 = *(v3 + 48) + 24 * (v12 | (v6 << 6));
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      bzero((v3 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100201D98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D4E08, &qword_1004E5E18);
  v4 = sub_1004A6694();
  if (*(v3 + 16))
  {
    v5 = 0;
    result = v3 + 56;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v38 = v2;
    v39 = (v7 + 63) >> 6;
    v10 = v4 + 56;
    v41 = v3 + 56;
    v42 = v3;
    v43 = v4;
    while (1)
    {
      if (!v9)
      {
        v14 = v5;
        while (1)
        {
          v5 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
            goto LABEL_47;
          }

          if (v5 >= v39)
          {
            break;
          }

          v15 = *(result + 8 * v5);
          ++v14;
          if (v15)
          {
            v13 = __clz(__rbit64(v15));
            v44 = (v15 - 1) & v15;
            goto LABEL_15;
          }
        }

        v37 = 1 << *(v3 + 32);
        if (v37 >= 64)
        {
          bzero(result, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *result = -1 << v37;
        }

        v2 = v38;
        *(v3 + 16) = 0;
        break;
      }

      v13 = __clz(__rbit64(v9));
      v44 = (v9 - 1) & v9;
LABEL_15:
      v16 = (*(v3 + 48) + 80 * (v13 | (v5 << 6)));
      v18 = *v16;
      v17 = v16[1];
      v20 = v16[2];
      v19 = v16[3];
      v21 = v16[4];
      v22 = v16[7];
      v47 = v16[6];
      v23 = v16[9];
      v45 = v16[5];
      v46 = v16[8];
      sub_1004A6E94();
      v48 = v23;
      if ((v22 & 0x1000000000000000) == 0)
      {
        sub_1004A6EB4(0);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        v24 = v18;
        v25 = v21;
        v26 = v45;
        goto LABEL_32;
      }

      v40 = v17;
      v27 = v18;
      sub_1004A6EB4(1uLL);
      v28 = (v23 >> 59) & 6 | ((v22 & 0x2000000000000000) != 0);
      if (v28 <= 2)
      {
        v25 = v21;
        if (v28)
        {
          v26 = v45;
          if (v28 == 1)
          {
            sub_1004A6EB4(1uLL);
            v24 = v27;
            v17 = v40;
            sub_1004A4424();
            sub_1004A4424();
            sub_1004A4424();
            sub_1004A4424();
          }

          else
          {
            sub_1004A6EB4(2uLL);
            v24 = v27;
            v17 = v40;
          }

          sub_1004A4424();
        }

        else
        {
          sub_1004A6EB4(0);
          v24 = v27;
          v17 = v40;
          sub_1004A4424();
          sub_1004A4424();
          v26 = v45;
        }
      }

      else
      {
        v25 = v21;
        if (v28 > 4)
        {
          v26 = v45;
          if (v28 == 5)
          {
            v29 = 5;
          }

          else
          {
            v29 = 6;
          }
        }

        else
        {
          v26 = v45;
          if (v28 != 3)
          {
            sub_1004A6EB4(4uLL);
            v24 = v27;
            v17 = v40;
            sub_1004A4424();
            sub_1004A4424();
            goto LABEL_32;
          }

          v29 = 3;
        }

        sub_1004A6EB4(v29);
        v24 = v27;
        v17 = v40;
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

LABEL_32:
      result = sub_1004A6F14();
      v4 = v43;
      v30 = -1 << *(v43 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v10 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v10 + 8 * v32);
          if (v36 != -1)
          {
            v11 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_47:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v31) & ~*(v10 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v43 + 48) + 80 * v11);
      *v12 = v24;
      v12[1] = v17;
      v12[2] = v20;
      v12[3] = v19;
      v12[4] = v25;
      v12[5] = v26;
      v12[6] = v47;
      v12[7] = v22;
      v12[8] = v46;
      v12[9] = v48;
      ++*(v43 + 16);
      result = v41;
      v3 = v42;
      v9 = v44;
    }
  }

  *v2 = v4;
  return result;
}

uint64_t sub_10020222C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D3638, &unk_1004DD4E0);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      sub_1004A6E94();
      sub_1004A6EE4(v17);
      result = sub_1004A6F14();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10020247C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D3FC0, &qword_1004DF4B0);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      sub_1004A6E94();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v34 = v22;
      if (v22 == 1)
      {
        v23 = v21;
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1004A6EC4(1u);
        v23 = v21;
        sub_1004A6EF4(v21 >> 14);
      }

      result = sub_1004A6F14();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v23;
      *(v14 + 24) = v34;
      ++*(v5 + 16);
      v3 = v33;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100202738(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005D4E10, &qword_1004E5E20);
  result = sub_1004A6694();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1004A6E94();
      sub_1004A6EB4(v17);
      result = sub_1004A6F14();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100202988(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10000C9C0(a2, a3);
  result = sub_1004A6694();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_1004A6E94();
      sub_1004A6EB4(v19);
      result = sub_1004A6F14();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_100202BD0(uint64_t a1)
{
  v2 = *v1;
  sub_10000C9C0(&qword_1005D4E18, &qword_1004E5E28);
  result = sub_1004A6694();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
LABEL_13:
      sub_1004A6E94();
      sub_1004A6EB4(0);
      result = sub_1004A6F14();
      v14 = -1 << *(v4 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v11 + 8 * v16);
          if (v20 != -1)
          {
            v12 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v9 &= v9 - 1;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++*(v4 + 16);
    }

    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = v6[v13];
      ++v5;
      if (v9)
      {
        v5 = v13;
        goto LABEL_13;
      }
    }

    v21 = 1 << *(v2 + 32);
    if (v21 >= 64)
    {
      bzero((v2 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v21;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_100202DE8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004A6E94();
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      sub_1004A6EB4(3uLL);
      goto LABEL_14;
    }

    if (a3 == 3)
    {
      sub_1004A6EB4(4uLL);
      goto LABEL_14;
    }
  }

  else
  {
    if (!a3)
    {
      sub_1004A6EB4(1uLL);
      goto LABEL_14;
    }

    if (a3 == 1)
    {
      sub_1004A6EB4(2uLL);
      goto LABEL_14;
    }
  }

  sub_1004A6EB4(0);
  if ((~a1 & 0xF000000000000007) != 0)
  {
    sub_1004A6EC4(1u);
    ResponseTextCode.hash(into:)(v10, a1);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_14:
  sub_1004A6F14();
  result = sub_1004A6574();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v9 = (*(a4 + 48) + 24 * result);
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  ++*(a4 + 16);
  return result;
}

void sub_100202F4C(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_39;
  }

  if (a5)
  {
    sub_100201C28(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1002054D8();
      goto LABEL_39;
    }

    sub_100205DF0(v9 + 1);
  }

  v11 = *v5;
  sub_1004A6E94();
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      sub_1004A6EB4(3uLL);
      goto LABEL_21;
    }

    if (a3 == 3)
    {
      sub_1004A6EB4(4uLL);
      goto LABEL_21;
    }

LABEL_15:
    sub_1004A6EB4(0);
    if ((~result & 0xF000000000000007) != 0)
    {
      sub_1004A6EC4(1u);
      ResponseTextCode.hash(into:)(v28, result);
    }

    else
    {
      sub_1004A6EC4(0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    goto LABEL_21;
  }

  if (!a3)
  {
    sub_1004A6EB4(1uLL);
    goto LABEL_21;
  }

  if (a3 != 1)
  {
    goto LABEL_15;
  }

  sub_1004A6EB4(2uLL);
LABEL_21:
  v12 = sub_1004A6F14();
  v13 = -1 << *(v11 + 32);
  a4 = v12 & ~v13;
  if (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_39;
  }

  v14 = ~v13;
  while (1)
  {
    v15 = (*(v11 + 48) + 24 * a4);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_34;
      }

      if (a3 == 1)
      {
        goto LABEL_38;
      }
    }

    else if (!a3)
    {
      goto LABEL_38;
    }

LABEL_24:
    a4 = (a4 + 1) & v14;
    if (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (v18 == 2)
  {
    if (a3 == 2)
    {
      goto LABEL_38;
    }

    goto LABEL_24;
  }

  if (v18 == 3)
  {
    if (a3 == 3)
    {
      goto LABEL_38;
    }

    goto LABEL_24;
  }

LABEL_34:
  if (a3 < 4)
  {
    goto LABEL_24;
  }

  sub_1000110B0(*v15);

  v19 = static ResponseText.__derived_struct_equals(_:_:)(v16, v17);
  sub_100191E44(v16, v17, v18);
  if ((v19 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_38:
  sub_1004A6E14();
  __break(1u);
LABEL_39:
  v20 = *v25;
  *(*v25 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = (*(v20 + 48) + 24 * a4);
  *v21 = result;
  v21[1] = a2;
  v21[2] = a3;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

__int128 *sub_10020320C(__int128 *result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = result[3];
  v254 = result[2];
  v255 = v6;
  v256 = result[4];
  v7 = result[1];
  v252 = *result;
  v253 = v7;
  v8 = *(*v3 + 16);
  v9 = *(*v3 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_398;
  }

  if (a3)
  {
    sub_100201D98(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100205640();
      goto LABEL_398;
    }

    sub_100205F48(v8 + 1);
  }

  v228 = v3;
  v230 = *v3;
  sub_1004A6E94();
  v10 = *(v5 + 8);
  v12 = *(v5 + 16);
  v11 = *(v5 + 24);
  v13 = *(v5 + 56);
  if ((v13 & 0x1000000000000000) != 0)
  {
    v14 = *(v5 + 48);
    v244 = *v5;
    v245 = v10;
    v246 = v12;
    v247 = v11;
    v248 = *(v5 + 32);
    v249 = v14;
    v250 = v13 & 0xEFFFFFFFFFFFFFFFLL;
    v251 = *(v5 + 64);
    sub_1004A6EB4(1uLL);
    sub_1001EEF30(&v239);
  }

  else
  {
    sub_1004A6EB4(0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  result = sub_1004A6F14();
  v15 = v230;
  v16 = v230 + 56;
  v17 = -1 << *(v230 + 32);
  a2 = result & ~v17;
  if ((*(v230 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v229 = ~v17;
    do
    {
      v19 = (*(v15 + 48) + 80 * a2);
      v239 = *v19;
      v21 = v19[3];
      v20 = v19[4];
      v22 = v19[2];
      v240 = v19[1];
      v241 = v22;
      v242 = v21;
      v243 = v20;
      v23 = *(&v239 + 1);
      result = v239;
      v24 = *(&v240 + 1);
      v25 = v240;
      v26 = *(&v21 + 1);
      if ((*(&v21 + 1) & 0x1000000000000000) != 0)
      {
        v29 = *(v5 + 56);
        if ((v29 & 0x1000000000000000) == 0)
        {
          goto LABEL_14;
        }

        v30 = *(&v243 + 1);
        v32 = *v5;
        v31 = *(v5 + 8);
        v33 = *(v5 + 16);
        v34 = *(v5 + 24);
        v35 = *(v5 + 72);
        v36 = (*(&v243 + 1) >> 59) & 6 | ((*(&v242 + 1) & 0x2000000000000000) != 0);
        if (v36 <= 2)
        {
          if (v36)
          {
            if (v36 == 1)
            {
              if (((v35 >> 59) & 6 | ((v29 & 0x2000000000000000) != 0)) != 1)
              {
                goto LABEL_14;
              }

              v224 = *(&v241 + 1);
              v226 = v241;
              v221 = v242;
              v222 = *(v5 + 32);
              v223 = *(v5 + 40);
              v37 = *(&v239 + 1) >> 62;
              v216 = *(v5 + 64);
              v217 = v243;
              if (*(&v239 + 1) >> 62 == 3)
              {
                v38 = 0;
                if (v239 != __PAIR128__(0xC000000000000000, 0))
                {
                  goto LABEL_100;
                }

                if (v31 >> 62 != 3)
                {
                  goto LABEL_100;
                }

                v38 = 0;
                if (v32 || v31 != 0xC000000000000000)
                {
                  goto LABEL_100;
                }

                goto LABEL_114;
              }

              if (v37 > 1)
              {
                if (v37 == 2)
                {
                  v50 = *(v239 + 16);
                  v49 = *(v239 + 24);
                  v51 = __OFSUB__(v49, v50);
                  v38 = v49 - v50;
                  if (v51)
                  {
                    goto LABEL_414;
                  }
                }

                else
                {
                  v38 = 0;
                }
              }

              else if (v37)
              {
                LODWORD(v38) = DWORD1(v239) - v239;
                if (__OFSUB__(DWORD1(v239), v239))
                {
                  goto LABEL_413;
                }

                v38 = v38;
              }

              else
              {
                v38 = BYTE14(v239);
              }

LABEL_100:
              v58 = v31 >> 62;
              if ((v31 >> 62) > 1)
              {
                if (v58 != 2)
                {
                  if (v38)
                  {
                    goto LABEL_14;
                  }

                  goto LABEL_114;
                }

                v61 = *(v32 + 16);
                v60 = *(v32 + 24);
                v51 = __OFSUB__(v60, v61);
                v59 = v60 - v61;
                if (v51)
                {
                  goto LABEL_406;
                }

                v30 = *(&v243 + 1);
              }

              else if (v58)
              {
                LODWORD(v59) = HIDWORD(v32) - v32;
                if (__OFSUB__(HIDWORD(v32), v32))
                {
                  goto LABEL_404;
                }

                v59 = v59;
              }

              else
              {
                v59 = BYTE6(v31);
              }

              if (v38 != v59)
              {
                goto LABEL_14;
              }

              if (v38 < 1)
              {
LABEL_114:
                v211 = v30;
                v212 = *(v5 + 48);
                v235 = v241;
                v236 = v242;
                v238 = v243;
                v233 = v239;
                v234 = v240;
                v237 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                v66 = v33;
                v67 = v35;
                sub_1001915E8(&v233, v232);
                v68 = v67;
                goto LABEL_115;
              }

              v218 = *(v5 + 24);
              v212 = *(v5 + 48);
              v213 = *(v5 + 16);
              v210 = *(v5 + 72);
              v211 = v30;
              if (v37 > 1)
              {
                if (v37 != 2)
                {
                  *&v232[6] = 0;
                  *v232 = 0;
                  v150 = v31;
                  v151 = v32;
                  sub_100014CEC(v32, v31);
                  sub_10019782C(&v239, &v233);
                  sub_100014CEC(v151, v150);
                  sub_100066884(v232, v151, v150, &v233);
                  sub_100014D40(v151, v150);
                  v64 = v151;
                  v65 = v150;
                  goto LABEL_276;
                }

                v204 = *(v239 + 24);
                v206 = *(v239 + 16);
                v94 = *(v5 + 8);
                v95 = *v5;
                sub_100014CEC(v32, v31);
                sub_100014CEC(v95, v94);
                sub_10019782C(&v239, &v233);
                sub_100014CEC(v95, v94);
                v96 = v23 & 0x3FFFFFFFFFFFFFFFLL;
                v98 = v204;
                v97 = v206;
                v99 = v95;
                v100 = v94;
                v101 = v94;
              }

              else
              {
                if (!v37)
                {
                  *v232 = v239;
                  *&v232[8] = DWORD2(v239);
                  *&v232[12] = WORD6(v239);
                  v62 = v31;
                  v63 = v32;
                  sub_100014CEC(v32, v31);
                  sub_10019782C(&v239, &v233);
                  sub_100014CEC(v63, v62);
                  sub_100066884(v232, v63, v62, &v233);
                  sub_100014D40(v63, v62);
                  v64 = v63;
                  v65 = v62;
LABEL_276:
                  sub_100014D40(v64, v65);
                  v34 = v218;
                  v66 = v213;
                  v68 = v210;
                  if ((v233 & 1) == 0)
                  {
                    goto LABEL_392;
                  }

LABEL_115:
                  v69 = v24 >> 62;
                  if (v24 >> 62 == 3)
                  {
                    v70 = 0;
                    if (v25)
                    {
                      goto LABEL_232;
                    }

                    if (v24 != 0xC000000000000000)
                    {
                      goto LABEL_232;
                    }

                    if (v34 >> 62 != 3)
                    {
                      goto LABEL_232;
                    }

                    v70 = 0;
                    if (v66 || v34 != 0xC000000000000000)
                    {
                      goto LABEL_232;
                    }
                  }

                  else
                  {
                    if (v69 == 2)
                    {
                      v130 = *(v25 + 16);
                      v129 = *(v25 + 24);
                      v51 = __OFSUB__(v129, v130);
                      v70 = v129 - v130;
                      if (v51)
                      {
                        goto LABEL_424;
                      }
                    }

                    else if (v69 == 1)
                    {
                      LODWORD(v70) = HIDWORD(v25) - v25;
                      if (__OFSUB__(HIDWORD(v25), v25))
                      {
                        goto LABEL_425;
                      }

                      v70 = v70;
                    }

                    else
                    {
                      v70 = BYTE6(v24);
                    }

LABEL_232:
                    v133 = v34 >> 62;
                    if ((v34 >> 62) > 1)
                    {
                      if (v133 != 2)
                      {
                        if (v70)
                        {
                          goto LABEL_392;
                        }

                        goto LABEL_246;
                      }

                      v136 = *(v66 + 16);
                      v135 = *(v66 + 24);
                      v51 = __OFSUB__(v135, v136);
                      v134 = v135 - v136;
                      if (v51)
                      {
                        goto LABEL_418;
                      }
                    }

                    else if (v133)
                    {
                      LODWORD(v134) = HIDWORD(v66) - v66;
                      if (__OFSUB__(HIDWORD(v66), v66))
                      {
                        goto LABEL_417;
                      }

                      v134 = v134;
                    }

                    else
                    {
                      v134 = BYTE6(v34);
                    }

                    if (v70 != v134)
                    {
                      goto LABEL_392;
                    }

                    if (v70 >= 1)
                    {
                      v137 = v68;
                      sub_100014CEC(v66, v34);
                      v138 = sub_100039F4C(v25, v24, v66, v34);
                      v68 = v137;
                      if ((v138 & 1) == 0)
                      {
                        goto LABEL_392;
                      }
                    }
                  }

LABEL_246:
                  v139 = v224 >> 62;
                  v140 = v223 >> 62;
                  if (v224 >> 62 == 3)
                  {
                    v141 = 0;
                    v142 = v226;
                    if (v226)
                    {
                      goto LABEL_318;
                    }

                    if (v224 != 0xC000000000000000)
                    {
                      goto LABEL_318;
                    }

                    if (v223 >> 62 != 3)
                    {
                      goto LABEL_318;
                    }

                    v141 = 0;
                    if (v222 || v223 != 0xC000000000000000)
                    {
                      goto LABEL_318;
                    }
                  }

                  else
                  {
                    v142 = v226;
                    if (v139 == 2)
                    {
                      v171 = *(v226 + 16);
                      v170 = *(v226 + 24);
                      v51 = __OFSUB__(v170, v171);
                      v141 = v170 - v171;
                      if (v51)
                      {
                        goto LABEL_436;
                      }
                    }

                    else if (v139 == 1)
                    {
                      LODWORD(v141) = HIDWORD(v226) - v226;
                      if (__OFSUB__(HIDWORD(v226), v226))
                      {
                        goto LABEL_437;
                      }

                      v141 = v141;
                    }

                    else
                    {
                      v141 = BYTE6(v224);
                    }

LABEL_318:
                    if (v140 > 1)
                    {
                      if (v140 != 2)
                      {
                        if (v141)
                        {
                          goto LABEL_392;
                        }

                        goto LABEL_332;
                      }

                      v174 = *(v222 + 16);
                      v173 = *(v222 + 24);
                      v51 = __OFSUB__(v173, v174);
                      v172 = v173 - v174;
                      if (v51)
                      {
                        goto LABEL_430;
                      }
                    }

                    else if (v140)
                    {
                      LODWORD(v172) = HIDWORD(v222) - v222;
                      if (__OFSUB__(HIDWORD(v222), v222))
                      {
                        goto LABEL_431;
                      }

                      v172 = v172;
                    }

                    else
                    {
                      v172 = BYTE6(v223);
                    }

                    if (v141 != v172)
                    {
                      goto LABEL_392;
                    }

                    if (v141 >= 1)
                    {
                      v175 = v68;
                      sub_100014CEC(v222, v223);
                      v176 = sub_100039F4C(v142, v224, v222, v223);
                      v68 = v175;
                      if ((v176 & 1) == 0)
                      {
                        goto LABEL_392;
                      }
                    }
                  }

LABEL_332:
                  v177 = v26 & 0xCFFFFFFFFFFFFFFFLL;
                  v178 = v26 >> 62;
                  v179 = v29 >> 62;
                  if (v26 >> 62 == 3)
                  {
                    v180 = 0;
                    v181 = v221;
                    if (v221)
                    {
                      goto LABEL_355;
                    }

                    if (v177 != 0xC000000000000000)
                    {
                      goto LABEL_355;
                    }

                    if (v29 >> 62 != 3)
                    {
                      goto LABEL_355;
                    }

                    v180 = 0;
                    if (v212 || (v29 & 0xCFFFFFFFFFFFFFFFLL) != 0xC000000000000000)
                    {
                      goto LABEL_355;
                    }
                  }

                  else
                  {
                    if (v178 == 2)
                    {
                      v181 = v221;
                      v184 = *(v221 + 16);
                      v183 = *(v221 + 24);
                      v51 = __OFSUB__(v183, v184);
                      v180 = v183 - v184;
                      if (v51)
                      {
                        goto LABEL_444;
                      }
                    }

                    else if (v178 == 1)
                    {
                      v181 = v221;
                      LODWORD(v180) = HIDWORD(v221) - v221;
                      if (__OFSUB__(HIDWORD(v221), v221))
                      {
                        __break(1u);
LABEL_444:
                        __break(1u);
LABEL_445:
                        __break(1u);
LABEL_446:
                        __break(1u);
LABEL_447:
                        __break(1u);
LABEL_448:
                        __break(1u);
                        sub_100193BF0(v5);
                        sub_100193BF0(v5);
                        v235 = v254;
                        v236 = v255;
                        v238 = v256;
                        v233 = v252;
                        v234 = v253;
                        v237 = *(&v255 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                        sub_1001B4100(&v233);

                        __break(1u);
LABEL_449:
                        sub_100193BF0(&v239);
LABEL_450:
                        result = sub_1004A6E14();
                        __break(1u);
                        return result;
                      }

                      v180 = v180;
                    }

                    else
                    {
                      v180 = BYTE6(v26);
                      v181 = v221;
                    }

LABEL_355:
                    if (v179 > 1)
                    {
                      if (v179 != 2)
                      {
                        if (v180)
                        {
                          goto LABEL_392;
                        }

                        goto LABEL_369;
                      }

                      v187 = *(v212 + 16);
                      v186 = *(v212 + 24);
                      v51 = __OFSUB__(v186, v187);
                      v185 = v186 - v187;
                      if (v51)
                      {
                        goto LABEL_441;
                      }
                    }

                    else if (v179)
                    {
                      LODWORD(v185) = HIDWORD(v212) - v212;
                      if (__OFSUB__(HIDWORD(v212), v212))
                      {
                        goto LABEL_442;
                      }

                      v185 = v185;
                    }

                    else
                    {
                      v185 = BYTE6(v29);
                    }

                    if (v180 != v185)
                    {
                      goto LABEL_392;
                    }

                    if (v180 >= 1)
                    {
                      v188 = v68;
                      sub_100014CEC(v212, v29 & 0xCFFFFFFFFFFFFFFFLL);
                      v189 = sub_100039F4C(v181, v177, v212, v29 & 0xCFFFFFFFFFFFFFFFLL);
                      v68 = v188;
                      if ((v189 & 1) == 0)
                      {
                        goto LABEL_392;
                      }
                    }
                  }

LABEL_369:
                  v34 = v68 & 0xCFFFFFFFFFFFFFFFLL;
                  v190 = v211 >> 62;
                  v191 = v68 >> 62;
                  if (v211 >> 62 == 3)
                  {
                    v93 = 0;
                    if (!v217 && (v211 & 0xCFFFFFFFFFFFFFFFLL) == 0xC000000000000000 && v68 >> 62 == 3)
                    {
                      v93 = 0;
                      if (!v216 && v34 == 0xC000000000000000)
                      {
                        goto LABEL_449;
                      }
                    }
                  }

                  else if (v190 == 2)
                  {
                    v193 = *(v217 + 16);
                    v192 = *(v217 + 24);
                    v51 = __OFSUB__(v192, v193);
                    v93 = v192 - v193;
                    if (v51)
                    {
                      goto LABEL_448;
                    }
                  }

                  else if (v190 == 1)
                  {
                    LODWORD(v93) = HIDWORD(v217) - v217;
                    if (__OFSUB__(HIDWORD(v217), v217))
                    {
                      goto LABEL_447;
                    }

                    v93 = v93;
                  }

                  else
                  {
                    v93 = BYTE6(v211);
                  }

                  if (v191 > 1)
                  {
                    if (v191 != 2)
                    {
LABEL_391:
                      if (!v93)
                      {
                        goto LABEL_449;
                      }

                      goto LABEL_392;
                    }

                    v196 = *(v216 + 16);
                    v195 = *(v216 + 24);
                    v51 = __OFSUB__(v195, v196);
                    v194 = v195 - v196;
                    if (v51)
                    {
                      goto LABEL_445;
                    }
                  }

                  else if (v191)
                  {
                    LODWORD(v194) = HIDWORD(v216) - v216;
                    if (__OFSUB__(HIDWORD(v216), v216))
                    {
                      goto LABEL_446;
                    }

                    v194 = v194;
                  }

                  else
                  {
                    v194 = BYTE6(v68);
                  }

                  if (v93 != v194)
                  {
                    goto LABEL_392;
                  }

                  if (v93 < 1)
                  {
                    goto LABEL_449;
                  }

                  v146 = v216;
                  sub_100014CEC(v216, v68 & 0xCFFFFFFFFFFFFFFFLL);
                  v147 = v217;
                  v148 = v211 & 0xCFFFFFFFFFFFFFFFLL;
LABEL_270:
                  v120 = sub_100039F4C(v147, v148, v146, v34);
                  result = sub_100193BF0(&v239);
                  goto LABEL_345;
                }

                v205 = v239;
                v207 = v239 >> 32;
                if (v239 >> 32 < v239)
                {
                  goto LABEL_429;
                }

                v149 = *(v5 + 8);
                v95 = *v5;
                sub_100014CEC(v32, v31);
                sub_100014CEC(v95, v149);
                sub_10019782C(&v239, &v233);
                sub_100014CEC(v95, v149);
                v96 = v23 & 0x3FFFFFFFFFFFFFFFLL;
                v97 = v205;
                v98 = v207;
                v99 = v95;
                v101 = v149;
                v100 = v149;
              }

              v208 = sub_10003A0DC(v97, v98, v96, v99, v100);
              sub_100014D40(v95, v101);
              sub_100014D40(v95, v101);
              sub_100014D40(v95, v101);
              v34 = v218;
              v66 = v213;
              v68 = v210;
              if ((v208 & 1) == 0)
              {
                goto LABEL_392;
              }

              goto LABEL_115;
            }

            if (((v35 >> 59) & 6 | ((v29 & 0x2000000000000000) != 0)) != 2)
            {
              goto LABEL_14;
            }

            v43 = *(&v239 + 1) >> 62;
            if (*(&v239 + 1) >> 62 == 3)
            {
              v44 = 0;
              if (v239 == __PAIR128__(0xC000000000000000, 0) && v31 >> 62 == 3)
              {
                v44 = 0;
                if (!v32 && v31 == 0xC000000000000000)
                {
                  goto LABEL_450;
                }
              }
            }

            else if (v43 > 1)
            {
              if (v43 == 2)
              {
                v53 = *(v239 + 16);
                v52 = *(v239 + 24);
                v51 = __OFSUB__(v52, v53);
                v44 = v52 - v53;
                if (v51)
                {
                  goto LABEL_412;
                }
              }

              else
              {
                v44 = 0;
              }
            }

            else if (v43)
            {
              LODWORD(v44) = DWORD1(v239) - v239;
              if (__OFSUB__(DWORD1(v239), v239))
              {
                goto LABEL_410;
              }

              v44 = v44;
            }

            else
            {
              v44 = BYTE14(v239);
            }

            v71 = v31 >> 62;
            if ((v31 >> 62) > 1)
            {
              if (v71 != 2)
              {
                if (!v44)
                {
                  goto LABEL_450;
                }

                goto LABEL_14;
              }

              v74 = *(v32 + 16);
              v73 = *(v32 + 24);
              v51 = __OFSUB__(v73, v74);
              v72 = v73 - v74;
              if (v51)
              {
                goto LABEL_401;
              }
            }

            else if (v71)
            {
              LODWORD(v72) = HIDWORD(v32) - v32;
              if (__OFSUB__(HIDWORD(v32), v32))
              {
                goto LABEL_402;
              }

              v72 = v72;
            }

            else
            {
              v72 = BYTE6(v31);
            }

            if (v44 != v72)
            {
              goto LABEL_14;
            }

            if (v44 < 1)
            {
              goto LABEL_450;
            }

            if (v43 > 1)
            {
              v79 = *v5;
              v80 = *(v5 + 8);
              if (v43 == 2)
              {
                v81 = *(v239 + 16);
                v82 = *(v239 + 24);
LABEL_212:
                sub_10019782C(v5, &v233);
                sub_10019782C(v5, &v233);
                sub_10019782C(&v239, &v233);
                sub_10019782C(v5, &v233);
                v120 = sub_10003A0DC(v81, v82, v23 & 0x3FFFFFFFFFFFFFFFLL, v79, v80);
                sub_100193BF0(v5);
                sub_100193BF0(&v239);
                sub_100193BF0(v5);
                result = sub_100193BF0(v5);
                goto LABEL_345;
              }

              *&v232[6] = 0;
              *v232 = 0;
              sub_10019782C(v5, &v233);
              sub_10019782C(&v239, &v233);
              sub_10019782C(v5, &v233);
              v77 = v79;
              v78 = v80;
            }

            else
            {
              if (v43)
              {
                v81 = v239;
                v82 = v239 >> 32;
                if (v239 >> 32 < v239)
                {
                  goto LABEL_421;
                }

                v79 = *v5;
                v80 = *(v5 + 8);
                goto LABEL_212;
              }

              *v232 = v239;
              *&v232[8] = DWORD2(v239);
              *&v232[12] = WORD6(v239);
              v75 = v31;
              v76 = v32;
              sub_10019782C(v5, &v233);
              sub_10019782C(&v239, &v233);
              sub_10019782C(v5, &v233);
              v77 = v76;
              v78 = v75;
            }

            sub_100066884(v232, v77, v78, &v233);
            sub_100193BF0(&v239);
            sub_100193BF0(v5);
            result = sub_100193BF0(v5);
            v121 = v233;
            goto LABEL_349;
          }

          if ((v35 >> 59) & 6 | ((v29 & 0x2000000000000000) != 0))
          {
            goto LABEL_14;
          }

          v41 = *(&v239 + 1) >> 62;
          if (*(&v239 + 1) >> 62 == 3)
          {
            v42 = 0;
            if (v239 != __PAIR128__(0xC000000000000000, 0))
            {
              goto LABEL_183;
            }

            if (v31 >> 62 != 3)
            {
              goto LABEL_183;
            }

            v42 = 0;
            if (v32 || v31 != 0xC000000000000000)
            {
              goto LABEL_183;
            }

            goto LABEL_199;
          }

          if (v41 > 1)
          {
            if (v41 == 2)
            {
              v57 = *(v239 + 16);
              v56 = *(v239 + 24);
              v51 = __OFSUB__(v56, v57);
              v42 = v56 - v57;
              if (v51)
              {
                goto LABEL_420;
              }
            }

            else
            {
              v42 = 0;
            }
          }

          else if (v41)
          {
            LODWORD(v42) = DWORD1(v239) - v239;
            if (__OFSUB__(DWORD1(v239), v239))
            {
              goto LABEL_419;
            }

            v42 = v42;
          }

          else
          {
            v42 = BYTE14(v239);
          }

LABEL_183:
          v109 = v31 >> 62;
          if ((v31 >> 62) > 1)
          {
            if (v109 != 2)
            {
              if (v42)
              {
                goto LABEL_14;
              }

              goto LABEL_199;
            }

            v112 = *(v32 + 16);
            v111 = *(v32 + 24);
            v51 = __OFSUB__(v111, v112);
            v110 = v111 - v112;
            if (v51)
            {
              goto LABEL_408;
            }
          }

          else if (v109)
          {
            LODWORD(v110) = HIDWORD(v32) - v32;
            if (__OFSUB__(HIDWORD(v32), v32))
            {
              goto LABEL_407;
            }

            v110 = v110;
          }

          else
          {
            v110 = BYTE6(v31);
          }

          if (v42 != v110)
          {
            goto LABEL_14;
          }

          if (v42 >= 1)
          {
            if (v41 > 1)
            {
              v124 = *v5;
              v227 = *(v5 + 8);
              v215 = *(v5 + 16);
              v220 = *(v5 + 24);
              if (v41 == 2)
              {
                v125 = *(v239 + 16);
                v225 = *(v239 + 24);
                v233 = v239;
                v234 = v240;
                v235 = v241;
                v236 = v242;
                v238 = v243;
                v237 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                sub_1001915E8(&v233, v232);
                v126 = sub_1004A40D4();
                if (v126)
                {
                  v127 = sub_1004A4104();
                  if (__OFSUB__(v125, v127))
                  {
                    goto LABEL_439;
                  }

                  v126 += v125 - v127;
                }

                if (__OFSUB__(v225, v125))
                {
                  goto LABEL_435;
                }

                sub_1004A40F4();
                v128 = v126;
              }

              else
              {
                memset(v231, 0, 14);
                v235 = v241;
                v236 = v242;
                v238 = v243;
                v233 = v239;
                v234 = v240;
                v237 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                sub_1001915E8(&v233, v232);
                v128 = v231;
              }

              v169 = v124;
            }

            else
            {
              v209 = *v5;
              if (!v41)
              {
                v113 = *(v5 + 16);
                v114 = *(v5 + 24);
                v231[0] = v239;
                LODWORD(v231[1]) = DWORD2(v239);
                WORD2(v231[1]) = WORD6(v239);
                v236 = v242;
                v238 = v243;
                v235 = v241;
                v233 = v239;
                v234 = v240;
                v237 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                v115 = v31;
                sub_1001915E8(&v233, v232);
                sub_100066884(v231, v209, v115, v232);
                v34 = v114;
                v116 = v113;
                if ((v232[0] & 1) == 0)
                {
                  goto LABEL_392;
                }

                goto LABEL_200;
              }

              v227 = *(v5 + 8);
              v215 = *(v5 + 16);
              v220 = *(v5 + 24);
              v166 = v239;
              if (v239 >> 32 < v239)
              {
                goto LABEL_434;
              }

              v235 = v241;
              v236 = v242;
              v238 = v243;
              v233 = v239;
              v234 = v240;
              v237 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
              sub_1001915E8(&v233, v232);
              v167 = sub_1004A40D4();
              if (v167)
              {
                v168 = sub_1004A4104();
                if (__OFSUB__(v166, v168))
                {
                  goto LABEL_440;
                }

                v167 += v166 - v168;
              }

              sub_1004A40F4();
              v128 = v167;
              v169 = v209;
            }

            sub_100066884(v128, v169, v227, v232);
            v34 = v220;
            v116 = v215;
            if ((v232[0] & 1) == 0)
            {
              goto LABEL_392;
            }

            goto LABEL_200;
          }

LABEL_199:
          v235 = v241;
          v236 = v242;
          v238 = v243;
          v233 = v239;
          v234 = v240;
          v237 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
          v117 = v33;
          sub_1001915E8(&v233, v232);
          v116 = v117;
LABEL_200:
          v118 = v24 >> 62;
          if (v24 >> 62 == 3)
          {
            v119 = 0;
            if (!v25 && v24 == 0xC000000000000000 && v34 >> 62 == 3)
            {
              v119 = 0;
              if (!v116 && v34 == 0xC000000000000000)
              {
                goto LABEL_449;
              }
            }
          }

          else if (v118 > 1)
          {
            if (v118 == 2)
            {
              v123 = *(v25 + 16);
              v122 = *(v25 + 24);
              v51 = __OFSUB__(v122, v123);
              v119 = v122 - v123;
              if (v51)
              {
                goto LABEL_432;
              }
            }

            else
            {
              v119 = 0;
            }
          }

          else if (v118)
          {
            LODWORD(v119) = HIDWORD(v25) - v25;
            if (__OFSUB__(HIDWORD(v25), v25))
            {
              goto LABEL_433;
            }

            v119 = v119;
          }

          else
          {
            v119 = BYTE6(v24);
          }

          v158 = v34 >> 62;
          if ((v34 >> 62) > 1)
          {
            if (v158 != 2)
            {
              if (!v119)
              {
                goto LABEL_449;
              }

LABEL_392:
              result = sub_100193BF0(&v239);
              v3 = v228;
              v18 = v229;
              v16 = v230 + 56;
              v15 = v230;
              goto LABEL_14;
            }

            v161 = *(v116 + 16);
            v160 = *(v116 + 24);
            v51 = __OFSUB__(v160, v161);
            v159 = v160 - v161;
            if (v51)
            {
              goto LABEL_422;
            }
          }

          else if (v158)
          {
            LODWORD(v159) = HIDWORD(v116) - v116;
            if (__OFSUB__(HIDWORD(v116), v116))
            {
              goto LABEL_423;
            }

            v159 = v159;
          }

          else
          {
            v159 = BYTE6(v34);
          }

          if (v119 != v159)
          {
            goto LABEL_392;
          }

          if (v119 < 1)
          {
            goto LABEL_449;
          }

          if (v118 > 1)
          {
            if (v118 == 2)
            {
              v163 = v34;
              v164 = *(v25 + 16);
              v165 = *(v25 + 24);
              goto LABEL_344;
            }

            *(&v233 + 6) = 0;
            *&v233 = 0;
            v162 = v116;
            sub_100014CEC(v116, v34);
            sub_100014CEC(v162, v34);
          }

          else
          {
            if (v118)
            {
              v163 = v34;
              v164 = v25;
              v165 = v25 >> 32;
              if (v25 >> 32 < v25)
              {
                goto LABEL_438;
              }

LABEL_344:
              v182 = v116;
              sub_100014CEC(v116, v163);
              sub_100014CEC(v182, v163);
              sub_100014CEC(v182, v163);
              v120 = sub_10003A0DC(v164, v165, v24 & 0x3FFFFFFFFFFFFFFFLL, v182, v163);
              sub_100014D40(v182, v163);
              sub_100193BF0(&v239);
              sub_100014D40(v182, v163);
              result = sub_100014D40(v182, v163);
LABEL_345:
              v3 = v228;
              v18 = v229;
              v16 = v230 + 56;
              v15 = v230;
              if (v120)
              {
                goto LABEL_450;
              }

              goto LABEL_14;
            }

            *&v233 = v25;
            WORD4(v233) = v24;
            BYTE10(v233) = BYTE2(v24);
            BYTE11(v233) = BYTE3(v24);
            BYTE12(v233) = BYTE4(v24);
            BYTE13(v233) = BYTE5(v24);
            v162 = v116;
            sub_100014CEC(v116, v34);
            sub_100014CEC(v162, v34);
          }

          sub_100066884(&v233, v162, v34, v232);
          sub_100193BF0(&v239);
          sub_100014D40(v162, v34);
          result = sub_100014D40(v162, v34);
          v121 = v232[0];
LABEL_349:
          v3 = v228;
          v18 = v229;
          v16 = v230 + 56;
          v15 = v230;
          if (v121)
          {
            goto LABEL_450;
          }

          goto LABEL_14;
        }

        if (v36 > 4)
        {
          v39 = (v29 >> 61) & 1;
          v40 = v35 >> 59;
          if (v36 == 5)
          {
            if ((v40 & 6 | v39) != 5)
            {
              goto LABEL_14;
            }
          }

          else if ((v40 & 6 | v39) != 6)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v36 != 3)
          {
            if (((v35 >> 59) & 6 | ((v29 & 0x2000000000000000) != 0)) != 4)
            {
              goto LABEL_14;
            }

            v45 = *(&v239 + 1) >> 62;
            v46 = v31 >> 62;
            if (*(&v239 + 1) >> 62 == 3)
            {
              v47 = 0;
              if (v239 != __PAIR128__(0xC000000000000000, 0))
              {
                goto LABEL_148;
              }

              if (v31 >> 62 != 3)
              {
                goto LABEL_148;
              }

              v47 = 0;
              if (v32 || v31 != 0xC000000000000000)
              {
                goto LABEL_148;
              }

              goto LABEL_164;
            }

            if (v45 > 1)
            {
              if (v45 == 2)
              {
                v55 = *(v239 + 16);
                v54 = *(v239 + 24);
                v51 = __OFSUB__(v54, v55);
                v47 = v54 - v55;
                if (v51)
                {
                  goto LABEL_411;
                }
              }

              else
              {
                v47 = 0;
              }
            }

            else if (v45)
            {
              LODWORD(v47) = DWORD1(v239) - v239;
              if (__OFSUB__(DWORD1(v239), v239))
              {
                goto LABEL_409;
              }

              v47 = v47;
            }

            else
            {
              v47 = BYTE14(v239);
            }

LABEL_148:
            if (v46 > 1)
            {
              if (v46 != 2)
              {
                if (v47)
                {
                  goto LABEL_14;
                }

                goto LABEL_164;
              }

              v85 = *(v32 + 16);
              v84 = *(v32 + 24);
              v51 = __OFSUB__(v84, v85);
              v83 = v84 - v85;
              if (v51)
              {
                goto LABEL_405;
              }
            }

            else if (v46)
            {
              LODWORD(v83) = HIDWORD(v32) - v32;
              if (__OFSUB__(HIDWORD(v32), v32))
              {
                goto LABEL_403;
              }

              v83 = v83;
            }

            else
            {
              v83 = BYTE6(v31);
            }

            if (v47 != v83)
            {
              goto LABEL_14;
            }

            if (v47 >= 1)
            {
              v219 = *(v5 + 24);
              if (v45 > 1)
              {
                v214 = *(v5 + 16);
                if (v45 != 2)
                {
                  *&v232[6] = 0;
                  *v232 = 0;
                  v156 = v31;
                  v157 = v32;
                  sub_100014CEC(v32, v31);
                  sub_10019782C(&v239, &v233);
                  sub_100014CEC(v157, v156);
                  sub_100066884(v232, v157, v156, &v233);
                  sub_100014D40(v157, v156);
                  sub_100014D40(v157, v156);
                  v34 = v219;
                  v89 = v214;
                  if ((v233 & 1) == 0)
                  {
                    goto LABEL_392;
                  }

                  goto LABEL_165;
                }

                v102 = *(v239 + 16);
                v103 = *(v239 + 24);
                v104 = *(v5 + 8);
                v105 = *v5;
                sub_100014CEC(v32, v31);
                sub_100014CEC(v105, v104);
                sub_10019782C(&v239, &v233);
                sub_100014CEC(v105, v104);
                v106 = sub_10003A0DC(v102, v103, v23 & 0x3FFFFFFFFFFFFFFFLL, v105, v104);
                sub_100014D40(v105, v104);
                sub_100014D40(v105, v104);
                v107 = v105;
                v108 = v104;
              }

              else
              {
                if (!v45)
                {
                  v86 = *(v5 + 16);
                  *v232 = v239;
                  *&v232[8] = DWORD2(v239);
                  *&v232[12] = WORD6(v239);
                  v87 = v31;
                  v88 = v32;
                  sub_100014CEC(v32, v31);
                  sub_10019782C(&v239, &v233);
                  sub_100014CEC(v88, v87);
                  sub_100066884(v232, v88, v87, &v233);
                  sub_100014D40(v88, v87);
                  sub_100014D40(v88, v87);
                  v34 = v219;
                  v89 = v86;
                  if ((v233 & 1) == 0)
                  {
                    goto LABEL_392;
                  }

                  goto LABEL_165;
                }

                v214 = *(v5 + 16);
                v152 = v239;
                v153 = v239 >> 32;
                if (v239 >> 32 < v239)
                {
                  goto LABEL_428;
                }

                v154 = *(v5 + 8);
                v155 = *v5;
                sub_100014CEC(v32, v31);
                sub_100014CEC(v155, v154);
                sub_10019782C(&v239, &v233);
                sub_100014CEC(v155, v154);
                v106 = sub_10003A0DC(v152, v153, v23 & 0x3FFFFFFFFFFFFFFFLL, v155, v154);
                sub_100014D40(v155, v154);
                sub_100014D40(v155, v154);
                v107 = v155;
                v108 = v154;
              }

              sub_100014D40(v107, v108);
              v34 = v219;
              v89 = v214;
              if ((v106 & 1) == 0)
              {
                goto LABEL_392;
              }

              goto LABEL_165;
            }

LABEL_164:
            v235 = v241;
            v236 = v242;
            v238 = v243;
            v233 = v239;
            v234 = v240;
            v237 = *(&v242 + 1) & 0xEFFFFFFFFFFFFFFFLL;
            v90 = v33;
            sub_1001915E8(&v233, v232);
            v89 = v90;
LABEL_165:
            v91 = v24 >> 62;
            v92 = v34 >> 62;
            if (v24 >> 62 == 3)
            {
              v93 = 0;
              if (!v25 && v24 == 0xC000000000000000 && v34 >> 62 == 3)
              {
                v93 = 0;
                if (!v89 && v34 == 0xC000000000000000)
                {
                  goto LABEL_449;
                }
              }
            }

            else if (v91 == 2)
            {
              v132 = *(v25 + 16);
              v131 = *(v25 + 24);
              v51 = __OFSUB__(v131, v132);
              v93 = v131 - v132;
              if (v51)
              {
                goto LABEL_426;
              }
            }

            else if (v91 == 1)
            {
              LODWORD(v93) = HIDWORD(v25) - v25;
              if (__OFSUB__(HIDWORD(v25), v25))
              {
                goto LABEL_427;
              }

              v93 = v93;
            }

            else
            {
              v93 = BYTE6(v24);
            }

            if (v92 > 1)
            {
              if (v92 != 2)
              {
                goto LABEL_391;
              }

              v145 = *(v89 + 16);
              v144 = *(v89 + 24);
              v51 = __OFSUB__(v144, v145);
              v143 = v144 - v145;
              if (v51)
              {
                goto LABEL_415;
              }
            }

            else if (v92)
            {
              LODWORD(v143) = HIDWORD(v89) - v89;
              if (__OFSUB__(HIDWORD(v89), v89))
              {
                goto LABEL_416;
              }

              v143 = v143;
            }

            else
            {
              v143 = BYTE6(v34);
            }

            if (v93 != v143)
            {
              goto LABEL_392;
            }

            if (v93 < 1)
            {
              goto LABEL_449;
            }

            v146 = v89;
            sub_100014CEC(v89, v34);
            v147 = v25;
            v148 = v24;
            goto LABEL_270;
          }

          if (((v35 >> 59) & 6 | ((v29 & 0x2000000000000000) != 0)) != 3)
          {
            goto LABEL_14;
          }
        }

        if (v239 == __PAIR128__(v31, v32) || (v48 = *(v5 + 16), result = sub_1004A6D34(), v33 = v48, v18 = v229, v16 = v230 + 56, v15 = v230, (result & 1) != 0))
        {
          if (v25 == v33 && v24 == v34)
          {
            goto LABEL_450;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v5 + 63) & 0x10) == 0)
      {
        v27 = *(v5 + 16);
        v28 = *(v5 + 24);
        if (v239 == *v5 || (result = sub_1004A6D34(), v18 = v229, v16 = v230 + 56, v15 = v230, (result & 1) != 0))
        {
          if (v25 == v27 && v24 == v28)
          {
            goto LABEL_450;
          }

LABEL_13:
          result = sub_1004A6D34();
          v18 = v229;
          v16 = v230 + 56;
          v15 = v230;
          if (result)
          {
            goto LABEL_450;
          }
        }
      }

LABEL_14:
      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_398:
  v197 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v198 = (*(v197 + 48) + 80 * a2);
  *v198 = *v5;
  v199 = *(v5 + 16);
  v200 = *(v5 + 32);
  v201 = *(v5 + 64);
  v198[3] = *(v5 + 48);
  v198[4] = v201;
  v198[1] = v199;
  v198[2] = v200;
  v202 = *(v197 + 16);
  v51 = __OFADD__(v202, 1);
  v203 = v202 + 1;
  if (v51)
  {
    __break(1u);
LABEL_401:
    __break(1u);
LABEL_402:
    __break(1u);
LABEL_403:
    __break(1u);
LABEL_404:
    __break(1u);
LABEL_405:
    __break(1u);
LABEL_406:
    __break(1u);
LABEL_407:
    __break(1u);
LABEL_408:
    __break(1u);
LABEL_409:
    __break(1u);
LABEL_410:
    __break(1u);
LABEL_411:
    __break(1u);
LABEL_412:
    __break(1u);
LABEL_413:
    __break(1u);
LABEL_414:
    __break(1u);
LABEL_415:
    __break(1u);
LABEL_416:
    __break(1u);
LABEL_417:
    __break(1u);
LABEL_418:
    __break(1u);
LABEL_419:
    __break(1u);
LABEL_420:
    __break(1u);
LABEL_421:
    __break(1u);
LABEL_422:
    __break(1u);
LABEL_423:
    __break(1u);
LABEL_424:
    __break(1u);
LABEL_425:
    __break(1u);
LABEL_426:
    __break(1u);
LABEL_427:
    __break(1u);
LABEL_428:
    __break(1u);
LABEL_429:
    __break(1u);
LABEL_430:
    __break(1u);
LABEL_431:
    __break(1u);
LABEL_432:
    __break(1u);
LABEL_433:
    __break(1u);
LABEL_434:
    __break(1u);
LABEL_435:
    __break(1u);
LABEL_436:
    __break(1u);
LABEL_437:
    __break(1u);
LABEL_438:
    __break(1u);
LABEL_439:
    __break(1u);
LABEL_440:
    __break(1u);
LABEL_441:
    __break(1u);
LABEL_442:
    __break(1u);
  }

  *(v197 + 16) = v203;
  return result;
}

uint64_t sub_100204DCC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10020222C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1002057C8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100206430(v5 + 1);
  }

  v8 = *v3;
  sub_1004A6E94();
  sub_1004A6EE4(v4);
  result = sub_1004A6F14();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

void sub_100204F18(uint64_t result, uint64_t a2, unint64_t a3, char a4, unint64_t a5, char a6)
{
  v7 = v6;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a6)
  {
    sub_10020247C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100205908();
      goto LABEL_24;
    }

    sub_100206650(v12 + 1);
  }

  v14 = *v6;
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (a4)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(a3 >> 14);
  }

  v15 = sub_1004A6F14();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = v15 & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = v19 + 32 * a5;
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      v23 = *v20 == result && *(v20 + 8) == a2;
      if (v23 || (sub_1004A6D34() & 1) != 0)
      {
        if (v22)
        {
          if (a4)
          {
            goto LABEL_23;
          }
        }

        else if ((a4 & 1) == 0 && !((v21 ^ a3) >> 14))
        {
LABEL_23:
          sub_1004A6E14();
          __break(1u);
          break;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_24:
  v24 = *v7;
  *(*v7 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = *(v24 + 48) + 32 * a5;
  *v25 = result;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3;
  *(v25 + 24) = a4 & 1;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }
}

uint64_t sub_10020510C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100202738(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100205A74();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1002068E4(v5 + 1);
  }

  v8 = *v3;
  sub_1004A6E94();
  sub_1004A6EB4(v4);
  result = sub_1004A6F14();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

uint64_t sub_100205258(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100202988(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_100205BB4(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_100206B04(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_1004A6E94();
  sub_1004A6EB4(v7);
  result = sub_1004A6F14();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

unint64_t sub_1002053C8(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_100202BD0(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_100206D1C(v3 + 1);
LABEL_8:
      v6 = *v2;
      sub_1004A6E94();
      sub_1004A6EB4(0);
      result = sub_1004A6F14() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_100205CE4();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

void sub_1002054D8()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D4DE8, &qword_1004E5E00);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v20;
        v22[2] = v21;
        sub_1001978DC(v19, v20, v21);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_100205640()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005D4E08, &qword_1004E5E18);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 80 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[4];
        v23[3] = v18[3];
        v23[4] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x50uLL);
        result = sub_10019782C(v23, &v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}
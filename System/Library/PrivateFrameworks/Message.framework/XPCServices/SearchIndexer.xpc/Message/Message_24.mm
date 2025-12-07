uint64_t sub_100191C2C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for UnauthenticatedState(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_100191C90(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 184) = -1;
  return result;
}

uint64_t sub_100191CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Authenticator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100191D40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100191DAC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D2F38, &unk_1004DC8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100191E14(uint64_t result, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
    }
  }

  else if (a4 >> 6)
  {
    return sub_100173584(result, a2, a3, a4 & 0x3F);
  }

  else
  {
    return sub_100191E44(result, a2, a3);
  }

  return result;
}

uint64_t sub_100191E44(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    sub_10001114C(result);
  }

  return result;
}

__n128 sub_100191E90(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_100191ECC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_100191F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100191F90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 15);
  v4 = *(a1 + 19);
  v16[8] = *(a1 + 17);
  v16[9] = v4;
  v16[10] = *(a1 + 21);
  v5 = *(a1 + 7);
  v6 = *(a1 + 11);
  v16[4] = *(a1 + 9);
  v16[5] = v6;
  v16[6] = *(a1 + 13);
  v16[7] = v3;
  v7 = *(a1 + 3);
  v16[0] = *(a1 + 1);
  v16[1] = v7;
  v16[2] = *(a1 + 5);
  v16[3] = v5;
  v8 = *a2;
  v9 = *(a2 + 15);
  v10 = *(a2 + 19);
  v17[8] = *(a2 + 17);
  v17[9] = v10;
  v17[10] = *(a2 + 21);
  v11 = *(a2 + 7);
  v12 = *(a2 + 11);
  v17[4] = *(a2 + 9);
  v17[5] = v12;
  v17[6] = *(a2 + 13);
  v17[7] = v9;
  v13 = *(a2 + 3);
  v17[0] = *(a2 + 1);
  v17[1] = v13;
  v17[2] = *(a2 + 5);
  v17[3] = v11;
  if (sub_1001CE84C(v2, v8))
  {
    v14 = static ServerID.__derived_struct_equals(_:_:)(v16, v17);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_100192080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s6LoggerVMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100192140(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = _s6LoggerVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AuthenticationTask(uint64_t a1)
{
  result = qword_1005D2F98;
  if (!qword_1005D2F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100192230(uint64_t a1)
{
  _s6LoggerVMa(319);
  if (v1 <= 0x3F)
  {
    sub_1001922D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001922D4(uint64_t a1)
{
  if (!qword_1005D2FA8)
  {
    sub_10000DEFC(&unk_1005D2FB0, &qword_1004DC9D8);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D2FA8);
    }
  }
}

uint64_t sub_100192338@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *&v46 = _s6LoggerVMa(0);
  __chkstk_darwin(v46);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = v1[3];
  v13 = v1[4];
  sub_10002587C(v1, v12);
  (*(v13 + 8))(v47, v12, v13);
  v15 = sub_1001EE5E8(v14);
  v17 = v16;
  sub_100193BF0(v47);
  v18 = type metadata accessor for AuthenticationTask(0);
  sub_100193C44(v1 + *(v18 + 20), v11, _s6LoggerVMa);
  sub_100193C44(v11, v8, _s6LoggerVMa);
  sub_100193C44(v11, v5, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v19 = sub_1004A4A54();
  v20 = sub_1004A6034();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *&v44 = v18;
    v22 = v21;
    *&v43 = swift_slowAlloc();
    *&v48[0] = v43;
    *v22 = 68158466;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v41 = v15;
    v23 = v46;
    v24 = *(v46 + 20);
    v42 = v20;
    v25 = v5[v24];
    *&v45 = a1;
    sub_100193CAC(v5, _s6LoggerVMa);
    *(v22 + 10) = v25;
    *(v22 + 11) = 2082;
    v26 = *&v8[*(v23 + 20) + 4];
    sub_100193CAC(v8, _s6LoggerVMa);
    v27 = ConnectionID.debugDescription.getter(v26);
    v29 = sub_10015BA6C(v27, v28, v48);

    *(v22 + 13) = v29;
    a1 = v45;
    *(v22 + 21) = 2082;
    v30 = sub_10015BA6C(v41, v17, v48);

    *(v22 + 23) = v30;
    _os_log_impl(&_mh_execute_header, v19, v42, "[%.*hhx-%{public}s] Using authentication mechanism '%{public}s'.", v22, 0x1Fu);
    swift_arrayDestroy();

    v18 = v44;
  }

  else
  {
    sub_100193CAC(v5, _s6LoggerVMa);

    sub_100193CAC(v8, _s6LoggerVMa);
  }

  v31 = v2[6];
  if ((v31 & 0x3000000000000000) == 0x2000000000000000 && v31 == 0x2000000000000000 && !v2[5])
  {
    v32 = *(v2 + *(v18 + 24));
    if (*(v2 + *(v18 + 24)))
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    sub_100193D0C(0, 0x2000000000000000uLL);
    v2[5] = v33;
    v2[6] = 0x2000000000000000;
    v34 = v2[3];
    v35 = v2[4];
    sub_100025928(v2, v34);
    (*(v35 + 16))(v48, v32, v11, v34, v35);
    v46 = v48[1];
    v45 = v48[0];
    v44 = v48[3];
    v43 = v48[2];
    v36 = v49;
    result = sub_100193CAC(v11, _s6LoggerVMa);
    v38 = v43;
    v39 = v44;
    v40 = v46;
    *a1 = v45;
    *(a1 + 16) = v40;
    *(a1 + 32) = v38;
    *(a1 + 48) = v39;
    *(a1 + 64) = v36;
  }

  else
  {
    result = sub_1004A69A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_100192840(uint64_t a1)
{
  v2 = v1;
  v4 = _s6LoggerVMa(0);
  __chkstk_darwin(v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v13);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100193C44(a1, v15, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    return sub_100193CAC(v15, type metadata accessor for UntaggedResponse);
  }

  v16 = *v15;
  v17 = type metadata accessor for AuthenticationTask(0);
  sub_100193C44(v2 + *(v17 + 20), v12, _s6LoggerVMa);
  sub_100193C44(v12, v9, _s6LoggerVMa);
  sub_100193C44(v12, v6, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v18 = sub_1004A4A54();
  v19 = sub_1004A6034();

  if (os_log_type_enabled(v18, v19))
  {
    v44 = v19;
    v45 = v18;
    v46 = v2;
    v20 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v48 = v43;
    *v20 = 68158466;
    *(v20 + 4) = 2;
    *(v20 + 8) = 256;
    v21 = v6[*(v4 + 20)];
    sub_100193CAC(v6, _s6LoggerVMa);
    *(v20 + 10) = v21;
    *(v20 + 11) = 2082;
    v22 = *&v9[*(v4 + 20) + 4];
    sub_100193CAC(v9, _s6LoggerVMa);
    v23 = ConnectionID.debugDescription.getter(v22);
    v25 = sub_10015BA6C(v23, v24, &v48);

    *(v20 + 13) = v25;
    *(v20 + 21) = 2080;
    v26 = *(v16 + 16);
    v27 = _swiftEmptyArrayStorage;
    if (v26)
    {
      v41 = v17;
      v47 = _swiftEmptyArrayStorage;
      sub_100091A08(0, v26, 0);
      v27 = v47;
      v42 = v16;
      v28 = (v16 + 40);
      do
      {
        v29 = *(v28 - 1);
        v30 = *v28;
        v47 = v27;
        v32 = v27[2];
        v31 = v27[3];

        if (v32 >= v31 >> 1)
        {
          sub_100091A08((v31 > 1), v32 + 1, 1);
          v27 = v47;
        }

        v27[2] = v32 + 1;
        v33 = &v27[2 * v32];
        v33[4] = v29;
        v33[5] = v30;
        v28 += 4;
        --v26;
      }

      while (v26);
      v17 = v41;
      v16 = v42;
    }

    v47 = v27;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v35 = sub_1004A5614();
    v37 = v36;

    v38 = sub_10015BA6C(v35, v37, &v48);

    *(v20 + 23) = v38;
    v39 = v45;
    _os_log_impl(&_mh_execute_header, v45, v44, "[%.*hhx-%{public}s] Got capabilities during auth: %s.", v20, 0x1Fu);
    swift_arrayDestroy();

    sub_100193CAC(v12, _s6LoggerVMa);
    v2 = v46;
  }

  else
  {
    sub_100193CAC(v6, _s6LoggerVMa);

    sub_100193CAC(v9, _s6LoggerVMa);
    sub_100193CAC(v12, _s6LoggerVMa);
  }

  v40 = *(v17 + 28);

  *(v2 + v40) = v16;
  return result;
}

void sub_100192CEC(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v83 = _s6LoggerVMa(0);
  __chkstk_darwin(v83);
  v11 = (&v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v86 = &v81 - v13;
  __chkstk_darwin(v14);
  v16 = &v81 - v15;
  __chkstk_darwin(v17);
  v19 = &v81 - v18;
  __chkstk_darwin(v20);
  v22 = (&v81 - v21);
  v23 = type metadata accessor for AuthenticationTask(0);
  sub_100193C44(v5 + *(v23 + 20), v22, _s6LoggerVMa);
  sub_100193D28(a1, a2, a3 & 1);
  v24 = sub_10018E008(a1, a2, a3 & 1);
  v84 = v19;
  v85 = v11;
  v25 = v24;
  v27 = v26;
  sub_100193DF8(v24, v26, v22);
  sub_100014D40(v25, v27);
  v47 = v5[5];
  v48 = v5[6];
  v63 = (v48 >> 60) & 3;
  if (!v63)
  {
    sub_100014CEC(v5[5], v5[6]);
    sub_100193D0C(v47, v48);
    *(v5 + 5) = xmmword_1004DC9B0;
    sub_100193CAC(v22, _s6LoggerVMa);
    sub_100051270(&v101);
    v50 = v101;
    v49 = v102;
    v52 = v103;
    v51 = v104;
    v54 = v105;
    v53 = v106;
    v56 = v107;
    v55 = v108;
    v58 = v109;
    v57 = v110;
    v60 = *(&v111 + 1);
    v59 = v111;
    v61 = 1;
    goto LABEL_7;
  }

  if (v63 == 1)
  {
    swift_willThrow();
    v84 = v47;
    swift_errorRetain();
  }

  else
  {
    if (__PAIR128__(v48 - 0x2000000000000000, v47) >= 3)
    {
      v66 = v16;
      v82 = v5;
      v67 = v84;
      sub_100193C44(v22, v84, _s6LoggerVMa);
      sub_100193C44(v22, v16, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v68 = sub_1004A4A54();
      v69 = sub_1004A6024();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        LODWORD(v86) = v69;
        v71 = v70;
        v85 = swift_slowAlloc();
        *&v101 = v85;
        *v71 = 68158210;
        *(v71 + 4) = 2;
        *(v71 + 8) = 256;
        v72 = v83;
        v73 = v22;
        v74 = *(v66 + *(v83 + 20));
        sub_100193CAC(v66, _s6LoggerVMa);
        *(v71 + 10) = v74;
        v22 = v73;
        *(v71 + 11) = 2082;
        v75 = *(v67 + *(v72 + 20) + 4);
        sub_100193CAC(v67, _s6LoggerVMa);
        v76 = ConnectionID.debugDescription.getter(v75);
        v78 = sub_10015BA6C(v76, v77, &v101);

        *(v71 + 13) = v78;
        _os_log_impl(&_mh_execute_header, v68, v86, "[%.*hhx-%{public}s] Authentication plugin failed generating response", v71, 0x15u);
        sub_1000197E0(v85);
      }

      else
      {
        sub_100193CAC(v16, _s6LoggerVMa);

        sub_100193CAC(v67, _s6LoggerVMa);
      }

      v79 = v82[3];
      v80 = v82[4];
      sub_10002587C(v82, v79);
      (*(v80 + 8))(v87, v79, v80);
      sub_100193CAC(v22, _s6LoggerVMa);
      v91 = v87[2];
      v92 = v87[3];
      v93 = v87[4];
      v46 = v87[0];
      v45 = v87[1];
      goto LABEL_6;
    }

    sub_10018D6F4();
    v64 = swift_allocError();
    *v65 = v47;
    *(v65 + 8) = v48;
    *(v65 + 16) = 0;
    swift_willThrow();
    sub_100193D38(v47, v48);
    v84 = v64;
  }

  v28 = v85;
  sub_100193C44(v22, v86, _s6LoggerVMa);
  sub_100193C44(v22, v28, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v85 = v22;
  v29 = sub_1004A4A54();
  v30 = sub_1004A6014();
  v31 = v28;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v101 = v81;
    *v32 = 68158210;
    *(v32 + 4) = 2;
    *(v32 + 8) = 256;
    v33 = a4;
    v34 = v86;
    v35 = v83;
    v36 = *(v83 + 20);
    v82 = v5;
    v37 = *(v31 + v36);
    sub_100193CAC(v31, _s6LoggerVMa);
    *(v32 + 10) = v37;
    *(v32 + 11) = 2082;
    v38 = *(v34 + *(v35 + 20) + 4);
    v39 = v34;
    a4 = v33;
    sub_100193CAC(v39, _s6LoggerVMa);
    v40 = ConnectionID.debugDescription.getter(v38);
    v42 = sub_10015BA6C(v40, v41, &v101);

    *(v32 + 13) = v42;
    v5 = v82;
    _os_log_impl(&_mh_execute_header, v29, v30, "[%.*hhx-%{public}s] Caught error processing Handshake query", v32, 0x15u);
    sub_1000197E0(v81);
  }

  else
  {
    sub_100193CAC(v28, _s6LoggerVMa);

    sub_100193CAC(v86, _s6LoggerVMa);
  }

  v43 = v5[3];
  v44 = v5[4];
  sub_10002587C(v5, v43);
  (*(v44 + 8))(v88, v43, v44);

  sub_100193CAC(v85, _s6LoggerVMa);
  v91 = v88[2];
  v92 = v88[3];
  v93 = v88[4];
  v46 = v88[0];
  v45 = v88[1];
LABEL_6:
  v89 = v46;
  v90 = v45;
  *&v95 = 0;
  v94 = 0uLL;
  sub_100193BDC(&v89);
  v109 = v97;
  v110 = v98;
  v111 = v99;
  v112 = v100;
  v105 = v93;
  v106 = v94;
  v107 = v95;
  v108 = v96;
  v101 = v89;
  v102 = v90;
  v103 = v91;
  v104 = v92;
  UInt32.init(_:)(&v101);
  v47 = 0;
  v48 = 0;
  v50 = v101;
  v49 = v102;
  v52 = v103;
  v51 = v104;
  v54 = v105;
  v53 = v106;
  v56 = v107;
  v55 = v108;
  v58 = v109;
  v57 = v110;
  v60 = *(&v111 + 1);
  v59 = v111;
  v61 = -1;
LABEL_7:
  v62 = v112;
  *a4 = v47;
  *(a4 + 8) = v48;
  *(a4 + 16) = v61;
  *(a4 + 24) = v50;
  *(a4 + 40) = v49;
  *(a4 + 56) = v52;
  *(a4 + 72) = v51;
  *(a4 + 88) = v54;
  *(a4 + 104) = v53;
  *(a4 + 120) = v56;
  *(a4 + 136) = v55;
  *(a4 + 152) = v58;
  *(a4 + 168) = v57;
  *(a4 + 184) = v59;
  *(a4 + 192) = v60;
  *(a4 + 200) = v62;
}

double sub_1001934A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v60 = a2;
  v61 = a3;
  v9 = a4;
  v10 = type metadata accessor for AuthenticationTask(0);
  __chkstk_darwin(v10);
  v59 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = _s6LoggerVMa(0);
  __chkstk_darwin(v12);
  v14 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v52[-v16];
  __chkstk_darwin(v18);
  v20 = &v52[-v19];
  sub_100193C44(v6 + *(v10 + 20), &v52[-v19], _s6LoggerVMa);
  if (v9)
  {
    sub_1000110B0(a1);
    v21 = v61;

    v22 = v6[3];
    v23 = v6[4];
    sub_10002587C(v6, v22);
    (*(v23 + 8))(v86, v22, v23);
    sub_100193CAC(v20, _s6LoggerVMa);
    v64 = v86[2];
    v65 = v86[3];
    v66 = v86[4];
    v62 = v86[0];
    v63 = v86[1];
    *&v67 = a1;
    *(&v67 + 1) = v60;
    *&v68 = v21;
    sub_100193BDC(&v62);
    v82 = v70;
    v83 = v71;
    v84 = v72;
    v85 = v73;
    v78 = v66;
    v79 = v67;
    v80 = v68;
    v81 = v69;
    v74 = v62;
    v75 = v63;
    v76 = v64;
    v77 = v65;
    UInt32.init(_:)(&v74);
    v95 = v82;
    v96 = v83;
    v97 = v84;
    v98 = v85;
    v91 = v78;
    v92 = v79;
    v93 = v80;
    v94 = v81;
    v87 = v74;
    v88 = v75;
    v89 = v76;
    v90 = v77;
  }

  else
  {
    v56 = v12;
    v58 = v10;
    sub_100193C44(v20, v17, _s6LoggerVMa);
    sub_100193C44(v20, v14, _s6LoggerVMa);
    v57 = a1;
    sub_1000110B0(a1);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_100193C44(v6, v59, type metadata accessor for AuthenticationTask);
    v24 = sub_1004A4A54();
    v25 = sub_1004A6034();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v55 = v6;
      v27 = v26;
      v54 = swift_slowAlloc();
      *&v87 = v54;
      *v27 = 68158466;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      v28 = v56;
      v29 = *(v56 + 20);
      v53 = v25;
      v30 = v14[v29];
      sub_100193CAC(v14, _s6LoggerVMa);
      *(v27 + 10) = v30;
      *(v27 + 11) = 2082;
      v31 = *&v17[*(v28 + 20) + 4];
      sub_100193CAC(v17, _s6LoggerVMa);
      v32 = ConnectionID.debugDescription.getter(v31);
      v34 = sub_10015BA6C(v32, v33, &v87);

      *(v27 + 13) = v34;
      *(v27 + 21) = 2082;
      v35 = v59;
      v36 = v59[3];
      v37 = v59[4];
      sub_10002587C(v59, v36);
      (*(v37 + 8))(v86, v36, v37);
      v39 = sub_1001EE5E8(v38);
      v41 = v40;
      sub_100193BF0(v86);
      sub_100193CAC(v35, type metadata accessor for AuthenticationTask);
      v42 = sub_10015BA6C(v39, v41, &v87);

      *(v27 + 23) = v42;
      _os_log_impl(&_mh_execute_header, v24, v53, "[%.*hhx-%{public}s] Authenticated with '%{public}s'.", v27, 0x1Fu);
      swift_arrayDestroy();

      v6 = v55;

      v43 = v20;
      v44 = _s6LoggerVMa;
    }

    else
    {
      sub_100193CAC(v14, _s6LoggerVMa);

      sub_100193CAC(v17, _s6LoggerVMa);
      sub_100193CAC(v20, _s6LoggerVMa);
      v44 = type metadata accessor for AuthenticationTask;
      v43 = v59;
    }

    sub_100193CAC(v43, v44);
    v45 = *(v6 + *(v58 + 28));
    *&v62 = v57;
    *(&v62 + 1) = v60;
    *&v63 = v61;
    *(&v63 + 1) = v45;
    sub_100193BE8(&v62);
    v82 = v70;
    v83 = v71;
    v84 = v72;
    v85 = v73;
    v78 = v66;
    v79 = v67;
    v80 = v68;
    v81 = v69;
    v74 = v62;
    v75 = v63;
    v76 = v64;
    v77 = v65;
    UInt32.init(_:)(&v74);
    v95 = v82;
    v96 = v83;
    v97 = v84;
    v98 = v85;
    v91 = v78;
    v92 = v79;
    v93 = v80;
    v94 = v81;
    v87 = v74;
    v88 = v75;
    v89 = v76;
    v90 = v77;
  }

  v46 = v96;
  *(a5 + 128) = v95;
  *(a5 + 144) = v46;
  *(a5 + 160) = v97;
  *(a5 + 176) = v98;
  v47 = v92;
  *(a5 + 64) = v91;
  *(a5 + 80) = v47;
  v48 = v94;
  *(a5 + 96) = v93;
  *(a5 + 112) = v48;
  v49 = v88;
  *a5 = v87;
  *(a5 + 16) = v49;
  result = *&v89;
  v51 = v90;
  *(a5 + 32) = v89;
  *(a5 + 48) = v51;
  return result;
}

__n128 sub_100193AB4@<Q0>(uint64_t a1@<X8>)
{
  sub_100192338(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

double sub_100193B08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  sub_1001934A4(a1, a2, a3, a4, v12);
  v6 = v20;
  *(a5 + 128) = v19;
  *(a5 + 144) = v6;
  *(a5 + 160) = v21;
  *(a5 + 176) = v22;
  v7 = v16;
  *(a5 + 64) = v15;
  *(a5 + 80) = v7;
  v8 = v18;
  *(a5 + 96) = v17;
  *(a5 + 112) = v8;
  v9 = v12[1];
  *a5 = v12[0];
  *(a5 + 16) = v9;
  result = *&v13;
  v11 = v14;
  *(a5 + 32) = v13;
  *(a5 + 48) = v11;
  return result;
}

uint64_t sub_100193B84(void *a1, void *a2, uint64_t a3)
{
  if (sub_100194234(a1, a2))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100193C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100193CAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100193D0C(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 1)
  {
  }

  if (!v2)
  {
    return sub_100014D40(result, a2);
  }

  return result;
}

double sub_100193D28(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    sub_100014CEC(a1, a2);
  }

  else
  {
  }

  return result;
}

uint64_t sub_100193D38(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 1)
  {
    return swift_errorRetain();
  }

  if (!v2)
  {
    return sub_100014CEC(result, a2);
  }

  return result;
}

uint64_t sub_100193D54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100193D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100193DF8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3[5];
  v6 = v3[6];
  v7 = (v6 >> 60) & 3;
  if (!v7)
  {
    goto LABEL_18;
  }

  if (v7 == 1)
  {
    swift_errorRetain();
    return swift_willThrow();
  }

  v8 = v4;
  if (__PAIR128__(0x2000000000000000, 1) < __PAIR128__(v6, v5))
  {
    if (v6 == 0x2000000000000000 && v5 == 2)
    {
      v11 = v3[3];
      v12 = v3[4];
      v13 = v3;
      v15 = v3;
      sub_100025928(v15, v11);
      (*(v12 + 32))(a1, a2, a3, v11, v12);
      if (!v4)
      {
        v18 = v13[3];
        v19 = v13[4];
        sub_100025928(v13, v18);
        v20 = (*(v19 + 24))(v18, v19);
        if (v21 >> 60 != 15)
        {
          v43 = v20;
          v44 = v21;
          result = sub_100193D0C(v13[5], v13[6]);
          v13[5] = v43;
          v13[6] = v44;
          return result;
        }

        sub_100194AFC();
        v8 = swift_allocError();
        swift_willThrow();
      }

LABEL_25:
      v32 = v13[5];
      v33 = v13[6];
      swift_errorRetain();
      sub_100193D0C(v32, v33);
      v13[5] = v8;
      v13[6] = 0x1000000000000000;
      return swift_willThrow();
    }

LABEL_18:
    sub_10018D6F4();
    swift_allocError();
    *v22 = v5;
    *(v22 + 8) = v6;
    *(v22 + 16) = 0;
    sub_100193D38(v5, v6);
    return swift_willThrow();
  }

  if (!(v5 | v6 ^ 0x2000000000000000))
  {
    goto LABEL_18;
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_27;
    }

    v24 = *(a1 + 16);
    v25 = *(a1 + 24);
    goto LABEL_23;
  }

  if (v9)
  {
    v24 = a1;
    v25 = a1 >> 32;
LABEL_23:
    if (v24 == v25)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v26 = v3[3];
  v27 = v3[4];
  v13 = v3;
  v29 = v3;
  sub_100025928(v29, v26);
  (*(v27 + 32))(a1, a2, a3, v26, v27);
  if (v4)
  {
    goto LABEL_25;
  }

  v3 = v13;
LABEL_27:
  v34 = v3[3];
  v35 = v3[4];
  v36 = v3;
  sub_100025928(v3, v34);
  v37 = (*(v35 + 24))(v34, v35);
  if (v4)
  {
LABEL_30:
    v39 = v3[5];
    v40 = v36[6];
    swift_errorRetain();
    sub_100193D0C(v39, v40);
    v36[5] = v8;
    v36[6] = 0x1000000000000000;
    return swift_willThrow();
  }

  if (v38 >> 60 == 15)
  {
    sub_100194AFC();
    v8 = swift_allocError();
    swift_willThrow();
    goto LABEL_30;
  }

  v41 = v37;
  v42 = v38;
  result = sub_100193D0C(v36[5], v36[6]);
  v36[5] = v41;
  v36[6] = v42;
  return result;
}

BOOL sub_100194128(unint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = (v5 >> 60) & 3;
  if (!v8)
  {
    return (v7 & 0x3000000000000000) == 0 && sub_10003A194(v4, v5, v6, v7);
  }

  if (v8 == 1)
  {
    return (v7 & 0x3000000000000000) == 0x1000000000000000;
  }

  if (__PAIR128__(0x2000000000000000, 1) < __PAIR128__(v5, v4))
  {
    v9 = v7 & 0x3000000000000000;
    if (v5 == 0x2000000000000000 && v4 == 2)
    {
      if (v9 != 0x2000000000000000 || v6 != 2)
      {
        return 0;
      }
    }

    else if (v9 != 0x2000000000000000 || v6 != 3)
    {
      return 0;
    }
  }

  else if (v4 | v5 ^ 0x2000000000000000)
  {
    if ((v7 & 0x3000000000000000) != 0x2000000000000000 || v6 != 1)
    {
      return 0;
    }
  }

  else if ((v7 & 0x3000000000000000) != 0x2000000000000000 || v6)
  {
    return 0;
  }

  return v7 == 0x2000000000000000;
}

uint64_t sub_100194234(void *a1, void *a2)
{
  v4 = a1[5];
  v3 = a1[6];
  v5 = a2[5];
  v6 = a2[6];
  v7 = (v3 >> 60) & 3;
  if (!v7)
  {
    if ((v6 & 0x3000000000000000) != 0)
    {
      goto LABEL_63;
    }

    v8 = a1;
    v9 = sub_10003A194(a1[5], v3, v5, v6);
    a1 = v8;
    if (!v9)
    {
      goto LABEL_63;
    }

    goto LABEL_27;
  }

  if (v7 == 1)
  {
    if ((v6 & 0x3000000000000000) != 0x1000000000000000)
    {
      goto LABEL_63;
    }

LABEL_27:
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1;
    sub_10002587C(a1, v12);
    (*(v13 + 8))(&v68, v12, v13);
    v15 = a2[3];
    v16 = a2[4];
    sub_10002587C(a2, v15);
    (*(v16 + 8))(&v75, v15, v16);
    v17 = v69;
    v18 = v70;
    if ((v73 & 0x1000000000000000) != 0)
    {
      v85 = v68;
      v86 = v69;
      v87 = v70;
      v88 = v71;
      v89 = v72;
      v90 = v73 & 0xEFFFFFFFFFFFFFFFLL;
      v91 = v74;
      if ((v79 & 0x1000000000000000) != 0)
      {
        v81[0] = v75;
        v81[1] = v76;
        v81[2] = v77;
        v82 = v78;
        v83 = v79 & 0xEFFFFFFFFFFFFFFFLL;
        v84 = v80;
        v20 = sub_1001EFF14(&v85, v81);
        goto LABEL_37;
      }
    }

    else if ((v79 & 0x1000000000000000) == 0)
    {
      v19 = v76;
      if (v68 == v75 || (sub_1004A6D34() & 1) != 0)
      {
        if (__PAIR128__(v18, v17) == v19)
        {
          sub_100193BF0(&v75);
          sub_100193BF0(&v68);
LABEL_38:
          sub_100104D00(v14, v66);
          sub_100104D00(a2, v67);
          sub_10000C9C0(&qword_1005D2FF0, &qword_1004DCB58);
          if (swift_dynamicCast())
          {
            v52 = v62;
            v53 = v63;
            v54 = v64;
            v55 = v65;
            v48 = v58;
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v46 = v56;
            v47 = v57;
            if (swift_dynamicCast())
            {
              v32 = v42;
              v33 = v43;
              v34 = v44;
              v35 = v45;
              v28 = v38;
              v29 = v39;
              v30 = v40;
              v31 = v41;
              v26 = v36;
              v27 = v37;
              if ((*(&v49 + 1) & 0x1000000000000000) != 0)
              {
                v96 = v46;
                v97 = v47;
                v98 = v48;
                *&v99 = v49;
                *(&v99 + 1) = *(&v49 + 1) & 0xEFFFFFFFFFFFFFFFLL;
                v100 = v50;
                if ((*(&v29 + 1) & 0x1000000000000000) == 0 || (v101 = v26, v102 = v27, v103 = v28, *&v104 = v29, *(&v104 + 1) = *(&v29 + 1) & 0xEFFFFFFFFFFFFFFFLL, v105 = v30, (sub_1001EFF14(&v96, &v101) & 1) == 0))
                {
LABEL_68:
                  v10 = 0;
                  goto LABEL_69;
                }
              }

              else if ((HIBYTE(v29) & 0x10) != 0 || v46 != v26 && (sub_1004A6D34() & 1) == 0 || v47 != v27 && (sub_1004A6D34() & 1) == 0)
              {
                goto LABEL_68;
              }

              v92[2] = v53;
              v92[3] = v54;
              v93 = v55;
              v92[0] = v51;
              v92[1] = v52;
              v94[2] = v33;
              v94[3] = v34;
              v95 = v35;
              v94[1] = v32;
              v94[0] = v31;
              v10 = sub_10020FCF0(v92, v94);
LABEL_69:
              sub_100194AA8(&v26);
              sub_100194AA8(&v46);
LABEL_75:
              sub_1000197E0(v67);
              sub_1000197E0(v66);
              return v10 & 1;
            }

            sub_100194AA8(&v46);
          }

          if (swift_dynamicCast())
          {
            v48 = v58;
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v46 = v56;
            v47 = v57;
            if (swift_dynamicCast())
            {
              v28 = v38;
              v29 = v39;
              v30 = v40;
              v31 = v41;
              v26 = v36;
              v27 = v37;
              v98 = v48;
              v99 = v49;
              v100 = v50;
              v101 = v36;
              v96 = v46;
              v97 = v47;
              v103 = v38;
              v104 = v39;
              v105 = v40;
              v102 = v37;
              if (sub_1001EFF14(&v96, &v101))
              {
                v22 = v31.u64[1];
                if (*(&v51 + 1) >> 60 == 15)
                {
                  sub_100194A54(&v46);
                  sub_100194A54(&v26);
                  goto LABEL_59;
                }

                if (v31.i64[1] >> 60 != 15)
                {
                  v24 = sub_10003A194(v51, *(&v51 + 1), v31.i64[0], v31.u64[1]);
                  sub_100194A54(&v26);
                  sub_100194A54(&v46);
                  if (v24)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_74;
                }
              }

              sub_100194A54(&v26);
              sub_100194A54(&v46);
              goto LABEL_74;
            }

            sub_100194A54(&v46);
          }

          if (swift_dynamicCast())
          {
            v48 = v58;
            v49 = v59;
            v50 = v60;
            v51 = v61;
            v46 = v56;
            v47 = v57;
            if (swift_dynamicCast())
            {
              v28 = v38;
              v29 = v39;
              v30 = v40;
              v31 = v41;
              v26 = v36;
              v27 = v37;
              v98 = v48;
              v99 = v49;
              v100 = v50;
              v101 = v36;
              v96 = v46;
              v97 = v47;
              v103 = v38;
              v104 = v39;
              v105 = v40;
              v102 = v37;
              if (sub_1001EFF14(&v96, &v101))
              {
                v22 = v31.u64[1];
                if (*(&v51 + 1) >> 60 == 15)
                {
                  sub_100194A00(&v46);
                  sub_100194A00(&v26);
LABEL_59:
                  if (v22 >> 60 == 15)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_74;
                }

                if (v31.i64[1] >> 60 != 15)
                {
                  v25 = sub_10003A194(v51, *(&v51 + 1), v31.i64[0], v31.u64[1]);
                  sub_100194A00(&v26);
                  sub_100194A00(&v46);
                  if (v25)
                  {
LABEL_79:
                    v10 = 1;
                    goto LABEL_75;
                  }

LABEL_74:
                  v10 = 0;
                  goto LABEL_75;
                }
              }

              sub_100194A00(&v26);
              sub_100194A00(&v46);
              goto LABEL_74;
            }

            sub_100194A00(&v46);
          }

          sub_100194998(v66);
LABEL_63:
          v10 = 0;
          return v10 & 1;
        }

        v20 = sub_1004A6D34();
LABEL_37:
        v21 = v20;
        sub_100193BF0(&v75);
        sub_100193BF0(&v68);
        if ((v21 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_38;
      }
    }

    sub_100193BF0(&v75);
    sub_100193BF0(&v68);
    goto LABEL_63;
  }

  if (__PAIR128__(0x2000000000000000, 1) < __PAIR128__(v3, v4))
  {
    if (v3 == 0x2000000000000000 && v4 == 2)
    {
      if ((v6 & 0x3000000000000000) != 0x2000000000000000)
      {
        goto LABEL_63;
      }

      v10 = 0;
      if (v5 != 2)
      {
        return v10 & 1;
      }
    }

    else
    {
      if ((v6 & 0x3000000000000000) != 0x2000000000000000)
      {
        goto LABEL_63;
      }

      v10 = 0;
      if (v5 != 3)
      {
        return v10 & 1;
      }
    }
  }

  else if (v4 | v3 ^ 0x2000000000000000)
  {
    if ((v6 & 0x3000000000000000) != 0x2000000000000000)
    {
      goto LABEL_63;
    }

    v10 = 0;
    if (v5 != 1)
    {
      return v10 & 1;
    }
  }

  else
  {
    if ((v6 & 0x3000000000000000) != 0x2000000000000000)
    {
      goto LABEL_63;
    }

    v10 = 0;
    if (v5)
    {
      return v10 & 1;
    }
  }

  if (v6 == 0x2000000000000000)
  {
    goto LABEL_27;
  }

  return v10 & 1;
}

uint64_t sub_100194998(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D2FF8, &unk_1004DCB60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100194AFC()
{
  result = qword_1005D3000;
  if (!qword_1005D3000)
  {
    result = swift_getWitnessTable(aY_24, &_s5StateV33ImplementationRequestsSecondQueryVN, v0, v1);
    atomic_store(result, &qword_1005D3000);
  }

  return result;
}

uint64_t sub_100194B84(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_100194C54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for Authenticator(uint64_t a1)
{
  result = qword_1005D3068;
  if (!qword_1005D3068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100194D50(uint64_t a1)
{
  sub_100194E54();
  if (v1 <= 0x3F)
  {
    sub_100194EF8(319, &qword_1005D3080, sub_100194EA4, &type metadata for MechanismKind);
    if (v2 <= 0x3F)
    {
      sub_100194EF8(319, &qword_1005D3090, sub_100194F58, &type metadata for AuthenticationFailure);
      if (v3 <= 0x3F)
      {
        sub_100194FAC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100194E54()
{
  if (!qword_1005D3078)
  {
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D3078);
    }
  }
}

unint64_t sub_100194EA4()
{
  result = qword_1005D3088;
  if (!qword_1005D3088)
  {
    result = swift_getWitnessTable(byte_1004E30A8, &type metadata for MechanismKind, v0, v1);
    atomic_store(result, &qword_1005D3088);
  }

  return result;
}

void sub_100194EF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1004A5DC4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100194F58()
{
  result = qword_1005D3098;
  if (!qword_1005D3098)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticationFailure, &type metadata for AuthenticationFailure, v0, v1);
    atomic_store(result, &qword_1005D3098);
  }

  return result;
}

void sub_100194FAC(uint64_t a1)
{
  if (!qword_1005D30A0)
  {
    type metadata accessor for AuthenticationTask(255);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D30A0);
    }
  }
}

void sub_100195004()
{
  v1 = *(v0 + 24);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = 1 << *(*(v0 + 24) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v20 = *(v0 + 24);

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 3;
  while (1)
  {
    v13 = v12;
    v14 = v11;
    v15 = v10;
    if (!v7)
    {
      break;
    }

    v16 = v7;
LABEL_11:
    v7 = (v16 - 1) & v16;
    if (v13 >= 4)
    {
      sub_1000110B0(v10);

      sub_100191E44(v10, v11, v13);
      v12 = v13;
    }

    else
    {
      v18 = (*(v20 + 48) + 24 * (__clz(__rbit64(v16)) | (v9 << 6)));
      v19 = v18[2];
      if (v19 >= 4)
      {
        v10 = *v18;
        v11 = v18[1];
        sub_1000110B0(*v18);

        sub_100191E44(v15, v14, v13);
        sub_1000110B0(v10);

        sub_100191E44(v10, v11, v19);
        v12 = v19;
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        if (v13)
        {
          if (v19)
          {
            v10 = 0;
            v11 = 0;
            v12 = 1;
            if (v13 != 1)
            {
              if (v19 == 1)
              {
                sub_100191E44(v15, v14, v13);
                v10 = 0;
                v11 = 0;
                v12 = 1;
              }

              else
              {
                v10 = 0;
                v11 = 0;
                v12 = 2;
                if (v13 != 2)
                {
                  v10 = 0;
                  v11 = 0;
                  v12 = 3;
                  if (v19 == 2)
                  {
                    sub_100191E44(v15, v14, v13);
                    v10 = 0;
                    v11 = 0;
                    v12 = 2;
                  }
                }
              }
            }
          }

          else
          {
            sub_100191E44(v15, v14, v13);
            v10 = 0;
            v11 = 0;
            v12 = 0;
          }
        }
      }
    }
  }

  while (1)
  {
    v17 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v17 >= v8)
    {

      return;
    }

    v16 = *(v3 + 8 * v17);
    ++v9;
    if (v16)
    {
      v9 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100195250@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
  __chkstk_darwin(v7 - 8);
  v9 = v23 - v8;
  v10 = _s6LoggerVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100195528(a2);
  if (v3)
  {
    sub_1001976B0(a2, _s6LoggerVMa);
    return sub_100197710(a1);
  }

  else
  {
    v14 = a1[1];
    v15 = sub_1001EF73C(*a1);
    v16 = sub_1001EF8B0(v14, v15);

    v23[0] = v16;

    sub_100196044(v23);

    v25 = v23[0];
    v17 = Capability.saslIR.unsafeMutableAddressor();
    v18 = v17[1];
    v19 = v17[2];
    v20 = *(v17 + 24);
    v23[0] = *v17;
    v23[1] = v18;
    v23[2] = v19;
    v24 = v20;
    __chkstk_darwin(v17);
    v23[-2] = v23;

    LOBYTE(v14) = sub_100215C70(sub_100197740, &v23[-4], v14);
    sub_100197710(a1);

    sub_100190B00(a2, v12);
    *(a3 + 16) = _swiftEmptySetSingleton;
    *(a3 + 24) = _swiftEmptySetSingleton;
    v21 = *(type metadata accessor for Authenticator(0) + 32);
    v22 = type metadata accessor for AuthenticationTask(0);
    (*(*(v22 - 8) + 56))(a3 + v21, 1, 1, v22);
    *(a3 + 8) = v14 & 1;
    *a3 = v25;
    sub_100195B78(v12, v9);
    sub_1001976B0(a2, _s6LoggerVMa);
    sub_1001976B0(v12, _s6LoggerVMa);
    return sub_100197760(v9, a3 + v21);
  }
}

void sub_100195528(uint64_t a1)
{
  v3 = _s6LoggerVMa(0);
  __chkstk_darwin(v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  v21 = *(v1 + 16);
  v22 = *(v1 + 56);
  if (v22 != 1)
  {
    if (v21 >> 62 == 1)
    {
      v34 = *(v1 + 40);
      if (!v22)
      {
        v42 = *(v1 + 16);
        if (v34 == 1)
        {
          if (v42 == 772)
          {
            return;
          }
        }

        else if ((v42 - 771) < 2)
        {
          return;
        }

        goto LABEL_28;
      }

      v35 = *(v1 + 32);
      v36 = *(v1 + 16);
      if (v34 == 1)
      {
        if (v36 != 772)
        {
          goto LABEL_28;
        }
      }

      else if ((v36 - 773) < 0xFFFFFFFE)
      {
        goto LABEL_28;
      }

      if (v35 && (*(v1 + 48) == *(v1 + 24) && v22 == v35 || (sub_1004A6D34() & 1) != 0))
      {
        return;
      }
    }

LABEL_28:
    sub_100190B00(a1, v8);
    sub_100190B00(a1, v5);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v44 = sub_1004A4A54();
    v45 = sub_1004A6014();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v54 = v47;
      *v46 = 68158210;
      *(v46 + 4) = 2;
      *(v46 + 8) = 256;
      v48 = v5[*(v3 + 20)];
      sub_1001976B0(v5, _s6LoggerVMa);
      *(v46 + 10) = v48;
      *(v46 + 11) = 2082;
      v49 = *&v8[*(v3 + 20) + 4];
      sub_1001976B0(v8, _s6LoggerVMa);
      v50 = ConnectionID.debugDescription.getter(v49);
      v52 = sub_10015BA6C(v50, v51, &v54);

      *(v46 + 13) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "[%.*hhx-%{public}s] Connection security does not fulfil requirements for sending credentials.", v46, 0x15u);
      sub_1000197E0(v47);
    }

    else
    {
      sub_1001976B0(v5, _s6LoggerVMa);

      sub_1001976B0(v8, _s6LoggerVMa);
    }

    sub_100197888();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v23 = v21 >> 62;
  if (v23)
  {
    if (v23 == 1)
    {
      return;
    }

    sub_100190B00(a1, &v53 - v19);
    sub_100190B00(a1, v17);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v24 = sub_1004A4A54();
    v25 = sub_1004A6034();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54 = v27;
      *v26 = 68158210;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v28 = v17[*(v3 + 20)];
      sub_1001976B0(v17, _s6LoggerVMa);
      *(v26 + 10) = v28;
      *(v26 + 11) = 2082;
      v29 = *&v20[*(v3 + 20) + 4];
      sub_1001976B0(v20, _s6LoggerVMa);
      v30 = ConnectionID.debugDescription.getter(v29);
      v32 = sub_10015BA6C(v30, v31, &v54);

      *(v26 + 13) = v32;
      v33 = "[%.*hhx-%{public}s] Sending credentials over insecure connection.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v24, v25, v33, v26, 0x15u);
      sub_1000197E0(v27);

      return;
    }

    sub_1001976B0(v17, _s6LoggerVMa);

    v43 = v20;
  }

  else
  {
    sub_100190B00(a1, v14);
    sub_100190B00(a1, v11);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v24 = sub_1004A4A54();
    v25 = sub_1004A6034();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54 = v27;
      *v26 = 68158210;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v37 = v11[*(v3 + 20)];
      sub_1001976B0(v11, _s6LoggerVMa);
      *(v26 + 10) = v37;
      *(v26 + 11) = 2082;
      v38 = *&v14[*(v3 + 20) + 4];
      sub_1001976B0(v14, _s6LoggerVMa);
      v39 = ConnectionID.debugDescription.getter(v38);
      v41 = sub_10015BA6C(v39, v40, &v54);

      *(v26 + 13) = v41;
      v33 = "[%.*hhx-%{public}s] Sending credentials over insecure connection (opportunistic TLS).";
      goto LABEL_13;
    }

    sub_1001976B0(v11, _s6LoggerVMa);

    v43 = v14;
  }

  sub_1001976B0(v43, _s6LoggerVMa);
}

uint64_t sub_100195B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AuthenticationTask(0);
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  v15 = v2;
  sub_100195F08(sub_1001977D0, v9, v23);
  if ((~v25 & 0x3000000000000000) != 0 || (v27 & 0x1000000000000000) == 0)
  {
    v16 = v23[0];
    v17 = v23[1];
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v11 = *(v2 + 8);
    sub_100190B00(a1, &v8[v5[5]]);
    sub_1001EE7D4(v8);
    sub_100025F40(v23, &qword_1005D2F38, &unk_1004DC8E0);
    *(v8 + 40) = xmmword_1004DCCC0;
    *&v8[v5[7]] = 0;
    v8[v5[8]] = 2;
    v8[v5[6]] = v11;
    sub_10019764C(v8, a2);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return (*(v6 + 56))(a2, v12, 1, v5);
}

uint64_t sub_100195D34(__int128 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v24[-1] - v13;
  if (a4 && (, sub_1000110B0(a2), v15 = sub_10018E934(a2, a3, a4), v17 != 4))
  {
    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 3;
  }

  sub_10019782C(a1, v25);
  sub_1001FF838(v25, a1);
  sub_100193BF0(v25);
  sub_1001978DC(v18, v19, v20);
  sub_1001FF578(v24, v18, v19, v20);
  sub_100191E44(v24[0], v24[1], v24[2]);
  sub_100195B78(a5, v14);
  sub_100191E44(v18, v19, v20);
  v21 = type metadata accessor for Authenticator(0);
  return sub_100197760(v14, v6 + *(v21 + 32));
}

BOOL sub_100195EB0(_OWORD *a1, uint64_t a2)
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return (sub_1001ADD98(v5, *(a2 + 16)) & 1) == 0;
}

uint64_t sub_100195F08@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = (a2 + 32);
    while (1)
    {
      v8 = v7[3];
      v23 = v7[2];
      v24 = v8;
      v25 = v7[4];
      v9 = v7[1];
      v22[0] = *v7;
      v22[1] = v9;
      v19 = v23;
      v20 = v8;
      v21 = v25;
      v17 = v22[0];
      v18 = v9;
      sub_10019782C(v22, &v12);
      result = v6(&v17);
      if (v3)
      {
        v14 = v19;
        v15 = v20;
        v16 = v21;
        v12 = v17;
        v13 = v18;
        return sub_100193BF0(&v12);
      }

      if (result)
      {
        break;
      }

      v14 = v19;
      v15 = v20;
      v16 = v21;
      v12 = v17;
      v13 = v18;
      result = sub_100193BF0(&v12);
      v7 += 5;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v10 = v20;
    *(a3 + 32) = v19;
    *(a3 + 48) = v10;
    *(a3 + 64) = v21;
    v11 = v18;
    *a3 = v17;
    *(a3 + 16) = v11;
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = xmmword_1004DCCD0;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 56) = 0x1000000000000000;
  }

  return result;
}

Swift::Int sub_100196044(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001EDFE8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1001960B0(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001960B0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1004A6CC4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1004A5C64();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100196400(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1001961A8(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_1001961A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 80 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 56);
      if ((v9 & 0x1000000000000000) != 0)
      {
        v21 = (*(v8 + 72) >> 59) & 6 | ((v9 & 0x2000000000000000) != 0);
        if (v21 <= 2)
        {
          if (v21)
          {
            if (v21 == 1)
            {
              v10 = 1;
              v11 = 1;
              v12 = 1;
              v13 = 1;
              v14 = 1;
              result = 2;
            }

            else
            {
              v10 = 1;
              v11 = 1;
              v12 = 1;
              v13 = 1;
              v14 = 1;
              result = 1;
            }
          }

          else
          {
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v10 = 1;
            v11 = 1;
            result = 5;
          }
        }

        else if (v21 > 4)
        {
          if (v21 == 5)
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v10 = 1;
            result = 6;
          }

          else
          {
            v10 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            result = 7;
          }
        }

        else if (v21 == 3)
        {
          v13 = 0;
          v10 = 1;
          v11 = 1;
          v12 = 1;
          v14 = 1;
          result = 3;
        }

        else
        {
          v12 = 0;
          v13 = 0;
          v10 = 1;
          v11 = 1;
          v14 = 1;
          result = 4;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        result = 8;
      }

      v15 = *(v8 - 24);
      if ((v15 & 0x1000000000000000) == 0)
      {
        break;
      }

      v22 = (*(v8 - 8) >> 59) & 6 | ((v15 & 0x2000000000000000) != 0);
      if (v22 <= 2)
      {
        if (v22)
        {
          if (v22 == 1)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

LABEL_10:
          if (result >= v16)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v22 > 4)
      {
        if (v22 == 5)
        {
          if ((v11 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if ((v10 & 1) == 0)
        {
LABEL_4:
          ++a3;
          v5 += 80;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v22 == 3)
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((v12 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v17 = (v8 - 80);
      v25 = *(v8 + 32);
      v26 = *(v8 + 48);
      v27 = *(v8 + 64);
      v23 = *v8;
      v24 = *(v8 + 16);
      v18 = *(v8 - 32);
      *(v8 + 32) = *(v8 - 48);
      *(v8 + 48) = v18;
      *(v8 + 64) = *(v8 - 16);
      v19 = *(v8 - 64);
      *v8 = *(v8 - 80);
      *(v8 + 16) = v19;
      v17[3] = v26;
      v17[4] = v27;
      v17[1] = v24;
      v17[2] = v25;
      v8 -= 80;
      *v17 = v23;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    v16 = 8;
    goto LABEL_10;
  }

  return result;
}

unint64_t sub_100196400(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v102 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_170:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_208;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_172:
      v96 = *(v9 + 2);
      if (v96 >= 2)
      {
        while (*a3)
        {
          v97 = *&v9[16 * v96];
          v98 = *&v9[16 * v96 + 24];
          sub_100196D98((*a3 + 80 * v97), (*a3 + 80 * *&v9[16 * v96 + 16]), (*a3 + 80 * v98), v5);
          if (v6)
          {
          }

          if (v98 < v97)
          {
            goto LABEL_195;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_100141810(v9);
          }

          if (v96 - 2 >= *(v9 + 2))
          {
            goto LABEL_196;
          }

          v99 = &v9[16 * v96];
          *v99 = v97;
          *(v99 + 1) = v98;
          result = sub_100141784(v96 - 1);
          v96 = *(v9 + 2);
          if (v96 <= 1)
          {
          }
        }

        goto LABEL_206;
      }
    }

LABEL_202:
    result = sub_100141810(v9);
    v9 = result;
    goto LABEL_172;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *a3;
      v12 = *a3 + 80 * v8;
      v13 = *(v12 + 56);
      if ((v13 & 0x1000000000000000) != 0)
      {
        v14 = qword_1004DCE48[(*(v12 + 72) >> 59) & 6 | (v13 >> 61) & 1];
      }

      else
      {
        v14 = 8;
      }

      v15 = v11 + 80 * v10;
      v16 = *(v15 + 56);
      if ((v16 & 0x1000000000000000) != 0)
      {
        v17 = qword_1004DCE48[(*(v15 + 72) >> 59) & 6 | (v16 >> 61) & 1];
      }

      else
      {
        v17 = 8;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v18 = (v11 + 80 * v10 + 232);
        while (1)
        {
          v20 = *(v18 - 2);
          if ((v20 & 0x1000000000000000) != 0)
          {
            v21 = (*v18 >> 59) & 6 | ((v20 & 0x2000000000000000) != 0);
            if (v21 <= 2)
            {
              if (v21)
              {
                v26 = v21 == 1;
                v21 = 0;
                v22 = 0;
                v23 = 0;
                v24 = 0;
                v25 = 2;
                if (!v26)
                {
                  v25 = 1;
                }

                result = 0;
                if ((v13 & 0x1000000000000000) == 0)
                {
LABEL_13:
                  v19 = 8;
                  goto LABEL_14;
                }
              }

              else
              {
                v22 = 0;
                v23 = 1;
                v24 = 1;
                result = 1;
                v25 = 5;
                if ((v13 & 0x1000000000000000) == 0)
                {
                  goto LABEL_13;
                }
              }
            }

            else if (v21 > 4)
            {
              v26 = v21 == 5;
              v22 = 1;
              v21 = v21 != 5;
              v23 = 1;
              v24 = 1;
              v25 = 6;
              if (!v26)
              {
                v25 = 7;
              }

              result = 1;
              if ((v13 & 0x1000000000000000) == 0)
              {
                goto LABEL_13;
              }
            }

            else
            {
              v26 = v21 == 3;
              v21 = 0;
              v22 = 0;
              v23 = !v26;
              v24 = 1;
              v25 = 3;
              if (!v26)
              {
                v25 = 4;
              }

              result = 0;
              if ((v13 & 0x1000000000000000) == 0)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
            v21 = 1;
            v22 = 1;
            v23 = 1;
            v24 = 1;
            result = 1;
            v25 = 8;
            if ((v13 & 0x1000000000000000) == 0)
            {
              goto LABEL_13;
            }
          }

          v27 = (*(v18 - 10) >> 59) & 6 | ((v13 & 0x2000000000000000) != 0);
          if (v27 > 2)
          {
            if (v27 > 4)
            {
              if (v27 == 5)
              {
                if ((((v14 < v17) ^ v22) & 1) == 0)
                {
                  break;
                }
              }

              else if ((((v14 < v17) ^ v21) & 1) == 0)
              {
                break;
              }
            }

            else if (v27 == 3)
            {
              if ((((v14 < v17) ^ v24) & 1) == 0)
              {
                break;
              }
            }

            else if ((((v14 < v17) ^ v23) & 1) == 0)
            {
              break;
            }

            goto LABEL_15;
          }

          if (!v27)
          {
            if ((((v14 < v17) ^ result) & 1) == 0)
            {
              break;
            }

            goto LABEL_15;
          }

          v26 = v27 == 1;
          v19 = 2;
          if (!v26)
          {
            v19 = 1;
          }

LABEL_14:
          if (v14 < v17 == v25 >= v19)
          {
            break;
          }

LABEL_15:
          ++v8;
          v18 += 10;
          v13 = v20;
          if (v7 == v8)
          {
            v8 = v7;
            break;
          }
        }
      }

      if (v14 < v17)
      {
        if (v8 < v10)
        {
          goto LABEL_199;
        }

        if (v10 < v8)
        {
          v28 = 80 * v8 - 80;
          v29 = 80 * v10;
          v5 = v8;
          v100 = v10;
          do
          {
            if (v10 != --v5)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_205;
              }

              v30 = (v31 + v28);
              v108 = *(v31 + v29 + 32);
              v110 = *(v31 + v29 + 48);
              v112 = *(v31 + v29 + 64);
              v104 = *(v31 + v29);
              v106 = *(v31 + v29 + 16);
              result = memmove((v31 + v29), (v31 + v28), 0x50uLL);
              v30[2] = v108;
              v30[3] = v110;
              v30[4] = v112;
              *v30 = v104;
              v30[1] = v106;
            }

            ++v10;
            v28 -= 80;
            v29 += 80;
          }

          while (v10 < v5);
          v7 = a3[1];
          v10 = v100;
        }
      }
    }

    if (v8 >= v7)
    {
      goto LABEL_119;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_198;
    }

    if (v8 - v10 >= a4)
    {
      goto LABEL_119;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_200;
    }

    if (v10 + a4 < v7)
    {
      v7 = v10 + a4;
    }

    if (v7 < v10)
    {
LABEL_201:
      __break(1u);
      goto LABEL_202;
    }

    if (v8 == v7)
    {
      goto LABEL_119;
    }

    v32 = *a3;
    v33 = *a3 + 80 * v8;
    v34 = v10 - v8;
LABEL_77:
    v35 = v34;
    v36 = v33;
LABEL_78:
    v37 = *(v36 + 56);
    if ((v37 & 0x1000000000000000) != 0)
    {
      v49 = (*(v36 + 72) >> 59) & 6 | ((v37 & 0x2000000000000000) != 0);
      if (v49 <= 2)
      {
        if (v49)
        {
          if (v49 == 1)
          {
            v38 = 1;
            v39 = 1;
            v40 = 1;
            v41 = 1;
            v42 = 1;
            result = 2;
          }

          else
          {
            v38 = 1;
            v39 = 1;
            v40 = 1;
            v41 = 1;
            v42 = 1;
            result = 1;
          }
        }

        else
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v38 = 1;
          v39 = 1;
          result = 5;
        }
      }

      else if (v49 > 4)
      {
        if (v49 == 5)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v38 = 1;
          result = 6;
        }

        else
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          result = 7;
        }
      }

      else if (v49 == 3)
      {
        v41 = 0;
        v38 = 1;
        v39 = 1;
        v40 = 1;
        v42 = 1;
        result = 3;
      }

      else
      {
        v40 = 0;
        v41 = 0;
        v38 = 1;
        v39 = 1;
        v42 = 1;
        result = 4;
      }
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      result = 8;
    }

    v43 = *(v36 - 24);
    if ((v43 & 0x1000000000000000) == 0)
    {
      v44 = 8;
      goto LABEL_82;
    }

    v50 = (*(v36 - 8) >> 59) & 6 | ((v43 & 0x2000000000000000) != 0);
    if (v50 <= 2)
    {
      break;
    }

    if (v50 <= 4)
    {
      if (v50 == 3)
      {
        if ((v41 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      else if ((v40 & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_83;
    }

    if (v50 == 5)
    {
      if ((v39 & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_83;
    }

    if (v38)
    {
      goto LABEL_83;
    }

LABEL_76:
    ++v8;
    v33 += 80;
    --v34;
    if (v8 != v7)
    {
      goto LABEL_77;
    }

    v8 = v7;
LABEL_119:
    if (v8 < v10)
    {
      goto LABEL_197;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 2);
    v51 = *(v9 + 3);
    v52 = v5 + 1;
    if (v5 >= v51 >> 1)
    {
      result = sub_100085288((v51 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v52;
    v53 = &v9[16 * v5];
    *(v53 + 4) = v10;
    *(v53 + 5) = v8;
    v54 = *v102;
    if (!*v102)
    {
      goto LABEL_207;
    }

    if (v5)
    {
      while (2)
      {
        v55 = v52 - 1;
        if (v52 >= 4)
        {
          v60 = &v9[16 * v52 + 32];
          v61 = *(v60 - 64);
          v62 = *(v60 - 56);
          v66 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          if (v66)
          {
            goto LABEL_184;
          }

          v65 = *(v60 - 48);
          v64 = *(v60 - 40);
          v66 = __OFSUB__(v64, v65);
          v58 = v64 - v65;
          v59 = v66;
          if (v66)
          {
            goto LABEL_185;
          }

          v67 = &v9[16 * v52];
          v69 = *v67;
          v68 = *(v67 + 1);
          v66 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v66)
          {
            goto LABEL_187;
          }

          v66 = __OFADD__(v58, v70);
          v71 = v58 + v70;
          if (v66)
          {
            goto LABEL_190;
          }

          if (v71 >= v63)
          {
            v89 = &v9[16 * v55 + 32];
            v91 = *v89;
            v90 = *(v89 + 1);
            v66 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v66)
            {
              goto LABEL_194;
            }

            if (v58 < v92)
            {
              v55 = v52 - 2;
            }
          }

          else
          {
LABEL_139:
            if (v59)
            {
              goto LABEL_186;
            }

            v72 = &v9[16 * v52];
            v74 = *v72;
            v73 = *(v72 + 1);
            v75 = __OFSUB__(v73, v74);
            v76 = v73 - v74;
            v77 = v75;
            if (v75)
            {
              goto LABEL_189;
            }

            v78 = &v9[16 * v55 + 32];
            v80 = *v78;
            v79 = *(v78 + 1);
            v66 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v66)
            {
              goto LABEL_192;
            }

            if (__OFADD__(v76, v81))
            {
              goto LABEL_193;
            }

            if (v76 + v81 < v58)
            {
              goto LABEL_153;
            }

            if (v58 < v81)
            {
              v55 = v52 - 2;
            }
          }
        }

        else
        {
          if (v52 == 3)
          {
            v56 = *(v9 + 4);
            v57 = *(v9 + 5);
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
            goto LABEL_139;
          }

          v82 = &v9[16 * v52];
          v84 = *v82;
          v83 = *(v82 + 1);
          v66 = __OFSUB__(v83, v84);
          v76 = v83 - v84;
          v77 = v66;
LABEL_153:
          if (v77)
          {
            goto LABEL_188;
          }

          v85 = &v9[16 * v55];
          v87 = *(v85 + 4);
          v86 = *(v85 + 5);
          v66 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v66)
          {
            goto LABEL_191;
          }

          if (v88 < v76)
          {
            break;
          }
        }

        v5 = v55 - 1;
        if (v55 - 1 >= v52)
        {
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
          goto LABEL_201;
        }

        if (!*a3)
        {
          goto LABEL_204;
        }

        v93 = *&v9[16 * v5 + 32];
        v94 = *&v9[16 * v55 + 40];
        sub_100196D98((*a3 + 80 * v93), (*a3 + 80 * *&v9[16 * v55 + 32]), (*a3 + 80 * v94), v54);
        if (v6)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_182;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100141810(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_183;
        }

        v95 = &v9[16 * v5];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        result = sub_100141784(v55);
        v52 = *(v9 + 2);
        if (v52 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_170;
    }
  }

  if (v50)
  {
    if (v50 == 1)
    {
      v44 = 2;
    }

    else
    {
      v44 = 1;
    }

LABEL_82:
    if (result >= v44)
    {
      goto LABEL_76;
    }

    goto LABEL_83;
  }

  if ((v42 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_83:
  if (v32)
  {
    v45 = (v36 - 80);
    v109 = *(v36 + 32);
    v111 = *(v36 + 48);
    v113 = *(v36 + 64);
    v105 = *v36;
    v107 = *(v36 + 16);
    v46 = *(v36 - 32);
    *(v36 + 32) = *(v36 - 48);
    *(v36 + 48) = v46;
    *(v36 + 64) = *(v36 - 16);
    v47 = *(v36 - 64);
    *v36 = *(v36 - 80);
    *(v36 + 16) = v47;
    v45[3] = v111;
    v45[4] = v113;
    v45[1] = v107;
    v45[2] = v109;
    v36 -= 80;
    *v45 = v105;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_76;
    }

    goto LABEL_78;
  }

  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
  return result;
}

uint64_t sub_100196D98(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = (a2 - __dst) / 80;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 80;
  if (v9 < v11)
  {
    if (__src != __dst || &__dst[80 * v9] <= __src)
    {
      memmove(__src, __dst, 80 * v9);
    }

    v12 = &v4[80 * v9];
    if (v8 < 80 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_127;
    }

    while (1)
    {
      v13 = *(v6 + 7);
      if ((v13 & 0x1000000000000000) != 0)
      {
        v23 = (*(v6 + 9) >> 59) & 6 | ((v13 & 0x2000000000000000) != 0);
        if (v23 <= 2)
        {
          v18 = 1;
          if (v23 == 1)
          {
            v27 = 2;
          }

          else
          {
            v27 = 1;
          }

          v14 = 1;
          v15 = 1;
          v16 = v23 != 0;
          v17 = v23 != 0;
          if (!v23)
          {
            v18 = 0;
          }

          v22 = v23 == 0;
          v19 = 5;
          if (!v22)
          {
            v19 = v27;
          }

          v20 = *(v4 + 7);
          if ((v20 & 0x1000000000000000) == 0)
          {
LABEL_9:
            if (v19 >= 8)
            {
              goto LABEL_48;
            }

            goto LABEL_10;
          }
        }

        else
        {
          v14 = v23 == 5;
          if (v23 == 5)
          {
            v24 = 6;
          }

          else
          {
            v24 = 7;
          }

          v16 = v23 == 3;
          if (v23 == 3)
          {
            v25 = 3;
          }

          else
          {
            v25 = 4;
          }

          if (v23 > 4)
          {
            v15 = 0;
          }

          else
          {
            v14 = 1;
            v15 = 1;
          }

          if (v23 > 4)
          {
            v16 = 0;
          }

          v17 = 0;
          v18 = v23 <= 4;
          if (v23 <= 4)
          {
            v19 = v25;
          }

          else
          {
            v19 = v24;
          }

          v20 = *(v4 + 7);
          if ((v20 & 0x1000000000000000) == 0)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 8;
        v20 = *(v4 + 7);
        if ((v20 & 0x1000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v26 = (*(v4 + 9) >> 59) & 6 | ((v20 & 0x2000000000000000) != 0);
      if (v26 <= 2)
      {
        if (v26)
        {
          if (v26 == 1)
          {
            v28 = 2;
          }

          else
          {
            v28 = 1;
          }

          if (v19 >= v28)
          {
LABEL_48:
            v21 = v4;
            v22 = v7 == v4;
            v4 += 80;
            if (v22)
            {
              goto LABEL_50;
            }

LABEL_49:
            memmove(v7, v21, 0x50uLL);
            goto LABEL_50;
          }
        }

        else if (!v18)
        {
          goto LABEL_48;
        }
      }

      else if (v26 > 4)
      {
        if (v26 == 5)
        {
          if ((v15 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else if (!v14)
        {
          goto LABEL_48;
        }
      }

      else if (v26 == 3)
      {
        if (!v17)
        {
          goto LABEL_48;
        }
      }

      else if (!v16)
      {
        goto LABEL_48;
      }

LABEL_10:
      v21 = v6;
      v22 = v7 == v6;
      v6 += 80;
      if (!v22)
      {
        goto LABEL_49;
      }

LABEL_50:
      v7 += 80;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_127;
      }
    }
  }

  if (__src != a2 || &a2[80 * v11] <= __src)
  {
    memmove(__src, a2, 80 * v11);
  }

  v12 = &v4[80 * v11];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_67:
    v5 -= 80;
    while (1)
    {
      v29 = *(v12 - 3);
      if ((v29 & 0x1000000000000000) != 0)
      {
        v37 = (*(v12 - 1) >> 59) & 6 | ((v29 & 0x2000000000000000) != 0);
        if (v37 <= 2)
        {
          v34 = 1;
          if (v37 == 1)
          {
            v41 = 2;
          }

          else
          {
            v41 = 1;
          }

          v30 = 1;
          v31 = 1;
          v32 = v37 != 0;
          v33 = v37 != 0;
          if (!v37)
          {
            v34 = 0;
          }

          v22 = v37 == 0;
          v35 = 5;
          if (!v22)
          {
            v35 = v41;
          }

          v36 = *(v6 - 3);
          if ((v36 & 0x1000000000000000) == 0)
          {
LABEL_71:
            if (v35 < 8)
            {
              goto LABEL_119;
            }

            goto LABEL_117;
          }
        }

        else
        {
          v30 = v37 == 5;
          if (v37 == 5)
          {
            v38 = 6;
          }

          else
          {
            v38 = 7;
          }

          v32 = v37 == 3;
          if (v37 == 3)
          {
            v39 = 3;
          }

          else
          {
            v39 = 4;
          }

          if (v37 > 4)
          {
            v31 = 0;
          }

          else
          {
            v30 = 1;
            v31 = 1;
          }

          if (v37 > 4)
          {
            v32 = 0;
          }

          v33 = 0;
          v34 = v37 <= 4;
          if (v37 <= 4)
          {
            v35 = v39;
          }

          else
          {
            v35 = v38;
          }

          v36 = *(v6 - 3);
          if ((v36 & 0x1000000000000000) == 0)
          {
            goto LABEL_71;
          }
        }
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 8;
        v36 = *(v6 - 3);
        if ((v36 & 0x1000000000000000) == 0)
        {
          goto LABEL_71;
        }
      }

      v40 = (*(v6 - 1) >> 59) & 6 | ((v36 & 0x2000000000000000) != 0);
      if (v40 <= 2)
      {
        if (v40)
        {
          if (v40 == 1)
          {
            v42 = 2;
          }

          else
          {
            v42 = 1;
          }

          if (v35 < v42)
          {
LABEL_119:
            v44 = v6 - 80;
            if (v5 + 80 != v6)
            {
              memmove(v5, v6 - 80, 0x50uLL);
            }

            if (v12 <= v4 || (v6 -= 80, v44 <= v7))
            {
              v6 = v44;
              break;
            }

            goto LABEL_67;
          }
        }

        else if (v34)
        {
          goto LABEL_119;
        }
      }

      else if (v40 > 4)
      {
        if (v40 == 5)
        {
          if (v31)
          {
            goto LABEL_119;
          }
        }

        else if (v30)
        {
          goto LABEL_119;
        }
      }

      else if (v40 == 3)
      {
        if (v33)
        {
          goto LABEL_119;
        }
      }

      else if (v32)
      {
        goto LABEL_119;
      }

LABEL_117:
      v43 = (v12 - 80);
      if (v5 + 80 != v12)
      {
        memmove(v5, v12 - 80, 0x50uLL);
      }

      v5 -= 80;
      v12 -= 80;
      if (v43 <= v4)
      {
        v12 = v43;
        break;
      }
    }
  }

LABEL_127:
  v45 = (v12 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[80 * v45])
  {
    memmove(v6, v4, 80 * v45);
  }

  return 1;
}

BOOL sub_100197290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationTask(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v23 - v9);
  v11 = sub_10000C9C0(&qword_1005D30E0, &unk_1004DCD20);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  if ((sub_1001CED24(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || (sub_1001B08EC(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_1001B260C(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for Authenticator(0) + 32);
  v15 = *(v11 + 48);
  sub_1001975DC(a1 + v14, v13);
  sub_1001975DC(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_100025F40(v13, &qword_1005D3008, &qword_1004DCCE0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1001975DC(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1001976B0(v10, type metadata accessor for AuthenticationTask);
LABEL_10:
    v18 = &qword_1005D30E0;
    v19 = &unk_1004DCD20;
LABEL_11:
    sub_100025F40(v13, v18, v19);
    return 0;
  }

  sub_10019764C(&v13[v15], v7);
  if ((sub_100194234(v10, v7) & 1) == 0)
  {
    sub_1001976B0(v7, type metadata accessor for AuthenticationTask);
    sub_1001976B0(v10, type metadata accessor for AuthenticationTask);
    v18 = &qword_1005D3008;
    v19 = &qword_1004DCCE0;
    goto LABEL_11;
  }

  v20 = *(v4 + 24);
  v21 = *(v10 + v20);
  v22 = *(v7 + v20);
  sub_1001976B0(v7, type metadata accessor for AuthenticationTask);
  sub_1001976B0(v10, type metadata accessor for AuthenticationTask);
  sub_100025F40(v13, &qword_1005D3008, &qword_1004DCCE0);
  return v21 == v22;
}

uint64_t sub_1001975DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019764C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationTask(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001976B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100197760(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_1001977D0(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  v6[4] = a1[4];
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return (sub_1001ADD98(v6, *(v2 + 16)) & 1) == 0;
}

unint64_t sub_100197888()
{
  result = qword_1005D30E8;
  if (!qword_1005D30E8)
  {
    result = swift_getWitnessTable("џ\n", &type metadata for Authenticator.Configuration.TLSRequirementsNotMet, v0, v1);
    atomic_store(result, &qword_1005D30E8);
  }

  return result;
}

double sub_1001978DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 4)
  {
    sub_1000110B0(a1);
  }

  return result;
}

unint64_t sub_100197930(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_100197948(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019796C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1001979B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100197A14()
{
  v1 = v0;
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v2);
  v4 = &v15 - v3;
  v5 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100197BAC(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 15)
  {
    v8 = *(v7 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48));
    sub_100020950(v7, v4);
    v9 = MessageIdentifierSet.count.getter();
    v7 = sub_100197C10(v8);

    result = sub_100121C40(v4);
    v11 = v9 * v7;
    if ((v9 * v7) >> 64 == (v9 * v7) >> 63)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  result = sub_10016D98C(v7);
  v11 = 0;
LABEL_5:
  v12 = __OFADD__(v11, 5);
  v13 = v11 + 5;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v14 = ((v13 - 1) * 0x6666666666666667) >> 64;
    return (v14 >> 1) + (v14 >> 63);
  }

  return result;
}

uint64_t sub_100197BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100197C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = 0;
  v5 = a1 + 64;
  while (2)
  {
    v6 = (v5 + 40 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_38;
      }

      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6 | (*(v6 + 4) << 32);
      v11 = v10 >> 37;
      if (v10 >> 37 != 6)
      {
        break;
      }

      v12 = *(v6 - 4);
      v13 = v8 | *(v6 - 3) | v9;
      if (v10 == 0xC000000000 && v12 == 3 && v13 == 0)
      {
        goto LABEL_29;
      }

      v16 = v10 == 0xC000000000 && v12 == 6;
      if (v16 && v13 == 0)
      {
        goto LABEL_29;
      }

LABEL_4:
      v6 += 10;
      if (v4 == v1)
      {
        return result;
      }
    }

    if (v11 != 1)
    {
      if (v11 == 3)
      {
        goto LABEL_29;
      }

      goto LABEL_4;
    }

    if ((v9 & 0xFE) != 0 && (v8 - 1) >= 2)
    {
LABEL_29:
      v18 = __OFADD__(result, 5);
      result += 5;
      if (!v18)
      {
        goto LABEL_30;
      }

LABEL_39:
      __break(1u);
      return result;
    }

    v18 = __OFADD__(result++, 1);
    if (v18)
    {
      __break(1u);
      return result;
    }

LABEL_30:
    if (v4 != v1)
    {
      continue;
    }

    return result;
  }
}

double sub_100197D20@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 5;
  return result;
}

double sub_100197D38@<D0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1)
  {
    *&v10 = 0;
    v9 = 7uLL;
    BYTE8(v10) = -64;
    sub_100197E60(&v9);
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v21 = v9;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    UInt32.init(_:)(&v21);
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
  }

  else
  {
    sub_100051270(&v33);
  }

  v3 = v42;
  *(a2 + 128) = v41;
  *(a2 + 144) = v3;
  *(a2 + 160) = v43;
  *(a2 + 176) = v44;
  v4 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v4;
  v5 = v40;
  *(a2 + 96) = v39;
  *(a2 + 112) = v5;
  v6 = v34;
  *a2 = v33;
  *(a2 + 16) = v6;
  result = *&v35;
  v8 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_100197E70(uint64_t a1)
{
  result = sub_1004A4C04();
  if (v2 <= 0x3F)
  {
    result = _s6LoggerVMa(319);
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_100197F88()
{
  v0 = sub_1004A6074();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004A6064();
  __chkstk_darwin(v4);
  v5 = sub_1004A5274();
  __chkstk_darwin(v5 - 8);
  sub_10019A8E4(0, &qword_1005D3248, OS_dispatch_queue_ptr);
  sub_1004A5254();
  v8[1] = _swiftEmptyArrayStorage;
  sub_1001996CC(v6);
  sub_10000C9C0(&qword_1005D3250, &qword_1004F5CA0);
  sub_100199724();
  sub_1004A6544();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = sub_1004A6094();
  qword_1005D30F0 = result;
  return result;
}

uint64_t *sub_1001981A0()
{
  v1 = *v0;
  v2 = qword_1005DDFA8;
  v3 = sub_1004A4C04();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_100190CD4(v0 + qword_1005DDFB8);
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  return v0;
}

uint64_t sub_100198284()
{
  sub_1001981A0();

  return swift_deallocClassInstance();
}

void sub_1001982F4()
{
  type metadata accessor for CertUITrustManager();
  swift_allocObject();
  CertUITrustManager.init()();
  qword_1005D30F8 = v0;
}

uint64_t sub_10019835C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v66[1] = a6;
  v67 = a5;
  v9 = _s6LoggerVMa(0);
  __chkstk_darwin(v9);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v66 - v13;
  __chkstk_darwin(v15);
  v17 = v66 - v16;
  __chkstk_darwin(v18);
  v20 = v66 - v19;
  __chkstk_darwin(v21);
  v23 = v66 - v22;
  __chkstk_darwin(v24);
  v26 = v66 - v25;
  if (a1)
  {
    if (a1 == 1)
    {
      sub_100190B00(a2, v20);
      sub_100190B00(a2, v17);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v27 = sub_1004A4A54();
      v28 = sub_1004A6014();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v68 = v30;
        *v29 = 68158210;
        *(v29 + 4) = 2;
        *(v29 + 8) = 256;
        v31 = v17[*(v9 + 20)];
        sub_100190CD4(v17);
        *(v29 + 10) = v31;
        *(v29 + 11) = 2082;
        v32 = *&v20[*(v9 + 20) + 4];
        sub_100190CD4(v20);
        v33 = ConnectionID.debugDescription.getter(v32);
        v35 = sub_10015BA6C(v33, v34, &v68);

        *(v29 + 13) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "[%.*hhx-%{public}s] [Prompt] User allowed untrusted certificate(s) for session.", v29, 0x15u);
        sub_1000197E0(v30);
      }

      else
      {
        sub_100190CD4(v17);

        sub_100190CD4(v20);
      }
    }

    else
    {
      sub_100190B00(a2, v14);
      sub_100190B00(a2, v11);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v45 = sub_1004A4A54();
      v46 = sub_1004A6014();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v68 = v48;
        *v47 = 68158210;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        v49 = v11[*(v9 + 20)];
        sub_100190CD4(v11);
        *(v47 + 10) = v49;
        *(v47 + 11) = 2082;
        v50 = *&v14[*(v9 + 20) + 4];
        sub_100190CD4(v14);
        v51 = ConnectionID.debugDescription.getter(v50);
        v53 = sub_10015BA6C(v51, v52, &v68);

        *(v47 + 13) = v53;
        _os_log_impl(&_mh_execute_header, v45, v46, "[%.*hhx-%{public}s] [Prompt] User allowed untrusted certificate(s) permanently.", v47, 0x15u);
        sub_1000197E0(v48);
      }

      else
      {
        sub_100190CD4(v11);

        sub_100190CD4(v14);
      }

      v60 = *(a3 + 16);
      v61 = objc_allocWithZone(NSNumber);
      v62 = v60;
      v63 = [v61 initWithBool:1];
      v64 = sub_1004A5734();
      [v62 setAccountProperty:v63 forKey:v64];
    }

    v59 = 1;
  }

  else
  {
    sub_100190B00(a2, v66 - v25);
    sub_100190B00(a2, v23);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v36 = sub_1004A4A54();
    v37 = sub_1004A6014();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68 = v39;
      *v38 = 68158210;
      *(v38 + 4) = 2;
      *(v38 + 8) = 256;
      v40 = v23[*(v9 + 20)];
      sub_100190CD4(v23);
      *(v38 + 10) = v40;
      *(v38 + 11) = 2082;
      v41 = *&v26[*(v9 + 20) + 4];
      sub_100190CD4(v26);
      v42 = ConnectionID.debugDescription.getter(v41);
      v44 = sub_10015BA6C(v42, v43, &v68);

      *(v38 + 13) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "[%.*hhx-%{public}s] [Prompt] User denied untrusted certificate(s).", v38, 0x15u);
      sub_1000197E0(v39);
    }

    else
    {
      sub_100190CD4(v23);

      sub_100190CD4(v26);
    }

    v54 = *(a3 + 16);
    v55 = objc_allocWithZone(NSNumber);
    v56 = v54;
    v57 = [v55 initWithBool:0];
    v58 = sub_1004A5734();
    [v56 setAccountProperty:v57 forKey:v58];

    v59 = 0;
  }

  return v67(v59);
}

uint64_t sub_100198974(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a6;
  v26 = a3;
  v10 = a5;
  v11 = a4;
  v27 = a2;
  v12 = a1;
  v13 = _s6LoggerVMa(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004A53F4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1005D2D60 != -1)
  {
    swift_once();
  }

  v20 = qword_1005D30F0;
  *v19 = qword_1005D30F0;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v21 = v20;
  LOBYTE(v20) = sub_1004A5404();
  result = (*(v17 + 8))(v19, v16);
  if (v20)
  {
    sub_100190B00(a8, v15);

    v23 = sub_100199A58(v11, v12, v10, v25, a7, v15);
    return v27(v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100198B60()
{
  v1 = _s6LoggerVMa(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + 16) isDirty])
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    sub_100190B00(v0 + OBJC_IVAR____TtCVE15IMAP2ConnectionO16IMAP2Persistence16CertificateTrust29DefaultVerifierImplementationP33_F342119D05A6F1A070C6FAB1999158A515AccountAndStore_logger, aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v8 = swift_allocObject();
    sub_1001993A4(v4, v8 + v7);
    aBlock[4] = sub_100199408;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100199118;
    aBlock[3] = &unk_1005A48D0;
    v9 = _Block_copy(aBlock);
    v10 = v6;
    v11 = v5;

    [v10 saveVerifiedAccount:v11 withCompletionHandler:v9];
    _Block_release(v9);
  }

  sub_100190CD4(v0 + OBJC_IVAR____TtCVE15IMAP2ConnectionO16IMAP2Persistence16CertificateTrust29DefaultVerifierImplementationP33_F342119D05A6F1A070C6FAB1999158A515AccountAndStore_logger);
  return v0;
}

void sub_100198D30(char a1, uint64_t a2, uint64_t a3)
{
  v6 = _s6LoggerVMa(0);
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      sub_100190B00(a3, &v39 - v16);
      sub_100190B00(a3, v14);
      swift_errorRetain();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      swift_errorRetain();
      v18 = sub_1004A4A54();
      v19 = sub_1004A6014();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v40 = v22;
        *v20 = 68158466;
        *(v20 + 4) = 2;
        *(v20 + 8) = 256;
        v23 = v14[*(v6 + 20)];
        sub_100190CD4(v14);
        *(v20 + 10) = v23;
        *(v20 + 11) = 2082;
        v24 = *&v17[*(v6 + 20) + 4];
        sub_100190CD4(v17);
        v25 = ConnectionID.debugDescription.getter(v24);
        v27 = sub_10015BA6C(v25, v26, &v40);

        *(v20 + 13) = v27;
        *(v20 + 21) = 2112;
        v28 = sub_1004A4264();
        *(v20 + 23) = v28;
        *v21 = v28;
        _os_log_impl(&_mh_execute_header, v18, v19, "[%.*hhx-%{public}s] Failed to save account: %@", v20, 0x1Fu);
        sub_100190D30(v21);

        sub_1000197E0(v22);

        return;
      }

      sub_100190CD4(v14);

      v38 = v17;
    }

    else
    {
      sub_100190B00(a3, v11);
      sub_100190B00(a3, v8);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v29 = sub_1004A4A54();
      v30 = sub_1004A6014();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v40 = v32;
        *v31 = 68158210;
        *(v31 + 4) = 2;
        *(v31 + 8) = 256;
        v33 = v8[*(v6 + 20)];
        sub_100190CD4(v8);
        *(v31 + 10) = v33;
        *(v31 + 11) = 2082;
        v34 = *&v11[*(v6 + 20) + 4];
        sub_100190CD4(v11);
        v35 = ConnectionID.debugDescription.getter(v34);
        v37 = sub_10015BA6C(v35, v36, &v40);

        *(v31 + 13) = v37;
        _os_log_impl(&_mh_execute_header, v29, v30, "[%.*hhx-%{public}s] Failed to save account.", v31, 0x15u);
        sub_1000197E0(v32);

        return;
      }

      sub_100190CD4(v8);

      v38 = v11;
    }

    sub_100190CD4(v38);
  }
}

void sub_100199118(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100199190()
{
  sub_100198B60();

  return swift_deallocClassInstance();
}

uint64_t _s29DefaultVerifierImplementationV15AccountAndStoreCMa(uint64_t a1)
{
  result = qword_1005D31B0;
  if (!qword_1005D31B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100199238(uint64_t a1)
{
  result = _s6LoggerVMa(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001992D8()
{
  v1 = *(_s6LoggerVMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1004A4A74();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001993A4(uint64_t a1, uint64_t a2)
{
  v4 = _s6LoggerVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100199408(char a1, uint64_t a2)
{
  v5 = *(_s6LoggerVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100198D30(a1, a2, v6);
}

uint64_t sub_100199488(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1001994A0()
{
  v1 = sub_1004A5734();
  v2 = [v0 accountPropertyForKey:v1];

  if (!v2)
  {
    return 0;
  }

  sub_1004A64E4();
  swift_unknownObjectRelease();
  sub_10019A8D4(v7, &v6);
  sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v3 = [v5 BOOLValue];

  return v3;
}

uint64_t sub_100199598()
{
  v1 = sub_1004A5734();
  v2 = [v0 accountPropertyForKey:v1];

  if (!v2)
  {
    return 1;
  }

  sub_1004A64E4();
  swift_unknownObjectRelease();
  sub_10019A8D4(v7, &v6);
  sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
  if (!swift_dynamicCast())
  {
    return 1;
  }

  v3 = [v5 BOOLValue];

  return v3;
}

uint64_t sub_100199690(int a1, uint64_t (*a2)(uint64_t))
{
  if (a1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * (a1 == 2);
  }

  return a2(v2);
}

unint64_t sub_1001996CC(__n128 a1)
{
  result = qword_1005D50B0;
  if (!qword_1005D50B0)
  {
    v4 = sub_1004A6064();
    result = swift_getWitnessTable(&protocol conformance descriptor for OS_dispatch_queue.Attributes, v4, v1, v2);
    atomic_store(result, &qword_1005D50B0);
  }

  return result;
}

unint64_t sub_100199724()
{
  result = qword_1005D50C0;
  if (!qword_1005D50C0)
  {
    v3 = sub_10000DEFC(&qword_1005D3250, &qword_1004F5CA0);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005D50C0);
  }

  return result;
}

uint64_t sub_100199788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s6LoggerVMa(0);
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  if (a2)
  {
    v15 = v12;
    v16 = [objc_allocWithZone(ACAccountStore) init];
    v17 = sub_1004A5734();
    v18 = [v16 accountWithIdentifier:v17];

    if (v18)
    {
      sub_100190B00(a3, v14);
      _s29DefaultVerifierImplementationV15AccountAndStoreCMa(0);
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v16;
      sub_1001993A4(v14, v19 + OBJC_IVAR____TtCVE15IMAP2ConnectionO16IMAP2Persistence16CertificateTrust29DefaultVerifierImplementationP33_F342119D05A6F1A070C6FAB1999158A515AccountAndStore_logger);
      return v19;
    }

    sub_100190B00(a3, v10);
    sub_100190B00(a3, v7);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v21 = sub_1004A4A54();
    v22 = sub_1004A6014();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 68158210;
      *(v23 + 4) = 2;
      *(v23 + 8) = 256;
      v25 = v7[*(v15 + 20)];
      sub_100190CD4(v7);
      *(v23 + 10) = v25;
      *(v23 + 11) = 2082;
      v26 = *&v10[*(v15 + 20) + 4];
      sub_100190CD4(v10);
      v27 = ConnectionID.debugDescription.getter(v26);
      v29 = sub_10015BA6C(v27, v28, &v31);

      *(v23 + 13) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%.*hhx-%{public}s] Unable to get account.", v23, 0x15u);
      sub_1000197E0(v24);
    }

    else
    {
      sub_100190CD4(v7);

      sub_100190CD4(v10);
    }
  }

  return 0;
}

uint64_t sub_100199A58(unsigned __int8 a1, int a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v159 = a5;
  v160 = a6;
  LODWORD(v158) = a2;
  v7 = a3;
  v157 = _s6LoggerVMa(0);
  __chkstk_darwin(v157);
  v9 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v148 - v11;
  __chkstk_darwin(v13);
  v151 = &v148 - v14;
  __chkstk_darwin(v15);
  v152 = &v148 - v16;
  __chkstk_darwin(v17);
  v149 = &v148 - v18;
  __chkstk_darwin(v19);
  v150 = &v148 - v20;
  __chkstk_darwin(v21);
  v153 = &v148 - v22;
  __chkstk_darwin(v23);
  v154 = &v148 - v24;
  __chkstk_darwin(v25);
  v27 = &v148 - v26;
  __chkstk_darwin(v28);
  v156 = &v148 - v29;
  __chkstk_darwin(v30);
  v32 = &v148 - v31;
  __chkstk_darwin(v33);
  v155 = &v148 - v34;
  v35 = sub_1004A4A74();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  __chkstk_darwin(v40);
  __chkstk_darwin(v41);
  __chkstk_darwin(v42);
  __chkstk_darwin(&v148 - v43);
  v49 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      if (v7 == 772)
      {
        goto LABEL_4;
      }

LABEL_10:

      v68 = v160;
      (*(v36 + 16))(v38, v160, v35);
      sub_100190B00(v68, v12);
      sub_100190B00(v68, v9);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v69 = sub_1004A4A54();
      v70 = sub_1004A6014();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v159 = v35;
        v161 = v158;
        *v71 = 68158210;
        *(v71 + 4) = 2;
        *(v71 + 8) = 256;
        v72 = v157;
        v73 = v9[*(v157 + 20)];
        sub_100190CD4(v9);
        *(v71 + 10) = v73;
        *(v71 + 11) = 2082;
        v74 = *&v12[*(v72 + 20) + 4];
        sub_100190CD4(v12);
        v75 = ConnectionID.debugDescription.getter(v74);
        v77 = sub_10015BA6C(v75, v76, &v161);

        *(v71 + 13) = v77;
        _os_log_impl(&_mh_execute_header, v69, v70, "[%.*hhx-%{public}s] TLS policy not met.", v71, 0x15u);
        sub_1000197E0(v158);

        sub_100190CD4(v68);
        (*(v36 + 8))(v38, v159);
      }

      else
      {
        sub_100190CD4(v9);

        sub_100190CD4(v68);
        sub_100190CD4(v12);
        (*(v36 + 8))(v38, v35);
      }

      return 1;
    }

    if ((v7 - 771) > 1)
    {
      goto LABEL_10;
    }
  }

  else if ((v7 - 771) >= 2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v50 = &v148 - v45;
  v51 = v44;
  v52 = v48;
  v53 = v47;
  v54 = v46;
  sub_10000C9C0(&qword_1005D3258, &qword_1004DCFF0);
  if (v158)
  {
    if (v158 == 4)
    {

      v79 = v36;
      v80 = v51;
      v81 = v51;
      v82 = v160;
      (*(v36 + 16))(v81, v160, v35);
      v83 = v156;
      sub_100190B00(v82, v156);
      sub_100190B00(v82, v27);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v84 = sub_1004A4A54();
      v85 = sub_1004A6014();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v159 = v35;
        v88 = v87;
        v161 = v87;
        *v86 = 68158210;
        *(v86 + 4) = 2;
        *(v86 + 8) = 256;
        v89 = v157;
        v90 = *(v157 + 20);
        v158 = v80;
        v91 = v27[v90];
        sub_100190CD4(v27);
        *(v86 + 10) = v91;
        *(v86 + 11) = 2082;
        v92 = *(v83 + *(v89 + 20) + 4);
        sub_100190CD4(v83);
        v93 = ConnectionID.debugDescription.getter(v92);
        v95 = sub_10015BA6C(v93, v94, &v161);

        *(v86 + 13) = v95;
        _os_log_impl(&_mh_execute_header, v84, v85, "[%.*hhx-%{public}s] Fatal trust failure.", v86, 0x15u);
        sub_1000197E0(v88);

        sub_100190CD4(v82);
        (*(v79 + 8))(v158, v159);
      }

      else
      {
        sub_100190CD4(v27);

        sub_100190CD4(v82);
        sub_100190CD4(v83);
        (*(v36 + 8))(v80, v35);
      }

      return 1;
    }

    if (v158 == 1)
    {

      v55 = v50;
      v56 = v160;
      (*(v36 + 16))(v50, v160, v35);
      v57 = v155;
      sub_100190B00(v56, v155);
      sub_100190B00(v56, v32);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v58 = sub_1004A4A54();
      v59 = sub_1004A6014();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v161 = v158;
        *v60 = 68158210;
        *(v60 + 4) = 2;
        *(v60 + 8) = 256;
        v61 = v157;
        v62 = *(v157 + 20);
        v159 = v35;
        v63 = v32[v62];
        sub_100190CD4(v32);
        *(v60 + 10) = v63;
        *(v60 + 11) = 2082;
        v64 = *(v57 + *(v61 + 20) + 4);
        sub_100190CD4(v57);
        v65 = ConnectionID.debugDescription.getter(v64);
        v67 = sub_10015BA6C(v65, v66, &v161);

        *(v60 + 13) = v67;
        _os_log_impl(&_mh_execute_header, v58, v59, "[%.*hhx-%{public}s] Trust denied.", v60, 0x15u);
        sub_1000197E0(v158);

        sub_100190CD4(v56);
        (*(v36 + 8))(v55, v159);
      }

      else
      {
        sub_100190CD4(v32);

        sub_100190CD4(v56);
        sub_100190CD4(v57);
        (*(v36 + 8))(v55, v35);
      }

      return 1;
    }

    if (v49 <= 1u)
    {

      v96 = v36;
      v97 = *(v36 + 16);
      v98 = v52;
      v99 = v160;
      v100 = v35;
      v97(v52, v160, v35);
      v101 = v154;
      sub_100190B00(v99, v154);
      v102 = v153;
      sub_100190B00(v99, v153);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v103 = sub_1004A4A54();
      v104 = sub_1004A6014();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v159 = v98;
        v107 = v106;
        v161 = v106;
        *v105 = 68158210;
        *(v105 + 4) = 2;
        *(v105 + 8) = 256;
        v108 = v157;
        v109 = v102;
        v110 = *(v102 + *(v157 + 20));
        sub_100190CD4(v109);
        *(v105 + 10) = v110;
        *(v105 + 11) = 2082;
        v111 = *(v101 + *(v108 + 20) + 4);
        sub_100190CD4(v101);
        v112 = ConnectionID.debugDescription.getter(v111);
        v114 = v100;
        v115 = sub_10015BA6C(v112, v113, &v161);

        *(v105 + 13) = v115;
        _os_log_impl(&_mh_execute_header, v103, v104, "[%.*hhx-%{public}s] Trust evaluation failed.", v105, 0x15u);
        sub_1000197E0(v107);

        sub_100190CD4(v99);
        (*(v96 + 8))(v159, v114);
        return 1;
      }

      sub_100190CD4(v102);

      sub_100190CD4(v99);
      v132 = v101;
      goto LABEL_35;
    }

    v116 = v160;
    v96 = v36;
    v100 = v35;
    switch(v158)
    {
      case 2u:

        (*(v36 + 16))(v53, v116, v35);
        v133 = v150;
        sub_100190B00(v116, v150);
        v134 = v149;
        sub_100190B00(v116, v149);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v135 = sub_1004A4A54();
        v136 = sub_1004A6034();
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          v159 = v53;
          v139 = v138;
          v161 = v138;
          *v137 = 68158210;
          *(v137 + 4) = 2;
          *(v137 + 8) = 256;
          v140 = v157;
          v141 = v134;
          v142 = *(v134 + *(v157 + 20));
          sub_100190CD4(v141);
          *(v137 + 10) = v142;
          *(v137 + 11) = 2082;
          v143 = *(v133 + *(v140 + 20) + 4);
          sub_100190CD4(v133);
          v144 = ConnectionID.debugDescription.getter(v143);
          v146 = v100;
          v147 = sub_10015BA6C(v144, v145, &v161);

          *(v137 + 13) = v147;
          _os_log_impl(&_mh_execute_header, v135, v136, "[%.*hhx-%{public}s] Unspecified trust result.", v137, 0x15u);
          sub_1000197E0(v139);

          sub_100190CD4(v116);
          (*(v96 + 8))(v159, v146);
        }

        else
        {
          sub_100190CD4(v134);

          sub_100190CD4(v116);
          sub_100190CD4(v133);
          (*(v96 + 8))(v53, v35);
        }

        return 0;
      case 5u:

        v98 = v54;
        (*(v36 + 16))(v54, v116, v35);
        v117 = v152;
        sub_100190B00(v116, v152);
        v118 = v151;
        sub_100190B00(v116, v151);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v119 = sub_1004A4A54();
        v120 = sub_1004A6014();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v159 = v98;
          v123 = v122;
          v161 = v122;
          *v121 = 68158210;
          *(v121 + 4) = 2;
          *(v121 + 8) = 256;
          v124 = v157;
          v125 = v118;
          v126 = *(v118 + *(v157 + 20));
          sub_100190CD4(v125);
          *(v121 + 10) = v126;
          *(v121 + 11) = 2082;
          v127 = *(v117 + *(v124 + 20) + 4);
          sub_100190CD4(v117);
          v128 = ConnectionID.debugDescription.getter(v127);
          v130 = v100;
          v131 = sub_10015BA6C(v128, v129, &v161);

          *(v121 + 13) = v131;
          _os_log_impl(&_mh_execute_header, v119, v120, "[%.*hhx-%{public}s] Trust evaluation failed with other error.", v121, 0x15u);
          sub_1000197E0(v123);

          sub_100190CD4(v116);
          (*(v96 + 8))(v159, v130);
          return 1;
        }

        sub_100190CD4(v118);

        sub_100190CD4(v116);
        v132 = v117;
LABEL_35:
        sub_100190CD4(v132);
        (*(v96 + 8))(v98, v100);
        return 1;
      case 3u:
        sub_100190CD4(v160);

        return 2;
      default:
        result = sub_1004A6D24();
        __break(1u);
        break;
    }
  }

  else
  {

    sub_100190CD4(v160);
    return 0;
  }

  return result;
}

_OWORD *sub_10019A8D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10019A8E4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10019A950()
{
  result = qword_1005D3298;
  if (!qword_1005D3298)
  {
    result = swift_getWitnessTable(asc_1004DD044, &_s11TrustResultON, v0, v1);
    atomic_store(result, &qword_1005D3298);
  }

  return result;
}

uint64_t sub_10019A9C4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  sub_1001AD9FC(a1, &v13[-v8], type metadata accessor for ConnectionState);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v10 + v11, v6, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1001AC94C(v9, v10 + v11);
  swift_endAccess();
  sub_10019AB14(v6);
  sub_1001AD938(v6, type metadata accessor for ConnectionState);
  return sub_1001AD938(v9, type metadata accessor for ConnectionState);
}

void sub_10019AB14(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v1 + v12, v11, type metadata accessor for ConnectionState);
  v13 = _s15IMAP2Connection0B5StateO21__derived_enum_equalsySbAC_ACtFZ_0(a1, v11);
  sub_1001AD938(v11, type metadata accessor for ConnectionState);
  if ((v13 & 1) == 0)
  {
    sub_1001AD9FC(a1, v8, type metadata accessor for ConnectionState);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(v21, v8, sizeof(v21));
      sub_1001AD9FC(v1 + v12, v5, type metadata accessor for ConnectionState);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        memcpy(v18, v5, sizeof(v18));
        v19[8] = *&v21[320];
        v19[9] = *&v21[336];
        v20 = *&v21[352];
        v19[4] = *&v21[256];
        v19[5] = *&v21[272];
        v19[6] = *&v21[288];
        v19[7] = *&v21[304];
        v19[0] = *&v21[192];
        v19[1] = *&v21[208];
        v19[2] = *&v21[224];
        v19[3] = *&v21[240];
        if (sub_1001ACFC0(v19) == 1)
        {
          sub_1001AD074(v19);
          sub_1001ACFCC(v21);
          v16[8] = *&v18[320];
          v16[9] = *&v18[336];
          v17 = *&v18[352];
          v16[4] = *&v18[256];
          v16[5] = *&v18[272];
          v16[6] = *&v18[288];
          v16[7] = *&v18[304];
          v16[0] = *&v18[192];
          v16[1] = *&v18[208];
          v16[2] = *&v18[224];
          v16[3] = *&v18[240];
          if (sub_1001ACFC0(v16) == 1)
          {
            sub_1001AD074(v16);
            sub_1001ACFCC(v18);
            return;
          }

          v14 = v18;
        }

        else
        {
          sub_1001ACFCC(v18);
          v14 = v21;
        }

        sub_1001ACFCC(v14);
      }

      else
      {
        sub_1001ACFCC(v21);
        sub_1001AD938(v5, type metadata accessor for ConnectionState);
      }
    }

    else
    {
      sub_1001AD938(v8, type metadata accessor for ConnectionState);
    }

    v15 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
    swift_beginAccess();
    if (*(v1 + v15))
    {
      sub_10019E9D8(a1);
    }

    else
    {
      *(v1 + v15) = _swiftEmptyArrayStorage;
      sub_10019E9D8(a1);
      sub_1001A90C0();
    }
  }
}

uint64_t CommandConnection.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  return sub_1001AD9FC(v1 + v3, a1, type metadata accessor for ConnectionState);
}

uint64_t CommandConnection.connectionTraits.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10019AFD4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

double sub_10019B044(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

uint64_t CommandConnection.constraint.getter()
{
  v1 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16))
  {
    return 0;
  }

  sub_1004A6E94();
  sub_1004A6EB4(0);
  v3 = sub_1004A6F14() & ~(-1 << *(v2 + 32));
  return (*(v2 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v3) & 1;
}

uint64_t CommandConnection.__allocating_init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), void (*a8)(uint64_t), double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, double a24, char a25)
{
  v91 = a8;
  v84 = a7;
  v90 = a6;
  v82 = a5;
  v85 = a4;
  v88 = a23;
  v89 = a18;
  v83 = a17;
  v81 = a21;
  v76 = sub_1004A5234();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v78 = &v73[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v77 = &v73[-v31];
  v80 = sub_1004A4E34();
  v92 = *(v80 - 8);
  __chkstk_darwin(v80);
  v87 = &v73[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v86 = &v73[-v34];
  v35 = type metadata accessor for ConnectionConfiguration(0);
  __chkstk_darwin(v35 - 8);
  v37 = &v73[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = swift_allocObject();
  v39 = v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter) = 0;
  v40 = v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  *v40 = _swiftEmptyArrayStorage;
  *(v40 + 8) = 0;
  *(v40 + 16) = 1;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors) = _swiftEmptyArrayStorage;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents) = 0;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes) = _swiftEmptySetSingleton;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = 0;
  v41 = (v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
  *v41 = 0u;
  v41[1] = 0u;
  v41[2] = 0u;
  *(v41 + 44) = 0u;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = 0;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) = a1;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_engineID) = a2;
  *(v38 + 24) = a19;
  v79 = a3;
  sub_1001AD9FC(a3, v37, type metadata accessor for ConnectionConfiguration);
  type metadata accessor for Connection(0);
  swift_allocObject();
  v42 = a19;
  v74 = a1;
  v43 = sub_1001C2778(v37, v42, a2, a1);

  sub_1001AD9FC(v43 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, _s6LoggerVMa);
  *(v39 + 8) = v81;
  v81 = a20;
  swift_unknownObjectWeakAssign();
  v44 = (v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_makeCredentials);
  *v44 = v82;
  v44[1] = a6;
  v45 = (v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_getPushInformation);
  v46 = v91;
  *v45 = v84;
  v45[1] = v46;
  v47 = (v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration);
  v48 = v89;
  *v47 = v83;
  v47[1] = v48;
  *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits) = v85;
  LODWORD(v85) = enum case for NWConnection.State.setup(_:);
  v84 = *(v92 + 104);
  v49 = v80;
  v84(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state);
  type metadata accessor for ConnectionState(0);
  swift_storeEnumTagMultiPayload();
  *(v38 + 16) = v43;
  *(v43 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate + 8) = &off_1005A4A28;
  swift_unknownObjectWeakAssign();
  v50 = *(v43 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  _s27DataTransferReportCollectorCMa();
  v51 = swift_allocObject();
  *(v51 + 56) = 0;
  *(v51 + 64) = 0;
  *(v51 + 72) = 0;
  v52 = v42;

  v83 = v43;

  v53 = v86;
  sub_1004A4E54();
  v54 = v87;
  v55 = v49;
  (v84)(v87, v85, v49);
  v56 = v54;
  LOBYTE(v43) = sub_1004A4E24();
  v57 = *(v92 + 8);
  v57(v56, v55);
  result = (v57)(v53, v55);
  if (v43)
  {
    *(v51 + 16) = v50;
    *(v51 + 24) = v74;
    *(v51 + 32) = v52;
    *(v51 + 40) = a22;
    *(v51 + 48) = v88;
    *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = v51;

    if (a25)
    {
      v59 = 285.0;
    }

    else
    {
      v59 = a24;
    }

    v60 = v52;

    sub_10019C2E4(v60, v94, v59);
    v61 = (v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
    swift_beginAccess();
    v62 = v61[1];
    v96[0] = *v61;
    v96[1] = v62;
    *v97 = v61[2];
    *&v97[12] = *(v61 + 44);
    v63 = v94[1];
    *v61 = v94[0];
    v61[1] = v63;
    v61[2] = *v95;
    *(v61 + 44) = *&v95[12];
    sub_100025F40(v96, &qword_1005D32C8, &unk_1004DD0B0);
    v64 = v77;
    *v77 = 9;
    v65 = enum case for DispatchTimeInterval.seconds(_:);
    v66 = *(v75 + 104);
    v67 = v76;
    v66(v64, enum case for DispatchTimeInterval.seconds(_:), v76);
    v68 = v78;
    *v78 = 1;
    v66(v68, v65, v67);
    v69 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1001AC92C;
    aBlock[5] = v69;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005A49D8;
    v70 = _Block_copy(aBlock);
    type metadata accessor for RestartableTimer();
    swift_allocObject();

    v72 = RestartableTimer.init(queue:repeating:leeway:closure:)(v60, v64, v68, v70, v71);
    swift_unknownObjectRelease();

    sub_1001AD938(v79, type metadata accessor for ConnectionConfiguration);

    *(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = v72;

    return v38;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CommandConnection.init(id:engineID:configuration:connectionTraits:makeCredentials:getPushInformation:finishPushRegistration:queue:delegate:reportDataTransfer:test_overrideIdleRefreshInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, double a24, char a25)
{
  v26 = v25;
  v94 = a8;
  v87 = a7;
  v93 = a6;
  v85 = a5;
  v88 = a4;
  v91 = a23;
  v92 = a18;
  v86 = a17;
  v84 = a21;
  v79 = sub_1004A5234();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v81 = &v76[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v80 = &v76[-v33];
  v83 = sub_1004A4E34();
  v95 = *(v83 - 8);
  __chkstk_darwin(v83);
  v90 = &v76[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35);
  v89 = &v76[-v36];
  v37 = type metadata accessor for ConnectionConfiguration(0);
  __chkstk_darwin(v37 - 8);
  v39 = &v76[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter) = 0;
  v41 = v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  *v41 = _swiftEmptyArrayStorage;
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors) = _swiftEmptyArrayStorage;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents) = 0;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes) = _swiftEmptySetSingleton;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = 0;
  v42 = (v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
  *v42 = 0u;
  v42[1] = 0u;
  v42[2] = 0u;
  *(v42 + 44) = 0u;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = 0;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) = a1;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_engineID) = a2;
  *(v26 + 24) = a19;
  v82 = a3;
  sub_1001AD9FC(a3, v39, type metadata accessor for ConnectionConfiguration);
  type metadata accessor for Connection(0);
  swift_allocObject();
  v43 = a19;
  v77 = a1;
  v44 = sub_1001C2778(v39, v43, a2, a1);

  sub_1001AD9FC(v44 + OBJC_IVAR____TtC15IMAP2Connection10Connection_logger, v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, _s6LoggerVMa);
  *(v40 + 8) = v84;
  v84 = a20;
  swift_unknownObjectWeakAssign();
  v45 = (v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_makeCredentials);
  *v45 = v85;
  v45[1] = a6;
  v46 = (v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_getPushInformation);
  v47 = v94;
  *v46 = v87;
  v46[1] = v47;
  v48 = (v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_finishPushRegistration);
  v49 = v92;
  *v48 = v86;
  v48[1] = v49;
  *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits) = v88;
  v50 = enum case for NWConnection.State.setup(_:);
  v88 = *(v95 + 104);
  v51 = v83;
  v88(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state, enum case for NWConnection.State.setup(_:), v83);
  type metadata accessor for ConnectionState(0);
  swift_storeEnumTagMultiPayload();
  *(v26 + 16) = v44;
  *(v44 + OBJC_IVAR____TtC15IMAP2Connection10Connection_delegate + 8) = &off_1005A4A28;
  swift_unknownObjectWeakAssign();
  v52 = *(v44 + OBJC_IVAR____TtC15IMAP2Connection10Connection_connection);
  _s27DataTransferReportCollectorCMa();
  v53 = swift_allocObject();
  *(v53 + 56) = 0;
  *(v53 + 64) = 0;
  *(v53 + 72) = 0;
  v86 = v43;

  v87 = v44;

  v54 = v91;

  v55 = v89;
  sub_1004A4E54();
  v56 = v90;
  v57 = v51;
  v88(v90, v50, v51);
  v58 = v55;
  LOBYTE(v55) = sub_1004A4E24();
  v59 = *(v95 + 8);
  v59(v56, v57);
  result = (v59)(v58, v57);
  if (v55)
  {
    *(v53 + 16) = v52;
    *(v53 + 24) = v77;
    v61 = v86;
    *(v53 + 32) = v86;
    *(v53 + 40) = a22;
    *(v53 + 48) = v54;
    *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector) = v53;

    if (a25)
    {
      v62 = 285.0;
    }

    else
    {
      v62 = a24;
    }

    v63 = v61;

    sub_10019C2E4(v63, v97, v62);
    v64 = (v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle);
    swift_beginAccess();
    v65 = v64[1];
    v99[0] = *v64;
    v99[1] = v65;
    *v100 = v64[2];
    *&v100[12] = *(v64 + 44);
    v66 = v97[1];
    *v64 = v97[0];
    v64[1] = v66;
    v64[2] = *v98;
    *(v64 + 44) = *&v98[12];
    sub_100025F40(v99, &qword_1005D32C8, &unk_1004DD0B0);
    v67 = v80;
    *v80 = 9;
    v68 = enum case for DispatchTimeInterval.seconds(_:);
    v69 = *(v78 + 104);
    v70 = v79;
    v69(v67, enum case for DispatchTimeInterval.seconds(_:), v79);
    v71 = v81;
    *v81 = 1;
    v69(v71, v68, v70);
    v72 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1001ADD78;
    aBlock[5] = v72;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005A4A00;
    v73 = _Block_copy(aBlock);
    type metadata accessor for RestartableTimer();
    swift_allocObject();

    v75 = RestartableTimer.init(queue:repeating:leeway:closure:)(v63, v67, v71, v73, v74);
    swift_unknownObjectRelease();

    sub_1001AD938(v82, type metadata accessor for ConnectionConfiguration);

    *(v26 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer) = v75;

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10019C2E4@<X0>(void *a1@<X0>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = sub_1004A5234();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v11);
  v14 = aBlock - v13;
  *(aBlock - v13) = 500;
  v15 = enum case for DispatchTimeInterval.milliseconds(_:);
  v16 = *(v8 + 104);
  v16(aBlock - v13, enum case for DispatchTimeInterval.milliseconds(_:), v7, v12);
  *v10 = 100;
  (v16)(v10, v15, v7);
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1001ADD64;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005A4BF0;
  v18 = _Block_copy(aBlock);
  type metadata accessor for RestartableTimer();
  swift_allocObject();
  v19 = a1;

  v21 = RestartableTimer.init(queue:repeating:leeway:closure:)(v19, v14, v10, v18, v20);

  LODWORD(v10) = sub_1001AC12C(0x1000001uLL);

  v23 = (vcvts_n_f32_u32(v10, 0x18uLL) * 0.17) + 0.83;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 2;
  *(a3 + 40) = v21;
  if (v10 == 0x1000000)
  {
    v23 = 1.0;
  }

  *(a3 + 48) = a4;
  *(a3 + 56) = v23;
  return result;
}

uint64_t sub_10019C574(uint64_t a1)
{
  v1 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = static MonotonicTime.now()();
    v11 = *(v9 + 24);
    *v7 = v11;
    (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
    v12 = v11;
    LOBYTE(v11) = sub_1004A5404();
    result = (*(v5 + 8))(v7, v4);
    if (v11)
    {
      v13 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
      swift_beginAccess();
      sub_1001AD9FC(v9 + v13, v3, type metadata accessor for ConnectionState);
      LOBYTE(v13) = ConnectionState.isClosedOrCancelled.getter();
      sub_1001AD938(v3, type metadata accessor for ConnectionState);
      if ((v13 & 1) == 0)
      {
        sub_1001AC9B0();
        sub_1001A9E1C(v10);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10019C778(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Void __swiftcall CommandConnection.start()()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = sub_1004A53F4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + 24);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1004A5404();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v1 + v15, v7, type metadata accessor for ConnectionState);
  v16 = enum case for NWConnection.State.setup(_:);
  v17 = sub_1004A4E34();
  (*(*(v17 - 8) + 104))(v4, v16, v17);
  swift_storeEnumTagMultiPayload();
  v18 = _s15IMAP2Connection0B5StateO21__derived_enum_equalsySbAC_ACtFZ_0(v7, v4);
  sub_1001AD938(v4, type metadata accessor for ConnectionState);
  sub_1001AD938(v7, type metadata accessor for ConnectionState);
  if ((v18 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector))
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_1001CFCE4(v19);

  sub_1001B6FEC();
  if (*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer))
  {

    RestartableTimer.start()();
  }
}

Swift::Void __swiftcall CommandConnection.cancel()()
{
  v1 = v0;
  v42 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v42);
  v41 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = &v39 - v4;
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v11 = _s6LoggerVMa(0);
  __chkstk_darwin(v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004A53F4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v1 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1004A5404();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v21 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1001AD9FC(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v13, _s6LoggerVMa);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v22 = sub_1004A4A54();
  v23 = sub_1004A4A74();
  (*(*(v23 - 8) + 8))(v13, v23);
  v24 = sub_1004A6034();
  if (os_log_type_enabled(v22, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v49[0] = v26;
    *v25 = 68158210;
    *(v25 + 4) = 2;
    *(v25 + 8) = 256;
    v27 = v21 + *(v11 + 20);
    *(v25 + 10) = *v27;

    *(v25 + 11) = 2082;
    v28 = ConnectionID.debugDescription.getter(*(v27 + 4));
    v30 = sub_10015BA6C(v28, v29, v49);

    *(v25 + 13) = v30;
    _os_log_impl(&_mh_execute_header, v22, v24, "[%.*hhx-%{public}s] Cancel.", v25, 0x15u);
    sub_1000197E0(v26);
  }

  else
  {
  }

  sub_1004A4E64();
  v31 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v1 + v31, v10, type metadata accessor for ConnectionState);
  sub_1001ADC1C(v10, v7, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1001AD938(v7, type metadata accessor for ConnectionState);
      return;
    }

    if (EnumCaseMultiPayload == 4)
    {
      return;
    }
  }

  else
  {
    sub_1001AD938(v7, type metadata accessor for ConnectionState);
  }

  v33 = v40;
  swift_storeEnumTagMultiPayload();
  v34 = v41;
  sub_1001AD9FC(v1 + v31, v41, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1001AC94C(v33, v1 + v31);
  swift_endAccess();
  sub_10019AB14(v34);
  sub_1001AD938(v34, type metadata accessor for ConnectionState);
  sub_1001AD938(v33, type metadata accessor for ConnectionState);
  v35 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer;
  if (*(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_stuckConnectionCheckTimer))
  {

    RestartableTimer.stop()();
  }

  *(v1 + v35) = 0;

  v36 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle;
  swift_beginAccess();
  *&v50[12] = *(v36 + 44);
  v37 = *(v36 + 32);
  v49[1] = *(v36 + 16);
  *v50 = v37;
  v49[0] = *v36;
  if (*(&v37 + 1))
  {
    v38 = *(v36 + 16);
    v44[0] = *v36;
    v44[1] = v38;
    v45 = *(v36 + 32);
    v46 = *(&v37 + 1);
    v47 = *(v36 + 48);
    v48 = *(v36 + 56);
    sub_10000E268(v49, &v43, &qword_1005D32C8, &unk_1004DD0B0);

    sub_100025F40(v44, &qword_1005D32C8, &unk_1004DD0B0);
    RestartableTimer.stop()();
  }
}

BOOL CommandConnection.isCancelledOrFailed.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v0 + v4, v3, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    sub_1001AD938(v3, type metadata accessor for ConnectionState);
  }

  return EnumCaseMultiPayload > 3;
}

uint64_t CommandConnection.canRunCommand(_:)()
{
  v1 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v1);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v21[-v5];
  v7 = sub_1004A53F4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v0 + 24);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1004A5404();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v0 + v15, v6, type metadata accessor for ConnectionState);
    sub_1001ADC1C(v6, v3, type metadata accessor for ConnectionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if ((EnumCaseMultiPayload - 4) < 2)
      {
        return 0;
      }
    }

    else if (EnumCaseMultiPayload >= 2)
    {
      sub_1001AD938(v3, type metadata accessor for ConnectionState);
      v17 = (v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
      swift_beginAccess();
      v18 = *v17;

      v19 = sub_1001FBAA0();
      sub_1001FBFB0();
      v20 = sub_100197A14();
      sub_10020924C(v19, v20, v18);

      return 1;
    }

    sub_1001AD938(v3, type metadata accessor for ConnectionState);
    return 0;
  }

  __break(1u);
  return result;
}

unint64_t CommandConnection.send(_:)(uint64_t a1)
{
  v3 = type metadata accessor for OutboundContent(0);
  __chkstk_darwin(v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1004A53F4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v1 + 24);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1004A5404();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    __chkstk_darwin(result);
    *&v15[-16] = v1;
    *&v15[-8] = a1;
    v14 = sub_10019DB3C(sub_1001ACFA4);
    sub_1001AD9FC(a1, v5, type metadata accessor for ClientCommand);
    swift_storeEnumTagMultiPayload();
    sub_1001B78AC(v14, v5);
    sub_1001AD938(v5, type metadata accessor for OutboundContent);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10019D668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_100208D6C(a1);
  return swift_endAccess();
}

IMAP2Connection::CommandID __swiftcall CommandConnection.makeNextCommandID()()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  v8 = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
    swift_beginAccess();
    v10 = (*(v0 + v9) + 1) & 0xFFFFFF;
    *(v0 + v9) = v10;
    return (*(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) | (v10 << 32));
  }

  else
  {
    __break(1u);
  }

  return v8;
}

Swift::Void __swiftcall CommandConnection.flush()()
{
  v1 = sub_1004A4904();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A53F4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + 24);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1004A5404();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    _s6LoggerVMa(0);
    sub_1004A4914();
    sub_1001D75AC(v4);
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CommandConnection.restart()()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1004A5404();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1001B7E84();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10019DB3C(uint64_t (*a1)(unint64_t))
{
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 24);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1004A5404();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_commandCounter;
    swift_beginAccess();
    v13 = *(v1 + v12);
    v14 = (v13 + 1) & 0xFFFFFF;
    *(v1 + v12) = v14;
    v15 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) | (v14 << 32);
    a1(v15);
    if (v2)
    {
      *(v1 + v12) = v13;
      swift_willThrow();
    }

    swift_endAccess();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CommandConnection.selectedMailbox.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v0 + v4, v3, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1001AD938(v3, type metadata accessor for ConnectionState);
    return 0;
  }

  memcpy(v29, v3, sizeof(v29));
  v5 = *(v3 + 21);
  v30[8] = *(v3 + 20);
  v30[9] = v5;
  v31 = *(v3 + 176);
  v6 = *(v3 + 17);
  v30[4] = *(v3 + 16);
  v30[5] = v6;
  v7 = *(v3 + 19);
  v30[6] = *(v3 + 18);
  v30[7] = v7;
  v8 = *(v3 + 13);
  v30[0] = *(v3 + 12);
  v30[1] = v8;
  v9 = *(v3 + 15);
  v30[2] = *(v3 + 14);
  v30[3] = v9;
  v10 = sub_1001ACFC0(v30);
  if (!v10)
  {
    sub_1001AD074(v30);
    sub_1001ACFCC(v29);
    return 0;
  }

  if (v10 == 1)
  {
    v11 = sub_1001AD074(v30);
    v26 = *&v29[320];
    v27 = *&v29[336];
    v28 = *&v29[352];
    v22 = *&v29[256];
    v23 = *&v29[272];
    v24 = *&v29[288];
    v25 = *&v29[304];
    v18 = *&v29[192];
    v19 = *&v29[208];
    v20 = *&v29[224];
    v21 = *&v29[240];
    v12 = sub_1001AD074(&v18);
    sub_1001AD084(v12, &v17);
    sub_1001ACFCC(v29);
    v13 = *v11;

    sub_1001AD020(&v29[192]);
    return v13;
  }

  else
  {
    v15 = *sub_1001AD074(v30);
    v26 = *&v29[320];
    v27 = *&v29[336];
    v28 = *&v29[352];
    v22 = *&v29[256];
    v23 = *&v29[272];
    v24 = *&v29[288];
    v25 = *&v29[304];
    v18 = *&v29[192];
    v19 = *&v29[208];
    v20 = *&v29[224];
    v21 = *&v29[240];
    sub_1001AD074(&v18);

    sub_1001ACFCC(v29);

    sub_1001AD020(&v29[192]);
    return v15;
  }
}

Swift::Bool __swiftcall CommandConnection.selectMailbox(name:)(NIOIMAPCore2::MailboxName name)
{
  v2 = v1;
  value = name._hashValue._value;
  rawValue = name.bytes._rawValue;
  v5 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  v11 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v2 + v11, v10, type metadata accessor for ConnectionState);
  v15.bytes._rawValue = rawValue;
  v15._hashValue._value = value;
  LOBYTE(rawValue) = ConnectionState.selectMailbox(name:)(v15);
  sub_1001AD9FC(v2 + v11, v7, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1001AC94C(v10, v2 + v11);
  swift_endAccess();
  sub_10019AB14(v7);
  sub_1001AD938(v7, type metadata accessor for ConnectionState);
  sub_1001AD938(v10, type metadata accessor for ConnectionState);
  v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1001AD9FC(v2 + v11, v10, type metadata accessor for ConnectionState);

  sub_1001CCEE0(v2 + v12, v10, v2);

  sub_1001AD9FC(v2 + v11, v7, type metadata accessor for ConnectionState);
  swift_beginAccess();
  sub_1001AC94C(v10, v2 + v11);
  swift_endAccess();
  sub_10019AB14(v7);
  sub_1001AD938(v7, type metadata accessor for ConnectionState);
  sub_1001AD938(v10, type metadata accessor for ConnectionState);
  return rawValue & 1;
}

void CommandConnection.replaceDelegate(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v59 = a2;
  v5 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v5);
  v7 = (v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = v53 - v9;
  v56 = _s6LoggerVMa(0);
  __chkstk_darwin(v56);
  v55 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  v15 = sub_1004A53F4();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = (v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v3 + 24);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15, v17);
  v21 = v20;
  LOBYTE(v20) = sub_1004A5404();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v57 = a1;
    v58 = v5;
    v22 = v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v14, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v23 = sub_1004A4A54();
    v24 = sub_1004A4A74();
    v25 = *(v24 - 8);
    v26 = *(v25 + 8);
    v53[1] = (v25 + 8);
    v26(v14, v24);
    v27 = sub_1004A6004();
    v28 = os_log_type_enabled(v23, v27);
    v54 = v22;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      v61[0] = v53[0];
      *v29 = 68158210;
      *(v29 + 4) = 2;
      *(v29 + 8) = 256;
      v30 = v22 + *(v56 + 20);
      *(v29 + 10) = *v30;

      *(v29 + 11) = 2082;
      v31 = ConnectionID.debugDescription.getter(*(v30 + 4));
      v33 = v3;
      v34 = v10;
      v35 = v24;
      v36 = v7;
      v37 = v26;
      v38 = sub_10015BA6C(v31, v32, v61);

      *(v29 + 13) = v38;
      v26 = v37;
      v7 = v36;
      v24 = v35;
      v10 = v34;
      v3 = v33;
      _os_log_impl(&_mh_execute_header, v23, v27, "[%.*hhx-%{public}s] Setting new delegate (better path available).", v29, 0x15u);
      sub_1000197E0(v53[0]);
    }

    else
    {
    }

    *(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate + 8) = v59;
    swift_unknownObjectWeakAssign();
    v39 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v3 + v39, v10, type metadata accessor for ConnectionState);
    LODWORD(v39) = swift_getEnumCaseMultiPayload();
    sub_1001AD938(v10, type metadata accessor for ConnectionState);
    if (v39 == 2)
    {
      v40 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
      swift_beginAccess();
      v41 = *(v3 + v40);

      v42 = static MonotonicTime.now()();
      *(v7 + *(type metadata accessor for UnauthenticatedStateWithTasks(0) + 28)) = _swiftEmptyArrayStorage;
      *v7 = v41;
      v7[1] = v42;
      type metadata accessor for UnauthenticatedState(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_10019AB14(v7);
      sub_1001AD938(v7, type metadata accessor for ConnectionState);
    }

    else
    {
      v44 = v54;
      v43 = v55;
      sub_1001AD9FC(v54, v55, _s6LoggerVMa);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v45 = sub_1004A4A54();
      v26(v43, v24);
      v46 = sub_1004A6014();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v60[0] = v48;
        *v47 = 68158210;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        v49 = v44 + *(v56 + 20);
        *(v47 + 10) = *v49;

        *(v47 + 11) = 2082;
        v50 = ConnectionID.debugDescription.getter(*(v49 + 4));
        v52 = sub_10015BA6C(v50, v51, v60);

        *(v47 + 13) = v52;
        _os_log_impl(&_mh_execute_header, v45, v46, "[%.*hhx-%{public}s] Trying to replace delegate on unauthenticated connection. Closing.", v47, 0x15u);
        sub_1000197E0(v48);
      }

      else
      {
      }

      CommandConnection.cancel()();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t CommandConnection.deinit()
{

  sub_1001AD938(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, _s6LoggerVMa);
  sub_1001AD0E0(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate);

  sub_1001AD938(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state, type metadata accessor for ConnectionState);

  return v0;
}

uint64_t CommandConnection.__deallocating_deinit()
{
  CommandConnection.deinit();

  return swift_deallocClassInstance();
}

uint64_t Response.logIdentifier.getter()
{
  type metadata accessor for Response(0);
  sub_1004A6934();
  return 0;
}

Swift::Void __swiftcall CommandConnection.collectDataTransferReport()()
{
  if (*(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_dataTransferReportCollector))
  {

    sub_1001CFF40();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10019E9D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005D35E8, &unk_1004DD1D0);
  __chkstk_darwin(v4 - 8);
  v92 = (&v88 - v5);
  v94 = type metadata accessor for ConnectionEvent(0);
  __chkstk_darwin(v94);
  v93 = (&v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = _s6LoggerVMa(0);
  __chkstk_darwin(v95);
  v96 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v91 = &v88 - v9;
  v10 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v10);
  v98 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v88 - v13);
  __chkstk_darwin(v15);
  v17 = &v88 - v16;
  v18 = sub_10000C9C0(&qword_1005D35F0, &unk_1004DF4F0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v88 - v20;
  sub_10019F600();
  v22 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  v23 = *(v19 + 56);
  v99 = a1;
  sub_1001AD9FC(a1, v21, type metadata accessor for ConnectionState);
  v24 = v1;
  v97 = v22;
  v25 = v23;
  sub_1001AD9FC(v24 + v22, &v21[v23], type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v39 = v93;
    sub_1001AD9FC(&v21[v25], v14, type metadata accessor for ConnectionState);
    v40 = *v14;
    v41 = v14[1];
    v42 = v14[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v89 = static MonotonicTime.now()();
      v90 = v42;
      *v39 = v40;
      v39[1] = v41;
      v39[2] = v42;
      type metadata accessor for ConnectionEvent.FailureReason(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v91 = v21;
      v43 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
      v2 = v24;
      swift_beginAccess();
      v44 = v92;
      sub_1001AD9FC(v39, v92, type metadata accessor for ConnectionEvent);
      sub_1001978DC(v40, v41, v42);
      v94 = v25;
      sub_1001A5C90(v89, v44);
      sub_100025F40(v44, &qword_1005D35E8, &unk_1004DD1D0);
      sub_1001AD938(v39, type metadata accessor for ConnectionEvent);
      swift_endAccess();
      v45 = swift_allocObject();
      *(v45 + 16) = *(v2 + v43);

      *(v45 + 24) = *ConnectionID.invalid.unsafeMutableAddressor();
      *(v45 + 32) = _swiftEmptySetSingleton;
      *(v45 + 40) = _swiftEmptySetSingleton;
      sub_10019FE78(v45 | 0x1000000000000000);

      sub_1004A4E64();
      sub_100191E44(v40, v41, v90);
      v46 = v91;
      sub_1001AD938(v91, type metadata accessor for ConnectionState);
      v47 = v46 + v94;
      goto LABEL_23;
    }

    sub_100191E44(v40, v41, v42);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_11:
    v2 = v24;
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v53 = swift_getEnumCaseMultiPayload();
      v54 = v98;
      if (v53 == 4)
      {
        sub_1004A4E64();
        sub_1001AD938(v21, type metadata accessor for ConnectionState);
      }

      else
      {
        sub_100025F40(v21, &qword_1005D35F0, &unk_1004DF4F0);
      }

      v55 = v99;
      goto LABEL_24;
    }

    v47 = &v21[v25];
    goto LABEL_23;
  }

  v94 = v23;
  sub_1001AD9FC(&v21[v23], v17, type metadata accessor for ConnectionState);
  memcpy(v104, v17, sizeof(v104));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v21;
    v28 = v24 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v29 = v91;
    sub_1001AD9FC(v24 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v91, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v30 = sub_1004A4A54();
    v31 = sub_1004A4A74();
    (*(*(v31 - 8) + 8))(v29, v31);
    v32 = sub_1004A6004();
    if (os_log_type_enabled(v30, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v100[0] = v34;
      *v33 = 68158210;
      *(v33 + 4) = 2;
      *(v33 + 8) = 256;
      v35 = v28 + *(v95 + 20);
      *(v33 + 10) = *v35;

      *(v33 + 11) = 2082;
      v36 = ConnectionID.debugDescription.getter(*(v35 + 4));
      v38 = sub_10015BA6C(v36, v37, v100);

      *(v33 + 13) = v38;
      _os_log_impl(&_mh_execute_header, v30, v32, "[%.*hhx-%{public}s] Connection did authenticate.", v33, 0x15u);
      sub_1000197E0(v34);
    }

    else
    {
    }

    v56 = *v104;
    v57 = Capability.idle.unsafeMutableAddressor();
    v58 = *v57;
    v59 = v57[1];
    v60 = v57[2];
    v61 = *(v57 + 24);

    v62 = sub_100012A38(v58, v59, v60, v61, v56);

    v63 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_idle;
    result = swift_beginAccess();
    if (!*(v63 + 40))
    {
      __break(1u);
      return result;
    }

    if (v62)
    {
      v65 = 2;
    }

    else
    {
      v65 = 1;
    }

    sub_1001E7DE0(v65);
    swift_endAccess();
    v66 = swift_allocObject();
    *(v66 + 16) = v56;
    *(v66 + 136) = *&v104[120];
    *(v66 + 152) = *&v104[136];
    *(v66 + 168) = *&v104[152];
    *(v66 + 184) = *&v104[168];
    *(v66 + 72) = *&v104[56];
    *(v66 + 88) = *&v104[72];
    *(v66 + 104) = *&v104[88];
    *(v66 + 120) = *&v104[104];
    *(v66 + 24) = *&v104[8];
    *(v66 + 40) = *&v104[24];
    *(v66 + 56) = *&v104[40];

    sub_10010E800(&v104[8], v100);
    sub_10019F900(v66);

    sub_1001ACFCC(v104);
    sub_1001AD938(v27, type metadata accessor for ConnectionState);
    v47 = v27 + v94;
    goto LABEL_23;
  }

  v48 = *(v17 + 21);
  v100[8] = *(v17 + 20);
  v100[9] = v48;
  v101 = *(v17 + 176);
  v49 = *(v17 + 17);
  v100[4] = *(v17 + 16);
  v100[5] = v49;
  v50 = *(v17 + 19);
  v100[6] = *(v17 + 18);
  v100[7] = v50;
  v51 = *(v17 + 13);
  v100[0] = *(v17 + 12);
  v100[1] = v51;
  v52 = *(v17 + 15);
  v100[2] = *(v17 + 14);
  v100[3] = v52;
  if (!sub_1001ACFC0(v100))
  {
    v79 = sub_1001AD074(v100);
    v80 = *v79;
    if (*v79)
    {
      v81 = v21;
      v83 = v79[3];
      v82 = v79[4];
      v85 = v79[1];
      v84 = v79[2];
      v86 = swift_allocObject();
      *(v86 + 16) = v80;
      *(v86 + 24) = v85;
      *(v86 + 32) = v84;
      *(v86 + 40) = v83;
      *(v86 + 48) = v82;
      sub_1001ADB30(&v104[192], v102);

      sub_10010E780(v84, v83, v82);
      v2 = v24;
      sub_10019F900(v86 | 0x5000000000000000);

      sub_10010E7C0(v84, v83, v82);
      sub_1001ACFCC(v104);
      sub_1001AD938(&v81[v94], type metadata accessor for ConnectionState);
      v47 = v81;
      goto LABEL_23;
    }

    v102[8] = *&v104[320];
    v102[9] = *&v104[336];
    v103 = *&v104[352];
    v102[4] = *&v104[256];
    v102[5] = *&v104[272];
    v102[6] = *&v104[288];
    v102[7] = *&v104[304];
    v102[0] = *&v104[192];
    v102[1] = *&v104[208];
    v102[2] = *&v104[224];
    v102[3] = *&v104[240];
    v87 = sub_1001AD074(v102);
    sub_1001ADA78(*v87, v87[1], v87[2], v87[3], v87[4]);
  }

  sub_1001ACFCC(v104);
  sub_1001AD938(&v21[v94], type metadata accessor for ConnectionState);
  v47 = v21;
LABEL_23:
  sub_1001AD938(v47, type metadata accessor for ConnectionState);
  v54 = v98;
  v55 = v99;
LABEL_24:
  sub_1001AD9FC(v2 + v97, v54, type metadata accessor for ConnectionState);
  v67 = ConnectionState.mailboxSelectionPayload(old:)(v55);
  sub_1001AD938(v54, type metadata accessor for ConnectionState);
  if ((~v67 & 0xF000000000000007) != 0)
  {
    v68 = v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v69 = v96;
    sub_1001AD9FC(v2 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v96, _s6LoggerVMa);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v70 = sub_1004A4A54();
    v71 = sub_1004A4A74();
    (*(*(v71 - 8) + 8))(v69, v71);
    v72 = sub_1004A6004();
    if (os_log_type_enabled(v70, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v104 = v74;
      *v73 = 68158210;
      *(v73 + 4) = 2;
      *(v73 + 8) = 256;
      v75 = v68 + *(v95 + 20);
      *(v73 + 10) = *v75;

      *(v73 + 11) = 2082;
      v76 = ConnectionID.debugDescription.getter(*(v75 + 4));
      v78 = sub_10015BA6C(v76, v77, v104);

      *(v73 + 13) = v78;
      _os_log_impl(&_mh_execute_header, v70, v72, "[%.*hhx-%{public}s] Mailbox selection changed.", v73, 0x15u);
      sub_1000197E0(v74);
    }

    else
    {
    }

    sub_10019F900(v67);
    sub_1001ADA64(v67);
  }

  sub_1001A14A0();
  return sub_10019F900(0x8000000000000010);
}

uint64_t sub_10019F600()
{
  v1 = v0;
  v21 = sub_1004A4904();
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A4944();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v1 + v12, v11, type metadata accessor for ConnectionState);
  v13 = sub_100210E34();
  sub_1001AD938(v11, type metadata accessor for ConnectionState);
  result = sub_100210E34();
  v15 = v13;
  if (v13 != result)
  {
    v16 = tracingSignposter.unsafeMutableAddressor();
    (*(v6 + 16))(v8, v16, v5);
    sub_1004A4914();
    v17 = sub_1004A4934();
    v18 = sub_1004A6154();
    if (sub_1004A6354())
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v15;
      v20 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v20, "Connection.imapStateUpdate", "%u", v19, 8u);
    }

    (*(v2 + 8))(v4, v21);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_10019F900(unint64_t a1)
{
  v3 = _s6LoggerVMa(0);
  __chkstk_darwin(v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 >> 60) - 2 <= 3)
  {
    v9 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v1 + v9, v8, type metadata accessor for ConnectionState);
    result = swift_getEnumCaseMultiPayload();
    if (result > 2)
    {
      if ((result - 4) < 2)
      {
        return result;
      }
    }

    else if (result >= 2)
    {
      sub_1001AD938(v8, type metadata accessor for ConnectionState);
      goto LABEL_5;
    }

    return sub_1001AD938(v8, type metadata accessor for ConnectionState);
  }

LABEL_5:
  v11 = *(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
  v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
  swift_beginAccess();
  v13 = *(v1 + v12);

  v14 = sub_1001B4154(v11, v13);
  v16 = v15;
  v18 = v17;

  v19 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
  swift_beginAccess();
  if (*(v1 + v19))
  {
    sub_1000CB7C8(a1);
    v21 = sub_10019AF70(v49);
    v22 = *v20;
    if (*v20)
    {
      v23 = v20;
      sub_1000CB7C8(a1);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_1001EBC5C(0, *(v22 + 2) + 1, 1, v22);
        *v23 = v22;
      }

      v26 = *(v22 + 2);
      v25 = *(v22 + 3);
      if (v26 >= v25 >> 1)
      {
        v22 = sub_1001EBC5C((v25 > 1), v26 + 1, 1, v22);
        *v23 = v22;
      }

      *(v22 + 2) = v26 + 1;
      v27 = &v22[40 * v26];
      *(v27 + 8) = v11;
      *(v27 + 5) = a1;
      *(v27 + 12) = v14;
      *(v27 + 7) = v16;
      *(v27 + 8) = v18;
      (v21)(v49, 0);
    }

    else
    {
      (v21)(v49, 0);
    }

    goto LABEL_20;
  }

  v48 = v14;
  v28 = v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1001AD9FC(v1 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v5, _s6LoggerVMa);
  sub_1000CB7C8(a1);
  v29 = v1;

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v30 = sub_1004A4A54();
  v31 = sub_1004A4A74();
  (*(*(v31 - 8) + 8))(v5, v31);
  v32 = sub_1004A6014();
  if (os_log_type_enabled(v30, v32))
  {
    v33 = swift_slowAlloc();
    v47 = v11;
    v11 = v33;
    v34 = swift_slowAlloc();
    v49[0] = v34;
    *v11 = 68158210;
    *(v11 + 4) = 2;
    *(v11 + 8) = 256;
    v35 = v28 + *(v3 + 20);
    *(v11 + 10) = *v35;
    v36 = v29;

    *(v11 + 11) = 2082;
    v37 = ConnectionID.debugDescription.getter(*(v35 + 4));
    v39 = sub_10015BA6C(v37, v38, v49);

    *(v11 + 13) = v39;
    _os_log_impl(&_mh_execute_header, v30, v32, "[%.*hhx-%{public}s] Trying to enqueue event outside withEnqueuedSend.", v11, 0x15u);
    sub_1000197E0(v34);

    LODWORD(v11) = v47;
  }

  else
  {

    v36 = v29;
  }

  v40 = v36 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v42 = v48;
  if (!Strong)
  {
LABEL_20:
    sub_1000CB848(a1);
    goto LABEL_21;
  }

  v43 = *(v40 + 8);
  ObjectType = swift_getObjectType();
  sub_10000C9C0(&qword_1005D35D8, &qword_1004DD1C0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1004CEAA0;
  *(v45 + 32) = v11;
  *(v45 + 40) = a1;
  *(v45 + 48) = v42;
  *(v45 + 56) = v16;
  *(v45 + 64) = v18;
  v46 = *(v43 + 8);
  sub_1000CB7C8(a1);

  v46(v45, ObjectType, v43);
  sub_1000CB848(a1);

  swift_unknownObjectRelease();
LABEL_21:
}

uint64_t sub_10019FE78(unint64_t a1)
{
  v2 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v2 - 8);
  v177 = &v171 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v176 = &v171 - v5;
  v175 = _s6LoggerVMa(0);
  __chkstk_darwin(v175);
  v7 = &v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v171 - v9;
  __chkstk_darwin(v11);
  v13 = &v171 - v12;
  __chkstk_darwin(v14);
  v16 = &v171 - v15;
  __chkstk_darwin(v17);
  v19 = &v171 - v18;
  __chkstk_darwin(v20);
  v22 = &v171 - v21;
  __chkstk_darwin(v23);
  v25 = &v171 - v24;
  v26 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  __chkstk_darwin(v28);
  v32 = (&v171 - v31);
  v179 = a1;
  if (a1 >> 60 != 4)
  {
    if (a1 >> 60 == 3)
    {
      v33 = v30;
      v34 = v29;
      v35 = v179;
      v36 = swift_projectBox();
      sub_1001AD9FC(v36, v32, type metadata accessor for UntaggedResponse);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v38 = v178;
      if (EnumCaseMultiPayload == 4)
      {
        v39 = *v32;
        v40 = v32[1];
        v41 = v32[2];
        v42 = v178 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        sub_1001AD9FC(v178 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v25, _s6LoggerVMa);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        sub_1000110B0(v39);

        v43 = sub_1004A4A54();
        v44 = sub_1004A4A74();
        (*(*(v44 - 8) + 8))(v25, v44);
        v45 = sub_1004A6014();
        sub_10001114C(v39);

        if (os_log_type_enabled(v43, v45))
        {
          v46 = swift_slowAlloc();
          v180[0] = swift_slowAlloc();
          *v46 = 68158466;
          *(v46 + 4) = 2;
          *(v46 + 8) = 256;
          v47 = &v42[*(v175 + 20)];
          *(v46 + 10) = *v47;

          *(v46 + 11) = 2082;
          v48 = ConnectionID.debugDescription.getter(*(v47 + 1));
          v50 = sub_10015BA6C(v48, v49, v180);

          *(v46 + 13) = v50;
          *(v46 + 21) = 2082;
          v38 = v178;
          v51 = ResponseText.debugDescription.getter(v39, v40, v41);
          v53 = sub_10015BA6C(v51, v52, v180);

          *(v46 + 23) = v53;
          _os_log_impl(&_mh_execute_header, v43, v45, "[%.*hhx-%{public}s] Received BYE %{public}s", v46, 0x1Fu);
          swift_arrayDestroy();
          v35 = v179;

          sub_10001114C(v39);
        }

        else
        {

          sub_10001114C(v39);
        }

        v107 = v176;
        v106 = v177;
      }

      else
      {
        sub_1001AD938(v32, type metadata accessor for UntaggedResponse);
        v91 = swift_projectBox();
        v92 = v34;
        sub_1001AD9FC(v91, v34, type metadata accessor for UntaggedResponse);
        v93 = v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        sub_1001AD9FC(v38 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v22, _s6LoggerVMa);

        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v94 = v34;
        v95 = v33;
        sub_1001AD9FC(v94, v33, type metadata accessor for UntaggedResponse);
        v96 = sub_1004A4A54();
        v97 = sub_1004A4A74();
        (*(*(v97 - 8) + 8))(v22, v97);
        v98 = sub_1004A6004();
        if (os_log_type_enabled(v96, v98))
        {
          v99 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          v180[0] = v174;
          *v99 = 68158466;
          *(v99 + 4) = 2;
          *(v99 + 8) = 256;
          v100 = &v93[*(v175 + 20)];
          *(v99 + 10) = *v100;

          *(v99 + 11) = 2082;
          v101 = ConnectionID.debugDescription.getter(*(v100 + 1));
          v103 = sub_10015BA6C(v101, v102, v180);

          *(v99 + 13) = v103;
          *(v99 + 21) = 2082;
          v104 = UntaggedResponse.makeDescriptionWithoutPII()();
          sub_1001AD938(v95, type metadata accessor for UntaggedResponse);
          v105 = sub_10015BA6C(v104._countAndFlagsBits, v104._object, v180);

          *(v99 + 23) = v105;
          _os_log_impl(&_mh_execute_header, v96, v98, "[%.*hhx-%{public}s] Received 'S: %{public}s' from network.", v99, 0x1Fu);
          swift_arrayDestroy();
        }

        else
        {

          sub_1001AD938(v33, type metadata accessor for UntaggedResponse);
        }

        sub_1001AD938(v92, type metadata accessor for UntaggedResponse);
        v107 = v176;
        v106 = v177;
        v35 = v179;
      }
    }

    else
    {
      v38 = v178;
      v79 = v178 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1001AD9FC(v178 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v7, _s6LoggerVMa);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v35 = v179;
      sub_1000CB7C8(v179);
      v80 = sub_1004A4A54();
      v81 = sub_1004A4A74();
      (*(*(v81 - 8) + 8))(v7, v81);
      v82 = sub_1004A6004();
      sub_1000CB848(v35);
      if (os_log_type_enabled(v80, v82))
      {
        v83 = swift_slowAlloc();
        v180[0] = swift_slowAlloc();
        *v83 = 68158466;
        *(v83 + 4) = 2;
        *(v83 + 8) = 256;
        v84 = &v79[*(v175 + 20)];
        *(v83 + 10) = *v84;

        *(v83 + 11) = 2082;
        v85 = ConnectionID.debugDescription.getter(*(v84 + 1));
        v87 = sub_10015BA6C(v85, v86, v180);

        *(v83 + 13) = v87;
        *(v83 + 21) = 2080;
        v88 = Event.Payload.shortLogIdentifier.getter(v35);
        v90 = sub_10015BA6C(v88, v89, v180);

        *(v83 + 23) = v90;
        _os_log_impl(&_mh_execute_header, v80, v82, "[%.*hhx-%{public}s] Received '%s' from network.", v83, 0x1Fu);
        swift_arrayDestroy();
      }

      else
      {
      }

      v107 = v176;
      v106 = v177;
    }

    goto LABEL_34;
  }

  v54 = *((v179 & 0xFFFFFFFFFFFFFFFLL) + 0x14);
  v56 = *((v179 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v55 = *((v179 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v57 = *((v179 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v58 = *((v179 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  v174 = *((v179 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  if (!v58)
  {
    v108 = v178;
    v109 = v178 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v178 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v10, _s6LoggerVMa);

    sub_10001123C(v56, v55, v57, 0);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000110B0(v56);

    v110 = sub_1004A4A54();
    v111 = sub_1004A4A74();
    (*(*(v111 - 8) + 8))(v10, v111);
    v112 = sub_1004A6004();
    if (os_log_type_enabled(v110, v112))
    {
      v113 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v173 = v55;
      v180[0] = v172;
      *v113 = 68158978;
      *(v113 + 4) = 2;
      *(v113 + 8) = 256;
      v114 = v54;
      v115 = &v109[*(v175 + 20)];
      *(v113 + 10) = *v115;

      *(v113 + 11) = 2082;
      v116 = ConnectionID.debugDescription.getter(*(v115 + 1));
      v118 = sub_10015BA6C(v116, v117, v180);

      *(v113 + 13) = v118;
      *(v113 + 21) = 2082;
      v119 = Tag.debugDescription.getter(v174 | (v114 << 32));
      v121 = sub_10015BA6C(v119, v120, v180);

      *(v113 + 23) = v121;
      *(v113 + 31) = 2082;
      *(v113 + 33) = sub_10015BA6C(19279, 0xE200000000000000, v180);
      *(v113 + 41) = 2082;
      v122 = v173;
      v123 = ResponseText.debugDescription.getter(v56, v173, v57);
      v125 = v124;
      sub_10001114C(v56);

      v126 = sub_10015BA6C(v123, v125, v180);

      *(v113 + 43) = v126;
      _os_log_impl(&_mh_execute_header, v110, v112, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network.", v113, 0x33u);
      swift_arrayDestroy();

      sub_100173584(v56, v122, v57, 0);
    }

    else
    {

      sub_100173584(v56, v55, v57, 0);
      sub_10001114C(v56);
    }

    v38 = v108;
    goto LABEL_33;
  }

  if (v58 != 1)
  {
    v172 = v54;
    v38 = v178;
    v127 = v178 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v178 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v19, _s6LoggerVMa);

    sub_10001123C(v56, v55, v57, 2u);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000110B0(v56);

    v128 = sub_1004A4A54();
    v129 = sub_1004A4A74();
    (*(*(v129 - 8) + 8))(v19, v129);
    v130 = sub_1004A6014();
    if (os_log_type_enabled(v128, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v173 = v55;
      v180[0] = v132;
      *v131 = 68158978;
      *(v131 + 4) = 2;
      *(v131 + 8) = 256;
      v133 = &v127[*(v175 + 20)];
      *(v131 + 10) = *v133;

      *(v131 + 11) = 2082;
      v134 = ConnectionID.debugDescription.getter(*(v133 + 1));
      v136 = sub_10015BA6C(v134, v135, v180);

      *(v131 + 13) = v136;
      *(v131 + 21) = 2082;
      v137 = Tag.debugDescription.getter(v174 | (v172 << 32));
      v139 = sub_10015BA6C(v137, v138, v180);

      *(v131 + 23) = v139;
      *(v131 + 31) = 2082;
      *(v131 + 33) = sub_10015BA6C(4473154, 0xE300000000000000, v180);
      *(v131 + 41) = 2082;
      v140 = v173;
      v141 = ResponseText.debugDescription.getter(v56, v173, v57);
      v143 = v142;
      sub_10001114C(v56);

      v144 = sub_10015BA6C(v141, v143, v180);

      *(v131 + 43) = v144;
      _os_log_impl(&_mh_execute_header, v128, v130, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network.", v131, 0x33u);
      swift_arrayDestroy();

      sub_100173584(v56, v140, v57, 2u);
    }

    else
    {

      sub_100173584(v56, v55, v57, 2u);
      sub_10001114C(v56);
    }

LABEL_33:
    v107 = v176;
    v106 = v177;
    v35 = v179;
LABEL_34:
    sub_10019F900(v35);
    v164 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_connectionTraits;
    swift_beginAccess();
    v165 = *(v38 + v164);
    v166 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v167 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v38 + v167, v107, type metadata accessor for ConnectionState);

    sub_1001C4B18(v35, v165, sub_1001AD918, v38, sub_1001AD934, v38, (v38 + v166));

    sub_1001AD9FC(v38 + v167, v106, type metadata accessor for ConnectionState);
    swift_beginAccess();
    sub_1001AC94C(v107, v38 + v167);
    swift_endAccess();
    sub_10019AB14(v106);
    sub_1001AD938(v106, type metadata accessor for ConnectionState);
    sub_1001AD938(v107, type metadata accessor for ConnectionState);

    return sub_1001A86A0();
  }

  if ((~v56 & 0xF000000000000007) == 0 || v56 != 0x800000000000006CLL)
  {
    v59 = v55;
    v60 = v178;
    v61 = v178 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    sub_1001AD9FC(v178 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v13, _s6LoggerVMa);

    sub_10001123C(v56, v59, v57, 1u);
    sub_1000110B0(v56);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000110B0(v56);

    v62 = sub_1004A4A54();
    v63 = sub_1004A4A74();
    (*(*(v63 - 8) + 8))(v13, v63);
    v64 = sub_1004A6014();
    if (os_log_type_enabled(v62, v64))
    {
      v65 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v180[0] = v172;
      *v65 = 68158978;
      *(v65 + 4) = 2;
      *(v65 + 8) = 256;
      v66 = v54;
      v67 = &v61[*(v175 + 20)];
      *(v65 + 10) = *v67;

      v173 = v59;
      *(v65 + 11) = 2082;
      v68 = ConnectionID.debugDescription.getter(*(v67 + 1));
      v70 = sub_10015BA6C(v68, v69, v180);

      *(v65 + 13) = v70;
      *(v65 + 21) = 2082;
      v71 = Tag.debugDescription.getter(v174 | (v66 << 32));
      v73 = sub_10015BA6C(v71, v72, v180);

      *(v65 + 23) = v73;
      *(v65 + 31) = 2082;
      *(v65 + 33) = sub_10015BA6C(20302, 0xE200000000000000, v180);
      *(v65 + 41) = 2082;
      v74 = v173;
      v75 = ResponseText.debugDescription.getter(v56, v173, v57);
      v77 = v76;
      sub_10001114C(v56);

      v78 = sub_10015BA6C(v75, v77, v180);

      *(v65 + 43) = v78;
      _os_log_impl(&_mh_execute_header, v62, v64, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network.", v65, 0x33u);
      swift_arrayDestroy();

      sub_10001114C(v56);

      sub_100173584(v56, v74, v57, 1u);
    }

    else
    {

      sub_10001114C(v56);

      sub_100173584(v56, v59, v57, 1u);
      sub_10001114C(v56);
    }

    v38 = v60;
    goto LABEL_33;
  }

  v145 = v178;
  v146 = v178 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  sub_1001AD9FC(v178 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v16, _s6LoggerVMa);
  sub_1000110B0(0x800000000000006CLL);

  sub_10001123C(0x800000000000006CLL, v55, v57, 1u);
  sub_1000110B0(0x800000000000006CLL);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000110B0(0x800000000000006CLL);

  v147 = v55;
  v148 = sub_1004A4A54();
  v149 = sub_1004A4A74();
  (*(*(v149 - 8) + 8))(v16, v149);
  v150 = sub_1004A6014();
  if (os_log_type_enabled(v148, v150))
  {
    v151 = swift_slowAlloc();
    v180[0] = swift_slowAlloc();
    *v151 = 68158978;
    *(v151 + 4) = 2;
    *(v151 + 8) = 256;
    v152 = v54;
    v153 = &v146[*(v175 + 20)];
    *(v151 + 10) = *v153;

    v173 = v147;
    *(v151 + 11) = 2082;
    v154 = ConnectionID.debugDescription.getter(*(v153 + 1));
    v156 = sub_10015BA6C(v154, v155, v180);

    *(v151 + 13) = v156;
    *(v151 + 21) = 2082;
    v157 = Tag.debugDescription.getter(v174 | (v152 << 32));
    v159 = sub_10015BA6C(v157, v158, v180);

    *(v151 + 23) = v159;
    *(v151 + 31) = 2082;
    *(v151 + 33) = sub_10015BA6C(20302, 0xE200000000000000, v180);
    *(v151 + 41) = 2082;
    v147 = v173;
    v160 = ResponseText.debugDescription.getter(0x800000000000006CLL, v173, v57);
    v162 = v161;
    sub_10001114C(0x800000000000006CLL);

    v163 = sub_10015BA6C(v160, v162, v180);

    *(v151 + 43) = v163;
    _os_log_impl(&_mh_execute_header, v148, v150, "[%.*hhx-%{public}s] Received 'S: %{public}s %{public}s %{public}s' from network. Server is temporarily unavailable.", v151, 0x33u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10001114C(0x800000000000006CLL);
  }

  v169 = swift_allocObject();
  v170 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
  swift_beginAccess();
  *(v169 + 16) = *(v145 + v170);

  *(v169 + 24) = *ConnectionID.invalid.unsafeMutableAddressor();
  *(v169 + 32) = _swiftEmptySetSingleton;
  *(v169 + 40) = _swiftEmptySetSingleton;
  sub_10019F900(v169 | 0x1000000000000000);

  CommandConnection.cancel()();
  sub_10001114C(0x800000000000006CLL);

  return sub_100173584(0x800000000000006CLL, v147, v57, 1u);
}

uint64_t sub_1001A14A0()
{
  v1 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v1);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  sub_1001AD9FC(v0 + v7, v6, type metadata accessor for ConnectionState);
  sub_1001ADC1C(v6, v3, type metadata accessor for ConnectionState);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if ((result - 4) < 2)
    {
      return result;
    }
  }

  else if (result >= 2)
  {
    sub_1001AD938(v3, type metadata accessor for ConnectionState);
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes;
    swift_beginAccess();
    *(v9 + 16) = *(v0 + v10);

    sub_10019F900(v9 | 0x6000000000000000);
  }

  return sub_1001AD938(v3, type metadata accessor for ConnectionState);
}

Swift::Void __swiftcall CommandConnection.logState()()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A3F84();
  __chkstk_darwin(v5);
  v40 = _s6LoggerVMa(0);
  __chkstk_darwin(v40);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v42 = &v40 - v8;
  __chkstk_darwin(v9);
  v44 = &v40 - v10;
  sub_1001AD9FC(v0 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, &v40 - v10, _s6LoggerVMa);
  sub_1004A4004();
  swift_allocObject();
  v11 = sub_1004A3FF4();
  sub_10000C9C0(&qword_1005D32D0, &unk_1004F7FB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004D01D0;
  sub_1004A3F74();
  sub_1004A3F64();
  *&v61[0] = v12;
  sub_1001AD5E8(&qword_1005D32D8, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_10000C9C0(&qword_1005D32E0, &qword_1004DD0C0);
  sub_1001AD108();
  sub_1004A6544();
  sub_1004A3F94();
  v13 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
  swift_beginAccess();
  v45 = v1;
  sub_1001AD9FC(v1 + v13, v4, type metadata accessor for ConnectionState);
  sub_10020A6E8(v61);
  sub_1001AD938(v4, type metadata accessor for ConnectionState);
  v58 = v61[4];
  v59 = v61[5];
  v60[0] = v62[0];
  *(v60 + 15) = *(v62 + 15);
  v54 = v61[0];
  v55 = v61[1];
  v56 = v61[2];
  v57 = v61[3];
  sub_1001AD16C();
  v43 = v11;
  v14 = sub_1004A3FE4();
  v16 = v15;
  v52[4] = v58;
  v52[5] = v59;
  v53[0] = v60[0];
  *(v53 + 15) = *(v60 + 15);
  v52[0] = v54;
  v52[1] = v55;
  v52[2] = v56;
  v52[3] = v57;
  sub_1001AD1C0(v52);
  sub_100014CEC(v14, v16);
  sub_100014CEC(v14, v16);
  v17 = sub_1001AC334(v14, v16);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    sub_100014D40(v14, v16);
    sub_100014D40(v14, v16);
    sub_100014D40(v14, v16);
    v21 = v44;
    v22 = v42;
    goto LABEL_3;
  }

  v48 = v14;
  v49 = v16;
  sub_100014CEC(v14, v16);
  sub_10000C9C0(&qword_1005D32F8, &qword_1004DD0C8);
  if (swift_dynamicCast())
  {
    sub_1000B364C(v46, v50);
    sub_10002587C(v50, v51);
    v38 = sub_1004A6AC4();
    sub_100014D40(v14, v16);
    v22 = v42;
    if (v38)
    {
      sub_10002587C(v50, v51);
      sub_1004A6AB4();
      sub_100014D40(v14, v16);
      sub_100014D40(v14, v16);
      v20 = *(&v46[0] + 1);
      v19 = *&v46[0];
      sub_1000197E0(v50);
      v21 = v44;
      goto LABEL_3;
    }

    sub_1000197E0(v50);
    v21 = v44;
  }

  else
  {
    sub_100014D40(v14, v16);
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    sub_100025F40(v46, &qword_1005D3300, &qword_1004DD0D0);
    v21 = v44;
    v22 = v42;
  }

  v19 = sub_1001ABFE4(v14, v16);
  v20 = v39;
  sub_100014D40(v14, v16);
  sub_100014D40(v14, v16);
LABEL_3:
  sub_1001AD9FC(v21, v22, _s6LoggerVMa);
  v23 = v41;
  sub_1001AD9FC(v21, v41, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_retain_n();

  v24 = sub_1004A4A54();
  v25 = sub_1004A6034();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *&v54 = swift_slowAlloc();
    *v26 = 68158722;
    *(v26 + 4) = 2;
    *(v26 + 8) = 256;
    v42 = v19;
    v27 = v40;
    v28 = *(v23 + *(v40 + 20));
    sub_1001AD938(v23, _s6LoggerVMa);
    *(v26 + 10) = v28;
    v29 = v22;
    v30 = v45;
    *(v26 + 11) = 2082;
    v31 = *(v29 + *(v27 + 20) + 4);
    sub_1001AD938(v29, _s6LoggerVMa);
    v32 = ConnectionID.debugDescription.getter(v31);
    v34 = sub_10015BA6C(v32, v33, &v54);

    *(v26 + 13) = v34;
    *(v26 + 21) = 2048;
    v35 = *(*(v30 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

    *(v26 + 23) = v35;

    *(v26 + 31) = 2082;
    v36 = sub_10015BA6C(v42, v20, &v54);

    *(v26 + 33) = v36;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%.*hhx-%{public}s] C%llu %{public}s", v26, 0x29u);
    swift_arrayDestroy();

    v37 = v44;
  }

  else
  {

    sub_1001AD938(v23, _s6LoggerVMa);

    sub_1001AD938(v22, _s6LoggerVMa);
    v37 = v21;
  }

  sub_1001AD938(v37, _s6LoggerVMa);
}

uint64_t sub_1001A1E9C(uint64_t a1, unint64_t a2, int a3, __n128 a4)
{
  v5 = v4;
  v42 = a3;
  v43 = a2;
  v44 = type metadata accessor for ConnectionEvent(0);
  __chkstk_darwin(v44);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = _s6LoggerVMa(0);
  __chkstk_darwin(v41);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OutboundContent(0);
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004A53F4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v5 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1004A5404();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v22 = (v5 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands);
    swift_beginAccess();
    v23 = sub_100208EDC(*v22);
    if (v24)
    {
      v25 = v5 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      sub_1001AD9FC(v5 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v10, _s6LoggerVMa);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v26 = sub_1004A4A54();
      v27 = sub_1004A4A74();
      (*(*(v27 - 8) + 8))(v10, v27);
      v28 = sub_1004A6004();
      if (os_log_type_enabled(v26, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v45 = v30;
        *v29 = 68158210;
        *(v29 + 4) = 2;
        *(v29 + 8) = 256;
        v31 = v25 + *(v41 + 20);
        *(v29 + 10) = *v31;

        *(v29 + 11) = 2082;
        v32 = ConnectionID.debugDescription.getter(*(v31 + 4));
        v34 = sub_10015BA6C(v32, v33, &v45);

        *(v29 + 13) = v34;
        _os_log_impl(&_mh_execute_header, v26, v28, "[%.*hhx-%{public}s] Trying to send handshake reply, but no barrier command is running.", v29, 0x15u);
        sub_1000197E0(v30);
      }

      else
      {
      }

      sub_1004A4E64();
      type metadata accessor for ConnectionEvent.FailureReason(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1001A232C(v8, v40);
      v38 = type metadata accessor for ConnectionEvent;
      v39 = v8;
    }

    else
    {
      v35 = v23;
      v36 = v43;
      *v13 = a1;
      *(v13 + 1) = v36;
      v37 = v42 & 1;
      v13[16] = v42 & 1;
      swift_storeEnumTagMultiPayload();
      sub_100193D28(a1, v36, v37);
      sub_1001B78AC(v35, v13);
      v38 = type metadata accessor for OutboundContent;
      v39 = v13;
    }

    return sub_1001AD938(v39, v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A232C(char *a1, __n128 a2)
{
  v409 = a1;
  v393 = type metadata accessor for ConnectionConfiguration(0);
  __chkstk_darwin(v393);
  v401 = (&v376 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v408 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v408);
  v407 = &v376 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v395 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v395);
  v400 = (&v376 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v402 = &v376 - v6;
  __chkstk_darwin(v7);
  v404 = &v376 - v8;
  __chkstk_darwin(v9);
  v397 = &v376 - v10;
  __chkstk_darwin(v11);
  v396 = &v376 - v12;
  v388 = sub_1004A5214();
  v389 = *(v388 - 8);
  __chkstk_darwin(v388);
  v377 = &v376 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v378 = &v376 - v15;
  __chkstk_darwin(v16);
  v381 = &v376 - v17;
  __chkstk_darwin(v18);
  v387 = &v376 - v19;
  __chkstk_darwin(v20);
  v390 = &v376 - v21;
  __chkstk_darwin(v22);
  v383 = &v376 - v23;
  v403 = _s6LoggerVMa(0);
  __chkstk_darwin(v403);
  v394 = &v376 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v392 = &v376 - v26;
  __chkstk_darwin(v27);
  v399 = &v376 - v28;
  __chkstk_darwin(v29);
  v398 = &v376 - v30;
  __chkstk_darwin(v31);
  v386 = &v376 - v32;
  __chkstk_darwin(v33);
  v391 = &v376 - v34;
  __chkstk_darwin(v35);
  v385 = &v376 - v36;
  __chkstk_darwin(v37);
  v384 = &v376 - v38;
  __chkstk_darwin(v39);
  v406 = (&v376 - v40);
  __chkstk_darwin(v41);
  v376 = &v376 - v42;
  __chkstk_darwin(v43);
  v379 = &v376 - v44;
  __chkstk_darwin(v45);
  v382 = &v376 - v46;
  __chkstk_darwin(v47);
  v380 = &v376 - v48;
  __chkstk_darwin(v49);
  v51 = &v376 - v50;
  __chkstk_darwin(v52);
  v54 = (&v376 - v53);
  __chkstk_darwin(v55);
  v57 = &v376 - v56;
  v58 = type metadata accessor for ConnectionEvent.FailureReason(0);
  __chkstk_darwin(v58);
  v60 = &v376 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v63 = &v376 - v62;
  v64 = sub_1004A4E34();
  v405 = *(v64 - 8);
  __chkstk_darwin(v64);
  v66 = &v376 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for ConnectionEvent(0);
  __chkstk_darwin(v67);
  v69 = &v376 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AD9FC(v409, v69, type metadata accessor for ConnectionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v399 = v57;
    v400 = v54;
    v84 = v406;
    v401 = v60;
    v409 = v63;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v85 = v405;
        (*(v405 + 32))(v66, v69, v64);
        sub_1001A7100(v66);
        return (*(v85 + 8))(v66, v64);
      }

      v113 = v409;
      sub_1001ADC1C(v69, v409, type metadata accessor for ConnectionEvent.FailureReason);
      v114 = v410;
      v115 = *(v410 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id);
      v116 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_runningCommands;
      swift_beginAccess();
      v117 = *(v114 + v116);

      LODWORD(v115) = sub_1001B4154(v115, v117);
      v407 = v118;
      v408 = v119;

      v120 = v401;
      sub_1001AD9FC(v113, v401, type metadata accessor for ConnectionEvent.FailureReason);
      v121 = swift_getEnumCaseMultiPayload();
      LODWORD(v398) = v115;
      if (v121 > 1)
      {
        if (v121 == 2)
        {
          v405 = v116;
          v162 = v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
          v163 = v399;
          sub_1001AD9FC(v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v399, _s6LoggerVMa);
          swift_retain_n();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          swift_retain_n();
          v164 = v407;
          swift_bridgeObjectRetain_n();
          v165 = v408;
          swift_bridgeObjectRetain_n();
          v166 = sub_1004A4A54();
          v167 = sub_1004A4A74();
          (*(*(v167 - 8) + 8))(v163, v167);
          v168 = sub_1004A6034();
          if (os_log_type_enabled(v166, v168))
          {
            v169 = swift_slowAlloc();
            v170 = swift_slowAlloc();
            v413 = v170;
            *v169 = 68158722;
            *(v169 + 4) = 2;
            *(v169 + 8) = 256;
            v171 = v162 + *(v403 + 20);
            *(v169 + 10) = *v171;
            *(v169 + 11) = 2082;
            v172 = ConnectionID.debugDescription.getter(*(v171 + 4));
            v174 = sub_10015BA6C(v172, v173, &v413);

            *(v169 + 13) = v174;

            *(v169 + 21) = 2048;
            v175 = *(*(v114 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

            *(v169 + 23) = v175;

            *(v169 + 31) = 2048;
            v176 = *(v164 + 16);

            *(v169 + 33) = v176;

            _os_log_impl(&_mh_execute_header, v166, v168, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): Closed", v169, 0x29u);
            sub_1000197E0(v170);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v305 = v396;
          v306 = v397;
          goto LABEL_71;
        }

        v251 = v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        sub_1001AD9FC(v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v51, _s6LoggerVMa);
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_retain_n();
        v164 = v407;
        swift_bridgeObjectRetain_n();
        v165 = v408;
        swift_bridgeObjectRetain_n();
        v252 = sub_1004A4A54();
        v253 = sub_1004A4A74();
        (*(*(v253 - 8) + 8))(v51, v253);
        v254 = sub_1004A6014();
        if (os_log_type_enabled(v252, v254))
        {
          v255 = swift_slowAlloc();
          v405 = v116;
          v256 = v255;
          v257 = swift_slowAlloc();
          v413 = v257;
          *v256 = 68158722;
          *(v256 + 4) = 2;
          *(v256 + 8) = 256;
          v258 = v251 + *(v403 + 20);
          *(v256 + 10) = *v258;
          *(v256 + 11) = 2082;
          v259 = ConnectionID.debugDescription.getter(*(v258 + 4));
          v261 = sub_10015BA6C(v259, v260, &v413);

          *(v256 + 13) = v261;

          *(v256 + 21) = 2048;
          v262 = *(*(v114 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v256 + 23) = v262;

          *(v256 + 31) = 2048;
          v263 = *(v164 + 16);

          *(v256 + 33) = v263;

          _os_log_impl(&_mh_execute_header, v252, v254, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): invalid continuation state.", v256, 0x29u);
          sub_1000197E0(v257);

          v116 = v405;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        v305 = v396;
        v306 = v397;
        v307 = v409;
LABEL_96:
        *(v114 + v116) = _swiftEmptyArrayStorage;

        v370 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
        swift_beginAccess();
        sub_1001AD9FC(v114 + v370, v305, type metadata accessor for ConnectionState);
        sub_1001AD9FC(v305, v306, type metadata accessor for ConnectionState);
        v371 = swift_getEnumCaseMultiPayload();
        if (v371 <= 2)
        {
          sub_1001AD938(v306, type metadata accessor for ConnectionState);
LABEL_100:
          sub_1001AD938(v305, type metadata accessor for ConnectionState);
          v372 = v404;
          swift_storeEnumTagMultiPayload();
          v373 = v402;
          sub_1001AD9FC(v114 + v370, v402, type metadata accessor for ConnectionState);
          swift_beginAccess();
          sub_1001AC94C(v372, v114 + v370);
          swift_endAccess();
          sub_10019AB14(v373);
          sub_1001AD938(v372, type metadata accessor for ConnectionState);
          sub_1001AD938(v373, type metadata accessor for ConnectionState);
          v374 = swift_allocObject();
          v375 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_recentErrors;
          swift_beginAccess();
          *(v374 + 16) = *(v114 + v375);
          *(v374 + 24) = v398;
          *(v374 + 32) = v164;
          *(v374 + 40) = v165;

          sub_10019FE78(v374 | 0x1000000000000000);

          return sub_1001AD938(v307, type metadata accessor for ConnectionEvent.FailureReason);
        }

        if (v371 == 3)
        {
          sub_1001AD938(v306, type metadata accessor for ConnectionState);
        }

        else if (v371 != 4)
        {
          goto LABEL_100;
        }

        sub_1001AD938(v305, type metadata accessor for ConnectionState);
        sub_1001AD938(v307, type metadata accessor for ConnectionEvent.FailureReason);
      }

      v405 = v116;
      if (!v121)
      {
        sub_1001AD938(v120, type metadata accessor for ConnectionEvent.FailureReason);
        v122 = v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v123 = v400;
        sub_1001AD9FC(v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v400, _s6LoggerVMa);
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_retain_n();
        v124 = sub_1004A4A54();
        v125 = sub_1004A4A74();
        (*(*(v125 - 8) + 8))(v123, v125);
        v126 = sub_1004A6014();
        if (os_log_type_enabled(v124, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v413 = v128;
          *v127 = 68158466;
          *(v127 + 4) = 2;
          *(v127 + 8) = 256;
          v129 = v122 + *(v403 + 20);
          *(v127 + 10) = *v129;
          *(v127 + 11) = 2082;
          v130 = ConnectionID.debugDescription.getter(*(v129 + 4));
          v132 = sub_10015BA6C(v130, v131, &v413);

          *(v127 + 13) = v132;

          *(v127 + 21) = 2048;
          v133 = *(*(v114 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v127 + 23) = v133;

          _os_log_impl(&_mh_execute_header, v124, v126, "[%.*hhx-%{public}s] [C%llu] Connection did fail to authenticate.", v127, 0x1Fu);
          sub_1000197E0(v128);
        }

        else
        {
        }

        v305 = v396;
        v306 = v397;
        v164 = v407;
        v165 = v408;
LABEL_71:
        v116 = v405;
        v307 = v409;
        goto LABEL_96;
      }

      v228 = v389;
      v229 = *(v389 + 88);
      v230 = v388;
      v231 = v229(v120, v388);
      v232 = enum case for NWError.posix(_:);
      if (v231 == enum case for NWError.posix(_:))
      {
        v233 = *(v228 + 16);
        v234 = v228;
        v235 = v230;
        v236 = v383;
        v233(v383, v120, v235);
        (*(v234 + 96))(v236, v235);
        v237 = *v236;
        v230 = v235;
        v228 = v234;
        if (v237 == 89)
        {
          v238 = v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
          v239 = v380;
          sub_1001AD9FC(v114 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v380, _s6LoggerVMa);
          swift_retain_n();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          swift_retain_n();
          v164 = v407;
          swift_bridgeObjectRetain_n();
          v165 = v408;
          swift_bridgeObjectRetain_n();
          v240 = sub_1004A4A54();
          v241 = sub_1004A4A74();
          (*(*(v241 - 8) + 8))(v239, v241);
          v242 = sub_1004A6034();
          if (os_log_type_enabled(v240, v242))
          {
            v243 = swift_slowAlloc();
            v244 = swift_slowAlloc();
            v413 = v244;
            *v243 = 68158722;
            *(v243 + 4) = 2;
            *(v243 + 8) = 256;
            v245 = v238 + *(v403 + 20);
            *(v243 + 10) = *v245;
            *(v243 + 11) = 2082;
            v246 = ConnectionID.debugDescription.getter(*(v245 + 4));
            v248 = sub_10015BA6C(v246, v247, &v413);

            *(v243 + 13) = v248;

            *(v243 + 21) = 2048;
            v249 = *(*(v114 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

            *(v243 + 23) = v249;

            *(v243 + 31) = 2048;
            v250 = *(v164 + 16);

            *(v243 + 33) = v250;

            _os_log_impl(&_mh_execute_header, v240, v242, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): Operation canceled", v243, 0x29u);
            sub_1000197E0(v244);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v305 = v396;
          v306 = v397;
          v307 = v409;
          (*(v389 + 8))(v401, v388);
          goto LABEL_95;
        }
      }

      v267 = v390;
      (*(v228 + 32))(v390, v120, v230);
      v268 = v387;
      v401 = *(v228 + 16);
      (v401)(v387, v267, v230);
      v269 = v229(v268, v230);
      if (v269 == v232)
      {
        (*(v228 + 96))(v268, v230);
        LODWORD(v406) = *v268;
        v114 = v410;
        v270 = v410 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v271 = v382;
        sub_1001AD9FC(v410 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v382, _s6LoggerVMa);
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        swift_retain_n();
        v272 = v407;
        swift_bridgeObjectRetain_n();
        v273 = v228;
        v165 = v408;
        swift_bridgeObjectRetain_n();
        v274 = sub_1004A4A54();
        v275 = sub_1004A4A74();
        (*(*(v275 - 8) + 8))(v271, v275);
        v276 = sub_1004A6014();
        if (os_log_type_enabled(v274, v276))
        {
          v277 = swift_slowAlloc();
          v278 = swift_slowAlloc();
          v413 = v278;
          *v277 = 68158978;
          *(v277 + 4) = 2;
          *(v277 + 8) = 256;
          v279 = v270 + *(v403 + 20);
          *(v277 + 10) = *v279;
          *(v277 + 11) = 2082;
          v280 = ConnectionID.debugDescription.getter(*(v279 + 4));
          v282 = sub_10015BA6C(v280, v281, &v413);

          *(v277 + 13) = v282;

          *(v277 + 21) = 2048;
          v283 = *(*(v114 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v277 + 23) = v283;

          *(v277 + 31) = 2048;
          v284 = *(v272 + 16);

          *(v277 + 33) = v284;

          *(v277 + 41) = 1024;
          *(v277 + 43) = sub_1004A4B64();
          _os_log_impl(&_mh_execute_header, v274, v276, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): posix %{darwin.errno}d", v277, 0x2Fu);
          sub_1000197E0(v278);
          v165 = v408;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        (*(v273 + 8))(v390, v230);
        v305 = v396;
        v306 = v397;
        goto LABEL_87;
      }

      if (v269 == enum case for NWError.dns(_:))
      {
        v308 = v387;
        (*(v228 + 96))(v387, v230);
        LODWORD(v406) = *v308;
        v309 = v410;
        v310 = v267;
        v311 = v410 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v312 = v379;
        sub_1001AD9FC(v410 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v379, _s6LoggerVMa);
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v313 = v381;
        (v401)(v381, v310, v230);
        v114 = v309;
        swift_retain_n();
        v272 = v407;
        swift_bridgeObjectRetain_n();
        v314 = v408;
        swift_bridgeObjectRetain_n();
        v315 = sub_1004A4A54();
        v316 = sub_1004A4A74();
        (*(*(v316 - 8) + 8))(v312, v316);
        v317 = sub_1004A6014();
        if (os_log_type_enabled(v315, v317))
        {
          v318 = swift_slowAlloc();
          v401 = swift_slowAlloc();
          v413 = v401;
          *v318 = 68159234;
          *(v318 + 4) = 2;
          *(v318 + 8) = 256;
          v319 = v311 + *(v403 + 20);
          *(v318 + 10) = *v319;
          *(v318 + 11) = 2082;
          v320 = ConnectionID.debugDescription.getter(*(v319 + 4));
          v322 = sub_10015BA6C(v320, v321, &v413);

          *(v318 + 13) = v322;

          *(v318 + 21) = 2048;
          v323 = *(*(v114 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v318 + 23) = v323;

          *(v318 + 31) = 2048;
          v324 = *(v272 + 16);

          *(v318 + 33) = v324;

          *(v318 + 41) = 1024;
          *(v318 + 43) = v406;
          *(v318 + 47) = 2080;
          v325 = v381;
          v326 = sub_1004A51F4();
          v328 = sub_10015BA6C(v326, v327, &v413);

          *(v318 + 49) = v328;
          v329 = *(v228 + 8);
          v329(v325, v230);
          v330 = "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): DNS %d, %s";
LABEL_85:
          _os_log_impl(&_mh_execute_header, v315, v317, v330, v318, 0x39u);
          swift_arrayDestroy();

          v329(v390, v230);
          v305 = v396;
          v306 = v397;
          v307 = v409;
          v164 = v272;
LABEL_94:
          v165 = v408;
          goto LABEL_95;
        }
      }

      else
      {
        if (v269 != enum case for NWError.tls(_:))
        {
          v348 = v410;
          v349 = v410 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
          v350 = v84;
          sub_1001AD9FC(v410 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v84, _s6LoggerVMa);
          swift_retain_n();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v351 = v377;
          (v401)(v377, v267, v230);
          swift_retain_n();
          v352 = v407;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v353 = sub_1004A4A54();
          v354 = sub_1004A4A74();
          (*(*(v354 - 8) + 8))(v350, v354);
          v355 = sub_1004A6014();
          v406 = v353;
          if (os_log_type_enabled(v353, v355))
          {
            v356 = swift_slowAlloc();
            LODWORD(v399) = v355;
            v357 = v356;
            v358 = swift_slowAlloc();
            v400 = swift_slowAlloc();
            v413 = v400;
            *v357 = 68158978;
            *(v357 + 4) = 2;
            *(v357 + 8) = 256;
            v359 = v349 + *(v403 + 20);
            *(v357 + 10) = *v359;
            *(v357 + 11) = 2082;
            v360 = ConnectionID.debugDescription.getter(*(v359 + 4));
            v362 = sub_10015BA6C(v360, v361, &v413);

            *(v357 + 13) = v362;

            *(v357 + 21) = 2048;
            v363 = *(*(v348 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

            *(v357 + 23) = v363;

            *(v357 + 31) = 2048;
            v364 = *(v352 + 16);

            *(v357 + 33) = v364;

            *(v357 + 41) = 2112;
            sub_1001AD5E8(&qword_1005D35D0, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
            swift_allocError();
            (v401)(v365, v351, v230);
            v366 = sub_1004A4264();

            *(v357 + 43) = v366;
            v367 = v358;
            *v358 = v366;
            v368 = *(v389 + 8);
            v368(v351, v230);
            v369 = v406;
            _os_log_impl(&_mh_execute_header, v406, v399, "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): %@", v357, 0x33u);
            sub_100025F40(v367, &qword_1005D51A0, &qword_1004D0940);

            sub_1000197E0(v400);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            v368 = *(v389 + 8);
            v368(v351, v230);
          }

          v368(v390, v230);
          v114 = v348;
          v305 = v396;
          v306 = v397;
          v368(v387, v230);
          v307 = v409;
          v164 = v407;
          goto LABEL_94;
        }

        v331 = v387;
        (*(v228 + 96))(v387, v230);
        LODWORD(v406) = *v331;
        v332 = v410;
        v333 = v267;
        v334 = v410 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
        v335 = v376;
        sub_1001AD9FC(v410 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v376, _s6LoggerVMa);
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v313 = v378;
        (v401)(v378, v333, v230);
        v114 = v332;
        swift_retain_n();
        v272 = v407;
        swift_bridgeObjectRetain_n();
        v314 = v408;
        swift_bridgeObjectRetain_n();
        v315 = sub_1004A4A54();
        v336 = sub_1004A4A74();
        (*(*(v336 - 8) + 8))(v335, v336);
        v317 = sub_1004A6014();
        if (os_log_type_enabled(v315, v317))
        {
          v318 = swift_slowAlloc();
          v401 = swift_slowAlloc();
          v413 = v401;
          *v318 = 68159234;
          *(v318 + 4) = 2;
          *(v318 + 8) = 256;
          v337 = v334 + *(v403 + 20);
          *(v318 + 10) = *v337;
          *(v318 + 11) = 2082;
          v338 = ConnectionID.debugDescription.getter(*(v337 + 4));
          v340 = sub_10015BA6C(v338, v339, &v413);

          *(v318 + 13) = v340;

          *(v318 + 21) = 2048;
          v341 = *(*(v114 + 16) + OBJC_IVAR____TtC15IMAP2Connection10Connection_underlyingID);

          *(v318 + 23) = v341;

          *(v318 + 31) = 2048;
          v342 = *(v272 + 16);

          *(v318 + 33) = v342;

          *(v318 + 41) = 1024;
          *(v318 + 43) = v406;
          *(v318 + 47) = 2080;
          v343 = v378;
          v344 = sub_1004A51F4();
          v346 = sub_10015BA6C(v344, v345, &v413);

          *(v318 + 49) = v346;
          v329 = *(v228 + 8);
          v329(v343, v230);
          v330 = "[%.*hhx-%{public}s] [C%llu] Connection did fail (%ld running command(s)): TLS %d, %s";
          goto LABEL_85;
        }
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v347 = *(v228 + 8);
      v347(v313, v230);

      v347(v390, v230);
      v305 = v396;
      v306 = v397;
      v165 = v314;
LABEL_87:
      v307 = v409;
      v164 = v272;
LABEL_95:
      v116 = v405;
      goto LABEL_96;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v87 = v407;
      sub_1001ADC1C(v69, v407, type metadata accessor for UntaggedResponse);
      v88 = swift_allocBox();
      sub_1001AD9FC(v87, v89, type metadata accessor for UntaggedResponse);
      sub_10019FE78(v88 | 0x3000000000000000);

      return sub_1001AD938(v87, type metadata accessor for UntaggedResponse);
    }

    v134 = *v69;
    v135 = *(v69 + 1);
    v136 = *(v69 + 2);
    v137 = v69[24];
    v138 = v69[28];
    v139 = *(v69 + 8);
    v140 = v410;
    swift_beginAccess();
    v141 = static MonotonicTime.now()();
    v142 = v138 | (v139 << 32);
    v143 = sub_100208FE0(v142, v141);
    v145 = v144;
    swift_endAccess();
    LODWORD(v409) = v137;
    if ((v145 & 1) == 0)
    {
      v407 = HIDWORD(v143);
      v177 = v140 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
      v178 = v391;
      sub_1001AD9FC(v140 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v391, _s6LoggerVMa);
      swift_retain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v179 = sub_1004A4A54();
      v180 = sub_1004A4A74();
      (*(*(v180 - 8) + 8))(v178, v180);
      v181 = sub_1004A6004();
      if (os_log_type_enabled(v179, v181))
      {
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v408 = v136;
        v412[0] = v183;
        *v182 = 68158466;
        *(v182 + 4) = 2;
        *(v182 + 8) = 256;
        v184 = v177 + *(v403 + 20);
        *(v182 + 10) = *v184;
        *(v182 + 11) = 2082;
        v185 = ConnectionID.debugDescription.getter(*(v184 + 4));
        v187 = sub_10015BA6C(v185, v186, v412);

        *(v182 + 13) = v187;

        *(v182 + 21) = 2082;
        v188 = Tag.debugDescription.getter(v143 & 0xFFFFFFFF000000FFLL);
        v190 = sub_10015BA6C(v188, v189, v412);

        *(v182 + 23) = v190;
        _os_log_impl(&_mh_execute_header, v179, v181, "[%.*hhx-%{public}s] Command %{public}s completed.", v182, 0x1Fu);
        swift_arrayDestroy();
        v136 = v408;
      }

      else
      {
      }

      v264 = swift_allocObject();
      v265 = v407;
      *(v264 + 16) = v143;
      *(v264 + 20) = v265;
      *(v264 + 24) = v134;
      *(v264 + 32) = v135;
      *(v264 + 40) = v136;
      v266 = v409;
      *(v264 + 48) = v409;
      sub_10001123C(v134, v135, v136, v266);
      sub_10019FE78(v264 | 0x4000000000000000);

      goto LABEL_66;
    }

    v408 = v136;
    v146 = v140 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    if (v143)
    {
      if (v143 == 1)
      {
        v147 = v385;
        sub_1001AD9FC(v140 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v385, _s6LoggerVMa);
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v148 = sub_1004A4A54();
        v149 = sub_1004A4A74();
        (*(*(v149 - 8) + 8))(v147, v149);
        v150 = sub_1004A6034();
        if (os_log_type_enabled(v148, v150))
        {
          v151 = swift_slowAlloc();
          v412[0] = swift_slowAlloc();
          *v151 = 68158466;
          *(v151 + 4) = 2;
          *(v151 + 8) = 256;
          v152 = v146 + *(v403 + 20);
          *(v151 + 10) = *v152;
          *(v151 + 11) = 2082;
          v153 = ConnectionID.debugDescription.getter(*(v152 + 4));
          v155 = sub_10015BA6C(v153, v154, v412);

          *(v151 + 13) = v155;

          *(v151 + 21) = 2082;
          v156 = Tag.debugDescription.getter(v142);
          v158 = sub_10015BA6C(v156, v157, v412);

          *(v151 + 23) = v158;
          v159 = "[%.*hhx-%{public}s] %{public}s IDLE completed.";
LABEL_60:
          _os_log_impl(&_mh_execute_header, v148, v150, v159, v151, 0x1Fu);
          swift_arrayDestroy();
LABEL_63:

LABEL_65:

          v136 = v408;
          v266 = v409;
LABEL_66:
          sub_1001A7D2C();
          return sub_100173584(v134, v135, v136, v266);
        }
      }

      else
      {
        v294 = v386;
        sub_1001AD9FC(v140 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v386, _s6LoggerVMa);
        swift_retain_n();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v148 = sub_1004A4A54();
        v295 = sub_1004A4A74();
        (*(*(v295 - 8) + 8))(v294, v295);
        v296 = sub_1004A6014();
        if (os_log_type_enabled(v148, v296))
        {
          v297 = swift_slowAlloc();
          v407 = swift_slowAlloc();
          v412[0] = v407;
          *v297 = 68158466;
          *(v297 + 4) = 2;
          *(v297 + 8) = 256;
          v298 = v146 + *(v403 + 20);
          *(v297 + 10) = *v298;
          *(v297 + 11) = 2082;
          v299 = ConnectionID.debugDescription.getter(*(v298 + 4));
          v301 = sub_10015BA6C(v299, v300, v412);

          *(v297 + 13) = v301;

          *(v297 + 21) = 2082;
          v302 = Tag.debugDescription.getter(v142);
          v304 = sub_10015BA6C(v302, v303, v412);

          *(v297 + 23) = v304;
          _os_log_impl(&_mh_execute_header, v148, v296, "[%.*hhx-%{public}s] Command with unknown tag %{public}s completed.", v297, 0x1Fu);
          swift_arrayDestroy();
          goto LABEL_63;
        }
      }
    }

    else
    {
      v285 = v384;
      sub_1001AD9FC(v140 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v384, _s6LoggerVMa);
      swift_retain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v148 = sub_1004A4A54();
      v286 = sub_1004A4A74();
      (*(*(v286 - 8) + 8))(v285, v286);
      v150 = sub_1004A6004();
      if (os_log_type_enabled(v148, v150))
      {
        v151 = swift_slowAlloc();
        v412[0] = swift_slowAlloc();
        *v151 = 68158466;
        *(v151 + 4) = 2;
        *(v151 + 8) = 256;
        v287 = v146 + *(v403 + 20);
        *(v151 + 10) = *v287;
        *(v151 + 11) = 2082;
        v288 = ConnectionID.debugDescription.getter(*(v287 + 4));
        v290 = sub_10015BA6C(v288, v289, v412);

        *(v151 + 13) = v290;

        *(v151 + 21) = 2082;
        v291 = Tag.debugDescription.getter(v142);
        v293 = sub_10015BA6C(v291, v292, v412);

        *(v151 + 23) = v293;
        v159 = "[%.*hhx-%{public}s] %{public}s NOOP completed.";
        goto LABEL_60;
      }
    }

    goto LABEL_65;
  }

  if (EnumCaseMultiPayload > 5)
  {
    v71 = v410;
    if (EnumCaseMultiPayload == 6)
    {
      v111 = *v69;
      v112 = swift_allocObject();
      *(v112 + 16) = v111;
      sub_10019FE78(v112 | 0x7000000000000000);
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v72 = (v410 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger);
      v73 = v399;
      sub_1001AD9FC(v410 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v399, _s6LoggerVMa);
      swift_retain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v74 = sub_1004A4A54();
      v75 = sub_1004A4A74();
      (*(*(v75 - 8) + 8))(v73, v75);
      v76 = sub_1004A6034();
      v77 = os_log_type_enabled(v74, v76);
      v409 = v72;
      if (v77)
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v412[0] = v79;
        *v78 = 68158210;
        *(v78 + 4) = 2;
        *(v78 + 8) = 256;
        v80 = &v72[*(v403 + 20)];
        *(v78 + 10) = *v80;
        *(v78 + 11) = 2082;
        v81 = ConnectionID.debugDescription.getter(*(v80 + 1));
        v83 = sub_10015BA6C(v81, v82, v412);

        *(v78 + 13) = v83;

        _os_log_impl(&_mh_execute_header, v74, v76, "[%.*hhx-%{public}s] Connection did start TLS.", v78, 0x15u);
        sub_1000197E0(v79);
      }

      else
      {
      }

      v191 = v401;
      v192 = *(v71 + 16);
      v193 = sub_1001B86D0();
      v196 = v193;
      v197 = v195;
      v408 = v194;
      if (v195 == 1)
      {
        v198 = 0;
        v199 = 0;
        v200 = 0x8000000000000000;
      }

      else
      {
        if (*(v192 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration + *(v393 + 28)) >= 0)
        {
          v200 = v193 | 0x4000000000000000;
        }

        else
        {
          v200 = v193;
        }

        v198 = v194;
        v199 = v195;
      }

      sub_1001AD9FC(v192 + OBJC_IVAR____TtC15IMAP2Connection10Connection_configuration, v191, type metadata accessor for ConnectionConfiguration);
      v201 = sub_1001B8394();
      v203 = v202;
      v205 = v204;
      sub_1001AD938(v191, type metadata accessor for ConnectionConfiguration);
      v412[0] = v200;
      v412[1] = v198;
      v412[2] = v199;
      v412[3] = v201;
      v412[4] = v203;
      v412[5] = v205;
      v206 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
      v207 = v410;
      swift_beginAccess();
      v208 = v404;
      sub_1001AD9FC(v207 + v206, v404, type metadata accessor for ConnectionState);
      sub_1001C4358(v412, v409);
      sub_100175584(v196, v408, v197);
      sub_100175584(v201, v203, v205);
      v209 = v402;
      sub_1001AD9FC(v207 + v206, v402, type metadata accessor for ConnectionState);
      swift_beginAccess();
      sub_1001AC94C(v208, v207 + v206);
      swift_endAccess();
      sub_10019AB14(v209);
      sub_1001AD938(v208, type metadata accessor for ConnectionState);
      sub_1001AD938(v209, type metadata accessor for ConnectionState);
      return sub_1001A86A0();
    }

    else
    {
      return sub_1001A88B0();
    }
  }

  v90 = v410;
  if (EnumCaseMultiPayload == 4)
  {
    v92 = *v69;
    v91 = *(v69 + 1);
    v93 = v69[16];
    v94 = v410 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
    v95 = v398;
    sub_1001AD9FC(v410 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v398, _s6LoggerVMa);
    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v96 = sub_1004A4A54();
    v97 = sub_1004A4A74();
    v98 = *(v97 - 8);
    v99 = *(v98 + 8);
    v408 = v98 + 8;
    (v99)(v95, v97);
    v100 = sub_1004A6004();
    v101 = os_log_type_enabled(v96, v100);
    v409 = v99;
    if (v101)
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      LODWORD(v407) = v93;
      v406 = v91;
      v104 = v92;
      v105 = v103;
      v412[0] = v103;
      *v102 = 68158210;
      *(v102 + 4) = 2;
      *(v102 + 8) = 256;
      v106 = v94 + *(v403 + 20);
      *(v102 + 10) = *v106;
      *(v102 + 11) = 2082;
      v107 = ConnectionID.debugDescription.getter(*(v106 + 4));
      v109 = v94;
      v110 = sub_10015BA6C(v107, v108, v412);

      *(v102 + 13) = v110;
      v94 = v109;

      _os_log_impl(&_mh_execute_header, v96, v100, "[%.*hhx-%{public}s] Received handshake.", v102, 0x15u);
      sub_1000197E0(v105);
      v92 = v104;
      v91 = v406;
      v93 = v407;
    }

    else
    {
    }

    v210 = v90;
    v211 = v400;
    v212 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_state;
    swift_beginAccess();
    sub_1001AD9FC(v210 + v212, v211, type metadata accessor for ConnectionState);

    sub_1001C3EF8(v92, v91, v93, v94, sub_1001ADD74, v210, sub_1001AD534, v210);
    v227 = v404;
    sub_1001AD9FC(v210 + v212, v404, type metadata accessor for ConnectionState);
    swift_beginAccess();
    sub_1001AC94C(v211, v210 + v212);
    swift_endAccess();
    sub_10019AB14(v227);
    sub_1001AD938(v211, type metadata accessor for ConnectionState);
    sub_1001AD938(v227, type metadata accessor for ConnectionState);

    sub_1001A86A0();
    sub_10019F900(0x8000000000000008);
    return sub_10018E150(v92, v91, v93);
  }

  v160 = *v69;
  v161 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_pathAttributes;
  swift_beginAccess();
  if (sub_100083010(*(v90 + v161), v160))
  {
  }

  *(v90 + v161) = v160;

  v213 = v90 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger;
  v214 = v392;
  sub_1001AD9FC(v90 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_logger, v392, _s6LoggerVMa);
  swift_retain_n();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_bridgeObjectRetain_n();
  v215 = sub_1004A4A54();
  v216 = sub_1004A4A74();
  (*(*(v216 - 8) + 8))(v214, v216);
  v217 = sub_1004A6034();
  if (os_log_type_enabled(v215, v217))
  {
    v218 = swift_slowAlloc();
    v219 = swift_slowAlloc();
    v411 = v219;
    *v218 = 68158466;
    *(v218 + 4) = 2;
    *(v218 + 8) = 256;
    v220 = v213 + *(v403 + 20);
    *(v218 + 10) = *v220;
    *(v218 + 11) = 2082;
    v221 = ConnectionID.debugDescription.getter(*(v220 + 4));
    v223 = sub_10015BA6C(v221, v222, &v411);

    *(v218 + 13) = v223;

    *(v218 + 21) = 1024;
    if (*(v160 + 16))
    {
      sub_1004A6E94();
      sub_1004A6EB4(0);
      v224 = sub_1004A6F14() & ~(-1 << *(v160 + 32));
      v225 = *(v160 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v224;

      v226 = v225 & 1;
    }

    else
    {

      v226 = 0;
    }

    *(v218 + 23) = v226;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v215, v217, "[%.*hhx-%{public}s] Path did change. Constrained: %{BOOL}d", v218, 0x1Bu);
    sub_1000197E0(v219);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return sub_1001A14A0();
}

void sub_1001A5A14(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A53F4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 24);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1004A5404();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v11 = static MonotonicTime.now()();
    swift_beginAccess();
    sub_1001A6808(v11, a1);
    swift_endAccess();
    v12 = OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_enqueuedEvents;
    swift_beginAccess();
    if (*(v2 + v12))
    {
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = *(type metadata accessor for ConnectionEvent(0) - 8);
        v16 = (a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)));
        v17 = *(v14 + 72);
        do
        {
          sub_1001A232C(v16, v15);
          v16 += v17;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      *(v2 + v12) = _swiftEmptyArrayStorage;
      v18 = *(a1 + 16);
      if (v18)
      {
        v19 = *(type metadata accessor for ConnectionEvent(0) - 8);
        v21 = (a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)));
        v22 = *(v19 + 72);
        do
        {
          sub_1001A232C(v21, v20);
          v21 += v22;
          --v18;
        }

        while (v18);
      }

      sub_1001A90C0();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001A5C90(Swift::Int64 a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v102 = a2;
  v94 = a1;
  v3 = sub_10000C9C0(&qword_1005D35E0, &qword_1004DD1C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v86 - v4;
  v93 = type metadata accessor for ConnectionEvent(0);
  v104 = *(v93 - 8);
  __chkstk_darwin(v93);
  v100 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v86 - v8;
  v10 = sub_10000C9C0(&qword_1005D35F8, &qword_1004DD1E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v86 - v14;
  v15 = sub_10000C9C0(&qword_1005D35E8, &unk_1004DD1D0);
  __chkstk_darwin(v15 - 8);
  v99 = &v86 - v16;
  v17 = sub_10000C9C0(&qword_1005D3600, &qword_1004DD1E8);
  __chkstk_darwin(v17 - 8);
  v103 = &v86 - v18;
  v105 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v105);
  v92 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v86 - v21;
  v23 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v88 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v87 = &v86 - v27;
  __chkstk_darwin(v28);
  v95 = (&v86 - v29);
  __chkstk_darwin(v30);
  v96 = &v86 - v31;
  __chkstk_darwin(v32);
  v89 = &v86 - v33;
  __chkstk_darwin(v34);
  v97 = &v86 - v35;
  __chkstk_darwin(v36);
  v38 = &v86 - v37;
  v86 = v2;
  v39 = *v2;
  v40 = (*v2 + 16);
  v41 = *v40;
  v101 = *v2;
  if (v41)
  {
    v42 = 0;
    while (v42 < *v40)
    {
      sub_1001AD9FC(v39 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v42, v38, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_1001ADC1C(&v38[*(v23 + 20)], v22, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) < 5)
      {
        sub_1001AD938(v22, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      }

      else if (EnumCaseMultiPayload != 6)
      {
        sub_1001AD938(v22, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v91 = 0;
        goto LABEL_10;
      }

      ++v42;
      v39 = v101;
      if (v41 == v42)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_9:
  v91 = 1;
LABEL_10:
  v44 = v99;
  sub_10000E268(v102, v99, &qword_1005D35E8, &unk_1004DD1D0);
  v45 = v106;
  sub_1001ADC1C(v44, v106, type metadata accessor for ConnectionEvent);
  v46 = v104;
  v47 = v104 + 56;
  v102 = *(v104 + 56);
  v48 = v93;
  v102(v45, 0, 1, v93);
  v49 = v103;
  v102(v103, 1, 1, v48);
  sub_1001ADC84(v106, v49);
  sub_1001ADCF4(v49, v12);
  v99 = v47;
  v102(v49, 1, 1, v48);
  v50 = *(v46 + 48);
  v104 = v46 + 48;
  v98 = v50;
  v51 = v50(v12, 1, v48);
  v52 = v94;
  if (v51 != 1)
  {
    v106 = _swiftEmptyArrayStorage;
    v90 = v12;
    while (1)
    {
      sub_1001ADC1C(v12, v9, type metadata accessor for ConnectionEvent);
      v64 = v100;
      sub_1001AD9FC(v9, v100, type metadata accessor for ConnectionEvent);
      sub_1001FDA58(v52, v64, v5);
      sub_1001AD938(v9, type metadata accessor for ConnectionEvent);
      if ((*(v24 + 48))(v5, 1, v23) != 1)
      {
        break;
      }

      sub_100025F40(v5, &qword_1005D35E0, &qword_1004DD1C8);
LABEL_25:
      v63 = v103;
      sub_1001ADCF4(v103, v12);
      v102(v63, 1, 1, v48);
      if (v98(v12, 1, v48) == 1)
      {
        goto LABEL_12;
      }
    }

    v65 = v9;
    v66 = v5;
    v67 = v23;
    v68 = v66;
    v69 = v96;
    sub_1001ADC1C(v66, v96, type metadata accessor for CommandConnection.RecentErrors.Error);
    v70 = v92;
    if ((v91 & 1) == 0)
    {
      sub_1001AD9FC(v69 + *(v67 + 20), v92, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      v71 = swift_getEnumCaseMultiPayload();
      if ((v71 - 1) >= 5)
      {
        v69 = v96;
        if (!v71)
        {
          sub_1001AD938(v70, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
          sub_1001AD938(v69, type metadata accessor for CommandConnection.RecentErrors.Error);
          v23 = v67;
          v5 = v68;
          v9 = v65;
LABEL_35:
          v12 = v90;
          goto LABEL_25;
        }
      }

      else
      {
        sub_1001AD938(v70, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        v69 = v96;
      }
    }

    v72 = v89;
    sub_1001ADC1C(v69, v89, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1001ADC1C(v72, v97, type metadata accessor for CommandConnection.RecentErrors.Error);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v106 = sub_1001EBC34(0, *(v106 + 2) + 1, 1, v106);
    }

    v23 = v67;
    v74 = *(v106 + 2);
    v73 = *(v106 + 3);
    v5 = v68;
    if (v74 >= v73 >> 1)
    {
      v106 = sub_1001EBC34((v73 > 1), v74 + 1, 1, v106);
    }

    v9 = v65;
    v75 = v106;
    *(v106 + 2) = v74 + 1;
    sub_1001ADC1C(v97, &v75[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v74], type metadata accessor for CommandConnection.RecentErrors.Error);
    v48 = v93;
    v52 = v94;
    goto LABEL_35;
  }

  v106 = _swiftEmptyArrayStorage;
LABEL_12:
  sub_100025F40(v103, &qword_1005D3600, &qword_1004DD1E8);
  v53.rawValue = MonotonicTime.init(seconds:since:)(-4.0, v52).rawValue;
  v54 = *v40;
  if (!*v40)
  {
    v62 = 0;
    goto LABEL_43;
  }

  v55 = 0;
  v56 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v57 = *(v24 + 72);
  v105 = v56;
  v58 = v86;
  v59 = v101;
  while (1)
  {
    v60 = *(v101 + v56);
    v61 = v53.rawValue - v60;
    if (v53.rawValue >= v60)
    {
      if (__OFSUB__(v53.rawValue, v60))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (__OFSUB__(v60, v53.rawValue))
      {
        goto LABEL_67;
      }

      v61 = v53.rawValue - v60;
      if (__OFSUB__(0, v60 - v53.rawValue))
      {
        goto LABEL_68;
      }
    }

    if (v61 > 0)
    {
      break;
    }

    ++v55;
    v56 += v57;
    if (v54 == v55)
    {
      v62 = v54;
      goto LABEL_43;
    }
  }

  v62 = v55 + 1;
  if (__OFADD__(v55, 1))
  {
    goto LABEL_78;
  }

  if (v62 != v54)
  {
    v76 = v57 + v56;
    while (v62 < v54)
    {
      v77 = v59;
      v78 = v95;
      sub_1001AD9FC(v59 + v76, v95, type metadata accessor for CommandConnection.RecentErrors.Error);
      v79 = *v78;
      v80 = __OFSUB__(v53.rawValue, *v78);
      v81 = v53.rawValue - *v78;
      if (v81 < 0 != v80)
      {
        v80 = __OFSUB__(v79, v53.rawValue);
        v82 = v79 - v53.rawValue;
        if (v80)
        {
          goto LABEL_71;
        }

        v81 = -v82;
        if (__OFSUB__(0, v82))
        {
          goto LABEL_72;
        }
      }

      else if (v80)
      {
        goto LABEL_70;
      }

      sub_1001AD938(v95, type metadata accessor for CommandConnection.RecentErrors.Error);
      if (v81 > 0)
      {
        v59 = v77;
      }

      else
      {
        v59 = v77;
        if (v62 != v55)
        {
          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_73;
          }

          v83 = *v40;
          if (v55 >= *v40)
          {
            goto LABEL_74;
          }

          sub_1001AD9FC(v77 + v105 + v55 * v57, v87, type metadata accessor for CommandConnection.RecentErrors.Error);
          if (v62 >= v83)
          {
            goto LABEL_75;
          }

          sub_1001AD9FC(v77 + v76, v88, type metadata accessor for CommandConnection.RecentErrors.Error);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_1001EDF14(v77);
          }

          sub_1001AD998(v88, v77 + v105 + v55 * v57, v84);
          if (v62 >= v77[2])
          {
            goto LABEL_76;
          }

          sub_1001AD998(v87, v77 + v76, v85);
          v59 = v77;
          *v58 = v77;
        }

        ++v55;
      }

      ++v62;
      v40 = v59 + 2;
      v54 = v59[2];
      v76 += v57;
      if (v62 == v54)
      {
        goto LABEL_42;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v62 = v54;
LABEL_42:
  v54 = v55;
  if (v62 >= v55)
  {
LABEL_43:
    sub_1001AC628(v54, v62);
    sub_100215A50(v106);
    return;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
}
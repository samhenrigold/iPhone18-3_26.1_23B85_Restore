uint64_t sub_100215C70(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *v7;
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v9;
      v15 = v8;

      v11 = (a1)(v14);

      if (v3)
      {
        break;
      }

      v12 = v6-- == 0;
      v7 += 32;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_100215D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v15[10] = *(a2 + 160);
  v16 = *(a2 + 176);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_10021D0C8(v13, v15) & 1;
}

uint64_t sub_100215DF8(__int128 *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v77 = a3;
  v81 = a1;
  v8 = type metadata accessor for UnauthenticatedState(0);
  __chkstk_darwin(v8);
  v78 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Authenticator(0);
  __chkstk_darwin(v10 - 8);
  v80 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s6LoggerVMa(0);
  __chkstk_darwin(v12);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v74 - v16;
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  __chkstk_darwin(v21);
  v23 = &v74 - v22;
  v79 = a5;
  if (a4)
  {
    v75 = v8;
    sub_1002201C8(a5, &v74 - v22, _s6LoggerVMa);
    sub_1002201C8(a5, v20, _s6LoggerVMa);
    sub_1000110B0(a2);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v24 = v81;
    sub_10019782C(v81, v87);
    sub_1000110B0(a2);

    v25 = sub_1004A4A54();
    v26 = sub_1004A6014();
    sub_100193BF0(v24);
    sub_10001114C(a2);

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v76 = a2;
      v28 = v27;
      *&v87[0] = swift_slowAlloc();
      *v28 = 68158722;
      *(v28 + 4) = 2;
      *(v28 + 8) = 256;
      v29 = v20[*(v12 + 20)];
      sub_100220230(v20, _s6LoggerVMa);
      *(v28 + 10) = v29;
      *(v28 + 11) = 2082;
      v30 = *&v23[*(v12 + 20) + 4];
      sub_100220230(v23, _s6LoggerVMa);
      v31 = ConnectionID.debugDescription.getter(v30);
      v33 = sub_10015BA6C(v31, v32, v87);

      *(v28 + 13) = v33;
      *(v28 + 21) = 2082;
      v34 = v81;
      v36 = sub_1001EE5E8(v35);
      v38 = sub_10015BA6C(v36, v37, v87);

      *(v28 + 23) = v38;
      *(v28 + 31) = 2082;
      v39 = ResponseText.debugDescription.getter(v76, v77, a4);
      v41 = sub_10015BA6C(v39, v40, v87);

      *(v28 + 33) = v41;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%.*hhx-%{public}s] Authentication failed for mechanism '%{public}s': %{public}s", v28, 0x29u);
      swift_arrayDestroy();

      a2 = v76;

      sub_10001114C(a2);

      v42 = v34;
      goto LABEL_9;
    }

    sub_100220230(v20, _s6LoggerVMa);
    sub_10001114C(a2);

    sub_100220230(v23, _s6LoggerVMa);
  }

  else
  {
    v76 = a2;
    sub_1002201C8(a5, v17, _s6LoggerVMa);
    sub_1002201C8(a5, v14, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v43 = v81;
    sub_10019782C(v81, v87);
    v44 = sub_1004A4A54();
    v45 = sub_1004A6014();
    sub_100193BF0(v43);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v75 = v8;
      *&v87[0] = v47;
      *v46 = 68158466;
      *(v46 + 4) = 2;
      *(v46 + 8) = 256;
      v48 = v14[*(v12 + 20)];
      sub_100220230(v14, _s6LoggerVMa);
      *(v46 + 10) = v48;
      *(v46 + 11) = 2082;
      v49 = *&v17[*(v12 + 20) + 4];
      sub_100220230(v17, _s6LoggerVMa);
      v50 = ConnectionID.debugDescription.getter(v49);
      v52 = sub_10015BA6C(v50, v51, v87);

      *(v46 + 13) = v52;
      *(v46 + 21) = 2082;
      v53 = v81;
      v55 = sub_1001EE5E8(v54);
      v57 = sub_10015BA6C(v55, v56, v87);

      *(v46 + 23) = v57;
      _os_log_impl(&_mh_execute_header, v44, v45, "[%.*hhx-%{public}s] Authentication failed for mechanism '%{public}s'.", v46, 0x1Fu);
      swift_arrayDestroy();

      a2 = v76;
      v42 = v53;
      goto LABEL_9;
    }

    sub_100220230(v14, _s6LoggerVMa);

    sub_100220230(v17, _s6LoggerVMa);
    a2 = v76;
  }

  v42 = v81;
LABEL_9:
  v58 = v78;
  sub_1002201C8(v82, v78, type metadata accessor for UnauthenticatedState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v60 = v79;
  if (EnumCaseMultiPayload != 2)
  {
    return sub_100220230(v58, type metadata accessor for UnauthenticatedState);
  }

  sub_100220230(v82, type metadata accessor for UnauthenticatedState);
  v61 = v58;
  v62 = v80;
  sub_100220160(v61, v80, type metadata accessor for Authenticator);
  v63 = sub_100195D34(v42, a2, v77, a4, v60);
  __chkstk_darwin(v63);
  *(&v74 - 2) = v62;
  sub_100195F08(sub_100191D20, v64, v83);
  v88 = v85;
  v89 = v86;
  v87[1] = v83[1];
  v87[2] = v84;
  v87[0] = v83[0];
  if ((~*(&v84 + 1) & 0x3000000000000000) != 0 || (*(&v88 + 1) & 0x1000000000000000) == 0)
  {
    sub_100025F40(v87, &qword_1005D2F38, &unk_1004DC8E0);
    sub_100220160(v80, v82, type metadata accessor for Authenticator);
  }

  else
  {
    v65 = v80;
    sub_100195004();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    sub_100220230(v65, type metadata accessor for Authenticator);
    v72 = v82;
    *v82 = v67;
    v72[1] = v69;
    v72[2] = v71;
    *(v72 + 24) = 0;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100216684(uint64_t a1, unint64_t *a2, NSObject *a3)
{
  v4 = v3;
  v117 = a1;
  v118 = a3;
  v116 = _s6LoggerVMa(0);
  __chkstk_darwin(v116);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v111 - v9;
  __chkstk_darwin(v11);
  v13 = &v111 - v12;
  __chkstk_darwin(v14);
  v16 = &v111 - v15;
  __chkstk_darwin(v17);
  v19 = &v111 - v18;
  __chkstk_darwin(v20);
  v22 = &v111 - v21;
  __chkstk_darwin(v23);
  v114 = &v111 - v24;
  __chkstk_darwin(v25);
  v115 = (&v111 - v26);
  __chkstk_darwin(v27);
  v112 = &v111 - v28;
  __chkstk_darwin(v29);
  v113 = &v111 - v30;
  v119 = v4;
  sub_100220230(v4, type metadata accessor for UnauthenticatedState);
  v32 = *a2;
  v31 = a2[1];
  v33 = a2[2];
  v34 = *a2 >> 62;
  if (v34)
  {
    if (v34 == 1)
    {
      v35 = v118;
      v36 = v22;
      sub_1002201C8(v118, v22, _s6LoggerVMa);
      sub_1002201C8(v35, v19, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1001CDA98(v32, v31, v33);
      sub_1001CDA98(v32, v31, v33);
      sub_1001CDA98(v32, v31, v33);

      v37 = sub_1004A4A54();
      v38 = sub_1004A6034();
      if (os_log_type_enabled(v37, v38))
      {
        v114 = v32 >> 16;
        v39 = swift_slowAlloc();
        v118 = v37;
        v40 = v31;
        v41 = v39;
        v115 = swift_slowAlloc();
        v120[0] = v115;
        *v41 = 68158722;
        *(v41 + 4) = 2;
        *(v41 + 8) = 256;
        v42 = v116;
        v43 = v19[*(v116 + 20)];
        sub_100220230(v19, _s6LoggerVMa);
        *(v41 + 10) = v43;
        *(v41 + 11) = 2082;
        v44 = *(v36 + *(v42 + 20) + 4);
        sub_100220230(v36, _s6LoggerVMa);
        v45 = ConnectionID.debugDescription.getter(v44);
        v47 = sub_10015BA6C(v45, v46, v120);

        *(v41 + 13) = v47;
        *(v41 + 21) = 512;
        sub_1001CDB04(v32, v40, v33);
        *(v41 + 23) = v32;
        sub_1001CDB04(v32, v40, v33);
        *(v41 + 25) = 512;
        sub_1001CDB04(v32, v40, v33);
        *(v41 + 27) = v114;
        sub_1001CDB04(v32, v40, v33);
        v48 = v38;
        v49 = v118;
        _os_log_impl(&_mh_execute_header, v118, v48, "[%.*hhx-%{public}s] Using TLS protocol %hu, cipher suite %hu", v41, 0x1Du);
        sub_1000197E0(v115);

LABEL_19:
        v107 = v119;
        v67 = v117;
LABEL_20:
        *v107 = v67;
        type metadata accessor for UnauthenticatedState(0);
        swift_storeEnumTagMultiPayload();

        return 0x8000000000000001;
      }

      sub_1001CDB04(v32, v31, v33);
      sub_1001CDB04(v32, v31, v33);
      sub_100220230(v19, _s6LoggerVMa);
      sub_1001CDB04(v32, v31, v33);
      sub_1001CDB04(v32, v31, v33);

      v82 = v22;
      goto LABEL_18;
    }

    v63 = Capability.startTLS.unsafeMutableAddressor();
    v64 = v63[1];
    v65 = v63[2];
    v66 = *(v63 + 24);
    v120[0] = *v63;
    v120[1] = v64;
    v120[2] = v65;
    v121 = v66;
    __chkstk_darwin(v63);
    *(&v111 - 2) = v120;

    v67 = v117;
    v68 = sub_100215C70(sub_1001F0EE0, (&v111 - 4), v117);

    if ((v68 & 1) == 0)
    {
      v94 = v118;
      v95 = v115;
      sub_1002201C8(v118, v115, _s6LoggerVMa);
      v96 = v114;
      sub_1002201C8(v94, v114, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v97 = sub_1004A4A54();
      v98 = sub_1004A6014();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v120[0] = v100;
        *v99 = 68158210;
        *(v99 + 4) = 2;
        *(v99 + 8) = 256;
        v101 = v116;
        v102 = *(v96 + *(v116 + 20));
        sub_100220230(v96, _s6LoggerVMa);
        *(v99 + 10) = v102;
        *(v99 + 11) = 2082;
        v103 = *(v95 + *(v101 + 20) + 4);
        sub_100220230(v95, _s6LoggerVMa);
        v104 = ConnectionID.debugDescription.getter(v103);
        v106 = sub_10015BA6C(v104, v105, v120);

        *(v99 + 13) = v106;
        _os_log_impl(&_mh_execute_header, v97, v98, "[%.*hhx-%{public}s] Connection is insecure, but server does not support STARTTLS.", v99, 0x15u);
        sub_1000197E0(v100);
      }

      else
      {
        sub_100220230(v96, _s6LoggerVMa);

        sub_100220230(v95, _s6LoggerVMa);
      }

      v107 = v119;
      goto LABEL_20;
    }

    v69 = v118;
    v70 = v113;
    sub_1002201C8(v118, v113, _s6LoggerVMa);
    v71 = v112;
    sub_1002201C8(v69, v112, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v72 = sub_1004A4A54();
    v73 = sub_1004A6034();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v120[0] = v75;
      *v74 = 68158210;
      *(v74 + 4) = 2;
      *(v74 + 8) = 256;
      v76 = v116;
      v77 = *(v71 + *(v116 + 20));
      sub_100220230(v71, _s6LoggerVMa);
      *(v74 + 10) = v77;
      *(v74 + 11) = 2082;
      v78 = *(v70 + *(v76 + 20) + 4);
      sub_100220230(v70, _s6LoggerVMa);
      v79 = ConnectionID.debugDescription.getter(v78);
      v81 = sub_10015BA6C(v79, v80, v120);

      *(v74 + 13) = v81;
      _os_log_impl(&_mh_execute_header, v72, v73, "[%.*hhx-%{public}s] Server supports STARTTLS and connection is insecure. Attempting STARTTLS.", v74, 0x15u);
      sub_1000197E0(v75);
    }

    else
    {
      sub_100220230(v71, _s6LoggerVMa);

      sub_100220230(v70, _s6LoggerVMa);
    }

    type metadata accessor for UnauthenticatedState(0);
    swift_storeEnumTagMultiPayload();

    return ClientCommand.EncodingOptions.init(_:)(v110) & 0x101FF;
  }

  else
  {
    if (a2[5] == 1)
    {
      v50 = v10;
      v51 = v118;
      sub_1002201C8(v118, v10, _s6LoggerVMa);
      v52 = v7;
      sub_1002201C8(v51, v7, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1001CDA98(v32, v31, v33);
      sub_1001CDA98(v32, v31, v33);
      sub_1001CDA98(v32, v31, v33);

      v53 = sub_1004A4A54();
      v54 = sub_1004A6034();
      if (os_log_type_enabled(v53, v54))
      {
        v115 = (v32 >> 16);
        v55 = v31;
        v56 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v120[0] = v118;
        *v56 = 68158722;
        *(v56 + 4) = 2;
        *(v56 + 8) = 256;
        v57 = v116;
        v58 = *(v52 + *(v116 + 20));
        sub_100220230(v52, _s6LoggerVMa);
        *(v56 + 10) = v58;
        *(v56 + 11) = 2082;
        v59 = *(v50 + *(v57 + 20) + 4);
        sub_100220230(v50, _s6LoggerVMa);
        v60 = ConnectionID.debugDescription.getter(v59);
        v62 = sub_10015BA6C(v60, v61, v120);

        *(v56 + 13) = v62;
        *(v56 + 21) = 512;
        sub_1001CDB04(v32, v55, v33);
        *(v56 + 23) = v32;
        sub_1001CDB04(v32, v55, v33);
        *(v56 + 25) = 512;
        sub_1001CDB04(v32, v55, v33);
        *(v56 + 27) = v115;
        sub_1001CDB04(v32, v55, v33);
        _os_log_impl(&_mh_execute_header, v53, v54, "[%.*hhx-%{public}s] Using opportunistic TLS protocol %hu, cipher suite %hu", v56, 0x1Du);
        sub_1000197E0(v118);

        goto LABEL_19;
      }

      sub_1001CDB04(v32, v31, v33);
      sub_1001CDB04(v32, v31, v33);
      sub_100220230(v7, _s6LoggerVMa);
      sub_1001CDB04(v32, v31, v33);
      sub_1001CDB04(v32, v31, v33);

      v82 = v50;
LABEL_18:
      sub_100220230(v82, _s6LoggerVMa);
      goto LABEL_19;
    }

    v83 = v118;
    sub_1002201C8(v118, v16, _s6LoggerVMa);
    sub_1002201C8(v83, v13, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v84 = sub_1004A4A54();
    v85 = sub_1004A6014();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v120[0] = v87;
      *v86 = 68158210;
      *(v86 + 4) = 2;
      *(v86 + 8) = 256;
      v88 = v116;
      v89 = v13[*(v116 + 20)];
      sub_100220230(v13, _s6LoggerVMa);
      *(v86 + 10) = v89;
      *(v86 + 11) = 2082;
      v90 = *&v16[*(v88 + 20) + 4];
      sub_100220230(v16, _s6LoggerVMa);
      v91 = ConnectionID.debugDescription.getter(v90);
      v93 = sub_10015BA6C(v91, v92, v120);

      *(v86 + 13) = v93;
      _os_log_impl(&_mh_execute_header, v84, v85, "[%.*hhx-%{public}s] Connection is using opportunistic TLS. But we require a secure connection.", v86, 0x15u);
      sub_1000197E0(v87);
    }

    else
    {
      sub_100220230(v13, _s6LoggerVMa);

      sub_100220230(v16, _s6LoggerVMa);
    }

    v109 = v119;
    v119[1] = 0;
    v109[2] = 0;
    *v109 = 5;
    *(v109 + 24) = -64;
    type metadata accessor for UnauthenticatedState(0);
    swift_storeEnumTagMultiPayload();
    return 0xFFFFFFFF00000000;
  }
}

uint64_t sub_1002173C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s6LoggerVMa(0);
  __chkstk_darwin(v6);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v77 - v10;
  sub_100220230(v3, type metadata accessor for UnauthenticatedState);
  if (!a1)
  {
    type metadata accessor for UnauthenticatedState(0);
    swift_storeEnumTagMultiPayload();
    return 0xFFFFFFFF00000000;
  }

  sub_1002201C8(a2, v11, _s6LoggerVMa);
  sub_1002201C8(a2, v8, _s6LoggerVMa);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v12 = sub_1004A4A54();
  v13 = sub_1004A6004();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v78 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v77 = a1;
    v17 = v16;
    *&v91 = v16;
    *v15 = 68158210;
    *(v15 + 4) = 2;
    *(v15 + 8) = 256;
    v18 = v8[*(v6 + 20)];
    sub_100220230(v8, _s6LoggerVMa);
    *(v15 + 10) = v18;
    *(v15 + 11) = 2082;
    v19 = *&v11[*(v6 + 20) + 4];
    sub_100220230(v11, _s6LoggerVMa);
    v20 = ConnectionID.debugDescription.getter(v19);
    v22 = sub_10015BA6C(v20, v21, &v91);

    *(v15 + 13) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%.*hhx-%{public}s] Received capabilities from server", v15, 0x15u);
    sub_1000197E0(v17);
    a1 = v77;

    v3 = v78;
  }

  else
  {
    sub_100220230(v8, _s6LoggerVMa);

    sub_100220230(v11, _s6LoggerVMa);
  }

  v24 = Capability.id.unsafeMutableAddressor();
  v25 = v24[1];
  v26 = v24[2];
  v27 = *(v24 + 24);
  *&v91 = *v24;
  *(&v91 + 1) = v25;
  *&v92 = v26;
  BYTE8(v92) = v27;
  __chkstk_darwin(v24);
  *(&v77 - 2) = &v91;

  v28 = sub_100215C70(sub_1001F0EE0, (&v77 - 4), a1);

  if (v28)
  {
    *v3 = a1;
    type metadata accessor for UnauthenticatedState(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (sub_100217C58(a1))
    {
      v29 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
      v30 = *v29;
      v31 = v29[1];

      v102._countAndFlagsBits = v30;
      v102._object = v31;
      v32 = static Capability.compression(_:)(v102);
      v34 = v33;
      v36 = v35;
      v38 = v37;

      *&v91 = v32;
      *(&v91 + 1) = v34;
      *&v92 = v36;
      BYTE8(v92) = v38 & 1;
      __chkstk_darwin(v39);
      *(&v77 - 2) = &v91;
      LOBYTE(v32) = sub_100215C70(sub_1001F0EE0, (&v77 - 4), a1);

      if ((v32 & 1) == 0)
      {
        v40 = Capability.applePushService.unsafeMutableAddressor();
        v41 = v40[1];
        v42 = v40[2];
        v43 = *(v40 + 24);
        *&v91 = *v40;
        *(&v91 + 1) = v41;
        *&v92 = v42;
        BYTE8(v92) = v43;
        __chkstk_darwin(v40);
        *(&v77 - 2) = &v91;

        v44 = sub_100215C70(sub_1001F0EE0, (&v77 - 4), a1);

        if (v44)
        {
          v45 = ServerID.empty.unsafeMutableAddressor();
          v47 = v45[1];
          v46 = v45[2];
          v80 = *v45;
          v81 = v47;
          v82 = v46;
          v48 = v45[6];
          v50 = v45[3];
          v49 = v45[4];
          v85 = v45[5];
          v86 = v48;
          v83 = v50;
          v84 = v49;
          v51 = v45[10];
          v53 = v45[7];
          v52 = v45[8];
          v89 = v45[9];
          v90 = v51;
          v87 = v53;
          v88 = v52;
          v98 = v45[7];
          v99 = v45[8];
          v100 = v45[9];
          v101 = v45[10];
          v94 = v45[3];
          v54 = v94;
          v95 = v45[4];
          v96 = v45[5];
          v97 = v45[6];
          v91 = *v45;
          v92 = v45[1];
          v93 = v45[2];
          *v3 = a1;
          *(v3 + 56) = v54;
          v55 = v92;
          *(v3 + 40) = v93;
          v56 = v91;
          *(v3 + 24) = v55;
          *(v3 + 8) = v56;
          v57 = v95;
          v58 = v96;
          *(v3 + 104) = v97;
          *(v3 + 88) = v58;
          *(v3 + 72) = v57;
          v59 = v100;
          *(v3 + 168) = v101;
          *(v3 + 152) = v59;
          v60 = v98;
          *(v3 + 136) = v99;
          *(v3 + 120) = v60;
          type metadata accessor for UnauthenticatedState(0);
          swift_storeEnumTagMultiPayload();
          sub_10010E800(&v80, v79);
          return 0x8000000000000003;
        }
      }
    }

    v61 = ServerID.empty.unsafeMutableAddressor();
    v63 = v61[1];
    v62 = v61[2];
    v80 = *v61;
    v81 = v63;
    v82 = v62;
    v64 = v61[6];
    v66 = v61[3];
    v65 = v61[4];
    v85 = v61[5];
    v86 = v64;
    v83 = v66;
    v84 = v65;
    v67 = v61[10];
    v69 = v61[7];
    v68 = v61[8];
    v89 = v61[9];
    v90 = v67;
    v87 = v69;
    v88 = v68;
    v98 = v61[7];
    v99 = v61[8];
    v100 = v61[9];
    v101 = v61[10];
    v94 = v61[3];
    v70 = v94;
    v95 = v61[4];
    v96 = v61[5];
    v97 = v61[6];
    v91 = *v61;
    v92 = v61[1];
    v93 = v61[2];
    *v3 = a1;
    *(v3 + 56) = v70;
    v71 = v92;
    *(v3 + 40) = v93;
    v72 = v91;
    *(v3 + 24) = v71;
    *(v3 + 8) = v72;
    v73 = v95;
    v74 = v96;
    *(v3 + 104) = v97;
    *(v3 + 88) = v74;
    *(v3 + 72) = v73;
    v75 = v100;
    *(v3 + 168) = v101;
    *(v3 + 152) = v75;
    v76 = v98;
    *(v3 + 136) = v99;
    *(v3 + 120) = v76;
    type metadata accessor for UnauthenticatedState(0);
    swift_storeEnumTagMultiPayload();
    sub_10010E800(&v80, v79);
  }

  return ClientCommand.EncodingOptions.init(_:)(a1) & 0x101FF;
}

BOOL sub_100217C58(uint64_t a1)
{
  sub_10000C9C0(&qword_1005D52A0, &unk_1004E75A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D2DE0;
  v3 = Capability.uidOnly.unsafeMutableAddressor();
  v4 = v3[1];
  v5 = v3[2];
  v6 = *(v3 + 24);
  *(inited + 32) = *v3;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = v6;

  v7 = Capability.enable.unsafeMutableAddressor();
  v8 = v7[1];
  v9 = v7[2];
  v10 = *(v7 + 24);
  *(inited + 64) = *v7;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  *(inited + 88) = v10;

  v11 = Capability.uidBatches.unsafeMutableAddressor();
  v12 = v11[1];
  v13 = v11[2];
  v14 = *(v11 + 24);
  *(inited + 96) = *v11;
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  *(inited + 120) = v14;

  v15 = Capability.partial.unsafeMutableAddressor();
  v16 = v15[1];
  v17 = v15[2];
  v18 = *(v15 + 24);
  *(inited + 128) = *v15;
  *(inited + 136) = v16;
  *(inited + 144) = v17;
  *(inited + 152) = v18;

  v19 = Capability.extendedSearch.unsafeMutableAddressor();
  v20 = v19[1];
  v21 = v19[2];
  v22 = *(v19 + 24);
  *(inited + 160) = *v19;
  *(inited + 168) = v20;
  *(inited + 176) = v21;
  *(inited + 184) = v22;

  v23 = sub_1001CADD0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  LOBYTE(a1) = sub_10021BE0C(a1, v23);

  return (a1 & 1) == 0;
}

uint64_t sub_100217DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v58[1] = a2;
  v59 = a1;
  v60 = a3;
  v5 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
  __chkstk_darwin(v5 - 8);
  v7 = v58 - v6;
  v8 = type metadata accessor for AuthenticationTask(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Authenticator(0);
  __chkstk_darwin(v12);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UnauthenticatedState(0);
  __chkstk_darwin(v15);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002201C8(v4, v17, type metadata accessor for UnauthenticatedState);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 2:
      sub_100220160(v17, v14, type metadata accessor for Authenticator);
      sub_10000E268(&v14[*(v12 + 32)], v7, &qword_1005D3008, &qword_1004DCCE0);
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        sub_100220160(v7, v11, type metadata accessor for AuthenticationTask);
        v80 = v8;
        v81 = &off_1005A4510;
        v55 = sub_1000B3774(&v78);
        sub_100220160(v11, v55, type metadata accessor for AuthenticationTask);
        sub_100220230(v14, type metadata accessor for Authenticator);
        v20 = v80;
        v21 = v81;
        goto LABEL_15;
      }

      sub_100220230(v14, type metadata accessor for Authenticator);
      result = sub_100025F40(v7, &qword_1005D3008, &qword_1004DCCE0);
      v27 = v60;
      *v60 = 0u;
      *(v27 + 16) = 0u;
      *(v27 + 32) = 0;
      return result;
    case 3:
      v28 = *v17;
      v29 = Capability.id.unsafeMutableAddressor();
      v30 = v29[1];
      v31 = v29[2];
      v32 = *(v29 + 24);
      *&v67 = *v29;
      *(&v67 + 1) = v30;
      *&v68 = v31;
      BYTE8(v68) = v32;
      __chkstk_darwin(v29);
      v58[-2] = &v67;

      v33 = sub_100215C70(sub_1001F0EE0, &v58[-4], v28);

      if ((v33 & 1) == 0)
      {
        goto LABEL_3;
      }

      sub_1001E7A04(v34, &v67);
      *(&v61[1] + 7) = v68;
      *(&v61[2] + 7) = v69;
      *(&v61[3] + 7) = v70;
      *(&v61[4] + 7) = v71;
      *(v61 + 7) = v67;
      v20 = &type metadata for IdentifyServer;
      v21 = &off_1005A6600;
      v80 = &type metadata for IdentifyServer;
      v81 = &off_1005A6600;
      v35 = swift_allocObject();
      v36 = v61[0];
      *(v35 + 33) = v61[1];
      v37 = v61[3];
      *(v35 + 49) = v61[2];
      *(v35 + 65) = v37;
      *(v35 + 80) = *(&v61[3] + 15);
      *&v78 = v35;
      *(v35 + 16) = 3;
      *(v35 + 17) = v36;
      *(v35 + 104) = 0;
      *(v35 + 112) = 0;
      *(v35 + 96) = 0;
      goto LABEL_15;
    case 4:
      sub_100220230(v17, type metadata accessor for UnauthenticatedState);
      sub_10000C9C0(&qword_1005D52A0, &unk_1004E75A0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1004CEAA0;
      v23 = Capability.uidOnly.unsafeMutableAddressor();
      v24 = v23[1];
      v25 = v23[2];
      v26 = *(v23 + 24);
      *(v22 + 32) = *v23;
      *(v22 + 40) = v24;
      *(v22 + 48) = v25;
      *(v22 + 56) = v26;
      v20 = &type metadata for Enable;
      v21 = &off_1005A6148;
      v80 = &type metadata for Enable;
      v81 = &off_1005A6148;
      LOBYTE(v78) = 4;
      *(&v78 + 1) = v22;
      v79 = _swiftEmptySetSingleton;

      goto LABEL_15;
    case 5:
      sub_100220230(v17, type metadata accessor for UnauthenticatedState);
      v20 = &type metadata for Compress;
      v21 = &off_1005A50C0;
      v80 = &type metadata for Compress;
      v81 = &off_1005A50C0;
      LOBYTE(v78) = 6;
      goto LABEL_15;
    case 8:
      v38 = *(v17 + 1);
      v63 = *v17;
      v64 = v38;
      v39 = *(v17 + 3);
      v65 = *(v17 + 2);
      v66 = v39;
      v40 = *(v17 + 8);
      v41 = *(v17 + 184);
      v42 = *(v17 + 216);
      v75 = *(v17 + 200);
      v76 = v42;
      v77 = *(v17 + 232);
      v43 = *(v17 + 120);
      v44 = *(v17 + 152);
      v71 = *(v17 + 136);
      v72 = v44;
      v73 = *(v17 + 168);
      v74 = v41;
      v45 = *(v17 + 88);
      v67 = *(v17 + 72);
      v68 = v45;
      v69 = *(v17 + 104);
      v70 = v43;
      sub_10010E990(&v67);
      v46 = Capability.applePushService.unsafeMutableAddressor();
      v47 = v46[1];
      v48 = v46[2];
      v49 = *(v46 + 24);
      *&v78 = *v46;
      *(&v78 + 1) = v47;
      v79 = v48;
      LOBYTE(v80) = v49;
      __chkstk_darwin(v46);
      v58[-2] = &v78;

      v50 = sub_100215C70(sub_1001F0EE0, &v58[-4], v40);

      if (v50)
      {
        LOBYTE(v78) = 1;
        *(v62 + 7) = v63;
        *(&v62[1] + 7) = v64;
        *(&v62[2] + 7) = v65;
        *(&v62[3] + 7) = v66;
        v20 = &type metadata for RegisterForPush;
        v21 = &off_1005A8180;
        v80 = &type metadata for RegisterForPush;
        v81 = &off_1005A8180;
        v51 = swift_allocObject();
        v52 = v62[0];
        *(v51 + 33) = v62[1];
        v53 = v62[3];
        *(v51 + 49) = v62[2];
        *(v51 + 65) = v53;
        *&v78 = v51;
        *(v51 + 16) = 5;
        v54 = *(&v62[3] + 15);
        *(v51 + 17) = v52;
        *(v51 + 80) = v54;
        *(v51 + 88) = _swiftEmptyArrayStorage;
        *(v51 + 96) = 0;
        *(v51 + 104) = 1;
        *(v51 + 112) = 0;
        *(v51 + 120) = 0;
LABEL_15:
        v56 = v60;
        sub_10002587C(&v78, v20);
        v57 = (v21[1])(v20, v21);
        if (sub_100011D94(v57, v59))
        {
          result = sub_1000197E0(&v78);
          *(v56 + 32) = 0;
          *v56 = 0u;
          *(v56 + 16) = 0u;
        }

        else
        {
          return sub_1000B364C(&v78, v56);
        }
      }

      else
      {
        result = sub_10021D02C(&v63);
LABEL_3:
        v19 = v60;
        *(v60 + 32) = 0;
        *v19 = 0u;
        v19[1] = 0u;
      }

      return result;
    case 11:
    case 14:
      goto LABEL_3;
    case 12:
    case 15:
      v20 = &type metadata for GetCapabilities;
      v21 = &off_1005A4790;
      v80 = &type metadata for GetCapabilities;
      v81 = &off_1005A4790;
      LOBYTE(v78) = 0;
      goto LABEL_15;
    case 13:
      v20 = &type metadata for StartTLS;
      v21 = &off_1005A8558;
      v80 = &type metadata for StartTLS;
      v81 = &off_1005A8558;
      LOWORD(v78) = 0;
      goto LABEL_15;
    default:
      result = sub_100220230(v17, type metadata accessor for UnauthenticatedState);
      goto LABEL_3;
  }
}

_UNKNOWN **sub_100218558(__int128 *a1, uint64_t a2)
{
  *&v554 = a2;
  v3 = a1[9];
  v638 = a1[8];
  v639 = v3;
  v640 = a1[10];
  v641 = *(a1 + 176);
  v4 = a1[5];
  v634 = a1[4];
  v635 = v4;
  v5 = a1[7];
  v636 = a1[6];
  v637 = v5;
  v6 = a1[1];
  v630 = *a1;
  v631 = v6;
  v7 = a1[3];
  v632 = a1[2];
  v633 = v7;
  *&v553 = _s6LoggerVMa(0);
  __chkstk_darwin(v553);
  v541 = &v517 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v543 = &v517 - v10;
  __chkstk_darwin(v11);
  v540 = &v517 - v12;
  __chkstk_darwin(v13);
  v542 = &v517 - v14;
  __chkstk_darwin(v15);
  v523 = &v517 - v16;
  __chkstk_darwin(v17);
  v524 = &v517 - v18;
  __chkstk_darwin(v19);
  v525 = &v517 - v20;
  __chkstk_darwin(v21);
  v526 = &v517 - v22;
  __chkstk_darwin(v23);
  v521 = &v517 - v24;
  __chkstk_darwin(v25);
  v522 = &v517 - v26;
  __chkstk_darwin(v27);
  v519 = &v517 - v28;
  __chkstk_darwin(v29);
  v520 = &v517 - v30;
  __chkstk_darwin(v31);
  v544 = &v517 - v32;
  __chkstk_darwin(v33);
  *&v545 = &v517 - v34;
  __chkstk_darwin(v35);
  *&v549 = &v517 - v36;
  __chkstk_darwin(v37);
  *&v551 = &v517 - v38;
  __chkstk_darwin(v39);
  v538 = &v517 - v40;
  __chkstk_darwin(v41);
  v539 = &v517 - v42;
  __chkstk_darwin(v43);
  *&v548 = &v517 - v44;
  __chkstk_darwin(v45);
  *&v550 = &v517 - v46;
  __chkstk_darwin(v47);
  v534 = &v517 - v48;
  __chkstk_darwin(v49);
  v535 = &v517 - v50;
  __chkstk_darwin(v51);
  v536 = &v517 - v52;
  __chkstk_darwin(v53);
  v537 = &v517 - v54;
  __chkstk_darwin(v55);
  v532 = &v517 - v56;
  __chkstk_darwin(v57);
  v533 = &v517 - v58;
  __chkstk_darwin(v59);
  v530 = &v517 - v60;
  __chkstk_darwin(v61);
  v531 = &v517 - v62;
  __chkstk_darwin(v63);
  v529 = &v517 - v64;
  __chkstk_darwin(v65);
  v527 = &v517 - v66;
  __chkstk_darwin(v67);
  v528 = &v517 - v68;
  __chkstk_darwin(v69);
  v517 = &v517 - v70;
  __chkstk_darwin(v71);
  v518 = &v517 - v72;
  v555 = type metadata accessor for UnauthenticatedState(0);
  __chkstk_darwin(v555);
  v74 = &v517 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v75);
  *&v546 = &v517 - v76;
  __chkstk_darwin(v77);
  v79 = &v517 - v78;
  __chkstk_darwin(v80);
  v82 = (&v517 - v81);
  __chkstk_darwin(v83);
  *&v547 = &v517 - v84;
  __chkstk_darwin(v85);
  v87 = (&v517 - v86);
  __chkstk_darwin(v88);
  v90 = &v517 - v89;
  __chkstk_darwin(v91);
  v93 = &v517 - v92;
  __chkstk_darwin(v94);
  v96 = &v517 - v95;
  __chkstk_darwin(v97);
  v99 = &v517 - v98;
  __chkstk_darwin(v100);
  *&v552 = &v517 - v101;
  v102 = a1[9];
  v624[8] = a1[8];
  v624[9] = v102;
  v624[10] = a1[10];
  v625 = *(a1 + 176);
  v103 = a1[5];
  v624[4] = a1[4];
  v624[5] = v103;
  v104 = a1[7];
  v624[6] = a1[6];
  v624[7] = v104;
  v105 = a1[1];
  v624[0] = *a1;
  v624[1] = v105;
  v106 = a1[3];
  v624[2] = a1[2];
  v624[3] = v106;
  v107 = sub_10021D080(v624);
  if (v107 <= 5)
  {
    if (v107 <= 2)
    {
      if (!v107)
      {
        v172 = UInt32.init(_:)(v624);
        v173 = *v172;
        v174 = v172[3];
        if ((~*v172 & 0xF000000000000007) != 0 && ((v173 >> 59) & 0x1E | (v173 >> 2) & 1) == 1)
        {
          v174 = *((v173 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else if (v174)
        {
        }

        v294 = sub_1002173C8(v174, v554);
LABEL_62:

        if (v294 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          sub_10000C9C0(&qword_1005D4A90, &qword_1004E2A78);
          result = swift_allocObject();
          *(result + 1) = xmmword_1004CEAA0;
          result[4] = v294;
          result[5] = 0;
          result[6] = 0;
          result[7] = 0;
          return result;
        }

        return _swiftEmptyArrayStorage;
      }

      if (v107 == 1)
      {
        v108 = UInt32.init(_:)(v624);
        v109 = *v108;
        v110 = v108[1];
        v112 = v108[2];
        v111 = v108[3];
        v113 = v108[4];
        v114 = v108[5];
        v115 = v108[6];
        v116 = v552;
        sub_1002201C8(v556, v552, type metadata accessor for UnauthenticatedState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 1)
        {
          if (!EnumCaseMultiPayload)
          {
            v118 = *v116;
            v119 = *(v109 + 16);
            if (!v119)
            {
LABEL_85:

              sub_1001CDA98(v110, v112, v111);
              sub_100175598(v113, v114, v115);
              sub_100220230(v556, type metadata accessor for UnauthenticatedState);

              sub_1001CDB04(v110, v112, v111);
              sub_1001ADD88(v113, v114, v115);
LABEL_86:

LABEL_87:
              v385 = v554;
              v386 = v528;
              sub_1002201C8(v554, v528, _s6LoggerVMa);
              v387 = v527;
              sub_1002201C8(v385, v527, _s6LoggerVMa);
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              variable initialization expression of Engine.isProcessingUpdates();
              v388 = sub_1004A4A54();
              v389 = sub_1004A6024();
              if (os_log_type_enabled(v388, v389))
              {
                v390 = swift_slowAlloc();
                v391 = swift_slowAlloc();
                *&v612 = v391;
                *v390 = 68158210;
                *(v390 + 4) = 2;
                *(v390 + 8) = 256;
                v392 = v553;
                v393 = *(v387 + *(v553 + 20));
                sub_100220230(v387, _s6LoggerVMa);
                *(v390 + 10) = v393;
                *(v390 + 11) = 2082;
                v394 = *(v386 + *(v392 + 20) + 4);
                sub_100220230(v386, _s6LoggerVMa);
                v395 = ConnectionID.debugDescription.getter(v394);
                v397 = sub_10015BA6C(v395, v396, &v612);

                *(v390 + 13) = v397;
                _os_log_impl(&_mh_execute_header, v388, v389, "[%.*hhx-%{public}s] Credentials don't allow PREAUTH.", v390, 0x15u);
                sub_1000197E0(v391);
              }

              else
              {
                sub_100220230(v387, _s6LoggerVMa);

                sub_100220230(v386, _s6LoggerVMa);
              }

              v476 = v556;
              *(v556 + 8) = 0;
              *(v476 + 16) = 0;
              *v476 = 2;
              *(v476 + 24) = -64;
              swift_storeEnumTagMultiPayload();
              return _swiftEmptyArrayStorage;
            }

            v120 = (v109 + 104);
            while (1)
            {
              v123 = *(v120 - 2);
              if (((*v120 >> 59) & 6 | ((v123 & 0x2000000000000000) != 0)) == 4)
              {
                v124 = vorrq_s8(*(v120 - 9), *(v120 - 7));
                v125 = *&vorr_s8(*v124.i8, *&vextq_s8(v124, v124, 8uLL)) | *(v120 - 5) | *(v120 - 4) | *(v120 - 3) | *(v120 - 1) | v123;
                if (*v120 == 0x2000000000000000 && v125 == 0)
                {
                  break;
                }
              }

              v120 += 10;
              if (!--v119)
              {
                goto LABEL_85;
              }
            }

            sub_100175598(v113, v114, v115);
            if (v115 == 1)
            {
              goto LABEL_22;
            }

            if (v110 >> 62 != 1)
            {

              sub_1001ADD88(v113, v114, v115);
              v515 = v556;
LABEL_153:
              sub_100220230(v515, type metadata accessor for UnauthenticatedState);
              goto LABEL_87;
            }

            if (v115)
            {
              if (v113)
              {
                v499 = v556;
                if (v113 == 1)
                {
                  if (v110 != 772)
                  {
                    goto LABEL_152;
                  }
                }

                else if (v110 - 771 >= 2)
                {
                  goto LABEL_152;
                }
              }

              else
              {
                v499 = v556;
                if (v110 - 771 >= 2)
                {
                  goto LABEL_152;
                }
              }

              if (v111)
              {
                if (v114 == v112 && v115 == v111)
                {
                  sub_1001ADD88(v113, v112, v111);
                  goto LABEL_22;
                }

                v516 = sub_1004A6D34();
                sub_1001ADD88(v113, v114, v115);
                if (v516)
                {
                  goto LABEL_22;
                }

                goto LABEL_155;
              }

LABEL_152:

              sub_1001ADD88(v113, v114, v115);
              v515 = v499;
              goto LABEL_153;
            }

            sub_1001ADD88(v113, v114, 0);
            if (v113 == 1)
            {
              if (v110 != 772)
              {
LABEL_155:
                sub_100220230(v556, type metadata accessor for UnauthenticatedState);
                goto LABEL_86;
              }
            }

            else if (v110 - 771 >= 2)
            {
              goto LABEL_155;
            }

LABEL_22:
            v127 = v554;
            v128 = v518;
            sub_1002201C8(v554, v518, _s6LoggerVMa);
            v129 = v517;
            sub_1002201C8(v127, v517, _s6LoggerVMa);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v130 = sub_1004A4A54();
            v131 = sub_1004A6004();
            if (os_log_type_enabled(v130, v131))
            {
              v132 = swift_slowAlloc();
              v133 = swift_slowAlloc();
              v134 = v129;
              v135 = v133;
              *&v612 = v133;
              *v132 = 68158210;
              *(v132 + 4) = 2;
              *(v132 + 8) = 256;
              v136 = v553;
              v137 = *(v134 + *(v553 + 20));
              sub_100220230(v134, _s6LoggerVMa);
              *(v132 + 10) = v137;
              *(v132 + 11) = 2082;
              v138 = *(v128 + *(v136 + 20) + 4);
              sub_100220230(v128, _s6LoggerVMa);
              v139 = ConnectionID.debugDescription.getter(v138);
              v141 = sub_10015BA6C(v139, v140, &v612);

              *(v132 + 13) = v141;
              _os_log_impl(&_mh_execute_header, v130, v131, "[%.*hhx-%{public}s] Authenticated with PREAUTH.", v132, 0x15u);
              sub_1000197E0(v135);
            }

            else
            {
              sub_100220230(v129, _s6LoggerVMa);

              sub_100220230(v128, _s6LoggerVMa);
            }

            v294 = sub_1002173C8(v118, v554);
            goto LABEL_62;
          }

          v372 = v554;
          v373 = v531;
          sub_1002201C8(v554, v531, _s6LoggerVMa);
          v374 = v530;
          sub_1002201C8(v372, v530, _s6LoggerVMa);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v375 = sub_1004A4A54();
          v376 = sub_1004A6014();
          if (os_log_type_enabled(v375, v376))
          {
            v377 = swift_slowAlloc();
            v378 = swift_slowAlloc();
            *&v612 = v378;
            *v377 = 68158210;
            *(v377 + 4) = 2;
            *(v377 + 8) = 256;
            v379 = v553;
            v380 = *(v374 + *(v553 + 20));
            sub_100220230(v374, _s6LoggerVMa);
            *(v377 + 10) = v380;
            *(v377 + 11) = 2082;
            v381 = *(v373 + *(v379 + 20) + 4);
            sub_100220230(v373, _s6LoggerVMa);
            v382 = ConnectionID.debugDescription.getter(v381);
            v384 = sub_10015BA6C(v382, v383, &v612);

            *(v377 + 13) = v384;
            _os_log_impl(&_mh_execute_header, v375, v376, "[%.*hhx-%{public}s] Received unexpected credentials.", v377, 0x15u);
            sub_1000197E0(v378);
          }

          else
          {
            sub_100220230(v374, _s6LoggerVMa);

            sub_100220230(v373, _s6LoggerVMa);
          }

          v367 = type metadata accessor for UnauthenticatedState;
          v368 = v552;
          goto LABEL_127;
        }

        sub_1001CDA98(v110, v112, v111);
        sub_100175598(v113, v114, v115);
        *&v553 = v115;
        v369 = v114;
        v370 = v556;
        sub_100220230(v556, type metadata accessor for UnauthenticatedState);
        v154 = *v116;
        *&v612 = v109;
        *(&v612 + 1) = v154;
        *&v613 = v110;
        *(&v613 + 1) = v112;
        *&v614 = v111;
        *(&v614 + 1) = v113;
        *&v615 = v369;
        *(&v615 + 1) = v553;
        v371 = v529;
        sub_1002201C8(v554, v529, _s6LoggerVMa);

        sub_100195250(&v612, v371, v99);
        swift_storeEnumTagMultiPayload();
        sub_100220160(v99, v370, type metadata accessor for UnauthenticatedState);
LABEL_118:
        sub_10000C9C0(&qword_1005D4A90, &qword_1004E2A78);
        v484 = swift_allocObject();
        *(v484 + 16) = xmmword_1004CEAA0;
        v485 = ClientCommand.EncodingOptions.init(_:)(v154);
        result = v484;
        *(v484 + 32) = v485 & 0x101FF;
        *(v484 + 40) = 0;
        *(v484 + 48) = 0;
        *(v484 + 56) = 0;
        return result;
      }

      v238 = UInt32.init(_:)(v624);
      v613 = *(v238 + 16);
      v614 = *(v238 + 32);
      v615 = *(v238 + 48);
      v616 = *(v238 + 64);
      v612 = *v238;
      sub_100215DF8(&v612, *(v238 + 80), *(v238 + 88), *(v238 + 96), v554);
      return _swiftEmptyArrayStorage;
    }

    if (v107 != 3)
    {
      v142 = v556;
      if (v107 != 4)
      {
        v260 = UInt32.init(_:)(v624);
        v261 = *v260;
        v263 = v260[1];
        v262 = v260[2];
        v264 = v260[3];
        sub_1002201C8(v142, v74, type metadata accessor for UnauthenticatedState);
        v265 = swift_getEnumCaseMultiPayload();
        if (v265 == 8)
        {

          sub_100220230(v142, type metadata accessor for UnauthenticatedState);
          v266 = *(v74 + 1);
          v590 = *v74;
          v591 = v266;
          v267 = *(v74 + 3);
          v592 = *(v74 + 2);
          v593 = v267;
          v268 = *(v74 + 8);
          v269 = *(v74 + 184);
          v270 = *(v74 + 216);
          v620 = *(v74 + 200);
          v621 = v270;
          v622 = *(v74 + 232);
          v271 = *(v74 + 120);
          v272 = *(v74 + 152);
          v616 = *(v74 + 136);
          v617 = v272;
          v273 = *(v74 + 168);
          v619 = v269;
          v618 = v273;
          v274 = *(v74 + 88);
          v612 = *(v74 + 72);
          v613 = v274;
          v275 = *(v74 + 104);
          v615 = v271;
          v614 = v275;
          sub_10021D02C(&v590);
          v276 = v618;
          *(v142 + 120) = v619;
          v277 = v621;
          *(v142 + 136) = v620;
          *(v142 + 152) = v277;
          *(v142 + 168) = v622;
          v278 = v614;
          *(v142 + 56) = v615;
          v279 = v617;
          *(v142 + 72) = v616;
          *(v142 + 88) = v279;
          *(v142 + 104) = v276;
          v280 = v613;
          *(v142 + 8) = v612;
          *(v142 + 24) = v280;
          *v142 = v268;
          *(v142 + 40) = v278;
          swift_storeEnumTagMultiPayload();
          sub_10000C9C0(&qword_1005D4A90, &qword_1004E2A78);
          result = swift_allocObject();
          *(result + 1) = xmmword_1004CEAA0;
          result[4] = (v261 | 0x4000000000000000);
          result[5] = v263;
          result[6] = v262;
          result[7] = v264;
          return result;
        }

        sub_100220230(v74, type metadata accessor for UnauthenticatedState);
        v360 = v554;
        v296 = v543;
        sub_1002201C8(v554, v543, _s6LoggerVMa);
        v297 = v541;
        sub_1002201C8(v360, v541, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v298 = sub_1004A4A54();
        v299 = sub_1004A6014();
        if (os_log_type_enabled(v298, v299))
        {
          v300 = swift_slowAlloc();
          v301 = swift_slowAlloc();
          *&v612 = v301;
          *v300 = 68158210;
          *(v300 + 4) = 2;
          *(v300 + 8) = 256;
          v361 = v553;
          v362 = *(v297 + *(v553 + 20));
          sub_100220230(v297, _s6LoggerVMa);
          *(v300 + 10) = v362;
          *(v300 + 11) = 2082;
          v363 = *(v296 + *(v361 + 20) + 4);
          sub_100220230(v296, _s6LoggerVMa);
          v364 = ConnectionID.debugDescription.getter(v363);
          v366 = sub_10015BA6C(v364, v365, &v612);

          *(v300 + 13) = v366;
          v308 = "[%.*hhx-%{public}s] Unexpected gotPushResponse";
          goto LABEL_125;
        }

        goto LABEL_126;
      }

      v143 = UInt32.init(_:)(v624);
      v629 = *v143;
      v144 = *(v143 + 16);
      v145 = *(v143 + 40);
      v626 = *(v143 + 24);
      v627 = v145;
      v628 = *(v143 + 56);
      v146 = v546;
      sub_1002201C8(v142, v546, type metadata accessor for UnauthenticatedState);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v147 = a1[9];
        v620 = a1[8];
        v621 = v147;
        v622 = a1[10];
        v623 = *(a1 + 176);
        v148 = a1[5];
        v616 = a1[4];
        v617 = v148;
        v149 = a1[7];
        v618 = a1[6];
        v619 = v149;
        v150 = a1[1];
        v612 = *a1;
        v613 = v150;
        v151 = a1[3];
        v614 = a1[2];
        v615 = v151;
        v152 = UInt32.init(_:)(&v612);
        sub_10000E268(v152, &v590, &qword_1005D5298, &unk_1004E7590);
        sub_100220230(v142, type metadata accessor for UnauthenticatedState);
        v155 = *v146;
        v153 = v146 + 1;
        v154 = v155;
        if (v144)
        {
          *v142 = v629;
          *(v142 + 16) = v144;
          v156 = v627;
          *(v142 + 24) = v626;
          *(v142 + 40) = v156;
          *(v142 + 56) = v628;
          v157 = (v142 + 64);
          v158 = 72;
        }

        else
        {
          v158 = 8;
          v157 = v142;
        }

        *v157 = v154;
        v430 = (v142 + v158);
        v431 = v153[9];
        v430[8] = v153[8];
        v430[9] = v431;
        v430[10] = v153[10];
        v432 = v153[5];
        v430[4] = v153[4];
        v430[5] = v432;
        v433 = v153[7];
        v430[6] = v153[6];
        v430[7] = v433;
        v434 = v153[1];
        *v430 = *v153;
        v430[1] = v434;
        v435 = v153[3];
        v430[2] = v153[2];
        v430[3] = v435;
        swift_storeEnumTagMultiPayload();

        v436 = Capability.id.unsafeMutableAddressor();
        v437 = v436[1];
        v438 = v436[2];
        v439 = *(v436 + 24);
        *&v590 = *v436;
        *(&v590 + 1) = v437;
        *&v591 = v438;
        BYTE8(v591) = v439;
        __chkstk_darwin(v436);
        *(&v517 - 2) = &v590;

        v440 = sub_100215C70(sub_100197740, (&v517 - 4), v154);

        if ((v440 & 1) == 0)
        {
          goto LABEL_118;
        }

        return _swiftEmptyArrayStorage;
      }

      sub_100220230(v146, type metadata accessor for UnauthenticatedState);
      v346 = v554;
      v296 = v542;
      sub_1002201C8(v554, v542, _s6LoggerVMa);
      v297 = v540;
      sub_1002201C8(v346, v540, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v298 = sub_1004A4A54();
      v299 = sub_1004A6014();
      if (os_log_type_enabled(v298, v299))
      {
        v300 = swift_slowAlloc();
        v301 = swift_slowAlloc();
        *&v612 = v301;
        *v300 = 68158210;
        *(v300 + 4) = 2;
        *(v300 + 8) = 256;
        v347 = v553;
        v348 = *(v297 + *(v553 + 20));
        sub_100220230(v297, _s6LoggerVMa);
        *(v300 + 10) = v348;
        *(v300 + 11) = 2082;
        v349 = *(v296 + *(v347 + 20) + 4);
        sub_100220230(v296, _s6LoggerVMa);
        v350 = ConnectionID.debugDescription.getter(v349);
        v352 = sub_10015BA6C(v350, v351, &v612);

        *(v300 + 13) = v352;
        v308 = "[%.*hhx-%{public}s] Unexpected setPushInformation";
        goto LABEL_125;
      }

LABEL_126:
      sub_100220230(v297, _s6LoggerVMa);

      v368 = v296;
      v367 = _s6LoggerVMa;
LABEL_127:
      sub_100220230(v368, v367);
      return _swiftEmptyArrayStorage;
    }

    v206 = UInt32.init(_:)(v624);
    v207 = *(v206 + 16);
    v574 = *v206;
    v575 = v207;
    v208 = *(v206 + 48);
    v576 = *(v206 + 32);
    v577 = v208;
    v210 = *(v206 + 64);
    v209 = *(v206 + 72);
    v211 = *(v206 + 128);
    v570 = *(v206 + 112);
    v571 = v211;
    v212 = *(v206 + 160);
    v572 = *(v206 + 144);
    v573 = v212;
    v213 = *(v206 + 96);
    v568 = *(v206 + 80);
    v569 = v213;
    v214 = v556;
    sub_1002201C8(v556, v87, type metadata accessor for UnauthenticatedState);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v215 = a1[9];
      v620 = a1[8];
      v621 = v215;
      v622 = a1[10];
      v623 = *(a1 + 176);
      v216 = a1[5];
      v616 = a1[4];
      v617 = v216;
      v217 = a1[7];
      v618 = a1[6];
      v619 = v217;
      v218 = a1[1];
      v612 = *a1;
      v613 = v218;
      v219 = a1[3];
      v614 = a1[2];
      v615 = v219;
      v220 = UInt32.init(_:)(&v612);
      sub_10010E800(v220, &v590);
      sub_100220230(v214, type metadata accessor for UnauthenticatedState);
      v221 = *v87;
      if (v209)
      {
        if (sub_1004A5814() == 0xD000000000000012 && 0x80000001004AC440 == v222)
        {

LABEL_106:
          v442 = &off_1005A3978;
LABEL_108:
          *&v554 = v442;
          if (sub_100217C58(v221))
          {
            v443 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
            v444 = *v443;
            v445 = v443[1];

            v643._countAndFlagsBits = v444;
            v643._object = v445;
            v446 = static Capability.compression(_:)(v643);
            v448 = v447;
            v450 = v449;
            v452 = v451;

            *&v590 = v446;
            *(&v590 + 1) = v448;
            *&v591 = v450;
            BYTE8(v591) = v452 & 1;
            __chkstk_darwin(v453);
            *(&v517 - 2) = &v590;
            LOBYTE(v445) = sub_100215C70(sub_1001F0EE0, (&v517 - 4), v221);

            if (v445)
            {
              v454 = v575;
              v455 = v556;
              *(v556 + 8) = v574;
              *(v455 + 24) = v454;
              v456 = v577;
              *(v455 + 40) = v576;
              *(v455 + 56) = v456;
              v457 = v571;
              *(v455 + 120) = v570;
              *(v455 + 136) = v457;
              v458 = v573;
              *(v455 + 152) = v572;
              *(v455 + 168) = v458;
              v459 = v569;
              *(v455 + 88) = v568;
              *v455 = v221;
              *(v455 + 72) = v210;
              *(v455 + 80) = v209;
              *(v455 + 104) = v459;
            }

            else
            {
              v465 = Capability.applePushService.unsafeMutableAddressor();
              v466 = v465[1];
              v467 = v465[2];
              v468 = *(v465 + 24);
              *&v590 = *v465;
              *(&v590 + 1) = v466;
              *&v591 = v467;
              BYTE8(v591) = v468;
              __chkstk_darwin(v465);
              *(&v517 - 2) = &v590;

              v469 = sub_100215C70(sub_1001F0EE0, (&v517 - 4), v221);

              v470 = v575;
              v471 = v556;
              *(v556 + 8) = v574;
              *(v471 + 24) = v470;
              v472 = v577;
              *(v471 + 40) = v576;
              *(v471 + 56) = v472;
              v473 = v571;
              *(v471 + 120) = v570;
              *(v471 + 136) = v473;
              v474 = v573;
              *(v471 + 152) = v572;
              *(v471 + 168) = v474;
              v475 = v569;
              *(v471 + 88) = v568;
              *v471 = v221;
              *(v471 + 72) = v210;
              *(v471 + 80) = v209;
              *(v471 + 104) = v475;
              if (v469)
              {
                swift_storeEnumTagMultiPayload();
                *&v590 = v554;
                sub_100215B7C(&off_1005A39B8);
                return v590;
              }
            }
          }

          else
          {
            v460 = v575;
            *(v214 + 8) = v574;
            *(v214 + 24) = v460;
            v461 = v577;
            *(v214 + 40) = v576;
            *(v214 + 56) = v461;
            v462 = v571;
            *(v214 + 120) = v570;
            *(v214 + 136) = v462;
            v463 = v573;
            *(v214 + 152) = v572;
            *(v214 + 168) = v463;
            v464 = v569;
            *(v214 + 88) = v568;
            *v214 = v221;
            *(v214 + 72) = v210;
            *(v214 + 80) = v209;
            *(v214 + 104) = v464;
          }

          swift_storeEnumTagMultiPayload();
          return v554;
        }

        v441 = sub_1004A6D34();

        if (v441)
        {
          goto LABEL_106;
        }
      }

      v442 = _swiftEmptyArrayStorage;
      goto LABEL_108;
    }

    sub_100220230(v87, type metadata accessor for UnauthenticatedState);
    v295 = v554;
    v296 = v539;
    sub_1002201C8(v554, v539, _s6LoggerVMa);
    v297 = v538;
    sub_1002201C8(v295, v538, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v298 = sub_1004A4A54();
    v299 = sub_1004A6014();
    if (!os_log_type_enabled(v298, v299))
    {
      goto LABEL_126;
    }

    v300 = swift_slowAlloc();
    v301 = swift_slowAlloc();
    *&v612 = v301;
    *v300 = 68158210;
    *(v300 + 4) = 2;
    *(v300 + 8) = 256;
    v302 = v553;
    v303 = *(v297 + *(v553 + 20));
    sub_100220230(v297, _s6LoggerVMa);
    *(v300 + 10) = v303;
    *(v300 + 11) = 2082;
    v304 = *(v296 + *(v302 + 20) + 4);
    sub_100220230(v296, _s6LoggerVMa);
    v305 = ConnectionID.debugDescription.getter(v304);
    v307 = sub_10015BA6C(v305, v306, &v612);

    *(v300 + 13) = v307;
    v308 = "[%.*hhx-%{public}s] Unexpected identifiedServer";
LABEL_125:
    _os_log_impl(&_mh_execute_header, v298, v299, v308, v300, 0x15u);
    sub_1000197E0(v301);

    return _swiftEmptyArrayStorage;
  }

  if (v107 > 8)
  {
    if ((v107 - 9) >= 2)
    {
      v223 = v554;
      v224 = v551;
      sub_1002201C8(v554, v551, _s6LoggerVMa);
      v225 = v549;
      sub_1002201C8(v223, v549, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v226 = sub_1004A4A54();
      v227 = sub_1004A6034();
      v228 = os_log_type_enabled(v226, v227);
      v229 = v556;
      if (v228)
      {
        v230 = swift_slowAlloc();
        v231 = swift_slowAlloc();
        *&v612 = v231;
        *v230 = 68158210;
        *(v230 + 4) = 2;
        *(v230 + 8) = 256;
        v232 = v553;
        v233 = *(v225 + *(v553 + 20));
        sub_100220230(v225, _s6LoggerVMa);
        *(v230 + 10) = v233;
        *(v230 + 11) = 2082;
        v234 = *(v224 + *(v232 + 20) + 4);
        sub_100220230(v224, _s6LoggerVMa);
        v235 = ConnectionID.debugDescription.getter(v234);
        v237 = sub_10015BA6C(v235, v236, &v612);

        *(v230 + 13) = v237;
        _os_log_impl(&_mh_execute_header, v226, v227, "[%.*hhx-%{public}s] Did enable UIDONLY", v230, 0x15u);
        sub_1000197E0(v231);
      }

      else
      {
        sub_100220230(v225, _s6LoggerVMa);

        sub_100220230(v224, _s6LoggerVMa);
      }

      v309 = v547;
      sub_1002201C8(v229, v547, type metadata accessor for UnauthenticatedState);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_100220230(v309, type metadata accessor for UnauthenticatedState);
        v332 = v554;
        v296 = v545;
        sub_1002201C8(v554, v545, _s6LoggerVMa);
        v297 = v544;
        sub_1002201C8(v332, v544, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v298 = sub_1004A4A54();
        v299 = sub_1004A6014();
        if (!os_log_type_enabled(v298, v299))
        {
          goto LABEL_126;
        }

        v300 = swift_slowAlloc();
        v301 = swift_slowAlloc();
        *&v612 = v301;
        *v300 = 68158210;
        *(v300 + 4) = 2;
        *(v300 + 8) = 256;
        v333 = v553;
        v334 = *(v297 + *(v553 + 20));
        sub_100220230(v297, _s6LoggerVMa);
        *(v300 + 10) = v334;
        *(v300 + 11) = 2082;
        v335 = *(v296 + *(v333 + 20) + 4);
        sub_100220230(v296, _s6LoggerVMa);
        v336 = ConnectionID.debugDescription.getter(v335);
        v338 = sub_10015BA6C(v336, v337, &v612);

        *(v300 + 13) = v338;
        v308 = "[%.*hhx-%{public}s] Unexpected enabledCapabilities";
        goto LABEL_125;
      }

      sub_100220230(v229, type metadata accessor for UnauthenticatedState);
      v310 = *v309;
      v311 = *(v309 + 120);
      v312 = *(v309 + 152);
      v586 = *(v309 + 136);
      v587 = v312;
      v588 = *(v309 + 168);
      v313 = *(v309 + 56);
      v314 = *(v309 + 88);
      v582 = *(v309 + 72);
      v583 = v314;
      v584 = *(v309 + 104);
      v585 = v311;
      v315 = *(v309 + 24);
      v578 = *(v309 + 8);
      v579 = v315;
      v580 = *(v309 + 40);
      v581 = v313;
      v316 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
      v317 = *v316;
      v318 = v316[1];

      v642._countAndFlagsBits = v317;
      v642._object = v318;
      v319 = static Capability.compression(_:)(v642);
      v321 = v320;
      v323 = v322;
      v325 = v324;

      *&v612 = v319;
      *(&v612 + 1) = v321;
      *&v613 = v323;
      BYTE8(v613) = v325 & 1;
      __chkstk_darwin(v326);
      *(&v517 - 2) = &v612;
      LOBYTE(v318) = sub_100215C70(sub_1001F0EE0, (&v517 - 4), v310);

      if (v318)
      {
        v327 = v584;
        *(v229 + 120) = v585;
        v328 = v587;
        *(v229 + 136) = v586;
        *(v229 + 152) = v328;
        *(v229 + 168) = v588;
        v329 = v580;
        *(v229 + 56) = v581;
        v330 = v583;
        *(v229 + 72) = v582;
        *(v229 + 88) = v330;
        *(v229 + 104) = v327;
        v331 = v579;
        *(v229 + 8) = v578;
        *(v229 + 24) = v331;
        *v229 = v310;
        *(v229 + 40) = v329;
        swift_storeEnumTagMultiPayload();
        return _swiftEmptyArrayStorage;
      }

      v398 = Capability.applePushService.unsafeMutableAddressor();
      v399 = v398[1];
      v400 = v398[2];
      v401 = *(v398 + 24);
      *&v612 = *v398;
      *(&v612 + 1) = v399;
      *&v613 = v400;
      BYTE8(v613) = v401;
      __chkstk_darwin(v398);
      *(&v517 - 2) = &v612;

      v402 = sub_100215C70(sub_1001F0EE0, (&v517 - 4), v310);

      v403 = v584;
      *(v229 + 120) = v585;
      v404 = v587;
      *(v229 + 136) = v586;
      *(v229 + 152) = v404;
      *(v229 + 168) = v588;
      v405 = v580;
      *(v229 + 56) = v581;
      v406 = v583;
      *(v229 + 72) = v582;
      *(v229 + 88) = v406;
      *(v229 + 104) = v403;
      v407 = v579;
      *(v229 + 8) = v578;
      *(v229 + 24) = v407;
      *v229 = v310;
      *(v229 + 40) = v405;
      if (v402)
      {
        swift_storeEnumTagMultiPayload();
        return &off_1005A39F8;
      }
    }

    else
    {
      v159 = v556;
      sub_1002201C8(v556, v90, type metadata accessor for UnauthenticatedState);
      if (swift_getEnumCaseMultiPayload() - 5 > 1)
      {
        v281 = v554;
        v282 = v550;
        sub_1002201C8(v554, v550, _s6LoggerVMa);
        v283 = v548;
        sub_1002201C8(v281, v548, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v284 = sub_1004A4A54();
        v285 = sub_1004A6014();
        if (os_log_type_enabled(v284, v285))
        {
          v286 = swift_slowAlloc();
          v287 = swift_slowAlloc();
          *&v612 = v287;
          *v286 = 68158210;
          *(v286 + 4) = 2;
          *(v286 + 8) = 256;
          v288 = v553;
          v289 = *(v283 + *(v553 + 20));
          sub_100220230(v283, _s6LoggerVMa);
          *(v286 + 10) = v289;
          *(v286 + 11) = 2082;
          v290 = *(v282 + *(v288 + 20) + 4);
          sub_100220230(v282, _s6LoggerVMa);
          v291 = ConnectionID.debugDescription.getter(v290);
          v293 = sub_10015BA6C(v291, v292, &v612);

          *(v286 + 13) = v293;
          _os_log_impl(&_mh_execute_header, v284, v285, "[%.*hhx-%{public}s] Unexpected enabledCompress", v286, 0x15u);
          sub_1000197E0(v287);
        }

        else
        {
          sub_100220230(v283, _s6LoggerVMa);

          sub_100220230(v282, _s6LoggerVMa);
        }

        v367 = type metadata accessor for UnauthenticatedState;
        v368 = v90;
        goto LABEL_127;
      }

      sub_100220230(v159, type metadata accessor for UnauthenticatedState);
      v161 = *(v90 + 21);
      v160 = *(v90 + 22);
      v162 = *v90;
      v163 = *(v90 + 8);
      v164 = *(v90 + 24);
      v553 = *(v90 + 40);
      v554 = v163;
      v548 = *(v90 + 56);
      v549 = v164;
      v165 = *(v90 + 72);
      v166 = *(v90 + 88);
      v551 = *(v90 + 104);
      v552 = v165;
      v546 = *(v90 + 120);
      v547 = v166;
      v550 = *(v90 + 136);
      v545 = *(v90 + 152);
      v167 = Capability.applePushService.unsafeMutableAddressor();
      v168 = v167[1];
      v169 = v167[2];
      v170 = *(v167 + 24);
      *&v612 = *v167;
      *(&v612 + 1) = v168;
      *&v613 = v169;
      BYTE8(v613) = v170;
      __chkstk_darwin(v167);
      *(&v517 - 2) = &v612;

      v171 = sub_100215C70(sub_1001F0EE0, (&v517 - 4), v162);

      *v159 = v162;
      *(v159 + 24) = v549;
      *(v159 + 8) = v554;
      *(v159 + 56) = v548;
      *(v159 + 40) = v553;
      *(v159 + 88) = v547;
      *(v159 + 72) = v552;
      *(v159 + 120) = v546;
      *(v159 + 104) = v551;
      *(v159 + 152) = v545;
      *(v159 + 136) = v550;
      *(v159 + 168) = v161;
      *(v159 + 176) = v160;
      if (v171)
      {
        swift_storeEnumTagMultiPayload();
        return &off_1005A3938;
      }
    }

LABEL_122:
    swift_storeEnumTagMultiPayload();
    return _swiftEmptyArrayStorage;
  }

  if (v107 == 6)
  {
    v175 = UInt32.init(_:)(v624);
    v176 = *v175;
    v177 = *(v175 + 8);
    v178 = *(v175 + 16);
    v179 = *(v175 + 24);
    if (v179 >= 0xC0)
    {
      v180 = v178 | v177;
      if (v179 == 192 && v176 == 8 && !v180)
      {
        v181 = v556;
        sub_1002201C8(v556, v79, type metadata accessor for UnauthenticatedState);
        if (swift_getEnumCaseMultiPayload() != 8)
        {
          sub_100220230(v79, type metadata accessor for UnauthenticatedState);
          v477 = v554;
          v296 = v524;
          sub_1002201C8(v554, v524, _s6LoggerVMa);
          v297 = v523;
          sub_1002201C8(v477, v523, _s6LoggerVMa);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v298 = sub_1004A4A54();
          v299 = sub_1004A6014();
          if (os_log_type_enabled(v298, v299))
          {
            v300 = swift_slowAlloc();
            v301 = swift_slowAlloc();
            *&v612 = v301;
            *v300 = 68158210;
            *(v300 + 4) = 2;
            *(v300 + 8) = 256;
            v478 = v553;
            v479 = *(v297 + *(v553 + 20));
            sub_100220230(v297, _s6LoggerVMa);
            *(v300 + 10) = v479;
            *(v300 + 11) = 2082;
            v480 = *(v296 + *(v478 + 20) + 4);
            sub_100220230(v296, _s6LoggerVMa);
            v481 = ConnectionID.debugDescription.getter(v480);
            v483 = sub_10015BA6C(v481, v482, &v612);

            *(v300 + 13) = v483;
            v308 = "[%.*hhx-%{public}s] Unexpected unableToGetPushResponse";
            goto LABEL_125;
          }

          goto LABEL_126;
        }

        sub_100220230(v181, type metadata accessor for UnauthenticatedState);
        v182 = *(v79 + 1);
        v612 = *v79;
        v613 = v182;
        v183 = *(v79 + 3);
        v614 = *(v79 + 2);
        v615 = v183;
        v184 = *(v79 + 8);
        v185 = *(v79 + 184);
        v186 = *(v79 + 216);
        v609 = *(v79 + 200);
        v610 = v186;
        v611 = *(v79 + 232);
        v187 = *(v79 + 120);
        v188 = *(v79 + 152);
        v605 = *(v79 + 136);
        v606 = v188;
        v189 = *(v79 + 168);
        v608 = v185;
        v607 = v189;
        v190 = *(v79 + 88);
        v601 = *(v79 + 72);
        v602 = v190;
        v191 = *(v79 + 104);
        v604 = v187;
        v603 = v191;
        sub_10021D02C(&v612);
        v192 = v554;
        v193 = v526;
        sub_1002201C8(v554, v526, _s6LoggerVMa);
        v194 = v525;
        sub_1002201C8(v192, v525, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v195 = sub_1004A4A54();
        v196 = sub_1004A6014();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          *&v590 = v198;
          *v197 = 68158210;
          *(v197 + 4) = 2;
          *(v197 + 8) = 256;
          v199 = v553;
          v200 = *(v553 + 20);
          *&v554 = v184;
          v201 = *(v194 + v200);
          sub_100220230(v194, _s6LoggerVMa);
          *(v197 + 10) = v201;
          *(v197 + 11) = 2082;
          v202 = *(v193 + *(v199 + 20) + 4);
          sub_100220230(v193, _s6LoggerVMa);
          v203 = ConnectionID.debugDescription.getter(v202);
          v205 = sub_10015BA6C(v203, v204, &v590);

          *(v197 + 13) = v205;
          v184 = v554;
          _os_log_impl(&_mh_execute_header, v195, v196, "[%.*hhx-%{public}s] Unable to get push response", v197, 0x15u);
          sub_1000197E0(v198);
        }

        else
        {
          sub_100220230(v194, _s6LoggerVMa);

          sub_100220230(v193, _s6LoggerVMa);
        }

        v486 = v607;
        v487 = v556;
        *(v556 + 120) = v608;
        v488 = v610;
        *(v487 + 136) = v609;
        *(v487 + 152) = v488;
        *(v487 + 168) = v611;
        v489 = v603;
        *(v487 + 56) = v604;
        v490 = v606;
        *(v487 + 72) = v605;
        *(v487 + 88) = v490;
        *(v487 + 104) = v486;
        v491 = v602;
        *(v487 + 8) = v601;
        *(v487 + 24) = v491;
        *v487 = v184;
        *(v487 + 40) = v489;
        goto LABEL_122;
      }

      if (v179 == 192 && v176 == 9 && !v180)
      {
        v408 = v556;
        sub_1002201C8(v556, v82, type metadata accessor for UnauthenticatedState);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          sub_100220230(v408, type metadata accessor for UnauthenticatedState);
          v409 = *v82;
          v410 = v554;
          v411 = v520;
          sub_1002201C8(v554, v520, _s6LoggerVMa);
          v412 = v519;
          sub_1002201C8(v410, v519, _s6LoggerVMa);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          v413 = sub_1004A4A54();
          v414 = sub_1004A6014();
          if (os_log_type_enabled(v413, v414))
          {
            v415 = swift_slowAlloc();
            *&v552 = swift_slowAlloc();
            *&v612 = v552;
            *v415 = 68158210;
            *(v415 + 4) = 2;
            *(v415 + 8) = 256;
            v416 = v553;
            v417 = *(v553 + 20);
            *&v554 = v409;
            v418 = *(v412 + v417);
            sub_100220230(v412, _s6LoggerVMa);
            *(v415 + 10) = v418;
            *(v415 + 11) = 2082;
            v419 = *(v411 + *(v416 + 20) + 4);
            sub_100220230(v411, _s6LoggerVMa);
            v420 = ConnectionID.debugDescription.getter(v419);
            v422 = sub_10015BA6C(v420, v421, &v612);

            *(v415 + 13) = v422;
            v409 = v554;
            _os_log_impl(&_mh_execute_header, v413, v414, "[%.*hhx-%{public}s] Unable to identify server.", v415, 0x15u);
            sub_1000197E0(v552);
          }

          else
          {
            sub_100220230(v412, _s6LoggerVMa);

            sub_100220230(v411, _s6LoggerVMa);
          }

          v500 = ServerID.empty.unsafeMutableAddressor();
          v502 = v500[1];
          v501 = v500[2];
          v590 = *v500;
          v591 = v502;
          v592 = v501;
          v503 = v500[5];
          v505 = v500[3];
          v504 = v500[4];
          v596 = v500[6];
          v595 = v503;
          v593 = v505;
          v594 = v504;
          v506 = v500[9];
          v508 = v500[7];
          v507 = v500[8];
          v600 = v500[10];
          v599 = v506;
          v597 = v508;
          v598 = v507;
          v619 = v500[7];
          v620 = v500[8];
          v621 = v500[9];
          v622 = v500[10];
          v615 = v500[3];
          v509 = v615;
          v616 = v500[4];
          v617 = v500[5];
          v618 = v500[6];
          v612 = *v500;
          v613 = v500[1];
          v614 = v500[2];
          *v408 = v409;
          *(v408 + 56) = v509;
          v510 = v616;
          *(v408 + 40) = v614;
          v511 = v612;
          *(v408 + 24) = v613;
          *(v408 + 8) = v511;
          v512 = v617;
          *(v408 + 104) = v618;
          *(v408 + 88) = v512;
          *(v408 + 72) = v510;
          v513 = v621;
          *(v408 + 168) = v622;
          *(v408 + 152) = v513;
          v514 = v619;
          *(v408 + 136) = v620;
          *(v408 + 120) = v514;
          swift_storeEnumTagMultiPayload();
          sub_10010E800(&v590, &v589);
          return _swiftEmptyArrayStorage;
        }

        sub_100220230(v82, type metadata accessor for UnauthenticatedState);
        v492 = v554;
        v296 = v522;
        sub_1002201C8(v554, v522, _s6LoggerVMa);
        v297 = v521;
        sub_1002201C8(v492, v521, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v298 = sub_1004A4A54();
        v299 = sub_1004A6014();
        if (os_log_type_enabled(v298, v299))
        {
          v300 = swift_slowAlloc();
          v301 = swift_slowAlloc();
          *&v612 = v301;
          *v300 = 68158210;
          *(v300 + 4) = 2;
          *(v300 + 8) = 256;
          v493 = v553;
          v494 = *(v297 + *(v553 + 20));
          sub_100220230(v297, _s6LoggerVMa);
          *(v300 + 10) = v494;
          *(v300 + 11) = 2082;
          v495 = *(v296 + *(v493 + 20) + 4);
          sub_100220230(v296, _s6LoggerVMa);
          v496 = ConnectionID.debugDescription.getter(v495);
          v498 = sub_10015BA6C(v496, v497, &v612);

          *(v300 + 13) = v498;
          v308 = "[%.*hhx-%{public}s] Unexpected unableToIdentifyServer";
          goto LABEL_125;
        }

        goto LABEL_126;
      }
    }

    v423 = v556;
    sub_100220230(v556, type metadata accessor for UnauthenticatedState);
    *v423 = v176;
    *(v423 + 8) = v177;
    *(v423 + 16) = v178;
    *(v423 + 24) = v179;
    swift_storeEnumTagMultiPayload();
    v620 = v638;
    v621 = v639;
    v622 = v640;
    v623 = v641;
    v616 = v634;
    v617 = v635;
    v618 = v636;
    v619 = v637;
    v612 = v630;
    v613 = v631;
    v614 = v632;
    v615 = v633;
    v424 = UInt32.init(_:)(&v612);
    sub_10021D098(*v424, *(v424 + 8), *(v424 + 16), *(v424 + 24));
    return _swiftEmptyArrayStorage;
  }

  if (v107 == 7)
  {
    v121 = v556;
    sub_1002201C8(v556, v96, type metadata accessor for UnauthenticatedState);
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_100220230(v121, type metadata accessor for UnauthenticatedState);
      sub_100220230(v96, type metadata accessor for UnauthenticatedState);
      swift_storeEnumTagMultiPayload();
      return &off_1005A38B8;
    }

    sub_100220230(v96, type metadata accessor for UnauthenticatedState);
    v339 = v554;
    v296 = v533;
    sub_1002201C8(v554, v533, _s6LoggerVMa);
    v297 = v532;
    sub_1002201C8(v339, v532, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v298 = sub_1004A4A54();
    v299 = sub_1004A6014();
    if (!os_log_type_enabled(v298, v299))
    {
      goto LABEL_126;
    }

    v300 = swift_slowAlloc();
    v301 = swift_slowAlloc();
    *&v612 = v301;
    *v300 = 68158210;
    *(v300 + 4) = 2;
    *(v300 + 8) = 256;
    v340 = v553;
    v341 = *(v297 + *(v553 + 20));
    sub_100220230(v297, _s6LoggerVMa);
    *(v300 + 10) = v341;
    *(v300 + 11) = 2082;
    v342 = *(v296 + *(v340 + 20) + 4);
    sub_100220230(v296, _s6LoggerVMa);
    v343 = ConnectionID.debugDescription.getter(v342);
    v345 = sub_10015BA6C(v343, v344, &v612);

    *(v300 + 13) = v345;
    v308 = "[%.*hhx-%{public}s] Unexpected startTLS";
    goto LABEL_125;
  }

  v239 = v556;
  sub_1002201C8(v556, v93, type metadata accessor for UnauthenticatedState);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_100220230(v93, type metadata accessor for UnauthenticatedState);
    v353 = v554;
    v296 = v535;
    sub_1002201C8(v554, v535, _s6LoggerVMa);
    v297 = v534;
    sub_1002201C8(v353, v534, _s6LoggerVMa);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v298 = sub_1004A4A54();
    v299 = sub_1004A6014();
    if (os_log_type_enabled(v298, v299))
    {
      v300 = swift_slowAlloc();
      v301 = swift_slowAlloc();
      *&v612 = v301;
      *v300 = 68158210;
      *(v300 + 4) = 2;
      *(v300 + 8) = 256;
      v354 = v553;
      v355 = *(v297 + *(v553 + 20));
      sub_100220230(v297, _s6LoggerVMa);
      *(v300 + 10) = v355;
      *(v300 + 11) = 2082;
      v356 = *(v296 + *(v354 + 20) + 4);
      sub_100220230(v296, _s6LoggerVMa);
      v357 = ConnectionID.debugDescription.getter(v356);
      v359 = sub_10015BA6C(v357, v358, &v612);

      *(v300 + 13) = v359;
      v308 = "[%.*hhx-%{public}s] Unexpected serverAcceptedCompress";
      goto LABEL_125;
    }

    goto LABEL_126;
  }

  sub_100220230(v239, type metadata accessor for UnauthenticatedState);
  v240 = *v93;
  v241 = *(v93 + 120);
  v242 = *(v93 + 152);
  v565 = *(v93 + 136);
  v566 = v242;
  v567 = *(v93 + 168);
  v243 = *(v93 + 56);
  v244 = *(v93 + 88);
  v561 = *(v93 + 72);
  v562 = v244;
  v563 = *(v93 + 104);
  v564 = v241;
  v245 = *(v93 + 24);
  v557 = *(v93 + 8);
  v558 = v245;
  v559 = *(v93 + 40);
  v560 = v243;
  v246 = v554;
  v247 = v537;
  sub_1002201C8(v554, v537, _s6LoggerVMa);
  v248 = v536;
  sub_1002201C8(v246, v536, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v249 = sub_1004A4A54();
  v250 = sub_1004A6004();
  if (os_log_type_enabled(v249, v250))
  {
    v251 = swift_slowAlloc();
    v252 = swift_slowAlloc();
    *&v612 = v252;
    *v251 = 68158210;
    *(v251 + 4) = 2;
    *(v251 + 8) = 256;
    v253 = v553;
    v254 = *(v553 + 20);
    *&v554 = v240;
    v255 = *(v248 + v254);
    sub_100220230(v248, _s6LoggerVMa);
    *(v251 + 10) = v255;
    *(v251 + 11) = 2082;
    v256 = *(v247 + *(v253 + 20) + 4);
    sub_100220230(v247, _s6LoggerVMa);
    v257 = ConnectionID.debugDescription.getter(v256);
    v259 = sub_10015BA6C(v257, v258, &v612);

    *(v251 + 13) = v259;
    v240 = v554;
    _os_log_impl(&_mh_execute_header, v249, v250, "[%.*hhx-%{public}s] Server accepted compression.", v251, 0x15u);
    sub_1000197E0(v252);
  }

  else
  {
    sub_100220230(v248, _s6LoggerVMa);

    sub_100220230(v247, _s6LoggerVMa);
  }

  v425 = v563;
  *(v239 + 120) = v564;
  v426 = v566;
  *(v239 + 136) = v565;
  *(v239 + 152) = v426;
  *(v239 + 168) = v567;
  v427 = v559;
  *(v239 + 56) = v560;
  v428 = v562;
  *(v239 + 72) = v561;
  *(v239 + 88) = v428;
  *(v239 + 104) = v425;
  v429 = v558;
  *(v239 + 8) = v557;
  *(v239 + 24) = v429;
  *v239 = v240;
  *(v239 + 40) = v427;
  swift_storeEnumTagMultiPayload();
  return &off_1005A38F8;
}

uint64_t sub_10021BC44(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if (!(v3 >> 62))
  {
    if (v4 >> 62)
    {
      return 0;
    }

    return sub_1001FCCD8(v3, a1[1], a1[2], v4, v5, v6);
  }

  if (v3 >> 62 == 1)
  {
    if (v4 >> 62 != 1)
    {
      return 0;
    }

    return sub_1001FCCD8(v3, a1[1], a1[2], v4, v5, v6);
  }

  return v4 >> 62 == 2 && v4 == 0x8000000000000000 && (v6 | v5) == 0;
}

uint64_t sub_10021BCB4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_1004A6724(44);
    v1._countAndFlagsBits = 0xD000000000000020;
    v1._object = 0x80000001004AC410;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    sub_1004A6724(28);
    v1._object = 0x80000001004AC3F0;
    v1._countAndFlagsBits = 0xD000000000000010;
LABEL_5:
    sub_1004A5994(v1);
    type metadata accessor for tls_protocol_version_t(0);
    sub_1004A6934();
    v3._countAndFlagsBits = 0x206574697573202CLL;
    v3._object = 0xE800000000000000;
    sub_1004A5994(v3);
    type metadata accessor for tls_ciphersuite_t(0);
    sub_1004A6934();
    return 0;
  }

  return 1701736302;
}

uint64_t sub_10021BE0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_1002151A8(a2);
    v10[0] = result;
    v10[1] = v6;
    v10[2] = v7;
    v11 = v8;
    if (v6)
    {
      __chkstk_darwin(result);
      v9[2] = v10;
      v3 = sub_100215C70(sub_1001F0EE0, v9, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return sub_10021BEF4(a1, a2);
  }

  return result;
}

uint64_t sub_10021BEF4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v15 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17 = &v15;
  v18 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v11 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v8 = &v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_10021DC08(v8, v3, a2);
  }

  else
  {
    v12 = swift_slowAlloc();
    bzero(v12, v11);
    sub_10021DBD0(v12, &v16);
    v13 = v16;

    v9 = v13;
  }

  return v9 & 1;
}

uint64_t sub_10021C074(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_1004A6D34(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (((v4 ^ v2) & 0xFFFFFFFFFFFFC000) != 0)
      {
        v9 = 1;
      }

      else
      {
        v9 = v5;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10021C10C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, unint64_t a7, unsigned __int8 a8)
{
  if ((a4 >> 6) <= 1u)
  {
    if (a4 >> 6)
    {
      if ((a8 & 0xC0) != 0x40)
      {
        return 0;
      }

      v9 = a8 & 0x3F;
      if ((a4 & 0x3F) != 0)
      {
        if ((a4 & 0x3F) == 1)
        {
          if (v9 != 1)
          {
            return 0;
          }
        }

        else if (v9 != 2)
        {
          return 0;
        }
      }

      else if ((a8 & 0x3F) != 0)
      {
        return 0;
      }
    }

    else
    {
      if (a8 > 0x3Fu)
      {
        return 0;
      }

      if (a3 > 1)
      {
        if (a3 == 2)
        {
          return a7 == 2;
        }

        if (a3 == 3)
        {
          return a7 == 3;
        }
      }

      else
      {
        if (!a3)
        {
          return !a7;
        }

        if (a3 == 1)
        {
          return a7 == 1;
        }
      }

      if (a7 < 4)
      {
        return 0;
      }
    }

    return (static ResponseText.__derived_struct_equals(_:_:)(a1, a2) & 1) != 0;
  }

  if (a4 >> 6 != 2)
  {
    v10 = a3 | a2;
    if (!(a3 | a2 | a1) && a4 == 192)
    {
      return a8 >= 0xC0u && !(a7 | a6 | a5) && a8 == 192;
    }

    if (a4 == 192 && a1 == 1 && !v10)
    {
      if (a8 != 192 || a5 != 1)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 2 && !v10)
    {
      if (a8 != 192 || a5 != 2)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 3 && !v10)
    {
      if (a8 != 192 || a5 != 3)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 4 && !v10)
    {
      if (a8 != 192 || a5 != 4)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 5 && !v10)
    {
      if (a8 != 192 || a5 != 5)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 6 && !v10)
    {
      if (a8 != 192 || a5 != 6)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 7 && !v10)
    {
      if (a8 != 192 || a5 != 7)
      {
        return 0;
      }
    }

    else if (a4 == 192 && a1 == 8 && !v10)
    {
      if (a8 != 192 || a5 != 8)
      {
        return 0;
      }
    }

    else if (a8 != 192 || a5 != 9)
    {
      return 0;
    }

    return !(a7 | a6);
  }

  if ((a8 & 0xC0) != 0x80)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  return sub_1004A6D34();
}

uint64_t sub_10021C42C(char *a1, uint64_t *a2)
{
  v129 = a1;
  v130 = a2;
  v2 = type metadata accessor for Authenticator(0);
  __chkstk_darwin(v2 - 8);
  v122 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UnauthenticatedState(0);
  __chkstk_darwin(v4);
  v126 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v127 = &v121 - v7;
  __chkstk_darwin(v8);
  v128 = &v121 - v9;
  __chkstk_darwin(v10);
  v125 = &v121 - v11;
  __chkstk_darwin(v12);
  v124 = &v121 - v13;
  __chkstk_darwin(v14);
  v16 = &v121 - v15;
  __chkstk_darwin(v17);
  v19 = &v121 - v18;
  __chkstk_darwin(v20);
  v22 = (&v121 - v21);
  __chkstk_darwin(v23);
  v123 = &v121 - v24;
  __chkstk_darwin(v25);
  v27 = (&v121 - v26);
  __chkstk_darwin(v28);
  v30 = (&v121 - v29);
  v31 = sub_10000C9C0(&qword_1005D5290, &unk_1004E7580);
  __chkstk_darwin(v31 - 8);
  v33 = &v121 - v32;
  v35 = (&v121 + *(v34 + 56) - v32);
  sub_1002201C8(v129, &v121 - v32, type metadata accessor for UnauthenticatedState);
  v36 = v130;
  v130 = v35;
  sub_1002201C8(v36, v35, type metadata accessor for UnauthenticatedState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1002201C8(v33, v27, type metadata accessor for UnauthenticatedState);
      v65 = *v27;
      v66 = v130;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_32;
    case 2u:
      v62 = v123;
      sub_1002201C8(v33, v123, type metadata accessor for UnauthenticatedState);
      v63 = v130;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v64 = v122;
        sub_100220160(v63, v122, type metadata accessor for Authenticator);
        v55 = sub_100197290(v62, v64);
        sub_100220230(v64, type metadata accessor for Authenticator);
        sub_100220230(v62, type metadata accessor for Authenticator);
        goto LABEL_33;
      }

      sub_100220230(v62, type metadata accessor for Authenticator);
      goto LABEL_20;
    case 3u:
      sub_1002201C8(v33, v22, type metadata accessor for UnauthenticatedState);
      v65 = *v22;
      v66 = v130;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_19;
      }

LABEL_32:
      v55 = sub_1001CE84C(v65, *v66);

      goto LABEL_33;
    case 4u:
      sub_1002201C8(v33, v19, type metadata accessor for UnauthenticatedState);
      v41 = *v19;
      v42 = *(v19 + 120);
      v43 = *(v19 + 152);
      v141 = *(v19 + 136);
      v142 = v43;
      v143 = *(v19 + 168);
      v44 = *(v19 + 56);
      v45 = *(v19 + 88);
      v137 = *(v19 + 72);
      v138 = v45;
      v139 = *(v19 + 104);
      v140 = v42;
      v46 = *(v19 + 24);
      v133 = *(v19 + 8);
      v134 = v46;
      v135 = *(v19 + 40);
      v136 = v44;
      v47 = v130;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    case 5u:
      sub_1002201C8(v33, v16, type metadata accessor for UnauthenticatedState);
      v41 = *v16;
      v82 = *(v16 + 120);
      v83 = *(v16 + 152);
      v141 = *(v16 + 136);
      v142 = v83;
      v143 = *(v16 + 168);
      v84 = *(v16 + 56);
      v85 = *(v16 + 88);
      v137 = *(v16 + 72);
      v138 = v85;
      v139 = *(v16 + 104);
      v140 = v82;
      v86 = *(v16 + 24);
      v133 = *(v16 + 8);
      v134 = v86;
      v135 = *(v16 + 40);
      v136 = v84;
      v47 = v130;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    case 6u:
      v88 = v124;
      sub_1002201C8(v33, v124, type metadata accessor for UnauthenticatedState);
      v41 = *v88;
      v89 = *(v88 + 120);
      v90 = *(v88 + 152);
      v141 = *(v88 + 136);
      v142 = v90;
      v143 = *(v88 + 168);
      v91 = *(v88 + 56);
      v92 = *(v88 + 88);
      v137 = *(v88 + 72);
      v138 = v92;
      v139 = *(v88 + 104);
      v140 = v89;
      v93 = *(v88 + 24);
      v133 = *(v88 + 8);
      v134 = v93;
      v135 = *(v88 + 40);
      v136 = v91;
      v47 = v130;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    case 7u:
      v67 = v125;
      sub_1002201C8(v33, v125, type metadata accessor for UnauthenticatedState);
      v68 = *v67;
      v69 = *(v67 + 120);
      v70 = *(v67 + 152);
      v141 = *(v67 + 136);
      v142 = v70;
      v143 = *(v67 + 168);
      v71 = *(v67 + 56);
      v72 = *(v67 + 88);
      v137 = *(v67 + 72);
      v138 = v72;
      v139 = *(v67 + 104);
      v140 = v69;
      v73 = *(v67 + 24);
      v133 = *(v67 + 8);
      v134 = v73;
      v135 = *(v67 + 40);
      v136 = v71;
      v74 = v130;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_18;
      }

      v75 = *v74;
      v76 = *(v74 + 15);
      v77 = *(v74 + 19);
      v152 = *(v74 + 17);
      v153 = v77;
      v154 = *(v74 + 21);
      v78 = *(v74 + 7);
      v79 = *(v74 + 11);
      v148 = *(v74 + 9);
      v149 = v79;
      v150 = *(v74 + 13);
      v151 = v76;
      v80 = *(v74 + 3);
      v144 = *(v74 + 1);
      v145 = v80;
      v146 = *(v74 + 5);
      v147 = v78;
      v81 = sub_1001CE84C(v68, v75);

      if ((v81 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_14;
    case 8u:
      v104 = v128;
      sub_1002201C8(v33, v128, type metadata accessor for UnauthenticatedState);
      v105 = *(v104 + 16);
      v131[0] = *v104;
      v131[1] = v105;
      v106 = *(v104 + 48);
      v131[2] = *(v104 + 32);
      v131[3] = v106;
      v41 = *(v104 + 64);
      v107 = *(v104 + 184);
      v108 = *(v104 + 216);
      v141 = *(v104 + 200);
      v142 = v108;
      v143 = *(v104 + 232);
      v109 = *(v104 + 120);
      v110 = *(v104 + 152);
      v137 = *(v104 + 136);
      v138 = v110;
      v139 = *(v104 + 168);
      v140 = v107;
      v111 = *(v104 + 88);
      v133 = *(v104 + 72);
      v134 = v111;
      v135 = *(v104 + 104);
      v136 = v109;
      v112 = v130;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        sub_10010E990(&v133);

        sub_10021D02C(v131);
        goto LABEL_20;
      }

      v113 = *(v112 + 1);
      v132[0] = *v112;
      v132[1] = v113;
      v114 = *(v112 + 3);
      v132[2] = *(v112 + 2);
      v132[3] = v114;
      v48 = v112[8];
      v115 = *(v112 + 23);
      v116 = *(v112 + 27);
      v152 = *(v112 + 25);
      v153 = v116;
      v154 = *(v112 + 29);
      v117 = *(v112 + 15);
      v118 = *(v112 + 19);
      v148 = *(v112 + 17);
      v149 = v118;
      v150 = *(v112 + 21);
      v151 = v115;
      v119 = *(v112 + 11);
      v144 = *(v112 + 9);
      v145 = v119;
      v146 = *(v112 + 13);
      v147 = v117;
      v120 = static PushRegistrationInfo.__derived_struct_equals(_:_:)(v131, v132);
      sub_10021D02C(v131);
      sub_10021D02C(v132);
      if (v120)
      {
        goto LABEL_13;
      }

      sub_10010E990(&v144);

      sub_10010E990(&v133);
      goto LABEL_51;
    case 9u:
      v56 = v127;
      sub_1002201C8(v33, v127, type metadata accessor for UnauthenticatedState);
      v41 = *v56;
      v57 = *(v56 + 120);
      v58 = *(v56 + 152);
      v141 = *(v56 + 136);
      v142 = v58;
      v143 = *(v56 + 168);
      v59 = *(v56 + 56);
      v60 = *(v56 + 88);
      v137 = *(v56 + 72);
      v138 = v60;
      v139 = *(v56 + 104);
      v140 = v57;
      v61 = *(v56 + 24);
      v133 = *(v56 + 8);
      v134 = v61;
      v135 = *(v56 + 40);
      v136 = v59;
      v47 = v130;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_18:
        sub_10010E990(&v133);
LABEL_19:

        goto LABEL_20;
      }

LABEL_12:
      v48 = *v47;
      v49 = *(v47 + 15);
      v50 = *(v47 + 19);
      v152 = *(v47 + 17);
      v153 = v50;
      v154 = *(v47 + 21);
      v51 = *(v47 + 7);
      v52 = *(v47 + 11);
      v148 = *(v47 + 9);
      v149 = v52;
      v150 = *(v47 + 13);
      v151 = v49;
      v53 = *(v47 + 3);
      v144 = *(v47 + 1);
      v145 = v53;
      v146 = *(v47 + 5);
      v147 = v51;
LABEL_13:
      v54 = sub_1001CE84C(v41, v48);

      if ((v54 & 1) == 0)
      {
LABEL_30:
        sub_10010E990(&v144);
        sub_10010E990(&v133);
        goto LABEL_52;
      }

LABEL_14:
      v55 = static ServerID.__derived_struct_equals(_:_:)(&v133, &v144);
      sub_10010E990(&v133);
      sub_10010E990(&v144);
LABEL_33:
      sub_100220230(v33, type metadata accessor for UnauthenticatedState);
      return v55 & 1;
    case 0xAu:
      v94 = v126;
      sub_1002201C8(v33, v126, type metadata accessor for UnauthenticatedState);
      v95 = *v94;
      v96 = *(v94 + 8);
      v97 = *(v94 + 16);
      v98 = *(v94 + 24);
      v99 = v130;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v129 = v33;
        v100 = *v99;
        v101 = v99[1];
        v102 = v99[2];
        v103 = *(v99 + 24);
        v55 = sub_10021C10C(v95, v96, v97, v98, *v99, v101, v102, v103);
        sub_100191E14(v100, v101, v102, v103);
        sub_100191E14(v95, v96, v97, v98);
        sub_100220230(v129, type metadata accessor for UnauthenticatedState);
        return v55 & 1;
      }

      sub_100191E14(v95, v96, v97, v98);
LABEL_20:
      sub_100025F40(v33, &qword_1005D5290, &unk_1004E7580);
      goto LABEL_21;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    default:
      sub_1002201C8(v33, v30, type metadata accessor for UnauthenticatedState);
      v37 = *v30;
      v38 = v130;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_19;
      }

      v39 = *v38;
      if (!v37)
      {
        if (!v39)
        {
          goto LABEL_37;
        }

LABEL_51:

        goto LABEL_52;
      }

      if (!v39)
      {
        goto LABEL_51;
      }

      v40 = sub_1001CE84C(v37, v39);

      if (v40)
      {
LABEL_37:
        sub_100220230(v33, type metadata accessor for UnauthenticatedState);
        v55 = 1;
        return v55 & 1;
      }

LABEL_52:
      sub_100220230(v33, type metadata accessor for UnauthenticatedState);
LABEL_21:
      v55 = 0;
      return v55 & 1;
  }
}

uint64_t sub_10021D080(uint64_t a1)
{
  if (*(a1 + 176) <= 6u)
  {
    return *(a1 + 176);
  }

  else
  {
    return (*a1 + 7);
  }
}

void sub_10021D098(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
    }
  }

  else if (a4 >> 6)
  {
    sub_10001123C(a1, a2, a3, a4 & 0x3F);
  }

  else
  {
    sub_1001978DC(a1, a2, a3);
  }
}

uint64_t sub_10021D0C8(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 144);
  v185[8] = *(a1 + 128);
  v185[9] = v4;
  v185[10] = *(a1 + 160);
  v186 = *(a1 + 176);
  v5 = *(a1 + 80);
  v185[4] = *(a1 + 64);
  v185[5] = v5;
  v6 = *(a1 + 112);
  v185[6] = *(a1 + 96);
  v185[7] = v6;
  v7 = *(a1 + 16);
  v185[0] = *a1;
  v185[1] = v7;
  v8 = *(a1 + 48);
  v185[2] = *(a1 + 32);
  v185[3] = v8;
  v9 = sub_10021D080(v185);
  if (v9 > 5)
  {
    if (v9 > 8)
    {
      if (v9 == 9)
      {
        v82 = a2[9];
        v181 = a2[8];
        v182 = v82;
        v183 = a2[10];
        v184 = *(a2 + 176);
        v83 = a2[5];
        v177 = a2[4];
        v178 = v83;
        v84 = a2[7];
        v179 = a2[6];
        v180 = v84;
        v85 = a2[1];
        v173 = *a2;
        v174 = v85;
        v86 = a2[3];
        v175 = a2[2];
        v176 = v86;
        if (sub_10021D080(&v173) == 9)
        {
          goto LABEL_55;
        }
      }

      else if (v9 == 10)
      {
        v49 = a2[9];
        v181 = a2[8];
        v182 = v49;
        v183 = a2[10];
        v184 = *(a2 + 176);
        v50 = a2[5];
        v177 = a2[4];
        v178 = v50;
        v51 = a2[7];
        v179 = a2[6];
        v180 = v51;
        v52 = a2[1];
        v173 = *a2;
        v174 = v52;
        v53 = a2[3];
        v175 = a2[2];
        v176 = v53;
        if (sub_10021D080(&v173) == 10)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v128 = a2[9];
        v181 = a2[8];
        v182 = v128;
        v183 = a2[10];
        v184 = *(a2 + 176);
        v129 = a2[5];
        v177 = a2[4];
        v178 = v129;
        v130 = a2[7];
        v179 = a2[6];
        v180 = v130;
        v131 = a2[1];
        v173 = *a2;
        v174 = v131;
        v132 = a2[3];
        v175 = a2[2];
        v176 = v132;
        if (sub_10021D080(&v173) == 11)
        {
          goto LABEL_55;
        }
      }
    }

    else if (v9 == 6)
    {
      v64 = UInt32.init(_:)(v185);
      v65 = *v64;
      v66 = *(v64 + 8);
      v67 = *(v64 + 16);
      v68 = *(v64 + 24);
      v69 = a2[9];
      v181 = a2[8];
      v182 = v69;
      v183 = a2[10];
      v184 = *(a2 + 176);
      v70 = a2[5];
      v177 = a2[4];
      v178 = v70;
      v71 = a2[7];
      v179 = a2[6];
      v180 = v71;
      v72 = a2[1];
      v173 = *a2;
      v174 = v72;
      v73 = a2[3];
      v175 = a2[2];
      v176 = v73;
      if (sub_10021D080(&v173) == 6)
      {
        v74 = UInt32.init(_:)(&v173);
        v31 = sub_10021C10C(v65, v66, v67, v68, *v74, *(v74 + 8), *(v74 + 16), *(v74 + 24));
        return v31 & 1;
      }
    }

    else if (v9 == 7)
    {
      v32 = a2[9];
      v181 = a2[8];
      v182 = v32;
      v183 = a2[10];
      v184 = *(a2 + 176);
      v33 = a2[5];
      v177 = a2[4];
      v178 = v33;
      v34 = a2[7];
      v179 = a2[6];
      v180 = v34;
      v35 = a2[1];
      v173 = *a2;
      v174 = v35;
      v36 = a2[3];
      v175 = a2[2];
      v176 = v36;
      if (sub_10021D080(&v173) == 7)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v112 = a2[9];
      v181 = a2[8];
      v182 = v112;
      v183 = a2[10];
      v184 = *(a2 + 176);
      v113 = a2[5];
      v177 = a2[4];
      v178 = v113;
      v114 = a2[7];
      v179 = a2[6];
      v180 = v114;
      v115 = a2[1];
      v173 = *a2;
      v174 = v115;
      v116 = a2[3];
      v175 = a2[2];
      v176 = v116;
      if (sub_10021D080(&v173) == 8)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_64;
  }

  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v75 = UInt32.init(_:)(v185);
      v158 = v75[7];
      v159 = v75[8];
      v160 = v75[9];
      v161 = v75[10];
      *&v154[32] = v75[3];
      v155 = v75[4];
      v156 = v75[5];
      v157 = v75[6];
      v153 = *v75;
      *v154 = v75[1];
      *&v154[16] = v75[2];
      v184 = *(a2 + 176);
      v76 = a2[10];
      v182 = a2[9];
      v183 = v76;
      v77 = a2[8];
      v180 = a2[7];
      v181 = v77;
      v78 = a2[6];
      v178 = a2[5];
      v179 = v78;
      v79 = a2[4];
      v176 = a2[3];
      v177 = v79;
      v80 = a2[2];
      v174 = a2[1];
      v175 = v80;
      v173 = *a2;
      if (sub_10021D080(&v173) == 3)
      {
        v81 = UInt32.init(_:)(&v173);
        *&v169[32] = v81[7];
        v170 = v81[8];
        v171 = v81[9];
        v172 = v81[10];
        *&v167[32] = v81[3];
        v168 = v81[4];
        *v169 = v81[5];
        *&v169[16] = v81[6];
        v166 = *v81;
        *v167 = v81[1];
        *&v167[16] = v81[2];
        v31 = static ServerID.__derived_struct_equals(_:_:)(&v153, &v166);
        return v31 & 1;
      }
    }

    else if (v9 == 4)
    {
      v37 = UInt32.init(_:)(v185);
      v190 = *v37;
      v38 = *(v37 + 16);
      v39 = *(v37 + 40);
      v187 = *(v37 + 24);
      v188 = v39;
      v189 = *(v37 + 56);
      v40 = a2[9];
      v181 = a2[8];
      v182 = v40;
      v183 = a2[10];
      v184 = *(a2 + 176);
      v41 = a2[5];
      v177 = a2[4];
      v178 = v41;
      v42 = a2[7];
      v179 = a2[6];
      v180 = v42;
      v43 = a2[3];
      v175 = a2[2];
      v176 = v43;
      v44 = a2[1];
      v173 = *a2;
      v174 = v44;
      if (sub_10021D080(&v173) == 4)
      {
        v45 = UInt32.init(_:)(&v173);
        v165 = *v45;
        v46 = *(v45 + 16);
        v47 = *(v45 + 40);
        v162 = *(v45 + 24);
        v163 = v47;
        v164 = *(v45 + 56);
        if (v38)
        {
          if (v46)
          {
            v151 = v165;
            *v152 = v46;
            *&v152[8] = v162;
            *&v152[24] = v163;
            *&v152[40] = v164;
            v166 = v165;
            *v167 = *v152;
            *&v167[16] = *&v152[16];
            *&v167[32] = *&v152[32];
            v148 = v190;
            v150 = v189;
            *&v149[24] = v188;
            *&v149[8] = v187;
            *v149 = v38;
            sub_1002204DC(a1, &v153);
            sub_1002204DC(a2, &v153);
            v48 = static PushRegistrationInfo.__derived_struct_equals(_:_:)(&v148, &v166);
            sub_100025F40(&v151, &qword_1005D5298, &unk_1004E7590);
            v153 = v190;
            *&v154[8] = v187;
            *&v154[24] = v188;
            *v154 = v38;
            *&v154[40] = v189;
            sub_100025F40(&v153, &qword_1005D5298, &unk_1004E7590);
            v31 = v48;
            return v31 & 1;
          }
        }

        else if (!v46)
        {
          v166 = v190;
          *&v167[8] = v187;
          *&v167[24] = v188;
          *v167 = 0;
          *&v167[40] = v189;
          sub_1002204DC(a1, &v153);
          sub_1002204DC(a2, &v153);
          sub_100025F40(&v166, &qword_1005D5298, &unk_1004E7590);
          v31 = 1;
          return v31 & 1;
        }

        v166 = v190;
        *&v167[8] = v187;
        *&v167[24] = v188;
        v168 = v165;
        *&v169[24] = v163;
        *v167 = v38;
        *&v167[40] = v189;
        *v169 = v46;
        *&v169[40] = v164;
        *&v169[8] = v162;
        sub_1002204DC(a1, &v153);
        sub_1002204DC(a2, &v153);
        sub_100025F40(&v166, &qword_1005D52B0, &unk_1004E8A70);
      }
    }

    else
    {
      v117 = UInt32.init(_:)(v185);
      v118 = *v117;
      v119 = *(v117 + 8);
      v120 = *(v117 + 16);
      v121 = *(v117 + 24);
      v122 = a2[9];
      v181 = a2[8];
      v182 = v122;
      v183 = a2[10];
      v184 = *(a2 + 176);
      v123 = a2[5];
      v177 = a2[4];
      v178 = v123;
      v124 = a2[7];
      v179 = a2[6];
      v180 = v124;
      v125 = a2[1];
      v173 = *a2;
      v174 = v125;
      v126 = a2[3];
      v175 = a2[2];
      v176 = v126;
      if (sub_10021D080(&v173) == 5)
      {
        v127 = UInt32.init(_:)(&v173);
        v31 = static PushRegistrationResponse.__derived_struct_equals(_:_:)(v118, v119, v120, v121, *v127, *(v127 + 8), *(v127 + 16), *(v127 + 24));
        return v31 & 1;
      }
    }

    goto LABEL_64;
  }

  if (!v9)
  {
    v54 = UInt32.init(_:)(v185);
    v55 = *v54;
    v56 = v54[1];
    v57 = v54[3];
    v58 = a2[9];
    v181 = a2[8];
    v182 = v58;
    v183 = a2[10];
    v184 = *(a2 + 176);
    v59 = a2[5];
    v177 = a2[4];
    v178 = v59;
    v60 = a2[7];
    v179 = a2[6];
    v180 = v60;
    v61 = a2[1];
    v173 = *a2;
    v174 = v61;
    v62 = a2[3];
    v175 = a2[2];
    v176 = v62;
    if (sub_10021D080(&v173))
    {
      goto LABEL_64;
    }

    v63 = *(UInt32.init(_:)(&v173) + 0x18);
    if ((static ResponseText.__derived_struct_equals(_:_:)(v55, v56) & 1) == 0)
    {
      goto LABEL_64;
    }

    if (v57)
    {
      if (!v63 || (sub_1001CE84C(v57, v63) & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_55;
    }

    if (!v63)
    {
      goto LABEL_55;
    }

LABEL_64:
    v31 = 0;
    return v31 & 1;
  }

  if (v9 != 1)
  {
    v87 = UInt32.init(_:)(v185);
    v89 = *v87;
    v88 = v87[1];
    v145 = v87[2];
    v147 = v87[3];
    v90 = v87[4];
    v91 = v87[5];
    v92 = v87[6];
    v93 = v87[7];
    v95 = v87[8];
    v94 = v87[9];
    v141 = v87[10];
    v139 = v87[11];
    v143 = v87[12];
    v96 = a2[9];
    v181 = a2[8];
    v182 = v96;
    v183 = a2[10];
    v184 = *(a2 + 176);
    v97 = a2[7];
    v179 = a2[6];
    v180 = v97;
    v98 = a2[5];
    v177 = a2[4];
    v178 = v98;
    v99 = a2[3];
    v175 = a2[2];
    v176 = v99;
    v100 = a2[1];
    v173 = *a2;
    v174 = v100;
    if (sub_10021D080(&v173) == 2)
    {
      v101 = UInt32.init(_:)(&v173);
      v102 = *v101;
      v103 = *(v101 + 8);
      v104 = *(v101 + 16);
      v105 = *(v101 + 24);
      v106 = *(v101 + 56);
      v107 = *(v101 + 80);
      v108 = *(v101 + 96);
      if ((v93 & 0x1000000000000000) != 0)
      {
        v133 = *(v101 + 40);
        v134 = *(v101 + 64);
        *&v166 = v89;
        *(&v166 + 1) = v88;
        *v167 = v145;
        *&v167[8] = v147;
        *&v167[16] = v90;
        *&v167[24] = v91;
        *&v167[32] = v92;
        *&v167[40] = v93 & 0xEFFFFFFFFFFFFFFFLL;
        *&v168 = v95;
        *(&v168 + 1) = v94;
        if ((v106 & 0x1000000000000000) == 0)
        {
          goto LABEL_64;
        }

        v109 = v107;
        v110 = v108;
        *&v153 = v102;
        *(&v153 + 1) = v103;
        *&v154[8] = v105;
        *&v154[24] = v133;
        *v154 = v104;
        *&v154[40] = v106 & 0xEFFFFFFFFFFFFFFFLL;
        v155 = v134;
        if ((sub_1001EFF14(&v166, &v153) & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if ((v106 & 0x1000000000000000) != 0)
        {
          goto LABEL_64;
        }

        v109 = *(v101 + 80);
        v110 = *(v101 + 96);
        if (v89 != v102 || v88 != v103)
        {
          v137 = *(v101 + 24);
          v111 = sub_1004A6D34();
          *&v105 = v137;
          if ((v111 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        if ((v145 != v104 || v147 != v105) && (sub_1004A6D34() & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      if (v143)
      {
        if (!v110)
        {
          goto LABEL_64;
        }

        sub_1000110B0(v109);

        v135 = static ResponseText.__derived_struct_equals(_:_:)(v141, v139);
        sub_10001114C(v109);

        if ((v135 & 1) == 0)
        {
          goto LABEL_64;
        }

LABEL_55:
        v31 = 1;
        return v31 & 1;
      }

      if (!v110)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_64;
  }

  v10 = UInt32.init(_:)(v185);
  v11 = *v10;
  v144 = *(v10 + 8);
  v146 = *(v10 + 24);
  v12 = *(v10 + 40);
  v13 = *(v10 + 48);
  v14 = a2[3];
  v175 = a2[2];
  v176 = v14;
  v15 = a2[7];
  v179 = a2[6];
  v180 = v15;
  v16 = a2[5];
  v177 = a2[4];
  v178 = v16;
  v184 = *(a2 + 176);
  v17 = a2[10];
  v182 = a2[9];
  v183 = v17;
  v181 = a2[8];
  v18 = a2[1];
  v173 = *a2;
  v174 = v18;
  if (sub_10021D080(&v173) != 1)
  {
    goto LABEL_64;
  }

  v19 = UInt32.init(_:)(&v173);
  v20 = *v19;
  v21 = *(v11 + 16);
  if (v21 != *(*v19 + 16))
  {
    goto LABEL_64;
  }

  v140 = *(v19 + 24);
  v142 = *(v19 + 8);
  v138 = *(v19 + 40);
  if (v21 && v11 != v20)
  {
    v22 = (v11 + 32);
    v23 = (v20 + 32);
    do
    {
      v166 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v26 = v22[4];
      *&v167[32] = v22[3];
      v168 = v26;
      *v167 = v24;
      *&v167[16] = v25;
      v153 = *v23;
      v27 = v23[1];
      v28 = v23[2];
      v29 = v23[4];
      *&v154[32] = v23[3];
      v155 = v29;
      *v154 = v27;
      *&v154[16] = v28;
      sub_1001F0C7C(&v166, &v148);
      sub_1001F0C7C(&v153, &v148);
      v30 = static Credentials.__derived_enum_equals(_:_:)(&v166, &v153);
      sub_1001F0CD8(&v153);
      sub_1001F0CD8(&v166);
      if ((v30 & 1) == 0)
      {
        goto LABEL_64;
      }

      v22 += 5;
      v23 += 5;
    }

    while (--v21);
  }

  v151 = v144;
  *v152 = v146;
  *&v152[16] = v12;
  *&v152[24] = v13;
  v148 = v142;
  *v149 = v140;
  *&v149[16] = v138;
  v31 = sub_1001C2230(&v151, &v148);
  return v31 & 1;
}

uint64_t sub_10021DB74(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 32 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10021DBD0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10021DC08(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_10021DC08(uint64_t result, uint64_t a2, uint64_t a3)
{
  v26 = result;
  v25 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v28 = a2 + 32;
  v33 = a3 + 56;
  v27 = v4;
  while (2)
  {
    if (v3 == v4)
    {
      return 0;
    }

    v5 = v3;
    while (1)
    {
      if (v5 >= v4)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_31;
      }

      v29 = v5 + 1;
      v6 = (v28 + 32 * v5);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = *(v6 + 24);
      sub_1004A6E94();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v32 = v10;
      v31 = v9;
      if (v10)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1004A6EC4(1u);
        sub_1004A6EF4(v9 >> 14);
      }

      v11 = sub_1004A6F14();
      v12 = -1 << *(a3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v33 + 8 * (v13 >> 6))) == 0)
      {
LABEL_4:

        goto LABEL_5;
      }

      v16 = ~v12;
      v17 = *(a3 + 48);
      while (1)
      {
        v19 = v17 + 32 * v13;
        v20 = *(v19 + 16);
        v21 = *(v19 + 24);
        v22 = *v19 == v8 && *(v19 + 8) == v7;
        if (!v22 && (sub_1004A6D34() & 1) == 0)
        {
          goto LABEL_16;
        }

        if ((v21 & 1) == 0)
        {
          break;
        }

        if (v32)
        {
          goto LABEL_24;
        }

LABEL_16:
        v13 = (v13 + 1) & v16;
        v14 = v13 >> 6;
        v15 = 1 << v13;
        if ((*(v33 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_4;
        }
      }

      v18 = v32;
      if (((v20 ^ v31) & 0xFFFFFFFFFFFFC000) != 0)
      {
        v18 = 1;
      }

      if (v18)
      {
        goto LABEL_16;
      }

LABEL_24:

      v23 = *(v26 + 8 * v14);
      *(v26 + 8 * v14) = v23 | v15;
      if ((v23 & v15) == 0)
      {
        break;
      }

LABEL_5:
      v5 = v29;
      v4 = v27;
      if (v29 == v27)
      {
        return 0;
      }
    }

    v24 = v25 + 1;
    v3 = v29;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_32;
    }

    ++v25;
    v22 = v24 == *(a3 + 16);
    v4 = v27;
    result = 1;
    if (!v22)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_10021DE50()
{

  return _swift_deallocObject(v0, 128, 7);
}

unint64_t sub_10021DEB0(uint64_t a1, NSObject *a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t), uint64_t a5)
{
  v261 = a5;
  v262 = a4;
  v285 = a3;
  v282 = a2;
  v281 = type metadata accessor for UnauthenticatedState(0);
  __chkstk_darwin(v281);
  v277 = &v258 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = _s6LoggerVMa(0);
  __chkstk_darwin(v278);
  v273 = &v258 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v274 = &v258 - v9;
  __chkstk_darwin(v10);
  v280 = &v258 - v11;
  __chkstk_darwin(v12);
  v279 = &v258 - v13;
  __chkstk_darwin(v14);
  v16 = &v258 - v15;
  __chkstk_darwin(v17);
  v19 = &v258 - v18;
  __chkstk_darwin(v20);
  v263 = &v258 - v21;
  __chkstk_darwin(v22);
  v264 = &v258 - v23;
  __chkstk_darwin(v24);
  v259 = &v258 - v25;
  __chkstk_darwin(v26);
  v260 = &v258 - v27;
  __chkstk_darwin(v28);
  v268 = &v258 - v29;
  __chkstk_darwin(v30);
  v270 = &v258 - v31;
  __chkstk_darwin(v32);
  v267 = &v258 - v33;
  __chkstk_darwin(v34);
  v269 = &v258 - v35;
  __chkstk_darwin(v36);
  v265 = &v258 - v37;
  __chkstk_darwin(v38);
  v266 = &v258 - v39;
  __chkstk_darwin(v40);
  v275 = &v258 - v41;
  __chkstk_darwin(v42);
  v276 = &v258 - v43;
  v44 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v44);
  v271 = &v258 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v48 = (&v258 - v47);
  __chkstk_darwin(v49);
  v51 = (&v258 - v50);
  __chkstk_darwin(v52);
  v54 = (&v258 - v53);
  __chkstk_darwin(v55);
  v57 = (&v258 - v56);
  v58 = sub_10000C9C0(&qword_1005D52A8, &unk_1004E75B0);
  __chkstk_darwin(v58 - 8);
  v60 = &v258 - v59;
  v62 = *(v61 + 56);
  v272 = a1;
  sub_1002201C8(a1, &v258 - v59, type metadata accessor for UntaggedResponse);
  v283 = v62;
  sub_1002201C8(v285, &v60[v62], type metadata accessor for UnauthenticatedState);
  v284 = v60;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v64 = v284;
        if (EnumCaseMultiPayload == 4)
        {
          sub_1002201C8(v284, v48, type metadata accessor for UntaggedResponse);
          v66 = *v48;
          v65 = v48[1];
          v67 = v48[2];
          v68 = v282;
          v69 = v276;
          sub_1002201C8(v282, v276, _s6LoggerVMa);
          v70 = v275;
          sub_1002201C8(v68, v275, _s6LoggerVMa);
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          variable initialization expression of Engine.isProcessingUpdates();
          sub_1000110B0(v66);

          v71 = sub_1004A4A54();
          v72 = sub_1004A6014();
          sub_10001114C(v66);

          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v282 = swift_slowAlloc();
            *&v286 = v282;
            *v73 = 68158466;
            *(v73 + 4) = 2;
            *(v73 + 8) = 256;
            v74 = v70;
            v75 = v278;
            v76 = *(v74 + *(v278 + 20));
            sub_100220230(v74, _s6LoggerVMa);
            *(v73 + 10) = v76;
            *(v73 + 11) = 2082;
            v77 = v69;
            v78 = *(v69 + *(v75 + 20) + 4);
            sub_100220230(v77, _s6LoggerVMa);
            v79 = ConnectionID.debugDescription.getter(v78);
            v81 = sub_10015BA6C(v79, v80, &v286);

            *(v73 + 13) = v81;
            *(v73 + 21) = 2082;
            v82 = ResponseText.debugDescription.getter(v66, v65, v67);
            v84 = sub_10015BA6C(v82, v83, &v286);

            *(v73 + 23) = v84;
            _os_log_impl(&_mh_execute_header, v71, v72, "[%.*hhx-%{public}s] Server sent BYE: %{public}s", v73, 0x1Fu);
            swift_arrayDestroy();
            v64 = v284;
          }

          else
          {
            sub_100220230(v70, _s6LoggerVMa);

            sub_100220230(v69, _s6LoggerVMa);
          }

          v163 = v277;
          v164 = v285;
          sub_100220160(v285, v277, type metadata accessor for UnauthenticatedState);
          if (swift_getEnumCaseMultiPayload() != 15)
          {
            sub_100220230(v163, type metadata accessor for UnauthenticatedState);
          }

          v165 = sub_10018E934(v66, v65, v67);
          if (v167 == 4)
          {
            v165 = 0;
            v166 = 0;
            v167 = 0;
            v168 = -64;
          }

          else
          {
            v168 = 0;
          }

          *v164 = v165;
          *(v164 + 8) = v166;
          *(v164 + 16) = v167;
          *(v164 + 24) = v168;
          swift_storeEnumTagMultiPayload();
          goto LABEL_43;
        }

LABEL_71:
        v222 = v282;
        v223 = v274;
        sub_1002201C8(v282, v274, _s6LoggerVMa);
        v224 = v273;
        sub_1002201C8(v222, v273, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v225 = v271;
        sub_1002201C8(v272, v271, type metadata accessor for UntaggedResponse);
        v226 = sub_1004A4A54();
        v227 = sub_1004A6014();
        if (os_log_type_enabled(v226, v227))
        {
          v228 = swift_slowAlloc();
          v285 = swift_slowAlloc();
          *&v286 = v285;
          *v228 = 68158466;
          *(v228 + 4) = 2;
          *(v228 + 8) = 256;
          v229 = v278;
          v230 = *(v224 + *(v278 + 20));
          sub_100220230(v224, _s6LoggerVMa);
          *(v228 + 10) = v230;
          *(v228 + 11) = 2082;
          v231 = *(v223 + *(v229 + 20) + 4);
          sub_100220230(v223, _s6LoggerVMa);
          v232 = ConnectionID.debugDescription.getter(v231);
          v234 = sub_10015BA6C(v232, v233, &v286);

          *(v228 + 13) = v234;
          *(v228 + 21) = 2080;
          v235 = UntaggedResponse.name.getter();
          v237 = v236;
          sub_100220230(v225, type metadata accessor for UntaggedResponse);
          v238 = sub_10015BA6C(v235, v237, &v286);

          *(v228 + 23) = v238;
          _os_log_impl(&_mh_execute_header, v226, v227, "[%.*hhx-%{public}s] Ignoring unexpected %s.", v228, 0x1Fu);
          swift_arrayDestroy();
        }

        else
        {
          sub_100220230(v224, _s6LoggerVMa);

          sub_100220230(v225, type metadata accessor for UntaggedResponse);
          sub_100220230(v223, _s6LoggerVMa);
        }

        sub_100025F40(v64, &qword_1005D52A8, &unk_1004E75B0);
        return 0xFFFFFFFF00000000;
      }

      v112 = v285;
      sub_100220230(v285, type metadata accessor for UnauthenticatedState);
      sub_1002201C8(v284, v57, type metadata accessor for UntaggedResponse);
      v113 = *v57;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        sub_10001114C(v113);

        v172 = v282;
        v173 = v269;
        sub_1002201C8(v282, v269, _s6LoggerVMa);
        v174 = v267;
        sub_1002201C8(v172, v267, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v175 = sub_1004A4A54();
        v176 = sub_1004A6014();
        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          *&v286 = v178;
          *v177 = 68158210;
          *(v177 + 4) = 2;
          *(v177 + 8) = 256;
          v179 = v278;
          v180 = *(v174 + *(v278 + 20));
          sub_100220230(v174, _s6LoggerVMa);
          *(v177 + 10) = v180;
          *(v177 + 11) = 2082;
          v181 = *(v173 + *(v179 + 20) + 4);
          sub_100220230(v173, _s6LoggerVMa);
          v182 = ConnectionID.debugDescription.getter(v181);
          v184 = sub_10015BA6C(v182, v183, &v286);

          *(v177 + 13) = v184;
          _os_log_impl(&_mh_execute_header, v175, v176, "[%.*hhx-%{public}s] Received unexpected PREAUTH greeting from server.", v177, 0x15u);
          sub_1000197E0(v178);
        }

        else
        {
          sub_100220230(v174, _s6LoggerVMa);

          sub_100220230(v173, _s6LoggerVMa);
        }

        v202 = v283;
        v201 = v284;
        *(v112 + 8) = 0;
        *(v112 + 16) = 0;
        *v112 = 3;
        *(v112 + 24) = -64;
        swift_storeEnumTagMultiPayload();
        sub_100220230(v201 + v202, type metadata accessor for UnauthenticatedState);
        v170 = v201;
        goto LABEL_46;
      }

      v114 = v282;
      v115 = v266;
      sub_1002201C8(v282, v266, _s6LoggerVMa);
      v116 = v265;
      sub_1002201C8(v114, v265, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v117 = sub_1004A4A54();
      v118 = sub_1004A6004();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *&v286 = v120;
        *v119 = 68158210;
        *(v119 + 4) = 2;
        *(v119 + 8) = 256;
        v121 = v278;
        v122 = v116;
        v123 = *(v116 + *(v278 + 20));
        sub_100220230(v122, _s6LoggerVMa);
        *(v119 + 10) = v123;
        *(v119 + 11) = 2082;
        v124 = v115;
        v125 = *(v115 + *(v121 + 20) + 4);
        v112 = v285;
        sub_100220230(v124, _s6LoggerVMa);
        v126 = ConnectionID.debugDescription.getter(v125);
        v128 = sub_10015BA6C(v126, v127, &v286);

        *(v119 + 13) = v128;
        _os_log_impl(&_mh_execute_header, v117, v118, "[%.*hhx-%{public}s] Received PREAUTH greeting from server. Requesting credentials.", v119, 0x15u);
        sub_1000197E0(v120);
      }

      else
      {
        sub_100220230(v116, _s6LoggerVMa);

        sub_100220230(v115, _s6LoggerVMa);
      }

      v199 = ~v113 & 0xF000000000000007;

      v200 = v284;
      if (v199)
      {
        if (((v113 >> 59) & 0x1E | (v113 >> 2) & 1) == 1)
        {
          v199 = *((v113 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

          sub_10001114C(v113);
        }

        else
        {
          sub_10001114C(v113);
          v199 = 0;
        }
      }

      *v112 = v199;
      swift_storeEnumTagMultiPayload();
      sub_100220230(v200, type metadata accessor for UntaggedResponse);
      return 0x8000000000000001;
    }

    else
    {
      v64 = v284;
      sub_1002201C8(v284, v54, type metadata accessor for UntaggedResponse);
      v88 = *v54;
      v89 = v54[2];
      v90 = v283;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        sub_10001114C(v88);

        v150 = v282;
        v151 = v270;
        sub_1002201C8(v282, v270, _s6LoggerVMa);
        v152 = v268;
        sub_1002201C8(v150, v268, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v153 = sub_1004A4A54();
        v154 = sub_1004A6004();
        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          *&v286 = v156;
          *v155 = 68158210;
          *(v155 + 4) = 2;
          *(v155 + 8) = 256;
          v157 = v278;
          v158 = *(v152 + *(v278 + 20));
          sub_100220230(v152, _s6LoggerVMa);
          *(v155 + 10) = v158;
          *(v155 + 11) = 2082;
          v159 = *(v151 + *(v157 + 20) + 4);
          sub_100220230(v151, _s6LoggerVMa);
          v160 = ConnectionID.debugDescription.getter(v159);
          v162 = sub_10015BA6C(v160, v161, &v286);
          v90 = v283;

          *(v155 + 13) = v162;
          _os_log_impl(&_mh_execute_header, v153, v154, "[%.*hhx-%{public}s] Untagged OK from server.", v155, 0x15u);
          sub_1000197E0(v156);
        }

        else
        {
          sub_100220230(v152, _s6LoggerVMa);

          sub_100220230(v151, _s6LoggerVMa);
        }

        v169 = v64 + v90;
        goto LABEL_44;
      }

      v91 = v282;
      if ((~v88 & 0xF000000000000007) == 0 || ((v88 >> 59) & 0x1E | (v88 >> 2) & 1) != 1)
      {
        sub_100220230(v285, type metadata accessor for UnauthenticatedState);
        v185 = v264;
        sub_1002201C8(v91, v264, _s6LoggerVMa);
        v186 = v263;
        sub_1002201C8(v91, v263, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v187 = sub_1004A4A54();
        v188 = sub_1004A6004();
        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          v283 = v88;
          v191 = v190;
          *&v286 = v190;
          *v189 = 68158210;
          *(v189 + 4) = 2;
          *(v189 + 8) = 256;
          v282 = v89;
          v192 = v278;
          v193 = v186;
          v194 = *(v186 + *(v278 + 20));
          sub_100220230(v193, _s6LoggerVMa);
          *(v189 + 10) = v194;
          *(v189 + 11) = 2082;
          v195 = *(v185 + *(v192 + 20) + 4);
          sub_100220230(v185, _s6LoggerVMa);
          v196 = ConnectionID.debugDescription.getter(v195);
          v198 = sub_10015BA6C(v196, v197, &v286);

          *(v189 + 13) = v198;
          _os_log_impl(&_mh_execute_header, v187, v188, "[%.*hhx-%{public}s] Received OK greeting from server.", v189, 0x15u);
          sub_1000197E0(v191);

          sub_10001114C(v283);
        }

        else
        {
          sub_100220230(v186, _s6LoggerVMa);
          sub_10001114C(v88);

          sub_100220230(v185, _s6LoggerVMa);
        }

        swift_storeEnumTagMultiPayload();
        goto LABEL_45;
      }

      v92 = *((v88 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v93 = v260;
      sub_1002201C8(v282, v260, _s6LoggerVMa);
      v94 = v259;
      sub_1002201C8(v91, v259, _s6LoggerVMa);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v95 = sub_1004A4A54();
      v96 = sub_1004A6004();

      if (os_log_type_enabled(v95, v96))
      {
        LODWORD(v279) = v96;
        v281 = v95;
        v97 = swift_slowAlloc();
        v277 = swift_slowAlloc();
        *&v286 = v277;
        *v97 = 68158466;
        *(v97 + 4) = 2;
        *(v97 + 8) = 256;
        v98 = v278;
        v99 = *(v94 + *(v278 + 20));
        sub_100220230(v94, _s6LoggerVMa);
        *(v97 + 10) = v99;
        *(v97 + 11) = 2082;
        v100 = *(v93 + *(v98 + 20) + 4);
        sub_100220230(v93, _s6LoggerVMa);
        v101 = ConnectionID.debugDescription.getter(v100);
        v103 = sub_10015BA6C(v101, v102, &v286);

        *(v97 + 13) = v103;
        v280 = v97;
        *(v97 + 21) = 2080;
        v104 = *(v92 + 16);
        v105 = _swiftEmptyArrayStorage;
        v283 = v92;
        if (v104)
        {
          *&v292 = _swiftEmptyArrayStorage;
          sub_100091A08(0, v104, 0);
          v105 = v292;
          v106 = (v92 + 40);
          do
          {
            v107 = *(v106 - 1);
            v108 = *v106;
            *&v292 = v105;
            v110 = v105[2];
            v109 = v105[3];

            if (v110 >= v109 >> 1)
            {
              sub_100091A08((v109 > 1), v110 + 1, 1);
              v105 = v292;
            }

            v105[2] = v110 + 1;
            v111 = &v105[2 * v110];
            v111[4] = v107;
            v111[5] = v108;
            v106 += 4;
            --v104;
          }

          while (v104);
        }

        *&v292 = v105;
        sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
        sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
        v241 = sub_1004A5614();
        v243 = v242;

        v244 = sub_10015BA6C(v241, v243, &v286);

        v245 = v280;
        *(v280 + 23) = v244;
        v246 = v281;
        _os_log_impl(&_mh_execute_header, v281, v279, "[%.*hhx-%{public}s] Received OK greeting with capabilities from server: %s.", v245, 0x1Fu);
        swift_arrayDestroy();

        v64 = v284;
        v91 = v282;
        v92 = v283;
      }

      else
      {
        sub_100220230(v94, _s6LoggerVMa);

        v240 = sub_100220230(v93, _s6LoggerVMa);
      }

      v262(&v286, v240);
      v247 = sub_100216684(v92, &v286, v91);
      v292 = v286;
      v293 = v287;
      sub_100220290(&v292);
      v290 = v288;
      v291 = v289;
      sub_1001CDB14(&v290);

      sub_10001114C(v88);

      sub_100220230(v64, type metadata accessor for UntaggedResponse);
      return v247;
    }
  }

  v85 = v16;
  v86 = v279;
  v87 = v280;
  v64 = v284;
  if ((EnumCaseMultiPayload - 21) < 2)
  {
LABEL_43:
    v169 = v64 + v283;
LABEL_44:
    sub_100220230(v169, type metadata accessor for UnauthenticatedState);
LABEL_45:
    v170 = v64;
LABEL_46:
    sub_100220230(v170, type metadata accessor for UntaggedResponse);
    return 0xFFFFFFFF00000000;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_71;
    }

    goto LABEL_43;
  }

  sub_1002201C8(v284, v51, type metadata accessor for UntaggedResponse);
  v129 = *v51;
  v130 = v283;
  v131 = swift_getEnumCaseMultiPayload();
  switch(v131)
  {
    case 2:

      v169 = v64 + v130;
      goto LABEL_44;
    case 12:
      v203 = v282;
      sub_1002201C8(v282, v19, _s6LoggerVMa);
      v204 = v85;
      sub_1002201C8(v203, v85, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v205 = sub_1004A4A54();
      v206 = sub_1004A6034();

      if (os_log_type_enabled(v205, v206))
      {
        LODWORD(v283) = v206;
        v207 = swift_slowAlloc();
        v281 = swift_slowAlloc();
        *&v286 = v281;
        *v207 = 68158466;
        *(v207 + 4) = 2;
        *(v207 + 8) = 256;
        v208 = v278;
        v209 = *(v204 + *(v278 + 20));
        sub_100220230(v204, _s6LoggerVMa);
        *(v207 + 10) = v209;
        *(v207 + 11) = 2082;
        v210 = *&v19[*(v208 + 20) + 4];
        sub_100220230(v19, _s6LoggerVMa);
        v211 = ConnectionID.debugDescription.getter(v210);
        v213 = sub_10015BA6C(v211, v212, &v286);

        *(v207 + 13) = v213;
        *(v207 + 21) = 2082;
        v214 = *(v129 + 16);
        v215 = _swiftEmptyArrayStorage;
        if (v214)
        {
          v280 = v205;
          *&v292 = _swiftEmptyArrayStorage;
          sub_100091A08(0, v214, 0);
          v215 = v292;
          v216 = (v129 + 40);
          do
          {
            v217 = *(v216 - 1);
            v218 = *v216;
            *&v292 = v215;
            v220 = v215[2];
            v219 = v215[3];

            if (v220 >= v219 >> 1)
            {
              sub_100091A08((v219 > 1), v220 + 1, 1);
              v215 = v292;
            }

            v215[2] = v220 + 1;
            v221 = &v215[2 * v220];
            v221[4] = v217;
            v221[5] = v218;
            v216 += 4;
            --v214;
          }

          while (v214);
          v205 = v280;
        }

        *&v292 = v215;
        sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
        sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
        v248 = sub_1004A5614();
        v250 = v249;

        v251 = sub_10015BA6C(v248, v250, &v286);

        *(v207 + 23) = v251;
        _os_log_impl(&_mh_execute_header, v205, v283, "[%.*hhx-%{public}s] Got pre-auth capabilities: %{public}s.", v207, 0x1Fu);
        swift_arrayDestroy();

        v64 = v284;
        v203 = v282;
      }

      else
      {
        sub_100220230(v85, _s6LoggerVMa);

        v239 = sub_100220230(v19, _s6LoggerVMa);
      }

      v262(&v286, v239);
      v252 = sub_100216684(v129, &v286, v203);
      v292 = v286;
      v293 = v287;
      sub_100220290(&v292);
      v290 = v288;
      v291 = v289;
      sub_1001CDB14(&v290);

      sub_100220230(v64, type metadata accessor for UntaggedResponse);
      return v252;
    case 15:
      v132 = v282;
      sub_1002201C8(v282, v86, _s6LoggerVMa);
      sub_1002201C8(v132, v87, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v133 = sub_1004A4A54();
      v134 = sub_1004A6034();

      if (os_log_type_enabled(v133, v134))
      {
        LODWORD(v283) = v134;
        v135 = swift_slowAlloc();
        v281 = swift_slowAlloc();
        *&v286 = v281;
        *v135 = 68158466;
        *(v135 + 4) = 2;
        *(v135 + 8) = 256;
        v136 = v278;
        v137 = *(v87 + *(v278 + 20));
        sub_100220230(v87, _s6LoggerVMa);
        *(v135 + 10) = v137;
        *(v135 + 11) = 2082;
        v138 = *(v86 + *(v136 + 20) + 4);
        sub_100220230(v86, _s6LoggerVMa);
        v139 = ConnectionID.debugDescription.getter(v138);
        v141 = sub_10015BA6C(v139, v140, &v286);

        *(v135 + 13) = v141;
        *(v135 + 21) = 2082;
        v142 = *(v129 + 16);
        v143 = _swiftEmptyArrayStorage;
        if (v142)
        {
          v280 = v133;
          *&v292 = _swiftEmptyArrayStorage;
          sub_100091A08(0, v142, 0);
          v143 = v292;
          v144 = (v129 + 40);
          do
          {
            v145 = *(v144 - 1);
            v146 = *v144;
            *&v292 = v143;
            v147 = v143[2];
            v148 = v143[3];

            if (v147 >= v148 >> 1)
            {
              sub_100091A08((v148 > 1), v147 + 1, 1);
              v143 = v292;
            }

            v143[2] = v147 + 1;
            v149 = &v143[2 * v147];
            v149[4] = v145;
            v149[5] = v146;
            v144 += 4;
            --v142;
          }

          while (v142);
          v133 = v280;
        }

        *&v292 = v143;
        sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
        sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
        v253 = sub_1004A5614();
        v255 = v254;

        v256 = sub_10015BA6C(v253, v255, &v286);

        *(v135 + 23) = v256;
        _os_log_impl(&_mh_execute_header, v133, v283, "[%.*hhx-%{public}s] Got post-auth capabilities: %{public}s.", v135, 0x1Fu);
        swift_arrayDestroy();

        v64 = v284;
        v132 = v282;
      }

      else
      {
        sub_100220230(v87, _s6LoggerVMa);

        sub_100220230(v86, _s6LoggerVMa);
      }

      v257 = sub_1002173C8(v129, v132);

      sub_100220230(v64, type metadata accessor for UntaggedResponse);
      return v257;
    default:

      goto LABEL_71;
  }
}

unint64_t sub_10021FE80(unint64_t a1, NSObject *a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UnauthenticatedState(0);
  __chkstk_darwin(v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0xFFFFFFFF00000000;
  if (((1 << (a1 >> 60)) & 0x1F5) == 0)
  {
    if (a1 >> 60 != 1)
    {
      v20 = swift_projectBox();
      sub_1002201C8(v20, v12, type metadata accessor for UntaggedResponse);
      v21 = sub_10021DEB0(v12, a2, a3, a4, a5);
      sub_100220230(v12, type metadata accessor for UntaggedResponse);
      return v21;
    }

    sub_100220160(a3, v15, type metadata accessor for UnauthenticatedState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 10)
    {
      if ((EnumCaseMultiPayload - 11) < 4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if ((EnumCaseMultiPayload - 3) < 8 || EnumCaseMultiPayload < 2)
      {
        sub_100220230(v15, type metadata accessor for UnauthenticatedState);
LABEL_12:
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *a3 = 1;
        *(a3 + 24) = -64;
LABEL_13:
        swift_storeEnumTagMultiPayload();
        return 0xFFFFFFFF00000000;
      }

      sub_100220230(v15, type metadata accessor for UnauthenticatedState);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    *(a3 + 24) = 0;
    goto LABEL_13;
  }

  return v16;
}

uint64_t sub_1002200E8()
{

  if (*(v0 + 104))
  {
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100220160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002201C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100220230(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002202C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002202D8(uint64_t a1)
{
  if ((*(a1 + 176) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 176) & 7;
  }
}

uint64_t sub_1002202F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 177))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 176);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10022033C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002203B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    LOBYTE(a2) = 7;
    *(result + 168) = 0;
  }

  *(result + 176) = a2;
  return result;
}

uint64_t sub_100220408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100220458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 >> 2) << 32;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t *sub_1002204A4(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_10022051C(uint64_t a1, unint64_t a2, char a3, void (*a4)(unint64_t, uint64_t, uint64_t, uint64_t, double), uint64_t a5, uint64_t a6)
{
  v8 = v7;
  sub_100193D28(a1, a2, a3 & 1);
  sub_100221F3C(v6, a1, a2, a3 & 1, &v38);
  if (!v7)
  {
    v53 = 0;
    v8 = v38;
    v24[8] = v47;
    v24[9] = v48;
    v24[10] = v49;
    v25 = v50;
    v24[4] = v43;
    v24[5] = v44;
    v24[6] = v45;
    v24[7] = v46;
    v24[0] = v39;
    v24[1] = v40;
    v24[2] = v41;
    v24[3] = v42;
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    if (sub_100222B94(&v26) != 1)
    {
      v22 = v8;
      v51[8] = v34;
      v51[9] = v35;
      v51[10] = v36;
      v52 = v37;
      v51[4] = v30;
      v51[5] = v31;
      v51[6] = v32;
      v51[7] = v33;
      v51[0] = v26;
      v51[1] = v27;
      v51[2] = v28;
      v51[3] = v29;
      type metadata accessor for UnauthenticatedStateWithTasks(0);
      v23 = sub_100218558(v51, a6);
      v14 = v23[2];
      if (v14)
      {
        v15 = (v23 + 7);
        do
        {
          v16 = *(v15 - 3);
          v17 = *(v15 - 2);
          v18 = *(v15 - 1);
          v19 = *v15;
          v20 = sub_1001AD7AC(v16, v17, v18, *v15);
          a4(v16, v17, v18, v19, v20);
          sub_1001AD7F8(v16, v17, v18, v19);
          v15 += 4;
          --v14;
        }

        while (v14);
      }

      sub_100025F40(v24, &qword_1005D5368, &unk_1004E8AD8);
      return v22;
    }
  }

  return v8;
}

uint64_t sub_100220760(unint64_t *a1, uint64_t a2)
{
  v128 = _s6LoggerVMa(0);
  __chkstk_darwin(v128);
  v6 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v114 - v8;
  __chkstk_darwin(v10);
  v124 = (&v114 - v11);
  __chkstk_darwin(v12);
  v117 = &v114 - v13;
  __chkstk_darwin(v14);
  v121 = (&v114 - v15);
  __chkstk_darwin(v16);
  v122 = &v114 - v17;
  __chkstk_darwin(v18);
  v123 = &v114 - v19;
  __chkstk_darwin(v20);
  v118 = &v114 - v21;
  __chkstk_darwin(v22);
  v119 = (&v114 - v23);
  __chkstk_darwin(v24);
  v120 = (&v114 - v25);
  __chkstk_darwin(v26);
  v28 = &v114 - v27;
  __chkstk_darwin(v29);
  v31 = &v114 - v30;
  v32 = type metadata accessor for UnauthenticatedState(0);
  __chkstk_darwin(v32);
  v34 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v2 + *(type metadata accessor for UnauthenticatedStateWithTasks(0) + 24);
  sub_100222C50(v126, v34, type metadata accessor for UnauthenticatedState);
  v127 = v32;
  LODWORD(v32) = swift_getEnumCaseMultiPayload();
  sub_100222CB8(v34, type metadata accessor for UnauthenticatedState);
  if (v32 == 14)
  {
    v125 = a2;
    v35 = *a1;
    v36 = a1[1];
    v37 = a1[2];
    v38 = *a1 >> 62;
    v39 = a1;
    if (v38)
    {
      if (v38 != 1)
      {
        v84 = v125;
        sub_100222C50(v125, v31, _s6LoggerVMa);
        sub_100222C50(v84, v28, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v85 = sub_1004A4A54();
        v86 = sub_1004A6024();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v129 = v88;
          *v87 = 68158210;
          *(v87 + 4) = 2;
          *(v87 + 8) = 256;
          v89 = v128;
          v90 = v28[*(v128 + 20)];
          sub_100222CB8(v28, _s6LoggerVMa);
          *(v87 + 10) = v90;
          *(v87 + 11) = 2082;
          v91 = *&v31[*(v89 + 20) + 4];
          sub_100222CB8(v31, _s6LoggerVMa);
          v92 = ConnectionID.debugDescription.getter(v91);
          v94 = sub_10015BA6C(v92, v93, &v129);

          *(v87 + 13) = v94;
          _os_log_impl(&_mh_execute_header, v85, v86, "[%.*hhx-%{public}s] We ran STARTTLS, but the connection is not using TLS.", v87, 0x15u);
          sub_1000197E0(v88);
        }

        else
        {
          sub_100222CB8(v28, _s6LoggerVMa);

          sub_100222CB8(v31, _s6LoggerVMa);
        }

        v100 = v126;
        sub_100222CB8(v126, type metadata accessor for UnauthenticatedState);
        v101 = 4;
        goto LABEL_41;
      }

      LODWORD(v123) = *a1;
      v40 = v125;
      v41 = v122;
      sub_100222C50(v125, v122, _s6LoggerVMa);
      v42 = v121;
      sub_100222C50(v40, v121, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1001CDA98(v35, v36, v37);
      sub_1001CDA98(v35, v36, v37);
      sub_1001CDA98(v35, v36, v37);

      v43 = sub_1004A4A54();
      v44 = sub_1004A6034();
      v120 = v43;
      if (os_log_type_enabled(v43, v44))
      {
        v115 = v35 >> 16;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v119 = v39;
        v116 = v46;
        v129 = v46;
        *v45 = 68158722;
        *(v45 + 4) = 2;
        *(v45 + 8) = 256;
        v47 = v128;
        v48 = *(v128 + 20);
        v118 = v36;
        v49 = *(&v42->isa + v48);
        sub_100222CB8(v42, _s6LoggerVMa);
        *(v45 + 10) = v49;
        *(v45 + 11) = 2082;
        v50 = v123;
        v51 = *(v41 + *(v47 + 20) + 4);
        sub_100222CB8(v41, _s6LoggerVMa);
        v52 = ConnectionID.debugDescription.getter(v51);
        v54 = sub_10015BA6C(v52, v53, &v129);

        *(v45 + 13) = v54;
        v36 = v118;
        *(v45 + 21) = 512;
        sub_1001CDB04(v35, v36, v37);
        *(v45 + 23) = v50;
        sub_1001CDB04(v35, v36, v37);
        *(v45 + 25) = 512;
        sub_1001CDB04(v35, v36, v37);
        *(v45 + 27) = v115;
        sub_1001CDB04(v35, v36, v37);
        v55 = v44;
        v56 = v120;
        _os_log_impl(&_mh_execute_header, v120, v55, "[%.*hhx-%{public}s] STARTTLS completed: %hu / %hu", v45, 0x1Du);
        sub_1000197E0(v116);
        v39 = v119;

        v40 = v125;
      }

      else
      {
        sub_1001CDB04(v35, v36, v37);
        sub_1001CDB04(v35, v36, v37);
        sub_100222CB8(v42, _s6LoggerVMa);
        sub_1001CDB04(v35, v36, v37);
        sub_1001CDB04(v35, v36, v37);

        sub_100222CB8(v41, _s6LoggerVMa);
      }

      v95 = *(v39 + 24);
      v96 = v39[5];
      v97 = v124;
      if (v96)
      {
        if (v96 != 1)
        {
          if (v95 == 1)
          {
            if (v123 != 772)
            {
              goto LABEL_36;
            }
          }

          else if ((v123 - 773) < 0xFFFFFFFE)
          {
LABEL_36:
            v98 = v40;
            v99 = v117;
            goto LABEL_37;
          }

          if (!v37 || (v39[4] != v36 || v96 != v37) && (sub_1004A6D34() & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else if (v95 == 1)
      {
        if (v123 != 772)
        {
          goto LABEL_36;
        }
      }

      else if ((v123 - 771) >= 2)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v40 = v125;
      v68 = v120;
      sub_100222C50(v125, v120, _s6LoggerVMa);
      v69 = v119;
      sub_100222C50(v40, v119, _s6LoggerVMa);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1001CDA98(v35, v36, v37);
      sub_1001CDA98(v35, v36, v37);
      sub_1001CDA98(v35, v36, v37);

      v70 = sub_1004A4A54();
      v71 = sub_1004A6034();
      if (os_log_type_enabled(v70, v71))
      {
        v122 = v35 >> 16;
        v72 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v129 = v124;
        *v72 = 68158722;
        *(v72 + 4) = 2;
        *(v72 + 8) = 256;
        v121 = v70;
        v73 = v128;
        v74 = *(v128 + 20);
        LODWORD(v117) = v71;
        v75 = v36;
        v76 = *(v69 + v74);
        sub_100222CB8(v69, _s6LoggerVMa);
        *(v72 + 10) = v76;
        *(v72 + 11) = 2082;
        v77 = v68;
        v78 = *(&v68->isa + *(v73 + 20) + 4);
        sub_100222CB8(v77, _s6LoggerVMa);
        v79 = ConnectionID.debugDescription.getter(v78);
        v81 = v39;
        v82 = sub_10015BA6C(v79, v80, &v129);

        *(v72 + 13) = v82;
        v39 = v81;
        *(v72 + 21) = 512;
        sub_1001CDB04(v35, v75, v37);
        *(v72 + 23) = v35;
        sub_1001CDB04(v35, v75, v37);
        *(v72 + 25) = 512;
        sub_1001CDB04(v35, v75, v37);
        *(v72 + 27) = v122;
        sub_1001CDB04(v35, v75, v37);
        v83 = v121;
        _os_log_impl(&_mh_execute_header, v121, v117, "[%.*hhx-%{public}s] Opportunistic STARTTLS completed: %hu / %hu", v72, 0x1Du);
        sub_1000197E0(v124);

        v40 = v125;
      }

      else
      {
        sub_1001CDB04(v35, v36, v37);
        sub_1001CDB04(v35, v36, v37);
        sub_100222CB8(v69, _s6LoggerVMa);
        sub_1001CDB04(v35, v36, v37);
        sub_1001CDB04(v35, v36, v37);

        sub_100222CB8(v68, _s6LoggerVMa);
      }

      v97 = v123;
      if (v39[5] != 1)
      {
        v98 = v40;
        v99 = v118;
LABEL_37:
        sub_100222C50(v98, v99, _s6LoggerVMa);
        sub_100222C50(v40, v97, _s6LoggerVMa);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v102 = sub_1004A4A54();
        v103 = sub_1004A6014();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v106 = v97;
          v107 = v105;
          v129 = v105;
          *v104 = 68158210;
          *(v104 + 4) = 2;
          *(v104 + 8) = 256;
          v108 = v128;
          v109 = *(v106 + *(v128 + 20));
          sub_100222CB8(v106, _s6LoggerVMa);
          *(v104 + 10) = v109;
          *(v104 + 11) = 2082;
          v110 = *(v99 + *(v108 + 20) + 4);
          sub_100222CB8(v99, _s6LoggerVMa);
          v111 = ConnectionID.debugDescription.getter(v110);
          v113 = sub_10015BA6C(v111, v112, &v129);

          *(v104 + 13) = v113;
          _os_log_impl(&_mh_execute_header, v102, v103, "[%.*hhx-%{public}s] We ran STARTTLS, but the connection is not secure.", v104, 0x15u);
          sub_1000197E0(v107);
        }

        else
        {
          sub_100222CB8(v97, _s6LoggerVMa);

          sub_100222CB8(v99, _s6LoggerVMa);
        }

        v100 = v126;
        sub_100222CB8(v126, type metadata accessor for UnauthenticatedState);
        v101 = 6;
LABEL_41:
        *(v100 + 8) = 0;
        *(v100 + 16) = 0;
        *v100 = v101;
        *(v100 + 24) = -64;
        return swift_storeEnumTagMultiPayload();
      }
    }

    sub_100222CB8(v126, type metadata accessor for UnauthenticatedState);
    return swift_storeEnumTagMultiPayload();
  }

  sub_100222C50(a2, v9, _s6LoggerVMa);
  sub_100222C50(a2, v6, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v57 = sub_1004A4A54();
  v58 = sub_1004A6024();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v129 = v60;
    *v59 = 68158210;
    *(v59 + 4) = 2;
    *(v59 + 8) = 256;
    v61 = v128;
    v62 = v6[*(v128 + 20)];
    sub_100222CB8(v6, _s6LoggerVMa);
    *(v59 + 10) = v62;
    *(v59 + 11) = 2082;
    v63 = *&v9[*(v61 + 20) + 4];
    sub_100222CB8(v9, _s6LoggerVMa);
    v64 = ConnectionID.debugDescription.getter(v63);
    v66 = sub_10015BA6C(v64, v65, &v129);

    *(v59 + 13) = v66;
    _os_log_impl(&_mh_execute_header, v57, v58, "[%.*hhx-%{public}s] Received did-start-TLS from network, but we’re in the wrong state.", v59, 0x15u);
    sub_1000197E0(v60);
  }

  else
  {
    sub_100222CB8(v6, _s6LoggerVMa);

    sub_100222CB8(v9, _s6LoggerVMa);
  }

  sub_100222D18();
  swift_allocError();
  return swift_willThrow();
}

void sub_10022161C(uint64_t a1, uint64_t (*a2)(_OWORD *), uint64_t a3)
{
  v4 = v3;
  v68 = a2;
  v69 = a3;
  v6 = _s6LoggerVMa(0);
  __chkstk_darwin(v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v63 - v10;
  __chkstk_darwin(v11);
  v13 = &v63 - v12;
  __chkstk_darwin(v14);
  v16 = &v63 - v15;
  sub_100222C50(a1, &v63 - v15, _s6LoggerVMa);
  sub_100222C50(a1, v13, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v64 = a1;
  v17 = sub_1004A4A54();
  v18 = sub_1004A6004();
  v19 = os_log_type_enabled(v17, v18);
  v66 = v8;
  v73 = v4;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v85[0] = v21;
    *v20 = 68158210;
    *(v20 + 4) = 2;
    *(v20 + 8) = 256;
    v22 = v13[*(v6 + 20)];
    sub_100222CB8(v13, _s6LoggerVMa);
    *(v20 + 10) = v22;
    v8 = v66;
    *(v20 + 11) = 2082;
    v23 = *&v16[*(v6 + 20) + 4];
    sub_100222CB8(v16, _s6LoggerVMa);
    v24 = ConnectionID.debugDescription.getter(v23);
    v26 = sub_10015BA6C(v24, v25, v85);

    *(v20 + 13) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%.*hhx-%{public}s] Checking for new actions.", v20, 0x15u);
    sub_1000197E0(v21);
    v4 = v73;
  }

  else
  {
    sub_100222CB8(v13, _s6LoggerVMa);

    sub_100222CB8(v16, _s6LoggerVMa);
  }

  v27 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  v28 = *(v27 + 24);
  v29 = *(v27 + 28);
  v70 = *v4;
  v71 = v28;
  v72 = v6;
  v67 = v29;
  while (1)
  {
    v30 = *(v4 + v29);
    v31 = v30[2];
    v74 = v30;
    if (v31)
    {
      v77 = _swiftEmptyArrayStorage;
      sub_1001D5FEC(0, v31, 0);
      v32 = v77;
      v33 = (v30 + 4);
      do
      {
        sub_100222B24(v33, v75);
        v34 = v76;
        sub_10002587C(v75 + 1, v76);
        v35 = (*(*(&v34 + 1) + 8))(v34, *(&v34 + 1));
        sub_100025F40(v75, &qword_1005D4AA0, &qword_1004E8AD0);
        v77 = v32;
        v37 = v32[2];
        v36 = v32[3];
        if (v37 >= v36 >> 1)
        {
          sub_1001D5FEC((v36 > 1), v37 + 1, 1);
          v32 = v77;
        }

        v32[2] = v37 + 1;
        *(v32 + v37 + 32) = v35;
        v33 += 48;
        --v31;
      }

      while (v31);
      v8 = v66;
    }

    else
    {
      v32 = _swiftEmptyArrayStorage;
    }

    sub_100222BFC();
    *&v75[0] = sub_1004A5D64();
    v38 = v32[2];
    v4 = v73;
    if (v38)
    {
      v39 = (v32 + 4);
      do
      {
        v40 = *v39++;
        sub_100201924(&v77, v40);
        --v38;
      }

      while (v38);
    }

    sub_100217DB4(*&v75[0], v70, &v78);

    v41 = v72;
    if (!v79)
    {
      sub_100025F40(&v78, &qword_1005D5388, &qword_1004E8AF0);
      return;
    }

    sub_1000B364C(&v78, v80);
    v42 = v81;
    v43 = v82;
    sub_100025928(v80, v81);
    (*(v43 + 16))(v83, v42, v43);
    if (v84 == 255)
    {
      sub_1000197E0(v80);
      return;
    }

    v85[0] = v83[0];
    v85[1] = v83[1];
    v85[2] = v83[2];
    v85[3] = v83[3];
    v86 = v84;
    v44 = v68(v85);
    if (v45)
    {
      break;
    }

    *&v75[0] = v44;
    sub_100104D00(v80, v75 + 8);
    v46 = v74;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_1001EBE88(0, v46[2] + 1, 1, v46);
    }

    v48 = v46[2];
    v47 = v46[3];
    if (v48 >= v47 >> 1)
    {
      v46 = sub_1001EBE88((v47 > 1), v48 + 1, 1, v46);
    }

    v46[2] = v48 + 1;
    v49 = &v46[6 * v48];
    v50 = v75[0];
    v51 = v76;
    v49[3] = v75[1];
    v49[4] = v51;
    v49[2] = v50;
    v29 = v67;
    *(v4 + v67) = v46;
    sub_1000197E0(v80);
    sub_100025F40(v83, &qword_1005D5390, &qword_1004E8AF8);
  }

  sub_100025F40(v83, &qword_1005D5390, &qword_1004E8AF8);
  sub_1000197E0(v80);
  v52 = v64;
  v53 = v65;
  sub_100222C50(v64, v65, _s6LoggerVMa);
  sub_100222C50(v52, v8, _s6LoggerVMa);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v54 = sub_1004A4A54();
  v55 = sub_1004A5FF4();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&v75[0] = v57;
    *v56 = 68158210;
    *(v56 + 4) = 2;
    *(v56 + 8) = 256;
    v58 = v8[*(v41 + 20)];
    sub_100222CB8(v8, _s6LoggerVMa);
    *(v56 + 10) = v58;
    *(v56 + 11) = 2082;
    v59 = *(v53 + *(v41 + 20) + 4);
    sub_100222CB8(v53, _s6LoggerVMa);
    v60 = ConnectionID.debugDescription.getter(v59);
    v62 = sub_10015BA6C(v60, v61, v75);

    *(v56 + 13) = v62;
    _os_log_impl(&_mh_execute_header, v54, v55, "[%.*hhx-%{public}s] No connection available to send command.", v56, 0x15u);
    sub_1000197E0(v57);
  }

  else
  {
    sub_100222CB8(v8, _s6LoggerVMa);

    sub_100222CB8(v53, _s6LoggerVMa);
  }
}

void *sub_100221D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10022248C(a5, &v32);
  if (!*(&v33 + 1))
  {
    sub_100025F40(&v32, &qword_1005D5388, &qword_1004E8AF0);
    return _swiftEmptyArrayStorage;
  }

  sub_1000B364C(&v32, v15);
  v11 = v16;
  v12 = v17;
  sub_10002587C(v15, v16);
  (*(v12 + 32))(v18, a1, a2, a3, a4, v11, v12);
  v28 = v18[8];
  v29 = v18[9];
  v30 = v18[10];
  v31 = v19;
  v24 = v18[4];
  v25 = v18[5];
  v26 = v18[6];
  v27 = v18[7];
  v20 = v18[0];
  v21 = v18[1];
  v22 = v18[2];
  v23 = v18[3];
  if (sub_100222B94(&v20) == 1)
  {
    sub_1000197E0(v15);
    return _swiftEmptyArrayStorage;
  }

  v40 = v28;
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  type metadata accessor for UnauthenticatedStateWithTasks(0);
  v14 = sub_100218558(&v32, a6);
  sub_100025F40(v18, &qword_1005D5368, &unk_1004E8AD8);
  sub_1000197E0(v15);
  return v14;
}

uint64_t sub_100221F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v37 = a4;
  v36 = a3;
  v38 = a2;
  v8 = sub_10000C9C0(&qword_1005D3008, &qword_1004DCCE0);
  __chkstk_darwin(v8 - 8);
  v34 = &v29 - v9;
  v35 = type metadata accessor for AuthenticationTask(0);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(type metadata accessor for UnauthenticatedStateWithTasks(0) + 28);
  v30 = a1;
  v11 = *(a1 + v29);
  v12 = v11[2];
  if (!v12)
  {
LABEL_14:
    sub_100222BA8();
    swift_allocError();
    swift_willThrow();
    return sub_10018E150(v38, v36, v37 & 1);
  }

  v13 = 0;
  v14 = 4;
  v15 = &qword_1004E8AD0;
  while (1)
  {
    if (v13 >= v11[2])
    {
      __break(1u);
      goto LABEL_16;
    }

    sub_100222B24(&v11[v14], &v39);
    v16 = *(v41 + 15);
    v5 = *(&v41[1] + 7);
    sub_10002587C(&v39 + 1, *(v41 + 15));
    a1 = (*(v5 + 8))(v16, v5);
    sub_100025F40(&v39, &qword_1005D4AA0, &qword_1004E8AD0);
    if (a1 == 2)
    {
      break;
    }

    ++v13;
    v14 += 6;
    if (v12 == v13)
    {
      goto LABEL_14;
    }
  }

  if (v13 >= v11[2])
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100222B24(&v11[v14], v47);
  sub_1000B364C(v48, v46);
  sub_1000B364C(v46, v45);
  sub_10000C9C0(&qword_1005D5370, &qword_1004E8AE8);
  v18 = v34;
  v17 = v35;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v33 + 56))(v18, 1, 1, v17);
    sub_100025F40(v18, &qword_1005D3008, &qword_1004DCCE0);
    goto LABEL_14;
  }

  (*(v33 + 56))(v18, 0, 1, v17);
  v19 = v18;
  v20 = v17;
  a1 = v32;
  sub_10019764C(v19, v32);
  v12 = v36;
  sub_100192CEC(v38, v36, v37 & 1, &v39);
  v5 = *(&v39 + 1);
  v34 = v39;
  LOBYTE(v15) = v40;
  *&v44[128] = v41[8];
  *&v44[144] = v41[9];
  *&v44[160] = v41[10];
  *&v44[176] = v42;
  *&v44[64] = v41[4];
  *&v44[80] = v41[5];
  *&v44[96] = v41[6];
  *&v44[112] = v41[7];
  *v44 = v41[0];
  *&v44[16] = v41[1];
  *&v44[32] = v41[2];
  *&v44[48] = v41[3];
  *&v43[135] = *&v44[135];
  *&v43[151] = *&v44[151];
  *&v43[167] = *&v44[167];
  v43[183] = HIBYTE(v42);
  *&v43[71] = *&v44[71];
  *&v43[87] = *&v44[87];
  *&v43[103] = *&v44[103];
  *&v43[119] = *&v44[119];
  *&v43[7] = *&v44[7];
  *&v43[23] = *&v44[23];
  *&v43[39] = *&v44[39];
  *&v43[55] = *&v44[55];
  if (v13 >= v11[2])
  {
    goto LABEL_17;
  }

  v6 = v11[v14];
  *(v41 + 7) = v20;
  *(v41 + 15) = &off_1005A4510;
  v21 = sub_1000B3774(&v39);
  sub_100222C50(a1, v21, type metadata accessor for AuthenticationTask);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

LABEL_18:
  v11 = sub_1001EDF60(v11);
LABEL_11:
  result = sub_100222CB8(a1, type metadata accessor for AuthenticationTask);
  if (v13 >= v11[2])
  {
    __break(1u);
  }

  else
  {
    v11[v14] = v6;
    sub_1000197E0(&v11[v14 + 1]);
    sub_1000B364C(&v39, &v11[v14 + 1]);
    result = sub_10018E150(v38, v12, v37 & 1);
    v23 = *&v43[144];
    v24 = v31;
    *(v31 + 145) = *&v43[128];
    *(v24 + 161) = v23;
    *(v24 + 177) = *&v43[160];
    v25 = *&v43[80];
    *(v24 + 81) = *&v43[64];
    *(v24 + 97) = v25;
    v26 = *&v43[112];
    *(v24 + 113) = *&v43[96];
    *(v24 + 129) = v26;
    v27 = *&v43[16];
    *(v24 + 17) = *v43;
    *(v24 + 33) = v27;
    v28 = *&v43[48];
    *(v24 + 49) = *&v43[32];
    *(v30 + v29) = v11;
    *v24 = v34;
    *(v24 + 8) = v5;
    *(v24 + 16) = v15;
    *(v24 + 193) = *&v43[176];
    *(v24 + 65) = v28;
  }

  return result;
}

uint64_t sub_10022248C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for UnauthenticatedStateWithTasks(0);
  v5 = *(v2 + *(result + 28));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_100222B24(v8, v13);
      v10 = v13[0];
      v9 = DWORD1(v13[0]);
      result = sub_100025F40(v13, &qword_1005D4AA0, &qword_1004E8AD0);
      if (v10 == a1 && v9 == HIDWORD(a1))
      {
        sub_1001EA844(v7, v13);
        return sub_1000B364C((v13 + 8), a2);
      }

      ++v7;
      v8 += 48;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

BOOL _s15IMAP2Connection29UnauthenticatedStateWithTasksV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  if ((sub_10021C42C((a1 + *(v4 + 24)), (a2 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(v6 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v29 = _swiftEmptyArrayStorage;
    sub_1001D5FAC(0, v7, 0);
    v8 = _swiftEmptyArrayStorage;
    v9 = v6 + 32;
    do
    {
      sub_100222B24(v9, &v25);
      *(&v22 + 1) = v26;
      v23 = v27;
      v24 = v28;
      v10 = v25;
      sub_1000197E0(&v22 + 1);
      v29 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_1001D5FAC((v11 > 1), v12 + 1, 1);
        v8 = v29;
      }

      v8[2] = (v12 + 1);
      v8[v12 + 4] = v10;
      v9 += 48;
      --v7;
    }

    while (v7);
    v5 = *(v4 + 28);
  }

  v13 = *(a2 + v5);
  v14 = *(v13 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v29 = _swiftEmptyArrayStorage;
    sub_1001D5FAC(0, v14, 0);
    v15 = v29;
    v16 = v13 + 32;
    do
    {
      sub_100222B24(v16, &v25);
      *(&v22 + 1) = v26;
      v23 = v27;
      v24 = v28;
      v17 = v25;
      sub_1000197E0(&v22 + 1);
      v29 = v15;
      v19 = v15[2];
      v18 = v15[3];
      if (v19 >= v18 >> 1)
      {
        sub_1001D5FAC((v18 > 1), v19 + 1, 1);
        v15 = v29;
      }

      v15[2] = (v19 + 1);
      v15[v19 + 4] = v17;
      v16 += 48;
      --v14;
    }

    while (v14);
  }

  v20 = sub_100102AF4(v8, v15);

  return (v20 & 1) != 0;
}

uint64_t sub_1002227BC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnauthenticatedState(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10022287C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnauthenticatedState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for UnauthenticatedStateWithTasks(uint64_t a1)
{
  result = qword_1005D5310;
  if (!qword_1005D5310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10022296C(uint64_t a1)
{
  sub_100222A10(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnauthenticatedState(319);
    if (v2 <= 0x3F)
    {
      sub_100222AC0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100222A10(uint64_t a1)
{
  if (!qword_1005D5320)
  {
    sub_100222A6C();
    v1 = sub_1004A5DC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D5320);
    }
  }
}

unint64_t sub_100222A6C()
{
  result = qword_1005D5328;
  if (!qword_1005D5328)
  {
    result = swift_getWitnessTable("ix\n", &type metadata for ConnectionTrait, v0, v1);
    atomic_store(result, &qword_1005D5328);
  }

  return result;
}

void sub_100222AC0(uint64_t a1)
{
  if (!qword_1005D5330)
  {
    sub_10000DEFC(&qword_1005D4AA0, &qword_1004E8AD0);
    v1 = sub_1004A5CD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D5330);
    }
  }
}

uint64_t sub_100222B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D4AA0, &qword_1004E8AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100222B94(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 > 7)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100222BA8()
{
  result = qword_1005D5378;
  if (!qword_1005D5378)
  {
    result = swift_getWitnessTable(aU_6, &type metadata for UnauthenticatedStateWithTasks.NoAuthenticationTaskRunning, v0, v1);
    atomic_store(result, &qword_1005D5378);
  }

  return result;
}

unint64_t sub_100222BFC()
{
  result = qword_1005D5380;
  if (!qword_1005D5380)
  {
    result = swift_getWitnessTable(byte_1004E6A28, &type metadata for TaskID, v0, v1);
    atomic_store(result, &qword_1005D5380);
  }

  return result;
}

uint64_t sub_100222C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100222CB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100222D18()
{
  result = qword_1005D5398;
  if (!qword_1005D5398)
  {
    result = swift_getWitnessTable(byte_1004E8B3C, &type metadata for UnauthenticatedStateWithTasks.UnexpectedDidStartTLS, v0, v1);
    atomic_store(result, &qword_1005D5398);
  }

  return result;
}

unint64_t sub_100222DA0()
{
  result = qword_1005D53A0;
  if (!qword_1005D53A0)
  {
    result = swift_getWitnessTable(byte_1004E8BC8, &_s10WorkaroundON, v0, v1);
    atomic_store(result, &qword_1005D53A0);
  }

  return result;
}

uint64_t sub_100222DF4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 17) ^ *(a2 + 17) ^ 1u;
}

Swift::Int64 sub_100222E4C(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 17);
  result = static MonotonicTime.now()();
  if ((v5 & 1) == 0 && v4 >= result)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    v6 = v2 != 1;
    v8 = __OFADD__(v3, 4);
    v3 += 4;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = 0;
  v8 = __OFADD__(v3++, 1);
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v3 <= 1000)
  {
    if (v3 >= 1)
    {
      goto LABEL_8;
    }

LABEL_14:
    v4 = 0;
    v11 = 1;
    goto LABEL_10;
  }

  v3 = 1000;
LABEL_8:
  v9 = sub_100223004(0x20000000000001uLL);
  v10 = sub_100223090(v3, vcvtd_n_f64_u64(v9, 0x35uLL) + 0.0);
  result = MonotonicTime.init(secondsSinceNow:)(v10).rawValue;
  v4 = result;
LABEL_9:
  v11 = 0;
LABEL_10:
  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = v11;
  *(v1 + 17) = v6;
  return result;
}

uint64_t variable initialization expression of Engine.externalState@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Activity(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for ExternalState(0);
  *(a1 + *(result + 20)) = _swiftEmptySetSingleton;
  return result;
}

uint64_t variable initialization expression of Engine.didTearDown()
{
  type metadata accessor for AtomicFlag.Storage(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

unint64_t sub_100223004(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100223090(uint64_t a1, double a2)
{
  if (a1 < 1)
  {
    return 0.0;
  }

  v3 = exp2((a1 - 1)) * 4.0;
  if (v3 < 80.0)
  {
    v4 = 0.5;
    v5 = v3 * 0.5;
    if (a2 >= 1.0)
    {
      return v5 + v4 * v3;
    }

    v4 = 0.0;
    if (a2 < 0.0)
    {
      return v5 + v4 * v3;
    }

LABEL_9:
    v4 = a2 * 0.5;
    return v5 + v4 * v3;
  }

  if (a2 >= 1.0)
  {
    v4 = 0.5;
    v5 = 40.0;
    v3 = 80.0;
    return v5 + v4 * v3;
  }

  v4 = 0.0;
  v5 = 40.0;
  v3 = 80.0;
  if (a2 >= 0.0)
  {
    goto LABEL_9;
  }

  return v5 + v4 * v3;
}

unint64_t sub_100223158(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&unk_1005D53F0, &unk_1004E8CD0);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = *(a1 + 48);
  result = sub_10024FDC4();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v9 = v3[7] + 24 * result;
    *v9 = v5;
    *(v9 + 8) = v15;
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v3[2] = v12;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v13 = v8 + 2;
    v4 = *(v8 - 4);
    v5 = *(v8 - 2);
    v15 = *v8;

    result = sub_10024FDC4();
    v8 = v13;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100223284(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005D53E8, &qword_1004E8CC8);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_10024FDC4();
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 2);
    v13 = *v7;

    result = sub_10024FDC4();
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for Backoff(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageToDownload(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10022343C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D53E0, &qword_1004E8CC0);
    v3 = sub_1004A6A74();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_10024FDC4();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10022351C(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D53D0, &qword_1004E8CB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C9C0(&qword_1005D53D8, &qword_1004E8CB8);
    v7 = sub_1004A6A74();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10000E268(v9, v5, &qword_1005D53D0, &qword_1004E8CB0);
      v11 = *v5;
      v12 = *(v5 + 2);
      result = sub_100063B5C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v7[6] + 16 * result;
      *v16 = v11;
      *(v16 + 8) = v12;
      v17 = v7[7];
      v18 = type metadata accessor for ConnectionStatus(0);
      result = sub_100223820(&v5[v8], v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002236EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D53B8, &qword_1004E8C98);
    v3 = sub_1004A6A74();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E268(v4, &v13, &unk_1005D53C0, &unk_1004E8CA0);
      v5 = v13;
      v6 = v14;
      result = sub_100064090(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000B364C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100223820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100223888()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D5400);
  sub_1001C203C(v0, qword_1005D5400);
  return sub_1004A4A64();
}

uint64_t sub_100223910()
{
  if (*(v0 + 72))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1004A6104();
    swift_unknownObjectRelease();
  }

  sub_1001AD0E0(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1002239DC()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  v9 = sub_1004A5404();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_11;
  }

  swift_beginAccess();
  v10 = *(v1 + 72);
  if (*(v1 + 64) && *(v1 + 64) == 1)
  {
    if (v10)
    {
      return;
    }

    v11 = swift_allocObject();
    swift_weakInit();

    v13 = sub_100224648(v8, sub_100225A7C, v11, v12);

    *(v1 + 72) = v13;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_1004A6114();
    if (qword_1005D53B0 != -1)
    {
      swift_once();
    }

    v14 = sub_1004A4A74();
    sub_1001C203C(v14, qword_1005D5400);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v15 = sub_1004A4A54();
    v16 = sub_1004A6034();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 68157952;
      *(v17 + 4) = 2;
      *(v17 + 8) = 256;
      *(v17 + 10) = *(v1 + 24);

      _os_log_impl(&_mh_execute_header, v15, v16, "[%.*hhx] Did create timer.", v17, 0xBu);

      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_13;
  }

  if (!v10)
  {
    return;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1004A6104();
  *(v1 + 72) = 0;
  swift_unknownObjectRelease();
  if (qword_1005D53B0 != -1)
  {
    goto LABEL_16;
  }

LABEL_11:
  v18 = sub_1004A4A74();
  sub_1001C203C(v18, qword_1005D5400);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v15 = sub_1004A4A54();
  v19 = sub_1004A6034();
  if (os_log_type_enabled(v15, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 68157952;
    *(v20 + 4) = 2;
    *(v20 + 8) = 256;
    *(v20 + 10) = *(v1 + 24);
    swift_unknownObjectRelease();

    _os_log_impl(&_mh_execute_header, v15, v19, "[%.*hhx] Did cancel timer.", v20, 0xBu);

    return;
  }

LABEL_13:
  swift_unknownObjectRelease();
}

void sub_100223DDC()
{
  v2 = v0;
  v3 = sub_1004A53F4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1004A5404();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
LABEL_6:
    v12 = sub_1004A4A74();
    sub_1001C203C(v12, qword_1005D5400);
    swift_retain_n();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    swift_retain_n();
    v13 = sub_1004A4A54();
    v14 = sub_1004A6034();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v38 = v16;
      *v15 = 68158466;
      *(v15 + 4) = 2;
      *(v15 + 8) = 256;
      v17 = *(v2 + 24);

      *(v15 + 10) = v17;

      *(v15 + 11) = 2082;
      v18 = ConnectionID.debugDescription.getter(*(v3 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
      v20 = sub_10015BA6C(v18, v19, &v38);

      *(v15 + 13) = v20;
      *(v15 + 21) = 2048;

      *(v15 + 23) = v1;

      _os_log_impl(&_mh_execute_header, v13, v14, "[%.*hhx] Did cancel connection %{public}s, generation %ld", v15, 0x1Fu);
      sub_1000197E0(v16);

      return;
    }

    goto LABEL_17;
  }

  swift_beginAccess();
  v3 = *(v2 + 80);
  v1 = *(v2 + 88);
  if (!*(v2 + 64) || *(v2 + 64) == 1)
  {
    if (!v3)
    {
      return;
    }

    v10 = *(*v3 + 536);

    v10(v11);
    *(v2 + 80) = 0;
    *(v2 + 88) = 0;

    if (qword_1005D53B0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v21 = *(v2 + 48);
  if (v3)
  {
    if (v21 == v1)
    {
      return;
    }

    v22 = *(*v3 + 536);
    v23 = swift_retain_n();
    v22(v23);
  }

  v24 = (*(v2 + 96))(v2, &off_1005A9450);
  *(v2 + 80) = v24;
  *(v2 + 88) = v21;

  v25 = *(*v24 + 528);

  v25(v26);

  if (qword_1005D53B0 != -1)
  {
    swift_once();
  }

  v27 = sub_1004A4A74();
  sub_1001C203C(v27, qword_1005D5400);
  swift_retain_n();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  swift_retain_n();
  v28 = sub_1004A4A54();
  v29 = sub_1004A6034();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38 = v31;
    *v30 = 68158722;
    *(v30 + 4) = 2;
    *(v30 + 8) = 256;
    v32 = *(v2 + 24);

    *(v30 + 10) = v32;

    *(v30 + 11) = 2082;
    v33 = ConnectionID.debugDescription.getter(*(v24 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id));
    v35 = sub_10015BA6C(v33, v34, &v38);

    *(v30 + 13) = v35;
    *(v30 + 21) = 2048;
    v37 = (*(*v24 + 432))(v36);

    *(v30 + 23) = v37;

    *(v30 + 31) = 2048;

    *(v30 + 33) = v21;

    _os_log_impl(&_mh_execute_header, v28, v29, "[%.*hhx] Did create connection %{public}s [C%llu], generation %ld", v30, 0x29u);
    sub_1000197E0(v31);
  }

  else
  {
  }

LABEL_17:
}

uint64_t sub_1002243FC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100224454();
  }

  return result;
}

void sub_100224454()
{
  v1 = sub_1004A53F4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v2 + 104);
  (v8)(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v9 = v6;
  v10 = sub_1004A5404();
  v11 = *(v2 + 8);
  v11(v5, v1);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = static MonotonicTime.now()();
  swift_beginAccess();
  if (*(v0 + 64) != 1)
  {
LABEL_11:
    *v5 = v9;
    v8(v5, v7, v1);
    v16 = sub_1004A5404();
    v11(v5, v1);
    if (v16)
    {
      sub_1002239DC();
      sub_100223DDC();
      return;
    }

    goto LABEL_14;
  }

  v13 = *(v0 + 56);
  v14 = __OFSUB__(v12, v13);
  v15 = v12 - v13;
  if (v12 < v13)
  {
    if (__OFSUB__(v13, v12))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v14 = __OFSUB__(0, v13 - v12);
    v15 = v12 - v13;
    if (!v14)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (!v14)
  {
LABEL_9:
    if (v15 / 1000000000.0 > 2.0)
    {
      *(v0 + 56) = 0;
      *(v0 + 64) = 2;
    }

    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_100224648(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v37 = a2;
  v38 = a3;
  v35 = a1;
  v4 = sub_1004A53B4();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v41 = &v30 - v7;
  v8 = sub_1004A5234();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_1004A5244();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004A5274();
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004A60A4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100210D7C();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100225A9C(&unk_1005D4F70, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10000C9C0(&qword_1005D5510, &qword_1004E8DB0);
  sub_1000CBB00(&qword_1005D4F80, &qword_1005D5510, &qword_1004E8DB0);
  sub_1004A6544();
  v19 = sub_1004A60B4();
  (*(v16 + 8))(v18, v15);
  swift_getObjectType();
  aBlock[4] = v37;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005A9488;
  v20 = _Block_copy(aBlock);

  sub_1004A5254();
  v21 = v31;
  sub_100224B80();
  sub_1004A60C4();
  _Block_release(v20);
  (*(v34 + 8))(v21, v36);
  (*(v32 + 8))(v14, v33);

  *v10 = 250;
  v23 = v39;
  v22 = v40;
  (*(v39 + 104))(v10, enum case for DispatchTimeInterval.milliseconds(_:), v40);
  v24 = v42;
  sub_1004A5394();
  v25 = v41;
  sub_1004A53A4();
  v26 = *(v43 + 8);
  v27 = v24;
  v28 = v44;
  v26(v27, v44);
  sub_1004A6254();
  v26(v25, v28);
  (*(v23 + 8))(v10, v22);
  return v19;
}

uint64_t sub_100224B80()
{
  sub_1004A5244();
  sub_100225A9C(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  return sub_1004A6544();
}

void sub_100224C58(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 80);
  if (v6)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      if (*(v6 + OBJC_IVAR____TtC15IMAP2Connection17CommandConnection_id) == *(a1 + 32))
      {
        v8 = *(v1 + 88);
        v9 = (a1 + 40);
        v10 = v7 + 1;
        while (--v10)
        {
          v11 = *v9;
          v9 += 5;
          if (v11 == 0x8000000000000010)
          {
            v12 = *(*v6 + 304);

            v12(v13);
            sub_100224DA0(v8, v5);

            sub_10022590C(v5, type metadata accessor for ConnectionState);
            return;
          }
        }
      }
    }
  }
}

uint64_t sub_100224DA0(void *a1, char *a2)
{
  v3 = v2;
  v89 = a2;
  v5 = sub_1004A5214();
  v84 = *(v5 - 8);
  v85 = v5;
  __chkstk_darwin(v5);
  v81 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = v79 - v8;
  __chkstk_darwin(v9);
  v11 = v79 - v10;
  v12 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v88 = *(v12 - 8);
  __chkstk_darwin(v12);
  v83 = (v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = v79 - v15;
  v17 = _s5StateO6ActionOMa(0);
  __chkstk_darwin(v17 - 8);
  v87 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v79 - v20;
  v22 = sub_1004A53F4();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = (v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v2 + 16);
  *v26 = v27;
  v28 = *(v23 + 104);
  v92 = enum case for DispatchPredicate.onQueue(_:);
  v93 = v28;
  v94 = v23 + 104;
  v28(v26, v24);
  v91 = v27;
  LOBYTE(v27) = sub_1004A5404();
  v30 = *(v23 + 8);
  v29 = (v23 + 8);
  v90 = v30;
  v30(v26, v22);
  if (v27)
  {
    v95 = v11;
    if (qword_1005D53B0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v31 = sub_1004A4A74();
  v32 = sub_1001C203C(v31, qword_1005D5400);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v86 = v32;
  v33 = sub_1004A4A54();
  v34 = sub_1004A5FF4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v80 = v26;
    v36 = v29;
    v37 = v22;
    v38 = v21;
    v39 = v35;
    *v35 = 68158208;
    *(v35 + 4) = 2;
    *(v35 + 8) = 256;
    *(v35 + 10) = *(v3 + 24);

    *(v39 + 11) = 2048;
    *(v39 + 13) = a1;
    _os_log_impl(&_mh_execute_header, v33, v34, "[%.*hhx] Connection generation %ld state did change.", v39, 0x15u);
    v21 = v38;
    v22 = v37;
    v29 = v36;
    v26 = v80;
  }

  else
  {
  }

  swift_beginAccess();
  sub_100225AFC(a1, v89, v21);
  swift_endAccess();
  v40 = v87;
  sub_1002258A8(v21, v87, v41);
  v42 = (*(v88 + 48))(v40, 2, v12);
  v43 = v95;
  if (v42)
  {
    if (v42 == 1)
    {
      goto LABEL_33;
    }

    v44 = *(v3 + 80);
    if (v44)
    {
      v88 = v22;
      *(v3 + 80) = 0;
      *(v3 + 88) = 0;

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v45 = sub_1004A4A54();
      v46 = sub_1004A6034();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 68158208;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        *(v47 + 10) = *(v3 + 24);

        *(v47 + 11) = 2048;
        *(v47 + 13) = a1;
        _os_log_impl(&_mh_execute_header, v45, v46, "[%.*hhx] Promoting connection generation %ld.", v47, 0x15u);
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

LABEL_32:
        v22 = v88;
        goto LABEL_33;
      }

      if (*(Strong + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections))
      {

        sub_10023AB80(v44);

LABEL_31:
        swift_unknownObjectRelease();
        goto LABEL_32;
      }
    }

    else
    {

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v67 = sub_1004A4A54();
      v68 = sub_1004A6034();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = a1;
        v70 = v22;
        v71 = swift_slowAlloc();
        *v71 = 68158208;
        *(v71 + 4) = 2;
        *(v71 + 8) = 256;
        *(v71 + 10) = *(v3 + 24);

        *(v71 + 11) = 2048;
        *(v71 + 13) = v69;
        _os_log_impl(&_mh_execute_header, v67, v68, "[%.*hhx] Trying to promote connection generation %ld, but there’s no connection.", v71, 0x15u);
        v22 = v70;
      }

      else
      {
      }

      v74 = v91;
      *v26 = v91;
      v93(v26, v92, v22);
      v75 = v74;
      LOBYTE(v74) = sub_1004A5404();
      v90(v26, v22);
      if (v74)
      {
        goto LABEL_34;
      }

      __break(1u);
    }

    goto LABEL_31;
  }

  sub_10022596C(v40, v16);
  v89 = v16;
  v48 = v83;
  sub_1002077B8(v16, v83);
  v49 = v84;
  v50 = v85;
  if ((*(v84 + 48))(v48, 1, v85) == 1)
  {
    sub_1002259DC(v48);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v51 = sub_1004A4A54();
    v52 = sub_1004A6034();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = a1;
      v54 = v22;
      v55 = swift_slowAlloc();
      *v55 = 68158208;
      *(v55 + 4) = 2;
      *(v55 + 8) = 256;
      *(v55 + 10) = *(v3 + 24);

      *(v55 + 11) = 2048;
      *(v55 + 13) = v53;
      _os_log_impl(&_mh_execute_header, v51, v52, "[%.*hhx] Cancelling connection generation %ld", v55, 0x15u);
      v22 = v54;
    }

    else
    {
    }

    sub_1002259DC(v89);
  }

  else
  {
    v80 = a1;
    v87 = v21;
    (*(v49 + 32))(v43, v48, v50);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v56 = v82;
    v83 = *(v49 + 16);
    (v83)(v82, v43, v50);
    v57 = v43;
    v58 = v49;
    v59 = sub_1004A4A54();
    LODWORD(v86) = sub_1004A6034();
    if (os_log_type_enabled(v59, v86))
    {
      v60 = swift_slowAlloc();
      v88 = v22;
      v61 = v60;
      v79[0] = swift_slowAlloc();
      v79[1] = v29;
      v96[0] = v79[0];
      *v61 = 68158466;
      *(v61 + 4) = 2;
      *(v61 + 8) = 256;
      *(v61 + 10) = *(v3 + 24);

      *(v61 + 11) = 2048;
      v62 = v81;
      *(v61 + 13) = v80;
      *(v61 + 21) = 2082;
      (v83)(v62, v56, v50);
      v63 = sub_1004A5804();
      v65 = v64;
      v84 = *(v58 + 8);
      (v84)(v56, v50);
      v66 = sub_10015BA6C(v63, v65, v96);

      *(v61 + 23) = v66;
      _os_log_impl(&_mh_execute_header, v59, v86, "[%.*hhx] Cancelling connection generation %ld: %{public}s", v61, 0x1Fu);
      sub_1000197E0(v79[0]);

      v22 = v88;

      (v84)(v95, v50);
    }

    else
    {

      v73 = *(v58 + 8);
      v73(v56, v50);
      v73(v57, v50);
    }

    sub_1002259DC(v89);
    v21 = v87;
  }

LABEL_33:
  v76 = v91;
  *v26 = v91;
  v93(v26, v92, v22);
  v77 = v76;
  LOBYTE(v76) = sub_1004A5404();
  result = (v90)(v26, v22);
  if (v76)
  {
LABEL_34:
    sub_1002239DC();
    sub_100223DDC();
    return sub_10022590C(v21, _s5StateO6ActionOMa);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002258A8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = _s5StateO6ActionOMa(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10022590C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10022596C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002259DC(uint64_t a1)
{
  v2 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100225A44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100225A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100225A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100225AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_1004A5214();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConnectionState(0);
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  if (*(v3 + 16) == 2 && *v3 == a1)
  {
    sub_100210F9C(a2, &v29 - v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      sub_100211000(v16);
      *v3 = a1 + 1;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      (*(v8 + 56))(a3, 1, 1, v7);
      v23 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
      return (*(*(v23 - 8) + 56))(a3, 0, 2, v23);
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        *v3 = a1 + 1;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        v22 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
        (*(*(v22 - 8) + 56))(a3, 2, 2, v22);
        return sub_100211000(v16);
      }
    }

    else
    {
      sub_100210F9C(v16, v13);
      v24 = sub_1004A4E34();
      v25 = *(v24 - 8);
      if ((*(v25 + 88))(v13, v24) == enum case for NWConnection.State.waiting(_:))
      {
        (*(v25 + 96))(v13, v24);
        v26 = *(v8 + 32);
        v26(v10, v13, v7);
        *v3 = a1 + 1;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        v26(a3, v10, v7);
        (*(v8 + 56))(a3, 0, 1, v7);
        v27 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
        (*(*(v27 - 8) + 56))(a3, 0, 2, v27);
        return sub_100211000(v16);
      }

      (*(v25 + 8))(v13, v24);
    }

    v28 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
    (*(*(v28 - 8) + 56))(a3, 1, 2, v28);
    return sub_100211000(v16);
  }

  v18 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v19 = *(*(v18 - 8) + 56);

  return v19(a3, 1, 2, v18);
}

BOOL sub_100225F68(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    v8 = a6 == 1 && a1 == a4 && a2 == a5;
    v10 = a6 == 2 && a1 == a4;
    if (a3 == 1)
    {
      return v8;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    return !a6 && a1 == a4;
  }
}

uint64_t sub_100225FC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022604C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t _s5StateO6ActionOMa(uint64_t a1)
{
  result = qword_1005D5588;
  if (!qword_1005D5588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100226128(uint64_t a1)
{
  sub_100208340(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_100226190@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v344 = a2;
  v369 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v343 = *(v369 - 8);
  __chkstk_darwin(v369);
  v328 = &v321 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C9C0(&unk_1005D54F0, &unk_1004E8DA0);
  __chkstk_darwin(v4 - 8);
  v323 = &v321 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v327 = &v321 - v7;
  __chkstk_darwin(v8);
  v329 = &v321 - v9;
  __chkstk_darwin(v10);
  v359 = &v321 - v11;
  __chkstk_darwin(v12);
  v333 = &v321 - v13;
  __chkstk_darwin(v14);
  v363 = &v321 - v15;
  __chkstk_darwin(v16);
  v336 = &v321 - v17;
  v18 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v18 - 8);
  v370 = &v321 - v19;
  v20 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  __chkstk_darwin(v20 - 8);
  v334 = &v321 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v335 = &v321 - v23;
  __chkstk_darwin(v24);
  v371 = &v321 - v25;
  __chkstk_darwin(v26);
  v375 = (&v321 - v27);
  v345 = type metadata accessor for ConnectionStatus.Error(0);
  v372 = *(v345 - 8);
  __chkstk_darwin(v345);
  v337 = &v321 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v374 = (&v321 - v30);
  v31 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  __chkstk_darwin(v31 - 8);
  v339 = &v321 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v340 = &v321 - v34;
  v35 = sub_1004A5214();
  v364 = *(v35 - 8);
  __chkstk_darwin(v35);
  v322 = &v321 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v324 = &v321 - v38;
  __chkstk_darwin(v39);
  v332 = &v321 - v40;
  __chkstk_darwin(v41);
  v338 = &v321 - v42;
  __chkstk_darwin(v43);
  v354 = &v321 - v44;
  __chkstk_darwin(v45);
  v325 = &v321 - v46;
  __chkstk_darwin(v47);
  v326 = &v321 - v48;
  __chkstk_darwin(v49);
  v360 = &v321 - v50;
  __chkstk_darwin(v51);
  v349 = &v321 - v52;
  __chkstk_darwin(v53);
  v351 = &v321 - v54;
  __chkstk_darwin(v55);
  v350 = &v321 - v56;
  __chkstk_darwin(v57);
  v362 = &v321 - v58;
  __chkstk_darwin(v59);
  v356 = &v321 - v60;
  __chkstk_darwin(v61);
  v357 = &v321 - v62;
  __chkstk_darwin(v63);
  v387 = &v321 - v64;
  __chkstk_darwin(v65);
  v365 = &v321 - v66;
  __chkstk_darwin(v67);
  v383 = &v321 - v68;
  __chkstk_darwin(v69);
  v71 = &v321 - v70;
  __chkstk_darwin(v72);
  v74 = &v321 - v73;
  __chkstk_darwin(v75);
  v368 = &v321 - v76;
  __chkstk_darwin(v77);
  v381 = &v321 - v78;
  v396 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v396);
  v352 = &v321 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v353 = &v321 - v81;
  __chkstk_darwin(v82);
  v377 = &v321 - v83;
  __chkstk_darwin(v84);
  v380 = &v321 - v85;
  __chkstk_darwin(v86);
  v384 = (&v321 - v87);
  __chkstk_darwin(v88);
  v373 = &v321 - v89;
  __chkstk_darwin(v90);
  v92 = &v321 - v91;
  __chkstk_darwin(v93);
  v95 = &v321 - v94;
  v395 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  __chkstk_darwin(v395);
  v331 = &v321 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v97);
  v330 = &v321 - v98;
  __chkstk_darwin(v99);
  v348 = &v321 - v100;
  __chkstk_darwin(v101);
  v347 = &v321 - v102;
  __chkstk_darwin(v103);
  v382 = &v321 - v104;
  __chkstk_darwin(v105);
  v358 = &v321 - v106;
  __chkstk_darwin(v107);
  v385 = &v321 - v108;
  __chkstk_darwin(v109);
  v361 = &v321 - v110;
  __chkstk_darwin(v111);
  v113 = &v321 - v112;
  __chkstk_darwin(v114);
  v386 = (&v321 - v115);
  __chkstk_darwin(v116);
  v118 = &v321 - v117;
  __chkstk_darwin(v119);
  *&v379 = &v321 - v120;
  v123 = __chkstk_darwin(v121);
  v376 = &v321 - v124;
  v355 = a1;
  v394 = *(a1 + 16);
  if (!v394)
  {
    return (*(v372 + 56))(v344, 1, 1, v345, v123);
  }

  v125 = v95;
  v126 = v394;
  v393 = (v364 + 32);
  v392 = (v364 + 88);
  v391 = enum case for NWError.posix(_:);
  v389 = (v364 + 16);
  v388 = (v364 + 96);
  v390 = (v364 + 8);
  v127 = (*(v122 + 80) + 32) & ~*(v122 + 80);
  v128 = *(v122 + 72);
  v346 = v394 - 1;
  v341 = v127;
  v321 = v127 + v128 * (v394 - 1);
  v129 = v355 + v321;
  v378 = v128;
  v366 = -v128;
  v342 = v394;
  v367 = v125;
  while (1)
  {
    v130 = v376;
    sub_100229C14(v129, v376, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_100229C7C(v130 + *(v395 + 20), v125, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      break;
    }

    v131 = v381;
    (*v393)(v381, v125, v35);
    v132 = (*v392)(v131, v35);
    if (v132 != v391 || (v133 = v368, (*v389)(v368, v381, v35), (*v388)(v133, v35), v125 = v367, v134 = *v133 - 52, v134 > 0x2C) || ((1 << v134) & 0x100000000107) == 0)
    {
      (*v390)(v381, v35);
      goto LABEL_11;
    }

    --v126;
    (*v390)(v381, v35);
    v129 += v366;
    if (!v126)
    {
      return (*(v372 + 56))(v344, 1, 1, v345, v123);
    }
  }

  sub_100229288(v125, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_11:
  v368 = (v343 + 56);
  v376 = v355 + v341;
  v136 = -v378;
  v137 = _swiftEmptyArrayStorage;
  v138 = v342;
  do
  {
    v381 = v137;
    --v138;
    v139 = v376 + v378 * v138;
    while (1)
    {
      if (v138 >= v394)
      {
        __break(1u);
LABEL_34:
        v137 = v381;
        goto LABEL_35;
      }

      sub_100229C14(v139, v118, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_100229C14(&v118[*(v395 + 20)], v92, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      (*v393)(v74, v92, v35);
      v140 = (*v392)(v74, v35);
      if (v140 != v391 || ((*v389)(v71, v74, v35), (*v388)(v71, v35), v141 = *v71 - 52, v141 > 0x2C) || ((1 << v141) & 0x100000000107) == 0)
      {
        (*v390)(v74, v35);
        goto LABEL_24;
      }

      (*v390)(v74, v35);
      sub_100229288(v118, type metadata accessor for CommandConnection.RecentErrors.Error);
      --v138;
      v139 += v136;
      if (v138 == -1)
      {
        goto LABEL_34;
      }
    }

    sub_100229288(v92, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_24:
    v142 = v379;
    sub_100229C7C(v118, v379, type metadata accessor for CommandConnection.RecentErrors.Error);
    v143 = v373;
    sub_100229C14(v142 + *(v395 + 20), v373, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v144 = *(v143 + 8);
      v145 = v143;
      v146 = v375;
      if (v144)
      {
        *v375 = *v145;
        v146[1] = v144;
        v147 = v369;
        swift_storeEnumTagMultiPayload();
        v148 = 0;
      }

      else
      {
        v148 = 1;
        v147 = v369;
      }

      (*v368)(v146, v148, 1, v147);
      v149 = v146;
      v150 = v371;
      sub_10000E268(v149, v371, &qword_1005D55B8, &unk_1004F2790);
      v151 = sub_1004A44E4();
      v152 = v370;
      (*(*(v151 - 8) + 56))(v370, 1, 1, v151);
      ConnectionStatus.Error.init(kind:details:backedOffUntil:)(2, v150, v152, v374);
      sub_100025F40(v375, &qword_1005D55B8, &unk_1004F2790);
      sub_100229288(v379, type metadata accessor for CommandConnection.RecentErrors.Error);
      v153 = v381;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v153 = sub_10023798C(0, *(v153 + 2) + 1, 1, v153);
      }

      v155 = *(v153 + 2);
      v154 = *(v153 + 3);
      v156 = v153;
      if (v155 >= v154 >> 1)
      {
        v156 = sub_10023798C((v154 > 1), v155 + 1, 1, v153);
      }

      *(v156 + 2) = v155 + 1;
      v137 = v156;
      sub_100229C7C(v374, &v156[((*(v372 + 80) + 32) & ~*(v372 + 80)) + *(v372 + 72) * v155], type metadata accessor for ConnectionStatus.Error);
    }

    else
    {
      sub_100229288(v142, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_100229288(v143, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      v137 = v381;
    }
  }

  while (v138);
LABEL_35:
  if (*(v137 + 2))
  {
    v157 = v372;
    v158 = v340;
    sub_100229C14(&v137[(*(v372 + 80) + 32) & ~*(v372 + 80)], v340, type metadata accessor for ConnectionStatus.Error);
    v159 = 0;
    v160 = v345;
  }

  else
  {
    v159 = 1;
    v160 = v345;
    v158 = v340;
    v157 = v372;
  }

  v161 = v339;

  v162 = *(v157 + 56);
  v162(v158, v159, 1, v160);
  sub_10000E268(v158, v161, &qword_1005CCEB0, &qword_1004E9140);
  if ((*(v157 + 48))(v161, 1, v160) != 1)
  {
    sub_100025F40(v158, &qword_1005CCEB0, &qword_1004E9140);
    v180 = v337;
    sub_100229C7C(v161, v337, type metadata accessor for ConnectionStatus.Error);
    v181 = v180;
    v182 = v344;
    sub_100229C7C(v181, v344, type metadata accessor for ConnectionStatus.Error);
    return (v162)(v182, 0, 1, v160);
  }

  v374 = v162;
  v375 = (v157 + 56);
  sub_100025F40(v161, &qword_1005CCEB0, &qword_1004E9140);
  v376 = v355 + v341;
  v163 = -v378;
  v381 = _swiftEmptyArrayStorage;
  v164 = v342;
  v165 = v387;
  v166 = v384;
  while (2)
  {
    --v164;
    v167 = v376 + v378 * v164;
    v168 = v365;
    while (1)
    {
      if (v164 >= v394)
      {
        __break(1u);
LABEL_60:
        v177 = *(v381 + 2);
        if (!v177)
        {
LABEL_82:
          v200 = v381 + 32;
          v201 = v177 + 1;
          v202 = v364;
          while (--v201)
          {
            v203 = v200 + 24;
            v204 = *v200;
            v200 += 24;
            if ((~v204 & 0xF000000000000007) == 0)
            {
              v376 = v204;
              v205 = *(v203 - 1);
              v373 = *(v203 - 2);
              *&v379 = v205;

              goto LABEL_87;
            }
          }

          v376 = 0;
          v373 = 0;
          *&v379 = 0;
LABEL_87:
          v366 = 0;
          v367 = 0;
          v372 = 0;
          goto LABEL_90;
        }

        goto LABEL_61;
      }

      sub_100229C14(v167, v113, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_100229C14(&v113[*(v395 + 20)], v166, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      v169 = v166;
      v170 = v383;
      (*v393)(v383, v169, v35);
      v171 = (*v392)(v170, v35);
      if (v171 != v391 || ((*v389)(v168, v170, v35), (*v388)(v168, v35), v172 = *v168 - 52, v172 > 0x2C) || ((1 << v172) & 0x100000000107) == 0)
      {
        (*v390)(v170, v35);
        v166 = v384;
        goto LABEL_50;
      }

      (*v390)(v170, v35);
      sub_100229288(v113, type metadata accessor for CommandConnection.RecentErrors.Error);
      v166 = v384;
LABEL_42:
      --v164;
      v167 += v163;
      if (v164 == -1)
      {
        goto LABEL_60;
      }
    }

    sub_100229288(v166, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_50:
    v173 = v386;
    sub_100229C7C(v113, v386, type metadata accessor for CommandConnection.RecentErrors.Error);
    sub_1002292E8(v173, &v397);
    sub_100229288(v173, type metadata accessor for CommandConnection.RecentErrors.Error);
    v174 = v398;
    if (!v398)
    {
      v165 = v387;
      goto LABEL_42;
    }

    v379 = v397;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v381 = sub_10023786C(0, *(v381 + 2) + 1, 1, v381);
    }

    v176 = *(v381 + 2);
    v175 = *(v381 + 3);
    v177 = v176 + 1;
    if (v176 >= v175 >> 1)
    {
      v381 = sub_10023786C((v175 > 1), v176 + 1, 1, v381);
    }

    v178 = v381;
    *(v381 + 2) = v177;
    v179 = &v178[24 * v176];
    *(v179 + 2) = v379;
    *(v179 + 6) = v174;
    v165 = v387;
    if (v164)
    {
      continue;
    }

    break;
  }

LABEL_61:
  v183 = (v381 + 48);
  v184 = v177;
  while (2)
  {
    v187 = *(v183 - 2);
    if ((~v187 & 0xF000000000000007) == 0)
    {
      goto LABEL_69;
    }

    v188 = (v187 >> 59) & 0x1E | (v187 >> 2) & 1;
    if (v188 <= 16)
    {
      if (v188)
      {
        v185 = v188 == 9;
      }

      else
      {
        v185 = 1;
      }

      if (v185 || v188 == 13)
      {
        v193 = *(v183 - 1);
        v194 = *v183;
        goto LABEL_89;
      }

      goto LABEL_69;
    }

    v185 = v188 == 17;
    v189 = __ROR8__(v187 + 0x7FFFFFFFFFFFFFFCLL, 3);
    v190 = !v185 || v189 > 0x1E;
    v191 = (1 << v189) & 0x5FDFF9A7;
    if (v190 || v191 == 0)
    {
LABEL_69:
      v183 += 3;
      if (!--v184)
      {
        goto LABEL_82;
      }

      continue;
    }

    break;
  }

  v193 = *(v183 - 1);
  v194 = *v183;
  if (v187 == 0x80000000000000DCLL || v187 == 0x800000000000006CLL)
  {
    sub_1000110B0(v187);
    swift_bridgeObjectRetain_n();
    sub_1000110B0(v187);

    sub_1000110B0(v187);
    v195 = v371;
    sub_1002293EC(v187, v193, v194, v371);
    v196 = v335;
    sub_10000E268(v195, v335, &qword_1005D55B8, &unk_1004F2790);
    v197 = sub_1004A44E4();
    v198 = v370;
    (*(*(v197 - 8) + 56))(v370, 1, 1, v197);
    v199 = v344;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(2, v196, v198, v344);
    sub_10001114C(v187);

    sub_10001114C(v187);

    sub_100025F40(v195, &qword_1005D55B8, &unk_1004F2790);
    sub_100025F40(v340, &qword_1005CCEB0, &qword_1004E9140);
    return (v374)(v199, 0, 1, v345);
  }

LABEL_89:
  sub_1000110B0(v187);
  swift_bridgeObjectRetain_n();
  sub_1000110B0(v187);
  v376 = v187;
  v366 = v187;
  v373 = v193;
  v367 = v193;
  *&v379 = v194;
  v372 = v194;
  v202 = v364;
LABEL_90:

  v386 = (v202 + 48);
  v383 = (v355 + v341);
  v206 = -v378;
  v384 = _swiftEmptyArrayStorage;
  v207 = v342;
  v208 = v357;
  while (2)
  {
    while (1)
    {
      --v207;
      v209 = &v383[v378 * v207];
      while (1)
      {
        if (v207 >= v394)
        {
          __break(1u);
          goto LABEL_111;
        }

        v210 = v385;
        sub_100229C14(v209, v385, type metadata accessor for CommandConnection.RecentErrors.Error);
        v211 = v210 + *(v395 + 20);
        v212 = v380;
        sub_100229C14(v211, v380, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          break;
        }

        (*v393)(v165, v212, v35);
        v213 = (*v392)(v165, v35);
        if (v213 != v391 || ((*v389)(v208, v165, v35), (*v388)(v208, v35), v214 = *v208 - 52, v214 > 0x2C) || ((1 << v214) & 0x100000000107) == 0)
        {
          (*v390)(v165, v35);
          goto LABEL_102;
        }

        (*v390)(v165, v35);
        sub_100229288(v385, type metadata accessor for CommandConnection.RecentErrors.Error);
        --v207;
        v209 += v206;
        if (v207 == -1)
        {
          goto LABEL_108;
        }
      }

      sub_100229288(v212, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_102:
      v215 = v361;
      sub_100229C7C(v385, v361, type metadata accessor for CommandConnection.RecentErrors.Error);
      v216 = v363;
      sub_1002296F0(v215, v363);
      sub_100229288(v215, type metadata accessor for CommandConnection.RecentErrors.Error);
      if ((*v386)(v216, 1, v35) == 1)
      {
        break;
      }

      v217 = v216;
      v218 = *v393;
      v219 = v356;
      (*v393)(v356, v217, v35);
      v218(v362, v219, v35);
      v220 = v384;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v220 = sub_100237844(0, v220[2] + 1, 1, v220);
      }

      v222 = v220[2];
      v221 = v220[3];
      v384 = v220;
      v208 = v357;
      if (v222 >= v221 >> 1)
      {
        v384 = sub_100237844((v221 > 1), v222 + 1, 1, v384);
      }

      v223 = v384;
      v384[2] = v222 + 1;
      v218(&v223[((*(v364 + 80) + 32) & ~*(v364 + 80)) + *(v364 + 72) * v222], v362, v35);
      v165 = v387;
      if (!v207)
      {
        goto LABEL_108;
      }
    }

    sub_100025F40(v216, &unk_1005D54F0, &unk_1004E8DA0);
    if (v207)
    {
      continue;
    }

    break;
  }

LABEL_108:
  if (v384[2])
  {
    v224 = v364;
    v225 = v336;
    (*(v364 + 16))(v336, v384 + ((*(v224 + 80) + 32) & ~*(v224 + 80)), v35);
    v226 = 0;
    goto LABEL_112;
  }

LABEL_111:
  v226 = 1;
  v225 = v336;
  v224 = v364;
LABEL_112:

  v383 = *(v224 + 56);
  v384 = (v224 + 56);
  (v383)(v225, v226, 1, v35);
  v385 = v355 + v341;
  v387 = _swiftEmptyArrayStorage;
  v227 = -v378;
  v228 = v351;
  v229 = v350;
  v230 = v342;
  while (2)
  {
    while (1)
    {
      v231 = v230 - 1;
      v232 = v385 + v378 * v231;
      while (1)
      {
        if (v231 >= v394)
        {
          __break(1u);
          goto LABEL_133;
        }

        v233 = v231;
        v234 = v382;
        sub_100229C14(v232, v382, type metadata accessor for CommandConnection.RecentErrors.Error);
        v235 = v234 + *(v395 + 20);
        v236 = v377;
        sub_100229C14(v235, v377, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          break;
        }

        (*v393)(v229, v236, v35);
        v237 = (*v392)(v229, v35);
        if (v237 != v391 || ((*v389)(v228, v229, v35), (*v388)(v228, v35), v238 = *v228 - 52, v238 > 0x2C) || ((1 << v238) & 0x100000000107) == 0)
        {
          (*v390)(v229, v35);
          goto LABEL_124;
        }

        (*v390)(v229, v35);
        sub_100229288(v382, type metadata accessor for CommandConnection.RecentErrors.Error);
        v231 = v233 - 1;
        v232 += v227;
        if (!v233)
        {
          goto LABEL_130;
        }
      }

      sub_100229288(v236, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
LABEL_124:
      v239 = v358;
      sub_100229C7C(v382, v358, type metadata accessor for CommandConnection.RecentErrors.Error);
      v240 = v359;
      sub_1002298A8(v239, v359);
      sub_100229288(v239, type metadata accessor for CommandConnection.RecentErrors.Error);
      if ((*v386)(v240, 1, v35) == 1)
      {
        break;
      }

      v241 = v240;
      v242 = *v393;
      v243 = v349;
      (*v393)(v349, v241, v35);
      v242(v360, v243, v35);
      v244 = v387;
      v230 = v233;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v244 = sub_100237844(0, *(v244 + 2) + 1, 1, v244);
      }

      v246 = *(v244 + 2);
      v245 = *(v244 + 3);
      v387 = v244;
      v229 = v350;
      if (v246 >= v245 >> 1)
      {
        v387 = sub_100237844((v245 > 1), v246 + 1, 1, v387);
      }

      v247 = v387;
      *(v387 + 2) = v246 + 1;
      v242(&v247[((*(v364 + 80) + 32) & ~*(v364 + 80)) + *(v364 + 72) * v246], v360, v35);
      v228 = v351;
      if (!v230)
      {
        goto LABEL_130;
      }
    }

    sub_100025F40(v240, &unk_1005D54F0, &unk_1004E8DA0);
    v230 = v233;
    if (v233)
    {
      continue;
    }

    break;
  }

LABEL_130:
  if (*(v387 + 2))
  {
    v248 = v333;
    (*(v364 + 16))(v333, &v387[(*(v364 + 80) + 32) & ~*(v364 + 80)], v35);
    v249 = 0;
    v250 = v336;
    goto LABEL_134;
  }

LABEL_133:
  v249 = 1;
  v250 = v336;
  v248 = v333;
LABEL_134:
  v251 = v369;
  v252 = v348;
  v253 = v379;
  v254 = v386;

  (v383)(v248, v249, 1, v35);
  if (v253)
  {
    v255 = v376;
    sub_1000110B0(v376);

    sub_1002293EC(v255, v373, v253, v334);
    goto LABEL_142;
  }

  v249 = v329;
  sub_10000E268(v250, v329, &unk_1005D54F0, &unk_1004E8DA0);
  v256 = *v254;
  if ((*v254)(v249, 1, v35) == 1)
  {
    sub_100025F40(v249, &unk_1005D54F0, &unk_1004E8DA0);
    v249 = v327;
    sub_10000E268(v248, v327, &unk_1005D54F0, &unk_1004E8DA0);
    if (v256(v249, 1, v35) == 1)
    {
      sub_100025F40(v249, &unk_1005D54F0, &unk_1004E8DA0);
      (*v368)(v334, 1, 1, v251);
      goto LABEL_142;
    }

    v257 = *v393;
    v258 = &v357;
  }

  else
  {
    v257 = *v393;
    v258 = &v358;
  }

  v259 = *(v258 - 32);
  v257(v259, v249, v35);
  v260 = v328;
  v257(v328, v259, v35);
  swift_storeEnumTagMultiPayload();
  v261 = v334;
  sub_100229C7C(v260, v334, type metadata accessor for ConnectionStatus.Error.Details);
  (*v368)(v261, 0, 1, v251);
LABEL_142:
  v262 = v321;
  v263 = v355 + v321;
  v264 = -v378;
  v265 = v346;
  while (2)
  {
    if (v265 < v394)
    {
      sub_100229C14(v263, v252, type metadata accessor for CommandConnection.RecentErrors.Error);
      v266 = v353;
      sub_100229C14(v252 + *(v395 + 20), v353, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v267 = v266;
        v268 = v354;
        (*v393)(v354, v267, v35);
        v269 = (*v392)(v268, v35);
        if (v269 == v391 && (v270 = v338, (*v389)(v338, v354, v35), (*v388)(v270, v35), v271 = *v270, v268 = v354, v272 = v271 - 52, v272 <= 0x2C) && ((1 << v272) & 0x100000000107) != 0)
        {
          (*v390)(v354, v35);
          sub_100229288(v252, type metadata accessor for CommandConnection.RecentErrors.Error);
        }

        else
        {
          (*v390)(v268, v35);
LABEL_152:
          v273 = v252;
          v274 = v347;
          sub_100229C7C(v273, v347, type metadata accessor for CommandConnection.RecentErrors.Error);
          v275 = sub_100229A60(v274);
          sub_100229288(v274, type metadata accessor for CommandConnection.RecentErrors.Error);
          v252 = v348;
          if (v275)
          {
            v276 = v334;
            v277 = v371;
            sub_10000E268(v334, v371, &qword_1005D55B8, &unk_1004F2790);
            v278 = v335;
            sub_10000E268(v277, v335, &qword_1005D55B8, &unk_1004F2790);
            v279 = sub_1004A44E4();
            v280 = v370;
            (*(*(v279 - 8) + 56))(v370, 1, 1, v279);
            v281 = v344;
            v282 = v344;
            v283 = 5;
LABEL_154:
            ConnectionStatus.Error.init(kind:details:backedOffUntil:)(v283, v278, v280, v282);
            sub_10010E7C0(v376, v373, v379);
            sub_10010E7C0(v366, v367, v372);
            sub_100025F40(v277, &qword_1005D55B8, &unk_1004F2790);
            sub_100025F40(v276, &qword_1005D55B8, &unk_1004F2790);
            v284 = v248;
            goto LABEL_155;
          }
        }

        --v265;
        v263 += v264;
        v249 = v352;
        v262 = v346;
        if (v265 == -1)
        {
          goto LABEL_157;
        }

        continue;
      }

      sub_100229288(v266, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      goto LABEL_152;
    }

    break;
  }

  __break(1u);
LABEL_157:
  v285 = v355 + v321;
  v286 = -v378;
  v287 = v324;
  v288 = v331;
  while (2)
  {
    if (v262 < v394)
    {
      v289 = v262;
      sub_100229C14(v285, v288, type metadata accessor for CommandConnection.RecentErrors.Error);
      sub_100229C14(v288 + *(v395 + 20), v249, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v291 = v249;
      v292 = v332;
      if (EnumCaseMultiPayload == 4)
      {
        (*v393)(v332, v291, v35);
        v293 = (*v392)(v292, v35);
        if (v293 == v391 && ((*v389)(v287, v292, v35), (*v388)(v287, v35), v294 = *v287 - 52, v294 <= 0x2C) && ((1 << v294) & 0x100000000107) != 0)
        {
          (*v390)(v292, v35);
          sub_100229288(v288, type metadata accessor for CommandConnection.RecentErrors.Error);
        }

        else
        {
          (*v390)(v292, v35);
LABEL_167:
          v295 = v288;
          v296 = v330;
          sub_100229C7C(v295, v330, type metadata accessor for CommandConnection.RecentErrors.Error);
          v297 = sub_100229B34(v296);
          sub_100229288(v296, type metadata accessor for CommandConnection.RecentErrors.Error);
          v288 = v331;
          if (v297)
          {
            v276 = v334;
            v277 = v371;
            sub_10000E268(v334, v371, &qword_1005D55B8, &unk_1004F2790);
            v278 = v335;
            sub_10000E268(v277, v335, &qword_1005D55B8, &unk_1004F2790);
            v298 = sub_1004A44E4();
            v280 = v370;
            (*(*(v298 - 8) + 56))(v370, 1, 1, v298);
            v281 = v344;
            v282 = v344;
            v283 = 3;
            goto LABEL_154;
          }
        }

        v262 = v289 - 1;
        v285 += v286;
        v249 = v352;
        if (!v289)
        {
          goto LABEL_170;
        }

        continue;
      }

      sub_100229288(v291, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
      goto LABEL_167;
    }

    break;
  }

  __break(1u);
LABEL_170:
  if (v379)
  {
    v299 = v376;
    v300 = v373;
    v301 = v379;
    sub_10010E780(v376, v373, v379);
    sub_1000110B0(v299);

    v302 = v371;
    sub_1002293EC(v299, v300, v301, v371);
    v303 = v335;
    sub_10000E268(v302, v335, &qword_1005D55B8, &unk_1004F2790);
    v304 = sub_1004A44E4();
    v305 = v370;
    (*(*(v304 - 8) + 56))(v370, 1, 1, v304);
    v281 = v344;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(1, v303, v305, v344);
    sub_10001114C(v299);

    sub_10010E7C0(v299, v300, v301);
    sub_10010E7C0(v366, v367, v372);
    sub_100025F40(v302, &qword_1005D55B8, &unk_1004F2790);
    goto LABEL_172;
  }

  v307 = *v386;
  if ((*v386)(v336, 1, v35) == 1)
  {
    v308 = v323;
    sub_10000E268(v333, v323, &unk_1005D54F0, &unk_1004E8DA0);
    if (v307(v308, 1, v35) == 1)
    {
      sub_100025F40(v323, &unk_1005D54F0, &unk_1004E8DA0);
      goto LABEL_176;
    }

    v314 = v322;
    (*v393)(v322, v323, v35);
    v315 = v328;
    (*v389)(v328, v314, v35);
    v316 = v369;
    swift_storeEnumTagMultiPayload();
    v317 = v371;
    sub_100229C7C(v315, v371, type metadata accessor for ConnectionStatus.Error.Details);
    (*v368)(v317, 0, 1, v316);
    v318 = v335;
    sub_10000E268(v317, v335, &qword_1005D55B8, &unk_1004F2790);
    v319 = sub_1004A44E4();
    v320 = v370;
    (*(*(v319 - 8) + 56))(v370, 1, 1, v319);
    v281 = v344;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(0, v318, v320, v344);
    sub_10010E7C0(v366, v367, v372);
    sub_100025F40(v317, &qword_1005D55B8, &unk_1004F2790);
    (*v390)(v314, v35);
LABEL_172:
    v306 = v334;
  }

  else
  {
LABEL_176:
    v309 = v334;
    v310 = v371;
    sub_10000E268(v334, v371, &qword_1005D55B8, &unk_1004F2790);
    v311 = v335;
    sub_10000E268(v310, v335, &qword_1005D55B8, &unk_1004F2790);
    v312 = sub_1004A44E4();
    v313 = v370;
    (*(*(v312 - 8) + 56))(v370, 1, 1, v312);
    v281 = v344;
    ConnectionStatus.Error.init(kind:details:backedOffUntil:)(4, v311, v313, v344);
    sub_10010E7C0(v366, v367, v372);
    sub_100025F40(v310, &qword_1005D55B8, &unk_1004F2790);
    v306 = v309;
  }

  sub_100025F40(v306, &qword_1005D55B8, &unk_1004F2790);
  v284 = v333;
LABEL_155:
  sub_100025F40(v284, &unk_1005D54F0, &unk_1004E8DA0);
  sub_100025F40(v340, &qword_1005CCEB0, &qword_1004E9140);
  v374(v281, 0, 1, v345);
  return sub_100025F40(v336, &unk_1005D54F0, &unk_1004E8DA0);
}

uint64_t sub_100229288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002292E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_100229C14(a1 + *(v7 + 20), v6, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v9 = *v6;
    v10 = *(v6 + 2);
  }

  else
  {
    result = sub_100229288(v6, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v10 = 0;
    v9 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  return result;
}

uint64_t sub_1002293EC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = sub_1004A4064();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a2;
  v31 = a3;

  sub_1004A4044();
  sub_1001C2190();
  v15 = sub_1004A6444();
  v17 = v16;
  (*(v8 + 8))(v10, v7);

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    v15 = 0;
    v17 = 0;
  }

  if ((~a1 & 0xF000000000000007) != 0)
  {
    v21 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
    if (v21 > 12)
    {
      if (v21 != 13)
      {
        if (v21 != 17)
        {
          goto LABEL_22;
        }

        v22 = __ROR8__(a1 + 0x7FFFFFFFFFFFFFFCLL, 3);
        if (v22 > 0x1E || ((1 << v22) & 0x5FDFF9A7) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else if (v21 && v21 != 9)
    {
LABEL_22:
      sub_10001114C(a1);
      goto LABEL_6;
    }

    v30 = a1;
    v23 = sub_1004A5824();
    v20 = v24;

    *v14 = v23;
    if (v17)
    {
      v14[1] = v20;
      v19 = 3;
      v20 = v17;
      v14[2] = v15;
    }

    else
    {
      v19 = 1;
    }

    goto LABEL_20;
  }

LABEL_6:

  if (v17)
  {
    *v14 = v15;
    v19 = 1;
    v20 = v17;
LABEL_20:
    v26 = v29;
    v14[v19] = v20;
    swift_storeEnumTagMultiPayload();
    sub_100229C7C(v14, v26, type metadata accessor for ConnectionStatus.Error.Details);
    v25 = 0;
    return (*(v12 + 56))(v26, v25, 1, v11);
  }

  v25 = 1;
  v26 = v29;
  return (*(v12 + 56))(v26, v25, 1, v11);
}

uint64_t sub_1002296F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_100229C14(a1 + *(v7 + 20), v6, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v8 = sub_1004A5214();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    sub_100229288(v6, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v11 = sub_1004A5214();
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_1002298A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_100229C14(a1 + *(v7 + 20), v6, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v8 = sub_1004A5214();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    sub_100229288(v6, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
    v11 = sub_1004A5214();
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_100229A60(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for CommandConnection.RecentErrors.Error(0) + 20);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a1) = static CommandConnection.RecentErrors.Error.Kind.__derived_enum_equals(_:_:)(a1 + v5, v4);
  sub_100229288(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  return a1 & 1;
}

BOOL sub_100229B34(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error.Kind(0);
  __chkstk_darwin(v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  sub_100229C14(a1 + *(v5 + 20), v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  v6 = swift_getEnumCaseMultiPayload() == 0;
  sub_100229288(v4, type metadata accessor for CommandConnection.RecentErrors.Error.Kind);
  return v6;
}

uint64_t sub_100229C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100229C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for CredentialsState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[16])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CredentialsState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_100229DB4()
{
  v1 = 1685024615;
  v2 = 0x6E6920656279616DLL;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x64696C61766E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100229E30()
{
  v1 = 0xE400000000000000;
  v2 = 1685024615;
  v3 = 0xED000064696C6176;
  v4 = 0x6E6920656279616DLL;
  if (*v0 != 2)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*v0)
  {
    v2 = 0x64696C61766E69;
    v1 = 0xE700000000000000;
  }

  if (*v0 <= 1u)
  {
    v5._countAndFlagsBits = v2;
  }

  else
  {
    v5._countAndFlagsBits = v4;
  }

  if (*v0 <= 1u)
  {
    v6 = v1;
  }

  else
  {
    v6 = v3;
  }

  v5._object = v6;
  sub_1004A5994(v5);

  return 0;
}

unint64_t sub_100229F00()
{
  result = qword_1005D55C0;
  if (!qword_1005D55C0)
  {
    result = swift_getWitnessTable(a5_2, &type metadata for CredentialsState.State, v0, v1);
    atomic_store(result, &qword_1005D55C0);
  }

  return result;
}

uint64_t sub_100229F54(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100229FAC();
  }

  return result;
}

uint64_t sub_100229FAC()
{
  v1 = v0;
  v2 = sub_1004A53F4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1004A5404();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = (v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state);
  if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_state + 16))
  {
    return result;
  }

  v11 = *v10;
  v12 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  *(v10 + 16) = 1;
  if (!*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_timer))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  RestartableTimer.stop()();

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v13 = sub_1004A4A54();
  v14 = sub_1004A6034();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 68158464;
    *(v15 + 4) = 2;
    *(v15 + 8) = 256;
    *(v15 + 10) = *(v1 + 24);

    *(v15 + 11) = 2048;
    *(v15 + 13) = v11;
    *(v15 + 21) = 2048;
    *(v15 + 23) = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%.*hhx] Account data transfer report: received %{iec-bytes}ld, sent %{iec-bytes}ld.", v15, 0x1Fu);
  }

  else
  {
  }

  return (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl29DataTransferReportAccumulator_handler))(v11, v12);
}
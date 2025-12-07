uint64_t sub_1003EA7B8(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  CanTakeOverManagementStateResult = type metadata accessor for DMCAppsCanTakeOverManagementStateResult();
  v2[13] = CanTakeOverManagementStateResult;
  v2[14] = *(CanTakeOverManagementStateResult - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = sub_1001F0C48(&qword_10077F388, &qword_10069FBD0);
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for DMCAppsScope();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v6 = type metadata accessor for DMCAppsClient();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_1003EAA54, 0, 0);
}

uint64_t sub_1003EAA54(uint64_t a1)
{
  static Logger.ddm.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = sub_100625FA0();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] DMC: canTakeOverManagementOfExistingApp", v4, 0xCu);
    sub_1000032A8(v5, &qword_10077F920, &qword_10069E6A0);
  }

  v7 = v1[35];
  v9 = v1[29];
  v8 = v1[30];
  v10 = v1[24];
  v11 = v1[25];
  v12 = v2;
  v14 = v1[22];
  v13 = v1[23];
  v26 = v1[19];
  v27 = v1[20];
  v15 = v1[11];
  v24 = v1[21];
  v25 = v1[12];

  v16 = *(v8 + 8);
  v1[36] = v16;
  v1[37] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v7, v9);
  if (*(v15 + *(type metadata accessor for DDMDeclaration(0) + 76)))
  {
    v17 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v17 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v13 + 104))(v10, *v17, v14);
  (*(v13 + 32))(v11, v10, v14);
  DMCAppsClient.init(scope:)();
  v18 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v15, v18, v19, v25, v24);

  v1[5] = v26;
  v1[6] = swift_getOpaqueTypeConformance2();
  v1[7] = swift_getOpaqueTypeConformance2();
  v1[8] = swift_getOpaqueTypeConformance2();
  v1[9] = swift_getOpaqueTypeConformance2();
  v1[10] = swift_getOpaqueTypeConformance2();
  v20 = sub_10020A748(v1 + 2);
  (*(v27 + 16))(v20, v24, v26);
  v21 = swift_task_alloc();
  v1[38] = v21;
  *v21 = v1;
  v21[1] = sub_1003EAD58;
  v22 = v1[18];

  return DMCAppsClient.canTakeOverManagementOfExistingApp(_:)(v22, v1 + 2);
}

uint64_t sub_1003EAD58()
{
  v1 = *v0;

  sub_10000710C((v1 + 16));

  return _swift_task_switch(sub_1003EAE5C, 0, 0);
}

uint64_t sub_1003EAE5C(uint64_t a1)
{
  v96 = v1;
  v3 = v1[17];
  v2 = v1[18];
  v4 = v1[13];
  v5 = v1[14];
  static Logger.ddm.getter();
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[36];
  v91 = v1[34];
  v89 = v1[29];
  v11 = v1[17];
  if (v9)
  {
    v83 = v1[36];
    v86 = v6;
    v12 = v1[16];
    v80 = v8;
    v13 = v1[13];
    v14 = v1[14];
    v15 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v95 = v78;
    *v15 = 138412546;
    v16 = sub_100625FA0();
    *(v15 + 4) = v16;
    *v77 = v16;
    *(v15 + 12) = 2082;
    v86(v12, v11, v13);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v11, v13);
    v6 = v86;
    v21 = sub_1002346CC(v17, v19, &v95);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v80, "[%@] DMC: canTakeOverManagementOfExistingApp -> %{public}s", v15, 0x16u);
    sub_1000032A8(v77, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v78);

    v83(v91, v89);
  }

  else
  {
    v22 = v1[13];
    v23 = v1[14];

    v20 = *(v23 + 8);
    v20(v11, v22);
    v10(v91, v89);
  }

  v25 = v1[14];
  v24 = v1[15];
  v26 = v1[13];
  v6(v24, v1[18], v26);
  v27 = (*(v25 + 88))(v24, v26);
  if (v27 == enum case for DMCAppsCanTakeOverManagementStateResult.failInternalError(_:))
  {
    v28 = v1[15];
    (*(v1[14] + 96))(v28, v1[13]);
    v29 = *v28;
    v30 = v28[1];
    v74 = v29;
    static Logger.ddm.getter();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    v33 = os_log_type_enabled(v31, v32);
    v87 = v1[36];
    v34 = v1[28];
    v82 = v1[29];
    v84 = v1[31];
    v35 = v1[26];
    v36 = v1[27];
    v38 = v1[20];
    v37 = v1[21];
    v92 = v1[19];
    v79 = v1[13];
    v81 = v1[18];
    if (v33)
    {
      v73 = v1[26];
      v39 = swift_slowAlloc();
      v72 = v37;
      v40 = swift_slowAlloc();
      v71 = v34;
      v41 = swift_slowAlloc();
      v95 = v41;
      *v39 = 138412546;
      v42 = sub_100625FA0();
      *(v39 + 4) = v42;
      *v40 = v42;
      *(v39 + 12) = 2082;
      v43 = sub_1002346CC(v74, v30, &v95);
      v75 = v20;
      v44 = v43;

      *(v39 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%@] An internal error ocurred: %{public}s", v39, 0x16u);
      sub_1000032A8(v40, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v41);

      v87(v84, v82);
      v75(v81, v79);
      (*(v38 + 8))(v72, v92);
      (*(v36 + 8))(v71, v73);
    }

    else
    {

      v87(v84, v82);
      v20(v81, v79);
      (*(v38 + 8))(v37, v92);
      (*(v36 + 8))(v34, v35);
    }

LABEL_20:
    v93 = 0;
    goto LABEL_21;
  }

  if (v27 != enum case for DMCAppsCanTakeOverManagementStateResult.proceed(_:))
  {
    if (v27 == enum case for DMCAppsCanTakeOverManagementStateResult.failCannotTakeOverManagement(_:))
    {
      v76 = v20;
      static Logger.ddm.getter();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        v55 = sub_100625FA0();
        *(v53 + 4) = v55;
        *v54 = v55;
        _os_log_impl(&_mh_execute_header, v51, v52, "[%@] Cannot take over management", v53, 0xCu);
        sub_1000032A8(v54, &qword_10077F920, &qword_10069E6A0);
      }

      v56 = v51;
      v57 = v1[36];
      v58 = v1[33];
    }

    else
    {
      if (v27 != enum case for DMCAppsCanTakeOverManagementStateResult.failSystemApp(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v76 = v20;
      static Logger.ddm.getter();
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v61 = 138412290;
        v63 = sub_100625FA0();
        *(v61 + 4) = v63;
        *v62 = v63;
        _os_log_impl(&_mh_execute_header, v59, v60, "[%@] Cannot manage system app", v61, 0xCu);
        sub_1000032A8(v62, &qword_10077F920, &qword_10069E6A0);
      }

      v56 = v59;
      v57 = v1[36];
      v58 = v1[32];
    }

    v64 = v1[29];
    v94 = v1[28];
    v65 = v1[27];
    v66 = v1[20];
    v88 = v1[21];
    v90 = v1[26];
    v67 = v1[18];
    v85 = v1[19];
    v68 = v1[13];

    v57(v58, v64);
    v76(v67, v68);
    (*(v66 + 8))(v88, v85);
    (*(v65 + 8))(v94, v90);
    goto LABEL_20;
  }

  v46 = v1[27];
  v45 = v1[28];
  v47 = v1[26];
  v49 = v1[20];
  v48 = v1[21];
  v50 = v1[19];
  v20(v1[18], v1[13]);
  (*(v49 + 8))(v48, v50);
  (*(v46 + 8))(v45, v47);
  v93 = 1;
LABEL_21:

  v69 = v1[1];

  return v69(v93);
}

uint64_t sub_1003EB708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  sub_1001F0C48(&qword_10077F380, &qword_1006A96D0);
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for DMCAppsWillDownloadStateResult();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v5 = sub_1001F0C48(&qword_10077F388, &qword_10069FBD0);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for DMCAppsScope();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for DMCAppsClient();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_1003EB9C8, 0, 0);
}

uint64_t sub_1003EB9C8(uint64_t a1)
{
  v2 = v1[15];
  static Logger.ddm.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] DMC: willDownload", v7, 0xCu);
    sub_1000032A8(v8, &qword_10077F920, &qword_10069E6A0);
  }

  v10 = v1[37];
  v12 = v1[33];
  v11 = v1[34];
  v14 = v1[28];
  v13 = v1[29];
  v15 = v4;
  v16 = v1[26];
  v17 = v1[27];
  v29 = v1[24];
  v27 = v1[25];
  v28 = v1[23];
  v18 = v1[13];

  v19 = *(v11 + 8);
  v1[38] = v19;
  v1[39] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v10, v12);
  if (*(v18 + *(type metadata accessor for DDMDeclaration(0) + 76)))
  {
    v20 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v20 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v17 + 104))(v14, *v20, v16);
  (*(v17 + 32))(v13, v14, v16);
  DMCAppsClient.init(scope:)();
  v21 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v18, v21, v22, 0, v27);

  v1[5] = v28;
  v1[6] = swift_getOpaqueTypeConformance2();
  v1[7] = swift_getOpaqueTypeConformance2();
  v1[8] = swift_getOpaqueTypeConformance2();
  v1[9] = swift_getOpaqueTypeConformance2();
  v1[10] = swift_getOpaqueTypeConformance2();
  v23 = sub_10020A748(v1 + 2);
  (*(v29 + 16))(v23, v27, v28);
  v24 = swift_task_alloc();
  v1[40] = v24;
  *v24 = v1;
  v24[1] = sub_1003EBCE4;
  v25 = v1[22];

  return DMCAppsClient.willDownload(_:)(v25, v1 + 2);
}

uint64_t sub_1003EBCE4()
{
  v1 = *v0;

  sub_10000710C((v1 + 16));

  return _swift_task_switch(sub_1003EBDE8, 0, 0);
}

uint64_t sub_1003EBDE8(uint64_t a1)
{
  v67 = v1;
  v3 = v1[21];
  v2 = v1[22];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[15];
  static Logger.ddm.getter();
  v7 = *(v5 + 16);
  v7(v3, v2, v4);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[38];
  v63 = v1[33];
  v65 = v1[36];
  v13 = v1[21];
  if (v11)
  {
    v60 = v1[38];
    v61 = v7;
    v14 = v1[20];
    v15 = v1[17];
    v16 = v1[18];
    v59 = v10;
    v17 = v1[15];
    v18 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v66 = v58;
    *v18 = 138412546;
    *(v18 + 4) = v17;
    *v57 = v17;
    *(v18 + 12) = 2082;
    v61(v14, v13, v15);
    v19 = v17;
    v20 = String.init<A>(describing:)();
    v22 = v21;
    v23 = *(v16 + 8);
    v23(v13, v15);
    v7 = v61;
    v24 = sub_1002346CC(v20, v22, &v66);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v59, "[%@] DMC: willDownload -> %{public}s", v18, 0x16u);
    sub_1000032A8(v57, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v58);

    v60(v65, v63);
  }

  else
  {
    v25 = v1[17];
    v26 = v1[18];

    v23 = *(v26 + 8);
    v23(v13, v25);
    v12(v65, v63);
  }

  v1[41] = v23;
  v28 = v1[18];
  v27 = v1[19];
  v29 = v1[17];
  v7(v27, v1[22], v29);
  v30 = (*(v28 + 88))(v27, v29);
  if (v30 == enum case for DMCAppsWillDownloadStateResult.failInternalError(_:))
  {
    v31 = v1[19];
    v32 = v1[15];
    (*(v1[18] + 96))(v31, v1[17]);
    v33 = *v31;
    v1[43] = *v31;
    v34 = v31[1];
    v1[44] = v34;
    static Logger.ddm.getter();
    v35 = v32;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v1[38];
    v40 = v1[35];
    v41 = v1[33];
    if (v38)
    {
      v42 = v1[15];
      v64 = v1[38];
      v43 = swift_slowAlloc();
      v62 = v40;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v66 = v45;
      *v43 = 138412546;
      *(v43 + 4) = v42;
      *v44 = v42;
      *(v43 + 12) = 2082;
      v46 = v42;
      *(v43 + 14) = sub_1002346CC(v33, v34, &v66);
      _os_log_impl(&_mh_execute_header, v36, v37, "[%@] An internal error ocurred: %{public}s", v43, 0x16u);
      sub_1000032A8(v44, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v45);

      v64(v62, v41);
    }

    else
    {

      v39(v40, v41);
    }

    v51 = v1[16];
    v52 = type metadata accessor for ManagedAppStatus.Reason();
    (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
    v53 = swift_task_alloc();
    v1[45] = v53;
    *v53 = v1;
    v53[1] = sub_1003EC4C8;
    v55 = v1[15];
    v54 = v1[16];
    v56 = v1[13];

    return sub_10030B39C(v56, v54, 1, v55);
  }

  else if (v30 == enum case for DMCAppsWillDownloadStateResult.proceed(_:))
  {
    v47 = swift_task_alloc();
    v1[42] = v47;
    *v47 = v1;
    v47[1] = sub_1003EC3CC;
    v48 = v1[15];
    v49 = v1[13];

    return sub_1003079C8(v49, 1, v48);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_1003EC3CC()
{

  return _swift_task_switch(sub_1003ED634, 0, 0);
}

uint64_t sub_1003EC4C8()
{
  v1 = *(*v0 + 128);

  sub_1000032A8(v1, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1003ED62C, 0, 0);
}

uint64_t sub_1003EC5F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657461647075;
  }

  else
  {
    v3 = 0x6C6C6174736E69;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x657461647075;
  }

  else
  {
    v5 = 0x6C6C6174736E69;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1003EC694()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003EC714(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1003EC780(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003EC7FC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A288, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1003EC85C(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C6174736E69;
  if (*v1)
  {
    v2 = 0x657461647075;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1003EC948(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  __chkstk_darwin(v4 - 8);
  v79 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F0C48(&qword_10077E958, &qword_10069FC00);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v78 = (&v77 - v11);
  __chkstk_darwin(v10);
  v13 = &v77 - v12;
  v14 = type metadata accessor for FilePath();
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v77 - v19;
  __chkstk_darwin(v18);
  v22 = &v77 - v21;
  v23 = type metadata accessor for Logger();
  v82 = *(v23 - 8);
  v83 = v23;
  v24 = __chkstk_darwin(v23);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v77 - v28;
  __chkstk_darwin(v27);
  v31 = &v77 - v30;
  if ([a1 isBeta])
  {
    static Logger.ddm.getter();
    v32 = a2;
    v33 = a1;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v34, v35))
    {
LABEL_5:

      (*(v82 + 8))(v31, v83);
      return 0;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v88[0] = v78;
    *v36 = 138412546;
    *(v36 + 4) = v32;
    *v37 = v32;
    *(v36 + 12) = 2082;
    v38 = v32;
    v39 = [v33 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    FilePath.init(_:)();
    v41 = v80;
    v40 = v81;
    result = (*(v80 + 48))(v13, 1, v81);
    if (result != 1)
    {
      (*(v41 + 32))(v22, v13, v40);
      v43 = sub_1004D53C0();
      v45 = v44;
      (*(v41 + 8))(v22, v40);
      v46 = sub_1002346CC(v43, v45, v88);

      *(v36 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%@] TestFlight app cannot be managed at path: %{public}s", v36, 0x16u);
      sub_1000032A8(v37, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v78);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (([a1 isProfileValidated] & 1) == 0)
  {
    sub_10061A948(&v86);
    if (!v87)
    {
      sub_1000032A8(&v86, &unk_10077FA50, &unk_1006A0BD0);
      if (([a1 applicationMissingRequiredSINF] & 1) == 0)
      {
        static Logger.ddm.getter();
        v47 = a2;
        v48 = a1;
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v88[0] = v78;
          *v51 = 138412546;
          *(v51 + 4) = v47;
          v77 = v52;
          *v52 = v47;
          *(v51 + 12) = 2082;
          v53 = v47;
          v54 = [v48 URL];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          FilePath.init(_:)();
          v55 = v80;
          v56 = v81;
          result = (*(v80 + 48))(v9, 1, v81);
          if (result == 1)
          {
LABEL_28:
            __break(1u);
            return result;
          }

          (*(v55 + 32))(v17, v9, v56);
          v57 = sub_1004D53C0();
          v59 = v58;
          (*(v55 + 8))(v17, v56);
          v60 = sub_1002346CC(v57, v59, v88);

          *(v51 + 14) = v60;
          _os_log_impl(&_mh_execute_header, v49, v50, "[%@] No distributor and not factory, cannot be managed at path: %{public}s", v51, 0x16u);
          sub_1000032A8(v77, &qword_10077F920, &qword_10069E6A0);

          sub_10000710C(v78);
        }

        (*(v82 + 8))(v26, v83);
        return 0;
      }

      return 1;
    }

    sub_1001DFDBC(&v86, v88);
    sub_10020A980(v88, &v86);
    sub_1001F0C48(&qword_10077E970, &qword_10069E920);
    if (swift_dynamicCast())
    {
      if (v84 == 0xD000000000000012 && 0x80000001006C2DF0 == v85)
      {

LABEL_21:
        sub_10000710C(v88);
        return 1;
      }

      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v61)
      {
        goto LABEL_21;
      }
    }

    static Logger.ddm.getter();
    v62 = a2;
    v63 = a1;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v86 = v77;
      *v66 = 138412546;
      *(v66 + 4) = v62;
      *v67 = v62;
      *(v66 + 12) = 2082;
      v68 = v62;
      v69 = [v63 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v70 = v78;
      FilePath.init(_:)();
      v72 = v80;
      v71 = v81;
      result = (*(v80 + 48))(v70, 1, v81);
      if (result == 1)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      (*(v72 + 32))(v20, v70, v71);
      v73 = sub_1004D53C0();
      v75 = v74;
      (*(v72 + 8))(v20, v71);
      v76 = sub_1002346CC(v73, v75, &v86);

      *(v66 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v64, v65, "[%@] Alt-distributed app cannot be managed at path: %{public}s", v66, 0x16u);
      sub_1000032A8(v67, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v77);
    }

    (*(v82 + 8))(v29, v83);
    sub_10000710C(v88);
    return 0;
  }

  return 1;
}

uint64_t sub_1003ED304(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1003ED34C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDMDeclaration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003ED3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDMDeclaration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003ED424(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003ED43C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1003ED498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1003ED4E8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1003ED52C()
{
  result = qword_100783718;
  if (!qword_100783718)
  {
    result = swift_getWitnessTable("Ax\t", &type metadata for ManagementOperation, v0, v1);
    atomic_store(result, &qword_100783718);
  }

  return result;
}

unint64_t sub_1003ED584()
{
  result = qword_100783720;
  if (!qword_100783720)
  {
    result = swift_getWitnessTable(byte_1006A9890, &type metadata for AppsClient.ApplyResult, v0, v1);
    atomic_store(result, &qword_100783720);
  }

  return result;
}

unint64_t sub_1003ED5D8()
{
  result = qword_100783728;
  if (!qword_100783728)
  {
    result = swift_getWitnessTable("qx\t", &type metadata for ManagementOperation, v0, v1);
    atomic_store(result, &qword_100783728);
  }

  return result;
}

uint64_t type metadata accessor for DownloadRequest(uint64_t a1)
{
  result = qword_100783788;
  if (!qword_100783788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003ED6AC(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      type metadata accessor for LogKey();
      if (v3 <= 0x3F)
      {
        sub_10000585C(319, &qword_100782B10, &type metadata for BlockDigest);
        if (v4 <= 0x3F)
        {
          sub_10000585C(319, &qword_100783798, &type metadata for DownloadReason);
          if (v5 <= 0x3F)
          {
            sub_1003ED828(319);
            if (v6 <= 0x3F)
            {
              sub_10000585C(319, &qword_1007819E0, &type metadata for String);
              if (v7 <= 0x3F)
              {
                sub_1003ED88C();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1003ED828(uint64_t a1)
{
  if (!qword_1007837A0)
  {
    sub_1001F76D0(&qword_10077E970, &qword_10069E920);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1007837A0);
    }
  }
}

unint64_t sub_1003ED88C()
{
  result = qword_1007837A8;
  if (!qword_1007837A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1007837A8);
  }

  return result;
}

unint64_t sub_1003ED900(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 sub_1003ED91C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1003ED940(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 80) >> 60) & 3 | (4 * (*(a1 + 88) >> 1));
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1003ED99C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 112) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = (-a2 & 3) << 60;
      *(a1 + 88) = (-a2 >> 1) & 0x7FFFFFFE;
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003EDA28(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 88) & 1 | (a2 << 62);
    *(result + 80) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 88) = v2;
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 88) = 0x8000000000000000;
  }

  return result;
}

Swift::Int sub_1003EDA84(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1003EDB94(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1003EDCA8(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1003EDDCC(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003EDEF0()
{
  v1[2] = v0;
  v2 = type metadata accessor for NWEndpoint();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for NetworkPath(0);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003EE038, 0, 0);
}

uint64_t sub_1003EE038()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  v8 = type metadata accessor for DownloadRequest(0);
  v0[10] = v8;
  v9 = *(v2 + 16);
  v9(v1, v7 + *(v8 + 24), v4);
  v9(v3, v1, v4);
  (*(v6 + 104))(v3, enum case for NWEndpoint.url(_:), v5);
  type metadata accessor for NWParameters();
  static NWParameters.udp.getter();
  type metadata accessor for NWConnection();
  swift_allocObject();
  v10 = NWConnection.init(to:using:)();
  v0[11] = v10;
  v11 = swift_allocObject();
  v0[12] = v11;
  *(v11 + 16) = 0;
  v12 = swift_task_alloc();
  v0[13] = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = type metadata accessor for NWPath();
  *v13 = v0;
  v13[1] = sub_1003EE21C;
  v15 = v0[9];

  return withCheckedContinuation<A>(isolation:function:_:)(v15, 0, 0, 0xD000000000000025, 0x80000001006CAE40, sub_1003EED98, v12, v14);
}

uint64_t sub_1003EE21C()
{

  return _swift_task_switch(sub_1003EE334, 0, 0);
}

uint64_t sub_1003EE334()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[2];
  NWConnection.forceCancel()();

  (*(v4 + 8))(v3, v5);
  v7 = sub_1001EE010(v1, *(v6 + *(v2 + 28) + 8));
  sub_1001F0CF4(v1);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1003EE43C(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1003EE550@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003EED4C(*a1);
  *a2 = result;
  return result;
}

void sub_1003EE580(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000064616F6C6ELL;
  v4 = 0x776F642D6F747561;
  v5 = 0xED00006574616470;
  v6 = 0x752D6C61756E616DLL;
  v7 = 0xEA00000000006461;
  v8 = 0x6F6C6E776F646572;
  if (v2 != 4)
  {
    v8 = 0x65726F74736572;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000657461;
  v10 = 0x6470752D6F747561;
  if (v2 != 1)
  {
    v10 = 7959906;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1003EE660()
{
  result = qword_100783808;
  if (!qword_100783808)
  {
    result = swift_getWitnessTable("}t\t", &type metadata for DownloadReason, v0, v1);
    atomic_store(result, &qword_100783808);
  }

  return result;
}

Swift::Int sub_1003EE744()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  return Hasher._finalize()();
}

Swift::Int sub_1003EE7B4(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v1);
  return Hasher._finalize()();
}

uint64_t sub_1003EE7F4()
{
  sub_100272F00(v0, &v2);
  if (v4 > 1u)
  {
    if (v4 == 2)
    {

      sub_1003EE8A4(&v3);
      return 0x64656C696146;
    }

    else
    {
      return 0x64656873696E6946;
    }
  }

  else if (v4)
  {
    sub_10031DDD4(&v2);
    return 0x64656B726150;
  }

  else
  {
    sub_10031DDD4(&v2);
    return 0x646573756150;
  }
}

uint64_t sub_1003EE8A4(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_10077E968, &unk_1006A30E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003EE90C(uint64_t a1)
{
  v2 = type metadata accessor for URLError.Code();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for URLError();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v26 = a1;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940, &qword_10069D7E0);
  if (swift_dynamicCast())
  {
    (*(v10 + 32))(v13, v15, v9);
    sub_1003EEDA0(&qword_100783820, &type metadata accessor for URLError, &protocol conformance descriptor for URLError);
    _BridgedStoredNSError.code.getter();
    static URLError.Code.networkConnectionLost.getter();
    sub_1003EEDA0(&qword_100783828, &type metadata accessor for URLError.Code, &protocol conformance descriptor for URLError.Code);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    v17 = v3 + 8;
    v18 = *(v3 + 8);
    v25 = v17;
    v18(v6, v2);
    if (v16)
    {

      v18(v8, v2);
      (*(v10 + 8))(v13, v9);
      v19 = 1;
    }

    else
    {
      v24 = v10;
      static URLError.Code.notConnectedToInternet.getter();
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18(v6, v2);
      if (v21)
      {

        v18(v8, v2);
        (*(v24 + 8))(v13, v9);
        v19 = 2;
      }

      else
      {
        static URLError.Code.timedOut.getter();
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        v18(v6, v2);
        v18(v8, v2);
        if (v22)
        {
          (*(v24 + 8))(v13, v9);

          v19 = 3;
        }

        else
        {
          v19 = URLError._nsError.getter();

          (*(v24 + 8))(v13, v9);
        }
      }
    }
  }

  else
  {
    v19 = a1;
  }

  return v19;
}

unint64_t sub_1003EED4C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A2D8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003EEDA0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

__n128 sub_1003EEDE8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1003EEE14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1003EEE5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003EEEC8(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for HTTPError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for HTTPError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003EEF70(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

__n128 sub_1003EEF98(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1003EEFBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 73))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 72);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003EEFF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003EF048(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_1003EF088()
{
  v1 = *(v0 + 24);
  if (v1 <= 1)
  {
    if (*(v0 + 24))
    {
      return 0x64656C696166;
    }

    else
    {
      return 0x6574656C706D6F63;
    }
  }

  else if (v1 == 2)
  {
    return 0x73736572676F7270;
  }

  else if (v1 == 3)
  {
    return 0x6C6F686563616C70;
  }

  else
  {
    v3 = *v0;
    if (v0[1] | v0[2] | *v0)
    {
      if (v3 == 1 && *(v0 + 1) == 0)
      {
        return 0x646573756170;
      }

      else if (v3 == 2 && *(v0 + 1) == 0)
      {
        return 0x64656D75736572;
      }

      else
      {
        return 0x697469726F697270;
      }
    }

    else
    {
      return 0x64656C65636E6163;
    }
  }
}

void sub_1003EF1B0()
{
  ObjectType = swift_getObjectType();
  v30 = sub_1001F0C48(&qword_100783A38, &qword_1006AA0B0);
  v1 = *(v30 - 8);
  __chkstk_darwin(v30);
  v3 = &ObjectType - v2;
  v4 = sub_1001F0C48(&unk_100783A00, &unk_1006AA090);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  v29 = sub_1001F0C48(&qword_1007839F8, &qword_1006AA088);
  v8 = *(v29 - 8);
  __chkstk_darwin(v29);
  v10 = &ObjectType - v9;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1001F6C18(_swiftEmptyArrayStorage);
    v11 = v27;
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  v12 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_observers;
  sub_1001F0C48(&unk_100783A40, &qword_1006AA0B8);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v11;
  *&v0[v12] = v13;
  v14 = v30;
  (*(v1 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v30);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v1 + 8))(v3, v14);
  (*(v8 + 32))(&v0[OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_stream], v10, v29);
  v15 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_continuation;
  (*(v5 + 32))(&v0[OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_continuation], v7, v4);
  v16 = *(v5 + 16);
  v16(v7, &v0[v15], v4);
  v17 = type metadata accessor for InstallCoordinationInstallObserver.Delegate(0);
  v18 = objc_allocWithZone(v17);
  v16(&v18[OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Delegate_continuation], v7, v4);
  v32.receiver = v18;
  v32.super_class = v17;
  v19 = objc_msgSendSuper2(&v32, "init");
  (*(v5 + 8))(v7, v4);
  *&v0[OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_delegate] = v19;
  sub_1001F0C48(&qword_10077E640, &qword_10069D700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A2450;
  v21 = v19;
  *(inited + 32) = UInt._bridgeToObjectiveC()();
  sub_1001F6EE4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v22 = objc_allocWithZone(IXAppInstallObserver);
  v23 = v21;
  v24 = String._bridgeToObjectiveC()();
  sub_1003F9BE0();
  sub_1003F9C4C(&qword_100783A58, sub_1003F9BE0, &protocol conformance descriptor for NSObject);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v26 = [v22 initWithMachServiceName:v24 forClients:isa delegate:v23];

  if (v26)
  {
    *&v0[OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_installObserver] = v26;
    v31.receiver = v0;
    v31.super_class = ObjectType;
    objc_msgSendSuper2(&v31, "init");
  }

  else
  {
    __break(1u);
  }
}

void sub_1003EF6B4(void *a1)
{
  v2 = v1;
  v4 = sub_1001F0C48(&unk_100783A00, &unk_1006AA090);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.restore.getter();
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v8;
    v18 = v17;
    *v16 = 138412290;
    *(v16 + 4) = v12;
    *v17 = v12;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Began observing coordinator: %@", v16, 0xCu);
    sub_1000032A8(v18, &qword_10077F920, &qword_10069E6A0);
    v8 = v28;

    v2 = v29;
  }

  (*(v9 + 8))(v11, v8);
  v20 = *(v5 + 16);
  v20(v7, v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_continuation, v4);
  v21 = type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer_coordinator] = v12;
  v20(&v22[OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer_continuation], v7, v4);
  v30.receiver = v22;
  v30.super_class = v21;
  v23 = v12;
  v24 = objc_msgSendSuper2(&v30, "init");
  [v23 setObserver:v24];
  v25 = (*(v5 + 8))(v7, v4);
  v26 = *(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserver_observers);
  __chkstk_darwin(v25);
  *(&v27 - 2) = v24;
  os_unfair_lock_lock(v26 + 6);
  sub_1003F0FE0();
  os_unfair_lock_unlock(v26 + 6);
}

void sub_1003EF9FC(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v20 = a2;
  sub_100209E44(sub_1003F9C2C, v19, v8);
  if (v9)
  {
    v10 = v9;
    static Logger.restore.getter();
    v11 = v10;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = *&v11[OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer_coordinator];
      *(v14 + 4) = v16;
      *v15 = v16;
      v17 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Stopped observing coordinator: %@", v14, 0xCu);
      sub_1000032A8(v15, &qword_10077F920, &qword_10069E6A0);
    }

    (*(v5 + 8))(v7, v4);
    v18 = sub_1004FD00C(v11);
  }
}

uint64_t sub_1003EFC04(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(*a1 + OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer_coordinator) uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

void sub_1003EFE3C()
{
  v1 = *v0;
  sub_1001F0C48(&qword_1007839F8, &qword_1006AA088);
  AsyncStream.makeAsyncIterator()();
}

uint64_t sub_1003F01A8(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  sub_100323B90(a1, v19);
  if (!v20)
  {
    sub_1000032A8(v19, &qword_100783A30, &unk_10069E960);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v14 = 0;
    return v14 & 1;
  }

  v11 = v18;
  v12 = [*&v18[OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer_coordinator] uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [*(v2 + OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer_coordinator) uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = static UUID.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return v14 & 1;
}

void sub_1003F065C(uint64_t a1)
{
  sub_100009B90(319, &qword_100783898, &type metadata accessor for AsyncStream.Continuation);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

BOOL sub_1003F088C(void *a1)
{
  v2 = [a1 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([a1 code] == 3)
  {
    return 1;
  }

LABEL_10:
  v10 = [a1 domain];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == 0xD000000000000020 && 0x80000001006CB070 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  return [a1 code] == 1;
}

uint64_t sub_1003F0A98(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1001F0C48(&unk_100783A20, &unk_1006AA0A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  v11 = a3;
  v12 = a1;
  v13 = [v11 identity];
  v16[0] = a3;
  v16[1] = v13;
  v16[3] = 0;
  v16[4] = 0;
  v16[2] = a4;
  v17 = 4;
  v14 = v11;
  sub_1001F0C48(&unk_100783A00, &unk_1006AA090);
  AsyncStream.Continuation.yield(_:)();

  return (*(v8 + 8))(v10, v7);
}

void sub_1003F0E0C(uint64_t a1)
{
  sub_100009B90(319, &qword_100783898, &type metadata accessor for AsyncStream.Continuation);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1003F0EB8(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

uint64_t sub_1003F0ED4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003F0F1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003F0F7C()
{
  result = qword_1007839E8;
  if (!qword_1007839E8)
  {
    v3 = sub_1001F76D0(&qword_1007839F0, &unk_1006B2A50);
    result = swift_getWitnessTable(&protocol conformance descriptor for AsyncStream<A>.Iterator, v3, v0, v1);
    atomic_store(result, &qword_1007839E8);
  }

  return result;
}

uint64_t sub_1003F1030(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v33 = a2 + 56;
  v29 = result + 56;
  v30 = result;
  v28 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v31 = (v7 - 1) & v7;
LABEL_13:
    v12 = (*(result + 48) + 32 * (v9 | (v3 << 6)));
    v14 = *v12;
    v13 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    Hasher.init(_seed:)();

    String.hash(into:)();
    if (v15)
    {
      Hasher._combine(_:)(1u);
      v17 = v16;
      String.hash(into:)();
    }

    else
    {
      v17 = v16;
      Hasher._combine(_:)(0);
    }

    v18 = Hasher._finalize()();
    v19 = -1 << *(v2 + 32);
    v20 = v18 & ~v19;
    if (((*(v33 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_36:

      return 0;
    }

    v21 = ~v19;
    v22 = *(a2 + 48);
    while (1)
    {
      v23 = (v22 + 32 * v20);
      v25 = v23[2];
      v24 = v23[3];
      v26 = *v23 == v14 && v23[1] == v13;
      if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v24)
      {
        break;
      }

      if (!v15)
      {
        goto LABEL_33;
      }

LABEL_19:
      v20 = (v20 + 1) & v21;
      if (((*(v33 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    if (!v15)
    {
      goto LABEL_19;
    }

    v27 = v25 == v17 && v24 == v15;
    if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_33:

    v4 = v29;
    result = v30;
    v7 = v31;
    v2 = a2;
    v8 = v28;
  }

  while (v31);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v31 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F12A0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1003F57D4(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1003F144C(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  Hasher.init(_seed:)();
  v7 = a2 & 1;
  ManagedAppDeclaration.ManagementScope.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while ((static ManagedAppDeclaration.ManagementScope.== infix(_:_:)() & 1) == 0)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(*(v6 + 48) + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1003F59BC(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_1003F155C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1003F5B14(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1003F16AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *v4;
  Hasher.init(_seed:)();
  v28 = a2;
  v9 = a4 & 1;
  StoreAppIdentifier.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v25 = a4;
    v13 = ~v11;
    while (1)
    {
      v14 = *(v8 + 48) + 24 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_1001DFDA4(*v14, v16, v17);
      v18 = static StoreAppIdentifier.== infix(_:_:)();
      sub_1001DFEBC(v15, v16, v17);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1001DFEBC(v28, a3, v25 & 1);
    v21 = *(v8 + 48) + 24 * v12;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    *a1 = *v21;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    sub_1001DFDA4(v22, v23, v24);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_1001DFDA4(v28, a3, v9);
    sub_1003F5C94(v28, a3, v9, v12, isUniquelyReferenced_nonNull_native);
    *v26 = v29;
    *a1 = v28;
    *(a1 + 8) = a3;
    *(a1 + 16) = v9;
    return 1;
  }
}

uint64_t sub_1003F1870(Swift::Int *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4, Swift::Int a5)
{
  v10 = *v5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (a5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v11 = Hasher._finalize()();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_22:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_1003F5E60(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }

  v15 = ~v13;
  v28 = v10;
  v16 = *(v10 + 48);
  while (1)
  {
    v17 = (v16 + 32 * v14);
    v19 = v17[2];
    v18 = v17[3];
    v20 = *v17 == a2 && v17[1] == a3;
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_7;
    }

    if (v18)
    {
      break;
    }

    if (!a5)
    {
      goto LABEL_21;
    }

LABEL_7:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (!a5)
  {
    goto LABEL_7;
  }

  v21 = v19 == a4 && v18 == a5;
  if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_21:

  v22 = (*(v28 + 48) + 32 * v14);
  v23 = v22[1];
  v25 = v22[2];
  v24 = v22[3];
  *a1 = *v22;
  a1[1] = v23;
  a1[2] = v25;
  a1[3] = v24;

  return 0;
}

uint64_t sub_1003F1A70(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for MessageRegistration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1003F9C4C(&qword_100783A98, &type metadata accessor for MessageRegistration, &protocol conformance descriptor for MessageRegistration);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1003F9C4C(&qword_100783AA0, &type metadata accessor for MessageRegistration, &protocol conformance descriptor for MessageRegistration);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1003F6054(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1003F1D50(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3 & 1);
  sub_1003F98D4(v20, a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_10:
    v13 = a3 & 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[0] = *v3;

    sub_1003F62F8(v15, v13, v9, isUniquelyReferenced_nonNull_native);
    *v3 = *&v20[0];
    *a1 = a2;
    *(a1 + 8) = v13;
    return 1;
  }

  v10 = ~v8;
  while (1)
  {
    if (*(*(v6 + 48) + 16 * v9 + 8))
    {
      if ((a3 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (a3)
    {
      goto LABEL_4;
    }

    v12 = sub_1003F1030(v11, a2);

    if (v12)
    {
      break;
    }

LABEL_4:
    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v17 = *(v6 + 48) + 16 * v9;
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  *a1 = v18;
  *(a1 + 8) = v17;

  return 0;
}

uint64_t sub_1003F1EE0(__int128 *a1, __int128 *a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  v10 = *(a2 + 40);
  String.hash(into:)();
  v49 = v7;
  Hasher._combine(_:)(v7);
  v48 = v8;
  Hasher._combine(_:)(v8);
  v47 = v9;
  Hasher._combine(_:)(v9);
  v40 = a2;
  v12 = *(a2 + 6);
  v11 = *(a2 + 7);
  v42 = v10;
  Hasher._combine(_:)(v10 & 1);
  v45 = v11;
  v46 = v12;
  String.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v4 + 32);
  v15 = v13 & ~v14;
  v44 = v4 + 56;
  if ((*(v4 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v43 = ~v14;
    v38 = v4;
    v16 = *(v4 + 48);
    while (1)
    {
      v17 = v16 + (v15 << 6);
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      v20 = *(v17 + 32);
      v21 = *(v17 + 40);
      v22 = *(v17 + 48);
      v23 = *(v17 + 56);
      v24 = *v17 == v5 && *(v17 + 8) == v6;
      if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v25 = v19 == v49 && v18 == v48;
        v26 = v25 && v20 == v47;
        if (v26 && ((v21 ^ v42) & 1) == 0)
        {
          v27 = v22 == v46 && v23 == v45;
          if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }
      }

      v15 = (v15 + 1) & v43;
      if (((*(v44 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    sub_1001F7250(v40);
    v28 = (*(v38 + 48) + (v15 << 6));
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[3];
    v51[2] = v28[2];
    v51[3] = v31;
    v51[0] = v29;
    v51[1] = v30;
    v32 = v28[1];
    *a1 = *v28;
    a1[1] = v32;
    v33 = v28[3];
    a1[2] = v28[2];
    a1[3] = v33;
    sub_1001F71F4(v51, v50);
    return 0;
  }

  else
  {
LABEL_24:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = *v39;
    sub_1001F71F4(v40, v51);
    sub_1003F64AC(v40, v15, isUniquelyReferenced_nonNull_native);
    *v39 = v50[0];
    v36 = v40[1];
    *a1 = *v40;
    a1[1] = v36;
    v37 = v40[3];
    a1[2] = v40[2];
    a1[3] = v37;
    return 1;
  }
}

uint64_t sub_1003F2150(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  sub_1005ADE10(a2);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_85:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    sub_1003F6708(a2, v7, isUniquelyReferenced_nonNull_native);
    *v20 = v22;
    result = 1;
    goto LABEL_88;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xED0000726574656DLL;
    v10 = 0x6F72656C65636361;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xE500000000000000;
        v10 = 0x74696B7261;
        break;
      case 2:
        v9 = 0xE500000000000000;
        v10 = 0x37766D7261;
        break;
      case 3:
        v9 = 0xE500000000000000;
        v10 = 0x34366D7261;
        break;
      case 4:
        v10 = 0x75636F466F747561;
        v9 = 0xEF6172656D614373;
        break;
      case 5:
        v10 = 0x746F6F7465756C62;
        v9 = 0xEB00000000454C68;
        break;
      case 6:
        v10 = 0x6C466172656D6163;
        v9 = 0xEB00000000687361;
        break;
      case 7:
        v10 = 0xD000000000000011;
        v9 = 0x80000001006C2E50;
        break;
      case 8:
        v9 = 0xE700000000000000;
        v10 = 0x74696B656D6167;
        break;
      case 9:
        v10 = 7565415;
        v9 = 0xE300000000000000;
        break;
      case 0xA:
        v10 = 0x706F63736F727967;
        v9 = 0xE900000000000065;
        break;
      case 0xB:
        v10 = 0x696B68746C616568;
        v9 = 0xE900000000000074;
        break;
      case 0xC:
        v10 = 0xD000000000000010;
        v9 = 0x80000001006C2E90;
        break;
      case 0xD:
        v10 = 0x6D6F74656E67616DLL;
        v9 = 0xEC00000072657465;
        break;
      case 0xE:
        v9 = 0xE500000000000000;
        v10 = 0x6C6174656DLL;
        break;
      case 0xF:
        v10 = 0x6F68706F7263696DLL;
        v9 = 0xEA0000000000656ELL;
        break;
      case 0x10:
        v9 = 0xE300000000000000;
        v10 = 6514286;
        break;
      case 0x11:
        v10 = 0x73656C676E65706FLL;
        v9 = 0xE900000000000031;
        break;
      case 0x12:
        v9 = 0xE900000000000032;
        goto LABEL_29;
      case 0x13:
        v9 = 0xE900000000000033;
LABEL_29:
        v10 = 0x73656C676E65706FLL;
        break;
      case 0x14:
        v10 = 0x65506F5472656570;
        v9 = 0xEA00000000007265;
        break;
      case 0x15:
        v9 = 0xE300000000000000;
        v10 = 7564659;
        break;
      case 0x16:
        v11 = 0x436C6C697473;
        goto LABEL_27;
      case 0x17:
        v10 = 0x6E6F6870656C6574;
        v9 = 0xE900000000000079;
        break;
      case 0x18:
        v11 = 0x436F65646976;
LABEL_27:
        v10 = v11 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
        v9 = 0xEB00000000617265;
        break;
      case 0x19:
        v9 = 0xE400000000000000;
        v10 = 1768319351;
        break;
      default:
        break;
    }

    v12 = 0x6F72656C65636361;
    v13 = 0xED0000726574656DLL;
    switch(a2)
    {
      case 1:
        v13 = 0xE500000000000000;
        if (v10 == 0x74696B7261)
        {
          goto LABEL_79;
        }

        goto LABEL_80;
      case 2:
        v13 = 0xE500000000000000;
        if (v10 != 0x37766D7261)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 3:
        v13 = 0xE500000000000000;
        if (v10 != 0x34366D7261)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 4:
        v13 = 0xEF6172656D614373;
        if (v10 != 0x75636F466F747561)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 5:
        v15 = 0x746F6F7465756C62;
        v16 = 4541544;
        goto LABEL_75;
      case 6:
        v15 = 0x6C466172656D6163;
        v16 = 6845281;
        goto LABEL_75;
      case 7:
        v13 = 0x80000001006C2E50;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 8:
        v13 = 0xE700000000000000;
        if (v10 != 0x74696B656D6167)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 9:
        v13 = 0xE300000000000000;
        if (v10 != 7565415)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 10:
        v13 = 0xE900000000000065;
        if (v10 != 0x706F63736F727967)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 11:
        v13 = 0xE900000000000074;
        if (v10 != 0x696B68746C616568)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 12:
        v13 = 0x80000001006C2E90;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 13:
        v13 = 0xEC00000072657465;
        if (v10 != 0x6D6F74656E67616DLL)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 14:
        v13 = 0xE500000000000000;
        if (v10 != 0x6C6174656DLL)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 15:
        v13 = 0xEA0000000000656ELL;
        if (v10 != 0x6F68706F7263696DLL)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 16:
        v13 = 0xE300000000000000;
        if (v10 != 6514286)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 17:
        v13 = 0xE900000000000031;
        if (v10 != 0x73656C676E65706FLL)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 18:
        v13 = 0xE900000000000032;
        if (v10 != 0x73656C676E65706FLL)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 19:
        v13 = 0xE900000000000033;
        v12 = 0x73656C676E65706FLL;
        goto LABEL_78;
      case 20:
        v13 = 0xEA00000000007265;
        if (v10 != 0x65506F5472656570)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 21:
        v13 = 0xE300000000000000;
        if (v10 != 7564659)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 22:
        v14 = 0x436C6C697473;
        goto LABEL_74;
      case 23:
        v13 = 0xE900000000000079;
        if (v10 != 0x6E6F6870656C6574)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 24:
        v14 = 0x436F65646976;
LABEL_74:
        v15 = v14 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
        v16 = 6386277;
LABEL_75:
        v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v10 != v15)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      case 25:
        v13 = 0xE400000000000000;
        if (v10 != 1768319351)
        {
          goto LABEL_80;
        }

        goto LABEL_79;
      default:
LABEL_78:
        if (v10 != v12)
        {
          goto LABEL_80;
        }

LABEL_79:
        if (v9 != v13)
        {
LABEL_80:
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            goto LABEL_87;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_85;
          }

          continue;
        }

LABEL_87:
        result = 0;
        LOBYTE(a2) = *(*(v4 + 48) + v7);
LABEL_88:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_1003F28DC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1003F3178(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1003F4A7C(v20 + 1);
    }

    v18 = v8;
    sub_1003F5750(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1003F6ED8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1003F2AF4(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1003F7038(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1003F2BF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1003F9C4C(&qword_100781FF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1003F9C4C(&qword_100783AC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1003F7184(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1003F2ED0(uint64_t a1, Swift::UInt64 *a2)
{
  v22 = a1;
  v4 = type metadata accessor for DownloadRequest(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  Hasher.init(_seed:)();
  v21 = a2;
  v9 = *a2;
  Hasher._combine(_:)(*a2);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v5 + 72);
    while (1)
    {
      sub_10031DF08(*(v8 + 48) + v14 * v12, v7);
      v15 = *v7;
      sub_100272F5C(v7);
      if (v15 == v9)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100272F5C(v21);
    sub_10031DF08(*(v8 + 48) + v14 * v12, v22);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v21;
    sub_10031DF08(v21, v7);
    v23[0] = *v2;
    sub_1003F7428(v7, v12, isUniquelyReferenced_nonNull_native);
    v18 = v22;
    *v2 = v23[0];
    sub_100273394(v17, v18);
    return 1;
  }
}

uint64_t sub_1003F3098(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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
    sub_1003F763C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_1003F3178(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001F0C48(&unk_100783A10, &qword_10069E6F0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003F4A7C(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1003F3358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_10077E928, &unk_10069E6D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1003F35D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&unk_100783A70, &unk_10069E700);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      ManagedAppDeclaration.ManagementScope.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_1003F3824(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_100783A60, &qword_10069E6E0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1003F3A84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_100783A68, &unk_1006AA0C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      Hasher.init(_seed:)();
      StoreAppIdentifier.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1003F3CFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_10077E940, &qword_1006AA0D0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      Hasher.init(_seed:)();
      v34 = v20;
      String.hash(into:)();
      if (v22)
      {
        Hasher._combine(_:)(1u);
        v23 = v21;
        String.hash(into:)();
      }

      else
      {
        v23 = v21;
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
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
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v34;
      v14[2] = v23;
      v14[3] = v22;
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

uint64_t sub_1003F3FA8(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for MessageRegistration();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1001F0C48(&qword_100783AA8, &unk_1006AA0E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1003F9C4C(&qword_100783A98, &type metadata accessor for MessageRegistration, &protocol conformance descriptor for MessageRegistration);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_1003F4304(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_100783A90, &qword_1006B0300);
  result = static _SetStorage.resize(original:capacity:move:)();
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
    for (i = result + 56; v10; ++*(v5 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v16 = *(v3 + 48) + 16 * (v13 | (v6 << 6));
      v17 = *v16;
      v18 = *(v16 + 8);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      sub_1003F98D4(v21, v17);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v19 = *(v5 + 48) + 16 * result;
      *v19 = v17;
      *(v19 + 8) = v18;
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v20 = 1 << *(v3 + 32);
    if (v20 >= 64)
    {
      bzero((v3 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v20;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1003F4504(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_10077E948, &qword_10069E710);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v38 = (v3 + 56);
    v39 = v3;
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
    v36 = v1;
    v37 = (v7 + 63) >> 6;
    v10 = v4 + 56;
    v40 = v4;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v41 = (v9 - 1) & v9;
LABEL_15:
      v17 = *(v3 + 48) + ((v13 | (v6 << 6)) << 6);
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v22 = *(v17 + 32);
      v23 = *(v17 + 40);
      *v42 = *(v17 + 41);
      *&v42[3] = *(v17 + 44);
      v24 = *(v17 + 48);
      v25 = *(v17 + 56);
      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23 & 1);
      String.hash(into:)();
      result = Hasher._finalize()();
      v5 = v40;
      v26 = -1 << *(v40 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v10 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v10 + 8 * v28);
          if (v32 != -1)
          {
            v11 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v27) & ~*(v10 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v40 + 48) + (v11 << 6);
      *v12 = v18;
      *(v12 + 8) = v19;
      *(v12 + 16) = v20;
      *(v12 + 24) = v21;
      *(v12 + 32) = v22;
      *(v12 + 40) = v23;
      *(v12 + 41) = *v42;
      *(v12 + 44) = *&v42[3];
      *(v12 + 48) = v24;
      *(v12 + 56) = v25;
      ++*(v40 + 16);
      v3 = v39;
      v9 = v41;
    }

    v14 = v6;
    result = v38;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v37)
      {
        break;
      }

      v16 = v38[v6];
      ++v14;
      if (v16)
      {
        v13 = __clz(__rbit64(v16));
        v41 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      v34 = v5;
      bzero(v38, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v5 = v34;
    }

    else
    {
      *v38 = -1 << v33;
    }

    v2 = v36;
    *(v3 + 16) = 0;
  }

  v35 = v5;

  *v2 = v35;
  return result;
}

Swift::Int sub_1003F4810(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&unk_100783A80, &qword_1006AA0D8);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      sub_1005ADE10(v17);
      String.hash(into:)();

      result = Hasher._finalize()();
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

Swift::Int sub_1003F4A7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&unk_100783A10, &qword_10069E6F0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1003F4CA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_100783AB0, &qword_1006B02D0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

uint64_t sub_1003F4EF4(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1001F0C48(&qword_100783AC8, &qword_1006AA0F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1003F9C4C(&qword_100781FF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_1003F5250(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DownloadRequest(0);
  v31 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  sub_1001F0C48(&unk_100783AD0, &qword_1006AA100);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_100273394(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*v5);
      result = Hasher._finalize()();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_100273394(v5, *(v8 + 48) + v16 * v20);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1003F552C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_100783AB8, &qword_1006AA0F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = static Hasher._hash(seed:_:)();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1003F5750(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_1003F57D4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1003F3358(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1004FB868();
      goto LABEL_16;
    }

    sub_1003F775C(v7 + 1);
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1003F59BC(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003F35D4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1004FB9B8();
      goto LABEL_12;
    }

    sub_1003F79B0(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  ManagedAppDeclaration.ManagementScope.hash(into:)();
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      result = static ManagedAppDeclaration.ManagementScope.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v5 & 1;
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1003F5B14(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1003F3824(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1004FBAF8();
      goto LABEL_16;
    }

    sub_1003F7BD0(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_1003F5C94(Swift::Int result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_1003F3A84(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1004FBC54();
      goto LABEL_12;
    }

    sub_1003F7E08(v9 + 1);
  }

  v11 = *v5;
  Hasher.init(_seed:)();
  StoreAppIdentifier.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v11 + 32);
  a4 = result & ~v12;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v11 + 48) + 24 * a4;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_1001DFDA4(*v14, v16, v17);
      v18 = static StoreAppIdentifier.== infix(_:_:)();
      result = sub_1001DFEBC(v15, v16, v17);
      if (v18)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v13;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v19 = *v24;
  *(*v24 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v20 = *(v19 + 48) + 24 * a4;
  *v20 = v8;
  *(v20 + 8) = a2;
  *(v20 + 16) = a3 & 1;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1003F5E60(Swift::Int result, Swift::Int a2, Swift::Int a3, Swift::Int a4, unint64_t a5, char a6)
{
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a6)
  {
    sub_1003F3CFC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1004FBDBC();
      goto LABEL_28;
    }

    sub_1003F8060(v12 + 1);
  }

  v14 = *v6;
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (a4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v15 = Hasher._finalize()();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = v15 & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = (v19 + 32 * a5);
      v22 = v20[2];
      v21 = v20[3];
      v23 = *v20 == result && v20[1] == a2;
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v21)
        {
          if (a4)
          {
            v24 = v22 == a3 && v21 == a4;
            if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
LABEL_27:
              ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              break;
            }
          }
        }

        else if (!a4)
        {
          goto LABEL_27;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_28:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = result;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }
}

uint64_t sub_1003F6054(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for MessageRegistration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003F3FA8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1004FBF28();
      goto LABEL_12;
    }

    sub_1003F82FC(v10 + 1);
  }

  v12 = *v3;
  sub_1003F9C4C(&qword_100783A98, &type metadata accessor for MessageRegistration, &protocol conformance descriptor for MessageRegistration);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1003F9C4C(&qword_100783AA0, &type metadata accessor for MessageRegistration, &protocol conformance descriptor for MessageRegistration);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1003F62F8(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1003F4304(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        sub_1004FBF50();
        goto LABEL_17;
      }

      sub_1003F8618(v8 + 1);
    }

    v10 = *v4;
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a2 & 1);
    sub_1003F98D4(v21, result);
    v11 = Hasher._finalize()();
    v12 = -1 << *(v10 + 32);
    a3 = v11 & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      do
      {
        if (*(*(v10 + 48) + 16 * a3 + 8))
        {
          if (a2)
          {
            goto LABEL_10;
          }
        }

        else if ((a2 & 1) == 0)
        {
LABEL_10:

          v15 = sub_1003F1030(v14, result);

          if (v15)
          {
            goto LABEL_20;
          }
        }

        a3 = (a3 + 1) & v13;
      }

      while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_17:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = *(v16 + 48) + 16 * a3;
  *v17 = result;
  *(v17 + 8) = a2 & 1;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_20:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }
}

Swift::Int sub_1003F64AC(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v38 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_31;
  }

  if (a3)
  {
    sub_1003F4504(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1004FC0B4();
      goto LABEL_31;
    }

    sub_1003F87E0(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  v46 = *v5;
  String.hash(into:)();
  v42 = v10;
  Hasher._combine(_:)(v10);
  v41 = v11;
  Hasher._combine(_:)(v11);
  v40 = v12;
  Hasher._combine(_:)(v12);
  v15 = *(v5 + 48);
  v14 = *(v5 + 56);
  v39 = v13;
  Hasher._combine(_:)(v13 & 1);
  v44 = v14;
  v45 = v15;
  String.hash(into:)();
  result = Hasher._finalize()();
  v16 = -1 << *(v8 + 32);
  a2 = result & ~v16;
  v43 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 48);
    while (1)
    {
      v19 = v18 + (a2 << 6);
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *(v19 + 40);
      v25 = *(v19 + 48);
      v24 = *(v19 + 56);
      v26 = *v19 == v46 && *(v19 + 8) == v9;
      if (v26 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        v27 = v20 == v42 && v21 == v41;
        v28 = v27 && v22 == v40;
        if (v28 && ((v23 ^ v39) & 1) == 0)
        {
          if (v25 == v45 && v24 == v44)
          {
            break;
          }

          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (result)
          {
            break;
          }
        }
      }

      a2 = (a2 + 1) & v17;
      if (((*(v43 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_31:
  v30 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v31 = (*(v30 + 48) + (a2 << 6));
  v32 = v38[1];
  *v31 = *v38;
  v31[1] = v32;
  v33 = v38[3];
  v31[2] = v38[2];
  v31[3] = v33;
  v34 = *(v30 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v36;
  }

  return result;
}

Swift::Int sub_1003F6708(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1003F4810(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1004FC238();
        goto LABEL_92;
      }

      sub_1003F8AAC(v6 + 1);
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    sub_1005ADE10(v5);
    String.hash(into:)();

    result = Hasher._finalize()();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (2)
      {
        v11 = 0xED0000726574656DLL;
        v12 = 0x6F72656C65636361;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v11 = 0xE500000000000000;
            v12 = 0x74696B7261;
            break;
          case 2:
            v11 = 0xE500000000000000;
            v12 = 0x37766D7261;
            break;
          case 3:
            v11 = 0xE500000000000000;
            v12 = 0x34366D7261;
            break;
          case 4:
            v12 = 0x75636F466F747561;
            v11 = 0xEF6172656D614373;
            break;
          case 5:
            v12 = 0x746F6F7465756C62;
            v11 = 0xEB00000000454C68;
            break;
          case 6:
            v12 = 0x6C466172656D6163;
            v11 = 0xEB00000000687361;
            break;
          case 7:
            v12 = 0xD000000000000011;
            v11 = 0x80000001006C2E50;
            break;
          case 8:
            v11 = 0xE700000000000000;
            v12 = 0x74696B656D6167;
            break;
          case 9:
            v12 = 7565415;
            v11 = 0xE300000000000000;
            break;
          case 0xA:
            v11 = 0xE900000000000065;
            v12 = 0x706F63736F727967;
            break;
          case 0xB:
            v11 = 0xE900000000000074;
            v12 = 0x696B68746C616568;
            break;
          case 0xC:
            v12 = 0xD000000000000010;
            v11 = 0x80000001006C2E90;
            break;
          case 0xD:
            v12 = 0x6D6F74656E67616DLL;
            v11 = 0xEC00000072657465;
            break;
          case 0xE:
            v11 = 0xE500000000000000;
            v12 = 0x6C6174656DLL;
            break;
          case 0xF:
            v12 = 0x6F68706F7263696DLL;
            v11 = 0xEA0000000000656ELL;
            break;
          case 0x10:
            v11 = 0xE300000000000000;
            v12 = 6514286;
            break;
          case 0x11:
            v12 = 0x73656C676E65706FLL;
            v11 = 0xE900000000000031;
            break;
          case 0x12:
            v11 = 0xE900000000000032;
            goto LABEL_36;
          case 0x13:
            v11 = 0xE900000000000033;
LABEL_36:
            v12 = 0x73656C676E65706FLL;
            break;
          case 0x14:
            v11 = 0xEA00000000007265;
            v12 = 0x65506F5472656570;
            break;
          case 0x15:
            v11 = 0xE300000000000000;
            v12 = 7564659;
            break;
          case 0x16:
            v13 = 0x436C6C697473;
            goto LABEL_34;
          case 0x17:
            v11 = 0xE900000000000079;
            v12 = 0x6E6F6870656C6574;
            break;
          case 0x18:
            v13 = 0x436F65646976;
LABEL_34:
            v12 = v13 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
            v11 = 0xEB00000000617265;
            break;
          case 0x19:
            v11 = 0xE400000000000000;
            v12 = 1768319351;
            break;
          default:
            break;
        }

        v14 = 0x6F72656C65636361;
        v15 = 0xED0000726574656DLL;
        switch(v5)
        {
          case 1:
            v15 = 0xE500000000000000;
            if (v12 == 0x74696B7261)
            {
              goto LABEL_86;
            }

            goto LABEL_87;
          case 2:
            v15 = 0xE500000000000000;
            if (v12 != 0x37766D7261)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 3:
            v15 = 0xE500000000000000;
            if (v12 != 0x34366D7261)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 4:
            v15 = 0xEF6172656D614373;
            if (v12 != 0x75636F466F747561)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 5:
            v17 = 0x746F6F7465756C62;
            v18 = 4541544;
            goto LABEL_82;
          case 6:
            v17 = 0x6C466172656D6163;
            v18 = 6845281;
            goto LABEL_82;
          case 7:
            v15 = 0x80000001006C2E50;
            if (v12 != 0xD000000000000011)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 8:
            v15 = 0xE700000000000000;
            if (v12 != 0x74696B656D6167)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 9:
            v15 = 0xE300000000000000;
            if (v12 != 7565415)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 10:
            v15 = 0xE900000000000065;
            if (v12 != 0x706F63736F727967)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 11:
            v15 = 0xE900000000000074;
            if (v12 != 0x696B68746C616568)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 12:
            v15 = 0x80000001006C2E90;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 13:
            v15 = 0xEC00000072657465;
            if (v12 != 0x6D6F74656E67616DLL)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 14:
            v15 = 0xE500000000000000;
            if (v12 != 0x6C6174656DLL)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 15:
            v15 = 0xEA0000000000656ELL;
            if (v12 != 0x6F68706F7263696DLL)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 16:
            v15 = 0xE300000000000000;
            if (v12 != 6514286)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 17:
            v15 = 0xE900000000000031;
            if (v12 != 0x73656C676E65706FLL)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 18:
            v15 = 0xE900000000000032;
            if (v12 != 0x73656C676E65706FLL)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 19:
            v15 = 0xE900000000000033;
            v14 = 0x73656C676E65706FLL;
            goto LABEL_85;
          case 20:
            v15 = 0xEA00000000007265;
            if (v12 != 0x65506F5472656570)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 21:
            v15 = 0xE300000000000000;
            if (v12 != 7564659)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 22:
            v16 = 0x436C6C697473;
            goto LABEL_81;
          case 23:
            v15 = 0xE900000000000079;
            if (v12 != 0x6E6F6870656C6574)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 24:
            v16 = 0x436F65646976;
LABEL_81:
            v17 = v16 & 0xFFFFFFFFFFFFLL | 0x6D61000000000000;
            v18 = 6386277;
LABEL_82:
            v15 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v12 != v17)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          case 25:
            v15 = 0xE400000000000000;
            if (v12 != 1768319351)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          default:
LABEL_85:
            if (v12 != v14)
            {
              goto LABEL_87;
            }

LABEL_86:
            if (v11 == v15)
            {
              goto LABEL_95;
            }

LABEL_87:
            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v19)
            {
              goto LABEL_96;
            }

            a2 = (a2 + 1) & v10;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_92:
  v20 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v5;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_95:

LABEL_96:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
  }

  return result;
}

void sub_1003F6ED8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003F4A7C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1004FC378();
      goto LABEL_12;
    }

    sub_1003F8CE8(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for InstallCoordinationInstallObserver.Observer(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::UInt sub_1003F7038(Swift::UInt result, unint64_t a2, char a3)
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
    sub_1003F4CA4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1004FC4C8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1003F8EFC(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003F7184(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003F4EF4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1004FC608();
      goto LABEL_12;
    }

    sub_1003F911C(v10 + 1);
  }

  v12 = *v3;
  sub_1003F9C4C(&qword_100781FF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1003F9C4C(&qword_100783AC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003F7428(Swift::UInt64 *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DownloadRequest(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  v30 = a1;
  if (v14 > v13 && (a3 & 1) != 0)
  {
LABEL_13:
    v15 = v9;
    goto LABEL_14;
  }

  if (a3)
  {
    v29 = v10;
    sub_1003F5250(v13 + 1);
    goto LABEL_8;
  }

  if (v14 <= v13)
  {
    v29 = v10;
    sub_1003F9438(v13 + 1);
LABEL_8:
    v16 = *v4;
    Hasher.init(_seed:)();
    v17 = *a1;
    Hasher._combine(_:)(*a1);
    v18 = Hasher._finalize()();
    v19 = -1 << *(v16 + 32);
    a2 = v18 & ~v19;
    if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v20 = ~v19;
      v15 = v9;
      v21 = *(v9 + 72);
      while (1)
      {
        sub_10031DF08(*(v16 + 48) + v21 * a2, v12);
        v22 = *v12;
        sub_100272F5C(v12);
        if (v22 == v17)
        {
          goto LABEL_17;
        }

        a2 = (a2 + 1) & v20;
        if (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_13;
  }

  v15 = v9;
  sub_1004FC868();
LABEL_14:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100273394(v30, *(v23 + 48) + *(v15 + 72) * a2);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_17:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003F763C(uint64_t result, unint64_t a2, char a3)
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
    sub_1003F552C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1004FCA60();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1003F96E4(v5 + 1);
  }

  v8 = *v3;
  result = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003F775C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_10077E928, &unk_10069E6D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v18 = v17;
      String.hash(into:)();
      v19 = Hasher._finalize()();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1003F79B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&unk_100783A70, &unk_10069E700);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      ManagedAppDeclaration.ManagementScope.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1003F7BD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_100783A60, &qword_10069E6E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1003F7E08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_100783A68, &unk_1006AA0C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      Hasher.init(_seed:)();
      sub_1001DFDA4(v19, v20, v21);
      StoreAppIdentifier.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1003F8060(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_10077E940, &qword_1006AA0D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      Hasher.init(_seed:)();

      v33 = v19;
      String.hash(into:)();
      if (v22)
      {
        Hasher._combine(_:)(1u);
        v23 = v21;
        String.hash(into:)();
      }

      else
      {
        v23 = v21;
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
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

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      v3 = v32;
      *v14 = v33;
      v14[1] = v20;
      v14[2] = v23;
      v14[3] = v22;
      ++*(v5 + 16);
      v10 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1003F82FC(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for MessageRegistration();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1001F0C48(&qword_100783AA8, &unk_1006AA0E0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1003F9C4C(&qword_100783A98, &type metadata accessor for MessageRegistration, &protocol conformance descriptor for MessageRegistration);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

unint64_t sub_1003F8618(uint64_t a1)
{
  v2 = *v1;
  sub_1001F0C48(&qword_100783A90, &qword_1006B0300);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    for (i = result + 56; v8; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v14 = *(v2 + 48) + 16 * (v11 | (v5 << 6));
      v15 = *v14;
      v16 = *(v14 + 8);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);

      sub_1003F98D4(v19, v15);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v17 = *(v4 + 48) + 16 * result;
      *v17 = v15;
      *(v17 + 8) = v16;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_14;
      }

      v13 = *(v2 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v18 = v4;
  }

  return result;
}

Swift::Int sub_1003F87E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_10077E948, &qword_10069E710);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = result;
    v6 = 0;
    v7 = v3 + 56;
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
    v37 = v3;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v21 = (*(v3 + 48) + ((v18 | (v6 << 6)) << 6));
      v23 = *v21;
      v22 = v21[1];
      v24 = v21[3];
      v42 = v21[2];
      v43 = v24;
      v40 = v23;
      v41 = v22;
      Hasher.init(_seed:)();
      v25 = v41;
      v26 = v42;
      v27 = BYTE8(v42);
      sub_1001F71F4(&v40, v39);
      String.hash(into:)();
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(*(&v25 + 1));
      Hasher._combine(_:)(v26);
      Hasher._combine(_:)(v27);
      String.hash(into:)();
      result = Hasher._finalize()();
      v5 = v36;
      v28 = -1 << *(v36 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v3 = v37;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v12 + 8 * v30);
          if (v34 != -1)
          {
            v13 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v3 = v37;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v36 + 48) + (v13 << 6));
      v15 = v40;
      v16 = v41;
      v17 = v43;
      v14[2] = v42;
      v14[3] = v17;
      *v14 = v15;
      v14[1] = v16;
      ++*(v36 + 16);
      v10 = v38;
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v35;
        goto LABEL_26;
      }

      v20 = *(v7 + 8 * v6);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v38 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1003F8AAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&unk_100783A80, &qword_1006AA0D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      sub_1005ADE10(v16);
      String.hash(into:)();

      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1003F8CE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&unk_100783A10, &qword_10069E6F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
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
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1003F8EFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_100783AB0, &qword_1006B02D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1003F911C(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1001F0C48(&qword_100783AC8, &qword_1006AA0F8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1003F9C4C(&qword_100781FF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_1003F9438(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DownloadRequest(0);
  v29 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  sub_1001F0C48(&unk_100783AD0, &qword_1006AA100);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_10031DF08(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*v5);
      result = Hasher._finalize()();
      v20 = -1 << *(v8 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100273394(v5, *(v8 + 48) + v15 * v19);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1003F96E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F0C48(&qword_100783AB8, &qword_1006AA0F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = static Hasher._hash(seed:_:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

void sub_1003F98D4(__int128 *a1, uint64_t a2)
{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  while (v5)
  {
LABEL_11:
    v11 = *(*(a2 + 48) + ((v8 << 11) | (32 * __clz(__rbit64(v5)))) + 24);
    Hasher.init(_seed:)();

    String.hash(into:)();
    if (v11)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v5 &= v5 - 1;
    v9 = Hasher._finalize()();

    v7 ^= v9;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1003F9A64(void *a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_100783A20, &unk_1006AA0A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  v8 = _convertErrorToNSError(_:)();
  v9 = sub_1003F088C(v8);

  v10 = [a1 identity];
  v14[0] = a1;
  v14[1] = v10;
  v16 = 0;
  v17 = 0;
  if (v9)
  {
    v15 = 0;
    v18 = 4;
    v11 = a1;
  }

  else
  {
    v15 = a2;
    v18 = 1;
    v12 = a1;
    swift_errorRetain();
  }

  sub_1001F0C48(&unk_100783A00, &unk_1006AA090);
  AsyncStream.Continuation.yield(_:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1003F9BE0()
{
  result = qword_100783A50;
  if (!qword_100783A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100783A50);
  }

  return result;
}

uint64_t sub_1003F9C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

__n128 sub_1003F9C94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1003F9CA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1003F9CF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003F9D38(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_1003F9D68(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1003F9E84(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for DownloadRequest(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1003F9F70(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1003FA05C;

  return v5();
}

uint64_t sub_1003FA05C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

void sub_1003FA170(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1001F0C48(&qword_10077EC98, &unk_1006AA450);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_1001F0C48(&qword_10077EC98, &unk_1006AA450);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1003FA244(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  type metadata accessor for MediaAPIMetadata(0);
  v2[95] = swift_task_alloc();
  sub_1001F0C48(&qword_100783C38, &qword_1006AA2D8);
  v2[96] = swift_task_alloc();
  v3 = type metadata accessor for ADPPreflightResultingMetadata(0);
  v2[97] = v3;
  v2[98] = *(v3 - 8);
  v2[99] = swift_task_alloc();
  v2[100] = type metadata accessor for ADPPreflightTask(0);
  v2[101] = swift_task_alloc();
  sub_1001F0C48(&qword_100783C40, &qword_1006AA2E0);
  v2[102] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809D0, &unk_1006A2420);
  v2[103] = swift_task_alloc();
  v4 = type metadata accessor for ProgressCache.Progress(0);
  v2[104] = v4;
  v2[105] = *(v4 - 8);
  v2[106] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[107] = v5;
  v2[108] = *(v5 - 8);
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[115] = v6;
  v2[116] = *(v6 - 8);
  v2[117] = swift_task_alloc();
  v7 = type metadata accessor for ADP(0);
  v2[118] = v7;
  v2[119] = *(v7 - 8);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  v2[125] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v2[126] = v8;
  v2[127] = *(v8 - 8);
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v9 = type metadata accessor for AppInstallRequestType();
  v2[137] = v9;
  v2[138] = *(v9 - 8);
  v2[139] = swift_task_alloc();
  v2[140] = swift_task_alloc();

  return _swift_task_switch(sub_1003FA744, v1, 0);
}

uint64_t sub_1003FA744()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[137];
  v5 = *(v0[94] + 112);
  v0[141] = v5;
  v6 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v0[142] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v30 = v5;
  v7 = *(v5 + v6);
  v8 = *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  v10 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v0[143] = v10;
  v11 = *(v3 + 16);
  v11(v1, v7 + *(v10 + 28) + v8, v4);
  os_unfair_lock_unlock((v7 + v9));
  v11(v2, v1, v4);
  v12 = (*(v3 + 88))(v2, v4);
  if (v12 != enum case for AppInstallRequestType.automaticInstall(_:))
  {
    if (v12 == enum case for AppInstallRequestType.install(_:))
    {
      goto LABEL_9;
    }

    if (v12 == enum case for AppInstallRequestType.automaticUpdate(_:))
    {
      goto LABEL_2;
    }

    if (v12 == enum case for AppInstallRequestType.update(_:) || v12 == enum case for AppInstallRequestType.promotion(_:))
    {
LABEL_9:
      (*(v0[138] + 8))(v0[140], v0[137]);
      goto LABEL_10;
    }

    if (v12 != enum case for AppInstallRequestType.restore(_:) && v12 != enum case for AppInstallRequestType.deviceVPP(_:) && v12 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v12 != enum case for AppInstallRequestType.userVPP(_:) && v12 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v12 != enum case for AppInstallRequestType.upp(_:) && v12 != enum case for AppInstallRequestType.restoreUpdate(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

LABEL_2:
  v13 = v0[93];
  (*(v0[138] + 8))(v0[140], v0[137]);
  sub_100006D8C(v13, v13[3]);

  v14 = sub_10042A954();

  if (!v14)
  {
    static Logger.install.getter();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = *(v30 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
      *(v17 + 4) = v19;
      *v18 = v19;
      v20 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%@] Blocking automatic installation, device has not been unlocked", v17, 0xCu);
      sub_1000032A8(v18, &qword_10077F920, &qword_10069E6A0);
    }

    v21 = v0[136];
    v22 = v0[127];
    v23 = v0[126];

    (*(v22 + 8))(v21, v23);
    type metadata accessor for InternalError(0);
    sub_100428444(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v24 = v0[1];

    return v24();
  }

LABEL_10:
  sub_10020A980(v30 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, (v0 + 50));
  v27 = v0[53];
  v26 = v0[54];
  v28 = sub_100006D8C(v0 + 50, v27);
  v29 = swift_task_alloc();
  v0[144] = v29;
  *v29 = v0;
  v29[1] = sub_1003FAE48;

  return sub_100519B04(v28, v27, v26);
}

uint64_t sub_1003FAE48(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 752);
  *(v2 + 1489) = a1;

  sub_10000710C((v2 + 400));

  return _swift_task_switch(sub_1003FAF68, v3, 0);
}

id sub_1003FAF68()
{
  if (*(v0 + 1489) != 1)
  {
    type metadata accessor for InternalError(0);
    sub_100428444(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v29 = *(v0 + 8);

    return v29();
  }

  v1 = *(v0 + 752);
  v2 = *(v1 + 152);
  v3 = *(v1 + 136);
  *(v0 + 1456) = *(v1 + 120);
  *(v0 + 1472) = v3;
  *(v0 + 1488) = v2;
  if ((sub_10027B898(v0 + 1456) & 1) == 0)
  {
    static Logger.install.getter();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 1128);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = *(v32 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
      *(v33 + 4) = v35;
      *v34 = v35;
      v36 = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%@] Failing early due to no feature eligibility", v33, 0xCu);
      sub_1000032A8(v34, &qword_10077F920, &qword_10069E6A0);
    }

    v37 = *(v0 + 1024);
    v38 = *(v0 + 1016);
    v39 = *(v0 + 1008);
    v40 = *(v0 + 752);
    v41 = *(v0 + 744);

    (*(v38 + 8))(v37, v39);
    *(v40 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 0;
    v42 = v41[3];
    v43 = v41[7];
    v44 = sub_100006D8C(v41, v42);
    v45 = swift_task_alloc();
    *(v0 + 1432) = v45;
    *v45 = v0;
    v45[1] = sub_1003FEA0C;
    v46 = *(v0 + 752);

    return sub_100420C70(v44, v46, v42, v43);
  }

  v4 = *(v0 + 1136);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 744);
  v7 = *(*sub_100006D8C(v6, v6[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device + 108);
  v8 = *(v5 + v4);
  v9 = *(*v8 + class metadata base offset for ManagedBuffer + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_10020A980(v8 + v9, v0 + 440);
  os_unfair_lock_unlock((v8 + v10));
  sub_1001F0C48(&qword_10077E970, &qword_10069E920);
  if (swift_dynamicCast())
  {

    result = [objc_opt_self() sharedConnection];
    if (result)
    {
      v12 = result;
      v13 = [result isWebDistributionAppInstallationAllowed];

      if ((v13 & 1) == 0)
      {
        static Logger.install.getter();

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = *(v0 + 1128);
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *v17 = 138412290;
          v19 = *(v16 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
          *(v17 + 4) = v19;
          *v18 = v19;
          v20 = v19;
          _os_log_impl(&_mh_execute_header, v14, v15, "[%@] Failing early due to web distribution being restricted", v17, 0xCu);
          sub_1000032A8(v18, &qword_10077F920, &qword_10069E6A0);
        }

        v21 = *(v0 + 1080);
        v22 = *(v0 + 1016);
        v23 = *(v0 + 1008);
        v24 = *(v0 + 752);
        v25 = *(v0 + 744);

        (*(v22 + 8))(v21, v23);
        *(v24 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 0;
        v26 = *(*sub_100006D8C(v25, v6[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
        *(v0 + 1160) = v26;
        v106 = sub_1004A45A0;

        v27 = swift_task_alloc();
        *(v0 + 1168) = v27;
        *v27 = v0;
        v28 = sub_1003FBEAC;
LABEL_34:
        v27[1] = v28;

        return v106(v26, v7);
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_50:
    __break(1u);
    return result;
  }

  v47 = *(*(v0 + 1128) + *(v0 + 1136));
  v48 = *(*v47 + class metadata base offset for ManagedBuffer + 16);
  v49 = (*(*v47 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v47 + v49));
  sub_10020A980(v47 + v48, v0 + 480);
  os_unfair_lock_unlock((v47 + v49));
  if (swift_dynamicCast())
  {
    result = [objc_opt_self() sharedConnection];
    if (result)
    {
      v50 = result;
      v51 = String._bridgeToObjectiveC()();

      v52 = [v50 isMarketplaceAllowed:v51];

      if ((v52 & 1) == 0)
      {
        static Logger.install.getter();

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = *(v0 + 1128);
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *v75 = 138412290;
          v77 = *(v74 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
          *(v75 + 4) = v77;
          *v76 = v77;
          v78 = v77;
          _os_log_impl(&_mh_execute_header, v72, v73, "[%@] Failing early due to marketplace distribution being restricted", v75, 0xCu);
          sub_1000032A8(v76, &qword_10077F920, &qword_10069E6A0);
        }

        v79 = *(v0 + 1072);
        v80 = *(v0 + 1016);
        v81 = *(v0 + 1008);
        v82 = *(v0 + 752);
        v83 = *(v0 + 744);

        (*(v80 + 8))(v79, v81);
        *(v82 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14ADPInstallTask_shouldShowAlertOnInstallFailure) = 0;
        v26 = *(*sub_100006D8C(v83, v6[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
        *(v0 + 1184) = v26;
        v106 = sub_1004A3E18;

        v27 = swift_task_alloc();
        *(v0 + 1192) = v27;
        *v27 = v0;
        v28 = sub_1003FC334;
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_20:
  sub_100402B78();
  v62 = *(v0 + 1128);
  if ((*(v62 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_itemIDFromButtonConfiguration + 8) & 1) == 0)
  {
    sub_10038A554(*(v62 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_itemIDFromButtonConfiguration));
    v62 = *(v0 + 1128);
  }

  v63 = *(v62 + *(v0 + 1136));
  v64 = *(*v63 + class metadata base offset for ManagedBuffer + 16);
  v65 = (*(*v63 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v63 + v65));
  sub_10020A980(v63 + v64, v0 + 520);
  os_unfair_lock_unlock((v63 + v65));
  if (swift_dynamicCast() & 1) == 0 || (v66 = *(v0 + 1136), v67 = *(v0 + 1128), , v68 = *(v67 + v66), v69 = v68 + *(*v68 + class metadata base offset for ManagedBuffer + 16), v70 = (*(*v68 + 48) + 3) & 0x1FFFFFFFCLL, os_unfair_lock_lock((v68 + v70)), LOBYTE(v69) = *(v69 + 48), os_unfair_lock_unlock((v68 + v70)), (v69))
  {
    v71 = swift_task_alloc();
    *(v0 + 1224) = v71;
    *v71 = v0;
    v71[1] = sub_1003FC980;

    return sub_100405278();
  }

  v84 = *(*(v0 + 1128) + *(v0 + 1136));
  v85 = *(v0 + 1144);
  v86 = *(*v84 + class metadata base offset for ManagedBuffer + 16);
  v87 = (*(*v84 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v84 + v87));
  v88 = (v84 + *(v85 + 32) + v86);
  v90 = *v88;
  v89 = v88[1];

  os_unfair_lock_unlock((v84 + v87));
  if (v89)
  {
    v91 = HIBYTE(v89) & 0xF;
    if ((v89 & 0x2000000000000000) == 0)
    {
      v91 = v90 & 0xFFFFFFFFFFFFLL;
    }

    if (v91)
    {
      sub_1005A9F58(v90, v89, (v0 + 224));
      v104 = swift_task_alloc();
      *(v0 + 1208) = v104;
      *v104 = v0;
      v104[1] = sub_1003FC7BC;
      v105 = *(v0 + 744);

      return sub_1004032C8(v0 + 224, v105);
    }
  }

  static Logger.install.getter();

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = *(v0 + 1128);
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v95 = 138412290;
    v97 = *(v94 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
    *(v95 + 4) = v97;
    *v96 = v97;
    v98 = v97;
    _os_log_impl(&_mh_execute_header, v92, v93, "[%@] Missing required install verification token", v95, 0xCu);
    sub_1000032A8(v96, &qword_10077F920, &qword_10069E6A0);
  }

  v99 = *(v0 + 1064);
  v100 = *(v0 + 1016);
  v101 = *(v0 + 1008);

  (*(v100 + 8))(v99, v101);
  type metadata accessor for InternalError(0);
  sub_100428444(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
  v102 = swift_allocError();
  *v103 = 0xD00000000000002BLL;
  v103[1] = 0x80000001006C4550;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  *(v0 + 1440) = v102;
  v53 = *(v0 + 744);
  v54 = v53[3];
  v55 = v53[6];
  v56 = v53[8];
  v57 = v53[9];
  v58 = v53[10];
  v59 = sub_100006D8C(v53, v54);
  swift_errorRetain();
  v60 = swift_task_alloc();
  *(v0 + 1448) = v60;
  *v60 = v0;
  v60[1] = sub_1003FEDA4;
  v61 = *(v0 + 752);

  return sub_10041F4B4(v102, v59, v61, v54, v55, v56, v57, v58);
}

uint64_t sub_1003FBEAC(uint64_t a1)
{
  v2 = *(*v1 + 752);
  *(*v1 + 1176) = a1;

  return _swift_task_switch(sub_1003FBFE0, v2, 0);
}

uint64_t sub_1003FBFE0()
{
  v1 = v0[147];
  v2 = v0[125];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_1004F8A04(0xD000000000000021, 0x80000001006CB390, v2, &unk_1006AA410, v4);

  sub_1000032A8(v2, &unk_100780380, &qword_10069E9E0);
  type metadata accessor for InternalError(0);
  sub_100428444(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003FC334(uint64_t a1)
{
  v2 = *(*v1 + 752);
  *(*v1 + 1200) = a1;

  return _swift_task_switch(sub_1003FC468, v2, 0);
}

uint64_t sub_1003FC468()
{
  v1 = v0[150];
  v2 = v0[125];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_1004F8A04(0xD000000000000029, 0x80000001006CB360, v2, &unk_1006AA408, v4);

  sub_1000032A8(v2, &unk_100780380, &qword_10069E9E0);
  type metadata accessor for InternalError(0);
  sub_100428444(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003FC7BC()
{
  v2 = *v1;
  *(*v1 + 1216) = v0;

  v3 = *(v2 + 752);
  if (v0)
  {
    v4 = sub_1003FF0F8;
  }

  else
  {
    v4 = sub_1003FC8E8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003FC8E8()
{
  sub_10020AD3C(v0 + 224);
  v1 = swift_task_alloc();
  *(v0 + 1224) = v1;
  *v1 = v0;
  v1[1] = sub_1003FC980;

  return sub_100405278();
}

uint64_t sub_1003FC980()
{
  v2 = *v1;
  *(*v1 + 1232) = v0;

  v3 = *(v2 + 752);
  if (v0)
  {
    v4 = sub_1003FF1F4;
  }

  else
  {
    v4 = sub_1003FCAAC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003FCAAC()
{
  v1 = v0[142];
  v2 = v0[141];
  sub_10038A774();
  v3 = *(v2 + v1);
  v4 = v3 + *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = *(v4 + 40);
  v0[155] = v6;

  os_unfair_lock_unlock((v3 + v5));
  if (v6)
  {
    v7 = v0[142];
    v8 = v0[141];
    (*(v0[116] + 16))(v0[117], v8 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v0[115]);
    v9 = *(v8 + v7);
    v10 = *(*v9 + class metadata base offset for ManagedBuffer + 16);
    v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v9 + v11));
    sub_10020A980(v9 + v10, (v0 + 70));
    os_unfair_lock_unlock((v9 + v11));
    v12 = *(v8 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_accountID);
    v13 = *(v8 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_accountID + 8);
    v0[156] = v13;
    v14 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey;
    v0[157] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey;
    v15 = *(v8 + v14);
    v0[158] = v15;

    v16 = v15;
    v17 = swift_task_alloc();
    v0[159] = v17;
    *v17 = v0;
    v17[1] = sub_1003FCEF0;
    v18 = v0[124];
    v19 = v0[117];

    return sub_100338A04(v18, v19, v6, (v0 + 70), v12, v13, v16);
  }

  else
  {
    static Logger.install.getter();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[94];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = *(v23 + 160);
      *(v24 + 4) = v26;
      *v25 = v26;
      v27 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] No agent available, failing", v24, 0xCu);
      sub_1000032A8(v25, &qword_10077F920, &qword_10069E6A0);
    }

    v28 = v0[129];
    v29 = v0[127];
    v30 = v0[126];

    (*(v29 + 8))(v28, v30);
    type metadata accessor for InternalError(0);
    sub_100428444(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    v31 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v0[180] = v31;
    v32 = v0[93];
    v33 = v32[3];
    v34 = v32[6];
    v35 = v32[8];
    v36 = v32[9];
    v37 = v32[10];
    v38 = sub_100006D8C(v32, v33);
    swift_errorRetain();
    v39 = swift_task_alloc();
    v0[181] = v39;
    *v39 = v0;
    v39[1] = sub_1003FEDA4;
    v40 = v0[94];

    return sub_10041F4B4(v31, v38, v40, v33, v34, v35, v36, v37);
  }
}

uint64_t sub_1003FCEF0()
{
  v2 = *v1;
  *(v2 + 1280) = v0;

  v3 = *(v2 + 936);
  v4 = *(v2 + 928);
  v5 = *(v2 + 920);
  v6 = *(v2 + 752);

  sub_10000710C((v2 + 560));
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_1003FF2E8;
  }

  else
  {
    v7 = sub_1003FD0C0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003FD0C0()
{
  v61 = v0;
  v1 = *(v0 + 992);
  v2 = *(v0 + 984);
  v55 = *(v0 + 976);
  v57 = *(v0 + 968);
  v3 = *(v0 + 944);
  v4 = *(v0 + 752);
  sub_1001F0C48(&qword_100784460, &unk_10069FAD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006A4050;
  v6 = *(v4 + 160);
  v7 = LogKey.description.getter();
  v9 = v8;

  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v54 = v3;
  v10 = *(v3 + 24);
  *(v0 + 1492) = v10;
  v11 = v1 + v10;
  v12 = *(v1 + v10 + 24);
  *(v0 + 1288) = v12;
  v13 = *(v11 + 32);
  *(v0 + 1296) = v13;
  *(v5 + 48) = v12;
  *(v5 + 56) = v13;
  v59 = v11;
  v14 = *(v11 + 16);
  *(v0 + 1304) = v14;
  *(v0 + 736) = v14;

  *(v5 + 64) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v5 + 72) = v15;
  v16 = objc_allocWithZone(type metadata accessor for LogKey());
  v17 = LogKey.init(strings:)();
  v18 = *(v4 + 160);
  *(v4 + 160) = v17;

  static Logger.install.getter();
  sub_100428E08(v1, v2, type metadata accessor for ADP);
  sub_100428E08(v1, v55, type metadata accessor for ADP);
  sub_100428E08(v1, v57, type metadata accessor for ADP);

  v19 = Logger.logObject.getter();
  LOBYTE(v6) = static os_log_type_t.default.getter();

  v58 = v6;
  v20 = os_log_type_enabled(v19, v6);
  v21 = *(v0 + 1056);
  v22 = *(v0 + 1016);
  v23 = *(v0 + 1008);
  v24 = *(v0 + 984);
  v25 = *(v0 + 976);
  v26 = *(v0 + 968);
  if (v20)
  {
    v56 = *(v0 + 1056);
    v27 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v60 = v52;
    *v27 = 138413058;
    v28 = *(v4 + 160);
    *(v27 + 4) = v28;
    *v51 = v28;
    *(v27 + 12) = 2082;
    v29 = v24 + *(v54 + 24);
    v53 = v23;
    v30 = *(v29 + 24);
    v31 = *(v29 + 32);
    v32 = v28;

    sub_100429090(v24, type metadata accessor for ADP);
    v33 = sub_1002346CC(v30, v31, &v60);

    *(v27 + 14) = v33;
    *(v27 + 22) = 2050;
    v34 = *(v25 + *(v54 + 24) + 16);
    sub_100429090(v25, type metadata accessor for ADP);
    *(v27 + 24) = v34;
    *(v27 + 32) = 2050;
    v35 = *(v26 + *(v54 + 24) + 8);
    sub_100429090(v26, type metadata accessor for ADP);
    *(v27 + 34) = v35;
    _os_log_impl(&_mh_execute_header, v19, v58, "[%@] Bundle ID: %{public}s Item ID: %{public}llu Version ID: %{public}llu", v27, 0x2Au);
    sub_1000032A8(v51, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v52);

    (*(v22 + 8))(v56, v53);
  }

  else
  {
    sub_100429090(*(v0 + 968), type metadata accessor for ADP);
    sub_100429090(v25, type metadata accessor for ADP);

    sub_100429090(v24, type metadata accessor for ADP);
    (*(v22 + 8))(v21, v23);
  }

  v36 = *(v0 + 1136);
  v37 = *(v0 + 1128);
  v38 = *(v0 + 912);
  v39 = *(v0 + 864);
  v40 = *(v0 + 856);
  v41 = *(*sub_100006D8C(*(v0 + 744), *(*(v0 + 744) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
  *(v0 + 1312) = v41;
  v42 = *(v37 + v36);
  v43 = *(*v42 + class metadata base offset for ManagedBuffer + 16);
  v44 = (*(*v42 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v42 + v44));
  sub_10020A980(v42 + v43, v0 + 600);
  os_unfair_lock_unlock((v42 + v44));
  v45 = *(v0 + 624);
  sub_100006D8C((v0 + 600), v45);
  *(v0 + 1320) = sub_10056D600(v45);
  *(v0 + 1328) = v46;
  *(v0 + 1490) = v47;
  *(v0 + 1336) = *(v59 + 8);
  v48 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id;
  *(v0 + 1344) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id;
  v49 = *(v39 + 16);
  *(v0 + 1352) = v49;
  *(v0 + 1360) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v49(v38, v37 + v48, v40);

  return _swift_task_switch(sub_1003FD5D4, v41, 0);
}

uint64_t sub_1003FD5D4()
{
  v57 = v0;
  v52 = *(v0 + 1352);
  v40 = *(v0 + 1328);
  v42 = *(v0 + 1336);
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1288);
  v43 = *(v0 + 904);
  v46 = *(v0 + 856);
  v49 = *(v0 + 912);
  v5 = *(v0 + 848);
  v6 = *(v0 + 1490) & 1;
  v7 = *(*(v0 + 832) + 24);
  v8 = enum case for AppState.waiting(_:);
  v9 = type metadata accessor for AppState();
  (*(*(v9 - 8) + 104))(v5 + v7, v8, v9);
  *v5 = v4;
  *(v5 + 8) = v3;
  *(v5 + 16) = v2;
  *(v5 + 24) = 0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v40;
  *(v5 + 48) = v6;
  *(v5 + 56) = v42;
  *(v5 + 64) = 0;

  static Logger.progress.getter();
  v52(v43, v49, v46);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v41 = *(v0 + 1288);
    v44 = *(v0 + 1296);
    v47 = *(v0 + 1016);
    v50 = *(v0 + 1008);
    v53 = *(v0 + 1048);
    v12 = *(v0 + 904);
    v13 = *(v0 + 864);
    v14 = *(v0 + 856);
    v15 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v15 = 136446466;
    sub_100428444(&qword_100789F60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v13 + 8);
    v55 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v12, v14);
    v20 = sub_1002346CC(v16, v18, &v56);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1002346CC(v41, v44, &v56);
    _os_log_impl(&_mh_execute_header, v10, v11, "[ProgressCache] Starting progress for %{public}s (%{public}s)", v15, 0x16u);
    swift_arrayDestroy();

    (*(v47 + 8))(v53, v50);
  }

  else
  {
    v21 = *(v0 + 1048);
    v22 = *(v0 + 1016);
    v23 = *(v0 + 1008);
    v24 = *(v0 + 904);
    v25 = *(v0 + 864);
    v26 = *(v0 + 856);

    v19 = *(v25 + 8);
    v55 = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v24, v26);
    (*(v22 + 8))(v21, v23);
  }

  *(v0 + 1368) = v19;
  v27 = *(v0 + 1352);
  v48 = *(v0 + 912);
  v51 = v19;
  v28 = *(v0 + 896);
  v29 = *(v0 + 848);
  v45 = *(v0 + 856);
  v30 = *(v0 + 840);
  v31 = *(v0 + 832);
  v32 = *(v0 + 824);
  v54 = *(v0 + 752);
  v27(v28);
  sub_100428E08(v29, v32, type metadata accessor for ProgressCache.Progress);
  (*(v30 + 56))(v32, 0, 1, v31);
  swift_beginAccess();
  sub_1005B7A24(v32, v28);
  swift_endAccess();
  sub_1001F0C48(&unk_100780A70, &unk_1006AD8C0);
  v33 = (sub_1001F0C48(&qword_100786FA0, &unk_1006A2430) - 8);
  v34 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10069E680;
  v36 = v35 + v34;
  v37 = v33[14];
  (v27)(v36, v48, v45);
  sub_100428E08(v29, v36 + v37, type metadata accessor for ProgressCache.Progress);
  v38 = sub_100528E5C(v35);
  swift_setDeallocating();
  sub_1000032A8(v36, &qword_100786FA0, &unk_1006A2430);
  swift_deallocClassInstance();
  sub_1003868C0(v38);

  sub_100429090(v29, type metadata accessor for ProgressCache.Progress);
  *(v0 + 1376) = v55;
  v51(v48, v45);
  sub_10000710C((v0 + 600));

  return _swift_task_switch(sub_1003FDB50, v54, 0);
}
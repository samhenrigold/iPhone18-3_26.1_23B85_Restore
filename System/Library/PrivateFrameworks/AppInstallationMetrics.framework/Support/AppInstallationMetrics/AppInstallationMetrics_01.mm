uint64_t sub_100019AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 128) = v15;
  *(v8 + 136) = v16;
  *(v8 + 280) = a8;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  *(v8 + 88) = a3;
  v9 = type metadata accessor for AppInstallationMetricsError();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 176) = v10;
  *(v8 + 184) = *(v10 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  v11 = sub_100002AD8(&qword_100039DA8, &qword_10002B040);
  *(v8 + 216) = v11;
  *(v8 + 224) = *(v11 - 8);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v8 + 256) = v12;
  *v12 = v8;
  v12[1] = sub_100019CEC;

  return sub_100011DC0(v8 + 16);
}

uint64_t sub_100019CEC()
{

  return _swift_task_switch(sub_100019DE8, 0, 0);
}

uint64_t sub_100019DE8()
{
  v59 = v0;
  v2 = v0[5];
  v1 = v0[6];
  sub_10000D5B4(v0 + 2, v2);
  LOBYTE(v2) = sub_100011D74(v2, v1);
  sub_100002B88(v0 + 2);
  if ((v2 & 1) == 0)
  {
    v4 = v0 + 26;
    static Logger.general.getter();
    v5 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v9))
    {
      v8 = &enum case for AppInstallationMetricsError.serviceUnavailable(_:);
      goto LABEL_13;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, v9, "Not enabled", v10, 2u);
    v8 = &enum case for AppInstallationMetricsError.serviceUnavailable(_:);
LABEL_7:

LABEL_13:
    v18 = *v4;
    v19 = v0[22];
    v20 = v0[23];
    v21 = v0[18];
    v22 = v0[19];

    (*(v20 + 8))(v18, v19);
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError, &protocol conformance descriptor for AppInstallationMetricsError);
    v23 = swift_allocError();
    (*(v22 + 104))(v24, *v8, v21);
    swift_willThrow();
    static Logger.general.getter();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[23];
    v28 = v0[24];
    v30 = v0[22];
    if (v27)
    {
      v56 = v0[22];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58 = v33;
      *v31 = 136315394;
      v34 = StaticString.description.getter();
      v36 = sub_10001DC98(v34, v35, &v58);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2114;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v37;
      *v32 = v37;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error in %s: %{public}@", v31, 0x16u);
      sub_10000D6F8(v32, &qword_100039DA0, &qword_10002A740);

      sub_100002B88(v33);

      (*(v29 + 8))(v28, v56);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }

    v0[7] = v23;
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    v38 = swift_dynamicCast();
    v39 = v0[21];
    if (v38)
    {
      v40 = *(v0[19] + 32);
      v40(v0[21], v0[20], v0[18]);
    }

    else
    {
      v41 = v0[18];
      v42 = v0[19];

      (*(v42 + 104))(v39, enum case for AppInstallationMetricsError.unknown(_:), v41);
      v40 = *(v42 + 32);
    }

    v43 = v0[31];
    v44 = v0[27];
    v45 = v0[28];
    v40(v43, v0[21], v0[18]);
    (*(v45 + 104))(v43, enum case for ServiceResult.failure<A>(_:), v44);
    v46 = v0[29];
    v47 = v0[27];
    (*(v0[28] + 16))(v46, v0[31], v47);
    v0[8] = v46;
    v0[9] = v47;
    v0[10] = sub_10001E8D0(&qword_100039DB0, &qword_100039DA8, &qword_10002B040);
    v48 = encodeXPCValues<each A>(_:)();
    v50 = v49;
    v51 = v0[31];
    v52 = v0[27];
    v53 = v0[16];
    v54 = *(v0[28] + 8);
    v54(v0[29], v52);
    v53(v48, v50);
    sub_10000D80C(v48, v50);
    v54(v51, v52);

    v55 = v0[1];

    return v55();
  }

  v3 = v0[11];
  if (v3[4])
  {
    v4 = v0 + 25;
    static Logger.general.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      v8 = &enum case for AppInstallationMetricsError.notAuthorized(_:);
      goto LABEL_13;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to obtain audit token", v7, 2u);
    v8 = &enum case for AppInstallationMetricsError.notAuthorized(_:);
    goto LABEL_7;
  }

  v11 = v3[2];
  v12 = v3[3];
  v14 = *v3;
  v13 = v3[1];
  v57 = (v0[12] + *v0[12]);
  v15 = swift_task_alloc();
  v0[33] = v15;
  *v15 = v0;
  v15[1] = sub_10001A4D4;
  v16 = v0[30];

  return v57(v16, v14, v13, v11, v12);
}

uint64_t sub_10001A4D4()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_10001A7E8;
  }

  else
  {
    v2 = sub_10001A5E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001A5E8()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = v0[34];
  v6 = v0[29];
  v7 = v0[27];
  (*(v0[28] + 16))(v6, v0[31], v7);
  v0[8] = v6;
  v0[9] = v7;
  v0[10] = sub_10001E8D0(&qword_100039DB0, &qword_100039DA8, &qword_10002B040);
  v8 = encodeXPCValues<each A>(_:)();
  if (v5)
  {

    v10 = 0;
    v11 = 0xC000000000000000;
  }

  else
  {
    v10 = v8;
    v11 = v9;
  }

  v12 = v0[31];
  v13 = v0[27];
  v14 = v0[16];
  v15 = *(v0[28] + 8);
  v15(v0[29], v13);
  v14(v10, v11);
  sub_10000D80C(v10, v11);
  v15(v12, v13);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10001A7E8(uint64_t a1)
{
  v37 = v1;
  v2 = v1[34];
  static Logger.general.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v1[23];
  v6 = v1[24];
  v8 = v1[22];
  if (v5)
  {
    v35 = v1[22];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v9 = 136315394;
    v12 = StaticString.description.getter();
    v14 = sub_10001DC98(v12, v13, &v36);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in %s: %{public}@", v9, 0x16u);
    sub_10000D6F8(v10, &qword_100039DA0, &qword_10002A740);

    sub_100002B88(v11);

    (*(v7 + 8))(v6, v35);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v1[7] = v2;
  sub_100002AD8(&qword_100039D90, &qword_10002A770);
  v16 = swift_dynamicCast();
  v17 = v1[21];
  if (v16)
  {
    v18 = *(v1[19] + 32);
    v18(v1[21], v1[20], v1[18]);
  }

  else
  {
    v19 = v1[18];
    v20 = v1[19];

    (*(v20 + 104))(v17, enum case for AppInstallationMetricsError.unknown(_:), v19);
    v18 = *(v20 + 32);
  }

  v21 = v1[31];
  v22 = v1[27];
  v23 = v1[28];
  v18(v21, v1[21], v1[18]);
  (*(v23 + 104))(v21, enum case for ServiceResult.failure<A>(_:), v22);
  v24 = v1[29];
  v25 = v1[27];
  (*(v1[28] + 16))(v24, v1[31], v25);
  v1[8] = v24;
  v1[9] = v25;
  v1[10] = sub_10001E8D0(&qword_100039DB0, &qword_100039DA8, &qword_10002B040);
  v26 = encodeXPCValues<each A>(_:)();
  v28 = v27;
  v29 = v1[31];
  v30 = v1[27];
  v31 = v1[16];
  v32 = *(v1[28] + 8);
  v32(v1[29], v30);
  v31(v26, v28);
  sub_10000D80C(v26, v28);
  v32(v29, v30);

  v33 = v1[1];

  return v33();
}

uint64_t sub_10001AC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 128) = v15;
  *(v8 + 136) = v16;
  *(v8 + 280) = a8;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  *(v8 + 88) = a3;
  v9 = type metadata accessor for AppInstallationMetricsError();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 176) = v10;
  *(v8 + 184) = *(v10 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  v11 = sub_100002AD8(&qword_100039DB8, &qword_10002B0A0);
  *(v8 + 216) = v11;
  *(v8 + 224) = *(v11 - 8);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v8 + 256) = v12;
  *v12 = v8;
  v12[1] = sub_10001AE1C;

  return sub_100011DC0(v8 + 16);
}

uint64_t sub_10001AE1C()
{

  return _swift_task_switch(sub_10001AF18, 0, 0);
}

uint64_t sub_10001AF18()
{
  v59 = v0;
  v2 = v0[5];
  v1 = v0[6];
  sub_10000D5B4(v0 + 2, v2);
  LOBYTE(v2) = sub_100011D74(v2, v1);
  sub_100002B88(v0 + 2);
  if ((v2 & 1) == 0)
  {
    v4 = v0 + 26;
    static Logger.general.getter();
    v5 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v9))
    {
      v8 = &enum case for AppInstallationMetricsError.serviceUnavailable(_:);
      goto LABEL_13;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, v9, "Not enabled", v10, 2u);
    v8 = &enum case for AppInstallationMetricsError.serviceUnavailable(_:);
LABEL_7:

LABEL_13:
    v18 = *v4;
    v19 = v0[22];
    v20 = v0[23];
    v21 = v0[18];
    v22 = v0[19];

    (*(v20 + 8))(v18, v19);
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError, &protocol conformance descriptor for AppInstallationMetricsError);
    v23 = swift_allocError();
    (*(v22 + 104))(v24, *v8, v21);
    swift_willThrow();
    static Logger.general.getter();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[23];
    v28 = v0[24];
    v30 = v0[22];
    if (v27)
    {
      v56 = v0[22];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58 = v33;
      *v31 = 136315394;
      v34 = StaticString.description.getter();
      v36 = sub_10001DC98(v34, v35, &v58);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2114;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v37;
      *v32 = v37;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error in %s: %{public}@", v31, 0x16u);
      sub_10000D6F8(v32, &qword_100039DA0, &qword_10002A740);

      sub_100002B88(v33);

      (*(v29 + 8))(v28, v56);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }

    v0[7] = v23;
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    v38 = swift_dynamicCast();
    v39 = v0[21];
    if (v38)
    {
      v40 = *(v0[19] + 32);
      v40(v0[21], v0[20], v0[18]);
    }

    else
    {
      v41 = v0[18];
      v42 = v0[19];

      (*(v42 + 104))(v39, enum case for AppInstallationMetricsError.unknown(_:), v41);
      v40 = *(v42 + 32);
    }

    v43 = v0[31];
    v44 = v0[27];
    v45 = v0[28];
    v40(v43, v0[21], v0[18]);
    (*(v45 + 104))(v43, enum case for ServiceResult.failure<A>(_:), v44);
    v46 = v0[29];
    v47 = v0[27];
    (*(v0[28] + 16))(v46, v0[31], v47);
    v0[8] = v46;
    v0[9] = v47;
    v0[10] = sub_10001E8D0(&qword_100039DC0, &qword_100039DB8, &qword_10002B0A0);
    v48 = encodeXPCValues<each A>(_:)();
    v50 = v49;
    v51 = v0[31];
    v52 = v0[27];
    v53 = v0[16];
    v54 = *(v0[28] + 8);
    v54(v0[29], v52);
    v53(v48, v50);
    sub_10000D80C(v48, v50);
    v54(v51, v52);

    v55 = v0[1];

    return v55();
  }

  v3 = v0[11];
  if (v3[4])
  {
    v4 = v0 + 25;
    static Logger.general.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      v8 = &enum case for AppInstallationMetricsError.notAuthorized(_:);
      goto LABEL_13;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to obtain audit token", v7, 2u);
    v8 = &enum case for AppInstallationMetricsError.notAuthorized(_:);
    goto LABEL_7;
  }

  v11 = v3[2];
  v12 = v3[3];
  v14 = *v3;
  v13 = v3[1];
  v57 = (v0[12] + *v0[12]);
  v15 = swift_task_alloc();
  v0[33] = v15;
  *v15 = v0;
  v15[1] = sub_10001B604;
  v16 = v0[30];

  return v57(v16, v14, v13, v11, v12);
}

uint64_t sub_10001B604()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_10001B918;
  }

  else
  {
    v2 = sub_10001B718;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001B718()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = v0[34];
  v6 = v0[29];
  v7 = v0[27];
  (*(v0[28] + 16))(v6, v0[31], v7);
  v0[8] = v6;
  v0[9] = v7;
  v0[10] = sub_10001E8D0(&qword_100039DC0, &qword_100039DB8, &qword_10002B0A0);
  v8 = encodeXPCValues<each A>(_:)();
  if (v5)
  {

    v10 = 0;
    v11 = 0xC000000000000000;
  }

  else
  {
    v10 = v8;
    v11 = v9;
  }

  v12 = v0[31];
  v13 = v0[27];
  v14 = v0[16];
  v15 = *(v0[28] + 8);
  v15(v0[29], v13);
  v14(v10, v11);
  sub_10000D80C(v10, v11);
  v15(v12, v13);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10001B918(uint64_t a1)
{
  v37 = v1;
  v2 = v1[34];
  static Logger.general.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v1[23];
  v6 = v1[24];
  v8 = v1[22];
  if (v5)
  {
    v35 = v1[22];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v9 = 136315394;
    v12 = StaticString.description.getter();
    v14 = sub_10001DC98(v12, v13, &v36);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in %s: %{public}@", v9, 0x16u);
    sub_10000D6F8(v10, &qword_100039DA0, &qword_10002A740);

    sub_100002B88(v11);

    (*(v7 + 8))(v6, v35);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v1[7] = v2;
  sub_100002AD8(&qword_100039D90, &qword_10002A770);
  v16 = swift_dynamicCast();
  v17 = v1[21];
  if (v16)
  {
    v18 = *(v1[19] + 32);
    v18(v1[21], v1[20], v1[18]);
  }

  else
  {
    v19 = v1[18];
    v20 = v1[19];

    (*(v20 + 104))(v17, enum case for AppInstallationMetricsError.unknown(_:), v19);
    v18 = *(v20 + 32);
  }

  v21 = v1[31];
  v22 = v1[27];
  v23 = v1[28];
  v18(v21, v1[21], v1[18]);
  (*(v23 + 104))(v21, enum case for ServiceResult.failure<A>(_:), v22);
  v24 = v1[29];
  v25 = v1[27];
  (*(v1[28] + 16))(v24, v1[31], v25);
  v1[8] = v24;
  v1[9] = v25;
  v1[10] = sub_10001E8D0(&qword_100039DC0, &qword_100039DB8, &qword_10002B0A0);
  v26 = encodeXPCValues<each A>(_:)();
  v28 = v27;
  v29 = v1[31];
  v30 = v1[27];
  v31 = v1[16];
  v32 = *(v1[28] + 8);
  v32(v1[29], v30);
  v31(v26, v28);
  sub_10000D80C(v26, v28);
  v32(v29, v30);

  v33 = v1[1];

  return v33();
}

uint64_t sub_10001BD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 128) = v15;
  *(v8 + 136) = v16;
  *(v8 + 280) = a8;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  *(v8 + 88) = a3;
  v9 = type metadata accessor for AppInstallationMetricsError();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 176) = v10;
  *(v8 + 184) = *(v10 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  v11 = sub_100002AD8(&unk_100039D80, &qword_10002B010);
  *(v8 + 216) = v11;
  *(v8 + 224) = *(v11 - 8);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v8 + 256) = v12;
  *v12 = v8;
  v12[1] = sub_10001BF4C;

  return sub_100011DC0(v8 + 16);
}

uint64_t sub_10001BF4C()
{

  return _swift_task_switch(sub_10001C048, 0, 0);
}

uint64_t sub_10001C048()
{
  v59 = v0;
  v2 = v0[5];
  v1 = v0[6];
  sub_10000D5B4(v0 + 2, v2);
  LOBYTE(v2) = sub_100011D74(v2, v1);
  sub_100002B88(v0 + 2);
  if ((v2 & 1) == 0)
  {
    v4 = v0 + 26;
    static Logger.general.getter();
    v5 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v9))
    {
      v8 = &enum case for AppInstallationMetricsError.serviceUnavailable(_:);
      goto LABEL_13;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, v9, "Not enabled", v10, 2u);
    v8 = &enum case for AppInstallationMetricsError.serviceUnavailable(_:);
LABEL_7:

LABEL_13:
    v18 = *v4;
    v19 = v0[22];
    v20 = v0[23];
    v21 = v0[18];
    v22 = v0[19];

    (*(v20 + 8))(v18, v19);
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError, &protocol conformance descriptor for AppInstallationMetricsError);
    v23 = swift_allocError();
    (*(v22 + 104))(v24, *v8, v21);
    swift_willThrow();
    static Logger.general.getter();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[23];
    v28 = v0[24];
    v30 = v0[22];
    if (v27)
    {
      v56 = v0[22];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58 = v33;
      *v31 = 136315394;
      v34 = StaticString.description.getter();
      v36 = sub_10001DC98(v34, v35, &v58);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2114;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v37;
      *v32 = v37;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error in %s: %{public}@", v31, 0x16u);
      sub_10000D6F8(v32, &qword_100039DA0, &qword_10002A740);

      sub_100002B88(v33);

      (*(v29 + 8))(v28, v56);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }

    v0[7] = v23;
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    v38 = swift_dynamicCast();
    v39 = v0[21];
    if (v38)
    {
      v40 = *(v0[19] + 32);
      v40(v0[21], v0[20], v0[18]);
    }

    else
    {
      v41 = v0[18];
      v42 = v0[19];

      (*(v42 + 104))(v39, enum case for AppInstallationMetricsError.unknown(_:), v41);
      v40 = *(v42 + 32);
    }

    v43 = v0[31];
    v44 = v0[27];
    v45 = v0[28];
    v40(v43, v0[21], v0[18]);
    (*(v45 + 104))(v43, enum case for ServiceResult.failure<A>(_:), v44);
    v46 = v0[29];
    v47 = v0[27];
    (*(v0[28] + 16))(v46, v0[31], v47);
    v0[8] = v46;
    v0[9] = v47;
    v0[10] = sub_10001E8D0(&qword_100039D98, &unk_100039D80, &qword_10002B010);
    v48 = encodeXPCValues<each A>(_:)();
    v50 = v49;
    v51 = v0[31];
    v52 = v0[27];
    v53 = v0[16];
    v54 = *(v0[28] + 8);
    v54(v0[29], v52);
    v53(v48, v50);
    sub_10000D80C(v48, v50);
    v54(v51, v52);

    v55 = v0[1];

    return v55();
  }

  v3 = v0[11];
  if (v3[4])
  {
    v4 = v0 + 25;
    static Logger.general.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      v8 = &enum case for AppInstallationMetricsError.notAuthorized(_:);
      goto LABEL_13;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to obtain audit token", v7, 2u);
    v8 = &enum case for AppInstallationMetricsError.notAuthorized(_:);
    goto LABEL_7;
  }

  v11 = v3[2];
  v12 = v3[3];
  v14 = *v3;
  v13 = v3[1];
  v57 = (v0[12] + *v0[12]);
  v15 = swift_task_alloc();
  v0[33] = v15;
  *v15 = v0;
  v15[1] = sub_10001C734;
  v16 = v0[30];

  return v57(v16, v14, v13, v11, v12);
}

uint64_t sub_10001C734()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_10001CA48;
  }

  else
  {
    v2 = sub_10001C848;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001C848()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = v0[34];
  v6 = v0[29];
  v7 = v0[27];
  (*(v0[28] + 16))(v6, v0[31], v7);
  v0[8] = v6;
  v0[9] = v7;
  v0[10] = sub_10001E8D0(&qword_100039D98, &unk_100039D80, &qword_10002B010);
  v8 = encodeXPCValues<each A>(_:)();
  if (v5)
  {

    v10 = 0;
    v11 = 0xC000000000000000;
  }

  else
  {
    v10 = v8;
    v11 = v9;
  }

  v12 = v0[31];
  v13 = v0[27];
  v14 = v0[16];
  v15 = *(v0[28] + 8);
  v15(v0[29], v13);
  v14(v10, v11);
  sub_10000D80C(v10, v11);
  v15(v12, v13);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10001CA48(uint64_t a1)
{
  v37 = v1;
  v2 = v1[34];
  static Logger.general.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v1[23];
  v6 = v1[24];
  v8 = v1[22];
  if (v5)
  {
    v35 = v1[22];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v9 = 136315394;
    v12 = StaticString.description.getter();
    v14 = sub_10001DC98(v12, v13, &v36);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in %s: %{public}@", v9, 0x16u);
    sub_10000D6F8(v10, &qword_100039DA0, &qword_10002A740);

    sub_100002B88(v11);

    (*(v7 + 8))(v6, v35);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v1[7] = v2;
  sub_100002AD8(&qword_100039D90, &qword_10002A770);
  v16 = swift_dynamicCast();
  v17 = v1[21];
  if (v16)
  {
    v18 = *(v1[19] + 32);
    v18(v1[21], v1[20], v1[18]);
  }

  else
  {
    v19 = v1[18];
    v20 = v1[19];

    (*(v20 + 104))(v17, enum case for AppInstallationMetricsError.unknown(_:), v19);
    v18 = *(v20 + 32);
  }

  v21 = v1[31];
  v22 = v1[27];
  v23 = v1[28];
  v18(v21, v1[21], v1[18]);
  (*(v23 + 104))(v21, enum case for ServiceResult.failure<A>(_:), v22);
  v24 = v1[29];
  v25 = v1[27];
  (*(v1[28] + 16))(v24, v1[31], v25);
  v1[8] = v24;
  v1[9] = v25;
  v1[10] = sub_10001E8D0(&qword_100039D98, &unk_100039D80, &qword_10002B010);
  v26 = encodeXPCValues<each A>(_:)();
  v28 = v27;
  v29 = v1[31];
  v30 = v1[27];
  v31 = v1[16];
  v32 = *(v1[28] + 8);
  v32(v1[29], v30);
  v31(v26, v28);
  sub_10000D80C(v26, v28);
  v32(v29, v30);

  v33 = v1[1];

  return v33();
}

uint64_t sub_10001CE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100013DF4(a3, v25 - v10, &qword_1000395C0, &qword_10002AF20);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000D6F8(v11, &qword_1000395C0, &qword_10002AF20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000D6F8(a3, &qword_1000395C0, &qword_10002AF20);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D6F8(a3, &qword_1000395C0, &qword_10002AF20);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10001D160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_10001D218;

  return sub_100016AA4(a2, a3, a4, a5);
}

uint64_t sub_10001D218()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10001D348, 0, 0);
  }
}

uint64_t sub_10001D36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_10001D424;

  return sub_100017F10(a2, a3, a4, a5);
}

uint64_t sub_10001D424()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10001EC84, 0, 0);
  }
}

uint64_t sub_10001D554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  *(v6 + 16) = a1;
  v13 = (a6 + *a6);
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_10001D424;

  return v13(a2, a3, a4, a5);
}

uint64_t type metadata accessor for Service(uint64_t a1)
{
  result = qword_100039D58;
  if (!qword_100039D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001D770()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D7AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001EC80;

  return sub_1000195F0(a1, v4, v5, v6, v7, v9, v8, v1 + 64);
}

uint64_t sub_10001D8B8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001D9B0;

  return v6(a1);
}

uint64_t sub_10001D9B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001DAA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001EC80;

  return sub_10001D8B8(a1, v4);
}

uint64_t sub_10001DB60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DB98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001EC80;

  return sub_10001BD30(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_10001DC98(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001DD64(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000D758(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002B88(v11);
  return v7;
}

unint64_t sub_10001DD64(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001DE70(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10001DE70(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001DEBC(a1, a2);
  sub_10001DFEC(&off_1000351E0);
  return v3;
}

char *sub_10001DEBC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001E0D8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001E0D8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10001DFEC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10001E14C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001E0D8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100002AD8(&qword_100039D78, &qword_10002B008);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001E14C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002AD8(&qword_100039D78, &qword_10002B008);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10001E244(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001E2E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001EC80;

  return sub_10001877C(a1, v4, v5, v6, v7, v9, v8, v1 + 64);
}

uint64_t sub_10001E3EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001EC80;

  return sub_100019AD0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10001E4EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10001EC80;

  return sub_100017668(a1, a2, a3, a4, v10);
}

uint64_t sub_10001E5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 16);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10001EC80;

  return sub_10001D554(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_10001E6C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000D3C8;

  return sub_100018DEC(a1, v4, v5, v6, v7, v9, v8, v1 + 64);
}

uint64_t sub_10001E7D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001EC80;

  return sub_10001AC00(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10001E8D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001E244(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10001E924()
{
  v1 = *(v0 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_10001E97C()
{
  sub_10000D80C(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001E9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_10000D3C8;

  return sub_100015DF4(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t sub_10001EA94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10001EAEC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 144, 7);
}

unint64_t sub_10001EB3C()
{
  result = qword_100039DC8;
  if (!qword_100039DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039DC8);
  }

  return result;
}

uint64_t sub_10001EB90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001EBF8()
{

  return sub_10001955C();
}

uint64_t sub_10001EC88()
{

  return sub_10001945C();
}

uint64_t sub_10001ED00(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_100002AD8(&qword_100039E90, &qword_10002B2A0);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10001EE40, 0, 0);
}

uint64_t sub_10001EE40(uint64_t a1)
{
  v2 = v1[19];
  static Logger.metrics.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Flushing events", v7, 0xCu);
    sub_10000D6F8(v8, &qword_100039DA0, &qword_10002A740);
  }

  v10 = v1[28];
  v12 = v1[24];
  v11 = v1[25];
  v13 = v1[22];
  v20 = v1[23];
  v15 = v1[20];
  v14 = v1[21];

  v16 = *(v11 + 8);
  v1[29] = v16;
  v1[30] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v12);
  v17 = [*(v15 + 16) flush];
  v1[31] = v17;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_10001F128;
  swift_continuation_init();
  v1[17] = v14;
  v18 = sub_10000D510(v1 + 14);
  sub_10001FCEC();
  sub_100002AD8(&qword_100039D90, &qword_10002A770);
  CheckedContinuation.init(continuation:function:)();
  (*(v13 + 32))(v18, v20, v14);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10001FA38;
  v1[13] = &unk_100036110;
  [v17 resultWithTimeout:120.0 completion:?];
  (*(v13 + 8))(v18, v14);

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10001F128()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_10001F3F4;
  }

  else
  {
    v2 = sub_10001F238;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001F238(uint64_t a1)
{
  v3 = *(v1 + 144);
  v2 = *(v1 + 152);
  static Logger.metrics.getter();
  v4 = v2;
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2114;
    *(v9 + 14) = v5;
    *v10 = v8;
    v10[1] = v5;
    v11 = v8;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Flushed %{public}@ event(s)", v9, 0x16u);
    sub_100002AD8(&qword_100039DA0, &qword_10002A740);
    swift_arrayDestroy();
  }

  else
  {
    v12 = v6;
    v6 = v5;
  }

  (*(v1 + 232))(*(v1 + 216), *(v1 + 192));

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_10001F3F4(uint64_t a1)
{
  v2 = *(v1 + 248);
  v3 = *(v1 + 152);
  swift_willThrow();

  static Logger.metrics.getter();
  v4 = v3;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 152);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2114;
    v10 = v7;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Failed to flush events due to error: %{public}@", v8, 0x16u);
    sub_100002AD8(&qword_100039DA0, &qword_10002A740);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v1 + 232))(*(v1 + 208), *(v1 + 192));

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_10001F5DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F724665726F7473;
  }

  else
  {
    v3 = 0x4E646C697542736FLL;
  }

  if (v2)
  {
    v4 = 0xED00007265626D75;
  }

  else
  {
    v4 = 0xEC0000006449746ELL;
  }

  if (*a2)
  {
    v5 = 0x6F724665726F7473;
  }

  else
  {
    v5 = 0x4E646C697542736FLL;
  }

  if (*a2)
  {
    v6 = 0xEC0000006449746ELL;
  }

  else
  {
    v6 = 0xED00007265626D75;
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

Swift::Int sub_10001F698()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001F730(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10001F7B4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001F848@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100035608, *a1);

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

void sub_10001F8A8(uint64_t *a1@<X8>)
{
  v2 = 0x4E646C697542736FLL;
  if (*v1)
  {
    v2 = 0x6F724665726F7473;
  }

  v3 = 0xED00007265626D75;
  if (*v1)
  {
    v3 = 0xEC0000006449746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10001F8FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10001F970(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001F9C4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100035658, *a1);

  *a2 = v3 != 0;
  return result;
}

void sub_10001FA38(uint64_t a1, void *a2, void *a3)
{
  sub_10000D5B4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100002AD8(&qword_100039E90, &qword_10002B2A0);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_100002AD8(&qword_100039E90, &qword_10002B2A0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001FAE8()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ManateeDomain(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ManateeDomain(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10001FC40()
{
  result = qword_100039E80;
  if (!qword_100039E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039E80);
  }

  return result;
}

unint64_t sub_10001FC98()
{
  result = qword_100039E88;
  if (!qword_100039E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039E88);
  }

  return result;
}

unint64_t sub_10001FCEC()
{
  result = qword_100039E98;
  if (!qword_100039E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039E98);
  }

  return result;
}

uint64_t sub_10001FD50(void *a1, void *a2)
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
    sub_100020778(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_10001FEFC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100021AF8(&qword_100039EB0, &protocol conformance descriptor for Calendar.Component);
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
      sub_100021AF8(&qword_100039EB8, &protocol conformance descriptor for Calendar.Component);
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
    sub_100020960(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1000201B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002AD8(&qword_100039EC8, &qword_10002B2C0);
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

uint64_t sub_100020430(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Calendar.Component();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100002AD8(&qword_100039EC0, &qword_10002B2B8);
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
      sub_100021AF8(&qword_100039EB0, &protocol conformance descriptor for Calendar.Component);
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

uint64_t sub_100020778(uint64_t result, unint64_t a2, char a3)
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
    sub_1000201B4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100020BDC();
      goto LABEL_16;
    }

    sub_100020F64(v7 + 1);
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

uint64_t sub_100020960(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Calendar.Component();
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
    sub_100020430(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100020D2C();
      goto LABEL_12;
    }

    sub_1000211B8(v10 + 1);
  }

  v12 = *v3;
  sub_100021AF8(&qword_100039EB0, &protocol conformance descriptor for Calendar.Component);
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
      sub_100021AF8(&qword_100039EB8, &protocol conformance descriptor for Calendar.Component);
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

id sub_100020BDC()
{
  v1 = v0;
  sub_100002AD8(&qword_100039EC8, &qword_10002B2C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_100020D2C()
{
  v1 = v0;
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002AD8(&qword_100039EC0, &qword_10002B2B8);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_100020F64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100002AD8(&qword_100039EC8, &qword_10002B2C0);
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

uint64_t sub_1000211B8(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Calendar.Component();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100002AD8(&qword_100039EC0, &qword_10002B2B8);
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
      sub_100021AF8(&qword_100039EB0, &protocol conformance descriptor for Calendar.Component);
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

void *sub_1000214C0(uint64_t a1)
{
  v21 = a1;
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v20 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v18 = &v17 - v5;
  sub_100002AD8(&qword_100039EA8, &qword_10002B2B0);
  v6 = *(v2 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10002B0E0;
  v17 = v8;
  v9 = v8 + v7;
  v10 = *(v2 + 104);
  v10(v8 + v7, enum case for Calendar.Component.year(_:), v1);
  v10(v9 + v6, enum case for Calendar.Component.month(_:), v1);
  v10(v9 + 2 * v6, enum case for Calendar.Component.day(_:), v1);
  v10(v9 + 3 * v6, enum case for Calendar.Component.hour(_:), v1);
  v10(v9 + 4 * v6, enum case for Calendar.Component.minute(_:), v1);
  v10(v9 + 5 * v6, enum case for Calendar.Component.second(_:), v1);
  v19 = v6;
  v10(v9 + 6 * v6, enum case for Calendar.Component.nanosecond(_:), v1);
  v22 = &_swiftEmptySetSingleton;
  v11 = *(v2 + 16);
  v12 = 8;
  do
  {
    if (!--v12)
    {
      break;
    }

    v13 = v20;
    v14 = v9 + v19;
    v11(v20, v9, v1);
    v15 = v18;
    sub_10001FEFC(v18, v13);
    (*(v2 + 8))(v15, v1);
    v9 = v14;
  }

  while ((static Calendar.Component.== infix(_:_:)() & 1) == 0);

  return v22;
}

id sub_100021790(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002AD8(&qword_100039EA0, &qword_10002B2A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v22 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DateComponents();
  v13 = *(v23 - 8);
  __chkstk_darwin(v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_1000214C0(a2);
  Calendar.dateComponents(_:from:)();

  v16 = *(v10 + 8);
  v16(v12, v9);
  static Calendar.current.getter();
  Calendar.date(from:)();
  v16(v12, v9);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v13 + 8))(v15, v23);
    sub_10000D6F8(v5, &qword_100039EA0, &qword_10002B2A8);
    return 0;
  }

  else
  {
    v18 = v22;
    (*(v7 + 32))(v22, v5, v6);
    v19 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v21 = [v19 serverTimeFromDate:isa];

    (*(v7 + 8))(v18, v6);
    (*(v13 + 8))(v15, v23);
    return v21;
  }
}

uint64_t sub_100021AF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Calendar.Component();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void main()()
{
  v0 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1000248CC(0, 0, v2, &unk_10002B2D8, v4);

  dispatch_main();
}

uint64_t sub_100021C20()
{
  v1 = type metadata accessor for CancellationError();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v0[11] = v2;
  v0[12] = *(v2 - 8);
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  type metadata accessor for ClientInfo();
  v0[19] = swift_task_alloc();
  type metadata accessor for BagProfile();
  v0[20] = swift_task_alloc();
  v3 = type metadata accessor for BagService();
  v0[21] = v3;
  v0[22] = *(v3 - 8);
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v0[25] = v4;
  v0[26] = *(v4 - 8);
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();

  return _swift_task_switch(sub_100021E9C, 0, 0);
}

uint64_t sub_100021E9C()
{
  if (isAppInstallationMetricsEnabled()())
  {
    sub_100001C0C(v0[28]);
    BagProfile.init(name:version:)();
    ClientInfo.init(identifier:name:version:)();
    BagService.init(bagProfile:clientInfo:)();
    v28 = swift_task_alloc();
    v0[29] = v28;
    *v28 = v0;
    v28[1] = sub_100022474;

    return sub_100011DC0((v0 + 2));
  }

  else
  {
    static Logger.daemon.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Feature flag is not enabled", v3, 2u);
    }

    v4 = v0[15];
    v5 = v0[11];
    v6 = v0[12];

    (*(v6 + 8))(v4, v5);
    sub_100024B78();
    v7 = swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v0[7] = v7;
    swift_errorRetain();
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    if (swift_dynamicCast())
    {

      static Logger.daemon.getter();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Exiting daemon due to cancellation", v10, 2u);
      }

      v11 = v0[14];
      v12 = v0[11];
      v13 = v0[12];
      v15 = v0[9];
      v14 = v0[10];
      v16 = v0[8];

      (*(v13 + 8))(v11, v12);
      (*(v15 + 8))(v14, v16);

      v17 = v0[1];
    }

    else
    {

      static Logger.daemon.getter();
      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v22;
        *v21 = v22;
        _os_log_impl(&_mh_execute_header, v18, v19, "Unexpected top-level error: %@", v20, 0xCu);
        sub_10000D6F8(v21, &qword_100039DA0, &qword_10002A740);
      }

      v23 = v0[13];
      v24 = v18;
      v26 = v0[11];
      v25 = v0[12];

      (*(v25 + 8))(v23, v26);
      swift_willThrow();

      v17 = v0[1];
    }

    return v17();
  }
}

uint64_t sub_100022474()
{

  return _swift_task_switch(sub_100022570, 0, 0);
}

uint64_t sub_100022570()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_10000D5B4(v0 + 2, v2);
  v3 = sub_100011D74(v2, v1);
  static Logger.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v3 & 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "Daemon launch; Bag enabled: %{BOOL}d", v6, 8u);
  }

  v7 = v0[18];
  v8 = v0[11];
  v9 = v0[12];

  v10 = *(v9 + 8);
  v0[30] = v10;
  v0[31] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v8);
  if (v3)
  {
    v11 = v0[27];
    v13 = v0[23];
    v12 = v0[24];
    v14 = v0[21];
    v15 = v0[22];
    (*(v0[26] + 16))(v11, v0[28], v0[25]);
    (*(v15 + 16))(v13, v12, v14);
    type metadata accessor for Dependencies(0);
    swift_allocObject();
    v16 = sub_1000018D4(v11, v13);
    v0[32] = v16;
    sub_100002AD8(&qword_100039ED8, &qword_10002B2E0);
    v17 = swift_task_alloc();
    v0[33] = v17;
    *(v17 + 16) = v16;
    *(v17 + 24) = v12;
    v18 = swift_task_alloc();
    v0[34] = v18;
    *v18 = v0;
    v18[1] = sub_100022C78;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  else
  {
    static Logger.daemon.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Daemon is disabled; canceling launch", v21, 2u);
    }

    v23 = v0[25];
    v22 = v0[26];
    v50 = v0[24];
    v24 = v0[22];
    v48 = v0[28];
    v49 = v0[21];
    v25 = v0[16];
    v26 = v0[11];

    v10(v25, v26);
    sub_100024B78();
    v27 = swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    (*(v22 + 8))(v48, v23);
    sub_100002B88(v0 + 2);
    (*(v24 + 8))(v50, v49);
    v0[7] = v27;
    swift_errorRetain();
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    if (swift_dynamicCast())
    {

      static Logger.daemon.getter();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Exiting daemon due to cancellation", v30, 2u);
      }

      v31 = v0[14];
      v32 = v0[11];
      v33 = v0[12];
      v35 = v0[9];
      v34 = v0[10];
      v36 = v0[8];

      (*(v33 + 8))(v31, v32);
      (*(v35 + 8))(v34, v36);

      v37 = v0[1];
    }

    else
    {

      static Logger.daemon.getter();
      swift_errorRetain();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        swift_errorRetain();
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v42;
        *v41 = v42;
        _os_log_impl(&_mh_execute_header, v38, v39, "Unexpected top-level error: %@", v40, 0xCu);
        sub_10000D6F8(v41, &qword_100039DA0, &qword_10002A740);
      }

      v43 = v0[13];
      v44 = v38;
      v46 = v0[11];
      v45 = v0[12];

      (*(v45 + 8))(v43, v46);
      swift_willThrow();

      v37 = v0[1];
    }

    return v37();
  }
}

uint64_t sub_100022C78()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100022DB4, 0, 0);
  }
}

uint64_t sub_100022DB4(uint64_t a1)
{
  static Logger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unexpectedly exiting daemon due to completing all tasks", v4, 2u);
  }

  v5 = v1[30];
  v6 = v1[28];
  v7 = v1[25];
  v8 = v1[26];
  v9 = v1[22];
  v14 = v1[21];
  v15 = v1[24];
  v10 = v1[17];
  v11 = v1[11];

  v5(v10, v11);
  (*(v8 + 8))(v6, v7);
  sub_100002B88(v1 + 2);
  (*(v9 + 8))(v15, v14);

  v12 = v1[1];

  return v12();
}

uint64_t sub_100022F98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022FD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000D3C8;

  return sub_100021C20();
}

uint64_t sub_10002307C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for BagService();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();
  sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100023180, 0, 0);
}

uint64_t sub_100023180()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  v18 = v5;
  v6 = v0[3];
  v20 = type metadata accessor for TaskPriority();
  v19 = *(*(v20 - 8) + 56);
  v19(v1, 1, 1, v20);
  v17 = *(v3 + 16);
  v7 = v5;
  v8 = v4;
  v15 = v4;
  v17(v2, v7, v4);
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v6;
  v16 = *(v3 + 32);
  v16(&v10[v9], v2, v8);

  sub_1000237A8(v1, &unk_10002B300, v10);
  sub_10000D6F8(v1, &qword_1000395C0, &qword_10002AF20);
  v19(v1, 1, 1, v20);
  v11 = v2;
  v17(v2, v18, v15);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v6;
  v16(&v12[v9], v11, v15);

  sub_1000246A8(v1, &unk_10002B310, v12);
  sub_10000D6F8(v1, &qword_1000395C0, &qword_10002AF20);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100023404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for BagService();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100023524, 0, 0);
}

uint64_t sub_100023524()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = [objc_opt_self() sharedScheduler];
  v7 = *(v5 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_eventManager);
  (*(v2 + 16))(v1, v4, v3);
  type metadata accessor for DailyWakeupTask(0);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  (*(v2 + 32))(v8 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon15DailyWakeupTask_bagService, v1, v3);

  sub_100013F00();
  sub_100014260();

  **(v0 + 16) = 1;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000237A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_100013DF4(a1, v18 - v8, &qword_1000395C0, &qword_10002AF20);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000D6F8(v9, &qword_1000395C0, &qword_10002AF20);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  sub_100002AD8(&qword_100039ED8, &qword_10002B2E0);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1000239A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v6 = sub_100002AD8(&qword_100039EE0, &qword_10002B318);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_100002AD8(&qword_100039EE8, &qword_10002B320);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_100002AD8(&qword_100039EF0, &qword_10002B328);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  sub_100002AD8(&qword_100039D70, &qword_10002AFF0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_100023C1C, 0, 0);
}

uint64_t sub_100023C1C()
{
  v23 = v0;
  (*(*(v0 + 160) + 56))(*(v0 + 192), 1, 1, *(v0 + 152));
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  if (qword_100039270 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = _os_activity_create(&_mh_execute_header, "Starting XPC listener", qword_1000397D0, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  os_activity_scope_enter(v6, (v0 + 40));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 40);
  type metadata accessor for Transaction();
  swift_allocObject();
  v7 = sub_1000158E0("Starting XPC listener", 21, 2);
  sub_100013DF4(v3, v2, &qword_100039D70, &qword_10002AFF0);
  v8 = 0;
  if ((*(v5 + 48))(v2, 1, v4) != 1)
  {
    v9 = *(v0 + 176);
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    v12 = *(v0 + 152);
    (*(v11 + 32))(v9, *(v0 + 184), v12);
    (*(v11 + 16))(v10, v9, v12);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v8 = sub_100011144("Starting XPC listener", 21, 2, v10);
    (*(v11 + 8))(v9, v12);
  }

  if (qword_100039278 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  *(v0 + 16) = v1;
  *(v0 + 24) = v7;
  *(v0 + 32) = v8;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_100002AD8(&qword_100039EF8, &qword_10002B330);
  swift_task_localValuePush();
  sub_1000243C0(v14, v13, &v22);
  v15 = *(v0 + 192);
  v16 = *(v0 + 120);
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  swift_task_localValuePop();

  sub_10000D6F8(v15, &qword_100039D70, &qword_10002AFF0);
  *(v0 + 200) = v22;
  (*(v17 + 104))(v16, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v18);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  *v19 = v0;
  v19[1] = sub_1000240A4;
  v20 = *(v0 + 80);

  return AsyncStream.Iterator.next(isolation:)(v0 + 224, 0, 0, v20);
}

uint64_t sub_1000240A4()
{

  return _swift_task_switch(sub_1000241CC, 0, 0);
}

uint64_t sub_1000241CC()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 200);
    v2 = *(v0 + 208);
    v3 = *(v0 + 136);
    v4 = *(v0 + 144);
    v5 = *(v0 + 128);
    v6 = *(v0 + 56);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    (*(v3 + 8))(v4, v5);
    *v6 = 1;

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_1000240A4;
    v10 = *(v0 + 80);

    return AsyncStream.Iterator.next(isolation:)(v0 + 224, 0, 0, v10);
  }
}

uint64_t sub_1000243C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v27 = a3;
  v5 = type metadata accessor for Logger();
  v25 = *(v5 - 8);
  v26 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BagService();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v12(v11, a2, v8);
  v13 = type metadata accessor for ServiceListenerDelegate(0);
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC28AppInstallationMetricsDaemon23ServiceListenerDelegate_dependencies] = a1;
  v12(&v14[OBJC_IVAR____TtC28AppInstallationMetricsDaemon23ServiceListenerDelegate_bagService], v11, v8);
  v28.receiver = v14;
  v28.super_class = v13;

  v15 = objc_msgSendSuper2(&v28, "init");
  (*(v9 + 8))(v11, v8);
  ServiceMachName.getter();
  v16 = objc_allocWithZone(NSXPCListener);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 initWithMachServiceName:v17];

  [v18 setDelegate:v15];
  [v18 activate];
  static Logger.daemon.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "XPC listener activated", v21, 2u);
  }

  result = (*(v25 + 8))(v7, v26);
  v23 = v27;
  *v27 = v18;
  v23[1] = v15;
  return result;
}

uint64_t sub_1000246A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = *v3;
  v10 = swift_taskGroup_addPending();
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_100013DF4(a1, v8, &qword_1000395C0, &qword_10002AF20);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v8, v11);
    if (*(a3 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    goto LABEL_8;
  }

  sub_10000D6F8(v8, &qword_1000395C0, &qword_10002AF20);
  if (!*(a3 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v15 = v14;
  swift_unknownObjectRelease();
LABEL_8:
  sub_100002AD8(&qword_100039ED8, &qword_10002B2E0);
  v16 = (v15 | v13);
  if (v15 | v13)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v13;
    v19[3] = v15;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v9;
  swift_task_create();
LABEL_11:

  return v10 & 1;
}

uint64_t sub_1000248CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100013DF4(a3, v22 - v9, &qword_1000395C0, &qword_10002AF20);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000D6F8(v10, &qword_1000395C0, &qword_10002AF20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000D6F8(a3, &qword_1000395C0, &qword_10002AF20);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000D6F8(a3, &qword_1000395C0, &qword_10002AF20);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

unint64_t sub_100024B78()
{
  result = qword_100039ED0;
  if (!qword_100039ED0)
  {
    type metadata accessor for CancellationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039ED0);
  }

  return result;
}

uint64_t sub_100024BD0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001EC80;

  return sub_10002307C(a1, a2, v7, v6);
}

uint64_t sub_100024C84(uint64_t a1)
{
  v4 = *(type metadata accessor for BagService() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001EC80;

  return sub_100023404(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100024D80()
{
  v1 = type metadata accessor for BagService();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100024E4C(uint64_t a1)
{
  v4 = *(type metadata accessor for BagService() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001EC80;

  return sub_1000239A4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100024F48(void *a1)
{
  v3 = type metadata accessor for Logger();
  v64 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = &v52 - v7;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v62 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v61 = &v52 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v52 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v52 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v52 - v21;
  __chkstk_darwin(v20);
  v24 = &v52 - v23;
  if (*(v1 + 56))
  {
    static Logger.events.getter();
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Token did not contain a expire date", v28, 0xCu);
      sub_10000FF00(v29);
    }

    (*(v64 + 8))(v6, v3);
    v31 = 0;
  }

  else
  {
    v60 = v3;
    static Date.now.getter();
    Date.init(timeIntervalSince1970:)();
    static Logger.events.getter();
    v32 = *(v9 + 16);
    v32(v19, v22, v8);
    v32(v16, v24, v8);
    v32(v61, v24, v8);
    v32(v62, v22, v8);
    v33 = a1;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = v22;
      v37 = v57;
      v59 = swift_slowAlloc();
      v65 = v59;
      *v36 = 138413058;
      *(v36 + 4) = v33;
      *v37 = v33;
      v22 = v58;
      *(v36 + 12) = 2080;
      sub_10002662C();
      v53 = v24;
      v38 = v33;
      v56 = v34;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v55 = v35;
      v42 = *(v9 + 8);
      v54 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v42(v19, v8);
      v43 = sub_10001DC98(v39, v41, &v65);

      *(v36 + 14) = v43;
      *(v36 + 22) = 2080;
      v24 = v53;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v42(v16, v8);
      v47 = sub_10001DC98(v44, v46, &v65);

      *(v36 + 24) = v47;
      *(v36 + 32) = 1024;
      v49 = v61;
      v48 = v62;
      LODWORD(v47) = static Date.> infix(_:_:)() & 1;
      v42(v49, v8);
      v42(v48, v8);
      *(v36 + 34) = v47;
      v50 = v56;
      _os_log_impl(&_mh_execute_header, v56, v55, "[%@] Verifying token is expireDate: %s current: %s expired: %{BOOL}d", v36, 0x26u);
      sub_10000FF00(v57);

      swift_arrayDestroy();
    }

    else
    {
      v42 = *(v9 + 8);
      v42(v61, v8);
      v42(v62, v8);

      v42(v16, v8);
      v42(v19, v8);
    }

    (*(v64 + 8))(v63, v60);
    v31 = static Date.> infix(_:_:)();
    v42(v22, v8);
    v42(v24, v8);
  }

  return v31 & 1;
}

char *sub_1000255F0(uint64_t a1, uint64_t a2)
{
  v2 = String.count.getter();
  if (v2)
  {
    v3 = v2;
    result = sub_1000266C4(0, v2 & ~(v2 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    do
    {
      v6 = String.subscript.getter();
      v7 = v5;
      if (v6 == 45 && v5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v7 = 0xE100000000000000;
        v6 = 43;
      }

      else if (v6 == 95 && v7 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v7 = 0xE100000000000000;
        v6 = 47;
      }

      v9 = *(&_swiftEmptyArrayStorage + 2);
      v8 = *(&_swiftEmptyArrayStorage + 3);
      if (v9 >= v8 >> 1)
      {
        sub_1000266C4((v8 > 1), v9 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v9 + 1;
      v10 = &_swiftEmptyArrayStorage + 16 * v9;
      *(v10 + 4) = v6;
      *(v10 + 5) = v7;
      String.index(after:)();
      --v3;
    }

    while (v3);
  }

  sub_100002AD8(&qword_100039F10, &qword_10002B348);
  sub_100026FA0();
  String.init<A>(_:)();

  v11 = String.count.getter();

  v12 = v11 & 3;
  if (v11 <= 0)
  {
    v12 = -(-v11 & 3);
  }

  if (v12)
  {
    v13._countAndFlagsBits = 61;
    v13._object = 0xE100000000000000;
    v14 = String.init(repeating:count:)(v13, 4 - v12);
    String.append(_:)(v14);
  }

  v15 = Data.init(base64Encoded:options:)();
  v17 = v16;
  sub_100027004(v15, v16);

  if (v17 >> 60 != 15)
  {
    sub_100026F54(v15, v17);
  }

  return v15;
}

uint64_t sub_100025868(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100002AD8(&qword_100039F68, &qword_10002B648);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000D5B4(a1, a1[3]);
  sub_100027D08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

Swift::Int sub_1000259FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100025A44(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100025A88()
{
  if (*v0)
  {
    return 6580587;
  }

  else
  {
    return 6777953;
  }
}

uint64_t sub_100025AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6777953 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6580587 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100025B88(uint64_t a1)
{
  v2 = sub_100027D08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025BC4(uint64_t a1)
{
  v2 = sub_100027D08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100025C00@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100027348(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_100025C50(void *a1)
{
  v3 = sub_100002AD8(&qword_100039F70, &qword_10002B650);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000D5B4(a1, a1[3]);
  sub_100027C4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100025E8C()
{
  v1 = *v0;
  v2 = 6452595;
  v3 = 6580589;
  if (v1 != 5)
  {
    v3 = 0x6E5F6C6169726573;
  }

  v4 = 25705;
  if (v1 != 3)
  {
    v4 = 0x6E656B6F74;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 7370853;
  if (v1 != 1)
  {
    v5 = 7627113;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100025F3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10002752C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100025F70(uint64_t a1)
{
  v2 = sub_100027C4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025FAC(uint64_t a1)
{
  v2 = sub_100027C4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100025FE8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100027770(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

void *sub_100026054@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100026520(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100026520((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100026520(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100026520(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100026520((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_100026414(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002AD8(&qword_1000395E8, &qword_10002A788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100026520(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002AD8(&qword_100039F38, &qword_10002B358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10002662C()
{
  result = qword_100039F00;
  if (!qword_100039F00)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F00);
  }

  return result;
}

char *sub_100026684(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000266E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000266A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000267F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000266C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100026900(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000266E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002AD8(&qword_100039618, &qword_10002A7B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000267F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002AD8(&qword_1000395E8, &qword_10002A788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100026900(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002AD8(&qword_100039F20, &qword_10002B350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100026A0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000255F0(a1, a2);
  if (v4 >> 60 == 15)
  {
    sub_100026F00();
    swift_allocError();
    *v5 = 1;
    return swift_willThrow();
  }

  else
  {
    v7 = v3;
    v8 = v4;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10002706C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100026F54(v7, v8);

    if (!v2)
    {
      return v9;
    }
  }

  return result;
}

uint64_t sub_100026AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1000255F0(a1, a2);
  if (v6 >> 60 == 15)
  {
    sub_100026F00();
    swift_allocError();
    *v7 = 1;
    return swift_willThrow();
  }

  else
  {
    v9 = v5;
    v10 = v6;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100027018();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100026F54(v9, v10);

    if (!v3)
    {
      a3[4] = v15;
      a3[5] = v16;
      a3[6] = v17;
      *a3 = v11;
      a3[1] = v12;
      a3[2] = v13;
      a3[3] = v14;
    }
  }

  return result;
}

uint64_t sub_100026C10@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v44 = 46;
  v45 = 0xE100000000000000;
  v32[2] = &v44;
  v5 = sub_100026054(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000138A4, v32, a1, a2, &v44);
  if (v5[2] != 3)
  {

    sub_100026F00();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    return sub_100026F54(0, 0xF000000000000000);
  }

  v6 = v5;

  v7 = static String._fromSubstring(_:)();
  v9 = v8;

  result = sub_100026A0C(v7, v9);
  if (v3)
  {

    return sub_100026F54(0, 0xF000000000000000);
  }

  v65 = v12;
  if (v6[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v15 = v13;
    v16 = v11;

    v17 = static String._fromSubstring(_:)();
    v19 = v18;

    result = sub_100026AFC(v17, v19, v64);
    v61 = v64[4];
    v62 = v64[5];
    v63 = v64[6];
    v57 = v64[0];
    v58 = v64[1];
    v59 = v64[2];
    v60 = v64[3];
    if (v6[2] >= 3uLL)
    {

      v21 = static String._fromSubstring(_:)();
      v23 = v22;

      v24 = sub_1000255F0(v21, v23);
      v26 = v25;
      sub_100026F54(0, 0xF000000000000000);
      v40 = v61;
      v41 = v62;
      v42 = v63;
      v36 = v57;
      v37 = v58;
      v38 = v59;
      v39 = v60;
      v48 = v57;
      v49 = v58;
      v53 = v62;
      v54 = v63;
      v51 = v60;
      v52 = v61;
      *&v34 = v14;
      *(&v34 + 1) = v16;
      *&v35 = v65;
      *(&v35 + 1) = v15;
      *&v43 = v24;
      *(&v43 + 1) = v26;
      v44 = v14;
      v45 = v16;
      v46 = v65;
      v47 = v15;
      v50 = v59;
      v55 = v24;
      v56 = v26;
      sub_100026F68(&v34, v33);
      result = sub_10000D4BC(&v44);
      v27 = v41;
      a3[6] = v40;
      a3[7] = v27;
      v28 = v43;
      a3[8] = v42;
      a3[9] = v28;
      v29 = v37;
      a3[2] = v36;
      a3[3] = v29;
      v30 = v39;
      a3[4] = v38;
      a3[5] = v30;
      v31 = v35;
      *a3 = v34;
      a3[1] = v31;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100026F00()
{
  result = qword_100039F08;
  if (!qword_100039F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F08);
  }

  return result;
}

uint64_t sub_100026F54(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000D80C(result, a2);
  }

  return result;
}

unint64_t sub_100026FA0()
{
  result = qword_100039F18;
  if (!qword_100039F18)
  {
    sub_10001E244(&qword_100039F10, &qword_10002B348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F18);
  }

  return result;
}

uint64_t sub_100027004(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001EA94(result, a2);
  }

  return result;
}

unint64_t sub_100027018()
{
  result = qword_100039F28;
  if (!qword_100039F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F28);
  }

  return result;
}

unint64_t sub_10002706C()
{
  result = qword_100039F30;
  if (!qword_100039F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F30);
  }

  return result;
}

__n128 sub_1000270D0(uint64_t a1, __int128 *a2)
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

uint64_t sub_1000270F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002713C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000271C0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000271DC(uint64_t a1)
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

__n128 sub_100027204(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_100027230(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_100027278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000272F4()
{
  result = qword_100039F40;
  if (!qword_100039F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F40);
  }

  return result;
}

uint64_t sub_100027348(void *a1)
{
  v3 = sub_100002AD8(&qword_100039F58, &qword_10002B640);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000D5B4(a1, a1[3]);
  sub_100027D08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100002B88(a1);
  return v7;
}

uint64_t sub_10002752C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6452595 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7370853 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7627113 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 6580589 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E5F6C6169726573 && a2 == 0xE90000000000006FLL)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100027770@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100002AD8(&qword_100039F48, &qword_10002B638);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  sub_10000D5B4(a1, a1[3]);
  sub_100027C4C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002B88(a1);
  }

  LOBYTE(v53[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v12 = v9;
  LOBYTE(v53[0]) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v66 = v14 & 1;
  LOBYTE(v53[0]) = 2;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v65 = v15 & 1;
  LOBYTE(v53[0]) = 3;
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v16;
  LOBYTE(v53[0]) = 4;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v18;
  v39 = v17;
  LOBYTE(v53[0]) = 5;
  v41 = 0;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v19;
  v67 = 6;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = *(v6 + 8);
  v41 = v20;
  v22 = v8;
  v24 = v23;
  v21(v22, v5);
  v37 = v12;
  *&v46 = v12;
  *(&v46 + 1) = v11;
  v36 = v13;
  *&v47 = v13;
  v35 = v66;
  BYTE8(v47) = v66;
  *&v48 = v45;
  v34 = v65;
  BYTE8(v48) = v65;
  v25 = v42;
  *&v49 = v42;
  v26 = v44;
  *(&v49 + 1) = v44;
  v27 = v43;
  *&v50 = v39;
  *(&v50 + 1) = v43;
  v28 = v40;
  *&v51 = v38;
  *(&v51 + 1) = v40;
  *&v52 = v41;
  *(&v52 + 1) = v24;
  sub_100027CA0(&v46, v53);
  sub_100002B88(a1);
  v53[0] = v37;
  v53[1] = v11;
  v53[2] = v36;
  v54 = v35;
  v55 = v45;
  v56 = v34;
  v57 = v25;
  v58 = v26;
  v59 = v39;
  v60 = v27;
  v61 = v38;
  v62 = v28;
  v63 = v41;
  v64 = v24;
  result = sub_100027CD8(v53);
  v30 = v51;
  a2[4] = v50;
  a2[5] = v30;
  a2[6] = v52;
  v31 = v47;
  *a2 = v46;
  a2[1] = v31;
  v32 = v49;
  a2[2] = v48;
  a2[3] = v32;
  return result;
}

unint64_t sub_100027C4C()
{
  result = qword_100039F50;
  if (!qword_100039F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F50);
  }

  return result;
}

unint64_t sub_100027D08()
{
  result = qword_100039F60;
  if (!qword_100039F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JWTToken.Payload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JWTToken.Payload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100027EC0()
{
  result = qword_100039F78;
  if (!qword_100039F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F78);
  }

  return result;
}

unint64_t sub_100027F18()
{
  result = qword_100039F80;
  if (!qword_100039F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F80);
  }

  return result;
}

unint64_t sub_100027F70()
{
  result = qword_100039F88;
  if (!qword_100039F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F88);
  }

  return result;
}

unint64_t sub_100027FC8()
{
  result = qword_100039F90;
  if (!qword_100039F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F90);
  }

  return result;
}

unint64_t sub_100028020()
{
  result = qword_100039F98;
  if (!qword_100039F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F98);
  }

  return result;
}

unint64_t sub_100028078()
{
  result = qword_100039FA0;
  if (!qword_100039FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039FA0);
  }

  return result;
}

void sub_1000280EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002AD8(&qword_100039FB8, &qword_10002B888);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_10000D758(*(a1 + 56) + 32 * v12, v26);
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v23[2] = v25;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v16 = v25;
    sub_10000D904(v24, v23);
    sub_10002889C();

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v17 = sub_1000134FC(v16, *(&v16 + 1));
    if (v18)
    {
      *(v2[6] + 16 * v17) = v16;
      v8 = v17;

      v9 = v2[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v22;

      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(v2[6] + 16 * v17) = v16;
      *(v2[7] + 8 * v17) = v22;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = v7;
  }
}

Class sub_100028350(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10002889C();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_1000283F8()
{
  sub_100002AD8(&qword_100039FA8, &qword_10002B880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002AC10;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0x800000010002C4C0;
  *(inited + 48) = 1;
  v2 = sub_100013A74(inited);
  swift_setDeallocating();
  sub_1000284E0(inited + 32);
  sub_100028548(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000284E0(uint64_t a1)
{
  v2 = sub_100002AD8(&qword_100039B88, &qword_10002AE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100028548(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.metrics.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446466;
    v17 = v2;
    aBlock[0] = v9;
    *(v8 + 4) = sub_10001DC98(0xD000000000000037, 0x800000010002C4E0, aBlock);
    *(v8 + 12) = 2080;
    v10 = Dictionary.description.getter();
    v12 = sub_10001DC98(v10, v11, aBlock);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Posting CA event for %{public}s: %s", v8, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v5, v17);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  aBlock[4] = sub_10002887C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028350;
  aBlock[3] = &unk_100036528;
  v15 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v15);
}

uint64_t sub_100028844()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028884(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002889C()
{
  result = qword_100039FB0;
  if (!qword_100039FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039FB0);
  }

  return result;
}

uint64_t dispatch thunk of Bag.subscript.getter()
{
  return dispatch thunk of Bag.subscript.getter();
}

{
  return dispatch thunk of Bag.subscript.getter();
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}
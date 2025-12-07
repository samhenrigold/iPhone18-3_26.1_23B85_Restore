uint64_t sub_1006A6254()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1006A77C8;
  }

  else
  {

    v2 = sub_1006A6370;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006A6370()
{
  v63 = v0;
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {

    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    v2 = v0[7];
    v3 = v0[8];
    v4 = v0[6];
    sub_100023184(v0[4], v4);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_10000B3A8(v0[6], &unk_1016C7C90, &qword_1013BB4B0);
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v5 = v0[27];
      v6 = v0[21];
      v7 = v0[22];
      v8 = v0[4];
      v9 = type metadata accessor for Logger();
      sub_1000076D4(v9, qword_10177B2D0);
      (*(v7 + 16))(v5, v8, v6);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[27];
      v14 = v0[21];
      v15 = v0[22];
      if (v12)
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v62 = v17;
        *v16 = 141558275;
        *(v16 + 4) = 1752392040;
        *(v16 + 12) = 2081;
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v18 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v19;
        (*(v15 + 8))(v13, v14);
        v21 = sub_1000136BC(v18, v20, &v62);

        *(v16 + 14) = v21;
        _os_log_impl(&_mh_execute_header, v10, v11, "No wildModeAssociationRecord for %{private,mask.hash}s", v16, 0x16u);
        sub_100007BAC(v17);
      }

      else
      {

        (*(v15 + 8))(v13, v14);
      }

      v55 = v0[10];
      v56 = v0[2];
      (*(v0[12] + 56))(v55, 1, 1, v0[11]);
      v56(v55);

      sub_10000B3A8(v55, &unk_101696AC0, &qword_101390A60);

      v57 = v0[1];

      return v57();
    }

    else
    {
      sub_10002AB74(v0[6], v0[9], type metadata accessor for WildModeAssociationRecord);
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v33 = v0[28];
      v34 = v0[21];
      v35 = v0[22];
      v36 = v0[4];
      v37 = type metadata accessor for Logger();
      v0[50] = sub_1000076D4(v37, qword_10177B2D0);
      v38 = *(v35 + 16);
      v0[51] = v38;
      v0[52] = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v38(v33, v36, v34);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      v41 = os_log_type_enabled(v39, v40);
      v42 = v0[28];
      v43 = v0[21];
      v44 = v0[22];
      if (v41)
      {
        v45 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62 = v61;
        *v45 = 136446210;
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        v49 = *(v44 + 8);
        v49(v42, v43);
        v50 = sub_1000136BC(v46, v48, &v62);

        *(v45 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v39, v40, "Fetching encrypted serial number for %{public}s", v45, 0xCu);
        sub_100007BAC(v61);
      }

      else
      {

        v49 = *(v44 + 8);
        v49(v42, v43);
      }

      v0[53] = v49;
      v58 = swift_task_alloc();
      v0[54] = v58;
      *v58 = v0;
      v58[1] = sub_1006A6ED4;
      v59 = v0[13];
      v60 = v0[9];

      return sub_1012226E0(v59, v60);
    }
  }

  else
  {
    v23 = v0[19];
    v22 = v0[20];
    sub_10002AB74(v1, v22, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100721C9C(v22, v23, type metadata accessor for LocalFindableAccessoryRecord);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[19];
    if (v26)
    {
      v28 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v28 = 136446466;
      *(v28 + 4) = sub_1000136BC(0xD000000000000030, 0x800000010135D960, &v62);
      *(v28 + 12) = 2080;
      v29 = sub_100158AA8();
      v31 = v30;
      sub_100721D04(v27, type metadata accessor for LocalFindableAccessoryRecord);
      v32 = sub_1000136BC(v29, v31, &v62);

      *(v28 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s Found LocalFindableRecord: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100721D04(v27, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v51 = swift_task_alloc();
    v0[48] = v51;
    *v51 = v0;
    v51[1] = sub_1006A6BDC;
    v52 = v0[20];
    v53 = v0[14];

    return sub_101216C8C(v53, v52);
  }
}

uint64_t sub_1006A6BDC()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1006A7FD4;
  }

  else
  {
    v2 = sub_1006A6CF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006A6CF0()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[2];
  (*(v4 + 16))(v5, v2, v3);
  (*(v4 + 56))(v5, 0, 1, v3);
  v6(v5);

  sub_10000B3A8(v5, &unk_101696AC0, &qword_101390A60);
  (*(v4 + 8))(v2, v3);
  sub_100721D04(v1, type metadata accessor for LocalFindableAccessoryRecord);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006A6ED4()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_1006A8370;
  }

  else
  {
    v2 = sub_1006A6FE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006A6FE8()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[2];
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6(v4);

  sub_10000B3A8(v4, &unk_101696AC0, &qword_101390A60);
  (*(v2 + 8))(v1, v3);
  sub_100721D04(v5, type metadata accessor for WildModeAssociationRecord);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006A71BC()
{
  v48 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_100023184(v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[6], &unk_1016C7C90, &qword_1013BB4B0);
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v4 = v0[27];
    v5 = v0[21];
    v6 = v0[22];
    v7 = v0[4];
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177B2D0);
    (*(v6 + 16))(v4, v7, v5);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[27];
    v13 = v0[21];
    v14 = v0[22];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v47 = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v14 + 8))(v12, v13);
      v20 = sub_1000136BC(v17, v19, &v47);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "No wildModeAssociationRecord for %{private,mask.hash}s", v15, 0x16u);
      sub_100007BAC(v16);
    }

    else
    {

      (*(v14 + 8))(v12, v13);
    }

    v39 = v0[10];
    v40 = v0[2];
    (*(v0[12] + 56))(v39, 1, 1, v0[11]);
    v40(v39);

    sub_10000B3A8(v39, &unk_101696AC0, &qword_101390A60);

    v41 = v0[1];

    return v41();
  }

  else
  {
    sub_10002AB74(v0[6], v0[9], type metadata accessor for WildModeAssociationRecord);
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v21 = v0[28];
    v22 = v0[21];
    v23 = v0[22];
    v24 = v0[4];
    v25 = type metadata accessor for Logger();
    v0[50] = sub_1000076D4(v25, qword_10177B2D0);
    v26 = *(v23 + 16);
    v0[51] = v26;
    v0[52] = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v21, v24, v22);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[28];
    v31 = v0[21];
    v32 = v0[22];
    if (v29)
    {
      v33 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      *v33 = 136446210;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      v37 = *(v32 + 8);
      v37(v30, v31);
      v38 = sub_1000136BC(v34, v36, &v47);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "Fetching encrypted serial number for %{public}s", v33, 0xCu);
      sub_100007BAC(v46);
    }

    else
    {

      v37 = *(v32 + 8);
      v37(v30, v31);
    }

    v0[53] = v37;
    v43 = swift_task_alloc();
    v0[54] = v43;
    *v43 = v0;
    v43[1] = sub_1006A6ED4;
    v44 = v0[13];
    v45 = v0[9];

    return sub_1012226E0(v44, v45);
  }
}

uint64_t sub_1006A77C8()
{
  v64 = v0;
  v1 = v0[42];
  v2 = v0[26];
  v3 = v0[21];
  v4 = v0[4];

  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[44];
  v9 = v0[26];
  v10 = v0[21];
  if (v7)
  {
    v61 = v0[44];
    v11 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v11 = 136446723;
    *(v11 + 4) = sub_1000136BC(0xD000000000000030, 0x800000010135D960, &v63);
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v61(v9, v10);
    v15 = sub_1000136BC(v12, v14, &v63);

    *(v11 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s No LocalFindableRecord: %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v8(v9, v10);
  }

  v16 = v0[7];
  v17 = v0[8];
  v18 = v0[6];
  sub_100023184(v0[4], v18);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_10000B3A8(v0[6], &unk_1016C7C90, &qword_1013BB4B0);
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v19 = v0[27];
    v20 = v0[21];
    v21 = v0[22];
    v22 = v0[4];
    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177B2D0);
    (*(v21 + 16))(v19, v22, v20);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[27];
    v28 = v0[21];
    v29 = v0[22];
    if (v26)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v63 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v29 + 8))(v27, v28);
      v35 = sub_1000136BC(v32, v34, &v63);

      *(v30 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "No wildModeAssociationRecord for %{private,mask.hash}s", v30, 0x16u);
      sub_100007BAC(v31);
    }

    else
    {

      (*(v29 + 8))(v27, v28);
    }

    v54 = v0[10];
    v55 = v0[2];
    (*(v0[12] + 56))(v54, 1, 1, v0[11]);
    v55(v54);

    sub_10000B3A8(v54, &unk_101696AC0, &qword_101390A60);

    v56 = v0[1];

    return v56();
  }

  else
  {
    sub_10002AB74(v0[6], v0[9], type metadata accessor for WildModeAssociationRecord);
    if (qword_101694910 != -1)
    {
      swift_once();
    }

    v36 = v0[28];
    v37 = v0[21];
    v38 = v0[22];
    v39 = v0[4];
    v40 = type metadata accessor for Logger();
    v0[50] = sub_1000076D4(v40, qword_10177B2D0);
    v41 = *(v38 + 16);
    v0[51] = v41;
    v0[52] = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41(v36, v39, v37);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v0[28];
    v46 = v0[21];
    v47 = v0[22];
    if (v44)
    {
      v48 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = v62;
      *v48 = 136446210;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v47 + 8);
      v52(v45, v46);
      v53 = sub_1000136BC(v49, v51, &v63);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v42, v43, "Fetching encrypted serial number for %{public}s", v48, 0xCu);
      sub_100007BAC(v62);
    }

    else
    {

      v52 = *(v47 + 8);
      v52(v45, v46);
    }

    v0[53] = v52;
    v58 = swift_task_alloc();
    v0[54] = v58;
    *v58 = v0;
    v58[1] = sub_1006A6ED4;
    v59 = v0[13];
    v60 = v0[9];

    return sub_1012226E0(v59, v60);
  }
}

uint64_t sub_1006A7FD4()
{
  v23 = v0;
  (*(v0 + 336))(*(v0 + 200), *(v0 + 32), *(v0 + 168));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v21 = *(v0 + 352);
    v3 = *(v0 + 200);
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v5 = 136446466;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v21(v3, v4);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error fetching encrypted serial number for %{public}s. Error %{public}@", v5, 0x16u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);
  }

  else
  {
    v13 = *(v0 + 352);
    v14 = *(v0 + 200);
    v15 = *(v0 + 168);

    v13(v14, v15);
  }

  v16 = *(v0 + 160);
  v17 = *(v0 + 80);
  v18 = *(v0 + 16);
  (*(*(v0 + 96) + 56))(v17, 1, 1, *(v0 + 88));
  v18(v17);

  sub_10000B3A8(v17, &unk_101696AC0, &qword_101390A60);
  sub_100721D04(v16, type metadata accessor for LocalFindableAccessoryRecord);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1006A8370()
{
  v23 = v0;
  (*(v0 + 408))(*(v0 + 192), *(v0 + 32), *(v0 + 168));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v21 = *(v0 + 424);
    v3 = *(v0 + 192);
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v5 = 136446466;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v21(v3, v4);
    v11 = sub_1000136BC(v8, v10, &v22);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error fetching encrypted serial number for %{public}s. Error %{public}@", v5, 0x16u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);
  }

  else
  {
    v13 = *(v0 + 424);
    v14 = *(v0 + 192);
    v15 = *(v0 + 168);

    v13(v14, v15);
  }

  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = *(v0 + 16);
  (*(*(v0 + 96) + 56))(v16, 1, 1, *(v0 + 88));
  v18(v16);

  sub_10000B3A8(v16, &unk_101696AC0, &qword_101390A60);
  sub_100721D04(v17, type metadata accessor for WildModeAssociationRecord);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1006A86FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1006A871C, a2, 0);
}

uint64_t sub_1006A871C()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1000D2464;
  v2 = v0[4];
  v3 = v0[2];

  return sub_100C57B00(v3, v2);
}

uint64_t sub_1006A87BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  v7 = type metadata accessor for UUID();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = type metadata accessor for AccessoryCommand(0);
  v6[30] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[31] = v8;
  *v8 = v6;
  v8[1] = sub_1006A8930;

  return daemon.getter();
}

uint64_t sub_1006A8930(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 256) = a1;

  v3 = swift_task_alloc();
  *(v2 + 264) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003E8C(&unk_1016B10E0, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_1006A8B0C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1006A8B0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_1006A95E0;
  }

  else
  {

    v4 = sub_1006A8C28;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1006A8C28()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[20];
  (*(v5 + 56))(v2, 1, 1, v4);
  (*(v5 + 16))(v3, v6, v4);
  sub_1000D2A70(v2, v1, &qword_1016980D0, &unk_10138F3B0);
  v7 = *(v5 + 48);
  v8 = v7(v1, 1, v4);
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[25];
  if (v8 == 1)
  {
    v12 = v0[23];
    UUID.init()();
    sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
    if (v7(v10, 1, v12) != 1)
    {
      sub_10000B3A8(v0[27], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v13 = v0[23];
    v14 = v0[24];
    sub_10000B3A8(v0[28], &qword_1016980D0, &unk_10138F3B0);
    (*(v14 + 32))(v11, v10, v13);
  }

  v16 = v0[29];
  v15 = v0[30];
  v17 = v0[26];
  v18 = v0[23];
  v19 = *(v0[24] + 32);
  v19(v15, v0[25], v18);
  v19(v15 + v16[5], v17, v18);
  v20 = v15 + v16[6];
  *v20 = xmmword_1013B65F0;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = xmmword_10139BF70;
  *(v15 + v16[7]) = 0;
  *(v15 + v16[8]) = 1;
  v21 = swift_task_alloc();
  v0[36] = v21;
  *v21 = v0;
  v21[1] = sub_1006A8E84;
  v22 = v0[30];

  return sub_10121B780((v0 + 2), v22, 2);
}

uint64_t sub_1006A8E84()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1006A9830;
  }

  else
  {
    v2 = sub_1006A8F98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006A8F98()
{
  v36 = v0;
  sub_1000D2A70((v0 + 2), (v0 + 8), &qword_1016A24A8, &unk_1013F60E0);
  if (v0[11])
  {
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    if (swift_dynamicCast())
    {
      v2 = v0[14];
      v1 = v0[15];
      v3 = v0[18];
      if (((v3 >> 58) & 0xC | (v1 >> 60) & 3) == 4)
      {
        v4 = v2 >> 24;
        if (qword_101694B80 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_1000076D4(v5, qword_10177B7F8);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v35[0] = swift_slowAlloc();
          *v8 = 136315394;
          *(v8 + 4) = sub_1000136BC(0xD000000000000033, 0x800000010135D8E0, v35);
          *(v8 + 12) = 2082;
          v9 = (v4 << 24) | (BYTE2(v2) << 16) | v2;
          v10 = sub_10098E010();
          v12 = sub_1000136BC(v10, v11, v35);

          *(v8 + 14) = v12;
          _os_log_impl(&_mh_execute_header, v6, v7, "%s fwVersionResponse: %{public}s", v8, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v9 = (v4 << 24) | (BYTE2(v2) << 16) | v2;
        }

        v30 = v0[30];
        v31 = v0[21];
        v32 = sub_10098E0F0(v9);
        v34 = v33;
        v31();
        sub_100016590(v32, v34);

        sub_10000B3A8((v0 + 2), &qword_1016A24A8, &unk_1013F60E0);
        sub_100721D04(v30, type metadata accessor for AccessoryCommand);
        goto LABEL_19;
      }

      sub_100721758(v0[14], v1, v0[16], v0[17], v3);
    }
  }

  else
  {
    sub_10000B3A8((v0 + 8), &qword_1016A24A8, &unk_1013F60E0);
  }

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B7F8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1000136BC(0xD000000000000033, 0x800000010135D8E0, v35);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s Invalid fwVersionResponse!", v16, 0xCu);
    sub_100007BAC(v17);
  }

  v18 = v0[30];
  sub_1003FD838();
  v19 = swift_allocError();
  *v20 = 4;
  swift_willThrow();

  sub_10000B3A8((v0 + 2), &qword_1016A24A8, &unk_1013F60E0);
  sub_100721D04(v18, type metadata accessor for AccessoryCommand);
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v13, qword_10177B7F8);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35[0] = v25;
    *v23 = 136315394;
    *(v23 + 4) = sub_1000136BC(0xD000000000000033, 0x800000010135D8E0, v35);
    *(v23 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v26;
    *v24 = v26;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s failed due to %{public}@", v23, 0x16u);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  v27 = v0[21];
  swift_errorRetain();
  v27(v19, 0, 1);

LABEL_19:

  v28 = v0[1];

  return v28();
}

uint64_t sub_1006A95E0()
{
  v13 = v0;

  v1 = v0[35];
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B7F8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_1000136BC(0xD000000000000033, 0x800000010135D8E0, &v12);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s failed due to %{public}@", v5, 0x16u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);
  }

  v9 = v0[21];
  swift_errorRetain();
  v9(v1, 0, 1);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1006A9830()
{
  v14 = v0;
  v1 = v0[30];

  sub_100721D04(v1, type metadata accessor for AccessoryCommand);
  v2 = v0[37];
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B7F8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD000000000000033, 0x800000010135D8E0, &v13);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s failed due to %{public}@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  v10 = v0[21];
  swift_errorRetain();
  v10(v2, 0, 1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1006A9AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v61 = a3;
  v73 = a4;
  v75 = a1;
  v76 = a2;
  v66 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v4 = __chkstk_darwin(v66);
  v62 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v65 = &v59 - v6;
  v63 = type metadata accessor for UUID();
  v69 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v64);
  v67 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for OwnedBeaconRecord(0);
  v9 = __chkstk_darwin(v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v59 - v11;
  v74 = type metadata accessor for SharedBeaconRecord(0);
  v12 = __chkstk_darwin(v74);
  v72 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v59 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_1016A7858, &qword_1013B6790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v21 = SPBeaconTaskNamePlaySound;
  *(inited + 32) = SPBeaconTaskNamePlaySound;
  v22 = v21;
  static Date.trustedNow.getter(v19);
  v23 = objc_allocWithZone(SPBeaconTaskInformation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v25 = [v23 initWithName:v22 lastUpdated:isa error:0 state:2];

  (*(v17 + 8))(v19, v16);
  *(inited + 40) = v25;
  sub_1009097B0(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_1016A7860, &qword_1013B6798);
  sub_10001F280(v75, v78);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (swift_dynamicCast())
  {
    v26 = v72;
    sub_10002AB74(v15, v72, type metadata accessor for SharedBeaconRecord);
    v27 = sub_1006EAD60(v26, *(v76 + 280));
    [v27 setConnectionAllowed:0];
    [v27 setConnectableDeviceCount:0];
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
    v28 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v27 setTaskInformation:v28];

    v29 = type metadata accessor for SharedBeaconRecord;
LABEL_3:
    v30 = v29;
    v31 = v26;
LABEL_4:
    sub_100721D04(v31, v30);
    v32 = v73;
LABEL_5:
    *v32 = v27;
    return sub_100007BAC(v78);
  }

  v34 = v76;
  v36 = v70;
  v35 = v71;
  if (swift_dynamicCast())
  {
    v37 = v68;
    sub_10002AB74(v36, v68, type metadata accessor for OwnedBeaconRecord);
    v38 = v67;
    sub_100721C9C(v37 + *(v35 + 24), v67, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_100721D04(v38, type metadata accessor for StableIdentifier);
        v27 = sub_1006EC8A4(v37, *(v34 + 280));
        sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
        sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr, &protocol conformance descriptor for NSObject);
        v56 = Set._bridgeToObjectiveC()().super.isa;
        [v27 setShares:v56];

        type metadata accessor for SPBeaconTaskName(0);
        sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
        sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
        v57 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v27 setTaskInformation:v57];

        [v27 setSeparationState:SPTagSeparationStateNone];
        [v27 setBeaconSeparationState:0];
        sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
        sub_100009D18(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr, &protocol conformance descriptor for NSObject);
        v58 = Set._bridgeToObjectiveC()().super.isa;
        [v27 setSafeLocations:v58];

        [v27 setCanBeLeashedByHost:0];
        [v27 setConnectionAllowed:0];
        [v27 setConnectableDeviceCount:1];
      }

      else
      {
        sub_100721D04(v38, type metadata accessor for StableIdentifier);
        v27 = sub_1006EC8A4(v37, *(v34 + 280));
        [v27 setSeparationState:SPTagSeparationStateNone];
        [v27 setBeaconSeparationState:0];
        sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
        sub_100009D18(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr, &protocol conformance descriptor for NSObject);
        v45 = Set._bridgeToObjectiveC()().super.isa;
        [v27 setSafeLocations:v45];

        [v27 setCanBeLeashedByHost:0];
        sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
        sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr, &protocol conformance descriptor for NSObject);
        v46 = Set._bridgeToObjectiveC()().super.isa;
        [v27 setShares:v46];

        type metadata accessor for SPBeaconTaskName(0);
        sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
        sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
        v47 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v27 setTaskInformation:v47];
      }

      v30 = type metadata accessor for OwnedBeaconRecord;
      v31 = v37;
      goto LABEL_4;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

      v32 = v73;
      v40 = v63;
      v41 = v69;
    }

    else
    {
      v32 = v73;
      v40 = v63;
      v41 = v69;
      if (EnumCaseMultiPayload != 3)
      {

        sub_100721D04(v38, type metadata accessor for StableIdentifier);
        v27 = sub_1006EC8A4(v37, *(v34 + 280));
        sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
        sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr, &protocol conformance descriptor for NSObject);
        v55 = Set._bridgeToObjectiveC()().super.isa;
        [v27 setShares:v55];

LABEL_21:
        sub_100721D04(v37, type metadata accessor for OwnedBeaconRecord);
        goto LABEL_5;
      }

      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    }

    v48 = v38;

    v49 = *(v41 + 8);
    v69 = v41 + 8;
    v49(v48, v40);
    v27 = sub_1006EC8A4(v37, *(v34 + 280));
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
    v50 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v27 setTaskInformation:v50];

    [v27 setConnectionAllowed:0];
    [v27 setConnectableDeviceCount:1];
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v51 = [v27 identifier];
    v52 = v60;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = sub_1011A30E0(v52);
    v49(v52, v40);
    [v27 setSeparationState:v53];

    [v27 setBeaconSeparationState:0];
    sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
    sub_100009D18(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr, &protocol conformance descriptor for NSObject);
    v54 = Set._bridgeToObjectiveC()().super.isa;
    [v27 setSafeLocations:v54];

    [v27 setCanBeLeashedByHost:0];
    goto LABEL_21;
  }

  v42 = v65;
  if (swift_dynamicCast())
  {
    v26 = v62;
    sub_10002AB74(v42, v62, type metadata accessor for LocalFindableAccessoryRecord);
    v27 = sub_1006EE39C(v26, *(v34 + 280));
    sub_1009097B0(_swiftEmptyArrayStorage);
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
    v43 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v27 setTaskInformation:v43];

    v29 = type metadata accessor for LocalFindableAccessoryRecord;
    goto LABEL_3;
  }

  type metadata accessor for SPOwnerSessionError(0);
  v77 = 18;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  v44 = v79;
  swift_willThrow();
  result = sub_100007BAC(v78);
  *v61 = v44;
  return result;
}

void sub_1006AAA30(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v301 = a3;
  v313 = a4;
  v308 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v6 = __chkstk_darwin(v308);
  v302 = &v286 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v307 = &v286 - v8;
  v9 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v9 - 8);
  v297 = &v286 - v10;
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v11 - 8);
  v304 = &v286 - v12;
  v13 = type metadata accessor for ShareRecord(0);
  v295 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v296 = &v286 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v16 = __chkstk_darwin(v15 - 8);
  v294 = &v286 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v293 = &v286 - v19;
  __chkstk_darwin(v18);
  v292 = &v286 - v20;
  *&v346 = type metadata accessor for DirectorySequence();
  v333 = *(v346 - 8);
  v21 = __chkstk_darwin(v346);
  v316 = &v286 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v315 = &v286 - v24;
  __chkstk_darwin(v23);
  v314 = &v286 - v25;
  v305 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v305);
  v306 = &v286 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = type metadata accessor for OwnedBeaconRecord(0);
  v27 = __chkstk_darwin(v311);
  v291 = &v286 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v289 = &v286 - v30;
  v31 = __chkstk_darwin(v29);
  v312 = &v286 - v32;
  __chkstk_darwin(v31);
  v309 = &v286 - v33;
  v318 = type metadata accessor for SharedBeaconRecord(0);
  v34 = __chkstk_darwin(v318);
  v310 = &v286 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v317 = &v286 - v36;
  v342 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v329 = *(v342 - 8);
  __chkstk_darwin(v342);
  v328 = &v286 - v37;
  v38 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v38 - 8);
  v327 = (&v286 - v39);
  v40 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v40 - 8);
  v341 = (&v286 - v41);
  v340 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v326 = *(v340 - 8);
  __chkstk_darwin(v340);
  v325 = &v286 - v42;
  v43 = type metadata accessor for URL();
  v44 = *(v43 - 8);
  v45 = __chkstk_darwin(v43);
  v288 = &v286 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v300 = &v286 - v48;
  v49 = __chkstk_darwin(v47);
  v287 = &v286 - v50;
  v51 = __chkstk_darwin(v49);
  v299 = &v286 - v52;
  v53 = __chkstk_darwin(v51);
  v286 = &v286 - v54;
  v55 = __chkstk_darwin(v53);
  v298 = &v286 - v56;
  v57 = __chkstk_darwin(v55);
  v339 = &v286 - v58;
  v59 = __chkstk_darwin(v57);
  v61 = &v286 - v60;
  __chkstk_darwin(v59);
  v63 = &v286 - v62;
  v64 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  __chkstk_darwin(v64 - 8);
  v324 = (&v286 - v65);
  v336 = type metadata accessor for UUID();
  v334 = *(v336 - 8);
  v66 = __chkstk_darwin(v336);
  v303 = &v286 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __chkstk_darwin(v66);
  v290 = &v286 - v69;
  __chkstk_darwin(v68);
  v71 = &v286 - v70;
  v73 = a2[3];
  v72 = a2[4];
  v319 = a2;
  sub_1000035D0(a2, v73);
  v74 = *(*(*(v72 + 8) + 8) + 32);
  v335 = v71;
  v74(v73);
  v331 = a1;
  v343 = a1[35];
  v75 = *(v343 + 168);
  if (qword_101694EB8 != -1)
  {
    swift_once();
  }

  v76 = sub_1000076D4(v43, qword_10177C0D8);
  v332 = v44;
  v78 = *(v44 + 16);
  v77 = (v44 + 16);
  v78(v63, v76, v43);
  v78(v61, v63, v43);
  v79 = v61;
  v320 = v63;
  v321 = *(v340 + 40);
  v80 = v340;
  v81 = v333 + 56;
  v337 = *(v333 + 56);
  v82 = v325;
  v337(v325 + v321, 1, 1, v346);
  v78(v82, v79, v43);
  *(v82 + *(v80 + 36)) = v75;
  v322 = v78;
  v78(v339, v79, v43);

  v83 = v341;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v84 = v332 + 8;
  v85 = *(v332 + 8);
  v323 = v79;
  v85(v79, v43);
  v86 = v320;
  v344 = v85;
  v345 = v84;
  (v85)();
  v338 = v81;
  v337(v83, 0, 1, v346);
  sub_10002311C(v83, v82 + v321, &qword_1016A5970, &unk_1013B3470);
  v87 = *(v326 + 56);
  v88 = v324;
  v89 = v340;
  v87(v324, 1, 1, v340);
  sub_10000B3A8(v88, &qword_1016A7838, &unk_1013EB250);
  sub_1000D2AD8(v82, v88, &qword_1016A7828, &unk_1013D7340);
  v87(v88, 0, 1, v89);
  v340 = sub_100B34BBC(v88);
  sub_10000B3A8(v88, &qword_1016A7830, &unk_1013D69E0);
  v326 = *(v343 + 168);
  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v90 = sub_1000076D4(v43, qword_10177AC60);
  v91 = v322;
  v322(v86, v90, v43);
  v92 = v323;
  v91(v323, v86, v43);
  v93 = v342;
  v325 = *(v342 + 40);
  v94 = v328;
  v95 = v43;
  v96 = v337;
  v337(v328 + v325, 1, 1, v346);
  v91(v94, v92, v95);
  *(v94 + *(v93 + 36)) = v326;
  v91(v339, v92, v95);

  v97 = v341;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v98 = v92;
  v99 = v344;
  v344(v98, v95);
  v99(v86, v95);
  v96(v97, 0, 1, v346);
  sub_10002311C(v97, v94 + v325, &qword_1016A5970, &unk_1013B3470);
  v100 = *(v329 + 56);
  v101 = v327;
  v102 = v342;
  v100(v327, 1, 1, v342);
  sub_10000B3A8(v101, &qword_1016A5988, &qword_1013B3490);
  sub_1000D2AD8(v94, v101, &qword_1016A5978, &qword_101410D20);
  v100(v101, 0, 1, v102);
  v103 = sub_100B33E08(v101);
  v104 = sub_10000B3A8(v101, &qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v104);
  v105 = v335;
  *(&v286 - 2) = v335;
  v106 = v330;
  v107 = v330;
  v108 = sub_10013CF58(sub_10071EA10, (&v286 - 4), v340)[2];

  v110 = &v286;
  __chkstk_darwin(v109);
  *(&v286 - 2) = v105;
  p_weak_ivar_lyt = v107;
  v112 = sub_10013CEF0(sub_10062BFE0, (&v286 - 4), v103)[2];

  v113 = __OFADD__(v108, v112);
  v114 = v112 + v108;
  if (v113)
  {
    __break(1u);
LABEL_80:
    swift_once();
LABEL_32:
    v160 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v161 = swift_allocObject();
    v346 = xmmword_101385D80;
    *(v161 + 16) = xmmword_101385D80;
    *(v161 + 56) = &type metadata for Bool;
    *(v161 + 64) = &protocol witness table for Bool;
    *(v161 + 32) = v107;
    os_log(_:dso:log:_:_:)(v110, &_mh_execute_header, v160, "thisDeviceConnectionAllowed: %i", v286);

    v162 = v77;
    v163 = v336;
    v164 = v341;
    v341(v162, v336);
    [v112 setConnectionAllowed:v107];
    v165 = [v112 p_weak_ivar_lyt[388]];
    v166 = v335;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    CurrentValueSubject.value.getter();
    v167 = v347[0];
    sub_10069CA80(v166, v347[0]);
    v164(v166, v163);
    if (__OFADD__(v167, v340))
    {
      __break(1u);
    }

    else
    {
      [v112 setConnectableDeviceCount:v167 + v340];
      if (qword_101694920 == -1)
      {
LABEL_34:
        v168 = [v112 p_weak_ivar_lyt[388]];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v169 = sub_1011A30E0(v166);
        v170 = v336;
        v171 = v341;
        v341(v166, v336);
        [v112 setSeparationState:v169];

        v172 = [v112 p_weak_ivar_lyt[388]];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v173 = v166;
        v174 = v166;
        v175 = v331;
        v176 = sub_1009C7E64(v173);
        v171(v174, v170);
        [v112 setBeaconSeparationState:v176];
        v177 = [v112 p_weak_ivar_lyt[388]];
        v178 = v304;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v334 + 56))(v178, 0, 1, v170);
        v179 = sub_1009C75D0(4, v178);
        sub_10000B3A8(v178, &qword_1016980D0, &unk_10138F3B0);
        sub_10112A684(v179);

        sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
        sub_100009D18(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr, &protocol conformance descriptor for NSObject);
        isa = Set._bridgeToObjectiveC()().super.isa;

        [v112 setSafeLocations:isa];

        v181 = v312;
        [v112 setCanBeLeashedByHost:{sub_1006FBA08(v312, v175) & 1}];
        v182 = v311;
        v347[3] = v311;
        v347[4] = sub_100003E8C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
        v183 = sub_1000280DC(v347);
        sub_100721C9C(v181, v183, type metadata accessor for OwnedBeaconRecord);
        v184 = v183 + *(v182 + 20);
        v185 = v297;
        sub_100AC1584(v184, v297);
        v186 = type metadata accessor for BeaconProductInfoRecord(0);
        LODWORD(v183) = (*(*(v186 - 8) + 48))(v185, 1, v186);
        sub_10000B3A8(v185, &unk_1016AF8C0, &unk_1013A07A0);
        if (v183 == 1)
        {
          sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
          v187 = swift_allocObject();
          *(v187 + 16) = v346;
          sub_10001F280(v347, v187 + 32);
          sub_101095D74(v187, 1, 0, 0xF000000000000000, 0, 1, 0, 0);
        }

        sub_100007BAC(v347);
        v188 = v181;
        goto LABEL_77;
      }
    }

    swift_once();
    goto LABEL_34;
  }

  v115 = v95;
  v117 = (v334 + 8);
  v116 = *(v334 + 8);
  v116(v105, v336);
  sub_10001F280(v319, &v348);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v118 = v317;
  if (swift_dynamicCast())
  {
    v119 = v310;
    sub_10002AB74(v118, v310, type metadata accessor for SharedBeaconRecord);
    v112 = sub_1003F6D78(v119, v343);
    [v112 setConnectionAllowed:0];
    [v112 setConnectableDeviceCount:0];
    sub_1006EFEC4(v119, 0, v331);
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
    v120 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v112 setTaskInformation:v120];

    v121 = type metadata accessor for SharedBeaconRecord;
LABEL_8:
    v122 = v121;
    v123 = v119;
LABEL_9:
    sub_100721D04(v123, v122);
    v124 = v313;
LABEL_78:
    *v124 = v112;
    sub_100007BAC(&v348);
    return;
  }

  v125 = v309;
  v126 = v311;
  if (!swift_dynamicCast())
  {
    v130 = v307;
    if (!swift_dynamicCast())
    {
      type metadata accessor for SPOwnerSessionError(0);
      v349 = 18;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      v132 = v347[0];
      swift_willThrow();
      sub_100007BAC(&v348);
      *v301 = v132;
      return;
    }

    v119 = v302;
    sub_10002AB74(v130, v302, type metadata accessor for LocalFindableAccessoryRecord);
    v112 = sub_1003F9EC4(v119, v343);
    sub_1006F5C7C(v119, 0, v331);
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
    v131 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v112 setTaskInformation:v131];

    v121 = type metadata accessor for LocalFindableAccessoryRecord;
    goto LABEL_8;
  }

  v340 = v114;
  v127 = v312;
  sub_10002AB74(v125, v312, type metadata accessor for OwnedBeaconRecord);
  v128 = v306;
  sub_100721C9C(v127 + *(v126 + 24), v306, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v341 = v116;
    v339 = v117;
    if (EnumCaseMultiPayload)
    {
      sub_100721D04(v128, type metadata accessor for StableIdentifier);
      v342 = *(v343 + 168);
      v212 = objc_autoreleasePoolPush();
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v115, qword_10177A518);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      objc_autoreleasePoolPop(v212);
      v347[0] = _swiftEmptyArrayStorage;
      v349 = _swiftEmptyArrayStorage;
      v213 = [objc_opt_self() defaultManager];
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      v214 = v292;
      DirectorySequence.next()();
      v215 = v332;
      v216 = *(v332 + 48);
      if (v216(v214, 1, v115) != 1)
      {
        v217 = *(v215 + 32);
        v218 = v292;
        v219 = v286;
        do
        {
          v217(v219, v218, v115);
          v141 = objc_autoreleasePoolPush();
          sub_1005FF9CC(v219, v342, v347, &v349);
          if (p_weak_ivar_lyt)
          {
            goto LABEL_86;
          }

          p_weak_ivar_lyt = 0;
          objc_autoreleasePoolPop(v141);
          v344(v219, v115);
          DirectorySequence.next()();
        }

        while (v216(v218, 1, v115) != 1);
      }

      v342 = p_weak_ivar_lyt;
      (*(v333 + 8))(v314, v346);
      v220 = v115;
      v221 = static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v222 = static OS_os_log.default.getter();
      *&v346 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v223 = swift_allocObject();
      *(v223 + 16) = xmmword_10138BBE0;
      v224 = v347[0];
      v225 = *(v347[0] + 16);
      *(v223 + 56) = &type metadata for Int;
      *(v223 + 64) = &protocol witness table for Int;
      *(v223 + 32) = v225;
      sub_100003E8C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

      v226 = v298;
      v227 = dispatch thunk of CustomStringConvertible.description.getter();
      v229 = v228;
      *(v223 + 96) = &type metadata for String;
      *(v223 + 104) = sub_100008C00();
      *(v223 + 72) = v227;
      *(v223 + 80) = v229;
      os_log(_:dso:log:_:_:)(v221, &_mh_execute_header, v222, "Found %i records at %@", 22, 2, v223);

      v344(v226, v220);

      v230 = *(v224 + 16);
      if (v230)
      {
        v347[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v231 = v224 + ((*(v295 + 80) + 32) & ~*(v295 + 80));
        v232 = *(v295 + 72);
        v233 = v296;
        do
        {
          sub_100721C9C(v231, v233, type metadata accessor for ShareRecord);
          sub_100156F5C();
          sub_100721D04(v233, type metadata accessor for ShareRecord);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v231 += v232;
          --v230;
        }

        while (v230);

        v234 = v347[0];
      }

      else
      {

        v234 = _swiftEmptyArrayStorage;
      }

      v254 = sub_10112A654(v234);

      v255 = v312;
      v112 = sub_10003EB74(v312, v343);
      sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
      sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr, &protocol conformance descriptor for NSObject);
      v256 = Set._bridgeToObjectiveC()().super.isa;
      [v112 setShares:v256];

      v257 = v289;
      sub_100721C9C(v255, v289, type metadata accessor for OwnedBeaconRecord);
      if ((v254 & 0xC000000000000001) != 0)
      {
        v258 = __CocoaSet.count.getter();
      }

      else
      {
        v258 = *(v254 + 16);
      }

      v260 = v304;

      v261 = v331;
      sub_1006F2DA0(v257, v258 != 0, v331);
      sub_100721D04(v257, type metadata accessor for OwnedBeaconRecord);
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
      v262 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v112 setTaskInformation:v262];

      if (qword_101694920 != -1)
      {
        swift_once();
      }

      v263 = [v112 identifier];
      v264 = v335;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v265 = sub_1011A30E0(v264);
      v266 = v336;
      v267 = v341;
      v341(v264, v336);
      [v112 setSeparationState:v265];

      v268 = [v112 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v269 = sub_1009C7E64(v264);
      v267(v264, v266);
      [v112 setBeaconSeparationState:v269];
      v270 = [v112 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v334 + 56))(v260, 0, 1, v266);
      v271 = sub_1009C75D0(4, v260);
      sub_10000B3A8(v260, &qword_1016980D0, &unk_10138F3B0);
      sub_10112A684(v271);

      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      sub_100009D18(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr, &protocol conformance descriptor for NSObject);
      v272 = Set._bridgeToObjectiveC()().super.isa;

      [v112 setSafeLocations:v272];

      [v112 setCanBeLeashedByHost:{sub_1006FBA08(v312, v261) & 1}];
      v141 = [v112 identifier];
      v273 = v290;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v274 = v261[5];
      if (!v274)
      {
        goto LABEL_85;
      }

      v275 = *(v274 + 280);

      v276 = static os_log_type_t.info.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v277 = qword_10177C378;
      v278 = swift_allocObject();
      *(v278 + 16) = xmmword_101385D80;
      *(v278 + 56) = &type metadata for Bool;
      *(v278 + 64) = &protocol witness table for Bool;
      *(v278 + 32) = v275;
      os_log(_:dso:log:_:_:)(v276, &_mh_execute_header, v277, "thisDeviceConnectionAllowed: %i", v286);

      v279 = v273;
      v280 = v336;
      v281 = v341;
      v341(v279, v336);
      [v112 setConnectionAllowed:v275];
      v282 = [v112 identifier];
      v283 = v335;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v284 = v331;
      CurrentValueSubject.value.getter();
      v285 = v347[0];
      v141 = v284;
      sub_10069CA80(v283, v347[0]);
      v281(v283, v280);
      if (!__OFADD__(v285, v340))
      {
        [v112 setConnectableDeviceCount:v285 + v340];
        v188 = v312;
LABEL_77:
        sub_100721D04(v188, type metadata accessor for OwnedBeaconRecord);
        v124 = v313;
        goto LABEL_78;
      }

      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    sub_100721D04(v128, type metadata accessor for StableIdentifier);
    v342 = *(v343 + 168);
    v133 = objc_autoreleasePoolPush();
    if (qword_101694468 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v115, qword_10177A518);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:isDirectory:)();

    objc_autoreleasePoolPop(v133);
    v347[0] = _swiftEmptyArrayStorage;
    v349 = _swiftEmptyArrayStorage;
    v134 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v135 = v293;
    DirectorySequence.next()();
    v136 = v332;
    v137 = *(v332 + 48);
    if (v137(v135, 1, v115) == 1)
    {
LABEL_25:
      v342 = p_weak_ivar_lyt;
      (*(v333 + 8))(v315, v346);
      v142 = static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v143 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v144 = v115;
      v145 = swift_allocObject();
      *(v145 + 16) = xmmword_10138BBE0;
      v146 = v347[0];
      v147 = *(v347[0] + 16);
      *(v145 + 56) = &type metadata for Int;
      *(v145 + 64) = &protocol witness table for Int;
      *(v145 + 32) = v147;
      sub_100003E8C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

      v148 = v299;
      v149 = dispatch thunk of CustomStringConvertible.description.getter();
      v151 = v150;
      *(v145 + 96) = &type metadata for String;
      *(v145 + 104) = sub_100008C00();
      *(v145 + 72) = v149;
      *(v145 + 80) = v151;
      os_log(_:dso:log:_:_:)(v142, &_mh_execute_header, v143, "Found %i records at %@", 22, 2, v145);

      v344(v148, v144);

      v152 = *(v146 + 16);
      if (v152)
      {
        v347[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v153 = v146 + ((*(v295 + 80) + 32) & ~*(v295 + 80));
        v154 = *(v295 + 72);
        v155 = v296;
        do
        {
          sub_100721C9C(v153, v155, type metadata accessor for ShareRecord);
          sub_100156F5C();
          sub_100721D04(v155, type metadata accessor for ShareRecord);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v153 += v154;
          --v152;
        }

        while (v152);

        v156 = v347[0];
      }

      else
      {

        v156 = _swiftEmptyArrayStorage;
      }

      *&v346 = sub_10112A654(v156);

      v112 = sub_10003EB74(v312, v343);
      v237 = v304;
      if (qword_101694920 != -1)
      {
        swift_once();
      }

      v238 = [v112 identifier];
      v239 = v335;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v240 = sub_1011A30E0(v239);
      v241 = v336;
      v242 = v341;
      v341(v239, v336);
      [v112 setSeparationState:v240];

      v243 = [v112 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v244 = v331;
      v245 = sub_1009C7E64(v239);
      v242(v239, v241);
      [v112 setBeaconSeparationState:v245];
      v246 = [v112 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v334 + 56))(v237, 0, 1, v241);
      v247 = sub_1009C75D0(4, v237);
      sub_10000B3A8(v237, &qword_1016980D0, &unk_10138F3B0);
      sub_10112A684(v247);

      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      sub_100009D18(qword_1016B1820, &unk_1016B1680, SPSafeLocation_ptr, &protocol conformance descriptor for NSObject);
      v248 = Set._bridgeToObjectiveC()().super.isa;

      [v112 setSafeLocations:v248];

      v249 = v312;
      [v112 setCanBeLeashedByHost:{sub_1006FBA08(v312, v244) & 1}];
      sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
      sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr, &protocol conformance descriptor for NSObject);
      v250 = v346;
      v251 = Set._bridgeToObjectiveC()().super.isa;
      [v112 setShares:v251];

      v252 = v291;
      sub_100721C9C(v249, v291, type metadata accessor for OwnedBeaconRecord);
      if ((v250 & 0xC000000000000001) != 0)
      {
        v253 = __CocoaSet.count.getter();
      }

      else
      {
        v253 = *(v250 + 16);
      }

      sub_1006F2DA0(v252, v253 != 0, v244);
      sub_100721D04(v252, type metadata accessor for OwnedBeaconRecord);
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
      v259 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v112 setTaskInformation:v259];

      v123 = v249;
      v122 = type metadata accessor for OwnedBeaconRecord;
      goto LABEL_9;
    }

    v138 = *(v136 + 32);
    v139 = v293;
    v140 = v287;
    while (1)
    {
      v138(v140, v139, v115);
      v141 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v140, v342, v347, &v349);
      if (p_weak_ivar_lyt)
      {
        break;
      }

      p_weak_ivar_lyt = 0;
      objc_autoreleasePoolPop(v141);
      v344(v140, v115);
      DirectorySequence.next()();
      if (v137(v139, 1, v115) == 1)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v342 = v106;
      sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

      v77 = v303;
LABEL_30:

      v341 = v116;
      v116(v128, v336);
      v112 = sub_10003EB74(v127, v343);
      v157 = v331;
      sub_1006F2DA0(v127, 0, v331);
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_100003E8C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
      v158 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v112 setTaskInformation:v158];

      p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
      v141 = [v112 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v159 = v157[5];
      if (v159)
      {
        v107 = *(v159 + 280);

        v110 = static os_log_type_t.info.getter();
        if (qword_101695030 == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_80;
      }

      goto LABEL_84;
    }

    v77 = v303;
    if (EnumCaseMultiPayload == 3)
    {
      v342 = v106;
      sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      goto LABEL_30;
    }

    sub_100721D04(v128, type metadata accessor for StableIdentifier);
    v342 = *(v343 + 168);
    v189 = objc_autoreleasePoolPush();
    if (qword_101694468 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v115, qword_10177A518);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:isDirectory:)();

    objc_autoreleasePoolPop(v189);
    v347[0] = _swiftEmptyArrayStorage;
    v349 = _swiftEmptyArrayStorage;
    v190 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v191 = v294;
    DirectorySequence.next()();
    v192 = v332;
    v193 = *(v332 + 48);
    if (v193(v191, 1, v115) == 1)
    {
LABEL_43:
      v342 = p_weak_ivar_lyt;
      (*(v333 + 8))(v316, v346);
      v197 = static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v198 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v199 = v115;
      v200 = swift_allocObject();
      *(v200 + 16) = xmmword_10138BBE0;
      v201 = v347[0];
      v202 = *(v347[0] + 16);
      *(v200 + 56) = &type metadata for Int;
      *(v200 + 64) = &protocol witness table for Int;
      *(v200 + 32) = v202;
      sub_100003E8C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

      v203 = v300;
      v204 = dispatch thunk of CustomStringConvertible.description.getter();
      v206 = v205;
      *(v200 + 96) = &type metadata for String;
      *(v200 + 104) = sub_100008C00();
      *(v200 + 72) = v204;
      *(v200 + 80) = v206;
      os_log(_:dso:log:_:_:)(v197, &_mh_execute_header, v198, "Found %i records at %@", 22, 2, v200);

      v344(v203, v199);

      v207 = *(v201 + 16);
      if (v207)
      {
        v347[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v208 = v201 + ((*(v295 + 80) + 32) & ~*(v295 + 80));
        v209 = *(v295 + 72);
        v210 = v296;
        do
        {
          sub_100721C9C(v208, v210, type metadata accessor for ShareRecord);
          sub_100156F5C();
          sub_100721D04(v210, type metadata accessor for ShareRecord);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v208 += v209;
          --v207;
        }

        while (v207);

        v211 = v347[0];
      }

      else
      {

        v211 = _swiftEmptyArrayStorage;
      }

      sub_10112A654(v211);

      v235 = v312;
      v112 = sub_10003EB74(v312, v343);
      sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
      sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr, &protocol conformance descriptor for NSObject);
      v236 = Set._bridgeToObjectiveC()().super.isa;

      [v112 setShares:v236];

      v188 = v235;
      goto LABEL_77;
    }

    v194 = *(v192 + 32);
    v195 = v294;
    v196 = v288;
    while (1)
    {
      v194(v196, v195, v115);
      v141 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v196, v342, v347, &v349);
      if (p_weak_ivar_lyt)
      {
        break;
      }

      p_weak_ivar_lyt = 0;
      objc_autoreleasePoolPop(v141);
      v344(v196, v115);
      DirectorySequence.next()();
      if (v193(v195, 1, v115) == 1)
      {
        goto LABEL_43;
      }
    }
  }

LABEL_86:
  objc_autoreleasePoolPop(v141);
  __break(1u);
}

uint64_t sub_1006ADD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 184) = a5;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 16) = a2;
  v6 = type metadata accessor for UUID();
  *(v5 + 40) = v6;
  v7 = *(v6 - 8);
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 + 64);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  *(v5 + 88) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v5 + 96) = v8;
  *v8 = v5;
  v8[1] = sub_1006ADE84;

  return daemon.getter();
}

uint64_t sub_1006ADE84(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003E8C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1006AE060;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1006AE060(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_1006AE954;
  }

  else
  {

    v4 = sub_1006AE17C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1006AE17C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 16);
  v3 = v2[3];
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);

  return _swift_task_switch(sub_1006AE224, v1, 0);
}

uint64_t sub_1006AE224()
{
  v1 = v0[15];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[9], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[17] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_1006AE384;
  v9 = v0[10];
  v8 = v0[11];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1007207E0, v6, v9);
}

uint64_t sub_1006AE384()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1006AE4F8, 0, 0);
}

uint64_t sub_1006AE4F8()
{
  v1 = v0[5].i64[1];
  v2 = type metadata accessor for BeaconProductInfoRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[1].i64[0];
    sub_10000B3A8(v1, &unk_1016AF8C0, &unk_1013A07A0);
    v4 = v3[3];
    v5 = v3[4];
    sub_1000035D0(v3, v4);
    if ((*(v5 + 144))(v4, v5))
    {
      v6 = v0[1].i64[0];
      v7 = v6[3];
      v8 = v6[4];
      sub_1000035D0(v6, v7);
      v9 = (*(v8 + 48))(v7, v8);
      v10 = v6[3];
      v11 = v6[4];
      sub_1000035D0(v6, v10);
      v12 = (*(v11 + 56))(v10, v11);
      v13 = sub_100314604(v9, v12);
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xF000000000000000;
    }

    v0[9].i64[1] = v13;
    v0[10].i64[0] = v15;
    v18 = v0[11].i8[8];
    v19 = v0[2].i64[0];
    v20 = swift_task_alloc();
    v0[10].i64[1] = v20;
    v20[1] = vextq_s8(v0[1], v0[1], 8uLL);
    v20[2].i64[0] = v13;
    v20[2].i64[1] = v15;
    v20[3].i64[0] = v19;
    v20[3].i8[8] = v18 & 1;
    v21 = swift_task_alloc();
    v0[11].i64[0] = v21;
    *v21 = v0;
    v21[1] = sub_1006AE7AC;

    return withCheckedContinuation<A>(isolation:function:_:)(v21, 0, 0, 0xD000000000000030, 0x800000010135D7A0, sub_100720880, v20, &type metadata for () + 1);
  }

  else
  {

    sub_10000B3A8(v1, &unk_1016AF8C0, &unk_1013A07A0);

    v16 = v0->i64[1];

    return v16();
  }
}

uint64_t sub_1006AE7AC()
{

  return _swift_task_switch(sub_1006AE8C4, 0, 0);
}

uint64_t sub_1006AE8C4()
{
  v1 = v0[19];
  v2 = v0[20];

  sub_100006654(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006AE954()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006AE9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v22 = a7;
  v12 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = a6;

    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    sub_10001F280(a3, v17 + 32);
    (*(v13 + 16))(v15, a1, v12);
    v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v19 = swift_allocObject();
    (*(v13 + 32))(v19 + v18, v15, v12);
    sub_101095D74(v17, 1, a4, a5, v21, v22 & 1, sub_100720894, v19);
  }

  return result;
}

uint64_t sub_1006AEC00(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v45 = type metadata accessor for UUID();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v17 = a1[3];
    v18 = a1[4];
    sub_1000035D0(a1, v17);
    v19 = (*(v18 + 184))(v17, v18);
    v20 = sub_10112C0E4();

    return v20 & 1;
  }

  sub_10001F280(a1, v44);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v22 = swift_dynamicCast();
  v23 = *(v14 + 56);
  if (v22)
  {
    v23(v12, 0, 1, v13);
    sub_10002AB74(v12, v16, type metadata accessor for OwnedBeaconRecord);
    v24 = sub_100D5F668();
    if (v25 >> 60 == 15)
    {
      sub_100721D04(v16, type metadata accessor for OwnedBeaconRecord);
    }

    else
    {
      v37 = v24;
      v38 = v25;
      if (sub_100DE68D0(v24, v25))
      {
        My = type metadata accessor for Feature.FindMy();
        v44[3] = My;
        v44[4] = sub_100003E8C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
        v40 = sub_1000280DC(v44);
        (*(*(My - 8) + 104))(v40, enum case for Feature.FindMy.alphaWasp(_:), My);
        LOBYTE(My) = isFeatureEnabled(_:)();
        sub_100006654(v37, v38);
        sub_100721D04(v16, type metadata accessor for OwnedBeaconRecord);
        sub_100007BAC(v44);
        if ((My & 1) == 0)
        {
LABEL_12:
          v36 = 0;
          return v36 & 1;
        }
      }

      else
      {
        sub_100721D04(v16, type metadata accessor for OwnedBeaconRecord);
        sub_100006654(v37, v38);
      }
    }
  }

  else
  {
    v23(v12, 1, 1, v13);
    sub_10000B3A8(v12, &unk_1016A9A20, &qword_10138B280);
  }

  v26 = a1[3];
  v27 = a1[4];
  sub_1000035D0(a1, v26);
  (*(v27 + 200))(v26, v27);
  v28 = v43;
  v29 = v45;
  LODWORD(v26) = (*(v43 + 48))(v9, 1, v45);
  sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
  if (v26 != 1)
  {
    v30 = a1[3];
    v31 = a1[4];
    sub_1000035D0(a1, v30);
    v32 = v41;
    (*(*(*(v31 + 8) + 8) + 32))(v30);
    LOBYTE(v30) = sub_100037E20(v32, v42);
    (*(v28 + 8))(v32, v29);
    if ((v30 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v33 = a1[3];
  v34 = a1[4];
  sub_1000035D0(a1, v33);
  v35 = (*(v34 + 184))(v33, v34);
  v36 = sub_10112C0E4();

  return v36 & 1;
}

double sub_1006AF168@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v50 - v10;
  v12 = type metadata accessor for BeaconProductInfoRecord(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10088D968(a1))
  {
    v52 = *(v52 + 280);
    v53 = a3;
    v16 = a1[3];
    v15 = a1[4];
    sub_1000035D0(a1, v16);
    (*(*(*(v15 + 8) + 8) + 32))(v16);
    sub_100AC1584(v8, v11);
    v19 = *(v6 + 8);
    v18 = v6 + 8;
    v17 = v19;
    v20 = v8;
    v19(v8, v5);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_10000B3A8(v11, &unk_1016AF8C0, &unk_1013A07A0);
      sub_10001F280(a1, v53);
    }

    else
    {
      v50 = v17;
      v36 = v51;
      sub_10002AB74(v11, v51, type metadata accessor for BeaconProductInfoRecord);
      v37 = v53;
      if (*(v36 + *(v12 + 36)) == 1)
      {
        v52 = v18;
        if (qword_101694B80 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_1000076D4(v38, qword_10177B7F8);
        sub_10001F280(a1, v54);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = v20;
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v57 = v43;
          *v42 = 141558275;
          *(v42 + 4) = 1752392040;
          *(v42 + 12) = 2081;
          v44 = v55;
          v45 = v56;
          sub_1000035D0(v54, v55);
          (*(*(*(v45 + 8) + 8) + 32))(v44);
          sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v48 = v47;
          v50(v41, v5);
          sub_100007BAC(v54);
          v49 = sub_1000136BC(v46, v48, &v57);

          *(v42 + 14) = v49;
          v37 = v53;
          _os_log_impl(&_mh_execute_header, v39, v40, "Hiding beacon %{private,mask.hash}s because productInfo has hidden flag set.", v42, 0x16u);
          sub_100007BAC(v43);

          sub_100721D04(v51, type metadata accessor for BeaconProductInfoRecord);
        }

        else
        {

          sub_100721D04(v51, type metadata accessor for BeaconProductInfoRecord);
          sub_100007BAC(v54);
        }

        *(v37 + 32) = 0;
        result = 0.0;
        *v37 = 0u;
        *(v37 + 16) = 0u;
      }

      else
      {
        sub_100721D04(v36, type metadata accessor for BeaconProductInfoRecord);
        sub_10001F280(a1, v37);
      }
    }
  }

  else
  {
    v22 = v8;
    v51 = v5;
    v52 = v6;
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177B7F8);
    sub_10001F280(a1, v54);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v57 = v27;
      *v26 = 141558275;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      v53 = a3;
      v28 = v55;
      v29 = v56;
      sub_1000035D0(v54, v55);
      v30 = v22;
      (*(*(*(v29 + 8) + 8) + 32))(v28);
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = v51;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v52 + 8))(v30, v31);
      sub_100007BAC(v54);
      v35 = sub_1000136BC(v32, v34, &v57);

      *(v26 + 14) = v35;
      a3 = v53;
      _os_log_impl(&_mh_execute_header, v24, v25, "Filtering %{private,mask.hash}s because it has automatic share type (e.g. it's Family member's item) or Items Sharing feature disabled.", v26, 0x16u);
      sub_100007BAC(v27);
    }

    else
    {

      sub_100007BAC(v54);
    }

    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1006AF870()
{
  v1 = *(v0 + 88);
  sub_1003FD838();
  v2 = swift_allocError();
  *v3 = 11;
  v1(0, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1006AF914()
{
  v1 = *v0;

  sub_1007206EC(v1 + 16);

  return _swift_task_switch(sub_100011170, 0, 0);
}

uint64_t sub_1006AFA18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = &_swiftEmptySetSingleton;
  v16 = *(v3 + 120);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = v12;
  v13[4] = a1;
  v13[5] = a2;
  aBlock[4] = sub_10071F138;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162E838;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1006AFD38(uint64_t a1, uint64_t a2, void (*a3)(__n128), uint64_t a4)
{
  v36 = a2;
  v7 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v7 - 8);
  v9 = v30 - v8;
  v10 = type metadata accessor for SharedBeaconRecord(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 + 280);
  v14 = sub_100007F54();
  v15 = v14[2];
  if (v15)
  {
    v30[1] = a4;
    v31 = a3;
    v32 = v14;
    v33 = v10;
    v16 = (v14 + 4);
    v17 = (v11 + 56);
    v18 = &unk_1016AA470;
    v19 = &qword_10139FD30;
    v34 = v17;
    do
    {
      sub_10001F280(v16, v38);
      sub_1000BC4D4(v18, v19);
      v20 = swift_dynamicCast();
      v21 = *v17;
      if (v20)
      {
        v21(v9, 0, 1, v10);
        sub_10002AB74(v9, v13, type metadata accessor for SharedBeaconRecord);
        if ((v13[*(v10 + 52)] & 1) == 0)
        {
          v22 = sub_1003F6D78(v13, v35);
          v23 = v13;
          v24 = v19;
          v25 = v18;
          v26 = v22;
          swift_beginAccess();
          v27 = v26;
          v18 = v25;
          v19 = v24;
          v13 = v23;
          v17 = v34;
          sub_100DEE584(&v37, v27);
          v10 = v33;
          swift_endAccess();
        }

        sub_100721D04(v13, type metadata accessor for SharedBeaconRecord);
      }

      else
      {
        v21(v9, 1, 1, v10);
        sub_10000B3A8(v9, &unk_101698C30, &unk_101392630);
      }

      v16 += 40;
      --v15;
    }

    while (v15);

    a3 = v31;
  }

  else
  {
  }

  swift_beginAccess();

  (a3)(v28);
}

uint64_t sub_1006B0038(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, char *a4)
{
  v39 = a2;
  v40 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v19 = &v32 - v18;
  if (*(a1 + 32))
  {
    v33 = v7;
    v34 = v6;

    v20 = sub_100F80E6C(a4);
    type metadata accessor for Transaction();
    *(swift_allocObject() + 16) = v20;

    static Transaction.asyncTask(name:block:)();

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    static Date.trustedNow.getter(v19);
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
    sub_1000034A4();
    sub_1000D2A70(v19, v17, &unk_101696900, &unk_10138B1E0);
    sub_100EEBA48(v17);

    sub_10000B3A8(v19, &unk_101696900, &unk_10138B1E0);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
    v22 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v13, v10);
    v23 = swift_allocObject();
    v24 = v40;
    v23[2] = v39;
    v23[3] = v24;
    v23[4] = v20;
    aBlock[4] = sub_10071F108;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10162E7C0;
    v25 = _Block_copy(aBlock);

    v26 = v35;
    static DispatchQoS.unspecified.getter();
    v41 = _swiftEmptyArrayStorage;
    sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v27 = v37;
    v28 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v33 + 8))(v27, v28);
    (*(v36 + 8))(v26, v38);
  }

  else
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v30 = static OS_os_log.default.getter();
    v31 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("No localBeaconingManager", 24, 2, &_mh_execute_header, v30, v31, _swiftEmptyArrayStorage);

    return v39(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1006B066C()
{
  type metadata accessor for AnalyticsEvent(0);
  v1 = swift_allocObject();
  *(v0 + 24) = v1;
  swift_defaultActor_initialize();
  *(v1 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v2 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v3);
  *(v1 + 15) = 0xD000000000000032;
  *(v1 + 16) = 0x800000010135CC90;

  return _swift_task_switch(sub_1006B07CC, v1, 0);
}

uint64_t sub_1006B07CC()
{
  sub_101174534(v0[3], v0[2]);

  type metadata accessor for AnalyticsPublisher();
  v0[4] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1006B08A8;
  v2 = v0[3];

  return sub_101163F78(v2);
}

uint64_t sub_1006B08A8()
{

  return _swift_task_switch(sub_1006B09C0, 0, 0);
}

uint64_t sub_1006B09C0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1006B0A20(unint64_t a1)
{
  v2 = type metadata accessor for HashAlgorithm();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &unk_1016B27A0, NSString_ptr);
  v6 = NSString.init(stringLiteral:)();
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_7:
      sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101385D80;
      *(inited + 32) = 0xD000000000000010;
      v20 = inited + 32;
      *(inited + 40) = 0x800000010135CCD0;
      *(inited + 48) = v6;
      *(inited + 56) = 0;
      v21 = sub_100908768(inited);
      swift_setDeallocating();
      sub_10000B3A8(v20, &qword_101699340, &qword_1013918A0);
      return v21;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(a1 + 32);
LABEL_6:
    v9 = v8;
    v10 = [v8 key];

    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    sub_100017D5C(v11, v13);
    sub_100018000(v11, v13, &v23);
    v14 = v23;
    v22 = v24;
    (*(v3 + 104))(v5, enum case for HashAlgorithm.sha256(_:), v2);
    v15 = Data.hash(algorithm:)();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v23 = v15;
    v24 = v17;
    sub_10025DB08();
    RawRepresentable<>.hexString.getter();
    v18 = String._bridgeToObjectiveC()();

    sub_100016590(v11, v13);

    sub_100016590(v14, v22);
    sub_100016590(v15, v17);
    v6 = v18;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B0D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a3;
  v7[4] = a4;

  sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
  sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.oneshot(_:)();
}

void *sub_1006B0E34(uint64_t a1, uint64_t a2)
{
  v206 = a2;
  v4 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  __chkstk_darwin(v4 - 8);
  v192 = &v191 - v5;
  v236 = type metadata accessor for DateInterval();
  v6 = *(v236 - 8);
  __chkstk_darwin(v236);
  v235 = &v191 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for TimeBasedKey(0);
  v231 = *(v229 - 8);
  __chkstk_darwin(v229);
  v234 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = _s18ConnectionKeyGroupVMa(0);
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v230 = (&v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1000BC4D4(&qword_1016A5B08, &qword_101410E70);
  __chkstk_darwin(v10 - 8);
  v12 = &v191 - v11;
  v13 = type metadata accessor for LostModeInfoRecord(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v191 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v17 - 8);
  v205 = (&v191 - v18);
  v218 = type metadata accessor for WildModeAssociationRecord(0);
  v19 = *(v218 - 8);
  __chkstk_darwin(v218);
  v21 = &v191 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for SystemInfo.DeviceLockState();
  v22 = *(v217 - 8);
  v23 = __chkstk_darwin(v217);
  v216 = &v191 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v215 = &v191 - v25;
  v225 = type metadata accessor for UUID();
  v26 = __chkstk_darwin(v225);
  v195 = &v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v221 = &v191 - v29;
  v214 = *(a1 + 16);
  if (v214)
  {
    v199 = v21;
    v194 = v16;
    v200 = v13;
    v30 = 0;
    v237 = 0;
    v32 = *(v28 + 16);
    v31 = v28 + 16;
    v213 = v32;
    v212 = a1 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v211 = (v22 + 104);
    v220 = *(v2 + 280);
    v210 = (v22 + 8);
    v219 = (v31 - 8);
    v209 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v228 = (v6 + 16);
    v227 = (v6 + 8);
    v204 = (v19 + 48);
    v198 = (v14 + 48);
    v208 = *(v31 + 56);
    v223 = _swiftEmptyDictionarySingleton;
    v201 = v12;
    v222 = xmmword_101385D80;
    v202 = xmmword_10138C320;
    v193 = xmmword_10138BBE0;
    v33 = v221;
    v207 = v31;
    while (1)
    {
      v224 = v30;
      v213(v33, v212 + v208 * v30, v225);
      v34 = static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v35 = qword_10177C380;
      v226 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v36 = swift_allocObject();
      *(v36 + 16) = v222;
      v37 = UUID.uuidString.getter();
      v39 = v38;
      *(v36 + 56) = &type metadata for String;
      v232 = sub_100008C00();
      *(v36 + 64) = v232;
      *(v36 + 32) = v37;
      *(v36 + 40) = v39;
      os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v35, "beaconRecord(for uuid: %@)", 26, 2, v36);

      v40 = v215;
      static SystemInfo.lockState.getter();
      v41 = v216;
      v42 = v217;
      (*v211)(v216, v209, v217);
      sub_100003E8C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
      LOBYTE(v37) = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *v210;
      (*v210)(v41, v42);
      v43(v40, v42);
      if (v37)
      {
        break;
      }

      v45 = v220;
      v46 = sub_100007F54();
      v47 = &v191;
      __chkstk_darwin(v46);
      v48 = v237;
      sub_1000314D0(sub_100030E14, v46, &v241);
      v237 = v48;

      if (!*(&v242 + 1))
      {
        goto LABEL_16;
      }

      sub_10000A748(&v241, &v240);
      sub_10000A748(&v240, &v241);
      v49 = *(&v242 + 1);
      v50 = v243;
      v51 = sub_1000035D0(&v241, *(&v242 + 1));
      v52 = sub_100B03A58(v51, v206, 0, 0, 0, v45, v49, v50);
      v55 = v52;
      if (v54 > 1u)
      {
        if (v54 == 2)
        {
          v66 = v52;
        }

        else
        {
          v115 = static os_log_type_t.default.getter();
          if (qword_101695028 != -1)
          {
            swift_once();
          }

          v47 = qword_10177C370;
          v116 = swift_allocObject();
          *(v116 + 16) = v222;
          v118 = *(&v242 + 1);
          v117 = v243;
          sub_1000035D0(&v241, *(&v242 + 1));
          v119 = v195;
          (*(*(*(v117 + 8) + 8) + 32))(v118);
          v120 = UUID.uuidString.getter();
          v122 = v121;
          (*v219)(v119, v225);
          v123 = v232;
          *(v116 + 56) = &type metadata for String;
          *(v116 + 64) = v123;
          *(v116 + 32) = v120;
          *(v116 + 40) = v122;

          v66 = _swiftEmptyArrayStorage;
        }

        v55 = _swiftEmptyArrayStorage;
      }

      else
      {
        if (!v54)
        {
          v47 = v53;

          v56 = static os_log_type_t.default.getter();
          if (qword_101695028 != -1)
          {
            swift_once();
          }

          v57 = qword_10177C370;
          v33 = swift_allocObject();
          *(v33 + 16) = v222;
          v59 = *(&v242 + 1);
          v58 = v243;
          sub_1000035D0(&v241, *(&v242 + 1));
          v60 = *(*(*(v58 + 8) + 8) + 32);
          v61 = v195;
          v60(v59);
          v62 = UUID.uuidString.getter();
          v64 = v63;
          (*v219)(v61, v225);
          v65 = v232;
          *(v33 + 56) = &type metadata for String;
          *(v33 + 64) = v65;
          *(v33 + 32) = v62;
          *(v33 + 40) = v64;

          sub_100359088(v55, v47, 0);
        }

        v66 = _swiftEmptyArrayStorage;
      }

      v124 = v55[2];
      v203 = v66;
      if (v124)
      {
        v239 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v125 = 0;
        v233 = v55 + ((*(v231 + 80) + 32) & ~*(v231 + 80));
        while (1)
        {
          v126 = v55[2];
          if (v125 >= v126)
          {
            break;
          }

          v127 = v55;
          v128 = v234;
          sub_100721C9C(&v233[*(v231 + 72) * v125], v234, type metadata accessor for TimeBasedKey);
          v129 = v229;
          (*v228)(v235, v128 + *(v229 + 20), v236);
          v130 = v128 + *(v129 + 24);
          v131 = v237;
          sub_100A7A194(*(v130 + 16), *(v130 + 24), 0, 0);
          if (v131)
          {
            v172 = v131;
LABEL_88:
            v181 = static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v182 = qword_10177BA00;
            v47 = swift_allocObject();
            *(v47 + 16) = v222;
            *&v240 = v172;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v183 = String.init<A>(describing:)();
            v184 = v232;
            *(v47 + 56) = &type metadata for String;
            *(v47 + 64) = v184;
            *(v47 + 32) = v183;
            *(v47 + 40) = v185;
            os_log(_:dso:log:_:_:)(v181, &_mh_execute_header, v182, "Error deriving advertisementKey: %@", 35, 2, v47);

            sub_1001BAF88();
            v186 = swift_allocError();
            *v187 = 0;
            swift_willThrow();

            goto LABEL_91;
          }

          v238 = 57;
          v33 = type metadata accessor for __DataStorage();
          swift_allocObject();
          v47 = __DataStorage.init(length:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {

            if (__DataStorage._bytes.getter())
            {
              v132 = __DataStorage._offset.getter();
              v126 = -v132;
              if (__OFSUB__(0, v132))
              {
                goto LABEL_70;
              }
            }

            swift_allocObject();
            v133 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

            v47 = v133;
          }

          v134 = __DataStorage._bytes.getter();
          if (!v134)
          {
            goto LABEL_71;
          }

          v33 = v134;
          if (__OFSUB__(0, __DataStorage._offset.getter()))
          {
            goto LABEL_67;
          }

          __DataStorage._length.getter();
          v135 = CCECCryptorExportKey();

          if (v135)
          {
            v173 = static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v174 = qword_10177BA00;
            v175 = swift_allocObject();
            *(v175 + 16) = v222;
            *(v175 + 56) = &type metadata for Int32;
            *(v175 + 64) = &protocol witness table for Int32;
            *(v175 + 32) = v135;
            os_log(_:dso:log:_:_:)(v173, &_mh_execute_header, v174, "Error running CCECCryptorExportKey. Code: %d.", v191);

            v176 = v192;
            CryptoError.init(rawValue:)();
            v177 = type metadata accessor for CryptoError();
            sub_100003E8C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
            v172 = swift_allocError();
            v179 = v178;
            v180 = *(v177 - 8);
            v33 = *(v180 + 48);
            if ((v33)(v176, 1, v177) == 1)
            {
              (*(v180 + 104))(v179, enum case for CryptoError.unspecifiedError(_:), v177);
              if ((v33)(v192, 1, v177) != 1)
              {
                sub_10000B3A8(v192, &qword_10169C9A0, &unk_1013D5A40);
              }
            }

            else
            {
              (*(v180 + 32))(v179, v192, v177);
            }

            swift_willThrow();

            goto LABEL_88;
          }

          sub_10002EA98(v238, 0x3900000000, v47 | 0x4000000000000000, &v240);
          v47 = *(&v240 + 1);
          v33 = v240;
          CCECCryptorRelease();
          v126 = v47 >> 62;
          if ((v47 >> 62) > 1)
          {
            if (v126 != 2)
            {
              goto LABEL_92;
            }

            v138 = *(v33 + 16);
            v137 = *(v33 + 24);
            v139 = __OFSUB__(v137, v138);
            v136 = v137 - v138;
            if (v139)
            {
              goto LABEL_69;
            }
          }

          else if (v126)
          {
            LODWORD(v136) = HIDWORD(v33) - v33;
            if (__OFSUB__(HIDWORD(v33), v33))
            {
              goto LABEL_68;
            }

            v136 = v136;
          }

          else
          {
            v136 = BYTE6(v47);
          }

          v237 = 0;
          if (v136 != 28)
          {
            goto LABEL_72;
          }

          ++v125;
          v140 = objc_allocWithZone(SPBeaconingKey);
          v141 = v235;
          isa = DateInterval._bridgeToObjectiveC()().super.isa;
          v143 = Data._bridgeToObjectiveC()().super.isa;
          v144 = [v140 initWithDateInterval:isa key:v143];

          sub_100016590(v33, v47);
          (*v227)(v141, v236);
          v145 = objc_allocWithZone(SPCommandKeys);
          v146 = Data._bridgeToObjectiveC()().super.isa;
          v147 = Data._bridgeToObjectiveC()().super.isa;
          v33 = Data._bridgeToObjectiveC()().super.isa;
          v47 = [v145 initWithBeaconingKey:v144 commandKey:v146 connectionToken:v147 nearbyToken:v33];

          sub_100721D04(v234, type metadata accessor for TimeBasedKey);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v55 = v127;
          if (v124 == v125)
          {

            v148 = v239;
            v66 = v203;
            goto LABEL_54;
          }
        }

        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        if (v126 == 1)
        {
          LODWORD(v126) = HIDWORD(v33) - v33;
          if (!__OFSUB__(HIDWORD(v33), v33))
          {
            v190 = v126;
            goto LABEL_93;
          }

          __break(1u);
        }

        if (v126 == 2)
        {
          v171 = *(v33 + 16);
          v170 = *(v33 + 24);
          v190 = v170 - v171;
          if (__OFSUB__(v170, v171))
          {
            __break(1u);
          }
        }

        else
        {
          v190 = BYTE6(v47);
        }

        while (1)
        {
LABEL_93:
          sub_100018350();
          v186 = swift_allocError();
          *v189 = 28;
          *(v189 + 8) = v190;
          *(v189 + 16) = 0;
          swift_willThrow();
          sub_100016590(v33, v47);
LABEL_91:
          *&v240 = 0;
          *(&v240 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v188._object = 0x800000010134CB30;
          v188._countAndFlagsBits = 0xD000000000000021;
          String.append(_:)(v188);
          v238 = v186;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_92:
          v190 = 0;
        }
      }

      v148 = _swiftEmptyArrayStorage;
LABEL_54:
      *&v240 = v148;
      v239 = _swiftEmptyArrayStorage;
      v149 = v66[2];
      if (v149)
      {
        v233 = *(v197 + 28);
        v150 = v66 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
        v232 = *(v196 + 72);
        v226 = _swiftEmptyArrayStorage;
        do
        {
          v151 = v230;
          sub_100721C9C(v150, v230, _s18ConnectionKeyGroupVMa);
          v152 = *v151;
          v153 = v151[1];
          v154 = objc_allocWithZone(SPBeaconingKey);
          sub_100017D5C(v152, v153);
          v155 = DateInterval._bridgeToObjectiveC()().super.isa;
          v156 = Data._bridgeToObjectiveC()().super.isa;
          v157 = [v154 initWithDateInterval:v155 key:v156];

          sub_100016590(v152, v153);
          v158 = v151[2];
          v159 = v151[3];
          v160 = objc_allocWithZone(SPCommandKeys);
          sub_100017D5C(v158, v159);
          v161 = Data._bridgeToObjectiveC()().super.isa;
          v162 = Data._bridgeToObjectiveC()().super.isa;
          v163 = Data._bridgeToObjectiveC()().super.isa;
          v164 = [v160 initWithBeaconingKey:v157 commandKey:v161 connectionToken:v162 nearbyToken:v163];

          sub_100016590(v158, v159);
          sub_100721D04(v151, _s18ConnectionKeyGroupVMa);
          if (v164)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v226 = v239;
          }

          v150 += v232;
          --v149;
        }

        while (v149);

        v165 = v226;
      }

      else
      {

        v165 = _swiftEmptyArrayStorage;
      }

      sub_10039A0FC(v165);
      v166 = v240;
      v167 = v223;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v239 = v167;
      v33 = v221;
      sub_100FFFDBC(v166, v221, isUniquelyReferenced_nonNull_native);
      v223 = v239;
      (*v219)(v33, v225);
      sub_100007BAC(&v241);
LABEL_4:
      v30 = v224 + 1;
      if (v224 + 1 == v214)
      {
        return v223;
      }
    }

    v44 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v35, "beaconRecord call failed because in device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
    v243 = 0;
    v241 = 0u;
    v242 = 0u;
LABEL_16:
    sub_10000B3A8(&v241, &qword_101696920, &unk_10138B200);
    v67 = v205;
    v68 = v221;
    sub_100023184(v221, v205);
    if ((*v204)(v67, 1, v218) == 1)
    {
      sub_10000B3A8(v67, &unk_1016C7C90, &qword_1013BB4B0);
      v69 = v201;
      sub_100ABDE10(v201);
      if ((*v198)(v69, 1, v200) == 1)
      {
        (*v219)(v68, v225);
        sub_10000B3A8(v69, &qword_1016A5B08, &qword_101410E70);
        v33 = v68;
      }

      else
      {
        v70 = v69;
        v71 = v194;
        sub_10002AB74(v70, v194, type metadata accessor for LostModeInfoRecord);
        v72 = objc_allocWithZone(SPBeaconingKey);
        v73 = DateInterval._bridgeToObjectiveC()().super.isa;
        v74 = Data._bridgeToObjectiveC()().super.isa;
        v75 = [v72 initWithDateInterval:v73 key:v74];

        v76 = objc_allocWithZone(SPCommandKeys);
        v77 = v75;
        v78 = Data._bridgeToObjectiveC()().super.isa;
        v79 = Data._bridgeToObjectiveC()().super.isa;
        v80 = Data._bridgeToObjectiveC()().super.isa;
        v81 = [v76 initWithBeaconingKey:v77 commandKey:v78 connectionToken:v79 nearbyToken:v80];

        sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
        v82 = swift_allocObject();
        *(v82 + 16) = v202;
        *(v82 + 32) = v81;
        v83 = v81;
        v84 = v223;
        v85 = swift_isUniquelyReferenced_nonNull_native();
        *&v241 = v84;
        sub_100FFFDBC(v82, v68, v85);
        v223 = v241;
        v86 = static os_log_type_t.default.getter();
        if (qword_1016950A0 != -1)
        {
          swift_once();
        }

        v87 = qword_10177C3E8;
        v88 = swift_allocObject();
        *(v88 + 16) = v193;
        v89 = UUID.uuidString.getter();
        v90 = v232;
        *(v88 + 56) = &type metadata for String;
        *(v88 + 64) = v90;
        *(v88 + 32) = v89;
        *(v88 + 40) = v91;
        *(v88 + 96) = &type metadata for Int;
        *(v88 + 104) = &protocol witness table for Int;
        *(v88 + 72) = 1;
        os_log(_:dso:log:_:_:)(v86, &_mh_execute_header, v87, "UUID %@ is a lostMode record with %d records", 44, 2, v88);

        (*v219)(v68, v225);
        sub_100721D04(v71, type metadata accessor for LostModeInfoRecord);
        v33 = v68;
      }
    }

    else
    {
      v92 = v199;
      sub_10002AB74(v67, v199, type metadata accessor for WildModeAssociationRecord);
      v93 = static os_log_type_t.default.getter();
      if (qword_1016950B0 != -1)
      {
        swift_once();
      }

      v94 = qword_10177C3F8;
      v95 = swift_allocObject();
      *(v95 + 16) = v222;
      v33 = v221;
      v96 = UUID.uuidString.getter();
      v97 = v232;
      *(v95 + 56) = &type metadata for String;
      *(v95 + 64) = v97;
      *(v95 + 32) = v96;
      *(v95 + 40) = v98;
      os_log(_:dso:log:_:_:)(v93, &_mh_execute_header, v94, "#Durian: UUID %@ is a UT record", 31, 2, v95);

      v99 = MACAddress.data.getter();
      v101 = v100;
      v102 = objc_allocWithZone(SPBeaconingKey);
      v103 = DateInterval._bridgeToObjectiveC()().super.isa;
      v104 = Data._bridgeToObjectiveC()().super.isa;
      v105 = [v102 initWithDateInterval:v103 key:v104];

      sub_100016590(v99, v101);
      v106 = objc_allocWithZone(SPCommandKeys);
      v107 = v105;
      v108 = Data._bridgeToObjectiveC()().super.isa;
      v109 = Data._bridgeToObjectiveC()().super.isa;
      v110 = Data._bridgeToObjectiveC()().super.isa;
      v111 = [v106 initWithBeaconingKey:v107 commandKey:v108 connectionToken:v109 nearbyToken:v110];

      sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
      v112 = swift_allocObject();
      *(v112 + 16) = v202;
      *(v112 + 32) = v111;
      v113 = v223;
      v114 = swift_isUniquelyReferenced_nonNull_native();
      *&v241 = v113;
      sub_100FFFDBC(v112, v33, v114);

      v223 = v241;
      sub_100721D04(v92, type metadata accessor for WildModeAssociationRecord);
      (*v219)(v33, v225);
    }

    goto LABEL_4;
  }

  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_1006B2B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a1;
  v35 = a4;
  v32 = a2;
  v33 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v39 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DateInterval();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v31 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10138BBE0;
  aBlock[0] = *v5;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v15 = String.init<A>(describing:)();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  v18 = sub_100008C00();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v18;
  *(v14 + 64) = v18;
  *(v14 + 72) = 0xD000000000000029;
  *(v14 + 80) = 0x800000010135CAD0;
  os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v13, "%@: %@", 6, 2, v14);

  v19 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(&v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v32, v10);
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v22 = v34;
  *(v21 + 16) = v19;
  *(v21 + 24) = v22;
  (*(v11 + 32))(v21 + v20, &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v10);
  v23 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v35;
  *v23 = v33;
  v23[1] = v24;
  aBlock[4] = sub_10071EFC8;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162E6A8;
  v25 = _Block_copy(aBlock);

  v26 = v36;
  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v27 = v39;
  v28 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v40 + 8))(v27, v28);
  (*(v37 + 8))(v26, v38);
}

uint64_t sub_1006B3094(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t), uint64_t a5)
{
  v58 = a5;
  v59 = a4;
  v7 = type metadata accessor for UUID();
  v71 = *(v7 - 8);
  __chkstk_darwin(v7);
  v74 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000BC4D4(&qword_1016A7868, &qword_1013B67B8);
  v9 = __chkstk_darwin(v70);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v58 - v11;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v72 = sub_1006B0E34(a2, a3);
  }

  else
  {
    v72 = sub_100909FEC(_swiftEmptyArrayStorage);
  }

  v13 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
LABEL_30:
    v57 = v13;
    swift_once();
    v13 = v57;
  }

  v64 = qword_10177C398;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10177C398, "#Durian: Returning keys for command", 35, 2, _swiftEmptyArrayStorage, v58);
  v14 = v72 + 64;
  v15 = 1 << *(v72 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v72 + 64);
  v18 = (v15 + 63) >> 6;
  v67 = v71 + 32;
  v68 = v71 + 16;
  v61 = (v71 + 8);

  v19 = 0;
  v60 = xmmword_10138BBE0;
  v65 = v12;
  v66 = v7;
  v62 = v18;
  v63 = v14;
  while (v17)
  {
LABEL_14:
    v30 = __clz(__rbit64(v17)) | (v19 << 6);
    v32 = v71;
    v31 = v72;
    (*(v71 + 16))(v12, *(v72 + 48) + *(v71 + 72) * v30, v7);
    v33 = *(*(v31 + 56) + 8 * v30);
    v34 = v70;
    *&v12[*(v70 + 48)] = v33;
    v35 = v12;
    v12 = v69;
    sub_1000D2A70(v35, v69, &qword_1016A7868, &qword_1013B67B8);
    v36 = *&v12[*(v34 + 48)];
    (*(v32 + 32))(v74, v12, v7);
    if (v36 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (!v7)
      {
LABEL_26:

        v38 = _swiftEmptyArrayStorage;
        goto LABEL_8;
      }
    }

    else
    {
      v7 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    v76 = _swiftEmptyArrayStorage;

    v13 = sub_101123BB8(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v73 = v19;
    v75 = v17;
    v37 = 0;
    v38 = v76;
    v39 = v36;
    v40 = v36 & 0xC000000000000001;
    v41 = v39;
    do
    {
      if (v40)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v42 = *(v39 + 8 * v37 + 32);
      }

      v43 = v42;
      v44 = [v42 beaconingKey];
      v45 = [v44 key];

      v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v49 = Data.hexString.getter();
      v51 = v50;
      sub_100016590(v46, v48);

      v76 = v38;
      v53 = v38[2];
      v52 = v38[3];
      if (v53 >= v52 >> 1)
      {
        sub_101123BB8((v52 > 1), v53 + 1, 1);
        v38 = v76;
      }

      ++v37;
      v38[2] = v53 + 1;
      v54 = &v38[2 * v53];
      v54[4] = v49;
      v54[5] = v51;
      v39 = v41;
    }

    while (v7 != v37);

    v17 = v75;
    v19 = v73;
LABEL_8:
    v75 = (v17 - 1) & v17;
    LODWORD(v73) = static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = v60;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = v74;
    v7 = v66;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    *(v20 + 56) = &type metadata for String;
    v25 = sub_100008C00();
    *(v20 + 64) = v25;
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    v76 = v38;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1000041A4(&qword_1016B7CB0, &qword_1016B0470, &qword_10138EB80, &protocol conformance descriptor for [A]);
    v26 = BidirectionalCollection<>.joined(separator:)();
    v28 = v27;

    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v25;
    *(v20 + 72) = v26;
    *(v20 + 80) = v28;
    os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v64, "%@: %@", 6, 2, v20);
    v17 = v75;

    (*v61)(v21, v7);
    v12 = v65;
    v13 = sub_10000B3A8(v65, &qword_1016A7868, &qword_1013B67B8);
    v18 = v62;
    v14 = v63;
  }

  while (1)
  {
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v29 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v29);
    ++v19;
    if (v17)
    {
      v19 = v29;
      goto LABEL_14;
    }
  }

  v55 = v72;

  v59(v55);
}

uint64_t sub_1006B3738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a3;
  v25 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  aBlock[0] = *v3;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 64) = v16;
  *(v12 + 72) = 0xD00000000000001CLL;
  *(v12 + 80) = 0x800000010135CBE0;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "%@: %@", 6, 2, v12);

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v25;
  v20 = v26;
  v18[2] = v17;
  v18[3] = v20;
  v21 = v27;
  v18[4] = v19;
  v18[5] = v21;
  aBlock[4] = sub_10071F05C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162E6F8;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v30 + 8))(v6, v4);
  (*(v28 + 8))(v9, v29);
}

uint64_t sub_1006B3B80(uint64_t a1, uint64_t a2, void (*a3)(unint64_t), uint64_t a4)
{
  v65 = a4;
  v66 = a3;
  v81 = type metadata accessor for UUID();
  v77 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1000BC4D4(&qword_1016A7868, &qword_1013B67B8);
  v6 = __chkstk_darwin(v76);
  v75 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v65 - v8;
  v10 = type metadata accessor for Date();
  __chkstk_darwin(v10 - 8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DateInterval();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    static Date.trustedNow.getter(v12);
    DateInterval.init(start:duration:)();
    v78 = sub_1006B0E34(a2, v16);

    (*(v14 + 8))(v16, v13);
  }

  else
  {
    v78 = sub_100909FEC(_swiftEmptyArrayStorage);
  }

  v17 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
LABEL_30:
    v64 = v17;
    swift_once();
    v17 = v64;
  }

  v71 = qword_10177C398;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10177C398, "Returning keys for command", 26, 2, _swiftEmptyArrayStorage, v65);
  v18 = v78 + 64;
  v19 = 1 << *(v78 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v78 + 64);
  v22 = (v19 + 63) >> 6;
  v73 = v77 + 32;
  v74 = v77 + 16;
  v68 = (v77 + 8);

  v23 = 0;
  v67 = xmmword_10138BBE0;
  v69 = v22;
  v70 = v18;
  v72 = v9;
  while (v21)
  {
LABEL_14:
    v35 = __clz(__rbit64(v21)) | (v23 << 6);
    v37 = v77;
    v36 = v78;
    v38 = v81;
    (*(v77 + 16))(v9, *(v78 + 48) + *(v77 + 72) * v35, v81);
    v39 = *(*(v36 + 56) + 8 * v35);
    v40 = v76;
    *&v9[*(v76 + 48)] = v39;
    v41 = v9;
    v9 = v75;
    sub_1000D2A70(v41, v75, &qword_1016A7868, &qword_1013B67B8);
    v42 = *&v9[*(v40 + 48)];
    (*(v37 + 32))(v80, v9, v38);
    if (v42 >> 62)
    {
      v43 = _CocoaArrayWrapper.endIndex.getter();
      if (!v43)
      {
LABEL_26:

        v45 = _swiftEmptyArrayStorage;
        goto LABEL_8;
      }
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v43)
      {
        goto LABEL_26;
      }
    }

    v83 = _swiftEmptyArrayStorage;

    v17 = sub_101123BB8(0, v43 & ~(v43 >> 63), 0);
    if (v43 < 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v79 = v23;
    v82 = v21;
    v44 = 0;
    v45 = v83;
    v46 = v42;
    v47 = v42 & 0xC000000000000001;
    v48 = v46;
    do
    {
      if (v47)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v49 = *(v46 + 8 * v44 + 32);
      }

      v50 = v49;
      v51 = [v49 beaconingKey];
      v52 = [v51 key];

      v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = Data.hexString.getter();
      v58 = v57;
      sub_100016590(v53, v55);

      v83 = v45;
      v60 = v45[2];
      v59 = v45[3];
      if (v60 >= v59 >> 1)
      {
        sub_101123BB8((v59 > 1), v60 + 1, 1);
        v45 = v83;
      }

      ++v44;
      v45[2] = v60 + 1;
      v61 = &v45[2 * v60];
      v61[4] = v56;
      v61[5] = v58;
      v46 = v48;
    }

    while (v43 != v44);

    v21 = v82;
    v23 = v79;
LABEL_8:
    v82 = (v21 - 1) & v21;
    LODWORD(v79) = static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = v67;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = v80;
    v25 = v81;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    *(v24 + 56) = &type metadata for String;
    v30 = sub_100008C00();
    *(v24 + 64) = v30;
    *(v24 + 32) = v27;
    *(v24 + 40) = v29;
    v83 = v45;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1000041A4(&qword_1016B7CB0, &qword_1016B0470, &qword_10138EB80, &protocol conformance descriptor for [A]);
    v31 = BidirectionalCollection<>.joined(separator:)();
    v33 = v32;

    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v30;
    *(v24 + 72) = v31;
    *(v24 + 80) = v33;
    os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v71, "%@: %@", 6, 2, v24);
    v21 = v82;

    (*v68)(v26, v25);
    v9 = v72;
    v17 = sub_10000B3A8(v72, &qword_1016A7868, &qword_1013B67B8);
    v22 = v69;
    v18 = v70;
  }

  while (1)
  {
    v34 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v34 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v34);
    ++v23;
    if (v21)
    {
      v23 = v34;
      goto LABEL_14;
    }
  }

  v62 = v78;

  v66(v62);
}

uint64_t sub_1006B4308@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v41 = a3;
  v5 = type metadata accessor for TimeBasedKey(0);
  v6 = __chkstk_darwin(v5);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v6);
  v11 = &v38 - v10;
  __chkstk_darwin(v9);
  v40 = &v38 - v13;
  v14 = *a1;
  if (*a1)
  {
    v15 = *a1 / 0x60uLL + 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v18 = *(v12 + 72);
    while (1)
    {
      sub_100721C9C(v17, v8, type metadata accessor for TimeBasedKey);
      if (*v8 == v15)
      {
        break;
      }

      sub_100721D04(v8, type metadata accessor for TimeBasedKey);
      v17 += v18;
      if (!--v16)
      {
        goto LABEL_8;
      }
    }

    sub_10002AB74(v8, v11, type metadata accessor for TimeBasedKey);
    v27 = v40;
    sub_10002AB74(v11, v40, type metadata accessor for TimeBasedKey);
    v28 = PublicKey.advertisement.getter(*(a1 + *(v5 + 24) + 16), *(a1 + *(v5 + 24) + 24));
    v39 = v29;
    v30 = PublicKey.advertisement.getter(*(v27 + *(v5 + 24) + 16), *(v27 + *(v5 + 24) + 24));
    v32 = v31;
    v33 = objc_allocWithZone(SPBeaconingKey);
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v35 = v28;
    v36 = Data._bridgeToObjectiveC()().super.isa;
    v37 = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v30, v32);
    v25 = [v33 initWithDateInterval:isa key:v36 secondaryKey:v37 primaryIndex:v14 secondaryIndex:v15];

    sub_100016590(v35, v39);
    result = sub_100721D04(v40, type metadata accessor for TimeBasedKey);
  }

  else
  {
LABEL_8:
    v19 = PublicKey.advertisement.getter(*(a1 + *(v5 + 24) + 16), *(a1 + *(v5 + 24) + 24));
    v21 = v20;
    v22 = objc_allocWithZone(SPBeaconingKey);
    v23 = DateInterval._bridgeToObjectiveC()().super.isa;
    v24 = Data._bridgeToObjectiveC()().super.isa;
    v25 = [v22 initWithDateInterval:v23 key:v24 secondaryKey:0 primaryIndex:v14 secondaryIndex:0];

    result = sub_100016590(v19, v21);
  }

  *v41 = v25;
  return result;
}

void *sub_1006B4648(uint64_t a1, void *a2)
{
  v163 = a2;
  v4 = sub_1000BC4D4(&qword_1016A5B08, &qword_101410E70);
  __chkstk_darwin(v4 - 8);
  v159 = &v147 - v5;
  v154 = type metadata accessor for LostModeInfoRecord(0);
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v151 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v7 - 8);
  v155 = (&v147 - v8);
  v152 = type metadata accessor for WildModeAssociationRecord(0);
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v10 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = _s18ConnectionKeyGroupVMa(0);
  v157 = *(v149 - 8);
  v11 = __chkstk_darwin(v149);
  v158 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v162 = (&v147 - v13);
  v161 = type metadata accessor for DateInterval();
  v14 = *(v161 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v161);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v160 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v147 - v20;
  v171 = _swiftEmptyArrayStorage;
  v156 = v2;
  v22 = v2[35];
  sub_100025020(a1, &v166);
  if (!v167)
  {
    v30 = v153;
    v31 = v154;
    v32 = v159;
    v33 = v151;
    sub_10000B3A8(&v166, &qword_101696920, &unk_10138B200);
    v34 = v155;
    sub_100023184(a1, v155);
    if ((*(v150 + 48))(v34, 1, v152) == 1)
    {
      sub_10000B3A8(v34, &unk_1016C7C90, &qword_1013BB4B0);
      sub_100ABDE10(v32);
      if ((*(v30 + 48))(v32, 1, v31) == 1)
      {
        sub_10000B3A8(v32, &qword_1016A5B08, &qword_101410E70);
        return _swiftEmptyArrayStorage;
      }

      v10 = v33;
      sub_10002AB74(v32, v33, type metadata accessor for LostModeInfoRecord);
      v126 = objc_allocWithZone(SPBeaconingKey);
      isa = DateInterval._bridgeToObjectiveC()().super.isa;
      v128 = Data._bridgeToObjectiveC()().super.isa;
      v129 = [v126 initWithDateInterval:isa key:v128];

      v130 = objc_allocWithZone(SPCommandKey);
      v131 = v129;
      v132 = Data._bridgeToObjectiveC()().super.isa;
      v133 = Data._bridgeToObjectiveC()().super.isa;
      v134 = Data._bridgeToObjectiveC()().super.isa;
      v135 = [v130 initWithBeaconingKey:v131 commandKey:v132 connectionToken:v133 nearbyToken:v134 primaryIndex:0 secondaryIndex:0 type:2];

      v136 = static os_log_type_t.default.getter();
      if (qword_1016950A0 != -1)
      {
        swift_once();
      }

      v137 = qword_10177C3E8;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v138 = swift_allocObject();
      *(v138 + 16) = xmmword_10138BBE0;
      v139 = UUID.uuidString.getter();
      v141 = v140;
      *(v138 + 56) = &type metadata for String;
      v142 = sub_100008C00();
      *(v138 + 32) = v139;
      *(v138 + 40) = v141;
      *(v138 + 96) = &type metadata for Int;
      *(v138 + 104) = &protocol witness table for Int;
      *(v138 + 64) = v142;
      *(v138 + 72) = 1;
      os_log(_:dso:log:_:_:)(v136, &_mh_execute_header, v137, "UUID %@ is a lostMode record with %d records", 44, 2, v138);

      v143 = v135;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v77 = type metadata accessor for LostModeInfoRecord;
LABEL_50:
      sub_100721D04(v10, v77);
      return v171;
    }

    sub_10002AB74(v34, v10, type metadata accessor for WildModeAssociationRecord);
    v57 = static os_log_type_t.default.getter();
    if (qword_1016950B0 == -1)
    {
LABEL_18:
      v58 = qword_10177C3F8;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_101385D80;
      v60 = UUID.uuidString.getter();
      v62 = v61;
      *(v59 + 56) = &type metadata for String;
      *(v59 + 64) = sub_100008C00();
      *(v59 + 32) = v60;
      *(v59 + 40) = v62;
      os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "#Durian: UUID %@ is a UT record", 31, 2, v59);

      v63 = MACAddress.data.getter();
      v65 = v64;
      v66 = objc_allocWithZone(SPBeaconingKey);
      v67 = DateInterval._bridgeToObjectiveC()().super.isa;
      v68 = Data._bridgeToObjectiveC()().super.isa;
      v69 = [v66 initWithDateInterval:v67 key:v68];

      sub_100016590(v63, v65);
      v70 = objc_allocWithZone(SPCommandKey);
      v71 = v69;
      v72 = Data._bridgeToObjectiveC()().super.isa;
      v73 = Data._bridgeToObjectiveC()().super.isa;
      v74 = Data._bridgeToObjectiveC()().super.isa;
      v75 = [v70 initWithBeaconingKey:v71 commandKey:v72 connectionToken:v73 nearbyToken:v74 primaryIndex:0 secondaryIndex:0 type:2];

      v76 = v75;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v77 = type metadata accessor for WildModeAssociationRecord;
      goto LABEL_50;
    }

LABEL_53:
    swift_once();
    goto LABEL_18;
  }

  v155 = v22;
  sub_10000A748(&v166, v168);
  v23 = *(v17 + 16);
  v154 = a1;
  v153 = v17 + 16;
  v152 = v23;
  v23(v21, a1, v16);
  v24 = v161;
  (*(v14 + 16))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v163, v161);
  v25 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v26 = (v18 + *(v14 + 80) + v25) & ~*(v14 + 80);
  v27 = swift_allocObject();
  v28 = *(v17 + 32);
  v159 = v21;
  v28(v27 + v25, v21, v16);
  (*(v14 + 32))(v27 + v26, &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  sub_1000BC4D4(&qword_1016A7890, &qword_1013B6830);
  unsafeFromAsyncTask<A>(_:)();
  v29 = v16;
  v148 = v17;

  v37 = v158;
  v36 = v159;
  if (v166)
  {
    v38 = v166;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v35 = v171;
    sub_100007BAC(v168);
    return v35;
  }

  v39 = v169;
  v40 = v170;
  v41 = sub_1000035D0(v168, v169);
  v42 = sub_100B03A58(v41, v163, 0, 1, 0, v155, v39, v40);
  v45 = v42;
  if (v44 > 1u)
  {
    if (v44 == 2)
    {
      v56 = v42;
      v45 = _swiftEmptyArrayStorage;
    }

    else
    {
      v78 = v29;
      v79 = static os_log_type_t.default.getter();
      if (qword_101695028 != -1)
      {
        swift_once();
      }

      v80 = qword_10177C370;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_101385D80;
      v83 = v169;
      v82 = v170;
      sub_1000035D0(v168, v169);
      (*(*(*(v82 + 8) + 8) + 32))(v83);
      v84 = UUID.uuidString.getter();
      v86 = v85;
      (*(v148 + 8))(v36, v78);
      *(v81 + 56) = &type metadata for String;
      *(v81 + 64) = sub_100008C00();
      *(v81 + 32) = v84;
      *(v81 + 40) = v86;

      v56 = _swiftEmptyArrayStorage;
      v45 = _swiftEmptyArrayStorage;
    }
  }

  else if (v44)
  {
    v56 = _swiftEmptyArrayStorage;
  }

  else
  {
    v46 = v29;
    v47 = v43;

    v48 = static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    v49 = qword_10177C370;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_101385D80;
    v52 = v169;
    v51 = v170;
    sub_1000035D0(v168, v169);
    (*(*(*(v51 + 8) + 8) + 32))(v52);
    v53 = UUID.uuidString.getter();
    v55 = v54;
    (*(v148 + 8))(v36, v46);
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_100008C00();
    *(v50 + 32) = v53;
    *(v50 + 40) = v55;

    v42 = sub_100359088(v45, v47, 0);
    v56 = _swiftEmptyArrayStorage;
    v37 = v158;
  }

  v165 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v42);
  v145 = v168;
  v146 = &v165;
  v87 = sub_10062CF40(sub_1007202C4, (&v147 - 4), v45);
  v155 = 0;

  sub_10039A114(v87);
  *&v166 = _swiftEmptyArrayStorage;
  v88 = v56[2];
  if (v88)
  {
    v161 = *(v149 + 28);
    v89 = (*(v157 + 80) + 32) & ~*(v157 + 80);
    v154 = v56;
    v90 = v56 + v89;
    v91 = *(v157 + 72);
    v159 = _swiftEmptyArrayStorage;
    v160 = v91;
    do
    {
      v163 = v88;
      v92 = v162;
      sub_100721C9C(v90, v162, _s18ConnectionKeyGroupVMa);
      v93 = *v92;
      v94 = v92[1];
      v95 = objc_allocWithZone(SPBeaconingKey);
      sub_100017D5C(v93, v94);
      v96 = DateInterval._bridgeToObjectiveC()().super.isa;
      v97 = Data._bridgeToObjectiveC()().super.isa;
      v98 = [v95 initWithDateInterval:v96 key:v97];

      sub_100016590(v93, v94);
      v99 = v92[2];
      v100 = v92[3];
      sub_1000035D0(v92 + 4, v92[7]);
      sub_100017D5C(v99, v100);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v101 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v164];
      v102 = objc_allocWithZone(SPCommandKey);
      v103 = Data._bridgeToObjectiveC()().super.isa;
      v104 = Data._bridgeToObjectiveC()().super.isa;
      v105 = Data._bridgeToObjectiveC()().super.isa;
      v106 = [v102 initWithBeaconingKey:v98 commandKey:v103 connectionToken:v104 nearbyToken:v105 primaryIndex:v101 secondaryIndex:0 type:0];

      sub_100016590(v99, v100);
      sub_100721D04(v92, _s18ConnectionKeyGroupVMa);
      if (v106)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v159 = v166;
      }

      v90 += v160;
      v88 = (v163 - 1);
    }

    while (v163 != 1);

    v37 = v158;
    v107 = v159;
  }

  else
  {

    v107 = _swiftEmptyArrayStorage;
  }

  sub_10039A114(v107);
  v108 = v165;

  v110 = sub_10112B05C(v109);
  v163 = v108;

  v111 = *(v110 + 16);
  if (v111)
  {
    v112 = sub_1003A8844(*(v110 + 16), 0);
    v113 = sub_1003AA29C(&v166, v112 + 4, v111, v110);
    v10 = *(&v166 + 1);
    v114 = v166;
    v57 = v167;

    sub_1000128F8(v114);
    if (v113 == v111)
    {
      v37 = v158;
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_53;
  }

  v112 = _swiftEmptyArrayStorage;
LABEL_38:
  *&v166 = v112;
  v115 = v155;
  sub_1006DCE24(&v166);
  if (!v115)
  {

    v117 = v166;
    __chkstk_darwin(v116);
    v145 = v156;
    v146 = v168;
    v118 = sub_1005C7B10(sub_1007202E0, (&v147 - 4), v117);

    *&v166 = _swiftEmptyArrayStorage;
    v119 = v118[2];
    if (v119)
    {
      v120 = v171;
      v121 = v118 + ((*(v157 + 80) + 32) & ~*(v157 + 80));
      v122 = *(v157 + 72);
      do
      {
        v123 = sub_100721C9C(v121, v37, _s18ConnectionKeyGroupVMa);
        __chkstk_darwin(v123);
        v145 = v37;
        v124 = sub_1005C7DD8(sub_1007202FC, (&v147 - 4), v120);
        sub_10039A114(v124);
        sub_100721D04(v37, _s18ConnectionKeyGroupVMa);
        v121 += v122;
        --v119;
      }

      while (v119);

      v125 = v166;
    }

    else
    {

      v125 = _swiftEmptyArrayStorage;
    }

    sub_10039A114(v125);
    v35 = v171;

    sub_100007BAC(v168);

    return v35;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B5C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for DateInterval();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for MACAddress();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[26] = v8;
  *v8 = v3;
  v8[1] = sub_1006B5F04;

  return daemon.getter();
}

uint64_t sub_1006B5F04(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[27] = a1;

  v3 = swift_task_alloc();
  v2[28] = v3;
  v4 = type metadata accessor for Daemon();
  v2[29] = v4;
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[30] = v6;
  v7 = sub_100003E8C(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_1006B60E4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1006B60E4(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 248) = a1;
  *(v4 + 256) = v1;

  if (v1)
  {
    v5 = sub_1006B7330;
    v6 = 0;
  }

  else
  {

    v5 = sub_1006B621C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1006B621C()
{
  v1 = v0[32];
  v0[33] = sub_10002BE00(v0[3]);
  v0[34] = v1;
  if (v1)
  {
    v2 = sub_1006B7444;
  }

  else
  {
    v2 = sub_1006B62A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006B62A8()
{
  v1 = *(v0 + 264);
  if (*(v1 + 16))
  {
    v2 = *(*(v0 + 176) + 80);
    sub_100721C9C(v1 + ((v2 + 32) & ~v2), *(v0 + 200), type metadata accessor for KeyGenerationBeaconInfo);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);

  (*(v7 + 56))(v4, v3, 1, v6);
  sub_1000D2A70(v4, v5, &qword_10169E368, &qword_1013D6690);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = *(v0 + 192);
    sub_10000B3A8(*(v0 + 200), &qword_10169E368, &qword_1013D6690);

LABEL_11:
    sub_10000B3A8(v8, &qword_10169E368, &qword_1013D6690);
    **(v0 + 16) = 0;

    v13 = *(v0 + 8);

    return v13();
  }

  v9 = *(v0 + 184);
  v10 = *(v0 + 168);
  sub_10002AB74(*(v0 + 192), v9, type metadata accessor for KeyGenerationBeaconInfo);
  if (*(v9 + *(v10 + 28)) != 3)
  {
    v8 = *(v0 + 200);
    v12 = *(v0 + 184);

    sub_100721D04(v12, type metadata accessor for KeyGenerationBeaconInfo);
    goto LABEL_11;
  }

  v11 = swift_task_alloc();
  *(v0 + 280) = v11;
  *v11 = v0;
  v11[1] = sub_1006B658C;

  return daemon.getter();
}

uint64_t sub_1006B658C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 288) = a1;

  v5 = swift_task_alloc();
  *(v3 + 296) = v5;
  v6 = type metadata accessor for ObservationStoreService();
  v7 = sub_100003E8C(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v5 = v4;
  v5[1] = sub_1006B6740;
  v8 = *(v2 + 240);
  v9 = *(v2 + 232);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1006B6740(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1006B7558, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[40] = v5;
    *v5 = v4;
    v5[1] = sub_1006B68F0;
    v6 = v3[23];
    v7 = v3[20];

    return sub_1010CE088(v7, v6);
  }
}

uint64_t sub_1006B68F0()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1006B76A8;
  }

  else
  {
    v2 = sub_1006B6A04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006B6A04()
{
  v92 = v0;
  v1 = *(v0 + 152);
  sub_1000D2A70(*(v0 + 160), v1, &unk_10169BB50, &unk_101395760);
  v2 = type metadata accessor for ObservedAdvertisement(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v3 = *(v0 + 152);
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    sub_100029784(v5, v4);
    sub_100721D04(v3, type metadata accessor for ObservedAdvertisement);
    if ((v4 & 0x2000000000000000) != 0)
    {

      sub_10001E524(v5, v4);
      goto LABEL_9;
    }

    v6 = *(v0 + 136);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    sub_100029784(v5, v4);
    sub_100017D5C(v5, v4);
    v9 = static MACAddress.length.getter();
    v89 = v4;
    v90 = v5;
    sub_10002EA98(v9, v5, v4, &v91);
    MACAddress.init(data:type:)();
    v86 = *(v8 + 48);
    result = v86(v6, 1, v7);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v11 = *(v0 + 144);
      v12 = *(v0 + 128);
      v13 = *(v0 + 112);
      v14 = *(v0 + 88);
      v15 = *(v0 + 96);
      v16 = *(v0 + 72);
      v83 = *(v0 + 64);
      v85 = *(v0 + 80);
      v81 = *(v0 + 32);
      v78 = *(v15 + 32);
      v78(v13, *(v0 + 136), v14);
      MACAddress.data.getter();
      v17 = *(v15 + 8);
      v17(v13, v14);
      MACAddress.init(addressToSanitize:type:)();
      (*(v16 + 16))(v85, v81, v83);
      sub_1000D2A70(v11, v12, &qword_1016A40D0, &unk_10138BE70);
      v18 = v86(v12, 1, v14);
      v19 = *(v0 + 128);
      if (v18 != 1)
      {
        v33 = *(v0 + 88);
        v27 = MACAddress.data.getter();
        v29 = v34;
        v17(v19, v33);
        v24 = v89;
        sub_10001E524(v5, v89);
        goto LABEL_11;
      }

      v20 = v17;
      v21 = *(v0 + 120);
      v22 = *(v0 + 88);
      sub_10000B3A8(*(v0 + 128), &qword_1016A40D0, &unk_10138BE70);
      v23 = static MACAddress.length.getter();
      v24 = v89;
      sub_10002EA98(v23, v90, v89, &v91);
      MACAddress.init(data:type:)();
      result = v86(v21, 1, v22);
      if (result != 1)
      {
        v25 = *(v0 + 104);
        v26 = *(v0 + 88);
        v78(v25, *(v0 + 120), v26);
        v27 = MACAddress.data.getter();
        v29 = v28;
        v20(v25, v26);
LABEL_11:
        v36 = *(v0 + 72);
        v35 = *(v0 + 80);
        v37 = *(v0 + 64);
        v38 = objc_allocWithZone(SPBeaconingKey);
        isa = DateInterval._bridgeToObjectiveC()().super.isa;
        v40 = Data._bridgeToObjectiveC()().super.isa;
        v41 = [v38 initWithDateInterval:isa key:v40];

        sub_100016590(v27, v29);
        (*(v36 + 8))(v35, v37);
        v42 = objc_allocWithZone(SPCommandKey);
        v43 = v41;
        v44 = Data._bridgeToObjectiveC()().super.isa;
        v45 = Data._bridgeToObjectiveC()().super.isa;
        v46 = Data._bridgeToObjectiveC()().super.isa;
        v88 = [v42 initWithBeaconingKey:v43 commandKey:v44 connectionToken:v45 nearbyToken:v46 primaryIndex:0 secondaryIndex:0 type:2];

        if (qword_101694780 != -1)
        {
          swift_once();
        }

        v48 = *(v0 + 48);
        v47 = *(v0 + 56);
        v49 = *(v0 + 40);
        v50 = *(v0 + 24);
        v51 = type metadata accessor for Logger();
        sub_1000076D4(v51, qword_10177AE40);
        (*(v48 + 16))(v47, v50, v49);
        v52 = v43;
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();

        v84 = v54;
        v55 = os_log_type_enabled(v53, v54);
        v56 = *(v0 + 200);
        v57 = *(v0 + 184);
        v58 = *(v0 + 160);
        v87 = *(v0 + 144);
        v60 = *(v0 + 48);
        v59 = *(v0 + 56);
        v61 = *(v0 + 40);
        if (v55)
        {
          v82 = *(v0 + 160);
          v62 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *v62 = 136315651;
          v80 = v56;
          v63 = [v52 key];
          v79 = v57;
          v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v52;
          v66 = v65;

          v67 = Data.hexString.getter();
          v69 = v68;
          sub_100016590(v64, v66);
          v70 = sub_1000136BC(v67, v69, &v91);

          *(v62 + 4) = v70;
          *(v62 + 12) = 2160;
          *(v62 + 14) = 1752392040;
          *(v62 + 22) = 2081;
          sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v71 = dispatch thunk of CustomStringConvertible.description.getter();
          v73 = v72;
          (*(v60 + 8))(v59, v61);
          v74 = sub_1000136BC(v71, v73, &v91);

          *(v62 + 24) = v74;
          _os_log_impl(&_mh_execute_header, v53, v84, "Returning command key %s for imported beacon %{private,mask.hash}s", v62, 0x20u);
          swift_arrayDestroy();

          sub_10001E524(v90, v89);
          sub_10000B3A8(v87, &qword_1016A40D0, &unk_10138BE70);
          sub_10000B3A8(v82, &unk_10169BB50, &unk_101395760);
          sub_100721D04(v79, type metadata accessor for KeyGenerationBeaconInfo);
          v75 = v80;
        }

        else
        {

          sub_10001E524(v90, v24);
          (*(v60 + 8))(v59, v61);
          sub_10000B3A8(v87, &qword_1016A40D0, &unk_10138BE70);
          sub_10000B3A8(v58, &unk_10169BB50, &unk_101395760);
          sub_100721D04(v57, type metadata accessor for KeyGenerationBeaconInfo);
          v75 = v56;
        }

        sub_10000B3A8(v75, &qword_10169E368, &qword_1013D6690);
        v32 = v88;
        goto LABEL_17;
      }
    }

    __break(1u);
    return result;
  }

  sub_10000B3A8(*(v0 + 152), &unk_10169BB50, &unk_101395760);

LABEL_9:
  v30 = *(v0 + 200);
  v31 = *(v0 + 184);
  sub_10000B3A8(*(v0 + 160), &unk_10169BB50, &unk_101395760);
  sub_100721D04(v31, type metadata accessor for KeyGenerationBeaconInfo);
  sub_10000B3A8(v30, &qword_10169E368, &qword_1013D6690);
  v32 = 0;
LABEL_17:
  **(v0 + 16) = v32;

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_1006B7330()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006B7444()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006B7558()
{
  v1 = v0[25];
  v2 = v0[23];

  sub_100721D04(v2, type metadata accessor for KeyGenerationBeaconInfo);
  sub_10000B3A8(v1, &qword_10169E368, &qword_1013D6690);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006B76A8()
{
  v1 = v0[25];
  v2 = v0[23];

  sub_100721D04(v2, type metadata accessor for KeyGenerationBeaconInfo);
  sub_10000B3A8(v1, &qword_10169E368, &qword_1013D6690);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006B7804@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, char **a3@<X2>, void *a4@<X8>)
{
  v69 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for TimeBasedKey(0) + 24));
  v12 = v11[1];
  if (v12 >> 60 == 15)
  {
    LODWORD(v68) = static os_log_type_t.error.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    v13 = qword_10177C370;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10138BBE0;
    v15 = a2[3];
    v16 = a2[4];
    sub_1000035D0(a2, v15);
    (*(*(*(v16 + 8) + 8) + 32))(v15);
    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    *(v14 + 56) = &type metadata for String;
    v20 = sub_100008C00();
    *(v14 + 32) = v17;
    *(v14 + 40) = v19;
    v21 = *a1;
    *(v14 + 96) = &type metadata for UInt64;
    *(v14 + 104) = &protocol witness table for UInt64;
    *(v14 + 64) = v20;
    *(v14 + 72) = v21;

    v23 = 0;
  }

  else
  {
    v24 = v11[2];
    v25 = v11[3];
    v68 = *v11;
    sub_100017D5C(v68, v12);
    v26 = PublicKey.advertisement.getter(v24, v25);
    v28 = v27;
    v29 = objc_allocWithZone(SPBeaconingKey);
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v31 = Data._bridgeToObjectiveC()().super.isa;
    v67 = [v29 initWithDateInterval:isa key:v31];

    sub_100016590(v26, v28);
    v32 = *a1;
    v66 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*a1];
    if (v32)
    {
      v33 = v32 / 0x60 + 1;
    }

    else
    {
      v33 = 0;
    }

    v34 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_100A5DC90(0, *(v34 + 2) + 1, 1, v34);
      *a3 = v34;
    }

    v37 = *(v34 + 2);
    v36 = *(v34 + 3);
    if (v37 >= v36 >> 1)
    {
      v34 = sub_100A5DC90((v36 > 1), v37 + 1, 1, v34);
      *a3 = v34;
    }

    *(v34 + 2) = v37 + 1;
    *&v34[8 * v37 + 32] = v33;
    v38 = v68;
    v61 = v12;
    v39 = sub_100499CE0(v68, v12);
    v64 = v40;
    v65 = v39;
    v41 = sub_100497AF4(v38, v12);
    v62 = v42;
    v63 = v41;
    v43 = PublicKey.advertisement.getter(v11[2], v11[3]);
    v45 = v44;
    v46 = sub_100499CE0(v38, v12);
    v48 = v47;
    v49 = sub_100499208(v46, v47, v43, v45);
    v51 = v50;
    sub_100016590(v46, v48);
    sub_100016590(v43, v45);
    v60 = objc_allocWithZone(SPCommandKey);
    v52 = v66;
    v53 = Data._bridgeToObjectiveC()().super.isa;
    v66 = v53;
    v54 = v62;
    v55 = v63;
    v56 = Data._bridgeToObjectiveC()().super.isa;
    v57 = v49;
    v58 = Data._bridgeToObjectiveC()().super.isa;
    v59 = v67;
    v23 = [v60 initWithBeaconingKey:v67 commandKey:v53 connectionToken:v56 nearbyToken:v58 primaryIndex:v52 secondaryIndex:0 type:0];

    sub_100016590(v57, v51);
    sub_100016590(v55, v54);

    sub_100016590(v65, v64);
    result = sub_100006654(v68, v61);
  }

  *v69 = v23;
  return result;
}

uint64_t sub_1006B7CDC@<X0>(unint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v151 = a4;
  v8 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v9 = __chkstk_darwin(v8 - 8);
  v150 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v149 - v11;
  v13 = sub_1000BC4D4(&qword_1016A5A70, &unk_1013D6860);
  v14 = __chkstk_darwin(v13 - 8);
  v154 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = (&v149 - v16);
  v169 = _s18ConnectionKeyGroupVMa(0);
  v165 = *(v169 - 8);
  v18 = __chkstk_darwin(v169);
  v160 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v161 = (&v149 - v21);
  v22 = __chkstk_darwin(v20);
  v159 = &v149 - v23;
  __chkstk_darwin(v22);
  v25 = &v149 - v24;
  v170 = type metadata accessor for TimeBasedKey(0);
  v26 = *(v170 - 8);
  v27 = __chkstk_darwin(v170);
  v163 = (&v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __chkstk_darwin(v27);
  v164 = &v149 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = (&v149 - v32);
  __chkstk_darwin(v31);
  v162 = (&v149 - v34);
  v35 = *a1;
  sub_10001F280(a3, &v171);
  v36 = swift_allocObject();
  *(v36 + 16) = a2;
  sub_10000A748(&v171, v36 + 24);
  *(v36 + 64) = v35;

  unsafeFromAsyncTask<A>(_:)();

  v37 = *(&v171 + 1);
  if (v172 <= 1u)
  {
    v166 = v171;
    v158 = v26;
    v38 = v26;
    v149 = *(&v171 + 1);
    if (v172)
    {
      v164 = *(v171 + 16);
      if (v164)
      {
        v154 = v12;
        v26 = 0;
        v163 = (v171 + ((*(v38 + 80) + 32) & ~*(v38 + 80)));
        v161 = (v165 + 56);
        v39 = _swiftEmptyArrayStorage;
        v160 = (v165 + 48);
        a2 = v162;
        v153 = v17;
        v152 = v25;
        v157 = v33;
        while (1)
        {
          v41 = *(v166 + 16);
          if (v26 >= v41)
          {
            goto LABEL_91;
          }

          v167 = v39;
          v4 = v38;
          sub_100721C9C(v163 + *(v38 + 72) * v26, a2, type metadata accessor for TimeBasedKey);
          sub_100721C9C(a2, v33, type metadata accessor for TimeBasedKey);
          v39 = (v33 + *(v170 + 24));
          v38 = v39[1];
          if (v38 >> 60 == 15)
          {
            v35 = type metadata accessor for TimeBasedKey;
            sub_100721D04(a2, type metadata accessor for TimeBasedKey);
            sub_100721D04(v33, type metadata accessor for TimeBasedKey);
            v79 = 1;
            v80 = v169;
            v38 = v4;
          }

          else
          {
            v81 = *v39;
            v17 = String.utf8Data.getter();
            v25 = v82;
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v83 = __DataStorage.init(length:)();
            *&v171 = 0x2000000000;
            *(&v171 + 1) = v83 | 0x4000000000000000;
            sub_100017D5C(v17, v25);
            sub_10002E98C(v81, v38);
            v84 = v168;
            v85 = sub_100A7F110(v17, v25, v17, v25, v81, v38, &v171, 32);
            v35 = v84;
            if (v84)
            {
              sub_100006654(v81, v38);
              sub_100016590(v17, v25);
              goto LABEL_150;
            }

            v86 = v85;
            sub_100006654(v81, v38);
            sub_100016590(v17, v25);
            if (v86)
            {
              v123 = static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              v124 = qword_10177BA00;
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v125 = swift_allocObject();
              *(v125 + 16) = xmmword_101385D80;
              *(v125 + 56) = &type metadata for Int32;
              *(v125 + 64) = &protocol witness table for Int32;
              *(v125 + 32) = v86;
              os_log(_:dso:log:_:_:)(v123, &_mh_execute_header, v124, "Error running CCDeriveKey. Code: %d.", v149);

              v126 = v154;
              CryptoError.init(rawValue:)();
              v127 = type metadata accessor for CryptoError();
              sub_100003E8C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
              v35 = swift_allocError();
              v129 = v128;
              v130 = *(v127 - 8);
              v4 = v130[6];
              if ((v4)(v126, 1, v127) == 1)
              {
                v131 = v130[13];
                v39 = v130 + 13;
                v131(v129, enum case for CryptoError.unspecifiedError(_:), v127);
                if ((v4)(v154, 1, v127) != 1)
                {
                  sub_10000B3A8(v154, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                v137 = v130[4];
                v39 = v130 + 4;
                v137(v129, v154, v127);
              }

              swift_willThrow();
LABEL_150:
              v139 = *(&v171 + 1);
              v138 = v171;
LABEL_151:
              sub_100016590(v138, v139);
              sub_100016590(v17, v25);
              *&v171 = 0;
              *(&v171 + 1) = 0xE000000000000000;
              a2 = &v171;
              _StringGuts.grow(_:)(35);
              v140._object = 0x8000000101354990;
              v140._countAndFlagsBits = 0xD000000000000021;
              String.append(_:)(v140);
              for (i = v35; ; i = v26)
              {
LABEL_152:
                sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                _print_unlocked<A, B>(_:_:)();
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
LABEL_153:
                v35 = 0;
LABEL_154:
                sub_100018350();
                v26 = swift_allocError();
                *v141 = 32;
                *(v141 + 8) = v35;
                *(v141 + 16) = 0;
                swift_willThrow();
                v134 = a2;
                v135 = v155;
LABEL_147:
                sub_100016590(v134, v135);
                sub_100016590(v4, v39);
                *&v171 = 0;
                *(&v171 + 1) = 0xE000000000000000;
                a2 = &v171;
                _StringGuts.grow(_:)(35);
                v136._object = 0x8000000101354990;
                v136._countAndFlagsBits = 0xD000000000000021;
                String.append(_:)(v136);
              }
            }

            v4 = *(&v171 + 1);
            a2 = v171;
            sub_100017D5C(v171, *(&v171 + 1));
            sub_100016590(a2, v4);
            v41 = v4 >> 62;
            if ((v4 >> 62) > 1)
            {
              if (v41 != 2)
              {
                v26 = 0;
                goto LABEL_156;
              }

              v89 = *(a2 + 2);
              v88 = *(a2 + 3);
              v53 = __OFSUB__(v88, v89);
              v87 = v88 - v89;
              if (v53)
              {
                goto LABEL_93;
              }
            }

            else if (v41)
            {
              LODWORD(v87) = HIDWORD(a2) - a2;
              if (__OFSUB__(HIDWORD(a2), a2))
              {
                goto LABEL_95;
              }

              v87 = v87;
            }

            else
            {
              v87 = BYTE6(v4);
            }

            if (v87 != 32)
            {
              goto LABEL_104;
            }

            sub_100016590(v17, v25);
            v25 = *v157;
            v90 = v159;
            *(v159 + 7) = &type metadata for SecondaryIndex;
            *(v90 + 8) = sub_10022A4D4();
            *(v90 + 4) = v25;
            v17 = sub_100A7A194(v39[2], v39[3], 0, 0);
            v91 = sub_100A7829C(v17, 0, 2);
            v168 = 0;
            v39 = v91;
            v35 = v92;
            CCECCryptorRelease();
            v41 = v35 >> 62;
            if ((v35 >> 62) > 1)
            {
              if (v41 != 2)
              {
                v148 = 0;
                goto LABEL_160;
              }

              v95 = v39[2];
              v94 = v39[3];
              v53 = __OFSUB__(v94, v95);
              v93 = v94 - v95;
              if (v53)
              {
                goto LABEL_97;
              }
            }

            else if (v41)
            {
              LODWORD(v93) = HIDWORD(v39) - v39;
              if (__OFSUB__(HIDWORD(v39), v39))
              {
                goto LABEL_99;
              }

              v93 = v93;
            }

            else
            {
              v93 = BYTE6(v35);
            }

            if (v93 != 28)
            {
              goto LABEL_112;
            }

            v96 = v26;
            sub_10002EA98(6, v39, v35, &v171);
            v35 = type metadata accessor for TimeBasedKey;
            v97 = v162;
            sub_100721D04(v162, type metadata accessor for TimeBasedKey);
            v155 = *(&v171 + 1);
            v156 = v171;
            v80 = v169;
            v98 = *(v170 + 20);
            v99 = *(v169 + 28);
            v100 = type metadata accessor for DateInterval();
            v101 = v159;
            v102 = &v159[v99];
            v33 = v157;
            (*(*(v100 - 8) + 16))(v102, v157 + v98, v100);
            v103 = v155;
            *v101 = v156;
            v101[1] = v103;
            v101[2] = a2;
            v101[3] = v4;
            a2 = v97;
            sub_100721D04(v33, type metadata accessor for TimeBasedKey);
            v17 = v153;
            sub_10002AB74(v101, v153, _s18ConnectionKeyGroupVMa);
            v79 = 0;
            v38 = v158;
            v26 = v96;
            v25 = v152;
          }

          (*v161)(v17, v79, 1, v80);
          if ((*v160)(v17, 1, v80) == 1)
          {
            sub_10000B3A8(v17, &qword_1016A5A70, &unk_1013D6860);
            v39 = v167;
          }

          else
          {
            sub_10002AB74(v17, v25, _s18ConnectionKeyGroupVMa);
            v39 = v167;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_100A5BE18(0, v39[2] + 1, 1, v39);
            }

            v105 = v39[2];
            v104 = v39[3];
            v35 = v105 + 1;
            if (v105 >= v104 >> 1)
            {
              v39 = sub_100A5BE18((v104 > 1), v105 + 1, 1, v39);
            }

            v39[2] = v35;
            sub_10002AB74(v25, v39 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v105, _s18ConnectionKeyGroupVMa);
            a2 = v162;
          }

          if (v164 == ++v26)
          {
            goto LABEL_83;
          }
        }
      }

      v39 = _swiftEmptyArrayStorage;
LABEL_83:
      if (v39[2])
      {
        v73 = v165;
        v75 = v151;
        sub_100721C9C(v39 + ((*(v165 + 80) + 32) & ~*(v165 + 80)), v151, _s18ConnectionKeyGroupVMa);

        v76 = v166;
        v77 = v149;
        v78 = 1;
        goto LABEL_85;
      }

      v106 = v166;
      v37 = v149;
      v107 = 1;
    }

    else
    {
      v25 = v171;
      v162 = *(v171 + 16);
      if (v162)
      {
        v35 = 0;
        v39 = v26;
        v159 = (v171 + ((*(v26 + 80) + 32) & ~*(v26 + 80)));
        v40 = v164;
        v157 = (v165 + 56);
        v4 = _swiftEmptyArrayStorage;
        v156 = (v165 + 48);
        v38 = v154;
        v17 = v163;
        while (1)
        {
          v41 = *(v25 + 16);
          if (v35 >= v41)
          {
            break;
          }

          v167 = v4;
          v42 = v25;
          sub_100721C9C(&v159[v39[9] * v35], v40, type metadata accessor for TimeBasedKey);
          sub_100721C9C(v40, v17, type metadata accessor for TimeBasedKey);
          v26 = v17;
          v17 = (v17 + *(v170 + 24));
          v25 = v17[1];
          if (v25 >> 60 == 15)
          {
            sub_100721D04(v40, type metadata accessor for TimeBasedKey);
            sub_100721D04(v26, type metadata accessor for TimeBasedKey);
            v43 = 1;
            v17 = v26;
            v25 = v42;
          }

          else
          {
            v38 = *v17;
            v4 = String.utf8Data.getter();
            v39 = v44;
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v45 = __DataStorage.init(length:)();
            *&v171 = 0x2000000000;
            *(&v171 + 1) = v45 | 0x4000000000000000;
            sub_100017D5C(v4, v39);
            sub_10002E98C(v38, v25);
            v46 = v168;
            v47 = sub_100A7F110(v4, v39, v4, v39, v38, v25, &v171, 32);
            v26 = v46;
            if (v46)
            {
              goto LABEL_132;
            }

            v48 = v47;
            sub_100006654(v38, v25);
            sub_100016590(v4, v39);
            if (v48)
            {
              v114 = static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              v115 = qword_10177BA00;
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v116 = swift_allocObject();
              *(v116 + 16) = xmmword_101385D80;
              *(v116 + 56) = &type metadata for Int32;
              *(v116 + 64) = &protocol witness table for Int32;
              *(v116 + 32) = v48;
              os_log(_:dso:log:_:_:)(v114, &_mh_execute_header, v115, "Error running CCDeriveKey. Code: %d.", v149);

              v117 = v150;
              CryptoError.init(rawValue:)();
              v118 = type metadata accessor for CryptoError();
              sub_100003E8C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
              v26 = swift_allocError();
              v120 = v119;
              v121 = *(v118 - 8);
              v122 = *(v121 + 48);
              if (v122(v117, 1, v118) == 1)
              {
                (*(v121 + 104))(v120, enum case for CryptoError.unspecifiedError(_:), v118);
                if (v122(v150, 1, v118) != 1)
                {
                  sub_10000B3A8(v150, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v121 + 32))(v120, v150, v118);
              }

              swift_willThrow();
              goto LABEL_146;
            }

            v25 = *(&v171 + 1);
            a2 = v171;
            sub_100017D5C(v171, *(&v171 + 1));
            sub_100016590(a2, v25);
            v41 = v25 >> 62;
            v49 = v164;
            v155 = v25;
            if ((v25 >> 62) > 1)
            {
              if (v41 != 2)
              {
                goto LABEL_153;
              }

              v52 = *(a2 + 2);
              v51 = *(a2 + 3);
              v53 = __OFSUB__(v51, v52);
              v50 = v51 - v52;
              if (v53)
              {
                goto LABEL_92;
              }
            }

            else if (v41)
            {
              LODWORD(v50) = HIDWORD(a2) - a2;
              if (__OFSUB__(HIDWORD(a2), a2))
              {
                goto LABEL_94;
              }

              v50 = v50;
            }

            else
            {
              v50 = BYTE6(v25);
            }

            if (v50 != 32)
            {
              goto LABEL_100;
            }

            sub_100016590(v4, v39);
            v54 = *v163;
            v25 = v160;
            *(v160 + 7) = &type metadata for SecondaryIndex;
            *(v25 + 64) = sub_10022A4D4();
            *(v25 + 32) = v54;
            v38 = sub_100A7A194(v17[2], v17[3], 0, 0);
            v55 = sub_100A7829C(v38, 0, 2);
            v168 = 0;
            v39 = v55;
            v26 = v56;
            CCECCryptorRelease();
            v41 = v26 >> 62;
            if ((v26 >> 62) > 1)
            {
              if (v41 != 2)
              {
                v147 = 0;
                goto LABEL_158;
              }

              v59 = v39[2];
              v58 = v39[3];
              v53 = __OFSUB__(v58, v59);
              v57 = v58 - v59;
              if (v53)
              {
                goto LABEL_96;
              }
            }

            else if (v41)
            {
              LODWORD(v57) = HIDWORD(v39) - v39;
              if (__OFSUB__(HIDWORD(v39), v39))
              {
                goto LABEL_98;
              }

              v57 = v57;
            }

            else
            {
              v57 = BYTE6(v26);
            }

            if (v57 != 28)
            {
              goto LABEL_108;
            }

            sub_10002EA98(6, v39, v26, &v171);
            v26 = type metadata accessor for TimeBasedKey;
            sub_100721D04(v49, type metadata accessor for TimeBasedKey);
            v61 = *(&v171 + 1);
            v60 = v171;
            v62 = *(v170 + 20);
            v63 = *(v169 + 28);
            v64 = type metadata accessor for DateInterval();
            v65 = v160;
            v66 = &v160[v63];
            v67 = v163;
            (*(*(v64 - 8) + 16))(v66, v163 + v62, v64);
            *v65 = __PAIR128__(v61, v60);
            v17 = v67;
            v68 = v155;
            *(v65 + 2) = a2;
            *(v65 + 3) = v68;
            sub_100721D04(v67, type metadata accessor for TimeBasedKey);
            v69 = v65;
            v40 = v164;
            v38 = v154;
            sub_10002AB74(v69, v154, _s18ConnectionKeyGroupVMa);
            v43 = 0;
            v25 = v166;
            v39 = v158;
          }

          a2 = v169;
          (*v157)(v38, v43, 1, v169);
          v70 = (*v156)(v38, 1, a2);
          v4 = v167;
          if (v70 == 1)
          {
            sub_10000B3A8(v38, &qword_1016A5A70, &unk_1013D6860);
          }

          else
          {
            sub_10002AB74(v38, v161, _s18ConnectionKeyGroupVMa);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_100A5BE18(0, *(v4 + 16) + 1, 1, v4);
            }

            v26 = *(v4 + 16);
            v71 = *(v4 + 24);
            a2 = (v26 + 1);
            if (v26 >= v71 >> 1)
            {
              v4 = sub_100A5BE18((v71 > 1), v26 + 1, 1, v4);
            }

            *(v4 + 16) = a2;
            sub_10002AB74(v161, v4 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v26, _s18ConnectionKeyGroupVMa);
          }

          if (v162 == ++v35)
          {
            goto LABEL_79;
          }
        }

        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        if (v41 == 1)
        {
          LODWORD(v41) = HIDWORD(a2) - a2;
          if (!__OFSUB__(HIDWORD(a2), a2))
          {
            v35 = v41;
            goto LABEL_154;
          }

          __break(1u);
LABEL_104:
          if (v41 != 1)
          {
            goto LABEL_120;
          }

          LODWORD(v41) = HIDWORD(a2) - a2;
          if (!__OFSUB__(HIDWORD(a2), a2))
          {
            v26 = v41;
            goto LABEL_156;
          }

          __break(1u);
LABEL_108:
          if (v41 != 1)
          {
LABEL_124:
            if (v41 != 2)
            {
              v147 = BYTE6(v26);
LABEL_158:
              sub_100018350();
              v143 = swift_allocError();
              *v144 = 28;
              *(v144 + 8) = v147;
              *(v144 + 16) = 0;
              swift_willThrow();
              sub_100016590(v39, v26);
              *&v171 = 0;
              *(&v171 + 1) = 0xE000000000000000;
              a2 = &v171;
              _StringGuts.grow(_:)(35);
              v132._object = 0x800000010134CB30;
              v132._countAndFlagsBits = 0xD000000000000021;
              String.append(_:)(v132);
              i = v143;
              goto LABEL_152;
            }

            v111 = v39[2];
            v41 = v39[3];
            v147 = v41 - v111;
            if (!__OFSUB__(v41, v111))
            {
              goto LABEL_158;
            }

            __break(1u);
LABEL_128:
            if (v41 == 2)
            {
              v113 = v39[2];
              v112 = v39[3];
              v148 = v112 - v113;
              if (__OFSUB__(v112, v113))
              {
                __break(1u);
LABEL_132:
                sub_100006654(v38, v25);
                sub_100016590(v4, v39);
LABEL_146:
                v135 = *(&v171 + 1);
                v134 = v171;
                goto LABEL_147;
              }
            }

            else
            {
              v148 = BYTE6(v35);
            }

LABEL_160:
            sub_100018350();
            v145 = swift_allocError();
            *v146 = 28;
            *(v146 + 8) = v148;
            *(v146 + 16) = 0;
            swift_willThrow();
            sub_100016590(v39, v35);
            *&v171 = 0;
            *(&v171 + 1) = 0xE000000000000000;
            a2 = &v171;
            _StringGuts.grow(_:)(35);
            v133._object = 0x800000010134CB30;
            v133._countAndFlagsBits = 0xD000000000000021;
            String.append(_:)(v133);
            i = v145;
            goto LABEL_152;
          }

          LODWORD(v41) = HIDWORD(v39) - v39;
          if (!__OFSUB__(HIDWORD(v39), v39))
          {
            v147 = v41;
            goto LABEL_158;
          }

          __break(1u);
LABEL_112:
          if (v41 != 1)
          {
            goto LABEL_128;
          }

          LODWORD(v41) = HIDWORD(v39) - v39;
          if (!__OFSUB__(HIDWORD(v39), v39))
          {
            v148 = v41;
            goto LABEL_160;
          }

          __break(1u);
        }

        if (v41 != 2)
        {
          v35 = BYTE6(v155);
          goto LABEL_154;
        }

        v109 = *(a2 + 2);
        v41 = *(a2 + 3);
        v35 = v41 - v109;
        if (!__OFSUB__(v41, v109))
        {
          goto LABEL_154;
        }

        __break(1u);
LABEL_120:
        if (v41 != 2)
        {
          v26 = BYTE6(v4);
LABEL_156:
          sub_100018350();
          v35 = swift_allocError();
          *v142 = 32;
          *(v142 + 8) = v26;
          *(v142 + 16) = 0;
          swift_willThrow();
          v138 = a2;
          v139 = v4;
          goto LABEL_151;
        }

        v110 = *(a2 + 2);
        v41 = *(a2 + 3);
        v26 = v41 - v110;
        if (!__OFSUB__(v41, v110))
        {
          goto LABEL_156;
        }

        __break(1u);
        goto LABEL_124;
      }

      v4 = _swiftEmptyArrayStorage;
LABEL_79:
      if (*(v4 + 16))
      {
        v73 = v165;
        v75 = v151;
        sub_100721C9C(v4 + ((*(v165 + 80) + 32) & ~*(v165 + 80)), v151, _s18ConnectionKeyGroupVMa);

        v76 = v25;
        v77 = v149;
        v78 = 0;
        goto LABEL_85;
      }

      v106 = v25;
      v37 = v149;
      v107 = 0;
    }

LABEL_88:
    sub_100359088(v106, v37, v107);
    return (*(v165 + 56))(v151, 1, 1, v169);
  }

  if (v172 == 2)
  {
    v72 = v171;
    if (*(v171 + 16))
    {
      v73 = v165;
      v74 = *(&v171 + 1);
      v75 = v151;
      sub_100721C9C(v171 + ((*(v165 + 80) + 32) & ~*(v165 + 80)), v151, _s18ConnectionKeyGroupVMa);
      v76 = v72;
      v77 = v74;
      v78 = 2;
LABEL_85:
      sub_100359088(v76, v77, v78);
      return (*(v73 + 56))(v75, 0, 1, v169);
    }

    v106 = v171;
    v107 = 2;
    goto LABEL_88;
  }

  return (*(v165 + 56))(v151, 1, 1, v169);
}

uint64_t sub_1006B96F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1006B971C, 0, 0);
}

uint64_t sub_1006B971C()
{
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1006B9824;
  v3 = v0[5];
  v2 = v0[6];

  return sub_100731BF4(v3, v2, v2, 1, 0, 0);
}

uint64_t sub_1006B9824(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = sub_1006B9994;
  }

  else
  {

    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v9 = sub_1006B9968;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1006B9968()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);
  *v2 = vextq_s8(*(v0 + 80), *(v0 + 80), 8uLL);
  v2[1].i8[0] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1006B9994()
{

  v1 = *(v0 + 24);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 3;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1006B9A10(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a2[2];
  v7 = a2[3];
  sub_100017D5C(v6, v7);
  v8 = [v5 connectionToken];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  LOBYTE(v8) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7, v9, v11);
  sub_100016590(v9, v11);
  sub_100016590(v6, v7);
  if (v8 & 1) != 0 || (v12 = *a2, v13 = a2[1], sub_100017D5C(*a2, v13), v14 = [v5 beaconingKey], v15 = objc_msgSend(v14, "key"), v14, v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v18 = v17, v15, LOBYTE(v15) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v13, v16, v18), sub_100016590(v16, v18), sub_100016590(v12, v13), (v15))
  {
    v19 = 0;
  }

  else
  {
    _s18ConnectionKeyGroupVMa(0);
    v20 = objc_allocWithZone(SPBeaconingKey);
    sub_100017D5C(v12, v13);
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v22 = Data._bridgeToObjectiveC()().super.isa;
    v34 = [v20 initWithDateInterval:isa key:v22];

    sub_100016590(v12, v13);
    sub_1000035D0(a2 + 4, a2[7]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v23 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v35];
    v33 = [v5 primaryIndex];
    v24 = [v5 connectionToken];
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = objc_allocWithZone(SPCommandKey);
    v28 = v23;
    v29 = Data._bridgeToObjectiveC()().super.isa;
    v30 = Data._bridgeToObjectiveC()().super.isa;
    v31 = Data._bridgeToObjectiveC()().super.isa;
    v19 = [v27 initWithBeaconingKey:v34 commandKey:v29 connectionToken:v30 nearbyToken:v31 primaryIndex:v33 secondaryIndex:v28 type:1];

    sub_100016590(v32, v26);
  }

  *a3 = v19;
}

void *sub_1006B9D20(uint64_t a1, uint64_t a2)
{
  v4 = _s18ConnectionKeyGroupVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TimeBasedKeysCriteria(0);
  __chkstk_darwin(v8);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100025020(a1, &v38);
  if (v39)
  {
    sub_10000A748(&v38, v40);
    *v10 = a2;
    swift_storeEnumTagMultiPayload();

    v11 = sub_100A8A1DC(v40, v10);
    sub_100721D04(v10, type metadata accessor for TimeBasedKeysCriteria);
    *&v38 = _swiftEmptyArrayStorage;
    v13 = v11[2];
    if (v13)
    {
      v35 = *(v4 + 28);
      v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v32 = v11;
      v15 = v11 + v14;
      v16 = *(v5 + 72);
      v33 = _swiftEmptyArrayStorage;
      v34 = v16;
      do
      {
        v36 = v13;
        sub_100721C9C(v15, v7, _s18ConnectionKeyGroupVMa);
        v17 = *v7;
        v18 = v7[1];
        v19 = objc_allocWithZone(SPBeaconingKey);
        sub_100017D5C(v17, v18);
        isa = DateInterval._bridgeToObjectiveC()().super.isa;
        v21 = Data._bridgeToObjectiveC()().super.isa;
        v22 = [v19 initWithDateInterval:isa key:{v21, v32}];

        sub_100016590(v17, v18);
        sub_1000035D0(v7 + 4, v7[7]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        v23 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v37];
        v24 = v7[2];
        v25 = v7[3];
        v26 = objc_allocWithZone(SPCommandKey);
        sub_100017D5C(v24, v25);
        v27 = Data._bridgeToObjectiveC()().super.isa;
        v28 = Data._bridgeToObjectiveC()().super.isa;
        v29 = Data._bridgeToObjectiveC()().super.isa;
        v30 = [v26 initWithBeaconingKey:v22 commandKey:v27 connectionToken:v28 nearbyToken:v29 primaryIndex:v23 secondaryIndex:0 type:0];

        sub_100016590(v24, v25);
        sub_100721D04(v7, _s18ConnectionKeyGroupVMa);
        if (v30)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v33 = v38;
        }

        v15 += v34;
        v13 = v36 - 1;
      }

      while (v36 != 1);

      v31 = v33;
    }

    else
    {

      v31 = _swiftEmptyArrayStorage;
    }

    sub_100007BAC(v40);
    return v31;
  }

  else
  {
    sub_10000B3A8(&v38, &qword_101696920, &unk_10138B200);
    return _swiftEmptyArrayStorage;
  }
}

void *sub_1006BA240(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v10 = __chkstk_darwin(v9 - 8);
  v181 = (&v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v180 = &v174 - v12;
  v190 = _s18ConnectionKeyGroupVMa(0);
  v191 = *(v190 - 8);
  v13 = __chkstk_darwin(v190);
  v182 = &v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v188 = (&v174 - v16);
  __chkstk_darwin(v15);
  v187 = (&v174 - v17);
  v18 = type metadata accessor for TimeBasedKey(0);
  v193 = *(v18 - 8);
  v194 = v18;
  v19 = __chkstk_darwin(v18);
  v192 = (&v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v189 = &v174 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v174 - v24;
  __chkstk_darwin(v23);
  v186 = &v174 - v26;
  v27 = sub_1000BC4D4(&qword_1016A5A70, &unk_1013D6860);
  v28 = __chkstk_darwin(v27 - 8);
  v183 = &v174 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v174 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v174 - v34;
  __chkstk_darwin(v33);
  v184 = &v174 - v36;
  v37 = type metadata accessor for TimeBasedKeysCriteria(0);
  __chkstk_darwin(v37);
  v39 = &v174 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v4;
  sub_100025020(a1, &v197);
  if (!v199)
  {
    sub_10000B3A8(&v197, &qword_101696920, &unk_10138B200);
    return _swiftEmptyArrayStorage;
  }

  sub_10000A748(&v197, &v201);
  v40 = a2 & 1;
  *v39 = v40;
  *(v39 + 1) = a3;
  v39[16] = a4;
  swift_storeEnumTagMultiPayload();
  v41 = 0;
  v42 = sub_100A8A1DC(&v201, v39);
  v43 = sub_100721D04(v39, type metadata accessor for TimeBasedKeysCriteria);
  v176 = v42;
  if (v40)
  {
    sub_10001F280(&v201, &v197);
    v54 = swift_allocObject();
    *(v54 + 16) = v185;
    sub_10000A748(&v197, v54 + 24);
    *(v54 + 64) = a3;

    unsafeFromAsyncTask<A>(_:)();

    v55 = *(&v197 + 1);
    v56 = v197;
    if (v198 > 1u)
    {
      v57 = v190;
      v59 = v191;
      if (v198 != 2)
      {

LABEL_3:
        sub_100007BAC(&v201);
        return _swiftEmptyArrayStorage;
      }

      v89 = v197;
      v90 = v176;
      if (*(v197 + 16))
      {
        v91 = v184;
        sub_100721C9C(v197 + ((*(v191 + 80) + 32) & ~*(v191 + 80)), v184, _s18ConnectionKeyGroupVMa);
        sub_100359088(v89, v55, 2u);
        (*(v59 + 56))(v91, 0, 1, v57);
      }

      else
      {
        sub_100359088(v197, *(&v197 + 1), 2u);
        v91 = v184;
        (*(v59 + 56))(v184, 1, 1, v57);
      }

      v119 = v183;
LABEL_97:
      sub_1000D2A70(v91, v119, &qword_1016A5A70, &unk_1013D6860);
      if ((*(v59 + 48))(v119, 1, v57) != 1)
      {
        v121 = v119;
        v122 = v182;
        v123 = sub_10002AB74(v121, v182, _s18ConnectionKeyGroupVMa);
        __chkstk_darwin(v123);
        *(&v174 - 4) = v185;
        *(&v174 - 3) = &v201;
        v172 = v122;
        v53 = sub_1005C7AE4(sub_100720480, (&v174 - 12), v90);

        sub_10000B3A8(v91, &qword_1016A5A70, &unk_1013D6860);
        sub_100721D04(v122, _s18ConnectionKeyGroupVMa);
        goto LABEL_100;
      }

      sub_10000B3A8(v119, &qword_1016A5A70, &unk_1013D6860);
      sub_10000B3A8(v91, &qword_1016A5A70, &unk_1013D6860);
      goto LABEL_3;
    }

    v57 = v190;
    v175 = *(&v197 + 1);
    v179 = v197;
    if (v198)
    {
      v192 = *(v197 + 16);
      if (v192)
      {
        v55 = 0;
        v189 = (v197 + ((*(v193 + 80) + 32) & ~*(v193 + 80)));
        v188 = (v191 + 56);
        v92 = _swiftEmptyArrayStorage;
        v181 = (v191 + 48);
        v93 = v186;
        while (v55 < *(v56 + 16))
        {
          sub_100721C9C(&v189[*(v193 + 72) * v55], v93, type metadata accessor for TimeBasedKey);
          sub_100721C9C(v93, v25, type metadata accessor for TimeBasedKey);
          v94 = &v25[*(v194 + 24)];
          v95 = v94[1];
          if (v95 >> 60 == 15)
          {
            sub_100721D04(v93, type metadata accessor for TimeBasedKey);
            sub_100721D04(v25, type metadata accessor for TimeBasedKey);
            v96 = 1;
          }

          else
          {
            v178 = v92;
            v97 = *v94;
            v32 = String.utf8Data.getter();
            v62 = v98;
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v99 = __DataStorage.init(length:)();
            *&v197 = 0x2000000000;
            *(&v197 + 1) = v99 | 0x4000000000000000;
            sub_100017D5C(v32, v62);
            sub_10002E98C(v97, v95);
            v100 = sub_100A7F110(v32, v62, v32, v62, v97, v95, &v197, 32);
            sub_100006654(v97, v95);
            sub_100016590(v32, v62);
            if (v100)
            {
              v147 = static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              v148 = qword_10177BA00;
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v149 = swift_allocObject();
              *(v149 + 16) = xmmword_101385D80;
              *(v149 + 56) = &type metadata for Int32;
              *(v149 + 64) = &protocol witness table for Int32;
              *(v149 + 32) = v100;
              os_log(_:dso:log:_:_:)(v147, &_mh_execute_header, v148, "Error running CCDeriveKey. Code: %d.", v174);

              v150 = v180;
              CryptoError.init(rawValue:)();
              v151 = type metadata accessor for CryptoError();
              sub_100003E8C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
              v55 = swift_allocError();
              v153 = v152;
              v154 = *(v151 - 8);
              v35 = v154 + 48;
              v67 = *(v154 + 48);
              if ((v67)(v150, 1, v151) == 1)
              {
                (*(v154 + 104))(v153, enum case for CryptoError.unspecifiedError(_:), v151);
                if ((v67)(v180, 1, v151) != 1)
                {
                  sub_10000B3A8(v180, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v154 + 32))(v153, v180, v151);
              }

              swift_willThrow();
              v159 = *(&v197 + 1);
              v158 = v197;
              goto LABEL_160;
            }

            v67 = *(&v197 + 1);
            v71 = v197;
            sub_100017D5C(v197, *(&v197 + 1));
            sub_100016590(v71, v67);
            v72 = v67 >> 62;
            v57 = v190;
            if ((v67 >> 62) > 1)
            {
              if (v72 != 2)
              {
                v169 = 0;
                goto LABEL_166;
              }

              v103 = *(v71 + 16);
              v102 = *(v71 + 24);
              v76 = __OFSUB__(v102, v103);
              v101 = v102 - v103;
              if (v76)
              {
                goto LABEL_103;
              }
            }

            else if (v72)
            {
              LODWORD(v101) = HIDWORD(v71) - v71;
              if (__OFSUB__(HIDWORD(v71), v71))
              {
                goto LABEL_105;
              }

              v101 = v101;
            }

            else
            {
              v101 = BYTE6(v67);
            }

            if (v101 != 32)
            {
              goto LABEL_114;
            }

            sub_100016590(v32, v62);
            v104 = *v25;
            v199 = &type metadata for SecondaryIndex;
            v200 = sub_10022A4D4();
            *&v197 = v104;
            v105 = sub_100A7A194(v94[2], v94[3], 0, 0);
            v32 = sub_100A7829C(v105, 0, 2);
            v62 = v106;
            CCECCryptorRelease();
            v72 = v62 >> 62;
            if ((v62 >> 62) > 1)
            {
              if (v72 != 2)
              {
                v170 = 0;
                goto LABEL_170;
              }

              v109 = *(v32 + 2);
              v108 = *(v32 + 3);
              v76 = __OFSUB__(v108, v109);
              v107 = v108 - v109;
              if (v76)
              {
                goto LABEL_108;
              }
            }

            else if (v72)
            {
              LODWORD(v107) = HIDWORD(v32) - v32;
              if (__OFSUB__(HIDWORD(v32), v32))
              {
                goto LABEL_109;
              }

              v107 = v107;
            }

            else
            {
              v107 = BYTE6(v62);
            }

            if (v107 != 28)
            {
              goto LABEL_118;
            }

            sub_10002EA98(6, v32, v62, &v196);
            v93 = v186;
            sub_100721D04(v186, type metadata accessor for TimeBasedKey);
            v110 = *(v194 + 20);
            *v35 = v196;
            *(v35 + 16) = v71;
            *(v35 + 24) = v67;
            sub_10000A748(&v197, v35 + 32);
            v111 = *(v57 + 28);
            v112 = type metadata accessor for DateInterval();
            (*(*(v112 - 8) + 16))(v35 + v111, &v25[v110], v112);
            sub_100721D04(v25, type metadata accessor for TimeBasedKey);
            v96 = 0;
            v92 = v178;
          }

          (*v188)(v35, v96, 1, v57);
          v113 = (*v181)(v35, 1, v57);
          v56 = v179;
          if (v113 == 1)
          {
            sub_10000B3A8(v35, &qword_1016A5A70, &unk_1013D6860);
          }

          else
          {
            sub_10002AB74(v35, v187, _s18ConnectionKeyGroupVMa);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v92 = sub_100A5BE18(0, v92[2] + 1, 1, v92);
            }

            v115 = v92[2];
            v114 = v92[3];
            if (v115 >= v114 >> 1)
            {
              v92 = sub_100A5BE18((v114 > 1), v115 + 1, 1, v92);
            }

            v92[2] = v115 + 1;
            sub_10002AB74(v187, v92 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v115, _s18ConnectionKeyGroupVMa);
          }

          if (v192 == ++v55)
          {
            goto LABEL_90;
          }
        }

        goto LABEL_102;
      }

      v92 = _swiftEmptyArrayStorage;
LABEL_90:
      if (v92[2])
      {
        v59 = v191;
        v120 = v92 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
        v91 = v184;
        sub_100721C9C(v120, v184, _s18ConnectionKeyGroupVMa);

        v116 = v56;
        v117 = v175;
        v118 = 1;
        goto LABEL_92;
      }

      sub_100359088(v56, v175, 1u);
      v59 = v191;
    }

    else
    {
      v186 = *(v197 + 16);
      if (v186)
      {
        v58 = 0;
        v180 = v197 + ((*(v193 + 80) + 32) & ~*(v193 + 80));
        v59 = v191;
        v178 = (v191 + 56);
        v60 = _swiftEmptyArrayStorage;
        v177 = (v191 + 48);
        v61 = v192;
        v62 = v189;
        while (v58 < *(v56 + 16))
        {
          v187 = v60;
          sub_100721C9C(v180 + *(v193 + 72) * v58, v62, type metadata accessor for TimeBasedKey);
          sub_100721C9C(v62, v61, type metadata accessor for TimeBasedKey);
          v63 = (v61 + *(v194 + 24));
          v64 = v63[1];
          if (v64 >> 60 == 15)
          {
            v55 = type metadata accessor for TimeBasedKey;
            sub_100721D04(v62, type metadata accessor for TimeBasedKey);
            sub_100721D04(v61, type metadata accessor for TimeBasedKey);
            v65 = 1;
            v60 = v187;
          }

          else
          {
            v66 = *v63;
            v67 = String.utf8Data.getter();
            v35 = v68;
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v69 = __DataStorage.init(length:)();
            *&v197 = 0x2000000000;
            *(&v197 + 1) = v69 | 0x4000000000000000;
            sub_100017D5C(v67, v35);
            sub_10002E98C(v66, v64);
            v70 = sub_100A7F110(v67, v35, v67, v35, v66, v64, &v197, 32);
            sub_100006654(v66, v64);
            sub_100016590(v67, v35);
            if (v70)
            {
              v138 = static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              v139 = qword_10177BA00;
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v140 = swift_allocObject();
              *(v140 + 16) = xmmword_101385D80;
              *(v140 + 56) = &type metadata for Int32;
              *(v140 + 64) = &protocol witness table for Int32;
              *(v140 + 32) = v70;
              os_log(_:dso:log:_:_:)(v138, &_mh_execute_header, v139, "Error running CCDeriveKey. Code: %d.", v174);

              v141 = v181;
              CryptoError.init(rawValue:)();
              v55 = type metadata accessor for CryptoError();
              sub_100003E8C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
              v142 = swift_allocError();
              v144 = v143;
              v145 = *(v55 - 8);
              v146 = *(v145 + 48);
              if (v146(v141, 1, v55) == 1)
              {
                (*(v145 + 104))(v144, enum case for CryptoError.unspecifiedError(_:), v55);
                if (v146(v181, 1, v55) != 1)
                {
                  sub_10000B3A8(v181, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v145 + 32))(v144, v181, v55);
              }

              swift_willThrow();
              v156 = *(&v197 + 1);
              v155 = v197;
              goto LABEL_157;
            }

            v71 = *(&v197 + 1);
            v55 = v197;
            sub_100017D5C(v197, *(&v197 + 1));
            sub_100016590(v55, v71);
            v72 = v71 >> 62;
            v57 = v190;
            if ((v71 >> 62) > 1)
            {
              if (v72 != 2)
              {
                goto LABEL_163;
              }

              v75 = *(v55 + 16);
              v74 = *(v55 + 24);
              v76 = __OFSUB__(v74, v75);
              v73 = v74 - v75;
              if (v76)
              {
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
                if (v72 != 1)
                {
                  goto LABEL_126;
                }

                LODWORD(v72) = HIDWORD(v55) - v55;
                if (!__OFSUB__(HIDWORD(v55), v55))
                {
                  v41 = v72;
                  goto LABEL_164;
                }

                __break(1u);
LABEL_114:
                if (v72 == 1)
                {
                  LODWORD(v72) = HIDWORD(v71) - v71;
                  if (!__OFSUB__(HIDWORD(v71), v71))
                  {
                    v169 = v72;
                    goto LABEL_166;
                  }

                  __break(1u);
LABEL_118:
                  if (v72 == 1)
                  {
                    LODWORD(v72) = HIDWORD(v32) - v32;
                    if (!__OFSUB__(HIDWORD(v32), v32))
                    {
                      v170 = v72;
                      goto LABEL_170;
                    }

                    __break(1u);
LABEL_122:
                    if (v72 == 1)
                    {
                      LODWORD(v72) = HIDWORD(v67) - v67;
                      if (!__OFSUB__(HIDWORD(v67), v67))
                      {
                        v171 = v72;
                        goto LABEL_168;
                      }

                      __break(1u);
LABEL_126:
                      if (v72 != 2)
                      {
                        v41 = BYTE6(v71);
                        goto LABEL_164;
                      }

                      v124 = *(v55 + 16);
                      v72 = *(v55 + 24);
                      v41 = v72 - v124;
                      if (!__OFSUB__(v72, v124))
                      {
                        goto LABEL_164;
                      }

                      __break(1u);
                      goto LABEL_130;
                    }

LABEL_138:
                    if (v72 != 2)
                    {
                      v171 = BYTE6(v35);
                      goto LABEL_168;
                    }

                    v128 = *(v67 + 16);
                    v127 = *(v67 + 24);
                    v171 = v127 - v128;
                    if (!__OFSUB__(v127, v128))
                    {
LABEL_168:
                      sub_100018350();
                      v55 = swift_allocError();
                      *v165 = 28;
                      *(v165 + 8) = v171;
                      *(v165 + 16) = 0;
                      swift_willThrow();
                      v166 = v67;
                      v167 = v35;
                      goto LABEL_171;
                    }

                    __break(1u);
                    v129 = v41;
                    v130 = static os_log_type_t.error.getter();
                    if (qword_101694BE0 != -1)
                    {
                      swift_once();
                    }

                    v131 = qword_10177BA00;
                    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                    v132 = swift_allocObject();
                    *(v132 + 16) = xmmword_101385D80;
                    *&v196 = v129;
                    swift_errorRetain();
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    v35 = String.init<A>(describing:)();
                    v134 = v133;
                    *(v132 + 56) = &type metadata for String;
                    *(v132 + 64) = sub_100008C00();
                    *(v132 + 32) = v35;
                    *(v132 + 40) = v134;
                    os_log(_:dso:log:_:_:)(v130, &_mh_execute_header, v131, "Error deriving advertisementKey: %@", 35, 2, v132);

                    sub_1001BAF88();
                    v55 = swift_allocError();
                    *v135 = 0;
                    swift_willThrow();

LABEL_144:
                    *&v196 = 0;
                    *(&v196 + 1) = 0xE000000000000000;
                    v71 = &v196;
                    _StringGuts.grow(_:)(35);
                    v136._object = 0x800000010134CB30;
                    v136._countAndFlagsBits = 0xD000000000000021;
                    String.append(_:)(v136);
                    v195 = v55;
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    _print_unlocked<A, B>(_:_:)();
                    v173 = 0;
                    for (i = 256; ; i = 458)
                    {
                      v172 = i;
                      _assertionFailure(_:_:file:line:flags:)();
                      __break(1u);
LABEL_163:
                      v41 = 0;
LABEL_164:
                      sub_100018350();
                      v161 = swift_allocError();
                      *v162 = 32;
                      *(v162 + 8) = v41;
                      *(v162 + 16) = 0;
                      v142 = v161;
                      swift_willThrow();
                      v155 = v55;
                      v156 = v71;
LABEL_157:
                      sub_100016590(v155, v156);
                      sub_100016590(v67, v35);
                      *&v197 = 0;
                      *(&v197 + 1) = 0xE000000000000000;
                      v71 = &v197;
                      _StringGuts.grow(_:)(35);
                      v157._object = 0x8000000101354990;
                      v157._countAndFlagsBits = 0xD000000000000021;
                      String.append(_:)(v157);
                      *&v196 = v142;
LABEL_161:
                      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                      _print_unlocked<A, B>(_:_:)();
                      v173 = 0;
                    }
                  }

LABEL_134:
                  if (v72 == 2)
                  {
                    v126 = *(v32 + 2);
                    v72 = *(v32 + 3);
                    v170 = v72 - v126;
                    if (__OFSUB__(v72, v126))
                    {
                      __break(1u);
                      goto LABEL_138;
                    }
                  }

                  else
                  {
                    v170 = BYTE6(v62);
                  }

LABEL_170:
                  sub_100018350();
                  v55 = swift_allocError();
                  *v168 = 28;
                  *(v168 + 8) = v170;
                  *(v168 + 16) = 0;
                  swift_willThrow();
                  v166 = v32;
                  v167 = v62;
LABEL_171:
                  sub_100016590(v166, v167);
                  goto LABEL_144;
                }

LABEL_130:
                if (v72 == 2)
                {
                  v72 = *(v71 + 16);
                  v125 = *(v71 + 24);
                  v169 = v125 - v72;
                  if (__OFSUB__(v125, v72))
                  {
                    __break(1u);
                    goto LABEL_134;
                  }
                }

                else
                {
                  v169 = BYTE6(v67);
                }

LABEL_166:
                sub_100018350();
                v163 = swift_allocError();
                *v164 = 32;
                *(v164 + 8) = v169;
                *(v164 + 16) = 0;
                v55 = v163;
                swift_willThrow();
                v158 = v71;
                v159 = v67;
LABEL_160:
                sub_100016590(v158, v159);
                sub_100016590(v32, v62);
                *&v197 = 0;
                *(&v197 + 1) = 0xE000000000000000;
                v71 = &v197;
                _StringGuts.grow(_:)(35);
                v160._object = 0x8000000101354990;
                v160._countAndFlagsBits = 0xD000000000000021;
                String.append(_:)(v160);
                *&v196 = v55;
                goto LABEL_161;
              }
            }

            else if (v72)
            {
              LODWORD(v73) = HIDWORD(v55) - v55;
              if (__OFSUB__(HIDWORD(v55), v55))
              {
                goto LABEL_104;
              }

              v73 = v73;
            }

            else
            {
              v73 = BYTE6(v71);
            }

            if (v73 != 32)
            {
              goto LABEL_110;
            }

            sub_100016590(v67, v35);
            v77 = *v192;
            v199 = &type metadata for SecondaryIndex;
            v200 = sub_10022A4D4();
            *&v197 = v77;
            v78 = sub_100A7A194(v63[2], v63[3], 0, 0);
            v79 = sub_100A7829C(v78, 0, 2);
            v60 = v187;
            v67 = v79;
            v35 = v80;
            CCECCryptorRelease();
            v72 = v35 >> 62;
            if ((v35 >> 62) > 1)
            {
              v62 = v189;
              if (v72 != 2)
              {
                v171 = 0;
                goto LABEL_168;
              }

              v83 = *(v67 + 16);
              v82 = *(v67 + 24);
              v76 = __OFSUB__(v82, v83);
              v81 = v82 - v83;
              if (v76)
              {
                goto LABEL_106;
              }
            }

            else
            {
              v62 = v189;
              if (v72)
              {
                LODWORD(v81) = HIDWORD(v67) - v67;
                if (__OFSUB__(HIDWORD(v67), v67))
                {
                  goto LABEL_107;
                }

                v81 = v81;
              }

              else
              {
                v81 = BYTE6(v35);
              }
            }

            if (v81 != 28)
            {
              goto LABEL_122;
            }

            sub_10002EA98(6, v67, v35, &v196);
            sub_100721D04(v62, type metadata accessor for TimeBasedKey);
            v84 = *(v194 + 20);
            *v32 = v196;
            *(v32 + 2) = v55;
            *(v32 + 3) = v71;
            sub_10000A748(&v197, (v32 + 32));
            v55 = *(v57 + 28);
            v85 = type metadata accessor for DateInterval();
            v61 = v192;
            v86 = v192 + v84;
            v62 = v189;
            (*(*(v85 - 8) + 16))(&v32[v55], v86, v85);
            sub_100721D04(v61, type metadata accessor for TimeBasedKey);
            v65 = 0;
            v59 = v191;
            v56 = v179;
          }

          (*v178)(v32, v65, 1, v57);
          if ((*v177)(v32, 1, v57) == 1)
          {
            sub_10000B3A8(v32, &qword_1016A5A70, &unk_1013D6860);
          }

          else
          {
            sub_10002AB74(v32, v188, _s18ConnectionKeyGroupVMa);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_100A5BE18(0, v60[2] + 1, 1, v60);
            }

            v88 = v60[2];
            v87 = v60[3];
            v55 = v88 + 1;
            if (v88 >= v87 >> 1)
            {
              v60 = sub_100A5BE18((v87 > 1), v88 + 1, 1, v60);
            }

            v60[2] = v55;
            sub_10002AB74(v188, v60 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v88, _s18ConnectionKeyGroupVMa);
            v61 = v192;
          }

          if (v186 == ++v58)
          {
            goto LABEL_85;
          }
        }

        __break(1u);
LABEL_102:
        __break(1u);
        swift_once();
        v44 = qword_10177C380;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_10138BBE0;
        v46 = UUID.uuidString.getter();
        v48 = v47;
        *(v45 + 56) = &type metadata for String;
        v49 = sub_100008C00();
        *(v45 + 64) = v49;
        *(v45 + 32) = v46;
        *(v45 + 40) = v48;
        swift_getErrorValue();
        v50 = Error.localizedDescription.getter();
        *(v45 + 96) = &type metadata for String;
        *(v45 + 104) = v49;
        *(v45 + 72) = v50;
        *(v45 + 80) = v51;
        os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v44, "Failed to retrieve command keys for %@. Error %@", 48, 2, v45);

        goto LABEL_3;
      }

      v60 = _swiftEmptyArrayStorage;
      v59 = v191;
LABEL_85:
      if (v60[2])
      {
        v91 = v184;
        sub_100721C9C(v60 + ((*(v59 + 80) + 32) & ~*(v59 + 80)), v184, _s18ConnectionKeyGroupVMa);

        v116 = v56;
        v117 = v175;
        v118 = 0;
LABEL_92:
        sub_100359088(v116, v117, v118);
        (*(v59 + 56))(v91, 0, 1, v57);
LABEL_96:
        v119 = v183;
        v90 = v176;
        goto LABEL_97;
      }

      sub_100359088(v56, v175, 0);
    }

    v91 = v184;
    (*(v59 + 56))(v184, 1, 1, v57);
    goto LABEL_96;
  }

  __chkstk_darwin(v43);
  *(&v174 - 4) = v185;
  *(&v174 - 3) = &v201;
  v172 = a3;
  v53 = sub_1005C7AE4(sub_1007204A0, (&v174 - 12), v176);

LABEL_100:
  sub_100007BAC(&v201);
  return v53;
}

uint64_t sub_1006BBF14@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v173 = a1;
  v177 = a5;
  v9 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v10 = __chkstk_darwin(v9 - 8);
  v172 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v171 = &v169 - v12;
  v13 = _s18ConnectionKeyGroupVMa(0);
  v14 = *(v13 - 8);
  v185 = v13;
  v186 = v14;
  v15 = __chkstk_darwin(v13);
  v174 = (&v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v183 = &v169 - v18;
  __chkstk_darwin(v17);
  v182 = &v169 - v19;
  v20 = type metadata accessor for TimeBasedKey(0);
  v191 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v184 = &v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v169 - v24;
  v26 = __chkstk_darwin(v23);
  v188 = &v169 - v27;
  __chkstk_darwin(v26);
  v179 = &v169 - v28;
  v29 = sub_1000BC4D4(&qword_1016A5A70, &unk_1013D6860);
  v30 = __chkstk_darwin(v29 - 8);
  v176 = &v169 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v34 = &v169 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v169 - v36;
  __chkstk_darwin(v35);
  v39 = &v169 - v38;
  sub_10001F280(a3, &v194);
  v40 = swift_allocObject();
  *(v40 + 16) = a2;
  sub_10000A748(&v194, v40 + 24);
  *(v40 + 64) = a4;

  unsafeFromAsyncTask<A>(_:)();

  v41 = v194;
  v175 = v39;
  if (v195 <= 1u)
  {
    v187 = v20;
    v170 = *(&v194 + 1);
    v190 = v194;
    if (v195)
    {
      v42 = v185;
      v184 = *(v194 + 16);
      if (v184)
      {
        v25 = 0;
        v183 = v194 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
        v181 = (v186 + 56);
        v34 = _swiftEmptyArrayStorage;
        v180 = (v186 + 48);
        a2 = v188;
        v44 = v179;
        while (1)
        {
          v45 = *(v41 + 16);
          if (v25 >= v45)
          {
            goto LABEL_99;
          }

          v189 = v34;
          sub_100721C9C(v183 + *(v191 + 72) * v25, v44, type metadata accessor for TimeBasedKey);
          sub_100721C9C(v44, a2, type metadata accessor for TimeBasedKey);
          v72 = v20;
          v73 = &a2[*(v20 + 24)];
          v20 = v73[1];
          if (v20 >> 60 == 15)
          {
            sub_100721D04(v44, type metadata accessor for TimeBasedKey);
            sub_100721D04(a2, type metadata accessor for TimeBasedKey);
            v74 = 1;
            v20 = v72;
          }

          else
          {
            v75 = *v73;
            v34 = String.utf8Data.getter();
            v42 = v76;
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v77 = __DataStorage.init(length:)();
            *&v194 = 0x2000000000;
            *(&v194 + 1) = v77 | 0x4000000000000000;
            sub_100017D5C(v34, v42);
            sub_10002E98C(v75, v20);
            v5 = v192;
            v78 = sub_100A7F110(v34, v42, v34, v42, v75, v20, &v194, 32);
            v192 = v5;
            if (v5)
            {
              sub_100006654(v75, v20);
              sub_100016590(v34, v42);
              goto LABEL_162;
            }

            v79 = v78;
            sub_100006654(v75, v20);
            sub_100016590(v34, v42);
            if (v79)
            {
              v144 = static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              v145 = qword_10177BA00;
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v146 = swift_allocObject();
              *(v146 + 16) = xmmword_101385D80;
              *(v146 + 56) = &type metadata for Int32;
              *(v146 + 64) = &protocol witness table for Int32;
              *(v146 + 32) = v79;
              os_log(_:dso:log:_:_:)(v144, &_mh_execute_header, v145, "Error running CCDeriveKey. Code: %d.", v169);

              v44 = v171;
              CryptoError.init(rawValue:)();
              v147 = type metadata accessor for CryptoError();
              sub_100003E8C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
              v192 = swift_allocError();
              v149 = v148;
              v150 = *(v147 - 8);
              v25 = *(v150 + 48);
              if ((v25)(v44, 1, v147) == 1)
              {
                (*(v150 + 104))(v149, enum case for CryptoError.unspecifiedError(_:), v147);
                if ((v25)(v171, 1, v147) != 1)
                {
                  sub_10000B3A8(v171, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v150 + 32))(v149, v171, v147);
              }

              swift_willThrow();
LABEL_162:
              v155 = *(&v194 + 1);
              v154 = v194;
LABEL_163:
              sub_100016590(v154, v155);
              v153 = v34;
              goto LABEL_164;
            }

            v44 = *(&v194 + 1);
            a2 = v194;
            sub_100017D5C(v194, *(&v194 + 1));
            sub_100016590(a2, v44);
            v45 = v44 >> 62;
            if ((v44 >> 62) > 1)
            {
              if (v45 != 2)
              {
                v166 = 0;
                goto LABEL_169;
              }

              v82 = *(a2 + 2);
              v81 = *(a2 + 3);
              v55 = __OFSUB__(v81, v82);
              v80 = v81 - v82;
              if (v55)
              {
                goto LABEL_101;
              }
            }

            else if (v45)
            {
              LODWORD(v80) = HIDWORD(a2) - a2;
              if (__OFSUB__(HIDWORD(a2), a2))
              {
                goto LABEL_103;
              }

              v80 = v80;
            }

            else
            {
              v80 = BYTE6(v44);
            }

            if (v80 != 32)
            {
              goto LABEL_112;
            }

            sub_100016590(v34, v42);
            v83 = *v188;
            v196 = &type metadata for PrimaryIndex;
            v197 = sub_10002A2B8();
            *&v194 = v83;
            v5 = v192;
            v84 = sub_100A7A194(v73[2], v73[3], 0, 0);
            if (v5)
            {
              goto LABEL_140;
            }

            v85 = sub_100A7829C(v84, 0, 2);
            v192 = 0;
            v42 = v185;
            v20 = v85;
            v34 = v86;
            CCECCryptorRelease();
            v45 = v34 >> 62;
            if ((v34 >> 62) > 1)
            {
              if (v45 != 2)
              {
                v167 = 0;
                goto LABEL_173;
              }

              v89 = *(v20 + 16);
              v88 = *(v20 + 24);
              v55 = __OFSUB__(v88, v89);
              v87 = v88 - v89;
              if (v55)
              {
                goto LABEL_106;
              }
            }

            else if (v45)
            {
              LODWORD(v87) = HIDWORD(v20) - v20;
              if (__OFSUB__(HIDWORD(v20), v20))
              {
                goto LABEL_107;
              }

              v87 = v87;
            }

            else
            {
              v87 = BYTE6(v34);
            }

            if (v87 != 28)
            {
              goto LABEL_116;
            }

            sub_10002EA98(6, v20, v34, &v193);
            v90 = v179;
            sub_100721D04(v179, type metadata accessor for TimeBasedKey);
            v20 = v187;
            v91 = *(v187 + 20);
            *v37 = v193;
            *(v37 + 16) = a2;
            *(v37 + 24) = v44;
            v44 = v90;
            sub_10000A748(&v194, v37 + 32);
            v92 = *(v42 + 28);
            v93 = type metadata accessor for DateInterval();
            v94 = v37 + v92;
            a2 = v188;
            (*(*(v93 - 8) + 16))(v94, &v188[v91], v93);
            sub_100721D04(a2, type metadata accessor for TimeBasedKey);
            v74 = 0;
          }

          (*v181)(v37, v74, 1, v42);
          v95 = (*v180)(v37, 1, v42);
          v34 = v189;
          v41 = v190;
          if (v95 == 1)
          {
            sub_10000B3A8(v37, &qword_1016A5A70, &unk_1013D6860);
          }

          else
          {
            sub_10002AB74(v37, v182, _s18ConnectionKeyGroupVMa);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_100A5BE18(0, *(v34 + 16) + 1, 1, v34);
            }

            v97 = *(v34 + 16);
            v96 = *(v34 + 24);
            if (v97 >= v96 >> 1)
            {
              v34 = sub_100A5BE18((v96 > 1), v97 + 1, 1, v34);
            }

            *(v34 + 16) = v97 + 1;
            sub_10002AB74(v182, v34 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v97, _s18ConnectionKeyGroupVMa);
            a2 = v188;
          }

          if (v184 == ++v25)
          {
            goto LABEL_86;
          }
        }
      }

      v34 = _swiftEmptyArrayStorage;
LABEL_86:
      if (*(v34 + 16))
      {
        v68 = v186;
        v70 = v175;
        sub_100721C9C(v34 + ((*(v186 + 80) + 32) & ~*(v186 + 80)), v175, _s18ConnectionKeyGroupVMa);

        v98 = v41;
        v99 = v170;
        v100 = 1;
        goto LABEL_88;
      }

      v101 = v41;
      v102 = v170;
      v103 = 1;
    }

    else
    {
      v42 = v185;
      v188 = *(v194 + 16);
      if (v188)
      {
        v43 = 0;
        v182 = v194 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
        v181 = (v186 + 56);
        v37 = _swiftEmptyArrayStorage;
        v180 = (v186 + 48);
        v44 = v184;
        v178 = v25;
        while (1)
        {
          v45 = *(v41 + 16);
          if (v43 >= v45)
          {
            break;
          }

          v189 = v37;
          sub_100721C9C(v182 + *(v191 + 72) * v43, v25, type metadata accessor for TimeBasedKey);
          sub_100721C9C(v25, v44, type metadata accessor for TimeBasedKey);
          v20 = v44 + *(v20 + 24);
          v37 = *(v20 + 8);
          if (v37 >> 60 == 15)
          {
            a2 = type metadata accessor for TimeBasedKey;
            sub_100721D04(v25, type metadata accessor for TimeBasedKey);
            sub_100721D04(v44, type metadata accessor for TimeBasedKey);
            v46 = 1;
            v20 = v187;
          }

          else
          {
            v47 = *v20;
            v25 = String.utf8Data.getter();
            v42 = v48;
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v49 = __DataStorage.init(length:)();
            *&v194 = 0x2000000000;
            *(&v194 + 1) = v49 | 0x4000000000000000;
            sub_100017D5C(v25, v42);
            sub_10002E98C(v47, v37);
            v5 = v192;
            v50 = sub_100A7F110(v25, v42, v25, v42, v47, v37, &v194, 32);
            v192 = v5;
            if (v5)
            {
              sub_100006654(v47, v37);
              sub_100016590(v25, v42);
LABEL_158:
              v152 = *(&v194 + 1);
              v151 = v194;
              goto LABEL_159;
            }

            v51 = v50;
            sub_100006654(v47, v37);
            sub_100016590(v25, v42);
            if (v51)
            {
              v136 = static os_log_type_t.error.getter();
              if (qword_101694BE0 != -1)
              {
                swift_once();
              }

              v137 = qword_10177BA00;
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v138 = swift_allocObject();
              *(v138 + 16) = xmmword_101385D80;
              *(v138 + 56) = &type metadata for Int32;
              *(v138 + 64) = &protocol witness table for Int32;
              *(v138 + 32) = v51;
              os_log(_:dso:log:_:_:)(v136, &_mh_execute_header, v137, "Error running CCDeriveKey. Code: %d.", v169);

              v139 = v172;
              CryptoError.init(rawValue:)();
              v140 = type metadata accessor for CryptoError();
              sub_100003E8C(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
              v192 = swift_allocError();
              v142 = v141;
              v143 = *(v140 - 8);
              v44 = *(v143 + 48);
              if ((v44)(v139, 1, v140) == 1)
              {
                (*(v143 + 104))(v142, enum case for CryptoError.unspecifiedError(_:), v140);
                if ((v44)(v172, 1, v140) != 1)
                {
                  sub_10000B3A8(v172, &qword_10169C9A0, &unk_1013D5A40);
                }
              }

              else
              {
                (*(v143 + 32))(v142, v172, v140);
              }

              swift_willThrow();
              goto LABEL_158;
            }

            v44 = *(&v194 + 1);
            a2 = v194;
            sub_100017D5C(v194, *(&v194 + 1));
            sub_100016590(a2, v44);
            v45 = v44 >> 62;
            if ((v44 >> 62) > 1)
            {
              if (v45 != 2)
              {
                goto LABEL_166;
              }

              v54 = *(a2 + 2);
              v53 = *(a2 + 3);
              v55 = __OFSUB__(v53, v54);
              v52 = v53 - v54;
              if (v55)
              {
                goto LABEL_100;
              }
            }

            else if (v45)
            {
              LODWORD(v52) = HIDWORD(a2) - a2;
              if (__OFSUB__(HIDWORD(a2), a2))
              {
                goto LABEL_102;
              }

              v52 = v52;
            }

            else
            {
              v52 = BYTE6(v44);
            }

            if (v52 != 32)
            {
              goto LABEL_108;
            }

            sub_100016590(v25, v42);
            v56 = *v184;
            v196 = &type metadata for PrimaryIndex;
            v197 = sub_10002A2B8();
            *&v194 = v56;
            v5 = v192;
            v57 = sub_100A7A194(*(v20 + 16), *(v20 + 24), 0, 0);
            if (v5)
            {
              goto LABEL_140;
            }

            v58 = sub_100A7829C(v57, 0, 2);
            v192 = 0;
            v42 = v185;
            v20 = v187;
            v25 = v58;
            v37 = v59;
            CCECCryptorRelease();
            v45 = v37 >> 62;
            if ((v37 >> 62) > 1)
            {
              if (v45 != 2)
              {
                v168 = 0;
                goto LABEL_171;
              }

              v62 = *(v25 + 16);
              v61 = *(v25 + 24);
              v55 = __OFSUB__(v61, v62);
              v60 = v61 - v62;
              if (v55)
              {
                goto LABEL_104;
              }
            }

            else if (v45)
            {
              LODWORD(v60) = HIDWORD(v25) - v25;
              if (__OFSUB__(HIDWORD(v25), v25))
              {
                goto LABEL_105;
              }

              v60 = v60;
            }

            else
            {
              v60 = BYTE6(v37);
            }

            if (v60 != 28)
            {
              goto LABEL_120;
            }

            sub_10002EA98(6, v25, v37, &v193);
            v25 = v178;
            sub_100721D04(v178, type metadata accessor for TimeBasedKey);
            v63 = *(v20 + 20);
            *v34 = v193;
            *(v34 + 16) = a2;
            *(v34 + 24) = v44;
            sub_10000A748(&v194, v34 + 32);
            a2 = *(v42 + 28);
            v64 = type metadata accessor for DateInterval();
            v44 = v184;
            (*(*(v64 - 8) + 16))(&a2[v34], &v184[v63], v64);
            sub_100721D04(v44, type metadata accessor for TimeBasedKey);
            v46 = 0;
            v41 = v190;
          }

          (*v181)(v34, v46, 1, v42);
          v65 = (*v180)(v34, 1, v42);
          v37 = v189;
          if (v65 == 1)
          {
            sub_10000B3A8(v34, &qword_1016A5A70, &unk_1013D6860);
          }

          else
          {
            sub_10002AB74(v34, v183, _s18ConnectionKeyGroupVMa);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = sub_100A5BE18(0, *(v37 + 16) + 1, 1, v37);
            }

            v67 = *(v37 + 16);
            v66 = *(v37 + 24);
            a2 = (v67 + 1);
            if (v67 >= v66 >> 1)
            {
              v37 = sub_100A5BE18((v66 > 1), v67 + 1, 1, v37);
            }

            *(v37 + 16) = a2;
            sub_10002AB74(v183, v37 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v67, _s18ConnectionKeyGroupVMa);
            v41 = v190;
          }

          if (v188 == ++v43)
          {
            goto LABEL_82;
          }
        }

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
        if (v45 == 1)
        {
          LODWORD(v45) = HIDWORD(a2) - a2;
          if (!__OFSUB__(HIDWORD(a2), a2))
          {
            v165 = v45;
            goto LABEL_167;
          }

          __break(1u);
LABEL_112:
          if (v45 != 1)
          {
            goto LABEL_128;
          }

          LODWORD(v45) = HIDWORD(a2) - a2;
          if (!__OFSUB__(HIDWORD(a2), a2))
          {
            v166 = v45;
            goto LABEL_169;
          }

          __break(1u);
LABEL_116:
          if (v45 != 1)
          {
LABEL_132:
            if (v45 != 2)
            {
              v167 = BYTE6(v34);
LABEL_173:
              sub_100018350();
              v133 = swift_allocError();
              *v164 = 28;
              *(v164 + 8) = v167;
              *(v164 + 16) = 0;
              swift_willThrow();
              v162 = v20;
              v163 = v34;
              goto LABEL_174;
            }

            v125 = *(v20 + 16);
            v45 = *(v20 + 24);
            v167 = v45 - v125;
            if (!__OFSUB__(v45, v125))
            {
              goto LABEL_173;
            }

            __break(1u);
LABEL_136:
            if (v45 == 2)
            {
              v127 = *(v25 + 16);
              v126 = *(v25 + 24);
              v168 = v126 - v127;
              if (__OFSUB__(v126, v127))
              {
                __break(1u);
LABEL_140:
                v192 = v5;
                v128 = static os_log_type_t.error.getter();
                if (qword_101694BE0 != -1)
                {
                  swift_once();
                }

                v129 = qword_10177BA00;
                sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                v130 = swift_allocObject();
                *(v130 + 16) = xmmword_101385D80;
                *&v193 = v192;
                swift_errorRetain();
                sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                v131 = String.init<A>(describing:)();
                v25 = v132;
                *(v130 + 56) = &type metadata for String;
                *(v130 + 64) = sub_100008C00();
                *(v130 + 32) = v131;
                *(v130 + 40) = v25;
                os_log(_:dso:log:_:_:)(v128, &_mh_execute_header, v129, "Error deriving advertisementKey: %@", 35, 2, v130);

                sub_1001BAF88();
                v133 = swift_allocError();
                *v134 = 0;
                swift_willThrow();

LABEL_143:
                *&v193 = 0;
                *(&v193 + 1) = 0xE000000000000000;
                a2 = &v193;
                _StringGuts.grow(_:)(35);
                v135._object = 0x800000010134CB30;
                v135._countAndFlagsBits = 0xD000000000000021;
                String.append(_:)(v135);
                v198 = v133;
                sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                _print_unlocked<A, B>(_:_:)();
                while (1)
                {
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
LABEL_166:
                  v165 = 0;
LABEL_167:
                  sub_100018350();
                  v157 = swift_allocError();
                  *v158 = 32;
                  *(v158 + 8) = v165;
                  *(v158 + 16) = 0;
                  v192 = v157;
                  swift_willThrow();
                  v151 = a2;
                  v152 = v44;
LABEL_159:
                  sub_100016590(v151, v152);
                  v153 = v25;
LABEL_164:
                  sub_100016590(v153, v42);
                  *&v194 = 0;
                  *(&v194 + 1) = 0xE000000000000000;
                  a2 = &v194;
                  _StringGuts.grow(_:)(35);
                  v156._object = 0x8000000101354990;
                  v156._countAndFlagsBits = 0xD000000000000021;
                  String.append(_:)(v156);
                  *&v193 = v192;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  _print_unlocked<A, B>(_:_:)();
                }
              }
            }

            else
            {
              v168 = BYTE6(v37);
            }

LABEL_171:
            sub_100018350();
            v133 = swift_allocError();
            *v161 = 28;
            *(v161 + 8) = v168;
            *(v161 + 16) = 0;
            swift_willThrow();
            v162 = v25;
            v163 = v37;
LABEL_174:
            sub_100016590(v162, v163);
            goto LABEL_143;
          }

          LODWORD(v45) = HIDWORD(v20) - v20;
          if (!__OFSUB__(HIDWORD(v20), v20))
          {
            v167 = v45;
            goto LABEL_173;
          }

          __break(1u);
LABEL_120:
          if (v45 != 1)
          {
            goto LABEL_136;
          }

          LODWORD(v45) = HIDWORD(v25) - v25;
          if (!__OFSUB__(HIDWORD(v25), v25))
          {
            v168 = v45;
            goto LABEL_171;
          }

          __break(1u);
        }

        if (v45 != 2)
        {
          v165 = BYTE6(v44);
          goto LABEL_167;
        }

        v123 = *(a2 + 2);
        v45 = *(a2 + 3);
        v165 = v45 - v123;
        if (!__OFSUB__(v45, v123))
        {
          goto LABEL_167;
        }

        __break(1u);
LABEL_128:
        if (v45 != 2)
        {
          v166 = BYTE6(v44);
LABEL_169:
          sub_100018350();
          v159 = swift_allocError();
          *v160 = 32;
          *(v160 + 8) = v166;
          *(v160 + 16) = 0;
          v192 = v159;
          swift_willThrow();
          v154 = a2;
          v155 = v44;
          goto LABEL_163;
        }

        v124 = *(a2 + 2);
        v45 = *(a2 + 3);
        v166 = v45 - v124;
        if (!__OFSUB__(v45, v124))
        {
          goto LABEL_169;
        }

        __break(1u);
        goto LABEL_132;
      }

      v37 = _swiftEmptyArrayStorage;
LABEL_82:
      if (*(v37 + 16))
      {
        v68 = v186;
        v70 = v175;
        sub_100721C9C(v37 + ((*(v186 + 80) + 32) & ~*(v186 + 80)), v175, _s18ConnectionKeyGroupVMa);

        v98 = v41;
        v99 = v170;
        v100 = 0;
LABEL_88:
        sub_100359088(v98, v99, v100);
        (*(v68 + 56))(v70, 0, 1, v42);
        goto LABEL_93;
      }

      v101 = v41;
      v102 = v170;
      v103 = 0;
    }

    sub_100359088(v101, v102, v103);
    v68 = v186;
    v70 = v175;
    (*(v186 + 56))(v175, 1, 1, v42);
    goto LABEL_93;
  }

  if (v195 == 2)
  {
    v42 = v185;
    v68 = v186;
    v69 = v176;
    v70 = v39;
    if (*(v194 + 16))
    {
      v71 = *(&v194 + 1);
      sub_100721C9C(v194 + ((*(v186 + 80) + 32) & ~*(v186 + 80)), v70, _s18ConnectionKeyGroupVMa);
      sub_100359088(v41, v71, 2u);
      (*(v68 + 56))(v70, 0, 1, v42);
    }

    else
    {
      sub_100359088(v194, *(&v194 + 1), 2u);
      (*(v68 + 56))(v39, 1, 1, v42);
    }

    goto LABEL_94;
  }

  v42 = v185;
  v68 = v186;
  v70 = v39;
  (*(v186 + 56))(v39, 1, 1, v185);
LABEL_93:
  v69 = v176;
LABEL_94:
  sub_1000D2A70(v70, v69, &qword_1016A5A70, &unk_1013D6860);
  if ((*(v68 + 48))(v69, 1, v42) == 1)
  {
    sub_10000B3A8(v70, &qword_1016A5A70, &unk_1013D6860);
    result = sub_10000B3A8(v69, &qword_1016A5A70, &unk_1013D6860);
    v105 = 0;
  }

  else
  {
    v106 = v174;
    sub_10002AB74(v69, v174, _s18ConnectionKeyGroupVMa);
    v107 = *v106;
    v108 = v106[1];
    v109 = objc_allocWithZone(SPBeaconingKey);
    sub_100017D5C(v107, v108);
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v111 = Data._bridgeToObjectiveC()().super.isa;
    v112 = [v109 initWithDateInterval:isa key:v111];

    sub_100016590(v107, v108);
    v113 = v173;
    sub_1000035D0(v173 + 4, v173[7]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v114 = v194;
    v115 = v113[2];
    v116 = v113[3];
    v117 = objc_allocWithZone(NSNumber);
    sub_100017D5C(v115, v116);
    v118 = [v117 initWithUnsignedLongLong:v114];
    v119 = objc_allocWithZone(SPCommandKey);
    v120 = Data._bridgeToObjectiveC()().super.isa;
    v121 = Data._bridgeToObjectiveC()().super.isa;
    v122 = Data._bridgeToObjectiveC()().super.isa;
    v105 = [v119 initWithBeaconingKey:v112 commandKey:v120 connectionToken:v121 nearbyToken:v122 primaryIndex:v118 secondaryIndex:0 type:0];

    sub_100016590(v115, v116);
    sub_10000B3A8(v175, &qword_1016A5A70, &unk_1013D6860);
    result = sub_100721D04(v106, _s18ConnectionKeyGroupVMa);
  }

  *v177 = v105;
  return result;
}

uint64_t sub_1006BD9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1006BD9E4, 0, 0);
}

uint64_t sub_1006BD9E4()
{
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1006BDAEC;
  v3 = v0[5];
  v2 = v0[6];

  return sub_100731BF4(v3, v2, v2, 0, 0, 0);
}

uint64_t sub_1006BDAEC(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = sub_100721E98;
  }

  else
  {

    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v9 = sub_100721DC8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1006BDC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1006BDC54, 0, 0);
}

uint64_t sub_1006BDC54()
{
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1006BDAEC;
  v3 = v0[5];
  v2 = v0[6];

  return sub_100731BF4(v3, v2, v2, 1, 0, 0);
}

uint64_t sub_1006BDD5C@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v37 = a3;
  v42 = a4;
  v36 = type metadata accessor for Date();
  v8 = *(v36 - 8);
  __chkstk_darwin(v36);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DateInterval();
  v40 = *(v11 - 8);
  v41 = v11;
  __chkstk_darwin(v11);
  v43 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1 + 4, a1[7]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = v44;
  if (v44)
  {
    v14 = v44 / 0x60 + 1;
  }

  else
  {
    v14 = 0;
  }

  v39 = v14;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v38 = v4;
    v15 = sub_101073C10(v44);
    goto LABEL_10;
  }

  if (qword_101694940 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    v38 = v5;
    v15 = sub_101073524(v44);
LABEL_10:
    v16 = v15;

    v5 = a2[3];
    v17 = a2[4];
    sub_1000035D0(a2, v5);
    (*(v17 + 192))(v5, v17);
    if ((v16 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v18 = v39;
  sub_1008849E8(v10, v39, v16, v43);
  (*(v8 + 8))(v10, v36);
  v19 = *v37;
  v20 = v37[1];
  v21 = objc_allocWithZone(SPBeaconingKey);
  sub_100017D5C(v19, v20);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v23 = Data._bridgeToObjectiveC()().super.isa;
  v24 = [v21 initWithDateInterval:isa key:v23];

  sub_100016590(v19, v20);
  v25 = a1[2];
  v26 = a1[3];
  v27 = objc_allocWithZone(NSNumber);
  sub_100017D5C(v25, v26);
  v28 = [v27 initWithUnsignedLongLong:v13];
  v29 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v18];
  v30 = objc_allocWithZone(SPCommandKey);
  v31 = Data._bridgeToObjectiveC()().super.isa;
  v32 = Data._bridgeToObjectiveC()().super.isa;
  v33 = Data._bridgeToObjectiveC()().super.isa;
  v34 = [v30 initWithBeaconingKey:v24 commandKey:v31 connectionToken:v32 nearbyToken:v33 primaryIndex:v28 secondaryIndex:v29 type:1];

  sub_100016590(v25, v26);
  result = (*(v40 + 8))(v43, v41);
  *v42 = v34;
  return result;
}

uint64_t sub_1006BE1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v53 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v50 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for UUID();
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = v10;
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TimeBasedKeysCriteria(0);
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v11 - 8);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138BBE0;
  v16 = UUID.uuidString.getter();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  *(v15 + 64) = v19;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v20 = v47;
  v21 = TimeBasedKeysCriteria.description.getter();
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v19;
  *(v15 + 72) = v21;
  *(v15 + 80) = v22;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "commandKeys for uuid %{mask.hash}@, criteria %{public}@.", 56, 2, v15);

  v43 = *(v46 + 136);
  v39 = swift_allocObject();
  swift_weakInit();
  v23 = v41;
  sub_100721C9C(v20, v41, type metadata accessor for TimeBasedKeysCriteria);
  v25 = v44;
  v24 = v45;
  (*(v9 + 16))(v44, a1, v45);
  v26 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v9 + 80) + v27 + 8) & ~*(v9 + 80);
  v29 = (v42 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_10002AB74(v23, v30 + v26, type metadata accessor for TimeBasedKeysCriteria);
  *(v30 + v27) = v39;
  (*(v9 + 32))(v30 + v28, v25, v24);
  v31 = (v30 + v29);
  v32 = v49;
  *v31 = v48;
  v31[1] = v32;
  aBlock[4] = sub_10072007C;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162EC98;
  v33 = _Block_copy(aBlock);

  v34 = v50;
  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v35 = v53;
  v36 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);
  (*(v54 + 8))(v35, v36);
  (*(v51 + 8))(v34, v52);
}

uint64_t sub_1006BE7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  v49[1] = a5;
  v50 = a4;
  v7 = type metadata accessor for Date();
  __chkstk_darwin(v7 - 8);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DateInterval();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = (v49 - v15);
  v17 = type metadata accessor for TimeBasedKeysCriteria(0);
  __chkstk_darwin(v17);
  v19 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100721C9C(a1, v19, type metadata accessor for TimeBasedKeysCriteria);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v29 = *v19;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v24 = sub_1006B9D20(a3, v29);

        goto LABEL_16;
      }

LABEL_26:
      v43 = static os_log_type_t.error.getter();
      if (qword_101695050 != -1)
      {
        swift_once();
      }

      v44 = qword_10177C398;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_101385D80;
      v46 = UUID.uuidString.getter();
      v48 = v47;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_100008C00();
      *(v45 + 32) = v46;
      *(v45 + 40) = v48;
      os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v44, "Failed to retrieve command keys for %{mask.hash}@", 49, 2, v45);

      return v50(_swiftEmptyArrayStorage);
    }

    (*(v11 + 32))(v14, v19, v10);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v25 = sub_1006B4648(a3, v14);

      v50(v25);
    }

    else
    {
      v37 = static os_log_type_t.error.getter();
      if (qword_101695050 != -1)
      {
        swift_once();
      }

      v38 = qword_10177C398;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_101385D80;
      v40 = UUID.uuidString.getter();
      v42 = v41;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = sub_100008C00();
      *(v39 + 32) = v40;
      *(v39 + 40) = v42;
      os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "Failed to retrieve command keys for %{mask.hash}@", 49, 2, v39);

      v50(_swiftEmptyArrayStorage);
    }

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *v19;
      v27 = v19[8];
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v24 = sub_1006BA240(a3, 1, v26, v27);
        goto LABEL_11;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v21 = *v19;
      v22 = *(v19 + 1);
      v23 = v19[16];
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v24 = sub_1006BA240(a3, v21, v22, v23);
LABEL_11:

LABEL_16:
        v50(v24);
      }

      goto LABEL_26;
    }

    static Date.trustedNow.getter(v9);
    DateInterval.init(start:duration:)();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v28 = sub_1006B4648(a3, v16);

      v50(v28);
    }

    else
    {
      v31 = static os_log_type_t.error.getter();
      if (qword_101695050 != -1)
      {
        swift_once();
      }

      v32 = qword_10177C398;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_101385D80;
      v34 = UUID.uuidString.getter();
      v36 = v35;
      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = sub_100008C00();
      *(v33 + 32) = v34;
      *(v33 + 40) = v36;
      os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Failed to retrieve command keys for %{mask.hash}@", 49, 2, v33);

      v50(_swiftEmptyArrayStorage);
    }

    return (*(v11 + 8))(v16, v10);
  }
}

uint64_t sub_1006BEE58(uint64_t a1)
{
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v118 - v7;
  v9 = __chkstk_darwin(v6);
  v127 = &v118 - v10;
  v11 = __chkstk_darwin(v9);
  v123 = &v118 - v12;
  v13 = __chkstk_darwin(v11);
  v122 = &v118 - v14;
  v15 = __chkstk_darwin(v13);
  v121 = &v118 - v16;
  __chkstk_darwin(v15);
  v120 = &v118 - v17;
  v18 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v18 - 8);
  v20 = &v118 - v19;
  v21 = type metadata accessor for Date();
  v124 = *(v21 - 8);
  v125 = v21;
  v22 = __chkstk_darwin(v21);
  v24 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v126 = &v118 - v25;
  v26 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  __chkstk_darwin(v26 - 8);
  v28 = &v118 - v27;
  v29 = type metadata accessor for WildModeAssociationRecord(0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v2;
  result = 0;
  v34 = 1 << *(a1 + *(v2 + 64));
  if ((v34 & 0x29) == 0)
  {
    if ((v34 & 0x12) == 0)
    {
      return 1;
    }

    v35 = *(a1 + v128[11]);
    v36 = *(a1 + v128[12]);
    if (v35 == -1 && v36 == -1)
    {
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_1000076D4(v37, qword_10177B2D0);
      sub_100721C9C(a1, v5, type metadata accessor for SharedBeaconRecord);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v129 = v41;
        *v40 = 141558275;
        *(v40 + 4) = 1752392040;
        *(v40 + 12) = 2081;
        type metadata accessor for UUID();
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        sub_100721D04(v5, type metadata accessor for SharedBeaconRecord);
        v45 = sub_1000136BC(v42, v44, &v129);

        *(v40 + 14) = v45;
        v46 = "Automatic shared beacon %{private,mask.hash}s include in reconcile; Is self beacon.";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v38, v39, v46, v40, 0x16u);
        sub_100007BAC(v41);

        return 1;
      }

      v68 = type metadata accessor for SharedBeaconRecord;
      v69 = v5;
      goto LABEL_25;
    }

    v47 = a1;
    v119 = v32;
    if (sub_100E0EA64(v35, v36))
    {
      if (qword_101694F58 != -1)
      {
        swift_once();
      }

      v48 = qword_10177C218;
      v49 = [objc_opt_self() sharedInstance];
      v50 = [v49 isInternalBuild];

      if (v50)
      {
        v51 = String._bridgeToObjectiveC()();
        v52 = [v48 BOOLForKey:v51];

        if (v52)
        {
          sub_100AC29C4(v47 + v128[5], v28);
          if ((*(v30 + 48))(v28, 1, v29) == 1)
          {
            sub_10000B3A8(v28, &unk_1016C7C90, &qword_1013BB4B0);
            if (qword_101694910 != -1)
            {
              swift_once();
            }

            v53 = type metadata accessor for Logger();
            sub_1000076D4(v53, qword_10177B2D0);
            v54 = v123;
            sub_100721C9C(v47, v123, type metadata accessor for SharedBeaconRecord);
            v38 = Logger.logObject.getter();
            v39 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              v41 = swift_slowAlloc();
              v129 = v41;
              *v40 = 141558275;
              *(v40 + 4) = 1752392040;
              *(v40 + 12) = 2081;
              type metadata accessor for UUID();
              sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v55 = dispatch thunk of CustomStringConvertible.description.getter();
              v57 = v56;
              sub_100721D04(v54, type metadata accessor for SharedBeaconRecord);
              v58 = sub_1000136BC(v55, v57, &v129);

              *(v40 + 14) = v58;
              v46 = "Automatic shared beacon %{private,mask.hash}s include in reconcile; no UT.";
              goto LABEL_9;
            }

            v68 = type metadata accessor for SharedBeaconRecord;
            v69 = v54;
LABEL_25:
            sub_100721D04(v69, v68);
            return 1;
          }

          v81 = v119;
          sub_10002AB74(v28, v119, type metadata accessor for WildModeAssociationRecord);
          sub_1000D2A70(v81 + *(v29 + 44), v20, &unk_101696900, &unk_10138B1E0);
          v82 = v124;
          v83 = v125;
          if ((*(v124 + 48))(v20, 1, v125) == 1)
          {
            sub_10000B3A8(v20, &unk_101696900, &unk_10138B1E0);
            if (qword_101694910 != -1)
            {
              swift_once();
            }

            v84 = type metadata accessor for Logger();
            sub_1000076D4(v84, qword_10177B2D0);
            v85 = v122;
            sub_100721C9C(v47, v122, type metadata accessor for SharedBeaconRecord);
            v86 = Logger.logObject.getter();
            v87 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v86, v87))
            {
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              v129 = v89;
              *v88 = 141558275;
              *(v88 + 4) = 1752392040;
              *(v88 + 12) = 2081;
              type metadata accessor for UUID();
              sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v90 = dispatch thunk of CustomStringConvertible.description.getter();
              v92 = v91;
              sub_100721D04(v85, type metadata accessor for SharedBeaconRecord);
              v93 = sub_1000136BC(v90, v92, &v129);

              *(v88 + 14) = v93;
              _os_log_impl(&_mh_execute_header, v86, v87, "Automatic shared beacon %{private,mask.hash}s excluded from reconcile; has UT.", v88, 0x16u);
              sub_100007BAC(v89);
            }

            else
            {

              sub_100721D04(v85, type metadata accessor for SharedBeaconRecord);
            }
          }

          else
          {
            (*(v82 + 32))(v126, v20, v83);
            static Date.trustedNow.getter(v24);
            v94 = static Date.< infix(_:_:)();
            v95 = *(v82 + 8);
            v95(v24, v83);
            if (v94)
            {
              if (qword_101694910 != -1)
              {
                swift_once();
              }

              v96 = type metadata accessor for Logger();
              sub_1000076D4(v96, qword_10177B2D0);
              v97 = v47;
              v98 = v120;
              sub_100721C9C(v97, v120, type metadata accessor for SharedBeaconRecord);
              v99 = Logger.logObject.getter();
              v100 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v99, v100))
              {
                v101 = swift_slowAlloc();
                v102 = swift_slowAlloc();
                v129 = v102;
                *v101 = 141558275;
                *(v101 + 4) = 1752392040;
                *(v101 + 12) = 2081;
                type metadata accessor for UUID();
                sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v103 = dispatch thunk of CustomStringConvertible.description.getter();
                v105 = v104;
                sub_100721D04(v98, type metadata accessor for SharedBeaconRecord);
                v106 = sub_1000136BC(v103, v105, &v129);

                *(v101 + 14) = v106;
                _os_log_impl(&_mh_execute_header, v99, v100, "Automatic shared beacon %{private,mask.hash}s include in reconcile; UT ignored.", v101, 0x16u);
                sub_100007BAC(v102);
              }

              else
              {

                sub_100721D04(v98, type metadata accessor for SharedBeaconRecord);
              }

              v95(v126, v83);
              v68 = type metadata accessor for WildModeAssociationRecord;
              v69 = v119;
              goto LABEL_25;
            }

            if (qword_101694910 != -1)
            {
              swift_once();
            }

            v107 = type metadata accessor for Logger();
            sub_1000076D4(v107, qword_10177B2D0);
            v108 = v47;
            v109 = v121;
            sub_100721C9C(v108, v121, type metadata accessor for SharedBeaconRecord);
            v110 = Logger.logObject.getter();
            v111 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v129 = v113;
              *v112 = 141558275;
              *(v112 + 4) = 1752392040;
              *(v112 + 12) = 2081;
              type metadata accessor for UUID();
              sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v114 = dispatch thunk of CustomStringConvertible.description.getter();
              v116 = v115;
              sub_100721D04(v109, type metadata accessor for SharedBeaconRecord);
              v117 = sub_1000136BC(v114, v116, &v129);

              *(v112 + 14) = v117;
              _os_log_impl(&_mh_execute_header, v110, v111, "Automatic shared beacon %{private,mask.hash}s excluded from reconcile; has UT, ignore date passed.", v112, 0x16u);
              sub_100007BAC(v113);
            }

            else
            {

              sub_100721D04(v109, type metadata accessor for SharedBeaconRecord);
            }

            v95(v126, v83);
          }

          v79 = type metadata accessor for WildModeAssociationRecord;
          v80 = v119;
LABEL_35:
          sub_100721D04(v80, v79);
          return 0;
        }
      }

      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_1000076D4(v70, qword_10177B2D0);
      v71 = v127;
      sub_100721C9C(v47, v127, type metadata accessor for SharedBeaconRecord);
      v60 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v60, v72))
      {

        v79 = type metadata accessor for SharedBeaconRecord;
        v80 = v71;
        goto LABEL_35;
      }

      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v129 = v74;
      *v73 = 141558275;
      *(v73 + 4) = 1752392040;
      *(v73 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      sub_100721D04(v71, type metadata accessor for SharedBeaconRecord);
      v78 = sub_1000136BC(v75, v77, &v129);

      *(v73 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v60, v72, "Automatic shared beacon %{private,mask.hash}s excluded from reconcile; Is audio accessory.", v73, 0x16u);
      sub_100007BAC(v74);
    }

    else
    {
      if (qword_101694910 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_1000076D4(v59, qword_10177B2D0);
      sub_100721C9C(a1, v8, type metadata accessor for SharedBeaconRecord);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v60, v61))
      {

        v79 = type metadata accessor for SharedBeaconRecord;
        v80 = v8;
        goto LABEL_35;
      }

      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v129 = v63;
      *v62 = 141558275;
      *(v62 + 4) = 1752392040;
      *(v62 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      sub_100721D04(v8, type metadata accessor for SharedBeaconRecord);
      v67 = sub_1000136BC(v64, v66, &v129);

      *(v62 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v60, v61, "Automatic shared beacon %{private,mask.hash}s excluded from reconcile; Is accessory.", v62, 0x16u);
      sub_100007BAC(v63);
    }

    return 0;
  }

  return result;
}

void sub_1006C0110(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v181 - v3;
  v5 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  __chkstk_darwin(v5 - 8);
  v7 = &v181 - v6;
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v235 = *(found - 8);
  __chkstk_darwin(found);
  v204 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v11 = __chkstk_darwin(v10 - 8);
  v205 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v208 = &v181 - v13;
  v227 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v227);
  v215 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for Date();
  v207 = *(v232 - 8);
  v15 = __chkstk_darwin(v232);
  v224 = &v181 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v233 = &v181 - v17;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v210 = &v181 - v23;
  v24 = __chkstk_darwin(v22);
  v214 = &v181 - v25;
  v26 = __chkstk_darwin(v24);
  v236 = &v181 - v27;
  __chkstk_darwin(v26);
  v29 = (&v181 - v28);
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v203 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v202 = &v181 - v35;
  v36 = __chkstk_darwin(v34);
  v206 = &v181 - v37;
  __chkstk_darwin(v36);
  v39 = &v181 - v38;
  sub_100519FB0();
  sub_10112C648(v40, v29);

  v41 = *(v31 + 48);
  v213 = v31 + 48;
  v225 = v41;
  if (v41(v29, 1, v30) == 1)
  {
    v42 = &qword_1016980D0;
    v43 = &unk_10138F3B0;
    v44 = v29;
LABEL_93:
    sub_10000B3A8(v44, v42, v43);
    if (qword_101694960 != -1)
    {
LABEL_100:
      swift_once();
    }

    v177 = type metadata accessor for Logger();
    sub_1000076D4(v177, qword_10177B380);
    v178 = Logger.logObject.getter();
    v179 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      *v180 = 0;
      _os_log_impl(&_mh_execute_header, v178, v179, "Missing member record to compute group taskInfos!", v180, 2u);
    }

    sub_1009097B0(_swiftEmptyArrayStorage);
    return;
  }

  v45 = *(v31 + 32);
  v198 = v31 + 32;
  v197 = v45;
  v45(v39, v29, v30);
  v46 = v226;
  v201 = *(v226 + 280);
  sub_100025020(v39, &v237);
  if (!v238)
  {
    (*(v31 + 8))(v39, v30);
    v42 = &qword_101696920;
    v43 = &unk_10138B200;
    v44 = &v237;
    goto LABEL_93;
  }

  v200 = v31;
  sub_10000A748(&v237, &v239);
  v47 = sub_1006C1A0C(&v239, 0);
  v49 = v47;
  v223 = v47[2];
  if (!v223)
  {

LABEL_98:
    sub_100007BAC(&v239);
    (*(v200 + 8))(v39, v30);
    return;
  }

  v196 = v39;
  v192 = found;
  v193 = v7;
  v188 = v4;
  v50 = 0;
  v190 = (v46 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating);
  v222 = v47 + 4;
  v230 = (v200 + 56);
  v195 = v200 + 16;
  v187 = (v207 + 56);
  v184 = v207 + 16;
  v212 = (v200 + 8);
  v186 = (v207 + 48);
  v221 = SPBeaconTaskNamePlaySound;
  v229 = (v207 + 8);
  v217 = (v207 + 32);
  v191 = (v235 + 48);
  v51 = _swiftEmptyDictionarySingleton;
  v216 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager;
  v209 = SPBeaconTaskNameStopSound;
  v199 = SPBeaconTaskNameEnableLostMode;
  v194 = SPBeaconTaskNameDisableLostMode;
  v189 = SPBeaconTaskNameEnableNotifyWhenFound;
  v185 = SPBeaconTaskNameLocating;
  *&v48 = 141558531;
  v211 = v48;
  v220 = a1;
  v219 = v21;
  v234 = v30;
  v218 = v47;
  while (1)
  {
    if (v50 >= v49[2])
    {
      __break(1u);
      goto LABEL_100;
    }

    v231 = v51;
    v55 = v222[v50];
    Date.init()();
    v228 = *v230;
    v228(v236, 1, 1, v30);
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;
    v235 = v55;
    if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
    {

LABEL_18:
      __chkstk_darwin(v62);
      *(&v181 - 2) = v68;
      *(&v181 - 1) = v69;
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      OS_dispatch_queue.sync<A>(execute:)();
      v70 = v237;
      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_1000076D4(v71, qword_10177B380);
      v72 = a1;
      v73 = v215;
      sub_100721C9C(v72, v215, type metadata accessor for OwnedBeaconGroup);
      v74 = v70;
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *&v237 = swift_slowAlloc();
        *v77 = v211;
        *(v77 + 4) = 1752392040;
        *(v77 + 12) = 2081;
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v78 = dispatch thunk of CustomStringConvertible.description.getter();
        v80 = v79;
        sub_100721D04(v73, type metadata accessor for OwnedBeaconGroup);
        v81 = sub_1000136BC(v78, v80, &v237);

        *(v77 + 14) = v81;
        *(v77 + 22) = 2080;
        v82 = [v74 debugDescription];
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        v86 = sub_1000136BC(v83, v85, &v237);

        *(v77 + 24) = v86;
        _os_log_impl(&_mh_execute_header, v75, v76, "Play taskInfo for group %{private,mask.hash}s: %s", v77, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100721D04(v73, type metadata accessor for OwnedBeaconGroup);
      }

      v87 = [v74 state];
      v88 = [v74 lastUpdated];
      v89 = v224;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v90 = v232;
      v91 = v233;
      (*v229)(v233, v232);
      (*v217)(v91, v89, v90);
      v92 = [v74 error];
      v93 = [v74 commandIdentifier];
      v94 = v214;
      if (v93)
      {
        v95 = v93;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v96 = 0;
      }

      else
      {
        v96 = 1;
      }

      v228(v94, v96, 1, v234);
      v97 = v94;
      goto LABEL_27;
    }

    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v61)
    {
      goto LABEL_18;
    }

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;
    if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
    {

LABEL_35:
      __chkstk_darwin(v67);
      *(&v181 - 2) = v105;
      *(&v181 - 1) = v106;
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      OS_dispatch_queue.sync<A>(execute:)();
      v107 = v237;
      v87 = [v237 state];
      v108 = [v107 lastUpdated];
      v109 = v224;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v110 = v232;
      v111 = v233;
      (*v229)(v233, v232);
      (*v217)(v111, v109, v110);
      v92 = [v107 error];
      v112 = [v107 commandIdentifier];
      if (v112)
      {
        v113 = v210;
        v114 = v112;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v115 = 0;
        v107 = v114;
      }

      else
      {
        v115 = 1;
        v113 = v210;
      }

      v228(v113, v115, 1, v30);
      v97 = v113;
LABEL_27:
      sub_10002311C(v97, v236, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_28;
    }

    v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v104)
    {
      goto LABEL_35;
    }

    v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v118 = v117;
    if (v116 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v118 == v119)
    {

LABEL_43:
      v121 = v208;
      sub_100ABD87C(v208);
      v122 = type metadata accessor for LostModeRecord(0);
      v123 = (*(*(v122 - 8) + 48))(v121, 1, v122) == 1;
      goto LABEL_44;
    }

    v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v120)
    {
      goto LABEL_43;
    }

    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v125;
    if (v124 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v126 == v127)
    {

LABEL_49:
      v121 = v205;
      sub_100ABD87C(v205);
      v129 = type metadata accessor for LostModeRecord(0);
      v123 = (*(*(v129 - 8) + 48))(v121, 1, v129) != 1;
LABEL_44:
      sub_10000B3A8(v121, &unk_1016A99E0, &qword_1013A07B0);
      v92 = 0;
      v87 = 2 * v123;
      goto LABEL_28;
    }

    v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v128)
    {
      goto LABEL_49;
    }

    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;
    if (v130 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v132 == v133)
    {

LABEL_54:
      sub_100519FB0();
      v136 = v135;
      v137 = v135 + 56;
      v138 = 1 << *(v135 + 32);
      if (v138 < 64)
      {
        v139 = ~(-1 << v138);
      }

      else
      {
        v139 = -1;
      }

      v140 = v139 & *(v135 + 56);
      v141 = (v138 + 63) >> 6;

      v182 = v136;

      v142 = 0;
      v87 = 2;
      while (v140)
      {
LABEL_65:
        v144 = *(v182 + 48) + *(v200 + 72) * (__clz(__rbit64(v140)) | (v142 << 6));
        v145 = v234;
        v183 = *(v200 + 16);
        v183(v206, v144, v234);
        v146 = v193;
        sub_10003A604(v193);
        v147 = v192;
        if ((*v191)(v146, 1, v192) == 1)
        {
          sub_10000B3A8(v146, &qword_10169E328, &unk_10139D740);
        }

        else
        {
          v148 = v204;
          sub_10002AB74(v146, v204, type metadata accessor for NotifyWhenFoundRecord);
          v149 = v236;
          sub_10000B3A8(v236, &qword_1016980D0, &unk_10138F3B0);
          v183(v149, v148 + *(v147 + 20), v145);
          sub_100721D04(v148, type metadata accessor for NotifyWhenFoundRecord);
          v228(v149, 0, 1, v145);
          v87 = 0;
        }

        v140 &= v140 - 1;
        (*v212)(v206, v145);
      }

      while (1)
      {
        v143 = v142 + 1;
        if (__OFADD__(v142, 1))
        {
          break;
        }

        if (v143 >= v141)
        {

          v92 = 0;
          v98 = v233;
          goto LABEL_29;
        }

        v140 = *(v137 + 8 * v143);
        ++v142;
        if (v140)
        {
          v142 = v143;
          goto LABEL_65;
        }
      }

      __break(1u);
      goto LABEL_102;
    }

    v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v134)
    {
      goto LABEL_54;
    }

    v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v152 = v151;
    if (v150 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v152 == v153)
    {
      break;
    }

    v154 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v154)
    {
      goto LABEL_72;
    }

LABEL_89:
    v92 = 0;
    v87 = 2;
LABEL_28:
    v98 = v233;
LABEL_29:
    v99 = v235;
    swift_errorRetain();
    v100.super.isa = Date._bridgeToObjectiveC()().super.isa;
    if (v92)
    {
      v101 = _convertErrorToNSError(_:)();
    }

    else
    {
      v101 = 0;
    }

    v102 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v99 lastUpdated:v100.super.isa error:v101 state:v87];

    v103 = v219;
    sub_1000D2A70(v236, v219, &qword_1016980D0, &unk_10138F3B0);
    v30 = v234;
    if (v225(v103, 1, v234) == 1)
    {
      v52.super.isa = 0;
    }

    else
    {
      v52.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v212)(v103, v30);
    }

    v49 = v218;
    ++v50;
    [v102 setCommandIdentifier:v52.super.isa];

    v53 = v231;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v237 = v53;
    sub_100FFF5A8(v102, v99, isUniquelyReferenced_nonNull_native);

    v51 = v237;
    (*v229)(v98, v232);
    sub_10000B3A8(v236, &qword_1016980D0, &unk_10138F3B0);
    a1 = v220;
    if (v50 == v223)
    {

      v39 = v196;
      goto LABEL_98;
    }
  }

LABEL_72:
  sub_100519FB0();
  v156 = v155;
  v157 = 0;
  v158 = v155 + 56;
  v159 = 1 << *(v155 + 32);
  if (v159 < 64)
  {
    v160 = ~(-1 << v159);
  }

  else
  {
    v160 = -1;
  }

  v161 = v160 & *(v155 + 56);
  v162 = (v159 + 63) >> 6;
  while (1)
  {
    v163 = v203;
    if (!v161)
    {
      break;
    }

    v164 = v157;
LABEL_81:
    v165 = v202;
    (*(v200 + 16))(v202, *(v156 + 48) + *(v200 + 72) * (__clz(__rbit64(v161)) | (v164 << 6)), v30);
    v197(v163, v165, v30);
    v166 = v190;
    os_unfair_lock_lock(v190);
    v167 = v163;
    v168 = *&v166[2]._os_unfair_lock_opaque;
    if (*(v168 + 16))
    {
      v169 = sub_1000210EC(v167);
      if (v170)
      {
        (*(v207 + 16))(v188, *(v168 + 56) + *(v207 + 72) * v169, v232);
        v171 = 0;
      }

      else
      {
        v171 = 1;
      }
    }

    else
    {
      v171 = 1;
    }

    v172 = v188;
    v173 = v232;
    (*v187)(v188, v171, 1, v232);
    os_unfair_lock_unlock(v190);
    (*v212)(v203, v234);
    if ((*v186)(v172, 1, v173) != 1)
    {
      v174 = v232;
      v175 = v233;
      (*v229)(v233, v232);

      v176 = v174;
      v98 = v175;
      (*v217)(v175, v172, v176);
      v92 = 0;
      v87 = 0;
      goto LABEL_29;
    }

    v161 &= v161 - 1;
    sub_10000B3A8(v172, &unk_101696900, &unk_10138B1E0);
    v157 = v164;
    v30 = v234;
  }

  while (1)
  {
    v164 = v157 + 1;
    if (__OFADD__(v157, 1))
    {
      break;
    }

    if (v164 >= v162)
    {

      goto LABEL_89;
    }

    v161 = *(v158 + 8 * v164);
    ++v157;
    if (v161)
    {
      goto LABEL_81;
    }
  }

LABEL_102:
  __break(1u);
}
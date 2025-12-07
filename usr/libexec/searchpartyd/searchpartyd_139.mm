uint64_t sub_100F6DEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v8[244] = a3;

  if (v3)
  {

    v8[248] = v3;
    v9 = v8[94];
    v10 = sub_100F6EB80;
LABEL_3:

    return _swift_task_switch(v10, v9, 0);
  }

  if (!a3)
  {
    v12 = v8[94];

    v10 = sub_100F6F1FC;
    v9 = v12;
    goto LABEL_3;
  }

  v11 = swift_task_alloc();
  v8[245] = v11;
  *v11 = v8;
  v11[1] = sub_100F6E11C;

  return sub_100D4E560(a1, a2, a3);
}

uint64_t sub_100F6E11C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[246] = a2;
  v4[247] = v2;

  v5 = v4[242];

  if (v2)
  {

    v6 = sub_100F6E368;
  }

  else
  {
    v6 = sub_100F6E2A8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F6E2A8()
{
  if (*(v0 + 1968))
  {
    v1 = *(v0 + 752);

    v2 = sub_100F6E3D8;
    v3 = v1;
  }

  else
  {
    v4 = *(v0 + 752);

    v2 = sub_100F6F1FC;
    v3 = v4;
  }

  return _swift_task_switch(v2, v3, 0);
}

uint64_t sub_100F6E368()
{

  v0[248] = v0[247];
  v1 = v0[94];

  return _swift_task_switch(sub_100F6EB80, v1, 0);
}

uint64_t sub_100F6E3D8()
{
  v26 = v0;
  if ((*(v0 + 1712))(*(v0 + 1328) + *(v0 + 2452), 1, *(v0 + 872)) == 1)
  {
    v1 = *(v0 + 1136);

    sub_100D487D8();
    swift_allocError();
    *v2 = 6;
    swift_willThrow();
    sub_100F806B4(v1, type metadata accessor for MemberPeerTrust);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A560);
    swift_errorRetain();
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 2490);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 136315394;
      v25[0] = v8;
      if (v6)
      {
        v9 = 0;
        v10 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 664) = *(v0 + 712);
        v9 = dispatch thunk of CustomStringConvertible.description.getter();
        v10 = v16;
      }

      v17 = *(v0 + 1032);
      v18 = sub_1000136BC(v9, v10, v25);

      *(v7 + 4) = v18;
      *(v7 + 12) = 2080;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = sub_1000136BC(v19, v20, v25);

      *(v7 + 14) = v21;

      _os_log_impl(&_mh_execute_header, v4, v5, "%s Failure on handleCircleTrust, preparing initial data: %s", v7, 0x16u);
      swift_arrayDestroy();

      sub_10000B3A8(v17, &qword_101698C10, &unk_10138C1E0);
    }

    else
    {
      v15 = *(v0 + 1032);

      sub_10000B3A8(v15, &qword_101698C10, &unk_10138C1E0);
    }

    v22 = *(v0 + 1160);

    sub_100F806B4(v22, type metadata accessor for MemberPeerTrust);
    v23 = *(v0 + 1408);
    sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
    sub_10000B3A8(v23, &qword_10169EF90, &unk_10139FCF0);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v11 = *(v0 + 1136);
    v12 = *(*(v0 + 1104) + 28);
    v13 = swift_task_alloc();
    *(v0 + 2056) = v13;
    *v13 = v0;
    v13[1] = sub_100F70AE0;

    return sub_100E8BEF8(v11 + v12);
  }
}

uint64_t sub_100F6EB80(__n128 a1)
{
  v22 = v1;
  sub_100F806B4(*(v1 + 1136), type metadata accessor for MemberPeerTrust);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v1 + 2490);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315394;
    v21[0] = v7;
    if (v5)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      *(v1 + 664) = *(v1 + 712);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v11;
    }

    v12 = *(v1 + 1032);
    v13 = sub_1000136BC(v8, v9, v21);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, v21);

    *(v6 + 14) = v16;

    _os_log_impl(&_mh_execute_header, v3, v4, "%s Failure on handleCircleTrust, preparing initial data: %s", v6, 0x16u);
    swift_arrayDestroy();

    sub_10000B3A8(v12, &qword_101698C10, &unk_10138C1E0);
  }

  else
  {
    v10 = *(v1 + 1032);

    sub_10000B3A8(v10, &qword_101698C10, &unk_10138C1E0);
  }

  v17 = *(v1 + 1160);

  sub_100F806B4(v17, type metadata accessor for MemberPeerTrust);
  v18 = *(v1 + 1408);
  sub_10000B3A8(*(v1 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v18, &qword_10169EF90, &unk_10139FCF0);

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_100F6F1FC()
{
  v23 = v0;
  v1 = *(v0 + 1136);

  sub_100D487D8();
  swift_allocError();
  *v2 = 6;
  swift_willThrow();
  sub_100F806B4(v1, type metadata accessor for MemberPeerTrust);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  swift_errorRetain();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 2490);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315394;
    v22[0] = v8;
    if (v6)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 664) = *(v0 + 712);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v12;
    }

    v13 = *(v0 + 1032);
    v14 = sub_1000136BC(v9, v10, v22);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = sub_1000136BC(v15, v16, v22);

    *(v7 + 14) = v17;

    _os_log_impl(&_mh_execute_header, v4, v5, "%s Failure on handleCircleTrust, preparing initial data: %s", v7, 0x16u);
    swift_arrayDestroy();

    sub_10000B3A8(v13, &qword_101698C10, &unk_10138C1E0);
  }

  else
  {
    v11 = *(v0 + 1032);

    sub_10000B3A8(v11, &qword_101698C10, &unk_10138C1E0);
  }

  v18 = *(v0 + 1160);

  sub_100F806B4(v18, type metadata accessor for MemberPeerTrust);
  v19 = *(v0 + 1408);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v19, &qword_10169EF90, &unk_10139FCF0);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100F6F8AC()
{

  v1 = swift_task_alloc();
  v0[249] = v1;
  *v1 = v0;
  v1[1] = sub_100F6F984;
  v2 = v0[212];
  v3 = v0[181];

  return unsafeBlocking<A>(context:_:)(v0 + 59, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v3, v2);
}

uint64_t sub_100F6F984()
{
  v1 = *(*v0 + 1448);

  return _swift_task_switch(sub_100F6FA9C, v1, 0);
}

uint64_t sub_100F6FA9C()
{
  v1 = v0[94];
  v0[250] = v0[59];
  return _swift_task_switch(sub_100F6FAC0, v1, 0);
}

uint64_t sub_100F6FAC0()
{
  v0[85] = v0[250];
  v1 = swift_task_alloc();
  v0[251] = v1;
  v2 = sub_1000041A4(&qword_1016BE938, &unk_101698C40, &qword_10138C1C0, &protocol conformance descriptor for [A]);
  *v1 = v0;
  v1[1] = sub_100F6FBB0;
  v3 = v0[212];
  v4 = v0[94];

  return Sequence.asyncFilter(_:)(&unk_1013F4F60, v4, v3, v2);
}

uint64_t sub_100F6FBB0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    v6 = *(v4 + 752);

    *(v4 + 2016) = a1;

    return _swift_task_switch(sub_100F6FD28, v6, 0);
  }
}

uint64_t sub_100F6FD28()
{
  v0[253] = *(v0[252] + 16);

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0[254] = qword_10177B348;

  return _swift_task_switch(sub_100F6FDD4, 0, 0);
}

uint64_t sub_100F6FDD4()
{

  v1 = swift_task_alloc();
  *(v0 + 2040) = v1;
  *v1 = v0;
  v1[1] = sub_100F6FE98;
  v2 = *(v0 + 2032);

  return unsafeBlocking<A>(_:)(v0 + 408, sub_1000D2BE0, v2, &type metadata for Configuration);
}

uint64_t sub_100F6FE98()
{

  return _swift_task_switch(sub_100F6FFB0, 0, 0);
}

uint64_t sub_100F6FFB0()
{
  v1 = v0[94];
  v0[256] = v0[51];
  return _swift_task_switch(sub_100F6FFD4, v1, 0);
}

uint64_t sub_100F6FFD4()
{
  v55 = v0;
  v1 = *(v0 + 2024);
  v2 = sub_101074AC8(*(v0 + 2048));

  if (v1 >= v2)
  {
    v7 = *(v0 + 1328);
    v8 = *(v0 + 1280);

    sub_1000D2A70(v7, v8, &qword_10169EF88, &unk_1013E4B70);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v52 = v10;
      v11 = *(v0 + 2490);
      v12 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v12 = 136316163;
      v53 = v9;
      v54[0] = v51;
      if (v11)
      {
        v13 = 0;
        v14 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 432) = *(v0 + 712);
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        v14 = v16;
      }

      v17 = *(v0 + 2024);
      v49 = *(v0 + 1672);
      v50 = *(v0 + 1432);
      v18 = *(v0 + 1312);
      v19 = *(v0 + 1280);
      v20 = *(v0 + 1232);
      v48 = *(v0 + 952);
      v21 = *(v0 + 872);
      v22 = sub_1000136BC(v13, v14, v54);

      *(v12 + 4) = v22;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v17;
      *(v12 + 22) = 2048;
      *(v12 + 24) = v2;
      *(v12 + 32) = 2160;
      *(v12 + 34) = 1752392040;
      *(v12 + 42) = 2081;
      v23 = v19;
      sub_1000D2A70(v19, v18, &qword_10169EF88, &unk_1013E4B70);
      v24 = *(v20 + 48);

      v49(v48, v18, v21);
      sub_10000B3A8(v18 + v24, &qword_1016980D0, &unk_10138F3B0);
      sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v50(v48, v21);
      v28 = sub_1000136BC(v25, v27, v54);

      *(v12 + 44) = v28;

      sub_10000B3A8(v23, &qword_10169EF88, &unk_1013E4B70);
      _os_log_impl(&_mh_execute_header, v53, v52, "%s Cannot store pending circle offer,\npendingExplicitOffers: %ld >= maxPendingSharedItemOffers: %lu.\nBeaconIdentifier: %{private,mask.hash}s.", v12, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v15 = *(v0 + 1280);

      sub_10000B3A8(v15, &qword_10169EF88, &unk_1013E4B70);
    }

    v29 = *(v0 + 1136);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 424) = 11;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F80970(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_100F806B4(v29, type metadata accessor for MemberPeerTrust);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177A560);
    swift_errorRetain();
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 2490);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 136315394;
      v54[0] = v35;
      if (v33)
      {
        v36 = 0;
        v37 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 664) = *(v0 + 712);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v39;
      }

      v40 = *(v0 + 1032);
      v41 = sub_1000136BC(v36, v37, v54);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2080;
      swift_getErrorValue();
      v42 = Error.localizedDescription.getter();
      v44 = sub_1000136BC(v42, v43, v54);

      *(v34 + 14) = v44;

      _os_log_impl(&_mh_execute_header, v31, v32, "%s Failure on handleCircleTrust, preparing initial data: %s", v34, 0x16u);
      swift_arrayDestroy();

      sub_10000B3A8(v40, &qword_101698C10, &unk_10138C1E0);
    }

    else
    {
      v38 = *(v0 + 1032);

      sub_10000B3A8(v38, &qword_101698C10, &unk_10138C1E0);
    }

    v45 = *(v0 + 1160);

    sub_100F806B4(v45, type metadata accessor for MemberPeerTrust);
    v46 = *(v0 + 1408);
    sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
    sub_10000B3A8(v46, &qword_10169EF90, &unk_10139FCF0);

    v47 = *(v0 + 8);

    return v47();
  }

  else
  {
    v3 = *(v0 + 1136);
    v4 = *(*(v0 + 1104) + 28);
    v5 = swift_task_alloc();
    *(v0 + 2056) = v5;
    *v5 = v0;
    v5[1] = sub_100F70AE0;

    return sub_100E8BEF8(v3 + v4);
  }
}

uint64_t sub_100F70AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[258] = a1;
  v5[259] = a2;
  v5[260] = a3;
  v5[261] = v3;

  if (v3)
  {
    v6 = v5[94];

    v7 = sub_100F71EC8;
    v8 = v6;
  }

  else
  {
    v8 = v5[94];
    v7 = sub_100F70C54;
  }

  return _swift_task_switch(v7, v8, 0);
}

void sub_100F70C54()
{
  v108 = v0;
  if (*(v0 + 2080))
  {
    v100 = *(v0 + 2088);
    v84 = *(v0 + 2491);
    v77 = *(v0 + 1672);
    v80 = *(v0 + 1568);
    v74 = *(v0 + 1416);
    v1 = *(v0 + 1384);
    v2 = *(v0 + 1376);
    v88 = *(v0 + 1368);
    v90 = *(v0 + 1360);
    v3 = *(v0 + 1336);
    v102 = *(v0 + 1328);
    v105 = *(v0 + 1408);
    v4 = *(v0 + 1272);
    v86 = *(v0 + 1264);
    v92 = *(v0 + 1256);
    v93 = *(v0 + 1248);
    v5 = *(v0 + 1232);
    v82 = *(v0 + 1224);
    v6 = *(v0 + 1200);
    v70 = *(v0 + 1160);
    v72 = *(v0 + 1168);
    v67 = *(v0 + 1104);
    v95 = *(v0 + 1040);
    v97 = *(v0 + 1096);
    v69 = *(v0 + 920);
    v7 = *(v0 + 872);

    sub_1000D2A70(v105, v1, &qword_10169EF90, &unk_10139FCF0);

    sub_100016590(*(v1 + *(v3 + 112)), *(v1 + *(v3 + 112) + 8));
    sub_1000D2A70(v102, v4, &qword_10169EF88, &unk_1013E4B70);

    sub_1000D2A70(v105, v2, &qword_10169EF90, &unk_10139FCF0);

    sub_100016590(*(v2 + *(v3 + 112)), *(v2 + *(v3 + 112) + 8));
    v74(v69, v70 + *(v67 + 20), v7);
    v75 = v5[12];
    *v6 = xmmword_10138C660;
    v77(&v6[v72[5]], v1, v7);
    v77(&v6[v72[6]], v4, v7);
    v77(&v6[v72[7]], v2, v7);
    v77(&v6[v72[8]], v69, v7);
    *&v6[v72[9]] = v80;
    v6[v72[10]] = v84;
    sub_10000B3A8(v4 + v75, &qword_1016980D0, &unk_10138F3B0);
    sub_100F80620(v6, v82, type metadata accessor for MemberSharingCircle);
    sub_1000D2A70(v102, v86, &qword_10169EF88, &unk_1013E4B70);

    sub_1000D2A70(v105, v88, &qword_10169EF90, &unk_10139FCF0);

    sub_100016590(*(v88 + *(v3 + 112)), *(v88 + *(v3 + 112) + 8));
    sub_1000D2A70(v105, v90, &qword_10169EF90, &unk_10139FCF0);

    v8 = (v90 + *(v3 + 80));
    v9 = *v8;
    v10 = v8[1];

    sub_100016590(*(v90 + *(v3 + 112)), *(v90 + *(v3 + 112) + 8));
    sub_1000D2A70(v102, v92, &qword_10169EF88, &unk_1013E4B70);

    v11 = (v92 + v5[24]);
    v12 = *v11;
    v106 = v11[1];

    sub_1000D2A70(v102, v93, &qword_10169EF88, &unk_1013E4B70);

    v13 = (v93 + v5[20]);
    v14 = *v13;
    v15 = v13[1];

    v16 = *(v95 + 72);
    v17 = objc_autoreleasePoolPush();
    sub_100E7AB5C(v82, v97 + v16);
    if (v100)
    {

      objc_autoreleasePoolPop(v17);
    }

    else
    {
      v81 = *(v0 + 2072);
      v83 = *(v0 + 2080);
      v76 = *(v0 + 2064);
      v63 = *(v0 + 1672);
      v91 = *(v0 + 1432);
      v64 = *(v0 + 1368);
      v98 = *(v0 + 1360);
      v85 = v14;
      v26 = *(v0 + 1328);
      v78 = v12;
      v27 = *(v0 + 1312);
      v103 = *(v0 + 1264);
      v94 = *(v0 + 1256);
      v89 = *(v0 + 1248);
      v28 = *(v0 + 1232);
      v29 = *(v0 + 1136);
      v30 = *(v0 + 1096);
      v73 = v15;
      v31 = *(v0 + 1040);
      v65 = v9;
      v66 = v10;
      v32 = *(v0 + 880);
      v33 = *(v0 + 872);
      v96 = *(v0 + 2444);
      v71 = *(v0 + 2440);
      v87 = *(v28 + 48);
      v79 = *(v0 + 2488);
      objc_autoreleasePoolPop(v17);
      (*(v32 + 56))(&v30[v31[19]], 1, 1, v33);
      sub_1000D2A70(v26, v27, &qword_10169EF88, &unk_1013E4B70);
      v68 = *(v28 + 48);

      v34 = v31[14];
      v61 = v31[15];
      sub_100F806B4(v29, type metadata accessor for MemberPeerTrust);
      v35 = &v30[v31[20]];
      v36 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
      v62 = *(*(v36 - 8) + 56);
      v62(v35, 1, 1, v36);
      *v30 = xmmword_10138C660;
      v63(&v30[v31[5]], v103, v33);
      v63(&v30[v31[6]], v64, v33);
      v37 = &v30[v31[7]];
      *v37 = v76;
      *(v37 + 1) = v81;
      *(v37 + 2) = v83;
      v38 = &v30[v31[8]];
      *v38 = v65;
      *(v38 + 1) = v66;
      v39 = &v30[v31[9]];
      *v39 = v78;
      *(v39 + 1) = v106;
      v40 = &v30[v31[10]];
      *v40 = v85;
      *(v40 + 1) = v73;
      *&v30[v31[11]] = v71;
      *&v30[v31[12]] = v96;
      v30[v31[13]] = 1;
      v30[v34] = 3;
      *&v30[v61] = -1;
      v30[v31[16]] = v79;
      *&v30[v31[17]] = 1;
      sub_10000B3A8(v35, &unk_1016AF890, &qword_1013926D0);
      *v35 = 1;
      sub_1000D2AD8(v27 + v68, &v35[*(v36 + 20)], &qword_1016980D0, &unk_10138F3B0);
      v62(v35, 0, 1, v36);
      v91(v27, v33);
      sub_10000B3A8(v89 + v87, &qword_1016980D0, &unk_10138F3B0);
      v91(v89, v33);
      sub_10000B3A8(v94 + v87, &qword_1016980D0, &unk_10138F3B0);
      v91(v94, v33);
      v91(v98, v33);
      sub_10000B3A8(v103 + v87, &qword_1016980D0, &unk_10138F3B0);
      v52 = sub_100890F1C(v79, (v71 & v96) == -1);
      v53 = (*(v0 + 1408) + *(v0 + 2448));
      sub_1000035D0((*(v0 + 752) + 248), *(*(v0 + 752) + 272));
      v54 = *v53;
      v55 = v53[1];
      v56 = swift_task_alloc();
      *(v0 + 2096) = v56;
      *v56 = v0;
      v56[1] = sub_100F72544;
      v57 = *(v0 + 1224);
      v58 = *(v0 + 1160);

      sub_100C77218(v54, v55, v57, v58, v52);
    }
  }

  else
  {
    v18 = *(v0 + 1136);
    v19 = *(v0 + 1120);

    sub_100F80550(v18, v19, type metadata accessor for MemberPeerTrust);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 2490);
      v23 = swift_slowAlloc();
      v107[0] = swift_slowAlloc();
      *v23 = 136315651;
      if (v22)
      {
        v24 = 0;
        v25 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 440) = *(v0 + 712);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v46;
      }

      v99 = *(v0 + 1136);
      v47 = *(v0 + 1120);
      v101 = *(v0 + 1032);
      v104 = *(v0 + 1160);
      v48 = sub_1000136BC(v24, v25, v107);

      *(v23 + 4) = v48;
      *(v23 + 12) = 2160;
      *(v23 + 14) = 1752392040;
      *(v23 + 22) = 2081;
      v49 = sub_100988F40();
      v51 = sub_1000136BC(v49, v50, v107);

      *(v23 + 24) = v51;

      sub_100F806B4(v47, type metadata accessor for MemberPeerTrust);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s Failure on handleCircleTrust, can't get owner handle for : %{private,mask.hash}s", v23, 0x20u);
      swift_arrayDestroy();

      sub_100F806B4(v99, type metadata accessor for MemberPeerTrust);
      sub_10000B3A8(v101, &qword_101698C10, &unk_10138C1E0);
      v45 = v104;
    }

    else
    {
      v41 = *(v0 + 1160);
      v42 = *(v0 + 1136);
      v43 = *(v0 + 1120);
      v44 = *(v0 + 1032);

      sub_100F806B4(v43, type metadata accessor for MemberPeerTrust);

      sub_100F806B4(v42, type metadata accessor for MemberPeerTrust);
      sub_10000B3A8(v44, &qword_101698C10, &unk_10138C1E0);
      v45 = v41;
    }

    sub_100F806B4(v45, type metadata accessor for MemberPeerTrust);
    v59 = *(v0 + 1408);
    sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
    sub_10000B3A8(v59, &qword_10169EF90, &unk_10139FCF0);

    v60 = *(v0 + 8);

    v60();
  }
}

uint64_t sub_100F71EC8(__n128 a1)
{
  v22 = v1;
  sub_100F806B4(*(v1 + 1136), type metadata accessor for MemberPeerTrust);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v1 + 2490);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315394;
    v21[0] = v7;
    if (v5)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      *(v1 + 664) = *(v1 + 712);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v11;
    }

    v12 = *(v1 + 1032);
    v13 = sub_1000136BC(v8, v9, v21);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, v21);

    *(v6 + 14) = v16;

    _os_log_impl(&_mh_execute_header, v3, v4, "%s Failure on handleCircleTrust, preparing initial data: %s", v6, 0x16u);
    swift_arrayDestroy();

    sub_10000B3A8(v12, &qword_101698C10, &unk_10138C1E0);
  }

  else
  {
    v10 = *(v1 + 1032);

    sub_10000B3A8(v10, &qword_101698C10, &unk_10138C1E0);
  }

  v17 = *(v1 + 1160);

  sub_100F806B4(v17, type metadata accessor for MemberPeerTrust);
  v18 = *(v1 + 1408);
  sub_10000B3A8(*(v1 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v18, &qword_10169EF90, &unk_10139FCF0);

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_100F72544()
{
  v2 = *v1;
  *(*v1 + 2104) = v0;

  if (v0)
  {
    v3 = *(v2 + 752);

    v4 = sub_100F731C4;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1448);
    v4 = sub_100F72678;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100F72678()
{
  v1 = *(v0 + 1672);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 952);
  v4 = *(v0 + 872);
  v5 = (*(v0 + 2456) + 24) & ~*(v0 + 2456);
  (*(v0 + 1416))(v3, *(v0 + 1328), v4);
  v6 = swift_allocObject();
  *(v0 + 2112) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 2120) = v7;
  *v7 = v0;
  v7[1] = sub_100F727D4;
  v8 = *(v0 + 816);
  v9 = *(v0 + 800);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100F80278, v6, v9);
}

uint64_t sub_100F727D4()
{
  v1 = *(*v0 + 752);

  return _swift_task_switch(sub_100F72900, v1, 0);
}

uint64_t sub_100F72900()
{
  v43 = v0;
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 808);
  sub_1000D2A70(*(v0 + 816), v3, &unk_101698C30, &unk_101392630);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 808), &unk_101698C30, &unk_101392630);
    v4 = 6;
  }

  else
  {
    v5 = *(v0 + 808);
    v4 = *(v5 + *(*(v0 + 1040) + 64));
    sub_100F806B4(v5, type metadata accessor for SharedBeaconRecord);
  }

  *(v0 + 2492) = v4;
  v6 = *(v0 + 1560);
  v7 = *(v0 + 1432);
  v8 = *(v0 + 1408);
  v9 = *(v0 + 1352);
  v10 = *(v0 + 1336);
  v11 = *(v0 + 1224);
  v37 = *(v0 + 1096);
  v38 = *(v0 + 1904);
  v12 = *(v0 + 872);
  v13 = *(v0 + 816);
  v39 = *(v0 + 792);
  v40 = *(v0 + 2104);
  sub_1000D2A70(v8, v9, &qword_10169EF90, &unk_10139FCF0);
  *(v0 + 2493) = *(v9 + *(v10 + 48));

  sub_100016590(*(v9 + *(v10 + 112)), *(v9 + *(v10 + 112) + 8));
  v7(v9, v12);
  v14 = swift_task_alloc();
  v14[2] = v11;
  v14[3] = v38;
  v14[4] = v13;
  v14[5] = v37;
  v14[6] = v8;
  v14[7] = v6;

  sub_100EC0C48(sub_100F802A4, v39);
  if (v40)
  {
    swift_bridgeObjectRelease_n();

    swift_errorRetain();
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 2490);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v42[0] = v20;
      *v18 = 136315394;
      if (v17)
      {
        v21 = 0;
        v22 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 480) = *(v0 + 712);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v29;
      }

      v41 = *(v0 + 1160);
      v30 = *(v0 + 1032);
      v31 = sub_1000136BC(v21, v22, v42);

      *(v18 + 4) = v31;
      *(v18 + 12) = 2112;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v32;
      *v19 = v32;

      _os_log_impl(&_mh_execute_header, v15, v16, "%s Failure on handleCircleTrust, updating iCloud: %@", v18, 0x16u);
      sub_10000B3A8(v19, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v20);

      sub_10000B3A8(v30, &qword_101698C10, &unk_10138C1E0);
      v28 = v41;
    }

    else
    {
      v26 = *(v0 + 1160);
      v27 = *(v0 + 1032);

      sub_10000B3A8(v27, &qword_101698C10, &unk_10138C1E0);
      v28 = v26;
    }

    sub_100F806B4(v28, type metadata accessor for MemberPeerTrust);
    v33 = *(v0 + 1224);
    v34 = *(v0 + 1096);
    sub_10000B3A8(*(v0 + 816), &unk_101698C30, &unk_101392630);
    sub_100F806B4(v34, type metadata accessor for SharedBeaconRecord);
    sub_100F806B4(v33, type metadata accessor for MemberSharingCircle);
    v35 = *(v0 + 1408);
    sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
    sub_10000B3A8(v35, &qword_10169EF90, &unk_10139FCF0);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {

    v23 = swift_task_alloc();
    *(v0 + 2128) = v23;
    *v23 = v0;
    v23[1] = sub_100F7381C;
    v24 = *(v0 + 792);

    return sub_100E6CFC4(v24);
  }
}

uint64_t sub_100F731C4()
{
  v22 = v0;
  swift_errorRetain();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 2490);
    v4 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v4 = 136315394;
    if (v3)
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 456) = *(v0 + 712);
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v6 = v10;
    }

    v11 = *(v0 + 1160);
    v12 = *(v0 + 1032);
    v13 = sub_1000136BC(v5, v6, v21);

    *(v4 + 4) = v13;
    *(v4 + 12) = 2080;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, v21);

    *(v4 + 14) = v16;

    _os_log_impl(&_mh_execute_header, v1, v2, "%s Failure on handleCircleTrust, saving initial key packages: %s", v4, 0x16u);
    swift_arrayDestroy();

    sub_10000B3A8(v12, &qword_101698C10, &unk_10138C1E0);
    v9 = v11;
  }

  else
  {
    v7 = *(v0 + 1160);
    v8 = *(v0 + 1032);

    sub_10000B3A8(v8, &qword_101698C10, &unk_10138C1E0);
    v9 = v7;
  }

  sub_100F806B4(v9, type metadata accessor for MemberPeerTrust);
  v17 = *(v0 + 1224);
  sub_100F806B4(*(v0 + 1096), type metadata accessor for SharedBeaconRecord);
  sub_100F806B4(v17, type metadata accessor for MemberSharingCircle);
  v18 = *(v0 + 1408);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v18, &qword_10169EF90, &unk_10139FCF0);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100F7381C()
{
  v2 = *v1;
  *(*v1 + 2136) = v0;

  if (v0)
  {
    v3 = *(v2 + 752);

    v4 = sub_100F79CE0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 752);
    v4 = sub_100F73944;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100F73944(uint64_t a1)
{
  v28 = v1;
  v2 = *(v1 + 1328);
  v25 = *(v1 + 1224);
  v3 = *(v1 + 1192);
  v4 = *(v1 + 784);
  v5 = *(v1 + 776);
  v6 = *(v1 + 768);
  v7 = *(*(v1 + 752) + 392);
  static DispatchWorkItemFlags.barrier.getter();
  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = v2;
  v8[4] = sub_1000BB4A4;
  v8[5] = 0;
  OS_dispatch_queue.sync<A>(flags:execute:)();

  (*(v5 + 8))(v4, v6);
  sub_100F80550(v25, v3, type metadata accessor for MemberSharingCircle);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v1 + 2490);
    v12 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v12 = 136315651;
    if (v11)
    {
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    else
    {
      *(v1 + 616) = *(v1 + 712);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v17;
    }

    v18 = *(v1 + 1192);
    v26 = *(v1 + 792);
    v19 = sub_1000136BC(v13, v14, v27);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = sub_1000136BC(v20, v21, v27);

    *(v12 + 24) = v22;
    sub_100F806B4(v18, type metadata accessor for MemberSharingCircle);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s Data update on handle circle trust. Create %{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();

    v16 = v26;
  }

  else
  {
    v15 = *(v1 + 792);
    sub_100F806B4(*(v1 + 1192), type metadata accessor for MemberSharingCircle);

    v16 = v15;
  }

  sub_10000B3A8(v16, &qword_1016975C8, &qword_10138C1F0);
  v23 = swift_task_alloc();
  *(v1 + 2144) = v23;
  *v23 = v1;
  v23[1] = sub_100F73CD0;

  return daemon.getter();
}

uint64_t sub_100F73CD0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[269] = a1;

  v3 = swift_task_alloc();
  v2[270] = v3;
  v4 = type metadata accessor for Daemon();
  v2[271] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100F80970(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[272] = v6;
  v7 = sub_100F80970(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_100F73EB0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F73EB0(uint64_t a1)
{
  v4 = *v2;
  v4[273] = a1;
  v4[274] = v1;

  if (v1)
  {
    v4[279] = v1;
    v5 = v4[94];
    v6 = sub_100F743E4;
  }

  else
  {
    v6 = sub_100F73FE8;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F73FE8()
{
  v1 = v0[274];
  sub_10001B108();
  v0[275] = v2;
  v0[276] = v1;
  sub_100F80970(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v5 = sub_100F74374;
  }

  else
  {
    v5 = sub_100F740C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100F740C4()
{
  v1 = *(v0 + 752);

  return _swift_task_switch(sub_100F7413C, v1, 0);
}

uint64_t sub_100F7413C()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 2490);
  *(v0 + 232) = *(v0 + 1040);
  *(v0 + 240) = sub_100F80970(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
  v3 = sub_1000280DC((v0 + 208));
  sub_100F80550(v1, v3, type metadata accessor for SharedBeaconRecord);
  v4 = swift_task_alloc();
  *(v0 + 2216) = v4;
  *v4 = v0;
  v4[1] = sub_100F7424C;
  v5 = *(v0 + 712);

  return sub_1006962EC(v0 + 208, v5, v2 & 1);
}

uint64_t sub_100F7424C()
{
  v2 = *v1;
  *(*v1 + 2224) = v0;

  if (v0)
  {
    v3 = *(v2 + 752);
    v4 = sub_100F7A378;
  }

  else
  {
    v5 = *(v2 + 752);
    sub_100007BAC((v2 + 208));
    v4 = sub_100F747F8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F74374()
{

  v0[279] = v0[276];
  v1 = v0[94];

  return _swift_task_switch(sub_100F743E4, v1, 0);
}

uint64_t sub_100F743E4()
{
  v29 = v0;

  sub_100F80550(*(v0 + 1096), *(v0 + 1056), type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 2490);
    v4 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v4 = 136315907;
    if (v3)
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 592) = *(v0 + 712);
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v6 = v10;
    }

    v11 = *(v0 + 1056);
    v12 = sub_1000136BC(v5, v6, &v28);

    *(v4 + 4) = v12;
    *(v4 + 12) = 2160;
    *(v4 + 14) = 1752392040;
    *(v4 + 22) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_1000136BC(v13, v14, &v28);

    *(v4 + 24) = v15;
    sub_100F806B4(v11, type metadata accessor for SharedBeaconRecord);
    *(v4 + 32) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 34) = v16;
    *v27 = v16;

    _os_log_impl(&_mh_execute_header, v1, v2, "%s Failed to fetch product info for beacon %{private,mask.hash}s error = %{public}@!", v4, 0x2Au);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v7 = *(v0 + 1056);

    sub_100F806B4(v7, type metadata accessor for SharedBeaconRecord);
  }

  v17 = *(v0 + 1560);
  v18 = *(v17 + 2);
  *(v0 + 2240) = v18;
  if (!v18)
  {
    *(v0 + 2272) = 0;
    v26 = *(v0 + 1448);

    v17 = sub_100F754C4;
    v8 = v26;
    v9 = 0;

    return _swift_task_switch(v17, v8, v9);
  }

  v19 = *(v0 + 1112);
  *(v0 + 2248) = 0;
  if (!*(v17 + 2))
  {
    __break(1u);
    return _swift_task_switch(v17, v8, v9);
  }

  (*(v0 + 1416))(*(v0 + 912), v17 + *(*(v0 + 1104) + 20) + ((*(v19 + 80) + 32) & ~*(v19 + 80)), *(v0 + 872));
  v20 = swift_task_alloc();
  *(v0 + 2256) = v20;
  *v20 = v0;
  v20[1] = sub_100F74B80;
  v21 = *(v0 + 912);
  v22 = *(v0 + 696);
  v23 = *(v0 + 688);
  v24 = *(v0 + 2489);

  return sub_100E853C8(v21, v24, v23, v22);
}

uint64_t sub_100F747F8()
{
  v28 = v0;
  sub_100F80550(*(v0 + 1096), *(v0 + 1064), type metadata accessor for SharedBeaconRecord);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 2490);
    v4 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v4 = 136315651;
    if (v3)
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 608) = *(v0 + 712);
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v6 = v10;
    }

    v11 = *(v0 + 1064);
    v12 = sub_1000136BC(v5, v6, &v27);

    *(v4 + 4) = v12;
    *(v4 + 12) = 2160;
    *(v4 + 14) = 1752392040;
    *(v4 + 22) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_1000136BC(v13, v14, &v27);

    *(v4 + 24) = v15;
    sub_100F806B4(v11, type metadata accessor for SharedBeaconRecord);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s Fetched product info for beacon %{private,mask.hash}s", v4, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v7 = *(v0 + 1064);

    sub_100F806B4(v7, type metadata accessor for SharedBeaconRecord);
  }

  v16 = *(v0 + 2224);
  v17 = *(v0 + 1560);
  v18 = *(v17 + 2);
  *(v0 + 2240) = v18;
  if (!v18)
  {
    *(v0 + 2272) = v16;
    v26 = *(v0 + 1448);

    v17 = sub_100F754C4;
    v8 = v26;
    v9 = 0;

    return _swift_task_switch(v17, v8, v9);
  }

  v19 = *(v0 + 1112);
  *(v0 + 2248) = 0;
  if (!*(v17 + 2))
  {
    __break(1u);
    return _swift_task_switch(v17, v8, v9);
  }

  (*(v0 + 1416))(*(v0 + 912), v17 + *(*(v0 + 1104) + 20) + ((*(v19 + 80) + 32) & ~*(v19 + 80)), *(v0 + 872));
  v20 = swift_task_alloc();
  *(v0 + 2256) = v20;
  *v20 = v0;
  v20[1] = sub_100F74B80;
  v21 = *(v0 + 912);
  v22 = *(v0 + 696);
  v23 = *(v0 + 688);
  v24 = *(v0 + 2489);

  return sub_100E853C8(v21, v24, v23, v22);
}

uint64_t sub_100F74B80()
{
  v2 = *v1;
  *(*v1 + 2264) = v0;

  if (v0)
  {
    v3 = v2[179];
    v4 = v2[114];
    v5 = v2[109];
    v6 = v2[94];

    v3(v4, v5);
    v7 = sub_100F74E48;
    v8 = v6;
  }

  else
  {
    v9 = v2[94];
    (v2[179])(v2[114], v2[109]);
    v7 = sub_100F74CEC;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100F74CEC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 2248) + 1;
  if (v4 == *(v3 + 2240))
  {
    *(v3 + 2272) = *(v3 + 2264);
    v5 = *(v3 + 1448);

    a1 = sub_100F754C4;
    a2 = v5;
    a3 = 0;

    return _swift_task_switch(a1, a2, a3);
  }

  *(v3 + 2248) = v4;
  v6 = *(v3 + 1560);
  if (v4 >= *(v6 + 16))
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  (*(v3 + 1416))(*(v3 + 912), v6 + ((*(*(v3 + 1112) + 80) + 32) & ~*(*(v3 + 1112) + 80)) + *(*(v3 + 1112) + 72) * v4 + *(*(v3 + 1104) + 20), *(v3 + 872));
  v7 = swift_task_alloc();
  *(v3 + 2256) = v7;
  *v7 = v3;
  v7[1] = sub_100F74B80;
  v8 = *(v3 + 912);
  v9 = *(v3 + 696);
  v10 = *(v3 + 688);
  v11 = *(v3 + 2489);

  return sub_100E853C8(v8, v11, v10, v9);
}

uint64_t sub_100F74E48()
{
  v23 = v0;
  swift_errorRetain();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 2490);
    v4 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v4 = 136315394;
    if (v3)
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 488) = *(v0 + 712);
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v6 = v10;
    }

    v11 = *(v0 + 1160);
    v12 = *(v0 + 1032);
    v13 = sub_1000136BC(v5, v6, v22);

    *(v4 + 4) = v13;
    *(v4 + 12) = 2082;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, v22);

    *(v4 + 14) = v16;

    _os_log_impl(&_mh_execute_header, v1, v2, "%s Failure on handleCircleTrust, sending PeerTrustAck message: %{public}s", v4, 0x16u);
    swift_arrayDestroy();

    sub_10000B3A8(v12, &qword_101698C10, &unk_10138C1E0);
    v9 = v11;
  }

  else
  {
    v7 = *(v0 + 1160);
    v8 = *(v0 + 1032);

    sub_10000B3A8(v8, &qword_101698C10, &unk_10138C1E0);
    v9 = v7;
  }

  sub_100F806B4(v9, type metadata accessor for MemberPeerTrust);
  v17 = *(v0 + 1224);
  v18 = *(v0 + 1096);
  sub_10000B3A8(*(v0 + 816), &unk_101698C30, &unk_101392630);
  sub_100F806B4(v18, type metadata accessor for SharedBeaconRecord);
  sub_100F806B4(v17, type metadata accessor for MemberSharingCircle);
  v19 = *(v0 + 1408);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v19, &qword_10169EF90, &unk_10139FCF0);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100F754C4()
{

  v1 = swift_task_alloc();
  *(v0 + 2280) = v1;
  *v1 = v0;
  v1[1] = sub_100F7559C;
  v2 = *(v0 + 1448);

  return unsafeBlocking<A>(context:_:)(v1, 0xD000000000000010, 0x800000010134A8C0, sub_100202178, v2, &type metadata for () + 1);
}

uint64_t sub_100F7559C()
{
  v1 = *(*v0 + 1448);

  return _swift_task_switch(sub_100F756B4, v1, 0);
}

uint64_t sub_100F756D0()
{
  v1 = v0[181];
  v2 = swift_allocObject();
  v0[286] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;

  v3 = swift_task_alloc();
  v0[287] = v3;
  *v3 = v0;
  v3[1] = sub_100F757D8;

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_1001BA7C4, v2, &type metadata for () + 1);
}

uint64_t sub_100F757D8()
{
  v1 = *(*v0 + 1448);

  return _swift_task_switch(sub_100F75904, v1, 0);
}

uint64_t sub_100F75920()
{
  v50 = v0;
  v1 = *(v0 + 720);
  if (v1)
  {
    v45 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 2304) = v2;
    *v2 = v0;
    v2[1] = sub_100F76294;

    return v45();
  }

  else
  {
    v4 = *(v0 + 2272);
    v5 = *(v0 + 1672);
    v6 = *(v0 + 1400);
    v7 = *(v0 + 1336);
    v8 = *(v0 + 872);
    v9 = *(v0 + 760);
    sub_1000D2A70(*(v0 + 1408), v6, &qword_10169EF90, &unk_10139FCF0);

    sub_100016590(*(v6 + *(v7 + 112)), *(v6 + *(v7 + 112) + 8));
    v5(v9, v6, v8);
    sub_10053A0D0(2, 1, v9, v47);
    if (v4)
    {
      swift_errorRetain();
      swift_errorRetain();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v0 + 2490);
        v13 = swift_slowAlloc();
        v47[0] = swift_slowAlloc();
        *v13 = 136315394;
        if (v12)
        {
          v14 = 0;
          v15 = 0xE000000000000000;
        }

        else
        {
          *(v0 + 512) = *(v0 + 712);
          v14 = dispatch thunk of CustomStringConvertible.description.getter();
          v15 = v31;
        }

        v32 = *(v0 + 1160);
        v33 = *(v0 + 1032);
        v34 = sub_1000136BC(v14, v15, v47);

        *(v13 + 4) = v34;
        *(v13 + 12) = 2082;
        swift_getErrorValue();
        v35 = Error.localizedDescription.getter();
        v37 = sub_1000136BC(v35, v36, v47);

        *(v13 + 14) = v37;

        _os_log_impl(&_mh_execute_header, v10, v11, "%s Failure on handleCircleTrust, sending message: %{public}s", v13, 0x16u);
        swift_arrayDestroy();

        sub_10000B3A8(v33, &qword_101698C10, &unk_10138C1E0);
        v30 = v32;
      }

      else
      {
        v28 = *(v0 + 1160);
        v29 = *(v0 + 1032);

        sub_10000B3A8(v29, &qword_101698C10, &unk_10138C1E0);
        v30 = v28;
      }

      sub_100F806B4(v30, type metadata accessor for MemberPeerTrust);
      v38 = *(v0 + 1224);
      v39 = *(v0 + 1096);
      sub_10000B3A8(*(v0 + 816), &unk_101698C30, &unk_101392630);
      sub_100F806B4(v39, type metadata accessor for SharedBeaconRecord);
      sub_100F806B4(v38, type metadata accessor for MemberSharingCircle);
      v40 = *(v0 + 1408);
      sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
      sub_10000B3A8(v40, &qword_10169EF90, &unk_10139FCF0);

      v41 = *(v0 + 8);

      return v41();
    }

    else
    {
      v43 = *(v0 + 1432);
      v16 = *(v0 + 1408);
      v17 = *(v0 + 1400);
      v18 = *(v0 + 1336);
      v42 = *(v0 + 872);
      v19 = *(v0 + 752);
      v20 = v48;
      v46 = v47[1];
      *(v0 + 2312) = v48;
      v21 = v49;
      *(v0 + 2320) = v49;
      v44 = v47[0];
      sub_1000035D0((v19 + 208), *(v19 + 232));
      sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
      v22 = swift_allocObject();
      *(v0 + 2328) = v22;
      *(v22 + 16) = xmmword_101385D80;
      sub_1000D2A70(v16, v17, &qword_10169EF90, &unk_10139FCF0);
      v23 = v17 + *(v18 + 64);
      LOBYTE(v16) = *v23;
      v24 = *(v23 + 8);
      v25 = *(v23 + 16);

      sub_100016590(*(v17 + *(v18 + 112)), *(v17 + *(v18 + 112) + 8));
      *(v22 + 32) = v16;
      *(v22 + 40) = v24;
      *(v22 + 48) = v25;
      v43(v17, v42);
      v26 = swift_task_alloc();
      *(v0 + 2336) = v26;
      *v26 = v0;
      v26[1] = sub_100F76C3C;
      v27 = *(v0 + 904);

      return sub_100D1C9D8(v27, v44, v46, v20, v21, v22);
    }
  }
}

uint64_t sub_100F76294()
{
  v1 = *(*v0 + 752);

  return _swift_task_switch(sub_100F763A4, v1, 0);
}

uint64_t sub_100F763A4()
{
  v47 = v0;
  v1 = *(v0 + 2272);
  v2 = *(v0 + 1672);
  v3 = *(v0 + 1400);
  v4 = *(v0 + 1336);
  v5 = *(v0 + 872);
  v6 = *(v0 + 760);
  sub_1000D2A70(*(v0 + 1408), v3, &qword_10169EF90, &unk_10139FCF0);

  sub_100016590(*(v3 + *(v4 + 112)), *(v3 + *(v4 + 112) + 8));
  v2(v6, v3, v5);
  sub_10053A0D0(2, 1, v6, v44);
  if (v1)
  {
    swift_errorRetain();
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 2490);
      v10 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v10 = 136315394;
      if (v9)
      {
        v11 = 0;
        v12 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 512) = *(v0 + 712);
        v11 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v29;
      }

      v30 = *(v0 + 1160);
      v31 = *(v0 + 1032);
      v32 = sub_1000136BC(v11, v12, v44);

      *(v10 + 4) = v32;
      *(v10 + 12) = 2082;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = sub_1000136BC(v33, v34, v44);

      *(v10 + 14) = v35;

      _os_log_impl(&_mh_execute_header, v7, v8, "%s Failure on handleCircleTrust, sending message: %{public}s", v10, 0x16u);
      swift_arrayDestroy();

      sub_10000B3A8(v31, &qword_101698C10, &unk_10138C1E0);
      v28 = v30;
    }

    else
    {
      v26 = *(v0 + 1160);
      v27 = *(v0 + 1032);

      sub_10000B3A8(v27, &qword_101698C10, &unk_10138C1E0);
      v28 = v26;
    }

    sub_100F806B4(v28, type metadata accessor for MemberPeerTrust);
    v36 = *(v0 + 1224);
    v37 = *(v0 + 1096);
    sub_10000B3A8(*(v0 + 816), &unk_101698C30, &unk_101392630);
    sub_100F806B4(v37, type metadata accessor for SharedBeaconRecord);
    sub_100F806B4(v36, type metadata accessor for MemberSharingCircle);
    v38 = *(v0 + 1408);
    sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
    sub_10000B3A8(v38, &qword_10169EF90, &unk_10139FCF0);

    v39 = *(v0 + 8);

    return v39();
  }

  else
  {
    v41 = *(v0 + 1432);
    v13 = *(v0 + 1408);
    v14 = *(v0 + 1400);
    v15 = *(v0 + 1336);
    v40 = *(v0 + 872);
    v16 = *(v0 + 752);
    v17 = v45;
    v43 = v44[1];
    *(v0 + 2312) = v45;
    v18 = v46;
    *(v0 + 2320) = v46;
    v42 = v44[0];
    sub_1000035D0((v16 + 208), *(v16 + 232));
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v19 = swift_allocObject();
    *(v0 + 2328) = v19;
    *(v19 + 16) = xmmword_101385D80;
    sub_1000D2A70(v13, v14, &qword_10169EF90, &unk_10139FCF0);
    v20 = v14 + *(v15 + 64);
    LOBYTE(v13) = *v20;
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);

    sub_100016590(*(v14 + *(v15 + 112)), *(v14 + *(v15 + 112) + 8));
    *(v19 + 32) = v13;
    *(v19 + 40) = v21;
    *(v19 + 48) = v22;
    v41(v14, v40);
    v23 = swift_task_alloc();
    *(v0 + 2336) = v23;
    *v23 = v0;
    v23[1] = sub_100F76C3C;
    v24 = *(v0 + 904);

    return sub_100D1C9D8(v24, v42, v43, v17, v18, v19);
  }
}

uint64_t sub_100F76C3C()
{
  v2 = *v1;
  *(*v1 + 2344) = v0;

  v3 = *(v2 + 752);

  if (v0)
  {
    v4 = sub_100F77468;
  }

  else
  {
    v4 = sub_100F76D84;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F76D84()
{
  v51 = v0;
  (*(v0 + 1416))(*(v0 + 896), *(v0 + 904), *(v0 + 872));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 2490);
    v4 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v4 = 136315651;
    if (v3)
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 584) = *(v0 + 712);
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v6 = v12;
    }

    v46 = *(v0 + 2312);
    v47 = *(v0 + 2320);
    v45 = *(v0 + 1432);
    v48 = *(v0 + 904);
    v13 = *(v0 + 896);
    v14 = *(v0 + 872);
    v15 = sub_1000136BC(v5, v6, &v50);

    *(v4 + 4) = v15;
    *(v4 + 12) = 2160;
    *(v4 + 14) = 1752392040;
    *(v4 + 22) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = sub_1000136BC(v16, v17, &v50);

    *(v4 + 24) = v18;
    v45(v13, v14);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s Circle Trust Ack message identifier is %{private,mask.hash}s.", v4, 0x20u);
    swift_arrayDestroy();

    sub_100016590(v46, v47);

    v45(v48, v14);
  }

  else
  {
    v7 = *(v0 + 2320);
    v8 = *(v0 + 2312);
    v9 = *(v0 + 1432);
    v10 = *(v0 + 904);
    v11 = *(v0 + 872);
    v9(*(v0 + 896), v11);
    sub_100016590(v8, v7);

    v9(v10, v11);
  }

  if (*(v0 + 2491) == 1)
  {
    v19 = *(v0 + 736);
    if (v19)
    {
      v49 = (v19 + *v19);
      v20 = swift_task_alloc();
      *(v0 + 2352) = v20;
      *v20 = v0;
      v20[1] = sub_100F77AE8;
      v21 = *(v0 + 1328);

      return v49(v21);
    }

    v27 = *(v0 + 1576);
    v28 = *(v0 + 1104);
    v29 = *(v0 + 1008);
    sub_1000D2A70(*(v0 + 1032), v29, &qword_101698C10, &unk_10138C1E0);
    if (v27(v29, 1, v28) == 1)
    {
      sub_10000B3A8(*(v0 + 1008), &qword_101698C10, &unk_10138C1E0);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 2490);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v50 = v34;
        *v33 = 136315138;
        if (v32)
        {
          v35 = 0;
          v36 = 0xE000000000000000;
        }

        else
        {
          *(v0 + 568) = *(v0 + 712);
          v35 = dispatch thunk of CustomStringConvertible.description.getter();
          v36 = v40;
        }

        v41 = sub_1000136BC(v35, v36, &v50);

        *(v33 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v30, v31, "%s Failure on handleCircleTrust, accepting of already accepted share: no  owner peer trust record!", v33, 0xCu);
        sub_100007BAC(v34);
      }

      goto LABEL_31;
    }

    v37 = *(v0 + 752);
    sub_100F80620(*(v0 + 1008), *(v0 + 1128), type metadata accessor for MemberPeerTrust);
    v38 = sub_1000035D0((v37 + 344), *(v37 + 368));
    v39 = *v38;
    *(v0 + 2360) = *v38;

    return _swift_task_switch(sub_100F77E90, v39, 0);
  }

  else if (*(v0 + 2488) == 4)
  {
    sub_1000035D0((*(v0 + 752) + 344), *(*(v0 + 752) + 368));
    v23 = swift_task_alloc();
    *(v0 + 2376) = v23;
    *v23 = v0;
    v23[1] = sub_100F78280;
    v24 = *(v0 + 1408);

    return sub_100102B40(v24);
  }

  else
  {
    v25 = *(v0 + 2492);
    if (v25 != 6 && v25 == *(v0 + 2493))
    {
LABEL_31:
      v42 = *(v0 + 2488);
      v43 = swift_task_alloc();
      *(v0 + 2432) = v43;
      *v43 = v0;
      v43[1] = sub_100F791F8;
      v44 = *(v0 + 2491);

      return sub_100ECAEAC(v44, v42 == 4);
    }

    v26 = swift_task_alloc();
    *(v0 + 2392) = v26;
    *v26 = v0;
    v26[1] = sub_100F78680;

    return daemon.getter();
  }
}

uint64_t sub_100F77468()
{
  v23 = v0;
  sub_100016590(*(v0 + 2312), *(v0 + 2320));
  swift_errorRetain();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 2490);
    v4 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v4 = 136315394;
    if (v3)
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 512) = *(v0 + 712);
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v6 = v10;
    }

    v11 = *(v0 + 1160);
    v12 = *(v0 + 1032);
    v13 = sub_1000136BC(v5, v6, v22);

    *(v4 + 4) = v13;
    *(v4 + 12) = 2082;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, v22);

    *(v4 + 14) = v16;

    _os_log_impl(&_mh_execute_header, v1, v2, "%s Failure on handleCircleTrust, sending message: %{public}s", v4, 0x16u);
    swift_arrayDestroy();

    sub_10000B3A8(v12, &qword_101698C10, &unk_10138C1E0);
    v9 = v11;
  }

  else
  {
    v7 = *(v0 + 1160);
    v8 = *(v0 + 1032);

    sub_10000B3A8(v8, &qword_101698C10, &unk_10138C1E0);
    v9 = v7;
  }

  sub_100F806B4(v9, type metadata accessor for MemberPeerTrust);
  v17 = *(v0 + 1224);
  v18 = *(v0 + 1096);
  sub_10000B3A8(*(v0 + 816), &unk_101698C30, &unk_101392630);
  sub_100F806B4(v18, type metadata accessor for SharedBeaconRecord);
  sub_100F806B4(v17, type metadata accessor for MemberSharingCircle);
  v19 = *(v0 + 1408);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v19, &qword_10169EF90, &unk_10139FCF0);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100F77AE8()
{
  v1 = *(*v0 + 752);

  return _swift_task_switch(sub_100F77BF8, v1, 0);
}

uint64_t sub_100F77BF8()
{
  v23 = v0;
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1008);
  sub_1000D2A70(*(v0 + 1032), v3, &qword_101698C10, &unk_10138C1E0);
  v4 = v1(v3, 1, v2);
  v5 = *(v0 + 1008);
  if (v4 == 1)
  {
    sub_10000B3A8(v5, &qword_101698C10, &unk_10138C1E0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 2490);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      if (v8)
      {
        v11 = 0;
        v12 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 568) = *(v0 + 712);
        v11 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v16;
      }

      v17 = sub_1000136BC(v11, v12, &v22);

      *(v9 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Failure on handleCircleTrust, accepting of already accepted share: no  owner peer trust record!", v9, 0xCu);
      sub_100007BAC(v10);
    }

    v18 = *(v0 + 2488);
    v19 = swift_task_alloc();
    *(v0 + 2432) = v19;
    *v19 = v0;
    v19[1] = sub_100F791F8;
    v20 = *(v0 + 2491);

    return sub_100ECAEAC(v20, v18 == 4);
  }

  else
  {
    v13 = *(v0 + 752);
    sub_100F80620(v5, *(v0 + 1128), type metadata accessor for MemberPeerTrust);
    v14 = sub_1000035D0((v13 + 344), *(v13 + 368));
    v15 = *v14;
    *(v0 + 2360) = *v14;

    return _swift_task_switch(sub_100F77E90, v15, 0);
  }
}

uint64_t sub_100F77E90()
{
  v1 = v0[295];
  v2 = v0[177];
  v3 = v0[176];
  v4 = v0[141];
  v5 = v0[138];
  v6 = v0[109];
  v0[23] = type metadata accessor for CircleTrustAcceptEnvelopeV1(0);
  v0[24] = sub_100F80970(&qword_1016975E0, type metadata accessor for CircleTrustAcceptEnvelopeV1, &unk_1013AE250);
  v0[25] = sub_100F80970(&qword_1016975E8, type metadata accessor for CircleTrustAcceptEnvelopeV1, &unk_1013AE110);
  v7 = sub_1000280DC(v0 + 20);
  v2(v7, v3, v6);
  v8 = *(v5 + 28);
  v9 = swift_task_alloc();
  v0[296] = v9;
  *v9 = v0;
  v9[1] = sub_100F78004;

  return sub_10129A758(v1 + 240, (v0 + 20), 3, v4 + v8);
}

uint64_t sub_100F78004()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[295];

    v4 = sub_100F78214;
    v5 = v3;
  }

  else
  {
    v6 = v2[94];
    sub_100007BAC(v2 + 20);
    v4 = sub_100F78144;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100F78144(__n128 a1)
{
  sub_100F806B4(*(v1 + 1128), type metadata accessor for MemberPeerTrust);
  v2 = *(v1 + 2488);
  v3 = swift_task_alloc();
  *(v1 + 2432) = v3;
  *v3 = v1;
  v3[1] = sub_100F791F8;
  v4 = *(v1 + 2491);

  return sub_100ECAEAC(v4, v2 == 4);
}

uint64_t sub_100F78214()
{
  v1 = *(v0 + 752);
  sub_100007BAC((v0 + 160));

  return _swift_task_switch(sub_100F80E38, v1, 0);
}

uint64_t sub_100F78280()
{
  v2 = *v1;
  *(v2 + 2384) = v0;

  if (v0)
  {
    v3 = *(v2 + 752);

    return _swift_task_switch(sub_100F78418, v3, 0);
  }

  else
  {
    v4 = *(v2 + 2488);
    v5 = swift_task_alloc();
    *(v2 + 2432) = v5;
    *v5 = v2;
    v5[1] = sub_100F791F8;
    v6 = *(v2 + 2491);

    return sub_100ECAEAC(v6, v4 == 4);
  }
}

uint64_t sub_100F78418()
{
  v17 = v0;
  swift_errorRetain();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 2490);
    v4 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v4 = 136315394;
    if (v3)
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 544) = *(v0 + 712);
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v6 = v7;
    }

    v8 = sub_1000136BC(v5, v6, &v16);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2082;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_1000136BC(v9, v10, &v16);

    *(v4 + 14) = v11;

    _os_log_impl(&_mh_execute_header, v1, v2, "%s Failure on handleCircleTrust, automatic share accepting: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = *(v0 + 2488);
  v13 = swift_task_alloc();
  *(v0 + 2432) = v13;
  *v13 = v0;
  v13[1] = sub_100F791F8;
  v14 = *(v0 + 2491);

  return sub_100ECAEAC(v14, v12 == 4);
}

uint64_t sub_100F78680(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 2400) = a1;

  v5 = swift_task_alloc();
  *(v3 + 2408) = v5;
  v6 = type metadata accessor for ItemSharingNotificationsService();
  v7 = sub_100F80970(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService, &unk_1013D77C8);
  *v5 = v4;
  v5[1] = sub_100F78834;
  v8 = *(v2 + 2176);
  v9 = *(v2 + 2168);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100F78834(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 2416) = a1;

  if (v1)
  {
    v5 = *(v3 + 752);

    return _swift_task_switch(sub_100F78BF4, v5, 0);
  }

  else
  {
    v6 = *(v3 + 2490);

    v7 = swift_task_alloc();
    *(v3 + 2424) = v7;
    *v7 = v4;
    v7[1] = sub_100F78A00;
    v8 = *(v3 + 712);
    v9 = *(v3 + 1224);

    return sub_100B3F2D8(v9, v8, v6 & 1);
  }
}

uint64_t sub_100F78A00()
{
  v2 = *v1;

  v3 = *(v2 + 752);
  if (v0)
  {

    v4 = sub_100F80E3C;
  }

  else
  {
    v4 = sub_100F78B38;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F78B38()
{

  v1 = *(v0 + 2488);
  v2 = swift_task_alloc();
  *(v0 + 2432) = v2;
  *v2 = v0;
  v2[1] = sub_100F791F8;
  v3 = *(v0 + 2491);

  return sub_100ECAEAC(v3, v1 == 4);
}

uint64_t sub_100F78BF4()
{
  v20 = v0;
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  sub_1000076D4(*(v0 + 1592), qword_10177BAA0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 2490);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    if (v3)
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 536) = *(v0 + 712);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v11;
    }

    v8 = *(v0 + 1160);
    v12 = *(v0 + 1032);
    v13 = sub_1000136BC(v6, v7, &v19);

    *(v4 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s No ItemSharingNotificationsService available!", v4, 0xCu);
    sub_100007BAC(v5);

    v10 = v12;
  }

  else
  {
    v8 = *(v0 + 1160);
    v9 = *(v0 + 1032);

    v10 = v9;
  }

  sub_10000B3A8(v10, &qword_101698C10, &unk_10138C1E0);
  sub_100F806B4(v8, type metadata accessor for MemberPeerTrust);
  v14 = *(v0 + 1224);
  v15 = *(v0 + 1096);
  sub_10000B3A8(*(v0 + 816), &unk_101698C30, &unk_101392630);
  sub_100F806B4(v15, type metadata accessor for SharedBeaconRecord);
  sub_100F806B4(v14, type metadata accessor for MemberSharingCircle);
  v16 = *(v0 + 1408);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v16, &qword_10169EF90, &unk_10139FCF0);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100F791F8()
{
  v1 = *(*v0 + 752);

  return _swift_task_switch(sub_100F79308, v1, 0);
}

uint64_t sub_100F79308()
{
  v1 = v0[153];
  v2 = v0[145];
  v3 = v0[137];
  v4 = v0[102];
  sub_10000B3A8(v0[129], &qword_101698C10, &unk_10138C1E0);
  sub_100F806B4(v2, type metadata accessor for MemberPeerTrust);
  sub_10000B3A8(v4, &unk_101698C30, &unk_101392630);
  sub_100F806B4(v3, type metadata accessor for SharedBeaconRecord);
  sub_100F806B4(v1, type metadata accessor for MemberSharingCircle);
  v5 = v0[176];
  sub_10000B3A8(v0[166], &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v5, &qword_10169EF90, &unk_10139FCF0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100F797AC()
{
  v41 = v0;
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1344);
  sub_1000D2A70(*(v0 + 1328), *(v0 + 1240), &qword_10169EF88, &unk_1013E4B70);
  sub_1000D2A70(v1, v2, &qword_10169EF90, &unk_10139FCF0);
  swift_errorRetain();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v37 = v4;
    v5 = *(v0 + 2490);
    v6 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v6 = 136316419;
    log = v3;
    if (v5)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 648) = *(v0 + 712);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v11;
    }

    v39 = *(v0 + 1432);
    v12 = *(v0 + 1400);
    v35 = *(v0 + 1344);
    v36 = *(v0 + 1336);
    v13 = *(v0 + 1312);
    v14 = *(v0 + 1240);
    v15 = *(v0 + 1232);
    v33 = *(v0 + 952);
    v16 = *(v0 + 880);
    v17 = *(v0 + 872);
    v18 = sub_1000136BC(v7, v8, &v40);

    *(v6 + 4) = v18;
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    sub_1000D2A70(v14, v13, &qword_10169EF88, &unk_1013E4B70);
    v19 = *(v15 + 48);

    v34 = *(v16 + 32);
    v34(v33, v13, v17);
    sub_10000B3A8(v13 + v19, &qword_1016980D0, &unk_10138F3B0);
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v39(v33, v17);
    v23 = sub_1000136BC(v20, v22, &v40);

    *(v6 + 24) = v23;
    sub_10000B3A8(v14, &qword_10169EF88, &unk_1013E4B70);
    *(v6 + 32) = 2160;
    *(v6 + 34) = 1752392040;
    *(v6 + 42) = 2081;
    sub_1000D2A70(v35, v12, &qword_10169EF90, &unk_10139FCF0);

    sub_100016590(*(v12 + *(v36 + 112)), *(v12 + *(v36 + 112) + 8));
    v34(v33, v12, v17);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v39(v33, v17);
    v27 = sub_1000136BC(v24, v26, &v40);

    *(v6 + 44) = v27;
    sub_10000B3A8(v35, &qword_10169EF90, &unk_10139FCF0);
    *(v6 + 52) = 2082;
    swift_getErrorValue();
    v28 = Error.localizedDescription.getter();
    v30 = sub_1000136BC(v28, v29, &v40);

    *(v6 + 54) = v30;

    _os_log_impl(&_mh_execute_header, log, v37, "%s Failure on updating beacon attributes, beaconIdentifier: %{private,mask.hash}s, shareIdentifier: %{private,mask.hash}s,\nerror: %{public}s.", v6, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {
    v9 = *(v0 + 1344);
    v10 = *(v0 + 1240);

    sub_10000B3A8(v10, &qword_10169EF88, &unk_1013E4B70);
    sub_10000B3A8(v9, &qword_10169EF90, &unk_10139FCF0);
  }

  *(v0 + 1656) = 0;
  v31 = *(v0 + 1448);

  return _swift_task_switch(sub_100F6BD90, v31, 0);
}

uint64_t sub_100F79CE0()
{
  v23 = v0;
  sub_10000B3A8(*(v0 + 792), &qword_1016975C8, &qword_10138C1F0);
  swift_errorRetain();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 2490);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v4 = 136315394;
    if (v3)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 480) = *(v0 + 712);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v12;
    }

    v21 = *(v0 + 1160);
    v13 = *(v0 + 1032);
    v14 = sub_1000136BC(v7, v8, &v22);

    *(v4 + 4) = v14;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v15;
    *v5 = v15;

    _os_log_impl(&_mh_execute_header, v1, v2, "%s Failure on handleCircleTrust, updating iCloud: %@", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);

    sub_10000B3A8(v13, &qword_101698C10, &unk_10138C1E0);
    v11 = v21;
  }

  else
  {
    v9 = *(v0 + 1160);
    v10 = *(v0 + 1032);

    sub_10000B3A8(v10, &qword_101698C10, &unk_10138C1E0);
    v11 = v9;
  }

  sub_100F806B4(v11, type metadata accessor for MemberPeerTrust);
  v16 = *(v0 + 1224);
  v17 = *(v0 + 1096);
  sub_10000B3A8(*(v0 + 816), &unk_101698C30, &unk_101392630);
  sub_100F806B4(v17, type metadata accessor for SharedBeaconRecord);
  sub_100F806B4(v16, type metadata accessor for MemberSharingCircle);
  v18 = *(v0 + 1408);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v18, &qword_10169EF90, &unk_10139FCF0);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100F7A378()
{
  v29 = v0;

  sub_100007BAC((v0 + 208));
  sub_100F80550(*(v0 + 1096), *(v0 + 1056), type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 2490);
    v4 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v4 = 136315907;
    if (v3)
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 592) = *(v0 + 712);
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v6 = v10;
    }

    v11 = *(v0 + 1056);
    v12 = sub_1000136BC(v5, v6, &v28);

    *(v4 + 4) = v12;
    *(v4 + 12) = 2160;
    *(v4 + 14) = 1752392040;
    *(v4 + 22) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_1000136BC(v13, v14, &v28);

    *(v4 + 24) = v15;
    sub_100F806B4(v11, type metadata accessor for SharedBeaconRecord);
    *(v4 + 32) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 34) = v16;
    *v27 = v16;

    _os_log_impl(&_mh_execute_header, v1, v2, "%s Failed to fetch product info for beacon %{private,mask.hash}s error = %{public}@!", v4, 0x2Au);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v7 = *(v0 + 1056);

    sub_100F806B4(v7, type metadata accessor for SharedBeaconRecord);
  }

  v17 = *(v0 + 1560);
  v18 = *(v17 + 2);
  *(v0 + 2240) = v18;
  if (!v18)
  {
    *(v0 + 2272) = 0;
    v26 = *(v0 + 1448);

    v17 = sub_100F754C4;
    v8 = v26;
    v9 = 0;

    return _swift_task_switch(v17, v8, v9);
  }

  v19 = *(v0 + 1112);
  *(v0 + 2248) = 0;
  if (!*(v17 + 2))
  {
    __break(1u);
    return _swift_task_switch(v17, v8, v9);
  }

  (*(v0 + 1416))(*(v0 + 912), v17 + *(*(v0 + 1104) + 20) + ((*(v19 + 80) + 32) & ~*(v19 + 80)), *(v0 + 872));
  v20 = swift_task_alloc();
  *(v0 + 2256) = v20;
  *v20 = v0;
  v20[1] = sub_100F74B80;
  v21 = *(v0 + 912);
  v22 = *(v0 + 696);
  v23 = *(v0 + 688);
  v24 = *(v0 + 2489);

  return sub_100E853C8(v21, v24, v23, v22);
}

uint64_t sub_100F7A794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v4 = type metadata accessor for UUID();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v33);
  v7 = &v30 - v6;
  v8 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v12 = __chkstk_darwin(v11 - 8);
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v30 - v15;
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  v19 = type metadata accessor for SharedBeaconRecord(0);
  v30 = sub_100F80970(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    sub_1000D2A70(a1 + *(v19 + 80), v10, &unk_1016AF890, &qword_1013926D0);
    v21 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v21 - 8) + 48))(v10, 1, v21) == 1)
    {
      sub_10000B3A8(v10, &unk_1016AF890, &qword_1013926D0);
      v22 = v35;
      (*(v35 + 56))(v18, 1, 1, v4);
    }

    else
    {
      sub_1000D2A70(&v10[*(v21 + 20)], v18, &qword_1016980D0, &unk_10138F3B0);
      sub_100F806B4(v10, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      v22 = v35;
    }

    (*(v22 + 16))(v16, v34, v4);
    (*(v22 + 56))(v16, 0, 1, v4);
    v23 = *(v33 + 48);
    sub_1000D2A70(v18, v7, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v16, &v7[v23], &qword_1016980D0, &unk_10138F3B0);
    v24 = *(v22 + 48);
    if (v24(v7, 1, v4) == 1)
    {
      sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
      if (v24(&v7[v23], 1, v4) == 1)
      {
        sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
        v20 = 1;
        return v20 & 1;
      }
    }

    else
    {
      v25 = v32;
      sub_1000D2A70(v7, v32, &qword_1016980D0, &unk_10138F3B0);
      if (v24(&v7[v23], 1, v4) != 1)
      {
        v26 = v35;
        v27 = v31;
        (*(v35 + 32))(v31, &v7[v23], v4);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        v28 = *(v26 + 8);
        v28(v27, v4);
        sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
        sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
        v28(v32, v4);
        sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
        return v20 & 1;
      }

      sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
      (*(v35 + 8))(v25, v4);
    }

    sub_10000B3A8(v7, &qword_1016AF880, &unk_10138CE20);
    v20 = 0;
    return v20 & 1;
  }

  v20 = 0;
  return v20 & 1;
}

BOOL sub_100F7AD50(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v38 = a3;
  v7 = type metadata accessor for MemberSharingCircle(0);
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SharedBeaconRecord(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  if (*(a2 + 16) && (v17 = sub_1000210EC(a1 + *(v7 + 24)), (v18 & 1) != 0))
  {
    sub_100F80550(*(a2 + 56) + *(v11 + 72) * v17, v14, type metadata accessor for SharedBeaconRecord);
    sub_100F80620(v14, v16, type metadata accessor for SharedBeaconRecord);
    v19 = *(a1 + *(v7 + 40));
    v20 = v19 > 4;
    v21 = (1 << v19) & 0x16;
    v23 = !v20 && v21 != 0 && v16[*(v10 + 64)] == 2;
    sub_100F806B4(v16, type metadata accessor for SharedBeaconRecord);
    return v23;
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177A560);
    sub_100F80550(a1, v9, type metadata accessor for MemberSharingCircle);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v27 = 136315394;
      if (a4)
      {
        v28 = 0;
        v29 = 0xE000000000000000;
      }

      else
      {
        v39 = v38;
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v30;
      }

      v31 = sub_1000136BC(v28, v29, &v40);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_100F806B4(v9, type metadata accessor for MemberSharingCircle);
      v35 = sub_1000136BC(v32, v34, &v40);

      *(v27 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s No sharedBeaconRecord for existing sharing circle %s!", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100F806B4(v9, type metadata accessor for MemberSharingCircle);
    }

    return 0;
  }
}

uint64_t sub_100F7B17C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100F7B280, 0, 0);
}

uint64_t sub_100F7B280()
{
  v1 = *(*(v0 + 24) + 160);
  *(v0 + 80) = v1;
  v2 = type metadata accessor for MemberSharingCircle(0);
  *(v0 + 88) = v2;
  *(v0 + 112) = *(v2 + 24);

  return _swift_task_switch(sub_100F7B300, v1, 0);
}

uint64_t sub_100F7B300()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 16))(v2, *(v0 + 16) + *(v0 + 112), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 96) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_100F7B468;
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100F80E60, v6, v9);
}

uint64_t sub_100F7B468()
{

  return _swift_task_switch(sub_100F7B580, 0, 0);
}

uint64_t sub_100F7B580()
{
  v1 = v0[9];
  v2 = type metadata accessor for SharedBeaconRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
  }

  else
  {
    v3 = *(v1 + *(v2 + 64));
    sub_100F806B4(v1, type metadata accessor for SharedBeaconRecord);
    if (v3 == 2)
    {
      v4 = *(v0[2] + *(v0[11] + 40)) == 0;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:

  v5 = v0[1];

  return v5(v4);
}

void sub_100F7B6A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v42 = a8;
  v43 = a7;
  v44 = a6;
  v45 = a2;
  v46 = a5;
  v12 = type metadata accessor for MemberPeerTrust(0);
  v41 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v15 - 8);
  v17 = &v36 - v16;
  v18 = type metadata accessor for SharedBeaconRecord(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100D43B14(a3);
  if (!v8)
  {
    v38 = v19;
    v39 = v18;
    v40 = v17;
    v36 = v14;
    v37 = v21;
    v22 = v45;
    v23 = v46;
    v24 = 0;
    v25 = *(a4 + 16);
    while (v25 != v24)
    {
      v26 = *(sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20) - 8);
      sub_100F7BAC0((a4 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24++), a1, v22, v23);
    }

    v27 = v23;
    v28 = v40;
    sub_1000D2A70(v27, v40, &unk_101698C30, &unk_101392630);
    if ((*(v38 + 48))(v28, 1, v39) == 1)
    {
      sub_10000B3A8(v28, &unk_101698C30, &unk_101392630);
      sub_100D43AE8(v44);
    }

    else
    {
      v29 = v37;
      v30 = sub_100F80620(v28, v37, type metadata accessor for SharedBeaconRecord);
      __chkstk_darwin(v30);
      v31 = v43;
      *(&v36 - 2) = v44;
      *(&v36 - 1) = v31;
      sub_100D447B4(v29, sub_100F8034C, (&v36 - 4));
      sub_100F806B4(v29, type metadata accessor for SharedBeaconRecord);
    }

    v32 = *(v42 + 16);
    v33 = v36;
    if (v32)
    {
      v34 = v42 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v35 = *(v41 + 72);
      do
      {
        sub_100F80550(v34, v33, type metadata accessor for MemberPeerTrust);
        sub_100D43B40(v33);
        sub_100F806B4(v33, type metadata accessor for MemberPeerTrust);
        v34 += v35;
        --v32;
      }

      while (v32);
    }
  }
}

void sub_100F7BAC0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v129 = a4;
  v132 = a3;
  v6 = type metadata accessor for BeaconNamingRecord(0);
  v124 = *(v6 - 8);
  v125 = v6;
  __chkstk_darwin(v6);
  v128 = (&v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = type metadata accessor for UUID();
  v130 = *(v122 - 8);
  __chkstk_darwin(v122);
  v114 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v9 = __chkstk_darwin(v123);
  v117 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v119 = &v107 - v11;
  v12 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v13 = __chkstk_darwin(v12 - 8);
  v116 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v118 = &v107 - v15;
  v16 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v17 = __chkstk_darwin(v16 - 8);
  v113 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v120 = &v107 - v20;
  v21 = __chkstk_darwin(v19);
  v126 = &v107 - v22;
  v23 = __chkstk_darwin(v21);
  v115 = &v107 - v24;
  v25 = __chkstk_darwin(v23);
  v121 = &v107 - v26;
  __chkstk_darwin(v25);
  v127 = &v107 - v27;
  v133 = sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20);
  v28 = __chkstk_darwin(v133);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v107 - v31;
  v33 = type metadata accessor for SharedBeaconRecord(0);
  v131 = *(v33 - 8);
  __chkstk_darwin(v33);
  v35 = (&v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for MemberPeerTrust(0);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36 - 8);
  v39 = (&v107 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = v134;
  sub_100D45CB0(a1);
  if (v40)
  {
    return;
  }

  v110 = v32;
  v111 = v35;
  v109 = v30;
  v112 = v33;
  v41 = v133;
  sub_1001BA354(*(a1 + v133[20]));
  v134 = a2;
  v42 = *(a1 + v41[24]);
  v43 = *(v42 + 16);
  if (!v43)
  {
    v45 = v112;
LABEL_8:
    v132 = a1;
    v46 = v110;
    sub_1000D2A70(a1, v110, &qword_10169A608, &unk_1013BCC20);
    v47 = v133[12];
    v48 = v133[16];

    v49 = v131 + 48;
    v50 = *(v131 + 48);
    v51 = v50(&v46[v47], 1, v45);
    v131 = v49;
    v108 = v50;
    if (v51 == 1)
    {
      sub_10000B3A8(&v46[v48], &unk_1016B29E0, &unk_1013B70E0);
      sub_10000B3A8(&v46[v47], &unk_101698C30, &unk_101392630);
      sub_100F806B4(v46, type metadata accessor for MemberSharingCircle);
      v52 = v128;
      v53 = v129;
      v54 = v124;
      v55 = v125;
      goto LABEL_22;
    }

    v56 = &v46[v47];
    v57 = v111;
    sub_100F80620(v56, v111, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(&v46[v48], &unk_1016B29E0, &unk_1013B70E0);
    sub_100F806B4(v46, type metadata accessor for MemberSharingCircle);
    v58 = v130;
    v59 = v57 + *(v45 + 20);
    v60 = v127;
    v61 = v122;
    v107 = *(v130 + 16);
    v107(v127, v59, v122);
    v110 = *(v58 + 56);
    (v110)(v60, 0, 1, v61);
    v62 = v118;
    sub_1000D2A70(v129, v118, &unk_101698C30, &unk_101392630);
    if (v50(v62, 1, v45) == 1)
    {
      sub_10000B3A8(v62, &unk_101698C30, &unk_101392630);
      v63 = 1;
      v64 = v121;
    }

    else
    {
      v64 = v121;
      v107(v121, v62 + *(v45 + 20), v61);
      sub_100F806B4(v62, type metadata accessor for SharedBeaconRecord);
      v63 = 0;
    }

    (v110)(v64, v63, 1, v61);
    v65 = *(v123 + 48);
    v66 = v127;
    v67 = v119;
    sub_1000D2A70(v127, v119, &qword_1016980D0, &unk_10138F3B0);
    v68 = v61;
    sub_1000D2A70(v64, v67 + v65, &qword_1016980D0, &unk_10138F3B0);
    v69 = *(v130 + 48);
    if (v69(v67, 1, v68) == 1)
    {
      sub_10000B3A8(v64, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v66, &qword_1016980D0, &unk_10138F3B0);
      v70 = v69(v67 + v65, 1, v68);
      v52 = v128;
      v53 = v129;
      v54 = v124;
      if (v70 == 1)
      {
        sub_10000B3A8(v67, &qword_1016980D0, &unk_10138F3B0);
        v55 = v125;
        v71 = v111;
LABEL_21:
        sub_100F806B4(v71, type metadata accessor for SharedBeaconRecord);
LABEL_22:
        v79 = v109;
        sub_1000D2A70(v132, v109, &qword_10169A608, &unk_1013BCC20);
        v80 = v133[12];
        v81 = v133[16];

        if ((*(v54 + 48))(v79 + v81, 1, v55) == 1)
        {
          sub_10000B3A8(v79 + v81, &unk_1016B29E0, &unk_1013B70E0);
          sub_10000B3A8(v79 + v80, &unk_101698C30, &unk_101392630);
          v82 = type metadata accessor for MemberSharingCircle;
          v83 = v79;
LABEL_35:
          sub_100F806B4(v83, v82);
          return;
        }

        sub_100F80620(v79 + v81, v52, type metadata accessor for BeaconNamingRecord);
        sub_10000B3A8(v79 + v80, &unk_101698C30, &unk_101392630);
        sub_100F806B4(v79, type metadata accessor for MemberSharingCircle);
        v84 = *(v130 + 16);
        v85 = v52 + *(v55 + 24);
        v86 = v126;
        v87 = v130;
        v88 = v122;
        v84(v126, v85, v122);
        v89 = *(v87 + 56);
        v89(v86, 0, 1, v88);
        v90 = v116;
        sub_1000D2A70(v53, v116, &unk_101698C30, &unk_101392630);
        v91 = v112;
        if (v108(v90, 1, v112) == 1)
        {
          sub_10000B3A8(v90, &unk_101698C30, &unk_101392630);
          v92 = 1;
          v93 = v117;
          v94 = v120;
        }

        else
        {
          v94 = v120;
          v84(v120, v90 + *(v91 + 20), v88);
          sub_100F806B4(v90, type metadata accessor for SharedBeaconRecord);
          v92 = 0;
          v93 = v117;
        }

        v95 = v123;
        v89(v94, v92, 1, v88);
        v96 = *(v95 + 48);
        v97 = v126;
        sub_1000D2A70(v126, v93, &qword_1016980D0, &unk_10138F3B0);
        v133 = v96;
        sub_1000D2A70(v94, v96 + v93, &qword_1016980D0, &unk_10138F3B0);
        v98 = *(v130 + 48);
        if (v98(v93, 1, v88) == 1)
        {
          sub_10000B3A8(v94, &qword_1016980D0, &unk_10138F3B0);
          sub_10000B3A8(v97, &qword_1016980D0, &unk_10138F3B0);
          if (v98(v133 + v93, 1, v88) == 1)
          {
            sub_10000B3A8(v93, &qword_1016980D0, &unk_10138F3B0);
            v99 = v128;
LABEL_34:
            v82 = type metadata accessor for BeaconNamingRecord;
            v83 = v99;
            goto LABEL_35;
          }
        }

        else
        {
          v100 = v113;
          sub_1000D2A70(v93, v113, &qword_1016980D0, &unk_10138F3B0);
          v101 = v133;
          if (v98(v133 + v93, 1, v88) != 1)
          {
            v102 = v130;
            v103 = v101 + v93;
            v104 = v114;
            (*(v130 + 32))(v114, v103, v88);
            sub_100F80970(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v105 = dispatch thunk of static Equatable.== infix(_:_:)();
            v106 = *(v102 + 8);
            v106(v104, v88);
            sub_10000B3A8(v120, &qword_1016980D0, &unk_10138F3B0);
            sub_10000B3A8(v126, &qword_1016980D0, &unk_10138F3B0);
            v106(v100, v88);
            sub_10000B3A8(v93, &qword_1016980D0, &unk_10138F3B0);
            v99 = v128;
            if (v105)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }

          sub_10000B3A8(v120, &qword_1016980D0, &unk_10138F3B0);
          sub_10000B3A8(v126, &qword_1016980D0, &unk_10138F3B0);
          (*(v130 + 8))(v100, v88);
        }

        sub_10000B3A8(v93, &qword_1016AF880, &unk_10138CE20);
        v99 = v128;
LABEL_33:
        sub_100D4555C(v99);
        goto LABEL_34;
      }
    }

    else
    {
      v72 = v115;
      sub_1000D2A70(v67, v115, &qword_1016980D0, &unk_10138F3B0);
      v73 = v69(v67 + v65, 1, v68);
      v53 = v129;
      v74 = v68;
      if (v73 != 1)
      {
        v75 = v130;
        v76 = v114;
        (*(v130 + 32))(v114, v67 + v65, v74);
        sub_100F80970(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v77 = dispatch thunk of static Equatable.== infix(_:_:)();
        v78 = *(v75 + 8);
        v78(v76, v74);
        sub_10000B3A8(v121, &qword_1016980D0, &unk_10138F3B0);
        sub_10000B3A8(v127, &qword_1016980D0, &unk_10138F3B0);
        v78(v115, v74);
        sub_10000B3A8(v67, &qword_1016980D0, &unk_10138F3B0);
        v52 = v128;
        v54 = v124;
        v55 = v125;
        v71 = v111;
        if (v77)
        {
          goto LABEL_21;
        }

LABEL_19:
        sub_100D458E8(v71);
        sub_100F806B4(v71, type metadata accessor for SharedBeaconRecord);
        goto LABEL_22;
      }

      sub_10000B3A8(v121, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v127, &qword_1016980D0, &unk_10138F3B0);
      (*(v130 + 8))(v72, v68);
      v52 = v128;
      v54 = v124;
    }

    sub_10000B3A8(v67, &qword_1016AF880, &unk_10138CE20);
    v55 = v125;
    v71 = v111;
    goto LABEL_19;
  }

  v44 = 0;
  v45 = v112;
  while (v44 < *(v42 + 16))
  {
    sub_100F80550(v42 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v44, v39, type metadata accessor for MemberPeerTrust);
    sub_100D46078(v39);
    ++v44;
    sub_100F806B4(v39, type metadata accessor for MemberPeerTrust);
    if (v43 == v44)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_100F7CAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_10169EF90, &unk_10139FCF0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for SharedBeaconRecord(0);
  v11 = *(v10 + 28);
  v12 = *(a2 + v11);
  v14 = *(a2 + v11 + 8);
  v13 = *(a2 + v11 + 16);
  v15 = a1 + v11;

  *v15 = v12;
  *(v15 + 8) = v14;
  *(v15 + 16) = v13;
  sub_1000D2A70(a3, v9, &qword_10169EF90, &unk_10139FCF0);
  LOBYTE(a3) = v9[*(v7 + 56)];

  sub_100016590(*&v9[*(v7 + 120)], *&v9[*(v7 + 120) + 8]);
  *(a1 + *(v10 + 64)) = a3;
  v16 = type metadata accessor for UUID();
  return (*(*(v16 - 8) + 8))(v9, v16);
}

void *sub_100F7CC38()
{
  sub_100007BAC(v0 + 14);

  sub_100007BAC(v0 + 21);
  sub_100007BAC(v0 + 26);
  sub_100007BAC(v0 + 31);
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 38);
  sub_100007BAC(v0 + 43);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100F7CCA8()
{
  sub_100F7CC38();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100F7CCF8(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 96) = a3;
  *(v5 + 16) = a1;
  v7 = type metadata accessor for UUID();
  *(v5 + 40) = v7;
  *(v5 + 48) = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v5 + 56) = v8;
  *(v5 + 64) = v9;

  return _swift_task_switch(sub_100F7CDC8, 0, 0);
}

uint64_t sub_100F7CDC8(uint64_t a1)
{
  if (*(v1 + 96) == 2)
  {
    v7 = *(*(v1 + 24) + 160);
    v8 = swift_task_alloc();
    *(v1 + 88) = v8;
    *v8 = v1;
    v8[1] = sub_100F7D498;
    v9 = *(v1 + 64);
    v10 = *(v1 + 16);

    return sub_100E82E40(v10, v9, v7);
  }

  else if (*(v1 + 96))
  {
    sub_100F80870();
    swift_allocError();
    swift_willThrow();

    v11 = *(v1 + 8);

    return v11();
  }

  else
  {
    v2 = *(*(v1 + 24) + 160);
    v3 = swift_task_alloc();
    *(v1 + 72) = v3;
    *v3 = v1;
    v3[1] = sub_100F7CF70;
    v4 = *(v1 + 64);
    v5 = *(v1 + 16);

    return sub_100E81F7C(v5, v4, v2);
  }
}

uint64_t sub_100F7CF70()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100F7D130;
  }

  else
  {
    v2 = sub_100F7D084;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F7D084()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for OwnerPeerTrust(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100F7D130()
{
  v31 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v4 + 16))(v1, v5, v3);
  v7 = v2;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[8];
    v28 = v0[7];
    v11 = v0[5];
    v12 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v13 = 141559043;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2113;
    *(v13 + 14) = v10;
    *v14 = v10;
    *(v13 + 22) = 2114;
    v15 = v10;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v16;
    v14[1] = v16;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v12 + 8))(v28, v11);
    v20 = sub_1000136BC(v17, v19, &v30);

    *(v13 + 44) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Cannot add family member to utfs circle %{private,mask.hash}@. error: %{public}@, BeaconIdentifier: %{private,mask.hash}s.", v13, 0x34u);
    sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
    swift_arrayDestroy();

    sub_100007BAC(v29);
  }

  else
  {
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[2];
  v25 = type metadata accessor for OwnerPeerTrust(0);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_100F7D498()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100F80E28, 0, 0);
  }
}

uint64_t sub_100F7D5E4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100F7D6E8, 0, 0);
}

uint64_t sub_100F7D6E8()
{
  v1 = *(*(v0 + 24) + 160);
  *(v0 + 80) = v1;
  v2 = type metadata accessor for OwnerPeerTrust(0);
  *(v0 + 88) = v2;
  *(v0 + 112) = *(v2 + 20);

  return _swift_task_switch(sub_100F7D768, v1, 0);
}

uint64_t sub_100F7D768()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 16))(v2, *(v0 + 16) + *(v0 + 112), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 96) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_100F7D8D0;
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100F80E68, v6, v9);
}

uint64_t sub_100F7D8D0()
{

  return _swift_task_switch(sub_100F7D9E8, 0, 0);
}

uint64_t sub_100F7D9E8()
{
  v1 = v0[9];
  v2 = (*(*(v0[11] - 8) + 48))(v1, 1) == 1;
  sub_10000B3A8(v1, &qword_101697798, &unk_10138C4F0);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100F7DABC(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = type metadata accessor for OwnerSharingCircle(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v2[12] = *(v4 + 64);
  v2[13] = swift_task_alloc();
  v2[14] = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v2[15] = swift_task_alloc();
  v2[16] = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100F7DC94, v1, 0);
}

uint64_t sub_100F7DC94()
{
  *(v0 + 16) = _swiftEmptyDictionarySingleton;
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 40);
  v4 = *(*(v0 + 32) + *(*(v0 + 48) + 32));
  *(v0 + 168) = v4;
  v5 = *(v4 + 32);
  *(v0 + 304) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -(-1 << v5));
  }

  v8 = v6 & *(v4 + 64);
  *(v0 + 176) = _swiftEmptyDictionarySingleton;

  if (v8)
  {
    v9 = 0;
LABEL_8:
    *(v0 + 184) = v8;
    *(v0 + 192) = v9;
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 80);
    v14 = __clz(__rbit64(v8)) | (v9 << 6);
    v15 = *(v4 + 48);
    v16 = v2[9];
    *(v0 + 200) = v16;
    v17 = v15 + v16 * v14;
    v18 = v2[2];
    *(v0 + 208) = v18;
    *(v0 + 216) = (v2 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v11, v17, v13);
    v19 = *(*(v4 + 56) + v14);
    v20 = *(v1 + 48);
    v21 = v2[4];
    *(v0 + 224) = v21;
    *(v0 + 232) = (v2 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v21(v12, v11, v13);
    *(v12 + v20) = v19;
    v22 = *(v3 + 160);
    *(v0 + 240) = v22;
    v23 = sub_100F7E1C8;
    goto LABEL_9;
  }

  v10 = 0;
  while (((63 - v7) >> 6) - 1 != v10)
  {
    v9 = v10 + 1;
    v8 = *(v4 + 8 * v10++ + 72);
    if (v8)
    {
      goto LABEL_8;
    }
  }

  if ((sub_100DE7CB4(_swiftEmptyDictionarySingleton, v4) & 1) == 0)
  {
    v24 = *(v0 + 72);
    v25 = *(v0 + 32);
    v26 = swift_task_alloc();
    *(v26 + 16) = v25;
    *(v26 + 24) = v0 + 16;
    sub_100EC0C48(sub_100F80A40, v24);
    v27 = *(v0 + 40);

    v22 = *(v27 + 160);
    *(v0 + 264) = v22;
    v23 = sub_100F7EBBC;
LABEL_9:

    return _swift_task_switch(v23, v22, 0);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100F7E1C8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  (*(v0 + 208))(v3, *(v0 + 152), v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v0 + 248) = v7;
  *(v7 + 16) = v1;
  v2(v7 + v6, v3, v4);

  v8 = swift_task_alloc();
  *(v0 + 256) = v8;
  *v8 = v0;
  v8[1] = sub_100F7E314;
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100F80E68, v7, v10);
}

uint64_t sub_100F7E314()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100F7E440, v1, 0);
}

uint64_t sub_100F7E440()
{
  v75 = v0;
  v1 = *(v0 + 120);
  v2 = type metadata accessor for OwnerPeerTrust(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v4 = *(v0 + 176);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    sub_10000B3A8(v1, &qword_101697798, &unk_10138C4F0);
    sub_1000D2A70(v5, v6, &qword_1016BBEE0, &unk_10139CBF0);
    sub_1000D2A70(v5, v7, &qword_1016BBEE0, &unk_10139CBF0);
    v9 = *(v7 + *(v8 + 48));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 24) = v4;
    v11 = sub_1000210EC(v6);
    v13 = *(v4 + 16);
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v5) = v12;
      if (*(*(v0 + 176) + 24) < v16)
      {
        v17 = *(v0 + 144);
        sub_100FE88DC(v16, isUniquelyReferenced_nonNull_native);
        v11 = sub_1000210EC(v17);
        if ((v5 & 1) != (v18 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_10:
        v3 = *(v0 + 24);
        if (v5)
        {
LABEL_11:
          v20 = *(v0 + 152);
          *(v3[7] + v11) = v9;
          sub_10000B3A8(v20, &qword_1016BBEE0, &unk_10139CBF0);
LABEL_16:
          v30 = *(v0 + 136);
          v31 = *(v0 + 80);
          v32 = *(*(v0 + 88) + 8);
          v32(*(v0 + 144), v31);
          *(v0 + 16) = v3;
          v32(v30, v31);
          goto LABEL_17;
        }

LABEL_14:
        v22 = *(v0 + 208);
        v23 = *(v0 + 200);
        v24 = *(v0 + 144);
        v25 = *(v0 + 152);
        v26 = *(v0 + 80);
        v3[(v11 >> 6) + 8] |= 1 << v11;
        v27 = v11;
        v22(v3[6] + v23 * v11, v24, v26);
        *(v3[7] + v27) = v9;
        sub_10000B3A8(v25, &qword_1016BBEE0, &unk_10139CBF0);
        v28 = v3[2];
        v15 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v15)
        {
LABEL_36:
          __break(1u);
          swift_once();
          v57 = *(v0 + 56);
          v58 = *(v0 + 32);
          v59 = type metadata accessor for Logger();
          sub_1000076D4(v59, qword_10177A560);
          sub_100F80550(v58, v57, type metadata accessor for OwnerSharingCircle);
          swift_errorRetain();
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = *(v0 + 56);
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v74 = v65;
            *v63 = 141558531;
            *(v63 + 4) = 1752392040;
            *(v63 + 12) = 2081;
            sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v66 = dispatch thunk of CustomStringConvertible.description.getter();
            v68 = v67;
            sub_100F806B4(v62, type metadata accessor for OwnerSharingCircle);
            v69 = sub_1000136BC(v66, v68, &v74);

            *(v63 + 14) = v69;
            *(v63 + 22) = 2114;
            swift_errorRetain();
            v70 = _swift_stdlib_bridgeErrorToNSError();
            *(v63 + 24) = v70;
            *v64 = v70;
            _os_log_impl(&_mh_execute_header, v60, v61, "Detected stale member list on circle %{private,mask.hash}s but failed to recover %{public}@.", v63, 0x20u);
            sub_10000B3A8(v64, &qword_10169BB30, &unk_10138B3C0);

            sub_100007BAC(v65);
          }

          else
          {
            v72 = *(v0 + 56);

            sub_100F806B4(v72, type metadata accessor for OwnerSharingCircle);
          }

LABEL_32:

          v73 = *(v0 + 8);

          return v73();
        }

        v3[2] = v29;
        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }
    }

    v21 = v11;
    sub_1010062B8();
    v11 = v21;
    v3 = *(v0 + 24);
    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  sub_10000B3A8(*(v0 + 152), &qword_1016BBEE0, &unk_10139CBF0);
  sub_10000B3A8(v1, &qword_101697798, &unk_10138C4F0);
  v3 = *(v0 + 176);
LABEL_17:
  v34 = *(v0 + 184);
  v33 = *(v0 + 192);
  *(v0 + 176) = v3;
  v35 = (v34 - 1) & v34;
  if (v35)
  {
    v36 = *(v0 + 168);
LABEL_23:
    *(v0 + 184) = v35;
    *(v0 + 192) = v33;
    v39 = *(v0 + 152);
    v38 = *(v0 + 160);
    v40 = *(v0 + 128);
    v41 = *(v0 + 80);
    v42 = *(v0 + 88);
    v43 = *(v0 + 40);
    v44 = __clz(__rbit64(v35)) | (v33 << 6);
    v45 = *(v36 + 48);
    v46 = v42[9];
    *(v0 + 200) = v46;
    v47 = v45 + v46 * v44;
    v48 = v42[2];
    *(v0 + 208) = v48;
    *(v0 + 216) = (v42 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v48(v38, v47, v41);
    v49 = *(*(v36 + 56) + v44);
    v50 = *(v40 + 48);
    v51 = v42[4];
    *(v0 + 224) = v51;
    *(v0 + 232) = (v42 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v51(v39, v38, v41);
    *(v39 + v50) = v49;
    v52 = *(v43 + 160);
    *(v0 + 240) = v52;
    v53 = sub_100F7E1C8;
  }

  else
  {
    while (1)
    {
      v37 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      v36 = *(v0 + 168);
      if (v37 >= (((1 << *(v0 + 304)) + 63) >> 6))
      {
        break;
      }

      v35 = *(v36 + 8 * v37 + 64);
      ++v33;
      if (v35)
      {
        v33 = v37;
        goto LABEL_23;
      }
    }

    if (sub_100DE7CB4(v3, v36))
    {
      goto LABEL_32;
    }

    v54 = *(v0 + 72);
    v55 = *(v0 + 32);
    v56 = swift_task_alloc();
    *(v56 + 16) = v55;
    *(v56 + 24) = v0 + 16;
    sub_100EC0C48(sub_100F80A40, v54);
    v71 = *(v0 + 40);

    v52 = *(v71 + 160);
    *(v0 + 264) = v52;
    v53 = sub_100F7EBBC;
  }

  return _swift_task_switch(v53, v52, 0);
}

uint64_t sub_100F7EBE4()
{
  v1 = v0[34];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[35] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_100F7ECDC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_100F7ECDC()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_100F7F108;
  }

  else
  {

    v2 = sub_100F7EDF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F7EE14()
{
  v20 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_100F80550(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100F806B4(v7, type metadata accessor for OwnerSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v19);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Detected stale member list on circle %{private,mask.hash}s and corrected it.", v8, 0x16u);
    sub_100007BAC(v9);

    v14 = v6;
  }

  else
  {
    v16 = v0[8];
    v15 = v0[9];

    sub_100F806B4(v16, type metadata accessor for OwnerSharingCircle);
    v14 = v15;
  }

  sub_10000B3A8(v14, &qword_1016975C8, &qword_10138C1F0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100F7F108()
{
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_100F7F174, v1, 0);
}

uint64_t sub_100F7F174()
{
  v19 = v0;
  sub_10000B3A8(v0[9], &qword_1016975C8, &qword_10138C1F0);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_100F80550(v2, v1, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100F806B4(v6, type metadata accessor for OwnerSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v18);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Detected stale member list on circle %{private,mask.hash}s but failed to recover %{public}@.", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
    v15 = v0[7];

    sub_100F806B4(v15, type metadata accessor for OwnerSharingCircle);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100F7F4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for UUID();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = *(v6 + 64);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100F7F59C, a3, 0);
}

uint64_t sub_100F7F59C()
{
  v1 = *(*(v0 + 40) + 160);
  *(v0 + 80) = v1;
  *(v0 + 112) = *(type metadata accessor for OwnerSharingCircle(0) + 20);

  return _swift_task_switch(sub_100F7F618, v1, 0);
}

uint64_t sub_100F7F618()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  (*(v3 + 16))(v1, *(v0 + 32) + *(v0 + 112), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);

  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v8 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v7 = v0;
  v7[1] = sub_10010D574;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100F80E64, v6, v8);
}

uint64_t sub_100F7F798(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v48 = a4;
  v6 = type metadata accessor for OwnerPeerTrust(0);
  v51 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v50 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (&v47 - v9);
  v11 = type metadata accessor for SharingCircleSecret(0);
  v53 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v47 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v15 = (&v47 - v14);
  v16 = type metadata accessor for OwnerSharingCircle(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16 - 8);
  v49 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v18);
  v22 = (&v47 - v21);
  v52 = a3;
  v23 = a3[2];
  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_6:
    v26 = *v52;
    v27 = *(*v52 + 16);
    if (v27)
    {
      v28 = 0;
      v29 = v51;
      while (v28 < *(v26 + 16))
      {
        sub_100F80550(v26 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v28, v15, type metadata accessor for SharingCircleSecret);
        sub_100D44DD8(v15);
        if (v4)
        {
          v30 = type metadata accessor for SharingCircleSecret;
          v31 = v15;
          return sub_100F806B4(v31, v30);
        }

        ++v28;
        result = sub_100F806B4(v15, type metadata accessor for SharingCircleSecret);
        if (v27 == v28)
        {
          goto LABEL_14;
        }
      }

LABEL_45:
      __break(1u);
    }

    else
    {
      v29 = v51;
LABEL_14:
      v32 = v52[4];
      v33 = *(v32 + 16);
      if (!v33)
      {
LABEL_19:
        v35 = v52[3];
        v36 = *(v35 + 16);
        if (!v36)
        {
LABEL_24:
          v39 = v52[1];
          v40 = *(v39 + 16);
          if (!v40)
          {
            v42 = v50;
LABEL_34:
            v44 = *(v48 + 16);
            if (v44)
            {
              v45 = v48 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
              v46 = *(v29 + 72);
              while (1)
              {
                sub_100F80550(v45, v42, type metadata accessor for OwnerPeerTrust);
                sub_100D467FC(v42);
                if (v4)
                {
                  break;
                }

                result = sub_100F806B4(v42, type metadata accessor for OwnerPeerTrust);
                v45 += v46;
                if (!--v44)
                {
                  return result;
                }
              }

              return sub_100F806B4(v42, type metadata accessor for OwnerPeerTrust);
            }

            return result;
          }

          v41 = 0;
          v42 = v50;
          v10 = v47;
          while (v41 < *(v39 + 16))
          {
            sub_100F80550(v39 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v41, v10, type metadata accessor for SharingCircleSecret);
            sub_100D4346C(v10);
            if (v4)
            {
              v43 = type metadata accessor for SharingCircleSecret;
              goto LABEL_40;
            }

            ++v41;
            result = sub_100F806B4(v10, type metadata accessor for SharingCircleSecret);
            if (v40 == v41)
            {
              goto LABEL_34;
            }
          }

LABEL_48:
          __break(1u);
          return result;
        }

        v37 = 0;
        v38 = v49;
        while (v37 < *(v35 + 16))
        {
          sub_100F80550(v35 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v37, v38, type metadata accessor for OwnerSharingCircle);
          sub_100D43440(v38);
          if (v4)
          {
            v30 = type metadata accessor for OwnerSharingCircle;
            v31 = v38;
            return sub_100F806B4(v31, v30);
          }

          ++v37;
          result = sub_100F806B4(v38, type metadata accessor for OwnerSharingCircle);
          if (v36 == v37)
          {
            goto LABEL_24;
          }
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v34 = 0;
      while (v34 < *(v32 + 16))
      {
        sub_100F80550(v32 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v34, v10, type metadata accessor for OwnerPeerTrust);
        sub_100D437C0(v10);
        if (v4)
        {
          v43 = type metadata accessor for OwnerPeerTrust;
LABEL_40:
          v30 = v43;
          v31 = v10;
          return sub_100F806B4(v31, v30);
        }

        ++v34;
        result = sub_100F806B4(v10, type metadata accessor for OwnerPeerTrust);
        if (v33 == v34)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v25 = 0;
  while (1)
  {
    if (v25 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    sub_100F80550(v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v25, v22, type metadata accessor for OwnerSharingCircle);
    sub_100D45194(v22);
    if (v4)
    {
      break;
    }

    ++v25;
    result = sub_100F806B4(v22, type metadata accessor for OwnerSharingCircle);
    if (v24 == v25)
    {
      goto LABEL_6;
    }
  }

  v30 = type metadata accessor for OwnerSharingCircle;
  v31 = v22;
  return sub_100F806B4(v31, v30);
}

uint64_t sub_100F7FDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for UUID();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = *(v6 + 64);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100F7FEB8, a3, 0);
}

uint64_t sub_100F7FEB8()
{
  v1 = *(*(v0 + 40) + 160);
  *(v0 + 80) = v1;
  *(v0 + 112) = *(type metadata accessor for OwnerSharingCircle(0) + 20);

  return _swift_task_switch(sub_100F7FF34, v1, 0);
}

uint64_t sub_100F7FF34()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  (*(v3 + 16))(v1, *(v0 + 32) + *(v0 + 112), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);

  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v8 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v7 = v0;
  v7[1] = sub_10010ED18;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100F805B8, v6, v8);
}

BOOL sub_100F800F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = 0;
  v10 = *(a1 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(type metadata accessor for MemberSharingCircle(0) - 8);
    v13 = sub_100F7AD50(a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11, a2, a3, a4 & 1);
    if (v4)
    {
      break;
    }

    v9 = v11 + 1;
  }

  while (!v13);
  return v10 != v11;
}

uint64_t sub_100F801E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100F80E40;

  return sub_100F7B17C(a1, v1);
}

uint64_t sub_100F802C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedBeaconRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F80380(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100F675E0(a1, a2, v2);
}

uint64_t type metadata accessor for ShareCreateUseCase.ShareCreationData(uint64_t a1)
{
  result = qword_1016C16C8;
  if (!qword_1016C16C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F804A4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100F7FDE8(a1, a2, v2);
}

uint64_t sub_100F80550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F80620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F806B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100F80714(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014650;

  return sub_100F7CCF8(a1, a2, v8, v6, v7);
}

uint64_t sub_100F807D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001BA6C8;

  return sub_100F7D5E4(a1, v1);
}

unint64_t sub_100F80870()
{
  result = qword_1016C1668;
  if (!qword_1016C1668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1668);
  }

  return result;
}

uint64_t sub_100F808C4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100F7F4CC(a1, a2, v2);
}

uint64_t sub_100F80970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100F809B8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100F80A60(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100F5A028(a1, a2, v2);
}

unint64_t sub_100F80B0C()
{
  result = qword_101698D00;
  if (!qword_101698D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101698D00);
  }

  return result;
}

uint64_t sub_100F80B58(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_100F80BE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100F80E40;

  return sub_100044C20();
}

void sub_100F80CA0(uint64_t a1)
{
  sub_1005C3874(319, &qword_1016A5498, type metadata accessor for SharingCircleSecret);
  if (v1 <= 0x3F)
  {
    sub_1005C3874(319, &qword_1016A54A0, type metadata accessor for OwnerSharingCircle);
    if (v2 <= 0x3F)
    {
      sub_1005C3874(319, &unk_1016A54A8, type metadata accessor for OwnerPeerTrust);
      if (v3 <= 0x3F)
      {
        type metadata accessor for OwnedBeaconRecord(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for BeaconNamingRecord(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_100F80DD4()
{
  result = qword_1016C1718;
  if (!qword_1016C1718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1718);
  }

  return result;
}

char *sub_100F80E6C(char *a1)
{
  v68 = a1;
  v1 = type metadata accessor for TimeBasedKey(0);
  v2 = *(v1 - 8);
  v71 = v1;
  v72 = v2;
  v3 = __chkstk_darwin(v1);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v66 - v6;
  v8 = type metadata accessor for Date();
  __chkstk_darwin(v8 - 8);
  v10 = (&v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for DateInterval();
  v11 = *(v74 - 8);
  v12 = __chkstk_darwin(v74);
  v69 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v73 = &v66 - v15;
  __chkstk_darwin(v14);
  v17 = &v66 - v16;
  if (qword_101694940 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101073BF4(v77);

    static Date.trustedNow.getter(v10);
    DateInterval.init(start:duration:)();
    v10 = sub_100F822B0(v17);
    v18 = [objc_opt_self() standardUserDefaults];
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 BOOLForKey:v19];

    v70 = v10;
    if ((v20 & 1) == 0)
    {
      if (v68)
      {
        break;
      }
    }

    v5 = v10[2];
    if (!v5)
    {
      goto LABEL_36;
    }

    v66 = v17;
    v76 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v21 = 0;
    v68 = v10 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v67 = (v11 + 16);
    v69 = (v11 + 8);
    while (v21 < v10[2])
    {
      sub_100F84FE0(&v68[*(v72 + 72) * v21], v7, type metadata accessor for TimeBasedKey);
      v11 = v71;
      (*v67)(v73, &v7[*(v71 + 20)], v74);
      v22 = sub_100A7A194(*&v7[*(v11 + 24) + 16], *&v7[*(v11 + 24) + 24], 0, 0);
      v19 = sub_100A7829C(v22, 0, 2);
      v20 = v23;
      CCECCryptorRelease();
      v24 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        if (v24 != 2)
        {
          goto LABEL_65;
        }

        v27 = v19[2];
        v26 = v19[3];
        v28 = __OFSUB__(v26, v27);
        v25 = v26 - v27;
        if (v28)
        {
          goto LABEL_39;
        }
      }

      else if (v24)
      {
        LODWORD(v25) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
          goto LABEL_40;
        }

        v25 = v25;
      }

      else
      {
        v25 = BYTE6(v20);
      }

      if (v25 != 28)
      {
        if (v24 == 1)
        {
          LODWORD(v24) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v24;
            goto LABEL_66;
          }

          __break(1u);
        }

        if (v24 != 2)
        {
          v37 = BYTE6(v20);
          goto LABEL_66;
        }

        v49 = v19[2];
        v39 = v19[3];
        v37 = v39 - v49;
        if (!__OFSUB__(v39, v49))
        {
          while (1)
          {
LABEL_66:
            sub_100018350();
            v58 = swift_allocError();
            *v62 = 28;
            *(v62 + 8) = v37;
            *(v62 + 16) = 0;
            swift_willThrow();
            sub_100016590(v19, v20);
LABEL_62:
            v77 = 0;
            v78 = 0xE000000000000000;
            _StringGuts.grow(_:)(35);
            v60._object = 0x800000010134CB30;
            v60._countAndFlagsBits = 0xD000000000000021;
            String.append(_:)(v60);
            v75 = v58;
LABEL_63:
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            _print_unlocked<A, B>(_:_:)();
LABEL_64:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_65:
            v37 = 0;
          }
        }

        __break(1u);
LABEL_52:
        if (v39 == 1)
        {
          LODWORD(v39) = HIDWORD(v37) - v37;
          if (!__OFSUB__(HIDWORD(v37), v37))
          {
            v65 = v39;
            goto LABEL_68;
          }

          __break(1u);
        }

        if (v39 == 2)
        {
          v50 = *(v37 + 16);
          v51 = *(v37 + 24);
          v65 = v51 - v50;
          if (__OFSUB__(v51, v50))
          {
            __break(1u);
            v52 = v51 - v50;
            v53 = static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v54 = qword_10177BA00;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v19 = swift_allocObject();
            *(v19 + 1) = xmmword_101385D80;
            v77 = v52;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v55 = String.init<A>(describing:)();
            v57 = v56;
            v19[7] = &type metadata for String;
            v19[8] = sub_100008C00();
            v19[4] = v55;
            v19[5] = v57;
            os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v54, "Error deriving advertisementKey: %@", 35, 2, v19);

            sub_1001BAF88();
            v58 = swift_allocError();
            *v59 = 0;
            swift_willThrow();

            goto LABEL_62;
          }
        }

        else
        {
          v65 = BYTE6(v11);
        }

LABEL_68:
        sub_100018350();
        v19 = swift_allocError();
        *v63 = 28;
        *(v63 + 8) = v65;
        *(v63 + 16) = 0;
        swift_willThrow();
        sub_100016590(v37, v11);
        v77 = 0;
        v78 = 0xE000000000000000;
        _StringGuts.grow(_:)(35);
        v61._object = 0x800000010134CB30;
        v61._countAndFlagsBits = 0xD000000000000021;
        String.append(_:)(v61);
        v75 = v19;
        goto LABEL_63;
      }

      ++v21;
      v29 = objc_allocWithZone(SPBeaconingKey);
      v17 = v73;
      isa = DateInterval._bridgeToObjectiveC()().super.isa;
      v31 = Data._bridgeToObjectiveC()().super.isa;
      [v29 initWithDateInterval:isa key:v31];

      sub_100016590(v19, v20);
      v32 = *v69;
      (*v69)(v17, v74);
      sub_100018D60(v7, type metadata accessor for TimeBasedKey);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = *(v76 + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 = v70;
      if (v5 == v21)
      {
        v33 = v66;
        v34 = v74;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  if (v68 != 1)
  {
    if (v68 != -1)
    {
      v77 = 0;
      v78 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);
      v64._countAndFlagsBits = 0xD000000000000013;
      v64._object = 0x8000000101374B60;
      String.append(_:)(v64);
      v76 = v68;
      type metadata accessor for BeaconingKeyType(0);
      _print_unlocked<A, B>(_:_:)();
    }

    goto LABEL_64;
  }

  v35 = v10[2];
  if (v35)
  {
    v66 = v17;
    v76 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v20 = 0;
    v68 = v10 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v67 = (v11 + 16);
    v73 = (v11 + 8);
    while (v20 < v10[2])
    {
      sub_100F84FE0(&v68[*(v72 + 72) * v20], v5, type metadata accessor for TimeBasedKey);
      v36 = v71;
      (*v67)(v69, &v5[*(v71 + 20)], v74);
      v7 = sub_100A7A194(*&v5[*(v36 + 24) + 16], *&v5[*(v36 + 24) + 24], 0, 0);
      v37 = sub_100A7829C(v7, 0, 2);
      v11 = v38;
      CCECCryptorRelease();
      v39 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v39 != 2)
        {
          v65 = 0;
          goto LABEL_68;
        }

        v42 = *(v37 + 16);
        v41 = *(v37 + 24);
        v28 = __OFSUB__(v41, v42);
        v40 = v41 - v42;
        if (v28)
        {
          goto LABEL_41;
        }
      }

      else if (v39)
      {
        LODWORD(v40) = HIDWORD(v37) - v37;
        if (__OFSUB__(HIDWORD(v37), v37))
        {
          goto LABEL_42;
        }

        v40 = v40;
      }

      else
      {
        v40 = BYTE6(v11);
      }

      if (v40 != 28)
      {
        goto LABEL_52;
      }

      v17 = v35;
      ++v20;
      sub_10002EA98(6, v37, v11, &v77);
      v43 = v77;
      v44 = v78;
      v45 = objc_allocWithZone(SPBeaconingKey);
      v46 = v69;
      v47 = DateInterval._bridgeToObjectiveC()().super.isa;
      v7 = Data._bridgeToObjectiveC()().super.isa;
      [v45 initWithDateInterval:v47 key:v7];

      sub_100016590(v43, v44);
      v32 = *v73;
      (*v73)(v46, v74);
      sub_100018D60(v5, type metadata accessor for TimeBasedKey);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = *(v76 + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v35 = v17;
      v10 = v70;
      if (v17 == v20)
      {
        v33 = v66;
        v34 = v74;
LABEL_35:
        v32(v33, v34);

        return v76;
      }
    }

    goto LABEL_38;
  }

LABEL_36:

  (*(v11 + 8))(v17, v74);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_100F81B48@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100F81CCC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v5 - 8);
  v22 = v21 - v6;
  v7 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  *(v2 + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_runningMacOSDaemon) = 0;
  sub_1000D2A70(a1, v2 + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_beaconRecord, &unk_1016A9A20, &qword_10138B280);
  v21[1] = a2;
  *(v2 + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_beaconKeyManager) = a2;
  v23 = a1;
  sub_1000D2A70(a1, v9, &unk_1016A9A20, &qword_10138B280);
  v17 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v17 - 8) + 48))(v9, 1, v17) == 1)
  {
    sub_10000B3A8(v9, &unk_1016A9A20, &qword_10138B280);
    sub_10000B3A8(v23, &unk_1016A9A20, &qword_10138B280);
  }

  else
  {
    v18 = *(v11 + 16);
    v18(v14, &v9[*(v17 + 32)], v10);

    sub_100018D60(v9, type metadata accessor for OwnedBeaconRecord);
    (*(v11 + 32))(v16, v14, v10);
    v19 = v22;
    v18(v22, v16, v10);
    (*(v11 + 56))(v19, 0, 1, v10);
    sub_100F845C8(v19);

    sub_10000B3A8(v23, &unk_1016A9A20, &qword_10138B280);
    (*(v11 + 8))(v16, v10);
  }

  return v2;
}

uint64_t sub_100F82010@<X0>(void *a1@<X8>)
{
  v3 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v3 - 8);
  v5 = v14 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(v1 + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_beaconRecord, v5, &unk_1016A9A20, &qword_10138B280);
  v10 = type metadata accessor for OwnedBeaconRecord(0);
  if ((*(*(v10 - 8) + 48))(v5, 1, v10) == 1)
  {
    sub_10000B3A8(v5, &unk_1016A9A20, &qword_10138B280);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v11 = v14[1];
    KeyPath = swift_getKeyPath();
    sub_101075400(KeyPath, v11, a1);
  }

  else
  {
    (*(v7 + 16))(v9, &v5[*(v10 + 20)], v6);
    sub_100018D60(v5, type metadata accessor for OwnedBeaconRecord);
    (*(v7 + 32))(a1, v9, v6);
    return (*(v7 + 56))(a1, 0, 1, v6);
  }
}

void *sub_100F822B0(uint64_t a1)
{
  v77 = a1;
  v2 = type metadata accessor for DateInterval();
  v79 = *(v2 - 8);
  v80 = v2;
  __chkstk_darwin(v2);
  v76 = v3;
  v78 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v71 - v8;
  v84 = type metadata accessor for OwnedBeaconRecord(0);
  v81 = *(v84 - 8);
  v9 = *(v81 + 64);
  v10 = __chkstk_darwin(v84);
  v75 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v71 - v11;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v71 - v13);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v85 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v18 - 8);
  v20 = &v71 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100F81B48(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v25 = &unk_101696900;
    v26 = &unk_10138B1E0;
    v27 = v20;
LABEL_11:
    sub_10000B3A8(v27, v25, v26);
    v36 = static os_log_type_t.error.getter();
    sub_10039722C();
    v37 = static OS_os_log.default.getter();
    v38 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v37, "LocalBeaconingManager - No beacon - unable to self-beacon.", 58, 2, _swiftEmptyArrayStorage);

    return v38;
  }

  (*(v22 + 32))(v24, v20, v21);
  sub_100F82010(v14);
  v28 = (*(v16 + 48))(v14, 1, v15);
  v29 = v21;
  if (v28 == 1)
  {
    (*(v22 + 8))(v24, v21);
    v25 = &qword_1016980D0;
    v26 = &unk_10138F3B0;
    v27 = v14;
    goto LABEL_11;
  }

  v73 = v15;
  v74 = v24;
  v30 = v22;
  v71 = v16;
  v72 = v29;
  v31 = v85;
  (*(v16 + 32))(v85, v14, v15);
  sub_1000D2A70(v1 + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_beaconRecord, v7, &unk_1016A9A20, &qword_10138B280);
  v32 = v81;
  v33 = *(v81 + 48);
  v34 = v84;
  if (v33(v7, 1, v84) == 1)
  {
    v35 = v82;
    sub_100F82D28(v31, v74, v82);
    if (v33(v7, 1, v34) != 1)
    {
      sub_10000B3A8(v7, &unk_1016A9A20, &qword_10138B280);
    }
  }

  else
  {
    v35 = v82;
    sub_10002AE4C(v7, v82, type metadata accessor for OwnedBeaconRecord);
    (*(v32 + 56))(v35, 0, 1, v34);
  }

  if (v33(v35, 1, v34) == 1)
  {
    (*(v71 + 8))(v31, v73);
    (*(v30 + 8))(v74, v72);
    v25 = &unk_1016A9A20;
    v26 = &qword_10138B280;
    v27 = v35;
    goto LABEL_11;
  }

  v82 = v30;
  v40 = v83;
  sub_10002AE4C(v35, v83, type metadata accessor for OwnedBeaconRecord);
  v41 = v75;
  sub_100F84FE0(v40, v75, type metadata accessor for OwnedBeaconRecord);
  v42 = v32;
  v44 = v78;
  v43 = v79;
  v45 = v80;
  (*(v79 + 16))(v78, v77, v80);
  v46 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v47 = (v9 + *(v43 + 80) + v46) & ~*(v43 + 80);
  v48 = v47 + v76;
  v49 = swift_allocObject();
  *(v49 + 16) = v1;
  sub_10002AE4C(v41, v49 + v46, type metadata accessor for OwnedBeaconRecord);
  (*(v43 + 32))(v49 + v47, v44, v45);
  *(v49 + v48) = 0;

  unsafeFromAsyncTask<A>(_:)();

  v38 = v86;
  v50 = v87;
  if (v88 > 1u)
  {
    v63 = v82;
    if (v88 == 2)
    {
      sub_100018D60(v83, type metadata accessor for OwnedBeaconRecord);
      (*(v71 + 8))(v85, v73);
      (*(v63 + 1))(v74, v72);
      sub_100359088(v38, v50, 2u);
    }

    else
    {
      v64 = static os_log_type_t.default.getter();
      if (qword_101695028 != -1)
      {
        swift_once();
      }

      v65 = qword_10177C370;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_101385D80;
      v67 = v83;
      v68 = UUID.uuidString.getter();
      v70 = v69;
      *(v66 + 56) = &type metadata for String;
      *(v66 + 64) = sub_100008C00();
      *(v66 + 32) = v68;
      *(v66 + 40) = v70;

      sub_100018D60(v67, type metadata accessor for OwnedBeaconRecord);
      (*(v71 + 8))(v85, v73);
      (*(v63 + 1))(v74, v72);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v52 = v72;
    v51 = v73;
    v53 = v71;
    v54 = v74;
    v55 = v82;
    if (v88)
    {
      sub_100018D60(v83, type metadata accessor for OwnedBeaconRecord);
      (*(v53 + 8))(v85, v51);
      (*(v55 + 1))(v54, v52);
    }

    else
    {

      v56 = static os_log_type_t.default.getter();
      if (qword_101695028 != -1)
      {
        swift_once();
      }

      v57 = qword_10177C370;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_101385D80;
      v59 = v83;
      v60 = UUID.uuidString.getter();
      v62 = v61;
      *(v58 + 56) = &type metadata for String;
      *(v58 + 64) = sub_100008C00();
      *(v58 + 32) = v60;
      *(v58 + 40) = v62;

      sub_100018D60(v59, type metadata accessor for OwnedBeaconRecord);
      (*(v71 + 8))(v85, v73);
      (*(v55 + 1))(v74, v72);
      sub_100359088(v38, v50, 0);
    }
  }

  return v38;
}

uint64_t sub_100F82D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = 0x4944552D454B4146;
  v8[1] = 0xE900000000000044;
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v10 = v9[5];
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&a3[v10], a1, v11);
  sub_100F84FE0(v8, &a3[v9[6]], type metadata accessor for StableIdentifier);
  (*(v12 + 56))(&a3[v9[7]], 1, 1, v11);
  v13 = v9[8];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 16))(&a3[v13], a2, v14);
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v15 = __DataStorage.init(length:)() | 0x4000000000000000;
  swift_allocObject();
  v16 = __DataStorage.init(length:)() | 0x4000000000000000;
  swift_allocObject();
  v17 = __DataStorage.init(length:)() | 0x4000000000000000;
  sub_100018D60(v8, type metadata accessor for StableIdentifier);
  *a3 = xmmword_10138C660;
  v18 = &a3[v9[9]];
  *v18 = 0x2000000000;
  *(v18 + 1) = v15;
  *&a3[v9[10]] = xmmword_10138BBF0;
  *&a3[v9[11]] = xmmword_10138BBF0;
  v19 = &a3[v9[12]];
  *v19 = 0x5500000000;
  *(v19 + 1) = v16;
  v20 = &a3[v9[13]];
  *v20 = 0x3900000000;
  *(v20 + 1) = v17;
  v21 = &a3[v9[14]];
  *v21 = 65;
  *(v21 + 1) = 0xE100000000000000;
  v22 = &a3[v9[15]];
  *v22 = 16706;
  *(v22 + 1) = 0xE200000000000000;
  *&a3[v9[16]] = -1;
  *&a3[v9[17]] = -1;
  a3[v9[18]] = 3;
  a3[v9[19]] = 0;
  a3[v9[20]] = 0;
  return (*(*(v9 - 1) + 56))(a3, 0, 1, v9);
}

uint64_t sub_100F83034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v4[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for KeyGenerationBeaconInfo(0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for BeaconIdentifier(0);
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_100F83198, 0, 0);
}

uint64_t sub_100F83198()
{
  v1 = v0[9];
  v0[18] = *(v0[8] + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_beaconKeyManager);
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v0[19] = v2;
  v0[5] = v2;
  v0[6] = sub_100F84F98(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v3 = sub_1000280DC(v0 + 2);
  v0[20] = v3;
  sub_100F84FE0(v1, v3, type metadata accessor for OwnedBeaconRecord);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_100F832B0;

  return daemon.getter();
}

uint64_t sub_100F832B0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 176) = a1;

  v3 = swift_task_alloc();
  *(v2 + 184) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100F84F98(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100F84F98(&unk_1016B1090, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_100F8348C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F8348C(uint64_t a1)
{
  *(*v2 + 192) = a1;

  if (v1)
  {

    v3 = sub_100F837EC;
  }

  else
  {

    v3 = sub_100F835DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F835DC()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = getuid();
  sub_1000294F0(v5);
  v6 = *(v4 + 20);
  v7 = *(v2 + 20);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(v3 + v6, v1 + v7, v8);
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_100F836D8;
  v10 = v0[17];
  v11 = v0[12];

  return sub_10098F404(v11, v10);
}

uint64_t sub_100F836D8()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_100F83BE0;
  }

  else
  {
    v2 = sub_100F83A04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F837EC()
{
  if (qword_101694A18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B538);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconKeyService.", v4, 2u);
  }

  v5 = type metadata accessor for Daemon.Error();
  sub_100F84F98(&qword_101697368, &type metadata accessor for Daemon.Error, &protocol conformance descriptor for Daemon.Error);
  swift_allocError();
  *v6 = 0xD000000000000010;
  v6[1] = 0x8000000101351540;
  (*(*(v5 - 8) + 104))(v6, enum case for Daemon.Error.missingService(_:), v5);
  swift_willThrow();

  v7 = v0[7];
  sub_100007BAC(v0 + 2);
  *v7 = 0;
  v7[1] = 0;
  *(v0[7] + 16) = 3;

  v8 = v0[1];

  return v8();
}

uint64_t sub_100F83A04()
{
  v1 = v0[13];
  v2 = v0[12];
  if ((*(v0[14] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_10169E368, &qword_1013D6690);
LABEL_7:
    v9 = swift_task_alloc();
    v0[29] = v9;
    *v9 = v0;
    v9[1] = sub_100F83D8C;
    v10 = v0[11];

    return sub_1007383E8(v10, (v0 + 2));
  }

  v3 = v0[15];
  sub_10002AE4C(v2, v3, type metadata accessor for KeyGenerationBeaconInfo);
  v4 = *(v3 + *(v1 + 28));
  sub_100018D60(v3, type metadata accessor for KeyGenerationBeaconInfo);
  if (v4 != 3)
  {
    goto LABEL_7;
  }

  v5 = v0[17];

  sub_100018D60(v5, type metadata accessor for BeaconIdentifier);
  sub_100007BAC(v0 + 2);
  v6 = v0[7];
  *v6 = 0;
  v6[1] = 0;
  *(v0[7] + 16) = 3;

  v7 = v0[1];

  return v7();
}

uint64_t sub_100F83BE0()
{
  v1 = v0[17];

  sub_100018D60(v1, type metadata accessor for BeaconIdentifier);

  v2 = v0[7];
  sub_100007BAC(v0 + 2);
  *v2 = 0;
  v2[1] = 0;
  *(v0[7] + 16) = 3;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100F83CB8()
{
  v1 = *(v0 + 136);

  sub_100018D60(v1, type metadata accessor for BeaconIdentifier);
  sub_100007BAC((v0 + 16));
  v2 = *(v0 + 264);
  **(v0 + 56) = vextq_s8(*(v0 + 216), *(v0 + 216), 8uLL);
  *(*(v0 + 56) + 16) = v2;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100F83D8C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_100F83EA0;
  }

  else
  {
    v2 = sub_100F83F78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F83EA0()
{
  v1 = v0[17];

  sub_100018D60(v1, type metadata accessor for BeaconIdentifier);

  v2 = v0[7];
  sub_100007BAC(v0 + 2);
  *v2 = 0;
  v2[1] = 0;
  *(v0[7] + 16) = 3;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100F83F78()
{
  v1 = v0[20];
  v3 = v0[10];
  v2 = v0[11];
  sub_1000322C8();
  v4 = sub_100F84768(v1, v3, v2);
  v6 = v5;
  sub_10000B3A8(v2, &unk_1016C8FC0, &unk_10139D7D0);
  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = sub_100F84068;

  return sub_100731BF4((v0 + 2), v4, v6, 0, 0, 0);
}

uint64_t sub_100F84068(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 256) = v3;

  if (v3)
  {
    v9 = sub_100F841A4;
  }

  else
  {
    *(v8 + 264) = a3;
    *(v8 + 216) = a2;
    *(v8 + 224) = a1;
    v9 = sub_100F83CB8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100F841A4()
{
  v1 = v0[17];

  sub_100018D60(v1, type metadata accessor for BeaconIdentifier);

  v2 = v0[7];
  sub_100007BAC(v0 + 2);
  *v2 = 0;
  v2[1] = 0;
  *(v0[7] + 16) = 3;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100F8427C()
{
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd21LocalBeaconingManager_beaconRecord, &unk_1016A9A20, &qword_10138B280);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalBeaconingManager(uint64_t a1)
{
  result = qword_1016C1760;
  if (!qword_1016C1760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100F84354(uint64_t a1)
{
  sub_100F843FC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100F843FC(uint64_t a1)
{
  if (!qword_1016C1770)
  {
    type metadata accessor for OwnedBeaconRecord(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016C1770);
    }
  }
}

uint64_t sub_100F84454(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DateInterval() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = v1 + v9;
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014650;

  return sub_100F83034(a1, v10, v1 + v6, v11);
}

uint64_t sub_100F845C8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_1000D2A70(a1, v4, &unk_101696900, &unk_10138B1E0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v4, v6);
  }

  v9 = String._bridgeToObjectiveC()();
  [v5 setObject:isa forKey:v9];

  swift_unknownObjectRelease();
  return sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
}

unint64_t sub_100F84768(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  v69 = a2;
  v73 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v58[-v9];
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 1);
  v13 = __chkstk_darwin(v11);
  v64 = &v58[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v68 = &v58[-v16];
  __chkstk_darwin(v15);
  v18 = &v58[-v17];
  v19 = type metadata accessor for OwnedBeaconRecord(0);
  v20 = (v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v58[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100F84FE0(v73, v22, type metadata accessor for OwnedBeaconRecord);
  v23 = *(v20 + 7);
  v71 = v12;
  v25 = *(v12 + 16);
  v24 = v12 + 16;
  v70 = v25;
  v25(v18, &v22[v23], v11);
  v26 = *(v5 + 16);
  v27 = &v22[*(v20 + 10)];
  v73 = v4;
  v26(v10, v27, v4);
  v28 = v22;
  v29 = v18;
  sub_100018D60(v28, type metadata accessor for OwnedBeaconRecord);
  v30 = *a3;
  v31 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v32 = sub_10088756C(v18, v10, a3 + *(v31 + 36), 0);
  if (((v32 | v30) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v67 = v24;
  v62 = v32;
  v63 = v30;
  v33 = v32 - v30;
  DateInterval.start.getter();
  v34 = sub_10088756C(v18, v10, v8, 0);
  v35 = *(v5 + 8);
  v36 = v73;
  v35(v8, v73);
  DateInterval.end.getter();
  v72 = v18;
  v69 = v10;
  v37 = v10;
  v10 = v33;
  v29 = sub_10088756C(v18, v37, v8, 0);
  v65 = v35;
  result = (v35)(v8, v36);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  v66 = v5 + 8;
  v61 = v33;
  if ((v33 & 0x8000000000000000) == 0 && v33 >= v34)
  {
    if (qword_101694A18 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v40 = type metadata accessor for Logger();
      sub_1000076D4(v40, qword_10177B538);
      v41 = v64;
      v70(v64, v72, v11);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v74 = v60;
        *v44 = 141558787;
        *(v44 + 4) = 1752392040;
        *(v44 + 12) = 2081;
        sub_100F84F98(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v59 = v43;
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v10;
        v48 = v47;
        (*(v71 + 8))(v41, v11);
        v49 = sub_1000136BC(v45, v48, &v74);
        v10 = v46;

        *(v44 + 14) = v49;
        *(v44 + 22) = 2048;
        *(v44 + 24) = v34;
        *(v44 + 32) = 2048;
        *(v44 + 34) = v46;
        _os_log_impl(&_mh_execute_header, v42, v59, "        Buckets clamped for beacon %{private,mask.hash}s,starting secondary index %llu <= factor %lld -- clamping to 1.", v44, 0x2Au);
        sub_100007BAC(v60);

        p_weak_ivar_lyt = (&BeaconKeyManager + 56);
      }

      else
      {

        (*(v71 + 8))(v41, v11);
      }

      v5 = 1;
      v20 = v68;
      if (v62 != v63)
      {
LABEL_14:
        if (v29 < v10)
        {
          if (v5 <= v29)
          {
            v50 = v29;
          }

          else
          {
            v50 = v5;
          }

          goto LABEL_23;
        }
      }

LABEL_18:
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v50 = v29 - v10;
      if (__OFSUB__(v29, v10))
      {
        goto LABEL_33;
      }

      if ((v50 & 0x8000000000000000) == 0)
      {
        if (v5 > v50)
        {
          v50 = v5;
        }

LABEL_23:
        v68 = v50;
        v10 = v72;
        if (p_weak_ivar_lyt[323] != -1)
        {
LABEL_30:
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_1000076D4(v51, qword_10177B538);
        v70(v20, v10, v11);
        v34 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        v53 = v11;
        if (os_log_type_enabled(v34, v52))
        {
          v29 = swift_slowAlloc();
          p_weak_ivar_lyt = swift_slowAlloc();
          v74 = p_weak_ivar_lyt;
          *v29 = 141559043;
          *(v29 + 4) = 1752392040;
          *(v29 + 12) = 2081;
          sub_100F84F98(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v54 = dispatch thunk of CustomStringConvertible.description.getter();
          v10 = v55;
          v11 = *(v71 + 8);
          (v11)(v20, v53);
          v56 = sub_1000136BC(v54, v10, &v74);

          *(v29 + 14) = v56;
          *(v29 + 22) = 2048;
          *(v29 + 24) = v5;
          *(v29 + 32) = 2048;
          v57 = v68;
          *(v29 + 34) = v68;
          *(v29 + 42) = 2048;
          *(v29 + 44) = v61;
          _os_log_impl(&_mh_execute_header, v34, v52, "        Buckets for beacon %{private,mask.hash}s,secondary index %llu - %llu (factor %lld).", v29, 0x34u);
          sub_100007BAC(p_weak_ivar_lyt);

          v65(v69, v73);
          (v11)(v72, v53);
        }

        else
        {

          p_weak_ivar_lyt = *(v71 + 8);
          (p_weak_ivar_lyt)(v20, v11);
          v65(v69, v73);
          (p_weak_ivar_lyt)(v10, v11);
          v57 = v68;
        }

        if (v57 >= v5)
        {
          return v5;
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }
  }

  if ((v34 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v5 = v34 - v33;
  if (__OFSUB__(v34, v33))
  {
    __break(1u);
  }

  else if ((v5 & 0x8000000000000000) == 0)
  {
    v20 = v68;
    if (v33 < 1)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100F84F98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100F84FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F85058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Connection.TransactionMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100207390();
  if (v8)
  {
    v9 = __chkstk_darwin(v8);
    v12[-4] = a2;
    v12[-3] = a1;
    v12[-2] = v9;
    (*(v5 + 104))(v7, enum case for Connection.TransactionMode.deferred(_:), v4);
    Connection.transaction(_:block:)();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100F8520C(uint64_t a1)
{
  v23 = a1;
  v1 = type metadata accessor for Connection.TransactionMode();
  v26 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Table();
  v9 = *(v8 - 8);
  v24 = v8;
  v25 = v9;
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100207390();
  if (v12)
  {
    v13 = v12;
    v22 = v1;
    if (qword_1016949A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v14, qword_10177B410);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    v15 = v24;
    QueryType.filter(_:)();
    v16 = (*(v5 + 8))(v7, v4);
    __chkstk_darwin(v16);
    *(&v21 - 2) = v13;
    *(&v21 - 1) = v11;
    v17 = v26;
    v18 = v22;
    (*(v26 + 104))(v3, enum case for Connection.TransactionMode.deferred(_:), v22);
    Connection.transaction(_:block:)();
    (*(v17 + 8))(v3, v18);

    return (*(v25 + 8))(v11, v15);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v20 = 2;
    *(v20 + 4) = 1;
    return swift_willThrow();
  }
}

void *sub_100F855A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24StandaloneBeaconDatabase_standaloneBeacon;
  v4 = type metadata accessor for Table();
  v10[3] = v4;
  v10[4] = &protocol witness table for Table;
  v5 = sub_1000280DC(v10);
  (*(*(v4 - 1) + 16))(v5, a1 + v3, v4);
  v6 = sub_1002182F4();
  if (!v6)
  {
    sub_10020223C();
    swift_allocError();
    *v8 = 2;
    *(v8 + 4) = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = v6;
  v7 = Connection.prepare(_:)();

  if (v1)
  {
LABEL_5:
    sub_100007BAC(v10);
    return v4;
  }

  sub_1000BC4D4(&unk_1016C1800, &qword_1013F51C8);
  v4 = swift_allocObject();
  v4[2] = v7;
  v4[3] = sub_100F86728;
  v4[4] = 0;
  sub_100007BAC(v10);
  return v4;
}

uint64_t sub_100F856F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  v17[6] = a1;
  v2 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - v4;
  v6 = type metadata accessor for Table();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016949A0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v10, qword_10177B410);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v3 + 8))(v5, v2);
  v17[3] = v6;
  v17[4] = &protocol witness table for Table;
  v11 = sub_1000280DC(v17);
  (*(v7 + 16))(v11, v9, v6);
  if (!sub_1002182F4())
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
    (*(v7 + 8))(v9, v6);
    return sub_100007BAC(v17);
  }

  v12 = v16[1];
  Connection.prepare(_:)();
  if (v12)
  {
    (*(v7 + 8))(v9, v6);

    return sub_100007BAC(v17);
  }

  sub_100007BAC(v17);

  v15 = dispatch thunk of _AnySequenceBox._makeIterator()();

  v16[4] = v15;
  v16[5] = sub_100F86728;
  v16[6] = 0;
  sub_10061E644(v16[0]);

  return (*(v7 + 8))(v9, v6);
}

void *sub_100F85ABC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a5;
  v28 = a2;
  v23 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = v22 - v8;
  v10 = type metadata accessor for Table();
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3 != -1)
  {
    swift_once();
  }

  v14 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v14, a4);
  v24 = MACAddress.data.getter();
  v25 = v15;
  sub_100F875B8();
  == infix<A>(_:_:)();
  sub_100016590(v24, v25);
  QueryType.filter(_:)();
  (*(v7 + 8))(v9, v23);
  v26 = v10;
  v27 = &protocol witness table for Table;
  v16 = sub_1000280DC(&v24);
  (*(v11 + 16))(v16, v13, v10);
  if (sub_1002182F4())
  {
    v17 = v22[1];
    v18 = Connection.prepare(_:)();
    if (!v17)
    {
      v20 = v18;
      (*(v11 + 8))(v13, v10);

      sub_1000BC4D4(&unk_1016C1800, &qword_1013F51C8);
      v10 = swift_allocObject();
      v10[2] = v20;
      v10[3] = sub_100F86728;
      v10[4] = 0;
      sub_100007BAC(&v24);
      return v10;
    }

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v19 = 2;
    *(v19 + 4) = 1;
    swift_willThrow();
    (*(v11 + 8))(v13, v10);
  }

  sub_100007BAC(&v24);
  return v10;
}

uint64_t sub_100F85E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v43 = a3;
  v4 = type metadata accessor for Endianness();
  __chkstk_darwin(v4 - 8);
  v33[1] = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Setter();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Insert();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v36 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016949A0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v10, qword_10177B410);
  type metadata accessor for UUID();
  v37 = v8;
  <- infix<A>(_:_:)();
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v39 = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1013B0DB0;
  v35 = v11;
  if (qword_1016949A8 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v12, qword_10177B428);
  v13 = type metadata accessor for StandaloneBeacon(0);
  v44 = MACAddress.data.getter();
  v45 = v14;
  <- infix<A>(_:_:)();
  sub_100016590(v44, v45);
  if (qword_1016949B0 != -1)
  {
    swift_once();
  }

  v34 = v12;
  sub_1000076D4(v12, qword_10177B440);
  v44 = MACAddress.data.getter();
  v45 = v15;
  <- infix<A>(_:_:)();
  sub_100016590(v44, v45);
  if (qword_1016949B8 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v16, qword_10177B458);
  v17 = (a2 + v13[7]);
  v18 = v17[1];
  v44 = *v17;
  v45 = v18;

  <- infix<A>(_:_:)();

  if (qword_1016949C0 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v19, qword_10177B470);
  type metadata accessor for Date();
  <- infix<A>(_:_:)();
  if (qword_1016949C8 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v20, qword_10177B488);
  v21 = a2 + v13[9];
  v22 = sub_100313A28(*v21, *(v21 + 8));
  if (v22 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v22 <= 0x7FFFFFFF)
  {
    LODWORD(v44) = v22;
    sub_10022A60C();
    <- infix<A>(_:_:)();
    if (qword_1016949D0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_16:
  sub_1000076D4(v20, qword_10177B4A0);
  sub_100313B54(*v21, *(v21 + 8));
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  v23 = v44;
  if (BYTE4(v44))
  {
    v23 = 0;
  }

  LODWORD(v44) = v23;
  <- infix<A>(_:_:)();
  if (qword_1016949D8 != -1)
  {
    swift_once();
  }

  v24 = v34;
  sub_1000076D4(v34, qword_10177B4B8);
  v25 = (a2 + v13[10]);
  v26 = v25[3];
  v44 = v25[2];
  v45 = v26;
  sub_100017D5C(v44, v26);
  <- infix<A>(_:_:)();
  sub_100016590(v44, v45);
  if (qword_1016949E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v24, qword_10177B4D0);
  v27 = v25[5];
  v44 = v25[4];
  v45 = v27;
  sub_100017D5C(v44, v27);
  <- infix<A>(_:_:)();
  sub_100016590(v44, v45);
  if (qword_1016949E8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v24, qword_10177B4E8);
  v28 = (a2 + v13[11]);
  v29 = v28[1];
  v44 = *v28;
  v45 = v29;
  sub_100017D5C(v44, v29);
  <- infix<A>(_:_:)();
  sub_100016590(v44, v45);
  type metadata accessor for Table();
  v31 = v36;
  v30 = v37;
  QueryType.insert(_:_:)();

  (*(v39 + 8))(v30, v41);
  Connection.run(_:)();
  return (*(v38 + 8))(v31, v40);
}

uint64_t sub_100F8662C()
{
  v0 = type metadata accessor for Delete();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Table();
  QueryType.delete()();
  Connection.run(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100F86728@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Row();
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return sub_100F867F4(v6, a2);
}

uint64_t sub_100F867F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v81 = a2;
  v3 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v4 = __chkstk_darwin(v3 - 8);
  v67[1] = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v70 = (v67 - v7);
  v8 = __chkstk_darwin(v6);
  v69 = (v67 - v9);
  __chkstk_darwin(v8);
  v11 = v67 - v10;
  v12 = type metadata accessor for MACAddress();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v76 = v67 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = v67 - v20;
  __chkstk_darwin(v19);
  v80 = v67 - v22;
  if (qword_1016949D8 != -1)
  {
    swift_once();
  }

  v23 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v23, qword_10177B4B8);
  Row.subscript.getter();
  sub_1004970DC(v82, v83, v84);
  v24 = *(&v84[0] + 1);
  if (*(&v84[0] + 1) >> 60 == 15)
  {
    goto LABEL_57;
  }

  v74 = *&v84[0];
  if (qword_1016949E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v23, qword_10177B4D0);
  Row.subscript.getter();
  sub_1004A4740();
  if (*(&v84[0] + 1) >> 60 == 15)
  {
    goto LABEL_58;
  }

  v68 = v16;
  v78 = v13;
  v71 = v84[0];
  if (qword_1016949C8 != -1)
  {
    swift_once();
  }

  v25 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v25, qword_10177B488);
  sub_10022A60C();
  Row.subscript.getter();
  v73 = SLODWORD(v84[0]);
  if (qword_1016949D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v25, qword_10177B4A0);
  Row.subscript.getter();
  v72 = SLODWORD(v84[0]);
  if (qword_1016949A0 != -1)
  {
    swift_once();
  }

  v26 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v26, qword_10177B410);
  type metadata accessor for UUID();
  Row.subscript.getter();
  v27 = v78;
  if (qword_1016949A8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v23, qword_10177B428);
  Row.subscript.getter();
  v29 = *(&v84[0] + 1);
  v28 = *&v84[0];
  v30 = *(&v84[0] + 1) >> 62;
  v77 = v12;
  v79 = v23;
  v75 = v24;
  if ((*(&v84[0] + 1) >> 62) > 1)
  {
    if (v30 != 2)
    {
      goto LABEL_26;
    }

    v32 = *(*&v84[0] + 16);
    v31 = *(*&v84[0] + 24);
    v33 = __OFSUB__(v31, v32);
    v34 = v31 - v32;
    if (!v33)
    {
      if (v34 == 6)
      {
        goto LABEL_22;
      }

LABEL_26:
      MACAddress.init(dataRepresentation:)();
      v11 = v21;
      goto LABEL_27;
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:

    __break(1u);
LABEL_60:
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_61;
  }

  if (v30)
  {
    if (!__OFSUB__(DWORD1(v84[0]), v84[0]))
    {
      if (DWORD1(v84[0]) - LODWORD(v84[0]) == 6)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }

    goto LABEL_54;
  }

  if (BYTE14(v84[0]) != 6)
  {
    goto LABEL_26;
  }

LABEL_22:
  sub_100017D5C(*&v84[0], *(&v84[0] + 1));
  MACAddress.init(data:type:)();
  if ((*(v27 + 48))(v11, 1, v12) == 1)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  sub_100016590(v28, v29);
LABEL_27:
  v35 = *(v27 + 32);
  v36 = v80;
  v35(v80, v11, v12);
  v37 = type metadata accessor for StandaloneBeacon(0);
  v38 = &v81[v37[5]];
  v70 = *(v27 + 16);
  v70(v38, v36, v12);
  if (qword_1016949B0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v79, qword_10177B440);
  Row.subscript.getter();
  v40 = *(&v84[0] + 1);
  v39 = *&v84[0];
  v41 = *(&v84[0] + 1) >> 62;
  if ((*(&v84[0] + 1) >> 62) > 1)
  {
    if (v41 != 2)
    {
      goto LABEL_40;
    }

    v43 = *(*&v84[0] + 16);
    v42 = *(*&v84[0] + 24);
    v33 = __OFSUB__(v42, v43);
    v44 = v42 - v43;
    if (!v33)
    {
      if (v44 == 6)
      {
        goto LABEL_36;
      }

LABEL_40:
      v69 = v35;
      v47 = v68;
      MACAddress.init(dataRepresentation:)();
      v46 = v47;
      v35 = v69;
      goto LABEL_41;
    }

    goto LABEL_55;
  }

  if (v41)
  {
    if (!__OFSUB__(DWORD1(v84[0]), v84[0]))
    {
      if (DWORD1(v84[0]) - LODWORD(v84[0]) == 6)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }

    goto LABEL_56;
  }

  if (BYTE14(v84[0]) != 6)
  {
    goto LABEL_40;
  }

LABEL_36:
  sub_100017D5C(*&v84[0], *(&v84[0] + 1));
  v45 = v69;
  MACAddress.init(data:type:)();
  if ((*(v27 + 48))(v45, 1, v12) == 1)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_100016590(v39, v40);
  v46 = v69;
LABEL_41:
  v48 = v76;
  v35(v76, v46, v12);
  v70(&v81[v37[6]], v48, v12);
  if (qword_1016949B8 != -1)
  {
    swift_once();
  }

  v49 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v49, qword_10177B458);
  Row.subscript.getter();
  v50 = *(&v84[0] + 1);
  v51 = HIBYTE(*(&v84[0] + 1)) & 0xFLL;
  if ((*(&v84[0] + 1) & 0x2000000000000000) == 0)
  {
    v51 = *&v84[0] & 0xFFFFFFFFFFFFLL;
  }

  v52 = v79;
  v53 = v75;
  if (!v51)
  {
    goto LABEL_59;
  }

  v54 = &v81[v37[7]];
  *v54 = *&v84[0];
  *(v54 + 1) = v50;
  if (qword_1016949C0 != -1)
  {
    swift_once();
  }

  v55 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v55, qword_10177B470);
  type metadata accessor for Date();
  Row.subscript.getter();
  v56 = sub_100314604(v73, v72);
  if (v57 >> 60 == 15)
  {
    goto LABEL_60;
  }

  v58 = &v81[v37[9]];
  *v58 = v56;
  v58[1] = v57;
  v59 = v74;
  sub_100017D5C(v74, v53);
  sub_10002EA98(57, v59, v53, &v82);
  sub_100496F68(v82, v83, v84);
  v60 = *(&v84[0] + 1);
  if (*(&v84[0] + 1) >> 60 == 15)
  {
LABEL_63:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v61 = &v81[v37[10]];
  *v61 = *&v84[0];
  *(v61 + 1) = v60;
  *(v61 + 2) = v59;
  *(v61 + 3) = v53;
  v62 = *(&v71 + 1);
  *(v61 + 4) = v71;
  *(v61 + 5) = v62;
  if (qword_1016949E8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v52, qword_10177B4E8);
  Row.subscript.getter();
  v63 = type metadata accessor for Row();
  (*(*(v63 - 8) + 8))(a1, v63);
  v64 = *(v27 + 8);
  v65 = v77;
  v64(v48, v77);
  result = (v64)(v80, v65);
  *&v81[v37[11]] = v84[0];
  return result;
}

unint64_t sub_100F875B8()
{
  result = qword_101699DC8;
  if (!qword_101699DC8)
  {
    type metadata accessor for Blob();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699DC8);
  }

  return result;
}

uint64_t sub_100F87610()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C1810);
  v1 = sub_1000076D4(v0, qword_1016C1810);
  if (qword_1016950F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_1016C1828);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100F876D8(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  *(v3 + 40) = type metadata accessor for OS_dispatch_queue.Attributes();
  *(v3 + 48) = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  *(v3 + 56) = swift_task_alloc();
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100F877F8, 0, 0);
}

uint64_t sub_100F877F8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  swift_defaultActor_initialize();
  *(v4 + 112) = _swiftEmptyDictionarySingleton;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v2 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v0[2] = _swiftEmptyArrayStorage;
  sub_100F8A0F8(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v4 + 136) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v4 + 144) = 0;
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  LODWORD(v5) = [v5 authorizationStatusForBundlePath:v6];

  *(v4 + 144) = v5;
  v7 = [objc_allocWithZone(type metadata accessor for LocationManagerDelegateTrampoline()) init];
  *(v4 + 128) = v7;
  v8 = *(v4 + 136);
  v9 = objc_allocWithZone(CLLocationManager);
  v10 = v7;
  v11 = v8;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v9 initWithEffectiveBundlePath:v12 delegate:v10 onQueue:v11];

  if (v13)
  {
    v15 = v0[4];
    *(v15 + 120) = v13;
    v14 = sub_100F87A80;
    v16 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_100F87A80()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 24);
    [*(v1 + 120) setDesiredAccuracy:v2];
    [*(v1 + 120) setDistanceFilter:v2 * 0.5];
  }

  swift_weakAssign();

  v3 = *(v0 + 8);
  v4 = *(v0 + 32);

  return v3(v4);
}

uint64_t sub_100F87B58()
{
  v1[3] = v0;
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock.Instant();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_100F87D8C, v0, 0);
}

uint64_t sub_100F87D8C()
{
  v44 = v0;
  if (static SystemInfo.underTest.getter())
  {

    v1 = v0[1];

    return v1(0);
  }

  else
  {
    v3 = v0[3];
    ContinuousClock.init()();
    ContinuousClock.now.getter();
    if ((*(v3 + 144) - 3) > 1)
    {
      ContinuousClock.now.getter();
      if (qword_1016950F0 != -1)
      {
        swift_once();
      }

      v10 = v0[20];
      v12 = v0[13];
      v11 = v0[14];
      v14 = v0[11];
      v13 = v0[12];
      v15 = v0[10];
      v16 = type metadata accessor for Logger();
      sub_1000076D4(v16, qword_1016C1810);
      v17 = *(v14 + 16);
      v17(v12, v10, v15);
      v17(v13, v11, v15);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      v20 = os_log_type_enabled(v18, v19);
      v22 = v0[12];
      v21 = v0[13];
      v23 = v0[10];
      v24 = v0[11];
      if (v20)
      {
        v42 = v19;
        v25 = v0[5];
        v26 = v0[6];
        v40 = v0[4];
        v27 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v43 = v41;
        *v27 = 136446210;
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_100F8A0F8(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
        v39 = static Duration.description<A>(_:_:units:)();
        v29 = v28;
        (*(v25 + 8))(v26, v40);
        v30 = *(v24 + 8);
        v30(v22, v23);
        v30(v21, v23);
        v31 = sub_1000136BC(v39, v29, &v43);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v18, v42, "No location (unauthorized) in: %{public}s", v27, 0xCu);
        sub_100007BAC(v41);
      }

      else
      {

        v30 = *(v24 + 8);
        v30(v22, v23);
        v30(v21, v23);
      }

      v33 = v0[22];
      v32 = v0[23];
      v35 = v0[20];
      v34 = v0[21];
      v36 = v0[14];
      v37 = v0[10];
      sub_100F8A09C();
      swift_allocError();
      swift_willThrow();
      v30(v36, v37);
      v30(v35, v37);
      (*(v33 + 8))(v32, v34);

      v38 = v0[1];

      return v38();
    }

    else
    {
      v5 = v0[3];
      v6 = sub_100F8A0F8(&unk_1016C1980, v4, type metadata accessor for OneShotLocationWrapper, &unk_1013F5264);
      v7 = swift_task_alloc();
      v0[24] = v7;
      v8 = sub_1000BC4D4(&qword_1016B55F0, &qword_1013D6BE0);
      *v7 = v0;
      v7[1] = sub_100F88360;
      v9 = v0[3];

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v5, v6, 0xD000000000000011, 0x8000000101374D90, sub_100F8A0F0, v9, v8);
    }
  }
}

uint64_t sub_100F88360()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100F88C80;
  }

  else
  {
    v4 = sub_100F8848C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F8848C(uint64_t a1)
{
  v91 = v1;
  v2 = v1[2];
  ContinuousClock.now.getter();
  v89 = v2;
  if (v2)
  {
    v3 = qword_1016950F0;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v6 = v1[19];
    v5 = v1[20];
    v8 = v1[17];
    v7 = v1[18];
    v9 = v1[10];
    v10 = v1[11];
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_1016C1810);
    v12 = *(v10 + 16);
    v12(v7, v5, v9);
    v12(v8, v6, v9);
    v13 = v4;
    v14 = Logger.logObject.getter();
    LOBYTE(v5) = static os_log_type_t.default.getter();

    v83 = v5;
    v15 = os_log_type_enabled(v14, v5);
    v16 = v1[22];
    v17 = v1[23];
    v19 = v1[20];
    v18 = v1[21];
    v20 = v1[19];
    v85 = v1[17];
    v87 = v1[18];
    v21 = v1[10];
    v22 = v1[11];
    if (v15)
    {
      log = v14;
      v79 = v1[22];
      v81 = v1[23];
      v23 = v1[8];
      v24 = v1[9];
      v25 = v1[7];
      v68 = v1[6];
      v70 = v1[5];
      v71 = v1[4];
      v77 = v1[21];
      v26 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v26 = 134218498;
      [v13 horizontalAccuracy];
      *(v26 + 4) = v27;
      *(v26 + 12) = 2082;
      v73 = v19;
      v28 = [v13 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100F8A0F8(&qword_1016969A0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v20;
      v31 = v30;
      (*(v23 + 8))(v24, v25);
      v32 = sub_1000136BC(v29, v31, &v90);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2082;
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_100F8A0F8(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
      v33 = static Duration.description<A>(_:_:units:)();
      v35 = v34;
      (*(v70 + 8))(v68, v71);
      v36 = *(v22 + 8);
      v36(v85, v21);
      v36(v87, v21);
      v37 = sub_1000136BC(v33, v35, &v90);

      *(v26 + 24) = v37;
      _os_log_impl(&_mh_execute_header, log, v83, "Obtained %fm / %{public}s location in: %{public}s", v26, 0x20u);
      swift_arrayDestroy();

      v36(v69, v21);
      v36(v73, v21);
      (v79[1].isa)(v81, v77);
    }

    else
    {

      v64 = *(v22 + 8);
      v64(v85, v21);
      v64(v87, v21);
      v64(v20, v21);
      v64(v19, v21);
      (*(v16 + 8))(v17, v18);
    }
  }

  else
  {
    if (qword_1016950F0 != -1)
    {
      swift_once();
    }

    v38 = v1[19];
    v39 = v1[20];
    v41 = v1[15];
    v40 = v1[16];
    v42 = v1[10];
    v43 = v1[11];
    v44 = type metadata accessor for Logger();
    sub_1000076D4(v44, qword_1016C1810);
    v45 = *(v43 + 16);
    v45(v40, v39, v42);
    v45(v41, v38, v42);
    v46 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v46, v86);
    v48 = v1[22];
    v49 = v1[23];
    v51 = v1[20];
    v50 = v1[21];
    v88 = v1[19];
    v52 = v1[15];
    v53 = v1[16];
    v55 = v1[10];
    v54 = v1[11];
    if (v47)
    {
      v80 = v46;
      v84 = v1[22];
      v57 = v1[5];
      v56 = v1[6];
      v72 = v1[4];
      v82 = v1[20];
      v58 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v90 = v78;
      *v58 = 136446210;
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_100F8A0F8(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
      v74 = v50;
      loga = v49;
      v59 = static Duration.description<A>(_:_:units:)();
      v61 = v60;
      (*(v57 + 8))(v56, v72);
      v62 = *(v54 + 8);
      v62(v52, v55);
      v62(v53, v55);
      v63 = sub_1000136BC(v59, v61, &v90);

      *(v58 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v80, v86, "No location in: %{public}s", v58, 0xCu);
      sub_100007BAC(v78);

      v62(v88, v55);
      v62(v82, v55);
      (*(v84 + 8))(loga, v74);
    }

    else
    {

      v65 = *(v54 + 8);
      v65(v52, v55);
      v65(v53, v55);
      v65(v88, v55);
      v65(v51, v55);
      (*(v48 + 8))(v49, v50);
    }
  }

  v66 = v1[1];

  return v66(v89);
}

uint64_t sub_100F88C80()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[11] + 8))(v0[20], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

id sub_100F88DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101699880, &qword_1013F52E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v10 = *(*(a2 + 112) + 16);
  UUID.init()();
  v11 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_1001E1A5C(v6, v9);
  result = swift_endAccess();
  if (!v10)
  {
    return [*(a2 + 120) requestLocation];
  }

  return result;
}

uint64_t sub_100F88F70()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100F88FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100014744;

  return sub_100F89080(a5);
}

uint64_t sub_100F89080(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100F8914C, v1, 0);
}

uint64_t sub_100F8914C()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
LABEL_23:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_8:
      v4 = 0;
      goto LABEL_9;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[6] + 32);
  }

  v4 = v3;
  v5 = v3;
  v6 = sub_1010E1130();

  if (v6)
  {

    goto LABEL_8;
  }

LABEL_9:
  v7 = v0[9];
  v1 = v0[7];
  swift_beginAccess();
  v8 = *(v1 + 112);
  *(v1 + 112) = _swiftEmptyDictionarySingleton;
  v9 = -1;
  v10 = -1 << *(v8 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v8 + 64);
  v12 = (63 - v10) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_17:
      v1 = v0[10];
      v15 = v0[8];
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      (*(v7 + 16))(v1, *(v8 + 56) + *(v7 + 72) * (v16 | (v14 << 6)), v15);
      v0[5] = v4;
      v17 = v4;
      CheckedContinuation.resume(returning:)();
      (*(v7 + 8))(v1, v15);
      if (!v11)
      {
        goto LABEL_13;
      }
    }
  }

  while (1)
  {
LABEL_13:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_17;
    }
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100F894FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100014650;

  return sub_100F89598(a5);
}

uint64_t sub_100F89598(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100F89664, v1, 0);
}

uint64_t sub_100F89664()
{
  v1 = v0[7];
  swift_beginAccess();
  v21 = *(v1 + 112);
  *(v1 + 112) = _swiftEmptyDictionarySingleton;
  if (qword_1016950F0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016C1810);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "CLLocationManager error: %{public}@", v5, 0xCu);
    sub_100288C6C(v6);
  }

  v8 = v0[9];

  v9 = -1;
  v10 = -1 << *(v21 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v21 + 64);
  v12 = (63 - v10) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_12:
      v15 = v0[10];
      v16 = v0[8];
      v17 = v0[6];
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      (*(v8 + 16))(v15, *(v21 + 56) + *(v8 + 72) * (v18 | (v14 << 6)), v16);
      v0[5] = v17;
      swift_errorRetain();
      CheckedContinuation.resume(throwing:)();
      (*(v8 + 8))(v15, v16);
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v21 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_12;
    }
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_100F89A84()
{
  v1 = *(v0 + 16);
  *(v1 + 144) = [*(v1 + 120) authorizationStatus];
  if (qword_1016950F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016C1810);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(v1 + 144);

    _os_log_impl(&_mh_execute_header, v3, v4, "Authorization status: %d", v5, 8u);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100F89D8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100F89A64(a1, v4, v5, v6);
}

uint64_t sub_100F89E40()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C1828);
  sub_1000076D4(v0, qword_1016C1828);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100F89EC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100F894FC(a1, v4, v5, v7, v6);
}

uint64_t sub_100F89F84(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48);
}

uint64_t sub_100F89FDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100F88FE4(a1, v4, v5, v7, v6);
}

unint64_t sub_100F8A09C()
{
  result = qword_1016C1970;
  if (!qword_1016C1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1970);
  }

  return result;
}

uint64_t sub_100F8A0F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100F8A154()
{
  result = qword_1016C1990;
  if (!qword_1016C1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1990);
  }

  return result;
}

void sub_100F8A1C0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  (*(a3 + 16))(a3);
}

uint64_t sub_100F8A2C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v6 - 8);
  v8 = v21 - v7;
  v9 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v10 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10138BBE0;
  v21[1] = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 64) = v15;
  *(v11 + 72) = 0xD000000000000023;
  *(v11 + 80) = 0x80000001013752F0;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "%{public}@: %{public}s", 22, 2, v11);

  v16 = *sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v17 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v10, "removeLocalAccountData", 22, 2, _swiftEmptyArrayStorage);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v16;
  v19[5] = a1;
  v19[6] = a2;

  sub_10025EDD4(0, 0, v8, &unk_1013F5498, v19);
}

uint64_t sub_100F8A580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD00000000000001BLL;
  *(v8 + 80) = 0x80000001013752D0;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "%{public}@: %{public}s", 22, 2, v8);

  sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  sub_10069B0D0(sub_100F98DE4, v13);
}

uint64_t sub_100F8A7EC(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, id, void *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  v13 = a1;
  a5(v11, v13, v12);
  _Block_release(v12);
  _Block_release(v12);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100F8A914(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD000000000000017;
  *(v8 + 80) = 0x80000001013752B0;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "%{public}@: %{public}s", 22, 2, v8);

  sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138C0D0;
  v14 = SPBeaconTypeSelfBeaconing;
  *(inited + 32) = SPBeaconTypeSelfBeaconing;
  v15 = SPBeaconTypeDurian;
  v16 = SPBeaconTypeAccessory;
  *(inited + 40) = SPBeaconTypeDurian;
  *(inited + 48) = v16;
  v17 = SPBeaconTypeHele;
  v18 = SPBeaconTypeLocalFindable;
  *(inited + 56) = SPBeaconTypeHele;
  *(inited + 64) = v18;
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  v23 = v18;
  v24 = sub_100B11268(inited);
  swift_setDeallocating();
  type metadata accessor for SPBeaconType(0);
  swift_arrayDestroy();
  sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10000AC0C(v24, 0, 0, a1, a2);
}

uint64_t sub_100F8AB94(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v10 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 64) = v15;
  *(v11 + 72) = 0xD00000000000003ALL;
  *(v11 + 80) = 0x8000000101375270;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "%{public}@: %{public}s", 22, 2, v11);

  sub_1000035D0((v5 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v5 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_10000AC0C(a1, a2 & 1, a3 & 1, a4, a5);
}

uint64_t sub_100F8AD24(uint64_t a1, uint64_t a2)
{
  v5 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  *(v7 + 72) = 0xD00000000000001ELL;
  *(v7 + 80) = 0x8000000101375250;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "%{public}@: %{public}s", 22, 2, v7);

  sub_1000035D0((v2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_1006AFA18(a1, a2);
}

uint64_t sub_100F8AED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 64) = v13;
  *(v9 + 72) = 0xD000000000000026;
  *(v9 + 80) = 0x8000000101375220;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "%{public}@: %{public}s", 22, 2, v9);

  sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_100697FA8(a1, a2, a3);
}

uint64_t sub_100F8B55C(char a1)
{
  v2 = *(*sub_1000035D0((v1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24)) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_theftDeterrenceStateManager);
  type metadata accessor for Transaction();
  result = static Transaction.named<A>(_:with:)();
  if (*(v2 + 120))
  {

    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t sub_100F8B7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v23 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v9 = &v21[-v8];
  v22 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v10 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10138BBE0;
  ObjectType = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 64) = v15;
  *(v11 + 72) = 0xD000000000000037;
  *(v11 + 80) = 0x80000001013751C0;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v10, "%{public}@: %{public}s", 22, 2, v11);

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  (*(v4 + 16))(&v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v23, v3);
  v17 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v19 = v25;
  *(v18 + 4) = v24;
  *(v18 + 5) = v19;
  (*(v4 + 32))(&v18[v17], v6, v3);

  sub_10025EDD4(0, 0, v9, &unk_1013F5488, v18);
}

uint64_t sub_100F8BAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 64) = v13;
  *(v9 + 72) = 0xD00000000000001CLL;
  *(v9 + 80) = 0x800000010135CBE0;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "%{public}@: %{public}s", 22, 2, v9);

  sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_1006B3738(a1, a2, a3);
}

void sub_100F8BD10(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_1000BC4D4(&unk_1016C1A90, &unk_1013F54D0);
  sub_100F989D0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_100F8BDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD000000000000029;
  *(v10 + 80) = 0x800000010135CAD0;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "%{public}@: %{public}s", 22, 2, v10);

  sub_1000035D0((v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_1006B2B64(a1, a2, a3, a4);
}

uint64_t sub_100F8C2D8(uint64_t a1, uint64_t a2)
{
  v5 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  *(v7 + 72) = 0xD000000000000017;
  *(v7 + 80) = 0x800000010135CA10;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "%{public}@: %{public}s", 22, 2, v7);

  sub_1000035D0((v2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_1006C371C(a1, a2);
}

uint64_t sub_100F8C4D4(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, void (*a6)(char *, id, id, void *))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v14);
  v15 = a4;
  v16 = a1;
  a6(v13, v15, v16, v14);
  _Block_release(v14);
  _Block_release(v14);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100F8C750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v74 = a4;
  v75 = a5;
  v78 = a3;
  v79 = a2;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v81 = &v62 - v10;
  v76 = type metadata accessor for UUID();
  v80 = *(v76 - 8);
  v11 = __chkstk_darwin(v76);
  v73 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v12;
  __chkstk_darwin(v11);
  v68 = &v62 - v13;
  v82 = type metadata accessor for Date();
  v72 = *(v82 - 8);
  v14 = __chkstk_darwin(v82);
  v71 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v15;
  __chkstk_darwin(v14);
  v67 = &v62 - v16;
  v17 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  v66 = xmmword_10138BBE0;
  *(v19 + 16) = xmmword_10138BBE0;
  v83[0] = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  v23 = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = v23;
  *(v19 + 64) = v23;
  *(v19 + 72) = 0xD000000000000038;
  *(v19 + 80) = 0x8000000101375180;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "%{public}@: %{public}s", 22, 2, v19);

  v24 = sub_1000035D0((v6 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v6 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v77 = a1;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = *v24;
    v26 = static os_log_type_t.info.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v66;
    v28 = *v25;
    *&v66 = v25;
    v83[0] = v28;
    sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
    v29 = String.init<A>(describing:)();
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v23;
    *(v27 + 32) = v29;
    *(v27 + 40) = v30;
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v23;
    *(v27 + 72) = 0xD000000000000038;
    *(v27 + 80) = 0x8000000101375180;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v18, "%@: %@", 6, 2, v27);

    if (qword_101694B80 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v31 = type metadata accessor for Logger();
  sub_1000076D4(v31, qword_10177B7F8);
  v32 = v72;
  v33 = v67;
  v34 = v82;
  v65 = *(v72 + 16);
  v65(v67, v79, v82);
  v35 = v80;
  v36 = v68;
  v37 = v76;
  v64 = *(v80 + 16);
  v64(v68, v78, v76);
  v38 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  v39 = os_log_type_enabled(v38, v63);
  v40 = v77;
  if (v39)
  {
    v41 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v83[0] = v62;
    *v41 = 134219011;
    *(v41 + 4) = a6;
    *(v41 + 12) = 2048;
    *(v41 + 14) = v40;
    *(v41 + 22) = 2080;
    sub_100F989D0(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    (*(v32 + 8))(v33, v82);
    v45 = sub_1000136BC(v42, v44, v83);
    v37 = v76;

    *(v41 + 24) = v45;
    *(v41 + 32) = 2160;
    *(v41 + 34) = 1752392040;
    *(v41 + 42) = 2081;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    (*(v80 + 8))(v36, v37);
    v49 = sub_1000136BC(v46, v48, v83);
    v35 = v80;

    *(v41 + 44) = v49;
    _os_log_impl(&_mh_execute_header, v38, v63, "        setAlignmentUncertainty called: uncertainty: %f, index: %llu, date: %s, beaconUUID: %{private,mask.hash}s", v41, 0x34u);
    swift_arrayDestroy();

    v34 = v82;
  }

  else
  {

    (*(v35 + 8))(v36, v37);
    (*(v32 + 8))(v33, v34);
  }

  v50 = type metadata accessor for TaskPriority();
  (*(*(v50 - 8) + 56))(v81, 1, 1, v50);
  v51 = v73;
  v64(v73, v78, v37);
  v52 = v71;
  v65(v71, v79, v34);
  v53 = (*(v35 + 80) + 48) & ~*(v35 + 80);
  v54 = v35;
  v55 = (v70 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (*(v32 + 80) + v55 + 8) & ~*(v32 + 80);
  v57 = (v69 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  *(v58 + 2) = 0;
  *(v58 + 3) = 0;
  v59 = v37;
  v60 = v75;
  *(v58 + 4) = v74;
  *(v58 + 5) = v60;
  (*(v54 + 32))(&v58[v53], v51, v59);
  *&v58[v55] = v77;
  (*(v32 + 32))(&v58[v56], v52, v82);
  *&v58[v57] = v66;

  sub_10025EDD4(0, 0, v81, &unk_1013F5480, v58);
}

uint64_t sub_100F8D1EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, void (*a6)(uint64_t, char *, id, void *))
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v14);
  v15 = a1;
  a6(a3, v13, v15, v14);
  _Block_release(v14);
  _Block_release(v14);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100F8D444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0xD000000000000025;
  *(v10 + 80) = 0x8000000101375150;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "%{public}@: %{public}s", 22, 2, v10);

  sub_1000035D0((v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  type metadata accessor for BeaconManagerService(0);

  sub_1006DC930(a1, sub_100F98B04, v15);
}

void sub_100F8D638(__int128 *a1, void (*a2)(id))
{
  v3 = a1[1];
  v4 = a1[3];
  v23 = a1[2];
  v24 = v4;
  v25 = *(a1 + 64);
  v21 = *a1;
  v22 = v3;
  if (*(a1 + 1) >> 60 == 11)
  {
    v5 = 0;
  }

  else
  {
    v17 = *(a1 + 64);
    v14 = *(a1 + 14);
    v15 = *(a1 + 15);
    v6 = *(a1 + 12);
    v13 = *(a1 + 13);
    v7 = *(a1 + 4);
    v8 = *(a1 + 5);
    v9 = *(a1 + 3);
    v10 = *(a1 + 9);
    v11 = *(a1 + 16);
    v12 = objc_allocWithZone(SPTagUserStats);
    v19[2] = v23;
    v19[3] = v24;
    v20 = v25;
    v19[0] = v21;
    v19[1] = v22;
    sub_100766AC0(v19, v18);
    v5 = [v12 init];
    [v5 setOverflowFlag:v11];
    [v5 setCrashCount:v10];
    [v5 setMultiTime:v9];
    [v5 setNearOwnerTime:v7];
    [v5 setWildTime:v8];
    [v5 setOwnerPlaySoundCount:v6];
    [v5 setOwnerPlaySoundTime:v13];
    [v5 setRangingCount:v14];
    [v5 setRangingTime:v15];
    [v5 setVersion:v17];

    sub_10000B3A8(a1, &qword_1016C1A48, &unk_1013F5470);
  }

  a2(v5);
}

uint64_t sub_100F8D860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 64) = v13;
  *(v9 + 72) = 0xD00000000000002BLL;
  *(v9 + 80) = 0x8000000101375120;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "%{public}@: %{public}s", 22, 2, v9);

  sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_10069C89C(a1, a2, a3);
}

uint64_t sub_100F8DA1C(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = a1;
  a7(v14, a6, v16);

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100F8DB60(uint64_t a1, uint64_t a2)
{
  v5 = static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  *(v7 + 72) = 0xD000000000000021;
  *(v7 + 80) = 0x80000001013750F0;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "%{public}@: %{public}s", 22, 2, v7);

  sub_1000035D0((v2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_1006CC0A0(a1, a2);
}

uint64_t sub_100F8DF5C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(a1, 0);
  }

  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  swift_willThrowTypedImpl();
  swift_errorRetain();
  a3(0, a1);
  sub_1001DB7B8(a1, 1);
  return sub_1001DB7B8(a1, 1);
}

void sub_100F8E134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_100F8E3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_100F8E444;

  return sub_100715BF4();
}

uint64_t sub_100F8E444(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_100F8E6C4;
  }

  else
  {
    v4 = sub_100F8E558;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100F8E558()
{
  v2 = v0[6];
  v1 = v0[7];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v2;
  sub_1000BC4D4(&qword_1016C1A58, &unk_1013F54B0);
  sub_100F98FA8();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    v5 = v0[3];
    swift_errorRetain();
    v5(0, 0xF000000000000000, v1);
  }

  else
  {
    v6 = v0[3];
    v7 = v3;
    v8 = v4;

    sub_100017D5C(v7, v8);
    v6(v7, v8, 0);
    sub_100016590(v7, v8);
    sub_100016590(v7, v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F8E6C4()
{
  v1 = v0[7];
  v2 = v0[3];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100F8E8A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD000000000000023;
  *(v8 + 80) = 0x8000000101353A20;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "%{public}@: %{public}s", 22, 2, v8);

  sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  sub_1003CDF00(sub_100F993D4, v13);
}

uint64_t sub_100F8EA94(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 64) = v13;
  *(v9 + 72) = 0xD000000000000026;
  *(v9 + 80) = 0x8000000101353970;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "%{public}@: %{public}s", 22, 2, v9);

  sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  sub_1003CE3B0(a1, sub_1007B78F8, v14);
}

uint64_t sub_100F8EC90(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 64) = v13;
  *(v9 + 72) = 0xD000000000000022;
  *(v9 + 80) = 0x8000000101353300;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "%{public}@: %{public}s", 22, 2, v9);

  sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  sub_1003CF218(a1, sub_100F98AC4, v14);
}

uint64_t sub_100F8EE8C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 64) = v13;
  *(v9 + 72) = 0xD000000000000024;
  *(v9 + 80) = 0x8000000101352920;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "%{public}@: %{public}s", 22, 2, v9);

  sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  sub_1003D2B68(a1, sub_100F993D4, v14);
}

uint64_t sub_100F8F088(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_100F8F36C(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_100F8F40C(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_100F8F6C4(char *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  sub_1000035D0(&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation], *&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24]);
  v11 = a1;
  a6(a5, v10);
}

id sub_100F8F79C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BeaconManagerTrampoline();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100F8F840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100F8F864, 0, 0);
}

uint64_t sub_100F8F864()
{
  v1 = (v0[3] + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[6];
  sub_1000035D0(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100F8F9A0;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t sub_100F8F9A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_100F8FB50;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_100F8FAC8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F8FAC8()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100F8FB50()
{
  v15 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B810);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v0[2] = v4;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000136BC(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "bluetoothConnectionKeys error: %{public}s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v10 = v0[8];
  v11 = v0[5];
  swift_errorRetain();
  v11(0, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100F8FE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = v12;
  v7[6] = v13;
  v7[3] = a3;
  v7[4] = a7;
  v8 = type metadata accessor for UUID();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = type metadata accessor for KeySyncMetadata(0);
  v7[12] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[13] = v9;
  *v9 = v7;
  v9[1] = sub_100F8FF8C;

  return daemon.getter();
}

uint64_t sub_100F8FF8C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100F989D0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100F989D0(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100F90168;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F90168(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_100F90490;
  }

  else
  {

    v4 = sub_100F90284;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100F90284()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[4];
  (*(v0[8] + 16))(v2, v0[3], v0[7]);
  v4 = (v2 + v1[6]);
  v4[3] = &type metadata for PrimaryIndex;
  v4[4] = sub_10002A2B8();
  *v4 = v3;
  static Date.trustedNow.getter(v2 + v1[7]);
  *(v2 + v1[5]) = 4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_100F9037C;
  v6 = v0[12];

  return sub_1010CDAC4(v6);
}

uint64_t sub_100F9037C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100F90A94;
  }

  else
  {
    v2 = sub_100F909E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F90490()
{
  v42 = v0;

  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 160) == 1)
  {

    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 80);
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = *(v0 + 24);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B810);
    (*(v4 + 16))(v2, v5, v3);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 80);
    v11 = *(v0 + 56);
    v12 = *(v0 + 64);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v41 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_100F989D0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v10, v11);
      v18 = sub_1000136BC(v15, v17, &v41);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Ignoring out of sync key during successfulConnection, beacon: %{private,mask.hash}s.", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {

      (*(v12 + 8))(v10, v11);
    }

    (*(v0 + 40))(0);
  }

  else
  {

    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    v21 = *(v0 + 56);
    v22 = *(v0 + 24);
    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177B810);
    (*(v20 + 16))(v19, v22, v21);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v26 = os_log_type_enabled(v24, v25);
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 56);
    if (v26)
    {
      v30 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v30 = 138543875;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v31;
      *v39 = v31;
      *(v30 + 12) = 2160;
      *(v30 + 14) = 1752392040;
      *(v30 + 22) = 2081;
      sub_100F989D0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v28 + 8))(v27, v29);
      v35 = sub_1000136BC(v32, v34, &v41);

      *(v30 + 24) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Error from successfulConnection: %{public}@, beacon: %{private,mask.hash}s.", v30, 0x20u);
      sub_10000B3A8(v39, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v40);
    }

    else
    {

      (*(v28 + 8))(v27, v29);
    }

    v36 = *(v0 + 40);
    swift_errorRetain();
    v36(v1);
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_100F909E0()
{
  v1 = v0[12];
  v2 = v0[5];

  sub_100F99274(v1, type metadata accessor for KeySyncMetadata);
  v2(0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100F90A94()
{
  v43 = v0;
  v1 = *(v0 + 96);

  sub_100F99274(v1, type metadata accessor for KeySyncMetadata);
  v2 = *(v0 + 152);
  *(v0 + 16) = v2;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 160) == 1)
  {

    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 80);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v6 = *(v0 + 24);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177B810);
    (*(v5 + 16))(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
    v13 = *(v0 + 64);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v42 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_100F989D0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_1000136BC(v16, v18, &v42);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Ignoring out of sync key during successfulConnection, beacon: %{private,mask.hash}s.", v14, 0x16u);
      sub_100007BAC(v15);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

    (*(v0 + 40))(0);
  }

  else
  {

    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 56);
    v23 = *(v0 + 24);
    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177B810);
    (*(v21 + 16))(v20, v23, v22);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 64);
    v28 = *(v0 + 72);
    v30 = *(v0 + 56);
    if (v27)
    {
      v31 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      *v31 = 138543875;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v32;
      *v40 = v32;
      *(v31 + 12) = 2160;
      *(v31 + 14) = 1752392040;
      *(v31 + 22) = 2081;
      sub_100F989D0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v29 + 8))(v28, v30);
      v36 = sub_1000136BC(v33, v35, &v42);

      *(v31 + 24) = v36;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error from successfulConnection: %{public}@, beacon: %{private,mask.hash}s.", v31, 0x20u);
      sub_10000B3A8(v40, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v41);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }

    v37 = *(v0 + 40);
    swift_errorRetain();
    v37(v2);
  }

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_100F913BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_100F913E4, 0, 0);
}

uint64_t sub_100F913E4()
{
  v1 = *(v0 + 24);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation);
  v3 = v2[3];
  v4 = v2[6];
  sub_1000035D0(v2, v3);
  v5 = sub_100F97734(v1);
  *(v0 + 48) = v5;
  v9 = (*(v4 + 16) + **(v4 + 16));
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_100F9153C;
  v7 = *(v0 + 64);

  return v9(v5, v7, v3, v4);
}

uint64_t sub_100F9153C()
{

  return _swift_task_switch(sub_100A7327C, 0, 0);
}

uint64_t sub_100F9178C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UUID();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100F918C4, 0, 0);
}

uint64_t sub_100F918C4()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  v5 = (v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation);
  v6 = v5[3];
  v7 = v5[6];
  sub_1000035D0(v5, v6);
  v8 = *(v3 + 16);
  v0[13] = v8;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v4, v2);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v12 = (*(v7 + 24) + **(v7 + 24));
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_100F91A64;
  v10 = v0[12];

  return v12(v10, v6, v7);
}

uint64_t sub_100F91A64()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100F91E2C;
  }

  else
  {
    v5 = sub_100F91BD4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F91BD4()
{
  v21 = v0;
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C0A8);
  v1(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 48);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully paired pencil: %{public}s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  (*(v0 + 32))(0);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100F91E2C()
{
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C0A8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error pairing pencil: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = v0[16];
  v8 = v0[4];

  swift_errorRetain();
  v8(v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F92220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UUID();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100F92358, 0, 0);
}

uint64_t sub_100F92358()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  v5 = (v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation);
  v6 = v5[3];
  v7 = v5[6];
  sub_1000035D0(v5, v6);
  v8 = *(v3 + 16);
  v0[13] = v8;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v4, v2);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v12 = (*(v7 + 32) + **(v7 + 32));
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_100F924F8;
  v10 = v0[12];

  return v12(v10, v6, v7);
}
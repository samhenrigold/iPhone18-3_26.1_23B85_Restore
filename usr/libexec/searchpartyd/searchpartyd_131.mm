uint64_t sub_100E8DB28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E8DBFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E8DCD0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 216) = a1;
  sub_1000BC4D4(&qword_1016A4738, &qword_1013B10B0);
  *(v5 + 48) = swift_task_alloc();
  v7 = type metadata accessor for CorrelationIdentifierMap();
  *(v5 + 56) = v7;
  *(v5 + 64) = *(v7 - 8);
  *(v5 + 72) = swift_task_alloc();
  type metadata accessor for PeerCommunicationIdentifier(0);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v5 + 96) = v8;
  *v8 = v5;
  v8[1] = sub_100E8DE54;

  return sub_100E8BEF8(a4);
}

uint64_t sub_100E8DE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[13] = a1;
  v5[14] = a2;
  v5[15] = a3;
  v5[16] = v3;

  if (v3)
  {
    v6 = sub_100E8E9FC;
  }

  else
  {
    v6 = sub_100E8DF6C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100E8DF6C()
{
  v81 = v0;
  v1 = *(v0 + 120);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (v1)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v0 + 104);
    sub_100E902C0(*(v0 + 40), v5);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_10000B3A8(*(v0 + 48), &qword_1016A4738, &qword_1013B10B0);
      if (qword_101694F20 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000076D4(v7, qword_10177C1A0);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = *(v0 + 112);
        v11 = v6;
        v6 = *(v0 + 16);
        v12 = *(v0 + 24);
        v13 = swift_slowAlloc();
        v80[0] = swift_slowAlloc();
        *v13 = 136315394;
        v14 = v6;
        LOBYTE(v6) = v11;
        *(v13 + 4) = sub_1000136BC(v14, v12, v80);
        *(v13 + 12) = 2080;

        v15 = sub_1000136BC(v10, v1, v80);

        *(v13 + 14) = v15;
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);
        _os_log_impl(&_mh_execute_header, v8, v9, "No map provided while looking up messaging destination %s and peer trust %s.", v13, 0x16u);
        swift_arrayDestroy();
      }

LABEL_24:
      if (p_weak_ivar_lyt[484] != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      *(v0 + 136) = sub_1000076D4(v51, qword_10177C1A0);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v55 = *(v0 + 16);
        v54 = *(v0 + 24);
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v80[0] = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_1000136BC(v55, v54, v80);
        _os_log_impl(&_mh_execute_header, v52, v53, "Using fallback logic to determine match for %s.", v56, 0xCu);
        sub_100007BAC(v57);
      }

      if (qword_1016944B8 != -1)
      {
        swift_once();
      }

      *(v0 + 144) = qword_101699690;
      v58 = swift_task_alloc();
      *(v0 + 152) = v58;
      *v58 = v0;
      v58[1] = sub_100E8ECA4;
      v59 = *(v0 + 112);

      return sub_101269AA4(v6, v59, v1);
    }

    v29 = *(v0 + 128);
    v30 = *(v0 + 112);
    (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 48), *(v0 + 56));
    v31 = sub_1004F0890(v6, v30, v1);
    if (v29)
    {
      if (qword_101694F20 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_1000076D4(v37, qword_10177C1A0);

      swift_errorRetain();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v74 = *(v0 + 112);
        v75 = *(v0 + 64);
        v76 = *(v0 + 56);
        v77 = *(v0 + 72);
        v40 = *(v0 + 16);
        v73 = *(v0 + 24);
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v80[0] = swift_slowAlloc();
        *v41 = 138543874;
        swift_errorRetain();
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v43;
        *v42 = v43;
        *(v41 + 12) = 2080;
        *(v41 + 14) = sub_1000136BC(v40, v73, v80);
        *(v41 + 22) = 2080;

        v44 = sub_1000136BC(v74, v1, v80);

        *(v41 + 24) = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "Map lookup error: %{public}@ for messaging destination %s peer trust %s.", v41, 0x20u);
        sub_10000B3A8(v42, &qword_10169BB30, &unk_10138B3C0);

        swift_arrayDestroy();

        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        (*(v75 + 8))(v77, v76);
      }

      else
      {
        v49 = *(v0 + 64);
        v48 = *(v0 + 72);
        v50 = *(v0 + 56);

        (*(v49 + 8))(v48, v50);
      }

      goto LABEL_24;
    }

    v33 = v32;
    v34 = v31;
    v35 = sub_1004F0890(*(v0 + 216), *(v0 + 16), *(v0 + 24));
    if (v34 == v35 && v33 == v36)
    {

LABEL_37:
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

      v45 = 1;
      goto LABEL_20;
    }

    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v60)
    {
      goto LABEL_37;
    }

    if (qword_101694F20 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1000076D4(v61, qword_10177C1A0);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = *(v0 + 112);
      v65 = *(v0 + 64);
      v78 = *(v0 + 56);
      v79 = *(v0 + 72);
      v66 = *(v0 + 16);
      v67 = *(v0 + 24);
      v68 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v68 = 136315394;
      *(v68 + 4) = sub_1000136BC(v66, v67, v80);
      *(v68 + 12) = 2080;
      v69 = sub_1000136BC(v64, v1, v80);

      *(v68 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v62, v63, "Did not find matching correlation identifier for messaging destination %s and peer trust %s in map.", v68, 0x16u);
      swift_arrayDestroy();

      (*(v65 + 8))(v79, v78);
    }

    else
    {
      v71 = *(v0 + 64);
      v70 = *(v0 + 72);
      v72 = *(v0 + 56);

      (*(v71 + 8))(v70, v72);
    }
  }

  else
  {
    if (qword_101694F20 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 80);
    v17 = *(v0 + 32);
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177C1A0);
    sub_100E90330(v17, v16, type metadata accessor for PeerCommunicationIdentifier);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 80);
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v80[0] = v24;
      *v23 = 136315138;
      v25 = sub_100988F40();
      v27 = v26;
      sub_100E90398(v22, type metadata accessor for PeerCommunicationIdentifier);
      v28 = sub_1000136BC(v25, v27, v80);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "Did not find messagingDestination for %s.", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {

      sub_100E90398(v22, type metadata accessor for PeerCommunicationIdentifier);
    }
  }

  v45 = 0;
LABEL_20:

  v46 = *(v0 + 8);

  return v46(v45);
}

uint64_t sub_100E8E9FC()
{
  v19 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C1A0);
  sub_100E90330(v2, v1, type metadata accessor for PeerCommunicationIdentifier);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    v11 = sub_100988F40();
    v13 = v12;
    sub_100E90398(v7, type metadata accessor for PeerCommunicationIdentifier);
    v14 = sub_1000136BC(v11, v13, &v18);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error finding messaging destination for %s, %{public}@.", v8, 0x16u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {

    sub_100E90398(v7, type metadata accessor for PeerCommunicationIdentifier);
  }

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_100E8ECA4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = v2;

  if (v2)
  {
    v5 = sub_100E8F0F0;
  }

  else
  {
    v5 = sub_100E8EDBC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E8EDBC()
{
  v16 = v0;
  if (*(v0 + 168))
  {
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v1[1] = sub_100E8EFD0;
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 216);

    return sub_101269AA4(v4, v2, v3);
  }

  else
  {

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 120);
    if (v8)
    {
      v10 = *(v0 + 112);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      v13 = sub_1000136BC(v10, v9, &v15);

      *(v11 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Did not find correlation identifier for peer trust %s.", v11, 0xCu);
      sub_100007BAC(v12);
    }

    else
    {
    }

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_100E8EFD0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {

    v5 = sub_100E8F668;
  }

  else
  {
    v5 = sub_100E8F348;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E8F0F0()
{
  v14 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[15];
    v12 = v0[14];
    v4 = v0[2];
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136315650;
    *(v6 + 4) = sub_1000136BC(v4, v5, &v13);
    *(v6 + 12) = 2080;
    v8 = sub_1000136BC(v12, v3, &v13);

    *(v6 + 14) = v8;
    *(v6 + 22) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Correlation identifier messaging destination %s peer trust %s lookup error: %{public}@.", v6, 0x20u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_100E8F348()
{
  v22 = v0;
  v1 = v0[25];
  if (v1)
  {
    if (v0[20] == v0[24] && v0[21] == v1)
    {
      swift_bridgeObjectRelease_n();
LABEL_11:

      v10 = 1;
      goto LABEL_17;
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      goto LABEL_11;
    }

    v4 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    v12 = os_log_type_enabled(v4, v11);
    v13 = v0[15];
    if (!v12)
    {

      goto LABEL_16;
    }

    v14 = v0[14];
    v16 = v0[2];
    v15 = v0[3];
    v17 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_1000136BC(v16, v15, &v21);
    *(v17 + 12) = 2080;
    v18 = sub_1000136BC(v14, v13, &v21);

    *(v17 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v4, v11, "The messaging destination %s does not match correlation identifier for peer trust %s.", v17, 0x16u);
    swift_arrayDestroy();

    goto LABEL_14;
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000136BC(v7, v6, &v21);
    _os_log_impl(&_mh_execute_header, v4, v5, "Did not find correlation identifier for messaging destination %s.", v8, 0xCu);
    sub_100007BAC(v9);

LABEL_14:
  }

LABEL_16:
  v10 = 0;
LABEL_17:

  v19 = v0[1];

  return v19(v10);
}

uint64_t sub_100E8F668()
{
  v14 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[15];
    v12 = v0[14];
    v4 = v0[2];
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136315650;
    *(v6 + 4) = sub_1000136BC(v4, v5, &v13);
    *(v6 + 12) = 2080;
    v8 = sub_1000136BC(v12, v3, &v13);

    *(v6 + 14) = v8;
    *(v6 + 22) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Correlation identifier messaging destination %s peer trust %s lookup error: %{public}@.", v6, 0x20u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_100E8F8C0()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v6)
  {
    return 0;
  }

  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 primaryAuthKitAccount];

  if (!v3)
  {
    return 1;
  }

  v4 = [v1 sharedInstance];
  v5 = [v4 userUnderAgeForAccount:v3];

  return v5;
}

uint64_t sub_100E8FA04(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100E89C00(a1, v6, v7, v1 + v5);
}

unint64_t sub_100E8FB24()
{
  result = qword_1016BD738;
  if (!qword_1016BD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD738);
  }

  return result;
}

uint64_t sub_100E8FB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a3;
  v5[4] = a4;
  v5[2] = a1;
  v6 = type metadata accessor for UUID();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100E8FC5C, v4, 0);
}

uint64_t sub_100E8FC5C()
{
  v22 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C1A0);
  (*(v2 + 16))(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v19 = v0[3];
    v20 = v0[4];
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v12 = 136446723;
    sub_100E9056C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v21);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    *(v12 + 24) = sub_1000136BC(v19, v20, &v21);
    _os_log_impl(&_mh_execute_header, v6, v7, "Message %{public}s delivered successfully from %{private,mask.hash}s.", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100E8FEF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = v11;
  *(v9 + 80) = v8;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 88) = a4;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  return _swift_task_switch(sub_100E8FF28, v8, 0);
}

uint64_t sub_100E8FF28()
{
  v33 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C1A0);
  sub_100017D5C(v2, v1);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_100016590(v2, v1);

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 40);
    v30 = *(v0 + 24);
    v31 = *(v0 + 32);
    v9 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v10 = 136446723;
    sub_100D47A68(v9, v8, v7, v6);
    v13 = sub_1000136BC(v11, v12, &v32);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    *(v10 + 24) = sub_1000136BC(v30, v31, &v32);
    _os_log_impl(&_mh_execute_header, v4, v5, "Message %{public}s received from %{private,mask.hash}s.", v10, 0x20u);
    swift_arrayDestroy();
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136315138;
    type metadata accessor for Transaction();
    result = static Transaction.current.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = result;
    sub_100E9056C(&qword_1016BA4E8, 255, &type metadata accessor for Transaction, &protocol conformance descriptor for Transaction);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;

    v22 = sub_1000136BC(v19, v21, &v32);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "txn: %s", v16, 0xCu);
    sub_100007BAC(v17);
  }

  if (*(*(v0 + 80) + 128))
  {
    v24 = *(v0 + 64);
    v23 = *(v0 + 72);
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    v27 = *(v0 + 40);
    v28 = *(v0 + 88);

    sub_1010C8C10(v28, v27, v26, v25, v24, v23);
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100E902C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A4738, &qword_1013B10B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100E90330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E90398(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100E903F8(void *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1001BA6C8;

  return sub_100E85040(a1, v5, v4);
}

unint64_t sub_100E904A0()
{
  result = qword_1016BD740;
  if (!qword_1016BD740)
  {
    sub_1000BC580(&qword_1016BA708, &qword_1013EBDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD740);
  }

  return result;
}

uint64_t sub_100E90504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E9056C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_100E905C8()
{
  result = qword_1016BD750;
  if (!qword_1016BD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD750);
  }

  return result;
}

uint64_t sub_100E9063C(void *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1000BC4D4(&qword_1016BD988, &qword_1013EBF58);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = sub_1000BC4D4(&qword_1016BD990, &qword_1013EBF60);
  v12 = *(v11 - 8);
  v23 = v11;
  v24 = v12;
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  v25 = a1;

  sub_1000BC4D4(&qword_1016BD998, &qword_1013EBF68);
  sub_1000BC4D4(&qword_1016BD9A0, &qword_1013EBF70);
  sub_1000041A4(&qword_1016BD9A8, &qword_1016BD998, &qword_1013EBF68, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.compactMap<A>(_:)();

  v25 = *(v2 + 24);
  v15 = v25;
  v16 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_1000BC488();
  sub_1000041A4(&qword_1016BD9B0, &qword_1016BD988, &qword_1013EBF58, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_100E92FE0(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v17 = v15;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v6, &unk_1016B0FE0, &unk_101391980);

  (*(v8 + 8))(v10, v7);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100E923C8;
  *(v18 + 24) = v2;
  sub_1000041A4(&qword_1016BD9B8, &qword_1016BD990, &qword_1013EBF60, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v19 = v23;
  v20 = Publisher<>.sink(receiveValue:)();

  (*(v24 + 8))(v14, v19);
  *(v2 + 40) = v20;
}

uint64_t sub_100E90A5C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for BeaconKeyManager.KeyCriteria(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for OwnedBeaconRecord(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  v15 = type metadata accessor for BeaconKeyManager.PersistenceInstruction(0);
  sub_100E92F78(a1 + *(v15 + 24), v7, type metadata accessor for BeaconKeyManager.KeyCriteria);
  sub_100AA33AC(v7, v10);

  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 8))(v7, v16);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &unk_1016A9A20, &qword_10138B280);
    v17 = sub_1000BC4D4(&qword_1016BD9A0, &qword_1013EBF70);
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }

  else
  {
    sub_100E92E80(v10, v14, type metadata accessor for OwnedBeaconRecord);
    v19 = sub_1000BC4D4(&qword_1016BD9A0, &qword_1013EBF70);
    v20 = *(v19 + 48);
    sub_100E92E80(v14, a3, type metadata accessor for OwnedBeaconRecord);
    sub_100E92F78(a1, a3 + v20, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
    return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
  }
}

uint64_t sub_100E90D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a3 + 24);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v13 = type metadata accessor for Transaction();
    __chkstk_darwin(v13);
    *&v14[-32] = a3;
    *&v14[-24] = a1;
    *&v14[-16] = a2;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100E90EEC()
{
  v87 = type metadata accessor for UUID();
  v81 = *(v87 - 8);
  v1 = __chkstk_darwin(v87);
  v83 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v73 = &v70 - v3;
  v4 = sub_1000BC4D4(&qword_1016BD978, &qword_1013EBF48);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v70 - v8;
  v79 = type metadata accessor for Date();
  v10 = *(v79 - 8);
  v11 = __chkstk_darwin(v79);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v70 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v0 + 24);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if (v21)
  {
    v78 = v14;
    Date.init()();
    swift_beginAccess();
    v71 = v0;
    v22 = *(v0 + 56);
    v23 = *(v22 + 64);
    v80 = v22 + 64;
    v24 = 1 << *(v22 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v23;
    v27 = (v24 + 63) >> 6;
    v72 = v81 + 16;
    v85 = (v81 + 32);
    v75 = (v10 + 16);
    v77 = (v10 + 8);
    v82 = (v81 + 8);
    v74 = v22;

    v28 = 0;
    v70 = xmmword_101385D80;
    v29 = v83;
    v84 = v7;
    v86 = v9;
    v30 = v80;
    if (!v26)
    {
      goto LABEL_8;
    }

    do
    {
      while (1)
      {
        v31 = v28;
LABEL_16:
        v34 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v35 = v34 | (v31 << 6);
        v36 = v74;
        v37 = v81;
        v38 = v73;
        v39 = v87;
        (*(v81 + 16))(v73, *(v74 + 48) + *(v81 + 72) * v35, v87);
        v40 = *(*(v36 + 56) + 8 * v35);
        v41 = sub_1000BC4D4(&qword_1016BD980, &qword_1013EBF50);
        v42 = *(v41 + 48);
        v43 = *(v37 + 32);
        v7 = v84;
        v43(v84, v38, v39);
        *&v7[v42] = v40;
        (*(*(v41 - 8) + 56))(v7, 0, 1, v41);

        v29 = v83;
        v9 = v86;
LABEL_17:
        sub_100E92350(v7, v9);
        v44 = sub_1000BC4D4(&qword_1016BD980, &qword_1013EBF50);
        if ((*(*(v44 - 8) + 48))(v9, 1, v44) == 1)
        {

          (*v77)(v78, v79);
          return;
        }

        v45 = v7;
        v46 = *&v9[*(v44 + 48)];
        v47 = v87;
        (*v85)(v29, v9, v87);
        v48 = v29;
        v49 = OBJC_IVAR____TtCC12searchpartyd25InstructionEventCoalescerP33_3B6F52EF81004A05C130335557FA073612BufferRecord_timestamp;
        swift_beginAccess();
        v50 = v76;
        v51 = v79;
        (*v75)(v76, v46 + v49, v79);
        Date.timeIntervalSince(_:)();
        v53 = v52;
        (*v77)(v50, v51);
        if (v53 > 60.0)
        {
          break;
        }

        (*v82)(v48, v47);

        v9 = v86;
        v7 = v45;
        v29 = v48;
        v30 = v80;
        if (!v26)
        {
          goto LABEL_8;
        }
      }

      v54 = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v55 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v56 = swift_allocObject();
      *(v56 + 16) = v70;
      v57 = UUID.uuidString.getter();
      v59 = v58;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 64) = sub_100008C00();
      *(v56 + 32) = v57;
      *(v56 + 40) = v59;
      v60 = v83;
      os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, v55, "Purging expired unmatched events for %@", 39, 2, v56);

      swift_beginAccess();
      v61 = v60;
      v62 = sub_1000210EC(v60);
      v9 = v86;
      v63 = v87;
      v7 = v84;
      if (v64)
      {
        v65 = v62;
        v66 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = *(v66 + 56);
        v88 = v68;
        *(v66 + 56) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10100DBCC();
          v68 = v88;
        }

        (*(v81 + 8))(*(v68 + 48) + *(v81 + 72) * v65, v63);

        sub_100B27F6C(v65, v68);
        *(v66 + 56) = v68;
        v7 = v84;
      }

      swift_endAccess();

      v29 = v61;
      (*v82)(v61, v63);
      v30 = v80;
    }

    while (v26);
LABEL_8:
    if (v27 <= v28 + 1)
    {
      v32 = v28 + 1;
    }

    else
    {
      v32 = v27;
    }

    v33 = v32 - 1;
    while (1)
    {
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v31 >= v27)
      {
        v69 = sub_1000BC4D4(&qword_1016BD980, &qword_1013EBF50);
        (*(*(v69 - 8) + 56))(v7, 1, 1, v69);
        v26 = 0;
        v28 = v33;
        goto LABEL_17;
      }

      v26 = *(v30 + 8 * v31);
      ++v28;
      if (v26)
      {
        v28 = v31;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100E91778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v7 = type metadata accessor for UUID();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v44 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v37 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v38 = *(v11 - 8);
  v39 = v11;
  __chkstk_darwin(v11);
  v35 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  v15 = *(__chkstk_darwin(v13 - 8) + 28);
  swift_beginAccess();
  v16 = *(a2 + 56);
  v17 = *(v16 + 16);

  if (v17 && (v18 = sub_1000210EC(a3 + v15), (v19 & 1) != 0))
  {
    v20 = *(*(v16 + 56) + 8 * v18);
  }

  else
  {
    type metadata accessor for InstructionEventCoalescer.BufferRecord(0);
    v20 = swift_allocObject();
    Date.init()();
    *(v20 + OBJC_IVAR____TtCC12searchpartyd25InstructionEventCoalescerP33_3B6F52EF81004A05C130335557FA073612BufferRecord_list) = _swiftEmptyArrayStorage;
  }

  sub_100E91EB4(a4);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46[0] = *(a2 + 56);
  *(a2 + 56) = 0x8000000000000000;
  sub_101001A44(v20, a3 + v15, isUniquelyReferenced_nonNull_native);
  *(a2 + 56) = v46[0];
  swift_endAccess();
  swift_beginAccess();

  v23 = sub_100E927F0(v22, a3);

  if (v23)
  {
    v32[1] = *(a2 + 32);
    sub_100E92F78(a3, v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
    v24 = (*(v34 + 80) + 24) & ~*(v34 + 80);
    v25 = swift_allocObject();
    v34 = v15;
    v33 = a3;
    *(v25 + 16) = v36;
    sub_100E92E80(v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for OwnedBeaconRecord);
    *(v25 + ((v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
    aBlock[4] = sub_100E92EE8;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016578F8;
    v26 = _Block_copy(aBlock);

    v27 = v35;
    static DispatchQoS.unspecified.getter();
    v47 = _swiftEmptyArrayStorage;
    sub_100E92FE0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v28 = v37;
    v29 = v41;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);
    (*(v40 + 8))(v28, v29);
    (*(v38 + 8))(v27, v39);

    v30 = v44;
    (*(v42 + 16))(v44, v33 + v34, v43);
    swift_beginAccess();
    sub_1001E1664(0, v30);
    swift_endAccess();
  }

  sub_100E90EEC();
}

uint64_t sub_100E91D90(uint64_t a1, uint64_t a2)
{
  Transaction.capture()();
  v2 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  type metadata accessor for OwnedBeaconRecord(0);
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Publishing InstructionEventCoalescer event for %@", 49, 2, v4);

  return PassthroughSubject.send(_:)();
}

uint64_t sub_100E91EB4(uint64_t a1)
{
  v3 = type metadata accessor for BeaconKeyManager.PersistenceInstruction(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v11 = OBJC_IVAR____TtCC12searchpartyd25InstructionEventCoalescerP33_3B6F52EF81004A05C130335557FA073612BufferRecord_timestamp;
  swift_beginAccess();
  (*(v8 + 40))(v1 + v11, v10, v7);
  swift_endAccess();
  sub_100E92F78(a1, v6, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
  v12 = OBJC_IVAR____TtCC12searchpartyd25InstructionEventCoalescerP33_3B6F52EF81004A05C130335557FA073612BufferRecord_list;
  swift_beginAccess();
  v13 = *(v1 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v12) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_100A5EBD0(0, v13[2] + 1, 1, v13);
    *(v1 + v12) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_100A5EBD0((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  sub_100E92E80(v6, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
  *(v1 + v12) = v13;
  return swift_endAccess();
}

uint64_t sub_100E9210C()
{
  v1 = OBJC_IVAR____TtCC12searchpartyd25InstructionEventCoalescerP33_3B6F52EF81004A05C130335557FA073612BufferRecord_timestamp;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100E921B8()
{

  swift_unownedRelease();

  return v0;
}

uint64_t sub_100E92208()
{
  sub_100E921B8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InstructionEventCoalescer.BufferRecord(uint64_t a1)
{
  result = qword_1016BD8B0;
  if (!qword_1016BD8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100E922B4(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t sub_100E92350(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016BD978, &qword_1013EBF48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100E923D0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1000BC4D4(&qword_1016BD9A0, &qword_1013EBF70);
  return v3(a1, a1 + *(v4 + 48));
}

void *sub_100E92444(uint64_t a1)
{
  v15 = a1;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v12 - 8);
  __chkstk_darwin(v12);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v14 = sub_1000BC4D4(&qword_1016BD9C0, &qword_1013EBF78);
  swift_allocObject();
  v1[2] = PassthroughSubject.init()();
  sub_1000BC488();
  v8[1] = "scer event for %@";
  static DispatchQoS.default.getter();
  v10 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v6 = *(v2 + 104);
  v11 = v2 + 104;
  v13 = v6;
  v6(v4);
  v16 = _swiftEmptyArrayStorage;
  v8[0] = sub_100E92FE0(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.default.getter();
  v13(v4, v10, v12);
  v16 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[5] = 0;
  v1[6] = v15;
  v1[7] = _swiftEmptyDictionarySingleton;
  v16 = v1[2];
  swift_unownedRetain();
  sub_1000041A4(&qword_1016BD9C8, &qword_1016BD9C0, &qword_1013EBF78, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v1[8] = Publisher.eraseToAnyPublisher()();
  return v1;
}

BOOL sub_100E927F0(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for BeaconKeyManager.KeyCriteria(0);
  __chkstk_darwin(v42);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BeaconKeyManager.PersistenceInstruction(0);
  v7 = *(v6 - 8);
  v40 = v6;
  v41 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for StableIdentifier(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = *(type metadata accessor for OwnedBeaconRecord(0) + 24);
  sub_100E92F78(a2 + v19, v18, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100032764(v18, type metadata accessor for StableIdentifier);
  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_7;
  }

  sub_100E92F78(a2 + v19, v16, type metadata accessor for StableIdentifier);
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 == 2)
  {
    sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

    goto LABEL_6;
  }

  if (v21 == 3)
  {
    sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

LABEL_6:

    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 8))(v16, v22);
LABEL_7:
    if (*(a1 + 16) == 2)
    {
      v23 = *(v40 + 24);
      v24 = a1 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v25 = *(v41 + 72);
      sub_100E92F78(v24, v12, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
      sub_100E92F78(&v12[v23], v5, type metadata accessor for BeaconKeyManager.KeyCriteria);
      sub_100032764(v12, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
      v26 = v42;
      v27 = v5[*(v42 + 20)];
      sub_100032764(v5, type metadata accessor for BeaconKeyManager.KeyCriteria);
      if (v27 == 1)
      {
        sub_100E92F78(v24 + v25, v12, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
        sub_100E92F78(&v12[v23], v5, type metadata accessor for BeaconKeyManager.KeyCriteria);
        sub_100032764(v12, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
        v28 = v5[*(v26 + 20)];
        sub_100032764(v5, type metadata accessor for BeaconKeyManager.KeyCriteria);
        return (v28 & 1) == 0;
      }

      sub_100E92F78(v24 + v25, v12, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
      sub_100E92F78(&v12[v23], v5, type metadata accessor for BeaconKeyManager.KeyCriteria);
      sub_100032764(v12, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
      v29 = v5[*(v26 + 20)];
      sub_100032764(v5, type metadata accessor for BeaconKeyManager.KeyCriteria);
      if ((v29 | v27))
      {
        return 1;
      }
    }

    return 0;
  }

  sub_100032764(v16, type metadata accessor for StableIdentifier);
  v31 = sub_100DDE094();
  v32 = *(a1 + 16);
  if (v31)
  {
    if (v32 == 2)
    {
      v33 = a1 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v34 = *(v41 + 72);
      sub_100E92F78(v33, v10, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
      v35 = v10[48];
      sub_100032764(v10, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
      if (v35 == 1)
      {
        sub_100E92F78(v33 + v34, v10, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
        v36 = v10[48];
        sub_100032764(v10, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
        if ((v36 & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        sub_100E92F78(v33 + v34, v10, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
        v37 = v10[48];
        sub_100032764(v10, type metadata accessor for BeaconKeyManager.PersistenceInstruction);
        if ((v37 | v35))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (v32 != 1)
  {
    return 0;
  }

  if (*(a1 + *(v40 + 24) + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v42 + 20)))
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v38 & 1) != 0;
  }

  return 1;
}

uint64_t sub_100E92E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E92EE8()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100E91D90(v2, v3);
}

uint64_t sub_100E92F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E92FE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AirPodsSWPairingLockCheckResponse(uint64_t a1)
{
  result = qword_1016BDA28;
  if (!qword_1016BDA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100E9309C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for UUID();
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016BDA78, &qword_1013EBFE0);
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = v29 - v7;
  v9 = type metadata accessor for AirPodsSWPairingLockCheckResponse(0);
  v10 = __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12[*(v10 + 44)] = 0;
  v13 = a1[3];
  v37 = a1;
  sub_1000035D0(a1, v13);
  sub_100E9372C();
  v14 = v8;
  v15 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_100007BAC(v37);
  }

  v30 = v5;
  v31 = v3;
  v16 = v34;
  v36 = v9;
  v39 = 0;
  v17 = sub_1000E307C();
  v18 = v14;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = *(&v38 + 1);
  *v12 = v38;
  *(v12 + 1) = v19;
  v39 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v17;
  *(v12 + 1) = v38;
  v39 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v12;
  *(v12 + 2) = v38;
  v39 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29[1] = v20;
  *(v12 + 3) = v38;
  LOBYTE(v38) = 4;
  sub_100395BEC();
  v22 = v30;
  v23 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v36;
  (*(v33 + 32))(v21 + *(v36 + 32), v22, v23);
  LOBYTE(v38) = 5;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = (v21 + *(v24 + 36));
  *v26 = v25;
  v26[1] = v27;
  v39 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v16 + 8))(v18, v35);
  *(v21 + *(v24 + 40)) = v38;
  sub_100E93780(v21, v32);
  sub_100007BAC(v37);
  return sub_100E937E4(v21);
}

unint64_t sub_100E93644@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100E93958(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100E93674@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100E93958(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100E9369C(uint64_t a1)
{
  v2 = sub_100E9372C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E936D8(uint64_t a1)
{
  v2 = sub_100E9372C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100E9372C()
{
  result = qword_1016BDA80;
  if (!qword_1016BDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDA80);
  }

  return result;
}

uint64_t sub_100E93780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsSWPairingLockCheckResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100E937E4(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsSWPairingLockCheckResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100E93854()
{
  result = qword_1016BDA88;
  if (!qword_1016BDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDA88);
  }

  return result;
}

unint64_t sub_100E938AC()
{
  result = qword_1016BDA90;
  if (!qword_1016BDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDA90);
  }

  return result;
}

unint64_t sub_100E93904()
{
  result = qword_1016BDA98;
  if (!qword_1016BDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDA98);
  }

  return result;
}

unint64_t sub_100E93958(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160CBB8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void sub_100E939A4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for PeerCommunicationIdentifier(0);
  __chkstk_darwin(v3);
  v66 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0x65507265626D654DLL && v12 == 0xEF74737572547265)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      sub_100E955EC();
      swift_allocError();
      *v21 = 0;
      goto LABEL_16;
    }
  }

  v14 = [a1 recordID];
  v15 = [v14 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v63 = *(v9 + 32);
    v63(v11, v7, v8);
    v17 = [a1 encryptedValues];
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 objectForKeyedSubscript:v18];

    if (v19)
    {
      v67 = v19;
      sub_1000BC4D4(&unk_101698140, &unk_10138ED80);
      if (swift_dynamicCast())
      {
        if (!v69)
        {
          v62 = v17;
          v61 = 0;
LABEL_20:
          v22 = String._bridgeToObjectiveC()();
          v23 = [v62 objectForKeyedSubscript:v22];

          if (v23)
          {
            v69 = v23;
            if (swift_dynamicCast())
            {
              v24 = v67;
              v60 = v68;
              type metadata accessor for PropertyListDecoder();
              swift_allocObject();
              PropertyListDecoder.init()();
              sub_100E95D2C(&qword_10169D970, type metadata accessor for PeerCommunicationIdentifier, &unk_1013CB35C);
              v25 = v65;
              v59 = v24;
              v26 = v60;
              dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
              if (v25)
              {
                (*(v9 + 8))(v11, v8);

                sub_100016590(v59, v26);
                swift_unknownObjectRelease();
                goto LABEL_17;
              }

              v28 = String._bridgeToObjectiveC()();
              v29 = [v62 objectForKeyedSubscript:v28];

              v30 = v59;
              if (v29 && (v69 = v29, (swift_dynamicCast() & 1) != 0))
              {
                v58 = v67;
                v65 = v68;
                v31 = String._bridgeToObjectiveC()();
                v32 = [v62 objectForKeyedSubscript:v31];

                if (v32)
                {
                  v69 = v32;
                  v33 = swift_dynamicCast();
                  v34 = v60;
                  if (v33)
                  {
                    v35 = v67;
                    v36 = v68;
                    sub_100017D5C(v67, v68);
                    sub_1004A4740();
                    if (v68 >> 60 != 15)
                    {
                      v56 = v68;
                      v57 = v67;
                      v55 = objc_autoreleasePoolPush();
                      v41 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
                      [a1 encodeSystemFieldsWithCoder:v41];
                      [v41 finishEncoding];
                      v42 = v35;
                      v43 = [v41 encodedData];
                      v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                      v53 = v45;
                      v54 = v44;

                      objc_autoreleasePoolPop(v55);
                      sub_100016590(v59, v60);
                      sub_100016590(v42, v36);
                      swift_unknownObjectRelease();

                      v46 = v64;
                      v47 = v53;
                      *v64 = v54;
                      v46[1] = v47;
                      v48 = type metadata accessor for MemberPeerTrust(0);
                      v63(v46 + v48[5], v11, v8);
                      *(v46 + v48[6]) = v61;
                      sub_100312F64(v66, v46 + v48[7]);
                      v49 = (v46 + v48[8]);
                      v50 = v65;
                      *v49 = v58;
                      v49[1] = v50;
                      v51 = (v46 + v48[9]);
                      v52 = v56;
                      *v51 = v57;
                      v51[1] = v52;
                      return;
                    }

                    sub_100016590(v35, v36);
                  }

                  v37 = v66;
                }

                else
                {

                  v37 = v66;
                  v34 = v60;
                }

                sub_100E955EC();
                swift_allocError();
                *v40 = 5;
                swift_willThrow();
                sub_100016590(v59, v34);
                swift_unknownObjectRelease();

                v39 = v37;
              }

              else
              {
                sub_100E955EC();
                swift_allocError();
                *v38 = 4;
                swift_willThrow();
                sub_100016590(v30, v60);
                swift_unknownObjectRelease();

                v39 = v66;
              }

              sub_100E956F8(v39, type metadata accessor for PeerCommunicationIdentifier);
LABEL_14:
              (*(v9 + 8))(v11, v8);
              return;
            }
          }

          sub_100E955EC();
          swift_allocError();
          *v27 = 3;
          swift_willThrow();
LABEL_13:
          swift_unknownObjectRelease();

          goto LABEL_14;
        }

        if (v69 == 1)
        {
          v62 = v17;
          v61 = 1;
          goto LABEL_20;
        }
      }
    }

    sub_100E955EC();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
    goto LABEL_13;
  }

  sub_1002EA198(v7);
  sub_100E955EC();
  swift_allocError();
  *v16 = 1;
LABEL_16:
  swift_willThrow();
LABEL_17:
}

Swift::Int sub_100E94264()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v1 = type metadata accessor for MemberPeerTrust(0);
  type metadata accessor for UUID();
  sub_100E95D2C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v0 + *(v1 + 24)));
  sub_10098A0BC(v6);
  String.hash(into:)();
  v2 = (v0 + *(v1 + 36));
  v3 = *v2;
  v4 = v2[1];
  sub_100017D5C(*v2, v4);
  Data.hash(into:)();
  sub_100016590(v3, v4);
  return Hasher._finalize()();
}

unint64_t sub_100E94380()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000015;
  if (v1 == 4)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 != 1)
  {
    v2 = 1701869940;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_100E94448@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100E95B20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100E94470(uint64_t a1)
{
  v2 = sub_100E95640();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E944AC(uint64_t a1)
{
  v2 = sub_100E95640();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100E944EC(uint64_t a1, int *a2)
{
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_100E95D2C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[6]));
  sub_10098A0BC(a1);
  String.hash(into:)();
  v5 = (v2 + a2[9]);
  v6 = *v5;
  v7 = v5[1];
  sub_100017D5C(*v5, v7);
  Data.hash(into:)();

  return sub_100016590(v6, v7);
}

Swift::Int sub_100E945F8(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_100E95D2C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + a2[6]));
  sub_10098A0BC(v8);
  String.hash(into:)();
  v4 = (v2 + a2[9]);
  v5 = *v4;
  v6 = v4[1];
  sub_100017D5C(*v4, v6);
  Data.hash(into:)();
  sub_100016590(v5, v6);
  return Hasher._finalize()();
}

uint64_t sub_100E9470C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177C1D0);
  sub_1000076D4(v0, qword_10177C1D0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100E94870(id *a1)
{
  v2 = v1;
  v3 = *a1;
  [*a1 encryptedValues];
  swift_getObjectType();
  v4 = static os_log_type_t.debug.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = v3;
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Updating MemberPeerTrust record: %@", 35, 2, v6);

  v12 = type metadata accessor for MemberPeerTrust(0);
  CKRecordKeyValueSetting.subscript.setter();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for PeerCommunicationIdentifier(0);
  sub_100E95D2C(&qword_10169D978, type metadata accessor for PeerCommunicationIdentifier, &unk_1013CB334);
  dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  CKRecordKeyValueSetting.subscript.setter();

  CKRecordKeyValueSetting.subscript.setter();
  sub_100017D5C(*(v2 + *(v12 + 36)), *(v2 + *(v12 + 36) + 8));
  CKRecordKeyValueSetting.subscript.setter();

  return swift_unknownObjectRelease();
}

uint64_t sub_100E94BBC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&unk_1016BDAD0, &qword_1013EC1C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100E95640();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v16 = *v3;
  v17 = v9;
  v15 = 0;
  sub_100017D5C(v16, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_100016590(v16, v17);
    v10 = type metadata accessor for MemberPeerTrust(0);
    LOBYTE(v16) = 1;
    type metadata accessor for UUID();
    sub_100E95D2C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + *(v10 + 24));
    v15 = 2;
    sub_1003131DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 3;
    type metadata accessor for PeerCommunicationIdentifier(0);
    sub_100E95D2C(&qword_10169D978, type metadata accessor for PeerCommunicationIdentifier, &unk_1013CB334);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = (v3 + *(v10 + 36));
    v13 = v12[1];
    v16 = *v12;
    v17 = v13;
    v15 = 5;
    sub_100017D5C(v16, v13);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  sub_100016590(v16, v17);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100E94EE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = type metadata accessor for PeerCommunicationIdentifier(0);
  __chkstk_darwin(v23);
  v24 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016BDAC0, &qword_1013EC1C0);
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for MemberPeerTrust(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v29 = a1;
  sub_1000035D0(a1, v13);
  sub_100E95640();
  v14 = v28;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_100007BAC(v29);
  }

  v15 = v25;
  v31 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v12 = v30;
  LOBYTE(v30) = 1;
  sub_100E95D2C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(&v12[v10[5]], v6, v4);
  v31 = 2;
  sub_10031301C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12[v10[6]] = v30;
  LOBYTE(v30) = 3;
  sub_100E95D2C(&qword_10169D970, type metadata accessor for PeerCommunicationIdentifier, &unk_1013CB35C);
  v16 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v26;
  sub_100312F64(v16, &v12[v10[7]]);
  LOBYTE(v30) = 4;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = &v12[v10[8]];
  *v19 = v18;
  v19[1] = v20;
  v31 = 5;
  sub_100313070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v9, v27);
  *&v12[v10[9]] = v30;
  sub_100E95694(v12, v22);
  sub_100007BAC(v29);
  return sub_100E956F8(v12, type metadata accessor for MemberPeerTrust);
}

uint64_t sub_100E954C4(uint64_t a1)
{
  *(a1 + 8) = sub_100E95D2C(&unk_1016BDAA0, type metadata accessor for MemberPeerTrust, &unk_1013EC160);
  result = sub_100E95D2C(&qword_1016B15F8, type metadata accessor for MemberPeerTrust, &unk_1013EC138);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MemberPeerTrust(uint64_t a1)
{
  result = qword_1016BDB40;
  if (!qword_1016BDB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100E95594(uint64_t a1)
{
  result = sub_100E95D2C(&qword_1016B15F0, type metadata accessor for MemberPeerTrust, &unk_1013EC188);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100E955EC()
{
  result = qword_1016BDAB0;
  if (!qword_1016BDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDAB0);
  }

  return result;
}

unint64_t sub_100E95640()
{
  result = qword_1016BDAC8;
  if (!qword_1016BDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDAC8);
  }

  return result;
}

uint64_t sub_100E95694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberPeerTrust(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100E956F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_100E95758(uint64_t a1, uint64_t a2)
{
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = type metadata accessor for MemberPeerTrust(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || (sub_10098BFC0(a1 + v4[7], a2 + v4[7]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[8];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[9];
  v11 = a1 + v10;
  v12 = *(a1 + v10);
  v13 = *(v11 + 8);
  v14 = (a2 + v10);
  v15 = *v14;
  v16 = v14[1];
  sub_100017D5C(v12, v13);
  sub_100017D5C(v15, v16);
  v17 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v13, v15, v16);
  sub_100016590(v15, v16);
  sub_100016590(v12, v13);
  return v17;
}

uint64_t sub_100E958C4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PeerCommunicationIdentifier(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100E959C4()
{
  result = qword_1016BDB90;
  if (!qword_1016BDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDB90);
  }

  return result;
}

unint64_t sub_100E95A1C()
{
  result = qword_1016BDB98;
  if (!qword_1016BDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDB98);
  }

  return result;
}

unint64_t sub_100E95A74()
{
  result = qword_1016BDBA0;
  if (!qword_1016BDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDBA0);
  }

  return result;
}

unint64_t sub_100E95ACC()
{
  result = qword_1016BDBA8;
  if (!qword_1016BDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDBA8);
  }

  return result;
}

uint64_t sub_100E95B20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101351010 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101351030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101351050 == a2)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100E95D2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100E95D84(void *a1, uint64_t a2)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v7[6] = a2;
  sub_100235658();
  v5 = FixedWidthInteger.data.getter();
  v6 = v3;
  sub_10015049C(v7, v7[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v5, v6);
  return sub_100007BAC(v7);
}

uint64_t sub_100E95E50@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100E95F1C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100E95E98(uint64_t a1)
{
  *(a1 + 8) = sub_100E95EC8();
  result = sub_10059BFF4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100E95EC8()
{
  result = qword_1016BDBB0;
  if (!qword_1016BDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDBB0);
  }

  return result;
}

uint64_t sub_100E95F1C(void *a1)
{
  v3 = type metadata accessor for Endianness();
  __chkstk_darwin(v3 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v13, v13[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_100017D5C(v5, v6);
    static Endianness.current.getter();
    sub_100235658();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v12 != 1)
    {
      v4 = v11;
      sub_100016590(v7, v8);
      sub_100007BAC(v13);
      sub_100007BAC(a1);
      return v4;
    }

    v4 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v9, enum case for BinaryEncodingError.encodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v7, v8);
  }

  sub_100007BAC(v13);
  sub_100007BAC(a1);
  return v4;
}

uint64_t sub_100E960EC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for FMNAccountType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100E96240, 0, 0);
}

uint64_t sub_100E96240()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  type metadata accessor for FMNAuthenticationProvider();
  (*(v6 + 104))(v4, enum case for FMNAccountType.itemSharing(_:), v5);
  static FMNAuthenticationProvider.configurationURL(accountType:)();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1002815B4(v0[6]);
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    v7 = URL.host(percentEncoded:)(1);
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    if (v7.value._object)
    {
      URL.path(percentEncoded:)(1);
      URLComponents.init()();
      URLComponents.scheme.setter();
      URLComponents.host.setter();
      URLComponents.path.setter();
      (*(v9 + 8))(v8, v10);
      goto LABEL_7;
    }

    (*(v9 + 8))(v0[9], v0[7]);
  }

  sub_100E9642C();
LABEL_7:

  v11 = v0[1];

  return v11();
}

uint64_t sub_100E9642C()
{
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177CDD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "No url found in account bag.", v3, 2u);
  }

  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.path.setter();
  return URLComponents.host.setter();
}

uint64_t sub_100E96578(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x800000010134A000;
  }

  if (*a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v6 = 0x800000010134A000;
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

Swift::Int sub_100E96624()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100E966AC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100E96720(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100E967A4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C6A8, *a1);

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

void sub_100E96804(unint64_t *a1@<X8>)
{
  v2 = 0x800000010134A000;
  v3 = 0x6E776F6E6B6E75;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_100E968F8()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_100E96938@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10160C6A8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_100E9699C(uint64_t a1)
{
  v2 = sub_1009AC944();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E969D8(uint64_t a1)
{
  v2 = sub_1009AC944();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100E96A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for SystemVersionNumber();
  v13 = __chkstk_darwin(v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v52 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v52 - v20;
  v22 = __chkstk_darwin(v19);
  v25 = &v52 - v24;
  if (*v6 != 1)
  {
    return 0;
  }

  v57 = a5;
  v58 = v23;
  v59 = v22;
  type metadata accessor for FeatureSupportMatrix(0);
  sub_1000BC4D4(&qword_1016BDBB8, &unk_1013EC550);
  v26 = CustomCodableKeyDictionary.wrappedValue.getter();
  if (v26)
  {
    v27 = v26;
    if (*(v26 + 16))
    {
      v28 = sub_1007722A0(a1, a2, a3, a4);
      if (v29)
      {
        v30 = *(*(v27 + 56) + v28);

        return v30;
      }
    }
  }

  v32 = *(v6 + 8);
  if (!*(v32 + 16))
  {
    return 0;
  }

  v33 = sub_100771D58(a1, a2);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

  if (*(*(v32 + 56) + 8 * v33) > a3)
  {
    return 0;
  }

  v35 = *(v6 + 24);
  if (!*(v35 + 16))
  {
    return 0;
  }

  v36 = sub_100771D58(a1, a2);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

  v38 = *(v35 + 56);
  v39 = v58;
  v40 = v59;
  v53 = v58[9];
  v55 = v58[2];
  v56 = v58 + 2;
  v55(v21, v38 + v53 * v36, v59);
  v41 = v39[4];
  v54 = v39 + 4;
  v52 = v41;
  v41(v25, v21, v40);
  sub_100E980A0(&qword_101697BD0, &protocol conformance descriptor for SystemVersionNumber);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    (v39[1])(v25, v59);
  }

  else
  {
    v42 = *(v6 + 16);
    if (!v42 || !*(v42 + 16) || (v43 = sub_100771D58(a1, a2), (v44 & 1) == 0) || *(*(v42 + 56) + 8 * v43) >= a3)
    {
      v45 = *(v6 + 32);
      if (v45 && *(v45 + 16) && (v46 = sub_100771D58(a1, a2), (v47 & 1) != 0))
      {
        v48 = *(v45 + 56) + v46 * v53;
        v49 = v59;
        v55(v15, v48, v59);
        v52(v18, v15, v49);
        v50 = dispatch thunk of static Comparable.< infix(_:_:)();
        v51 = v58[1];
        v51(v18, v49);
        v51(v25, v49);
        if (v50)
        {
          return 0;
        }
      }

      else
      {
        (v58[1])(v25, v59);
      }

      return 1;
    }

    (v58[1])(v25, v59);
  }

  return 0;
}

uint64_t sub_100E96DE8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BDCE8, &qword_1013EC7F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100E97D78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    sub_1000BC4D4(&qword_1016BDC38, &qword_1013EC578);
    sub_100E97F88(&qword_1016BDCF0, &protocol witness table for String, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = v3[3];
    HIBYTE(v10) = 3;
    sub_1000BC4D4(&qword_1016BDC50, &unk_1013EC580);
    sub_100E97FF8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v3[4];
    HIBYTE(v10) = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    type metadata accessor for FeatureSupportMatrix(0);
    LOBYTE(v11) = 5;
    sub_1000BC4D4(&qword_1016BDBB8, &unk_1013EC550);
    sub_100E980E4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100E970C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v30 = sub_1000BC4D4(&qword_1016BDBB8, &unk_1013EC550);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v4 = &v22 - v3;
  v5 = sub_1000BC4D4(&qword_1016BDCB8, &qword_1013EC7E8);
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for FeatureSupportMatrix(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 44);
  v13 = sub_10088D764();
  v14 = sub_10090C518();
  v29 = v12;
  CustomCodableKeyDictionary.init(wrappedValue:)();
  v15 = a1[3];
  v27 = a1;
  sub_1000035D0(a1, v15);
  sub_100E97D78();
  v16 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    sub_100007BAC(v27);
    return (*(v28 + 8))(&v11[v29], v30);
  }

  else
  {
    v22 = v14;
    v26 = v13;
    v17 = v4;
    v18 = v24;
    LOBYTE(v32) = 0;
    *v11 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_1000BC4D4(&qword_1016BDC38, &qword_1013EC578);
    v31 = 1;
    sub_100E97F88(&qword_1016BDCC8, &protocol witness table for String, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v18;
    *(v11 + 1) = v32;
    v31 = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v11 + 2) = v32;
    sub_1000BC4D4(&qword_1016BDC50, &unk_1013EC580);
    v31 = 3;
    sub_100E97DCC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v11 + 3) = v32;
    v31 = 4;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v11 + 4) = v32;
    LOBYTE(v32) = 5;
    sub_100E97E74();
    v20 = v25;
    KeyedDecodingContainer.decode<A, B>(_:forKey:)();
    (*(v19 + 8))(v7, v20);
    (*(v28 + 40))(&v11[v29], v17, v30);
    sub_100E97EC8(v11, v23);
    sub_100007BAC(v27);
    return sub_100E97F2C(v11);
  }
}

unint64_t sub_100E9765C()
{
  v1 = *v0;
  v2 = 0x64656C62616E65;
  v3 = 0xD000000000000013;
  if (v1 == 4)
  {
    v3 = 0xD000000000000016;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v4 = v3;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100E97720@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100E982B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100E97748(uint64_t a1)
{
  v2 = sub_100E97D78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E97784(uint64_t a1)
{
  v2 = sub_100E97D78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100E977F4(uint64_t *a1, uint64_t *a2)
{
  if (*a1 != *a2 || (sub_100DE764C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = sub_100DE764C(v4, v5);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_100DE7780(a1[3], a2[3]))
  {
    v7 = a1[4];
    v8 = a2[4];
    if (v7)
    {
      if (v8)
      {

        v9 = sub_100DE7780(v7, v8);

        if (v9)
        {
          goto LABEL_12;
        }
      }
    }

    else if (!v8)
    {
LABEL_12:
      type metadata accessor for FeatureSupportMatrix(0);
      sub_10088D764();
      sub_10090C518();
      return static CustomCodableKeyDictionary<>.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t type metadata accessor for FeatureSupportMatrix(uint64_t a1)
{
  result = qword_1016BDC18;
  if (!qword_1016BDC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100E979A4(uint64_t a1)
{
  sub_100E97AB0();
  if (v1 <= 0x3F)
  {
    sub_1002ECE54(319, &qword_1016BDC30, &qword_1016BDC38, &qword_1013EC578);
    if (v2 <= 0x3F)
    {
      sub_100E97B10(319);
      if (v3 <= 0x3F)
      {
        sub_1002ECE54(319, &qword_1016BDC48, &qword_1016BDC50, &unk_1013EC580);
        if (v4 <= 0x3F)
        {
          sub_100E97B78(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100E97AB0()
{
  if (!qword_1016BDC28)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1016BDC28);
    }
  }
}

void sub_100E97B10(uint64_t a1)
{
  if (!qword_1016BDC40)
  {
    type metadata accessor for SystemVersionNumber();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1016BDC40);
    }
  }
}

void sub_100E97B78(uint64_t a1)
{
  if (!qword_1016BDC58)
  {
    sub_10088D764();
    sub_10090C518();
    v1 = type metadata accessor for CustomCodableKeyDictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1016BDC58);
    }
  }
}

unint64_t sub_100E97C1C()
{
  result = qword_1016BDC98;
  if (!qword_1016BDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDC98);
  }

  return result;
}

unint64_t sub_100E97C74()
{
  result = qword_1016BDCA0;
  if (!qword_1016BDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDCA0);
  }

  return result;
}

unint64_t sub_100E97CCC()
{
  result = qword_1016BDCA8;
  if (!qword_1016BDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDCA8);
  }

  return result;
}

unint64_t sub_100E97D24()
{
  result = qword_1016BDCB0;
  if (!qword_1016BDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDCB0);
  }

  return result;
}

unint64_t sub_100E97D78()
{
  result = qword_1016BDCC0;
  if (!qword_1016BDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDCC0);
  }

  return result;
}

unint64_t sub_100E97DCC()
{
  result = qword_1016BDCD0;
  if (!qword_1016BDCD0)
  {
    sub_1000BC580(&qword_1016BDC50, &unk_1013EC580);
    sub_100E980A0(&qword_1016BDCD8, &protocol conformance descriptor for SystemVersionNumber);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDCD0);
  }

  return result;
}

unint64_t sub_100E97E74()
{
  result = qword_1016BDCE0;
  if (!qword_1016BDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDCE0);
  }

  return result;
}

uint64_t sub_100E97EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureSupportMatrix(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100E97F2C(uint64_t a1)
{
  v2 = type metadata accessor for FeatureSupportMatrix(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100E97F88(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016BDC38, &qword_1013EC578);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100E97FF8()
{
  result = qword_1016BDCF8;
  if (!qword_1016BDCF8)
  {
    sub_1000BC580(&qword_1016BDC50, &unk_1013EC580);
    sub_100E980A0(&qword_1016BDD00, &protocol conformance descriptor for SystemVersionNumber);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDCF8);
  }

  return result;
}

uint64_t sub_100E980A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SystemVersionNumber();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100E980E4()
{
  result = qword_1016BDD08;
  if (!qword_1016BDD08)
  {
    sub_1000BC580(&qword_1016BDBB8, &unk_1013EC550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD08);
  }

  return result;
}

unint64_t sub_100E98148()
{
  result = qword_1016BDD10;
  if (!qword_1016BDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD10);
  }

  return result;
}

unint64_t sub_100E981B0()
{
  result = qword_1016BDD18;
  if (!qword_1016BDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD18);
  }

  return result;
}

unint64_t sub_100E98208()
{
  result = qword_1016BDD20;
  if (!qword_1016BDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD20);
  }

  return result;
}

unint64_t sub_100E98260()
{
  result = qword_1016BDD28;
  if (!qword_1016BDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD28);
  }

  return result;
}

uint64_t sub_100E982B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013728E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101372900 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101372920 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101372940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101372960 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_100E984B8(char a1)
{
  result = 0x4E6E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 1684628325;
      break;
    case 3:
      result = 0x644970696863;
      break;
    case 4:
      result = 0x754E6C6169726573;
      break;
    case 5:
      result = 0x7374726563;
      break;
    case 6:
      result = 0x726F737365636361;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x69634572656E776FLL;
      break;
    case 10:
      result = 0x69684372656E776FLL;
      break;
    case 11:
      result = 0x7372655663657073;
      break;
    case 12:
      result = 0x657261776D726966;
      break;
    case 13:
      result = 0x49746375646F7270;
      break;
    case 14:
      result = 0x6449726F646E6576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100E98674(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BDD38, &qword_1013ECE10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_100E9A794();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_1001022C4(&v20, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v13, *(&v13 + 1));
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 24);
    v13 = *(v3 + 24);
    v12 = 2;
    sub_1001022C4(&v19, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v18 = *(v3 + 40);
    v13 = *(v3 + 40);
    v12 = 3;
    sub_1001022C4(&v18, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v17 = *(v3 + 56);
    v13 = *(v3 + 56);
    v12 = 4;
    sub_1001022C4(&v17, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v16 = *(v3 + 72);
    v13 = *(v3 + 72);
    v12 = 5;
    sub_1001022C4(&v16, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v15 = *(v3 + 88);
    v13 = *(v3 + 88);
    v12 = 6;
    sub_1001022C4(&v15, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = *(v3 + 104);
    v14 = v13;
    v12 = 7;
    sub_1000D2A70(&v14, v11, &qword_1016A40E0, &unk_101396F30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v13, *(&v13 + 1));
    LOBYTE(v13) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100E98B68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100E9A900(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100E98B9C(uint64_t a1)
{
  v2 = sub_100E9A794();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E98BD8(uint64_t a1)
{
  v2 = sub_100E9A794();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100E98C80@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1[7];
  v45 = v56;
  v55 = a1[9];
  sub_1001022C4(&v56, &v54);
  sub_1000E0A3C();
  v4 = DataProtocol.intValue.getter();
  v5 = a1[2];
  v55 = a1[3];
  v6 = a1[4];
  v53 = a1[5];
  v54 = v6;
  v43 = v6;
  v44 = v55;
  v41 = a1[6];
  v42 = v53;
  v51 = a1[8];
  v52 = v41;
  v7 = a1[10];
  v8 = a1[11];
  v49 = v5;
  v50 = v7;
  v39 = a1[10];
  v40 = v51;
  v9 = *a1;
  v47 = a1[1];
  v48 = v9;
  v37 = v9;
  v38 = v5;
  v36 = v47;
  v10 = *(a1 + 25);
  v46 = v8;
  if (v10 >> 60 == 15)
  {
    sub_1001022C4(&v55, v35);
    sub_1001022C4(&v54, v35);
    sub_1001022C4(&v53, v35);
    sub_1001022C4(&v52, v35);
    sub_1001022C4(&v51, v35);
    sub_1000D2A70(&v50, v35, &qword_1016A40E0, &unk_101396F30);
    sub_1000D2A70(&v49, v35, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v48, v35, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v47, v35, &qword_1016A0AC0, &unk_1013926A0);
    result = sub_1000D2A70(&v46, v35, &qword_1016A0AC0, &unk_1013926A0);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_15:
    v30 = v44;
    *a2 = v45;
    *(a2 + 16) = v4;
    *(a2 + 24) = v30;
    v31 = v42;
    *(a2 + 40) = v43;
    *(a2 + 56) = v31;
    v32 = v40;
    *(a2 + 72) = v41;
    *(a2 + 88) = v32;
    v33 = v38;
    *(a2 + 104) = v39;
    *(a2 + 120) = v33;
    v34 = v36;
    *(a2 + 136) = v37;
    *(a2 + 152) = v34;
    *(a2 + 168) = 0x302E302E31;
    *(a2 + 176) = 0xE500000000000000;
    *(a2 + 184) = a1[11];
    *(a2 + 200) = v12;
    *(a2 + 208) = v13;
    *(a2 + 216) = v14;
    *(a2 + 224) = v15;
    return result;
  }

  v16 = *(a1 + 24);
  sub_1001022C4(&v55, v35);
  sub_1001022C4(&v54, v35);
  sub_1001022C4(&v53, v35);
  sub_1001022C4(&v52, v35);
  sub_1001022C4(&v51, v35);
  sub_1000D2A70(&v50, v35, &qword_1016A40E0, &unk_101396F30);
  sub_1000D2A70(&v49, v35, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v48, v35, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v47, v35, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v46, v35, &qword_1016A0AC0, &unk_1013926A0);
  v17 = sub_100313B54(v16, v10);
  v19 = v18;
  v12 = Data.hexString.getter();
  v13 = v20;
  result = sub_100016590(v17, v19);
  v21 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v21 != 2)
    {
LABEL_14:
      v26 = Data.subdata(in:)();
      v28 = v27;
      v14 = Data.hexString.getter();
      v15 = v29;
      result = sub_100016590(v26, v28);
      goto LABEL_15;
    }

    v23 = *(v16 + 16);
    v22 = *(v16 + 24);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if (!v24)
    {
LABEL_12:
      if (v25 < -1)
      {
        __break(1u);
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v21)
  {
    goto LABEL_14;
  }

  LODWORD(v25) = HIDWORD(v16) - v16;
  if (!__OFSUB__(HIDWORD(v16), v16))
  {
    v25 = v25;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100E99008(uint64_t a1, uint64_t a2)
{
  v2[213] = a2;
  v2[212] = a1;
  v3 = type metadata accessor for HashAlgorithm();
  v2[214] = v3;
  v2[215] = *(v3 - 8);
  v2[216] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v2[217] = v4;
  v2[218] = *(v4 - 8);
  v2[219] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[220] = v5;
  v2[221] = *(v5 - 8);
  v2[222] = swift_task_alloc();

  return _swift_task_switch(sub_100E99184, 0, 0);
}

void sub_100E99184()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = *(v0 + 1776);
  v7 = *(v0 + 1768);
  v8 = *(v0 + 1760);
  v9 = *(v0 + 1752);
  v51 = *(v0 + 1744);
  v52 = *(v0 + 1736);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 1672) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 1680) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v24 = v14;
  v25 = sub_100EB2DF0();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v25, v27, 0x6567412D72657355, 0xEA0000000000746ELL, v28);
  static Locale.current.getter();
  v29 = Locale.acceptLanguageCode.getter();
  v31 = v30;
  (*(v51 + 8))(v9, v52);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v29, v31, 0x4C2D747065636341, 0xEF65676175676E61, v32);
  v33 = v24;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v34 = qword_10177C218;
  v35 = [objc_opt_self() sharedInstance];
  v36 = [v35 isInternalBuild];

  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
    v38 = [v34 BOOLForKey:v37];

    if (v38)
    {
      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v39);
    }
  }

  *(v0 + 1784) = v33;
  v40 = *(v0 + 1696);
  sub_10093DFCC(v40, v0 + 1408);
  sub_100E98C80(v40, v0 + 16);
  sub_100E9A558(v40);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 1792) = JSONEncoder.init()();
  v41 = *(v0 + 224);
  *(v0 + 440) = *(v0 + 208);
  *(v0 + 456) = v41;
  *(v0 + 472) = *(v0 + 240);
  v42 = *(v0 + 160);
  *(v0 + 376) = *(v0 + 144);
  *(v0 + 392) = v42;
  v43 = *(v0 + 192);
  *(v0 + 408) = *(v0 + 176);
  *(v0 + 424) = v43;
  v44 = *(v0 + 96);
  *(v0 + 312) = *(v0 + 80);
  *(v0 + 328) = v44;
  v45 = *(v0 + 128);
  *(v0 + 344) = *(v0 + 112);
  *(v0 + 360) = v45;
  v46 = *(v0 + 32);
  *(v0 + 248) = *(v0 + 16);
  *(v0 + 264) = v46;
  v47 = *(v0 + 64);
  *(v0 + 280) = *(v0 + 48);
  *(v0 + 296) = v47;
  sub_100E9A5AC();
  v48 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 1800) = 0;
  *(v0 + 1808) = v48;
  *(v0 + 1816) = v49;
  sub_100017D5C(v48, v49);
  v50 = swift_task_alloc();
  *(v0 + 1824) = v50;
  *v50 = v0;
  v50[1] = sub_100E99864;

  sub_100EA6FC4();
}

uint64_t sub_100E99864(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1832) = a1;
  *(v3 + 1840) = a2;

  return _swift_task_switch(sub_100E99968, 0, 0);
}

uint64_t sub_100E99968()
{
  v1 = *(v0 + 1840);
  v2 = *(v0 + 1832);
  v3 = *(v0 + 1728);
  v4 = *(v0 + 1720);
  v5 = *(v0 + 1712);
  *(v0 + 1656) = v2;
  *(v0 + 1664) = v1;
  *(v0 + 1640) = &type metadata for Data;
  *(v0 + 1648) = &protocol witness table for Data;
  *(v0 + 1616) = *(v0 + 1808);
  v6 = sub_1000035D0((v0 + 1616), &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v7, v8, v0 + 1656);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 1616));
  *(v0 + 1848) = *(v0 + 1656);
  *(v0 + 1856) = *(v0 + 1664);
  (*(v4 + 104))(v3, enum case for HashAlgorithm.sha256(_:), v5);
  v9 = Data.hash(algorithm:)();
  v11 = v10;
  *(v0 + 1864) = v9;
  *(v0 + 1872) = v10;
  (*(v4 + 8))(v3, v5);
  v12 = swift_task_alloc();
  *(v0 + 1880) = v12;
  *v12 = v0;
  v12[1] = sub_100E99B20;
  v13 = *(v0 + 1704);

  return sub_100EA87F4(v9, v11, v13);
}

uint64_t sub_100E99B20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1888) = v1;

  if (v1)
  {
    v5 = sub_100E9A08C;
  }

  else
  {
    v6 = v4[234];
    v7 = v4[233];
    v4[237] = a1;
    sub_100016590(v7, v6);
    v5 = sub_100E99C54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E99C54()
{
  v52 = v0;
  v1 = v0[237];
  v2 = v0[232];
  v3 = v0[231];
  v4 = v0[223];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v51);

  sub_100016590(v3, v2);
  v6 = v51;
  v7 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_17:
    v46 = v7;
    swift_once();
    v7 = v46;
  }

  v48 = qword_10177C410;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177C410, "Pairing lock header:", 20, 2, _swiftEmptyArrayStorage);
  v8 = v6 + 8;
  v9 = -1;
  v10 = -1 << *(v6 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v6[8];
  v12 = (63 - v10) >> 6;
  v49 = v6;

  for (i = 0; v11; v7 = )
  {
    v14 = i;
    v15 = v49;
LABEL_11:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (v14 << 10) | (16 * v16);
    v18 = v15[7];
    v19 = (v15[6] + v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v18 + v17);
    v23 = v22[1];
    v50 = *v22;

    v24 = static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10138BBE0;
    v6 = &type metadata for String;
    *(v25 + 56) = &type metadata for String;
    v26 = sub_100008C00();
    *(v25 + 32) = v20;
    *(v25 + 40) = v21;
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v26;
    *(v25 + 64) = v26;
    *(v25 + 72) = v50;
    *(v25 + 80) = v23;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v48, "%@: %@", 6, 2, v25);
  }

  v15 = v49;
  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = v8[v14];
    ++i;
    if (v11)
    {
      i = v14;
      goto LABEL_11;
    }
  }

  v27 = *(v47 + 1816);
  v28 = *(v47 + 1808);
  v29 = *(v47 + 1696);

  v30 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_101385D80;
  v32 = *(v47 + 176);
  *(v47 + 1120) = *(v47 + 192);
  v33 = *(v47 + 224);
  *(v47 + 1136) = *(v47 + 208);
  *(v47 + 1152) = v33;
  v34 = *(v47 + 112);
  *(v47 + 1056) = *(v47 + 128);
  v35 = *(v47 + 160);
  *(v47 + 1072) = *(v47 + 144);
  *(v47 + 1168) = *(v47 + 240);
  *(v47 + 1088) = v35;
  *(v47 + 1104) = v32;
  v36 = *(v47 + 96);
  *(v47 + 1008) = *(v47 + 80);
  *(v47 + 1024) = v36;
  *(v47 + 1040) = v34;
  v37 = *(v47 + 32);
  *(v47 + 944) = *(v47 + 16);
  *(v47 + 960) = v37;
  v38 = *(v47 + 64);
  *(v47 + 976) = *(v47 + 48);
  *(v47 + 992) = v38;
  sub_100E9A600(v47 + 16, v47 + 1176);
  v39 = String.init<A>(describing:)();
  v41 = v40;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_100008C00();
  *(v31 + 32) = v39;
  *(v31 + 40) = v41;
  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v48, "Pairing ack body %@", 19, 2, v31);

  sub_100E9A558(v29);

  sub_100E9A638(v47 + 16);

  sub_100017D5C(v28, v27);

  sub_100016590(v28, v27);
  v42 = *(v47 + 1816);
  v43 = *(v47 + 1808);

  v44 = *(v47 + 8);

  return v44(v49, v43, v42);
}

uint64_t sub_100E9A08C()
{
  v1 = *(v0 + 1856);
  v2 = *(v0 + 1848);
  sub_100016590(*(v0 + 1864), *(v0 + 1872));
  sub_100016590(v2, v1);
  v3 = static os_log_type_t.error.getter();
  v4 = &qword_101695000;
  if (qword_1016950C8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v5 = *(v0 + 1888);
  v6 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  *(v0 + 1688) = v5;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v50 = sub_100008C00();
  *(v7 + 64) = v50;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v6, "Failed to generate attestation header %@:", 41, 2, v7);

  v48 = v0;
  v0 = *(v0 + 1784);
  v11 = static os_log_type_t.debug.getter();
  if (*(v4 + 200) != -1)
  {
    v46 = v11;
    swift_once();
    v11 = v46;
  }

  v49 = qword_10177C410;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177C410, "Pairing lock header:", 20, 2, _swiftEmptyArrayStorage, 1, 2);
  v3 = v0 + 64;
  v12 = -1;
  v13 = -1 << *(v0 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v4 = v12 & *(v0 + 64);
  v14 = (63 - v13) >> 6;
  v51 = v0;

  v15 = 0;
  while (v4)
  {
    v16 = v15;
    v17 = v51;
LABEL_13:
    v18 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v19 = (v16 << 10) | (16 * v18);
    v20 = *(v17 + 56);
    v21 = (*(v17 + 48) + v19);
    v22 = *v21;
    v23 = v21[1];
    v24 = (v20 + v19);
    v0 = *v24;
    v25 = v24[1];

    v26 = static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10138BBE0;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v50;
    *(v27 + 32) = v22;
    *(v27 + 40) = v23;
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v50;
    *(v27 + 72) = v0;
    *(v27 + 80) = v25;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v49, "%@: %@", 6, 2, v27);
  }

  v17 = v51;
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v16 >= v14)
    {
      break;
    }

    v4 = *(v3 + 8 * v16);
    ++v15;
    if (v4)
    {
      v15 = v16;
      goto LABEL_13;
    }
  }

  v28 = *(v48 + 1816);
  v29 = *(v48 + 1808);
  v30 = *(v48 + 1696);

  v31 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v32 = swift_allocObject();
  *(v32 + 16) = v47;
  v33 = *(v48 + 176);
  *(v48 + 1120) = *(v48 + 192);
  v34 = *(v48 + 224);
  *(v48 + 1136) = *(v48 + 208);
  *(v48 + 1152) = v34;
  v35 = *(v48 + 112);
  *(v48 + 1056) = *(v48 + 128);
  v36 = *(v48 + 160);
  *(v48 + 1072) = *(v48 + 144);
  *(v48 + 1168) = *(v48 + 240);
  *(v48 + 1088) = v36;
  *(v48 + 1104) = v33;
  v37 = *(v48 + 96);
  *(v48 + 1008) = *(v48 + 80);
  *(v48 + 1024) = v37;
  *(v48 + 1040) = v35;
  v38 = *(v48 + 32);
  *(v48 + 944) = *(v48 + 16);
  *(v48 + 960) = v38;
  v39 = *(v48 + 64);
  *(v48 + 976) = *(v48 + 48);
  *(v48 + 992) = v39;
  sub_100E9A600(v48 + 16, v48 + 1176);
  v40 = String.init<A>(describing:)();
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = v50;
  *(v32 + 32) = v40;
  *(v32 + 40) = v41;
  os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v49, "Pairing ack body %@", 19, 2, v32);

  sub_100E9A558(v30);

  sub_100E9A638(v48 + 16);

  sub_100017D5C(v29, v28);

  sub_100016590(v29, v28);
  v42 = *(v48 + 1816);
  v43 = *(v48 + 1808);

  v44 = *(v48 + 8);

  return v44(v51, v43, v42);
}

unint64_t sub_100E9A5AC()
{
  result = qword_1016BDD30;
  if (!qword_1016BDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD30);
  }

  return result;
}

__n128 sub_100E9A668(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_100E9A6B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100E9A6FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
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
      *(result + 232) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100E9A794()
{
  result = qword_1016BDD40;
  if (!qword_1016BDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD40);
  }

  return result;
}

unint64_t sub_100E9A7FC()
{
  result = qword_1016BDD48;
  if (!qword_1016BDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD48);
  }

  return result;
}

unint64_t sub_100E9A854()
{
  result = qword_1016BDD50;
  if (!qword_1016BDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD50);
  }

  return result;
}

unint64_t sub_100E9A8AC()
{
  result = qword_1016BDD58;
  if (!qword_1016BDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD58);
  }

  return result;
}

uint64_t sub_100E9A900(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006E67695379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101347DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
  {

    return 14;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_100E9ADF4(_BYTE *a1, char *a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v15[-v10];
  v12 = *a2;
  v15[15] = *a1;
  v15[14] = v12;
  sub_100E9B43C();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_100E9B490(&qword_1016BDD70, &protocol conformance descriptor for Identifier<A>);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  return a2 & 1;
}

Swift::Int sub_100E9AF8C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  v6 = *v1;
  Hasher.init(_seed:)();
  v8[7] = v6;
  sub_100E9B43C();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_100E9B490(&qword_1016BDD78, &protocol conformance descriptor for Identifier<A>);
  dispatch thunk of Hashable.hash(into:)();
  (*(v3 + 8))(v5, v2);
  return Hasher._finalize()();
}

uint64_t sub_100E9B0C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  v8[15] = *v2;
  sub_100E9B43C();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_100E9B490(&qword_1016BDD78, &protocol conformance descriptor for Identifier<A>);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_100E9B1EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = *v2;
  Hasher.init(_seed:)();
  v9[7] = v7;
  sub_100E9B43C();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_100E9B490(&qword_1016BDD78, &protocol conformance descriptor for Identifier<A>);
  dispatch thunk of Hashable.hash(into:)();
  (*(v4 + 8))(v6, v3);
  return Hasher._finalize()();
}

uint64_t sub_100E9B328@<X0>(_BYTE *a1@<X8>, char *a2@<X0>)
{
  result = sub_100E9B4E0(a2);
  *a1 = result;
  return result;
}

uint64_t sub_100E9B350()
{
  type metadata accessor for Characteristic();

  return Identifier.init(stringLiteral:)();
}

unint64_t sub_100E9B3E8()
{
  result = qword_1016BDD60;
  if (!qword_1016BDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD60);
  }

  return result;
}

unint64_t sub_100E9B43C()
{
  result = qword_1016BDD68;
  if (!qword_1016BDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD68);
  }

  return result;
}

uint64_t sub_100E9B490(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101697240, &unk_10138BDA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100E9B4E0(char *a1)
{
  v2 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  (*(v3 + 16))(&v16 - v7, a1, v2);
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  sub_100E9B490(&qword_1016BDD70, &protocol conformance descriptor for Identifier<A>);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    v10(a1, v2);
    v10(v8, v2);
    return 0;
  }

  else
  {
    Identifier.init(stringLiteral:)();
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
    v10(v6, v2);
    if (v12)
    {
      v10(a1, v2);
      v10(v8, v2);
      return 1;
    }

    else
    {
      Identifier.init(stringLiteral:)();
      v13 = dispatch thunk of static Equatable.== infix(_:_:)();
      v10(v6, v2);
      if (v13)
      {
        v10(a1, v2);
        v10(v8, v2);
        return 2;
      }

      else
      {
        Identifier.init(stringLiteral:)();
        v14 = dispatch thunk of static Equatable.== infix(_:_:)();
        v10(v6, v2);
        if (v14)
        {
          v10(a1, v2);
          v10(v8, v2);
          return 3;
        }

        else
        {
          Identifier.init(stringLiteral:)();
          v15 = dispatch thunk of static Equatable.== infix(_:_:)();
          v10(a1, v2);
          v10(v6, v2);
          v10(v8, v2);
          if (v15)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_100E9B888()
{
  v1 = v0;
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100E9BB0C;
  *(v3 + 24) = v2;
  swift_retain_n();
  sub_1000BC4D4(&qword_1016BDD80, &qword_1013ECFF8);
  sub_100E9BB1C();
  v4 = Publisher<>.sink(receiveValue:)();

  v5 = *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconKeyManagerURLChangedSubscription);
  *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconKeyManagerURLChangedSubscription) = v4;
  return sub_100A4E478(v5);
}

uint64_t sub_100E9BA10(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&qword_101699900, &qword_101411880);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v8[*(v6 + 56)] = a2;
  swift_beginAccess();
  swift_weakLoadStrong();

  return sub_100E9BB80(v8);
}

unint64_t sub_100E9BB1C()
{
  result = qword_1016BDD88;
  if (!qword_1016BDD88)
  {
    sub_1000BC580(&qword_1016BDD80, &qword_1013ECFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDD88);
  }

  return result;
}

uint64_t sub_100E9BB80(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699900, &qword_101411880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100E9BBE8()
{
  result = kFMIPLocatableStateReportedNotification;
  if (kFMIPLocatableStateReportedNotification)
  {
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    qword_1016BDD90 = result;
    *algn_1016BDD98 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E9BC20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100E9BCB0();
}

uint64_t sub_100E9BCB0()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_100E9BDA4;

  return daemon.getter();
}

uint64_t sub_100E9BDA4(uint64_t a1)
{
  *(*v1 + 48) = a1;

  type metadata accessor for Daemon();
  sub_1000196F0(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100E9BEFC, v3, v2);
}

uint64_t sub_100E9BEFC()
{
  v1 = *(v0 + 16);
  *(v0 + 56) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100E9BF74, v1, 0);
}

uint64_t sub_100E9BF74()
{
  if (qword_101694F48 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = qword_1016BDD90;
  v4 = *algn_1016BDD98;
  v5 = swift_allocObject();
  v0[8] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v8 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_100E9C0B4;

  return v8(v3, v4, &unk_1013ED070, v5);
}

uint64_t sub_100E9C0B4(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100E9C1E8, v2, 0);
}

uint64_t sub_100E9C1E8()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013ED080, v4);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100E9C318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return _swift_task_switch(sub_100E9C338, 0, 0);
}

uint64_t sub_100E9C338()
{
  v5 = *(v0 + 32);
  *(v0 + 48) = *(v5 + 112);
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x8000000101372A20;
  v1 = swift_allocObject();
  *(v0 + 56) = v1;
  *(v1 + 16) = v5;

  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  sub_100E9D000();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000447EC, v3, v2);
}

uint64_t sub_100E9C428()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(1);
}

uint64_t sub_100E9C520()
{
  *(v1 + 32) = v0;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_100E9C5B4;

  return daemon.getter();
}

uint64_t sub_100E9C5B4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v6 = sub_1000196F0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000196F0(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF878);
  *v3 = v9;
  v3[1] = sub_100E9C790;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E9C790(uint64_t a1)
{
  v4 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = sub_100E9CCD8;
  }

  else
  {

    v6 = sub_100E9C8C8;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100E9C8C8()
{
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000010134CBD0;
  v4 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_100E9C9D8;
  v2 = v0[8];

  return (v4)(v0 + 2, &unk_10139D750, v2, sub_100853598, 0);
}

uint64_t sub_100E9C9D8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_100E9CB14;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = sub_100D3B7CC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100E9CB30()
{

  if (qword_101694F40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C200);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Own device publish activity failed: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100E9CCD8()
{

  if (qword_101694F40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C200);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Own device publish activity failed: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100E9CEA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014650;

  return sub_100E9C318(a1, v5, v4);
}

uint64_t sub_100E9CF4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1002ECF7C();
}

unint64_t sub_100E9D000()
{
  result = qword_101698E00;
  if (!qword_101698E00)
  {
    sub_1000BC580(&qword_1016B1270, &qword_101390A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E00);
  }

  return result;
}

uint64_t sub_100E9D064(uint64_t a1, void *a2)
{
  v64 = type metadata accessor for HashAlgorithm();
  result = __chkstk_darwin(v64);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    v62 = enum case for HashAlgorithm.sha256(_:);
    v60 = (v5 + 8);
    v61 = (v5 + 104);
    do
    {
      v15 = *v8;
      v71 = v8[1];
      v16 = v15;
      v67 = v15;
      v17 = *(&v15 + 1);
      sub_100017D5C(v15, *(&v15 + 1));
      v69 = *(&v71 + 1);
      v70 = v71;
      sub_100017D5C(v71, *(&v71 + 1));
      v18 = v68;
      v19 = sub_100A7A194(v16, v17, 0, 0);
      if (v18)
      {
        goto LABEL_41;
      }

      v20 = sub_100A7829C(v19, 0, 2);
      v68 = 0;
      v22 = v20;
      v23 = v21;
      CCECCryptorRelease();
      v24 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v24 != 2)
        {
          goto LABEL_47;
        }

        v27 = *(v22 + 16);
        v26 = *(v22 + 24);
        v28 = __OFSUB__(v26, v27);
        v25 = v26 - v27;
        if (v28)
        {
          goto LABEL_32;
        }
      }

      else if (v24)
      {
        LODWORD(v25) = HIDWORD(v22) - v22;
        if (__OFSUB__(HIDWORD(v22), v22))
        {
          goto LABEL_31;
        }

        v25 = v25;
      }

      else
      {
        v25 = BYTE6(v23);
      }

      v65 = v8;
      v66 = v7;
      if (v25 != 28)
      {
        goto LABEL_33;
      }

      v30 = v63;
      v29 = v64;
      (*v61)(v63, v62, v64);
      v31 = Data.hash(algorithm:)();
      v33 = v32;
      sub_100016590(v22, v23);
      (*v60)(v30, v29);
      sub_100017D5C(v16, v17);
      sub_100017D5C(v70, v69);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72[0] = *a2;
      v23 = v72[0];
      v35 = a2;
      *a2 = 0x8000000000000000;
      v37 = sub_100772794(v31, v33);
      v24 = *(v23 + 16);
      v38 = (v36 & 1) == 0;
      v39 = v24 + v38;
      if (__OFADD__(v24, v38))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        if (v24 == 1)
        {
          LODWORD(v24) = HIDWORD(v22) - v22;
          if (!__OFSUB__(HIDWORD(v22), v22))
          {
            v58 = v24;
            goto LABEL_48;
          }

          __break(1u);
        }

        if (v24 == 2)
        {
          v48 = *(v22 + 16);
          v47 = *(v22 + 24);
          v58 = v47 - v48;
          if (__OFSUB__(v47, v48))
          {
            __break(1u);
LABEL_41:
            v68 = v18;
            v49 = static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v50 = qword_10177BA00;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_101385D80;
            v72[0] = v68;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v51 = String.init<A>(describing:)();
            v53 = v52;
            *(v22 + 56) = &type metadata for String;
            *(v22 + 64) = sub_100008C00();
            *(v22 + 32) = v51;
            *(v22 + 40) = v53;
            os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v50, "Error deriving advertisementKey: %@", 35, 2, v22);

            sub_1001BAF88();
            v54 = swift_allocError();
            *v55 = 0;
            swift_willThrow();

            goto LABEL_45;
          }
        }

        else
        {
          v58 = BYTE6(v23);
        }

        while (1)
        {
LABEL_48:
          sub_100018350();
          v54 = swift_allocError();
          *v57 = 28;
          *(v57 + 8) = v58;
          *(v57 + 16) = 0;
          swift_willThrow();
          sub_100016590(v22, v23);
LABEL_45:
          v72[0] = 0;
          v72[1] = 0xE000000000000000;
          v23 = v72;
          _StringGuts.grow(_:)(35);
          v56._object = 0x800000010134CB30;
          v56._countAndFlagsBits = 0xD000000000000021;
          String.append(_:)(v56);
          v72[3] = v54;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_46:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_47:
          v58 = 0;
        }
      }

      v22 = v36;
      if (*(v23 + 24) >= v39)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v42 = v72[0];
          if (v36)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v23 = v72;
          sub_101009E2C();
          v42 = v72[0];
          if (v22)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_100FEFFD8(v39, isUniquelyReferenced_nonNull_native);
        v23 = v72[0];
        v40 = sub_100772794(v31, v33);
        if ((v22 & 1) != (v41 & 1))
        {
          goto LABEL_46;
        }

        v37 = v40;
        v42 = v72[0];
        if (v22)
        {
LABEL_3:
          v9 = (v42[7] + 32 * v37);
          v10 = *v9;
          v11 = v9[1];
          v12 = v9[2];
          v13 = v9[3];
          v14 = v71;
          *v9 = v67;
          *(v9 + 1) = v14;
          sub_100016590(v10, v11);
          sub_100016590(v12, v13);
          sub_100016590(v31, v33);
          goto LABEL_4;
        }
      }

      v42[(v37 >> 6) + 8] |= 1 << v37;
      v43 = (v42[6] + 16 * v37);
      *v43 = v31;
      v43[1] = v33;
      v44 = (v42[7] + 32 * v37);
      v45 = v71;
      *v44 = v67;
      v44[1] = v45;
      v46 = v42[2];
      v28 = __OFADD__(v46, 1);
      v24 = v46 + 1;
      if (v28)
      {
        goto LABEL_30;
      }

      v42[2] = v24;
LABEL_4:
      a2 = v35;
      *v35 = v42;
      sub_100016590(v16, v17);
      result = sub_100016590(v70, v69);
      v8 = v65 + 2;
      v7 = v66 - 1;
    }

    while (v66 != 1);
  }

  return result;
}

uint64_t sub_100E9D67C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100E9D808;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100E9D808()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100E9DC64;
  }

  else
  {
    v2 = sub_100E9D91C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E9D91C()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101372CA0, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100E9DC64()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101372CA0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100E9DE8C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100E9E018;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100E9E018()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100E9E474;
  }

  else
  {
    v2 = sub_100E9E12C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E9E12C()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD000000000000010, 0x8000000101372DA0, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100E9E474()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD000000000000010, 0x8000000101372DA0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100E9E69C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100E9E828;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100E9E828()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100E9EC84;
  }

  else
  {
    v2 = sub_100E9E93C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E9E93C()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101372CD0, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100E9EC84()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101372CD0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100E9EEAC()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100E9F038;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100E9F038()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100E9F494;
  }

  else
  {
    v2 = sub_100E9F14C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E9F14C()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372D00, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100E9F494()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372D00, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100E9F6BC()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100E9F848;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100E9F848()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100E9FCA4;
  }

  else
  {
    v2 = sub_100E9F95C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E9F95C()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x8000000101372E30, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100E9FCA4()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x8000000101372E30, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100E9FECC()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA0058;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA0058()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA04B4;
  }

  else
  {
    v2 = sub_100EA016C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA016C()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101372D50, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA04B4()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101372D50, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA06DC()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA0868;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA0868()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA0CC4;
  }

  else
  {
    v2 = sub_100EA097C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA097C()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101372D70, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA0CC4()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101372D70, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA0EEC()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA1078;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA1078()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA14D4;
  }

  else
  {
    v2 = sub_100EA118C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA118C()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101372BB0, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA14D4()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101372BB0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA16FC()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA1888;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA1888()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA1CEC;
  }

  else
  {
    v2 = sub_100EA199C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA199C()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0x654D796669746F4ELL, 0xEF74736575716552, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA1CEC()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0x654D796669746F4ELL, 0xEF74736575716552, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA1F1C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA20A8;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA20A8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA2504;
  }

  else
  {
    v2 = sub_100EA21BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA21BC()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD000000000000016, 0x8000000101372DE0, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA2504()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD000000000000016, 0x8000000101372DE0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA272C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA28B8;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA28B8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA2D14;
  }

  else
  {
    v2 = sub_100EA29CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA29CC()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101372E00, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA2D14()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101372E00, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA2F3C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA30C8;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA30C8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA3524;
  }

  else
  {
    v2 = sub_100EA31DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA31DC()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372DC0, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA3524()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372DC0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA374C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA38D8;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA38D8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA3D34;
  }

  else
  {
    v2 = sub_100EA39EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA39EC()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101372B90, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA3D34()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101372B90, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA3F5C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA40E8;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA40E8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA4544;
  }

  else
  {
    v2 = sub_100EA41FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA41FC()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101372B70, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA4544()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101372B70, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA476C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA48F8;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA48F8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA4D54;
  }

  else
  {
    v2 = sub_100EA4A0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA4A0C()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD000000000000021, 0x8000000101372D20, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA4D54()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD000000000000021, 0x8000000101372D20, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA4F7C()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA5108;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA5108()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA5568;
  }

  else
  {
    v2 = sub_100EA521C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA521C()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0x7165526863746546, 0xEC00000074736575, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA5568()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0x7165526863746546, 0xEC00000074736575, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA5794()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA5920;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA5920()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA5D7C;
  }

  else
  {
    v2 = sub_100EA5A34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA5A34()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372C80, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA5D7C()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372C80, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA5FA4()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA6130;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA6130()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA658C;
  }

  else
  {
    v2 = sub_100EA6244;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA6244()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD000000000000014, 0x8000000101372BF0, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA658C()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD000000000000014, 0x8000000101372BF0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA67B4()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA6940;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA6940()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA6D9C;
  }

  else
  {
    v2 = sub_100EA6A54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA6A54()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101372C30, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA6D9C()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101372C30, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA6FC4()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA7150;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA7150()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA75AC;
  }

  else
  {
    v2 = sub_100EA7264;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA7264()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101372C60, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA75AC()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101372C60, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA77D4()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA7960;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA7960()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA7DBC;
  }

  else
  {
    v2 = sub_100EA7A74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA7A74()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372C10, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA7DBC()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x8000000101372C10, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA7FE4()
{
  v1 = type metadata accessor for String.Encoding();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BDED8, &unk_1013ED120);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for SearchpartyAccount();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100EA8170;

  return static AppleAccount.searchpartyAccount.getter(v2);
}

uint64_t sub_100EA8170()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100EA85CC;
  }

  else
  {
    v2 = sub_100EA8284;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EA8284()
{
  v25 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BDED8, &unk_1013ED120);
  }

  else
  {
    (*(v2 + 32))(v0[8], v3, v1);
    if (*(RequestCredential.authHeaders.getter() + 16))
    {
      sub_100771D58(0x7A69726F68747541, 0xED00006E6F697461);
      v5 = v0[7];
      v4 = v0[8];
      v6 = v0[6];
      if (v7)
      {
        v9 = v0[3];
        v8 = v0[4];
        v10 = v0[2];

        static String.Encoding.utf8.getter();
        v11 = String.data(using:allowLossyConversion:)();
        v13 = v12;

        (*(v9 + 8))(v8, v10);
        (*(v5 + 8))(v4, v6);
        if (v13 >> 60 != 15)
        {
          goto LABEL_14;
        }
      }

      else
      {

        (*(v5 + 8))(v4, v6);
      }
    }

    else
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = v0[6];

      (*(v15 + 8))(v14, v16);
    }
  }

  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C548);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101372BD0, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Could not read credential data.", v20, 0xCu);
    sub_100007BAC(v21);
  }

  v11 = 0;
  v13 = 0xC000000000000000;
LABEL_14:

  v22 = v0[1];

  return v22(v11, v13);
}

uint64_t sub_100EA85CC()
{
  v11 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C548);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101372BD0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Cannot get authorization header %{public}@.", v4, 0x16u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0, 0xC000000000000000);
}

uint64_t sub_100EA87F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[47] = a2;
  v3[48] = a3;
  v3[46] = a1;
  v4 = type metadata accessor for HashAlgorithm();
  v3[49] = v4;
  v3[50] = *(v4 - 8);
  v3[51] = swift_task_alloc();

  return _swift_task_switch(sub_100EA88B8, 0, 0);
}

uint64_t sub_100EA88B8()
{
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v1 = qword_10177C218;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isInternalBuild];

  if (v3 && (v4 = String._bridgeToObjectiveC()(), v5 = [v1 BOOLForKey:v4], v4, v5))
  {
    if (qword_1016951C0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C548);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "ExcludeBAACerts defaults is enabled. Skipping BAA", v9, 2u);
    }

    v10 = v0[1];

    return v10(_swiftEmptyDictionarySingleton);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[52] = v12;
    *v12 = v0;
    v12[1] = sub_100EA8B18;
    v13 = v0[47];
    v14 = v0[46];

    return DeviceIdentityUtility.signDataWithDeviceIdentity(dataToSign:)((v0 + 30), v14, v13);
  }
}

uint64_t sub_100EA8B18()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100EB2DEC, 0, 0);
  }
}

uint64_t sub_100EA8C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[47] = a2;
  v3[48] = a3;
  v3[46] = a1;
  v4 = type metadata accessor for HashAlgorithm();
  v3[49] = v4;
  v3[50] = *(v4 - 8);
  v3[51] = swift_task_alloc();

  return _swift_task_switch(sub_100EA8D28, 0, 0);
}

uint64_t sub_100EA8D28()
{
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v1 = qword_10177C218;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isInternalBuild];

  if (v3 && (v4 = String._bridgeToObjectiveC()(), v5 = [v1 BOOLForKey:v4], v4, v5))
  {
    if (qword_1016951C0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C548);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "ExcludeBAACerts defaults is enabled. Skipping BAA", v9, 2u);
    }

    v10 = v0[1];

    return v10(_swiftEmptyDictionarySingleton);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[52] = v12;
    *v12 = v0;
    v12[1] = sub_100EA8F88;
    v13 = v0[47];
    v14 = v0[46];

    return DeviceIdentityUtility.signDataWithDeviceIdentity(dataToSign:)((v0 + 30), v14, v13);
  }
}

uint64_t sub_100EA8F88()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100EA90D4, 0, 0);
  }
}

uint64_t sub_100EA90D4()
{
  v41 = v0;
  if (qword_1016951C0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C548);
  sub_100017D5C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  sub_100016590(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v40 = v7;
    *v6 = 136315138;
    v8 = Data.hexString.getter();
    v10 = sub_1000136BC(v8, v9, &v40);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully signed request: %s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = objc_autoreleasePoolPush();
  v12 = Data.base64EncodedString(options:)(0);
  countAndFlagsBits = v12._countAndFlagsBits;
  object = v12._object;
  *(v0 + 304) = *(v0 + 288);
  if (*(v0 + 264) >> 60 == 15)
  {
    sub_1000D2A70(v0 + 304, v0 + 320, &qword_1016A0AC0, &unk_1013926A0);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    sub_1000D2A70(v0 + 304, v0 + 352, &qword_1016A0AC0, &unk_1013926A0);
    v17 = Data.base64EncodedString(options:)(0);
    v15 = v17._countAndFlagsBits;
    v16 = v17._object;
  }

  if (*(v0 + 280) >> 60 == 15)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v39 = v11;
    v20 = *(v0 + 400);
    v21 = *(v0 + 408);
    v22 = *(v0 + 392);
    (*(v20 + 104))(v21, enum case for HashAlgorithm.sha256(_:), v22);
    v23 = Data.hash(algorithm:)();
    v25 = v24;
    v26 = v22;
    object = v12._object;
    countAndFlagsBits = v12._countAndFlagsBits;
    (*(v20 + 8))(v21, v26);
    v11 = v39;
    v27 = Data.base64EncodedString(options:)(0);
    v18 = v27._countAndFlagsBits;
    v19 = v27._object;
    sub_100016590(v23, v25);
  }

  objc_autoreleasePoolPop(v11);
  if (v16 && v19)
  {
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10138B360;
    strcpy((inited + 32), "X-Apple-Sign1");
    *(inited + 46) = -4864;
    *(inited + 48) = v15;
    *(inited + 56) = v16;
    strcpy((inited + 64), "X-Apple-Sign2");
    *(inited + 78) = -4864;
    *(inited + 80) = v18;
    *(inited + 88) = v19;
    strcpy((inited + 96), "X-Apple-Sign3");
    *(inited + 110) = -4864;
    *(inited + 112) = countAndFlagsBits;
    *(inited + 120) = object;
    v29 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
    swift_arrayDestroy();
LABEL_16:
    sub_10000B3A8(v0 + 304, &qword_1016A0AC0, &unk_1013926A0);
    sub_100EB1AD0(v0 + 240);

    v33 = *(v0 + 8);

    return v33(v29);
  }

  v30 = *(v0 + 312);
  if (v30)
  {
    v31 = *(v0 + 304);
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_10138BBE0;
    strcpy((v32 + 32), "X-Apple-Sign");
    *(v32 + 45) = 0;
    *(v32 + 46) = -5120;
    *(v32 + 48) = countAndFlagsBits;
    *(v32 + 56) = object;
    strcpy((v32 + 64), "X-Apple-Cert");
    *(v32 + 77) = 0;
    *(v32 + 78) = -5120;
    *(v32 + 80) = v31;
    *(v32 + 88) = v30;
    sub_1000D2A70(v0 + 304, v0 + 336, &qword_1016A0AC0, &unk_1013926A0);
    v29 = sub_100907E70(v32);
    swift_setDeallocating();
    sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
    swift_arrayDestroy();

    goto LABEL_16;
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Could not get certs for attestation.", v37, 2u);
  }

  sub_100EB1A7C();
  swift_allocError();
  swift_willThrow();

  sub_10000B3A8(v0 + 304, &qword_1016A0AC0, &unk_1013926A0);
  sub_100EB1AD0(v0 + 240);

  v38 = *(v0 + 8);

  return v38();
}

void *sub_100EA96D4()
{
  v1 = *(v0 + *(type metadata accessor for FetchRequestBeacon(0) + 28));
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v49 = v1;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v48 = _swiftEmptyArrayStorage;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v7 << 10) | (16 * v10);
    v12 = *(*(v49 + 48) + v11);
    v13 = *(v49 + 56) + v11;
    v14 = *v13;
    v15 = v12;
    if (*(v13 + 8))
    {
      v52 = v12;
      sub_100017D5C(v12, *(&v12 + 1));
      sub_10025DB08();
      v51 = RawRepresentable<>.base64EncodedString(options:)();
      v24 = v23;
      v25 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_100A5EBF8(0, v48[2] + 1, 1, v48);
      }

      v27 = v48[2];
      v26 = v48[3];
      if (v27 >= v26 >> 1)
      {
        v48 = sub_100A5EBF8((v26 > 1), v27 + 1, 1, v48);
      }

      v48[2] = v27 + 1;
      v28 = &v48[3 * v27];
      v28[4] = v51;
      v28[5] = v24;
      v28[6] = v25;
      sub_100016590(v15, *(&v15 + 1));
    }

    else
    {
      v52 = v12;
      sub_100017D5C(v12, *(&v12 + 1));
      sub_10025DB08();
      v50 = RawRepresentable<>.base64EncodedString(options:)();
      v17 = v16;
      v18 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100A5EBF8(0, v8[2] + 1, 1, v8);
      }

      v20 = v8[2];
      v19 = v8[3];
      v21 = v8;
      if (v20 >= v19 >> 1)
      {
        v21 = sub_100A5EBF8((v19 > 1), v20 + 1, 1, v8);
      }

      v21[2] = v20 + 1;
      v8 = v21;
      v22 = &v21[3 * v20];
      v22[4] = v50;
      v22[5] = v17;
      v22[6] = v18;
      sub_100016590(v15, *(&v15 + 1));
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  *&v52 = v8;

  sub_100EAAE8C(&v52);
  v29 = v52;
  v30 = *(v52 + 16);
  if (v30)
  {
    *&v52 = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v30, 0);
    v31 = v52;
    v32 = (v29 + 40);
    do
    {
      v33 = *(v32 - 1);
      v34 = *v32;
      *&v52 = v31;
      v36 = v31[2];
      v35 = v31[3];

      if (v36 >= v35 >> 1)
      {
        sub_101123BB8((v35 > 1), v36 + 1, 1);
        v31 = v52;
      }

      v31[2] = v36 + 1;
      v37 = &v31[2 * v36];
      v37[4] = v33;
      v37[5] = v34;
      v32 += 3;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  *&v52 = v48;

  sub_100EAAE8C(&v52);
  v38 = v52;
  v39 = *(v52 + 16);
  if (v39)
  {
    *&v52 = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v39, 0);
    v40 = v52;
    v41 = (v38 + 40);
    do
    {
      v42 = *(v41 - 1);
      v43 = *v41;
      *&v52 = v40;
      v44 = *(v40 + 16);
      v45 = *(v40 + 24);

      if (v44 >= v45 >> 1)
      {
        sub_101123BB8((v45 > 1), v44 + 1, 1);
        v40 = v52;
      }

      *(v40 + 16) = v44 + 1;
      v46 = v40 + 16 * v44;
      *(v46 + 32) = v42;
      *(v46 + 40) = v43;
      v41 += 3;
      --v39;
    }

    while (v39);
  }

  return v31;
}

uint64_t sub_100EA9B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (static UUID.== infix(_:_:)())
  {
    RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
    sub_100EAD2FC((v2 + RequestBeacon[5]), (a1 + RequestBeacon[5]), a2 + RequestBeacon[5]);
    sub_100EAD2FC((v2 + RequestBeacon[6]), (a1 + RequestBeacon[6]), a2 + RequestBeacon[6]);
    v6 = RequestBeacon[7];
    v7 = *(v2 + v6);
    v8 = *(a1 + v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v7;
    sub_100EB0178(v8, sub_100EB0154, 0, isUniquelyReferenced_nonNull_native, &v23);

    v10 = v23;
    v11 = RequestBeacon[9];
    v12 = *(v2 + v11);
    v13 = *(a1 + v11);

    v14 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v12;
    sub_100EB042C(v13, sub_100EB00EC, 0, v14, &v23);

    v15 = v23;
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 16))(a2, v2, v16);
    v18 = (v2 + RequestBeacon[8]);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v18 + 1);
    *(a2 + RequestBeacon[7]) = v10;
    v22 = a2 + RequestBeacon[8];
    *v22 = v19;
    *(v22 + 1) = v20;
    *(v22 + 8) = v21;
    *(a2 + RequestBeacon[9]) = v15;
  }

  else
  {
    sub_100EA9D20();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}
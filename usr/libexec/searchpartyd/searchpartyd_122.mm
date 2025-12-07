uint64_t sub_100D92028()
{
  v1 = v0[26];
  sub_100006654(v0[36], v0[37]);

  sub_10000B3A8(v1, &qword_1016BB8E8, &qword_1013E8A68);

  v2 = v0[1];

  return v2(0);
}

uint64_t sub_100D9218C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

BOOL sub_100D922C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_100D97688(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100D9235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 64) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v8 = type metadata accessor for UUID();
  *(v6 + 32) = v8;
  *(v6 + 40) = *(v8 - 8);
  *(v6 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100D92424, a5, 0);
}

uint64_t sub_100D92424()
{
  v23 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 32);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v22);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Store previous user's choice for this accessory %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0 + 64);
  v19 = swift_task_alloc();
  *(v0 + 56) = v19;
  *v19 = v0;
  v19[1] = sub_100D926B4;
  v20 = *(v0 + 16);

  return sub_100D927C4(v20, v18, 0x1000000000000000);
}

uint64_t sub_100D926B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100D927C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_100D9285C;

  return daemon.getter();
}

uint64_t sub_100D9285C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100D92A38;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D92A38(uint64_t a1)
{
  v3 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v4 = v3[5];
    v5 = sub_100D93130;
  }

  else
  {
    v6 = v3[5];

    v5 = sub_100D92B60;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D92B60()
{
  v16 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016BB490);
  sub_100C61CD4(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_100C61CE4(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = sub_1011EB8F8(v7, v6);
    v12 = sub_1000136BC(v10, v11, &v15);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Saving accessory info %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  v13 = v0[9];

  return _swift_task_switch(sub_100D92D1C, v13, 0);
}

uint64_t sub_100D92D1C()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100D92DBC;
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  return sub_100C586BC(v3, v2, v4);
}

uint64_t sub_100D92DBC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100D92EE8;
  }

  else
  {
    v4 = sub_1001884B4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D92EE8()
{
  v18 = v0;

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016BB490);
  sub_100C61CD4(v2, v1);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  sub_100C61CE4(v2, v1);

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v11 = sub_1011EB8F8(v7, v6);
    v13 = sub_1000136BC(v11, v12, &v17);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save accessory info %{private,mask.hash}s, error %{public}@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100D93130()
{
  v18 = v0;

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016BB490);
  sub_100C61CD4(v2, v1);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  sub_100C61CE4(v2, v1);

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v11 = sub_1011EB8F8(v7, v6);
    v13 = sub_1000136BC(v11, v12, &v17);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save accessory info %{private,mask.hash}s, error %{public}@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100D93378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = type metadata accessor for UUID();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100D93440, a4, 0);
}

uint64_t sub_100D93440()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100D934E4;
  v2 = *(v0 + 24);

  return sub_100C5969C(v2, 0, 0xF000000000000000);
}

uint64_t sub_100D934E4()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100D93620, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100D93620()
{
  v23 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 138543875;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v13;
    *v20 = v13;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v22);

    *(v12 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error on accessory info deletion %{public}@, identifier %{private,mask.hash}s", v12, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100D938F4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 112) = a2;
  *(v4 + 120) = v3;
  *(v4 + 368) = a3;
  *(v4 + 104) = a1;
  *(v4 + 128) = sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  *(v4 + 136) = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v4 + 144) = v5;
  *(v4 + 152) = *(v5 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016BB8D8, &unk_1013E8A50);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  *(v4 + 192) = swift_task_alloc();
  v6 = type metadata accessor for MACAddress();
  *(v4 + 200) = v6;
  *(v4 + 208) = *(v6 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory(0);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v4 + 248) = v7;
  *(v4 + 256) = *(v7 - 8);
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_100D93BC8, v3, 0);
}

uint64_t sub_100D93BC8()
{
  v81 = v0;
  if (*(v0 + 368) <= 1u)
  {
    if (*(v0 + 368))
    {
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v38 = *(v0 + 304);
      v39 = *(v0 + 248);
      v40 = *(v0 + 256);
      v41 = *(v0 + 104);
      v42 = type metadata accessor for Logger();
      sub_1000076D4(v42, qword_1016BB490);
      (*(v40 + 16))(v38, v41, v39);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      v43 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 304);
      v10 = *(v0 + 248);
      v11 = *(v0 + 256);
      if (v43)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v80 = v13;
        *v12 = 136446210;
        sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v45;
        (*(v11 + 8))(v9, v10);
        v47 = sub_1000136BC(v44, v46, &v80);

        *(v12 + 4) = v47;
        v18 = "Accessory auth failed for %{public}s";
        goto LABEL_20;
      }
    }

    else
    {
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v1 = *(v0 + 312);
      v2 = *(v0 + 248);
      v3 = *(v0 + 256);
      v4 = *(v0 + 104);
      v5 = type metadata accessor for Logger();
      sub_1000076D4(v5, qword_1016BB490);
      (*(v3 + 16))(v1, v4, v2);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 312);
      v10 = *(v0 + 248);
      v11 = *(v0 + 256);
      if (v8)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v80 = v13;
        *v12 = 136446210;
        sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = v15;
        (*(v11 + 8))(v9, v10);
        v17 = sub_1000136BC(v14, v16, &v80);

        *(v12 + 4) = v17;
        v18 = "Unknown auth status for %{public}s";
LABEL_20:
        _os_log_impl(&_mh_execute_header, v6, v7, v18, v12, 0xCu);
        sub_100007BAC(v13);

LABEL_22:

        v58 = *(v0 + 8);

        return v58();
      }
    }

LABEL_21:

    (*(v11 + 8))(v9, v10);
    goto LABEL_22;
  }

  if (*(v0 + 368) != 2)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 256);
    v48 = *(v0 + 264);
    v50 = *(v0 + 248);
    v51 = *(v0 + 104);
    v52 = type metadata accessor for Logger();
    sub_1000076D4(v52, qword_1016BB490);
    (*(v49 + 16))(v48, v51, v50);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v53 = os_log_type_enabled(v6, v7);
    v11 = *(v0 + 256);
    v9 = *(v0 + 264);
    v10 = *(v0 + 248);
    if (v53)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v80 = v13;
      *v12 = 136446210;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v11 + 8))(v9, v10);
      v57 = sub_1000136BC(v54, v56, &v80);

      *(v12 + 4) = v57;
      v18 = "Accessory auth timed out for %{public}s";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 296);
  v21 = *(v0 + 248);
  v20 = *(v0 + 256);
  v22 = *(v0 + 104);
  v23 = type metadata accessor for Logger();
  *(v0 + 320) = sub_1000076D4(v23, qword_1016BB490);
  v24 = *(v20 + 16);
  *(v0 + 328) = v24;
  *(v0 + 336) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v19, v22, v21);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 296);
  v30 = *(v0 + 248);
  v29 = *(v0 + 256);
  if (v27)
  {
    v31 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v80 = v79;
    *v31 = 136446210;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v35 = *(v29 + 8);
    v35(v28, v30);
    v36 = sub_1000136BC(v32, v34, &v80);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "Accessory auth status is .passed for %{public}s", v31, 0xCu);
    sub_100007BAC(v79);

    v37 = v35;
  }

  else
  {

    v37 = *(v29 + 8);
    v37(v28, v30);
  }

  v60 = *(v0 + 240);
  v61 = *(v0 + 120);
  v62 = OBJC_IVAR____TtC12searchpartyd20PencilPairingService_attachedLocalFindableAccessory;
  *(v0 + 344) = v37;
  *(v0 + 352) = v62;
  swift_beginAccess();
  sub_100DD9284(v61 + v62, v60, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v63 = *(v0 + 288);
    v65 = *(v0 + 248);
    v64 = *(v0 + 256);
    v66 = *(v0 + 240);
    v67 = *(v0 + 144);
    v68 = *(v0 + 152);
    v69 = *(sub_1000BC4D4(&qword_1016BB8E0, &qword_1013E8A60) + 48);
    (*(v64 + 32))(v63, v66, v65);
    (*(v68 + 8))(v66 + v69, v67);
    LOBYTE(v66) = static UUID.== infix(_:_:)();
    v37(v63, v65);
    if (v66)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_100DD92EC(*(v0 + 240), type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);
  }

  v71 = *(v0 + 200);
  v70 = *(v0 + 208);
  v72 = *(v0 + 192);
  sub_1000D2A70(*(v0 + 112), v72, &qword_1016A40D0, &unk_10138BE70);
  if ((*(v70 + 48))(v72, 1, v71) == 1)
  {
    sub_10000B3A8(*(v0 + 192), &qword_1016A40D0, &unk_10138BE70);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Accessory auth status is passed without a MAC address! (Bug on CoreAccessory)", v75, 2u);
    }

    goto LABEL_22;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  v76 = swift_task_alloc();
  *(v0 + 360) = v76;
  *v76 = v0;
  v76[1] = sub_100D945BC;
  v77 = *(v0 + 216);
  v78 = *(v0 + 184);

  return sub_100D95354(v78, v77);
}

uint64_t sub_100D945BC()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_100D946CC, v1, 0);
}

uint64_t sub_100D946CC()
{
  v79 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  sub_1000D2A70(v0[23], v1, &qword_1016BB8D8, &unk_1013E8A50);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[41];
  v6 = v0[31];
  if (v4 == 1)
  {
    v7 = v0[34];
    v8 = v0[13];
    sub_10000B3A8(v0[22], &qword_1016BB8D8, &unk_1013E8A50);
    v5(v7, v8, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[43];
    v13 = v0[34];
    v14 = v0[31];
    if (v11)
    {
      v75 = v0[43];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v78 = v16;
      *v15 = 136446210;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v75(v13, v14);
      v20 = sub_1000136BC(v17, v19, &v78);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unsupported pencil attached: uuid: %{public}s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    else
    {

      v12(v13, v14);
    }

    v48 = v0[44];
    v49 = v0[29];
    v50 = v0[26];
    v77 = v0[27];
    v51 = v0[25];
    v52 = v0[23];
    v53 = v0[17];
    v54 = v0[15];
    (v0[41])(v49, v0[13], v0[31]);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100DD6A88(v49, v54 + v48);
    swift_endAccess();
    type metadata accessor for SPPairingSessionError(0);
    v0[12] = 16;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100D97688(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v53 = v0[11];
    swift_storeEnumTagMultiPayload();
    AsyncStreamProvider.yield(value:transaction:)();
    sub_10000B3A8(v53, &qword_10169A068, &qword_1013933F0);
    sub_10000B3A8(v52, &qword_1016BB8D8, &unk_1013E8A50);
    (*(v50 + 8))(v77, v51);
  }

  else
  {
    v21 = v0[35];
    v22 = v0[21];
    v76 = v0[20];
    v24 = v0[18];
    v23 = v0[19];
    v25 = v0[13];
    (*(v23 + 32))(v22, v0[22], v24);
    v5(v21, v25, v6);
    v74 = *(v23 + 16);
    v74(v76, v22, v24);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[43];
    v30 = v0[35];
    v31 = v0[31];
    v32 = v0[19];
    v33 = v0[20];
    v34 = v0[18];
    if (v28)
    {
      log = v26;
      v35 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v35 = 136446466;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v29;
      v38 = v34;
      v39 = v33;
      v40 = v36;
      v68 = v27;
      v42 = v41;
      v37(v30, v31);
      v43 = sub_1000136BC(v40, v42, &v78);

      *(v35 + 4) = v43;
      *(v35 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v73 = *(v32 + 8);
      v73(v39, v38);
      v47 = sub_1000136BC(v44, v46, &v78);

      *(v35 + 14) = v47;
      _os_log_impl(&_mh_execute_header, log, v68, "Pencil attached: uuid: %{public}s (%{public}s)", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v73 = *(v32 + 8);
      v73(v33, v34);
      v29(v30, v31);
    }

    v55 = v0[41];
    v56 = v0[31];
    v57 = v0[29];
    v66 = v0[44];
    loga = v0[25];
    v72 = v0[27];
    v67 = v0[23];
    v69 = v0[26];
    v58 = v0[21];
    v60 = v0[17];
    v59 = v0[18];
    v61 = v0[15];
    v62 = v0[13];
    v63 = *(sub_1000BC4D4(&qword_1016BB8E0, &qword_1013E8A60) + 48);
    v55(v57, v62, v56);
    v74(v57 + v63, v58, v59);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100DD6A88(v57, v61 + v66);
    swift_endAccess();
    v74(v60, v58, v59);
    type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    AsyncStreamProvider.yield(value:transaction:)();
    sub_10000B3A8(v60, &qword_10169A068, &qword_1013933F0);
    v73(v58, v59);
    sub_10000B3A8(v67, &qword_1016BB8D8, &unk_1013E8A50);
    (*(v69 + 8))(v72, loga);
  }

  v64 = v0[1];

  return v64();
}

uint64_t sub_100D94F40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100D94F60, v1, 0);
}

uint64_t sub_100D94F60()
{
  if (qword_101694EA8 != -1)
  {
    swift_once();
  }

  v1 = off_1016BB4A8;
  *(v0 + 32) = off_1016BB4A8;
  v2 = v1[32];
  *(v0 + 72) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 7);

  if (v5)
  {
    v7 = 0;
LABEL_10:
    *(v0 + 40) = v5;
    *(v0 + 48) = v7;
    v9 = (*(v6 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
    *(v0 + 56) = *v9;
    *(v0 + 64) = v9[1];
    type metadata accessor for Peripheral();
    sub_100D97688(&unk_1016C11B0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);

    v11 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100D95138, v11, v10);
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 64);
      if (v5)
      {
        goto LABEL_10;
      }
    }

    v12 = *(v0 + 8);

    return v12(0);
  }
}

uint64_t sub_100D95138()
{
  v1 = *(v0 + 24);
  *(v0 + 73) = dispatch thunk of Peripheral.hasTag(_:)() & 1;

  return _swift_task_switch(sub_100D951C0, v1, 0);
}

uint64_t sub_100D951C0(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 73);
  if (v4)
  {
LABEL_2:

    v5 = *(v3 + 8);

    return v5(v4);
  }

  else
  {
    v7 = *(v3 + 48);
    v8 = (*(v3 + 40) - 1) & *(v3 + 40);
    if (v8)
    {
      v9 = *(v3 + 32);
LABEL_11:
      *(v3 + 40) = v8;
      *(v3 + 48) = v7;
      v11 = (*(v9 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v8)))));
      *(v3 + 56) = *v11;
      *(v3 + 64) = v11[1];
      type metadata accessor for Peripheral();
      sub_100D97688(&unk_1016C11B0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);

      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      a1 = sub_100D95138;
      a2 = v12;
      a3 = v14;
    }

    else
    {
      while (1)
      {
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v10 >= (((1 << *(v3 + 72)) + 63) >> 6))
        {
          goto LABEL_2;
        }

        v9 = *(v3 + 32);
        v8 = *(v9 + 8 * v10 + 56);
        ++v7;
        if (v8)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    return _swift_task_switch(a1, a2, a3);
  }
}

uint64_t sub_100D95354(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for MACAddress();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_100D9545C, v2, 0);
}

uint64_t sub_100D9545C()
{
  v1 = v0[13];
  v0[2] = _swiftEmptyArrayStorage;
  v0[14] = type metadata accessor for CentralManager();
  static CentralManager.Options.needsRestrictedStateOperation.getter();
  v2 = type metadata accessor for CentralManager.Options();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_100D95560;
  v4 = v0[13];

  return CentralManager.__allocating_init(options:)(v4);
}

uint64_t sub_100D95560(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_100D95678, v2, 0);
}

uint64_t sub_100D95678()
{
  v24 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  v0[17] = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v3 + 16);
  v0[18] = v6;
  v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 136446210;
    sub_100D97688(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Looking for CBPeripheral for attached accessory by MAC address: %{public}s", v13, 0xCu);
    sub_100007BAC(v22);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[20] = v17;

  v19 = swift_task_alloc();
  v0[21] = v19;
  *v19 = v0;
  v19[1] = sub_100D95938;
  v20 = v0[16];

  return withTimeout<A>(_:block:)(v19, 1000000000000000000, 0, &unk_1013E8A30, v20, &type metadata for () + 1);
}

uint64_t sub_100D95938()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_100D964CC;
  }

  else
  {
    v4 = sub_100D95A80;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D95A80()
{
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136446466;
    *(v4 + 4) = sub_1000136BC(0xD000000000000032, 0x8000000101371020, &v12);
    *(v4 + 12) = 2080;
    v0[5] = v3;
    sub_100D97688(&qword_1016B8628, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = sub_1000136BC(v5, v6, &v12);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s %s has powered on!", v4, 0x16u);
    swift_arrayDestroy();
  }

  v11 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_100D95CA0;
  v9 = v0[7];

  return v11(v9);
}

uint64_t sub_100D95CA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v5 = *(v3 + 64);
  if (v1)
  {
    v6 = sub_100D9669C;
  }

  else
  {
    v6 = sub_100D95DD4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D95DD4()
{
  v29 = v0;
  v1 = *(v0 + 192);
  if (v1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v28 = v5;
      *v4 = 136446210;
      *(v0 + 32) = v1;
      type metadata accessor for Peripheral();
      sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = sub_1000136BC(v6, v7, &v28);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Found peripheral by MAC address: %{public}s", v4, 0xCu);
      sub_100007BAC(v5);
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v9 = *(v0 + 16);
  }

  else
  {
    (*(v0 + 144))(*(v0 + 88), *(v0 + 56), *(v0 + 72));
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 160);
    v14 = *(v0 + 88);
    v15 = *(v0 + 72);
    if (v12)
    {
      v27 = *(v0 + 160);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136446210;
      sub_100D97688(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v27(v14, v15);
      v21 = sub_1000136BC(v18, v20, &v28);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "No CBPeripheral found for %{public}s", v16, 0xCu);
      sub_100007BAC(v17);
    }

    else
    {

      v13(v14, v15);
    }

    v9 = _swiftEmptyArrayStorage;
  }

  *(v0 + 208) = v9;
  *(v0 + 24) = v9;

  v22 = swift_task_alloc();
  *(v0 + 216) = v22;
  v23 = sub_1000BC4D4(&qword_1016BB8C8, &qword_1013E8A48);
  v24 = sub_1000041A4(&qword_1016BB8D0, &qword_1016BB8C8, &qword_1013E8A48, &protocol conformance descriptor for [A]);
  *v22 = v0;
  v22[1] = sub_100D9620C;
  v25 = *(v0 + 64);

  return Sequence.asyncFilter(_:)(&unk_1013E8A40, v25, v23, v24);
}

uint64_t sub_100D9620C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 224) = a1;

  if (v1)
  {
  }

  else
  {
    v5 = *(v3 + 64);
    swift_bridgeObjectRelease_n();

    return _swift_task_switch(sub_100D96354, v5, 0);
  }
}

uint64_t sub_100D96354()
{
  v1 = v0[28];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 1;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  Peripheral.id.getter();

  v3 = 0;
LABEL_9:

  v4 = v0[6];
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  (*(*(v5 - 8) + 56))(v4, v3, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100D964CC()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error while retrieving peripheral: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 48);
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100D9669C()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error while retrieving peripheral: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 48);
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100D9688C()
{
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v0 + 24) = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = type metadata accessor for CentralManager();
  v10 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v8 = v0;
  v8[1] = sub_100D96A60;

  return CentralManagerProtocol.await(states:)(v5, v9, v10);
}

uint64_t sub_100D96A60()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100D96B9C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100D96B9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D96C00(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1003EA5F8;

  return sub_100D94F40(v2);
}

uint64_t sub_100D96C98()
{

  sub_100DD92EC(v0 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_attachedLocalFindableAccessory, type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100D96D54()
{
  sub_100D96C98();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100D96DA8(uint64_t a1)
{
  result = type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100D96EC4(uint64_t a1)
{
  sub_100D96F24(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100D96F24(uint64_t a1)
{
  if (!qword_1016BB768)
  {
    type metadata accessor for Peripheral();
    v1 = type metadata accessor for Identifier();
    if (!v2)
    {
      atomic_store(v1, &qword_1016BB768);
    }
  }
}

void sub_100D96F7C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100D96FF4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100D96FF4(uint64_t a1)
{
  if (!qword_1016BB818)
  {
    type metadata accessor for UUID();
    sub_1000BC580(&qword_10169A060, &unk_10139DB00);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016BB818);
    }
  }
}

uint64_t sub_100D97070(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for PencilPairingService(0);
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100D9711C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PencilPairingService(0);
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100D971E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for PencilPairingService(0);
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100D97290(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for PencilPairingService(0);
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_100D9733C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D78484();
}

uint64_t sub_100D973C8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100D973E8, v3, 0);
}

uint64_t sub_100D973E8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100D9748C;
  v2 = *(v0 + 16);

  return sub_1011E111C(v2);
}

uint64_t sub_100D9748C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100D9758C()
{
  type metadata accessor for PencilPairingService(0);
  sub_100D97688(&qword_10169A090, type metadata accessor for PencilPairingService, &unk_1013E8708);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100D97688(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100D976D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v47 = a3;
  v53 = a1;
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v51 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v37 = v8;
  v57 = *(v8 - 8);
  v9 = v57[8];
  v10 = __chkstk_darwin(v8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v38 = &v37 - v11;
  v13 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v52 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v55 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  v39 = &v37 - v17;
  v50 = *(a2 + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_queue);
  v49 = type metadata accessor for WorkItemQueue.WorkItem();
  v54 = swift_allocObject();
  swift_weakInit();
  v46 = *(v14 + 16);
  v46(v18, a3, v13);
  v19 = v57;
  v45 = v57[2];
  v45(v12, v53, v8);
  v20 = *(v14 + 80);
  v21 = (v20 + 24) & ~v20;
  v22 = *(v19 + 80);
  v44 = v15 + v22;
  v23 = (v15 + v22 + v21) & ~v22;
  v42 = v9 + 7;
  v43 = v20 | v22;
  v24 = (v9 + 7 + v23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v54;
  v26 = *(v14 + 32);
  v40 = v14 + 32;
  v41 = v26;
  v27 = v52;
  v26(v25 + v21, v39, v52);
  v28 = v57[4];
  v57 += 4;
  v39 = v28;
  v29 = v37;
  (v28)(v25 + v23, v38, v37);
  v30 = v55;
  *(v25 + v24) = v56;
  v46(v30, v47, v27);
  v31 = v48;
  v45(v48, v53, v29);
  v32 = (v20 + 16) & ~v20;
  v33 = (v44 + v32) & ~v22;
  v34 = (v42 + v33) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v41(v35 + v32, v55, v52);
  (v39)(v35 + v33, v31, v29);
  *(v35 + v34) = v56;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100D97B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[13] = v7;
  v8 = *(v7 - 8);
  v4[14] = v8;
  v4[15] = *(v8 + 64);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100D97C74, 0, 0);
}

uint64_t sub_100D97C74()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v16 = v1;
  v18 = v0[11];
  v19 = v0[15];
  v5 = v0[9];
  v6 = v0[10];
  v20 = v0[8];
  v17 = v0[7];
  v7 = v0[6];
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v9 = v1;
  v10 = v3;
  (*(v2 + 16))(v9, v7, v3);
  (*(v6 + 16))(v4, v17, v5);
  v11 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v12 = (v19 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v0[17] = v13;
  *(v13 + 16) = v8;
  (*(v2 + 32))(v13 + v11, v16, v10);
  (*(v6 + 32))(v13 + v12, v4, v5);
  *(v13 + ((v18 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_100D97EA4;

  return withTimeout<A>(_:block:)(v14, 0x40AAD21B3B700000, 3, &unk_1013E8860, v13, &type metadata for () + 1);
}

uint64_t sub_100D97EA4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100D98030;
  }

  else
  {

    v2 = sub_100D97FC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D97FC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D98030()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D980A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = type metadata accessor for CentralManager.State();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100D9826C, 0, 0);
}

uint64_t sub_100D9826C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v0[25] = type metadata accessor for CentralManager();
    v2 = swift_task_alloc();
    v0[26] = v2;
    *v2 = v0;
    v2[1] = sub_100D983DC;

    return static CentralManager.pairingCentralManager.getter();
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100D983DC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_100D9B600;
  }

  else
  {
    v4 = sub_100D984F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100D984F0()
{
  (*(v0[22] + 104))(v0[23], enum case for CentralManager.State.poweredOn(_:), v0[21]);
  v1 = swift_task_alloc();
  v0[29] = v1;
  v2 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_100D985EC;
  v3 = v0[25];
  v4 = v0[23];

  return CentralManagerProtocol.await(state:)(v4, v3, v2);
}

uint64_t sub_100D985EC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  (*(v2[22] + 8))(v2[23], v2[21]);
  if (v0)
  {
    v3 = sub_100D9B6CC;
  }

  else
  {
    v3 = sub_100D98754;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100D98754()
{
  v27 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = sub_1000076D4(v1, qword_1016BB490);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[27];
    v5 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, &v26);
    *(v5 + 12) = 2080;
    v0[6] = v4;
    sub_100D97688(&qword_1016B8628, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000136BC(v6, v7, &v26);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s %s has powered on!", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[15];
  v10 = v0[10];
  v11 = v0[11];
  v12 = v0[8];
  sub_1000BC4D4(&qword_1016BB870, &unk_1013F6290);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v15 = *(v11 + 16);
  v0[32] = v15;
  v0[33] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v14 + v13, v12, v10);
  v26 = _swiftEmptyArrayStorage;
  sub_101123D4C(0, 1, 0);
  v16 = v26;
  v15(v9, v14 + v13, v10);

  Identifier.id.getter();
  v17 = *(v11 + 8);
  v0[34] = v17;
  v0[35] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v9, v10);
  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    sub_101123D4C((v18 > 1), v19 + 1, 1);
    v16 = v26;
  }

  v0[36] = v16;
  v20 = v0[20];
  v21 = v0[16];
  v22 = v0[17];
  v16[2] = v19 + 1;
  (*(v22 + 32))(v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v20, v21);
  v25 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v23 = swift_task_alloc();
  v0[37] = v23;
  *v23 = v0;
  v23[1] = sub_100D98B24;

  return v25(v16);
}

uint64_t sub_100D98B24(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {
    v4 = sub_100D9B7A4;
  }

  else
  {

    v4 = sub_100D98C40;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100D98C40()
{
  v30 = v0;
  v1 = v0[38];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v11 = v0[32];
    v12 = v0[14];
    v13 = v0[10];
    v14 = v0[8];

    v11(v12, v14, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[34];
    v19 = v0[14];
    v20 = v0[10];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29[0] = v22;
      *v21 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v18(v19, v20);
      v26 = sub_1000136BC(v23, v25, v29);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Missing peripheral for %{public}s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {

      v18(v19, v20);
    }

    sub_100500BC4();
    swift_allocError();
    *v27 = xmmword_1013E84C0;
    *(v27 + 16) = 3;
    swift_willThrow();

    v28 = v0[1];

    return v28();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
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

    v3 = *(v0[38] + 32);
  }

  v0[40] = v3;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, v29);
    *(v6 + 12) = 2080;
    v0[5] = v3;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_1000136BC(v7, v8, v29);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Retrieved peripheral: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_100D99114;

  return sub_100D94F40(v3);
}

uint64_t sub_100D99114(char a1)
{
  *(*v1 + 464) = a1;

  return _swift_task_switch(sub_100D99214, 0, 0);
}

uint64_t sub_100D99214()
{
  v29 = v0;
  if (*(v0 + 464) == 1)
  {
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v1 = qword_10177C218;
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 isInternalBuild];

    if (v3 && (v4 = String._bridgeToObjectiveC()(), v5 = [v1 BOOLForKey:v4], v4, (v5 & 1) != 0))
    {
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Pairing notification is enabled! Proceed with pairing", v8, 2u);
      }

      v9 = swift_task_alloc();
      *(v0 + 448) = v9;
      *v9 = v0;
      v9[1] = sub_100D9B358;
      v10 = *(v0 + 320);

      return sub_100D9BE04(v10);
    }

    else
    {
      v24 = swift_task_alloc();
      *(v0 + 336) = v24;
      *v24 = v0;
      v24[1] = sub_100D996BC;
      v25 = *(v0 + 320);

      return sub_100DA5158(v25);
    }
  }

  else
  {
    (*(v0 + 256))(*(v0 + 96), *(v0 + 64), *(v0 + 80));
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 272);
    v16 = *(v0 + 96);
    v17 = *(v0 + 80);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      *v18 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v15(v16, v17);
      v23 = sub_1000136BC(v20, v22, &v28);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unsupported local findable accessory %{public}s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    else
    {

      v15(v16, v17);
    }

    sub_100500BC4();
    swift_allocError();
    *v26 = xmmword_10139D960;
    *(v26 + 16) = 3;
    swift_willThrow();

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_100D996BC(char a1)
{
  v3 = *v2;
  *(v3 + 465) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = sub_100D9B96C;
  }

  else
  {
    v4 = sub_100D997D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100D997D4(uint64_t a1)
{
  v26 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 465);
    v5 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, v25);
    *(v5 + 12) = 2082;
    v6 = sub_100B9F190(v4);
    v8 = sub_1000136BC(v6, v7, v25);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s accountCheckResult: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *(v1 + 465);
  if (v9 <= 2)
  {
    if (v9 < 2)
    {
      v10 = *(v1 + 344);
      static Task<>.checkCancellation()();
      if (!v10)
      {
        sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
        CheckedContinuation.resume(returning:)();
      }

      v11 = *(v1 + 8);

      return v11();
    }

    goto LABEL_9;
  }

  if (v9 == 3)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, v25);
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s Paired to this account. Proceed with pairing", v15, 0xCu);
      sub_100007BAC(v16);
    }

    v17 = swift_task_alloc();
    *(v1 + 352) = v17;
    *v17 = v1;
    v17[1] = sub_100D99D10;
    v18 = *(v1 + 320);

    return sub_100D9BE04(v18);
  }

  else
  {
    if (v9 == 4)
    {
LABEL_9:
      v12 = swift_task_alloc();
      *(v1 + 368) = v12;
      *v12 = v1;
      v12[1] = sub_100D99FB8;

      return daemon.getter();
    }

    v19 = *(v1 + 272);
    v20 = *(v1 + 120);
    v21 = *(v1 + 80);
    Peripheral.id.getter();
    Identifier.id.getter();
    v19(v20, v21);
    v22 = swift_task_alloc();
    *(v1 + 440) = v22;
    *v22 = v1;
    v22[1] = sub_100D9B06C;
    v23 = *(v1 + 144);

    return sub_100DA6CF8(v23, 0, 0xF000000000000000);
  }
}

uint64_t sub_100D99D10()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_100D9BA50;
  }

  else
  {
    v2 = sub_100D99E24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D99E24(uint64_t a1)
{
  v2 = *(v1 + 360);
  static Task<>.checkCancellation()();
  if (!v2)
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    CheckedContinuation.resume(returning:)();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100D99FB8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 376) = a1;

  v3 = swift_task_alloc();
  *(v2 + 384) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalFindableLostModeDetectionService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016BC560, type metadata accessor for LocalFindableLostModeDetectionService, &unk_1013F7ED8);
  *v3 = v9;
  v3[1] = sub_100D9A194;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D9A194(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 392) = a1;
  *(v4 + 400) = v1;

  if (v1)
  {
    v5 = sub_100D9BB34;
    v6 = 0;
  }

  else
  {

    v5 = sub_100D9A2CC;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100D9A2CC()
{
  v1 = *(v0 + 392);
  if (*(v1 + 145) == 1)
  {
    v2 = sub_100D9A310;
  }

  else
  {
    *(v0 + 466) = *(v1 + 146);
    v2 = sub_100D9A580;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D9A310(uint64_t a1)
{
  v10 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Onboarding is showing. Abort pairing.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v1 + 400);
  static Task<>.checkCancellation()();
  if (!v6)
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    CheckedContinuation.resume(returning:)();
  }

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_100D9A580(uint64_t a1)
{
  v15 = v1;
  if (*(v1 + 466))
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, &v14);
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Onboarding is showing. Abort pairing.", v4, 0xCu);
      sub_100007BAC(v5);
    }

    v6 = *(v1 + 400);
    static Task<>.checkCancellation()();
    if (!v6)
    {
      sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
      CheckedContinuation.resume(returning:)();
    }

    v7 = *(v1 + 8);

    return v7();
  }

  else
  {
    v8 = *(v1 + 272);
    v9 = *(v1 + 104);
    v10 = *(v1 + 80);
    Peripheral.id.getter();
    Identifier.id.getter();
    v8(v9, v10);
    v11 = swift_task_alloc();
    *(v1 + 408) = v11;
    *v11 = v1;
    v11[1] = sub_100D9A8B0;
    v12 = *(v1 + 152);

    return sub_100D8FD14(v12);
  }
}

uint64_t sub_100D9A8B0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  *(v4 + 416) = v1;

  v6 = (v5 + 8);
  v7 = *(v4 + 152);
  v8 = *(v4 + 128);
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_100D9BC24;
  }

  else
  {
    *(v4 + 467) = a1 & 1;
    (*v6)(v7, v8);
    v9 = sub_100D9AA40;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100D9AA40(uint64_t a1)
{
  v14 = v1;
  v2 = *(v1 + 467);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  if (v2 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      v13[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, v13);
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_1000136BC(1702195828, 0xE400000000000000, v13);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Not paired, isFindMyEnabled = %s. Proceed with pairing", v6, 0x16u);
      swift_arrayDestroy();
    }

    v7 = swift_task_alloc();
    *(v1 + 424) = v7;
    *v7 = v1;
    v7[1] = sub_100D9ADBC;
    v8 = *(v1 + 320);

    return sub_100D9BE04(v8);
  }

  else
  {
    if (v5)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "FindMy pairing was declined previously. Ignoring.", v10, 2u);
    }

    v11 = *(v1 + 416);

    static Task<>.checkCancellation()();
    if (!v11)
    {
      sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
      CheckedContinuation.resume(returning:)();
    }

    v12 = *(v1 + 8);

    return v12();
  }
}

uint64_t sub_100D9ADBC()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_100D9BD14;
  }

  else
  {
    v2 = sub_100D9AED0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D9AED0()
{

  v1 = *(v0 + 432);
  static Task<>.checkCancellation()();
  if (!v1)
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    CheckedContinuation.resume(returning:)();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D9B06C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100D9B1C4, 0, 0);
}

uint64_t sub_100D9B1C4(uint64_t a1)
{
  v2 = *(v1 + 344);
  static Task<>.checkCancellation()();
  if (!v2)
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    CheckedContinuation.resume(returning:)();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100D9B358()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_100D9B888;
  }

  else
  {
    v2 = sub_100D9B46C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D9B46C(uint64_t a1)
{
  v2 = *(v1 + 456);
  static Task<>.checkCancellation()();
  if (!v2)
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    CheckedContinuation.resume(returning:)();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100D9B600()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D9B6CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D9B7A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D9B888()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D9B96C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D9BA50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D9BB34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D9BC24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D9BD14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D9BE04(uint64_t a1)
{
  v2[423] = v1;
  v2[422] = a1;
  v2[424] = *v1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[425] = swift_task_alloc();
  v3 = type metadata accessor for BinaryDecoder();
  v2[426] = v3;
  v2[427] = *(v3 - 8);
  v2[428] = swift_task_alloc();
  v4 = type metadata accessor for BinaryEncoder();
  v2[429] = v4;
  v2[430] = *(v4 - 8);
  v2[431] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[432] = v5;
  v2[433] = *(v5 - 8);
  v2[434] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[435] = v6;
  v2[436] = *(v6 - 8);
  v2[437] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[438] = swift_task_alloc();
  v7 = type metadata accessor for AccessoryProductInfo(0);
  v2[439] = v7;
  v2[440] = *(v7 - 8);
  v2[441] = swift_task_alloc();
  v2[442] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v2[443] = swift_task_alloc();
  v2[444] = swift_task_alloc();
  v2[445] = swift_task_alloc();
  type metadata accessor for RawAccessoryMetadata(0);
  v2[446] = swift_task_alloc();
  v2[447] = type metadata accessor for AccessoryMetadata(0);
  v2[448] = swift_task_alloc();
  v2[449] = swift_task_alloc();
  v2[450] = swift_task_alloc();
  v2[451] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v2[452] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[453] = v8;
  v2[454] = *(v8 - 8);
  v2[455] = swift_task_alloc();
  v2[456] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[457] = v9;
  v2[458] = *(v9 - 8);
  v2[459] = swift_task_alloc();
  v2[460] = swift_task_alloc();
  v2[461] = swift_task_alloc();
  v2[462] = swift_task_alloc();

  return _swift_task_switch(sub_100D9C2F0, v1, 0);
}

uint64_t sub_100D9C2F0()
{
  My = type metadata accessor for Feature.FindMy();
  v0[407] = My;
  v0[408] = sub_100D97688(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 404);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.lineUp(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 404);
  if (My)
  {
    v3 = swift_task_alloc();
    v0[463] = v3;
    *v3 = v0;
    v3[1] = sub_100D9C6A0;

    return daemon.getter();
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016BB490);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Feature.FindMy.lineUp is disabled!", v7, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v8 = xmmword_10139D960;
    *(v8 + 16) = 3;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100D9C6A0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 3712) = a1;

  v3 = swift_task_alloc();
  *(v2 + 3720) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100D9C87C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100D9C87C(uint64_t a1)
{
  v3 = *v2;
  v3[466] = a1;
  v3[467] = v1;

  if (v1)
  {
    v4 = v3[423];
    v5 = sub_100D9CC94;
  }

  else
  {
    v6 = v3[423];

    v5 = sub_100D9C9A8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D9C9A8()
{
  v1 = v0[466];
  v2 = v0[456];
  v3 = v0[454];
  v4 = v0[453];
  v0[468] = type metadata accessor for Peripheral();
  v0[469] = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  dispatch thunk of PeripheralProtocol.id.getter();
  Identifier.id.getter();
  v5 = *(v3 + 8);
  v0[470] = v5;
  v0[471] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return _swift_task_switch(sub_100D9CAC8, v1, 0);
}

uint64_t sub_100D9CAC8()
{
  v1 = swift_task_alloc();
  v0[472] = v1;
  *v1 = v0;
  v1[1] = sub_100D9CB68;
  v2 = v0[462];
  v3 = v0[452];

  return sub_100C57B00(v3, v2);
}

uint64_t sub_100D9CB68()
{
  v2 = *v1;
  *(*v1 + 3784) = v0;

  v3 = *(v2 + 3384);
  if (v0)
  {
    v4 = sub_100D9DE04;
  }

  else
  {
    v4 = sub_100D9CE4C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D9CC94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D9CE4C()
{
  v122 = v0;
  v1 = *(v0 + 3616);
  v2 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
  if (v3 != 1)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 3696);
    v15 = *(v0 + 3688);
    v16 = *(v0 + 3664);
    v17 = *(v0 + 3656);
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_1016BB490);
    (*(v16 + 16))(v15, v14, v17);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 3688);
    v23 = *(v0 + 3664);
    v24 = *(v0 + 3656);
    if (v21)
    {
      v120 = v20;
      v25 = swift_slowAlloc();
      v121[0] = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, v121);
      *(v25 + 12) = 2082;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v29 = *(v23 + 8);
      v29(v22, v24);
      v30 = sub_1000136BC(v26, v28, v121);

      *(v25 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v19, v120, "%{public}s Found existing record for %{public}s. Not pairing", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v29 = *(v23 + 8);
      v29(v22, v24);
    }

    v71 = *(v0 + 3696);
    v72 = *(v0 + 3656);
    sub_100500BC4();
    swift_allocError();
    *v73 = xmmword_10139D920;
    *(v73 + 16) = 3;
    swift_willThrow();

    v29(v71, v72);
    goto LABEL_19;
  }

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 3792) = sub_1000076D4(v4, qword_1016BB490);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 3376);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v121[0] = v9;
    *v8 = 136315138;
    *(v0 + 3336) = v7;
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;

    v13 = sub_1000136BC(v10, v12, v121);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Reading DIS from peripheral: %s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {
  }

  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 3800) = qword_1016BFE70;
  *(v0 + 3320) = 0x7365547265646E75;
  *(v0 + 3328) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 4106) == 1)
  {
    v31 = *(v0 + 3760);
    v32 = *(v0 + 3640);
    v33 = *(v0 + 3624);
    dispatch thunk of PeripheralProtocol.id.getter();
    Identifier.id.getter();
    v31(v32, v33);
    v34 = sub_100314604(76, 1106);
    if (v35 >> 60 == 15)
    {
      __break(1u);
      return withTimeout<A>(_:block:)(v34, v35, v36, v37, v38, v39);
    }

    v40 = v34;
    v41 = v35;
    v42 = *(v0 + 3680);
    v43 = *(v0 + 3664);
    v44 = *(v0 + 3656);
    v45 = *(v0 + 3600);
    v46 = *(v0 + 3576);
    v47 = v46[9];
    v48 = type metadata accessor for AirTagVersionNumber();
    (*(*(v48 - 8) + 56))(v45 + v47, 1, 1, v48);
    v49 = v45 + v46[11];
    *v49 = 0;
    *(v49 + 8) = 0;
    *(v49 + 16) = 1;
    v50 = (v45 + v46[16]);
    *v50 = 0;
    v50[1] = 0xE000000000000000;
    (*(v43 + 32))(v45, v42, v44);
    v51 = (v45 + v46[5]);
    *v51 = v40;
    v51[1] = v41;
    *(v45 + v46[8]) = 4063235;
    v52 = (v45 + v46[7]);
    *v52 = 0;
    v52[1] = 0;
    v53 = (v45 + v46[6]);
    *v53 = 0;
    v53[1] = 0;
    v54 = v45 + v46[10];
    *v54 = 0;
    *(v54 + 4) = 1;
    v55 = v45 + v46[12];
    *v55 = 0;
    *(v55 + 8) = 1;
    v56 = v45 + v46[13];
    *v56 = 0;
    *(v56 + 4) = 1;
    *(v45 + v46[14]) = 4;
    *(v45 + v46[15]) = 5;
    v57 = v45 + v46[17];
    *v57 = 0;
    *(v57 + 4) = 1;
    v58 = *(v0 + 3784);
    v59 = *(v0 + 3608);
    v60 = *(v0 + 3584);
    sub_100DD921C(*(v0 + 3600), v59, type metadata accessor for AccessoryMetadata);
    sub_100DD9284(v59, v60, type metadata accessor for AccessoryMetadata);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 3584);
    if (v63)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v121[0] = v66;
      *v65 = 136446210;
      v67 = sub_100230E34();
      v69 = v68;
      sub_100DD92EC(v64, type metadata accessor for AccessoryMetadata);
      v70 = sub_1000136BC(v67, v69, v121);

      *(v65 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v61, v62, "DIS: %{public}s", v65, 0xCu);
      sub_100007BAC(v66);
    }

    else
    {

      sub_100DD92EC(v64, type metadata accessor for AccessoryMetadata);
    }

    *(v0 + 3272) = 0x7365547265646E75;
    *(v0 + 3280) = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (*(v0 + 4105) == 1)
    {
      v79 = *(v0 + 3672);
      v80 = *(v0 + 3664);
      v81 = *(v0 + 3656);
      v82 = *(v0 + 3560);
      v83 = *(v0 + 3520);
      v84 = *(v0 + 3512);
      type metadata accessor for BeaconStore(0);
      UUID.init()();
      sub_10110F124(0, v82);
      (*(v80 + 8))(v79, v81);
      (*(v83 + 56))(v82, 0, 1, v84);
      v85 = *(v0 + 3544);
      v86 = *(v0 + 3520);
      v87 = *(v0 + 3512);
      sub_1000D2A70(*(v0 + 3560), v85, &qword_101697268, &qword_101394FE0);
      v88 = (*(v86 + 48))(v85, 1, v87);
      v89 = *(v0 + 3544);
      if (v88 == 1)
      {
        sub_10000B3A8(v89, &qword_101697268, &qword_101394FE0);
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&_mh_execute_header, v90, v91, "Missing product info!", v92, 2u);
        }

        v93 = *(v0 + 3696);
        v94 = *(v0 + 3664);
        v95 = *(v0 + 3656);
        v96 = *(v0 + 3608);
        v97 = *(v0 + 3560);

        sub_100500BC4();
        swift_allocError();
        *v98 = xmmword_1013E84D0;
        *(v98 + 16) = 3;
        swift_willThrow();

        sub_10000B3A8(v97, &qword_101697268, &qword_101394FE0);
        sub_100DD92EC(v96, type metadata accessor for AccessoryMetadata);
        (*(v94 + 8))(v93, v95);
        goto LABEL_19;
      }

      v102 = *(v0 + 3536);
      v103 = *(v0 + 3528);
      sub_100DD921C(v89, v102, type metadata accessor for AccessoryProductInfo);
      sub_100DD9284(v102, v103, type metadata accessor for AccessoryProductInfo);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.default.getter();
      v106 = os_log_type_enabled(v104, v105);
      v107 = *(v0 + 3528);
      if (v106)
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v121[0] = v109;
        *v108 = 136446210;
        v110 = sub_1011A0624();
        v112 = v111;
        sub_100DD92EC(v107, type metadata accessor for AccessoryProductInfo);
        v113 = sub_1000136BC(v110, v112, v121);

        *(v108 + 4) = v113;
        _os_log_impl(&_mh_execute_header, v104, v105, "Product info: %{public}s)", v108, 0xCu);
        sub_100007BAC(v109);
      }

      else
      {

        sub_100DD92EC(v107, type metadata accessor for AccessoryProductInfo);
      }

      sub_100DBD674(*(v0 + 3608), *(v0 + 3536));
      if (v58)
      {
        v114 = *(v0 + 3696);
        v115 = *(v0 + 3664);
        v116 = *(v0 + 3656);
        v117 = *(v0 + 3608);
        v118 = *(v0 + 3560);
        v119 = *(v0 + 3536);

        sub_100DD92EC(v119, type metadata accessor for AccessoryProductInfo);
        sub_10000B3A8(v118, &qword_101697268, &qword_101394FE0);
        sub_100DD92EC(v117, type metadata accessor for AccessoryMetadata);
        (*(v115 + 8))(v114, v116);
LABEL_19:

        v74 = *(v0 + 8);

        return v74();
      }

      v34 = swift_task_alloc();
      *(v0 + 3856) = v34;
      *v34 = v0;
      v34[1] = sub_100D9ED54;
      v38 = *(v0 + 3376);
      v37 = &unk_1013E8898;
      v35 = 0xA055690D9DB80000;
      v39 = &type metadata for () + 1;
      v36 = 1;

      return withTimeout<A>(_:block:)(v34, v35, v36, v37, v38, v39);
    }

    type metadata accessor for AccessoryMetadataManager();
    v99 = swift_task_alloc();
    *(v0 + 3840) = v99;
    *v99 = v0;
    v99[1] = sub_100D9EC28;
    v100 = *(v0 + 3608);
    v101 = *(v0 + 3552);

    return sub_100359F48(v101, v100, 3);
  }

  else
  {
    v76 = swift_task_alloc();
    *(v0 + 3808) = v76;
    *v76 = v0;
    v76[1] = sub_100D9DFE0;
    v77 = *(v0 + 3568);
    v78 = *(v0 + 3376);

    return sub_100D6D190(v77, v78);
  }
}

uint64_t sub_100D9DE04()
{
  v1 = v0[462];
  v2 = v0[458];
  v3 = v0[457];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100D9DFE0()
{
  *(*v1 + 3816) = v0;

  if (v0)
  {
    v2 = sub_100D9E18C;
  }

  else
  {
    v2 = sub_100D9E0F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D9E0F4()
{
  v1 = v0[477];
  sub_100231DE4(v0[446], v0[449]);
  v0[478] = v1;
  if (v1)
  {
    v0[479] = v1;
    v2 = v0[423];
    v3 = sub_100D9EA4C;
  }

  else
  {
    v2 = v0[423];
    v3 = sub_100D9E1B0;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100D9E1B0()
{
  v60 = v0;
  v1 = *(v0 + 3824);
  v2 = *(v0 + 3608);
  v3 = *(v0 + 3584);
  sub_100DD921C(*(v0 + 3592), v2, type metadata accessor for AccessoryMetadata);
  sub_100DD9284(v2, v3, type metadata accessor for AccessoryMetadata);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 3584);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v59[0] = v9;
    *v8 = 136446210;
    v10 = sub_100230E34();
    v12 = v11;
    sub_100DD92EC(v7, type metadata accessor for AccessoryMetadata);
    v13 = sub_1000136BC(v10, v12, v59);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "DIS: %{public}s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100DD92EC(v7, type metadata accessor for AccessoryMetadata);
  }

  *(v0 + 3272) = 0x7365547265646E75;
  *(v0 + 3280) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 4105) == 1)
  {
    v14 = *(v0 + 3672);
    v15 = *(v0 + 3664);
    v16 = *(v0 + 3656);
    v17 = *(v0 + 3560);
    v18 = *(v0 + 3520);
    v19 = *(v0 + 3512);
    type metadata accessor for BeaconStore(0);
    UUID.init()();
    sub_10110F124(0, v17);
    (*(v15 + 8))(v14, v16);
    (*(v18 + 56))(v17, 0, 1, v19);
    v20 = *(v0 + 3544);
    v21 = *(v0 + 3520);
    v22 = *(v0 + 3512);
    sub_1000D2A70(*(v0 + 3560), v20, &qword_101697268, &qword_101394FE0);
    v23 = (*(v21 + 48))(v20, 1, v22);
    v24 = *(v0 + 3544);
    if (v23 == 1)
    {
      sub_10000B3A8(v24, &qword_101697268, &qword_101394FE0);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Missing product info!", v27, 2u);
      }

      v28 = *(v0 + 3696);
      v29 = *(v0 + 3664);
      v30 = *(v0 + 3656);
      v31 = *(v0 + 3608);
      v32 = *(v0 + 3560);

      sub_100500BC4();
      swift_allocError();
      *v33 = xmmword_1013E84D0;
      *(v33 + 16) = 3;
      swift_willThrow();

      sub_10000B3A8(v32, &qword_101697268, &qword_101394FE0);
      sub_100DD92EC(v31, type metadata accessor for AccessoryMetadata);
      (*(v29 + 8))(v28, v30);
      goto LABEL_17;
    }

    v38 = *(v0 + 3536);
    v39 = *(v0 + 3528);
    sub_100DD921C(v24, v38, type metadata accessor for AccessoryProductInfo);
    sub_100DD9284(v38, v39, type metadata accessor for AccessoryProductInfo);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 3528);
    if (v42)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v59[0] = v45;
      *v44 = 136446210;
      v46 = sub_1011A0624();
      v48 = v47;
      sub_100DD92EC(v43, type metadata accessor for AccessoryProductInfo);
      v49 = sub_1000136BC(v46, v48, v59);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "Product info: %{public}s)", v44, 0xCu);
      sub_100007BAC(v45);
    }

    else
    {

      sub_100DD92EC(v43, type metadata accessor for AccessoryProductInfo);
    }

    sub_100DBD674(*(v0 + 3608), *(v0 + 3536));
    if (v1)
    {
      v50 = *(v0 + 3696);
      v51 = *(v0 + 3664);
      v52 = *(v0 + 3656);
      v53 = *(v0 + 3608);
      v54 = *(v0 + 3560);
      v55 = *(v0 + 3536);

      sub_100DD92EC(v55, type metadata accessor for AccessoryProductInfo);
      sub_10000B3A8(v54, &qword_101697268, &qword_101394FE0);
      sub_100DD92EC(v53, type metadata accessor for AccessoryMetadata);
      (*(v51 + 8))(v50, v52);
LABEL_17:

      v56 = *(v0 + 8);

      return v56();
    }

    v57 = swift_task_alloc();
    *(v0 + 3856) = v57;
    *v57 = v0;
    v57[1] = sub_100D9ED54;
    v58 = *(v0 + 3376);

    return withTimeout<A>(_:block:)(v57, 0xA055690D9DB80000, 1, &unk_1013E8898, v58, &type metadata for () + 1);
  }

  else
  {
    type metadata accessor for AccessoryMetadataManager();
    v34 = swift_task_alloc();
    *(v0 + 3840) = v34;
    *v34 = v0;
    v34[1] = sub_100D9EC28;
    v35 = *(v0 + 3608);
    v36 = *(v0 + 3552);

    return sub_100359F48(v36, v35, 3);
  }
}

uint64_t sub_100D9EA4C()
{
  v1 = v0[462];
  v2 = v0[458];
  v3 = v0[457];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100D9EC28()
{
  v2 = *v1;
  *(*v1 + 3848) = v0;

  v3 = *(v2 + 3384);
  if (v0)
  {
    v4 = sub_100DA4F5C;
  }

  else
  {
    v4 = sub_100DA4964;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D9ED54()
{
  v2 = *v1;
  *(*v1 + 3864) = v0;

  v3 = *(v2 + 3384);

  if (v0)
  {
    v4 = sub_100D9F0D0;
  }

  else
  {
    v4 = sub_100D9EE9C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100D9EE9C()
{
  v18 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[422];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    v0[421] = v3;
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;

    v9 = sub_1000136BC(v6, v8, &v17);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Connected to peripheral: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v10 = v0[458];
  v11 = v0[457];
  v12 = v0[438];
  dispatch thunk of PeripheralProtocol.id.getter();
  (*(v10 + 56))(v12, 1, 1, v11);
  v13 = swift_task_alloc();
  v0[484] = v13;
  *v13 = v0;
  v13[1] = sub_100D9F308;
  v14 = v0[456];
  v15 = v0[438];

  return sub_100D70938(v14, v15);
}

uint64_t sub_100D9F0D0()
{
  v1 = v0[462];
  v2 = v0[458];
  v3 = v0[457];
  v4 = v0[451];
  v5 = v0[445];
  v6 = v0[442];

  sub_100DD92EC(v6, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v5, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v4, type metadata accessor for AccessoryMetadata);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100D9F308()
{
  v1 = *(*v0 + 3760);
  v2 = *(*v0 + 3648);
  v3 = *(*v0 + 3624);
  v4 = *(*v0 + 3504);
  v5 = *(*v0 + 3384);

  sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);
  v1(v2, v3);

  return _swift_task_switch(sub_100D9F4B0, v5, 0);
}

uint64_t sub_100D9F4B0()
{
  *(v0 + 3288) = 0x7365547265646E75;
  *(v0 + 3296) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 4104))
  {
    *(v0 + 3896) = type metadata accessor for Service();
    Identifier.init(stringLiteral:)();
    v1 = swift_task_alloc();
    *(v0 + 3904) = v1;
    *v1 = v0;
    v1[1] = sub_100D9F78C;
    v2 = *(v0 + 3752);
    v3 = *(v0 + 3744);
    v4 = *(v0 + 3496);

    return dispatch thunk of PeripheralProtocol.subscript.getter(v4, v3, v2);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 3880) = v5;
    *v5 = v0;
    v5[1] = sub_100D9F64C;
    v6 = *(v0 + 3376);

    return sub_100DA5158(v6);
  }
}

uint64_t sub_100D9F64C(char a1)
{
  v4 = *v2;
  *(v4 + 3888) = v1;

  v5 = *(v4 + 3384);
  if (v1)
  {
    v6 = sub_100DA472C;
  }

  else
  {
    *(v4 + 4107) = a1;
    v6 = sub_100DA432C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D9F78C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[489] = a1;
  v4[490] = v1;

  v5 = v3[437];
  v6 = v3[436];
  v7 = v3[435];
  v8 = v3[423];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_100D9FBC0;
  }

  else
  {
    v9 = sub_100D9F914;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100D9F914()
{
  v0[491] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v1 = sub_100D97688(&qword_1016972A8, &type metadata accessor for Service, &protocol conformance descriptor for Service);
  v2 = swift_task_alloc();
  v0[492] = v2;
  *v2 = v0;
  v2[1] = sub_100D9FA1C;
  v3 = v0[487];
  v4 = v0[434];

  return dispatch thunk of ServiceProtocol.subscript.getter(v4, v3, v1);
}

uint64_t sub_100D9FA1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[493] = a1;
  v4[494] = v1;

  v5 = v3[434];
  v6 = v3[433];
  v7 = v3[432];
  v8 = v3[423];
  (*(v6 + 8))(v5, v7);

  if (v1)
  {
    v9 = sub_100DA0064;
  }

  else
  {
    v9 = sub_100D9FDF8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100D9FBC0()
{
  v1 = v0[462];
  v2 = v0[458];
  v3 = v0[457];
  v4 = v0[451];
  v5 = v0[445];
  v6 = v0[442];

  sub_100DD92EC(v6, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v5, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v4, type metadata accessor for AccessoryMetadata);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100D9FDF8(uint64_t a1)
{
  v19 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered FindMy services and Pairing characteristic.", v4, 2u);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[422];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v1[420] = v7;
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;

    v13 = sub_1000136BC(v10, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Pairing peripheral: %s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {
  }

  v14 = swift_task_alloc();
  v1[495] = v14;
  *v14 = v1;
  v14[1] = sub_100DA029C;
  v15 = v1[469];
  v16 = v1[468];

  return dispatch thunk of PeripheralProtocol.pair()(v16, v15);
}

uint64_t sub_100DA0064()
{
  v1 = v0[462];
  v2 = v0[458];
  v3 = v0[457];
  v4 = v0[451];
  v5 = v0[445];
  v6 = v0[442];

  sub_100DD92EC(v6, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v5, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v4, type metadata accessor for AccessoryMetadata);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100DA029C()
{
  v2 = *v1;
  *(*v1 + 3968) = v0;

  v3 = *(v2 + 3384);
  if (v0)
  {
    v4 = sub_100DA0D9C;
  }

  else
  {
    v4 = sub_100DA03C8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DA03C8()
{
  v66 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 3376);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v65[0] = v5;
    *v4 = 136315138;
    *(v0 + 3352) = v3;
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;

    v9 = sub_1000136BC(v6, v8, v65);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Paired peripheral: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v10 = *(v0 + 3968);
  BinaryEncoder.init()();
  BinaryDecoder.init()();
  sub_100DBDD8C(&v56);
  if (v10)
  {
    v11 = *(v0 + 3664);
    v54 = *(v0 + 3656);
    v55 = *(v0 + 3696);
    v52 = *(v0 + 3560);
    v53 = *(v0 + 3608);
    v12 = *(v0 + 3536);
    v13 = *(v0 + 3448);
    v14 = *(v0 + 3440);
    v15 = *(v0 + 3432);
    v16 = *(v0 + 3424);
    v17 = *(v0 + 3416);
    v18 = *(v0 + 3408);

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
    sub_100DD92EC(v12, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v52, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v53, type metadata accessor for AccessoryMetadata);
    (*(v11 + 8))(v55, v54);

    v47 = *(v0 + 8);

    return v47();
  }

  else
  {
    v19 = v63;
    *(v0 + 256) = v62;
    *(v0 + 272) = v19;
    *(v0 + 288) = v64;
    v20 = v59;
    *(v0 + 192) = v58;
    *(v0 + 208) = v20;
    v21 = v61;
    *(v0 + 224) = v60;
    *(v0 + 240) = v21;
    v22 = v57;
    *(v0 + 160) = v56;
    *(v0 + 176) = v22;
    SharingCircleWildAdvertisementKey.init(key:)();
    v23 = v63;
    *(v0 + 544) = v62;
    *(v0 + 560) = v23;
    *(v0 + 576) = v64;
    v24 = v59;
    *(v0 + 480) = v58;
    *(v0 + 496) = v24;
    v25 = v61;
    *(v0 + 512) = v60;
    *(v0 + 528) = v25;
    v26 = v57;
    *(v0 + 448) = v56;
    *(v0 + 464) = v26;
    v27 = *(v0 + 272);
    *(v0 + 2128) = *(v0 + 256);
    *(v0 + 2144) = v27;
    *(v0 + 2160) = *(v0 + 288);
    v28 = *(v0 + 208);
    *(v0 + 2064) = *(v0 + 192);
    *(v0 + 2080) = v28;
    v29 = *(v0 + 240);
    *(v0 + 2096) = *(v0 + 224);
    *(v0 + 2112) = v29;
    v30 = *(v0 + 176);
    *(v0 + 2032) = *(v0 + 160);
    *(v0 + 2048) = v30;
    sub_100DD93E8(v0 + 448, v0 + 592);
    sub_100DD93E8(v0 + 448, v0 + 736);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    sub_100DD9444(v0 + 448);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v65[0] = v34;
      *v33 = 136315138;
      v35 = *(v0 + 560);
      *(v0 + 2416) = *(v0 + 544);
      *(v0 + 2432) = v35;
      *(v0 + 2448) = *(v0 + 576);
      v36 = *(v0 + 496);
      *(v0 + 2352) = *(v0 + 480);
      *(v0 + 2368) = v36;
      v37 = *(v0 + 528);
      *(v0 + 2384) = *(v0 + 512);
      *(v0 + 2400) = v37;
      v38 = *(v0 + 464);
      *(v0 + 2320) = *(v0 + 448);
      *(v0 + 2336) = v38;
      sub_100DD93E8(v0 + 448, v0 + 2176);
      v39 = String.init<A>(describing:)();
      v41 = sub_1000136BC(v39, v40, v65);

      *(v33 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v31, v32, "Sending command: %s", v33, 0xCu);
      sub_100007BAC(v34);
    }

    v42 = *(v0 + 560);
    *(v0 + 976) = *(v0 + 544);
    *(v0 + 992) = v42;
    *(v0 + 1008) = *(v0 + 576);
    v43 = *(v0 + 496);
    *(v0 + 912) = *(v0 + 480);
    *(v0 + 928) = v43;
    v44 = *(v0 + 528);
    *(v0 + 944) = *(v0 + 512);
    *(v0 + 960) = v44;
    v45 = *(v0 + 464);
    *(v0 + 880) = *(v0 + 448);
    *(v0 + 896) = v45;
    *(v0 + 3976) = sub_100DD9498();
    *(v0 + 3984) = BinaryEncoder.encode<A>(_:)();
    *(v0 + 3992) = v46;
    v49 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
    v50 = swift_task_alloc();
    *(v0 + 4000) = v50;
    *v50 = v0;
    v50[1] = sub_100DA0FE0;
    v51 = *(v0 + 3928);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v51, v49);
  }
}

uint64_t sub_100DA0D9C()
{
  v1 = v0[462];
  v2 = v0[458];
  v3 = v0[457];
  v4 = v0[451];
  v5 = v0[445];
  v6 = v0[442];

  sub_100DD92EC(v6, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v5, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v4, type metadata accessor for AccessoryMetadata);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100DA0FE0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 4008) = v1;

  v5 = *(v4 + 3384);
  if (v1)
  {
    v6 = sub_100DA1308;
  }

  else
  {
    *(v4 + 4016) = a1;
    v6 = sub_100DA110C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DA110C()
{
  v1 = fragment(data:mtu:)();
  v2 = *(v0 + 512);
  *(v0 + 1104) = *(v0 + 528);
  v3 = *(v0 + 560);
  *(v0 + 1120) = *(v0 + 544);
  *(v0 + 1136) = v3;
  *(v0 + 1152) = *(v0 + 576);
  v4 = *(v0 + 448);
  *(v0 + 1040) = *(v0 + 464);
  v5 = *(v0 + 496);
  *(v0 + 1056) = *(v0 + 480);
  *(v0 + 1072) = v5;
  *(v0 + 1088) = v2;
  *(v0 + 1024) = v4;
  if (sub_10027EE64(v0 + 1024) == 4)
  {
    v6 = *(v0 + 3944);
    v7 = swift_allocObject();
    *(v0 + 4024) = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;

    v8 = swift_task_alloc();
    *(v0 + 4032) = v8;
    *v8 = v0;
    v8[1] = sub_100DA17E0;
    v9 = &unk_1013E88D0;
    v10 = &type metadata for () + 1;
  }

  else
  {
    v11 = *(v0 + 3944);
    v7 = swift_allocObject();
    *(v0 + 4048) = v7;
    *(v7 + 16) = v11;
    *(v7 + 24) = v1;

    v12 = swift_task_alloc();
    *(v0 + 4056) = v12;
    *v12 = v0;
    v12[1] = sub_100DA1938;
    v10 = &type metadata for Data;
    v9 = &unk_1013E88B8;
    v8 = (v0 + 3304);
  }

  return withTimeout<A>(_:block:)(v8, 0x40AAD21B3B700000, 3, v9, v7, v10);
}

uint64_t sub_100DA1308()
{
  v27 = v0;
  sub_100016590(v0[498], v0[499]);
  sub_100DD9444((v0 + 56));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Pairing command error: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_10000B3A8((v0 + 254), &qword_1016BB880, &qword_1013E88A8);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, &v26);
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s failed with %{public}@", v8, 0x16u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  v12 = v0[458];
  v24 = v0[457];
  v25 = v0[462];
  v22 = v0[445];
  v23 = v0[451];
  v20 = v0[431];
  v21 = v0[442];
  v13 = v0[430];
  v14 = v0[429];
  v15 = v0[428];
  v16 = v0[427];
  v17 = v0[426];
  swift_willThrow();

  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v20, v14);
  sub_100DD92EC(v21, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v22, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v23, type metadata accessor for AccessoryMetadata);
  (*(v12 + 8))(v25, v24);

  v18 = v0[1];

  return v18();
}

uint64_t sub_100DA17E0()
{
  v2 = *v1;
  *(*v1 + 4040) = v0;

  if (v0)
  {
    v3 = *(v2 + 3384);

    v4 = sub_100DA2114;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 3384);
    sub_10000B3A8(v2 + 2032, &qword_1016BB880, &qword_1013E88A8);

    v4 = sub_100DA1A80;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100DA1938()
{
  v2 = *v1;
  *(*v1 + 4064) = v0;

  v3 = *(v2 + 3384);

  if (v0)
  {
    v4 = sub_100DA2FB0;
  }

  else
  {
    v4 = sub_100DA25E4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DA1A80(uint64_t a1)
{
  v47 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v6 = *(v1 + 512);
    *(v1 + 3120) = *(v1 + 528);
    v7 = *(v1 + 560);
    *(v1 + 3136) = *(v1 + 544);
    *(v1 + 3152) = v7;
    *(v1 + 3168) = *(v1 + 576);
    v8 = *(v1 + 448);
    *(v1 + 3056) = *(v1 + 464);
    v9 = *(v1 + 496);
    *(v1 + 3072) = *(v1 + 480);
    *(v1 + 3088) = v9;
    *(v1 + 3104) = v6;
    v46 = v5;
    *(v1 + 3040) = v8;
    v10 = String.init<A>(describing:)();
    v12 = sub_1000136BC(v10, v11, &v46);

    *(v4 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sent final command: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  *(*(v1 + 3384) + 152) = 9;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Pairing completed succesfully!", v15, 2u);
  }

  v16 = *(v1 + 3992);
  v17 = *(v1 + 3984);
  v18 = *(v1 + 3400);
  v19 = *(v1 + 3392);
  v20 = *(v1 + 3384);
  v21 = *(v1 + 3376);

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  v23 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService, &unk_1013E8768);
  v24 = swift_allocObject();
  v24[2] = v20;
  v24[3] = v23;
  v24[4] = v20;
  v24[5] = v21;
  v24[6] = v19;
  swift_retain_n();

  sub_10025EDD4(0, 0, v18, &unk_1013E88E0, v24);
  sub_100DD9444(v1 + 448);

  sub_100016590(v17, v16);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v1 + 3696);
  v29 = *(v1 + 3664);
  v30 = *(v1 + 3656);
  v45 = *(v1 + 3608);
  v43 = *(v1 + 3536);
  v44 = *(v1 + 3560);
  v31 = *(v1 + 3440);
  v41 = *(v1 + 3432);
  v42 = *(v1 + 3448);
  v32 = *(v1 + 3424);
  v33 = *(v1 + 3416);
  v34 = *(v1 + 3408);
  if (v27)
  {
    v40 = *(v1 + 3696);
    v35 = swift_slowAlloc();
    v39 = v30;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, &v46);
    _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s completed successfully", v35, 0xCu);
    sub_100007BAC(v36);

    (*(v33 + 8))(v32, v34);
    (*(v31 + 8))(v42, v41);
    sub_100DD92EC(v43, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v44, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v45, type metadata accessor for AccessoryMetadata);
    (*(v29 + 8))(v40, v39);
  }

  else
  {

    (*(v33 + 8))(v32, v34);
    (*(v31 + 8))(v42, v41);
    sub_100DD92EC(v43, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v44, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v45, type metadata accessor for AccessoryMetadata);
    (*(v29 + 8))(v28, v30);
  }

  v37 = *(v1 + 8);

  return v37();
}

uint64_t sub_100DA2114()
{
  v27 = v0;
  sub_100016590(v0[498], v0[499]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Pairing command error: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_10000B3A8((v0 + 254), &qword_1016BB880, &qword_1013E88A8);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, &v26);
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s failed with %{public}@", v8, 0x16u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  v12 = v0[458];
  v24 = v0[457];
  v25 = v0[462];
  v22 = v0[445];
  v23 = v0[451];
  v20 = v0[431];
  v21 = v0[442];
  v13 = v0[430];
  v14 = v0[429];
  v15 = v0[428];
  v16 = v0[427];
  v17 = v0[426];
  swift_willThrow();

  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v20, v14);
  sub_100DD92EC(v21, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v22, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v23, type metadata accessor for AccessoryMetadata);
  (*(v12 + 8))(v25, v24);

  v18 = v0[1];

  return v18();
}

void *sub_100DA25E4()
{
  v80 = v0;
  v1 = *(v0 + 3304);
  *(v0 + 4072) = v1;
  v2 = *(v0 + 3312);
  *(v0 + 4080) = v2;
  sub_100DD93E8(v0 + 448, v0 + 1168);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  sub_100DD9444(v0 + 448);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v79[0] = v6;
    *v5 = 136315138;
    v7 = *(v0 + 560);
    *(v0 + 400) = *(v0 + 544);
    *(v0 + 416) = v7;
    *(v0 + 432) = *(v0 + 576);
    v8 = *(v0 + 496);
    *(v0 + 336) = *(v0 + 480);
    *(v0 + 352) = v8;
    v9 = *(v0 + 528);
    *(v0 + 368) = *(v0 + 512);
    *(v0 + 384) = v9;
    v10 = *(v0 + 464);
    *(v0 + 304) = *(v0 + 448);
    *(v0 + 320) = v10;
    sub_100DD93E8(v0 + 448, v0 + 1888);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, v79);

    *(v5 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sent command: %s.", v5, 0xCu);
    sub_100007BAC(v6);
  }

  sub_100017D5C(v1, v2);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v14, v15))
  {
    sub_100016590(v1, v2);
    goto LABEL_16;
  }

  v16 = swift_slowAlloc();
  result = swift_slowAlloc();
  v18 = result;
  *(v0 + 3344) = result;
  *v16 = 134218242;
  v19 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v19 != 2)
    {
      v20 = 0;
      goto LABEL_15;
    }

    v22 = *(v1 + 16);
    v21 = *(v1 + 24);
    v23 = __OFSUB__(v21, v22);
    v20 = v21 - v22;
    if (!v23)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    LODWORD(v20) = HIDWORD(v1) - v1;
    if (__OFSUB__(HIDWORD(v1), v1))
    {
      __break(1u);
      return result;
    }

    v20 = v20;
    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_12;
  }

  v20 = BYTE6(v2);
LABEL_15:
  *(v16 + 4) = v20;
  sub_100016590(v1, v2);
  *(v16 + 12) = 2080;
  v24 = Data.hexString.getter();
  v26 = sub_1000136BC(v24, v25, (v0 + 3344));

  *(v16 + 14) = v26;
  _os_log_impl(&_mh_execute_header, v14, v15, "length: %ld Received Response: %s", v16, 0x16u);
  sub_100007BAC(v18);

LABEL_16:

  v27 = *(v0 + 4064);
  v28 = sub_100DD9598();
  BinaryDecoder.decode<A>(_:from:)();
  if (v27)
  {
    v29 = *(v0 + 3992);
    v30 = *(v0 + 3984);
    sub_100016590(v1, v2);
    sub_100016590(v30, v29);
    sub_100DD9444(v0 + 448);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Pairing command error: %{public}@", v33, 0xCu);
      sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);
    }

    sub_10000B3A8(v0 + 2032, &qword_1016BB880, &qword_1013E88A8);

    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v79[0] = v40;
      *v38 = 136446466;
      *(v38 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, v79);
      *(v38 + 12) = 2114;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v41;
      *v39 = v41;
      _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s failed with %{public}@", v38, 0x16u);
      sub_10000B3A8(v39, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v40);
    }

    v42 = *(v0 + 3664);
    v77 = *(v0 + 3656);
    v78 = *(v0 + 3696);
    v75 = *(v0 + 3560);
    v76 = *(v0 + 3608);
    v73 = *(v0 + 3448);
    v74 = *(v0 + 3536);
    v43 = *(v0 + 3440);
    v44 = *(v0 + 3432);
    v45 = *(v0 + 3424);
    v46 = *(v0 + 3416);
    v47 = *(v0 + 3408);
    swift_willThrow();

    (*(v46 + 8))(v45, v47);
    (*(v43 + 8))(v73, v44);
    sub_100DD92EC(v74, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v75, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v76, type metadata accessor for AccessoryMetadata);
    (*(v42 + 8))(v78, v77);

    v48 = *(v0 + 8);

    return v48();
  }

  else
  {
    v49 = (v0 + 1456);
    v50 = *(v0 + 1424);
    *(v0 + 1552) = *(v0 + 1408);
    *(v0 + 1568) = v50;
    *(v0 + 1584) = *(v0 + 1440);
    v51 = *(v0 + 1360);
    *(v0 + 1488) = *(v0 + 1344);
    *(v0 + 1504) = v51;
    v52 = *(v0 + 1392);
    *(v0 + 1520) = *(v0 + 1376);
    *(v0 + 1536) = v52;
    v53 = *(v0 + 1328);
    *(v0 + 1456) = *(v0 + 1312);
    *(v0 + 1472) = v53;
    sub_100DD93E8(v0 + 1456, v0 + 1600);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    sub_100DD9444(v0 + 1456);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v79[0] = v57;
      *v56 = 136315138;
      v58 = *(v0 + 1568);
      *(v0 + 2848) = *(v0 + 1552);
      *(v0 + 2864) = v58;
      *(v0 + 2880) = *(v0 + 1584);
      v59 = *(v0 + 1504);
      *(v0 + 2784) = *(v0 + 1488);
      *(v0 + 2800) = v59;
      v60 = *(v0 + 1536);
      *(v0 + 2816) = *(v0 + 1520);
      *(v0 + 2832) = v60;
      v61 = *(v0 + 1472);
      *(v0 + 2752) = *v49;
      *(v0 + 2768) = v61;
      sub_100DD93E8(v0 + 1456, v0 + 2896);
      v62 = String.init<A>(describing:)();
      v64 = sub_1000136BC(v62, v63, v79);

      *(v56 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v54, v55, "Received response: %s", v56, 0xCu);
      sub_100007BAC(v57);
    }

    v65 = *(v0 + 3976);
    *(v0 + 3208) = &type metadata for PencilPairingCommand;
    *(v0 + 3216) = v28;
    *(v0 + 3224) = v65;
    v66 = swift_allocObject();
    *(v0 + 3184) = v66;
    v67 = *(v0 + 1568);
    v66[7] = *(v0 + 1552);
    v66[8] = v67;
    v66[9] = *(v0 + 1584);
    v68 = *(v0 + 1504);
    v66[3] = *(v0 + 1488);
    v66[4] = v68;
    v69 = *(v0 + 1536);
    v66[5] = *(v0 + 1520);
    v66[6] = v69;
    v70 = *(v0 + 1472);
    v66[1] = *v49;
    v66[2] = v70;
    sub_100DD93E8(v0 + 1456, v0 + 1744);
    v71 = swift_task_alloc();
    *(v0 + 4088) = v71;
    *v71 = v0;
    v71[1] = sub_100DA3490;
    v72 = *(v0 + 3376);

    return sub_100DCEA4C(v0 + 16, v72, v0 + 3184);
  }
}

uint64_t sub_100DA2FB0()
{
  v29 = v0;
  v1 = v0[499];
  v2 = v0[498];
  sub_100DD9444((v0 + 56));
  sub_100016590(v2, v1);
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Pairing command error: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_10000B3A8((v0 + 254), &qword_1016BB880, &qword_1013E88A8);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, &v28);
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s failed with %{public}@", v10, 0x16u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  v14 = v0[458];
  v26 = v0[457];
  v27 = v0[462];
  v24 = v0[445];
  v25 = v0[451];
  v22 = v0[431];
  v23 = v0[442];
  v15 = v0[430];
  v16 = v0[429];
  v17 = v0[428];
  v18 = v0[427];
  v19 = v0[426];
  swift_willThrow();

  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v22, v16);
  sub_100DD92EC(v23, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v24, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v25, type metadata accessor for AccessoryMetadata);
  (*(v14 + 8))(v27, v26);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100DA3490()
{
  v2 = *v1;
  *(*v1 + 4096) = v0;

  if (v0)
  {
    v3 = *(v2 + 3384);
    v4 = sub_100DA3E28;
  }

  else
  {
    v5 = *(v2 + 80);
    *(v2 + 2688) = *(v2 + 96);
    v6 = *(v2 + 128);
    *(v2 + 2704) = *(v2 + 112);
    *(v2 + 2720) = v6;
    *(v2 + 2736) = *(v2 + 144);
    v7 = *(v2 + 16);
    *(v2 + 2624) = *(v2 + 32);
    v8 = *(v2 + 64);
    *(v2 + 2640) = *(v2 + 48);
    *(v2 + 2656) = v8;
    *(v2 + 2672) = v5;
    v9 = *(v2 + 3384);
    *(v2 + 2608) = v7;
    sub_10000B3A8(v2 + 2032, &qword_1016BB880, &qword_1013E88A8);
    sub_100007BAC((v2 + 3184));
    v4 = sub_100DA3608;
    v3 = v9;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DA3608()
{
  v55 = v0;
  v1 = *(v0 + 4080);
  v2 = *(v0 + 4072);
  v3 = *(v0 + 3992);
  v4 = *(v0 + 3984);
  sub_100DD9444(v0 + 448);
  sub_100016590(v2, v1);
  sub_100DD9444(v0 + 1456);
  sub_100016590(v4, v3);
  *(v0 + 2544) = *(v0 + 2688);
  *(v0 + 2560) = *(v0 + 2704);
  *(v0 + 2576) = *(v0 + 2720);
  *(v0 + 2592) = *(v0 + 2736);
  *(v0 + 2480) = *(v0 + 2624);
  *(v0 + 2496) = *(v0 + 2640);
  *(v0 + 2512) = *(v0 + 2656);
  *(v0 + 2528) = *(v0 + 2672);
  *(v0 + 2464) = *(v0 + 2608);
  SharingCircleWildAdvertisementKey.init(key:)();
  v5 = *(v0 + 2688);
  v6 = *(v0 + 2720);
  *(v0 + 544) = *(v0 + 2704);
  *(v0 + 560) = v6;
  *(v0 + 576) = *(v0 + 2736);
  v7 = *(v0 + 2624);
  v8 = *(v0 + 2656);
  *(v0 + 480) = *(v0 + 2640);
  *(v0 + 496) = v8;
  *(v0 + 512) = *(v0 + 2672);
  *(v0 + 528) = v5;
  *(v0 + 448) = *(v0 + 2608);
  *(v0 + 464) = v7;
  *(v0 + 2112) = *(v0 + 2544);
  *(v0 + 2128) = *(v0 + 2560);
  *(v0 + 2144) = *(v0 + 2576);
  *(v0 + 2160) = *(v0 + 2592);
  *(v0 + 2048) = *(v0 + 2480);
  *(v0 + 2064) = *(v0 + 2496);
  *(v0 + 2080) = *(v0 + 2512);
  *(v0 + 2096) = *(v0 + 2528);
  *(v0 + 2032) = *(v0 + 2464);
  v9 = *(v0 + 4096);
  sub_100DD93E8(v0 + 448, v0 + 592);
  sub_100DD93E8(v0 + 448, v0 + 736);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  sub_100DD9444(v0 + 448);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315138;
    v14 = *(v0 + 512);
    *(v0 + 2400) = *(v0 + 528);
    v15 = *(v0 + 560);
    *(v0 + 2416) = *(v0 + 544);
    *(v0 + 2432) = v15;
    *(v0 + 2448) = *(v0 + 576);
    v16 = *(v0 + 448);
    *(v0 + 2336) = *(v0 + 464);
    v17 = *(v0 + 496);
    *(v0 + 2352) = *(v0 + 480);
    *(v0 + 2368) = v17;
    *(v0 + 2384) = v14;
    v54[0] = v13;
    *(v0 + 2320) = v16;
    sub_100DD93E8(v0 + 448, v0 + 2176);
    v18 = String.init<A>(describing:)();
    v20 = sub_1000136BC(v18, v19, v54);

    *(v12 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Sending command: %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  v21 = *(v0 + 560);
  *(v0 + 976) = *(v0 + 544);
  *(v0 + 992) = v21;
  *(v0 + 1008) = *(v0 + 576);
  v22 = *(v0 + 496);
  *(v0 + 912) = *(v0 + 480);
  *(v0 + 928) = v22;
  v23 = *(v0 + 528);
  *(v0 + 944) = *(v0 + 512);
  *(v0 + 960) = v23;
  v24 = *(v0 + 464);
  *(v0 + 880) = *(v0 + 448);
  *(v0 + 896) = v24;
  *(v0 + 3976) = sub_100DD9498();
  *(v0 + 3984) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 3992) = v25;
  if (v9)
  {
    sub_100DD9444(v0 + 448);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Pairing command error: %{public}@", v28, 0xCu);
      sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);
    }

    sub_10000B3A8(v0 + 2032, &qword_1016BB880, &qword_1013E88A8);

    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54[0] = v35;
      *v33 = 136446466;
      *(v33 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, v54);
      *(v33 + 12) = 2114;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v36;
      *v34 = v36;
      _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s failed with %{public}@", v33, 0x16u);
      sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v35);
    }

    v37 = *(v0 + 3664);
    v52 = *(v0 + 3656);
    v53 = *(v0 + 3696);
    v50 = *(v0 + 3560);
    v51 = *(v0 + 3608);
    v48 = *(v0 + 3448);
    v49 = *(v0 + 3536);
    v38 = *(v0 + 3440);
    v39 = *(v0 + 3432);
    v40 = *(v0 + 3424);
    v41 = *(v0 + 3416);
    v42 = *(v0 + 3408);
    swift_willThrow();

    (*(v41 + 8))(v40, v42);
    (*(v38 + 8))(v48, v39);
    sub_100DD92EC(v49, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v50, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v51, type metadata accessor for AccessoryMetadata);
    (*(v37 + 8))(v53, v52);

    v43 = *(v0 + 8);

    return v43();
  }

  else
  {
    v45 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
    v46 = swift_task_alloc();
    *(v0 + 4000) = v46;
    *v46 = v0;
    v46[1] = sub_100DA0FE0;
    v47 = *(v0 + 3928);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v47, v45);
  }
}

uint64_t sub_100DA3E28()
{
  v31 = v0;
  v1 = v0[510];
  v2 = v0[509];
  v3 = v0[499];
  v4 = v0[498];
  sub_100DD9444((v0 + 56));
  sub_100016590(v2, v1);
  sub_100DD9444((v0 + 182));
  sub_100016590(v4, v3);
  sub_100007BAC(v0 + 398);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Pairing command error: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_10000B3A8((v0 + 254), &qword_1016BB880, &qword_1013E88A8);

  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v12 = 136446466;
    *(v12 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, &v30);
    *(v12 + 12) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v15;
    *v13 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s failed with %{public}@", v12, 0x16u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v14);
  }

  v16 = v0[458];
  v28 = v0[457];
  v29 = v0[462];
  v26 = v0[445];
  v27 = v0[451];
  v24 = v0[431];
  v25 = v0[442];
  v17 = v0[430];
  v18 = v0[429];
  v19 = v0[428];
  v20 = v0[427];
  v21 = v0[426];
  swift_willThrow();

  (*(v20 + 8))(v19, v21);
  (*(v17 + 8))(v24, v18);
  sub_100DD92EC(v25, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v26, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v27, type metadata accessor for AccessoryMetadata);
  (*(v16 + 8))(v29, v28);

  v22 = v0[1];

  return v22();
}

uint64_t sub_100DA432C(uint64_t a1)
{
  v20 = v1;
  if (*(v1 + 4107) > 4u)
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x8000000101370CD0, &v19);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s Not your pencil!", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = *(v1 + 3696);
    v11 = *(v1 + 3664);
    v12 = *(v1 + 3656);
    v13 = *(v1 + 3608);
    v14 = *(v1 + 3560);
    v15 = *(v1 + 3536);
    sub_100500BC4();
    swift_allocError();
    *v16 = xmmword_1013E84E0;
    *(v16 + 16) = 3;
    swift_willThrow();

    sub_100DD92EC(v15, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v14, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v13, type metadata accessor for AccessoryMetadata);
    (*(v11 + 8))(v10, v12);

    v17 = *(v1 + 8);

    return v17();
  }

  else
  {
    *(v1 + 3896) = type metadata accessor for Service();
    Identifier.init(stringLiteral:)();
    v2 = swift_task_alloc();
    *(v1 + 3904) = v2;
    *v2 = v1;
    v2[1] = sub_100D9F78C;
    v3 = *(v1 + 3752);
    v4 = *(v1 + 3744);
    v5 = *(v1 + 3496);

    return dispatch thunk of PeripheralProtocol.subscript.getter(v5, v4, v3);
  }
}

uint64_t sub_100DA472C()
{
  v1 = v0[462];
  v2 = v0[458];
  v3 = v0[457];
  v4 = v0[451];
  v5 = v0[445];
  v6 = v0[442];

  sub_100DD92EC(v6, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v5, &qword_101697268, &qword_101394FE0);
  sub_100DD92EC(v4, type metadata accessor for AccessoryMetadata);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100DA4964()
{
  v39 = v0;
  sub_1000D2AD8(v0[444], v0[445], &qword_101697268, &qword_101394FE0);
  v1 = v0[481];
  v2 = v0[443];
  v3 = v0[440];
  v4 = v0[439];
  sub_1000D2A70(v0[445], v2, &qword_101697268, &qword_101394FE0);
  v5 = (*(v3 + 48))(v2, 1, v4);
  v6 = v0[443];
  if (v5 == 1)
  {
    sub_10000B3A8(v6, &qword_101697268, &qword_101394FE0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing product info!", v9, 2u);
    }

    v10 = v0[462];
    v11 = v0[458];
    v12 = v0[457];
    v13 = v0[451];
    v14 = v0[445];

    sub_100500BC4();
    swift_allocError();
    *v15 = xmmword_1013E84D0;
    *(v15 + 16) = 3;
    swift_willThrow();

    sub_10000B3A8(v14, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v13, type metadata accessor for AccessoryMetadata);
    (*(v11 + 8))(v10, v12);
    goto LABEL_10;
  }

  v16 = v0[442];
  v17 = v0[441];
  sub_100DD921C(v6, v16, type metadata accessor for AccessoryProductInfo);
  sub_100DD9284(v16, v17, type metadata accessor for AccessoryProductInfo);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[441];
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136446210;
    v24 = sub_1011A0624();
    v26 = v25;
    sub_100DD92EC(v21, type metadata accessor for AccessoryProductInfo);
    v27 = sub_1000136BC(v24, v26, &v38);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Product info: %{public}s)", v22, 0xCu);
    sub_100007BAC(v23);
  }

  else
  {

    sub_100DD92EC(v21, type metadata accessor for AccessoryProductInfo);
  }

  sub_100DBD674(v0[451], v0[442]);
  if (v1)
  {
    v28 = v0[462];
    v29 = v0[458];
    v30 = v0[457];
    v31 = v0[451];
    v32 = v0[445];
    v33 = v0[442];

    sub_100DD92EC(v33, type metadata accessor for AccessoryProductInfo);
    sub_10000B3A8(v32, &qword_101697268, &qword_101394FE0);
    sub_100DD92EC(v31, type metadata accessor for AccessoryMetadata);
    (*(v29 + 8))(v28, v30);
LABEL_10:

    v34 = v0[1];

    return v34();
  }

  v36 = swift_task_alloc();
  v0[482] = v36;
  *v36 = v0;
  v36[1] = sub_100D9ED54;
  v37 = v0[422];

  return withTimeout<A>(_:block:)(v36, 0xA055690D9DB80000, 1, &unk_1013E8898, v37, &type metadata for () + 1);
}

uint64_t sub_100DA4F5C()
{
  v1 = v0[462];
  v2 = v0[458];
  v3 = v0[457];
  v4 = v0[451];

  sub_100DD92EC(v4, type metadata accessor for AccessoryMetadata);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100DA5158(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100DA5280, v1, 0);
}

uint64_t sub_100DA5280()
{
  v16 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = sub_1000076D4(v1, qword_1016BB490);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101370EA0, &v15);
    *(v7 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v15);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s for peripheral: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_100DA5568;
  v13 = v0[8];

  return sub_100DBB6E8(v13);
}

uint64_t sub_100DA5568(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[18] = a1;
  v4[19] = a2;

  if (v2)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v4[9];

    return _swift_task_switch(sub_100DA56C4, v8, 0);
  }
}

uint64_t sub_100DA56C4(uint64_t a1)
{
  v25 = v1;
  if ((v1[19] & 0x3000000000000000) == 0x1000000000000000)
  {
    v2 = v1[18];
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = 0xD000000000000010;
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24 = v7;
      *v6 = 136446210;
      if (v2)
      {
        if (v2 == 1)
        {
          v5 = 0xD000000000000014;
        }

        else
        {
          v5 = 0xD000000000000017;
        }

        if (v2 == 1)
        {
          v8 = ".pairedToAnotherAccount";
        }

        else
        {
          v8 = "lastProactiveSubscribeTime";
        }
      }

      else
      {
        v8 = ".pairedToThisAccount";
      }

      v17 = sub_1000136BC(v5, v8 | 0x8000000000000000, &v24);

      *(v6 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v3, v4, "FMND status: %{public}s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    v19 = v1[14];
    v18 = v1[15];
    v20 = v1[13];
    v1[20] = type metadata accessor for Peripheral();
    v1[21] = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    Identifier.id.getter();
    v21 = *(v19 + 8);
    v1[22] = v21;
    v1[23] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v18, v20);
    v22 = swift_task_alloc();
    v1[24] = v22;
    *v22 = v1;
    v22[1] = sub_100DA5A14;
    v23 = v1[12];

    return sub_100D927C4(v23, 0, 0x2000000000000000);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v1[18];
    v12 = v1[19];
    if (v11)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unexpected FMND ID response!", v14, 2u);
    }

    sub_100DD9F00(v13, v12);

    v15 = v1[1];

    return v15(0);
  }
}

uint64_t sub_100DA5A14()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *v0;

  v6 = *(v3 + 8);
  v1[25] = v6;
  v1[26] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  v7 = swift_task_alloc();
  v1[27] = v7;
  *v7 = v5;
  v7[1] = sub_100DA5BD4;
  v8 = v1[8];

  return sub_100DB1524(v8);
}

uint64_t sub_100DA5BD4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[28] = a1;
  v5[29] = a2;
  v5[30] = v2;

  v6 = v4[9];
  if (v2)
  {
    v7 = sub_100DA61A8;
  }

  else
  {
    v7 = sub_100DA5D0C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100DA5D0C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[22];
  v4 = v0[15];
  v5 = v0[13];
  dispatch thunk of PeripheralProtocol.id.getter();
  Identifier.id.getter();
  v3(v4, v5);
  sub_100017D5C(v2, v1);
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_100DA5E08;
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[12];

  return sub_100D927C4(v9, v7, v8);
}

uint64_t sub_100DA5E08()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 80);
  v6 = *(*v0 + 72);

  sub_100016590(v2, v1);
  v3(v4, v5);

  return _swift_task_switch(sub_100DA5FC0, v6, 0);
}

uint64_t sub_100DA5FC0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  sub_100017D5C(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *v3 = v0;
  v3[1] = sub_100DA607C;

  return sub_100B9F4F8(v0 + 16);
}

uint64_t sub_100DA607C(char a1)
{
  v3 = *v2;
  *(v3 + 57) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = *(v3 + 72);
    v5 = sub_100DA6754;
  }

  else
  {
    v6 = *(v3 + 72);
    sub_100016590(*(v3 + 224), *(v3 + 232));
    v5 = sub_100DA6394;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DA61A8()
{
  v11 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101370EA0, &v10);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  else
  {
  }

  v7 = 0x50304u >> (8 * *(v0 + 144));

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_100DA6394(uint64_t a1)
{
  v35 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 57);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34 = v6;
    *v5 = 136446210;
    v7 = sub_100B9EF08(v4);
    v9 = sub_1000136BC(v7, v8, &v34);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "AccountCheckResult.SeverStatus: %{public}s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v10 = *(v1 + 57);
  v11 = 0x50402u >> (8 * v10);
  if (v10 >= 2)
  {
    v12 = 5;
  }

  else
  {
    v12 = 3;
  }

  v13 = 0x50103u >> (8 * v10);
  if (*(v1 + 144) == 1)
  {
    LOBYTE(v10) = 0;
    v13 = v12;
  }

  if (*(v1 + 144))
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  if (*(v1 + 144))
  {
    v15 = v13;
  }

  else
  {
    v15 = v11;
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v19;
    *v18 = 136446210;
    v20 = sub_100B9F190(v15);
    v22 = sub_1000136BC(v20, v21, &v34);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "AccountCheckResult: %{public}s", v18, 0xCu);
    sub_100007BAC(v19);
  }

  if (v14)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136315138;
      v27 = sub_100B9F190(1u);
      v29 = sub_1000136BC(v27, v28, &v34);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Handling %s", v25, 0xCu);
      sub_100007BAC(v26);
    }

    v30 = swift_task_alloc();
    *(v1 + 272) = v30;
    *v30 = v1;
    v30[1] = sub_100DA695C;
    v31 = *(v1 + 64);

    return sub_100DC96E4(v31);
  }

  else
  {
    sub_100016590(*(v1 + 224), *(v1 + 232));

    v33 = *(v1 + 8);

    return v33(v15);
  }
}

uint64_t sub_100DA6754()
{
  v13 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  sub_100016590(v1, v2);
  sub_100016590(v1, v2);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101370EA0, &v12);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}@", v5, 0x16u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);
  }

  else
  {
  }

  v9 = 0x50304u >> (8 * *(v0 + 144));

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_100DA695C()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_100DA6B04;
  }

  else
  {
    v4 = sub_100DA6A88;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DA6A88()
{
  sub_100016590(v0[28], v0[29]);

  v1 = v0[1];

  return v1(4);
}

uint64_t sub_100DA6B04()
{
  v11 = v0;
  sub_100016590(*(v0 + 224), *(v0 + 232));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101370EA0, &v10);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  else
  {
  }

  v7 = 0x50304u >> (8 * *(v0 + 144));

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_100DA6CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for String.Encoding();
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[11] = v6;
  *v6 = v4;
  v6[1] = sub_100DA6E24;

  return daemon.getter();
}

uint64_t sub_100DA6E24(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100DA7000;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100DA7000(uint64_t a1)
{
  v3 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v4 = v3[5];
    v5 = sub_100DA7964;
  }

  else
  {
    v6 = v3[5];

    v5 = sub_100DA7128;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DA7128()
{
  v27 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_1016BB490);
  (*(v3 + 16))(v1, v6, v2);
  sub_10002E98C(v5, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_100006654(v5, v4);
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[10];
  v12 = v0[7];
  v13 = v0[8];
  if (v10)
  {
    v25 = v0[4];
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v14 = 141558787;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v13 + 8))(v11, v12);
    v18 = sub_1000136BC(v15, v17, &v26);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2081;
    if (v25 >> 60 == 15)
    {
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    else
    {
      static String.Encoding.utf8.getter();
      v19 = String.init(data:encoding:)();
      if (!v21)
      {
        v19 = Data.hexString.getter();
      }

      v20 = v21;
    }

    v22 = sub_1000136BC(v19, v20, &v26);

    *(v14 + 34) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "Delete accessory info for %{private,mask.hash}s\nSN: %{private,mask.hash}s", v14, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v13 + 8))(v11, v12);
  }

  v23 = v0[14];

  return _swift_task_switch(sub_100DA7430, v23, 0);
}

uint64_t sub_100DA7430()
{
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_100DA74D0;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_100C5969C(v4, v2, v3);
}

uint64_t sub_100DA74D0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100DA7678;
  }

  else
  {
    v4 = sub_100DA75FC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DA75FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DA7678()
{
  v23 = v0;

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to delete accessory info for %{private,mask.hash}s, error %{public}@", v12, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100DA7964()
{
  v23 = v0;

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to delete accessory info for %{private,mask.hash}s, error %{public}@", v12, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100DA7C50(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 80) = a2;
  *(v4 + 24) = a1;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100DA7D30, 0, 0);
}

uint64_t sub_100DA7D30()
{
  v45 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 24);
    v2 = v1;
    if (qword_101694EA0 != -1)
    {
      swift_once();
      v2 = *(v0 + 24);
    }

    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016BB490);
    (*(v4 + 16))(v3, v6, v5);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1000BB584(v2, 1);
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v14 = 136446722;
      *(v14 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, &v44);
      *(v14 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v42 = v9;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_1000136BC(v15, v17, &v44);

      *(v14 + 14) = v18;
      *(v14 + 22) = 2114;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v19;
      *v43 = v19;
      _os_log_impl(&_mh_execute_header, v8, v42, "%{public}s failed for %{public}s. Error %{public}@", v14, 0x20u);
      sub_10000B3A8(v43, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
LABEL_6:
        *(v0 + 16) = v1;
        swift_errorRetain();
        sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
        CheckedContinuation.resume(throwing:)();
        goto LABEL_16;
      }
    }

    else
    {

      (*(v12 + 8))(v11, v13);
      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, &v44);
      _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s Not resuming continuation in cancelled task.", v38, 0xCu);
      sub_100007BAC(v39);
    }
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 72);
    v21 = *(v0 + 48);
    v22 = *(v0 + 56);
    v23 = *(v0 + 32);
    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_1016BB490);
    (*(v22 + 16))(v20, v23, v21);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 72);
    v29 = *(v0 + 48);
    v30 = *(v0 + 56);
    if (v27)
    {
      v31 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v31 = 136446466;
      *(v31 + 4) = sub_1000136BC(0xD000000000000029, 0x8000000101370C70, &v44);
      *(v31 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v30 + 8))(v28, v29);
      v35 = sub_1000136BC(v32, v34, &v44);

      *(v31 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s succeeded for %{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v30 + 8))(v28, v29);
    }
  }

LABEL_16:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100DA8340(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return _swift_task_switch(sub_100DA8388, v1, 0);
}

uint64_t sub_100DA8388()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService, &unk_1013E8768);
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = sub_1000BC4D4(&qword_1016B55F0, &qword_1013D6BE0);
  *v6 = v0;
  v6[1] = sub_1008EE19C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, v4, 0xD000000000000017, 0x8000000101371200, sub_100DDD480, v5, v7);
}

uint64_t sub_100DA84D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a4;
  v28 = a1;
  v5 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v26 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v27 = &v25 - v8;
  v10 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v15 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a3, v10);
  (*(v6 + 16))(v9, v28, v5);
  v19 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService, &unk_1013E8768);
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = (v12 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 2) = v29;
  *(v22 + 3) = v19;
  *(v22 + 4) = v23;
  (*(v11 + 32))(&v22[v20], v14, v10);
  (*(v6 + 32))(&v22[v21], v27, v26);
  *&v22[(v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v30;
  swift_retain_n();
  sub_10025EDD4(0, 0, v17, &unk_1013E8C68, v22);
}

uint64_t sub_100DA8804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v7[6] = v9;
  v10 = *(v9 - 8);
  v7[7] = v10;
  v7[8] = *(v10 + 64);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v7[11] = v11;
  v12 = *(v11 - 8);
  v7[12] = v12;
  v7[13] = *(v12 + 64);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v7[16] = v13;
  v7[17] = *(v13 - 8);
  v7[18] = swift_task_alloc();

  return _swift_task_switch(sub_100DA89C4, a4, 0);
}

uint64_t sub_100DA89C4()
{
  Identifier.id.getter();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_100DA8A74;
  v2 = *(v0 + 144);

  return sub_100D927C4(v2, 1, 0x1000000000000000);
}

uint64_t sub_100DA8A74()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 16);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100DA8BE0, v4, 0);
}

uint64_t sub_100DA8BE0()
{
  v1 = v0[15];
  v27 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v32 = v4;
  v6 = v0[8];
  v28 = v0[9];
  v7 = v0[6];
  v33 = v0[7];
  v29 = v7;
  v8 = v0[4];
  v31 = v0[5];
  v24 = v8;
  v9 = v0[3];
  v26 = v9;
  v30 = v0[2];
  type metadata accessor for WorkItemQueue.WorkItem();
  v25 = *(v2 + 16);
  v25(v1, v9, v5);
  v23 = *(v33 + 16);
  v23(v4, v8, v7);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v22 = v10 + v3;
  v11 = (v10 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v33 + 80);
  v13 = (v12 + v11 + 8) & ~v12;
  v21 = v6 + 7;
  v14 = swift_allocObject();
  v20 = *(v2 + 32);
  v20(v14 + v10, v1, v5);
  *(v14 + v11) = v30;
  v15 = *(v33 + 32);
  v15(v14 + v13, v32, v29);
  *(v14 + ((v13 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v25(v27, v26, v5);
  v23(v28, v24, v29);
  v16 = (v22 + v12) & ~v12;
  v17 = swift_allocObject();
  v20(v17 + v10, v27, v5);
  v15(v17 + v16, v28, v29);
  *(v17 + ((v16 + v21) & 0xFFFFFFFFFFFFFFF8)) = v31;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v18 = v0[1];

  return v18();
}

uint64_t sub_100DA8F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3[15] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100DA9144, 0, 0);
}

uint64_t sub_100DA9144()
{
  v21 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[20] = sub_1000076D4(v5, qword_1016BB490);
  (*(v3 + 16))(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v10 = v0[16];
  v11 = v0[17];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101371200, &v20);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v11 + 8);
    v16(v9, v10);
    v17 = sub_1000136BC(v13, v15, &v20);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v16 = *(v11 + 8);
    v16(v9, v10);
  }

  v0[21] = v16;
  v18 = *(v0[5] + OBJC_IVAR____TtC12searchpartyd20PencilPairingService_locationPublisher);
  v0[22] = v18;

  return _swift_task_switch(sub_100DA93D0, v18, 0);
}

uint64_t sub_100DA93D0()
{
  v1 = v0[22];
  v2 = v0[15];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_100D97688(&qword_1016BB928, type metadata accessor for PencilLocationsPublisher, &unk_10140CF58);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  v0[23] = sub_100A83BA8(0, 0, v2, &unk_1013E8C90, v5);
  type metadata accessor for CentralManager();
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_100DA954C;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100DA954C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[25] = a1;
  v4[26] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100DAA104, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[27] = v6;
    *v6 = v5;
    v6[1] = sub_100DA96EC;
    v7 = v4[4];

    return sub_100DAA404(a1, v7);
  }
}

uint64_t sub_100DA96EC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_100DAA1C4;
  }

  else
  {
    v4 = sub_100DA9800;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100DA9800()
{
  static Date.trustedNow.getter(v0[14]);
  v1 = swift_task_alloc();
  v0[30] = v1;
  v2 = sub_1000BC4D4(&qword_1016B55F0, &qword_1013D6BE0);
  v3 = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  *v1 = v0;
  v1[1] = sub_100DA98E0;
  v4 = v0[23];

  return Task.value.getter(v0 + 2, v4, v2, v3, &protocol self-conformance witness table for Error);
}

uint64_t sub_100DA98E0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {

    v2 = sub_100DAA290;
  }

  else
  {
    v2 = sub_100DA99FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100DA99FC()
{
  v31 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v30 = v7;
      *v5 = 136315394;
      *(v5 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101371200, &v30);
      *(v5 + 12) = 2112;
      *(v5 + 14) = v2;
      *v6 = v1;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Got one shot location %@", v5, 0x16u);
      sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v7);
    }

    v9 = v0[11];
    [v2 coordinate];
    *v9 = v10;
    [v2 coordinate];
    v9[1] = v11;
    [v2 horizontalAccuracy];
    v9[2] = v12;
    v13 = [v2 timestamp];
    v14 = type metadata accessor for DeviceEvent.Location(0);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
    v15 = v0[31];
  }

  else
  {
    v15 = v0[31];
    v16 = v0[11];
    v17 = type metadata accessor for DeviceEvent.Location(0);
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  }

  v0[32] = v15;
  v0[33] = v1;
  v18 = v0[21];
  v19 = v0[18];
  v20 = v0[16];
  v21 = v0[9];
  v23 = v0[7];
  v22 = v0[8];
  Peripheral.id.getter();
  Identifier.id.getter();
  v18(v19, v20);
  (*(v21 + 56))(v23, 1, 1, v22);
  v24 = swift_task_alloc();
  v0[34] = v24;
  *v24 = v0;
  v24[1] = sub_100DA9D5C;
  v25 = v0[14];
  v27 = v0[10];
  v26 = v0[11];
  v28 = v0[7];

  return sub_100DAB1EC(v27, 7, v25, v28, v26);
}

uint64_t sub_100DA9D5C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);

  sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100DA9EE0, 0, 0);
}

uint64_t sub_100DA9EE0(uint64_t a1)
{
  v2 = v1[32];
  static Task<>.checkCancellation()();
  if (v2)
  {
    v3 = v1[33];
    v5 = v1[13];
    v4 = v1[14];
    v7 = v1[11];
    v6 = v1[12];

    sub_10000B3A8(v7, &qword_101699E50, &qword_1013D97C0);
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v9 = v1[33];
    v10 = v1[14];
    v11 = v1[13];
    v15 = v1[12];
    v12 = v1[11];
    v1[3] = v9;
    v13 = v9;
    sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
    CheckedContinuation.resume(returning:)();

    sub_10000B3A8(v12, &qword_101699E50, &qword_1013D97C0);
    (*(v11 + 8))(v10, v15);
  }

  v8 = v1[1];

  return v8();
}

uint64_t sub_100DAA104()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DAA1C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DAA290()
{
  v1 = v0[11];
  v2 = type metadata accessor for DeviceEvent.Location(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v0[32] = 0;
  v0[33] = 0;
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[9];
  v8 = v0[7];
  v7 = v0[8];
  Peripheral.id.getter();
  Identifier.id.getter();
  v3(v4, v5);
  (*(v6 + 56))(v8, 1, 1, v7);
  v9 = swift_task_alloc();
  v0[34] = v9;
  *v9 = v0;
  v9[1] = sub_100DA9D5C;
  v10 = v0[14];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[7];

  return sub_100DAB1EC(v12, 7, v10, v13, v11);
}

uint64_t sub_100DAA404(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = type metadata accessor for CentralManager.State();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v3[12] = *(v6 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100DAA578, v2, 0);
}

uint64_t sub_100DAA578()
{
  v26 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[16] = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v3 + 16);
  v0[17] = v6;
  v0[18] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v11 = v0[10];
  v12 = v0[11];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 136315138;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Pairing Pencil with identifier %s", v13, 0xCu);
    sub_100007BAC(v24);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[19] = v17;
  (*(v0[8] + 104))(v0[9], enum case for CentralManager.State.poweredOn(_:), v0[7]);
  v19 = type metadata accessor for CentralManager();
  v20 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  v21 = swift_task_alloc();
  v0[20] = v21;
  *v21 = v0;
  v21[1] = sub_100DAA870;
  v22 = v0[9];

  return dispatch thunk of CentralManagerProtocol.await(state:)(v22, v19, v20);
}

uint64_t sub_100DAA870()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 168) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_100DAAD04;
  }

  else
  {
    v7 = sub_100DAA9F8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100DAA9F8()
{
  v25 = v0;
  (*(v0 + 136))(*(v0 + 112), *(v0 + 32), *(v0 + 80));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 80);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000026, 0x8000000101371220, &v24);
    *(v7 + 12) = 2080;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v4(v5, v6);
    v11 = sub_1000136BC(v8, v10, &v24);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s Retrieving peripheral matching identifier: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  v16 = *(v0 + 48);
  v17 = *(v0 + 24);
  (*(v0 + 136))(v12, *(v0 + 32), v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v0 + 176) = v20;
  *(v20 + 16) = v17;
  (*(v15 + 32))(v20 + v18, v12, v14);
  *(v20 + v19) = v16;

  v21 = swift_task_alloc();
  *(v0 + 184) = v21;
  v22 = type metadata accessor for Peripheral();
  *v21 = v0;
  v21[1] = sub_100DAAD90;

  return withTimeout<A>(_:block:)(v0 + 16, 0x40AAD21B3B700000, 3, &unk_1013E8CA8, v20, v22);
}

uint64_t sub_100DAAD04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DAAD90()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_100DAB0C4;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_100DAAEB8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DAAEB8()
{
  v1 = v0[2];
  v0[25] = v1;
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_100DAAF54;

  return sub_100D9BE04(v1);
}

uint64_t sub_100DAAF54()
{
  v2 = *v1;
  v2[27] = v0;

  if (v0)
  {
    v3 = v2[5];

    return _swift_task_switch(sub_100DAB158, v3, 0);
  }

  else
  {

    v4 = v2[1];
    v5 = v2[25];

    return v4(v5);
  }
}

uint64_t sub_100DAB0C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DAB158()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DAB1EC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 360) = a2;
  *(v6 + 24) = a1;
  v7 = type metadata accessor for Date();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = type metadata accessor for DeviceEvent(0);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = type metadata accessor for BeaconIdentifier(0);
  *(v6 + 112) = swift_task_alloc();
  v8 = type metadata accessor for OwnedBeaconRecord(0);
  *(v6 + 120) = v8;
  *(v6 + 128) = *(v8 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  *(v6 + 152) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  *(v6 + 160) = swift_task_alloc();
  sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  *(v6 + 168) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v6 + 176) = v9;
  *(v6 + 184) = *(v9 - 8);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_100DAB4B4, v5, 0);
}

uint64_t sub_100DAB4B4()
{
  v57 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = type metadata accessor for Logger();
  *(v0 + 232) = sub_1000076D4(v7, qword_1016BB490);
  v8 = *(v3 + 16);
  *(v0 + 240) = v8;
  *(v0 + 248) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6, v2);
  sub_1000D2A70(v5, v4, &qword_101699E50, &qword_1013D97C0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 224);
  v14 = *(v0 + 176);
  v13 = *(v0 + 184);
  v15 = *(v0 + 168);
  if (v11)
  {
    v53 = v10;
    log = v9;
    v55 = v8;
    v16 = *(v0 + 360);
    v17 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v17 = 136316163;
    *(v17 + 4) = sub_1000136BC(0xD000000000000044, 0x8000000101370E40, &v56);
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v13 + 8);
    v21(v12, v14);
    v22 = sub_1000136BC(v18, v20, &v56);

    *(v17 + 24) = v22;
    *(v17 + 32) = 1024;
    v23 = type metadata accessor for DeviceEvent.Location(0);
    LODWORD(v22) = (*(*(v23 - 8) + 48))(v15, 1, v23) != 1;
    sub_10000B3A8(v15, &qword_101699E50, &qword_1013D97C0);
    v24 = 0xE800000000000000;
    *(v17 + 34) = v22;
    v25 = 0x6E776F6E6B6E752ELL;
    *(v17 + 38) = 2082;
    v26 = 0xEC00000064657261;
    v27 = 0x657070617369642ELL;
    if (v16 != 6)
    {
      v27 = 0x726961702ELL;
      v26 = 0xE500000000000000;
    }

    v28 = 0xE700000000000000;
    v29 = 0x6863617465642ELL;
    if (v16 != 4)
    {
      v29 = 0x657463657465642ELL;
      v28 = 0xEF79627261654E64;
    }

    if (v16 <= 5)
    {
      v27 = v29;
      v26 = v28;
    }

    v30 = 0xEB00000000746365;
    v31 = 0x6E6E6F637369642ELL;
    if (v16 != 2)
    {
      v31 = 0x6863617474612ELL;
      v30 = 0xE700000000000000;
    }

    if (v16)
    {
      v25 = 0x7463656E6E6F632ELL;
      v24 = 0xE800000000000000;
    }

    if (v16 > 1)
    {
      v25 = v31;
      v24 = v30;
    }

    if (v16 <= 3)
    {
      v32 = v25;
    }

    else
    {
      v32 = v27;
    }

    if (v16 <= 3)
    {
      v33 = v24;
    }

    else
    {
      v33 = v26;
    }

    v34 = sub_1000136BC(v32, v33, &v56);

    *(v17 + 40) = v34;
    _os_log_impl(&_mh_execute_header, log, v53, "%s for beacon: %{private,mask.hash}s hasLocation? %{BOOL}d, source: %{public}s.", v17, 0x30u);
    swift_arrayDestroy();

    v8 = v55;
  }

  else
  {
    sub_10000B3A8(*(v0 + 168), &qword_101699E50, &qword_1013D97C0);

    v21 = *(v13 + 8);
    v21(v12, v14);
  }

  *(v0 + 256) = v21;
  v35 = *(v0 + 176);
  v36 = *(v0 + 184);
  v37 = *(v0 + 152);
  sub_1000D2A70(*(v0 + 40), v37, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v36 + 48))(v37, 1, v35) == 1)
  {
    sub_10000B3A8(*(v0 + 152), &qword_1016980D0, &unk_10138F3B0);
    v38 = swift_task_alloc();
    *(v0 + 264) = v38;
    *v38 = v0;
    v39 = sub_100DABB18;
  }

  else
  {
    v40 = *(v0 + 216);
    v41 = *(v0 + 176);
    v42 = *(v0 + 184);
    v43 = *(v0 + 160);
    (*(v42 + 32))(v40, *(v0 + 152), v41);
    v8(v43, v40, v41);
    v44 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    v45 = *(v44 + 20);
    static SystemInfo.bootSessionUUID.getter();
    v21(v40, v41);
    (*(v42 + 56))(v43 + v45, 0, 1, v41);
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    v46 = *(v0 + 240);
    v47 = *(v0 + 176);
    v49 = *(v0 + 104);
    v48 = *(v0 + 112);
    v50 = *(v0 + 24);
    v51 = getuid();
    sub_1000294F0(v51);
    v46(v48 + *(v49 + 20), v50, v47);
    v38 = swift_task_alloc();
    *(v0 + 312) = v38;
    *v38 = v0;
    v39 = sub_100DAC7D4;
  }

  v38[1] = v39;

  return daemon.getter();
}

uint64_t sub_100DABB18(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 272) = a1;

  v3 = swift_task_alloc();
  *(v2 + 280) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100DABCF4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100DABCF4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    a1 = *(v4 + 56);

    v5 = sub_100DAC490;
  }

  else
  {

    *(v4 + 288) = a1;
    v5 = sub_100DABE4C;
  }

  return _swift_task_switch(v5, a1, 0);
}

uint64_t sub_100DABE4C()
{

  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_100DABF38;
  v3 = *(v0 + 288);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1004216C0, v3, v2);
}

uint64_t sub_100DABF38()
{
  v1 = *(*v0 + 288);

  return _swift_task_switch(sub_100DAC050, v1, 0);
}

uint64_t sub_100DAC050()
{
  v1 = v0[7];

  v0[38] = v0[2];

  return _swift_task_switch(sub_100DAC0C4, v1, 0);
}

uint64_t sub_100DAC0C4()
{
  v39 = v0;
  v1 = v0[38];
  v2 = v0[30];
  if (*(v1 + 16))
  {
    v3 = v0[22];
    v4 = v0[23];
    v5 = v0[20];
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[15];
    v9 = *(v0[16] + 80);
    sub_100DD9284(v1 + ((v9 + 32) & ~v9), v7, type metadata accessor for OwnedBeaconRecord);

    sub_100DD921C(v7, v6, type metadata accessor for OwnedBeaconRecord);
    v2(v5, v6 + *(v8 + 20), v3);
    v10 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    v11 = *(v10 + 20);
    static SystemInfo.bootSessionUUID.getter();
    sub_100DD92EC(v6, type metadata accessor for OwnedBeaconRecord);
    (*(v4 + 56))(v5 + v11, 0, 1, v3);
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  }

  else
  {
    v12 = v0[26];
    v13 = v0[22];
    v14 = v0[20];
    v15 = v0[3];

    v16 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    v2(v12, v15, v13);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[32];
    v21 = v0[26];
    v22 = v0[22];
    if (v19)
    {
      v37 = v0[32];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v24;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v37(v21, v22);
      v28 = sub_1000136BC(v25, v27, &v38);

      *(v23 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error could not get self-beacon UUID for device event for beacon: %{private,mask.hash}s.", v23, 0x16u);
      sub_100007BAC(v24);
    }

    else
    {

      v20(v21, v22);
    }
  }

  v29 = v0[30];
  v30 = v0[22];
  v32 = v0[13];
  v31 = v0[14];
  v33 = v0[3];
  v34 = getuid();
  sub_1000294F0(v34);
  v29(v31 + *(v32 + 20), v33, v30);
  v35 = swift_task_alloc();
  v0[39] = v35;
  *v35 = v0;
  v35[1] = sub_100DAC7D4;

  return daemon.getter();
}

uint64_t sub_100DAC490()
{
  v20 = v0;
  sub_100500BC4();
  swift_allocError();
  *v1 = xmmword_1013E84B0;
  *(v1 + 16) = 3;
  swift_willThrow();
  (*(v0 + 240))(*(v0 + 192), *(v0 + 24), *(v0 + 176));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 256);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  if (v4)
  {
    v16 = *(v0 + 256);
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v8 = 138543875;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v9;
    *v17 = v9;
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v16(v6, v7);
    v13 = sub_1000136BC(v10, v12, &v19);

    *(v8 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error while saving peripheral event: %{public}@, beacon: %{private,mask.hash}s.", v8, 0x20u);
    sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v18);
  }

  else
  {

    v5(v6, v7);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100DAC7D4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 320) = a1;

  v3 = swift_task_alloc();
  *(v2 + 328) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100DAC9B0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100DAC9B0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 336) = a1;

  v4 = *(v3 + 56);
  if (v1)
  {

    v5 = sub_100DACDE8;
  }

  else
  {

    v5 = sub_100DACB14;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DACB14()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 48);
  v6 = *(v0 + 360);
  (*(*(v0 + 72) + 16))(v3 + v4[6], *(v0 + 32), *(v0 + 64));
  sub_1000D2A70(v5, v3 + v4[7], &qword_101699E50, &qword_1013D97C0);
  sub_1000D2A70(v1, v3 + v4[8], &unk_1016AA510, &unk_101393150);
  sub_100DD9284(v2, v3 + v4[9], type metadata accessor for BeaconIdentifier);
  static Date.trustedNow.getter(v3 + v4[10]);
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v3 + 9) = v6;
  v7 = swift_task_alloc();
  *(v0 + 344) = v7;
  *v7 = v0;
  v7[1] = sub_100DACC70;
  v8 = *(v0 + 96);

  return sub_1010D02E4(v8);
}

uint64_t sub_100DACC70()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 56);
  sub_100DD92EC(v3, type metadata accessor for DeviceEvent);

  if (v0)
  {
    v5 = sub_100DAD50C;
  }

  else
  {
    v5 = sub_100DAD168;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DACDE8()
{
  v22 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  sub_100500BC4();
  swift_allocError();
  *v3 = xmmword_1013E84A0;
  *(v3 + 16) = 3;
  swift_willThrow();
  sub_100DD92EC(v2, type metadata accessor for BeaconIdentifier);
  sub_10000B3A8(v1, &unk_1016AA510, &unk_101393150);
  (*(v0 + 240))(*(v0 + 192), *(v0 + 24), *(v0 + 176));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 256);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  if (v6)
  {
    v18 = *(v0 + 256);
    v10 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v10 = 138543875;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v11;
    *v19 = v11;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v18(v8, v9);
    v15 = sub_1000136BC(v12, v14, &v21);

    *(v10 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error while saving peripheral event: %{public}@, beacon: %{private,mask.hash}s.", v10, 0x20u);
    sub_10000B3A8(v19, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v20);
  }

  else
  {

    v7(v8, v9);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100DAD168()
{
  v29 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  static Date.trustedNow.getter(v1);
  Date.timeIntervalSince(_:)();
  v5 = v4;
  (*(v2 + 8))(v1, v3);
  if (v5 <= 1.0)
  {
    v21 = *(v0 + 160);
    sub_100DD92EC(*(v0 + 112), type metadata accessor for BeaconIdentifier);
    v20 = v21;
  }

  else
  {
    (*(v0 + 240))(*(v0 + 200), *(v0 + 24), *(v0 + 176));
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 256);
    v10 = *(v0 + 200);
    v11 = *(v0 + 176);
    v12 = *(v0 + 160);
    v13 = *(v0 + 112);
    if (v8)
    {
      v26 = *(v0 + 360);
      v27 = *(v0 + 112);
      v14 = swift_slowAlloc();
      v24 = v9;
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 141558787;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v12;
      v18 = v17;
      v24(v10, v11);
      v19 = sub_1000136BC(v16, v18, &v28);

      *(v14 + 14) = v19;
      *(v14 + 22) = 2048;
      *(v14 + 24) = v5;
      *(v14 + 32) = 1026;
      *(v14 + 34) = v26;
      _os_log_impl(&_mh_execute_header, v6, v7, "Device event for beacon: %{private,mask.hash}s stored in %fs, source: %{public}u.", v14, 0x26u);
      sub_100007BAC(v15);

      sub_100DD92EC(v27, type metadata accessor for BeaconIdentifier);
      v20 = v25;
    }

    else
    {

      v9(v10, v11);
      sub_100DD92EC(v13, type metadata accessor for BeaconIdentifier);
      v20 = v12;
    }
  }

  sub_10000B3A8(v20, &unk_1016AA510, &unk_101393150);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100DAD50C()
{
  v20 = v0;
  v1 = *(v0 + 160);
  sub_100DD92EC(*(v0 + 112), type metadata accessor for BeaconIdentifier);
  sub_10000B3A8(v1, &unk_1016AA510, &unk_101393150);
  (*(v0 + 240))(*(v0 + 192), *(v0 + 24), *(v0 + 176));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 256);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  if (v4)
  {
    v16 = *(v0 + 256);
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v8 = 138543875;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v9;
    *v17 = v9;
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v16(v6, v7);
    v13 = sub_1000136BC(v10, v12, &v19);

    *(v8 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error while saving peripheral event: %{public}@, beacon: %{private,mask.hash}s.", v8, 0x20u);
    sub_10000B3A8(v17, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v18);
  }

  else
  {

    v5(v6, v7);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100DAD850(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 80) = a2;
  *(v4 + 24) = a1;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100DAD930, 0, 0);
}

uint64_t sub_100DAD930()
{
  v45 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 24);
    v2 = v1;
    if (qword_101694EA0 != -1)
    {
      swift_once();
      v2 = *(v0 + 24);
    }

    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016BB490);
    (*(v4 + 16))(v3, v6, v5);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1000BB584(v2, 1);
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v14 = 136446722;
      *(v14 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101371200, &v44);
      *(v14 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v42 = v9;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_1000136BC(v15, v17, &v44);

      *(v14 + 14) = v18;
      *(v14 + 22) = 2114;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v19;
      *v43 = v19;
      _os_log_impl(&_mh_execute_header, v8, v42, "%{public}s failed for %{public}s. Error %{public}@", v14, 0x20u);
      sub_10000B3A8(v43, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
LABEL_6:
        *(v0 + 16) = v1;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
        CheckedContinuation.resume(throwing:)();
        goto LABEL_16;
      }
    }

    else
    {

      (*(v12 + 8))(v11, v13);
      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101371200, &v44);
      _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s Not resuming continuation in cancelled task.", v38, 0xCu);
      sub_100007BAC(v39);
    }
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 72);
    v21 = *(v0 + 48);
    v22 = *(v0 + 56);
    v23 = *(v0 + 32);
    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_1016BB490);
    (*(v22 + 16))(v20, v23, v21);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 72);
    v29 = *(v0 + 48);
    v30 = *(v0 + 56);
    if (v27)
    {
      v31 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v31 = 136446466;
      *(v31 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101371200, &v44);
      *(v31 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v30 + 8))(v28, v29);
      v35 = sub_1000136BC(v32, v34, &v44);

      *(v31 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s succeeded for %{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v30 + 8))(v28, v29);
    }
  }

LABEL_16:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100DADF40(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100DAE034, v1, 0);
}

uint64_t sub_100DAE034()
{
  v27 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136446466;
    v26 = v13;
    *(v12 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, &v26);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_1000136BC(v14, v16, &v26);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s for identifier %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v19 = v0[4];
  v18 = v0[5];
  v20 = v0[3];
  v21 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService, &unk_1013E8768);
  v22 = swift_task_alloc();
  v0[9] = v22;
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v18;
  v23 = swift_task_alloc();
  v0[10] = v23;
  type metadata accessor for SPAccessoryPairingStatus(0);
  *v23 = v0;
  v23[1] = sub_100DAE384;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v19, v21, 0xD00000000000001ELL, 0x80000001013711E0, sub_100DDCE20, v22, v24);
}

uint64_t sub_100DAE384()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_100DDDDBC;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_100DDDDF0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DAE4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v4[12] = *(v8 + 64);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100DAE5F4, 0, 0);
}

uint64_t sub_100DAE5F4()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  v14 = v0[8];
  v15 = v0[12];
  v5 = v0[6];
  v6 = v0[7];
  v16 = v4;
  v7 = v0[4];
  v17 = v0[5];
  v8 = v0[2];
  (*(v3 + 16))(v1, v0[3], v2);
  (*(v6 + 16))(v4, v7, v5);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v15 + *(v6 + 80) + v9) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v0[14] = v11;
  *(v11 + 16) = v8;
  (*(v3 + 32))(v11 + v9, v1, v2);
  (*(v6 + 32))(v11 + v10, v16, v5);
  *(v11 + ((v14 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;

  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_100DAE7D4;

  return withTimeout<A>(_:block:)(v12, 0x40AAD21B3B700000, 3, &unk_1013E8C50, v11, &type metadata for () + 1);
}

uint64_t sub_100DAE7D4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100DDDDB4;
  }

  else
  {

    v2 = sub_100DDDDC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100DAE8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[15] = a2;
  type metadata accessor for String.Encoding();
  v4[18] = swift_task_alloc();
  v4[19] = *(type metadata accessor for LocalFindableAccessoryRecord(0) - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v7 = type metadata accessor for CentralManager.State();
  v4[29] = v7;
  v4[30] = *(v7 - 8);
  v4[31] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_100DAEB4C, 0, 0);
}

uint64_t sub_100DAEB4C()
{
  v17 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100D97688(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.lineUp(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    if (sub_1004F21B4())
    {
      v3 = swift_task_alloc();
      v0[33] = v3;
      *v3 = v0;
      v3[1] = sub_100DAEFC8;

      return daemon.getter();
    }

    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_1016BB490);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, &v16);
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s FMIP is disabled!", v13, 0xCu);
      sub_100007BAC(v14);
    }

    v0[9] = 6;
    sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
    CheckedContinuation.resume(returning:)();

    v9 = v0[1];
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016BB490);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Feature.FindMy.lineUp is disabled!", v7, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v8 = xmmword_10139D960;
    *(v8 + 16) = 3;
    swift_willThrow();

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_100DAEFC8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 272) = a1;

  v3 = swift_task_alloc();
  *(v2 + 280) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_100DAF1A4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100DAF1A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100DB11B8, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[38] = v5;
    *v5 = v4;
    v5[1] = sub_100DAF32C;

    return sub_10084B7B8();
  }
}

uint64_t sub_100DAF32C(char a1)
{
  *(*v1 + 504) = a1;

  return _swift_task_switch(sub_100DAF42C, 0, 0);
}

uint64_t sub_100DAF42C()
{
  v13 = v0;
  if (*(v0 + 504) == 1)
  {
    v1 = *(v0 + 256);
    *(v0 + 312) = type metadata accessor for CentralManager();
    v2 = type metadata accessor for CentralManager.Options();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    v3 = swift_task_alloc();
    *(v0 + 320) = v3;
    *v3 = v0;
    v3[1] = sub_100DAF718;
    v4 = *(v0 + 256);

    return CentralManager.__allocating_init(options:)(v4);
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_1016BB490);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, &v12);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s Account is not ready!", v8, 0xCu);
      sub_100007BAC(v9);
    }

    *(v0 + 80) = 5;
    sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
    CheckedContinuation.resume(returning:)();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100DAF718(uint64_t a1)
{
  *(*v1 + 328) = a1;

  return _swift_task_switch(sub_100DAF818, 0, 0);
}

uint64_t sub_100DAF818()
{
  (*(v0[30] + 104))(v0[31], enum case for CentralManager.State.poweredOn(_:), v0[29]);
  v1 = swift_task_alloc();
  v0[42] = v1;
  v2 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_100DAF914;
  v3 = v0[39];
  v4 = v0[31];

  return CentralManagerProtocol.await(state:)(v4, v3, v2);
}

uint64_t sub_100DAF914()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  (*(v2[30] + 8))(v2[31], v2[29]);
  if (v0)
  {
    v3 = sub_100DB1284;
  }

  else
  {
    v3 = sub_100DAFA7C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100DAFA7C()
{
  v27 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[44] = sub_1000076D4(v1, qword_1016BB490);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[41];
    v5 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, &v26);
    *(v5 + 12) = 2080;
    v0[14] = v4;
    sub_100D97688(&qword_1016B8628, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000136BC(v6, v7, &v26);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s %s has powered on!", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[25];
  v10 = v0[22];
  v11 = v0[23];
  v12 = v0[17];
  sub_1000BC4D4(&qword_1016BB870, &unk_1013F6290);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v15 = *(v11 + 16);
  v0[45] = v15;
  v0[46] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v14 + v13, v12, v10);
  v26 = _swiftEmptyArrayStorage;
  sub_101123D4C(0, 1, 0);
  v16 = v26;
  v15(v9, v14 + v13, v10);

  Identifier.id.getter();
  v17 = *(v11 + 8);
  v0[47] = v17;
  v0[48] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v9, v10);
  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    sub_101123D4C((v18 > 1), v19 + 1, 1);
    v16 = v26;
  }

  v0[49] = v16;
  v21 = v0[27];
  v20 = v0[28];
  v22 = v0[26];
  v16[2] = v19 + 1;
  (*(v21 + 32))(v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, v20, v22);
  v25 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v23 = swift_task_alloc();
  v0[50] = v23;
  *v23 = v0;
  v23[1] = sub_100DAFE4C;

  return v25(v16);
}

uint64_t sub_100DAFE4C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v4 = sub_100DB135C;
  }

  else
  {

    v4 = sub_100DAFF68;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100DAFF68()
{
  v30 = v0;
  v1 = v0[51];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v11 = v0[45];
    v12 = v0[24];
    v13 = v0[22];
    v14 = v0[17];

    v11(v12, v14, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[47];
    v19 = v0[24];
    v20 = v0[22];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29[0] = v22;
      *v21 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v18(v19, v20);
      v26 = sub_1000136BC(v23, v25, v29);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Missing peripheral for %{public}s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {

      v18(v19, v20);
    }

    sub_100500BC4();
    swift_allocError();
    *v27 = xmmword_1013E84C0;
    *(v27 + 16) = 3;
    swift_willThrow();

    v28 = v0[1];

    return v28();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
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

    v3 = *(v0[51] + 32);
  }

  v0[53] = v3;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, v29);
    *(v6 + 12) = 2080;
    v0[13] = v3;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_1000136BC(v7, v8, v29);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Retrieved peripheral: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = swift_task_alloc();
  v0[54] = v10;
  *v10 = v0;
  v10[1] = sub_100DB043C;

  return sub_100DB1524(v3);
}

uint64_t sub_100DB043C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[55] = a1;
  v4[56] = a2;
  v4[57] = v2;

  if (v2)
  {
    v5 = sub_100DB1440;
  }

  else
  {
    v5 = sub_100DB0554;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100DB0554()
{
  v22 = v0;
  v1 = v0[55];
  v0[7] = v1;
  v2 = v0[56];
  v0[8] = v2;
  sub_100017D5C(v1, v2);
  sub_1000E0A3C();
  v3 = DataProtocol.isNull.getter();
  v4 = v0[56];
  v5 = v0[55];
  if (v3)
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_100016590(v5, v4);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, v21);
      *(v8 + 12) = 2082;
      v9 = Data.hexString.getter();
      v11 = sub_1000136BC(v9, v10, v21);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s Invalid serial number %{public}s!", v8, 0x16u);
      swift_arrayDestroy();
    }

    v13 = v0[55];
    v12 = v0[56];
    sub_100500BC4();
    swift_allocError();
    *v14 = xmmword_1013E84F0;
    *(v14 + 16) = 3;
    swift_willThrow();
    sub_100016590(v13, v12);

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[36];
    v18 = Data.trimmed.getter();
    v20 = v19;
    v0[58] = v18;
    v0[59] = v19;
    sub_100016590(v5, v4);
    sub_100017D5C(v18, v20);

    return _swift_task_switch(sub_100DB0858, v17, 0);
  }
}

uint64_t sub_100DB0858()
{
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_100DB08F4;
  v3 = v0[58];
  v2 = v0[59];

  return sub_100C580A0(v3, v2);
}

uint64_t sub_100DB08F4(uint64_t a1)
{
  v3 = *v2;
  v3[61] = a1;
  v3[62] = v1;

  if (v1)
  {
    sub_100016590(v3[58], v3[59]);
    v4 = sub_100DB10B4;
  }

  else
  {
    v4 = sub_100DB0A10;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100DB0A10()
{
  v52 = v0;
  v1 = v0[61];
  v3 = v0[58];
  v2 = v0[59];
  if (*(v1 + 16))
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = *(v0[19] + 80);
    sub_100DD9284(v1 + ((v6 + 32) & ~v6), v4, type metadata accessor for LocalFindableAccessoryRecord);

    sub_100DD9284(v4, v5, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100017D5C(v3, v2);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    sub_100016590(v3, v2);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[20];
      v10 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v10 = 141558787;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_100DD92EC(v9, type metadata accessor for LocalFindableAccessoryRecord);
      v14 = sub_1000136BC(v11, v13, v51);

      *(v10 + 14) = v14;
      *(v10 + 22) = 2160;
      *(v10 + 24) = 1752392040;
      *(v10 + 32) = 2081;
      static String.Encoding.utf8.getter();
      v15 = String.init(data:encoding:)();
      v17 = v16;
      v18 = v0[58];
      v19 = v0[59];
      if (!v17)
      {
        v20 = v0[58];
        v21 = v0[59];
        v15 = Data.hexString.getter();
        v17 = v22;
        v18 = v20;
        v19 = v21;
      }

      sub_100016590(v18, v19);
      v23 = sub_1000136BC(v15, v17, v51);

      *(v10 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v7, v8, "Found existing record %{private,mask.hash}s matching\n%{private,mask.hash}s", v10, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v37 = v0[20];
      sub_100016590(v0[58], v0[59]);

      sub_100DD92EC(v37, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v38 = v0[62];
    static Task<>.checkCancellation()();
    v40 = v0[58];
    v39 = v0[59];
    v42 = v0[55];
    v41 = v0[56];
    v43 = v0[21];
    if (v38)
    {
      sub_100DD92EC(v0[21], type metadata accessor for LocalFindableAccessoryRecord);

      sub_100016590(v42, v41);
      sub_100016590(v40, v39);
LABEL_17:

      v49 = v0[1];
      goto LABEL_20;
    }

    v0[11] = 2;
    sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
    CheckedContinuation.resume(returning:)();

    sub_100016590(v40, v39);
    sub_100016590(v42, v41);

    sub_100DD92EC(v43, type metadata accessor for LocalFindableAccessoryRecord);
  }

  else
  {

    sub_100017D5C(v3, v2);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    sub_100016590(v3, v2);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51[0] = v27;
      *v26 = 141558275;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      static String.Encoding.utf8.getter();
      v28 = String.init(data:encoding:)();
      v30 = v29;
      v31 = v0[58];
      v32 = v0[59];
      if (!v30)
      {
        v33 = v0[58];
        v34 = v0[59];
        v28 = Data.hexString.getter();
        v30 = v35;
        v31 = v33;
        v32 = v34;
      }

      sub_100016590(v31, v32);
      v36 = sub_1000136BC(v28, v30, v51);

      *(v26 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v24, v25, "Missing record for %{private,mask.hash}s!", v26, 0x16u);
      sub_100007BAC(v27);
    }

    else
    {
      sub_100016590(v0[58], v0[59]);
    }

    v44 = v0[62];
    static Task<>.checkCancellation()();
    v46 = v0[58];
    v45 = v0[59];
    v48 = v0[55];
    v47 = v0[56];
    if (v44)
    {
      sub_100016590(v0[58], v0[59]);
      sub_100016590(v48, v47);

      goto LABEL_17;
    }

    v0[12] = 0;
    sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
    CheckedContinuation.resume(returning:)();

    sub_100016590(v48, v47);
    sub_100016590(v46, v45);
  }

  v49 = v0[1];
LABEL_20:

  return v49();
}

uint64_t sub_100DB10B4()
{
  v1 = v0[58];
  v2 = v0[59];
  v4 = v0[55];
  v3 = v0[56];

  sub_100016590(v4, v3);
  sub_100016590(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100DB11B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB1284()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB135C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB1440()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DB1524(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  type metadata accessor for String.Encoding();
  v2[8] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100DB1760, v1, 0);
}

uint64_t sub_100DB1760()
{
  v16 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[22] = sub_1000076D4(v1, qword_1016BB490);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, &v15);
    *(v7 + 12) = 2080;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;

    (*(v5 + 8))(v4, v6);
    v11 = sub_1000136BC(v8, v10, &v15);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s for peripheral: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v0[23] = type metadata accessor for Service();
  Identifier.init(stringLiteral:)();

  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_100DB1AB4;
  v13 = v0[6];

  return withTimeout<A>(_:block:)(v12, 0xA055690D9DB80000, 1, &unk_1013E89C8, v13, &type metadata for () + 1);
}

uint64_t sub_100DB1AB4()
{
  v2 = *v1;
  *(v2 + 200) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_100DB1E10;
  }

  else
  {

    v4 = sub_100DB1BEC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DB1BEC()
{
  v1 = type metadata accessor for Peripheral();
  v2 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_100DB1CDC;
  v4 = *(v0 + 144);

  return dispatch thunk of PeripheralProtocol.subscript.getter(v4, v1, v2);
}

uint64_t sub_100DB1CDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v5 = *(v3 + 56);
  if (v1)
  {
    v6 = sub_100DB2354;
  }

  else
  {
    v6 = sub_100DB2034;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DB1E10()
{
  v13 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, &v12);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[16];
  swift_willThrow();
  (*(v7 + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DB2034()
{
  v1 = v0[13];
  sub_101123C58(0, 3, 0);
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v3 = _swiftEmptyArrayStorage[2];
  v2 = _swiftEmptyArrayStorage[3];
  if (v3 >= v2 >> 1)
  {
    sub_101123C58((v2 > 1), v3 + 1, 1);
  }

  v0[29] = _swiftEmptyArrayStorage;
  v4 = v0[15];
  v5 = v0[12];
  _swiftEmptyArrayStorage[2] = v3 + 1;
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = *(v1 + 72);
  v8 = *(v1 + 32);
  v8(_swiftEmptyArrayStorage + v6 + v7 * v3, v4, v5);
  Identifier.init(stringLiteral:)();
  v10 = _swiftEmptyArrayStorage[2];
  v9 = _swiftEmptyArrayStorage[3];
  if (v10 >= v9 >> 1)
  {
    sub_101123C58((v9 > 1), v10 + 1, 1);
  }

  v0[29] = _swiftEmptyArrayStorage;
  v11 = v0[15];
  v12 = v0[12];
  _swiftEmptyArrayStorage[2] = v10 + 1;
  v8(_swiftEmptyArrayStorage + v6 + v7 * v10, v11, v12);
  Identifier.init(stringLiteral:)();
  v14 = _swiftEmptyArrayStorage[2];
  v13 = _swiftEmptyArrayStorage[3];
  if (v14 >= v13 >> 1)
  {
    sub_101123C58((v13 > 1), v14 + 1, 1);
  }

  v0[29] = _swiftEmptyArrayStorage;
  v15 = v0[15];
  v16 = v0[12];
  _swiftEmptyArrayStorage[2] = v14 + 1;
  v8(_swiftEmptyArrayStorage + v6 + v7 * v14, v15, v16);
  v17 = sub_100D97688(&qword_1016972A8, &type metadata accessor for Service, &protocol conformance descriptor for Service);
  v0[30] = v17;
  v18 = swift_task_alloc();
  v0[31] = v18;
  *v18 = v0;
  v18[1] = sub_100DB2570;
  v19 = v0[23];

  return dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(_swiftEmptyArrayStorage, v19, v17);
}

uint64_t sub_100DB2354()
{
  v13 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, &v12);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[16];
  swift_willThrow();
  (*(v7 + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DB2570()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_100DB29B8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_100DB26B8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100DB26B8()
{
  v0[33] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_100DB2788;
  v2 = v0[30];
  v3 = v0[23];
  v4 = v0[14];

  return dispatch thunk of ServiceProtocol.subscript.getter(v4, v3, v2);
}

uint64_t sub_100DB2788(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[35] = a1;
  v3[36] = v1;

  v5 = v3[14];
  v6 = v3[13];
  v7 = v3[12];
  if (v1)
  {
    v8 = v3[7];
    (*(v6 + 8))(v5, v7);

    return _swift_task_switch(sub_100DB2DAC, v8, 0);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v9 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic, &protocol conformance descriptor for Characteristic);
    v10 = swift_task_alloc();
    v3[37] = v10;
    *v10 = v4;
    v10[1] = sub_100DB2BE8;
    v11 = v3[33];
    v12 = v3[11];

    return dispatch thunk of CharacteristicProtocol.read()(v12, v11, v9);
  }
}

uint64_t sub_100DB29B8()
{
  v13 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, &v12);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[16];
  swift_willThrow();
  (*(v7 + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DB2BE8()
{
  v2 = *v1;
  v2[38] = v0;

  if (v0)
  {
    v3 = v2[7];

    return _swift_task_switch(sub_100DB314C, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[39] = v4;
    v5 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v4 = v2;
    v4[1] = sub_100DB2FD0;
    v6 = v2[9];

    return AsyncSequence.first()(v2 + 2, v6, v5);
  }
}

uint64_t sub_100DB2DAC()
{
  v13 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, &v12);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[16];
  swift_willThrow();
  (*(v7 + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DB2FD0()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  v6 = v2[7];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_100DB3B00;
  }

  else
  {
    v7 = sub_100DB337C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100DB314C()
{
  v13 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, &v12);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[16];
  swift_willThrow();
  (*(v7 + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DB337C(uint64_t a1)
{
  v47 = v1;
  v2 = v1[3];
  if (v2 >> 60 == 15)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v46[0] = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, v46);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Failed to read serial number!", v5, 0xCu);
      sub_100007BAC(v6);
    }

    sub_100500BC4();
    swift_allocError();
    *v7 = xmmword_1013E84F0;
    *(v7 + 16) = 3;
    swift_willThrow();
LABEL_9:

    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v46[0] = v20;
      *v18 = 136446466;
      *(v18 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, v46);
      *(v18 + 12) = 2114;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v21;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s error %{public}@", v18, 0x16u);
      sub_10000B3A8(v19, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v20);
    }

    v23 = v1[17];
    v22 = v1[18];
    v24 = v1[16];
    swift_willThrow();
    (*(v23 + 8))(v22, v24);

    v25 = v1[1];

    return v25();
  }

  v8 = v1[2];
  v1[4] = v8;
  v1[5] = v2;
  sub_100017D5C(v8, v2);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    sub_100006654(v8, v2);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v46[0] = swift_slowAlloc();
      *v11 = 136446466;
      *(v11 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, v46);
      *(v11 + 12) = 2080;
      v12 = Data.hexString.getter();
      v14 = sub_1000136BC(v12, v13, v46);

      *(v11 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Invalid serial number %s!", v11, 0x16u);
      swift_arrayDestroy();
    }

    sub_100500BC4();
    swift_allocError();
    *v15 = xmmword_1013E84F0;
    *(v15 + 16) = 3;
    swift_willThrow();
    sub_100006654(v8, v2);
    goto LABEL_9;
  }

  v27 = Data.trimmed.getter();
  v29 = v28;
  sub_100006654(v8, v2);
  sub_100017D5C(v27, v29);
  sub_100017D5C(v27, v29);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  sub_100016590(v27, v29);
  if (os_log_type_enabled(v30, v31))
  {
    v45 = v31;
    v32 = swift_slowAlloc();
    v46[0] = swift_slowAlloc();
    *v32 = 136446466;
    *(v32 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, v46);
    *(v32 + 12) = 2080;
    sub_100017D5C(v27, v29);
    static String.Encoding.utf8.getter();
    v33 = String.init(data:encoding:)();
    if (!v34)
    {
      v33 = Data.hexString.getter();
    }

    v35 = v33;
    v36 = v34;
    sub_100016590(v27, v29);
    sub_100016590(v27, v29);
    v37 = v1[17];
    v44 = v1[18];
    v43 = v1[16];
    v38 = sub_1000136BC(v35, v36, v46);

    *(v32 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v30, v45, "%{public}s %s", v32, 0x16u);
    swift_arrayDestroy();

    sub_100016590(v27, v29);
    (*(v37 + 8))(v44, v43);
  }

  else
  {
    v40 = v1[17];
    v39 = v1[18];
    v41 = v1[16];
    sub_100016590(v27, v29);

    sub_100016590(v27, v29);

    (*(v40 + 8))(v39, v41);
  }

  v42 = v1[1];

  return v42(v8, v2);
}

uint64_t sub_100DB3B00()
{
  v13 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 136446466;
    *(v3 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101370EE0, &v12);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s error %{public}@", v3, 0x16u);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v5);
  }

  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[16];
  swift_willThrow();
  (*(v7 + 8))(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DB3D24(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 80) = a2;
  *(v4 + 24) = a1;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100DB3E04, 0, 0);
}

uint64_t sub_100DB3E04()
{
  v45 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 24);
    v2 = v1;
    if (qword_101694EA0 != -1)
    {
      swift_once();
      v2 = *(v0 + 24);
    }

    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016BB490);
    (*(v4 + 16))(v3, v6, v5);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1000BB584(v2, 1);
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v14 = 136446722;
      *(v14 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, &v44);
      *(v14 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v42 = v9;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_1000136BC(v15, v17, &v44);

      *(v14 + 14) = v18;
      *(v14 + 22) = 2114;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v19;
      *v43 = v19;
      _os_log_impl(&_mh_execute_header, v8, v42, "%{public}s failed for %{public}s. Error %{public}@", v14, 0x20u);
      sub_10000B3A8(v43, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
LABEL_6:
        *(v0 + 16) = v1;
        swift_errorRetain();
        sub_1000BC4D4(&qword_1016BB920, &qword_1013E8BE8);
        CheckedContinuation.resume(throwing:)();
        goto LABEL_16;
      }
    }

    else
    {

      (*(v12 + 8))(v11, v13);
      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, &v44);
      _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s Not resuming continuation in cancelled task.", v38, 0xCu);
      sub_100007BAC(v39);
    }
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 72);
    v21 = *(v0 + 48);
    v22 = *(v0 + 56);
    v23 = *(v0 + 32);
    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_1016BB490);
    (*(v22 + 16))(v20, v23, v21);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 72);
    v29 = *(v0 + 48);
    v30 = *(v0 + 56);
    if (v27)
    {
      v31 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v31 = 136446466;
      *(v31 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x80000001013711E0, &v44);
      *(v31 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v30 + 8))(v28, v29);
      v35 = sub_1000136BC(v32, v34, &v44);

      *(v31 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s succeeded for %{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v30 + 8))(v28, v29);
    }
  }

LABEL_16:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_100DB4414(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100DB4508, v1, 0);
}

uint64_t sub_100DB4508()
{
  v27 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136446466;
    v26 = v13;
    *(v12 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x80000001013711C0, &v26);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_1000136BC(v14, v16, &v26);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s for identifier %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v19 = v0[4];
  v18 = v0[5];
  v20 = v0[3];
  v21 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService, &unk_1013E8768);
  v22 = swift_task_alloc();
  v0[9] = v22;
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v18;
  v23 = swift_task_alloc();
  v0[10] = v23;
  type metadata accessor for SPAccessoryPairingStatus(0);
  *v23 = v0;
  v23[1] = sub_100DB4858;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v19, v21, 0xD00000000000001ALL, 0x80000001013711C0, sub_100DDC924, v22, v24);
}

uint64_t sub_100DB4858()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_100DB49EC;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_100DB4980;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}
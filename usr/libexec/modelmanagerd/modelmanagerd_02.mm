uint64_t sub_100031BE0(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10006FA64;

  return sub_100031C88();
}

uint64_t sub_100031C88()
{
  sub_100002BAC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[5] = v4;
  sub_100002F44(v4);
  v1[6] = v5;
  v1[7] = sub_10000BF98();
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for ModelXPCRequest.CancelSessionRequest();
  v1[9] = v6;
  sub_100002F44(v6);
  v1[10] = v7;
  v1[11] = sub_100002C58();
  v8 = sub_100003000();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100031D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v18 = sub_100011210();
  sub_10000641C(v18, qword_1001BE400);
  v19 = sub_100008440();
  v20(v19);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = sub_10000320C(v22);
  v24 = v16[9];
  if (v23)
  {
    v45 = v16[9];
    sub_100007698();
    sub_100003890();
    sub_100003658(4.8149e-34);
    ModelXPCRequest.CancelSessionRequest.sessionID.getter();
    sub_100005070();
    sub_1000082D4(v25, v26, v27, v28);
    sub_100003E14();
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = sub_100036E74();
    v31(v30);
    v32 = sub_100003318();
    v33(v32, v45);
    v34 = sub_100036724();
    sub_100004A3C(v34, v35, v36);
    sub_100012FD0();
    *(v17 + 4) = v29;
    sub_10000EEC0(&_mh_execute_header, "XPC Handling Cancellation of session %s", BYTE4(a11));
    sub_100003A7C();
    sub_10000706C();
  }

  else
  {

    v37 = sub_100003318();
    v38(v37, v24);
  }

  sub_100002EC0(v16[3]);
  v16[12] = *(v39 + 128);

  ModelXPCRequest.CancelSessionRequest.sessionID.getter();
  v40 = swift_task_alloc();
  v41 = sub_1000457C0(v40);
  *v41 = v42;
  v41[1] = sub_100044DA0;
  sub_1000031B8(v16[7]);
  sub_100003D04();

  return sub_10003240C();
}

uint64_t sub_100031F88(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10006FA64;

  return sub_100032030();
}

uint64_t sub_100032030()
{
  sub_100002BAC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[5] = v4;
  sub_100002F44(v4);
  v1[6] = v5;
  v1[7] = sub_100002C58();
  v6 = type metadata accessor for ModelXPCRequest.DeleteSessionRequest();
  v1[8] = v6;
  sub_100002F44(v6);
  v1[9] = v7;
  v1[10] = sub_100002C58();
  v8 = sub_100003000();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100032130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v18 = type metadata accessor for Logger();
  sub_10000641C(v18, qword_1001BE400);
  v19 = sub_100008440();
  v20(v19);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = sub_10000320C(v22);
  v24 = v16[8];
  if (v23)
  {
    v43 = v16[8];
    sub_100007698();
    sub_100003890();
    sub_100003658(4.8149e-34);
    ModelXPCRequest.DeleteSessionRequest.sessionID.getter();
    sub_100005070();
    sub_1000082D4(v25, v26, v27, v28);
    sub_100003E14();
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = sub_100036E74();
    v31(v30);
    v32 = sub_100003318();
    v33(v32, v43);
    v34 = sub_100036724();
    sub_100004A3C(v34, v35, v36);
    sub_100012FD0();
    *(v17 + 4) = v29;
    sub_10000EEC0(&_mh_execute_header, "XPC Handling deleteSessionRequest for client session %s", BYTE4(a11));
    sub_100003A7C();
    sub_10000706C();
  }

  else
  {

    v37 = sub_100003318();
    v38(v37, v24);
  }

  sub_100002EC0(v16[3]);
  v16[11] = *(v39 + 128);

  ModelXPCRequest.DeleteSessionRequest.sessionID.getter();
  v40 = swift_task_alloc();
  v16[12] = v40;
  *v40 = v16;
  v40[1] = sub_100045C30;
  sub_1000031B8(v16[7]);
  sub_100003D04();

  return sub_100032368();
}

__n128 sub_100032354(unint64_t a1)
{
  v2[10].n128_u64[0] = a1;
  result = v2[2];
  *(a1 + 16) = v3;
  *(a1 + 24) = v1;
  return result;
}

uint64_t sub_100032368()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = type metadata accessor for RequestCancellationReason();
  v1[7] = v3;
  sub_100002F44(v3);
  v1[8] = v4;
  v1[9] = sub_100002C58();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10003240C()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[7] = v3;
  sub_100002F44(v3);
  v1[8] = v4;
  v1[9] = sub_10000F0C0();
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for RequestCancellationReason();
  v1[11] = v5;
  sub_100002F44(v5);
  v1[12] = v6;
  v1[13] = sub_100002C58();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100032514()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[5];
  v2 = v0[6];
  sub_100003370(v2 + 38, v2[41]);
  sub_1000135D0();
  v0[10] = v3();
  sub_100004CBC();
  swift_beginAccess();
  v4 = v2[14];
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;

  v6 = sub_100018BC4(sub_1000352A4, v5, v4);
  v0[11] = v6;

  if (v6)
  {
    (*(v0[8] + 104))(v0[9], enum case for RequestCancellationReason.clientDisavowal(_:), v0[7]);
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_1000450F8;
    sub_100003D20();

    return sub_100036A94();
  }

  else
  {
    sub_100003370((v0[6] + 304), *(v0[6] + 328));
    v10 = sub_100005E60();
    v11(v10);

    sub_100001F00();
    sub_100003D20();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

void sub_1000326E0(uint64_t a1)
{
  if (sub_1000136A8())
  {
    v3 = sub_100065020(&qword_1001BD070, &qword_100173948);
    sub_100002F04(v3);
    sub_100004B1C();
    __chkstk_darwin(v4);
    v6 = &v11[-v5];
    v7 = sub_100003370((v1 + 40), *(v1 + 64));
    __chkstk_darwin(v7);
    *&v11[-16] = a1;
    sub_1000084CC();
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    v8 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    sub_100005914(v6, v9, v10, v8);
    sub_10000ECD8(v6, &qword_1001BD070, &qword_100173948);
  }

  sub_100036794();
}

void sub_100032848()
{
  sub_10000A274();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v56 = *v3;
  State = type metadata accessor for LoadState();
  sub_100002BDC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100002B8C();
  v59 = v14 - v13;
  v48 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  sub_100002C00();
  __chkstk_darwin(v15);
  sub_100002B8C();
  v18 = v17 - v16;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v47 = v0;

    v58 = __CocoaSet.makeIterator()();
    HIDWORD(v53) = *v2;
    v52 = (v11 + 104);
    v50 = (v11 + 8);
    v55 = v6;
    while (1)
    {
      v19 = __CocoaSet.Iterator.next()();
      if (!v19)
      {

        goto LABEL_24;
      }

      v20 = v4;
      v60 = v19;
      swift_dynamicCast();
      v21 = v74;
      v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100004CBC();
      swift_beginAccess();
      sub_100005C78();
      sub_1000192DC(v22 + v21, v18);
      (*v52)(v59, HIDWORD(v53), State);
      sub_100002D0C();
      sub_100011B14(&dword_1001BA628, v23, &protocol conformance descriptor for LoadState);
      sub_1000DAE34();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_1000DAE34();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v60 == v69 && v61 == v70)
      {
        break;
      }

      sub_100012D24();
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
LABEL_16:
        (*v50)(v59, State);
        sub_100008654();
        sub_100019338(v18);
        v4 = v20;
LABEL_17:
        v28 = sub_100005980();
        if (!sub_10002D88C(v28))
        {
          goto LABEL_21;
        }

        v36 = v74;
        v37 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v37)
        {
          sub_100080444(v37 + 1, v29, v30, v31, v32, v33, v34, v35, v45, v47, v48, v50, v52, v53, v55, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
        }

        Hasher.init(_seed:)();
        sub_10001214C(&v60);
        v38 = Hasher._finalize()();
        sub_100012B94(v38, *(&_swiftEmptySetSingleton + 32));
        _HashTable.nextHole(atOrAfter:)();
        sub_1000119F0();
        sub_1000DAD98(v39);
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v40) = v36;
        ++*(&_swiftEmptySetSingleton + 2);
      }

      else
      {
        sub_1000DAE34();
        dispatch thunk of RawRepresentable.rawValue.getter();
        sub_1000DAE34();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v60 == v69 && v61 == v70)
        {
          break;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v50)(v59, State);
        sub_100008654();
        sub_100019338(v18);
        v4 = v20;
        if (v27)
        {
          goto LABEL_17;
        }

LABEL_21:
      }
    }

    goto LABEL_16;
  }

  sub_100032D10(v8, v6, v4, v2, v41, v42, v43, v44, v45, v46, v48, v49, v51, v53, v54, v56, v57, v59, v60, v61);
  if (v0)
  {
  }

  else
  {

LABEL_24:
  }

  sub_100005874();
}

uint64_t sub_100032CD8()
{
}

__n128 sub_100032CF8(uint64_t a1)
{
  *(v2 + 40) = a1;
  result = *(v2 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

void sub_100032D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000A274();
  v22 = v21;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  State = type metadata accessor for LoadState();
  sub_100002BDC();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_100002B8C();
  v35 = v34 - v33;
  v71 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  sub_100002C00();
  __chkstk_darwin(v36);
  sub_100002B8C();
  v83 = v38 - v37;
  LOBYTE(v37) = *(v29 + 32);
  v39 = v37 & 0x3F;
  v40 = ((1 << v37) + 63) >> 6;
  v41 = 8 * v40;

  if (v39 > 0xD)
  {
    goto LABEL_32;
  }

  while (2)
  {
    v82 = v35;
    v70 = v23;
    v68 = &v67;
    __chkstk_darwin(v42);
    v69 = v40;
    v72 = &v67 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v40, v72);
    v73 = 0;
    v40 = 0;
    v79 = v27;
    v80 = v29;
    v29 += 56;
    sub_100002F28();
    v35 = v48 & v47;
    v23 = (v49 + 63) >> 6;
    HIDWORD(v77) = *v22;
    v75 = (v31 + 8);
    v76 = (v31 + 104);
    v41 = State;
    v78 = v25;
    while (v35)
    {
      sub_1000DB34C();
LABEL_10:
      v54 = v50 | (v40 << 6);
      v55 = *(v80 + 48);
      v74 = v54;
      v31 = *(v55 + 8 * v54);
      v56 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100004CBC();
      swift_beginAccess();
      sub_100005C78();
      sub_1000192DC(v56 + v31, v83);
      (*v76)(v82, HIDWORD(v77), v41);
      sub_100002D0C();
      sub_100011B14(&dword_1001BA628, v57, &protocol conformance descriptor for LoadState);

      sub_10004EF18();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_10004EF18();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v86 == v84 && v87 == v85)
      {
        goto LABEL_21;
      }

      sub_100012D24();
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v59)
      {
        goto LABEL_22;
      }

      v60 = State;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v61 = v82;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v22 = v85;
      if (v86 == v84 && v87 == v85)
      {
LABEL_21:

LABEL_22:
        v41 = State;
        (*v75)(v82, State);
        sub_100008654();
        sub_100019338(v83);
        goto LABEL_23;
      }

      sub_100012D24();
      HIDWORD(v67) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v75)(v61, v60);
      sub_100008654();
      sub_100019338(v83);
      v41 = v60;
      if ((v67 & 0x100000000) != 0)
      {
LABEL_23:
        v25 = v78;
        v27 = v79;
        v22 = sub_10002D88C(v78);

        if (v22)
        {
          sub_1000267BC();
          *(v72 + v63) |= v64;
          if (__OFADD__(v73++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {

        v25 = v78;
        v27 = v79;
      }
    }

    v51 = v40;
    while (1)
    {
      v40 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v40 >= v23)
      {
        sub_1000120FC(v72, v69, v73, v80, v43, v44, v45, v46, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, State, v82, v83, v84, v85, v86, v87, v88);
        sub_1000DB020();

        goto LABEL_29;
      }

      ++v51;
      if (*(v29 + 8 * v40))
      {
        sub_1000062A0();
        v35 = v53 & v52;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_32:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v66 = swift_slowAlloc();

  sub_1000D85CC(v66, v40, v29);

  sub_100002BD0();

  if (v23)
  {

    sub_1000DB3C4();
  }

  else
  {

LABEL_29:
  }

  sub_100005874();
}

uint64_t sub_10003328C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return RequestMetadata.id.getter();
}

uint64_t sub_1000332D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, NSObject *a7@<X8>)
{
  v210 = a7;
  v207 = a6;
  v203 = a5;
  v206 = a4;
  v205 = a3;
  v9 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  v204 = *(v9 - 8);
  v10 = *(v204 + 64);
  __chkstk_darwin(v9 - 8);
  v209 = &v190 - v11;
  v12 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v12 - 8);
  v208 = &v190 - v13;
  v14 = type metadata accessor for InferenceProviderDescriptor();
  v213 = *(v14 - 8);
  v214 = v14;
  __chkstk_darwin(v14);
  v212 = &v190 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for LoadState();
  v215 = *(State - 8);
  v16 = *(v215 + 64);
  v17 = __chkstk_darwin(State);
  v18 = &v190 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v190 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v190 - v23;
  v25 = __chkstk_darwin(v22);
  v216 = &v190 - v26;
  __chkstk_darwin(v25);
  v28 = &v190 - v27;
  v29 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  if (*(a1 + *(v29 + 52)))
  {
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000641C(v30, qword_1001BB478);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_12;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v217[0] = v34;
    *v33 = 136315138;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = sub_100004A3C(v35, v36, v217);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Tried to unload invalidated asset: %s", v33, 0xCu);
    sub_100003324(v34);

LABEL_11:

LABEL_12:

    v56 = type metadata accessor for ModelManagerError();
    sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    swift_allocError();
    (*(*(v56 - 8) + 104))(v57, enum case for ModelManagerError.internalError(_:), v56);
    return swift_willThrow();
  }

  v38 = v29;
  v39 = *(v29 + 28);
  if (*(a1 + v39))
  {
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000641C(v40, qword_1001BB478);

    v31 = Logger.logObject.getter();
    v41 = a2;
    v42 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v31, v42))
    {
      goto LABEL_12;
    }

    v43 = swift_slowAlloc();
    v217[0] = swift_slowAlloc();
    *v43 = 136315394;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = sub_100004A3C(v44, v45, v217);

    *(v43 + 4) = v46;
    *(v43 + 12) = 2080;
    v47 = (v41 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
    v48 = *(v41 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v49 = *(v41 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370(v47, v48);
    v50 = v212;
    (*(v49 + 8))(v48, v49);
    sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
    v51 = v214;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    (*(v213 + 8))(v50, v51);
    v55 = sub_100004A3C(v52, v54, v217);

    *(v43 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v31, v42, "unloadIfNecessary called with pending transition task for %s with %s", v43, 0x16u);
    swift_arrayDestroy();

    goto LABEL_11;
  }

  v194 = v10;
  v196 = v24;
  v195 = v39;
  v201 = a2;
  v202 = v28;
  v59 = v215 + 16;
  v60 = *(v215 + 16);
  v61 = v28;
  v62 = State;
  v60(v61, a1, State);
  v63 = *(v38 + 20);
  v199 = v59;
  v200 = v63;
  v64 = v216;
  v65 = v62;
  v66 = v202;
  v198 = v60;
  v60(v216, a1 + v63, v65);
  if (sub_100116D68(v66, v64))
  {
    v67 = *(*(a1 + *(v38 + 48)) + 16);
    v68 = v201;
    if (v67)
    {
      if (qword_1001B8938 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_10000641C(v69, qword_1001BB478);

      v70 = Logger.logObject.getter();
      v71 = v68;
      v72 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v70, v72))
      {
        v73 = swift_slowAlloc();
        v217[0] = swift_slowAlloc();
        *v73 = 136315650;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
        v74 = dispatch thunk of CustomStringConvertible.description.getter();
        v76 = sub_100004A3C(v74, v75, v217);

        *(v73 + 4) = v76;
        *(v73 + 12) = 2080;
        v77 = (v71 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
        v78 = *(v71 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
        v79 = *(v71 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
        sub_100003370(v77, v78);
        v80 = v212;
        (*(v79 + 8))(v78, v79);
        sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
        v81 = v214;
        v82 = dispatch thunk of CustomStringConvertible.description.getter();
        v84 = v83;
        (*(v213 + 8))(v80, v81);
        v85 = sub_100004A3C(v82, v84, v217);

        *(v73 + 14) = v85;
        *(v73 + 22) = 2048;
        *(v73 + 24) = v67;
        _os_log_impl(&_mh_execute_header, v70, v72, "Not unloading asset %s from %s: in use by %ld execution groups", v73, 0x20u);
        swift_arrayDestroy();

        v66 = v202;
      }

      sub_1000DA26C();
      swift_allocError();
      *v86 = 0;
      v86[1] = 0;
      swift_willThrow();
      v87 = *(v215 + 8);
      v88 = State;
      v87(v216, State);
      return (v87)(v66, v88);
    }

    else
    {
      v197 = a1;
      if (qword_1001B8938 != -1)
      {
        swift_once();
      }

      v125 = type metadata accessor for Logger();
      v126 = sub_10000641C(v125, qword_1001BB478);

      v192 = v126;
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.default.getter();

      v129 = os_log_type_enabled(v127, v128);
      v130 = v196;
      if (v129)
      {
        v131 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        v217[0] = v193;
        *v131 = 136315394;
        LODWORD(v191) = v128;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
        v132 = dispatch thunk of CustomStringConvertible.description.getter();
        v134 = sub_100004A3C(v132, v133, v217);

        *(v131 + 4) = v134;
        *(v131 + 12) = 2080;
        v135 = *(v68 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
        v136 = *(v68 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
        sub_100003370((v68 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v135);
        v137 = v212;
        (*(v136 + 8))(v135, v136);
        sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
        v138 = v214;
        v139 = dispatch thunk of CustomStringConvertible.description.getter();
        v141 = v140;
        (*(v213 + 8))(v137, v138);
        v142 = sub_100004A3C(v139, v141, v217);

        *(v131 + 14) = v142;
        _os_log_impl(&_mh_execute_header, v127, v191, "unloadIfNecessary entering for asset %s with %s", v131, 0x16u);
        swift_arrayDestroy();
      }

      v143 = enum case for LoadState.unloaded(_:);
      v144 = v215;
      v145 = State;
      v191 = *(v215 + 104);
      v191(v130, enum case for LoadState.unloaded(_:), State);
      sub_100011B5C(&qword_1001BA468, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
      v146 = dispatch thunk of static Equatable.== infix(_:_:)();
      v148 = *(v144 + 8);
      v147 = (v144 + 8);
      v149 = v130;
      v150 = v145;
      v151 = v148;
      v148(v149, v145);
      v193 = v148;
      if (v146)
      {
        v152 = v201;

        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          v217[0] = swift_slowAlloc();
          *v155 = 136315394;
          type metadata accessor for InferenceProviderAssetDescriptor();
          sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
          v156 = dispatch thunk of CustomStringConvertible.description.getter();
          v158 = sub_100004A3C(v156, v157, v217);

          *(v155 + 4) = v158;
          *(v155 + 12) = 2080;
          v159 = (v152 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
          v160 = *(v152 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
          v161 = *(v152 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
          sub_100003370(v159, v160);
          v162 = v212;
          (*(v161 + 8))(v160, v161);
          sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
          v163 = v214;
          v164 = dispatch thunk of CustomStringConvertible.description.getter();
          v166 = v165;
          (*(v213 + 8))(v162, v163);
          v167 = sub_100004A3C(v164, v166, v217);

          *(v155 + 14) = v167;
          _os_log_impl(&_mh_execute_header, v153, v154, "Not unloading asset %s from %s: already unloaded", v155, 0x16u);
          swift_arrayDestroy();

          v168 = State;
          v169 = v193;
          v193(v216, State);
          v170 = v202;
        }

        else
        {

          v168 = State;
          v169 = v193;
          v193(v216, State);
          v170 = v66;
        }

        result = v169(v170, v168);
        v210->isa = 0;
      }

      else
      {
        v171 = v197;
        v172 = v200;
        v151(v197 + v200, v150);
        v191((v171 + v172), v143, v150);
        strcpy(v217, "Unload asset ");
        HIWORD(v217[1]) = -4864;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
        v173 = v201;
        v174._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v174);

        v213 = v217[1];
        v214 = v217[0];
        v175 = type metadata accessor for TaskPriority();
        sub_100009BFC(v208, 1, 1, v175);
        v198(v196, v66, v150);
        sub_10001E72C(v203, v209, &qword_1001BB3F8, &qword_100171D50);
        v203 = sub_100011B5C(&qword_1001B8BB8, type metadata accessor for InferenceProviderAssetManager, &unk_100171CF0);
        v176 = v215;
        v177 = (*(v215 + 80) + 40) & ~*(v215 + 80);
        v178 = (v16 + v177 + 7) & 0xFFFFFFFFFFFFFFF8;
        v179 = (*(v204 + 80) + v178 + 9) & ~*(v204 + 80);
        v180 = (v194 + v179 + 7) & 0xFFFFFFFFFFFFFFF8;
        v181 = swift_allocObject();
        v212 = v147;
        v182 = v207;
        v183 = v203;
        v181[2] = v207;
        v181[3] = v183;
        v181[4] = v173;
        v184 = v181 + v177;
        v185 = State;
        (*(v176 + 32))(v184, v196, State);
        v186 = v181 + v178;
        *v186 = v205;
        v186[8] = v206 & 1;
        sub_10002F6B4(v209, v181 + v179, &qword_1001BB3F8, &qword_100171D50);
        *(v181 + v180) = v182;
        swift_retain_n();

        sub_100128ED0();
        v188 = v187;
        v189 = v193;
        v193(v216, v185);
        v189(v66, v185);
        *(v197 + v195) = v188;
        v210->isa = v188;
      }
    }
  }

  else
  {
    v197 = a1;
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_10000641C(v89, qword_1001BB478);
    v90 = State;
    v91 = v198;
    v198(v21, v66, State);
    v91(v18, v216, v90);
    v92 = v201;

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v217[0] = v211;
      *v95 = 136315906;
      sub_100011B5C(&qword_1001BA478, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
      v210 = v93;
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;
      v99 = *(v215 + 8);
      LODWORD(v209) = v94;
      v100 = v21;
      v101 = v99;
      v99(v100, State);
      v102 = sub_100004A3C(v96, v98, v217);

      *(v95 + 4) = v102;
      *(v95 + 12) = 2080;
      v103 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = v104;
      v101(v18, State);
      v90 = State;
      v106 = sub_100004A3C(v103, v105, v217);

      *(v95 + 14) = v106;
      *(v95 + 22) = 2080;
      type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
      v107 = dispatch thunk of CustomStringConvertible.description.getter();
      v109 = sub_100004A3C(v107, v108, v217);

      *(v95 + 24) = v109;
      *(v95 + 32) = 2080;
      v110 = *(v92 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      v111 = *(v92 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      sub_100003370((v92 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v110);
      v112 = *(v111 + 8);
      v113 = v212;
      v114 = v111;
      v115 = v215;
      v112(v110, v114);
      sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
      v116 = v214;
      v117 = dispatch thunk of CustomStringConvertible.description.getter();
      v119 = v118;
      (*(v213 + 8))(v113, v116);
      v120 = sub_100004A3C(v117, v119, v217);

      *(v95 + 34) = v120;
      v121 = v101;
      v122 = v210;
      _os_log_impl(&_mh_execute_header, v210, v209, "unloadIfNecessary called with unmatching states (%s != %s) for %s with %s", v95, 0x2Au);
      swift_arrayDestroy();

      v66 = v202;
    }

    else
    {

      v115 = v215;
      v121 = *(v215 + 8);
      v121(v18, v90);
      v121(v21, v90);
    }

    (*(v115 + 24))(v197 + v200, v66, v90);
    v123 = type metadata accessor for ModelManagerError();
    sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    swift_allocError();
    (*(*(v123 - 8) + 104))(v124, enum case for ModelManagerError.internalError(_:), v123);
    swift_willThrow();
    v121(v216, v90);
    return (v121)(v66, v90);
  }

  return result;
}

uint64_t sub_100034A9C()
{
  State = type metadata accessor for LoadState();
  sub_100002BDC();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = (v4 + 40) & ~v4;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F44(v8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 9) & ~v10;
  v13 = *(v12 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v6, State);
  v14 = type metadata accessor for AuditToken();
  if (!sub_10000C1F0(v0 + v11))
  {
    sub_100006098();
    (*(v15 + 8))(v0 + v11, v14);
  }

  return _swift_deallocObject(v0, ((v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v10 | 7);
}

uint64_t sub_100034C28()
{
  State = type metadata accessor for LoadState();
  sub_100002F44(State);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F44(v6);
  sub_100018CEC();
  v7 = v0 + v5;
  v8 = *(v0 + v5);
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10006FA64;
  sub_1000038D8();

  return sub_10002ED98(v11, v12, v13, v14, v15, v8, v9, v16);
}

uint64_t sub_100034DC8()
{
  sub_100003884();

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  sub_100065020(&qword_1001BA490, &qword_100171000);
  v2 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  *v1 = v0;
  v1[1] = sub_10003FC5C;

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v2, 0xD00000000000001CLL, 0x8000000100176500);
}

uint64_t sub_100034F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RequestPriority();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v19 = a2;
    v11 = *(v5 + 16);
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11(&v19 - v9, v12, v4);
    v13 = (v5 + 32);
    for (i = 1; v20 != i; ++i)
    {
      v11(v8, v12 + *(v5 + 72) * i, v4);
      sub_10002EA7C(&qword_1001B9428, &type metadata accessor for RequestPriority, &protocol conformance descriptor for RequestPriority);
      v15 = dispatch thunk of static Comparable.< infix(_:_:)();
      v16 = *(v5 + 8);
      if (v15)
      {
        v16(v10, v4);
        (*v13)(v10, v8, v4);
      }

      else
      {
        v16(v8, v4);
      }
    }

    v17 = v19;
    (*v13)(v19, v10, v4);
    return sub_100009BFC(v17, 0, 1, v4);
  }

  else
  {

    return sub_100009BFC(a2, 1, 1, v4);
  }
}

uint64_t sub_10003517C(uint64_t a1, uint64_t a2)
{
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  sub_100004B1C();
  __chkstk_darwin(v2);
  Session.Metadata.id.getter();
  type metadata accessor for Session();
  v3 = static UUIDIdentifier.== infix(_:_:)();
  v4 = sub_100004CA4();
  v5(v4);
  return v3 & 1;
}

uint64_t sub_1000352C0()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1000352E0()
{

  return sub_1000B9C64(v2, v1, v5, v0, v3, v4);
}

void sub_100035348(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100035368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1000353A0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return InferenceProviderRequestConfiguration.requestUUID.getter();
}

uint64_t sub_1000353C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  sub_10005D918();
  sub_1000033DC();
  if (qword_1001B88F0 != -1)
  {
    sub_10000505C();
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v12[11] = sub_10000641C(v14, qword_1001B9A18);
  swift_retain_n();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v12[5];
  if (v17)
  {
    v13 = swift_slowAlloc();
    sub_1000033D0();
    a10 = swift_slowAlloc();
    *v13 = 136315394;
    v19 = sub_10001AFF8();
    v23 = sub_10000CB58(v19, v20, v21, v22);

    *(v13 + 4) = v23;
    *(v13 + 12) = 1024;
    v24 = AuditToken.processIdentifier.getter();

    *(v13 + 14) = v24;

    _os_log_impl(&_mh_execute_header, v15, v16, "Removing session %s for pid %d", v13, 0x12u);
    sub_100003324(a10);
    sub_100002BD0();

    sub_1000039CC();
  }

  else
  {
  }

  v25 = v12[5];
  sub_100004B50(v12[7] + 112, (v12 + 2));
  v26 = sub_100036B48(v25);
  swift_endAccess();
  if (v26)
  {

    v27 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100019920();

    if (sub_10000A384())
    {
      sub_10000A05C();
      v28 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_1000265BC();
      *v28 = 136315138;
      v29 = sub_10001AFF8();
      sub_10000CB58(v29, v30, v31, v32);
      sub_100007BA0();
      *(v28 + 4) = v18;
      sub_1000033FC();
      _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      sub_100003324(v13);
      sub_1000039CC();

      sub_100002BD0();
    }

    v38 = *(v12[7] + 456);
    v12[12] = v38;
    if (v38)
    {

      v39 = swift_task_alloc();
      v12[13] = v39;
      *v39 = v12;
      v39[1] = sub_1000929C8;
      sub_100016688();

      return Task<>.value.getter(v40);
    }

    else
    {
      sub_10004575C();
      v60 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_100019920();

      if (sub_10000A384())
      {
        sub_10000A05C();
        v61 = swift_slowAlloc();
        sub_1000033D0();
        swift_slowAlloc();
        sub_1000265BC();
        *v61 = 136315138;
        v62 = sub_10001AFF8();
        sub_10000CB58(v62, v63, v64, v65);
        sub_100007BA0();
        *(v61 + 4) = v18;
        sub_1000033FC();
        _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
        sub_100003324(v13);
        sub_1000039CC();

        sub_100002BD0();
      }

      sub_10000D070(v12[7]);
      v12[14] = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
      Session.Metadata.onBehalfOfPID.getter();
      v71 = swift_task_alloc();
      v72 = sub_10000D03C(v71);
      *v72 = v73;
      sub_1000094C8(v72);
      sub_100016688();

      return sub_100037440();
    }
  }

  else
  {

    v41 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_100019920();

    if (sub_10000A384())
    {
      sub_10000A05C();
      v42 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_1000265BC();
      *v42 = 136315138;
      v43 = sub_10001AFF8();
      sub_10000CB58(v43, v44, v45, v46);
      sub_100007BA0();
      *(v42 + 4) = v18;
      sub_1000033FC();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      sub_100003324(v13);
      sub_1000039CC();

      sub_100002BD0();
    }

    sub_100001F00();
    sub_100016688();

    return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
  }
}

uint64_t sub_1000358B0()
{
}

uint64_t sub_1000358E4()
{
  v0 = sub_100065020(&qword_1001BD098, &qword_100173978);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = enum case for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType.remove(_:);
  v4 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  sub_100009BFC(v2, 0, 1, v4);
  return GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.sessionEventType.setter();
}

unint64_t sub_1000359D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_100004A3C(a1, a2, va);
}

uint64_t sub_1000359EC(uint64_t a1)
{

  return dispatch thunk of InstantProtocol.advanced(by:)();
}

uint64_t sub_100035A10()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100035B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  sub_10004575C();
  v13 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    sub_10000A05C();
    v14 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_1000265BC();
    *v14 = 136315138;
    v15 = sub_10001AFF8();
    sub_10000CB58(v15, v16, v17, v18);
    sub_100007BA0();
    *(v14 + 4) = v12;
    sub_1000033FC();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    sub_100003324(v11);
    sub_1000039CC();

    sub_100002BD0();
  }

  v24 = swift_task_alloc();
  *(v10 + 128) = v24;
  *v24 = v10;
  v24[1] = sub_10003617C;
  sub_1000031B8(*(v10 + 56));
  sub_100003770();

  return sub_100036E84();
}

uint64_t sub_100035C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_100004B70(sub_100035C54, 0);
}

uint64_t sub_100035C54()
{
  sub_100002BAC();
  v0 = swift_task_alloc();
  sub_100032CF8(v0);
  v1 = swift_task_alloc();
  v2 = sub_10000AC24(v1);
  *v2 = v3;
  v2[1] = sub_100035D70;
  sub_1000194B4();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100035D3C()
{
}

uint64_t sub_100035D70()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100003000();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100035E70()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100001F70();
  v4(v3);
  v5 = sub_100003DE0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100035FC0()
{
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_100036100()
{
  sub_100002BAC();
  v1[24] = v0;
  v2 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v1[25] = v2;
  sub_100002F04(v2);
  v1[26] = sub_100002C58();
  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10003617C()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100036294()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000363A0()
{
}

uint64_t sub_1000363BC()
{
  *(v0 + 176) = v1;

  return swift_errorRetain();
}

void sub_1000363DC()
{
  sub_1000055B0();
  v26 = v4;
  v6 = v5;
  sub_100026F40();
  v9 = sub_100065020(v7, v8);
  sub_100002BDC();
  v11 = v10;
  sub_100004B1C();
  __chkstk_darwin(v12);
  v14 = v22 - v13;
  if (*(v2 + 16))
  {
    sub_1000081B4();
    v24 = v1;
    v25 = v0;
    sub_10001B2C0(v6, v1, v0, v15);
    v22[1] = v3;
    dispatch thunk of Hashable._rawHashValue(seed:)();
    v23 = v2;
    sub_100011E24();
    v18 = ~v17;
    do
    {
      v19 = v16 & v18;
      if (((1 << (v16 & v18)) & *(v2 + 56 + (((v16 & v18) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v11 + 16))(v14, *(v23 + 48) + *(v11 + 72) * v19, v9);
      sub_1000039B4();
      sub_10001B2C0(v26, v24, v25, v20);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v11 + 8))(v14, v9);
      v16 = v19 + 1;
    }

    while ((v21 & 1) == 0);
  }

  sub_100002EEC();
}

uint64_t sub_100036588(uint64_t a1)
{
}

uint64_t sub_1000365C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10001446C();
  sub_10000636C();
  sub_10004575C();
  v15 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    sub_10000A05C();
    v16 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_1000265BC();
    *v16 = 136315138;
    v17 = sub_10001AFF8();
    sub_10000CB58(v17, v18, v19, v20);
    sub_100007BA0();
    *(v16 + 4) = v14;
    sub_1000033FC();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    sub_100003324(v13);
    sub_1000039CC();

    sub_100002BD0();
  }

  Session.Metadata.id.getter();
  v26 = swift_task_alloc();
  *(v12 + 144) = v26;
  *v26 = v12;
  v26[1] = sub_100044FA8;
  sub_100007884(*(v12 + 80));
  sub_100003770();

  return sub_100038A40();
}

uint64_t sub_100036730()
{
  *(v0 + *(v1 + 24)) = 0;

  return swift_beginAccess();
}

uint64_t sub_100036758()
{
}

uint64_t sub_100036778()
{

  return type metadata accessor for ModelManagerError();
}

void sub_100036794()
{
  sub_1000055B0();
  v2 = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v5 = v4;
  sub_100004B1C();
  __chkstk_darwin(v6);
  sub_100018A10();
  sub_100008458(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_removeSessionPostString);
  v8 = *(v7 + 16);
  type metadata accessor for OSSignpostID();
  sub_100002BDC();
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  (*(v5 + 16))(v0, v2, v3);
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v30 = v13;
  if ((v8 & 1) == 0)
  {
    if (!v31)
    {
      __break(1u);
LABEL_5:

      v14 = (*(v5 + 8))(v0, v3);
LABEL_11:
      __chkstk_darwin(v14);
      v23 = sub_100018688();
      v24(v23);
      v25 = type metadata accessor for OSSignpostIntervalState();
      sub_1000038EC(v25);
      sub_100003170();
      OSSignpostIntervalState.init(id:isOpen:)();
      v26 = sub_100019BCC();
      v27(v26, v10);
      v28 = type metadata accessor for TelemetryIntervalState();
      v29 = sub_1000126B4(v28);
      sub_10003533C(v29);
      sub_100002EEC();
      return;
    }

LABEL_10:
    v18 = swift_slowAlloc();
    v19 = sub_1000031E0();
    v32 = v19;
    *v18 = 136446210;
    v20 = UUIDIdentifier.uuidString.getter();
    sub_100004A3C(v20, v21, &v32);
    sub_100061AE8();
    *(v18 + 4) = v8;
    (*(v5 + 8))(v0, v3);
    v22 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v30, v22, v31, "sessionIdentifier: %{public, signpost.description=attribute,public}s", v18, 0xCu);
    sub_100003324(v19);
    sub_100002BB8(v19);
    sub_100002BB8(v18);

    goto LABEL_11;
  }

  sub_10000A46C();
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_100011408();
  if (!v16)
  {
    sub_100005704();
    if (!(!v16 & v17))
    {
      sub_10001382C();
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_100036A94()
{
  sub_100002BAC();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[8] = v4;
  sub_100002F44(v4);
  v1[9] = v5;
  v1[10] = sub_100002C58();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

void sub_100036C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_10000355C();
  a29 = v31;
  a30 = v34;
  v35 = v32;
  v36 = *v30;
  v37 = *v30 + 56;
  v38 = -1 << *(*v30 + 32);
  v39 = (v32 + 1) & ~v38;
  if (((1 << v39) & *(v37 + 8 * (v39 >> 6))) != 0)
  {
    v40 = v33;
    v41 = ~v38;

    v42 = _HashTable.previousHole(before:)();
    if ((*(v37 + 8 * (v39 >> 6)) & (1 << v39)) != 0)
    {
      v43 = (v42 + 1) & v41;
      do
      {
        Hasher.init(_seed:)();

        v40(&a10);
        Hasher._finalize()();
        sub_100019498();

        v44 = &a10 & v41;
        if (v35 >= v43)
        {
          if (v44 >= v43 && v35 >= v44)
          {
LABEL_15:
            v47 = *(v36 + 48);
            v48 = (v47 + 8 * v35);
            v49 = (v47 + 8 * v39);
            if (v35 != v39 || v48 >= v49 + 1)
            {
              *v48 = *v49;
              v35 = v39;
            }
          }
        }

        else if (v44 >= v43 || v35 >= v44)
        {
          goto LABEL_15;
        }

        v39 = (v39 + 1) & v41;
      }

      while (((*(v37 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0);
    }

    *(v37 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v35) - 1;
  }

  else
  {
    *(v37 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v32) - 1;
  }

  v51 = *(v36 + 16);
  v52 = __OFSUB__(v51, 1);
  v53 = v51 - 1;
  if (v52)
  {
    __break(1u);
  }

  else
  {
    *(v36 + 16) = v53;
    ++*(v36 + 36);
    sub_100005F10();
  }
}

uint64_t sub_100036E00(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_100036E38(uint64_t a1, unint64_t a2)
{

  return sub_100004A3C(a1, a2, (v2 - 80));
}

uint64_t sub_100036E50(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t sub_100036E84()
{
  sub_100002BAC();
  v3 = v2;
  v1[2] = v4;
  v1[3] = v0;
  v5 = type metadata accessor for RequestCancellationReason();
  v1[4] = v5;
  sub_100002F44(v5);
  v1[5] = v6;
  v1[6] = *(v7 + 64);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100037BD0, v3, 0);
}

uint64_t sub_100036F44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10006FA64;

  return sub_100037DFC(a1, a2, v10, a4, a5);
}

uint64_t sub_10003700C(uint64_t a1)
{
}

uint64_t sub_10003702C(uint64_t a1, uint64_t a2)
{
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v3 = sub_100065020(&qword_1001BD078, &qword_100173950);
  __chkstk_darwin(v3 - 8);
  v5 = &v16[-v4];
  v6 = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.start(_:);
  v7 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  sub_100009BFC(v5, 0, 1, v7);
  GenerativeFunctionsInstrumentationEvent.subtype.setter();
  v8 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  __chkstk_darwin(v8);
  v17 = a2;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v9 = sub_100065020(&qword_1001BD090, &qword_100173970);
  __chkstk_darwin(v9 - 8);
  v11 = &v16[-v10];
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent();
  v12 = swift_allocBox();
  static Buildable.with(_:)();
  *v11 = v12;
  v13 = enum case for GenerativeFunctionsInstrumentationMetadata.modelManagerSessionEvent(_:);
  v14 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  (*(*(v14 - 8) + 104))(v11, v13, v14);
  sub_100009BFC(v11, 0, 1, v14);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t sub_1000372F8()
{
  v0 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100005630();
  v6 = (v4 - v5);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  Session.Metadata.id.getter();
  Session.Metadata.id.getter();
  type metadata accessor for Session();
  v10 = static UUIDIdentifier.== infix(_:_:)();
  v11 = *(v2 + 8);
  v11(v6, v0);
  v11(v9, v0);
  return v10 & 1;
}

uint64_t sub_100037440()
{
  sub_100002BAC();
  *(v1 + 64) = v0;
  *(v1 + 116) = v2;
  v3 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v3);
  *(v1 + 72) = sub_100002C58();
  v4 = sub_100065020(&qword_1001BC0B0, &qword_100172970);
  *(v1 + 80) = v4;
  *(v1 + 88) = *(v4 - 8);
  *(v1 + 96) = sub_100002C58();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100037528()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 116);
  v6 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider__monitoredPids;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v7(v1, v4 + v6, v3);
  *(v0 + 104) = v5;
  v8 = CountedSet.count(of:)();
  v9 = *(v2 + 8);
  v9(v1, v3);
  if (v8)
  {
    v10 = *(v0 + 96);
    v11 = *(v0 + 80);
    v26 = v9;
    v12 = *(v0 + 116);
    *(v0 + 108) = v12;
    swift_beginAccess();
    CountedSet.remove(_:)();
    swift_endAccess();
    v7(v10, v4 + v6, v11);
    *(v0 + 112) = v12;
    v13 = CountedSet.count(of:)();
    v26(v10, v11);
    if (!v13)
    {
      v14 = type metadata accessor for TaskPriority();
      sub_100007098(v14);
      sub_10000870C();
      sub_10000E784(v15, v16, &unk_1001728F8);
      v17 = swift_allocObject();
      sub_10000EEE0(v17);
      sub_1000186A4();
    }
  }

  else
  {
    if (qword_1001B8968 != -1)
    {
      sub_100005224(&qword_1001B8968);
    }

    v18 = type metadata accessor for Logger();
    sub_100002FD0(v18, qword_1001BBF20);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (sub_100002F80(v20))
    {
      v21 = sub_100003788();
      sub_10000A300(v21, 1.5047e-36);
      sub_100002DA4(&_mh_execute_header, v22, v23, "Cannot stop monitoring pid that is not being monitored: %d");
      sub_100002F64();
    }
  }

  sub_100001F00();

  return v24();
}

uint64_t sub_1000377AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v17 = v14[5];
  v16 = v14[6];
  sub_100004CBC();
  swift_beginAccess();
  v18 = *(v16 + 112);
  v19 = swift_task_alloc();
  *(v19 + 16) = v17;

  v20 = sub_100018BC4(sub_100035284, v19, v18);
  v14[14] = v20;

  if (v20)
  {
    (*(v14[12] + 104))(v14[13], enum case for RequestCancellationReason.clientDisavowal(_:), v14[11]);
    v21 = swift_task_alloc();
    v22 = sub_10000D03C(v21);
    *v22 = v23;
    v22[1] = sub_100035E70;
    sub_1000031B8(v14[6]);
    sub_100003540();

    return sub_100036E84();
  }

  else
  {
    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v26 = v14[8];
    v27 = type metadata accessor for Logger();
    sub_10000641C(v27, qword_1001B9A18);
    v28 = (v26 + 16);
    v29 = sub_100007660();
    v30(v29);
    v31 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_100006390();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v14[9];
    if (v33)
    {
      sub_10000A05C();
      v35 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_1000265BC();
      *v35 = 136315138;
      sub_100005070();
      sub_10001B27C(v36, v37, v38);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_100045E40();
      v39 = sub_100005E8C();
      v40(v39);
      v41 = sub_10000CD1C();
      sub_100004A3C(v41, v42, v43);
      sub_100005974();

      *(v35 + 4) = v34;
      sub_1000033FC();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      sub_100003324(v28);
      sub_1000039CC();

      sub_100002BD0();
    }

    else
    {

      v49 = sub_100005E8C();
      v50(v49);
    }

    type metadata accessor for ModelManagerError();
    sub_100005C00();
    sub_100015F10(v51, 255, v52);
    sub_100007894();
    swift_allocError();
    sub_100045E40();
    UUIDIdentifier.uuid.getter();
    sub_100006098();
    (*(v53 + 104))(v15);
    swift_willThrow();

    sub_100001F00();
    sub_100003540();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_100037B24()
{
  sub_10001881C();
  sub_100003884();
  sub_1000135C4();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_10014B0AC(v1);
  sub_10000CD38();
  sub_100007BB8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100037BD0()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v5 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState;
  *(v6 + 16) = 1;
  v7 = *(v6 + 8);
  v0[8] = v7;
  (*(v3 + 16))(v1, v4, v2);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v5;
  (*(v3 + 32))(v9 + v8, v1, v2);

  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_100035FC0;

  return sub_100035C34(v7, &unk_100172FD0, v9);
}

uint64_t sub_100037D44()
{
  v1 = type metadata accessor for RequestCancellationReason();
  sub_100002BDC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100037DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_100037ED8, 0, 0);
}

uint64_t sub_100037ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005B0C();
  sub_10001A5C4();
  v23 = v21[17];
  if ((v23 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v24 = sub_100005B00();
    type metadata accessor for DaemonRequest(v24);
    sub_10005FAF0(&qword_1001B8F78, type metadata accessor for DaemonRequest, &unk_10017466C);
    sub_100001F70();
    Set.Iterator.init(_cocoa:)();
    v23 = v21[2];
    v25 = v21[3];
    v20 = v21[4];
    v26 = v21[5];
    v27 = v21[6];
  }

  else
  {
    sub_100011E24();
    v25 = v23;
    sub_10000CFD8();
    v27 = v28 & v29;

    v26 = 0;
  }

  sub_10014B43C();
  v59 = v25;
  v58 = v22;
  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v38 = v26;
    v39 = v26;
    if (!v27)
    {
      break;
    }

LABEL_9:
    sub_10001E564();
    if (!v20)
    {
LABEL_23:
      v54 = sub_100007B78();
      sub_100007F18(v54);
      v55 = swift_task_alloc();
      v21[22] = v55;
      sub_100065020(&qword_1001B9408, &qword_100174090);
      sub_1000060CC();
      *v55 = v56;
      sub_10003588C();
      sub_1000135DC();

      return TaskGroup.awaitAllRemainingTasks(isolation:)(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, v21, v58, v59, v23, a16, a17, a18, a19, a20);
    }

    while (1)
    {
      v41 = sub_100011248();
      sub_100003978();
      sub_100009BFC(v42, v43, v44, v41);
      v45 = swift_allocObject();
      v46 = sub_10001AF98(v45);
      v25 = &qword_10016F6E0;
      sub_10001E72C(v46, v47, &qword_1001BB050, &qword_10016F6E0);
      sub_10004D0E4();

      if (v26 == 1)
      {
        sub_10000ED84(v21[20], &qword_1001BB050);
      }

      else
      {
        TaskPriority.rawValue.getter();
        sub_100006098();
        v48 = sub_100007660();
        v49(v48);
      }

      v20 = *a16;
      if (*a16)
      {
        swift_getObjectType();
        sub_1000125DC();
        swift_unknownObjectRetain();
        sub_100053C38();
        v22 = dispatch thunk of Actor.unownedExecutor.getter();
        v51 = v50;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v51 = 0;
      }

      sub_1000530D0();
      sub_100002EE0();
      v52 = swift_allocObject();
      *(v52 + 16) = &unk_1001740A0;
      *(v52 + 24) = v27;
      v53 = (v51 | v22);
      if (v51 | v22)
      {
        v53 = a11;
        *a11 = 0;
        a11[1] = 0;
        v21[9] = v22;
        v21[10] = v51;
      }

      sub_10005C1E4(v53);
      swift_task_create();

      v30 = sub_10000ED84(v20, &qword_1001BB050);
      v26 = v39;
      v27 = a17;
      if ((v23 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      v40 = __CocoaSet.Iterator.next()();
      if (v40)
      {
        v21[15] = v40;
        type metadata accessor for DaemonRequest(0);
        sub_1000358A4();
        swift_dynamicCast();
        v39 = v26;
        if (v21[14])
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v22)
    {
      goto LABEL_23;
    }

    ++v38;
    if (v25[v39])
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return TaskGroup.awaitAllRemainingTasks(isolation:)(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, v21, v58, v59, v23, a16, a17, a18, a19, a20);
}

uint64_t sub_100038278()
{

  sub_100002EE0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000382B0()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_1000383C8()
{
  sub_100002BAC();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  sub_100004B28(v1);

  return sub_100036100();
}

void sub_100038454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  v14 = (*(v12 + 192) + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  sub_100009E10();
  swift_beginAccess();
  v15 = v14[1];
  *(v12 + 216) = v15;
  v16 = *(v15 + 16);
  *(v12 + 224) = v16;
  if (v16)
  {
    *(v12 + 232) = *v14;

    v17 = 0;
    v18 = &unk_100172C48;
    v19 = &qword_1001B8F40;
LABEL_3:
    *(v12 + 240) = v17;
    v20 = sub_100143420(v17, *(v12 + 216));
    *(v12 + 248) = v20;
    a9 = v20;
    v21 = v20 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
    sub_100009E10();
    swift_beginAccess();
    v22 = *v21;
    v23 = *(v21 + 16);
    *(v12 + 48) = *(v21 + 32);
    *(v12 + 16) = v22;
    *(v12 + 32) = v23;
    v24 = vextq_s8(*(v12 + 24), *(v12 + 24), 8uLL);
    *(v12 + 128) = vextq_s8(*(v12 + 40), *(v12 + 40), 8uLL);
    *(v12 + 144) = v24;
    sub_100036E68();
    sub_10001E72C(v25, v26, v27, v28);
    sub_100036E68();
    sub_10001E72C(v29, v30, v31, v32);
    sub_10000CD38();
    sub_10001E72C(v33, v34, v35, v36);
    sub_100042D18();
    v37 = sub_10006CF3C();
    sub_10000C750();
    sub_10000ED84(v38, v39);
    sub_10000C750();
    sub_10000ED84(v40, v41);
    sub_100006570();
    sub_10000ED84(v42, v43);
    sub_10000ED84(v12 + 128, &qword_1001B8F40);
    sub_10000E8DC(v37);
    sub_10014B428();
    while (v13 != v18)
    {
      if (&unk_100172C40)
      {
        sub_100003D88();
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= qword_1001BC480)
        {
          goto LABEL_22;
        }

        sub_10014B2AC();
      }

      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v44 = *(v12 + 200);
      v45 = *(v12 + 208);
      v46 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
      sub_100004CBC();
      swift_beginAccess();
      sub_100005DD8();
      sub_10005CAA8(v19 + v46, v45);
      LOBYTE(v44) = *(v45 + *(v44 + 24));
      sub_1000115C8();
      sub_10000D300(v45);

      ++v18;
      if ((v44 & 1) == 0)
      {

        v17 = sub_10002B138();
        v18 = &unk_100172C48;
        v19 = &qword_1001B8F40;
        if (v47)
        {

          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    v56 = swift_task_alloc();
    *(v12 + 256) = v56;
    *v56 = v12;
    v56[1] = sub_10012FAF4;
    sub_1000031B8(*(v12 + 192));
    sub_1000062BC();

    sub_10006CD0C(v57);
  }

  else
  {
LABEL_15:

    sub_100001F00();
    sub_1000062BC();

    v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
  }
}

uint64_t sub_100038770()
{
  sub_10001446C();
  sub_10000636C();
  sub_10004575C();
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    sub_10000A05C();
    v4 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_1000265BC();
    *v4 = 136315138;
    v5 = sub_10001AFF8();
    sub_10000CB58(v5, v6, v7, v8);
    sub_100007BA0();
    *(v4 + 4) = v2;
    sub_1000033FC();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_100003324(v1);
    sub_1000039CC();

    sub_100002BD0();
  }

  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *v14 = v0;
  sub_100004B28(v14);
  sub_100003770();

  return sub_100036100();
}

uint64_t sub_100038898()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100038990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100002BAC();
  Session.Metadata.id.getter();
  v13 = swift_task_alloc();
  *(v12 + 136) = v13;
  *v13 = v12;
  v13[1] = sub_100044BD4;
  sub_100007884(*(v12 + 80));

  return sub_100038A40();
}

uint64_t sub_100038A40()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[7] = v3;
  sub_100002F44(v3);
  v1[8] = v4;
  v1[9] = sub_10000F0C0();
  v1[10] = swift_task_alloc();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

char *sub_100038E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v27 = v4;
    v9 = &_swiftEmptySetSingleton;
    v31 = &_swiftEmptySetSingleton;
    v26 = a2;

    __CocoaSet.makeIterator()();
    while (1)
    {
      v10 = __CocoaSet.Iterator.next()();
      if (!v10)
      {
        break;
      }

      v28[0] = v10;
      type metadata accessor for InferenceProviderAsset(0);
      swift_dynamicCast();
      v11 = v29;
      v12 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100002D24();
      swift_beginAccess();
      LOBYTE(v11) = a3(&v12[v11]);
      swift_endAccess();
      v20 = v29;
      if (v11)
      {
        v21 = *(v9 + 2);
        if (*(v9 + 3) <= v21)
        {
          sub_100080444(v21 + 1, v13, v14, v15, v16, v17, v18, v19, v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, vars0, vars8);
        }

        v9 = v31;
        Hasher.init(_seed:)();
        sub_10001214C(v28);
        v22 = Hasher._finalize()();
        sub_100012804(v22, v9[32]);
        v23 = _HashTable.nextHole(atOrAfter:)();
        *&v9[((v23 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56] |= 1 << v23;
        *(*(v9 + 6) + 8 * v23) = v20;
        ++*(v9 + 2);
      }

      else
      {
      }
    }

    return v9;
  }

  else
  {

    v25 = sub_100011E30(a1, a2, a3, a4);

    return v25;
  }
}

void sub_100039014(uint64_t a1, uint64_t a2)
{
  type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);

  sub_10003905C();
}

uint64_t sub_100039080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{

  GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.identifier.setter();

  return GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.version.setter();
}

uint64_t sub_10003913C()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100039174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v13 = *(*(v12 + 248) + 112);
  *(v12 + 400) = v13;
  if (v13)
  {
    sub_1000185A8(&async function pointer to dispatch thunk of InferenceProviderXPCSender.transitionAsset(withDescriptor:to:from:requestIdentifier:));
    sub_100007BCC();
    v14 = swift_task_alloc();
    *(v12 + 408) = v14;
    *v14 = v12;
    v14[1] = sub_10003A4D8;
    sub_1000031B8(*(v12 + 216));
    sub_100001FBC();

    return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    v24 = *(v12 + 360);
    (*(v12 + 344))(*(v12 + 328), *(v12 + 456), *(v12 + 304));
    v25 = sub_10000D01C();
    v27 = sub_100116D68(v25, v26);
    v28 = sub_100001F70();
    v24(v28);
    if (v27)
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (sub_100002F80(v30))
      {
        v31 = sub_100007648();
        sub_10000A240(v31);
        sub_1000059D8(&_mh_execute_header, v32, v33, "Load in called for terminated extension");
        sub_100002F64();
      }

      sub_1000085DC();
      sub_10002EA7C(v34, v35, &protocol conformance descriptor for ModelManagerError);
      *(v12 + 424) = sub_10000A418();
      swift_task_alloc();
      sub_100004B34();
      *(v12 + 432) = v36;
      *v36 = v37;
      sub_100012F7C(v36);
      sub_100001FBC();

      return sub_1000A5930(v38);
    }

    else
    {
      v40 = *(v12 + 248);

      v41 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_1000089B8();
      if (sub_10000A384())
      {
        sub_100007698();
        sub_100003890();
        sub_10003EAA0();
        *v40 = 136315138;
        v42 = type metadata accessor for InferenceProviderDescriptor();
        sub_10000509C();
        v45 = sub_10002EA7C(v43, v44, &protocol conformance descriptor for InferenceProviderDescriptor);
        v46 = sub_1000094F0(v45);
        sub_1000239D4(v46, v47, v48, v49, v50, v51);
        sub_100007BA0();
        *(v40 + 4) = v42;
        sub_1000033FC();
        _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
        sub_100001F88();
        sub_10000706C();
      }

      v57 = *(v12 + 336);
      sub_100002C70();
      sub_100039484(v58, v59, v60, v61, v62);
      sub_100004B50(v57 + 24, v12 + 64);
      os_activity_scope_leave((v57 + 24));
      swift_endAccess();
      sub_10001C130();

      sub_100002F54();
      sub_100001FBC();

      return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_100039484(uint64_t a1, uint64_t (*a2)(void), const char *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v9 = sub_100002F04(v8);
  __chkstk_darwin(v9);
  if (qword_1001B8900 != -1)
  {
    sub_100005C18(&qword_1001B8900);
  }

  v10 = type metadata accessor for Logger();
  sub_100002FD0(v10, qword_1001B9FA0);
  v11 = Logger.logObject.getter();
  v12 = a2();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_100007648();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a3, v13, 2u);
    sub_100002BB8(v13);
  }

  type metadata accessor for TaskPriority();
  sub_100003978();
  sub_100009BFC(v14, v15, v16, v17);
  sub_10001135C();
  v20 = sub_10002EA7C(v18, v19, &unk_100170F60);
  sub_100005640();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = v20;
  v21[4] = a1;
  swift_retain_n();
  sub_1000652FC();
}

uint64_t sub_100039628()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 336) = v0;

  (*(v2 + 304))(*(v2 + 200), *(v2 + 184));
  sub_100007088();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10003979C()
{
  sub_100002BAC();
  sub_100042BE4(*(v0 + 145));

  return _swift_task_switch(sub_100042C44, 0, 0);
}

uint64_t sub_100039838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, NSObject *a12, uint64_t a13, NSObject *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_1000133FC();
  a25 = v27;
  a26 = v28;
  sub_10000C72C();
  a24 = v26;
  sub_100024640(v29, v30, &qword_1001B9CB0, &qword_100171E70);
  if (!v26[15])
  {
    sub_10000ED84((v26 + 12), &qword_1001B9CB0);
    if (qword_1001B8930 != -1)
    {
      sub_100005154();
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000641C(v48, qword_1001BB110);
    sub_1000DB290();
    v49();
    v50 = sub_1000125D0();
    v51(v50);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v26[40];
    if (v54)
    {
      sub_100002F10();
      a12 = v52;
      v56 = swift_slowAlloc();
      sub_100011828();
      a14 = swift_slowAlloc();
      *v56 = 136315394;
      sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
      v57 = sub_1000494F4();
      LODWORD(a11) = v53;
      v59 = v58;
      v60 = sub_100004CB0();
      v61(v60);
      sub_100004A3C(v57, v59, &a14);
      sub_10000E86C();

      *(v56 + 4) = v55;
      *(v56 + 12) = 2080;
      sub_10000950C();
      sub_100011B14(v62, v63, &protocol conformance descriptor for InferenceProviderDescriptor);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = sub_100007B78();
      v66(v65);
      v67 = sub_100036724();
      sub_100004A3C(v67, v68, v69);
      sub_10000E86C();

      *(v56 + 14) = v64;
      sub_10000C720();
      _os_log_impl(v70, v71, v72, v73, v74, 0x16u);
      swift_arrayDestroy();
      sub_100002BD0();

      sub_10000BFCC();
    }

    else
    {

      v106 = sub_100007B78();
      v107(v106);
      v108 = sub_100004CB0();
      v109(v108);
    }

    type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v110, v111, &protocol conformance descriptor for ModelManagerError);
    sub_100007894();
    v112 = swift_allocError();
    v114 = v113;
    *v113 = InferenceProviderDescriptor.description.getter();
    v114[1] = v115;
    sub_100006098();
    (*(v116 + 104))(v114);
    v125 = v112;
    swift_willThrow();
    sub_10000ED84((v26 + 2), &qword_1001B9CB0);
    goto LABEL_20;
  }

  sub_1000DB4A4();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v31 = v26[38];
  v32 = type metadata accessor for Logger();
  v26[45] = sub_10000641C(v32, qword_1001BB110);
  v26[46] = *(v31 + 16);
  v26[47] = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v33 = sub_100005E98();
  v34(v33);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (sub_1000264AC())
  {
    v37 = v26[38];
    a10 = v26[20];
    a11 = v26[44];
    sub_100002F10();
    v38 = swift_slowAlloc();
    sub_100011828();
    a12 = swift_slowAlloc();
    a14 = a12;
    *v38 = 136315394;
    sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v42 = *(v37 + 8);
    v43 = sub_1000037BC();
    v42(v43);
    sub_100004A3C(v39, v41, &a14);
    sub_100001F0C();

    sub_1000DAFB0();
    v44 = sub_1000BF6D8(a10);
    v45 = Array.description.getter();
    v47 = v46;

    sub_100004A3C(v45, v47, &a14);
    sub_100005974();

    *(v38 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "Session %s trying to prewarm assets %s", v38, 0x16u);
    sub_10001E558();
    swift_arrayDestroy();
    sub_100061AD8();

    sub_100002BD0();
  }

  else
  {
    v75 = v26[38];

    v42 = *(v75 + 8);
    v76 = sub_100007660();
    v42(v76);
  }

  v26[48] = v42;
  v77 = v26[35];
  v79 = v26[33];
  v78 = v26[34];
  v80 = v26[26] + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  sub_100004CBC();
  swift_beginAccess();
  v81 = sub_10000CF04();
  v82(v81);
  (*(v78 + 104))(v77, enum case for AssetPolicy.unloadCached(_:), v79);
  sub_100011B14(&qword_1001B9230, &type metadata accessor for AssetPolicy, &protocol conformance descriptor for AssetPolicy);
  sub_1000071D0();
  v83 = dispatch thunk of static Equatable.== infix(_:_:)();
  v84 = *(v78 + 8);
  v84(v77, v79);
  v85 = sub_10000CDA4();
  (v84)(v85);
  if (v83)
  {
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();
    if (sub_100002F80(v87))
    {
      v88 = sub_100007648();
      sub_10000BF10(v88);
      sub_10000C720();
      _os_log_impl(v89, v90, v91, v92, v93, 2u);
      sub_10000BFCC();
    }

    type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v94, v95, &protocol conformance descriptor for ModelManagerError);
    v96 = sub_10000C700();
    v98 = v97;
    *v97 = *(v80 + *(_s6PolicyVMa_0(0) + 32));
    sub_1000080BC();
    (*(v99 + 104))(v98);
    v125 = v96;
    swift_willThrow();

    sub_10000ED84((v26 + 2), &qword_1001B9CB0);
    sub_100003324(v26 + 7);
LABEL_20:

    sub_100001F00();
    sub_1000037A0();

    return v118(v117, v118, v119, v120, v121, v122, v123, v124, a9, a10, a11, a12, v125, a14, a15, a16, a17, a18);
  }

  v100 = swift_task_alloc();
  v26[49] = v100;
  *v100 = v26;
  v100[1] = sub_10004950C;
  sub_1000031B8(v26[20]);
  sub_1000037A0();

  return sub_100023A48(v101, v102, v103);
}

uint64_t sub_10003A070()
{
  sub_100002BAC();
  sub_1000DAF50(*(v0 + 208));
  swift_task_alloc();
  sub_100004B34();
  *(v0 + 344) = v1;
  *v1 = v2;
  v1[1] = sub_10003A10C;
  v3 = sub_10004AE38();

  return sub_1000253E8(v3, v4);
}

uint64_t sub_10003A10C()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 352) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003A220()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100030490();
}

uint64_t sub_10003A2E0()
{
  type metadata accessor for RequestPriority();
  swift_arrayDestroy();
  sub_100002EE0();

  return _swift_deallocClassInstance(v0, v1, v2);
}

id sub_10003A354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v6 = [swift_getObjCClassFromMetadata() attributeWithDomain:v4 name:v5];

  return v6;
}

id sub_10003A3E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();

  sub_10000E2C0(0, &qword_1001BA4B8, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v4 initWithExplanation:v6 target:a3 attributes:isa];

  return v8;
}

uint64_t sub_10003A4D8()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 416) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003A5EC()
{

  return swift_slowAlloc();
}

uint64_t sub_10003A608()
{
  sub_100002BAC();
  v1[23] = v2;
  v1[24] = v0;
  v3 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v3);
  v1[25] = sub_100002C58();
  State = type metadata accessor for LoadState();
  v1[26] = State;
  sub_100002F44(State);
  v1[27] = v5;
  v1[28] = sub_10000F0C0();
  v1[29] = swift_task_alloc();
  v6 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v1[30] = v6;
  sub_100002F04(v6);
  v1[31] = sub_10000F0C0();
  v1[32] = swift_task_alloc();
  v7 = type metadata accessor for AssetCost();
  v1[33] = v7;
  sub_100002F44(v7);
  v1[34] = v8;
  v1[35] = sub_100002C58();
  v9 = sub_100002C10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10003A760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v206 = a8;
  v205 = a7;
  v203 = a6;
  v210 = a5;
  v209 = a4;
  v211 = a3;
  v212 = a9;
  v226 = a2;
  v10 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  v207 = *(v10 - 8);
  v208 = *(v207 + 64);
  __chkstk_darwin(v10 - 8);
  v216 = &v186 - v11;
  v12 = sub_100065020(&qword_1001BB410, &unk_100172340);
  v202 = *(v12 - 8);
  v204 = *(v202 + 64);
  __chkstk_darwin(v12 - 8);
  v214 = (&v186 - v13);
  v14 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v14 - 8);
  v215 = &v186 - v15;
  v16 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  v201 = *(v16 - 8);
  v17 = *(v201 + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v213 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v200 = &v186 - v19;
  v20 = type metadata accessor for InferenceProviderDescriptor();
  v219 = *(v20 - 8);
  v220 = v20;
  __chkstk_darwin(v20);
  v218 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v186 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v186 - v26;
  State = type metadata accessor for LoadState();
  v222 = *(State - 8);
  v223 = State;
  v29 = *(v222 + 64);
  v30 = __chkstk_darwin(State);
  v31 = &v186 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v34 = &v186 - v33;
  v35 = __chkstk_darwin(v32);
  v217 = &v186 - v36;
  v37 = __chkstk_darwin(v35);
  v221 = &v186 - v38;
  __chkstk_darwin(v37);
  v40 = &v186 - v39;
  v41 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  if (*(a1 + *(v41 + 52)))
  {
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000641C(v42, qword_1001BB478);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_12;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v224 = v46;
    *v45 = 136315138;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = sub_100004A3C(v47, v48, &v224);

    *(v45 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v43, v44, "Tried to load invalidated asset: %s", v45, 0xCu);
    sub_100003324(v46);

LABEL_11:

LABEL_12:

    v68 = type metadata accessor for ModelManagerError();
    sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    swift_allocError();
    (*(*(v68 - 8) + 104))(v69, enum case for ModelManagerError.internalError(_:), v68);
    return swift_willThrow();
  }

  v50 = v41;
  v51 = *(v41 + 28);
  if (*(a1 + v51))
  {
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_10000641C(v52, qword_1001BB478);
    v53 = v226;

    v43 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v43, v54))
    {
      goto LABEL_12;
    }

    v55 = swift_slowAlloc();
    v224 = swift_slowAlloc();
    *v55 = 136315394;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = sub_100004A3C(v56, v57, &v224);

    *(v55 + 4) = v58;
    *(v55 + 12) = 2080;
    v59 = (v53 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
    v60 = *(v53 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v61 = *(v53 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370(v59, v60);
    v62 = v218;
    (*(v61 + 8))(v60, v61);
    sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
    v63 = v220;
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    (*(v219 + 8))(v62, v63);
    v67 = sub_100004A3C(v64, v66, &v224);

    *(v55 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v43, v54, "loadIfNeccesary called with pending transition task for %s with %s", v55, 0x16u);
    swift_arrayDestroy();

    goto LABEL_11;
  }

  v192 = v25;
  v193 = v17;
  v194 = v51;
  v71 = v222 + 16;
  v72 = *(v222 + 16);
  v73 = v40;
  v199 = v40;
  v74 = v223;
  v72(v73, a1, v223);
  v75 = *(v50 + 20);
  v198 = a1;
  v197 = v75;
  v76 = a1 + v75;
  v77 = v221;
  v78 = v199;
  v196 = v71;
  v195 = v72;
  v72(v221, v76, v74);
  if (sub_100116D68(v78, v77))
  {
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    v80 = sub_10000641C(v79, qword_1001BB478);
    v81 = v226;

    v189 = v80;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v82, v83))
    {
      LODWORD(v191) = v83;
      v84 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v224 = v190;
      *v84 = 136315394;
      InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
      v85 = v81;
      v86 = type metadata accessor for CustomAssetConfiguration();
      if (sub_10000C6C0(v27, 1, v86) == 1)
      {
        sub_10000ECD8(v27, &qword_1001B9D00, &qword_100171E00);
        v87 = InferenceProviderAssetDescriptor.identifier.getter();
        v89 = v88;
      }

      else
      {
        v87 = CustomAssetConfiguration.identifier.getter();
        v89 = v125;
        (*(*(v86 - 8) + 8))(v27, v86);
      }

      v126 = sub_100004A3C(v87, v89, &v224);

      *(v84 + 4) = v126;
      *(v84 + 12) = 2080;
      v127 = *(v85 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      v128 = *(v85 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      sub_100003370((v85 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v127);
      v129 = v218;
      (*(v128 + 8))(v127, v128);
      sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
      v130 = v84;
      v131 = v220;
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      v134 = v133;
      (*(v219 + 8))(v129, v131);
      v135 = sub_100004A3C(v132, v134, &v224);

      *(v130 + 14) = v135;
      _os_log_impl(&_mh_execute_header, v82, v191, "loadIfNecessary entering for asset %s with %s", v130, 0x16u);
      swift_arrayDestroy();

      v78 = v199;
    }

    else
    {
    }

    v136 = enum case for LoadState.loaded(_:);
    v138 = v222;
    v137 = v223;
    v139 = *(v222 + 104);
    v140 = v217;
    v139(v217, enum case for LoadState.loaded(_:), v223);
    v141 = sub_100116D68(v78, v140);
    v142 = v137;
    v143 = v137;
    v144 = *(v138 + 8);
    v144(v140, v143);
    v191 = v138 + 8;
    v190 = v144;
    if (v141)
    {
      v187 = v139;
      v188 = v136;
      v145 = v199;
      v146 = v192;
      InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
      v147 = type metadata accessor for CustomAssetConfiguration();
      if (sub_10000C6C0(v146, 1, v147) == 1)
      {
        sub_10000ECD8(v146, &qword_1001B9D00, &qword_100171E00);
        v148 = type metadata accessor for AuditToken();
        v149 = v200;
        sub_100009BFC(v200, 1, 1, v148);
LABEL_32:
        sub_10000ECD8(v149, &qword_1001BB3F8, &qword_100171D50);
        v151 = v226;

        v152 = Logger.logObject.getter();
        v153 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v152, v153))
        {
          v154 = swift_slowAlloc();
          v224 = swift_slowAlloc();
          *v154 = 136315394;
          type metadata accessor for InferenceProviderAssetDescriptor();
          sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
          v155 = dispatch thunk of CustomStringConvertible.description.getter();
          v157 = sub_100004A3C(v155, v156, &v224);

          *(v154 + 4) = v157;
          *(v154 + 12) = 2080;
          v158 = (v151 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
          v159 = *(v151 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
          v160 = *(v151 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
          sub_100003370(v158, v159);
          v161 = v218;
          (*(v160 + 8))(v159, v160);
          sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
          v162 = v220;
          v163 = dispatch thunk of CustomStringConvertible.description.getter();
          v165 = v164;
          (*(v219 + 8))(v161, v162);
          v166 = sub_100004A3C(v163, v165, &v224);

          *(v154 + 14) = v166;
          _os_log_impl(&_mh_execute_header, v152, v153, "Not loading asset %s into %s: already loaded", v154, 0x16u);
          swift_arrayDestroy();
        }

        v167 = v223;
        v168 = v190;
        v190(v221, v223);
        result = v168(v145, v167);
        *v212 = 0;
        return result;
      }

      v149 = v200;
      CustomAssetConfiguration.auditToken.getter();
      (*(*(v147 - 8) + 8))(v146, v147);
      v150 = type metadata accessor for AuditToken();
      if (sub_10000C6C0(v149, 1, v150) == 1)
      {
        goto LABEL_32;
      }

      sub_10000ECD8(v149, &qword_1001BB3F8, &qword_100171D50);
      v142 = v223;
      v144 = v190;
      v136 = v188;
      v139 = v187;
    }

    v169 = v198;
    v170 = v197;
    v144(v198 + v197, v142);
    v171 = v136;
    v172 = v142;
    v139((v169 + v170), v171, v142);
    v224 = 0x7373412064616F4CLL;
    v225 = 0xEB00000000207465;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v173._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v173);

    v223 = v224;
    v220 = v225;
    v174 = type metadata accessor for TaskPriority();
    sub_100009BFC(v215, 1, 1, v174);
    sub_10001E72C(v203, v214, &qword_1001BB410, &unk_100172340);
    sub_10001E72C(v205, v216, &qword_1001BB408, &unk_100171DC0);
    v195(v217, v199, v142);
    sub_10001E72C(v206, v213, &qword_1001BB3F8, &qword_100171D50);
    v175 = sub_100011B5C(&qword_1001B8BB8, type metadata accessor for InferenceProviderAssetManager, &unk_100171CF0);
    v176 = (*(v202 + 80) + 57) & ~*(v202 + 80);
    v177 = (v204 + *(v207 + 80) + v176) & ~*(v207 + 80);
    v178 = v222;
    v179 = (v208 + *(v222 + 80) + v177) & ~*(v222 + 80);
    v180 = (v29 + *(v201 + 80) + v179) & ~*(v201 + 80);
    v181 = swift_allocObject();
    v182 = v211;
    *(v181 + 16) = v211;
    *(v181 + 24) = v175;
    *(v181 + 32) = v226;
    *(v181 + 40) = v182;
    *(v181 + 48) = v209;
    *(v181 + 56) = v210 & 1;
    sub_10002F6B4(v214, v181 + v176, &qword_1001BB410, &unk_100172340);
    sub_10002F6B4(v216, v181 + v177, &qword_1001BB408, &unk_100171DC0);
    (*(v178 + 32))(v181 + v179, v217, v172);
    sub_10002F6B4(v213, v181 + v180, &qword_1001BB3F8, &qword_100171D50);
    swift_retain_n();

    sub_100128ED0();
    v184 = v183;
    v185 = v190;
    v190(v221, v172);
    v185(v199, v172);
    *(v198 + v194) = v184;
    *v212 = v184;
  }

  if (qword_1001B8938 != -1)
  {
    swift_once();
  }

  v90 = type metadata accessor for Logger();
  sub_10000641C(v90, qword_1001BB478);
  v91 = v223;
  v92 = v195;
  v195(v34, v78, v223);
  v92(v31, v221, v91);

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    LODWORD(v215) = v94;
    v96 = v95;
    v216 = swift_slowAlloc();
    v224 = v216;
    *v96 = 136315906;
    sub_100011B5C(&qword_1001BA478, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
    v214 = v93;
    v97 = dispatch thunk of CustomStringConvertible.description.getter();
    v99 = v98;
    v100 = *(v222 + 8);
    v217 = ((v222 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v100(v34, v223);
    v101 = sub_100004A3C(v97, v99, &v224);

    *(v96 + 4) = v101;
    *(v96 + 12) = 2080;
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    v104 = v103;
    v100(v31, v223);
    v91 = v223;
    v105 = sub_100004A3C(v102, v104, &v224);

    *(v96 + 14) = v105;
    *(v96 + 22) = 2080;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v106 = v226;
    v107 = dispatch thunk of CustomStringConvertible.description.getter();
    v109 = sub_100004A3C(v107, v108, &v224);

    *(v96 + 24) = v109;
    *(v96 + 32) = 2080;
    v110 = v199;
    v111 = *(v106 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v112 = *(v106 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370((v106 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v111);
    v113 = v218;
    (*(v112 + 8))(v111, v112);
    sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
    v114 = v220;
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    v118 = v113;
    v119 = v222;
    (*(v219 + 8))(v118, v114);
    v120 = sub_100004A3C(v115, v117, &v224);

    *(v96 + 34) = v120;
    v121 = v214;
    _os_log_impl(&_mh_execute_header, v214, v215, "loadIfNecessary called with unmatching states (%s != %s) for %s with %s", v96, 0x2Au);
    swift_arrayDestroy();

    v122 = v100;
    v78 = v110;
  }

  else
  {

    v119 = v222;
    v122 = *(v222 + 8);
    v217 = ((v222 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v122(v31, v91);
    v122(v34, v91);
  }

  (*(v119 + 24))(v198 + v197, v78, v91);
  v123 = type metadata accessor for ModelManagerError();
  sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
  swift_allocError();
  (*(*(v123 - 8) + 104))(v124, enum case for ModelManagerError.internalError(_:), v123);
  swift_willThrow();
  v122(v221, v91);
  return (v122)(v78, v91);
}

uint64_t sub_10003C024()
{
  v1 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F44(v1);
  v33 = *(v2 + 80);
  v3 = (v33 + 57) & ~v33;
  v5 = *(v4 + 64);
  v6 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F44(v6);
  v8 = *(v7 + 80);
  v9 = (v3 + v5 + v8) & ~v8;
  v11 = *(v10 + 64);
  State = type metadata accessor for LoadState();
  sub_100002BDC();
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = (v9 + v11 + v14) & ~v14;
  v17 = *(v16 + 64);
  v18 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F44(v18);
  v20 = *(v19 + 80);
  v21 = v15 + v17 + v20;
  v32 = *(v22 + 64);
  swift_unknownObjectRelease();

  v23 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  if (!sub_10000C6C0(v0 + v3, 1, v23))
  {
    sub_100006098();
    (*(v24 + 8))(v0 + v3, v23);
  }

  v25 = v21 & ~v20;
  v26 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  if (!sub_10000C6C0(v0 + v9, 1, v26))
  {
    sub_100006098();
    (*(v27 + 8))(v0 + v9, v26);
  }

  (*(v13 + 8))(v0 + v15, State);
  v28 = type metadata accessor for AuditToken();
  if (!sub_10000C1F0(v0 + v25))
  {
    sub_100006098();
    (*(v29 + 8))(v0 + v25, v28);
  }

  return _swift_deallocObject(v0, v25 + v32, v33 | v8 | v14 | v20 | 7);
}

uint64_t sub_10003C8E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100002D24();
  swift_beginAccess();
  sub_10003A760(v14 + v6, v6, a1, a2, a3 & 1, a4, a5, a6, &v16);
  result = swift_endAccess();
  if (!v7)
  {
    return v16;
  }

  return result;
}

uint64_t sub_10003D1D4()
{
  sub_1000055B0();
  v1 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F44(v1);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F44(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F44(v11);
  v13 = *(v12 + 80);
  v14 = v8 + v10 + v13;

  v15 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  if (!sub_10004655C(v15))
  {
    sub_1000076C8();
    (*(v16 + 8))(v0 + v3, v10);
  }

  v17 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  if (!sub_10000C6C0(v0 + v8, 1, v17))
  {
    sub_1000076C8();
    (*(v18 + 8))(v0 + v8, v17);
  }

  v19 = type metadata accessor for AuditToken();
  if (!sub_10004655C(v19))
  {
    sub_1000076C8();
    (*(v20 + 8))(v0 + (v14 & ~v13), v17);
  }

  sub_100002EEC();

  return _swift_deallocObject(v21, v22, v23);
}

uint64_t sub_10003D418(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v43 = *a3;
  State = type metadata accessor for LoadState();
  v8 = *(State - 8);
  __chkstk_darwin(State);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v40);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v36 = v3;
    v37 = &_swiftEmptySetSingleton;
    v58 = &_swiftEmptySetSingleton;
    v39 = a3;

    v38 = a2;

    v44 = __CocoaSet.makeIterator()();
    HIDWORD(v42) = enum case for LoadState.loaded(_:);
    v41 = (v8 + 104);
    v13 = (v8 + 8);
    while (1)
    {
      v14 = __CocoaSet.Iterator.next()();
      if (!v14)
      {

        a1 = v37;
        goto LABEL_23;
      }

      v45 = v14;
      swift_dynamicCast();
      v15 = v57;
      v16 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      sub_1000192DC(v16 + v15, v12);
      (*v41)(v10, HIDWORD(v42), State);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v45 == v54 && v46 == v55)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          (*v13)(v10, State);
          sub_100019338(v12);
          goto LABEL_16;
        }
      }

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v45 == v54 && v46 == v55)
      {

        (*v13)(v10, State);
        sub_100019338(v12);
LABEL_21:
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v13)(v10, State);
        sub_100019338(v12);
        if (v20)
        {
          goto LABEL_21;
        }

LABEL_16:
        if (!sub_10002D88C(v15))
        {
          goto LABEL_21;
        }

        v28 = v57;
        v29 = v37[2];
        if (v37[3] <= v29)
        {
          sub_100080444(v29 + 1, v21, v22, v23, v24, v25, v26, v27, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, *v56, *&v56[8], *&v56[16]);
        }

        v30 = v58;
        Hasher.init(_seed:)();
        sub_10001214C(&v45);
        Hasher._finalize()();
        v31 = _HashTable.nextHole(atOrAfter:)();
        *(v30 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v31;
        *(v30[6] + 8 * v31) = v28;
        v32 = v30[2] + 1;
        v37 = v30;
        v30[2] = v32;
      }
    }
  }

  v33 = sub_100049A6C(a1, a2, a3);
  if (v3)
  {
  }

  else
  {
    a1 = v33;

LABEL_23:
  }

  return a1;
}

uint64_t sub_10003D984()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[50];
  v2 = v0[26];
  v3 = v0[23];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100028248(sub_1000279B0, v4, v1);

  sub_10002B524();
  v0[52] = v5;
  v6 = swift_task_alloc();
  v0[53] = v6;
  *v6 = v0;
  v6[1] = sub_10004A618;
  sub_1000031B8(v0[50]);
  sub_100003D20();

  return sub_10003A608();
}

uint64_t sub_10003DA6C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10003DA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_10003DADC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v15 = _swiftEmptyArrayStorage;
  result = sub_10000E8DC(a3);
  v7 = result;
  v8 = 0;
  v9 = v4 & 0xC000000000000001;
  v12 = v4;
  v13 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7 == v8)
    {

      return v15;
    }

    if (v9)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = result;
    }

    else
    {
      if (v8 >= *(v13 + 16))
      {
        goto LABEL_16;
      }

      v10 = *(v4 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v14 = v10;
    v11 = a1(&v14);
    if (v3)
    {
    }

    if (v11)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v4 = v12;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v8;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

BOOL sub_10003DC64()
{
  v1 = type metadata accessor for Date();
  sub_100002BDC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002B8C();
  v7 = v6 - v5;
  static Date.now.getter();
  v8 = sub_100010EB0();
  v13 = v0;
  v14 = v7;
  v9 = sub_10003DADC(sub_100043D54, v12, v8);
  v10 = sub_10000E8DC(v9);

  (*(v3 + 8))(v7, v1);
  return v10 != 0;
}

uint64_t sub_10003DD74(uint64_t a1)
{

  return static Task<>.isCancelled.getter();
}

uint64_t sub_10003DDA0(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10003DDBC(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  return result;
}

uint64_t sub_10003DDDC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  sub_100012A00();
  return _HashTable.startBucket.getter();
}

void *sub_10003DE74()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004CBC();
  swift_beginAccess();
  if ((*(v2 + v1) & 0xC000000000000001) != 0)
  {
    v3 = &_swiftEmptySetSingleton;
    v26 = &_swiftEmptySetSingleton;
    sub_1000DAF00();
    swift_retain_n();

    __CocoaSet.makeIterator()();
    while (1)
    {
      v4 = __CocoaSet.Iterator.next()();
      if (!v4)
      {
        break;
      }

      v23[0] = v4;
      type metadata accessor for InferenceProviderAsset(0);
      swift_dynamicCast();
      v5 = v25;
      v6 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v25;
      swift_beginAccess();
      if (*(*&v6[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 48)] + 16))
      {
        v14 = v3[2];
        if (v3[3] <= v14)
        {
          sub_100080444(v14 + 1, v7, v8, v9, v10, v11, v12, v13, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], *v24, *&v24[8], *&v24[16], v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
        }

        v3 = v26;
        Hasher.init(_seed:)();
        sub_10001214C(v23);
        Hasher._finalize()();
        v15 = _HashTable.nextHole(atOrAfter:)();
        sub_1000DAD98((v15 >> 3) & 0x1FFFFFFFFFFFFFF8);
        *(v3[6] + 8 * v16) = v5;
        ++v3[2];
      }

      else
      {
      }
    }

    sub_1000DAF00();
  }

  else
  {

    sub_1000DAF44();
    return sub_100011E30(v17, v18, v19, v20);
  }

  return v3;
}

void sub_10003E06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_10000355C();
  a29 = v30;
  a30 = v38;
  v39 = v35;
  v40 = v34;
  if ((v34 & 0xC000000000000001) == 0)
  {
    if (v33)
    {
      v41 = v37;
      v42 = v36;
      v43 = (v35)(0);
      sub_1000DB38C();
      if (__CocoaSet.Index.age.getter() == *(v40 + 36))
      {
        sub_1000DB38C();
        a18 = __CocoaSet.Index.element.getter();
        swift_dynamicCast();
        v44 = a9;
        Hasher.init(_seed:)();
        v42(&a9);
        Hasher._finalize()();
        sub_100011E24();
        v47 = ~v46;
        while (1)
        {
          v48 = v45 & v47;
          if (((*(v40 + 56 + (((v45 & v47) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v45 & v47)) & 1) == 0)
          {
            goto LABEL_21;
          }

          v41(v49, v44);
          sub_10014B320();
          if (v43)
          {
            goto LABEL_15;
          }

          v45 = v48 + 1;
        }
      }

      __break(1u);
    }

    else if ((v31 & 0x8000000000000000) == 0 && 1 << *(v34 + 32) > v31)
    {
      if ((*(v34 + 8 * (v31 >> 6) + 56) >> v31))
      {
        if (*(v34 + 36) != v32)
        {
          __break(1u);
LABEL_15:
        }

        goto LABEL_17;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:

    __break(1u);
    goto LABEL_22;
  }

  if (v33)
  {
    sub_1000DB38C();
    a18 = __CocoaSet.element(at:)();
    v39(0);
    sub_1000358A4();
    swift_dynamicCast();
LABEL_17:
    sub_100005F10();
    return;
  }

LABEL_22:
  __break(1u);
}

void sub_10003E244()
{
  sub_1000055B0();
  v46 = v0;
  v1 = type metadata accessor for AssetCost();
  sub_100002BDC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100009C24();
  v47 = v5;
  sub_100002F1C();
  v7 = __chkstk_darwin(v6);
  v9 = v44 - v8;
  __chkstk_darwin(v7);
  v11 = v44 - v10;
  v12 = sub_10003DE74();
  sub_10003E5A4();
  sub_10003E8D4(v13, v12);
  v15 = v14;

  sub_10003E8D4(v16, v15);
  v18 = v17;
  AssetCost.init(onDeviceMemory:)();
  v19 = *(v3 + 16);
  v49 = v9;
  v50 = v1;
  v45 = v11;
  v19(v9, v11, v1);
  v44[2] = v18;
  if ((v18 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v20 = sub_100005B00();
    type metadata accessor for InferenceProviderAsset(v20);
    sub_1000056C4();
    sub_100011B14(v21, v22, &unk_1001720DC);
    Set.Iterator.init(_cocoa:)();
    v18 = v53;
    v23 = v54;
    v25 = v55;
    v24 = v56;
    v26 = v57;
  }

  else
  {
    sub_100011E24();
    v23 = v18 + 56;
    v25 = ~v27;
    sub_10000A5E8();
    v26 = v28 & v29;

    v24 = 0;
  }

  v44[1] = v25;
  v30 = (v25 + 64) >> 6;
  v48 = (v3 + 8);
  v31 = (v3 + 32);
  if (v18 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v32 = v24;
    v33 = v24;
    if (!v26)
    {
      break;
    }

LABEL_9:
    sub_1000062A0();
    v36 = v35 & v34;
    sub_10004D404();
    if (!v15)
    {
LABEL_15:
      sub_100019334(v18);
      v43 = v50;
      (*v31)(v46, v49, v50);

      (*v48)(v45, v43);
      sub_100002EEC();
      return;
    }

    while (1)
    {
      v38 = v18;
      v39 = v47;
      v40 = v49;
      static AssetCost.+ infix(_:_:)();

      v41 = v50;
      (*v48)(v40, v50);
      v42 = v39;
      v18 = v38;
      (*v31)(v40, v42, v41);
      v24 = v33;
      v26 = v36;
      if ((v38 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      v37 = __CocoaSet.Iterator.next()();
      if (v37)
      {
        v51 = v37;
        type metadata accessor for InferenceProviderAsset(0);
        sub_1000358A4();
        swift_dynamicCast();
        v15 = v52;
        v33 = v24;
        v36 = v26;
        if (v52)
        {
          continue;
        }
      }

      goto LABEL_15;
    }
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v30)
    {
      goto LABEL_15;
    }

    ++v32;
    if (*(v23 + 8 * v33))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10003E5A4()
{
  sub_1000055B0();
  v3 = v0;
  State = type metadata accessor for LoadState();
  sub_100002BDC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002B8C();
  sub_1000281B0();
  v8 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_1000183F4();
  swift_beginAccess();
  if ((*(v8 + v3) & 0xC000000000000001) == 0)
  {

    sub_1000DAF44();
    sub_100011E30(v29, v30, v31, v32);
    goto LABEL_22;
  }

  v9 = &_swiftEmptySetSingleton;
  v44 = &_swiftEmptySetSingleton;
  sub_10005FA6C();

  v36 = __CocoaSet.makeIterator()();
  HIDWORD(v35) = enum case for LoadState.loaded(_:);
  while (1)
  {
    v10 = __CocoaSet.Iterator.next()();
    if (!v10)
    {
      break;
    }

    v38[0] = v10;
    type metadata accessor for InferenceProviderAsset(0);
    sub_1000358A4();
    swift_dynamicCast();
    sub_100002D24();
    swift_beginAccess();
    (*(v6 + 104))(v1, HIDWORD(v35), State);
    sub_100002D0C();
    sub_100011B14(&dword_1001BA628, v11, &protocol conformance descriptor for LoadState);
    sub_1000DAF88();
    sub_1000DAF88();
    if (v41 == v39 && v42 == v40)
    {
LABEL_15:

      goto LABEL_16;
    }

    sub_100012D24();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000DB45C();

    if (v2)
    {
LABEL_16:
      v23 = sub_1000DB0E0();
      v24(v23);
      swift_endAccess();
LABEL_17:
      v25 = *(v9 + 2);
      if (*(v9 + 3) <= v25)
      {
        sub_1000DB474(v16, v17, v18, v19, v20, v21, v22, v25, v33, v34, v35, v36, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
      }

      v9 = v44;
      Hasher.init(_seed:)();
      sub_10001214C(v38);
      v26 = Hasher._finalize()();
      sub_100012B94(v26, *(v9 + 32));
      _HashTable.nextHole(atOrAfter:)();
      sub_1000119F0();
      sub_100027838(v27);
      sub_1000DB05C(v28);
    }

    else
    {
      type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
      sub_1000DAF88();
      sub_1000DAF88();
      if (v41 == v39 && v42 == v40)
      {
        goto LABEL_15;
      }

      sub_100012D24();
      _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1000DB45C();

      v14 = sub_1000DB0E0();
      v15(v14);
      swift_endAccess();
      if (v2)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_22:
  sub_100002EEC();
}

void sub_10003E8D4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v22[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    v3 = sub_10002A104();
    type metadata accessor for InferenceProviderAsset(v3);
    sub_1000059C0();
    sub_10000814C(v4, v5, &unk_1001720DC);
    sub_1000062B0();
    Set.Iterator.init(_cocoa:)();
    v2 = v22[2];
    v6 = v22[3];
    v7 = v22[4];
    v8 = v22[5];
    v9 = v22[6];
  }

  else
  {
    v8 = 0;
    sub_100012A00();
    v6 = v2 + 56;
    v7 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(v10 << v12);
    }

    else
    {
      v13 = v10;
    }

    v9 = v13 & *(v2 + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v8;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_12:
    sub_1000062A0();
    v18 = v17 & v16;
    v20 = *(*(v2 + 48) + ((v15 << 9) | (8 * v19)));

    if (!v20)
    {
LABEL_18:
      v21 = sub_1000060A4();
      sub_100007F18(v21);
      return;
    }

    while (1)
    {
      sub_10001A264(v22, v20);

      v8 = v15;
      v9 = v18;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for InferenceProviderAsset(0);
        swift_dynamicCast();
        v20 = v22[0];
        v15 = v8;
        v18 = v9;
        if (v22[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_18;
    }

    ++v14;
    if (*(v6 + 8 * v15))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10003EAE8(uint64_t a1)
{
  State = type metadata accessor for LoadState();
  v3 = *(State - 8);
  __chkstk_darwin(State);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for LoadState.loaded(_:), State);
  if (sub_100116D68(a1, v5))
  {
    v6 = 1;
  }

  else
  {
    v7 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
    v6 = sub_100116D68(a1 + *(v7 + 20), v5);
  }

  (*(v3 + 8))(v5, State);
  return v6 & 1;
}

unint64_t sub_10003EC04()
{
  v1 = v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  sub_100004CBC();
  swift_beginAccess();
  v2 = (v1 + *(_s6PolicyVMa_0(0) + 20));
  if (v2[1])
  {
    return *(*sub_100003370((v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog), *(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog + 24)) + 112);
  }

  v3 = *v2;
  if (*(*sub_100003370((v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog), *(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog + 24)) + 112) < v3)
  {
    return *(*sub_100003370((v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog), *(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog + 24)) + 112);
  }

  return v3;
}

uint64_t sub_10003ECC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10000CB70();
  sub_100003884();
  v13 = v12[58];
  type metadata accessor for _OSActivity();
  v12[65] = swift_initStackObject();
  v14 = sub_10001B160("Launching extension and taking assertion", 40, 2);
  v12[66] = v14;
  v15 = v12[58];
  if (*(v13 + 112))
  {
    v16 = v14;
    v17 = *(v15 + 120);
    if (v17)
    {
      [v17 pid];
      v18 = swift_task_alloc();
      v12[79] = v18;
      *v18 = v12;
      v18[1] = sub_1000A72D8;
      sub_100004CC8();

      return sub_10003F198();
    }

    else
    {
      if (qword_1001B8900 != -1)
      {
        sub_100005C18(&qword_1001B8900);
      }

      v32 = type metadata accessor for Logger();
      sub_100002FD0(v32, qword_1001B9FA0);
      v33 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      sub_100006390();
      if (os_log_type_enabled(v33, v34))
      {
        *sub_100007648() = 0;
        sub_1000031C4();
        _os_log_impl(v35, v36, v37, v38, v39, 2u);
        sub_10000706C();
      }

      type metadata accessor for ModelManagerError();
      sub_1000085DC();
      sub_10002EA7C(v40, v41, &protocol conformance descriptor for ModelManagerError);
      swift_allocError();
      sub_100006098();
      (*(v42 + 104))();
      swift_willThrow();
      sub_100004B50(v16 + 24, (v12 + 53));
      os_activity_scope_leave((v16 + 24));
      swift_endAccess();
      sub_10000C998();

      sub_100007A20();
      sub_100004CC8();

      return v44(v43, v44, v45, v46, v47, v48, v49, v50);
    }
  }

  else if (*(v15 + 164) == 1)
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18(&qword_1001B8900);
    }

    v21 = type metadata accessor for Logger();
    sub_100002FD0(v21, qword_1001B9FA0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (sub_100002F80(v23))
    {
      v24 = sub_100007648();
      sub_10000A240(v24);
      sub_1000059D8(&_mh_execute_header, v25, v26, "Failing launch of extension because previous extension instance is cleaning up");
      sub_100002F64();
    }

    type metadata accessor for ModelManagerError();
    sub_1000085DC();
    sub_10002EA7C(v27, v28, &protocol conformance descriptor for ModelManagerError);
    v12[67] = sub_10000C700();
    v29 = swift_task_alloc();
    v12[68] = v29;
    *v29 = v12;
    v29[1] = sub_1000A6B18;
    sub_100013E54();
    sub_100004CC8();

    return sub_1000A5930(v30);
  }

  else
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18(&qword_1001B8900);
    }

    v51 = type metadata accessor for Logger();
    sub_100002FD0(v51, qword_1001B9FA0);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();
    if (sub_100002F80(v53))
    {
      v54 = sub_100007648();
      sub_10000A240(v54);
      sub_1000059D8(&_mh_execute_header, v55, v56, "InferenceProviderExtensionConnection setCurrentState creating new sender part");
      sub_100002F64();
    }

    v57 = swift_task_alloc();
    v12[69] = v57;
    *v57 = v12;
    v57[1] = sub_100056CF0;
    sub_100004CC8();

    return sub_1000A88D0();
  }
}

uint64_t sub_10003F198()
{
  sub_100002BAC();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 24) = v3;
  *(v1 + 76) = v4;
  sub_1000071A8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10003F228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = [objc_opt_self() identifierWithPid:*(v12 + 76)];
  if (v15)
  {
    v16 = v15;
    sub_10000E2C0(0, &qword_1001BA4A0, RBSProcessHandle_ptr);
    v17 = v16;
    v37 = sub_10001B620(v17);
    if (qword_1001B8900 != -1)
    {
      sub_100005C18(&qword_1001B8900);
    }

    v38 = type metadata accessor for Logger();
    sub_100002FD0(v38, qword_1001B9FA0);
    v39 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_100006390();
    if (os_log_type_enabled(v39, v40))
    {
      *sub_100007648() = 0;
      sub_10000CC6C();
      _os_log_impl(v41, v42, v43, v44, v45, 2u);
      sub_100004B78();
    }

    v46 = *(v12 + 32);
    v67 = *(v12 + 24);

    _StringGuts.grow(_:)(30);

    type metadata accessor for InferenceProviderDescriptor();
    sub_10000509C();
    sub_10002EA7C(v47, v48, &protocol conformance descriptor for InferenceProviderDescriptor);
    v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v49);

    v50 = [objc_opt_self() targetWithPid:{objc_msgSend(v37, "pid")}];
    sub_100065020(&dword_1001BA4A8, &qword_100171010);
    sub_100005640();
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_100170BC0;
    sub_10000E2C0(0, &qword_1001BA4B0, RBSDomainAttribute_ptr);

    *(v51 + 32) = sub_10003A354(0xD000000000000016, 0x80000001001765B0, v67, v46);
    v52 = objc_allocWithZone(RBSAssertion);
    v53 = sub_10003A3E8(0xD00000000000001CLL, 0x8000000100176590, v50, v51);
    *(v12 + 16) = 0;
    v54 = [v53 acquireWithError:v12 + 16];
    v55 = *(v12 + 16);
    if (v54)
    {
      v56 = *(*(v12 + 40) + 168);
      *(swift_task_alloc() + 16) = v53;
      v57 = v55;

      os_unfair_lock_lock((v56 + 24));
      sub_10003F810((v56 + 16));
      os_unfair_lock_unlock((v56 + 24));

      sub_100003D04();

      __asm { BRAA            X2, X16 }
    }

    v58 = v55;
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18(&qword_1001B8900);
    }

    v18 = type metadata accessor for Logger();
    sub_100002FD0(v18, qword_1001B9FA0);
    v19 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_100006390();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v12 + 76);
      sub_100007698();
      sub_100003890();
      sub_10003EAA0();
      *v13 = 136315138;
      *(v12 + 72) = v21;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_1000239D4(v22, v23, v24, v25, v26, v27);
      sub_100007BA0();
      *(v13 + 4) = v14;
      sub_1000033FC();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      sub_100001F88();
      sub_10000706C();
    }

    type metadata accessor for ModelManagerError();
    sub_1000085DC();
    sub_10002EA7C(v33, v34, &protocol conformance descriptor for ModelManagerError);
    v35 = sub_10000A418();
    sub_100006098();
    (*(v36 + 104))();
    swift_willThrow();
  }

  *(v12 + 48) = v35;
  type metadata accessor for ModelManagerError();
  sub_1000085DC();
  sub_10002EA7C(v59, v60, &protocol conformance descriptor for ModelManagerError);
  *(v12 + 56) = sub_10000C700();
  v61 = swift_task_alloc();
  *(v12 + 64) = v61;
  *v61 = v12;
  v61[1] = sub_1000A6954;
  sub_100013E54();
  sub_100003D04();

  return sub_1000A5930(v62);
}

uint64_t sub_10003F83C(uint64_t a1)
{
}

uint64_t sub_10003F858(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_10003F89C()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  v4 = *v1;
  sub_100004B40();
  *v5 = v4;
  *(v6 + 232) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10003F9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  sub_10003FAA8(*(v12 + 216));
  v13 = *(v12 + 192);
  v14 = *(v12 + 200);
  v15 = *(v12 + 176);
  v16 = *(v12 + 144);
  v26 = *(v12 + 128);

  v14(v15, v16);
  v14(v13, v16);

  sub_100002F54();
  sub_1000062BC();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

void sub_10003FAA8(void *a1)
{
  if (a1)
  {
    v1 = qword_1001B8900;
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000641C(v3, qword_1001B9FA0);
    v13 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      v8 = [v13 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = sub_100004A3C(v9, v11, &v14);

      *(v6 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "InferenceProviderExtensionConnection setCurrentState invalidating assertion %s", v6, 0xCu);
      sub_100003324(v7);
    }

    [v13 invalidate];
  }
}

uint64_t sub_10003FC5C()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  v7 = *(v3 + 24);
  if (v0)
  {
    v8 = sub_1000A78D8;
  }

  else
  {
    v8 = sub_10003A4D4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10003FD9C()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);

    return _swift_task_switch(sub_1000A95F4, v7, 0);
  }

  else
  {
    sub_100001F00();

    return v8();
  }
}

uint64_t sub_10003FEB4()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 392) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10003FFC8()
{
  sub_100001ED0();
  v1 = *(v0 + 336);
  v2 = *(v0 + 248);

  sub_100002C70();
  sub_100039484(v2, v3, v4, v5, v6);
  sub_100004B50(v1 + 24, v0 + 184);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  sub_10001C130();

  sub_100002F54();

  return v7();
}

uint64_t sub_100040094()
{
  v2 = v0[40];
  v3 = v0[4];

  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    sub_100012DB0();
    sub_1000062D8();
    sub_100012BB4(4.8151e-34);
    sub_100005168();
    v7 = sub_100011B5C(v5, v6, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v8 = sub_1000060D8(v7);
    sub_100036E38(v8, v9);
    sub_100013E7C();

    v10 = sub_1000113C8();
    v11(v10, v1);
    sub_10000866C();
    sub_100011B5C(v12, v13, &protocol conformance descriptor for InferenceProviderDescriptor);
    sub_1000035E8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v14 = sub_10000588C();
    v70(v14);
    v15 = sub_100008004();
    sub_100004A3C(v15, v16, v17);
    sub_10000A868();

    *(v3 + 14) = v2;
    sub_1000033FC();
    _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    sub_10002A110();
    sub_1000039CC();

    sub_100002BD0();
  }

  v31 = sub_100013AE4(v23, v24, v25, v26, v27, v28, v29, v30, v54, v57, v60, v63);
  InferenceProviderAssetDescriptor.version.getter(v31, v32, v33, v34, v35, v36, v37, v38, v55, v58, v61, v64);
  v39 = AssetCost.onDeviceMemory.getter();
  v47 = sub_100007910(v39, v40, v41, v42, v43, v44, v45, v46, v56, v59, v62, v65, v66, v67);
  v48(v47);

  (v70)(v68, v69);
  v49 = swift_task_alloc();
  v0[43] = v49;
  *v49 = v0;
  sub_100002008(v49);
  v51 = sub_1000031B8(v50);

  return sub_100041158(v51, v52);
}

uint64_t sub_1000402B0()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1000402D8()
{
}

uint64_t sub_100040528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v33 = a7;
  v34 = a8;
  v32 = a6;
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v13 = sub_100065020(&qword_1001BD078, &qword_100173950);
  __chkstk_darwin(v13 - 8);
  v15 = &v32 - v14;
  v16 = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.end(_:);
  v17 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  sub_100009BFC(v15, 0, 1, v17);
  GenerativeFunctionsInstrumentationEvent.subtype.setter();
  v18 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  __chkstk_darwin(v18);
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = v32;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v19 = sub_100065020(&qword_1001BD090, &qword_100173970);
  __chkstk_darwin(v19 - 8);
  v21 = (&v32 - v20);
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition();
  v22 = swift_allocBox();
  v35 = v33;
  v36 = v34;
  static Buildable.with(_:)();
  *v21 = v22;
  v23 = enum case for GenerativeFunctionsInstrumentationMetadata.assetTransition(_:);
  v24 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  (*(*(v24 - 8) + 104))(v21, v23, v24);
  sub_100009BFC(v21, 0, 1, v24);
  result = GenerativeFunctionsInstrumentationEvent.metadata.setter();
  if (a9)
  {
    v26 = sub_100065020(&qword_1001BD080, &unk_100173958);
    __chkstk_darwin(v26 - 8);
    v28 = (&v32 - v27);
    swift_getErrorValue();
    v29 = v42;
    v30 = v43;
    swift_errorRetain();
    sub_1000BA718(v29, v30, v28);
    v31 = type metadata accessor for GenerativeFunctionsInstrumentationError();
    sub_100009BFC(v28, 0, 1, v31);
    GenerativeFunctionsInstrumentationEvent.error.setter();
  }

  return result;
}

uint64_t sub_100040900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100065020(&qword_1001BD088, &qword_100173968);
  __chkstk_darwin(v10 - 8);
  v12 = &v15[-v11];
  v13 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  static Buildable.with(_:)();
  sub_100009BFC(v12, 0, 1, v13);
  return GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.setter();
}

uint64_t sub_100040A30(uint64_t a1, uint64_t a2, char a3)
{
  GenerativeFunctionsInstrumentationMetadata.AssetTransition.memoryCostKB.setter();
  v4 = sub_100065020(&qword_1001BD0A8, &qword_100173988);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result();
  v8 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.failure(_:);
  if (a3)
  {
    v8 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result.success(_:);
  }

  (*(*(v7 - 8) + 104))(v6, *v8, v7);
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Result();
  sub_100009BFC(v6, 0, 1, v7);
  return GenerativeFunctionsInstrumentationMetadata.AssetTransition.result.setter();
}

void sub_100040B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1000055B0();
  v84 = v22;
  v82 = v23;
  v83 = v24;
  v26 = v25;
  v28 = v27;
  v81 = v29;
  v31 = v30;
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v33 = v32;
  sub_100004B1C();
  __chkstk_darwin(v34);
  sub_100004BF4();
  sub_100003058();
  v86 = v36;
  v87 = v35;
  v85 = *(v37 + 16);
  (*(v33 + 16))(v21, v31);
  sub_100041104();
  v89 = v28;

  v90 = v26;

  v38 = sub_100013554();
  v41 = sub_100009C8C(v38, v39, v40);
  sub_100016484(v41, v42);
  swift_errorRetain();
  v43 = OSSignposter.logHandle.getter();
  v44 = type metadata accessor for OSSignpostID();
  sub_100002BDC();
  v46 = v45;
  __chkstk_darwin(v47);
  sub_100002B8C();
  v50 = v49 - v48;
  OSSignpostIntervalState.signpostID.getter();
  v80 = static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    (*(v46 + 8))(v50, v44);
    (*(v33 + 8))(v21, v87);
LABEL_28:
    sub_100002EEC();
    return;
  }

  v77 = v21;
  v78 = v43;
  v51 = v87;
  v79 = v46;
  if ((v85 & 1) == 0)
  {

    v52 = v50;
    v53 = v86;
    if (v86)
    {
      v54 = v33;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (v86 >> 32)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_100011408();
  if (!v55)
  {
    sub_100005704();
    if (!(!v55 & v56))
    {
      v52 = v50;
      v54 = v33;

      v53 = &v91;
LABEL_10:
      type metadata accessor for OSSignpostError();
      sub_100002BDC();
      __chkstk_darwin(v57);
      sub_1000086BC();

      checkForErrorAndConsumeState(state:)();

      v58 = sub_100001F70();
      v59(v58);
      if (&enum case for OSSignpostError.doubleEnd(_:) && (sub_100003468(), v55))
      {
        v60 = 0;
        v61 = 0;
        v88 = "[Error] Interval already ended";
      }

      else
      {
        v62 = sub_100001F70();
        v63(v62);
        v88 = "assetTransitionIdentifier: %{public, signpost.description=attribute,public}s,\nassetIdentifier: %{public, signpost.description=attribute,public}s,\nassetVersion: %{public, signpost.description=attribute,public}s,\nmemoryCostKB: %{public, signpost.description=attribute,public}llu,\nresult: %{public, signpost.description=attribute,public}s,\nhasError: %{public, signpost.description=attribute,public}s";
        v61 = 2;
        v60 = 6;
      }

      v64 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v64 = v61;
      *(v64 + 1) = v60;
      *(v64 + 2) = 2082;
      sub_10002E9D0();
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      (*(v54 + 8))(v77, v51);
      v68 = sub_100004A3C(v65, v67, &v91);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2082;
      *(v64 + 14) = sub_100004A3C(v81, v89, &v91);
      *(v64 + 22) = 2082;
      if (v90)
      {
        v69 = v82;
      }

      else
      {
        v69 = 3157552;
      }

      if (v90)
      {
        v70 = v90;
      }

      else
      {
        v70 = 0xE300000000000000;
      }

      v71 = sub_100004A3C(v69, v70, &v91);

      *(v64 + 24) = v71;
      *(v64 + 32) = 2050;
      *(v64 + 34) = v83;
      *(v64 + 42) = 2082;
      if (v84)
      {
        v72 = 0x73736563637573;
      }

      else
      {
        v72 = 0x6572756C696166;
      }

      v73 = sub_100004A3C(v72, 0xE700000000000000, &v91);

      *(v64 + 44) = v73;
      *(v64 + 52) = 2082;
      if (a21)
      {
        v74 = 1702195828;
      }

      else
      {
        v74 = 0x65736C6166;
      }

      v75 = sub_10000CF80(v74);

      *(v64 + 54) = v75;
      v76 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v78, v80, v76, v53, v88, v64, 0x3Eu);
      sub_100012500();
      swift_arrayDestroy();
      sub_100003A4C();
      sub_100012A9C();

      (*(v79 + 8))(v52, v44);
      goto LABEL_28;
    }

    goto LABEL_31;
  }

LABEL_32:
  __break(1u);
}

unint64_t sub_100041104()
{
  result = qword_1001BB9A8;
  if (!qword_1001BB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB9A8);
  }

  return result;
}

uint64_t sub_100041158(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  return sub_100004B70(sub_100041178, a1);
}

uint64_t sub_100041178()
{
  sub_100001ED0();
  sub_100002D24();
  swift_beginAccess();
  sub_10000D154();
  sub_10004121C(v0, v1, v2);
  swift_endAccess();
  sub_100001F00();

  return v3();
}

uint64_t sub_10004121C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  State = type metadata accessor for LoadState();
  v7 = *(State - 8);
  __chkstk_darwin(State);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, State);
  sub_100011B5C(&qword_1001BA468, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v7 + 8);
  v11(v9, State);
  if ((v10 & 1) == 0)
  {
    v40 = a3;
    v42 = a1;
    v12 = enum case for LoadState.unloaded(_:);
    v13 = *(v7 + 104);
    v13(v9, enum case for LoadState.unloaded(_:), State);
    v41 = a2;
    v14 = sub_100116D68(a2, v9);
    v11(v9, State);
    if (v14)
    {
      v15 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
      a1 = v42;
      v16 = (v42 + *(v15 + 60));
      v17 = v16[3];
      v18 = v16[4];
      sub_100003370(v16, v17);
      (*(v18 + 32))(v17, v18);
LABEL_10:
      a2 = v41;
      goto LABEL_11;
    }

    v13(v9, v12, State);
    a1 = v42;
    v19 = sub_100116D68(v42, v9);
    v11(v9, State);
    if ((v19 & 1) == 0)
    {
      goto LABEL_10;
    }

    v20 = (a1 + *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 60));
    v21 = v20[3];
    v22 = v20[4];
    sub_100003370(v20, v21);
    v23 = v43;
    (*(v22 + 24))(v21, v22);
    if (v23)
    {
      if (qword_1001B8938 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000641C(v24, qword_1001BB478);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v44 = v43;
        *v27 = 136315138;
        v39 = v25;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v26;
        v31 = sub_100004A3C(v28, v29, &v44);

        *(v27 + 4) = v31;
        v32 = v30;
        v33 = v39;
        _os_log_impl(&_mh_execute_header, v39, v32, "finishPendingTransitionTask failed to lock asset: %s", v27, 0xCu);
        sub_100003324(v43);
      }

      else
      {
      }
    }

    a2 = v41;
  }

LABEL_11:
  v34 = *(v7 + 24);
  v34(a1, a2, State);
  v35 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v34(a1 + *(v35 + 20), a2, State);
  v36 = *(v35 + 28);

  *(a1 + v36) = 0;
  return result;
}

uint64_t sub_1000416B0()
{
  sub_100001EF4();
  v2 = *(v1 + 304);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = sub_100001F70();
  v2(v5);
  v6 = sub_100003DE0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100041814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v26 = *(v14 + 112);
  v27 = *(v14 + 88);

  v15 = sub_100001F70();
  v16(v15);

  sub_100001F00();
  sub_100003540();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, v27, a12, a13, a14);
}

uint64_t sub_1000418F8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
    v7 = *(v3 + 264);

    v8 = sub_1000D514C;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 264);
    v8 = sub_100041A08;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100041A08()
{
  sub_100001ED0();

  sub_100019B9C();
  sub_100005C78();
  v0 = sub_10000D01C();
  sub_1000192DC(v0, v1);
  sub_1000456B4();
  v2 = sub_100007660();
  sub_10003DA78(v2, v3);
  swift_endAccess();
  sub_100053B98();
  v4 = sub_1000189DC();
  v5(v4);

  sub_10000CB84();

  sub_100002F54();

  return v6();
}

uint64_t sub_100041AD0()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;

  v5 = *(v2 + 320);
  v6 = *(v2 + 264);
  if (v0)
  {
  }

  sub_10002C278(v5, &qword_1001BB3F8, &qword_100171D50);

  return _swift_task_switch(sub_100041C40, v6, 0);
}

uint64_t sub_100041C44()
{
  v173 = v0;
  v2 = *(v0 + 488);
  v3 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  (*(v5 + 16))(*(v0 + 312), *(v0 + 440) + *(v0 + 448), v4);
  (*(v5 + 104))(v3, v2, v4);
  sub_10002C7C4(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v6 = *(v0 + 192);
  v8 = *(v0 + 304);
  v7 = *(v0 + 312);
  v9 = *(v0 + 288);
  v10 = (*(v0 + 296) + 8);
  if (*(v0 + 184) == *(v0 + 200) && v6 == *(v0 + 208))
  {
    v15 = *v10;
    (*v10)(*(v0 + 304), *(v0 + 288));
    v16 = sub_100003754();
    v15(v16);

    goto LABEL_8;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v13 = *v10;
  (*v10)(v8, v9);
  v14 = sub_100003754();
  v13(v14);

  if (v12)
  {
LABEL_8:
    v6 = (v0 + 248);
    sub_10001A264(v172, *(v0 + 440));
  }

  v17 = *(v0 + 432);
  if (v17)
  {
    v18 = v17 - 1;
    *(v0 + 432) = v17 - 1;
    if (!__OFSUB__(v17, 1))
    {
      v19 = *(v0 + 424);
      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_16;
      }

      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v18 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v20 = *(v19 + 8 * v18 + 32);

LABEL_16:
        sub_10000CF98();
        swift_retain_n();
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        loga = v21;
        if (os_log_type_enabled(v21, v22))
        {
          v161 = *(v0 + 336);
          v165 = *(v0 + 272);
          v23 = swift_slowAlloc();
          v169 = sub_1000031E0();
          v172[0] = v169;
          *v23 = 136315650;

          *(v0 + 216) = InferenceProviderAssetDescriptor.description.getter();
          *(v0 + 224) = v24;

          v25._countAndFlagsBits = 8250;
          v25._object = 0xE200000000000000;
          String.append(_:)(v25);

          v163 = v22;
          v26 = *(v0 + 216);
          v27 = *(v0 + 224);
          v29 = *(v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
          v28 = *(v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
          sub_100003370((v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v29);
          v30 = sub_100012588();
          v31(v30);
          InferenceProviderDescriptor.description.getter();
          v32 = sub_10000CE94();
          v33(v32, v161);
          *(v0 + 232) = v26;
          *(v0 + 240) = v27;

          v34._countAndFlagsBits = v28;
          v34._object = v29;
          String.append(_:)(v34);

          v35 = sub_100004A3C(*(v0 + 232), *(v0 + 240), v172);

          *(v23 + 4) = v35;
          *(v23 + 12) = 1024;
          v36 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v20;
          sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v20, v0 + 136);
          LODWORD(v36) = v36[*(v165 + 56)];

          *(v23 + 14) = v36;

          sub_10002ABB4();
          *(v23 + 20) = v36;

          _os_log_impl(&_mh_execute_header, loga, v163, "Transitioning asset %s with update available %{BOOL}d and dynamic mode %{BOOL}d", v23, 0x18u);
          sub_100003324(v169);
          sub_100002F64();
          sub_100002BB8(v23);
        }

        else
        {
        }

        v37 = *(v0 + 272);
        v38 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        *(v0 + 448) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        v39 = &v38[v20];
        sub_100004BA0(&v38[v20], v0 + 40);
        if (v39[*(v37 + 56)] == 1)
        {
          type metadata accessor for AuditToken();
          sub_100003978();
          sub_100009BFC(v40, v41, v42, v43);
          v44 = swift_task_alloc();
          *(v0 + 456) = v44;
          *v44 = v0;
          sub_100007B00(v44);
        }

        else
        {
          if (*(v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) == 1)
          {
            v45 = swift_task_alloc();
            *(v0 + 464) = v45;
            *v45 = v0;
            v45[1] = sub_100053C74;
            sub_100003C58();
            sub_100007968();

            return sub_1000486EC();
          }

          type metadata accessor for AuditToken();
          sub_100003978();
          sub_100009BFC(v48, v49, v50, v51);
          v52 = swift_task_alloc();
          *(v0 + 472) = v52;
          *v52 = v0;
          sub_100007EB0(v52);
        }

        sub_100003C58();
        sub_100007968();

        return sub_10002BA5C();
      }

      __break(1u);
LABEL_47:
      v92 = v9;
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.fault.getter();
      if (sub_100006168(v94))
      {
        v95 = sub_100007698();
        v96 = sub_1000031E0();
        v172[0] = v96;
        *v95 = 136315138;
        type metadata accessor for InferenceProviderAsset(0);
        sub_100002E08();
        sub_10002C7C4(v97, v98, &unk_1001720DC);

        v99 = Set.description.getter();
        v101 = v100;

        v102 = sub_100004A3C(v99, v101, v172);

        *(v95 + 4) = v102;
        sub_100007CF4(&_mh_execute_header, v103, v104, "All remaining assets that need transitioning have failed to unload or move to dynamic, %s");
        sub_100003324(v96);
        sub_100012A9C();
        sub_100002F64();
      }

      v105 = *(v0 + 392);
      v107 = *(v0 + 368);
      v106 = *(v0 + 376);
      type metadata accessor for ModelManagerError();
      sub_10000528C();
      sub_10002C7C4(v108, v109, &protocol conformance descriptor for ModelManagerError);
      sub_100008194();
      sub_100006098();
      (*(v110 + 104))();
      swift_willThrow();

      v1 = *(v106 + 8);
      v1(v105, v107);
      goto LABEL_55;
    }

    __break(1u);
  }

  else
  {
    v6 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    v55 = sub_100002F80(v54);
    v7 = *(v0 + 424);
    if (v55)
    {
      v56 = sub_100007648();
      *v56 = 0;

      sub_100010C24(&_mh_execute_header, v57, v58, "Finished transitioning assets");
      sub_100002BB8(v56);
      goto LABEL_33;
    }
  }

LABEL_33:

  if (sub_100019684())
  {

    v59 = swift_task_alloc();
    *(v0 + 480) = v59;
    sub_100065020(&qword_1001BB430, &qword_100171E18);
    *v59 = v0;
    sub_100019AF4();
    v174 = &protocol witness table for Never;
    sub_1000058D8(&type metadata for Never);
    sub_100007968();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v60, v61, v62);
  }

  v63 = sub_100010EB0();
  v64 = v63;
  if (v63 >> 62)
  {
    goto LABEL_62;
  }

  if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_63:

    Logger.logObject.getter();
    v141 = static os_log_type_t.default.getter();
    if (sub_100002F80(v141))
    {
      v142 = sub_100007648();
      sub_10000A240(v142);
      sub_100003DD0();
      _os_log_impl(v143, v144, v145, v146, v147, 2u);
      sub_100002F64();
    }

    sub_100003630();
    v148 = sub_100006348();
    (v1)(v148);
    sub_100003978();
    sub_100009BFC(v149, v150, v151, v7);
LABEL_66:
    v152 = sub_100006588();
    (v1)(v152);

    sub_100001F00();
    goto LABEL_67;
  }

LABEL_39:
  sub_10002CC90(v64);
  sub_100036758();
  sub_100019274();
  v68 = sub_10002D264(v65, v66, v67);
  v9 = v69;
  v157 = v7;

  v7 = *(v9 + 16);
  if (!v7)
  {
    goto LABEL_47;
  }

  v70 = *(v0 + 368);
  v64 = *(v0 + 376);
  v160 = *(v0 + 272);
  v71 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v71);
  v155 = *(v72 + 64) + 15;
  v159 = swift_task_alloc();
  sub_100003978();
  sub_100009BFC(v73, v74, v75, v70);
  v164 = v64 + 16;
  v158 = v68;

  v76 = 0;
  v156 = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v166 = (v64 + 8);
  v162 = v9;
  while (1)
  {
    if (v76 >= v7)
    {
      __break(1u);
LABEL_62:
      if (!sub_10001890C())
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    sub_10000A980();
    v77 = *(v9 + 8 * v76 + 32);
    v78 = swift_task_alloc();
    v79 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v77, v0 + 64);
    sub_10001938C(v79 + v77, v1);
    swift_task_alloc();
    v64 = sub_10002B0EC();

    sub_100018A64();
    v80 = sub_100013EE0();
    v64(v80);
    v81 = sub_1000193F0(v1);
    sub_100011990(v81, v82, v83, v84, v85, v86, v87, v88, v155, v156, v157, v158, v159, v160, v162, v164, v166, v167, v168);
    v1 = *v166;
    v89 = sub_10000CDA4();
    (v1)(v89);

    v90 = static Date.> infix(_:_:)();

    if (v90)
    {
      break;
    }

    ++v76;
    v1(v78, *(v0 + 368));

    v9 = v162;
    v7 = *(v162 + 16);
    if (v76 == v7)
    {

      v91 = v162;

      goto LABEL_51;
    }
  }

  v111 = *(v0 + 368);
  v112 = *(v0 + 376);

  v91 = v162;

  sub_10002C278(v159, &qword_1001BBA80, &qword_100172440);
  (*(v112 + 32))(v159, v78, v111);
  sub_1000070D0(v159);

LABEL_51:
  v113 = *(v0 + 368);
  v114 = swift_task_alloc();
  sub_10002CC20(v159, v114);
  sub_100007204();
  sub_10002C278(v114, &qword_1001BBA80, &qword_100172440);

  if (v113 != 1)
  {
    sub_1000082B4();
    sub_100003904();
    (v64)();
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = *(v0 + 368);
      v129 = sub_100007698();
      *v129 = 134217984;
      sub_100004BA0(v159, v0 + 112);
      swift_task_alloc();
      v130 = sub_10000CDA4();
      sub_10002CC20(v130, v131);
      v132 = sub_10000205C();
      v60 = sub_10000C6C0(v132, v133, v128);
      if (v60 == 1)
      {
        __break(1u);
        return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v60, v61, v62);
      }

      v134 = sub_1000456E8();
      v135 = sub_10000F200();
      (v1)(v135);
      v136 = sub_100001F70();
      (v1)(v136);

      *(v129 + 4) = v134;
      sub_1000080F4(&_mh_execute_header, v137, v127, "Additional assets need transitioning, next task wake in %f seconds");
      sub_100002BB8(v129);

      v1(log, v128);
    }

    else
    {

      v138 = sub_10000F200();
      (v1)(v138);
      v139 = sub_100001F70();
      (v1)(v139);
    }

    v140 = *(v0 + 256);
    sub_100004BA0(v159, v0 + 88);
    sub_10002CC20(v159, v140);
    sub_10002C278(v159, &qword_1001BBA80, &qword_100172440);

    goto LABEL_66;
  }

  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v115, v116))
  {
    v76 = sub_100007698();
    v117 = sub_1000031E0();
    v172[0] = v117;
    *v76 = 136315138;
    v118 = sub_1001196B4(v158, v91);
    v120 = sub_100004A3C(v118, v119, v172);

    *(v76 + 4) = v120;
    sub_1000034C8(&_mh_execute_header, v121, v122, "Remaining transition candidates %s generated task wake times in the past.  Ending asset transition task");
    sub_100003324(v117);
    sub_100002BB8(v117);
    sub_100012A9C();
  }

  v92 = sub_1000076D8();
  sub_10000528C();
  sub_10002C7C4(v123, v124, &protocol conformance descriptor for ModelManagerError);
  sub_10000A418();
  sub_100006098();
  (*(v125 + 104))();
  swift_willThrow();

  v1(v76, v77);
  sub_10002C278(v159, &qword_1001BBA80, &qword_100172440);

LABEL_55:
  sub_100012894();
  (v1)(v92);

  sub_100001F00();
LABEL_67:
  sub_100007968();

  return v153();
}

uint64_t sub_100042BE4(char a1)
{
  *(v1 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask) = 0;

  if (a1)
  {
    result = sub_10003DC64();
    if (result)
    {

      return sub_100043844();
    }
  }

  return result;
}

void sub_100042C44()
{
  sub_100003884();
  sub_100005CE0();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();

  sub_100001F00();
  sub_100004CC8();

  __asm { BRAA            X1, X16 }
}

BOOL sub_100042D00()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100042D18()
{

  return sub_10001E72C(v0 + 128, v0 + 184, v1, v2);
}

void sub_100042DC4()
{
  sub_1000055B0();
  v23 = v0;
  v1 = sub_1000071D0();
  v3 = sub_100065020(v1, v2);
  sub_100002BDC();
  v5 = v4;
  sub_100004B1C();
  __chkstk_darwin(v6);
  sub_10014B090();
  sub_1000081B4();
  sub_100006570();
  sub_1000082D4(v7, v8, v9, v10);
  sub_100012484();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_100011E24();
  v11 = v5 + 8;
  do
  {
    sub_10014B174();
    if ((v12 & 1) == 0)
    {
      v18 = 1;
      v11 = v23;
      goto LABEL_9;
    }

    v13 = sub_100013870();
    v14(v13);
    sub_1000039B4();
    sub_1000082D4(&qword_1001B9508, &qword_1001B94F0, &unk_100172060, v15);
    sub_100025DE0();
    dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = sub_10014B374();
    v17(v16);
  }

  while ((v3 & 1) == 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100042F98();
  }

  v20 = sub_10014B030();
  v21(v20);
  sub_100046888();
  v18 = 0;
  *v22 = v24;
LABEL_9:
  sub_100009BFC(v11, v18, 1, v3);
  sub_100002EEC();
}

uint64_t sub_100042FBC()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

void *sub_100042FD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + v1 + 24);

  return sub_100003370((a1 + v1), v3);
}

uint64_t sub_100042FEC()
{
  sub_100002BAC();
  *(v1 + 56) = v0;
  *(v1 + 160) = v2;
  v3 = type metadata accessor for AssetCost();
  *(v1 + 64) = v3;
  sub_100002F44(v3);
  *(v1 + 72) = v4;
  *(v1 + 80) = sub_100002C58();
  v5 = type metadata accessor for AssetPolicy();
  *(v1 + 88) = v5;
  sub_100002F44(v5);
  *(v1 + 96) = v6;
  *(v1 + 104) = sub_100002C58();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

void sub_1000430E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = *(v14 + 96);
  v15 = *(v14 + 104);
  v17 = *(v14 + 88);
  v18 = *(v14 + 56);
  v19 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  sub_100004CBC();
  swift_beginAccess();
  (*(v16 + 16))(v15, v18 + v19, v17);
  v20 = sub_100001F70();
  v22 = v21(v20);
  if (v22 == enum case for AssetPolicy.standard(_:))
  {
    if (*(v14 + 160))
    {

      sub_100001F00();
      sub_100003540();

      v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      sub_100046B5C();
      v33 = AssetCost.onDeviceMemory.getter();
      v34 = sub_100003754();
      v35(v34);
      v36 = sub_10003EC04();
      if (sub_10004351C() && v36 >= v33)
      {
        sub_100043844();
        sub_100043D74();
        v37 = swift_task_alloc();
        *(v14 + 152) = v37;
        *v37 = v14;
        sub_1000DAC80(v37);
        sub_100003540();

        sub_1000440E8();
      }

      else
      {
        v39 = _swiftEmptyArrayStorage;
        *(v14 + 40) = _swiftEmptyArrayStorage;
        *(v14 + 48) = _swiftEmptyArrayStorage;
        sub_1000C1374();
        v41 = v40;
        v42 = sub_10000E8DC(v40);
        if (v42)
        {
          v43 = v42;
          v53 = v33;
          if (v42 < 1)
          {
            __break(1u);
            return;
          }

          v44 = 0;
          v45 = _swiftEmptyArrayStorage;
          do
          {
            if ((v41 & 0xC000000000000001) != 0)
            {
              v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v46 = *(v41 + 8 * v44 + 32);
            }

            if (*(v46 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) == 1)
            {

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v47 = *((*(v14 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((*(v14 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v47 >> 1)
              {
                sub_1000127D4(v47);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              sub_10000CD1C();
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v45 = *(v14 + 40);
            }

            else if (*(v46 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_isCacheable) == 1 && v36 >= v53)
            {
            }

            else
            {

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v49 = *((*(v14 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((*(v14 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v49 >> 1)
              {
                sub_1000127D4(v49);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              sub_100005980();
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v39 = *(v14 + 48);
            }

            ++v44;
          }

          while (v43 != v44);
        }

        else
        {
          v45 = _swiftEmptyArrayStorage;
        }

        *(v14 + 120) = v39;
        *(v14 + 128) = v45;

        v50 = swift_task_alloc();
        *(v14 + 136) = v50;
        *v50 = v14;
        v50[1] = sub_1000CCDD4;
        sub_100003540();

        sub_1000CD7D8(v51);
      }
    }
  }

  else if (v22 == enum case for AssetPolicy.unloadCached(_:))
  {
    v31 = swift_task_alloc();
    *(v14 + 112) = v31;
    *v31 = v14;
    v31[1] = sub_1000CCCDC;
    sub_100003540();

    sub_1000CD0BC();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    sub_100003540();
  }
}

BOOL sub_10004351C()
{
  v1 = type metadata accessor for AssetPolicy();
  sub_100002BDC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002B8C();
  v7 = v6 - v5;
  v8 = v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  sub_100004BA0(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy, v11);
  (*(v3 + 16))(v7, v8, v1);
  v9 = sub_100043638();
  (*(v3 + 8))(v7, v1);
  return (v9 & 1) != 0 && *(v8 + *(_s6PolicyVMa_0(0) + 28)) > 0.0;
}

uint64_t sub_100043638()
{
  v1 = v0;
  v2 = type metadata accessor for AssetPolicy();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = enum case for AssetPolicy.unloadCached(_:);
  (*(v3 + 104))(&v21 - v10, enum case for AssetPolicy.unloadCached(_:), v2);
  v13 = *(v3 + 16);
  v13(v9, v1, v2);
  v14 = *(v3 + 88);
  v15 = v14(v9, v2);
  v16 = 0;
  v17 = enum case for AssetPolicy.standard(_:);
  if (v15 != enum case for AssetPolicy.standard(_:))
  {
    if (v15 != v12)
    {
      goto LABEL_9;
    }

    v16 = 1;
  }

  v22 = v16;
  v13(v6, v11, v2);
  v18 = v14(v6, v2);
  if (v18 == v17)
  {
    v19 = 0;
LABEL_8:
    (*(v3 + 8))(v11, v2);
    return v22 < v19;
  }

  if (v18 == v12)
  {
    v19 = 1;
    goto LABEL_8;
  }

LABEL_9:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100043844()
{
  v1 = v0;
  v2 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v3 = sub_100002F04(v2);
  __chkstk_darwin(v3);
  result = sub_10004351C();
  if (result)
  {
    v5 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask;
    if (!*(v0 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask))
    {
      result = sub_10003DC64();
      if (result)
      {
        if (qword_1001B8A78 != -1)
        {
          sub_10000877C(&qword_1001B8A78);
        }

        v6 = type metadata accessor for Logger();
        sub_100002FD0(v6, qword_1001BCD78);

        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v7, v8))
        {
          v9 = sub_100007698();
          *v9 = 134217984;
          v10 = v1 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
          sub_100004BA0(v1 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy, v18);
          *(v9 + 4) = *(v10 + *(_s6PolicyVMa_0(0) + 28));
          _os_log_impl(&_mh_execute_header, v7, v8, "Starting task to transition assets after %f seconds", v9, 0xCu);
          sub_100002BB8(v9);
        }

        type metadata accessor for TaskPriority();
        sub_100003978();
        sub_100009BFC(v11, v12, v13, v14);
        v15 = swift_allocObject();
        swift_weakInit();
        v16 = swift_allocObject();
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = v15;
        sub_1000652FC();
        *(v1 + v5) = v17;
      }
    }
  }

  return result;
}

uint64_t sub_100043A6C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043AA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100043AE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v7;
  swift_beginAccess();
  v23 = v12;
  v13 = sub_10001938C(v12, v6);
  __chkstk_darwin(v13);
  v15 = *(v4 + 32);
  v14 = *(v4 + 36);
  v24 = v4;
  v16 = &v6[v14];
  v17 = &v6[v15];
  sub_10002B0EC();
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  (*(v9 + 16))(v11, v18, v8);
  sub_1000193F0(v6);
  swift_beginAccess();
  _s6PolicyVMa_0(0);
  static Date.+ infix(_:_:)();
  v19 = *(v9 + 8);
  v19(v11, v8);
  v20 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v19(v11, v8);
  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = v23[*(v24 + 24)] ^ 1;
  }

  return v21 & 1;
}

uint64_t sub_100043D74()
{
  v1 = v0;
  v2 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v3 = sub_100002F04(v2);
  __chkstk_darwin(v3);
  v4 = type metadata accessor for AssetPolicy();
  sub_100002BDC();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = v1 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  sub_100004BA0(v1 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy, v27);
  (*(v6 + 16))(v9, v10, v4);
  v11 = sub_100043638();
  result = (*(v6 + 8))(v9, v4);
  if (v11)
  {
    result = _s6PolicyVMa_0(0);
    if (*(v10 + *(result + 24)) > 0.0)
    {
      v13 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask;
      if (!*(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask + v1))
      {
        v14 = result;
        result = sub_10011CDC8();
        if (result)
        {
          if (qword_1001B8A88 != -1)
          {
            sub_100011558(&qword_1001B8A88);
          }

          v15 = type metadata accessor for Logger();
          sub_10000641C(v15, qword_1001BD218);
          sub_100003170();

          v16 = Logger.logObject.getter();
          v17 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v16, v17))
          {
            v18 = sub_100007698();
            *v18 = 134217984;
            *(v18 + 4) = *(v10 + *(v14 + 24));
            _os_log_impl(&_mh_execute_header, v16, v17, "Starting task to purge inactive assets after %f seconds", v18, 0xCu);
            sub_100012684();
          }

          type metadata accessor for TaskPriority();
          sub_100003978();
          sub_100009BFC(v19, v20, v21, v22);
          v23 = swift_allocObject();
          swift_weakInit();
          v24 = swift_allocObject();
          v24[2] = 0;
          v24[3] = 0;
          v24[4] = v23;
          sub_1000652FC();
          *&v13[v1] = v25;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100044054()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004408C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000440E8()
{
  sub_100002BAC();
  *(v1 + 16) = v0;
  v2 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v2);
  *(v1 + 24) = sub_100002C58();
  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10004416C()
{
  sub_100003884();
  if (sub_100019684())
  {
    v1 = *(v0 + 16);
    v2 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assetVersionChangeUnloadTask;
    if (!*(v1 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assetVersionChangeUnloadTask) && sub_1000E7B78())
    {
      if (qword_1001B8950 != -1)
      {
        sub_1000051D8();
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100002FD0(v3, qword_1001BBA68);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = sub_100007648();
        sub_10000BF10(v6);
        sub_100013624(&_mh_execute_header, v4, v5, "Starting task to unload assets due to pending version change");
        sub_100002BD0();
      }

      type metadata accessor for TaskPriority();
      sub_100003978();
      sub_100009BFC(v7, v8, v9, v10);
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v11;
      sub_1000652FC();
      *(v1 + v2) = v13;
    }
  }

  sub_100001F00();

  return v14();
}

uint64_t sub_100044334()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004436C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000443AC()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000444A4()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_10004450C()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100044604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock.Instant();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_1000448A8, 0, 0);
}

uint64_t sub_100044758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = sub_1000DB0B0();
  v17(v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = sub_1000038BC(v19);
  v21 = *(v14 + 112);
  v22 = *(v14 + 72);
  if (v20)
  {
    sub_10000A05C();
    swift_slowAlloc();
    a10 = v21;
    sub_10000A45C();
    swift_slowAlloc();
    sub_10003EAA0();
    *v21 = 136315138;
    sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    sub_100042FBC();
    v23 = sub_1000DABA4();
    (v21)(v23);
    v24 = sub_10000CD1C();
    sub_100004A3C(v24, v25, v26);
    sub_100005974();

    *(v21 + 4) = v22;
    sub_1000033FC();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    sub_100003324(v15);
    sub_1000039CC();

    sub_10000BFCC();
  }

  else
  {

    v32 = sub_100011BF0();
    (v21)(v32);
  }

  sub_100001F00();
  sub_100003540();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000448A8()
{
  sub_100003884();
  v1 = *(v0 + 152);
  type metadata accessor for _OSActivity();
  *(v0 + 216) = swift_initStackObject();
  *(v0 + 224) = sub_10001B160("Transition Assets", 17, 2);
  sub_100004BA0(v1 + 16, v0 + 56);
  v2 = type metadata accessor for Date();
  *(v0 + 232) = v2;
  sub_100002BDC();
  *(v0 + 240) = v3;
  *(v0 + 248) = *(v4 + 64);
  *(v0 + 256) = sub_100002C58();
  v5 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v5);
  *(v0 + 264) = sub_100002C58();
  Strong = swift_weakLoadStrong();
  *(v0 + 272) = Strong;
  if (Strong)
  {
    v7 = swift_task_alloc();
    *(v0 + 280) = v7;
    *v7 = v0;
    sub_100011538(v7);
    sub_100004CC8();

    return sub_100010CFC();
  }

  else
  {
    sub_100003978();
    sub_100009BFC(v10, v11, v12, v2);
    sub_10002C278(*(v0 + 264), &qword_1001BBA80, &qword_100172440);

    *(v0 + 145) = 1;

    if (qword_1001B8A78 != -1)
    {
      sub_10000877C(&qword_1001B8A78);
    }

    v13 = type metadata accessor for Logger();
    sub_100002FD0(v13, qword_1001BCD78);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (sub_100002F80(v15))
    {
      v16 = sub_100007648();
      sub_10000A240(v16);
      sub_100003DD0();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      sub_100002F64();
    }

    sub_100004C24();
    v22 = swift_weakLoadStrong();
    *(v0 + 336) = v22;
    if (!v22)
    {
      sub_100005CE0();
      os_activity_scope_leave((v14 + 24));
      swift_endAccess();

      sub_100001F00();
      sub_100004CC8();

      __asm { BRAA            X1, X16 }
    }

    sub_100004CC8();

    return _swift_task_switch(v23, v24, v25);
  }
}

uint64_t sub_100044BD4()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100001F70();
  v4(v3);
  v5 = sub_100003DE0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100044D24()
{
  sub_100001ED0();

  sub_100002F54();

  return v0();
}

uint64_t sub_100044DA0()
{
  sub_10000639C();
  sub_100003884();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v6 + 112) = v0;

  v7 = sub_100003754();
  v8(v7);

  sub_1000059F8();
  sub_100003D20();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100044F0C()
{
  sub_100001ED0();
  ModelXPCRequest.CancelSessionRequest.Response.init()();
  v0 = sub_100065020(&qword_1001BE640, &qword_1001755B0);
  sub_100018E50(v0);

  sub_100002F54();

  return v1();
}

uint64_t sub_100044FA8()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100001F70();
  v4(v3);
  v5 = sub_100003DE0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000450F8()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100001F70();
  v4(v3);
  v5 = sub_100003DE0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100045248()
{
  sub_10000639C();
  sub_100003884();

  sub_100003370((*(v0 + 48) + 304), *(*(v0 + 48) + 328));
  v1 = sub_100005E60();
  v2(v1);

  sub_100001F00();
  sub_100003D20();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100045350()
{
  sub_100001ED0();
  ModelXPCRequest.DeleteSessionRequest.Response.init()();
  sub_100065020(&qword_1001BE650, &qword_1001755F0);
  sub_100006194();
  swift_storeEnumTagMultiPayload();

  sub_100002F54();

  return v0();
}

BOOL sub_1000453F0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

unint64_t sub_10004543C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_10000E8DC(a3);
  v7 = result;
  while (v7)
  {
    if (__OFSUB__(v7--, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }

      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v9 = *(a3 + 32 + 8 * v7);
    }

    v10 = v9;
    a1(&v10);

    if (v3)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_100045518()
{
  v1 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  v2 = sub_100002F04(v1);
  __chkstk_darwin(v2);
  v3 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v4 = v0 + *(v3 + 44);
  sub_100042DC4();
  v5 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  result = sub_100015684(v5);
  if (v4 != 1)
  {
    type metadata accessor for Date();
    sub_100002BDC();
    __chkstk_darwin(v7);
    sub_100002B8C();
    static Date.now.getter();
    v8 = sub_10000A0B0(*(v3 + 36));
    return v9(v8);
  }

  return result;
}

unint64_t sub_100045694(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_100004A3C(v4, v3, va);
}

uint64_t sub_1000456B4()
{
  *(v0 + *(v1 + 24)) = 0;

  return swift_beginAccess();
}

double sub_1000456E8()
{

  Date.timeIntervalSince(_:)();
  return result;
}

uint64_t sub_100045708(uint64_t a1)
{

  return sub_10002CC20(v1, a1);
}

uint64_t sub_10004575C()
{
}

void sub_10004578C()
{

  sub_1001484C4(v0, 0, sub_100142578);
}

uint64_t sub_1000457CC()
{
  sub_100001ED0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10006F558;

  return sub_100044604(v3, v4, v5, v6);
}

void sub_10004587C()
{
  sub_1000055B0();
  sub_1000031F8(v1, v2, v3);
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  sub_100004B1C();
  __chkstk_darwin(v4);
  sub_100008290();
  sub_100008458(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_removeSessionPostString);
  v5 = sub_10000890C();
  v6(v5);
  sub_100018380();
  v7 = sub_100013554();
  v10 = sub_100009C8C(v7, v8, v9);
  sub_100016484(v10, v11);
  v12 = OSSignposter.logHandle.getter();
  v13 = type metadata accessor for OSSignpostID();
  sub_100002BDC();
  __chkstk_darwin(v14);
  sub_100002B8C();
  sub_10000AA34();
  v48 = static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v47 = v13;
  if ((v0 & 1) == 0)
  {
    if (!v49)
    {
      __break(1u);
LABEL_5:

      v15 = sub_100019CA0();
      v16(v15, v13);
      v17 = sub_10000A28C();
      v18(v17);
LABEL_16:
      sub_100002EEC();
      return;
    }

LABEL_10:
    v22 = type metadata accessor for OSSignpostError();
    v45 = &v45;
    sub_100002BDC();
    v24 = v23;
    __chkstk_darwin(v25);
    sub_100002B8C();
    sub_100004BF4();

    checkForErrorAndConsumeState(state:)();

    v26 = sub_100012DEC();
    v27(v26);
    if (&enum case for OSSignpostError.doubleEnd(_:) && (sub_100003468(), v20))
    {
      v28 = 0;
      v46 = "[Error] Interval already ended";
    }

    else
    {
      v29 = v24[1];
      ++v24;
      v29(v13, v22);
      v46 = "sessionIdentifier: %{public, signpost.description=attribute,public}s\nresult: %{public, signpost.description=attribute,public}ld";
      v28 = 2;
    }

    v30 = sub_1000060F4();
    v31 = sub_1000031E0();
    v32 = sub_100012AB8(v31);
    sub_100004A3C(v32, v33, &v50);
    sub_100061AE8();
    *(v30 + 4) = v28;
    v34 = sub_10000A28C();
    v35(v34);
    *(v30 + 12) = 2050;
    type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult();
    sub_100002BDC();
    __chkstk_darwin(v36);
    sub_1000086BC();
    sub_10000A7DC();
    v37 = GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.rawValue.getter();
    v38 = sub_100001F70();
    v39(v38);
    *(v30 + 14) = v37;
    v40 = OSSignpostID.rawValue.getter();
    sub_10000F160(&_mh_execute_header, v41, v42, v40);
    sub_100003324(v24);
    sub_100002BB8(v24);
    sub_100002BB8(v30);

    v43 = sub_100019CA0();
    v44(v43, v47);
    goto LABEL_16;
  }

  sub_10000A46C();
  if (v19)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_100011408();
  if (!v20)
  {
    sub_100005704();
    if (!(!v20 & v21))
    {
      sub_10001382C();
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_100045C30()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_1000060A4();
  v4(v3);
  v5 = sub_100003000();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100045D88()
{
  sub_100003884();
  sub_100009DFC();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_10000A2E0(v1);

  return sub_100045E1C(v3, v4, v5, v6, v7);
}

uint64_t sub_100045E1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 32) = a4;
  return _swift_task_switch(sub_1000470FC, a5, 0);
}

uint64_t sub_100045E4C()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2112;

  return swift_errorRetain();
}

uint64_t sub_100045E88()
{
  sub_1000094B0();
  sub_10000636C();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *(v4 + 48);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v9 + 200) = v0;

  sub_10000ECD8(v6, &qword_1001B9CD0, &qword_100170778);
  v10 = sub_100003754();
  v5(v10);
  sub_1000059F8();
  sub_100006378();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100046028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  sub_100003284();
  a20 = v22;
  (*(v22 + 160))(*(v22 + 112), *(v22 + 128), *(v22 + 88));
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  v27 = sub_1000038BC(v26);
  v28 = *(v22 + 176);
  v29 = *(v22 + 112);
  if (v27)
  {
    sub_100007698();
    v30 = sub_100003890();
    a11 = v30;
    *v28 = 136315138;
    sub_100005070();
    sub_1000082D4(v31, v32, v33, v34);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v38 = sub_100005E8C();
    (v28)(v38);
    sub_100004A3C(v35, v37, &a11);
    sub_100012E8C();
    *(v28 + 4) = v29;
    sub_1000033FC();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    sub_100003324(v30);
    sub_100004B78();
    sub_10000706C();
  }

  else
  {

    v44 = sub_100005E8C();
    (v28)(v44);
  }

  v45 = *(v22 + 176);
  v56 = *(v22 + 72);
  v57 = *(v22 + 48);
  (*(v22 + 160))(*(v22 + 104), *(v22 + 128), *(v22 + 88));
  ModelXPCRequest.CreateSessionRequest.Response.init(sessionID:)();
  v46 = sub_100036724();
  v45(v46);
  sub_100065020(&qword_1001BE658, &unk_100175610);
  swift_storeEnumTagMultiPayload();

  sub_100002F54();
  sub_100003540();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, v56, v57, a11, a12, a13, a14);
}

uint64_t EventReporterWrapper.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100046278()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (v0)
  {
    sub_1000059F8();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    sub_100001F00();

    return v10();
  }
}

uint64_t sub_10004638C()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_1000059F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000464A4(uint64_t a1)
{
}

uint64_t sub_1000464C0()
{
}

uint64_t sub_1000464D8()
{

  return swift_task_alloc();
}

uint64_t sub_10004651C()
{
  v2 = *(v0 + 304);
  v3 = *(v0 + 160);

  return sub_100009BFC(v3, 1, 1, v2);
}

uint64_t sub_10004655C(uint64_t a1)
{

  return sub_10000C6C0(v1 + v2, 1, a1);
}

void sub_10004657C()
{
  sub_10000A274();
  v1 = v0;
  v3 = v2;
  sub_100065020(&qword_1001B94D0, &unk_100171E80);
  sub_100002BDC();
  __chkstk_darwin(v4);
  sub_1000DB2B0();
  v5 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v6 = sub_100002F04(v5);
  __chkstk_darwin(v6);
  sub_100002B8C();
  v9 = v8 - v7;
  v10 = *v3;
  v11 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_100005C78();
  sub_1000192DC(v11 + v10, v9);
  sub_10006002C(v1);
  sub_100002D24();
  swift_beginAccess();
  sub_10003DA78(v9, v11 + v10);
  swift_endAccess();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000641C(v12, qword_1001BB110);
  v13 = sub_1000071D0();
  v14(v13);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    sub_100002F10();
    v17 = swift_slowAlloc();
    sub_100011828();
    swift_slowAlloc();
    *v17 = 136315394;

    v18 = sub_100027434();

    v19 = sub_100001F70();
    sub_100004A3C(v19, v20, v21);
    sub_100003170();

    *(v17 + 4) = v18;
    *(v17 + 12) = 2080;
    sub_1000281BC(&qword_1001BB468, &qword_1001B94D0, &unk_100171E80);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = sub_10004EF18();
    v24(v23);
    v25 = sub_1000062B0();
    sub_100004A3C(v25, v26, v27);
    sub_100009540();

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Marked asset %s not in use by execution group %s", v17, 0x16u);
    swift_arrayDestroy();
    sub_100002BD0();

    sub_100005864();
  }

  else
  {

    v28 = sub_10004EF18();
    v29(v28);
  }

  sub_100005874();
}

void sub_100046888()
{
  sub_1000055B0();
  v43 = v1;
  v44 = v2;
  v4 = v3;
  v42 = v5;
  v6 = sub_100065020(v5, v1);
  sub_100002BDC();
  v8 = v7;
  sub_100004B1C();
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = *v0;
  v13 = *v0 + 56;
  v14 = -1 << *(*v0 + 32);
  v15 = (v4 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = _HashTable.previousHole(before:)();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v40 = (v17 + 1) & v16;
      v39 = *(v8 + 16);
      v45 = *(v8 + 72);
      v41 = v8 + 16;
      v18 = (v8 + 8);
      v19 = v12;
      v20 = v16;
      while (1)
      {
        v21 = v13;
        v22 = v45 * v15;
        v23 = v20;
        v39(v11, *(v19 + 48) + v45 * v15, v6);
        v24 = v19;
        sub_1000081B4();
        sub_1000082D4(v44, v42, v43, v25);
        sub_100012484();
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v18)(v11, v6);
        v20 = v23;
        v27 = v26 & v23;
        if (v4 >= v40)
        {
          if (v27 < v40 || v4 < v27)
          {
LABEL_20:
            v19 = v24;
            goto LABEL_24;
          }
        }

        else if (v27 < v40 && v4 < v27)
        {
          goto LABEL_20;
        }

        v19 = v24;
        v29 = *(v24 + 48);
        v30 = v45 * v4;
        v31 = v29 + v45 * v4;
        v32 = v29 + v22 + v45;
        if (v45 * v4 < v22 || v31 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v20 = v23;
          v4 = v15;
          goto LABEL_24;
        }

        v4 = v15;
        if (v30 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v15 = (v15 + 1) & v20;
        v13 = v21;
        if (((*(v21 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v12;
LABEL_28:
    *(v13 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  }

  else
  {
    *(v13 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
    v19 = v12;
  }

  v35 = *(v19 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v37;
    ++*(v19 + 36);
    sub_100002EEC();
  }
}

uint64_t sub_100046B5C()
{
  if (sub_10000E8DC(_swiftEmptyArrayStorage))
  {
    sub_10004AC98(_swiftEmptyArrayStorage);
  }

  sub_10003E244();
}

uint64_t sub_100046BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001446C();
  sub_10000636C();
  sub_10004575C();
  v12 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    sub_10000A05C();
    v13 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_1000265BC();
    *v13 = 136315138;
    v14 = sub_10001AFF8();
    sub_10000CB58(v14, v15, v16, v17);
    sub_100007BA0();
    *(v13 + 4) = v11;
    sub_1000033FC();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    sub_100003324(v10);
    sub_1000039CC();

    sub_100002BD0();
  }

  sub_100001F00();
  sub_100003770();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_100046CD0()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
  type metadata accessor for Session.Metadata();
  sub_100002C00();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken;
  type metadata accessor for AuditToken();
  sub_100002C00();
  (*(v4 + 8))(v0 + v3);
  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_modelCatalog));

  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_sysctl));

  return v0;
}

uint64_t sub_100046DB4()
{
  sub_100046CD0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100046E0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v7 = sub_100065020(&qword_1001BD078, &qword_100173950);
  __chkstk_darwin(v7 - 8);
  v9 = &v20[-v8];
  v10 = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.end(_:);
  v11 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  sub_100009BFC(v9, 0, 1, v11);
  GenerativeFunctionsInstrumentationEvent.subtype.setter();
  v12 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  __chkstk_darwin(v12);
  v23 = a2;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v13 = sub_100065020(&qword_1001BD090, &qword_100173970);
  __chkstk_darwin(v13 - 8);
  v15 = &v20[-v14];
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent();
  v16 = swift_allocBox();
  v21 = a3;
  v22 = a4 & 1;
  static Buildable.with(_:)();
  *v15 = v16;
  v17 = enum case for GenerativeFunctionsInstrumentationMetadata.modelManagerSessionEvent(_:);
  v18 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  (*(*(v18 - 8) + 104))(v15, v17, v18);
  sub_100009BFC(v15, 0, 1, v18);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t sub_1000470FC()
{
  sub_100001ED0();
  if (qword_1001B8968 != -1)
  {
    sub_100005224(&qword_1001B8968);
  }

  v1 = type metadata accessor for Logger();
  sub_100002FD0(v1, qword_1001BBF20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = sub_100003788();
    sub_10000A300(v4, 1.5047e-36);
    sub_100002DA4(&_mh_execute_header, v5, v6, "No longer monitoring: %d");
    sub_100002F64();
  }

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_1000486E8;

  return sub_10000EAAC();
}

uint64_t sub_10004720C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v26;
  a24 = v27;
  sub_100005EA4();
  a22 = v24;
  v29 = v24[50];
  v28 = v24[51];
  v30 = v24[28];
  v31 = type metadata accessor for Date();
  v24[52] = v31;
  sub_100002BDC();
  v33 = v32;
  v24[53] = v32;
  v34 = swift_task_alloc();
  v35 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  v24[54] = v34;
  v24[55] = v35;
  v36 = v35 + v30;
  sub_100004BA0(v36, (v24 + 17));
  (*(v33 + 16))(v34, v36 + *(v29 + 32), v31);
  v37 = swift_task_alloc();
  static Date.now.getter();
  v38 = sub_1000062B0();
  sub_10001938C(v38, v39);
  (*(v33 + 40))(v28 + *(v29 + 32), v37, v31);
  sub_100002D24();
  swift_beginAccess();
  v40 = sub_100001F70();
  sub_10003DA78(v40, v41);
  swift_endAccess();

  sub_1000480AC(v36 + *(v29 + 60), (v24 + 2));
  v42 = v24[6];
  sub_100003370(v24 + 2, v24[5]);
  v43 = sub_10000C9D8();
  v44(v43);
  if (v31)
  {
    sub_100003324(v24 + 2);
    v24[59] = v31;
    v45 = v24[55];
    sub_10000CC88();
    v46 = sub_100010C80();
    v47(v46);
    sub_100002D24();
    swift_beginAccess();
    sub_10003DA78(v42, v25 + v45);
    swift_endAccess();
    if (qword_1001B8938 != -1)
    {
      sub_100005C90();
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    v24[60] = sub_10000641C(v48, qword_1001BB478);

    swift_errorRetain();
    v49 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_100019C50())
    {
      v50 = v24[28];
      sub_1000033D0();
      v51 = swift_slowAlloc();
      v80 = sub_100003788();
      a12 = sub_1000080A4();
      *v51 = 136315650;
      type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100005168();
      v54 = sub_100011B5C(v52, v53, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
      v55 = sub_100013430(v54);
      v57 = v56;
      sub_100004A3C(v55, v56, &a12);
      sub_100013E7C();

      sub_100006534();
      v58 = (v50 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
      v60 = *(v50 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      v59 = *(v50 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      sub_100003370(v58, v60);
      sub_100003048();
      v61(v60, v59);
      sub_10000866C();
      sub_100011B5C(v62, v63, &protocol conformance descriptor for InferenceProviderDescriptor);
      sub_100003E14();
      dispatch thunk of CustomStringConvertible.description.getter();
      v64 = sub_10000F148();
      v65(v64);
      sub_100004A3C(v57, v59, &a12);
      sub_100019498();

      sub_100011DD8();
      swift_errorRetain();
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 24) = v66;
      *v80 = v66;
      sub_10003DD68();
      _os_log_impl(v67, v68, v69, v70, v51, 0x20u);
      sub_10000ECD8(v80, &qword_1001B8F68, &qword_10016FB80);
      sub_100002BD0();

      sub_10000BEE8(v71, v72, (&type metadata for Any + 1));
      sub_100002BD0();

      sub_100002BD0();
    }

    v73 = swift_task_alloc();
    v24[61] = v73;
    *v73 = v24;
    sub_100007E40(v73);
    sub_100003D04();

    return sub_100041158(v74, v75);
  }

  else
  {
    sub_100003324(v24 + 2);
    v78 = swift_task_alloc();
    v24[56] = v78;
    *v78 = v24;
    v78[1] = sub_100055D8C;
    sub_1000031B8(v24[29]);
    sub_100003D04();

    return sub_10004A7A4();
  }
}

uint64_t sub_1000476C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  sub_100003284();
  a20 = v22;
  if (qword_1001B8938 != -1)
  {
    sub_100005C90();
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v22[40] = sub_10000641C(v25, qword_1001BB478);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = &unk_1001BE000;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = v22[39];
    v30 = sub_1000267F8();
    a11 = sub_1000080A4();
    *v30 = 136315394;
    InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
    v31 = type metadata accessor for CustomAssetConfiguration();
    v32 = sub_10000C6C0(v29, 1, v31);
    v33 = v22[39];
    if (v32 == 1)
    {
      sub_10000ECD8(v22[39], &qword_1001B9D00, &qword_100171E00);
      v34 = InferenceProviderAssetDescriptor.identifier.getter();
      v36 = v35;
    }

    else
    {
      v34 = CustomAssetConfiguration.identifier.getter();
      v36 = v37;
      sub_100006098();
      (*(v38 + 8))(v33, v31);
    }

    v39 = v22[37];
    v40 = v22[38];
    v41 = v22[36];
    v42 = v22[16];
    v43 = sub_100004A3C(v34, v36, &a11);

    *(v30 + 4) = v43;
    *(v30 + 12) = 2080;
    v44 = (v42 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
    v45 = *(v42 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v46 = *(v42 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100013D6C(v44, v45);
    v47 = sub_100005974();
    v48(v47, v46);
    sub_10000866C();
    sub_100011B5C(v49, v50, &protocol conformance descriptor for InferenceProviderDescriptor);
    sub_1000035E8();
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    (*(v39 + 8))(v40, v41);
    sub_100004A3C(v51, v53, &a11);
    sub_100005974();

    *(v30 + 14) = v51;
    v28 = &unk_1001BE000;
    _os_log_impl(&_mh_execute_header, v26, v27, "Loading asset %s into %s", v30, 0x16u);
    swift_arrayDestroy();
    sub_100002BD0();

    sub_100002BD0();
  }

  v54 = v22[16];
  v55 = v28[261];
  v22[41] = v55;
  sub_100003370((v54 + v55), *(v54 + v55 + 24));
  v67 = sub_100001F0C() + 120;
  sub_100004B94();
  v68 = v56 + *v56;
  v57 = swift_task_alloc();
  v22[42] = v57;
  *v57 = v22;
  v57[1] = sub_10004AA68;
  sub_1000031B8(v22[16]);
  sub_100003540();

  return v62(v58, v59, v60, v61, v62, v63, v64, v65, v67, v68, a11, a12, a13, a14);
}

uint64_t sub_100047A80()
{
  sub_100002BAC();
  *(v1 + 410) = v2;
  *(v1 + 409) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v0;
  *(v1 + 128) = v5;
  *(v1 + 136) = v6;
  *(v1 + 408) = v7;
  *(v1 + 112) = v8;
  *(v1 + 120) = v9;
  v10 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F44(v10);
  *(v1 + 160) = v11;
  *(v1 + 168) = *(v12 + 64);
  *(v1 + 176) = sub_100002C58();
  v13 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F44(v13);
  *(v1 + 184) = v14;
  *(v1 + 192) = *(v15 + 64);
  *(v1 + 200) = sub_100002C58();
  v16 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F44(v16);
  *(v1 + 208) = v17;
  *(v1 + 216) = *(v18 + 64);
  *(v1 + 224) = sub_100002C58();
  State = type metadata accessor for LoadState();
  *(v1 + 232) = State;
  sub_100002F44(State);
  *(v1 + 240) = v20;
  *(v1 + 248) = sub_10000F0C0();
  *(v1 + 256) = swift_task_alloc();
  v21 = type metadata accessor for AssetCost();
  *(v1 + 264) = v21;
  sub_100002F44(v21);
  *(v1 + 272) = v22;
  *(v1 + 280) = sub_100002C58();
  v23 = sub_100002C10();

  return _swift_task_switch(v23, v24, v25);
}

uint64_t sub_100047CA4()
{
  sub_10000636C();
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[6];
  *(v1 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 8) = v3;
  swift_unknownObjectWeakAssign();
  ObjectType = swift_getObjectType();
  (*(v3 + 8))(ObjectType, v3);
  sub_10000BF7C(v2 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_terminationHandlers);

  sub_1000062B0();
  sub_100049620();
  v6 = v5;

  v7 = v0[11];
  if (v6)
  {
    sub_10004A728(v0[12], type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper);

    sub_100001F00();

    return v8();
  }

  else
  {
    v10 = v0[9];
    v11 = v0[7];
    sub_10000EE2C();
    sub_1000060A4();
    sub_100056B00();
    v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v13 = swift_allocObject();
    v0[13] = v13;
    *(v13 + 16) = v11;
    sub_1000B1604(v7, v13 + v12);

    v14 = swift_task_alloc();
    v0[14] = v14;
    sub_100065020(&qword_1001BA490, &qword_100171000);
    *v14 = v0;
    v14[1] = sub_1000A4518;
    sub_100006378();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v15, v16, v17);
  }
}

uint64_t sub_100047F08()
{
  v1 = (type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  swift_unknownObjectWeakDestroy();
  v5 = v1[7];
  type metadata accessor for UUID();
  sub_100002C00();
  (*(v6 + 8))(v0 + v3 + v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100047FF0()
{
  sub_100002BAC();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(0);
  v1[8] = v4;
  sub_100002F44(v4);
  v1[9] = v5;
  v1[10] = *(v6 + 64);
  v1[11] = sub_10000F0C0();
  v1[12] = swift_task_alloc();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000480AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100048110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 272) = v18;
  *(v8 + 256) = v17;
  *(v8 + 524) = a7;
  *(v8 + 240) = a6;
  *(v8 + 248) = a8;
  *(v8 + 224) = a4;
  *(v8 + 232) = a5;
  v10 = type metadata accessor for ModelManagerError();
  *(v8 + 280) = v10;
  *(v8 + 288) = *(v10 - 8);
  *(v8 + 296) = swift_task_alloc();
  v11 = type metadata accessor for InferenceError();
  *(v8 + 304) = v11;
  *(v8 + 312) = *(v11 - 8);
  *(v8 + 320) = swift_task_alloc();
  v12 = type metadata accessor for InferenceError.Context();
  *(v8 + 328) = v12;
  *(v8 + 336) = *(v12 - 8);
  *(v8 + 344) = swift_task_alloc();
  v13 = type metadata accessor for InferenceProviderDescriptor();
  *(v8 + 352) = v13;
  *(v8 + 360) = *(v13 - 8);
  *(v8 + 368) = swift_task_alloc();
  State = type metadata accessor for LoadState();
  *(v8 + 376) = State;
  *(v8 + 384) = *(State - 8);
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  *(v8 + 408) = swift_task_alloc();

  return _swift_task_switch(sub_10004720C, a5, 0);
}

uint64_t sub_100048390()
{
  sub_100003284();
  v1 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F44(v1);
  v2 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F44(v2);
  State = type metadata accessor for LoadState();
  sub_100002F44(State);
  v4 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v4);
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_10006F558;
  sub_1000038D8();
  sub_100003540();

  return sub_100048110(v6, v7, v8, v9, v10, v11, v12, v13);
}

void *sub_1000485D0(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1000485EC()
{
  sub_100003370((v0 + 16), *(v0 + 40));

  return RequestMetadata.id.getter();
}

uint64_t sub_100048628(uint64_t a1)
{

  return swift_allocObject();
}

void sub_100048670()
{
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 136) = 0;
  *(v0 + 157) = 0;
}

uint64_t sub_1000486A0()
{

  return dispatch thunk of RawRepresentable.rawValue.getter();
}

uint64_t sub_1000486B8()
{
}

uint64_t sub_1000486EC()
{
  sub_100002BAC();
  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  *(v1 + 525) = v3;
  *(v1 + 524) = v4;
  *(v1 + 240) = v5;
  v6 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  *(v1 + 264) = v6;
  sub_100002F04(v6);
  *(v1 + 272) = sub_10000F0C0();
  *(v1 + 280) = swift_task_alloc();
  State = type metadata accessor for LoadState();
  *(v1 + 288) = State;
  sub_100002F44(State);
  *(v1 + 296) = v8;
  *(v1 + 304) = sub_10000F0C0();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  v9 = sub_100002C10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100049480()
{
}

uint64_t sub_1000494A4(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = *(v3 + 16);
  v2[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t sub_1000494CC()
{
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);

  return sub_10005C054(v2, v3);
}

uint64_t sub_1000494F4()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_10004950C()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  v4 = *v1;
  sub_100003744();
  *v5 = v4;
  *(v7 + 400) = v6;
  *(v7 + 408) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

void sub_100049620()
{
  sub_1000055B0();
  v1 = sub_10000C1A0();
  type metadata accessor for InferenceProviderExtensionConnection.TerminationHandlerWrapper(v1);
  sub_100002BDC();
  __chkstk_darwin(v2);
  sub_100002B8C();
  v5 = v4 - v3;
  if (*(v0 + 16))
  {
    Hasher.init(_seed:)();
    UUID.hash(into:)();
    Hasher._finalize()();
    sub_100012A00();
    v8 = ~v7;
    do
    {
      v9 = v6 & v8;
      if (((1 << (v6 & v8)) & *(v0 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      sub_100005B9C();
      sub_10000931C();
      v10 = static UUID.== infix(_:_:)();
      sub_100005618();
      sub_10000D2AC(v5);
      v6 = v9 + 1;
    }

    while ((v10 & 1) == 0);
  }

  sub_100002EEC();
}

uint64_t sub_100049768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v22 = sub_10000E8DC(v16[52]);
  v16[55] = v22;
  v24 = v16[52];
  if (v22)
  {
    v25 = v24 & 0xC000000000000001;
    sub_100022A7C();
    if (v25)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v16[52] + 32);
    }

    v16[56] = v26;
    v16[57] = 1;
    sub_1000332B8();
    sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    v27 = sub_10000BF00();
    sub_100009BFC(v27, v28, v29, v30);
    v21(v17, v20, v14);
    sub_100031654();
    sub_100009BFC(v31, v32, v33, v34);
    type metadata accessor for AuditToken();
    sub_100002C00();
    sub_1000DB290();
    v35();
    sub_10004A780();
    sub_100031654();
    sub_100009BFC(v36, v37, v38, v39);
    v40 = swift_task_alloc();
    v16[58] = v40;
    *v40 = v16;
    sub_100005B28(v40);
    sub_100003540();

    return sub_100047A80();
  }

  else
  {
    sub_10004D094(0, v23, v24);
    v19(v14, v17, v15);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v45 = sub_1000038BC(v44);
    v46 = v16[48];
    v47 = v16[41];
    if (v45)
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_10000A45C();
      swift_slowAlloc();
      sub_10003EAA0();
      *v46 = 136315138;
      sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
      sub_100042FBC();
      v48 = sub_1000DABA4();
      (v46)(v48);
      v49 = sub_10000CD1C();
      sub_100004A3C(v49, v50, v51);
      sub_100005974();

      *(v46 + 4) = v47;
      sub_1000033FC();
      _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
      sub_100003324(v18);
      sub_1000039CC();

      sub_10000BFCC();
    }

    else
    {

      v57 = sub_100011BF0();
      (v46)(v57);
    }

    sub_100043D74();
    sub_100010BB8(v16 + 7);
    v70 = sub_1000DB334();
    sub_100004B94();
    v71 = v58 + *v58;
    v59 = swift_task_alloc();
    v60 = sub_100050FE4(v59);
    *v60 = v61;
    sub_1000185FC(v60);
    sub_100003540();

    return v65(v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, a11, a12, a13, a14);
  }
}

uint64_t sub_100049A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  State = type metadata accessor for LoadState();
  v9 = *(State - 8);
  __chkstk_darwin(State);
  v55 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v49);
  v57 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;

  if (v12 > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v47 = a3;
    v48 = a2;
    v43 = v4;
    v41 = &v41;
    __chkstk_darwin(v15);
    v42 = v13;
    v44 = &v41 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v13, v44);
    v45 = 0;
    v20 = 0;
    a3 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v4 = (v21 + 63) >> 6;
    HIDWORD(v52) = enum case for LoadState.loaded(_:);
    v51 = (v9 + 104);
    v53 = a1;
    v54 = (v9 + 8);
    v13 = v55;
    v14 = v57;
    while (v23)
    {
      v24 = __clz(__rbit64(v23));
      v56 = (v23 - 1) & v23;
LABEL_12:
      v27 = v24 | (v20 << 6);
      v28 = *(a1 + 48);
      v50 = v27;
      a2 = *(v28 + 8 * v27);
      v29 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      sub_1000192DC(v29 + a2, v14);
      (*v51)(v13, HIDWORD(v52), State);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v60 == v58 && v61 == v59)
      {

LABEL_19:
        v32 = v57;
        dispatch thunk of RawRepresentable.rawValue.getter();
        v13 = v55;
        dispatch thunk of RawRepresentable.rawValue.getter();
        v9 = v59;
        if (v60 == v58 && v61 == v59)
        {

          (*v54)(v13, State);
          sub_100019338(v32);
        }

        else
        {
          HIDWORD(v46) = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*v54)(v13, State);
          sub_100019338(v32);
          if ((v46 & 0x100000000) == 0)
          {
            goto LABEL_24;
          }
        }

        a1 = v53;
        v23 = v56;
        v14 = v57;
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v31)
        {
          goto LABEL_19;
        }

        v13 = v55;
        (*v54)();
        sub_100019338(v57);
LABEL_24:
        v9 = sub_10002D88C(a2);

        a1 = v53;
        v23 = v56;
        v14 = v57;
        if (v9)
        {
          *(v44 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
          if (__OFADD__(v45++, 1))
          {
            __break(1u);
          }
        }
      }
    }

    v25 = v20;
    while (1)
    {
      v20 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v20 >= v4)
      {
        sub_1000120FC(v44, v42, v45, a1, v16, v17, v18, v19, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0]);
        v36 = v35;

        goto LABEL_31;
      }

      v26 = *(a3 + 8 * v20);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v56 = (v26 - 1) & v26;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v38 = swift_slowAlloc();

  v39 = v4;
  sub_1000D8910(v38, v13);
  v36 = v40;

  if (v39)
  {
  }

  else
  {

LABEL_31:
  }

  return v36;
}

uint64_t sub_10004A128()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  sub_10001E72C(*(v0 + 96), v1, &qword_1001BB410, &unk_100172340);
  if (sub_10000C6C0(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 256);
    type metadata accessor for RequestMetadata();
    UUIDIdentifier.init()();
    if (sub_10000C1F0(v3) != 1)
    {
      sub_10000ECD8(*(v0 + 256), &qword_1001BB410, &unk_100172340);
    }
  }

  else
  {
    (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
  }

  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v61 = *(v0 + 288);
  v67 = *(v0 + 280);
  v6 = *(v0 + 248);
  v7 = *(v0 + 232);
  v62 = *(v0 + 224);
  v8 = *(v0 + 128);
  v64 = *(v0 + 120);
  v66 = *(v0 + 112);
  v63 = *(v0 + 96);
  v60 = *(v0 + 416);
  v65 = *(v0 + 88);
  v9 = (v8 + *(v0 + 328));
  v10 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager;
  *(v0 + 344) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager;
  v58 = *(v8 + v10 + 32);
  v59 = *(v8 + v10 + 24);
  sub_100003370((v8 + v10), v59);
  v11 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
  *(v0 + 352) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
  v12 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
  v56 = v13;
  v57 = v12;
  v68 = v11;
  v20 = InferenceProviderAssetDescriptor.version.getter(v12, v13, v14, v15, v16, v17, v18, v19, v49, v51, v52, v53);
  v54 = v21;
  v55 = v20;
  v70 = enum case for LoadState.loaded(_:);
  v69 = *(v7 + 104);
  v69(v6);
  v22 = v9[4];
  sub_100003370(v9, v9[3]);
  v23 = sub_100019498();
  v24(v23, v22);
  v25 = InferenceProviderDescriptor.id.getter();
  v27 = v26;
  v28 = *(v5 + 8);
  *(v0 + 360) = v28;
  *(v0 + 368) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v4, v61);
  LOBYTE(v50) = v60 & 1;
  *(v0 + 376) = (*(v58 + 40))(v67, v57, v56, v55, v54, v66, v6, v65, v50, v25, v27, v63, *(&v63 + 1), v64, v59, v58);

  v29 = *(v7 + 8);
  *(v0 + 384) = v29;
  *(v0 + 392) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v6, v62);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    sub_1000033D0();
    v72 = swift_slowAlloc();
    sub_1000195F8(4.8149e-34);
    sub_100005168();
    sub_100011B5C(v33, v34, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = sub_10001127C(v35, v36);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "loadIn executing on %s", v32, 0xCu);
    sub_100003324(v72);
    sub_100002BD0();

    sub_1000039CC();
  }

  v38 = *(v0 + 240);
  v39 = *(v0 + 224);
  v40 = (*(v0 + 128) + *(v0 + 328));
  v41 = v40[3];
  v42 = v40[4];
  sub_100003370(v40, v41);
  (v69)(v38, v70, v39);
  sub_100004B94();
  v71 = (v43 + *v43);
  v44 = swift_task_alloc();
  *(v0 + 400) = v44;
  *v44 = v0;
  v44[1] = sub_10005548C;
  v45 = *(v0 + 280);
  v46 = *(v0 + 240);
  v47 = *(v0 + 112);

  return v71(v8 + v68, v46, v47, v45, v41, v42);
}

uint64_t sub_10004A618()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (v0)
  {
    v7 = *(v3 + 208);

    v8 = sub_1000C4FF0;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 208);
    v8 = sub_100049768;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10004A728(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002C00();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004A7A4()
{
  sub_100002BAC();
  v3 = v2;
  *(v1 + 120) = v4;
  *(v1 + 128) = v0;
  *(v1 + 104) = v5;
  *(v1 + 112) = v6;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  *(v1 + 416) = v9;
  *(v1 + 80) = v2;
  v10 = type metadata accessor for AssetCost();
  *(v1 + 136) = v10;
  sub_100002F44(v10);
  *(v1 + 144) = v11;
  *(v1 + 152) = sub_100002C58();
  v12 = type metadata accessor for ModelManagerError();
  *(v1 + 160) = v12;
  sub_100002F44(v12);
  *(v1 + 168) = v13;
  *(v1 + 176) = sub_10000BF98();
  *(v1 + 184) = swift_task_alloc();
  v14 = type metadata accessor for InferenceError();
  *(v1 + 192) = v14;
  sub_100002F44(v14);
  *(v1 + 200) = v15;
  *(v1 + 208) = sub_10000BF98();
  *(v1 + 216) = swift_task_alloc();
  State = type metadata accessor for LoadState();
  *(v1 + 224) = State;
  sub_100002F44(State);
  *(v1 + 232) = v17;
  *(v1 + 240) = sub_10000BF98();
  *(v1 + 248) = swift_task_alloc();
  v18 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F04(v18);
  *(v1 + 256) = sub_100002C58();
  v19 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  *(v1 + 264) = v19;
  sub_100002F44(v19);
  *(v1 + 272) = v20;
  *(v1 + 280) = sub_100002C58();
  v21 = type metadata accessor for InferenceProviderDescriptor();
  *(v1 + 288) = v21;
  sub_100002F44(v21);
  *(v1 + 296) = v22;
  *(v1 + 304) = sub_100002C58();
  v23 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  sub_100002F04(v23);
  *(v1 + 312) = sub_100002C58();

  return _swift_task_switch(sub_1000476C0, v3, 0);
}

uint64_t sub_10004AA68()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10004AB60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_connectionTerminationIdentifier;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10004ABD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_100047FF0();
}

uint64_t sub_10004AC80(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return RequestMetadata.id.getter();
}

void sub_10004AC98(unint64_t a1)
{
  if (sub_10000E8DC(a1))
  {
    sub_100065020(&qword_1001B8C10, &qword_10016F818);
    sub_1000055A4();
    v1 = v4;
    v5 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  v13 = sub_10001297C(a1);
  if (v13)
  {
    sub_1000199B4();
    while (1)
    {
      sub_100009D48();
      sub_100022A7C();
      if (v1)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v12 + 8 * v2);
      }

      v7 = __OFADD__(v2++, 1);
      if (v7)
      {
        break;
      }

      Hasher.init(_seed:)();
      sub_10001214C(v14);
      v1 = v14;
      Hasher._finalize()();
      sub_100011E24();
      while (1)
      {
        sub_10001898C();
        if (v9)
        {
          break;
        }

        type metadata accessor for InferenceProviderAsset(0);
        v10 = sub_100061A8C();
        v1 = sub_100019CE4(v10, v6);

        if (v1)
        {

          goto LABEL_17;
        }
      }

      sub_10000A84C(v8);
      if (v7)
      {
        goto LABEL_20;
      }

      v5[2] = v11;
LABEL_17:
      if (v2 == v13)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_10004AE14()
{

  return type metadata accessor for _OSTransaction();
}

uint64_t sub_10004AE58(uint64_t a1)
{

  return Logger.logObject.getter();
}

uint64_t sub_10004AE70(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10006FA64;

  return sub_10004AF18();
}

uint64_t sub_10004AF18()
{
  sub_100002BAC();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v4);
  v1[9] = sub_100002C58();
  v5 = type metadata accessor for ModelManagerError();
  v1[10] = v5;
  sub_100002F44(v5);
  v1[11] = v6;
  v1[12] = sub_10000BF98();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[16] = v7;
  sub_100002F44(v7);
  v1[17] = v8;
  v1[18] = sub_10000BF98();
  v1[19] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest.PrewarmSession();
  v1[20] = v9;
  sub_100002F44(v9);
  v1[21] = v10;
  v1[22] = *(v11 + 64);
  v1[23] = sub_10000BF98();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v12 = sub_100003000();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10004B0E0()
{
  sub_100007B84();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v1 = v0[21];
  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  v4 = sub_10000641C(v3, qword_1001BE400);
  v0[26] = v4;
  v0[27] = *(v1 + 16);
  v0[28] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5 = sub_10000CC04();
  v6(v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = sub_1000038BC(v8);
  v10 = v0[25];
  v11 = v0[20];
  v12 = v0[21];
  if (v9)
  {
    v13 = v0[19];
    v14 = v0[16];
    v15 = v0[17];
    sub_100007698();
    sub_100003890();
    sub_100003E74(4.8149e-34);
    ModelXPCRequest.PrewarmSession.sessionID.getter();
    sub_100005070();
    sub_1000082D4(v16, v17, v18, v19);
    sub_100003E14();
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(v15 + 8))(v13, v14);
    v20 = *(v12 + 8);
    v20(v10, v11);
    v21 = sub_100007660();
    v24 = sub_100004A3C(v21, v22, v23);

    *(v4 + 4) = v24;
    sub_10000EEC0(&_mh_execute_header, "XPC Handling prewarmSession for client session %s", v2);
    sub_100003A7C();
    sub_10000706C();
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[29] = v20;
  sub_100002EC0(v0[7]);
  v0[30] = *(v25 + 128);
  sub_10000ECC0();
  sub_10000209C();
  sub_100003D04();

  return _swift_task_switch(v26, v27, v28);
}

uint64_t sub_10004B2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000133FC();
  a25 = v27;
  a26 = v28;
  sub_10000C72C();
  a24 = v26;
  v29 = *(v26 + 248);
  v30 = *(v26 + 64);
  v31 = swift_task_alloc();
  *(v31 + 16) = v30;
  v32 = sub_100018BC4(sub_10004B724, v31, v29);
  *(v26 + 256) = v32;
  *(v26 + 264) = 0;

  if (v32)
  {
    sub_100002EC0(*(v26 + 56));
    v34 = *(v33 + 128);
    v35 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
    *(v26 + 272) = v34;
    *(v26 + 280) = v35;
    *(v26 + 288) = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken;
    sub_10000ECC0();
    sub_10000209C();
    sub_1000037A0();

    return _swift_task_switch(v36, v37, v38);
  }

  else
  {
    (*(v26 + 216))(*(v26 + 192), *(v26 + 64), *(v26 + 160));
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.fault.getter();
    v42 = sub_10000320C(v41);
    v43 = *(v26 + 232);
    v44 = *(v26 + 192);
    v45 = *(v26 + 160);
    if (v42)
    {
      a12 = *(v26 + 232);
      sub_100007698();
      a10 = v45;
      a14 = sub_100003890();
      sub_100003658(4.8149e-34);
      ModelXPCRequest.PrewarmSession.sessionID.getter();
      sub_100005070();
      sub_1000082D4(v46, v47, v48, v49);
      sub_100003E14();
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v53 = sub_100036E74();
      v54(v53);
      a12(v44, v45);
      sub_100004A3C(v50, v52, &a14);
      sub_10001AFBC();
      *(v45 + 4) = v50;
      sub_10000EEC0(&_mh_execute_header, "Trying to prewarm session %s but it's not found in SessionManager", BYTE4(a11));
      sub_100003A7C();
      sub_10000706C();
    }

    else
    {

      v43(v44, v45);
    }

    v55 = *(v26 + 80);
    v56 = *(v26 + 88);
    sub_100005E30();
    sub_100003814(v57, v58, &protocol conformance descriptor for ModelManagerError);
    v69 = sub_10000A418();
    (*(v56 + 104))(v59, enum case for ModelManagerError.internalError(_:), v55);
    swift_willThrow();
    sub_100061B10();

    sub_100001F00();
    sub_1000037A0();

    return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, v69, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_10004B5BC()
{
  v0 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  Session.Metadata.id.getter();
  ModelXPCRequest.PrewarmSession.sessionID.getter();
  type metadata accessor for Session();
  v7 = static UUIDIdentifier.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_10004B744()
{
  sub_100001ED0();
  v1 = v0[33];
  v0[37] = sub_10001B304(v0[32] + v0[35], v0[32] + v0[36]);
  v0[38] = v1;

  sub_1000059F8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10004B7DC(uint64_t a1)
{
  sub_100004CBC();
  swift_beginAccess();
  v4 = *(v1 + 112);
  v12[2] = a1;

  v5 = sub_100018BC4(sub_1000352A4, v12, v4);

  if (v5)
  {

    sub_10004B958();

    if (v2)
    {
    }
  }

  else
  {
    v5 = type metadata accessor for ModelManagerError();
    sub_100005C00();
    sub_100015F10(v6, 255, v7);
    sub_100007894();
    swift_allocError();
    v9 = v8;
    sub_100065020(&qword_1001B94F0, &unk_100172060);
    UUIDIdentifier.uuid.getter();
    sub_100006098();
    (*(v10 + 104))(v9);
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_10004B958()
{
  v1 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v3 = v2;
  result = __chkstk_darwin(v4);
  v7 = &v17 - v6;
  if (*(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState + 16) == 1)
  {
    if (qword_1001B89B0 != -1)
    {
      sub_100008724(&qword_1001B89B0);
    }

    v8 = type metadata accessor for Logger();
    sub_10000641C(v8, qword_1001BC6C0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "session cancelled, returning error", v11, 2u);
      sub_100002BB8(v11);
    }

    v12 = type metadata accessor for ModelManagerError();
    sub_1000114EC();
    sub_1000218A0(v13, v14);
    swift_allocError();
    v16 = v15;
    Session.Metadata.id.getter();
    UUIDIdentifier.uuid.getter();
    (*(v3 + 8))(v7, v1);
    (*(*(v12 - 8) + 104))(v16, enum case for ModelManagerError.sessionInCancelState(_:), v12);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10004BB90()
{
  KeyPath = swift_getKeyPath();
  sub_10004BBE8(KeyPath);
  sub_100003AD0();

  return sub_1000062B0();
}

void sub_10004BBE8(uint64_t a1)
{
  v3 = type metadata accessor for DaemonSession.LazyState(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_10004BDD4(v6 + v7, &v9);
  if (!v2)
  {
    os_unfair_lock_unlock((v6 + v8));
    if (v10)
    {
      return;
    }

    sub_10001AE40();
    swift_getAtKeyPath();
    if (v10)
    {
      sub_1000125E8(v5, type metadata accessor for DaemonSession.LazyState);
      return;
    }

    __break(1u);
  }

  os_unfair_lock_unlock((v6 + v8));
  __break(1u);
}

uint64_t sub_10004BDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10004BD70(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

void sub_10004BE14()
{
  sub_1000055B0();
  v2 = v1;
  v31 = v3;
  v32 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v11 = v10;
  sub_100004B1C();
  __chkstk_darwin(v12);
  sub_100008290();
  sub_100003058();
  v34 = v13;
  v33 = *(v14 + 16);
  (*(v11 + 16))(v0, v8, v9);
  v15 = type metadata accessor for OSSignpostID();
  sub_100002BDC();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100002B8C();
  v21 = v20 - v19;

  static OSSignpostID.exclusive.getter();
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.event.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v30 = v17;
  if ((v33 & 1) == 0)
  {
    v17 = v6;

    if (!v34)
    {
      __break(1u);
LABEL_5:

      (*(v17 + 8))(v21, v15);
      (*(v11 + 8))(v0, v9);
LABEL_11:
      sub_100002EEC();
      return;
    }

LABEL_10:
    sub_1000031E0();
    v35 = sub_100013E88();
    *v23 = 136446722;
    v26 = UUIDIdentifier.uuidString.getter();
    v28 = sub_10001127C(v26, v27);

    *(v23 + 4) = v28;
    (*(v11 + 8))(v0, v9);
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_100004A3C(v31, v17, &v35);
    *(v23 + 22) = 2082;
    *(v23 + 24) = sub_100004A3C(v32, v2, &v35);
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, v23, v29, v34, "sessionIdentifier: %{public, signpost.description=attribute,public}s\ninferenceProviderIdentifier: %{public, signpost.description=attribute,public}s\nassetBundleIdentifier: %{public, signpost.description=attribute,public}s", v23, 0x20u);
    sub_100012500();
    swift_arrayDestroy();
    sub_100003A4C();
    sub_100012A9C();

    (*(v30 + 8))(v21, v15);
    goto LABEL_11;
  }

  if (v34 >> 32)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_100011408();
  if (!v24)
  {
    sub_100005704();
    if (!(!v24 & v25))
    {
      v17 = v6;

      v34 = &v35;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_10004C178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v7 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  __chkstk_darwin(v7);
  static Buildable.with(_:)();
  return GenerativeFunctionsInstrumentationEvent.identifiers.setter();
}

uint64_t sub_10004C2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18[-v10];
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  UUIDIdentifier.uuid.getter();
  v12 = type metadata accessor for UUID();
  sub_100009BFC(v11, 0, 1, v12);
  GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter();

  GenerativeFunctionsInstrumentationEvent.Identifiers.inferenceProviderIdentifier.setter();
  v13 = sub_100065020(&qword_1001BD088, &qword_100173968);
  __chkstk_darwin(v13 - 8);
  v15 = &v18[-v14];
  v16 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
  v19 = a6;
  v20 = a7;
  v21 = 0;
  v22 = 0;
  static Buildable.with(_:)();
  sub_100009BFC(v15, 0, 1, v16);
  return GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.setter();
}

uint64_t sub_10004C4B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3;
  v44 = *a3;
  State = type metadata accessor for LoadState();
  v8 = *(State - 8);
  __chkstk_darwin(State);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v38);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v36 = v3;
    v39 = &_swiftEmptySetSingleton;
    v59 = &_swiftEmptySetSingleton;

    v45 = __CocoaSet.makeIterator()();
    HIDWORD(v42) = enum case for LoadState.unloaded(_:);
    v40 = (v8 + 8);
    v41 = (v8 + 104);
    v43 = a2;
    while (1)
    {
      v13 = __CocoaSet.Iterator.next()();
      if (!v13)
      {

        a1 = v39;
        goto LABEL_25;
      }

      v14 = v4;
      v46 = v13;
      swift_dynamicCast();
      v15 = v58;
      v16 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      sub_1000192DC(v16 + v15, v12);
      (*v41)(v10, HIDWORD(v42), State);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
      v17 = v12;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v18 = v10;
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v46 == v55 && v47 == v56)
      {
        break;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_16;
      }

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v46 == v55 && v47 == v56)
      {
        break;
      }

      HIDWORD(v37) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v40)(v10, State);
      sub_100019338(v17);
      v4 = v14;
      if ((v37 & 0x100000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_17:
      if (!sub_10002D88C(v15))
      {
LABEL_21:

        goto LABEL_22;
      }

      v29 = v58;
      v30 = v39[2];
      if (v39[3] <= v30)
      {
        sub_100080444(v30 + 1, v22, v23, v24, v25, v26, v27, v28, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, *v57, *&v57[8], *&v57[16]);
      }

      v31 = v59;
      Hasher.init(_seed:)();
      sub_10001214C(&v46);
      Hasher._finalize()();
      v32 = _HashTable.nextHole(atOrAfter:)();
      *(v31 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v32;
      *(v31[6] + 8 * v32) = v29;
      v33 = v31[2] + 1;
      v39 = v31;
      v31[2] = v33;
LABEL_22:
      v10 = v18;
      v12 = v17;
    }

LABEL_16:
    (*v40)(v10, State);
    sub_100019338(v17);
    v4 = v14;
    goto LABEL_17;
  }

  v34 = sub_10004CA28(a1, a2, v4);
  if (v3)
  {
  }

  else
  {
    a1 = v34;

LABEL_25:
  }

  return a1;
}

uint64_t sub_10004CA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  State = type metadata accessor for LoadState();
  v8 = *(State - 8);
  __chkstk_darwin(State);
  v56 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v45);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a1 + 32);
  v12 = v10 & 0x3F;
  v13 = ((1 << v10) + 63) >> 6;
  v14 = 8 * v13;

  if (v12 > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v57 = v11;
    v44 = v4;
    v42 = &v41;
    __chkstk_darwin(v15);
    v43 = v13;
    v46 = &v41 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v13, v46);
    v47 = 0;
    v20 = 0;
    v11 = (a1 + 56);
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v13 = v22 & *(a1 + 56);
    v4 = (v21 + 63) >> 6;
    HIDWORD(v51) = enum case for LoadState.unloaded(_:);
    v49 = (v8 + 8);
    v50 = (v8 + 104);
    v53 = a3;
    v54 = a2;
    v8 = State;
    v52 = a1;
    while (v13)
    {
      v23 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v26 = v23 | (v20 << 6);
      v27 = *(a1 + 48);
      v48 = v26;
      v28 = *(v27 + 8 * v26);
      v29 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      sub_1000192DC(v29 + v28, v57);
      (*v50)(v56, HIDWORD(v51), v8);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v60 == v58 && v61 == v59)
      {

        v32 = v56;
LABEL_24:
        v8 = State;
        (*v49)(v32, State);
        sub_100019338(v57);
        goto LABEL_25;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v32 = v56;
      if (v31)
      {
        goto LABEL_24;
      }

      v8 = State;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v14 = v61;
      if (v60 == v58 && v61 == v59)
      {

        goto LABEL_24;
      }

      HIDWORD(v41) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v49)(v32, v8);
      sub_100019338(v57);
      if ((v41 & 0x100000000) != 0)
      {
LABEL_25:
        a3 = v53;
        a2 = v54;
        v14 = sub_10002D88C(v28);

        a1 = v52;
        if (v14)
        {
          *(v46 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
          if (__OFADD__(v47++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {

        a3 = v53;
        a2 = v54;
        a1 = v52;
      }
    }

    v24 = v20;
    while (1)
    {
      v20 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v20 >= v4)
      {
        sub_1000120FC(v46, v43, v47, a1, v16, v17, v18, v19, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, State, v56, v57, v58, v59, v60, v61, v62[0]);
        v36 = v35;

        goto LABEL_31;
      }

      v25 = *&v11[8 * v20];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v13 = (v25 - 1) & v25;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v38 = swift_slowAlloc();

  v39 = v4;
  sub_1000D8910(v38, v13);
  v36 = v40;

  if (v39)
  {
  }

  else
  {

LABEL_31:
  }

  return v36;
}
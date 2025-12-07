uint64_t sub_100001FC8(uint64_t a1, uint64_t a2)
{
  if (qword_100070AA8[0] != -1)
  {
    sub_100049EB0();
  }

  return byte_100070AA0;
}

void sub_100002000(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v6 = CFDictionaryGetValue(v1, @"ArtworkDeviceSubType");
    if (v6)
    {
      v3 = [v6 intValue];
      v5 = v3 == 2556 || v3 == 2796;
      byte_100070AA0 = v5;
    }

    CFRelease(v2);
  }
}

uint64_t sub_1000020F0(uint64_t a1, uint64_t a2)
{
  if (qword_100070AA8[0] != -1)
  {
    sub_100049EB0();
  }

  if (byte_100070AA0)
  {
    return 1;
  }

  return _SBSIsSystemApertureAvailable(a1);
}

uint64_t sub_100002158(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3)
{
  v3 = (a2 + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler);
  v4 = *(a2 + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler);
  v5 = *(a2 + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler + 8);
  *v3 = j___s20PreviewsFoundationOS7PromiseC7succeed4withyx_tF;
  v3[1] = a1;

  sub_100004D54(v4, v5);
  return static ProcessUtilities.kill(processHandle:)();
}

id sub_100002200(uint64_t a1, uint64_t a2)
{
  v104 = a2;
  v2 = type metadata accessor for Logger();
  v108 = *(v2 - 8);
  v109 = v2;
  v3 = __chkstk_darwin(v2);
  v103 = v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v102 = v97 - v5;
  v6 = type metadata accessor for URL.DirectoryHint();
  v105 = *(v6 - 8);
  v106 = v6;
  __chkstk_darwin(v6);
  v8 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for URL();
  v107 = *(v110 - 8);
  v9 = __chkstk_darwin(v110);
  v101 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v100 = v97 - v12;
  v13 = __chkstk_darwin(v11);
  v111 = v97 - v14;
  v15 = __chkstk_darwin(v13);
  v112 = v97 - v16;
  __chkstk_darwin(v15);
  v113 = v97 - v17;
  v18 = type metadata accessor for BinaryType();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v97 - v23;
  v25 = [objc_allocWithZone(FBMutableProcessExecutionContext) init];
  [v25 setLaunchIntent:4];
  v26 = PreviewAgentLaunchConfiguration.environment.getter();
  sub_100002E04(v26);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v25 setEnvironment:isa];

  v28 = PreviewAgentLaunchConfiguration.arguments.getter();
  sub_1000030CC(v28);

  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v25 setArguments:v29];

  PreviewAgentLaunchConfiguration.binaryType.getter();
  v30 = BinaryType.cpuType.getter();
  v31 = *(v19 + 8);
  v31(v24, v18);
  PreviewAgentLaunchConfiguration.binaryType.getter();
  v32 = BinaryType.cpuSubtype.getter();
  v31(v22, v18);
  v33 = [objc_opt_self() sliceWithType:v30 subtype:v32];
  [v25 setOverrideExecutableSlice:v33];

  v34 = PreviewAgentLaunchConfiguration.environment.getter();
  if (*(v34 + 16) && (v35 = sub_100006E04(0xD000000000000037, 0x8000000100053A00), (v36 & 1) != 0))
  {
    v37 = (*(v34 + 56) + 16 * v35);
    v39 = *v37;
    v38 = v37[1];

    if (v39 == 49 && v38 == 0xE100000000000000)
    {
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        return v25;
      }
    }

    v99 = objc_opt_self();
    v42 = [v99 defaultManager];
    v43 = [v42 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    strcpy(v115, "agent-stderr");
    BYTE5(v115[1]) = 0;
    HIWORD(v115[1]) = -5120;
    v45 = v105;
    v44 = v106;
    v98 = *(v105 + 104);
    v98(v8, enum case for URL.DirectoryHint.isDirectory(_:), v106);
    v97[1] = sub_1000051E8();
    URL.appending<A>(component:directoryHint:)();
    v105 = *(v45 + 8);
    (v105)(v8, v44);
    v46 = [objc_allocWithZone(NSDate) init];
    v47 = [v46 description];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v115[0] = AgentDescriptor.Bundle.bundleID.getter();
    v115[1] = v51;
    v52._countAndFlagsBits = 45;
    v52._object = 0xE100000000000000;
    String.append(_:)(v52);
    v53._countAndFlagsBits = v48;
    v53._object = v50;
    String.append(_:)(v53);

    v54._countAndFlagsBits = 1954051118;
    v54._object = 0xE400000000000000;
    String.append(_:)(v54);
    v98(v8, enum case for URL.DirectoryHint.notDirectory(_:), v44);
    v55 = v111;
    URL.appending<A>(component:directoryHint:)();
    (v105)(v8, v44);

    v56 = [v99 defaultManager];
    URL._bridgeToObjectiveC()(v57);
    v59 = v58;
    v115[0] = 0;
    LODWORD(v50) = [v56 createDirectoryAtURL:v58 withIntermediateDirectories:1 attributes:0 error:v115];

    if (v50)
    {
      v60 = v115[0];
      v61 = v102;
      static Logger.previews.getter();
      v62 = v107;
      v63 = v100;
      v64 = v110;
      (*(v107 + 16))(v100, v55, v110);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v115[0] = v68;
        *v67 = 136446210;
        v69 = URL.path.getter();
        v70 = v63;
        v72 = v71;
        v73 = *(v62 + 8);
        v73(v70, v64);
        v74 = sub_10000E0C0(v69, v72, v115);

        *(v67 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v65, v66, "ApplicationLauncher: Redirecting stderr to %{public}s", v67, 0xCu);
        sub_10000519C(v68);
        v55 = v111;

        (*(v108 + 8))(v102, v109);
      }

      else
      {

        v73 = *(v62 + 8);
        v73(v63, v64);
        (*(v108 + 8))(v61, v109);
      }

      URL._bridgeToObjectiveC()(v75);
      v95 = v94;
      [v25 setStandardErrorURL:v94];

      v73(v55, v64);
      v73(v112, v64);
      v73(v113, v64);
    }

    else
    {
      v76 = v115[0];
      v77 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v78 = v103;
      static Logger.previews.getter();
      v79 = v107;
      v80 = v101;
      v81 = v110;
      (*(v107 + 16))(v101, v55, v110);
      swift_errorRetain();
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        LODWORD(v105) = v83;
        v85 = v84;
        v106 = swift_slowAlloc();
        v115[0] = v106;
        *v85 = 136446466;
        v86 = URL.path.getter();
        v88 = v87;
        v89 = *(v79 + 8);
        v89(v80, v81);
        v90 = sub_10000E0C0(v86, v88, v115);

        *(v85 + 4) = v90;
        *(v85 + 12) = 2080;
        v114 = v77;
        swift_errorRetain();
        sub_100004C60(&qword_10006E8E8, &qword_10004D780);
        v91 = String.init<A>(describing:)();
        v93 = sub_10000E0C0(v91, v92, v115);

        *(v85 + 14) = v93;
        _os_log_impl(&_mh_execute_header, v82, v105, "ApplicationLauncher: Could not redirect stderr to %{public}s: %s", v85, 0x16u);
        swift_arrayDestroy();

        (*(v108 + 8))(v103, v109);
        v89(v111, v81);
        v89(v112, v81);
        v89(v113, v81);
      }

      else
      {

        v96 = *(v79 + 8);
        v96(v80, v81);
        (*(v108 + 8))(v78, v109);
        v96(v55, v81);
        v96(v112, v81);
        v96(v113, v81);
      }
    }
  }

  else
  {
  }

  return v25;
}

Swift::Int sub_100002E04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004C60(&qword_10006E8F0, &qword_10004D788);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10000523C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10000523C(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_10000523C(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t *sub_1000030CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_10001BBD0(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10001BBD0((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10000523C(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_1000031CC(void *a1, void *a2, uint64_t a3)
{
  v31 = a3;
  v34 = a1;
  v5 = type metadata accessor for Logger();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AgentDescriptor.Bundle();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = *(v8 + 16);
  (v30)(v12, a3, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v14, v12, v7);
  *(v16 + v15) = v13;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v17 = v32;
  aBlock[4] = sub_1000050F4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000232FC;
  aBlock[3] = &unk_100062818;
  v18 = _Block_copy(aBlock);

  v34 = a2;
  [a2 setCompletionBlock:v18];
  _Block_release(v18);
  static Logger.uv.getter();
  v19 = v33;
  v30();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315138;
    sub_100004C18(&qword_10006E8D0, &type metadata accessor for AgentDescriptor.Bundle, &protocol conformance descriptor for AgentDescriptor.Bundle);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v8 + 8))(v19, v7);
    v27 = sub_10000E0C0(v24, v26, aBlock);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "will begin launch transaction for %s", v22, 0xCu);
    sub_10000519C(v23);
  }

  else
  {

    (*(v8 + 8))(v19, v7);
  }

  (*(v35 + 8))(v17, v36);
  return [v34 begin];
}

void sub_100003610(int a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v5 = type metadata accessor for AgentDescriptor.Bundle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v41 = *(v6 + 16);
  v42 = v6 + 16;
  v41(v8, a2, v5);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v40 = a3;
    v15 = v14;
    v39 = swift_slowAlloc();
    *&v48[0] = v39;
    *v15 = 136315394;
    sub_100004C18(&qword_10006E8D0, &type metadata accessor for AgentDescriptor.Bundle, &protocol conformance descriptor for AgentDescriptor.Bundle);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = v8;
    v20 = v5;
    (*(v6 + 8))(v19, v5);
    v21 = sub_10000E0C0(v16, v18, v48);

    *(v15 + 4) = v21;
    *(v15 + 12) = 1024;
    LOBYTE(v21) = v45;
    *(v15 + 14) = v45 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "launch transaction completed for %s with success = %{BOOL}d", v15, 0x12u);
    sub_10000519C(v39);

    (*(v43 + 8))(v11, v44);
    if ((v21 & 1) == 0)
    {
LABEL_10:
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v30 = Strong, v31 = [Strong error], v30, !v31))
      {
        v32 = type metadata accessor for ProcessError();
        sub_100004C18(&qword_10006E8D8, &type metadata accessor for ProcessError, &protocol conformance descriptor for ProcessError);
        swift_allocError();
        v34 = v33;
        v41(v33, a2, v20);
        (*(*(v32 - 8) + 104))(v34, enum case for ProcessError.noLaunchedProcess(_:), v32);
      }

      Promise.fail(with:)();
      goto LABEL_14;
    }
  }

  else
  {

    v22 = v8;
    v20 = v5;
    (*(v6 + 8))(v22, v5);
    (*(v43 + 8))(v11, v44);
    if ((v45 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = v23;
  v25 = [v23 process];

  if (!v25)
  {
    goto LABEL_10;
  }

  v26 = [v25 handle];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 auditToken];

    if (v28)
    {
      [v28 realToken];

      v46 = v48[0];
      v47 = v48[1];
      Promise.succeed(with:)();

      return;
    }
  }

  v35 = type metadata accessor for ProcessError();
  sub_100004C18(&qword_10006E8D8, &type metadata accessor for ProcessError, &protocol conformance descriptor for ProcessError);
  swift_allocError();
  v37 = v36;
  *v36 = [v25 pid];
  (*(*(v35 - 8) + 104))(v37, enum case for ProcessError.noAuditTokenForPid(_:), v35);
  Promise.fail(with:)();

LABEL_14:
}

uint64_t sub_100003BD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100003BF8, 0, 0);
}

uint64_t sub_100003BF8()
{
  v1 = *(v0 + 16);
  AgentDescriptor.Bundle.bundleID.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [objc_opt_self() identityForEmbeddedApplicationIdentifier:v2];

  *v1 = v3;
  v4 = enum case for PreviewAgentJITBootstrapMethod.runningBoardIdentity(_:);
  v5 = type metadata accessor for PreviewAgentJITBootstrapMethod();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100003CF0(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler);
  if (v1)
  {
    v2 = *(result + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler + 8);

    v1(v3);

    return sub_100004D54(v1, v2);
  }

  return result;
}

id sub_100003DE8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100003F0C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void *sub_100003F70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_100003F8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100004000(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

_DWORD *sub_100004050@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

id sub_100004118(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

id sub_1000041DC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() identityForEmbeddedApplicationIdentifier:v0];

  v2 = [objc_opt_self() predicateMatchingIdentity:v1];
  sub_1000052B8(0, &qword_10006E900, RBSProcessHandle_ptr);
  v3 = v2;
  v4 = sub_100004118(v3);

  if (v4)
  {
    v6 = RBSProcessHandle.applicationProcess.getter();

    if (v6)
    {
      return v4;
    }

    v3 = v4;
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000042E4()
{
  AgentDescriptor.Bundle.bundleID.getter();
  v0 = sub_1000041DC();
  v2 = v1;

  if (v0)
  {
    v3 = type metadata accessor for ProcessExitObserver();
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler];
    *v5 = 0;
    *(v5 + 1) = 0;
    *&v4[OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_process] = v2;
    v12.receiver = v4;
    v12.super_class = v3;
    v6 = v2;
    v7 = objc_msgSendSuper2(&v12, "init");
    [*&v7[OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_process] addObserver:{v7, v12.receiver, v12.super_class}];
    v8 = sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    __chkstk_darwin(v8);
    v9 = Future.__allocating_init(dsoHandle:file:line:column:function:callback:)();
    *(swift_allocObject() + 16) = v7;
    v10 = v7;
    Future.observeFinish(_:)();

    return v9;
  }

  else
  {
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    return static Future<A>.succeeded(dsoHandle:file:line:column:function:)();
  }
}

uint64_t sub_1000044F0(uint64_t a1)
{
  v2 = type metadata accessor for PreviewAgentLaunchConfiguration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AgentDescriptor.Bundle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v30 = &v29 - v11;
  PreviewAgentLaunchConfiguration.agentBundle.getter();
  (*(v3 + 16))(v5, a1, v2);
  v13 = v12;
  v14 = v6;
  (*(v7 + 16))(v10, v13, v6);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = (v4 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v15, v5, v2);
  v18 = v7;
  (*(v7 + 32))(v17 + v16, v10, v14);
  v19 = v30;
  AgentDescriptor.Bundle.bundleID.getter();
  v20 = String._bridgeToObjectiveC()();

  v21 = [objc_opt_self() identityForEmbeddedApplicationIdentifier:v20];

  v22 = objc_allocWithZone(FBApplicationProcessLaunchTransaction);
  aBlock[4] = sub_100004ED0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003F0C;
  aBlock[3] = &unk_100062778;
  v23 = _Block_copy(aBlock);

  v24 = [v22 initWithProcessIdentity:v21 executionContextProvider:v23];
  _Block_release(v23);

  sub_100004C60(&qword_10006E8C8, &qword_10004D778);
  v31 = v24;
  v32 = v19;
  v25 = v19;
  v26 = Future.__allocating_init(dsoHandle:file:line:column:function:callback:)();
  *(swift_allocObject() + 16) = v24;
  v27 = v24;
  Future.observeCancelation(_:)();

  (*(v18 + 8))(v25, v14);
  return v26;
}

uint64_t sub_1000048FC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000052B8(0, &qword_10006E8A0, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100004BF8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023350;
  aBlock[3] = &unk_1000626E8;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100004C18(&unk_10006FC90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004C60(&unk_10006E8B0, &unk_10004D6B0);
  sub_100004CA8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100004BC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004C18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004C60(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004CA8()
{
  result = qword_10006FCA0;
  if (!qword_10006FCA0)
  {
    sub_100004D0C(&unk_10006E8B0, &unk_10004D6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FCA0);
  }

  return result;
}

uint64_t sub_100004D0C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004D54(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100004D88()
{
  v1 = type metadata accessor for PreviewAgentLaunchConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for AgentDescriptor.Bundle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

id sub_100004ED0()
{
  v1 = *(type metadata accessor for PreviewAgentLaunchConfiguration() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AgentDescriptor.Bundle() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100002200(v0 + v2, v5);
}

void sub_100004FA4()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  [v1 failWithReason:v2];
}

uint64_t sub_100005010()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005048()
{
  v1 = type metadata accessor for AgentDescriptor.Bundle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1000050F4(int a1)
{
  v3 = *(type metadata accessor for AgentDescriptor.Bundle() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100003610(a1, v1 + v4, v5);
}

uint64_t sub_10000519C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1000051E8()
{
  result = qword_10006E8E0;
  if (!qword_10006E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006E8E0);
  }

  return result;
}

_OWORD *sub_10000523C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_100005254()
{
  v1 = *(v0 + 16);
  v2 = (v1 + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler);
  v3 = *(v1 + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler);
  v4 = *(v1 + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_didExitHandler + 8);
  *v2 = 0;
  v2[1] = 0;
  sub_100004D54(v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC12PreviewShellP33_73072BBD51AADBBF8F40B684FE9C377E19ProcessExitObserver_process);

  return [v5 removeObserver:v1];
}

uint64_t sub_1000052B8(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 sub_100005304(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005310(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005330(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_100005370(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

double sub_1000053E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000542C(a1, a2);
  [v2 bounds];
  v4 = v3;

  return v4;
}

id sub_10000542C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  v4 = v3;

  v5 = [v4 displayConfiguration];
  return v5;
}

id sub_100005488()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *v0;
  v4 = v2;
  return v1;
}

uint64_t BSDeviceClass.description.getter(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 6578544;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0x6863746177;
      }

      goto LABEL_12;
    }

    return 30324;
  }

  else
  {
    if (a1 == -1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        return 6582128;
      }

LABEL_12:
      v5[4] = v1;
      v5[5] = v2;
      strcpy(v5, "unrecognized:");
      HIWORD(v5[1]) = -4864;
      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);

      return v5[0];
    }

    return 0x656E6F6870;
  }
}

uint64_t BSDeviceHomeButtonType.description.getter(uint64_t a1)
{
  if (a1 > 0)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 1701736302;
      }

      goto LABEL_8;
    }

    return 1112036179;
  }

  else
  {
    if (a1 != -1)
    {
      if (!a1)
      {
        return 0x79636167656CLL;
      }

LABEL_8:
      v5[4] = v1;
      v5[5] = v2;
      strcpy(v5, "unrecognized:");
      HIWORD(v5[1]) = -4864;
      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);

      return v5[0];
    }

    return 0x6E776F6E6B6E75;
  }
}

uint64_t UISDeviceIdiom.description.getter(uint64_t a1)
{
  if (a1 > 5)
  {
    if ((a1 - 8) < 4)
    {
      v2 = 0x656E696665646E75;
LABEL_9:
      v4 = v2;
      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v3);

      return v4;
    }

    if (a1 == 6)
    {
      return 6513005;
    }

    else
    {
      if (a1 != 7)
      {
LABEL_21:
        v2 = 0x6E676F6365726E75;
        goto LABEL_9;
      }

      return 0x6E6F69736976;
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 30324;
    }

    else if (a1 == 4)
    {
      return 0x79616C50726163;
    }

    else
    {
      return 0x6863746177;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 6578544;
      }

      goto LABEL_21;
    }

    return 0x656E6F6870;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

__n128 sub_10000588C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000058B0(void *a1)
{
  v1 = [a1 deviceInfoIntegerValueForKey:UISDeviceContextDeviceIdiomKey];
  if ((v1 - 1) > 6)
  {
    return -1;
  }

  else
  {
    return qword_10004D928[(v1 - 1)];
  }
}

uint64_t sub_100005900(void *a1)
{
  _StringGuts.grow(_:)(51);
  v2._countAndFlagsBits = 0x3D656369766544;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  result = [a1 deviceInfoIntegerValueForKey:UISDeviceContextDeviceClassKey];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v4._countAndFlagsBits = BSDeviceClass.description.getter(result);
    String.append(_:)(v4);

    v5._countAndFlagsBits = 0x3D6D6F696449202CLL;
    v5._object = 0xE800000000000000;
    String.append(_:)(v5);
    sub_1000058B0(a1);
    type metadata accessor for UIUserInterfaceIdiom(0);
    _print_unlocked<A, B>(_:_:)();
    v6._countAndFlagsBits = 0x7542656D6F48202CLL;
    v6._object = 0xED00003D6E6F7474;
    String.append(_:)(v6);
    v7._countAndFlagsBits = BSDeviceHomeButtonType.description.getter([a1 deviceInfoIntegerValueForKey:UISDeviceContextHomeButtonTypeKey]);
    String.append(_:)(v7);

    v8._countAndFlagsBits = 0x72656E726F43202CLL;
    v8._object = 0xEF3D737569646152;
    String.append(_:)(v8);
    [a1 deviceInfoFloatValueForKey:UISDeviceContextDeviceCornerRadiusKey];
    v9._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v9);

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100005AC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100005B14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005B6C()
{
  v1 = v0;
  v36 = type metadata accessor for ShellToHostMessage();
  __chkstk_darwin(v36);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Callsite();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Unreachable();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SceneUpdateSeed();
  v37 = *(updated - 8);
  v38 = updated;
  v10 = __chkstk_darwin(updated);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  SceneUpdateHandshake.updateSeed.getter();
  swift_beginAccess();
  v15 = *(v0 + 24);
  if (*(v15 + 16) && (v16 = sub_100006EC0(v14), (v17 & 1) != 0))
  {
    v36 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();

    Callsite.init(_:_:_:_:)();
    Unreachable.init(_:diagnostics:callsite:)();
    sub_10000B700(&qword_10006EA30, &type metadata accessor for Unreachable, &protocol conformance descriptor for Unreachable);
    swift_allocError();
    v18 = v6;
    v35 = *(v6 + 16);
    v35(v19, v8, v5);
    Promise.fail(with:)();

    v20 = v37;
    (*(v37 + 16))(v12, v14, v38);
    swift_beginAccess();
    sub_100006158(0, v12);
    swift_endAccess();
    sub_100004C60(&qword_10006EA20, &qword_10004D9B0);
    swift_allocError();
    v35(v21, v8, v5);
    v22 = static Future.failed(dsoHandle:file:line:column:function:_:)();

    (*(v18 + 8))(v8, v5);
    (*(v20 + 8))(v14, v38);
  }

  else
  {
    swift_endAccess();
    sub_100004C60(&qword_10006EA20, &qword_10004D9B0);
    v22 = static Future.create(dsoHandle:file:line:column:function:)();
    v24 = v23;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v1 + 24);
    *(v1 + 24) = 0x8000000000000000;
    sub_100009D48(v24, v14, isUniquelyReferenced_nonNull_native);
    *(v1 + 24) = v39;
    swift_endAccess();
    v26 = sub_100004C60(&qword_10006EA28, &qword_10004D9B8);
    v27 = *(v26 + 48);
    v28 = *(v26 + 64);
    SceneUpdateHandshake.preferences.getter();
    v29 = v37;
    v30 = &v3[v27];
    v31 = v38;
    (*(v37 + 16))(v30, v14, v38);
    *&v3[v28] = SceneUpdateHandshake.fenceHandle.getter();
    swift_storeEnumTagMultiPayload();
    SceneMessenger.send(message:)();
    sub_100006DA8(v3);
    v32 = SceneUpdateHandshake.fenceHandle.getter();
    if (v32)
    {
      v33 = v32;
      [v32 invalidate];

      (*(v29 + 8))(v14, v31);
    }

    else
    {
      (*(v29 + 8))(v14, v31);
    }
  }

  return v22;
}

uint64_t sub_100006158(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100009D48(a1, a2, isUniquelyReferenced_nonNull_native);
    updated = type metadata accessor for SceneUpdateSeed();
    result = (*(*(updated - 8) + 8))(a2, updated);
    *v2 = v20;
  }

  else
  {
    v9 = sub_100006EC0(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10000AAE8(&type metadata accessor for SceneUpdateSeed, &qword_10006EA38, &unk_10004D9C0);
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for SceneUpdateSeed();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100009584(v11, v13, &type metadata accessor for SceneUpdateSeed, &qword_10006EA40, &type metadata accessor for SceneUpdateSeed, &protocol conformance descriptor for SceneUpdateSeed);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for SceneUpdateSeed();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_100006380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100009F4C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100006E04(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10000A978();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_1000093D4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_100006478(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10000A0C8(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for AgentDescriptor.Bundle();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1000070AC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10000AAE8(&type metadata accessor for AgentDescriptor.Bundle, &qword_10006EA80, &qword_10004D9D8);
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for AgentDescriptor.Bundle();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100009584(v11, v13, &type metadata accessor for AgentDescriptor.Bundle, &qword_10006EA50, &type metadata accessor for AgentDescriptor.Bundle, &protocol conformance descriptor for AgentDescriptor.Bundle);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for AgentDescriptor.Bundle();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1000066A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10000A2CC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100007180(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10000AD64();
        v14 = v16;
      }

      result = sub_100009838(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_100006798(uint64_t a1, uint64_t a2)
{
  v5 = sub_100004C60(&qword_10006EA60, &unk_10004E150);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for LaunchPayload();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_10000B64C(a1);
    sub_100007870(a2, v7);
    v12 = type metadata accessor for AgentDescriptor.Bundle();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B64C(v7);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_10000A448(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for AgentDescriptor.Bundle();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1000069A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10000A64C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100007180(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10000B394();
        v14 = v16;
      }

      result = sub_100009838(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_100006A9C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for SceneUpdateSeed();
  v5 = *(updated - 8);
  __chkstk_darwin(updated);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(v2 + 24) + 16) && (sub_100006EC0(a1), (v8 & 1) != 0))
  {
    swift_endAccess();

    Promise.succeed(with:)();
  }

  else
  {
    swift_endAccess();
  }

  (*(v5 + 16))(v7, a1, updated);
  swift_beginAccess();
  sub_100006158(0, v7);
  return swift_endAccess();
}

uint64_t sub_100006C04()
{

  return swift_deallocClassInstance();
}

id sub_100006C8C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ShellToHostMessage();
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(sub_100004C60(&qword_10006EA18, &qword_10004D9A8) + 48);
  v8 = type metadata accessor for PreviewPreferences();
  (*(*(v8 - 8) + 16))(v6, a1, v8);
  *&v6[v7] = a2;
  swift_storeEnumTagMultiPayload();
  v9 = a2;
  SceneMessenger.send(message:)();
  sub_100006DA8(v6);
  return [v9 invalidate];
}

uint64_t sub_100006DA8(uint64_t a1)
{
  v2 = type metadata accessor for ShellToHostMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100006E04(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100007354(a1, a2, v4);
}

unint64_t sub_100006E7C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000740C(a1, v4);
}

unint64_t sub_100006EC0(uint64_t a1)
{
  type metadata accessor for SceneUpdateSeed();
  sub_10000B700(&qword_10006EA40, &type metadata accessor for SceneUpdateSeed, &protocol conformance descriptor for SceneUpdateSeed);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100007598(a1, v2, &type metadata accessor for SceneUpdateSeed, &qword_10006EA48, &type metadata accessor for SceneUpdateSeed, &protocol conformance descriptor for SceneUpdateSeed);
}

unint64_t sub_100006F94(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000074D4(a1, v4);
}

unint64_t sub_100006FD8(uint64_t a1)
{
  type metadata accessor for ContentKey();
  sub_10000B700(&qword_10006EA70, &type metadata accessor for ContentKey, &protocol conformance descriptor for ContentKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100007598(a1, v2, &type metadata accessor for ContentKey, &qword_10006EA78, &type metadata accessor for ContentKey, &protocol conformance descriptor for ContentKey);
}

unint64_t sub_1000070AC(uint64_t a1)
{
  type metadata accessor for AgentDescriptor.Bundle();
  sub_10000B700(&qword_10006EA50, &type metadata accessor for AgentDescriptor.Bundle, &protocol conformance descriptor for AgentDescriptor.Bundle);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100007598(a1, v2, &type metadata accessor for AgentDescriptor.Bundle, &qword_10006EA58, &type metadata accessor for AgentDescriptor.Bundle, &protocol conformance descriptor for AgentDescriptor.Bundle);
}

unint64_t sub_100007180(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();

  return sub_100007738(a1, a2, v4);
}

unint64_t sub_100007214(uint64_t a1)
{
  type metadata accessor for ContentCategory();
  sub_10000B700(&qword_10006EAA0, &type metadata accessor for ContentCategory, &protocol conformance descriptor for ContentCategory);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100007598(a1, v2, &type metadata accessor for ContentCategory, &qword_10006EAA8, &type metadata accessor for ContentCategory, &protocol conformance descriptor for ContentCategory);
}

unint64_t sub_1000072E8(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_100007804(a1, v2);
}

unint64_t sub_100007354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000740C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000B748(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000B7A4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000074D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10000B6B4();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100007598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_10000B700(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_100007738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100007804(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100007870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000070AC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000AED0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for AgentDescriptor.Bundle();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for LaunchPayload();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_100009A04(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for LaunchPayload();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_100007A10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  updated = type metadata accessor for SceneUpdateSeed();
  v6 = *(updated - 8);
  __chkstk_darwin(updated);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100004C60(&qword_10006EA38, &unk_10004D9C0);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, updated);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, updated);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10000B700(&qword_10006EA40, &type metadata accessor for SceneUpdateSeed, &protocol conformance descriptor for SceneUpdateSeed);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, updated);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_100007DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004C60(&qword_10006EAB0, &qword_10004D9F8);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100008094(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AgentDescriptor.Bundle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100004C60(&qword_10006EA80, &qword_10004D9D8);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10000B700(&qword_10006EA50, &type metadata accessor for AgentDescriptor.Bundle, &protocol conformance descriptor for AgentDescriptor.Bundle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_100008470(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004C60(&unk_10006FC50, &unk_10004D9E8);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if (v21)
      {
        Hasher._combine(_:)(1uLL);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_100008738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = type metadata accessor for LaunchPayload();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AgentDescriptor.Bundle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100004C60(&qword_10006EA68, &qword_10004D9D0);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_10000B700(&qword_10006EA50, &type metadata accessor for AgentDescriptor.Bundle, &protocol conformance descriptor for AgentDescriptor.Bundle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

Swift::Int sub_100008BE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004C60(&unk_10006EAC0, &unk_10004DA08);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100008E88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004C60(&qword_10006EAB8, &qword_10004DA00);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if (v21)
      {
        Hasher._combine(_:)(1uLL);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

Swift::Int sub_100009150(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004C60(&unk_10006EA90, &qword_10004D9E0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1000093D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100009584(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = _HashTable.previousHole(before:)();
    v18 = v16;
    v40 = (v17 + 1) & v16;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v44 = *(v19 + 56);
    v38 = (v19 - 8);
    v39 = v20;
    do
    {
      v21 = v44 * v15;
      v22 = v18;
      v23 = v19;
      v39(v12, *(a2 + 48) + v44 * v15, v8);
      sub_10000B700(v41, v42, v43);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v12, v8);
      v18 = v22;
      v25 = v24 & v22;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v44 * a1;
          v29 = v28 + v21 + v44;
          v30 = v44 * a1 < v21 || result >= v29;
          v19 = v23;
          if (!v30)
          {
            if (v44 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v18 = v22;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 8 * a1);
            v33 = (v31 + 8 * v15);
            if (a1 != v15 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v15;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v19 = v23;
LABEL_4:
      v15 = (v15 + 1) & v18;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100009838(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();
      if (v9)
      {
        Hasher._combine(_:)(1uLL);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v11)
      {
LABEL_13:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100009A04(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgentDescriptor.Bundle();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_10000B700(&qword_10006EA50, &type metadata accessor for AgentDescriptor.Bundle, &protocol conformance descriptor for AgentDescriptor.Bundle);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for LaunchPayload() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100009D48(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  updated = type metadata accessor for SceneUpdateSeed();
  v9 = *(updated - 8);
  __chkstk_darwin(updated);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100006EC0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10000AAE8(&type metadata accessor for SceneUpdateSeed, &qword_10006EA38, &unk_10004D9C0);
      goto LABEL_7;
    }

    sub_100007A10(v17, a3 & 1);
    v22 = sub_100006EC0(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, updated);
      return sub_10000A7C8(v14, v11, a1, v20, &type metadata accessor for SceneUpdateSeed);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_100009F4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100006E04(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100007DEC(v16, a4 & 1);
      v11 = sub_100006E04(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000A978();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_10000A0C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for AgentDescriptor.Bundle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000070AC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10000AAE8(&type metadata accessor for AgentDescriptor.Bundle, &qword_10006EA80, &qword_10004D9D8);
      goto LABEL_7;
    }

    sub_100008094(v17, a3 & 1);
    v22 = sub_1000070AC(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10000A7C8(v14, v11, a1, v20, &type metadata accessor for AgentDescriptor.Bundle);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_10000A2CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100007180(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100008470(v16, a4 & 1);
      v11 = sub_100007180(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000AD64();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_10000A448(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for AgentDescriptor.Bundle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000070AC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10000AED0();
      goto LABEL_7;
    }

    sub_100008738(v17, a3 & 1);
    v28 = sub_1000070AC(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10000A884(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for LaunchPayload();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_10000A64C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100007180(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100008E88(v16, a4 & 1);
      v11 = sub_100007180(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000B394();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_10000A7C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_10000A884(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AgentDescriptor.Bundle();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for LaunchPayload();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_10000A978()
{
  v1 = v0;
  sub_100004C60(&qword_10006EAB0, &qword_10004D9F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10000AAE8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - v7;
  sub_100004C60(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

void *sub_10000AD64()
{
  v1 = v0;
  sub_100004C60(&unk_10006FC50, &unk_10004D9E8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_10000AED0()
{
  v1 = v0;
  v41 = type metadata accessor for LaunchPayload();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AgentDescriptor.Bundle();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004C60(&qword_10006EA68, &qword_10004D9D0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_10000B224()
{
  v1 = v0;
  sub_100004C60(&unk_10006EAC0, &unk_10004DA08);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10000B394()
{
  v1 = v0;
  sub_100004C60(&qword_10006EAB8, &qword_10004DA00);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10000B500()
{
  v1 = v0;
  sub_100004C60(&unk_10006EA90, &qword_10004D9E0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_10000B64C(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006EA60, &unk_10004E150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000B6B4()
{
  result = qword_10006EA88;
  if (!qword_10006EA88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006EA88);
  }

  return result;
}

uint64_t sub_10000B700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10000B7F8(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 scene];
  v7 = [v6 settings];
  v8 = [v7 displayConfiguration];

  if (v8)
  {
    v9 = [v8 identity];
    v10 = [v9 rootIdentity];

    v19[4] = v10;
    __chkstk_darwin(v11);
    v19[-2] = v10;
    v19[-1] = v8;
    swift_beginAccess();
    sub_100004C60(&qword_10006EBD0, &qword_10004DA98);
    sub_10000BFB0();
    KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)();
    swift_endAccess();
    v12 = v20;
    [v20 addScene:v6];
  }

  else
  {
    static Logger.uv.getter();
    v13 = v6;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "Cannot bind FBScene lacking display configuration: %@", v16, 0xCu);
      sub_10000BF34(v17, &qword_10006EBC8, &qword_10004DE70);
    }

    else
    {
      v18 = v14;
      v14 = v13;
    }

    (*(v3 + 8))(v5, v2);
  }
}

id sub_10000BB08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v21 = a3;
    v16 = v15;
    *v14 = 138412290;
    *(v14 + 4) = v10;
    *v15 = v10;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Adding a new root window binder for local scene, with root display identity: %@", v14, 0xCu);
    sub_10000BF34(v16, &qword_10006EBC8, &qword_10004DE70);
    a3 = v21;

    a2 = v20;
  }

  (*(v7 + 8))(v9, v6);
  result = [objc_allocWithZone(UIRootWindowScenePresentationBinder) initWithPriority:0 displayConfiguration:a2];
  *a3 = result;
  return result;
}

uint64_t sub_10000BCF8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10000BD78()
{
  if (qword_10006E5D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for PreviewShellPluginRegistry();
  sub_10000BE8C(v0, qword_1000736E8);
  swift_beginAccess();
  PreviewShellPluginRegistry.sceneBinder.getter();
  swift_endAccess();
  if (v5)
  {
    return sub_10000BF1C(v4, qword_10006EAD0);
  }

  v2 = type metadata accessor for SceneBinder.DefaultBinder();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10002B5D8(&_swiftEmptyArrayStorage);
  qword_10006EAE8 = v2;
  result = sub_10000BEC4();
  qword_10006EAF0 = result;
  qword_10006EAD0[0] = v3;
  if (v5)
  {
    return sub_10000BF34(v4, &qword_10006EBC0, &qword_10004DA90);
  }

  return result;
}

uint64_t sub_10000BE8C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000BEC4()
{
  result = qword_10006EBB8;
  if (!qword_10006EBB8)
  {
    type metadata accessor for SceneBinder.DefaultBinder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EBB8);
  }

  return result;
}

uint64_t sub_10000BF1C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000BF34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004C60(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10000BFB0()
{
  result = qword_10006EBD8;
  if (!qword_10006EBD8)
  {
    sub_100004D0C(&qword_10006EBD0, &qword_10004DA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EBD8);
  }

  return result;
}

uint64_t sub_10000C088(int a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  sub_10000E86C(v5 + 56, &v15);
  if (*&v16[8])
  {
    *&v18[12] = *&v16[12];
    v17 = v15;
    *v18 = *v16;
    if (*&v16[24] == a1)
    {
      v8 = *&v18[8];
      v9 = *&v18[16];
      sub_10000E678(&v17, *&v18[8]);
      v10 = a2(v8, v9);
      sub_10000BF34(&v17, &qword_10006ED08, &qword_10004DB80);
      return v10;
    }

    v12 = &qword_10006ED08;
    v13 = &qword_10004DB80;
    v14 = &v17;
  }

  else
  {
    v12 = &qword_10006ED00;
    v13 = &qword_10004DB78;
    v14 = &v15;
  }

  sub_10000BF34(v14, v12, v13);
  sub_100004C60(&qword_10006E8F8, &qword_10004D790);
  return static Future<A>.succeeded(dsoHandle:file:line:column:function:)();
}

uint64_t sub_10000C1DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v67 = a7;
  v66 = a6;
  v65 = a5;
  updated = a4;
  v73 = a3;
  v58 = a1;
  v74 = type metadata accessor for ExecutionLane();
  v70 = *(v74 - 8);
  __chkstk_darwin(v74);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ContentKey();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Logger();
  v62 = *(v63 - 1);
  __chkstk_darwin(v63);
  v72 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Callsite();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PreviewAgentConnector();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v8 + 48);
  v22 = *(v18 + 16);
  v64 = a2;
  v22(v20, a2, v17);
  v23 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v8;
  (*(v18 + 32))(v24 + v23, v20, v17);
  v71 = v8;
  swift_retain_n();
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v14 + 8))(v16, v13);
  v25 = v58;
  v76 = v73;
  v77 = updated;
  v78 = v21;
  swift_beginAccess();
  sub_100004C60(&qword_10006ECB0, &qword_10004DB48);
  sub_10000DEB8();
  KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)();
  swift_endAccess();
  sub_10000E808(v83, v80);
  v27 = v21[3];
  v26 = v21[4];
  updated = type metadata accessor for CanvasUpdater.UpdateDelegate(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  v73 = sub_100012360(v80, v27, v26, sub_10000DE24, v24);
  swift_unknownObjectRelease();
  v68 = v24;

  if (v21[2])
  {
    v80[0] = v21[2];
    sub_10000E7C0(&qword_10006ECC0, 255, type metadata accessor for CanvasUpdater.UpdateDelegate, &unk_10004DCC8);
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  }

  v21[2] = v73;

  v28 = v72;
  static Logger.uv.getter();
  v29 = v60;
  v30 = v59;
  v31 = v25;
  v32 = v61;
  (*(v60 + 16))(v59, v31, v61);
  sub_10000E808(v83, v80);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v35 = 136446722;
    swift_getObjectType();
    v36 = dispatch thunk of PreviewShellScene.identifier.getter();
    v38 = v32;
    v39 = sub_10000E0C0(v36, v37, &v79);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2082;
    sub_10000E7C0(&qword_10006ECD8, 255, &type metadata accessor for ContentKey, &protocol conformance descriptor for ContentKey);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    (*(v29 + 8))(v30, v38);
    v43 = sub_10000E0C0(v40, v42, &v79);

    *(v35 + 14) = v43;
    *(v35 + 22) = 2082;
    sub_10000E678(v80, v81);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    sub_10000519C(v80);
    v47 = sub_10000E0C0(v44, v46, &v79);

    *(v35 + 24) = v47;
    _os_log_impl(&_mh_execute_header, v33, v34, "Canvas %{public}s performing update for %{public}s using %{public}s", v35, 0x20u);
    swift_arrayDestroy();

    (*(v62 + 8))(v72, v63);
  }

  else
  {

    (*(v29 + 8))(v30, v32);
    (*(v62 + 8))(v28, v63);
    sub_10000519C(v80);
  }

  sub_100004C60(&qword_10006ECC8, &unk_10004DB50);
  v62 = static Future.create(dsoHandle:file:line:column:function:)();
  v72 = v48;
  sub_10000E678(v83, v83[3]);
  v49 = swift_allocObject();
  v50 = v71;
  v49[2] = sub_10000DD58;
  v49[3] = v50;
  v51 = v73;
  v49[4] = v73;
  v49[5] = v21;
  v81 = updated;
  v63 = type metadata accessor for CanvasUpdater.UpdateDelegate;
  v82 = sub_10000E7C0(&qword_10006ECD0, 255, type metadata accessor for CanvasUpdater.UpdateDelegate, &unk_10004DCF0);
  v80[0] = v51;
  swift_retain_n();

  v66 = dispatch thunk of CanvasContentProviderBox.performUpdate(using:providerPromise:updatePayload:controlStates:agentContext:makeSceneContext:delegate:)();

  sub_10000519C(v80);
  v52 = swift_allocObject();
  *(v52 + 16) = v21;
  *(v52 + 24) = v51;

  v53 = v69;
  static ExecutionLane.any.getter();
  type metadata accessor for SceneLayout();
  v67 = Future.tryThen<A>(dsoHandle:file:line:column:function:on:transform:)();

  v70 = *(v70 + 8);
  (v70)(v53, v74);
  sub_100004C60(&qword_10006E8F8, &qword_10004D790);
  static Future<A>.zip<A, B>(dsoHandle:file:line:column:function:_:_:)();
  static ExecutionLane.any.getter();
  type metadata accessor for CanvasUpdater.UpdateResult(0);
  Future.mapSuccess<A>(dsoHandle:file:line:column:function:on:_:)();

  v54 = v74;
  v55 = v70;
  (v70)(v53, v74);
  v80[0] = v51;
  sub_10000E7C0(&qword_10006ECC0, 255, v63, &unk_10004DCC8);

  Invalidatable.onInvalidation(_:)();

  sub_10000519C(v83);
  static ExecutionLane.main.getter();

  Future.observeSuccess(on:_:)();

  v55(v53, v54);

  static ExecutionLane.any.getter();
  type metadata accessor for PropertyList();
  v56 = Future.mapSuccess<A>(dsoHandle:file:line:column:function:on:_:)();

  v55(v53, v54);
  return v56;
}

uint64_t sub_10000CF00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100036134(a1);
  sub_10000E678(a1, a1[3]);
  v6 = dispatch thunk of CanvasContentHost.viewController.getter();
  swift_beginAccess();
  v7 = *(a2 + 80);
  if (!v7)
  {

    goto LABEL_5;
  }

  v8 = sub_10000E678((a2 + 56), *(a2 + 80));
  v9 = *(v7 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = dispatch thunk of CanvasContentHost.viewController.getter();
  (*(v9 + 8))(v11, v7);

  if (v6 != v12)
  {
LABEL_5:
    v13 = &enum case for SceneUpdateTiming.async(_:);
    goto LABEL_6;
  }

  v13 = &enum case for SceneUpdateTiming.fenced(_:);
LABEL_6:
  v14 = *v13;
  updated = type metadata accessor for SceneUpdateTiming();
  return (*(*(updated - 8) + 104))(a3, v14, updated);
}

uint64_t sub_10000D0C4(void *a1, uint64_t a2)
{
  sub_100036254(a1);
  sub_10000E678(a1, a1[3]);
  v4 = dispatch thunk of CanvasContentHost.viewController.getter();
  swift_beginAccess();
  v5 = *(a2 + 80);
  if (!v5)
  {

    if (!*(a2 + 80))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v6 = sub_10000E678((a2 + 56), *(a2 + 80));
  v7 = *(v5 - 8);
  __chkstk_darwin(v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v9);
  v10 = dispatch thunk of CanvasContentHost.viewController.getter();
  (*(v7 + 8))(v9, v5);

  if (v4 != v10)
  {
    if (!*(a2 + 80))
    {
LABEL_5:
      sub_10000E678(a1, a1[3]);
      dispatch thunk of CanvasContentHost.didActivate()();
      goto LABEL_6;
    }

LABEL_4:
    sub_10000E808(a2 + 56, v13);
    sub_10000E678(v13, v13[3]);
    dispatch thunk of CanvasContentHost.didDeactivate()();
    sub_10000519C(v13);
    goto LABEL_5;
  }

LABEL_6:
  sub_10000E808(a1, v13);
  v14 = PreviewAgentConnector.pid.getter();
  swift_beginAccess();
  sub_10000E968(v13, a2 + 56, &qword_10006ED00, &qword_10004DB78);
  return swift_endAccess();
}

uint64_t sub_10000D2F4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v4 = type metadata accessor for PropertyList();
  __chkstk_darwin(v4 - 8);
  v17[0] = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004C60(&qword_10006ECE8, &qword_10004DB68);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = type metadata accessor for HostIdentity();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for HostedPreviewReply();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  dispatch thunk of PreviewShellScene.hostIdentity.getter();
  v14 = type metadata accessor for SceneLayout();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v8, a1, v14);
  (*(v15 + 56))(v8, 0, 1, v14);
  type metadata accessor for CanvasUpdater.UpdateResult(0);
  CanvasUpdateOutput.controlDescriptions.getter();
  CanvasUpdateOutput.controlStates.getter();
  CanvasUpdateOutput.hostedOutput.getter();
  HostedPreviewReply.init(hostIdentity:sceneLayout:controlDescriptions:controlStates:contentPayload:)();
  sub_10000E7C0(&qword_10006ECF0, 255, &type metadata accessor for HostedPreviewReply, &protocol conformance descriptor for HostedPreviewReply);
  PropertyListRepresentable.propertyList.getter();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10000D5DC()
{
  v1 = sub_100004C60(&qword_10006ED10, &qword_10004DB88);
  v19 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - v2;
  v4 = sub_100004C60(&qword_10006ED18, &unk_10004DB90);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  sub_100004C60(&qword_10006E8F8, &qword_10004D790);
  v18 = static Future.create(dsoHandle:file:line:column:function:)();
  v8 = v7;
  swift_beginAccess();
  if (*(v0 + 80))
  {
    sub_10000E808(v0 + 56, v20);
    sub_10000BF1C(v20, v21);
    sub_10000E678(v21, v21[3]);
    dispatch thunk of CanvasContentHost.confirmReadyForDisplayAfterAsyncResize()();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_10000E9D0;
    *(v9 + 24) = v8;

    Future.observeSuccess(_:)();

    sub_10000519C(v21);
  }

  v10 = swift_allocBox();
  v12 = v11;
  v13 = type metadata accessor for CancellationToken();
  v17 = *(*(v13 - 8) + 56);
  v17(v12, 1, 1, v13);
  EventStream.Sink.eventStream.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10000E920;
  *(v15 + 24) = v14;

  EventStream.observe(dsoHandle:file:line:column:function:_:)();

  (*(v19 + 8))(v3, v1);
  v17(v6, 0, 1, v13);
  swift_beginAccess();
  sub_10000E968(v6, v12, &qword_10006ED18, &unk_10004DB90);

  return v18;
}

uint64_t sub_10000DA24(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for CancellationToken();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = swift_projectBox();
  Promise<A>.trySucceed()();
  swift_beginAccess();
  result = (*(v3 + 48))(v6, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v5, v6, v2);
    CancellationToken.cancel(dsoHandle:file:line:column:function:)();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_10000DBAC()
{

  swift_unknownObjectRelease();

  sub_10000BF34(v0 + 56, &qword_10006ED00, &qword_10004DB78);

  return swift_deallocClassInstance();
}

uint64_t sub_10000DD00(uint64_t a1, uint64_t a2)
{
  result = sub_10000E7C0(&qword_10006ECA8, a2, type metadata accessor for HostedPreviewCanvas, &unk_10004DB04);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000DD60()
{
  v1 = type metadata accessor for PreviewAgentConnector();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000DE24(void *a1)
{
  type metadata accessor for PreviewAgentConnector();
  v3 = *(v1 + 16);

  return sub_10000D0C4(a1, v3);
}

unint64_t sub_10000DEB8()
{
  result = qword_10006ECB8;
  if (!qword_10006ECB8)
  {
    sub_100004D0C(&qword_10006ECB0, &qword_10004DB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006ECB8);
  }

  return result;
}

uint64_t sub_10000DF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_100004C60(&qword_10006ECF8, &qword_10004DB70) + 48);
  v5 = type metadata accessor for SceneLayout();
  (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
  v6 = *(type metadata accessor for CanvasUpdater.UpdateResult(0) + 20);
  updated = type metadata accessor for CanvasUpdateOutput();
  v8 = *(*(updated - 8) + 16);

  return v8(a2 + v6, a1, updated);
}

uint64_t sub_10000DFF0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10000E064(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10000E0C0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10000E0C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000E18C(v11, 0, 0, 1, a1, a2);
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
    sub_10000E760(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000519C(v11);
  return v7;
}

unint64_t sub_10000E18C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000E298(a5, a6);
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

char *sub_10000E298(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000E2E4(a1, a2);
  sub_10000E414(&off_100062540);
  return v3;
}

char *sub_10000E2E4(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000E500(v5, 0);
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
        v7 = sub_10000E500(v10, 0);
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

uint64_t sub_10000E414(uint64_t result)
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

  result = sub_10000E574(result, v11, 1, v3);
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

void *sub_10000E500(uint64_t a1, uint64_t a2)
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

  sub_100004C60(&qword_10006ECE0, &qword_10004DB60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000E574(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004C60(&qword_10006ECE0, &qword_10004DB60);
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

_BYTE **sub_10000E668(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_10000E678(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000E6BC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000E760(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E7C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10000E808(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E86C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006ED00, &qword_10004DB78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E8E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E928()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E968(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004C60(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id sub_10000EA08()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "DisplayTransformer created", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for DisplayTransformer();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "init");
}

id sub_10000EC5C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DisplayTransformer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000ECB4(uint64_t *a1, void *a2)
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

      sub_10000F94C();
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

    v19 = sub_10000EECC(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_10000F0AC(v20 + 1);
    }

    v18 = v8;
    sub_10000F2D4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10000F94C();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_10000F358(v18, v13, isUniquelyReferenced_nonNull_native);
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

Swift::Int sub_10000EECC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004C60(&unk_10006EDC0, &qword_10004DBE0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10000F94C();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10000F0AC(v9 + 1);
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

Swift::Int sub_10000F0AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004C60(&unk_10006EDC0, &qword_10004DBE0);
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

unint64_t sub_10000F2D4(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_10000F358(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000F0AC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10000F4B8();
      goto LABEL_12;
    }

    sub_10000F608(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000F94C();
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

id sub_10000F4B8()
{
  v1 = v0;
  sub_100004C60(&unk_10006EDC0, &qword_10004DBE0);
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

Swift::Int sub_10000F608(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004C60(&unk_10006EDC0, &qword_10004DBE0);
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

uint64_t sub_10000F81C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_10000F94C();
    sub_10000F998();
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10000ECB4(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_10000F94C()
{
  result = qword_10006EDB0;
  if (!qword_10006EDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006EDB0);
  }

  return result;
}

unint64_t sub_10000F998()
{
  result = qword_10006EDB8;
  if (!qword_10006EDB8)
  {
    sub_10000F94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EDB8);
  }

  return result;
}

id sub_10000FC28()
{
  v1 = *v0 + OBJC_IVAR____TtC12PreviewShell10SimDisplay_capabilities;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v1;
  v5 = v3;
  return v2;
}

void sub_10000FC78(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for Logger();
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = &v7[OBJC_IVAR____TtC12PreviewShell10SimDisplay_name];
  *v16 = a1;
  *(v16 + 1) = a2;
  *&v7[OBJC_IVAR____TtC12PreviewShell10SimDisplay_displayID] = a3;
  v17 = objc_opt_self();
  v18 = v7;
  v19 = [v17 uv_loadedInitialContext];
  if (!v19)
  {
    v19 = [v17 defaultContext];
  }

  v20 = [objc_opt_self() uv_loadedInitialContext];
  v22 = v20;
  if (!v20)
  {
    v23 = [objc_opt_self() mainScreen];
    v24 = [v23 displayConfiguration];

    if (!v24)
    {
      __break(1u);
      return;
    }

    v22 = [objc_allocWithZone(UISDisplayContext) initWithDisplayConfiguration:v24];
  }

  v43 = ObjectType;
  v25 = sub_1000020F0(v20, v21);
  v26 = v19;
  v27 = [v22 displayEdgeInfo];
  if (!v27)
  {
    v27 = [objc_allocWithZone(UISApplicationSupportDisplayEdgeInfo) init];
  }

  v28 = [v22 exclusionArea];
  v29 = [objc_allocWithZone(UISDisplayContext) initWithDisplayConfiguration:a4 displayEdgeInfo:v27 exclusionArea:v28];

  v30 = &v18[OBJC_IVAR____TtC12PreviewShell10SimDisplay_capabilities];
  *v30 = v26;
  *(v30 + 1) = v29;
  v30[16] = v25;
  static Logger.uv.getter();
  v31 = v18;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v35;
    *v34 = 67240450;
    *(v34 + 4) = a3;
    *(v34 + 8) = 2082;
    v36 = *(v30 + 1);
    v37 = *v30;
    v38 = v36;

    v39 = sub_100005900(v37);
    v41 = v40;

    v42 = sub_10000E0C0(v39, v41, &v46);

    *(v34 + 10) = v42;
    _os_log_impl(&_mh_execute_header, v32, v33, "SimDisplay %{public}u capabilities: <%{public}s>", v34, 0x12u);
    sub_10000519C(v35);
  }

  else
  {
  }

  (*(v44 + 8))(v15, v45);
  v47.receiver = v31;
  v47.super_class = v43;
  objc_msgSendSuper2(&v47, "init");
}

uint64_t sub_100010058()
{
  if (*(v0 + 16))
  {
    v10[0] = *(v0 + 16);
    type metadata accessor for CanvasUpdater.UpdateDelegate(0);
    sub_1000125F0(&qword_10006ECC0, type metadata accessor for CanvasUpdater.UpdateDelegate, &unk_10004DCC8);
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  }

  *(v0 + 16) = 0;

  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = sub_10000519C(v10))
  {
    v8 = i;
LABEL_11:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_10000E808(*(v1 + 56) + 40 * (v9 | (v8 << 6)), v10);
    sub_10000E678(v10, v10[3]);
    dispatch thunk of CanvasContentProviderBox.invalidateProviders()();
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100010230(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene);
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectRelease();
  return dispatch thunk of Future.cancel(dsoHandle:file:line:column:function:)();
}

uint64_t sub_1000102B4(uint64_t a1)
{
  updated = type metadata accessor for SceneUpdateSeed();
  v2 = *(updated - 8);
  __chkstk_darwin(updated);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Callsite();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v6 + 8))(v8, v5);
  SceneUpdateHandshake.updateSeed.getter();
  sub_1000125F0(&qword_10006EFF0, &type metadata accessor for SceneUpdateSeed, &protocol conformance descriptor for SceneUpdateSeed);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  result = (*(v2 + 8))(v4, updated);
  if (v10[3] == v10[2])
  {
    return Promise.trySucceed(with:)();
  }

  return result;
}

uint64_t sub_1000104F4(uint64_t result, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene))
  {
    v4 = result;
    v5 = *(v2 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    v7(v10, ObjectType, v5);
    swift_unknownObjectRelease();
    v8 = v11;
    v9 = v12;
    sub_10000E678(v10, v11);
    (*(v9 + 16))(v4, a2, v8, v9);
    return sub_10000519C(v10);
  }

  return result;
}

uint64_t sub_1000105CC(uint64_t a1)
{
  sub_100012578(v1 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_providerBox, v7);
  if (v8)
  {
    sub_10000E678(v7, v8);
    dispatch thunk of CanvasContentProviderBox.notePreviewCrashed(pid:)();
    result = sub_10000519C(v7);
  }

  else
  {
    result = sub_100012638(v7);
  }

  if (*(v1 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene))
  {
    v4 = *(v1 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    swift_unknownObjectRetain();
    v6(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000106B0()
{

  v1 = OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_seed;
  updated = type metadata accessor for SceneUpdateSeed();
  (*(*(updated - 8) + 8))(v0 + v1, updated);

  sub_100012638(v0 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_providerBox);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1000107F0()
{
  v1 = (*v0 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene);
  if (*v1)
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 48);
    swift_unknownObjectRetain();
    v4(ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

void sub_100010890()
{
  v1 = (*v0 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene);
  if (*v1)
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 56);
    swift_unknownObjectRetain();
    v4(ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100010930(uint64_t result)
{
  v2 = (*v1 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene);
  if (*v2)
  {
    v3 = result;
    v4 = v2[1];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 64);
    swift_unknownObjectRetain();
    v6(v3, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000109D8()
{
  v1 = (*v0 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene);
  if (*v1)
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 32);
    swift_unknownObjectRetain();
    v4(ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100010A9C(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) + 8);
  v5 = swift_unknownObjectRetain();
  a1(v5, v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_100010B04@<X0>(void *a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a4;
  v28 = a5;
  v25 = a3;
  v26 = a2;
  v29 = a6;
  v7 = type metadata accessor for PreviewSceneRole();
  __chkstk_darwin(v7 - 8);
  updated = type metadata accessor for SceneUpdateSeed();
  v8 = *(updated - 8);
  __chkstk_darwin(updated);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SceneUpdateTiming();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v20 = sub_10000E678(a1, v18);
  v30[3] = v18;
  v30[4] = *(v19 + 8);
  v21 = sub_100011FC4(v30);
  (*(*(v18 - 8) + 16))(v21, v20, v18);
  v26(v30);
  sub_10000519C(v30);
  (*(v8 + 16))(v10, v27 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_seed, updated);
  (*(v12 + 16))(v15, v17, v11);
  swift_getObjectType();
  dispatch thunk of PreviewShellScene.role.getter();
  SceneUpdateContext.init(seed:timing:role:)();
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_100010DB4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_10000E678(a1, v5);
  return sub_100011CFC(a3, v7, a2, v5, *(v6 + 8));
}

uint64_t sub_100010E74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ExecutionLane();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = SceneUpdateHandshake.fenceHandle.getter();
  if (updated)
  {
    v11 = updated;
    swift_getObjectType();
    v12 = dispatch thunk of PreviewShellScene.windowScene.getter();
    [v11 applyToScene:v12];
  }

  v13 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  (*(v13 + 16))(v21, ObjectType, v13);
  v15 = v22;
  v16 = v23;
  sub_10000E678(v21, v22);
  (*(v16 + 8))(a1, v15, v16);
  sub_10000E808(a2, v20);
  v17 = swift_allocObject();
  sub_10000BF1C(v20, v17 + 16);
  static ExecutionLane.any.getter();
  type metadata accessor for SceneUpdateTiming();
  v18 = Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

  (*(v7 + 8))(v9, v6);
  sub_10000519C(v21);
  return v18;
}

uint64_t sub_1000110B4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v2 = type metadata accessor for ExecutionLane();
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SceneLayout();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (&v21 - v10);
  v12 = type metadata accessor for Callsite();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v13 + 8))(v15, v12);
  (*(v21 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_didUpdate))(v22);
  swift_getObjectType();
  sub_100011858(v11);
  sub_100012108();
  static CATransaction.afterSynchronize()();
  (*(v6 + 16))(v9, v11, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v9, v5);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10001216C;
  *(v18 + 24) = v17;
  static ExecutionLane.any.getter();
  v19 = Future.mapSuccess<A>(dsoHandle:file:line:column:function:on:_:)();

  (*(v23 + 8))(v4, v24);
  (*(v6 + 8))(v11, v5);
  return v19;
}

uint64_t sub_100011458(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ExecutionLane();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SceneUpdateTiming();
  v7 = *(updated - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(updated);
  v10 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = *(v7 + 16);
  v13(&v22 - v11, a1, updated);
  v14 = (*(v7 + 88))(v12, updated);
  if (v14 == enum case for SceneUpdateTiming.fenced(_:))
  {
    sub_100004C60(&qword_10006EA20, &qword_10004D9B0);
    return static Future.succeeded(dsoHandle:file:line:column:function:_:)();
  }

  else if (v14 == enum case for SceneUpdateTiming.async(_:))
  {
    v23 = v4;
    sub_10000E678(a2, a2[3]);
    dispatch thunk of CanvasContentHost.confirmReadyForDisplayAfterAsyncResize()();
    v13(v10, a1, updated);
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = swift_allocObject();
    (*(v7 + 32))(v17 + v16, v10, updated);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1000122A4;
    *(v18 + 24) = v17;
    v19 = v24;
    static ExecutionLane.any.getter();
    v20 = Future.mapSuccess<A>(dsoHandle:file:line:column:function:on:_:)();

    (*(v25 + 8))(v19, v23);
    return v20;
  }

  else
  {
    sub_100004C60(&qword_10006EA20, &qword_10004D9B0);
    SceneUpdateTiming.unknownTimingError.getter();
    v21 = static Future.failed(dsoHandle:file:line:column:function:_:)();

    (*(v7 + 8))(v12, updated);
    return v21;
  }
}

void sub_100011858(void *a3@<X8>)
{
  v4 = dispatch thunk of PreviewShellScene.windowScene.getter();
  v5 = [v4 _FBSScene];

  v26 = [v5 settings];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    if (qword_10006E628 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for SceneLayout();
    v13 = sub_10000BE8C(v12, qword_100073738);
    v14 = *(*(v12 - 8) + 16);
    v15 = a3;
    v16 = v12;

    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 previewSceneLayout];
  if (v8 == 1)
  {
    [v7 frame];
    v18 = v17;
    v20 = v19;

    *a3 = v18;
    a3[1] = v20;
    v21 = &enum case for SceneLayout.custom(_:);
LABEL_19:
    v24 = *v21;
    v25 = type metadata accessor for SceneLayout();
    v14 = *(*(v25 - 8) + 104);
    v16 = v25;
    v15 = a3;
    v13 = v24;

LABEL_10:
    v14(v15, v13, v16);
    return;
  }

  if (!v8)
  {
    v9 = [v7 interfaceOrientation];

    v10 = type metadata accessor for PreviewTraits.Orientation();
    if ((v9 - 2) > 2)
    {
      v11 = &enum case for PreviewTraits.Orientation.portrait(_:);
    }

    else
    {
      v11 = *(&off_100062C70 + (v9 - 2));
    }

    (*(*(v10 - 8) + 104))(a3, *v11, v10);
    v21 = &enum case for SceneLayout.device(_:);
    goto LABEL_19;
  }

  if (qword_10006E628 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for SceneLayout();
  v23 = sub_10000BE8C(v22, qword_100073738);
  (*(*(v22 - 8) + 16))(a3, v23, v22);
}

uint64_t sub_100011B5C()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100011BF0(uint64_t a1)
{
  result = type metadata accessor for SceneUpdateSeed();
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

uint64_t sub_100011CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ExecutionLane();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = a4;
  v21[4] = a5;
  v14 = sub_100011FC4(v21);
  (*(*(a4 - 8) + 16))(v14, a2, a4);
  static ExecutionLane.main.getter();
  sub_10000E808(v21, v20);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  sub_10000BF1C(v20, v15 + 24);
  type metadata accessor for SceneUpdateTiming();

  Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

  v16 = *(v11 + 8);
  v16(v13, v10);
  static ExecutionLane.main.getter();
  sub_10000E808(v21, v20);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a1;
  sub_10000BF1C(v20, v17 + 32);
  type metadata accessor for SceneLayout();

  v18 = Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

  v16(v13, v10);
  sub_10000519C(v21);
  return v18;
}

uint64_t *sub_100011FC4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100012028()
{

  sub_10000519C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100012094()
{

  sub_10000519C((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_100012108()
{
  result = qword_10006EFD8;
  if (!qword_10006EFD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006EFD8);
  }

  return result;
}

uint64_t sub_100012184()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000121BC()
{
  sub_10000519C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100012214(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1000122BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v7 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return v6(a2, v7, v4);
}

void *sub_100012360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for InvalidationHandle();
  swift_allocObject();
  *(v5 + 16) = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  SceneUpdateSeed.init()();
  v12 = (v5 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_scene);
  *v12 = 0;
  v12[1] = 0;
  sub_100012578(a1, v6 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_providerBox);
  *v12 = a2;
  v12[1] = a3;
  v13 = (v6 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_didUpdate);
  *v13 = a4;
  v13[1] = a5;
  sub_100004C60(&qword_10006EFE8, &qword_10004DD48);
  swift_unknownObjectRetain();

  *(v6 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_handshakeFuture) = static Future.create(dsoHandle:file:line:column:function:)();
  *(v6 + OBJC_IVAR____TtCC12PreviewShell13CanvasUpdaterP33_AD1F3764465B03D85C2D8A634FCA9F5714UpdateDelegate_handshakePromise) = v14;
  sub_1000125F0(&qword_10006ECC0, type metadata accessor for CanvasUpdater.UpdateDelegate, &unk_10004DCC8);

  Invalidatable.onInvalidation(_:)();

  sub_100012638(a1);
  return v6;
}

uint64_t sub_100012578(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006EFE0, &qword_10004DD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000125F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100012638(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006EFE0, &qword_10004DD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000126B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SceneLayout();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    updated = type metadata accessor for CanvasUpdateOutput();
    v11 = *(*(updated - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, updated);
  }
}

uint64_t sub_1000127B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SceneLayout();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    updated = type metadata accessor for CanvasUpdateOutput();
    v13 = *(*(updated - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, updated);
  }
}

uint64_t sub_1000128D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001290C(uint64_t a1)
{
  result = type metadata accessor for SceneLayout();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CanvasUpdateOutput();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100012998()
{
  type metadata accessor for SimDisplaySceneRegistry();
  result = swift_initStaticObject();
  qword_1000736B8 = result;
  return result;
}

uint64_t sub_100012A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = a3;
  v69 = a2;
  ObjectType = swift_getObjectType();
  v61 = type metadata accessor for SceneCrashedStyle();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for PreviewSceneRole();
  v70 = *(v80 - 8);
  v7 = __chkstk_darwin(v80);
  v66 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v67 = &v51 - v10;
  v11 = __chkstk_darwin(v9);
  v55 = &v51 - v12;
  __chkstk_darwin(v11);
  v65 = &v51 - v13;
  v58 = type metadata accessor for SceneStoppedStyle();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Identifier();
  v62 = *(v15 - 8);
  v63 = v15;
  __chkstk_darwin(v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_snapshotView;
  *&v4[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_snapshotView] = 0;
  v19 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedViewController;
  *&v4[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedViewController] = 0;
  v20 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedViewController;
  *&v4[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedViewController] = 0;
  *&v4[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer] = 0;
  v54 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage;
  *&v4[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage] = 0;
  v21 = a1;
  v22 = PreviewSceneAgentProxy.scene.getter();
  v23 = [v22 scene];

  v24 = [v23 uiPresentationManager];
  if (!v24)
  {
    sub_100014D48();
    v35 = swift_allocError();
    *v36 = v23;
    swift_willThrow();

    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
    return v35;
  }

  v52 = v23;
  v54 = v21;
  aBlock = 0;
  v75 = 0xE000000000000000;
  v25 = v24;
  _StringGuts.grow(_:)(25);

  aBlock = 0xD000000000000017;
  v75 = 0x8000000100054320;
  Identifier.init()();
  sub_100014DB4(&qword_10006F1A8, &type metadata accessor for Identifier, &protocol conformance descriptor for Identifier);
  v26 = v63;
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  (*(v62 + 8))(v17, v26);
  v28 = String._bridgeToObjectiveC()();

  v53 = v25;
  v29 = [v25 createPresenterWithIdentifier:v28];

  *&v4[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter] = v29;
  v78 = sub_1000133C0;
  v79 = 0;
  aBlock = _NSConcreteStackBlock;
  v75 = 1107296256;
  v76 = sub_1000133D0;
  v77 = &unk_100062CA8;
  v30 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  [v29 modifyPresentationContext:v30];
  swift_unknownObjectRelease();
  _Block_release(v30);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    v63 = v4;
    v62 = swift_getObjectType();
    dispatch thunk of PreviewShellScene.role.getter();
    v32 = v55;
    v33 = enum case for PreviewSceneRole.hosted(_:);
    v51 = *(v70 + 104);
    v51(v55);
    sub_100014DB4(&unk_10006F1B0, &type metadata accessor for PreviewSceneRole, &protocol conformance descriptor for PreviewSceneRole);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (aBlock == v72 && v75 == v73)
    {
      v34 = 1;
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v37 = v70 + 8;
    v38 = *(v70 + 8);
    v39 = v32;
    v40 = v80;
    v38(v39, v80);
    v70 = v37;
    v38(v65, v40);

    v41 = v56;
    if (v34)
    {
      dispatch thunk of PreviewShellScene.stoppedStyle.getter();
    }

    else
    {
      static SceneStoppedStyle.none.getter();
    }

    (*(v57 + 32))(v63 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedStyle, v41, v58);
    dispatch thunk of PreviewShellScene.role.getter();
    (v51)(v66, v33, v80);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (aBlock == v72 && v75 == v73)
    {
      v42 = v80;
      v38(v66, v80);
      v38(v67, v42);

      v43 = v61;
      v44 = v60;
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v46 = v80;
      v38(v66, v80);
      v38(v67, v46);

      v43 = v61;
      v44 = v60;
      if ((v45 & 1) == 0)
      {
        v47 = v59;
        static SceneCrashedStyle.none.getter();
        v48 = ObjectType;
        v49 = v52;
        goto LABEL_17;
      }
    }

    v47 = v59;
    dispatch thunk of PreviewShellScene.crashedStyle.getter();
    v48 = ObjectType;
    v49 = v52;
LABEL_17:
    v50 = v63;
    (*(v44 + 32))(v63 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedStyle, v47, v43);
    v71.receiver = v50;
    v71.super_class = v48;
    v35 = objc_msgSendSuper2(&v71, "initWithNibName:bundle:", 0, 0);

    swift_unknownObjectRelease();

    return v35;
  }

  __break(1u);
  return result;
}

void sub_1000133D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_100013450()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SchedulerInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidLoad");
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  v9 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor:v9];

  v10 = *&v1[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter];
  [v10 activate];
  result = [v1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = [v10 presentationView];
  [v11 addSubview:v12];

  if (SceneStoppedStyle.snapshotStyle.getter() != 3 || (result = SceneCrashedStyle.snapshotStyle.getter(), result != 3))
  {
    SchedulerInterval.init(floatLiteral:)();
    sub_10001366C(v6);
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_10001366C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchScheduler();
  __chkstk_darwin(v2);
  v3 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer;
  if (*(v1 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer))
  {

    DelayedInvocation.cancel()();
  }

  type metadata accessor for DelayedInvocation();
  sub_100014DFC();
  static OS_dispatch_queue.main.getter();
  DispatchScheduler.init(queue:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v1 + v3) = DelayedInvocation.__allocating_init<A>(scheduler:callback:)();

  if (*(v1 + v3))
  {

    DelayedInvocation.schedule(delay:)();
  }

  return result;
}

void sub_10001380C()
{
  v60.receiver = v0;
  v60.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v60, "viewDidLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter] presentationView];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  v12 = *&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_snapshotView];
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = v12;
  v14 = [v0 view];
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setFrame:{v17, v19, v21, v23}];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  [v24 bringSubviewToFront:v13];

LABEL_6:
  v26 = *&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedViewController];
  if (!v26)
  {
    goto LABEL_12;
  }

  v27 = v26;
  v28 = [v27 view];
  if (!v28)
  {
    goto LABEL_22;
  }

  v29 = v28;
  v30 = [v0 view];
  if (!v30)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v31 = v30;
  [v30 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v29 setFrame:{v33, v35, v37, v39}];
  v40 = [v0 view];
  if (!v40)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v41 = v40;
  v42 = [v27 view];

  if (!v42)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v41 bringSubviewToFront:v42];

LABEL_12:
  v43 = *&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedViewController];
  if (!v43)
  {
    return;
  }

  v44 = v43;
  v45 = [v44 view];
  if (!v45)
  {
    goto LABEL_25;
  }

  v46 = v45;
  v47 = [v0 view];
  if (!v47)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v48 = v47;
  [v47 bounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  [v46 setFrame:{v50, v52, v54, v56}];
  v57 = [v0 view];
  if (!v57)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v58 = v57;
  v59 = [v44 view];

  if (!v59)
  {
LABEL_29:
    __break(1u);
    return;
  }

  [v58 bringSubviewToFront:v59];
}

void sub_100013BE0()
{
  v1 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_snapshotView;
  v2 = *&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_snapshotView];
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = [*&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter] newSnapshotPresentationView];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 addSubview:v3];

    v6 = *&v0[v1];
    *&v0[v1] = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_100013C8C()
{
  v1 = type metadata accessor for SceneStoppedStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedViewController;
  if (!*&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedViewController])
  {
    static Logger.uv.getter();
    v43 = v0;
    v10 = v0;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v42 = v12;
    v44 = v11;
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v41 = v9;
      v14 = v13;
      v38 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v14 = 136315650;
      v15 = [*&v10[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter] identifier];
      v16 = v1;
      v17 = v2;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v6;
      v20 = v19;

      v21 = v18;
      v2 = v17;
      v1 = v16;
      v22 = sub_10000E0C0(v21, v20, &v45);

      *(v14 + 4) = v22;
      *(v14 + 12) = 2080;
      (*(v2 + 16))(v4, &v10[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedStyle], v16);
      v23 = String.init<A>(describing:)();
      v25 = sub_10000E0C0(v23, v24, &v45);

      *(v14 + 14) = v25;
      *(v14 + 22) = 2112;
      v26 = sub_10001415C();
      *(v14 + 24) = v26;
      v27 = v38;
      *v38 = v26;
      v28 = v44;
      _os_log_impl(&_mh_execute_header, v44, v42, "Showing stopped UI for %s using style %s with image %@", v14, 0x20u);
      sub_100014CE0(v27);

      swift_arrayDestroy();

      v9 = v41;

      (*(v39 + 8))(v8, v5);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    if (*&v10[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer])
    {

      DelayedInvocation.cancel()();
    }

    v29 = [*&v10[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter] newSnapshot];
    v30 = [v29 CGImage];

    v31 = *&v10[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage];
    *&v10[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage] = v30;

    type metadata accessor for StoppedViewController();
    (*(v2 + 16))(v4, &v10[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedStyle], v1);
    sub_10001415C();
    v32 = StoppedViewController.__allocating_init(style:snapshotImage:)();
    [v10 addChildViewController:v32];
    v33 = [v10 view];
    if (v33)
    {
      v34 = v33;
      v35 = [v32 view];

      v36 = v43;
      if (v35)
      {
        [v34 addSubview:v35];

        [v32 didMoveToParentViewController:v10];
        v37 = *&v36[v9];
        *&v36[v9] = v32;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_10001415C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter);
  v3 = v1;
  v4 = [v2 scene];
  v5 = 2.0;
  if (v4)
  {
    v6 = v4;
    v7 = [v4 settings];

    v8 = [v7 displayConfiguration];
    if (v8)
    {
      [v8 pointScale];
      v5 = v9;
    }
  }

  v10 = [objc_allocWithZone(UIImage) initWithCGImage:v3 scale:0 orientation:v5];

  return v10;
}

void sub_100014260()
{
  v1 = type metadata accessor for SceneCrashedStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedViewController;
  if (!*&v0[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedViewController])
  {
    static Logger.uv.getter();
    v43 = v0;
    v10 = v0;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v42 = v12;
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v41 = v9;
      v14 = v13;
      v38 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v14 = 136315650;
      v15 = [*&v10[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter] identifier];
      v37 = v11;
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v6;
      v18 = v2;
      v19 = v17;
      v21 = v20;

      v22 = v19;
      v2 = v18;
      v23 = sub_10000E0C0(v22, v21, &v44);

      *(v14 + 4) = v23;
      *(v14 + 12) = 2080;
      (*(v18 + 16))(v4, &v10[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedStyle], v1);
      v24 = String.init<A>(describing:)();
      v26 = sub_10000E0C0(v24, v25, &v44);

      *(v14 + 14) = v26;
      *(v14 + 22) = 2112;
      v27 = sub_10001415C();
      *(v14 + 24) = v27;
      v29 = v37;
      v28 = v38;
      *v38 = v27;
      _os_log_impl(&_mh_execute_header, v29, v42, "Showing stopped UI for %s using style %s with image %@", v14, 0x20u);
      sub_100014CE0(v28);

      swift_arrayDestroy();

      v9 = v41;

      (*(v39 + 8))(v8, v5);
      v30 = &off_10006F000;
    }

    else
    {

      (*(v6 + 8))(v8, v5);
      v30 = &off_10006F000;
    }

    if (*&v10[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer])
    {

      DelayedInvocation.cancel()();
    }

    type metadata accessor for CrashedViewController();
    (*(v2 + 16))(v4, v30[40] + v10, v1);
    sub_10001415C();
    v31 = CrashedViewController.__allocating_init(style:snapshotImage:)();
    [v10 addChildViewController:v31];
    v32 = [v10 view];
    if (v32)
    {
      v33 = v32;
      v34 = [v31 view];

      v35 = v43;
      if (v34)
      {
        [v33 addSubview:v34];

        [v31 didMoveToParentViewController:v10];
        v36 = *&v35[v9];
        *&v35[v9] = v31;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void *sub_1000146DC(uint64_t a1)
{
  v1 = type metadata accessor for SchedulerInterval();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [*(Strong + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_scenePresenter) newSnapshot];
    v8 = [v7 CGImage];

    v9 = *&v6[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage];
    *&v6[OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage] = v8;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    SchedulerInterval.init(floatLiteral:)();
    sub_10001366C(v4);

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

unint64_t sub_100014860(void *a1)
{
  _StringGuts.grow(_:)(25);

  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 39;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0xD000000000000016;
}

uint64_t sub_10001492C()
{
  v1 = [*v0 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  return 0x203A656E656353;
}

uint64_t sub_1000149EC(uint64_t a1)
{
  v2 = sub_100014FE4();

  return HumanReadableError.errorDescription.getter(a1, v2);
}

uint64_t sub_100014A34(uint64_t a1)
{
  v2 = sub_100014FE4();

  return HumanReadableError.description.getter(a1, v2);
}

uint64_t type metadata accessor for RemoteContentViewController(uint64_t a1)
{
  result = qword_10006F188;
  if (!qword_10006F188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014C00(uint64_t a1)
{
  result = type metadata accessor for SceneStoppedStyle();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SceneCrashedStyle();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100014CE0(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006EBC8, &qword_10004DE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100014D48()
{
  result = qword_10006F1A0;
  if (!qword_10006F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F1A0);
  }

  return result;
}

uint64_t sub_100014D9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100014DFC()
{
  result = qword_10006E8A0;
  if (!qword_10006E8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006E8A0);
  }

  return result;
}

uint64_t sub_100014E48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100014E88()
{
  *(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_snapshotView) = 0;
  *(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_stoppedViewController) = 0;
  *(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_crashedViewController) = 0;
  *(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cacheSnapshotTimer) = 0;
  *(v0 + OBJC_IVAR____TtC12PreviewShell27RemoteContentViewController_cachedSnapshotCGImage) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100014F38()
{
  result = qword_10006F1C0;
  if (!qword_10006F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F1C0);
  }

  return result;
}

unint64_t sub_100014F90()
{
  result = qword_10006F1C8;
  if (!qword_10006F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F1C8);
  }

  return result;
}

unint64_t sub_100014FE4()
{
  result = qword_10006F1D0;
  if (!qword_10006F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F1D0);
  }

  return result;
}

uint64_t sub_1000151AC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004C60(&qword_10006F308, &qword_10004E048);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v24 - v12;
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  sub_100015950(v1 + OBJC_IVAR____TtC12PreviewShell15ApplicationInfo_overrideExecutableURL, v13);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3))
  {
    sub_1000159C0(v13);
    v17 = *(v4 + 56);
    v18 = 1;
    v17(v15, 1, 1, v3);
    v19 = type metadata accessor for ApplicationInfo(0);
    v24.receiver = v1;
    v24.super_class = v19;
    v20 = objc_msgSendSuper2(&v24, "executableURL");
    if (v20)
    {
      v21 = v20;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = 0;
    }

    v17(v10, v18, 1, v3);
    sub_100015A28(v10, a1);
    result = v16(v15, 1, v3);
    if (result != 1)
    {
      return sub_1000159C0(v15);
    }
  }

  else
  {
    (*(v4 + 16))(v6, v13, v3);
    sub_1000159C0(v13);
    URL.absoluteURL.getter();
    (*(v4 + 8))(v6, v3);
    v23 = *(v4 + 56);
    v23(v15, 0, 1, v3);
    (*(v4 + 32))(a1, v15, v3);
    return (v23)(a1, 0, 1, v3);
  }

  return result;
}

id sub_1000154B4(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC12PreviewShell15ApplicationInfo_overrideExecutableURL;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ApplicationInfo(0);
  return objc_msgSendSuper2(&v10, *a4, a3);
}

uint64_t type metadata accessor for ApplicationInfo(uint64_t a1)
{
  result = qword_10006F208;
  if (!qword_10006F208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000155D0(uint64_t a1)
{
  sub_100015660(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100015660(uint64_t a1)
{
  if (!qword_10006F218)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10006F218);
    }
  }
}

id sub_1000156B8()
{
  result = [objc_allocWithZone(type metadata accessor for ApplicationInfoProvider()) init];
  qword_1000736C0 = result;
  return result;
}

id sub_100015824(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100015884()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() applicationProxyForIdentifier:v0];

  if (!v1)
  {
    return 0;
  }

  result = [v1 appState];
  if (result)
  {
    v3 = result;
    v4 = [result isValid];

    if (v4)
    {
      v5 = [objc_allocWithZone(type metadata accessor for ApplicationInfo(0)) initWithApplicationProxy:v1];

      return v5;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100015950(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006F308, &qword_10004E048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000159C0(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006F308, &qword_10004E048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006F308, &qword_10004E048);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*sub_100015A98(void (*result)(uint64_t *), uint64_t a2, unint64_t a3))(uint64_t *)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

unint64_t *sub_100015BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v27 = &_swiftEmptyArrayStorage;
  sub_10001BBF0(0, v1, 0);
  v2 = &_swiftEmptyArrayStorage;
  v3 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v22 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(v6 + 36);
    v11 = *(*(v6 + 56) + 8 * v5);
    v25 = type metadata accessor for HostedPreviewCanvas();
    v26 = sub_10001D9B4(&qword_1000704F0, type metadata accessor for HostedPreviewCanvas, &unk_10004DB2C);
    *&v24 = v11;
    v27 = v2;
    v13 = v2[2];
    v12 = v2[3];

    if (v13 >= v12 >> 1)
    {
      sub_10001BBF0((v12 > 1), v13 + 1, 1);
      v2 = v27;
    }

    v2[2] = v13 + 1;
    result = sub_10000BF1C(&v24, &v2[5 * v13 + 4]);
    v8 = 1 << *(v6 + 32);
    v3 = a1 + 64;
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v14 = *(a1 + 64 + 8 * v10);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v22;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v18 = (a1 + 72 + 8 * v10);
      v9 = v22;
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_10001CA18(v5, v23, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_10001CA18(v5, v23, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_100015E34()
{
  type metadata accessor for PreviewShellService(0);
  swift_allocObject();
  result = sub_100015E74();
  qword_1000736D0 = result;
  return result;
}

void *sub_100015E74()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v0[2] = sub_10002B9C4(&_swiftEmptyArrayStorage);
  v0[3] = sub_10002BBAC(&_swiftEmptyArrayStorage);
  v0[4] = [objc_allocWithZone(type metadata accessor for UserAlertController()) init];
  ServerFarm.init()();
  if (qword_10006E5D0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for PreviewShellPluginRegistry();
  v10 = sub_10000BE8C(v9, qword_1000736E8);
  swift_beginAccess();
  (*(*(v9 - 8) + 16))(v1 + OBJC_IVAR____TtC12PreviewShell19PreviewShellService_pluginRegistry, v10, v9);
  v11 = [objc_opt_self() sharedInstance];
  if (qword_10006E5C0 != -1)
  {
    swift_once();
  }

  [v11 setDelegate:qword_1000736C0];

  v12 = [objc_opt_self() processInfo];
  v13 = [v12 environment];

  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v14 + 16) && (v15 = sub_100006E04(0xD000000000000012, 0x8000000100054550), (v16 & 1) != 0))
  {
    v17 = (*(v14 + 56) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];

    static Logger.uv.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v31 = v2;
      v23 = v22;
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;
      v25 = sub_10000E0C0(v19, v18, &v32);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "PreviewShell created with MallocStackLogging=%s", v23, 0xCu);
      sub_10000519C(v24);

      v2 = v31;
    }

    else
    {
    }

    (*(v3 + 8))(v8, v2);
    if ((isXTP.getter() & 1) == 0)
    {
      return v1;
    }
  }

  else
  {

    if ((isXTP.getter() & 1) == 0)
    {
      return v1;
    }
  }

  static Logger.uv.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "PreviewShell running in XTP", v28, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return v1;
}

uint64_t sub_100016310(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DeviceType();
  __chkstk_darwin(v4 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Callsite();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001A214(a1);
  v12 = Agent.pid.getter();
  if ((v12 & 0x100000000) != 0)
  {

    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    return static Future<A>.succeeded(dsoHandle:file:line:column:function:)();
  }

  else
  {
    v13 = v12;
    swift_beginAccess();
    v22[4] = *(v2 + 24);

    v14 = Callsite.init(_:_:_:_:)();
    v22[1] = v22;
    __chkstk_darwin(v14);
    v22[2] = v13;
    sub_100004C60(&qword_10006F3F0, &qword_10004E160);
    v22[3] = v11;
    sub_10001D028(&qword_10006F3F8, &qword_10006F3F0, &qword_10004E160, &protocol conformance descriptor for [A : B].Values);
    default argument 1 of Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();
    Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();

    v15 = *(v8 + 8);
    v15(v10, v7);

    Agent.deviceType.getter();
    v16 = type metadata accessor for SimulatorDevicePayload();
    if ((*(*(v16 - 8) + 48))(v6, 1, v16) == 1)
    {
      if (qword_10006E600 != -1)
      {
        swift_once();
      }

      swift_beginAccess();

      v18 = sub_100015BAC(v17);
    }

    else
    {
      if (qword_10006E5B8 != -1)
      {
        swift_once();
      }

      Callsite.init(_:_:_:_:)();
      assertUnreachable(callsite:)();
      v15(v10, v7);
      sub_10001DDD8(v6, &type metadata accessor for DeviceType);
      v18 = &_swiftEmptyArrayStorage;
    }

    v22[7] = v18;
    v20 = Callsite.init(_:_:_:_:)();
    __chkstk_darwin(v20);
    sub_100004C60(&qword_10006F400, &qword_10004E168);
    sub_10001D028(&qword_10006F408, &qword_10006F400, &qword_10004E168, &protocol conformance descriptor for [A]);
    default argument 1 of Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();
    Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();
    v15(v10, v7);

    v21 = Future.ignoringValue(dsoHandle:file:line:column:function:)();

    return v21;
  }
}

uint64_t sub_1000168CC(uint64_t a1, char *a2)
{
  v105 = a2;
  v94 = type metadata accessor for ExecutionLane();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v108 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for AgentDescriptor();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Logger();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v103 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for PreviewAgentLauncherRegistry();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ProcessType();
  v101 = *(v102 - 8);
  v8 = __chkstk_darwin(v102);
  v83 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v81 - v10;
  v110 = type metadata accessor for AgentDescriptor.Bundle();
  v100 = *(v110 - 8);
  v12 = __chkstk_darwin(v110);
  v107 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v13;
  __chkstk_darwin(v12);
  v15 = &v81 - v14;
  v16 = type metadata accessor for DeviceType();
  __chkstk_darwin(v16 - 8);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LaunchPayload();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v84 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v22;
  __chkstk_darwin(v21);
  v24 = &v81 - v23;
  v109 = type metadata accessor for BatchIdentity();
  v99 = *(v109 - 8);
  v25 = __chkstk_darwin(v109);
  v104 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v26;
  __chkstk_darwin(v25);
  v28 = &v81 - v27;
  v106 = v20;
  v31 = *(v20 + 16);
  v29 = v20 + 16;
  v30 = v31;
  (v31)(v24, a1, v19);
  sub_10001DBA4(v105, v18, &type metadata accessor for DeviceType);
  v105 = v24;
  BatchIdentity.init(_:_:)();
  v111 = v15;
  BatchIdentity.agentBundle.getter();
  LaunchPayload.processType.getter();
  PreviewShellPluginRegistry.launchers.getter();
  PreviewAgentLauncherRegistry.subscript.getter();
  (*(v97 + 8))(v7, v98);
  if (v114)
  {
    v96 = v28;
    v98 = v11;
    sub_10000BF1C(&v113, &v115);
    static Logger.uv.getter();
    v32 = v84;
    v33 = a1;
    v97 = v29;
    v83 = v30;
    (v30)(v84, a1, v19);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v95 = v19;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v82 = a1;
      v38 = v37;
      v81 = swift_slowAlloc();
      *&v113 = v81;
      *v38 = 136315138;
      v39 = v88;
      LaunchPayload.agentDescriptor.getter();
      sub_10001D9B4(&qword_10006F490, &type metadata accessor for AgentDescriptor, &protocol conformance descriptor for AgentDescriptor);
      v40 = v90;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v32;
      v44 = v43;
      v45 = v89;
      (*(v89 + 8))(v39, v40);
      (*(v106 + 8))(v42, v19);
      v46 = sub_10000E0C0(v41, v44, &v113);

      *(v38 + 4) = v46;
      v47 = v39;
      _os_log_impl(&_mh_execute_header, v34, v35, "Preparing display & canvases for relaunch of %s", v38, 0xCu);
      sub_10000519C(v81);

      v33 = v82;

      (*(v85 + 8))(v103, v86);
      v48 = v109;
      v49 = v99;
      v50 = v96;
    }

    else
    {

      (*(v106 + 8))(v32, v19);
      (*(v85 + 8))(v103, v86);
      v48 = v109;
      v49 = v99;
      v50 = v96;
      v40 = v90;
      v45 = v89;
      v47 = v88;
    }

    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    sub_100004C60(&qword_100070530, &qword_10004E1E0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_10004E060;
    *(v54 + 32) = sub_10001BF60();
    LaunchPayload.agentDescriptor.getter();
    v55 = sub_100016310(v47);
    (*(v45 + 8))(v47, v40);
    *(v54 + 40) = v55;
    v103 = static Future.inverting(dsoHandle:file:line:column:function:accumulateErrors:_:)();

    v56 = LaunchPayload.environment.getter();
    if (*(v56 + 16))
    {
      v57 = sub_100006E04(0xD00000000000002FLL, 0x80000001000547B0);
      if (v58)
      {
        v59 = (*(v56 + 56) + 16 * v57);
        v60 = v33;
        v61 = *v59;
        v62 = v59[1];

        *&v113 = 0;

        v63 = sub_10001BE68(v61, v62, &v113);
        v33 = v60;
        swift_bridgeObjectRelease_n();
        v64 = v113;
        if (!v63)
        {
          v64 = 0;
        }

        v99 = v64;
        v65 = !v63;
      }

      else
      {

        v99 = 0;
        v65 = 1;
      }

      LODWORD(v90) = v65;
      v67 = v110;
      v66 = v111;
      v68 = v100;
    }

    else
    {

      v99 = 0;
      LODWORD(v90) = 1;
      v67 = v110;
      v66 = v111;
      v68 = v100;
    }

    v69 = v83;
    static ExecutionLane.main.getter();
    (*(v68 + 16))(v107, v66, v67);
    sub_10000E808(&v115, &v113);
    (*(v49 + 16))(v104, v50, v48);
    (v69)(v105, v33, v95);
    v70 = (*(v68 + 80) + 24) & ~*(v68 + 80);
    v71 = (v92 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = (*(v49 + 80) + v71 + 40) & ~*(v49 + 80);
    v73 = (v87 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = v106;
    v75 = (*(v106 + 80) + v73 + 9) & ~*(v106 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v112;
    (*(v68 + 32))(v76 + v70, v107, v67);
    sub_10000BF1C(&v113, v76 + v71);
    v77 = v109;
    (*(v49 + 32))(v76 + v72, v104, v109);
    v78 = v76 + v73;
    *v78 = v99;
    *(v78 + 8) = v90 & 1;
    (*(v74 + 32))(v76 + v75, v105, v95);

    v79 = v108;
    v53 = Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

    (*(v93 + 8))(v79, v94);
    sub_10000519C(&v115);
    (*(v101 + 8))(v98, v102);
    (*(v68 + 8))(v111, v110);
    (*(v49 + 8))(v96, v77);
  }

  else
  {
    sub_10000BF34(&v113, &qword_10006F478, &qword_10004E1D0);
    sub_100004C60(&qword_10006F480, &qword_10004E1D8);
    v51 = v101;
    v52 = v102;
    (*(v101 + 16))(v83, v11, v102);
    type metadata accessor for UnknownProcessType();
    sub_10001D9B4(&qword_10006F488, &type metadata accessor for UnknownProcessType, &protocol conformance descriptor for UnknownProcessType);
    swift_allocError();
    UnknownProcessType.init(processType:)();
    v53 = static Future.failed(dsoHandle:file:line:column:function:_:)();
    (*(v51 + 8))(v11, v52);
    (*(v100 + 8))(v111, v110);
    (*(v99 + 8))(v28, v109);
  }

  return v53;
}

uint64_t sub_100017774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v26 = a6;
  v27 = a8;
  v25 = a7;
  v24 = a5;
  v11 = sub_100004C60(&qword_10006F498, &qword_10004E1E8);
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for BatchIdentity();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(a2 + 16);
  if (*(v16 + 16) && (v17 = sub_1000070AC(a3), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    v29[0] = v19;
    type metadata accessor for Agent();
    sub_10001D9B4(&qword_10006F3E8, &type metadata accessor for Agent, &protocol conformance descriptor for Agent);

    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  }

  else
  {
    swift_endAccess();
  }

  type metadata accessor for Agent();
  sub_10000E808(a4, v29);
  (*(v13 + 16))(v15, v24, v12);
  ServerFarm.jitBootstrapAgentServer.getter();
  v20 = Agent.__allocating_init(launcher:batchIdentity:jitBootstrapAgentServer:jitBootstrapTimeout:)();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_10000A0C8(v20, a3, isUniquelyReferenced_nonNull_native);
  *(a2 + 16) = v28;
  swift_endAccess();
  v22 = Agent.launch(with:killing:)();

  return v22;
}

uint64_t sub_100017A64(uint64_t a1)
{
  v107 = *v1;
  v102 = type metadata accessor for ExecutionLane();
  v105 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ShellUpdatePayload();
  v106 = *(updated - 8);
  __chkstk_darwin(updated);
  v100 = v4;
  v104 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ContentProviderRegistry();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004C60(&qword_10006F420, &qword_10004E180);
  __chkstk_darwin(v6 - 8);
  v92 = (&v79 - v7);
  v8 = type metadata accessor for ContentCategory();
  __chkstk_darwin(v8 - 8);
  v94 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for ContentKey();
  v98 = *(v99 - 8);
  v10 = *(v98 + 64);
  v11 = __chkstk_darwin(v99);
  __chkstk_darwin(v11);
  v13 = &v79 - v12;
  v14 = type metadata accessor for PreviewAgentConnector();
  v97 = *(v14 - 8);
  v15 = *(v97 + 64);
  v16 = __chkstk_darwin(v14);
  __chkstk_darwin(v16);
  v18 = &v79 - v17;
  v108 = a1;
  v19 = ShellUpdatePayload.pid.getter();
  v20 = v112;
  v21 = v109;
  v22 = sub_100018960(v19);
  if (v21)
  {
    return v10;
  }

  v86 = v10;
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v15;
  v89 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v13;
  v90 = v14;
  v109 = v22;
  v111 = v20;
  v23 = v108;
  ShellUpdatePayload.pid.getter();
  sub_10001D9B4(&qword_10006F428, type metadata accessor for PreviewShellService, &unk_10004E0B4);
  PreviewShellServiceProtocol.previewAgentConnector(for:)();
  v107 = 0;
  v10 = v23;
  v24 = v18;
  ShellUpdatePayload.contentCategory.getter();
  ShellUpdatePayload.contentOverride.getter();
  v25 = v91;
  ContentKey.init(for:with:)();
  v26 = v93;
  PreviewShellPluginRegistry.providers.getter();
  v27 = ContentProviderRegistry.boxRecipe(for:)();
  v29 = v28;
  v31 = v30;
  v32 = ~v30;
  (*(v95 + 8))(v26, v96);
  if (!v32)
  {
    ShellUpdatePayload.contentCategory.getter();
    type metadata accessor for UnknownContentCategory();
    sub_10001D9B4(&qword_10006F430, &type metadata accessor for UnknownContentCategory, &protocol conformance descriptor for UnknownContentCategory);
    swift_allocError();
    UnknownContentCategory.init(category:)();
    swift_willThrow();

    (*(v98 + 8))(v25, v99);
    (*(v97 + 8))(v24, v90);
    return v10;
  }

  v94 = v27;
  v95 = v29;
  v96 = v24;
  Agent.applyUpdateFor(payload:)();
  v33 = v106;
  v34 = *(v106 + 16);
  v36 = updated;
  v35 = v104;
  v84 = v106 + 16;
  v83 = v34;
  v34(v104, v10, updated);
  v37 = *(v33 + 80);
  v85 = ~v37;
  v38 = v31;
  v80 = (v37 + 16);
  v39 = swift_allocObject();
  v40 = *(v33 + 32);
  v106 = v33 + 32;
  v92 = v40;
  v40(v39 + ((v37 + 16) & ~v37), v35, v36);
  v41 = v10;
  v42 = v101;
  static ExecutionLane.any.getter();
  type metadata accessor for AgentUpdate.Context();
  v93 = Future.mapSuccess<A>(dsoHandle:file:line:column:function:on:_:)();

  v43 = v105 + 8;
  v44 = *(v105 + 8);
  v45 = v44(v42, v102);
  v82 = v38;
  v105 = v43;
  v81 = v44;
  if (v38)
  {
    static ExecutionLane.main.getter();
    v46 = updated;
    v47 = v104;
    v83(v104, v41, updated);
    v48 = (v37 + 24) & v85;
    v49 = (v100 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    *(v50 + 16) = v112;
    v92(v50 + v48, v47, v46);
    *(v50 + v49) = v109;

    sub_100004C60(&qword_10006F438, &qword_10004E188);
    v51 = v101;
    v112 = Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

    v44(v51, v102);
    static ExecutionLane.main.getter();
    v52 = v98;
    (*(v98 + 16))(v87, v91, v99);
    v53 = v97;
    v54 = v90;
    (*(v97 + 16))(v89, v96);
    v83(v104, v108, updated);
    v55 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v56 = v53;
    v57 = (v86 + *(v53 + 80) + v55) & ~*(v53 + 80);
    v58 = (v88 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = &v80[v58] & v85;
    v60 = swift_allocObject();
    v61 = v99;
    (*(v52 + 32))(v60 + v55, v87, v99);
    (*(v56 + 32))(v60 + v57, v89, v54);
    v62 = (v60 + v58);
    v63 = v94;
    v64 = v95;
    *v62 = v94;
    v62[1] = v64;
    v92(v60 + v59, v104, updated);
    v65 = swift_allocObject();
    *(v65 + 16) = sub_10001CE28;
    *(v65 + 24) = v60;
    sub_10001CFD0(v63, v64);
    type metadata accessor for PropertyList();
    v66 = v101;
    v10 = Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

    sub_10001CFD8(v63, v64, v82);

    v81(v66, v102);
    (*(v98 + 8))(v91, v61);
    (*(v97 + 8))(v96, v54);
    return v10;
  }

  v67 = v83;
  v87 = v37;
  __chkstk_darwin(v45);
  swift_beginAccess();
  sub_100004C60(&qword_10006F440, &qword_10004E190);
  sub_10001D028(&qword_10006F448, &qword_10006F440, &qword_10004E190, &protocol conformance descriptor for [A : B]);
  v68 = v107;
  KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)();
  v107 = v68;
  if (!v68)
  {
    swift_endAccess();
    sub_10000E808(&v111, &v110);
    v69 = v97;
    v70 = v89;
    v71 = v90;
    (*(v97 + 16))(v89, v96, v90);
    v72 = updated;
    v73 = v104;
    v67(v104, v108, updated);
    v74 = (*(v69 + 80) + 56) & ~*(v69 + 80);
    v75 = &v87[v88 + v74] & v85;
    v76 = swift_allocObject();
    sub_10000BF1C(&v110, v76 + 16);
    (*(v69 + 32))(v76 + v74, v70, v71);
    v92(v76 + v75, v73, v72);
    v77 = v101;
    static ExecutionLane.any.getter();
    type metadata accessor for PropertyList();
    v10 = Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

    sub_10001CFD8(v94, v95, v82);

    v81(v77, v102);
    sub_10000519C(&v111);
    (*(v98 + 8))(v91, v99);
    (*(v69 + 8))(v96, v71);
    return v10;
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_100018960(int a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = *(*(v3 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));

    v12 = Agent.pid.getter();
    if ((v12 & 0x100000000) == 0 && v12 == a1)
    {

      return v11;
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v11 = type metadata accessor for AgentLocatingError();
      sub_10001D9B4(&qword_10006F3E0, &type metadata accessor for AgentLocatingError, &protocol conformance descriptor for AgentLocatingError);
      swift_allocError();
      *v13 = a1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return v11;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100018B08(unsigned __int8 *a1)
{
  v1 = sub_100004C60(&qword_10006F468, &qword_10004E1C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100004C60(&qword_10006F470, &qword_10004E1C8);
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for ContentIdentifier();
  __chkstk_darwin(v5 - 8);
  updated = type metadata accessor for UpdateSetupPayload();
  v7 = *(updated - 8);
  __chkstk_darwin(updated);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShellUpdatePayload.setupPayload.getter();
  UpdateSetupPayload.shellDidLoadStaticProducts.setter();
  ShellUpdatePayload.contentIdentifier.getter();
  ShellUpdatePayload.hostUpdateSeed.getter();
  (*(v7 + 16))(v3, v9, updated);
  (*(v7 + 56))(v3, 0, 1, updated);
  AgentUpdate.Context.init(contentIdentifier:updateSeed:setupPayload:)();
  return (*(v7 + 8))(v9, updated);
}

uint64_t sub_100018D48(uint64_t a1, void *a2, uint64_t a3)
{
  v14[0] = a3;
  v14[1] = a1;
  v4 = type metadata accessor for PreviewType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PropertyList();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E678(a2, a2[3]);
  ShellUpdatePayload.contentPayload.getter();
  ShellUpdatePayload.previewType.getter();
  v12 = dispatch thunk of NonUIContentProviderBox.performUpdate(using:updatePayload:previewType:agentContext:)();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_100018F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v5 = type metadata accessor for AgentUpdate.Context();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for PreviewType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShellUpdatePayload.previewType.getter();
  sub_10001C220(v14, a4);
  (*(v12 + 8))(v14, v11);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  (*(v6 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_100004C60(&qword_10006F438, &qword_10004E188);
  v18 = Future.then<A>(dsoHandle:file:line:column:function:priority:transform:)();

  sub_10000BF34(v10, &qword_10006F450, &qword_10004E198);
  return v18;
}

uint64_t sub_1000191F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10001921C, 0, 0);
}

uint64_t sub_10001921C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(sub_100004C60(&qword_10006F438, &qword_10004E188) + 48);
  v5 = type metadata accessor for AgentUpdate.Context();
  (*(*(v5 - 8) + 16))(v3, v2, v5);
  sub_10000E808(v1, v3 + v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1000192E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a1;
  v21 = a6;
  v19 = a5;
  v9 = type metadata accessor for PropertyList();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[3];
  v13 = a2[4];
  sub_10000E678(a2, v14);
  ShellUpdatePayload.contentPayload.getter();
  updated = ShellUpdatePayload.controlStates.getter();
  v16 = (*(v13 + 48))(a3, a4, v19, v21, v12, updated, v20, v14, v13);

  (*(v10 + 8))(v12, v9);
  return v16;
}

char *sub_100019444(int a1)
{
  v4 = type metadata accessor for ExecutionLane();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DeviceType();
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Callsite();
  v37 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100018960(a1);
  if (!v2)
  {
    v32 = v7;
    v33 = v5;
    v34 = v4;
    v35 = 0;
    swift_beginAccess();
    v38[0] = *(v1 + 24);

    v14 = Callsite.init(_:_:_:_:)();
    __chkstk_darwin(v14);
    v31 = a1;
    sub_100004C60(&qword_10006F3F0, &qword_10004E160);
    sub_10001D028(&qword_10006F3F8, &qword_10006F3F0, &qword_10004E160, &protocol conformance descriptor for [A : B].Values);
    default argument 1 of Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();
    Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();

    v15 = v37 + 8;
    v16 = *(v37 + 8);
    v16(v13, v11);

    Agent.deviceType.getter();
    v17 = type metadata accessor for SimulatorDevicePayload();
    v18 = (*(*(v17 - 8) + 48))(v10, 1, v17);
    v19 = v13;
    v29 = v16;
    v30 = v11;
    v37 = v15;
    if (v18 == 1)
    {
      if (qword_10006E600 != -1)
      {
        swift_once();
      }

      swift_beginAccess();

      v21 = v35;
      v22 = sub_100015BAC(v20);
      v35 = v21;
    }

    else
    {
      if (qword_10006E5B8 != -1)
      {
        swift_once();
      }

      Callsite.init(_:_:_:_:)();
      assertUnreachable(callsite:)();
      v16(v13, v11);
      sub_10001DDD8(v10, &type metadata accessor for DeviceType);
      v22 = &_swiftEmptyArrayStorage;
    }

    v23 = v31;
    v39 = v22;
    v24 = Callsite.init(_:_:_:_:)();
    __chkstk_darwin(v24);
    sub_100004C60(&qword_10006F400, &qword_10004E168);
    sub_10001D028(&qword_10006F408, &qword_10006F400, &qword_10004E168, &protocol conformance descriptor for [A]);
    default argument 1 of Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();
    Sequence.traverse<A>(callsite:andAccumulateErrors:_:)();
    v29(v19, v30);

    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v36;

    v26 = v32;
    static ExecutionLane.any.getter();
    v7 = Future.then<A>(dsoHandle:file:line:column:function:on:transform:)();

    (*(v33 + 8))(v26, v34);
  }

  return v7;
}

uint64_t sub_100019A90(uint64_t a1, int a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67240192;
    *(v9 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v7, v8, "Canvases now stopped for %{public}d, killing process", v9, 8u);
  }

  (*(v4 + 8))(v6, v3);
  return Agent.kill()();
}

uint64_t sub_100019BE8(uint64_t a1)
{
  v2 = v1;
  v28 = type metadata accessor for BatchIdentity();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v7 = PurgePayload.workspaceID.getter();
  v29 = v8;
  v30 = v7;
  if (qword_10006E5B8 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    swift_beginAccess();
    v27 = v2;
    v9 = *(v2 + 16);
    v10 = *(v9 + 64);
    v31 = &_swiftEmptyArrayStorage;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v10;
    v2 = (v11 + 63) >> 6;
    v14 = (v4 + 8);

    v15 = 0;
    if (v13)
    {
      while (1)
      {
LABEL_11:
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v4 = *(*(v9 + 56) + ((v15 << 9) | (8 * v17)));

        Agent.batchIdentity.getter();
        v18 = BatchIdentity.workspaceID.getter();
        v20 = v19;
        (*v14)(v6, v28);
        if (v18 == v30 && v20 == v29)
        {

LABEL_15:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (!v13)
          {
            break;
          }
        }

        else
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v21)
          {
            goto LABEL_15;
          }

          if (!v13)
          {
            break;
          }
        }
      }
    }

LABEL_7:
    v16 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      break;
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  if (v16 < v2)
  {
    v13 = *(v9 + 64 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v23 = v31;
  __chkstk_darwin(v22);
  v24 = v27;
  *(&v26 - 2) = v26;
  *(&v26 - 1) = v24;
  sub_100015A98(sub_10001C948, (&v26 - 4), v23);
}

uint64_t sub_100019EC8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for AgentDescriptor.Bundle();
  __chkstk_darwin(v4 - 8);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (PurgePayload.killAgents.getter())
  {
    Agent.kill()();
  }

  v9[1] = v7;
  type metadata accessor for Agent();
  sub_10001D9B4(&qword_10006F3E8, &type metadata accessor for Agent, &protocol conformance descriptor for Agent);
  Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  Agent.agentBundle.getter();
  swift_beginAccess();
  sub_100006478(0, v6);
  return swift_endAccess();
}
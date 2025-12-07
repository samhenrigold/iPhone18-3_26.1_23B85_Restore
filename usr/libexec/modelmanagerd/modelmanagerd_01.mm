void sub_10001A5E0()
{
  sub_10000A274();
  v54 = v1;
  v58 = v2;
  v4 = v3;
  sub_100005B00();
  type metadata accessor for InferenceProviderDescriptor();
  sub_100002BDC();
  v55 = v6;
  v56 = v5;
  __chkstk_darwin(v5);
  sub_100009C24();
  v53 = v7;
  sub_100002F1C();
  __chkstk_darwin(v8);
  sub_1000DB284();
  v52[1] = v9;
  v10 = type metadata accessor for CustomAssetConfiguration();
  sub_100002BDC();
  v57 = v11;
  __chkstk_darwin(v12);
  sub_100002B8C();
  v52[0] = v14 - v13;
  v15 = sub_100065020(&qword_1001BB450, &qword_100171E68);
  sub_100002C00();
  __chkstk_darwin(v16);
  v18 = v52 - v17;
  v19 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  v20 = sub_100002F04(v19);
  v21 = __chkstk_darwin(v20);
  v23 = v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v52 - v24;
  v26 = *v0;
  if (InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter() == *v4 && v27 == v4[1])
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
  v30 = *(v15 + 48);
  sub_10001E72C(v25, v18, &qword_1001B9D00, &qword_100171E00);
  sub_10001E72C(v58, &v18[v30], &qword_1001B9D00, &qword_100171E00);
  sub_1000DB308();
  if (sub_10000C6C0(v31, v32, v33) != 1)
  {
    sub_10001E72C(v18, v23, &qword_1001B9D00, &qword_100171E00);
    sub_1000DB308();
    if (sub_10000C6C0(v37, v38, v39) != 1)
    {
      v40 = v57;
      (*(v57 + 32))(v52[0], &v18[v30], v10);
      sub_100011B14(&qword_1001BB458, &type metadata accessor for CustomAssetConfiguration, &protocol conformance descriptor for CustomAssetConfiguration);
      LODWORD(v58) = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v40 + 8);
      v42 = sub_100007B78();
      v41(v42);
      sub_10000ED84(v25, &qword_1001B9D00);
      (v41)(v23, v10);
      sub_10000ED84(v18, &qword_1001B9D00);
      if ((v58 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    sub_10000ED84(v25, &qword_1001B9D00);
    (*(v57 + 8))(v23, v10);
LABEL_13:
    sub_10000ED84(v18, &qword_1001BB450);
    goto LABEL_17;
  }

  sub_10000ED84(v25, &qword_1001B9D00);
  sub_1000DB308();
  if (sub_10000C6C0(v34, v35, v36) != 1)
  {
    goto LABEL_13;
  }

  sub_10000ED84(v18, &qword_1001B9D00);
LABEL_16:
  v43 = *(v26 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
  sub_100003370((v26 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), *(v26 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24));
  v44 = sub_100003170();
  v45(v44, v43);
  v46 = v54[4];
  sub_100003370(v54, v54[3]);
  v47 = v53;
  v48 = sub_100003170();
  v49(v48, v46);
  static InferenceProviderDescriptor.== infix(_:_:)();
  v50 = *(v55 + 8);
  v50(v47, v56);
  v51 = sub_1000DAE34();
  (v50)(v51);
LABEL_17:
  sub_100005874();
}

void sub_10001AACC(uint64_t a1)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (qword_1001B89C0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000641C(v6, qword_1001BC8F8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315394;
    v11 = sub_100004A3C(v4, v3, &v12);

    *(v9 + 4) = v11;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v7, v8, "Locking %s [%u]", v9, 0x12u);
    sub_100003324(v10);
  }

  else
  {
  }

  if (v5 || (dispatch thunk of CoherentAssetLock.lock()(), !v1))
  {
    if (v5 == -1)
    {
      __break(1u);
    }

    else
    {
      *(a1 + 24) = v5 + 1;
    }
  }
}

uint64_t sub_10001AC70()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_100012A10(v1);

  return sub_10001AD04(v3);
}

uint64_t sub_10001AD24()
{
  **(v0 + 16) = 0;
  sub_100001F00();
  return v1();
}

uint64_t sub_10001AD4C()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100013CFC();

  return v3();
}

void sub_10001AE40()
{
  sub_10000A274();
  v2 = type metadata accessor for URL();
  sub_100002BDC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002B8C();
  v8 = v7 - v6;
  Session.Metadata.assetBundleURI.getter();
  sub_100003370((v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_modelCatalog), *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_modelCatalog + 24));
  sub_100003E80(v8);
  if (v1)
  {
    (*(v4 + 8))(v8, v2);
  }

  else
  {
    sub_10001EA70();
    (*(v4 + 8))(v8, v2);
  }

  sub_100005874();
}

uint64_t sub_10001AF98(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v4;
  a1[5] = v3;
  a1[6] = v1;
  return v2;
}

uint64_t sub_10001AFBC()
{
}

uint64_t sub_10001AFF8()
{
  v0 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = v11 - v4;
  v11[0] = 40;
  v11[1] = 0xE100000000000000;
  Session.Metadata.id.getter();
  sub_1000130C8(&qword_1001B9C68);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  (*(v2 + 8))(v5, v0);
  v7._countAndFlagsBits = 58;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = Session.Metadata.loggingIdentifier.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return v11[0];
}

uint64_t sub_10001B160(const char *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = 0;
  *(v3 + 24) = 0;
  *(v3 + 16) = sub_10001B6F8(a1, a2, a3, &_mh_execute_header);
  swift_beginAccess();
  v4 = swift_unknownObjectRetain();
  os_activity_scope_enter(v4, (v3 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_10001B250()
{
}

uint64_t sub_10001B27C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(a2, a3);
    sub_1000055A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001B2C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = sub_100005F38(0, a2);
    sub_10006A614(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001B304(uint64_t a1, uint64_t a2)
{
  sub_100003370((v2 + 128), *(v2 + 152));
  v5 = AuditToken.processIdentifier.getter();
  sub_100021CF4(v5, v13);
  v6 = Session.Metadata.customAssetConfigurations.getter();
  if (v6)
  {
    v7 = v6;
    __chkstk_darwin(v6);
    v11 = a2;
    v12 = v13;
    sub_100027298(sub_1000A01D0, v10, v7);
    v8 = sub_10001301C(v13, &qword_1001B9CF8);
    if (!v3)
    {
      __chkstk_darwin(v8);
      v11 = a2;
      a2 = sub_100027358(&_swiftEmptyDictionarySingleton, sub_1000A01EC, v10, v7);
    }
  }

  else
  {
    sub_10001301C(v13, &qword_1001B9CF8);
    type metadata accessor for CustomAssetConfiguration();
    return Dictionary.init(dictionaryLiteral:)();
  }

  return a2;
}

void sub_10001B4AC()
{
  sub_1000055B0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    sub_100012660();
    if (v14 != v15)
    {
      sub_100005FE0();
      if (v14)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_10000A210();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100065020(v2, v3);
  v18 = *(*(v7(0) - 8) + 72);
  v19 = sub_1000129D8();
  v20 = j__malloc_size(v19);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v0 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  sub_10000886C(v20 - v0);
LABEL_18:
  v22 = *(v7(0) - 8);
  if (v11)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    sub_10000957C(v9 + v23, v16, v19 + v23, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    sub_10000781C();
  }

  sub_100002EEC();
}

id sub_10001B620(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:&v5];
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

  swift_unknownObjectRelease();
  return v1;
}

os_activity_t sub_10001B6F8(const char *a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    if (!(a1 >> 32))
    {
      v8 = a1 & 0xFFFFF800;
      v9 = 55296;
      if (v8 != 55296)
      {
        v8 = a1 >> 16;
        if (a1 >> 16 > 0x10)
        {
          __break(1u);
        }

        else if (a1 <= 0x7F)
        {
          v10 = a1 + 1;
          goto LABEL_12;
        }

        v9 = (a1 & 0x3F) << 8;
        if (a1 >= 0x800)
        {
          goto LABEL_33;
        }

        v10 = (a1 >> 6) + v9 + 33217;
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (!a1)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_5;
  }

  if (!a4)
  {
LABEL_36:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (qword_1001B8A80 != -1)
  {
    goto LABEL_26;
  }

LABEL_5:
  v6 = off_1001BCDA0;
  os_unfair_lock_lock(off_1001BCDA0 + 6);
  if (*(v6 + 2))
  {
    v7 = *(v6 + 2);
    goto LABEL_19;
  }

  v13 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  *(v6 + 2) = v13;
  if (!v13)
  {
LABEL_31:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_33:
      v17 = (v9 | (a1 >> 6) & 0x3F) << 8;
      v18 = (a1 >> 18) + ((v17 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
      v19 = (a1 >> 12) + v17 + 8487393;
      if (v8)
      {
        v10 = v18;
      }

      else
      {
        v10 = v19;
      }

LABEL_12:
      *description = (v10 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v10) & 0x18)));
      if (!a4)
      {
        goto LABEL_36;
      }

      if (qword_1001B8A80 != -1)
      {
        swift_once();
      }

      v11 = off_1001BCDA0;
      os_unfair_lock_lock(off_1001BCDA0 + 6);
      if (*(v11 + 2))
      {
        break;
      }

      v15 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
      *(v11 + 2) = v15;
      if (v15)
      {
        v12 = v15;
        swift_unknownObjectRetain_n();
        goto LABEL_22;
      }
    }

    v12 = *(v11 + 2);
LABEL_22:
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v11 + 6);
    v14 = _os_activity_create(a4, description, v12, OS_ACTIVITY_FLAG_DEFAULT);
    goto LABEL_23;
  }

  v7 = v13;
  swift_unknownObjectRetain_n();
LABEL_19:
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v6 + 6);
  v14 = _os_activity_create(a4, a1, v7, OS_ACTIVITY_FLAG_DEFAULT);
LABEL_23:
  swift_unknownObjectRelease();
  return v14;
}

void sub_10001B9B4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [objc_opt_self() predicateMatchingIdentifier:a1];
  if (qword_1001B8970 != -1)
  {
    swift_once();
  }

  v11 = 0;
  v6 = [v4 statesForPredicate:v5 withDescriptor:qword_1001BE8C0 error:&v11];

  v7 = v11;
  if (v6)
  {
    sub_10000E2C0(0, &qword_1001BC0A0, RBSProcessState_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v7;

    *a2 = v8;
  }

  else
  {
    v10 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_10001BB20(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  sub_100065020(&qword_1001BC098, &qword_100172948);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10001BBC0()
{
  **(v0 + 16) = *(v0 + 44);
  sub_100001F00();
  return v1();
}

uint64_t sub_10001BBEC()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_1000071A8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10001BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  v13 = *(v12 + 264) | (*(v12 + 268) << 32);
  if ((v13 & 0xFF00000000) == 0x500000000)
  {
    (*(*(v12 + 192) + 8))(*(v12 + 200), *(v12 + 184));

    sub_100001F00();
    sub_1000062BC();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
  }

  else
  {
    v23 = *(v12 + 216);
    v24 = *(v12 + 144);
    v25 = *(v12 + 152);
    v26 = *(v12 + 136);
    type metadata accessor for _OSActivity();
    *(v12 + 232) = swift_initStackObject();
    *(v12 + 240) = sub_10001B160("Process State Update", 20, 2);
    v27 = type metadata accessor for TaskPriority();
    sub_100003978();
    sub_100009BFC(v28, v29, v30, v27);
    v31 = swift_allocObject();
    *(v31 + 16) = v26;
    *(v31 + 24) = v23;
    *(v31 + 32) = v26;
    *(v31 + 40) = v13;
    *(v31 + 44) = BYTE4(v13);
    sub_100012EA4(v25, v24, &qword_1001BB050, &qword_10016F6E0);
    LODWORD(v24) = sub_10000C6C0(v24, 1, v27);
    swift_retain_n();

    if (v24 == 1)
    {
      sub_10001301C(*(v12 + 144), &qword_1001BB050);
    }

    else
    {
      TaskPriority.rawValue.getter();
      sub_100006098();
      v32 = sub_100005E98();
      v33(v32);
    }

    v34 = *(v31 + 16);
    swift_unknownObjectRetain();

    if (v34)
    {
      swift_getObjectType();
      v35 = dispatch thunk of Actor.unownedExecutor.getter();
      v37 = v36;
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v38 = String.utf8CString.getter();
    sub_100002EE0();
    v39 = swift_allocObject();
    *(v39 + 16) = &unk_100170738;
    *(v39 + 24) = v31;

    if (v37 | v35)
    {
      v40 = v12 + 56;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      *(v12 + 72) = v35;
      *(v12 + 80) = v37;
    }

    else
    {
      v40 = 0;
    }

    v41 = *(v12 + 152);
    v42 = *(v12 + 136);
    *(v12 + 88) = 7;
    *(v12 + 96) = v40;
    *(v12 + 104) = v38 + 32;
    v43 = swift_task_create();

    *(v12 + 248) = v43;
    sub_10001301C(v41, &qword_1001BB050);

    *(v42 + 456) = v43;

    v44 = swift_task_alloc();
    *(v12 + 256) = v44;
    *v44 = v12;
    v44[1] = sub_10002A8F8;
    sub_1000062BC();

    return Task<>.value.getter(v45);
  }
}

uint64_t sub_10001C0F0()
{

  sub_100002EE0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10001C130()
{
}

uint64_t sub_10001C150()
{

  return type metadata accessor for InferenceProviderAsset(0);
}

uint64_t sub_10001C168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  v20 = *(v18 + 392);

  return sub_10001A264(va, v20);
}

uint64_t sub_10001C184(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_10001C19C(void *a1)
{
  if (!a1)
  {
    return 3;
  }

  v1 = a1;
  v2 = sub_10001E964(v1);
  if (v2)
  {
    v3 = sub_10000A130(0xD00000000000001FLL, 0x8000000100175740, v2);
  }

  else
  {
    v3 = 0;
  }

  v5 = [v1 taskState];

  if (v3)
  {
    return 0;
  }

  if (v5 <= 4)
  {
    return (0x102010304uLL >> (8 * (v5 & 0x1F)));
  }

  return 4;
}

uint64_t sub_10001C260()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100002F54();

  return v3();
}

uint64_t sub_10001C340()
{
  v1 = type metadata accessor for Session.Metadata();
  sub_100002F44(v1);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  sub_100002F04(v8);
  v10 = *(v0 + v6);
  v11 = *(v0 + v7);
  v12 = v0 + ((*(v9 + 80) + v7 + 8) & ~*(v9 + 80));

  return sub_10001C43C(v0 + v4, (v0 + v5), v10, v11, v12);
}

uint64_t sub_10001C43C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a3;
  v34 = a4;
  v7 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v32 = &v27 - v9;
  v10 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Session.Metadata.assetBundleURI.getter();
  sub_100003370(a2, a2[3]);
  v17 = sub_100003E80(v16);
  v28 = v18;
  v29 = v17;
  v30 = v19;
  v20 = type metadata accessor for TaskPriority();
  v31 = v12;
  sub_100009BFC(v12, 1, 1, v20);
  v21 = v32;
  (*(v8 + 16))(v32, a5, v7);
  v22 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v34;
  *(v23 + 4) = v33;
  *(v23 + 5) = v24;
  v25 = v28;
  *(v23 + 6) = v29;
  *(v23 + 7) = v25;
  *(v23 + 8) = v30;
  (*(v8 + 32))(&v23[v22], v21, v7);

  sub_1000652FC();

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_10001C734()
{
  v1 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  sub_100002BDC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10001C820()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_10001C91C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 80);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  return _swift_task_switch(sub_10001CA38, v2, 0);
}

uint64_t sub_10001CA38()
{
  sub_100002BAC();

  sub_100001F00();

  return v1();
}

uint64_t sub_10001CA9C()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (!v0)
  {

    v8 = sub_100002C10();

    return _swift_task_switch(v8, v9, v10);
  }

  return result;
}

uint64_t sub_10001CB98()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_100001F00();

  return v3();
}

uint64_t sub_10001CC78()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10001CCB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

uint64_t sub_10001CD58(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_100065020(&qword_1001BC138, &qword_1001729C0);
  sub_100002F04(v6);

  return sub_10001CDE8(a1, a2, a3);
}

uint64_t sub_10001CDE8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100065020(&qword_1001BC140, &qword_1001729C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  LOBYTE(a3) = sub_10001C19C([a3 state]);
  v10[2] = [a2 pid];
  v11 = a3;
  sub_100065020(&qword_1001BC138, &qword_1001729C0);
  AsyncStream.Continuation.yield(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10001CF1C(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10001CF30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 4) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_10001CF88()
{

  return type metadata accessor for Logger();
}

uint64_t sub_10001CFA8()
{
  KeyPath = swift_getKeyPath();
  sub_10001D17C(KeyPath);
  v2 = v1;

  return v2;
}

uint64_t sub_10001D000@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10002218C(a1);
}

uint64_t sub_10001D058(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10001AD4C;

  return v5(v2 + 32);
}

uint64_t sub_10001D14C(uint64_t a1)
{
  *(v1 + 176) = a1;

  return type metadata accessor for DaemonSession(0);
}

uint64_t sub_10001D164()
{
}

void sub_10001D17C(uint64_t a1)
{
  v3 = type metadata accessor for DaemonSession.LazyState(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_1000219DC(v6 + v7, &v10);
  if (v2)
  {
    goto LABEL_7;
  }

  os_unfair_lock_unlock((v6 + v8));
  if (v10)
  {
    return;
  }

  sub_10001AE40();
  swift_getAtKeyPath();
  if (!v10)
  {
    __break(1u);
LABEL_7:
    os_unfair_lock_unlock((v6 + v8));
    __break(1u);
    return;
  }

  sub_1000125E8(v5, type metadata accessor for DaemonSession.LazyState);
}

uint64_t sub_10001D320()
{
}

uint64_t sub_10001D344(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t sub_10001D35C()
{
  sub_100002BAC();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v1[17] = v5;
  v1[18] = v6;
  v7 = type metadata accessor for InferenceProviderDescriptor();
  v1[23] = v7;
  sub_100002F44(v7);
  v1[24] = v8;
  v1[25] = sub_100002C58();
  v9 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[26] = v9;
  sub_100002F44(v9);
  v1[27] = v10;
  v1[28] = sub_10000F0C0();
  v1[29] = swift_task_alloc();
  v11 = sub_100002C10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10001D46C()
{
  swift_unknownObjectRelease();

  v0 = sub_100001F70();

  return _swift_deallocObject(v0, v1, 7);
}

uint64_t sub_10001D4B4()
{
  sub_10000639C();
  sub_100003884();
  sub_1000089AC();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_100007D94(v1);
  sub_100003D20();

  return sub_10001D554(v3, v4, v5, v6, v7);
}

uint64_t sub_10001D554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v7 = type metadata accessor for InferenceProviderDescriptor();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v5[30] = swift_task_alloc();
  v8 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v5[31] = v8;
  v5[32] = *(v8 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_10001D6F8, a4, 0);
}

uint64_t sub_10001E430()
{
  swift_unknownObjectRelease();
  sub_100002EE0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10001E4C0()
{

  return __CocoaSet.makeIterator()();
}

uint64_t sub_10001E4DC()
{
}

uint64_t sub_10001E504(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

void sub_10001E52C()
{
}

uint64_t sub_10001E564()
{
}

uint64_t sub_10001E598()
{
}

uint64_t sub_10001E5B8()
{
}

uint64_t sub_10001E618()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;
}

unint64_t sub_10001E638(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_100004A3C(v2, v3, va);
}

uint64_t sub_10001E660()
{
}

uint64_t sub_10001E6A4()
{
}

uint64_t sub_10001E6BC()
{
}

BOOL sub_10001E6D8()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10001E6F0()
{
}

uint64_t sub_10001E72C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000CBE4(a1, a2, a3, a4);
  sub_100002C00();
  v5 = sub_1000062B0();
  v6(v5);
  return v4;
}

uint64_t sub_10001E778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[3] = a5;
  type metadata accessor for DaemonSession.LazyState(0);
  v8[8] = swift_task_alloc();

  return _swift_task_switch(sub_10001E9C4, a4, 0);
}

uint64_t sub_10001E81C()
{
  sub_1000033DC();
  v0 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  sub_100002F04(v0);
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006FA64;
  sub_1000135D0();
  sub_1000062BC();

  return sub_10001E778(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10001E964(void *a1)
{
  v1 = [a1 endowmentNamespaces];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10001E9C4()
{
  sub_100001ED0();
  sub_10001EA70();
  *(v0 + 72) = 0;
  sub_10000AAD0(*(v0 + 64), type metadata accessor for DaemonSession.LazyState);

  return _swift_task_switch(sub_100021908, 0, 0);
}

void sub_10001ED00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000A274();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = type metadata accessor for InferenceProviderDescriptor();
  sub_100002BDC();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_100002B8C();
  v31 = v30 - v29;
  sub_10001F04C();
  if (!v20)
  {
    if (*(v32 + 16))
    {
      sub_100020444(0, v32, v24);
      if (qword_1001B89B0 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    sub_100008724(&qword_1001B89B0);
LABEL_4:
    v33 = type metadata accessor for Logger();
    sub_10000641C(v33, qword_1001BC6C0);
    (*(v27 + 16))(v31, v24, v25);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v51 = v35;
      v36 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      a10 = v52;
      *v36 = 136315650;
      v37 = _typeName(_:qualified:)();
      v50 = v34;
      v39 = sub_100004A3C(v37, v38, &a10);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      sub_10000A6A0();
      sub_1000218A0(v40, v41);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v27 + 8))(v31, v25);
      v45 = sub_100004A3C(v42, v44, &a10);

      *(v36 + 14) = v45;
      *(v36 + 22) = 2080;
      sub_100108D28();
      v46 = Array.description.getter();
      v48 = v47;

      v49 = sub_100004A3C(v46, v48, &a10);

      *(v36 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v50, v51, "Session %s selected inference provider %s for assets %s", v36, 0x20u);
      swift_arrayDestroy();
      sub_100002BB8(v52);
      sub_100002BB8(v36);
    }

    else
    {

      (*(v27 + 8))(v31, v25);
    }
  }

  sub_100005874();
}

void sub_10001F04C()
{
  sub_10000A274();
  v119 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v143 = type metadata accessor for InferenceProviderDescriptor.Instance();
  sub_100002BDC();
  v120 = v8;
  __chkstk_darwin(v9);
  sub_100005630();
  v142 = v10 - v11;
  v13 = __chkstk_darwin(v12);
  v141 = (&v119 - v14);
  __chkstk_darwin(v13);
  v140 = &v119 - v15;
  v139 = type metadata accessor for InferenceProviderDescriptor();
  sub_100002BDC();
  v144 = v16;
  __chkstk_darwin(v17);
  sub_100002B8C();
  v138 = v19 - v18;
  v20 = type metadata accessor for ModelCatalogAsset(0);
  v21 = sub_100002F44(v20);
  v129 = v22;
  __chkstk_darwin(v21);
  sub_100002B8C();
  v25 = v24 - v23;
  v151[2] = v3;
  v152 = v5;
  v26 = sub_10002047C(0, _swiftEmptyArrayStorage, sub_10001E930, v151, v7);
  v28 = v27;
  v121 = v1;
  v29 = v7 + 56;
  v30 = 1 << *(v7 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & *(v7 + 56);
  v33 = (v30 + 63) >> 6;

  v34 = 0;
  v123 = v26;
  v133 = v26;
  v122 = v28;
  v127 = v7 + 56;
  v125 = v7;
  v128 = v25;
  v126 = v33;
LABEL_5:
  v146 = v28;
  if (!v32)
  {
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_90;
      }

      if (v35 >= v33)
      {
        break;
      }

      v32 = *(v29 + 8 * v35);
      ++v34;
      if (v32)
      {
        goto LABEL_10;
      }
    }

    v26 = *(v28 + 16);
    if (v26)
    {
      v153[0] = _swiftEmptyArrayStorage;
      sub_100021200();
      v89 = 0;
      v90 = v153[0];
      LODWORD(v134) = enum case for InferenceProviderDescriptor.Instance.specificInstance(_:);
      v147 = v120 + 104;
      v145 = v120 + 32;
      LODWORD(v132) = enum case for InferenceProviderDescriptor.Instance.defaultInstance(_:);
      v137 = (v120 + 16);
      v136 = v120 + 8;
      v135 = v144 + 32;
      v91 = (v28 + 64);
      v148 = v26;
      v92 = v143;
      do
      {
        if (v89 >= *(v28 + 16))
        {
          goto LABEL_91;
        }

        v93 = *(v91 - 1);
        v94 = *v91;
        v150 = *(v91 - 4);
        LODWORD(v149) = v94;
        v95 = v141;
        if (v93)
        {
          *v141 = *(v91 - 2);
          v95[1] = v93;
        }

        sub_100019AE8();
        v96(v95);
        sub_100019AE8();
        v97 = v140;
        v98(v140, v95, v92);
        sub_100019AE8();
        v26 = v142;
        v99(v142, v97, v92);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v100 = v138;
        InferenceProviderDescriptor.init(id:instance:hostedOnServer:)();
        sub_100019AE8();
        v101(v97, v92);

        v153[0] = v90;
        v102 = v90[2];
        if (v102 >= v90[3] >> 1)
        {
          sub_100021200();
          v90 = v153[0];
        }

        ++v89;
        v90[2] = v102 + 1;
        (*(v144 + 32))(v90 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v102, v100, v139);
        v91 += 40;
        v28 = v146;
      }

      while (v148 != v89);
      sub_100021248(v90);
      sub_100003AD0();

LABEL_87:
      sub_1000062B0();
      sub_100005874();
      return;
    }

    sub_100108D28();
    v26 = sub_100077254(v103);
    if (qword_1001B89B0 == -1)
    {
LABEL_84:
      v104 = type metadata accessor for Logger();
      sub_10000641C(v104, qword_1001BC6C0);

      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v153[0] = v108;
        *v107 = 136315394;
        v109 = _typeName(_:qualified:)();
        v111 = sub_100004A3C(v109, v110, v153);

        *(v107 + 4) = v111;
        *(v107 + 12) = 2080;
        v112 = Set.description.getter();
        v114 = sub_100004A3C(v112, v113, v153);

        *(v107 + 14) = v114;
        _os_log_impl(&_mh_execute_header, v105, v106, "Session %s assets %s don't have a common inference provider", v107, 0x16u);
        swift_arrayDestroy();
        sub_100002BB8(v108);
        sub_100002BB8(v107);
      }

      v115 = type metadata accessor for ModelManagerError();
      sub_1000114EC();
      sub_1000218A0(v116, v117);
      sub_1000055A4();
      swift_allocError();
      *v118 = v26;
      (*(*(v115 - 8) + 104))(v118, enum case for ModelManagerError.noCommonInferenceProviderForAssets(_:), v115);
      swift_willThrow();

      goto LABEL_87;
    }

LABEL_92:
    sub_100008724(&qword_1001B89B0);
    goto LABEL_84;
  }

  v35 = v34;
LABEL_10:
  v135 = (v32 - 1) & v32;
  v134 = v35;
  v36 = sub_100005D58(__clz(__rbit64(v32)) | (v35 << 6));
  sub_100009370(v36, v25, v37);

  v39 = sub_100020A18(v38);
  v26 = v40;

  v130 = sub_100020A18(v41);
  v43 = v42;
  v44 = *(v42 + 16);

  v45 = 0;
  v132 = v39;
  v131 = v26;
  v136 = v43;
  v149 = v44;
  while (2)
  {
    v124 = v39;
    while (1)
    {
      v137 = (v26 + 64);
LABEL_13:
      v46 = 40 * v45 + 32;
      v47 = v45;
      while (1)
      {
        if (v44 == v47)
        {

          v133 = sub_100020000(v39, v26, v133, v146);
          v28 = v88;

          v25 = v128;
          sub_1000125E8(v128, type metadata accessor for ModelCatalogAsset);
          v34 = v134;
          v29 = v127;
          v33 = v126;
          v32 = v135;
          goto LABEL_5;
        }

        if (v47 >= v44)
        {
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v48 = *(v43 + v46);
        v49 = *(v43 + v46 + 16);
        v156 = *(v43 + v46 + 32);
        v154 = v48;
        v155 = v49;
        v157[0] = *(v43 + v46);
        if (__OFADD__(v47, 1))
        {
          goto LABEL_89;
        }

        v150 = v47 + 1;
        v50 = *(&v155 + 1);
        v51 = *(v26 + 16);
        if (!v39)
        {
          break;
        }

        sub_100020E14(v157, v153);

        v52 = v26;
        sub_100142F9C();
        v54 = v53;
        v56 = v55;

        if (v54)
        {
          v148 = v39;
          goto LABEL_44;
        }

        sub_100021010(v157);

        ++v47;
        v46 += 40;
        v44 = v149;
        v26 = v52;
      }

      v52 = v26;
      if (v51)
      {
        v145 = v155;
        v58 = *(&v157[0] + 1);
        v57 = *&v157[0];
        v59 = v137;
        LODWORD(v147) = v156;
        v148 = *&v157[0];
        while (1)
        {
          v60 = *(v59 - 2);
          v43 = *(v59 - 1);
          v61 = *v59;
          if (*(v59 - 4) != v57 || *(v59 - 3) != v58)
          {
            v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v57 = v148;
            if ((v63 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          if (!v43)
          {
            break;
          }

          if (!v50)
          {
            goto LABEL_39;
          }

          if (v60 != v145 || v43 != v50)
          {
            v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v57 = v148;
            if ((v65 & 1) == 0)
            {
              goto LABEL_39;
            }

LABEL_36:
            if (((v61 ^ v147) & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_39;
          }

          if (v61 == (v147 & 1))
          {
LABEL_41:
            v39 = 0;
            sub_100012B24();
            v44 = v149;
            v45 = v150;
            v26 = v52;
            goto LABEL_13;
          }

LABEL_39:
          v59 += 40;
          if (!--v51)
          {
            goto LABEL_43;
          }
        }

        if (v50)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

LABEL_43:
      sub_100020E14(v157, v153);

      v148 = 0;
      v56 = 0;
LABEL_44:
      sub_100020E14(v157, v153);

      v26 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000C958(0, *(v52 + 16) + 1, 1);
        v26 = v52;
      }

      v43 = *(v26 + 16);
      v66 = *(v26 + 24);
      if (v43 >= v66 >> 1)
      {
        sub_10000C958((v66 > 1), v43 + 1, 1);
        v26 = v52;
      }

      *(v26 + 16) = v43 + 1;
      v67 = v26 + 40 * v43;
      v68 = v154;
      v69 = v155;
      *(v67 + 64) = v156;
      *(v67 + 32) = v68;
      *(v67 + 48) = v69;
      if (v39)
      {
        break;
      }

      if (v43 > 0xE)
      {
        v71 = v26;
        v72 = 0;
        goto LABEL_55;
      }

      sub_100021010(v157);

      v39 = 0;
      sub_100012B24();
      v44 = v149;
      v45 = v150;
    }

    v70 = v148;
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() <= v43)
    {
      v71 = v26;
      v72 = *(v70 + 24) & 0x3FLL;
      if (v43 <= 0xE)
      {
        sub_100012B24();
        if (!v72)
        {

          v39 = 0;
          v26 = v71;
          goto LABEL_60;
        }

        goto LABEL_56;
      }

LABEL_55:
      sub_100012B24();
LABEL_56:
      v73 = static _HashTable.scale(forCapacity:)();
      if (v72 <= v73)
      {
        v74 = v73;
      }

      else
      {
        v74 = v72;
      }

      v75 = v72;
      v26 = v71;
      v39 = sub_100141AFC(v71, v74, 0, v75);

      goto LABEL_60;
    }

    v39 = v124;
    if (swift_isUniquelyReferenced_native())
    {
      v43 = v136;
      goto LABEL_66;
    }

    v43 = v136;
    if (!v39)
    {
      goto LABEL_95;
    }

    v76 = v26;
    v77 = _HashTable.copy()();

    v39 = v77;
    v26 = v76;
LABEL_66:
    if (!v39)
    {
      goto LABEL_94;
    }

    v78 = *(v39 + 16);
    v79 = *(v26 + 16) + ~(*(v39 + 24) >> 6);
    v80 = (-1 << v78) ^ ~(((v79 >> 63) & ~(-1 << v78)) + v79);
    v81 = (v78 & 0x3F) * v56;
    v82 = v81 >> 6;
    *(v39 + 32 + 8 * (v81 >> 6)) = (v80 << v81) | ((((-1 << v78) + 1) << v81) - 1) & *(v39 + 32 + 8 * (v81 >> 6));
    v83 = 64 - (v81 & 0x3F);
    if (v83 >= (v78 & 0x3Fu))
    {
      goto LABEL_60;
    }

    v84 = (v78 & 0x3F) << (v78 & 0x3F);
    v85 = __OFADD__(v84, 64);
    v86 = v84 + 64;
    if (!v85)
    {
      if (v82 + 1 == (v86 - 1) / 64)
      {
        v87 = 0;
      }

      else
      {
        v87 = v82 + 1;
      }

      *(v39 + 32 + 8 * v87) = *(v39 + 32 + 8 * v87) & (-1 << (v78 - v83)) | (v80 >> v83);
LABEL_60:
      sub_100021010(v157);

      v44 = v149;
      v45 = v150;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
}

void sub_10001FE30(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  v22 = a2 + 32;
  v23 = v4;
LABEL_2:
  while (2)
  {
    if (v3 != v4)
    {
      v6 = v5 + 40 * v3;
      v7 = *(v6 + 16);
      v26 = *v6;
      v27 = v7;
      v28 = *(v6 + 32);
      v29 = v26;
      v8 = *(&v7 + 1);
      ++v3;
      v9 = v2[1];
      v10 = *(v9 + 16);
      if (*v2)
      {
        sub_100020E14(&v29, v25);

        sub_100142F9C();
        v12 = v11;

        if ((v12 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (!v10)
      {
LABEL_26:
        sub_100020E14(&v29, v25);

        v2 = v24;
        v5 = v22;
        v4 = v23;
LABEL_27:
        sub_100020E70(&v26);
LABEL_28:
        sub_100021010(&v29);

        continue;
      }

      v13 = v27;
      v14 = v29;
      v15 = (v9 + 64);
      v16 = v28;
      while (1)
      {
        v18 = *(v15 - 2);
        v17 = *(v15 - 1);
        v19 = *v15;
        v20 = *(v15 - 4) == v14 && *(v15 - 3) == *(&v14 + 1);
        if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_25;
        }

        if (!v17)
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_25;
        }

        if (v18 != v13 || v17 != v8)
        {
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_22:
          if (((v19 ^ v16) & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_25;
        }

        if (v19 == (v16 & 1))
        {
LABEL_29:
          v2 = v24;
          v5 = v22;
          v4 = v23;
          goto LABEL_2;
        }

LABEL_25:
        v15 += 40;
        if (!--v10)
        {
          goto LABEL_26;
        }
      }

      if (v8)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    break;
  }
}

uint64_t sub_100020000(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  v4 = *(a4 + 16);
  if (v4)
  {
    v5 = a2;
    v6 = result;
    v7 = 0;
    v23 = a4 + 32;
    v24 = result;
    v22 = (a2 + 64);
    while (v7 < v4)
    {
      v8 = v23 + 40 * v7;
      v9 = *(v8 + 16);
      v31 = *v8;
      v32 = v9;
      v33 = *(v8 + 32);
      v34[0] = v31;
      v10 = *(&v9 + 1);
      v11 = *(v5 + 16);
      if (v6)
      {
        sub_100020E14(v34, v28);

        sub_100142F9C();
        v13 = v12;

        if ((v13 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (v11)
      {
        v14 = v32;
        v15 = v34[0];
        v16 = v22;
        v27 = v33;
        do
        {
          result = *(v16 - 4);
          v17 = *(v16 - 2);
          v18 = *(v16 - 1);
          v19 = *v16;
          if (result != v15 || *(v16 - 3) != *(&v15 + 1))
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((result & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          if (v18)
          {
            if (!v10)
            {
              goto LABEL_24;
            }

            if (v17 != v14 || v18 != v10)
            {
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((result & 1) == 0)
              {
                goto LABEL_24;
              }
            }
          }

          else if (v10)
          {
            goto LABEL_24;
          }

          if (((v19 ^ v27) & 1) == 0)
          {
            sub_100020E14(v34, v28);

LABEL_27:
            sub_100021064(&v31);
LABEL_28:
            sub_100021010(v34);

            break;
          }

LABEL_24:
          v16 += 40;
          --v11;
        }

        while (v11);
      }

      ++v7;
      v5 = a2;
      v4 = *(a4 + 16);
      v6 = v24;
      if (v7 == v4)
      {

        return v29;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_100020210@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  if (a1[1])
  {
    return sub_100009370(a1, a7, type metadata accessor for DaemonSession.LazyState);
  }

  *a1 = a2;
  a1[1] = a3;

  a1[2] = a4;
  type metadata accessor for DaemonSession(0);
  v19 = Session.Metadata.useCaseID.getter();
  sub_100009648(a4, v19, v20, *(a5 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_isFoundationModelsEligible));
  if (!v7)
  {
    v22 = v21;

    v23 = type metadata accessor for DaemonSession.LazyState(0);
    *(a1 + *(v23 + 32)) = v22 & 1;
    v24 = *(v23 + 24);
    sub_10010C4AC(a1 + v24, v17, &qword_1001B9CD0, &qword_100170778);
    v25 = type metadata accessor for InferenceProviderDescriptor();
    v26 = sub_10000C6C0(v17, 1, v25);
    sub_10000ECD8(v17, &qword_1001B9CD0, &qword_100170778);
    if (v26 == 1)
    {
      sub_10000ECD8(a1 + v24, &qword_1001B9CD0, &qword_100170778);
      (*(*(v25 - 8) + 16))(a1 + v24, a6, v25);
      sub_100009BFC(a1 + v24, 0, 1, v25);
    }

    return sub_100009370(a1, a7, type metadata accessor for DaemonSession.LazyState);
  }
}

char *sub_10002045C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100025020(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10002047C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, char *), uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v9 = type metadata accessor for ModelCatalogAsset(0);
  v21 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a1;
  v22[1] = a2;
  v12 = 1 << *(a5 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a5 + 56);
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  while (v14)
  {
    v18 = v17;
LABEL_10:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    sub_100009370(*(a5 + 48) + *(v21 + 72) * (v19 | (v18 << 6)), v11, type metadata accessor for ModelCatalogAsset);
    v23(v22, v11);
    result = sub_1000125E8(v11, type metadata accessor for ModelCatalogAsset);
    if (v5)
    {
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return v22[0];
    }

    v14 = *(a5 + 56 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100020654(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v21 = &type metadata for ModelManager;
  v6 = sub_1000207F8();
  v22 = v6;
  LOBYTE(v20[0]) = 1;
  v7 = isFeatureEnabled(_:)();
  sub_100003324(v20);
  if (v7 & 1) != 0 && (v8 = a3[3], v9 = a3[4], sub_100003370(a3, v8), ((*(v9 + 8))(v8, v9)) || (v21 = &type metadata for ModelManager, v22 = v6, LOBYTE(v20[0]) = 2, v10 = isFeatureEnabled(_:)(), sub_100003324(v20), (v10) && (v11 = a3[3], v12 = a3[4], sub_100003370(a3, v11), ((*(v12 + 16))(v11, v12)))
  {
    if (a4)
    {

      v14 = sub_100020A18(v13);
      sub_10001FE30(v14, v15);
    }
  }

  v17 = sub_100020A18(v16);
  sub_10001FE30(v17, v18);
}

unint64_t sub_1000207F8()
{
  result = qword_1001B8AF0;
  if (!qword_1001B8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8AF0);
  }

  return result;
}

BOOL sub_1000208BC()
{
  v5 = 8;
  v6 = 0;
  if (sysctlbyname("kern.hv_vmm_present", &v6, &v5, 0, 0))
  {
    if (qword_1001B8978 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_10000641C(v0, qword_1001BC168);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Sysctl failed to get VM state, assuming physical device", v3, 2u);
    }
  }

  return v6 != 0;
}

unint64_t sub_100020A18(uint64_t *a1)
{
  v6 = variable initialization expression of InferenceProviderManager.updatesReceived();
  result = sub_100020D4C(&v36, a1, 0, 1, v6);
  v8 = a1[2];
  v9 = v36;
  if (v36 != v8)
  {
    if (v36 < 0)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v31 = result;
    v1 = sub_10010C36C(0, v36, a1);
    v2 = v10;
    v3 = v11;
    v4 = v12;
    if (v12)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = _swiftEmptyArrayStorage;
      }

      v15 = v14[2];

      if (__OFSUB__(v4 >> 1, v3))
      {
        goto LABEL_48;
      }

      if (v15 != (v4 >> 1) - v3)
      {
        goto LABEL_49;
      }

      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v2)
      {
        goto LABEL_12;
      }

      v2 = _swiftEmptyArrayStorage;
      goto LABEL_11;
    }

    while (1)
    {
      sub_10010A680(v1, v2, v3, v4);
      v2 = v13;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v37 = v31;
      v38 = v2;
      if (v8 >= v9)
      {
        break;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      swift_unknownObjectRelease();
    }

    sub_10010C36C(v9, v8, a1);
    v9 = v16;
    v1 = v17;
    v8 = v18;

    v4 = v8 >> 1;
    v32 = v8 >> 1;
    v33 = v9;
LABEL_14:
    while (2)
    {
      if (v1 == v4)
      {
        swift_unknownObjectRelease();

        return v37;
      }

      if (v1 >= v4)
      {
        __break(1u);
        goto LABEL_46;
      }

      v19 = &v9[40 * v1];
      v20 = *v19;
      v21 = *(v19 + 1);
      v41 = v19[32];
      v39 = v20;
      v40 = v21;
      v42 = *v19;
      v2 = *(&v21 + 1);
      ++v1;
      v8 = v37;
      a1 = v38[2];
      if (v37)
      {
        sub_100020E14(&v42, v35);

        sub_100142F9C();
        a1 = v22;
        v3 = v23;

        if ((a1 & 1) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v34 = v1;
      if (!a1)
      {
LABEL_40:
        sub_100020E14(&v42, v35);

        v3 = 0;
        v9 = v33;
        v1 = v34;
        v4 = v32;
LABEL_41:
        a1 = &v37;
        sub_100020E70(&v39);
LABEL_42:
        sub_100021010(&v42);

        continue;
      }

      break;
    }

    v3 = v40;
    v24 = v42;
    v25 = (v38 + 8);
    v26 = v41;
    while (1)
    {
      v8 = *(v25 - 2);
      v27 = *(v25 - 1);
      v28 = *v25;
      v29 = *(v25 - 4) == v24 && *(v25 - 3) == *(&v24 + 1);
      if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_39;
      }

      if (!v27)
      {
        break;
      }

      if (!v2)
      {
        goto LABEL_39;
      }

      if (v8 != v3 || v27 != v2)
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_36:
        if (((v28 ^ v26) & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      if (v28 == (v26 & 1))
      {
LABEL_43:
        v9 = v33;
        v1 = v34;
        v4 = v32;
        goto LABEL_14;
      }

LABEL_39:
      v25 += 40;
      a1 = (a1 - 1);
      if (!a1)
      {
        goto LABEL_40;
      }
    }

    if (v2)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  return result;
}

uint64_t sub_100020D4C(char **a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = static _HashTable.scale(forCapacity:)();
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v13 = _HashTable.init(scale:reservedScale:)();
    sub_10010BA6C(a2 + 32, v8, (v13 + 16), v13 + 32);
    *a1 = v14;
  }

  else
  {
    v13 = 0;
    if (v8 >= 2)
    {
      *a1 = sub_10010B0EC(a2 + 32, v8);
    }

    else
    {
      *a1 = v8;
    }
  }

  return v13;
}

void sub_100020E70(__int128 *a1)
{
  v2 = v1;
  v4 = *a1;
  v21 = a1[1];
  v22 = v4;
  v7 = v1[1];
  v5 = v1 + 1;
  v6 = v7;
  sub_100020E14(&v22, v20);
  sub_10001E72C(&v21, v20, &qword_1001BC8C8, &qword_100172F48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1000080E4();
    sub_10000C958(v9, v10, v11);
    v6 = *v5;
  }

  v13 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_10000C958((v12 > 1), v13 + 1, 1);
    v6 = *v5;
  }

  *(v6 + 16) = v13 + 1;
  v14 = v6 + 40 * v13;
  v15 = *a1;
  v16 = a1[1];
  *(v14 + 64) = *(a1 + 32);
  *(v14 + 32) = v15;
  *(v14 + 48) = v16;
  v2[1] = v6;
  v17 = *v2;
  if (!*v2)
  {
    if (v13 <= 0xE)
    {
      return;
    }

    v18 = 0;
    goto LABEL_14;
  }

  sub_100004CBC();
  swift_beginAccess();
  if (static _HashTable.maximumCapacity(forScale:)() <= v13)
  {
    v18 = *(v17 + 24) & 0x3FLL;
    if (v13 <= 0xE && !v18)
    {

      *v2 = 0;
      return;
    }

LABEL_14:
    v19 = static _HashTable.scale(forCapacity:)();
    sub_100141A44(v19, v18, sub_1001422A0, sub_100141B14);
    return;
  }

  sub_100141958();
  if (*v2)
  {
    sub_100009EB0(*v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_100021064(__int128 *a1)
{
  v2 = v1;
  v4 = *a1;
  v20 = a1[1];
  v21 = v4;
  v7 = v1[1];
  v5 = v1 + 1;
  v6 = v7;
  sub_100020E14(&v21, v19);
  sub_10010C4AC(&v20, v19, &qword_1001BC8C8, &qword_100172F48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10000C958(0, *(v6 + 16) + 1, 1);
    v6 = *v5;
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    sub_10000C958((v9 > 1), v10 + 1, 1);
    v6 = *v5;
  }

  *(v6 + 16) = v10 + 1;
  v11 = v6 + 40 * v10;
  v12 = *a1;
  v13 = a1[1];
  *(v11 + 64) = *(a1 + 32);
  *(v11 + 32) = v12;
  *(v11 + 48) = v13;
  v2[1] = v6;
  v14 = *v2;
  if (!*v2)
  {
    if (v10 <= 0xE)
    {
      return;
    }

    v17 = 0;
    goto LABEL_14;
  }

  swift_beginAccess();
  if (static _HashTable.maximumCapacity(forScale:)() <= v10)
  {
    v17 = *(v14 + 24) & 0x3FLL;
    if (v10 <= 0xE && !v17)
    {

      *v2 = 0;
      return;
    }

LABEL_14:
    v18 = static _HashTable.scale(forCapacity:)();
    sub_100141A18(v18, v17);
    return;
  }

  sub_10014AF9C(v15);
  v16 = *v2;
  if (*v2)
  {

    sub_10010C050((v16 + 16), v16 + 32, a1, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_100021200()
{
  sub_100007D68();
  sub_10001B4AC();
  *v0 = v1;
}

uint64_t sub_100021248(uint64_t *a1)
{
  v4 = type metadata accessor for InferenceProviderDescriptor();
  v34 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = variable initialization expression of InferenceProviderManager.updatesReceived();
  v11 = sub_1000216AC(&v37, a1, 0, 1, v10, &type metadata accessor for InferenceProviderDescriptor, sub_10010B6FC, sub_10010AE04);
  v12 = a1[2];
  i = v37;
  if (v37 != v12)
  {
    if ((v37 & 0x8000000000000000) != 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v1 = sub_10010C2C4(0, v37, a1, &type metadata accessor for InferenceProviderDescriptor);
    v2 = v16;
    v31 = v11;
    if (v16)
    {
      v35 = v14;
      v36 = v15;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v18 = swift_dynamicCastClass();
      if (!v18)
      {
        swift_unknownObjectRelease();
        v18 = _swiftEmptyArrayStorage;
      }

      v19 = v18[2];

      if (__OFSUB__(v2 >> 1, v36))
      {
        goto LABEL_30;
      }

      if (v19 != (v2 >> 1) - v36)
      {
        goto LABEL_31;
      }

      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v11 = v31;
      if (v2)
      {
        goto LABEL_12;
      }

      v2 = _swiftEmptyArrayStorage;
      goto LABEL_11;
    }

    while (1)
    {
      sub_10010A594(v1, v14, v15, v2, sub_100140564, &type metadata accessor for InferenceProviderDescriptor);
      v2 = v17;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v38 = v11;
      v39 = v2;
      if (v12 >= i)
      {
        break;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_unknownObjectRelease();
      v14 = v35;
      v15 = v36;
      v11 = v31;
    }

    v30 = sub_10010C2C4(i, v12, a1, &type metadata accessor for InferenceProviderDescriptor);
    v32 = v20;
    v12 = v21;
    v23 = v22;

    v33 = v23 >> 1;
    v36 = v34 + 16;
    v24 = (v34 + 8);
    for (i = v9; ; (*v24)(i, v4))
    {
      if (v12 == v33)
      {
        swift_unknownObjectRelease();

        return v38;
      }

      if (v12 >= v33)
      {
        __break(1u);
        goto LABEL_28;
      }

      v25 = v34;
      v2 = *(v34 + 72);
      v35 = v12;
      v1 = *(v34 + 16);
      v1(v9, v32 + v2 * v12, v4);
      a1 = (v39 + ((*(v25 + 80) + 32) & ~*(v25 + 80)));
      if (!v38)
      {
        break;
      }

      sub_100142DCC();
      a1 = v26;

      if (a1)
      {
        goto LABEL_24;
      }

LABEL_25:
      v12 = v35 + 1;
      v9 = i;
    }

    v27 = *(v39 + 16) + 1;
    while (--v27)
    {
      v1(v7, a1, v4);
      sub_1000218A0(&qword_1001BBE20, &type metadata accessor for InferenceProviderDescriptor);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v24)(v7, v4);
      a1 = (a1 + v2);
      if (v28)
      {
        goto LABEL_25;
      }
    }

LABEL_24:
    a1 = &v38;
    sub_100141374();
    goto LABEL_25;
  }

  return v11;
}

uint64_t sub_1000216AC(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(unint64_t, uint64_t))
{
  v14 = *(a2 + 16);
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = static _HashTable.scale(forCapacity:)();
  if (v16 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = v17;
  }

  if (v18 > 4)
  {
    v19 = _HashTable.init(scale:reservedScale:)();
    v20 = a6(0);
    sub_100002F04(v20);
    a7(a2 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v14, v19 + 16, v19 + 32);
    *a1 = v22;
  }

  else if (v14 >= 2)
  {
    v23 = a6(0);
    sub_100002F04(v23);
    v25 = a8(a2 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v14);
    v19 = 0;
    *a1 = v25;
  }

  else
  {
    v19 = 0;
    *a1 = v14;
  }

  return v19;
}

unint64_t sub_100021800@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  a3(0);
  sub_100002C00();
  v9 = *(v8 + 16);
  v10 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v5;

  return v9(a4, v10, v7);
}

uint64_t sub_1000218A0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000055A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100021908()
{
  sub_100002BAC();
  sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  CheckedContinuation.resume(returning:)();

  sub_100001F00();

  return v0();
}

uint64_t sub_1000219B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100021980(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1000219F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  sub_100024640(v16, v17, &qword_1001B9CB0, &qword_100171E70);
  if (v14[15])
  {
    sub_1000DB4A4();
    v18 = swift_task_alloc();
    v14[32] = v18;
    *v18 = v14;
    v18[1] = sub_1000177D8;
    sub_1000031B8(v14[17]);
    sub_100003540();

    return sub_100023A48(v19, v20, v21);
  }

  else
  {
    sub_10000ED84((v14 + 12), &qword_1001B9CB0);
    if (qword_1001B8930 != -1)
    {
      sub_100005154();
      swift_once();
    }

    v24 = v14[24];
    v25 = type metadata accessor for Logger();
    sub_10000641C(v25, qword_1001BB110);
    v26 = sub_100008440();
    v27(v26);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = sub_1000038BC(v29);
    v31 = v14[25];
    if (v30)
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_10000A45C();
      swift_slowAlloc();
      sub_1000265BC();
      *v15 = 136315138;
      sub_10000950C();
      sub_100011B14(v32, v33, &protocol conformance descriptor for InferenceProviderDescriptor);
      sub_100042FBC();
      sub_100045E40();
      v34 = sub_1000194A4();
      v35(v34);
      v36 = sub_10000CD1C();
      sub_100004A3C(v36, v37, v38);
      sub_100005974();

      *(v15 + 4) = v31;
      sub_1000033FC();
      _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
      sub_100003324(v24);
      sub_1000039CC();

      sub_10000BFCC();
    }

    else
    {

      v44 = sub_1000194A4();
      v45(v44);
    }

    type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v46, v47, &protocol conformance descriptor for ModelManagerError);
    sub_100013D58();
    swift_allocError();
    v49 = v48;
    *v48 = InferenceProviderDescriptor.description.getter();
    v49[1] = v50;
    sub_1000076C8();
    (*(v51 + 104))(v49);
    swift_willThrow();
    sub_10000ED84((v14 + 2), &qword_1001B9CB0);

    sub_100001F00();
    sub_100003540();

    return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
  }
}

void sub_100021CF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [objc_opt_self() identifierWithPid:a1];
  if (v4)
  {
    v5 = v4;
    sub_10000E2C0(0, &qword_1001BA4A0, RBSProcessHandle_ptr);
    v6 = v5;
    v7 = sub_10001B620(v6);
    sub_100021FA0(v7, &v19);
    v12 = v19;
    v17 = v21;
    v18 = v20;
    v16 = v22;

    v14 = v16;
    v13 = v17;
    v15 = v18;
  }

  else
  {
    if (qword_1001B8968 != -1)
    {
      sub_100005224(&qword_1001B8968);
    }

    v8 = type metadata accessor for Logger();
    sub_100002FD0(v8, qword_1001BBF20);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_100003788();
      *v11 = 67109120;
      *(v11 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to get RBSProcessIdentifier for %d.", v11, 8u);
      sub_100002BB8(v11);
    }

    v12 = 0;
    v15 = xmmword_10016FF50;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a2 = v12;
  *(a2 + 8) = v15;
  *(a2 + 24) = v13;
  *(a2 + 40) = v14;
}

void sub_100021FA0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 isDaemon];
  v5 = sub_1000220B8(a1);
  v7 = v6;
  v8 = [a1 bundle];
  if (v8)
  {
    v9 = sub_10002211C(v8);
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [a1 bundle];
  v13 = v12;
  if (!v12)
  {

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v14 = [v12 executablePath];

  if (!v14)
  {

    v13 = 0;
    goto LABEL_9;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

LABEL_10:
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v16;
}

uint64_t sub_1000220B8(void *a1)
{
  v1 = [a1 daemonJobLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10002211C(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10002218C(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DaemonSession.LazyState(0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v14 - v11;
  sub_100022368();
  v13 = type metadata accessor for InferenceProviderDescriptor();
  if (sub_10000C6C0(v12, 1, v13) == 1)
  {
    sub_10000ECD8(v12, &qword_1001B9CD0, &qword_100170778);
    sub_10001AE40();
    if (v2)
    {
      return;
    }

    swift_getAtKeyPath();
    if (sub_10000C6C0(v10, 1, v13) == 1)
    {
      __break(1u);
      return;
    }

    sub_1000125E8(v6, type metadata accessor for DaemonSession.LazyState);
  }

  else
  {
    v10 = v12;
  }

  (*(*(v13 - 8) + 32))(a2, v10, v13);
}

void sub_100022368()
{
  v1 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_100022424();

  os_unfair_lock_unlock((v1 + v2));
}

uint64_t sub_100022450()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_100004F40(v1);

  return v4(v3);
}

uint64_t sub_1000224E0()
{
  sub_10000385C();
  sub_100003284();
  v2 = v0[73];
  v0[74] = sub_10001CFA8();
  if (v2)
  {
    sub_100003324(v0 + 22);
    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000641C(v4, qword_1001B9A18);
    sub_10000D0E8();

    swift_errorRetain();
    v5 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_10001E6F0();

    if (os_log_type_enabled(v5, v1))
    {
      sub_1000267F8();
      v6 = sub_1000039DC();
      sub_1000033D0();
      v23 = swift_slowAlloc();
      sub_100026B40(4.8151e-34);
      sub_10001AFF8();
      sub_10000CD00();
      v7 = sub_10000CF10();
      sub_100004A3C(v7, v8, v9);
      sub_10000A08C();

      sub_100003760();
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      sub_10003DDBC(v10);
      sub_100005A04();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
      sub_10001301C(v6, &qword_1001B8F68);
      sub_100002BD0();

      sub_100003324(v23);
      sub_100007C2C();

      sub_100002BD0();
    }

    else
    {
    }

    swift_task_alloc();
    sub_100004B34();
    v0[78] = v16;
    *v16 = v17;
    sub_100002FAC(v16);
    sub_1000A0258();
    sub_100003540();

    return Task<>.value.getter(v18);
  }

  else
  {
    v0[75] = sub_10001B304(v0[30], v0[31]);
    v3 = v0[38];
    Session.Metadata.id.getter();
    sub_10001D000(v3);
    v20 = swift_task_alloc();
    v0[76] = v20;
    *v20 = v0;
    v20[1] = sub_1000292C8;
    sub_10001B228();
    sub_100003540();

    return sub_10001D35C();
  }
}

uint64_t sub_1000227C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002281C()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 584) = v0;

  if (v0)
  {
    v7 = *(v3 + 264);
    v8 = sub_100092580;
  }

  else
  {
    v9 = *(v3 + 264);

    v8 = sub_1000224E0;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10002292C(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  return sub_100004B70(sub_100022F30, 0);
}

uint64_t sub_10002294C()
{
  sub_100001ED0();
  v1 = swift_task_alloc();
  sub_100012AE8(v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  sub_100065020(&qword_1001BC090, &qword_100172940);
  *v2 = v0;
  v2[1] = sub_100022DE8;
  sub_10000895C();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100022A84()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;
  *(v6 + 44) = v5;

  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100022B7C()
{
  sub_100003884();
  if (sub_10000E8DC(*(v0 + 48)))
  {
    v1 = *(v0 + 48) & 0xC000000000000001;
    sub_100022A7C();
    if (v1)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v2 = *(*(v0 + 48) + 32);
    }

    v3 = *(v0 + 24);

    v4 = sub_10001C19C(v2);
  }

  else
  {

    if (qword_1001B8968 != -1)
    {
      sub_100005224(&qword_1001B8968);
    }

    v5 = type metadata accessor for Logger();
    sub_100002FD0(v5, qword_1001BBF20);
    v3 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = sub_100002F80(v6);
    v8 = *(v0 + 24);
    if (v7)
    {
      v9 = *(v0 + 64);
      v10 = sub_100003788();
      *v10 = 67109120;
      v10[1] = v9;
      sub_100002DA4(&_mh_execute_header, v11, v12, "Failed to get RBSProcessHandle for %d. Interpreting as process terminated");
      sub_100002F64();
    }

    v4 = 3;
  }

  sub_100001F7C();

  return v13(v4);
}

uint64_t sub_100022CDC()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 48) = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v6 = sub_1000FC428;
  }

  else
  {

    v6 = sub_100022B7C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100022DE8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10009BC88, 0, 0);
  }

  else
  {

    sub_100001F7C();

    return v7();
  }
}

unint64_t sub_100022F0C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100022F30()
{
  sub_100003884();
  v1 = [objc_opt_self() identifierWithPid:*(v0 + 64)];
  *(v0 + 24) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v0 + 32) = v3;
    *(v3 + 16) = v2;
    v4 = v2;
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_100022CDC;

    return sub_100023268(sub_100022A60, v3);
  }

  else
  {
    if (qword_1001B8968 != -1)
    {
      sub_100005224(&qword_1001B8968);
    }

    v7 = type metadata accessor for Logger();
    sub_100002FD0(v7, qword_1001BBF20);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (sub_100002F80(v9))
    {
      v10 = sub_100003788();
      sub_10000A300(v10, 1.5047e-36);
      sub_100002DA4(&_mh_execute_header, v11, v12, "Failed to get RBSProcessIdentifier for %d. Interpreting as process terminated");
      sub_100002F64();
    }

    sub_100001F7C();

    return v13(3);
  }
}

uint64_t sub_100023110()
{
  sub_10000639C();
  sub_100003884();
  sub_1000089AC();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_100007D94(v1);
  sub_100003D20();

  return sub_100023244(v3, v4, v5, v6, v7);
}

uint64_t sub_1000231A8()
{
  sub_100002BAC();
  sub_10000D070(*(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100022A84;
  v2 = *(v0 + 40);

  return sub_10002292C(v2);
}

uint64_t sub_100023244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  return _swift_task_switch(sub_1000231A8, a4, 0);
}

uint64_t sub_100023268(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10002294C, 0, 0);
}

uint64_t sub_100023298()
{
  sub_100002BAC();
  sub_1000264C4(**(v0 + 32), *(*(v0 + 32) + 8), *(v0 + 40), *(v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100027638;
  sub_1000031B8(*(v0 + 32));

  return sub_100023338();
}

uint64_t sub_100023338()
{
  sub_100002BAC();
  v1[90] = v0;
  v1[89] = v2;
  v1[88] = v3;
  v1[87] = v4;
  State = type metadata accessor for LoadState();
  v1[91] = State;
  sub_100002F44(State);
  v1[92] = v6;
  v1[93] = sub_100002C58();
  v7 = type metadata accessor for AssetCost();
  v1[94] = v7;
  sub_100002F44(v7);
  v1[95] = v8;
  v1[96] = sub_100002C58();
  v9 = type metadata accessor for InferenceProviderAssetDescriptor();
  v1[97] = v9;
  sub_100002F44(v9);
  v1[98] = v10;
  v1[99] = sub_10000F0C0();
  v1[100] = swift_task_alloc();
  v11 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  sub_100002F04(v11);
  v1[101] = sub_10000F0C0();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v12 = type metadata accessor for ModelCatalogAsset(0);
  v1[105] = v12;
  sub_100002F04(v12);
  v1[106] = sub_10000F0C0();
  v1[107] = swift_task_alloc();
  v13 = type metadata accessor for InferenceProviderDescriptor();
  v1[108] = v13;
  sub_100002F44(v13);
  v1[109] = v14;
  v1[110] = sub_100002C58();
  v15 = type metadata accessor for ModelCatalogAssetVersionedData(0);
  v1[111] = v15;
  sub_100002F04(v15);
  v1[112] = sub_10000F0C0();
  v1[113] = swift_task_alloc();
  v16 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v1[114] = v16;
  sub_100002F04(v16);
  v1[115] = sub_100002C58();
  v17 = sub_100002C10();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_1000235AC()
{
  sub_100001ED0();
  if (sub_100019684())
  {
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_10001CB98;

    return sub_1000E6EBC();
  }

  else
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
    if (sub_100002F80(v5))
    {
      v6 = sub_100007648();
      sub_10000A240(v6);
      sub_1000059D8(&_mh_execute_header, v7, v8, "No assets have a pending version change");
      sub_100002BD0();
    }

    sub_100001F00();

    return v9();
  }
}

unint64_t sub_1000236F4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000256A8(a1, a2, v4);
}

void (*sub_10002376C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v8 = sub_1000B7230(0x68uLL);
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v4;
  *v8 = a2;
  v9 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  v8[3] = v9;
  v10 = *(v9 - 8);
  v8[4] = v10;
  v11 = *(v10 + 64);
  v8[5] = sub_1000B7230(v11);
  v8[6] = sub_1000B7230(v11);
  v8[7] = sub_1000B7230(v11);
  v12 = *(*(sub_100065020(&qword_1001BAA00, &qword_100171578) - 8) + 64);
  v8[8] = sub_1000B7230(v12);
  v8[9] = sub_1000B7230(v12);
  v13 = sub_1000B7230(v12);
  v8[10] = v13;
  v14 = *v4;
  v15 = sub_1000236F4(a2, a3);
  *(v8 + 96) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_10;
  }

  v20 = v15;
  v21 = v16;
  sub_100065020(&qword_1001BAA08, &qword_100171580);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v19))
  {
    v22 = sub_1000236F4(a2, a3);
    if ((v21 & 1) == (v23 & 1))
    {
      v20 = v22;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[11] = v20;
  if (v21)
  {
    sub_1000BA610();
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  sub_100009BFC(v13, v24, 1, v9);
  return sub_100025AEC;
}

unint64_t sub_1000239D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_100004A3C(a1, a2, va);
}

uint64_t sub_1000239EC()
{

  return static _SetStorage.copy(original:)();
}

uint64_t sub_100023A08()
{
  v2 = *(v0 + 80) + 304;

  return sub_100007130(v2, v0 + 16);
}

uint64_t sub_100023A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return sub_100004B70(sub_100024DE8, v3);
}

uint64_t sub_100023A68()
{
  sub_100002BAC();
  sub_1000DAF50(*(v0 + 176));
  swift_task_alloc();
  sub_100004B34();
  *(v0 + 240) = v1;
  *v1 = v2;
  v1[1] = sub_100024724;
  v3 = sub_10004AE38();

  return sub_1000253E8(v3, v4);
}

uint64_t sub_100023B04()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  *(v0 + 928) = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  v44 = *(v0 + 696);
  sub_100004CBC();
  swift_beginAccess();
  v4 = *&v3[v1];
  v5 = swift_task_alloc();
  *(v5 + 16) = v44;
  *(v5 + 32) = v2;

  v6 = sub_1000241C8(sub_1000241A4, v5, v4);
  *(v0 + 936) = v6;

  if (v6)
  {
    if (qword_1001B8930 != -1)
    {
      sub_100005154();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    *(v0 + 944) = sub_10000641C(v7, qword_1001BB110);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      sub_10000A05C();
      v10 = swift_slowAlloc();
      sub_1000033D0();
      v45 = swift_slowAlloc();
      *v10 = 136315138;

      v11 = sub_100027434();

      v12 = sub_1000037BC();
      sub_100004A3C(v12, v13, v14);
      sub_10000A08C();

      *(v10 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v8, v9, "assetFromModelCatalogAsset found existing: %s", v10, 0xCu);
      sub_100003324(v45);
      sub_100002BD0();

      sub_100005864();
    }

    v15 = *(v0 + 912);
    v16 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    *(v0 + 952) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    v17 = &v16[v6];
    sub_100004CBC();
    swift_beginAccess();
    sub_100007130(&v17[*(v15 + 60)], v0 + 416);
    sub_100003370((v0 + 416), *(v0 + 440));
    v18 = sub_100007B78();
    v20 = v19(v18);
    sub_100003324((v0 + 416));
    sub_100007130(&v17[*(v15 + 60)], v0 + 456);
    sub_100003370((v0 + 456), *(v0 + 480));
    sub_1000DAFA0();
    v21 = sub_10000CD1C();
    v22(v21);
    v38 = *(v0 + 912);
    sub_100003324((v0 + 456));
    if (v20 & 1 | ((v17[*(v38 + 56)] & 1) == 0))
    {
      sub_100010C60();

      sub_10000EEAC();
      sub_1000135DC();

      __asm { BRAA            X2, X16 }
    }

    sub_100007130(&v17[*(v15 + 60)], v0 + 496);
    sub_100010BB8((v0 + 496));
    sub_100004B94();
    v41 = swift_task_alloc();
    *(v0 + 960) = v41;
    *v41 = v0;
    sub_1000071DC(v41);
    sub_1000135DC();

    __asm { BRAA            X2, X16 }
  }

  v23 = *(v0 + 880);
  v24 = *(v0 + 872);
  v25 = *(v0 + 864);
  sub_100003370((*(v0 + 720) + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog), *(*(v0 + 720) + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog + 24));
  v26 = sub_100008004();
  sub_100003370(v26, v27);
  v28 = sub_10000D048();
  v29(v28);
  v30 = InferenceProviderDescriptor.id.getter();
  v32 = v31;
  (*(v24 + 8))(v23, v25);
  if (v30 != 0x666E692D74736F68 || v32 != 0xEE0065636E657265)
  {
    sub_100008004();
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_task_alloc();
  sub_100004B34();
  *(v0 + 976) = v34;
  *v34 = v35;
  v34[1] = sub_1000CA708;
  sub_1000135DC();

  return sub_1001107EC();
}

uint64_t sub_100024640(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10001E72C(v4 + 16, v4 + 96, a3, a4);
}

uint64_t sub_100024658()
{
}

uint64_t sub_100024670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v10 = swift_task_alloc();
  v11 = sub_100004B00(v10);
  *v11 = v12;
  v11[1] = sub_10006FA64;
  sub_10000CD38();
  sub_100006378();

  return sub_100025A20(v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_100024724()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 248) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100024838()
{
  v44 = *(v0 + 216);
  v1 = *(v0 + 136);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 136) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v41 = *(v0 + 224) + 7;

  v12 = 0;
  v42 = v8;
  v43 = v3;
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return TaskGroup.Iterator.next(isolation:)(v9, v10, v11);
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v13);
    ++v12;
    if (v7)
    {
      v12 = v13;
      do
      {
LABEL_8:
        v14 = *(v0 + 232);
        v15 = *(v0 + 240);
        v16 = *(v0 + 160);
        v47 = *(v0 + 152);
        v48 = *(v0 + 200);
        v45 = *(v0 + 208);
        v46 = *(v0 + 144);
        sub_100007E28();
        sub_1000192DC(v17, v15);
        v18 = type metadata accessor for TaskPriority();
        sub_100003978();
        sub_100009BFC(v19, v20, v21, v18);
        sub_100025814(v15, v14);
        sub_100007130(v16, v0 + 16);
        v22 = (*(v44 + 80) + 40) & ~*(v44 + 80);
        v23 = (v41 + v22) & 0xFFFFFFFFFFFFFFF8;
        v24 = swift_allocObject();
        v24[2] = 0;
        v24[3] = 0;
        v24[4] = v46;
        sub_100025814(v14, v24 + v22);
        *(v24 + v23) = v47;
        sub_100004A04((v0 + 16), v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
        sub_10001E72C(v45, v48, &qword_1001BB050, &qword_10016F6E0);
        sub_10000C6C0(v48, 1, v18);
        sub_100046BD0();

        if (v18 == 1)
        {
          sub_10000ED84(*(v0 + 200), &qword_1001BB050);
        }

        else
        {
          TaskPriority.rawValue.getter();
          sub_100006098();
          v25 = sub_100004CB0();
          v26(v25);
        }

        if (v24[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_100004CA4();
          v27 = dispatch thunk of Actor.unownedExecutor.getter();
          v29 = v28;
          swift_unknownObjectRelease();
        }

        else
        {
          v27 = 0;
          v29 = 0;
        }

        v30 = **(v0 + 128);
        sub_100002EE0();
        v31 = swift_allocObject();
        *(v31 + 16) = &unk_100171E50;
        *(v31 + 24) = v24;

        sub_100065020(&qword_1001BB440, &unk_1001742C0);
        v32 = v29 | v27;
        if (v29 | v27)
        {
          v32 = v0 + 56;
          *(v0 + 56) = 0;
          *(v0 + 64) = 0;
          *(v0 + 72) = v27;
          *(v0 + 80) = v29;
        }

        v33 = *(v0 + 208);
        v7 &= v7 - 1;
        *(v0 + 88) = 1;
        *(v0 + 96) = v32;
        *(v0 + 104) = v30;
        swift_task_create();
        sub_10000A08C();

        v9 = sub_10000ED84(v33, &qword_1001BB050);
        v8 = v42;
        v3 = v43;
      }

      while (v7);
    }
  }

  sub_100065020(&qword_1001BB440, &unk_1001742C0);
  TaskGroup.makeAsyncIterator()();
  sub_10001E600();
  v36 = sub_100011B14(v34, v35, &unk_100171CF0);
  *(v0 + 248) = v36;
  v37 = *(v0 + 144);
  swift_task_alloc();
  sub_100004B34();
  *(v0 + 256) = v38;
  *v38 = v39;
  sub_1000DACA8(v38);
  v9 = v0 + 112;
  v10 = v37;
  v11 = v36;

  return TaskGroup.Iterator.next(isolation:)(v9, v10, v11);
}

uint64_t sub_100024C74()
{
  v1 = (type metadata accessor for ModelCatalogAsset(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[10];
  type metadata accessor for AssetCost();
  sub_100002C00();
  (*(v6 + 8))(v0 + v3 + v5);

  sub_100003324((v0 + v4));

  return _swift_deallocObject(v0, v4 + 40, v2 | 7);
}

uint64_t sub_100024DB4()
{

  sub_100002EE0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100024DE8()
{
  sub_10000636C();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  sub_10000CF04();
  sub_100024224();
  v6 = v5;
  sub_100007130(v1, v0 + 16);
  v7 = swift_allocObject();
  *(v0 + 104) = v7;
  sub_100004A04((v0 + 16), (v7 + 2));
  v7[7] = v2;
  v7[8] = v4;
  v7[9] = v3;
  v7[10] = v6;

  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  sub_100065020(&qword_1001BB430, &qword_100171E18);
  sub_100065020(&qword_1001BB438, &unk_100171E20);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  *v8 = v0;
  v8[1] = sub_100026F84;
  sub_100023A30();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v9, v10, v11);
}

uint64_t sub_100024F9C()
{
  sub_100003324((v0 + 16));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100024FF4(uint64_t a1)
{
  *(v1 + 432) = a1;

  return sub_10001D000(v2);
}

char *sub_100025020(char *result, int64_t a2, char a3, char *a4)
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
    sub_100065020(&qword_1001B9090, &unk_100172C70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_100025164@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v5 = sub_1000236F4(a1, a2), (v6 & 1) != 0))
  {
    sub_1000190EC(v5);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1000251D8()
{
  sub_100001ED0();
  v1 = v0[7];
  if (*(v1 + 168) <= 0)
  {
    if (qword_1001B8910 != -1)
    {
      sub_100005C4C();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000641C(v6, qword_1001BA630);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      sub_10000EDF4(&_mh_execute_header, v10, v11, "Waiting for first extension query to finish");
      sub_100002BB8(v9);
    }

    v12 = v0[7];

    v13 = sub_1000BA43C(&qword_1001B8B08, type metadata accessor for InferenceProviderManager, &protocol conformance descriptor for InferenceProviderManager);
    v14 = swift_task_alloc();
    v0[8] = v14;
    *v14 = v0;
    v14[1] = sub_1000B995C;
    v15 = v0[7];

    return withCheckedContinuation<A>(isolation:function:_:)(v14, v12, v13, 0xD000000000000025, 0x80000001001767D0, sub_1000BA484, v15, &type metadata for () + 1);
  }

  else
  {
    v3 = v0[5];
    v2 = v0[6];
    sub_100004B50(v1 + 112, (v0 + 2));
    sub_100025EF0(v2, v3);
    swift_endAccess();
    sub_100001F00();

    return v4();
  }
}

uint64_t sub_1000253E8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return sub_100004B70(sub_1000251D8, v2);
}

uint64_t sub_100025414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for InferenceProviderDescriptor.Instance();
  sub_100002BDC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100002B8C();
  v12 = (v11 - v10);
  InferenceProviderDescriptor.instance.getter();
  v13 = (*(v8 + 88))(v12, v6);
  if (v13 == enum case for InferenceProviderDescriptor.Instance.specificInstance(_:))
  {
    (*(v8 + 96))(v12, v6);
    v15 = *v12;
    v14 = v12[1];
    v16 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
    sub_100025164(v15, v14, *(v3 + *(v16 + 24)), &v19);
    if (v20)
    {

LABEL_6:
      sub_100004A04(&v19, v21);
      return sub_100004A04(v21, a2);
    }

    sub_10000ECD8(&v19, &qword_1001B9CB0, &qword_100171E70);
    sub_1000B5B74(a1, &v19);
    if (v20)
    {
      sub_100004A04(&v19, v21);
      sub_1000480AC(v21, &v19);
      sub_1000FF310();
      return sub_100004A04(v21, a2);
    }

    result = sub_10000ECD8(&v19, &qword_1001B9CB0, &qword_100171E70);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else if (v13 == enum case for InferenceProviderDescriptor.Instance.defaultInstance(_:))
  {
    v17 = *(type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0) + 20);
    sub_100012F04();
    if (v20)
    {
      goto LABEL_6;
    }

    sub_10000ECD8(&v19, &qword_1001B9CB0, &qword_100171E70);
    sub_1000B5B74(a1, a2);
    return sub_1000BA48C(a2, v3 + v17);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000256A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10002575C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v10 = swift_task_alloc();
  v11 = sub_100004B00(v10);
  *v11 = v12;
  v11[1] = sub_10006FA64;
  sub_1000DACD0();
  sub_100006378();

  return sub_100025878(v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_100025814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100025878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[16] = a2;
  v7[17] = a3;
  v9 = sub_100065020(&qword_1001BB448, &qword_100171E40);
  v7[22] = v9;
  v7[23] = *(v9 - 8);
  v7[24] = swift_task_alloc();
  sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v10 = *(type metadata accessor for ModelCatalogAsset(0) - 8);
  v7[27] = v10;
  v7[28] = *(v10 + 64);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();

  return _swift_task_switch(sub_100024838, a4, 0);
}

uint64_t sub_100025A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v7[17] = a1;
  v7[24] = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000CB700, a3, 0);
}

void sub_100025AEC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = *(v2 + 8);
    sub_100012F04();
    v5 = sub_10000C6C0(v4, 1, v3);
    v6 = *(v2 + 96);
    v7 = *(v2 + 8);
    if (v5 != 1)
    {
      v8 = *(v2 + 2);
      sub_1000050EC();
      sub_1000BA610();
      v9 = *v8;
      v10 = *(v2 + 11);
      if ((v6 & 1) == 0)
      {
LABEL_4:
        v11 = *(v2 + 5);
        v13 = *v2;
        v12 = *(v2 + 1);
        sub_1000050EC();
        sub_1000BA610();
        sub_100118154(v10, v13, v12, v11, v9);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v14 = *(v2 + 9);
    sub_100012F04();
    v15 = sub_10000C6C0(v14, 1, v3);
    v6 = *(v2 + 96);
    v7 = *(v2 + 9);
    if (v15 != 1)
    {
      v16 = *(v2 + 2);
      sub_1000050EC();
      sub_1000BA610();
      v9 = *v16;
      v10 = *(v2 + 11);
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1000050EC();
      sub_1000BA610();
      goto LABEL_10;
    }
  }

  sub_10000ECD8(v7, &qword_1001BAA00, &qword_100171578);
  if (v6)
  {
    sub_100021010(*(**(v2 + 2) + 48) + 16 * *(v2 + 11));
    _NativeDictionary._delete(at:)();
  }

LABEL_10:
  v17 = *(v2 + 9);
  v18 = *(v2 + 10);
  v20 = *(v2 + 7);
  v19 = *(v2 + 8);
  v22 = *(v2 + 5);
  v21 = *(v2 + 6);
  sub_10000ECD8(v18, &qword_1001BAA00, &qword_100171578);
  free(v18);
  free(v17);
  free(v19);
  free(v20);
  free(v21);
  free(v22);

  free(v2);
}

void sub_100025CFC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_100025D54(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_100025DC8(uint64_t a1)
{
}

uint64_t (*sub_100025DF0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100025D48;
}

uint64_t sub_100025E18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*sub_100025E7C(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = sub_1000B7230(0x28uLL);
  *a1 = v6;
  v6[4] = sub_100026160(v6, a2, a3);
  return sub_100025CFC;
}

uint64_t sub_100025EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = InferenceProviderDescriptor.id.getter();
  v6 = sub_100025E7C(v11, v4, v5);
  v8 = v7;
  v9 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);
  if (sub_10000C6C0(v8, 1, v9))
  {
    (v6)(v11, 0);

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    sub_100025414(a1, a2);
    (v6)(v11, 0);
  }

  return result;
}

uint64_t sub_100026004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group.Prototype(0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_1000062F4(*(a1 + *(a3 + 24)));
  }

  return sub_10000C6C0(a1, a2, v6);
}

uint64_t sub_1000260B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InferenceProviderManager.ConnectionCollection.Group.Prototype(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100009BFC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void (*sub_100026160(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = sub_1000B7230(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_100025DF0(v6);
  v6[9] = sub_10002376C(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100025D54;
}

uint64_t sub_1000261F8()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_100036708();

  return v3();
}

uint64_t sub_1000262A0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_100027868;

  return v5(v2 + 16);
}

uint64_t sub_100026394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100046544();
  sub_10000636C();
  v11 = sub_1000494E8();
  v12 = type metadata accessor for ModelCatalogAsset(v11);
  sub_100002F44(v12);
  v13 = swift_task_alloc();
  *(v10 + 16) = v13;
  *v13 = v10;
  v13[1] = sub_10006F558;
  sub_100036708();
  sub_10000CD38();
  sub_100023A30();

  return sub_1000264DC(v14, v15, v16, v17, v18, v19, v20);
}

BOOL sub_1000264AC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000264DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  sub_100065020(&qword_1001B9D00, &qword_100171E00);
  v7[7] = swift_task_alloc();

  return _swift_task_switch(sub_100023298, 0, 0);
}

void sub_1000265D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

BOOL sub_10002660C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100026628(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, os_log_type_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_t log)
{

  _os_log_impl(a1, log, a14, a4, v19, 0x16u);
}

unint64_t sub_100026664()
{
  result = qword_1001BB420;
  if (!qword_1001BB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB420);
  }

  return result;
}

uint64_t sub_1000266B8(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1000266C4()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000267D0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000267F8()
{

  return swift_slowAlloc();
}

void sub_100026810(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, os_log_type_t a11, os_log_t log)
{

  _os_log_impl(a1, log, a11, a4, v12, 0x16u);
}

BOOL sub_100026838(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100026850()
{
}

uint64_t sub_100026894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v11 = *(v10 + 112);
  v12 = *(v10 + 120);
  if (v12 == 255)
  {
    (*(*(v10 + 184) + 8))(*(v10 + 192), *(v10 + 176));

    sub_100001F00();
    sub_100006378();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }

  else
  {
    v13 = *(v10 + 168);
    v14 = *v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = *(v10 + 168);
      sub_100031654();
      sub_100026A30();
      v14 = v34;
      *v33 = v34;
    }

    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v17 >= v16 >> 1)
    {
      v35 = *(v10 + 168);
      sub_1000127D4(v16);
      sub_100031654();
      sub_100026A30();
      v14 = v36;
      *v35 = v36;
    }

    *(v14 + 16) = v17 + 1;
    v18 = v14 + 16 * v17;
    *(v18 + 32) = v11;
    *(v18 + 40) = v12 & 1;
    swift_task_alloc();
    sub_100004B34();
    *(v10 + 256) = v19;
    *v19 = v20;
    sub_1000DACA8(v19);
    sub_100036708();
    sub_100006378();

    return TaskGroup.Iterator.next(isolation:)(v21, v22, v23);
  }
}

void sub_100026A30()
{
  sub_100004D68();
  if ((v4 & 1) == 0 || (sub_100012660(), v5 == v6))
  {
LABEL_6:
    sub_100006184();
    if (v3)
    {
      sub_100065020(&qword_1001BDC38, &qword_1001742B8);
      v7 = sub_10014B308();
      j__malloc_size(v7);
      sub_100057A74();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = sub_10001997C();
        sub_100026AFC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_100065020(&qword_1001BB440, &unk_1001742C0);
    sub_10000D5B4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_100005FE0();
  if (!v5)
  {
    sub_10000A210();
    goto LABEL_6;
  }

  __break(1u);
}

char *sub_100026AFC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_100004FA4(a3, result);
  }

  return result;
}

uint64_t sub_100026B40(float a1)
{
  *v1 = a1;
}

uint64_t sub_100026B80()
{

  return type metadata accessor for Logger();
}

uint64_t sub_100026BBC(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

void sub_100026BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_100003728();
  a31 = v33;
  a32 = v34;
  v63 = v35;
  v36 = v32;
  v37 = *v32;
  v40 = sub_100005F38(v38, v39);
  sub_100065020(v40, v41);
  v42 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v37 + 16))
  {
    v43 = 0;
    sub_10002B00C();
    sub_100035380();
    v46 = v45 & v44;
    v48 = (v47 + 63) >> 6;
    v49 = v42 + 56;
    if ((v45 & v44) != 0)
    {
      while (1)
      {
        sub_100012F5C();
LABEL_9:
        v55 = *(*(v37 + 48) + 8 * (v50 | (v43 << 6)));
        Hasher.init(_seed:)();

        v63(&a12);
        Hasher._finalize()();
        sub_10008D2F8();
        if (v56)
        {
          break;
        }

        sub_1000033E8();
LABEL_19:
        sub_100045670();
        *(v49 + v60) |= v61;
        *(*(v42 + 48) + 8 * v62) = v55;
        ++*(v42 + 16);
        if (!v46)
        {
          goto LABEL_4;
        }
      }

      sub_10000783C();
      while (1)
      {
        sub_100060714();
        if (v56)
        {
          if (v58)
          {
            break;
          }
        }

        if (v57 == v59)
        {
          v57 = 0;
        }

        if (*(v49 + 8 * v57) != -1)
        {
          sub_1000081CC();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v51 = v43;
      while (1)
      {
        v43 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        if (v43 >= v48)
        {

          v36 = v32;
          goto LABEL_23;
        }

        sub_100005968();
        if (v52)
        {
          sub_1000062A0();
          v46 = v54 & v53;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v36 = v42;
    sub_100007F20();
  }
}

void sub_100026D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_100003728();
  a31 = v33;
  a32 = v34;
  v65 = v35;
  v36 = v32;
  v37 = *v32;
  v40 = sub_100005F38(v38, v39);
  sub_100065020(v40, v41);
  sub_10000D01C();
  v42 = static _SetStorage.resize(original:capacity:move:)();
  if (!v37[2])
  {
LABEL_25:

    *v36 = v42;
    sub_100007F20();
    return;
  }

  v43 = 0;
  v44 = v37 + 7;
  sub_10002B00C();
  sub_100035380();
  v47 = v46 & v45;
  v49 = (v48 + 63) >> 6;
  v50 = v42 + 56;
  if ((v46 & v45) == 0)
  {
LABEL_4:
    v52 = v43;
    while (1)
    {
      v43 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v43 >= v49)
      {
        break;
      }

      ++v52;
      if (v44[v43])
      {
        sub_1000062A0();
        v47 = v54 & v53;
        goto LABEL_9;
      }
    }

    sub_100003878();
    if (v63 >= 64)
    {
      sub_100011624(0, (v63 + 63) >> 6, (v37 + 7));
    }

    else
    {
      sub_100011E24();
      *v44 = v64;
    }

    v36 = v32;
    v37[2] = 0;
    goto LABEL_25;
  }

  while (1)
  {
    v51 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
LABEL_9:
    v55 = *(v37[6] + 8 * (v51 | (v43 << 6)));
    Hasher.init(_seed:)();
    v65(&a12);
    Hasher._finalize()();
    sub_10008D2F8();
    if (v56)
    {
      break;
    }

    sub_1000033E8();
LABEL_19:
    sub_100045670();
    *(v50 + v60) |= v61;
    *(*(v42 + 48) + 8 * v62) = v55;
    ++*(v42 + 16);
    if (!v47)
    {
      goto LABEL_4;
    }
  }

  sub_10000783C();
  while (1)
  {
    sub_100060714();
    if (v56)
    {
      if (v58)
      {
        break;
      }
    }

    if (v57 == v59)
    {
      v57 = 0;
    }

    if (*(v50 + 8 * v57) != -1)
    {
      sub_1000081CC();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_100026F6C()
{

  return RequestMetadata.id.getter();
}

uint64_t sub_100026F84()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  v7 = *(v3 + 96);
  if (v0)
  {
    v8 = sub_1000CB6DC;
  }

  else
  {
    v8 = sub_100027EFC;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_1000270A4()
{
  sub_1000055B0();
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v2 = v1;
  sub_100004B1C();
  __chkstk_darwin(v3);
  sub_10008D314();
  sub_1000081B4();
  sub_10001B2C0(v4, &qword_1001B94F0, &unk_100172060, v5);
  sub_100012484();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_100011E24();
  sub_1000294B8();
  while (1)
  {
    v7 = v6 & v0;
    sub_100006358();
    if (((v8 << v7) & v9) == 0)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_10002AB2C();
      v18();
      v19 = sub_1000265A0();
      sub_100085F08(v19, v20, v21);
      *v23 = v24;
      sub_10002AB2C();
      v22();
      goto LABEL_7;
    }

    v10 = sub_10008D2D0();
    (qword_1001B94F0)(v10);
    sub_1000039B4();
    sub_10001B2C0(&qword_1001B9508, &qword_1001B94F0, &unk_100172060, v11);
    v12 = sub_10008D330();
    v16 = sub_100035368(v12, v13, v14, v15);
    v17 = *(v2 + 8);
    sub_10000CBD8();
    v17();
    if (v16)
    {
      break;
    }

    v6 = v7 + 1;
  }

  sub_10000CBD8();
  v17();
  sub_10000A050();
  sub_100036E1C();
  (qword_1001B94F0)();
LABEL_7:
  sub_100002EEC();
}

uint64_t (*sub_100027298(uint64_t (*result)(uint64_t), uint64_t a2, uint64_t a3))(uint64_t)
{
  v4 = result;
  v5 = 0;
  v6 = *(a3 + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = type metadata accessor for CustomAssetConfiguration();
    sub_100002F44(v7);
    sub_100004B94();
    result = v4(v9 + *(v8 + 72) * v5++);
  }

  while (!v3);
  return result;
}

uint64_t sub_100027358(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v13 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = type metadata accessor for CustomAssetConfiguration();
    sub_100002F44(v9);
    a2(&v13, a4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v13;
}

uint64_t sub_100027434()
{
  type metadata accessor for InferenceProviderDescriptor();
  sub_100002BDC();
  __chkstk_darwin(v1);
  sub_100002B8C();
  v12 = InferenceProviderAssetDescriptor.description.getter();

  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);

  v3 = *(v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
  v4 = *(v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
  sub_100003370((v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v3);
  (*(v4 + 8))(v3, v4);
  v5 = InferenceProviderDescriptor.description.getter();
  v7 = v6;
  v8 = sub_100002CBC();
  v9(v8);

  v10._countAndFlagsBits = v5;
  v10._object = v7;
  String.append(_:)(v10);

  return v12;
}

uint64_t sub_1000275C8()
{
  sub_100002BAC();
  v1 = v0[2];
  v2 = v0[9] != 0;
  *v1 = v0[10];
  *(v1 + 8) = v2;

  sub_100001F00();

  return v3();
}

uint64_t sub_100027638()
{
  sub_10000639C();
  sub_100003884();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 72) = v0;

  v7 = *(v4 + 56);
  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  sub_10000ED84(v7, &qword_1001B9D00);
  sub_1000059F8();
  sub_100003D20();

  return _swift_task_switch(v8, v9, v10);
}

void sub_100027788()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 11);
  sub_10001AACC(&v1[4]);
  os_unfair_lock_unlock(v1 + 11);
}

BOOL sub_1000277D0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 11);
  v2 = v1[10]._os_unfair_lock_opaque != 0;
  os_unfair_lock_unlock(v1 + 11);
  return v2;
}

uint64_t sub_100027848()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_100027868()
{
  sub_100001ED0();
  sub_100025408();
  sub_100002B9C();
  *v2 = v0;
  v3 = *(v0 + 32);
  v4 = *v1;
  *v2 = *v1;

  v5 = *(v0 + 24);
  *v3 = *(v0 + 16);
  *(v3 + 8) = v5;
  v6 = *(v4 + 8);

  return v6();
}

void sub_1000279CC()
{
  sub_10000A274();
  v39 = v0;
  v2 = v1;
  v3 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100009C24();
  v36 = v7;
  sub_100002F1C();
  v9 = __chkstk_darwin(v8);
  v11 = &v35 - v10;
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v14);
  sub_100002B8C();
  v17 = v16 - v15;
  v18 = *v2;
  v19 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004CBC();
  swift_beginAccess();
  sub_100005C78();
  sub_1000192DC(v19 + v18, v17);
  v35 = *(v5 + 16);
  v35(v11, v39, v3);
  sub_100019678();
  sub_1000270A4();
  v20 = *(v5 + 8);
  v37 = v5 + 8;
  v20(v13, v3);
  sub_100002D24();
  swift_beginAccess();
  sub_10003DA78(v17, v19 + v18);
  swift_endAccess();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000641C(v21, qword_1001BB110);
  v35(v36, v39, v3);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    sub_100002F10();
    v40 = v20;
    v24 = swift_slowAlloc();
    sub_100011828();
    v38 = swift_slowAlloc();
    *v24 = 136315394;

    v25 = sub_100027434();

    v26 = sub_1000062B0();
    sub_100004A3C(v26, v27, v28);
    sub_100009540();

    *(v24 + 4) = v25;
    *(v24 + 12) = 2080;
    sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = sub_1000DAE34();
    v40(v30);
    v31 = sub_1000062B0();
    sub_100004A3C(v31, v32, v33);
    sub_100009540();

    *(v24 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Marked asset %s as associated with foreground session %s", v24, 0x16u);
    swift_arrayDestroy();
    sub_100002BD0();

    sub_100005864();
  }

  else
  {

    v34 = sub_1000DB0D4();
    (v20)(v34);
  }

  sub_100005874();
}

void sub_100027D74()
{
  sub_1000055B0();
  v3 = v2;
  v5 = v4;
  sub_100065020(v6, v7);
  sub_100002BDC();
  sub_100004B1C();
  __chkstk_darwin(v8);
  sub_100011D6C();
  v9 = sub_100007748();
  if (*(v3 + 16))
  {
    sub_10000A874();
    sub_100013AA0();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      memmove(v10, v5, 8 * v11);
    }

    v15 = 0;
    *(v9 + 16) = *(v3 + 16);
    sub_100003878();
    sub_100012714();
    sub_100018C90();
    while (v1)
    {
      sub_100011268();
LABEL_15:
      sub_10000949C();
      v20 = sub_100030274();
      v21(v20);
      v22 = sub_100046488();
      v23(v22);
    }

    v16 = v15;
    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v15 >= v0)
      {
        goto LABEL_17;
      }

      sub_100005968();
      if (v17)
      {
        sub_1000062A0();
        v1 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_10001E490();
    sub_100002EEC();
  }
}

uint64_t sub_100027ED4()
{
}

uint64_t sub_1000281BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100028210()
{
}

uint64_t sub_100028228()
{

  return static _HashTable.scale(forCapacity:)();
}

uint64_t sub_100028248(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_100011B14(&qword_1001B94B0, type metadata accessor for InferenceProviderAsset, &unk_1001720DC);
    result = Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a3 + 32);
    v7 = a3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a3 + 56);

    v9 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      while (1)
      {
        v27 = v18;
        a1(&v27);

        if (v4)
        {
          break;
        }

        v9 = v16;
        v10 = v17;
        v5 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_19;
        }

        type metadata accessor for InferenceProviderAsset(0);
        swift_dynamicCast();
        v18 = v27;
        v16 = v9;
        v17 = v10;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      v19 = v21;
    }

    else
    {
LABEL_21:
      v5 = v21;
LABEL_19:
      v19 = v5;
    }

    return sub_100019334(v19);
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000284A0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 11);
  sub_1000284F8(&v1[4]);

  os_unfair_lock_unlock(v1 + 11);
}

void sub_1000284F8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (qword_1001B89C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000641C(v5, qword_1001BC8F8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315394;
    v10 = sub_100004A3C(v3, v2, &v11);

    *(v8 + 4) = v10;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unlocking %s [%u]", v8, 0x12u);
    sub_100003324(v9);
  }

  else
  {
  }

  if (v4)
  {
    *(a1 + 24) = v4 - 1;
    if (v4 == 1)
    {
      dispatch thunk of CoherentAssetLock.unlock()();
    }
  }
}

uint64_t sub_1000286AC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v3 = sub_10002A104();
    type metadata accessor for InferenceProviderAsset(v3);
    sub_1000056C4();
    sub_100011B14(v4, v5, &unk_1001720DC);
    sub_1000062B0();
    result = Set.Iterator.init(_cocoa:)();
    v2 = v28[8];
    v7 = v28[9];
    v8 = v28[10];
    v9 = v28[11];
    v10 = v28[12];
  }

  else
  {
    sub_100011E24();
    v7 = v2 + 56;
    v8 = ~v11;
    sub_10000A5E8();
    v10 = v12 & v13;

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v15 = v9;
    v16 = v9;
    if (!v10)
    {
      break;
    }

LABEL_9:
    sub_1000062A0();
    v19 = v18 & v17;
    v21 = *(*(v2 + 48) + ((v16 << 9) | (8 * v20)));

    if (!v21)
    {
LABEL_15:
      v27 = sub_1000060A4();
      return sub_100019334(v27);
    }

    while (1)
    {
      v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v21;
      sub_100004CBC();
      swift_beginAccess();
      v23 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
      sub_100007130(&v22[*(v23 + 60)], v28);
      v24 = v28[4];
      sub_100003370(v28, v28[3]);
      v25 = sub_10000D0E8();
      v26(v25, v24);

      result = sub_100003324(v28);
      v9 = v16;
      v10 = v19;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for InferenceProviderAsset(0);
        sub_1000358A4();
        swift_dynamicCast();
        v21 = v28[0];
        v16 = v9;
        v19 = v10;
        if (v28[0])
        {
          continue;
        }
      }

      goto LABEL_15;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
      goto LABEL_15;
    }

    ++v15;
    if (*(v7 + 8 * v16))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000288D0()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000292C8()
{
  sub_100005F88();
  sub_1000033DC();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 616) = v0;

  sub_10000A9E0();

  v4 = sub_10000CD1C();
  v5(v4);
  v6 = sub_10000A9EC();
  v7(v6);
  sub_1000062BC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000294E8()
{

  return type metadata accessor for AuditToken();
}

uint64_t sub_100029524()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

void sub_10002961C()
{
  v1 = *(v0 + 644);
  if (qword_1001B88F0 != -1)
  {
    sub_10000505C();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002FD0(v2, qword_1001B9A18);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 552);
    v6 = *(v0 + 636);
    v7 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v7 = 136315650;

    sub_10001AFF8();
    sub_100045E40();

    v8 = sub_10000CD1C();
    sub_100004A3C(v8, v9, v10);
    sub_100005974();

    *(v7 + 4) = v5;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v6;
    *(v7 + 18) = 2080;
    *(v0 + 645) = v1;
    v11 = String.init<A>(describing:)();
    v13 = sub_100004A3C(v11, v12, &v80);

    *(v7 + 20) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Created session %s on behalf of pid %d with priority %s", v7, 0x1Cu);
    swift_arrayDestroy();
    sub_100007C2C();

    sub_1000039CC();
  }

  v14 = *(v0 + 488);
  v77 = *(v0 + 464);
  v15 = *(v0 + 448);
  v71 = *(v0 + 520);
  v74 = *(v0 + 440);
  v16 = *(v0 + 432);
  v17 = *(v0 + 416);
  v18 = *(v0 + 392);
  v19 = *(v0 + 400);
  v68 = *(v0 + 376);
  v69 = *(v0 + 360);
  v20 = *(v0 + 264);
  v21 = *(v0 + 240);
  v23 = v20[41];
  v22 = v20[42];
  sub_100003370(v20 + 38, v23);
  (*(v22 + 64))(v16, 0, 1, v14, v23, v22);
  (*(v19 + 16))(v17, v16, v18);
  v71(v68, v21, v69);
  v79 = swift_task_alloc();
  (*(v15 + 16))(v79, v77, v74);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v78 = v24;
  if (os_log_type_enabled(v24, v25))
  {
    v61 = *(v0 + 640);
    v62 = *(v0 + 636);
    v64 = *(v0 + 472);
    v65 = *(v0 + 480);
    v66 = *(v0 + 440);
    v67 = *(v0 + 448);
    v72 = *(v0 + 432);
    v75 = *(v0 + 464);
    v26 = *(v0 + 416);
    v28 = *(v0 + 392);
    v27 = *(v0 + 400);
    v70 = v25;
    v29 = *(v0 + 376);
    v63 = *(v0 + 360);
    v30 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v30 = 136316418;
    sub_100005070();
    sub_10001B27C(v31, v32, v33);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v37 = *(v27 + 8);
    v38 = sub_100036724();
    v37(v38);
    sub_100004A3C(v34, v36, &v80);
    sub_100019498();

    *(v30 + 4) = v26;
    *(v30 + 12) = 1024;
    *(v30 + 14) = v61;
    *(v30 + 18) = 1024;
    *(v30 + 20) = v62;
    *(v30 + 24) = 2080;
    Session.Metadata.loggingIdentifier.getter();
    sub_1000294D0();
    v39 = sub_100012F70();
    v40(v39, v63);
    v41 = sub_100005E8C();
    sub_100004A3C(v41, v42, v43);
    sub_100019498();

    *(v30 + 26) = v29;
    *(v30 + 34) = 2080;
    v44 = sub_100004A3C(v64, v65, &v80);

    *(v30 + 36) = v44;
    *(v30 + 44) = 2080;
    sub_100007238();
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_1000294D0();
    v45 = *(v67 + 8);
    v45(v79, v66);
    v46 = sub_100005E8C();
    sub_100004A3C(v46, v47, v48);
    sub_100019498();

    *(v30 + 46) = v79;
    _os_log_impl(&_mh_execute_header, v78, v70, "Added session %s for pid %d (on behalf of pid %d), loggingIdentifier: %s, useCaseIdentifier: %s, supportedAssets: %s", v30, 0x36u);
    swift_arrayDestroy();
    sub_100007C2C();

    sub_100002BD0();

    (v37)(v72, v28);
    v45(v75, v66);
  }

  else
  {
    v50 = *(v0 + 440);
    v49 = *(v0 + 448);
    v73 = *(v0 + 432);
    v76 = *(v0 + 464);
    v52 = *(v0 + 392);
    v51 = *(v0 + 400);
    v53 = *(v0 + 368);
    v54 = *(v0 + 376);
    v55 = *(v0 + 360);

    v56 = *(v49 + 8);
    v56(v79, v50);
    (*(v53 + 8))(v54, v55);
    v57 = *(v51 + 8);
    v58 = sub_10000CD1C();
    v57(v58);
    (v57)(v73, v52);
    v56(v76, v50);
  }

  sub_100002F54();
  sub_10000D138();

  __asm { BRAA            X1, X16 }
}

void sub_100029D2C()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (sub_1000136A8())
  {
    v11 = sub_100065020(&qword_1001BD070, &qword_100173948);
    v20[0] = v20;
    sub_100002F04(v11);
    sub_100004B1C();
    __chkstk_darwin(v12);
    v14 = v20 - v13;
    v15 = sub_100003370((v0 + 40), *(v0 + 64));
    __chkstk_darwin(v15);
    sub_100009CB4();
    *(v16 - 32) = v10;
    *(v16 - 24) = v8;
    *(v16 - 16) = v6 & 1;
    sub_1000084CC();
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    v17 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    sub_100005914(v14, v18, v19, v17);
    sub_10000ECD8(v14, &qword_1001BD070, &qword_100173948);
  }

  v2(v10, v8, v6 & 1, v4);
  sub_100002EEC();
}

uint64_t sub_100029E84(uint64_t a1, uint64_t a2, char a3, unsigned int *a4)
{
  v7 = sub_100065020(&qword_1001BD098, &qword_100173978);
  sub_100002F04(v7);
  sub_100004B1C();
  __chkstk_darwin(v8);
  v10 = v25 - v9;
  v11 = *a4;
  v12 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventType();
  sub_100002C00();
  (*(v13 + 104))(v10, v11, v12);
  sub_1000039A8();
  sub_100009BFC(v14, v15, v16, v12);
  GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.sessionEventType.setter();
  v17 = sub_100065020(&qword_1001BD0A0, &qword_100173980);
  sub_100002F04(v17);
  sub_100004B1C();
  __chkstk_darwin(v18);
  sub_100029FE0(a2, a3 & 1, (v25 - v19));
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult();
  sub_1000039A8();
  sub_100009BFC(v20, v21, v22, v23);
  return GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.sessionEventResult.setter();
}

uint64_t sub_100029FE0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult();
    sub_100002C00();
    v6 = *(v5 + 104);
    v8 = v7;
    switch(a1)
    {
      case 1:
        v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.failedDueToUseCaseDisabled(_:);
        break;
      case 2:
        v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.failedDueToSessionNotFound(_:);
        break;
      case 3:
        v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.failedForUnknownReason(_:);
        break;
      default:
        v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.success(_:);
        break;
    }

    v14 = *v9;
    v13 = a3;
  }

  else
  {
    *a3 = a1;
    v10 = enum case for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult.unknown(_:);
    type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.SessionEventResult();
    sub_100002C00();
    v6 = *(v11 + 104);
    v8 = v12;
    v13 = a3;
    v14 = v10;
  }

  return v6(v13, v14, v8);
}

uint64_t sub_10002A0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_10002A110()
{

  return swift_arrayDestroy();
}

uint64_t sub_10002A148()
{

  return swift_slowAlloc();
}

uint64_t sub_10002A16C()
{

  return swift_slowAlloc();
}

uint64_t sub_10002A1B4()
{
  sub_100002BAC();
  v1 = *(v0 + 240);
  swift_beginAccess();
  *(v0 + 248) = *(v1 + 112);

  v2 = sub_100003000();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10002A234(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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

void sub_10002A544()
{
  sub_1000055B0();
  sub_1000031F8(v1, v2, v3);
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  sub_100004B1C();
  __chkstk_darwin(v4);
  sub_100008290();
  sub_100008458(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_addSessionPostString);
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
      v46 = "uuid: %{public, signpost.description=attribute,public}s\nresult: %{public, signpost.description=attribute,public}ld";
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

uint64_t sub_10002A8F8()
{
  sub_100001ED0();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_1000071A8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10002AA48()
{
  sub_100001ED0();
  v1 = v0[30];
  *(v0[17] + 456) = 0;

  sub_100004B50(v1 + 24, (v0 + 14));
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  sub_100011910(v2);
  v3 = sub_10001646C();

  return AsyncStream.Iterator.next(isolation:)(v3);
}

uint64_t sub_10002AB6C()
{
}

unint64_t sub_10002AB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  *(v19 + 4) = a1;
  *(v19 + 12) = 2080;

  return sub_100004A3C(v18, v17, va);
}

uint64_t sub_10002ABB4()
{
  *(v1 + 18) = v0;
}

uint64_t sub_10002ABD4()
{

  return static Date.+ infix(_:_:)();
}

void sub_10002ABFC()
{
  sub_10000A274();
  v2 = v1;
  v63 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  sub_100002C00();
  __chkstk_darwin(v3);
  sub_100009C24();
  v73 = v4;
  sub_100002F1C();
  __chkstk_darwin(v5);
  sub_1000DB284();
  v72 = v6;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_10014AFE0(v7);
    *v2 = v7;
  }

  v9 = *(v7 + 16);
  v57 = (v7 + 32);
  v76[0] = v7 + 32;
  v76[1] = v9;
  v10 = _minimumMergeRunLength(_:)(v9);
  if (v10 >= v9)
  {
    if (v9 >= 2)
    {
      v54 = v2;
      v55 = v0;
      v61 = type metadata accessor for Date();
      v62 = v61 - 8;
      v19 = -1;
      v20 = 1;
      v21 = v57;
      v56 = v9;
      do
      {
        v59 = v20;
        v22 = v57[v20];
        v60 = v19;
        v64 = v19;
        v58 = v21;
        do
        {
          v23 = *v21;
          v24 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          v25 = v22;
          sub_100004CBC();
          swift_beginAccess();
          sub_100018C50();
          v26 = v72;
          v71 = v27;
          sub_1000192DC(v24 + v25, v72);
          v28 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          sub_100004CBC();
          swift_beginAccess();
          v69 = v23;
          v29 = sub_1000192DC(v28 + v23, v73);
          v30 = v61;
          v70 = &v53;
          v66 = *(v61 - 8);
          v31 = v66;
          v32 = *(v66 + 64);
          __chkstk_darwin(v29);
          v67 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
          v33 = &v53 - v67;
          v34 = v63;
          v35 = v26 + *(v63 + 36);
          v36 = v26 + *(v63 + 32);
          v65 = sub_10002B0EC();

          v37 = sub_100004CA4();
          v39 = sub_1000DB224(v37, v38);
          v40 = *(v31 + 16);
          if (v39)
          {
            v41 = v36;
          }

          else
          {
            v41 = v35;
          }

          v42 = v40(v33, v41, v30);
          v68 = &v53;
          __chkstk_darwin(v42);
          v43 = &v53 - v67;
          v44 = v73 + *(v34 + 36);
          v45 = v73 + *(v34 + 32);
          sub_10000D048();
          if (dispatch thunk of static Comparable.>= infix(_:_:)())
          {
            v46 = v45;
          }

          else
          {
            v46 = v44;
          }

          v40(v43, v46, v30);
          sub_1000DAEF4();
          v47 = static Date.< infix(_:_:)();
          v48 = *(v66 + 8);
          v49 = sub_10000CDA4();
          v48(v49);
          (v48)(v33, v30);
          v50 = sub_1000DB0D4();
          sub_100019338(v50);
          sub_100019338(v72);

          if ((v47 & 1) == 0)
          {
            break;
          }

          v51 = *v21;
          v22 = v21[1];
          *v21 = v22;
          v21[1] = v51;
          --v21;
        }

        while (!__CFADD__(v64++, 1));
        v20 = v59 + 1;
        v21 = v58 + 1;
        v19 = v60 - 1;
      }

      while (v59 + 1 != v56);
    }
  }

  else
  {
    v11 = v10;
    v12 = v9 >> 1;
    v13 = sub_100065B18(v12);
    v75[0] = v14;
    v75[1] = v12;
    sub_1000D8A7C(v75, &v74, v76, v11, v15, v16, v17, v18, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  specialized ContiguousArray._endMutation()();
  sub_100005874();
}

uint64_t sub_10002B030()
{
}

uint64_t sub_10002B050(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;

  return sub_100028248(sub_1000DAB5C, a1, v1);
}

unint64_t sub_10002B0EC()
{
  result = qword_1001BB418;
  if (!qword_1001BB418)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB418);
  }

  return result;
}

void sub_10002B170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_10000355C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if ((v30 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    v38 = sub_100005B00();
    type metadata accessor for InferenceProviderAsset(v38);
    sub_10000CCB4();
    sub_10005FAF0(v39, v40, &unk_1001720DC);
    sub_100011A70();
    Set.Iterator.init(_cocoa:)();
    v31 = a14;
    if (!v35)
    {
      goto LABEL_26;
    }
  }

  else
  {
    a17 = 0;
    sub_100011E24();
    a15 = v31 + 56;
    a16 = ~v51;
    v52 = -v51;
    if (v52 < 64)
    {
      v53 = ~(v50 << v52);
    }

    else
    {
      v53 = v50;
    }

    a18 = v53 & *(v31 + 56);
    if (!v35)
    {
      goto LABEL_26;
    }
  }

  if (!v33)
  {
LABEL_26:
    *v37 = v31;
    v37[1] = a15;
    v37[2] = a16;
    v37[3] = a17;
    v37[4] = a18;
    sub_100005F10();
    return;
  }

  if ((v33 & 0x8000000000000000) == 0)
  {
    v54 = a16;
    v55 = v37;
    v45 = 0;
    v46 = (a16 + 64) >> 6;
    while (1)
    {
      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v31 < 0)
      {
        if (!__CocoaSet.Iterator.next()() || (type metadata accessor for InferenceProviderAsset(0), sub_1000358A4(), swift_dynamicCast(), (v49 = a13) == 0))
        {
LABEL_25:
          a16 = v54;
          v37 = v55;
          goto LABEL_26;
        }
      }

      else
      {
        if (!a18)
        {
          while (1)
          {
            v48 = a17 + 1;
            if (__OFADD__(a17, 1))
            {
              break;
            }

            if (v48 >= v46)
            {
              a18 = 0;
              goto LABEL_25;
            }

            a18 = *(a15 + 8 * v48);
            ++a17;
            if (a18)
            {
              a17 = v48;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        sub_100011268();

        if (!v49)
        {
          goto LABEL_25;
        }
      }

      *v35++ = v49;
      ++v45;
      if (v47 == v33)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10002B334()
{
  v3 = v0 + *(*(v1 + 240) + 20);
  v4 = *(v1 + 232);

  return sub_100116D68(v3, v4);
}

void *sub_10002B370(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v7 = sub_100002F04(v6);
  __chkstk_darwin(v7);
  sub_100002B8C();
  v10 = v9 - v8;
  v18 = _swiftEmptyArrayStorage;
  result = sub_10000E8DC(a4);
  v12 = result;
  v13 = 0;
  v16 = v10;
  while (1)
  {
    if (v12 == v13)
    {
      return v18;
    }

    if ((a4 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = result;
    }

    else
    {
      if (v13 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v14 = *(a4 + 8 * v13 + 32);
    }

    if (__OFADD__(v13, 1))
    {
      break;
    }

    v15 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v14, v17);
    sub_10001938C(v15 + v14, v10);
    LOBYTE(v15) = a2(v10);
    sub_1000193F0(v10);
    if (v15)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v10 = v16;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v13;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_10002B524()
{
  sub_1000055B0();
  v2 = sub_1000494E8();
  v29 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(v2);
  sub_100002C00();
  __chkstk_darwin(v3);
  sub_100002B8C();
  v28 = v5 - v4;
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      v26 = v1;
      v25 = v0;
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      v6 = sub_100005B00();
      type metadata accessor for InferenceProviderAsset(v6);
      sub_1000056C4();
      sub_100011B14(v7, v8, &unk_1001720DC);
      sub_100036724();
      Set.Iterator.init(_cocoa:)();
      v1 = v30[4];
      v27 = v30[5];
      v9 = v30[6];
      v10 = v30[7];
      v11 = v30[8];
      goto LABEL_6;
    }

    goto LABEL_25;
  }

  if (!*(v1 + 16))
  {
LABEL_25:
    sub_100002EEC();
    return;
  }

  v25 = v0;
  sub_100011E24();
  v27 = v1 + 56;
  v9 = ~v12;
  sub_10000A5E8();
  v11 = v13 & v14;

  v10 = 0;
  v26 = v1;
  while (1)
  {
LABEL_6:
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for InferenceProviderAsset(0), sub_1000358A4(), swift_dynamicCast(), v0 = v30[0], v18 = v11, !v30[0]))
      {
LABEL_24:
        sub_100019334(v1);
        sub_100011CBC(v26);
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v15 = v10;
    if (!v11)
    {
      break;
    }

LABEL_11:
    sub_1000062A0();
    v18 = v17 & v16;
    sub_10004D404();
    if (!v0)
    {
      goto LABEL_24;
    }

LABEL_15:
    v19 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    v11 = v18;
    sub_1000192DC(v19 + v0, v28);
    v20 = *(*(v28 + *(v29 + 40)) + 16);
    sub_100019338(v28);

    if (v20)
    {
      sub_100019334(v1);
      v21 = v26;
      v30[0] = v26;

      while ((sub_1000453EC(v21) & 1) == 0)
      {

        v23 = sub_100058460(v22, v30, v25);

        if (!v23)
        {
          goto LABEL_28;
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v24 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v24 >> 1)
        {
          sub_1000127D4(v24);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        sub_1000588F0(v23);
        sub_100042D9C();

        v21 = v30[0];
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v10 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v10 >= ((v9 + 64) >> 6))
    {
      goto LABEL_24;
    }

    ++v15;
    if (*(v27 + 8 * v10))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_10002B8AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date();
  type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  sub_10002B0EC();
  return dispatch thunk of static Comparable.<= infix(_:_:)() & 1;
}

void sub_10002B918(uint64_t a1)
{
  sub_10000E8DC(a1);
  v5 = type metadata accessor for InferenceProviderAsset(0);
  sub_1000059C0();
  sub_10000814C(v6, v7, &unk_1001720DC);
  sub_100012484();
  v9[1] = Set.init(minimumCapacity:)();
  sub_10000E8DC(a1);
  sub_10001D2F0();
  while (1)
  {
    if (v5 == v1)
    {

      return;
    }

    if (v2)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_11;
      }

      v8 = *(a1 + 8 * v1 + 32);
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    sub_10001A264(v9, v8);

    ++v1;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

BOOL sub_10002BA24(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10002BA5C()
{
  sub_100002BAC();
  *(v1 + 256) = v2;
  *(v1 + 264) = v0;
  *(v1 + 520) = v3;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  v6 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  *(v1 + 272) = v6;
  sub_100002F04(v6);
  *(v1 + 280) = sub_100002C58();
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

uint64_t sub_10002C278(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100065020(a2, a3);
  sub_100006098();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10002C2D4()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v2 + 288) = v0;

  if (v0)
  {
    v6 = sub_10011890C;
  }

  else
  {

    v6 = sub_10002C410;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10002C410()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  v3 = sub_10000205C();
  if (sub_10000C6C0(v3, v4, v2) == 1)
  {
    sub_10002C278(v1, &qword_1001BBA80, &qword_100172440);

    *(v0 + 145) = 1;

    if (qword_1001B8A78 != -1)
    {
      sub_10000877C(&qword_1001B8A78);
    }

    v5 = type metadata accessor for Logger();
    sub_100002FD0(v5, qword_1001BCD78);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (sub_100002F80(v7))
    {
      v8 = sub_100007648();
      sub_10000A240(v8);
      sub_100003DD0();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      sub_100002F64();
    }

    sub_100004C24();
    Strong = swift_weakLoadStrong();
    *(v0 + 336) = Strong;
    if (!Strong)
    {
      sub_100005CE0();
      os_activity_scope_leave((v6 + 24));
      swift_endAccess();

      sub_100001F00();
      sub_10000A7FC();

      __asm { BRAA            X1, X16 }
    }

    sub_10000A7FC();

    return _swift_task_switch(v15, v16, v17);
  }

  else
  {
    v19 = *(v0 + 240);
    v20 = *(v0 + 192);
    (*(v19 + 32))(*(v0 + 256), v1, v2);

    static ContinuousClock.Instant.now.getter();
    v21 = swift_task_alloc();
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v22 = *(v19 + 8);
    *(v0 + 296) = v22;
    *(v0 + 304) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v21, v2);

    static Duration.seconds(_:)();
    ContinuousClock.Instant.advanced(by:)();
    *(v0 + 312) = *(v20 + 8);
    *(v0 + 320) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23 = sub_100003754();
    v24(v23);
    *(v0 + 128) = xmmword_1001723E0;
    *(v0 + 144) = 0;
    static Clock<>.continuous.getter();
    v25 = swift_task_alloc();
    *(v0 + 328) = v25;
    sub_10002C7C4(&qword_1001BBA88, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    *v25 = v0;
    v25[1] = sub_1000106D8;
    sub_10000A7FC();

    return static Task<>.sleep<A>(until:tolerance:clock:)();
  }
}

uint64_t sub_10002C7C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002C80C(__int128 a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = *(&a1 + 1);
  v11 = a1;
  if ((a3 & 1) == 0)
  {
LABEL_7:
    if (a2)
    {
      if (a2 != *(a6 + 16))
      {
        if (!__OFADD__(a2, a4))
        {
          sub_1000190BC(_swiftEmptyArrayStorage);
          sub_10004578C();
          v16 = v28;
          v39 = v29;
          if (v10 <= 0)
          {
            v17 = 0;
          }

          else
          {
            v17 = *v11;
          }

          v35 = v11;
          v36 = v10;
          v37 = 0;
          v38 = v17;
          while (1)
          {
            for (i = v16; ; i = 0)
            {
              *&a1 = _UnsafeBitSet.Iterator.next()();
              if (BYTE8(a1))
              {

                goto LABEL_44;
              }

              if ((a1 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_46:
                __break(1u);
                goto LABEL_47;
              }

              if (a1 >= *(a6 + 16))
              {
                goto LABEL_46;
              }

              swift_retain_n();
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v19 = v39;
              v20 = *(v39 + 16);
              if (i)
              {
                break;
              }

              if (v20 > 0xF)
              {
                goto LABEL_33;
              }
            }

            sub_100004CBC();
            swift_beginAccess();
            if (static _HashTable.maximumCapacity(forScale:)() < v20)
            {
              v16 = *(i + 24) & 0x3FLL;
              if (v20 > 0xF || v16)
              {
LABEL_33:
                static _HashTable.scale(forCapacity:)();
                v16 = sub_100141B14(v19);
              }

              continue;
            }

            *&a1 = swift_isUniquelyReferenced_native();
            if ((a1 & 1) == 0)
            {
              if (!v16)
              {
                goto LABEL_53;
              }

              _HashTable.copy()();
              sub_10000D0E8();

              v16 = v20;
            }

            if (!v16)
            {
              goto LABEL_52;
            }

            Hasher.init(_seed:)();

            sub_10001214C(&v28);
            *&a1 = Hasher._finalize()();
            v21 = 1 << *(v16 + 16);
            v15 = __OFSUB__(v21, 1);
            v22 = v21 - 1;
            if (v15)
            {
              goto LABEL_51;
            }

            v23 = v22 & a1;
            sub_10014B41C();
            v24 = _HashTable.UnsafeHandle._startIterator(bucket:)();
            v28 = v16 + 16;
            v29 = v16 + 32;
            v30 = v23;
            v31 = v24;
            v32 = v25;
            v33 = v26;
            v34 = 0;
            while (v31)
            {
              _HashTable.BucketIterator.advance()();
            }

            _HashTable.BucketIterator.currentValue.setter();
          }
        }

        goto LABEL_48;
      }

      if (a5)
      {
        sub_100004CBC();
        swift_beginAccess();
        *&a1 = static _HashTable.maximumCapacity(forScale:)();
      }

      else
      {
        *&a1 = 15;
      }

      if (__OFSUB__(a1, a2))
      {
        goto LABEL_49;
      }

      if (a1 - a2 < a4)
      {
        v35 = a5;
        v36 = a6;
        *&a1 = a2 + a4;
        if (__OFADD__(a2, a4))
        {
          goto LABEL_50;
        }

        sub_1001484C4(a1, 0, sub_100142578);
      }

LABEL_44:
      *&a1 = sub_1000DAE34();
      return a1;
    }

LABEL_11:
    sub_1000190BC(_swiftEmptyArrayStorage);
    sub_10004578C();

    goto LABEL_44;
  }

  if (!a1 || !*(&a1 + 1))
  {
    goto LABEL_11;
  }

  a2 = 0;
  v12 = 8 * *(&a1 + 1);
  v13 = a1;
  while (1)
  {
    v14 = vcnt_s8(*v13);
    v14.i16[0] = vaddlv_u8(v14);
    v15 = __OFADD__(a2, v14.u32[0]);
    a2 += v14.u32[0];
    if (v15)
    {
      break;
    }

    ++v13;
    v12 -= 8;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return a1;
}

uint64_t sub_10002CB9C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10002CBE0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    sub_100011D90(result, a2);
  }

  return result;
}

uint64_t sub_10002CC20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002CC90(unint64_t a1)
{
  v5 = variable initialization expression of InferenceProviderManager.updatesReceived();
  v6 = sub_10002D020(&v32, a1, 0, 1, v5);
  v7 = sub_10000E8DC(a1);
  v8 = v32;
  if (v32 == v7)
  {
    sub_10002CF8C(a1);
    return v6;
  }

  if (v32 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v1 = v7;
  sub_10010C3D8(0, a1);
  sub_10010C3D8(v8, a1);
  v3 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v8)
  {
    type metadata accessor for InferenceProviderAsset(0);

    v9 = 0;
    do
    {
      v10 = v9 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v9);
      v9 = v10;
    }

    while (v8 != v10);
  }

  else
  {
  }

  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_14:

    v12 = _CocoaArrayWrapper.subscript.getter();
    v13 = v16;
    i = v17;
    v14 = v18;
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  i = 0;
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  v13 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v14 = (2 * v8) | 1;
LABEL_15:
  v30 = v3;
  v31 = v2;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];

  if (__OFSUB__(v14 >> 1, i))
  {
    goto LABEL_36;
  }

  if (v20 != (v14 >> 1) - i)
  {
    goto LABEL_37;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v3 = v30;
  if (i)
  {
    goto LABEL_22;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v15)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v33 = v6;
    v34 = i;
    if (v1 < v8)
    {
      __break(1u);
      goto LABEL_35;
    }

    sub_10010C3D8(v1, a1);
    if (!v3)
    {

      goto LABEL_29;
    }

    if (v8 < v1)
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_unknownObjectRelease();
    v3 = v30;
    v2 = v31;
LABEL_12:
    sub_10010A754(v12, v13, i, v14);
  }

  type metadata accessor for InferenceProviderAsset(0);

  v21 = v8;
  do
  {
    v22 = v21 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v21);
    v21 = v22;
  }

  while (v1 != v22);
LABEL_29:

  if (v2)
  {
    v23 = _CocoaArrayWrapper.subscript.getter();
    v24 = v26;
    v8 = v27;
    v25 = v28;
  }

  else
  {
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = (2 * v1) | 1;
  }

  sub_10010A8CC(v23, v24, v8, v25);
  swift_unknownObjectRelease();

  return v33;
}

void *sub_10002CF8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      v4 = v3;
      v1 = sub_1000106D0();
      sub_100149310();
      v6 = v5;

      if (v6 == v4)
      {
        return v1;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_10002D020(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_10000E8DC(a2);
  if (a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  v11 = static _HashTable.scale(forCapacity:)();
  if (v11 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = v12;
  }

  if (v13 > 4)
  {
    v15 = _HashTable.init(scale:reservedScale:)();
    sub_10010B2E8(&v17, a2, (v15 + 16), v15 + 32);
    *a1 = v17;
  }

  else
  {
    if (sub_10000E8DC(a2) >= 2)
    {
      if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
      {
        v14 = sub_10010C120(a2, sub_10010C430);
      }

      else
      {
        v14 = sub_10002D12C((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      }
    }

    else
    {
      v14 = sub_10000E8DC(a2);
    }

    v15 = 0;
    *a1 = v14;
  }

  return v15;
}

uint64_t sub_10002D12C(uint64_t a1, uint64_t a2)
{
  v10 = sub_10002D24C(_swiftEmptyArrayStorage);
  result = specialized ContiguousArray.reserveCapacity(_:)();
  for (i = 0; ; ++i)
  {
    if (i == a2)
    {
LABEL_9:

      return a2;
    }

    if (a2 < 0)
    {
      break;
    }

    v6 = *(a1 + 8 * i);
    v7 = v10[2];

    v8 = 4;
    while (v7)
    {
      type metadata accessor for InferenceProviderAsset(0);
      v9 = sub_100019CE4(v6, v10[v8++]);
      --v7;
      if (v9)
      {

        a2 = i;
        goto LABEL_9;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
  }

  __break(1u);
  return result;
}

uint64_t sub_10002D264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    __chkstk_darwin(a1);
    v9 = 0;
    v10 = 0;
    __chkstk_darwin((v3 + 63) >> 6);
    static _UnsafeBitSet._withTemporaryBitSet(wordCount:run:)();
  }

  else
  {
    if (!(_swiftEmptyArrayStorage >> 62) || (v5 = _CocoaArrayWrapper.endIndex.getter()) == 0 || (v6 = v5, sub_1000106D0(), sub_100149310(), v8 = v7, , v8 == v6))
    {

      return 0;
    }

    __break(1u);
  }

  __break(1u);

  result = sub_10002CB9C(v9, v10);
  __break(1u);
  return result;
}

uint64_t sub_10002D450@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_10002D4FC(a1, a2, a3, *a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

void *sub_10002D4A0(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = (a3)(&v8, a1);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return sub_10002CBE0(v6, v7);
  }

  return result;
}

uint64_t sub_10002D4FC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  _UnsafeBitSet.insertAll(upTo:)(v6);
  v7 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_10002C7C4(&qword_1001B94B0, type metadata accessor for InferenceProviderAsset, &unk_1001720DC);
    Set.Iterator.init(_cocoa:)();
    v7 = v36;
    v8 = v37;
    v9 = v38;
    v10 = v39;
    v11 = v40;
  }

  else
  {
    v12 = -1 << *(a4 + 32);
    v8 = a4 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a4 + 56);

    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  v30 = v6;
  v34 = a2;
  for (i = v7; ; v7 = i)
  {
    v16 = v11;
    if ((v7 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!__CocoaSet.Iterator.next()())
    {
      a2 = v34;
LABEL_28:
      sub_100019334(v7);
      v26 = *a1;
      v27 = a1[1];
      v28 = variable initialization expression of InferenceProviderManager.updatesReceived();

      *&v42 = v26;
      *(&v42 + 1) = v27;
      return sub_10002C80C(v42, v30, 0, v28, a2, a3);
    }

    type metadata accessor for InferenceProviderAsset(0);
    swift_dynamicCast();
    v19 = v41;
    v35 = v16;
    a2 = v34;
    if (!v41)
    {
      goto LABEL_28;
    }

LABEL_17:
    if (a2)
    {

      sub_100143334();
      j = v20;
      v23 = v22;

      if ((v23 & 1) == 0 && (j & 0x8000000000000000) == 0)
      {
LABEL_20:
        if (_UnsafeBitSet.remove(_:)(j))
        {
          if (v30 == 1)
          {
            goto LABEL_31;
          }

          --v30;
        }
      }
    }

    else
    {
      for (j = 0; v6 != j; ++j)
      {
        type metadata accessor for InferenceProviderAsset(0);

        v25 = sub_100019CE4(v24, v19);

        if (v25)
        {
          goto LABEL_20;
        }
      }
    }

    a2 = v34;
    v11 = v35;
  }

  v17 = v10;
  v18 = v11;
  if (v11)
  {
LABEL_13:
    v35 = (v18 - 1) & v18;
    v19 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v19)
    {
      goto LABEL_28;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_28;
    }

    v18 = *(v8 + 8 * v10);
    ++v17;
    if (v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_31:
  sub_10002D24C(_swiftEmptyArrayStorage);

  sub_100019334(i);
  return 0;
}

BOOL sub_10002D88C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + a1;
  sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + a1, v7);
  v2 = *&v1[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 40)];

  v3 = InferenceProviderAssetDescriptor.identifier.getter();
  v5 = sub_10000A130(v3, v4, v2);

  return v5;
}

void sub_10002D928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000055B0();
  v70 = v27;
  v71 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v67 = a26;
  v68 = v39;
  v69 = a25;
  v40 = a23;
  v41 = a22;
  v42 = a21;
  if (sub_1000136A8())
  {
    v43 = sub_100065020(&qword_1001BD070, &qword_100173948);
    v58 = &v54;
    sub_100002F04(v43);
    sub_100004B1C();
    __chkstk_darwin(v44);
    v55 = &v54 - v45;
    v46 = sub_100003370((v26 + 40), *(v26 + 64));
    v56 = &v54;
    __chkstk_darwin(v46);
    v61 = v26;
    v62 = v38;
    *(&v54 - 14) = v26;
    *(&v54 - 13) = v38;
    v63 = v36;
    v64 = v34;
    *(&v54 - 12) = v36;
    *(&v54 - 11) = v34;
    v65 = v32;
    v66 = v30;
    *(&v54 - 10) = v32;
    *(&v54 - 9) = a24;
    *(&v54 - 8) = v69;
    *(&v54 - 7) = a22;
    v49 = a23;
    v50 = v71;
    LOBYTE(v51) = a21 & 1;
    v52 = v70;
    v53 = v30;
    v47 = v55;
    sub_1000084CC();
    sub_1000030E4();
    v60 = a22;
    HIDWORD(v59) = a21;
    v57 = a23;
    if (a21)
    {
    }

    v48 = sub_1000128AC();
    sub_10000A6F0(v48);
    sub_10000ECD8(v47, &qword_1001BD070, &qword_100173948);
    v40 = v57;
    v32 = v65;
    v30 = v66;
    v36 = v63;
    v34 = v64;
    v38 = v62;
    v41 = v60;
    v42 = BYTE4(v59);
  }

  LOBYTE(v49) = v42 & 1;
  sub_10002F77C(v68, v38, v36, v34, v32, v70, v30, v71, v49, v41, v40, a24, v69, v67, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  sub_100002EEC();
}

uint64_t sub_10002DB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v33 = a8;
  v32 = a7;
  v31 = a6;
  v30 = a5;
  v50 = a14;
  v36 = a13;
  v35 = a12;
  v34 = a11;
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v17 = sub_100065020(&qword_1001BD078, &qword_100173950);
  __chkstk_darwin(v17 - 8);
  v19 = &v30 - v18;
  v20 = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.start(_:);
  v21 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  sub_100009BFC(v19, 0, 1, v21);
  GenerativeFunctionsInstrumentationEvent.subtype.setter();
  v22 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  __chkstk_darwin(v22);
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = v30;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v48 = a9;
  v49 = a10;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v23 = sub_100065020(&qword_1001BD090, &qword_100173970);
  __chkstk_darwin(v23 - 8);
  v25 = (&v30 - v24);
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition();
  v26 = swift_allocBox();
  v37 = v34;
  v38 = v35 & 1;
  v39 = v36;
  v40 = v50;
  static Buildable.with(_:)();
  *v25 = v26;
  v27 = enum case for GenerativeFunctionsInstrumentationMetadata.assetTransition(_:);
  v28 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  (*(*(v28 - 8) + 104))(v25, v27, v28);
  sub_100009BFC(v25, 0, 1, v28);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t sub_10002DEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a8;
  v44 = a1;
  v45 = a7;
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v53 = a10;
  v48 = a9;
  v11 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  v14 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v39 = &v39 - v15;
  v16 = sub_100065020(&qword_1001BB410, &unk_100172340);
  __chkstk_darwin(v16 - 8);
  v18 = &v39 - v17;
  v19 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v39 - v21;
  v23 = sub_100065020(&qword_1001BD088, &qword_100173968);
  __chkstk_darwin(v23 - 8);
  v25 = &v39 - v24;
  v26 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
  v49 = a3;
  v50 = v41;
  v51 = v42;
  v52 = v43;
  v27 = v46;
  static Buildable.with(_:)();
  v46 = v27;
  sub_100009BFC(v25, 0, 1, v26);
  GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.setter();
  sub_10002E90C(v45, v18, &qword_1001BB410, &unk_100172340);
  if (sub_10000C6C0(v18, 1, v19) == 1)
  {
    sub_10000ECD8(v18, &qword_1001BB410, &unk_100172340);
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    v28 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
    __chkstk_darwin(v28 - 8);
    v30 = &v39 - v29;
    UUIDIdentifier.uuid.getter();
    v31 = type metadata accessor for UUID();
    sub_100009BFC(v30, 0, 1, v31);
    GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter();
    (*(v20 + 8))(v22, v19);
  }

  sub_10002E90C(v47, v13, &qword_1001BB408, &unk_100171DC0);
  if (sub_10000C6C0(v13, 1, v14) == 1)
  {
    sub_10000ECD8(v13, &qword_1001BB408, &unk_100171DC0);
  }

  else
  {
    v33 = v39;
    v32 = v40;
    (*(v40 + 32))(v39, v13, v14);
    v34 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
    __chkstk_darwin(v34 - 8);
    v36 = &v39 - v35;
    UUIDIdentifier.uuid.getter();
    v37 = type metadata accessor for UUID();
    sub_100009BFC(v36, 0, 1, v37);
    GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter();
    (*(v32 + 8))(v33, v14);
  }

  return GenerativeFunctionsInstrumentationEvent.Identifiers.inferenceProviderIdentifier.setter();
}

uint64_t sub_10002E41C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100065020(&qword_1001BD0B0, &qword_100173990);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  sub_10002E5C8(a2, a3 & 1, (&v15 - v6));
  v8 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason();
  sub_100009BFC(v7, 0, 1, v8);
  GenerativeFunctionsInstrumentationMetadata.AssetTransition.reason.setter();
  v9 = sub_100065020(&qword_1001BD0B8, &qword_100173998);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_10002E72C((&v15 - v11));
  State = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState();
  sub_100009BFC(&v15 - v11, 0, 1, State);
  v13 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.fromState.setter();
  __chkstk_darwin(v13);
  sub_10002E72C((&v15 - v11));
  sub_100009BFC(&v15 - v11, 0, 1, State);
  return GenerativeFunctionsInstrumentationMetadata.AssetTransition.toState.setter();
}

uint64_t sub_10002E5C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason();
    sub_100002C00();
    v6 = *(v5 + 104);
    v8 = v7;
    switch(a1)
    {
      case 1:
        v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.userInitiated(_:);
        break;
      case 2:
        v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.policyChange(_:);
        break;
      case 3:
        v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.memoryBudgetPressure(_:);
        break;
      case 4:
        v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.assetVersionChange(_:);
        break;
      case 5:
        v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.policyChangeCriticalMemory(_:);
        break;
      case 6:
        v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.purgeInactiveAssets(_:);
        break;
      case 7:
        v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.policyChangeBackgroundSession(_:);
        break;
      case 8:
        v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.acquisitionError(_:);
        break;
      case 9:
        v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.connectionTermination(_:);
        break;
      default:
        v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.prewarm(_:);
        break;
    }

    v14 = *v9;
    v13 = a3;
  }

  else
  {
    *a3 = a1;
    v10 = enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.unknown(_:);
    type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason();
    sub_100002C00();
    v6 = *(v11 + 104);
    v8 = v12;
    v13 = a3;
    v14 = v10;
  }

  return v6(v13, v14, v8);
}

uint64_t sub_10002E72C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  State = type metadata accessor for LoadState();
  v5 = *(State - 8);
  __chkstk_darwin(State);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, State);
  v8 = (*(v5 + 88))(v7, State);
  if (v8 == enum case for LoadState.unloaded(_:))
  {
    v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.unloaded(_:);
  }

  else if (v8 == enum case for LoadState.dynamicMode(_:))
  {
    v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.dynamicMode(_:);
  }

  else
  {
    if (v8 != enum case for LoadState.loaded(_:))
    {
      *a1 = 0;
      v13 = enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.unknown(_:);
      type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState();
      sub_100002C00();
      (*(v14 + 104))(a1, v13);
      return (*(v5 + 8))(v7, State);
    }

    v9 = &enum case for GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState.loaded(_:);
  }

  v10 = *v9;
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.LoadState();
  sub_100002C00();
  return (*(v11 + 104))(a1, v10);
}

uint64_t sub_10002E90C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100065020(a3, a4);
  sub_100002C00();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10002E96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100009C8C(a1, a2, a3);
  v7 = sub_100065020(v5, v6);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_10002E9D0()
{
  result = qword_1001B8F58;
  if (!qword_1001B8F58)
  {
    sub_10006A614(&qword_1001B8F48, &qword_10016FB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8F58);
  }

  return result;
}

uint64_t sub_10002EA34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002EA7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002EAC4()
{
}

uint64_t sub_10002EB0C()
{
  sub_100001ED0();
  sub_1000135C4();
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v4[1] = sub_10006FA64;

  return sub_10002EBA8(v2, v1, v0);
}

uint64_t sub_10002EBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  sub_100065020(&qword_1001BA488, &qword_100170FE8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for RequestPriority();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100030D90, a2, 0);
}

Class sub_10002ECE0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v10 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100002D24();
  swift_beginAccess();
  sub_1000332D4(v10 + v4, v4, a2, a3 & 1, a4, a1, &v12);
  result = swift_endAccess();
  if (!v5)
  {
    return v12.isa;
  }

  return result;
}

uint64_t sub_10002ED80()
{

  return sub_1000192DC(v2 + v0, v1);
}

uint64_t sub_10002ED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v17;
  *(v8 + 364) = a7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 32) = a4;
  v9 = type metadata accessor for InferenceError();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  v10 = type metadata accessor for AssetCost();
  *(v8 + 96) = v10;
  *(v8 + 104) = *(v10 - 8);
  *(v8 + 112) = swift_task_alloc();
  v11 = type metadata accessor for ModelManagerError();
  *(v8 + 120) = v11;
  *(v8 + 128) = *(v11 - 8);
  *(v8 + 136) = swift_task_alloc();
  sub_100065020(&qword_1001BB408, &unk_100171DC0);
  *(v8 + 144) = swift_task_alloc();
  sub_100065020(&qword_1001BB410, &unk_100172340);
  *(v8 + 152) = swift_task_alloc();
  v12 = type metadata accessor for InferenceProviderDescriptor();
  *(v8 + 160) = v12;
  *(v8 + 168) = *(v12 - 8);
  *(v8 + 176) = swift_task_alloc();
  State = type metadata accessor for LoadState();
  *(v8 + 184) = State;
  *(v8 + 192) = *(State - 8);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  v14 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  *(v8 + 216) = v14;
  *(v8 + 224) = *(v14 - 8);
  *(v8 + 232) = swift_task_alloc();

  return (_swift_task_switch)(sub_10002F0C0, 0);
}

uint64_t sub_10002F0C0()
{
  v89 = *(v0 + 232);
  v1 = *(v0 + 208);
  v87 = *(v0 + 216);
  v80 = v1;
  v2 = *(v0 + 192);
  v91 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v84 = *(v0 + 160);
  v86 = *(v0 + 152);
  v88 = *(v0 + 144);
  v90 = *(v0 + 364);
  v96 = *(v0 + 48);
  v5 = *(v0 + 32);
  v92 = *(v0 + 56);
  v94 = *(v0 + 40);
  type metadata accessor for RequestMetadata();
  UUIDIdentifier.init()();
  v6 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager;
  *(v0 + 240) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager;
  v7 = *(v5 + v6 + 32);
  v85 = *(v5 + v6 + 24);
  sub_100003370((v5 + v6), v85);
  v8 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
  *(v0 + 248) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
  v9 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
  v82 = v10;
  v83 = v9;
  v99 = v8;
  v81 = InferenceProviderAssetDescriptor.version.getter(v9, v10, v11, v12, v13, v14, v15, v16, v74, v76, v77, v78);
  v18 = v17;
  LODWORD(v17) = enum case for LoadState.unloaded(_:);
  *(v0 + 360) = enum case for LoadState.unloaded(_:);
  v19 = *(v2 + 104);
  *(v0 + 256) = v19;
  *(v0 + 264) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v98 = v17;
  v97 = v19;
  v19(v1);
  v20 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection;
  *(v0 + 272) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection;
  v100 = v5;
  v21 = (v5 + v20);
  v22 = v21[3];
  v23 = v21[4];
  v24 = sub_100003754();
  sub_100003370(v24, v25);
  sub_100003048();
  v26(v22, v23);
  v27 = InferenceProviderDescriptor.id.getter();
  v29 = v28;
  v30 = *(v3 + 8);
  *(v0 + 280) = v30;
  *(v0 + 288) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v79 = v30;
  v30(v4, v84);
  sub_100003978();
  sub_100009BFC(v31, v32, v33, v87);
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100003978();
  sub_100009BFC(v34, v35, v36, v37);
  LOBYTE(v75) = v90 & 1;
  *(v0 + 296) = (*(v7 + 40))(v89, v83, v82, v81, v18, v94, v80, v96, v75, v27, v29, v86, v88, v92, v85, v7);

  sub_10000ECD8(v88, &qword_1001BB408, &unk_100171DC0);
  sub_10000ECD8(v86, &qword_1001BB410, &unk_100172340);
  v38 = *(v2 + 8);
  *(v0 + 304) = v38;
  *(v0 + 312) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v80, v91);
  if (qword_1001B8938 != -1)
  {
    sub_100005C90();
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  *(v0 + 320) = sub_10000641C(v39, qword_1001BB478);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = *(v0 + 176);
    v95 = *(v0 + 160);
    v43 = sub_1000267F8();
    sub_1000080A4();
    *v43 = 136315394;
    v44 = type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100005168();
    sub_100011B5C(v45, v46, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v93 = v41;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_10001127C(v47, v48);
    sub_100013E7C();

    *(v43 + 4) = v44;
    *(v43 + 12) = 2080;
    v50 = v21[3];
    v49 = v21[4];
    sub_100003370(v21, v50);
    (*(v49 + 8))(v50, v49);
    sub_10000866C();
    sub_100011B5C(v51, v52, &protocol conformance descriptor for InferenceProviderDescriptor);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v79(v42, v95);
    v56 = sub_10001993C();
    sub_100004A3C(v56, v55, v57);
    sub_100005974();
    v58 = v99;
    v59 = v100;

    *(v43 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v40, v93, "Unloading asset %s from %s", v43, 0x16u);
    sub_10000BEE8(v60, v61, (&type metadata for Any + 1));
    sub_100002BD0();

    sub_100002BD0();
  }

  else
  {

    v58 = v99;
    v59 = v100;
  }

  v62 = *(v0 + 184);
  v63 = v21[3];
  v64 = v21[4];
  v65 = sub_100002CBC();
  sub_100003370(v65, v66);
  v67 = sub_10001E4A8();
  v97(v67, v98, v62);
  sub_100004B94();
  v101 = (v68 + *v68);
  v69 = swift_task_alloc();
  *(v0 + 328) = v69;
  *v69 = v0;
  v69[1] = sub_100039628;
  v70 = *(v0 + 232);
  v71 = *(v0 + 200);
  v72 = *(v0 + 40);

  return v101(v59 + v58, v71, v72, v70, v63, v64);
}

uint64_t sub_10002F6B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000CBE4(a1, a2, a3, a4);
  sub_100002C00();
  v5 = sub_1000062B0();
  v6(v5);
  return v4;
}

void sub_10002F77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1000055B0();
  v26 = v25;
  v124 = v27;
  v141 = v28;
  v142 = v29;
  v31 = v30;
  v126 = v32;
  v146 = v33;
  v125 = v34;
  v140 = v35;
  sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100004B1C();
  __chkstk_darwin(v36);
  v38 = &v121 - v37;
  sub_10002E96C(a24, &v121 - v37, &qword_1001BB410);
  v39 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  if (sub_10000C6C0(v38, 1, v39) == 1)
  {
    sub_10000ED30(v38, &qword_1001BB410, &unk_100172340);
    v128 = 0;
    v144 = 0xE000000000000000;
  }

  else
  {
    v128 = UUIDIdentifier.uuidString.getter();
    v144 = v40;
    (*(*(v39 - 8) + 8))(v38, v39);
  }

  sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100004B1C();
  __chkstk_darwin(v41);
  v43 = &v121 - v42;
  sub_10002E96C(a25, &v121 - v42, &qword_1001BB408);
  v44 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v45 = sub_10000C6C0(v43, 1, v44);
  v145 = a23;
  v147 = v31;
  if (v45 == 1)
  {
    sub_10000ED30(v43, &qword_1001BB408, &unk_100171DC0);
    v127 = 0;
    v148 = 0xE000000000000000;
  }

  else
  {
    v127 = UUIDIdentifier.uuidString.getter();
    v148 = v46;
    (*(*(v44 - 8) + 8))(v43, v44);
  }

  v138 = OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_signPoster;
  v143 = *(&v26->isa + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_assetTransitionPostString);
  v129 = *(&v26[2].isa + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_assetTransitionPostString);
  v136 = type metadata accessor for OSSignpostID();
  v137 = &v121;
  sub_100002BDC();
  v135 = v47;
  __chkstk_darwin(v48);
  v134 = v49;
  sub_100002D4C();
  OSSignposter.logHandle.getter();
  v130 = a23;
  v50 = OSSignpostID.init(log:)();
  v133 = &v121;
  __chkstk_darwin(v50);
  sub_100002B8C();
  v53 = v52 - v51;
  v139 = v54;
  (*(v54 + 16))(v52 - v51, v140, v39);
  State = type metadata accessor for LoadState();
  v131 = v39;
  v132 = &v121;
  sub_100002BDC();
  v140 = v26;
  v57 = v56;
  v59 = *(v58 + 64);
  __chkstk_darwin(v60);
  v61 = &v121 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(v57 + 16);
  v63 = v62(v61, v141, State);
  v141 = &v121;
  __chkstk_darwin(v63);
  v62(v61, v142, State);
  sub_100018380();

  v64 = sub_100013554();
  v67 = sub_100009C8C(v64, v65, v66);
  sub_100016484(v67, v68);

  v69 = OSSignposter.logHandle.getter();
  LODWORD(v142) = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v73 = *(v57 + 8);
    v73(v61, State);
    v73(v61, State);
    v74 = (*(v139 + 8))(v53, v131);
    v75 = v130;
    goto LABEL_25;
  }

  v122 = v53;
  v138 = v61;
  v123 = v61;
  v140 = v69;
  if (v129)
  {
    v70 = v143;
    if (!HIDWORD(v143))
    {
      sub_100011408();
      if (v76)
      {
        __break(1u);
        goto LABEL_32;
      }

      sub_100005704();
      if (!(!v76 & v77))
      {
        sub_100013D88();
        if (v70 <= 0x7F)
        {
          v78 = v70 + 1;
LABEL_17:
          v149[0] = (v78 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v78) & 0x18)));
          v72 = v146;

          v71 = v147;

          v143 = v149;
          goto LABEL_18;
        }

        goto LABEL_29;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      if (v70 < 0x800)
      {
        v78 = (v70 >> 6) + ((v70 & 0x3F) << 8) + 33217;
        goto LABEL_17;
      }

LABEL_32:
      sub_100013D88();
      goto LABEL_17;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v143)
  {
    __break(1u);
    goto LABEL_27;
  }

  sub_100013D88();
  v72 = v146;
  v71 = v147;
LABEL_18:
  v79 = v122;
  v146 = a22;
  v80 = swift_slowAlloc();
  v147 = swift_slowAlloc();
  v149[0] = v147;
  *v80 = 136448258;
  sub_10002E9D0();
  v81 = v131;
  dispatch thunk of CustomStringConvertible.description.getter();
  v83 = v82;
  (*(v61 + 1))(v79, v81);
  v84 = sub_10002A12C();
  v86 = sub_100004A3C(v84, v83, v85);

  *(v80 + 4) = v86;
  *(v80 + 12) = 2082;
  *(v80 + 14) = sub_100004A3C(v125, v72, v149);
  *(v80 + 22) = 2082;
  if (v71)
  {
    v87 = v71;
  }

  else
  {
    v87 = 0xE300000000000000;
  }

  v88 = sub_10002A12C();
  v90 = sub_100004A3C(v88, v87, v89);

  *(v80 + 24) = v90;
  *(v80 + 32) = 2082;
  sub_10002EA34(&qword_1001BA478, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
  v91 = v138;
  sub_100005FEC();
  dispatch thunk of CustomStringConvertible.description.getter();
  v93 = v92;
  v94 = *(v61 + 1);
  v94(v91, v57);
  v95 = sub_10002A12C();
  v97 = sub_100004A3C(v95, v93, v96);

  *(v80 + 34) = v97;
  *(v80 + 42) = 2082;
  v98 = v123;
  sub_100005FEC();
  v99 = dispatch thunk of CustomStringConvertible.description.getter();
  v101 = v100;
  v94(v98, v57);
  v102 = sub_10002A12C();
  v104 = sub_100004A3C(v102, v101, v103);

  *(v80 + 44) = v104;
  *(v80 + 52) = 2050;
  if (sub_1000136A8())
  {
    v105 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason();
    sub_100002BDC();
    v107 = v106;
    __chkstk_darwin(v108);
    sub_1000086BC();
    sub_10002E5C8(v124, a21 & 1, v99);
    v109 = GenerativeFunctionsInstrumentationMetadata.AssetTransition.Reason.rawValue.getter();
    (*(v107 + 8))(v99, v105);
  }

  else
  {
    v109 = 0;
  }

  v75 = v130;
  *(v80 + 54) = v109;
  *(v80 + 62) = 2082;
  *(v80 + 64) = sub_100004A3C(v146, v145, v149);
  *(v80 + 72) = 2082;
  sub_100004A3C(v128, v144, v149);
  sub_100061AE8();
  *(v80 + 74) = v109;
  *(v80 + 82) = 2082;
  sub_100004A3C(v127, v148, v149);
  sub_100061AE8();
  *(v80 + 84) = v109;
  v110 = OSSignpostID.rawValue.getter();
  v111 = v140;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v140, v142, v110, v143, "assetTransitionIdentifier: %{public, signpost.description=attribute,public}s,\nassetIdentifier: %{public, signpost.description=attribute,public}s,\nassetVersion: %{public, signpost.description=attribute,public}s,\nfromState: %{public, signpost.description=attribute,public}s,\ntoState: %{public, signpost.description=attribute,public}s,\nreason: %{public, signpost.description=attribute,public}ld,\ninferenceProviderIdentifier: %{public, signpost.description=attribute,public}s,\nRequestUUID: %{public, signpost.description=attribute,public}s,\nsessionIdentifier: %{public, signpost.description=attribute,public}s", v80, 0x5Cu);
  v112 = v147;
  swift_arrayDestroy();
  sub_100002BB8(v112);
  sub_100002BB8(v80);

LABEL_25:
  __chkstk_darwin(v74);
  sub_100002D4C();
  v113 = v136;
  v114 = sub_100009DB8();
  v115(v114, v75, v113);
  v116 = type metadata accessor for OSSignpostIntervalState();
  sub_1000038EC(v116);
  sub_100003170();
  OSSignpostIntervalState.init(id:isOpen:)();
  v117 = sub_100005FEC();
  v118(v117);
  v119 = type metadata accessor for TelemetryIntervalState();
  v120 = sub_1000126B4(v119);
  sub_10003533C(v120);
  sub_100002EEC();
}

uint64_t sub_10003028C()
{
}

void sub_1000302A8()
{
}

uint64_t sub_1000302D4()
{
  type metadata accessor for LoadState();
  sub_100002BDC();
  __chkstk_darwin(v0);
  sub_100002B8C();
  v1 = sub_10000D01C();
  v2(v1);
  v3 = sub_100002CBC();
  v5 = v4(v3);
  if (v5 == enum case for LoadState.unloaded(_:))
  {
    type metadata accessor for _OSActivity();
    sub_100005640();
    swift_allocObject();
    v6 = "Unloading InferenceProvider asset";
    v7 = 33;
  }

  else
  {
    v8 = v5;
    if (v5 == enum case for LoadState.dynamicMode(_:))
    {
      type metadata accessor for _OSActivity();
      sub_100005640();
      swift_allocObject();
      v6 = "Making InferenceProvider asset dynamic";
      v7 = 38;
    }

    else
    {
      v11 = enum case for LoadState.loaded(_:);
      type metadata accessor for _OSActivity();
      sub_100005640();
      swift_allocObject();
      if (v8 != v11)
      {
        v9 = sub_10001B160("Unknown InferenceProvider asset transition", 42, 2);
        v12 = sub_100002CBC();
        v13(v12);
        return v9;
      }

      v6 = "Loading InferenceProvider asset";
      v7 = 31;
    }
  }

  return sub_10001B160(v6, v7, 2);
}

uint64_t sub_100030490()
{
  sub_100002BAC();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v1[27] = v5;
  v6 = type metadata accessor for ModelManagerError();
  v1[32] = v6;
  sub_100002F44(v6);
  v1[33] = v7;
  v1[34] = sub_100002C58();
  v8 = type metadata accessor for InferenceProviderAssetDescriptor();
  v1[35] = v8;
  sub_100002F44(v8);
  v1[36] = v9;
  v1[37] = sub_100002C58();
  State = type metadata accessor for LoadState();
  v1[38] = State;
  sub_100002F44(State);
  v1[39] = v11;
  v1[40] = sub_10000F0C0();
  v1[41] = swift_task_alloc();
  v12 = sub_100002C10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000305E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000133FC();
  a25 = v27;
  a26 = v28;
  sub_10000C72C();
  a24 = v26;
  v29 = *(v26 + 328);
  v30 = *(v26 + 312);
  v31 = sub_1000302D4();
  *(v26 + 336) = v31;
  *(v26 + 456) = enum case for LoadState.loaded(_:);
  v32 = *(v30 + 104);
  *(v26 + 344) = v32;
  *(v26 + 352) = (v30 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v32(v29);
  sub_1000076B0();
  sub_10002EA7C(v33, v34, &protocol conformance descriptor for LoadState);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v30 + 8);
  *(v26 + 360) = v36;
  *(v26 + 368) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37 = sub_100003754();
  v36(v37);
  if ((v35 & 1) != 0 || (v38 = *(v26 + 248), *(v38 + 112)))
  {
    v94 = v36;
    if (qword_1001B8900 != -1)
    {
      sub_100005C18(&qword_1001B8900);
    }

    v39 = *(v26 + 312);
    v93 = *(v26 + 320);
    v41 = *(v26 + 296);
    v40 = *(v26 + 304);
    v43 = *(v26 + 280);
    v42 = *(v26 + 288);
    v45 = *(v26 + 216);
    v44 = *(v26 + 224);
    v46 = type metadata accessor for Logger();
    *(v26 + 376) = sub_10000641C(v46, qword_1001B9FA0);
    (*(v42 + 16))(v41, v45, v43);
    (*(v39 + 16))(v93, v44, v40);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v26 + 320);
    v51 = *(v26 + 296);
    v52 = *(v26 + 304);
    if (v49)
    {
      v53 = swift_slowAlloc();
      a15 = swift_slowAlloc();
      *v53 = 136315650;
      sub_10002EA7C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
      v92 = v48;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v57 = sub_100004CB0();
      v58(v57);
      sub_100004A3C(v54, v56, &a15);
      sub_10000E86C();

      *(v53 + 4) = v51;
      *(v53 + 12) = 2080;
      sub_1000076B0();
      sub_10002EA7C(v59, v60, &protocol conformance descriptor for LoadState);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_1000294DC();
      (v94)(v50, v52);
      v61 = sub_100036724();
      sub_100004A3C(v61, v62, v63);
      sub_10000E86C();

      *(v53 + 14) = v50;
      *(v53 + 22) = 2080;
      v64 = type metadata accessor for InferenceProviderDescriptor();
      sub_10000509C();
      sub_10002EA7C(v65, v66, &protocol conformance descriptor for InferenceProviderDescriptor);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_100004A3C(v67, v68, &a15);
      sub_100019130();
      *(v53 + 24) = v64;
      _os_log_impl(&_mh_execute_header, v47, v92, "InferenceProvider transition asset %s to %s executing on %s", v53, 0x20u);
      swift_arrayDestroy();
      sub_100003420();
      sub_10000706C();
    }

    else
    {

      (v94)(v50, v52);
      v69 = sub_100004CB0();
      v70(v69);
    }

    v71 = swift_task_alloc();
    *(v26 + 384) = v71;
    *v71 = v26;
    v71[1] = sub_10003FEB4;
    sub_1000037A0();

    return sub_100030B84();
  }

  else
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18(&qword_1001B8900);
      v38 = *(v26 + 248);
    }

    v74 = type metadata accessor for Logger();
    sub_100002FD0(v74, qword_1001B9FA0);

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v75, v76))
    {
      sub_100007698();
      a15 = sub_10000359C();
      *v38 = 136315138;
      v77 = type metadata accessor for InferenceProviderDescriptor();
      sub_10000509C();
      sub_10002EA7C(v78, v79, &protocol conformance descriptor for InferenceProviderDescriptor);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_100004A3C(v80, v81, &a15);
      sub_100012918();
      *(v38 + 4) = v77;
      sub_100013710(&_mh_execute_header, v82, v83, "Implicitly succeeding a loadOut for an exited InferenceProvider %s");
      sub_100002C88();
      sub_100004B78();
    }

    sub_100004B50(v31 + 24, v26 + 16);
    os_activity_scope_leave((v31 + 24));
    swift_endAccess();
    sub_10001C130();

    sub_100002F54();
    sub_1000037A0();

    return v85(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_100030D90()
{
  v112 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);
  v104 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_loadingCount;
  v4 = *(v0 + 128);
  v5 = enum case for RequestPriority.none(_:);
  if (*(v3 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_loadingCount) <= 0)
  {
    v6 = enum case for RequestPriority.none(_:);
  }

  else
  {
    v6 = enum case for RequestPriority.background(_:);
  }

  v110 = *(v2 + 104);
  v110(*(v0 + 184), v6, v1);
  v9 = *(v2 + 32);
  v7 = v2 + 32;
  v8 = v9;
  v10 = sub_10000CC04();
  v9(v10);
  sub_100065020(&qword_1001BA498, &qword_100171008);
  v11 = (*(v7 + 48) + 32) & ~*(v7 + 48);
  v109 = *(v7 + 40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100170BD0;
  v13 = v12 + v11;
  v14 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activeRequest;
  sub_10000BF7C(v3 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activeRequest);
  v105 = v3;
  v103 = v14;

  sub_100031710(v15, v4);

  v16 = sub_100014484();
  if (sub_10000C6C0(v16, v17, v1) == 1)
  {
    v18 = *(v0 + 144);
    v110(v13, v5, v18);
    v19 = sub_100014484();
    v21 = v5;
    v22 = v8;
    if (sub_10000C6C0(v19, v20, v18) != 1)
    {
      sub_10000ECD8(*(v0 + 128), &qword_1001BA488, &qword_100170FE8);
    }
  }

  else
  {
    v8(v13, *(v0 + 128), *(v0 + 144));
    v21 = v5;
    v22 = v8;
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 136);
  v25 = *(*(v0 + 152) + 16);
  (v25)(v13 + v109, *(v0 + 192), v23);
  sub_100034F10(v12, v24);
  swift_setDeallocating();
  sub_10003A2E0();
  v26 = sub_100014484();
  v28 = sub_10000C6C0(v26, v27, v23);
  v29 = *(v0 + 176);
  if (v28 == 1)
  {
    v30 = *(v0 + 144);
    v31 = *(v0 + 136);
    v110(v29, v21, v30);
    if (sub_10000C6C0(v31, 1, v30) != 1)
    {
      sub_10000ECD8(*(v0 + 136), &qword_1001BA488, &qword_100170FE8);
    }
  }

  else
  {
    v22(v29, *(v0 + 136), *(v0 + 144));
  }

  if (qword_1001B8900 != -1)
  {
    sub_100005C18(&qword_1001B8900);
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_10000641C(v32, qword_1001B9FA0);
  v34 = sub_1000062B0();
  v25(v34);
  swift_retain_n();
  v106 = v33;
  v35 = v33;
  v36 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_10002EB00();
  log = v36;
  v38 = &unk_1001BE000;
  v107 = v21;
  if (os_log_type_enabled(v36, v37))
  {
    v39 = *(v0 + 168);
    v41 = *(v0 + 152);
    v40 = *(v0 + 160);
    v42 = *(v0 + 144);
    v101 = *(v0 + 112);
    v43 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v43 = 136316162;
    v102 = v35;
    v44 = type metadata accessor for InferenceProviderDescriptor();
    sub_10000509C();
    sub_10002EA7C(v45, v46, &protocol conformance descriptor for InferenceProviderDescriptor);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    sub_100004A3C(v47, v48, &v111);
    sub_100012918();
    *(v43 + 4) = v44;
    *(v43 + 12) = 2080;
    (v25)(v40, v39, v42);
    sub_100003754();
    String.init<A>(describing:)();
    sub_1000294DC();
    v50 = *(v41 + 8);
    v50(v39, v42);
    v51 = sub_100036724();
    sub_100004A3C(v51, v52, v53);
    sub_10000E86C();

    *(v43 + 14) = v49;
    *(v43 + 22) = 2080;
    v54 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activePriority;
    sub_100004BA0(v101 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activePriority, v0 + 88);
    (v25)(v40, v101 + v54, v42);
    sub_100003754();
    v55 = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56 = String.init<A>(describing:)();
    v58 = sub_100004A3C(v56, v57, &v111);

    *(v43 + 24) = v58;
    *(v43 + 32) = 2048;
    v59 = *(v105 + v104);

    *(v43 + 34) = v59;

    *(v43 + 42) = 2048;
    v60 = *(*(v105 + v103) + 16);

    *(v43 + 44) = v60;

    _os_log_impl(&_mh_execute_header, log, v102, "InferenceProviderExtensionConnection %s setCurrentState to %s from %s [%ld, %ld]", v43, 0x34u);
    swift_arrayDestroy();
    sub_100003420();
    v61 = v43;
    v38 = &unk_1001BE000;
    sub_100002BB8(v61);
  }

  else
  {
    v62 = *(v0 + 152);

    v50 = *(v62 + 8);
    v55 = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63 = sub_10000D01C();
    (v50)(v63);
  }

  *(v0 + 200) = v50;
  v64 = *(v0 + 160);
  v65 = *(v0 + 144);
  v66 = *(v0 + 112);
  v67 = v38[235];
  sub_100004BA0(v66 + v67, v0 + 40);
  (v25)(v64, v66 + v67, v65);
  v68 = sub_100001F70();
  v70 = sub_100116BA4(v68, v69);
  *(v0 + 208) = v55;
  v71 = sub_1000060A4();
  v72 = v50;
  (v50)(v71);
  v73 = *(v0 + 112);
  if ((v70 & 1) != 0 && *(v73 + 112))
  {
    v74 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_10002EB00();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = sub_100007648();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v106, "InferenceProviderExtensionConnection setCurrentState not updating state", v76, 2u);
      sub_100002BB8(v76);
    }

    v77 = v74;
LABEL_26:
    v91 = *(v0 + 200);
    v92 = *(v0 + 192);
    v93 = *(v0 + 176);
    v94 = *(v0 + 144);

    v91(v93, v94);
    v91(v92, v94);

    sub_100002F54();

    return v95();
  }

  v78 = *(v0 + 176);
  v80 = *(v0 + 152);
  v79 = *(v0 + 160);
  v81 = *(v0 + 144);
  sub_100004B50(v66 + v67, v0 + 64);
  (*(v80 + 24))(v66 + v67, v78, v81);
  swift_endAccess();
  v82 = *(v73 + 168);

  os_unfair_lock_lock((v82 + 24));
  v83 = *(v82 + 16);
  *(v0 + 216) = v83;
  *(v82 + 16) = 0;
  os_unfair_lock_unlock((v82 + 24));

  v110(v79, v107, v81);
  v84 = sub_1000062B0();
  LOBYTE(v78) = sub_100116BA4(v84, v85);
  v72(v79, v81);
  if (v78)
  {
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.info.getter();
    if (sub_100002F80(v87))
    {
      v88 = sub_100007648();
      sub_10000A240(v88);
      sub_1000059D8(&_mh_execute_header, v89, v90, "InferenceProviderExtensionConnection setCurrentState no active requests");
      sub_100002F64();
    }

    sub_10003FAA8(v83);
    v77 = v83;
    goto LABEL_26;
  }

  v110(*(v0 + 160), enum case for RequestPriority.foreground(_:), *(v0 + 144));
  v97 = sub_100001F70();
  *(v0 + 240) = sub_100116BA4(v97, v98) & 1;
  v99 = sub_1000060A4();
  (v72)(v99);
  v100 = swift_task_alloc();
  *(v0 + 224) = v100;
  *v100 = v0;
  v100[1] = sub_10003F89C;

  return sub_100031AD0();
}

uint64_t sub_1000316A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_10002CC20(a12, a1);
}

void sub_1000316EC()
{

  os_unfair_lock_lock(v0 + 6);
}

uint64_t sub_100031710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RequestPriority();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v38 - v12;
  __chkstk_darwin(v11);
  v45 = &v38 - v14;
  v15 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  if (v18)
  {
    v38 = a2;
    v19 = 0;
    v20 = __clz(__rbit64(v18));
    v21 = (v18 - 1) & v18;
    v22 = (v16 + 63) >> 6;
LABEL_9:
    v25 = v5[9];
    v26 = *(a1 + 56) + v25 * v20;
    v27 = v5[2];
    v40 = v5 + 2;
    v41 = v25;
    v39 = v27;
    v27(v13, v26, v4);
    v28 = v5[4];
    v28(v45, v13, v4);
    v43 = v5 + 4;
    v44 = a1;
    v29 = (v5 + 1);

    v31 = v45;
    while (v21)
    {
      v32 = v19;
LABEL_15:
      v33 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v34 = v42;
      v39(v42, *(v44 + 56) + (v33 | (v32 << 6)) * v41, v4);
      v28(v10, v34, v4);
      sub_10002EA7C(&qword_1001B9428, &type metadata accessor for RequestPriority, &protocol conformance descriptor for RequestPriority);
      v35 = dispatch thunk of static Comparable.< infix(_:_:)();
      v36 = *v29;
      if (v35)
      {
        v36(v31, v4);
        result = (v28)(v31, v10, v4);
      }

      else
      {
        result = (v36)(v10, v4);
      }

      v19 = v32;
    }

    while (1)
    {
      v32 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v32 >= v22)
      {

        v37 = v38;
        v28(v38, v45, v4);
        return sub_100009BFC(v37, 0, 1, v4);
      }

      v21 = *(v15 + 8 * v32);
      ++v19;
      if (v21)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 0;
    v22 = (v16 + 63) >> 6;
    while (1)
    {
      v19 = v18 + 1;
      if (v18 + 1 >= v22)
      {
        break;
      }

      v24 = *(a1 + 72 + 8 * v18);
      v23 += 64;
      ++v18;
      if (v24)
      {
        v38 = a2;
        v21 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) + v23;
        goto LABEL_9;
      }
    }

    return sub_100009BFC(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_100031AD0()
{
  sub_100001ED0();
  v1[57] = v2;
  v1[58] = v0;
  v1[56] = v3;
  v4 = type metadata accessor for BuiltInInferenceProvider();
  v1[59] = v4;
  sub_100002F44(v4);
  v1[60] = v5;
  v1[61] = sub_10000F0C0();
  v1[62] = swift_task_alloc();
  v6 = type metadata accessor for InferenceProviderExtensionConnection.ProviderIdentification(0);
  v1[63] = v6;
  sub_100002F04(v6);
  v1[64] = sub_100002C58();
  sub_1000071A8();

  return _swift_task_switch(v7, v8, v9);
}
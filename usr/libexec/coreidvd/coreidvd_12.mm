void *sub_10012F5F8()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ISO18013KnownDocTypes();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v0, v5);
  v9 = (*(v6 + 88))(v8, v5);
  v10 = sub_10012F988;
  if (v9 != enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
  {
    v10 = sub_10012F98C;
    if (v9 != enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
    {
      v10 = sub_10012F990;
      if (v9 != enum case for ISO18013KnownDocTypes.photoID(_:))
      {
        v13[0] = 0;
        v13[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(27);
        v12._object = 0x80000001006FFEF0;
        v12._countAndFlagsBits = 0xD000000000000019;
        String.append(_:)(v12);
        _print_unlocked<A, B>(_:_:)();
        v13[3] = v13[0];
        (*(v2 + 104))(v4, enum case for DIPError.Code.digitalPresentmentInvalidDocumentDescriptor(_:), v1);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10012FA78(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        (*(v6 + 8))(v8, v5);
      }
    }
  }

  return v10;
}

unint64_t sub_10012F958@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10003EBD8(_swiftEmptyArrayStorage);
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for DigitalPresentmentCredentialRequestBuilder(uint64_t a1)
{
  result = qword_10083B2A8;
  if (!qword_10083B2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012F9FC@<X0>(uint64_t *a1@<X8>)
{
  result = DocumentRequest.namespaces.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10012FA78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10012FAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ValidatedDigitalPresentmentRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10012FBB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ValidatedDigitalPresentmentRequest(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10012FC6C(uint64_t a1)
{
  result = type metadata accessor for ValidatedDigitalPresentmentRequest(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10012FCE4()
{
  v1 = type metadata accessor for SHA256();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256Digest();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_10083B408, &qword_1006E2490);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata(0);
  sub_10000BBC4(v0 + *(v12 + 28), v11, &qword_10083B408, &qword_1006E2490);
  v13 = type metadata accessor for CredentialRevocationInfo(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    sub_10000BE18(v11, &qword_10083B408, &qword_1006E2490);
    v14 = *v0;
    v15 = v0[1];
    sub_100134548(&qword_1008336E0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v19[0] = v5;
    dispatch thunk of HashFunction.init()();
    sub_10000B8B8(v14, v15);
    sub_10037939C(v14, v15, v4);
    sub_10000B90C(v14, v15);
    dispatch thunk of HashFunction.finalize()();
    (*(v2 + 8))(v4, v1);
    sub_100134548(&qword_1008336E8, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v16 = v19[0];
    v17 = Digest.data.getter();
    (*(v6 + 8))(v8, v16);
  }

  else
  {
    v17 = *v11;
    sub_10000B8B8(*v11, *(v11 + 1));
    sub_1001346B0(v11, type metadata accessor for CredentialRevocationInfo);
  }

  return v17;
}

uint64_t sub_100130038(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  result = __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = *(a1 + 8);
  if (v8 >> 6)
  {
    if (v8 >> 6 == 1)
    {
      if ((v8 & 1) == 0)
      {
        return result;
      }

      sub_1001342B0(*a1, v8);
    }

    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;

    result = sub_1001303A0(0, 0, v7, &unk_1006D98A0, v10);
    *a1 = result;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_10013017C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100130210;

  return sub_100130C4C();
}

uint64_t sub_100130210(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1 & 1;

    return _swift_task_switch(sub_100130360, 0, 0);
  }
}

uint64_t sub_1001303A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000BBC4(a3, v22 - v9, &unk_100845860, &unk_1006BF9D0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000BE18(v10, &unk_100845860, &unk_1006BF9D0);
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
      v22[0] = a2;
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

      sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);

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

  sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100130690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  sub_10000BBC4(a3, v24 - v11, &unk_100845860, &unk_1006BF9D0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000BE18(v12, &unk_100845860, &unk_1006BF9D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;
      a6(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100130984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v26[0] = a4;
  v12 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v12 - 8);
  v14 = v26 - v13;
  sub_10000BBC4(a3, v26 - v13, &unk_100845860, &unk_1006BF9D0);
  v15 = type metadata accessor for TaskPriority();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_10000BE18(v14, &unk_100845860, &unk_1006BF9D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;

      sub_100007224(a6, a7);
      v23 = (v21 | v19);
      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000BE18(a3, &unk_100845860, &unk_1006BF9D0);
  sub_100007224(a6, a7);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_100130C4C()
{
  v1[2] = v0;
  type metadata accessor for DIPSignpost.Config();
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for DIPSignpost();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100130DB8, v0, 0);
}

uint64_t sub_100130DB8(uint64_t a1)
{
  v20 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v7 = v1[7];
  v6 = v1[8];
  if (v4)
  {
    v18 = v1[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = sub_10012FCE4();
    v12 = v11;
    v13 = Data.base16EncodedString()();
    sub_10000B90C(v10, v12);
    v14 = sub_100141FE4(v13._countAndFlagsBits, v13._object, &v19);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentCredentialValidator Validating credential: %s", v8, 0xCu);
    sub_10000BB78(v9);

    v15 = *(v6 + 8);
    v15(v5, v18);
  }

  else
  {

    v15 = *(v6 + 8);
    v15(v5, v7);
  }

  v1[13] = v15;
  sub_10000BA08((v1[2] + 112), *(v1[2] + 136));
  v16 = swift_task_alloc();
  v1[14] = v16;
  *v16 = v1;
  v16[1] = sub_100130FD8;

  return sub_10010EDB0();
}

uint64_t sub_100130FD8(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_1001310F0, v2, 0);
}

uint64_t sub_1001310F0(uint64_t a1)
{
  v28 = v1;
  if (*(v1 + 136) == 1)
  {
    defaultLogger()();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 104);
    v6 = *(v1 + 88);
    v7 = *(v1 + 56);
    if (v4)
    {
      v26 = *(v1 + 104);
      v25 = *(v1 + 56);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27 = v9;
      *v8 = 136315138;
      v10 = sub_10012FCE4();
      v12 = v11;
      v13 = Data.base16EncodedString()();
      sub_10000B90C(v10, v12);
      v14 = sub_100141FE4(v13._countAndFlagsBits, v13._object, &v27);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentCredentialValidator Validating credential %s using KRL", v8, 0xCu);
      sub_10000BB78(v9);

      v26(v6, v25);
    }

    else
    {

      v5(v6, v7);
    }

    static DaemonSignposts.KRL.checkAgainstKRL.getter();
    DIPSignpost.init(_:)();
    v24 = swift_task_alloc();
    *(v1 + 120) = v24;
    *v24 = v1;
    v24[1] = sub_100131498;

    return sub_100132338();
  }

  else
  {
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "DigitalPresentmentCredentialValidator KRL is disabled; bypassing revocation check.", v17, 2u);
    }

    v18 = *(v1 + 104);
    v19 = *(v1 + 80);
    v20 = *(v1 + 56);

    v18(v19, v20);
    if (qword_100832BB8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Milestone();
    sub_10003170C(v21, qword_100882128);
    Milestone.log()();

    v22 = *(v1 + 8);

    return v22(1);
  }
}

uint64_t sub_100131498(char a1)
{
  v4 = *v2;
  *(v4 + 128) = v1;

  v5 = *(v4 + 16);
  if (v1)
  {
    v6 = sub_1001316F4;
  }

  else
  {
    *(v4 + 137) = a1 & 1;
    v6 = sub_1001315D8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001315D8()
{
  v1 = *(v0 + 137);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(*(v0 + 16) + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator__validationState);
  os_unfair_lock_lock((v5 + 28));
  sub_1001342B0(*(v5 + 16), *(v5 + 24));
  *(v5 + 16) = v1;
  *(v5 + 24) = 64;
  os_unfair_lock_unlock((v5 + 28));
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 137);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1001316F4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);
  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "DigitalPresentmentCredentialValidator Error when trying to validate credential: %@", v6, 0xCu);
    sub_10000BE18(v7, &unk_100833B50, &unk_1006D8FB0);
  }

  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[2];

  v10(v11, v12);
  v14 = *(v13 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator__validationState);
  *(swift_task_alloc() + 16) = v9;
  os_unfair_lock_lock(v14 + 7);
  sub_10013465C(&v14[4]);
  os_unfair_lock_unlock(v14 + 7);

  swift_willThrow();

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_10013197C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = type metadata accessor for Logger();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100131A58, a2, 0);
}

uint64_t sub_100131A58()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator__validationState);
  os_unfair_lock_lock((v1 + 28));
  v2 = *(v1 + 16);
  *(v0 + 72) = v2;
  v3 = *(v1 + 24);
  *(v0 + 96) = v3;
  sub_100134528(v2, v3);
  os_unfair_lock_unlock((v1 + 28));
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      if (v3)
      {
        defaultLogger()();
        sub_10001F6D4(v2, 1);
        v4 = Logger.logObject.getter();
        v5 = static os_log_type_t.info.getter();
        sub_1001342B0(v2, v3);
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          *v6 = 138412290;
          sub_10001F6D4(v2, 1);
          v8 = _swift_stdlib_bridgeErrorToNSError();
          *(v6 + 4) = v8;
          *v7 = v8;
          _os_log_impl(&_mh_execute_header, v4, v5, "DigitalPresentmentCredentialValidator Failed to validate credential: %@", v6, 0xCu);
          sub_10000BE18(v7, &unk_100833B50, &unk_1006D8FB0);

          sub_1001342B0(v2, v3);
        }

        else
        {
          sub_1001342B0(v2, v3);
        }

        v19 = *(v0 + 16);
        (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));
        *v19 = 0;
      }

      else
      {
        **(v0 + 16) = v2 & 1;
      }
    }

    else
    {
      defaultLogger()();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "DigitalPresentmentCredentialValidator validation has not started; returning false", v14, 2u);
      }

      v15 = *(v0 + 64);
      v16 = *(v0 + 32);
      v17 = *(v0 + 40);
      v18 = *(v0 + 16);

      (*(v17 + 8))(v15, v16);
      *v18 = 0;
    }

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    v10 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    *v9 = v0;
    v9[1] = sub_100131DB4;
    v11 = *(v0 + 16);

    return Task.value.getter(v11, v2, &type metadata for Bool, v10, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_100131DB4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100131F64;
  }

  else
  {
    v4 = sub_100131EE0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100131EE0()
{
  sub_1001342B0(*(v0 + 72), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100131F64(uint64_t a1)
{
  defaultLogger()();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 96);
  v6 = *(v1 + 72);
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentCredentialValidator Failed to validate credential: %@", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);

    sub_1001342B0(v6, v5);
  }

  else
  {
    sub_1001342B0(*(v1 + 72), *(v1 + 96));
  }

  v10 = *(v1 + 16);
  (*(*(v1 + 40) + 8))(*(v1 + 48), *(v1 + 32));
  *v10 = 0;

  v11 = *(v1 + 8);

  return v11();
}

void sub_100132134(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator__validationState);
  os_unfair_lock_lock((v1 + 28));
  sub_100132194((v1 + 16));

  os_unfair_lock_unlock((v1 + 28));
}

uint64_t sub_100132194(uint64_t *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  if (v7 <= 0x3F)
  {
    v8 = *a1;

    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    Task.cancel()();
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "DigitalPresentmentCredentialValidator canceled validating because task was canceled", v11, 2u);
    }

    sub_1001342B0(v8, v7);

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_100132338()
{
  v1[5] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for CredentialRevocationInfo(0);
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v1[22] = swift_task_alloc();
  v6 = type metadata accessor for SHA256();
  v1[23] = v6;
  v1[24] = *(v6 - 8);
  v1[25] = swift_task_alloc();
  v7 = type metadata accessor for SHA256Digest();
  v1[26] = v7;
  v1[27] = *(v7 - 8);
  v1[28] = swift_task_alloc();
  sub_100007224(&qword_10083B408, &qword_1006E2490);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  sub_100007224(&qword_100833A88, qword_1006BF8E0);
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001326B4, v0, 0);
}

uint64_t sub_1001326B4()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 40);
  *(v0 + 368) = 0;
  v9 = *(v7 + 56);
  *(v0 + 264) = v9;
  *(v0 + 272) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v1, 1, 1, v6);
  v10 = OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_credential;
  *(v0 + 280) = OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_credential;
  v11 = (v8 + v10);
  v51 = type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata(0);
  sub_10000BBC4(v11 + *(v51 + 28), v2, &qword_10083B408, &qword_1006E2490);
  sub_10000BBC4(v2, v3, &qword_10083B408, &qword_1006E2490);
  v53 = *(v5 + 48);
  v12 = v53(v3, 1, v4);
  v13 = *(v0 + 240);
  v52 = v11;
  if (v12 == 1)
  {
    v14 = *(v0 + 224);
    v54 = *(v0 + 216);
    v15 = *(v0 + 200);
    v50 = *(v0 + 208);
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    sub_10000BE18(v13, &qword_10083B408, &qword_1006E2490);
    v18 = *v11;
    v19 = v11[1];
    sub_100134548(&qword_1008336E0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_10000B8B8(v18, v19);
    sub_10037939C(v18, v19, v15);
    sub_10000B90C(v18, v19);
    dispatch thunk of HashFunction.finalize()();
    (*(v16 + 8))(v15, v17);
    sub_100134548(&qword_1008336E8, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v20 = Digest.data.getter();
    v22 = v21;
    (*(v54 + 8))(v14, v50);
  }

  else
  {
    v20 = *v13;
    v22 = v13[1];
    sub_10000B8B8(*v13, v22);
    sub_1001346B0(v13, type metadata accessor for CredentialRevocationInfo);
  }

  *(v0 + 288) = v20;
  *(v0 + 296) = v22;
  v55 = v20;
  v23 = *(v0 + 248);
  v24 = *(v0 + 232);
  v25 = *(v0 + 176);
  v26 = *(v0 + 152);
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v29(v25, 1, 1, v27);
  sub_10000BBC4(v23, v24, &qword_10083B408, &qword_1006E2490);
  v30 = v53(v24, 1, v26);
  v31 = *(v0 + 232);
  if (v30 == 1)
  {
    sub_10000BE18(*(v0 + 232), &qword_10083B408, &qword_1006E2490);
    v32 = 0;
    v33 = 0xF000000000000000;
    goto LABEL_13;
  }

  v35 = *(v0 + 168);
  v34 = *(v0 + 176);
  v36 = *(v0 + 152);
  sub_10000BE18(v34, &unk_100844540, &unk_1006BFBC0);
  sub_100134590(v31, v35);
  (*(v28 + 16))(v34, v35 + *(v36 + 24), v27);
  v29(v34, 0, 1, v27);
  v33 = *(v35 + 24);
  if (v33 >> 60 != 15)
  {
    v41 = *(v0 + 168);
    v32 = *(v41 + 16);
    sub_10000B8B8(v32, *(v35 + 24));
LABEL_11:
    v46 = v41;
    goto LABEL_12;
  }

  v37 = (v52 + *(v51 + 32));
  v32 = *v37;
  v33 = v37[1];
  sub_1000363B4(*v37, v33);
  defaultLogger()();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 168);
  v42 = *(v0 + 144);
  v44 = *(v0 + 120);
  v43 = *(v0 + 128);
  if (!v40)
  {

    (*(v43 + 8))(v42, v44);
    goto LABEL_11;
  }

  v45 = swift_slowAlloc();
  *v45 = 0;
  _os_log_impl(&_mh_execute_header, v38, v39, "DigitalPresentmentCredentialValidator revocation list metadata certificate missing; falling back to credential issuer signer certificate", v45, 2u);

  (*(v43 + 8))(v42, v44);
  v46 = v41;
LABEL_12:
  sub_1001346B0(v46, type metadata accessor for CredentialRevocationInfo);
LABEL_13:
  *(v0 + 304) = v32;
  *(v0 + 312) = v33;
  sub_10000BA08((*(v0 + 40) + 112), *(*(v0 + 40) + 136));
  v47 = swift_task_alloc();
  *(v0 + 320) = v47;
  *v47 = v0;
  v47[1] = sub_100132C3C;
  v48 = *(v0 + 176);

  return sub_100111BFC(v55, v22, v48, v32, v33, 0);
}

uint64_t sub_100132C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v10[41] = v4;

  v11 = v10[5];
  if (v4)
  {
    v12 = sub_100132F64;
  }

  else
  {
    v10[42] = a4;
    v10[43] = a3;
    v10[44] = a2;
    v10[45] = a1;
    v12 = sub_100132D90;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100132D90()
{
  v1 = v0[19].i64[0];
  v2 = v0[19].u64[1];
  v3 = v0[15].i64[1];
  v4 = v0[11].i64[0];
  v5 = v0[2].i64[1];
  v11 = v0[22];
  v12 = v0[21];
  sub_10000B90C(v0[18].i64[0], v0[18].u64[1]);
  sub_10000BD94(v1, v2);
  sub_10000BE18(v4, &unk_100844540, &unk_1006BFBC0);
  sub_10000BE18(v3, &qword_10083B408, &qword_1006E2490);
  v6 = (v5 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_krlPerformanceData);
  *v6 = vextq_s8(v11, v11, 8uLL);
  v6[1] = vextq_s8(v12, v12, 8uLL);
  v7 = v0[16].i64[0];
  sub_10013378C(v0[23].i8, v0[2].i64[1], v7);
  sub_10000BE18(v7, &qword_100833A88, qword_1006BF8E0);

  v8 = v0->i64[1];
  v9 = v0[20].i64[1] == 0;

  return v8(v9);
}

uint64_t sub_100132F64()
{
  v59 = v0;
  *(v0 + 16) = *(v0 + 328);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(*(v0 + 88) + 32);
    v5(*(v0 + 104), *(v0 + 112), *(v0 + 80));
    DIPError.code.getter();
    (*(v3 + 104))(v2, enum case for DIPError.Code.krlMatchedRevokedKey(_:), v4);
    sub_100134548(&qword_10083B4D0, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v6 = *(v3 + 8);
    v6(v2, v4);
    v6(v1, v4);
    if (*(v0 + 24) == *(v0 + 32))
    {

      defaultLogger()();

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();

      v9 = os_log_type_enabled(v7, v8);
      v56 = *(v0 + 304);
      v57 = *(v0 + 312);
      if (v9)
      {
        v49 = *(v0 + 288);
        v55 = *(v0 + 256);
        v53 = *(v0 + 176);
        v54 = *(v0 + 248);
        v50 = *(v0 + 128);
        v51 = *(v0 + 120);
        v52 = *(v0 + 136);
        v47 = *(v0 + 296);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v58[0] = v11;
        *v10 = 136315138;
        v12 = sub_10012FCE4();
        v14 = v13;
        v15 = Data.base16EncodedString()();
        sub_10000B90C(v12, v14);
        v16 = sub_100141FE4(v15._countAndFlagsBits, v15._object, v58);

        *(v10 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v7, v8, "DigitalPresentmentCredentialValidator Matched %s key with key in revocation list.", v10, 0xCu);
        sub_10000BB78(v11);

        sub_10000B90C(v49, v47);
        sub_10000BD94(v56, v57);

        (*(v50 + 8))(v52, v51);
        sub_10000BE18(v53, &unk_100844540, &unk_1006BFBC0);
        sub_10000BE18(v54, &qword_10083B408, &qword_1006E2490);
        v17 = v55;
      }

      else
      {
        v30 = *(v0 + 248);
        v29 = *(v0 + 256);
        v31 = *(v0 + 176);
        v32 = *(v0 + 128);
        v33 = *(v0 + 136);
        v34 = *(v0 + 120);
        sub_10000B90C(*(v0 + 288), *(v0 + 296));
        sub_10000BD94(v56, v57);

        (*(v32 + 8))(v33, v34);
        sub_10000BE18(v31, &unk_100844540, &unk_1006BFBC0);
        sub_10000BE18(v30, &qword_10083B408, &qword_1006E2490);
        v17 = v29;
      }

      sub_10000BE18(v17, &qword_100833A88, qword_1006BF8E0);
      v35 = *(v0 + 264);
      v36 = *(v0 + 256);
      v37 = *(v0 + 80);
      v5(v36, *(v0 + 104), v37);
      v35(v36, 0, 1, v37);
      *(v0 + 368) = 1;

      v38 = *(v0 + 256);
      sub_10013378C((v0 + 368), *(v0 + 40), v38);
      sub_10000BE18(v38, &qword_100833A88, qword_1006BF8E0);

      v27 = *(v0 + 8);
      v28 = *(v0 + 328) == 0;
      goto LABEL_9;
    }

    (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
  }

  v43 = *(v0 + 304);
  v44 = *(v0 + 312);
  v41 = *(v0 + 288);
  v42 = *(v0 + 296);
  v40 = *(v0 + 264);
  v18 = *(v0 + 256);
  v48 = *(v0 + 248);
  v45 = *(v0 + 176);
  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 72);
  v22 = *(v0 + 80);
  v23 = *(v0 + 56);
  v24 = *(v0 + 48);
  v46 = *(v0 + 40);

  (*(v23 + 104))(v21, enum case for DIPError.Code.krlCouldNotFetch(_:), v24);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10000BE18(v18, &qword_100833A88, qword_1006BF8E0);
  v25 = *(v20 + 16);
  v25(v18, v19, v22);
  v40(v18, 0, 1, v22);
  *(v0 + 368) = 2;
  sub_100134548(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v25(v26, v19, v22);
  swift_willThrow();
  sub_10000B90C(v41, v42);
  sub_10000BD94(v43, v44);

  (*(v20 + 8))(v19, v22);
  sub_10000BE18(v45, &unk_100844540, &unk_1006BFBC0);
  sub_10000BE18(v48, &qword_10083B408, &qword_1006E2490);
  sub_10013378C((v0 + 368), v46, v18);
  sub_10000BE18(v18, &qword_100833A88, qword_1006BF8E0);

  v27 = *(v0 + 8);
  v28 = 0;
LABEL_9:

  return v27(v28);
}

void sub_10013378C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v12 = *(a2 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_credential + 32);
  v11 = *(a2 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_credential + 40);
  v13 = type metadata accessor for DIPError();
  if ((*(*(v13 - 8) + 48))(a3, 1, v13))
  {
    v14 = 0xE400000000000000;
    v15 = 1280070990;
  }

  else
  {
    DIPError.code.getter();
    v16 = DIPError.Code.rawValue.getter();
    (*(v7 + 8))(v9, v6);
    aBlock[0] = v16;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v17;
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  *(v19 + 24) = v11;
  *(v19 + 32) = v10;
  *(v19 + 40) = v15;
  *(v19 + 48) = v14;
  aBlock[4] = sub_100134634;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10010CF08;
  aBlock[3] = &unk_100809AA0;
  v20 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

uint64_t sub_1001339D0()
{
  sub_10000BB78((v0 + 112));
  sub_1001346B0(v0 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator_credential, type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100133A64(uint64_t a1)
{
  result = type metadata accessor for DigitalPresentmentCredentialValidator.CredentialMetadata(319);
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

uint64_t sub_100133B4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100133B6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100133BC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_100133C24(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_100133C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007224(&qword_10083B408, &qword_1006E2490);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100133D44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_10083B408, &qword_1006E2490);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100133DF4(uint64_t a1)
{
  sub_100133F18(319, &qword_100835140, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_100133EC0(319);
    if (v2 <= 0x3F)
    {
      sub_100133F18(319, &qword_10083AA40, &type metadata for Data);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100133EC0(uint64_t a1)
{
  if (!qword_10083B478)
  {
    type metadata accessor for CredentialRevocationInfo(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10083B478);
    }
  }
}

void sub_100133F18(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100133F64()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_100133F84, v2, 0);
}

uint64_t sub_100133F84()
{
  sub_100134548(&qword_10083B4B8, type metadata accessor for DigitalPresentmentCredentialValidator, &unk_1006D9868);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100134098;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 32, &unk_1006D98B0);
}

uint64_t sub_100134098()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 16);

    return _swift_task_switch(sub_1001341CC, v4, 0);
  }
}

uint64_t sub_1001341E4()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_100134204, v2, 0);
}

void sub_100134230()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8coreidvd37DigitalPresentmentCredentialValidator__validationState);
  os_unfair_lock_lock(v1 + 7);
  sub_100134294(&v1[4]);

  os_unfair_lock_unlock(v1 + 7);
}

uint64_t sub_1001342B0(uint64_t result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    return sub_10001F6B4(result, a2 & 1);
  }

  if (!(a2 >> 6))
  {
  }

  return result;
}

uint64_t sub_1001342D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100134310(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027B9C;

  return sub_10013017C(a1);
}

uint64_t sub_1001343C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_10013197C(a1, v1);
}

uint64_t sub_100134468()
{
  v1 = sub_100134720();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1001344C8()
{
  v1 = sub_10013498C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100134528(uint64_t result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    return sub_10001F6D4(result, a2 & 1);
  }

  if (!(a2 >> 6))
  {
  }

  return result;
}

uint64_t sub_100134548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100134590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CredentialRevocationInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001345F4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100134644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10013465C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1001342B0(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = 65;
  return swift_errorRetain();
}

uint64_t sub_1001346B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100134720()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "SimulatedDigitalPresentmentCredentialValidator returning true", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return 1;
}

uint64_t sub_100134858()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "SimulatedDigitalPresentmentCredentialValidator startValidatingCredential called. This is a no-op", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10013498C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "SimulatedDigitalPresentmentCredentialValidator returning nil KRL performance data", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_100134AD0()
{
  sub_10000BA08(v0, v0[3]);
  if ((dispatch thunk of DeviceInformationProviding.isSimulator.getter() & 1) == 0)
  {
    v2 = UserDefaultsConfiguration.userDefaults.getter();
    static DaemonDefaultsKeys.developerTestPresentmentMode.getter();
    v3 = String._bridgeToObjectiveC()();

    v4 = [v2 stringForKey:v3];

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = static DaemonDefaultsKeys.developerTestPresentmentModeIdentityTestKey.getter();
      if (v7)
      {
        if (v5 == v8 && v7 == v9)
        {

          v1 = 1;
        }

        else
        {
          v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_11;
      }
    }

    else
    {
      static DaemonDefaultsKeys.developerTestPresentmentModeIdentityTestKey.getter();
    }

    v1 = 0;
LABEL_11:

    return v1 & 1;
  }

  v1 = 1;
  return v1 & 1;
}

uint64_t sub_100134C18(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100134CE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DigitalPresentmentIdentityElementsWithRegion(uint64_t a1)
{
  result = qword_10083B530;
  if (!qword_10083B530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100134DE4(uint64_t a1)
{
  sub_100134E68(319);
  if (v1 <= 0x3F)
  {
    sub_100134F14(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100134E68(uint64_t a1)
{
  if (!qword_10083B540)
  {
    type metadata accessor for IdentityElement();
    type metadata accessor for IdentityIntentToStore();
    sub_100136328(&qword_1008347A8, &type metadata accessor for IdentityElement, &protocol conformance descriptor for IdentityElement);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_10083B540);
    }
  }
}

void sub_100134F14(uint64_t a1)
{
  if (!qword_10083B548)
  {
    type metadata accessor for Locale.Region();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10083B548);
    }
  }
}

uint64_t sub_100134F6C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_10083B5B8, &qword_1006D9AB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_100135CA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  sub_100007224(&qword_10083B590, &qword_1006D9AB0);
  sub_100135EB4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for DigitalPresentmentIdentityElementsWithRegion(0);
    v10[6] = 1;
    type metadata accessor for Locale.Region();
    sub_100136328(&qword_10083B5D8, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_100135150()
{
  v1 = type metadata accessor for Locale.Region();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11[-1] - v6;
  Hasher.init(_seed:)();
  sub_10015A7A8(v11, *v0);
  v8 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion(0);
  sub_100135FA0(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1u);
    sub_100136328(&qword_100834778, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  return Hasher._finalize()();
}

uint64_t sub_100135344@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_100007224(&qword_10083B580, &qword_1006D9AA8);
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 28);
  v15 = type metadata accessor for Locale.Region();
  v16 = *(*(v15 - 8) + 56);
  v24 = v14;
  v16(&v13[v14], 1, 1, v15);
  sub_10000BA08(a1, a1[3]);
  sub_100135CA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
    return sub_10000BE18(&v13[v24], &unk_100849BA0, &qword_1006D95F0);
  }

  else
  {
    v17 = v22;
    sub_100007224(&qword_10083B590, &qword_1006D9AB0);
    v26 = 0;
    sub_100135CFC();
    v18 = v23;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v27;
    *v13 = v27;
    v25 = 1;
    sub_100136328(&qword_10083B5B0, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v17 + 8))(v9, v18);
    sub_100135DE8(v6, &v13[v24]);
    sub_1001203C0(v13, v21);
    sub_10000BB78(a1);
    return sub_100135E58(v13);
  }
}

uint64_t sub_100135694()
{
  if (*v0)
  {
    return 0x6574736575716572;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1001356E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000100700930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xEF6E6F6967655264)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1001357D0(uint64_t a1)
{
  v2 = sub_100135CA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013580C(uint64_t a1)
{
  v2 = sub_100135CA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10013587C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Locale.Region();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v12 - v10;
  sub_10015A7A8(a1, *v2);
  sub_100135FA0(v2 + *(a2 + 20), v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    Hasher._combine(_:)(1u);
    sub_100136328(&qword_100834778, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
    dispatch thunk of Hashable.hash(into:)();
    (*(v6 + 8))(v8, v5);
  }
}

Swift::Int sub_100135A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Region();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v13[-1] - v9;
  Hasher.init(_seed:)();
  sub_10015A7A8(v13, *v2);
  sub_100135FA0(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    sub_100136328(&qword_100834778, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  return Hasher._finalize()();
}

unint64_t sub_100135CA8()
{
  result = qword_10083B588;
  if (!qword_10083B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B588);
  }

  return result;
}

unint64_t sub_100135CFC()
{
  result = qword_10083B598;
  if (!qword_10083B598)
  {
    sub_10000B870(&qword_10083B590, &qword_1006D9AB0);
    sub_100136328(&qword_10083B5A0, &type metadata accessor for IdentityElement, &protocol conformance descriptor for IdentityElement);
    sub_100136328(&qword_10083B5A8, &type metadata accessor for IdentityIntentToStore, &protocol conformance descriptor for IdentityIntentToStore);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B598);
  }

  return result;
}

uint64_t sub_100135DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100135E58(uint64_t a1)
{
  v2 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100135EB4()
{
  result = qword_10083B5C0;
  if (!qword_10083B5C0)
  {
    sub_10000B870(&qword_10083B590, &qword_1006D9AB0);
    sub_100136328(&qword_10083B5C8, &type metadata accessor for IdentityElement, &protocol conformance descriptor for IdentityElement);
    sub_100136328(&qword_10083B5D0, &type metadata accessor for IdentityIntentToStore, &protocol conformance descriptor for IdentityIntentToStore);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B5C0);
  }

  return result;
}

uint64_t sub_100135FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100136010(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Locale.Region();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100007224(&qword_10083B5E0, &qword_1006D9AC0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  if ((sub_10014C858(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for DigitalPresentmentIdentityElementsWithRegion(0) + 20);
  v15 = *(v11 + 48);
  sub_100135FA0(a1 + v14, v13);
  sub_100135FA0(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_10000BE18(v13, &unk_100849BA0, &qword_1006D95F0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_100135FA0(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_10000BE18(v13, &qword_10083B5E0, &qword_1006D9AC0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_100136328(&qword_100834780, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_10000BE18(v13, &unk_100849BA0, &qword_1006D95F0);
  return (v18 & 1) != 0;
}

uint64_t sub_100136328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100136384()
{
  result = qword_10083B5E8;
  if (!qword_10083B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B5E8);
  }

  return result;
}

unint64_t sub_1001363DC()
{
  result = qword_10083B5F0;
  if (!qword_10083B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B5F0);
  }

  return result;
}

unint64_t sub_100136434()
{
  result = qword_10083B5F8;
  if (!qword_10083B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083B5F8);
  }

  return result;
}

uint64_t sub_10013649C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100136570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for DigitalPresentmentEligibleProposalData(uint64_t a1)
{
  result = qword_10083B658;
  if (!qword_10083B658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100136678(uint64_t a1)
{
  type metadata accessor for DigitalPresentmentSessionManager.Proposal(319);
  if (v1 <= 0x3F)
  {
    sub_100136714(319);
    if (v2 <= 0x3F)
    {
      sub_10013676C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100136714(uint64_t a1)
{
  if (!qword_10083B668)
  {
    type metadata accessor for Pass();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10083B668);
    }
  }
}

unint64_t sub_10013676C()
{
  result = qword_10083B670;
  if (!qword_10083B670)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10083B670);
  }

  return result;
}

void *sub_1001367D0(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPHTTPSession.Configuration(0);
  __chkstk_darwin(v12);
  v14 = &v31[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[3] = a2;
  v4[4] = 0;
  v4[2] = a1;
  if (a3)
  {
    v4[6] = 0;
  }

  else
  {
    type metadata accessor for IdentityProofingDatabaseProvider();
    v15 = swift_allocObject();
    v16 = type metadata accessor for IdentitySelfHealer();
    v17 = objc_allocWithZone(v16);
    v18 = &v17[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
    *v18 = 0;
    *(v18 + 1) = 0;
    *&v17[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v15;
    v32.receiver = v17;
    v32.super_class = v16;
    v19 = objc_msgSendSuper2(&v32, "init");
    v4[6] = v19;
    v20 = v12[6];
    *&v14[v20] = 0x3FD0000000000000;
    v21 = enum case for DIPBackoffStrategy.exponential(_:);
    v22 = type metadata accessor for DIPBackoffStrategy();
    (*(*(v22 - 8) + 104))(&v14[v20], v21, v22);
    *v14 = 0x4024000000000000;
    *(v14 + 1) = 1;
    v14[v12[7]] = 0;
    v14[v12[8]] = 0;
    v14[v12[9]] = 0;
    v23 = &v14[v12[10]];
    *v23 = 0;
    *(v23 + 1) = 0;
    v24 = v19;
    UUID.init()();
    v25 = UUID.uuidString.getter();
    v27 = v26;
    (*(v9 + 8))(v11, v8);
    type metadata accessor for DIPAccountManager();
    static DIPAccountManager.sharedInstance.getter();
    v28 = objc_allocWithZone(type metadata accessor for DIPTopekaWebService(0));
    a3 = sub_1005D7D88(v25, v27, v31, v14);
    *&a3[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer + 8] = &off_10080DB50;
    swift_unknownObjectWeakAssign();
  }

  v4[5] = a3;
  return v4;
}

uint64_t sub_100136A88()
{
  v1 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  if (*(v0 + 32))
  {

    sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    Task.cancel()();
  }

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  *(v0 + 32) = sub_10013064C(0, 0, v3, &unk_1006D9CD0, v5);
}

uint64_t sub_100136BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  v5 = type metadata accessor for DIPCertUsage();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for DIPOIDVerifier();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100136DF0, 0, 0);
}

uint64_t sub_100136DF0(uint64_t a1)
{
  v38 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 184);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  if (v4)
  {
    v8 = *(v1 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(*(v8 + 16), *(v8 + 24), v37);
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching encryption certificate for %s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  v11 = *(v7 + 8);
  v11(v5, v6);
  *(v1 + 192) = v11;
  v12 = objc_opt_self();
  *(v1 + 200) = v12;
  v13 = [v12 standardUserDefaults];
  static DaemonInternalDefaultsKeys.merchantInjectedEncCert.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 stringForKey:v14];

  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    defaultLogger()();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v1 + 176);
    v23 = *(v1 + 144);
    if (v21)
    {
      v36 = *(v1 + 176);
      v24 = v16;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_100141FE4(v24, v18, v37);
      _os_log_impl(&_mh_execute_header, v19, v20, "Merchant enc cert injected through user defaults: %s", v25, 0xCu);
      sub_10000BB78(v26);

      v16 = v24;

      v27 = v36;
    }

    else
    {

      v27 = v22;
    }

    v11(v27, v23);
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1006BF520;
    *(v33 + 32) = v16;
    *(v33 + 40) = v18;
    v34 = decodeCertificateChain(fromBase64DER:)();

    **(v1 + 56) = v34;

    v35 = *(v1 + 8);

    return v35();
  }

  else
  {
    v28 = *(v1 + 64);
    v29 = *(v28 + 16);
    *(v1 + 208) = v29;
    v30 = *(v28 + 24);
    *(v1 + 216) = v30;
    v31 = swift_task_alloc();
    *(v1 + 224) = v31;
    *v31 = v1;
    v31[1] = sub_10013735C;

    return sub_1005EF0D0(v29, v30);
  }
}

uint64_t sub_10013735C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_100137EA0;
  }

  else
  {
    v4 = sub_100137470;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100137470()
{
  v1 = *(v0 + 240);
  v2 = decodeCertificateChain(fromBase64DER:)();
  *(v0 + 248) = v2;
  if (!v1)
  {
    v5 = *(v0 + 200);

    v6 = [v5 standardUserDefaults];
    v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipRPEncCertSubjectMatch.getter();
    v8 = NSUserDefaults.internalBool(forKey:)(v7);

    if (v8)
    {
      defaultLogger()();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 192);
      v14 = *(v0 + 168);
      v15 = *(v0 + 144);
      if (v12)
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Skipping merchantId - uid match in RP Encryption certificate", v16, 2u);
      }

      v13(v14, v15);
      goto LABEL_11;
    }

    if (v2 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
      if (!v29)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v29 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        goto LABEL_30;
      }
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return DIPOIDVerifier.verifyChain(_:forUsage:)(v29, v9);
      }

      v30 = *(v2 + 32);
    }

    v31 = v30;
    v32 = SecCertificateRef.uid()();

    if (v32.value._object)
    {
      if (v32.value._countAndFlagsBits == *(v0 + 208) && v32.value._object == *(v0 + 216))
      {

LABEL_11:
        v17 = [*(v0 + 200) standardUserDefaults];
        v18._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipRPEncCertValidation.getter();
        v19 = NSUserDefaults.internalBool(forKey:)(v18);

        if (v19)
        {
          defaultLogger()();
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.debug.getter();
          v22 = os_log_type_enabled(v20, v21);
          v23 = *(v0 + 192);
          v24 = *(v0 + 160);
          v25 = *(v0 + 144);
          if (v22)
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v20, v21, "Skipping certificate validation of RP Encryption certificate", v26, 2u);
          }

          v23(v24, v25);
          v27._countAndFlagsBits = 0x3833636461346630;
          v28._countAndFlagsBits = 0xD000000000000072;
          v28._object = 0x8000000100700BC0;
          v27._object = 0xE800000000000000;
          logMilestone(tag:description:)(v27, v28);
          **(v0 + 56) = *(v0 + 248);

          v3 = *(v0 + 8);
          goto LABEL_4;
        }

        v34 = *(v0 + 80);
        v33 = *(v0 + 88);
        v35 = *(v0 + 72);
        *(v0 + 40) = type metadata accessor for DateProvider();
        *(v0 + 48) = &protocol witness table for DateProvider;
        sub_100032DBC((v0 + 16));
        DateProvider.init()();
        DIPOIDVerifier.init(dateProvider:)();
        (*(v34 + 104))(v33, enum case for DIPCertUsage.identityMerchantID(_:), v35);
        v36 = swift_task_alloc();
        *(v0 + 256) = v36;
        *v36 = v0;
        v36[1] = sub_100137B98;
        v9 = *(v0 + 88);
        v29 = v2;

        return DIPOIDVerifier.verifyChain(_:forUsage:)(v29, v9);
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v37)
      {
        goto LABEL_11;
      }

      v39 = *(v0 + 128);
      v38 = *(v0 + 136);
      v40 = *(v0 + 120);

      (*(v39 + 104))(v38, enum case for DIPError.Code.digitalPresentmentInvalidMerchantIDInCertificate(_:), v40);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
LABEL_31:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      goto LABEL_3;
    }

LABEL_30:
    v42 = *(v0 + 128);
    v41 = *(v0 + 136);
    v43 = *(v0 + 120);

    (*(v42 + 104))(v41, enum case for DIPError.Code.digitalPresentmentMissingUIDInCertificate(_:), v43);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_31;
  }

LABEL_3:
  (*(*(v0 + 128) + 104))(*(v0 + 136), enum case for DIPError.Code.internalError(_:), *(v0 + 120));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v3 = *(v0 + 8);
LABEL_4:

  return v3();
}

uint64_t sub_100137B98(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *(*v2 + 80);
  *(*v2 + 264) = v1;

  v7 = (v6 + 8);
  v8 = (v5 + 8);
  if (v1)
  {
    v9 = v4[14];
    v11 = v4[11];
    v10 = v4[12];
    v12 = v4[9];

    (*v7)(v11, v12);
    (*v8)(v9, v10);
    v13 = sub_10013803C;
  }

  else
  {
    v14 = v4[14];
    v16 = v4[11];
    v15 = v4[12];
    v17 = v4[9];

    (*v7)(v16, v17);
    (*v8)(v14, v15);
    v13 = sub_100137D7C;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_100137D7C()
{
  v1._countAndFlagsBits = 0x6361383661633664;
  v2._countAndFlagsBits = 0xD000000000000074;
  v2._object = 0x8000000100700B40;
  v1._object = 0xE800000000000000;
  logMilestone(tag:description:)(v1, v2);
  v3._countAndFlagsBits = 0x3833636461346630;
  v4._object = 0x8000000100700BC0;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0xD000000000000072;
  logMilestone(tag:description:)(v3, v4);
  **(v0 + 56) = *(v0 + 248);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100137EA0()
{
  (*(v0[16] + 104))(v0[17], enum case for DIPError.Code.internalError(_:), v0[15]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10013803C()
{
  (*(v0[16] + 104))(v0[17], enum case for DIPError.Code.digitalPresentmentInvalidMerchantCertificateChain(_:), v0[15]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v0[16] + 104))(v0[17], enum case for DIPError.Code.internalError(_:), v0[15]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10013829C()
{
  v1[3] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10013835C, 0, 0);
}

uint64_t sub_10013835C()
{
  v1 = *(v0[3] + 32);
  v0[7] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[8] = v2;
    v3 = sub_100007224(&qword_10083B4C8, &unk_1006D98C0);
    v4 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    *v2 = v0;
    v2[1] = sub_100138580;

    return Task.value.getter(v0 + 2, v1, v3, v4, &protocol self-conformance witness table for Error);
  }

  else
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100138580()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100138708;
  }

  else
  {
    v2 = sub_100138694;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100138694()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100138708()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100138864()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001388FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10013898C;

  return sub_10013829C();
}

uint64_t sub_10013898C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100138A8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100138ACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_100136BF8(a1, v4, v5, v6);
}

uint64_t sub_100138B80(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100138BDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100138C78(uint64_t a1)
{
  v2[81] = v1;
  v2[80] = a1;
  v3 = type metadata accessor for DIPError.Code();
  v2[82] = v3;
  v2[83] = *(v3 - 8);
  v2[84] = swift_task_alloc();
  v4 = type metadata accessor for IdentityDocumentDescriptor();
  v2[85] = v4;
  v2[86] = *(v4 - 8);
  v2[87] = swift_task_alloc();
  v2[88] = type metadata accessor for DigitalPresentmentCanRequestDocumentAnalyticsRecorder(0);
  v2[89] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v2[90] = swift_task_alloc();
  v5 = type metadata accessor for DIPSignpost();
  v2[91] = v5;
  v2[92] = *(v5 - 8);
  v2[93] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[94] = v6;
  v2[95] = *(v6 - 8);
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();

  return _swift_task_switch(sub_100138EDC, v1, 0);
}

uint64_t sub_100138EDC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentFlow canRequestDocument called", v4, 2u);
  }

  v5 = *(v1 + 800);
  v6 = *(v1 + 760);
  v7 = *(v1 + 752);

  v8 = *(v6 + 8);
  v8(v5, v7);
  v9._countAndFlagsBits = 0xD000000000000026;
  v10._countAndFlagsBits = 0x3236366336646335;
  v9._object = 0x8000000100701130;
  v10._object = 0xE800000000000000;
  logMilestone(tag:description:)(v10, v9);
  static DaemonSignposts.canRequestDocument.getter();
  DIPSignpost.init(_:)();
  sub_100140DB8();
  v91 = v8;
  v11 = *(v1 + 712);
  v12 = *(v1 + 704);
  v13 = *(v1 + 648);
  v93 = *(v1 + 640);
  *v11 = 0;
  v14 = v12[5];
  v15 = type metadata accessor for IdentityDocumentCompoundDescriptor();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(&v11[v14], 1, 1, v15);
  v18 = &v11[v12[6]];
  v18[2] = 0u;
  v18[3] = 0u;
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v12[7];
  *(v1 + 832) = v19;
  v11[v19] = 0;
  v11[v12[8]] = 0;
  v89 = v12[9];
  v11[v89] = 0;
  v20 = v12[10];
  *(v1 + 836) = v20;
  v88 = v20;
  v11[v20] = 0;
  v21 = &v11[v12[11]];
  v21[3] = type metadata accessor for BundleRecordFetcher();
  v21[4] = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(v21);
  BundleRecordFetcher.init()();
  v22 = (v13 + 264);
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[3];
  *(v1 + 352) = v22[2];
  *(v1 + 368) = v25;
  *(v1 + 320) = v23;
  *(v1 + 336) = v24;
  v26 = *v22;
  v27 = v22[1];
  v28 = v22[3];
  *(v1 + 288) = v22[2];
  *(v1 + 304) = v28;
  *(v1 + 256) = v26;
  *(v1 + 272) = v27;
  v29 = *v18;
  v30 = v18[1];
  v31 = v18[3];
  *(v1 + 224) = v18[2];
  *(v1 + 240) = v31;
  *(v1 + 192) = v29;
  *(v1 + 208) = v30;
  sub_100120558(v1 + 320, v1 + 384);
  sub_10000BE18(v1 + 192, &qword_10083B8D0, &qword_1006D9EE8);
  v32 = *(v1 + 304);
  v34 = *(v1 + 256);
  v33 = *(v1 + 272);
  v18[2] = *(v1 + 288);
  v18[3] = v32;
  *v18 = v34;
  v18[1] = v33;
  sub_10000BE18(&v11[v14], &qword_10083AD38, &unk_1006D9010);
  (*(v16 + 16))(&v11[v14], v93, v15);
  v90 = v11;
  v17(&v11[v14], 0, 1, v15);
  result = IdentityDocumentCompoundDescriptor.descriptors.getter();
  v36 = result;
  v94 = *(result + 16);
  if (v94)
  {
    v37 = 0;
    v38 = *(v1 + 688);
    v92 = result;
    while (v37 < *(v36 + 16))
    {
      (*(v38 + 16))(*(v1 + 696), v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37, *(v1 + 680));
      v42 = *v22;
      v41 = v22[1];
      v43 = v22[3];
      *(v1 + 480) = v22[2];
      *(v1 + 496) = v43;
      *(v1 + 448) = v42;
      *(v1 + 464) = v41;
      v45 = *(v1 + 488);
      v44 = *(v1 + 496);
      v46 = objc_opt_self();
      sub_100120558(v1 + 448, v1 + 512);
      v47 = [v46 standardUserDefaults];
      v48._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableElementsEntitlementChecks.getter();
      v49 = NSUserDefaults.internalBool(forKey:)(v48);

      if (v49)
      {
        defaultLogger()();
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "DigitalPresentmentRequest Not checking elements entitlement due to user defaults settings", v52, 2u);
        }

        v39 = *(v1 + 792);
        v40 = *(v1 + 752);

        v8(v39, v40);
      }

      else
      {
        sub_100148358(v45);
        sub_100148D3C(v44);
      }

      ++v37;
      (*(v38 + 8))(*(v1 + 696), *(v1 + 680));

      v36 = v92;
      if (v94 == v37)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v55 = *(v1 + 648);

    v56._countAndFlagsBits = 0xD000000000000035;
    v57._countAndFlagsBits = 0x6637633566383730;
    v56._object = 0x80000001007011E0;
    v57._object = 0xE800000000000000;
    logMilestone(tag:description:)(v57, v56);
    sub_10000BA08((v55 + 336), *(v55 + 360));
    v58 = sub_100134AD0();
    v59 = *(v1 + 648);
    if (v58)
    {
      **(v1 + 712) = 1;
      if (sub_100140A58())
      {
        defaultLogger()();
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&_mh_execute_header, v74, v75, "In test mDL Presentment mode, setting canRequestDocument to true", v76, 2u);
        }

        v77 = *(v1 + 776);
        v78 = *(v1 + 752);

        v91(v77, v78);
        v95 = 1;
        v90[v88] = 1;
        v79._countAndFlagsBits = 0xD00000000000002ALL;
        v80._countAndFlagsBits = 0x3562313830613065;
        v79._object = 0x8000000100701310;
        v80._object = 0xE800000000000000;
        logMilestone(tag:description:)(v80, v79);
        sub_10011F40C();
      }

      else
      {
        defaultLogger()();
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v81, v82, "Device must be signed in and have a passcode set to perform test mDL presentment", v83, 2u);
        }

        v84 = *(v1 + 768);
        v85 = *(v1 + 752);

        v91(v84, v85);
        v86._countAndFlagsBits = 0x3463646265353431;
        v87._countAndFlagsBits = 0xD00000000000003ELL;
        v87._object = 0x80000001007012D0;
        v86._object = 0xE800000000000000;
        logMilestone(tag:description:)(v86, v87);
        v90[v89] = 1;
        sub_10011F40C();
        v95 = 0;
      }

      v53 = *(v1 + 712);
      (*(*(v1 + 736) + 8))(*(v1 + 744), *(v1 + 728));
      sub_10014148C(v53, type metadata accessor for DigitalPresentmentCanRequestDocumentAnalyticsRecorder);

      v54 = *(v1 + 8);

      return v54(v95);
    }

    else
    {
      v60 = v59[7];
      v61 = v59[9];
      *(v1 + 32) = v59[8];
      *(v1 + 48) = v61;
      *(v1 + 16) = v60;
      v62 = v59[10];
      v63 = v59[11];
      v64 = v59[13];
      *(v1 + 96) = v59[12];
      *(v1 + 112) = v64;
      *(v1 + 64) = v62;
      *(v1 + 80) = v63;
      sub_10000BA08((v55 + 336), *(v55 + 360));
      v65 = sub_100134AD0();
      sub_100007224(&qword_100833B78, &unk_1006D9F00);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1006BF520;
      sub_10000BA08((v55 + 336), *(v55 + 360));
      v67 = sub_100134AD0();
      v68 = 0xED0000747365742DLL;
      if ((v67 & 1) == 0)
      {
        v68 = 0xE800000000000000;
      }

      *(v66 + 32) = 0x797469746E656469;
      *(v66 + 40) = v68;
      *(v1 + 808) = sub_10012CD14((v1 + 16), v65 & 1, v66);

      v69 = *v22;
      v70 = v22[1];
      v71 = v22[3];
      *(v1 + 160) = v22[2];
      *(v1 + 176) = v71;
      *(v1 + 128) = v69;
      *(v1 + 144) = v70;
      sub_100120558(v1 + 128, v1 + 576);
      v72 = swift_task_alloc();
      *(v1 + 816) = v72;
      *v72 = v1;
      v72[1] = sub_100139A2C;
      v73 = *(v1 + 640);

      return sub_1001296B0(v1 + 128, v73);
    }
  }

  return result;
}

uint64_t sub_100139A2C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 840) = a1;
  *(v4 + 824) = v1;

  v5 = *(v3 + 648);
  sub_1001205B4(v4 + 128);
  if (v1)
  {
    v6 = sub_100139D78;
  }

  else
  {
    v6 = sub_100139B70;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100139B70()
{
  v1 = *(v0 + 712);
  if (*(v0 + 840) == 1)
  {
    v2 = *(v0 + 648);
    *(v1 + *(v0 + 836)) = 1;
    v3._countAndFlagsBits = 0x3165643733616139;
    v4._object = 0x8000000100701290;
    v3._object = 0xE800000000000000;
    v4._countAndFlagsBits = 0xD000000000000036;
    logMilestone(tag:description:)(v3, v4);
    sub_10000BA08((v2 + 336), *(v2 + 360));
    if ((sub_100134AD0() & 1) == 0)
    {
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
    }
  }

  else
  {
    *(v1 + *(v0 + 832)) = 1;
    v5._countAndFlagsBits = 0x3666656661613465;
    v6._countAndFlagsBits = 0xD00000000000003ALL;
    v6._object = 0x8000000100701250;
    v5._object = 0xE800000000000000;
    logMilestone(tag:description:)(v5, v6);
  }

  sub_10011F40C();
  v10 = *(v0 + 840);
  v7 = *(v0 + 712);
  (*(*(v0 + 736) + 8))(*(v0 + 744), *(v0 + 728));
  sub_10014148C(v7, type metadata accessor for DigitalPresentmentCanRequestDocumentAnalyticsRecorder);

  v8 = *(v0 + 8);

  return v8(v10);
}

uint64_t sub_100139D78()
{
  v9 = v0[93];
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[89];
  v4 = v0[84];
  v5 = v0[83];
  v6 = v0[82];

  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10011F40C();
  (*(v1 + 8))(v9, v2);
  sub_10014148C(v3, type metadata accessor for DigitalPresentmentCanRequestDocumentAnalyticsRecorder);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_100139FD8(uint64_t a1)
{
  v2[176] = v1;
  v2[175] = a1;
  v3 = type metadata accessor for DIPError();
  v2[177] = v3;
  v2[178] = *(v3 - 8);
  v2[179] = swift_task_alloc();
  sub_100007224(&qword_10083AE00, &qword_1006D9ED0);
  v2[180] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[181] = v4;
  v2[182] = *(v4 - 8);
  v2[183] = swift_task_alloc();
  v5 = type metadata accessor for IdentityDocumentPresentmentConfiguration.RelyingParty();
  v2[184] = v5;
  v2[185] = *(v5 - 8);
  v2[186] = swift_task_alloc();
  v6 = type metadata accessor for IdentityDocumentElementCategoryGroups();
  v2[187] = v6;
  v2[188] = *(v6 - 8);
  v2[189] = swift_task_alloc();
  v2[190] = swift_task_alloc();
  sub_100007224(&qword_10083B8C8, &unk_1006D9ED8);
  v2[191] = swift_task_alloc();
  v2[192] = swift_task_alloc();
  v2[193] = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  v2[194] = swift_task_alloc();
  v2[195] = type metadata accessor for WalletPassPresentmentResponse(0);
  v2[196] = swift_task_alloc();
  v7 = type metadata accessor for IdentityDocumentPresentmentConfiguration();
  v2[197] = v7;
  v2[198] = *(v7 - 8);
  v2[199] = swift_task_alloc();
  v8 = type metadata accessor for CredentialPresentmentRequest();
  v2[200] = v8;
  v2[201] = *(v8 - 8);
  v2[202] = swift_task_alloc();
  type metadata accessor for DigitalPresentmentISOBuilder(0);
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  v2[205] = type metadata accessor for DigitalPresentmentCredentialRequestBuilder(0);
  v2[206] = swift_task_alloc();
  v9 = type metadata accessor for ValidatedDigitalPresentmentRequest(0);
  v2[207] = v9;
  v2[208] = *(v9 - 8);
  v2[209] = swift_task_alloc();
  v2[210] = swift_task_alloc();
  v2[211] = type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder(0);
  v2[212] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v2[213] = v10;
  v2[214] = *(v10 - 8);
  v2[215] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v2[216] = swift_task_alloc();
  v11 = type metadata accessor for DIPSignpost();
  v2[217] = v11;
  v2[218] = *(v11 - 8);
  v2[219] = swift_task_alloc();
  v2[220] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  v12 = type metadata accessor for DigitalPresentmentDocumentType();
  v2[222] = v12;
  v2[223] = *(v12 - 8);
  v2[224] = swift_task_alloc();
  v13 = type metadata accessor for IdentityDocumentDescriptor();
  v2[225] = v13;
  v2[226] = *(v13 - 8);
  v2[227] = swift_task_alloc();
  v2[228] = swift_task_alloc();
  v2[229] = swift_task_alloc();
  sub_100007224(&qword_10083AD38, &unk_1006D9010);
  v2[230] = swift_task_alloc();
  v14 = type metadata accessor for IdentityDocumentCompoundDescriptor();
  v2[231] = v14;
  v2[232] = *(v14 - 8);
  v2[233] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v2[234] = v15;
  v2[235] = *(v15 - 8);
  v2[236] = swift_task_alloc();
  v2[237] = swift_task_alloc();
  v2[238] = swift_task_alloc();
  v2[239] = swift_task_alloc();
  v2[240] = swift_task_alloc();
  v2[241] = swift_task_alloc();
  v2[242] = swift_task_alloc();
  v2[243] = swift_task_alloc();

  return _swift_task_switch(sub_10013A760, v1, 0);
}

uint64_t sub_10013A760(uint64_t a1)
{
  v245 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentFlow requestDocument called", v4, 2u);
  }

  v5 = v1[243];
  v6 = v1[235];
  v7 = v1[234];
  v8 = v1;
  v9 = v1[232];
  v10 = v1[231];
  v11 = v1[230];

  v242 = *(v6 + 8);
  v242(v5, v7);
  v12._countAndFlagsBits = 0x3062646332653061;
  v13._countAndFlagsBits = 0xD000000000000024;
  v13._object = 0x8000000100700EA0;
  v12._object = 0xE800000000000000;
  logMilestone(tag:description:)(v12, v13);
  DigitalPresentmentRequest.compoundDescriptor.getter();
  v241 = v1;
  if ((*(v9 + 48))(v11, 1, v10) == 1)
  {
    sub_10000BE18(v1[230], &qword_10083AD38, &unk_1006D9010);
    v14 = v1;
  }

  else
  {
    (*(v1[232] + 32))(v1[233], v1[230], v1[231]);
    v15 = *(IdentityDocumentCompoundDescriptor.descriptors.getter() + 16);

    v14 = v8;
    if (v15)
    {
      v16 = IdentityDocumentCompoundDescriptor.descriptors.getter();
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v8[226];
        v19 = *(v18 + 16);
        v18 += 16;
        v234 = v19;
        v20 = v16 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
        v228 = *(v18 + 56);
        v231 = (v18 - 8);
        v222 = (v8[223] + 8);
        do
        {
          v229 = v20;
          v230 = v17;
          v21 = v14[229];
          v22 = v14[228];
          v23 = v14[225];
          v234(v21);
          defaultLogger()();
          (v234)(v22, v21, v23);
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.debug.getter();
          v26 = os_log_type_enabled(v24, v25);
          v27 = v14[242];
          v28 = v14[234];
          v29 = v14[228];
          v30 = v14[225];
          if (v26)
          {
            v31 = v14[224];
            v226 = v14[234];
            v32 = v14[222];
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v244[0] = v34;
            *v33 = 136315138;
            v224 = v27;
            IdentityDocumentDescriptor.documentType.getter();
            v35 = DigitalPresentmentDocumentType.description.getter();
            v37 = v36;
            (*v222)(v31, v32);
            v38 = *v231;
            (*v231)(v29, v30);
            v39 = sub_100141FE4(v35, v37, v244);

            *(v33 + 4) = v39;
            _os_log_impl(&_mh_execute_header, v24, v25, "DigitalPresentmentFlow requestDocument documentType %s", v33, 0xCu);
            sub_10000BB78(v34);

            v14 = v241;

            v40 = v224;
            v41 = v226;
          }

          else
          {

            v38 = *v231;
            (*v231)(v29, v30);
            v40 = v27;
            v41 = v28;
          }

          v242(v40, v41);
          v42 = v14[229];
          v43 = v14[227];
          v44 = v14[225];
          defaultLogger()();
          (v234)(v43, v42, v44);
          v45 = Logger.logObject.getter();
          v46 = v14;
          v47 = static os_log_type_t.debug.getter();
          v48 = os_log_type_enabled(v45, v47);
          v49 = v46[241];
          v50 = v46[234];
          v51 = v46[229];
          v52 = v46[227];
          v53 = v46[225];
          if (v48)
          {
            v227 = v46[241];
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v244[0] = v55;
            *v54 = 136315138;
            IdentityDocumentDescriptor.elementsToIntentToStore.getter();
            type metadata accessor for IdentityElement();
            v225 = v51;
            type metadata accessor for IdentityIntentToStore();
            v223 = v50;
            v56 = v38;
            sub_1001413DC(&qword_1008347A8, &type metadata accessor for IdentityElement, &protocol conformance descriptor for IdentityElement);
            v57 = Dictionary.description.getter();
            v59 = v58;

            v56(v52, v53);
            v60 = sub_100141FE4(v57, v59, v244);

            *(v54 + 4) = v60;
            _os_log_impl(&_mh_execute_header, v45, v47, "DigitalPresentmentFlow requestDocument elements %s", v54, 0xCu);
            sub_10000BB78(v55);

            v242(v227, v223);
            v56(v225, v53);
          }

          else
          {

            v38(v52, v53);
            v242(v49, v50);
            v38(v51, v53);
          }

          v20 = v229 + v228;
          v17 = v230 - 1;
          v14 = v241;
        }

        while (v230 != 1);
      }

      (*(v14[232] + 8))(v14[233], v14[231]);
    }

    else
    {
      (*(v8[232] + 8))(v8[233], v8[231]);
    }
  }

  v61 = v14[175];
  defaultLogger()();
  v62 = v61;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v244[0] = v66;
    *v65 = 136315138;
    v67 = DigitalPresentmentRequest.nonce.getter();
    if (v68 >> 60 == 15)
    {
      object = 0xE500000000000000;
      countAndFlagsBits = 0x3E6C696E3CLL;
    }

    else
    {
      v75 = v67;
      v76 = v68;
      v77 = Data.base16EncodedString()();
      object = v77._object;
      sub_10000BD94(v75, v76);
      countAndFlagsBits = v77._countAndFlagsBits;
      v14 = v241;
    }

    v78 = v14[240];
    v79 = v14[234];
    v80 = sub_100141FE4(countAndFlagsBits, object, v244);

    *(v65 + 4) = v80;
    v14 = v241;
    _os_log_impl(&_mh_execute_header, v63, v64, "DigitalPresentmentFlow requestDocument nonce %s", v65, 0xCu);
    sub_10000BB78(v66);

    v73 = v78;
    v74 = v79;
  }

  else
  {
    v71 = v14[240];
    v72 = v14[234];

    v73 = v71;
    v74 = v72;
  }

  v242(v73, v74);
  v81 = v14[175];
  defaultLogger()();
  v82 = v81;
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();

  v85 = os_log_type_enabled(v83, v84);
  v86 = v14[239];
  v87 = v14[234];
  if (v85)
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v244[0] = v89;
    *v88 = 136315138;
    v90 = DigitalPresentmentRequest.merchantID.getter();
    if (v91)
    {
      v92 = v91;
    }

    else
    {
      v90 = 0x3E6C696E3CLL;
      v92 = 0xE500000000000000;
    }

    v93 = sub_100141FE4(v90, v92, v244);

    *(v88 + 4) = v93;
    v14 = v241;
    _os_log_impl(&_mh_execute_header, v83, v84, "DigitalPresentmentFlow requestDocument merchantID %s", v88, 0xCu);
    sub_10000BB78(v89);
  }

  v242(v86, v87);
  v94 = v14[175];
  defaultLogger()();
  v95 = v94;
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();

  v98 = os_log_type_enabled(v96, v97);
  v99 = v14[238];
  v100 = v14[234];
  if (v98)
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v244[0] = v102;
    *v101 = 136315138;
    v103 = DigitalPresentmentRequest.merchantNameOverride.getter();
    if (v104)
    {
      v105 = v104;
    }

    else
    {
      v103 = 0x3E6C696E3CLL;
      v105 = 0xE500000000000000;
    }

    v106 = sub_100141FE4(v103, v105, v244);

    *(v101 + 4) = v106;
    v14 = v241;
    _os_log_impl(&_mh_execute_header, v96, v97, "DigitalPresentmentFlow requestDocument context %s", v101, 0xCu);
    sub_10000BB78(v102);
  }

  v242(v99, v100);
  v107 = v14[215];
  v108 = v14[214];
  v109 = v14[213];
  static DaemonSignposts.requestDocument.getter();
  DIPSignpost.init(_:)();
  static DaemonSignposts.requestDocumentValidateRequest.getter();
  DIPSignpost.init(_:)();
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v14[244] = v110;
  v111 = *(v108 + 8);
  v14[245] = v111;
  v14[246] = (v108 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v111(v107, v109);
  sub_100140DB8();
  v112 = v14[212];
  v113 = v14[211];
  v114 = v14[208];
  v115 = v14[207];
  v116 = v14;
  v117 = v14[176];
  *(v112 + 64) = 0;
  *(v112 + 32) = 0u;
  *(v112 + 48) = 0u;
  *v112 = 0u;
  *(v112 + 16) = 0u;
  v118 = v113[6];
  v235 = *(v114 + 56);
  v235(v112 + v118, 1, 1, v115);
  v119 = v113[7];
  *(v116 + 27) = v119;
  *(v112 + v119) = 0;
  v120 = v113[8];
  *(v116 + 51) = v120;
  *(v112 + v120) = 0;
  v121 = v113[9];
  *(v116 + 251) = v121;
  v232 = *(type metadata accessor for ISO18013KnownDocTypes() - 8);
  (*(v232 + 56))(v112 + v121, 1, 1);
  v122 = (v112 + v113[10]);
  v123 = type metadata accessor for BundleRecordFetcher();
  v122[3] = v123;
  v122[4] = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(v122);
  BundleRecordFetcher.init()();
  v124 = *(v117 + 264);
  v125 = *(v117 + 280);
  v126 = *(v117 + 312);
  *(v116 + 31) = *(v117 + 296);
  *(v116 + 32) = v126;
  *(v116 + 29) = v124;
  *(v116 + 30) = v125;
  v127 = *(v117 + 264);
  v128 = *(v117 + 280);
  v129 = *(v117 + 312);
  *(v116 + 27) = *(v117 + 296);
  *(v116 + 28) = v129;
  *(v116 + 25) = v127;
  *(v116 + 26) = v128;
  v130 = *v112;
  v131 = *(v112 + 16);
  v132 = *(v112 + 48);
  *(v116 + 23) = *(v112 + 32);
  *(v116 + 24) = v132;
  *(v116 + 21) = v130;
  *(v116 + 22) = v131;
  sub_100120558((v116 + 58), (v116 + 66));
  sub_10000BE18((v116 + 42), &qword_10083B8D0, &qword_1006D9EE8);
  v133 = *(v116 + 25);
  v134 = *(v116 + 26);
  v135 = *(v116 + 28);
  *(v112 + 32) = *(v116 + 27);
  *(v112 + 48) = v135;
  *v112 = v133;
  *(v112 + 16) = v134;
  if (*(v117 + 328))
  {
    defaultLogger()();
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&_mh_execute_header, v136, v137, "requestDocument: cannot continue because another request is already in progress ", v138, 2u);
    }

    v139 = v116[236];
    v140 = v116[234];
    v141 = v116[183];
    v142 = v241[182];
    v143 = v241[181];

    v242(v139, v140);
    v144._countAndFlagsBits = 0x3962373531336462;
    v145._countAndFlagsBits = 0xD000000000000038;
    v145._object = 0x80000001007010D0;
    v144._object = 0xE800000000000000;
    logMilestone(tag:description:)(v144, v145);
    (*(v142 + 104))(v141, enum case for DIPError.Code.digitalPresentmentRequestAlreadyInProgress(_:), v143);
    v146 = v241;
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_38;
  }

  *(v117 + 328) = 1;
  if (!sub_100140A58())
  {
    v146 = v241;
    v163 = v241[183];
    v164 = v241[182];
    v165 = v241[181];
    v166._countAndFlagsBits = 0x3066623236383366;
    v167._countAndFlagsBits = 0xD000000000000035;
    v167._object = 0x8000000100700EF0;
    v166._object = 0xE800000000000000;
    logMilestone(tag:description:)(v166, v167);
    (*(v164 + 104))(v163, enum case for DIPError.Code.digitalPresentmentNotLoggedInWithPasscode(_:), v165);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    *(v117 + 328) = 0;
LABEL_38:
    v243 = v146[221];
    v236 = v146[220];
    v238 = *(v146 + 27);
    v147 = v146[218];
    v233 = v146[217];
    v148 = v146[212];
    v149 = v241[179];
    v150 = v241[178];
    v151 = v241[177];
    (*(v146[182] + 104))(v146[183], enum case for DIPError.Code.internalError(_:), v146[181]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v152 = swift_allocError();
    v153 = *(v150 + 16);
    v153(v154, v149, v151);
    *(v148 + v238) = v152;
    swift_allocError();
    v153(v155, v149, v151);
    swift_willThrow();

    (*(v150 + 8))(v149, v151);
    sub_100140774(v148);
    v156 = *(v147 + 8);
    v156(v236, v233);
    v156(v243, v233);
    sub_10014148C(v148, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);

    v157 = v241[1];

    return v157();
  }

  v159 = v241;
  v239 = v241[210];
  v160 = *(v117 + 312);
  v162 = *(v117 + 264);
  v161 = *(v117 + 280);
  *(v241 + 47) = *(v117 + 296);
  *(v241 + 48) = v160;
  *(v241 + 45) = v162;
  *(v241 + 46) = v161;
  v241[159] = v123;
  v241[160] = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(v241 + 156);
  sub_100120558((v159 + 90), (v159 + 82));
  BundleRecordFetcher.init()();
  sub_100143E68(v159 + 45, (v159 + 156), v239);
  v168 = v241[210];
  v169 = v241[207];
  v170 = v241[176];
  sub_1001205B4((v241 + 90));
  sub_10000BB78(v241 + 156);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v171._countAndFlagsBits = 0x3536326538643062;
  v172._countAndFlagsBits = 0xD000000000000022;
  v172._object = 0x8000000100700F80;
  v171._object = 0xE800000000000000;
  logMilestone(tag:description:)(v171, v172);
  sub_10000BE18(v112 + v118, &qword_10083AD20, &qword_1006D9EF0);
  sub_100141424(v168, v112 + v118, type metadata accessor for ValidatedDigitalPresentmentRequest);
  v173 = 1;
  v235(v112 + v118, 0, 1, v169);
  sub_10000BA08((v170 + 336), *(v170 + 360));
  if ((sub_100134AD0() & 1) == 0)
  {
    v174 = [objc_opt_self() standardUserDefaults];
    v175._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableDigitalPresentmentPassLookup.getter();
    v173 = NSUserDefaults.internalBool(forKey:)(v175);
  }

  *(v241 + 105) = v173;
  sub_10000BA08((v170 + 336), *(v170 + 360));
  if (sub_100134AD0())
  {
    v176 = v241[210];
    v177 = v241[209];
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v178 = swift_allocObject();
    *(v178 + 16) = xmmword_1006BF520;
    sub_10000BA08((v170 + 336), *(v170 + 360));
    v179 = sub_100134AD0();
    v180 = 0xE800000000000000;
    if (v179)
    {
      v180 = 0xED0000747365742DLL;
    }

    *(v178 + 32) = 0x797469746E656469;
    *(v178 + 40) = v180;
    defaultLogger()();
    sub_100141424(v176, v177, type metadata accessor for ValidatedDigitalPresentmentRequest);
    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.debug.getter();
    v183 = os_log_type_enabled(v181, v182);
    v184 = v241[237];
    v185 = v241[234];
    v186 = v241[209];
    if (v183)
    {
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v244[0] = v188;
      *v187 = 136315138;
      v240 = v184;

      sub_100007224(&qword_10083B240, &qword_1006D9668);
      v237 = v185;
      sub_1001413DC(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes, &protocol conformance descriptor for ISO18013KnownDocTypes);
      v189 = Dictionary.Keys.description.getter();
      v191 = v190;

      sub_10014148C(v186, type metadata accessor for ValidatedDigitalPresentmentRequest);
      v192 = sub_100141FE4(v189, v191, v244);

      *(v187 + 4) = v192;
      _os_log_impl(&_mh_execute_header, v181, v182, "Creating developer test document for docTypes %s", v187, 0xCu);
      sub_10000BB78(v188);

      v242(v240, v237);
    }

    else
    {

      v242(v184, v185);
      sub_10014148C(v186, type metadata accessor for ValidatedDigitalPresentmentRequest);
    }

    v202 = v241;
    v203 = v241[210];
    v204 = *v203;
    v205 = *(*v203 + 16);
    if (v205)
    {
      v206 = sub_1003BA12C(*(*v203 + 16), 0);
      v207 = sub_1003BC9B0(v244, &v206[(*(v232 + 80) + 32) & ~*(v232 + 80)], v205, v204);
      v208 = v244[0];

      result = sub_10001FA6C(v208);
      if (v207 != v205)
      {
        __break(1u);
        return result;
      }

      v202 = v241;
    }

    else
    {
      v206 = _swiftEmptyArrayStorage;
    }

    v202[164] = &type metadata for IDCredCredentialStore;
    v202[165] = &off_100815A88;
    v202[161] = v178;
    type metadata accessor for DeveloperTestMDLManager();
    v216 = swift_allocObject();
    v217 = sub_10001F370((v202 + 161), &type metadata for IDCredCredentialStore);
    v218 = swift_task_alloc();
    value witness table for Builtin.BridgeObject[2](v218, v217, &type metadata for IDCredCredentialStore);
    v202[247] = sub_1001602C4(*v218, v206, v216);
    sub_10000BB78(v202 + 161);

    v219 = swift_task_alloc();
    v202[248] = v219;
    *v219 = v202;
    v219[1] = sub_10013C364;

    return sub_100103DF4();
  }

  else
  {
    v193 = v241[210];
    v194 = v241[176];
    v195 = *(v194 + 144);
    v196 = *(v193 + 24);
    v241[250] = v196;
    v197 = *(v193 + 32);
    v241[251] = v197;
    if (v195)
    {
      v198 = *(v194 + 152);

      v195(v199);
      sub_10001FE8C(v195, v198);
      v200 = v241[129];
      v201 = v241[130];
    }

    else
    {
      v200 = type metadata accessor for DigitalPresentmentEncryptionCertificateFetcher();
      swift_allocObject();

      v209 = sub_1001367D0(v196, v197, 0);
      v241[129] = v200;
      v201 = &off_100809C38;
      v241[130] = &off_100809C38;
      v241[126] = v209;
    }

    v210 = v241[210];
    v211 = v241[206];
    v212 = v241[205];
    v213 = v241[204];
    v214 = v241[202];
    v215 = v241[176];
    sub_10000BA08(v241 + 126, v200);
    (v201[1])(v200, v201);
    sub_100141424(v210, v211, type metadata accessor for ValidatedDigitalPresentmentRequest);
    sub_10000BA08((v215 + 336), *(v215 + 360));
    *(v211 + *(v212 + 20)) = sub_100134AD0() & 1;
    sub_100141424(v210, v213, type metadata accessor for ValidatedDigitalPresentmentRequest);
    sub_10012D294(v214);
    sub_10000BA08((v241[176] + 472), *(v241[176] + 496));
    v220 = swift_task_alloc();
    v241[252] = v220;
    *v220 = v241;
    v220[1] = sub_10013CB88;
    v221 = v241[202];

    return sub_100422860(v221);
  }
}

uint64_t sub_10013C364()
{
  v2 = *v1;
  *(*v1 + 1992) = v0;

  v3 = *(v2 + 1408);
  if (v0)
  {
    v4 = sub_1001402E8;
  }

  else
  {
    v4 = sub_10013C490;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10013C490()
{
  *(*(v0 + 1696) + *(v0 + 204)) = 1;
  v1._countAndFlagsBits = 0x3061663537656538;
  v2._countAndFlagsBits = 0xD00000000000002FLL;
  v2._object = 0x80000001007010A0;
  v1._object = 0xE800000000000000;
  logMilestone(tag:description:)(v1, v2);

  v39 = *(v0 + 1992);
  v3 = *(v0 + 1680);
  v4 = *(v0 + 1408);
  v5 = *(v4 + 144);
  v6 = *(v3 + 24);
  *(v0 + 2000) = v6;
  v7 = *(v3 + 32);
  *(v0 + 2008) = v7;
  if (v5)
  {
    v8 = *(v4 + 152);

    v5(v9);
    sub_10001FE8C(v5, v8);
    v10 = *(v0 + 1032);
    v11 = *(v0 + 1040);
  }

  else
  {
    v10 = type metadata accessor for DigitalPresentmentEncryptionCertificateFetcher();
    swift_allocObject();

    v12 = sub_1001367D0(v6, v7, 0);
    *(v0 + 1032) = v10;
    v11 = &off_100809C38;
    *(v0 + 1040) = &off_100809C38;
    *(v0 + 1008) = v12;
  }

  v13 = *(v0 + 1680);
  v14 = *(v0 + 1648);
  v15 = *(v0 + 1640);
  v16 = *(v0 + 1632);
  v17 = *(v0 + 1616);
  v18 = *(v0 + 1408);
  sub_10000BA08((v0 + 1008), v10);
  (v11[1])(v10, v11);
  sub_100141424(v13, v14, type metadata accessor for ValidatedDigitalPresentmentRequest);
  sub_10000BA08((v18 + 336), *(v18 + 360));
  *(v14 + *(v15 + 20)) = sub_100134AD0() & 1;
  sub_100141424(v13, v16, type metadata accessor for ValidatedDigitalPresentmentRequest);
  sub_10012D294(v17);
  if (v39)
  {
    v19 = *(v0 + 1680);
    v20 = *(v0 + 1648);
    v21 = *(v0 + 1408);
    sub_10014148C(*(v0 + 1632), type metadata accessor for DigitalPresentmentISOBuilder);
    sub_10014148C(v20, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
    sub_10014148C(v19, type metadata accessor for ValidatedDigitalPresentmentRequest);
    sub_10000BB78((v0 + 1008));
    *(v21 + 328) = 0;
    v38 = *(v0 + 1768);
    v40 = *(v0 + 108);
    v35 = *(v0 + 1744);
    v36 = *(v0 + 1736);
    v37 = *(v0 + 1760);
    v22 = *(v0 + 1696);
    v23 = *(v0 + 1432);
    v24 = *(v0 + 1424);
    v25 = *(v0 + 1416);
    (*(*(v0 + 1456) + 104))(*(v0 + 1464), enum case for DIPError.Code.internalError(_:), *(v0 + 1448));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v26 = swift_allocError();
    v27 = *(v24 + 16);
    v27(v28, v23, v25);
    *(v22 + v40) = v26;
    swift_allocError();
    v27(v29, v23, v25);
    swift_willThrow();

    (*(v24 + 8))(v23, v25);
    sub_100140774(v22);
    v30 = *(v35 + 8);
    v30(v37, v36);
    v30(v38, v36);
    sub_10014148C(v22, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    sub_10000BA08((*(v0 + 1408) + 472), *(*(v0 + 1408) + 496));
    v33 = swift_task_alloc();
    *(v0 + 2016) = v33;
    *v33 = v0;
    v33[1] = sub_10013CB88;
    v34 = *(v0 + 1616);

    return sub_100422860(v34);
  }
}

uint64_t sub_10013CB88(uint64_t a1)
{
  v3 = *v2;
  v3[253] = a1;
  v3[254] = v1;

  v4 = v3[176];
  if (v1)
  {
    v5 = sub_10013D5F0;
  }

  else
  {
    v5 = sub_10013CCA4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10013CCA4()
{
  v70 = *(v0 + 2024);
  v1 = *(v0 + 1680);
  v2 = *(v0 + 1656);
  v74 = *(v0 + 2032);
  v3 = *(v0 + 1408);
  v4 = (v3 + 264);
  static DaemonSignposts.requestDocumentBuildUIConfiguration.getter();
  DIPSignpost.init(_:)();
  v5 = *(v3 + 456);
  *(v0 + 2040) = v5;
  v6 = *(v3 + 464);
  *(v0 + 2048) = v6;
  v7 = (v1 + *(v2 + 36));
  v8 = *v7;
  *(v0 + 2056) = *v7;
  v9 = v7[1];
  *(v0 + 2064) = v9;

  v10 = DigitalPresentmentRequest.merchantNameOverride.getter();
  v12 = v11;
  v13 = v4[1];
  v15 = v4[2];
  v14 = v4[3];
  *(v0 + 784) = *v4;
  *(v0 + 800) = v13;
  *(v0 + 816) = v15;
  *(v0 + 832) = v14;
  v16 = *(v0 + 824);
  v17 = *(v0 + 816) & 1;
  v18 = *(v0 + 800);
  *(v0 + 272) = *(v0 + 784);
  *(v0 + 288) = v18;
  *(v0 + 304) = v17;
  *(v0 + 312) = v16;
  *(v0 + 320) = *(v0 + 832);
  v19 = *(v6 + 16);
  *(v0 + 1232) = v5;
  *(v0 + 1240) = v6;
  *(v0 + 2072) = sub_100032DBC((v0 + 1208));
  v19(v70, v8, v9, v10, v12, v0 + 272, v5, v6);
  v20 = *(v6 + 24);
  sub_100120558(v0 + 784, v0 + 208);
  v20(v5, v6);
  if (v74)
  {
    v21 = *(v0 + 1752);
    v22 = *(v0 + 1744);
    v23 = *(v0 + 1736);
    v72 = *(v0 + 1680);
    v24 = *(v0 + 1648);
    v25 = *(v0 + 1632);
    v26 = *(v0 + 1616);
    v27 = *(v0 + 1608);
    v28 = *(v0 + 1600);
    v29 = *(v0 + 1408);

    (*(v22 + 8))(v21, v23);
    (*(v27 + 8))(v26, v28);
    sub_10014148C(v25, type metadata accessor for DigitalPresentmentISOBuilder);
    sub_10014148C(v24, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
    sub_10014148C(v72, type metadata accessor for ValidatedDigitalPresentmentRequest);
    sub_10000BB78((v0 + 1208));
    sub_10000BB78((v0 + 1008));
    *(v29 + 328) = 0;
    v71 = *(v0 + 1768);
    v73 = *(v0 + 108);
    v30 = *(v0 + 1744);
    v68 = *(v0 + 1736);
    v69 = *(v0 + 1760);
    v31 = *(v0 + 1696);
    v32 = *(v0 + 1432);
    v33 = *(v0 + 1424);
    v34 = *(v0 + 1416);
    (*(*(v0 + 1456) + 104))(*(v0 + 1464), enum case for DIPError.Code.internalError(_:), *(v0 + 1448));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v35 = swift_allocError();
    v36 = *(v33 + 16);
    v36(v37, v32, v34);
    *(v31 + v73) = v35;
    swift_allocError();
    v36(v38, v32, v34);
    swift_willThrow();

    (*(v33 + 8))(v32, v34);
    sub_100140774(v31);
    v39 = *(v30 + 8);
    v39(v69, v68);
    v39(v71, v68);
    sub_10014148C(v31, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v42 = *(v0 + 1408);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v43 = *(v42 + 176);
    if (v43)
    {
      v44 = *(*(v0 + 1408) + 184);

      v43(v45);
      sub_10001FE8C(v43, v44);
    }

    else
    {
      v46 = *(v0 + 1632);
      v47 = *(v0 + 1624);
      v48 = *(v0 + 1408);
      sub_100020260(v0 + 1008, v0 + 1088);
      sub_100141424(v46, v47, type metadata accessor for DigitalPresentmentISOBuilder);
      sub_100020260(v48 + 224, v0 + 1128);
      v49 = *(v0 + 1152);
      v50 = sub_10001F370(v0 + 1128, v49);
      v51 = *(v49 - 8);
      v52 = swift_task_alloc();
      (*(v51 + 16))(v52, v50, v49);
      v53 = *v52;
      v54 = type metadata accessor for DigitalPresentmentSessionManager();
      *(v0 + 1192) = v54;
      *(v0 + 1200) = &off_100809E48;
      *(v0 + 1168) = v53;
      v55 = type metadata accessor for DigitalPresentmentResponseBuilder(0);
      v56 = swift_allocObject();
      v57 = sub_10001F370(v0 + 1168, v54);
      v58 = *(v54 - 8);
      v59 = swift_task_alloc();
      (*(v58 + 16))(v59, v57, v54);
      v60 = *v59;
      v61 = (v56 + OBJC_IVAR____TtC8coreidvd33DigitalPresentmentResponseBuilder_presentmentSessionManager);
      v61[3] = v54;
      v61[4] = &off_100809E48;
      *v61 = v60;
      sub_10001F358((v0 + 1088), v56 + 16);
      sub_100141210(v47, v56 + OBJC_IVAR____TtC8coreidvd33DigitalPresentmentResponseBuilder_isoBuilder);
      sub_10000BB78((v0 + 1168));

      sub_10000BB78((v0 + 1128));

      *(v0 + 1072) = v55;
      *(v0 + 1080) = &off_100809E30;
      *(v0 + 1048) = v56;
    }

    sub_10000BA08((*(v0 + 1408) + 472), *(*(v0 + 1408) + 496));
    v62 = swift_task_alloc();
    *(v0 + 2080) = v62;
    *v62 = v0;
    v62[1] = sub_10013DAD8;
    v63 = *(v0 + 2024);
    v64 = *(v0 + 2008);
    v65 = *(v0 + 2000);
    v66 = *(v0 + 1592);
    v67 = *(v0 + 1568);

    return sub_1004242EC(v67, v66, v0 + 1048, v63, v65, v64, 0, 0xF000000000000000);
  }
}

uint64_t sub_10013D5F0()
{
  v1 = *(v0 + 1680);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1408);
  (*(*(v0 + 1608) + 8))(*(v0 + 1616), *(v0 + 1600));
  sub_10014148C(v3, type metadata accessor for DigitalPresentmentISOBuilder);
  sub_10014148C(v2, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
  sub_10014148C(v1, type metadata accessor for ValidatedDigitalPresentmentRequest);
  sub_10000BB78((v0 + 1008));
  *(v4 + 328) = 0;
  v20 = *(v0 + 1768);
  v21 = *(v0 + 108);
  v5 = *(v0 + 1744);
  v18 = *(v0 + 1736);
  v19 = *(v0 + 1760);
  v6 = *(v0 + 1696);
  v7 = *(v0 + 1432);
  v8 = *(v0 + 1424);
  v9 = *(v0 + 1416);
  (*(*(v0 + 1456) + 104))(*(v0 + 1464), enum case for DIPError.Code.internalError(_:), *(v0 + 1448));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v10 = swift_allocError();
  v11 = *(v8 + 16);
  v11(v12, v7, v9);
  *(v6 + v21) = v10;
  swift_allocError();
  v11(v13, v7, v9);
  swift_willThrow();

  (*(v8 + 8))(v7, v9);
  v14 = v6;
  sub_100140774(v6);
  v15 = *(v5 + 8);
  v15(v19, v18);
  v15(v20, v18);
  sub_10014148C(v14, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10013DAD8()
{
  v2 = *v1;
  *(*v1 + 2088) = v0;

  v3 = *(v2 + 1408);

  if (v0)
  {
    v4 = sub_10013EE78;
  }

  else
  {
    v4 = sub_10013DC20;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10013DC20()
{
  v1 = *(v0 + 105);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1536);
  sub_100141424(*(v0 + 1568) + *(*(v0 + 1560) + 24), v2, type metadata accessor for DigitalPresentmentEligibleProposalData);
  v4 = IdentityDocumentPresentmentConfiguration.eligibleCredentials.getter();
  *(swift_task_alloc() + 16) = v2;
  sub_100161D58(sub_100141274, v4, v3);

  if (v1)
  {
    v5 = *(v0 + 1004);
    v6 = *(v0 + 1696);
    v7 = *(v0 + 1440);
    v8 = *(v0 + 1408);
    *(v6 + 64) = 1;

    ISO18013KnownDocTypes.init(rawValue:)();
    sub_100141304(v7, v6 + v5);
    sub_10000BA08((v8 + 336), *(v8 + 360));
    if (sub_100134AD0())
    {
      v100 = *(v0 + 1760);
      v101 = *(v0 + 1768);
      v9 = *(v0 + 1744);
      v94 = *(v0 + 1736);
      v95 = *(v0 + 1752);
      v98 = *(v0 + 1680);
      v99 = *(v0 + 1696);
      v97 = *(v0 + 1648);
      v128 = *(v0 + 1632);
      v131 = *(v0 + 1616);
      v10 = *(v0 + 1608);
      v11._countAndFlagsBits = 0xD000000000000018;
      v12 = *(v0 + 1592);
      v13 = *(v0 + 1584);
      v92 = *(v0 + 1576);
      v93 = *(v0 + 1600);
      v14 = *(v0 + 1568);
      v124 = *(v0 + 1552);
      v15 = *(v0 + 1536);
      v96 = *(v0 + 1408);
      v16._countAndFlagsBits = 0x6161303838616331;
      v11._object = 0x8000000100701040;
      v16._object = 0xE800000000000000;
      logMilestone(tag:description:)(v16, v11);
      v18 = *v14;
      v17 = v14[1];
      v19 = objc_allocWithZone(type metadata accessor for DigitalPresentmentResponse());
      sub_10000B8B8(v18, v17);
      v107 = DigitalPresentmentResponse.init(encryptedData:)();
      sub_10000BE18(v15, &qword_10083B8C8, &unk_1006D9ED8);
      sub_10014148C(v14, type metadata accessor for WalletPassPresentmentResponse);
      (*(v13 + 8))(v12, v92);
      v20 = *(v9 + 8);
      v20(v95, v94);
      (*(v10 + 8))(v131, v93);
      sub_10014148C(v128, type metadata accessor for DigitalPresentmentISOBuilder);
      sub_10014148C(v97, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
      sub_10000BB78((v0 + 1048));
      sub_10014148C(v98, type metadata accessor for ValidatedDigitalPresentmentRequest);
      sub_10014148C(v124, type metadata accessor for DigitalPresentmentEligibleProposalData);
      sub_10000BB78((v0 + 1208));
      sub_10000BB78((v0 + 1008));
      *(v96 + 328) = 0;
      sub_100140774(v99);
      v20(v100, v94);
      v20(v101, v94);
      sub_10014148C(v99, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);

      v21 = *(v0 + 8);

      return v21(v107);
    }

    else
    {
      v34 = *(v0 + 1960);
      v35 = *(v0 + 1720);
      v36 = *(v0 + 1704);
      v37 = *(v0 + 1552);
      v38 = *(v0 + 1544);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      Date.init()();
      Date.timeIntervalSince1970.getter();
      *(v0 + 2120) = v39;
      v34(v35, v36);
      v40 = (v37 + *(v38 + 24));
      v41 = v40[3];
      v42 = v40[4];
      sub_10000BA08(v40, v41);
      v132 = (*(v42 + 16) + **(v42 + 16));
      v43 = swift_task_alloc();
      *(v0 + 2128) = v43;
      *v43 = v0;
      v43[1] = sub_10013FBB0;

      return v132(v41, v42);
    }
  }

  v23 = *(v0 + 1552);
  v24 = *(v23 + *(*(v0 + 1544) + 20));
  *(v0 + 2096) = v24;
  if (!v24)
  {
    v44 = *(v0 + 1744);
    v129 = *(v0 + 1680);
    v133 = *(v0 + 1752);
    v125 = *(v0 + 1648);
    v120 = *(v0 + 1632);
    v117 = *(v0 + 1616);
    v119 = *(v0 + 1736);
    v45 = *(v0 + 1608);
    v113 = *(v0 + 1592);
    v115 = *(v0 + 1600);
    v46 = *(v0 + 1584);
    v109 = *(v0 + 1568);
    v111 = *(v0 + 1576);
    v106 = *(v0 + 1536);
    v122 = *(v0 + 1408);
    (*(*(v0 + 1456) + 104))(*(v0 + 1464), enum case for DIPError.Code.unexpectedDaemonState(_:), *(v0 + 1448));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v29 = v23;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v106, &qword_10083B8C8, &unk_1006D9ED8);
    sub_10014148C(v109, type metadata accessor for WalletPassPresentmentResponse);
    (*(v46 + 8))(v113, v111);
    (*(v44 + 8))(v133, v119);
    (*(v45 + 8))(v117, v115);
    goto LABEL_13;
  }

  v25 = *(v0 + 1528);
  sub_100141294(*(v0 + 1536), v25);
  v26 = type metadata accessor for IdentityDocumentPresentmentConfiguration.Credential();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v116 = *(v0 + 1736);
    v118 = *(v0 + 1752);
    v125 = *(v0 + 1648);
    v129 = *(v0 + 1680);
    v120 = *(v0 + 1632);
    v108 = *(v0 + 1608);
    v110 = *(v0 + 1744);
    v112 = *(v0 + 1600);
    v114 = *(v0 + 1616);
    v28 = *(v0 + 1584);
    v104 = *(v0 + 1576);
    v105 = *(v0 + 1592);
    v29 = *(v0 + 1552);
    v102 = *(v0 + 1536);
    v103 = *(v0 + 1568);
    v30 = *(v0 + 1528);
    v31 = *(v0 + 1464);
    v32 = *(v0 + 1456);
    v33 = *(v0 + 1448);
    v122 = *(v0 + 1408);

    sub_10000BE18(v30, &qword_10083B8C8, &unk_1006D9ED8);
    (*(v32 + 104))(v31, enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:), v33);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BE18(v102, &qword_10083B8C8, &unk_1006D9ED8);
    sub_10014148C(v103, type metadata accessor for WalletPassPresentmentResponse);
    (*(v28 + 8))(v105, v104);
    (*(v110 + 8))(v118, v116);
    (*(v108 + 8))(v114, v112);
LABEL_13:
    sub_10014148C(v120, type metadata accessor for DigitalPresentmentISOBuilder);
    sub_10014148C(v125, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
    sub_10000BB78((v0 + 1048));
    sub_10014148C(v129, type metadata accessor for ValidatedDigitalPresentmentRequest);
    sub_10014148C(v29, type metadata accessor for DigitalPresentmentEligibleProposalData);
    sub_10000BB78((v0 + 1208));
    sub_10000BB78((v0 + 1008));
    *(v122 + 328) = 0;
    v130 = *(v0 + 1768);
    v134 = *(v0 + 108);
    v121 = *(v0 + 1744);
    v123 = *(v0 + 1736);
    v126 = *(v0 + 1760);
    v47 = *(v0 + 1696);
    v48 = *(v0 + 1432);
    v49 = *(v0 + 1424);
    v50 = *(v0 + 1416);
    (*(*(v0 + 1456) + 104))(*(v0 + 1464), enum case for DIPError.Code.internalError(_:), *(v0 + 1448));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v51 = swift_allocError();
    v52 = *(v49 + 16);
    v52(v53, v48, v50);
    *(v47 + v134) = v51;
    swift_allocError();
    v52(v54, v48, v50);
    swift_willThrow();

    (*(v49 + 8))(v48, v50);
    sub_100140774(v47);
    v55 = *(v121 + 8);
    v55(v126, v123);
    v55(v130, v123);
    sub_10014148C(v47, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);

    v56 = *(v0 + 8);

    return v56();
  }

  v57 = *(v0 + 2048);
  v127 = *(v0 + 2040);
  v58 = *(v0 + 1528);
  v59 = *(v0 + 1520);
  v60 = *(v0 + 1512);
  v61 = *(v0 + 1504);
  v62 = *(v0 + 1496);
  v63 = (*(v0 + 1408) + 264);

  IdentityDocumentPresentmentConfiguration.Credential.elementCategoryGroups.getter();
  (*(v27 + 8))(v58, v26);
  (*(v61 + 32))(v59, v60, v62);
  v64 = v63[2];
  v65 = v63[3];
  v66 = v63[1];
  *(v0 + 848) = *v63;
  *(v0 + 864) = v66;
  *(v0 + 880) = v64;
  *(v0 + 896) = v65;
  v67 = *(v57 + 8);

  sub_100120558(v0 + 848, v0 + 592);
  v67(v127, v57);
  v68 = *(v0 + 968);
  if (v68)
  {
    v69 = *(v0 + 992);
    v70 = *(v0 + 1000);
    *(v0 + 1368) = *(v0 + 960);
    *(v0 + 1376) = v68;
    sub_10004D860(v0 + 1368);
    *(v0 + 1384) = *(v0 + 976);
    sub_10004D860(v0 + 1384);
  }

  else
  {
    v69 = 0;
    v70 = 1;
  }

  v71 = *(v0 + 2008);
  v72 = *(v0 + 2000);
  v73 = *(v0 + 1680);
  v74 = *(v0 + 1656);
  v75 = *(v0 + 1488);
  v76 = *(v0 + 1480);
  v77 = *(v0 + 1472);
  *(v0 + 112) = v72;
  *(v0 + 120) = v71;
  v78 = *(v0 + 864);
  *(v0 + 128) = *(v0 + 848);
  *(v0 + 144) = v78;
  v79 = *(v0 + 896);
  *(v0 + 160) = *(v0 + 880);
  *(v0 + 176) = v79;
  *(v0 + 192) = v69;
  *(v0 + 200) = v70 & 1;
  v80 = *(v0 + 184);
  v81 = *(v0 + 160) & 1;
  *(v0 + 16) = v72;
  *(v0 + 24) = v71;
  v82 = *(v0 + 144);
  *(v0 + 32) = *(v0 + 128);
  *(v0 + 48) = v82;
  *(v0 + 64) = v81;
  *(v0 + 72) = *(v0 + 168);
  *(v0 + 88) = v80;
  *(v0 + 96) = v69;
  *(v0 + 104) = v70 & 1;
  v83 = *(v73 + 40);
  v84 = *(v73 + 48);
  v85 = *(v74 + 32);
  IdentityDocumentPresentmentConfiguration.relyingParty.getter();
  v86 = IdentityDocumentPresentmentConfiguration.RelyingParty.name.getter();
  v88 = v87;
  *(v0 + 2104) = v87;
  (*(v76 + 8))(v75, v77);
  v89 = swift_task_alloc();
  *(v0 + 2112) = v89;
  *v89 = v0;
  v89[1] = sub_10013F3C0;
  v90 = *(v0 + 2056);
  v91 = *(v0 + 1520);

  return sub_10050E820(v91, v0 + 16, v83, v84, v73 + v85, v86, v88, v90);
}

uint64_t sub_10013EE78()
{
  v1 = *(v0 + 1752);
  v2 = *(v0 + 1744);
  v3 = *(v0 + 1736);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1648);
  v6 = *(v0 + 1632);
  v7 = *(v0 + 1616);
  v8 = *(v0 + 1608);
  v9 = *(v0 + 1600);
  v26 = *(v0 + 1408);
  (*(*(v0 + 1584) + 8))(*(v0 + 1592), *(v0 + 1576));
  (*(v2 + 8))(v1, v3);
  (*(v8 + 8))(v7, v9);
  sub_10014148C(v6, type metadata accessor for DigitalPresentmentISOBuilder);
  sub_10014148C(v5, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
  sub_10000BB78((v0 + 1048));
  sub_10014148C(v4, type metadata accessor for ValidatedDigitalPresentmentRequest);
  sub_10000BB78((v0 + 1208));
  sub_10000BB78((v0 + 1008));
  *(v26 + 328) = 0;
  v25 = *(v0 + 1768);
  v27 = *(v0 + 108);
  v10 = *(v0 + 1744);
  v23 = *(v0 + 1736);
  v24 = *(v0 + 1760);
  v11 = *(v0 + 1696);
  v12 = *(v0 + 1432);
  v13 = *(v0 + 1424);
  v14 = *(v0 + 1416);
  (*(*(v0 + 1456) + 104))(*(v0 + 1464), enum case for DIPError.Code.internalError(_:), *(v0 + 1448));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v15 = swift_allocError();
  v16 = *(v13 + 16);
  v16(v17, v12, v14);
  *(v11 + v27) = v15;
  swift_allocError();
  v16(v18, v12, v14);
  swift_willThrow();

  (*(v13 + 8))(v12, v14);
  v19 = v11;
  sub_100140774(v11);
  v20 = *(v10 + 8);
  v20(v24, v23);
  v20(v25, v23);
  sub_10014148C(v19, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10013F3C0()
{
  v1 = *v0;
  v2 = *(*v0 + 1408);

  sub_10000BE18(v1 + 112, &qword_10083B8D8, &qword_1006D9EF8);

  return _swift_task_switch(sub_10013F50C, v2, 0);
}

uint64_t sub_10013F50C()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1504);
  v3 = *(v0 + 1496);
  v4._countAndFlagsBits = 0x3763306238613031;
  v5._countAndFlagsBits = 0xD000000000000026;
  v5._object = 0x8000000100701010;
  v4._object = 0xE800000000000000;
  logMilestone(tag:description:)(v4, v5);

  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 1004);
  v7 = *(v0 + 1696);
  v8 = *(v0 + 1440);
  v9 = *(v0 + 1408);
  *(v7 + 64) = 1;

  ISO18013KnownDocTypes.init(rawValue:)();
  sub_100141304(v8, v7 + v6);
  sub_10000BA08((v9 + 336), *(v9 + 360));
  if (sub_100134AD0())
  {
    v42 = *(v0 + 1760);
    v43 = *(v0 + 1768);
    v10 = *(v0 + 1744);
    v36 = *(v0 + 1736);
    v37 = *(v0 + 1752);
    v40 = *(v0 + 1680);
    v41 = *(v0 + 1696);
    v39 = *(v0 + 1648);
    v46 = *(v0 + 1632);
    v47 = *(v0 + 1616);
    v11 = *(v0 + 1608);
    v12 = *(v0 + 1592);
    v13 = *(v0 + 1584);
    v34 = *(v0 + 1576);
    v35 = *(v0 + 1600);
    v14 = *(v0 + 1568);
    v45 = *(v0 + 1552);
    v15 = *(v0 + 1536);
    v38 = *(v0 + 1408);
    v16._countAndFlagsBits = 0x6161303838616331;
    v17._object = 0x8000000100701040;
    v16._object = 0xE800000000000000;
    v17._countAndFlagsBits = 0xD000000000000018;
    logMilestone(tag:description:)(v16, v17);
    v18 = *v14;
    v19 = v14[1];
    v20 = objc_allocWithZone(type metadata accessor for DigitalPresentmentResponse());
    sub_10000B8B8(v18, v19);
    v44 = DigitalPresentmentResponse.init(encryptedData:)();
    sub_10000BE18(v15, &qword_10083B8C8, &unk_1006D9ED8);
    sub_10014148C(v14, type metadata accessor for WalletPassPresentmentResponse);
    (*(v13 + 8))(v12, v34);
    v21 = *(v10 + 8);
    v21(v37, v36);
    (*(v11 + 8))(v47, v35);
    sub_10014148C(v46, type metadata accessor for DigitalPresentmentISOBuilder);
    sub_10014148C(v39, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
    sub_10000BB78((v0 + 1048));
    sub_10014148C(v40, type metadata accessor for ValidatedDigitalPresentmentRequest);
    sub_10014148C(v45, type metadata accessor for DigitalPresentmentEligibleProposalData);
    sub_10000BB78((v0 + 1208));
    sub_10000BB78((v0 + 1008));
    *(v38 + 328) = 0;
    sub_100140774(v41);
    v21(v42, v36);
    v21(v43, v36);
    sub_10014148C(v41, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);

    v22 = *(v0 + 8);

    return v22(v44);
  }

  else
  {
    v24 = *(v0 + 1960);
    v25 = *(v0 + 1720);
    v26 = *(v0 + 1704);
    v27 = *(v0 + 1552);
    v28 = *(v0 + 1544);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    *(v0 + 2120) = v29;
    v24(v25, v26);
    v30 = (v27 + *(v28 + 24));
    v31 = v30[3];
    v32 = v30[4];
    sub_10000BA08(v30, v31);
    v48 = (*(v32 + 16) + **(v32 + 16));
    v33 = swift_task_alloc();
    *(v0 + 2128) = v33;
    *v33 = v0;
    v33[1] = sub_10013FBB0;

    return v48(v31, v32);
  }
}

uint64_t sub_10013FBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[166] = v4;
  v6[167] = a1;
  v6[168] = a2;
  v6[169] = a3;
  v6[170] = a4;
  v7 = v5[176];
  v6[267] = a1;
  v6[268] = a2;

  return _swift_task_switch(sub_10013FCE0, v7, 0);
}

uint64_t sub_10013FCE0()
{
  v1 = *(v0 + 2144);
  if (v1 != 2)
  {
    v2 = *(v0 + 169);
    v3 = *(v0 + 170);
    v4 = v0[265];
    v5 = *(v0 + 194);
    v6 = v4 - *(*(v0 + 196) + 16);
    v7 = v4 - v0[244];
    if (v5[14])
    {
      v8 = v5[13];
      v9 = v5[14];
    }

    else
    {
      v9 = v5[12];
      if (!v9)
      {
        v9 = 0xE500000000000000;
        v8 = 0x58582D5355;
        goto LABEL_7;
      }

      v8 = v5[11];
      swift_bridgeObjectRetain_n();
    }

    swift_bridgeObjectRetain_n();
LABEL_7:
    v10 = *(v0 + 267);
    v11 = String._bridgeToObjectiveC()();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v1 & 1;
    *(v12 + 32) = v2;
    *(v12 + 40) = v3;
    *(v12 + 48) = v6;
    *(v12 + 56) = v7;
    *(v12 + 64) = v8;
    *(v12 + 72) = v9;
    *(v0 + 118) = sub_1001413AC;
    *(v0 + 119) = v12;
    *(v0 + 114) = _NSConcreteStackBlock;
    *(v0 + 115) = 1107296256;
    *(v0 + 116) = sub_10010CF08;
    *(v0 + 117) = &unk_100809D38;
    v13 = _Block_copy(v0 + 114);

    AnalyticsSendEventLazy();
    _Block_release(v13);
  }

  v36 = *(v0 + 220);
  v37 = *(v0 + 221);
  v14 = *(v0 + 218);
  v30 = *(v0 + 217);
  v31 = *(v0 + 219);
  v34 = *(v0 + 210);
  v35 = *(v0 + 212);
  v33 = *(v0 + 206);
  v40 = *(v0 + 204);
  v41 = *(v0 + 202);
  v15 = *(v0 + 201);
  v16 = *(v0 + 199);
  v17 = *(v0 + 198);
  v28 = *(v0 + 197);
  v29 = *(v0 + 200);
  v18 = *(v0 + 196);
  v39 = *(v0 + 194);
  v19 = *(v0 + 192);
  v32 = *(v0 + 176);
  v20._countAndFlagsBits = 0x6161303838616331;
  v21._object = 0x8000000100701040;
  v20._object = 0xE800000000000000;
  v21._countAndFlagsBits = 0xD000000000000018;
  logMilestone(tag:description:)(v20, v21);
  v22 = *v18;
  v23 = v18[1];
  v24 = objc_allocWithZone(type metadata accessor for DigitalPresentmentResponse());
  sub_10000B8B8(v22, v23);
  v38 = DigitalPresentmentResponse.init(encryptedData:)();
  sub_10000BE18(v19, &qword_10083B8C8, &unk_1006D9ED8);
  sub_10014148C(v18, type metadata accessor for WalletPassPresentmentResponse);
  (*(v17 + 8))(v16, v28);
  v25 = *(v14 + 8);
  v25(v31, v30);
  (*(v15 + 8))(v41, v29);
  sub_10014148C(v40, type metadata accessor for DigitalPresentmentISOBuilder);
  sub_10014148C(v33, type metadata accessor for DigitalPresentmentCredentialRequestBuilder);
  sub_10000BB78(v0 + 131);
  sub_10014148C(v34, type metadata accessor for ValidatedDigitalPresentmentRequest);
  sub_10014148C(v39, type metadata accessor for DigitalPresentmentEligibleProposalData);
  sub_10000BB78(v0 + 151);
  sub_10000BB78(v0 + 126);
  *(v32 + 328) = 0;
  sub_100140774(v35);
  v25(v36, v30);
  v25(v37, v30);
  sub_10014148C(v35, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);

  v26 = *(v0 + 1);

  return v26(v38);
}

uint64_t sub_1001402E8()
{
  v1 = *(v0 + 1680);
  v2 = *(v0 + 1408);

  sub_10014148C(v1, type metadata accessor for ValidatedDigitalPresentmentRequest);
  *(v2 + 328) = 0;
  v18 = *(v0 + 1768);
  v19 = *(v0 + 108);
  v3 = *(v0 + 1744);
  v16 = *(v0 + 1736);
  v17 = *(v0 + 1760);
  v4 = *(v0 + 1696);
  v5 = *(v0 + 1432);
  v6 = *(v0 + 1424);
  v7 = *(v0 + 1416);
  (*(*(v0 + 1456) + 104))(*(v0 + 1464), enum case for DIPError.Code.internalError(_:), *(v0 + 1448));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v8 = swift_allocError();
  v9 = *(v6 + 16);
  v9(v10, v5, v7);
  *(v4 + v19) = v8;
  swift_allocError();
  v9(v11, v5, v7);
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  v12 = v4;
  sub_100140774(v4);
  v13 = *(v3 + 8);
  v13(v17, v16);
  v13(v18, v16);
  sub_10014148C(v12, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100140774(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100141424(a1, v5, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);
  sub_10011B80C();
  return sub_10014148C(v5, type metadata accessor for DigitalPresentmentRequestDocumentAnalyticsRecorder);
}

uint64_t sub_1001409E8(uint64_t a1, void *a2)
{
  if (IdentityDocumentPresentmentConfiguration.Credential.credentialIdentifier.getter() == *a2 && v3 == a2[1])
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

BOOL sub_100140A58()
{
  v2 = v0;
  v27 = type metadata accessor for Logger();
  v3 = *(v27 - 8);
  v4 = __chkstk_darwin(v27);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v26[-1] - v8;
  __chkstk_darwin(v7);
  v11 = &v26[-1] - v10;
  v12 = [objc_opt_self() standardUserDefaults];
  v13._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableDigitalPresentmentAccountPasscodeCheck.getter();
  v14 = NSUserDefaults.internalBool(forKey:)(v13);

  if (v14)
  {
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Skipping logged in with passcode check due to user defaults setting", v17, 2u);
LABEL_15:

      goto LABEL_16;
    }

    v14 = 1;
    goto LABEL_16;
  }

  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v26, v26[3]);
  v18 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccount()();
  if (!v18)
  {
    sub_10000BB78(v26);
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v15, v20, "Device is not logged into iCloud", v21, 2u);
      v11 = v9;
      goto LABEL_15;
    }

    v14 = 0;
    v11 = v9;
LABEL_16:

    (*(v3 + 8))(v11, v27);
    return v14;
  }

  sub_10000BB78(v26);
  sub_10000BA08((v2 + 376), *(v2 + 400));
  v19 = dispatch thunk of LocalAuthenticationManaging.isPasscodeSet.getter();
  if (v1)
  {
    return v14;
  }

  if ((v19 & 1) == 0)
  {
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v15, v22))
    {
      v14 = 0;
      v11 = v6;
      goto LABEL_16;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v15, v22, "Device does not have passcode set", v23, 2u);
    v11 = v6;
    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_100140DB8()
{
  v17 = type metadata accessor for DIPError.Code();
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v18 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DeviceClass();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = sub_10000BA08((v0 + 336), *(v0 + 360));
  sub_10000BA08(v10, v10[3]);
  dispatch thunk of DeviceInformationProviding.deviceClass.getter();
  (*(v4 + 104))(v7, enum case for DeviceClass.iPhone(_:), v3);
  v11 = static DeviceClass.== infix(_:_:)();
  v12 = *(v4 + 8);
  v12(v7, v3);
  result = (v12)(v9, v3);
  if ((v11 & 1) == 0)
  {
    v14._countAndFlagsBits = 0x3966653033656339;
    v15._countAndFlagsBits = 0xD000000000000044;
    v15._object = 0x8000000100700DD0;
    v14._object = 0xE800000000000000;
    logMilestone(tag:description:)(v14, v15);
    (*(v1 + 104))(v18, enum case for DIPError.Code.digitalPresentmentNotAvailableOnIPad(_:), v17);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001413DC(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1001410DC()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[23];
  v9 = v0[24];
  v13 = v0[26];
  v11 = v0[25];
  v12 = v0[27];
  sub_10001FE8C(v0[14], v0[15]);
  sub_10001FE8C(v1, v2);
  sub_10001FE8C(v3, v4);
  sub_10001FE8C(v5, v6);
  sub_10001FE8C(v7, v8);
  sub_10001FE8C(v9, v11);
  sub_10001FE8C(v13, v12);
  sub_10000BB78(v0 + 28);

  sub_10000BB78(v0 + 42);
  sub_10000BB78(v0 + 47);
  sub_10000BB78(v0 + 52);
  sub_10000BB78(v0 + 59);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100141210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentISOBuilder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100141294(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083B8C8, &unk_1006D9ED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100141304(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083AE00, &qword_1006D9ED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100141374()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001413C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001413DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100141424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10014148C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100141500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidatedDigitalPresentmentRequest(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100141580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidatedDigitalPresentmentRequest(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DigitalPresentmentISOBuilder(uint64_t a1)
{
  result = qword_10083B938;
  if (!qword_10083B938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014163C(uint64_t a1)
{
  result = type metadata accessor for ValidatedDigitalPresentmentRequest(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001416A8(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v5 = v4;
  v71 = a1;
  v72 = a4;
  v8 = type metadata accessor for DIPError.Code();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ISO18013AppleSessionTranscript();
  v65 = *(v73 - 8);
  __chkstk_darwin(v73);
  v66 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DigitalPresentmentISOBuilder(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = __chkstk_darwin(v14);
  v57 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v56 - v17;
  v19 = type metadata accessor for ISO18013PresentmentType();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CBOREncoder();
  swift_allocObject();
  v23 = CBOREncoder.init()();
  (*(v20 + 104))(v22, enum case for ISO18013PresentmentType.digital(_:), v19);
  v67 = v23;
  CBOREncoder.presentmentType.setter();
  v24 = *(v5 + 8);
  v25 = *(v5 + 16);
  defaultLogger()();
  v63 = v5;
  sub_100141F24(v5, v13);
  sub_10000B8B8(v24, v25);

  v26 = v72;
  sub_10000B8B8(a3, v72);
  v61 = v18;
  v27 = Logger.logObject.getter();
  LOBYTE(v5) = static os_log_type_t.debug.getter();
  sub_10000B90C(v24, v25);
  v70 = a2;
  v28 = v5;

  v62 = a3;
  sub_10000B90C(a3, v26);
  if (os_log_type_enabled(v27, v5))
  {
    v29 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v74 = v56;
    *v29 = 136315906;
    v30 = Data.base16EncodedString()();
    v31 = sub_100141FE4(v30._countAndFlagsBits, v30._object, &v74);

    *(v29 + 4) = v31;
    *(v29 + 12) = 2080;
    v32 = *(v13 + 3);
    v33 = *(v13 + 4);

    sub_100141F88(v13);
    v34 = sub_100141FE4(v32, v33, &v74);

    *(v29 + 14) = v34;
    *(v29 + 22) = 2080;
    *(v29 + 24) = sub_100141FE4(v71, v70, &v74);
    *(v29 + 32) = 2080;
    v35 = v62;
    v36 = v72;
    v37 = Data.base16EncodedString()();
    v38 = sub_100141FE4(v37._countAndFlagsBits, v37._object, &v74);

    *(v29 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "Building Apple session transcript with nonce %s, merchantID: %s, teamID: %s, encryption key hash: %s", v29, 0x2Au);
    swift_arrayDestroy();

    v39 = *(v68 + 8);
    v39(v61, v69);
    v40 = v36;
    v41 = v35;
  }

  else
  {

    sub_100141F88(v13);
    v39 = *(v68 + 8);
    v39(v61, v69);
    v40 = v72;
    v41 = v62;
  }

  sub_10000B8B8(v24, v25);

  sub_10000B8B8(v41, v40);

  v42 = v66;
  ISO18013AppleSessionTranscript.init(nonce:merchantID:teamID:encryptionKeyHash:)();
  sub_10014258C(&qword_10083B970, &type metadata accessor for ISO18013AppleSessionTranscript, &protocol conformance descriptor for ISO18013AppleSessionTranscript);
  v43 = v64;
  v44 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  v46 = v45;
  if (v43)
  {

    (*(v65 + 8))(v42, v73);
    (*(v58 + 104))(v60, enum case for DIPError.Code.internalError(_:), v59);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10014258C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v47 = v57;
    defaultLogger()();
    sub_10000B8B8(v44, v46);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    sub_10000B90C(v44, v46);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v72 = v39;
      v52 = v51;
      v74 = v51;
      *v50 = 136315138;
      v53 = Data.base16EncodedString()();
      v54 = sub_100141FE4(v53._countAndFlagsBits, v53._object, &v74);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "DigitalPresentmentISOBuilder built session transcript %s", v50, 0xCu);
      sub_10000BB78(v52);

      v72(v57, v69);
      (*(v65 + 8))(v66, v73);
    }

    else
    {

      v39(v47, v69);
      (*(v65 + 8))(v42, v73);
    }
  }

  return v44;
}

uint64_t sub_100141F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentISOBuilder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100141F88(uint64_t a1)
{
  v2 = type metadata accessor for DigitalPresentmentISOBuilder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100141FE4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1001420B0(v11, 0, 0, 1, a1, a2);
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
    sub_10001F2EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000BB78(v11);
  return v7;
}

unint64_t sub_1001420B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1001421BC(a5, a6);
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

void *sub_1001421BC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100142208(a1, a2);
  sub_100142338(&off_1007F83F8);
  return v3;
}

void *sub_100142208(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100142424(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100142424(v10, 0);
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

uint64_t sub_100142338(uint64_t result)
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

  result = sub_100142498(result, v11, 1, v3);
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

void *sub_100142424(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100007224(&qword_10083B978, &unk_1006D9F30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100142498(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007224(&qword_10083B978, &unk_1006D9F30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10014258C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001425D8()
{
  sub_100142684();
  v0 = sub_1001426B0();
  AnyHashable.init<A>(_:)();
  v1 = sub_1006937A4(v3, v0);

  sub_1000279C8(v3);
  return v1 & 1;
}

uint64_t sub_100142684()
{
  result = *(v0 + 64);
  if (result == 4)
  {
    result = sub_100142770(*(v0 + 56));
    *(v0 + 64) = result;
  }

  return result;
}

uint64_t sub_1001426B0()
{
  if (v0[9])
  {
    v1 = v0[9];
  }

  else
  {
    v2 = v0;
    v3 = v0[5];
    v4 = v0[6];
    sub_10000BA08(v0 + 2, v3);
    v1 = (*(v4 + 16))(1004, v3, v4);
    v2[9] = v1;
  }

  return v1;
}

uint64_t sub_100142770(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  __chkstk_darwin(v3);
  v4 = v1[5];
  v5 = v1[6];
  sub_10000BA08(v1 + 2, v4);
  v6 = (*(v5 + 24))(a1, 3, v4, v5);
  if (*(v6 + 16))
  {
    AnyHashable.init<A>(_:)();
    v7 = sub_1006937A4(v11, v6);
    sub_1000279C8(v11);
    if (v7)
    {

      return 0;
    }

    else
    {
      AnyHashable.init<A>(_:)();
      v9 = sub_1006937A4(v11, v6);
      sub_1000279C8(v11);
      if (v9)
      {

        return 1;
      }

      else
      {
        AnyHashable.init<A>(_:)();
        v10 = sub_1006937A4(v11, v6);

        sub_1000279C8(v11);
        if (v10)
        {
          return 2;
        }

        else
        {
          return 3;
        }
      }
    }
  }

  else
  {

    return 3;
  }
}

uint64_t sub_100142AA0()
{
  sub_10000BB78((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_100142B20()
{
  result = qword_10083BA40;
  if (!qword_10083BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083BA40);
  }

  return result;
}

unint64_t sub_100142B74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 64) = 4;
  *(v4 + 72) = 0;
  v5 = [objc_allocWithZone(LAContext) init];
  result = sub_100037320();
  *(v4 + 40) = result;
  *(v4 + 48) = &off_100817910;
  *(v4 + 16) = v5;
  *(v4 + 56) = a1;
  *a2 = v4;
  return result;
}

uint64_t sub_100142C10(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_100142CE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ValidatedDigitalPresentmentRequest(uint64_t a1)
{
  result = qword_10083BAA0;
  if (!qword_10083BAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100142DDC(uint64_t a1)
{
  sub_100142E94(319);
  if (v1 <= 0x3F)
  {
    sub_1000BD2F0();
    if (v2 <= 0x3F)
    {
      sub_10002A514(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100142E94(uint64_t a1)
{
  if (!qword_10083BAB0)
  {
    type metadata accessor for ISO18013KnownDocTypes();
    sub_10000B870(&qword_10083B240, &qword_1006D9668);
    sub_10014A184(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes, &protocol conformance descriptor for ISO18013KnownDocTypes);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_10083BAB0);
    }
  }
}

uint64_t sub_100142F4C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for DIPError.Code();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale.Region();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for DigitalPresentmentDocumentType();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v31 = v1;
  IdentityDocumentDescriptor.documentType.getter();
  v18 = (*(v12 + 88))(v17, v11);
  if (v18 != enum case for DigitalPresentmentDocumentType.nationalIDCard(_:))
  {
    if (v18 == enum case for DigitalPresentmentDocumentType.driversLicense(_:))
    {
      v24 = &enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:);
    }

    else
    {
      if (v18 != enum case for DigitalPresentmentDocumentType.photoID(_:))
      {
        v36 = 0;
        v37 = 0xE000000000000000;
        _StringGuts.grow(_:)(27);

        v36 = 0xD000000000000019;
        v37 = 0x80000001006FFEF0;
        IdentityDocumentDescriptor.documentType.getter();
        sub_10014A184(&qword_10083BAF0, &type metadata accessor for DigitalPresentmentDocumentType, &protocol conformance descriptor for DigitalPresentmentDocumentType);
        v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v28);

        v29 = *(v12 + 8);
        v29(v15, v11);
        v38 = v37;
        (*(v32 + 104))(v34, enum case for DIPError.Code.digitalPresentmentInvalidDocumentDescriptor(_:), v33);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        return (v29)(v17, v11);
      }

      v24 = &enum case for ISO18013KnownDocTypes.photoID(_:);
    }

    v26 = *v24;
    v27 = type metadata accessor for ISO18013KnownDocTypes();
    return (*(*(v27 - 8) + 104))(v35, v26, v27);
  }

  (*(v12 + 96))(v17, v11);
  (*(v5 + 16))(v10, v17, v4);
  Locale.Region.init(stringLiteral:)();
  sub_10014A184(&qword_100834780, &type metadata accessor for Locale.Region, &protocol conformance descriptor for Locale.Region);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v5 + 8);
  v20(v8, v4);
  v20(v10, v4);
  if (v19)
  {
    v21 = enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:);
    v22 = type metadata accessor for ISO18013KnownDocTypes();
    (*(*(v22 - 8) + 104))(v35, v21, v22);
    return (v20)(v17, v4);
  }

  else
  {
    (*(v5 + 32))(v8, v17, v4);
    v36 = 0;
    v37 = 0xE000000000000000;
    v38 = v20;
    _StringGuts.grow(_:)(39);

    v36 = 0xD000000000000025;
    v37 = 0x8000000100701CB0;
    v25._countAndFlagsBits = Locale.Region.identifier.getter();
    String.append(_:)(v25);

    (*(v32 + 104))(v34, enum case for DIPError.Code.digitalPresentmentRegionNotSupported(_:), v33);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v38(v8, v4);
  }
}

uint64_t sub_1001436AC@<X0>(char *a1@<X8>)
{
  v58 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v54 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Locale.Region();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v60 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DigitalPresentmentDocumentType();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v50 = &v49 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v49 - v14;
  v16 = __chkstk_darwin(v13);
  v55 = &v49 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v49 - v19;
  __chkstk_darwin(v18);
  v22 = &v49 - v21;
  defaultLogger()();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "DigitalPresentmentRequest: get region for descriptor", v25, 2u);
  }

  v26 = v8 + 8;
  v27 = *(v8 + 8);
  v27(v22, v7);
  IdentityDocumentDescriptor.documentType.getter();
  v28 = v61;
  v29 = v62;
  v30 = (*(v61 + 88))(v6, v62);
  if (v30 == enum case for DigitalPresentmentDocumentType.nationalIDCard(_:))
  {
    v59 = v26;
    (*(v28 + 96))(v6, v29);
    v31 = *(v56 + 32);
    v32 = v6;
    v33 = v57;
    v31(v60, v32, v57);
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "DigitalPresentmentRequest: In NationalIDCardDescriptor", v36, 2u);
    }

    v27(v15, v7);
    return (v31)(v58, v60, v33);
  }

  else
  {
    if (v30 == enum case for DigitalPresentmentDocumentType.driversLicense(_:))
    {
      defaultLogger()();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "DigitalPresentmentRequest: In DriversLicenseDescriptor", v40, 2u);
      }

      v27(v20, v7);
      v41 = v55;
    }

    else
    {
      if (v30 != enum case for DigitalPresentmentDocumentType.photoID(_:))
      {
        (*(v51 + 104))(v54, enum case for DIPError.Code.missingEntitlement(_:), v52);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        return (*(v28 + 8))(v6, v29);
      }

      v42 = v50;
      defaultLogger()();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "DigitalPresentmentRequest: In photoIDDescriptor", v45, 2u);
      }

      v27(v42, v7);
      v41 = v53;
    }

    defaultLogger()();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "DigitalPresentmentRequest: region hardcoded to US", v48, 2u);
    }

    v27(v41, v7);
    return Locale.Region.init(stringLiteral:)();
  }
}

uint64_t sub_100143E68@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, unsigned int (***a3)(uint64_t, uint64_t, uint64_t)@<X8>)
{
  v282 = a2;
  v305 = a1;
  v281 = a3;
  v294 = type metadata accessor for ISO18013KnownDocTypes();
  v276 = *(v294 - 8);
  v4 = __chkstk_darwin(v294);
  v278 = &v255 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v298 = &v255 - v6;
  v7 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  __chkstk_darwin(v7 - 8);
  v289 = &v255 - v8;
  v285 = type metadata accessor for DigitalPresentmentIdentityElementsWithRegion(0);
  v284 = *(v285 - 8);
  v9 = __chkstk_darwin(v285);
  v295 = &v255 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v296 = (&v255 - v11);
  v280 = type metadata accessor for DigitalPresentmentDocumentType();
  *&v275 = *(v280 - 8);
  __chkstk_darwin(v280);
  v279 = &v255 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = type metadata accessor for IdentityDocumentDescriptor();
  v290 = *(v297 - 8);
  v13 = __chkstk_darwin(v297);
  v288 = &v255 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v287 = &v255 - v16;
  __chkstk_darwin(v15);
  v299 = &v255 - v17;
  v18 = type metadata accessor for IdentityDocumentCompoundDescriptor();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v291 = &v255 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = type metadata accessor for URL();
  v303 = *(v302 - 1);
  __chkstk_darwin(v302);
  v301 = (&v255 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v255 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v300 = (&v255 - v26);
  v27 = type metadata accessor for DIPError.Code();
  v28 = *(v27 - 8);
  v309 = v27;
  v310 = v28;
  __chkstk_darwin(v27);
  v317 = &v255 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Logger();
  v306 = *(v30 - 8);
  v307 = v30;
  v31 = __chkstk_darwin(v30);
  v274 = &v255 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v273 = &v255 - v34;
  v35 = __chkstk_darwin(v33);
  v277 = &v255 - v36;
  v37 = __chkstk_darwin(v35);
  v286 = &v255 - v38;
  v39 = __chkstk_darwin(v37);
  v293 = &v255 - v40;
  v41 = __chkstk_darwin(v39);
  v292 = &v255 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = &v255 - v44;
  __chkstk_darwin(v43);
  v47 = &v255 - v46;
  v48 = sub_100007224(&qword_10083AD38, &unk_1006D9010);
  v49 = __chkstk_darwin(v48 - 8);
  v283 = &v255 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v52 = &v255 - v51;
  v308 = v3;
  DigitalPresentmentRequest.compoundDescriptor.getter();
  v53 = *(v19 + 48);
  if (v53(v52, 1, v18) == 1)
  {
    sub_10000BE18(v52, &qword_10083AD38, &unk_1006D9010);
LABEL_7:
    v64._countAndFlagsBits = 0x3935663735343132;
    v65._countAndFlagsBits = 0xD000000000000037;
    v65._object = 0x8000000100701490;
    v64._object = 0xE800000000000000;
    logMilestone(tag:description:)(v64, v65);
    (*(v310 + 104))(v317, enum case for DIPError.Code.digitalPresentmentNoElementsRequested(_:), v309);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v63 = 48;
    goto LABEL_8;
  }

  v271 = v53;
  v54 = IdentityDocumentCompoundDescriptor.descriptors.getter();
  v272 = v19;
  v56 = *(v19 + 8);
  v55 = v19 + 8;
  v57 = v52;
  v58 = v54;
  v270 = v56;
  v56(v57, v18);
  if (!*(v58 + 16))
  {

    goto LABEL_7;
  }

  v267 = v55;
  v59 = DigitalPresentmentRequest.nonce.getter();
  if (v60 >> 60 == 15)
  {

    v61._countAndFlagsBits = 0x6430383738636261;
    v62._object = 0x8000000100701570;
    v61._object = 0xE800000000000000;
    v62._countAndFlagsBits = 0xD000000000000032;
    logMilestone(tag:description:)(v61, v62);
    (*(v310 + 104))(v317, enum case for DIPError.Code.digitalPresentmentInvalidNonce(_:), v309);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v63 = 52;
LABEL_8:
    v253 = 0x8000000100701530;
    v254 = v63;
    v252 = 0xD000000000000032;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  v266 = v58;
  v264 = v18;
  v269 = v59;
  v268 = v60;
  v67 = objc_opt_self();
  v68 = [v67 standardUserDefaults];
  v69._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableMerchantIDEntitlementChecks.getter();
  v70 = NSUserDefaults.internalBool(forKey:)(v69);

  v263 = v67;
  v71 = [v67 standardUserDefaults];
  v72._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceTestMerchantID.getter();
  LOBYTE(v67) = NSUserDefaults.internalBool(forKey:)(v72);

  if (v67)
  {
    v73._countAndFlagsBits = 0x6232383030653733;
    v74._countAndFlagsBits = 0xD00000000000003DLL;
    v74._object = 0x8000000100701A50;
    v73._object = 0xE800000000000000;
    logMilestone(tag:description:)(v73, v74);
    defaultLogger()();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();
    v77 = os_log_type_enabled(v75, v76);
    v265 = 0x8000000100701A30;
    if (v77)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v313[0] = v79;
      *v78 = 136315138;
      v262 = 0xD000000000000019;
      *(v78 + 4) = sub_100141FE4(0xD000000000000019, 0x8000000100701A30, v313);
      _os_log_impl(&_mh_execute_header, v75, v76, "DigitalPresentmentRequest Forcing test merchant ID %s due to user defaults setting", v78, 0xCu);
      sub_10000BB78(v79);

      (*(v306 + 8))(v47, v307);
    }

    else
    {

      (*(v306 + 8))(v47, v307);
      v262 = 0xD000000000000019;
    }

    goto LABEL_16;
  }

  v80 = DigitalPresentmentRequest.merchantID.getter();
  if (!v81)
  {

    v95._countAndFlagsBits = 0x3730366231386537;
    v96._countAndFlagsBits = 0xD000000000000038;
    v96._object = 0x80000001007015D0;
    v95._object = 0xE800000000000000;
    logMilestone(tag:description:)(v95, v96);
    (*(v310 + 104))(v317, enum case for DIPError.Code.digitalPresentmentInvalidMerchantID(_:), v309);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v253 = 0x8000000100701530;
    v254 = 67;
    v252 = 0xD000000000000032;
    goto LABEL_38;
  }

  if (!v70)
  {
    v86 = v305;
    *&v313[0] = v80;
    *(&v313[0] + 1) = v81;
    v97 = __chkstk_darwin(v80);
    v99 = v98;
    v254 = v313;
    v100 = v97;
    v101 = v304;
    v103 = sub_10035C8E4(sub_1000307C0, &v252, v102);
    v304 = v101;
    if (v103)
    {
      v262 = v100;
      v265 = v99;
      v82 = v268;
      goto LABEL_19;
    }

    v110._countAndFlagsBits = 0x3032653632313965;
    v111._countAndFlagsBits = 0xD000000000000048;
    v111._object = 0x8000000100701640;
    v110._object = 0xE800000000000000;
    logMilestone(tag:description:)(v110, v111);
    *&v313[0] = 0;
    *(&v313[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    *&v313[0] = 0xD000000000000027;
    *(&v313[0] + 1) = 0x8000000100701690;
    v112._countAndFlagsBits = v100;
    v112._object = v99;
    String.append(_:)(v112);

    (*(v310 + 104))(v317, enum case for DIPError.Code.digitalPresentmentInvalidMerchantID(_:), v309);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v253 = 0x8000000100701530;
    v254 = 75;
    v252 = 0xD000000000000032;
LABEL_38:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sub_10000BD94(v269, v268);
  }

  v262 = v80;
  v265 = v81;
LABEL_16:
  v82 = v268;
  defaultLogger()();
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&_mh_execute_header, v83, v84, "DigitalPresentmentRequest Skipping merchant ID entitlement check due to user defaults setting", v85, 2u);
  }

  (*(v306 + 8))(v45, v307);
  v86 = v305;
LABEL_19:
  v87 = *(v86 + 32);
  v88 = DigitalPresentmentRequest.merchantNameOverride.getter();
  v90 = v89;
  if ((v87 & 1) == 0)
  {
    if (v89)
    {

      (*(v310 + 104))(v317, enum case for DIPError.Code.missingEntitlement(_:), v309);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v253 = 0x8000000100701530;
      v254 = 85;
      v252 = 0xD000000000000032;
    }

    else
    {
      v108 = v300;
      DigitalPresentmentRequest.merchantPrivacyPolicyOverride.getter();
      if (v303[6](v108, 1, v302) == 1)
      {
        sub_10000BE18(v108, &unk_100844540, &unk_1006BFBC0);
        goto LABEL_42;
      }

      sub_10000BE18(v108, &unk_100844540, &unk_1006BFBC0);
      (*(v310 + 104))(v317, enum case for DIPError.Code.missingEntitlement(_:), v309);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v253 = 0x8000000100701530;
      v254 = 90;
      v252 = 0xD000000000000032;
    }

LABEL_70:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return sub_10000BD94(v269, v82);
  }

  if (v89)
  {
    v91 = v88;

    v92 = HIBYTE(v90) & 0xF;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v92 = v91 & 0xFFFFFFFFFFFFLL;
    }

    if (!v92)
    {

      (*(v310 + 104))(v317, enum case for DIPError.Code.digitalPresentmentInvalidFirstPartyValue(_:), v309);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v109 = 94;
LABEL_69:
      v253 = 0x8000000100701530;
      v254 = v109;
      v252 = 0xD000000000000032;
      goto LABEL_70;
    }
  }

  DigitalPresentmentRequest.merchantPrivacyPolicyOverride.getter();
  v93 = v303;
  v94 = v302;
  if (v303[6](v25, 1, v302) == 1)
  {
    sub_10000BE18(v25, &unk_100844540, &unk_1006BFBC0);
  }

  else
  {
    v104 = v301;
    (v93[4])();
    v105 = URL.scheme.getter();
    if (!v106)
    {

      v308 = " set by first party clients";
      (*(v310 + 104))(v317, enum case for DIPError.Code.digitalPresentmentInvalidFirstPartyValue(_:), v309);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v253 = 0x8000000100701530;
      v254 = 100;
      v252 = 0xD000000000000032;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000BD94(v269, v82);
      return (v93[1])(v104, v302);
    }

    *&v313[0] = v105;
    *(&v313[0] + 1) = v106;
    v311 = 0x7370747468;
    v312 = 0xE500000000000000;
    sub_10001F298();
    v107 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    if (v107)
    {

      v308 = " set by first party clients";
      (*(v310 + 104))(v317, enum case for DIPError.Code.digitalPresentmentInvalidFirstPartyValue(_:), v309);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v253 = 0x8000000100701530;
      v254 = 104;
      v252 = 0xD000000000000032;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000BD94(v269, v82);
      return (v303[1])(v104, v94);
    }

    (v303[1])(v104, v94);
  }

LABEL_42:
  v113 = v82 >> 62;
  v114 = v304;
  v115 = v272;
  if ((v82 >> 62) > 1)
  {
    if (v113 != 2)
    {
LABEL_50:

      v119._countAndFlagsBits = 0x3332636539393463;
      v120._countAndFlagsBits = 0xD000000000000033;
      v120._object = 0x80000001007018D0;
      v119._object = 0xE800000000000000;
      logMilestone(tag:description:)(v119, v120);
      (*(v310 + 104))(v317, enum case for DIPError.Code.digitalPresentmentInvalidNonce(_:), v309);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v109 = 112;
      goto LABEL_69;
    }

    v117 = *(v269 + 16);
    v118 = *(v269 + 24);
  }

  else
  {
    if (!v113)
    {
      if ((v82 & 0xFF000000000000) != 0)
      {
        v116 = BYTE6(v82);
        goto LABEL_57;
      }

      goto LABEL_50;
    }

    v117 = v269;
    v118 = v269 >> 32;
  }

  if (v117 == v118)
  {
    goto LABEL_50;
  }

  v116 = &v299;
  if (v113 == 2)
  {
    v122 = *(v269 + 16);
    v121 = *(v269 + 24);
    v123 = __OFSUB__(v121, v122);
    v116 = v121 - v122;
    if (!v123)
    {
      goto LABEL_57;
    }

    __break(1u);
  }

  v124 = *(v116 - 256);
  LODWORD(v116) = HIDWORD(v124) - v124;
  if (__OFSUB__(HIDWORD(v124), v124))
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v116 = v116;
LABEL_57:
  if (v116 <= 1)
  {

    v125._countAndFlagsBits = 0x3263613038643136;
    v126._countAndFlagsBits = 0xD000000000000037;
    v126._object = 0x8000000100701870;
    v125._object = 0xE800000000000000;
    logMilestone(tag:description:)(v125, v126);
    (*(v310 + 104))(v317, enum case for DIPError.Code.digitalPresentmentInvalidNonce(_:), v309);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v109 = 116;
    goto LABEL_69;
  }

  if (v113 != 2)
  {
    if (v113 == 1)
    {
      LODWORD(v127) = HIDWORD(v269) - v269;
      if (!__OFSUB__(HIDWORD(v269), v269))
      {
        v127 = v127;
        goto LABEL_67;
      }

LABEL_130:
      __break(1u);
LABEL_131:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    goto LABEL_66;
  }

  v129 = *(v269 + 16);
  v128 = *(v269 + 24);
  v123 = __OFSUB__(v128, v129);
  v127 = v128 - v129;
  if (v123)
  {
    __break(1u);
LABEL_66:
    v127 = BYTE6(v82);
  }

LABEL_67:
  if (v127 >= 65)
  {

    v130._countAndFlagsBits = 0x6436623862313636;
    v131._countAndFlagsBits = 0xD000000000000037;
    v131._object = 0x8000000100701810;
    v130._object = 0xE800000000000000;
    logMilestone(tag:description:)(v130, v131);
    (*(v310 + 104))(v317, enum case for DIPError.Code.digitalPresentmentInvalidNonce(_:), v309);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v109 = 120;
    goto LABEL_69;
  }

  v261 = v87;
  v132 = v283;
  DigitalPresentmentRequest.compoundDescriptor.getter();
  v133 = v264;
  if (v271(v132, 1, v264) != 1)
  {
    v134 = v132;
    v135 = v291;
    (*(v115 + 32))(v291, v134, v133);
    v136 = *(IdentityDocumentCompoundDescriptor.descriptors.getter() + 16);

    if (!v136)
    {
      v270(v135, v133);

      goto LABEL_102;
    }

    v137 = IdentityDocumentCompoundDescriptor.descriptors.getter();
    v271 = *(v137 + 16);
    if (!v271)
    {
      v140 = 0;
      v303 = &_swiftEmptyDictionarySingleton;
LABEL_122:
      v302 = v140;
      v270(v135, v264);

      goto LABEL_103;
    }

    v139 = 0;
    v140 = 0;
    v301 = (v290 + 8);
    v260 = (v306 + 8);
    v257 = (v275 + 8);
    v256 = (v276 + 16);
    v259 = (v276 + 8);
    v303 = &_swiftEmptyDictionarySingleton;
    *&v138 = 136315138;
    v275 = v138;
    v141 = v297;
    v142 = v299;
    v272 = v137;
    v283 = (v290 + 16);
    while (1)
    {
      if (v139 >= *(v137 + 16))
      {
        __break(1u);
        goto LABEL_128;
      }

      v143 = v137 + ((*(v290 + 80) + 32) & ~*(v290 + 80));
      v144 = *(v290 + 72);
      v276 = v139;
      v145 = *(v290 + 16);
      v145(v142, v143 + v144 * v139, v141);
      sub_100149FC0(*(v86 + 5), *(v86 + 6));
      if (v114)
      {

        sub_10000BD94(v269, v82);

        (*v301)(v142, v141);
        v270(v135, v264);

        v251 = v140;
        return sub_10001FE8C(v251, 0);
      }

      v302 = v140;
      v146 = v292;
      defaultLogger()();
      v147 = v287;
      v145(v287, v142, v141);
      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.debug.getter();
      v150 = os_log_type_enabled(v148, v149);
      v304 = 0;
      if (v150)
      {
        v151 = swift_slowAlloc();
        v152 = v147;
        v153 = swift_slowAlloc();
        *&v313[0] = v153;
        *v151 = v275;
        v154 = v279;
        IdentityDocumentDescriptor.documentType.getter();
        v155 = DigitalPresentmentDocumentType.description.getter();
        v157 = v156;
        (*v257)(v154, v280);
        v300 = *v301;
        v300(v152, v297);
        v158 = sub_100141FE4(v155, v157, v313);

        *(v151 + 4) = v158;
        _os_log_impl(&_mh_execute_header, v148, v149, "DigitalPresentmentRequest requestDocument documentType %s", v151, 0xCu);
        sub_10000BB78(v153);

        v141 = v297;

        v159 = *v260;
        (*v260)(v292, v307);
      }

      else
      {

        v300 = *v301;
        v300(v147, v141);
        v159 = *v260;
        (*v260)(v146, v307);
      }

      v160 = v288;
      v161 = v293;
      defaultLogger()();
      v145(v160, v299, v141);
      v162 = Logger.logObject.getter();
      v163 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v258 = v159;
        v166 = v165;
        *&v313[0] = v165;
        *v164 = v275;
        IdentityDocumentDescriptor.elementsToIntentToStore.getter();
        type metadata accessor for IdentityElement();
        v167 = v160;
        type metadata accessor for IdentityIntentToStore();
        sub_10014A184(&qword_1008347A8, &type metadata accessor for IdentityElement, &protocol conformance descriptor for IdentityElement);
        v168 = Dictionary.description.getter();
        v170 = v169;

        v300(v167, v297);
        v171 = sub_100141FE4(v168, v170, v313);

        *(v164 + 4) = v171;
        _os_log_impl(&_mh_execute_header, v162, v163, "DigitalPresentmentRequest requestDocument elements %s", v164, 0xCu);
        sub_10000BB78(v166);

        v258(v293, v307);
      }

      else
      {

        v300(v160, v141);
        v159(v161, v307);
      }

      v172 = v268;
      v173 = v304;
      v86 = v305;
      v174 = v264;
      v175 = v289;
      v176 = v299;
      v177 = IdentityDocumentDescriptor.elementsToIntentToStore.getter();
      sub_1001436AC(v175);
      v114 = v173;
      if (v173)
      {

        sub_10000BD94(v269, v172);

        v300(v176, v297);
        v270(v291, v174);
        goto LABEL_125;
      }

      v178 = type metadata accessor for Locale.Region();
      (*(*(v178 - 8) + 56))(v175, 0, 1, v178);
      v179 = v296;
      *v296 = v177;
      sub_1000B1FC8(v175, v179 + *(v285 + 20), &unk_100849BA0, &qword_1006D95F0);
      v180 = v298;
      sub_100142F4C(v298);
      sub_1001203C0(v179, v295);
      sub_10001FE8C(v302, 0);
      v181 = v303;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v313[0] = v181;
      v184 = sub_10003B480(v180);
      v185 = v181[2];
      v186 = (v183 & 1) == 0;
      v187 = v185 + v186;
      if (__OFADD__(v185, v186))
      {
        goto LABEL_129;
      }

      v188 = v183;
      if (v181[3] < v187)
      {
        break;
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100170B4C();
        v181 = *&v313[0];
        if (v188)
        {
          goto LABEL_93;
        }

        goto LABEL_92;
      }

      if ((v183 & 1) == 0)
      {
        goto LABEL_92;
      }

LABEL_93:
      v303 = v181;
      v192 = v181[7];
      v193 = *(v192 + v184);
      v194 = swift_isUniquelyReferenced_nonNull_native();
      *(v192 + v184) = v193;
      if ((v194 & 1) == 0)
      {
        v193 = sub_1003C58A0(0, v193[2] + 1, 1, v193);
        *(v192 + v184) = v193;
      }

      v196 = v193[2];
      v195 = v193[3];
      if (v196 >= v195 >> 1)
      {
        *(v192 + v184) = sub_1003C58A0((v195 > 1), v196 + 1, 1, v193);
      }

      (*v259)(v298, v294);
      v197 = *(v192 + v184);
      *(v197 + 16) = v196 + 1;
      sub_100120424(v295, v197 + ((*(v284 + 80) + 32) & ~*(v284 + 80)) + *(v284 + 72) * v196);
      v142 = v299;
      sub_100146DC8();
      v198 = (v276 + 1);
      sub_100135E58(v296);
      v141 = v297;
      v300(v142, v297);
      v139 = v198;
      v140 = sub_100146DB8;
      v82 = v268;
      v135 = v291;
      v137 = v272;
      if (v271 == v198)
      {
        goto LABEL_122;
      }
    }

    sub_1001684B4(v187, isUniquelyReferenced_nonNull_native);
    v181 = *&v313[0];
    v189 = sub_10003B480(v298);
    if ((v188 & 1) != (v190 & 1))
    {
      goto LABEL_131;
    }

    v184 = v189;
    if (v188)
    {
      goto LABEL_93;
    }

LABEL_92:
    v191 = v278;
    (*v256)(v278, v298, v294);
    sub_10016EB14(v184, v191, _swiftEmptyArrayStorage, v181);
    goto LABEL_93;
  }

  sub_10000BE18(v132, &qword_10083AD38, &unk_1006D9010);
LABEL_102:
  v302 = 0;
  v303 = &_swiftEmptyDictionarySingleton;
LABEL_103:
  v199 = v286;
  defaultLogger()();
  v200 = Logger.logObject.getter();
  v201 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v200, v201))
  {
    v202 = swift_slowAlloc();
    v203 = swift_slowAlloc();
    *&v313[0] = v203;
    *v202 = 136315138;

    sub_100007224(&qword_10083B240, &qword_1006D9668);
    sub_10014A184(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes, &protocol conformance descriptor for ISO18013KnownDocTypes);
    v204 = Dictionary.description.getter();
    v206 = v205;

    v207 = sub_100141FE4(v204, v206, v313);

    *(v202 + 4) = v207;
    _os_log_impl(&_mh_execute_header, v200, v201, "DigitalPresentmentRequest requestDocument docTypeElementsRegionDictionary %s", v202, 0xCu);
    sub_10000BB78(v203);

    v208 = *(v306 + 8);
    v208(v286, v307);
  }

  else
  {

    v208 = *(v306 + 8);
    v208(v199, v307);
  }

  sub_100020260(v282, v316);
  v209 = v305[1];
  v313[0] = *v305;
  v313[1] = v209;
  v314 = v262;
  v315 = v265;

  v210 = sub_1001775D0();
  if (!v114)
  {
    v221 = v210;
    v222 = v211;
    sub_100149F6C(v313);
LABEL_117:
    v234 = v303;

    v235 = DigitalPresentmentRequest.merchantNameOverride.getter();
    v237 = v236;
    v238 = type metadata accessor for ValidatedDigitalPresentmentRequest(0);
    v239 = v281;
    DigitalPresentmentRequest.merchantPrivacyPolicyOverride.getter();

    result = sub_10001FE8C(v302, 0);
    v240 = v269;
    *v239 = v234;
    v239[1] = v240;
    v241 = v262;
    v239[2] = v268;
    v239[3] = v241;
    v239[4] = v265;
    v239[5] = v235;
    v239[6] = v237;
    v242 = (v239 + *(v238 + 36));
    *v242 = v221;
    v242[1] = v222;
    return result;
  }

  sub_100149F6C(v313);
  if (v261)
  {
    v212 = v277;
    defaultLogger()();
    swift_errorRetain();
    v213 = Logger.logObject.getter();
    v214 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v213, v214))
    {
      v215 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      *v215 = 138412290;
      swift_errorRetain();
      v217 = _swift_stdlib_bridgeErrorToNSError();
      *(v215 + 4) = v217;
      *v216 = v217;
      _os_log_impl(&_mh_execute_header, v213, v214, "DigitalPresentmentRequest.validate - Invalid usage description on first-party client. Error: %@", v215, 0xCu);
      sub_10000BE18(v216, &unk_100833B50, &unk_1006D8FB0);
    }

    v208(v212, v307);
    v218 = "due to internal settings.";
    v219 = 0x3536353565373230;
    v220 = 0xD000000000000055;
LABEL_116:
    v232 = v218 | 0x8000000000000000;
    v233 = 0xE800000000000000;
    logMilestone(tag:description:)(*&v219, *&v220);

    v221 = 0;
    v222 = 0;
    goto LABEL_117;
  }

  v223 = [v263 standardUserDefaults];
  v224._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableUsageDescriptionCheck.getter();
  v225 = NSUserDefaults.internalBool(forKey:)(v224);

  if (v225)
  {
    v226 = v274;
    defaultLogger()();
    swift_errorRetain();
    v227 = Logger.logObject.getter();
    v228 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v227, v228))
    {
      v229 = swift_slowAlloc();
      v230 = swift_slowAlloc();
      *v229 = 138412290;
      swift_errorRetain();
      v231 = _swift_stdlib_bridgeErrorToNSError();
      *(v229 + 4) = v231;
      *v230 = v231;
      _os_log_impl(&_mh_execute_header, v227, v228, "DigitalPresentmentRequest.validate - Invalid usage description, bypassing check due to internal settings. Error: %@", v229, 0xCu);
      sub_10000BE18(v230, &unk_100833B50, &unk_1006D8FB0);
    }

    v208(v226, v307);
    v218 = "his is a fatal error.";
    v219 = 0x6634366235376166;
    v220 = 0xD000000000000069;
    goto LABEL_116;
  }

  v243 = v273;
  defaultLogger()();
  swift_errorRetain();
  v244 = Logger.logObject.getter();
  v245 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v244, v245))
  {
    v246 = swift_slowAlloc();
    v247 = swift_slowAlloc();
    *v246 = 138412290;
    swift_errorRetain();
    v248 = _swift_stdlib_bridgeErrorToNSError();
    *(v246 + 4) = v248;
    *v247 = v248;
    _os_log_impl(&_mh_execute_header, v244, v245, "DigitalPresentmentRequest.validate - Invalid usage description encountered on third-party app. This is a fatal error. Error: %@", v246, 0xCu);
    sub_10000BE18(v247, &unk_100833B50, &unk_1006D8FB0);
  }

  v208(v243, v307);
  v249._countAndFlagsBits = 0x3331653032313665;
  v250._countAndFlagsBits = 0xD000000000000075;
  v250._object = 0x80000001007016C0;
  v249._object = 0xE800000000000000;
  logMilestone(tag:description:)(v249, v250);
  (*(v310 + 104))(v317, enum case for DIPError.Code.internalError(_:), v309);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v253 = 0x8000000100701530;
  v254 = 161;
  v252 = 0xD000000000000032;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_10000BD94(v269, v268);

LABEL_125:

  v251 = v302;
  return sub_10001FE8C(v251, 0);
}

uint64_t sub_100146DC8()
{
  v153 = type metadata accessor for IdentityIntentToStore();
  v150 = *(v153 - 8);
  v2 = __chkstk_darwin(v153);
  v137 = (&v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v149 = &v124 - v4;
  v5 = sub_100007224(&qword_10083AD08, &qword_1006D8FD0);
  v6 = __chkstk_darwin(v5 - 8);
  v134 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v133 = &v124 - v9;
  v10 = __chkstk_darwin(v8);
  v136 = &v124 - v11;
  __chkstk_darwin(v10);
  v146 = &v124 - v12;
  v127 = type metadata accessor for DIPError.Code();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v128 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IdentityElement();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v143 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v138 = &v124 - v19;
  v20 = __chkstk_darwin(v18);
  v148 = &v124 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v124 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v124 - v26;
  __chkstk_darwin(v25);
  v144 = (&v124 - v28);
  v129 = v1;
  v29 = IdentityDocumentDescriptor.elementsToIntentToStore.getter();
  v30 = 0;
  v31 = *(v29 + 64);
  v139 = (v29 + 64);
  v155 = v29;
  v32 = 1 << *(v29 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v135 = (v32 + 63) >> 6;
  v152 = v15 + 16;
  v157 = (v15 + 32);
  v142 = (v15 + 88);
  v141 = enum case for IdentityElement.ageIsOver(_:);
  v151 = v15;
  v132 = (v15 + 96);
  v145 = (v15 + 8);
  v156 = v14;
  v154 = v27;
  v147 = v24;
  if ((v33 & v31) != 0)
  {
    while (1)
    {
      v35 = v30;
LABEL_8:
      v36 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v37 = *(v155 + 48);
      v38 = v151;
      v140 = *(v151 + 72);
      v39 = *(v151 + 16);
      v40 = v144;
      v39(v144, v37 + v140 * (v36 | (v35 << 6)), v14);
      v0 = *(v38 + 32);
      v27 = v154;
      (v0)(v154, v40, v14);
      v41 = v147;
      v39(v147, v27, v14);
      v42 = *(v38 + 88);
      v43 = v42(v41, v14);
      if (v43 == v141)
      {
        break;
      }

      v44 = *v145;
      (*v145)(v27, v14);
      v44(v41, v14);
      v30 = v35;
      if (!v34)
      {
        goto LABEL_5;
      }
    }

    v130 = v0;
    v125 = v39;
    v45 = *v132;
    (*v132)(v41, v14);
    if ((*v41 - 126) < 0xFFFFFFFFFFFFFF83)
    {
      v46._countAndFlagsBits = 0x3864333035396233;
      v47._countAndFlagsBits = 0xD000000000000039;
      v47._object = 0x8000000100701A90;
      v46._object = 0xE800000000000000;
      logMilestone(tag:description:)(v46, v47);
      v158 = 0;
      v159 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v158 = 0x20746E656D656C65;
      v159 = 0xE800000000000000;
      sub_10014A184(&qword_10083A998, &type metadata accessor for IdentityElement, &protocol conformance descriptor for IdentityElement);
      v48 = v154;
      v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v49);

      v50._countAndFlagsBits = 0xD00000000000001BLL;
      v50._object = 0x8000000100701AD0;
      String.append(_:)(v50);
      (*(v126 + 104))(v128, enum case for DIPError.Code.digitalPresentmentInvalidElement(_:), v127);
      v51 = v145;
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return (*v51)(v48, v156);
    }

    v124 = v45;
    v131 = *v145;
    v53 = v154;
    v54 = v154;
    while (1)
    {
      v131(v53, v14);
      v0 = v130;
      if (!v34)
      {
        break;
      }

      v55 = v35;
      v56 = v140;
LABEL_20:
      v57 = v144;
      v58 = v125;
      v125(v144, *(v155 + 48) + v56 * (__clz(__rbit64(v34)) | (v55 << 6)), v14);
      (v0)(v54, v57, v14);
      v27 = v147;
      v0 = v54;
      v58(v147, v54, v14);
      v59 = v42(v27, v14);
      if (v59 == v141)
      {
        goto LABEL_71;
      }

      v34 &= v34 - 1;
      v131(v54, v14);
      v53 = v27;
      v35 = v55;
    }

    v56 = v140;
    while (1)
    {
      v55 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_70;
      }

      if (v55 >= v135)
      {
        break;
      }

      v34 = v139[v55];
      ++v35;
      if (v34)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v35 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_70;
      }

      if (v35 >= v135)
      {
        break;
      }

      v34 = v139[v35];
      ++v30;
      if (v34)
      {
        goto LABEL_8;
      }
    }
  }

  v60 = IdentityDocumentDescriptor.elementsToIntentToStore.getter();
  v61 = 0;
  v62 = *(v60 + 64);
  v131 = (v60 + 64);
  v135 = v60;
  v63 = 1 << *(v60 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & v62;
  v130 = (v63 + 63) >> 6;
  v147 = (v150 + 16);
  v155 = v150 + 32;
  v140 = (v150 + 88);
  LODWORD(v139) = enum case for IdentityIntentToStore.mayStoreForDays(_:);
  v144 = (v150 + 8);
  v132 = (v150 + 96);
  v66 = v153;
  v67 = v138;
  v68 = v137;
  v69 = v136;
  v27 = v146;
  if ((v64 & v62) == 0)
  {
LABEL_26:
    if (v130 <= v61 + 1)
    {
      v70 = v61 + 1;
    }

    else
    {
      v70 = v130;
    }

    while (1)
    {
      v0 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v0 >= v130)
      {
        v154 = (v70 - 1);
        v84 = v67;
        v89 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
        (*(*(v89 - 8) + 56))(v69, 1, 1, v89);
        v65 = 0;
        goto LABEL_33;
      }

      v65 = *(v131 + v0);
      ++v61;
      if (v65)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_69;
  }

  while (1)
  {
    v0 = v61;
LABEL_32:
    v71 = __clz(__rbit64(v65));
    v65 &= v65 - 1;
    v72 = v71 | (v0 << 6);
    v73 = v135;
    v74 = v151;
    v75 = v148;
    (*(v151 + 16))(v148, *(v135 + 48) + *(v151 + 72) * v72, v14);
    v76 = v149;
    v77 = v150;
    (*(v150 + 16))(v149, *(v73 + 56) + *(v150 + 72) * v72, v66);
    v78 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
    v79 = v66;
    v80 = *(v78 + 48);
    v81 = *(v74 + 32);
    v82 = v136;
    v81(v136, v75, v156);
    v83 = *(v77 + 32);
    v69 = v82;
    v83(&v82[v80], v76, v79);
    (*(*(v78 - 8) + 56))(v82, 0, 1, v78);
    v154 = v0;
    v84 = v138;
    v68 = v137;
    v27 = v146;
LABEL_33:
    sub_1000B1FC8(v69, v27, &qword_10083AD08, &qword_1006D8FD0);
    v14 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
    v85 = *(v14 - 8);
    v86 = *(v85 + 48);
    if (v86(v27, 1, v14) == 1)
    {
      break;
    }

    v87 = *(v14 + 48);
    v14 = v156;
    v67 = v84;
    (*v157)(v84, v27, v156);
    v66 = v153;
    (*v155)(v68, &v27[v87], v153);
    v88 = (*v140)(v68, v66);
    if (v88 == v139)
    {
      (*v132)(v68, v66);
      v90 = *v68;
      if (*v68 <= 0)
      {
        v117._countAndFlagsBits = 0x3662313537656335;
        v118._countAndFlagsBits = 0xD000000000000043;
        v118._object = 0x8000000100701C30;
        v117._object = 0xE800000000000000;
        logMilestone(tag:description:)(v117, v118);
        v158 = 0;
        v159 = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        v158 = 0x20746E656D656C65;
        v159 = 0xE800000000000000;
        sub_10014A184(&qword_10083A998, &type metadata accessor for IdentityElement, &protocol conformance descriptor for IdentityElement);
        v119._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v119);

        v120._countAndFlagsBits = 0xD000000000000024;
        v120._object = 0x8000000100701C80;
        String.append(_:)(v120);
        v160 = v90;
        v121._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v121);

        (*(v126 + 104))(v128, enum case for DIPError.Code.digitalPresentmentInvalidElement(_:), v127);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        return (*v145)(v67, v14);
      }

      (*v145)(v67, v14);
      v61 = v154;
      v27 = v146;
      if (!v65)
      {
        goto LABEL_26;
      }
    }

    else
    {
      (*v145)(v67, v14);
      (*v144)(v68, v66);
      v61 = v154;
      if (!v65)
      {
        goto LABEL_26;
      }
    }
  }

  v140 = (v85 + 48);

  v91 = IdentityDocumentDescriptor.elementsToIntentToStore.getter();
  LODWORD(v132) = 0;
  LODWORD(v130) = 0;
  v27 = 0;
  v93 = v91 + 64;
  v92 = *(v91 + 64);
  v137 = v91;
  v94 = 1 << *(v91 + 32);
  v95 = -1;
  if (v94 < 64)
  {
    v95 = ~(-1 << v94);
  }

  v96 = v95 & v92;
  v97 = (v94 + 63) >> 6;
  v139 = (v85 + 56);
  LODWORD(v131) = enum case for IdentityElement.age(_:);
  v98 = v153;
  v0 = v134;
  v99 = v133;
  v154 = v14;
  v136 = v86;
  v135 = v91 + 64;
  v138 = v97;
  while (v96)
  {
    v101 = v27;
LABEL_57:
    v104 = __clz(__rbit64(v96));
    v96 &= v96 - 1;
    v105 = v104 | (v101 << 6);
    v106 = v137;
    v107 = v151;
    (*(v151 + 16))(v148, v137[6] + *(v151 + 72) * v105, v156);
    v108 = *(v106 + 7);
    v110 = v149;
    v109 = v150;
    v98 = v153;
    (*(v150 + 16))(v149, v108 + *(v150 + 72) * v105, v153);
    v14 = v154;
    v146 = *(v154 + 12);
    v0 = v134;
    (*(v107 + 32))(v134);
    (*(v109 + 32))(&v146[v0], v110, v98);
    v111 = 0;
    v99 = v133;
    v86 = v136;
    v93 = v135;
LABEL_58:
    (*v139)(v0, v111, 1, v14);
    sub_1000B1FC8(v0, v99, &qword_10083AD08, &qword_1006D8FD0);
    if (v86(v99, 1, v14) == 1)
    {

      if (v130 & v132)
      {
        v115._countAndFlagsBits = 0x3037383930653165;
        v116._countAndFlagsBits = 0xD00000000000003FLL;
        v116._object = 0x8000000100701BB0;
        v115._object = 0xE800000000000000;
        logMilestone(tag:description:)(v115, v116);
        (*(v126 + 104))(v128, enum case for DIPError.Code.digitalPresentmentInvalidElement(_:), v127);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        return swift_willThrow();
      }

      return result;
    }

    v112 = v156;
    v113 = v143;
    (*v157)(v143, v99, v156);
    v114 = (*v142)(v113, v112);
    if (v114 == v141)
    {
      v100 = &v161;
LABEL_45:
      *(v100 - 64) = 1;
      goto LABEL_46;
    }

    if (v114 == v131)
    {
      v100 = &v160;
      goto LABEL_45;
    }

    (*v145)(v143, v112);
LABEL_46:
    v14 = v154;
    (*v144)((v99 + *(v154 + 12)), v98);
    v97 = v138;
  }

  if (v97 <= (v27 + 1))
  {
    v102 = v27 + 1;
  }

  else
  {
    v102 = v97;
  }

  v103 = v102 - 1;
  while (1)
  {
    v101 = (v27 + 1);
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v101 >= v97)
    {
      v96 = 0;
      v111 = 1;
      v27 = v103;
      goto LABEL_58;
    }

    v96 = *(v93 + 8 * v101);
    ++v27;
    if (v96)
    {
      v27 = v101;
      goto LABEL_57;
    }
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  v124(v27, v14);
  v122._countAndFlagsBits = 0x6334346461363462;
  v123._countAndFlagsBits = 0xD000000000000048;
  v123._object = 0x8000000100701B10;
  v122._object = 0xE800000000000000;
  logMilestone(tag:description:)(v122, v123);
  (*(v126 + 104))(v128, enum case for DIPError.Code.digitalPresentmentInvalidElement(_:), v127);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return (v131)(v0, v14);
}

uint64_t sub_100148358(uint64_t a1)
{
  v46 = a1;
  v48 = type metadata accessor for DIPError.Code();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v2 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v44 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v38 - v8;
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = type metadata accessor for ISO18013KnownDocTypes();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v47;
  result = sub_100142F4C(v15);
  if (!v16)
  {
    v18 = v46;
    v39 = v6;
    v40 = v9;
    v42 = v11;
    v43 = v3;
    v47 = 0;
    v19 = (*(v13 + 88))(v15, v12);
    if (v19 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
    {
      v41 = v2;
      v20 = *(v18 + 16);
      v21 = (v18 + 32);
      while (1)
      {
        if (!v20)
        {
          (*(v45 + 104))(v41, enum case for DIPError.Code.missingEntitlement(_:), v48);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          goto LABEL_28;
        }

        if (!*v21)
        {
          break;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v21;
        --v20;
        if (v22)
        {
          goto LABEL_25;
        }
      }

LABEL_25:
      v31 = v42;
      defaultLogger()();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_36;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "DigitalPresentmentRequest Caller is entitled for US driver's license";
    }

    else
    {
      v23 = v48;
      if (v19 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
      {
        v41 = v2;
        v24 = *(v18 + 16);
        v25 = (v18 + 32);
        while (1)
        {
          if (!v24)
          {
            (*(v45 + 104))(v41, enum case for DIPError.Code.missingEntitlement(_:), v23);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
            goto LABEL_28;
          }

          if (*v25 <= 1u && *v25)
          {
            break;
          }

          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v25;
          --v24;
          v23 = v48;
          if (v26)
          {
            goto LABEL_30;
          }
        }

LABEL_30:
        v31 = v40;
        defaultLogger()();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v32, v33))
        {
          goto LABEL_36;
        }

        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = "DigitalPresentmentRequest Caller is entitled for JP national ID Card";
      }

      else
      {
        if (v19 != enum case for ISO18013KnownDocTypes.photoID(_:))
        {
          v47 = "onal ID card region: ";
          (*(v45 + 104))(v2, enum case for DIPError.Code.missingEntitlement(_:), v48);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          return (*(v13 + 8))(v15, v12);
        }

        v41 = v2;
        v27 = *(v18 + 16);
        v28 = (v18 + 32);
        v29 = v45;
        while (1)
        {
          if (!v27)
          {
            (*(v29 + 104))(v41, enum case for DIPError.Code.missingEntitlement(_:), v23);
            sub_1000402AC(_swiftEmptyArrayStorage);
            type metadata accessor for DIPError();
            sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
            swift_allocError();
LABEL_28:
            DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
            return swift_willThrow();
          }

          if (*v28 > 1u && *v28 != 3)
          {
            break;
          }

          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v28;
          --v27;
          v23 = v48;
          if (v30)
          {
            goto LABEL_33;
          }
        }

LABEL_33:
        v31 = v39;
        defaultLogger()();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v32, v33))
        {
          goto LABEL_36;
        }

        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = "DigitalPresentmentRequest Caller is entitled for photo ID";
      }
    }

    _os_log_impl(&_mh_execute_header, v32, v33, v35, v34, 2u);

LABEL_36:
    v36 = v43;
    v37 = v44;

    return (*(v37 + 8))(v31, v36);
  }

  return result;
}

void sub_100148D3C(uint64_t a1)
{
  v93 = a1;
  v74 = type metadata accessor for DIPError.Code();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v75 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for IdentityIntentToStore();
  v3 = *(v101 - 8);
  __chkstk_darwin(v101);
  v87 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityElement();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v96 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v55 - v10;
  __chkstk_darwin(v9);
  v85 = &v55 - v12;
  v13 = sub_100007224(&qword_10083AD08, &qword_1006D8FD0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v99 = &v55 - v17;
  v60 = v1;
  v18 = IdentityDocumentDescriptor.elementsToIntentToStore.getter();
  v19 = 0;
  v20 = *(v18 + 64);
  v81 = v18 + 64;
  v92 = v18;
  v21 = 1 << *(v18 + 32);
  v95 = enum case for IdentityElement.ageIsOver(_:);
  v22 = -1;
  v82 = enum case for IdentityElement.givenName(_:);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v79 = enum case for IdentityElement.familyName(_:);
  v80 = (v21 + 63) >> 6;
  v100 = (v6 + 16);
  v84 = v3 + 16;
  v78 = enum case for IdentityElement.sex(_:);
  v24 = (v6 + 32);
  v83 = v3 + 32;
  v94 = (v6 + 88);
  v77 = enum case for IdentityElement.portrait(_:);
  v72 = enum case for IdentityElement.address(_:);
  v71 = enum case for IdentityElement.height(_:);
  v70 = enum case for IdentityElement.weight(_:);
  v69 = enum case for IdentityElement.eyeColor(_:);
  v68 = enum case for IdentityElement.hairColor(_:);
  v67 = enum case for IdentityElement.organDonorStatus(_:);
  v66 = enum case for IdentityElement.veteranStatus(_:);
  v65 = enum case for IdentityElement.issuingAuthority(_:);
  v64 = enum case for IdentityElement.documentDHSComplianceStatus(_:);
  v63 = enum case for IdentityElement.documentIssueDate(_:);
  v62 = enum case for IdentityElement.documentExpirationDate(_:);
  v61 = enum case for IdentityElement.documentNumber(_:);
  v59 = enum case for IdentityElement.drivingPrivileges(_:);
  v86 = v6;
  v97 = (v6 + 8);
  v58 = enum case for IdentityElement.age(_:);
  v57 = enum case for IdentityElement.dateOfBirth(_:);
  v88 = v3;
  v89 = v16;
  v98 = (v3 + 8);
  v104 = v5;
  v90 = (v6 + 32);
  v91 = v11;
  if ((v22 & v20) == 0)
  {
LABEL_5:
    if (v80 <= v19 + 1)
    {
      v26 = v19 + 1;
    }

    else
    {
      v26 = v80;
    }

    v27 = v26 - 1;
    while (1)
    {
      v25 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v25 >= v80)
      {
        v47 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
        (*(*(v47 - 8) + 56))(v16, 1, 1, v47);
        v23 = 0;
        goto LABEL_13;
      }

      v23 = *(v81 + 8 * v25);
      ++v19;
      if (v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_65:
    v56 = v6;
    (*v97)(v11, v5);

    goto LABEL_63;
  }

  while (1)
  {
    v25 = v19;
LABEL_12:
    v28 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v29 = v28 | (v25 << 6);
    v30 = v92;
    v31 = v85;
    v32 = v86;
    (*(v86 + 16))(v85, *(v92 + 48) + *(v86 + 72) * v29, v5);
    v33 = v87;
    v34 = v88;
    v35 = v101;
    (*(v88 + 16))(v87, *(v30 + 56) + *(v88 + 72) * v29, v101);
    v36 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
    v37 = *(v36 + 48);
    v38 = *(v32 + 32);
    v39 = v89;
    v40 = v31;
    v24 = v90;
    v38(v89, v40, v104);
    v41 = *(v34 + 32);
    v16 = v39;
    v41(&v39[v37], v33, v35);
    (*(*(v36 - 8) + 56))(v39, 0, 1, v36);
    v27 = v25;
    v11 = v91;
LABEL_13:
    v42 = v99;
    sub_1000B1FC8(v16, v99, &qword_10083AD08, &qword_1006D8FD0);
    v43 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
    if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
    {

      v49._countAndFlagsBits = 0xD000000000000022;
      v50._countAndFlagsBits = 0x3333626532323131;
      v49._object = 0x8000000100701D20;
      v50._object = 0xE800000000000000;
      logMilestone(tag:description:)(v50, v49);
      return;
    }

    v6 = *(v43 + 48);
    v5 = v104;
    (*v24)(v11, v42, v104);
    v44 = v96;
    (*v100)(v96, v11, v5);
    v45 = (*v94)(v44, v5);
    if (v45 == v95)
    {
      v46 = 17;
      goto LABEL_58;
    }

    if (v45 == v82)
    {
      v46 = 0;
      goto LABEL_58;
    }

    if (v45 == v79)
    {
      v46 = 1;
      goto LABEL_58;
    }

    if (v45 == v78)
    {
      v46 = 2;
      goto LABEL_58;
    }

    if (v45 == v77)
    {
      v46 = 3;
      goto LABEL_58;
    }

    if (v45 == v72)
    {
      v46 = 4;
      goto LABEL_58;
    }

    if (v45 == v71)
    {
      v46 = 5;
      goto LABEL_58;
    }

    if (v45 == v70)
    {
      v46 = 6;
      goto LABEL_58;
    }

    if (v45 == v69)
    {
      v46 = 7;
      goto LABEL_58;
    }

    if (v45 == v68)
    {
      v46 = 8;
      goto LABEL_58;
    }

    if (v45 == v67)
    {
      v46 = 9;
      goto LABEL_58;
    }

    if (v45 == v66)
    {
      v46 = 10;
      goto LABEL_58;
    }

    if (v45 == v65)
    {
      v46 = 11;
      goto LABEL_58;
    }

    if (v45 == v64)
    {
      v46 = 12;
      goto LABEL_58;
    }

    if (v45 == v63)
    {
      v46 = 15;
      goto LABEL_58;
    }

    if (v45 == v62)
    {
      v46 = 13;
      goto LABEL_58;
    }

    if (v45 == v61)
    {
      v48 = v76;
      v46 = sub_100149B44();
      v76 = v48;
      if (v48)
      {
        goto LABEL_65;
      }

      goto LABEL_57;
    }

    if (v45 == v59)
    {
      v46 = 16;
      goto LABEL_58;
    }

    v56 = v6;
    if (v45 != v58)
    {
      break;
    }

    v46 = 17;
LABEL_56:
    v5 = v104;
    v11 = v91;
    v42 = v99;
    v6 = v56;
    v16 = v89;
LABEL_57:
    v24 = v90;
LABEL_58:
    if (!sub_10032D364(v46, v93))
    {
      v56 = v6;
      v102 = 0;
      v103 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v102 = 0xD000000000000024;
      v103 = 0x8000000100701DA0;
      sub_10014A184(&qword_10083A998, &type metadata accessor for IdentityElement, &protocol conformance descriptor for IdentityElement);
      v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v51);

      (*(v73 + 104))(v75, enum case for DIPError.Code.missingEntitlement(_:), v74);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      (*v97)(v91, v5);
      goto LABEL_63;
    }

    (*v97)(v11, v5);
    (*v98)(v42 + v6, v101);
    v19 = v27;
    if (!v23)
    {
      goto LABEL_5;
    }
  }

  if (v45 == v57)
  {
    v46 = 18;
    goto LABEL_56;
  }

  v102 = 0;
  v103 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v102 = 0xD000000000000010;
  v103 = 0x8000000100701D50;
  sub_10014A184(&qword_10083A998, &type metadata accessor for IdentityElement, &protocol conformance descriptor for IdentityElement);
  v52 = v104;
  v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v53);

  (*(v73 + 104))(v75, enum case for DIPError.Code.badLogic(_:), v74);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v54 = *v97;
  (*v97)(v91, v52);
  v54(v96, v52);
LABEL_63:
  (*v98)(v99 + v56, v101);
}

uint64_t sub_100149B44()
{
  v2 = type metadata accessor for DIPError.Code();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DigitalPresentmentDocumentType();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ISO18013KnownDocTypes();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100142F4C(v11);
  if (!v1)
  {
    v17 = v0;
    v13 = (*(v9 + 88))(v11, v8);
    if (v13 == enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:))
    {
      return 14;
    }

    else if (v13 == enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:))
    {
      return 19;
    }

    else if (v13 == enum case for ISO18013KnownDocTypes.photoID(_:))
    {
      return 14;
    }

    else
    {
      v19 = 0;
      v20 = 0xE000000000000000;
      v16 = v8;
      _StringGuts.grow(_:)(27);

      v19 = 0xD000000000000019;
      v20 = 0x80000001006FFEF0;
      IdentityDocumentDescriptor.documentType.getter();
      sub_10014A184(&qword_10083BAF0, &type metadata accessor for DigitalPresentmentDocumentType, &protocol conformance descriptor for DigitalPresentmentDocumentType);
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      (*(v18 + 8))(v7, v5);
      v18 = v20;
      (*(v21 + 104))(v4, enum case for DIPError.Code.digitalPresentmentInvalidDocumentDescriptor(_:), v2);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10014A184(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return (*(v9 + 8))(v11, v16);
    }
  }

  return result;
}

void sub_100149FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() standardUserDefaults];
  v9._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableElementsEntitlementChecks.getter();
  v10 = NSUserDefaults.internalBool(forKey:)(v9);

  if (v10)
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "DigitalPresentmentRequest Not checking elements entitlement due to user defaults settings", v13, 2u);
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v14 = v15[1];
    sub_100148358(a1);
    if (!v14)
    {
      sub_100148D3C(a2);
    }
  }
}

uint64_t sub_10014A184(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10014A1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_10014A310, 0, 0);
}

uint64_t sub_10014A310(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentResponseBuilder buildResponse invoked.", v4, 2u);
  }

  v6 = v1[16];
  v5 = v1[17];
  v7 = v1[15];
  v8 = v1[11];

  (*(v6 + 8))(v5, v7);
  v9 = v8[5];
  v10 = v8[6];
  sub_10000BA08(v8 + 2, v9);
  v13 = (*(v10 + 16) + **(v10 + 16));
  v11 = swift_task_alloc();
  v1[18] = v11;
  *v11 = v1;
  v11[1] = sub_10014A4D8;

  return v13(v9, v10);
}

uint64_t sub_10014A4D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10014A634, 0, 0);
  }
}

uint64_t sub_10014A634()
{
  v1 = v0[19];
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];

    (*(v10 + 104))(v9, enum case for DIPError.Code.digitalPresentmentInvalidMerchantCertificate(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_8:

    v12 = v0[1];

    return v12();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v0[19] + 32);
  }

  v5 = v4;
  v6 = SecCertificateRef.publicKeySHA256()();
  v8 = v7;

  v0[21] = v6;
  v0[22] = v8;
  if (v8 >> 60 == 15)
  {
    goto LABEL_7;
  }

  if (v3)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v13 = *(v0[19] + 32);
  }

  v14 = v13;
  v15 = SecCertificateRef.organizationalUnit()();

  if (!v15.value._object)
  {
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[12];

    (*(v19 + 104))(v18, enum case for DIPError.Code.digitalPresentmentInvalidMerchantCertificate(_:), v20);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BD94(v6, v8);
    goto LABEL_8;
  }

  v16 = v0[20];
  v0[23] = sub_1001416A8(v15.value._countAndFlagsBits, v15.value._object, v6, v8);
  v0[24] = v17;
  if (v16)
  {

    sub_10000BD94(v6, v8);

    goto LABEL_8;
  }

  v21 = v0[10];

  v22 = (v21 + *(type metadata accessor for DigitalPresentmentEligibleProposalData(0) + 24));
  v23 = v22[3];
  v24 = v22[4];
  sub_10000BA08(v22, v23);
  v26 = (*(v24 + 8) + **(v24 + 8));
  v25 = swift_task_alloc();
  v0[25] = v25;
  *v25 = v0;
  v25[1] = sub_10014AAC0;

  return v26(v23, v24);
}

uint64_t sub_10014AAC0(char a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_10014ABC0, 0, 0);
}

uint64_t sub_10014ABC0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  if (*(v0 + 232) == 1)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    type metadata accessor for SecCertificate(0);
    Array<A>.derRepresentation.getter();

    v8 = *v3;
    v7 = v3[1];
    v9 = objc_opt_self();

    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = Array._bridgeToObjectiveC()().super.isa;

    v12 = [v9 appleHPKEWithSessionTranscript:isa certificateChain:v11];

    *(v0 + 16) = v8;
    *(v0 + 24) = v7;
    *(v0 + 32) = v6;
    *(v0 + 40) = v5;
    *(v0 + 48) = v12;
    *(v0 + 56) = 0;
    sub_10000BA08((v4 + OBJC_IVAR____TtC8coreidvd33DigitalPresentmentResponseBuilder_presentmentSessionManager), *(v4 + OBJC_IVAR____TtC8coreidvd33DigitalPresentmentResponseBuilder_presentmentSessionManager + 24));
    sub_10000B8B8(v6, v5);
    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *v13 = v0;
    v13[1] = sub_10014AEAC;

    return sub_10015F8B0(v0 + 16);
  }

  else
  {
    v15 = *(v0 + 168);
    v20 = *(v0 + 176);
    v17 = *(v0 + 104);
    v16 = *(v0 + 112);
    v18 = *(v0 + 96);

    (*(v17 + 104))(v16, enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:), v18);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v1, v2);
    sub_10000BD94(v15, v20);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_10014AEAC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_10014B118;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_10014AFD4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10014AFD4()
{
  v1 = v0[28];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6._countAndFlagsBits = 0x3666613738363937;
  v7._object = 0x8000000100702090;
  v6._object = 0xE800000000000000;
  v7._countAndFlagsBits = 0xD00000000000003BLL;
  logMilestone(tag:description:)(v6, v7);
  type metadata accessor for DigitalPresentmentResponse();
  v8 = [v1 responseData];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = dispatch thunk of DigitalPresentmentResponse.__allocating_init(encryptedData:)();
  sub_10014B4A8((v0 + 2));
  sub_10000B90C(v3, v2);
  sub_10000BD94(v5, v4);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_10014B118()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  sub_10014B4A8((v0 + 2));
  sub_10000B90C(v1, v2);
  sub_10000BD94(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10014B1B8()
{
  sub_10000BB78((v0 + 16));
  sub_100141F88(v0 + OBJC_IVAR____TtC8coreidvd33DigitalPresentmentResponseBuilder_isoBuilder);
  sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd33DigitalPresentmentResponseBuilder_presentmentSessionManager));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DigitalPresentmentResponseBuilder(uint64_t a1)
{
  result = qword_10083BBC8;
  if (!qword_10083BBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014B288(uint64_t a1)
{
  result = type metadata accessor for ValidatedDigitalPresentmentRequest(319);
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

uint64_t sub_10014B324(uint64_t a1)
{
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 48);
  sub_10000BA08((*v1 + 16), v4);
  (*(v5 + 8))(v4, v5);
  v6 = (a1 + *(type metadata accessor for DigitalPresentmentEligibleProposalData(0) + 24));
  v7 = v6[3];
  v8 = v6[4];
  sub_10000BA08(v6, v7);
  (*(v8 + 24))(v7, v8);
  v9 = *(v2 + 8);

  return v9();
}

uint64_t sub_10014B3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10013898C;

  return sub_10014A1F0(a1, a2, a3);
}

uint64_t sub_10014B4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100007224(&qword_1008336D8, qword_1006BF6F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000BE18(a1, &qword_1008336D8, qword_1006BF6F0);
    sub_10014EE50(a2, a3, v9);

    return sub_10000BE18(v9, &qword_1008336D8, qword_1006BF6F0);
  }

  else
  {
    sub_10000BA4C(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10016C33C(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_10014B6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10016C328(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10003ADCC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10016EDF4();
        v14 = v16;
      }

      result = sub_100150370(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_10014B7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10016C67C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10003ADCC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10016F088();
        v14 = v16;
      }

      result = sub_100150370(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

Swift::Int sub_10014B8AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_10016C818(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_10003B078(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_10016F1FC();
        v11 = v13;
      }

      result = sub_10014F818(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_10014B96C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_10001F358(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    v5 = v16;
    v6 = v17;
    v7 = sub_10001F370(v15, v16);
    __chkstk_darwin(v7);
    v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v9);
    sub_10015B6E4(v9, a2, isUniquelyReferenced_nonNull_native, &v14, v5, v6);
    sub_10000BB78(v15);
    v11 = type metadata accessor for DIPError.PropertyKey();
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v2 = v14;
  }

  else
  {
    sub_10000BE18(a1, &qword_10083BD10, &qword_1006DA228);
    sub_10014F108(a2, v15);
    v13 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_10000BE18(v15, &qword_10083BD10, &qword_1006DA228);
  }

  return result;
}

uint64_t sub_10014BB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_10001F358(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_10016C964(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_10000BE18(a1, &qword_100834378, &unk_1006BFF50);
    sub_10014F1EC(a2, a3, v9);

    return sub_10000BE18(v9, &qword_100834378, &unk_1006BFF50);
  }

  return result;
}

uint64_t sub_10014BC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10016CAB8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_10003ADCC(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_10016F53C();
        v16 = v18;
      }

      result = sub_10015000C(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_10014BD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_10001F348(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_10016CC40(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_10000BE18(a1, &unk_100845ED0, &qword_1006DA1D0);
    sub_10014F348(a2, a3, v9);

    return sub_10000BE18(v9, &unk_100845ED0, &qword_1006DA1D0);
  }

  return result;
}

uint64_t sub_10014BDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100007224(&qword_10083BD28, &qword_1006DA240);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for IdentityProofingDisplayMessage();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_10000BE18(a1, &qword_10083BD28, &qword_1006DA240);
    sub_10014F42C(a2, a3, &type metadata accessor for IdentityProofingDisplayMessage, &type metadata accessor for IdentityProofingDisplayMessage, sub_10016F858, v9);

    return sub_10000BE18(v9, &qword_10083BD28, &qword_1006DA240);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10016CD90(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

void sub_10014C004(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v5 = sub_10003B1D8(a3);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v3;
      v13 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10016F880();
        v9 = v13;
      }

      sub_10014F68C(v7, v9);
      *v4 = v9;
    }

    else
    {
    }
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_10016CF6C(a1, a3, v11);

    *v3 = v14;
  }
}

uint64_t sub_10014C0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100007224(&qword_1008399F0, &unk_1006DA210);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for RecipientEncryptionCertificate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_10000BE18(a1, &qword_1008399F0, &unk_1006DA210);
    sub_10014F42C(a2, a3, &type metadata accessor for RecipientEncryptionCertificate, &type metadata accessor for RecipientEncryptionCertificate, sub_1001705A4, v9);

    return sub_10000BE18(v9, &qword_1008399F0, &unk_1006DA210);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10016D3F0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_10014C310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10016D5CC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10003ADCC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1001705CC();
        v14 = v16;
      }

      result = sub_100150370(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

Swift::Int sub_10014C408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_10016DB40(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_10003B6E4(a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_1001713B8();
        v13 = v15;
      }

      result = sub_100150D08(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t sub_10014C4DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100007224(&qword_10083BD38, &qword_1006DA250);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10000BE18(a1, &qword_10083BD38, &qword_1006DA250);
    v13 = sub_10003B6E4(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100171048();
        v17 = v21;
      }

      sub_1000B1FC8(*(v17 + 56) + *(v10 + 72) * v15, v8, &qword_1008335C0, &qword_1006DA7B0);
      sub_100150A70(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_10000BE18(v8, &qword_10083BD38, &qword_1006DA250);
  }

  else
  {
    sub_1000B1FC8(a1, v12, &qword_1008335C0, &qword_1006DA7B0);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_10016D8C0(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_10014C730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    sub_10016DE58(a1, a2, a3, a4, a5, a6, isUniquelyReferenced_nonNull_native);

    *v6 = v21;
  }

  else
  {
    v16 = sub_10003ADCC(a5, a6);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v22 = *v7;
      if (!v19)
      {
        sub_100171830();
        v20 = v22;
      }

      result = sub_1001501BC(v16, v20);
      *v7 = v20;
    }
  }

  return result;
}

uint64_t sub_10014C858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityIntentToStore();
  v79 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v77 = &v59 - v8;
  v78 = type metadata accessor for IdentityElement();
  v69 = *(v78 - 8);
  v9 = __chkstk_darwin(v78);
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v59 - v11;
  v12 = sub_100007224(&qword_10083AD08, &qword_1006D8FD0);
  v13 = __chkstk_darwin(v12 - 8);
  result = __chkstk_darwin(v13);
  v72 = &v59 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v71 = v15;
  v66 = v7;
  v67 = a2;
  v17 = 0;
  v63 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v60 = (v21 + 63) >> 6;
  v61 = v19;
  v62 = v69 + 16;
  v76 = (v69 + 32);
  v74 = v79 + 16;
  v75 = (v79 + 32);
  v64 = (v69 + 8);
  v65 = (v79 + 8);
  while (v23)
  {
    v73 = (v23 - 1) & v23;
    v24 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
    v31 = v63;
    v33 = v68;
    v32 = v69;
    v34 = v78;
    (*(v69 + 16))(v68, *(v63 + 48) + *(v69 + 72) * v24, v78);
    v35 = *(v31 + 56);
    v36 = v79;
    v37 = v77;
    (*(v79 + 16))(v77, v35 + *(v79 + 72) * v24, v4);
    v38 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
    v39 = *(v38 + 48);
    v40 = *(v32 + 32);
    v28 = v71;
    v40(v71, v33, v34);
    (*(v36 + 32))(v28 + v39, v37, v4);
    (*(*(v38 - 8) + 56))(v28, 0, 1, v38);
    v27 = v72;
    v23 = v73;
LABEL_17:
    sub_1000B1FC8(v28, v27, &qword_10083AD08, &qword_1006D8FD0);
    v41 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
    v42 = (*(*(v41 - 8) + 48))(v27, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = *(v41 + 48);
    v45 = v4;
    v46 = v70;
    v47 = v78;
    (*v76)(v70, v27, v78);
    v48 = v66;
    (*v75)(v66, v27 + v44, v45);
    v49 = v67;
    v50 = sub_10003AC24(v46);
    v52 = v51;
    (*v64)(v46, v47);
    if ((v52 & 1) == 0)
    {
      (*v65)(v48, v45);
      return 0;
    }

    v53 = v79;
    v54 = *(v49 + 56) + *(v79 + 72) * v50;
    v55 = v77;
    (*(v79 + 16))(v77, v54, v45);
    sub_10015D610(&qword_10083BD00, &type metadata accessor for IdentityIntentToStore, &protocol conformance descriptor for IdentityIntentToStore);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v57 = *(v53 + 8);
    v57(v55, v45);
    result = (v57)(v48, v45);
    v4 = v45;
    if ((v56 & 1) == 0)
    {
      return v43;
    }
  }

  if (v60 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v60;
  }

  v26 = v25 - 1;
  v28 = v71;
  v27 = v72;
  while (1)
  {
    v29 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v29 >= v60)
    {
      v58 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
      (*(*(v58 - 8) + 56))(v28, 1, 1, v58);
      v23 = 0;
      v17 = v26;
      goto LABEL_17;
    }

    v30 = *(v61 + 8 * v29);
    ++v17;
    if (v30)
    {
      v73 = (v30 - 1) & v30;
      v24 = __clz(__rbit64(v30)) | (v29 << 6);
      v17 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}
uint64_t sub_15E8(unint64_t a1)
{
  if (a1 >> 62)
  {

    sub_2084(&qword_11370, &qword_A260);
    v1 = sub_8F94();
  }

  else
  {
    v1 = a1;

    sub_8FF4();
  }

  return v1;
}

id sub_166C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityDigitalSeparationSharedResource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_16E8(uint64_t a1, id *a2)
{
  result = sub_8DC4();
  *a2 = 0;
  return result;
}

uint64_t sub_1760(uint64_t a1, id *a2)
{
  v3 = sub_8DD4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_17E0@<X0>(uint64_t *a1@<X8>)
{
  sub_8DE4();
  v2 = sub_8DB4();

  *a1 = v2;
  return result;
}

uint64_t sub_1824(uint64_t a1)
{
  v2 = sub_1DD0(&qword_11390, type metadata accessor for DSSourceError, &unk_A3A0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1890(uint64_t a1)
{
  v2 = sub_1DD0(&qword_11390, type metadata accessor for DSSourceError, &unk_A3A0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1900(uint64_t a1)
{
  v2 = sub_1DD0(&qword_113C8, type metadata accessor for DSSourceError, &unk_A3E0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_198C(uint64_t a1)
{
  v2 = sub_1DD0(&qword_113C8, type metadata accessor for DSSourceError, &unk_A3E0);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_19F8(uint64_t a1)
{
  v2 = sub_1DD0(&qword_113C8, type metadata accessor for DSSourceError, &unk_A3E0);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1A64(void *a1, uint64_t a2)
{
  v4 = sub_1DD0(&qword_113C8, type metadata accessor for DSSourceError, &unk_A3E0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0(&qword_113C8, type metadata accessor for DSSourceError, &unk_A3E0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_9064();
  sub_8DA4();
  return sub_9084();
}

void *sub_1BF4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C10@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_8DB4();

  *a2 = v3;
  return result;
}

uint64_t sub_1C58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_8DE4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C84(uint64_t a1)
{
  v2 = sub_1DD0(&qword_11300, type metadata accessor for DSSourceName, &unk_A1CC);
  v3 = sub_1DD0(&qword_11308, type metadata accessor for DSSourceName, &unk_A174);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1DD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0(&qword_113C8, type metadata accessor for DSSourceError, &unk_A3E0);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1EB0()
{
  sub_8DE4();
  v0 = sub_8E24();

  return v0;
}

uint64_t sub_1EEC(uint64_t a1)
{
  sub_8DE4();
  sub_8E04();
}

Swift::Int sub_1F40()
{
  sub_8DE4();
  sub_9064();
  sub_8E04();
  v0 = sub_9084();

  return v0;
}

uint64_t sub_1FB4(void *a1, uint64_t *a2)
{
  v2 = sub_8DE4();
  v4 = v3;
  if (v2 == sub_8DE4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_8FE4();
  }

  return v7 & 1;
}

uint64_t sub_2084(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_22A4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_233C()
{
  result = qword_113B8;
  if (!qword_113B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_113B8);
  }

  return result;
}

id sub_2440()
{
  v1 = v0;
  v2 = sub_2084(&qword_11500, &qword_A588);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = DSSourceNameActivity;
  *&v0[OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationSource_name] = DSSourceNameActivity;
  v6 = objc_allocWithZone(HKHealthStore);
  v7 = v5;
  v8 = [v6 init];
  *&v1[OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationSource_healthStore] = v8;
  sub_8D94();
  *&v1[OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationSource_client] = sub_8D84();
  ASLoggingInitialize();
  v9 = type metadata accessor for ActivityDigitalSeparationSource();
  v15.receiver = v1;
  v15.super_class = v9;
  v10 = objc_msgSendSuper2(&v15, "init");
  v11 = sub_8E64();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v13 = v10;
  sub_2798(0, 0, v4, &unk_A628, v12);

  return v13;
}

uint64_t sub_25F4()
{
  v3 = (&async function pointer to dispatch thunk of ActivitySharingClient.activate() + async function pointer to dispatch thunk of ActivitySharingClient.activate());
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26A4;

  return v3();
}

uint64_t sub_26A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2084(&qword_11500, &qword_A588);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_80C4(a3, v25 - v10, &qword_11500, &qword_A588);
  v12 = sub_8E64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_7640(v11, &qword_11500, &qword_A588);
  }

  else
  {
    sub_8E54();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_8E44();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_8DF4() + 32;
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

      sub_7640(a3, &qword_11500, &qword_A588);

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

  sub_7640(a3, &qword_11500, &qword_A588);
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

uint64_t sub_2ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_2B50;

  return sub_5A98();
}

uint64_t sub_2B50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_2EB0;
  }

  else
  {
    v4 = sub_2C64;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2C64()
{
  v22 = v0;
  super_class = v0[3].super_class;
  v21 = &_swiftEmptyArrayStorage;
  if (super_class >> 62)
  {
    goto LABEL_17;
  }

  v2 = *(&dword_10 + (super_class & 0xFFFFFFFFFFFFFF8));
  for (i = super_class; v2; i = v0[3].super_class)
  {
    v4 = 0;
    v5 = super_class & 0xC000000000000001;
    v6 = super_class & 0xFFFFFFFFFFFFFF8;
    v7 = i + 32;
    while (1)
    {
      if (v5)
      {
        v8 = sub_8F24();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_16;
        }

        v8 = *&v7[8 * v4];
      }

      v9 = v8;
      v0 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v8 isFriendshipCurrentlyActive] & 1) != 0 || (objc_msgSend(v9, "hasInviteRequestFromMe"))
      {
        sub_8F44();
        sub_8F74();
        sub_8F84();
        super_class = &v21;
        sub_8F54();
      }

      else
      {
      }

      ++v4;
      if (v0 == v2)
      {
        v0 = v20;
        v10 = v21;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v2 = sub_8FA4();
  }

  v10 = &_swiftEmptyArrayStorage;
LABEL_19:
  receiver = v0[2].receiver;

  v12 = sub_7748(v10);

  v13 = type metadata accessor for ActivityDigitalSeparationSharedResource();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC25ActivityDigitalSeparation39ActivityDigitalSeparationSharedResource_digitalSeparationFriends] = v12;
  v0[1].receiver = v14;
  v0[1].super_class = v13;
  v15 = objc_msgSendSuper2(v0 + 1, "init");
  sub_2084(&qword_114F8, &qword_A580);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_A500;
  *(v16 + 32) = v15;
  v17 = v15;
  receiver(v16, 0);

  v18 = v0->super_class;

  return v18();
}

uint64_t sub_2EB0()
{
  result = sub_8E94();
  v2 = ASLogDefault;
  if (ASLogDefault)
  {
    v3 = result;
    if (os_log_type_enabled(ASLogDefault, result))
    {
      v4 = v2;
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      sub_75EC();
      swift_allocError();
      *v7 = 0;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_0, v4, v3, "Fetching friend list failed with error: %@", v5, 0xCu);
      sub_7640(v6, &qword_11518, &qword_A5C8);
    }

    v9 = *(v0 + 32);
    sub_75EC();
    v10 = swift_allocError();
    *v11 = 0;
    v9(&_swiftEmptyArrayStorage, v10);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_30B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2084(&unk_11530, &qword_A5F0);
  v5.super.isa = sub_8E34().super.isa;
  if (a2)
  {
    v6 = sub_8D34();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_315C(void **a1@<X0>, char **a2@<X8>)
{
  v5 = sub_2084(&unk_115F0, &qword_A770);
  __chkstk_darwin(v5 - 8);
  v7 = &v61 - v6;
  v8 = sub_8CB4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = type metadata accessor for ActivityDigitalSeparationFriend();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend_sharingFriend] = v12;
  v69.receiver = v14;
  v69.super_class = v13;
  v15 = v12;
  v16 = objc_msgSendSuper2(&v69, "init");
  v17 = sub_8E94();
  v18 = ASLogDefault;
  if (!ASLogDefault)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v68 = v17;
  if (!os_log_type_enabled(ASLogDefault, v17))
  {
LABEL_36:
    *a2 = v16;
    return;
  }

  v67 = a2;
  v65 = v2;
  v64 = v18;
  v19 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  v70 = v63;
  *v19 = 136315650;
  *(v19 + 4) = sub_628C(0xD00000000000001FLL, 0x80000000000099F0, &v70);
  *(v19 + 12) = 2080;
  v20 = v16;
  v21 = OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend_sharingFriend;
  v66 = v20;
  v22 = [*(v20 + OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend_sharingFriend) displayName];
  if (v22)
  {
    v23 = v22;
    sub_8DE4();
  }

  (*(v9 + 56))(v7, 1, 1, v8);
  sub_8C94();
  v24 = sub_8C84();
  v26 = v25;
  (*(v9 + 8))(v11, v8);
  if (v26)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v28 = 0xE000000000000000;
  if (v26)
  {
    v29 = v26;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  v30 = sub_628C(v27, v29, &v70);

  *(v19 + 14) = v30;
  *(v19 + 22) = 2080;
  v31 = *(v66 + v21);
  v16 = v66;
  v32 = [v31 contact];
  a2 = v67;
  if (!v32 || (v33 = v32, v34 = [v32 primaryRelationship], v33, !v34))
  {
    v37 = 0;
LABEL_35:
    v59 = sub_628C(v37, v28, &v70);

    *(v19 + 24) = v59;
    v60 = v64;
    _os_log_impl(&dword_0, v64, v68, "Created %s with name: %s and email: %s", v19, 0x20u);
    swift_arrayDestroy();

    goto LABEL_36;
  }

  v35 = [v34 cloudKitAddress];
  if (v35)
  {
    v36 = v35;
    v37 = sub_8DE4();
    v28 = v38;

    v39 = sub_8DB4();
    IsEmail = ASDestinationIsEmail();

    if (IsEmail)
    {
      goto LABEL_34;
    }
  }

  v41 = [v34 preferredReachableAddress];
  if (!v41)
  {
    goto LABEL_19;
  }

  v42 = v41;
  v37 = sub_8DE4();
  v28 = v43;

  v44 = sub_8DB4();
  v45 = ASDestinationIsEmail();

  if (v45)
  {
LABEL_34:

    goto LABEL_35;
  }

LABEL_19:
  v46 = [v34 addresses];
  if (v46)
  {
    v47 = v46;
    v48 = sub_8E74();

    v49 = v48 + 56;
    v50 = 1 << *(v48 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(v48 + 56);
    v53 = (v50 + 63) >> 6;
    v62 = v48;

    v54 = 0;
    if (v52)
    {
      while (1)
      {
        v55 = v54;
LABEL_28:
        v56 = (*(v62 + 48) + ((v55 << 10) | (16 * __clz(__rbit64(v52)))));
        v37 = *v56;
        v28 = v56[1];

        v57 = sub_8DB4();
        v58 = ASDestinationIsEmail();

        if (v58)
        {
          break;
        }

        v52 &= v52 - 1;

        v54 = v55;
        if (!v52)
        {
          goto LABEL_24;
        }
      }

      a2 = v67;
LABEL_33:

      v16 = v66;
      v34 = v61;
      goto LABEL_34;
    }

LABEL_24:
    a2 = v67;
    while (1)
    {
      v55 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v55 >= v53)
      {
        v37 = 0;
        v28 = 0xE000000000000000;
        goto LABEL_33;
      }

      v52 = *(v49 + 8 * v55);
      ++v54;
      if (v52)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_40:
  __break(1u);
}

void sub_3748(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_8D34();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_37C4(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

uint64_t sub_385C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_2084(&qword_11500, &qword_A588);
  v6[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_392C;

  return sub_5A98();
}

uint64_t sub_392C(uint64_t a1)
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
    *(v4 + 56) = a1;

    return _swift_task_switch(sub_3A80, 0, 0);
  }
}

uint64_t sub_3A80()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = sub_8E64();
  v9 = *(v0 + 16);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v9;
  *(v5 + 56) = v2;
  v6 = v9;

  sub_2798(0, 0, v3, &unk_A5A8, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_3BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2084(&qword_11500, &qword_A588);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_80C4(a3, v22 - v9, &qword_11500, &qword_A588);
  v11 = sub_8E64();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_7640(v10, &qword_11500, &qword_A588);
  }

  else
  {
    sub_8E54();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_8E44();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_8DF4() + 32;

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

      sub_7640(a3, &qword_11500, &qword_A588);

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

  sub_7640(a3, &qword_11500, &qword_A588);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_3FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = sub_8D74();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return _swift_task_switch(sub_40A0, 0, 0);
}

id sub_40A0()
{
  v51 = v0;
  count = v0[4].count;
  v50 = &_swiftEmptyArrayStorage;
  if (count >> 62)
  {
    goto LABEL_56;
  }

  for (i = *(&dword_10 + (count & 0xFFFFFFFFFFFFFF8)); ; i = sub_8FA4())
  {
    v0[16].count = i;
    v3 = &_swiftEmptyArrayStorage;
    if (i)
    {
      v4 = 0;
      v5 = count & 0xC000000000000001;
      v6 = count & 0xFFFFFFFFFFFFFF8;
      v7 = v0[4].count + 32;
      v0 = &ActivityDigitalSeparationSharedResource;
      do
      {
        if (v5)
        {
          v8 = sub_8F24();
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_53;
          }

          v8 = *(v7 + 8 * v4);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if ([v8 isFriendshipCurrentlyActive])
        {
          sub_8F44();
          sub_8F74();
          sub_8F84();
          count = &v50;
          sub_8F54();
        }

        else
        {
        }

        ++v4;
      }

      while (v10 != i);
      v0 = v48;
      v11 = v50;
      v3 = &_swiftEmptyArrayStorage;
      v48[17].count = v50;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      v0[17].count = &_swiftEmptyArrayStorage;
      if ((&_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
LABEL_17:
        if ((v11 & 0x4000000000000000) == 0)
        {
          v12 = *(v11 + 16);
          goto LABEL_19;
        }
      }
    }

    v12 = sub_8FA4();
LABEL_19:
    count = OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationSource_client;
    v0[18].count = v12;
    v0[19].count = count;
    v0[36].count = 0;
    if (v12)
    {
      v13 = v0[17].count;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = sub_8F24();
      }

      else
      {
        if (!*(v13 + 16))
        {
          __break(1u);
          goto LABEL_60;
        }

        v14 = *(v13 + 32);
      }

      v0[20].count = v14;
      v0[21].count = 1;
      result = [v14 UUID];
      if (!result)
      {
        goto LABEL_63;
      }

      v16 = result;
      v17 = v0[15].count;
      v18 = v0;
      v19 = v0[9].count;
      v20 = v18[8].count;
      sub_8D64();

      v21 = sub_8D54();
      v23 = v22;
      v18[24].count = v22;
      v24 = *(v19 + 8);
      v18[25].count = v24;
      v18[26].count = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v24(v17, v20);
      v49 = (&async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:) + async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:));
      v25 = swift_task_alloc();
      v18[27].count = v25;
      *v25 = v18;
      v26 = sub_4608;
LABEL_46:
      v25[1] = v26;

      return v49(v21, v23);
    }

    v27 = v0[16].count;
    v50 = &_swiftEmptyArrayStorage;
    if (!v27)
    {
      break;
    }

    v28 = 0;
    v29 = v0[4].count;
    v30 = v29 & 0xC000000000000001;
    v31 = v29 & 0xFFFFFFFFFFFFFF8;
    v32 = v29 + 32;
    while (1)
    {
      if (v30)
      {
        v33 = sub_8F24();
      }

      else
      {
        if (v28 >= *(v31 + 16))
        {
          goto LABEL_55;
        }

        v33 = *(v32 + 8 * v28);
      }

      v34 = v33;
      v35 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if ([v33 hasInviteRequestFromMe])
      {
        sub_8F44();
        sub_8F74();
        sub_8F84();
        count = &v50;
        sub_8F54();
      }

      else
      {
      }

      ++v28;
      if (v35 == v0[16].count)
      {
        v3 = v50;
        goto LABEL_37;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_37:
  v0[22].count = v3;
  if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    result = *(v3 + 16);
    goto LABEL_40;
  }

LABEL_60:
  result = sub_8FA4();
LABEL_40:
  v0[23].count = result;
  v36 = v0[36].count;
  v0[37].count = v36;
  v37 = v0[22].count;
  if (result)
  {
    if ((v37 & 0xC000000000000001) == 0)
    {
      if (*(v37 + 16))
      {
        v38 = *(v37 + 32);
        goto LABEL_44;
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    v38 = sub_8F24();
LABEL_44:
    v0[29].count = v38;
    v0[30].count = 1;
    result = [v38 UUID];
    if (!result)
    {
      goto LABEL_64;
    }

    v39 = result;
    v40 = v0[14].count;
    v41 = v0;
    v42 = v0[9].count;
    v43 = v41[8].count;
    sub_8D64();

    v21 = sub_8D54();
    v23 = v44;
    v41[31].count = v44;
    v45 = *(v42 + 8);
    v41[32].count = v45;
    v41[33].count = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45(v40, v43);
    v49 = (&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:));
    v25 = swift_task_alloc();
    v41[34].count = v25;
    *v25 = v41;
    v26 = sub_4B78;
    goto LABEL_46;
  }

  v46 = v0[6].count;

  v46(v36);

  v47 = v0[1].count;

  return v47();
}

uint64_t sub_4608()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_4EFC;
  }

  else
  {
    v2 = sub_473C;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_473C()
{
  v39 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  if (v1 != v2)
  {
    v1 = *(v0 + 168);
    v13 = *(v0 + 136);
    if ((v13 & 0xC000000000000001) == 0)
    {
      if (v1 >= *(v13 + 16))
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v14 = *(v13 + 8 * v1 + 32);
LABEL_16:
      *(v0 + 160) = v14;
      *(v0 + 168) = v1 + 1;
      if (!__OFADD__(v1, 1))
      {
        result = [v14 UUID];
        if (result)
        {
          v16 = result;
          v17 = *(v0 + 120);
          v18 = *(v0 + 64);
          v19 = *(v0 + 72);
          sub_8D64();

          v20 = sub_8D54();
          v22 = v21;
          *(v0 + 192) = v21;
          v23 = *(v19 + 8);
          *(v0 + 200) = v23;
          *(v0 + 208) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v23(v17, v18);
          v37 = (&async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:) + async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:));
          v24 = swift_task_alloc();
          *(v0 + 216) = v24;
          *v24 = v0;
          v25 = sub_4608;
LABEL_29:
          v24[1] = v25;

          return v37(v20, v22);
        }

        goto LABEL_43;
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    v14 = sub_8F24();
    goto LABEL_16;
  }

  v3 = *(v0 + 128);
  v4 = &_swiftEmptyArrayStorage;
  v38 = &_swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = 0;
    v6 = *(v0 + 32);
    v7 = v6 & 0xC000000000000001;
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    v9 = v6 + 32;
    while (1)
    {
      if (v7)
      {
        v10 = sub_8F24();
      }

      else
      {
        if (v5 >= *(v8 + 16))
        {
          goto LABEL_36;
        }

        v10 = *(v9 + 8 * v5);
      }

      v11 = v10;
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v10 hasInviteRequestFromMe])
      {
        sub_8F44();
        sub_8F74();
        sub_8F84();
        v1 = &v38;
        sub_8F54();
      }

      else
      {
      }

      ++v5;
      if (v12 == *(v0 + 128))
      {
        v4 = v38;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_20:
  *(v0 + 176) = v4;
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    result = *(v4 + 16);
    goto LABEL_23;
  }

LABEL_40:
  result = sub_8FA4();
LABEL_23:
  *(v0 + 184) = result;
  v26 = *(v0 + 288);
  *(v0 + 296) = v26;
  v27 = *(v0 + 176);
  if (result)
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = sub_8F24();
    }

    else
    {
      if (!*(v27 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v28 = *(v27 + 32);
    }

    *(v0 + 232) = v28;
    *(v0 + 240) = 1;
    result = [v28 UUID];
    if (result)
    {
      v29 = result;
      v30 = *(v0 + 112);
      v31 = *(v0 + 64);
      v32 = *(v0 + 72);
      sub_8D64();

      v20 = sub_8D54();
      v22 = v33;
      *(v0 + 248) = v33;
      v34 = *(v32 + 8);
      *(v0 + 256) = v34;
      *(v0 + 264) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v34(v30, v31);
      v37 = (&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:));
      v24 = swift_task_alloc();
      *(v0 + 272) = v24;
      *v24 = v0;
      v25 = sub_4B78;
      goto LABEL_29;
    }

LABEL_44:
    __break(1u);
    return result;
  }

  v35 = *(v0 + 48);

  v35(v26);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_4B78()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_55C4;
  }

  else
  {
    v2 = sub_4CAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_4CAC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 184);

  if (v1 == v2)
  {
    v3 = *(v0 + 296);
    v4 = *(v0 + 48);

    v4(v3);

    v5 = *(v0 + 8);

    v5();
    return;
  }

  v6 = *(v0 + 240);
  v7 = *(v0 + 176);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = sub_8F24();
  }

  else
  {
    if (v6 >= *(v7 + 16))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 = *(v7 + 8 * v6 + 32);
  }

  *(v0 + 232) = v8;
  *(v0 + 240) = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = [v8 UUID];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = *(v0 + 112);
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  sub_8D64();

  v14 = sub_8D54();
  v16 = v15;
  *(v0 + 248) = v15;
  v17 = *(v13 + 8);
  *(v0 + 256) = v17;
  *(v0 + 264) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v11, v12);
  v19 = (&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:));
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *v18 = v0;
  v18[1] = sub_4B78;

  v19(v14, v16);
}

void sub_4EFC()
{
  v69 = v0;
  sub_75EC();
  v1 = swift_allocError();
  *v2 = 1;

  v3 = sub_8E94();
  v4 = ASLogDefault;
  if (!ASLogDefault)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v5 = v3;
  v6 = os_log_type_enabled(ASLogDefault, v3);
  v7 = v0[20];
  if (v6)
  {
    v62 = v5;
    v66 = v1;
    log = v4;
    v8 = v7;
    swift_errorRetain();
    v9 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v0[2] = v64;
    *v9 = 136315394;
    v10 = [v8 UUID];
    if (!v10)
    {
LABEL_49:
      v60 = v0[20];

      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v11 = v10;
    v12 = v0[25];
    v61 = v0[26];
    v13 = v0[20];
    v14 = v0[12];
    v15 = v0[13];
    v16 = v0[8];
    v17 = v0[9];

    sub_8D64();

    (*(v17 + 32))(v15, v14, v16);
    sub_7F6C(&qword_11510, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = sub_8FD4();
    v20 = v19;
    v12(v15, v16);
    v21 = sub_628C(v18, v20, v0 + 2);

    *(v9 + 4) = v21;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v22;
    *v63 = v22;
    _os_log_impl(&dword_0, log, v62, "Removing friend %s failed with error: %@", v9, 0x16u);
    sub_7640(v63, &qword_11518, &qword_A5C8);

    sub_76A0(v64);

    v1 = v66;
  }

  else
  {
  }

  v23 = v0[21];
  v0[36] = v1;
  if (v23 != v0[18])
  {
    v34 = v0[17];
    if ((v34 & 0xC000000000000001) == 0)
    {
      if (v23 >= *(v34 + 16))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v35 = *(v34 + 8 * v23 + 32);
LABEL_21:
      v0[20] = v35;
      v0[21] = v23 + 1;
      if (!__OFADD__(v23, 1))
      {
        v36 = [v35 UUID];
        if (v36)
        {
          v37 = v36;
          v38 = v0[15];
          v39 = v0[8];
          v40 = v0[9];
          sub_8D64();

          v41 = sub_8D54();
          v43 = v42;
          v0[24] = v42;
          v44 = *(v40 + 8);
          v0[25] = v44;
          v0[26] = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v44(v38, v39);
          v67 = (&async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:) + async function pointer to dispatch thunk of ActivitySharingClient.removeFriend(withUUID:));
          v45 = swift_task_alloc();
          v0[27] = v45;
          *v45 = v0;
          v46 = sub_4608;
LABEL_34:
          v45[1] = v46;

          v67(v41, v43);
          return;
        }

        goto LABEL_50;
      }

      __break(1u);
      goto LABEL_44;
    }

LABEL_42:
    v35 = sub_8F24();
    goto LABEL_21;
  }

  v24 = v0[16];
  v25 = &_swiftEmptyArrayStorage;
  v68 = &_swiftEmptyArrayStorage;
  if (v24)
  {
    v26 = 0;
    v27 = v0[4];
    v28 = v27 & 0xC000000000000001;
    v29 = v27 & 0xFFFFFFFFFFFFFF8;
    v30 = v27 + 32;
    while (1)
    {
      if (v28)
      {
        v31 = sub_8F24();
      }

      else
      {
        if (v26 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v31 = *(v30 + 8 * v26);
      }

      v32 = v31;
      v33 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if ([v31 hasInviteRequestFromMe])
      {
        sub_8F44();
        sub_8F74();
        sub_8F84();
        v23 = &v68;
        sub_8F54();
      }

      else
      {
      }

      ++v26;
      if (v33 == v0[16])
      {
        v25 = v68;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_25:
  v0[22] = v25;
  if ((v25 & 0x8000000000000000) == 0 && (v25 & 0x4000000000000000) == 0)
  {
    v47 = *(v25 + 16);
    goto LABEL_28;
  }

LABEL_45:
  v47 = sub_8FA4();
LABEL_28:
  v0[23] = v47;
  v48 = v0[36];
  v0[37] = v48;
  v49 = v0[22];
  if (v47)
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v50 = sub_8F24();
LABEL_32:
      v0[29] = v50;
      v0[30] = 1;
      v51 = [v50 UUID];
      if (v51)
      {
        v52 = v51;
        v53 = v0[14];
        v54 = v0[8];
        v55 = v0[9];
        sub_8D64();

        v41 = sub_8D54();
        v43 = v56;
        v0[31] = v56;
        v57 = *(v55 + 8);
        v0[32] = v57;
        v0[33] = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v57(v53, v54);
        v67 = (&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:));
        v45 = swift_task_alloc();
        v0[34] = v45;
        *v45 = v0;
        v46 = sub_4B78;
        goto LABEL_34;
      }

LABEL_51:
      __break(1u);
      return;
    }

    if (*(v49 + 16))
    {
      v50 = *(v49 + 32);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_48;
  }

  v58 = v0[6];

  v58(v48);

  v59 = v0[1];

  v59();
}

void sub_55C4()
{
  sub_75EC();
  v1 = swift_allocError();
  *v2 = 1;

  v3 = sub_8E94();
  v4 = ASLogDefault;
  if (!ASLogDefault)
  {
    goto LABEL_21;
  }

  v5 = v3;
  v6 = os_log_type_enabled(ASLogDefault, v3);
  v7 = v0[29];
  if (v6)
  {
    v39 = v5;
    v43 = v1;
    log = v4;
    v8 = v7;
    swift_errorRetain();
    v9 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v0[3] = v41;
    *v9 = 136315394;
    v10 = [v8 UUID];
    if (!v10)
    {
LABEL_22:
      v38 = v0[29];

      __break(1u);
      goto LABEL_23;
    }

    v11 = v10;
    v12 = v0[32];
    v13 = v0[29];
    v14 = v0[10];
    v15 = v0[11];
    v16 = v0[8];
    v17 = v0[9];

    sub_8D64();

    (*(v17 + 32))(v15, v14, v16);
    sub_7F6C(&qword_11510, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = sub_8FD4();
    v20 = v19;
    v12(v15, v16);
    v21 = sub_628C(v18, v20, v0 + 3);

    *(v9 + 4) = v21;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v22;
    *v40 = v22;
    _os_log_impl(&dword_0, log, v39, "Withdrawing invite to friend %s failed with error: %@", v9, 0x16u);
    sub_7640(v40, &qword_11518, &qword_A5C8);

    sub_76A0(v41);

    v1 = v43;
  }

  else
  {
  }

  v23 = v0[30];
  v0[37] = v1;
  v24 = v0[22];
  if (v23 == v0[23])
  {
    v25 = v0[6];

    v25(v1);

    v26 = v0[1];

    v26();
    return;
  }

  if ((v24 & 0xC000000000000001) != 0)
  {
    v27 = sub_8F24();
  }

  else
  {
    if (v23 >= *(v24 + 16))
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v27 = *(v24 + 8 * v23 + 32);
  }

  v0[29] = v27;
  v0[30] = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v28 = [v27 UUID];
  if (!v28)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = v0[14];
  v31 = v0[8];
  v32 = v0[9];
  sub_8D64();

  v33 = sub_8D54();
  v35 = v34;
  v0[31] = v34;
  v36 = *(v32 + 8);
  v0[32] = v36;
  v0[33] = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v30, v31);
  v44 = (&async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:) + async function pointer to dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:));
  v37 = swift_task_alloc();
  v0[34] = v37;
  *v37 = v0;
  v37[1] = sub_4B78;

  v44(v33, v35);
}

uint64_t sub_5AB8()
{
  v3 = (&async function pointer to dispatch thunk of ActivitySharingClient.allFriends() + async function pointer to dispatch thunk of ActivitySharingClient.allFriends());
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_5B68;

  return v3();
}

uint64_t sub_5B68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_5C9C, 0, 0);
  }
}

uint64_t sub_5C9C()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    if (&_swiftEmptyArrayStorage >> 62 && sub_8FA4())
    {
      sub_6F00(&_swiftEmptyArrayStorage);
      v1 = v5;
    }

    else
    {
      v1 = &_swiftEmptySetSingleton;
    }
  }

  v2 = sub_6834(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

id sub_5D54(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivityDigitalSeparationSource();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_5E08(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_8DB4();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_8D44();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_5EE4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_5FDC;

  return v6(a1);
}

uint64_t sub_5FDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_60D4(uint64_t a1, uint64_t a2)
{
  sub_9064();
  sub_8E04();
  v4 = sub_9084();

  return sub_614C(a1, a2, v4);
}

unint64_t sub_614C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_8FE4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_6204(uint64_t a1, uint64_t a2)
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

  sub_2084(&qword_114F8, &qword_A580);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_628C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_6358(v11, 0, 0, 1, a1, a2);
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
    sub_76EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_76A0(v11);
  return v7;
}

unint64_t sub_6358(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_6464(a5, a6);
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
    result = sub_8F34();
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

char *sub_6464(uint64_t a1, unint64_t a2)
{
  v3 = sub_64B0(a1, a2);
  sub_65E0(&off_C748);
  return v3;
}

char *sub_64B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_66CC(v5, 0);
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

  result = sub_8F34();
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
        v10 = sub_8E14();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_66CC(v10, 0);
        result = sub_8F14();
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

uint64_t sub_65E0(uint64_t result)
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

  result = sub_6740(result, v11, 1, v3);
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

void *sub_66CC(uint64_t a1, uint64_t a2)
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

  sub_2084(&unk_11520, &qword_A5D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_6740(char *result, int64_t a2, char a3, char *a4)
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
    sub_2084(&unk_11520, &qword_A5D0);
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

uint64_t **sub_6834(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_8EE4();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_6204(v2, 0);

    v1 = sub_68E4(&v5, v3 + 4, v2, v1);
    sub_7218(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t *sub_68E4(uint64_t *result, uint64_t **a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_8ED4();
  sub_71CC();
  sub_7F6C(&qword_114F0, sub_71CC, &protocol conformance descriptor for NSObject);
  result = sub_8E84();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = (&dword_0 + 1);
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_8EF4())
      {
        goto LABEL_30;
      }

      sub_71CC();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    v17 = __OFADD__(v7, 1);
    v7 = (v7 + 1);
    if (v17)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  v7[4] = v11;
  return v12;
}

unint64_t sub_6B10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2084(&qword_11540, &qword_A610);
    v3 = sub_8FB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_80C4(v4, &v13, &qword_11548, &qword_A618);
      v5 = v13;
      v6 = v14;
      result = sub_60D4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_812C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_6C40(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_2084(&qword_11500, &qword_A588);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = objc_allocWithZone(LSApplicationRecord);
  _Block_copy(a2);
  v9 = sub_5E08(0xD000000000000011, 0x80000000000099D0, 0);
  if (v9 && (v13 = v9, v14 = [v9 applicationState], v15 = objc_msgSend(v14, "isInstalled"), v14, v13, (v15 & 1) != 0))
  {
    v16 = sub_8E64();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a1;
    v17[5] = sub_7F64;
    v17[6] = v7;
    v18 = a1;

    sub_2798(0, 0, v6, &unk_A600, v17);
  }

  else
  {
    type metadata accessor for DSSourceError(0);
    v19[1] = 0;
    sub_6B10(&_swiftEmptyArrayStorage);
    sub_7F6C(&qword_113C8, type metadata accessor for DSSourceError, &unk_A3E0);
    sub_8D24();
    v10 = v19[2];
    sub_2084(&unk_11530, &qword_A5F0);
    isa = sub_8E34().super.isa;
    v12 = sub_8D34();
    (a2)[2](a2, isa, v12);
  }
}

void sub_6F00(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_8FA4())
    {
LABEL_3:
      sub_2084(&qword_114E0, &qword_A578);
      v3 = sub_8F04();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_8FA4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_8F24();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_8EA4(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_71CC();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_8EB4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_8EA4(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_71CC();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_8EB4();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_71CC()
{
  result = qword_114E8;
  if (!qword_114E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_114E8);
  }

  return result;
}

uint64_t sub_7224()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7268(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7330;

  return sub_385C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_7330()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_7428(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_824C;

  return sub_3FA0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_74FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7534(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_824C;

  return sub_5EE4(a1, v4);
}

unint64_t sub_75EC()
{
  result = qword_11508;
  if (!qword_11508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11508);
  }

  return result;
}

uint64_t sub_7640(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2084(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_76A0(void *a1)
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

uint64_t sub_76EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_7748(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_8FA4())
  {
    result = &_swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v10 = &_swiftEmptyArrayStorage;
    sub_8F64();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_8F24();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = v6;
      sub_315C(&v8, &v9);

      sub_8F44();
      sub_8F74();
      sub_8F84();
      sub_8F54();
      if (v5 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

uint64_t sub_7898(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v6 = sub_2084(&qword_11500, &qword_A588);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  type metadata accessor for ActivityDigitalSeparationSharedResource();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    sub_75EC();
    swift_allocError();
    *v19 = 2;
    _Block_copy(a3);
    v20 = sub_8D34();
    (a3)[2](a3, v20);
  }

  v11 = *(v10 + OBJC_IVAR____TtC25ActivityDigitalSeparation39ActivityDigitalSeparationSharedResource_digitalSeparationFriends);
  if (v11 >> 62)
  {
    v12 = sub_8FA4();
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_15:
    _Block_copy(a3);
    swift_unknownObjectRetain();
    v18 = &_swiftEmptyArrayStorage;
LABEL_16:
    v21 = sub_8E64();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v18;
    v22[5] = a2;
    v22[6] = sub_8250;
    v22[7] = v9;
    v23 = a2;

    sub_2798(0, 0, v8, &unk_A5E0, v22);

    return swift_unknownObjectRelease();
  }

  v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_4:
  v27 = &_swiftEmptyArrayStorage;
  _Block_copy(a3);
  swift_unknownObjectRetain();

  result = sub_8F64();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v25 = a2;
    v26 = a1;
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = sub_8F24();
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = *&v15[OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend_sharingFriend];

      sub_8F44();
      sub_8F74();
      sub_8F84();
      sub_8F54();
    }

    while (v12 != v14);

    v18 = v27;
    a2 = v25;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_7BE0(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v5 = sub_2084(&qword_11500, &qword_A588);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  type metadata accessor for ActivityDigitalSeparationFriend();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    sub_2084(&qword_114F8, &qword_A580);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_A500;
    v12 = *(v10 + OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend_sharingFriend);
    *(v11 + 32) = v12;
    v13 = sub_8E64();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v11;
    v14[5] = a2;
    v14[6] = sub_8250;
    v14[7] = v8;
    _Block_copy(a3);
    v15 = v12;
    v16 = a2;

    sub_2798(0, 0, v7, &unk_A5D8, v14);
  }

  else
  {
    sub_75EC();
    swift_allocError();
    *v18 = 1;
    _Block_copy(a3);
    v19 = sub_8D34();
    (a3)[2](a3, v19);
  }
}

uint64_t sub_7E40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_7330;

  return sub_3FA0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_7F14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_7F6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7FB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_7FFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_824C;

  return sub_2ABC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_80C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2084(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_812C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_813C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_817C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_824C;

  return sub_25D4(a1, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for ActivityDigitalSeparationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityDigitalSeparationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_83CC()
{
  result = qword_11550;
  if (!qword_11550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11550);
  }

  return result;
}

Swift::Int sub_8434()
{
  v1 = *v0;
  sub_9064();
  sub_9074(v1);
  return sub_9084();
}

Swift::Int sub_84A8()
{
  v1 = *v0;
  sub_9064();
  sub_9074(v1);
  return sub_9084();
}

id sub_88CC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_8DB4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_8964(uint64_t (*a1)(void *))
{
  v3 = [*(v1 + OBJC_IVAR____TtC25ActivityDigitalSeparation31ActivityDigitalSeparationFriend_sharingFriend) contact];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 primaryRelationship];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 cloudKitAddress];
  if (v6)
  {
    v7 = v6;
    v8 = sub_8DE4();
    v9 = a1(v7);

    if (v9)
    {
LABEL_8:

      return v8;
    }
  }

  v10 = [v5 preferredReachableAddress];
  if (v10)
  {
    v11 = v10;
    v8 = sub_8DE4();
    v12 = a1(v11);

    if (v12)
    {
      goto LABEL_8;
    }
  }

  v24 = v5;
  result = [v5 addresses];
  if (result)
  {
    v14 = result;
    v15 = sub_8E74();

    v16 = 1 << *(v15 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v15 + 56);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    if (v18)
    {
      while (1)
      {
        v21 = v20;
LABEL_19:
        v8 = *(*(v15 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v18)))));

        v22 = sub_8DB4();
        v23 = (a1)();

        if (v23)
        {
          break;
        }

        v18 &= v18 - 1;

        v20 = v21;
        if (!v18)
        {
          goto LABEL_16;
        }
      }

LABEL_23:

      return v8;
    }

LABEL_16:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        v8 = 0;
        goto LABEL_23;
      }

      v18 = *(v15 + 56 + 8 * v21);
      ++v20;
      if (v18)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_8C1C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivityDigitalSeparationFriend();
  return objc_msgSendSuper2(&v3, "dealloc");
}
Swift::Int KoreaFeatureFlag.hashValue.getter()
{
  sub_10003A9F8();
  sub_10003AA08(0);
  return sub_10003AA18();
}

Swift::Int sub_100001A0C(uint64_t a1)
{
  sub_10003A9F8();
  sub_10003AA08(0);
  return sub_10003AA18();
}

uint64_t sub_100001A4C(__int128 *a1)
{
  v2 = *a1;
  if (sub_1000388A0(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100001AC0(uint64_t *a1)
{
  v1 = a1[1];
  if (sub_1000388A0(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100001B2C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001B74(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001BBC()
{
  result = qword_10004C3A0;
  if (!qword_10004C3A0)
  {
    sub_100001B74(&qword_10004C398, &qword_10003BC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C3A0);
  }

  return result;
}

unint64_t sub_100001C24()
{
  result = qword_10004C3A8;
  if (!qword_10004C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C3A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KoreaFeatureFlag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for KoreaFeatureFlag(_WORD *result, int a2, int a3)
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

uint64_t sub_100001D70(uint64_t a1, id *a2)
{
  result = sub_10003A688();
  *a2 = 0;
  return result;
}

uint64_t sub_100001DE8(uint64_t a1, id *a2)
{
  v3 = sub_10003A698();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001E68@<X0>(uint64_t *a1@<X8>)
{
  sub_10003A6A8();
  v2 = sub_10003A678();

  *a1 = v2;
  return result;
}

uint64_t sub_100001EAC(void *a1, uint64_t *a2)
{
  v2 = sub_10003A6A8();
  v4 = v3;
  if (v2 == sub_10003A6A8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10003A998();
  }

  return v7 & 1;
}

uint64_t sub_100001F34@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10003A678();

  *a2 = v3;
  return result;
}

uint64_t sub_100001F7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003A6A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001FA8(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_10004C3D0, &unk_10003BE34);
  v3 = sub_1000021C0(&qword_10004C3D8, &unk_10003BDD4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002040()
{
  sub_10003A6A8();
  v0 = sub_10003A708();

  return v0;
}

uint64_t sub_10000207C(uint64_t a1)
{
  sub_10003A6A8();
  sub_10003A6C8();
}

Swift::Int sub_1000020D0(uint64_t a1)
{
  sub_10003A6A8();
  sub_10003A9F8();
  sub_10003A6C8();
  v1 = sub_10003AA18();

  return v1;
}

uint64_t sub_1000021C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SPBeaconType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AnnotationPin.Style(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_100002258(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002264(uint64_t a1, int a2)
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

uint64_t sub_100002284(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AnnotationPin.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnnotationPin.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_100002320(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100002394()
{
  v3 = (*(*(v0 + 16) + 112) + **(*(v0 + 16) + 112));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100002480;

  return v3();
}

uint64_t sub_100002480(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v6 = *(v4 + 16);

    return _swift_task_switch(sub_1000025D0, v6, 0);
  }

  else
  {
    v7 = *(v5 + 8);

    return v7(a1 & 1);
  }
}

uint64_t sub_1000025D0()
{
  swift_errorRetain();
  v1 = sub_100039978();
  v2 = sub_10003A848();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %{public}@", v3, 0xCu);
    sub_100002928(v4);
  }

  sub_1000028D4();
  swift_willThrowTypedImpl();

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t sub_10000274C()
{

  v1 = OBJC_IVAR____TtC17FindMyWidgetItems12AccountStore_logger;
  v2 = sub_100039998();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AccountStore(uint64_t a1)
{
  result = qword_10004C428;
  if (!qword_10004C428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002820(uint64_t a1)
{
  result = sub_100039998();
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

unint64_t sub_1000028D4()
{
  result = qword_10004C4C8;
  if (!qword_10004C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C4C8);
  }

  return result;
}

uint64_t sub_100002928(uint64_t a1)
{
  v2 = sub_100001B2C(&qword_10004C4D0, &qword_10003E020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccountStore.AccountInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountStore.AccountInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100002B10()
{
  result = qword_10004C4D8;
  if (!qword_10004C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C4D8);
  }

  return result;
}

uint64_t sub_100002B64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100002BAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100002BF8(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_100001B2C(&qword_10004C4E0, &qword_10003C0A8);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100002CC4, 0, 0);
}

uint64_t sub_100002CC4()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_100002E90;
  swift_continuation_init();
  v1[17] = v8;
  v9 = sub_100003094(v1 + 14);
  sub_100001B2C(&qword_10004C4E8, &qword_10003C0B0);
  sub_100001B2C(&qword_10004C4F0, &qword_10003C0B8);
  sub_10003A768();
  (*(v7 + 32))(v9, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000030F8;
  v1[13] = &unk_10004A7B0;
  [v11 aa_primaryAppleAccountWithCompletion:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_100002E90()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_10000301C;
  }

  else
  {
    v2 = sub_100002FA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002FA0()
{
  v1 = *(v0 + 144);
  v2 = v1 != 0;

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10000301C()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t *sub_100003094(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1000030F8(uint64_t a1, void *a2, void *a3)
{
  sub_100003260((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100001B2C(&qword_10004C4E0, &qword_10003C0A8);
    sub_10003A778();
  }

  else
  {
    v6 = a2;
    sub_100001B2C(&qword_10004C4E0, &qword_10003C0A8);
    sub_10003A788();
  }
}

uint64_t sub_1000031B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003214(void *a1)
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

void *sub_100003260(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_1000032A4()
{
  v29 = sub_10003A078();
  v0 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10003A088();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A0F8();
  type metadata accessor for CGPoint(0);
  sub_100039A78();

  v6 = v32;
  v7 = v33;
  sub_10003A0E8();
  sub_100003610();
  v8 = sub_10003A7F8();
  if (!v8)
  {
    (*(v3 + 8))(v5, v2);
    return _swiftEmptyArrayStorage;
  }

  v9 = v8;
  v31 = _swiftEmptyArrayStorage;
  sub_100025E04(0, v8 & ~(v8 >> 63), 0);
  v10 = v31;
  result = sub_10003A7E8();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v27 = v3;
    v12 = (v0 + 16);
    v13 = (v0 + 8);
    v14 = v5;
    do
    {
      v15 = sub_10003A818();
      v16 = v28;
      v17 = v2;
      v18 = v29;
      (*v12)(v28);
      v15(v30, 0);
      sub_10003A068();
      (*v13)(v16, v18);
      v19 = v32;
      v20 = v33;
      v21 = v34;
      v22 = v35;
      v23 = v36;
      v31 = v10;
      v25 = v10[2];
      v24 = v10[3];
      if (v25 >= v24 >> 1)
      {
        sub_100025E04((v24 > 1), v25 + 1, 1);
        v10 = v31;
      }

      v10[2] = v25 + 1;
      v26 = &v10[4 * v25];
      v26[4] = v6 + v19;
      v26[5] = v7 + v20 - v22;
      *(v26 + 6) = v21;
      v26[7] = v22 + v23;
      sub_10003A808();
      --v9;
      v2 = v17;
    }

    while (v9);
    (*(v27 + 8))(v14, v17);
    return v10;
  }

  __break(1u);
  return result;
}

unint64_t sub_100003610()
{
  result = qword_10004C4F8;
  if (!qword_10004C4F8)
  {
    sub_10003A088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C4F8);
  }

  return result;
}

unint64_t sub_10000366C()
{
  result = qword_10004C500;
  if (!qword_10004C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C500);
  }

  return result;
}

unint64_t sub_1000036C4()
{
  result = qword_10004C508;
  if (!qword_10004C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C508);
  }

  return result;
}

unint64_t sub_10000371C()
{
  result = qword_10004C510;
  if (!qword_10004C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C510);
  }

  return result;
}

unint64_t sub_100003774()
{
  result = qword_10004C518;
  if (!qword_10004C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C518);
  }

  return result;
}

uint64_t sub_100003818@<X0>(uint64_t *a1@<X8>)
{
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_10003A258();

  *a1 = v2;
  return result;
}

uint64_t sub_1000038AC()
{
  v0 = sub_100039F48();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001B2C(&qword_10004C528, &qword_10003C270);
  __chkstk_darwin(v4);
  v6[0] = sub_10003A248();
  sub_100039F38();
  sub_10003A3D8();
  sub_10003A1B8();
  (*(v1 + 8))(v3, v0);

  v6[0] = &type metadata for Color;
  v6[1] = &type metadata for Color;
  v6[2] = &protocol witness table for Color;
  v6[3] = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  return sub_10003A388();
}

uint64_t sub_100003A88()
{
  v0 = sub_100039678();
  sub_100004650(v0, qword_100050148);
  sub_100004618(v0, qword_100050148);
  return sub_100039658();
}

uint64_t sub_100003AEC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10004C308 != -1)
  {
    swift_once();
  }

  v2 = sub_100039678();
  v3 = sub_100004618(v2, qword_100050148);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003BAC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1000045C4();
  *v4 = v2;
  v4[1] = sub_100003C58;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_100003C58()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100003D60(uint64_t a1)
{
  v2 = sub_10000366C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100003DD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000396E8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100003E48@<X0>(uint64_t a1@<X8>)
{
  sub_1000396C8();
  result = type metadata accessor for WidgetPreviewWrapper.Provider.Entry(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0x6C6F686563616C70;
  v3[1] = 0xEB00000000726564;
  return result;
}

uint64_t sub_100003EBC()
{
  v1 = *(v0 + 16);
  sub_1000396C8();
  v2 = (v1 + *(type metadata accessor for WidgetPreviewWrapper.Provider.Entry(0) + 20));
  *v2 = 0x746F687370616E73;
  v2[1] = 0xE800000000000000;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100003F48(uint64_t a1)
{
  v1[2] = a1;
  sub_10003A518();
  v1[3] = swift_task_alloc();
  v2 = sub_1000396E8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100004034, 0, 0);
}

uint64_t sub_100004034()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_100001B2C(&qword_10004C5E0, &qword_10003C360);
  v4 = type metadata accessor for WidgetPreviewWrapper.Provider.Entry(0);
  v5 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10003C0C0;
  v7 = v6 + v5;
  sub_1000396C8();
  (*(v2 + 32))(v7, v1, v3);
  v8 = (v7 + *(v4 + 20));
  *v8 = 0x656E696C656D6974;
  v8[1] = 0xE800000000000000;
  sub_10003A508();
  sub_100004994();
  sub_10003A5E8();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000041C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000427C;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10000427C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100004370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000049F0;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10000443C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_100004570();

  return sub_10003A528();
}

uint64_t sub_100004508()
{

  return swift_deallocObject();
}

uint64_t sub_100004540@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t sub_100004570()
{
  result = qword_10004C520;
  if (!qword_10004C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C520);
  }

  return result;
}

unint64_t sub_1000045C4()
{
  result = qword_10004C530;
  if (!qword_10004C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C530);
  }

  return result;
}

uint64_t sub_100004618(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004650(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000046D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000396E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000047AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000396E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for WidgetPreviewWrapper.Provider.Entry(uint64_t a1)
{
  result = qword_10004C590;
  if (!qword_10004C590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000048B4(uint64_t a1)
{
  result = sub_1000396E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10000492C()
{
  result = qword_10004C5C8;
  if (!qword_10004C5C8)
  {
    sub_100001B74(&qword_10004C5D0, &qword_10003C288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C5C8);
  }

  return result;
}

unint64_t sub_100004994()
{
  result = qword_10004C5D8;
  if (!qword_10004C5D8)
  {
    type metadata accessor for WidgetPreviewWrapper.Provider.Entry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C5D8);
  }

  return result;
}

uint64_t sub_100004A08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000398C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_100039798();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 2)
    {
      return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_5;
  }

  v17 = sub_100001B2C(&qword_10004C5F0, "r%");
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_100004BFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000398C8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100039798();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v16 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = sub_100001B2C(&qword_10004C5F0, "r%");
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for AnnotationPin(uint64_t a1)
{
  result = qword_10004C650;
  if (!qword_10004C650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004E18(uint64_t a1)
{
  sub_1000398C8();
  if (v1 <= 0x3F)
  {
    sub_100039798();
    if (v2 <= 0x3F)
    {
      sub_100004F84(319, &qword_10004C660, &type metadata accessor for ColorScheme);
      if (v3 <= 0x3F)
      {
        sub_100004F34();
        if (v4 <= 0x3F)
        {
          sub_100004F84(319, &qword_10004C670, &type metadata accessor for WidgetRenderingMode);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100004F34()
{
  if (!qword_10004C668)
  {
    v0 = sub_1000399D8();
    if (!v1)
    {
      atomic_store(v0, &qword_10004C668);
    }
  }
}

void sub_100004F84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000399D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100005004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v46 = type metadata accessor for AnnotationPin(0);
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v46);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100001B2C(&qword_10004C6C0, &qword_10003C438);
  __chkstk_darwin(v45);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v39 - v8);
  sub_10003A7A8();
  v47 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100006D8C(a1, &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v44 = swift_allocObject();
  sub_100006E00(&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v10);
  v43 = sub_10003A3D8();
  v42 = v11;
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100006D8C(a1, &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = swift_allocObject();
  sub_100006E00(&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v10);

  v40 = sub_10003A3C8();
  v39 = v12;
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = v9 + *(v45 + 36);
  sub_100006D8C(a1, &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_100006E00(v5, v14 + v10);
  v56 = sub_1000070AC;
  v57 = v14;
  sub_100001B2C(&qword_10004C6D8, &qword_10003C450);
  sub_1000073FC(&qword_10004C6E0, &qword_10004C6D8, &qword_10003C450, &protocol conformance descriptor for GeometryReader<A>);
  sub_10003A148();

  v15 = &v13[*(sub_100001B2C(&qword_10004C6E8, &qword_10003C458) + 36)];
  v16 = v39;
  *v15 = v40;
  v15[1] = v16;
  v17 = v44;
  *v9 = sub_100006E64;
  v9[1] = v17;
  v18 = v41;
  v9[2] = sub_100006E7C;
  v9[3] = v18;
  v19 = v42;
  v9[4] = v43;
  v9[5] = v19;
  if (*(a1 + *(v46 + 24)) == 1)
  {
    sub_10003A3D8();
    sub_100039A48();
    v46 = v68;
    LOBYTE(v22) = v69;
    v45 = v70;
    v20 = v71;
    v44 = v72;
    v43 = v73;
    v21 = sub_100039DD8();
    LOBYTE(v56) = v22;
    LOBYTE(v50) = v20;
    v22 = v22;
    v23 = v20;
    v42 = sub_100039CF8();
    v41 = sub_100006CE0;
    v24 = sub_100006CB8;
  }

  else
  {
    v46 = 0;
    v45 = 0;
    v44 = 0;
    v43 = 0;
    v21 = 0;
    v24 = 0;
    v42 = 0;
    v41 = 0;
    v23 = 0;
    v22 = 0;
  }

  v39 = v22;
  v40 = v23;
  v25 = v49;
  sub_100007158(v9, v49);
  v26 = v48;
  sub_100007158(v25, v48);
  v27 = (v26 + *(sub_100001B2C(&qword_10004C6F0, &qword_10003C460) + 48));
  v28 = v46;
  *&v50 = v46;
  *(&v50 + 1) = v22;
  v29 = v45;
  *&v51 = v45;
  *(&v51 + 1) = v23;
  v30 = v44;
  *&v52 = v44;
  v31 = v43;
  *(&v52 + 1) = v43;
  *&v53 = v21;
  *(&v53 + 1) = v24;
  *&v54 = 0;
  v32 = v42;
  v33 = v9;
  v34 = v41;
  *(&v54 + 1) = v42;
  v55 = v41;
  v35 = v51;
  *v27 = v50;
  v27[1] = v35;
  v36 = v53;
  v27[2] = v52;
  v27[3] = v36;
  v37 = v55;
  v27[4] = v54;
  v27[5] = v37;
  sub_1000071C8(&v50, &v56);
  sub_100007238(v33);
  v56 = v28;
  v57 = v39;
  v58 = v29;
  v59 = v40;
  v60 = v30;
  v61 = v31;
  v62 = v21;
  v63 = v24;
  v64 = 0;
  v65 = v32;
  v66 = v34;
  v67 = 0;
  sub_1000072A0(&v56);
  sub_100007238(v25);
}

uint64_t sub_1000056AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100039ED8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100039CE8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_1000059CC(0.0);
  sub_100039A58();
  v10 = a1 + *(type metadata accessor for AnnotationPin(0) + 36);
  v11 = *v10;
  if (*(v10 + 8) != 1)
  {

    sub_10003A858();
    v12 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    v13 = sub_100006DF4(v11, 0);
    (*(v6 + 8))(v8, v5, v13);
  }

  v14 = sub_100039F98();
  sub_1000399A8();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_100039EC8();
  sub_100001B2C(&qword_10004C758, &qword_10003C4A8);
  sub_100039F68();
  *a2 = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  *(a2 + 32) = v20;
  *(a2 + 40) = v22;
  *(a2 + 48) = 0;
  v23 = *(sub_100001B2C(&qword_10004C760, &qword_10003C4B0) + 36);
  v24 = enum case for BlendMode.destinationOut(_:);
  v25 = sub_10003A3F8();
  (*(*(v25 - 8) + 104))(a2 + v23, v24, v25);
}

uint64_t sub_1000059CC(double a1)
{
  v28 = sub_100039778();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100001B2C(&qword_10004C720, &qword_10003C490);
  __chkstk_darwin(v27);
  v25 = &v25 - v5;
  v6 = sub_100039738();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001B2C(&qword_10004C728, &qword_10003C498);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_100039798();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AnnotationPin(0);
  (*(v14 + 16))(v16, v1 + *(v17 + 20), v13);
  v18 = (*(v14 + 88))(v16, v13);
  if (v18 == enum case for IconAndPlatter.Shape.circle(_:))
  {
    sub_100039718();
    sub_100039728();
    (*(v7 + 8))(v9, v6);
    v19 = &v12[*(v10 + 36)];
    *v19 = a1;
    v19[1] = a1;
    sub_1000073FC(&qword_10004C730, &qword_10004C728, &qword_10003C498, &protocol conformance descriptor for OffsetShape<A>);
    return sub_10003A398();
  }

  else if (v18 == enum case for IconAndPlatter.Shape.rectangle(_:))
  {
    sub_100039758();
    sub_100039748();
    v21 = v25;
    sub_100039768();
    (*(v26 + 8))(v4, v28);
    v22 = &v21[*(v27 + 36)];
    *v22 = a1;
    v22[1] = a1;
    sub_1000073FC(&qword_10004C738, &qword_10004C720, &qword_10003C490, &protocol conformance descriptor for OffsetShape<A>);
    return sub_10003A398();
  }

  else
  {
    sub_100039718();
    sub_100039728();
    (*(v7 + 8))(v9, v6);
    v23 = &v12[*(v10 + 36)];
    *v23 = a1;
    v23[1] = a1;
    sub_1000073FC(&qword_10004C730, &qword_10004C728, &qword_10003C498, &protocol conformance descriptor for OffsetShape<A>);
    v24 = sub_10003A398();
    (*(v14 + 8))(v16, v13);
    return v24;
  }
}

uint64_t sub_100005E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v26 = a3;
  v4 = sub_100039798();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000398C8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 16))(v11, a2, v8);
  v12 = type metadata accessor for AnnotationPin(0);
  (*(v5 + 16))(v7, a2 + *(v12 + 20), v4);
  v13 = v26;
  sub_100039788();
  sub_100039A58();
  v14 = sub_100039F98();
  sub_1000399A8();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  result = sub_100001B2C(&qword_10004C750, &qword_10003C4A0);
  v24 = v13 + *(result + 36);
  *v24 = v14;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = 0;
  return result;
}

uint64_t sub_1000060D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100039CE8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_100006324();
  sub_100039A58();
  v10 = v9;
  v11 = type metadata accessor for AnnotationPin(0);
  v12 = *(a1 + *(v11 + 28) + 8);
  v13 = a1 + *(v11 + 36);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    v15 = *v13;
  }

  else
  {

    sub_10003A858();
    v16 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    v17 = sub_100006DF4(v14, 0);
    (*(v5 + 8))(v7, v4, v17);
    v15 = *&v21[1];
  }

  v18 = sub_1000059CC(v10 * v12 + v15);
  v19 = sub_100001B2C(&qword_10004C700, &qword_10003C470);
  sub_100006608(a2 + *(v19 + 52));

  *a2 = v8;
  *(a2 + 8) = v18;
  *(a2 + 16) = 0;
  *(a2 + *(v19 + 56)) = 256;
  return result;
}

uint64_t sub_100006324()
{
  v1 = sub_100039808();
  __chkstk_darwin(v1);
  v2 = sub_1000397C8();
  __chkstk_darwin(v2);
  v3 = sub_100039798();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AnnotationPin(0);
  (*(v4 + 16))(v6, v0 + *(v7 + 20), v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == enum case for IconAndPlatter.Shape.circle(_:))
  {
    sub_1000397B8();
    sub_100007370(&qword_10004C740, &type metadata accessor for PinCircleShape, &protocol conformance descriptor for PinCircleShape);
    return sub_10003A398();
  }

  else if (v8 == enum case for IconAndPlatter.Shape.rectangle(_:))
  {
    sub_1000397F8();
    sub_100007370(&qword_10004C748, &type metadata accessor for PinRectangleShape, &protocol conformance descriptor for PinRectangleShape);
    return sub_10003A398();
  }

  else
  {
    sub_1000397B8();
    sub_100007370(&qword_10004C740, &type metadata accessor for PinCircleShape, &protocol conformance descriptor for PinCircleShape);
    v10 = sub_10003A398();
    (*(v4 + 8))(v6, v3);
    return v10;
  }
}

uint64_t sub_100006608@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v41 = sub_1000399C8();
  v3 = *(v41 - 8);
  __chkstk_darwin(v41);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v34 - v7;
  v49 = sub_1000399F8();
  v44 = *(v49 - 8);
  __chkstk_darwin(v49);
  v42 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v40 = v34 - v11;
  __chkstk_darwin(v12);
  v14 = v34 - v13;
  v15 = sub_100039938();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100001B2C(&qword_10004C708, &qword_10003C478);
  __chkstk_darwin(v36);
  v37 = (v34 - v19);
  v38 = sub_100001B2C(&qword_10004C710, &qword_10003C480);
  __chkstk_darwin(v38);
  v39 = v34 - v20;
  if (qword_10004C348 != -1)
  {
    swift_once();
  }

  v21 = sub_100004618(v15, qword_1000501D8);
  (*(v16 + 16))(v18, v21, v15);
  v35 = sub_10003A288();
  sub_10003A268();
  v46 = *(type metadata accessor for AnnotationPin(0) + 32);
  sub_100017688(v8);
  v48 = enum case for ColorScheme.dark(_:);
  v22 = *(v3 + 104);
  v45 = v3 + 104;
  v47 = v22;
  v23 = v41;
  v22(v5);
  sub_1000399B8();
  v24 = *(v3 + 8);
  v24(v5, v23);
  v24(v8, v23);
  sub_10003A278();

  v34[1] = v2;
  sub_1000399E8();

  v25 = v37;
  v26 = *(v36 + 36);
  v44 = *(v44 + 32);
  (v44)(v37 + v26, v14, v49);
  *v25 = v35;
  sub_10003A268();
  sub_100017688(v8);
  v47(v5, v48, v23);
  sub_1000399B8();
  v24(v5, v23);
  v24(v8, v23);
  sub_10003A278();

  v27 = v40;
  sub_1000399E8();

  v28 = v25;
  v29 = v39;
  sub_100007308(v28, v39, &qword_10004C708, &qword_10003C478);
  (v44)(v29 + *(v38 + 36), v27, v49);
  sub_10003A268();
  sub_100017688(v8);
  v47(v5, v48, v23);
  sub_1000399B8();
  v24(v5, v23);
  v24(v8, v23);
  sub_10003A278();

  v30 = v42;
  sub_1000399E8();

  v31 = v43;
  sub_100007308(v29, v43, &qword_10004C710, &qword_10003C480);
  v32 = sub_100001B2C(&qword_10004C718, &qword_10003C488);
  return (v44)(v31 + *(v32 + 36), v30, v49);
}

uint64_t sub_100006D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 28));
  *a2 = sub_100039DE8();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = sub_100001B2C(&qword_10004C6B8, &qword_10003C430);
  return sub_100005004(v2, a2 + *(v5 + 44));
}

uint64_t sub_100006D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationPin(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100006DF4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100006E00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationPin(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006E94()
{
  v1 = type metadata accessor for AnnotationPin(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_1000398C8();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[5];
  v5 = sub_100039798();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  v6 = v1[8];
  sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000399C8();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  sub_100006DF4(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  v8 = v1[10];
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10003A458();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000070C4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AnnotationPin(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_100007158(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C6C0, &qword_10003C438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000071C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C6F8, &qword_10003C468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007238(uint64_t a1)
{
  v2 = sub_100001B2C(&qword_10004C6C0, &qword_10003C438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000072A0(uint64_t a1)
{
  v2 = sub_100001B2C(&qword_10004C6F8, &qword_10003C468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007308(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001B2C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000073FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100001B74(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007460(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C780, "P*");
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = sub_100001B2C(&qword_10004C5F0, "r%");
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_100007658(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C780, "P*");
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = sub_100001B2C(&qword_10004C5F0, "r%");
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

void sub_10000785C(uint64_t a1)
{
  sub_1000079F8();
  if (v1 <= 0x3F)
  {
    sub_100007A48(319, &qword_10004C800, &type metadata accessor for FindMyRelativeDate, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100007A48(319, &qword_10004C808, &type metadata accessor for Symbol, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100007A48(319, &qword_10004C810, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_100007A48(319, &qword_10004C670, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000079F8()
{
  if (!qword_10004C7F8)
  {
    v0 = sub_10003A888();
    if (!v1)
    {
      atomic_store(v0, &qword_10004C7F8);
    }
  }
}

void sub_100007A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_100007AC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_100001B2C(&qword_10004C858, &qword_10003C558);
  __chkstk_darwin(v3 - 8);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = sub_100001B2C(&qword_10004C860, &qword_10003C560);
  v41 = *(v8 - 8);
  __chkstk_darwin(v8);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_100001B2C(&qword_10004C868, &qword_10003C568);
  __chkstk_darwin(v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  sub_10003A7A8();
  v39 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v18 = sub_100039D18();
  *(v18 + 1) = 0x4010000000000000;
  v18[16] = 0;
  v19 = sub_100001B2C(&qword_10004C870, &qword_10003C570);
  sub_1000084E0(a1, &v18[*(v19 + 44)]);
  v20 = sub_100039FE8();
  KeyPath = swift_getKeyPath();
  v22 = &v18[*(sub_100001B2C(&qword_10004C878, &qword_10003C5A8) + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = swift_getKeyPath();
  v24 = &v18[*(v13 + 36)];
  *v24 = v23;
  *(v24 + 1) = 1;
  v24[16] = 0;
  v36 = v12;
  sub_100007F1C();
  sub_1000080E4(v7);
  v37 = v15;
  sub_100009AB0(v18, v15, &qword_10004C868, &qword_10003C568);
  v25 = v41;
  v26 = v42;
  v27 = v7;
  v28 = *(v41 + 16);
  v28(v42, v12, v8);
  v29 = v38;
  sub_100009AB0(v27, v38, &qword_10004C858, &qword_10003C558);
  v30 = v40;
  sub_100009AB0(v15, v40, &qword_10004C868, &qword_10003C568);
  v31 = v8;
  v32 = sub_100001B2C(&qword_10004C880, &qword_10003C5E0);
  v28((v30 + *(v32 + 48)), v26, v31);
  sub_100009AB0(v29, v30 + *(v32 + 64), &qword_10004C858, &qword_10003C558);
  sub_100009B18(v27, &qword_10004C858, &qword_10003C558);
  v33 = *(v25 + 8);
  v33(v36, v31);
  sub_100009B18(v18, &qword_10004C868, &qword_10003C568);
  sub_100009B18(v29, &qword_10004C858, &qword_10003C558);
  v33(v26, v31);
  sub_100009B18(v37, &qword_10004C868, &qword_10003C568);

  return result;
}

uint64_t sub_100007F1C()
{

  v0 = sub_10003A128();
  v2 = v1;
  v4 = v3;
  sub_100039FF8();
  v5 = sub_10003A058();
  v7 = v6;
  v9 = v8;

  sub_100009880(v0, v2, v4 & 1);

  sub_100039FC8();
  v10 = sub_10003A038();
  v12 = v11;
  LOBYTE(v0) = v13;
  sub_100009880(v5, v7, v9 & 1);

  swift_getKeyPath();
  sub_100039EF8();
  sub_100001B2C(&qword_10004C890, &qword_10003C5E8);
  sub_1000098E8();
  sub_10003A148();
  sub_100009880(v10, v12, v0 & 1);
}

uint64_t sub_1000080E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10003A4A8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v37[-v8];
  v10 = sub_100001B2C(&qword_10004C860, &qword_10003C560);
  v13 = __chkstk_darwin(v10);
  v15 = &v37[-v14];
  if (*(v1 + 40))
  {
    v43 = v11;
    v44 = a1;
    v45 = v12;
    v42 = v15;

    v16 = sub_10003A128();
    v18 = v17;
    v20 = v19;
    sub_100039FE8();
    v21 = sub_10003A058();
    v39 = v22;
    v40 = v21;
    v38 = v23;
    v41 = v24;

    sub_100009880(v16, v18, v20 & 1);

    type metadata accessor for LabelsModule(0);
    sub_1000176B0(v9);
    (*(v4 + 104))(v6, enum case for WidgetFamily.systemSmall(_:), v3);
    sub_100009890();
    sub_10003A718();
    sub_10003A718();
    v25 = *(v4 + 8);
    v25(v6, v3);
    v25(v9, v3);
    if (v46 == v55)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    KeyPath = swift_getKeyPath();
    v28 = sub_100039EF8();
    v29 = v38 & 1;
    LOBYTE(v55) = v38 & 1;
    v54 = 0;
    v31 = v39;
    v30 = v40;
    v46 = v40;
    v47 = v39;
    v48 = v38 & 1;
    v49 = v41;
    v50 = KeyPath;
    v51 = v26;
    v52 = 0;
    v53 = v28;
    sub_100001B2C(&qword_10004C890, &qword_10003C5E8);
    sub_1000098E8();
    v32 = v42;
    sub_10003A148();
    sub_100009880(v30, v31, v29);

    v33 = v44;
    v34 = v43;
    (*(v45 + 32))(v44, v32, v43);
    return (*(v45 + 56))(v33, 0, 1, v34);
  }

  else
  {
    v36 = *(v12 + 56);

    return v36(a1, 1, 1, v13);
  }
}

double sub_1000084E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v102 = a2;
  v91 = sub_10003A458();
  v83 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v89 = &v79 - v4;
  v5 = type metadata accessor for LabelsModule.WidgetRelativeDateText(0);
  __chkstk_darwin(v5 - 8);
  v101 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001B2C(&qword_10004C8D0, &qword_10003C608);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v88 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v79 - v11;
  v12 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  __chkstk_darwin(v12 - 8);
  v97 = &v79 - v13;
  v14 = sub_100039128();
  v103 = *(v14 - 8);
  v104 = v14;
  __chkstk_darwin(v14);
  v98 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100001B2C(&qword_10004C8D8, &qword_10003C610);
  __chkstk_darwin(v16 - 8);
  v100 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v99 = &v79 - v19;
  v20 = sub_100039AB8();
  v86 = *(v20 - 8);
  __chkstk_darwin(v20);
  v85 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100039D98();
  __chkstk_darwin(v22 - 8);
  v23 = sub_100001B2C(&qword_10004C8E0, &qword_10003C618);
  v93 = *(v23 - 8);
  v94 = v23;
  __chkstk_darwin(v23);
  v84 = &v79 - v24;
  v25 = sub_100001B2C(&qword_10004C780, "P*");
  __chkstk_darwin(v25 - 8);
  v27 = &v79 - v26;
  v28 = sub_100039398();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100001B2C(&qword_10004C8E8, &qword_10003C620);
  __chkstk_darwin(v32 - 8);
  v96 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v106 = &v79 - v35;
  sub_10003A7A8();
  v95 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v92 = type metadata accessor for LabelsModule(0);
  v36 = v105;
  sub_100009AB0(v105 + *(v92 + 28), v27, &qword_10004C780, "P*");
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_100009B18(v27, &qword_10004C780, "P*");
    v37 = 1;
    v38 = v103;
    v39 = v106;
    v40 = v93;
    v41 = v94;
  }

  else
  {
    v42 = *(v29 + 32);
    v80 = v31;
    v42(v31, v27, v28);
    sub_100039D88();
    v111._countAndFlagsBits = 0;
    v111._object = 0xE000000000000000;
    v81 = v28;
    sub_100039D78(v111);
    sub_100039388();
    sub_10003A2C8();
    sub_100039D58();

    v112._countAndFlagsBits = 0;
    v112._object = 0xE000000000000000;
    sub_100039D78(v112);
    sub_100039DB8();
    v43 = sub_10003A128();
    v45 = v44;
    v47 = v46;
    LODWORD(v107) = sub_100039EF8();
    v48 = sub_10003A048();
    v82 = v8;
    v49 = v48;
    v79 = v20;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_100009880(v43, v45, v47 & 1);

    v107 = v49;
    v108 = v51;
    LOBYTE(v43) = v53 & 1;
    v109 = v53 & 1;
    v110 = v55;
    v56 = v85;
    sub_100039AA8();
    v57 = v84;
    sub_10003A198();
    (*(v86 + 8))(v56, v79);
    v58 = v49;
    v8 = v82;
    sub_100009880(v58, v51, v43);
    v36 = v105;

    (*(v29 + 8))(v80, v81);
    v40 = v93;
    v39 = v106;
    v59 = v57;
    v41 = v94;
    (*(v93 + 32))(v106, v59, v94);
    v37 = 0;
    v38 = v103;
  }

  (*(v40 + 56))(v39, v37, 1, v41);
  v60 = v97;
  sub_100009AB0(v36 + *(v92 + 24), v97, &qword_10004C778, &unk_10003C4D0);
  v61 = v104;
  if ((*(v38 + 48))(v60, 1, v104) == 1)
  {
    sub_100009B18(v60, &qword_10004C778, &unk_10003C4D0);
    v62 = 1;
    v63 = v99;
  }

  else
  {
    (*(v38 + 32))(v98, v60, v61);
    sub_100039118();
    v64 = v89;
    sub_1000178D8(v89);
    v65 = v90;
    sub_10003A448();
    v66 = sub_10003A438();
    v67 = *(v83 + 8);
    v68 = v91;
    v67(v65, v91);
    v67(v64, v68);
    if (v66)
    {
      v69 = sub_100039F08();
    }

    else
    {
      v69 = sub_100039EF8();
    }

    v70 = v69;
    v63 = v99;
    (*(v103 + 8))(v98, v104);
    v71 = v88;
    sub_100009B78(v101, v88);
    *(v71 + *(v7 + 36)) = v70;
    v72 = v87;
    sub_100009BDC(v71, v87);
    sub_100009BDC(v72, v63);
    v62 = 0;
  }

  (*(v8 + 56))(v63, v62, 1, v7);
  v73 = v106;
  v74 = v96;
  sub_100009AB0(v106, v96, &qword_10004C8E8, &qword_10003C620);
  v75 = v100;
  sub_100009AB0(v63, v100, &qword_10004C8D8, &qword_10003C610);
  v76 = v102;
  sub_100009AB0(v74, v102, &qword_10004C8E8, &qword_10003C620);
  v77 = sub_100001B2C(&qword_10004C8F0, &qword_10003C628);
  sub_100009AB0(v75, v76 + *(v77 + 48), &qword_10004C8D8, &qword_10003C610);
  sub_100009B18(v63, &qword_10004C8D8, &qword_10003C610);
  sub_100009B18(v73, &qword_10004C8E8, &qword_10003C620);
  sub_100009B18(v75, &qword_10004C8D8, &qword_10003C610);
  sub_100009B18(v74, &qword_10004C8E8, &qword_10003C620);

  return result;
}

double sub_10000902C@<D0>(_OWORD *a1@<X8>)
{
  v56 = a1;
  v50 = sub_10003A0D8();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100039D98();
  __chkstk_darwin(v2 - 8);
  v52 = sub_1000396E8();
  v3 = *(v52 - 8);
  __chkstk_darwin(v52);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10003A098();
  v6 = *(v51 - 8);
  __chkstk_darwin(v51);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10003A0B8();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() mainBundle];
  v46._countAndFlagsBits = 0xE000000000000000;
  v64._countAndFlagsBits = 0x6F6741656D6954;
  v64._object = 0xE700000000000000;
  v73.value._countAndFlagsBits = 0;
  v73.value._object = 0;
  v12.super.isa = v11;
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  v13 = sub_100039648(v64, v73, v12, v74, 0, v46);
  v15 = v14;

  v65._countAndFlagsBits = 1076113701;
  v65._object = 0xE400000000000000;
  v16 = sub_10003A6F8(v65);
  *&v60 = v13;
  *(&v60 + 1) = v15;
  *&v57 = 1076113701;
  *(&v57 + 1) = 0xE400000000000000;
  sub_100009E1C();
  v17 = sub_10003A898();

  v18 = *(v17 + 16);
  if (v16)
  {
    if (v18)
    {
      v19 = (v17 + 16 + 16 * v18);
      v20 = (v19 + 1);
LABEL_6:
      v21 = *v19;
      v22 = *v20;

      goto LABEL_8;
    }
  }

  else if (v18)
  {
    v19 = (v17 + 32);
    v20 = (v17 + 40);
    goto LABEL_6;
  }

  v21 = 0;
  v22 = 0xE000000000000000;
LABEL_8:

  (*(v6 + 104))(v8, enum case for Text.DateStyle.UnitsConfiguration.Style.brief(_:), v51);
  v23 = v53;
  sub_10003A0A8();
  sub_1000396D8();
  sub_1000396A8();
  v25 = v24;
  (*(v3 + 8))(v5, v52);
  sub_1000396A8();
  if (v25 - v26 >= 60.0)
  {
    sub_100039D88();
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    sub_100039D78(v66);
    if (!v16)
    {
      v70._countAndFlagsBits = v21;
      v70._object = v22;
      sub_100039D68(v70);

      v71._countAndFlagsBits = 0;
      v71._object = 0xE000000000000000;
      sub_100039D78(v71);
      v37 = v48;
      sub_10003A0C8();
      sub_100039D48();
      (*(v49 + 8))(v37, v50);
      v72._countAndFlagsBits = 0;
      v72._object = 0xE000000000000000;
      sub_100039D78(v72);
      sub_100039DB8();
      *&v57 = sub_10003A128();
      *(&v57 + 1) = v38;
      *&v58 = v39 & 1;
      *(&v58 + 1) = v40;
      v59 = 256;
      sub_100001B2C(&qword_10004C9A0, &qword_10003C6A0);
      sub_100009E70();
      sub_100039EA8();
      goto LABEL_14;
    }

    v34 = v48;
    sub_10003A0C8();
    sub_100039D48();
    (*(v49 + 8))(v34, v50);
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    sub_100039D78(v67);
    v68._countAndFlagsBits = v21;
    v68._object = v22;
    sub_100039D68(v68);

    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    sub_100039D78(v69);
    sub_100039DB8();
    v27 = sub_10003A128();
    v29 = v27;
    v30 = v28;
    v32 = v35 & 1;
    *&v57 = v27;
    *(&v57 + 1) = v28;
    *&v58 = v35 & 1;
    *(&v58 + 1) = v36;
    LOBYTE(v59) = 1;
  }

  else
  {

    sub_100039DA8();
    v27 = sub_10003A128();
    v29 = v27;
    v30 = v28;
    *&v57 = v27;
    *(&v57 + 1) = v28;
    v32 = v31 & 1;
    *&v58 = v31 & 1;
    *(&v58 + 1) = v33;
    LOBYTE(v59) = 0;
  }

  sub_100009EEC(v27, v28, v32);

  sub_100039EA8();
  v57 = v60;
  v58 = v61;
  v59 = v62;
  sub_100001B2C(&qword_10004C9A0, &qword_10003C6A0);
  sub_100009E70();
  sub_100039EA8();
  sub_100009880(v29, v30, v32);

LABEL_14:
  (*(v54 + 8))(v23, v55);
  result = *&v60;
  v42 = v61;
  v43 = v62;
  v44 = v63;
  v45 = v56;
  *v56 = v60;
  v45[1] = v42;
  *(v45 + 32) = v43;
  *(v45 + 33) = v44;
  return result;
}

double sub_100009784@<D0>(uint64_t a1@<X8>)
{
  sub_10000902C(v6);
  v2 = v7;
  v3 = v8;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  return result;
}

double sub_1000097CC@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_100039DF8();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = sub_100001B2C(&qword_10004C850, &qword_10003C550);
  return sub_100007AC8(v1, a1 + *(v3 + 44));
}

uint64_t sub_100009820@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100039C68();
  *a1 = result;
  return result;
}

void sub_100009880(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100009890()
{
  result = qword_10004C888;
  if (!qword_10004C888)
  {
    sub_10003A4A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C888);
  }

  return result;
}

unint64_t sub_1000098E8()
{
  result = qword_10004C898;
  if (!qword_10004C898)
  {
    sub_100001B74(&qword_10004C890, &qword_10003C5E8);
    sub_1000099A0();
    sub_1000073FC(&qword_10004C8C0, &qword_10004C8C8, &qword_10003C600, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C898);
  }

  return result;
}

unint64_t sub_1000099A0()
{
  result = qword_10004C8A0;
  if (!qword_10004C8A0)
  {
    sub_100001B74(&qword_10004C8A8, &qword_10003C5F0);
    sub_1000073FC(&qword_10004C8B0, &qword_10004C8B8, &qword_10003C5F8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C8A0);
  }

  return result;
}

uint64_t sub_100009A78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009AB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001B2C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009B18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001B2C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabelsModule.WidgetRelativeDateText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C8D0, &qword_10003C608);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000396E8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100009CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000396E8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100009D50(uint64_t a1)
{
  result = sub_1000396E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100009E1C()
{
  result = qword_10004C998;
  if (!qword_10004C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C998);
  }

  return result;
}

unint64_t sub_100009E70()
{
  result = qword_10004C9A8;
  if (!qword_10004C9A8)
  {
    sub_100001B74(&qword_10004C9A0, &qword_10003C6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C9A8);
  }

  return result;
}

uint64_t sub_100009EEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100009F00()
{
  result = qword_10004C9B0;
  if (!qword_10004C9B0)
  {
    sub_100001B74(qword_10004C9B8, &qword_10003C6A8);
    sub_100009E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C9B0);
  }

  return result;
}

void sub_100009FA0(uint64_t a1)
{
  sub_10000A1F0();
  if (v1 <= 0x3F)
  {
    sub_10000A240(319);
    if (v2 <= 0x3F)
    {
      sub_10000A298();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10000A058(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

void *sub_10000A128(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_10000A1F0()
{
  result = qword_10004CA40;
  if (!qword_10004CA40)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10004CA40);
  }

  return result;
}

void sub_10000A240(uint64_t a1)
{
  if (!qword_10004C810)
  {
    sub_10003A4A8();
    v1 = sub_1000399D8();
    if (!v2)
    {
      atomic_store(v1, &qword_10004C810);
    }
  }
}

void sub_10000A298()
{
  if (!qword_10004CA48)
  {
    v0 = sub_1000399D8();
    if (!v1)
    {
      atomic_store(v0, &qword_10004CA48);
    }
  }
}

uint64_t sub_10000A370(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_10003A418();
}

void *sub_10000A540(uint64_t a1, uint64_t a2)
{
  v8 = sub_100039E98();
  v9 = __chkstk_darwin(v8);
  (*(*(a2 - 8) + 16))(&v12 - v10, a1, a2, v9);
  swift_storeEnumTagMultiPayload();
  return sub_100039EA8();
}

void *sub_10000A638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_100039E98();
  v9 = __chkstk_darwin(v8);
  (*(*(a3 - 8) + 16))(&v12 - v10, a1, a3, v9);
  swift_storeEnumTagMultiPayload();
  return sub_100039EA8();
}

double sub_10000A730(uint64_t a1, double a2)
{
  v5 = sub_100039CE8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 80);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  if (*(v9 + 32) == 1)
  {
    v14 = *(v9 + 8);
    v15 = *(v9 + 24);
  }

  else
  {

    sub_10003A858();
    v16 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    v17 = sub_10000D78C(v10, v11, v12, v13, 0);
    v18 = *(v6 + 8);
    v18(v8, v5, v17);
    v14 = *&v26[1];

    sub_10003A858();
    v19 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    v20 = sub_10000D78C(v10, v11, v12, v13, 0);
    v18(v8, v5, v20);
    v15 = *&v26[3];

    sub_10003A858();
    v21 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    v22 = sub_10000D78C(v10, v11, v12, v13, 0);
    v18(v8, v5, v22);

    sub_10003A858();
    v23 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    v24 = sub_10000D78C(v10, v11, v12, v13, 0);
    v18(v8, v5, v24);
  }

  return v14 + a2 + v15;
}

double sub_10000AA94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = a1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = sub_10003A4A8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  sub_1000176B0((&v33 - v10));
  (*(v6 + 104))(v8, enum case for WidgetFamily.systemSmall(_:), v5);
  sub_100009890();
  sub_10003A718();
  sub_10003A718();
  v12 = *(v6 + 8);
  v12(v8, v5);
  v12(v11, v5);
  v13 = v35;
  if (v50 == v55)
  {
    (*(v3 + 16))(&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v35);
    v14 = (*(v3 + 80) + 64) & ~*(v3 + 80);
    v15 = swift_allocObject();
    v16 = *(v13 + 24);
    *(v15 + 16) = *(v13 + 16);
    *(v15 + 24) = v16;
    v17 = *(v13 + 48);
    v33 = *(v13 + 32);
    *(v15 + 32) = v33;
    *(v15 + 48) = v17;
    (*(v3 + 32))(v15 + v14, &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    sub_100039B68();
    swift_getTupleTypeMetadata3();
    sub_10003A408();
    swift_getWitnessTable();
    sub_10003A358();
    sub_100039B68();
    sub_100039B68();
    swift_getTupleTypeMetadata2();
    sub_10003A408();
    swift_getWitnessTable();
    sub_10003A378();
    sub_100039B68();
    WitnessTable = swift_getWitnessTable();
    v39 = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
    *&v50 = sub_100039A88();
    *(&v50 + 1) = v18;
    v19 = sub_100039A98();
    *&v33 = swift_getWitnessTable();
    v20 = *(*(v19 - 8) + 16);
    v20(&v55, &v50, v19);

    v50 = v55;
    v20(&v51, &v50, v19);
    v48 = v51;
    v49 = v52;
    sub_100039B68();
    sub_100039B68();
    swift_getTupleTypeMetadata2();
    sub_10003A408();
    swift_getWitnessTable();
    sub_10003A338();
    sub_100039B68();
    v36 = swift_getWitnessTable();
    v37 = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
    sub_100039A98();
    swift_getWitnessTable();
    sub_10000A540(&v48, v19);
  }

  else
  {
    (*(v3 + 16))(&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v35);
    v21 = (*(v3 + 80) + 64) & ~*(v3 + 80);
    v22 = swift_allocObject();
    v23 = *(v13 + 24);
    *(v22 + 16) = *(v13 + 16);
    *(v22 + 24) = v23;
    v24 = *(v13 + 48);
    v33 = *(v13 + 32);
    *(v22 + 32) = v33;
    *(v22 + 48) = v24;
    (*(v3 + 32))(v22 + v21, &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    sub_100039B68();
    swift_getTupleTypeMetadata3();
    sub_10003A408();
    swift_getWitnessTable();
    sub_10003A358();
    sub_100039B68();
    sub_100039B68();
    sub_100039B68();
    swift_getTupleTypeMetadata2();
    sub_10003A408();
    swift_getWitnessTable();
    sub_10003A338();
    sub_100039B68();
    v53 = swift_getWitnessTable();
    v54 = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
    *&v50 = sub_100039A88();
    *(&v50 + 1) = v25;
    v26 = sub_100039A98();
    *&v33 = swift_getWitnessTable();
    v27 = *(*(v26 - 8) + 16);
    v27(&v55, &v50, v26);

    v50 = v55;
    v27(&v51, &v50, v26);
    v48 = v51;
    v49 = v52;
    sub_100039B68();
    swift_getTupleTypeMetadata2();
    sub_10003A408();
    swift_getWitnessTable();
    sub_10003A378();
    sub_100039B68();
    v46 = swift_getWitnessTable();
    v47 = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
    v28 = sub_100039A98();
    swift_getWitnessTable();
    sub_10000A638(&v48, v28, v26);
  }

  v33 = v50;
  sub_100039B68();
  swift_getTupleTypeMetadata3();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A358();
  sub_100039B68();
  sub_100039B68();
  swift_getTupleTypeMetadata2();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A378();
  sub_100039B68();
  v44 = swift_getWitnessTable();
  v45 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  sub_100039A98();
  sub_100039B68();
  sub_100039B68();
  swift_getTupleTypeMetadata2();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A338();
  sub_100039B68();
  v42 = swift_getWitnessTable();
  v43 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  sub_100039A98();
  v29 = sub_100039EB8();
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v40 = v30;
  v41 = v31;
  swift_getWitnessTable();
  (*(*(v29 - 8) + 16))(v34, &v50, v29);
  return sub_10000D7B0(v33, *(&v33 + 1));
}

double sub_10000B710@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v39 = a7;
  v40 = a8;
  v37 = a2;
  v38 = a6;
  v41 = a9;
  v35 = a4;
  sub_100039B68();
  v34 = a3;
  swift_getTupleTypeMetadata3();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A358();
  v36 = a5;
  sub_100039B68();
  sub_100039B68();
  swift_getTupleTypeMetadata2();
  sub_10003A408();
  swift_getWitnessTable();
  v12 = sub_10003A378();
  v33 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v31 - v13;
  v15 = sub_100039B68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v32 = v31 - v20;
  sub_10003A7A8();
  v31[1] = sub_10003A798();
  sub_10003A758();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  v22 = v35;
  v31[-8] = v34;
  v31[-7] = v22;
  v24 = v38;
  v23 = v39;
  v31[-6] = v36;
  v31[-5] = v24;
  v31[-4] = v23;
  v25 = v37;
  v31[-3] = v40;
  v31[-2] = v25;
  v31[-1] = a1;
  sub_10003A3D8();
  sub_10003A368();
  sub_100039A58();
  sub_100039A58();
  sub_10003A3D8();
  WitnessTable = swift_getWitnessTable();
  sub_10003A1D8();
  (*(v33 + 8))(v14, v12);
  v42 = WitnessTable;
  v43 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  v27 = *(v16 + 16);
  v28 = v32;
  v27(v32, v18, v15);
  v29 = *(v16 + 8);
  v29(v18, v15);
  v27(v41, v28, v15);
  v29(v28, v15);

  return result;
}

double sub_10000BB70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56 = a8;
  v59 = a7;
  v58 = a6;
  v60 = a2;
  v70 = a9;
  v64 = *(a5 - 8);
  __chkstk_darwin(a1);
  v57 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100039B68();
  v67 = *(v14 - 8);
  __chkstk_darwin(v14);
  v61 = &v50 - v15;
  v65 = v16;
  v69 = sub_100039B68();
  v66 = *(v69 - 8);
  __chkstk_darwin(v69);
  v63 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v68 = &v50 - v19;
  sub_100039B68();
  v20 = a3;
  swift_getTupleTypeMetadata3();
  sub_10003A408();
  swift_getWitnessTable();
  v21 = sub_10003A358();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v50 - v26;
  sub_10003A7A8();
  v62 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v74 = v20;
  v75 = a4;
  v76 = a5;
  v77 = v58;
  v28 = v56;
  v78 = v59;
  v79 = v56;
  v29 = type metadata accessor for LoadedOverlayTemplate(0, &v74);
  sub_10000C29C(v29);
  WitnessTable = swift_getWitnessTable();
  v51 = v21;
  v30 = v24;
  v50 = v24;
  v31 = v28;
  v32 = *(v22 + 16);
  v52 = v22 + 16;
  v53 = v32;
  v54 = v27;
  v32(v27, v30, v21);
  v58 = *(v22 + 8);
  v59 = v22 + 8;
  v33 = (v58)(v30, v21);
  v34 = v57;
  (*(a1 + 32))(v33);
  sub_100039A58();
  sub_10000A730(v29, v35);
  sub_10003A3D8();
  v36 = v61;
  sub_10003A1D8();
  (*(v64 + 8))(v34, a5);
  sub_10003A3B8();
  v73[4] = v31;
  v73[5] = &protocol witness table for _FrameLayout;
  v48 = v65;
  v49 = swift_getWitnessTable();
  v37 = v63;
  sub_10003A1E8();
  (*(v67 + 8))(v36, v48);
  v73[2] = v49;
  v73[3] = &protocol witness table for _FlexFrameLayout;
  v38 = v69;
  v67 = swift_getWitnessTable();
  v39 = v66;
  v40 = *(v66 + 16);
  v41 = v68;
  v40(v68, v37, v38);
  v42 = *(v39 + 8);
  v42(v37, v38);
  v43 = v50;
  v44 = v54;
  v45 = v51;
  v53(v50, v54, v51);
  v74 = v43;
  v40(v37, v41, v38);
  v75 = v37;
  v73[0] = v45;
  v73[1] = v38;
  v71 = WitnessTable;
  v72 = v67;
  sub_10000A370(&v74, 2uLL, v73);
  v42(v41, v38);
  v46 = v58;
  v58(v44, v45);
  v42(v37, v38);
  v46(v43, v45);

  return result;
}

uint64_t sub_10000C29C(uint64_t a1)
{
  sub_100039DF8();
  sub_100039B68();
  swift_getTupleTypeMetadata3();
  sub_10003A408();
  swift_getWitnessTable();
  return sub_10003A348();
}

double sub_10000C394@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v39 = a7;
  v40 = a8;
  v37 = a2;
  v38 = a6;
  v41 = a9;
  v35 = a4;
  sub_100039B68();
  v34 = a3;
  swift_getTupleTypeMetadata3();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A358();
  v36 = a5;
  sub_100039B68();
  sub_100039B68();
  sub_100039B68();
  swift_getTupleTypeMetadata2();
  sub_10003A408();
  swift_getWitnessTable();
  v12 = sub_10003A338();
  v33 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v31 - v13;
  v15 = sub_100039B68();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v32 = v31 - v20;
  sub_10003A7A8();
  v31[1] = sub_10003A798();
  sub_10003A758();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  v22 = v35;
  v31[-8] = v34;
  v31[-7] = v22;
  v24 = v38;
  v23 = v39;
  v31[-6] = v36;
  v31[-5] = v24;
  v31[-4] = v23;
  v25 = v37;
  v31[-3] = v40;
  v31[-2] = v25;
  v31[-1] = a1;
  sub_100039D28();
  sub_10003A328();
  sub_100039A58();
  sub_100039A58();
  sub_10003A3E8();
  WitnessTable = swift_getWitnessTable();
  sub_10003A1D8();
  (*(v33 + 8))(v14, v12);
  v42 = WitnessTable;
  v43 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  v27 = *(v16 + 16);
  v28 = v32;
  v27(v32, v18, v15);
  v29 = *(v16 + 8);
  v29(v18, v15);
  v27(v41, v28, v15);
  v29(v28, v15);

  return result;
}

void sub_10000C810(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v92 = a8;
  v81 = a7;
  v94 = a2;
  v93 = a1;
  v90 = a9;
  v86 = sub_100039CE8();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a5 - 8);
  __chkstk_darwin(v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100039B68();
  v76 = *(v18 - 8);
  __chkstk_darwin(v18);
  v91 = &v71 - v19;
  v77 = v20;
  v21 = sub_100039B68();
  v83 = *(v21 - 8);
  __chkstk_darwin(v21);
  v97 = &v71 - v22;
  v85 = v23;
  v80 = sub_100039B68();
  v89 = *(v80 - 8);
  __chkstk_darwin(v80);
  v88 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v79 = &v71 - v26;
  __chkstk_darwin(v27);
  v87 = &v71 - v28;
  v29 = a4;
  sub_100039B68();
  swift_getTupleTypeMetadata3();
  sub_10003A408();
  swift_getWitnessTable();
  v30 = sub_10003A358();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v96 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v95 = &v71 - v34;
  sub_10003A7A8();
  v78 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v101 = a3;
  v102 = v29;
  v103 = a5;
  v104 = a6;
  v105 = v81;
  v106 = v92;
  v35 = type metadata accessor for LoadedOverlayTemplate(0, &v101);
  v36 = v96;
  v37 = v93;
  sub_10000C29C(v35);
  WitnessTable = swift_getWitnessTable();
  v38 = *(v31 + 16);
  v73 = v31 + 16;
  v72 = v38;
  v38(v95, v36, v30);
  v39 = *(v31 + 8);
  v81 = v31 + 8;
  v75 = v39;
  v40 = (v39)(v36, v30);
  (*(v37 + 32))(v40);
  sub_100039A58();
  sub_10000A730(v35, v41);
  sub_10003A3D8();
  sub_10003A1D8();
  (*(v14 + 8))(v17, a5);
  sub_100039F88();
  v42 = v37 + *(v35 + 80);
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  v46 = *(v42 + 24);
  v47 = *(v42 + 32);
  if ((v47 & 1) == 0)
  {

    sub_10003A858();
    v48 = sub_100039F78();
    sub_100039968();

    v49 = v82;
    sub_100039CD8();
    swift_getAtKeyPath();
    v50 = sub_10000D78C(v43, v44, v45, v46, 0);
    (*(v84 + 8))(v49, v86, v50);
  }

  v71 = v45;
  v100[6] = v92;
  v100[7] = &protocol witness table for _FrameLayout;
  v51 = v77;
  v52 = swift_getWitnessTable();
  v53 = v91;
  sub_10003A208();
  (*(v76 + 8))(v53, v51);
  sub_100039A58();
  sub_10000A730(v35, v54);
  if (!v47)
  {

    sub_10003A858();
    v55 = sub_100039F78();
    sub_100039968();

    v56 = v82;
    sub_100039CD8();
    swift_getAtKeyPath();
    v57 = sub_10000D78C(v43, v44, v71, v46, 0);
    (*(v84 + 8))(v56, v86, v57);
  }

  sub_10003A3A8();
  v100[4] = v52;
  v100[5] = &protocol witness table for _PaddingLayout;
  v69 = v85;
  v70 = swift_getWitnessTable();
  v58 = v79;
  v59 = v97;
  sub_10003A1E8();
  (*(v83 + 8))(v59, v69);
  v100[2] = v70;
  v100[3] = &protocol witness table for _FlexFrameLayout;
  v60 = v80;
  v97 = swift_getWitnessTable();
  v61 = v89;
  v62 = *(v89 + 16);
  v63 = v87;
  v62(v87, v58, v60);
  v64 = *(v61 + 8);
  v64(v58, v60);
  v65 = v95;
  v66 = v96;
  v72(v96, v95, v30);
  v101 = v66;
  v67 = v88;
  v62(v88, v63, v60);
  v102 = v67;
  v100[0] = v30;
  v100[1] = v60;
  v98 = WitnessTable;
  v99 = v97;
  sub_10000A370(&v101, 2uLL, v100);
  v64(v63, v60);
  v68 = v75;
  v75(v65, v30);
  v64(v67, v60);
  v68(v66, v30);
}

double sub_10000D2AC@<D0>(void (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v39 = a5;
  v45 = a4;
  v46 = a6;
  WitnessTable = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10;
  v44 = sub_100039B68();
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v42 = &v34 - v15;
  v16 = *(a2 - 8);
  __chkstk_darwin(v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  sub_10003A7A8();
  v43 = sub_10003A798();
  sub_10003A758();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*a1)(isCurrentExecutor);
  v35 = v19;
  v36 = *(v16 + 16);
  v47 = v22;
  v36(v22, v19, a2);
  v37 = *(v16 + 8);
  v38 = v16 + 8;
  v24 = v37(v19, a2);
  a1[2](v24);
  sub_100039DF8();
  sub_100039D08();
  v25 = v39;
  sub_10003A1E8();
  (*(WitnessTable + 8))(v9, v11);
  v54[3] = v25;
  v54[4] = &protocol witness table for _FlexFrameLayout;
  v26 = v44;
  WitnessTable = swift_getWitnessTable();
  v28 = v41;
  v27 = v42;
  v29 = *(v41 + 16);
  v29(v42, v13, v26);
  v30 = *(v28 + 8);
  v30(v13, v26);
  v31 = v35;
  v36(v35, v47, a2);
  v52 = 0;
  v53 = 1;
  v54[0] = v31;
  v54[1] = &v52;
  v29(v13, v27, v26);
  v54[2] = v13;
  v51[0] = a2;
  v51[1] = &type metadata for Spacer;
  v51[2] = v26;
  v48 = v45;
  v49 = &protocol witness table for Spacer;
  v50 = WitnessTable;
  sub_10000A370(v54, 3uLL, v51);
  v30(v27, v26);
  v32 = v37;
  v37(v47, a2);
  v30(v13, v26);
  v32(v31, a2);

  return result;
}

double sub_10000D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10000D7B8()
{
  v1 = v0[2];
  v8[0] = v0[1];
  v8[1] = v1;
  v8[2] = v0[3];
  v2 = type metadata accessor for LoadedOverlayTemplate(0, v8);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80));

  v4 = *(v2 + 76);
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10003A4A8();
    (*(*(v5 - 8) + 8))(&v3[v4], v5);
  }

  else
  {
  }

  v6 = &v3[*(v2 + 80)];
  sub_10000D78C(*v6, *(v6 + 1), *(v6 + 2), *(v6 + 3), v6[32]);
  return swift_deallocObject();
}

uint64_t sub_10000D930(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v14[0] = v2[2];
  v4 = v14[0];
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v7;
  v14[4] = v8;
  v14[5] = v9;
  v10 = *(type metadata accessor for LoadedOverlayTemplate(0, v14) - 8);
  v11 = v2 + ((*(v10 + 80) + 64) & ~*(v10 + 80));

  return a2(a1, v11, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10000DA70(uint64_t *a1)
{
  sub_100039B68();
  swift_getTupleTypeMetadata3();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A358();
  sub_100039B68();
  sub_100039B68();
  swift_getTupleTypeMetadata2();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A378();
  sub_100039B68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100039A98();
  sub_100039B68();
  sub_100039B68();
  swift_getTupleTypeMetadata2();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A338();
  sub_100039B68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100039A98();
  sub_100039EB8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10000DD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000DEB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for CenteredInformationView(uint64_t a1)
{
  result = qword_10004CAB0;
  if (!qword_10004CAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E03C(uint64_t a1)
{
  sub_1000079F8();
  if (v1 <= 0x3F)
  {
    sub_10000E128(319, &qword_10004C810, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      sub_10000E128(319, &qword_10004C660, &type metadata accessor for ColorScheme);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000E128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000399D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for CenteredInformationView.Style(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CenteredInformationView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CenteredInformationView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_10000E208@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v26 = sub_100039F48();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10003A4A8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  v10 = sub_100039DE8();
  v21 = *(v1 + 64);
  v22 = v10;
  v48 = 0;
  sub_10000E6C8(&v33);
  v56 = v39;
  v57 = v40;
  v58 = v41;
  v52 = v35;
  v53 = v36;
  v54 = v37;
  v55 = v38;
  v50 = v33;
  v51 = v34;
  v59[6] = v39;
  v59[7] = v40;
  v59[8] = v41;
  v59[2] = v35;
  v59[3] = v36;
  v59[4] = v37;
  v59[5] = v38;
  v59[0] = v33;
  v59[1] = v34;
  sub_100009AB0(&v50, &v28, &qword_10004CAF8, &qword_10003C7B8);
  sub_100009B18(v59, &qword_10004CAF8, &qword_10003C7B8);
  *&v47[87] = v55;
  *&v47[103] = v56;
  *&v47[119] = v57;
  *&v47[135] = v58;
  *&v47[23] = v51;
  *&v47[39] = v52;
  *&v47[55] = v53;
  *&v47[71] = v54;
  *&v47[7] = v50;
  v20 = v48;
  v11 = sub_100039F88();
  type metadata accessor for CenteredInformationView(0);
  sub_1000176B0(v9);
  (*(v4 + 104))(v6, enum case for WidgetFamily.systemSmall(_:), v3);
  sub_10000EEBC(&qword_10004CB00, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10003A608();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v12(v9, v3);
  sub_1000399A8();
  *(&v29[6] + 1) = *&v47[96];
  *(&v29[7] + 1) = *&v47[112];
  *(&v29[8] + 1) = *&v47[128];
  *(&v29[2] + 1) = *&v47[32];
  *(&v29[3] + 1) = *&v47[48];
  *(&v29[4] + 1) = *&v47[64];
  *(&v29[5] + 1) = *&v47[80];
  *(v29 + 1) = *v47;
  v49 = 0;
  *&v28 = v22;
  *(&v28 + 1) = v21;
  LOBYTE(v29[0]) = v20;
  *&v29[9] = *&v47[143];
  *(&v29[1] + 1) = *&v47[16];
  BYTE8(v29[9]) = v11;
  *&v30 = v13;
  *(&v30 + 1) = v14;
  *&v31 = v15;
  *(&v31 + 1) = v16;
  v32 = 0;
  v17 = v23;
  sub_100039F38();
  v27 = v1;
  sub_10003A3D8();
  sub_100001B2C(&qword_10004CB08, &unk_10003C7C0);
  sub_100001B2C(&qword_10004CB10, &unk_10003C950);
  sub_10000ED1C();
  sub_10000EDD4();
  sub_10003A1B8();
  (*(v24 + 8))(v17, v26);
  v43 = v29[9];
  v44 = v30;
  v45 = v31;
  v39 = v29[5];
  v40 = v29[6];
  v46 = v32;
  v41 = v29[7];
  v42 = v29[8];
  v35 = v29[1];
  v36 = v29[2];
  v37 = v29[3];
  v38 = v29[4];
  v33 = v28;
  v34 = v29[0];
  return sub_100009B18(&v33, &qword_10004CB08, &unk_10003C7C0);
}

double sub_10000E6C8@<D0>(_OWORD *a1@<X8>)
{
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10000E8C0(&v12);
  sub_10000EA70(&v17);
  v9 = v14;
  v10 = v15;
  v2 = v13;
  v7 = v12;
  v8 = v13;
  v26[2] = v19;
  v26[3] = v20;
  v26[0] = v17;
  v26[1] = v18;
  v11 = v16;
  v27 = v21;
  v23 = v16;
  *v6 = v16;
  v22[2] = v14;
  v22[3] = v15;
  v22[0] = v12;
  v22[1] = v13;
  v24[2] = v19;
  v24[3] = v20;
  v25 = v21;
  v24[0] = v17;
  v24[1] = v18;
  *&v6[8] = v17;
  *&v6[72] = v21;
  *&v6[56] = v20;
  *&v6[40] = v19;
  *&v6[24] = v18;
  v3 = v12;
  v4 = v15;
  a1[2] = v14;
  a1[3] = v4;
  *a1 = v3;
  a1[1] = v2;
  a1[7] = *&v6[48];
  a1[8] = *&v6[64];
  a1[5] = *&v6[16];
  a1[6] = *&v6[32];
  a1[4] = *v6;
  sub_100009AB0(v22, v28, &qword_10004CB50, &qword_10003C848);
  sub_100009AB0(v24, v28, &qword_10004CB58, &qword_10003C850);
  sub_100009B18(v26, &qword_10004CB58, &qword_10003C850);
  v28[2] = v9;
  v28[3] = v10;
  v29 = v11;
  v28[0] = v7;
  v28[1] = v8;
  sub_100009B18(v28, &qword_10004CB50, &qword_10003C848);

  return result;
}

uint64_t sub_10000E8C0@<X0>(uint64_t a1@<X8>)
{

  v2 = sub_10003A128();
  v4 = v3;
  v6 = v5;
  sub_100039FF8();
  sub_100039FC8();
  sub_100039FD8();

  v7 = sub_10003A058();
  v9 = v8;
  v11 = v10;

  sub_100009880(v2, v4, v6 & 1);

  sub_100039FA8();
  v12 = sub_10003A058();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_100009880(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  result = sub_100039EF8();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 3;
  *(a1 + 48) = 0;
  *(a1 + 56) = v20;
  *(a1 + 64) = 1;
  *(a1 + 68) = result;
  return result;
}

void sub_10000EA70(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  if (v3)
  {

    v4 = sub_10003A128();
    v6 = v5;
    v8 = v7;
    sub_100039FE8();
    v9 = sub_10003A058();
    v3 = v10;
    v12 = v11;
    v14 = v13;

    sub_100009880(v4, v6, v8 & 1);

    KeyPath = swift_getKeyPath();
    v16 = swift_getKeyPath();
    v17 = v12 & 1;
    v18 = (sub_100039F08() << 32) | 1;
    v19 = 4;
  }

  else
  {
    v9 = 0;
    v14 = 0;
    KeyPath = 0;
    v19 = 0;
    v16 = 0;
    v18 = 0;
    v17 = 0;
  }

  *a1 = v9;
  a1[1] = v3;
  a1[2] = v17;
  a1[3] = v14;
  a1[4] = KeyPath;
  a1[5] = v19;
  a1[6] = 0;
  a1[7] = v16;
  a1[8] = v18;
}

void sub_10000EBE4(uint64_t *a1@<X8>)
{
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CenteredInformationView(0);
  v2 = (a1 + *(sub_100001B2C(&qword_10004CB10, &unk_10003C950) + 36));
  v3 = sub_100001B2C(&qword_10004CB48, &qword_10003C7D8);
  sub_100017688((v2 + *(v3 + 28)));
  KeyPath = swift_getKeyPath();

  *v2 = KeyPath;
}

unint64_t sub_10000ED1C()
{
  result = qword_10004CB18;
  if (!qword_10004CB18)
  {
    sub_100001B74(&qword_10004CB08, &unk_10003C7C0);
    sub_1000073FC(&qword_10004CB20, &qword_10004CB28, &qword_10003C7D0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004CB18);
  }

  return result;
}

unint64_t sub_10000EDD4()
{
  result = qword_10004CB30;
  if (!qword_10004CB30)
  {
    sub_100001B74(&qword_10004CB10, &unk_10003C950);
    sub_10000EEBC(&qword_10004CB38, type metadata accessor for WidgetBlurBackground, &unk_10003D138);
    sub_1000073FC(&qword_10004CB40, &qword_10004CB48, &qword_10003C7D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004CB30);
  }

  return result;
}

uint64_t sub_10000EEBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EF24()
{
  sub_100001B74(&qword_10004CB08, &unk_10003C7C0);
  sub_100001B74(&qword_10004CB10, &unk_10003C950);
  sub_10000ED1C();
  sub_10000EDD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000EFC8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100039958();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_10000F160(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100039958();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for EmptyStateView(uint64_t a1)
{
  result = qword_10004CBB8;
  if (!qword_10004CBB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F330(uint64_t a1)
{
  sub_100039958();
  if (v1 <= 0x3F)
  {
    sub_10000E128(319, &qword_10004C810, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      sub_10000A298();
      if (v3 <= 0x3F)
      {
        sub_10000E128(319, &qword_10004C660, &type metadata accessor for ColorScheme);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

double sub_10000F460@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_100039DE8();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = sub_100001B2C(&qword_10004CC10, &qword_10003C9C8);
  sub_10000F59C(a2, a3 + *(v5 + 44));
  sub_100039A58();
  sub_100039A58();
  sub_10003A3D8();
  sub_100039A48();

  v6 = (a3 + *(sub_100001B2C(&qword_10004CC18, &qword_10003C9D0) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

void sub_10000F59C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003A4A8();
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v64 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v55 - v7;
  v8 = sub_100039CE8();
  v59 = *(v8 - 8);
  v60 = v8;
  __chkstk_darwin(v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100001B2C(&qword_10004CC20, &qword_10003C9D8);
  __chkstk_darwin(v62);
  v68 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = (&v55 - v13);
  sub_10003A7A8();
  v67 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100039A58();
  *v14 = sub_10003A3D8();
  v14[1] = v15;
  v16 = sub_100001B2C(&qword_10004CC28, &qword_10003C9E0);
  sub_10000FFCC(a1, v14 + *(v16 + 44));
  v17 = v14 + *(sub_100001B2C(&qword_10004CC30, &qword_10003C9E8) + 36);
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = type metadata accessor for EmptyStateView(0);
  v61 = a1 + *(v18 + 24);
  v19 = a1 + *(v18 + 32);
  v20 = *v19;
  v21 = *(v19 + 8);
  v23 = *(v19 + 16);
  v22 = *(v19 + 24);
  if (*(v19 + 32) == 1)
  {
    v99 = *v19;
    v100 = v21;
    v101 = v23;
    v102 = v22;
  }

  else
  {

    sub_10003A858();
    v57 = a1;
    v24 = sub_100039F78();
    v58 = a2;
    v25 = v24;
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    v26 = sub_10000D78C(v20, v21, v23, v22, 0);
    v55 = v18;
    v56 = v14;
    v27 = *(v59 + 8);
    v59 = v22;
    v28 = v60;
    v27(v10, v60, v26);

    sub_10003A858();
    v29 = sub_100039F78();
    a2 = v58;
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    v30 = sub_10000D78C(v20, v21, v23, v59, 0);
    v27(v10, v28, v30);
    v14 = v56;
  }

  sub_10003A3D8();
  sub_100039A48();
  v31 = (v14 + *(v62 + 36));
  v32 = v104;
  *v31 = v103;
  v31[1] = v32;
  v31[2] = v105;
  sub_10000FCE0(v90);
  v96 = v90[2];
  v97 = v90[3];
  v98[0] = v91[0];
  *(v98 + 12) = *(v91 + 12);
  v94 = v90[0];
  v95 = v90[1];
  LODWORD(v62) = sub_100039F88();
  v33 = v63;
  sub_1000176B0(v63);
  v35 = v64;
  v34 = v65;
  v36 = v66;
  (*(v65 + 104))(v64, enum case for WidgetFamily.systemSmall(_:), v66);
  sub_100011518(&qword_10004CB00, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10003A608();
  v37 = *(v34 + 8);
  v37(v35, v36);
  v37(v33, v36);
  sub_1000399A8();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v71 = v96;
  v72 = v97;
  v73[0] = v98[0];
  *(v73 + 12) = *(v98 + 12);
  v69 = v94;
  v70 = v95;
  v92 = 0;
  v46 = v68;
  sub_100009AB0(v14, v68, &qword_10004CC20, &qword_10003C9D8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v47 = sub_100001B2C(&qword_10004CC38, &qword_10003C9F0);
  sub_100009AB0(v46, a2 + v47[12], &qword_10004CC20, &qword_10003C9D8);
  v48 = a2 + v47[16];
  *v48 = 0;
  *(v48 + 8) = 0;
  v49 = (a2 + v47[20]);
  v76 = v71;
  v77 = v72;
  v74 = v69;
  v75 = v70;
  v78 = v73[0];
  v79 = v73[1];
  LOBYTE(v33) = v62;
  LOBYTE(v80) = v62;
  *(&v80 + 1) = *v93;
  DWORD1(v80) = *&v93[3];
  *(&v80 + 1) = v39;
  *&v81[0] = v41;
  *(&v81[0] + 1) = v43;
  *&v81[1] = v45;
  BYTE8(v81[1]) = 0;
  v50 = v72;
  v49[2] = v71;
  v49[3] = v50;
  v51 = v79;
  v49[4] = v78;
  v49[5] = v51;
  v52 = v75;
  *v49 = v74;
  v49[1] = v52;
  *(v49 + 121) = *(v81 + 9);
  v53 = v81[0];
  v49[6] = v80;
  v49[7] = v53;
  v54 = a2 + v47[24];
  *v54 = 0;
  *(v54 + 8) = 0;
  sub_100011560(&v74, v82);
  sub_100009B18(v14, &qword_10004CC20, &qword_10003C9D8);
  v82[2] = v71;
  v82[3] = v72;
  v82[4] = v73[0];
  v82[5] = v73[1];
  v82[0] = v69;
  v82[1] = v70;
  v83 = v33;
  *v84 = *v93;
  *&v84[3] = *&v93[3];
  v85 = v39;
  v86 = v41;
  v87 = v43;
  v88 = v45;
  v89 = 0;
  sub_100009B18(v82, &qword_10004CC40, &qword_10003C9F8);
  sub_100009B18(v46, &qword_10004CC20, &qword_10003C9D8);
}

uint64_t sub_10000FCE0@<X0>(uint64_t a1@<X8>)
{

  v2 = sub_10003A128();
  v4 = v3;
  v6 = v5;
  sub_100039FF8();
  sub_100039FB8();

  v7 = sub_10003A058();
  v9 = v8;
  v11 = v10;

  sub_100009880(v2, v4, v6 & 1);

  sub_100039FA8();
  v12 = sub_10003A058();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_100009880(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  LOBYTE(v9) = v16 & 1;
  v21 = swift_getKeyPath();
  result = sub_100039EF8();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v9;
  *(a1 + 24) = v18;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 3;
  *(a1 + 48) = 0;
  *(a1 + 56) = v20;
  *(a1 + 64) = 1;
  *(a1 + 72) = v21;
  *(a1 + 80) = 0x3FE0000000000000;
  *(a1 + 88) = result;
  return result;
}

void sub_10000FEA0(uint64_t *a1@<X8>)
{
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EmptyStateView(0);
  v2 = (a1 + *(sub_100001B2C(&qword_10004CB10, &unk_10003C950) + 36));
  v3 = sub_100001B2C(&qword_10004CB48, &qword_10003C7D8);
  sub_100017688((v2 + *(v3 + 28)));
  KeyPath = swift_getKeyPath();

  *v2 = KeyPath;
}

void sub_10000FFCC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a1;
  v103 = a2;
  v100 = sub_100039938();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001B2C(&qword_10004CC48, &qword_10003CA90);
  __chkstk_darwin(v3 - 8);
  v94 = &v85 - v4;
  v96 = sub_100001B2C(&qword_10004CC50, &qword_10003CA98);
  __chkstk_darwin(v96);
  v102 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v101 = &v85 - v7;
  v93 = sub_1000399C8();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v85 - v10;
  v12 = sub_100001B2C(&qword_10004CC58, &qword_10003CAA0);
  __chkstk_darwin(v12 - 8);
  v14 = &v85 - v13;
  v107 = sub_10003A2A8();
  v15 = *(v107 - 8);
  __chkstk_darwin(v107);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100039958();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_100001B2C(&qword_10004CC60, &qword_10003CAA8);
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v97 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v111 = &v85 - v24;
  __chkstk_darwin(v25);
  v108 = &v85 - v26;
  __chkstk_darwin(v27);
  v121 = &v85 - v28;
  __chkstk_darwin(v29);
  v31 = &v85 - v30;
  v89 = sub_100001B2C(&qword_10004CC68, &qword_10003CAB0);
  __chkstk_darwin(v89);
  v109 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v87 = &v85 - v34;
  __chkstk_darwin(v35);
  v120 = &v85 - v36;
  sub_10003A7A8();
  v95 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_10004C368 != -1)
  {
    swift_once();
  }

  v37 = sub_100004618(v18, qword_100050238);
  v38 = *(v19 + 16);
  v104 = v18;
  v119 = v38;
  v88 = v19 + 16;
  v38(v21, v37, v18);
  v86 = v21;
  sub_10003A318();
  v39 = *(v15 + 104);
  v40 = v17;
  v118 = enum case for Image.ResizingMode.stretch(_:);
  v41 = v107;
  v116 = v39;
  v117 = v15 + 104;
  v39(v17);
  sub_10003A308();

  v43 = *(v15 + 8);
  v42 = v15 + 8;
  v115 = v43;
  v43(v17, v41);
  sub_10003A488();
  v44 = sub_10003A498();
  v45 = (*(v44 - 8) + 56);
  v105 = *v45;
  v106 = v44;
  v114 = v45;
  v105(v14, 0, 1);
  v46 = v31;
  sub_10003A2F8();

  sub_100009B18(v14, &qword_10004CC58, &qword_10003CAA0);
  v91 = type metadata accessor for EmptyStateView(0);
  v47 = v11;
  sub_100017688(v11);
  v48 = v92;
  v49 = v90;
  v50 = v93;
  (*(v92 + 104))(v90, enum case for ColorScheme.light(_:), v93);
  v51 = sub_1000399B8();
  v52 = *(v48 + 8);
  v52(v49, v50);
  v52(v47, v50);
  if (v51)
  {
    v53 = 0.3;
  }

  else
  {
    v53 = 1.0;
  }

  v54 = v87;
  (*(v110 + 32))(v87, v46, v112);
  *(v54 + *(v89 + 36)) = v53;
  sub_1000116DC(v54, v120);
  if (qword_10004C360 != -1)
  {
    swift_once();
  }

  v55 = v104;
  v56 = sub_100004618(v104, qword_100050220);
  v57 = v86;
  v119(v86, v56, v55);
  sub_10003A318();
  v58 = v107;
  v116(v40, v118, v107);
  sub_10003A308();

  v115(v40, v58);
  sub_10003A488();
  (v105)(v14, 0, 1, v106);
  sub_10003A2F8();

  sub_100009B18(v14, &qword_10004CC58, &qword_10003CAA0);
  v59 = v40;
  if (qword_10004C358 != -1)
  {
    swift_once();
  }

  v60 = sub_100004618(v55, qword_100050208);
  v119(v57, v60, v55);
  sub_10003A318();
  v116(v40, v118, v58);
  sub_10003A308();

  v115(v40, v58);
  v61 = enum case for Image.TemplateRenderingMode.template(_:);
  v62 = sub_10003A2D8();
  v93 = v42;
  v63 = v58;
  v64 = v57;
  v65 = v62;
  v66 = v59;
  v67 = *(v62 - 8);
  v68 = v94;
  (*(v67 + 104))(v94, v61, v62);
  (*(v67 + 56))(v68, 0, 1, v65);
  sub_10003A2B8();

  sub_100009B18(v68, &qword_10004CC48, &qword_10003CA90);
  sub_10003A478();
  v70 = v105;
  v69 = v106;
  (v105)(v14, 0, 1, v106);
  v71 = v101;
  sub_10003A2F8();

  sub_100009B18(v14, &qword_10004CC58, &qword_10003CAA0);
  if (qword_10004C348 != -1)
  {
    swift_once();
  }

  v72 = v100;
  v73 = sub_100004618(v100, qword_1000501D8);
  (*(v99 + 16))(v98, v73, v72);
  *(v71 + *(v96 + 36)) = sub_10003A288();
  v119(v64, v113 + *(v91 + 20), v104);
  sub_10003A318();
  v116(v66, v118, v63);
  sub_10003A308();

  v115(v66, v63);
  sub_10003A488();
  v70(v14, 0, 1, v69);
  v74 = v108;
  sub_10003A2F8();

  sub_100009B18(v14, &qword_10004CC58, &qword_10003CAA0);
  v75 = v109;
  sub_100009AB0(v120, v109, &qword_10004CC68, &qword_10003CAB0);
  v77 = v110;
  v76 = v111;
  v78 = *(v110 + 16);
  v79 = v112;
  v78(v111, v121, v112);
  v80 = v102;
  sub_100009AB0(v71, v102, &qword_10004CC50, &qword_10003CA98);
  v81 = v97;
  v78(v97, v74, v79);
  v82 = v103;
  sub_100009AB0(v75, v103, &qword_10004CC68, &qword_10003CAB0);
  v83 = sub_100001B2C(&qword_10004CC70, &qword_10003CAB8);
  v78((v82 + v83[12]), v76, v79);
  sub_100009AB0(v80, v82 + v83[16], &qword_10004CC50, &qword_10003CA98);
  v78((v82 + v83[20]), v81, v79);
  v84 = *(v77 + 8);
  v84(v108, v79);
  sub_100009B18(v71, &qword_10004CC50, &qword_10003CA98);
  v84(v121, v79);
  sub_100009B18(v120, &qword_10004CC68, &qword_10003CAB0);
  v84(v81, v79);
  sub_100009B18(v80, &qword_10004CC50, &qword_10003CA98);
  v84(v111, v79);
  sub_100009B18(v109, &qword_10004CC68, &qword_10003CAB0);
}

double sub_100010EAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v4 = sub_100039F48();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v11 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001110C(v2, v11);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_100011364(v11, v13 + v12);
  v17 = sub_1000113C8;
  v18 = v13;
  sub_100039F38();
  v16 = v2;
  sub_10003A3D8();
  sub_100001B2C(&qword_10004CC00, &qword_10003C948);
  sub_100001B2C(&qword_10004CB10, &unk_10003C950);
  sub_1000073FC(&qword_10004CC08, &qword_10004CC00, &qword_10003C948, &protocol conformance descriptor for GeometryReader<A>);
  sub_10000EDD4();
  sub_10003A1B8();
  (*(v5 + 8))(v7, v4);

  return result;
}

uint64_t sub_10001110C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyStateView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011170()
{
  v1 = type metadata accessor for EmptyStateView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_100039958();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[7];
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10003A4A8();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v2 + v1[8];
  sub_10000D78C(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
  v8 = v1[9];
  sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1000399C8();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100011364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyStateView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1000113C8@<D0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for EmptyStateView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_10000F460(v5, a2);
}

uint64_t sub_100011458@<X0>(uint64_t a1@<X8>)
{
  result = sub_100039CB8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000114BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100039C48();
  *a1 = result;
  return result;
}

uint64_t sub_100011518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100011560(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004CC40, &qword_10003C9F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000115D0@<X0>(uint64_t a1@<X8>)
{
  result = sub_100039CB8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100011634@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100039C48();
  *a1 = result;
  return result;
}

uint64_t sub_1000116DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004CC68, &qword_10003CAB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001174C()
{
  sub_100001B74(&qword_10004CC00, &qword_10003C948);
  sub_100001B74(&qword_10004CB10, &unk_10003C950);
  sub_1000073FC(&qword_10004CC08, &qword_10004CC00, &qword_10003C948, &protocol conformance descriptor for GeometryReader<A>);
  sub_10000EDD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100011808(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10001182C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011880(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1000118DC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_100011920(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001B2C(&qword_10004C780, "P*");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000119F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001B2C(&qword_10004C780, "P*");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100011AC0(uint64_t a1)
{
  sub_100011B74();
  if (v1 <= 0x3F)
  {
    sub_100018448(319, &qword_10004C808, &type metadata accessor for Symbol, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100011B74()
{
  result = qword_10004CCE0;
  if (!qword_10004CCE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004CCE0);
  }

  return result;
}

uint64_t sub_100011BE4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C780, "P*");
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v13 = type metadata accessor for LoadedView.Callout(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_15;
  }

  v14 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[12];
    goto LABEL_15;
  }

  v15 = sub_100001B2C(&qword_10004C5F0, "r%");
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[13];
    goto LABEL_15;
  }

  v17 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[16];

  return v18(v19, a2, v17);
}

uint64_t sub_100011E78(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C780, "P*");
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v13 = type metadata accessor for LoadedView.Callout(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_13;
  }

  v14 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[12];
    goto LABEL_13;
  }

  v15 = sub_100001B2C(&qword_10004C5F0, "r%");
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[13];
    goto LABEL_13;
  }

  v17 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[16];

  return v18(v19, a2, a2, v17);
}

void sub_100012118(uint64_t a1)
{
  sub_10001243C(319, &qword_10004C7F8, &type metadata for LocalizedStringKey, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100018448(319, &qword_10004C800, &type metadata accessor for FindMyRelativeDate, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100018448(319, &qword_10004C808, &type metadata accessor for Symbol, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10001243C(319, &qword_10004CD78, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          type metadata accessor for LoadedView.Callout(319);
          if (v5 <= 0x3F)
          {
            sub_100018448(319, &qword_10004C810, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_100018448(319, &qword_10004C670, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
              if (v7 <= 0x3F)
              {
                sub_1000123D8(319);
                if (v8 <= 0x3F)
                {
                  sub_10001243C(319, &qword_10004CA48, &type metadata for EdgeInsets, &type metadata accessor for Environment);
                  if (v9 <= 0x3F)
                  {
                    sub_100018448(319, &qword_10004C660, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000123D8(uint64_t a1)
{
  if (!qword_10004CD80)
  {
    sub_100001B74(&unk_10004CD88, &qword_10003CB70);
    v1 = sub_1000399D8();
    if (!v2)
    {
      atomic_store(v1, &qword_10004CD80);
    }
  }
}

void sub_10001243C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000124A8(void (*a1)(__int128 *__return_ptr, _OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100025E04(0, v4, 0);
    v7 = _swiftEmptyArrayStorage;
    for (i = (a3 + 48); ; i += 2)
    {
      v9 = *i;
      v17[0] = *(i - 1);
      v17[1] = v9;
      a1(&v18, v17);
      if (v3)
      {
        break;
      }

      v10 = v18;
      v11 = v19;
      v20 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        v15 = v19;
        v16 = v18;
        sub_100025E04((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v10 = v16;
        v7 = v20;
      }

      v7[2] = v13 + 1;
      v14 = &v7[4 * v13];
      *(v14 + 2) = v10;
      *(v14 + 3) = v11;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000125BC@<X0>(void *a1@<X8>)
{
  v3 = sub_100039CE8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LoadedView(0);
  sub_100009AB0(v1 + *(v10 + 52), v9, &qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10003A458();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10003A858();
    v13 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000127C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v21 = sub_100039F48();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v18 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LoadedView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100001B2C(&qword_10004CDE8, &qword_10003CBC8);
  __chkstk_darwin(v7);
  v9 = (&v18 - v8);
  sub_100017DE4(v1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LoadedView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_100017088(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_100017DE4(v2, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LoadedView);
  v12 = swift_allocObject();
  sub_100017088(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  sub_100017DE4(v2, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LoadedView);
  v13 = swift_allocObject();
  sub_100017088(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v10);
  *v9 = sub_1000170EC;
  v9[1] = v11;
  v9[2] = sub_10001A284;
  v9[3] = v12;
  v9[4] = sub_100017550;
  v9[5] = v13;
  v14 = *(v7 + 76);
  *(v9 + v14) = swift_getKeyPath();
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  swift_storeEnumTagMultiPayload();
  v15 = v9 + *(v7 + 80);
  *v15 = swift_getKeyPath();
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v15[32] = 0;
  v16 = v18;
  sub_100039F38();
  v22 = v2;
  sub_10003A3D8();
  sub_100001B2C(&qword_10004CDF0, &qword_10003CC38);
  sub_1000073FC(&qword_10004CDF8, &qword_10004CDE8, &qword_10003CBC8, &unk_10003C6D8);
  sub_1000179B0();
  sub_10003A1B8();
  (*(v19 + 8))(v16, v21);
  return sub_100009B18(v9, &qword_10004CDE8, &qword_10003CBC8);
}

void sub_100012B84(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100039CE8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100012E44(a2);
  KeyPath = swift_getKeyPath();
  v9 = type metadata accessor for LoadedView(0);
  v10 = a1 + *(v9 + 56);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*(v10 + 16) != 1)
  {

    sub_10003A858();
    v20[1] = v9;
    v13 = sub_100039F78();
    v20[0] = v4;
    v14 = v13;
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    v15 = sub_10001707C(v11, v12, 0);
    (*(v5 + 8))(v7, v20[0], v15);
    v11 = v20[2];
    v12 = v20[3];
  }

  v16 = (a2 + *(sub_100001B2C(&qword_10004CE10, &qword_10003CC40) + 36));
  *v16 = KeyPath;
  v16[1] = v11;
  v16[2] = v12;
  v17 = swift_getKeyPath();
  v18 = (a2 + *(sub_100001B2C(&qword_10004CDF0, &qword_10003CC38) + 36));
  v19 = sub_100001B2C(&qword_10004CB48, &qword_10003C7D8);
  sub_1000176D8(&qword_10004C6C8, &unk_10003C440, &type metadata accessor for ColorScheme, (v18 + *(v19 + 28)));

  *v18 = v17;
}

uint64_t sub_100012E44@<X0>(void *a1@<X8>)
{
  v46 = a1;
  v47 = type metadata accessor for WidgetGridBackground(0);
  __chkstk_darwin(v47);
  v3 = (&v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for WidgetBlurBackground(0);
  __chkstk_darwin(v41);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_100001B2C(&qword_10004CE60, &qword_10003CCD0);
  __chkstk_darwin(v43);
  v45 = &v36 - v6;
  v38 = sub_100001B2C(&qword_10004CE68, &unk_10003CCD8);
  __chkstk_darwin(v38);
  v40 = &v36 - v7;
  v44 = sub_100001B2C(&qword_10004CE30, &qword_10003CC50);
  __chkstk_darwin(v44);
  v42 = &v36 - v8;
  v39 = sub_100001B2C(&qword_10004CE40, &qword_10003CC58);
  __chkstk_darwin(v39);
  v36 = (&v36 - v9);
  v10 = sub_100001B2C(&qword_10004CC58, &qword_10003CAA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_10003A2A8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100001B2C(&qword_10004CE70, &qword_10003CCE8);
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  v20 = *(type metadata accessor for LoadedView(0) + 40);
  v37 = v1;
  v21 = *(v1 + v20);
  if (!v21)
  {
    *v5 = swift_getKeyPath();
    sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
    swift_storeEnumTagMultiPayload();
    sub_100017DE4(v5, v40, type metadata accessor for WidgetBlurBackground);
    swift_storeEnumTagMultiPayload();
    sub_1000073FC(&qword_10004CE38, &qword_10004CE40, &qword_10003CC58, &protocol conformance descriptor for ZStack<A>);
    sub_100018930(&qword_10004CB38, type metadata accessor for WidgetBlurBackground, &unk_10003D138);
    v24 = v42;
    sub_100039EA8();
    sub_100009AB0(v24, v45, &qword_10004CE30, &qword_10003CC50);
    swift_storeEnumTagMultiPayload();
    sub_100017BDC();
    sub_100018930(&qword_10004CE48, type metadata accessor for WidgetGridBackground, &unk_10003D4C8);
    sub_100039EA8();
    sub_100009B18(v24, &qword_10004CE30, &qword_10003CC50);
    v22 = type metadata accessor for WidgetBlurBackground;
    v23 = v5;
    return sub_100017E4C(v23, v22);
  }

  if (v21 == 1)
  {
    *v3 = swift_getKeyPath();
    sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
    swift_storeEnumTagMultiPayload();
    sub_100017DE4(v3, v45, type metadata accessor for WidgetGridBackground);
    swift_storeEnumTagMultiPayload();
    sub_100017BDC();
    sub_100018930(&qword_10004CE48, type metadata accessor for WidgetGridBackground, &unk_10003D4C8);
    sub_100039EA8();
    v22 = type metadata accessor for WidgetGridBackground;
    v23 = v3;
    return sub_100017E4C(v23, v22);
  }

  sub_100017EAC(*(v1 + v20));
  v26 = v21;
  sub_10003A298();
  (*(v14 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v13);
  sub_10003A308();

  (*(v14 + 8))(v16, v13);
  sub_10003A468();
  v27 = sub_10003A498();
  (*(*(v27 - 8) + 56))(v12, 0, 1, v27);
  sub_10003A2F8();

  sub_100009B18(v12, &qword_10004CC58, &qword_10003CAA0);
  v28 = &v19[*(sub_100001B2C(&qword_10004CE78, &qword_10003CD20) + 36)];
  *v28 = 0;
  *(v28 + 4) = 257;
  sub_10003A3D8();
  sub_100039A48();
  v29 = &v19[*(v17 + 36)];
  v30 = v49;
  *v29 = v48;
  *(v29 + 1) = v30;
  *(v29 + 2) = v50;
  v31 = sub_10003A3D8();
  v32 = v36;
  *v36 = v31;
  *(v32 + 8) = v33;
  v34 = sub_100001B2C(&qword_10004CE80, &qword_10003CD28);
  sub_100013B30(v37, v19, v32 + *(v34 + 44));
  sub_100009AB0(v32, v40, &qword_10004CE40, &qword_10003CC58);
  swift_storeEnumTagMultiPayload();
  sub_1000073FC(&qword_10004CE38, &qword_10004CE40, &qword_10003CC58, &protocol conformance descriptor for ZStack<A>);
  sub_100018930(&qword_10004CB38, type metadata accessor for WidgetBlurBackground, &unk_10003D138);
  v35 = v42;
  sub_100039EA8();
  sub_100009AB0(v35, v45, &qword_10004CE30, &qword_10003CC50);
  swift_storeEnumTagMultiPayload();
  sub_100017BDC();
  sub_100018930(&qword_10004CE48, type metadata accessor for WidgetGridBackground, &unk_10003D4C8);
  sub_100039EA8();
  sub_100017EBC(v21);
  sub_100009B18(v35, &qword_10004CE30, &qword_10003CC50);
  sub_100009B18(v32, &qword_10004CE40, &qword_10003CC58);
  return sub_100009B18(v19, &qword_10004CE70, &qword_10003CCE8);
}

uint64_t sub_100013748@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100039BE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000137F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003A458();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  v11 = *(a1 + *(type metadata accessor for LoadedView(0) + 32) + 8);
  if (v11)
  {

    v11 = sub_10003A2C8();
    sub_1000125BC(v10);
    sub_10003A448();
    v12 = sub_10003A438();
    v13 = *(v5 + 8);
    v13(v7, v4);
    v13(v10, v4);
    if (v12)
    {
      result = sub_100039F08();
    }

    else
    {
      result = sub_100039EF8();
    }
  }

  else
  {
    result = 0;
  }

  *a2 = v11;
  *(a2 + 8) = result;
  return result;
}

double sub_100013968@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_100001B2C(&qword_10004CED8, &qword_10003CDB0) + 48);
  v5 = type metadata accessor for LoadedView(0);
  v6 = *(a1 + *(v5 + 36));
  sub_1000398B8();
  *(a2 + v4) = 0;
  v7 = enum case for Icon.image(_:);
  v8 = sub_1000398C8();
  (*(*(v8 - 8) + 104))(a2, v7, v8);
  v9 = type metadata accessor for AnnotationPin(0);
  v10 = v9[5];
  v11 = enum case for IconAndPlatter.Shape.circle(_:);
  v12 = sub_100039798();
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  LOBYTE(a1) = *(a1 + *(v5 + 40)) > 1uLL;
  v13 = v9[8];
  *(a2 + v13) = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
  swift_storeEnumTagMultiPayload();
  v14 = a2 + v9[9];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = v9[10];
  *(a2 + v15) = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  swift_storeEnumTagMultiPayload();
  *(a2 + v9[6]) = a1;
  result = 0.0;
  *(a2 + v9[7]) = xmmword_10003CAC0;
  return result;
}

void sub_100013B30(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v73 = a2;
  v76 = a1;
  *&v75 = type metadata accessor for LoadedView(0);
  v66 = *(v75 - 8);
  __chkstk_darwin(v75);
  v67 = v3;
  v68 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100039CE8();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100001B2C(&qword_10004CE88, &qword_10003CD30);
  __chkstk_darwin(v64);
  v71 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v60 - v7;
  v8 = sub_100001B2C(&qword_10004CE90, &qword_10003CD38);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v60 - v10;
  v12 = sub_10003A458();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  v19 = sub_100001B2C(&qword_10004CE98, &qword_10003CD40);
  __chkstk_darwin(v19 - 8);
  v69 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v60 - v22;
  sub_10003A7A8();
  v65 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000125BC(v18);
  sub_10003A448();
  v24 = sub_10003A438();
  v25 = *(v13 + 8);
  v25(v15, v12);
  v25(v18, v12);
  if (v24)
  {
    sub_10003A428();
    v27 = v26;
    v29 = v28;
    v30 = &v11[*(sub_100001B2C(&qword_10004CEB8, &qword_10003CD90) + 36)];
    v31 = v73;
    sub_100009AB0(v73, v30, &qword_10004CE70, &qword_10003CCE8);
    v32 = (v30 + *(sub_100001B2C(&qword_10004CEC0, &qword_10003CD98) + 36));
    *v32 = vdupq_n_s64(0x3FF6666666666666uLL);
    v32[1].i64[0] = v27;
    v32[1].i64[1] = v29;
    v33 = sub_10003A3D8();
    v35 = v34;
    v36 = (v30 + *(sub_100001B2C(&qword_10004CEC8, &qword_10003CDA0) + 36));
    *v36 = v33;
    v36[1] = v35;
    sub_100009AB0(v31, v11, &qword_10004CE70, &qword_10003CCE8);
    v37 = &v11[*(v8 + 36)];
    *v37 = 0x4034000000000000;
    v37[8] = 0;
    sub_100017F70(v11, v23);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  (*(v9 + 56))(v23, v38, 1, v8);
  v39 = (v76 + *(v75 + 60));
  v41 = *v39;
  v40 = v39[1];
  LODWORD(v39) = *(v39 + 32);
  v74 = v41;
  v75 = v40;
  if (v39 != 1)
  {
    v42 = v41;

    sub_10003A858();
    v43 = sub_100039F78();
    sub_100039968();

    v44 = v61;
    sub_100039CD8();
    swift_getAtKeyPath();
    v45 = sub_10000D78C(v42, *(&v74 + 1), v75, *(&v75 + 1), 0);
    (*(v62 + 8))(v44, v63, v45);
    v74 = v77;
    v75 = v78;
  }

  v46 = v68;
  sub_100017DE4(v76, v68, type metadata accessor for LoadedView);
  v47 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v48 = swift_allocObject();
  sub_100017088(v46, v48 + v47);
  KeyPath = swift_getKeyPath();
  v50 = v70;
  v51 = &v70[*(v64 + 36)];
  v52 = sub_100001B2C(&qword_10004CEA0, &qword_10003CD48);
  *(v51 + v52[9]) = KeyPath;
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  swift_storeEnumTagMultiPayload();
  *v51 = swift_getKeyPath();
  sub_100001B2C(&qword_10004CEA8, &qword_10003CD80);
  swift_storeEnumTagMultiPayload();
  v53 = (v51 + v52[10]);
  v54 = v75;
  *v53 = v74;
  v53[1] = v54;
  v55 = (v51 + v52[11]);
  *v55 = sub_100017ECC;
  v55[1] = v48;
  sub_100009AB0(v73, v50, &qword_10004CE70, &qword_10003CCE8);
  v56 = v69;
  sub_100009AB0(v23, v69, &qword_10004CE98, &qword_10003CD40);
  v57 = v71;
  sub_100009AB0(v50, v71, &qword_10004CE88, &qword_10003CD30);
  v58 = v72;
  sub_100009AB0(v56, v72, &qword_10004CE98, &qword_10003CD40);
  v59 = sub_100001B2C(&qword_10004CEB0, &qword_10003CD88);
  sub_100009AB0(v57, v58 + *(v59 + 48), &qword_10004CE88, &qword_10003CD30);
  sub_100009B18(v50, &qword_10004CE88, &qword_10003CD30);
  sub_100009B18(v23, &qword_10004CE98, &qword_10003CD40);
  sub_100009B18(v57, &qword_10004CE88, &qword_10003CD30);
  sub_100009B18(v56, &qword_10004CE98, &qword_10003CD40);
}

uint64_t sub_100014340@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t a1@<X8>)@<X8>)
{
  v4 = type metadata accessor for LoadedView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_100017DE4(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LoadedView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_100017088(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a2 = sub_10001A280;
  a2[1] = 0;
  a2[2] = sub_100017FE0;
  a2[3] = v8;
  a2[4] = sub_10001A280;
  a2[5] = 0;
  v9 = sub_100001B2C(&qword_10004CED0, &qword_10003CDA8);
  v10 = *(v9 + 76);
  *(a2 + v10) = swift_getKeyPath();
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  swift_storeEnumTagMultiPayload();
  v11 = a2 + *(v9 + 80);
  result = swift_getKeyPath();
  *v11 = result;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  v11[32] = 0;
  return result;
}

void sub_1000144E4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 16);
  v5 = a1[3];
  v4 = a1[4];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[7];
  v9 = type metadata accessor for LoadedView(0);
  v10 = *(v9 + 24);
  v11 = type metadata accessor for LabelsModule(0);
  sub_100009AB0(a1 + v10, a2 + v11[6], &qword_10004C778, &unk_10003C4D0);
  sub_100009AB0(a1 + *(v9 + 28), a2 + v11[7], &qword_10004C780, "P*");
  *a2 = v18;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
  v12 = v7;
  *(a2 + 40) = v7;
  *(a2 + 48) = v6;
  v13 = v8;
  *(a2 + 56) = v8;
  v14 = v11[8];
  *(a2 + v14) = swift_getKeyPath();
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  swift_storeEnumTagMultiPayload();
  v15 = v11[9];
  *(a2 + v15) = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  swift_storeEnumTagMultiPayload();

  sub_100018048(v4, v12, v6, v13);
}

uint64_t sub_100014688@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100039CE8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_100009AB0(v2 + *(a1 + 36), &v15 - v10, &qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10003A458();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_10003A858();
    v14 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

double sub_10001488C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v36 = a3;
  swift_getWitnessTable();
  v7 = sub_100039EE8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v13);
  v15 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, v4, a2, v14);
  (*(v8 + 16))(v10, a1, v7);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = (v12 + v16 + *(v8 + 80)) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v20 = *(a2 + 16);
  v35 = *(a2 + 24);
  v19 = v35;
  *(v18 + 16) = v20;
  *(v18 + 24) = v19;
  v21 = v18 + v16;
  v22 = v18;
  (*(v11 + 32))(v21, v15, a2);
  (*(v8 + 32))(v22 + v17, v10, v7);
  sub_100039F28();
  sub_100039B68();
  sub_100039B68();
  v34 = sub_10003A118();
  sub_100001B74(&qword_10004CF70, &qword_10003CE60);
  sub_100039B68();
  WitnessTable = swift_getWitnessTable();
  v45 = v7;
  v46 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v24 = sub_100039EB8();
  v25 = sub_1000073FC(&qword_10004CF78, &qword_10004CF70, &qword_10003CE60, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
  v51 = WitnessTable;
  v52 = v25;
  v26 = swift_getWitnessTable();
  v45 = v7;
  v46 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v26;
  v50 = OpaqueTypeConformance2;
  v28 = swift_getWitnessTable();
  v45 = v34;
  v46 = v24;
  v47 = &protocol witness table for Text.LayoutKey;
  v48 = v28;
  sub_100039F58();
  sub_100039B68();
  v29 = sub_100018930(&qword_10004CF80, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  v43 = v35;
  v44 = v29;
  v41 = swift_getWitnessTable();
  v42 = &protocol witness table for _OpacityEffect;
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v39 = v30;
  v40 = v31;
  swift_getWitnessTable();
  v37 = sub_100039A88();
  v38 = v32;
  sub_100039A98();
  swift_getWitnessTable();
  sub_10000DD48();

  v37 = v45;
  v38 = v46;
  sub_10000DD48();

  return result;
}

double sub_100014D78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a3;
  v80 = a2;
  v78 = a1;
  v84 = a6;
  v83 = a5;
  v7 = type metadata accessor for LoadedView.OverlayBlur(255, a4, a5, a4);
  swift_getWitnessTable();
  v8 = sub_100039EE8();
  v82 = *(v8 - 8);
  v77 = *(v82 + 64);
  __chkstk_darwin(v8);
  v89 = v58 - v9;
  v85 = v7;
  v79 = *(v7 - 8);
  v74 = *(v79 + 64);
  __chkstk_darwin(v10);
  v88 = v58 - v11;
  v75 = sub_100039A68();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v70 = v12;
  v87 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(a4 - 8);
  __chkstk_darwin(v13);
  v62 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039F28();
  v90 = a4;
  v15 = sub_100039B68();
  v67 = *(v15 - 8);
  __chkstk_darwin(v15);
  v63 = v58 - v16;
  v17 = sub_100039B68();
  v71 = *(v17 - 8);
  __chkstk_darwin(v17);
  v86 = v58 - v18;
  v19 = sub_10003A118();
  sub_100001B74(&qword_10004CF70, &qword_10003CE60);
  sub_100039B68();
  WitnessTable = swift_getWitnessTable();
  v97 = v8;
  v98 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v21 = sub_100039EB8();
  v22 = sub_1000073FC(&qword_10004CF78, &qword_10004CF70, &qword_10003CE60, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
  v103 = WitnessTable;
  v104 = v22;
  v23 = swift_getWitnessTable();
  v76 = v8;
  v97 = v8;
  v98 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v101 = v23;
  v102 = OpaqueTypeConformance2;
  v25 = swift_getWitnessTable();
  v69 = v19;
  v97 = v19;
  v98 = v21;
  v68 = v21;
  v99 = &protocol witness table for Text.LayoutKey;
  v100 = v25;
  v58[1] = v25;
  v26 = sub_100039F58();
  v72 = v17;
  v60 = v26;
  v66 = sub_100039B68();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v59 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v61 = v58 - v29;
  sub_10003A7A8();
  v58[2] = sub_10003A798();
  sub_10003A758();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v31 = v85;
  v32 = v80;
  v33 = v62;
  (*(v80 + *(v85 + 44)))(isCurrentExecutor);
  v34 = v63;
  v35 = v90;
  v36 = v83;
  sub_1000157D0(v90, v83, *(v32 + *(v31 + 40)), *(v32 + *(v31 + 40) + 8), *(v32 + *(v31 + 40) + 16), *(v32 + *(v31 + 40) + 24));
  (v64)[1](v33, v35);
  v37 = sub_100018930(&qword_10004CF80, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  v95 = v36;
  v96 = v37;
  v64 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v62 = swift_getWitnessTable();
  sub_10003A1F8();
  (*(v67 + 8))(v34, v15);
  v67 = sub_10003A3D8();
  v63 = v38;
  v39 = v73;
  v40 = v75;
  (*(v73 + 16))(v87, v78, v75);
  v41 = v79;
  (*(v79 + 16))(v88, v32, v31);
  v42 = v82;
  v43 = v76;
  (*(v82 + 16))(v89, v81, v76);
  v44 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v45 = v36;
  v46 = (v70 + *(v41 + 80) + v44) & ~*(v41 + 80);
  v47 = (v74 + *(v42 + 80) + v46) & ~*(v42 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v90;
  *(v48 + 24) = v45;
  (*(v39 + 32))(v48 + v44, v87, v40);
  (*(v41 + 32))(v48 + v46, v88, v85);
  (*(v42 + 32))(v48 + v47, v89, v43);
  v93 = v62;
  v94 = &protocol witness table for _OpacityEffect;
  v49 = v72;
  v50 = swift_getWitnessTable();
  v51 = v59;
  v52 = v86;
  sub_10003A1C8();

  (*(v71 + 8))(v52, v49);
  v53 = swift_getWitnessTable();
  v91 = v50;
  v92 = v53;
  v54 = v66;
  swift_getWitnessTable();
  v55 = v61;
  sub_10000DD48();
  v56 = *(v65 + 8);
  v56(v51, v54);
  sub_10000DD48();
  v56(v55, v54);

  return result;
}

uint64_t sub_1000157D0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v10 = sub_100039F28();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039F98();
  *&v15[1] = a3;
  *&v15[2] = a4;
  *&v15[3] = a5;
  *&v15[4] = a6;
  v16 = 0;
  sub_100039F18();
  sub_10003A218();
  return (*(v11 + 8))(v13, v10);
}

void sub_1000158FC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v66 = a4;
  v65 = a3;
  v63 = a2;
  v73 = a7;
  v61 = a5;
  v62 = a6;
  v8 = type metadata accessor for LoadedView.OverlayBlur(255, a5, a6, a4);
  swift_getWitnessTable();
  v64 = v8;
  v9 = sub_100039EE8();
  *&v88[0] = v9;
  *(&v88[0] + 1) = swift_getWitnessTable();
  v72 = *(&v88[0] + 1);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v58 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v57 = &v53 - v13;
  sub_100001B74(&qword_10004CF70, &qword_10003CE60);
  v74 = v9;
  v14 = sub_100039B68();
  v56 = *(v14 - 8);
  __chkstk_darwin(v14);
  v55 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v54 = &v53 - v17;
  v60 = sub_10003A458();
  v18 = *(v60 - 8);
  __chkstk_darwin(v60);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v71 = OpaqueTypeMetadata2;
  v70 = sub_100039EB8();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v53 - v24;
  v25 = sub_100039D38();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  sub_10003A7A8();
  v67 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000162EC(v29, v63, v65, v61, v62, &v85);
  sub_100039A58();
  v30 = swift_allocObject();
  v31 = v86;
  *(v30 + 16) = v85;
  *(v30 + 32) = v31;
  *(v30 + 48) = v87;
  (*(v26 + 104))(v28, enum case for ColorRenderingMode.nonLinear(_:), v25);
  v88[0] = v85;
  v88[1] = v86;
  v89 = v87;
  sub_100018E4C(v88, &v83);
  sub_10003A2E8();
  sub_100014688(v64, v23);
  sub_10003A448();
  v32 = sub_10003A438();
  v33 = *(v18 + 8);
  v34 = v20;
  v35 = v60;
  v33(v34, v60);
  v33(v23, v35);
  if (v32)
  {
    sub_10003A3D8();
    v36 = v55;
    v37 = v74;
    v38 = v72;
    sub_10003A138();
    v39 = sub_1000073FC(&qword_10004CF78, &qword_10004CF70, &qword_10003CE60, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    v75 = v38;
    v76 = v39;
    swift_getWitnessTable();
    v40 = v54;
    sub_10000DD48();
    v41 = *(v56 + 8);
    v41(v36, v14);
    sub_10000DD48();
    v83 = v37;
    v84 = v38;
    swift_getOpaqueTypeConformance2();
    v42 = v68;
    sub_10000A540(v36, v14);

    sub_100018EA8(&v85);
    v41(v36, v14);
    v41(v40, v14);
  }

  else
  {
    v43 = v58;
    v44 = v74;
    v38 = v72;
    sub_10003A188();
    v83 = v44;
    v84 = v38;
    swift_getOpaqueTypeConformance2();
    v45 = v57;
    v46 = v71;
    sub_10000DD48();
    v47 = *(v59 + 8);
    v47(v43, v46);
    sub_10000DD48();
    v48 = sub_1000073FC(&qword_10004CF78, &qword_10004CF70, &qword_10003CE60, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    v81 = v38;
    v82 = v48;
    swift_getWitnessTable();
    v42 = v68;
    sub_10000A638(v43, v14, v46);

    sub_100018EA8(&v85);
    v47(v43, v46);
    v47(v45, v46);
  }

  v49 = sub_1000073FC(&qword_10004CF78, &qword_10004CF70, &qword_10003CE60, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
  v79 = v38;
  v80 = v49;
  WitnessTable = swift_getWitnessTable();
  v83 = v74;
  v84 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = WitnessTable;
  v78 = OpaqueTypeConformance2;
  v52 = v70;
  swift_getWitnessTable();
  sub_10000DD48();
  (*(v69 + 8))(v42, v52);
}

void sub_1000162EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a2;
  v10 = sub_100016820(sub_100018F08, v64, a1);
  v61 = a4;
  v62 = a5;
  v63 = a3;
  sub_1000124A8(sub_100018F24, v60, v10);
  v12 = v11;

  if (!*(v12 + 16))
  {

    sub_10003A018();
    v46 = v73;
    v45 = v74;
    v48 = v75;
    v47 = v76;
    v49 = v77;
LABEL_30:
    *a6 = v46;
    *(a6 + 8) = v45;
    *(a6 + 16) = v48;
    *(a6 + 24) = v47;
    *(a6 + 32) = v49;
    return;
  }

  v73 = v12;

  sub_100018F48(&v73);
  v55 = a6;

  v13 = v73;
  v14 = *(v73 + 2);
  if (!v14)
  {

    v16 = _swiftEmptyArrayStorage;
LABEL_26:
    sub_10003A018();
    v46 = v66;
    v45 = v67;
    v48 = v68;
    v47 = v69;
    v49 = v70;
    v50 = *(v16 + 2);
    if (v50)
    {
      v51 = v16 + 56;
      do
      {
        rectb = v49;
        v56 = v47;
        v52 = v48;
        v53 = v45;
        v54 = v46;
        v73 = v46;
        v74 = v45;
        v75 = v48;
        v76 = v47;
        v77 = v49;
        sub_10003A028();
        sub_10003A008();
        v46 = v71[5];
        v45 = v71[6];
        v48 = v71[7];
        v47 = v71[8];
        v49 = v72;
        sub_100018EA8(v71);
        sub_100018E2C(v54, v53, v52, v56, rectb);
        v51 += 32;
        --v50;
      }

      while (v50);
    }

    a6 = v55;
    goto LABEL_30;
  }

  v73 = _swiftEmptyArrayStorage;

  sub_100025E04(0, v14, 0);
  v15 = *(v13 + 2);
  v16 = v73;
  sub_10003A7A8();
  v17 = 0;
  v18 = (v13 + 48);
  while (v15 != v17)
  {
    if (v17 >= *(v13 + 2))
    {
      goto LABEL_32;
    }

    v20 = *(v18 - 2);
    v19 = *(v18 - 1);
    v21 = *v18;
    v22 = v18[1];
    sub_10003A798();
    sub_10003A758();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v17)
    {
      if (v17 > *(v13 + 2))
      {
        goto LABEL_33;
      }

      v23 = *(v18 - 6);
      v24 = *(v18 - 5);
      v25 = *(v18 - 4);
      recta = *(v18 - 3);
      v78.origin.x = v20;
      v78.origin.y = v19;
      v78.size.width = v21;
      v78.size.height = v22;
      MinY = CGRectGetMinY(v78);
      v79.origin.x = v23;
      v79.origin.y = v24;
      v79.size.width = v25;
      v79.size.height = recta;
      MaxY = CGRectGetMaxY(v79);
      if (MaxY < MinY)
      {
        MinY = MaxY;
      }

      v80.origin.x = v20;
      v80.origin.y = v19;
      v80.size.width = v21;
      v80.size.height = v22;
      v28 = CGRectGetMaxY(v80);
      v81.origin.x = v20;
      v81.origin.y = MinY;
      v81.size.width = v21;
      v81.size.height = v22;
      v22 = v28 - CGRectGetMinY(v81);
      v19 = MinY;
    }

    v29 = v17 + 1;
    if (v17 >= v15 - 1)
    {

      v30 = v16;
    }

    else
    {
      if (v29 >= *(v13 + 2))
      {
        goto LABEL_34;
      }

      v30 = v16;
      v31 = v18[2];
      v32 = v18[3];
      v33 = v18[4];
      v34 = v18[5];
      v82.origin.x = v20;
      v82.origin.y = v19;
      v82.size.width = v21;
      v82.size.height = v22;
      rect = v22;
      v35 = v19;
      v36 = v21;
      v37 = v20;
      v38 = CGRectGetMaxY(v82);
      v83.origin.x = v31;
      v83.origin.y = v32;
      v83.size.width = v33;
      v83.size.height = v34;
      v39 = CGRectGetMinY(v83);
      if (v38 > v39)
      {
        v40 = v38;
      }

      else
      {
        v40 = v39;
      }

      v20 = v37;
      v21 = v36;
      v19 = v35;
      v84.origin.x = v20;
      v84.origin.y = v35;
      v84.size.width = v21;
      v84.size.height = rect;
      v41 = CGRectGetMinY(v84);

      v22 = v40 - v41;
    }

    v73 = v30;
    v43 = *(v30 + 2);
    v42 = *(v30 + 3);
    if (v43 >= v42 >> 1)
    {
      sub_100025E04((v42 > 1), v43 + 1, 1);
      v30 = v73;
    }

    *(v30 + 2) = v43 + 1;
    v16 = v30;
    v44 = &v30[32 * v43];
    v44[4] = v20;
    v44[5] = v19;
    v44[6] = v21;
    v44[7] = v22;
    v18 += 4;
    v17 = v29;
    if (v14 == v29)
    {

      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);

  __break(1u);
}

void sub_100016760(void *a1@<X8>)
{
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1000032A4();

  *a1 = v2;
}

char *sub_100016820(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(sub_10003A108() - 8);
  v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v19 = *(v6 + 72);
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    result = a1(&v21, v7);
    if (v3)
    {

      return v8;
    }

    v10 = v21;
    v11 = *(v21 + 16);
    v12 = *(v8 + 2);
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v13 <= *(v8 + 3) >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v14 = v12 + v11;
      }

      else
      {
        v14 = v12;
      }

      result = sub_10002AB0C(result, v14, 1, v8);
      v8 = result;
      if (*(v10 + 16))
      {
LABEL_15:
        v15 = *(v8 + 2);
        if ((*(v8 + 3) >> 1) - v15 < v11)
        {
          goto LABEL_24;
        }

        memcpy(&v8[32 * v15 + 32], (v10 + 32), 32 * v11);

        if (v11)
        {
          v16 = *(v8 + 2);
          v17 = __OFADD__(v16, v11);
          v18 = v16 + v11;
          if (v17)
          {
            goto LABEL_25;
          }

          *(v8 + 2) = v18;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v7 += v19;
    if (!--v4)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1000169E8(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for LoadedView.OverlayBlur(0, a2, a3, v11);
  v12 = sub_100016B24(v7, v8, v9, v10);
  v14 = v13;

  *a4 = sub_100019F40(v7, v8, v9, v10, v12, v14);
  *(a4 + 8) = v15;
  *(a4 + 16) = v16;
  *(a4 + 24) = v17;
}

CGFloat sub_100016B24(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_100039B58();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  v15 = CGRectGetHeight(v22) * -0.6;
  v21 = &type metadata accessor for LayoutDirection;
  sub_1000176D8(&qword_10004CEA8, &qword_10003CD80, &type metadata accessor for LayoutDirection, v14);
  v16 = enum case for LayoutDirection.leftToRight(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LayoutDirection.leftToRight(_:), v8);
  sub_100039B48();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  sub_1000176D8(&qword_10004CEA8, &qword_10003CD80, v21, v14);
  v17(v11, v16, v8);
  sub_100039B48();
  v18(v11, v8);
  v18(v14, v8);
  return v15;
}

double sub_100016D74(uint64_t *a1, uint64_t a2)
{
  v17 = a2;
  v14 = a1;
  v16 = sub_10003A238();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100039B28();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100039B08();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100039AF8();
  sub_100039B38();
  (*(v9 + 8))(v11, v8);
  v12 = v16;
  (*(v2 + 104))(v4, enum case for Color.RGBColorSpace.sRGB(_:), v16);
  sub_100039B18();
  (*(v2 + 8))(v4, v12);
  sub_100039AE8();
  (*(v5 + 8))(v7, v15);

  return result;
}

double sub_10001707C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100017088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoadedView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000170EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoadedView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000137F0(v4, a1);
}

uint64_t sub_10001715C()
{
  v1 = type metadata accessor for LoadedView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 40))
  {
  }

  v3 = v1[6];
  v4 = sub_100039128();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = v1[7];
  v7 = sub_100039398();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v10 = (v2 + v1[9]);

  v11 = *(type metadata accessor for LoadedView.Callout(0) + 20);
  if (!v9(v10 + v11, 1, v7))
  {
    (*(v8 + 8))(v10 + v11, v7);
  }

  v12 = *(v2 + v1[10]);
  if (v12 >= 2)
  {
  }

  v13 = v1[12];
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10003A4A8();
    (*(*(v14 - 8) + 8))(v2 + v13, v14);
  }

  else
  {
  }

  v15 = v1[13];
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_10003A458();
    (*(*(v16 - 8) + 8))(v2 + v15, v16);
  }

  else
  {
  }

  sub_10001707C(*(v2 + v1[14]), *(v2 + v1[14] + 8), *(v2 + v1[14] + 16));
  v17 = v2 + v1[15];
  sub_10000D78C(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32));
  v18 = v1[16];
  sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_1000399C8();
    (*(*(v19 - 8) + 8))(v2 + v18, v19);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000175B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1000176D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_100039CE8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001B2C(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100009AB0(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_10003A858();
    v19 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

void sub_100017948(void *a1@<X8>)
{
  sub_100039CA8();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

void sub_100017978(void *a1@<X8>)
{
  sub_100039CA8();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

unint64_t sub_1000179B0()
{
  result = qword_10004CE00;
  if (!qword_10004CE00)
  {
    sub_100001B74(&qword_10004CDF0, &qword_10003CC38);
    sub_100017A68();
    sub_1000073FC(&qword_10004CB40, &qword_10004CB48, &qword_10003C7D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004CE00);
  }

  return result;
}

unint64_t sub_100017A68()
{
  result = qword_10004CE08;
  if (!qword_10004CE08)
  {
    sub_100001B74(&qword_10004CE10, &qword_10003CC40);
    sub_100017B20();
    sub_1000073FC(&qword_10004CE50, &qword_10004CE58, &unk_10003CC60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004CE08);
  }

  return result;
}

unint64_t sub_100017B20()
{
  result = qword_10004CE18;
  if (!qword_10004CE18)
  {
    sub_100001B74(&qword_10004CE20, &qword_10003CC48);
    sub_100017BDC();
    sub_100018930(&qword_10004CE48, type metadata accessor for WidgetGridBackground, &unk_10003D4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004CE18);
  }

  return result;
}

unint64_t sub_100017BDC()
{
  result = qword_10004CE28;
  if (!qword_10004CE28)
  {
    sub_100001B74(&qword_10004CE30, &qword_10003CC50);
    sub_1000073FC(&qword_10004CE38, &qword_10004CE40, &qword_10003CC58, &protocol conformance descriptor for ZStack<A>);
    sub_100018930(&qword_10004CB38, type metadata accessor for WidgetBlurBackground, &unk_10003D138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004CE28);
  }

  return result;
}

uint64_t sub_100017CC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100039BE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100017DE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100017E4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_100017EAC(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_100017EBC(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_100017EE4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LoadedView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100017F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004CE90, &qword_10003CD38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100018048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_1000180C0(uint64_t a1)
{
  sub_100018448(319, &qword_10004CF68, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100018448(319, &qword_10004C670, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10000A1F0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000181D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001B2C(qword_10004CEE0, &qword_10003CDE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001B2C(&qword_10004C5F0, "r%");
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100018310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001B2C(qword_10004CEE0, &qword_10003CDE8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100001B2C(&qword_10004C5F0, "r%");
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100018448(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000184AC()
{
  sub_100001B74(&qword_10004CDE8, &qword_10003CBC8);
  sub_100001B74(&qword_10004CDF0, &qword_10003CC38);
  sub_1000073FC(&qword_10004CDF8, &qword_10004CDE8, &qword_10003CBC8, &unk_10003C6D8);
  sub_1000179B0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000185AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LoadedView.OverlayBlur(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v14 = *(*(v5 - 8) + 64);
  swift_getWitnessTable();
  v7 = sub_100039EE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  sub_100001B2C(&qword_10004CEA8, &qword_10003CD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_100039B58();
    (*(*(v10 - 8) + 8))(v4 + v6, v10);
  }

  else
  {
  }

  v11 = *(v5 + 36);
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10003A458();
    (*(*(v12 - 8) + 8))(v4 + v6 + v11, v12);
  }

  else
  {
  }

  (*(v8 + 8))(v4 + ((v6 + v14 + v9) & ~v9), v7);

  return swift_deallocObject();
}

double sub_100018804@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for LoadedView.OverlayBlur(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  swift_getWitnessTable();
  v11 = *(sub_100039EE8() - 8);
  v12 = v3 + ((v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_100014D78(a1, v3 + v9, v12, v6, v7, a3);
}

uint64_t sub_100018930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100018978()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_100039A68();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v8 = type metadata accessor for LoadedView.OverlayBlur(0, v1, v2, v7);
  v9 = *(*(v8 - 8) + 80);
  v10 = (v6 + v9) & ~v9;
  v18 = *(*(v8 - 8) + 64);
  swift_getWitnessTable();
  v17 = sub_100039EE8();
  v11 = *(v17 - 8);
  v12 = *(v11 + 80);
  (*(v4 + 8))(v0 + v5, v3);
  sub_100001B2C(&qword_10004CEA8, &qword_10003CD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100039B58();
    (*(*(v13 - 8) + 8))(v0 + v10, v13);
  }

  else
  {
  }

  v14 = *(v8 + 36);
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_10003A458();
    (*(*(v15 - 8) + 8))(v0 + v10 + v14, v15);
  }

  else
  {
  }

  (*(v11 + 8))(v0 + ((v10 + v18 + v12) & ~v12), v17);

  return swift_deallocObject();
}

void sub_100018C5C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_100039A68() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v11 = *(type metadata accessor for LoadedView.OverlayBlur(0, v5, v6, v10) - 8);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v12 + *(v11 + 64);
  swift_getWitnessTable();
  v14 = *(sub_100039EE8() - 8);
  v15 = v2 + ((v13 + *(v14 + 80)) & ~*(v14 + 80));

  sub_1000158FC(a1, v2 + v8, v2 + v12, v15, v5, v6, a2);
}

uint64_t sub_100018DEC()
{
  sub_100018E2C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

double sub_100018E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

void sub_100018F48(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100019F28(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = v2 + 32;
  v4[1] = v3;
  sub_100018FB4(v4);
  *a1 = v2;
}

void sub_100018FB4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_10003A978(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CGRect(0);
        v5 = sub_10003A748();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100019228(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1000190B0(0, v2, 1, a1);
  }
}

void sub_1000190B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    sub_10003A7A8();
    v7 = v6 + 32 * v4 - 32;
    v8 = a1 - v4;
LABEL_5:
    v9 = (v6 + 32 * v4);
    v11 = *v9;
    v10 = v9[1];
    v21 = v8;
    v22 = v7;
    while (1)
    {
      v23 = v11;
      v24 = v10;
      v12 = *v7;
      v13 = *(v7 + 8);
      v14 = *(v7 + 16);
      v15 = *(v7 + 24);
      sub_10003A798();
      sub_10003A758();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      *&v25.origin.x = v23;
      *&v25.size.width = v24;
      v25.origin.y = *(&v23 + 1);
      v25.size.height = *(&v24 + 1);
      MinY = CGRectGetMinY(v25);
      v26.origin.x = v12;
      v26.origin.y = v13;
      v26.size.width = v14;
      v26.size.height = v15;
      v17 = CGRectGetMinY(v26);

      if (MinY >= v17)
      {
LABEL_4:
        ++v4;
        v7 = v22 + 32;
        v8 = v21 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v7 + 32);
      v10 = *(v7 + 48);
      v18 = *(v7 + 16);
      *(v7 + 32) = *v7;
      *(v7 + 48) = v18;
      *v7 = v11;
      *(v7 + 16) = v10;
      v7 -= 32;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100019228(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = *(a3 + 1);
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_94:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v9 = sub_100019E10(v9);
    }

    v111 = *(v9 + 2);
    if (v111 >= 2)
    {
      while (*v6)
      {
        v112 = *&v9[16 * v111];
        v113 = *&v9[16 * v111 + 24];
        sub_100019A14((*v6 + 32 * v112), (*v6 + 32 * *&v9[16 * v111 + 16]), (*v6 + 32 * v113), v8);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100019E10(v9);
        }

        if (v111 - 2 >= *(v9 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v9[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        sub_100019D84(v111 - 1);
        v111 = *(v9 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v125 = v7;
      v116 = v9;
      v118 = v5;
      v11 = *v6;
      v12 = *v6 + 32 * v8;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = *v6 + 32 * v10;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v5 = sub_10003A7A8();
      sub_10003A798();
      sub_10003A758();
      v8 = v22;
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v131.origin.x = v13;
      v131.origin.y = v14;
      v131.size.width = v15;
      v131.size.height = v16;
      MinY = CGRectGetMinY(v131);
      v132.origin.x = v18;
      v132.origin.y = v19;
      v132.size.width = v20;
      v132.size.height = v21;
      v127 = CGRectGetMinY(v132);

      v23 = 0;
      v24 = v10 + 2;
      v120 = v10;
      v6 = (32 * v10);
      v25 = v11 + 32 * v10 + 48;
      v26 = v6;
      do
      {
        v29 = v23;
        v9 = v26;
        v30 = v24;
        if (v24 >= v125)
        {
          break;
        }

        v31 = *(v25 + 16);
        v32 = *(v25 + 24);
        v33 = *(v25 + 32);
        v34 = *(v25 + 40);
        v35 = *(v25 - 16);
        v36 = *(v25 - 8);
        v37 = *v25;
        v38 = *(v25 + 8);
        sub_10003A798();
        v8 = sub_10003A758();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v5 = MinY < v127;
        v133.origin.x = v31;
        v133.origin.y = v32;
        v133.size.width = v33;
        v133.size.height = v34;
        v27 = CGRectGetMinY(v133);
        v134.origin.x = v35;
        v134.origin.y = v36;
        v134.size.width = v37;
        v134.size.height = v38;
        v28 = CGRectGetMinY(v134);

        v24 = v30 + 1;
        v25 += 32;
        v23 = v29 + 1;
        v26 = v9 + 32;
      }

      while (MinY < v127 != v27 >= v28);
      if (MinY >= v127)
      {
        v9 = v116;
        v5 = v118;
        v6 = a3;
        v8 = v30;
        v10 = v120;
      }

      else
      {
        v10 = v120;
        if (v30 < v120)
        {
          goto LABEL_123;
        }

        v8 = v30;
        if (v120 < v30)
        {
          v39 = 0;
          do
          {
            if (v120 + v39 != v120 + v29 + 1)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v40 = &v6[v45];
              v41 = &v9[v45];
              v42 = *v40;
              v43 = *(v40 + 1);
              v44 = *(v41 + 3);
              *v40 = *(v41 + 2);
              *(v40 + 1) = v44;
              *(v41 + 2) = v42;
              *(v41 + 3) = v43;
            }

            --v29;
            ++v39;
            v9 -= 32;
            v6 += 32;
          }

          while (v39 + v120 < v120 + v29 + 2);
        }

        v9 = v116;
        v5 = v118;
        v6 = a3;
      }
    }

    v46 = *(v6 + 1);
    if (v8 < v46)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_122;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_124;
        }

        if (v10 + a4 >= v46)
        {
          v47 = *(v6 + 1);
        }

        else
        {
          v47 = v10 + a4;
        }

        if (v47 < v10)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v8 != v47)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v8 < v10)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100019E24(0, *(v9 + 2) + 1, 1, v9);
    }

    v65 = *(v9 + 2);
    v64 = *(v9 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      v9 = sub_100019E24((v64 > 1), v65 + 1, 1, v9);
    }

    *(v9 + 2) = v66;
    v67 = &v9[16 * v65];
    *(v67 + 4) = v10;
    *(v67 + 5) = v8;
    v68 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v65)
    {
      while (1)
      {
        v69 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v70 = *(v9 + 4);
          v71 = *(v9 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_63:
          if (v73)
          {
            goto LABEL_110;
          }

          v86 = &v9[16 * v66];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_113;
          }

          v92 = &v9[16 * v69 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_117;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v69 = v66 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v96 = &v9[16 * v66];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_77:
        if (v91)
        {
          goto LABEL_112;
        }

        v99 = &v9[16 * v69];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_115;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_84:
        v107 = v69 - 1;
        if (v69 - 1 >= v66)
        {
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
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v6)
        {
          goto LABEL_128;
        }

        v108 = *&v9[16 * v107 + 32];
        v109 = *&v9[16 * v69 + 40];
        sub_100019A14((*v6 + 32 * v108), (*v6 + 32 * *&v9[16 * v69 + 32]), (*v6 + 32 * v109), v68);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v109 < v108)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100019E10(v9);
        }

        if (v107 >= *(v9 + 2))
        {
          goto LABEL_107;
        }

        v110 = &v9[16 * v107];
        *(v110 + 4) = v108;
        *(v110 + 5) = v109;
        sub_100019D84(v69);
        v66 = *(v9 + 2);
        if (v66 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v9[16 * v66 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_108;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_109;
      }

      v81 = &v9[16 * v66];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_111;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_114;
      }

      if (v85 >= v77)
      {
        v103 = &v9[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_118;
        }

        if (v72 < v106)
        {
          v69 = v66 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = *(v6 + 1);
    if (v8 >= v7)
    {
      goto LABEL_94;
    }
  }

  v117 = v9;
  v119 = v5;
  v48 = *v6;
  sub_10003A7A8();
  v49 = v48 + 32 * v8 - 32;
  v121 = v10;
  v50 = v10 - v8;
  v124 = v47;
LABEL_34:
  v126 = v8;
  v51 = (v48 + 32 * v8);
  v53 = *v51;
  v52 = v51[1];
  v54 = v50;
  v55 = v49;
  while (1)
  {
    v128 = v53;
    v130 = v52;
    v56 = *v55;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    v59 = *(v55 + 24);
    sub_10003A798();
    sub_10003A758();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    *&v135.origin.x = v128;
    *&v135.size.width = v130;
    v135.origin.y = *(&v128 + 1);
    v135.size.height = *(&v130 + 1);
    v60 = CGRectGetMinY(v135);
    v136.origin.x = v56;
    v136.origin.y = v57;
    v136.size.width = v58;
    v136.size.height = v59;
    v61 = CGRectGetMinY(v136);

    if (v60 >= v61)
    {
LABEL_33:
      ++v8;
      v49 += 32;
      --v50;
      if (v126 + 1 != v124)
      {
        goto LABEL_34;
      }

      v8 = v124;
      v9 = v117;
      v5 = v119;
      v6 = a3;
      v10 = v121;
      goto LABEL_43;
    }

    if (!v48)
    {
      break;
    }

    v53 = *(v55 + 32);
    v52 = *(v55 + 48);
    v62 = *(v55 + 16);
    *(v55 + 32) = *v55;
    *(v55 + 48) = v62;
    *v55 = v53;
    *(v55 + 16) = v52;
    v55 -= 32;
    if (__CFADD__(v54++, 1))
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_100019A14(double *__dst, double *__src, char *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (a4 != __src || &__src[4 * v13] <= a4)
    {
      memmove(a4, __src, 32 * v13);
    }

    v14 = &v4[4 * v13];
    if (v11 >= 32 && v6 > v7)
    {
      sub_10003A7A8();
LABEL_29:
      v43 = v6 - 4;
      v5 -= 32;
      v28 = v14;
      do
      {
        v29 = *(v28 - 32);
        v30 = *(v28 - 24);
        v28 -= 32;
        v31 = *(v28 + 16);
        v32 = *(v28 + 24);
        v33 = *(v6 - 4);
        v34 = *(v6 - 3);
        v35 = *(v6 - 2);
        v36 = *(v6 - 1);
        sub_10003A798();
        sub_10003A758();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v46.origin.x = v29;
        v46.origin.y = v30;
        v46.size.width = v31;
        v46.size.height = v32;
        MinY = CGRectGetMinY(v46);
        v47.origin.x = v33;
        v47.origin.y = v34;
        v47.size.width = v35;
        v47.size.height = v36;
        v38 = CGRectGetMinY(v47);

        v39 = (v5 + 32);
        if (MinY < v38)
        {
          if (v39 != v6)
          {
            v41 = *(v6 - 1);
            *v5 = *v43;
            *(v5 + 1) = v41;
          }

          if (v14 <= v4 || (v6 -= 4, v43 <= v7))
          {
            v6 = v43;
            goto LABEL_42;
          }

          goto LABEL_29;
        }

        if (v39 != v14)
        {
          v40 = *(v28 + 16);
          *v5 = *v28;
          *(v5 + 1) = v40;
        }

        v5 -= 32;
        v14 = v28;
      }

      while (v28 > v4);
      v14 = v28;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      sub_10003A7A8();
      while (1)
      {
        v15 = *v6;
        v16 = v6[1];
        v17 = v6[2];
        v18 = v6[3];
        v19 = *v4;
        v20 = v4[1];
        v21 = v4[2];
        v22 = v4[3];
        sub_10003A798();
        sub_10003A758();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v44.origin.x = v15;
        v44.origin.y = v16;
        v44.size.width = v17;
        v44.size.height = v18;
        v23 = CGRectGetMinY(v44);
        v45.origin.x = v19;
        v45.origin.y = v20;
        v45.size.width = v21;
        v45.size.height = v22;
        v24 = CGRectGetMinY(v45);

        if (v23 >= v24)
        {
          break;
        }

        v25 = v6;
        v26 = v7 == v6;
        v6 += 4;
        if (!v26)
        {
          goto LABEL_19;
        }

LABEL_20:
        v7 += 4;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_22;
        }
      }

      v25 = v4;
      v26 = v7 == v4;
      v4 += 4;
      if (v26)
      {
        goto LABEL_20;
      }

LABEL_19:
      v27 = *(v25 + 1);
      *v7 = *v25;
      *(v7 + 1) = v27;
      goto LABEL_20;
    }

LABEL_22:
    v6 = v7;
  }

LABEL_42:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_100019D84(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100019E10(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100019E24(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B2C(&qword_10004CF88, &qword_10003CE68);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_100019F8C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_100039F28();
  sub_100039B68();
  sub_100039B68();
  sub_10003A118();
  type metadata accessor for LoadedView.OverlayBlur(255, v2, v1, v3);
  swift_getWitnessTable();
  sub_100039EE8();
  sub_100001B74(&qword_10004CF70, &qword_10003CE60);
  sub_100039B68();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_100039EB8();
  sub_1000073FC(&qword_10004CF78, &qword_10004CF70, &qword_10003CE60, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_100039F58();
  sub_100039B68();
  sub_100018930(&qword_10004CF80, &type metadata accessor for SafeAreaPaddingModifier, &protocol conformance descriptor for SafeAreaPaddingModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100039A98();
  return swift_getWitnessTable();
}

uint64_t sub_10001A29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100001B2C(&qword_10004C5F0, "r%");
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10001A414(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100001B2C(&qword_10004C5F0, "r%");
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for PlaceholderView(uint64_t a1)
{
  result = qword_10004CFE8;
  if (!qword_10004CFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001A5D0(uint64_t a1)
{
  sub_10001A6C0(319, &qword_10004C810, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    sub_10001A6C0(319, &qword_10004C660, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_10001A6C0(319, &qword_10004C670, &type metadata accessor for WidgetRenderingMode);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001A6C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000399D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10001A730()
{
  v0 = sub_10003A4A8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v9 - v5;
  sub_1000176B0((v9 - v5));
  (*(v1 + 104))(v3, enum case for WidgetFamily.systemSmall(_:), v0);
  sub_10001BA84(&qword_10004C888, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10003A718();
  sub_10003A718();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  if (v9[1] == v9[0])
  {
    return 0x1000000000000012;
  }

  else
  {
    return 0x1000000000000024;
  }
}

uint64_t sub_10001A8F0()
{
  v0 = sub_10003A4A8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v9 - v5;
  sub_1000176B0((v9 - v5));
  (*(v1 + 104))(v3, enum case for WidgetFamily.systemSmall(_:), v0);
  sub_10001BA84(&qword_10004C888, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10003A718();
  sub_10003A718();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  if (v9[1] == v9[0])
  {
    return 0x100000000000001ELL;
  }

  else
  {
    return 0x100000000000003CLL;
  }
}

uint64_t sub_10001AAB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v30 = sub_100039F48();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100039B88();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlaceholderView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001B2C(&qword_10004D028, &qword_10003CED8);
  __chkstk_darwin(v11);
  v13 = (&v25 - v12);
  v25 = sub_100001B2C(&qword_10004D030, &unk_10003CEE0);
  v14 = *(v25 - 8);
  __chkstk_darwin(v25);
  v16 = &v25 - v15;
  sub_10001B478(v2, v10);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_10001B6D8(v10, v18 + v17);
  *v13 = nullsub_1;
  v13[1] = 0;
  v13[2] = sub_10001B73C;
  v13[3] = v18;
  v13[4] = sub_10001B0F8;
  v13[5] = 0;
  v19 = *(v11 + 76);
  *(v13 + v19) = swift_getKeyPath();
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  swift_storeEnumTagMultiPayload();
  v20 = v13 + *(v11 + 80);
  *v20 = swift_getKeyPath();
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v20[32] = 0;
  sub_100039B78();
  v21 = sub_1000073FC(&qword_10004D038, &qword_10004D028, &qword_10003CED8, &unk_10003C6D8);
  sub_10003A228();
  (*(v4 + 8))(v6, v26);
  sub_10001B7B4(v13);
  v22 = v27;
  sub_100039F38();
  v31 = v2;
  sub_10003A3D8();
  sub_100001B2C(&qword_10004D040, &qword_10003CF50);
  v32 = v11;
  v33 = v21;
  swift_getOpaqueTypeConformance2();
  sub_10001B824();
  v23 = v25;
  sub_10003A1B8();
  (*(v28 + 8))(v22, v30);
  return (*(v14 + 8))(v16, v23);
}

uint64_t sub_10001AF50@<X0>(uint64_t a1@<X8>)
{
  sub_10001A730();
  v2 = sub_100039DC8();
  v4 = v3;
  v6 = v5;
  v23 = v7;
  sub_10001A8F0();
  v8 = sub_100039DC8();
  v10 = v9;
  v12 = v11;
  v14 = v13 & 1;
  v15 = type metadata accessor for LabelsModule(0);
  v16 = v15[6];
  v17 = sub_100039128();
  (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
  v18 = v15[7];
  v19 = sub_100039398();
  (*(*(v19 - 8) + 56))(a1 + v18, 1, 1, v19);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v14;
  *(a1 + 56) = v12;
  v20 = v15[8];
  *(a1 + v20) = swift_getKeyPath();
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  swift_storeEnumTagMultiPayload();
  v21 = v15[9];
  *(a1 + v21) = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);

  return swift_storeEnumTagMultiPayload();
}

double sub_10001B104@<D0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_100001B2C(&qword_10004D058, &qword_10003CF58);
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v21 = &v21 - v2;
  v3 = sub_10003A458();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_100001B2C(&qword_10004D040, &qword_10003CF50);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for PlaceholderView(0);
  sub_1000178D8(v9);
  sub_10003A448();
  sub_10001BA84(&qword_10004D070, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v13 = sub_10003A628();
  v14 = *(v4 + 8);
  v14(v6, v3);
  v14(v9, v3);
  if (v13)
  {
    v15 = v23;
    v16 = v21;
    v17 = &v21[*(v23 + 36)];
    v18 = sub_100001B2C(&qword_10004CB48, &qword_10003C7D8);
    sub_100017688((v17 + *(v18 + 28)));
    *v17 = swift_getKeyPath();
    *v16 = 256;
    sub_100007308(v16, v12, &qword_10004D058, &qword_10003CF58);
    v19 = 0;
  }

  else
  {
    v19 = 1;
    v15 = v23;
  }

  (*(v22 + 56))(v12, v19, 1, v15);
  sub_100007308(v12, v24, &qword_10004D040, &qword_10003CF50);

  return result;
}

uint64_t sub_10001B478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B4DC()
{
  v1 = type metadata accessor for PlaceholderView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10003A4A8();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = *(v1 + 20);
  sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000399C8();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = *(v1 + 24);
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10003A458();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10001B6D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B73C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PlaceholderView(0);

  return sub_10001AF50(a1);
}

uint64_t sub_10001B7B4(uint64_t a1)
{
  v2 = sub_100001B2C(&qword_10004D028, &qword_10003CED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001B824()
{
  result = qword_10004D048;
  if (!qword_10004D048)
  {
    sub_100001B74(&qword_10004D040, &qword_10003CF50);
    sub_10001B8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D048);
  }

  return result;
}

unint64_t sub_10001B8A8()
{
  result = qword_10004D050;
  if (!qword_10004D050)
  {
    sub_100001B74(&qword_10004D058, &qword_10003CF58);
    sub_1000073FC(&qword_10004D060, &qword_10004D068, &unk_10003CF60, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_1000073FC(&qword_10004CB40, &qword_10004CB48, &qword_10003C7D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D050);
  }

  return result;
}

uint64_t sub_10001B9B0(uint64_t a1)
{
  v2 = sub_1000399C8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_100039BA8();
}

uint64_t sub_10001BA84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001BACC()
{
  sub_100001B74(&qword_10004D030, &unk_10003CEE0);
  sub_100001B74(&qword_10004D040, &qword_10003CF50);
  sub_100001B74(&qword_10004D028, &qword_10003CED8);
  sub_1000073FC(&qword_10004D038, &qword_10004D028, &qword_10003CED8, &unk_10003C6D8);
  swift_getOpaqueTypeConformance2();
  sub_10001B824();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001BBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10001BD30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for TemplateInformationView(uint64_t a1)
{
  result = qword_10004D0D0;
  if (!qword_10004D0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001BEB8(uint64_t a1)
{
  sub_10000E128(319, &qword_10004C810, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    sub_10000E128(319, &qword_10004C660, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10001BFA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18[1] = a1;
  v3 = sub_100039F48();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TemplateInformationView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_100001B2C(&qword_10004D110, &qword_10003D038);
  __chkstk_darwin(v10);
  v12 = (v18 - v11);
  sub_10001C580(v1, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_10001C784(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *v12 = nullsub_1;
  v12[1] = 0;
  v12[2] = sub_10001C7E8;
  v12[3] = v14;
  v12[4] = sub_10001C43C;
  v12[5] = 0;
  v15 = *(v10 + 76);
  *(v12 + v15) = swift_getKeyPath();
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  swift_storeEnumTagMultiPayload();
  v16 = v12 + *(v10 + 80);
  *v16 = swift_getKeyPath();
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  v16[32] = 0;
  sub_100039F38();
  v18[4] = v2;
  sub_10003A3D8();
  sub_100001B2C(&qword_10004D118, &unk_10003D0A0);
  sub_1000073FC(&qword_10004D120, &qword_10004D110, &qword_10003D038, &unk_10003C6D8);
  sub_10001C868();
  sub_10003A1B8();
  (*(v4 + 8))(v6, v3);
  return sub_10001C978(v12);
}

uint64_t sub_10001C2C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  v7 = type metadata accessor for LabelsModule(0);
  v8 = v7[6];
  v9 = sub_100039128();
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = v7[7];
  v11 = sub_100039398();
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v12 = v7[8];
  *(a2 + v12) = swift_getKeyPath();
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  swift_storeEnumTagMultiPayload();
  v13 = v7[9];
  *(a2 + v13) = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  swift_storeEnumTagMultiPayload();
}

void sub_10001C450(uint64_t *a1@<X8>)
{
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TemplateInformationView(0);
  v2 = (a1 + *(sub_100001B2C(&qword_10004D118, &unk_10003D0A0) + 36));
  v3 = sub_100001B2C(&qword_10004CB48, &qword_10003C7D8);
  sub_100017688((v2 + *(v3 + 28)));
  KeyPath = swift_getKeyPath();

  *v2 = KeyPath;
}

uint64_t sub_10001C580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemplateInformationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C5E4()
{
  v1 = type metadata accessor for TemplateInformationView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10003A4A8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 24);
  sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000399C8();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10001C784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemplateInformationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C7E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TemplateInformationView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_10001C2C4(v4, a1);
}

unint64_t sub_10001C868()
{
  result = qword_10004D128;
  if (!qword_10004D128)
  {
    sub_100001B74(&qword_10004D118, &unk_10003D0A0);
    sub_10001C920();
    sub_1000073FC(&qword_10004CB40, &qword_10004CB48, &qword_10003C7D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D128);
  }

  return result;
}

unint64_t sub_10001C920()
{
  result = qword_10004CE48;
  if (!qword_10004CE48)
  {
    type metadata accessor for WidgetGridBackground(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004CE48);
  }

  return result;
}

uint64_t sub_10001C978(uint64_t a1)
{
  v2 = sub_100001B2C(&qword_10004D110, &qword_10003D038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001C9F0()
{
  sub_100001B74(&qword_10004D110, &qword_10003D038);
  sub_100001B74(&qword_10004D118, &unk_10003D0A0);
  sub_1000073FC(&qword_10004D120, &qword_10004D110, &qword_10003D038, &unk_10003C6D8);
  sub_10001C868();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001CAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C5F0, "r%");
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001CB4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C5F0, "r%");
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for WidgetBlurBackground(uint64_t a1)
{
  result = qword_10004D188;
  if (!qword_10004D188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001CC14(uint64_t a1)
{
  sub_10001CC80(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10001CC80(uint64_t a1)
{
  if (!qword_10004C670)
  {
    sub_10003A458();
    v1 = sub_1000399D8();
    if (!v2)
    {
      atomic_store(v1, &qword_10004C670);
    }
  }
}

uint64_t sub_10001CCF4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100039CE8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10001D0D4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10003A458();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10003A858();
    v13 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10001CEDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100039848();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003A458();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  sub_10001CCF4((&v17 - v11));
  sub_10003A448();
  v13 = sub_10003A438();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if (v13)
  {
    sub_100039838();
    (*(v3 + 32))(a1, v5, v2);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v3 + 56))(a1, v15, 1, v2);
}

uint64_t sub_10001D0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001D148()
{
  result = qword_10004D1C0;
  if (!qword_10004D1C0)
  {
    sub_100001B74(&qword_10004D1C8, &unk_10003D190);
    sub_10001D1CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D1C0);
  }

  return result;
}

unint64_t sub_10001D1CC()
{
  result = qword_10004D1D0;
  if (!qword_10004D1D0)
  {
    sub_100039848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D1D0);
  }

  return result;
}

uint64_t sub_10001D2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001B2C(&qword_10004D268, &qword_10003D1D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for WidgetEntryViewContent.Model.State(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10001D3D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001B2C(&qword_10004D268, &qword_10003D1D8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for WidgetEntryViewContent.Model.State(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10001D4E0(uint64_t a1)
{
  sub_10001DAFC(319, &unk_10004D2D8, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WidgetEntryViewContent.Model.State(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10001D5D0(uint64_t a1)
{
  result = type metadata accessor for WidgetEntryViewContent.Model.State.CenteredImage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WidgetEntryViewContent.Model.State.Loaded(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001D6AC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C780, "P*");
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for LoadedView.Callout(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_10001D844(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C780, "P*");
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for LoadedView.Callout(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}
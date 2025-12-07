id sub_1000015C4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000149F0;
  v7 = qword_1000149F0;
  if (!qword_1000149F0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100001780;
    v3[3] = &unk_100010988;
    v3[4] = &v4;
    sub_100001780(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000168C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100001780(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000149F8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000018C4;
    v4[4] = &unk_1000109C0;
    v4[5] = v4;
    v5 = off_1000109A8;
    v6 = 0;
    qword_1000149F8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000149F8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ASDBackgroundAssets");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000AD0C();
  }

  qword_1000149F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000018C4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1000149F8 = result;
  return result;
}

__n128 initializeWithTake for Transaction(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001970(uint64_t a1, int a2)
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

uint64_t sub_100001990(uint64_t result, int a2, int a3)
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

void sub_1000019CC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t type metadata accessor for HelperServiceError(uint64_t a1)
{
  result = qword_100014620;
  if (!qword_100014620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100001AB8(uint64_t a1)
{
  sub_100001B98();
  if (v1 <= 0x3F)
  {
    sub_100001BFC();
    if (v2 <= 0x3F)
    {
      sub_100001C5C(319, &qword_100014640, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        sub_100001C5C(319, &qword_100014648, sub_100001CA8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_100001B98()
{
  if (!qword_100014630)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100014630);
    }
  }
}

void sub_100001BFC()
{
  if (!qword_100014638)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100014638);
    }
  }
}

void sub_100001C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100001CA8()
{
  if (!qword_100014650)
  {
    v0 = sub_10000B1E4();
    if (!v1)
    {
      atomic_store(v0, &qword_100014650);
    }
  }
}

uint64_t sub_100001D40()
{
  v1 = v0;
  v2 = sub_10000ADD4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HelperServiceError(0);
  __chkstk_darwin(v6);
  v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000021E8(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v21 = 0;
      v22 = 0xE000000000000000;
      if (EnumCaseMultiPayload == 2)
      {
        sub_10000B244(52);
        v14 = "couldn’t be found.";
        v11._countAndFlagsBits = 0xD000000000000032;
      }

      else
      {
        sub_10000B244(57);
        v14 = "e converted into a file path.";
        v11._countAndFlagsBits = 0x1000000000000037;
      }

      v11._object = (v14 | 0x8000000000000000);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v15 = *v8;
        v16 = v8[1];
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_10000B244(58);
        v28._object = 0x800000010000C5A0;
        v28._countAndFlagsBits = 0x1000000000000018;
        sub_10000B0B4(v28);
        v29._countAndFlagsBits = v15;
        v29._object = v16;
        sub_10000B0B4(v29);

        v30._countAndFlagsBits = 0x100000000000001ELL;
        v30._object = 0x800000010000C5C0;
        sub_10000B0B4(v30);
LABEL_18:
        v19._countAndFlagsBits = sub_10000B044();
        goto LABEL_19;
      }

      v10 = *v8;
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_10000B244(71);
      v23._countAndFlagsBits = 0x100000000000003ELL;
      v23._object = 0x800000010000C5E0;
      sub_10000B0B4(v23);
      v20[3] = v10;
      v24._countAndFlagsBits = sub_10000B2C4();
      sub_10000B0B4(v24);

      v11._countAndFlagsBits = 0x203A9D80E2;
      v11._object = 0xA500000000000000;
    }

    sub_10000B0B4(v11);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      return 0x1000000000000024;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      (*(v3 + 32))(v5, v8, v2);
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_10000B244(58);
      v25._countAndFlagsBits = 0x204C525520656854;
      v25._object = 0xAB000000009C80E2;
      sub_10000B0B4(v25);
      sub_10000224C(&qword_100014688, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26._countAndFlagsBits = sub_10000B2C4();
      sub_10000B0B4(v26);

      v27._countAndFlagsBits = 0x100000000000002DLL;
      v27._object = 0x800000010000C4C0;
      sub_10000B0B4(v27);
      v12 = v21;
      (*(v3 + 8))(v5, v2);
      return v12;
    }

    v17 = v8[1];
    if (v17)
    {
      v18 = *v8;
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_10000B244(41);

      v21 = 0x1000000000000027;
      v22 = 0x800000010000C490;
      v19._countAndFlagsBits = v18;
      v19._object = v17;
LABEL_19:
      sub_10000B0B4(v19);

      return v21;
    }

    return 0x1000000000000026;
  }
}

uint64_t sub_1000021E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HelperServiceError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000224C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002294(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_10000B094();
  v6 = os_transaction_create();

  if (v6)
  {
    *(v2 + 16) = v6;
    timestamp = os_transaction_get_timestamp();
    if (qword_1000144A8 != -1)
    {
      swift_once();
    }

    v9 = sub_10000AEE4();
    sub_100003E7C(v9, qword_1000146A0);
    sub_10000245C();
    sub_10000245C();

    v10 = sub_10000AEC4();
    v11 = sub_10000B1A4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 68158210;
      *(v12 + 4) = 4;
      *(v12 + 8) = 512;
      *(v12 + 10) = timestamp;
      *(v12 + 12) = 2080;
      v14 = sub_100002E8C(a1, a2, &v15);

      *(v12 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "[TXN%.*hX] 🐏 Acquiring transaction (%s)", v12, 0x16u);
      sub_100003EB4(v13);
    }

    else
    {
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100002464()
{
  v3 = v0;
  v4 = sub_100003CD4(&qword_100014760, &qword_10000BD90);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v34 - v10;
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  v38 = *(v3 + 16);
  timestamp = os_transaction_get_timestamp();
  if (v14 < timestamp)
  {
    __break(1u);
  }

  else
  {
    v2 = timestamp;
    v1 = objc_opt_self();
    v16 = [v1 nanoseconds];
    sub_100003E30();
    sub_10000AD44();
    if (qword_1000144A8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v17 = sub_10000AEE4();
  sub_100003E7C(v17, qword_1000146A0);
  sub_10000245C();
  sub_10000245C();
  (*(v5 + 16))(v11, v13, v4);

  v18 = sub_10000AEC4();
  v19 = sub_10000B1A4();

  if (os_log_type_enabled(v18, v19))
  {
    v35 = v19;
    v36 = v8;
    v37 = v3;
    v20 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v20 = 68158466;
    *(v20 + 4) = 4;
    *(v20 + 8) = 512;
    *(v20 + 10) = v2;
    *(v20 + 12) = 2080;
    description = os_transaction_get_description();
    if (description)
    {
      description = sub_10000B0C4();
      v23 = v22;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v25 = sub_100002E8C(description, v23, &v39);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2080;
    v26 = [v1 milliseconds];
    v27 = v36;
    sub_10000AD54();

    v28 = sub_10000AD64();
    v30 = v29;
    v31 = *(v5 + 8);
    v31(v27, v4);
    v31(v11, v4);
    v32 = sub_100002E8C(v28, v30, &v39);

    *(v20 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v18, v35, "[TXN%.*hX] 🐏 Releasing transaction (%s) (%s)", v20, 0x20u);
    swift_arrayDestroy();

    v31(v13, v4);
    swift_unknownObjectRelease();
    return v37;
  }

  else
  {

    v24 = *(v5 + 8);
    v24(v11, v4);
    v24(v13, v4);
    swift_unknownObjectRelease();
  }

  return v3;
}

uint64_t sub_100002874()
{
  v0 = sub_100002464();

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_1000028D8()
{
  result = sub_100003D1C(&_swiftEmptyArrayStorage);
  dword_100014690 = 0;
  qword_100014698 = result;
  return result;
}

uint64_t sub_100002908(void *a1, uint64_t *a2)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = *a2, v6 = a2[1], , v7 = sub_100003434(v5, v6), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = (*(v4 + 56) + 16 * v7);
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v14 = *a2;
    v15 = a2[1];
    type metadata accessor for Transaction.SendableTransaction();
    swift_allocObject();

    result = sub_100002294(v14, v15);
    v12 = result;
    v11 = 0;
  }

  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    v18 = a2;
    v16 = *a2;
    v17 = v18[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *a1;
    sub_1000039D4(v11 + 1, v12, v16, v17, isUniquelyReferenced_nonNull_native);

    *a1 = v20;
  }

  return result;
}

uint64_t sub_100002A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1000039D4(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_100003434(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_100003B5C();
        v16 = v18;
      }

      result = sub_100003824(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_100002B34(uint64_t a1, uint64_t a2)
{
  v4 = qword_1000144A0;

  if (v4 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100014690);
  sub_100002CC8(&qword_100014698, a1, a2);

  os_unfair_lock_unlock(&dword_100014690);
}

void *assignWithTake for Transaction(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for Transaction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Transaction(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100002CC8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v7 = sub_100003434(a2, a3), (v8 & 1) != 0))
  {
    v9 = (*(v3 + 56) + 16 * v7);
    if (*v9 < 2)
    {

      return sub_100002A2C(0, 0, a2, a3);
    }

    else
    {
      v10 = v9[1];
      v11 = *v9 - 1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *a1;
      sub_1000039D4(v11, v10, a2, a3, isUniquelyReferenced_nonNull_native);

      *a1 = v14;
    }
  }

  else
  {
    result = sub_10000B284();
    __break(1u);
  }

  return result;
}

uint64_t sub_100002E0C()
{
  v0 = sub_10000AEE4();
  sub_100003F60(v0, qword_1000146A0);
  sub_100003E7C(v0, qword_1000146A0);
  return sub_10000AED4();
}

unint64_t sub_100002E8C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002F58(v11, 0, 0, 1, a1, a2);
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
    sub_100003F00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003EB4(v11);
  return v7;
}

unint64_t sub_100002F58(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003064(a5, a6);
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
    result = sub_10000B264();
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

char *sub_100003064(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000030B0(a1, a2);
  sub_1000031E0(&off_100010A20);
  return v3;
}

char *sub_1000030B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000032CC(v5, 0);
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

  result = sub_10000B264();
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
        v10 = sub_10000B0D4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000032CC(v10, 0);
        result = sub_10000B234();
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

uint64_t sub_1000031E0(uint64_t result)
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

  result = sub_100003340(result, v11, 1, v3);
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

void *sub_1000032CC(uint64_t a1, uint64_t a2)
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

  sub_100003CD4(&unk_100014770, qword_10000BD98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003340(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CD4(&unk_100014770, qword_10000BD98);
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

unint64_t sub_100003434(uint64_t a1, uint64_t a2)
{
  sub_10000B344();
  sub_10000B0A4();
  v4 = sub_10000B354();

  return sub_1000034AC(a1, a2, v4);
}

unint64_t sub_1000034AC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000B2E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100003564(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003CD4(&qword_100014758, &qword_10000BD88);
  v37 = v4;
  result = sub_10000B2A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_10000B344();
      sub_10000B0A4();
      result = sub_10000B354();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100003824(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000B224() + 1) & ~v5;
    do
    {
      sub_10000B344();

      sub_10000B0A4();
      v9 = sub_10000B354();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

uint64_t sub_1000039D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100003434(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100003564(v18, a5 & 1);
      v13 = sub_100003434(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_10000B2F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100003B5C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_100003B5C()
{
  v1 = v0;
  sub_100003CD4(&qword_100014758, &qword_10000BD88);
  v2 = *v0;
  v3 = sub_10000B294();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_100003CD4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CD4(&qword_100014758, &qword_10000BD88);
    v3 = sub_10000B2B4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100003434(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100003E30()
{
  result = qword_100014768;
  if (!qword_100014768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014768);
  }

  return result;
}

uint64_t sub_100003E7C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003EB4(void *a1)
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

uint64_t sub_100003F00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100003F60(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 sub_100003FF0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000400C()
{
  qword_100014780 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

os_activity_t sub_100004048(os_activity_t description, char a2, void *dso)
{
  v3 = description;
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (qword_1000144B0 == -1)
      {
LABEL_4:
        v4 = dso;
        v5 = qword_100014780;

        return _os_activity_create(v4, v3, v5, OS_ACTIVITY_FLAG_DEFAULT);
      }

LABEL_17:
      v13 = dso;
      swift_once();
      dso = v13;
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (description >> 32)
  {
    goto LABEL_16;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return description;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
LABEL_19:
    v7 = (description & 0x3F) << 8;
    v8 = (description >> 6) + v7 + 33217;
    v9 = (v7 | (description >> 6) & 0x3F) << 8;
    v10 = (description >> 18) + ((v9 | (description >> 12) & 0x3F) << 8) - 2122219023;
    v11 = (description >> 12) + v9 + 8487393;
    if (description >> 16)
    {
      v6 = v10;
    }

    else
    {
      v6 = v11;
    }

    if (description < 0x800)
    {
      v6 = v8;
    }

    goto LABEL_12;
  }

  if (description > 0x7F)
  {
    goto LABEL_19;
  }

  v6 = description + 1;
LABEL_12:
  *descriptiona = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6) & 0x18)));
  if (qword_1000144B0 != -1)
  {
    v12 = dso;
    swift_once();
    dso = v12;
  }

  return _os_activity_create(dso, descriptiona, qword_100014780, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t sub_100004208()
{
  sub_100003CD4(&qword_100014830, &qword_10000BDE8);
  swift_allocObject();
  result = sub_10000B374();
  qword_100014B80 = result;
  return result;
}

os_activity_scope_state_s *sub_100004264(NSObject *a1, uint64_t a2, uint64_t a3, void *dso)
{
  v5 = sub_100004048(a1, a3, dso);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  swift_unknownObjectRelease();
  v4[1] = state;
  state.opaque[0] = sub_10000B254();
  state.opaque[1] = v6;
  if (qword_1000144A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100014690);
  sub_100002908(&qword_100014698, &state);
  os_unfair_lock_unlock(&dword_100014690);
  v7 = state.opaque[1];
  v4[2].opaque[0] = state.opaque[0];
  v4[2].opaque[1] = v7;
  return v4;
}

os_activity_scope_state_s *sub_100004374()
{
  state = v0[1];
  os_activity_scope_leave(&state);
  v2 = v0[2].opaque[0];
  v1 = v0[2].opaque[1];
  v3 = qword_1000144A0;

  if (v3 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100014690);
  sub_100002CC8(&qword_100014698, v2, v1);

  os_unfair_lock_unlock(&dword_100014690);

  return v0;
}

uint64_t sub_100004470()
{
  sub_100004374();

  return _swift_deallocClassInstance(v0, 48, 7);
}

char *sub_1000044C8()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return &unk_100010C10;
  }

  else
  {
    return &type metadata for () + 8;
  }
}

ValueMetadata *sub_1000044F0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for Transaction;
  }

  else
  {
    return (&type metadata for () + 8);
  }
}

uint64_t sub_100004518(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000AB40(&type metadata for Bool);
  if (v6)
  {
    *&v21 = a1;
    *(&v21 + 1) = a2;

    sub_10000B0E4();
    v7 = sub_10000B074();

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [v2 objectForKey:v7 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];
LABEL_5:
    v10 = v9;

    if (v10)
    {
      sub_10000B204();
      swift_unknownObjectRelease();
      sub_10000A8FC(&v19, &v21);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v11 = &qword_1000148E8;
    v12 = &qword_10000BE98;
    goto LABEL_9;
  }

  if (v5 != sub_10000A90C(0, &qword_1000148E0, NSURL_ptr))
  {
    goto LABEL_4;
  }

  *&v19 = a1;
  *(&v19 + 1) = a2;

  sub_10000B0E4();
  v14 = sub_10000B074();

  sub_10000A90C(0, &qword_1000148F0, NSString_ptr);
  v15 = [v2 objectForKey:v14 ofClass:swift_getObjCClassFromMetadata()];

  if (v15)
  {
    sub_10000B204();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    sub_10000A954(&v21, &qword_1000148E8, &qword_10000BE98);
    goto LABEL_4;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_4:
    *&v21 = a1;
    *(&v21 + 1) = a2;

    sub_10000B0E4();
    v7 = sub_10000B074();

    v9 = [v2 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];
    goto LABEL_5;
  }

  v16 = objc_allocWithZone(NSURL);
  v17 = sub_10000B074();

  v18 = [v16 initWithString:v17];

  *&v21 = v18;
  v11 = &unk_1000148F8;
  v12 = &unk_10000BEA0;
LABEL_9:
  sub_100003CD4(v11, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v19) = 2;
  }

  return v19;
}

uint64_t sub_100004844()
{
  v7 = sub_10000B1C4();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000B1B4();
  __chkstk_darwin(v3);
  v4 = sub_10000B064();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10000A90C(0, &qword_1000148C0, OS_dispatch_queue_ptr);
  sub_10000B054();
  v8 = &_swiftEmptyArrayStorage;
  sub_10000AA30(&qword_1000148C8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003CD4(&qword_1000148D0, &qword_10000BE70);
  sub_10000A690(&qword_1000148D8, &qword_1000148D0, &qword_10000BE70, &protocol conformance descriptor for [A]);
  sub_10000B214();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_10000B1D4();
  qword_100014838 = result;
  return result;
}

uint64_t sub_100004AB8()
{
  v0 = sub_10000AEE4();
  sub_100003F60(v0, qword_100014840);
  sub_100003E7C(v0, qword_100014840);
  return sub_10000AED4();
}

uint64_t sub_100004B3C()
{
  v1 = v0;
  v2 = sub_10000AF04();
  __chkstk_darwin(v2 - 8);
  if (qword_1000144C8 != -1)
  {
    swift_once();
  }

  v3 = sub_10000AEE4();
  sub_100003E7C(v3, qword_100014840);
  v4 = sub_10000AEC4();
  v5 = sub_10000B1A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting the Managed Background Assets Helper Service…", v6, 2u);
  }

  v7 = sub_10000AEC4();
  v8 = sub_10000B1A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Configuring the directory suffix…", v9, 2u);
  }

  sub_10000B094();
  v10 = _set_user_dir_suffix();

  if (!v10)
  {
    type metadata accessor for HelperServiceError(0);
    sub_10000AA30(&qword_100014680, type metadata accessor for HelperServiceError, &unk_10000BCEC);
    swift_allocError();
    v20 = v19;
    v21 = sub_10000B024();
    *v20 = 0xD000000000000031;
    *(v20 + 8) = 0x800000010000C820;
    *(v20 + 16) = v21;
LABEL_19:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v11 = sub_10000AEC4();
  v12 = sub_10000B1A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "The directory suffix was successfully configured.", v13, 2u);
  }

  if (geteuid())
  {
    goto LABEL_11;
  }

  v23 = sub_10000AEC4();
  v24 = sub_10000B1A4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "The helper service was launched as root, which isn’t supported. Switching to mobile…", v25, 2u);
  }

  sub_10000B034();
  v26 = getpwnam("mobile");
  if (!v26)
  {
    v31 = sub_10000B024();
    type metadata accessor for HelperServiceError(0);
    sub_10000AA30(&qword_100014680, type metadata accessor for HelperServiceError, &unk_10000BCEC);
    swift_allocError();
    if (v31)
    {
      *v32 = sub_10000B024();
    }

    goto LABEL_19;
  }

  if (seteuid(v26->pw_uid))
  {
    type metadata accessor for HelperServiceError(0);
    sub_10000AA30(&qword_100014680, type metadata accessor for HelperServiceError, &unk_10000BCEC);
    swift_allocError();
    *v27 = sub_10000B024();
    goto LABEL_19;
  }

LABEL_11:
  sub_10000B144();
  sub_10000B134();
  sub_10000B0F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10000AE74();
  swift_allocObject();
  v14 = sub_10000AE24();
  if (!v0)
  {
    v1 = v14;
  }

  v15 = sub_10000AEC4();
  v16 = sub_10000B1A4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Creating a listener…", v17, 2u);
  }

  sub_10000AEF4();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = v0 != 0;
  sub_10000AF84();
  swift_allocObject();
  sub_100009A20(v1, v0 != 0);
  sub_10000AF64();
  v28 = sub_10000AEC4();
  v29 = sub_10000B1A4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Activating the listener…", v30, 2u);
  }

  sub_10000AF74();

  return sub_100009A08(v1, v0 != 0);
}

void sub_100005240(void *a1)
{
  v2 = [a1 bundleIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = [a1 iTunesMetadata];
    [v5 storeItemIdentifier];

    isa = sub_10000B364().super.super.isa;
    v11 = 0;
    v7 = [v4 testFlightDownloadManifestRequestForStoreItemIdentifier:isa bundleIdentifier:v3 error:&v11];

    v8 = v11;
    if (v7)
    {
      sub_10000AD34();
      v9 = v8;

      return;
    }

    v10 = v11;
    sub_10000ADC4();
  }

  else
  {
    type metadata accessor for HelperServiceError(0);
    sub_10000AA30(&qword_100014680, type metadata accessor for HelperServiceError, &unk_10000BCEC);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  swift_willThrow();
}

uint64_t sub_1000053F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v98 = a2;
  v6 = sub_10000AFB4();
  v100 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000AF44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v99 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HelperService.SecurityTaskCreationResult(0);
  v13 = __chkstk_darwin(v12);
  v15 = (&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = &v96 - v16;
  v101 = a1;
  sub_10000AF14();
  sub_100009A94(v17, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100009AF8(v17);
    return (*(v10 + 32))(a4, v15, v9);
  }

  v96 = a4;
  v19 = *v15;
  error = 0;
  v20 = SecTaskCopySigningIdentifier(v19, &error);
  if (v20)
  {
    v99 = v17;
    v21 = v20;
    v22 = sub_10000B084();
    v24 = v23;

    sub_10000AFA4();
    LOBYTE(v21) = sub_10000AF54();
    (*(v100 + 1))(v8, v6);
    if (v21)
    {
      if (qword_1000144C8 != -1)
      {
        swift_once();
      }

      v25 = sub_10000AEE4();
      sub_100003E7C(v25, qword_100014840);
      v26 = sub_10000B174();

      v27 = sub_10000AEC4();

      if (os_log_type_enabled(v27, v26))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v103 = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_100002E8C(v22, v24, &v103);
        _os_log_impl(&_mh_execute_header, v27, v26, "“%{public}s” is platform code.", v28, 0xCu);
        sub_100003EB4(v29);
      }
    }

    else
    {
      sub_10000AE74();
      v54 = sub_10000AE04();
      v55 = [v54 infoDictionary];
      v56 = sub_100004518(0xD000000000000012, 0x800000010000C940);

      if (v56 != 2 && (v56 & 1) != 0)
      {
        v57 = [v54 iTunesMetadata];
        v58 = [v57 distributorInfo];

        LOBYTE(v57) = [v58 distributorIsThirdParty];
        if (v57)
        {
          v59 = [v54 iTunesMetadata];
          v60 = [v59 distributorInfo];

          v61 = [v60 distributorNameForCurrentLocale];
          if (v61)
          {
            v62 = v54;
            v100 = v19;
            v63 = sub_10000B084();
            v65 = v64;

            if (qword_1000144C8 != -1)
            {
              swift_once();
            }

            v66 = sub_10000AEE4();
            sub_100003E7C(v66, qword_100014840);
            v67 = sub_10000B194();

            v68 = sub_10000AEC4();

            v69 = v22;
            if (os_log_type_enabled(v68, v67))
            {
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v103 = v71;
              *v70 = 136446210;
              *(v70 + 4) = sub_100002E8C(v63, v65, &v103);
              _os_log_impl(&_mh_execute_header, v68, v67, "The distributor “%{public}s” is unsupported for Apple-hosted assets.", v70, 0xCu);
              sub_100003EB4(v71);
            }

            v72 = sub_10000AEC4();
            v73 = sub_10000B1A4();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v103 = v75;
              *v74 = 136446210;
              v76 = sub_100002E8C(v69, v24, &v103);

              *(v74 + 4) = v76;
              _os_log_impl(&_mh_execute_header, v72, v73, "Rejecting a session request from “%{public}s”…", v74, 0xCu);
              sub_100003EB4(v75);
            }

            else
            {
            }

            v103 = 0;
            v104 = 0xE000000000000000;
            sub_10000B244(64);
            v107._object = 0x800000010000C9A0;
            v107._countAndFlagsBits = 0x1000000000000013;
            sub_10000B0B4(v107);
            v108._countAndFlagsBits = v63;
            v108._object = v65;
            sub_10000B0B4(v108);

            v109._countAndFlagsBits = 0x100000000000002BLL;
            v109._object = 0x800000010000C9C0;
            sub_10000B0B4(v109);
            sub_10000AF34();
          }

          else
          {
            if (qword_1000144C8 != -1)
            {
              swift_once();
            }

            v86 = sub_10000AEE4();
            sub_100003E7C(v86, qword_100014840);
            v87 = sub_10000B194();
            v88 = sub_10000AEC4();
            if (os_log_type_enabled(v88, v87))
            {
              v89 = swift_slowAlloc();
              *v89 = 0;
              _os_log_impl(&_mh_execute_header, v88, v87, "The current distributor is unsupported for Apple-hosted assets.", v89, 2u);
            }

            v90 = sub_10000AEC4();
            v91 = sub_10000B1A4();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = v54;
              v94 = swift_slowAlloc();
              v103 = v94;
              *v92 = 136446210;
              v95 = sub_100002E8C(v22, v24, &v103);

              *(v92 + 4) = v95;
              _os_log_impl(&_mh_execute_header, v90, v91, "Rejecting a session request from “%{public}s”…", v92, 0xCu);
              sub_100003EB4(v94);
              v54 = v93;
            }

            else
            {
            }

            sub_10000AF34();
          }

          return sub_100009AF8(v99);
        }
      }
    }

    if (qword_1000144C8 != -1)
    {
      swift_once();
    }

    v77 = sub_10000AEE4();
    sub_100003E7C(v77, qword_100014840);

    v78 = sub_10000AEC4();
    v79 = sub_10000B1A4();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v103 = v81;
      *v80 = 136446210;
      v82 = sub_100002E8C(v22, v24, &v103);

      *(v80 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v78, v79, "Accepting a session request from “%{public}s”…", v80, 0xCu);
      sub_100003EB4(v81);
    }

    else
    {
    }

    v83 = swift_allocObject();
    v84 = v98;
    *(v83 + 16) = v98;
    v85 = v97 & 1;
    *(v83 + 24) = v97 & 1;
    sub_100009A20(v84, v85);
    sub_10000AF24();

    return sub_100009AF8(v99);
  }

  v30 = error;
  if (error)
  {
    v31 = v17;
    v32 = v10;
    v33 = v99;
    if (qword_1000144C8 != -1)
    {
      swift_once();
    }

    v34 = sub_10000AEE4();
    sub_100003E7C(v34, qword_100014840);
    v35 = sub_10000B184();
    v36 = v30;
    v37 = sub_10000AEC4();

    if (os_log_type_enabled(v37, v35))
    {
      v38 = swift_slowAlloc();
      v39 = v19;
      v40 = swift_slowAlloc();
      *v38 = 138543362;
      type metadata accessor for CFError(0);
      sub_10000AA30(&qword_100014860, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
      swift_allocError();
      *v41 = v36;
      v42 = v36;
      v33 = v99;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v43;
      *v40 = v43;
      _os_log_impl(&_mh_execute_header, v37, v35, "The signing ID couldn’t be copied: %{public}@", v38, 0xCu);
      sub_10000A954(v40, &qword_100014868, &qword_10000BE20);
      v19 = v39;
    }

    v103 = 0;
    v104 = 0xE000000000000000;
    sub_10000B244(39);
    v106._countAndFlagsBits = 0x1000000000000025;
    v106._object = 0x800000010000C8A0;
    sub_10000B0B4(v106);
    v102 = v36;
    type metadata accessor for CFError(0);
    sub_10000B274();
    sub_10000AF34();

    v44 = v96;
  }

  else
  {
    v31 = v17;
    v32 = v10;
    v33 = v99;
    if (qword_1000144C8 != -1)
    {
      swift_once();
    }

    v45 = sub_10000AEE4();
    sub_100003E7C(v45, qword_100014840);
    v46 = sub_10000B194();
    v47 = sub_10000AEC4();
    v48 = os_log_type_enabled(v47, v46);
    v44 = v96;
    if (v48)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v46, "The peer lacks a signing ID.", v49, 2u);
    }

    sub_10000AF34();
  }

  if (qword_1000144C8 != -1)
  {
    swift_once();
  }

  v50 = sub_10000AEE4();
  sub_100003E7C(v50, qword_100014840);
  v51 = sub_10000AEC4();
  v52 = sub_10000B1A4();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Rejecting a session request…", v53, 2u);
  }

  sub_100009AF8(v31);
  return (*(v32 + 32))(v44, v33, v9);
}

uint64_t sub_1000065E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, SecTaskRef *a5@<X8>)
{
  *v15.val = a1;
  *&v15.val[2] = a2;
  *&v15.val[4] = a3;
  *&v15.val[6] = a4;
  v6 = SecTaskCreateWithAuditToken(0, &v15);
  if (v6)
  {
    *a5 = v6;
    type metadata accessor for HelperService.SecurityTaskCreationResult(0);
  }

  else
  {
    if (qword_1000144C8 != -1)
    {
      swift_once();
    }

    v7 = sub_10000AEE4();
    sub_100003E7C(v7, qword_100014840);
    v8 = sub_10000B194();
    v9 = sub_10000AEC4();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, v8, "A security task couldn’t be created.", v10, 2u);
    }

    v11 = sub_10000AEC4();
    v12 = sub_10000B1A4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Rejecting a session request…", v13, 2u);
    }

    sub_10000AF34();
    type metadata accessor for HelperService.SecurityTaskCreationResult(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000067D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for TaskLocalContext();
  swift_allocObject();
  sub_100004264("XPC Request Handler", 19, 2, &_mh_execute_header);
  if (qword_1000144B8 != -1)
  {
    swift_once();
  }

  sub_100003CD4(&qword_100014858, &qword_10000BE10);
  swift_task_localValuePush();
  sub_1000068E0(a1, a2, a3 & 1, a4);
  swift_task_localValuePop();
}

double sub_1000068E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v120 = a4;
  LODWORD(v117) = a3;
  v113 = a2;
  v5 = sub_100003CD4(&qword_100014878, &qword_10000BE28);
  v111 = *(v5 - 8);
  v112 = v5;
  __chkstk_darwin(v5);
  v110 = &v90 - v6;
  v7 = sub_100003CD4(&qword_100014880, &qword_10000BE30);
  __chkstk_darwin(v7 - 8);
  v104 = &v90 - v8;
  v9 = sub_10000AE14();
  v105 = *(v9 - 8);
  v106 = v9;
  __chkstk_darwin(v9);
  v109 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000B014();
  v114 = *(v11 - 8);
  v115 = v11;
  v12 = *(v114 + 64);
  __chkstk_darwin(v11);
  v116 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000AE94();
  v107 = *(v13 - 8);
  v108 = v13;
  __chkstk_darwin(v13);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000AE54();
  v118 = *(v16 - 8);
  v17 = *(v118 + 64);
  v18 = __chkstk_darwin(v16);
  v19 = __chkstk_darwin(v18);
  v21 = &v90 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v90 - v23;
  __chkstk_darwin(v22);
  v26 = &v90 - v25;
  sub_10000AA30(&qword_100014888, &type metadata accessor for Helper.Message, &protocol conformance descriptor for Helper.Message);
  v27 = v119;
  sub_10000AFF4();
  v119 = v27;
  if (v27)
  {
    v28 = v120;
    if (qword_1000144C8 != -1)
    {
      swift_once();
    }

    v29 = sub_10000AEE4();
    sub_100003E7C(v29, qword_100014840);
    v30 = sub_10000B184();
    swift_errorRetain();
    v31 = sub_10000AEC4();

    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543362;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v31, v30, "A message couldn’t be decoded: %{public}@", v32, 0xCu);
      sub_10000A954(v33, &qword_100014868, &qword_10000BE20);
    }

    else
    {
    }

    *(v28 + 32) = 0;
    result = 0.0;
    *v28 = 0u;
    *(v28 + 16) = 0u;
    return result;
  }

  v100 = v21;
  v98 = v15;
  v94 = v17;
  v96 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v12;
  v102 = a1;
  v35 = v118;
  v36 = v118 + 32;
  v93 = *(v118 + 32);
  v93(v26, v24, v16);
  if (qword_1000144C8 != -1)
  {
    swift_once();
  }

  v37 = sub_10000AEE4();
  v38 = sub_100003E7C(v37, qword_100014840);
  v39 = sub_10000B174();
  v40 = *(v35 + 16);
  v41 = v100;
  v92 = v35 + 16;
  v91 = v40;
  v40(v100, v26, v16);
  v99 = v38;
  v42 = sub_10000AEC4();
  v97 = v39;
  v43 = os_log_type_enabled(v42, v39);
  v44 = v119;
  v45 = v117;
  v101 = v16;
  v103 = v26;
  if (v43)
  {
    v46 = v119;
    v47 = v41;
    v48 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v121 = v90;
    *v48 = 136446210;
    sub_10000AA30(&qword_1000148B8, &type metadata accessor for Helper.Message, &protocol conformance descriptor for Helper.Message);
    v49 = sub_10000B2C4();
    v51 = v50;
    v52 = v47;
    v44 = v46;
    v45 = v117;
    v100 = *(v35 + 8);
    v100(v52, v16);
    v53 = sub_100002E8C(v49, v51, &v121);

    *(v48 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v42, v97, "The message “%{public}s” was received.", v48, 0xCu);
    sub_100003EB4(v90);
  }

  else
  {

    v100 = *(v35 + 8);
    v100(v41, v16);
  }

  v55 = v113;
  v56 = v115;
  v57 = v120;
  if (v45)
  {
    v121 = v113;
    swift_errorRetain();
    sub_100003CD4(&qword_100014890, &qword_10000BE38);
    swift_willThrowTypedImpl();
LABEL_17:
    v64 = sub_10000B184();
    swift_errorRetain();
    v65 = sub_10000AEC4();

    if (os_log_type_enabled(v65, v64))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138543362;
      swift_errorRetain();
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 4) = v68;
      *v67 = v68;
      _os_log_impl(&_mh_execute_header, v65, v64, "%{public}@", v66, 0xCu);
      sub_10000A954(v67, &qword_100014868, &qword_10000BE20);
    }

    swift_getErrorValue();
    sub_10000AE34();
    sub_10000AA30(&qword_100014898, &type metadata accessor for Helper.Reply, &protocol conformance descriptor for Helper.Reply);
    sub_10000AA30(&qword_1000148A0, &type metadata accessor for Helper.Reply, &protocol conformance descriptor for Helper.Reply);
    v69 = v110;
    sub_10000AEA4();
    sub_10000A690(&qword_1000148A8, &qword_100014878, &qword_10000BE28, &protocol conformance descriptor for XPCResult<A>);
    v70 = v112;
    sub_10000AFE4();

    (*(v111 + 8))(v69, v70);
    v100(v103, v101);
    *(v57 + 32) = 0;
    result = 0.0;
    *v57 = 0u;
    *(v57 + 16) = 0u;
    return result;
  }

  v117 = v36;
  v58 = *(v114 + 16);
  v59 = v102;
  v58(v116, v102, v115);
  v60 = v98;
  sub_10000AE84();
  v61 = v109;
  sub_10000AE64();
  if (v44)
  {
    (*(v107 + 8))(v60, v108);
    sub_10000AA30(&qword_1000148B0, &type metadata accessor for Helper.PermissionError, &protocol conformance descriptor for Helper.PermissionError);
    v62 = v106;
    swift_allocError();
    (*(v105 + 32))(v63, v61, v62);
    v57 = v120;
    goto LABEL_17;
  }

  (*(v107 + 8))(v60, v108);
  if (sub_10000B004())
  {
    v71 = v116;
    v72 = v96;
    if (qword_1000144C0 != -1)
    {
      swift_once();
      v72 = v96;
    }

    v119 = qword_100014838;
    v73 = v101;
    v91(v72, v103, v101);
    v58(v71, v102, v56);
    v74 = (*(v118 + 80) + 16) & ~*(v118 + 80);
    v75 = (v94 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = v114;
    v77 = (*(v114 + 80) + v75 + 9) & ~*(v114 + 80);
    v78 = swift_allocObject();
    v93((v78 + v74), v72, v73);
    v79 = v78 + v75;
    *v79 = v55;
    *(v79 + 8) = 0;
    (*(v76 + 32))(v78 + v77, v116, v115);

    sub_10000AFD4();

    v100(v103, v73);
  }

  else
  {
    v80 = sub_10000B164();
    (*(*(v80 - 8) + 56))(v104, 1, 1, v80);
    v81 = v96;
    v82 = v56;
    v83 = v101;
    v91(v96, v103, v101);
    v84 = v116;
    v58(v116, v59, v82);
    v85 = (*(v118 + 80) + 41) & ~*(v118 + 80);
    v86 = v114;
    v87 = (v94 + *(v114 + 80) + v85) & ~*(v114 + 80);
    v88 = swift_allocObject();
    *(v88 + 16) = 0;
    *(v88 + 24) = 0;
    *(v88 + 32) = v55;
    *(v88 + 40) = 0;
    v93((v88 + v85), v81, v83);
    (*(v86 + 32))(v88 + v87, v84, v115);

    sub_10000864C(0, 0, v104, &unk_10000BE48, v88);

    v100(v103, v83);
    v89 = v120;
    *(v120 + 32) = 0;
    result = 0.0;
    *v89 = 0u;
    v89[1] = 0u;
  }

  return result;
}

uint64_t sub_100007740(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 64) = a3;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  return _swift_task_switch(sub_100007768, 0, 0);
}

uint64_t sub_100007768()
{
  if (*(v0 + 64))
  {
    *(v0 + 16) = *(v0 + 32);
    swift_errorRetain();
    sub_100003CD4(&qword_100014890, &qword_10000BE38);
    swift_willThrowTypedImpl();
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = sub_10000AFC4();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = swift_task_alloc();
    *(v0 + 56) = v10;
    *v10 = v0;
    v10[1] = sub_1000078BC;
    v11 = *(v0 + 40);
    v12 = *(v0 + 24);

    return Helper.reply(to:auditToken:)(v12, v11, v3, v5, v7, v9);
  }
}

uint64_t sub_1000078BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000079B0(uint64_t a1, uint64_t a2)
{
  sub_100003CD4(&qword_100014878, &qword_10000BE28);
  sub_10000A690(&qword_1000148A8, &qword_100014878, &qword_10000BE28, &protocol conformance descriptor for XPCResult<A>);
  return sub_10000AFE4();
}

uint64_t sub_100007A64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v52 = a3;
  v55 = a2;
  v6 = sub_10000B014();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v50 = v7;
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003CD4(&qword_100014880, &qword_10000BE30);
  __chkstk_darwin(v8 - 8);
  v56 = &v42 - v9;
  v10 = sub_10000AE54();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v48 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v13;
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  if (qword_1000144C8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000AEE4();
  sub_100003E7C(v16, qword_100014840);
  v17 = sub_10000B174();
  v47 = *(v11 + 16);
  v47(v15, a1, v10);
  v18 = sub_10000AEC4();
  if (os_log_type_enabled(v18, v17))
  {
    v45 = a1;
    v46 = a4;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v57 = v43;
    *v19 = 136446466;
    sub_10000AA30(&qword_1000148B8, &type metadata accessor for Helper.Message, &protocol conformance descriptor for Helper.Message);
    v21 = sub_10000B2C4();
    v23 = v22;
    v44 = v11;
    (*(v11 + 8))(v15, v10);
    v24 = sub_100002E8C(v21, v23, &v57);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    if (qword_1000144C0 != -1)
    {
      swift_once();
    }

    v25 = qword_100014838;
    *(v19 + 14) = qword_100014838;
    *v20 = v25;
    v26 = v25;
    _os_log_impl(&_mh_execute_header, v18, v17, "Handing off responsibility for replying synchronously to “%{public}s” to the queue “%{public}@”…", v19, 0x16u);
    sub_10000A954(v20, &qword_100014868, &qword_10000BE20);

    sub_100003EB4(v43);

    v27 = v55;
    a1 = v45;
    a4 = v46;
    v28 = v10;
    v29 = v44;
  }

  else
  {

    (*(v11 + 8))(v15, v10);
    v28 = v10;
    v29 = v11;
    v27 = v55;
  }

  v30 = sub_10000B164();
  (*(*(v30 - 8) + 56))(v56, 1, 1, v30);
  v31 = v48;
  v47(v48, a1, v28);
  v33 = v53;
  v32 = v54;
  v34 = v51;
  (*(v53 + 16))(v51, a4, v54);
  v35 = (*(v29 + 80) + 41) & ~*(v29 + 80);
  v36 = (v49 + *(v33 + 80) + v35) & ~*(v33 + 80);
  v37 = swift_allocObject();
  v38 = v28;
  v39 = v37;
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v27;
  v40 = v52 & 1;
  *(v37 + 40) = v52 & 1;
  (*(v29 + 32))(v37 + v35, v31, v38);
  (*(v33 + 32))(v39 + v36, v34, v32);
  sub_100009A20(v27, v40);
  sub_10000864C(0, 0, v56, &unk_10000BE58, v39);
}

uint64_t sub_100007FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 184) = a5;
  *(v7 + 64) = a4;
  v8 = sub_10000B014();
  *(v7 + 88) = v8;
  v9 = *(v8 - 8);
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 + 64);
  *(v7 + 112) = swift_task_alloc();
  v10 = sub_100003CD4(&qword_100014878, &qword_10000BE28);
  *(v7 + 120) = v10;
  v11 = *(v10 - 8);
  *(v7 + 128) = v11;
  *(v7 + 136) = *(v11 + 64);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_100008114, 0, 0);
}

uint64_t sub_100008114()
{
  if (qword_1000144C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 64);
  *(v0 + 160) = qword_100014838;
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  v4 = *(v0 + 72);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1 & 1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  v6 = sub_10000AE34();
  v7 = sub_10000AA30(&qword_100014898, &type metadata accessor for Helper.Reply, &protocol conformance descriptor for Helper.Reply);
  v8 = sub_10000AA30(&qword_1000148A0, &type metadata accessor for Helper.Reply, &protocol conformance descriptor for Helper.Reply);
  *v5 = v0;
  v5[1] = sub_1000082B4;
  v9 = *(v0 + 152);

  return XPCResult.init(catching:)(v9, &unk_10000BE68, v3, v6, v7, v8);
}

uint64_t sub_1000082B4()
{

  return _swift_task_switch(sub_1000083CC, 0, 0);
}

uint64_t sub_1000083CC()
{
  v1 = v0[19];
  v17 = v0[20];
  v18 = v1;
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  (*(v7 + 16))(v5, v0[10], v8);
  (*(v4 + 16))(v2, v1, v3);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = (v6 + *(v4 + 80) + v9) & ~*(v4 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v9, v5, v8);
  (*(v4 + 32))(v11 + v10, v2, v3);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10000A568;
  *(v12 + 24) = v11;
  v0[6] = sub_10000A650;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100007A3C;
  v0[5] = &unk_100010D40;
  v13 = _Block_copy(v0 + 2);
  v14 = v17;

  dispatch_sync(v14, v13);
  _Block_release(v13);

  (*(v4 + 8))(v18, v3);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_10000864C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003CD4(&qword_100014880, &qword_10000BE30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000A6D8(a3, v25 - v10);
  v12 = sub_10000B164();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000A954(v11, &qword_100014880, &qword_10000BE30);
  }

  else
  {
    sub_10000B154();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10000B0F4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10000B094() + 32;
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

      sub_10000A954(a3, &qword_100014880, &qword_10000BE30);

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

  sub_10000A954(a3, &qword_100014880, &qword_10000BE30);
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

uint64_t sub_10000893C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 80) = a5;
  *(v7 + 16) = a4;
  v8 = sub_100003CD4(&qword_100014878, &qword_10000BE28);
  *(v7 + 40) = v8;
  *(v7 + 48) = *(v8 - 8);
  *(v7 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100008A10, 0, 0);
}

uint64_t sub_100008A10()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1 & 1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = sub_10000AE34();
  v7 = sub_10000AA30(&qword_100014898, &type metadata accessor for Helper.Reply, &protocol conformance descriptor for Helper.Reply);
  v8 = sub_10000AA30(&qword_1000148A0, &type metadata accessor for Helper.Reply, &protocol conformance descriptor for Helper.Reply);
  *v5 = v0;
  v5[1] = sub_100008B74;
  v9 = *(v0 + 56);

  return XPCResult.init(catching:)(v9, &unk_10000BE90, v3, v6, v7, v8);
}

uint64_t sub_100008B74()
{

  return _swift_task_switch(sub_100008C8C, 0, 0);
}

uint64_t sub_100008C8C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_10000A690(&qword_1000148A8, &qword_100014878, &qword_10000BE28, &protocol conformance descriptor for XPCResult<A>);
  sub_10000AFE4();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_100008D54(uint64_t a1)
{
  v2 = sub_10000AF94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000144C8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000AEE4();
  sub_100003E7C(v6, qword_100014840);
  v7 = sub_10000B184();
  v8 = *(v3 + 16);
  v8(v5, a1, v2);
  v9 = sub_10000AEC4();
  if (os_log_type_enabled(v9, v7))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    sub_10000AA30(&qword_100014870, &type metadata accessor for XPCRichError, &protocol conformance descriptor for XPCRichError);
    swift_allocError();
    v8(v12, v5, v2);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v5, v2);
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v9, v7, "A session was canceled: %{public}@", v10, 0xCu);
    sub_10000A954(v11, &qword_100014868, &qword_10000BE20);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

void sub_100008FD4(uint64_t a1, void *a2)
{
  sub_10000AA78((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_100003CD4(&qword_100014900, &qword_10000BEA8);
    sub_10000B114();
  }

  else
  {
    sub_100003CD4(&qword_100014900, &qword_10000BEA8);
    sub_10000B124();
  }
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for TaskLocalContext();
  swift_allocObject();
  sub_100004264("Helper Service Activation", 25, 2, &_mh_execute_header);
  if (qword_1000144B8 != -1)
  {
    swift_once();
  }

  sub_100003CD4(&qword_100014858, &qword_10000BE10);
  swift_task_localValuePush();
  sub_100004B3C();
  swift_task_localValuePop();

  v3 = [objc_opt_self() mainRunLoop];
  [v3 run];

  return 0;
}

uint64_t sub_1000091A4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000929C;

  return v6(a1);
}

uint64_t sub_10000929C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100009394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[20] = a3;
  v8[21] = a4;
  v8[18] = a1;
  v8[19] = a2;
  v9 = sub_100003CD4(&qword_100014900, &qword_10000BEA8);
  v8[26] = v9;
  v8[27] = *(v9 - 8);
  v8[28] = swift_task_alloc();
  v10 = sub_10000ADE4();
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000094C8, 0, 0);
}

uint64_t sub_1000094C8()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    v4 = *(v0 + 232);
    sub_10000ADF4();
    sub_10000AA30(&qword_100014908, &type metadata accessor for URLError.Code, &protocol conformance descriptor for URLError.Code);
    v5 = sub_10000ADA4();
    (*(v3 + 8))(v2, v4);
    v6 = 1;
    if ((v5 & 1) == 0)
    {
      v6 = 2;
    }

    v19 = v6;
  }

  else
  {
    v19 = 0;
  }

  v18.super.super.isa = sub_10000B364().super.super.isa;
  *(v0 + 256) = v18;
  v17 = sub_10000B074();
  *(v0 + 264) = v17;
  v16 = sub_10000B074();
  *(v0 + 272) = v16;
  v15.super.super.isa = sub_10000B1F4().super.super.isa;
  *(v0 + 280) = v15;
  if (v1)
  {
    v7 = sub_10000ADB4();
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 288) = v7;
  v8 = *(v0 + 216);
  v9 = *(v0 + 224);
  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v14 = objc_opt_self();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10000979C;
  swift_continuation_init();
  *(v0 + 136) = v11;
  v12 = sub_10000A9B4((v0 + 112));
  sub_100003CD4(&qword_100014890, &qword_10000BE38);
  sub_10000B104();
  (*(v8 + 32))(v12, v9, v11);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100008FD4;
  *(v0 + 104) = &unk_100010DB8;
  [v14 didReachAssetPackTerminalPhaseForStoreItemIdentifier:v18.super.super.isa bundleIdentifier:v17 assetPackIdentifier:v16 assetPackVersion:v15.super.super.isa internalBeta:v10 == 1 result:v19 error:v7 completionHandler:v0 + 80];
  (*(v8 + 8))(v12, v11);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10000979C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_10000994C;
  }

  else
  {
    v2 = sub_1000098AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000098AC()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 256);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000994C(uint64_t a1)
{
  v2 = v1[36];
  v4 = v1[34];
  v3 = v1[35];
  v6 = v1[32];
  v5 = v1[33];
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_100009A08(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100009A20(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t type metadata accessor for HelperService.SecurityTaskCreationResult(uint64_t a1)
{
  result = qword_100014980;
  if (!qword_100014980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HelperService.SecurityTaskCreationResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009AF8(uint64_t a1)
{
  v2 = type metadata accessor for HelperService.SecurityTaskCreationResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009B54()
{
  sub_100009A08(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100009B9C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100009BE4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10000AE54() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10000B014() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100009D4C;

  return sub_10000893C(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t sub_100009D4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100009E40()
{
  v1 = sub_10000AE54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10000B014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 9) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100009A08(*(v0 + v5), *(v0 + v5 + 8));
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100009FA4()
{
  v1 = *(sub_10000AE54() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_10000B014() - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = v0 + ((v3 + *(v4 + 80) + 9) & ~*(v4 + 80));

  return sub_100007A64(v0 + v2, v5, v6, v7);
}

uint64_t sub_10000A08C()
{
  v1 = sub_10000AE54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10000B014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  sub_100009A08(*(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10000A1E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10000AE54() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10000B014() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000AB3C;

  return sub_100007FC8(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t sub_10000A350(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000AB3C;

  return sub_100007740(a1, v4, v5, v7, v6);
}

uint64_t sub_10000A414()
{
  v1 = sub_10000B014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100003CD4(&qword_100014878, &qword_10000BE28);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10000A568()
{
  v1 = *(sub_10000B014() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_100003CD4(&qword_100014878, &qword_10000BE28) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1000079B0(v0 + v2, v5);
}

uint64_t sub_10000A678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A690(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100009B9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CD4(&qword_100014880, &qword_10000BE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A748()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A780(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000AB3C;

  return sub_1000091A4(a1, v4);
}

uint64_t sub_10000A838(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009D4C;

  return sub_100007740(a1, v4, v5, v7, v6);
}

_OWORD *sub_10000A8FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000A90C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000A954(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003CD4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_10000A9B4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000AA30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10000AA78(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_10000AABC(uint64_t a1)
{
  type metadata accessor for SecTask(319);
  if (v1 <= 0x3F)
  {
    sub_10000AF44();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_10000AB40(void *a1)
{
  if (a1 == &type metadata for Float || a1 == &type metadata for Double || a1 == &type metadata for Bool || a1 == &type metadata for Int)
  {
    v6 = &unk_1000149E0;
    v7 = NSNumber_ptr;
  }

  else if (sub_10000ADD4() == a1 || sub_10000A90C(0, &qword_1000148E0, NSURL_ptr) == a1)
  {
    v6 = &qword_1000148E0;
    v7 = NSURL_ptr;
  }

  else
  {
    v5 = swift_conformsToProtocol2();
    if (a1 && v5)
    {
      v6 = &unk_1000148F0;
      v7 = NSString_ptr;
    }

    else
    {
      v9 = swift_conformsToProtocol2();
      if (a1 && v9)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        sub_10000AB40(AssociatedTypeWitness);
        v6 = &unk_1000149D8;
        v7 = NSDictionary_ptr;
      }

      else
      {
        v11 = swift_conformsToProtocol2();
        if (a1 && v11)
        {
          v12 = swift_getAssociatedTypeWitness();
          sub_10000AB40(v12);
          v6 = &unk_1000149D0;
          v7 = NSArray_ptr;
        }

        else
        {
          v6 = &unk_1000149C8;
          v7 = NSObject_ptr;
        }
      }
    }
  }

  return sub_10000A90C(0, v6, v7);
}
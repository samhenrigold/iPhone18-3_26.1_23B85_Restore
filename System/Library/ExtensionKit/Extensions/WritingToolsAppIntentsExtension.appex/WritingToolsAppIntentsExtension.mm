Swift::Int QuestionnaireAnswerFormat.hashValue.getter(unsigned __int8 a1)
{
  sub_100050A78();
  sub_100050A88(a1);
  return sub_100050AA8();
}

Swift::Int sub_1000020D4()
{
  v1 = *v0;
  sub_100050A78();
  sub_100050A88(v1);
  return sub_100050AA8();
}

Swift::Int sub_100002148(uint64_t a1)
{
  v2 = *v1;
  sub_100050A78();
  sub_100050A88(v2);
  return sub_100050AA8();
}

uint64_t sub_10000218C()
{
  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension18QuestionnaireEntry_id;
  v2 = sub_10004FAD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension18QuestionnaireEntry___observationRegistrar;
  v4 = sub_10004FB98();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1000022A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension18QuestionnaireEntry_id;
  v5 = sub_10004FAD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1000023D4(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  swift_allocObject();
  return a2();
}

uint64_t variable initialization expression of WritingToolsModel.networkQueue()
{
  v0 = sub_100050778();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100050768();
  __chkstk_darwin(v4);
  v5 = sub_1000503E8();
  __chkstk_darwin(v5 - 8);
  sub_1000027C8();
  sub_1000503D8();
  v7[1] = &_swiftEmptyArrayStorage;
  sub_1000045C8(&unk_10006F5E0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100002814(&unk_10006EA60, &qword_1000553E0);
  sub_10000285C();
  sub_100050808();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_100050788();
}

double variable initialization expression of RewritingModel.analyticsInstance@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10000275C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004FAD8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t sub_1000027C8()
{
  result = qword_10006EA50;
  if (!qword_10006EA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006EA50);
  }

  return result;
}

uint64_t sub_100002814(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000285C()
{
  result = qword_10006F5F0;
  if (!qword_10006F5F0)
  {
    sub_1000028C0(&unk_10006EA60, &qword_1000553E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F5F0);
  }

  return result;
}

uint64_t sub_1000028C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

BOOL sub_10000296C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10000299C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000029C8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

Swift::Int sub_100002AC8()
{
  v1 = *v0;
  sub_100050A78();
  sub_100050A88(v1);
  return sub_100050AA8();
}

Swift::Int sub_100002B3C(uint64_t a1)
{
  v2 = *v1;
  sub_100050A78();
  sub_100050A88(v2);
  return sub_100050AA8();
}

uint64_t sub_100002B80(uint64_t a1, id *a2)
{
  result = sub_1000504F8();
  *a2 = 0;
  return result;
}

uint64_t sub_100002BF8(uint64_t a1, id *a2)
{
  v3 = sub_100050508();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002C78@<X0>(uint64_t *a1@<X8>)
{
  sub_100050518();
  v2 = sub_1000504E8();

  *a1 = v2;
  return result;
}

void *sub_100002CBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002CEC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_10004FC98();
}

Swift::Int sub_100002DFC(uint64_t a1, uint64_t a2)
{
  sub_100050A78();
  swift_getWitnessTable();
  sub_10004FCA8();
  return sub_100050AA8();
}

uint64_t sub_100002E68(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EEA8, type metadata accessor for IAPayloadValue, &unk_100055E64);
  v3 = sub_1000045C8(&qword_10006EEB0, type metadata accessor for IAPayloadValue, &unk_100055E04);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002F24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100003728(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100002F74(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EE98, type metadata accessor for SummarizationClientError, &unk_100056028);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100002FE0(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EE98, type metadata accessor for SummarizationClientError, &unk_100056028);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000304C(void *a1, uint64_t a2)
{
  v4 = sub_1000045C8(&qword_10006EE98, type metadata accessor for SummarizationClientError, &unk_100056028);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003100(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000045C8(&qword_10006EE98, type metadata accessor for SummarizationClientError, &unk_100056028);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10000317C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100050A78();
  sub_100050438();
  return sub_100050AA8();
}

uint64_t sub_1000031E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100050518();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000320C(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EEB8, type metadata accessor for IAPayloadKey, &unk_100056138);
  v3 = sub_1000045C8(&qword_10006EEC0, type metadata accessor for IAPayloadKey, &unk_100055CF0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000032C8()
{
  sub_100050518();
  v0 = sub_100050598();

  return v0;
}

uint64_t sub_100003304(uint64_t a1)
{
  sub_100050518();
  sub_100050568();
}

Swift::Int sub_100003358(uint64_t a1)
{
  sub_100050518();
  sub_100050A78();
  sub_100050568();
  v1 = sub_100050AA8();

  return v1;
}

uint64_t sub_1000033CC(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EE60, type metadata accessor for SummarizationClientError, &unk_100055FE4);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003438(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EE60, type metadata accessor for SummarizationClientError, &unk_100055FE4);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000034A8(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EE98, type metadata accessor for SummarizationClientError, &unk_100056028);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000045C8(&qword_10006EE98, type metadata accessor for SummarizationClientError, &unk_100056028);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100003598@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000504E8();

  *a2 = v3;
  return result;
}

uint64_t sub_1000035E0(uint64_t a1)
{
  v2 = sub_1000045C8(&qword_10006EEC8, type metadata accessor for URLResourceKey, &unk_100055BE8);
  v3 = sub_1000045C8(&qword_10006EED0, type metadata accessor for URLResourceKey, &unk_100055B88);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000369C(void *a1, uint64_t *a2)
{
  v2 = sub_100050518();
  v4 = v3;
  if (v2 == sub_100050518() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000509B8();
  }

  return v7 & 1;
}

uint64_t sub_100003728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_100003784(uint64_t a1)
{
  v2 = sub_100002814(&qword_10006ED88, &qword_1000559D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002814(&qword_10006ED90, &qword_1000559D8);
    v7 = sub_100050918();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005070(v9, v5, &qword_10006ED88, &qword_1000559D0);
      result = sub_10004A0A0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10004FAD8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10000396C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002814(&qword_10006EDE0, &qword_100055A28);
    v3 = sub_100050918();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005070(v4, &v13, &qword_10006EDE8, &qword_100055A30);
      v5 = v13;
      v6 = v14;
      result = sub_10004A138(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000050D8(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

Swift::Int sub_100003AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002814(&qword_10006EDD8, &qword_100055A20);
    v3 = sub_100050828();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_100050A78();
      sub_100050A88(v10);
      result = sub_100050AA8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100003BDC(uint64_t a1)
{
  v2 = sub_100002814(&qword_10006EDC8, &unk_100055A10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002814(&qword_10006EDD0, &unk_10005AD40);
    v7 = sub_100050918();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005070(v9, v5, &qword_10006EDC8, &unk_100055A10);
      result = sub_10004A0A0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10004FAD8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100003DE8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_100002814(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_100002814(a4, a5);
    v14 = sub_100050918();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_100005070(v16, v12, a2, v27);
      result = sub_10004A0A0(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_10004FAD8();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
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

unint64_t sub_100003FC8(uint64_t a1)
{
  v2 = sub_100002814(&qword_10006EDA8, &qword_1000559F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002814(&qword_10006EDB0, &qword_1000559F8);
    v7 = sub_100050918();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005070(v9, v5, &qword_10006EDA8, &qword_1000559F0);
      result = sub_10004A0A0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10004FAD8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000041B4()
{
  result = qword_10006EA70;
  if (!qword_10006EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EA70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuestionnaireAnswerFormat(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for QuestionnaireAnswerFormat(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for QuestionnaireEntry(uint64_t a1)
{
  result = qword_10006EAC0;
  if (!qword_10006EAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000043D0(uint64_t a1)
{
  result = sub_10004FAD8();
  if (v2 <= 0x3F)
  {
    result = sub_10004FB98();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

__n128 sub_100004518(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004524(uint64_t a1, int a2)
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

uint64_t sub_100004544(uint64_t result, int a2, int a3)
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

uint64_t sub_1000045C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100004808(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002814(&qword_10006ED30, &qword_100055978);
    v3 = sub_100050918();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005070(v4, &v13, &qword_10006ED38, &unk_100055980);
      v5 = v13;
      v6 = v14;
      result = sub_10004A138(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005060(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100004938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002814(&qword_10006ED40, &unk_10005AD50);
    v3 = sub_100050918();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_10004A1B0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_100004A9C(uint64_t a1)
{
  v2 = sub_100002814(&qword_10006ED78, &qword_1000559C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002814(&qword_10006ED80, &qword_1000559C8);
    v7 = sub_100050918();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005070(v9, v5, &qword_10006ED78, &qword_1000559C0);
      v11 = *v5;
      result = sub_10004A244(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10004F738();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100004C84(uint64_t a1)
{
  v2 = sub_100002814(&qword_10006ED68, &qword_1000559B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002814(&qword_10006ED70, &qword_1000559B8);
    v7 = sub_100050918();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005070(v9, v5, &qword_10006ED68, &qword_1000559B0);
      v11 = *v5;
      result = sub_10004A314(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10004F738();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_100004E6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002814(&qword_10006ED18, &qword_100055960);
    v3 = sub_100050828();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_100050518();
      sub_100050A78();
      v27 = v7;
      sub_100050568();
      v8 = sub_100050AA8();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_100050518();
        v18 = v17;
        if (v16 == sub_100050518() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1000509B8();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

_OWORD *sub_100005060(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005070(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002814(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000050D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_100005544(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_1000055DC()
{
  result = qword_10006EE88;
  if (!qword_10006EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EE88);
  }

  return result;
}

unint64_t sub_100005788()
{
  result = qword_10006F048;
  if (!qword_10006F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F048);
  }

  return result;
}

unint64_t sub_1000057E0()
{
  result = qword_10006F050;
  if (!qword_10006F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F050);
  }

  return result;
}

unint64_t sub_100005838()
{
  result = qword_10006F058;
  if (!qword_10006F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F058);
  }

  return result;
}

uint64_t sub_1000058DC()
{
  v0 = sub_10004F9A8();
  sub_100007390(v0, qword_10007B280);
  sub_1000071F4(v0, qword_10007B280);
  return sub_10004F978();
}

uint64_t sub_100005940@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_100002814(&qword_10006F090, &qword_100058950);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = sub_10004F9A8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_10004F978();
  v13 = *(v12 + 56);
  v13(v10, 1, 1, v11);
  sub_10004F978();
  v13(v8, 0, 1, v11);
  sub_10004F708();
  v14 = sub_10004F718();
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  sub_10004F6E8();
  v15 = sub_10004F6D8();
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

uint64_t sub_100005C10(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_10004FB38();
  v2[11] = swift_task_alloc();
  sub_1000504D8();
  v2[12] = swift_task_alloc();
  v3 = sub_10004F8A8();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_100050658();
  v2[20] = sub_100050648();
  v5 = sub_100050628();
  v2[21] = v5;
  v2[22] = v4;

  return _swift_task_switch(sub_100005D84, v5, v4);
}

uint64_t sub_100005D84()
{
  sub_10004F658();
  v1 = sub_10004F648();
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = v1[1];
    *(v0 + 264) = *v1;
    *(v0 + 280) = v3;
    *(v0 + 48) = v2;
    sub_10000722C();
    *(v0 + 184) = sub_10004F7C8();
    sub_10004F698();
    type metadata accessor for WritingToolsIntentManager(0);
    *(v0 + 192) = swift_allocObject();
    *(v0 + 200) = sub_100050648();
    v5 = sub_100050628();

    return _swift_task_switch(sub_100006028, v5, v4);
  }

  else
  {

    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v6 = sub_100050188();
    sub_1000071F4(v6, qword_10007B4F8);
    v7 = sub_100050168();
    v8 = sub_100050728();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to obtain an app audit token from AppIntents.", v9, 2u);
    }

    sub_10004F5D8();
    sub_10000731C(&qword_10006F0A0, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    sub_10004F5C8();
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100006028()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v17 = *(v0 + 144);
  v18 = *(v0 + 136);
  v3 = *(v0 + 112);
  v16 = *(v0 + 104);

  sub_100050468();
  sub_10004FB08();
  v4 = sub_100050528();
  *(v0 + 208) = v5;
  *(v1 + 3) = v4;
  *(v1 + 4) = v5;
  *(v1 + 6) = 100;
  type metadata accessor for WritingToolsModel(0);
  swift_allocObject();
  v6 = sub_100009ACC(1, 0);
  *(v0 + 216) = v6;
  *(v1 + 2) = v6;
  sub_100008F38(9, 0, 0, 0);
  swift_getKeyPath();
  *(v0 + 56) = v6;
  sub_10000731C(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();

  v7 = objc_allocWithZone(BSAuditToken);

  v8 = *(v0 + 280);
  *(v0 + 296) = *(v0 + 264);
  *(v0 + 312) = v8;
  sub_100011960([v7 initWithAuditToken:v0 + 296]);

  *(v1 + 5) = v2;
  [v2 setTotalUnitCount:100];
  v9 = *(v3 + 16);
  v9(&v1[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text], v17, v16);
  sub_100007288();
  v9(v18, v17, v16);
  v10 = sub_100050798();
  v11 = [objc_allocWithZone(WTContext) initWithAttributedText:v10 range:{0, objc_msgSend(v10, "length")}];
  *(v0 + 224) = v11;

  v12 = *(v3 + 8);
  *(v0 + 232) = v12;
  *(v0 + 240) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v17, v16);
  *&v1[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_context] = v11;
  v13 = *(v0 + 168);
  v14 = *(v0 + 176);

  return _swift_task_switch(sub_10000630C, v13, v14);
}

uint64_t sub_10000630C()
{
  sub_10004F898();
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_1000063AC;
  v2 = *(v0 + 120);

  return sub_100025888(v2);
}

uint64_t sub_1000063AC()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_1000066C0;
  }

  else
  {
    v5 = sub_1000064E8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000064E8()
{
  v1 = v0[29];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[14];

  v1(v3, v4);
  (*(v5 + 32))(v3, v2, v4);
  v6 = v0[29];
  v7 = v0[23];
  v8 = v0[24];
  v13 = v0[28];
  v9 = v0[16];
  v10 = v0[13];
  sub_10000731C(&qword_10006F0B8, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  sub_10004F688();

  swift_setDeallocating();
  v6(v8 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v10);

  swift_deallocClassInstance();
  v6(v9, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000066C0()
{
  v1 = v0[32];

  v0[8] = v1;
  swift_errorRetain();
  sub_100002814(&qword_10006F0B0, &qword_100057A80);
  if (swift_dynamicCast())
  {
    v2 = v0[3];
    if (v2 == 1)
    {

      v3 = v0[29];
      v4 = v0[23];
      v5 = v0[24];
      v15 = v0[28];
      v6 = v0[16];
      v7 = v0[13];
      sub_10000731C(&qword_10006F0B8, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
      sub_10004F688();

      swift_setDeallocating();
      v3(v5 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v7);

      swift_deallocClassInstance();
      v3(v6, v7);

      v8 = v0[1];
      goto LABEL_6;
    }

    sub_1000072D4(v0[2], v2, v0[4], v0[5]);
  }

  v9 = v0[29];
  v10 = v0[28];
  v12 = v0[23];
  v11 = v0[24];
  v16 = v0[16];
  v13 = v0[13];

  swift_willThrow();

  swift_setDeallocating();
  v9(v11 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v13);

  swift_deallocClassInstance();
  v9(v16, v13);

  v8 = v0[1];
LABEL_6:

  return v8();
}

uint64_t sub_1000069C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006E870 != -1)
  {
    swift_once();
  }

  v2 = sub_10004F9A8();
  v3 = sub_1000071F4(v2, qword_10007B280);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100006A78(uint64_t a1, uint64_t a2)
{
  v2 = sub_100002814(&qword_10006F0C8, &qword_100056378);
  __chkstk_darwin(v2 - 8);
  v3 = sub_100002814(&qword_10006F0D0, &qword_100056380);
  __chkstk_darwin(v3);
  sub_10004F778();
  v5._object = 0x80000001000516B0;
  v5._countAndFlagsBits = 0xD000000000000010;
  sub_10004F768(v5);
  swift_getKeyPath();
  sub_100002814(&qword_10006F0D8, &unk_1000563B0);
  sub_10004F758();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10004F768(v6);
  sub_10004F788();
  return sub_10004F748();
}

uint64_t sub_100006C14(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006CB4;

  return sub_100005C10(a1, v4);
}

uint64_t sub_100006CB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100006DA8@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v1 = sub_10004F798();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002814(&qword_10006F080, &unk_100059350);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_100002814(&qword_10006F088, &unk_100056320);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_100002814(&qword_10006F090, &qword_100058950);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_10004F9A8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_100002814(&qword_10006F098, &qword_100056330);
  sub_10004F978();
  (*(v15 + 56))(v13, 1, 1, v14);
  v16 = sub_10004F8A8();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = sub_10004F678();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  (*(v2 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v1);
  result = sub_10004F6C8();
  *v20 = result;
  return result;
}

uint64_t sub_1000070D8(uint64_t a1)
{
  v2 = sub_100005788();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000071AC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000028C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000071F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000722C()
{
  result = qword_10006F0A8;
  if (!qword_10006F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F0A8);
  }

  return result;
}

unint64_t sub_100007288()
{
  result = qword_100071130;
  if (!qword_100071130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100071130);
  }

  return result;
}

void sub_1000072D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
  }
}

uint64_t sub_10000731C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100007364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004F6A8();
  *a1 = result;
  return result;
}

uint64_t *sub_100007390(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1000073F8()
{
  result = qword_10006F0E0;
  if (!qword_10006F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F0E0);
  }

  return result;
}

unint64_t sub_100007450()
{
  result = qword_10006F0E8;
  if (!qword_10006F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F0E8);
  }

  return result;
}

unint64_t sub_1000074A8()
{
  result = qword_10006F0F0;
  if (!qword_10006F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F0F0);
  }

  return result;
}

uint64_t sub_10000754C()
{
  v0 = sub_10004F9A8();
  sub_100007390(v0, qword_10007B298);
  sub_1000071F4(v0, qword_10007B298);
  return sub_10004F978();
}

uint64_t sub_1000075B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_100002814(&qword_10006F090, &qword_100058950);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = sub_10004F9A8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_10004F978();
  v13 = *(v12 + 56);
  v13(v10, 1, 1, v11);
  sub_10004F978();
  v13(v8, 0, 1, v11);
  sub_10004F708();
  v14 = sub_10004F718();
  (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
  sub_10004F6E8();
  v15 = sub_10004F6D8();
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

uint64_t sub_100007860(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_10004FB38();
  v2[11] = swift_task_alloc();
  sub_1000504D8();
  v2[12] = swift_task_alloc();
  v3 = sub_10004F8A8();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_100050658();
  v2[20] = sub_100050648();
  v5 = sub_100050628();
  v2[21] = v5;
  v2[22] = v4;

  return _swift_task_switch(sub_1000079D4, v5, v4);
}

uint64_t sub_1000079D4()
{
  sub_10004F658();
  v1 = sub_10004F648();
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = v1[1];
    *(v0 + 264) = *v1;
    *(v0 + 280) = v3;
    *(v0 + 48) = v2;
    sub_1000085FC();
    *(v0 + 184) = sub_10004F7C8();
    sub_10004F698();
    type metadata accessor for WritingToolsIntentManager(0);
    *(v0 + 192) = swift_allocObject();
    *(v0 + 200) = sub_100050648();
    v5 = sub_100050628();

    return _swift_task_switch(sub_100007C78, v5, v4);
  }

  else
  {

    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v6 = sub_100050188();
    sub_1000071F4(v6, qword_10007B4F8);
    v7 = sub_100050168();
    v8 = sub_100050728();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to obtain an app audit token from AppIntents.", v9, 2u);
    }

    sub_10004F5D8();
    sub_10000731C(&qword_10006F0A0, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    sub_10004F5C8();
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100007C78()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v17 = *(v0 + 144);
  v18 = *(v0 + 136);
  v3 = *(v0 + 112);
  v16 = *(v0 + 104);

  sub_100050468();
  sub_10004FB08();
  v4 = sub_100050528();
  *(v0 + 208) = v5;
  *(v1 + 3) = v4;
  *(v1 + 4) = v5;
  *(v1 + 6) = 100;
  type metadata accessor for WritingToolsModel(0);
  swift_allocObject();
  v6 = sub_100009ACC(1, 0);
  *(v0 + 216) = v6;
  *(v1 + 2) = v6;
  sub_100008F38(0, 0, 0, 0);
  swift_getKeyPath();
  *(v0 + 56) = v6;
  sub_10000731C(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();

  v7 = objc_allocWithZone(BSAuditToken);

  v8 = *(v0 + 280);
  *(v0 + 296) = *(v0 + 264);
  *(v0 + 312) = v8;
  sub_100011960([v7 initWithAuditToken:v0 + 296]);

  *(v1 + 5) = v2;
  [v2 setTotalUnitCount:100];
  v9 = *(v3 + 16);
  v9(&v1[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text], v17, v16);
  sub_100007288();
  v9(v18, v17, v16);
  v10 = sub_100050798();
  v11 = [objc_allocWithZone(WTContext) initWithAttributedText:v10 range:{0, objc_msgSend(v10, "length")}];
  *(v0 + 224) = v11;

  v12 = *(v3 + 8);
  *(v0 + 232) = v12;
  *(v0 + 240) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v17, v16);
  *&v1[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_context] = v11;
  v13 = *(v0 + 168);
  v14 = *(v0 + 176);

  return _swift_task_switch(sub_10000630C, v13, v14);
}

uint64_t sub_100007F5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006E878 != -1)
  {
    swift_once();
  }

  v2 = sub_10004F9A8();
  v3 = sub_1000071F4(v2, qword_10007B298);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100008004(uint64_t a1, uint64_t a2)
{
  v2 = sub_100002814(&qword_10006F110, &qword_100056548);
  __chkstk_darwin(v2 - 8);
  v3 = sub_100002814(&qword_10006F118, &qword_100056550);
  __chkstk_darwin(v3);
  sub_10004F778();
  v5._countAndFlagsBits = 0x2065746972776552;
  v5._object = 0xE800000000000000;
  sub_10004F768(v5);
  swift_getKeyPath();
  sub_100002814(&unk_10006F120, &unk_100056580);
  sub_10004F758();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10004F768(v6);
  sub_10004F788();
  return sub_10004F748();
}

uint64_t sub_10000819C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006CB4;

  return sub_100007860(a1, v4);
}

uint64_t sub_10000823C@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v1 = sub_10004F798();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002814(&qword_10006F080, &unk_100059350);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_100002814(&qword_10006F088, &unk_100056320);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_100002814(&qword_10006F090, &qword_100058950);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_10004F9A8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_100002814(&qword_10006F098, &qword_100056330);
  sub_10004F978();
  (*(v15 + 56))(v13, 1, 1, v14);
  v16 = sub_10004F8A8();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = sub_10004F678();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  (*(v2 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v1);
  result = sub_10004F6C8();
  *v20 = result;
  return result;
}

uint64_t sub_10000856C(uint64_t a1)
{
  v2 = sub_1000073F8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000085FC()
{
  result = qword_10006F108;
  if (!qword_10006F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F108);
  }

  return result;
}

uint64_t sub_100008658@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004F6A8();
  *a1 = result;
  return result;
}

uint64_t sub_100008684()
{
  swift_getKeyPath();
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();
}

uint64_t sub_100008728@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();

  *a2 = *(v3 + 16);
}

uint64_t sub_1000087D4(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    sub_10004FB48();
  }
}

uint64_t sub_100008908()
{
  swift_getKeyPath();
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();
}

uint64_t sub_1000089AC(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    sub_10004FB48();
  }
}

uint64_t sub_100008AE0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();

  if (!*(v0 + 72))
  {
    swift_getKeyPath();
    sub_10004FB58();

    swift_getKeyPath();

    sub_10004FB58();

    v2 = *(v0 + 48);
    v3 = *(v1 + 56);
    v4 = *(v1 + 64);
    v5 = *(v1 + 72);
    sub_10000A594(*(v1 + 48), v3, v4, *(v1 + 72));
    sub_100011C9C(v2, v3, v4, v5);
  }

  swift_getKeyPath();
  sub_10004FB58();

  if (*(v1 + 72) >= 2u)
  {
    v7 = *(v1 + 48);
    if (*(v1 + 56) | *(v1 + 64) | v7)
    {
      if (v7 == 1 && *(v1 + 56) == 0)
      {
        swift_getKeyPath();
        sub_10004FB58();

        swift_getKeyPath();

        sub_10004FB58();

        v8 = *(v1 + 48);
        v9 = *(v1 + 56);
        v10 = *(v1 + 64);
        v11 = *(v1 + 72);
        sub_10000A594(v8, v9, v10, v11);
        sub_100011C9C(v8, v9, v10, v11);
      }
    }
  }

  return result;
}

uint64_t sub_100008D4C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();

  v1 = *(v0 + 48);
  sub_10000A594(v1, *(v3 + 56), *(v3 + 64), *(v3 + 72));
  return v1;
}

uint64_t sub_100008E18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 72);
  *(a2 + 24) = v7;
  return sub_10000A594(v4, v5, v6, v7);
}

uint64_t sub_100008ED4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 24);
  sub_10000A594(*a1, v2, v3, v4);
  return sub_100008F38(v1, v2, v3, v4);
}

uint64_t sub_100008F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = *(v4 + 48);
  v10 = *(v4 + 56);
  v11 = *(v4 + 64);
  v12 = *(v4 + 72);
  if (sub_10000A3E4(v9, v10, v11, v12, a1, a2, a3, a4))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    sub_10004FB48();
    sub_10000A1CC(a1, a2, a3, v5);
  }

  else
  {
    *(v4 + 48) = a1;
    *(v4 + 56) = a2;
    *(v4 + 64) = a3;
    *(v4 + 72) = v5;
    sub_10000A1CC(v9, v10, v11, v12);

    return sub_100008AE0();
  }
}

uint64_t sub_1000090EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  v8 = *(a1 + 72);
  *(a1 + 72) = a5;
  sub_10000A594(a2, a3, a4, a5);
  sub_10000A1CC(v5, v6, v7, v8);
  return sub_100008AE0();
}

uint64_t sub_100009168()
{
  swift_getKeyPath();
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();

  return *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__networkAvailable);
}

uint64_t sub_100009210@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__networkAvailable);
  return result;
}

uint64_t sub_1000092C0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__networkAvailable) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__networkAvailable) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    sub_10004FB48();
  }

  return result;
}

uint64_t WritingToolsModel.__allocating_init(hostIsReady:writingToolsDelegate:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  swift_allocObject();
  v4 = sub_100009ACC(v3, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t WritingToolsModel.init(hostIsReady:writingToolsDelegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_100009ACC(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_100009468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000503C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002814(&qword_10006F5F8, &qword_1000579B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_100050678();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  sub_100050658();

  v12 = sub_100050648();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = a2;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_100026B4C(0, 0, v10, &unk_100056708, v14);
}

uint64_t sub_100009664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v6 = sub_1000503A8();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  sub_100050658();
  v5[13] = sub_100050648();
  v8 = sub_100050628();

  return _swift_task_switch(sub_100009768, v8, v7);
}

uint64_t sub_100009768()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    sub_1000503B8();
    (*(v5 + 104))(v3, enum case for NWPath.Status.satisfied(_:), v4);
    v6 = sub_100050398() & 1;
    v7 = *(v5 + 8);
    v7(v3, v4);
    v7(v2, v4);
    if (v6 == *(Strong + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__networkAvailable))
    {
      *(Strong + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__networkAvailable) = v6;
    }

    else
    {
      swift_getKeyPath();
      v8 = swift_task_alloc();
      *(v8 + 16) = Strong;
      *(v8 + 24) = v6;
      *(v0 + 40) = Strong;
      sub_10000A678(&unk_10006F5D0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
      sub_10004FB48();
    }
  }

  **(v0 + 48) = Strong == 0;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t WritingToolsModel.deinit()
{

  sub_10000A1CC(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__gmsAvailability;
  v2 = sub_10004FD48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000A200(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__writingToolsDelegate);

  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel___observationRegistrar;
  v4 = sub_10004FB98();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t WritingToolsModel.__deallocating_deinit()
{
  WritingToolsModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100009ACC(int a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v39 = a1;
  v4 = sub_10004FD48();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10004FD88();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10004FD68();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10004FDD8();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100050778();
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100050768();
  __chkstk_darwin(v12);
  v13 = sub_1000503E8();
  __chkstk_darwin(v13 - 8);
  type metadata accessor for ProofreadingModel(0);
  swift_allocObject();
  *(v2 + 16) = sub_100049A14();
  type metadata accessor for CompositionModel(0);
  swift_allocObject();
  *(v2 + 32) = sub_10001BE40();
  *(v2 + 40) = 1;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__hostDidAddRemoteView) = 0;
  v14 = v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__auditedHostPID;
  *v14 = 0;
  *(v14 + 4) = 1;
  *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__isPopoverDetached) = 0;
  v15 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel_networkMonitor;
  sub_100050388();
  swift_allocObject();
  *(v2 + v15) = sub_100050378();
  v16 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel_networkQueue;
  sub_1000027C8();
  sub_1000503D8();
  v43 = &_swiftEmptyArrayStorage;
  sub_10000A678(&unk_10006F5E0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100002814(&unk_10006EA60, &qword_1000553E0);
  sub_10000285C();
  sub_100050808();
  (*(v27 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  *(v2 + v16) = sub_100050788();
  *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__networkAvailable) = 1;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 2;
  type metadata accessor for RewritingModel(0);
  swift_allocObject();
  v17 = v34;
  swift_unknownObjectRetain();
  v18 = sub_10003837C(0, 0, 0, 0, v17);
  swift_unknownObjectRelease();
  *(v3 + 24) = v18;
  *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__hostIsReady) = v39;
  v19 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__writingToolsDelegate;
  swift_unknownObjectRetain();
  sub_10000A200(v3 + v19);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  (*(v36 + 104))(v32, enum case for GenerativeModelsAvailability.LanguageOption.any(_:), v38);
  v20 = v30;
  sub_10004FD58();
  v21 = v29;
  sub_10004FDB8();
  (*(v35 + 8))(v20, v37);
  v22 = v40;
  sub_10004FD78();
  (*(v31 + 8))(v21, v33);
  (*(v41 + 32))(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel__gmsAvailability, v22, v42);
  swift_allocObject();
  swift_weakInit();

  sub_100050358();

  v23 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17WritingToolsModel_networkQueue);

  v24 = v23;
  sub_100050368();

  return v3;
}

uint64_t sub_10000A1CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    return sub_10000A1EC(a1, a2);
  }

  if (!a4)
  {
  }

  return a1;
}

uint64_t sub_10000A1EC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t type metadata accessor for WritingToolsModel(uint64_t a1)
{
  result = qword_10006F1A8;
  if (!qword_10006F1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A27C(uint64_t a1)
{
  result = sub_10004FD48();
  if (v2 <= 0x3F)
  {
    result = sub_10004FB98();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

BOOL sub_10000A3E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a2 == 1)
        {
          return a6 != 1;
        }

        if (a6 != 1)
        {
          if (!a2)
          {
            return a6 || ((a3 ^ a7) & 1) != 0;
          }

          if (a6)
          {
            if (a1 == a5 && a2 == a6)
            {
              if ((a3 & 1) != (a7 & 1))
              {
                return 1;
              }
            }

            else
            {
              v9 = a3;
              v10 = a7;
              if (sub_1000509B8() & 1) == 0 || ((v9 ^ v10))
              {
                return 1;
              }
            }

            return 0;
          }
        }
      }
    }

    else
    {
      if (!(a3 | a2 | a1))
      {
        return a8 != 2 || a7 | a6 | a5;
      }

      if (a1 != 1 || a3 | a2)
      {
        if (a8 != 2 || a5 != 2)
        {
          return 1;
        }
      }

      else if (a8 != 2 || a5 != 1)
      {
        return 1;
      }

      if (!(a7 | a6))
      {
        return 0;
      }
    }
  }

  else
  {
    if (a8 || a5 != a1)
    {
      return 1;
    }

    if (a3)
    {
      return !a7 || (a2 != a6 || a3 != a7) && (sub_1000509B8() & 1) == 0;
    }

    if (!a7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10000A594(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    return sub_10000A5B4(a1, a2);
  }

  if (!a4)
  {
  }

  return a1;
}

uint64_t sub_10000A5B4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10000A600()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_10000A63C()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_10000A678(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000A6C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A700()
{
  v1 = sub_1000503C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000A7CC(uint64_t a1)
{
  v4 = *(sub_1000503C8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100006CB4;

  return sub_100009664(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10000A8DC()
{

  return swift_deallocClassInstance();
}

void CompositionMode.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3 == 1)
  {
    sub_100050A88(1uLL);
  }

  else
  {
    sub_100050A88(0);
    if (a3)
    {
      sub_100050A98(1u);
      sub_100050568();
    }

    else
    {
      sub_100050A98(0);
    }

    sub_100050A98(a4 & 1);
  }
}

Swift::Int CompositionMode.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_100050A78();
  if (a2 == 1)
  {
    sub_100050A88(1uLL);
  }

  else
  {
    sub_100050A88(0);
    if (a2)
    {
      sub_100050A98(1u);
      sub_100050568();
    }

    else
    {
      sub_100050A98(0);
    }

    sub_100050A98(a3 & 1);
  }

  return sub_100050AA8();
}

void sub_10000AA78(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 == 1)
  {
    sub_100050A88(1uLL);
  }

  else
  {
    v3 = *(v1 + 16);
    sub_100050A88(0);
    if (v2)
    {
      sub_100050A98(1u);
      sub_100050568();
    }

    else
    {
      sub_100050A98(0);
    }

    sub_100050A98(v3 & 1);
  }
}

Swift::Int sub_10000AAFC(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_100050A78();
  if (v2 == 1)
  {
    sub_100050A88(1uLL);
  }

  else
  {
    sub_100050A88(0);
    if (v2)
    {
      sub_100050A98(1u);
      sub_100050568();
    }

    else
    {
      sub_100050A98(0);
    }

    sub_100050A98(v3 & 1);
  }

  return sub_100050AA8();
}

uint64_t sub_10000ABB4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 > 7u)
    {
      if (a1 == 8)
      {

        return static RewriteType.bullets()();
      }

      else
      {

        return static RewriteType.tables()();
      }
    }

    else if (a1 == 5)
    {

      return static RewriteType.openEnded()();
    }

    else
    {
      if (a1 != 7)
      {
        sub_1000508D8("Fatal error", 11, 2, 0xD000000000000021, 0x8000000100051920, "WritingToolsAppIntentsExtension/Mode.swift", 42, 2, 45, 0);
        __break(1u);
        return static RewriteType.professional()();
      }

      return sub_10004FC78();
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {

      return static RewriteType.proofreading()();
    }

    else
    {

      return static RewriteType.magic()();
    }
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {

        return static RewriteType.friendly()();
      }

      return static RewriteType.professional()();
    }

    return static RewriteType.concise()();
  }
}

uint64_t sub_10000ACE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_10004FB38();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000504D8();
  __chkstk_darwin(v5 - 8);
  sub_100050468();
  sub_10004FB08();
  return sub_100050528();
}

uint64_t sub_10000AF9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    return qword_100056968[a1];
  }

  if (a4 == 1)
  {
    return 10;
  }

  if (a4 == 2 && a1 == 2 && !(a3 | a2))
  {
    return 11;
  }

  return 0;
}

void Mode.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  if (a5)
  {
    if (a5 == 1)
    {
      sub_100050A88(3uLL);
      if (a3 != 1)
      {
        sub_100050A88(0);
        if (a3)
        {
          sub_100050A98(1u);
          sub_100050568();
        }

        else
        {
          sub_100050A98(0);
        }

        v9 = a4 & 1;
        goto LABEL_20;
      }
    }

    else
    {
      if (!(a4 | a3 | a2))
      {
        v8 = 0;
        goto LABEL_17;
      }

      if (a2 != 1 || a4 | a3)
      {
        v8 = 4;
        goto LABEL_17;
      }
    }

    v8 = 1;
LABEL_17:
    sub_100050A88(v8);
    return;
  }

  sub_100050A88(2uLL);
  sub_100050A88(v7);
  if (!a4)
  {
    v9 = 0;
LABEL_20:
    sub_100050A98(v9);
    return;
  }

  sub_100050A98(1u);

  sub_100050568();
}

Swift::Int Mode.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_100050A78();
  Mode.hash(into:)(v9, a1, a2, a3, a4);
  return sub_100050AA8();
}

Swift::Int sub_10000B168()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_100050A78();
  Mode.hash(into:)(v6, v1, v2, v3, v4);
  return sub_100050AA8();
}

Swift::Int sub_10000B1DC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_100050A78();
  Mode.hash(into:)(v7, v2, v3, v4, v5);
  return sub_100050AA8();
}

BOOL _s31WritingToolsAppIntentsExtension15CompositionModeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == 1)
  {
    return a5 == 1;
  }

  if (a5 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v7 = a3;
      v8 = a6;
      v9 = sub_1000509B8();
      a3 = v7;
      a6 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  return (a6 ^ a3 ^ 1) & 1;
}

BOOL _s31WritingToolsAppIntentsExtension4ModeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a2 == 1)
        {
          return a6 == 1;
        }

        if (a6 != 1)
        {
          if (!a2)
          {
            return !a6 && ((a3 ^ a7) & 1) == 0;
          }

          if (a6)
          {
            if (a1 == a5 && a2 == a6)
            {
              if ((a3 & 1) != (a7 & 1))
              {
                return 0;
              }
            }

            else
            {
              v9 = a3;
              v10 = a7;
              if (sub_1000509B8() & 1) == 0 || ((v9 ^ v10))
              {
                return 0;
              }
            }

            return 1;
          }
        }
      }
    }

    else
    {
      if (!(a3 | a2 | a1))
      {
        return a8 == 2 && !(a7 | a6 | a5);
      }

      if (a1 != 1 || a3 | a2)
      {
        if (a8 != 2 || a5 != 2)
        {
          return 0;
        }
      }

      else if (a8 != 2 || a5 != 1)
      {
        return 0;
      }

      if (!(a7 | a6))
      {
        return 1;
      }
    }
  }

  else
  {
    if (a8 || a5 != a1)
    {
      return 0;
    }

    if (a3)
    {
      return a7 && (a2 == a6 && a3 == a7 || (sub_1000509B8() & 1) != 0);
    }

    if (!a7)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_10000B484()
{
  result = qword_10006F6E8;
  if (!qword_10006F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F6E8);
  }

  return result;
}

unint64_t sub_10000B4DC()
{
  result = qword_10006F6F0;
  if (!qword_10006F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F6F0);
  }

  return result;
}

unint64_t sub_10000B534()
{
  result = qword_10006F6F8;
  if (!qword_10006F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F6F8);
  }

  return result;
}

uint64_t sub_10000B588(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_10000B5AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000B5C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000B61C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10000B67C(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RewriteType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RewriteType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000B80C(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 sub_10000B828(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10000B83C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000B884(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10000B8CC(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for HandoffState(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandoffState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000BA6C()
{
  if (*v0)
  {
    return 0x657669746361;
  }

  else
  {
    return 0x6576697463616E69;
  }
}

unint64_t sub_10000BAA8()
{
  result = qword_10006F700;
  if (!qword_10006F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F700);
  }

  return result;
}

uint64_t sub_10000BAFC()
{
  v118 = sub_10004FD18();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v115 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100002814(&qword_10006F708, &qword_100056A78);
  __chkstk_darwin(v1 - 8);
  v140 = &v115 - v2;
  v3 = sub_100002814(&qword_10006F710, &unk_100056A80);
  v4 = __chkstk_darwin(v3 - 8);
  v126 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v141 = &v115 - v6;
  v7 = sub_10004FD38();
  v143 = *(v7 - 8);
  v144 = v7;
  v8 = __chkstk_darwin(v7);
  v142 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v119 = &v115 - v11;
  v12 = __chkstk_darwin(v10);
  v115 = &v115 - v13;
  __chkstk_darwin(v12);
  v120 = &v115 - v14;
  v122 = sub_10004FD08();
  v121 = *(v122 - 8);
  v15 = __chkstk_darwin(v122);
  v123 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v127 = &v115 - v17;
  v18 = sub_10004FD48();
  v145 = *(v18 - 8);
  v146 = v18;
  __chkstk_darwin(v18);
  v20 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10004FD88();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10004FD68();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10004FDD8();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v131 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v115 - v33;
  v35 = *(v22 + 104);
  v130 = enum case for GenerativeModelsAvailability.LanguageOption.any(_:);
  v138 = v22 + 104;
  v139 = v21;
  v129 = v35;
  v35(v24);
  v136 = v24;
  sub_10004FD58();
  sub_10004FDB8();
  v36 = *(v26 + 8);
  v133 = v28;
  v137 = v25;
  v135 = v26 + 8;
  v128 = v36;
  v36(v28, v25);
  sub_10004FD78();
  v37 = *(v30 + 8);
  v38 = v34;
  v39 = v146;
  v134 = v29;
  v132 = v30 + 8;
  (v37)(v38, v29);
  v40 = v145;
  v41 = *(v145 + 88);
  v125 = v145 + 88;
  v124 = v41;
  v42 = v41(v20, v39);
  if (v42 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    (*(v40 + 96))(v20, v39);
    v43 = v121;
    v44 = v127;
    v45 = v122;
    (*(v121 + 32))(v127, v20, v122);
    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v46 = sub_100050188();
    sub_1000071F4(v46, qword_10007B4F8);
    v47 = v123;
    (*(v43 + 16))(v123, v44, v45);
    v48 = sub_100050168();
    v49 = sub_100050758();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v147 = v51;
      *v50 = 136315138;
      sub_10000CCBC(&qword_10006F720, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo);
      v52 = sub_100050998();
      v53 = v47;
      v54 = v37;
      v56 = v55;
      v57 = *(v43 + 8);
      v57(v53, v45);
      v58 = sub_100046C30(v52, v56, &v147);
      v37 = v54;

      *(v50 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v48, v49, "isComposeModelsAvailable: restricted, info = %s", v50, 0xCu);
      sub_10000CC70(v51);

      v57(v127, v45);
    }

    else
    {

      v75 = *(v43 + 8);
      v75(v47, v45);
      v75(v44, v45);
    }

    v76 = 0;
    v77 = v142;
    v59 = v143;
    v78 = v140;
    v60 = v145;
  }

  else
  {
    v59 = v143;
    if (v42 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      v60 = v40;
      (*(v40 + 96))(v20, v39);
      v61 = v120;
      (*(v59 + 32))(v120, v20, v144);
      if (qword_10006EA00 != -1)
      {
        swift_once();
      }

      v127 = v37;
      v62 = sub_100050188();
      sub_1000071F4(v62, qword_10007B4F8);
      v63 = v115;
      (*(v59 + 16))(v115, v61, v144);
      v64 = sub_100050168();
      v65 = sub_100050758();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v123 = v66;
        v67 = swift_slowAlloc();
        v147 = v67;
        *v66 = 136315138;
        sub_10000CCBC(&qword_10006F718, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo);
        v68 = v144;
        v69 = sub_100050998();
        v71 = v70;
        v72 = *(v143 + 8);
        v72(v63, v68);
        v73 = sub_100046C30(v69, v71, &v147);

        v74 = v123;
        *(v123 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v64, v65, "isComposeModelsAvailable: unavailable, info = %s", v74, 0xCu);
        sub_10000CC70(v67);
        v60 = v40;

        v72(v120, v68);
        v59 = v143;
      }

      else
      {

        v79 = *(v59 + 8);
        v80 = v144;
        v79(v63, v144);
        v79(v61, v80);
      }

      v76 = 0;
      v77 = v142;
      v78 = v140;
      v37 = v127;
    }

    else
    {
      v60 = v40;
      if (v42 == enum case for GenerativeModelsAvailability.Availability.available(_:))
      {
        v76 = 1;
        v77 = v142;
      }

      else
      {
        v77 = v142;
        if (qword_10006EA00 != -1)
        {
          swift_once();
        }

        v81 = sub_100050188();
        sub_1000071F4(v81, qword_10007B4F8);
        v82 = sub_100050168();
        v83 = sub_100050748();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&_mh_execute_header, v82, v83, "isComposeModelsAvailable: @unknown default", v84, 2u);
        }

        (*(v40 + 8))(v20, v146);
        v76 = 0;
      }

      v78 = v140;
    }
  }

  v129(v136, v130, v139);
  v85 = v133;
  sub_10004FD58();
  v86 = v131;
  sub_10004FDB8();
  v128(v85, v137);
  sub_10004FDC8();
  (v37)(v86, v134);
  v87 = sub_10004FDA8();
  v88 = *(v87 - 8);
  if ((*(v88 + 48))(v78, 1, v87) == 1)
  {
    sub_10000CBA0(v78, &qword_10006F708, &qword_100056A78);
    v89 = v141;
    (*(v60 + 56))(v141, 1, 1, v146);
    sub_10000CBA0(v89, &qword_10006F710, &unk_100056A80);
  }

  else
  {
    v90 = v141;
    sub_10004FD98();
    (*(v88 + 8))(v78, v87);
    v91 = v146;
    (*(v60 + 56))(v90, 0, 1, v146);
    v92 = v126;
    sub_10000CC00(v90, v126);
    if (v124(v92, v91) == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      (*(v60 + 96))(v92, v91);
      v93 = v119;
      (*(v59 + 32))(v119, v92, v144);
      v94 = sub_10004FD28();
      v95 = v117;
      v96 = v116;
      v97 = v118;
      (*(v117 + 104))(v116, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.useCaseDoesNotAllowUserLocaleRegion(_:), v118);
      v98 = sub_100027078(v96, v94);

      (*(v95 + 8))(v96, v97);
      if (v98)
      {
        if (qword_10006EA00 != -1)
        {
          swift_once();
        }

        v99 = sub_100050188();
        sub_1000071F4(v99, qword_10007B4F8);
        (*(v59 + 16))(v77, v93, v144);
        v100 = sub_100050168();
        v101 = sub_100050758();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = v93;
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v147 = v104;
          *v103 = 136315138;
          sub_10000CCBC(&qword_10006F718, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo);
          v105 = v144;
          v106 = sub_100050998();
          v107 = v77;
          v109 = v108;
          v110 = *(v59 + 8);
          v110(v107, v105);
          v111 = sub_100046C30(v106, v109, &v147);

          *(v103 + 4) = v111;
          _os_log_impl(&_mh_execute_header, v100, v101, "isComposeModelsAvailable: partner unavailable,  setting available to false, info = %s", v103, 0xCu);
          sub_10000CC70(v104);

          v110(v102, v105);
        }

        else
        {

          v112 = *(v59 + 8);
          v113 = v144;
          v112(v77, v144);
          v112(v93, v113);
        }

        return 0;
      }

      else
      {
        (*(v59 + 8))(v93, v144);
      }
    }

    else
    {
      (*(v60 + 8))(v92, v91);
    }
  }

  return v76;
}

uint64_t sub_10000CBA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002814(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000CC00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&qword_10006F710, &unk_100056A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CC70(void *a1)
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

uint64_t sub_10000CCBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for WritingTools(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WritingTools(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000CE58()
{
  result = qword_10006F728;
  if (!qword_10006F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F728);
  }

  return result;
}

const char *sub_10000CEAC(char a1)
{
  result = "Panel_iOS";
  switch(a1)
  {
    case 1:
      result = "Panel_iPadOS";
      break;
    case 2:
      result = "Panel_macOS";
      break;
    case 3:
      result = "OpenEndedAdjustmentV2_FollowUp";
      break;
    case 4:
      result = "Montara";
      break;
    case 5:
      result = "Montara_PersonalInfoSearch";
      break;
    case 6:
      result = "Montara_PromptEntryView";
      break;
    case 7:
      result = "Montara_SlotFill";
      break;
    case 8:
      result = "Montara_PopoverAdjustment";
      break;
    case 9:
      result = "Montara_Streaming";
      break;
    case 10:
      result = "Montara_FullScreen_SceneHosting";
      break;
    case 11:
      result = "CustomQuestionnaireEntry";
      break;
    case 12:
      result = "AlternateQuestionnaire_macOS";
      break;
    case 13:
      result = "AlternateQuestionnaire_iPadOS";
      break;
    case 14:
      result = "FeedbackFCSBehavior";
      break;
    case 15:
      result = "Formatting_v2";
      break;
    case 16:
      result = "Panel_visionOS";
      break;
    case 17:
      result = "NativeRedesign_visionOS";
      break;
    default:
      return result;
  }

  return result;
}

__n128 sub_10000D0B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000D0CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10000D114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000D174@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10000D180(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_10000E388(v7, v8) & 1;
}

uint64_t sub_10000D1D8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10000D208@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_10000D2A8(uint64_t a1)
{
  v2 = sub_10000D678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000D2E4(uint64_t a1)
{
  v2 = sub_10000D678();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000D320(void *a1, uint64_t a2)
{
  v35 = sub_100002814(&qword_10006F730, &qword_100056C40);
  v24 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v24 - v5;
  sub_10000D634(a1, a1[3]);
  sub_10000D678();
  v26 = v6;
  sub_100050AC8();
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;
  v25 = a2;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_12:
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v18 = v17 | (v14 << 6);
      v19 = (*(v25 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      sub_10000D6CC(*(v25 + 56) + 40 * v18, v27);
      *&v28 = v21;
      *(&v28 + 1) = v20;
      sub_1000050D8(v27, &v29);

      v16 = v14;
LABEL_13:
      v32 = v28;
      v33[0] = v29;
      v33[1] = v30;
      v34 = v31;
      v22 = *(&v28 + 1);
      if (!*(&v28 + 1))
      {

        return (*(v24 + 8))(v26, v35);
      }

      v23 = v32;
      sub_1000050D8(v33, &v28);
      sub_10000D634(&v28, *(&v29 + 1));
      *&v27[0] = v23;
      *(&v27[0] + 1) = v22;
      sub_100050988();
      if (v2)
      {
        break;
      }

      result = sub_10000CC70(&v28);
      v13 = v16;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    (*(v24 + 8))(v26, v35);
    return sub_10000CC70(&v28);
  }

  else
  {
LABEL_5:
    if (v11 <= v13 + 1)
    {
      v15 = v13 + 1;
    }

    else
    {
      v15 = v11;
    }

    v16 = v15 - 1;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        v10 = 0;
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        goto LABEL_13;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_10000D634(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000D678()
{
  result = qword_10006F738;
  if (!qword_10006F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F738);
  }

  return result;
}

uint64_t sub_10000D6CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000D730(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1000509B8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10000D7C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    while (1)
    {
      v6 = (v4 + (v3 << 6));
      v7 = v6[1];
      v22 = *v6;
      v23 = v7;
      v8 = v6[3];
      v24 = v6[2];
      v25 = v8;
      v9 = (v5 + (v3 << 6));
      v10 = v9[1];
      v26 = *v9;
      v27 = v10;
      v11 = v9[3];
      v28 = v9[2];
      v29 = v11;
      if (v22 != v26 && (sub_1000509B8() & 1) == 0)
      {
        break;
      }

      v12 = *(v23 + 16);
      if (v12 != *(v27 + 16))
      {
        break;
      }

      if (v12 && v23 != v27)
      {
        v13 = (v23 + 40);
        v14 = (v27 + 40);
        do
        {
          v15 = *(v13 - 1) == *(v14 - 1) && *v13 == *v14;
          if (!v15 && (sub_1000509B8() & 1) == 0)
          {
            return 0;
          }

          v13 += 2;
          v14 += 2;
        }

        while (--v12);
      }

      v16 = *(&v23 + 1);
      v17 = *(&v27 + 1);
      sub_10000E528(&v22, v21);
      sub_10000E528(&v26, v21);
      if ((sub_10000E060(v16, v17) & 1) == 0)
      {
        goto LABEL_34;
      }

      if (*(&v24 + 1))
      {
        if (!*(&v28 + 1) || v24 != v28 && (sub_1000509B8() & 1) == 0)
        {
LABEL_34:
          sub_10000E584(&v26);
          sub_10000E584(&v22);
          return 0;
        }
      }

      else if (*(&v28 + 1))
      {
        goto LABEL_34;
      }

      v18 = *(&v29 + 1);
      if (*(&v25 + 1))
      {
        if (!*(&v29 + 1))
        {
          goto LABEL_34;
        }

        if (v25 == v29)
        {
          sub_10000E584(&v26);
          sub_10000E584(&v22);
        }

        else
        {
          v19 = sub_1000509B8();
          sub_10000E584(&v26);
          sub_10000E584(&v22);
          if ((v19 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        sub_10000E584(&v26);
        sub_10000E584(&v22);
        if (v18)
        {
          return 0;
        }
      }

      if (++v3 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10000DA18(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_10000E5D8(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = sub_100050878();
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = sub_100050878();
LABEL_26:
        v19 = v18;
        v20 = sub_1000507A8();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1000507A8();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1000508E8();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1000508E8();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10000DC80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v27 = v2;
  v28 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v21 = *v5;
    v22 = v8;
    v9 = v5[3];
    *v23 = v5[2];
    *&v23[16] = v9;
    v10 = v6[1];
    v24 = *v6;
    v25 = v10;
    v11 = v6[3];
    *v26 = v6[2];
    *&v26[16] = v11;
    if (v21 != v24 && (sub_1000509B8() & 1) == 0 || v22 != v25 && (sub_1000509B8() & 1) == 0)
    {
      return 0;
    }

    if (v23[0])
    {
      if (v23[0] == 1)
      {
        v12 = 0x74786554676E6F6CLL;
      }

      else
      {
        v12 = 0x6F746F6870;
      }

      if (v23[0] == 1)
      {
        v13 = 0xE800000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      v14 = v26[0];
      if (v26[0])
      {
LABEL_17:
        if (v14 == 1)
        {
          v15 = 0x74786554676E6F6CLL;
        }

        else
        {
          v15 = 0x6F746F6870;
        }

        if (v14 == 1)
        {
          v16 = 0xE800000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }

        if (v12 != v15)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v12 = 0x78655474726F6873;
      v13 = 0xE900000000000074;
      v14 = v26[0];
      if (v26[0])
      {
        goto LABEL_17;
      }
    }

    v16 = 0xE900000000000074;
    if (v12 != 0x78655474726F6873)
    {
      goto LABEL_29;
    }

LABEL_27:
    if (v13 == v16)
    {
      sub_10000E6E0(&v21, v20);
      sub_10000E6E0(&v24, v20);

      goto LABEL_30;
    }

LABEL_29:
    v17 = sub_1000509B8();
    sub_10000E6E0(&v21, v20);
    sub_10000E6E0(&v24, v20);

    if ((v17 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (*&v23[8] != *&v26[8] && (sub_1000509B8() & 1) == 0)
    {
LABEL_37:
      sub_10000E718(&v24);
      sub_10000E718(&v21);
      return 0;
    }

    v18 = sub_10000D7C0(*&v23[24], *&v26[24]);
    sub_10000E718(&v24);
    sub_10000E718(&v21);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

BOOL sub_10000DEEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_10000E620(v13, v10);
        sub_10000E620(v14, v7);
        v16 = sub_100047500(v10, v7);
        sub_10000E684(v7);
        sub_10000E684(v10);
        if (!v16)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    return 0;
  }

  return v16;
}

uint64_t sub_10000E060(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_100050A78();

    sub_100050568();
    v16 = sub_100050AA8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1000509B8() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10000E218(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    sub_100050A78();
    sub_100050A88(v13);
    result = sub_100050AA8();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E388(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1000509B8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1000509B8() & 1) == 0)
  {
    return 0;
  }

  v6 = 0xE800000000000000;
  v7 = 0x74786554676E6F6CLL;
  if (*(a1 + 32) != 1)
  {
    v7 = 0x6F746F6870;
    v6 = 0xE500000000000000;
  }

  if (*(a1 + 32))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x78655474726F6873;
  }

  if (*(a1 + 32))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE900000000000074;
  }

  v10 = 0xE800000000000000;
  v11 = 0x74786554676E6F6CLL;
  if (*(a2 + 32) != 1)
  {
    v11 = 0x6F746F6870;
    v10 = 0xE500000000000000;
  }

  if (*(a2 + 32))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x78655474726F6873;
  }

  if (*(a2 + 32))
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE900000000000074;
  }

  if (v8 == v12 && v9 == v13)
  {
  }

  else
  {
    v14 = sub_1000509B8();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if ((a1[5] != *(a2 + 40) || a1[6] != *(a2 + 48)) && (sub_1000509B8() & 1) == 0)
  {
    return 0;
  }

  v15 = a1[7];
  v16 = *(a2 + 56);

  return sub_10000D7C0(v15, v16);
}

uint64_t sub_10000E5D8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000E620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E684(uint64_t a1)
{
  v2 = type metadata accessor for Attachment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E748(uint64_t a1, int a2)
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

uint64_t sub_10000E790(uint64_t result, int a2, int a3)
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

unint64_t sub_10000E7E0()
{
  result = qword_10006F750;
  if (!qword_10006F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F750);
  }

  return result;
}

unint64_t sub_10000E838()
{
  result = qword_10006F758;
  if (!qword_10006F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F758);
  }

  return result;
}

uint64_t sub_10000E88C()
{
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858, &unk_100056D78);
  sub_10004FB58();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_10000E928@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858, &unk_100056D78);
  sub_10004FB58();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_10000E9C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_1000509B8() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100010B38(&qword_10006F858, &unk_100056D78);
    sub_10004FB48();
  }
}

uint64_t sub_10000EB0C()
{
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858, &unk_100056D78);
  sub_10004FB58();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_10000EBA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858, &unk_100056D78);
  sub_10004FB58();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_10000EC40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_1000509B8() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100010B38(&qword_10006F858, &unk_100056D78);
    sub_10004FB48();
  }
}

uint64_t sub_10000ED8C()
{
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858, &unk_100056D78);
  sub_10004FB58();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_10000EE28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858, &unk_100056D78);
  sub_10004FB58();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_10000EEC0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_1000509B8() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100010B38(&qword_10006F858, &unk_100056D78);
    sub_10004FB48();
  }
}

uint64_t sub_10000F00C()
{
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858, &unk_100056D78);
  sub_10004FB58();

  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_10000F0A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858, &unk_100056D78);
  sub_10004FB58();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_10000F140(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (sub_1000509B8() & 1) != 0)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100010B38(&qword_10006F858, &unk_100056D78);
    sub_10004FB48();
  }
}

uint64_t sub_10000F28C()
{
  v0 = sub_100050118();
  sub_100007390(v0, qword_10007B2B0);
  sub_1000071F4(v0, qword_10007B2B0);
  sub_100002814(&qword_10006F850, &qword_100056EF8);
  sub_1000500F8();
  *(swift_allocObject() + 16) = xmmword_100056D10;
  sub_1000500D8();
  sub_1000500D8();
  return sub_100050108();
}

uint64_t sub_10000F40C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100002814(&qword_10006F898, &qword_1000571C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000D634(a1, a1[3]);
  sub_1000111D8();
  sub_100050AC8();
  v14 = 0;
  sub_100050978();
  if (!v5)
  {
    v13 = 1;
    sub_100050978();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10000F5A0()
{
  if (*v0)
  {
    return 0x74706D6F7270;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_10000F5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1000509B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000509B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10000F6C0(uint64_t a1)
{
  v2 = sub_1000111D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F6FC(uint64_t a1)
{
  v2 = sub_1000111D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000F77C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1000500B8();
  if (v2)
  {
    v5 = sub_1000500C8();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    sub_1000500B8();
    v7 = sub_1000500C8();
    result = (*(*(v7 - 8) + 8))(a1, v7);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v8;
    a2[3] = v9;
  }

  return result;
}

uint64_t sub_10000F8E0()
{

  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension11SummaryTool___observationRegistrar;
  v2 = sub_10004FB98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummaryTool(uint64_t a1)
{
  result = qword_10006F790;
  if (!qword_10006F790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F9F0(uint64_t a1)
{
  result = sub_10004FB98();
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

uint64_t sub_10000FA90(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3[2] = *a2;
  v3[3] = v4;
  v5 = a2[3];
  v3[4] = a2[2];
  v3[5] = v5;
  v3[6] = *v2;

  return _swift_task_switch(sub_10000FB18, 0, 0);
}

uint64_t sub_10000FB18()
{
  v1 = v0[5];
  v2 = v0[4];
  sub_10000EEC0(v0[2], v0[3]);
  sub_10000F140(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10000FB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000118D4;

  return Tooling.invoke(arguments:)(a1, a2, a3, a4);
}

uint64_t sub_10000FC5C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858, &unk_100056D78);
  sub_10004FB58();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_10000FCF8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100010B38(&qword_10006F858, &unk_100056D78);
  sub_10004FB58();

  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_10000FD94(uint64_t a1)
{
  v2 = sub_100010B38(&qword_10006F860, &unk_100056E50);

  return Tooling.argumentsSchema.getter(a1, v2);
}

uint64_t sub_10000FDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = sub_100010B38(&qword_10006F860, &unk_100056E50);
  *v7 = v3;
  v7[1] = sub_100006CB4;

  return Tooling.invoke(arguments:)(a1, a2, a3, v8);
}

uint64_t sub_10000FEDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x74786554676E6F6CLL;
  if (v2 != 1)
  {
    v4 = 0x6F746F6870;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x78655474726F6873;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  v7 = 0xE800000000000000;
  v8 = 0x74786554676E6F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x6F746F6870;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x78655474726F6873;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000074;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000509B8();
  }

  return v11 & 1;
}

Swift::Int sub_10000FFD8()
{
  sub_100050A78();
  sub_100050568();

  return sub_100050AA8();
}

uint64_t sub_10001007C(uint64_t a1)
{
  sub_100050568();
}

Swift::Int sub_10001010C(uint64_t a1)
{
  sub_100050A78();
  sub_100050568();

  return sub_100050AA8();
}

unint64_t sub_1000101AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100010C7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000101DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0xE800000000000000;
  v5 = 0x74786554676E6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6F746F6870;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x78655474726F6873;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000102FC()
{
  v0 = sub_100050118();
  sub_100007390(v0, qword_10007B2C8);
  sub_1000071F4(v0, qword_10007B2C8);
  sub_100002814(&qword_10006F850, &qword_100056EF8);
  sub_1000500F8();
  *(swift_allocObject() + 16) = xmmword_100056D20;
  sub_1000500E8();
  sub_1000500E8();
  sub_100010EB8();
  sub_1000500E8();
  return sub_100050108();
}

uint64_t sub_100010484(void *a1)
{
  v3 = v1;
  v5 = sub_100002814(&qword_10006F8C0, &qword_1000571D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000D634(a1, a1[3]);
  sub_1000115A0();
  sub_100050AC8();
  v10[15] = 0;
  sub_100050978();
  if (!v2)
  {
    v10[14] = 1;
    sub_100050978();
    v10[13] = *(v3 + 32);
    v10[12] = 2;
    sub_100011648();
    sub_100050988();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100010664()
{
  v1 = 0x7972657571;
  if (*v0 != 1)
  {
    v1 = 0x6570795461746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1000106B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001122C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000106E8(uint64_t a1)
{
  v2 = sub_1000115A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010724(uint64_t a1)
{
  v2 = sub_1000115A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100010760@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100011340(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000107E4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_100050118();
  v7 = sub_1000071F4(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

double sub_100010880@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_100010CC8(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000108C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100010F0C();
  v5 = sub_100010F60();

  return static CaseIterable<>.schema.getter(a1, a2, v4, v5);
}

uint64_t sub_100010930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100010F0C();
  sub_100010F60();
  return sub_100050858();
}

unint64_t sub_1000109D4()
{
  result = qword_10006F840;
  if (!qword_10006F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F840);
  }

  return result;
}

unint64_t sub_100010A2C()
{
  result = qword_10006F848;
  if (!qword_10006F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F848);
  }

  return result;
}

uint64_t sub_100010A9C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

uint64_t sub_100010AF8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_100010B38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SummaryTool(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010B98()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_100010BF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_100010C3C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

unint64_t sub_100010C7C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006A148;
  v6._object = a2;
  v4 = sub_100050938(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100010CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000500B8();
  if (v2)
  {
    v5 = sub_1000500C8();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    sub_1000500B8();
    sub_100010EB8();
    sub_1000500B8();
    v7 = sub_1000500C8();
    result = (*(*(v7 - 8) + 8))(a1, v7);
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = v8;
  }

  return result;
}

unint64_t sub_100010EB8()
{
  result = qword_10006F868;
  if (!qword_10006F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F868);
  }

  return result;
}

unint64_t sub_100010F0C()
{
  result = qword_10006F870;
  if (!qword_10006F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F870);
  }

  return result;
}

unint64_t sub_100010F60()
{
  result = qword_10006F878;
  if (!qword_10006F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F878);
  }

  return result;
}

__n128 sub_100010FB4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100010FC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100011008(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100011058(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001106C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1000110B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001111C()
{
  result = qword_10006F880;
  if (!qword_10006F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F880);
  }

  return result;
}

unint64_t sub_100011174()
{
  result = qword_10006F888;
  if (!qword_10006F888)
  {
    sub_1000028C0(&qword_10006F890, &qword_100057180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F888);
  }

  return result;
}

unint64_t sub_1000111D8()
{
  result = qword_10006F8A0;
  if (!qword_10006F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8A0);
  }

  return result;
}

uint64_t sub_10001122C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000509B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_1000509B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000509B8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100011340@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002814(&qword_10006F8A8, &qword_1000571C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_10000D634(a1, a1[3]);
  sub_1000115A0();
  sub_100050AB8();
  if (v2)
  {
    return sub_10000CC70(a1);
  }

  v23 = 0;
  v9 = sub_100050948();
  v11 = v10;
  v19 = v9;
  v22 = 1;
  v17 = sub_100050948();
  v18 = v12;
  v20 = 2;
  sub_1000115F4();
  sub_100050958();
  (*(v6 + 8))(v8, v5);
  v13 = v21;
  result = sub_10000CC70(a1);
  *a2 = v19;
  *(a2 + 8) = v11;
  v15 = v18;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;
  *(a2 + 32) = v13;
  return result;
}

unint64_t sub_1000115A0()
{
  result = qword_10006F8B0;
  if (!qword_10006F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8B0);
  }

  return result;
}

unint64_t sub_1000115F4()
{
  result = qword_10006F8B8;
  if (!qword_10006F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8B8);
  }

  return result;
}

unint64_t sub_100011648()
{
  result = qword_10006F8C8;
  if (!qword_10006F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8C8);
  }

  return result;
}

unint64_t sub_1000116C8()
{
  result = qword_10006F8D0;
  if (!qword_10006F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8D0);
  }

  return result;
}

unint64_t sub_100011720()
{
  result = qword_10006F8D8;
  if (!qword_10006F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8D8);
  }

  return result;
}

unint64_t sub_100011778()
{
  result = qword_10006F8E0;
  if (!qword_10006F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8E0);
  }

  return result;
}

unint64_t sub_1000117D0()
{
  result = qword_10006F8E8;
  if (!qword_10006F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8E8);
  }

  return result;
}

unint64_t sub_100011828()
{
  result = qword_10006F8F0;
  if (!qword_10006F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8F0);
  }

  return result;
}

unint64_t sub_100011880()
{
  result = qword_10006F8F8;
  if (!qword_10006F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8F8);
  }

  return result;
}

void *sub_1000118E8()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_100011960(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100013C90();
  v5 = v4;
  v6 = a1;
  v7 = sub_1000507A8();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_100011AB0()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  return *(v0 + 64);
}

uint64_t sub_100011B20(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();
  }

  return result;
}

uint64_t sub_100011C00()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1000131F8();
  sub_10004FB58();

  v1 = *(v0 + 72);
  sub_100013C24(v1, *(v3 + 80), *(v3 + 88), *(v3 + 96));
  return v1;
}

uint64_t sub_100011C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = *(v4 + 72);
  v10 = *(v4 + 80);
  v11 = *(v4 + 88);
  v12 = *(v4 + 96);
  if (sub_1000132AC(v9, v10, v11, v12, a1, a2, a3, a4))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();
    sub_100013054(a1, a2, a3, v5);
  }

  else
  {
    *(v4 + 72) = a1;
    *(v4 + 80) = a2;
    *(v4 + 88) = a3;
    *(v4 + 96) = v5;

    return sub_100013054(v9, v10, v11, v12);
  }
}

uint64_t sub_100011E1C()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();
}

uint64_t sub_100011E90(unint64_t a1)
{
  if (!*(v1 + 104))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_10000D9F0(v3, a1);

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 104) = a1;
}

uint64_t sub_100011FC8(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = a2;
}

uint64_t sub_100012004()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  v1 = *(v0 + 120);
  swift_errorRetain();
  return v1;
}

uint64_t sub_100012080@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  *a2 = *(v3 + 120);
  return swift_errorRetain();
}

uint64_t sub_1000120FC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB48();
}

uint64_t sub_100012198(uint64_t a1)
{
  if (a1)
  {
    swift_getErrorValue();
    v2 = sub_10001F260(v9, v10);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();
  }

  else
  {
    v4 = swift_getKeyPath();
    __chkstk_darwin(v4);
    sub_1000131F8();
    sub_10004FB48();
  }

  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  if (!*(v1 + 120))
  {
  }

  swift_getKeyPath();
  sub_10004FB58();

  if (*(v1 + 128) & 1) != 0 || (sub_100012E5C())
  {
  }

  swift_getKeyPath();
  sub_10004FB58();

  v6 = *(v1 + 120);
  v7 = *(*v1 + 848);
  swift_errorRetain();
  v7(0, v6, 0, 0);

  if (*(v1 + 128) == 1)
  {

    *(v1 + 128) = 1;
  }

  else
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    sub_10004FB48();
  }

  return result;
}

uint64_t sub_1000124F8()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  return *(v0 + 128);
}

uint64_t sub_100012568@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_1000125E0(uint64_t result)
{
  if (*(v1 + 128) == (result & 1))
  {
    *(v1 + 128) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();
  }

  return result;
}

void sub_1000126C0(char a1)
{
  v3 = sub_10004F9A8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v1 + 688))(v5) & 1) != 0 && (sub_100012E5C() & 1) == 0 && (a1)
  {
    swift_getKeyPath();
    v12[1] = v1;
    sub_1000131F8();
    sub_10004FB58();

    if ((v1[144] & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        if ([Strong respondsToSelector:"showContentWarningWithTitle:message:"])
        {
          if (qword_10006E9D0 != -1)
          {
            swift_once();
          }

          v10 = sub_1000071F4(v3, qword_10007B438);
          (*(v4 + 16))(v7, v10, v3);
          sub_100050538();
          v11 = sub_1000504E8();

          [v9 showContentWarningWithTitle:0 message:v11];
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_1000128D0()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  return *(v0 + 136);
}

void sub_100012940(uint64_t a1)
{
  if (*(v1 + 136) == a1)
  {
    sub_1000126C0(a1);
    *(v1 + 136) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();
  }
}

uint64_t sub_100012A64(uint64_t result)
{
  if ((result & 1) == 0)
  {
    v2 = v1;
    swift_getKeyPath();
    sub_1000131F8();
    sub_10004FB58();

    if (*(v1 + 144) == 1)
    {
      (*(*v1 + 840))(result);
      swift_getKeyPath();
      sub_10004FB58();

      if (*(v1 + 120))
      {
        swift_getKeyPath();
        sub_10004FB58();

        if ((*(v1 + 128) & 1) == 0)
        {
          result = swift_unknownObjectWeakLoadStrong();
          if (result)
          {
            v3 = result;
            swift_getKeyPath();
            sub_10004FB58();

            if (*(v1 + 120))
            {
              swift_errorRetain();
              v4 = sub_10004F958();
            }

            else
            {
              v4 = 0;
            }

            [v3 endWritingToolsWithError:v4];

            result = swift_unknownObjectRelease();
          }

          if (*(v2 + 128) == 1)
          {
            *(v2 + 128) = 1;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);
            sub_10004FB48();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100012CB4()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  return *(v0 + 144);
}

uint64_t sub_100012D24(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 144);
  if (v3 == v2)
  {
    *(v1 + 144) = v2;

    return sub_100012A64(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000131F8();
    sub_10004FB48();
  }
}

uint64_t sub_100012E28(uint64_t a1, char a2)
{
  v3 = *(a1 + 144);
  *(a1 + 144) = a2;
  return sub_100012A64(v3);
}

uint64_t sub_100012E5C()
{
  swift_getKeyPath();
  sub_1000131F8();
  sub_10004FB58();

  if (v0[128] & 1) == 0 && (swift_getKeyPath(), sub_10004FB58(), , (v0[136]))
  {
    swift_getKeyPath();
    sub_10004FB58();

    v1 = v0[144] ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t ToolModel.deinit()
{
  sub_10000A200(v0 + 16);

  sub_100013054(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension9ToolModel___observationRegistrar;
  v2 = sub_10004FB98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100013054(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_10000A1CC(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t ToolModel.__deallocating_deinit()
{
  ToolModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ToolModel(uint64_t a1)
{
  result = qword_10006F930;
  if (!qword_10006F930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013114(uint64_t a1)
{
  result = sub_10004FB98();
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

unint64_t sub_1000131F8()
{
  result = qword_10006FCF0;
  if (!qword_10006FCF0)
  {
    type metadata accessor for ToolModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FCF0);
  }

  return result;
}

BOOL sub_1000132AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 == -1)
  {
    return ~a8 != 0;
  }

  if (a8 == -1)
  {
    return 1;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a2 == 1)
        {
          return a6 != 1;
        }

        if (a6 != 1)
        {
          if (!a2)
          {
            return a6 || ((a3 ^ a7) & 1) != 0;
          }

          if (a6)
          {
            if (a1 == a5 && a2 == a6)
            {
              if ((a3 & 1) != (a7 & 1))
              {
                return 1;
              }
            }

            else
            {
              v9 = a3;
              v10 = a7;
              if (sub_1000509B8() & 1) == 0 || ((v9 ^ v10))
              {
                return 1;
              }
            }

            return 0;
          }
        }
      }
    }

    else
    {
      if (!(a3 | a2 | a1))
      {
        return a8 != 2 || a7 | a6 | a5;
      }

      if (a1 != 1 || a3 | a2)
      {
        if (a8 != 2 || a5 != 2)
        {
          return 1;
        }
      }

      else if (a8 != 2 || a5 != 1)
      {
        return 1;
      }

      if (!(a7 | a6))
      {
        return 0;
      }
    }
  }

  else
  {
    if (a8 || a5 != a1)
    {
      return 1;
    }

    if (a3)
    {
      return !a7 || (a2 != a6 || a3 != a7) && (sub_1000509B8() & 1) == 0;
    }

    if (!a7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100013450()
{
  v44 = sub_10004FCE8();
  v49 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v38 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10004FD08();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10004FD88();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10004FD68();
  v4 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10004FDD8();
  v7 = *(v45 - 1);
  __chkstk_darwin(v45);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004FD48();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  (*(v46 + 104))(v3, enum case for GenerativeModelsAvailability.LanguageOption.any(_:), v48);
  v17 = v11;
  sub_10004FD58();
  sub_10004FDB8();
  (*(v4 + 8))(v6, v47);
  sub_10004FD78();
  (*(v7 + 8))(v9, v45);
  (*(v11 + 16))(v14, v16, v10);
  if ((*(v11 + 88))(v14, v10) != enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    v31 = *(v11 + 8);
    v31(v16, v10);
    return (v31)(v14, v10);
  }

  v47 = v16;
  v48 = v10;
  (*(v11 + 96))(v14, v10);
  v18 = v40;
  v19 = v41;
  v20 = v42;
  (*(v41 + 32))(v40, v14, v42);
  v21 = sub_10004FCF8();
  v22 = v49;
  v24 = v43;
  v23 = v44;
  v39 = *(v49 + 104);
  v39(v43, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.policyLimited(_:), v44);
  v46 = v21;
  LOBYTE(v21) = sub_100026E60(v24, v21);
  v25 = *(v22 + 8);
  v49 = v22 + 8;
  v45 = v25;
  v25(v24, v23);
  v26 = v19;
  v27 = v18;
  if (v21)
  {
    v28 = v20;

    v29 = 2;
    v30 = v47;
LABEL_7:
    v36 = objc_allocWithZone(NSError);
    v37 = sub_1000504E8();
    [v36 initWithDomain:v37 code:v29 userInfo:0];

    swift_willThrow();
    (*(v26 + 8))(v27, v28);
    return (*(v17 + 8))(v30, v48);
  }

  v34 = v43;
  v33 = v44;
  v39(v43, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.regionalSafetyAssetPendingUpdate(_:), v44);
  v35 = sub_100026E60(v34, v46);

  v45(v34, v33);
  v30 = v47;
  if (v35)
  {
    v29 = 3;
    v28 = v42;
    goto LABEL_7;
  }

  (*(v26 + 8))(v27, v42);
  return (*(v17 + 8))(v30, v48);
}

uint64_t sub_100013AB0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 144);
  *(v1 + 144) = *(v0 + 24);
  return sub_100012A64(v2);
}

void sub_100013AEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1000126C0(v2);
  *(v1 + 136) = v2;
}

uint64_t sub_100013B2C()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
  swift_errorRetain();
}

uint64_t sub_100013B70()
{
  *(*(v0 + 16) + 104) = *(v0 + 24);
}

uint64_t sub_100013BB4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v8 = *(v0 + 48);
  *(v2 + 72) = v1;
  *(v2 + 80) = v3;
  *(v2 + 88) = v4;
  v9 = *(v2 + 96);
  *(v2 + 96) = v8;
  sub_100013C24(v1, v3, v4, v8);
  return sub_100013054(v5, v6, v7, v9);
}

uint64_t sub_100013C24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_10000A594(a1, a2, a3, a4);
  }

  return a1;
}

void sub_100013C58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

unint64_t sub_100013C90()
{
  result = qword_10006FCF8;
  if (!qword_10006FCF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006FCF8);
  }

  return result;
}

uint64_t sub_100013D1C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100003724();

  *a2 = v3;
  return result;
}

unint64_t sub_100013D60()
{
  result = qword_10006FD00;
  if (!qword_10006FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FD00);
  }

  return result;
}

unint64_t sub_100013DB8()
{
  result = qword_10006FD08;
  if (!qword_10006FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FD08);
  }

  return result;
}

unint64_t sub_100013E10()
{
  result = qword_10006FD10;
  if (!qword_10006FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FD10);
  }

  return result;
}

unint64_t sub_100013E68()
{
  result = qword_10006FD18;
  if (!qword_10006FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FD18);
  }

  return result;
}

uint64_t sub_100013EBC(uint64_t a1)
{
  v2 = sub_10001400C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100013F64();
  sub_10004FF88();
  return 0;
}

unint64_t sub_100013F64()
{
  result = qword_10006FD20;
  if (!qword_10006FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FD20);
  }

  return result;
}

unint64_t sub_10001400C()
{
  result = qword_10006FD28;
  if (!qword_10006FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FD28);
  }

  return result;
}

uint64_t sub_100014070()
{

  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension19SmartReplyAnalytics___observationRegistrar;
  v2 = sub_10004FB98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SmartReplyAnalytics(uint64_t a1)
{
  result = qword_10006FD60;
  if (!qword_10006FD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014190(uint64_t a1)
{
  result = sub_10004FB98();
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

uint64_t sub_100014248(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  v4 = sub_100002814(&qword_10006FFA8, &qword_1000579A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v26 = &v25 - v6;
  v8 = sub_100002814(&qword_10006FFB0, &qword_1000579A8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = sub_100002814(&qword_10006F5F8, &qword_1000579B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v16 = sub_100050678();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a3, v8);
  v17 = v7;
  v18 = v4;
  (*(v5 + 16))(v17, v27, v4);
  v19 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v20 = (v10 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v28;
  *(v21 + 4) = v28;
  (*(v9 + 32))(&v21[v19], v12, v8);
  (*(v5 + 32))(&v21[v20], v26, v18);
  v23 = v22;
  sub_10002684C(0, 0, v15, &unk_1000579C0, v21);
}

uint64_t sub_10001451C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[41] = a5;
  v6[42] = a6;
  v6[40] = a4;
  v7 = sub_100002814(&qword_10006FFB8, &qword_1000579C8);
  v6[43] = v7;
  v6[44] = *(v7 - 8);
  v6[45] = swift_task_alloc();
  v8 = sub_100002814(&qword_10006FFC0, &qword_1000579D0);
  v6[46] = v8;
  v6[47] = *(v8 - 8);
  v6[48] = swift_task_alloc();

  return _swift_task_switch(sub_100014654, 0, 0);
}

uint64_t sub_100014654()
{
  v1 = v0[40];
  v0[49] = [objc_allocWithZone(NSMutableAttributedString) init];
  v2 = [v1 range];
  v0[34] = v2;
  v0[35] = v3;
  v0[50] = v2;
  v4 = sub_100004808(&_swiftEmptyArrayStorage);
  sub_100002814(&qword_10006FFB0, &qword_1000579A8);
  sub_1000506D8();
  v5 = TCTextCompositionAssistantOptionKeyUserFeedbackInputString;
  v0[51] = TCTextCompositionAssistantOptionKeyContentWarning;
  v0[52] = v5;
  v0[57] = 0;
  v0[58] = 0xE000000000000000;
  v0[55] = 0;
  v0[56] = 0xE000000000000000;
  v0[53] = 0;
  v0[54] = v4;
  v6 = swift_task_alloc();
  v0[59] = v6;
  *v6 = v0;
  v6[1] = sub_10001479C;
  v7 = v0[46];

  return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 20, 0, 0, v7, v0 + 36);
}

uint64_t sub_10001479C()
{

  if (v0)
  {

    v1 = sub_100014FF4;
  }

  else
  {
    v1 = sub_1000148D4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000148D4()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v4 = *(v0 + 184);

    v5 = sub_100050518();
    v7 = v6;
    v95 = v4;
    if (*(v4 + 16))
    {
      v8 = v5;
      v9 = v1;

      v10 = sub_10004A138(v8, v7);
      v12 = v11;

      if (v12)
      {
        sub_100015440(*(v4 + 56) + 32 * v10, v0 + 192);
        if (swift_dynamicCast())
        {
          v13 = *(v0 + 312);
          if (v13 == 1)
          {
            v14 = 1;
          }

          else
          {
            v14 = 2 * (v13 == 2);
          }

          v92 = v14;
LABEL_15:
          v94 = sub_1000187F0(v4);
          v86 = v41;
          v42 = sub_100050518();
          v88 = v1;
          if (*(v4 + 16))
          {
            v44 = sub_10004A138(v42, v43);
            v46 = v45;

            if (v46)
            {
              sub_100015440(*(v4 + 56) + 32 * v44, v0 + 224);
              if (swift_dynamicCast())
              {
                v47 = *(v0 + 264);
                v85 = *(v0 + 256);
                goto LABEL_21;
              }
            }
          }

          else
          {
          }

          v85 = 0;
          v47 = 0xE000000000000000;
LABEL_21:
          v84 = v47;
          range = *(v0 + 424);
          v91 = *(v0 + 400);
          v48 = *(v0 + 272);
          v49 = *(v0 + 320);
          sub_100002814(&qword_10006FFC8, qword_1000579D8);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_100057990;
          v97.location = v3;
          v87 = v2;
          v97.length = v2;
          v51 = NSStringFromRange(v97);
          v52 = v3;
          v53 = sub_100050518();
          v55 = v54;

          *(v50 + 56) = &type metadata for String;
          v56 = sub_1000153A0();
          *(v50 + 64) = v56;
          *(v50 + 32) = v53;
          *(v50 + 40) = v55;
          v98.location = [v49 range];
          v57 = NSStringFromRange(v98);
          v58 = sub_100050518();
          v60 = v59;

          *(v50 + 96) = &type metadata for String;
          *(v50 + 104) = v56;
          *(v50 + 72) = v58;
          *(v50 + 80) = v60;
          v99.location = v48;
          v99.length = range;
          v61 = NSStringFromRange(v99);
          v62 = sub_100050518();
          v64 = v63;

          *(v50 + 136) = &type metadata for String;
          *(v50 + 144) = v56;
          *(v50 + 112) = v62;
          *(v50 + 120) = v64;
          *(v50 + 176) = &type metadata for Int;
          *(v50 + 184) = &protocol witness table for Int;
          *(v50 + 152) = v92;
          sub_1000153F4();
          v65 = sub_1000507D8();
          v66 = sub_100050758();
          sub_100050158("Received partial result with replacement range %@, context.range = %@, accumulatedReplacementRange = %@, warnings (OptionSet) = %d", 130, 2, &_mh_execute_header, v65, v66, v50);

          v67 = v91 + range;
          if ((v91 + range) < v52)
          {
            v68 = v52 - v67;
            if (__OFSUB__(v52, v67))
            {
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v69 = *(v0 + 424);
            v70 = *(v0 + 392);
            v71 = [*(v0 + 320) attributedText];
            v72 = [v71 attributedSubstringFromRange:{v67, v52 - v67}];

            [v70 appendAttributedString:v72];
            v24 = __OFADD__(v69, v68);
            v73 = v69 + v68;
            if (!v24)
            {
LABEL_27:
              v19 = [*(v0 + 392) appendAttributedString:v88];
              v74 = v73 + v87;
              if (!__OFADD__(v73, v87))
              {
                v76 = *(v0 + 392);
                v75 = *(v0 + 400);
                v78 = *(v0 + 352);
                v77 = *(v0 + 360);
                rangea = *(v0 + 344);
                *(v0 + 88) = v76;
                *(v0 + 96) = v75;
                *(v0 + 104) = v74;
                *(v0 + 112) = v92;
                *(v0 + 120) = v94;
                *(v0 + 128) = v86;
                *(v0 + 136) = v85;
                *(v0 + 144) = v84;
                *(v0 + 152) = v95;
                v93 = v74;

                v79 = v76;

                sub_100002814(&qword_10006FFA8, &qword_1000579A0);
                sub_1000506B8();

                (*(v78 + 8))(v77, rangea);
                *(v0 + 456) = v94;
                *(v0 + 464) = v86;
                *(v0 + 440) = v85;
                *(v0 + 448) = v84;
                *(v0 + 424) = v93;
                *(v0 + 432) = v95;
                v80 = swift_task_alloc();
                *(v0 + 472) = v80;
                *v80 = v0;
                v80[1] = sub_10001479C;
                v22 = *(v0 + 368);
                v23 = v0 + 288;
                v19 = (v0 + 160);
                v20 = 0;
                v21 = 0;

                return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v19, v20, v21, v22, v23);
              }

              __break(1u);
              goto LABEL_36;
            }

            __break(1u);
          }

          v73 = *(v0 + 424);
          goto LABEL_27;
        }
      }
    }

    else
    {
      v40 = v1;
    }

    v92 = 0;
    goto LABEL_15;
  }

  v15 = *(v0 + 424);
  v16 = *(v0 + 320);
  (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
  [v16 range];
  if (v15 >= v17)
  {
  }

  else
  {
    v18 = *(v0 + 424);
    v19 = [*(v0 + 320) range];
    v24 = __OFSUB__(v20, v18);
    v25 = v20 - v18;
    if (v24)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v26 = *(v0 + 424);
    v27 = *(v0 + 392);
    v28 = *(v0 + 400);
    v29 = [*(v0 + 320) attributedText];
    v30 = [v29 attributedSubstringFromRange:{v28 + v26, v25}];

    [v27 appendAttributedString:v30];
    if (__OFADD__(v26, v25))
    {
LABEL_38:
      __break(1u);
      return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v19, v20, v21, v22, v23);
    }

    v31 = *(v0 + 456);
    v32 = *(v0 + 440);
    v33 = *(v0 + 432);
    v35 = *(v0 + 392);
    v34 = *(v0 + 400);
    v37 = *(v0 + 352);
    v36 = *(v0 + 360);
    v38 = *(v0 + 344);
    *(v0 + 16) = v35;
    *(v0 + 24) = v34;
    *(v0 + 32) = v26 + v25;
    *(v0 + 40) = 0;
    *(v0 + 48) = v31;
    *(v0 + 64) = v32;
    *(v0 + 80) = v33;
    v39 = v35;
    sub_100002814(&qword_10006FFA8, &qword_1000579A0);
    sub_1000506B8();
    (*(v37 + 8))(v36, v38);
  }

  v81 = *(v0 + 392);
  *(v0 + 304) = 0;
  sub_100002814(&qword_10006FFA8, &qword_1000579A0);
  sub_1000506C8();

  v82 = *(v0 + 8);

  return v82();
}

uint64_t sub_100014FF4()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);

  (*(v3 + 8))(v1, v2);
  *(v0 + 296) = *(v0 + 288);
  sub_100002814(&qword_10006FFA8, &qword_1000579A0);
  sub_1000506C8();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000150B8()
{
  v1 = sub_100002814(&qword_10006FFB0, &qword_1000579A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_100002814(&qword_10006FFA8, &qword_1000579A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100015228(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100002814(&qword_10006FFB0, &qword_1000579A8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100002814(&qword_10006FFA8, &qword_1000579A0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100006CB4;

  return sub_10001451C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

unint64_t sub_1000153A0()
{
  result = qword_10006FFD0;
  if (!qword_10006FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FFD0);
  }

  return result;
}

unint64_t sub_1000153F4()
{
  result = qword_10006FFD8;
  if (!qword_10006FFD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006FFD8);
  }

  return result;
}

uint64_t sub_100015440(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

NSString sub_10001549C()
{
  result = sub_1000504E8();
  qword_10007B2E0 = result;
  return result;
}

NSString sub_1000154D4()
{
  result = sub_1000504E8();
  qword_10007B2E8 = result;
  return result;
}

NSString sub_10001550C()
{
  result = sub_1000504E8();
  qword_10007B2F0 = result;
  return result;
}

NSString sub_100015548()
{
  result = sub_1000504E8();
  qword_10007B2F8 = result;
  return result;
}

NSString sub_10001557C()
{
  result = sub_1000504E8();
  qword_10007B300 = result;
  return result;
}

NSString sub_1000155BC()
{
  result = sub_1000504E8();
  qword_10007B308 = result;
  return result;
}

NSString sub_1000155EC()
{
  result = sub_1000504E8();
  qword_10007B310 = result;
  return result;
}

NSString sub_100015628()
{
  result = sub_1000504E8();
  qword_10007B318 = result;
  return result;
}

NSString sub_100015660()
{
  result = sub_1000504E8();
  qword_10007B320 = result;
  return result;
}

NSString sub_100015698()
{
  result = sub_1000504E8();
  qword_10007B328 = result;
  return result;
}

NSString sub_1000156D0()
{
  result = sub_1000504E8();
  qword_10007B330 = result;
  return result;
}

NSString sub_100015710()
{
  result = sub_1000504E8();
  qword_10007B338 = result;
  return result;
}

NSString sub_100015740()
{
  result = sub_1000504E8();
  qword_10007B340 = result;
  return result;
}

NSString sub_100015778()
{
  result = sub_1000504E8();
  qword_10007B348 = result;
  return result;
}

NSString sub_1000157B0()
{
  result = sub_1000504E8();
  qword_10007B350 = result;
  return result;
}

NSString sub_1000157E8()
{
  result = sub_1000504E8();
  qword_10007B358 = result;
  return result;
}

NSString sub_100015820()
{
  result = sub_1000504E8();
  qword_10007B360 = result;
  return result;
}

NSString sub_100015858()
{
  result = sub_1000504E8();
  qword_10007B368 = result;
  return result;
}

NSString sub_100015888()
{
  result = sub_1000504E8();
  qword_10007B370 = result;
  return result;
}

NSString sub_1000158C0()
{
  result = sub_1000504E8();
  qword_10007B378 = result;
  return result;
}

NSString sub_1000158F4()
{
  result = sub_1000504E8();
  qword_10007B380 = result;
  return result;
}

NSString sub_100015930()
{
  result = sub_1000504E8();
  qword_10007B388 = result;
  return result;
}

NSString sub_100015964()
{
  result = sub_1000504E8();
  qword_10007B390 = result;
  return result;
}

NSString sub_10001599C()
{
  result = sub_1000504E8();
  qword_10007B398 = result;
  return result;
}

NSString sub_1000159D4()
{
  result = sub_1000504E8();
  qword_10007B3A0 = result;
  return result;
}

NSString sub_100015A0C()
{
  result = sub_1000504E8();
  qword_10007B3A8 = result;
  return result;
}

NSString sub_100015A44()
{
  result = sub_1000504E8();
  qword_10007B3B0 = result;
  return result;
}

NSString sub_100015A7C()
{
  result = sub_1000504E8();
  qword_10007B3B8 = result;
  return result;
}

NSString sub_100015AB4()
{
  result = sub_1000504E8();
  qword_10007B3C0 = result;
  return result;
}

NSString sub_100015AEC()
{
  result = sub_1000504E8();
  qword_10007B3C8 = result;
  return result;
}

NSString sub_100015B24()
{
  result = sub_1000504E8();
  qword_10007B3D0 = result;
  return result;
}

NSString sub_100015B5C()
{
  result = sub_1000504E8();
  qword_10007B3D8 = result;
  return result;
}

NSString sub_100015B94()
{
  result = sub_1000504E8();
  qword_10007B3E0 = result;
  return result;
}

NSString sub_100015BCC()
{
  result = sub_1000504E8();
  qword_10007B3E8 = result;
  return result;
}

NSString sub_100015C04()
{
  result = sub_1000504E8();
  qword_10007B3F0 = result;
  return result;
}

NSString sub_100015C3C()
{
  result = sub_1000504E8();
  qword_10007B3F8 = result;
  return result;
}

NSString sub_100015C74()
{
  result = sub_1000504E8();
  qword_10007B400 = result;
  return result;
}

NSString sub_100015CAC()
{
  result = sub_1000504E8();
  qword_10007B408 = result;
  return result;
}

NSString sub_100015CE8()
{
  result = sub_1000504E8();
  qword_10007B410 = result;
  return result;
}

void sub_100015D1C(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, unint64_t a10)
{
  v11 = v10;
  v67 = a6;
  v64 = a3;
  v65 = a5;
  LODWORD(v15) = a2;
  v17 = sub_100002814(&qword_100070160, &qword_100057D20);
  __chkstk_darwin(v17 - 8);
  v19 = &v59 - v18;
  if (qword_10006EA10 != -1)
  {
    swift_once();
  }

  v66 = a9;
  v20 = sub_100050188();
  sub_1000071F4(v20, qword_10007B528);

  v21 = sub_100050168();
  v22 = sub_100050718();

  v23 = os_log_type_enabled(v21, v22);
  v63 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v61 = v11;
    v25 = v24;
    v26 = swift_slowAlloc();
    v62 = v15;
    v15 = v26;
    v68 = v26;
    *v25 = 134284547;
    if (v62)
    {
      v27 = 0;
    }

    else
    {
      v27 = a1;
    }

    *(v25 + 4) = v27;
    *(v25 + 12) = 2049;
    v28 = v64;
    if (a4)
    {
      v28 = 0;
    }

    *(v25 + 14) = v28;
    *(v25 + 22) = 2049;
    v29 = v65;
    if (v67)
    {
      v29 = 0;
    }

    *(v25 + 24) = v29;
    *(v25 + 32) = 2049;
    if (a8)
    {
      v30 = 0;
    }

    else
    {
      v30 = a7;
    }

    *(v25 + 34) = v30;
    *(v25 + 42) = 2085;
    v60 = a8;
    if (a10)
    {
      v31 = v66;
    }

    else
    {
      v31 = 7104878;
    }

    v32 = a4;
    if (a10)
    {
      v33 = a10;
    }

    else
    {
      v33 = 0xE300000000000000;
    }

    v34 = sub_100046C30(v31, v33, &v68);
    a4 = v32;

    *(v25 + 44) = v34;
    LOBYTE(a8) = v60;
    _os_log_impl(&_mh_execute_header, v21, v22, "reportAttachmentsModified: numSelectedPhotos: %{private}ld numSelectedFiles: %{private}ld numRemovedPhotos: %{private}ld numRemovedFiles: %{private}ld slotID: %{sensitive}s", v25, 0x34u);
    sub_10000CC70(v15);
    LOBYTE(v15) = v62;

    v11 = v61;
  }

  v35 = sub_100004938(&_swiftEmptyArrayStorage);
  if (v15)
  {
    if (a4)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v36 = a4;
    if (qword_10006E8C8 != -1)
    {
      swift_once();
    }

    v37 = qword_10007B318;
    isa = sub_100050708().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v35;
    sub_10004C390(isa, v37, isUniquelyReferenced_nonNull_native);

    v35 = v68;
    if (v36)
    {
LABEL_23:
      if (v67)
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }
  }

  if (qword_10006E8D0 != -1)
  {
    swift_once();
  }

  v40 = qword_10007B320;
  v41 = sub_100050708().super.super.isa;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v68 = v35;
  sub_10004C390(v41, v40, v42);

  v35 = v68;
  if (v67)
  {
LABEL_24:
    if (a8)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_33:
  if (qword_10006E8D8 != -1)
  {
    swift_once();
  }

  v43 = qword_10007B328;
  v44 = sub_100050708().super.super.isa;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v68 = v35;
  sub_10004C390(v44, v43, v45);

  v35 = v68;
  if (a8)
  {
LABEL_25:
    if (!a10)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

LABEL_36:
  if (qword_10006E8E0 != -1)
  {
    swift_once();
  }

  v46 = qword_10007B330;
  v47 = sub_100050708().super.super.isa;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v68 = v35;
  sub_10004C390(v47, v46, v48);

  v35 = v68;
  if (a10)
  {
LABEL_39:
    if (qword_10006E8E8 != -1)
    {
      swift_once();
    }

    v49 = qword_10007B338;
    v50 = sub_1000504E8();
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v68 = v35;
    sub_10004C390(v50, v49, v51);
  }

LABEL_42:
  if (qword_10006E890 != -1)
  {
    swift_once();
  }

  v52 = qword_10007B2E0;
  v53 = IAChannelWritingTools;
  sub_1000177F4(v11 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, v19);
  v54 = sub_10004FAD8();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v19, 1, v54) == 1)
  {
    sub_10000CBA0(v19, &qword_100070160, &qword_100057D20);
    v56 = 0;
  }

  else
  {
    sub_10004FAA8();
    (*(v55 + 8))(v19, v54);
    v56 = sub_1000504E8();
  }

  v57 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_10000E5D8(0, &qword_100070178, NSObject_ptr);
  sub_100017864();
  v58 = sub_100050408().super.isa;

  [v57 sendSignal:v52 toChannel:v53 withNullableUniqueStringID:v56 withPayload:v58];
}

void sub_1000163C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = v9;
  v63 = a7;
  v64 = a8;
  v62 = a5;
  v12 = a4;
  v16 = sub_100002814(&qword_100070160, &qword_100057D20);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  if (qword_10006EA10 != -1)
  {
    swift_once();
  }

  v19 = sub_100050188();
  sub_1000071F4(v19, qword_10007B528);
  sub_10000A594(a1, a2, a3, v12);
  v20 = sub_100050168();
  v21 = sub_100050718();
  sub_10000A1CC(a1, a2, a3, v12);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v61 = v18;
    v23 = v22;
    v58 = swift_slowAlloc();
    v59 = a6;
    v65 = v58;
    *v23 = 136380675;
    sub_10000ACE8(a1, a2, a3, v12);
    v60 = v10;
    v24 = sub_1000504E8();

    v25 = [v24 key];

    v26 = sub_100050518();
    v27 = a1;
    v28 = a2;
    v29 = a3;
    v30 = v12;
    v32 = v31;

    v10 = v60;
    v33 = sub_100046C30(v26, v32, &v65);
    v12 = v30;
    a3 = v29;
    a2 = v28;
    a1 = v27;

    *(v23 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v20, v21, "reportResultsRequested: mode: %{private}s", v23, 0xCu);
    sub_10000CC70(v58);
    a6 = v59;

    v18 = v61;
  }

  sub_100002814(&qword_100070168, &qword_100057A70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100057A10;
  v35 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 32) = IAPayloadKeyWritingToolsFeatureDetails;
  v36 = v35;
  v37 = sub_10001761C(a1, a2, a3, v12);
  *(inited + 40) = v37;
  v38 = v37;
  v39 = sub_100004938(inited);
  swift_setDeallocating();
  sub_10000CBA0(inited + 32, &qword_100070170, &qword_100057A78);
  if (a6)
  {
    if (qword_10006E8B8 != -1)
    {
      swift_once();
    }

    v40 = qword_10007B308;
    v41 = sub_1000504E8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v39;
    sub_10004C390(v41, v40, isUniquelyReferenced_nonNull_native);

    v39 = v65;
  }

  if (v64)
  {
    if (qword_10006E8C0 != -1)
    {
      swift_once();
    }

    v43 = qword_10007B310;
    v44 = sub_1000504E8();
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v39;
    sub_10004C390(v44, v43, v45);

    v39 = v65;
  }

  if (a9 != 2)
  {
    if (a9)
    {
      if (qword_10006E9B8 != -1)
      {
        swift_once();
      }

      v46 = &qword_10007B408;
    }

    else
    {
      if (qword_10006E9C0 != -1)
      {
        swift_once();
      }

      v46 = &qword_10007B410;
    }

    v47 = qword_10006E8B0;
    v48 = *v46;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = qword_10007B300;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v39;
    sub_10004C390(v48, v49, v50);
  }

  v51 = IASignalWritingToolsResultsRequested;
  v52 = IAChannelWritingTools;
  sub_1000177F4(v10 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, v18);
  v53 = sub_10004FAD8();
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v18, 1, v53) == 1)
  {
    sub_10000CBA0(v18, &qword_100070160, &qword_100057D20);
    v55 = 0;
  }

  else
  {
    sub_10004FAA8();
    (*(v54 + 8))(v18, v53);
    v55 = sub_1000504E8();
  }

  v56 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_10000E5D8(0, &qword_100070178, NSObject_ptr);
  sub_100017864();
  isa = sub_100050408().super.isa;

  [v56 sendSignal:v51 toChannel:v52 withNullableUniqueStringID:v55 withPayload:isa];
}

void sub_100016A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = v5;
  v12 = sub_100002814(&qword_100070160, &qword_100057D20);
  __chkstk_darwin(v12 - 8);
  v14 = &v47 - v13;
  if (qword_10006EA10 != -1)
  {
    swift_once();
  }

  v15 = sub_100050188();
  sub_1000071F4(v15, qword_10007B528);
  swift_errorRetain();
  sub_10000A594(a2, a3, a4, a5);
  v16 = sub_100050168();
  v17 = sub_100050718();

  sub_10000A1CC(a2, a3, a4, a5);
  v18 = os_log_type_enabled(v16, v17);
  v51 = a5;
  v50 = a1;
  if (v18)
  {
    v49 = v5;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    v22 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v22 = 136643075;
    if (a1)
    {
      swift_getErrorValue();
      v23 = sub_100050A28();
      v25 = v24;
    }

    else
    {
      v25 = 0xE400000000000000;
      v23 = 1701736270;
    }

    v26 = sub_100046C30(v23, v25, &v52);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2081;
    sub_10000ACE8(v19, v20, v21, a5);
    v27 = sub_1000504E8();

    v28 = [v27 key];

    v29 = sub_100050518();
    v31 = v30;

    v32 = sub_100046C30(v29, v31, &v52);

    *(v22 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v16, v17, "reportResultsFailed: error: %{sensitive}s mode: %{private}s", v22, 0x16u);
    swift_arrayDestroy();

    a4 = v21;
    a3 = v20;
    a2 = v19;

    v6 = v49;
  }

  else
  {
  }

  v33 = IASignalWritingToolsResultsFailed;
  v34 = IAChannelWritingTools;
  sub_1000177F4(v6 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, v14);
  v35 = sub_10004FAD8();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v14, 1, v35) == 1)
  {
    sub_10000CBA0(v14, &qword_100070160, &qword_100057D20);
    v37 = 0;
  }

  else
  {
    sub_10004FAA8();
    (*(v36 + 8))(v14, v35);
    v37 = sub_1000504E8();
  }

  v38 = objc_opt_self();
  sub_100002814(&qword_100070168, &qword_100057A70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100056D10;
  v40 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 32) = IAPayloadKeyWritingToolsFeatureDetails;
  v41 = v40;
  v42 = sub_10001761C(a2, a3, a4, v51);
  v43 = IAPayloadKeyWritingToolsFailureReason;
  *(inited + 40) = v42;
  *(inited + 48) = v43;
  v44 = v42;
  v45 = v43;
  *(inited + 56) = sub_1000178BC(v50);
  sub_100004938(inited);
  swift_setDeallocating();
  sub_100002814(&qword_100070170, &qword_100057A78);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_10000E5D8(0, &qword_100070178, NSObject_ptr);
  sub_100017864();
  isa = sub_100050408().super.isa;

  [v38 sendSignal:v33 toChannel:v34 withNullableUniqueStringID:v37 withPayload:isa];
}

void sub_100016F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v7 = v6;
  v43[1] = a1;
  v43[2] = a2;
  v12 = sub_100002814(&qword_100070160, &qword_100057D20);
  __chkstk_darwin(v12 - 8);
  v14 = v43 - v13;
  if (qword_10006EA10 != -1)
  {
    swift_once();
  }

  v15 = sub_100050188();
  sub_1000071F4(v15, qword_10007B528);
  sub_10000A594(a3, a4, a5, a6);
  v16 = sub_100050168();
  v17 = sub_100050718();
  sub_10000A1CC(a3, a4, a5, a6);
  v18 = os_log_type_enabled(v16, v17);
  v45 = a6;
  v44 = a5;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v43[0] = v7;
    v21 = v20;
    v46 = v20;
    *v19 = 136380675;
    sub_10000ACE8(a3, a4, a5, a6);
    v22 = sub_1000504E8();

    v23 = [v22 key];

    v24 = sub_100050518();
    v26 = v25;

    v27 = sub_100046C30(v24, v26, &v46);

    *(v19 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "reportHandoffRequested: mode: %{private}s", v19, 0xCu);
    sub_10000CC70(v21);
    v7 = v43[0];
  }

  if (qword_10006E898 != -1)
  {
    swift_once();
  }

  v28 = qword_10007B2E8;
  v29 = IAChannelWritingTools;
  sub_1000177F4(v7 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, v14);
  v30 = sub_10004FAD8();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v14, 1, v30) == 1)
  {
    sub_10000CBA0(v14, &qword_100070160, &qword_100057D20);
    v32 = 0;
  }

  else
  {
    sub_10004FAA8();
    (*(v31 + 8))(v14, v30);
    v32 = sub_1000504E8();
  }

  v33 = objc_opt_self();
  sub_100002814(&qword_100070168, &qword_100057A70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100056D10;
  if (qword_10006E8A0 != -1)
  {
    swift_once();
  }

  v35 = qword_10007B2F0;
  *(inited + 32) = qword_10007B2F0;
  v36 = v35;
  v37 = sub_1000504E8();
  v38 = IAPayloadKeyWritingToolsFeatureDetails;
  *(inited + 40) = v37;
  *(inited + 48) = v38;
  v39 = v38;
  v40 = sub_10001761C(a3, a4, v44, v45);
  *(inited + 56) = v40;
  v41 = v40;
  sub_100004938(inited);
  swift_setDeallocating();
  sub_100002814(&qword_100070170, &qword_100057A78);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_10000E5D8(0, &qword_100070178, NSObject_ptr);
  sub_100017864();
  isa = sub_100050408().super.isa;

  [v33 sendSignal:v28 toChannel:v29 withNullableUniqueStringID:v32 withPayload:isa];
}

uint64_t sub_1000173E8()
{
  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, &qword_100070160, &qword_100057D20);
  v1 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics___observationRegistrar;
  v2 = sub_10004FB98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WritingToolsAnalytics(uint64_t a1)
{
  result = qword_100070010;
  if (!qword_100070010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000174F8(uint64_t a1)
{
  sub_1000175C4(319);
  if (v1 <= 0x3F)
  {
    sub_10004FB98();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000175C4(uint64_t a1)
{
  if (!qword_100070020)
  {
    sub_10004FAD8();
    v1 = sub_1000507E8();
    if (!v2)
    {
      atomic_store(v1, &qword_100070020);
    }
  }
}

uint64_t sub_10001761C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (qword_10006E928 != -1)
      {
        swift_once();
      }

      v4 = &qword_10007B378;
    }

    else if (a3 | a2 | a1)
    {
      if (a1 != 1 || a3 | a2)
      {
        if (qword_10006E920 != -1)
        {
          swift_once();
        }

        v4 = &qword_10007B370;
      }

      else
      {
        v4 = &IAPayloadValueWritingToolsFeatureDetailsProofreadingReview;
      }
    }

    else
    {
      if (qword_10006E918 != -1)
      {
        swift_once();
      }

      v4 = &qword_10007B368;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v4 = &IAPayloadValueWritingToolsFeatureDetailsOpenEndedTone;
      }

      else
      {
        if (qword_10006E900 != -1)
        {
          swift_once();
        }

        v4 = &qword_10007B350;
      }
    }

    else
    {
      v8 = &IAPayloadValueWritingToolsFeatureDetailsBulletsTransform;
      if (a1 != 8)
      {
        v8 = &IAPayloadValueWritingToolsFeatureDetailsTablesTransform;
      }

      if (a1 == 7)
      {
        v4 = &IAPayloadValueWritingToolsFeatureDetailsTakeawaysTransform;
      }

      else
      {
        v4 = v8;
      }
    }
  }

  else
  {
    v5 = &IAPayloadValueWritingToolsFeatureDetailsMagicRewrite;
    v6 = &IAPayloadValueWritingToolsFeatureDetailsConciseTone;
    v7 = &IAPayloadValueWritingToolsFeatureDetailsFriendlyTone;
    if (a1 != 3)
    {
      v7 = &IAPayloadValueWritingToolsFeatureDetailsProfessionalTone;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = &IAPayloadValueWritingToolsFeatureDetailsProofreadingReview;
    }

    if (a1 <= 1u)
    {
      v4 = v5;
    }

    else
    {
      v4 = v6;
    }
  }

  return *v4;
}

uint64_t sub_1000177F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&qword_100070160, &qword_100057D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100017864()
{
  result = qword_10006EEB8;
  if (!qword_10006EEB8)
  {
    type metadata accessor for IAPayloadKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EEB8);
  }

  return result;
}

id sub_1000178BC(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100002814(&qword_10006F0B0, &qword_100057A80);
    sub_10000E5D8(0, &qword_100070180, NSError_ptr);
    if (swift_dynamicCast())
    {
      v1 = [v12 domain];
      v2 = sub_100050518();
      v4 = v3;

      if (sub_100050518() == v2 && v5 == v4)
      {
      }

      else
      {
        v7 = sub_1000509B8();

        if ((v7 & 1) == 0)
        {
          if (qword_10006E930 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B380;
LABEL_11:
          v9 = v8;

          return v9;
        }
      }

      switch([v12 code])
      {
        case 1uLL:
          if (qword_10006E940 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B390;
          break;
        case 2uLL:
          if (qword_10006E948 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B398;
          break;
        case 3uLL:
          if (qword_10006E950 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3A0;
          break;
        case 4uLL:
          if (qword_10006E958 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3A8;
          break;
        case 5uLL:
          if (qword_10006E960 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3B0;
          break;
        case 6uLL:
          if (qword_10006E968 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3B8;
          break;
        case 7uLL:
          if (qword_10006E970 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3C0;
          break;
        case 8uLL:
          if (qword_10006E978 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3C8;
          break;
        case 9uLL:
          if (qword_10006E980 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3D0;
          break;
        case 0xAuLL:
          if (qword_10006E988 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3D8;
          break;
        case 0xBuLL:
          if (qword_10006E990 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3E0;
          break;
        case 0xCuLL:
          if (qword_10006E998 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3E8;
          break;
        case 0xDuLL:
          if (qword_10006E9A0 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3F0;
          break;
        case 0xEuLL:
          if (qword_10006E9A8 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B3F8;
          break;
        case 0xFuLL:
          if (qword_10006E9B0 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B400;
          break;
        default:
          if (qword_10006E938 != -1)
          {
            swift_once();
          }

          v8 = qword_10007B388;
          break;
      }

      goto LABEL_11;
    }
  }

  if (qword_10006E930 != -1)
  {
    swift_once();
  }

  v11 = qword_10007B380;

  return v11;
}

uint64_t sub_100017EA8(uint64_t a1)
{
  v2 = sub_100050518();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v4 = sub_10004A138(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_100015440(*(a1 + 56) + 32 * v4, v9);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100017F70()
{
  result = qword_100070188;
  if (!qword_100070188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100070188);
  }

  return result;
}

uint64_t sub_100017FC8(uint64_t a1, void *a2)
{
  v3 = sub_100050518();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v5 = sub_10004A138(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_100015440(*(a1 + 56) + 32 * v5, v10);
  sub_100017F70();
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100018078(uint64_t a1)
{
  v2 = sub_100002814(&unk_100070190, &qword_100058E20);
  v3 = __chkstk_darwin(v2 - 8);
  v71 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v70 = &v67 - v6;
  v7 = __chkstk_darwin(v5);
  v69 = &v67 - v8;
  v9 = __chkstk_darwin(v7);
  v68 = &v67 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v67 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v67 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v67 - v18;
  __chkstk_darwin(v17);
  v21 = &v67 - v20;
  v75 = 0;
  v76 = 0xE000000000000000;
  v73 = a1;
  sub_100018B18(a1, &v67 - v20);
  v22 = sub_1000502F8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v21, 1, v22);
  v72 = v23;
  if (v25 == 1)
  {
    sub_100018B88(v21);
  }

  else
  {
    v26 = sub_1000502A8();
    v28 = v27;
    (*(v23 + 8))(v21, v22);
    if (v28)
    {
      v77._countAndFlagsBits = v26;
      v77._object = v28;
      sub_100050578(v77);
    }
  }

  v78._countAndFlagsBits = 58;
  v78._object = 0xE100000000000000;
  sub_100050578(v78);
  sub_100018B18(v73, v19);
  if (v24(v19, 1, v22) == 1)
  {
    sub_100018B88(v19);
  }

  else
  {
    v29 = sub_100050268();
    v31 = v30;
    (*(v72 + 8))(v19, v22);
    if (v31)
    {
      v79._countAndFlagsBits = v29;
      v79._object = v31;
      sub_100050578(v79);
    }
  }

  v80._countAndFlagsBits = 124;
  v80._object = 0xE100000000000000;
  sub_100050578(v80);
  v32 = v73;
  sub_100018B18(v73, v16);
  if (v24(v16, 1, v22) == 1)
  {
    sub_100018B88(v16);
    v33 = v72;
  }

  else
  {
    v34 = sub_100050258();
    v36 = v35;
    v33 = v72;
    (*(v72 + 8))(v16, v22);
    if (v36)
    {
      v81._countAndFlagsBits = v34;
      v81._object = v36;
      sub_100050578(v81);
    }
  }

  v82._countAndFlagsBits = 58;
  v82._object = 0xE100000000000000;
  sub_100050578(v82);
  sub_100018B18(v32, v13);
  v37 = v24(v13, 1, v22);
  v38 = v69;
  if (v37 == 1)
  {
    sub_100018B88(v13);
  }

  else
  {
    v39 = sub_100050248();
    v41 = v40;
    (*(v33 + 8))(v13, v22);
    if (v41)
    {
      v83._countAndFlagsBits = v39;
      v83._object = v41;
      sub_100050578(v83);
    }
  }

  v84._countAndFlagsBits = 124;
  v84._object = 0xE100000000000000;
  sub_100050578(v84);
  v42 = v68;
  sub_100018B18(v32, v68);
  v43 = v24(v42, 1, v22);
  v44 = v70;
  if (v43 == 1)
  {
    sub_100018B88(v42);
  }

  else
  {
    v45 = v42;
    v46 = sub_1000502B8();
    v48 = v47;
    (*(v33 + 8))(v45, v22);
    if (v48)
    {
      v85._countAndFlagsBits = v46;
      v85._object = v48;
      sub_100050578(v85);
    }
  }

  v86._countAndFlagsBits = 58;
  v86._object = 0xE100000000000000;
  sub_100050578(v86);
  sub_100018B18(v32, v38);
  if (v24(v38, 1, v22) == 1)
  {
    sub_100018B88(v38);
  }

  else
  {
    v49 = sub_100050288();
    v51 = v50;
    (*(v33 + 8))(v38, v22);
    if (v51)
    {
      v87._countAndFlagsBits = v49;
      v87._object = v51;
      sub_100050578(v87);
    }
  }

  v88._countAndFlagsBits = 124;
  v88._object = 0xE100000000000000;
  sub_100050578(v88);
  sub_100018B18(v32, v44);
  if (v24(v44, 1, v22) == 1)
  {
    sub_100018B88(v44);
  }

  else
  {
    v52 = sub_1000502C8();
    v54 = v53;
    (*(v33 + 8))(v44, v22);
    if (v54)
    {
      v89._countAndFlagsBits = v52;
      v89._object = v54;
      sub_100050578(v89);
    }
  }

  v90._countAndFlagsBits = 58;
  v90._object = 0xE100000000000000;
  sub_100050578(v90);
  v55 = v71;
  sub_100018B18(v32, v71);
  if (v24(v55, 1, v22) == 1)
  {
    sub_100018B88(v55);
  }

  else
  {
    v56 = sub_100050298();
    v58 = v57;
    (*(v33 + 8))(v55, v22);
    if (v58)
    {
      v91._countAndFlagsBits = v56;
      v91._object = v58;
      sub_100050578(v91);
    }
  }

  v92._countAndFlagsBits = 124;
  v92._object = 0xE100000000000000;
  sub_100050578(v92);
  if (qword_10006EA18 != -1)
  {
    swift_once();
  }

  v59 = sub_100050188();
  sub_1000071F4(v59, qword_10007B540);
  v60 = v75;
  v61 = v76;

  v62 = sub_100050168();
  v63 = sub_100050718();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v74 = v65;
    *v64 = 136315138;
    *(v64 + 4) = sub_100046C30(v60, v61, &v74);
    _os_log_impl(&_mh_execute_header, v62, v63, "Calculate model info string = %s", v64, 0xCu);
    sub_10000CC70(v65);
  }

  return v60;
}
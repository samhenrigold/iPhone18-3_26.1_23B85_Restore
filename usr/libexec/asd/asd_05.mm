uint64_t sub_1000950D0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 40) = a1;
  *(v6 + 56) = type metadata accessor for ServerJSONFetchRetryState(0);
  *(v6 + 64) = swift_projectBox();

  return _swift_task_switch(sub_100095158, a5, 0);
}

uint64_t sub_100095158(uint64_t a1)
{
  v3 = *(v1 + 40);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!is_mul_ok(v3, 0x3B9ACA00uLL))
  {
LABEL_11:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  sub_1000657D4();
  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v1;
  a1 = sub_100097CA4(v4);

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_100095240()
{
  sub_1000657EC();
  sub_100098064();
  sub_10006564C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v0;

  sub_1000980B0();
  sub_1000980A4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100095354()
{
  sub_1000657EC();
  if (qword_1006C97A8 != -1)
  {
    sub_10005D910(&qword_1006C97A8);
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = type metadata accessor for UUID();
  sub_100046E6C(v3, static RavioliConstants.ravioliUUID);
  sub_1000879B4(v1, v0 + 16);
  sub_10009834C();
  v4 = sub_1000488FC();
  sub_10008F55C(v4, v5, v2, 0);

  sub_10006574C();

  return v6();
}

uint64_t sub_100095414(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 40) = a1;
  *(v6 + 56) = type metadata accessor for ServerJSONFetchRetryState(0);
  *(v6 + 64) = swift_projectBox();

  return _swift_task_switch(sub_10009549C, a5, 0);
}

uint64_t sub_10009549C(uint64_t a1)
{
  v3 = *(v1 + 40);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!is_mul_ok(v3, 0x3B9ACA00uLL))
  {
LABEL_11:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  sub_1000657D4();
  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v1;
  a1 = sub_100097CA4(v4);

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_100095584()
{
  sub_1000657EC();
  sub_100098064();
  sub_10006564C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v0;

  sub_1000980B0();
  sub_1000980A4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100095698()
{
  sub_1000657EC();
  if (qword_1006C97A8 != -1)
  {
    sub_10005D910(&qword_1006C97A8);
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for UUID();
  sub_100046E6C(v2, static RavioliConstants.ravioliUUID);
  sub_1000879B4(v1, v0 + 16);
  sub_10009834C();
  sub_1000488FC();
  sub_10008FA20();

  sub_10006574C();

  return v3();
}

uint64_t sub_100095758()
{
  sub_1000657EC();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100097D98(v0, qword_1006CB600);
  v1 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v2 = sub_100097B0C();
  if (os_log_type_enabled(v2, v3))
  {
    sub_100097B40();
    v4 = swift_slowAlloc();
    sub_100077640(v4);
    sub_100097C74();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
    sub_1000979A4();
  }

  sub_10006574C();

  return v11();
}

uint64_t RavioliManager.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  sub_100097C48();

  sub_100097C48();

  sub_100097C48();

  sub_100097C48();
  sub_100044850((v0 + *(v1 + 152)));
  sub_100097C48();
  sub_100044850((v0 + *(v2 + 160)));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t RavioliManager.__deallocating_deinit()
{
  RavioliManager.deinit();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100095960(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F437972746572 && a2 == 0xEA0000000000746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x757165527473616CLL && a2 == 0xEB00000000747365;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6163696669746F6ELL && a2 == 0xEE0064496E6F6974)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
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

uint64_t sub_100095A84(char a1)
{
  if (!a1)
  {
    return 0x756F437972746572;
  }

  if (a1 == 1)
  {
    return 0x757165527473616CLL;
  }

  return 0x6163696669746F6ELL;
}

uint64_t sub_100095AF4(void *a1)
{
  v3 = sub_1000443DC(&qword_1006CB7F8);
  sub_10004EAE0();
  v5 = v4;
  __chkstk_darwin(v6, v7, v8);
  sub_10004EAF4();
  v11 = v10 - v9;
  sub_100044728(a1, a1[3]);
  sub_1000975EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ServerJSONFetchRetryState(0);
    type metadata accessor for Date();
    sub_100097D50();
    sub_100097640(v12, v13, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v11, v3);
}

uint64_t sub_100095CB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Date();
  sub_10004EAE0();
  v30 = v6;
  v31 = v5;
  __chkstk_darwin(v5, v7, v8);
  sub_10004EAF4();
  v11 = v10 - v9;
  sub_1000443DC(&qword_1006CB808);
  sub_10004EAE0();
  __chkstk_darwin(v12, v13, v14);
  sub_10004EAF4();
  v15 = type metadata accessor for ServerJSONFetchRetryState(0);
  sub_1000774D8();
  __chkstk_darwin(v16, v17, v18);
  sub_10004EAF4();
  sub_10004ED04();
  sub_100044728(a1, a1[3]);
  sub_1000975EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100044850(a1);
  }

  *v3 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100097D50();
  sub_100097640(v19, v20, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v30 + 32))(v3 + *(v15 + 20), v11, v31);
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v22;
  v24 = sub_100097FC0();
  v25(v24);
  v26 = (v3 + *(v15 + 24));
  *v26 = v21;
  v26[1] = v23;
  sub_10005909C(v3, a2);
  sub_100044850(a1);
  sub_100097D38();
  return sub_1000970AC(v3, v27);
}

uint64_t sub_100095FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100095960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100095FFC(uint64_t a1)
{
  v2 = sub_1000975EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100096038(uint64_t a1)
{
  v2 = sub_1000975EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000960F0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000961E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CB6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100096250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, Swift::UInt a4@<X2>)
{
  v6 = sub_1000BFC64(a1, a3, a4);
  if (v7)
  {
    v8 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    *v26 = *v4;
    v9 = sub_1000443DC(&unk_1006CABC0);
    sub_10009836C(v9, v10, v11, v12, v13, v14, v15, v16, v25, v26[0]);

    v17 = *(*v27 + 56);
    v18 = type metadata accessor for Date();
    sub_1000774D8();
    (*(v19 + 32))(a2, v17 + *(v19 + 72) * v8, v18);
    sub_1000471EC();
    _NativeDictionary._delete(at:)();
    *v4 = *v27;
    sub_10009820C();
    v23 = v18;
  }

  else
  {
    type metadata accessor for Date();
    sub_100097CFC();
  }

  return sub_1000485F8(v20, v21, v22, v23);
}

uint64_t sub_100096374(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000BFCF8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v7 = *(*v1 + 24);
  sub_1000443DC(&qword_1006CA8E0);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(v12 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v12 + 56) + 8 * v5);
  sub_1000443DC(&qword_1006C9870);
  sub_100097640(&qword_1006C9878, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  _NativeDictionary._delete(at:)();
  *v2 = v12;
  return v10;
}

uint64_t sub_1000964C8(void (*a1)(void))
{
  v3 = type metadata accessor for UUID();
  sub_10004EAE0();
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 40) & ~v6;
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v5 + 8))(v1 + v7, v3);
  a1(*(v1 + v9 + 8));

  return _swift_deallocObject(v1, v9 + 16, v6 | 7);
}

uint64_t sub_1000965B0(uint64_t a1)
{
  sub_100098070();
  sub_10006ECA0();
  v1 = sub_100097F44();
  sub_1000474C0(v1);
  sub_100097CB4();
  sub_100097AA4();
  v2 = swift_task_alloc();
  v3 = sub_100097AC4(v2);
  *v3 = v4;
  v3[1] = sub_100065570;
  sub_1000978E4();
  sub_1000980C8();

  return sub_10008FE98(v5, v6, v7, v8, v9, v10, v11);
}

double sub_100096694@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1000BFB1C(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    *v17 = *v2;
    v7 = sub_1000443DC(&qword_1006CA8F0);
    sub_10009836C(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0]);
    sub_100076E50(*(*v18 + 48) + 40 * v6);
    sub_1000534C8((*(*v18 + 56) + 32 * v6), a2);
    sub_1000981E8();
    _NativeDictionary._delete(at:)();
    *v2 = *v18;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t type metadata accessor for ServerJSONFetchRetryState(uint64_t a1)
{
  result = qword_1006CB7B8;
  if (!qword_1006CB7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000967C0()
{
  sub_100068324();
  sub_1000982AC();
  v3 = swift_task_alloc();
  v4 = sub_10006EB38(v3);
  *v4 = v5;
  v4[1] = sub_100065570;
  sub_1000979B4();

  return sub_1000950D0(v2, v6, v7, v8, v1, v0);
}

uint64_t sub_100096868()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000968B0()
{
  sub_100068324();
  sub_1000982AC();
  v3 = swift_task_alloc();
  v4 = sub_10006EB38(v3);
  *v4 = v5;
  v4[1] = sub_100065570;
  sub_1000979B4();

  return sub_100095414(v2, v6, v7, v8, v1, v0);
}

uint64_t sub_100096958()
{
  type metadata accessor for UUID();
  sub_10004EAE0();
  sub_100097C94();
  swift_unknownObjectRelease();

  v0 = sub_100097C84();
  v1(v0);

  v2 = sub_1000980BC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100096A1C(uint64_t a1)
{
  sub_100098070();
  sub_10006ECA0();
  v1 = sub_100097F44();
  sub_1000474C0(v1);
  sub_100097CB4();
  v2 = swift_task_alloc();
  v3 = sub_100097AC4(v2);
  *v3 = v4;
  v3[1] = sub_1000640AC;
  sub_1000978E4();
  sub_1000980C8();

  return sub_100090954(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100096B0C()
{
  _Block_release(*(v0 + 16));
  sub_100098238();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100096B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[3] = &type metadata for RavioliFetcherImpl;
  v15[4] = &off_100693A98;
  swift_defaultActor_initialize();
  v6 = *(*a3 + 112);
  type metadata accessor for UUID();
  sub_1000443DC(&qword_1006C9870);
  sub_100097640(&qword_1006C9878, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *(a3 + v6) = Dictionary.init(dictionaryLiteral:)();
  *(a3 + *(*a3 + 128)) = 0;
  v7 = *(*a3 + 136);
  *(a3 + v7) = Dictionary.init(dictionaryLiteral:)();
  *(a3 + *(*a3 + 144)) = a2;
  v8 = *(*a3 + 104);
  v9 = sub_1000443DC(&qword_1006CB720);
  v10 = *(v9 - 8);
  (*(v10 + 16))(a3 + v8, a1, v9);
  sub_1000446C4(v15, a3 + *(*a3 + 152));
  v13 = type metadata accessor for ASAnalyticsManager();
  v14 = &off_1006935C8;
  *&v12 = swift_allocObject();
  (*(v10 + 8))(a1, v9);
  sub_100044850(v15);
  sub_100046D90(&v12, a3 + *(*a3 + 160));
  return a3;
}

uint64_t sub_100096DA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100096DE0()
{
  sub_1000657EC();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_10006EB38(v2);
  *v3 = v4;
  v3[1] = sub_100065570;
  sub_1000979B4();

  return sub_100087FE0(v5, v6, v7, v1);
}

uint64_t sub_100096E80()
{
  sub_1000443DC(&qword_1006CB720);
  sub_10004EAE0();
  sub_100097C94();
  swift_unknownObjectRelease();
  v0 = sub_100097C84();
  v1(v0);

  v2 = sub_1000980BC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100096F3C()
{
  sub_100068324();
  v1 = sub_1000443DC(&qword_1006CB720);
  sub_1000474C0(v1);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = sub_10006EB38(v5);
  *v6 = v7;
  v6[1] = sub_100065570;
  sub_1000979B4();

  return sub_10008AD18(v8, v9, v10, v11, v4);
}

uint64_t sub_100097044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CB740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000970AC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000774D8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100097104()
{
  v1 = type metadata accessor for UUID();
  sub_10004EAE0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = (type metadata accessor for ServerJSONFetchRetryState(0) - 8);
  v9 = *(*v8 + 80);
  v10 = (v5 + v7 + v9) & ~v9;
  v11 = *(*v8 + 64);
  v12 = v4 | v9;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);
  v13 = v8[7];
  type metadata accessor for Date();
  sub_1000774D8();
  (*(v14 + 8))(v0 + v10 + v13);

  return _swift_deallocObject(v0, v10 + v11, v12 | 7);
}

uint64_t sub_100097274(uint64_t a1)
{
  sub_100098070();
  sub_10006ECA0();
  v1 = sub_100097F44();
  sub_1000474C0(v1);
  v2 = type metadata accessor for ServerJSONFetchRetryState(0);
  sub_100077674(v2);
  v3 = swift_task_alloc();
  v4 = sub_100097AC4(v3);
  *v4 = v5;
  v4[1] = sub_100065570;
  sub_1000979B4();
  sub_1000980C8();

  return sub_100092908(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000973F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_100046EA4(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000974B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_1000485F8(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100097568(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000975EC()
{
  result = qword_1006CB800;
  if (!qword_1006CB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB800);
  }

  return result;
}

uint64_t sub_100097640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for ServerJSONFetchRetryState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100097754);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100097790()
{
  result = qword_1006CB810;
  if (!qword_1006CB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB810);
  }

  return result;
}

unint64_t sub_1000977E8()
{
  result = qword_1006CB818;
  if (!qword_1006CB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB818);
  }

  return result;
}

unint64_t sub_100097840()
{
  result = qword_1006CB820;
  if (!qword_1006CB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB820);
  }

  return result;
}

uint64_t sub_1000979D4()
{
  sub_100044850(v0);
}

uint64_t sub_100097A28(unint64_t *a1, uint64_t *a2)
{

  return sub_1000472E0(a1, a2, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
}

unint64_t sub_100097A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *v9 = a9;

  return sub_100052F7C(v10);
}

unint64_t sub_100097A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *v10 = a9;

  return sub_100052F7C(v9);
}

uint64_t sub_100097AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v11 + 4) = v10;
  *(v11 + 12) = 2080;

  return swift_getErrorValue();
}

void sub_100097B64(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, os_log_type_t a12)
{

  _os_log_impl(a1, v12, a12, a4, v13, 0x16u);
}

uint64_t sub_100097B88(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_100097BAC()
{
  *(v1 + 40) = v0;

  return swift_errorRetain();
}

void sub_100097C54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100097DD8(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_arrayDestroy();
}

uint64_t sub_100097E18()
{

  return swift_slowAlloc();
}

uint64_t sub_100097E38()
{

  return swift_slowAlloc();
}

uint64_t sub_100097E64()
{

  return sub_1000970AC(v0, type metadata accessor for ASAnalyticsEvent);
}

uint64_t sub_100097E8C(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t sub_100097EE4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100097F28(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100097F44()
{

  return type metadata accessor for UUID();
}

unint64_t sub_100097F60()
{

  return sub_100052F7C(v0);
}

unint64_t sub_100097F7C()
{

  return sub_100052F7C(v0);
}

uint64_t sub_100098040()
{
}

uint64_t sub_100098104()
{
}

uint64_t sub_100098128()
{
}

uint64_t sub_100098140()
{
  sub_10004489C(*(v5 - 224), v2);
  sub_10004489C(v4, v3);

  return sub_10004489C(v0, v1);
}

uint64_t sub_100098180(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100098198()
{
}

uint64_t sub_1000981B0()
{
}

void *sub_100098218(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v1;
  return result;
}

uint64_t sub_1000982CC()
{
  *(v0 + 184) = *(v0 + 96);

  return sub_1000961E8(v0 + 184, v0 + 200);
}

uint64_t sub_1000982EC()
{
  v5 = *(v1 + 56) + *(v3 + 72) * v2;

  return sub_10005909C(v5, v0);
}

uint64_t sub_10009830C()
{
}

uint64_t sub_10009832C()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10009834C()
{
}

BOOL sub_10009836C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

void sub_10009838C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000983AC(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t sub_1000983CC()
{
}

uint64_t sub_1000983EC()
{
}

void sub_10009840C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_10009842C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100098444()
{

  return Error.localizedDescription.getter();
}

void sub_10009845C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_100098474(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

BOOL sub_10009848C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000984A4()
{
}

uint64_t sub_1000984BC()
{
}

uint64_t sub_1000984D4()
{
}

uint64_t sub_1000984EC()
{
}

unint64_t sub_100098504(uint64_t a1)
{

  return sub_100052F7C(a1);
}

void *sub_10009851C()
{

  return sub_1000B05E4((v0 + 16));
}

BOOL sub_100098534()
{
  sub_10009D83C();
  v3 = (v2 + 40);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *v3;
    v10[0] = *(v3 - 1);
    v10[1] = v6;

    v7 = v1(v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;
    v3 += 2;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1000985D8()
{
  sub_10009D83C();
  v3 = (v2 + 40);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *(v3 + 32);
    v7 = *(v3 + 8);
    v8 = *v3;
    v12[0] = *(v3 - 1);
    v12[1] = v8;
    v13 = v7;
    v14 = *(v3 + 1);
    v15 = v6;

    v9 = v1(v12);
    if (v0)
    {

      return v5 != 0;
    }

    v10 = v9;
    v3 += 6;
  }

  while ((v10 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1000986B0()
{
  sub_1000657D4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_100077560(v1);

  return sub_100098738();
}

uint64_t sub_100098738()
{
  sub_1000657D4();
  v1[2] = v0;
  v2 = sub_1000443DC(&qword_1006CA2B0);
  sub_100077674(v2);
  v1[3] = sub_100065948();
  v3 = type metadata accessor for Date();
  v1[4] = v3;
  sub_1000474C0(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for PushPayload(0);
  v1[8] = v5;
  sub_1000474C0(v5);
  v1[9] = v6;
  v1[10] = sub_100065948();
  v7 = sub_1000773A4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100098860()
{
  sub_100068324();
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1000513BC(v1);
  *(v0 + 88) = v2;

  v3 = *(v2 + 16);
  *(v0 + 96) = v3;
  if (!v3)
  {
LABEL_14:

    sub_10006574C();
    sub_10006ED0C();

    __asm { BRAA            X1, X16 }
  }

  v4 = 0;
  v5 = *(v0 + 72);
  *(v0 + 144) = *(v5 + 80);
  *(v0 + 104) = *(v5 + 72);
  while (1)
  {
    *(v0 + 112) = v4;
    sub_10009D7E8(v4);
    sub_10009D870();
    if (sub_10009D80C() == 1)
    {
      v7 = *(v0 + 24);
      v6 = *(v0 + 32);
      static Date.distantPast.getter();
      if (sub_100046EA4(v7, 1, v6) != 1)
      {
        sub_100076FB8(*(v0 + 24), &qword_1006CA2B0);
      }
    }

    else
    {
      (*(*(v0 + 40) + 32))(*(v0 + 56), *(v0 + 24), *(v0 + 32));
    }

    v8 = *(v0 + 56);
    static Date.now.getter();
    static Date.< infix(_:_:)();
    v9 = sub_10009D75C();
    v10(v9);
    if (v8)
    {
      break;
    }

    v11 = *(v0 + 80);
    v12 = *(v0 + 16);
    Date.timeIntervalSinceNow.getter();
    sub_100099210(v11, v13);
    v14 = sub_10009D73C();
    v15(v14);
    sub_10009D660();
    sub_10009D3B4(v12, v16);
    if (v12 == v11)
    {
      goto LABEL_14;
    }

    v4 = *(v0 + 112) + 1;
  }

  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  sub_10009D684(v17);
  sub_10006ED0C();

  return sub_100099768();
}

uint64_t sub_100098A94()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = sub_1000773A4();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100098B8C()
{
  sub_100068324();
  while (1)
  {
    v4 = sub_10009D73C();
    v5(v4);
    sub_10009D660();
    sub_10009D3B4(v0, v6);
    if (v3 == v1)
    {

      sub_10006574C();
      sub_10006ED0C();

      __asm { BRAA            X1, X16 }
    }

    v7 = v2[14] + 1;
    v2[14] = v7;
    sub_10009D7E8(v7);
    sub_10009D870();
    if (sub_10009D80C() == 1)
    {
      v9 = v2[3];
      v8 = v2[4];
      static Date.distantPast.getter();
      if (sub_100046EA4(v9, 1, v8) != 1)
      {
        sub_100076FB8(v2[3], &qword_1006CA2B0);
      }
    }

    else
    {
      (*(v2[5] + 32))(v2[7], v2[3], v2[4]);
    }

    v10 = v2[7];
    static Date.now.getter();
    static Date.< infix(_:_:)();
    v11 = sub_10009D75C();
    v12(v11);
    if (v10)
    {
      break;
    }

    v1 = v2[10];
    v3 = v2[2];
    Date.timeIntervalSinceNow.getter();
    v0 = v3;
    sub_100099210(v1, v13);
  }

  v16 = swift_task_alloc();
  v2[17] = v16;
  *v16 = v2;
  sub_10009D684(v16);
  sub_10006ED0C();

  return sub_100099768();
}

void sub_100098D5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 == 1)
  {
    if (*(a1 + 56) & 1) != 0 || (*(a1 + 72))
    {
      return;
    }

LABEL_8:
    if ((*(a1 + 72) & 1) == 0)
    {
      v4 = *(a1 + 48);
      v5 = *(a1 + 64);
      sub_10009D02C(0.0, 1.0);
      v3 = v5;
      if (v6 < v4)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_8;
  }

  if (*(a1 + 72) == 1)
  {
LABEL_9:
    v3 = 0.0;
    goto LABEL_11;
  }

  v3 = *(a1 + 64);
LABEL_11:
  v7 = v1;
  if (v2)
  {
    v7 = 0.0;
  }

  if (v3 > v7 + v3)
  {
    __break(1u);
  }
}

void sub_100098E3C(uint64_t a1)
{
  sub_100098D5C(a1);
  if ((v3 & 1) == 0 && v1 != v2)
  {

    sub_10009CDE8(v1, v2);
  }
}

uint64_t sub_100098E84(uint64_t a1, double a2)
{
  v3 = v2;
  v50 = a1;
  v5 = type metadata accessor for PushPayload(0);
  sub_1000774D8();
  __chkstk_darwin(v6, v7, v8);
  sub_10004EAF4();
  v11 = v10 - v9;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v16 = __chkstk_darwin(v12, v14, v15);
  v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v16, v19, v20);
  v23 = &v43[-v22];
  __chkstk_darwin(v21, v24, v25);
  v27 = &v43[-v26];
  static Date.now.getter();
  static Date.+ infix(_:_:)();
  v49 = *(v13 + 8);
  v49(v23, v12);
  LODWORD(v23) = OBJC_IVAR____TtC3asd19PushDispatchManager_logger;
  v48 = *(v13 + 16);
  v48(v18, v27, v12);
  v28 = v2 + v23;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (sub_100053DE8(v30))
  {
    v31 = swift_slowAlloc();
    v46 = v5;
    v32 = v31;
    v45 = sub_100053F60();
    v51 = v45;
    *v32 = 134218242;
    *(v32 + 4) = a2;
    *(v32 + 12) = 2080;
    sub_10009D618(&qword_1006CABD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v44 = v28;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v3;
    v34 = v18;
    v35 = v49;
    v49(v34, v12);
    v36 = sub_100052F7C(v33);

    *(v32 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v29, v44, "Scheduling operation from push in %f at %s", v32, 0x16u);
    v37 = v45;
    sub_100044850(v45);
    sub_1000488AC(v37);
    v38 = v32;
    v5 = v46;
    sub_1000488AC(v38);
  }

  else
  {

    v39 = v18;
    v35 = v49;
    v49(v39, v12);
  }

  sub_100046ECC(v50, v11);
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  v40 = *(v5 + 52);
  sub_100076FB8(v11 + v40, &qword_1006CA2B0);
  v48((v11 + v40), v27, v12);
  sub_1000485F8(v11 + v40, 0, 1, v12);
  sub_100045690(v11);
  sub_100099210(v11, a2);
  v35(v27, v12);
  sub_10009D660();
  return sub_10009D3B4(v11, v41);
}

uint64_t sub_100099210(uint64_t a1, double a2)
{
  v5 = type metadata accessor for PushPayload(0);
  v6 = sub_1000474C0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11, v12);
  v13 = sub_1000443DC(&qword_1006C9E20);
  v14 = sub_100077674(v13);
  __chkstk_darwin(v14, v15, v16);
  sub_10004EAF4();
  v19 = v18 - v17;
  v20 = type metadata accessor for TaskPriority();
  sub_1000485F8(v19, 1, 1, v20);
  sub_100046ECC(a1, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_10009D618(&qword_1006CB9C0, type metadata accessor for PushDispatchManager, &unk_1005CD7E0);
  v22 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = v21;
  *(v23 + 32) = a2;
  *(v23 + 40) = v2;
  sub_100047140(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  swift_retain_n();
  v24 = sub_1000B078C();
  v25 = OBJC_IVAR____TtC3asd19PushDispatchManager_scheduledOperations;
  swift_beginAccess();
  sub_10006A88C();
  v26 = *(*(v2 + v25) + 16);
  sub_10006A918(v26);
  v27 = *(v2 + v25);
  *(v27 + 16) = v26 + 1;
  *(v27 + 8 * v26 + 32) = v24;
  *(v2 + v25) = v27;
  return swift_endAccess();
}

uint64_t sub_100099428(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_10009944C, a5, 0);
}

uint64_t sub_10009944C(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  sub_1000657D4();
  v5 = v4;
  v6 = swift_task_alloc();
  *(v1 + 40) = v6;
  *v6 = v1;
  sub_100077560(v6);
  a1 = v5;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_100099528()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_1000773D4();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v3 + 48) = v9;
    *v9 = v5;
    v9[1] = sub_100099684;
    sub_100097E58(*(v3 + 32));

    return sub_100099768();
  }
}

uint64_t sub_100099684()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  sub_10006574C();

  return v3();
}

uint64_t sub_100099768()
{
  sub_1000657D4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for PushPayload(0);
  sub_100077674(v3);
  v1[4] = sub_100065948();
  v4 = sub_1000773A4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000997E0()
{
  sub_10006ECA0();
  sub_100046ECC(v0[2], v0[4]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[4];
  if (v3)
  {
    v5 = sub_100053F78();
    v12 = sub_100053F60();
    *v5 = 136315138;
    v6 = sub_1000A1C3C();
    sub_10009D660();
    sub_10009D3B4(v4, v7);
    v8 = sub_100052F7C(v6);

    *(v5 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Peforming delayed operation with command: %s", v5, 0xCu);
    sub_100044850(v12);
    sub_1000488AC(v12);
    sub_10007756C();
  }

  else
  {

    sub_10009D660();
    sub_10009D3B4(v4, v9);
  }

  sub_100045EA8(*v0[2]);
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_100099974;
  sub_100097E58(v0[2]);

  return sub_10009B0AC();
}

uint64_t sub_100099974()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  sub_10006574C();

  return v3();
}

uint64_t sub_100099A70()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  [v1 removeObjectForKey:v2];

  v3 = OBJC_IVAR____TtC3asd19PushDispatchManager_scheduledOperations;
  swift_beginAccess();
  v4 = *(*(v0 + v3) + 16);
  if (v4)
  {

    v5 = 32;
    do
    {

      sub_1000443DC(&unk_1006CB550);
      Task.cancel()();

      v5 += 8;
      --v4;
    }

    while (v4);
  }

  *(v0 + v3) = _swiftEmptyArrayStorage;
}

uint64_t sub_100099BBC(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = a1[16];
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  type metadata accessor for ASAnalyticsEvent(0);
  sub_1000774D8();
  __chkstk_darwin(v8, v9, v10);
  sub_10004EAF4();
  v13 = v12 - v11;
  *v13 = v2 & 1;
  *(v13 + 1) = v3 & 1;
  *(v13 + 8) = v4;
  *(v13 + 16) = v5 & 1;
  *(v13 + 24) = v6;
  *(v13 + 32) = v7;
  swift_storeEnumTagMultiPayload();
  v16 = *(a1 + 24);
  sub_100087764(&v16, v15, &qword_1006CAD48);
  sub_1000C4148(v13);
  return sub_10009D3B4(v13, type metadata accessor for ASAnalyticsEvent);
}

uint64_t sub_100099CB8(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return sub_10009D678(a1, v1);
}

uint64_t sub_100099CD0()
{
  sub_1000657D4();
  v1 = v0[12];
  v0[14] = sub_1000A1D70(*v1);
  v0[15] = v2;
  sub_100098E3C(v1);
  v0[16] = v3;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_100099D78;
  v5 = sub_100097E58(v0[12]);

  return sub_10009A508(v5);
}

uint64_t sub_100099D78()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;
  *(v6 + 152) = v5;

  v7 = sub_1000773A4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100099E74()
{
  sub_1000657D4();
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  if (*(v0 + 152))
  {
    *(v0 + 56) = 256;
    *(v0 + 64) = v1;
    *(v0 + 72) = 0;
    *(v0 + 80) = v2;
    *(v0 + 88) = v3;
    sub_100099BBC((v0 + 56));

LABEL_5:
    sub_10006574C();

    return v4();
  }

  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  sub_100099BBC((v0 + 16));

  if (v1 > 0.0)
  {
    sub_100098E84(*(v0 + 96), *(v0 + 128));
    goto LABEL_5;
  }

  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_100099F98;
  sub_100097E58(*(v0 + 96));

  return sub_10009B0AC();
}

uint64_t sub_100099F98()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  sub_10006574C();

  return v3();
}

uint64_t sub_10009A078(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006C9E20);
  v3 = sub_100077674(v2);
  __chkstk_darwin(v3, v4, v5);
  sub_10004EAF4();
  v8 = v7 - v6;
  v9 = type metadata accessor for PushPayload(0);
  v10 = sub_1000474C0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v17 = __chkstk_darwin(v10, v15, v16);
  v18 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19, v20);
  v22 = &v29 - v21;

  sub_1000A1E84(v23, v22);
  v24 = type metadata accessor for TaskPriority();
  sub_1000485F8(v8, 1, 1, v24);
  sub_100046ECC(v22, v18);
  v25 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v1;
  sub_100047140(v18, v26 + v25);

  sub_10006F27C(0, 0, v8, &unk_1005CD820, v26);

  sub_10009D660();
  return sub_10009D3B4(v22, v27);
}

uint64_t sub_10009A46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100065570;

  return sub_100099CB8(a5);
}

uint64_t sub_10009A508(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_10009D678(a1, v1);
}

uint64_t sub_10009A520()
{
  sub_1000657D4();
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for PushPayload(0) + 56));
  v3 = *v2;
  v0[4] = *v2;
  if (v3 == 1)
  {
    sub_10006EBEC();

    return v4(0);
  }

  else
  {
    v0[5] = v2[1];
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_10009A60C;

    return sub_10009AA58(v3);
  }
}

uint64_t sub_10009A60C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;
  *(v6 + 56) = v5;

  v7 = sub_1000773A4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10009A708()
{
  sub_1000657D4();
  sub_10009A774(v1, *(v0 + 40));
  sub_10006EBEC();

  return v2((v3 & 1) == 0);
}

uint64_t sub_10009A774(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_5;
  }

  v3 = sub_10007BFD4();
  if (v4)
  {
    v6 = v3;
    __chkstk_darwin(v3, v4, v5);
    if (sub_100098534())
    {

LABEL_5:
      v7 = 1;
      return v7 & 1;
    }

    v28 = v6;
    v13 = sub_10007C150();
    v14 = v13[2];
    if (v14)
    {
      sub_1000BDEA4(0, v14, 0);
      v15 = v13 + 5;
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];

        if (v19 >= v18 >> 1)
        {
          sub_1000BDEA4((v18 > 1), v19 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v19 + 1;
        v20 = &_swiftEmptyArrayStorage[2 * v19];
        v20[4] = v16;
        v20[5] = v17;
        v15 += 6;
        --v14;
      }

      while (v14);
    }

    v21 = sub_10009D890(_swiftEmptyArrayStorage);
    v22 = sub_10009CE8C(a2, v21);

    if (v22)
    {

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = sub_100053F78();
        v29 = sub_100053F60();
        *v25 = 136315138;
        v26 = sub_100052F7C(v28);

        *(v25 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v23, v24, "Push filtered - Current region (%s) not in areas.", v25, 0xCu);
        sub_100044850(v29);
        sub_1000488AC(v29);
        sub_1000488AC(v25);
      }

      else
      {
      }
    }

    else
    {
    }

    v7 = v22 ^ 1;
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (sub_100053DE8(v9))
    {
      v10 = sub_1000541D8();
      sub_100077908(v10);
      sub_10009D77C(&_mh_execute_header, v11, v12, "Push filtered - No current region found.");
      sub_100053E64();
    }

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10009AA58(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return sub_10009D678(a1, v1);
}

uint64_t sub_10009AA70()
{
  sub_10006ECA0();
  if (v0[6])
  {
    v0[2] = 0x64756F6C4369;
    v0[3] = 0xE600000000000000;
    *(swift_task_alloc() + 16) = v0 + 2;
    v1 = sub_100098534();
    v0[8] = 0;

    if (v1)
    {
      v2 = swift_task_alloc();
      v0[9] = v2;
      *v2 = v0;
      sub_100077560(v2);

      return sub_10007BCA0();
    }

    v0[4] = 0x73656E755469;
    v0[5] = 0xE600000000000000;
    *(swift_task_alloc() + 16) = v0 + 4;
    v4 = sub_10009D6F4();

    if (v4)
    {
      v5 = swift_task_alloc();
      v0[10] = v5;
      *v5 = v0;
      sub_10009D6B4(v5);

      return sub_10007BE70();
    }

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (sub_100077680(v7))
    {
      v8 = sub_1000541D8();
      sub_100077640(v8);
      sub_1000773B4(&_mh_execute_header, v9, v10, "Push filtered - Not logged into a required account type.");
      sub_10007756C();
    }
  }

  sub_10006EBEC();

  return v11();
}

uint64_t sub_10009ACB0()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;
  *(v6 + 88) = v5;

  v7 = sub_1000773A4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10009ADAC()
{
  sub_100068324();
  if (*(v0 + 88))
  {
    goto LABEL_9;
  }

  *(v0 + 32) = 0x73656E755469;
  *(v0 + 40) = 0xE600000000000000;
  *(swift_task_alloc() + 16) = v0 + 32;
  v1 = sub_10009D6F4();

  if (!v1)
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (sub_100077680(v6))
    {
      v7 = sub_1000541D8();
      sub_100077640(v7);
      sub_1000773B4(&_mh_execute_header, v8, v9, "Push filtered - Not logged into a required account type.");
      sub_10007756C();
    }

LABEL_9:
    sub_10006EBEC();
    sub_10006ED0C();

    __asm { BRAA            X2, X16 }
  }

  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  sub_10009D6B4(v2);
  sub_10006ED0C();

  return sub_10007BE70();
}

uint64_t sub_10009AF00()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;
  *(v6 + 89) = v5;

  v7 = sub_1000773A4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10009AFFC()
{
  sub_1000657EC();
  v1 = *(v0 + 89);
  if ((v1 & 1) == 0)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (sub_100077680(v3))
    {
      v4 = sub_1000541D8();
      sub_100077640(v4);
      sub_1000773B4(&_mh_execute_header, v5, v6, "Push filtered - Not logged into a required account type.");
      sub_10007756C();
    }
  }

  sub_10006EBEC();

  return v7(v1);
}

uint64_t sub_10009B0AC()
{
  sub_1000657D4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for PushPayload(0);
  sub_100077674(v3);
  v1[4] = sub_100065948();
  v4 = sub_1000773A4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10009B124()
{
  sub_10006ECA0();
  v1 = v0[4];
  v2 = v0[2];
  v0[5] = OBJC_IVAR____TtC3asd19PushDispatchManager_logger;
  sub_100046ECC(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = sub_10009D6D8(v4);
  v6 = v0[4];
  if (v5)
  {
    v7 = sub_100053F78();
    v8 = sub_100053F60();
    *v7 = 136315138;
    v9 = v0[4];
    if (*(v6 + 24))
    {
      v10 = *(v9 + 16);
    }

    else
    {
      v10 = 7104878;
    }

    sub_10009D660();
    sub_10009D3B4(v9, v12);
    v13 = sub_100052F7C(v10);

    *(v7 + 4) = v13;
    sub_100077394();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    sub_100044850(v8);
    sub_10007756C();
    sub_100053E64();
  }

  else
  {

    sub_10009D660();
    sub_10009D3B4(v6, v11);
  }

  v19 = swift_task_alloc();
  v0[6] = v19;
  *v19 = v0;
  v19[1] = sub_10009B2B4;
  v20 = sub_100097E58(v0[2]);

  return sub_10009A508(v20);
}

uint64_t sub_10009B2B4()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;
  *(v6 + 64) = v5;

  v7 = sub_1000773A4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10009B3B0()
{
  sub_1000657EC();
  if (*(v0 + 64))
  {
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (sub_10009D6D8(v2))
    {
      v3 = sub_1000541D8();
      sub_100077908(v3);
      sub_100077394();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
      sub_100053E64();
    }

    sub_10006574C();

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 56) = v11;
    *v11 = v0;
    v11[1] = sub_10009B4D0;
    sub_100097E58(*(v0 + 16));

    return sub_10009B5D4();
  }
}

uint64_t sub_10009B4D0()
{
  sub_1000657D4();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10009B5D4()
{
  sub_1000657D4();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_1000443DC(&qword_1006CA4A0);
  sub_100077674(v3);
  v1[13] = sub_100065948();
  v4 = type metadata accessor for PushPayload(0);
  sub_100077674(v4);
  v1[14] = sub_100065948();
  v5 = type metadata accessor for UUID();
  v1[15] = v5;
  sub_1000474C0(v5);
  v1[16] = v6;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v7 = sub_1000773A4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10009B6DC(uint64_t a1)
{
  v3 = *(v2 + 88);
  switch(*v3)
  {
    case 1:
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (sub_10009D6D8(v35))
      {
        v36 = sub_1000541D8();
        sub_100077908(v36);
        sub_100077394();
        _os_log_impl(v37, v38, v39, v40, v41, 2u);
        sub_100053E64();
      }

      v42 = *(v2 + 88);

      v43 = *(v42 + 24);
      *(v2 + 160) = v43;
      if (!v43)
      {
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.fault.getter();
        if (sub_100077680(v45))
        {
          v46 = sub_1000541D8();
          sub_100077640(v46);
          sub_1000773B4(&_mh_execute_header, v47, v48, "Missing notificationId is push payload for fetch");
          sub_10007756C();
        }
      }

      sub_1000446C4(*(v2 + 96) + 112, v2 + 16);
      sub_100044728((v2 + 16), *(v2 + 40));
      if (qword_1006C97A8 == -1)
      {
        goto LABEL_29;
      }

      goto LABEL_66;
    case 2:
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (sub_10009D6D8(v10))
      {
        v11 = sub_1000541D8();
        sub_100077908(v11);
        sub_100077394();
        _os_log_impl(v12, v13, v14, v15, v16, 2u);
        sub_100053E64();
      }

      v18 = *(v2 + 88);
      v17 = *(v2 + 96);

      if (*(v18 + 8))
      {
        v19 = *(v18 + 8);
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      v20 = *(v17 + 152);
      v21 = v19[2];
      if (v21)
      {

        specialized ContiguousArray.reserveCapacity(_:)();
        v22 = v19 + 4;
        do
        {
          v22 = (v22 + 1);
          Int._bridgeToObjectiveC()();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v21;
        }

        while (v21);
      }

      else
      {
      }

      sub_10007AF78();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v90 = Array._bridgeToObjectiveC()().super.isa;

      [v20 gCEWuNTdkAWg8Jj5WithStMYeuN4F4F4tdlz:isa workflows:v90];

      goto LABEL_62;
    case 3:
      *(v2 + 176) = OBJC_IVAR____TtC3asd19PushDispatchManager_logger;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (sub_10009D6D8(v24))
      {
        v25 = sub_1000541D8();
        sub_100077908(v25);
        sub_100077394();
        _os_log_impl(v26, v27, v28, v29, v30, 2u);
        sub_100053E64();
      }

      v31 = *(v2 + 96);

      sub_100044728((v31 + 160), *(v31 + 184));
      v32 = swift_task_alloc();
      *(v2 + 184) = v32;
      *v32 = v2;
      sub_100077560(v32);
      sub_100097FD0();

      return sub_1000B6A50();
    case 4:
      v4 = *(v3 + 80);
      *(v2 + 200) = v4;
      if (!v4 || !*(v4 + 16))
      {
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.fault.getter();
        if (sub_10009D6D8(v88))
        {
LABEL_60:
          v92 = sub_1000541D8();
          sub_100077908(v92);
          sub_100077394();
          _os_log_impl(v93, v94, v95, v96, v97, 2u);
          sub_100053E64();
        }

LABEL_61:

LABEL_62:
        sub_10009D720();

        sub_10006574C();
        sub_100097FD0();

        __asm { BRAA            X1, X16 }
      }

      sub_100097FD0();

      return _swift_task_switch(v5, v6, v7);
    case 5:
      v54 = *(v3 + 88);
      if (!v54)
      {
        goto LABEL_59;
      }

      v55 = 0;
      v56 = *(v54 + 16);
      v101 = *(v2 + 128);
      v102 = (v101 + 32);
      v57 = v54 + 40;
      v58 = _swiftEmptyArrayStorage;
      while (2)
      {
        v59 = v57 + 16 * v55;
LABEL_33:
        *(v2 + 224) = v58;
        if (v56 == v55)
        {
          v70 = *(v58 + 2);
          *(v2 + 232) = v70;
          if (!v70)
          {

LABEL_59:
            v87 = Logger.logObject.getter();
            v91 = static os_log_type_t.fault.getter();
            if (sub_10009D6D8(v91))
            {
              goto LABEL_60;
            }

            goto LABEL_61;
          }

          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.info.getter();
          if (sub_10009D6D8(v72))
          {
            v73 = sub_1000541D8();
            sub_100077908(v73);
            sub_100077394();
            _os_log_impl(v74, v75, v76, v77, v78, 2u);
            sub_100053E64();
          }

          if (qword_1006C97E8 != -1)
          {
            swift_once();
          }

          v79 = *(v2 + 88);
          *(v2 + 240) = static RavioliManagerObjC.shared;
          *(v2 + 248) = *(v79 + 16);
          *(v2 + 256) = *(v79 + 24);
          LODWORD(v79) = *(v101 + 80);
          *(v2 + 296) = v79;
          *(v2 + 264) = *(v101 + 72);
          v80 = *(v2 + 120);
          v81 = *(*(v2 + 128) + 16);
          *(v2 + 272) = v81;
          *(v2 + 280) = 0;
          v81(*(v2 + 136), *(v2 + 224) + ((v79 + 32) & ~v79), v80);

          v82 = swift_task_alloc();
          *(v2 + 288) = v82;
          *v82 = v2;
          v82[1] = sub_10009C7F8;
          sub_100097E58(*(v2 + 136));
        }

        else
        {
          if (v55 < *(v54 + 16))
          {

            UUID.init(uuidString:)();

            if (sub_10009D80C() != 1)
            {
              v60 = *v102;
              (*v102)(*(v2 + 144), *(v2 + 104), *(v2 + 120));
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_100062F78(0, *(v58 + 2) + 1, 1, v58);
                v58 = v65;
              }

              v62 = *(v58 + 2);
              v61 = *(v58 + 3);
              if (v62 >= v61 >> 1)
              {
                sub_100062F78(v61 > 1, v62 + 1, 1, v58);
                v58 = v66;
              }

              ++v55;
              v63 = *(v2 + 144);
              v64 = *(v2 + 120);
              *(v58 + 2) = v62 + 1;
              v60(&v58[((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v62], v63, v64);
              v57 = v54 + 40;
              continue;
            }

            sub_100076FB8(*(v2 + 104), &qword_1006CA4A0);
            v59 += 16;
            ++v55;
            goto LABEL_33;
          }

          __break(1u);
LABEL_66:
          swift_once();
LABEL_29:
          v49 = *(v2 + 152);
          v50 = *(v2 + 120);
          v51 = *(v2 + 128);
          v52 = sub_100046E6C(v50, static RavioliConstants.ravioliUUID);
          (*(v51 + 16))(v49, v52, v50);

          v53 = swift_task_alloc();
          *(v2 + 168) = v53;
          *v53 = v2;
          v53[1] = sub_10009C000;
          sub_100097E58(*(v2 + 152));
        }

        break;
      }

      sub_100097FD0();

      return sub_100088638(v83, v84, v85);
    case 6:
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = sub_1000541D8();
        sub_100077908(v69);
        _os_log_impl(&_mh_execute_header, v67, v68, "Cancelling delayed push operations", v1, 2u);
        sub_100053E64();
      }

      sub_100099A70();
      goto LABEL_62;
    default:
      [*(*(v2 + 96) + 152) n4tgyMTvvRxjoDTF];
      goto LABEL_62;
  }
}

uint64_t sub_10009C000()
{
  sub_100068324();
  sub_1000657F8();
  v2 = v1[19];
  v3 = v1[16];
  v4 = v1[15];
  v5 = *v0;
  sub_1000655F4();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  sub_10006ED0C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10009C194()
{
  sub_1000657EC();
  sub_100044850((v0 + 16));
  sub_10009D720();

  sub_10006574C();

  return v1();
}

uint64_t sub_10009C218()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_1000773D4();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    v7 = *(v3 + 96);

    return _swift_task_switch(sub_10009C370, v7, 0);
  }

  else
  {

    sub_10006574C();

    return v8();
  }
}

uint64_t sub_10009C370()
{
  sub_100046ECC(*(v0 + 88), *(v0 + 112));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 112);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315394;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v7 = sub_100052F7C(v6);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = *(v3 + 24);
    v9 = *(v0 + 112);
    if (v8)
    {
      v10 = *(v9 + 16);
    }

    else
    {
      v10 = 7104878;
    }

    sub_10009D660();
    sub_10009D3B4(v9, v13);
    v14 = sub_100052F7C(v10);

    *(v4 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "Config update failed with error (%s for notification %s", v4, 0x16u);
    swift_arrayDestroy();
    sub_1000488AC(v5);
    sub_100053E64();
  }

  else
  {
    v11 = *(v0 + 112);

    sub_10009D660();
    sub_10009D3B4(v11, v12);
  }

  sub_10009D720();

  sub_10006574C();

  return v15();
}

uint64_t sub_10009C594()
{
  sub_1000657D4();
  v1 = v0[25];
  v2 = swift_task_alloc();
  v0[26] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_10009C674;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v3);
}

uint64_t sub_10009C674()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  return _swift_task_switch(sub_10009C77C, 0, 0);
}

uint64_t sub_10009C77C()
{
  sub_1000657EC();
  sub_10009D720();

  sub_10006574C();

  return v0();
}

uint64_t sub_10009C7F8()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = sub_1000773A4();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10009C924()
{
  sub_1000657EC();
  v1 = *(v0 + 232);
  v2 = *(v0 + 280) + 1;
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  if (v2 == v1)
  {

    sub_10009D720();

    sub_10006574C();

    return v3();
  }

  else
  {
    v5 = *(v0 + 272);
    v6 = *(v0 + 280) + 1;
    *(v0 + 280) = v6;
    v5(*(v0 + 136), *(v0 + 224) + ((*(v0 + 296) + 32) & ~*(v0 + 296)) + *(v0 + 264) * v6, *(v0 + 120));

    v7 = swift_task_alloc();
    *(v0 + 288) = v7;
    *v7 = v0;
    v7[1] = sub_10009C7F8;
    v8 = sub_100097E58(*(v0 + 136));

    return sub_100088638(v8, v9, v10);
  }
}

uint64_t sub_10009CAB8()
{
  sub_100044850((v0 + 112));

  sub_100044850((v0 + 160));
  v1 = OBJC_IVAR____TtC3asd19PushDispatchManager_logger;
  type metadata accessor for Logger();
  sub_1000774D8();
  (*(v2 + 8))(v0 + v1);

  sub_100044850((v0 + OBJC_IVAR____TtC3asd19PushDispatchManager_analyticsManager));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10009CB60()
{
  sub_10009CAB8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for PushDispatchManager(uint64_t a1)
{
  result = qword_1006CB870;
  if (!qword_1006CB870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009CBE0(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10009CCB0()
{
  sub_1000657EC();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v1[1] = sub_1000640AC;

  return sub_1000DD214();
}

void sub_10009CD54(float a1, float a2)
{
  if (a1 == a2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  sub_10009D7B8();
  if (!(v6 ^ v7 | v5))
  {
    goto LABEL_8;
  }

  swift_stdlib_random();
  if (((v2 * vcvts_n_f32_u64(0, 0x18uLL)) + a1) == a2)
  {
    sub_10009CD54(a1, a2);
  }
}

uint64_t sub_10009CDE8(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = swift_stdlib_random();
  if (v4 * vcvtd_n_f64_u64(0, 0x35uLL) + a1 == a2)
  {
    return sub_10009CDE8(a1, a2);
  }

  return result;
}

uint64_t sub_10009CE8C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  Hasher.init(_seed:)();

  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v11 & v12;
    if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v14 = (*(a2 + 48) + 16 * v13);
    if (*v14 == v10 && v14[1] == v9)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v11 = v13 + 1;
  }

  while ((v16 & 1) == 0);

  return 0;
}

void sub_10009CFC4()
{
  sub_10009D7B8();
  if (v1 ^ v2 | v0)
  {
    sub_10009D0A4(0x1000001uLL);
  }

  else
  {
    __break(1u);
  }
}

void sub_10009D02C(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_10009D12C(0x20000000000001uLL);
  }
}

unint64_t sub_10009D0A4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    v2 = -v1 % v1;
    while (v2)
    {
      swift_stdlib_random();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10009D12C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009D1B8()
{
  type metadata accessor for PushPayload(0);
  sub_10009D7D0();
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  v8 = *(v0 + 52);
  v9 = type metadata accessor for Date();
  if (!sub_10009D850(v9))
  {
    (*(*(v2 - 8) + 8))(v1 + v5 + v8, v2);
  }

  sub_10009D828();
  if (!v10)
  {
  }

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_10009D2E0()
{
  sub_100068324();
  v1 = type metadata accessor for PushPayload(0);
  sub_100077674(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_10006EB38(v3);
  *v4 = v5;
  v6 = sub_10009D79C(v4);

  return sub_10009A46C(v6, v7, v8, v2, v9);
}

uint64_t sub_10009D3B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000774D8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009D40C()
{
  type metadata accessor for PushPayload(0);
  sub_10009D7D0();
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  v8 = *(v0 + 52);
  v9 = type metadata accessor for Date();
  if (!sub_10009D850(v9))
  {
    (*(*(v2 - 8) + 8))(v1 + v5 + v8, v2);
  }

  sub_10009D828();
  if (!v10)
  {
  }

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_10009D534()
{
  sub_10006ECA0();
  v1 = type metadata accessor for PushPayload(0);
  sub_100077674(v1);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = sub_10006EB38(v4);
  *v5 = v6;
  v7 = sub_10009D79C(v5);

  return sub_100099428(v2, v7, v8, v9, v3, v10);
}

uint64_t sub_10009D618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_10009D6D8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_10009D6F4()
{

  return sub_100098534();
}

uint64_t sub_10009D720()
{
}

uint64_t sub_10009D75C()
{
  *(v1 + 120) = *(v2 + 8);
  *(v1 + 128) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

void sub_10009D77C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10009D7E8@<X0>(uint64_t a1@<X8>)
{

  return sub_100046ECC(v3 + ((v2 + 32) & ~v2) + v1 * a1, v4);
}

uint64_t sub_10009D80C()
{

  return sub_100046EA4(v1, 1, v0);
}

uint64_t sub_10009D850(uint64_t a1)
{

  return sub_100046EA4(v1 + v2, 1, a1);
}

uint64_t sub_10009D870()
{
  v5 = v1 + *(v3 + 52);

  return sub_100087764(v5, v2, v0);
}

uint64_t sub_10009D890(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_10009F28C(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_10009D950()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CB9C8);
  sub_100046E6C(v0, qword_1006CB9C8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10009D9F8()
{
  sub_1000657D4();
  sub_10009DA50();
  sub_10006574C();

  return v0();
}

uint64_t sub_10009DA50()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1006C9808 != -1)
  {
    swift_once();
  }

  v2 = qword_1006DF840;
  v3 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_1000A1950;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000C1C04;
  v7[3] = &unk_100693C10;
  v4 = _Block_copy(v7);

  v5 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  *(v0 + 200) = v5;
  return swift_unknownObjectRelease();
}

uint64_t sub_10009DBAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v2 - 8, v3, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for TaskPriority();
    sub_1000485F8(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    sub_10006F27C(0, 0, v6, &unk_1005CD8F8, v10);
  }

  return result;
}

uint64_t sub_10009DCA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10009DD34;

  return sub_10009DE20();
}

uint64_t sub_10009DD34()
{
  sub_1000657D4();

  sub_10006574C();

  return v0();
}

uint64_t sub_10009DE20()
{
  sub_1000657D4();
  v1[3] = v0;
  v1[4] = type metadata accessor for ASAnalyticsEvent(0);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10009DEB0, v0, 0);
}

uint64_t sub_10009DEB0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = sub_1000A1A4C(&qword_1006CBAF0, a2, type metadata accessor for PushCloudChannelsManager, &unk_1005CD8C0);
  v5 = swift_task_alloc();
  *(v2 + 48) = v5;
  v6 = sub_1000443DC(&qword_1006CBAF8);
  *v5 = v2;
  v5[1] = sub_10009DFD4;
  v7 = *(v2 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2 + 16, v3, v4, 0xD000000000000010, 0x80000001005A4F90, sub_1000A1654, v7, v6);
}

uint64_t sub_10009DFD4()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_10009E784;
  }

  else
  {
    v4 = sub_10009E100;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10009E100()
{
  v2 = *(v0 + 16);
  v3 = sub_1000591F0(v2);
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  v64 = v2;
  v62 = v2 + 32;
  v7 = _swiftEmptyArrayStorage;
  while (v3 != v4)
  {
    if (v5)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_59;
      }

      v8 = *(v64 + 8 * v4 + 32);
    }

    v1 = v8;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      sub_1000A1C10(&qword_1006C97F0);
      goto LABEL_45;
    }

    v10 = sub_1000A16E0(v8);
    v12 = v11;

    ++v4;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100087968();
        sub_100062EB0();
        v7 = v15;
      }

      v1 = v7[2];
      v13 = v7[3];
      if (v1 >= v13 >> 1)
      {
        sub_1000A1C30(v13);
        sub_100062EB0();
        v7 = v16;
      }

      v7[2] = v1 + 1;
      v14 = &v7[2 * v1];
      v14[4] = v10;
      v14[5] = v12;
      v4 = v9;
    }
  }

  v63 = v5;
  v59 = v0;
  v17 = sub_10009D890(v7);
  v18 = sub_10009EC84();
  v19 = sub_10009D890(v18);

  v20 = sub_10009EC30(v17, v19);
  v21 = v20 + 7;
  v22 = -1;
  v23 = -1 << *(v20 + 32);
  if (-v23 < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & v20[7];
  v25 = (63 - v23) >> 6;
  v61 = v20;

  v1 = 0;
  v60 = _swiftEmptyArrayStorage;
  while (v24)
  {
LABEL_22:
    v27 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v28 = (v61[6] + ((v1 << 10) | (16 * v27)));
    v29 = *v28;
    v30 = v28[1];
    objc_allocWithZone(PKPublicChannel);

    if (sub_10009F1C4(v29, v30))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v31 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v31 >> 1)
      {
        sub_1000A1C30(v31);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v60 = _swiftEmptyArrayStorage;
    }
  }

  while (1)
  {
    v26 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_58;
    }

    if (v26 >= v25)
    {
      break;
    }

    v24 = v21[v26];
    ++v1;
    if (v24)
    {
      v1 = v26;
      goto LABEL_22;
    }
  }

  v1 = 0;
LABEL_27:
  while (v1 != v3)
  {
    if (v63)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *(v6 + 16))
      {
        goto LABEL_61;
      }

      v32 = *(v62 + 8 * v1);
    }

    v33 = v32;
    if (__OFADD__(v1++, 1))
    {
      goto LABEL_60;
    }

    result = sub_1000A16E0(v32);
    if (!v36)
    {
      __break(1u);
      return result;
    }

    v37 = v36;
    if (*(v19 + 16))
    {
      v38 = result;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v39 = Hasher._finalize()();
      v40 = ~(-1 << *(v19 + 32));
      while (1)
      {
        v41 = v39 & v40;
        if (((*(v19 + 56 + (((v39 & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v39 & v40)) & 1) == 0)
        {
          break;
        }

        v42 = (*(v19 + 48) + 16 * v41);
        if (*v42 != v38 || v37 != v42[1])
        {
          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v39 = v41 + 1;
          if ((v44 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_27;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  v1 = _swiftEmptyArrayStorage;
  if (qword_1006C97F0 != -1)
  {
    goto LABEL_62;
  }

LABEL_45:
  v45 = type metadata accessor for Logger();
  sub_100046E6C(v45, qword_1006CB9C8);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v65 = v1;
    v48 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v48 = 136315394;
    v49 = Set.description.getter();

    v50 = sub_100052F7C(v49);

    *(v48 + 4) = v50;
    *(v48 + 12) = 2080;
    v51 = Set.description.getter();

    v52 = sub_100052F7C(v51);

    *(v48 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v46, v47, "Initial channels: %s, required channels: %s", v48, 0x16u);
    swift_arrayDestroy();
    sub_1000488AC(v66);
    v53 = v48;
    v1 = v65;
    sub_1000488AC(v53);
  }

  else
  {
  }

  if (sub_1000591F0(v60))
  {
    v54 = *(*(v59 + 24) + 112);
    v55 = String._bridgeToObjectiveC()();
    sub_1000A165C(v60, v55, v54, &selRef_subscribeToChannels_forTopic_);
  }

  else
  {
  }

  if (sub_1000591F0(v1))
  {
    v56 = *(*(v59 + 24) + 112);
    v57 = String._bridgeToObjectiveC()();
    sub_1000A165C(v1, v57, v56, &selRef_unsubscribeFromChannels_forTopic_);
  }

  else
  {
  }

  sub_10006574C();

  return v58();
}

uint64_t sub_10009E784()
{
  if (qword_1006C97F0 != -1)
  {
    sub_1000A1C10(&qword_1006C97F0);
  }

  v1 = type metadata accessor for Logger();
  sub_100046E6C(v1, qword_1006CB9C8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error getting channels: %@", v4, 0xCu);
    sub_1000A1744(v5);
    sub_1000488AC(v5);
    sub_1000488AC(v4);
  }

  v7 = *(v0 + 40);
  v8 = *(v0 + 24);

  v9 = 1685025392;
  if (*(v8 + 136))
  {
    v9 = 0x786F62646E6173;
  }

  v10 = 0xE400000000000000;
  if (*(v8 + 136))
  {
    v10 = 0xE700000000000000;
  }

  *v7 = 0;
  *(v7 + 8) = 11;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  swift_storeEnumTagMultiPayload();
  sub_1000C4148(v7);

  sub_10007700C(v7);

  sub_10006574C();

  return v11();
}

void sub_10009E958(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CBB18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7, v8);
  v9 = *(a2 + 112);
  v10 = String._bridgeToObjectiveC()();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_1000A187C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB9C;
  aBlock[3] = &unk_100693BC0;
  v13 = _Block_copy(aBlock);

  [v9 getRegisteredChannelsForTopic:v10 withCompletion:v13];
  _Block_release(v13);
}

uint64_t sub_10009EB18(void *a1, void *a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000443DC(&qword_1006CBB18);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_1000443DC(&qword_1006CBB18);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10009EB9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000A17A4();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void *sub_10009EC30(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_1000A08E8(a1);
    return a2;
  }

  else
  {

    return sub_1000A0A14(a1, a2);
  }
}

void *sub_10009EC84()
{
  v1 = v0;
  sub_1000443DC(&qword_1006CA628);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CB870;
  *(inited + 32) = 0;
  if (sub_10007C674())
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  sub_1000630A4(1, 2, 1, inited);
  v5 = v4;
  *(v4 + 16) = 2;
  *(v4 + 33) = v3;
  if (os_variant_allows_internal_security_policies())
  {
    inited = *(v5 + 16);
    v6 = *(v5 + 24);
    v7 = (inited + 1);
    if (inited >= v6 >> 1)
    {
LABEL_48:
      v42 = sub_1000A1C30(v6);
      sub_1000630A4(v42, v7, 1, v5);
      v5 = v43;
    }

    *(v5 + 16) = v7;
    *(v5 + inited + 32) = 2;
  }

  v8 = [objc_opt_self() standardUserDefaults];
  sub_10004F3EC(v8, v9, v10, v11, v12, v13, v14, v15, v46, v47, SWORD2(v47), SBYTE6(v47), SHIBYTE(v47), v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  v17 = v16;

  if (v17)
  {
    inited = *(v5 + 16);
    v18 = *(v5 + 24);
    if (inited >= v18 >> 1)
    {
      v44 = sub_1000A1C30(v18);
      sub_1000630A4(v44, inited + 1, 1, v5);
      v5 = v45;
    }

    *(v5 + 16) = inited + 1;
    *(v5 + inited + 32) = 1;
  }

  v7 = sub_10007C150();
  v19 = 0;
  v20 = v7[2];
  v55 = v5;
  v56 = _swiftEmptyArrayStorage;
LABEL_12:
  v6 = &v7[6 * v19 + 7];
  while (v20 != v19)
  {
    if (v19 >= v7[2])
    {
      __break(1u);
      goto LABEL_48;
    }

    ++v19;
    v21 = v6 + 48;
    if (!*(v1 + 136))
    {
      v6 += 16;
    }

    v22 = *v6;
    v6 = v21;
    if (v22)
    {
      if (*(v1 + 136))
      {
        v23 = -56;
      }

      else
      {
        v23 = -40;
      }

      v24 = *(v21 + v23);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100087968();
        sub_100062EB0();
        v56 = v27;
      }

      inited = v56[2];
      v25 = v56[3];
      if (inited >= v25 >> 1)
      {
        sub_1000A1C30(v25);
        sub_100062EB0();
        v56 = v28;
      }

      v56[2] = inited + 1;
      v26 = &v56[2 * inited];
      v26[4] = v24;
      v26[5] = v22;
      v5 = v55;
      goto LABEL_12;
    }
  }

  v29 = *(v5 + 16);
  if (v29)
  {
    v30 = (v5 + 32);
    v31 = _swiftEmptyArrayStorage;
    v32 = *(v1 + 136);
    do
    {
      v34 = *v30++;
      v33 = v34;
      if (v32)
      {
        v35 = "Tk9WMTRAZGJHci1Ia1hsQw==";
        switch(v33)
        {
          case 1:
            v35 = "Tk9WMTRAaWNaUS1ScGRYag==";
            break;
          case 2:
            v35 = "Tk9WMDZAZVJFVi1XWG5NTA==";
            break;
          case 3:
            v35 = "Tk9WMTRAeGtQQi1nbFNaSA==";
            break;
          case 4:
            v35 = "updateObservationToken";
            break;
          default:
            break;
        }
      }

      else
      {
        v35 = "TUFSMDZAcEZyQi1DaGVrZQ==";
        switch(v33)
        {
          case 1:
            v35 = "TUFSMDZfTkJjWS1TRndDcw==";
            break;
          case 2:
            v35 = "TUFSMDZfbGV2Yy14Vm5FUg==";
            break;
          case 3:
            v35 = "TUFSMDYtVkxSby10YmRwRA==";
            break;
          case 4:
            v35 = "Tk9WMDZAVEhIUy1rU2hCaA==";
            break;
          default:
            break;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100087968();
        sub_100062EB0();
        v31 = v39;
      }

      v37 = v31[2];
      v36 = v31[3];
      if (v37 >= v36 >> 1)
      {
        sub_1000A1C30(v36);
        sub_100062EB0();
        v31 = v40;
      }

      v31[2] = v37 + 1;
      v38 = &v31[2 * v37];
      v38[4] = 0xD000000000000018;
      v38[5] = v35 | 0x8000000000000000;
      --v29;
    }

    while (v29);
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  sub_1000CEEFC(v56);
  return v31;
}

uint64_t sub_10009F10C()
{
  if (*(v0 + 200))
  {
    [*(v0 + 192) removeObserver:?];
  }

  sub_100044850((v0 + 152));

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10009F174()
{
  sub_10009F10C();

  return _swift_defaultActor_deallocate(v0);
}

id sub_10009F1C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithChannelID:v3];

  return v4;
}

uint64_t sub_10009F228(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1005CD840;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_10009F28C(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_10009FC30(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_10009F3D8(char *a1, char *a2)
{
  v27 = a1;
  v4 = type metadata accessor for ProfileContext();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v2;
  v10 = *v2;
  sub_1000A1BF8();
  sub_1000A1A4C(v11, 255, v12, &protocol conformance descriptor for ProfileContext);
  v32 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v29 = v10;
  v30 = v10 + 56;
  v14 = ~(-1 << *(v10 + 32));
  v31 = v5 + 16;
  v28 = v5 + 8;
  while (1)
  {
    v15 = v13 & v14;
    v16 = (1 << (v13 & v14)) & *(v30 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v16)
    {
      v22 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v32;
      (*(v5 + 16))(v9, v32, v4);
      v33 = *v22;
      sub_10009FD98(v9, v15, isUniquelyReferenced_nonNull_native);
      *v22 = v33;
      (*(v5 + 32))(v27, v24, v4);
      return v16 == 0;
    }

    v17 = *(v5 + 72) * v15;
    v18 = *(v5 + 16);
    v18(v9, *(v29 + 48) + v17, v4);
    sub_1000A1BF8();
    sub_1000A1A4C(&qword_1006CA900, 255, v19, &protocol conformance descriptor for ProfileContext);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    v21 = *(v5 + 8);
    v21(v9, v4);
    if (v20)
    {
      break;
    }

    v13 = v15 + 1;
  }

  v21(v32, v4);
  v18(v27, *(v29 + 48) + v17, v4);
  return v16 == 0;
}

Swift::Int sub_10009F688(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000443DC(&qword_1006CBB10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_10009F228(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10009F8DC(uint64_t a1)
{
  v2 = v1;
  v38 = type metadata accessor for ProfileContext();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38, v4, v5);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1000443DC(&qword_1006CBB20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_27:

    *v2 = v9;
    return result;
  }

  v32 = v1;
  v33 = v7;
  v10 = 0;
  v11 = (v7 + 56);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 56);
  v15 = (v12 + 63) >> 6;
  v36 = v3 + 32;
  v16 = result + 56;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    v30 = 1 << *(v7 + 32);
    if (v30 >= 64)
    {
      sub_10009F228(0, (v30 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v30;
    }

    v2 = v32;
    *(v7 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = *(v7 + 48) + *(v3 + 72) * (v17 | (v10 << 6));
    v21 = *(v3 + 32);
    v34 = *(v3 + 72);
    v35 = v21;
    v21(v37, v20, v38);
    sub_1000A1A4C(&qword_1006CA8F8, 255, &type metadata accessor for ProfileContext, &protocol conformance descriptor for ProfileContext);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = v35(*(v9 + 48) + v25 * v34, v37, v38);
    ++*(v9 + 16);
    v7 = v33;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v16 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_10009FC30(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10009F688(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1000A03A8(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1000A002C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_10009FD98(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for ProfileContext();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10009F8DC(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_1000A05D4(v12 + 1);
LABEL_8:
      v23 = v3;
      v14 = *v3;
      sub_1000A1A4C(&qword_1006CA8F8, 255, &type metadata accessor for ProfileContext, &protocol conformance descriptor for ProfileContext);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v14 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_1000A1A4C(&qword_1006CA900, 255, &type metadata accessor for ProfileContext, &protocol conformance descriptor for ProfileContext);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v11, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1000A017C();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void *sub_1000A002C()
{
  v1 = v0;
  sub_1000443DC(&qword_1006CBB10);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_1000A017C()
{
  v1 = v0;
  v2 = type metadata accessor for ProfileContext();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000443DC(&qword_1006CBB20);
  v8 = *v0;
  v9 = static _SetStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 56 + 8 * v12)
    {
      result = memmove(result, (v8 + 56), 8 * v12);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v21 = *(v8 + 56 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v10;
  }

  return result;
}

Swift::Int sub_1000A03A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000443DC(&qword_1006CBB10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000A05D4(uint64_t a1)
{
  v2 = v1;
  v35 = type metadata accessor for ProfileContext();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35, v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  sub_1000443DC(&qword_1006CBB20);
  v9 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v30 = v1;
    v11 = 0;
    v12 = v8 + 56;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v17 = v9 + 56;
    v31 = (v3 + 32);
    v32 = result;
    if (v15)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_12:
        v21 = *(v34 + 72);
        (*(v34 + 16))(v7, *(result + 48) + v21 * (v18 | (v11 << 6)), v35);
        sub_1000A1A4C(&qword_1006CA8F8, 255, &type metadata accessor for ProfileContext, &protocol conformance descriptor for ProfileContext);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v22 = -1 << *(v9 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v17 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v17 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v17 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        (*v31)(*(v9 + 48) + v25 * v21, v7, v35);
        ++*(v9 + 16);
        result = v32;
        if (!v15)
        {
          goto LABEL_7;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v17 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v19 = v11;
      while (1)
      {
        v11 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v11 >= v16)
        {

          v2 = v30;
          goto LABEL_25;
        }

        v20 = *(v12 + 8 * v11);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v15 = (v20 - 1) & v20;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v9;
  }

  return result;
}

uint64_t sub_1000A08E8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1000A0EEC(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_1000A0A14(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v49 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v51 = v12;
    v52 = v7;
    v53 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v22 = (v5[6] + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v55 = v49;
            v56 = v16;
            v57 = v11;
            v3 = v52;
            v12 = v53;
            v54[0] = v53;
            v54[1] = v52;

            v27 = *(v5 + 32);
            v46 = ((1 << v27) + 63) >> 6;
            v2 = 8 * v46;
            if ((v27 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v47 = &v45;
              __chkstk_darwin(v24, v25, v26);
              v7 = &v45 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v28 = *(v7 + 8 * v4) & ~v8;
              v29 = v5[2];
              v50 = v7;
              *(v7 + 8 * v4) = v28;
              v30 = v29 - 1;
              v31 = v51;
              while (1)
              {
                v48 = v30;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v33 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v34 = (*(v12 + 48) + ((v16 << 10) | (16 * v33)));
                v2 = *v34;
                v35 = v34[1];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v36 = Hasher._finalize()();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v52;
                    v12 = v53;
                    v31 = v51;
                    goto LABEL_24;
                  }

                  v38 = (v5[6] + 16 * v4);
                  if (*v38 == v2 && v38[1] == v35)
                  {
                    break;
                  }

                  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v50[v7];
                v50[v7] = v41 & ~v8;
                v3 = v52;
                v12 = v53;
                v31 = v51;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v30 = v48 - 1;
                if (__OFSUB__(v48, 1))
                {
                  __break(1u);
                }

                if (v48 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v32 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v32 >= v31)
                {
                  v5 = sub_1000A1288(v50, v46, v48, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v32);
                ++v16;
                if (v11)
                {
                  v16 = v32;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v43 = swift_slowAlloc();
            v44 = sub_1000A1200(v43, v46, v5 + 7, v46, v5, v7, v54);

            v12 = v54[0];
            v49 = v55;
            v5 = v44;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v52;
        v14 = v53;
        v12 = v51;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_1000A17E8(v14);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

uint64_t sub_1000A0EEC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000A002C();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1000A149C(v8);
  *v2 = v15;
  return v13;
}

unint64_t *sub_1000A1014(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1000A1288(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_1000A1200(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1000A1014(a1, a2, a5, a6, a7);

  return v12;
}

Swift::Int sub_1000A1288(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000443DC(&qword_1006CBB10);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1000A149C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1000A165C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  sub_1000A17A4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a3 *a4];
}

uint64_t sub_1000A16E0(void *a1)
{
  v1 = [a1 channelID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000A1744(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CBB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A17A4()
{
  result = qword_1006CBB08;
  if (!qword_1006CBB08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CBB08);
  }

  return result;
}

uint64_t sub_1000A17F0()
{
  v1 = sub_1000443DC(&qword_1006CBB18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A187C(void *a1, void *a2)
{
  sub_1000443DC(&qword_1006CBB18);

  return sub_10009EB18(a1, a2);
}

uint64_t sub_1000A1900(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A1918()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A1958()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A1998()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10009DD34;

  return sub_10009DCA4();
}

uint64_t sub_1000A1A4C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

_BYTE *storeEnumTagSinglePayload for Channel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000A1B60);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000A1B9C()
{
  result = qword_1006CBB28;
  if (!qword_1006CBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBB28);
  }

  return result;
}

uint64_t sub_1000A1C10(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_1000A1C3C()
{
  if (*(v0 + 80))
  {
    _StringGuts.grow(_:)(17);

    v1._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v1);

    v2._countAndFlagsBits = 0x6F6C666B726F7720;
    v2._object = 0xEF203A7364695F77;
    String.append(_:)(v2);
  }

  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v0 + 16);
    String.append(_:)(*(&v3 - 1));
    v5._countAndFlagsBits = 540697705;
    v5._object = 0xE400000000000000;
    String.append(_:)(v5);
  }

  v8 = sub_1000A1D70(*v0);

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  String.append(_:)(v6);

  return v8;
}

unint64_t sub_1000A1D70(char a1)
{
  result = 25202;
  switch(a1)
  {
    case 1:
      result = 0x6464416863746566;
      break;
    case 2:
      result = 0x6361437261656C63;
      break;
    case 3:
      result = 0x6E6F436863746566;
      break;
    case 4:
      result = 0x6F72506863746566;
      break;
    case 5:
      result = 0x7265536863746566;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A1E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PushPayload(0);
  v5 = *(v4 + 52);
  v6 = type metadata accessor for Date();
  v7 = sub_1000485F8(a2 + v5, 1, 1, v6);
  if (!*(a1 + 16))
  {

    v35 = sub_1000A26CC();
    sub_10005BCDC(&type metadata for PushPayload.PushPayloadErrors, v35);
    v37 = 3;
LABEL_31:
    *v36 = v37;
    swift_willThrow();
    return sub_10004D2E8(a2 + v5, &qword_1006CA2B0);
  }

  strcpy(&v273, "command");
  *(&v273 + 1) = 0xE700000000000000;
  v13 = sub_1000A5AE0(v7, &type metadata for String, &protocol witness table for String, v8, v9, v10, v11, v12);
  sub_1000A59A4(v13, v14, v15, v16, v17, v18, v19, v20, v222, v232, v4, v251, v261, v268, v269, v270, v271, v272, v273);
  v21 = sub_100076E50(&v268);
  if (v274)
  {
    v27 = sub_1000A5B28(v21, v22, v23, &type metadata for String, v24, v25, v26);
    v33 = v252;
    if (!v27)
    {
      v33 = 0;
    }

    v275 = v33;
    if (v27)
    {
      v34 = v262;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v27 = sub_10004D2E8(&v273, &qword_1006CA130);
    v275 = 0;
    v34 = 0;
  }

  *&v273 = 0x6163696669746F6ELL;
  *(&v273 + 1) = 0xEF64695F6E6F6974;
  v38 = sub_1000A5AE0(v27, &type metadata for String, &protocol witness table for String, v28, v29, v30, v31, v32);
  sub_1000A59A4(v38, v39, v40, v41, v42, v43, v44, v45, v223, v233, v242, v252, v262, v268, v269, v270, v271, v272, v273);
  v46 = sub_100076E50(&v268);
  if (v274)
  {
    v52 = sub_1000A5B28(v46, v47, v48, &type metadata for String, v49, v50, v51);
    v58 = v253;
    if (!v52)
    {
      v58 = 0;
    }

    v234 = v58;
    if (v52)
    {
      v59 = v263;
    }

    else
    {
      v59 = 0;
    }
  }

  else
  {
    v52 = sub_10004D2E8(&v273, &qword_1006CA130);
    v234 = 0;
    v59 = 0;
  }

  *&v273 = 0xD000000000000014;
  *(&v273 + 1) = 0x80000001005A4FF0;
  v60 = sub_1000A5AE0(v52, &type metadata for String, &protocol witness table for String, v53, v54, v55, v56, v57);
  sub_1000A59A4(v60, v61, v62, v63, v64, v65, v66, v67, v224, v234, v243, v253, v263, v268, v269, v270, v271, v272, v273);
  sub_100076E50(&v268);
  if (v274)
  {
    v68 = swift_dynamicCast();
    if (v68)
    {
      v69 = v254;
    }

    else
    {
      v69 = 0;
    }

    v70 = v68 ^ 1;
  }

  else
  {
    sub_10004D2E8(&v273, &qword_1006CA130);
    v69 = 0;
    v70 = 1;
  }

  v71 = AnyHashable.init<A>(_:)();
  sub_1000A59A4(v71, v72, v73, v74, v75, v76, v77, v78, v225, v235, v244, 0x6E6F6973726576, 0xE700000000000000, v268, v269, v270, v271, v272, v273);
  v79 = sub_100076E50(&v268);
  if (!v274)
  {
    sub_10004D2E8(&v273, &qword_1006CA130);
    if (v34)
    {
      goto LABEL_29;
    }

LABEL_30:

    v88 = sub_1000A26CC();
    sub_10005BCDC(&type metadata for PushPayload.PushPayloadErrors, v88);
    v37 = 2;
    goto LABEL_31;
  }

  v85 = sub_1000A5984(v79, v80, v81, &type metadata for Int, v82, v83, v84);
  if (!v34)
  {
    goto LABEL_30;
  }

  if ((v85 & 1) == 0)
  {
LABEL_29:

    goto LABEL_30;
  }

  v276._countAndFlagsBits = v275;
  v276._object = v34;
  v86 = sub_1000A2E24(v276);
  if (v86 == 7)
  {

    v87 = sub_1000A26CC();
    sub_10005BCDC(&type metadata for PushPayload.PushPayloadErrors, v87);
    v37 = 0;
    goto LABEL_31;
  }

  if (v255 != 1)
  {

    v114 = sub_1000A26CC();
    sub_10005BCDC(&type metadata for PushPayload.PushPayloadErrors, v114);
    v37 = 1;
    goto LABEL_31;
  }

  *a2 = v86;
  *(a2 + 16) = v236;
  *(a2 + 24) = v59;
  if (v69 < 0)
  {
    v90 = 1;
  }

  else
  {
    v90 = v70;
  }

  if (v90)
  {
    v91 = 0;
  }

  else
  {
    v91 = v69;
  }

  *(a2 + 32) = v91;
  *(a2 + 40) = v90;
  v92 = AnyHashable.init<A>(_:)();
  sub_1000A59A4(v92, v93, v94, v95, v96, v97, v98, v99, a2, v236, v245, 0xD000000000000013, 0x80000001005A5010, v268, v269, v270, v271, v272, v273);
  v100 = sub_100076E50(&v268);
  if (v274)
  {
    v106 = sub_1000A5984(v100, v101, v102, &type metadata for Int, v103, v104, v105);
    if (v106)
    {
      v112 = v256;
      if (v256 > 0)
      {
        v113 = 0;
        goto LABEL_46;
      }
    }
  }

  else
  {
    v106 = sub_10004D2E8(&v273, &qword_1006CA130);
  }

  v112 = 0;
  v113 = 1;
LABEL_46:
  *(a2 + 64) = v112;
  *(a2 + 72) = v113;
  *&v273 = 0x7364697575;
  *(&v273 + 1) = 0xE500000000000000;
  v115 = sub_1000A5AE0(v106, &type metadata for String, &protocol witness table for String, v107, v108, v109, v110, v111);
  sub_1000A59A4(v115, v116, v117, v118, v119, v120, v121, v122, v226, v237, v246, v256, v264, v268, v269, v270, v271, v272, v273);
  sub_100076E50(&v268);
  if (v274)
  {
    v123 = sub_1000443DC(&qword_1006CA018);
    sub_1000A5984(v123, v124, v125, v123, v126, v127, v128);
    sub_1000A5A94();
  }

  else
  {
    v129 = sub_10004D2E8(&v273, &qword_1006CA130);
    v135 = 0;
  }

  *(a2 + 88) = v135;
  *&v273 = 0xD000000000000016;
  *(&v273 + 1) = 0x80000001005A5030;
  v136 = sub_1000A5AE0(v129, &type metadata for String, &protocol witness table for String, v130, v131, v132, v133, v134);
  sub_1000A59A4(v136, v137, v138, v139, v140, v141, v142, v143, v227, v238, v247, v257, v265, v268, v269, v270, v271, v272, v273);
  v144 = sub_100076E50(&v268);
  if (v274)
  {
    sub_1000A5984(v144, v145, v146, &type metadata for Double, v147, v148, v149);
    sub_1000A5A94();
    v157 = v150 ^ 1;
  }

  else
  {
    v150 = sub_10004D2E8(&v273, &qword_1006CA130);
    v156 = 0;
    v157 = 1;
  }

  *(a2 + 48) = v156;
  *(a2 + 56) = v157;
  *(a2 + 96) = 1;
  strcpy(&v273, "workflow_ids");
  BYTE13(v273) = 0;
  HIWORD(v273) = -5120;
  v158 = sub_1000A5AE0(v150, &type metadata for String, &protocol witness table for String, v151, v152, v153, v154, v155);
  sub_1000A59A4(v158, v159, v160, v161, v162, v163, v164, v165, v228, v239, v248, v258, v266, v268, v269, v270, v271, v272, v273);
  sub_100076E50(&v268);
  if (v274)
  {
    v166 = sub_1000443DC(&qword_1006CA018);
    sub_1000A5984(v166, v167, v168, v166, v169, v170, v171);
    sub_1000A5A94();
  }

  else
  {
    sub_10004D2E8(&v273, &qword_1006CA130);
    v172 = 0;
  }

  *(a2 + 80) = v172;
  v173 = AnyHashable.init<A>(_:)();
  sub_1000A59A4(v173, v174, v175, v176, v177, v178, v179, v180, v229, v240, v249, 0x737265746C6966, 0xE700000000000000, v268, v269, v270, v271, v272, v273);
  sub_100076E50(&v268);
  if (v274)
  {
    v181 = sub_1000443DC(&qword_1006CBB38);
    v187 = sub_1000A5984(v181, v182, v183, v181, v184, v185, v186);
    if (v187)
    {

      v194 = sub_1000A31C0(v193);
      v195 = sub_1000A2720(v194);
      v197 = v196;
      v187 = swift_bridgeObjectRelease_n();
      goto LABEL_60;
    }
  }

  else
  {
    v187 = sub_10004D2E8(&v273, &qword_1006CA130);
  }

  v197 = 0;
  v195 = 1;
LABEL_60:
  v198 = (v230 + *(v250 + 56));
  *v198 = v195;
  v198[1] = v197;
  strcpy(&v273, "options");
  *(&v273 + 1) = 0xE700000000000000;
  v199 = sub_1000A5AE0(v187, &type metadata for String, &protocol witness table for String, v188, v189, v190, v191, v192);
  sub_1000A59A4(v199, v200, v201, v202, v203, v204, v205, v206, v230, v241, v250, v259, v267, v268, v269, v270, v271, v272, v273);

  sub_100076E50(&v268);
  if (!v274)
  {
    sub_10004D2E8(&v273, &qword_1006CA130);
    goto LABEL_64;
  }

  v207 = sub_1000443DC(&qword_1006CA018);
  if ((sub_1000A5984(v207, v208, v209, v207, v210, v211, v212) & 1) == 0)
  {
LABEL_64:
    v213 = _swiftEmptyArrayStorage;
    goto LABEL_65;
  }

  v213 = v260;
LABEL_65:
  v214 = v231;
  v215 = v213[2];
  if (v215)
  {
    v268 = _swiftEmptyArrayStorage;
    sub_1000BDE2C(0, v215, 0);
    v216 = v268;
    v275 = v213;
    v217 = v213 + 5;
    do
    {
      if (*(v217 - 1) == 6383472 && *v217 == 0xE300000000000000)
      {
        v219 = 1;
      }

      else
      {
        v219 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v268 = v216;
      v221 = v216[2];
      v220 = v216[3];
      if (v221 >= v220 >> 1)
      {
        sub_1000BDE2C(v220 > 1, v221 + 1, 1);
        v216 = v268;
      }

      v216[2] = v221 + 1;
      *(v216 + v221 + 32) = v219 & 1;
      v217 += 2;
      --v215;
    }

    while (v215);

    v214 = v231;
  }

  else
  {

    v216 = _swiftEmptyArrayStorage;
  }

  *(v214 + 8) = v216;
  return result;
}

uint64_t type metadata accessor for PushPayload(uint64_t a1)
{
  result = qword_1006CBBA0;
  if (!qword_1006CBBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000A26CC()
{
  result = qword_1006CBB30;
  if (!qword_1006CBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBB30);
  }

  return result;
}

uint64_t sub_1000A2720(uint64_t a1)
{
  sub_1000A5AA4();
  *&v13 = v3;
  *(&v13 + 1) = v2 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
  AnyHashable.init<A>(_:)();
  sub_10005527C(a1, &v13, v12);
  sub_100076E50(v12);
  if (v14)
  {
    v4 = sub_1000443DC(&qword_1006CA018);
    if (sub_1000A5AF8(v4, v5))
    {
      v6 = v11;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    sub_10004D2E8(&v13, &qword_1006CA130);
    v6 = 0;
  }

  AnyHashable.init<A>(_:)();
  sub_10005527C(a1, &v13, v12);

  sub_100076E50(v12);
  if (v14)
  {
    v7 = sub_1000443DC(&qword_1006CA018);
    if (sub_1000A5AF8(v7, v8))
    {
      v9 = 0x7361657261;
    }

    else
    {
      v9 = 0;
    }

    if (!v6)
    {
      if (v9)
      {
        return v6;
      }

      return 1;
    }
  }

  else
  {
    sub_10004D2E8(&v13, &qword_1006CA130);
    if (!v6)
    {
      return 1;
    }
  }

  return v6;
}

uint64_t sub_1000A2890(uint64_t a1, uint64_t a2)
{
  v3 = 0xE000000000000000;
  if (a1)
  {
    _StringGuts.grow(_:)(17);

    sub_1000A5AA4();
    v16 = v5;
    v17 = v4 | 0xEE005B203A200000;
    v6._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 93;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    a1 = v16;
    v3 = v17;
  }

  v8 = v3;
  String.append(_:)(*&a1);

  if (a2)
  {
    v9._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 93;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11 = 0x203A736165726120;
    v12 = 0xE90000000000005BLL;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 125;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0x20737265746C6946;
}

uint64_t sub_1000A29F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546E69676F6CLL && a2 == 0xEA00000000007365;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7361657261 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000A2ABC(char a1)
{
  if (a1)
  {
    return 0x7361657261;
  }

  else
  {
    return 0x7079546E69676F6CLL;
  }
}

uint64_t sub_1000A2AF4(void *a1)
{
  v3 = sub_1000443DC(&qword_1006CBCC0);
  sub_10004EAE0();
  v5 = v4;
  __chkstk_darwin(v6, v7, v8);
  sub_10004EAF4();
  v11 = v10 - v9;
  sub_100044728(a1, a1[3]);
  sub_1000A53FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000443DC(&qword_1006CA018);
  sub_1000A5A20(&qword_1006CA030, &protocol witness table for String);
  sub_10004EB7C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    sub_10004EB7C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v11, v3);
}

uint64_t sub_1000A2C84(void *a1)
{
  v3 = sub_1000443DC(&qword_1006CBCB0);
  sub_10004EAE0();
  v5 = v4;
  __chkstk_darwin(v6, v7, v8);
  sub_10004EAF4();
  v11 = v10 - v9;
  v12 = a1[3];
  sub_100044728(a1, v12);
  sub_1000A53FC();
  sub_10004EB7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000443DC(&qword_1006CA018);
    sub_1000A59E8(&qword_1006CA020, &protocol witness table for String);
    sub_1000A5A44();
    v12 = v14;
    sub_1000A5A44();
    (*(v5 + 8))(v11, v3);
  }

  sub_100044850(a1);
  return v12;
}

unint64_t sub_1000A2E24(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100691178, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000A2E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A29F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A2EA0(uint64_t a1)
{
  v2 = sub_1000A53FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A2EDC(uint64_t a1)
{
  v2 = sub_1000A53FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A2F18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000A2C84(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1000A2F8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A2E24(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000A2FBC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000A1D70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000A3098(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A30B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A3098(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A30E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A2678(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1000A31C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000443DC(&qword_1006CBB40);
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_10006B994(*(a1 + 56) + 40 * v11, v41);
    v39 = v14;
    v40 = v13;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v14;
    v27 = v13;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_1000534C8(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_1000534C8(v35, v24);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = v7[v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v28;
    *(v23 + 16) = v29;
    *(v23 + 32) = v30;
    result = sub_1000534C8(v24, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000A34A0(void *a1)
{
  if (a1[2])
  {
    sub_1000443DC(&qword_1006CBB40);
    sub_1000A5B1C();
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  sub_1000A5ABC();
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v9 = v3 + 8;

  v11 = 0;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v13 = __clz(__rbit64(v7)) | (v11 << 6);
    v14 = (a1[6] + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000446C4(a1[7] + 40 * v13, v40);
    *&v39 = v16;
    *(&v39 + 1) = v15;
    *&v36[5] = v39;
    v37[0] = v40[0];
    v37[1] = v40[1];
    v38 = v41;
    v27 = v16;
    v28 = v15;

    swift_dynamicCast();
    sub_10007B298(v37, v26);
    sub_1000443DC(&qword_1006CAD30);
    swift_dynamicCast();
    v33 = v29;
    v34 = v30;
    v35 = v31;
    sub_1000534C8(&v32, v36);
    v29 = v33;
    v30 = v34;
    v31 = v35;
    sub_1000534C8(v36, v26);
    result = AnyHashable._rawHashValue(seed:)(v3[5]);
    v17 = -1 << *(v3 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v9[v18 >> 6]) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = v9[v19];
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~v9[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v7 &= v7 - 1;
    *(v9 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = v3[6] + 40 * v20;
    *v25 = v29;
    *(v25 + 16) = v30;
    *(v25 + 32) = v31;
    result = sub_1000534C8(v26, (v3[7] + 32 * v20));
    ++v3[2];
  }

  while (v7);
LABEL_8:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return v3;
    }

    v7 = *(v1 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1000A3784(void *a1)
{
  if (a1[2])
  {
    sub_1000443DC(&qword_1006CADA8);
    sub_1000A5B1C();
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  sub_1000A5ABC();
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_12:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (a1[6] + ((v11 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];

    sub_1000443DC(&qword_1006CAD30);
    swift_dynamicCast();
    sub_10007B298(&v24, v26);
    sub_10007B298(v26, v27);
    sub_10007B298(v27, &v25);
    result = sub_1000BFB60(v15, v14);
    v16 = result;
    if (v17)
    {
      v18 = (v3[6] + 16 * result);
      *v18 = v15;
      v18[1] = v14;

      v19 = (v3[7] + 40 * v16);
      sub_100044850(v19);
      result = sub_10007B298(&v25, v19);
      v10 = v11;
    }

    else
    {
      if (v3[2] >= v3[3])
      {
        goto LABEL_19;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v3[6] + 16 * result);
      *v20 = v15;
      v20[1] = v14;
      result = sub_10007B298(&v25, v3[7] + 40 * result);
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v3[2] = v23;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v3;
    }

    v7 = *(v1 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000A39C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6163696669746F6ELL && a2 == 0xEE0064496E6F6974;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001005A5050 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x80000001005A5070 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001005A5090 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x776F6C666B726F77 && a2 == 0xEB00000000736449;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7364697575 && a2 == 0xE500000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656C756465686373 && a2 == 0xED0000656D695464;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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
}

unint64_t sub_1000A3D30(char a1)
{
  result = 0x646E616D6D6F63;
  switch(a1)
  {
    case 1:
      result = 0x736E6F6974706FLL;
      break;
    case 2:
      result = 0x6163696669746F6ELL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x776F6C666B726F77;
      break;
    case 7:
      result = 0x7364697575;
      break;
    case 8:
      result = 0x6E6F6973726576;
      break;
    case 9:
      result = 0x656C756465686373;
      break;
    case 10:
      result = 0x737265746C6966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A3EAC(void *a1)
{
  v3 = sub_1000443DC(&qword_1006CBC50);
  sub_10004EAE0();
  v5 = v4;
  __chkstk_darwin(v6, v7, v8);
  sub_10004EAF4();
  v11 = v10 - v9;
  sub_100044728(a1, a1[3]);
  sub_1000A5044();
  sub_10004EB7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000A5098();
  sub_1000A59C0();
  sub_1000A59D0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    sub_1000443DC(&qword_1006CBBB8);
    sub_1000A51E8(&qword_1006CBC68, sub_1000A50EC, &protocol conformance descriptor for <A> [A]);
    sub_1000A59C0();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000A596C(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000A596C(3);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000A596C(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000A596C(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000443DC(&qword_1006CA018);
    sub_1000A5A20(&qword_1006CA030, &protocol witness table for String);
    sub_1000A59C0();
    sub_10004EB7C();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000A59C0();
    sub_10004EB7C();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000A59D0();
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for PushPayload(0);
    type metadata accessor for Date();
    sub_1000A52AC(&unk_1006CABF0);
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000A5140();
    sub_1000A59C0();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v11, v3);
}

uint64_t sub_1000A41F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000443DC(&qword_1006CA2B0);
  __chkstk_darwin(v4 - 8, v5, v6);
  sub_10004EAF4();
  v9 = v8 - v7;
  sub_1000443DC(&qword_1006CBC80);
  sub_10004EAE0();
  v33 = v10;
  v34 = v11;
  __chkstk_darwin(v10, v12, v13);
  sub_10004EAF4();
  v16 = v15 - v14;
  v17 = type metadata accessor for PushPayload(0);
  __chkstk_darwin(v17, v18, v19);
  sub_10004EAF4();
  v22 = v21 - v20;
  v24 = *(v23 + 52);
  v25 = type metadata accessor for Date();
  sub_1000485F8(v22 + v24, 1, 1, v25);
  sub_100044728(a1, a1[3]);
  sub_1000A5044();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1000A5A74();
    sub_100044850(a1);

    return sub_10004D2E8(v22 + v24, &qword_1006CA2B0);
  }

  else
  {
    sub_1000A5194();
    sub_1000A5AD4();
    sub_1000A59DC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v22 = v35;
    sub_1000443DC(&qword_1006CBBB8);
    sub_1000A51E8(&qword_1006CBC90, sub_1000A5258, &protocol conformance descriptor for <A> [A]);
    sub_1000A5AD4();
    sub_1000A59DC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v22 + 8) = v35;
    sub_1000A5954(2);
    *(v22 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v22 + 24) = v26;
    sub_1000A5954(3);
    *(v22 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v22 + 40) = v27 & 1;
    sub_1000A5954(4);
    *(v22 + 48) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v22 + 56) = v28 & 1;
    sub_1000A5954(5);
    *(v22 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v22 + 72) = v29 & 1;
    sub_1000443DC(&qword_1006CA018);
    sub_1000A59E8(&qword_1006CA020, &protocol witness table for String);
    sub_1000A5AD4();
    sub_1000A59DC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v22 + 80) = v35;
    sub_1000A5AD4();
    sub_1000A59DC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v22 + 88) = v35;
    sub_1000A5954(8);
    *(v22 + 96) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v35) = 9;
    sub_1000A52AC(&unk_1006CAC30);
    sub_1000A59DC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A52EC(v9, v22 + v24);
    sub_1000A5354();
    sub_1000A5AD4();
    sub_1000A59D0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = *(v17 + 56);
    (*(v34 + 8))(v16, v33);
    *(v22 + v30) = v35;
    sub_100046ECC(v22, a2);
    sub_100044850(a1);
    return sub_100046F30(v22);
  }
}

uint64_t sub_1000A4764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A39C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A478C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A3D28();
  *a1 = result;
  return result;
}

uint64_t sub_1000A47B4(uint64_t a1)
{
  v2 = sub_1000A5044();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A47F0(uint64_t a1)
{
  v2 = sub_1000A5044();

  return CodingKey.debugDescription.getter(a1, v2);
}

_BYTE *storeEnumTagSinglePayload for PushPayload.PushPayloadErrors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000A4938);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000A4984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000443DC(&qword_1006CA2B0);
    v10 = a1 + *(a3 + 52);

    return sub_100046EA4(v10, a2, v9);
  }
}

uint64_t sub_1000A4A30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000443DC(&qword_1006CA2B0);
    v8 = v5 + *(a4 + 52);

    return sub_1000485F8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A4AB4(uint64_t a1)
{
  sub_1000A4C58(319, &qword_1006CBBB0, &qword_1006CBBB8);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_100063C2C(319, &qword_1006CACB0, &type metadata for String);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_100063C2C(319, &qword_1006CBBC0, &type metadata for UInt64);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_100063C2C(319, &qword_1006CBBC8, &type metadata for Double);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_1000A4C58(319, &qword_1006CBBD0, &qword_1006CA018);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_1000A4CA4(319);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_100063C2C(319, &unk_1006CBBE0, &type metadata for PushPayload.Filters);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1000A4C58(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1000471A4(a3);
    sub_1000A5B1C();
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000A4CA4(uint64_t a1)
{
  if (!qword_1006CBBD8)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006CBBD8);
    }
  }
}

uint64_t sub_1000A4CFC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000A4D50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushPayload.Command(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PushPayload.Command(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000A4F04);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000A4F40()
{
  result = qword_1006CBC38;
  if (!qword_1006CBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC38);
  }

  return result;
}

unint64_t sub_1000A4F98()
{
  result = qword_1006CBC40;
  if (!qword_1006CBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC40);
  }

  return result;
}

unint64_t sub_1000A4FF0()
{
  result = qword_1006CBC48;
  if (!qword_1006CBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC48);
  }

  return result;
}

unint64_t sub_1000A5044()
{
  result = qword_1006CBC58;
  if (!qword_1006CBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC58);
  }

  return result;
}

unint64_t sub_1000A5098()
{
  result = qword_1006CBC60;
  if (!qword_1006CBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC60);
  }

  return result;
}

unint64_t sub_1000A50EC()
{
  result = qword_1006CBC70;
  if (!qword_1006CBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC70);
  }

  return result;
}

unint64_t sub_1000A5140()
{
  result = qword_1006CBC78;
  if (!qword_1006CBC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC78);
  }

  return result;
}

unint64_t sub_1000A5194()
{
  result = qword_1006CBC88;
  if (!qword_1006CBC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC88);
  }

  return result;
}

uint64_t sub_1000A51E8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000471A4(&qword_1006CBBB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A5258()
{
  result = qword_1006CBC98;
  if (!qword_1006CBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC98);
  }

  return result;
}

uint64_t sub_1000A52AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    sub_1000A5B1C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A52EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CA2B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A5354()
{
  result = qword_1006CBCA0;
  if (!qword_1006CBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCA0);
  }

  return result;
}

unint64_t sub_1000A53A8()
{
  result = qword_1006CBCA8;
  if (!qword_1006CBCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCA8);
  }

  return result;
}

unint64_t sub_1000A53FC()
{
  result = qword_1006CBCB8;
  if (!qword_1006CBCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCB8);
  }

  return result;
}

unint64_t sub_1000A5450()
{
  result = qword_1006CBCC8;
  if (!qword_1006CBCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCC8);
  }

  return result;
}

_BYTE *sub_1000A54AC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000A5578);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PushPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000A5704);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000A5740()
{
  result = qword_1006CBCD0;
  if (!qword_1006CBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCD0);
  }

  return result;
}

unint64_t sub_1000A5798()
{
  result = qword_1006CBCD8;
  if (!qword_1006CBCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCD8);
  }

  return result;
}

unint64_t sub_1000A57F0()
{
  result = qword_1006CBCE0;
  if (!qword_1006CBCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCE0);
  }

  return result;
}

unint64_t sub_1000A5848()
{
  result = qword_1006CBCE8;
  if (!qword_1006CBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCE8);
  }

  return result;
}

unint64_t sub_1000A58A0()
{
  result = qword_1006CBCF0;
  if (!qword_1006CBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCF0);
  }

  return result;
}

unint64_t sub_1000A58F8()
{
  result = qword_1006CBCF8;
  if (!qword_1006CBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCF8);
  }

  return result;
}

uint64_t sub_1000A5984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_dynamicCast();
}

double sub_1000A59A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{

  return sub_10005527C(v19, &a19, &a14);
}

uint64_t sub_1000A59E8(unint64_t *a1, uint64_t a2)
{

  return sub_10004DD84(a1, a2, &protocol conformance descriptor for <A> [A]);
}

uint64_t sub_1000A5A20(unint64_t *a1, uint64_t a2)
{

  return sub_10004DD84(a1, a2, &protocol conformance descriptor for <A> [A]);
}

uint64_t sub_1000A5A44()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

void *sub_1000A5AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_1000A5AF8(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_1000A5B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_1000A5B48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1685025392 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  v6 = a1 == 0x786F62646E6173 && a2 == 0xE700000000000000;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (qword_1006C97F8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100046E6C(v7, qword_1006CBD00);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v10 = 136315138;
      v11 = sub_100052F7C(a1);

      *(v10 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unexpected push environment name: %s setting to prod", v10, 0xCu);
      sub_100044850(v12);
    }

    else
    {
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000A5D38()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CBD00);
  sub_100046E6C(v0, qword_1006CBD00);
  return Logger.init(subsystem:category:)();
}

id sub_1000A5DC0()
{
  result = [objc_allocWithZone(type metadata accessor for PushCoordinator()) init];
  static PushCoordinator.shared = result;
  return result;
}

uint64_t *PushCoordinator.shared.unsafeMutableAddressor()
{
  if (qword_1006C9800 != -1)
  {
    sub_1000A8584();
    swift_once();
  }

  return &static PushCoordinator.shared;
}

id static PushCoordinator.shared.getter()
{
  if (qword_1006C9800 != -1)
  {
    sub_1000A8584();
    swift_once();
  }

  v1 = static PushCoordinator.shared;

  return v1;
}

void static PushCoordinator.configurePush()()
{
  if (qword_1006C9800 != -1)
  {
    sub_1000A8584();
    swift_once();
  }
}

id sub_1000A5EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v9 - 8, v10, v11);
  sub_10004EAF4();
  *&v4[OBJC_IVAR____TtC3asd15PushCoordinator_pushServiceManager] = a1;
  *&v4[OBJC_IVAR____TtC3asd15PushCoordinator_pdsManager] = a2;
  *&v4[OBJC_IVAR____TtC3asd15PushCoordinator_cloudChannelManager] = a3;
  v32.receiver = v4;
  v32.super_class = ObjectType;

  v12 = objc_msgSendSuper2(&v32, "init");
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_1000A85B4();
  sub_1000485F8(v14, v15, v16, v13);
  sub_1000A85A8();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a2;

  v18 = v12;
  v19 = sub_1000A85C4();
  sub_10006F27C(v19, v20, v21, v22, v17);

  v23 = sub_1000A85B4();
  sub_1000485F8(v23, v24, v25, v13);
  sub_1000A85A8();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = a3;

  v27 = sub_1000A85C4();
  sub_10006F27C(v27, v28, v29, v30, v26);

  return v18;
}

uint64_t sub_1000A60CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000A8560;

  return sub_1000C21CC(v1);
}

uint64_t sub_1000A615C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100067ED0;

  return sub_10009DE20();
}

id sub_1000A61EC()
{
  ObjectType = swift_getObjectType();
  v0 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v0 - 8, v1, v2);
  sub_10004EAF4();
  v60 = v4 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_10004F290(v5, v6, v7, v8, v9, v10, v11, v12, v54, v55, v56, v57, v58, v59, v60, ObjectType, v62, v63, v64[0], v64[1], v64[2], v65, v66, v67[0], v67[1], v67[2]);
  v14 = v13;
  v16 = v15;

  v17 = sub_1000A5B48(v14, v16);
  type metadata accessor for ODIAccountManager();
  static ODIAccountManager.shared.getter();
  if (qword_1006C9818 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = sub_1000A7B4C(&v68, static ASDConfigurationManager.shared);
  v19 = [objc_allocWithZone(Vr3QrKl7Yn9l4CTz) init];
  v58 = [objc_opt_self() defaultCenter];
  if (qword_1006C97E8 != -1)
  {
    swift_once();
  }

  v20 = static RavioliManagerObjC.shared;
  v21 = static ASDConfigurationManager.shared;
  v22 = type metadata accessor for ASAnalyticsManager();
  v23 = swift_allocObject();
  v24 = v20;
  v59 = v19;

  v25 = sub_1000A7C68(v24, v59, v18, v21, v23);
  v63 = sub_1000A811C(0xD000000000000012, 0x80000001005A5140, v25, v17);
  v26 = static ASDConfigurationManager.shared;
  v27 = swift_allocObject();
  v69 = v22;
  v70 = &off_1006935C8;
  *&v68 = v27;
  type metadata accessor for PushManagerPDS();
  v57 = swift_allocObject();
  v28 = sub_10007E228(&v68, v22);
  v56 = v18;
  v54 = &v54;
  v29 = *(v22 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28, v28, v31);
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = *(v29 + 16);
  v33(&v54 - v32);
  HIDWORD(v55) = v17;
  v34 = *(&v54 - v32);
  v35 = v26;
  v36 = v58;
  v58 = sub_1000A770C(0xD000000000000012, 0x80000001005A5140, v17, v35, v36, v34, v57);
  sub_100044850(&v68);
  v37 = v63[3];
  v38 = swift_allocObject();
  v69 = v22;
  v70 = &off_1006935C8;
  *&v68 = v38;
  type metadata accessor for PushCloudChannelsManager();
  v39 = swift_allocObject();
  v40 = sub_10007E228(&v68, v22);
  v57 = &v54;
  __chkstk_darwin(v40, v40, v41);
  v33(&v54 - v32);
  v42 = *(&v54 - v32);
  v65 = v22;
  v66 = &off_1006935C8;
  v64[0] = v42;
  v43 = v56;

  v44 = v36;
  v45 = v37;
  swift_defaultActor_initialize();
  *(v39 + 200) = 0;
  *(v39 + 112) = v45;
  *(v39 + 120) = 0xD000000000000012;
  *(v39 + 128) = 0x80000001005A5140;
  *(v39 + 136) = BYTE4(v55);
  *(v39 + 144) = v43;
  sub_1000446C4(v64, v39 + 152);
  *(v39 + 192) = v44;
  v46 = type metadata accessor for TaskPriority();
  v47 = v60;
  sub_1000485F8(v60, 1, 1, v46);
  sub_1000A85A8();
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v48[4] = v39;

  v49 = v44;
  v50 = v45;

  sub_10006F27C(0, 0, v47, &unk_1005CE000, v48);

  sub_100044850(v64);
  sub_100044850(&v68);
  v51 = objc_allocWithZone(ObjectType);
  v52 = sub_1000A5EF8(v63, v58, v39);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v52;
}

uint64_t sub_1000A67E8()
{
  sub_1000657D4();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000A8564;

  return sub_1000C26A0(v1);
}

uint64_t sub_1000A6884()
{
  sub_1000657EC();
  sub_1000A8598();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v3 = sub_1000A8568(v1);

  return sub_1000A67C8(v3, v4, v5, v6);
}

uint64_t sub_1000A6978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v4 - 8, v5, v6);
  sub_10004EAF4();
  type metadata accessor for TaskPriority();
  v7 = sub_1000A85B4();
  sub_1000485F8(v7, v8, v9, v10);
  sub_1000A85A8();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v12 = v2;
  v13 = sub_1000A85C4();
  sub_10006F27C(v13, v14, v15, a2, v11);
}

uint64_t sub_1000A6A4C()
{
  sub_1000657D4();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000A6AE4;

  return sub_1000C37D4(v1);
}

uint64_t sub_1000A6AE4()
{
  sub_1000657D4();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000A6BCC()
{
  swift_unknownObjectRelease();

  sub_1000A85A8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000A6C08()
{
  sub_1000657EC();
  sub_1000A8598();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v3 = sub_1000A8568(v1);

  return sub_1000A6A2C(v3, v4, v5, v6);
}

_BYTE *storeEnumTagSinglePayload for PushEnvironment(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000A6E28);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000A6E64()
{
  result = qword_1006CBD58;
  if (!qword_1006CBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBD58);
  }

  return result;
}

id sub_1000A6EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = String._bridgeToObjectiveC()();

LABEL_6:
  v10 = [v5 initWithEnvironmentName:v8 namedDelegatePort:v9 queue:a5];

  return v10;
}

id sub_1000A6F64(uint64_t a1, uint64_t a2)
{
  v3 = String._bridgeToObjectiveC()();

  v8 = 0;
  v4 = [v2 initWithClientID:v3 error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

void sub_1000A7030(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 _setOpportunisticTopics:isa];
}

id sub_1000A709C(uint64_t a1, void *a2)
{
  v7[3] = type metadata accessor for PushDispatchManager(0);
  v7[4] = &off_100693B38;
  v7[0] = a1;
  Logger.init(subsystem:category:)();
  sub_1000446C4(v7, a2 + OBJC_IVAR____TtCC3asd18PushServiceManager12PushDelegate_pushDispatchManager);
  v6.receiver = a2;
  v6.super_class = type metadata accessor for PushServiceManager.PushDelegate(0);
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_100044850(v7);
  return v4;
}

id sub_1000A7168(uint64_t a1)
{
  v12 = type metadata accessor for PushDispatchManager(0);
  v13 = &off_100693B38;
  v11[0] = a1;
  v2 = objc_allocWithZone(type metadata accessor for PushServiceManager.PushDelegate(0));
  v3 = sub_10007E228(v11, v12);
  __chkstk_darwin(v3, v3, v4);
  v6 = (&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = sub_1000A709C(*v6, v2);
  sub_100044850(v11);
  return v8;
}

void *sub_1000A7274(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v40 = a4;
  v38 = a1;
  v39 = a2;
  v37 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v37 - 8);
  __chkstk_darwin(v37, v8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12, v13, v14);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8, v16, v17);
  v42[3] = type metadata accessor for PushDispatchManager(0);
  v42[4] = &off_100693B38;
  v42[0] = a3;
  sub_10007DD5C();
  static DispatchQoS.unspecified.getter();
  v41[0] = _swiftEmptyArrayStorage;
  sub_10007DDA0();
  sub_1000443DC(&qword_1006CB010);
  sub_10007DDF8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v37);
  v18 = v38;
  a5[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a5[6] = 0xD000000000000019;
  a5[7] = 0x80000001005A5180;
  v19 = v39;
  a5[4] = v18;
  a5[5] = v19;
  sub_1000446C4(v42, v41);
  v20 = sub_10007E228(v41, v41[3]);
  __chkstk_darwin(v20, v20, v21);
  v23 = (&v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;

  v26 = sub_1000A7168(v25);
  sub_100044850(v41);
  a5[8] = v26;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  v30 = a5[6];
  v31 = a5[7];
  v32 = a5[2];
  objc_allocWithZone(APSConnection);

  v33 = v32;
  result = sub_1000A6EB8(v27, v29, v30, v31, v32);
  if (result)
  {
    a5[3] = result;
    [result setDelegate:a5[8]];
    v35 = a5[3];
    sub_1000443DC(&qword_1006CA620);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1005CB870;
    *(v36 + 32) = v18;
    *(v36 + 40) = v19;
    sub_1000A7030(v36, v35);
    sub_100044850(v42);
    return a5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A764C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for ASDConfigurationManager();
  v9 = &off_1006943C0;
  *&v7 = a2;
  Logger.init(subsystem:category:)();
  sub_100046D90(a1, a3 + 16);
  sub_100046D90(&v7, a3 + 56);
  return a3;
}

uint64_t sub_1000A770C(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v14 - 8, v15, v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[3] = type metadata accessor for ASAnalyticsManager();
  v30[4] = &off_1006935C8;
  v30[0] = a6;
  swift_defaultActor_initialize();
  *(a7 + 200) = 0;
  *(a7 + 208) = 0;
  *(a7 + 120) = a1;
  *(a7 + 128) = a2;
  *(a7 + 136) = a3 & 1;
  *(a7 + 184) = a4;
  sub_1000446C4(v30, a7 + 144);
  *(a7 + 192) = a5;
  objc_allocWithZone(PDSRegistrar);
  v19 = a4;
  v20 = a5;
  *(a7 + 112) = sub_1000A6F64(0x6C7070612E6D6F63, 0xED00006473612E65);
  if (qword_1006C9838 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100046E6C(v21, qword_1006CC630);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29[5] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_100052F7C(0x6C7070612E6D6F63);
    _os_log_impl(&_mh_execute_header, v22, v23, "PDS Registrar configured for clientID: %s", v24, 0xCu);
    sub_100044850(v25);
  }

  v26 = type metadata accessor for TaskPriority();
  sub_1000485F8(v18, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a7;

  sub_10006F27C(0, 0, v18, &unk_1005CE028, v27);

  sub_100044850(v30);
  return a7;
}

uint64_t sub_1000A7B4C(__int128 *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v15 = &off_1006943C0;
  v13[0] = a2;
  type metadata accessor for DeviceContextProvider(0);
  v4 = swift_allocObject();
  v5 = sub_10007E228(v13, ObjectType);
  __chkstk_darwin(v5, v5, v6);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = sub_1000A764C(a1, *v8, v4);
  sub_100044850(v13);
  return v10;
}

uint64_t sub_1000A7C68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v41 = a2;
  v42 = a3;
  v8 = *a5;
  v9 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v9 - 8, v10, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RavioliManagerObjC();
  v52[3] = v14;
  v52[4] = &off_1006937A8;
  v52[0] = a1;
  v15 = type metadata accessor for ASDConfigurationManager();
  v50 = v15;
  v51 = &off_1006943D8;
  v49[0] = a4;
  v47 = v8;
  v48 = &off_1006935C8;
  v46[0] = a5;
  type metadata accessor for PushDispatchManager(0);
  v16 = swift_allocObject();
  v17 = sub_10007E228(v52, v14);
  __chkstk_darwin(v17, v17, v18);
  v20 = (&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_10007E228(v49, v50);
  __chkstk_darwin(v22, v22, v23);
  v25 = (&v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_10007E228(v46, v47);
  __chkstk_darwin(v27, v27, v28);
  v30 = (&v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v20;
  v33 = *v25;
  v34 = *v30;
  v45[3] = v14;
  v45[4] = &off_1006937A8;
  v45[0] = v32;
  v44[3] = v15;
  v44[4] = &off_1006943D8;
  v44[0] = v33;
  v43[3] = v8;
  v43[4] = &off_1006935C8;
  v43[0] = v34;
  swift_defaultActor_initialize();
  Logger.init(subsystem:category:)();
  *(v16 + OBJC_IVAR____TtC3asd19PushDispatchManager_scheduledOperations) = _swiftEmptyArrayStorage;
  sub_1000446C4(v45, v16 + 112);
  v35 = v41;
  *(v16 + 152) = v41;
  sub_1000446C4(v44, v16 + 160);
  *(v16 + OBJC_IVAR____TtC3asd19PushDispatchManager_contextProvider) = v42;
  sub_1000446C4(v43, v16 + OBJC_IVAR____TtC3asd19PushDispatchManager_analyticsManager);
  v36 = OBJC_IVAR____TtC3asd19PushDispatchManager_scheduledOperations;
  swift_beginAccess();
  *(v16 + v36) = _swiftEmptyArrayStorage;
  v37 = type metadata accessor for TaskPriority();
  sub_1000485F8(v13, 1, 1, v37);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v16;
  v39 = v35;

  sub_10006F27C(0, 0, v13, &unk_1005CE030, v38);

  sub_100044850(v43);
  sub_100044850(v44);
  sub_100044850(v45);
  sub_100044850(v46);
  sub_100044850(v49);
  sub_100044850(v52);
  return v16;
}

void *sub_1000A811C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v18 = type metadata accessor for PushDispatchManager(0);
  v19 = &off_100693B38;
  v17[0] = a3;
  type metadata accessor for PushServiceManager();
  v8 = swift_allocObject();
  v9 = sub_10007E228(v17, v18);
  __chkstk_darwin(v9, v9, v10);
  v12 = (&v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_1000A7274(a1, a2, *v12, a4 & 1, v8);
  sub_100044850(v17);
  return v14;
}

uint64_t sub_1000A8254()
{
  sub_1000657EC();
  sub_1000A8598();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v3 = sub_1000A8568(v1);

  return sub_10009D9D8(v3, v4, v5, v6);
}

uint64_t sub_1000A82E0()
{
  sub_1000657EC();
  sub_1000A8598();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  sub_1000A8568(v1);

  return sub_1000A60CC();
}

uint64_t sub_1000A836C()
{
  sub_1000657EC();
  sub_1000A8598();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  sub_1000A8568(v1);

  return sub_1000A615C();
}

uint64_t sub_1000A83F8()
{
  sub_1000657EC();
  sub_1000A8598();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v3 = sub_1000A8568(v1);

  return sub_1000C1DD4(v3, v4, v5, v6);
}

uint64_t sub_1000A8484()
{
  swift_unknownObjectRelease();

  sub_1000A85A8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000A84C0()
{
  sub_1000657EC();
  sub_1000A8598();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  sub_1000A8568(v1);

  return sub_1000986B0();
}

uint64_t sub_1000A85D4()
{
  v1 = v0;
  v9 = 0;
  v2 = *(v0 + OBJC_IVAR____TtC3asd15ContactsManager_accessQueue);
  sub_10006BF14();
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v1;
  sub_10006BF14();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000A936C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1000A9390;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000BBBE8;
  aBlock[3] = &unk_1006942B8;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

void sub_1000A8738(id *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC3asd15ContactsManager__contact);
  v4 = *a1;
  *a1 = v2;
  v3 = v2;
}

uint64_t sub_1000A8784(void *a1)
{
  v3 = type metadata accessor for DispatchQoS();
  sub_10004EAE0();
  v5 = v4;
  __chkstk_darwin(v6, v7, v8);
  sub_10004EAF4();
  v11 = v10 - v9;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  sub_10004EAE0();
  v14 = v13;
  __chkstk_darwin(v15, v16, v17);
  sub_10004EAF4();
  v20 = v19 - v18;
  static DispatchWorkItemFlags.barrier.getter();
  sub_10006BF14();
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  *(v21 + 24) = a1;
  aBlock[4] = sub_1000A9318;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100069F68;
  aBlock[3] = &unk_100694240;
  v22 = _Block_copy(aBlock);
  v23 = a1;

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v5 + 8))(v11, v3);
  (*(v14 + 8))(v20, v12);
}

void sub_1000A8994(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC3asd15ContactsManager__contact);
  *(a1 + OBJC_IVAR____TtC3asd15ContactsManager__contact) = a2;
  v2 = a2;
}

uint64_t sub_1000A89DC(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10004EAE0();
  v29 = v5;
  v30 = v4;
  __chkstk_darwin(v4, v6, v7);
  sub_10004EAF4();
  v28 = v9 - v8;
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8, v11, v12);
  sub_10004EAF4();
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13 - 8, v14, v15);
  sub_10004EAF4();
  sub_1000443DC(&qword_1006CBEB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1005CE040;
  *(v16 + 32) = CNContactGivenNameKey;
  *(v16 + 40) = CNContactFamilyNameKey;
  *(v16 + 48) = CNContactPhoneNumbersKey;
  *(v16 + 56) = CNContactEmailAddressesKey;
  *(v16 + 64) = CNContactPostalAddressesKey;
  *(v2 + 24) = v16;
  v27 = OBJC_IVAR____TtC3asd15ContactsManager_accessQueue;
  sub_1000591B0(0, &qword_1006CC440, OS_dispatch_queue_ptr);
  v17 = CNContactGivenNameKey;
  v18 = CNContactFamilyNameKey;
  v19 = CNContactPhoneNumbersKey;
  v20 = CNContactEmailAddressesKey;
  v21 = CNContactPostalAddressesKey;
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v29 + 104))(v28, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
  *(v2 + v27) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + OBJC_IVAR____TtC3asd15ContactsManager__contact) = 0;
  *(v2 + 16) = a1;
  v22 = OBJC_IVAR____TtC3asd15ContactsManager_logger;
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v3 + v22, a2, v23);
  v25 = a1;
  sub_1000A8F7C();

  (*(v24 + 8))(a2, v23);
  return v3;
}

void sub_1000A8CC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Registering observer for MeCard change", v8, 2u);
  }

  v9 = [objc_opt_self() defaultCenter];
  v10 = CNContactStoreMeContactDidChangeNotification;
  v11 = [objc_opt_self() mainQueue];
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = a1;
  v12[4] = a2;
  v15[4] = sub_1000A93D8;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1000C1C04;
  v15[3] = &unk_100694308;
  v13 = _Block_copy(v15);

  v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

uint64_t sub_1000A8EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = sub_1000A8F7C();
  if (result)
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "MeContactDidChange notification received. Triggering handler.", v7, 2u);
    }

    return a3();
  }

  return result;
}

uint64_t sub_1000A8F7C()
{
  v1 = *(v0 + 16);
  sub_1000443DC(&qword_1006CBEA0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v12 = 0;
  v3 = [v1 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:&v12];

  if (v3)
  {
    v4 = v12;
    v5 = v3;
    v6 = sub_1000A85D4();
    if (!v6 || (v7 = v6, sub_1000591B0(0, &qword_1006CBEA8, CNContact_ptr), v8 = v5, v9 = static NSObject.== infix(_:_:)(), v8, v7, (v9 & 1) == 0))
    {
      sub_1000A8784(v3);

      return 1;
    }
  }

  else
  {
    v11 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return 0;
}

uint64_t sub_1000A90E8()
{

  v1 = OBJC_IVAR____TtC3asd15ContactsManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1000A9178()
{
  sub_1000A90E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ContactsManager(uint64_t a1)
{
  result = qword_1006CBDA0;
  if (!qword_1006CBDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A9224(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000A92DC()
{

  sub_10006BF14();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000A9320(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A9338()
{

  sub_10006BF14();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000A9398()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A93F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!v3 & v2)
  {
    switch(a1)
    {
      case 428:
        v5 = &enum case for HTTPStatusCode.httpPreconditionRequired(_:);
        break;
      case 429:
        v5 = &enum case for HTTPStatusCode.httpTooManyRequests(_:);
        break;
      case 430:
      case 431:
      case 432:
        goto LABEL_11;
      case 433:
        v5 = &enum case for HTTPStatusCode.httpAuthKitReprovision(_:);
        break;
      case 434:
        v5 = &enum case for HTTPStatusCode.httpAuthKitResync(_:);
        break;
      default:
        switch(a1)
        {
          case 304:
            v5 = &enum case for HTTPStatusCode.httpNotModified(_:);
            break;
          case 301:
            v5 = &enum case for HTTPStatusCode.httpMovedPermanently(_:);
            break;
          case 200:
            v5 = &enum case for HTTPStatusCode.httpSuccess(_:);
            break;
          default:
LABEL_11:
            *a2 = a1;
            v5 = &enum case for HTTPStatusCode.httpUnknownStatus(_:);
            break;
        }

        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 500:
        v5 = &enum case for HTTPStatusCode.httpInternalServerError(_:);
        break;
      case 501:
        v5 = &enum case for HTTPStatusCode.httpNotImplemented(_:);
        break;
      case 502:
        v5 = &enum case for HTTPStatusCode.httpBadGateway(_:);
        break;
      case 503:
        v5 = &enum case for HTTPStatusCode.httpServiceUnavailable(_:);
        break;
      case 504:
        v5 = &enum case for HTTPStatusCode.httpGatewayTimeout(_:);
        break;
      default:
        JUMPOUT(0);
    }
  }

  v6 = *v5;
  v7 = type metadata accessor for HTTPStatusCode();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2, v6, v7);
}

uint64_t sub_1000A960C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  v5 = 0;
  v6 = a1 + 40;
  v15 = _swiftEmptyArrayStorage;
LABEL_2:
  for (i = (v6 + 16 * v5); ; i += 2)
  {
    if (v3 == v5)
    {

      return v15;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v9 = *(i - 1);
    v8 = *i;
    sub_10005915C();

    if (!StringProtocol.caseInsensitiveCompare<A>(_:)())
    {
      v10 = v15;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000BDEA4(0, v15[2] + 1, 1);
        v10 = v15;
      }

      v12 = v10[2];
      v11 = v10[3];
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        result = sub_1000BDEA4((v11 > 1), v12 + 1, 1);
        v13 = v12 + 1;
        v10 = v15;
      }

      ++v5;
      v10[2] = v13;
      v15 = v10;
      v14 = &v10[2 * v12];
      v14[4] = v9;
      v14[5] = v8;
      v6 = a1 + 40;
      goto LABEL_2;
    }

    ++v5;
  }

  __break(1u);
  return result;
}
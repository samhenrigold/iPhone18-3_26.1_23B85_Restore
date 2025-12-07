id sub_100004F84(uint64_t a1)
{
  if (qword_1003B0F18 != -1)
  {
    sub_100257058();
  }

  v2 = qword_1003B0F10;

  return v2;
}

uint64_t sub_100005014(int a1)
{
  v3 = [v1 callStatus] == 6 || objc_msgSend(v1, "callStatus") == 1;
  if (![v1 isEmergency] || (v4 = v3 | ~objc_msgSend(v1, "isFailureExpected"), v5 = a1, (v4 & 1) != 0))
  {
    v5 = 0;
  }

  if ([v1 status] != 6 || !objc_msgSend(v1, "disconnectedReasonRequiresCallBackUI") || (objc_msgSend(v1, "isEmergency") & 1) == 0)
  {
    a1 = 0;
  }

  return (v5 | a1) & 1;
}

void sub_100005150(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v7 = a5;
  v9 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1000088E0();
      __CocoaSet.element(at:)();
      sub_1000064BC(0, v7, a6);
      sub_100179574();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000064BC(0, a5, a6);
    sub_1000088E0();
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      sub_1000088E0();
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v7 = v16;
      v10 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v11 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v9 = v10 & v11;
        if (((*(a4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v12 = *(*(a4 + 48) + 8 * v9);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_15;
        }

        v10 = v9 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v14 = *(*(a4 + 48) + 8 * v9);

  v15 = v14;
}

uint64_t sub_100005340()
{
}

uint64_t sub_100005368()
{
}

uint64_t sub_100005384()
{

  return swift_slowAlloc();
}

void *sub_1000053B8()
{

  return sub_1001E2720(v1, v0, v3, v2);
}

uint64_t sub_1000053DC()
{
}

void sub_100005414(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100005434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1001B1E00(v9, &a9, a3);
}

id sub_100005450()
{

  return sub_1001FFAD8();
}

uint64_t sub_100005480(uint64_t a1, uint64_t a2, ...)
{

  return String.init<A>(reflecting:)();
}

unint64_t sub_100005498(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_100008ADC(a1, a2, va);
}

void sub_1000054BC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1000054DC()
{
  sub_100005B2C(v0);
}

id sub_100005538(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v8 + 2400);

  return [a1 v10];
}

void *sub_100005574()
{
  v2 = *(v0 + 24);

  return _Block_copy(v2);
}

uint64_t sub_10000558C()
{
}

uint64_t sub_1000055A8()
{
}

uint64_t sub_1000055CC(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1000055F4(uint64_t a1)
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

    sub_1000056B4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL sub_1000056B4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10000664C();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_100006658(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

id sub_1000057FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String._bridgeToObjectiveC()();

  isa = Set._bridgeToObjectiveC()().super.isa;

  v6 = [v3 initWithDisplayName:v4 handles:isa];

  return v6;
}

uint64_t sub_100005884(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

BOOL sub_100005908(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100005924()
{

  return swift_slowAlloc();
}

uint64_t sub_100005958(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v1 + 112) = a1;
}

void *sub_100005978(void *result)
{
  result[4] = v3;
  result[5] = v1;
  result[6] = v2;
  return result;
}

uint64_t sub_1000059A8()
{

  return swift_slowAlloc();
}

uint64_t sub_1000059E0()
{
  sub_100006848(v0, 1, 1, v2);
  sub_100006848(v1, 1, 1, v2);

  return type metadata accessor for URL();
}

uint64_t sub_100005A60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005AC0(uint64_t a1, uint64_t a2)
{
  sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
  swift_allocError();
  *v3 = a2;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_100005B2C(void *a1)
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

uint64_t sub_100005B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_100005BB8(uint64_t a1)
{
}

uint64_t sub_100005BEC()
{
  v3 = *(v0 + 8);
  *(v2 - 264) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v1;
  *(v2 - 240) = v3;
  return result;
}

uint64_t sub_100005C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100006848(a1, 0, 1, a4);

  return type metadata accessor for MainActor();
}

uint64_t sub_100005C90(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _print_unlocked<A, B>(_:_:)();
}

uint64_t sub_100005CB0()
{

  return type metadata accessor for UUID();
}

id sub_100005CD0(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t sub_100005D4C()
{

  return swift_slowAlloc();
}

id sub_100005D64@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  v5 = *(v2 + 1096);

  return [v4 v5];
}

id sub_100005D94()
{
  v2 = *(v0 + 2896);

  return objc_allocWithZone(v2);
}

uint64_t sub_100005DAC()
{

  return sub_10020B2D8(v0, sub_10021347C, 2);
}

unint64_t sub_100005E2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100014378(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

void sub_100005F6C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_100005FF8(void *a1, void *a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if ([a1 bypassIntervention])
  {
    (a3)[2](a3, a1, 0);

    _Block_release(a3);
  }

  else
  {
    v7 = [a1 handles];
    sub_1000064BC(0, &qword_1003AAE50, TUHandle_ptr);
    sub_1000064FC(&qword_1003AAE58, &qword_1003AAE50, TUHandle_ptr);
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = sub_10000654C(v8);
    if (v9)
    {
      v10 = v9;
      v53 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v50 = sub_100006554(v8);
      v51 = v11;
      v52 = v12 & 1;
      if ((v10 & 0x8000000000000000) == 0)
      {
        v41 = a2;
        v42 = a1;
        v43 = v6;
        aBlock = a3;
        v13 = 0;
        v46 = v8 & 0xC000000000000001;
        v14 = &selRef_submitCAMetric_viewId_;
        v47 = v8;
        v45 = v10;
        while (!__OFADD__(v13, 1))
        {
          v15 = v50;
          v16 = v52;
          v48 = v51;
          sub_100005150(v50, v51, v52, v8, &qword_1003AAE50, TUHandle_ptr);
          v18 = v17;
          v19 = sub_1000065B4(v17, &selRef_siriDisplayName);
          if (v20)
          {
            v21 = v19;
            v22 = v20;
          }

          else
          {
            v23 = [v18 v14[421]];
            v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v24;
          }

          sub_10014EA98(&qword_1003AAF10, &unk_1002FB780);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1002FAB60;
          v26 = [v18 v14[421]];
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          *(inited + 32) = v27;
          *(inited + 40) = v29;
          v30 = sub_1000055F4(inited);
          v31 = objc_allocWithZone(SCAParticipant);
          sub_1000057FC(v21, v22, v30);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (v46)
          {
            v8 = v47;
            if (!v16)
            {
              goto LABEL_24;
            }

            v14 = &selRef_submitCAMetric_viewId_;
            if (__CocoaSet.Index.handleBitPattern.getter())
            {
              swift_isUniquelyReferenced_nonNull_native();
            }

            v37 = v45;
            v38 = v13 + 1;
            sub_10014EA98(&qword_1003AB420, &qword_1002FBD78);
            v39 = Set.Index._asCocoa.modify();
            __CocoaSet.formIndex(after:isUnique:)();
            v39(v49, 0);
          }

          else
          {
            v8 = v47;
            v32 = sub_100178FB0(v15, v48, v16, v47);
            v34 = v33;
            v36 = v35;
            sub_100005884(v15, v48, v16);
            v50 = v32;
            v51 = v34;
            v52 = v36 & 1;
            v37 = v45;
            v14 = &selRef_submitCAMetric_viewId_;
            v38 = v13 + 1;
          }

          ++v13;
          if (v38 == v37)
          {

            sub_100005884(v50, v51, v52);
            v40 = v53;
            v6 = v43;
            a3 = aBlock;
            a2 = v41;
            a1 = v42;
            goto LABEL_21;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_24:
      _Block_release(aBlock);
      __break(1u);
    }

    else
    {

      v40 = _swiftEmptyArrayStorage;
LABEL_21:
      sub_1001792AC(a1, v40, sub_1001794FC, v6, a2, &unk_10035BFA0, &off_10035F110, &unk_1002FBD80);

      _Block_release(a3);
    }
  }
}

uint64_t sub_100006480()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000064BC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000064FC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000064BC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006554(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

uint64_t sub_1000065B4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1000085C0();
}

void sub_100006658(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10019F8EC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1001A02AC(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1001A0030();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_1000067F8(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t sub_1000068AC(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2048;
  return result;
}

NSArray sub_1000068D4()
{

  return Array._bridgeToObjectiveC()();
}

uint64_t sub_100006918@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_100163918(v2, &a2 - a1);
}

void sub_10000696C(uint64_t a1)
{

  sub_1002313A0(v2, 0xD000000000000011, v1 | 0x8000000000000000);
}

void sub_1000069A8(Swift::String a1)
{

  String.append(_:)(a1);
}

uint64_t sub_1000069C0()
{
}

void sub_1000069D8(uint64_t a1, uint64_t a2)
{

  sub_1001CC610(v2, a1, a2);
}

uint64_t sub_100006A20()
{

  return swift_getObjectType();
}

uint64_t sub_100006A40(uint64_t a1)
{

  return sub_100006AC0(a1, 1, v1);
}

uint64_t sub_100006A58()
{
}

void *sub_100006A74(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x98uLL);
}

void sub_100006A90()
{
  *(v2 - 104) = v0;
  *(v2 - 96) = v1;
  *(v2 - 136) = _NSConcreteStackBlock;
}

uint64_t sub_100006AE8(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006BB0()
{

  return type metadata accessor for Logger();
}

id sub_100006BD0()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

id sub_100006C44()
{
  v4 = *(v2 + 3328);

  return [v0 v4];
}

id sub_100006C60()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

id sub_100006CB0()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_100006CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_task_create();
}

uint64_t sub_100006D28()
{

  return swift_unknownObjectWeakInit();
}

void sub_100006D40(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

id sub_100006D78()
{
  v4 = *(v2 + 3328);

  return [v0 v4];
}

id sub_100006D94()
{
  v3 = *(v1 + 1096);

  return [v0 v3];
}

uint64_t sub_100006DD0(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL sub_100006E00(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100006E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);

  sub_1001E5BA0(v46, va, &a17);
}

double sub_100006E74@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

id sub_100006E88(uint64_t a1)
{
  v4 = *(v2 + 3328);

  return [v1 v4];
}

id sub_100006F08()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

void sub_100006F20(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v4 = v1 + 16 * v3;
  *(v4 + 32) = v2;
  *(v4 + 40) = 1;
}

uint64_t sub_100006F7C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100006FDC()
{
  sub_1000058A8();
  sub_1000301C8();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_1000075E8(v1);

  return v4(v3);
}

uint64_t sub_10000706C(uint64_t a1)
{

  return swift_once();
}

void sub_10000708C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void sub_1000070D4()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

void sub_1000070F8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100007158()
{

  return swift_beginAccess();
}

void sub_100007188()
{

  sub_1001621BC();
}

id sub_1000071B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 + 2400);

  return [a1 v9];
}

uint64_t sub_1000071D4()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1000071EC()
{

  return sub_100158DE8(v1, v0);
}

uint64_t sub_100007204(float a1, uint64_t a2, uint64_t a3)
{
  *v3 = a1;

  return swift_unknownObjectRetain();
}

uint64_t sub_100007238(uint64_t a1)
{

  return CircleOverlayConfig.init(corner:scale:imageName:color:imageColor:imageScale:)();
}

id sub_1000072A4()
{
  *(v1 + 32) = v2;

  return [v0 leadingAnchor];
}

uint64_t sub_1000072F8()
{

  return swift_task_alloc();
}

uint64_t sub_100007324(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_10000733C()
{

  return swift_getObjectType();
}

uint64_t sub_100007354()
{

  return UIButton.configuration.setter();
}

uint64_t sub_10000736C()
{

  return swift_getObjectType();
}

uint64_t sub_100007398()
{

  return type metadata accessor for CircleOverlayConfig.CircleCorner(0);
}

uint64_t sub_1000073C0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1000073F0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007410(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100009794;

  return v6(a1);
}

void sub_100007514(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_100007530(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_10000755C(uint64_t a1)
{

  return swift_once();
}

id sub_1000075C8(uint64_t a1)
{
  v4 = *(v2 + 3328);

  return [v1 v4];
}

uint64_t (*sub_100007618@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>))()
{
  *(v2 + 240) = a2;
  *(v2 + 248) = a1;
  return sub_10016E2BC;
}

uint64_t sub_100007634(uint64_t a1)
{

  return swift_once();
}

id sub_100007680(uint64_t a1)
{
  v4 = *(v2 + 3328);

  return [v1 v4];
}

id sub_1000076A0(uint64_t a1)
{
  v4 = *(v1 + 3328);

  return [v2 v4];
}

uint64_t sub_1000076C0(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_1000076E0(uint64_t a1, uint64_t a2)
{

  return sub_100028A30();
}

id sub_100007718(uint64_t a1)
{
  v4 = *(v2 + 3328);

  return [v1 v4];
}

id sub_100007738()
{
  v4 = *(v2 + 3328);

  return [v0 v4];
}

id sub_100007768()
{
  v4 = *(v2 + 3328);

  return [v0 v4];
}

uint64_t sub_1000077E0(uint64_t a1)
{

  return swift_once();
}

id sub_100007848(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *v14 = a13;
  *(v14 + 4) = v13;
  *a1 = v13;

  return v13;
}

id sub_100007888(uint64_t *a1)
{

  return sub_1001D2AD0(a1, sub_1001D35CC);
}

double sub_1000078C0()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 8) = 0u;
  return result;
}

uint64_t sub_1000078D4(uint64_t a1)
{

  return swift_once();
}

id sub_1000078F4()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_100007910(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007930(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10000796C(uint64_t a1)
{

  return swift_once();
}

id sub_10000798C()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_1000079DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0xE000000000000000;
  v8 = 0;

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, *&a3, v4, *&v6, *&v8)._countAndFlagsBits;
}

uint64_t sub_1000079FC(uint64_t a1)
{

  return sub_10000830C(a1, v1, v2);
}

uint64_t sub_100007AB8(uint64_t a1, uint64_t a2, ...)
{

  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t (*sub_100007AD8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>))()
{
  *(v2 + 720) = a1;
  *(v2 + 712) = a2;
  return sub_1002476B8;
}

uint64_t sub_100007B40()
{

  return String.utf8CString.getter();
}

void sub_100007B74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id sub_100007BAC()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_100007BC4()
{

  return sub_1000064BC(0, v0, v1);
}

uint64_t sub_100007BE0(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

id sub_100007D54(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 24);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

BOOL sub_100007DC4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100007DEC()
{

  return SOSUIWebRTCStateName.rawValue.getter();
}

unint64_t sub_100007E60(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_100008ADC(0x654D3C7961727241, 0xEE003E6567617373, &a10);
}

id sub_100007E98()
{
  v4 = *(v1 + 1096);

  return [v0 v4];
}

unint64_t sub_100007EB4@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_100008ADC(0xD000000000000062, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t sub_100007EF8()
{
}

uint64_t sub_100007F10@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_100163918(v2, &a2 - a1);
}

void sub_100007F44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100007F64(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100007FDC()
{

  sub_1001623E4();
}

uint64_t sub_100008020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10014EA98(a3, a4);
}

id sub_10000805C@<X0>(const char *a1@<X1>, double a2@<X8>)
{

  return [v2 a1];
}

uint64_t sub_100008078()
{
}

uint64_t sub_100008094(uint64_t a1)
{

  return sub_1000306A4(a1, v2, v1);
}

uint64_t sub_1000080B8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1000080D4(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1000080FC()
{

  return swift_getWitnessTable();
}

id sub_100008158()
{
  v4 = *(v2 + 3328);

  return [v1 v4];
}

uint64_t sub_1000081D4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000081F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008208()
{
  sub_100006610();
  sub_1000058C4();
  v1 = *v0;
  sub_100006870();
  *v2 = v1;

  sub_10000535C();

  return v3();
}

uint64_t sub_10000830C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10014EA98(a2, a3);
  sub_100006B9C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100008360(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10014EA98(a2, a3);
  sub_1000058E8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000083C4(uint64_t a1)
{

  return dispatch thunk of Actor.unownedExecutor.getter();
}

id sub_1000083EC()
{
  v2 = *(v0 + 2896);

  return objc_allocWithZone(v2);
}

uint64_t sub_100008408(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

id sub_100008414()
{
  v4 = *(v0 + 3328);

  return [v1 v4];
}

BOOL sub_10000843C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100008458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return CircleOverlayConfig.init(corner:scale:imageName:color:imageColor:imageScale:)();
}

uint64_t sub_100008480()
{
}

BOOL sub_10000849C(unsigned __int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_100008530(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_10000855C(uint64_t a1@<X8>)
{
  v3 = 0xD00000000000001ALL;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_100008580(uint64_t a1)
{

  return swift_allocObject();
}

void sub_100008598(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

double sub_10000861C(double a1)
{
  result = v4 + vabdd_f64(a1, *(v2 + v1));
  *(v2 + v3) = result;
  *(v2 + v1) = 0xBFF0000000000000;
  return result;
}

uint64_t sub_100008638(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;

  return String.init<A>(describing:)();
}

uint64_t sub_100008690()
{

  return static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_1000086BC(uint64_t a1)
{

  return swift_allocObject();
}

id sub_1000086D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v5 + 2496);

  return [a1 v7];
}

uint64_t sub_1000086F0(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_10000870C()
{
  sub_100005B2C(v0);
}

id sub_100008760()
{
  v3 = *(v1 + 1352);

  return [v0 v3];
}

uint64_t sub_10000877C(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1000087D0(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1000087F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

id sub_100008824()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

id sub_10000883C(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

void *sub_100008878(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000088EC()
{
}

id sub_10000891C(void *a1)
{
  v4 = *(v2 + 1928);

  return [a1 v4];
}

id sub_100008934()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_10000894C()
{
  v3 = *(*(v0 + v1) + 16);

  return sub_100216984(v3);
}

uint64_t sub_10000896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return CircleOverlayConfig.init(corner:scale:imageName:color:imageColor:imageScale:)();
}

id sub_1000089B0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1000089F8()
{

  return swift_slowAlloc();
}

uint64_t sub_100008A14(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008A70()
{

  return swift_slowAlloc();
}

uint64_t sub_100008A94()
{

  return swift_getKeyPath();
}

uint64_t sub_100008AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return CircleOverlayConfig.init(corner:scale:imageName:color:imageColor:imageScale:)();
}

unint64_t sub_100008ADC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005E2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100005A60(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100005B2C(v11);
  return v7;
}

unint64_t sub_100008BD4()
{
  *(v0 + 56) = v1;

  return sub_100162160();
}

uint64_t sub_100008C44()
{

  return type metadata accessor for Features();
}

void sub_100008C60()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2048;
  *(v2 + 14) = v0;
}

id sub_100008C94(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_100008CD0()
{
}

uint64_t sub_100008D28(uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

void sub_100008DB0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_100008E38@<X0>(uint64_t x8_0@<X8>, uint64_t a9)
{

  return sub_1001B1E00(v10, &a9, x8_0 + 8);
}

void sub_100008E54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

void sub_100009080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100009170(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = +[FTServerBag sharedInstance];
    v6 = [v5 objectForKey:@"callprompt-bypass-blocked-bundle-identifiers"];

    if (v6)
    {
      v7 = [v3 bundleIdentifier];
      v8 = [v6 containsObject:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

id sub_100009304(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 bundleIdentifier];
    v6 = defaultCallingAppLSBundleIdentifier();
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10000946C()
{
  v1 = [v0 getState];
  v2 = [v1 activeServices];

  return v2 & 1;
}

id sub_1000094D8()
{
  v4 = *(v2 + 3328);

  return [v0 v4];
}

uint64_t sub_1000094F4(uint64_t a1)
{
  sub_100006AC0(v1, 1, a1);
}

uint64_t sub_100009560(uint64_t a1)
{
  sub_100006848(v1, 0, 1, a1);

  return type metadata accessor for MainActor();
}

uint64_t sub_1000095CC(uint64_t a1)
{

  return swift_once();
}

void *sub_1000095EC(void *result)
{
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  return result;
}

id sub_100009614(uint64_t a1)
{
  v4 = *(v1 + 3328);

  return [v2 v4];
}

uint64_t sub_100009634()
{

  return swift_getObjectType();
}

void sub_100009690(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{

  sub_1001F1A28(a1, v4, a4, v5, 0.0);
}

uint64_t sub_1000096B0()
{

  return sub_100006AC0(v1, 1, v0);
}

void sub_100009708(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100009750()
{
}

uint64_t sub_100009794()
{
  sub_100006610();
  sub_1000058C4();
  v1 = *v0;
  sub_100006870();
  *v2 = v1;

  sub_10000535C();

  return v3();
}

uint64_t sub_100009878(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10014EA98(a3, a4);
  sub_1000058E8();
  v5 = sub_1000085C0();
  v6(v5);
  return a2;
}

uint64_t sub_1000098D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10014EA98(a3, a4);
  sub_1000058E8();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100009960(uint64_t a1, uint64_t a2)
{
  if (qword_1003B0F48 != -1)
  {
    sub_100257094();
  }

  return qword_1003B0F40;
}

uint64_t sub_100009BF0(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for Features()) init];
  if (Features.fullScreenOutgoingFTAEnabled.getter())
  {
    v3 = [a1 originatingUIType];
    if (v3 <= 0x20)
    {
      v4 = 0x1000C0000uLL >> v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  sub_1000064BC(0, &qword_1003AB400, TUConversationProvider_ptr);
  v5 = [a1 provider];
  v6 = [objc_opt_self() expanseProvider];
  v7 = static NSObject.== infix(_:_:)();

  return v4 & v7 & 1;
}

uint64_t sub_100009CF8()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

__n128 sub_100009D30(uint64_t a1)
{
  result = *(v1 - 120);
  v3 = *(v1 - 104);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

void sub_100009E84(void *a1)
{
  v2 = v1;
  v4 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v4 - 8);
  type metadata accessor for Features();
  v5 = static Features.shared.getter();
  v6 = Features.isDominoEnabled.getter();

  if (v6)
  {
    sub_10000A064();
    type metadata accessor for TaskPriority();
    sub_100026EF4();
    type metadata accessor for MainActor();
    v7 = v2;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    sub_100007188();
    v11 = v10;
    sub_100026EF4();
    v12 = v7;
    v13 = a1;

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;
    v15[5] = v11;
    v15[6] = v12;
    sub_100007188();
  }
}

uint64_t sub_10000A014()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000A064()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000A2EC();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  v8 = *(v3 + 8);
  v7 = v3 + 8;
  result = v8(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v7 = OBJC_IVAR___ICSAmbientActivityController_hasStartedMonitoringCalls;
  if (*(v1 + OBJC_IVAR___ICSAmbientActivityController_hasStartedMonitoringCalls))
  {
    return result;
  }

  if (qword_1003A9FB0 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v10 = type metadata accessor for Logger();
  sub_100008A14(v10, &unk_1003B8960);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting to monitor calls", v13, 2u);
  }

  sub_10014EA98(&qword_1003AD390, &unk_1002FE1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FB510;
  v15 = TUCallCenterCallStatusChangedNotification;
  v16 = TUCallCenterVideoCallStatusChangedNotification;
  *(inited + 32) = TUCallCenterCallStatusChangedNotification;
  *(inited + 40) = v16;
  v17 = OBJC_IVAR___ICSAmbientActivityController_notificationCenter;
  v18 = v15;
  v19 = v16;
  for (i = 32; i != 48; i += 8)
  {
    [*(v1 + v17) addObserver:v1 selector:"handleCallStatusChanged:" name:*(inited + i) object:0];
  }

  swift_setDeallocating();
  result = sub_100030768();
  *(v1 + v7) = 1;
  return result;
}

unint64_t sub_10000A2EC()
{
  result = qword_1003AAAB0;
  if (!qword_1003AAAB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AAAB0);
  }

  return result;
}

uint64_t sub_10000A330()
{
  sub_100005B2C(v0);
}

uint64_t sub_10000A378()
{

  return swift_slowAlloc();
}

id sub_10000A394()
{
  *(v1 + 40) = v2;

  return [v0 trailingAnchor];
}

uint64_t sub_10000A3D4(uint64_t a1)
{
  sub_100006AC0(v1, 1, a1);
}

void sub_10000A410()
{
  v1 = *(v0 - 224);
  *(v0 - 120) = *(v0 - 232);
  *(v0 - 112) = v1;
  *(v0 - 152) = _NSConcreteStackBlock;
}

uint64_t sub_10000A43C()
{
}

uint64_t sub_10000A474()
{

  return swift_beginAccess();
}

uint64_t sub_10000A4A0()
{

  return swift_task_alloc();
}

uint64_t sub_10000A4CC()
{

  return type metadata accessor for UUID();
}

uint64_t sub_10000A4EC(uint64_t a1)
{

  return swift_getObjectType();
}

uint64_t sub_10000A504()
{

  return UIButton.configuration.getter();
}

uint64_t sub_10000A51C()
{

  return swift_slowAlloc();
}

uint64_t sub_10000A554()
{

  return type metadata accessor for CircleOverlayConfig();
}

uint64_t sub_10000A57C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);
  *(v2 - 248) = result;
  *(v2 - 240) = v3;
  return result;
}

void sub_10000A6F8()
{
  sub_100005D28();
  v2 = v0;
  v4 = v3;
  type metadata accessor for UUID();
  sub_10000C454();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = [v4 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = OBJC_IVAR___ICSCallAnalyticsLogger_incomingCallAnalyticsViews;
  sub_1000080D4(v2 + OBJC_IVAR___ICSCallAnalyticsLogger_incomingCallAnalyticsViews);
  v13 = *(v2 + v12);

  v14 = sub_10000A9DC(v10, v13);
  v38 = v16;
  v39 = v15;
  v37 = v17;

  v18 = *(v6 + 8);
  v18(v10, v1);
  if ((v14 & 0xFF00) != 0x200)
  {
    v19 = v4;
    v20 = sub_1001F0C4C(v19);
    if (v20 != 6)
    {
      v36 = v20;
      if (qword_1003A9F98 != -1)
      {
        sub_1000076C0(&qword_1003A9F98);
      }

      v35 = qword_1003B8928;
      sub_10014EA98(&qword_1003AB478, qword_1002FBDC0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1002FAB60;
      v22 = [v19 uniqueProxyIdentifierUUID];
      v34 = v19;
      v23 = v22;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = UUID.uuidString.getter();
      v26 = v25;
      v27 = sub_100006A08();
      (v18)(v27);
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_10002BBB4();
      *(v21 + 32) = v24;
      *(v21 + 40) = v26;
      v28 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("ICSCallAnalytics: updating analytics logger with call %@", 56, 2, &_mh_execute_header, v35, v28, v21);

      if (v37 == 11)
      {
        v29 = 10;
      }

      else
      {
        v29 = v37;
      }

      if (v36 == 3)
      {
        v30 = v37;
      }

      else
      {
        v30 = v29;
      }

      sub_1001E85FC(v14 & 0x1FF, v39, v38, v37 & 0x100 | v30, v36);
      v31 = [v34 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100025B68(v2 + v12);
      sub_100250FF8();
      v32 = sub_100006A08();
      (v18)(v32);
      swift_endAccess();
    }
  }

  sub_100007B28();
}

uint64_t sub_10000A9DC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 512;
  }

  v3 = sub_10017007C();
  if ((v4 & 1) == 0)
  {
    return 512;
  }

  v5 = (*(a2 + 56) + 32 * v3);
  if (v5[1])
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return v6 | *v5;
}

id sub_10000B1F4(uint64_t a1)
{
  v2 = sub_100004F84(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping ringtone and announcement", v5, 2u);
  }

  v3 = [*(a1 + 32) callAnnouncement];
  [v3 stop];

  [*(a1 + 32) setAudioSessionIdentifier:0];
  return [*(a1 + 32) setCallAnnouncement:0];
}

uint64_t sub_10000B2A0(uint64_t a1, uint64_t a2)
{
  if (qword_1003B0F38 != -1)
  {
    sub_100257080();
  }

  return qword_1003B0F30;
}

id sub_10000B3C8(void *a1, SEL *a2)
{
  result = *(v2 + *a1);
  if (result)
  {
    return [result *a2];
  }

  return result;
}

void sub_10000B408(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_10000B428(unint64_t *a1, unint64_t *a2, void *a3)
{

  return sub_10003012C(a1, a2, a3, &protocol conformance descriptor for PHAudioCallViewController);
}

double sub_10000B474(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001B37D4(v3, v4, a3);
}

uint64_t sub_10000B504()
{
  sub_1000058A8();
  sub_1000301C8();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_1000075E8(v1);

  return v4(v3);
}

unint64_t sub_10000B594()
{
  result = qword_1003AAE30;
  if (!qword_1003AAE30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AAE30);
  }

  return result;
}

void sub_10000BAC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A2EC();
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (qword_1003A9FB0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  sub_100008A14(v14, &unk_1003B8960);
  (*(v6 + 16))(v8, a1, v5);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v3;
    v19 = v18;
    v34 = v18;
    *v17 = 136315138;
    v33 = Notification.name.getter();
    type metadata accessor for Name(0);
    v20 = String.init<A>(reflecting:)();
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    v23 = sub_100008ADC(v20, v22, &v34);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Observed notification: %s", v17, 0xCu);
    sub_100005B2C(v19);
    v3 = v32;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  if ([*(v3 + OBJC_IVAR___ICSAmbientActivityController_callCenter) hasCurrentCalls])
  {
    v24 = [*(v3 + OBJC_IVAR___ICSAmbientActivityController_sceneManager) ambientScene];
    if (v24)
    {

      sub_10002DA10();
    }

    else
    {
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "There are no ambientScene, ignore call status update", v30, 2u);
      }
    }
  }

  else
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "There are no current calls that need an ambient activity", v27, 2u);
    }

    sub_100031744();
  }
}

void sub_10000BF3C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_10000C078()
{
  Notification.object.getter();
  if (v2)
  {
    sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
    if (swift_dynamicCast())
    {
      sub_10000A6F8();
    }
  }

  else
  {
    sub_1000306A4(v1, &unk_1003AAF50, &qword_1002FB170);
  }
}

uint64_t sub_10000C15C()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_10000C188(void *a1)
{
  v4 = *(v2 + 1928);

  return [a1 v4];
}

id sub_10000C1A0()
{
  v3 = *(v0 + 2752);

  return [v1 v3];
}

void sub_10000C1B8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0xCu);
}

id sub_10000C1E4()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

void sub_10000C224(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_10000C260()
{
}

id sub_10000C2D8()
{
  v4 = *(v2 + 3328);

  return [v0 v4];
}

uint64_t sub_10000C314(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000C348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return StringProtocol.contains<A>(_:)();
}

double sub_10000C368(double a1)
{
  result = v4 + vabdd_f64(a1, *(v1 + v2));
  *(v1 + v3) = result;
  *(v1 + v2) = 0xBFF0000000000000;
  return result;
}

id sub_10000C38C()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_10000C3EC(uint64_t a1)
{

  return static NSObject.== infix(_:_:)();
}

uint64_t sub_10000C418(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000C438()
{

  return swift_slowAlloc();
}

__n128 sub_10000C480(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  *(a1 + 64) = *(v1 + 48);
  return result;
}

id sub_10000C4AC()
{
  v4 = *(v2 + 3328);

  return [v0 v4];
}

uint64_t sub_10000C4E0()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_10000C4FC(void (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{

  sub_1001F24BC(a1, v7, a3, v8, 0, 0, a7);
}

id sub_10000C568()
{
  v4 = *(v0 + 3328);

  return [v1 v4];
}

uint64_t sub_10000C584()
{

  return swift_getObjectType();
}

void sub_10000C5C0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

id sub_10000C618(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_10000C630(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t sub_10000C648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

id sub_10000C6B0(uint64_t a1)
{
  v4 = *(v2 + 3328);

  return [v1 v4];
}

double sub_10000C6E4()
{
  *(v0 - 240) = 0;
  result = 0.0;
  *(v0 - 256) = 0u;
  *(v0 - 272) = 0u;
  return result;
}

uint64_t sub_10000C6FC(uint64_t a1)
{

  return swift_once();
}

uint64_t (*sub_10000C71C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>))()
{
  *(v2 + 720) = a1;
  *(v2 + 712) = a2;
  return sub_10024CDE8;
}

BOOL sub_10000C7F8(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isActive])
  {
    v3 = [(TUCall *)v2 provider];
    v4 = [v3 supportsDynamicSystemUI] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

uint64_t sub_10000C8E8()
{

  v0 = sub_10000DD0C();
  v2 = v1;

  if (v0)
  {
    v3 = v2;
    sub_1002459C4(v0, v2);
    objc_opt_self();
    sub_100008524();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10000C97C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_100008524();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_10000C9C0(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = ([(TUCall *)v2 isVideo]& 1) == 0 && [(TUCall *)v2 status]== 1;

  return v3;
}

BOOL sub_10000CA0C(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isVideo])
  {
    v3 = [(TUCall *)v2 status]== 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_10000CA58(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = ([(TUCall *)v2 isVideo]& 1) == 0 && [(TUCall *)v2 status]== 3;

  return v3;
}

uint64_t sub_10000CDA0()
{

  return sub_10016ECCC();
}

uint64_t sub_10000CDCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10014EA98(a2, a3);
}

void *sub_10000CE48()
{
  result = sub_10000C8E8();
  if (result)
  {
    v1 = result;
    v2 = [result viewControllers];

    sub_1000064BC(0, &qword_1003B0550, UIViewController_ptr);
    sub_100008524();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!sub_100017230(v3))
    {

      return 0;
    }

    sub_100017238(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;

    objc_opt_self();
    sub_100008524();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10000CF28(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_10000CF58(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_10000DD0C()
{
  swift_getKeyPath();
  sub_10000728C();
  v2 = sub_10000C97C(v0, 255, v1);
  sub_100007AB8(v2, v3);

  v4 = sub_1000089C8();
  sub_10000DDCC(v4, v5);
  return sub_1000089C8();
}

uint64_t sub_10000DD9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000DD0C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_10000DDCC(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

BOOL sub_10000DE0C(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isVideo])
  {
    v3 = [(TUCall *)v2 status]== 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10000E4A0(uint64_t a1)
{
  v2 = v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100245C28();

    return;
  }

  type metadata accessor for Features();
  v6 = static Features.shared.getter();
  v7 = Features.isiPadPostersEnabled(for:)();

  v8 = *(v2 + OBJC_IVAR___ICSCallManagerBridge_callDisplayStyleManager);
  if (v7)
  {
    [*(v2 + OBJC_IVAR___ICSCallManagerBridge_callDisplayStyleManager) setUsesLargeFormatUI:1];
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 sharedInstance];
    v12 = [objc_allocWithZone(iPadAudioCallViewController) initWithCallDisplayStyleManager:v10 callCenter:v11 featureFlags:*(v2 + OBJC_IVAR___ICSCallManagerBridge_flags) call:a1];
  }

  else
  {
    v13 = objc_opt_self();
    v14 = v8;
    v11 = [v13 sharedInstance];
    v12 = [objc_allocWithZone(PHAudioCallViewController) initWithCallDisplayStyleManager:v14 callCenter:v11 featureFlags:*(v2 + OBJC_IVAR___ICSCallManagerBridge_flags)];
  }

  v15 = v12;

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = v15;
  [v17 setInCallRootViewController:Strong];

  v18 = [v17 parentViewController];
  if (v18)
  {
    v19 = v18;
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      goto LABEL_12;
    }
  }

  v20 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v17];
LABEL_12:

  v21 = v20;
  [v21 setOverrideUserInterfaceStyle:2];
  v22 = [v21 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_26;
  }

  v23 = v22;
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 view];

    if (!v26)
    {
LABEL_27:
      __break(1u);
      return;
    }

    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
  }

  else
  {
    v28 = 0.0;
    v30 = 0.0;
    v32 = 0.0;
    v34 = 0.0;
  }

  [v23 setFrame:{v28, v30, v32, v34}];

  v35 = [v21 view];
  if (!v35)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = v35;
  [v35 setAutoresizingMask:18];

  [v21 setNavigationBarHidden:1];
  v37 = swift_unknownObjectWeakLoadStrong();
  [v21 setDelegate:v37];

  [v21 _setBuiltinTransitionStyle:1];
  v38 = [v21 navigationBar];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 clearColor];
  v42 = sub_100245BE8();
  [v42 v43];

  [v40 setTranslucent:1];
  v44 = [objc_allocWithZone(UIImage) init];
  v45 = sub_100245BE8();
  [v45 v46];

  v47 = [objc_allocWithZone(UIImage) init];
  v48 = sub_100245BE8();
  [v48 v49];

  v50 = [v39 whiteColor];
  v51 = sub_100245BE8();
  [v51 v52];

  sub_10014EA98(&qword_1003ABA30, &qword_1002FC630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FAB60;
  *(inited + 32) = NSForegroundColorAttributeName;
  v54 = NSForegroundColorAttributeName;
  v55 = [v39 whiteColor];
  *(inited + 64) = sub_1000064BC(0, &qword_1003B0520, UIColor_ptr);
  *(inited + 40) = v55;
  type metadata accessor for Key(0);
  sub_10000C97C(&qword_1003AA500, 255, type metadata accessor for Key);
  v56 = Dictionary.init(dictionaryLiteral:)();
  sub_100245A80(v56, v40);
  swift_unknownObjectWeakAssign();
  v57 = [v21 parentViewController];

  if (v57)
  {
  }

  else
  {
    v58 = swift_unknownObjectWeakLoadStrong();
    if (v58)
    {
      v59 = v58;
      [v58 presentViewControllerFullScreen:v21];
    }

    else
    {
    }
  }

  sub_100245C28();
}

uint64_t PHAudioCallViewController.makeHeldCallControls(callCenter:style:)(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  sub_100007DB8();
  v7 = type metadata accessor for HeldInCallControlsView.Style();
  sub_10000688C();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100005BD0();
  sub_100006634();
  v11 = [v5 features];
  v12 = [v11 shouldEmbedSwapBanner];

  result = 0;
  if (v12)
  {
    v14 = &enum case for HeldInCallControlsView.Style.ambient(_:);
    if (a2 != 3)
    {
      v14 = &enum case for HeldInCallControlsView.Style.regular(_:);
    }

    (*(v9 + 104))(v4, *v14, v7);
    type metadata accessor for HeldInCallControlsView();
    v15 = v2;
    return HeldInCallControlsView.__allocating_init(callCenter:style:)();
  }

  return result;
}

uint64_t sub_10000FF6C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_10000FF84(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

BOOL sub_10000FFB4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000FFFC(uint64_t a1)
{

  return ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

id PHAudioCallViewController.makeCallDetailsCoordinator(bannerPresentationManager:existingCoordinator:deferredPresentationManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = direct field offset for CNKBannerPresentationManager.value;
  sub_100008D1C();
  swift_beginAccess();
  v8 = *(a1 + v7);
  v9 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

  if (!v9)
  {
    if (a2)
    {
      v16 = objc_allocWithZone(type metadata accessor for DetailsCoordinatorCreationResult());
      return sub_100012544(1, 0);
    }

    v9 = 0;
LABEL_9:
    v17 = objc_allocWithZone(type metadata accessor for DetailsCoordinatorCreationResult());
    v15 = sub_100012544(0, 0);

    return v15;
  }

  if (a2)
  {
    goto LABEL_9;
  }

  v10 = v9;
  if (![v4 parentViewController])
  {
    v11 = v4;
  }

  objc_allocWithZone(type metadata accessor for CallDetailsCoordinator());
  v12 = v10;
  swift_unknownObjectRetain();
  v13 = CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)();
  v14 = objc_allocWithZone(type metadata accessor for DetailsCoordinatorCreationResult());
  v15 = sub_100012544(2, v13);

  return v15;
}

id sub_100012544(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC13InCallService32DetailsCoordinatorCreationResult_outcome] = a1;
  *&v2[OBJC_IVAR____TtC13InCallService32DetailsCoordinatorCreationResult_coordinator] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DetailsCoordinatorCreationResult();
  return objc_msgSendSuper2(&v4, "init");
}

BOOL sub_10001299C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentCalls];

  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  sub_10000FF90();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100017230(v2);
  v4 = v3 == 0;
  if (sub_10000CF28(v2))
  {
    v5 = sub_100005D40();
    sub_100017238(v5, v6, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v2 + 32);
    }

    v8 = v7;

    if (v3 == 1)
    {
      if ([v8 status] == 6)
      {

        return 1;
      }

      else
      {
        v9 = [v8 status];

        return v9 == 5;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return v4;
}

uint64_t sub_100012AF0(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100012AFC(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

BOOL sub_100012B38()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_100012B50()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

id sub_100012B70()
{
  v1 = v0;
  v2 = &selRef_audioCategory;
  v3 = [v0 callCenter];
  v4 = [v3 frontmostCall];

  if (!v4)
  {
    return 0;
  }

  v5 = [v1 prioritizedCall];
  if (!v5)
  {
    v5 = v4;
  }

  v6 = [v1 associatedCallGroupForCall:v5];

  v7 = [v6 calls];
  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_100017230(v8);

  if (v9 > 1)
  {
    if (qword_1003A9F40 != -1)
    {
LABEL_89:
      sub_10000755C(&qword_1003A9F40);
    }

    v10 = type metadata accessor for Logger();
    sub_1000058D0(v10, &unk_1003B8820);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!sub_100005908(v12))
    {
      goto LABEL_9;
    }

    v13 = sub_100005924();
    sub_10000539C(v13);
    v16 = "callToUseForWallpaper is nil, associatedCallGroup.calls.count > 1";
    goto LABEL_8;
  }

  v19 = &selRef_submitCAMetric_viewId_;
  if ([v1 usesCompactMulticallUI])
  {
    v20 = [v1 prioritizedCall];
    if (v20)
    {
      v17 = v20;

      return v17;
    }
  }

  v21 = [v1 callDisplayStyleManager];
  v22 = [v21 callDisplayStyle];

  v23 = &selRef_countByEnumeratingWithState_objects_count_;
  if (v22 == 3)
  {
    v24 = [v1 features];
    v25 = [v24 isDominoEnabled];

    if (v25)
    {
      if ([v1 participantsViewIsShowingMultipleLabel])
      {
        if (qword_1003A9F40 == -1)
        {
LABEL_19:
          v26 = type metadata accessor for Logger();
          sub_1000058D0(v26, &unk_1003B8820);
          v11 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();
          if (!sub_100005908(v27))
          {
            goto LABEL_9;
          }

          v28 = sub_100005924();
          sub_10000539C(v28);
          v16 = "callToUseForWallpaper is nil, participantsViewIsShowingMultipleLabel";
LABEL_8:
          sub_1000070F8(&_mh_execute_header, v14, v15, v16);
          sub_10000558C();
LABEL_9:

          return 0;
        }

LABEL_91:
        sub_10000755C(&qword_1003A9F40);
        goto LABEL_19;
      }

      v79 = v6;
      v80 = v4;
      v29 = [v1 callCenter];
      v30 = [v29 currentCalls];

      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = sub_10000CF28(v31);
      v4 = 0;
      v84 = v31 & 0xFFFFFFFFFFFFFF8;
      v85 = v31 & 0xC000000000000001;
      v81 = v31;
      v32 = v31 + 32;
LABEL_22:
      if (v4 == v6)
      {
        v4 = v6;
      }

      else
      {
        if (v85)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v84 + 16))
          {
            __break(1u);
            goto LABEL_91;
          }

          v33 = *(v32 + 8 * v4);
        }

        v34 = v33;
        v35 = sub_100231B14(&off_10035A418);
        v36 = [v34 status];
        if (*(v35 + 16))
        {
          v37 = v36;
          Hasher.init(_seed:)();
          Hasher._combine(_:)(v37);
          Hasher._finalize()();
          while (1)
          {
            sub_10000C134();
            if ((v39 & 1) == 0)
            {
              break;
            }

            if (*(*(v35 + 48) + 4 * v38) == v37)
            {

              v40 = __OFADD__(v4++, 1);
              if (!v40)
              {
                goto LABEL_22;
              }

              __break(1u);
LABEL_92:
              sub_10000755C(&qword_1003A9F40);
              goto LABEL_61;
            }
          }
        }
      }

      v41 = sub_10000CF28(v81);
      v2 = &selRef_audioCategory;
      v19 = &selRef_submitCAMetric_viewId_;
      if (v41 >= v4)
      {
        if (v4 == v41)
        {

          v6 = v79;
          v4 = v80;
          v23 = &selRef_countByEnumeratingWithState_objects_count_;
          goto LABEL_63;
        }

        v82 = v41;
        v83 = 1;
      }

      else
      {
        v82 = v4;
        v83 = -1;
        v4 = v41;
      }

      v6 = sub_10000CF28(v81);
      v42 = sub_10000CF28(v81);
      v43 = 0;
      do
      {
        v40 = __OFADD__(v43, v83);
        v43 += v83;
        if (v40)
        {
          goto LABEL_87;
        }

        if (v4 == v6)
        {
          goto LABEL_88;
        }

LABEL_43:
        v40 = __OFADD__(v4++, 1);
        if (v40)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        if (v4 == v42)
        {
          v4 = v42;
        }

        else
        {
          if (v85)
          {
            v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v4 < 0)
            {
              goto LABEL_85;
            }

            if (v4 >= *(v84 + 16))
            {
              goto LABEL_86;
            }

            v44 = *(v32 + 8 * v4);
          }

          v45 = v44;
          v46 = sub_100231B14(&off_10035A448);
          v47 = [v45 status];
          if (*(v46 + 16))
          {
            v48 = v47;
            Hasher.init(_seed:)();
            Hasher._combine(_:)(v48);
            Hasher._finalize()();
            while (1)
            {
              sub_10000C134();
              if ((v50 & 1) == 0)
              {
                break;
              }

              if (*(*(v46 + 48) + 4 * v49) == v48)
              {

                goto LABEL_43;
              }
            }
          }
        }
      }

      while (v4 != v82);

      v51 = v43 <= 1;
      v6 = v79;
      v4 = v80;
      v2 = &selRef_audioCategory;
      v19 = &selRef_submitCAMetric_viewId_;
      v23 = &selRef_countByEnumeratingWithState_objects_count_;
      if (!v51)
      {
        if (qword_1003A9F40 != -1)
        {
          goto LABEL_92;
        }

LABEL_61:
        v52 = type metadata accessor for Logger();
        sub_1000058D0(v52, &unk_1003B8820);
        v11 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (!sub_100005908(v53))
        {
          goto LABEL_9;
        }

        v54 = sub_100005924();
        sub_10000539C(v54);
        v16 = "callToUseForWallpaper is nil, answeredCalls > 1";
        goto LABEL_8;
      }
    }
  }

LABEL_63:
  v55 = [v1 v23[399]];
  v56 = [v55 shouldShowFullScreenCallWaiting];

  if (v56 & 1) != 0 || (v57 = [v1 v2[163]], v58 = TUCallCenter.cnk_wantsCallWaiting.getter(), v57, (v58 & 1) == 0) || (v59 = objc_msgSend(v1, v2[163]), v60 = objc_msgSend(v59, "cnk_hasTooManyCallsForCallWaitingBanner"), v59, (v60) || !objc_msgSend(v1, v19[411]))
  {
LABEL_73:
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v67 = type metadata accessor for Logger();
    sub_1000058D0(v67, &unk_1003B8820);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (sub_100005908(v69))
    {
      v70 = sub_100005924();
      sub_10000539C(v70);
      sub_1000070F8(&_mh_execute_header, v71, v72, "callToUseForWallpaper is frontmostCall");
      sub_10000558C();
    }

    return v4;
  }

  v17 = [v1 activeCall];
  if ([v17 isScreening])
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v61 = type metadata accessor for Logger();
    sub_1000058D0(v61, &unk_1003B8820);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();
    if (sub_100005908(v63))
    {
      v64 = sub_100005924();
      sub_10000539C(v64);
      sub_1000070F8(&_mh_execute_header, v65, v66, "callToUseForWallpaper: wantsCallWaiting but activeCall is nil");
      sub_10000558C();
    }

    goto LABEL_73;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v73 = type metadata accessor for Logger();
  sub_1000058D0(v73, &unk_1003B8820);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (sub_100005908(v75))
  {
    v76 = sub_100005924();
    sub_10000539C(v76);
    sub_1000070F8(&_mh_execute_header, v77, v78, "callToUseForWallpaper is activeCall, wantsCallWaiting (banner-based)");
    sub_10000558C();
  }

  return v17;
}

uint64_t sub_100013460(void *a1)
{
  v3 = [v1 callDisplayStyleManager];
  v4 = [v3 callDisplayStyle];

  if (v4 == 3)
  {
    goto LABEL_2;
  }

  v7 = [v1 features];
  v8 = [v7 isNameAndPhotoC3Enabled];

  v5 = 0;
  if (v8 && a1)
  {
    v9 = a1;
    v10 = sub_100005DE8();
    v12 = [v10 v11];
    v13 = sub_100005DE8();
    v15 = [v13 v14];
    if (v15 == 1)
    {

LABEL_8:
      v5 = 1;
      return v5 & 1;
    }

    if ([objc_opt_self() posterSourceIsSyncedWithContacts:v15])
    {

LABEL_11:
LABEL_2:
      v5 = 0;
      return v5 & 1;
    }

    v16 = sub_100005DE8();
    v18 = [v16 v17];
    v19 = [v18 effectiveStateForContact];
    if (v19 == 3)
    {
      v20 = [v18 pendingNickname];
      v21 = [v20 wallpaper];

      if (!v21)
      {
        v22 = [v18 currentNickname];
        v21 = [v22 wallpaper];

        if (!v21)
        {

          goto LABEL_11;
        }
      }
    }

    v23 = v9;
    v24 = sub_10016D3EC();
    v25 = sub_100013DA8(v24);

    if (v25)
    {
      v26 = sub_1000053A8();
      sub_100014194(v26, v27, v25, v28);

      if (*(&v42 + 1))
      {
        v30 = sub_100008D28(v40, v29);
        if (v30)
        {
          v31 = v40[0];
        }

        else
        {
          v31 = 0;
        }

        if (v30)
        {
          v32 = v40[1];
        }

        else
        {
          v32 = 0;
        }

LABEL_26:
        if ((v19 | 2) != 3)
        {

          goto LABEL_2;
        }

        v33 = [v18 currentNickname];
        if (v33 && (v34 = v33, v35 = [v33 wallpaper], v34, v35) && (v36 = sub_100231C60(v35), v37))
        {
          if (v32)
          {
            if (v36 == v31 && v37 == v32)
            {

              v5 = 0;
            }

            else
            {
              v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v5 = v39 ^ 1;
            }

            return v5 & 1;
          }
        }

        else
        {

          if (!v32)
          {
            goto LABEL_2;
          }
        }

        goto LABEL_8;
      }
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    sub_10000830C(&v41, &unk_1003AAF50, &qword_1002FB170);
    v31 = 0;
    v32 = 0;
    goto LABEL_26;
  }

  return v5 & 1;
}

BOOL sub_100013C0C()
{
  v1 = [v0 features];
  v2 = [v1 isEnhancedEmergencyEnabled];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 callCenter];
  v4 = [v3 currentCalls];

  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  sub_10000FF90();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_10000CF28(v5))
  {
    v6 = sub_100005D40();
    sub_100017238(v6, v7, v5);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v5 + 32);
    }

    v9 = v8;
  }

  else
  {

    v11 = [objc_allocWithZone(ICSApplicationDelegate) init];
    v9 = [v11 mostRecentlyDisconnectedAudioCall];

    if (!v9)
    {
      v12 = 0;
      goto LABEL_11;
    }
  }

  v12 = v9;
  v13 = [v12 isEmergency];

  if (v13)
  {

    return 1;
  }

LABEL_11:
  v14 = [v0 currentState];

  return v14 == 10;
}

void *sub_100013DA8(void *a1)
{
  v3 = [v1 hasLastSeenPosterForCall:a1];
  result = 0;
  if (v3)
  {
    if (a1)
    {
      result = sub_1000140C4(a1);
      if (result)
      {
        if (result[2] && (v6 = result[4], v5 = result[5], , , v7 = [objc_opt_self() standardUserDefaults], v8 = String._bridgeToObjectiveC()(), v9 = objc_msgSend(v7, "dictionaryForKey:", v8), v7, v8, v9))
        {
          v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100014194(v6, v5, v10, &v12);

          if (v13)
          {
            sub_10014EA98(&qword_1003AAF30, &qword_1002FB7A8);
            if (swift_dynamicCast())
            {
              return v11;
            }
          }

          else
          {
            sub_10000830C(&v12, &unk_1003AAF50, &qword_1002FB170);
          }
        }

        else
        {
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100013F60(void *a1)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  v1 = a1;
  v2 = sub_1000140C4(v1);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (!v2[2])
  {

LABEL_12:
    v10 = 0;
    return v10 & 1;
  }

  v3 = v2[4];
  v4 = v2[5];

  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 dictionaryForKey:v6];

  if (!v7)
  {
LABEL_10:

LABEL_11:

    goto LABEL_12;
  }

  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v8 + 16))
  {

    goto LABEL_10;
  }

  sub_10001411C(v3, v4);
  v10 = v9;

  return v10 & 1;
}

uint64_t sub_1000140C4(void *a1)
{
  v1 = [a1 contactIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10001411C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10001884C(a1, a2, v4);
}

double sub_100014194@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10001411C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100005A60(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1000141F8()
{

  return swift_slowAlloc();
}

uint64_t sub_100014250(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = result;
  *(v2 - 136) = _NSConcreteStackBlock;
  return result;
}

BOOL sub_100014274(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000142E0(uint64_t a1)
{

  return specialized ContiguousArray.reserveCapacity(_:)();
}

uint64_t sub_1000142F8(uint64_t a1)
{
  *(v1 + 400) = a1;

  return type metadata accessor for RemoteAlertController();
}

id sub_100014320(void *a1)
{
  v4 = *(v2 + 1944);

  return [a1 v4];
}

id sub_100014338()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_100014350()
{

  return swift_beginAccess();
}

char *sub_100014378(uint64_t a1, unint64_t a2)
{
  v3 = sub_100018900(a1, a2);
  sub_100018A8C(&off_10035A3B0);
  return v3;
}

uint64_t sub_100014424()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 isNudityDetectionEnabledForService:v1];

  if (v2)
  {
    return 1;
  }

  else
  {
    return [v0 isCommunicationSafetyEnabled];
  }
}

void sub_10001452C(uint64_t a1)
{
  v2 = [*(a1 + 32) _updateStatusLabelVisibility];
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 40) == 3)
    {
      v3 = *(a1 + 32);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100121198;
      v11[3] = &unk_100359C80;
      v11[4] = v3;
      [v3 finishNewPosterUpdatesWithCompletion:v11];
    }
  }

  else
  {
    v4 = sub_100004F84(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SNAP: Fading out poster, set up background image as needed", v10, 2u);
    }

    v5 = *(a1 + 32);
    v6 = [v5 frontmostCall];
    v7 = [v5 contactImageDataForCall:v6];

    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = [[UIImage alloc] initWithData:v7];
      [v8 updateBackgroundContactImageViewWithImage:v9 animated:1];

      [*(a1 + 32) updateLegacyBackgroundImageVisibilityWithShouldShowWallpaper:0];
    }

    else
    {
      [*(a1 + 32) addDefaultBackgroundGradientView];
    }
  }
}

id sub_100016FA4()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

id sub_100016FBC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  v5 = *(v2 + 1096);

  return [v4 v5];
}

void sub_100016FD8()
{

  sub_1001A3CB0(v0, v1);
}

uint64_t sub_100016FF4(uint64_t a1, uint64_t a2)
{
  *(v5 - 248) = v2;
  *(v5 - 240) = v4;
  *(v5 - 272) = v3;

  return swift_unknownObjectRetain();
}

void sub_100017210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001819C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_100018238(void *a1)
{
  v2 = v1;
  v4 = [v2 features];
  v5 = [v4 isNameAndPhotoC3Enabled];

  result = 0;
  if (v5 && a1)
  {
    v7 = a1;
    v8 = [v2 contactToDisplayInCallWallpaperForCall:v7];
    v9 = [v2 sharedProfileStateOracleForCall:v7];
    if (![objc_opt_self() contactIsInAutoUpdateState:v8])
    {

      return 0;
    }

    v10 = v7;
    v11 = sub_100013DA8(a1);

    if (v11)
    {
      v12 = sub_1000053A8();
      sub_100014194(v12, v13, v11, v14);

      if (*(&v52 + 1))
      {
        v15 = swift_dynamicCast();
        if (v15)
        {
          v16 = v50[0];
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v17 = v50[1];
        }

        else
        {
          v17 = 0;
        }

LABEL_16:
        v18 = [v9 avatarViewAnimationTypeForEffectiveState];
        if (qword_1003A9F40 != -1)
        {
          sub_10000755C(&qword_1003A9F40);
        }

        v19 = type metadata accessor for Logger();
        sub_1000058D0(v19, &unk_1003B8820);

        v20 = v9;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        v23 = &selRef_countByEnumeratingWithState_objects_count_;
        if (os_log_type_enabled(v21, v22))
        {
          v49 = v16;
          v24 = swift_slowAlloc();
          v50[0] = swift_slowAlloc();
          *v24 = 136315906;
          v48 = v18;
          *&v51 = v18;
          type metadata accessor for CNSharedProfileAvatarAnimationType(0);
          v25 = String.init<A>(reflecting:)();
          v27 = v26;
          sub_100008ADC(v25, v26, v50);
          sub_1000055A8();
          *(v24 + 4) = v16;
          *(v24 + 12) = 2080;
          v28 = [v20 currentNickname];
          if (v28 && (v27 = v28, v16 = [v28 wallpaper], v27, v16) && (v29 = sub_100231C60(v16), v30))
          {
            *&v51 = v29;
            *(&v51 + 1) = v30;
            v31 = String.init<A>(reflecting:)();
            v27 = v32;
          }

          else
          {

            v31 = sub_100007B58();
          }

          sub_100008ADC(v31, v27, v50);
          sub_1000055A8();
          *(v24 + 14) = v16;
          *(v24 + 22) = 2080;
          v41 = [v20 pendingNickname];
          v42 = [v41 wallpaper];

          if (v42)
          {
            *&v51 = v42;
            sub_1000064BC(0, &qword_1003AAF48, IMWallpaper_ptr);
            v43 = String.init<A>(reflecting:)();
            v42 = v44;
          }

          else
          {
            v43 = sub_100007B58();
          }

          sub_100008ADC(v43, v42, v50);
          sub_1000055A8();
          *(v24 + 24) = v41;
          *(v24 + 32) = 2080;
          if (v17)
          {
            *&v51 = v49;
            *(&v51 + 1) = v17;

            v45 = String.init<A>(reflecting:)();
            v47 = v46;
          }

          else
          {
            v47 = 0xE300000000000000;
            v45 = 7104878;
          }

          sub_100008ADC(v45, v47, v50);
          sub_1000055A8();
          *(v24 + 34) = v41;
          _os_log_impl(&_mh_execute_header, v21, v22, "SNAP: suggestedNewPosterSourceAfterCallConnects effectiveAnimationType: %s \n oracle.currentNickname.wallpaper.filePath: %s \n oracle.pendingNickname.wallpaper: %s \n lastSeenContacts: %s", v24, 0x2Au);
          swift_arrayDestroy();
          sub_10000558C();
          sub_100005BB8(v24);

          v16 = v49;
          v23 = &selRef_countByEnumeratingWithState_objects_count_;
          if (!v48)
          {
            goto LABEL_47;
          }
        }

        else
        {

          if (!v18)
          {
LABEL_47:

            return 3;
          }
        }

        v33 = [v20 v23[66]];
        if (v33 && (v34 = v33, v35 = [v33 wallpaper], v34, v35) && (v36 = sub_100231C60(v35), v37))
        {
          if (v17)
          {
            if (v36 == v16 && v37 == v17)
            {

              return 0;
            }

            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v39)
            {
              goto LABEL_41;
            }

            goto LABEL_36;
          }
        }

        else if (!v17)
        {
LABEL_41:

          return 0;
        }

LABEL_36:
        v40 = [objc_opt_self() posterSourceIsSyncedWithContacts:{objc_msgSend(v2, "currentDisplayedPosterSourceForCall:", v10)}];

        if ((v40 & 1) == 0)
        {
          return 2;
        }

        return 0;
      }
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
    }

    sub_10000830C(&v51, &unk_1003AAF50, &qword_1002FB170);
    v16 = 0;
    v17 = 0;
    goto LABEL_16;
  }

  return result;
}

unint64_t sub_10001884C(uint64_t a1, uint64_t a2, uint64_t a3)
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

char *sub_100018900(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100018A18(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100018A18(uint64_t a1, uint64_t a2)
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

  sub_10014EA98(&qword_1003AB428, &qword_1002FBD88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_100018A8C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100178D04(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_100018B94(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___ICSPosterConfigurationWrapper_titleStyleAttributes;
  *&v2[OBJC_IVAR___ICSPosterConfigurationWrapper_titleStyleAttributes] = 0;
  *&v2[OBJC_IVAR___ICSPosterConfigurationWrapper_configuration] = a1;
  *&v2[OBJC_IVAR___ICSPosterConfigurationWrapper_source] = a2;
  *&v2[v3] = 0;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PosterConfigurationWrapper();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_100018C98()
{
  sub_100007DB8();
  type metadata accessor for NameAndPhotoUtilities();
  v0 = static NameAndPhotoUtilities.shared.getter();
  v1 = NameAndPhotoUtilities.currentIMNickname(matching:)();

  return v1;
}

Swift::Void __swiftcall PHAudioCallViewController.updateCallRecordingPositionIfNeeded()()
{
  v1 = [v0 features];
  v2 = [v1 callRecordingEnabled];

  if (v2)
  {
    v3 = [v0 callRecordingLeadingConstraint];
    if (v3)
    {
      v4 = v3;
      [v3 setConstant:sub_1001716A8()];
    }
  }
}

Swift::Void __swiftcall PHAudioCallViewController.updateCallHoldingPositionIfNeeded()()
{
  v1 = [v0 features];
  v2 = [v1 waitOnHoldEnabled];

  if (v2)
  {
    v3 = [v0 callHoldingLeadingConstraint];
    if (v3)
    {
      v4 = v3;
      [v3 setConstant:sub_10024C080()];
    }
  }
}

uint64_t sub_100019B40(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100019BAC(a2, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100019BAC(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!a1)
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {
      return result;
    }

    v3 = result;
    v5 = v2;
  }

  swift_unknownObjectRetain();
  v6 = [v3 carKitSessionStatus];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 currentSession];

    if (v8)
    {

      if (qword_1003A9F50 != -1)
      {
        sub_10000706C(&qword_1003A9F50);
      }

      v9 = type metadata accessor for Logger();
      sub_1000058D0(v9, &unk_1003B8850);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (!sub_100005908(v11))
      {
        goto LABEL_16;
      }

      v14 = sub_100005924();
      *v14 = 0;
      v15 = "LiveVoicemail is disabled because we are connected to car play";
LABEL_15:
      sub_1000070F8(&_mh_execute_header, v12, v13, v15);
      sub_100005BB8(v14);
LABEL_16:
      swift_unknownObjectRelease();

      return 0;
    }
  }

  swift_getObjectType();
  if ([swift_getObjCClassFromMetadata() hasCarKitRoute])
  {
    if (qword_1003A9F50 != -1)
    {
      sub_10000706C(&qword_1003A9F50);
    }

    v16 = type metadata accessor for Logger();
    sub_1000058D0(v16, &unk_1003B8850);
    v10 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (!sub_100005908(v17))
    {
      goto LABEL_16;
    }

    v14 = sub_100005924();
    *v14 = 0;
    v15 = "LiveVoicemail is disabled because we are connected to carkit";
    goto LABEL_15;
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_100019D94(uint64_t a1)
{

  return swift_allocObject();
}

BOOL sub_10001A290(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = [v3 status] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_10001A2F0(id a1, TUCall *a2)
{
  v2 = a2;
  if (([(TUCall *)v2 isHostedOnCurrentDevice]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(TUCall *)v2 isEndpointOnCurrentDevice];
  }

  return v3;
}

BOOL sub_10001A338(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = [v3 status] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_10001A398(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = [v3 status] == 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_10001A3F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = [v3 status] == 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10001A58C(uint64_t a1)
{
  if (qword_1003B1048 != -1)
  {
    sub_100257270();
  }

  v2 = qword_1003B1040;

  return v2;
}

BOOL sub_10001AD34()
{
  v0 = +[UIScreen mainScreen];
  [v0 bounds];
  v2 = v1;

  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;

  if (v2 >= v5)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  return v6 > 1024.0;
}

void sub_10001B37C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v2 = [WeakRetained callCenter];
    v3 = [v2 incomingCall];

    v4 = [v16 featureFlags];
    v5 = TUCallScreeningEnabled();

    if (v5 && !v3)
    {
      v6 = [v16 callCenter];
      v3 = [v6 screeningCall];
    }

    v7 = [v16 bottomBar];
    v8 = [v7 controlForActionType:13];

    v9 = [v16 bottomBar];
    v10 = [v9 controlForActionType:9];

    if (!v10)
    {
      v11 = [v16 bottomBar];
      v10 = [v11 controlForActionType:12];
    }

    if (v3 && v10)
    {
      [v16 configureDeclineWithReminderButton:v8 declineWithMessageButton:v10 forIncomingCall:v3];
    }

    v12 = [v16 featureFlags];
    v13 = [v12 receptionistEnabled];

    if (v3 && v13)
    {
      v14 = [v16 bottomBar];
      v15 = [v14 controlForActionType:27];

      [v16 configureDeclineWithMoreButton:v15 forIncomingCall:v3];
    }

    WeakRetained = v16;
  }
}

BOOL sub_10001C200(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = [(TUCall *)v2 provider];
  if ([v3 isTelephonyProvider])
  {
    v4 = [(TUCall *)v2 status]== 1 || [(TUCall *)v2 status]== 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10001C518(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldShowUseRTTButton];
  v3 = [*(a1 + 32) supplementalBottomRightButton];
  [v3 setAlpha:v2];

  v4 = [*(a1 + 32) shouldShowUseRTTButton];
  v5 = [*(a1 + 32) supplementalBottomRightButton];
  [v5 setEnabled:v4];
}

BOOL sub_10001D2CC()
{
  v1 = [v0 callDisplayStyleManager];
  v2 = [v1 callDisplayStyle];

  return v2 == 3;
}

void sub_10001D320(void *a1)
{
  v3 = [v1 recordingIndicatorLayoutGuide];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 view];
    if (!v5)
    {
LABEL_13:
      __break(1u);
      return;
    }

    v6 = v5;
    [v5 removeLayoutGuide:v4];
  }

  v33 = [objc_allocWithZone(UILayoutGuide) init];
  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v7 addLayoutGuide:v33];

  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002FB370;
  v12 = [a1 widthAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = dbl_1002FBA10[v10 == 1];
  v16 = [v13 widthAnchor];

  v17 = [v12 constraintEqualToAnchor:v16];
  *(v11 + 32) = v17;
  v18 = [v33 bottomAnchor];
  v19 = [a1 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v11 + 40) = v20;
  v21 = [v33 widthAnchor];
  v22 = [a1 widthAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 multiplier:v15];

  *(v11 + 48) = v23;
  v24 = [v33 heightAnchor];
  sub_10001D72C();
  v25 = [v24 constraintEqualToConstant:?];

  *(v11 + 56) = v25;
  v26 = [v33 centerXAnchor];
  v27 = [v1 view];
  if (!v27)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v28 = v27;
  v29 = objc_opt_self();
  v30 = [v28 centerXAnchor];

  v31 = [v26 constraintEqualToAnchor:v30];
  *(v11 + 64) = v31;
  sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:isa];

  [v1 setRecordingIndicatorLayoutGuide:v33];
}

void sub_10001D72C()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isIPadIdiom];

    if (v2)
    {
      [objc_opt_self() inCallControlSpacing];
    }

    else
    {
      v3 = [objc_opt_self() mainScreen];
      [v3 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v12.origin.x = v5;
      v12.origin.y = v7;
      v12.size.width = v9;
      v12.size.height = v11;
      CGRectGetWidth(v12);
      v13.origin.x = v5;
      v13.origin.y = v7;
      v13.size.width = v9;
      v13.size.height = v11;
      CGRectGetHeight(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10001D85C()
{
  if ([v0 middleViewState] == 2 || !objc_msgSend(v0, "recordingSupportedForCurrentCallDsplayStyles"))
  {
    return;
  }

  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 currentCalls];

  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = 0;
  v18 = sub_100017230(v3);
  while (1)
  {
    if (v18 == v4)
    {
      goto LABEL_21;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v5 = *(v3 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v7 = [v5 callUUID];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [v0 activeCall];
    v12 = [v11 callUUID];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v8 == v13 && v10 == v15)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if ([v6 recordingAvailability] != 1)
    {

LABEL_21:

      return;
    }

LABEL_17:

    ++v4;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_10001DAE0()
{
  v1 = [v0 callDisplayStyleManager];
  v2 = [v1 callDisplayStyle];

  return sub_10001DB7C(v2, &off_10035A478);
}

void sub_10001DBB0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentCalls];

  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100017230(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
LABEL_17:

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = [v5 callUUID];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [v19 activeCall];
    v12 = [v11 callUUID];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v8 == v13 && v10 == v15)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {

        continue;
      }
    }

    v18 = [v6 isRecording];

    if (v18)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_10001DE6C(void *a1)
{
  v2 = v1;
  v4 = [v1 features];
  v5 = [v4 callRecordingEnabled];

  if (!v5)
  {
    return;
  }

  v6 = [v2 callRecordingButtonViewController];
  if (!v6)
  {
    if (sub_10001D2CC())
    {
      if (qword_1003A9F68 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100008A14(v7, qword_1003B8898);
      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v8, "Not adding Call Recording button in Ambient.", v9, 2u);
      }

      goto LABEL_22;
    }

    v10 = [v2 frontmostCall];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v12 = [v2 callRecordingPillViewController];
    if (v12)
    {
      oslog = v12;
      type metadata accessor for CallRecordingPillViewController();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_19;
      }

      v24 = CallRecordingPillViewController.viewModel.getter();

      v13 = [v11 callUUID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      [v11 recordingAvailability];
      v14 = [v11 recordingSession];
      v15 = v14;
      if (v14)
      {
        [v14 recordingState];
      }

      [v2 callRecordingAllowed];
      [v2 isCallRecordingActive];
      v16 = objc_allocWithZone(type metadata accessor for CallRecordingButtonViewController());
      oslog = v24;
      v17 = v2;
      v18 = CallRecordingButtonViewController.init(_:_:_:_:_:recordingIndicatorViewModel:presenter:)();
      [v17 setCallRecordingButtonViewController:v18];

      if (a1)
      {
        v19 = a1;
        v20 = [v17 callRecordingButtonViewController];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 view];
          if (v22)
          {
            v23 = v22;
            [v17 addChildViewController:v21];
            [v19 insertArrangedSubview:v23 atIndex:0];
            [v21 didMoveToParentViewController:v17];

            v6 = v23;
            goto LABEL_23;
          }
        }
      }

      else
      {
LABEL_19:
      }

LABEL_22:
      v6 = oslog;
      goto LABEL_23;
    }

    v6 = v11;
  }

LABEL_23:
}

Swift::Void __swiftcall PHAudioCallViewController.updateCallHoldingIfNeeded(_:)(UIStackView_optional a1)
{
  v2 = v1;
  [v1 addCallHoldingIfNeeded:a1.value.super.super.super.isa];
  v3 = [v1 callHoldingButtonViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CallHoldingButtonViewController();
    if (swift_dynamicCastClass())
    {
      v5 = [v1 frontmostCall];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 callUUID];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        v11._countAndFlagsBits = v8;
        v11._object = v10;
        CallHoldingButtonViewController.update(callUUID:)(v11);

        CallHoldingButtonViewController.update(holdingAvailability:)(1);
        [v1 updateWaitOnHoldServiceWithCallWithCall:v6];

        v4 = v6;
      }
    }
  }

  v12 = [v1 callHoldingButtonViewController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 view];

    if (v14)
    {
      [v14 setHidden:{objc_msgSend(v2, "holdingConditions") ^ 1}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10001E4D0(uint64_t a1)
{
  v3 = [v1 features];
  v4 = [v3 waitOnHoldEnabled];

  if (v4)
  {

    [v1 addHoldingButton:a1];
  }
}

void sub_10001E5C8(void *a1)
{
  v3 = [v1 features];
  v4 = [v3 waitOnHoldEnabled];

  if (v4)
  {
    v5 = [v1 callHoldingButtonViewController];
    if (!v5)
    {
      if (sub_10001D2CC())
      {
        return;
      }

      v6 = [v1 frontmostCall];
      if (!v6)
      {
        return;
      }

      v21 = v6;
      v7 = [v6 callUUID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100025E38(&qword_1003B08C8, sub_1002517FC, &protocol conformance descriptor for PHAudioCallViewController);
      objc_allocWithZone(type metadata accessor for CallHoldingButtonViewController());
      v8 = v1;
      v9 = CallHoldingButtonViewController.init(_:delegate:)();
      [v8 setCallHoldingButtonViewController:v9];

      if (a1)
      {
        v10 = a1;
        v11 = [v8 callHoldingButtonViewController];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 view];
          if (v13)
          {
            v14 = v13;
            v15 = objc_opt_self();
            v16 = [v15 sharedInstance];
            v17 = [v16 callServicesClientCapabilities];

            [v17 setWantsToScreenCalls:1];
            v18 = [v15 sharedInstance];
            v19 = [v18 callServicesClientCapabilities];

            [v19 save];
            [v8 addChildViewController:v12];
            [v10 addArrangedSubview:v14];
            [v12 didMoveToParentViewController:v8];

            v20 = v10;
            v10 = v14;
            v21 = v12;
          }

          else
          {
            v20 = v12;
          }
        }

        v5 = v10;
      }

      else
      {
        v5 = v21;
      }
    }
  }
}

void sub_10001E934(void *a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 waitOnHoldService];
      if (v5)
      {
        v6 = v5;
        v7 = [a1 callUUID];
        if (!v7)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v7 = String._bridgeToObjectiveC()();
        }

        [v6 updateForCallWithUUID:v7];

        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }
}

BOOL sub_10001EA6C()
{
  v1 = [v0 features];
  v2 = [v1 waitOnHoldEnabled];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 callCenter];
  v4 = [v3 currentAudioAndVideoCallCount];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [v0 frontmostCall];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ([v5 isEndpointOnCurrentDevice] && (objc_msgSend(v6, "isHostedOnCurrentDevice") & 1) == 0 && (v7 = objc_msgSend(v0, "features"), v8 = objc_msgSend(v7, "smartHoldingRelayEnabled"), v7, (v8 & 1) == 0) || (v9 = objc_msgSend(v6, "provider"), v10 = objc_msgSend(v9, "isSystemProvider"), v9, !v10) || (objc_msgSend(v6, "isEmergency") & 1) != 0 || (objc_msgSend(v6, "isConferenced") & 1) != 0 || objc_msgSend(v6, "status") != 1 || !objc_msgSend(v6, "isEndpointOnCurrentDevice") || (v11 = objc_msgSend(v0, "callDisplayStyleManager"), v12 = objc_msgSend(v11, "callDisplayStyle"), v11, !sub_10001EC78(v12, &off_10035A568)))
  {

    return 0;
  }

  v13 = sub_10000849C([v0 middleViewState], &off_10035A5A0);

  return !v13;
}

BOOL sub_10001EC78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_10001F868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10001F8D4()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR___PHCallTranslationController____lazy_storage___button;
  v10 = *(v0 + OBJC_IVAR___PHCallTranslationController____lazy_storage___button);
  if (v10)
  {
    v11 = *(v0 + OBJC_IVAR___PHCallTranslationController____lazy_storage___button);
  }

  else
  {
    static UIButton.Configuration.plain()();
    sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
    sub_1001FFAD8();
    UIButton.Configuration.image.setter();
    UIButton.Configuration.contentInsets.setter();
    sub_1000064BC(0, &qword_1003ACFE8, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_1000064BC(0, &qword_1003ABA20, UIButton_ptr);
    (*(v3 + 16))(v6, v8, v2);
    v13 = v12;
    v14 = UIButton.init(configuration:primaryAction:)();
    v15 = [objc_opt_self() labelColor];
    [v14 setTintColor:v15];

    [v14 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    (*(v3 + 8))(v8, v2);
    v16 = *(v1 + v9);
    *(v1 + v9) = v14;
    v11 = v14;

    v10 = 0;
  }

  v17 = v10;
  return v11;
}

uint64_t sub_10001FB90()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10001FBC8()
{
  v1 = v0;
  v2 = sub_10001F8D4();
  v3 = [v2 superview];

  if (v3)
  {

    [*(v1 + OBJC_IVAR___PHCallTranslationController____lazy_storage___button) setHidden:1];
    v4 = OBJC_IVAR___PHCallTranslationController_currentWorker;
    if (*(v1 + OBJC_IVAR___PHCallTranslationController_currentWorker))
    {

      v5 = CallTranslationWorker.hasTranslationActivity.getter();

      if (v5)
      {
        if (*(v1 + v4))
        {

          CallTranslationWorker.stopTranslationActivity()();
        }
      }
    }

    *(v1 + OBJC_IVAR___PHCallTranslationController_currentCall) = 0;

    sub_1001FFDD8(0);
    v7 = 0;
    memset(v6, 0, sizeof(v6));

    CallTranslationMoreMenuViewModel.update(_:)();

    sub_10000830C(v6, &qword_1003AE960, &unk_1002FF980);
  }
}

void sub_10001FD5C(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
    v4 = [v3 uniqueProxyIdentifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = OBJC_IVAR___PHCallTranslationController_currentCall;
    if (!*(v2 + OBJC_IVAR___PHCallTranslationController_currentCall))
    {

      goto LABEL_10;
    }

    v9 = CallFacade.uniqueProxyIdentifier.getter();
    v11 = v10;

    if (v5 != v9 || v7 != v11)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_17;
      }

LABEL_10:
      type metadata accessor for CallCenterFacade();
      static CallCenterFacade.shared.getter();
      v14 = [v3 uniqueProxyIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = CallCenterFacade.call(with:)();

      if (!v15)
      {
LABEL_17:

        goto LABEL_19;
      }

      v47 = v3;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v63 = v19;
        *v18 = 136315138;
        v20 = [v47 uniqueProxyIdentifier];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = sub_100008ADC(v21, v23, &v63);

        *(v18 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v16, v17, "Update translation with new call %s.", v18, 0xCu);
        sub_100005B2C(v19);
      }

      if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), (v25 = swift_unknownObjectWeakLoadStrong()) != 0) && (v26 = v25, v27 = [v25 view], v26, v27))
      {
        sub_100201368(v27, &selRef_callTranslationControllerWithShouldRemoveTranslationViewFromHost_);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v31 = Strong;
          v32 = [Strong view];

          if (!v32)
          {
            __break(1u);
            return;
          }

          [v32 removeFromSuperview];
        }

        v33 = swift_unknownObjectWeakLoadStrong();
        if (v33)
        {
          v34 = v33;
          [v33 removeFromParentViewController];
        }

        v35 = swift_unknownObjectWeakLoadStrong();
        if (!v35)
        {
          goto LABEL_29;
        }

        v27 = v35;
        [v35 didMoveToParentViewController:0];
      }

LABEL_29:
      swift_unknownObjectWeakAssign();
      v36 = type metadata accessor for CallTranslationService();
      swift_retain_n();
      v37 = CallTranslationService.__allocating_init(call:videoCall:)();
      *(&v64 + 1) = v36;
      v65 = &protocol witness table for CallTranslationService;
      *&v63 = v37;
      type metadata accessor for CallTranslationWorker();
      swift_allocObject();
      v38 = v37;
      CallTranslationWorker.init(service:)();
      *(v2 + v8) = v15;

      sub_1001FFDD8(v39);
      type metadata accessor for Features();
      v40 = static Features.shared.getter();
      v41 = Features.isMoreMenuEnabled.getter();

      if (v41)
      {
        v42 = OBJC_IVAR___PHCallTranslationController_moreMenuViewModel;
        *(&v64 + 1) = v36;
        v65 = &protocol witness table for CallTranslationService;
        *&v63 = v38;
        v43 = v38;

        CallTranslationMoreMenuViewModel.update(_:)();

        sub_10000830C(&v63, &qword_1003AE960, &unk_1002FF980);
        type metadata accessor for FTMenuItemRegistry();
        v44 = static FTMenuItemRegistry.shared.getter();
        v45 = [v47 uniqueProxyIdentifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v65 = 0;
        v63 = 0u;
        v64 = 0u;
        v62 = 0;
        memset(v61, 0, sizeof(v61));
        v60 = 0;
        memset(v59, 0, sizeof(v59));
        v58 = 0;
        memset(v57, 0, sizeof(v57));
        v56 = 0;
        memset(v55, 0, sizeof(v55));
        v46 = *(v2 + v42);
        v54[3] = type metadata accessor for CallTranslationMoreMenuViewModel();
        v54[4] = sub_100201D78(&qword_1003AE998, &type metadata accessor for CallTranslationMoreMenuViewModel, &protocol conformance descriptor for CallTranslationMoreMenuViewModel);
        v53 = 0;
        v54[0] = v46;
        memset(v52, 0, sizeof(v52));
        v51 = 0;
        memset(v50, 0, sizeof(v50));
        v49 = 0;
        memset(v48, 0, sizeof(v48));

        FTMenuItemRegistry.register(with:punchOutProvider:callRecording:deskView:routes:liveCaptions:liveTranslation:screenShare:sharePlay:splitCalls:conferenceParticipants:)();

        sub_1000079FC(v48);
        sub_1000079FC(v50);
        sub_1000079FC(v52);
        sub_1000079FC(v55);
        sub_1000079FC(v57);
        sub_1000079FC(v59);
        sub_1000079FC(v61);
        sub_1000079FC(&v63);
        sub_1000079FC(v54);
        return;
      }

      goto LABEL_32;
    }
  }

LABEL_19:
  v47 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v47, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v47, v28, "Ignore translation call update for the same call.", v29, 2u);
  }

LABEL_32:
}

void sub_100020520(uint64_t a1, uint64_t a2)
{
  if (qword_1003A9F98 != -1)
  {
    swift_once();
  }

  v2 = qword_1003B8928;
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("AlertCoordinator: Did receive TUCallCenterCallStatusChanged notification", 72, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);
  Notification.object.getter();
  if (v22)
  {
    sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
    if (swift_dynamicCast())
    {
      if ([v20 status] == 6 && objc_msgSend(v20, "isEmergency") && objc_msgSend(v20, "disconnectedReasonRequiresCallBackUI"))
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v5 = Strong;
          v6 = *(Strong + OBJC_IVAR____TtC13InCallService16AlertCoordinator_failedEmergencyCall);
          *(Strong + OBJC_IVAR____TtC13InCallService16AlertCoordinator_failedEmergencyCall) = v20;
          v7 = v20;
        }

        swift_beginAccess();
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          sub_10002BA70();
        }

        Notification.object.getter();
        if (v22)
        {
          if (swift_dynamicCast())
          {
            if ([v19 supportsEmergencyFallback])
            {
              swift_beginAccess();
              v10 = swift_unknownObjectWeakLoadStrong();
              if (v10)
              {
                v12 = v10;
                sub_10002BC08(v10, v11);
              }
            }
          }
        }

        else
        {

          sub_10015E258(v21);
        }

        return;
      }
    }
  }

  else
  {
    sub_10015E258(v21);
  }

  if (qword_1003A9F40 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008A14(v13, &unk_1003B8820);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "AlertCoordinator: call status is not disconnected or is not emergency or doesn't need callbackUI so we skip notifying stewie", v16, 2u);
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = *&v17[OBJC_IVAR____TtC13InCallService16AlertCoordinator_failedEmergencyCall];
    *&v17[OBJC_IVAR____TtC13InCallService16AlertCoordinator_failedEmergencyCall] = 0;
  }
}

void sub_1000235C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_10002361C(id a1, PHSingleCallParticipantLabelView *a2)
{
  v12 = a2;
  v2 = [(PHSingleCallParticipantLabelView *)v12 secondaryInfoLabel];
  v3 = 0.0;
  [v2 setAlpha:0.0];

  v4 = +[CNKFeatures sharedInstance];
  v5 = [v4 isHeroImageEnabled];

  if ((v5 & 1) == 0)
  {
    v6 = [(PHSingleCallParticipantLabelView *)v12 traitCollection];
    v7 = [v6 _backlightLuminance];

    if (v7 != 1)
    {
      v3 = 1.0;
    }

    v8 = [(PHAbstractCallParticipantLabelView *)v12 statusLabel];
    [v8 setAlpha:v3];
  }

  v9 = [(PHSingleCallParticipantLabelView *)v12 callDisplayStyleManager];
  v10 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [v9 callDisplayStyle]);
  v11 = [(PHAbstractCallParticipantLabelView *)v12 statusLabel];
  [v11 setFont:v10];
}

uint64_t sub_100024FAC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100005B88(v2);
  *v3 = v4;
  v5 = sub_100006D10(v3);

  return sub_100025048(v5, v6, v7, v1);
}

uint64_t sub_100025048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_10002513C, v7, v6);
}

uint64_t sub_10002513C()
{
  sub_100006610();
  static Clock<>.continuous.getter();
  v1 = sub_10000A4A0();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_10002E5B4;

  return v3(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000251F4()
{
  sub_100006880();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v1 + 64) = v12;
  sub_100006998(v12);
  *(v1 + 72) = v13;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  v14 = sub_100008184();

  return _swift_task_switch(v14, v15, v16);
}

id sub_1000252E0(uint64_t a1)
{
  v3 = *(a1 + *v1);

  return v3;
}

uint64_t sub_100025300()
{

  return swift_slowAlloc();
}

id sub_10002531C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v8 + 2400);

  return [v6 v10];
}

void sub_100025374(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000010;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_1000253CC()
{
  sub_100006880();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_100005B88(v4);
  *v5 = v6;
  v7 = sub_100006D10(v5);

  return sub_100025478(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_100025478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_100025514, v8, v7);
}

uint64_t sub_100025514()
{
  sub_100006610();
  if ([*(v0 + 16) isVideo])
  {

    Task.cancel()();
    sub_10002D474();
    sub_10002DA10();
    sub_10000535C();

    return v1();
  }

  else
  {
    if (qword_1003A9FF8 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_10002D2DC;

    return PosterSnapshotService.prewarmSnapshot(call:)();
  }
}

uint64_t PosterSnapshotService.prewarmSnapshot(call:)()
{
  sub_1000058A8();
  v1[3] = v2;
  v1[4] = v0;
  type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  sub_10000594C();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v4;

  return _swift_task_switch(sub_10002571C, v3, v4);
}

uint64_t sub_10002571C()
{
  v1 = sub_1000140C4(*(v0 + 24));
  if (!v1)
  {
    goto LABEL_9;
  }

  if (!*(v1 + 16))
  {

LABEL_9:

    goto LABEL_10;
  }

  v2 = *(v0 + 24);

  v3 = [objc_opt_self() tu_contactStoreConfigurationForCall:v2];
  v4 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v3];
  *(v0 + 64) = v4;

  v5 = String._bridgeToObjectiveC()();

  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002F96C0;
  v7 = CNContactWallpaperKey;
  v8 = CNContactWallpaperMetadataKey;
  *(v6 + 32) = CNContactWallpaperKey;
  *(v6 + 40) = v8;
  v9 = v7;
  v10 = v8;
  sub_10014EA98(&qword_1003AAF80, &unk_1002FB7D0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v12 = [v4 unifiedContactWithIdentifier:v5 keysToFetch:isa error:v0 + 16];
  *(v0 + 72) = v12;

  v13 = *(v0 + 16);
  if (v12)
  {
    v14 = v13;
    v15 = swift_task_alloc();
    *(v0 + 80) = v15;
    *v15 = v0;
    v15[1] = sub_100027060;

    return PosterSnapshotService.takeSnapshot(contact:)(v12);
  }

  v18 = v13;

  _convertNSErrorToError(_:)();

  swift_willThrow();

LABEL_10:
  sub_10000535C();

  return v17();
}

uint64_t sub_1000259F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100027E08(a1, a2, a3, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
}

uint64_t sub_100025A1C(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_100025A9C(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100025AFC()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t sub_100025B14(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100025B34(uint64_t a1)
{
  *(a1 + 16) = v1;

  return swift_task_alloc();
}

uint64_t sub_100025B50(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t sub_100025B68(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_100025B84()
{

  return swift_getWitnessTable();
}

uint64_t sub_100025BAC(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100025BDC()
{

  return static _Glass._GlassVariant.clear.getter();
}

uint64_t PosterSnapshotService.takeSnapshot(contact:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100025AD0(a1, v1);
}

uint64_t sub_100025CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100007C1C();
  sub_100005408();
  v11 = v10[10];
  v12 = v10[8];
  v13 = v10[9];
  type metadata accessor for ContinuousClock();
  sub_100025E38(&qword_1003B08B8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100025E38(&qword_1003B08C0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v14 = *(v13 + 8);
  v10[12] = v14;
  v10[13] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = swift_task_alloc();
  v10[14] = v15;
  *v15 = v10;
  v15[1] = sub_10002DD04;
  sub_10000C20C();

  return dispatch thunk of Clock.sleep(until:tolerance:)(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_100025E38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100025E80(uint64_t a1, uint64_t a2)
{

  return swift_unknownObjectRetain();
}

void sub_100025E98(uint64_t a1@<X8>)
{
  v2[21] = v3;
  v2[22] = a1;
  v2[18] = v1;
}

uint64_t sub_100025EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return swift_beginAccess();
}

id sub_100025EF4()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

id sub_100025F18()
{
  v4 = *(v1 + v0);
  v5 = *(v2 + 3568);

  return [v4 v5];
}

void sub_100025F60(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_100025FBC()
{
  v1 = v0;
  v2 = type metadata accessor for CameraStateMonitor.State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10014EA98(&qword_1003AE220, &qword_1002FDB20);
  __chkstk_darwin(v5 - 8);
  v72 = &v66 - v6;
  v7 = sub_10014EA98(&qword_1003AC968, &qword_1002FD498);
  __chkstk_darwin(v7 - 8);
  v9 = &v66 - v8;
  v10 = sub_10014EA98(&qword_1003ACF08, &unk_1002FDB40);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v66 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + OBJC_IVAR___ICSCameraStateMonitor_queue);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v71 = v18;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
LABEL_12:
    v47 = type metadata accessor for Logger();
    sub_100008A14(v47, &unk_1003B8930);
    swift_unknownObjectRetain();
    v48 = v1;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *&v74 = swift_slowAlloc();
      *v51 = 136315394;
      if (v17)
      {
        v77[0] = v17;
        v77[1] = v19;
        v77[2] = v11;
        v78 = v4;
        swift_unknownObjectRetain();
        sub_10014EA98(&qword_1003ACF10, &unk_1002FDB50);
        v52 = String.init<A>(reflecting:)();
        v54 = v53;
      }

      else
      {
        v54 = 0xE300000000000000;
        v52 = 7104878;
      }

      v61 = sub_100008ADC(v52, v54, &v74);

      *(v51 + 4) = v61;
      *(v51 + 12) = 2080;
      sub_100026E5C(&v13[v1], v77);
      v62 = sub_100173DF0(v77);
      v64 = v63;
      sub_100008360(v77, &qword_1003AB3F8, &unk_1002FBD28);
      v65 = sub_100008ADC(v62, v64, &v74);

      *(v51 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v49, v50, "Call status changed for call: %s, but timer state does not need to be changed (timerState: %s).", v51, 0x16u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return;
  }

  v69 = v13;
  v70 = v11;
  v20 = *(v1 + OBJC_IVAR___ICSCameraStateMonitor_activeVideoCall);

  v17 = v20(v21);
  v19 = v22;
  v11 = v23;
  v25 = v24;

  v13 = OBJC_IVAR___ICSCameraStateMonitor_timerState;
  swift_beginAccess();
  sub_100026E5C(&v13[v1], v77);
  if (v78)
  {
    if (v17)
    {
      sub_100005B2C(v77);
      goto LABEL_11;
    }

    if (qword_1003A9FA0 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100008A14(v55, &unk_1003B8930);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Video call is no longer active, unsubscribing from camera state changes.", v58, 2u);
    }

    v59 = type metadata accessor for CameraStateMonitor.Snapshot(0);
    sub_100006848(v4, 1, 2, v59);
    v60 = OBJC_IVAR___ICSCameraStateMonitor_state;
    swift_beginAccess();
    sub_1001C4360(v4, v1 + v60);
    swift_endAccess();
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    swift_beginAccess();
    sub_1001C43C4(&v74, &v13[v1]);
    swift_endAccess();
    sub_100005B2C(v77);
  }

  else
  {
    if (!v17)
    {
LABEL_11:
      v4 = v25;
      if (qword_1003A9FA0 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    if (qword_1003A9FA0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008A14(v26, &unk_1003B8930);
    swift_unknownObjectRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    v29 = os_log_type_enabled(v27, v28);
    v68 = v13;
    if (v29)
    {
      v30 = v25;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v67 = v10;
      v33 = v32;
      v73[0] = v32;
      *v31 = 136315138;
      *&v74 = v17;
      *(&v74 + 1) = v19;
      *&v75 = v11;
      *(&v75 + 1) = v30;
      swift_unknownObjectRetain();
      sub_10014EA98(&qword_1003ACF10, &unk_1002FDB50);
      v34 = String.init<A>(reflecting:)();
      v36 = sub_100008ADC(v34, v35, v73);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "Call status changed for call: %s, starting timer to poll for camera state changes.", v31, 0xCu);
      sub_100005B2C(v33);
      v10 = v67;
    }

    sub_1000064BC(0, &qword_1003ACF18, NSTimer_ptr);
    v37 = [objc_opt_self() mainRunLoop];
    v38 = type metadata accessor for NSRunLoop.SchedulerOptions();
    sub_100006848(v9, 1, 1, v38);
    v39 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_100008360(v9, &qword_1003AC968, &qword_1002FD498);
    *&v74 = v39;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_100027D30(&qword_1003ACF20, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v40 = ConnectablePublisher.autoconnect()();

    *&v74 = v40;
    v41 = v71;
    v73[0] = v71;
    v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v43 = v72;
    sub_100006848(v72, 1, 1, v42);
    v71 = v41;
    sub_10014EA98(&qword_1003ACF28, &unk_1003017F0);
    sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
    sub_100027E08(&qword_1003ACF30, &qword_1003ACF28, &unk_1003017F0, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    sub_100027E50();
    v44 = v69;
    Publisher.receive<A>(on:options:)();
    sub_100008360(v43, &qword_1003AE220, &qword_1002FDB20);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100027E08(&qword_1003ACF38, &qword_1003ACF08, &unk_1002FDB40, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v45 = Publisher<>.sink(receiveValue:)();

    (*(v70 + 8))(v44, v10);
    *(&v75 + 1) = type metadata accessor for AnyCancellable();
    v76 = &protocol witness table for AnyCancellable;
    swift_unknownObjectRelease();
    *&v74 = v45;
    v46 = v68;
    swift_beginAccess();
    sub_1001C43C4(&v74, &v46[v1]);
    swift_endAccess();
  }
}

uint64_t sub_100026A68()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100026ABC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100026AF4()
{
  v0 = [objc_opt_self() sharedInstance];
  TUCallCenter.activeVideoCall.getter();
  v2 = v1;

  return v2;
}

void TUCallCenter.activeVideoCall.getter()
{
  v1 = [v0 currentVideoCalls];
  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  sub_1000067CC();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100017230(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      sub_10000898C();
LABEL_12:
      sub_100005558();
      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v5 status] == 1)
    {

      sub_100006FB8();
      sub_100005D1C();
      sub_100030170(v7, v8, v9);
      sub_100009778();
      sub_100030170(v10, v11, TUCall_ptr);
      sub_100025C88();
      sub_100030170(v12, v13, TUCall_ptr);
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_100026CE0()
{
  sub_100005408();
  v1 = [*(v0 + 16) wallpaper];
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 16) identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    *(v0 + 40) = v5;
    v6 = [v2 posterArchiveData];
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *(v0 + 48) = v7;
    *(v0 + 56) = v9;
    sub_1001AAF48(v2);
    *(v0 + 64) = v10;
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_1001A9584;

    return sub_1001A9770();
  }

  else
  {
    sub_100026F44();

    return v13();
  }
}

uint64_t sub_100026EB8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_100026ED0()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

uint64_t sub_100026EF4()
{

  return sub_100006848(v0, 1, 1, v1);
}

id sub_100026F84()
{
  v3 = *(v0 + 848);

  return [v1 v3];
}

uint64_t sub_100026FB8()
{

  return UIButton.configuration.setter();
}

uint64_t sub_100026FD8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100027060()
{
  sub_1000058A8();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  sub_100006870();
  *v5 = v4;

  v6 = *(v3 + 56);
  v7 = *(v3 + 48);

  return _swift_task_switch(sub_10002D240, v7, v6);
}

void sub_1000271B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_10002720C()
{
  v1 = v0;
  v2 = type metadata accessor for PillStateMonitor.State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10014EA98(&qword_1003AE220, &qword_1002FDB20);
  __chkstk_darwin(v5 - 8);
  v7 = &v59 - v6;
  v8 = sub_10014EA98(&qword_1003AC968, &qword_1002FD498);
  __chkstk_darwin(v8 - 8);
  v10 = &v59 - v9;
  v11 = sub_10014EA98(&qword_1003ACF08, &unk_1002FDB40);
  v62 = *(v11 - 8);
  v63 = v11;
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *&v1[OBJC_IVAR___ICSPillStateMonitor_queue];
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v21 = *&v1[OBJC_IVAR___ICSPillStateMonitor_hasCurrentCalls];

  LOBYTE(v17) = v21(v22);

  v20 = OBJC_IVAR___ICSPillStateMonitor_timerState;
  swift_beginAccess();
  sub_100027CBC(&v1[v20], v68);
  if (v68[3])
  {
    if (v17)
    {
      sub_100005B2C(v68);
      goto LABEL_11;
    }

    if (qword_1003A9FA8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100008A14(v53, &unk_1003B8948);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "No longer have current calls, unsubscribing from pill state changes.", v56, 2u);
    }

    v57 = type metadata accessor for PillStateMonitor.Snapshot(0);
    sub_100006848(v4, 1, 2, v57);
    v58 = OBJC_IVAR___ICSPillStateMonitor_state;
    swift_beginAccess();
    sub_100035C94(v4, &v1[v58]);
    swift_endAccess();
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    swift_beginAccess();
    sub_100027EB8(&v65, &v1[v20]);
    swift_endAccess();
    sub_100005B2C(v68);
  }

  else
  {
    if ((v17 & 1) == 0)
    {
LABEL_11:
      if (qword_1003A9FA8 == -1)
      {
LABEL_12:
        v39 = type metadata accessor for Logger();
        sub_100008A14(v39, &unk_1003B8948);
        v40 = v1;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *&v65 = swift_slowAlloc();
          *v43 = 136315394;
          v44 = 28516;
          if ((v17 & 1) == 0)
          {
            v44 = 0x746F6E206F64;
          }

          v45 = 0xE600000000000000;
          if (v17)
          {
            v45 = 0xE200000000000000;
          }

          v68[0] = v44;
          v68[1] = v45;
          v46 = String.init<A>(reflecting:)();
          v48 = sub_100008ADC(v46, v47, &v65);

          *(v43 + 4) = v48;
          *(v43 + 12) = 2080;
          sub_100027CBC(&v1[v20], v68);
          v49 = sub_100173EBC(v68);
          v51 = v50;
          sub_100008360(v68, &qword_1003AB3E8, &qword_1002FBD20);
          v52 = sub_100008ADC(v49, v51, &v65);

          *(v43 + 14) = v52;
          _os_log_impl(&_mh_execute_header, v41, v42, "We %s have current calls, but timer state does not need to be changed (timerState: %s).", v43, 0x16u);
          swift_arrayDestroy();
        }

        return;
      }

LABEL_25:
      swift_once();
      goto LABEL_12;
    }

    if (qword_1003A9FA8 != -1)
    {
      swift_once();
    }

    v61 = v19;
    v23 = type metadata accessor for Logger();
    sub_100008A14(v23, &unk_1003B8948);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v65 = v60;
      *v26 = 136315138;
      LOBYTE(v64) = 1;
      v27 = String.init<A>(reflecting:)();
      v29 = sub_100008ADC(v27, v28, &v65);

      *(v26 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "Have current calls: %s, starting timer to poll for pill state changes.", v26, 0xCu);
      sub_100005B2C(v60);
    }

    sub_1000064BC(0, &qword_1003ACF18, NSTimer_ptr);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
    sub_100006848(v10, 1, 1, v31);
    v32 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_100008360(v10, &qword_1003AC968, &qword_1002FD498);
    *&v65 = v32;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_100027D30(&qword_1003ACF20, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v33 = ConnectablePublisher.autoconnect()();

    *&v65 = v33;
    v34 = v61;
    v64 = v61;
    v35 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    sub_100006848(v7, 1, 1, v35);
    v36 = v34;
    sub_10014EA98(&qword_1003ACF28, &unk_1003017F0);
    sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
    sub_100027E08(&qword_1003ACF30, &qword_1003ACF28, &unk_1003017F0, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    sub_100027E50();
    Publisher.receive<A>(on:options:)();
    sub_100008360(v7, &qword_1003AE220, &qword_1002FDB20);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100027E08(&qword_1003ACF38, &qword_1003ACF08, &unk_1002FDB40, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v37 = v63;
    v38 = Publisher<>.sink(receiveValue:)();

    (*(v62 + 8))(v13, v37);
    *(&v66 + 1) = type metadata accessor for AnyCancellable();
    v67 = &protocol witness table for AnyCancellable;
    *&v65 = v38;
    swift_beginAccess();
    sub_100027EB8(&v65, &v1[v20]);
    swift_endAccess();
  }
}

uint64_t sub_100027BF4()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

BOOL sub_100027C48(id a1)
{
  v1 = +[TUCallCenter sharedInstance];
  v2 = [v1 hasCurrentCalls];

  return v2;
}

uint64_t sub_100027D18(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100027D30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100027D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100027DC0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100027E08(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100155B7C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100027E50()
{
  result = qword_1003AE240;
  if (!qword_1003AE240)
  {
    sub_1000064BC(255, &qword_1003AAAB0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE240);
  }

  return result;
}

void sub_100027EF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100027F4C();
  }
}

void sub_100027F4C()
{
  sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  sub_100005BE0();
  __chkstk_darwin(v1);
  v3 = &v15 - v2;
  v4 = [objc_allocWithZone(TUFeatureFlags) init];
  v5 = [v4 carPlayBannersEnabled];

  if (v5)
  {
    v6 = [*&v0[OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_callCenter] frontmostAudioOrVideoCall];
    if (v6)
    {
      v16 = v6;
      v7 = [v6 status];
      if (v7 - 5 < 2)
      {
        sub_100035CF8(0);
      }

      else
      {
        if (v7 == 1)
        {
          v9 = *&v0[OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_presentedBanner];
          v10 = type metadata accessor for TaskPriority();
          sub_100006848(v3, 1, 1, v10);
          type metadata accessor for MainActor();
          v11 = v9;
          v12 = v0;
          v13 = static MainActor.shared.getter();
          v14 = swift_allocObject();
          v14[2] = v13;
          v14[3] = &protocol witness table for MainActor;
          v14[4] = v12;
          v14[5] = v9;
          sub_1001621BC();

          return;
        }

        if (v7 == 4)
        {
          sub_1001ECA38(v16);
        }
      }

      v8 = v16;
    }

    else
    {

      sub_100035CF8(0);
    }
  }
}

uint64_t sub_10002816C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000281B4()
{
  v1 = [v0 callUUID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_100028238(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_52;
  }

  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [WeakRetained multiwayViewController];

  if (!v8)
  {
    v15 = 0;
    goto LABEL_35;
  }

  v59 = objc_opt_new();
  v9 = +[UIApplication sharedApplication];
  v10 = [v9 delegate];
  v11 = [v10 screenSharingRootViewController];

  v12 = [v11 pipController];
  v13 = [v12 pipState];

  v14 = [v11 callDisplayStyleManager];
  v51 = [v14 callDisplayStyle];
  v15 = v51 == 2;

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [*(v1 + 32) elements];
  v16 = [obj countByEnumeratingWithState:&v65 objects:v78 count:16];
  if (!v16)
  {
    v19 = 0;
    goto LABEL_29;
  }

  v17 = v16;
  v52 = v11;
  v53 = v1;
  v54 = v51 == 2;
  v18 = v3;
  v19 = 0;
  v58 = v13 - 3;
  v20 = *v66;
  v21 = TUBundleIdentifierSpringBoardAppSwitcher;
  v57 = TUBundleIdentifierSpringBoardHomeScreen;
  v56 = TUBundleIdentifierInCallServiceApplication;
  while (2)
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v66 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v65 + 1) + 8 * i);
      v24 = [v23 identifier];
      if ([v24 isEqualToString:v21])
      {
      }

      else
      {
        v25 = [v23 identifier];
        v26 = [v25 isEqualToString:v57];

        if (!v26)
        {
          goto LABEL_12;
        }
      }

      v27 = [v18 multiwayViewController];
      [v27 prepareForAppSwitcher];

LABEL_12:
      if ([v23 conformsToProtocol:&OBJC_PROTOCOL___SBSDisplayLayoutElement])
      {
        [v59 addObject:v23];
        v28 = v23;
        v29 = v28;
        if (v58 > 0xFFFFFFFFFFFFFFFDLL)
        {
          v31 = 0;
        }

        else
        {
          v30 = [v28 bundleIdentifier];
          v31 = [v30 isEqualToString:v56];
        }

        if ([v29 layoutRole] == 5 && ((objc_msgSend(v29, "sb_isStashedPIP") | v31) & 1) == 0)
        {
          v19 = (v19 + 1);
          [v29 frame];
          v80 = CGRectIntegral(v79);
          x = v80.origin.x;
          y = v80.origin.y;
          width = v80.size.width;
          height = v80.size.height;

          goto LABEL_27;
        }

        [v29 sb_isStashedPIP];
        if ([v29 layoutRole] == 5)
        {
          v19 = (v19 + 1);
        }

        else
        {
          v19 = v19;
        }
      }
    }

    v17 = [obj countByEnumeratingWithState:&v65 objects:v78 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_27:
  v3 = v18;
  v15 = v54;
  v11 = v52;
  v1 = v53;
LABEL_29:

  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    v33 = sub_100004F84(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [NSNumber numberWithBool:v51 == 2];
      v35 = [NSNumber numberWithBool:v51 == 2];
      v36 = [NSNumber numberWithInt:v19];
      *buf = 138544130;
      v71 = v34;
      v72 = 2114;
      v73 = v35;
      v74 = 2114;
      v75 = v36;
      v76 = 2114;
      v77 = v59;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] mediaPipFrameInWindowScene is zero. shouldIgnoreICSElements(%{public}@) isScreenSharingFullScreen(%{public}@)  pipRoles(%{public}@) layoutElements: %{public}@", buf, 0x2Au);
    }
  }

  [v3 handleFrontBoardInterfaceOrientationChange:{objc_msgSend(*(v1 + 32), "interfaceOrientation", v51)}];

LABEL_35:
  v37 = [*(v1 + 32) displayBacklightLevel];
  if (*(v1 + 32) && v37 <= 0)
  {
    v55 = v15;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v38 = [v3 callCenter];
    v39 = [v38 currentAudioAndVideoCalls];

    v40 = [v39 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v62;
      do
      {
        for (j = 0; j != v41; j = j + 1)
        {
          if (*v62 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v61 + 1) + 8 * j);
          v45 = [v44 isSharingScreen];
          if (v45)
          {
            v46 = sub_100004F84(v45);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v71 = v44;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Device display is off stopping sharing screen for call %@", buf, 0xCu);
            }

            [v44 setSharingScreen:0];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v41);
    }

    v15 = v55;
  }

  v47 = sub_100004F84(v37);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v81.origin.x = x;
    v81.origin.y = y;
    v81.size.width = width;
    v81.size.height = height;
    v48 = NSStringFromCGRect(v81);
    *buf = 138543362;
    v71 = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "mediaPipFrameInWindowScene changed to %{public}@", buf, 0xCu);
  }

  v49 = [v3 multiwayViewController];
  [v49 setMediaPipFrameInWindowScene:{x, y, width, height}];

  v50 = [v3 multiwayViewController];
  [v50 setIsScreenSharingFullScreen:v15];

LABEL_52:
}

id sub_1000288FC(void *a1)
{
  v2 = v1;
  v3 = [a1 session];
  v4 = [v3 persistentIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = sub_1000076E0(v5, v6);
  LOBYTE(v3) = sub_10000C348(v7, &type metadata for String, v8, v7, v9, v10, v11, v12, v20);

  if ((v3 & 1) == 0)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    v15 = sub_100028A84(v14);
    v16 = OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_carPlayWindow;
    v17 = *(v2 + OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_carPlayWindow);
    *(v2 + OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_carPlayWindow) = v15;

    v18 = [objc_allocWithZone(TUHardwareControlsBroadcaster) init];
    v19 = *(v2 + OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_hardwareControlsBroadcaster);
    *(v2 + OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_hardwareControlsBroadcaster) = v18;

    result = *(v2 + v16);
    if (result)
    {
      return [result setHidden:0];
    }
  }

  return result;
}

unint64_t sub_100028A30()
{
  result = qword_1003AA9B0;
  if (!qword_1003AA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AA9B0);
  }

  return result;
}

id sub_100028A84(uint64_t a1)
{
  v1 = [objc_allocWithZone(UIWindow) initWithWindowScene:a1];
  v2 = [objc_allocWithZone(PHCarPlayInCallViewController) init];
  [v1 setRootViewController:v2];

  return v1;
}

id sub_100028B24()
{
  if (qword_1003AA0A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1003B8AE0;

  return v1;
}

id sub_100028BC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_presentedBanner);
  if (!v1)
  {
    return 0;
  }

  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = [result window];

    return v4;
  }

  __break(1u);
  return result;
}

char *sub_10002958C()
{
  sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
  v0 = static OS_dispatch_queue.main.getter();
  v1 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v0];

  swift_getObjectType();
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 sharedInstance];
  v5 = objc_allocWithZone(type metadata accessor for AlertCoordinator());
  v6 = sub_1000296EC(sub_10002ADD0, 0, sub_1001C1424, 0, v3, v4, v5);

  swift_deallocPartialClassInstance();
  return v6;
}

char *sub_1000296EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v29[1] = a2;
  v14 = type metadata accessor for NSNotificationCenter.Publisher();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_isAlertRequestPending] = 0;
  *&a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_failedEmergencyCall] = 0;
  a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_isDemoAvailable] = 0;
  *&a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator__currentBackgroundCountdownDuration] = 0x4024000000000000;
  *&a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_cancellables] = &_swiftEmptySetSingleton;
  *&a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitor] = 0;
  *&a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_backgroundCountdownTimer] = 0;
  v18 = &a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitorProvider];
  *v18 = a1;
  v18[1] = a2;
  v19 = &a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_carPlayProvider];
  *v19 = a3;
  v19[1] = a4;
  v29[2] = a4;
  *&a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_telephonyClient] = a5;
  *&a7[OBJC_IVAR____TtC13InCallService16AlertCoordinator_callCenter] = a6;
  v20 = type metadata accessor for AlertCoordinator();
  v30.receiver = a7;
  v30.super_class = v20;

  v21 = objc_msgSendSuper2(&v30, "init");
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100029B9C();
  Publisher<>.sink(receiveValue:)();

  v25 = *(v15 + 8);
  v25(v17, v14);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v26 = [v22 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  v25(v17, v14);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v27 = [v22 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  Publisher<>.sink(receiveValue:)();

  v25(v17, v14);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v23;
}

uint64_t sub_100029B64()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100029B9C()
{
  result = qword_1003B0A90;
  if (!qword_1003B0A90)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0A90);
  }

  return result;
}

uint64_t sub_100029C54(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_10002AC0C()
{
  v1 = OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitor;
  if (*&v0[OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitor])
  {
    if (qword_1003A9F98 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v2 = v0;
  v3 = (*&v0[OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitorProvider])(v0);
  if (!v3)
  {
LABEL_12:
    if (qword_1003A9F98 == -1)
    {
LABEL_13:
      static os_log_type_t.error.getter();
      sub_10000C73C();

      return os_log(_:dso:log:type:_:)(v7);
    }

LABEL_16:
    sub_1000076C0(&qword_1003A9F98);
    goto LABEL_13;
  }

  v4 = v3;
  if (![v3 start])
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  *&v2[v1] = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (qword_1003A9F98 != -1)
  {
    sub_1000076C0(&qword_1003A9F98);
  }

  static os_log_type_t.default.getter();
  sub_100006FD0();
  os_log(_:dso:log:type:_:)(v5);
  [v2 refreshDelegateWithState];

  return swift_unknownObjectRelease();
}

id sub_10002ADD0(void *a1)
{
  sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
  v2 = static OS_dispatch_queue.main.getter();
  v3 = objc_allocWithZone(CTStewieStateMonitor);
  v4 = a1;
  v5 = [v3 initWithDelegate:v4 queue:v2];

  return v5;
}

void sub_10002AEA4(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitor];
  if (v3)
  {
    v4 = qword_1003A9F98;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      sub_1000076C0(&qword_1003A9F98);
    }

    static os_log_type_t.default.getter();
    sub_100006FD0();
    os_log(_:dso:log:type:_:)(v5);
    [v2 statusChanged:{objc_msgSend(v3, "getStatus")}];

    swift_unknownObjectRelease();
  }
}

id sub_10002AFB0()
{
  v1 = [v0 getState];
  v2 = [v1 status];

  return v2;
}

id sub_10002B048(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitor);
  if (!v3)
  {
    if (qword_1003A9F98 != -1)
    {
      sub_1000076C0(&qword_1003A9F98);
    }

    static os_log_type_t.default.getter();
    sub_10000C73C();
    os_log(_:dso:log:type:_:)(v10);
    return 0;
  }

  if (*(v2 + OBJC_IVAR____TtC13InCallService16AlertCoordinator_failedEmergencyCall))
  {
    v4 = qword_1003A9F98;
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      sub_1000076C0(&qword_1003A9F98);
    }

    v5 = qword_1003B8928;
    v6 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("AlertCoordinator: we have a failed emergency call, will continue to determine whether show alert UI", 99, 2, &_mh_execute_header, v5, v6, _swiftEmptyArrayStorage);
    goto LABEL_6;
  }

  v12 = *(v2 + OBJC_IVAR____TtC13InCallService16AlertCoordinator_callCenter);
  swift_unknownObjectRetain();
  v13 = [v12 emergencyCall];
  if (!v13)
  {
    if (qword_1003A9F98 != -1)
    {
      sub_1000076C0(&qword_1003A9F98);
    }

    v15 = qword_1003B8928;
    v16 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("AlertCoordinator: callCenter.emergencyCall doesn't exist, isAvailable is returning false", 88, 2, &_mh_execute_header, v15, v16, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    return 0;
  }

  v14 = v13;
  if (![v13 isFailureExpected])
  {
    if (qword_1003A9F98 != -1)
    {
      sub_1000076C0(&qword_1003A9F98);
    }

    static os_log_type_t.default.getter();
    sub_100006FD0();
    os_log(_:dso:log:type:_:)(v17);
    swift_unknownObjectRelease();

    return 0;
  }

LABEL_6:
  v7 = [v3 isAlertTriggerAllowedAndNotActive];
  if (qword_1003A9F98 != -1)
  {
    sub_1000076C0(&qword_1003A9F98);
  }

  sub_10014EA98(&qword_1003AB478, qword_1002FBDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002FAB60;
  *(v8 + 56) = &type metadata for Bool;
  *(v8 + 64) = &protocol witness table for Bool;
  *(v8 + 32) = v7;
  static os_log_type_t.default.getter();
  sub_100006FD0();
  os_log(_:dso:log:type:_:)(v9);
  swift_unknownObjectRelease();

  return v7;
}

void *sub_10002B304()
{
  if (qword_1003A9F98 != -1)
  {
    sub_1000076C0(&qword_1003A9F98);
  }

  sub_10014EA98(&qword_1003AB478, qword_1002FBDC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002FAB60;
  v2 = sub_10002B048(v0, v1);
  *(v0 + 56) = &type metadata for Bool;
  *(v0 + 64) = &protocol witness table for Bool;
  *(v0 + 32) = v2 & 1;
  static os_log_type_t.default.getter();
  sub_10000C73C();
  os_log(_:dso:log:type:_:)(v3);

  v4 = sub_10002BA70();
  sub_10002BC08(v4, v5);

  return sub_10002BE9C();
}

uint64_t sub_10002B42C()
{
  v4[4] = sub_10002B8AC;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10002B848;
  v4[3] = &unk_100361D50;
  v1 = _Block_copy(v4);

  v2 = [v0 callPassingTest:v1];
  _Block_release(v1);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002B518(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B528(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B558(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B568(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B588(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B598(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B5A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B5B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B5C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B5E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B5F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B608(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B618(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B638(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B648(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B688(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B698(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B6A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B6B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B6C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B6D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B6E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B6F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B708(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B718(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B728(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B748(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B768(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B778(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B788(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B7A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B7C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B7D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B7E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B7F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B808(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B838(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B848(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

void *sub_10002BA70()
{
  if (qword_1003A9F98 != -1)
  {
    swift_once();
  }

  v0 = qword_1003B8928;
  sub_10014EA98(&qword_1003AB478, qword_1002FBDC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002FAB60;
  sub_10002B048(v1, v2);
  v3 = String.init<A>(reflecting:)();
  v5 = v4;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10002BBB4();
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  v6 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("AlertCoordinator: notify delegates isStewieAllowed = %@", 55, 2, &_mh_execute_header, v0, v6, v1);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result updatePresentationStateWithAllowed:{sub_10002B048(result, v8) & 1}];
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10002BBB4()
{
  result = qword_1003AB480;
  if (!qword_1003AB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB480);
  }

  return result;
}

void sub_10002BC08(uint64_t a1, uint64_t a2)
{
  if (sub_10002B048(a1, a2))
  {
    if (sub_100252750())
    {
      if (qword_1003A9F98 != -1)
      {
        swift_once();
      }

      v2 = qword_1003B8928;
      sub_10014EA98(&qword_1003AB478, qword_1002FBDC0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1002FAB60;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_10014EA98(&unk_1003B0A68, &qword_100302520);
        v4 = String.init<A>(reflecting:)();
        v6 = v5;
      }

      else
      {
        v6 = 0xE300000000000000;
        v4 = 7104878;
      }

      *(v3 + 56) = &type metadata for String;
      *(v3 + 64) = sub_10002BBB4();
      *(v3 + 32) = v4;
      *(v3 + 40) = v6;
      v11 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("AlertCoordinator: Calling delegate to start auto-countdown %@", 61, 2, &_mh_execute_header, v2, v11, v3);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong startAutoCountdownAlert];
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("AlertCoordinator: no delegate to present countdown UI, starting countdown in background", 87, 2, &_mh_execute_header, v2, v13, _swiftEmptyArrayStorage);
        sub_100253860();
      }

      return;
    }

    if (qword_1003A9F98 != -1)
    {
      swift_once();
    }

    v7 = qword_1003B8928;
    v8 = static os_log_type_t.error.getter();
    v9 = "AlertCoordinator: Auto-countdown state is unavailable to notifyDelegateOfAutoCountdownAlertAvailability";
    v10 = 103;
  }

  else
  {
    if (qword_1003A9F98 != -1)
    {
      swift_once();
    }

    v7 = qword_1003B8928;
    v8 = static os_log_type_t.error.getter();
    v9 = "AlertCoordinator: State is unavailable to notifyDelegateOfAutoCountdownAlertAvailability";
    v10 = 88;
  }

  os_log(_:dso:log:type:_:)(v9, v10, 2, &_mh_execute_header, v7, v8, _swiftEmptyArrayStorage);
}

void *sub_10002BE9C()
{
  if ([v0 isStewieActive])
  {
    if (qword_1003A9F98 != -1)
    {
      swift_once();
    }

    v1 = qword_1003B8928;
    v2 = static os_log_type_t.default.getter();

    return os_log(_:dso:log:type:_:)("AlertCoordinator: stewie is active, no need to notify delegates", 63, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = result;
      if ([result respondsToSelector:"cleanAlertUIInCarPlay"])
      {
        [v4 cleanAlertUIInCarPlay];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10002D240()
{
  sub_1000058A8();
  v1 = *(v0 + 72);

  sub_10000535C();

  return v2();
}

uint64_t sub_10002D2DC()
{
  sub_100006610();
  v1 = *v0;
  v2 = *v0;
  sub_100006870();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_10002D3F0, v5, v4);
}

uint64_t sub_10002D3F0()
{
  sub_100006610();

  Task.cancel()();
  sub_10002D474();
  sub_10002DA10();
  sub_10000535C();

  return v0();
}

uint64_t sub_10002D474()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mainBundle];
  result = sub_10002D86C(v9);
  if (v11)
  {
    v12 = result;
    v13 = v11;
    if ([*(v0 + OBJC_IVAR___ICSAmbientActivityController_callCenter) hasCurrentCalls])
    {
      v20 = *(v0 + OBJC_IVAR___ICSAmbientActivityController_ambientActivityQueue);
      v14 = swift_allocObject();
      v19 = v2;
      v15 = v14;
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = v12;
      v16[4] = v13;
      aBlock[4] = sub_10002E564;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002E570;
      aBlock[3] = &unk_10035E8D8;
      v17 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v21 = _swiftEmptyArrayStorage;
      sub_10002D92C(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
      v18 = v5;
      sub_10002D9BC(&qword_1003B0540, &unk_1003AAAC0, &unk_1002FB790);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v17);
      (*(v19 + 8))(v4, v1);
      (*(v6 + 8))(v8, v18);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10002D7F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002D82C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002D86C(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10002D8E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002D92C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002D974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002D9BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100155B7C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002DA10()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR___ICSAmbientActivityController_ambientActivityQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1000305A4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E570;
  aBlock[3] = &unk_10035E7C0;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10002D92C(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
  sub_10002D9BC(&qword_1003B0540, &unk_1003AAAC0, &unk_1002FB790);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_10002DCCC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002DD04()
{
  sub_100006880();
  sub_1000058C4();
  v3 = v2;
  sub_1000058F8();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_100006870();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = sub_100008DE8();
  v6(v9);
  if (v0)
  {

    return _swift_task_switch(sub_10002DEA0, 0, 0);
  }

  else
  {

    sub_10000535C();

    return v10();
  }
}

uint64_t sub_10002DEA0()
{
  sub_100006610();

  sub_10000535C();

  return v0();
}

void sub_10002DF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ActivityPresentationOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10014EA98(&qword_1003AD2A0, &qword_1002FE160);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_10014EA98(&qword_1003AD370, &qword_1002FE168);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (*&Strong[OBJC_IVAR___ICSAmbientActivityController_currentActivity])
    {
    }

    else
    {
      v35 = v12;
      v36 = v5;
      v32 = OBJC_IVAR___ICSAmbientActivityController_currentActivity;
      v34 = sub_10014EA98(&qword_1003AD380, &qword_1002FE178);
      v17 = type metadata accessor for Date();
      sub_100006848(v10, 1, 1, v17);
      sub_10002E73C();
      sub_10002E790();
      v33 = a3;
      sub_10002E7E4();
      ActivityContent.init(state:staleDate:relevanceScore:)();
      sub_10014EA98(&qword_1003AD388, &unk_1002FE1A0);
      v18 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
      v19 = *(v18 - 8);
      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1002FAB60;
      (*(v19 + 104))(v21 + v20, enum case for ActivityPresentationOptions.ActivityPresentationDestination.ambient(_:), v18);
      ActivityPresentationOptions.init(destinations:)();
      v22 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
      (*(v36 + 8))(v7, v4);
      (*(v35 + 8))(v14, v11);
      if (qword_1003A9FB0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100008A14(v23, &unk_1003B8960);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v37 = v22;
        v38 = v27;
        *v26 = 136315138;

        v28 = String.init<A>(reflecting:)();
        v30 = sub_100008ADC(v28, v29, &v38);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v24, v25, "Starting ambient activity: %s", v26, 0xCu);
        sub_100005B2C(v27);
      }

      *&v16[v32] = v22;
    }
  }
}

uint64_t sub_10002E570(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10002E5B4()
{
  sub_100006880();
  v2 = *v1;
  v3 = *v1;
  sub_100006870();
  *v4 = v3;
  *v4 = *v1;

  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_10003104C;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_1000316D0;
  }

  return _swift_task_switch(v10, v8, v9);
}

unint64_t sub_10002E73C()
{
  result = qword_1003AD328;
  if (!qword_1003AD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD328);
  }

  return result;
}

unint64_t sub_10002E790()
{
  result = qword_1003AD330;
  if (!qword_1003AD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD330);
  }

  return result;
}

unint64_t sub_10002E7E4()
{
  result = qword_1003AD338;
  if (!qword_1003AD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD338);
  }

  return result;
}

uint64_t sub_10002E87C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = sub_10014EA98(a2, a3);
  sub_10000688C();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  sub_100008878(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v9 + 8))(v12, v7);
}

unint64_t sub_10002E990()
{
  result = qword_1003AD360;
  if (!qword_1003AD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD360);
  }

  return result;
}

void sub_10002E9E8()
{
  sub_100005D28();
  v123 = v1;
  v3 = v2;
  type metadata accessor for CallsPresentation();
  sub_10000688C();
  __chkstk_darwin(v4);
  sub_100005BD0();
  sub_100006634();
  *&v5 = sub_10000C6E4();
  v141 = 0;
  v140[0] = v5;
  v140[1] = v5;
  CallsPresentation.init(compact:full:)();
  sub_10002FA68(v3, v130);
  v128 = v130[0];
  v125 = v132;
  v6 = v133;
  v8 = v135;
  v7 = v136;
  v9 = v137;
  v10 = v138;
  v11 = v139[1];
  v127 = v137;
  v126 = v134;
  if (v133)
  {
    v12 = v131;
    v121 = v136;
    sub_100008AC8();
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Call.isVideo.getter();
    v14 = v6;
    swift_unknownObjectRelease();
    if (v13)
    {
      v15 = v126;
      if (!v128)
      {
        ObjectType = swift_getObjectType();
        sub_10000A57C(ObjectType, v139);
        *(v17 - 256) = v6;
        swift_unknownObjectRetain();
        sub_100030344();
        CallsPresentation.compact.setter();
        if (qword_1003A9F40 != -1)
        {
          sub_10000755C(&qword_1003A9F40);
        }

        v18 = type metadata accessor for Logger();
        sub_1000058D0(v18, &unk_1003B8820);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = sub_100005924();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "CallManagerBridge proposedPresentation.fullCall is empty since the active call is video and we don't have an incoming call", v21, 2u);
          sub_100005368();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v22 = sub_100245BF4();
        v23(v22);
        goto LABEL_106;
      }

      goto LABEL_15;
    }

    v15 = v126;
    if (v128)
    {
LABEL_15:
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      if (v15)
      {
        sub_10000B4F8();
        v132 = swift_getObjectType();
        v133 = v12;
        sub_100024828();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_100030344();
        CallsPresentation.compact.setter();
        v27 = swift_getObjectType();
        sub_10000A57C(v27, v140);
        *(v28 - 256) = v6;
        CallsPresentation.full.setter();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_100008CC4();
        v29 = &off_1003B0000;
        goto LABEL_83;
      }

      v30 = v6;
      sub_1000073DC();
LABEL_18:
      v29 = &off_1003B0000;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      if (!v11)
      {
        if (!v14)
        {
          goto LABEL_42;
        }

LABEL_77:
        v68 = swift_getObjectType();
        sub_10000A57C(v68, v139);
        *(v69 - 256) = v30;
        goto LABEL_78;
      }

      goto LABEL_23;
    }

    v39 = v126;
    if (v126)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1000073DC();
      if (v9)
      {
        goto LABEL_32;
      }

LABEL_45:
      if (v123)
      {
        swift_unknownObjectRetain();
        v47 = v14;
        v29 = &off_1003B0000;
        v8 = v122;
        if (!v14)
        {
          sub_10000C6E4();
          goto LABEL_66;
        }
      }

      else
      {
        swift_unknownObjectRetain();
        v47 = v39;
        v29 = &off_1003B0000;
      }

      v132 = swift_getObjectType();
      v133 = v8;
      v130[0] = v47;
LABEL_66:
      swift_unknownObjectRetain();
      sub_100030344();
      CallsPresentation.compact.setter();
      if (v123)
      {
        swift_unknownObjectRetain();
        v64 = v39;
        v65 = v121;
      }

      else
      {
        swift_unknownObjectRetain();
        v64 = v14;
        v65 = v124;
        if (!v14)
        {
          sub_10000C6E4();
          goto LABEL_70;
        }
      }

      v132 = swift_getObjectType();
      v133 = v65;
      v130[0] = v64;
LABEL_70:
      sub_100030344();
      CallsPresentation.full.setter();
      goto LABEL_71;
    }

    if (!v9)
    {
      v30 = v6;
      swift_unknownObjectRetain();
      goto LABEL_76;
    }

    swift_getObjectType();
    sub_1000055E8();
    swift_unknownObjectRetain_n();
    v30 = v6;
    swift_unknownObjectRetain();
    if (dispatch thunk of Call.isVideo.getter())
    {
      swift_unknownObjectRelease();
LABEL_76:
      sub_100008CC4();
      sub_10000B4F8();
      goto LABEL_77;
    }

    v110 = swift_getObjectType();
    sub_10000A57C(v110, v139);
    *(v111 - 256) = v6;
    swift_unknownObjectRetain();
    sub_100030344();
    v112 = CallsPresentation.compact.setter();
    sub_100016FF4(v112, v113);
    CallsPresentation.full.setter();
    sub_1000055E8();
    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
    sub_10000B4F8();
LABEL_109:
    sub_100008CC4();
    goto LABEL_82;
  }

  v14 = 0;
  if (v134)
  {
    if (v130[0])
    {
      v24 = v135;
      v25 = v136;
      sub_1000142C0();
      swift_unknownObjectRetain();
      sub_1000303D8();
      swift_unknownObjectRetain();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v11 = v128;
      if ((dispatch thunk of Call.isVideo.getter() & 1) == 0)
      {
        v29 = &off_1003B0000;
        v41 = OBJC_IVAR___ICSCallManagerBridge_foregroundRingingCall;
        sub_100008CC4();
        sub_10000FF6C(v10 + v41, v140);
        if (*(v10 + v41) != 1)
        {
          sub_10000C6E4();
          sub_100030344();
          CallsPresentation.compact.setter();
          v132 = swift_getObjectType();
          v133 = v25;
          sub_100245BCC(v132, v58);
          CallsPresentation.full.setter();
          sub_1000142C0();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
LABEL_72:
          swift_unknownObjectRelease();
          goto LABEL_83;
        }

        v132 = swift_getObjectType();
        v133 = v24;
        sub_100245BCC(v132, v42);
        sub_100030344();
        CallsPresentation.compact.setter();
        v43 = swift_getObjectType();
        sub_10000A57C(v43, v140 + 8);
        sub_10003041C(v44);
        sub_1000142C0();
LABEL_71:
        swift_unknownObjectRelease();
        goto LABEL_72;
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      dispatch thunk of Call.isVideo.getter();
      sub_100008CC4();
      if ((v26 & 1) == 0)
      {
        v132 = swift_getObjectType();
        v133 = v8;
        sub_100245BCC(v132, v55);
        sub_100030344();
        CallsPresentation.compact.setter();
        v56 = swift_getObjectType();
        sub_10000A57C(v56, v140 + 8);
        sub_10003041C(v57);
        sub_1000142C0();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
        goto LABEL_82;
      }

      sub_1000142C0();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_31:
      swift_unknownObjectRelease();
      sub_10000B4F8();
LABEL_32:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_10000C6E4();
      sub_100030344();
      CallsPresentation.compact.setter();
      sub_10000C6E4();
      CallsPresentation.full.setter();
LABEL_82:
      v29 = &off_1003B0000;
      goto LABEL_83;
    }

    if (v137)
    {
      swift_getObjectType();
      sub_1000303D8();
      swift_unknownObjectRetain();
      sub_1000055E8();
      swift_unknownObjectRetain_n();
      dispatch thunk of Call.isVideo.getter();
      sub_100008CC4();
      if ((v40 & 1) == 0)
      {
        v132 = swift_getObjectType();
        v133 = v8;
        sub_100245BCC(v132, v59);
        sub_100030344();
        v60 = CallsPresentation.compact.setter();
        sub_100016FF4(v60, v61);
        CallsPresentation.full.setter();
        sub_1000055E8();
        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
        sub_10000B4F8();
        goto LABEL_82;
      }

      goto LABEL_31;
    }

    goto LABEL_43;
  }

  sub_10000B4F8();
  if (v11)
  {
    v33 = v32;
    sub_100008AC8();
    v10 = swift_getObjectType();
    sub_1000142C0();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    dispatch thunk of Call.isVideo.getter();
    sub_100008CC4();
    v29 = &off_1003B0000;
    if (v34)
    {
LABEL_23:
      v35 = v29[100];
      sub_10000FF6C(v35 + v10, v140);
      if (*(&v35->Flags + v10) == 1)
      {
        sub_1000303D8();
        v36 = v14;
        if (v14)
        {
          v37 = swift_getObjectType();
          v38 = v122;
        }

        else
        {
          v14 = 0;
          sub_10000C1FC();
        }

        v130[0] = v36;
        v132 = v37;
        v133 = v38;
        swift_unknownObjectRetain();
        sub_100030344();
        CallsPresentation.compact.setter();
        v62 = swift_getObjectType();
        sub_10000A57C(v62, v140 + 8);
        sub_10003041C(v63);
        swift_unknownObjectRelease();
        goto LABEL_72;
      }

      sub_1000303D8();
      if (v14)
      {
        swift_getObjectType();
        if ((dispatch thunk of Call.isVideo.getter() & 1) == 0)
        {
          sub_10000C6E4();
          sub_100030344();
          CallsPresentation.compact.setter();
          v45 = swift_getObjectType();
          sub_10000A57C(v45, v140);
          *(v46 - 256) = v14;
          swift_unknownObjectRetain();
          CallsPresentation.full.setter();
        }

        swift_unknownObjectRelease();
      }

      goto LABEL_71;
    }

    swift_getObjectType();
    v48 = dispatch thunk of CallCoordinator.prioritizedCall.getter();
    if (v48)
    {
      v49 = v48;
      swift_getObjectType();
      v130[0] = v49;
      v10 = dispatch thunk of FullPresentable.callUUID.getter();
      v51 = v50;
      v52 = swift_getObjectType();
      *&v140[0] = v11;
      v120 = v52;
      if (v10 == dispatch thunk of FullPresentable.callUUID.getter() && v51 == v53)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v10 & 1) == 0 && (dispatch thunk of Call.isVideo.getter())
        {
          sub_10000C6E4();
          sub_100030344();
          CallsPresentation.compact.setter();
          v132 = v120;
          v133 = v125;
          sub_100024828();
          swift_unknownObjectRetain();
          CallsPresentation.full.setter();
          sub_1000142C0();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1000303D8();
          goto LABEL_109;
        }

        swift_unknownObjectRelease();
      }

      sub_100008CC4();
    }

    v29 = &off_1003B0000;
    v114 = OBJC_IVAR___ICSCallManagerBridge_foregroundRingingCall;
    sub_10000FF6C(v10 + OBJC_IVAR___ICSCallManagerBridge_foregroundRingingCall, v140);
    if (*(v10 + v114))
    {
      goto LABEL_114;
    }

    if ((v123 & 1) == 0)
    {
      if (!dispatch thunk of CallCoordinator.activeVideoCall.getter())
      {
LABEL_114:
        sub_10000C6E4();
        sub_100030344();
        CallsPresentation.compact.setter();
        v115 = swift_getObjectType();
        sub_10000A57C(v115, v140 + 8);
        sub_10003041C(v116);
LABEL_119:
        swift_unknownObjectRelease();
        sub_1000303D8();
        goto LABEL_83;
      }

      swift_unknownObjectRelease();
    }

    v132 = swift_getObjectType();
    v133 = v33;
    sub_100024828();
    swift_unknownObjectRetain();
    sub_100030344();
    CallsPresentation.compact.setter();
    sub_10000C6E4();
    CallsPresentation.full.setter();
    swift_unknownObjectRelease();
    goto LABEL_119;
  }

  if (v127)
  {
    v124 = v31;
    swift_unknownObjectRetain();
    v30 = 0;
    sub_1000073DC();
LABEL_42:
    sub_10000C6E4();
LABEL_78:
    swift_unknownObjectRetain();
    sub_100030344();
    CallsPresentation.compact.setter();
    sub_1000303D8();
    if (v14)
    {
      v70 = swift_getObjectType();
      v71 = v124;
    }

    else
    {
      v30 = 0;
      sub_10000C1FC();
    }

    v130[0] = v30;
    v132 = v70;
    v133 = v71;
    sub_100030344();
    CallsPresentation.full.setter();
    swift_unknownObjectRelease();
    goto LABEL_82;
  }

LABEL_43:
  v121 = v7;
  sub_100008AC8();
  swift_getObjectType();
  v11 = v126;
  swift_unknownObjectRetain();
  if (dispatch thunk of CallCoordinator.activeVideoCall.getter())
  {
    swift_unknownObjectRelease();
    v39 = v126;
    sub_1000073DC();
    if (!v126)
    {
      v30 = 0;
      goto LABEL_18;
    }

    goto LABEL_45;
  }

  sub_1000073DC();
  if (v126)
  {
    v66 = swift_getObjectType();
    v67 = v126;
  }

  else
  {
    v8 = 0;
    sub_10000C1FC();
  }

  v29 = &off_1003B0000;
  v130[0] = v67;
  v132 = v66;
  v133 = v8;
  swift_unknownObjectRetain();
  sub_100030344();
  CallsPresentation.compact.setter();
  if (v126)
  {
    v117 = swift_getObjectType();
    v118 = v126;
    v119 = v121;
  }

  else
  {
    v118 = 0;
    v117 = 0;
    v119 = 0;
    v131 = 0;
    v130[1] = 0;
  }

  v130[0] = v118;
  v132 = v117;
  v133 = v119;
  sub_100030344();
  CallsPresentation.full.setter();
LABEL_83:
  v72 = v29[100];
  swift_beginAccess();
  if (*(&v72->Flags + v10) == 1)
  {
    if (!v11)
    {
LABEL_98:
      *(&v72->Flags + v10) = 0;
      sub_100034CF4();
      goto LABEL_99;
    }

    sub_100019DD4();
    CallsPresentation.full.getter();
    v73 = v132;
    if (v132)
    {
      v74 = sub_100008878(v130, v132);
      v10 = v14;
      v75 = *(v73 - 8);
      __chkstk_darwin(v74);
      sub_100005BD0();
      (*(v75 + 16))(v77 - v76);
      sub_100008360(v130, &unk_1003B0510, &unk_100301EC0);
      v78 = dispatch thunk of FullPresentable.callUUID.getter();
      v80 = v79;
      v81 = sub_1000089C8();
      v82(v81);
      sub_10000B4F8();
    }

    else
    {
      sub_100008360(v130, &unk_1003B0510, &unk_100301EC0);
      v78 = 0;
      v80 = 0;
    }

    swift_getObjectType();
    sub_100024828();
    v83 = dispatch thunk of FullPresentable.callUUID.getter();
    if (v80)
    {
      if (v78 == v83 && v80 == v84)
      {

        sub_100008CC4();
      }

      else
      {
        v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_100008CC4();
        if ((v86 & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      sub_100019DD4();
      CallsPresentation.compact.getter();
      v87 = v132;
      sub_100008360(v130, &qword_1003AB3D0, &qword_1002FBD10);
      if (v87)
      {
        goto LABEL_98;
      }
    }

    else
    {
    }
  }

LABEL_99:
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v88 = type metadata accessor for Logger();
  sub_100008A14(v88, &unk_1003B8820);
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = sub_100005384();
    v92 = sub_100005D4C();
    v129[0] = v92;
    *v91 = 136315138;
    sub_100245C08();
    sub_100019DD4();
    CallsPresentation.full.getter();
    swift_endAccess();
    v93 = sub_100030434(v130);
    v95 = v94;
    sub_100008360(v130, &unk_1003B0510, &unk_100301EC0);
    v96 = sub_100008ADC(v93, v95, v129);

    *(v91 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v89, v90, "CallManagerBridge proposedPresentation - full: %s", v91, 0xCu);
    sub_100005B2C(v92);
    sub_1000303D8();
    sub_100005BB8(v97);
    sub_100005BB8(v91);
  }

  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = sub_100005384();
    v101 = sub_100005D4C();
    v129[0] = v101;
    *v100 = 136315138;
    sub_100245C08();
    sub_100019DD4();
    CallsPresentation.compact.getter();
    swift_endAccess();
    v102 = sub_1000304F8(v130);
    v104 = v103;
    sub_100008360(v130, &qword_1003AB3D0, &qword_1002FBD10);
    v105 = sub_100008ADC(v102, v104, v129);

    *(v100 + 4) = v105;
    _os_log_impl(&_mh_execute_header, v98, v99, "CallManagerBridge proposedPresentation - compact: %s", v100, 0xCu);
    sub_100005B2C(v101);
    sub_100005BB8(v101);
    sub_100005368();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000142C0();
  swift_unknownObjectRelease();
  sub_10000FF6C(v0, v130);
  v106 = sub_100245BF4();
  v107(v106);
  v108 = sub_100006628();
  v109(v108);
LABEL_106:
  sub_100007B28();
}

__n128 sub_10002FA68@<Q0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getObjectType();
  v5 = dispatch thunk of CallCoordinator.incomingAudioCall.getter();
  v50 = v6;
  v51 = v7;
  v52 = v8;
  v9 = 0;
  v49 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v10 = *(a1 + 16);
  v11 = 0uLL;
  v47 = 0u;
  v48 = 0u;
  v43 = 0u;
  v12 = a1 + 32;
LABEL_2:
  v42 = v11;
  while (1)
  {
    v13 = v9;
LABEL_4:
    if (v10 == v13)
    {
      break;
    }

    if (v13 >= v10)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      JUMPOUT(0x10002FE9CLL);
    }

    v9 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_31;
    }

    v14 = (v12 + 32 * v13);
    v53 = v14[1];
    v54 = *v14;
    v15 = *v14;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = *(&v54 + 1);
    v17 = dispatch thunk of Call.status.getter() - 1;
    v18 = v53;
    switch(v17)
    {
      case 0:
        swift_unknownObjectRelease();
        v45 = v53;
        v46 = *(&v54 + 1);
        v49 = v15;
        v44 = *(&v53 + 1);
        continue;
      case 1:
        swift_unknownObjectRelease();
        v47 = v54;
        v11 = v53;
        goto LABEL_2;
      case 2:
        swift_unknownObjectRelease();
        v48 = v54;
        v43 = v53;
        continue;
      case 3:
        if (!v5)
        {
          goto LABEL_19;
        }

        v19 = v10;
        swift_getObjectType();
        v20 = v5;
        v21 = dispatch thunk of FullPresentable.callUUID.getter();
        v23 = v22;
        if (v21 == dispatch thunk of FullPresentable.callUUID.getter() && v23 == v24)
        {
          swift_unknownObjectRelease();

          v10 = v19;
          v9 = v13 + 1;
          v18 = v53;
          v16 = *(&v54 + 1);
        }

        else
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v5 = v20;
          v10 = v19;
          v9 = v13 + 1;
          v16 = *(&v54 + 1);
          if ((v26 & 1) == 0)
          {
LABEL_14:
            swift_unknownObjectRelease();
            ++v13;
            goto LABEL_4;
          }

          swift_unknownObjectRelease();
          v18 = v53;
        }

LABEL_19:
        v50 = v16;
        v51 = v18;
        v5 = v15;
        v52 = *(&v53 + 1);
        break;
      default:
        goto LABEL_14;
    }
  }

  if (dispatch thunk of CallCoordinator.prioritizedCall.getter())
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    v28 = v49;
    if (v27 && (v29 = v27, ([v27 isVideo] & 1) == 0) && (v30 = objc_msgSend(objc_opt_self(), "sharedInstance"), v31 = TUCall.associatedCallGroup(in:)(), v30, v31) && (v32 = objc_msgSend(v31, "calls"), v31, sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr), v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v32, v34 = sub_10000CF28(v33), , v34 > 1))
    {
      sub_100006FB8();
      v46 = sub_100030170(v35, &qword_1003ADBE0, TUCall_ptr);
      sub_100009778();
      v45 = sub_100030170(v36, v37, TUCall_ptr);
      sub_100025C88();
      v44 = sub_100030170(v38, v39, TUCall_ptr);
      swift_unknownObjectRelease();
      v28 = v29;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v28 = v49;
  }

  *a4 = v5;
  *(a4 + 8) = v50;
  *(a4 + 16) = v51;
  *(a4 + 24) = v52;
  *(a4 + 32) = v28;
  *(a4 + 40) = v46;
  *(a4 + 48) = v45;
  *(a4 + 56) = v44;
  *(a4 + 64) = v47;
  *(a4 + 80) = v42;
  result = v43;
  *(a4 + 96) = v48;
  *(a4 + 112) = v43;
  return result;
}
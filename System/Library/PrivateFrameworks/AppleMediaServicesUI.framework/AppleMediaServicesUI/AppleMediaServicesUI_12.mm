uint64_t sub_100117C68()
{
  sub_100004768();
  v1 = *(v0 + 344);
  v2 = sub_10011A444(*(v0 + 240));

  sub_10000B214();

  return v3(v2);
}

uint64_t sub_100117CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017F0C();
  sub_100003D48();

  v12[31] = v12[42];
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  if (swift_dynamicCast())
  {
    sub_100005F98();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1001E5F70;
    v12[29] = v12 + 31;
    v12[26] = v13;
    v15 = v13;
    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v18 = v12[38];
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v12 + 26);
    sub_100018204();
    LogInterpolation.init(stringLiteral:)();
    v19 = static os_log_type_t.debug.getter();
    sub_1000036B0(v19, v14);

    v20 = sub_100118480();
    v21 = sub_100007544(&type metadata for JSFamilyError, v20);
    sub_100015BBC(v21, v22, v23);
  }

  else
  {
    v18 = v12[38];
    swift_willThrow();
  }

  sub_100002D8C();
  sub_10000481C();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_100117E7C()
{
  sub_1000061B4();
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  swift_willThrow();

  sub_100002D8C();

  return v3();
}

uint64_t sub_100117EEC(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_100117F0C, 0, 0);
}

uint64_t sub_100117F0C()
{
  sub_1000061B4();
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100118024;
  v2 = swift_continuation_init();
  v0[17] = sub_10007B9A4(&qword_10026DC10, &qword_1001ED168);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001181B0;
  v0[13] = &unk_10024C928;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100118024()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100118120()
{
  **(v0 + 152) = *(v0 + 144);
  sub_100002D8C();
  return v1();
}

uint64_t sub_10011814C()
{
  sub_1000061B4();
  swift_willThrow();
  sub_100002D8C();

  return v0();
}

id sub_1001181DC(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccount:a1 bag:a2];

  swift_unknownObjectRelease();
  return v3;
}

uint64_t *sub_10011823C(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_100003CA8((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

void sub_10011832C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd8JSFamily_runtime);
}

id sub_10011836C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSFamily();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001183EC()
{
  sub_100004768();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_100004ABC(v4);
  *v5 = v6;
  v5[1] = sub_100009CC8;

  return sub_100117EEC(v2, v3);
}

unint64_t sub_100118480()
{
  result = qword_10026DBD8;
  if (!qword_10026DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DBD8);
  }

  return result;
}

id sub_1001184D4()
{
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithPropertyName:v1 bundleID:v2];

  return v3;
}

uint64_t sub_10011855C()
{
  sub_10000A1AC();
  sub_100003D28();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  sub_100002D20();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {
    sub_1000060D0();
    sub_10000A734();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {

    sub_100002D8C();
    sub_10000A734();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_1001186EC()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

uint64_t sub_100118750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_100118818;

  return sub_100113E20(a2, a3, a4, a5, a6);
}

uint64_t sub_100118818()
{
  sub_100003D28();
  sub_10000AF94();
  sub_1000056A8();
  v5 = v4;
  sub_100004EEC();
  *v6 = v5;
  v7 = *v3;
  sub_100002D20();
  *v8 = v7;

  if (!v1)
  {
    v9 = *(v5 + 16);
    *v9 = v2;
    v9[1] = v0;
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100118918(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 32) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 40) = v5;
  *v5 = v4;
  v5[1] = sub_100118A0C;

  return v7(v4 + 16);
}

uint64_t sub_100118A0C()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;

  if (!v0)
  {
    v8 = v3[3];
    v7 = v3[4];
    *v7 = v3[2];
    v7[1] = v8;
  }

  v9 = *(v5 + 8);

  return v9();
}

uint64_t sub_100118B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_100119A60;

  return sub_100114A80(a2, a3, a4, a5);
}

uint64_t sub_100118BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_100118C84;

  return sub_100114278(a2, a3, a4, a5, a6);
}

uint64_t sub_100118C84()
{
  sub_1000061B4();
  v3 = v2;
  sub_1000056A8();
  v5 = v4;
  sub_100004EEC();
  *v6 = v5;
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_100118D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  sub_10000AF94();
  v10 = swift_task_alloc();
  v11 = sub_100004ABC(v10);
  *v11 = v12;
  sub_10000AC04(v11);
  sub_10000A598();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100118E14(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_100118F08;

  return v7(v4 + 16);
}

uint64_t sub_100118F08()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;

  if (!v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_100118FFC()
{
  sub_10000A1AC();
  sub_100003D28();
  sub_10000AF84();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  sub_100005360(v1);
  sub_10000A734();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10011908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_100119A64;

  return sub_100114A80(a2, a3, a4, a5);
}

uint64_t sub_100119144()
{
  sub_10000A1AC();
  sub_100003D28();
  sub_10000AF84();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  sub_100005360(v1);
  sub_10000A734();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1001191D4()
{
  result = qword_10026DBF8;
  if (!qword_10026DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DBF8);
  }

  return result;
}

uint64_t sub_100119228(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001192BC()
{
  sub_10000AF94();
  v3 = type metadata accessor for JSCallable();
  sub_100002CFC(v3);
  sub_10000326C();
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v9 = *(v1 + v8);

  return sub_100116864(v2, v0, v5, v6, v7, v1 + v4, v9);
}

uint64_t sub_10011935C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100119374()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  sub_10000326C();
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = *(v0 + v7);
  v9 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100116E44(v3, v4, v5, v6, v0 + v2, v8, v9);
}

uint64_t sub_100119424()
{
  sub_100003D48();
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_100009BE8;
  sub_10000481C();

  return sub_1001155C8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100119584(void (*a1)(void))
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v4);
  a1(*(v1 + v5));

  return _swift_deallocObject(v1);
}

uint64_t sub_100119634(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = type metadata accessor for JSCallable();
  sub_100002CFC(v2);
  sub_10000326C();
  v5 = *(v1 + v4);

  return a1(v1 + v3, v5);
}

_BYTE *storeEnumTagSinglePayload for JSFamilyError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1001197A4()
{
  result = qword_10026DC18;
  if (!qword_10026DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DC18);
  }

  return result;
}

uint64_t sub_1001197F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  sub_10000AF94();
  v10 = swift_task_alloc();
  v11 = sub_100004ABC(v10);
  *v11 = v12;
  sub_10000AC04(v11);
  sub_10000A598();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100119890()
{
  sub_10000A1AC();
  sub_100003D28();
  sub_10000AF84();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  sub_100005360(v1);
  sub_10000A734();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100119920()
{
  sub_10000A1AC();
  sub_100003D28();
  sub_10000AF84();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  sub_100005360(v1);
  sub_10000A734();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1001199B0()
{
  result = qword_10026DC28;
  if (!qword_10026DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DC28);
  }

  return result;
}

unint64_t sub_100119A04()
{
  result = qword_10026DC30;
  if (!qword_10026DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DC30);
  }

  return result;
}

id sub_100119A6C(void *a1)
{
  v423 = a1;
  v1 = [a1 members];
  sub_100002BC0(0, &qword_10026DC38, FAFamilyMember_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v389 = sub_100049574(v2);
  if (!v389)
  {

    v275 = 0;
    v3 = _swiftEmptyArrayStorage;
LABEL_62:
    v276 = [v423 ageCategory];
    v460 = &type metadata for Int;
    *&v459 = v276;
    sub_100009E74(v276, v277, v278, v279, v280, v281, v282, v283, v321, v338, v355, v372, v389, v406, v423, v440, v457, v458, *(&v458 + 1), v459);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000075D4(&v457);
    v460 = sub_10007B9A4(&qword_10026D6D8, &qword_1001ECB70);
    *&v459 = v3;
    sub_100009E74(v460, v284, v285, v286, v287, v288, v289, v290, v336, v353, v370, v387, v404, v421, v438, _swiftEmptyDictionarySingleton, v457, v458, *(&v458 + 1), v459);
    swift_isUniquelyReferenced_nonNull_native();
    v455 = _swiftEmptyDictionarySingleton;
    sub_100011A7C();
    sub_10000DFC4();
    if (v275)
    {
      v291 = v275;
      v292 = [v291 dsid];
      if (v292)
      {
        v293 = v292;
        v294 = [v292 stringValue];

        v295 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v297 = v296;

        v460 = &type metadata for String;
        *&v459 = v295;
        *(&v459 + 1) = v297;
        sub_100009E74(v298, v299, v300, v301, v302, v303, v304, v305, v337, v354, v371, v388, v405, v422, v439, _swiftEmptyDictionarySingleton, v457, v458, *(&v458 + 1), v459);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100003290();
        sub_10001CC04();
        sub_10000DFC4();
      }

      else
      {
        sub_10001CC04();
        v306 = sub_100012A94();
        if (v307)
        {
          v308 = v306;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v455 = _swiftEmptyDictionarySingleton;
          v310 = _swiftEmptyDictionarySingleton[3];
          sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v310);

          sub_100002C4C((_swiftEmptyDictionarySingleton[7] + 32 * v308), &v457);
          _NativeDictionary._delete(at:)();
        }

        else
        {
          v457 = 0u;
          v458 = 0u;
        }

        sub_100002C5C(&v457);
      }
    }

    v311 = v439;
    v312 = [v439 sharedPaymentEnabled];
    v460 = &type metadata for Bool;
    LOBYTE(v459) = v312;
    sub_100009E74(v312, v313, v314, v315, v316, v317, v318, v319, v337, v354, v371, v388, v405, v422, v439, v455, v457, v458, *(&v458 + 1), v459);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100003290();
    sub_100003E20(v320);

    return v456;
  }

  v406 = 0;
  v355 = "@NSDictionary16";
  v372 = v2 & 0xC000000000000001;
  v338 = "currentSignedInUser";
  v3 = _swiftEmptyArrayStorage;
  v4 = 4;
  while (1)
  {
    sub_1000F1168();
    result = v372 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v2 + 8 * v4);
    v6 = result;
    v7 = v4 - 3;
    if (__OFADD__(v4 - 4, 1))
    {
      break;
    }

    if ([result isOrganizer])
    {

      v8 = v6;
      v406 = v6;
    }

    result = [v423 me];
    if (!result)
    {
      goto LABEL_71;
    }

    v9 = result;
    v10 = [result dsid];

    v11 = [v6 dsid];
    v12 = v11;
    if (v10)
    {
      if (!v11)
      {
        v12 = v10;
LABEL_17:

LABEL_18:
        v22 = 0;
        v21 = -1;
        goto LABEL_19;
      }

      sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
      v13 = static NSObject.== infix(_:_:)();

      if ((v13 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      goto LABEL_17;
    }

    v21 = [v423 ageCategory];
    v22 = 1;
LABEL_19:
    v460 = &type metadata for Int;
    *&v459 = v21;
    sub_100009E74(v21, v14, v15, v16, v17, v18, v19, v20, v321, v338, v355, v372, v389, v406, v423, v440, v457, v458, *(&v458 + 1), v459);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100005388();
    sub_1000075D4(v23);
    v24 = [v6 hasAskToBuyEnabled];
    v460 = &type metadata for Bool;
    LOBYTE(v459) = v24;
    sub_100009E74(v24, v25, v26, v27, v28, v29, v30, v31, v322, v339, v356, v373, v390, v407, v424, v441, v457, v458, *(&v458 + 1), v459);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100005388();
    v33 = sub_100005CD8(v32);
    v460 = &type metadata for Bool;
    LOBYTE(v459) = v22;
    sub_100009E74(v33, v34, v35, v36, v37, v38, v39, v40, v323, v340, v357, v374, v391, v408, v425, v442, v457, v458, *(&v458 + 1), v459);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100003290();
    sub_100003E20(v41);
    v42 = v443;
    v43 = sub_100026484(v6, &selRef_firstName);
    if (v44)
    {
      v460 = &type metadata for String;
      *&v459 = v43;
      *(&v459 + 1) = v44;
      sub_100009E74(v43, v44, v45, v46, v47, v48, v49, v50, v324, v341, v358, v375, v392, v409, v426, v443, v457, v458, *(&v458 + 1), v459);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100005388();
      sub_10000B398(v51);
      v42 = v443;
    }

    else
    {
      sub_10000B220();
      if (v52)
      {
        v53 = sub_10003AEE8();
        *&v457 = v443;
        v54 = *(v443 + 24);
        sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        v42 = &v457;
        v55 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v53, v54);
        v63 = sub_100007AE8(v55, v56, v57, v58, v59, v60, v61, v62, v324, v341, v358, v375, v392, v409, v426, v443, v457);
        sub_100004CE8(v63, v64, v65, v66, v67, v68, v69, v70, v325, v342, v359, v376, v393, v410, v427, v444, v457, *(&v457 + 1), v458, *(&v458 + 1), v459);
        sub_10000B970();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10001CD90();
      }

      sub_100002C5C(&v459);
    }

    v71 = [v6 dsid];
    if (v71)
    {
      v72 = v71;
      v73 = [v71 stringValue];

      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v460 = &type metadata for String;
      *&v459 = v74;
      *(&v459 + 1) = v76;
      sub_100009E74(v77, v78, v79, v80, v81, v82, v83, v84, v324, v341, v358, v375, v392, v409, v426, v443, v457, v458, *(&v458 + 1), v459);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100005388();
      sub_100004924();
      sub_100005FB0(v85, v86);
      v42 = v443;
    }

    else
    {
      v87 = sub_10000AFA0();
      sub_100007240(v87);
      if (v88)
      {
        sub_10003AEE8();
        sub_100023DE8();
        v89 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        v97 = sub_100019C84(v89, v90, v91, v92, v93, v94, v95, v96, v324, v341, v358, v375, v392, v409, v426, v443, v457);
        v105 = sub_100007AE8(v97, v98, v99, v100, v101, v102, v103, v104, v326, v343, v360, v377, v394, v411, v428, v445, v457);
        sub_100004CE8(v105, v106, v107, v108, v109, v110, v111, v112, v327, v344, v361, v378, v395, v412, v429, v446, v457, *(&v457 + 1), v458, *(&v458 + 1), v459);
        sub_10000B970();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10001CD90();
      }

      sub_100002C5C(&v459);
    }

    v113 = sub_100026484(v6, &selRef_appleID);
    if (v114)
    {
      v460 = &type metadata for String;
      *&v459 = v113;
      *(&v459 + 1) = v114;
      sub_100009E74(v113, v114, v115, v116, v117, v118, v119, v120, v324, v341, v358, v375, v392, v409, v426, v443, v457, v458, *(&v458 + 1), v459);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100005388();
      sub_100004924();
      sub_1000064D0(v121, v122);
      v42 = v443;
    }

    else
    {
      v123 = sub_10000AFA0();
      sub_100005958(v123);
      if (v124)
      {
        sub_10003AEE8();
        sub_100023DE8();
        v125 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        v133 = sub_100019C84(v125, v126, v127, v128, v129, v130, v131, v132, v324, v341, v358, v375, v392, v409, v426, v443, v457);
        v141 = sub_100007AE8(v133, v134, v135, v136, v137, v138, v139, v140, v328, v345, v362, v379, v396, v413, v430, v447, v457);
        sub_100004CE8(v141, v142, v143, v144, v145, v146, v147, v148, v329, v346, v363, v380, v397, v414, v431, v448, v457, *(&v457 + 1), v458, *(&v458 + 1), v459);
        sub_10000B970();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10001CD90();
      }

      sub_100002C5C(&v459);
    }

    v149 = [v6 iTunesAccountDSID];
    if (v149)
    {
      v150 = v149;
      v151 = [v149 stringValue];

      v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v154 = v153;

      v460 = &type metadata for String;
      *&v459 = v152;
      *(&v459 + 1) = v154;
      sub_100009E74(v155, v156, v157, v158, v159, v160, v161, v162, v324, v341, v358, v375, v392, v409, v426, v443, v457, v458, *(&v458 + 1), v459);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100005388();
      sub_10000A9F8();
      sub_100005FB0(v163, v164);
      v42 = v443;
    }

    else
    {
      v165 = sub_10000C41C();
      sub_100007240(v165);
      if (v166)
      {
        sub_10003AEE8();
        sub_100023DE8();
        v167 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        v175 = sub_100019C84(v167, v168, v169, v170, v171, v172, v173, v174, v324, v341, v358, v375, v392, v409, v426, v443, v457);
        v183 = sub_100007AE8(v175, v176, v177, v178, v179, v180, v181, v182, v330, v347, v364, v381, v398, v415, v432, v449, v457);
        sub_100004CE8(v183, v184, v185, v186, v187, v188, v189, v190, v331, v348, v365, v382, v399, v416, v433, v450, v457, *(&v457 + 1), v458, *(&v458 + 1), v459);
        sub_10000B970();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10001CD90();
      }

      sub_100002C5C(&v459);
    }

    v191 = sub_100026484(v6, &selRef_iTunesAccountUsername);
    if (v192)
    {
      v460 = &type metadata for String;
      *&v459 = v191;
      *(&v459 + 1) = v192;
      sub_100009E74(v191, v192, v193, v194, v195, v196, v197, v198, v324, v341, v358, v375, v392, v409, v426, v443, v457, v458, *(&v458 + 1), v459);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100005388();
      sub_10000A9F8();
      sub_1000064D0(v199, v200);
      v42 = v443;
    }

    else
    {
      v201 = sub_10000C41C();
      sub_100005958(v201);
      if (v202)
      {
        sub_10003AEE8();
        sub_100023DE8();
        v203 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        v211 = sub_100019C84(v203, v204, v205, v206, v207, v208, v209, v210, v324, v341, v358, v375, v392, v409, v426, v443, v457);
        v219 = sub_100007AE8(v211, v212, v213, v214, v215, v216, v217, v218, v332, v349, v366, v383, v400, v417, v434, v451, v457);
        sub_100004CE8(v219, v220, v221, v222, v223, v224, v225, v226, v333, v350, v367, v384, v401, v418, v435, v452, v457, *(&v457 + 1), v458, *(&v458 + 1), v459);
        sub_10000B970();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10001CD90();
      }

      sub_100002C5C(&v459);
    }

    v227 = sub_100026484(v6, &selRef_lastName);
    if (v228)
    {
      v460 = &type metadata for String;
      *&v459 = v227;
      *(&v459 + 1) = v228;
      sub_100009E74(v227, v228, v229, v230, v231, v232, v233, v234, v324, v341, v358, v375, v392, v409, v426, v443, v457, v458, *(&v458 + 1), v459);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100005388();
      sub_100018218();
      v42 = v443;
    }

    else
    {
      sub_10000A89C();
      if (v235)
      {
        sub_10003AEE8();
        sub_100023DE8();
        v236 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
        v244 = sub_100019C84(v236, v237, v238, v239, v240, v241, v242, v243, v324, v341, v358, v375, v392, v409, v426, v443, v457);
        v252 = sub_100007AE8(v244, v245, v246, v247, v248, v249, v250, v251, v334, v351, v368, v385, v402, v419, v436, v453, v457);
        sub_100004CE8(v252, v253, v254, v255, v256, v257, v258, v259, v335, v352, v369, v386, v403, v420, v437, v454, v457, *(&v457 + 1), v458, *(&v458 + 1), v459);
        sub_10000B970();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10001CD90();
      }

      sub_100002C5C(&v459);
    }

    v260 = [v6 purchaseSharingEnabled];
    v460 = &type metadata for Bool;
    LOBYTE(v459) = v260;
    sub_100009E74(v260, v261, v262, v263, v264, v265, v266, v267, v324, v341, v358, v375, v392, v409, v426, v443, v457, v458, *(&v458 + 1), v459);
    swift_isUniquelyReferenced_nonNull_native();
    v440 = v42;
    sub_10001CC04();
    sub_10000DFC4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000D6000(0, v3[2] + 1, 1, v3);
      v3 = v270;
    }

    v269 = v3[2];
    v268 = v3[3];
    if (v269 >= v268 >> 1)
    {
      v271 = sub_100017F7C(v268);
      sub_1000D6000(v271, v272, v273, v3);
      v3 = v274;
    }

    v3[2] = v269 + 1;
    v3[v269 + 4] = v42;
    ++v4;
    if (v7 == v389)
    {

      v275 = v406;
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_10011A444(void *a1)
{
  v2 = [a1 familyMembers];
  sub_100002BC0(0, &qword_10026DC40, AMSFamilyMember_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v3;
  result = sub_100049574(v3);
  v298 = a1;
  if (!result)
  {

    v8 = _swiftEmptyArrayStorage;
LABEL_50:
    v403 = sub_10007B9A4(&qword_10026D6D8, &qword_1001ECB70);
    *&v401 = v8;
    sub_100006810(v403, v269, v270, v271, v272, v273, v274, v275, v298, v315, v332, v349, v366, v383, v398, v399, v400, v401);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100011A7C();
    sub_10000DFC4();
    v276 = v313;
    v277 = [v313 headOfHouseholdICloudDSID];
    v278 = [v277 stringValue];

    v279 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v281 = v280;

    v403 = &type metadata for String;
    *&v401 = v279;
    *(&v401 + 1) = v281;
    sub_100006810(v282, v283, v284, v285, v286, v287, v288, v289, v313, v330, v347, v364, v381, _swiftEmptyDictionarySingleton, v398, v399, v400, v401);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10001CC04();
    sub_10000DFC4();
    v290 = [v276 isHeadOfHouseholdSharingPayment];
    sub_10000AC30(v290, v291, v292, v293, v294, v295, v296, v297, v314, v331, v348, v365, v382, _swiftEmptyDictionarySingleton, v398, v399, v400, v401, v402, v403);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100003E20(&v398);

    return _swiftEmptyDictionarySingleton;
  }

  v6 = result;
  if (result >= 1)
  {
    v7 = 0;
    v332 = "@NSDictionary16";
    v349 = v3 & 0xC000000000000001;
    v8 = _swiftEmptyArrayStorage;
    v315 = "currentSignedInUser";
    v366 = v3;
    do
    {
      if (v349)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v17 = v9;
      v403 = &type metadata for Int;
      *&v401 = -1;
      sub_100006810(v9, v10, v11, v12, v13, v14, v15, v16, v298, v315, v332, v349, v366, v383, v398, v399, v400, v401);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100006D98();
      sub_1000075D4(v18);
      v19 = [v17 isAskToBuyEnabled];
      sub_10000AC30(v19, v20, v21, v22, v23, v24, v25, v26, v299, v316, v333, v350, v367, v384, v398, v399, v400, v401, v402, v403);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100006D98();
      sub_100005CD8(v27);
      v28 = v385;
      v29 = [v17 isCurrentSignedInUser];
      sub_10000AC30(v29, v30, v31, v32, v33, v34, v35, v36, v300, v317, v334, v351, v368, v385, v398, v399, v400, v401, v402, v403);
      swift_isUniquelyReferenced_nonNull_native();
      v386 = v28;
      sub_100003E20(&v398);
      v37 = sub_100026484(v17, &selRef_firstName);
      if (v38)
      {
        v403 = &type metadata for String;
        *&v401 = v37;
        *(&v401 + 1) = v38;
        sub_100006810(v37, v38, v39, v40, v41, v42, v43, v44, v301, v318, v335, v352, v369, v28, v398, v399, v400, v401);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100006D98();
        sub_10000B398(v45);
        v28 = v386;
      }

      else
      {
        sub_10000B220();
        if (v46)
        {
          v47 = sub_100017DAC();
          *&v398 = v28;
          v48 = *(v28 + 3);
          sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
          v28 = &v398;
          v49 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v47, v48);
          v57 = sub_100008448(v49, v50, v51, v52, v53, v54, v55, v56, v301, v318, v335, v352, v369, v386, v398);
          sub_100012D04(v57, v58, v59, v60, v61, v62, v63, v64, v302, v319, v336, v353, v370, v387, v398, *(&v398 + 1), v399, v400, v401);
          sub_10000C018();
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_10000A634();
        }

        sub_100002C5C(&v401);
      }

      v65 = [v17 iCloudDSID];
      if (v65)
      {
        v66 = v65;
        v67 = [v65 stringValue];

        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;

        v403 = &type metadata for String;
        *&v401 = v68;
        *(&v401 + 1) = v70;
        sub_100006810(v71, v72, v73, v74, v75, v76, v77, v78, v301, v318, v335, v352, v369, v386, v398, v399, v400, v401);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100006D98();
        sub_100004924();
        sub_100005FB0(v79, v80);
        v28 = v386;
      }

      else
      {
        v81 = sub_10000AFA0();
        sub_100007240(v81);
        if (v82)
        {
          sub_100017DAC();
          sub_10000A41C();
          v83 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
          v91 = sub_10000801C(v83, v84, v85, v86, v87, v88, v89, v90, v301, v318, v335, v352, v369, v386, v398);
          v99 = sub_100008448(v91, v92, v93, v94, v95, v96, v97, v98, v303, v320, v337, v354, v371, v388, v398);
          sub_100012D04(v99, v100, v101, v102, v103, v104, v105, v106, v304, v321, v338, v355, v372, v389, v398, *(&v398 + 1), v399, v400, v401);
          sub_10000C018();
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_10000A634();
        }

        sub_100002C5C(&v401);
      }

      v107 = sub_100026484(v17, &selRef_iCloudUsername);
      if (v108)
      {
        v403 = &type metadata for String;
        *&v401 = v107;
        *(&v401 + 1) = v108;
        sub_100006810(v107, v108, v109, v110, v111, v112, v113, v114, v301, v318, v335, v352, v369, v386, v398, v399, v400, v401);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100006D98();
        sub_100004924();
        sub_1000064D0(v115, v116);
        v28 = v386;
      }

      else
      {
        v117 = sub_10000AFA0();
        sub_100005958(v117);
        if (v118)
        {
          sub_100017DAC();
          sub_10000A41C();
          v119 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
          v127 = sub_10000801C(v119, v120, v121, v122, v123, v124, v125, v126, v301, v318, v335, v352, v369, v386, v398);
          v135 = sub_100008448(v127, v128, v129, v130, v131, v132, v133, v134, v305, v322, v339, v356, v373, v390, v398);
          sub_100012D04(v135, v136, v137, v138, v139, v140, v141, v142, v306, v323, v340, v357, v374, v391, v398, *(&v398 + 1), v399, v400, v401);
          sub_10000C018();
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_10000A634();
        }

        sub_100002C5C(&v401);
      }

      v143 = [v17 iTunesDSID];
      if (v143)
      {
        v144 = v143;
        v145 = [v143 stringValue];

        v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v148 = v147;

        v403 = &type metadata for String;
        *&v401 = v146;
        *(&v401 + 1) = v148;
        sub_100006810(v149, v150, v151, v152, v153, v154, v155, v156, v301, v318, v335, v352, v369, v386, v398, v399, v400, v401);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100006D98();
        sub_10000A9F8();
        sub_100005FB0(v157, v158);
        v28 = v386;
      }

      else
      {
        v159 = sub_10000C41C();
        sub_100007240(v159);
        if (v160)
        {
          sub_100017DAC();
          sub_10000A41C();
          v161 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
          v169 = sub_10000801C(v161, v162, v163, v164, v165, v166, v167, v168, v301, v318, v335, v352, v369, v386, v398);
          v177 = sub_100008448(v169, v170, v171, v172, v173, v174, v175, v176, v307, v324, v341, v358, v375, v392, v398);
          sub_100012D04(v177, v178, v179, v180, v181, v182, v183, v184, v308, v325, v342, v359, v376, v393, v398, *(&v398 + 1), v399, v400, v401);
          sub_10000C018();
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_10000A634();
        }

        sub_100002C5C(&v401);
      }

      v185 = sub_100026484(v17, &selRef_iTunesUsername);
      if (v186)
      {
        v403 = &type metadata for String;
        *&v401 = v185;
        *(&v401 + 1) = v186;
        sub_100006810(v185, v186, v187, v188, v189, v190, v191, v192, v301, v318, v335, v352, v369, v386, v398, v399, v400, v401);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100006D98();
        sub_10000A9F8();
        sub_1000064D0(v193, v194);
        v28 = v386;
      }

      else
      {
        v195 = sub_10000C41C();
        sub_100005958(v195);
        if (v196)
        {
          sub_100017DAC();
          sub_10000A41C();
          v197 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
          v205 = sub_10000801C(v197, v198, v199, v200, v201, v202, v203, v204, v301, v318, v335, v352, v369, v386, v398);
          v213 = sub_100008448(v205, v206, v207, v208, v209, v210, v211, v212, v309, v326, v343, v360, v377, v394, v398);
          sub_100012D04(v213, v214, v215, v216, v217, v218, v219, v220, v310, v327, v344, v361, v378, v395, v398, *(&v398 + 1), v399, v400, v401);
          sub_10000C018();
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_10000A634();
        }

        sub_100002C5C(&v401);
      }

      v221 = sub_100026484(v17, &selRef_lastName);
      if (v222)
      {
        v403 = &type metadata for String;
        *&v401 = v221;
        *(&v401 + 1) = v222;
        sub_100006810(v221, v222, v223, v224, v225, v226, v227, v228, v301, v318, v335, v352, v369, v386, v398, v399, v400, v401);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100006D98();
        sub_100018218();
        v28 = v386;
      }

      else
      {
        sub_10000A89C();
        if (v229)
        {
          sub_100017DAC();
          sub_10000A41C();
          v230 = sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
          v238 = sub_10000801C(v230, v231, v232, v233, v234, v235, v236, v237, v301, v318, v335, v352, v369, v386, v398);
          v246 = sub_100008448(v238, v239, v240, v241, v242, v243, v244, v245, v311, v328, v345, v362, v379, v396, v398);
          sub_100012D04(v246, v247, v248, v249, v250, v251, v252, v253, v312, v329, v346, v363, v380, v397, v398, *(&v398 + 1), v399, v400, v401);
          sub_10000C018();
          _NativeDictionary._delete(at:)();
        }

        else
        {
          sub_10000A634();
        }

        sub_100002C5C(&v401);
      }

      v254 = [v17 isSharingPurchases];
      sub_10000AC30(v254, v255, v256, v257, v258, v259, v260, v261, v301, v318, v335, v352, v369, v386, v398, v399, v400, v401, v402, v403);
      swift_isUniquelyReferenced_nonNull_native();
      v383 = v28;
      sub_10001CC04();
      sub_10000DFC4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000D6000(0, v8[2] + 1, 1, v8);
        v8 = v264;
      }

      v263 = v8[2];
      v262 = v8[3];
      if (v263 >= v262 >> 1)
      {
        v265 = sub_100017F7C(v262);
        sub_1000D6000(v265, v266, v267, v8);
        v8 = v268;
      }

      ++v7;

      v8[2] = v263 + 1;
      v8[v263 + 4] = v28;
      v4 = v366;
    }

    while (v6 != v7);

    goto LABEL_50;
  }

  __break(1u);
  return result;
}

void *sub_10011ACE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10009BA90(0, v1, 0);
    type metadata accessor for ObscureFeatureFlagResolver();
    v3 = a1 + 40;
    do
    {

      v4 = static ObscureFeatureFlagResolver.isEnabled(uuid:)();

      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_10009BA90(v5 > 1, v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6) = v4 & 1;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

id sub_10011AE68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSFeatureFlag();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10011AE9C()
{
  result = [objc_allocWithZone(NSISO8601DateFormatter) init];
  qword_10026DC70 = result;
  return result;
}

uint64_t sub_10011AED0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1000083D8();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v6[5] = ObjectType;

  v7 = v2;
  v8 = sub_10011F39C("clearFollowUpWithBackingIdentifier(_:)", 0x26uLL, 2, sub_10011E0E0, v6);

  return v8;
}

void sub_10011AF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a7;
  v28 = a6;
  v29 = a2;
  v8 = type metadata accessor for JSCallable();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v30 = [objc_allocWithZone(AMSFollowUp) init];
  v11 = String._bridgeToObjectiveC()();
  v31 = [v30 clearFollowUpWithBackingIdentifier:v11];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = *(v9 + 16);
  v27(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
  v13 = *(v9 + 80);
  v26 = (v13 + 24) & ~v13;
  v14 = (v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v25 = *(v9 + 32);
  v16 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v8;
  v25(v15 + ((v13 + 24) & ~v13), v16, v8);
  *(v15 + v14) = v32;
  v37 = sub_10011E0FC;
  v38 = v15;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1000266E0;
  v36 = &unk_10024CF80;
  v18 = _Block_copy(&aBlock);

  [v31 addErrorBlock:v18];
  _Block_release(v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v16;
  v27(v16, v29, v17);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v25(v21 + v26, v20, v17);
  *(v21 + v14) = v32;
  v37 = sub_10011E2A0;
  v38 = v21;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100005E50;
  v36 = &unk_10024CFD0;
  v22 = _Block_copy(&aBlock);

  v23 = v31;
  [v31 addSuccessBlock:v22];
  _Block_release(v22);
}

uint64_t sub_10011B370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10011DADC(a3);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v8;
  v9[5] = v3;
  v9[6] = ObjectType;
  v10 = v8;
  v11 = v3;

  v12 = sub_10011F39C("clearFollowUpWithIdentifier(_:_:)", 0x21uLL, 2, sub_10011E060, v9);

  return v12;
}

void sub_10011B43C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v27 = a7;
  v28 = a3;
  v29 = a2;
  v9 = type metadata accessor for JSCallable();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(AMSFollowUp) init];
  v30 = v13;
  v14 = String._bridgeToObjectiveC()();
  v31 = [v13 clearFollowUpWithIdentifier:v14 account:a6];

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = *(v10 + 16);
  v16 = v9;
  v26(v12, v28, v9);
  v17 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v28 = *(v10 + 32);
  v28(v19 + v17, v12, v16);
  *(v19 + v18) = v32;
  v37 = sub_10011E080;
  v38 = v19;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v25[1] = &v35;
  v35 = sub_1000266E0;
  v36 = &unk_10024CE68;
  v20 = _Block_copy(&aBlock);

  [v31 addErrorBlock:v20];
  _Block_release(v20);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26(v12, v29, v16);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v28(v22 + v17, v12, v16);
  *(v22 + v18) = v32;
  v37 = sub_10011E0AC;
  v38 = v22;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100005E50;
  v36 = &unk_10024CEB8;
  v23 = _Block_copy(&aBlock);

  v24 = v31;
  [v31 addSuccessBlock:v23];
  _Block_release(v23);
}

uint64_t sub_10011B7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a8;
  v27 = a5;
  v24 = a7;
  v25 = a1;
  v28 = a6;
  v22 = a3;
  v23 = type metadata accessor for JSCallable();
  sub_100002CC4();
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  v13 = qword_100287848;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v14 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v14);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001E5F70;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v16 = static os_log_type_t.error.getter();
  sub_1000036B0(v16, v15);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000064F4();

    if (v30)
    {
      sub_100003CA8(v29, v30);
      v18 = v23;
      (*(v9 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v23);
      v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v20 = swift_allocObject();
      (*(v9 + 32))(v20 + v19, &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      *(v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v29);
    }

    else
    {
      return sub_100009F5C(v29, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_10011BA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a6;
  v23 = a7;
  v24 = a4;
  v25 = a5;
  v20 = a2;
  v21 = type metadata accessor for JSCallable();
  sub_100002CC4();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  v12 = qword_100287848;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v13 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v13);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001E5F70;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v15 = static os_log_type_t.default.getter();
  sub_1000036B0(v15, v14);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000064F4();

    if (v27)
    {
      sub_100003CA8(v26, v27);
      v17 = v21;
      (*(v8 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v21);
      v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v19 = swift_allocObject();
      (*(v8 + 32))(v19 + v18, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v26);
    }

    else
    {
      return sub_100009F5C(v26, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_10011BD54()
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  sub_100007600();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001E61B0;
  *(v0 + 56) = &type metadata for Bool;
  *(v0 + 32) = 1;
  sub_100105E34(v0);
}

uint64_t sub_10011BDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(AMSFollowUp) init];
  v9 = sub_10011DADC(a3);
  sub_100007600();
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = v9;
  v10[6] = v3;
  v10[7] = ObjectType;
  v11 = v9;
  v12 = v3;
  v13 = v8;

  v14 = sub_10011F39C("pendingFollowUpWithIdentfier(_:_:)", 0x22uLL, 2, sub_10011DE68, v10);

  return v14;
}

void sub_10011BEDC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *, uint64_t), void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a2;
  v28 = a8;
  v26 = a3;
  v31 = a9;
  v11 = type metadata accessor for JSCallable();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = String._bridgeToObjectiveC()();
  v30 = [a4 pendingFollowUpWithIdentifier:v15 account:a7];

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = *(v12 + 16);
  v27(v14, v26, v11);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v26 = *(v12 + 32);
  v26(v19 + v17, v14, v11);
  *(v19 + v18) = v31;
  v36 = sub_10011DE94;
  v37 = v19;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_1000266E0;
  v35 = &unk_10024CD50;
  v20 = _Block_copy(&aBlock);

  [v30 addErrorBlock:v20];
  _Block_release(v20);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27(v14, v29, v11);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v26(v22 + v17, v14, v11);
  *(v22 + v18) = v31;
  v36 = sub_10011DEAC;
  v37 = v22;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10008E0EC;
  v35 = &unk_10024CDA0;
  v23 = _Block_copy(&aBlock);

  v24 = v30;
  [v30 addSuccessBlock:v23];
  _Block_release(v23);
}

void *sub_10011C234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v18 = a1;
  v17 = type metadata accessor for JSCallable();
  v4 = *(v17 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F70;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v8 = static os_log_type_t.error.getter();
  sub_1000036B0(v8, v7);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_10011F068("pendingFollowUpWithIdentfier(_:_:)", 34, 2, v19);

    if (v20)
    {
      sub_100003CA8(v19, v20);
      v11 = v17;
      (*(v4 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v17);
      v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      v14 = swift_allocObject();
      (*(v4 + 32))(v14 + v12, v6, v11);
      *(v14 + v13) = v18;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v19);
    }

    else
    {
      return sub_100009F5C(v19, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

void *sub_10011C550(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v28 = a1;
  v26 = type metadata accessor for JSCallable();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v26);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v32 = type metadata accessor for JSFollowUp();
    *&v31 = v9;
    sub_100002C4C(&v31, &v29);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v29 = a4;
  }

  v27 = a4;
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v29);
  LogInterpolation.init(stringLiteral:)();
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12, v7);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10011F068("pendingFollowUpWithIdentfier(_:_:)", 34, 2, &v29);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v29, MetatypeMetadata);
      v15 = v25;
      v16 = v26;
      (*(v5 + 16))(v25, v24, v26);
      v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      (*(v5 + 32))(v19 + v17, v15, v16);
      v21 = v27;
      v20 = v28;
      *(v19 + v18) = v28;
      *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
      v22 = v20;
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v29);
    }

    else
    {
      return sub_100009F5C(&v29, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_10011C8F8()
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001E61B0;
  if (qword_1002686A0 != -1)
  {
    swift_once();
  }

  v1 = qword_10026DC70;
  v2 = sub_100099C58(v1);

  *(v0 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v0 + 32) = v2;
  sub_100105E34(v0);
}

id sub_10011C9F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = a1;
  v12 = a5(v8, v10, a4);

  return v12;
}

uint64_t sub_10011CAB0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(AMSFollowUp) init];
  sub_1000083D8();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v4;
  v5[4] = v1;
  v5[5] = ObjectType;

  v6 = v4;
  v7 = v1;
  v8 = sub_10011F39C("pendingFollowUps(_:)", 0x14uLL, 2, sub_10011DCB8, v5);

  return v8;
}

void sub_10011CB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v44 = a2;
  v46 = a7;
  v40 = a6;
  v36 = a3;
  v10 = type metadata accessor for JSCallable();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v42 = v13;
  v43 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13;
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v34 = &v34 - v15;
  v45 = sub_10011CF2C(a4, a5);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = *(v11 + 16);
  v35(v16, a3, v10);
  v18 = *(v11 + 80);
  v19 = (v18 + 24) & ~v18;
  v37 = v19 + v14;
  v39 = v19;
  v20 = (v19 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  v38 = *(v11 + 32);
  v22 = v21 + v19;
  v23 = v34;
  v38(v22, v34, v10);
  *(v21 + v20) = v46;
  v51 = sub_10011DCD4;
  v52 = v21;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v41 = &v49;
  v49 = sub_1000266E0;
  v50 = &unk_10024CC38;
  v24 = _Block_copy(&aBlock);

  [v45 addErrorBlock:v24];
  _Block_release(v24);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v35;
  v35(v23, v36, v10);
  v27 = v43;
  v26(v43, v44, v10);
  v28 = (v37 + v18) & ~v18;
  v29 = (v42 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  v31 = v38;
  v38(v30 + v39, v23, v10);
  v31(v30 + v28, v27, v10);
  *(v30 + v29) = v46;
  v51 = sub_10011DCEC;
  v52 = v30;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_10008E0EC;
  v50 = &unk_10024CC88;
  v32 = _Block_copy(&aBlock);

  v33 = v45;
  [v45 addSuccessBlock:v32];
  _Block_release(v32);
}

id sub_10011CF2C(uint64_t a1, void *a2)
{
  if (!a1)
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_6;
  }

  sub_100052D94(a1, &v7);
  if (!*(&v8 + 1))
  {
LABEL_6:
    sub_100009F5C(&v7, &qword_10026D350, &qword_1001E6050);
    goto LABEL_7;
  }

  type metadata accessor for JSAccount();
  if (swift_dynamicCast())
  {
    v3 = [a2 pendingFollowUpsForAccount:*&v6[OBJC_IVAR____TtC14amsengagementd9JSAccount_account]];

    return v3;
  }

LABEL_7:
  v5 = [a2 pendingFollowUps];

  return v5;
}

void *sub_10011D038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v22 = a1;
  v21 = type metadata accessor for JSCallable();
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v21);
  v19 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v26 = type metadata accessor for JSFollowUp();
    *&v25 = v9;
    sub_100002C4C(&v25, &v23);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v23 = a4;
  }

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v23);
  LogInterpolation.init(stringLiteral:)();
  v12 = static os_log_type_t.error.getter();
  sub_1000036B0(v12, v7);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10011F068("pendingFollowUps(_:)", 20, 2, &v23);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v23, MetatypeMetadata);
      v15 = v19;
      v16 = v21;
      (*(v5 + 16))(v19, v20, v21);
      v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v18 = swift_allocObject();
      (*(v5 + 32))(v18 + v17, v15, v16);
      *(v18 + ((v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v23);
    }

    else
    {
      return sub_100009F5C(&v23, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_10011D3D0(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  sub_100007600();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  v4 = objc_allocWithZone(type metadata accessor for JSError());
  swift_errorRetain();
  v5 = sub_1000505C8(a2);
  v6 = sub_100051018();

  *(v3 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v3 + 32) = v6;
  sub_100105E34(v3);
}

void *sub_10011D498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v29 = a3;
  v33 = a1;
  v30 = type metadata accessor for JSCallable();
  v32 = *(v30 - 8);
  v6 = *(v32 + 64);
  v7 = __chkstk_darwin(v30);
  v35 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v34 = a5;
  if (Strong)
  {
    v12 = Strong;
    v40 = type metadata accessor for JSFollowUp();
    *&v39 = v12;
    sub_100002C4C(&v39, &v36);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v36 = a5;
  }

  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v36);
  LogInterpolation.init(stringLiteral:)();
  v15 = static os_log_type_t.default.getter();
  sub_1000036B0(v15, v10);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_10011F068("pendingFollowUps(_:)", 20, 2, &v36);

    if (MetatypeMetadata)
    {
      v28[1] = v38;
      v28[0] = sub_100003CA8(&v36, MetatypeMetadata);
      v18 = v32;
      v19 = *(v32 + 16);
      v20 = v30;
      v19(v9, v29, v30);
      v19(v35, v31, v20);
      v21 = *(v18 + 80);
      v22 = (v21 + 24) & ~v21;
      v23 = (v6 + v21 + v22) & ~v21;
      v24 = swift_allocObject();
      v25 = v33;
      *(v24 + 16) = v33;
      v26 = *(v18 + 32);
      v26(v24 + v22, v9, v20);
      v26(v24 + v23, v35, v20);
      *(v24 + ((v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
      v27 = v25;
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v36);
    }

    else
    {
      return sub_100009F5C(&v36, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_10011D8A4(uint64_t a1)
{
  sub_10011DE24();
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001E61B0;
  v2 = type metadata accessor for JSError();
  v3 = sub_10010F0F0(4, 0xD000000000000018, 0x80000001001FB5F0, 0, 0);
  *(v1 + 56) = v2;
  *(v1 + 32) = v3;
  sub_100105E34(v1);
}

id sub_10011DADC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = v1;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_100012A94();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_100011BAC(*(a1 + 56) + 32 * v4, &v19);
  v6 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  if ((sub_100023DF8(v6, v7, v8, v6, v9) & 1) == 0)
  {
    return 0;
  }

  sub_100052D94(v18, &v19);

  if (!v20)
  {
    sub_100009F5C(&v19, &qword_10026D350, &qword_1001E6050);
    return 0;
  }

  if ((sub_100023DF8(v10, v11, v12, &type metadata for Int, v13) & 1) == 0)
  {
    return 0;
  }

  v14 = *(v2 + OBJC_IVAR____TtC14amsengagementd10JSFollowUp_accountStore);
  v15 = [objc_allocWithZone(NSNumber) initWithInteger:v18];
  v16 = [v14 ams_iTunesAccountWithDSID:v15];

  return v16;
}

id sub_10011DC74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSFollowUp();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10011DCEC(void *a1)
{
  v3 = type metadata accessor for JSCallable();
  sub_100002CFC(v3);
  v5 = v4;
  v7 = v6;
  v8 = *(v5 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = *(v1 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *(v1 + 16);

  return sub_10011D498(a1, v13, v1 + v9, v1 + v11, v12);
}

uint64_t sub_10011DD94()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  sub_10000326C();
  v2 = *(v0 + 16);

  return sub_10011D8A4(v2);
}

unint64_t sub_10011DE24()
{
  result = qword_10026DCA8;
  if (!qword_10026DCA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026DCA8);
  }

  return result;
}

uint64_t sub_10011DEC4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = type metadata accessor for JSCallable();
  sub_100002CFC(v4);
  sub_10000326C();
  v6 = *(v2 + 16);
  v8 = *(v2 + v7);

  return a2(a1, v6, v2 + v5, v8);
}

uint64_t sub_10011DF68()
{
  v0 = type metadata accessor for JSCallable();
  sub_100002CFC(v0);
  sub_10000326C();

  return sub_10011C8F8();
}

uint64_t sub_10011DFF0()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  sub_10000326C();
  return sub_10011D3D0(v0 + v3, *(v0 + v2));
}

uint64_t sub_10011E128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for JSCallable();
  sub_100002CFC(v11);
  sub_10000326C();
  return sub_10011B7C0(a1, *(v5 + 16), v5 + v13, *(v5 + v12), a2, a3, a4, a5);
}

uint64_t sub_10011E1DC()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CC4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10011E2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for JSCallable();
  sub_100002CFC(v9);
  sub_10000326C();
  return sub_10011BA98(*(v4 + 16), v4 + v11, *(v4 + v10), a1, a2, a3, a4);
}

uint64_t sub_10011E378()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10011E448()
{
  type metadata accessor for JSCallable();
  sub_100002D30();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10011E510(uint64_t a1, void *a2)
{
  v4 = sub_100073784();
  v9._object = 0xE000000000000000;
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

id sub_10011E62C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSLocalize();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10011E660(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F60;
  v15 = type metadata accessor for JSLocation();
  v14[0] = v2;
  v2;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v14);
  LogInterpolation.init(stringLiteral:)();
  v15 = &type metadata for String;
  v14[0] = a1;
  v14[1] = a2;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(v14, &qword_10026D350, &qword_1001E6050);
  v8 = static os_log_type_t.default.getter();
  sub_1000036B0(v8, v5);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v9;
  v10[5] = ObjectType;

  v11 = sub_10011F39C("getAuthorizationStatus(_:)", 0x1AuLL, 2, sub_10011EE9C, v10);

  return v11;
}

uint64_t sub_10011E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a2;
  v8 = type metadata accessor for JSCallable();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v30 = v9;
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 authorizationStatusForBundleIdentifier:v11];

  v13 = sub_10011ED58(v12);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001E5F60;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v39 = type metadata accessor for JSLocation();
    *&v38 = v16;
    sub_100002C4C(&v38, &v35);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v35 = a7;
  }

  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v35);
  LogInterpolation.init(stringLiteral:)();
  MetatypeMetadata = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *&v35 = v13;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(&v35, &qword_10026D350, &qword_1001E6050);
  v19 = static os_log_type_t.default.getter();
  sub_1000036B0(v19, v14);

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
  }

  v21 = v20;
  sub_10011F068("getAuthorizationStatus(_:)", 26, 2, &v35);

  if (MetatypeMetadata)
  {
    v29 = v37;
    sub_100003CA8(&v35, MetatypeMetadata);
    v22 = v32;
    v23 = v33;
    v24 = v34;
    (*(v33 + 16))(v32, v31, v34);
    v25 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v26 = (v30 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    (*(v23 + 32))(v27 + v25, v22, v24);
    *(v27 + v26) = v13;
    dispatch thunk of TaskScheduler.schedule(task:)();

    return sub_100002C00(&v35);
  }

  else
  {

    return sub_100009F5C(&v35, &qword_10026D6C8, &unk_1001ECB60);
  }
}

uint64_t sub_10011ED58(int a1)
{
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001001FB9A0;
  *(inited + 72) = &type metadata for Int32;
  *(inited + 48) = a1;
  return Dictionary.init(dictionaryLiteral:)();
}

id sub_10011EE68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSLocation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10011EEBC()
{
  v1 = *(type metadata accessor for JSCallable() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100115FA4(v0 + v2, v3);
}

id sub_10011EFE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSLog();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10011F068@<D0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E5F60;
  v22 = type metadata accessor for JSManagedExport();
  v27 = v22;
  v24 = v5;
  v10 = v5;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v24);
  LogInterpolation.init(stringLiteral:)();
  v27 = &type metadata for StaticString;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(&v24);
  v13 = static os_log_type_t.debug.getter();
  sub_1000036B0(v13, v9);

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    *(a4 + 24) = type metadata accessor for RunLoopWorkerThread();
    *(a4 + 32) = &protocol witness table for RunLoopWorkerThread;
    *a4 = v15;
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1001E5F60;
    v27 = v22;
    v24 = v10;
    v18 = v10;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v24);
    v27 = &type metadata for StaticString;
    v24 = a1;
    v25 = a2;
    v26 = a3;
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&v24);
    LogInterpolation.init(stringLiteral:)();
    v21 = static os_log_type_t.error.getter();
    sub_1000036B0(v21, v17);

    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10011F39C(unint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E5F60;
  v7 = type metadata accessor for JSManagedExport();
  v26 = v7;
  v23 = v5;
  v8 = v5;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v23);
  v26 = &type metadata for String;
  v23 = 0xD000000000000010;
  v24 = 0x80000001001FBB00;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(&v23);
  v26 = &type metadata for StaticString;
  v23 = a1;
  v24 = a2;
  v25 = a3;
  static LogInterpolation.safe(_:)();
  sub_100002C5C(&v23);
  v11 = static os_log_type_t.debug.getter();
  sub_1000036B0(v11, v6);

  type metadata accessor for RunLoopWorkerThread();
  static RunLoopWorkerThread.current.getter();
  swift_weakAssign();

  if (swift_weakLoadStrong())
  {
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001E5F60;
    v26 = v7;
    v23 = v8;
    v13 = v8;
    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v23);
    v26 = &type metadata for StaticString;
    v23 = a1;
    v24 = a2;
    v25 = a3;
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&v23);
    LogInterpolation.init(stringLiteral:)();
    v16 = static os_log_type_t.error.getter();
    sub_1000036B0(v16, v12);
  }

  sub_10010C05C();
  v17 = static JSContext.requiredCurrent.getter();
  __chkstk_darwin(v17);
  v18 = JSContext.propagateErrorsToExceptions(_:)();

  return v18;
}

id sub_10011F798()
{
  swift_weakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSManagedExport();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10011F804(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSManagedExport();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10011F888(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v57 = a3;
  v58 = a4;
  v54 = a2;
  v55 = a1;
  v56 = type metadata accessor for Bag();
  sub_100002CC4();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v11 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v11 - 8);
  v13 = &v48 - v12;
  v14 = (*&v4[OBJC_IVAR____TtC14amsengagementd11JSMarketing_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v15 = v14[1];
  if (v15)
  {
    v59 = *v14;
  }

  else
  {
    v59 = 0;
  }

  v16 = OBJC_IVAR____TtC14amsengagementd11JSMarketing_bag;
  v17 = Bag.amsBag.getter();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 BOOLForKey:v18];

  swift_unknownObjectRelease();
  *&v60 = 0;
  v20 = [v19 valueWithError:&v60];

  if (v20)
  {
    v21 = v60;
    v22 = [v20 BOOLValue];

    if (v22)
    {
      v23 = type metadata accessor for TaskPriority();
      v53 = v13;
      sub_10000A7C0(v13, 1, 1, v23);
      v24 = OBJC_IVAR____TtC14amsengagementd11JSMarketing_accountStore;
      v25 = *&v5[OBJC_IVAR____TtC14amsengagementd11JSMarketing_clientInfo];
      v26 = *&v5[OBJC_IVAR____TtC14amsengagementd11JSMarketing_mediaClient + 8];
      v51 = *&v5[OBJC_IVAR____TtC14amsengagementd11JSMarketing_mediaClient];
      v52 = v25;
      v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v50 = v26;
      (*(v7 + 16))(v49, &v5[v16], v56);
      sub_1000262E4(&v5[v24], &v60);
      v27 = (*(v7 + 80) + 64) & ~*(v7 + 80);
      v28 = (v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
      v48 = (v29 + 47) & 0xFFFFFFFFFFFFFFF8;
      v30 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
      v31 = swift_allocObject();
      *(v31 + 2) = 0;
      *(v31 + 3) = 0;
      v32 = v56;
      *(v31 + 4) = v57;
      *(v31 + 5) = v5;
      *(v31 + 6) = v59;
      *(v31 + 7) = v15;
      (*(v7 + 32))(&v31[v27], v49, v32);
      v33 = &v31[v28];
      v34 = v50;
      *v33 = v51;
      *(v33 + 1) = v34;
      sub_10003B104(&v60, &v31[v29]);
      v35 = v52;
      *&v31[v48] = v52;
      v36 = &v31[v30];
      v37 = v54;
      *v36 = v55;
      v36[1] = v37;
      *&v31[(v30 + 23) & 0xFFFFFFFFFFFFFFF8] = v58;
      v38 = v35;

      v39 = v57;
      v40 = v5;

      sub_1000E349C();
    }
  }

  else
  {
    v42 = v60;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v43 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v43);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1001E5F70;
  v61 = type metadata accessor for JSMarketing(0);
  *&v60 = v5;
  v5;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v60);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v45 = static os_log_type_t.error.getter();
  sub_1000036B0(v45, v44);

  sub_10000539C();
  sub_100052D94(v58, &v60);
  if (!v61)
  {
    return sub_100002C5C(&v60);
  }

  result = swift_dynamicCast();
  if (result)
  {
    type metadata accessor for ContentManager();
    v46 = sub_100121478();
    sub_100007544(&type metadata for JSMarketing.CacheError, v46);
    *v47 = 1;
    sub_1000B40E4();
  }

  return result;
}

uint64_t sub_10011FE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1040) = v13;
  *(v8 + 1008) = v11;
  *(v8 + 1024) = v12;
  *(v8 + 992) = v10;
  *(v8 + 984) = a8;
  *(v8 + 976) = a7;
  *(v8 + 968) = a6;
  *(v8 + 960) = a5;
  *(v8 + 952) = a4;
  return _swift_task_switch(sub_10011FE80, 0, 0);
}

uint64_t sub_10011FE80()
{
  sub_10014AEE8(*(v0 + 952), (v0 + 352));
  v1 = *(v0 + 960);
  *(v0 + 1048) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  *(v0 + 1056) = *(v3 + 72);
  *(v0 + 1120) = *(v4 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F60;
  v6 = type metadata accessor for JSMarketing(0);
  *(v0 + 1064) = v6;
  *(v0 + 680) = v6;
  *(v0 + 656) = v1;
  v7 = v1;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00((v0 + 656));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 712) = &type metadata for MarketingItemRequest;
  v8 = swift_allocObject();
  *(v0 + 688) = v8;
  memcpy((v8 + 16), (v0 + 352), 0x48uLL);
  sub_100121748(v0 + 352, v0 + 424);
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v0 + 688);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v9 = *(v0 + 1008);
  v27 = *(v0 + 1016);
  *(v0 + 1072) = qword_100287810;
  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10, v5);

  v11 = Bag.amsBag.getter();
  v12 = *(v0 + 400);
  *(v0 + 1080) = *(v0 + 392);
  *(v0 + 1088) = v12;
  v13 = objc_allocWithZone(AMSMarketingItemTask);

  v14 = sub_1001217A4(v11);
  *(v0 + 1096) = v14;
  v15 = v9[3];
  v16 = v9[4];
  sub_100003CA8(v9, v15);
  v17 = (*(v16 + 8))(v15, v16);
  [v14 setAccount:{v17, v12}];

  [v14 setClientInfo:v27];
  isa = *(v0 + 352);
  if (isa)
  {

    sub_1000E3EE4();

    sub_10007B9A4(&qword_10026C920, &qword_1001EBE00);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v19 = *(v0 + 976);
  [v14 setContextInfo:isa];

  if (v19)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  [v14 setLogKey:v20];

  if (*(v0 + 384))
  {

    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [v14 setOfferHints:v21];

  v22 = [v14 performWithFetchOnly];
  *(v0 + 1104) = v22;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 944;
  *(v0 + 24) = sub_100120590;
  v23 = swift_continuation_init();
  *(v0 + 552) = sub_10007B9A4(&qword_100269878, &qword_1001E6318);
  *(v0 + 528) = v23;
  *(v0 + 496) = _NSConcreteStackBlock;
  *(v0 + 504) = 1107296256;
  *(v0 + 512) = sub_100048FD8;
  *(v0 + 520) = &unk_10024D110;
  [v22 resultWithCompletion:v0 + 496];
  sub_100003DC0();

  return _swift_continuation_await(v24);
}

uint64_t sub_100120590()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1112) = v2;
  if (v2)
  {
    sub_1001218A4(v1 + 352);
    v3 = sub_100120F54;
  }

  else
  {
    v3 = sub_1001206A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1001206A8()
{
  v1 = *(v0 + 944);
  sub_100002BC0(0, &qword_10026DDE0, AMSMarketingItem_ptr);
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  v2 = *(v0 + 1104);
  sub_1001218A4(v0 + 352);

  v3 = *(v0 + 1096);
  v4 = sub_100121478();
  sub_100007544(&type metadata for JSMarketing.CacheError, v4);
  *v5 = 0;
  swift_willThrow();

  v6 = *(v0 + 960);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E5F60;
  *(v0 + 584) = type metadata accessor for JSMarketing(0);
  *(v0 + 560) = v6;
  v9 = v6;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00((v0 + 560));
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  *(v0 + 616) = *(v0 + 888);
  sub_100017E64((v0 + 592));
  sub_1000047A4();
  (*(v10 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v0 + 592);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v11 = *(v0 + 1040);
  v12 = static os_log_type_t.error.getter();
  sub_1000036B0(v12, v8);

  sub_10000539C();
  sub_100052D94(v11, (v0 + 624));
  if (*(v0 + 648))
  {
    if (sub_10000C02C())
    {
      type metadata accessor for ContentManager();
      sub_100007544(&type metadata for JSMarketing.CacheError, v4);
      *v13 = 0;
      sub_1000B40E4();
    }

    else
    {
    }
  }

  else
  {

    sub_100002C5C(v0 + 624);
  }

  sub_100002D8C();
  sub_100003DC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100120F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 1104);
  v5 = *(v3 + 1096);
  swift_willThrow();

  v6 = *(v3 + 960);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v7);
  sub_100007B24();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E5F60;
  *(v3 + 584) = type metadata accessor for JSMarketing(0);
  *(v3 + 560) = v6;
  v9 = v6;
  sub_100019CA4();
  sub_100002C00((v3 + 560));
  sub_100008468();
  swift_getErrorValue();
  sub_10000803C();
  sub_1000047A4();
  (*(v10 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v3 + 592);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v11 = *(v3 + 1040);
  v12 = static os_log_type_t.error.getter();
  sub_1000036B0(v12, v8);

  sub_10000539C();
  sub_100052D94(v11, (v3 + 624));
  if (*(v3 + 648))
  {
    if (sub_10000C02C())
    {
      type metadata accessor for ContentManager();
      v13 = sub_100121478();
      v14 = sub_100007544(&type metadata for JSMarketing.CacheError, v13);
      sub_100023E18(v14, v15);
      sub_1000B40E4();
    }

    else
    {
    }
  }

  else
  {

    sub_100002C5C(v3 + 624);
  }

  sub_100002D8C();

  return v16();
}

id sub_1001212D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMarketing(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001213BC(uint64_t a1)
{
  result = type metadata accessor for Bag();
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

unint64_t sub_100121478()
{
  result = qword_10026DDD8;
  if (!qword_10026DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DDD8);
  }

  return result;
}

uint64_t sub_1001214CC(uint64_t a1)
{
  v3 = type metadata accessor for Bag();
  sub_100002CFC(v3);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v12 = v1[3];
  v13 = v1[2];
  v10 = v1[5];
  v11 = v1[4];
  v8 = v1[7];
  v9 = v1[6];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100121658;

  return sub_10011FE34(a1, v13, v12, v11, v10, v9, v8, v1 + v5);
}

uint64_t sub_100121658()
{

  sub_100002D8C();

  return v0();
}

id sub_1001217A4(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v7 = [v1 initWithBag:a1 clientIdentifier:v3 clientVersion:v4 placement:v5 serviceType:v6];
  swift_unknownObjectRelease();

  return v7;
}

_BYTE *storeEnumTagSinglePayload for JSMarketing.CacheError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1001219D8()
{
  result = qword_10026DDF0;
  if (!qword_10026DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DDF0);
  }

  return result;
}

uint64_t sub_100121A2C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = (*&v1[OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
  }

  else
  {
    v6 = 0;
  }

  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v7 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E5F60;
  v15 = type metadata accessor for JSMediaAPI();
  v14[0] = v1;
  v1;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v14);
  LogInterpolation.init(stringLiteral:)();
  v15 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  v14[0] = a1;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(v14, &qword_10026D350, &qword_1001E6050);
  v9 = static os_log_type_t.default.getter();
  sub_1000036B0(v9, v8);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v6;
  v11[4] = v5;
  v11[5] = a1;
  v11[6] = ObjectType;

  v12 = sub_10011F39C("lookup(_:)", 0xAuLL, 2, sub_1001241B4, v11);

  return v12;
}

void sub_100121CD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a5;
  v69 = a6;
  v75 = a3;
  v65 = a2;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v67 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for JSCallable();
  v66 = *(v14 - 8);
  v15 = *(v66 + 64);
  __chkstk_darwin(v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v64 = v11;
    v19 = a8;
    if (*(*(Strong + OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48))
    {
      sub_100052D94(a7, &v70);
      if (v71)
      {
        if (swift_dynamicCast())
        {
          v20 = v74;
          v63 = v73;
          sub_100052D94(a7, &v70);
          if (v71)
          {
            if (swift_dynamicCast())
            {
              v59 = v73;
              v60 = v74;
              sub_100052D94(a7, &v70);
              v62 = v19;
              if (v71)
              {
                type metadata accessor for JSAccount();
                v21 = swift_dynamicCast();
                v22 = v73;
                if (!v21)
                {
                  v22 = 0;
                }

                v61 = v22;
              }

              else
              {
                sub_100009F5C(&v70, &qword_10026D350, &qword_1001E6050);
                v61 = 0;
              }

              sub_100052D94(a7, &v70);
              if (v71)
              {
                if (swift_dynamicCast())
                {
                  v63 = sub_100123608(v73, v74, v63, v20, v32, v33, v61);

LABEL_31:

LABEL_35:
                  v36 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v37 = v66;
                  v38 = *(v66 + 16);
                  v59 = (v66 + 16);
                  v60 = v38;
                  v38(&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v65, v14);
                  v39 = (*(v37 + 80) + 40) & ~*(v37 + 80);
                  v58 = *(v37 + 80);
                  v40 = v15 + v39;
                  v41 = v39;
                  v57 = v39;
                  v42 = (v40 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v43 = swift_allocObject();
                  v45 = v68;
                  v44 = v69;
                  v43[2] = v36;
                  v43[3] = v45;
                  v43[4] = v44;
                  v56 = *(v37 + 32);
                  v46 = v43 + v41;
                  v47 = v43;
                  v65 = v43;
                  v56(v46, v16, v14);
                  *(v47 + v42) = v62;
                  v48 = swift_allocObject();
                  v66 = v48;
                  swift_unknownObjectWeakInit();
                  v60(v16, v75, v14);
                  v49 = swift_allocObject();
                  v50 = v68;
                  *(v49 + 2) = v48;
                  *(v49 + 3) = v50;
                  *(v49 + 4) = v69;
                  v56(&v49[v57], v16, v14);
                  *&v49[v42] = v62;
                  v51 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
                  v52 = v67;
                  v53 = v64;
                  (*(v67 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v64);
                  swift_bridgeObjectRetain_n();

                  v54 = static OS_dispatch_queue.global(qos:)();
                  (*(v52 + 8))(v13, v53);
                  v71 = v51;
                  v72 = &protocol witness table for OS_dispatch_queue;
                  *&v70 = v54;
                  Promise.then(perform:orCatchError:on:)();

                  sub_100002C00(&v70);

                  return;
                }
              }

              else
              {
                sub_100009F5C(&v70, &qword_10026D350, &qword_1001E6050);
              }

              sub_100052D94(a7, &v70);
              if (v71)
              {
                if (swift_dynamicCast())
                {
                  v63 = sub_100123AE4(v73, v63, v20, v59, v60, v61);

                  goto LABEL_31;
                }
              }

              else
              {

                sub_100009F5C(&v70, &qword_10026D350, &qword_1001E6050);
              }

              sub_10007B9A4(&qword_10026DE40, &unk_1001ED550);
              v34 = String._bridgeToObjectiveC()();
              v35 = AMSError();

              v63 = Promise.__allocating_init(error:)();
              goto LABEL_35;
            }
          }

          else
          {

            sub_100009F5C(&v70, &qword_10026D350, &qword_1001E6050);
          }

          sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1001E61B0;
          v29 = 0x80000001001FBDD0;
          *(v28 + 56) = &type metadata for String;
          v30 = 0xD00000000000001ALL;
          goto LABEL_20;
        }
      }

      else
      {
        sub_100009F5C(&v70, &qword_10026D350, &qword_1001E6050);
      }

      sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1001E61B0;
      v29 = 0x80000001001FBDB0;
      *(v28 + 56) = &type metadata for String;
      v30 = 0xD00000000000001DLL;
    }

    else
    {
      sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1001E61B0;
      v29 = 0x80000001001FBE10;
      *(v28 + 56) = &type metadata for String;
      v30 = 0xD000000000000016;
    }

LABEL_20:
    *(v28 + 32) = v30;
    *(v28 + 40) = v29;
    v31 = JSCallable.call(_:)();

    if (!v8)
    {
    }

    return;
  }

  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1001E5F70;
  static LogInterpolation.prefix<A>(_:_:)();
  LogInterpolation.init(stringLiteral:)();
  v24 = static os_log_type_t.error.getter();
  sub_1000036B0(v24, v23);

  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1001E61B0;
  type metadata accessor for JSError();
  v26 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
  v27 = sub_100051018();

  *(v25 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v25 + 32) = v27;
  sub_10005C768(v25);
}

void *sub_10012275C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v8 = type metadata accessor for JSCallable();
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  __chkstk_darwin(v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v32 = type metadata accessor for JSMediaAPI();
    *&v31 = v12;
    sub_100002C4C(&v31, &v29);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v29 = a6;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v29);
  LogInterpolation.init(stringLiteral:)();
  v13 = static os_log_type_t.default.getter();
  sub_1000036B0(v13, v10);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_10011F068("lookup(_:)", 10, 2, &v29);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v29, MetatypeMetadata);
      v17 = v27;
      v16 = v28;
      v18 = v24;
      (*(v27 + 16))(v24, v25, v28);
      v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v20 = swift_allocObject();
      (*(v17 + 32))(v20 + v19, v18, v16);
      v21 = v26;
      *(v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
      v22 = v21;
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v29);
    }

    else
    {
      return sub_100009F5C(&v29, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_100122AC8(uint64_t a1, void *a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  v4 = sub_1001240DC(a2);
  *(v3 + 56) = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if (!v4)
  {
    v4 = Dictionary.init(dictionaryLiteral:)();
  }

  *(v3 + 32) = v4;
  sub_10005C768(v3);
}

void *sub_100122B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v25 = a1;
  v7 = type metadata accessor for JSCallable();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v21 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v29 = type metadata accessor for JSMediaAPI();
    *&v28 = v11;
    sub_100002C4C(&v28, &v26);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v26 = a6;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v26);
  LogInterpolation.init(stringLiteral:)();
  v12 = static os_log_type_t.error.getter();
  sub_1000036B0(v12, v9);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10011F068("lookup(_:)", 10, 2, &v26);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v26, MetatypeMetadata);
      v15 = v23;
      v16 = v21;
      v17 = v24;
      (*(v23 + 16))(v21, v22, v24);
      v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v19 = swift_allocObject();
      (*(v15 + 32))(v19 + v18, v16, v17);
      *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v26);
    }

    else
    {
      return sub_100009F5C(&v26, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

id sub_100122F88(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  Hasher.init()();
  String.hash(into:)();
  if (a3)
  {
    v8 = *&a3[OBJC_IVAR____TtC14amsengagementd9JSAccount_account];
    v9 = a3;
    v10 = [v8 identifier];
    if (v10)
    {
      v11 = v10;
      Hasher._combine(_:)(1u);
      v12 = v11;
      NSObject.hash(into:)();

      v9 = v12;
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  v13 = [objc_allocWithZone(NSNumber) initWithInteger:Hasher.finalize()()];
  v14 = OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_encoders;
  v15 = *(v4 + OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_encoders);
  v16 = v13;
  v17 = [v15 objectForKey:v16];
  if (!v17)
  {
    v18 = sub_100123C20(a1, a2);
    if (qword_1002685F8 != -1)
    {
      sub_100006DAC(&qword_1002685F8);
    }

    v19 = [objc_allocWithZone(AMSMediaRequestEncoder) initWithTokenService:v18 bag:qword_10026A070];
    if (a3)
    {
      a3 = *&a3[OBJC_IVAR____TtC14amsengagementd9JSAccount_account];
    }

    [v19 setAccount:a3];

    v20 = [objc_allocWithZone(AMSMediaResponseDecoder) init];
    [v19 setResponseDecoder:v20];

    v21 = *(v4 + v14);
    v17 = v19;
    [v21 setObject:v17 forKey:v16];
  }

  return v17;
}

uint64_t sub_1001231CC(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v27 = a1;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v25 = v6;
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.utility(_:), v13);
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v16, v13);
  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v7 + 8);
  v18(v10, v6);
  v19 = swift_allocObject();
  *(v19 + 16) = v27;
  aBlock[4] = nullsub_1;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_10024D1F0;
  v20 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10004DE28();
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  v21 = v28;
  v22 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v32 + 8))(v21, v22);
  (*(v30 + 8))(v5, v31);
  v18(v12, v25);
}

uint64_t sub_100123608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v41 = a7;
  v42 = a3;
  v43 = a4;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for DispatchTimeInterval();
  sub_100002CC4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10007B9A4(&qword_10026BD40, &unk_1001E9F70);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for URLComponents();
  sub_100002CC4();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(string:)();
  if (sub_100009F34(v15, 1, v16) == 1)
  {
    sub_100009F5C(v15, &qword_10026BD40, &unk_1001E9F70);
    sub_10007B9A4(&qword_10026DE40, &unk_1001ED550);
    v22 = String._bridgeToObjectiveC()();
    v23 = String._bridgeToObjectiveC()();
    v24 = AMSError();

    return Promise.__allocating_init(error:)();
  }

  else
  {
    v39 = v21;
    v40 = v18;
    (*(v18 + 32))(v21, v15, v16);
    v26 = sub_100122F88(v42, v43, v41);
    v27 = sub_100123D5C();
    *v12 = 3;
    v28 = enum case for DispatchTimeInterval.seconds(_:);
    v43 = v16;
    v29 = *(v9 + 104);
    v29(v12, enum case for DispatchTimeInterval.seconds(_:), v7);
    v30 = v26;
    sub_1001231CC(v30, v12);

    v31 = *(v9 + 8);
    v31(v12, v7);
    *v12 = 3;
    v29(v12, v28, v7);
    v32 = v27;
    sub_1001231CC(v32, v12);

    v31(v12, v7);
    v33 = v39;
    isa = URLComponents._bridgeToObjectiveC()().super.isa;
    v35 = [v30 requestWithComponents:isa];

    sub_10007B9A4(&unk_100271830, &unk_1001F0A50);
    v36 = [v32 dataTaskPromiseWithRequestPromise:v35];
    Promise<A>.init(_:)();
    v45[3] = type metadata accessor for SyncTaskScheduler();
    v45[4] = &protocol witness table for SyncTaskScheduler;
    sub_100017E64(v45);
    SyncTaskScheduler.init()();
    sub_100002BC0(0, &qword_10026DE48, AMSMediaResult_ptr);
    v25 = Promise.map<A>(on:_:)();

    (*(v40 + 8))(v33, v43);
    sub_100002C00(v45);
  }

  return v25;
}

id sub_100123A60@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    result = v3;
  }

  else
  {
    result = [objc_allocWithZone(AMSMediaResult) initWithResult:v3];
    v5 = result;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100123AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = qword_1002685F8;

  if (v12 != -1)
  {
    sub_100006DAC(&qword_1002685F8);
  }

  v13 = qword_10026A070;
  objc_allocWithZone(AMSMediaTask);
  swift_unknownObjectRetain();
  v14 = sub_10012402C(a1, a2, a3, a4, a5, v13);
  if (a6)
  {
    v15 = *(a6 + OBJC_IVAR____TtC14amsengagementd9JSAccount_account);
  }

  else
  {
    v15 = 0;
  }

  [v14 setAccount:v15];

  sub_10007B9A4(&qword_10026DE40, &unk_1001ED550);
  v16 = [v14 perform];
  v17 = Promise<A>.init(_:)();

  return v17;
}

id sub_100123C20(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_tokenServices;
  v4 = *(v2 + OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_tokenServices);
  sub_100003B80();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v7 = qword_1002685F8;

    if (v7 != -1)
    {
      sub_100006DAC(&qword_1002685F8);
    }

    v8 = qword_10026A070;
    v9 = objc_allocWithZone(AMSMediaTokenService);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v10 = sub_100003B80();
    v12 = sub_100124148(v10, v11, v8, v9);
    v13 = *(v2 + v3);
    v6 = v12;
    sub_100003B80();
    v14 = String._bridgeToObjectiveC()();
    [v13 setObject:v6 forKey:v14];
  }

  return v6;
}

id sub_100123D5C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_urlSessions;
  v3 = *(v0 + OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_urlSessions);
  sub_100003B80();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = sub_100003B80();
    v8 = sub_100123C20(v6, v7);
    v9 = (*(v1 + OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config);
    v10 = v9[3];
    v12 = *v9;
    v11 = v9[1];
    v23[2] = v9[2];
    v23[3] = v10;
    v23[0] = v12;
    v23[1] = v11;
    v13 = objc_allocWithZone(type metadata accessor for AppURLSession());
    sub_10000F4A4(v23, &v22);
    v14 = sub_100026AEC(v23);
    v15 = objc_allocWithZone(AMSMediaProtocolHandler);
    v16 = v14;
    v17 = [v15 initWithTokenService:v8];
    [v16 setProtocolHandler:v17];

    v18 = *(v1 + v2);
    v5 = v16;
    v19 = v18;
    sub_100003B80();
    v20 = String._bridgeToObjectiveC()();
    [v19 setObject:v5 forKey:v20];
  }

  return v5;
}

void sub_100123F2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd10JSMediaAPI_urlSessions);
}

id sub_100123F8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMediaAPI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10012402C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [v6 initWithType:a1 clientIdentifier:v9 clientVersion:v10 bag:a6];

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_1001240DC(void *a1)
{
  v1 = [a1 responseDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_100124148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [a4 initWithClientIdentifier:v6 bag:a3];

  swift_unknownObjectRelease();
  return v7;
}

void *sub_1001241D8()
{
  v0 = type metadata accessor for JSCallable();
  sub_100002CFC(v0);
  v1 = sub_10000C04C();

  return sub_10012275C(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_100124258()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CC4();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

void *sub_100124324()
{
  v0 = type metadata accessor for JSCallable();
  sub_100002CFC(v0);
  v1 = sub_10000C04C();

  return sub_100122B98(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1001243D4(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = type metadata accessor for JSCallable();
  sub_100002CFC(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v7, v8);
}

uint64_t sub_10012446C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1002685E0 != -1)
  {
    sub_10000B984(&qword_1002685E0);
  }

  v7 = qword_100287770;
  v8 = (*(v3 + OBJC_IVAR____TtC14amsengagementd18JSMediaCatalogSync_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100004C9C();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = v9;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = v7;

  v13 = a3;

  sub_10000AC50();
  v18 = sub_10011F39C(v14, v15, v16, v17, v12);

  return v18;
}

uint64_t sub_1001245B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v49 = a7;
  v50 = a8;
  v52 = a5;
  v46 = a2;
  v47 = a3;
  v48 = type metadata accessor for JSCallable();
  v12 = *(v48 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v48);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v17 - 8);
  v19 = &v39 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v51 = a10;
    v43 = a9;
    v22 = type metadata accessor for TaskPriority();
    v44 = v19;
    sub_10000A7C0(v19, 1, 1, v22);
    v45 = v10;
    v40 = a6;
    v41 = v16;
    v23 = *(v12 + 16);
    v24 = v16;
    v25 = v48;
    v23(v24, v46, v48);
    v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23(v42, v47, v25);
    v26 = *(v12 + 80);
    v27 = (v26 + 88) & ~v26;
    v28 = (v13 + v26 + v27) & ~v26;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = v50;
    *(v29 + 4) = v49;
    *(v29 + 5) = v30;
    v31 = v43;
    *(v29 + 6) = v43;
    *(v29 + 7) = v21;
    v32 = v52;
    *(v29 + 8) = v51;
    *(v29 + 9) = v32;
    v33 = v41;
    *(v29 + 10) = v40;
    v34 = *(v12 + 32);
    v34(&v29[v27], v33, v25);
    v34(&v29[v28], v42, v25);

    v35 = v31;

    sub_1000E349C();
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1001E5F70;
    type metadata accessor for JSMediaCatalogSync();
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v38 = static os_log_type_t.error.getter();
    sub_1000036B0(v38, v37);
  }
}

uint64_t sub_100124998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v14;
  *(v8 + 352) = v15;
  *(v8 + 328) = v13;
  *(v8 + 312) = a7;
  *(v8 + 320) = a8;
  *(v8 + 296) = a5;
  *(v8 + 304) = a6;
  *(v8 + 288) = a4;
  v9 = type metadata accessor for JSCallable();
  *(v8 + 360) = v9;
  v10 = *(v9 - 8);
  *(v8 + 368) = v10;
  *(v8 + 376) = *(v10 + 64);
  *(v8 + 384) = swift_task_alloc();
  sub_10007B9A4(&qword_100269AB8, &qword_1001E6680);
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();

  return _swift_task_switch(sub_100124AC4, 0, 0);
}

uint64_t sub_100124AC4()
{

  sub_1000D00A8();
  *(v0 + 408) = v1;
  sub_1001256E0(*(v0 + 304), *(v0 + 400));
  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  v2 = *(v0 + 312);
  *(v0 + 416) = qword_100287848;
  *(v0 + 424) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  *(v0 + 432) = *(v4 + 72);
  *(v0 + 472) = *(v5 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E5F60;
  v7 = type metadata accessor for JSMediaCatalogSync();
  *(v0 + 440) = v7;
  *(v0 + 184) = v7;
  *(v0 + 160) = v2;
  v8 = v2;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = *(v0 + 392);
  v12 = *(v0 + 400);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 160));
  LogInterpolation.init(stringLiteral:)();
  sub_100126B04(v12, v11);
  v13 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  v14 = sub_100009F34(v11, 1, v13);
  v15 = *(v0 + 392);
  if (v14 == 1)
  {
    sub_100009F5C(*(v0 + 392), &qword_100269AB8, &qword_1001E6680);
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
  }

  else
  {
    *(v0 + 216) = v13;
    v16 = sub_100017E64((v0 + 192));
    sub_1000E0B38(v15, v16);
  }

  static LogInterpolation.safe(_:)();
  sub_100009F5C(v0 + 192, &qword_10026D350, &qword_1001E6050);
  v17 = static os_log_type_t.default.getter();
  sub_1000036B0(v17, v6);

  v18 = swift_task_alloc();
  *(v0 + 448) = v18;
  *v18 = v0;
  v18[1] = sub_100125048;
  sub_100003DC0();

  return sub_100093F28(v19, v20, v21, v22);
}

uint64_t sub_100125048()
{
  sub_100002D98();
  *v3 = v2;
  v4 = *v1;
  sub_100002D98();
  *v5 = v4;
  *(v7 + 476) = v6;
  *(v7 + 456) = v8;
  *(v7 + 464) = v0;

  if (v0)
  {
    v9 = sub_100125414;
  }

  else
  {
    v9 = sub_100125180;
  }

  return _swift_task_switch(v9, 0, 0);
}

void sub_100125180()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 312);
  v3 = swift_allocObject();
  *(v0 + 224) = v2;
  *(v3 + 16) = xmmword_1001E5F70;
  *(v0 + 248) = v1;
  v2;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00((v0 + 224));
  LogInterpolation.init(stringLiteral:)();
  v4 = static os_log_type_t.default.getter();
  sub_1000036B0(v4, v3);

  sub_10000AC50();
  sub_10011F068(v5, v6, v7, v8);
  v9 = *(v0 + 80);
  if (v9)
  {
    v21 = *(v0 + 476);
    v10 = *(v0 + 456);
    v12 = *(v0 + 376);
    v11 = *(v0 + 384);
    v13 = *(v0 + 360);
    v14 = *(v0 + 368);
    v15 = *(v0 + 344);
    v22 = *(v0 + 400);
    sub_100003CA8((v0 + 56), v9);
    (*(v14 + 16))(v11, v15, v13);
    v16 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v17 = swift_allocObject();
    (*(v14 + 32))(v17 + v16, v11, v13);
    v18 = v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v18 = v10;
    *(v18 + 8) = v21;
    dispatch thunk of TaskScheduler.schedule(task:)();

    sub_100009F5C(v22, &qword_100269AB8, &qword_1001E6680);
    sub_100002C00((v0 + 56));
  }

  else
  {
    sub_100009F5C(*(v0 + 400), &qword_100269AB8, &qword_1001E6680);

    sub_100009F5C(v0 + 56, &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_100002D8C();
  sub_100003DC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100125414()
{
  sub_100009F5C(v0[50], &qword_100269AB8, &qword_1001E6680);
  v2 = v0[58];
  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  v3 = v0[39];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  v6 = *(v5 + 72);
  sub_10000760C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F60;
  v0[15] = type metadata accessor for JSMediaCatalogSync();
  v0[12] = v3;
  v8 = v3;
  sub_10000805C();
  sub_100002C00(v0 + 12);
  sub_100006514();
  v9 = v7 + v1 + 2 * v6;
  swift_getErrorValue();
  v10 = v0[32];
  v11 = v0[33];
  v0[19] = v11;
  v12 = sub_100017E64(v0 + 16);
  (*(*(v11 - 8) + 16))(v12, v10, v11);
  static LogInterpolation.safe(_:)();
  sub_100009F5C((v0 + 16), &qword_10026D350, &qword_1001E6050);
  v13 = static os_log_type_t.error.getter();
  sub_1000036B0(v13, v7);

  sub_10000AC50();
  sub_10011F068(v14, v15, v16, v17);
  v18 = v0[5];
  if (v18)
  {
    sub_10000AFB0();
    sub_100003CA8(v0 + 2, v18);
    v19 = sub_100005988();
    v20(v19);
    sub_10000848C();
    v21 = swift_allocObject();
    v22 = sub_100023E2C(v21);
    v23(v22);
    *(v9 + v6) = v2;
    swift_errorRetain();
    sub_1000032A0();
    dispatch thunk of TaskScheduler.schedule(task:)();

    sub_100002C00(v0 + 2);
  }

  else
  {

    sub_100009F5C((v0 + 2), &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_100002D8C();

  return v24();
}

uint64_t sub_1001256E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isNull])
  {
    goto LABEL_9;
  }

  v12 = JSValue.subscript.getter();
  v33 = a2;
  v13 = v12;
  JSValue.string.getter();
  v15 = v14;

  a2 = v33;
  if (!v15)
  {
    goto LABEL_9;
  }

  URL.init(string:)();

  if (sub_100009F34(v7, 1, v8) == 1)
  {
    sub_100009F5C(v7, &unk_10026FEE0, &unk_1001E67C0);
LABEL_9:
    v24 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
    v25 = a2;
    v26 = 1;
    return sub_10000A7C0(v25, v26, 1, v24);
  }

  v16 = *(v9 + 32);
  v16(v11, v7, v8);
  v17 = JSValue.subscript.getter();
  JSValue.string.getter();
  v19 = v18;

  if (!v19)
  {
    (*(v9 + 8))(v11, v8);
    a2 = v33;
    goto LABEL_9;
  }

  v20 = sub_1000D00A8();
  if (v2)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = v33;
  v16(v33, v11, v8);
  v24 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  v31 = v30 + *(v24 + 20);
  *v31 = v27;
  *(v31 + 8) = v28;
  *(v31 + 16) = v29;
  v25 = v30;
  v26 = 0;
  return sub_10000A7C0(v25, v26, 1, v24);
}

uint64_t sub_1001259AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E61B0;
  v6 = sub_100125A58(a2, v3);
  *(v5 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v5 + 32) = v6;
  sub_10005C768(v5);
}

uint64_t sub_100125A58(uint64_t a1, int a2)
{
  v38 = type metadata accessor for MediaCatalogSyncPage(0);
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  v7 = inited;
  v41 = xmmword_1001E5F70;
  *(inited + 16) = xmmword_1001E5F70;
  *(inited + 32) = 0x7365676170;
  *(inited + 40) = 0xE500000000000000;
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v33 = inited;
    v34 = a2;
    v44 = _swiftEmptyArrayStorage;
    sub_10009B7C0(0, v8, 0);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = v44;
    v35 = *(v4 + 72);
    v36 = 0x80000001001F6870;
    v11 = &type metadata for String;
    do
    {
      v39 = v9;
      v12 = v40;
      sub_1000955FC(v10, v40);
      v13 = swift_initStackObject();
      *(v13 + 16) = v41;
      *(v13 + 32) = 0x73746E65746E6F63;
      *(v13 + 40) = 0xE800000000000000;
      v14 = (v12 + *(v38 + 20));
      v15 = v14[1];
      *(v13 + 48) = *v14;
      *(v13 + 56) = v15;
      v16 = v11;
      *(v13 + 72) = v11;
      *(v13 + 80) = 0x617461646174656DLL;
      *(v13 + 88) = 0xE800000000000000;
      sub_10007B9A4(&qword_10026DE80, &qword_1001ED5A8);
      v17 = swift_initStackObject();
      *(v17 + 16) = v41;
      v18 = 0xE700000000000000;
      *(v17 + 32) = 0x4C5255656C6966;
      *(v17 + 40) = 0xE700000000000000;

      *(v17 + 48) = URL.absoluteString.getter();
      *(v17 + 56) = v19;
      *(v17 + 64) = 0xD000000000000015;
      *(v17 + 72) = v36;
      v20 = (v12 + *(type metadata accessor for MediaCatalogSyncPageMetadata(0) + 20));
      v21 = *v20;
      v22 = *(v20 + 2);
      v42 = *(v20 + 1);
      v43 = v22;

      v23._countAndFlagsBits = 95;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      if (v21)
      {
        if (v21 == 1)
        {
          v18 = 0xE400000000000000;
          v24 = 1936748641;
        }

        else
        {
          v24 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v24 = 0x7373656E746966;
      }

      v11 = v16;
      v9 = v39;
      v25 = v18;
      String.append(_:)(*&v24);

      v26 = v43;
      *(v17 + 80) = v42;
      *(v17 + 88) = v26;
      v27 = Dictionary.init(dictionaryLiteral:)();
      *(v13 + 120) = sub_10007B9A4(&qword_10026A790, &qword_1001ED5B0);
      *(v13 + 96) = v27;
      v28 = Dictionary.init(dictionaryLiteral:)();
      sub_100095660(v40);
      v44 = v9;
      v30 = v9[2];
      v29 = v9[3];
      if (v30 >= v29 >> 1)
      {
        sub_10009B7C0((v29 > 1), v30 + 1, 1);
        v9 = v44;
      }

      v9[2] = v30 + 1;
      v9[v30 + 4] = v28;
      v10 += v35;
      --v8;
    }

    while (v8);
    LOBYTE(a2) = v34;
    v7 = v33;
  }

  v31 = sub_10007B9A4(&qword_10026D6D8, &qword_1001ECB70);
  *(v7 + 48) = v9;
  *(v7 + 72) = v31;
  *(v7 + 80) = 0x6552646C756F6873;
  *(v7 + 88) = 0xEB00000000746573;
  *(v7 + 120) = &type metadata for Bool;
  *(v7 + 96) = a2 & 1;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100125EF8(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = (*&v2[OBJC_IVAR____TtC14amsengagementd18JSMediaCatalogSync_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
  }

  else
  {
    v10 = 0;
  }

  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  v22 = qword_100287848;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v11 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001E5F70;
  v25 = type metadata accessor for JSMediaCatalogSync();
  v24[0] = v2;
  v13 = v2;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v24);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._object = 0x80000001001FBF10;
  v14._countAndFlagsBits = 0xD000000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  v25 = &type metadata for String;
  v15 = v23;
  v24[0] = v23;
  v24[1] = a2;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(v24, &qword_10026D350, &qword_1001E6050);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  LogInterpolation.init(stringInterpolation:)();
  v17 = static os_log_type_t.default.getter();
  sub_1000036B0(v17, v12);

  v18 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v6, 1, 1, v18);
  sub_100004C9C();
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v15;
  v19[5] = a2;
  v19[6] = v13;
  v19[7] = v10;
  v19[8] = v9;
  v20 = v13;

  sub_1001A1E8C(0, 0, v6, &unk_1001ED588, v19);
}

uint64_t sub_100126204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  return _swift_task_switch(sub_10012622C, 0, 0);
}

uint64_t sub_10012622C()
{
  if (qword_1002685E0 != -1)
  {
    sub_10000B984(&qword_1002685E0);
  }

  v1 = sub_1000D00A8();
  *(v0 + 88) = v2;
  v3 = v1;
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_100126364;

  return sub_10009426C(v3, v5, v6);
}

uint64_t sub_100126364()
{
  sub_100004768();
  v2 = *v1;
  sub_100002D98();
  *v3 = v2;
  v4 = *v1;
  sub_100002D98();
  *v5 = v4;
  *(v2 + 104) = v0;

  if (v0)
  {
    v6 = sub_100126600;
  }

  else
  {

    v6 = sub_100126474;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100126474()
{
  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  v1 = v0[8];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F70;
  v0[5] = type metadata accessor for JSMediaCatalogSync();
  v0[2] = v1;
  v4 = v1;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v0 + 2);
  LogInterpolation.init(stringLiteral:)();
  v5 = static os_log_type_t.default.getter();
  sub_1000036B0(v5, v3);

  sub_100002D8C();

  return v6();
}

uint64_t sub_100126600()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

id sub_100126714()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMediaCatalogSync();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100126758()
{
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100126828;
  sub_10000C42C();

  return sub_100126204(v4, v5, v6, v7, v8, v9, v10, v2);
}

uint64_t sub_100126828()
{
  sub_100004768();
  v1 = *v0;
  sub_100002D98();
  *v2 = v1;

  sub_100002D8C();

  return v3();
}

uint64_t sub_100126944()
{
  v2 = type metadata accessor for JSCallable();
  sub_100002CFC(v2);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100126828;
  sub_10000C42C();

  return sub_100124998(v5, v6, v7, v8, v9, v10, v11, v3);
}

uint64_t sub_100126A90()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  sub_10000A42C();
  v4 = *(v0 + v3);

  return sub_100104450(v0 + v2, v4);
}

uint64_t sub_100126B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269AB8, &qword_1001E6680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100126B74()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  sub_10000A42C();
  v4 = v0 + v3;
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1001259AC(v0 + v2, v5, v6);
}

uint64_t sub_100126BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  sub_1000056F8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E5F60;
  v10 = type metadata accessor for JSMetrics();
  v11 = *&v4[OBJC_IVAR____TtC14amsengagementd9JSMetrics_runtime];
  v21 = v10;
  v20[0] = v4;
  if (*(v11 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  v4;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v20);
  LogInterpolation.init(stringLiteral:)();
  v21 = &type metadata for String;
  v20[0] = a1;
  v20[1] = a2;

  static LogInterpolation.safe(_:)();
  sub_100009F5C(v20, &qword_10026D350, &qword_1001E6050);
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12, v9);

  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_10007B9A4(&qword_100269FD0, &qword_1001E7538);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001E61B0;
  *(v14 + 32) = a3;
  *(inited + 72) = sub_10007B9A4(&qword_10026D6D8, &qword_1001ECB70);
  *(inited + 48) = v14;

  v15 = Dictionary.init(dictionaryLiteral:)();
  sub_10005B634(v15, a4);
  v17 = v16;

  return v17;
}

void sub_100126FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v57 = a7;
  v61 = a6;
  v55 = a2;
  v12 = type metadata accessor for JSCallable();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  __chkstk_darwin(v12);
  v60 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v58 = v12;
    v59 = a8;
    v53 = a3;
    v54 = v8;
    v17 = a5;
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1001E5F70;
    v65 = type metadata accessor for JSMetrics();
    aBlock = v16;
    v19 = v16;
    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&aBlock);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 0x6965756575716E45;
    v20._object = 0xEB0000000020676ELL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    v21 = sub_10004369C(v57);
    v65 = &type metadata for Int;
    aBlock = v21;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009F5C(&aBlock, &qword_10026D350, &qword_1001E6050);
    v22._object = 0x80000001001FC2E0;
    v22._countAndFlagsBits = 0xD000000000000011;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    LogInterpolation.init(stringInterpolation:)();
    v23 = static os_log_type_t.default.getter();
    sub_1000036B0(v23, v18);

    if (qword_100268600 != -1)
    {
      swift_once();
    }

    v24 = qword_10026A078;
    sub_100002BC0(0, &qword_10026DEB8, AMSMetricsEvent_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v57 = [v24 promiseForEnqueueingEvents:isa];

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = v56;
    v49[0] = v19;
    v28 = *(v56 + 16);
    v51 = v56 + 16;
    v52 = v28;
    v29 = v60;
    v30 = v58;
    v28(v60, v53, v58);
    v31 = (*(v27 + 80) + 40) & ~*(v27 + 80);
    v50 = v31;
    v32 = (v13 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v33[2] = v26;
    v33[3] = v17;
    v53 = v17;
    v34 = v61;
    v33[4] = v61;
    v56 = *(v27 + 32);
    (v56)(v33 + v31, v29, v30);
    *(v33 + v32) = v59;
    v66 = sub_10012BF90;
    v67 = v33;
    aBlock = _NSConcreteStackBlock;
    v63 = 1107296256;
    v49[1] = &v64;
    v64 = sub_1000266E0;
    v65 = &unk_10024D7B8;
    v35 = _Block_copy(&aBlock);

    v36 = v49[0];

    [v57 addErrorBlock:v35];
    _Block_release(v35);
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v38 = v60;
    v39 = v58;
    v52(v60, v55, v58);
    v40 = swift_allocObject();
    v41 = v53;
    v40[2] = v37;
    v40[3] = v41;
    v40[4] = v34;
    (v56)(v40 + v50, v38, v39);
    *(v40 + v32) = v59;
    v66 = sub_10012BFA8;
    v67 = v40;
    aBlock = _NSConcreteStackBlock;
    v63 = 1107296256;
    v64 = sub_100005E50;
    v65 = &unk_10024D808;
    v42 = _Block_copy(&aBlock);

    v43 = v57;
    [v57 addSuccessBlock:v42];
    _Block_release(v42);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1001E5F70;
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v45 = static os_log_type_t.error.getter();
    sub_1000036B0(v45, v44);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v47 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
    v48 = sub_100051018();

    *(v46 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v46 + 32) = v48;
    sub_10005C768(v46);
  }
}

void *sub_1001277A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v25 = a1;
  v7 = type metadata accessor for JSCallable();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v21 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v29 = type metadata accessor for JSMetrics();
    *&v28 = v11;
    sub_100002C4C(&v28, &v26);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v26 = a6;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v26);
  LogInterpolation.init(stringLiteral:)();
  v12 = static os_log_type_t.error.getter();
  sub_1000036B0(v12, v9);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10011F068("enqueueBatch(_:_:)", 18, 2, &v26);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v26, MetatypeMetadata);
      v15 = v23;
      v16 = v21;
      v17 = v24;
      (*(v23 + 16))(v21, v22, v24);
      v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v19 = swift_allocObject();
      (*(v15 + 32))(v19 + v18, v16, v17);
      *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v26);
    }

    else
    {
      return sub_100009F5C(&v26, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

void *sub_100127B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v6 = type metadata accessor for JSCallable();
  v21 = *(v6 - 8);
  v22 = v6;
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v19 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v26 = type metadata accessor for JSMetrics();
    *&v25 = v10;
    sub_100002C4C(&v25, &v23);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v23 = a5;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v23);
  LogInterpolation.init(stringLiteral:)();
  v11 = static os_log_type_t.default.getter();
  sub_1000036B0(v11, v8);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_10011F068("enqueueBatch(_:_:)", 18, 2, &v23);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v23, MetatypeMetadata);
      v14 = v21;
      v15 = v19;
      v16 = v22;
      (*(v21 + 16))(v19, v20, v22);
      v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v18 = swift_allocObject();
      (*(v14 + 32))(v18 + v17, v15, v16);
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v23);
    }

    else
    {
      return sub_100009F5C(&v23, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_100127E5C()
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001E61B0;
  *(v0 + 56) = &type metadata for () + 1;
  sub_10005C768(v0);
}

uint64_t sub_100127ED4()
{
  ObjectType = swift_getObjectType();
  v2 = (*&v0[OBJC_IVAR____TtC14amsengagementd9JSMetrics_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
  }

  else
  {
    v4 = 0;
  }

  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v5);
  sub_1000056F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E5F70;
  v12[3] = type metadata accessor for JSMetrics();
  v12[0] = v0;
  v0;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v12);
  LogInterpolation.init(stringLiteral:)();
  v7 = static os_log_type_t.default.getter();
  sub_1000036B0(v7, v6);

  sub_100004AA0();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v4;
  v9[4] = v3;
  v9[5] = ObjectType;

  v10 = sub_10011F39C("flush()", 7uLL, 2, sub_10012BE14, v9);

  return v10;
}

void sub_1001280FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a2;
  v53 = a7;
  v11 = type metadata accessor for JSCallable();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (*(*(Strong + OBJC_IVAR____TtC14amsengagementd9JSMetrics_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48))
    {
      v50 = a5;
      v51 = a6;
      v48 = v7;
      if (qword_100268600 != -1)
      {
        swift_once();
      }

      v49 = [qword_10026A078 flush];
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = *(v12 + 16);
      v42 = v12 + 16;
      v47 = v18;
      v18(&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
      v19 = (*(v12 + 80) + 40) & ~*(v12 + 80);
      v45 = v19;
      v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      v23 = v50;
      v22 = v51;
      *(v21 + 2) = v17;
      *(v21 + 3) = v23;
      *(v21 + 4) = v22;
      v44 = *(v12 + 32);
      v46 = v12 + 32;
      v44(&v21[v19], v14, v11);
      *&v21[v20] = v53;
      v24 = v20;
      v58 = sub_10012BE34;
      v59 = v21;
      aBlock = _NSConcreteStackBlock;
      v55 = 1107296256;
      v43 = &v56;
      v56 = sub_1000266E0;
      v57 = &unk_10024D6A0;
      v25 = _Block_copy(&aBlock);
      v26 = v51;

      v27 = v16;
      v41 = v27;

      [v49 addErrorBlock:v25];
      _Block_release(v25);
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v47(v14, v52, v11);
      v29 = swift_allocObject();
      v30 = v50;
      *(v29 + 2) = v28;
      *(v29 + 3) = v30;
      *(v29 + 4) = v26;
      v44(&v29[v45], v14, v11);
      *&v29[v24] = v53;
      v58 = sub_10012BE4C;
      v59 = v29;
      aBlock = _NSConcreteStackBlock;
      v55 = 1107296256;
      v56 = sub_1000EA728;
      v57 = &unk_10024D6F0;
      v31 = _Block_copy(&aBlock);

      v32 = v49;
      [v49 addSuccessBlock:v31];
      _Block_release(v31);
    }

    else
    {
      sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1001E61B0;
      *(v38 + 56) = &type metadata for String;
      *(v38 + 32) = 0xD000000000000019;
      *(v38 + 40) = 0x80000001001FC2A0;
      v39 = JSCallable.call(_:)();

      if (!v7)
      {
      }
    }
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1001E5F70;
    type metadata accessor for JSMetrics();
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v34 = static os_log_type_t.error.getter();
    sub_1000036B0(v34, v33);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v36 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
    v37 = sub_100051018();

    *(v35 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v35 + 32) = v37;
    sub_10005C768(v35);
  }
}

void *sub_10012877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v25 = a1;
  v7 = type metadata accessor for JSCallable();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v21 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v29 = type metadata accessor for JSMetrics();
    *&v28 = v11;
    sub_100002C4C(&v28, &v26);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v26 = a6;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v26);
  LogInterpolation.init(stringLiteral:)();
  v12 = static os_log_type_t.error.getter();
  sub_1000036B0(v12, v9);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10011F068("flush()", 7, 2, &v26);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v26, MetatypeMetadata);
      v15 = v23;
      v16 = v21;
      v17 = v24;
      (*(v23 + 16))(v21, v22, v24);
      v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v19 = swift_allocObject();
      (*(v15 + 32))(v19 + v18, v16, v17);
      *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v26);
    }

    else
    {
      return sub_100009F5C(&v26, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

void *sub_100128AE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v27 = a1;
  v7 = type metadata accessor for JSCallable();
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  __chkstk_darwin(v7);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v31 = type metadata accessor for JSMetrics();
    *&v30 = v11;
    sub_100002C4C(&v30, &v28);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v28 = a6;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v28);
  LogInterpolation.init(stringLiteral:)();
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12, v9);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10011F068("flush()", 7, 2, &v28);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v28, MetatypeMetadata);
      v15 = v25;
      v16 = v23;
      v17 = v26;
      (*(v25 + 16))(v23, v24, v26);
      v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v19 = swift_allocObject();
      (*(v15 + 32))(v19 + v18, v16, v17);
      v20 = v27;
      *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
      v21 = v20;
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v28);
    }

    else
    {
      return sub_100009F5C(&v28, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

uint64_t sub_100128E58(uint64_t a1, void *a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  *(v3 + 56) = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  *(v3 + 32) = a2;
  v4 = a2;
  sub_10005C768(v3);
}

void sub_100128F38()
{
  sub_100003D74();
  v25 = v1;
  v3 = v2;
  v23 = v4;
  v24 = v5;
  v7 = v6;
  v26 = v8;
  swift_getObjectType();
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = sub_100003D10(v9);
  __chkstk_darwin(v10);
  sub_100002DEC();
  v11 = (*&v0[OBJC_IVAR____TtC14amsengagementd9JSMetrics_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v22 = v11[1];
  if (v22)
  {
    v21 = *v11;
  }

  else
  {
    v21 = 0;
  }

  if (qword_1002686E8 != -1)
  {
    sub_100006D40();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v12 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v12);
  sub_1000056F8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001E5F70;
  v29 = type metadata accessor for JSMetrics();
  v27 = v0;
  v0;
  v14 = AMSLogKey();
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v27);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x80000001001FC1E0;
  v16._countAndFlagsBits = 0xD000000000000027;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  v29 = &type metadata for String;
  v27 = v23;
  v28 = v7;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&v27, &qword_10026D350, &qword_1001E6050);
  sub_100008080();
  v29 = &type metadata for String;
  v27 = v24;
  v28 = v3;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&v27, &qword_10026D350, &qword_1001E6050);
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  LogInterpolation.init(stringInterpolation:)();
  v18 = static os_log_type_t.default.getter();
  sub_1000036B0(v18, v13);

  sub_100004AA0();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v22;
  v20[5] = v26;
  v20[6] = v23;
  v20[7] = v7;
  v20[8] = v24;
  v20[9] = v3;
  sub_10000AFC4(v20, v25);

  sub_10011F39C("loadIdentifier(_:_:_:_:)", 0x18uLL, 2, sub_10012BB94, v20);

  sub_100005F14();
}

void sub_1001292A8(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v62 = a3;
  v63 = a5;
  v58 = a2;
  v16 = type metadata accessor for JSCallable();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v61 = a6;
    v53 = v16;
    if (a7)
    {
      a7 = *&a7[OBJC_IVAR____TtC14amsengagementd9JSAccount_account];
    }

    v60 = a13;
    v55 = a12;
    v56 = a11;
    v57 = v13;
    v54 = a10;
    v21 = objc_opt_self();
    v22 = String._bridgeToObjectiveC()();
    if (qword_1002685F8 != -1)
    {
      swift_once();
    }

    v59 = [v21 identifierStoreWithAccount:a7 bagNamespace:v22 bag:qword_10026A070];

    v23 = swift_allocObject();
    v49[0] = v20;
    swift_unknownObjectWeakInit();
    v24 = v17;
    v25 = *(v17 + 16);
    v51 = v17 + 16;
    v52 = v25;
    v26 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v53;
    v25(v26, v62, v53);
    v28 = *(v24 + 80);
    v29 = (v28 + 40) & ~v28;
    v50 = v18 + 7;
    v30 = swift_allocObject();
    v31 = v63;
    *(v30 + 2) = v23;
    *(v30 + 3) = v31;
    *(v30 + 4) = v61;
    v62 = *(v24 + 32);
    v62(&v30[v29], v26, v27);
    *&v30[(v18 + 7 + v29) & 0xFFFFFFFFFFFFFFF8] = v60;
    v68 = sub_10012BC14;
    v69 = v30;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v49[1] = &v66;
    v66 = sub_1000266E0;
    v67 = &unk_10024D588;
    v32 = _Block_copy(&aBlock);

    v33 = v49[0];

    [v59 addErrorBlock:v32];
    _Block_release(v32);
    v34 = swift_allocObject();
    v49[0] = v33;
    swift_unknownObjectWeakInit();

    v35 = v26;
    v52(v26, v58, v27);
    v36 = (v28 + 64) & ~v28;
    v37 = (v50 + v36) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v39 = v56;
    *(v38 + 16) = v54;
    *(v38 + 24) = v39;
    *(v38 + 32) = v55 & 1;
    v40 = v62;
    v41 = v63;
    *(v38 + 40) = v34;
    *(v38 + 48) = v41;
    *(v38 + 56) = v61;
    v40((v38 + v36), v35, v27);
    *(v38 + v37) = v60;
    v68 = sub_10012BCCC;
    v69 = v38;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_10008E0EC;
    v67 = &unk_10024D5D8;
    v42 = _Block_copy(&aBlock);

    v43 = v59;
    [v59 addSuccessBlock:v42];
    _Block_release(v42);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1001E5F70;
    type metadata accessor for JSMetrics();
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v45 = static os_log_type_t.error.getter();
    sub_1000036B0(v45, v44);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v47 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
    v48 = sub_100051018();

    *(v46 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v46 + 32) = v48;
    sub_10005C768(v46);
  }
}

void *sub_10012994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v33 = a1;
  v7 = type metadata accessor for JSCallable();
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  __chkstk_darwin(v7);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  v32 = qword_100287848;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v39 = type metadata accessor for JSMetrics();
    *&v38 = v12;
    sub_100002C4C(&v38, &v34);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v34 = a6;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v34);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001001FC250;
  v13._countAndFlagsBits = 0xD000000000000023;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v33;
  swift_getErrorValue();
  v15 = v36;
  v16 = v37;
  MetatypeMetadata = v37;
  v17 = sub_100017E64(&v34);
  (*(*(v16 - 8) + 16))(v17, v15, v16);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&v34, &qword_10026D350, &qword_1001E6050);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  LogInterpolation.init(stringInterpolation:)();
  v19 = static os_log_type_t.error.getter();
  sub_1000036B0(v19, v10);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_10011F068("loadIdentifier(_:_:_:_:)", 24, 2, &v34);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v34, MetatypeMetadata);
      v22 = v30;
      v23 = v28;
      v24 = v31;
      (*(v30 + 16))(v28, v29, v31);
      v25 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v26 = swift_allocObject();
      (*(v22 + 32))(v26 + v25, v23, v24);
      *(v26 + ((v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(&v34);
    }

    else
    {
      return sub_100009F5C(&v34, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

void sub_100129DA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a8;
  v37 = a7;
  v9 = a4;
  v13 = type metadata accessor for JSCallable();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  __chkstk_darwin(v13);
  v33 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  sub_100002BC0(0, &qword_100271750, AMSMetricsIdentifierKey_ptr);

  v38 = sub_1001AF320(a2, a3, v9);
  v16 = [a1 identifierForKey:?];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (qword_1002686E8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1001E5F70;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v43 = type metadata accessor for JSMetrics();
    *&v42 = v21;
    sub_100002C4C(&v42, &v40);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v40 = a9;
  }

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v40);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x80000001001FC230;
  v22._countAndFlagsBits = 0xD00000000000001BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  MetatypeMetadata = &type metadata for String;
  *&v40 = v39;
  *(&v40 + 1) = v18;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&v40, &qword_10026D350, &qword_1001E6050);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
  LogInterpolation.init(stringInterpolation:)();
  v24 = static os_log_type_t.default.getter();
  sub_1000036B0(v24, v19);

  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    sub_10011F068("loadIdentifier(_:_:_:_:)", 24, 2, &v40);

    if (MetatypeMetadata)
    {
      sub_100003CA8(&v40, MetatypeMetadata);
      v27 = v35;
      v28 = v33;
      v29 = v36;
      (*(v35 + 16))(v33, v34, v36);
      v30 = (*(v27 + 80) + 16) & ~*(v27 + 80);
      v31 = swift_allocObject();
      (*(v27 + 32))(v31 + v30, v28, v29);
      v32 = (v31 + ((v14 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v32 = v39;
      v32[1] = v18;
      dispatch thunk of TaskScheduler.schedule(task:)();

      sub_100002C00(&v40);
    }

    else
    {

      sub_100009F5C(&v40, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  else
  {
  }
}

uint64_t sub_10012A258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E61B0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;

  sub_10005C768(v5);
}

void sub_10012A308()
{
  sub_100003D74();
  v22 = v1;
  v3 = v2;
  v21 = v4;
  v6 = v5;
  v8 = v7;
  v23 = v9;
  swift_getObjectType();
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = sub_100003D10(v10);
  __chkstk_darwin(v11);
  sub_100002DEC();
  v12 = (*&v0[OBJC_IVAR____TtC14amsengagementd9JSMetrics_runtime] + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
  v13 = v12[1];
  if (v13)
  {
    v24 = *v12;
  }

  else
  {
    v24 = 0;
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v14 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v14);
  sub_1000056F8();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001E5F70;
  v27 = type metadata accessor for JSMetrics();
  v25 = v0;
  v0;
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(&v25);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x80000001001FC120;
  v16._countAndFlagsBits = 0xD000000000000023;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  v27 = &type metadata for String;
  v25 = v8;
  v26 = v6;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&v25, &qword_10026D350, &qword_1001E6050);
  sub_100008080();
  v27 = &type metadata for String;
  v25 = v21;
  v26 = v3;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(&v25, &qword_10026D350, &qword_1001E6050);
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v18 = static os_log_type_t.default.getter();
  sub_1000036B0(v18, v15);

  sub_100004AA0();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v24;
  v20[4] = v13;
  v20[5] = v23;
  v20[6] = v8;
  v20[7] = v6;
  v20[8] = v21;
  v20[9] = v3;
  sub_10000AFC4(v20, v22);

  sub_10011F39C("loadIdentifierFields(_:_:_:_:)", 0x1EuLL, 2, sub_10012BA5C, v20);

  sub_100005F14();
}

void sub_10012A648(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v61 = a3;
  v54 = a2;
  v17 = type metadata accessor for JSCallable();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v55 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    v53 = v13;
    v60 = a5;
    v21 = v18;
    if (a7)
    {
      a7 = *&a7[OBJC_IVAR____TtC14amsengagementd9JSAccount_account];
    }

    v58 = a13;
    v59 = a6;
    v51 = a12;
    v52 = a11;
    v50 = a10;
    v27 = objc_opt_self();
    v28 = String._bridgeToObjectiveC()();
    if (qword_1002685F8 != -1)
    {
      swift_once();
    }

    v57 = [v27 identifierStoreWithAccount:a7 bagNamespace:v28 bag:qword_10026A070];

    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = *(v18 + 16);
    v30 = v55;
    v49(v55, v61, v17);
    v31 = *(v21 + 80);
    v32 = (v31 + 40) & ~v31;
    v48 = v19 + 7;
    v33 = (v19 + 7 + v32) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    v35 = v59;
    *(v34 + 2) = v60;
    *(v34 + 3) = v35;
    *(v34 + 4) = v29;
    v61 = *(v21 + 32);
    v61(&v34[v32], v30, v17);
    *&v34[v33] = v58;
    v66 = sub_10012BA88;
    v67 = v34;
    aBlock = _NSConcreteStackBlock;
    v63 = 1107296256;
    v47[1] = &v64;
    v64 = sub_1000266E0;
    v65 = &unk_10024D470;
    v36 = _Block_copy(&aBlock);
    v37 = v59;

    v38 = v56;

    [v57 addErrorBlock:v36];
    _Block_release(v36);
    v39 = swift_allocObject();
    v56 = v38;
    swift_unknownObjectWeakInit();

    v49(v30, v54, v17);
    v40 = (v31 + 64) & ~v31;
    v41 = (v48 + v40) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    v43 = v52;
    *(v42 + 16) = v50;
    *(v42 + 24) = v43;
    *(v42 + 32) = v51 & 1;
    v44 = v61;
    *(v42 + 40) = v60;
    *(v42 + 48) = v37;
    *(v42 + 56) = v39;
    v44((v42 + v40), v30, v17);
    *(v42 + v41) = v58;
    v66 = sub_10012BAA0;
    v67 = v42;
    aBlock = _NSConcreteStackBlock;
    v63 = 1107296256;
    v64 = sub_10008E0EC;
    v65 = &unk_10024D4C0;
    v45 = _Block_copy(&aBlock);

    v46 = v57;
    [v57 addSuccessBlock:v45];
    _Block_release(v45);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1001E5F70;
    type metadata accessor for JSMetrics();
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v23 = static os_log_type_t.error.getter();
    sub_1000036B0(v23, v22);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v25 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
    v26 = sub_100051018();

    *(v24 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v24 + 32) = v26;
    sub_10005C768(v24);
  }
}

void *sub_10012ACDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v7 = type metadata accessor for JSCallable();
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v26 = v8;
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001E5F70;
  static LogInterpolation.prefix<A>(_:_:)();
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x80000001001FC1C0;
  v11._countAndFlagsBits = 0xD00000000000001FLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  swift_getErrorValue();
  v12 = v33;
  v13 = v34;
  v32 = v34;
  v14 = sub_100017E64(v31);
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(v31, &qword_10026D350, &qword_1001E6050);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v16 = static os_log_type_t.error.getter();
  sub_1000036B0(v16, v10);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_10011F068("loadIdentifierFields(_:_:_:_:)", 30, 2, v31);

    if (v32)
    {
      sub_100003CA8(v31, v32);
      v19 = v29;
      v20 = v27;
      v21 = v30;
      (*(v29 + 16))(v27, v28, v30);
      v22 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v23 = (v26 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v24 = swift_allocObject();
      (*(v19 + 32))(v24 + v22, v20, v21);
      *(v24 + v23) = a1;
      swift_errorRetain();
      dispatch thunk of TaskScheduler.schedule(task:)();

      return sub_100002C00(v31);
    }

    else
    {
      return sub_100009F5C(v31, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  return result;
}

void sub_10012B0CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a8;
  v36 = a7;
  v9 = a4;
  v13 = type metadata accessor for JSCallable();
  v34 = *(v13 - 8);
  v35 = v13;
  v14 = *(v34 + 64);
  __chkstk_darwin(v13);
  v32 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  sub_100002BC0(0, &qword_100271750, AMSMetricsIdentifierKey_ptr);

  v16 = sub_1001AF320(a2, a3, v9);
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001E8AB0;
  *(v17 + 32) = v16;
  v37 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [a1 generateEventFieldsForKeys:isa];

  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001E5F70;
  static LogInterpolation.prefix<A>(_:_:)();
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x80000001001FC1A0;
  v22._countAndFlagsBits = 0xD000000000000017;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  v39 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v38[0] = v20;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C(v38, &qword_10026D350, &qword_1001E6050);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v24 = static os_log_type_t.default.getter();
  sub_1000036B0(v24, v21);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    sub_10011F068("loadIdentifierFields(_:_:_:_:)", 30, 2, v38);

    if (v39)
    {
      sub_100003CA8(v38, v39);
      v27 = v34;
      v28 = v32;
      v29 = v35;
      (*(v34 + 16))(v32, v33, v35);
      v30 = (*(v27 + 80) + 16) & ~*(v27 + 80);
      v31 = swift_allocObject();
      (*(v27 + 32))(v31 + v30, v28, v29);
      *(v31 + ((v14 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
      dispatch thunk of TaskScheduler.schedule(task:)();

      sub_100002C00(v38);
    }

    else
    {

      sub_100009F5C(v38, &qword_10026D6C8, &unk_1001ECB60);
    }
  }

  else
  {
  }
}

uint64_t sub_10012B5A0(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  *(v3 + 56) = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  *(v3 + 32) = a2;

  sub_10005C768(v3);
}

id sub_10012B654()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = v5;
  v15 = v7;
  v1(v5, v8, v10, v11, v13, v3);

  sub_100005F14();

  return v16;
}

id sub_10012B718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100052D94(a4, &v26);
  if (v27)
  {
    v5 = type metadata accessor for JSAccount();
    if (sub_1000059A4(v5, v6, v7, v5, v8))
    {
      v9 = v25;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_100009F5C(&v26, &qword_10026D350, &qword_1001E6050);
    v9 = 0;
  }

  v14 = sub_100052D94(a4, &v26);
  if (v27)
  {
    if (sub_1000059A4(v10, v11, v12, &type metadata for Bool, v13, v14))
    {
      v15 = v25 ^ 1;
      goto LABEL_11;
    }
  }

  else
  {
    sub_100009F5C(&v26, &qword_10026D350, &qword_1001E6050);
  }

  v15 = 1;
LABEL_11:
  sub_100002BC0(0, &qword_10026DEB8, AMSMetricsEvent_ptr);

  v16 = sub_1001875AC();
  if (v9)
  {
    v17 = *&v9[OBJC_IVAR____TtC14amsengagementd9JSAccount_account];
  }

  else
  {
    v17 = 0;
  }

  [v16 setAccount:v17];

  [v16 setAnonymous:v15 & 1];
  [v16 setSuppressEngagement:1];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v16 addPropertiesWithDictionary:isa];

  sub_100052D94(a4, &v26);
  if (v27)
  {
    v19 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    if (sub_1000059A4(v19, v20, v21, v19, v22))
    {
      sub_10012E0E8(v25);

      v23 = Array._bridgeToObjectiveC()().super.isa;

      [v16 removePropertiesForKeys:v23];
    }
  }

  else
  {

    sub_100009F5C(&v26, &qword_10026D350, &qword_1001E6050);
  }

  return v16;
}

id sub_10012BA18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMetrics();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10012BAD0()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  sub_10000B9A4();
  return sub_100104450(v0 + v3, *(v0 + v2));
}

uint64_t sub_10012BB3C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10012BC2C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  sub_100002DFC();
  v4 = type metadata accessor for JSCallable();
  sub_100002CFC(v4);
  sub_10000B9A4();
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v10 = *&v3[v9];

  return a2(v2, v6, v7, v8, &v3[v5], v10);
}

uint64_t sub_10012BCE4(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, void, unint64_t, void))
{
  v5 = type metadata accessor for JSCallable();
  sub_100002CFC(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  return a2(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v10, *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10012BD98()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  sub_10000B9A4();
  v4 = (v0 + v3);
  v5 = *v4;
  v6 = v4[1];

  return sub_10012A258(v0 + v2, v5, v6);
}

uint64_t sub_10012BE7C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = type metadata accessor for JSCallable();
  sub_100002CFC(v2);
  sub_10000B9A4();
  v5 = *(v1 + v4);

  return a1(v1 + v3, v5);
}

unint64_t sub_10012BF08()
{
  result = qword_10026DEC0;
  if (!qword_10026DEC0)
  {
    sub_10007BC70(&qword_10026BF58, &qword_1001EA270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DEC0);
  }

  return result;
}

void *sub_10012BFA8()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  sub_10000B9A4();
  v3 = v0[2];
  v4 = v0[3];
  v6 = *(v0 + v5);
  v7 = v0[4];

  return sub_100127B10(v3, v4, v7, v0 + v2, v6);
}

uint64_t sub_10012C028()
{
  v0 = type metadata accessor for JSCallable();
  sub_100003D10(v0);

  return sub_100127E5C();
}

uint64_t sub_10012C084()
{
  sub_100002DFC();
  type metadata accessor for JSCallable();
  sub_100002D30();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v1 + v3);
  v0(*(v1 + v4));

  return _swift_deallocObject(v1);
}

id sub_10012C158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSNetwork();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10012C18C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSOnDeviceDataService();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10012C1E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSOnDeviceDataService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10012C23C(uint64_t a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v2;
  *(v6 + 32) = a2;
  *(v6 + 40) = ObjectType;

  v7 = v2;
  v8 = sub_10011F39C("askToSync(_:_:)", 0xFuLL, 2, sub_10012DDB0, v6);

  return v8;
}

void sub_10012C2EC(double a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = v7;
  v80 = a6;
  v81 = a3;
  v13 = type metadata accessor for JSCallable();
  v82 = *(v13 - 8);
  v14 = *(v82 + 64);
  v15 = __chkstk_darwin(v13);
  v16 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v56 - v17;
  v19 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v19 - 8);
  v21 = &v56 - v20;
  sub_100052D94(a5, &v85);
  if (!v86)
  {
    sub_100009F5C(&v85, &qword_10026D350, &qword_1001E6050);
    goto LABEL_16;
  }

  type metadata accessor for JSAccount();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1001E61B0;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 32) = 0x20676E697373694DLL;
    *(v45 + 40) = 0xEF746E756F636361;
    v46 = JSCallable.call(_:)();
    goto LABEL_26;
  }

  v79 = a4;
  v22 = v83;
  v23 = [*&v83[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] ams_accountID];
  if (!v23)
  {
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1001E61B0;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 32) = 0xD000000000000011;
    *(v47 + 40) = 0x80000001001FC5D0;
    v46 = JSCallable.call(_:)();

    if (v7)
    {
      return;
    }

    goto LABEL_27;
  }

  v77 = v23;
  v78 = v22;
  sub_100052D94(a5, &v85);
  if (!v86)
  {
    sub_100009F5C(&v85, &qword_10026D350, &qword_1001E6050);
    v8 = v7;
    goto LABEL_20;
  }

  v8 = v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1001E61B0;
    v49 = 0x80000001001FC5F0;
    *(v48 + 56) = &type metadata for String;
    v50 = 0xD000000000000013;
LABEL_21:
    *(v48 + 32) = v50;
    *(v48 + 40) = v49;
LABEL_25:
    v46 = JSCallable.call(_:)();

LABEL_26:

    if (v8)
    {
      return;
    }

    goto LABEL_27;
  }

  v24 = v84;
  v74 = v83;
  v75 = a7;
  sub_100052D94(a5, &v85);
  v25 = v79;
  if (!v86)
  {

    sub_100009F5C(&v85, &qword_10026D350, &qword_1001E6050);
LABEL_24:
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1001E61B0;
    *(v51 + 56) = &type metadata for String;
    *(v51 + 32) = 0x20676E697373694DLL;
    *(v51 + 40) = 0xEA00000000006469;
    goto LABEL_25;
  }

  v76 = v24;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_24;
  }

  v26 = v84;
  v72 = v83;
  sub_100052D94(a5, &v85);
  if (!v86)
  {

    sub_100009F5C(&v85, &qword_10026D350, &qword_1001E6050);
LABEL_31:
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1001E61B0;
    v49 = 0x80000001001FC610;
    *(v48 + 56) = &type metadata for String;
    v50 = 0xD000000000000010;
    goto LABEL_21;
  }

  v73 = v26;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_31;
  }

  v27 = v84;
  v71 = v83;
  sub_100052D94(a5, &v85);
  if (v86)
  {
    if (swift_dynamicCast())
    {
      v69 = v83;
      v70 = v27;
      v28 = v84;
      sub_100052D94(a5, &v85);
      if (v86)
      {
        v68 = v28;
        if (swift_dynamicCast())
        {
          v66 = v83;
          v67 = v84;
          v29 = type metadata accessor for TaskPriority();
          sub_10000A7C0(v21, 1, 1, v29);
          v65 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v30 = *(v82 + 16);
          v30(v18, v25, v13);
          v30(v16, v81, v13);
          v31 = v82;
          v32 = *(v82 + 80);
          v57 = (v32 + 40) & ~v32;
          v60 = (v14 + 7 + v57) & 0xFFFFFFFFFFFFFFF8;
          v58 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
          v59 = (v58 + 23) & 0xFFFFFFFFFFFFFFF8;
          v61 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
          v64 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
          v81 = (v64 + 23) & 0xFFFFFFFFFFFFFFF8;
          v63 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
          v80 = (v63 + 23) & 0xFFFFFFFFFFFFFFF8;
          v62 = (v32 + v80 + 8) & ~v32;
          v79 = (v14 + 7 + v62) & 0xFFFFFFFFFFFFFFF8;
          v33 = swift_allocObject();
          *(v33 + 2) = 0;
          *(v33 + 3) = 0;
          *(v33 + 4) = v65;
          v34 = *(v31 + 32);
          v34(&v33[v57], v18, v13);
          *&v33[v60] = v77;
          v35 = &v33[v58];
          v36 = v76;
          *v35 = v74;
          *(v35 + 1) = v36;
          v37 = &v33[v59];
          v38 = v73;
          *v37 = v72;
          *(v37 + 1) = v38;
          v39 = &v33[v61];
          v40 = v70;
          *v39 = v71;
          *(v39 + 1) = v40;
          v41 = &v33[v64];
          v42 = v68;
          *v41 = v69;
          *(v41 + 1) = v42;
          *&v33[v81] = a5;
          v43 = &v33[v63];
          v44 = v67;
          *v43 = v66;
          *(v43 + 1) = v44;
          *&v33[v80] = a1;
          v34(&v33[v62], v16, v13);
          *&v33[v79] = v75;

          sub_1000E349C();

          return;
        }
      }

      else
      {

        sub_100009F5C(&v85, &qword_10026D350, &qword_1001E6050);
      }

      sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1001E61B0;
      v53 = 0x80000001001FC650;
      *(v52 + 56) = &type metadata for String;
      v54 = 0xD000000000000011;
      goto LABEL_38;
    }
  }

  else
  {

    sub_100009F5C(&v85, &qword_10026D350, &qword_1001E6050);
  }

  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1001E61B0;
  v53 = 0x80000001001FC630;
  *(v52 + 56) = &type metadata for String;
  v54 = 0xD000000000000010;
LABEL_38:
  *(v52 + 32) = v54;
  *(v52 + 40) = v53;
  v55 = JSCallable.call(_:)();
  if (v7)
  {

    return;
  }

  v46 = v55;

LABEL_27:
}

uint64_t sub_10012CDB0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 448) = v21;
  *(v9 + 456) = v22;
  *(v9 + 440) = a1;
  *(v9 + 432) = v20;
  *(v9 + 400) = v18;
  *(v9 + 416) = v19;
  *(v9 + 368) = v16;
  *(v9 + 384) = v17;
  *(v9 + 352) = a8;
  *(v9 + 360) = a9;
  *(v9 + 336) = a6;
  *(v9 + 344) = a7;
  *(v9 + 328) = a5;
  type metadata accessor for LogInterpolation.StringInterpolation();
  *(v9 + 464) = swift_task_alloc();
  v10 = type metadata accessor for JSCallable();
  *(v9 + 472) = v10;
  v11 = *(v10 - 8);
  *(v9 + 480) = v11;
  *(v9 + 488) = *(v11 + 64);
  *(v9 + 496) = swift_task_alloc();
  v12 = type metadata accessor for TSOnDeviceDataService.DatasetIdentifier();
  *(v9 + 504) = v12;
  *(v9 + 512) = *(v12 - 8);
  *(v9 + 520) = swift_task_alloc();
  v13 = type metadata accessor for AccountIdentity();
  *(v9 + 528) = v13;
  *(v9 + 536) = *(v13 - 8);
  *(v9 + 544) = swift_task_alloc();
  *(v9 + 552) = swift_task_alloc();

  return _swift_task_switch(sub_10012CF98, 0, 0);
}

uint64_t sub_10012CF98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 560) = Strong;
  if (Strong)
  {
    v28 = Strong;
    v2 = *(v0 + 552);
    v3 = *(v0 + 544);
    v4 = *(v0 + 536);
    v5 = *(v0 + 528);
    v6 = *(v0 + 416);
    v7 = *(v0 + 344);
    AccountIdentity.init(amsAccountID:)();
    (*(v4 + 16))(v3, v2, v5);
    sub_100052D94(v6, (v0 + 96));
    if (*(v0 + 120))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_100009F5C(v0 + 96, &qword_10026D350, &qword_1001E6050);
    }

    TSOnDeviceDataService.DatasetIdentifier.init(accountIdentity:datasetName:id:idDomain:idSource:idSuffix:namespace:)();
    if (qword_1002686E8 != -1)
    {
      sub_100003230(&qword_1002686E8);
    }

    *(v0 + 568) = qword_100287848;
    *(v0 + 576) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v16 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v16);
    *(v0 + 584) = *(v17 + 72);
    *(v0 + 616) = *(v18 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001E5F70;
    v20 = type metadata accessor for JSOnDeviceDataService();
    *(v0 + 592) = v20;
    *(v0 + 152) = v20;
    *(v0 + 128) = v28;
    v21 = v28;
    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v24 = *(v0 + 440);
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v0 + 128));
    LogInterpolation.init(stringLiteral:)();
    v25 = static os_log_type_t.default.getter();
    sub_1000036B0(v25, v19);

    v26 = swift_task_alloc();
    *(v0 + 600) = v26;
    *v26 = v0;
    v26[1] = sub_10012D568;
    v27 = *(v0 + 520);

    return static TSOnDeviceDataService.askToSync(dataset:afterDelay:)(v27, v24, 0);
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      sub_100003230(&qword_1002686E8);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v8 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001E5F70;
    sub_10004167C();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v10 = static os_log_type_t.error.getter();
    sub_1000036B0(v10, v9);

    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1001E61B0;
    type metadata accessor for JSError();
    v12 = sub_10010F0F0(0, 0x462070756B6F6F4CLL, 0xED000064656C6961, 0x6E617620666C6553, 0xED00006465687369);
    v13 = sub_100051018();

    *(v11 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *(v11 + 32) = v13;
    sub_10005C768(v11);

    sub_1000053C0();

    sub_100002D8C();

    return v14();
  }
}

uint64_t sub_10012D568()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_10012D980;
  }

  else
  {
    v2 = sub_10012D67C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012D67C()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 560);
  v3 = swift_allocObject();
  *(v0 + 224) = v2;
  *(v3 + 16) = xmmword_1001E5F70;
  *(v0 + 248) = v1;
  v4 = v2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 224));
  LogInterpolation.init(stringLiteral:)();
  v7 = static os_log_type_t.default.getter();
  sub_1000036B0(v7, v3);

  sub_10011F068("askToSync(_:_:)", 15, 2, v0 + 56);
  v8 = *(v0 + 80);
  v9 = *(v0 + 552);
  v10 = *(v0 + 536);
  v11 = *(v0 + 528);
  v12 = *(v0 + 520);
  v14 = *(v0 + 504);
  v13 = *(v0 + 512);
  if (v8)
  {
    v26 = *(v0 + 552);
    v25 = *(v0 + 504);
    v15 = *(v0 + 496);
    v17 = *(v0 + 472);
    v16 = *(v0 + 480);
    v18 = *(v0 + 448);
    v24 = *(v0 + 560);
    sub_100003CA8((v0 + 56), v8);
    (*(v16 + 16))(v15, v18, v17);
    v23 = v11;
    v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v20 = swift_allocObject();
    (*(v16 + 32))(v20 + v19, v15, v17);
    dispatch thunk of TaskScheduler.schedule(task:)();

    (*(v13 + 8))(v12, v25);
    (*(v10 + 8))(v26, v23);
    sub_100002C00((v0 + 56));
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
    sub_100009F5C(v0 + 56, &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_1000053C0();

  sub_100002D8C();

  return v21();
}

uint64_t sub_10012D980()
{
  v1 = v0[74];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[67];
  v5 = v0[66];
  (*(v0[64] + 8))(v0[65], v0[63]);
  (*(v4 + 8))(v3, v5);
  v6 = swift_allocObject();
  v0[20] = v2;
  v28 = v0 + 2;
  *(v6 + 16) = xmmword_1001E5F70;
  v0[23] = v1;
  v7 = v2;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 20);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x80000001001FC670;
  v10._countAndFlagsBits = 0xD000000000000014;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  swift_getErrorValue();
  v11 = v0[35];
  v12 = v0[36];
  v0[27] = v12;
  v13 = sub_100017E64(v0 + 24);
  (*(*(v12 - 8) + 16))(v13, v11, v12);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009F5C((v0 + 24), &qword_10026D350, &qword_1001E6050);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  LogInterpolation.init(stringInterpolation:)();
  v15 = static os_log_type_t.error.getter();
  sub_1000036B0(v15, v6);

  sub_10011F068("askToSync(_:_:)", 15, 2, v28);
  v16 = v0[5];
  v17 = v0[76];
  v18 = v0[70];
  if (v16)
  {
    v20 = v0[61];
    v19 = v0[62];
    v21 = v0[59];
    v22 = v0[60];
    v23 = v0[42];
    sub_100003CA8(v28, v16);
    (*(v22 + 16))(v19, v23, v21);
    v24 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v25 = swift_allocObject();
    (*(v22 + 32))(v25 + v24, v19, v21);
    *(v25 + ((v20 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
    swift_errorRetain();
    dispatch thunk of TaskScheduler.schedule(task:)();

    sub_100002C00(v28);
  }

  else
  {

    sub_100009F5C(v28, &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_1000053C0();

  sub_100002D8C();

  return v26();
}

uint64_t sub_10012DDD4(uint64_t a1)
{
  v3 = type metadata accessor for JSCallable();
  sub_100002CFC(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = (v5 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = v1[3];
  v17 = v1[2];
  v14 = *(v1 + v7);
  v15 = v1[4];
  v12 = *(v1 + v8 + 8);
  v13 = *(v1 + v8);
  v9 = *(v1 + ((((((((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100121658;

  return sub_10012CDB0(v9, a1, v17, v16, v15, v1 + v5, v14, v13, v12);
}

uint64_t sub_10012DFDC()
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100104450(v0 + v6, v7);
}

uint64_t sub_10012E060()
{
  type metadata accessor for JSCallable();

  return sub_100127E5C();
}

void *sub_10012E0E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_10009BAF4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10009BAF4(v5 > 1, v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100002C4C(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10012E1E8(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    a2(0, v4, 0);
    v8 = a1 + 32;
    do
    {

      sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
      sub_10007B9A4(a3, a4);
      swift_dynamicCast();
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        a2(v9 > 1, v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      _swiftEmptyArrayStorage[v10 + 4] = v13;
      v8 += 8;
      --v4;
    }

    while (v4);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10012E324(uint64_t a1, char a2)
{
  v5 = [objc_allocWithZone(NSCondition) init];
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 2;
  *(v2 + 16) = v5;
  *(v2 + 24) = a1;
  *(v2 + 32) = a2 & 1;
  return v2;
}

uint64_t sub_10012E384@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    Date.init(timeIntervalSinceNow:)();
    v4 = 0;
  }

  v5 = type metadata accessor for Date();

  return sub_10000A7C0(a3, v4, 1, v5);
}

uint64_t sub_10012E3E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 88) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  *(v5 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_10012E48C, 0, 0);
}

uint64_t sub_10012E48C()
{
  sub_100003D28();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v7 = *(v0 + 32);
  sub_10012E384(*(v0 + 88) & 1, v1);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v7;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  type metadata accessor for Connection();
  *v4 = v0;
  v4[1] = sub_10012E5AC;
  sub_1000060D0();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5);
}

uint64_t sub_10012E5AC()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100002D98();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  sub_1000060D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10012E6B0()
{
  sub_100004768();
  sub_100009FB0(v0[7], &unk_100271EA0, &qword_1001E77F0);
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10012E734()
{
  sub_100004768();
  v1 = *(v0 + 56);

  sub_100009FB0(v1, &unk_100271EA0, &qword_1001E77F0);

  sub_100002D8C();

  return v2();
}

id sub_10012E7B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a5;
  v66 = a6;
  v68 = a4;
  v69 = sub_10007B9A4(&qword_10026DFB0, &qword_1001ED6E0);
  v64 = *(v69 - 8);
  v61 = *(v64 + 64);
  __chkstk_darwin(v69);
  v62 = &v61 - v9;
  v10 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v10 - 8);
  v63 = &v61 - v11;
  v12 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v13 = __chkstk_darwin(v12 - 8);
  v70 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v61 - v15;
  v17 = type metadata accessor for Date();
  v18 = __chkstk_darwin(v17);
  v67 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v73 = &v61 - v21;
  __chkstk_darwin(v20);
  v71 = &v61 - v22;
  v72 = (v23 + 32);
  v74 = (v23 + 8);
  while (*(a1 + 56) == 2 && (*(a1 + 48) - 1) <= 1)
  {
    sub_1000A46BC(a2, v16, &unk_100271EA0, &qword_1001E77F0);
    if (sub_100009F34(v16, 1, v17) == 1)
    {
      sub_100009FB0(v16, &unk_100271EA0, &qword_1001E77F0);
      [a3 wait];
    }

    else
    {
      v24 = v71;
      (*v72)(v71, v16, v17);
      isa = Date._bridgeToObjectiveC()().super.isa;
      [a3 waitUntilDate:{isa, v61}];

      v26 = v73;
      static Date.now.getter();
      v75 = static Date.> infix(_:_:)();
      v27 = a2;
      v28 = a1;
      v29 = a3;
      v30 = *v74;
      (*v74)(v26, v17);
      v30(v24, v17);
      a3 = v29;
      a1 = v28;
      a2 = v27;
      if (v75)
      {
        break;
      }
    }
  }

  v31 = v70;
  sub_1000A46BC(a2, v70, &unk_100271EA0, &qword_1001E77F0);
  if (sub_100009F34(v31, 1, v17) == 1)
  {
    sub_100009FB0(v31, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    v32 = v67;
    (*v72)(v67, v31, v17);
    v33 = v73;
    static Date.now.getter();
    v34 = static Date.> infix(_:_:)();
    v35 = *v74;
    (*v74)(v33, v17);
    if (v34)
    {
      sub_1001354A0();
      v36 = swift_allocError();
      *v37 = 1;
      v38 = *(a1 + 48);
      *(a1 + 48) = v36;
      LOBYTE(v37) = *(a1 + 56);
      *(a1 + 56) = 0;
      sub_100135394(v38, v37);
      v39 = swift_allocError();
      *v40 = 1;
      v76 = v39;
      CheckedContinuation.resume(throwing:)();
      [a3 signal];
      return (v35)(v32, v17);
    }

    v35(v32, v17);
  }

  v42 = *(a1 + 48);
  v43 = *(a1 + 56);
  if (v43 == 1)
  {
    v76 = *(a1 + 48);
    sub_1001354F4(v42, 1);

    CheckedContinuation.resume(returning:)();
    [a3 signal];
  }

  else if ((*(a1 + 32) & 1) != 0 || *(a1 + 24) >= *(a1 + 40))
  {
    *(a1 + 48) = 1;
    *(a1 + 56) = 2;
    result = sub_100135394(v42, v43);
    v49 = *(a1 + 40);
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (v50)
    {
      __break(1u);
    }

    else
    {
      *(a1 + 40) = v51;
      v52 = v63;
      static TaskPriority.background.getter();
      v53 = type metadata accessor for TaskPriority();
      sub_10000A7C0(v52, 0, 1, v53);
      v54 = v64;
      v55 = v62;
      v56 = v69;
      (*(v64 + 16))(v62, v68, v69);
      v57 = (*(v54 + 80) + 64) & ~*(v54 + 80);
      v58 = swift_allocObject();
      *(v58 + 2) = 0;
      *(v58 + 3) = 0;
      v59 = v66;
      *(v58 + 4) = v65;
      *(v58 + 5) = v59;
      *(v58 + 6) = a3;
      *(v58 + 7) = a1;
      (*(v54 + 32))(&v58[v57], v55, v56);

      v60 = a3;

      sub_10012F334(0, 0, v52, &unk_1001ED6F0, v58);

      return sub_100009FB0(v52, &unk_10026FEC0, &qword_1001E6280);
    }
  }

  else
  {
    sub_1001354A0();
    v44 = swift_allocError();
    *v45 = 0;
    v46 = *(a1 + 48);
    *(a1 + 48) = v44;
    LOBYTE(v45) = *(a1 + 56);
    *(a1 + 56) = 0;
    sub_100135394(v46, v45);
    v47 = swift_allocError();
    *v48 = 0;
    v76 = v47;
    CheckedContinuation.resume(throwing:)();
    return [a3 signal];
  }

  return result;
}

uint64_t sub_10012EECC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[3] = a6;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v8[6] = v9;
  *v9 = v8;
  v9[1] = sub_10012EFC4;

  return v11(v8 + 2);
}

uint64_t sub_10012EFC4()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_1000060D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10012F0BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v4[2] = v2;
  v4[3] = v0 + 2;
  v4[4] = v1;
  v4[5] = v3;
  sub_10012F2BC(sub_100135650);

  sub_100002D8C();

  return v5();
}

uint64_t sub_10012F178()
{
  sub_100003D28();
  v4 = sub_100058314();
  v4[2] = v3;
  v4[3] = v0;
  v4[4] = v2;
  v4[5] = v1;
  sub_10012F2BC(sub_100135510);

  sub_100002D8C();

  return v5();
}

id sub_10012F218(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 48);
  *(a1 + 48) = a2;
  v6 = *(a1 + 56);
  *(a1 + 56) = 1;

  sub_100135394(v5, v6);

  sub_10007B9A4(&qword_10026DFB0, &qword_1001ED6E0);
  CheckedContinuation.resume(returning:)();
  return [a4 signal];
}

uint64_t sub_10012F334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_1000A46BC(a3, v24 - v10, &unk_10026FEC0, &qword_1001E6280);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100009F34(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100009FB0(v11, &unk_10026FEC0, &qword_1001E6280);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
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
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
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

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10012F5D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 80) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10012F67C, 0, 0);
}

uint64_t sub_10012F67C()
{
  sub_100003D28();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v7 = *(v0 + 24);
  sub_10012E384(*(v0 + 80) & 1, v1);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v7;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_10012F794;
  sub_1000060D0();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5);
}

uint64_t sub_10012F794()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100002D98();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  sub_1000060D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10012F898()
{
  sub_100004768();
  sub_100009FB0(*(v0 + 48), &unk_100271EA0, &qword_1001E77F0);

  sub_100002D8C();

  return v1();
}

uint64_t sub_10012F910()
{
  sub_100004768();
  v1 = *(v0 + 48);

  sub_100009FB0(v1, &unk_100271EA0, &qword_1001E77F0);

  sub_100002D8C();

  return v2();
}

id sub_10012F9D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a5;
  v61 = a6;
  v65 = a4;
  v66 = sub_10007B9A4(&qword_10026C8C0, &qword_1001EBD78);
  v59 = *(v66 - 8);
  v57[1] = *(v59 + 64);
  __chkstk_darwin(v66);
  v58 = v57 - v9;
  v10 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v10 - 8);
  v63 = v57 - v11;
  v12 = &unk_100271EA0;
  v13 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v14 = __chkstk_darwin(v13 - 8);
  v64 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v57 - v16;
  v18 = type metadata accessor for Date();
  v19 = __chkstk_darwin(v18);
  v62 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v70 = v57 - v22;
  __chkstk_darwin(v21);
  v67 = v57 - v23;
  v68 = v17;
  v69 = (v24 + 32);
  v71 = (v24 + 8);
  v25 = (v24 + 8);
  while (*(a1 + 56) == 2 && (*(a1 + 48) - 1) <= 1)
  {
    sub_1000A46BC(a2, v17, v12, &qword_1001E77F0);
    if (sub_100009F34(v17, 1, v18) == 1)
    {
      sub_100009FB0(v17, v12, &qword_1001E77F0);
      [a3 wait];
    }

    else
    {
      v26 = v67;
      (*v69)(v67, v17, v18);
      isa = Date._bridgeToObjectiveC()().super.isa;
      [a3 waitUntilDate:isa];

      v28 = v70;
      static Date.now.getter();
      v72 = static Date.> infix(_:_:)();
      v29 = v12;
      v30 = a2;
      v31 = a1;
      v32 = a3;
      v33 = *v25;
      v34 = v28;
      v17 = v68;
      (*v25)(v34, v18);
      v33(v26, v18);
      a3 = v32;
      a1 = v31;
      a2 = v30;
      v12 = v29;
      if (v72)
      {
        break;
      }
    }
  }

  v35 = v64;
  sub_1000A46BC(a2, v64, &unk_100271EA0, &qword_1001E77F0);
  if (sub_100009F34(v35, 1, v18) == 1)
  {
    sub_100009FB0(v35, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    v36 = v62;
    (*v69)(v62, v35, v18);
    v37 = v70;
    static Date.now.getter();
    v38 = static Date.> infix(_:_:)();
    v39 = *v71;
    (*v71)(v37, v18);
    if (v38)
    {
      sub_1001354A0();
      v40 = swift_allocError();
      *v41 = 1;
      v42 = *(a1 + 48);
      *(a1 + 48) = v40;
      LOBYTE(v41) = *(a1 + 56);
      *(a1 + 56) = 0;
      sub_100135394(v42, v41);
      v43 = swift_allocError();
      *v44 = 1;
      v73 = v43;
      CheckedContinuation.resume(throwing:)();
      [a3 signal];
      return v39(v36, v18);
    }

    v39(v36, v18);
  }

  v46 = *(a1 + 48);
  if (*(a1 + 56))
  {
    if (*(a1 + 56) == 1)
    {
      *(a1 + 48) = 2;
      *(a1 + 56) = 2;
      v47 = v63;
      static TaskPriority.background.getter();
      v48 = type metadata accessor for TaskPriority();
      sub_10000A7C0(v47, 0, 1, v48);
      v49 = v58;
      v50 = v59;
      v51 = v66;
      (*(v59 + 16))(v58, v65, v66);
      v52 = (*(v50 + 80) + 72) & ~*(v50 + 80);
      v53 = swift_allocObject();
      *(v53 + 2) = 0;
      *(v53 + 3) = 0;
      v54 = v61;
      *(v53 + 4) = v60;
      *(v53 + 5) = v54;
      *(v53 + 6) = v46;
      *(v53 + 7) = a3;
      *(v53 + 8) = a1;
      (*(v50 + 32))(&v53[v52], v49, v51);

      v55 = a3;

      v56 = v63;
      sub_10012F334(0, 0, v63, &unk_1001ED738, v53);

      return sub_100009FB0(v56, &unk_10026FEC0, &qword_1001E6280);
    }

    else
    {
      CheckedContinuation.resume(returning:)();
      return [a3 signal];
    }
  }

  else
  {
    v73 = *(a1 + 48);
    sub_1001354F4(v46, 0);
    swift_errorRetain();
    CheckedContinuation.resume(throwing:)();
    [a3 signal];
    return sub_100135394(v46, 0);
  }
}

uint64_t sub_100130088(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v13;
  v8[3] = a7;
  v8[2] = a6;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v8[6] = v9;
  *v9 = v8;
  v9[1] = sub_100130190;

  return v11(v8 + 2);
}

uint64_t sub_100130190()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_1000060D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100130288()
{
  sub_1000061B4();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  sub_10012F2BC(sub_1001358E4);

  sub_100002D8C();

  return v3();
}

uint64_t sub_100130324()
{
  sub_100003D28();
  v4 = sub_100058314();
  v4[2] = v3;
  v4[3] = v0;
  v4[4] = v2;
  v4[5] = v1;
  sub_10012F2BC(sub_1001358B8);

  sub_100002D8C();

  return v5();
}

id sub_1001303C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a1 + 56);
  *(a1 + 56) = 2;
  sub_100135394(v4, v5);
  sub_10007B9A4(&qword_10026C8C0, &qword_1001EBD78);
  CheckedContinuation.resume(returning:)();
  return [a3 signal];
}

id sub_100130440(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = *(a1 + 48);
  *(a1 + 48) = a2;
  v10 = *(a1 + 56);
  *(a1 + 56) = 0;
  swift_errorRetain();
  sub_100135394(v9, v10);
  swift_errorRetain();
  sub_10007B9A4(a5, a6);
  CheckedContinuation.resume(throwing:)();
  return [a4 signal];
}

id sub_1001304F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_connection;
  sub_10007B9A4(&qword_10026DFC0, &qword_1001ED748);
  swift_allocObject();
  *&v6[v13] = sub_10012E324(0, 1);
  v14 = &v6[OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_database];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_token];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v6[OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_userId];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = type metadata accessor for JSOnDeviceStorageDatabase();
  return objc_msgSendSuper2(&v18, "init");
}

uint64_t sub_1001305D8()
{
}

id sub_100130644()
{
  v1 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v2 = sub_100003D10(v1);
  __chkstk_darwin(v2);
  v4 = &v10 - v3;
  v5 = *&v0[OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_connection];
  v6 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_1000E349C();

  v8 = type metadata accessor for JSOnDeviceStorageDatabase();
  v10.receiver = v0;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, "dealloc");
}

uint64_t sub_10013074C()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100130810;

  return sub_10012F5D8(0, 1, &unk_1001ED718, 0);
}

uint64_t sub_100130810()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    sub_100002D8C();

    return v10();
  }
}

uint64_t sub_100130924()
{
  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v1 = sub_10000620C();
  sub_100002CFC(v1);
  sub_1000056F8();
  v2 = sub_100003BB4();
  *(v2 + 16) = xmmword_1001E5F70;
  LogInterpolation.init(stringLiteral:)();
  sub_100022264();
  v0[5] = v0[7];
  sub_100017E64(v0 + 2);
  sub_1000047A4();
  (*(v3 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v0 + 2), &qword_10026D350, &qword_1001E6050);
  v4 = static os_log_type_t.error.getter();
  sub_1000036B0(v4, v2);

  sub_100002D8C();

  return v5();
}

uint64_t sub_100130AD0()
{
  v1 = type metadata accessor for OnDeviceStorageError();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100130BCC;

  return __s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKF(v2);
}

uint64_t sub_100130BCC()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100002D98();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_100002D8C();

    return v10();
  }
}

uint64_t sub_100130CE8()
{
  sub_1000061B4();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1000053E4();
  v6 = sub_100134DD4(v4, v5, &protocol conformance descriptor for OnDeviceStorageError);
  sub_100007544(v3, v6);
  (*(v2 + 32))(v7, v1, v3);

  sub_100002D8C();

  return v8();
}

uint64_t sub_100130E44()
{
  *(v1 + 16) = v0;
  sub_1000060D0();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100130E70()
{
  sub_100003D28();
  v1 = v0[2];
  v0[3] = *&v1[OBJC_IVAR____TtC14amsengagementd25JSOnDeviceStorageDatabase_connection];
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = v1;

  v3 = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100130F7C;

  return sub_10012E3E8(0x3FF0000000000000, 0, &unk_1001ED6C8, v2);
}

uint64_t sub_100130F7C()
{
  sub_1000061B4();
  v3 = v2;
  sub_1000056A8();
  v5 = v4;
  sub_100002D98();
  *v6 = v5;
  v7 = *v1;
  sub_100002D20();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_1001310C0()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

uint64_t sub_100131124(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for OnDeviceStorageError();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001311E4, 0, 0);
}

uint64_t sub_1001311E4()
{
  sub_100003D48();
  type metadata accessor for Connection();

  *(v0 + 120) = Connection.__allocating_init(token:userId:)();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_10013144C;
  sub_100008FF4();

  return __s15OnDeviceStorage10ConnectionC4openyyYaAA0abC5ErrorOYKF();
}

uint64_t sub_10013144C()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  sub_1000060D0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100131548()
{
  sub_100004768();
  **(v0 + 80) = *(v0 + 120);

  sub_100002D8C();

  return v1();
}

void sub_1001315AC()
{
  sub_100003D48();
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  sub_1000053E4();
  v6 = sub_100134DD4(v4, v5, &protocol conformance descriptor for OnDeviceStorageError);
  sub_100007544(v2, v6);
  (*(v3 + 32))(v7, v1, v2);

  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = sub_10000620C();
  sub_100002CFC(v8);
  sub_100023E44();
  v9 = sub_100003BB4();
  sub_10000A748(v9, xmmword_1001E5F70);
  sub_1000159DC();
  sub_100022264();
  v0[5] = v0[7];
  sub_100017E64(v0 + 2);
  sub_1000059C4();
  sub_10000AB04();
  v10();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v0 + 2), &qword_10026D350, &qword_1001E6050);
  v11 = static os_log_type_t.error.getter();
  sub_1000036B0(v11, v9);

  swift_willThrow();

  sub_100002D8C();
  sub_100008FF4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1001317FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  __chkstk_darwin(v6);
  v7 = sub_10000876C();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v11 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v11);
  sub_1000056F8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001E5F70;
  v30 = type metadata accessor for JSOnDeviceStorageDatabase();
  v29[0] = v3;
  v26 = v3;

  sub_10005ADF4();

  sub_100002C00(v29);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x6E69747265736E49;
  v13._object = 0xEA00000000002067;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  v14 = *(a3 + 16);
  v30 = &type metadata for Int;
  v29[0] = v14;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v29, &qword_10026D350, &qword_1001E6050);
  v15._countAndFlagsBits = 0x20297328776F7220;
  v15._object = 0xED0000206F746E69;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  v30 = &type metadata for String;
  v29[0] = a1;
  v29[1] = a2;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v29, &qword_10026D350, &qword_1001E6050);
  v16._countAndFlagsBits = 0x656C62617420;
  v16._object = 0xE600000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  LogInterpolation.init(stringInterpolation:)();
  v17 = static os_log_type_t.default.getter();
  sub_1000036B0(v17, v12);

  sub_100007600();
  v18 = swift_allocObject();
  v18[2] = v26;
  v18[3] = v8;
  v18[4] = v10;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;
  v19 = v26;

  sub_10000B3C0();
  v24 = sub_10011F39C(v20, v21, v22, v23, v18);

  return v24;
}

uint64_t sub_100131AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a7;
  v38 = a8;
  v34 = a6;
  v35 = a3;
  v36 = a5;
  v32 = a2;
  v9 = type metadata accessor for JSCallable();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v30 = &v29 - v13;
  v15 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v33 = &v29 - v16;
  v18 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v17, 1, 1, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = *(v10 + 16);
  v20(v14, v32, v9);
  v20(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v9);
  v21 = *(v10 + 80);
  v22 = (v21 + 80) & ~v21;
  v23 = (v11 + v21 + v22) & ~v21;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v26 = v36;
  v25 = v37;
  *(v24 + 4) = v19;
  *(v24 + 5) = v26;
  *(v24 + 6) = v34;
  *(v24 + 7) = v25;
  *(v24 + 8) = v38;
  *(v24 + 9) = a9;
  v27 = *(v10 + 32);
  v27(&v24[v22], v30, v9);
  v27(&v24[v23], v31, v9);

  sub_1000E349C();
}

uint64_t sub_100131D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 304) = v17;
  *(v8 + 288) = v16;
  *(v8 + 272) = a7;
  *(v8 + 280) = a8;
  *(v8 + 256) = a5;
  *(v8 + 264) = a6;
  *(v8 + 248) = a4;
  v9 = type metadata accessor for JSCallable();
  *(v8 + 312) = v9;
  v10 = *(v9 - 8);
  *(v8 + 320) = v10;
  *(v8 + 328) = *(v10 + 64);
  *(v8 + 336) = swift_task_alloc();
  v11 = type metadata accessor for OnDeviceStorageError();
  *(v8 + 344) = v11;
  *(v8 + 352) = *(v11 - 8);
  *(v8 + 360) = swift_task_alloc();
  v12 = type metadata accessor for Insert();
  *(v8 + 368) = v12;
  *(v8 + 376) = *(v12 - 8);
  *(v8 + 384) = swift_task_alloc();
  v13 = type metadata accessor for Table();
  *(v8 + 392) = v13;
  *(v8 + 400) = *(v13 - 8);
  *(v8 + 408) = swift_task_alloc();

  return _swift_task_switch(sub_100131F78, 0, 0);
}

uint64_t sub_100131F78()
{
  sub_100003D28();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 416) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 424) = v2;
    *v2 = v0;
    v2[1] = sub_10013214C;

    return sub_100130E44();
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      sub_100003230(&qword_1002686E8);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v4 = sub_10000C3AC();
    sub_100002CFC(v4);
    sub_100023E44();
    v5 = sub_100135920();
    sub_10000A748(v5, xmmword_1001E5F70);
    type metadata accessor for JSOnDeviceStorageDatabase();
    sub_10001CD9C();
    static LogInterpolation.prefix<A>(_:_:)();
    sub_10001823C();
    v6 = static os_log_type_t.error.getter();
    sub_1000036B0(v6, v5);

    sub_10000AFE4();

    sub_100002D8C();

    return v7();
  }
}

uint64_t sub_10013214C()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 432) = v4;
  *(v2 + 440) = v0;

  sub_1000060D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10013224C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  v15 = v14[55];
  v16 = v14[36];

  Table.init(_:database:)();
  sub_10012E1E8(v16, sub_10009BB44, &qword_10026A000, qword_1001E7570);
  sub_100134DD4(&qword_10026DF68, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  QueryType.insertMany(_:)();
  if (v15)
  {
    (*(v14[50] + 8))(v14[51], v14[49]);

    if (qword_1002686E8 != -1)
    {
      sub_100003230(&qword_1002686E8);
    }

    v17 = v14[52];
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v18);
    sub_10000760C();
    v19 = swift_allocObject();
    v14[15] = sub_10001B244(v19, xmmword_1001E5F60);
    v14[12] = v17;
    v20 = v17;
    sub_10000805C();
    sub_100002C00(v14 + 12);
    sub_100006514();
    sub_100003BA4();
    swift_getErrorValue();
    sub_100003F80();
    sub_1000059C4();
    sub_10000AB04();
    v21();
    static LogInterpolation.safe(_:)();
    sub_100009FB0((v14 + 16), &qword_10026D350, &qword_1001E6050);
    v22 = static os_log_type_t.error.getter();
    sub_1000036B0(v22, v19);

    sub_10000AC5C("insert(_:_:)");
    v23 = v14[5];
    v24 = v14[52];
    if (v23)
    {
      v25 = v14[41];
      v26 = v14[40];
      v27 = sub_10001BDB8();
      a9 = sub_100003CA8(v27, v23);
      v28 = sub_1000084A8();
      v29(v28);
      v30 = (v25 + ((*(v26 + 80) + 16) & ~*(v26 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
      v31 = sub_100135908();
      sub_10003D32C();
      v32();
      *(v31 + v30) = v15;
      swift_errorRetain();
      sub_10000B9B8();
      dispatch thunk of TaskScheduler.schedule(task:)();

      sub_100002C00(v14 + 2);
    }

    else
    {

      sub_100009FB0((v14 + 2), &qword_10026D6C8, &unk_1001ECB60);
    }

    sub_10000AFE4();

    sub_100002D8C();
    sub_10000A820();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
  }

  else
  {

    v33 = swift_task_alloc();
    v14[56] = v33;
    *v33 = v14;
    v33[1] = sub_100132650;
    sub_10000A820();

    return __s15OnDeviceStorage10ConnectionC6insertys5Int64V0abC4Core6InsertVYaAA0abC5ErrorOYKF(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_100132650()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 456) = v3;

  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100132750()
{
  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  v1 = v0[52];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = sub_10000C3AC();
  sub_100002CFC(v2);
  sub_100023E44();
  v3 = sub_100135920();
  sub_10000A748(v3, xmmword_1001E5F70);
  v0[23] = type metadata accessor for JSOnDeviceStorageDatabase();
  v0[20] = v1;
  v4 = v1;
  sub_10001CD9C();
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v0 + 20);
  sub_1000293FC();
  v5 = static os_log_type_t.default.getter();
  sub_1000036B0(v5, v3);

  sub_10000B3C0();
  sub_10011F068(v6, v7, v8, v9);
  v10 = v0[10];
  if (v10)
  {
    v29 = v0[57];
    v11 = v0[50];
    v33 = v0[49];
    v34 = v0[51];
    v12 = v0[47];
    v31 = v0[52];
    v32 = v0[48];
    v30 = v0[46];
    v14 = v0[41];
    v13 = v0[42];
    v16 = v0[39];
    v15 = v0[40];
    v17 = v0[37];
    sub_100003CA8(v0 + 7, v10);
    (*(v15 + 16))(v13, v17, v16);
    v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v19 = swift_allocObject();
    (*(v15 + 32))(v19 + v18, v13, v16);
    *(v19 + ((v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
    dispatch thunk of TaskScheduler.schedule(task:)();

    (*(v12 + 8))(v32, v30);
    (*(v11 + 8))(v34, v33);
    sub_100002C00(v0 + 7);
  }

  else
  {
    v20 = v0[51];
    v21 = v0[52];
    v22 = v0[49];
    v23 = v0[50];
    v25 = v0[47];
    v24 = v0[48];
    v26 = v0[46];

    (*(v25 + 8))(v24, v26);
    (*(v23 + 8))(v20, v22);
    sub_100009FB0((v0 + 7), &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_10000AFE4();

  sub_100002D8C();

  return v27();
}

uint64_t sub_100132A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  v16 = v14[52];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v17 = sub_10000620C();
  sub_100002CFC(v17);
  sub_10000760C();
  v18 = swift_allocObject();
  v14[15] = sub_10001B244(v18, xmmword_1001E5F60);
  v14[12] = v16;
  v19 = v16;
  sub_10000805C();
  sub_100002C00(v14 + 12);
  sub_100006514();
  sub_100003BA4();
  swift_getErrorValue();
  sub_100003F80();
  sub_1000059C4();
  sub_10000AB04();
  v20();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v14 + 16), &qword_10026D350, &qword_1001E6050);
  v21 = static os_log_type_t.error.getter();
  sub_1000036B0(v21, v18);

  sub_10000AC5C("insert(_:_:)");
  v22 = v14[52];
  if (v14[5])
  {
    v23 = v14[41];
    sub_100015BDC();
    v24 = sub_1000084A8();
    v25(v24);
    sub_10003AF00();
    v26 = sub_100135908();
    sub_10003D32C();
    v27();
    *(v26 + v23) = v15;
    swift_errorRetain();
    sub_10000B9B8();
    dispatch thunk of TaskScheduler.schedule(task:)();

    sub_100002C00(v14 + 2);
  }

  else
  {

    sub_100009FB0((v14 + 2), &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_10000AFE4();

  sub_100002D8C();
  sub_10000A820();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100132CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  v15 = v14[50];
  v52 = v14[51];
  v17 = v14[48];
  v16 = v14[49];
  v19 = v14[46];
  v18 = v14[47];
  v20 = v14[44];
  v21 = v14[45];
  v22 = v14[43];
  sub_1000053E4();
  v25 = sub_100134DD4(v23, v24, &protocol conformance descriptor for OnDeviceStorageError);
  v53 = sub_100007544(v22, v25);
  (*(v20 + 32))(v26, v21, v22);

  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v52, v16);
  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  v27 = v14[52];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v28 = sub_10000620C();
  sub_100002CFC(v28);
  sub_1000056F8();
  v29 = sub_100003BB4();
  *(v29 + 16) = xmmword_1001E5F60;
  v14[15] = type metadata accessor for JSOnDeviceStorageDatabase();
  v14[12] = v27;
  v30 = v27;
  sub_10000805C();
  sub_100002C00(v14 + 12);
  sub_100006514();
  sub_100003BA4();
  swift_getErrorValue();
  sub_100003F80();
  sub_1000059C4();
  sub_10000AB04();
  v31();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v14 + 16), &qword_10026D350, &qword_1001E6050);
  v32 = static os_log_type_t.error.getter();
  sub_1000036B0(v32, v29);

  sub_10000AC5C("insert(_:_:)");
  v33 = v14[5];
  v34 = v14[52];
  if (v33)
  {
    v35 = v14[41];
    v36 = v14[40];
    v37 = sub_10001BDB8();
    a9 = sub_100003CA8(v37, v33);
    v38 = sub_1000084A8();
    v39(v38);
    v40 = (v35 + ((*(v36 + 80) + 16) & ~*(v36 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    sub_10003D32C();
    v42();
    *(v41 + v40) = v53;
    swift_errorRetain();
    sub_10000B9B8();
    dispatch thunk of TaskScheduler.schedule(task:)();

    sub_100002C00(v14 + 2);
  }

  else
  {

    sub_100009FB0((v14 + 2), &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_10000AFE4();

  sub_100002D8C();
  sub_10000A820();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, v53, a12, a13, a14);
}

uint64_t sub_100133030(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  sub_10007B9A4(&qword_10026DFA0, &qword_1001ED6A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = 0x4449776F72;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a2;
  v5 = Dictionary.init(dictionaryLiteral:)();
  *(v3 + 56) = sub_10007B9A4(&qword_10026DFA8, &unk_1001ED6B0);
  *(v3 + 32) = v5;
  sub_10005C768(v3);
}

uint64_t sub_1001331C4(void *a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = sub_100003D10(v7);
  __chkstk_darwin(v8);
  v9 = sub_10000876C();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v13 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v13);
  sub_1000056F8();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001E5F70;
  v33 = type metadata accessor for JSOnDeviceStorageDatabase();
  v30 = v3;
  v15 = v3;

  sub_10005ADF4();

  sub_100002C00(&v30);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0xD000000000000016;
  v16._object = 0x80000001001FC7A0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  v33 = &type metadata for String;
  v30 = a1;
  v31 = a2;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(&v30, &qword_10026D350, &qword_1001E6050);
  v17._object = 0x80000001001FC7C0;
  v17._countAndFlagsBits = 0xD000000000000011;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  if (a3)
  {
    v18 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    v19 = a3;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v31 = 0;
    v32 = 0;
  }

  v30 = v19;
  v33 = v18;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(&v30, &qword_10026D350, &qword_1001E6050);
  v20._countAndFlagsBits = 41;
  v20._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  LogInterpolation.init(stringInterpolation:)();
  v21 = static os_log_type_t.default.getter();
  sub_1000036B0(v21, v14);

  sub_100007600();
  v22 = swift_allocObject();
  v22[2] = v15;
  v22[3] = v10;
  v22[4] = v12;
  v22[5] = a1;
  v22[6] = a2;
  v22[7] = a3;
  v23 = v15;

  sub_10000B3C0();
  v28 = sub_10011F39C(v24, v25, v26, v27, v22);

  return v28;
}

uint64_t sub_1001334C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a7;
  v38 = a8;
  v34 = a6;
  v35 = a3;
  v36 = a5;
  v32 = a2;
  v9 = type metadata accessor for JSCallable();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v30 = &v29 - v13;
  v15 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v33 = &v29 - v16;
  v18 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v17, 1, 1, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = *(v10 + 16);
  v20(v14, v32, v9);
  v20(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v9);
  v21 = *(v10 + 80);
  v22 = (v21 + 80) & ~v21;
  v23 = (v11 + v21 + v22) & ~v21;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v26 = v36;
  v25 = v37;
  *(v24 + 4) = v19;
  *(v24 + 5) = v26;
  *(v24 + 6) = v34;
  *(v24 + 7) = v25;
  *(v24 + 8) = v38;
  *(v24 + 9) = a9;
  v27 = *(v10 + 32);
  v27(&v24[v22], v30, v9);
  v27(&v24[v23], v31, v9);

  sub_1000E349C();
}

uint64_t sub_100133754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 392) = v17;
  *(v8 + 376) = v16;
  *(v8 + 360) = a7;
  *(v8 + 368) = a8;
  *(v8 + 344) = a5;
  *(v8 + 352) = a6;
  *(v8 + 336) = a4;
  v9 = type metadata accessor for JSCallable();
  *(v8 + 400) = v9;
  v10 = *(v9 - 8);
  *(v8 + 408) = v10;
  *(v8 + 416) = *(v10 + 64);
  *(v8 + 424) = swift_task_alloc();
  v11 = type metadata accessor for OnDeviceStorageError();
  *(v8 + 432) = v11;
  *(v8 + 440) = *(v11 - 8);
  *(v8 + 448) = swift_task_alloc();
  v12 = sub_10007B9A4(&qword_10026DF60, &qword_1001ED678);
  *(v8 + 456) = v12;
  *(v8 + 464) = *(v12 - 8);
  *(v8 + 472) = swift_task_alloc();
  v13 = type metadata accessor for Table();
  *(v8 + 480) = v13;
  *(v8 + 488) = *(v13 - 8);
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();

  return _swift_task_switch(sub_100133968, 0, 0);
}

uint64_t sub_100133968()
{
  sub_100003D28();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 512) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 520) = v2;
    *v2 = v0;
    v2[1] = sub_100133B44;

    return sub_100130E44();
  }

  else
  {
    if (qword_1002686E8 != -1)
    {
      sub_100003230(&qword_1002686E8);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v4 = sub_10000C3AC();
    sub_100002CFC(v4);
    sub_100023E44();
    v5 = sub_100135920();
    sub_10000A748(v5, xmmword_1001E5F70);
    type metadata accessor for JSOnDeviceStorageDatabase();
    sub_10001CD9C();
    static LogInterpolation.prefix<A>(_:_:)();
    sub_10001823C();
    v6 = static os_log_type_t.error.getter();
    sub_1000036B0(v6, v5);

    sub_10000725C();

    sub_100002D8C();

    return v7();
  }
}

uint64_t sub_100133B44()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 528) = v4;
  *(v2 + 536) = v0;

  sub_1000060D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100133C48()
{
  sub_100003D48();
  v1 = *(v0 + 376);

  Table.init(_:database:)();
  if (v1)
  {
    sub_100052D94(*(v0 + 376), (v0 + 232));
    if (*(v0 + 256))
    {
      if (swift_dynamicCast())
      {
        v2 = *(v0 + 496);
        v3 = *(v0 + 480);
        v4 = *(v0 + 488);
        v6 = *(v0 + 464);
        v5 = *(v0 + 472);
        v7 = *(v0 + 456);
        sub_100134EB4();
        ExpressionType.init(literal:)();
        sub_100134DD4(&qword_10026DF70, &type metadata accessor for Table, &protocol conformance descriptor for Table);
        sub_10000AA08();
        SchemaType.select(_:)();
        *(v0 + 80) = v3;
        *(v0 + 88) = sub_100134DD4(&qword_10026DF68, &type metadata accessor for Table, &protocol conformance descriptor for Table);
        sub_100017E64((v0 + 56));
        QueryType.where(_:)();
        (*(v4 + 8))(v2, v3);
        (*(v6 + 8))(v5, v7);
        goto LABEL_7;
      }
    }

    else
    {
      sub_100009FB0(v0 + 232, &qword_10026D350, &qword_1001E6050);
    }
  }

  *(v0 + 80) = *(v0 + 480);
  *(v0 + 88) = sub_100134DD4(&qword_10026DF68, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  sub_100017E64((v0 + 56));
  sub_100134DD4(&qword_10026DF70, &type metadata accessor for Table, &protocol conformance descriptor for Table);
  sub_10000AA08();
  SchemaType.select(_:)();
LABEL_7:
  v8 = swift_task_alloc();
  *(v0 + 544) = v8;
  *v8 = v0;
  v8[1] = sub_100133F30;
  sub_10000481C();

  return __s15OnDeviceStorage10ConnectionC6selectySay0abC4Core3RowVGAE9QueryType_pYaAA0abC5ErrorOYKF();
}

uint64_t sub_100133F30()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 552) = v3;

  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100134030()
{
  if (qword_1002686E8 != -1)
  {
    sub_100003230(&qword_1002686E8);
  }

  v1 = v0[64];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = sub_10000C3AC();
  sub_100002CFC(v2);
  sub_100023E44();
  v3 = sub_100135920();
  sub_10000A748(v3, xmmword_1001E5F70);
  v0[28] = type metadata accessor for JSOnDeviceStorageDatabase();
  v0[25] = v1;
  v1;
  sub_10001CD9C();
  static LogInterpolation.prefix(_:_:)();
  sub_100002C00(v0 + 25);
  sub_1000293FC();
  v4 = static os_log_type_t.default.getter();
  sub_1000036B0(v4, v3);

  sub_10000B3C0();
  v9 = sub_10011F068(v5, v6, v7, v8);
  v10 = v0[15];
  v11 = v0[69];
  v12 = v0[64];
  v13 = v0[61];
  if (v10)
  {
    v25 = v0[63];
    v26 = v0[64];
    v14 = v0[52];
    v15 = v0[53];
    v24 = v0[60];
    v17 = v0[50];
    v16 = v0[51];
    v18 = v0[48];
    sub_100003CA8(v0 + 12, v10);
    (*(v16 + 16))(v15, v18, v17);
    v19 = (v14 + ((*(v16 + 80) + 16) & ~*(v16 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    sub_10000AB04();
    v21();
    *(v20 + v19) = v11;
    dispatch thunk of TaskScheduler.schedule(task:)();

    (*(v13 + 8))(v25, v24);
    sub_100002C00(v0 + 7);
    sub_100002C00(v0 + 12);
  }

  else
  {
    (*(v13 + 8))(v0[63], v0[60], v9);

    sub_100002C00(v0 + 7);
    sub_100009FB0((v0 + 12), &qword_10026D6C8, &unk_1001ECB60);
  }

  sub_10000725C();

  sub_100002D8C();

  return v22();
}

uint64_t sub_100134894(uint64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for Row();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  v7 = swift_allocObject();
  v27 = xmmword_1001E61B0;
  *(v7 + 16) = xmmword_1001E61B0;
  sub_10007B9A4(&qword_10026DF88, &qword_1001ED680);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = v27;
  *(inited + 32) = 1937207154;
  *(inited + 40) = 0xE400000000000000;
  v10 = *(a2 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v23 = inited;
    v24 = v7;
    v25 = a1;
    v29 = _swiftEmptyArrayStorage;
    sub_10009BB44(0, v10, 0);
    v11 = v29;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v14 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v26 = *(v12 + 56);
    *&v27 = v13;
    v15 = (v12 - 8);
    do
    {
      v16 = v28;
      v17 = v12;
      (v27)(v6, v14, v28);
      v18 = Row.json.getter();
      (*v15)(v6, v16);
      v29 = v11;
      v20 = v11[2];
      v19 = v11[3];
      if (v20 >= v19 >> 1)
      {
        sub_10009BB44((v19 > 1), v20 + 1, 1);
        v11 = v29;
      }

      v11[2] = v20 + 1;
      v11[v20 + 4] = v18;
      v14 += v26;
      --v10;
      v12 = v17;
    }

    while (v10);
    v7 = v24;
    v9 = v23;
  }

  *(v9 + 48) = v11;
  sub_10007B9A4(&qword_10026DF90, &qword_1001ED688);
  v21 = Dictionary.init(dictionaryLiteral:)();
  *(v7 + 56) = sub_10007B9A4(&qword_10026DF98, &qword_1001ED690);
  *(v7 + 32) = v21;
  sub_10005C768(v7);
}

uint64_t sub_100134B28(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
  sub_100007600();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  v4 = objc_allocWithZone(type metadata accessor for JSError());
  swift_errorRetain();
  v5 = sub_1000505C8(a2);
  v6 = sub_100051018();

  *(v3 + 56) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(v3 + 32) = v6;
  sub_10005C768(v3);
}

uint64_t sub_100134CC8()
{
  sub_100003D48();
  v0 = type metadata accessor for JSCallable();
  sub_100002CFC(v0);
  sub_100006828();
  v1 = swift_task_alloc();
  v2 = sub_100012F88(v1);
  *v2 = v3;
  v2[1] = sub_100009CC8;
  sub_100004934();
  sub_10000481C();

  return sub_100133754(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100134DD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100134E34(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for JSCallable();
  sub_100002CFC(v1);
  v3 = sub_100017DC4(*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100134EB4()
{
  result = qword_10026DF80;
  if (!qword_10026DF80)
  {
    sub_10007BC70(&qword_10026DF60, &qword_1001ED678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026DF80);
  }

  return result;
}

uint64_t sub_100134F7C()
{
  type metadata accessor for JSCallable();
  sub_100002EF0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 80) & ~v4;
  v7 = (*(v6 + 64) + v4 + v5) & ~v4;
  swift_unknownObjectRelease();

  v8 = *(v3 + 8);
  v8(v1 + v5, v0);
  v8(v1 + v7, v0);

  return _swift_deallocObject(v1);
}

uint64_t sub_100135078()
{
  sub_100003D48();
  v0 = type metadata accessor for JSCallable();
  sub_100002CFC(v0);
  sub_100006828();
  v1 = swift_task_alloc();
  v2 = sub_100012F88(v1);
  *v2 = v3;
  v2[1] = sub_100009CC8;
  sub_100004934();
  sub_10000481C();

  return sub_100131D80(v4, v5, v6, v7, v8, v9, v10, v11);
}
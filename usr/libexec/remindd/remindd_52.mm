uint64_t sub_1004CCF4C(unsigned __int8 a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
LABEL_17:
      if (v3 != 9)
      {
        v12 = v2;
        if (v3 == 10)
        {
          v13 = String._bridgeToObjectiveC()();
          sub_1000060C8(0, &unk_10093F610, NSString_ptr);
          v14 = [v12 taskSpecificItemWithIdentifier:v13 valueClass:swift_getObjCClassFromMetadata()];

          if (v14)
          {
            goto LABEL_25;
          }

          __break(1u);
          goto LABEL_21;
        }

        goto LABEL_33;
      }

      v19 = v2;
      v20 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      v6 = [v19 taskSpecificItemWithIdentifier:v20 valueClass:swift_getObjCClassFromMetadata()];

      if (v6)
      {
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_29;
    }

    if (a1 == 6)
    {
LABEL_21:
      v15 = v2;
      v16 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      v17 = [v15 taskSpecificItemWithIdentifier:v16 valueClass:swift_getObjCClassFromMetadata()];

      if (v17)
      {
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_23;
    }

    v6 = v2;
    if (v3 != 7)
    {
LABEL_29:
      v21 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      v9 = [v6 taskSpecificItemWithIdentifier:v21 valueClass:swift_getObjCClassFromMetadata()];

      if (v9)
      {
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_31;
    }

    v7 = String._bridgeToObjectiveC()();
    sub_1000060C8(0, &unk_10093F610, NSString_ptr);
    v8 = [v6 taskSpecificItemWithIdentifier:v7 valueClass:swift_getObjCClassFromMetadata()];

    if (v8)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (a1 <= 2u)
  {
    v4 = &selRef_dayOfWeek;
    if (a1 != 1)
    {
      v4 = &selRef_isWeekend;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = &selRef_hourOfDay;
    }

    goto LABEL_24;
  }

  if (v3 == 3)
  {
LABEL_23:
    v5 = &selRef_hourOfDaySlot;
LABEL_24:
    [v2 *v5];
    goto LABEL_25;
  }

  v9 = v2;
  if (v3 == 4)
  {
    v10 = String._bridgeToObjectiveC()();
    sub_1000060C8(0, &unk_10093F610, NSString_ptr);
    v11 = [v9 taskSpecificItemWithIdentifier:v10 valueClass:swift_getObjCClassFromMetadata()];

    if (v11)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_31:
  v22 = String._bridgeToObjectiveC()();
  sub_1000060C8(0, &unk_10093F610, NSString_ptr);
  v12 = [v9 taskSpecificItemWithIdentifier:v22 valueClass:swift_getObjCClassFromMetadata()];

  if (v12)
  {
    goto LABEL_25;
  }

  __break(1u);
LABEL_33:
  v23 = String._bridgeToObjectiveC()();
  sub_1000060C8(0, &unk_10093F610, NSString_ptr);
  v24 = [v12 taskSpecificItemWithIdentifier:v23 valueClass:swift_getObjCClassFromMetadata()];

  if (!v24)
  {
    __break(1u);
    goto LABEL_35;
  }

LABEL_25:
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
LABEL_35:
    _StringGuts.grow(_:)(36);
    v25._countAndFlagsBits = 0xD000000000000021;
    v25._object = 0x80000001007FAAD0;
    String.append(_:)(v25);
    _print_unlocked<A, B>(_:_:)();
    v26._countAndFlagsBits = 125;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1004CD47C(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer **a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 > 4)
  {
    if (*(a1 + 16) <= 7u)
    {
      if (v3 != 5)
      {
        if (v3 == 6)
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v4 = swift_allocObject();
          *v4->clientIdentity = xmmword_1007953F0;
          v5 = [objc_opt_self() isWeekend];
          v6.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
          v7 = [objc_opt_self() itemWithType:v5 numberValue:v6.super.super.isa];
LABEL_33:
          v33 = v7;

          *&v4->clientIdentity[16] = v33;
          goto LABEL_34;
        }

        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v4 = swift_allocObject();
        *v4->clientIdentity = xmmword_1007953F0;
        v31 = objc_opt_self();
        v32 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
        v5 = [v31 taskSpecificItemWithIdentifier:v32 valueClass:swift_getObjCClassFromMetadata()];

        if (v5)
        {
          v6.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
          v7 = [objc_opt_self() itemWithType:v5 numberValue:v6.super.super.isa];
          goto LABEL_33;
        }

        goto LABEL_40;
      }

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v4 = swift_allocObject();
      *v4->clientIdentity = xmmword_1007953F0;
      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &unk_10093F610, NSString_ptr);
      v5 = [v23 taskSpecificItemWithIdentifier:v24 valueClass:swift_getObjCClassFromMetadata()];

      if (v5)
      {
LABEL_29:
        v6.super.super.isa = String._bridgeToObjectiveC()();
        v7 = [objc_opt_self() itemWithType:v5 stringValue:v6.super.super.isa];
        goto LABEL_33;
      }

      goto LABEL_36;
    }

    if (v3 == 8)
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v4 = swift_allocObject();
      *v4->clientIdentity = xmmword_1007953F0;
      v25 = objc_opt_self();
      v26 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      v5 = [v25 taskSpecificItemWithIdentifier:v26 valueClass:swift_getObjCClassFromMetadata()];

      if (v5)
      {
        v6.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;
        v7 = [objc_opt_self() itemWithType:v5 numberValue:v6.super.super.isa];
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v3 == 9)
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v4 = swift_allocObject();
      *v4->clientIdentity = xmmword_1007953F0;
      v5 = [objc_opt_self() dayOfWeek];
    }

    else
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v4 = swift_allocObject();
      *v4->clientIdentity = xmmword_1007953F0;
      v5 = [objc_opt_self() hourOfDay];
    }

LABEL_10:
    v6.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
    v7 = [objc_opt_self() itemWithType:v5 numberValue:v6.super.super.isa];
    goto LABEL_33;
  }

  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v4 = swift_allocObject();
      *v4->clientIdentity = xmmword_1007953F0;
      v29 = objc_opt_self();
      v30 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &unk_10093F610, NSString_ptr);
      v5 = [v29 taskSpecificItemWithIdentifier:v30 valueClass:swift_getObjCClassFromMetadata()];

      if (v5)
      {
        goto LABEL_29;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (REMSuggestedContact.isValid.getter())
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v4 = swift_allocObject();
      *v4->clientIdentity = xmmword_1007953F0;
      v10 = objc_opt_self();
      v11 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &unk_10093F610, NSString_ptr);
      v5 = [v10 taskSpecificItemWithIdentifier:v11 valueClass:swift_getObjCClassFromMetadata()];

      if (!v5)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_17:
      dispatch thunk of ClassificationLabel.description.getter();
      v13 = v12;
      v6.super.super.isa = String._bridgeToObjectiveC()();
      v13, v14, v15, v16, v17, v18, v19, v20;
      v7 = [objc_opt_self() itemWithType:v5 stringValue:v6.super.super.isa];
      goto LABEL_33;
    }

LABEL_27:
    v4 = &_swiftEmptyArrayStorage;
LABEL_34:
    *a2 = v4;
    return;
  }

  if (v3 == 2)
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v4 = swift_allocObject();
    *v4->clientIdentity = xmmword_1007953F0;
    v21 = objc_opt_self();
    v22 = String._bridgeToObjectiveC()();
    sub_1000060C8(0, &unk_10093F610, NSString_ptr);
    v5 = [v21 taskSpecificItemWithIdentifier:v22 valueClass:swift_getObjCClassFromMetadata()];

    if (v5)
    {
      goto LABEL_29;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v3 == 3)
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v4 = swift_allocObject();
    *v4->clientIdentity = xmmword_1007953F0;
    v8 = objc_opt_self();
    v9 = String._bridgeToObjectiveC()();
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    v5 = [v8 taskSpecificItemWithIdentifier:v9 valueClass:swift_getObjCClassFromMetadata()];

    if (!v5)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    goto LABEL_10;
  }

  if ((REMSuggestedLocation.isSpecificLocation.getter() & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v4 = swift_allocObject();
  *v4->clientIdentity = xmmword_1007953F0;
  v27 = objc_opt_self();
  v28 = String._bridgeToObjectiveC()();
  sub_1000060C8(0, &unk_10093F610, NSString_ptr);
  v5 = [v27 taskSpecificItemWithIdentifier:v28 valueClass:swift_getObjCClassFromMetadata()];

  if (v5)
  {
    goto LABEL_17;
  }

LABEL_42:
  __break(1u);
}

double sub_1004CDED4(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_timer;
  v5 = *(v1 + OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_timer);
  if (v5)
  {
    v6 = qword_1009362F0;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10094A170);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "RDCoreBehaviorModel: invalidating timer since mining task did finish", v11, 2u);
    }

    [v7 invalidate];
    v12 = *(v2 + v4);
    *(v2 + v4) = 0;
  }

  v13 = [a1 completionStatus];
  *(v2 + OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics + 24) = v13;
  v14 = [a1 coreAnalyticsDict];
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  type metadata accessor for Analytics();
  sub_1000F5104(&unk_100939240, &unk_100798990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  *(inited + 32) = 0x6E69616D6F44;
  *(inited + 40) = 0xE600000000000000;
  sub_1000060C8(0, &unk_10093F610, NSString_ptr);
  *(inited + 48) = NSString.init(stringLiteral:)();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x80000001007FAA80;
  [a1 completionStatus];
  *(inited + 72) = Int._bridgeToObjectiveC()();
  v16 = sub_10038D880(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939250, &unk_100795D30);
  swift_arrayDestroy();
  static Analytics.postEvent(_:payload:duration:)();
  v16, v17, v18, v19, v20, v21, v22, v23;
  return result;
}

void sub_1004CE61C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v8 = v3;
      if (v2 <= 1)
      {
        v9 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *v9->clientIdentity = v2 / 2;
      }

      v18[0] = &v9->clientIdentity[16];
      v18[1] = (v2 / 2);
      v10 = v9;
      sub_1004CEA38(v18, v19, a1, v8, v4, v5, v6, v7);
      *v10->clientIdentity = 0;
      v10, v11, v12, v13, v14, v15, v16, v17;
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
    sub_1004CE828(0, v2, 1, a1);
  }
}

void sub_1004CE714(unint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v8 = v3;
      v9 = v2 / 2;
      if (v2 <= 1)
      {
        v10 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000060C8(0, &qword_10093F650, BMRule_ptr);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v20[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v20[1] = v9;
      v12 = v10;
      sub_1004CF014(v20, v21, a1, v8, v4, v5, v6, v7);
      *(v11 + 16) = 0;
      v12, v13, v14, v15, v16, v17, v18, v19;
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
    sub_1004CE8F8(0, v2, 1, a1);
  }
}

uint64_t sub_1004CE828(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1004CE8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v24 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      [v11 support];
      v14 = v13;
      [v12 support];
      if (v14 == v15)
      {
        [v11 confidence];
        v17 = v16;
        [v12 confidence];
      }

      else
      {
        [v11 support];
        v17 = v19;
        [v12 support];
      }

      v20 = v18;

      if (v20 >= v17)
      {
LABEL_4:
        ++v4;
        v6 = v24 + 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v21 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v21;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004CEA38(char **a1, const char *a2, uint64_t *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v98 = a3;
  v9 = v8;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = &_swiftEmptyArrayStorage;
LABEL_106:
    v13 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v12 = sub_1004361F4(v12, a2, a3, a4, a5, a6, a7, a8);
    }

    clientIdentity = v12->clientIdentity;
    v88 = *v12->clientIdentity;
    if (v88 >= 2)
    {
      while (*v98)
      {
        v89 = (v12 + 16 * v88);
        v90 = *v89;
        v91 = &clientIdentity[2 * v88];
        v92 = v91[1];
        sub_1004CF790((*v98 + 16 * *v89), (*v98 + 16 * *v91), (*v98 + 16 * v92), v13);
        if (v9)
        {
          goto LABEL_115;
        }

        if (v92 < v90)
        {
          goto LABEL_130;
        }

        if (v88 - 2 >= *clientIdentity)
        {
          goto LABEL_131;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *clientIdentity - v88;
        if (*clientIdentity < v88)
        {
          goto LABEL_132;
        }

        v88 = *clientIdentity - 1;
        memmove(v91, v91 + 2, 16 * v93);
        *clientIdentity = v88;
        if (v88 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:
    v12, a2, a3, a4, a5, a6, a7, a8;
    return;
  }

  v96 = a4;
  v11 = 0;
  v12 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v11++;
    if (v11 < v10)
    {
      v14 = (*v98 + 16 * v11);
      a2 = v14[1];
      v15 = *v98 + 16 * v13;
      a3 = *v15;
      a4 = *(v15 + 8);
      if (*v14 == *v15 && a2 == a4)
      {
        v17 = 0;
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v11 = v13 + 2;
      if (v13 + 2 < v10)
      {
        v18 = v15 + 24;
        v19 = v15 + 24;
        do
        {
          a4 = *v18;
          v20 = *(v19 + 16);
          v19 += 16;
          a2 = v20;
          a3 = *(v18 - 8);
          if (*(v18 + 8) == a3 && a2 == a4)
          {
            if (v17)
            {
              goto LABEL_24;
            }
          }

          else if ((v17 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            goto LABEL_23;
          }

          ++v11;
          v18 = v19;
        }

        while (v10 != v11);
        v11 = v10;
      }

LABEL_23:
      if (v17)
      {
LABEL_24:
        if (v11 < v13)
        {
          goto LABEL_135;
        }

        if (v13 < v11)
        {
          v22 = 0;
          v23 = 16 * v11;
          v24 = 16 * v13;
          v25 = v13;
          do
          {
            if (v25 != v11 + v22 - 1)
            {
              v30 = *v98;
              if (!*v98)
              {
                goto LABEL_141;
              }

              v26 = (v30 + v24);
              v27 = v30 + v23;
              v28 = *v26;
              v29 = v26[1];
              *v26 = *(v27 - 16);
              *(v27 - 16) = v28;
              *(v27 - 8) = v29;
            }

            ++v25;
            --v22;
            v23 -= 16;
            v24 += 16;
          }

          while (v25 < v11 + v22);
        }
      }
    }

    v31 = v98[1];
    if (v11 < v31)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_134;
      }

      if (v11 - v13 < v96)
      {
        break;
      }
    }

LABEL_55:
    if (v11 < v13)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1003658B8(0, *v12->clientIdentity + 1, 1, v12, a5, a6, a7, a8);
    }

    v42 = *v12->clientIdentity;
    v41 = *&v12->clientIdentity[8];
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v12 = sub_1003658B8((v41 > 1), v42 + 1, 1, v12, a5, a6, a7, a8);
    }

    *v12->clientIdentity = v43;
    v44 = v12 + 16 * v42;
    *(v44 + 4) = v13;
    *(v44 + 5) = v11;
    v45 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *&v12->clientIdentity[16];
          v48 = *&v12->clientIdentity[24];
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_75:
          if (v50)
          {
            goto LABEL_121;
          }

          v63 = &v12->super.isa + 2 * v43;
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_124;
          }

          v69 = &v12->clientIdentity[16 * v46 + 16];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_128;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v73 = &v12->super.isa + 2 * v43;
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_89:
        if (v68)
        {
          goto LABEL_123;
        }

        v76 = v12 + 16 * v46;
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_126;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_96:
        v13 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v98)
        {
          goto LABEL_140;
        }

        v84 = *&v12->clientIdentity[16 * v13 + 16];
        v85 = *&v12->clientIdentity[16 * v46 + 24];
        sub_1004CF790((*v98 + 16 * v84), (*v98 + 16 * *&v12->clientIdentity[16 * v46 + 16]), (*v98 + 16 * v85), v45);
        if (v9)
        {
          goto LABEL_115;
        }

        if (v85 < v84)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1004361F4(v12, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v13 >= *v12->clientIdentity)
        {
          goto LABEL_118;
        }

        v86 = v12 + 16 * v13;
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        sub_100436168(v46);
        v43 = *v12->clientIdentity;
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v12->clientIdentity[16 * v43 + 16];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_119;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_120;
      }

      v58 = &v12->super.isa + 2 * v43;
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_122;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_125;
      }

      if (v62 >= v54)
      {
        v80 = &v12->clientIdentity[16 * v46 + 16];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_129;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v10 = v98[1];
    if (v11 >= v10)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v13, v96))
  {
    goto LABEL_136;
  }

  v95 = v9;
  if (&v96[v13] >= v31)
  {
    v9 = v98[1];
  }

  else
  {
    v9 = &v96[v13];
  }

  if (v9 < v13)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v11 == v9)
  {
LABEL_54:
    v9 = v95;
    goto LABEL_55;
  }

  v32 = *v98;
  v33 = *v98 + 16 * v11;
  v94 = v13;
  v34 = (v13 - v11);
LABEL_43:
  v35 = v32 + 16 * v11;
  v36 = *v35;
  a2 = *(v35 + 8);
  v37 = v34;
  v38 = v33;
  while (1)
  {
    a3 = *(v38 - 16);
    a4 = *(v38 - 8);
    v39 = v36 == a3 && a2 == a4;
    if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_42:
      ++v11;
      v33 += 16;
      --v34;
      if (v11 != v9)
      {
        goto LABEL_43;
      }

      v11 = v9;
      v13 = v94;
      goto LABEL_54;
    }

    if (!v32)
    {
      break;
    }

    v36 = *v38;
    a2 = *(v38 + 8);
    *v38 = *(v38 - 16);
    *(v38 - 8) = a2;
    *(v38 - 16) = v36;
    v38 -= 16;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

void sub_1004CF014(void ***a1, const char *a2, unint64_t *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = v9;
  v12 = a3[1];
  if (v12 < 1)
  {
    v14 = &_swiftEmptyArrayStorage;
LABEL_97:
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    v8 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = v8;
    }

    else
    {
LABEL_131:
      v113 = sub_1004361F4(v8, a2, a3, v14, a5, a6, a7, a8);
    }

    v114 = v11;
    v8 = *v113->clientIdentity;
    if (v8 >= 2)
    {
      while (*a3)
      {
        v11 = v8 - 1;
        v115 = *(&v113->super.isa + 2 * v8);
        v110 = v113;
        v116 = *&v113->clientIdentity[16 * v8 + 8];
        sub_1004CF9B8((*a3 + 8 * v115), (*a3 + 8 * *&v113->clientIdentity[16 * v8]), (*a3 + 8 * v116), v10);
        if (v114)
        {
          goto LABEL_109;
        }

        if (v116 < v115)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_1004361F4(v110, a2, a3, v14, a5, a6, a7, a8);
        }

        if (v8 - 2 >= *v110->clientIdentity)
        {
          goto LABEL_125;
        }

        v117 = &v110->super.isa + 2 * v8;
        *v117 = v115;
        v117[1] = v116;
        sub_100436168(v8 - 1);
        v113 = v110;
        v8 = *v110->clientIdentity;
        if (v8 <= 1)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_135;
    }

LABEL_108:
    v113, a2, a3, v14, a5, a6, a7, a8;
    return;
  }

  v13 = 0;
  v14 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v15 = v13;
    v16 = v13 + 1;
    if (v13 + 1 < v12)
    {
      v120 = v14;
      v8 = *a3;
      v17 = *(*a3 + 8 * v13);
      v122 = v13;
      v18 = *(*a3 + 8 * v16);
      v19 = v17;
      v20 = &selRef_support;
      [v18 support];
      v22 = v21;
      [v19 support];
      if (v22 == v23)
      {
        v20 = &selRef_confidence;
      }

      [v18 *v20];
      v25 = v24;
      [v19 *v20];
      v27 = v26;

      v15 = v122;
      v16 = v122 + 2;
      if (v122 + 2 < v12)
      {
        v8 += 8 * v122 + 16;
        do
        {
          v32 = *(v8 - 8);
          v33 = *v8;
          v34 = v32;
          [v33 support];
          v36 = v35;
          [v34 support];
          if (v36 == v37)
          {
            v10 = &selRef_attachmentRepresentationAndReturnError_;
            [v33 confidence];
            v39 = v38;
            [v34 confidence];
            v41 = v40;

            if (v27 < v25 == v41 >= v39)
            {
              goto LABEL_15;
            }
          }

          else
          {
            [v33 support];
            v29 = v28;
            [v34 support];
            v31 = v30;

            if (v27 < v25 == v31 >= v29)
            {
              goto LABEL_15;
            }
          }

          v8 += 8;
          ++v16;
        }

        while (v12 != v16);
        v16 = v12;
LABEL_15:
        v15 = v122;
      }

      v14 = v120;
      if (v27 < v25)
      {
        if (v16 < v15)
        {
          goto LABEL_128;
        }

        if (v15 < v16)
        {
          v42 = 8 * v16 - 8;
          v43 = 8 * v15;
          v44 = v16;
          v45 = v15;
          do
          {
            if (v45 != --v44)
            {
              v47 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              v46 = *(v47 + v43);
              *(v47 + v43) = *(v47 + v42);
              *(v47 + v42) = v46;
            }

            ++v45;
            v42 -= 8;
            v43 += 8;
          }

          while (v45 < v44);
        }
      }
    }

    v48 = a3[1];
    if (v16 < v48)
    {
      if (__OFSUB__(v16, v15))
      {
        goto LABEL_127;
      }

      if (v16 - v15 < a4)
      {
        v49 = v15 + a4;
        if (__OFADD__(v15, a4))
        {
          goto LABEL_129;
        }

        if (v49 >= v48)
        {
          v49 = a3[1];
        }

        if (v49 < v15)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (v16 != v49)
        {
          break;
        }
      }
    }

LABEL_45:
    if (v16 < v15)
    {
      goto LABEL_126;
    }

    v67 = v14;
    v127 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v14 = v67;
    }

    else
    {
      v14 = sub_1003658B8(0, *v67->clientIdentity + 1, 1, v67, a5, a6, a7, a8);
    }

    v8 = *v14->clientIdentity;
    v68 = *&v14->clientIdentity[8];
    v69 = v8 + 1;
    if (v8 >= v68 >> 1)
    {
      v14 = sub_1003658B8((v68 > 1), v8 + 1, 1, v14, a5, a6, a7, a8);
    }

    *v14->clientIdentity = v69;
    v70 = v14 + 16 * v8;
    *(v70 + 4) = v15;
    *(v70 + 5) = v127;
    v71 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (v8)
    {
      while (1)
      {
        v72 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v73 = *&v14->clientIdentity[16];
          v74 = *&v14->clientIdentity[24];
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_65:
          if (v76)
          {
            goto LABEL_115;
          }

          v89 = &v14->super.isa + 2 * v69;
          v91 = *v89;
          v90 = v89[1];
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_118;
          }

          v95 = &v14->clientIdentity[16 * v72 + 16];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_122;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v69 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        v99 = &v14->super.isa + 2 * v69;
        v101 = *v99;
        v100 = v99[1];
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_79:
        if (v94)
        {
          goto LABEL_117;
        }

        v102 = v14 + 16 * v72;
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_120;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_86:
        v8 = v72 - 1;
        if (v72 - 1 >= v69)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v110 = v14;
        v111 = *&v14->clientIdentity[16 * v8 + 16];
        v10 = *&v14->clientIdentity[16 * v72 + 24];
        sub_1004CF9B8((*a3 + 8 * v111), (*a3 + 8 * *&v14->clientIdentity[16 * v72 + 16]), (*a3 + 8 * v10), v71);
        if (v11)
        {
LABEL_109:
          v110, a2, a3, v14, a5, a6, a7, a8;
          return;
        }

        if (v10 < v111)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_1004361F4(v110, a2, a3, v14, a5, a6, a7, a8);
        }

        if (v8 >= *v110->clientIdentity)
        {
          goto LABEL_112;
        }

        v112 = v110 + 16 * v8;
        *(v112 + 4) = v111;
        *(v112 + 5) = v10;
        sub_100436168(v72);
        v14 = v110;
        v69 = *v110->clientIdentity;
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v14->clientIdentity[16 * v69 + 16];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_113;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_114;
      }

      v84 = &v14->super.isa + 2 * v69;
      v86 = *v84;
      v85 = v84[1];
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_116;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_119;
      }

      if (v88 >= v80)
      {
        v106 = &v14->clientIdentity[16 * v72 + 16];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_123;
        }

        if (v75 < v109)
        {
          v72 = v69 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_65;
    }

LABEL_3:
    v13 = v127;
    v12 = a3[1];
    if (v127 >= v12)
    {
      goto LABEL_97;
    }
  }

  v121 = v14;
  v123 = v15;
  v118 = v11;
  v50 = *a3;
  v10 = *a3 + 8 * v16 - 8;
  v51 = v15 - v16;
  v125 = v49;
LABEL_35:
  v126 = v16;
  v52 = *(v50 + 8 * v16);
  v8 = v51;
  v53 = v10;
  while (1)
  {
    v54 = *v53;
    v55 = v52;
    v56 = v54;
    [v55 support];
    v58 = v57;
    [v56 support];
    if (v58 == v59)
    {
      [v55 confidence];
      v61 = v60;
      [v56 confidence];
    }

    else
    {
      [v55 support];
      v61 = v63;
      [v56 support];
    }

    v64 = v62;

    if (v64 >= v61)
    {
LABEL_34:
      v16 = v126 + 1;
      v10 += 8;
      --v51;
      if (v126 + 1 != v125)
      {
        goto LABEL_35;
      }

      v16 = v125;
      v11 = v118;
      v14 = v121;
      v15 = v123;
      goto LABEL_45;
    }

    if (!v50)
    {
      break;
    }

    v65 = *v53;
    v52 = *(v53 + 8);
    *v53 = v52;
    *(v53 + 8) = v65;
    v53 -= 8;
    if (__CFADD__(v8++, 1))
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}

uint64_t sub_1004CF790(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1004CF9B8(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      v15 = *v4;
      v16 = *v6;
      v17 = v15;
      [v16 support];
      v19 = v18;
      [v17 support];
      if (v19 == v20)
      {
        [v16 confidence];
        v22 = v21;
        [v17 confidence];
      }

      else
      {
        [v16 support];
        v22 = v24;
        [v17 support];
      }

      v25 = v23;

      if (v25 >= v22)
      {
        break;
      }

      v26 = v6;
      v27 = v7 == v6++;
      if (!v27)
      {
        goto LABEL_19;
      }

LABEL_20:
      ++v7;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_43;
      }
    }

    v26 = v4;
    v27 = v7 == v4++;
    if (v27)
    {
      goto LABEL_20;
    }

LABEL_19:
    *v7 = *v26;
    goto LABEL_20;
  }

  if (a4 != __dst || &__dst[v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    do
    {
      v28 = v6 - 1;
      --v5;
      v29 = v14;
      v44 = v6 - 1;
      while (1)
      {
        v30 = *--v29;
        v31 = *v28;
        v32 = v30;
        v33 = v31;
        [v32 support];
        v35 = v34;
        [v33 support];
        if (v35 == v36)
        {
          [v32 confidence];
          v38 = v37;
          [v33 confidence];
        }

        else
        {
          [v32 support];
          v38 = v40;
          [v33 support];
        }

        v41 = v39;

        v42 = v5 + 1;
        if (v41 < v38)
        {
          break;
        }

        v28 = v6 - 1;
        if (v42 != v14)
        {
          *v5 = *v29;
        }

        --v5;
        v14 = v29;
        if (v29 <= v4)
        {
          v14 = v29;
          goto LABEL_43;
        }
      }

      if (v42 != v6)
      {
        *v5 = *v44;
      }

      if (v14 <= v4)
      {
        break;
      }

      --v6;
    }

    while (v44 > v7);
    v6 = v44;
  }

LABEL_43:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

unint64_t *sub_1004CFCF0(unint64_t *result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1004D0DDC(result, a4, a2, a3);

    return v8;
  }

  return result;
}

void *sub_1004CFD78(void *result, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
    }

    sub_1004D03C8(result, a2, a3, a4);
    v8 = v7;

    return v8;
  }

  return result;
}

unint64_t *sub_1004CFDF0(unint64_t *result, uint64_t a2, uint64_t a3, void *a4, double *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a4;
    sub_1004D2BA4(v9, a2, a3, a5);
    v12 = v11;

    return v12;
  }

  return result;
}

Swift::Int sub_1004CFE8C(uint64_t a1, void *a2, double *a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = _swiftEmptySetSingleton;
    v23 = _swiftEmptySetSingleton;
    v21 = a2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000060C8(0, &qword_10093F650, BMRule_ptr);
      while (1)
      {
        swift_dynamicCast();
        sub_1004D10AC(&v22, a3);
        if (v3)
        {
          break;
        }

        v7 = v22;
        if (v6)
        {
          v8 = v5[2];
          if (v5[3] <= v8)
          {
            sub_1003828AC(v8 + 1);
          }

          v5 = v23;
          result = NSObject._rawHashValue(seed:)(v23[5]);
          v10 = v5 + 7;
          v11 = -1 << *(v5 + 32);
          v12 = result & ~v11;
          v13 = v12 >> 6;
          if (((-1 << v12) & ~v5[(v12 >> 6) + 7]) != 0)
          {
            v14 = __clz(__rbit64((-1 << v12) & ~v5[(v12 >> 6) + 7])) | v12 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v15 = 0;
            v16 = (63 - v11) >> 6;
            do
            {
              if (++v13 == v16 && (v15 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v17 = v13 == v16;
              if (v13 == v16)
              {
                v13 = 0;
              }

              v15 |= v17;
              v18 = v10[v13];
            }

            while (v18 == -1);
            v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          }

          *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          *(v5[6] + 8 * v14) = v7;
          ++v5[2];
        }

        else
        {
        }

        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_21;
        }
      }

      v20 = v22;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v5 = sub_1004D2D04(a1, a2, a3);
  }

  return v5;
}

unint64_t *sub_1004D00EC(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 <= 0xD)
  {
    goto LABEL_2;
  }

  v14 = 8 * (v8 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v10 = v14;
LABEL_2:
    __chkstk_darwin(a1, v10);
    v12 = &v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = sub_1004D0DDC(v12, a2, v9, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v15 = swift_slowAlloc();
  v16 = v3;
  v17 = sub_1004CFCF0(v15, v9, v5, a2);

  if (!v16)
  {
    return v17;
  }

  return result;
}

void sub_1004D0268(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 > 0xD)
  {
    v12 = 8 * (v6 >> 6);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      sub_1004CFD78(v13, v7, v3, v14);

      return;
    }

    v8 = v12;
  }

  __chkstk_darwin(a1, v8);
  v10 = &v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v10, v9);
  sub_1004D03C8(v10, v7, v3, v11);
  if (v2)
  {
    swift_willThrow();
  }
}

void sub_1004D03C8(unint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v48 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v17 = __clz(__rbit64(v8));
    v51 = (v8 - 1) & v8;
LABEL_12:
    v20 = v17 | (v4 << 6);
    v21 = *(*(a3 + 48) + 16 * v20 + 8);
    v49 = v20;
    v22 = *(*(a3 + 56) + 8 * v20);
    sub_10013BCF4();

    if (StringProtocol.contains<A>(_:)())
    {
      v21, v23, v24, v25, v26, v27, v28, v29;
      v22, v10, v11, v12, v13, v14, v15, v16;
      v8 = v51;
    }

    else
    {
      v30 = StringProtocol.contains<A>(_:)();
      v21, v31, v32, v33, v34, v35, v36, v37;
      v22, v38, v39, v40, v41, v42, v43, v44;
      v8 = v51;
      if ((v30 & 1) == 0)
      {
        *(a1 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
        if (__OFADD__(v48++, 1))
        {
          __break(1u);
LABEL_17:
          sub_10055B778(a1, a2, v48, a3);
          return;
        }
      }
    }
  }

  v18 = v4;
  while (1)
  {
    v4 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_17;
    }

    v19 = *(v5 + 8 * v4);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v51 = (v19 - 1) & v19;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1004D0620(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1004D071C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004D071C(uint64_t a1)
{
  if (!qword_10094A1F0[0])
  {
    sub_1000060C8(255, &qword_10093F650, BMRule_ptr);
    v1 = type metadata accessor for OrderedDictionary();
    if (!v2)
    {
      atomic_store(v1, qword_10094A1F0);
    }
  }
}

uint64_t sub_1004D07BC(uint64_t a1)
{
  result = type metadata accessor for REMSuggestedAttributeInputDataFrame();
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

uint64_t getEnumTagSinglePayload for RDCoreBehaviorModel.Result(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RDCoreBehaviorModel.Result(uint64_t result, int a2, int a3)
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

unint64_t sub_1004D08BC()
{
  result = qword_10094A348;
  if (!qword_10094A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A348);
  }

  return result;
}

void sub_1004D0910(_TtC7remindd19RDXPCStorePerformer *a1, unint64_t a2, unint64_t a3)
{
  if (a3 < a2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    if (v3 > 1)
    {
      goto LABEL_11;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v3 = a3;

  if (a2 == v3)
  {
    return;
  }

  if (a2 >= v3)
  {
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = a1;

  sub_1004CDDC8(&v14, &v13);
  a1, v6, v7, v8, v9, v10, v11, v12;

  if (v3 != 1)
  {
    goto LABEL_10;
  }
}

unint64_t *sub_1004D09D4()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A3870;
  *(inited + 32) = sub_1004CCF4C(4u);
  *(inited + 40) = sub_1004CCF4C(5u);
  *(inited + 48) = sub_1004CCF4C(6u);
  *(inited + 56) = sub_1004CCF4C(7u);
  *(inited + 64) = sub_1004CCF4C(8u);
  *(inited + 72) = sub_1004CCF4C(9u);
  *(inited + 80) = sub_1004CCF4C(0xAu);
  *(inited + 88) = sub_1004CCF4C(0xBu);
  v1 = sub_1001A6330(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v1;
}

unint64_t *sub_1004D0AC0()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007AE450;
  *(inited + 32) = sub_1004CCF4C(4u);
  *(inited + 40) = sub_1004CCF4C(6u);
  *(inited + 48) = sub_1004CCF4C(5u);
  *(inited + 56) = sub_1004CCF4C(8u);
  *(inited + 64) = sub_1004CCF4C(9u);
  *(inited + 72) = sub_1004CCF4C(0xAu);
  *(inited + 80) = sub_1004CCF4C(0xBu);
  v1 = sub_1001A6330(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v1;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004D0BA0(unint64_t a1, _TtC7remindd19RDXPCStorePerformer **a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v4 = 0;
    v46 = v2 & 0xFFFFFFFFFFFFFF8;
    v47 = v2 & 0xC000000000000001;
    v44 = v2;
    v45 = i;
    while (1)
    {
      if (v47)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v46 + 16))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = *a2;

      v9 = [v6 antecedent];
      sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
      sub_10000CB48(&qword_10094A190, &qword_10093AA30, &qword_1007AE460, &protocol conformance descriptor for NSObject);
      v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1004C5794(v8);
      v12 = v11;
      v8, v13, v14, v15, v16, v17, v18, v19;
      v20 = sub_1001A68B0(v12);
      v12, v21, v22, v23, v24, v25, v26, v27;
      sub_1004535E0(v20, v10);
      LOBYTE(v12) = v28;
      v10, v29, v30, v31, v32, v33, v34, v35;
      v20, v36, v37, v38, v39, v40, v41, v42;
      if (v12)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v2 = v44;
      ++v4;
      if (v7 == v45)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t *sub_1004D0DDC(unint64_t *result, double a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a2 + -2592000.0;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = v12 | (v6 << 6);
LABEL_11:
    if (v11 < *(*(a4 + 48) + 8 * v13))
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_10055B560(result, a3, v5, a4);
      }
    }
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
      return sub_10055B560(result, a3, v5, a4);
    }

    v15 = *(a4 + 64 + 8 * v6);
    ++v14;
    if (v15)
    {
      v9 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004D0ED8(void *a1)
{
  v3 = sub_1000F5104(&qword_10094A480, &qword_1007AE628);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10000F61C(a1, v8);
  sub_1004D4BA0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000F5104(&qword_10094A460, &qword_1007AE618);
    v10[15] = 1;
    sub_1004D4C98();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000607C(a1);
  return v8;
}

void sub_1004D10AC(id *a1, double *a2)
{
  v421 = *a1;
  v3 = [*a1 consequent];
  sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
  sub_10000CB48(&qword_10094A190, &qword_10093AA30, &qword_1007AE460, &protocol conformance descriptor for NSObject);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *(v4 + 16);
  }

  v4, v5, v6, v7, v8, v9, v10, v11;
  if (v12 > 1)
  {
    return;
  }

  v392 = a2;
  v13 = [v421 antecedent];
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v402 = v14;
  if ((v14 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v14 = v423;
    v15 = v424;
    v16 = v425;
    v17 = v426;
    v18 = v427;
  }

  else
  {
    v19 = -1 << *(v14 + 32);
    v15 = v14 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v14 + 56);

    v17 = 0;
  }

  v404 = 0;
  v405 = v14;
  do
  {
LABEL_15:
    v29 = v17;
    v30 = v18;
    while (1)
    {
      if (v14 < 0)
      {
        v35 = __CocoaSet.Iterator.next()();
        if (!v35)
        {
          goto LABEL_43;
        }

        v473 = v35;
        swift_dynamicCast();
        v34 = v478;
        v17 = v29;
        v33 = v30;
        if (!v478)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v31 = v29;
        v32 = v30;
        v17 = v29;
        if (!v30)
        {
          while (1)
          {
            v17 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            if (v17 >= ((v16 + 64) >> 6))
            {
              goto LABEL_43;
            }

            v32 = *(v15 + 8 * v17);
            ++v31;
            if (v32)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_344:
          __break(1u);
          goto LABEL_345;
        }

LABEL_21:
        v33 = (v32 - 1) & v32;
        v34 = *(*(v14 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v32)))));
        if (!v34)
        {
          goto LABEL_43;
        }
      }

      v408 = v33;
      v36 = [v34 type];
      v37 = [v36 identifier];

      if (v37)
      {
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      v41 = objc_opt_self();
      v42 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &unk_10093F610, NSString_ptr);
      v43 = [v41 taskSpecificItemWithIdentifier:v42 valueClass:swift_getObjCClassFromMetadata()];

      if (!v43)
      {
        goto LABEL_355;
      }

      v44 = [v43 identifier];

      if (!v44)
      {
        if (!v40)
        {
          goto LABEL_39;
        }

LABEL_37:

        v47 = v40;
        v14 = v405;
        v18 = v408;
LABEL_14:
        v47, v22, v23, v24, v25, v26, v27, v28;
        goto LABEL_15;
      }

      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      if (!v40)
      {

        v14 = v405;
        v18 = v408;
        if (!v47)
        {
          goto LABEL_40;
        }

        goto LABEL_14;
      }

      if (!v47)
      {
        goto LABEL_37;
      }

      if (v38 == v45 && v40 == v47)
      {
        break;
      }

      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v40, v56, v57, v58, v59, v60, v61, v62;
      v47, v63, v64, v65, v66, v67, v68, v69;

      v29 = v17;
      v14 = v405;
      v18 = v408;
      v30 = v408;
      if (v55)
      {
        goto LABEL_40;
      }
    }

    v40, v48, v49, v50, v51, v52, v53, v54;
    v47, v70, v71, v72, v73, v74, v75, v76;
LABEL_39:

    v14 = v405;
    v18 = v408;
LABEL_40:
    v77 = __OFADD__(v404++, 1);
  }

  while (!v77);
  __break(1u);
LABEL_43:
  sub_10001B860(v14);
  v402, v78, v79, v80, v81, v82, v83, v84;
  v85 = [v421 consequent];
  v86 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v400 = v86;
  if ((v86 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v87 = v428;
    v88 = v429;
    v89 = v430;
    i = v431;
    v91 = v432;
  }

  else
  {
    v92 = -1 << *(v86 + 32);
    v88 = v86 + 56;
    v89 = ~v92;
    v93 = -v92;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    else
    {
      v94 = -1;
    }

    v91 = v94 & *(v86 + 56);

    i = 0;
    v87 = v86;
  }

  v403 = 0;
  v406 = v87;
  while (2)
  {
    while (2)
    {
      v102 = i;
      v103 = v91;
LABEL_53:
      if (v87 < 0)
      {
        v108 = __CocoaSet.Iterator.next()();
        if (!v108)
        {
          goto LABEL_80;
        }

        v473 = v108;
        swift_dynamicCast();
        v107 = v478;
        i = v102;
        v106 = v103;
        if (!v478)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v104 = v102;
        v105 = v103;
        for (i = v102; !v105; ++v104)
        {
          i = v104 + 1;
          if (__OFADD__(v104, 1))
          {
            goto LABEL_344;
          }

          if (i >= ((v89 + 64) >> 6))
          {
            goto LABEL_80;
          }

          v105 = *(v88 + 8 * i);
        }

        v106 = (v105 - 1) & v105;
        v107 = *(*(v87 + 48) + ((i << 9) | (8 * __clz(__rbit64(v105)))));
        if (!v107)
        {
          goto LABEL_80;
        }
      }

      v109 = [v107 type];
      v110 = [v109 identifier];

      v103 = v106;
      if (v110)
      {
        v409 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;
      }

      else
      {
        v409 = 0;
        v112 = 0;
      }

      v113 = objc_opt_self();
      v114 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &unk_10093F610, NSString_ptr);
      v115 = [v113 taskSpecificItemWithIdentifier:v114 valueClass:swift_getObjCClassFromMetadata()];

      if (!v115)
      {
        goto LABEL_356;
      }

      v116 = [v115 identifier];

      if (!v116)
      {
        v91 = v103;
        if (!v112)
        {
          goto LABEL_76;
        }

LABEL_74:

        v119 = v112;
        v87 = v406;
LABEL_51:
        v119, v95, v96, v97, v98, v99, v100, v101;
        continue;
      }

      break;
    }

    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = v118;

    if (!v112)
    {

      v87 = v406;
      v91 = v103;
      if (!v119)
      {
        goto LABEL_77;
      }

      goto LABEL_51;
    }

    v91 = v103;
    if (!v119)
    {
      goto LABEL_74;
    }

    if (v409 != v117 || v112 != v119)
    {
      v127 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v112, v128, v129, v130, v131, v132, v133, v134;
      v119, v135, v136, v137, v138, v139, v140, v141;

      v102 = i;
      v87 = v406;
      if (v127)
      {
        goto LABEL_77;
      }

      goto LABEL_53;
    }

    v112, v120, v121, v122, v123, v124, v125, v126;
    v119, v142, v143, v144, v145, v146, v147, v148;
LABEL_76:

    v87 = v406;
LABEL_77:
    v77 = __OFADD__(v403++, 1);
    if (!v77)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_80:
  sub_10001B860(v87);
  v400, v149, v150, v151, v152, v153, v154, v155;
  v156 = [v421 antecedent];
  v157 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v411 = v157;
  if ((v157 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v157 = v433;
    v158 = v434;
    v159 = v435;
    v160 = v436;
    v161 = v437;
  }

  else
  {
    v162 = -1 << *(v157 + 32);
    v158 = v157 + 56;
    v159 = ~v162;
    v163 = -v162;
    if (v163 < 64)
    {
      v164 = ~(-1 << v163);
    }

    else
    {
      v164 = -1;
    }

    v161 = v164 & *(v157 + 56);

    v160 = 0;
  }

  v399 = 0;
  do
  {
    v165 = v160;
    v166 = v161;
    do
    {
      if (v157 < 0)
      {
        v171 = __CocoaSet.Iterator.next()();
        if (!v171)
        {
          goto LABEL_102;
        }

        v473 = v171;
        swift_dynamicCast();
        v167 = v478;
        v160 = v165;
        v161 = v166;
        if (!v478)
        {
          goto LABEL_102;
        }
      }

      else
      {
        v169 = v165;
        v170 = v166;
        v160 = v165;
        if (!v166)
        {
          while (1)
          {
            v160 = v169 + 1;
            if (__OFADD__(v169, 1))
            {
              break;
            }

            if (v160 >= ((v159 + 64) >> 6))
            {
              goto LABEL_102;
            }

            v170 = *(v158 + 8 * v160);
            ++v169;
            if (v170)
            {
              goto LABEL_88;
            }
          }

LABEL_345:
          __break(1u);
          goto LABEL_346;
        }

LABEL_88:
        v161 = (v170 - 1) & v170;
        v167 = *(*(v157 + 48) + ((v160 << 9) | (8 * __clz(__rbit64(v170)))));
        if (!v167)
        {
          goto LABEL_102;
        }
      }

      v168 = sub_1004C8824(v167, 6);

      v165 = v160;
      v166 = v161;
    }

    while ((v168 & 1) == 0);
    v77 = __OFADD__(v399++, 1);
  }

  while (!v77);
  __break(1u);
LABEL_102:
  sub_10001B860(v157);
  v411, v172, v173, v174, v175, v176, v177, v178;
  v179 = [v421 consequent];
  v180 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v412 = v180;
  if ((v180 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v180 = v438;
    v181 = v439;
    v182 = v440;
    v183 = v441;
    v184 = v442;
  }

  else
  {
    v185 = -1 << *(v180 + 32);
    v181 = v180 + 56;
    v182 = ~v185;
    v186 = -v185;
    if (v186 < 64)
    {
      v187 = ~(-1 << v186);
    }

    else
    {
      v187 = -1;
    }

    v184 = v187 & *(v180 + 56);

    v183 = 0;
  }

  v398 = 0;
  do
  {
    v188 = v183;
    v189 = v184;
    do
    {
      if (v180 < 0)
      {
        v194 = __CocoaSet.Iterator.next()();
        if (!v194)
        {
          goto LABEL_124;
        }

        v473 = v194;
        swift_dynamicCast();
        v190 = v478;
        v183 = v188;
        v184 = v189;
        if (!v478)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v192 = v188;
        v193 = v189;
        v183 = v188;
        if (!v189)
        {
          while (1)
          {
            v183 = v192 + 1;
            if (__OFADD__(v192, 1))
            {
              break;
            }

            if (v183 >= ((v182 + 64) >> 6))
            {
              goto LABEL_124;
            }

            v193 = *(v181 + 8 * v183);
            ++v192;
            if (v193)
            {
              goto LABEL_110;
            }
          }

LABEL_346:
          __break(1u);
          goto LABEL_347;
        }

LABEL_110:
        v184 = (v193 - 1) & v193;
        v190 = *(*(v180 + 48) + ((v183 << 9) | (8 * __clz(__rbit64(v193)))));
        if (!v190)
        {
          goto LABEL_124;
        }
      }

      v191 = sub_1004C8824(v190, 6);

      v188 = v183;
      v189 = v184;
    }

    while ((v191 & 1) == 0);
    v77 = __OFADD__(v398++, 1);
  }

  while (!v77);
  __break(1u);
LABEL_124:
  sub_10001B860(v180);
  v412, v195, v196, v197, v198, v199, v200, v201;
  v202 = [v421 antecedent];
  v203 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v413 = v203;
  if ((v203 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v203 = v443;
    v204 = v444;
    v205 = v445;
    v206 = v446;
    v207 = v447;
  }

  else
  {
    v208 = -1 << *(v203 + 32);
    v204 = v203 + 56;
    v205 = ~v208;
    v209 = -v208;
    if (v209 < 64)
    {
      v210 = ~(-1 << v209);
    }

    else
    {
      v210 = -1;
    }

    v207 = v210 & *(v203 + 56);

    v206 = 0;
  }

  v407 = 0;
  do
  {
    v211 = v206;
    v212 = v207;
    do
    {
      if (v203 < 0)
      {
        v217 = __CocoaSet.Iterator.next()();
        if (!v217)
        {
          goto LABEL_146;
        }

        v473 = v217;
        swift_dynamicCast();
        v213 = v478;
        v206 = v211;
        v207 = v212;
        if (!v478)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v215 = v211;
        v216 = v212;
        v206 = v211;
        if (!v212)
        {
          while (1)
          {
            v206 = v215 + 1;
            if (__OFADD__(v215, 1))
            {
              break;
            }

            if (v206 >= ((v205 + 64) >> 6))
            {
              goto LABEL_146;
            }

            v216 = *(v204 + 8 * v206);
            ++v215;
            if (v216)
            {
              goto LABEL_132;
            }
          }

LABEL_347:
          __break(1u);
          goto LABEL_348;
        }

LABEL_132:
        v207 = (v216 - 1) & v216;
        v213 = *(*(v203 + 48) + ((v206 << 9) | (8 * __clz(__rbit64(v216)))));
        if (!v213)
        {
          goto LABEL_146;
        }
      }

      v214 = sub_1004C8824(v213, 5);

      v211 = v206;
      v212 = v207;
    }

    while ((v214 & 1) == 0);
    v77 = __OFADD__(v407++, 1);
  }

  while (!v77);
  __break(1u);
LABEL_146:
  sub_10001B860(v203);
  v413, v218, v219, v220, v221, v222, v223, v224;
  v225 = [v421 consequent];
  v226 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v414 = v226;
  if ((v226 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v226 = v448;
    v227 = v449;
    v228 = v450;
    v229 = v451;
    v230 = v452;
  }

  else
  {
    v231 = -1 << *(v226 + 32);
    v227 = v226 + 56;
    v228 = ~v231;
    v232 = -v231;
    if (v232 < 64)
    {
      v233 = ~(-1 << v232);
    }

    else
    {
      v233 = -1;
    }

    v230 = v233 & *(v226 + 56);

    v229 = 0;
  }

  v401 = 0;
  do
  {
    v234 = v229;
    v235 = v230;
    do
    {
      if (v226 < 0)
      {
        v240 = __CocoaSet.Iterator.next()();
        if (!v240)
        {
          goto LABEL_168;
        }

        v473 = v240;
        swift_dynamicCast();
        v236 = v478;
        v229 = v234;
        v230 = v235;
        if (!v478)
        {
          goto LABEL_168;
        }
      }

      else
      {
        v238 = v234;
        v239 = v235;
        v229 = v234;
        if (!v235)
        {
          while (1)
          {
            v229 = v238 + 1;
            if (__OFADD__(v238, 1))
            {
              break;
            }

            if (v229 >= ((v228 + 64) >> 6))
            {
              goto LABEL_168;
            }

            v239 = *(v227 + 8 * v229);
            ++v238;
            if (v239)
            {
              goto LABEL_154;
            }
          }

LABEL_348:
          __break(1u);
          goto LABEL_349;
        }

LABEL_154:
        v230 = (v239 - 1) & v239;
        v236 = *(*(v226 + 48) + ((v229 << 9) | (8 * __clz(__rbit64(v239)))));
        if (!v236)
        {
          goto LABEL_168;
        }
      }

      v237 = sub_1004C8824(v236, 5);

      v234 = v229;
      v235 = v230;
    }

    while ((v237 & 1) == 0);
    v77 = __OFADD__(v401++, 1);
  }

  while (!v77);
  __break(1u);
LABEL_168:
  sub_10001B860(v226);
  v414, v241, v242, v243, v244, v245, v246, v247;
  v248 = [v421 antecedent];
  v249 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v415 = v249;
  if ((v249 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v249 = v453;
    v250 = v454;
    v251 = v455;
    v252 = v456;
    v253 = v457;
  }

  else
  {
    v254 = -1 << *(v249 + 32);
    v250 = v249 + 56;
    v251 = ~v254;
    v255 = -v254;
    if (v255 < 64)
    {
      v256 = ~(-1 << v255);
    }

    else
    {
      v256 = -1;
    }

    v253 = v256 & *(v249 + 56);

    v252 = 0;
  }

  v397 = 0;
  do
  {
    v257 = v252;
    v258 = v253;
    do
    {
      if (v249 < 0)
      {
        v263 = __CocoaSet.Iterator.next()();
        if (!v263)
        {
          goto LABEL_190;
        }

        v473 = v263;
        swift_dynamicCast();
        v259 = v478;
        v252 = v257;
        v253 = v258;
        if (!v478)
        {
          goto LABEL_190;
        }
      }

      else
      {
        v261 = v257;
        v262 = v258;
        v252 = v257;
        if (!v258)
        {
          while (1)
          {
            v252 = v261 + 1;
            if (__OFADD__(v261, 1))
            {
              break;
            }

            if (v252 >= ((v251 + 64) >> 6))
            {
              goto LABEL_190;
            }

            v262 = *(v250 + 8 * v252);
            ++v261;
            if (v262)
            {
              goto LABEL_176;
            }
          }

LABEL_349:
          __break(1u);
          goto LABEL_350;
        }

LABEL_176:
        v253 = (v262 - 1) & v262;
        v259 = *(*(v249 + 48) + ((v252 << 9) | (8 * __clz(__rbit64(v262)))));
        if (!v259)
        {
          goto LABEL_190;
        }
      }

      v260 = sub_1004C8824(v259, 8);

      v257 = v252;
      v258 = v253;
    }

    while ((v260 & 1) == 0);
    v77 = __OFADD__(v397++, 1);
  }

  while (!v77);
  __break(1u);
LABEL_190:
  sub_10001B860(v249);
  v415, v264, v265, v266, v267, v268, v269, v270;
  v271 = [v421 consequent];
  v272 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v416 = v272;
  if ((v272 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v272 = v458;
    v273 = v459;
    v274 = v460;
    v275 = v461;
    v276 = v462;
  }

  else
  {
    v277 = -1 << *(v272 + 32);
    v273 = v272 + 56;
    v274 = ~v277;
    v278 = -v277;
    if (v278 < 64)
    {
      v279 = ~(-1 << v278);
    }

    else
    {
      v279 = -1;
    }

    v276 = v279 & *(v272 + 56);

    v275 = 0;
  }

  v396 = 0;
  do
  {
    v280 = v275;
    v281 = v276;
    do
    {
      if (v272 < 0)
      {
        v286 = __CocoaSet.Iterator.next()();
        if (!v286)
        {
          goto LABEL_212;
        }

        v473 = v286;
        swift_dynamicCast();
        v282 = v478;
        v275 = v280;
        v276 = v281;
        if (!v478)
        {
          goto LABEL_212;
        }
      }

      else
      {
        v284 = v280;
        v285 = v281;
        v275 = v280;
        if (!v281)
        {
          while (1)
          {
            v275 = v284 + 1;
            if (__OFADD__(v284, 1))
            {
              break;
            }

            if (v275 >= ((v274 + 64) >> 6))
            {
              goto LABEL_212;
            }

            v285 = *(v273 + 8 * v275);
            ++v284;
            if (v285)
            {
              goto LABEL_198;
            }
          }

LABEL_350:
          __break(1u);
          goto LABEL_351;
        }

LABEL_198:
        v276 = (v285 - 1) & v285;
        v282 = *(*(v272 + 48) + ((v275 << 9) | (8 * __clz(__rbit64(v285)))));
        if (!v282)
        {
          goto LABEL_212;
        }
      }

      v283 = sub_1004C8824(v282, 8);

      v280 = v275;
      v281 = v276;
    }

    while ((v283 & 1) == 0);
    v77 = __OFADD__(v396++, 1);
  }

  while (!v77);
  __break(1u);
LABEL_212:
  sub_10001B860(v272);
  v416, v287, v288, v289, v290, v291, v292, v293;
  v294 = [v421 antecedent];
  v295 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v417 = v295;
  if ((v295 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v295 = v463;
    v296 = v464;
    v297 = v465;
    v298 = v466;
    v299 = v467;
  }

  else
  {
    v300 = -1 << *(v295 + 32);
    v296 = v295 + 56;
    v297 = ~v300;
    v301 = -v300;
    if (v301 < 64)
    {
      v302 = ~(-1 << v301);
    }

    else
    {
      v302 = -1;
    }

    v299 = v302 & *(v295 + 56);

    v298 = 0;
  }

  v395 = 0;
  do
  {
    v303 = v298;
    v304 = v299;
    do
    {
      if (v295 < 0)
      {
        v309 = __CocoaSet.Iterator.next()();
        if (!v309)
        {
          goto LABEL_234;
        }

        v473 = v309;
        swift_dynamicCast();
        v305 = v478;
        v298 = v303;
        v299 = v304;
        if (!v478)
        {
          goto LABEL_234;
        }
      }

      else
      {
        v307 = v303;
        v308 = v304;
        v298 = v303;
        if (!v304)
        {
          while (1)
          {
            v298 = v307 + 1;
            if (__OFADD__(v307, 1))
            {
              break;
            }

            if (v298 >= ((v297 + 64) >> 6))
            {
              goto LABEL_234;
            }

            v308 = *(v296 + 8 * v298);
            ++v307;
            if (v308)
            {
              goto LABEL_220;
            }
          }

LABEL_351:
          __break(1u);
          goto LABEL_352;
        }

LABEL_220:
        v299 = (v308 - 1) & v308;
        v305 = *(*(v295 + 48) + ((v298 << 9) | (8 * __clz(__rbit64(v308)))));
        if (!v305)
        {
          goto LABEL_234;
        }
      }

      v306 = sub_1004C8824(v305, 9);

      v303 = v298;
      v304 = v299;
    }

    while ((v306 & 1) == 0);
    v77 = __OFADD__(v395++, 1);
  }

  while (!v77);
  __break(1u);
LABEL_234:
  sub_10001B860(v295);
  v417, v310, v311, v312, v313, v314, v315, v316;
  v317 = [v421 consequent];
  v318 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v418 = v318;
  if ((v318 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v318 = v468;
    v319 = v469;
    v320 = v470;
    v321 = v471;
    v322 = v472;
  }

  else
  {
    v323 = -1 << *(v318 + 32);
    v319 = v318 + 56;
    v320 = ~v323;
    v324 = -v323;
    if (v324 < 64)
    {
      v325 = ~(-1 << v324);
    }

    else
    {
      v325 = -1;
    }

    v322 = v325 & *(v318 + 56);

    v321 = 0;
  }

  v394 = 0;
  do
  {
    v326 = v321;
    v327 = v322;
    do
    {
      if (v318 < 0)
      {
        v332 = __CocoaSet.Iterator.next()();
        if (!v332)
        {
          goto LABEL_256;
        }

        v473 = v332;
        swift_dynamicCast();
        v328 = v478;
        v321 = v326;
        v322 = v327;
        if (!v478)
        {
          goto LABEL_256;
        }
      }

      else
      {
        v330 = v326;
        v331 = v327;
        v321 = v326;
        if (!v327)
        {
          while (1)
          {
            v321 = v330 + 1;
            if (__OFADD__(v330, 1))
            {
              break;
            }

            if (v321 >= ((v320 + 64) >> 6))
            {
              goto LABEL_256;
            }

            v331 = *(v319 + 8 * v321);
            ++v330;
            if (v331)
            {
              goto LABEL_242;
            }
          }

LABEL_352:
          __break(1u);
          goto LABEL_353;
        }

LABEL_242:
        v322 = (v331 - 1) & v331;
        v328 = *(*(v318 + 48) + ((v321 << 9) | (8 * __clz(__rbit64(v331)))));
        if (!v328)
        {
          goto LABEL_256;
        }
      }

      v329 = sub_1004C8824(v328, 9);

      v326 = v321;
      v327 = v322;
    }

    while ((v329 & 1) == 0);
    v77 = __OFADD__(v394++, 1);
  }

  while (!v77);
  __break(1u);
LABEL_256:
  sub_10001B860(v318);
  v418, v333, v334, v335, v336, v337, v338, v339;
  v340 = [v421 antecedent];
  v341 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v419 = v341;
  if ((v341 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v341 = v473;
    v342 = v474;
    v343 = v475;
    v344 = v476;
    v345 = v477;
  }

  else
  {
    v346 = -1 << *(v341 + 32);
    v342 = v341 + 56;
    v343 = ~v346;
    v347 = -v346;
    if (v347 < 64)
    {
      v348 = ~(-1 << v347);
    }

    else
    {
      v348 = -1;
    }

    v345 = v348 & *(v341 + 56);

    v344 = 0;
  }

  v393 = 0;
  do
  {
    v349 = v344;
    v350 = v345;
    do
    {
      if (v341 < 0)
      {
        v355 = __CocoaSet.Iterator.next()();
        if (!v355)
        {
          goto LABEL_278;
        }

        v422 = v355;
        swift_dynamicCast();
        v351 = v478;
        v344 = v349;
        v345 = v350;
        if (!v478)
        {
          goto LABEL_278;
        }
      }

      else
      {
        v353 = v349;
        v354 = v350;
        v344 = v349;
        if (!v350)
        {
          while (1)
          {
            v344 = v353 + 1;
            if (__OFADD__(v353, 1))
            {
              break;
            }

            if (v344 >= ((v343 + 64) >> 6))
            {
              goto LABEL_278;
            }

            v354 = *(v342 + 8 * v344);
            ++v353;
            if (v354)
            {
              goto LABEL_264;
            }
          }

LABEL_353:
          __break(1u);
          goto LABEL_354;
        }

LABEL_264:
        v345 = (v354 - 1) & v354;
        v351 = *(*(v341 + 48) + ((v344 << 9) | (8 * __clz(__rbit64(v354)))));
        if (!v351)
        {
          goto LABEL_278;
        }
      }

      v352 = sub_1004C8824(v351, 11);

      v349 = v344;
      v350 = v345;
    }

    while ((v352 & 1) == 0);
    v77 = __OFADD__(v393++, 1);
  }

  while (!v77);
  __break(1u);
LABEL_278:
  sub_10001B860(v341);
  v419, v356, v357, v358, v359, v360, v361, v362;
  v363 = [v421 consequent];
  v364 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v420 = v364;
  if ((v364 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v364 = v478;
    v365 = v479;
    v366 = v480;
    v367 = v481;
    v368 = v482;
  }

  else
  {
    v369 = -1 << *(v364 + 32);
    v365 = v364 + 56;
    v366 = ~v369;
    v370 = -v369;
    if (v370 < 64)
    {
      v371 = ~(-1 << v370);
    }

    else
    {
      v371 = -1;
    }

    v368 = v371 & *(v364 + 56);

    v367 = 0;
  }

  v410 = 0;
  while (2)
  {
    v372 = v367;
    v373 = v368;
LABEL_288:
    if (v364 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_300;
      }

      swift_dynamicCast();
      v374 = v422;
      v367 = v372;
      v368 = v373;
      if (!v422)
      {
        goto LABEL_300;
      }

LABEL_287:
      v375 = sub_1004C8824(v374, 11);

      v372 = v367;
      v373 = v368;
      if (v375)
      {
        v77 = __OFADD__(v410++, 1);
        if (!v77)
        {
          continue;
        }

        __break(1u);
LABEL_300:
        sub_10001B860(v364);
        v420, v378, v379, v380, v381, v382, v383, v384;
        if (v404 <= 1 && v403 <= 1)
        {
          v385 = v404 <= 0 || v403 <= 0;
          if (v385 && v407 <= 1 && v401 <= 1)
          {
            v386 = v407 <= 0 || v401 <= 0;
            if (v386 && v399 <= 1 && v398 <= 1)
            {
              v387 = v399 <= 0 || v398 <= 0;
              if (v387 && v397 <= 1 && v396 <= 1)
              {
                v388 = v397 <= 0 || v396 <= 0;
                if (v388 && v395 <= 1 && v394 <= 1)
                {
                  v389 = v395 <= 0 || v394 <= 0;
                  if (v389 && v393 <= 1 && v410 <= 1 && (v410 < 1 || v393 <= 0))
                  {
                    v390 = *v392;
                    [v421 support];
                    if (v391 >= v390)
                    {
                      v391 = v390;
                    }

                    *v392 = v391;
                  }
                }
              }
            }
          }
        }

        return;
      }

      goto LABEL_288;
    }

    break;
  }

  v376 = v372;
  v377 = v373;
  v367 = v372;
  if (v373)
  {
LABEL_286:
    v368 = (v377 - 1) & v377;
    v374 = *(*(v364 + 48) + ((v367 << 9) | (8 * __clz(__rbit64(v377)))));
    if (!v374)
    {
      goto LABEL_300;
    }

    goto LABEL_287;
  }

  while (1)
  {
    v367 = v376 + 1;
    if (__OFADD__(v376, 1))
    {
      break;
    }

    if (v367 >= ((v366 + 64) >> 6))
    {
      goto LABEL_300;
    }

    v377 = *(v365 + 8 * v367);
    ++v376;
    if (v377)
    {
      goto LABEL_286;
    }
  }

LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
}

void sub_1004D2BA4(unint64_t *a1, uint64_t a2, uint64_t a3, double *a4)
{
  v22 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v24 = *(*(a3 + 48) + 8 * v15);
    v16 = v24;
    sub_1004D10AC(&v24, a4);
    v18 = v17;

    if (v4)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1001A1140(a1, a2, v22, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1004D2D04(uint64_t a1, void *a2, double *a3)
{
  v32 = a3;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  if (v6 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v27 = v7;
    v29 = &v27;
    v30 = v9;
    __chkstk_darwin(v9, v10);
    v28 = &v27 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v8);
    v31 = 0;
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v7 = v13 & *(a1 + 56);
    v8 = (v12 + 63) >> 6;
    while (v7)
    {
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v17 = v14 | (v11 << 6);
      v33 = *(*(a1 + 48) + 8 * v17);
      v18 = v33;
      sub_1004D10AC(&v33, v32);
      if (v3)
      {

        swift_willThrow();
        v23 = v30;
        goto LABEL_20;
      }

      v20 = v19;

      if (v20)
      {
        *&v28[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_17:
          v7 = sub_1001A1140(v28, v27, v31, a1);

          return v7;
        }
      }
    }

    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_17;
      }

      v16 = *(a1 + 56 + 8 * v11);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v7 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v24 = v9;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v9 = v24;
  }

  v25 = swift_slowAlloc();
  v26 = v24;
  v7 = sub_1004CFDF0(v25, v7, a1, v26, v32);

  v23 = v24;
  if (v3)
  {
LABEL_20:
  }

  else
  {
  }

  return v7;
}

Swift::Int sub_1004D2FC0(uint64_t a1)
{
  v35 = 0x3FF0000000000000;
  v4 = v1;

  v6 = sub_1004CFE8C(v5, v4, &v35);
  v14 = v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v15 = __CocoaSet.count.getter();
    v16 = v14 & 0xC000000000000001;
    if ((v14 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *(a1 + 16);
    v16 = v6 & 0xC000000000000001;
    if ((v6 & 0xC000000000000001) != 0)
    {
LABEL_3:
      v17 = __CocoaSet.count.getter();
      v18 = v15 - v17;
      if (!__OFSUB__(v15, v17))
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      v24 = *(a1 + 16);
      goto LABEL_15;
    }
  }

  v32 = *(v14 + 16);
  v18 = v15 - v32;
  if (__OFSUB__(v15, v32))
  {
    goto LABEL_13;
  }

LABEL_4:
  v19 = v4 + OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics;
  v20 = *(&v4[1].isa + OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics);
  v21 = __OFADD__(v20, v18);
  v22 = v20 + v18;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 1) = v22;
    *(v19 + 2) = v35;
    if (qword_1009362F0 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v23 = type metadata accessor for Logger();
  sub_100006654(v23, qword_10094A170);

  v4 = Logger.logObject.getter();
  LOBYTE(v15) = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v4, v15))
  {

    a1, v25, v26, v27, v28, v29, v30, v31;

    return v14;
  }

  v2 = swift_slowAlloc();
  *v2 = 134218240;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_14;
  }

  v24 = __CocoaSet.count.getter();
LABEL_15:
  *(v2 + 4) = v24;
  a1, v7, v8, v9, v10, v11, v12, v13;
  *(v2 + 12) = 2048;
  if (v16)
  {
    v33 = __CocoaSet.count.getter();
  }

  else
  {
    v33 = *(v14 + 16);
  }

  *(v2 + 14) = v33;

  _os_log_impl(&_mh_execute_header, v4, v15, "RDCoreBehaviorModel: Filtered rules {rules.count: %ld, filtered.count: %ld}", v2, 0x16u);

  return v14;
}

void sub_1004D31DC()
{
  v181 = type metadata accessor for Date();
  v186 = *(v181 - 8);
  __chkstk_darwin(v181, v1);
  v185 = v172 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v4);
  v6 = v172 - v5;
  v7 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v172 - v10;
  v12 = sub_1000F5104(&qword_10094A360, &unk_1007A12E0);
  v13 = v12 - 8;
  __chkstk_darwin(v12, v14);
  v16 = v172 - v15;
  v188 = &_swiftEmptyArrayStorage;
  v180 = OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_trainingDataFrame;
  v182 = v0;
  REMSuggestedAttributeInputDataFrame.index.getter();
  (*(v8 + 16))(v16, v11, v7);
  v17 = *(v13 + 44);
  v18 = v7;
  v19 = sub_10000CB48(&qword_10093EE00, &qword_10093EDF8, &qword_10079D5B0, &protocol conformance descriptor for OrderedSet<A>);
  dispatch thunk of Collection.startIndex.getter();
  (*(v8 + 8))(v11, v18);
  v20 = v185;
  v179 = OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_intentWords;
  dispatch thunk of Collection.endIndex.getter();
  v21 = v16;
  if (*&v16[v17] == v187[0])
  {
LABEL_2:
    sub_1004D4478(v21);
  }

  else
  {
    v178 = (v186 + 16);
    v172[4] = "ReminderAlarmLocationLabel";
    v172[3] = "ReminderTitleIntent";
    v172[6] = "ReminderPriority";
    v172[2] = "haviorModelTrainingDelegate";
    v172[5] = "ReminderContactLabel";
    v173 = (v186 + 8);
    v172[1] = "ReminderDueDayOfWeek";
    v184 = v6;
    v174 = v16;
    v175 = v18;
    v176 = v19;
    v177 = v17;
    while (1)
    {
      v26 = dispatch thunk of Collection.subscript.read();
      v26(v187, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v27 = REMSuggestedAttributeInputDataFrame.iloc(_:)();
      REMSuggestedAttributeInput.creationDate.getter();
      (*v178)(v20, v6, v181);
      REMSuggestedAttributeInput.list.getter();
      v28 = REMSuggestedList.isValid.getter();

      v186 = v27;
      if (v28)
      {
        v29 = objc_opt_self();
        v30 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &unk_10093F610, NSString_ptr);
        v31 = [v29 taskSpecificItemWithIdentifier:v30 valueClass:swift_getObjCClassFromMetadata()];

        if (!v31)
        {
          goto LABEL_61;
        }

        REMSuggestedAttributeInput.list.getter();
        REMSuggestedList.listIdentifier.getter();
        v33 = v32;

        v34 = String._bridgeToObjectiveC()();
        v33, v35, v36, v37, v38, v39, v40, v41;
        v42 = [objc_opt_self() itemWithType:v31 stringValue:v34];

        v43 = objc_allocWithZone(BMEvent);
        v44 = v42;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v46 = Date._bridgeToObjectiveC()().super.isa;
        v47 = [v43 initWithStartDate:isa endDate:v46 item:v44];

        v48 = v47;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v183 = REMSuggestedAttributeInput.location.getter();
      if (REMSuggestedLocation.isSpecificLocation.getter())
      {
        v49 = objc_opt_self();
        v50 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &unk_10093F610, NSString_ptr);
        v51 = [v49 taskSpecificItemWithIdentifier:v50 valueClass:swift_getObjCClassFromMetadata()];

        if (!v51)
        {
          goto LABEL_59;
        }

        dispatch thunk of ClassificationLabel.description.getter();
        v53 = v52;

        v54 = String._bridgeToObjectiveC()();
        v53, v55, v56, v57, v58, v59, v60, v61;
        v62 = [objc_opt_self() itemWithType:v51 stringValue:v54];

        v63 = objc_allocWithZone(BMEvent);
        v64 = v62;
        v65 = Date._bridgeToObjectiveC()().super.isa;
        v66 = Date._bridgeToObjectiveC()().super.isa;
        v67 = [v63 initWithStartDate:v65 endDate:v66 item:v64];

        v68 = v67;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (*(v182 + v179))
      {
        v69 = objc_opt_self();

        v70 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &unk_10093F610, NSString_ptr);
        v71 = [v69 taskSpecificItemWithIdentifier:v70 valueClass:swift_getObjCClassFromMetadata()];

        if (!v71)
        {
          goto LABEL_57;
        }

        dispatch thunk of Series.iloc(_:)();
        v72 = v187[1];
        v73 = String._bridgeToObjectiveC()();
        v72, v74, v75, v76, v77, v78, v79, v80;
        v81 = [objc_opt_self() itemWithType:v71 stringValue:v73];

        v82 = objc_allocWithZone(BMEvent);
        v83 = v81;
        v84 = Date._bridgeToObjectiveC()().super.isa;
        v85 = Date._bridgeToObjectiveC()().super.isa;
        v86 = [v82 initWithStartDate:v84 endDate:v85 item:v83];

        v87 = v86;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      REMSuggestedAttributeInput.dueDayOfWeek.getter();
      v88 = REMSuggestedWeekDay.value.getter();

      if ((v88 - 8) >= 0xFFFFFFFFFFFFFFF9)
      {
        v89 = objc_opt_self();
        v90 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
        v91 = [v89 taskSpecificItemWithIdentifier:v90 valueClass:swift_getObjCClassFromMetadata()];

        if (!v91)
        {
          goto LABEL_58;
        }

        v92 = Int._bridgeToObjectiveC()().super.super.isa;
        v93 = [objc_opt_self() itemWithType:v91 numberValue:v92];

        v94 = objc_allocWithZone(BMEvent);
        v95 = v93;
        v96 = Date._bridgeToObjectiveC()().super.isa;
        v97 = Date._bridgeToObjectiveC()().super.isa;
        v98 = [v94 initWithStartDate:v96 endDate:v97 item:v95];

        v99 = v98;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (REMSuggestedAttributeInput.flagged.getter())
      {
        v100 = objc_opt_self();
        v101 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
        v102 = [v100 taskSpecificItemWithIdentifier:v101 valueClass:swift_getObjCClassFromMetadata()];

        if (!v102)
        {
          goto LABEL_60;
        }

        v103 = NSNumber.init(integerLiteral:)(1).super.super.isa;
        v104 = [objc_opt_self() itemWithType:v102 numberValue:v103];

        v105 = objc_allocWithZone(BMEvent);
        v106 = v104;
        v107 = Date._bridgeToObjectiveC()().super.isa;
        v108 = Date._bridgeToObjectiveC()().super.isa;
        v109 = [v105 initWithStartDate:v107 endDate:v108 item:v106];

        v110 = v109;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (REMSuggestedAttributeInput.priority.getter())
      {
        v111 = objc_opt_self();
        v112 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
        v113 = [v111 taskSpecificItemWithIdentifier:v112 valueClass:swift_getObjCClassFromMetadata()];

        if (!v113)
        {
          goto LABEL_56;
        }

        v114 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:REMSuggestedAttributeInput.priority.getter()];
        v115 = [objc_opt_self() itemWithType:v113 numberValue:v114];

        v116 = objc_allocWithZone(BMEvent);
        v117 = v115;
        v118 = Date._bridgeToObjectiveC()().super.isa;
        v119 = Date._bridgeToObjectiveC()().super.isa;
        v120 = [v116 initWithStartDate:v118 endDate:v119 item:v117];

        v121 = v120;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v122 = REMSuggestedAttributeInput.tags.getter();
      v123 = v122;
      v124 = 0;
      v125 = v122 + 56;
      v126 = 1 << *(v122 + 32);
      v127 = v126 < 64 ? ~(-1 << v126) : -1;
      v128 = v127 & *(v122 + 56);
      v129 = (v126 + 63) >> 6;
      if (v128)
      {
        break;
      }

      while (1)
      {
LABEL_40:
        v130 = v124 + 1;
        if (__OFADD__(v124, 1))
        {
          __break(1u);
          goto LABEL_55;
        }

        if (v130 >= v129)
        {
          break;
        }

        v128 = *(v125 + 8 * v130);
        ++v124;
        if (v128)
        {
          v124 = v130;
          goto LABEL_44;
        }
      }

      REMSuggestedAttributeInput.contact.getter();
      if (REMSuggestedContact.isValid.getter())
      {
        v150 = objc_opt_self();
        v151 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &unk_10093F610, NSString_ptr);
        v152 = [v150 taskSpecificItemWithIdentifier:v151 valueClass:swift_getObjCClassFromMetadata()];

        v6 = v184;
        v20 = v185;
        v24 = v177;
        if (!v152)
        {
          goto LABEL_62;
        }

        dispatch thunk of ClassificationLabel.description.getter();
        v154 = v153;

        v155 = String._bridgeToObjectiveC()();
        v154, v156, v157, v158, v159, v160, v161, v162;
        v163 = [objc_opt_self() itemWithType:v152 stringValue:v155];

        v164 = objc_allocWithZone(BMEvent);
        v165 = v163;
        v166 = Date._bridgeToObjectiveC()().super.isa;
        v167 = Date._bridgeToObjectiveC()().super.isa;
        v168 = [v164 initWithStartDate:v166 endDate:v167 item:v165];

        v169 = v168;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v184;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v170 = *v173;
        v171 = v181;
        (*v173)(v20, v181);
        v170(v6, v171);
      }

      else
      {

        v22 = *v173;
        v20 = v185;
        v23 = v181;
        (*v173)(v185, v181);
        v6 = v184;
        v22(v184, v23);
        v24 = v177;
      }

      v25 = v174;
      dispatch thunk of Collection.endIndex.getter();
      v21 = v25;
      if (*(v25 + v24) == v187[0])
      {
        goto LABEL_2;
      }
    }

LABEL_44:
    while (1)
    {
      v131 = *(*(v123 + 48) + ((v124 << 10) | (16 * __clz(__rbit64(v128)))) + 8);
      v132 = objc_opt_self();

      v133 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &unk_10093F610, NSString_ptr);
      v134 = [v132 taskSpecificItemWithIdentifier:v133 valueClass:swift_getObjCClassFromMetadata()];

      if (!v134)
      {
        break;
      }

      v135 = String._bridgeToObjectiveC()();
      v131, v136, v137, v138, v139, v140, v141, v142;
      v143 = [objc_opt_self() itemWithType:v134 stringValue:v135];

      v144 = objc_allocWithZone(BMEvent);
      v145 = v143;
      v146 = Date._bridgeToObjectiveC()().super.isa;
      v147 = Date._bridgeToObjectiveC()().super.isa;
      v148 = [v144 initWithStartDate:v146 endDate:v147 item:v145];

      v149 = v148;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v128 &= v128 - 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      if (!v128)
      {
        goto LABEL_40;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }
}

uint64_t sub_1004D4478(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10094A360, &unk_1007A12E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004D44E0()
{
  result = qword_10094A370;
  if (!qword_10094A370)
  {
    sub_1000060C8(255, &qword_10093F650, BMRule_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A370);
  }

  return result;
}

unint64_t sub_1004D4548()
{
  result = qword_10094A390;
  if (!qword_10094A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A390);
  }

  return result;
}

double sub_1004D459C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, _TtC7remindd19RDXPCStorePerformer *a5, _TtC7remindd19RDXPCStorePerformer *a6, void *a7, void *a8)
{
  if (a7 != 0xFF)
  {
    return sub_1002F115C(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

void sub_1004D45B0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 != 4)
      {
        if (a3 != 5)
        {
          return;
        }

        goto LABEL_5;
      }

      goto LABEL_9;
    }

LABEL_5:

    return;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    goto LABEL_5;
  }

LABEL_9:
}

void sub_1004D45F8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 != 4)
      {
        if (a3 != 5)
        {
          return;
        }

        v8 = a2;
        goto LABEL_6;
      }

      goto LABEL_10;
    }

LABEL_9:
    v8 = a2;
LABEL_6:
    v8, a2, a3, a4, a5, a6, a7, a8;
    return;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_10:
}

void sub_1004D4640()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1004CAA80(v6, v0 + v2, v7, v8, v9, v10);
}

void sub_1004D46F4(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1004CADCC(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t initializeWithCopy for RDCoreBehaviorModel.Prediction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_1002F10C8(*a2, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t assignWithCopy for RDCoreBehaviorModel.Prediction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_1002F10C8(*a2, v4, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v16 = *(a1 + 48);
  *(a1 + 48) = v9;
  sub_1002F115C(v10, v11, v12, v13, v14, v15, v16, v17);
  return a1;
}

uint64_t assignWithTake for RDCoreBehaviorModel.Prediction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = *(a2 + 48);
  v10 = *a1;
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v16;
  *(a1 + 32) = *(a2 + 32);
  v17 = *(a1 + 48);
  *(a1 + 48) = v9;
  sub_1002F115C(v10, v12, v11, v13, v14, v15, v17, a8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDCoreBehaviorModel.Prediction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 49))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 48);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDCoreBehaviorModel.Prediction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004D4A08(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1004D45B0(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for RDCoreBehaviorModel.Context(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1004D45B0(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1004D45F8(v6, v7, v8, v9, v10, v11, v12, v13);
  return a1;
}

uint64_t assignWithTake for RDCoreBehaviorModel.Context(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(a2 + 16);
  v10 = *a1;
  v11 = *(a1 + 8);
  *a1 = *a2;
  v12 = *(a1 + 16);
  *(a1 + 16) = v9;
  sub_1004D45F8(v10, v11, v12, a4, a5, a6, a7, a8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDCoreBehaviorModel.Context(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 17))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDCoreBehaviorModel.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1004D4BA0()
{
  result = qword_10094A458;
  if (!qword_10094A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A458);
  }

  return result;
}

unint64_t sub_1004D4BF4()
{
  result = qword_10094A468;
  if (!qword_10094A468)
  {
    sub_1000F514C(&qword_10094A460, &qword_1007AE618);
    sub_1004D4D3C(&qword_10094A470, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A468);
  }

  return result;
}

unint64_t sub_1004D4C98()
{
  result = qword_10094A488;
  if (!qword_10094A488)
  {
    sub_1000F514C(&qword_10094A460, &qword_1007AE618);
    sub_1004D4D3C(&qword_10094A490, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A488);
  }

  return result;
}

uint64_t sub_1004D4D3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10094A478, &qword_1007AE620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004D4DBC()
{
  result = qword_10094A498;
  if (!qword_10094A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A498);
  }

  return result;
}

unint64_t sub_1004D4E14()
{
  result = qword_10094A4A0;
  if (!qword_10094A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A4A0);
  }

  return result;
}

unint64_t sub_1004D4E6C()
{
  result = qword_10094A4A8;
  if (!qword_10094A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A4A8);
  }

  return result;
}

uint64_t sub_1004D4ECC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1004D4F20()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A510);
  v1 = sub_100006654(v0, qword_10094A510);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004D4FE8()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_connectedToken;
  if (notify_is_valid_token(*&v0[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_connectedToken]))
  {
    notify_cancel(*&v0[v2]);
    *&v0[v2] = -1;
  }

  v3 = OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_disconnectedToken;
  if (notify_is_valid_token(*&v0[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_disconnectedToken]))
  {
    notify_cancel(*&v0[v3]);
    *&v0[v3] = -1;
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_1004D5198(void *a1)
{
  v1 = a1;
  sub_1004D67EC(0x657463656E6E6F63, 0xE900000000000064, v1, sub_1004D5204);
}

uint64_t sub_1004D5204(char *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1009362F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_10094A510);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Did receive vehicle connected notification", v10, 2u);
  }

  v11 = *&a1[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_queue];
  *v6 = v11;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v11)
  {
    sub_10000F61C(&a1[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_dataSource], *&a1[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_dataSource + 24]);

    v15 = sub_100412978(v14);

    v23 = *(v15 + 16);
    if (v23)
    {
      v53 = &_swiftEmptyArrayStorage;
      sub_100253968(0, v23, 0);
      v24 = v53;
      v25 = (v15 + 48);
      do
      {
        v26 = *(v25 - 1);
        v27 = *v25;
        v28 = *(v25 - 2);
        v29 = sub_1007467B8(v26);
        v53 = v24;
        v38 = *v24->clientIdentity;
        v37 = *&v24->clientIdentity[8];
        if (v38 >= v37 >> 1)
        {
          v51 = v30;
          v52 = v29;
          v50 = v31;
          v49 = v32;
          sub_100253968((v37 > 1), v38 + 1, 1);
          v32 = v49;
          v31 = v50;
          v30 = v51;
          v29 = v52;
          v24 = v53;
        }

        v25 += 3;
        *v24->clientIdentity = v38 + 1;
        v39 = v24 + 40 * v38;
        *(v39 + 4) = v28;
        *(v39 + 5) = v29;
        *(v39 + 6) = v30;
        *(v39 + 7) = v31;
        v39[64] = v32;
        v39[65] = v27 != 1;
        v39[66] = 0;
        --v23;
      }

      while (v23);
      v15, v30, v31, v32, v33, v34, v35, v36;
    }

    else
    {
      v15, v16, v17, v18, v19, v20, v21, v22;
      v24 = &_swiftEmptyArrayStorage;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_100292E70(a1, v24, Strong);
    v24, v41, v42, v43, v44, v45, v46, v47;
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D552C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  out_token = -1;
  v9 = *(v4 + OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_queue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;
  v11[5] = a3;
  v11[6] = a4;
  v20[4] = sub_1004D6BB0;
  v20[5] = v11;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1004D4ECC;
  v20[3] = &unk_1008F4CC0;
  v12 = _Block_copy(v20);

  v13 = String.utf8CString.getter();
  v14 = notify_register_dispatch((v13 + 32), &out_token, v9, v12);

  _Block_release(v12);
  if (v14)
  {
    if (qword_1009362F8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094A510);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to register notify handler. {status: %u}", v18, 8u);
    }
  }

  return out_token;
}

void sub_1004D5780(void *a1)
{
  v1 = a1;
  sub_1004D67EC(0x656E6E6F63736964, 0xEC00000064657463, v1, sub_1004D57F0);
}

uint64_t sub_1004D57F0(char *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1009362F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_10094A510);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Did receive vehicle disconnected notification", v10, 2u);
  }

  v11 = *&a1[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_queue];
  *v6 = v11;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v11)
  {
    sub_10000F61C(&a1[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_dataSource], *&a1[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_dataSource + 24]);

    v15 = sub_100412978(v14);

    v23 = *(v15 + 16);
    if (v23)
    {
      v53 = &_swiftEmptyArrayStorage;
      sub_100253968(0, v23, 0);
      v24 = v53;
      v25 = (v15 + 48);
      do
      {
        v26 = *(v25 - 1);
        v27 = *v25;
        v28 = *(v25 - 2);
        v29 = sub_1007467B8(v26);
        v53 = v24;
        v38 = *v24->clientIdentity;
        v37 = *&v24->clientIdentity[8];
        if (v38 >= v37 >> 1)
        {
          v51 = v30;
          v52 = v29;
          v50 = v31;
          v49 = v32;
          sub_100253968((v37 > 1), v38 + 1, 1);
          v32 = v49;
          v31 = v50;
          v30 = v51;
          v29 = v52;
          v24 = v53;
        }

        v25 += 3;
        *v24->clientIdentity = v38 + 1;
        v39 = v24 + 40 * v38;
        *(v39 + 4) = v28;
        *(v39 + 5) = v29;
        *(v39 + 6) = v30;
        *(v39 + 7) = v31;
        v39[64] = v32;
        v39[65] = v27 != 2;
        v39[66] = 0;
        --v23;
      }

      while (v23);
      v15, v30, v31, v32, v33, v34, v35, v36;
    }

    else
    {
      v15, v16, v17, v18, v19, v20, v21, v22;
      v24 = &_swiftEmptyArrayStorage;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_100292E70(a1, v24, Strong);
    v24, v41, v42, v43, v44, v45, v46, v47;
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D5B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v21 = a2;
  v8 = type metadata accessor for REM_os_activity.Options();
  __chkstk_darwin(v8, v9);
  v10 = type metadata accessor for REM_os_activity();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1004D6BC0(&qword_10093FE28, 255, &type metadata accessor for REM_os_activity.Options, &protocol conformance descriptor for REM_os_activity.Options);
  sub_1000F5104(&unk_10094D930, &qword_10079EE00);
  sub_100290400();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  REM_os_activity.init(_:dso:options:)();
  v15 = swift_allocObject();
  v16 = v22;
  v15[2] = v21;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = v16;
  v15[6] = v23;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1004D6C50;
  *(v17 + 24) = v15;
  aBlock[4] = sub_1000529DC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F4D38;
  v18 = _Block_copy(aBlock);

  REM_os_activity.apply(execute:)();
  _Block_release(v18);
  (*(v11 + 8))(v14, v10);

  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

void sub_1004D5E24(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void (*a4)(void))
{
  if (qword_1009362F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_10094A510);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  a2, v10, v11, v12, v13, v14, v15, v16;
  if (os_log_type_enabled(v8, v9))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_10000668C(a1, a2, v23);
    _os_log_impl(&_mh_execute_header, v8, v9, "Did receive vehicle notification {name: %{public}s}", v17, 0xCu);
    sub_10000607C(v18);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    a4();
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Received vehicle change notification with nil producer", v22, 2u);
    }
  }
}

uint64_t sub_1004D6028(uint64_t a1, char a2)
{
  v54 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&v2[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_queue];
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v9, v4);
  if (v10)
  {
    sub_10000F61C(&v2[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_dataSource], *&v2[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_dataSource + 24]);

    v14 = sub_100412978(v13);

    v22 = *(v14 + 16);
    if (v22)
    {
      v53 = v2;
      v55 = &_swiftEmptyArrayStorage;
      sub_100253968(0, v22, 0);
      v23 = v54;
      v24 = v55;
      v52 = v14;
      v25 = (v14 + 48);
      do
      {
        v26 = (a2 & 1) != 0 || *v25 != v23;
        v27 = *(v25 - 1);
        v28 = *(v25 - 2);
        v29 = sub_1007467B8(v27);
        v55 = v24;
        v38 = *v24->clientIdentity;
        v37 = *&v24->clientIdentity[8];
        if (v38 >= v37 >> 1)
        {
          v50 = v30;
          v51 = v29;
          v49 = v31;
          HIDWORD(v48) = v32;
          sub_100253968((v37 > 1), v38 + 1, 1);
          v23 = v54;
          v24 = v55;
          v32 = HIDWORD(v48);
          v31 = v49;
          v30 = v50;
          v29 = v51;
        }

        *v24->clientIdentity = v38 + 1;
        v39 = v24 + 40 * v38;
        *(v39 + 4) = v28;
        *(v39 + 5) = v29;
        *(v39 + 6) = v30;
        *(v39 + 7) = v31;
        v39[64] = v32;
        v39[65] = v26;
        v39[66] = 0;
        v25 += 3;
        --v22;
      }

      while (v22);
      v52, v30, v31, v32, v33, v34, v35, v36;
      v2 = v53;
    }

    else
    {
      v14, v15, v16, v17, v18, v19, v20, v21;
      v24 = &_swiftEmptyArrayStorage;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_100292E70(v2, v24, Strong);
    v24, v41, v42, v43, v44, v45, v46, v47;
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004D6314()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v1 + OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_started))
  {
    if (qword_1009362F8 == -1)
    {
LABEL_4:
      v10 = type metadata accessor for Logger();
      sub_100006654(v10, qword_10094A510);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "RDVehicleAlarmProducer.start() must be called exactly once", v13, 2u);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  *(v1 + OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_started) = 1;
  if (qword_1009362F8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_10094A510);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting RDVehicleAlarmProducer", v17, 2u);
  }

  *(v1 + OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_connectedToken) = sub_1004D552C(0xD000000000000025, 0x80000001007FAC20, sub_1004D5198, 0);
  *(v1 + OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_disconnectedToken) = sub_1004D552C(0xD000000000000028, 0x80000001007FAC50, sub_1004D5780, 0);
}

uint64_t sub_1004D6674()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(*v0 + OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    return sub_1004D6028(0, 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004D6794(uint64_t a1, uint64_t a2, __n128 a3)
{
  result = sub_1004D6BC0(&unk_10094A580, a2, type metadata accessor for RDVehicleAlarmProducer, &protocol conformance descriptor for NSObject);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004D67EC(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (qword_1009362F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_10094A510);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  a2, v10, v11, v12, v13, v14, v15, v16;
  if (os_log_type_enabled(v8, v9))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v54 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_10000668C(a1, a2, &v54);
    _os_log_impl(&_mh_execute_header, v8, v9, "os_transaction INIT {name: com.apple.remindd.RDVehicleAarmProducer.locationd.vehicle.notify.%{public}s}", v17, 0xCu);
    sub_10000607C(v18);
  }

  v54 = 0;
  v55 = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v19._object = 0x80000001007FAC80;
  v19._countAndFlagsBits = 0xD000000000000041;
  String.append(_:)(v19);
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  String.append(_:)(v20);
  v21 = v55;
  String.utf8CString.getter();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = os_transaction_create();

  if (v29)
  {
    a4(a3);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    a2, v32, v33, v34, v35, v36, v37, v38;
    if (os_log_type_enabled(v30, v31))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v54 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_10000668C(a1, a2, &v54);
      _os_log_impl(&_mh_execute_header, v30, v31, "os_transaction RELEASE {name: com.apple.remindd.RDVehicleAarmProducer.locationd.vehicle.notify.%{public}s}", v39, 0xCu);
      sub_10000607C(v40);
    }

    return swift_unknownObjectRelease();
  }

  else
  {

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    a2, v44, v45, v46, v47, v48, v49, v50;
    if (os_log_type_enabled(v42, v43))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54 = v52;
      *v51 = 136446210;
      *(v51 + 4) = sub_10000668C(a1, a2, &v54);
      _os_log_impl(&_mh_execute_header, v42, v43, "RDVehicleAarmProducer: Couldn't create os_transaction_t for %{public}s", v51, 0xCu);
      sub_10000607C(v52);
    }

    return a4(a3);
  }
}

uint64_t sub_1004D6BC0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1004D6C08(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 56, 7);
}

uint64_t sub_1004D6C70()
{
  v1 = [v0 remObjectID];
  if (!v1)
  {
    return 7104878;
  }

  v2 = v1;
  v3 = [v1 description];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_1004D6D20()
{
  v1 = [*v0 remObjectID];
  if (!v1)
  {
    return 7104878;
  }

  v2 = v1;
  v3 = [v1 description];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

void sub_1004D6DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  sub_1004E1DF4(a1, a2, a3, a4);
}

void sub_1004D6DF4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, _TtC7remindd19RDXPCStorePerformer *a7, uint64_t a8)
{
  sub_1004E3500(a1, a4, a5, a6, a7, a8);
}

void sub_1004D6E50(void *a1, uint64_t a2, uint64_t a3, void *a4, NSObject *a5, NSObject *a6, _BYTE *a7, _TtC7remindd19RDXPCStorePerformer *a8)
{
  sub_1004E4AD0(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1004D6E98(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  sub_1004EA734(a1, a4, a5, a6);
}

void *sub_1004D6EF0(void *a1, void *a2)
{
  v4 = sub_100128B6C(a1);
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [a2 markedForDeletion];
  if (v6 && (v7 & 1) == 0)
  {
    v8 = v6;
    v9 = [v8 parentAccount];
    if (!v9)
    {
      v9 = [v2 account];
      [v8 setParentAccount:v9];
    }
  }

  return v6;
}

id sub_1004D6FC8()
{
  v1 = [v0 remObjectID];
  if (!v1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094A590);
    v6 = v0;
    v2 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v2, v7, "remObjectID is not defined for cdObject {cdObject: %@}", v8, 0xCu);
      sub_1000050A4(v9, &unk_100938E70, &unk_100797230);
    }

    goto LABEL_17;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    v11 = [v0 account];
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = v11;
    v4 = [v11 remObjectID];

    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v13 = objc_allocWithZone(REMReplicaIDSource);
    v14 = v4;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v13 initWithAccountID:v14 objectID:v2 property:v15];

    return v16;
  }

  v4 = [v3 remObjectID];
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (qword_100936300 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10094A590);
  v19 = v0;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "accountID is not defined for cdObject {cdObject: %@}", v22, 0xCu);
    sub_1000050A4(v23, &unk_100938E70, &unk_100797230);
  }

LABEL_17:
  return 0;
}

unint64_t sub_1004D7318()
{
  _StringGuts.grow(_:)(49);
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  v8 = [v0 markedForDeletion];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);
  v11, v13, v14, v15, v16, v17, v18, v19;
  v20._countAndFlagsBits = 0x707075736E75202CLL;
  v20._object = 0xEE003D646574726FLL;
  String.append(_:)(v20);
  v21 = [v0 isUnsupported];
  v22 = v21 == 0;
  if (v21)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v22)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  v25 = v24;
  String.append(_:)(*&v23);
  v24, v26, v27, v28, v29, v30, v31, v32;
  return 0xD00000000000001FLL;
}

uint64_t sub_1004D7438()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A590);
  v1 = sub_100006654(v0, qword_10094A590);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004D7500(void *a1, char a2)
{
  v3 = v2;
  if ((a2 & 1) == 0)
  {
    v36 = [v2 getResolutionTokenMapFromRecord:a1];
    v35 = v36;
    if (!v36)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_10094A590);
      v38 = a1;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v41 = 136446466;
        v42 = CKRecord.recordType.getter();
        v44 = v43;
        v45 = sub_10000668C(v42, v43, &v105);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v41 + 4) = v45;
        *(v41 + 12) = 2082;
        v53 = [v38 recordID];
        v54 = [v53 ckShortDescription];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = sub_10000668C(v55, v57, &v105);
        v57, v59, v60, v61, v62, v63, v64, v65;
        *(v41 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v39, v40, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v41, 0x16u);
        swift_arrayDestroy();
      }

      v35 = [objc_allocWithZone(REMResolutionTokenMap) init];
    }

    v104 = v36;
    v66 = 0;
    while (1)
    {
      v84 = *(&off_1008DDA80 + v66 + 32);
      if (*(&off_1008DDA80 + v66 + 32))
      {
        if (v84 == 1)
        {
          v85 = 0x4E79616C70736944;
        }

        else
        {
          v85 = 0x6574616C706D6554;
        }

        if (v84 == 1)
        {
          v86 = 0xEB00000000656D61;
        }

        else
        {
          v86 = 0xE800000000000000;
        }

        if (v84 == 1)
        {
          v87 = 0x4E79616C70736964;
        }

        else
        {
          v87 = 0x6574616C706D6574;
        }
      }

      else
      {
        v85 = 0x6E6F697461657243;
        v87 = 0x6E6F697461657263;
        v86 = 0xEC00000065746144;
      }

      if (CKRecord.subscript.getter() || (v88 = [a1 encryptedValues], v89 = String._bridgeToObjectiveC()(), v90 = objc_msgSend(v88, "objectForKeyedSubscript:", v89), swift_unknownObjectRelease(), v89, v90))
      {
        swift_unknownObjectRelease();
        v91 = String._bridgeToObjectiveC()();
        v92 = [v35 getTokenForKey:v91];

        if (!v92)
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v93 = type metadata accessor for Logger();
          sub_100006654(v93, qword_10094A590);
          swift_bridgeObjectRetain_n();
          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.default.getter();
          swift_bridgeObjectRelease_n();
          if (os_log_type_enabled(v94, v95))
          {
            v67 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            *v67 = 136446722;
            *(v67 + 4) = sub_10000668C(v87, v86, &v105);
            *(v67 + 12) = 2082;
            v68 = sub_10000668C(v85, v86, &v105);
            v86, v69, v70, v71, v72, v73, v74, v75;
            *(v67 + 14) = v68;
            *(v67 + 22) = 2082;
            *(v67 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v105);
            _os_log_impl(&_mh_execute_header, v94, v95, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v67, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            v86, v96, v97, v98, v99, v100, v101, v102;
          }

          v76 = String._bridgeToObjectiveC()();
          v86, v77, v78, v79, v80, v81, v82, v83;
          [v35 initTokenWithDefaultValueIfNecessaryForKey:v76];

          goto LABEL_18;
        }
      }

      swift_bridgeObjectRelease_n();
LABEL_18:
      if (++v66 == 3)
      {

        return v35;
      }
    }
  }

  sub_1004DDBB4(a1);
  v5 = [v2 resolutionTokenMap];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094A590);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = CKRecord.recordType.getter();
      v13 = v12;
      v14 = sub_10000668C(v11, v12, &v105);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v22 = [v7 recordID];
      v23 = [v22 ckShortDescription];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_10000668C(v24, v26, &v105);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v10 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v8, v9, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v5;
}

id sub_1004D7C44(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if ((a2 & 1) == 0)
  {
    v34 = [v2 getResolutionTokenMapFromRecord:a1];
    v135 = v34;
    v134 = v4;
    if (!v34)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100006654(v35, qword_10094A590);
      v36 = v4;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        *v39 = 136446466;
        v40 = CKRecord.recordType.getter();
        v42 = v41;
        v43 = sub_10000668C(v40, v41, &v136);
        v42, v44, v45, v46, v47, v48, v49, v50;
        *(v39 + 4) = v43;
        *(v39 + 12) = 2082;
        v51 = [v36 recordID];
        v52 = [v51 ckShortDescription];

        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v56 = sub_10000668C(v53, v55, &v136);
        v55, v57, v58, v59, v60, v61, v62, v63;
        *(v39 + 14) = v56;
        _os_log_impl(&_mh_execute_header, v37, v38, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v39, 0x16u);
        swift_arrayDestroy();
      }

      v135 = [objc_allocWithZone(REMResolutionTokenMap) init];
      v4 = v134;
    }

    v133 = v34;
    v64 = 0;
    while (1)
    {
      v82 = *(&off_1008DDB48 + v64++ + 32);
      v83 = 0x626D456567646162;
      v84 = 0xEB000000006D656CLL;
      v85 = 0x626D456567646142;
      v86 = 0xEB000000006D656CLL;
      switch(v82)
      {
        case 1:
          v85 = 0x726F6C6F43;
          v83 = 0x726F6C6F63;
          v84 = 0xE500000000000000;
          v86 = 0xE500000000000000;
          break;
        case 2:
          v85 = 0x61447265746C6946;
          v83 = 0x61447265746C6966;
          v84 = 0xEA00000000006174;
          v87 = 24948;
          goto LABEL_32;
        case 3:
          goto LABEL_18;
        case 4:
          v85 = 0xD000000000000028;
          v84 = 0x80000001007F0630;
          v86 = 0x80000001007E8CC0;
          v83 = 0xD000000000000028;
          break;
        case 5:
          v85 = 0xD000000000000022;
          v84 = 0x80000001007F0600;
          v86 = 0x80000001007E8CF0;
          v83 = 0xD000000000000022;
          break;
        case 6:
          v83 = 1701667182;
          v84 = 0xE400000000000000;
          v85 = 1701667150;
          v86 = 0xE400000000000000;
          break;
        case 7:
          v85 = 0xD000000000000011;
          v84 = 0x80000001007F05E0;
          v83 = 0x6341746E65726170;
          v86 = 0xED0000746E756F63;
          break;
        case 8:
          v85 = 0x694C746E65726150;
          v83 = 0x694C746E65726170;
          v84 = 0xEA00000000007473;
          v87 = 29811;
LABEL_32:
          v86 = (v87 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000);
          break;
        case 9:
          v85 = 0xD000000000000018;
          v84 = 0x80000001007F05C0;
          v86 = 0x80000001007E8D20;
          v83 = 0xD000000000000018;
          break;
        case 10:
          v85 = 0xD000000000000017;
          v84 = 0x80000001007F05A0;
          v86 = 0x80000001007E8D40;
          v83 = 0xD000000000000017;
          break;
        case 11:
          v85 = 0x73694C7472616D53;
          v83 = 0x73694C7472616D73;
          v86 = 0xED00006570795474;
          v84 = 0xED00006570795474;
          break;
        case 12:
          v85 = 0x53676E6974726F53;
          v83 = 0x53676E6974726F73;
          v86 = 0xEC000000656C7974;
          v84 = 0xEC000000656C7974;
          break;
        case 13:
          v85 = 0x614464656E6E6950;
          v83 = 0x614464656E6E6970;
          v84 = 0xEA00000000006574;
          v86 = 0xEA00000000006574;
          break;
        default:
          break;
      }

      if (CKRecord.subscript.getter() || (v88 = [v4 encryptedValues], v89 = String._bridgeToObjectiveC()(), v90 = objc_msgSend(v88, "objectForKeyedSubscript:", v89), swift_unknownObjectRelease(), v89, v98 = v90, v4 = v134, v98))
      {
        swift_unknownObjectRelease();
        v99 = String._bridgeToObjectiveC()();
        v100 = [v135 getTokenForKey:v99];

        if (!v100)
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v108 = type metadata accessor for Logger();
          sub_100006654(v108, qword_10094A590);

          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.default.getter();
          v84, v111, v112, v113, v114, v115, v116, v117;
          v86, v118, v119, v120, v121, v122, v123, v124;
          if (os_log_type_enabled(v109, v110))
          {
            v65 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            *v65 = 136446722;
            *(v65 + 4) = sub_10000668C(v83, v86, &v136);
            *(v65 + 12) = 2082;
            v66 = sub_10000668C(v85, v84, &v136);
            v84, v67, v68, v69, v70, v71, v72, v73;
            *(v65 + 14) = v66;
            *(v65 + 22) = 2082;
            *(v65 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v136);
            _os_log_impl(&_mh_execute_header, v109, v110, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v65, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            v84, v125, v126, v127, v128, v129, v130, v131;
          }

          v4 = v134;
          v74 = String._bridgeToObjectiveC()();
          v86, v75, v76, v77, v78, v79, v80, v81;
          [v135 initTokenWithDefaultValueIfNecessaryForKey:v74];

          goto LABEL_18;
        }
      }

      v86, v91, v92, v93, v94, v95, v96, v97;
      v84, v101, v102, v103, v104, v105, v106, v107;
LABEL_18:
      if (v64 == 14)
      {

        return v135;
      }
    }
  }

  sub_1004DDF94(a1);
  v135 = [v2 resolutionTokenMap];
  if (!v135)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094A590);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *v9 = 136446466;
      v10 = CKRecord.recordType.getter();
      v12 = v11;
      v13 = sub_10000668C(v10, v11, &v136);
      v12, v14, v15, v16, v17, v18, v19, v20;
      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      v21 = [v6 recordID];
      v22 = [v21 ckShortDescription];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_10000668C(v23, v25, &v136);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v9 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v7, v8, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v9, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v135;
}

id sub_1004D85B8(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if ((a2 & 1) == 0)
  {
    v34 = [v2 getResolutionTokenMapFromRecord:a1];
    v134 = v4;
    v135 = v34;
    if (!v34)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100006654(v35, qword_10094A590);
      v36 = v4;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v136[0] = swift_slowAlloc();
        *v39 = 136446466;
        v40 = CKRecord.recordType.getter();
        v42 = v41;
        v43 = sub_10000668C(v40, v41, v136);
        v42, v44, v45, v46, v47, v48, v49, v50;
        *(v39 + 4) = v43;
        *(v39 + 12) = 2082;
        v51 = [v36 recordID];
        v52 = [v51 ckShortDescription];

        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v56 = sub_10000668C(v53, v55, v136);
        v55, v57, v58, v59, v60, v61, v62, v63;
        *(v39 + 14) = v56;
        _os_log_impl(&_mh_execute_header, v37, v38, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v39, 0x16u);
        swift_arrayDestroy();
      }

      v135 = [objc_allocWithZone(REMResolutionTokenMap) init];
      v4 = v134;
    }

    v133 = v34;
    v64 = 0;
    while (1)
    {
      v82 = *(&off_1008DDD20 + v64++ + 32);
      v83 = 0x626D456567646162;
      v84 = 0xEB000000006D656CLL;
      v85 = 0x626D456567646142;
      v86 = 0xEB000000006D656CLL;
      switch(v82)
      {
        case 1:
          v85 = 0x726F6C6F43;
          v83 = 0x726F6C6F63;
          v84 = 0xE500000000000000;
          v86 = 0xE500000000000000;
          break;
        case 2:
          v85 = 0x6E6F697461657243;
          v83 = 0x6E6F697461657263;
          v87 = 1702125892;
          goto LABEL_29;
        case 3:
          v85 = 0xD000000000000010;
          v84 = 0x80000001007F2A40;
          v86 = 0x80000001007E8D70;
          v83 = 0xD000000000000010;
          break;
        case 4:
          goto LABEL_18;
        case 5:
          v85 = 0xD000000000000028;
          v84 = 0x80000001007F0630;
          v86 = 0x80000001007E8CC0;
          v83 = 0xD000000000000028;
          break;
        case 6:
          v85 = 0xD000000000000025;
          v84 = 0x80000001007F2A10;
          v86 = 0x80000001007E8D90;
          v83 = 0xD000000000000025;
          break;
        case 7:
          v83 = 1701667182;
          v84 = 0xE400000000000000;
          v85 = 1701667150;
          v86 = 0xE400000000000000;
          break;
        case 8:
          v85 = 0xD000000000000011;
          v84 = 0x80000001007F05E0;
          v83 = 0x6341746E65726170;
          v86 = 0xED0000746E756F63;
          break;
        case 9:
          v85 = 0xD00000000000001BLL;
          v84 = 0x80000001007F29F0;
          v86 = 0x80000001007E8DC0;
          v83 = 0xD00000000000001BLL;
          break;
        case 10:
          v85 = 0xD000000000000016;
          v84 = 0x80000001007F29D0;
          v86 = 0x80000001007E8DE0;
          v83 = 0xD000000000000016;
          break;
        case 11:
          v85 = 0xD000000000000018;
          v84 = 0x80000001007EC2E0;
          v86 = 0x80000001007E8BF0;
          v83 = 0xD000000000000018;
          break;
        case 12:
          v85 = 0xD00000000000001ALL;
          v84 = 0x80000001007F29B0;
          v86 = 0x80000001007E8E00;
          v83 = 0xD00000000000001ALL;
          break;
        case 13:
          v85 = 0xD000000000000011;
          v84 = 0x80000001007EC240;
          v86 = 0x80000001007E8BC0;
          v83 = 0xD000000000000011;
          break;
        case 14:
          v85 = 0xD000000000000018;
          v84 = 0x80000001007F05C0;
          v83 = 0xD000000000000018;
          v86 = 0x80000001007E8D20;
          break;
        case 15:
          v85 = 0x53676E6974726F53;
          v83 = 0x53676E6974726F73;
          v87 = 1701607796;
LABEL_29:
          v86 = (v87 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
          goto LABEL_30;
        case 16:
          v85 = 0x694C656372756F53;
          v83 = 0x694C656372756F73;
          v86 = 0xEF4C525544497473;
LABEL_30:
          v84 = v86;
          break;
        default:
          break;
      }

      if (CKRecord.subscript.getter() || (v88 = [v4 encryptedValues], v89 = String._bridgeToObjectiveC()(), v90 = objc_msgSend(v88, "objectForKeyedSubscript:", v89), swift_unknownObjectRelease(), v89, v98 = v90, v4 = v134, v98))
      {
        swift_unknownObjectRelease();
        v99 = String._bridgeToObjectiveC()();
        v100 = [v135 getTokenForKey:v99];

        if (!v100)
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v108 = type metadata accessor for Logger();
          sub_100006654(v108, qword_10094A590);

          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.default.getter();
          v84, v111, v112, v113, v114, v115, v116, v117;
          v86, v118, v119, v120, v121, v122, v123, v124;
          if (os_log_type_enabled(v109, v110))
          {
            v65 = swift_slowAlloc();
            v136[0] = swift_slowAlloc();
            *v65 = 136446722;
            *(v65 + 4) = sub_10000668C(v83, v86, v136);
            *(v65 + 12) = 2082;
            v66 = sub_10000668C(v85, v84, v136);
            v84, v67, v68, v69, v70, v71, v72, v73;
            *(v65 + 14) = v66;
            *(v65 + 22) = 2082;
            *(v65 + 24) = sub_10000668C(7104878, 0xE300000000000000, v136);
            _os_log_impl(&_mh_execute_header, v109, v110, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v65, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            v84, v125, v126, v127, v128, v129, v130, v131;
          }

          v4 = v134;
          v74 = String._bridgeToObjectiveC()();
          v86, v75, v76, v77, v78, v79, v80, v81;
          [v135 initTokenWithDefaultValueIfNecessaryForKey:v74];

          goto LABEL_18;
        }
      }

      v86, v91, v92, v93, v94, v95, v96, v97;
      v84, v101, v102, v103, v104, v105, v106, v107;
LABEL_18:
      if (v64 == 17)
      {

        return v135;
      }
    }
  }

  sub_1004DE4D0(a1);
  v135 = [v2 resolutionTokenMap];
  if (!v135)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094A590);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v136[0] = swift_slowAlloc();
      *v9 = 136446466;
      v10 = CKRecord.recordType.getter();
      v12 = v11;
      v13 = sub_10000668C(v10, v11, v136);
      v12, v14, v15, v16, v17, v18, v19, v20;
      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      v21 = [v6 recordID];
      v22 = [v21 ckShortDescription];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_10000668C(v23, v25, v136);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v9 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v7, v8, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v9, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v135;
}

id sub_1004D9000(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if (a2)
  {
    sub_1004DEA98(a1);
    v213 = [v2 resolutionTokenMap];
    if (!v213)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100006654(v5, qword_10094A590);
      v6 = v4;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v216[0] = swift_slowAlloc();
        *v9 = 136446466;
        v10 = CKRecord.recordType.getter();
        v12 = v11;
        v13 = sub_10000668C(v10, v11, v216);
        v12, v14, v15, v16, v17, v18, v19, v20;
        *(v9 + 4) = v13;
        *(v9 + 12) = 2082;
        v21 = [v6 recordID];
        v22 = [v21 ckShortDescription];

        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = sub_10000668C(v23, v25, v216);
        v25, v27, v28, v29, v30, v31, v32, v33;
        *(v9 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v7, v8, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v9, 0x16u);
        swift_arrayDestroy();
      }

      return [v3 createResolutionTokenMapIfNecessary];
    }
  }

  else
  {
    v34 = [v2 getResolutionTokenMapFromRecord:a1];
    v212 = v4;
    v213 = v34;
    if (!v34)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100006654(v35, qword_10094A590);
      v36 = v4;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v216[0] = swift_slowAlloc();
        *v39 = 136446466;
        v40 = CKRecord.recordType.getter();
        v42 = v41;
        v43 = sub_10000668C(v40, v41, v216);
        v42, v44, v45, v46, v47, v48, v49, v50;
        *(v39 + 4) = v43;
        *(v39 + 12) = 2082;
        v51 = [v36 recordID];
        v52 = [v51 ckShortDescription];

        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v56 = sub_10000668C(v53, v55, v216);
        v55, v57, v58, v59, v60, v61, v62, v63;
        *(v39 + 14) = v56;
        _os_log_impl(&_mh_execute_header, v37, v38, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v39, 0x16u);
        swift_arrayDestroy();
      }

      v213 = [objc_allocWithZone(REMResolutionTokenMap) init];
      v4 = v212;
    }

    v211 = v34;
    v64 = 0;
    while (2)
    {
      v79 = *(&off_1008DDF48 + v64++ + 32);
      v80 = 0x694C746E65726150;
      v81 = 0xEA00000000007473;
      v82 = 0x694C746E65726170;
      v83 = 0xEA00000000007473;
      switch(v79)
      {
        case 1:
          v80 = 0x726F6C6F43;
          v81 = 0xE500000000000000;
          v82 = 0x726F6C6F63;
          v83 = 0xE500000000000000;
          goto LABEL_36;
        case 2:
        case 5:
        case 7:
        case 15:
        case 16:
        case 17:
          goto LABEL_18;
        case 3:
          v80 = 0xD00000000000001FLL;
          v82 = 0xD00000000000002ALL;
          v81 = 0x80000001007F5E20;
          v83 = 0x80000001007E8E60;
          goto LABEL_36;
        case 4:
          v84 = 0x4C797265636F7267;
          v80 = 0x4C797265636F7247;
          v83 = 0xEF4449656C61636FLL;
          goto LABEL_31;
        case 6:
          v80 = 0xD000000000000012;
          v81 = 0x80000001007F5D50;
          v82 = 0xD000000000000012;
          v83 = 0x80000001007E8E90;
          goto LABEL_36;
        case 8:
          v80 = 0xD000000000000028;
          v81 = 0x80000001007F0630;
          v82 = 0xD000000000000028;
          v83 = 0x80000001007E8CC0;
          goto LABEL_36;
        case 9:
          v80 = 0xD000000000000022;
          v81 = 0x80000001007F0600;
          v82 = 0xD000000000000022;
          v83 = 0x80000001007E8CF0;
          goto LABEL_36;
        case 10:
          v80 = 1701667150;
          v81 = 0xE400000000000000;
          v82 = 1701667182;
          v83 = 0xE400000000000000;
          goto LABEL_36;
        case 11:
          v80 = 0xD000000000000011;
          v81 = 0x80000001007F05E0;
          v82 = 0x6341746E65726170;
          v83 = 0xED0000746E756F63;
          goto LABEL_36;
        case 12:
          goto LABEL_36;
        case 13:
          v80 = 0x614464656E6E6950;
          v81 = 0xEA00000000006574;
          v82 = 0x614464656E6E6970;
          v83 = 0xEA00000000006574;
          goto LABEL_36;
        case 14:
          v80 = 0xD00000000000001CLL;
          v81 = 0x80000001007F5D70;
          v82 = 0xD00000000000001CLL;
          v83 = 0x80000001007E8EB0;
          goto LABEL_36;
        case 18:
          v80 = 0xD000000000000018;
          v81 = 0x80000001007F05C0;
          v82 = 0xD000000000000018;
          v83 = 0x80000001007E8D20;
          goto LABEL_36;
        case 19:
          v80 = 0xD00000000000001CLL;
          v81 = 0x80000001007F5DE0;
          v82 = 0xD00000000000001CLL;
          v83 = 0x80000001007E8F20;
          goto LABEL_36;
        case 20:
          v80 = 0xD000000000000019;
          v81 = 0x80000001007F5E40;
          v82 = 0xD000000000000019;
          v83 = 0x80000001007E8F40;
          goto LABEL_36;
        case 21:
          v84 = 0x53676E6974726F73;
          v80 = 0x53676E6974726F53;
          v83 = 0xEC000000656C7974;
          goto LABEL_31;
        default:
          v84 = 0x626D456567646162;
          v80 = 0x626D456567646142;
          v83 = 0xEB000000006D656CLL;
LABEL_31:
          v81 = v83;
          v82 = v84;
LABEL_36:
          v214 = v79;
          if (CKRecord.subscript.getter() || (v85 = [v4 encryptedValues], v86 = String._bridgeToObjectiveC()(), v87 = objc_msgSend(v85, "objectForKeyedSubscript:", v86), swift_unknownObjectRelease(), v86, v87))
          {
            swift_unknownObjectRelease();
            v88 = 1;
          }

          else
          {
            v88 = 0;
          }

          break;
      }

      v215 = v82;
      v89 = 0x80000001007E8EB0;
      v90 = 0xEB000000006D656CLL;
      v91 = 0xEB00000000734449;
      switch(v214)
      {
        case 0:
          goto LABEL_61;
        case 1:
          v90 = 0xE500000000000000;
          goto LABEL_61;
        case 2:
          v90 = 0x80000001007E8E30;
          goto LABEL_61;
        case 3:
          v90 = 0x80000001007E8E60;
          goto LABEL_61;
        case 4:
          v90 = 0xEF4449656C61636FLL;
          goto LABEL_61;
        case 5:
          v90 = 0xE700000000000000;
          goto LABEL_61;
        case 6:
          v90 = 0x80000001007E8E90;
          goto LABEL_61;
        case 7:
          v90 = 0x80000001007E8C90;
          goto LABEL_61;
        case 8:
          v90 = 0x80000001007E8CC0;
          goto LABEL_61;
        case 9:
          v90 = 0x80000001007E8CF0;
          goto LABEL_61;
        case 10:
          v90 = 0xE400000000000000;
          goto LABEL_61;
        case 11:
          v90 = 0xED0000746E756F63;
          goto LABEL_61;
        case 12:
          v90 = 0xEA00000000007473;
          goto LABEL_61;
        case 13:
          v90 = 0xEA00000000006574;
          goto LABEL_61;
        case 14:
          goto LABEL_66;
        case 15:
          v90 = 0x80000001007E8ED0;
          goto LABEL_61;
        case 16:
          v90 = 0xEB00000000734449;
          goto LABEL_61;
        case 17:
          v90 = 0x80000001007E8F00;
          goto LABEL_61;
        case 18:
          v90 = 0x80000001007E8D20;
          goto LABEL_61;
        case 19:
          v90 = 0x80000001007E8F20;
          v89 = 0x80000001007E8F20;
          if (0x80000001007E8EB0 != 0x80000001007E8F20)
          {
            goto LABEL_61;
          }

LABEL_66:
          v89, v89, v66, v67, v68, v69, v70, v71;
          if (v88)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        case 20:
          v90 = 0x80000001007E8F40;
          goto LABEL_61;
        case 21:
          v90 = 0xEC000000656C7974;
LABEL_61:
          v92 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v90, v93, v94, v95, v96, v97, v98, v99;
          if (v92)
          {
            if (v88)
            {
LABEL_63:
              v91, v65, v66, v67, v68, v69, v70, v71;
              v4 = v212;
            }

            else
            {
LABEL_89:
              v4 = v212;
              if (CKRecord.subscript.getter())
              {
                v91, v109, v110, v111, v112, v113, v114, v115;
              }

              else
              {
                v116 = [v212 encryptedValues];
                v117 = String._bridgeToObjectiveC()();
                v91, v118, v119, v120, v121, v122, v123, v124;
                v125 = [v116 objectForKeyedSubscript:v117];
                swift_unknownObjectRelease();

                if (!v125)
                {
                  goto LABEL_17;
                }
              }

              swift_unknownObjectRelease();
            }
          }

          else
          {
            v91 = 0x80000001007F5DC0;
            v89 = 0x80000001007E8ED0;
            v100 = 0x80000001007E8EB0;
            switch(v214)
            {
              case 0:
                v100 = 0xEB000000006D656CLL;
                goto LABEL_87;
              case 1:
                v100 = 0xE500000000000000;
                goto LABEL_87;
              case 2:
                v100 = 0x80000001007E8E30;
                goto LABEL_87;
              case 3:
                v100 = 0x80000001007E8E60;
                goto LABEL_87;
              case 4:
                v100 = 0xEF4449656C61636FLL;
                goto LABEL_87;
              case 5:
                v100 = 0xE700000000000000;
                goto LABEL_87;
              case 6:
                v100 = 0x80000001007E8E90;
                goto LABEL_87;
              case 7:
                v100 = 0x80000001007E8C90;
                goto LABEL_87;
              case 8:
                v100 = 0x80000001007E8CC0;
                goto LABEL_87;
              case 9:
                v100 = 0x80000001007E8CF0;
                goto LABEL_87;
              case 10:
                v100 = 0xE400000000000000;
                goto LABEL_87;
              case 11:
                v100 = 0xED0000746E756F63;
                goto LABEL_87;
              case 12:
                v100 = 0xEA00000000007473;
                goto LABEL_87;
              case 13:
                v100 = 0xEA00000000006574;
                goto LABEL_87;
              case 14:
                goto LABEL_87;
              case 15:
                goto LABEL_66;
              case 16:
                v100 = 0xEB00000000734449;
                goto LABEL_87;
              case 17:
                v100 = 0x80000001007E8F00;
                goto LABEL_87;
              case 18:
                v100 = 0x80000001007E8D20;
                goto LABEL_87;
              case 19:
                v100 = 0x80000001007E8F20;
                goto LABEL_87;
              case 20:
                v100 = 0x80000001007E8F40;
                goto LABEL_87;
              case 21:
                v100 = 0xEC000000656C7974;
LABEL_87:
                v101 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v100, v102, v103, v104, v105, v106, v107, v108;
                if (v101)
                {
                  v91 = 0x80000001007F5DC0;
                  if (v88)
                  {
                    goto LABEL_63;
                  }

                  goto LABEL_89;
                }

                v4 = v212;
                if ((v88 & 1) == 0)
                {
                  goto LABEL_17;
                }

                break;
              default:
                goto LABEL_114;
            }
          }

          v126 = String._bridgeToObjectiveC()();
          v127 = [v213 getTokenForKey:v126];

          if (v127)
          {

LABEL_17:
            v83, v65, v66, v67, v68, v69, v70, v71;
            v81, v72, v73, v74, v75, v76, v77, v78;
            goto LABEL_18;
          }

          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v128 = type metadata accessor for Logger();
          sub_100006654(v128, qword_10094A590);

          v129 = Logger.logObject.getter();
          v130 = static os_log_type_t.default.getter();
          v81, v131, v132, v133, v134, v135, v136, v137;
          v83, v138, v139, v140, v141, v142, v143, v144;
          if (!os_log_type_enabled(v129, v130))
          {

            v81, v163, v164, v165, v166, v167, v168, v169;
            goto LABEL_111;
          }

          v145 = swift_slowAlloc();
          v216[0] = swift_slowAlloc();
          *v145 = 136446722;
          *(v145 + 4) = sub_10000668C(v215, v83, v216);
          *(v145 + 12) = 2082;
          v146 = sub_10000668C(v80, v81, v216);
          v81, v147, v148, v149, v150, v151, v152, v153;
          *(v145 + 14) = v146;
          *(v145 + 22) = 2082;
          if (sub_10035692C(v214) == 0xD00000000000001CLL && 0x80000001007E8EB0 == v154)
          {
            v154, v154, v155, v156, v157, v158, v159, v160;
            v161 = 0x7265646E696D6552;
            v162 = 0xEB00000000734449;
            goto LABEL_110;
          }

          v170 = v154;
          v171 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v170, v172, v173, v174, v175, v176, v177, v178;
          v161 = 0x7265646E696D6552;
          v162 = 0xEB00000000734449;
          if (v171)
          {
            goto LABEL_110;
          }

          if (sub_10035692C(v214) == 0xD000000000000021 && 0x80000001007E8ED0 == v179)
          {
            v179, v179, 0xD000000000000021, v180, v181, v182, v183, v184;
LABEL_108:
            v161 = 0xD000000000000010;
            v162 = 0x80000001007F5DC0;
            goto LABEL_110;
          }

          v185 = v179;
          v186 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v185, v187, v188, v189, v190, v191, v192, v193;
          if (v186)
          {
            goto LABEL_108;
          }

          v162 = 0xE300000000000000;
          v161 = 7104878;
LABEL_110:
          v194 = sub_10000668C(v161, v162, v216);
          v162, v195, v196, v197, v198, v199, v200, v201;
          *(v145 + 24) = v194;
          _os_log_impl(&_mh_execute_header, v129, v130, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v145, 0x20u);
          swift_arrayDestroy();

          v4 = v212;
LABEL_111:
          v202 = String._bridgeToObjectiveC()();
          v83, v203, v204, v205, v206, v207, v208, v209;
          [v213 initTokenWithDefaultValueIfNecessaryForKey:v202];

LABEL_18:
          if (v64 != 22)
          {
            continue;
          }

          break;
        default:
LABEL_114:
          JUMPOUT(0);
      }

      break;
    }
  }

  return v213;
}

id sub_1004DA158(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if ((a2 & 1) == 0)
  {
    v36 = [v2 getResolutionTokenMapFromRecord:a1];
    v35 = v36;
    v137 = v4;
    if (!v36)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_10094A590);
      v38 = v4;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        *v41 = 136446466;
        v42 = CKRecord.recordType.getter();
        v44 = v43;
        v45 = sub_10000668C(v42, v43, &v138);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v41 + 4) = v45;
        *(v41 + 12) = 2082;
        v53 = [v38 recordID];
        v54 = [v53 ckShortDescription];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = sub_10000668C(v55, v57, &v138);
        v57, v59, v60, v61, v62, v63, v64, v65;
        *(v41 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v39, v40, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v41, 0x16u);
        swift_arrayDestroy();
      }

      v35 = [objc_allocWithZone(REMResolutionTokenMap) init];
      v4 = v137;
    }

    v136 = v36;
    v66 = 0;
    while (1)
    {
      v84 = *(&off_1008DE238 + v66++ + 32);
      if (((1 << v84) & 0x1777DFE6) != 0)
      {
        v85 = sub_100395898(v84);
        v87 = v86;
        v88 = sub_10039611C(v84);
        v90 = v89;
        if (CKRecord.subscript.getter() || (v91 = [v4 encryptedValues], v92 = String._bridgeToObjectiveC()(), v93 = objc_msgSend(v91, "objectForKeyedSubscript:", v92), swift_unknownObjectRelease(), v92, v101 = v93, v4 = v137, v101))
        {
          swift_unknownObjectRelease();
          v102 = String._bridgeToObjectiveC()();
          v103 = [v35 getTokenForKey:v102];

          if (!v103)
          {
            if (qword_100936300 != -1)
            {
              swift_once();
            }

            v111 = type metadata accessor for Logger();
            sub_100006654(v111, qword_10094A590);

            v112 = Logger.logObject.getter();
            v113 = static os_log_type_t.default.getter();
            v90, v114, v115, v116, v117, v118, v119, v120;
            v87, v121, v122, v123, v124, v125, v126, v127;
            if (os_log_type_enabled(v112, v113))
            {
              v67 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              *v67 = 136446722;
              *(v67 + 4) = sub_10000668C(v85, v87, &v138);
              *(v67 + 12) = 2082;
              v68 = sub_10000668C(v88, v90, &v138);
              v90, v69, v70, v71, v72, v73, v74, v75;
              *(v67 + 14) = v68;
              *(v67 + 22) = 2082;
              *(v67 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v138);
              _os_log_impl(&_mh_execute_header, v112, v113, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v67, 0x20u);
              swift_arrayDestroy();
            }

            else
            {

              v90, v128, v129, v130, v131, v132, v133, v134;
            }

            v4 = v137;
            v76 = String._bridgeToObjectiveC()();
            v87, v77, v78, v79, v80, v81, v82, v83;
            [v35 initTokenWithDefaultValueIfNecessaryForKey:v76];

            goto LABEL_18;
          }
        }

        v87, v94, v95, v96, v97, v98, v99, v100;
        v90, v104, v105, v106, v107, v108, v109, v110;
      }

LABEL_18:
      if (v66 == 29)
      {

        return v35;
      }
    }
  }

  sub_1004DF054(a1);
  v5 = [v2 resolutionTokenMap];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094A590);
    v7 = v4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = CKRecord.recordType.getter();
      v13 = v12;
      v14 = sub_10000668C(v11, v12, &v138);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v22 = [v7 recordID];
      v23 = [v22 ckShortDescription];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_10000668C(v24, v26, &v138);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v10 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v8, v9, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v5;
}

id sub_1004DA878(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if ((a2 & 1) == 0)
  {
    v36 = [v2 getResolutionTokenMapFromRecord:a1];
    v35 = v36;
    v135 = v4;
    if (!v36)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_10094A590);
      v38 = v4;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        *v41 = 136446466;
        v42 = CKRecord.recordType.getter();
        v44 = v43;
        v45 = sub_10000668C(v42, v43, &v136);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v41 + 4) = v45;
        *(v41 + 12) = 2082;
        v53 = [v38 recordID];
        v54 = [v53 ckShortDescription];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = sub_10000668C(v55, v57, &v136);
        v57, v59, v60, v61, v62, v63, v64, v65;
        *(v41 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v39, v40, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v41, 0x16u);
        swift_arrayDestroy();
      }

      v35 = [objc_allocWithZone(REMResolutionTokenMap) init];
      v4 = v135;
    }

    v134 = v36;
    v66 = 0;
    while (1)
    {
      v84 = *(&off_1008DE600 + v66 + 32);
      if (*(&off_1008DE600 + v66 + 32))
      {
        if (v84 == 1)
        {
          v85 = 0xD00000000000001DLL;
        }

        else
        {
          v85 = 0x6574616C706D6554;
        }

        if (v84 == 1)
        {
          v86 = 0x80000001007F65B0;
        }

        else
        {
          v86 = 0xE800000000000000;
        }

        if (v84 == 1)
        {
          v87 = 0xD00000000000001DLL;
        }

        else
        {
          v87 = 0x6574616C706D6574;
        }

        if (v84 == 1)
        {
          v88 = 0x80000001007E9100;
        }

        else
        {
          v88 = 0xE800000000000000;
        }
      }

      else
      {
        v85 = 0x617461646174654DLL;
        v87 = 0x617461646174656DLL;
        v86 = 0xE800000000000000;
        v88 = 0xE800000000000000;
      }

      if (CKRecord.subscript.getter() || (v89 = [v4 encryptedValues], v90 = String._bridgeToObjectiveC()(), v91 = objc_msgSend(v89, "objectForKeyedSubscript:", v90), swift_unknownObjectRelease(), v90, v99 = v91, v4 = v135, v99))
      {
        swift_unknownObjectRelease();
        v100 = String._bridgeToObjectiveC()();
        v101 = [v35 getTokenForKey:v100];

        if (!v101)
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v109 = type metadata accessor for Logger();
          sub_100006654(v109, qword_10094A590);

          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.default.getter();
          v86, v112, v113, v114, v115, v116, v117, v118;
          v88, v119, v120, v121, v122, v123, v124, v125;
          if (os_log_type_enabled(v110, v111))
          {
            v67 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            *v67 = 136446722;
            *(v67 + 4) = sub_10000668C(v87, v88, &v136);
            *(v67 + 12) = 2082;
            v68 = sub_10000668C(v85, v86, &v136);
            v86, v69, v70, v71, v72, v73, v74, v75;
            *(v67 + 14) = v68;
            *(v67 + 22) = 2082;
            *(v67 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v136);
            _os_log_impl(&_mh_execute_header, v110, v111, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v67, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            v86, v126, v127, v128, v129, v130, v131, v132;
          }

          v4 = v135;
          v76 = String._bridgeToObjectiveC()();
          v88, v77, v78, v79, v80, v81, v82, v83;
          [v35 initTokenWithDefaultValueIfNecessaryForKey:v76];

          goto LABEL_18;
        }
      }

      v88, v92, v93, v94, v95, v96, v97, v98;
      v86, v102, v103, v104, v105, v106, v107, v108;
LABEL_18:
      if (++v66 == 3)
      {

        return v35;
      }
    }
  }

  sub_1004DF3EC(a1);
  v5 = [v2 resolutionTokenMap];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094A590);
    v7 = v4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = CKRecord.recordType.getter();
      v13 = v12;
      v14 = sub_10000668C(v11, v12, &v136);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v22 = [v7 recordID];
      v23 = [v22 ckShortDescription];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_10000668C(v24, v26, &v136);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v10 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v8, v9, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v5;
}

id sub_1004DAFEC(void *a1, char a2)
{
  v3 = v2;
  if ((a2 & 1) == 0)
  {
    v36 = [v2 getResolutionTokenMapFromRecord:a1];
    v35 = v36;
    if (!v36)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_10094A590);
      v38 = a1;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v41 = 136446466;
        v42 = CKRecord.recordType.getter();
        v44 = v43;
        v45 = sub_10000668C(v42, v43, &v105);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v41 + 4) = v45;
        *(v41 + 12) = 2082;
        v53 = [v38 recordID];
        v54 = [v53 ckShortDescription];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = sub_10000668C(v55, v57, &v105);
        v57, v59, v60, v61, v62, v63, v64, v65;
        *(v41 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v39, v40, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v41, 0x16u);
        swift_arrayDestroy();
      }

      v35 = [objc_allocWithZone(REMResolutionTokenMap) init];
    }

    v104 = v36;
    v66 = 0;
    while (1)
    {
      v84 = *(&off_1008DE6F0 + v66 + 32);
      if (*(&off_1008DE6F0 + v66 + 32))
      {
        if (v84 == 1)
        {
          v85 = 0x4E79616C70736944;
        }

        else
        {
          v85 = 0x73694C7472616D53;
        }

        if (v84 == 1)
        {
          v86 = 0xEB00000000656D61;
        }

        else
        {
          v86 = 0xE900000000000074;
        }

        if (v84 == 1)
        {
          v87 = 0x4E79616C70736964;
        }

        else
        {
          v87 = 0x73694C7472616D73;
        }
      }

      else
      {
        v85 = 0x6E6F697461657243;
        v87 = 0x6E6F697461657263;
        v86 = 0xEC00000065746144;
      }

      if (CKRecord.subscript.getter() || (v88 = [a1 encryptedValues], v89 = String._bridgeToObjectiveC()(), v90 = objc_msgSend(v88, "objectForKeyedSubscript:", v89), swift_unknownObjectRelease(), v89, v90))
      {
        swift_unknownObjectRelease();
        v91 = String._bridgeToObjectiveC()();
        v92 = [v35 getTokenForKey:v91];

        if (!v92)
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v93 = type metadata accessor for Logger();
          sub_100006654(v93, qword_10094A590);
          swift_bridgeObjectRetain_n();
          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.default.getter();
          swift_bridgeObjectRelease_n();
          if (os_log_type_enabled(v94, v95))
          {
            v67 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            *v67 = 136446722;
            *(v67 + 4) = sub_10000668C(v87, v86, &v105);
            *(v67 + 12) = 2082;
            v68 = sub_10000668C(v85, v86, &v105);
            v86, v69, v70, v71, v72, v73, v74, v75;
            *(v67 + 14) = v68;
            *(v67 + 22) = 2082;
            *(v67 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v105);
            _os_log_impl(&_mh_execute_header, v94, v95, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v67, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            v86, v96, v97, v98, v99, v100, v101, v102;
          }

          v76 = String._bridgeToObjectiveC()();
          v86, v77, v78, v79, v80, v81, v82, v83;
          [v35 initTokenWithDefaultValueIfNecessaryForKey:v76];

          goto LABEL_18;
        }
      }

      swift_bridgeObjectRelease_n();
LABEL_18:
      if (++v66 == 3)
      {

        return v35;
      }
    }
  }

  sub_1004DF7C8(a1);
  v5 = [v2 resolutionTokenMap];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094A590);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = CKRecord.recordType.getter();
      v13 = v12;
      v14 = sub_10000668C(v11, v12, &v105);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v22 = [v7 recordID];
      v23 = [v22 ckShortDescription];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_10000668C(v24, v26, &v105);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v10 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v8, v9, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v5;
}

id sub_1004DB734(void *a1, char a2)
{
  v3 = v2;
  if ((a2 & 1) == 0)
  {
    v36 = [v2 getResolutionTokenMapFromRecord:a1];
    v35 = v36;
    if (!v36)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_10094A590);
      v38 = a1;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *v41 = 136446466;
        v42 = CKRecord.recordType.getter();
        v44 = v43;
        v45 = sub_10000668C(v42, v43, &v118);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v41 + 4) = v45;
        *(v41 + 12) = 2082;
        v53 = [v38 recordID];
        v54 = [v53 ckShortDescription];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = sub_10000668C(v55, v57, &v118);
        v57, v59, v60, v61, v62, v63, v64, v65;
        *(v41 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v39, v40, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v41, 0x16u);
        swift_arrayDestroy();
      }

      v35 = [objc_allocWithZone(REMResolutionTokenMap) init];
    }

    v66 = v36;
    v67 = [objc_opt_self() ckRecordKeyForMinimumSupportedVersion];
    if (!v67)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;
      v67 = String._bridgeToObjectiveC()();
      v69, v70, v71, v72, v73, v74, v75, v76;
    }

    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;
    if (CKRecord.subscript.getter())
    {
    }

    else
    {
      v80 = [objc_msgSend(a1 "encryptedValues")];
      swift_unknownObjectRelease();

      if (!v80)
      {
        goto LABEL_22;
      }
    }

    swift_unknownObjectRelease();
    v88 = String._bridgeToObjectiveC()();
    v89 = [v35 getTokenForKey:v88];

    if (!v89)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      sub_100006654(v90, qword_10094A590);

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();
      v79, v93, v94, v95, v96, v97, v98, v99;
      if (os_log_type_enabled(v91, v92))
      {
        v100 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *v100 = 136446722;
        *(v100 + 4) = sub_10000668C(0xD000000000000017, 0x80000001007E8C60, &v118);
        *(v100 + 12) = 2082;
        v101 = sub_10000668C(v77, v79, &v118);
        v79, v102, v103, v104, v105, v106, v107, v108;
        *(v100 + 14) = v101;
        *(v100 + 22) = 2082;
        *(v100 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v118);
        _os_log_impl(&_mh_execute_header, v91, v92, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v100, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v79, v109, v110, v111, v112, v113, v114, v115;
      }

      v116 = String._bridgeToObjectiveC()();
      [v35 initTokenWithDefaultValueIfNecessaryForKey:v116];

      goto LABEL_29;
    }

LABEL_22:
    v79, v81, v82, v83, v84, v85, v86, v87;
LABEL_29:

    return v35;
  }

  sub_1004DFBAC(a1);
  v5 = [v2 resolutionTokenMap];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094A590);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = CKRecord.recordType.getter();
      v13 = v12;
      v14 = sub_10000668C(v11, v12, &v118);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v22 = [v7 recordID];
      v23 = [v22 ckShortDescription];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_10000668C(v24, v26, &v118);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v10 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v8, v9, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v5;
}

id sub_1004DBE24(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if ((a2 & 1) == 0)
  {
    v36 = [v2 getResolutionTokenMapFromRecord:a1];
    v35 = v36;
    v113 = v4;
    if (!v36)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_10094A590);
      v38 = v4;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        *v41 = 136446466;
        v42 = CKRecord.recordType.getter();
        v44 = v43;
        v45 = sub_10000668C(v42, v43, &v114);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v41 + 4) = v45;
        *(v41 + 12) = 2082;
        v53 = [v38 recordID];
        v54 = [v53 ckShortDescription];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = sub_10000668C(v55, v57, &v114);
        v57, v59, v60, v61, v62, v63, v64, v65;
        *(v41 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v39, v40, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v41, 0x16u);
        swift_arrayDestroy();
      }

      v35 = [objc_allocWithZone(REMResolutionTokenMap) init];
      v4 = v113;
    }

    v112 = v36;
    v66 = 0;
    while (1)
    {
      v84 = &off_1008DE818 + v66++;
      v85 = v84[32];
      v86 = 0x6E6F697461657243;
      v87 = 0x6E6F697461657263;
      v88 = 0x6163696E6F6E6143;
      v89 = 0x6163696E6F6E6163;
      if (v85 != 2)
      {
        v88 = 1953720652;
      }

      v90 = 0xED0000656D614E6CLL;
      if (v85 != 2)
      {
        v90 = 0xE400000000000000;
        v89 = 1953720684;
      }

      if (v85)
      {
        v86 = 0x4E79616C70736944;
      }

      v91 = 0xEC00000065746144;
      if (v85)
      {
        v91 = 0xEB00000000656D61;
        v87 = 0x4E79616C70736964;
      }

      if (v85 <= 1)
      {
        v92 = v86;
      }

      else
      {
        v92 = v88;
      }

      if (v85 <= 1)
      {
        v93 = v91;
      }

      else
      {
        v93 = v90;
      }

      if (v85 <= 1)
      {
        v94 = v87;
      }

      else
      {
        v94 = v89;
      }

      if (CKRecord.subscript.getter() || (v95 = [v4 encryptedValues], v96 = String._bridgeToObjectiveC()(), v97 = objc_msgSend(v95, "objectForKeyedSubscript:", v96), swift_unknownObjectRelease(), v96, v98 = v97, v4 = v113, v98))
      {
        swift_unknownObjectRelease();
        v99 = String._bridgeToObjectiveC()();
        v100 = [v35 getTokenForKey:v99];

        if (!v100)
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v101 = type metadata accessor for Logger();
          sub_100006654(v101, qword_10094A590);
          swift_bridgeObjectRetain_n();
          v102 = Logger.logObject.getter();
          v103 = static os_log_type_t.default.getter();
          swift_bridgeObjectRelease_n();
          if (os_log_type_enabled(v102, v103))
          {
            v67 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            *v67 = 136446722;
            *(v67 + 4) = sub_10000668C(v94, v93, &v114);
            *(v67 + 12) = 2082;
            v68 = sub_10000668C(v92, v93, &v114);
            v93, v69, v70, v71, v72, v73, v74, v75;
            *(v67 + 14) = v68;
            *(v67 + 22) = 2082;
            *(v67 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v114);
            _os_log_impl(&_mh_execute_header, v102, v103, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v67, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            v93, v104, v105, v106, v107, v108, v109, v110;
          }

          v4 = v113;
          v76 = String._bridgeToObjectiveC()();
          v93, v77, v78, v79, v80, v81, v82, v83;
          [v35 initTokenWithDefaultValueIfNecessaryForKey:v76];

          goto LABEL_18;
        }
      }

      swift_bridgeObjectRelease_n();
LABEL_18:
      if (v66 == 4)
      {

        return v35;
      }
    }
  }

  sub_1004DFED8(a1);
  v5 = [v2 resolutionTokenMap];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094A590);
    v7 = v4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = CKRecord.recordType.getter();
      v13 = v12;
      v14 = sub_10000668C(v11, v12, &v114);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v22 = [v7 recordID];
      v23 = [v22 ckShortDescription];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_10000668C(v24, v26, &v114);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v10 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v8, v9, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v5;
}

id sub_1004DC5B0(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if ((a2 & 1) == 0)
  {
    v36 = [v2 getResolutionTokenMapFromRecord:a1];
    v35 = v36;
    v135 = v4;
    if (!v36)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_10094A590);
      v38 = v4;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        *v41 = 136446466;
        v42 = CKRecord.recordType.getter();
        v44 = v43;
        v45 = sub_10000668C(v42, v43, &v136);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v41 + 4) = v45;
        *(v41 + 12) = 2082;
        v53 = [v38 recordID];
        v54 = [v53 ckShortDescription];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = sub_10000668C(v55, v57, &v136);
        v57, v59, v60, v61, v62, v63, v64, v65;
        *(v41 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v39, v40, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v41, 0x16u);
        swift_arrayDestroy();
      }

      v35 = [objc_allocWithZone(REMResolutionTokenMap) init];
      v4 = v135;
    }

    v134 = v36;
    v66 = 0;
    while (1)
    {
      v84 = *(&off_1008DE8F8 + v66 + 32);
      if (v84 > 4)
      {
        break;
      }

      if (*(&off_1008DE8F8 + v66 + 32) <= 1u)
      {
        if (*(&off_1008DE8F8 + v66 + 32))
        {
          v88 = 0x80000001007FAD60;
        }

        else
        {
          v88 = 0x80000001007FAD80;
        }

        if (*(&off_1008DE8F8 + v66 + 32))
        {
          v87 = 0x80000001007E9160;
        }

        else
        {
          v87 = 0x80000001007E9140;
        }

        v85 = 0xD000000000000012;
        v86 = 0xD000000000000012;
        goto LABEL_38;
      }

      if (v84 == 2)
      {
        v85 = 0xD000000000000018;
        v88 = 0x80000001007F8B30;
        v87 = 0x80000001007E9180;
LABEL_37:
        v86 = v85;
        goto LABEL_38;
      }

      if (v84 == 3)
      {
        goto LABEL_18;
      }

      v85 = 0x44496E6F73726550;
      v86 = 0x44496E6F73726570;
      v87 = 0xEC000000746C6153;
      v88 = 0xEC000000746C6153;
LABEL_38:
      if (CKRecord.subscript.getter() || (v89 = [v4 encryptedValues], v90 = String._bridgeToObjectiveC()(), v91 = objc_msgSend(v89, "objectForKeyedSubscript:", v90), swift_unknownObjectRelease(), v90, v99 = v91, v4 = v135, v99))
      {
        swift_unknownObjectRelease();
        v100 = String._bridgeToObjectiveC()();
        v101 = [v35 getTokenForKey:v100];

        if (!v101)
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v109 = type metadata accessor for Logger();
          sub_100006654(v109, qword_10094A590);

          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.default.getter();
          v88, v112, v113, v114, v115, v116, v117, v118;
          v87, v119, v120, v121, v122, v123, v124, v125;
          if (os_log_type_enabled(v110, v111))
          {
            v67 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            *v67 = 136446722;
            *(v67 + 4) = sub_10000668C(v86, v87, &v136);
            *(v67 + 12) = 2082;
            v68 = sub_10000668C(v85, v88, &v136);
            v88, v69, v70, v71, v72, v73, v74, v75;
            *(v67 + 14) = v68;
            *(v67 + 22) = 2082;
            *(v67 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v136);
            _os_log_impl(&_mh_execute_header, v110, v111, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v67, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            v88, v126, v127, v128, v129, v130, v131, v132;
          }

          v4 = v135;
          v76 = String._bridgeToObjectiveC()();
          v87, v77, v78, v79, v80, v81, v82, v83;
          [v35 initTokenWithDefaultValueIfNecessaryForKey:v76];

          goto LABEL_18;
        }
      }

      v87, v92, v93, v94, v95, v96, v97, v98;
      v88, v102, v103, v104, v105, v106, v107, v108;
LABEL_18:
      if (++v66 == 10)
      {

        return v35;
      }
    }

    if (*(&off_1008DE8F8 + v66 + 32) <= 6u)
    {
      if (v84 == 5)
      {
        goto LABEL_18;
      }

      v85 = 0xD000000000000023;
      v88 = 0x80000001007FAD10;
      v87 = 0x80000001007E9200;
    }

    else
    {
      if (v84 - 7 < 2)
      {
        goto LABEL_18;
      }

      v85 = 0xD00000000000001BLL;
      v88 = 0x80000001007FAD40;
      v87 = 0x80000001007E9270;
    }

    goto LABEL_37;
  }

  sub_1004E02E8(a1);
  v5 = [v2 resolutionTokenMap];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094A590);
    v7 = v4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = CKRecord.recordType.getter();
      v13 = v12;
      v14 = sub_10000668C(v11, v12, &v136);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v22 = [v7 recordID];
      v23 = [v22 ckShortDescription];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_10000668C(v24, v26, &v136);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v10 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v8, v9, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v5;
}

NSObject *sub_1004DCE1C(void *a1, uint64_t a2, unint64_t a3, NSObject *a4, unint64_t a5, NSObject *a6, _TtC7remindd19RDXPCStorePerformer *a7, void *a8, Class *a9, uint64_t (*a10)(void), SEL *a11)
{
  v12 = a2;
  if (a5 >> 60 == 15)
  {
    *a1 = 0;
    sub_1001CB4B8(a2, a3);
  }

  else if (a3 >> 60 == 15)
  {
    *a1 = 0;
    sub_100029344(a4, a5);
    return a4;
  }

  else
  {
    sub_1001CB4B8(a2, a3);
    sub_1001CB4B8(a4, a5);
    v18 = sub_1004D6FC8();
    if (v18)
    {
      v19 = v18;
      v78 = a6;
      log = a4;
      v20 = objc_allocWithZone(*a9);
      sub_1001CB4B8(v12, a3);
      v21 = v19;
      v76 = a10();
      sub_100031A14(v12, a3);

      v36 = objc_allocWithZone(*a9);
      sub_1001CB4B8(log, a5);
      v77 = v21;
      v37 = v21;
      v64 = a10();
      sub_100031A14(log, a5);
      v65 = v37;

      v84 = 0;
      v66 = [v76 *a11];
      v67 = v84;
      v68 = v78;
      if (v66)
      {
        *a1 = v66;
        v69 = v66;
        v70 = v67;
        v71 = v69;
        v72 = [v71 serializedData];
        v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100031A14(log, a5);
        sub_100031A14(v12, a3);

        return v73;
      }

      v74 = v84;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100006654(v38, qword_10094A590);

      v39 = a8;
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      a7, v42, v43, v44, v45, v46, v47, v48;

      v80 = v40;
      if (os_log_type_enabled(v40, v41))
      {
        v75 = v41;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v49 = 136446722;
        *(v49 + 4) = sub_10000668C(v68, a7, &v84);
        *(v49 + 12) = 2112;
        *(v49 + 14) = v39;
        *v50 = v39;
        *(v49 + 22) = 2082;
        swift_getErrorValue();
        v51 = v39;
        v52 = Error.localizedDescription.getter();
        v54 = v53;
        v55 = sub_10000668C(v52, v53, &v84);
        v54, v56, v57, v58, v59, v60, v61, v62;
        *(v49 + 24) = v55;
        _os_log_impl(&_mh_execute_header, v80, v75, "Unable to merge CR property from CKRecord into coredata object {key: %{public}s, cdObject: %@, error: %{public}s}", v49, 0x20u);
        sub_1000050A4(v50, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        sub_100031A14(log, a5);
      }

      else
      {

        sub_100031A14(log, a5);
      }
    }

    else
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10094A590);

      v23 = a8;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      a7, v26, v27, v28, v29, v30, v31, v32;
      loga = v24;
      if (os_log_type_enabled(v24, v25))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v84 = v79;
        *v33 = 136446466;
        *(v33 + 4) = sub_10000668C(a6, a7, &v84);
        *(v33 + 12) = 2112;
        *(v33 + 14) = v23;
        *v34 = v23;
        v35 = v23;
        _os_log_impl(&_mh_execute_header, loga, v25, "Unable to merge CR property from CKRecord into coredata object because replicaIDSource isn't available {key: %{public}s, cdObject: %@}", v33, 0x16u);
        sub_1000050A4(v34, &unk_100938E70, &unk_100797230);

        sub_10000607C(v79);

        sub_100031A14(a4, a5);
      }

      else
      {
        sub_100031A14(a4, a5);
      }
    }

    *a1 = 0;
  }

  return v12;
}

uint64_t sub_1004DD52C@<X0>(void *a1@<X0>, uint64_t a4@<X3>, char a6@<W5>, __int128 *a7@<X8>)
{
  v49 = a4;
  v50 = a7;
  v9 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v47 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  *&v22 = __chkstk_darwin(v20, v21).n128_u64[0];
  v48 = &v47 - v23;
  if (a6)
  {
    v24 = [a1 encryptedValues];
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 objectForKeyedSubscript:v25];
    swift_unknownObjectRelease();

    v52 = v26;
  }

  else
  {
    v52 = CKRecord.subscript.getter();
  }

  sub_1000F5104(&qword_100944EF0, &unk_1007AE8D0);
  result = swift_dynamicCast();
  if (result)
  {
    v28 = v51;
LABEL_16:
    *v50 = v28;
    return result;
  }

  v51 = xmmword_1007A5D40;
  sub_100031A14(0, 0xF000000000000000);
  if (!CKRecord.subscript.getter())
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
LABEL_11:
    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_14:
    result = sub_1000050A4(v16, &unk_1009441F0, &qword_100795760);
LABEL_15:
    v28 = xmmword_1007A5D40;
    goto LABEL_16;
  }

  v30 = [v29 fileURL];
  swift_unknownObjectRelease();
  if (v30)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v18 + 56))(v12, v31, 1, v17);
  sub_100031B58(v12, v16, &unk_1009441F0, &qword_100795760);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_14;
  }

  v32 = v48;
  (*(v18 + 32))(v48, v16, v17);
  v33 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v35 = v34;
  v36 = String._bridgeToObjectiveC()();
  v35, v37, v38, v39, v40, v41, v42, v43;
  LODWORD(v35) = [v33 fileExistsAtPath:v36];

  if (!v35)
  {
    result = (*(v18 + 8))(v32, v17);
    goto LABEL_15;
  }

  v44 = Data.init(contentsOf:options:)();
  v45 = v50;
  *v50 = v44;
  *(v45 + 1) = v46;
  return (*(v18 + 8))(v32, v17);
}

void sub_1004DDBB4(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v4, v5, v6, v7, v8, v9, v10, v11;
  if ((v61 & 1) == 0 && v60 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094A590);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v60 = v17;
      *v16 = 136446210;
      v18 = [v13 recordID];
      v19 = [v18 ckShortDescription];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10000668C(v20, v22, &v60);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v16, 0xCu);
      sub_10000607C(v17);
    }

    v31 = [v1 createResolutionTokenMapIfNecessary];
    v32 = 0;
    v33 = &off_1008DDA58;
    v34 = &selRef_attachmentRepresentationAndReturnError_;
    do
    {
      v43 = *(v33 + v32 + 32);
      if (*(v33 + v32 + 32))
      {
        if (v43 == 1)
        {
          v44 = 0x4E79616C70736964;
        }

        else
        {
          v44 = 0x6574616C706D6574;
        }

        if (v43 == 1)
        {
          v45 = 0xEB00000000656D61;
        }

        else
        {
          v45 = 0xE800000000000000;
        }
      }

      else
      {
        v44 = 0x6E6F697461657263;
        v45 = 0xEC00000065746144;
      }

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v45, v48, v49, v50, v51, v52, v53, v54;
      if (os_log_type_enabled(v46, v47))
      {
        v55 = v31;
        v56 = v34;
        v57 = v33;
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v60 = v59;
        *v58 = 136446210;
        *(v58 + 4) = sub_10000668C(v44, v45, &v60);
        _os_log_impl(&_mh_execute_header, v46, v47, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v58, 0xCu);
        sub_10000607C(v59);

        v33 = v57;
        v34 = v56;
        v31 = v55;
      }

      ++v32;
      v35 = String._bridgeToObjectiveC()();
      v45, v36, v37, v38, v39, v40, v41, v42;
      [v31 v34[40]];
    }

    while (v32 != 3);
  }
}

void sub_1004DDF94(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v4, v5, v6, v7, v8, v9, v10, v11;
  if ((v63 & 1) == 0 && v62 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094A590);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v62 = v17;
      *v16 = 136446210;
      v18 = [v13 recordID];
      v19 = [v18 ckShortDescription];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10000668C(v20, v22, &v62);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v16, 0xCu);
      sub_10000607C(v17);
    }

    v31 = [v1 createResolutionTokenMapIfNecessary];
    v32 = 0;
    v33 = &off_1008DDB48;
    v34 = 0xEB000000006D656CLL;
    v35 = 0x626D456567646162;
    v61 = v31;
    while (2)
    {
      v36 = *(v33 + v32++ + 32);
      v37 = v34;
      v38 = v35;
      switch(v36)
      {
        case 1:
          v37 = 0xE500000000000000;
          v38 = 0x726F6C6F63;
          goto LABEL_21;
        case 2:
          v38 = 0x61447265746C6966;
          v37 = 0xEA00000000006174;
          goto LABEL_21;
        case 3:
          goto LABEL_24;
        case 4:
          v38 = 0xD000000000000028;
          v37 = 0x80000001007E8CC0;
          goto LABEL_21;
        case 5:
          v38 = 0xD000000000000022;
          v37 = 0x80000001007E8CF0;
          goto LABEL_21;
        case 6:
          v37 = 0xE400000000000000;
          v38 = 1701667182;
          goto LABEL_21;
        case 7:
          v38 = 0x6341746E65726170;
          v37 = 0xED0000746E756F63;
          goto LABEL_21;
        case 8:
          v37 = 0xEA00000000007473;
          v38 = 0x694C746E65726170;
          goto LABEL_21;
        case 9:
          v38 = 0xD000000000000018;
          v37 = 0x80000001007E8D20;
          goto LABEL_21;
        case 10:
          v38 = 0xD000000000000017;
          v37 = 0x80000001007E8D40;
          goto LABEL_21;
        case 11:
          v38 = 0x73694C7472616D73;
          v37 = 0xED00006570795474;
          goto LABEL_21;
        case 12:
          v38 = 0x53676E6974726F73;
          v37 = 0xEC000000656C7974;
          goto LABEL_21;
        case 13:
          v37 = 0xEA00000000006574;
          v38 = 0x614464656E6E6970;
          goto LABEL_21;
        default:
LABEL_21:

          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          v37, v41, v42, v43, v44, v45, v46, v47;
          if (os_log_type_enabled(v39, v40))
          {
            v48 = v34;
            v49 = v33;
            v50 = swift_slowAlloc();
            v51 = v35;
            v52 = swift_slowAlloc();
            v62 = v52;
            *v50 = 136446210;
            *(v50 + 4) = sub_10000668C(v38, v37, &v62);
            _os_log_impl(&_mh_execute_header, v39, v40, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v50, 0xCu);
            sub_10000607C(v52);
            v35 = v51;

            v33 = v49;
            v34 = v48;
            v31 = v61;
          }

          v53 = String._bridgeToObjectiveC()();
          v37, v54, v55, v56, v57, v58, v59, v60;
          [v31 initTokenWithDefaultValueIfNecessaryForKey:v53];

LABEL_24:
          if (v32 != 14)
          {
            continue;
          }

          break;
      }

      break;
    }
  }
}

void sub_1004DE4D0(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v4, v5, v6, v7, v8, v9, v10, v11;
  if ((v64 & 1) == 0 && v63 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094A590);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v63 = v17;
      *v16 = 136446210;
      v18 = [v13 recordID];
      v19 = [v18 ckShortDescription];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10000668C(v20, v22, &v63);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v16, 0xCu);
      sub_10000607C(v17);
    }

    v31 = [v1 createResolutionTokenMapIfNecessary];
    v32 = 0;
    v33 = &off_1008DDD20;
    v34 = 0xEB000000006D656CLL;
    v35 = 0x626D456567646162;
    while (2)
    {
      v36 = *(v33 + v32++ + 32);
      v37 = v34;
      v38 = v35;
      switch(v36)
      {
        case 1:
          v37 = 0xE500000000000000;
          v38 = 0x726F6C6F63;
          goto LABEL_24;
        case 2:
          v38 = 0x6E6F697461657263;
          v37 = 0xEC00000065746144;
          goto LABEL_24;
        case 3:
          v38 = 0xD000000000000010;
          v37 = 0x80000001007E8D70;
          goto LABEL_24;
        case 4:
          goto LABEL_27;
        case 5:
          v38 = 0xD000000000000028;
          v37 = 0x80000001007E8CC0;
          goto LABEL_24;
        case 6:
          v38 = 0xD000000000000025;
          v37 = 0x80000001007E8D90;
          goto LABEL_24;
        case 7:
          v37 = 0xE400000000000000;
          v38 = 1701667182;
          goto LABEL_24;
        case 8:
          v38 = 0x6341746E65726170;
          v37 = 0xED0000746E756F63;
          goto LABEL_24;
        case 9:
          v38 = 0xD00000000000001BLL;
          v37 = 0x80000001007E8DC0;
          goto LABEL_24;
        case 10:
          v38 = 0xD000000000000016;
          v37 = 0x80000001007E8DE0;
          goto LABEL_24;
        case 11:
          v38 = 0xD000000000000018;
          v37 = 0x80000001007E8BF0;
          goto LABEL_24;
        case 12:
          v38 = 0xD00000000000001ALL;
          v37 = 0x80000001007E8E00;
          goto LABEL_24;
        case 13:
          v38 = 0xD000000000000011;
          v37 = 0x80000001007E8BC0;
          goto LABEL_24;
        case 14:
          v38 = 0xD000000000000018;
          v37 = 0x80000001007E8D20;
          goto LABEL_24;
        case 15:
          v38 = 0x53676E6974726F73;
          v37 = 0xEC000000656C7974;
          goto LABEL_24;
        case 16:
          v38 = 0x694C656372756F73;
          v37 = 0xEF4C525544497473;
          goto LABEL_24;
        default:
LABEL_24:

          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          v37, v41, v42, v43, v44, v45, v46, v47;
          if (os_log_type_enabled(v39, v40))
          {
            v62 = v32;
            v48 = v31;
            v49 = v34;
            v50 = v33;
            v51 = swift_slowAlloc();
            v52 = v35;
            v53 = swift_slowAlloc();
            v63 = v53;
            *v51 = 136446210;
            *(v51 + 4) = sub_10000668C(v38, v37, &v63);
            _os_log_impl(&_mh_execute_header, v39, v40, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v51, 0xCu);
            sub_10000607C(v53);
            v35 = v52;

            v33 = v50;
            v34 = v49;
            v31 = v48;
            v32 = v62;
          }

          v54 = String._bridgeToObjectiveC()();
          v37, v55, v56, v57, v58, v59, v60, v61;
          [v31 initTokenWithDefaultValueIfNecessaryForKey:v54];

LABEL_27:
          if (v32 != 17)
          {
            continue;
          }

          break;
      }

      break;
    }
  }
}

void sub_1004DEA98(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v4, v5, v6, v7, v8, v9, v10, v11;
  if ((v63 & 1) == 0 && v62 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094A590);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v62 = v17;
      *v16 = 136446210;
      v18 = [v13 recordID];
      v19 = [v18 ckShortDescription];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10000668C(v20, v22, &v62);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v16, 0xCu);
      sub_10000607C(v17);
    }

    v31 = [v1 createResolutionTokenMapIfNecessary];
    v32 = 0;
    v33 = &off_1008DDF48;
    v34 = 0xEB000000006D656CLL;
    v35 = 0x626D456567646162;
    v61 = v31;
    while (2)
    {
      v44 = *(v33 + v32++ + 32);
      v45 = v34;
      v46 = v35;
      switch(v44)
      {
        case 1:
          v45 = 0xE500000000000000;
          v46 = 0x726F6C6F63;
          goto LABEL_26;
        case 2:
        case 5:
        case 7:
        case 15:
        case 16:
        case 17:
          goto LABEL_9;
        case 3:
          v46 = 0xD00000000000002ALL;
          v45 = 0x80000001007E8E60;
          goto LABEL_26;
        case 4:
          v46 = 0x4C797265636F7267;
          v45 = 0xEF4449656C61636FLL;
          goto LABEL_26;
        case 6:
          v46 = 0xD000000000000012;
          v45 = 0x80000001007E8E90;
          goto LABEL_26;
        case 8:
          v46 = 0xD000000000000028;
          v45 = 0x80000001007E8CC0;
          goto LABEL_26;
        case 9:
          v46 = 0xD000000000000022;
          v45 = 0x80000001007E8CF0;
          goto LABEL_26;
        case 10:
          v45 = 0xE400000000000000;
          v46 = 1701667182;
          goto LABEL_26;
        case 11:
          v46 = 0x6341746E65726170;
          v45 = 0xED0000746E756F63;
          goto LABEL_26;
        case 12:
          v45 = 0xEA00000000007473;
          v46 = 0x694C746E65726170;
          goto LABEL_26;
        case 13:
          v46 = 0x614464656E6E6970;
          v45 = 0xEA00000000006574;
          goto LABEL_26;
        case 14:
          v46 = 0xD00000000000001CLL;
          v45 = 0x80000001007E8EB0;
          goto LABEL_26;
        case 18:
          v46 = 0xD000000000000018;
          v45 = 0x80000001007E8D20;
          goto LABEL_26;
        case 19:
          v46 = 0xD00000000000001CLL;
          v45 = 0x80000001007E8F20;
          goto LABEL_26;
        case 20:
          v46 = 0xD000000000000019;
          v45 = 0x80000001007E8F40;
          goto LABEL_26;
        case 21:
          v46 = 0x53676E6974726F73;
          v45 = 0xEC000000656C7974;
          goto LABEL_26;
        default:
LABEL_26:

          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.default.getter();
          v45, v49, v50, v51, v52, v53, v54, v55;
          if (os_log_type_enabled(v47, v48))
          {
            v56 = v34;
            v57 = v33;
            v58 = swift_slowAlloc();
            v59 = v35;
            v60 = swift_slowAlloc();
            v62 = v60;
            *v58 = 136446210;
            *(v58 + 4) = sub_10000668C(v46, v45, &v62);
            _os_log_impl(&_mh_execute_header, v47, v48, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v58, 0xCu);
            sub_10000607C(v60);
            v35 = v59;

            v33 = v57;
            v34 = v56;
            v31 = v61;
          }

          v36 = String._bridgeToObjectiveC()();
          v45, v37, v38, v39, v40, v41, v42, v43;
          [v31 initTokenWithDefaultValueIfNecessaryForKey:v36];

LABEL_9:
          if (v32 != 22)
          {
            continue;
          }

          break;
      }

      break;
    }
  }
}
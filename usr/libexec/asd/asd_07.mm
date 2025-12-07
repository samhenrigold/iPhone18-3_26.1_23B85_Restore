void sub_1000C1040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v7 = __chkstk_darwin(v4, v5, v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10, v11);
  v39 = &v30 - v13;
  v14 = a2 + 56;
  v15 = 1 << *(a2 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a2 + 56);
  v18 = (v15 + 63) >> 6;
  v38 = v12 + 16;
  v35 = a1 + 56;
  v33 = v12;
  v19 = (v12 + 8);
  swift_bridgeObjectRetain_n();

  v20 = 0;
  v31 = v18;
  v32 = a2 + 56;
  v34 = a2;
  if (v17)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      return;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      do
      {
LABEL_9:
        v22 = *(v33 + 72);
        v23 = *(a2 + 48) + v22 * (__clz(__rbit64(v17)) | (v20 << 6));
        v36 = *(v33 + 16);
        v37 = v22;
        v36(v39, v23, v4);
        if (*(a1 + 16))
        {
          sub_1000C19DC(&qword_1006CC618, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
          v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v25 = a1;
          v26 = ~(-1 << *(a1 + 32));
          while (1)
          {
            v27 = v24 & v26;
            a1 = v25;
            if (((*(v35 + (((v24 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v26)) & 1) == 0)
            {
              break;
            }

            v36(v9, *(v25 + 48) + v27 * v37, v4);
            sub_1000C19DC(&qword_1006CC620, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
            v28 = dispatch thunk of static Equatable.== infix(_:_:)();
            v29 = *v19;
            (*v19)(v9, v4);
            v24 = v27 + 1;
            if (v28)
            {
              v29(v39, v4);

              goto LABEL_17;
            }
          }
        }

        v17 &= v17 - 1;
        (*v19)(v39, v4);
        a2 = v34;
        v18 = v31;
        v14 = v32;
      }

      while (v17);
    }
  }

LABEL_17:
}

_BYTE *sub_1000C1390(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v36 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v3, v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8, v9);
  v40 = &v31 - v10;
  if (!*(a1 + 16))
  {
    v12 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_1000443DC(&qword_1006CC628);
  result = static _SetStorage.allocate(capacity:)();
  v12 = result;
  v35 = *(a1 + 16);
  if (!v35)
  {
LABEL_15:

    return v12;
  }

  v13 = 0;
  v39 = result + 56;
  v14 = *(v36 + 80);
  v33 = a1;
  v34 = a1 + ((v14 + 32) & ~v14);
  v38 = v36 + 16;
  v15 = (v36 + 8);
  v32 = (v36 + 32);
  while (v13 < *(a1 + 16))
  {
    v16 = *(v36 + 72);
    v37 = v13 + 1;
    v17 = *(v36 + 16);
    v17(v40, v34 + v16 * v13, v2);
    sub_1000C19DC(&qword_1006CC618, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
    v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = ~(-1 << v12[32]);
    while (1)
    {
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *&v39[8 * v21];
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) == 0)
      {
        break;
      }

      v24 = v12;
      v17(v7, *(v12 + 6) + v20 * v16, v2);
      sub_1000C19DC(&qword_1006CC620, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *v15;
      (*v15)(v7, v2);
      if (v25)
      {
        result = (v26)(v40, v2);
        v12 = v24;
        goto LABEL_12;
      }

      v18 = v20 + 1;
      v12 = v24;
    }

    v27 = v40;
    *&v39[8 * v21] = v23 | v22;
    result = (*v32)(*(v12 + 6) + v20 * v16, v27, v2);
    v28 = *(v12 + 2);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_17;
    }

    *(v12 + 2) = v30;
LABEL_12:
    v13 = v37;
    a1 = v33;
    if (v37 == v35)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

_BYTE *sub_1000C16CC(uint64_t a1)
{
  v2 = type metadata accessor for ProfileContext();
  sub_10004EAE0();
  v40 = v3;
  v7 = __chkstk_darwin(v4, v5, v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10, v11);
  v44 = &v35 - v12;
  if (!*(a1 + 16))
  {
    v14 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_1000443DC(&qword_1006CBB20);
  result = static _SetStorage.allocate(capacity:)();
  v14 = result;
  v39 = *(a1 + 16);
  if (!v39)
  {
LABEL_15:

    return v14;
  }

  v15 = 0;
  v43 = result + 56;
  v16 = *(v40 + 80);
  v37 = a1;
  v38 = a1 + ((v16 + 32) & ~v16);
  v42 = v40 + 16;
  v17 = (v40 + 8);
  v36 = (v40 + 32);
  while (v15 < *(a1 + 16))
  {
    v18 = *(v40 + 72);
    v41 = v15 + 1;
    v19 = *(v40 + 16);
    v19(v44, v38 + v18 * v15, v2);
    sub_1000C1A44();
    sub_1000C19DC(&qword_1006CA8F8, v20, &protocol conformance descriptor for ProfileContext);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v22 = ~(-1 << v14[32]);
    while (1)
    {
      v23 = v21 & v22;
      v24 = (v21 & v22) >> 6;
      v25 = *&v43[8 * v24];
      v26 = 1 << (v21 & v22);
      if ((v26 & v25) == 0)
      {
        break;
      }

      v27 = v14;
      v19(v9, *(v14 + 6) + v23 * v18, v2);
      sub_1000C1A44();
      sub_1000C19DC(&qword_1006CA900, v28, &protocol conformance descriptor for ProfileContext);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *v17;
      (*v17)(v9, v2);
      if (v29)
      {
        result = (v30)(v44, v2);
        v14 = v27;
        goto LABEL_12;
      }

      v21 = v23 + 1;
      v14 = v27;
    }

    v31 = v44;
    *&v43[8 * v24] = v26 | v25;
    result = (*v36)(*(v14 + 6) + v23 * v18, v31, v2);
    v32 = *(v14 + 2);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_17;
    }

    *(v14 + 2) = v34;
LABEL_12:
    v15 = v41;
    a1 = v37;
    if (v41 == v39)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1000C19DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C1A24(uint64_t a1)
{

  return swift_once();
}

void sub_1000C1A6C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1000C1A90(uint64_t a1, uint64_t a2)
{
  sub_1000443DC(&unk_1006CB550);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_1000C1B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_1000C1B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(*(a1 + 64) + 40);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  *(v3 + 32) = v2;
  return swift_continuation_throwingResume();
}

Class sub_1000C1B68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_1000C1C04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v9(v8);

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1000C1CF8()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CC630);
  sub_100046E6C(v0, qword_1006CC630);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000C1D80()
{
  sub_1000B05E4(v2);
  if (v3 == 1)
  {
    v0 = 0;
  }

  else
  {
    v0 = v4;
    sub_1000C43EC(v2);
  }

  return v0 & 1;
}

uint64_t sub_1000C1DEC()
{
  sub_1000657D4();
  sub_1000C1E44();
  sub_10006574C();

  return v0();
}

uint64_t sub_1000C1E44()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1006C9808 != -1)
  {
    swift_once();
  }

  v2 = qword_1006DF840;
  v3 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_1000C42F4;
  v7[5] = v3;
  sub_1000C44C4();
  v7[1] = 1107296256;
  v7[2] = sub_1000C1C04;
  v7[3] = &unk_100694F48;
  v4 = _Block_copy(v7);

  v5 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  *(v0 + 200) = v5;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000C1F88(uint64_t a1, uint64_t a2)
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
    sub_10006F27C(0, 0, v6, &unk_1005CF140, v10);
  }

  return result;
}

uint64_t sub_1000C2080()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000640AC;

  return sub_1000C21CC(v1);
}

uint64_t sub_1000C2110()
{
  v0 = [objc_allocWithZone(ACAccountStore) init];
  v1 = [v0 aida_accountForPrimaryiCloudAccount];
  if (!v1)
  {

    return 0;
  }

  v2 = v1;
  v3 = [v1 aida_dsid];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t sub_1000C21E4()
{
  sub_1000657EC();
  if (*(v0[2] + 208))
  {
    sub_10006574C();

    return v1();
  }

  else
  {
    sub_1000C2110();
    v4 = v3;
    v0[3] = v3;
    if ((sub_1000C1D80() & 1) != 0 || !v4)
    {
      v6 = swift_task_alloc();
      v0[5] = v6;
      *v6 = v0;
      v7 = sub_1000C453C(v6);

      return sub_1000C37D4(v7);
    }

    else
    {
      v5 = swift_task_alloc();
      v0[4] = v5;
      *v5 = v0;
      sub_1000C453C(v5);

      return sub_1000C2744();
    }
  }
}

uint64_t sub_1000C2334()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  sub_10006574C();

  return v3();
}

uint64_t sub_1000C2430()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  return _swift_task_switch(sub_1000C2530, v2, 0);
}

uint64_t sub_1000C2530()
{
  sub_1000657EC();
  if (*(v1 + 24))
  {

    if (qword_1006C9838 != -1)
    {
      sub_1000C4468(&qword_1006C9838);
    }

    v2 = type metadata accessor for Logger();
    sub_100097D98(v2, qword_1006CC630);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (sub_10009D6D8(v4))
    {
      v5 = sub_1000541D8();
      sub_100077908(v5);
      sub_10007FD74(&_mh_execute_header, v6, v7, "Push disabled - not registering with PDS");
      sub_1000488AC(v0);
    }
  }

  else
  {
    if (qword_1006C9838 != -1)
    {
      sub_1000C4468(&qword_1006C9838);
    }

    v8 = type metadata accessor for Logger();
    sub_100097D98(v8, qword_1006CC630);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (sub_10009D6D8(v10))
    {
      v11 = sub_1000541D8();
      sub_100077908(v11);
      sub_10007FD74(&_mh_execute_header, v12, v13, "Couldn't find current user - not registering with PDS and removing Ravioli if present");
      sub_1000488AC(v0);
    }

    v3 = [objc_allocWithZone(Vr3QrKl7Yn9l4CTz) init];
    [v3 hiMi2bftgysHNCmu];
  }

  sub_10006574C();

  return v14();
}

uint64_t sub_1000C26B8()
{
  sub_1000657D4();
  *(*(v0 + 16) + 208) = 0;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v2 = sub_1000C453C(v1);

  return sub_1000C21CC(v2);
}

uint64_t sub_1000C2744()
{
  sub_1000657EC();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v1[28] = type metadata accessor for ASAnalyticsEvent(0);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000C2824, v0, 0);
}

uint64_t sub_1000C2824()
{
  v2 = *(v1[27] + 112);
  v1[32] = v2;
  if (v2)
  {
    v1[2] = v1;
    v1[7] = v1 + 21;
    v1[3] = sub_1000C2A7C;
    v3 = swift_continuation_init();
    v4 = sub_1000443DC(&qword_1006CC7A0);
    sub_1000C44FC(v4);
    sub_1000C44E4(COERCE_DOUBLE(1107296256));
    v1[12] = v5;
    v1[13] = &unk_100694EA8;
    v1[14] = v3;
    [v2 activeUsersWithCompletion:v1 + 10];

    return _swift_continuation_await(v1 + 2);
  }

  else
  {
    if (qword_1006C9838 != -1)
    {
      sub_1000C4468(&qword_1006C9838);
    }

    v6 = type metadata accessor for Logger();
    sub_100097D98(v6, qword_1006CC630);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (sub_10009D6D8(v8))
    {
      v9 = sub_1000541D8();
      sub_100077908(v9);
      sub_10007FD74(&_mh_execute_header, v10, v11, "PushManagerPDS has nil PDSRegistrar - Can't register dsid");
      sub_1000488AC(v0);
    }

    v12 = v1[27];

    if (*(v12 + 136))
    {
      if (*(v12 + 136) == 1)
      {
        sub_1000C44B0();
      }

      else
      {
        sub_1000C4488();
      }
    }

    else
    {
      sub_1000C454C();
      sub_1000C449C();
    }

    v14 = v1[31];
    *v14 = 1;
    sub_1000C451C(v13);
    sub_1000C4148(v14);
    sub_10007700C(v14);

    sub_10006574C();

    return v15();
  }
}

uint64_t sub_1000C2A7C()
{
  sub_1000657D4();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 216);
  if (v2)
  {
    v4 = sub_1000C31F0;
  }

  else
  {
    v4 = sub_1000C2BC4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000C2BC4()
{
  v3 = v0[21];
  v4 = sub_1000591F0(v3);
  v5 = 0;
  v64 = v3 & 0xFFFFFFFFFFFFFF8;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v1 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      sub_1000C4468(&qword_1006C9838);
      goto LABEL_40;
    }

    v8 = v0[25];
    v7 = v0[26];
    v9 = [v6 userID];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v2 == v8 && v11 == v7)
    {
    }

    else
    {
      LODWORD(v2) = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v2 & 1) == 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v2 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_15;
      }
    }

LABEL_15:
    ++v5;
  }

  v13 = sub_1000591F0(_swiftEmptyArrayStorage);
  v14 = 0;
  v2 = _swiftEmptyArrayStorage & 0xC000000000000001;
  while (1)
  {
    if (v13 == v14)
    {

      goto LABEL_37;
    }

    if (v2)
    {
      sub_1000981E8();
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_54;
      }

      v15 = _swiftEmptyArrayStorage[v14 + 4];
    }

    v5 = v15;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_53;
    }

    v16 = v0[32];
    v0[24] = 0;
    v17 = [v16 removeAllRegistrationsFromUser:v5 error:v0 + 24];
    v1 = v0[24];
    if (!v17)
    {
      break;
    }

    v18 = v1;

    ++v14;
  }

  v19 = v1;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1006C9838 != -1)
  {
    sub_1000C4468(&qword_1006C9838);
  }

  v20 = type metadata accessor for Logger();
  sub_100097D98(v20, qword_1006CC630);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = sub_1000541D8();
    *v23 = 0;
    sub_1000773B4(&_mh_execute_header, v24, v25, "Error getting or removing registrations for existing users.");
    sub_1000488AC(v23);
  }

  v26 = v0[27];

  if (*(v26 + 136))
  {
    if (*(v26 + 136) == 1)
    {
      sub_1000C44B0();
    }

    else
    {
      sub_1000C4488();
    }
  }

  else
  {
    sub_1000C454C();
    sub_1000C449C();
  }

  v28 = v0[30];
  *v28 = 1;
  sub_1000C451C(v27);
  sub_1000C4148(v28);

  sub_10007700C(v28);
LABEL_37:
  v29 = v0[32];
  v30 = v0[27];
  sub_1000591B0(0, &qword_1006CC7A8, PDSUser_ptr);

  v31 = sub_1000981E8();
  v5 = sub_1000C36F4(v31, v32);
  sub_1000591B0(0, &qword_1006CC7B0, PDSRegistration_ptr);
  v33 = *(v30 + 120);
  v34 = *(v30 + 128);
  LODWORD(v2) = *(v30 + 136);

  v1 = sub_1000C3758(v33, v34, v2);
  v0[22] = 0;
  v35 = [v29 ensureRegistrationPresent:v1 forUser:v5 error:v0 + 22];
  v36 = v0[22];
  if (v35)
  {
    v37 = v0[32];
    v38 = v36;

    goto LABEL_48;
  }

  v64 = v33;
  v39 = v36;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1006C9838 != -1)
  {
    goto LABEL_55;
  }

LABEL_40:
  v40 = type metadata accessor for Logger();
  sub_100097D98(v40, qword_1006CC630);
  swift_errorRetain();

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v62 = v5;
    v65 = swift_slowAlloc();
    *v43 = 136315394;
    swift_getErrorValue();
    v44 = sub_1000C45AC();
    v45 = v1;
    v46 = sub_100052F7C(v44);

    *(v43 + 4) = v46;
    v1 = v45;
    v55 = sub_1000C4558(v47, v48, v49, v50, v51, v52, v53, v54, v65, v62, v64);
    *(v43 + 14) = sub_100052F7C(v55);
    _os_log_impl(&_mh_execute_header, v41, v42, "Error thrown ensuring registering Push user: %s for topic %s", v43, 0x16u);
    swift_arrayDestroy();
    v5 = v63;
    sub_1000488AC(v61);
    sub_1000488AC(v43);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      sub_1000C44B0();
    }

    else
    {
      sub_1000C4488();
    }
  }

  else
  {
    sub_1000C449C();
    sub_1000C454C();
  }

  v57 = v0[32];
  v58 = v0[29];
  *v58 = 1;
  sub_1000C451C(v56);
  sub_1000C4148(v58);

  sub_10007700C(v58);
LABEL_48:

  sub_10006574C();

  return v59();
}

uint64_t sub_1000C31F0(uint64_t a1)
{
  swift_willThrow();
  if (qword_1006C9838 != -1)
  {
    sub_1000C4468(&qword_1006C9838);
  }

  v2 = type metadata accessor for Logger();
  sub_100097D98(v2, qword_1006CC630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_1000541D8();
    *v5 = 0;
    sub_1000773B4(&_mh_execute_header, v6, v7, "Error getting or removing registrations for existing users.");
    sub_1000488AC(v5);
  }

  v8 = v1[27];

  if (*(v8 + 136))
  {
    if (*(v8 + 136) == 1)
    {
      sub_1000C44B0();
    }

    else
    {
      sub_1000C4488();
    }
  }

  else
  {
    sub_1000C449C();
    sub_1000C454C();
  }

  v10 = v1[30];
  *v10 = 1;
  sub_1000C451C(v9);
  sub_1000C4148(v10);

  sub_10007700C(v10);
  v11 = v1[32];
  v12 = v1[27];
  sub_1000591B0(0, &qword_1006CC7A8, PDSUser_ptr);

  v13 = sub_1000981E8();
  v15 = sub_1000C36F4(v13, v14);
  sub_1000591B0(0, &qword_1006CC7B0, PDSRegistration_ptr);
  v16 = *(v12 + 120);
  v17 = *(v12 + 128);
  v18 = *(v12 + 136);

  v19 = sub_1000C3758(v16, v17, v18);
  v1[22] = 0;
  v49 = v15;
  v20 = [v11 ensureRegistrationPresent:v19 forUser:v15 error:v1 + 22];
  v21 = v1[22];
  if (v20)
  {
    v22 = v1[32];
    v23 = v21;
  }

  else
  {
    v48 = v16;
    v24 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006C9838 != -1)
    {
      sub_1000C4468(&qword_1006C9838);
    }

    sub_100097D98(v2, qword_1006CC630);
    swift_errorRetain();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v27 = 136315394;
      swift_getErrorValue();
      HIDWORD(v45) = v26;
      v28 = sub_1000C45AC();
      v29 = sub_100052F7C(v28);

      *(v27 + 4) = v29;
      v38 = sub_1000C4558(v30, v31, v32, v33, v34, v35, v36, v37, v45, v50, v48);
      *(v27 + 14) = sub_100052F7C(v38);
      _os_log_impl(&_mh_execute_header, v25, v46, "Error thrown ensuring registering Push user: %s for topic %s", v27, 0x16u);
      swift_arrayDestroy();
      sub_1000488AC(v47);
      sub_1000488AC(v27);
    }

    if (v18)
    {
      v39 = 0xE700000000000000;
      if (v18 == 1)
      {
        v40 = 0x786F62646E6173;
      }

      else
      {
        v40 = 0x6E776F6E6B6E55;
      }
    }

    else
    {
      v40 = 0x69746375646F7270;
      v39 = 0xEA00000000006E6FLL;
    }

    v41 = v1[32];
    v42 = v1[29];
    *v42 = 1;
    *(v42 + 8) = 3;
    *(v42 + 16) = v40;
    *(v42 + 24) = v39;
    swift_storeEnumTagMultiPayload();
    sub_1000C4148(v42);

    sub_10007700C(v42);
  }

  sub_10006574C();

  return v43();
}

uint64_t sub_1000C3670(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100044728((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_1000C1A90(v4, a3);
  }

  sub_1000591B0(0, &qword_1006CC7A8, PDSUser_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1000C1AFC(v4, v6);
}

id sub_1000C36F4(uint64_t a1, uint64_t a2)
{
  v2 = String._bridgeToObjectiveC()();

  v3 = [swift_getObjCClassFromMetadata() userWithDSID:v2];

  return v3;
}

id sub_1000C3758(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithTopic:v5 pushEnvironment:a3];

  return v6;
}

uint64_t sub_1000C37EC()
{
  sub_1000657D4();
  *(*(v0 + 16) + 208) = 1;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  sub_1000C453C(v1);

  return sub_1000C387C();
}

uint64_t sub_1000C387C()
{
  sub_1000657D4();
  *(v1 + 184) = v0;

  return _swift_task_switch(sub_1000C3908, v0, 0);
}

uint64_t sub_1000C3908()
{
  v2 = *(v1[23] + 112);
  v1[24] = v2;
  if (v2)
  {
    v1[2] = v1;
    v1[7] = v1 + 21;
    v1[3] = sub_1000C3AEC;
    v3 = swift_continuation_init();
    v4 = sub_1000443DC(&qword_1006CC7A0);
    sub_1000C44FC(v4);
    sub_1000C44E4(COERCE_DOUBLE(1107296256));
    v1[12] = v5;
    v1[13] = &unk_100694E80;
    v1[14] = v3;
    [v2 activeUsersWithCompletion:v1 + 10];

    return _swift_continuation_await(v1 + 2);
  }

  else
  {
    if (qword_1006C9838 != -1)
    {
      sub_1000C4468(&qword_1006C9838);
    }

    v6 = type metadata accessor for Logger();
    sub_100097D98(v6, qword_1006CC630);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (sub_10009D6D8(v8))
    {
      v9 = sub_1000541D8();
      sub_100077908(v9);
      sub_10007FD74(&_mh_execute_header, v10, v11, "PushManagerPDS has nil PDSRegistrar - Can't unregister dsid");
      sub_1000488AC(v0);
    }

    sub_10006574C();

    return v12();
  }
}

uint64_t sub_1000C3AEC()
{
  sub_1000657D4();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 184);
  if (v2)
  {
    v4 = sub_1000C3EB0;
  }

  else
  {
    v4 = sub_1000C3C34;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000C3C34()
{
  v1 = v0[21];
  v2 = sub_1000591F0(v1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {
      v10 = v0[24];

      goto LABEL_15;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_1000981E8();
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v6 = v0[24];
    v0[10] = 0;
    v7 = [v6 removeAllRegistrationsFromUser:v5 error:v0 + 10];
    v8 = v0[10];
    if (!v7)
    {
      break;
    }

    v9 = v8;
  }

  v11 = v8;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1006C9838 == -1)
  {
    goto LABEL_12;
  }

LABEL_20:
  sub_1000C4468(&qword_1006C9838);
LABEL_12:
  v12 = type metadata accessor for Logger();
  sub_100097D98(v12, qword_1006CC630);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[24];
  if (v15)
  {
    v17 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    sub_1000C458C(4.8149e-34);
    v18 = sub_1000C45AC();
    v19 = sub_100052F7C(v18);

    *(v17 + 4) = v19;
    sub_1000C456C(&_mh_execute_header, v20, v21, "Error thrown unregistering Push user: %s");
    sub_100044850(v24);
    sub_1000488AC(v24);
    sub_1000488AC(v17);
  }

  else
  {
  }

LABEL_15:
  sub_10006574C();

  return v22();
}

uint64_t sub_1000C3EB0(uint64_t a1)
{
  swift_willThrow();
  if (qword_1006C9838 != -1)
  {
    sub_1000C4468(&qword_1006C9838);
  }

  v2 = type metadata accessor for Logger();
  sub_100097D98(v2, qword_1006CC630);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 192);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    sub_1000C458C(4.8149e-34);
    v8 = sub_1000C45AC();
    v9 = sub_100052F7C(v8);

    *(v7 + 4) = v9;
    sub_1000C456C(&_mh_execute_header, v10, v11, "Error thrown unregistering Push user: %s");
    sub_100044850(v14);
    sub_1000488AC(v14);
    sub_1000488AC(v7);
  }

  else
  {
  }

  sub_10006574C();

  return v12();
}

uint64_t sub_1000C4064()
{
  if (*(v0 + 200))
  {
    [*(v0 + 192) removeObserver:?];
  }

  sub_100044850((v0 + 144));

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000C40CC()
{
  sub_1000C4064();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000C4148(uint64_t a1)
{
  v10 = type metadata accessor for ASAnalyticsEvent(0);
  v11 = &off_100694E68;
  v2 = sub_10005351C(v9);
  sub_1000BFA88(a1, v2);
  sub_100044728(v9, v10);
  sub_1000BF244();
  v3 = String._bridgeToObjectiveC()();

  sub_1000446C4(v9, v8);
  v4 = swift_allocObject();
  sub_100046D90(v8, v4 + 16);
  v7[4] = sub_1000C429C;
  v7[5] = v4;
  sub_1000C44C4();
  v7[1] = 1107296256;
  v7[2] = sub_1000C1B68;
  v7[3] = &unk_100694EF8;
  v5 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v5);

  return sub_100044850(v9);
}

uint64_t sub_1000C4264()
{
  sub_100044850((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000C42A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C42BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C42FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C433C()
{
  sub_1000657EC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000640AC;

  return sub_1000C2080();
}

uint64_t sub_1000C43EC(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CAC08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C4468(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000C44FC(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_1000C451C@<X0>(uint64_t a2@<X8>)
{
  v4[1] = v3;
  v4[2] = v2;
  v4[3] = a2;

  return swift_storeEnumTagMultiPayload();
}

void sub_1000C456C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000C458C(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t sub_1000C45AC()
{

  return Error.localizedDescription.getter();
}

uint64_t sub_1000C45C4()
{
  sub_1000657EC();
  v2 = v1;
  v0[28] = v3;
  v0[29] = v4;
  v0[27] = v1;
  v5 = type metadata accessor for BindingsGuesser(0);
  v0[30] = v5;
  sub_100077674(v5);
  v0[31] = sub_100065948();
  v6 = type metadata accessor for AssessmentPayloadCacher(0);
  v0[32] = v6;
  sub_100077674(v6);
  v0[33] = sub_100065948();
  v7 = type metadata accessor for ProfileContent(0);
  sub_100077674(v7);
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v8 = type metadata accessor for ProfileContext();
  v0[38] = v8;
  sub_1000474C0(v8);
  v0[39] = v9;
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v0[45] = v10;
  sub_1000474C0(v10);
  v0[46] = v11;
  v12 = sub_100065948();
  v13 = *v2;
  v14 = v2[1];
  v0[47] = v12;
  v0[48] = v13;
  v0[49] = v14;

  swift_task_alloc();
  sub_10007743C();
  v0[50] = v15;
  *v15 = v16;
  v15[1] = sub_1000C47E4;

  return sub_1000C7BE8((v0 + 2), v13, v14);
}

uint64_t sub_1000C47E4()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  *v4 = *v1;
  v3[51] = v5;
  v3[52] = v6;
  v3[53] = v0;

  if (v0)
  {
  }

  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C48F0()
{
  sub_1000CACF0();
  sub_10006ECA0();
  v1 = v0[44];
  v2 = v0[38];
  v3 = v0[39];
  v5 = v0[27];
  v4 = v0[28];
  sub_1000BEEC8();
  Logger.init(subsystem:category:)();
  v0[54] = sub_1000C85B4(v0 + 2, v5, v4);
  v6 = enum case for ProfileContext.fallbackPrecomputation(_:);
  v7 = *(v3 + 104);
  v0[55] = v7;
  v0[56] = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v1, v6, v2);
  sub_100069948();
  v9 = v8;
  v10 = *(v3 + 8);
  v0[57] = v10;
  v0[58] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v2);
  if (v9)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (sub_1000773E0(v12))
    {
      v13 = sub_1000541D8();
      sub_100077640(v13);
      sub_1000773B4(&_mh_execute_header, v14, v15, "Computing fba");
      sub_10007756C();
    }

    sub_1000446C4((v0 + 2), (v0 + 22));
    v16 = sub_1000CA80C();
    (v7)(v16);
    swift_task_alloc();
    sub_10007743C();
    v0[59] = v17;
    *v17 = v18;
    v17[1] = sub_1000C4C50;
  }

  else
  {
    v19 = v0[57];
    sub_1000CA82C();
    v20 = sub_1000CA80C();
    v21(v20);
    sub_1000CABF4();
    v23 = v22;
    v24 = sub_100054004();
    v19(v24);
    if (v23)
    {
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (sub_1000773E0(v26))
      {
        v27 = sub_1000541D8();
        sub_100077640(v27);
        sub_1000773B4(&_mh_execute_header, v28, v29, "Computing pca");
        sub_10007756C();
      }

      v30 = v0[55];

      sub_1000446C4((v0 + 2), (v0 + 17));
      v31 = sub_1000CA80C();
      v30(v31);
      swift_task_alloc();
      sub_10007743C();
      v0[63] = v32;
      *v32 = v33;
      sub_1000CA900(v32);
    }

    else
    {
      v35 = v0[57];
      v34 = v0[58];
      sub_1000CA82C();
      v36 = sub_1000CA80C();
      v37(v36);
      sub_1000CABF4();
      v39 = v38;

      v40 = sub_100054004();
      v35(v40);
      if (v39)
      {
        Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();
        if (sub_1000773E0(v41))
        {
          v42 = sub_1000541D8();
          sub_100077640(v42);
          sub_1000773B4(&_mh_execute_header, v43, v44, "Computing pga");
          sub_10007756C();
        }

        sub_1000CAB88();
        sub_1000446C4((v0 + 2), (v0 + 12));
        v45 = sub_1000CA80C();
        v34(v45);
        swift_task_alloc();
        sub_10007743C();
        v0[67] = v46;
        *v46 = v47;
        sub_1000CA7C8(v46);
      }

      else
      {

        sub_1000CA8B0();
        v48 = sub_1000CAC64();
        v9(v48);
        swift_task_alloc();
        sub_10007743C();
        v0[73] = v49;
        *v49 = v50;
        sub_1000CA768(v49);
      }
    }
  }

  sub_1000CACB8();

  return sub_10007FD94(v51, v52, v53);
}

uint64_t sub_1000C4C50()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;
  v3[60] = v0;

  if (v0)
  {
    sub_1000CAABC();

    v7 = sub_100065864();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[61] = v10;
    *v10 = v5;
    v10[1] = sub_1000C4DC4;
    v11 = sub_100097E58(v3[27]);

    return sub_1000C8C28(v11, v12, v13, v14, v15);
  }
}

uint64_t sub_1000C4DC4()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;
  *(v3 + 496) = v0;

  if (v0)
  {
    sub_1000CAABC();
  }

  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C4ED8()
{
  sub_1000CACF0();
  sub_10006ECA0();
  sub_1000CA718();
  sub_1000CA348(v2, v3);
  v4 = v0[57];
  sub_1000CA82C();
  v5 = sub_1000CA80C();
  v6(v5);
  sub_1000CABF4();
  v8 = v7;
  v9 = sub_100054004();
  v4(v9);
  if (v8)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (sub_1000773E0(v11))
    {
      v12 = sub_1000541D8();
      sub_100077640(v12);
      sub_1000773B4(&_mh_execute_header, v13, v14, "Computing pca");
      sub_10007756C();
    }

    v15 = v0[55];

    sub_1000446C4((v0 + 2), (v0 + 17));
    v16 = sub_1000CA80C();
    v15(v16);
    swift_task_alloc();
    sub_10007743C();
    v0[63] = v17;
    *v17 = v18;
    sub_1000CA900(v17);
  }

  else
  {
    v20 = v0[57];
    v19 = v0[58];
    sub_1000CA82C();
    v21 = sub_1000CA80C();
    v22(v21);
    sub_1000CABF4();
    v24 = v23;

    v25 = sub_100054004();
    v20(v25);
    if (v24)
    {
      Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (sub_1000773E0(v26))
      {
        v27 = sub_1000541D8();
        sub_100077640(v27);
        sub_1000773B4(&_mh_execute_header, v28, v29, "Computing pga");
        sub_10007756C();
      }

      sub_1000CAB88();
      sub_1000446C4((v0 + 2), (v0 + 12));
      v30 = sub_1000CA80C();
      v19(v30);
      swift_task_alloc();
      sub_10007743C();
      v0[67] = v31;
      *v31 = v32;
      sub_1000CA7C8(v31);
    }

    else
    {

      sub_1000CA8B0();
      v33 = sub_1000CAC64();
      v1(v33);
      swift_task_alloc();
      sub_10007743C();
      v0[73] = v34;
      *v34 = v35;
      sub_1000CA768(v34);
    }
  }

  sub_1000CACB8();

  return sub_10007FD94(v36, v37, v38);
}

uint64_t sub_1000C50F4()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;
  v3[64] = v0;

  if (v0)
  {
    sub_1000CAABC();

    v7 = sub_100065864();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[65] = v10;
    *v10 = v5;
    v10[1] = sub_1000C5268;
    v11 = sub_100097E58(v3[27]);

    return sub_1000C9314(v11, v12, v13);
  }
}

uint64_t sub_1000C5268()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;
  *(v3 + 528) = v0;

  if (v0)
  {
    sub_1000CAABC();
  }

  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C537C()
{
  sub_1000CACF0();
  sub_10006ECA0();
  sub_1000CA718();
  sub_1000CA348(v2, v3);
  v5 = v0[57];
  v4 = v0[58];
  sub_1000CA82C();
  v6 = sub_1000CA80C();
  v7(v6);
  sub_1000CABF4();
  v9 = v8;

  v10 = sub_100054004();
  v5(v10);
  if (v9)
  {
    Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (sub_1000773E0(v11))
    {
      v12 = sub_1000541D8();
      sub_100077640(v12);
      sub_1000773B4(&_mh_execute_header, v13, v14, "Computing pga");
      sub_10007756C();
    }

    sub_1000CAB88();
    sub_1000446C4((v0 + 2), (v0 + 12));
    v15 = sub_1000CA80C();
    v4(v15);
    swift_task_alloc();
    sub_10007743C();
    v0[67] = v16;
    *v16 = v17;
    sub_1000CA7C8(v16);
  }

  else
  {

    sub_1000CA8B0();
    v18 = sub_1000CAC64();
    v1(v18);
    swift_task_alloc();
    sub_10007743C();
    v0[73] = v19;
    *v19 = v20;
    sub_1000CA768(v19);
  }

  sub_1000CACB8();

  return sub_10007FD94(v21, v22, v23);
}

uint64_t sub_1000C54E0()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;
  *(v3 + 544) = v0;

  if (v0)
  {
  }

  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C55EC()
{
  sub_100098024();
  sub_100097F98();
  v1 = v0[49];
  v2 = v0[33];
  *v2 = v0[48];
  v2[1] = v1;
  if (qword_1006C9828 != -1)
  {
    sub_1000BEF0C(&qword_1006C9828);
  }

  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  v8 = static AssessmentPayloadStore.shared;
  v2[2] = static AssessmentPayloadStore.shared;
  *(v5 + 24) = v4;
  *(v5 + 32) = v3;
  v9 = v8;
  sub_100065A4C();
  sub_1000CAAB0();
  Logger.init(subsystem:category:)();
  v10 = v6 + *(v7 + 20);
  *(v10 + 24) = &type metadata for BindingsGuesserSourceFactory;
  *(v10 + 32) = &off_100694360;
  v11 = (v6 + *(v7 + 24));
  v11[3] = type metadata accessor for BindingsHelpers();
  v11[4] = &off_100694330;
  sub_10005351C(v11);
  BindingsHelpers.init()();
  sub_100065A4C();
  sub_1000CAAB0();
  Logger.init(subsystem:category:)();
  v12 = swift_task_alloc();
  v0[69] = v12;
  *v12 = v0;
  v12[1] = sub_1000C5788;
  sub_100097DB0();

  return sub_1000A9794();
}

uint64_t sub_1000C5788()
{
  sub_100068324();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;
  v6 = *(v3 + 248);
  v7 = *v0;
  *v5 = *v0;
  *(v4 + 560) = v2;

  sub_1000CA348(v6, type metadata accessor for BindingsGuesser);
  v8 = swift_task_alloc();
  *(v4 + 568) = v8;
  *v8 = v7;
  v8[1] = sub_1000C5928;
  sub_100097E58(*(v3 + 280));

  return sub_1000D5600();
}

uint64_t sub_1000C5928()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;
  *(v6 + 576) = v0;

  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C5A3C()
{
  sub_1000657EC();
  v2 = *(v0 + 280);
  sub_1000CA794();
  sub_1000CA348(v3, v4);
  sub_1000CA718();
  sub_1000CA348(v2, v5);
  sub_1000CA8B0();
  v6 = sub_1000CAC64();
  v1(v6);
  swift_task_alloc();
  sub_10007743C();
  *(v0 + 584) = v7;
  *v7 = v8;
  v9 = sub_1000CA768(v7);

  return sub_10007FD94(v9, v10, v11);
}

uint64_t sub_1000C5AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  v16 = v14[46];
  v15 = v14[47];
  v17 = v14[45];
  v18 = v14[35];
  sub_1000CA794();
  sub_1000CA348(v19, v20);
  (*(v16 + 8))(v15, v17);
  sub_100044850(v14 + 2);
  sub_1000CA718();
  sub_1000CA348(v18, v21);
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C5BE4()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;
  v3[74] = v0;

  if (v0)
  {
    sub_1000658F8();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[75] = v10;
    *v10 = v5;
    v10[1] = sub_1000C5D34;
    v11 = sub_100097E58(v3[34]);

    return sub_1000C97E8(v11);
  }
}

uint64_t sub_1000C5D34()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;
  *(v6 + 608) = v0;

  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C5E2C(uint64_t a1)
{
  v2 = v1[46];
  v3 = v1[47];
  v4 = v1[45];
  v5 = v1[34];
  sub_1000CA718();
  sub_1000CA348(v5, v6);
  (*(v2 + 8))(v3, v4);
  sub_100044850(v1 + 2);

  sub_1000CA840();

  return v7();
}

uint64_t sub_1000C5F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C6010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  v15 = sub_1000CAA90();
  v16(v15);
  sub_100044850((v14 + 16));
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C60E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  sub_1000CA718();
  sub_1000CA348(v15, v16);
  v17 = sub_1000CAB0C();
  v18(v17);
  sub_100044850((v14 + 16));
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C61C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  v15 = sub_1000CAA90();
  v16(v15);
  sub_100044850((v14 + 16));
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C6294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  sub_1000CA718();
  sub_1000CA348(v15, v16);
  v17 = sub_1000CAB0C();
  v18(v17);
  sub_100044850((v14 + 16));
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C6378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  v15 = sub_1000CAA90();
  v16(v15);
  sub_100044850((v14 + 16));
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C6448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  v15 = sub_1000CAA90();
  v16(v15);
  sub_100044850((v14 + 16));
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C6518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100098008();
  sub_100098200();
  sub_1000CA718();
  sub_1000CA348(v15, v16);
  v17 = sub_1000CAB0C();
  v18(v17);
  sub_100044850((v14 + 16));
  sub_1000CA730();

  sub_1000CA81C();
  sub_10006592C();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t Data.uuid.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a2 >> 62;
  v6 = 1;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v7) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v7 = v7;
LABEL_6:
      if (v7 == 16)
      {
        if (v5 == 2)
        {
          v13 = *(a1 + 24);
          a1 = *(a1 + 16);
          v12 = v13;
          goto LABEL_12;
        }

        if (v5 != 1)
        {
          UUID.init(uuid:)();
          goto LABEL_14;
        }

        v11 = a1 >> 32;
        if (a1 >> 32 >= a1)
        {
          a1 = a1;
          v12 = v11;
LABEL_12:
          sub_1000CA2B4(a1, v12);
LABEL_14:
          v6 = 0;
          goto LABEL_15;
        }

LABEL_20:
        __break(1u);
        JUMPOUT(0x1000C676CLL);
      }

LABEL_15:
      v14 = type metadata accessor for UUID();

      return sub_1000485F8(a4, v6, 1, v14);
    case 2uLL:
      v9 = *(a1 + 16);
      v8 = *(a1 + 24);
      v10 = __OFSUB__(v8, v9);
      v7 = v8 - v9;
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    case 3uLL:
      goto LABEL_15;
    default:
      v7 = BYTE6(a2);
      goto LABEL_6;
  }
}

unsigned __int8 *sub_1000C677C(unsigned __int8 *result)
{
  if (result)
  {
    return UUID.init(uuid:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C67DC()
{
  sub_1000657D4();
  v0[18] = v1;
  v2 = sub_1000443DC(&qword_1006CA4A0);
  sub_100077674(v2);
  v0[19] = sub_100065948();
  v3 = type metadata accessor for UUID();
  v0[20] = v3;
  sub_1000474C0(v3);
  v0[21] = v4;
  v0[22] = sub_100065948();
  v5 = sub_100065864();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000C68A4()
{
  v4 = *(v1 + 144);
  *(v1 + 184) = [objc_opt_self() sharedInstance];
  v5 = *(v4 + 32);
  *(v1 + 264) = v5;
  v6 = 1 << v5;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);

  if (!v8)
  {
    while (1)
    {
      sub_1000CAC70();
      if (v9 == v10)
      {
        break;
      }

      sub_1000CAC84();
    }

    sub_1000CA840();
    sub_1000AF72C();

    __asm { BRAA            X1, X16 }
  }

  while (2)
  {
    sub_1000CA850(*(v1 + 144));
    switch(v11)
    {
      case 1:
        if (__OFSUB__(v4, v0))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v12 = v4 - v0;
LABEL_13:
        v15 = sub_100081220();
        sub_100046D38(v15, v16);
LABEL_14:
        if (v12 != 16)
        {
LABEL_15:
          v4 = *(v1 + 160);
          v17 = sub_100081220();
          sub_1000448B0(v17, v18);
          sub_1000CAD20();
          continue;
        }

        if (v3 == 2)
        {
          v33 = *(v0 + 16);
          v34 = sub_100081220();
          v36 = sub_100046D38(v34, v35);
          sub_1000CAB70(v36, v37, v38, v39, v40, v41, v42, v43, v73, v75, v78, v80, v82, v84, v85, v86, v88);
          if (__DataStorage._bytes.getter())
          {
            v44 = sub_1000CAD08();
            if (__OFSUB__(v33, v44))
            {
              goto LABEL_41;
            }

            v45 = v33 - v44 + v3;
          }

          else
          {
            v45 = 0;
          }

          __DataStorage._length.getter();
          if (!v45)
          {
            __break(1u);
            goto LABEL_32;
          }

LABEL_34:
          sub_1000CAA10();
        }

        else
        {
          if (v3 == 1)
          {
            if (v0 <= v0 >> 32)
            {
              v21 = sub_100081220();
              v23 = sub_100046D38(v21, v22);
              sub_1000CAB70(v23, v24, v25, v26, v27, v28, v29, v30, v73, v75, v78, v80, v82, v84, v85, v86, v88);
              if (__DataStorage._bytes.getter())
              {
                v31 = sub_1000CAD08();
                if (!__OFSUB__(v0, v31))
                {
                  v32 = v0 - v31 + v3;
                  goto LABEL_33;
                }

LABEL_42:
                __break(1u);
LABEL_43:
                __break(1u);
                JUMPOUT(0x1000C6C3CLL);
              }

LABEL_32:
              v32 = 0;
LABEL_33:
              __DataStorage._length.getter();
              if (!v32)
              {
                goto LABEL_43;
              }

              goto LABEL_34;
            }

LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v77 = *(v1 + 152);
          v46 = sub_100081220();
          v48 = sub_100046D38(v46, v47);
          sub_1000CAB70(v48, v49, v50, v51, v52, v53, v54, v55, v73, v77, v0 >> 24, v0 >> 16, v0 >> 8, HIBYTE(v0), HIWORD(v0), v0 >> 40, v88);
          sub_1000CA988();
        }

        UUID.init(uuid:)();
        v87 = *(v1 + 184);
        v56 = sub_100081220();
        sub_1000448B0(v56, v57);
        v58 = sub_1000CABA4();
        v59(v58);
        v60 = sub_100081220();
        sub_100046D38(v60, v61);
        v62 = sub_1000CAAD8();
        sub_100046D38(v62, v63);
        v64 = sub_100081220();
        sub_1000448B0(v64, v65);
        sub_1000CAAD8();
        *(v1 + 240) = Data._bridgeToObjectiveC()();
        v66 = sub_1000CAAD8();
        sub_1000448B0(v66, v67);
        UUID.uuidString.getter();
        *(v1 + 248) = String._bridgeToObjectiveC()();

        *(v1 + 16) = v1;
        sub_1000CA9DC();
        v68 = sub_1000443DC(&qword_1006CC4B0);
        sub_1000CA968(v68);
        *(v1 + 88) = 1107296256;
        v69 = sub_1000CA94C(qword_100695080, v74, v76, v79, v81, v83, v1 + 24, v1 + 96, v87);
        sub_1000CACD0(v69, "cacheData:forKey:andCategory:completion:");
        sub_1000AF72C();

        return _swift_continuation_await(v70);
      case 2:
        v14 = *(v0 + 16);
        v13 = *(v0 + 24);
        v12 = v13 - v14;
        if (!__OFSUB__(v13, v14))
        {
          goto LABEL_13;
        }

        goto LABEL_39;
      case 3:
        goto LABEL_15;
      default:
        v12 = BYTE6(v2);
        goto LABEL_14;
    }
  }
}

uint64_t sub_1000C6C4C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = *(v3 + 48);
  sub_1000658F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C6D48()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 160);
  sub_1000448B0(*(v0 + 208), *(v0 + 216));
  sub_1000448B0(v3, v4);
  v6 = sub_100054004();
  v7(v6);

  v8 = *(v0 + 200);
  if (((*(v0 + 192) - 1) & *(v0 + 192)) == 0)
  {
    while (!__OFADD__(v8, 1))
    {
      sub_1000CAC70();
      if (v9 == v10)
      {

        sub_1000CA840();
        sub_1000AF72C();

        __asm { BRAA            X1, X16 }
      }

      sub_1000CAC84();
    }

    __break(1u);
    goto LABEL_28;
  }

  while (2)
  {
    sub_1000CA850(*(v0 + 144));
    switch(v11)
    {
      case 1:
        if (__OFSUB__(v4, v3))
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v12 = v4 - v3;
LABEL_11:
        v15 = sub_100081220();
        sub_100046D38(v15, v16);
LABEL_12:
        if (v12 != 16)
        {
LABEL_13:
          v4 = *(v0 + 160);
          v17 = sub_100081220();
          sub_1000448B0(v17, v18);
          sub_1000CAD20();
          continue;
        }

        if (v2 == 2)
        {
          v33 = *(v3 + 16);
          v34 = sub_100081220();
          v36 = sub_100046D38(v34, v35);
          sub_1000CAB70(v36, v37, v38, v39, v40, v41, v42, v43, v73, v74, v76, v77, v78, v79, v80, v81, v83);
          if (!__DataStorage._bytes.getter())
          {
LABEL_28:
            v45 = 0;
LABEL_29:
            __DataStorage._length.getter();
            if (!v45)
            {
              __break(1u);
              goto LABEL_31;
            }

            goto LABEL_33;
          }

          v44 = sub_1000CAD08();
          if (!__OFSUB__(v33, v44))
          {
            v45 = &v2[v33 - v44];
            goto LABEL_29;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v2 != 1)
        {
          v75 = *(v0 + 152);
          v46 = sub_100081220();
          v48 = sub_100046D38(v46, v47);
          sub_1000CAB70(v48, v49, v50, v51, v52, v53, v54, v55, v73, v75, v3 >> 24, v3 >> 16, v3 >> 8, HIBYTE(v3), HIWORD(v3), v3 >> 40, v83);
          sub_1000CA988();
          goto LABEL_34;
        }

        if (v3 > v3 >> 32)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v21 = sub_100081220();
        v23 = sub_100046D38(v21, v22);
        sub_1000CAB70(v23, v24, v25, v26, v27, v28, v29, v30, v73, v74, v76, v77, v78, v79, v80, v81, v83);
        if (__DataStorage._bytes.getter())
        {
          v31 = sub_1000CAD08();
          if (!__OFSUB__(v3, v31))
          {
            v32 = &v2[v3 - v31];
            goto LABEL_32;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          JUMPOUT(0x1000C70D4);
        }

LABEL_31:
        v32 = 0;
LABEL_32:
        __DataStorage._length.getter();
        if (!v32)
        {
          goto LABEL_42;
        }

LABEL_33:
        sub_1000CAA10();
LABEL_34:
        UUID.init(uuid:)();
        v82 = *(v0 + 184);
        v56 = sub_100081220();
        sub_1000448B0(v56, v57);
        v58 = sub_1000CABA4();
        v59(v58);
        v60 = sub_100081220();
        sub_100046D38(v60, v61);
        v62 = sub_1000CAAD8();
        sub_100046D38(v62, v63);
        v64 = sub_100081220();
        sub_1000448B0(v64, v65);
        sub_1000CAAD8();
        *(v0 + 240) = Data._bridgeToObjectiveC()();
        v66 = sub_1000CAAD8();
        sub_1000448B0(v66, v67);
        UUID.uuidString.getter();
        *(v0 + 248) = String._bridgeToObjectiveC()();

        *(v0 + 16) = v0;
        sub_1000CA9DC();
        v68 = sub_1000443DC(&qword_1006CC4B0);
        sub_1000CA968(v68);
        *(v0 + 88) = 1107296256;
        v69 = sub_1000CA94C(qword_100695080, v73, v74, v76, v77, v78, v0 + 24, v0 + 96, v82);
        sub_1000CACD0(v69, "cacheData:forKey:andCategory:completion:");
        sub_1000AF72C();

        return _swift_continuation_await(v70);
      case 2:
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        v12 = v13 - v14;
        if (!__OFSUB__(v13, v14))
        {
          goto LABEL_11;
        }

        goto LABEL_38;
      case 3:
        goto LABEL_13;
      default:
        v12 = BYTE6(v5);
        goto LABEL_12;
    }
  }
}

uint64_t sub_1000C70E4(uint64_t a1)
{
  v11 = v1[29];
  v12 = v1[31];
  v3 = v1[27];
  v2 = v1[28];
  v4 = v1[26];
  v5 = v1[22];
  v6 = v1[23];
  v8 = v1[20];
  v7 = v1[21];
  v13 = v1[30];
  swift_willThrow();

  sub_1000448B0(v4, v3);
  sub_1000448B0(v2, v11);
  (*(v7 + 8))(v5, v8);

  sub_10006574C();

  return v9();
}

uint64_t sub_1000C71E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return sub_1000772C4(sub_1000C71FC);
}

uint64_t sub_1000C71FC()
{
  sub_1000CACF0();
  sub_10006ECA0();
  v0[22].super.isa = [objc_opt_self() sharedInstance];
  v0[23].super.isa = Data._bridgeToObjectiveC()().super.isa;
  v0[24].super.isa = String._bridgeToObjectiveC()();
  v0[2].super.isa = v0;
  v0[3].super.isa = sub_1000C7344;
  v1 = swift_continuation_init();
  v2 = sub_1000443DC(&qword_1006CC4B0);
  sub_1000CA9BC(v2);
  v0[11].super.isa = 1107296256;
  v0[12].super.isa = sub_1000BCF40;
  v0[13].super.isa = &unk_100695058;
  v0[14].super.isa = v1;
  v3 = sub_1000CAAA0();
  [v3 v4];
  sub_1000CACB8();

  return _swift_continuation_await(v5);
}

uint64_t sub_1000C7344()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  sub_1000658F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C7440()
{
  sub_1000657D4();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  sub_1000CA840();

  return v3();
}

uint64_t sub_1000C74A4()
{
  sub_100068324();
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  sub_10006574C();

  return v4();
}

uint64_t sub_1000C7520(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return sub_1000772C4(sub_1000C7538);
}

uint64_t sub_1000C7538()
{
  sub_100068324();
  v1 = [objc_opt_self() sharedInstance];
  v0[22] = v1;
  v2 = String._bridgeToObjectiveC()();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000C767C;
  v3 = swift_continuation_init();
  v4 = sub_1000443DC(&qword_1006CC7D0);
  sub_1000CA9BC(v4);
  v0[11] = 1107296256;
  v0[12] = sub_1000C7860;
  v0[13] = &unk_100695030;
  v0[14] = v3;
  [v1 fetchDataForKey:v2 andCategory:1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000C767C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  sub_1000658F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C7778()
{
  sub_1000657EC();
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_1000C77F0()
{
  sub_1000657EC();
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  swift_willThrow();

  sub_10006574C();

  return v3();
}

uint64_t sub_1000C7860(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100044728((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1000C4464();
  }

  else
  {
    v8 = a2;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    return sub_1000C1B1C(v5, v9, v11);
  }
}

uint64_t sub_1000C7904()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100065570;

  return sub_1000C67DC();
}

uint64_t sub_1000C7998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100065570;

  return sub_1000C71E0(a1, a2, a3, a4);
}

uint64_t sub_1000C7A4C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C7AE8;

  return sub_1000C7520(a1, a2);
}

uint64_t sub_1000C7AE8()
{
  sub_1000657EC();
  v3 = v2;
  v5 = v4;
  sub_1000657F8();
  v6 = *v1;
  sub_1000655F4();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_1000C7BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_1000443DC(&qword_1006C9E20);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000C7C80, 0, 0);
}

uint64_t sub_1000C7C80()
{
  sub_1000657EC();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = type metadata accessor for TaskPriority();
  sub_1000485F8(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v1;

  v6 = sub_1000B09A8();
  v0[13] = v6;
  v7 = swift_task_alloc();
  v0[14] = v7;
  v8 = sub_1000443DC(qword_1006CC1A8);
  v9 = sub_1000443DC(&unk_1006CB550);
  *v7 = v0;
  v7[1] = sub_1000C7DC8;

  return Task.value.getter(v0 + 2, v6, v8, v9, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000C7DC8()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C7EDC()
{
  sub_1000657EC();
  sub_100046D90((v0 + 16), *(v0 + 72));

  v1 = sub_100065A4C();

  return v2(v1);
}

uint64_t sub_1000C7F5C()
{
  sub_1000657D4();

  sub_10006574C();

  return v0();
}

uint64_t sub_1000C7FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[176] = a5;
  v5[175] = a4;
  v5[174] = a1;
  return _swift_task_switch(sub_1000C7FE0, 0, 0);
}

uint64_t sub_1000C7FE0()
{
  sub_10006ECA0();
  type metadata accessor for PrecomputationSession();
  sub_1000CA51C();

  *(v0 + 1416) = PrecomputationSession.__allocating_init(workflowID:diskCommand:)();

  swift_asyncLet_begin();

  sub_1000471A4(&qword_1006CC7C8);
  swift_asyncLet_begin();
  v1 = sub_1000CAC50();

  return _swift_asyncLet_get_throwing(v1);
}

uint64_t sub_1000C80FC()
{
  *(v1 + 1424) = v0;
  if (v0)
  {
    return _swift_asyncLet_finish(v1 + 656);
  }

  else
  {
    return sub_1000772C4(sub_1000C8138);
  }
}

void sub_1000C8138()
{
  sub_1000657D4();
  sub_1000446C4(v0 + 1336, *(v0 + 1392));

  JUMPOUT(0x100597F70);
}

uint64_t sub_1000C81B8()
{
  sub_1000657D4();
  v1 = v0[174];
  v2 = v0[173];
  *(v1 + 40) = v0[172];
  *(v1 + 48) = v2;

  v3 = sub_1000CAC50();

  return _swift_asyncLet_finish(v3);
}

uint64_t sub_1000C825C()
{
  sub_1000657D4();

  sub_1000CA840();

  return v0();
}

uint64_t sub_1000C82F4()
{
  sub_1000657D4();

  sub_10006574C();

  return v0();
}

uint64_t sub_1000C8354(uint64_t a1)
{
  *(v1 + 40) = a1;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1000C83EC;

  return PrecomputationSession.getServerTimeSeed()();
}

uint64_t sub_1000C83EC()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = *v0;
  sub_1000655F4();
  *v6 = v5;
  *(v8 + 56) = v7;

  v9 = sub_100065864();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000C84D4(uint64_t a1)
{
  v2 = v1[7];
  v3 = v1[3];
  v4 = v1[5];
  if (!v2)
  {
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  *v4 = v3;
  v4[1] = v2;
  sub_1000CA840();
  return v5();
}

uint64_t sub_1000C8514(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000640AC;

  return PrecomputationSession.fetchEncapsulatedProfile()(a1);
}

_BYTE *sub_1000C85B4(void *a1, uint64_t a2, uint64_t a3)
{
  v97 = a3;
  v102 = a2;
  v4 = type metadata accessor for ProfileContext();
  sub_10004EAE0();
  v6 = v5;
  __chkstk_darwin(v7, v8, v9);
  sub_100047544();
  v90 = v10;
  sub_1000474F8();
  __chkstk_darwin(v11, v12, v13);
  v15 = &v86[-v14];
  v16 = type metadata accessor for ContextualProfile();
  sub_10004EAE0();
  v18 = v17;
  __chkstk_darwin(v19, v20, v21);
  sub_100047544();
  v96 = v22;
  sub_1000474F8();
  __chkstk_darwin(v23, v24, v25);
  v93 = &v86[-v26];
  sub_1000474F8();
  __chkstk_darwin(v27, v28, v29);
  v91 = &v86[-v30];
  sub_1000474F8();
  __chkstk_darwin(v31, v32, v33);
  v35 = &v86[-v34];
  v36 = a1[3];
  v37 = a1[4];
  v38 = sub_100044728(a1, v36);
  v106 = *(v6 + 104);
  v106(v15, enum case for ProfileContext.live(_:), v4);
  v104 = v38;
  v105 = v37;
  dispatch thunk of EncapsulatingProfile.profile(for:)();
  v95 = v6;
  v39 = *(v6 + 8);
  v100 = v4;
  v103 = v39;
  v39(v15, v4);
  v40 = v18 + 88;
  v101 = *(v18 + 88);
  LODWORD(v38) = (v101)(v35, v16);
  LODWORD(v4) = enum case for ContextualProfile.monoProfile(_:);
  v99 = v18;
  v42 = *(v18 + 8);
  v41 = v18 + 8;
  v43 = v35;
  v44 = v16;
  v98 = v42;
  (v42)(v43, v16);
  if (v38 == v4)
  {
    v45 = v106;
    v46 = v100;
    v47 = *(v102 + 48);
    v48 = *(v102 + 56);
    sub_1000443DC(&qword_1006CC7B8);
    v49 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v50 = swift_allocObject();
    v51 = v50;
    *(v50 + 16) = xmmword_1005CB870;
    if ((v48 & 1) != 0 || (v47 & v97) == 0)
    {
      v52 = &enum case for ProfileContext.dataframePrecomputation(_:);
    }

    else
    {
      v52 = &enum case for ProfileContext.payloadPrecomputation(_:);
    }

    v45(v50 + v49, *v52, v46);
    return sub_1000C16CC(v51);
  }

  else
  {
    v107 = &_swiftEmptySetSingleton;
    v87 = enum case for ProfileContext.payloadPrecomputation(_:);
    v53 = v100;
    v89 = v6 + 104;
    (v106)(v15);
    v54 = v91;
    v95 = v36;
    dispatch thunk of EncapsulatingProfile.profile(for:)();
    v55 = v53;
    v103(v15, v53);
    v94 = v40;
    v56 = (v101)(v54, v44);
    v92 = enum case for ContextualProfile.multiProfile(_:);
    v88 = v41;
    if (v56 == enum case for ContextualProfile.multiProfile(_:))
    {
      (*(v99 + 96))(v54, v44);
      v57 = *(*v54 + 16);

      v58 = v15;
      if (v57 && (*(v102 + 56) & 1) == 0 && (*(v102 + 48) & v97) != 0)
      {
        v106(v90, v87, v55);
        v59 = sub_1000CACAC();
        sub_10009F3D8(v59, v60);
        v103(v15, v55);
      }
    }

    else
    {
      (v98)(v54, v44);
      v58 = v15;
    }

    v106(v58, enum case for ProfileContext.dataframePrecomputation(_:), v55);
    v62 = v93;
    dispatch thunk of EncapsulatingProfile.profile(for:)();
    v63 = v103;
    v103(v58, v55);
    v64 = sub_1000CAAE4();
    v65 = v101;
    v66 = v101(v64);
    if (v66 == v92)
    {
      v67 = sub_1000CAAE4();
      v68(v67);
      v69 = *(*v62 + 16);

      if (v69 && ((*(v102 + 56) & 1) != 0 || (*(v102 + 48) & v97) == 0))
      {
        v70 = v90;
        sub_1000CAB2C();
        v71();
        sub_10009F3D8(v58, v70);
        v72 = sub_1000CACAC();
        v63(v72);
      }
    }

    else
    {
      v73 = sub_1000CAAE4();
      v98(v73);
    }

    sub_1000CAB2C();
    v74();
    v75 = v96;
    dispatch thunk of EncapsulatingProfile.profile(for:)();
    v76 = sub_1000CACAC();
    v63(v76);
    v77 = sub_1000CAAE4();
    v78 = v65(v77);
    if (v78 == v92)
    {
      v79 = sub_1000CAAE4();
      v80(v79);
      v81 = *(*v75 + 16);

      if (v81)
      {
        v82 = v90;
        sub_1000CAB2C();
        v83();
        sub_10009F3D8(v58, v82);
        v84 = sub_1000CACAC();
        v63(v84);
      }
    }

    else
    {
      v85 = sub_1000CAAE4();
      v98(v85);
    }

    return v107;
  }
}

uint64_t sub_1000C8C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = type metadata accessor for ODIBindingsDict();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for BindingsHelpers();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = type metadata accessor for AssessmentPayloadCacher(0);
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8D7C, 0, 0);
}

uint64_t sub_1000C8D7C()
{
  sub_1000657EC();
  v1 = *(v0 + 144);
  v2 = *(v0 + 48);
  *(v0 + 16) = *v2;
  *v1 = *v2;
  sub_1000CA3A8(v0 + 16, v0 + 32);
  v3 = qword_1006C9828;

  if (v3 != -1)
  {
    sub_1000BEF0C(&qword_1006C9828);
  }

  v4 = *(v0 + 144);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = static AssessmentPayloadStore.shared;
  *(v1 + 16) = static AssessmentPayloadStore.shared;
  *(v4 + 24) = v6;
  *(v4 + 32) = v5;
  v8 = v7;
  sub_1000BEEC8();
  Logger.init(subsystem:category:)();
  BindingsHelpers.init()();
  ODIBindingsDict.init(dictionaryLiteral:)();
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  *v9 = v0;
  v9[1] = sub_1000C8EBC;
  v10 = sub_100097E58(*(v0 + 104));

  return BindingsHelpers.getStaticBindings(bindings:excludeAppleID:)(v10);
}

uint64_t sub_1000C8EBC()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = sub_100065864();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000C8FA0()
{
  sub_100068324();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_1000443DC(&qword_1006CA6B0);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[20] = v5;
  *(v5 + 16) = xmmword_1005CB870;
  (*(v2 + 16))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1000C90A4;
  sub_100097E58(v0[8]);

  return sub_1000D5600();
}

uint64_t sub_1000C90A4()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;
  *(v6 + 176) = v0;

  swift_setDeallocating();
  sub_1000CEE0C();
  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C91C0()
{
  sub_100068324();
  v1 = sub_1000CAAF0();
  v2(v1);
  v3 = sub_100065A4C();
  v4(v3);
  sub_1000CA794();
  sub_1000CA348(v0, v5);

  sub_1000CA840();

  return v6();
}

uint64_t sub_1000C9268()
{
  sub_100068324();
  v1 = sub_1000CAAF0();
  v2(v1);
  v3 = sub_100065A4C();
  v4(v3);
  sub_1000CA794();
  sub_1000CA348(v0, v5);

  sub_10006574C();

  return v6();
}

uint64_t sub_1000C9314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for ODIBindingsDict();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000C93D8, 0, 0);
}

uint64_t sub_1000C93D8()
{
  sub_1000657D4();
  v2 = v0[2];
  v1 = v0[3];
  v0[8] = *v2;
  v0[9] = v2[1];
  sub_100044728(v1, v1[3]);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1000C9480;

  return sub_100070AC0();
}

uint64_t sub_1000C9480()
{
  sub_1000657D4();
  v2 = v1;
  sub_1000657F8();
  sub_10007CAE0();
  *v4 = v3;
  v5 = *v0;
  sub_1000655F4();
  *v6 = v5;
  *(v7 + 88) = v2;

  return _swift_task_switch(sub_1000C956C, v2, 0);
}

uint64_t sub_1000C956C()
{
  sub_1000657D4();
  sub_10008478C();
  sub_100084FA0();

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1000C961C;
  sub_100097E58(*(v0 + 32));

  return sub_1000D6670();
}

uint64_t sub_1000C961C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000C9714()
{
  sub_1000657D4();
  v0 = sub_1000CAC3C();
  v1(v0);

  sub_1000CA840();

  return v2();
}

uint64_t sub_1000C977C()
{
  sub_1000657D4();
  v0 = sub_1000CAC3C();
  v1(v0);

  sub_10006574C();

  return v2();
}

uint64_t sub_1000C9808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098024();
  sub_100097F98();
  v13 = *(v12 + 208);
  *(v12 + 216) = [objc_opt_self() sharedInstance];
  v14 = type metadata accessor for ProfileContent(0);
  *(v12 + 224) = v14;
  v15 = *(v13 + *(v14 + 56));
  *(v12 + 232) = v15;
  v16 = *(v15 + 32);
  *(v12 + 328) = v16;
  v17 = -1;
  v18 = -1 << v16;
  if (-(-1 << v16) < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(v15 + 64);

  if (v19)
  {
    v21 = 0;
LABEL_8:
    *(v12 + 240) = v19;
    *(v12 + 248) = v21;
    sub_1000CA92C();

    sub_1000443DC(&qword_1006CA6C0);
    *(v12 + 256) = sub_1000CAC0C();

    *(v12 + 264) = sub_1000CAC24();

    *(v12 + 16) = v12;
    *(v12 + 24) = sub_1000C9B20;
    swift_continuation_init();
    *(v12 + 200) = sub_1000443DC(&qword_1006CC4B0);
    sub_1000CA7AC();
    *(v12 + 152) = 1107296256;
    sub_1000CA7F4(qword_100694F98);
    sub_1000CAAB0();
    [v23 v24];
    goto LABEL_9;
  }

  v22 = 0;
  while (((63 - v18) >> 6) - 1 != v22)
  {
    v21 = v22 + 1;
    v19 = *(v20 + 8 * v22++ + 72);
    if (v19)
    {
      goto LABEL_8;
    }
  }

  sub_1000CAA50();
  if (v18)
  {
    *(v12 + 288) = v18;
    *(v12 + 296) = 0;
    sub_1000CA8D4();

    sub_1000443DC(&qword_1006CA6C0);
    v29.super.isa = sub_1000CAC0C().super.isa;
    sub_1000CABD8(v29.super.isa);
    v30 = sub_1000CAC24();
    sub_1000CAB54(v30);
    *(v12 + 80) = v12;
    *(v12 + 88) = sub_1000C9EE4;
    swift_continuation_init();
    *(v12 + 200) = sub_1000443DC(&qword_1006CC4B0);
    sub_1000CA7AC();
    *(v12 + 152) = 1107296256;
    sub_1000CA7F4(qword_100694FC0);
    v31 = sub_1000CAAA0();
    [v31 v32];
LABEL_9:
    sub_100097DB0();

    return _swift_continuation_await(v25);
  }

  sub_1000CAB3C();
  while (v28 != v27)
  {
    sub_1000CAC98();
  }

  sub_1000CA840();
  sub_100097DB0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_1000C9B20()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = *(v3 + 48);
  sub_1000658F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C9C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098024();
  sub_100097F98();
  v14 = *(v12 + 256);

  v16 = *(v12 + 248);
  v17 = (*(v12 + 240) - 1) & *(v12 + 240);
  if (v17)
  {
LABEL_6:
    *(v12 + 240) = v17;
    *(v12 + 248) = v16;
    sub_1000CA92C();

    sub_1000443DC(&qword_1006CA6C0);
    *(v12 + 256) = sub_1000CAC0C();

    *(v12 + 264) = sub_1000CAC24();

    *(v12 + 16) = v12;
    *(v12 + 24) = sub_1000C9B20;
    v19 = swift_continuation_init();
    *(v12 + 200) = sub_1000443DC(&qword_1006CC4B0);
    *(v12 + 176) = v19;
    sub_1000CA7AC();
    *(v12 + 152) = 1107296256;
    v20 = qword_100694F98;
LABEL_7:
    *(v12 + 160) = sub_1000BCF40;
    *(v12 + 168) = v20;
    v21 = sub_1000CAAA0();
    [v21 v22];
    sub_100097DB0();

    return _swift_continuation_await(v15);
  }

  else
  {
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return _swift_continuation_await(v15);
      }

      v15 = *(v12 + 232);
      if (v18 >= (((1 << *(v12 + 328)) + 63) >> 6))
      {
        break;
      }

      v17 = *(v15 + 8 * v18 + 64);
      ++v16;
      if (v17)
      {
        v16 = v18;
        goto LABEL_6;
      }
    }

    sub_1000CAA50();
    if (v13)
    {
      *(v12 + 288) = v13;
      *(v12 + 296) = 0;
      sub_1000CA8D4();

      sub_1000443DC(&qword_1006CA6C0);
      v26.super.isa = sub_1000CAC0C().super.isa;
      sub_1000CABD8(v26.super.isa);
      v27 = sub_1000CAC24();
      sub_1000CAB54(v27);
      *(v12 + 80) = v12;
      *(v12 + 88) = sub_1000C9EE4;
      v28 = swift_continuation_init();
      *(v12 + 200) = sub_1000443DC(&qword_1006CC4B0);
      *(v12 + 176) = v28;
      sub_1000CA7AC();
      *(v12 + 152) = 1107296256;
      v20 = qword_100694FC0;
      goto LABEL_7;
    }

    sub_1000CAB3C();
    while (v25 != v24)
    {
      sub_1000CAC98();
    }

    sub_1000CA840();
    sub_100097DB0();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }
}

uint64_t sub_1000C9EE4()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 320) = *(v3 + 112);
  sub_1000658F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000C9FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098024();
  sub_100097F98();
  v13 = *(v12 + 304);

  v15 = *(v12 + 296);
  v16 = (*(v12 + 288) - 1) & *(v12 + 288);
  if (v16)
  {
LABEL_6:
    *(v12 + 288) = v16;
    *(v12 + 296) = v15;
    sub_1000CA8D4();

    sub_1000443DC(&qword_1006CA6C0);
    v18.super.isa = sub_1000CAC0C().super.isa;
    sub_1000CABD8(v18.super.isa);
    v19 = sub_1000CAC24();
    sub_1000CAB54(v19);
    *(v12 + 80) = v12;
    *(v12 + 88) = sub_1000C9EE4;
    swift_continuation_init();
    *(v12 + 200) = sub_1000443DC(&qword_1006CC4B0);
    *(v12 + 144) = _NSConcreteStackBlock;
    *(v12 + 152) = 1107296256;
    sub_1000CA7F4(qword_100694FC0);
    v20 = sub_1000CAAA0();
    [v20 v21];
    sub_100097DB0();

    return _swift_continuation_await(v14);
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return _swift_continuation_await(v14);
      }

      if (v17 >= (((1 << *(v12 + 329)) + 63) >> 6))
      {
        break;
      }

      v16 = *(*(v12 + 280) + 8 * v17 + 64);
      ++v15;
      if (v16)
      {
        v15 = v17;
        goto LABEL_6;
      }
    }

    sub_1000CA840();
    sub_100097DB0();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }
}

uint64_t sub_1000CA1A4()
{
  sub_100068324();
  swift_willThrow();
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[27];

  sub_10006574C();

  return v4();
}

uint64_t sub_1000CA22C()
{
  sub_100068324();
  swift_willThrow();
  v1 = v0[39];
  v2 = v0[38];
  v3 = v0[27];

  sub_10006574C();

  return v4();
}

unsigned __int8 *sub_1000CA2B4(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  v5 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v5 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    __DataStorage._length.getter();
    return sub_1000C677C(v5);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000CA348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000CA430()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000CA470()
{
  sub_100068324();
  v2 = *(v0 + 40);
  swift_task_alloc();
  sub_10007743C();
  *(v1 + 16) = v3;
  *v3 = v4;
  sub_1000CAB1C(v3);
  sub_1000CAAB0();

  return sub_1000C7FB8(v5, v6, v7, v8, v2);
}

unint64_t sub_1000CA51C()
{
  result = qword_1006CC7C0;
  if (!qword_1006CC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC7C0);
  }

  return result;
}

uint64_t sub_1000CA570()
{
  sub_1000657D4();
  swift_task_alloc();
  sub_10007743C();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_1000CAB1C(v1);

  return sub_1000C8354(v3);
}

uint64_t sub_1000CA5FC()
{
  sub_1000657D4();
  swift_task_alloc();
  sub_10007743C();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_1000CAB1C(v1);

  return sub_1000C8514(v3);
}

uint64_t sub_1000CA698(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CA4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CA730()
{
}

void sub_1000CA7F4(uint64_t a1@<X8>)
{
  v1[20] = sub_1000BCF40;
  v1[21] = a1;
  v1[22] = v2;
}

void sub_1000CA850(uint64_t a1@<X8>)
{
  v1[24] = v3;
  v1[25] = v2;
  v4 = (v2 << 10) | (16 * __clz(__rbit64(v3)));
  v5 = (*(a1 + 48) + v4);
  v1[26] = *v5;
  v1[27] = v5[1];
  v6 = (*(a1 + 56) + v4);
  v1[28] = *v6;
  v1[29] = v6[1];
}

uint64_t sub_1000CA8B0()
{

  return sub_1000446C4(v0 + 16, v0 + 56);
}

double sub_1000CA8D4()
{

  return result;
}

double sub_1000CA92C()
{

  return result;
}

uint64_t sub_1000CA94C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = a9;
  v10[12] = sub_1000BCF40;
  v10[13] = a1;
  v10[14] = v9;
  return result;
}

uint64_t sub_1000CA968(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_1000CA9BC(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_1000CA9DC()
{
  *(v0 + 24) = sub_1000C6C4C;

  return swift_continuation_init();
}

double sub_1000CAA50()
{
  *(v0 + 280) = v1;
  *(v0 + 329) = *(v1 + 32);

  return result;
}

uint64_t sub_1000CAABC()
{
}

uint64_t sub_1000CAB54(uint64_t a1)
{
  *(v1 + 312) = a1;
}

uint64_t sub_1000CAB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_100046D38(a17, v17);
}

void sub_1000CAB88()
{
}

uint64_t sub_1000CABD8(uint64_t a1)
{
  *(v1 + 304) = a1;
}

void sub_1000CABF4()
{

  sub_100069948();
}

NSArray sub_1000CAC0C()
{

  return Array._bridgeToObjectiveC()();
}

NSString sub_1000CAC24()
{

  return String._bridgeToObjectiveC()();
}

id sub_1000CACD0(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_1000CAD08()
{

  return __DataStorage._offset.getter();
}

uint64_t sub_1000CAD20()
{
  sub_1000485F8(v1, 1, 1, v0);

  return sub_1000CA698(v1);
}

uint64_t sub_1000CAD58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v4 - 8, v5, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TaskPriority();
  sub_1000485F8(v8, 1, 1, v9);
  sub_10006EBD0();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  sub_10006EBD0();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1005CF2F0;
  v11[5] = v10;
  sub_1000CEB04(0, 0, v8, &unk_1005CF300, v11);
}

uint64_t sub_1000CAE5C()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CC7D8);
  sub_100046E6C(v0, qword_1006CC7D8);
  return Logger.init(subsystem:category:)();
}

void *sub_1000CAEE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1000BE45C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {

      sub_1000443DC(&qword_1006CA6C0);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000BE45C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1000534C8(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_1000CAFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String._bridgeToObjectiveC()();

  if (a3)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() predicateWithFormat:v4 argumentArray:v5.super.isa];

  return v6;
}

uint64_t PJXBDBF1h0EU80dy.vWMDLV5jN1a2h2p2(_:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return sub_10007CAD0();
}

uint64_t sub_1000CB098()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1000BE47C(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    result = sub_1000CF378(v1);
    v7 = result;
    v8 = 0;
    v9 = v1 + 64;
    v46 = v5;
    v45 = v1 + 72;
    v47 = v2;
    v48 = v1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v1 + 36) != v5)
      {
        goto LABEL_27;
      }

      v50 = v8;
      v51 = v5;
      v49 = v6;
      v11 = *(v1 + 56);
      v12 = (*(v1 + 48) + 16 * v7);
      v13 = v1;
      v14 = v3;
      v15 = *v12;
      v16 = v12[1];
      v17 = -*(v11 + 8 * v7);
      v18 = objc_allocWithZone(NSDate);

      v19 = [v18 initWithTimeIntervalSinceNow:v17];
      sub_1000443DC(&qword_1006CC7F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1005CC370;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 32) = v15;
      *(v20 + 40) = v16;
      v3 = v14;
      result = sub_1000591B0(0, &qword_1006CA340, NSDate_ptr);
      *(v20 + 88) = result;
      *(v20 + 64) = v19;
      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        v34 = result;
        sub_1000BE47C((v21 > 1), v22 + 1, 1);
        result = v34;
        v3 = v14;
      }

      v3[2] = v22 + 1;
      v23 = &v3[3 * v22];
      v23[4] = 0xD000000000000023;
      v23[5] = 0x80000001005A5A20;
      v23[6] = v20;
      v24 = 1 << *(v13 + 32);
      if (v7 >= v24)
      {
        goto LABEL_28;
      }

      v1 = v13;
      v9 = v48;
      v25 = *(v48 + 8 * v10);
      if ((v25 & (1 << v7)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v1 + 36) != v51)
      {
        goto LABEL_30;
      }

      v26 = v25 & (-2 << (v7 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v10 << 6;
        v28 = (v45 + 8 * v10);
        v29 = v10 + 1;
        while (v29 < (v24 + 63) >> 6)
        {
          v31 = *v28++;
          v30 = v31;
          v27 += 64;
          ++v29;
          if (v31)
          {
            v32 = result;
            sub_100087624(v7, v51, v49 & 1);
            result = v32;
            v24 = __clz(__rbit64(v30)) + v27;
            goto LABEL_19;
          }
        }

        v33 = result;
        sub_100087624(v7, v51, v49 & 1);
        result = v33;
      }

LABEL_19:
      v6 = 0;
      v8 = v50 + 1;
      v7 = v24;
      v5 = v46;
      if (v50 + 1 == v47)
      {
        v35 = result;
        v36 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:-604800.0];
        v44[21] = v36;
        v37 = v3;
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1005CB870;
        *(v38 + 56) = v35;
        *(v38 + 32) = v36;
        sub_1000443DC(&qword_1006CA680);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1005CB870;
        strcpy((inited + 32), "createdAt < %@");
        *(inited + 47) = -18;
        *(inited + 48) = v38;
        v40 = v36;
        sub_1000CF0C4(inited);
        v41 = v37;
        v44[22] = v37;
        v42 = swift_task_alloc();
        v44[23] = v42;
        *v42 = v44;
        v42[1] = sub_1000CB588;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    sub_1000443DC(&qword_1006CA680);
    v41 = swift_initStackObject();
    v0[25] = v41;
    *(v41 + 16) = xmmword_1005CB870;
    strcpy((v41 + 32), "TRUEPREDICATE");
    *(v41 + 46) = -4864;
    *(v41 + 48) = _swiftEmptyArrayStorage;
    v43 = swift_task_alloc();
    v0[26] = v43;
    *v43 = v0;
    v43[1] = sub_1000CB6F0;
LABEL_22:

    return sub_1000CB8F8(v41);
  }

  return result;
}

uint64_t sub_1000CB588()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v3[16] = v1;
  v3[17] = v5;
  v3[18] = v0;
  v6 = *v1;
  sub_1000655F4();
  *v7 = v6;
  v3[24] = v0;

  if (v0)
  {
    v8 = sub_1000CB898;
  }

  else
  {

    v8 = sub_1000CB694;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000CB694()
{
  sub_1000657D4();

  sub_1000CFAA4();

  return v1();
}

uint64_t sub_1000CB6F0()
{
  sub_1000657EC();
  v3 = v2;
  sub_1000657F8();
  v5 = v4;
  sub_10006564C();
  *v6 = v5;
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  *(v5 + 216) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000CB834, 0, 0);
  }

  else
  {
    swift_setDeallocating();
    sub_1000CEEB8();
    v9 = *(v7 + 8);

    return v9(v3);
  }
}

uint64_t sub_1000CB834()
{
  sub_1000657D4();
  swift_setDeallocating();
  sub_1000CEEB8();
  sub_10006574C();

  return v0();
}

uint64_t sub_1000CB898()
{
  sub_1000657D4();
  v1 = *(v0 + 168);

  sub_10006574C();

  return v2();
}

uint64_t sub_1000CB8F8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_1000CB918, 0, 0);
}

uint64_t sub_1000CB918()
{
  sub_1000657EC();
  v1 = [*(v0 + 32) spi_managedObjectContext];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 24);
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    NSManagedObjectContext.performAndWait<A>(_:)();
  }

  else
  {
    if (qword_1006C9840 != -1)
    {
      sub_1000CFA0C(&qword_1006C9840);
    }

    v5 = type metadata accessor for Logger();
    sub_100046E6C(v5, qword_1006CC7D8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (sub_10009D6D8(v7))
    {
      v8 = sub_1000541D8();
      sub_100077908(v8);
      sub_10007FD74(&_mh_execute_header, v9, v10, "moc unavailable for PGA");
      sub_100053E64();
    }
  }

  sub_1000CFAA4();

  return v11();
}

uint64_t sub_1000CBAB0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000CBB94;

  return PJXBDBF1h0EU80dy.vWMDLV5jN1a2h2p2(_:)(v5);
}

uint64_t sub_1000CBB94()
{
  sub_10006ECA0();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_1000655F4();
  *v7 = v6;
  v8 = *(v5 + 16);
  v9 = *v1;
  *v7 = *v1;

  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = sub_1000CFA4C();
    v12(v11, 0, v10);
  }

  else
  {
    v13 = sub_1000CFA4C();
    v14(v13, v4, 0);
  }

  _Block_release(*(v6 + 24));
  v15 = *(v9 + 8);

  return v15();
}

uint64_t PJXBDBF1h0EU80dy.naB577x5bWPDZyct(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return sub_10007CAD0();
}

uint64_t sub_1000CBD44()
{
  sub_10006ECA0();
  v1 = [*(v0 + 40) spi_managedObjectContext];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = [objc_opt_self() fetchRequest];
    [v5 setResultType:0];
    sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
    sub_1000443DC(&qword_1006CC4E0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1005CB870;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 32) = v4;
    *(v6 + 40) = v3;

    v7 = sub_1000CFA5C();
    v10 = sub_1000CAFE8(v7, v8, v9);
    [v5 setPredicate:v10];

    v11 = swift_task_alloc();
    *(v11 + 16) = v2;
    *(v11 + 24) = v5;
    sub_1000443DC(&qword_1006CC7F8);
    NSManagedObjectContext.performAndWait<A>(_:)();
  }

  else
  {
    if (qword_1006C9840 != -1)
    {
      sub_1000CFA0C(&qword_1006C9840);
    }

    v12 = type metadata accessor for Logger();
    sub_100046E6C(v12, qword_1006CC7D8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (sub_10009D6D8(v14))
    {
      v15 = sub_1000541D8();
      sub_100077908(v15);
      sub_10007FD74(&_mh_execute_header, v16, v17, "moc unavailable for PGA");
      sub_100053E64();
    }
  }

  sub_1000CFAA4();

  return v18();
}

uint64_t sub_1000CBFA0@<X0>(void *a2@<X8>)
{
  sub_1000591B0(0, &qword_1006CC838, off_10068D798);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (!v2)
  {
    v5 = result;
    v6 = sub_1000591F0(result);
    if (v6)
    {
      v7 = v6;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v7 < 0)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      v8 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v9 = *(v5 + 8 * v8 + 32);
        }

        v10 = v9;
        ++v8;
        [objc_allocWithZone(AssessmentPayloadRecord) initWithObject:v9];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v7 != v8);
    }

    v11 = 0;
    v12 = _swiftEmptyArrayStorage[2];
    while (1)
    {
      if (v12 == v11)
      {

        *a2 = _swiftEmptyArrayStorage;
        return result;
      }

      if (v11 >= _swiftEmptyArrayStorage[2])
      {
        break;
      }

      v13 = _swiftEmptyArrayStorage[v11++ + 4];
      if (v13)
      {
        v14 = v13;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1000CC1D0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000CC2A4;

  return PJXBDBF1h0EU80dy.naB577x5bWPDZyct(_:)(v5, v7);
}

uint64_t sub_1000CC2A4()
{
  sub_100068324();
  v2 = v0;
  sub_1000657F8();
  v4 = v3;
  sub_10006564C();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_1000655F4();
  *v9 = v8;

  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    isa = 0;
    v12 = v10;
  }

  else
  {
    sub_1000591B0(0, &qword_1006CC4F0, off_10068D778);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = 0;
    v12 = isa;
  }

  v13 = *(v4 + 24);
  (v13)[2](v13, isa, v10);

  _Block_release(v13);
  sub_10006574C();

  return v14();
}

uint64_t PJXBDBF1h0EU80dy.eWV8dPJG0p0nc2lk(_:)(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return sub_10007CAD0();
}

uint64_t sub_1000CC460()
{
  sub_100068324();
  v1 = [*(v0 + 104) spi_managedObjectContext];
  if (v1)
  {
    v2 = v1;
    v3 = (v0 + 16);
    sub_10005566C(0x49656C69666F7270, 0xE900000000000044, *(v0 + 96), (v0 + 56));
    if (*(v0 + 80))
    {
      sub_1000443DC(&qword_1006CC808);
      if ((swift_dynamicCast() & 1) == 0)
      {
        *(v0 + 48) = 0;
        *v3 = 0u;
        *(v0 + 32) = 0u;
      }
    }

    else
    {
      sub_10004D2E8(v0 + 56, &qword_1006CA130);
      *v3 = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
    }

    sub_10004D344(v0 + 16, v0 + 56, &qword_1006CC800);
    if (*(v0 + 80))
    {
      sub_100044728((v0 + 56), *(v0 + 80));
      dispatch thunk of ProfileIdentifiers.getProfileId()();
      v11 = v10;
      sub_100044850((v0 + 56));
      if (v11)
      {

        LOBYTE(v11) = 1;
      }
    }

    else
    {
      sub_10004D2E8(v0 + 56, &qword_1006CC800);
      LOBYTE(v11) = 0;
    }

    v12 = *(v0 + 96);
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = v2;
    *(v13 + 32) = v11;
    *(v13 + 40) = v3;
    NSManagedObjectContext.performAndWait<A>(_:)();

    sub_10004D2E8(v0 + 16, &qword_1006CC800);
  }

  else
  {
    if (qword_1006C9840 != -1)
    {
      sub_1000CFA0C(&qword_1006C9840);
    }

    v4 = type metadata accessor for Logger();
    sub_100046E6C(v4, qword_1006CC7D8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_10009D6D8(v6))
    {
      v7 = sub_1000541D8();
      sub_100077908(v7);
      sub_10007FD74(&_mh_execute_header, v8, v9, "moc unavailable for PGA");
      sub_100053E64();
    }
  }

  sub_10006574C();

  return v14();
}

uint64_t sub_1000CC6CC(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v99 = a4;
  v98 = a3;
  v6 = sub_1000443DC(&qword_1006CC820);
  v9 = __chkstk_darwin(v6 - 8, v7, v8);
  v97 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v9, v11, v12);
  v96 = &v93 - v14;
  v17 = __chkstk_darwin(v13, v15, v16);
  v95 = &v93 - v18;
  v21 = __chkstk_darwin(v17, v19, v20);
  v94 = &v93 - v22;
  v25 = __chkstk_darwin(v21, v23, v24);
  v93 = &v93 - v26;
  __chkstk_darwin(v25, v27, v28);
  v30 = &v93 - v29;
  v31 = sub_1000443DC(&qword_1006CA2B0);
  __chkstk_darwin(v31 - 8, v32, v33);
  v35 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000443DC(&qword_1006CC828);
  v39 = __chkstk_darwin(v36 - 8, v37, v38);
  v41 = &v93 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v42, v43);
  v45 = &v93 - v44;
  sub_10005566C(0x73676E69646E6962, 0xE800000000000000, a1, &v103);
  v101 = v45;
  if (v104)
  {
    v46 = type metadata accessor for ODIBindingsDict();
    v47 = swift_dynamicCast() ^ 1;
    v48 = v45;
    v49 = v46;
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
    v49 = type metadata accessor for ODIBindingsDict();
    v48 = v45;
    v47 = 1;
  }

  sub_1000485F8(v48, v47, 1, v49);
  v50 = [objc_opt_self() insertNewObjectInManagedObjectContext:a2];
  sub_10005566C(0x776F6C666B726F77, 0xEA00000000004449, a1, &v103);
  v100 = a2;
  if (v104)
  {
    if (swift_dynamicCast())
    {
      v51 = String._bridgeToObjectiveC()();

      goto LABEL_9;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
  }

  v51 = 0;
LABEL_9:
  [v50 setWorkflowID:v51];

  sub_10005566C(0x4164657461657263, 0xE900000000000074, a1, &v103);
  if (v104)
  {
    v52 = type metadata accessor for Date();
    v53 = swift_dynamicCast();
    sub_1000485F8(v35, v53 ^ 1u, 1, v52);
    isa = 0;
    if (sub_100046EA4(v35, 1, v52) != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(*(v52 - 8) + 8))(v35, v52);
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
    v55 = type metadata accessor for Date();
    sub_1000485F8(v35, 1, 1, v55);
    isa = 0;
  }

  [v50 setCreatedAt:isa];

  sub_10005566C(0x656D737365737361, 0xEA0000000000746ELL, a1, &v103);
  if (v104)
  {
    if (swift_dynamicCast())
    {
      v56 = String._bridgeToObjectiveC()();

      goto LABEL_18;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
  }

  v56 = 0;
LABEL_18:
  [v50 setAssessment:v56];

  sub_10005566C(0x676E696E69617274, 0xEC00000061746144, a1, &v103);
  if (v104)
  {
    if (swift_dynamicCast())
    {
      v57 = String._bridgeToObjectiveC()();

      goto LABEL_23;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
  }

  v57 = 0;
LABEL_23:
  [v50 setTrainingData:v57];

  sub_10005566C(0x656D737365737361, 0xEE0044495547746ELL, a1, &v103);
  if (v104)
  {
    if (swift_dynamicCast())
    {
      v58 = String._bridgeToObjectiveC()();

      goto LABEL_28;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
  }

  v58 = 0;
LABEL_28:
  [v50 setAssessmentGUID:v58];

  sub_10005566C(0xD000000000000013, 0x80000001005A3330, a1, &v103);
  if (v104)
  {
    if (swift_dynamicCast())
    {
      v59 = String._bridgeToObjectiveC()();

      goto LABEL_33;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
  }

  v59 = 0;
LABEL_33:
  [v50 setAssessmentGUIDSeeds:v59];

  sub_10005566C(0x676E696E69617274, 0xEC00000044495547, a1, &v103);
  if (v104)
  {
    if (swift_dynamicCast())
    {
      v60 = String._bridgeToObjectiveC()();

      goto LABEL_38;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
  }

  v60 = 0;
LABEL_38:
  [v50 setTrainingGUID:v60];

  sub_10005566C(0xD000000000000011, 0x80000001005A3360, a1, &v103);
  if (v104)
  {
    if (swift_dynamicCast())
    {
      v61 = String._bridgeToObjectiveC()();

      goto LABEL_43;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
  }

  v61 = 0;
LABEL_43:
  [v50 setTrainingGUIDSeeds:v61];

  sub_10005566C(0xD000000000000010, 0x80000001005A3380, a1, &v103);
  if (v104)
  {
    if (swift_dynamicCast())
    {
      v62 = String._bridgeToObjectiveC()();

      goto LABEL_48;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
  }

  v62 = 0;
LABEL_48:
  [v50 setTrainingSignalID:v62];

  sub_10005566C(0x6E49747365676964, 0xEB00000000786564, a1, &v103);
  if (v104)
  {
    sub_1000591B0(0, &qword_1006CA338, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v63 = v102;
    }

    else
    {
      v63 = 0;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
    v63 = 0;
  }

  [v50 setDigestIndex:v63];

  sub_10004D344(v101, v41, &qword_1006CC828);
  v64 = type metadata accessor for ODIBindingsDict();
  if (sub_100046EA4(v41, 1, v64) == 1)
  {
    sub_10004D2E8(v41, &qword_1006CC828);
    sub_1000443DC(&qword_1006CAD30);
    v65 = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    v65 = ODIBindingsDict.contents.getter();
    (*(*(v64 - 8) + 8))(v41, v64);
  }

  v66 = sub_1000A34A0(v65);

  sub_1000CF22C(v66, v50);
  sub_10005566C(0xD000000000000011, 0x80000001005A33B0, a1, &v103);
  if (v104)
  {
    sub_1000443DC(&qword_1006CC830);
    if (swift_dynamicCast())
    {
      v67.super.isa = Array._bridgeToObjectiveC()().super.isa;

      goto LABEL_61;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
  }

  v67.super.isa = 0;
LABEL_61:
  [v50 setBindingsToCompare:v67.super.isa];

  sub_10005566C(0x5468736572666572, 0xEA00000000004C54, a1, &v103);
  if (v104)
  {
    sub_1000591B0(0, &qword_1006CA338, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v68 = v102;
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
    v68 = 0;
  }

  [v50 setRefreshTTL:v68];

  sub_10005566C(0x6574707972636E65, 0xED00004449535464, a1, &v103);
  if (v104)
  {
    if (swift_dynamicCast())
    {
      v69 = String._bridgeToObjectiveC()();

      goto LABEL_71;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
  }

  v69 = 0;
LABEL_71:
  [v50 setEncryptedTSID:v69];

  sub_10005566C(0x6574707972636E65, 0xEE00444955474164, a1, &v103);
  if (v104)
  {
    if (swift_dynamicCast())
    {
      v70 = String._bridgeToObjectiveC()();

      goto LABEL_76;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
  }

  v70 = 0;
LABEL_76:
  [v50 setEncryptedAGUID:v70];

  sub_10005566C(0x6553646C756F6873, 0xED000044544F646ELL, a1, &v103);
  if (v104)
  {
    if (swift_dynamicCast())
    {
      v71 = v102;
      goto LABEL_81;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
  }

  v71 = 0;
LABEL_81:
  [v50 setShouldSendOTD:v71];
  sub_10005566C(0xD000000000000012, 0x80000001005A3400, a1, &v103);
  if (v104)
  {
    v72 = swift_dynamicCast();
    v73 = v100;
    if (v72)
    {
      v74 = String._bridgeToObjectiveC()();

      goto LABEL_86;
    }
  }

  else
  {
    sub_10004D2E8(&v103, &qword_1006CA130);
    v73 = v100;
  }

  v74 = 0;
LABEL_86:
  [v50 setOtdDestinationHost:v74];

  if (v98)
  {
    sub_10004D344(v99, &v103, &qword_1006CC800);
    v75 = v104;
    if (v104)
    {
      sub_100044728(&v103, v104);
      dispatch thunk of ProfileIdentifiers.getProfileId()();
      v77 = v76;
      sub_100044850(&v103);
      if (v77)
      {
        v75 = String._bridgeToObjectiveC()();
      }

      else
      {
        v75 = 0;
      }
    }

    else
    {
      sub_10004D2E8(&v103, &qword_1006CC800);
    }

    [v50 setProfileID:v75];
  }

  else
  {
    sub_10004D344(v99, &v103, &qword_1006CC800);
    if (v104)
    {
      sub_100044728(&v103, v104);
      dispatch thunk of ProfileIdentifiers.getProfileSetObjectInfo()();
      sub_100044850(&v103);
    }

    else
    {
      sub_10004D2E8(&v103, &qword_1006CC800);
      v78 = type metadata accessor for ProfileSetObjectInfo();
      sub_1000485F8(v30, 1, 1, v78);
    }

    v79 = v97;
    v80 = v93;
    sub_10004D344(v30, v93, &qword_1006CC820);
    v81 = type metadata accessor for ProfileSetObjectInfo();
    if (sub_100046EA4(v80, 1, v81) == 1)
    {
      sub_10004D2E8(v80, &qword_1006CC820);
      v82 = 0;
    }

    else
    {
      ProfileSetObjectInfo.orderedProfileBagId.getter();
      (*(*(v81 - 8) + 8))(v80, v81);
      v82 = String._bridgeToObjectiveC()();
    }

    v83 = v94;
    [v50 setOrderedProfileBagId:v82];

    sub_10004D344(v30, v83, &qword_1006CC820);
    if (sub_100046EA4(v83, 1, v81) == 1)
    {
      sub_10004D2E8(v83, &qword_1006CC820);
      v84 = 0;
    }

    else
    {
      ProfileSetObjectInfo.assessmentConfigId.getter();
      (*(*(v81 - 8) + 8))(v83, v81);
      v84 = String._bridgeToObjectiveC()();
    }

    v85 = v95;
    [v50 setAssessmentConfigId:v84];

    sub_10004D344(v30, v85, &qword_1006CC820);
    if (sub_100046EA4(v85, 1, v81) == 1)
    {
      sub_10004D2E8(v85, &qword_1006CC820);
      v86 = 0;
    }

    else
    {
      ProfileSetObjectInfo.profileBagSetId.getter();
      (*(*(v81 - 8) + 8))(v85, v81);
      v86 = String._bridgeToObjectiveC()();
    }

    v87 = v96;
    [v50 setProfileBagSetId:v86];

    sub_10004D344(v30, v87, &qword_1006CC820);
    if (sub_100046EA4(v87, 1, v81) == 1)
    {
      sub_10004D2E8(v87, &qword_1006CC820);
      v88 = 0;
    }

    else
    {
      ProfileSetObjectInfo.profileSetObjectId.getter();
      (*(*(v81 - 8) + 8))(v87, v81);
      v88 = String._bridgeToObjectiveC()();
    }

    [v50 setProfileSetId:v88];

    sub_10004D344(v30, v79, &qword_1006CC820);
    if (sub_100046EA4(v79, 1, v81) == 1)
    {
      sub_10004D2E8(v79, &qword_1006CC820);
      v89 = 0;
    }

    else
    {
      ProfileSetObjectInfo.orderedProfileBagName.getter();
      (*(*(v81 - 8) + 8))(v79, v81);
      v89 = String._bridgeToObjectiveC()();
    }

    [v50 setProfileSetBagName:v89];

    sub_10004D2E8(v30, &qword_1006CC820);
  }

  if (![v73 hasChanges])
  {
    goto LABEL_115;
  }

  [v73 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  *&v103 = 0;
  if ([v73 save:&v103])
  {
    v90 = v103;
LABEL_115:

    return sub_10004D2E8(v101, &qword_1006CC828);
  }

  v92 = v103;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return sub_10004D2E8(v101, &qword_1006CC828);
}

uint64_t sub_1000CD9F8(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_1000CAD58(a6, v10);
}

uint64_t sub_1000CDA7C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000CDB64;

  return PJXBDBF1h0EU80dy.eWV8dPJG0p0nc2lk(_:)(v5);
}

uint64_t sub_1000CDB64()
{
  sub_100068324();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = sub_1000CFA4C();
    v10(v9, v8);
  }

  else
  {
    v11 = sub_1000CFA4C();
    v12(v11, 0);
  }

  _Block_release(*(v4 + 24));
  v13 = *(v7 + 8);

  return v13();
}

uint64_t PJXBDBF1h0EU80dy.lJIqliFcwusu4FxD(_:workflowID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_10007CAD0();
}

uint64_t sub_1000CDD00()
{
  sub_10006ECA0();
  v1 = [*(v0 + 40) spi_managedObjectContext];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = [objc_opt_self() fetchRequest];
    [v6 setResultType:0];
    sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
    sub_1000443DC(&qword_1006CC4E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1005CB870;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = v4;
    *(v7 + 40) = v3;

    v8 = sub_1000CFA5C();
    v11 = sub_1000CAFE8(v8, v9, v10);
    [v6 setPredicate:v11];

    v12 = swift_task_alloc();
    v12[2] = v2;
    v12[3] = v6;
    v12[4] = v5;
    v12[5] = v4;
    v12[6] = v3;
    NSManagedObjectContext.performAndWait<A>(_:)();
  }

  else
  {
    if (qword_1006C9840 != -1)
    {
      sub_1000CFA0C(&qword_1006C9840);
    }

    v13 = type metadata accessor for Logger();
    sub_100046E6C(v13, qword_1006CC7D8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (sub_10009D6D8(v15))
    {
      v16 = sub_1000541D8();
      sub_100077908(v16);
      sub_10007FD74(&_mh_execute_header, v17, v18, "moc is unavailable");
      sub_100053E64();
    }
  }

  sub_10006574C();

  return v19();
}

id sub_1000CDF20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000591B0(0, &qword_1006CC818, off_10068D790);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (!v5)
  {
    v17 = result;
    v18 = sub_1000591F0(result);
    v25 = a3;
    if (v18)
    {
      sub_100059210();
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(v17 + 4);
      }

      v20 = v19;
    }

    else
    {

      v20 = [objc_opt_self() insertNewObjectInManagedObjectContext:a1];
      sub_1000CF2AC(a4, a5, v20);
    }

    v21 = sub_1000CAEE0(v25);
    sub_1000CF304(v21, v20);
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v15, v10);
    [v20 setUpdatedAt:isa];

    result = [a1 hasChanges];
    if (result)
    {
      [a1 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
      v26 = 0;
      if ([a1 save:&v26])
      {
        return v26;
      }

      else
      {
        v23 = v26;
        _convertNSErrorToError(_:)();

        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_1000CE250(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_1000443DC(&qword_1006CA6C0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1000CE354;

  return PJXBDBF1h0EU80dy.lJIqliFcwusu4FxD(_:workflowID:)(v6, v7, v9);
}

uint64_t sub_1000CE354()
{
  sub_10006ECA0();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = sub_1000CFA4C();
    v10(v9, v8);
  }

  else
  {
    v11 = sub_1000CFA4C();
    v12(v11, 0);
  }

  _Block_release(*(v4 + 24));
  v13 = *(v7 + 8);

  return v13();
}

void sub_1000CE4FC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = [objc_opt_self() fetchRequest];
  v8 = v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v32 = a2;
    v33 = v7;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = 0;
    v36 = a1 + 32;
    sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
    v35 = v9;
    do
    {
      v11 = (v36 + 24 * v10);
      v12 = *v11;
      v13 = v11[2];
      v14 = *(v13 + 16);
      if (v14)
      {
        v37 = *v11;
        v38 = v11[1];
        swift_bridgeObjectRetain_n();

        sub_1000BE45C(0, v14, 0);
        v15 = v13 + 32;
        do
        {
          sub_10005346C(v15, v39);
          sub_1000443DC(&qword_1006CC840);
          swift_dynamicCast();
          v17 = _swiftEmptyArrayStorage[2];
          v16 = _swiftEmptyArrayStorage[3];
          if (v17 >= v16 >> 1)
          {
            sub_1000BE45C((v16 > 1), v17 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v17 + 1;
          sub_1000534C8(v40, &_swiftEmptyArrayStorage[4 * v17 + 4]);
          v15 += 32;
          --v14;
        }

        while (v14);
        v9 = v35;
        v12 = v37;
        v18 = v38;
      }

      else
      {
        v18 = v11[1];
        swift_bridgeObjectRetain_n();
      }

      ++v10;
      sub_1000CAFE8(v12, v18, _swiftEmptyArrayStorage);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v10 != v9);
    a2 = v32;
    v8 = v33;
    v4 = v3;
  }

  sub_1000591B0(0, &qword_1006CA660, NSCompoundPredicate_ptr);
  v19 = sub_100061DB0(_swiftEmptyArrayStorage);
  [v8 setPredicate:v19];

  sub_1000591B0(0, &qword_1006CC838, off_10068D798);
  v20 = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {
    goto LABEL_13;
  }

  v21 = v20;
  v22 = a2;
  v23 = sub_1000591F0(v20);
  for (i = 0; v23 != i; ++i)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v25 = *(v21 + 8 * i + 32);
    }

    v26 = v25;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
    }

    [v22 deleteObject:v25];
  }

  if ([v22 hasChanges])
  {
    [v22 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    *&v40[0] = 0;
    v27 = [v22 save:v40];
    v28 = *&v40[0];
    if (!v27)
    {
      v31 = *&v40[0];

      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_13:

      return;
    }

    v29 = sub_1000591F0(v21);
    v30 = v28;

    *a3 = v29;
  }

  else
  {

    *a3 = 0;
  }
}

uint64_t sub_1000CE934(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100065570;

  return v6();
}

uint64_t sub_1000CEA1C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000640AC;

  return v7();
}

uint64_t sub_1000CEB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v9 - 8, v10, v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D344(a3, v13, &qword_1006C9E20);
  v14 = type metadata accessor for TaskPriority();
  if (sub_100046EA4(v13, 1, v14) == 1)
  {
    sub_10004D2E8(v13, &qword_1006C9E20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
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

      sub_10004D2E8(a3, &qword_1006C9E20);

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

  sub_10004D2E8(a3, &qword_1006C9E20);
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

uint64_t sub_1000CEDBC()
{
  sub_1000443DC(&qword_1006CC810);
  swift_arrayDestroy();
  v0 = sub_1000777A0();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000CEE0C()
{
  type metadata accessor for ODIBindingsDict();
  swift_arrayDestroy();
  v0 = sub_1000777A0();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000CEE7C()
{
  swift_arrayDestroy();
  v0 = sub_1000777A0();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000CEEB8()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000CEEFC(uint64_t a1)
{
  result = sub_1000CFAB4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1000CF1B4(result, 1, sub_100062EB0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000CEFC0(uint64_t a1)
{
  result = sub_1000CFAB4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000CF1B4(result, 1, sub_100063174);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for LocalFeatureToggle(0);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000CF0C4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1000CF1B4(result, 1, sub_100063204);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000CF1B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1000CF22C(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setBindings:isa];
}

void sub_1000CF2AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setWorkflowID:v4];
}

void sub_1000CF304(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setFields:isa];
}

uint64_t sub_1000CF42C()
{
  _Block_release(*(v0 + 32));

  sub_10006EBD0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000CF478()
{
  sub_100068324();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  v3 = sub_10006EB14(v1);

  return v4(v3);
}

uint64_t sub_1000CF514()
{
  sub_100068324();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  v3 = sub_10006EB14(v1);

  return v4(v3);
}

uint64_t sub_1000CF5B4()
{
  sub_100068324();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_10006EBC4(v6);
  *v7 = v8;
  v7[1] = sub_1000640AC;

  return sub_1000CEA1C(v2, v3, v4, v5);
}

uint64_t sub_1000CF678()
{

  v0 = sub_1000777A0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000CF6A8()
{
  sub_1000657EC();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  v3 = sub_1000CFA84(v1);

  return v4(v3);
}

uint64_t sub_1000CF740()
{
  sub_1000657EC();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  v3 = sub_1000CFA84(v1);

  return v4(v3);
}

uint64_t sub_1000CF7DC()
{
  sub_1000657EC();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  v3 = sub_1000CFA2C(v1);

  return v4(v3);
}

uint64_t sub_1000CF870()
{
  sub_1000657EC();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  v3 = sub_1000CFA2C(v1);

  return v4(v3);
}

uint64_t sub_1000CF904()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000CF94C()
{
  sub_1000657EC();
  v0 = swift_task_alloc();
  v1 = sub_10006EBC4(v0);
  *v1 = v2;
  v3 = sub_1000CFA2C(v1);

  return v4(v3);
}

uint64_t sub_1000CFA0C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000CFAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_100046EA4(a1, a2, v4);
}

uint64_t sub_1000CFB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_1000485F8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AssessmentPayloadFilter(uint64_t a1)
{
  result = qword_1006CC8A0;
  if (!qword_1006CC8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CFBD4(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000CFC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000443DC(&qword_1006CC8D8);
  sub_100077674(v5);
  v4[6] = sub_100065948();
  v6 = sub_1000443DC(&qword_1006CC8E0);
  sub_100077674(v6);
  v4[7] = sub_100065948();
  v7 = type metadata accessor for DateComponents();
  v4[8] = v7;
  sub_1000474C0(v7);
  v4[9] = v8;
  v4[10] = sub_100065948();
  v9 = type metadata accessor for Calendar();
  v4[11] = v9;
  sub_1000474C0(v9);
  v4[12] = v10;
  v4[13] = sub_100065948();
  v11 = sub_1000443DC(&qword_1006CA2B0);
  sub_100077674(v11);
  v4[14] = sub_100065948();
  v12 = type metadata accessor for Date();
  v4[15] = v12;
  sub_1000474C0(v12);
  v4[16] = v13;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v14 = type metadata accessor for AssessmentPayload(0);
  v4[22] = v14;
  sub_1000474C0(v14);
  v4[23] = v15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v16 = sub_1000443DC(&qword_1006CC8E8);
  sub_100077674(v16);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000CFEEC, 0, 0);
}

char *sub_1000CFEEC()
{
  result = off_1006C9430;
  if (!off_1006C9430)
  {
    __break(1u);
    goto LABEL_46;
  }

  v2 = String.init(cString:)();
  v4 = v3;
  v5 = objc_allocWithZone(NSError);
  v6 = sub_1000D2B50(v2, v4, -74200);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[3];
  v115 = v6;
  if (v9)
  {
    v11 = sub_100053F78();
    *v11 = 134217984;
    *(v11 + 4) = *(v10 + 16);

    _os_log_impl(&_mh_execute_header, v7, v8, "Total pa: %ld", v11, 0xCu);
    sub_1000488AC(v11);
  }

  else
  {
  }

  v12 = v0[23];
  v13 = v0[3];
  sub_100097CFC();
  v119 = v14;
  sub_1000485F8(v15, v16, v17, v14);
  v18 = 0;
  v19 = *(v13 + 16);
  v118 = v19;
  while (v19 != v18)
  {
    v20 = v0[27];
    v21 = v0[4];
    sub_10007AEB8(v0[3] + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18, v20);
    v22 = swift_task_alloc();
    v22[2] = v20;
    v23 = sub_1000D2150(sub_1000D1E30, v22, v21);

    LOBYTE(v20) = sub_1000D0C0C(v23, v20 + *(v119 + 56));

    v24 = v0[27];
    if (v20)
    {
      v33 = v0[25];
      sub_10007AEB8(v0[27], v0[26]);
      sub_10007AEB8(v24, v33);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v0[25];
      v38 = v0[26];
      if (v36)
      {
        v39 = v0[22];
        v40 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *v40 = 136315394;
        v41 = *(v38 + *(v39 + 32));

        sub_10007AF1C(v38);
        v42 = sub_100052F7C(v41);

        *(v40 + 4) = v42;
        *(v40 + 12) = 2080;
        v43 = *(v37 + *(v39 + 40));

        sub_10007AF1C(v37);
        v44 = sub_100052F7C(v43);

        *(v40 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v34, v35, "FOUND A MATCH in pga, %s , %s", v40, 0x16u);
        swift_arrayDestroy();
        sub_1000488AC(v121);
        sub_1000488AC(v40);
      }

      else
      {

        sub_10007AF1C(v37);
        sub_10007AF1C(v38);
      }

      v19 = v118;
      v45 = v0[30];
      v46 = v0[27];
      sub_100076FB8(v45, &qword_1006CC8E8);
      sub_10007AEB8(v46, v45);
      sub_1000D2B30();
      sub_10007AF1C(v46);
      break;
    }

    sub_10007AEB8(v0[27], v0[24]);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[24];
    if (v27)
    {
      v29 = sub_100053F78();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      isa = Date._bridgeToObjectiveC()().super.isa;
      sub_10007AF1C(v28);
      *(v29 + 4) = isa;
      *v30 = isa;
      _os_log_impl(&_mh_execute_header, v25, v26, "Skipping pga from %@", v29, 0xCu);
      sub_100076FB8(v30, &qword_1006CBB00);
      sub_1000488AC(v30);
      v32 = v29;
      v19 = v118;
      sub_1000488AC(v32);
    }

    else
    {

      sub_10007AF1C(v28);
    }

    sub_10007AF1C(v0[27]);
    ++v18;
  }

  sub_100087764(v0[30], v0[29], &qword_1006CC8E8);
  v47 = sub_1000D2AE4();
  v48 = v0[29];
  if (v47 == 1)
  {
    sub_100076FB8(v0[29], &qword_1006CC8E8);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    v51 = v115;
    if (os_log_type_enabled(v49, v50))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "No pga match found", v52, 2u);
      sub_1000488AC(v52);
    }

    if (v19)
    {
      result = off_1006C9430;
      if (off_1006C9430)
      {
        v53 = String.init(cString:)();
        v55 = v54;
        v56 = objc_allocWithZone(NSError);
        v57 = sub_1000D2B50(v53, v55, -74201);

        v51 = v57;
        goto LABEL_23;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {

    sub_100076FB8(v48, &qword_1006CC8E8);
    v51 = 0;
  }

LABEL_23:
  v58 = v0[30];
  v59 = v0[22];
  if (!sub_1000D2AE4())
  {
    v60 = *(v58 + *(v59 + 64));
    v62 = v0[20];
    v61 = v0[21];
    v63 = v0[15];
    v64 = v0[16];
    v65 = *(v64 + 16);
    v65(v62, v58 + *(v119 + 20), v63);
    v66 = *(v64 + 32);
    v66(v61, v62, v63);
    if (v60 < 1)
    {
      (*(v0[16] + 8))(v0[21], v0[15]);
    }

    else
    {
      v113 = v65;
      v114 = v0[14];
      v116 = v51;
      v120 = v0[15];
      v68 = v0[10];
      v67 = v0[11];
      v69 = v0[9];
      v117 = v0[8];
      static Calendar.current.getter();
      sub_100097CFC();
      sub_1000485F8(v70, v71, v72, v67);
      type metadata accessor for TimeZone();
      sub_100097CFC();
      sub_1000485F8(v73, v74, v75, v76);
      v112 = v60;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      Calendar.date(byAdding:to:wrappingComponents:)();
      (*(v69 + 8))(v68, v117);
      v77 = sub_1000D2A30();
      v78(v77);
      if (sub_100046EA4(v114, 1, v120) == 1)
      {
        v79 = v0[14];
        (*(v0[16] + 8))(v0[21], v0[15]);
        sub_100076FB8(v79, &qword_1006CA2B0);
        v51 = v116;
      }

      else
      {
        v86 = v0[18];
        v87 = v0[15];
        v88 = v0[16];
        v66(v0[19], v0[14], v87);
        Date.init()();
        v89 = static Date.< infix(_:_:)();
        v90 = *(v88 + 8);
        v90(v86, v87);
        v91 = v0[21];
        v51 = v116;
        if (v89)
        {
          v113(v0[17], v0[21], v0[15]);
          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            *v94 = 138543618;
            v96 = Date._bridgeToObjectiveC()().super.isa;
            v97 = sub_1000D2B24();
            (v90)(v97);
            *(v94 + 4) = v96;
            *v95 = v96;
            *(v94 + 12) = 2050;
            *(v94 + 14) = v112;
            _os_log_impl(&_mh_execute_header, v92, v93, "The pga Expired. created at %{public}@, ttl = %{public}ld", v94, 0x16u);
            sub_100076FB8(v95, &qword_1006CBB00);
            sub_1000488AC(v95);
            sub_1000488AC(v94);
          }

          else
          {

            v99 = sub_1000D2B24();
            (v90)(v99);
          }

          v100 = v0[22];
          sub_100076FB8(v0[30], &qword_1006CC8E8);
          sub_100097CFC();
          sub_1000485F8(v101, v102, v103, v100);
          result = off_1006C9430;
          if (off_1006C9430)
          {
            v104 = v0[21];
            v105 = v0[19];
            v106 = v0[15];
            String.init(cString:)();
            v107 = objc_allocWithZone(NSError);
            v108 = sub_1000D2B24();
            sub_1000D2B50(v108, v109, v110);

            v90(v105, v106);
            v90(v104, v106);
            goto LABEL_41;
          }

LABEL_48:
          __break(1u);
          return result;
        }

        v98 = v0[15];
        v90(v0[19], v98);
        v90(v91, v98);
      }
    }
  }

  if (v51)
  {
    goto LABEL_41;
  }

  sub_100087764(v0[30], v0[28], &qword_1006CC8E8);
  if (sub_1000D2AE4() == 1)
  {
    sub_100076FB8(v0[28], &qword_1006CC8E8);
    result = off_1006C9430;
    if (off_1006C9430)
    {
      v80 = String.init(cString:)();
      v82 = v81;
      v83 = objc_allocWithZone(NSError);
      sub_1000D2B50(v80, v82, -74203);
LABEL_41:
      v111 = v0[30];
      swift_willThrow();
      sub_100076FB8(v111, &qword_1006CC8E8);

      v85 = v0[1];
      goto LABEL_42;
    }

    goto LABEL_47;
  }

  v84 = v0[30];
  sub_1000BE064(v0[28], v0[2]);
  sub_100076FB8(v84, &qword_1006CC8E8);

  v85 = v0[1];
LABEL_42:

  return v85();
}

BOOL sub_1000D0B54(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  sub_10005346C(a2, &v6);
  type metadata accessor for AssessmentPayload(0);

  v3 = sub_100098534();
  sub_100076FB8(v5, &qword_1006CC908);
  return v3;
}

BOOL sub_1000D0C0C(uint64_t a1, uint64_t a2)
{
  v206 = a2;
  v193 = sub_1000443DC(&qword_1006CC8F0);
  sub_1000774D8();
  __chkstk_darwin(v3, v4, v5);
  v201 = &v185 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000443DC(&qword_1006CA2B0);
  v8 = sub_100077674(v7);
  __chkstk_darwin(v8, v9, v10);
  v195 = &v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000474F8();
  __chkstk_darwin(v12, v13, v14);
  v198 = &v185 - v15;
  sub_1000474F8();
  __chkstk_darwin(v16, v17, v18);
  v197 = &v185 - v19;
  v202 = type metadata accessor for Date();
  __chkstk_darwin(v202, v20, v21);
  v191 = &v185 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000474F8();
  __chkstk_darwin(v23, v24, v25);
  v200 = &v185 - v26;
  sub_1000474F8();
  __chkstk_darwin(v27, v28, v29);
  v199 = &v185 - v31;
  v32 = a1 + 64;
  v33 = 1 << *(a1 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(a1 + 64);
  v36 = (v33 + 63) >> 6;
  v196 = (v30 + 32);
  v192 = v30 + 16;
  v194 = (v30 + 8);
  v205 = a1;

  v37 = 0;
  v190 = 0;
  v38 = &type metadata for Float;
  if (!v35)
  {
LABEL_5:
    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v39 >= v36)
      {
        v35 = 0;
        v216 = 0u;
        v217 = 0u;
        v215 = 0u;
        goto LABEL_10;
      }

      v35 = *(v32 + 8 * v39);
      ++v37;
      if (v35)
      {
        v37 = v39;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_111:

LABEL_112:
    v45 = v203;

    v150 = Logger.logObject.getter();
    v161 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v150, v161))
    {
      goto LABEL_120;
    }

    sub_100053F78();
    v162 = sub_1000488E0();
    sub_1000D2A58(v162);
    sub_1000D2A3C(4.8751e-34);
    sub_1000D2B00();
    *(v45 + 4) = v35;
    v163 = "value mismatch for key = %{public}s";
    v164 = v161;
    goto LABEL_119;
  }

  while (1)
  {
    v39 = v37;
LABEL_9:
    v40 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v41 = v40 | (v39 << 6);
    v42 = (*(v205 + 48) + 16 * v41);
    v44 = *v42;
    v43 = v42[1];
    sub_10005346C(*(v205 + 56) + 32 * v41, &v212);
    *&v215 = v44;
    *(&v215 + 1) = v43;
    sub_1000534C8(&v212, &v216);

LABEL_10:
    v218 = v215;
    v219[0] = v216;
    v219[1] = v217;
    v45 = *(&v215 + 1);
    if (!*(&v215 + 1))
    {

      return v45 == 0;
    }

    v46 = v218;
    sub_1000534C8(v219, v214);
    v204 = v46;
    sub_1000CAAD8();
    ODIBindingsDict.subscript.getter();
    if (!v213)
    {
      sub_100076FB8(&v212, &qword_1006CAD98);

      v156 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1000D2AB4();
      if (sub_1000D2ACC())
      {
        sub_100053F78();
        *&v215 = sub_1000488E0();
        *v45 = 136446210;
        v157 = sub_100052F7C(v204);

        *(v45 + 4) = v157;
        sub_1000D2A10(&_mh_execute_header, v158, v159, "value to compare for key = %{public}s doesn't exist");
        sub_1000D29DC();
        sub_1000488AC(v45);
      }

      else
      {
      }

      v160 = v214;
      goto LABEL_123;
    }

    v47 = v38;
    sub_10007B298(&v212, &v215);
    sub_10005346C(v214, v211);
    sub_1000D2A64();
    if (swift_dynamicCast())
    {
      v48 = v209;
      sub_1000D2A9C();
      sub_1000443DC(&qword_1006CAD30);
      sub_1000D29CC();
      if (!swift_dynamicCast() || *&v48 != v208)
      {
        goto LABEL_102;
      }

      goto LABEL_15;
    }

    sub_1000D2A64();
    if (swift_dynamicCast())
    {
      v49 = *&v209;
      sub_1000D2A9C();
      sub_1000443DC(&qword_1006CAD30);
      sub_1000D29CC();
      if (!swift_dynamicCast() || v49 != *&v208)
      {
        goto LABEL_102;
      }

LABEL_20:

      sub_1000D2A70();
      goto LABEL_21;
    }

    sub_1000D2A64();
    if (swift_dynamicCast())
    {
      v50 = v209;
      sub_1000D2A9C();
      sub_1000443DC(&qword_1006CAD30);
      sub_1000D29CC();
      if (!swift_dynamicCast() || v50 != *&v208)
      {
LABEL_102:

        v150 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        sub_1000D2AB4();
        if (!sub_1000D2ACC())
        {
          goto LABEL_120;
        }

        sub_100053F78();
        v151 = sub_1000488E0();
        sub_1000D2A58(v151);
        *v45 = 136446210;
        v152 = sub_100052F7C(v204);

        *(v45 + 4) = v152;
        sub_1000D2A10(&_mh_execute_header, v153, v154, "value mismatch for key = %{public}s");
        sub_1000D29DC();
        v155 = v45;
        goto LABEL_104;
      }

      goto LABEL_20;
    }

    v203 = v45;
    sub_1000D2A64();
    if (!swift_dynamicCast())
    {
      break;
    }

    v52 = v209;
    v51 = v210;
    sub_1000D2A9C();
    sub_1000443DC(&qword_1006CAD30);
    sub_1000D29CC();
    if (!swift_dynamicCast())
    {
      goto LABEL_111;
    }

    v53 = *&v52 == v208 && v51 == *(&v208 + 1);
    if (v53)
    {
    }

    else
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v54 & 1) == 0)
      {
        goto LABEL_112;
      }
    }

LABEL_15:

LABEL_16:
    sub_1000D2A70();
    v38 = v47;
LABEL_21:
    sub_100044850(v211);
    if (!v35)
    {
      goto LABEL_5;
    }
  }

  v55 = v199;
  v56 = v202;
  if (swift_dynamicCast())
  {
    v188 = *v196;
    v188(v200, v55, v56);
    v57 = v197;
    v58 = sub_1000D2B24();
    v59(v58);
    sub_1000D2B30();
    sub_1000D2A9C();
    sub_1000443DC(&qword_1006CAD30);
    v60 = v198;
    v61 = swift_dynamicCast();
    sub_1000485F8(v60, v61 ^ 1u, 1, v56);
    v62 = *(v193 + 48);
    v63 = v201;
    sub_100087764(v57, v201, &qword_1006CA2B0);
    v189 = v62;
    sub_100087764(v60, v63 + v62, &qword_1006CA2B0);
    v64 = v202;
    if (sub_100046EA4(v63, 1, v202) == 1)
    {
      sub_100076FB8(v197, &qword_1006CA2B0);
      v65 = v201;
      v53 = sub_100046EA4(v201 + v189, 1, v64) == 1;
      v66 = v65;
      if (!v53)
      {
        goto LABEL_126;
      }

      sub_100076FB8(v65, &qword_1006CA2B0);
      sub_100076FB8(v198, &qword_1006CA2B0);
      v67 = v202;
      v68 = v194;
    }

    else
    {
      v70 = v201;
      sub_100087764(v201, v195, &qword_1006CA2B0);
      v71 = v189;
      if (sub_100046EA4(v70 + v189, 1, v64) == 1)
      {
        sub_100076FB8(v197, &qword_1006CA2B0);
        (*v194)(v195, v64);
        v66 = v201;
LABEL_126:
        sub_100076FB8(v66, &qword_1006CC8F0);
        sub_100076FB8(v198, &qword_1006CA2B0);
        v45 = v203;
LABEL_127:

        v168 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        sub_1000D2AB4();
        if (sub_1000D2ACC())
        {
          sub_100053F78();
          v169 = sub_1000488E0();
          sub_1000D2A58(v169);
          sub_1000D2A3C(4.8751e-34);
          sub_1000D2B00();
          *(v45 + 4) = v35;
          sub_1000D2A10(&_mh_execute_header, v170, v171, "value mismatch for key = %{public}s");
          sub_1000D29DC();
          v172 = v45;
          v45 = v203;
          sub_1000488AC(v172);
        }

        else
        {
        }

        (*v194)(v200, v202);
        goto LABEL_122;
      }

      v72 = v191;
      v188(v191, (v201 + v71), v64);
      sub_1000D22E8();
      LODWORD(v189) = dispatch thunk of static Equatable.== infix(_:_:)();
      v68 = v194;
      v73 = *v194;
      (*v194)(v72, v64);
      sub_100076FB8(v197, &qword_1006CA2B0);
      v73(v195, v64);
      v67 = v64;
      sub_100076FB8(v201, &qword_1006CA2B0);
      sub_100076FB8(v198, &qword_1006CA2B0);
      v45 = v203;
      if ((v189 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    (*v68)(v200, v67);
    goto LABEL_16;
  }

  sub_1000D2A64();
  if (!swift_dynamicCast())
  {
    sub_1000D2A64();
    v74 = swift_dynamicCast();
    v45 = v203;
    if (v74)
    {
      v75 = *&v209;
      v76 = v210;
      sub_1000D2A9C();
      v189 = v75;
      v77 = v75;
      v78 = v76;
      sub_100046D38(v77, v76);
      sub_1000443DC(&qword_1006CAD30);
      sub_1000D29CC();
      v79 = swift_dynamicCast();
      v80 = v79 == 0;
      if (v79)
      {
        v81 = v208;
      }

      else
      {
        v81 = 0;
      }

      if (v80)
      {
        v82 = 0xF000000000000000;
      }

      else
      {
        v82 = *(&v208 + 1);
      }

      if (v76 >> 60 == 15)
      {
        if (v82 >> 60 != 15)
        {
          goto LABEL_131;
        }

        v83 = v189;
        sub_1000448B0(v189, v76);
        sub_10004489C(v83, v76);
        goto LABEL_101;
      }

      if (v82 >> 60 == 15)
      {
LABEL_131:
        v173 = v81;
        v174 = v82;
        sub_10004489C(v189, v78);
        v175 = v173;
        v176 = v174;
LABEL_133:
        sub_10004489C(v175, v176);
LABEL_134:
        v177 = v78;

        v178 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        sub_1000D2AB4();
        if (sub_1000D2ACC())
        {
          sub_100053F78();
          v179 = sub_1000488E0();
          sub_1000D2A58(v179);
          sub_1000D2A3C(4.8751e-34);
          sub_1000D2B00();
          *(v45 + 4) = v35;
          sub_1000D2A10(&_mh_execute_header, v180, v181, "value mismatch for key = %{public}s");
          sub_1000D29DC();
          v182 = v45;
          v45 = v203;
          sub_1000488AC(v182);

          sub_1000448B0(v189, v177);
        }

        else
        {

          sub_1000448B0(v189, v177);
        }

        goto LABEL_122;
      }

      v84 = v76 >> 62;
      if (v82 >> 60 == 14)
      {
        v86 = 0;
        if (!v189 && v76 == 0xC000000000000000 && v82 >> 62 == 3)
        {
          v86 = 0;
          if (!v81 && v82 == 0xC000000000000000)
          {
            v81 = 0;
            v82 = 0xC000000000000000;
LABEL_90:
            sub_10004489C(v81, v82);
            v109 = sub_1000981E8();
            sub_10004489C(v109, v110);
            goto LABEL_100;
          }
        }
      }

      else
      {
        v86 = 0;
        switch(v84)
        {
          case 0uLL:
            v86 = BYTE6(v76);
            break;
          case 1uLL:
            LODWORD(v86) = HIDWORD(v189) - v189;
            if (__OFSUB__(HIDWORD(v189), v189))
            {
              goto LABEL_139;
            }

            v86 = v86;
            break;
          case 2uLL:
            v88 = *(v189 + 16);
            v87 = *(v189 + 24);
            v89 = __OFSUB__(v87, v88);
            v86 = v87 - v88;
            if (!v89)
            {
              break;
            }

LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
            return result;
          case 3uLL:
            break;
          default:
            JUMPOUT(0);
        }
      }

      switch(v82 >> 62)
      {
        case 1uLL:
          LODWORD(v90) = HIDWORD(v81) - v81;
          if (__OFSUB__(HIDWORD(v81), v81))
          {
            goto LABEL_137;
          }

          v90 = v90;
LABEL_85:
          if (v86 != v90)
          {
LABEL_132:
            sub_10004489C(v81, v82);
            v175 = sub_1000981E8();
            goto LABEL_133;
          }

          if (v86 < 1)
          {
            goto LABEL_90;
          }

          break;
        case 2uLL:
          v92 = *(v81 + 16);
          v91 = *(v81 + 24);
          v89 = __OFSUB__(v91, v92);
          v90 = v91 - v92;
          if (!v89)
          {
            goto LABEL_85;
          }

          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        case 3uLL:
          if (v86)
          {
            goto LABEL_132;
          }

          goto LABEL_90;
        default:
          v90 = BYTE6(v82);
          goto LABEL_85;
      }

      switch(v84)
      {
        case 1:
          v186 = v189 >> 32;
          if (v189 >> 32 < v189)
          {
            goto LABEL_140;
          }

          v185 = v189;
          v187 = v81;
          v134 = v82;
          sub_1000D22D4(v81, v82);
          sub_1000D22D4(v187, v134);
          v135 = sub_1000981E8();
          sub_100046D38(v135, v136);
          sub_1000D22D4(v187, v134);
          sub_1000D22D4(v187, v134);
          v137 = v190;
          LODWORD(v186) = sub_1000D1FCC(v185, v186, v78 & 0x3FFFFFFFFFFFFFFFLL, v187, v134);
          v190 = v137;
          v138 = sub_1000CAAD8();
          sub_10004489C(v138, v139);
          v140 = sub_1000CAAD8();
          sub_10004489C(v140, v141);
          if (v190)
          {
            goto LABEL_144;
          }

          v142 = sub_1000CAAD8();
          sub_10004489C(v142, v143);
          v126 = sub_1000CAAD8();
LABEL_98:
          sub_10004489C(v126, v127);
          v144 = sub_1000981E8();
          sub_1000448B0(v144, v145);
          v45 = v203;
          goto LABEL_99;
        case 2:
          v111 = *(v189 + 24);
          v185 = *(v189 + 16);
          v186 = v111;
          v112 = v81;
          v188 = v82;
          sub_1000D22D4(v81, v82);
          v113 = sub_1000D2B18();
          sub_1000D22D4(v113, v114);
          v115 = sub_1000981E8();
          sub_100046D38(v115, v116);
          v117 = v188;
          sub_1000D22D4(v112, v188);
          v118 = sub_1000D2A30();
          sub_1000D22D4(v118, v119);
          v120 = v117;
          v121 = v190;
          LODWORD(v186) = sub_1000D1FCC(v185, v186, v78 & 0x3FFFFFFFFFFFFFFFLL, v112, v120);
          v190 = v121;
          sub_10004489C(v112, v188);
          v122 = sub_1000D2A30();
          sub_10004489C(v122, v123);
          if (v190)
          {
            goto LABEL_144;
          }

          v124 = sub_1000D2A30();
          sub_10004489C(v124, v125);
          v126 = sub_1000D2A30();
          goto LABEL_98;
        case 3:
          *(&v208 + 6) = 0;
          *&v208 = 0;
          v187 = v81;
          v188 = v82;
          sub_1000D22D4(v81, v82);
          v128 = sub_1000981E8();
          sub_100046D38(v128, v129);
          sub_1000D22D4(v187, v188);
          sub_1000D22D4(v187, v188);
          v130 = v190;
          sub_1000D1E50(&v207, &v208, v187, v188);
          v190 = v130;
          v131 = v187;
          sub_10004489C(v187, v188);
          if (!v190)
          {
            sub_1000448B0(v189, v78);
            v132 = v131;
            v133 = v188;
            sub_10004489C(v132, v188);
            sub_10004489C(v187, v133);
            sub_1000448B0(v187, v133);
            LODWORD(v186) = v207;
LABEL_99:
            v146 = sub_1000981E8();
            sub_10004489C(v146, v147);
            if ((v186 & 1) == 0)
            {
              goto LABEL_134;
            }

LABEL_100:

            v148 = sub_1000981E8();
            sub_1000448B0(v148, v149);
            goto LABEL_101;
          }

          v183 = v131;
          v184 = v188;
          break;
        default:
          *&v208 = v189;
          WORD4(v208) = v76;
          BYTE10(v208) = BYTE2(v76);
          BYTE11(v208) = BYTE3(v76);
          BYTE12(v208) = BYTE4(v76);
          BYTE13(v208) = BYTE5(v76);
          v186 = &v208 + BYTE6(v76);
          v93 = v81;
          v188 = v82;
          sub_1000D22D4(v81, v82);
          v94 = sub_1000981E8();
          sub_100046D38(v94, v95);
          v96 = sub_1000D2B18();
          sub_1000D22D4(v96, v97);
          v98 = sub_1000D2B18();
          sub_1000D22D4(v98, v99);
          v100 = v190;
          sub_1000D1E50(&v207, &v208, v93, v188);
          v190 = v100;
          v101 = sub_1000D2B18();
          sub_10004489C(v101, v102);
          if (!v190)
          {
            sub_1000448B0(v189, v78);
            v103 = sub_1000D2A30();
            sub_10004489C(v103, v104);
            v105 = sub_1000D2A30();
            sub_10004489C(v105, v106);
            v107 = sub_1000D2A30();
            sub_1000448B0(v107, v108);
            LODWORD(v186) = v207;
            v45 = v203;
            goto LABEL_99;
          }

          v183 = sub_1000D2A30();
          break;
      }

      sub_10004489C(v183, v184);
LABEL_144:

      __break(1u);
      JUMPOUT(0x1000D1E00);
    }

    v150 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000D2AB4();
    if (!sub_1000D2ACC())
    {
      goto LABEL_120;
    }

    sub_100053F78();
    v166 = sub_1000488E0();
    sub_1000D2A58(v166);
    sub_1000D2A3C(4.8751e-34);
    sub_1000D2B00();
    *(v45 + 4) = v35;
    v163 = "value is of unknown type for key = %{public}s";
LABEL_118:
    v164 = v56;
LABEL_119:
    _os_log_impl(&_mh_execute_header, v150, v164, v163, v45, 0xCu);
    sub_1000D29DC();
    v155 = v45;
    v45 = v203;
LABEL_104:
    sub_1000488AC(v155);
    goto LABEL_121;
  }

  LODWORD(v56) = LOBYTE(v209);
  sub_1000D2A9C();
  sub_1000443DC(&qword_1006CAD30);
  sub_1000D29CC();
  v69 = swift_dynamicCast();
  v45 = v203;
  if (v69 && v208 == v56)
  {

LABEL_101:
    sub_1000D2A70();
    goto LABEL_21;
  }

  v150 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000D2AB4();
  if (sub_1000D2ACC())
  {
    sub_100053F78();
    v165 = sub_1000488E0();
    sub_1000D2A58(v165);
    sub_1000D2A3C(4.8751e-34);
    sub_1000D2B00();
    *(v45 + 4) = v35;
    v163 = "value mismatch for key = %{public}s";
    goto LABEL_118;
  }

LABEL_120:

LABEL_121:

LABEL_122:
  sub_1000D2A70();
  v160 = v211;
LABEL_123:
  sub_100044850(v160);
  return v45 == 0;
}

unint64_t sub_1000D1E50@<X0>(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  switch(a5 >> 62)
  {
    case 1uLL:
      v10 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        __break(1u);
      }

      v9 = a4;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_9:
      result = sub_1000D2098(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        break;
      }

      goto LABEL_14;
    case 3uLL:
      if (!__s1)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
        JUMPOUT(0x1000D1FBCLL);
      }

      result = 1;
      break;
    default:
      __s2 = a4;
      v12 = a5;
      v13 = BYTE2(a5);
      v14 = BYTE3(a5);
      v15 = BYTE4(a5);
      v16 = BYTE5(a5);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      break;
  }

  *a1 = result & 1;
  return result;
}

char *sub_1000D1FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1000D1E50(&v13, v11, a4, a5);
  sub_1000448B0(a4, a5);
  if (!v5)
  {
    v12 = v13;
  }

  return (v12 & 1);
}

char *sub_1000D2098(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = __DataStorage._length.getter();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

unint64_t *sub_1000D2150(uint64_t (*a1)(void *, void *, __n128), unint64_t *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      v5 = sub_1000D24C8(v12, v8, a3, v6);

      return v5;
    }
  }

  __chkstk_darwin(a1, a2, a3);
  v9 = (&v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_10009F228(0, v8, v9);
  v10 = sub_1000D2340(v9, v8, a3, v6);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return v5;
}

uint64_t sub_1000D22D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100046D38(result, a2);
  }

  return result;
}

unint64_t sub_1000D22E8()
{
  result = qword_1006CC8F8;
  if (!qword_1006CC8F8)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC8F8);
  }

  return result;
}

unint64_t *sub_1000D2340(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *, __n128))
{
  v22 = 0;
  v21 = result;
  v5 = 0;
  v26 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(v26 + 56);
    v16 = (*(v26 + 48) + 16 * v14);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    sub_10005346C(v15 + 32 * v14, v24);

    v18 = (a4)(v25, v24);
    sub_100044850(v24);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1000D278C(v21, a2, v22, v26);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1000D278C(v21, a2, v22, v26);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1000D24C8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1000D2340(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_1000D2558(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000443DC(&qword_1006CC910);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
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
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000D278C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000443DC(&qword_1006CC900);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_10005346C(v17 + 32 * v16, v33);
    sub_1000534C8(v33, v32);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_1000534C8(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000D29DC()
{
  sub_100044850(v0);
}

void sub_1000D2A10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t sub_1000D2A3C(float a1)
{
  *v2 = a1;
  v4 = *(v1 + 160);

  return sub_100052F7C(v4);
}

uint64_t sub_1000D2A70()
{
  sub_100044850((v0 - 224));

  return sub_100044850((v0 - 256));
}

uint64_t sub_1000D2A9C()
{

  return sub_1000446C4(v1 - 224, v0 + 264);
}

uint64_t sub_1000D2AB4()
{
}

BOOL sub_1000D2ACC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000D2AE4()
{

  return sub_100046EA4(v1, 1, v0);
}

uint64_t sub_1000D2B00()
{
}

uint64_t sub_1000D2B30()
{

  return sub_1000485F8(v0, 0, 1, v1);
}

id sub_1000D2B50(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_100062458(a1, a2, a3, 0);
}

uint64_t sub_1000D2B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[38] = a6;
  v7[39] = v6;
  v7[36] = a4;
  v7[37] = a5;
  v7[34] = a2;
  v7[35] = a3;
  v7[33] = a1;
  v8 = type metadata accessor for URLRequest();
  v7[40] = v8;
  sub_1000474C0(v8);
  v7[41] = v9;
  v7[42] = sub_100065948();
  v10 = type metadata accessor for RavioliRequestFactory(0);
  v7[43] = v10;
  sub_100077674(v10);
  v7[44] = sub_100065948();
  v11 = sub_1000443DC(&qword_1006C9C48);
  sub_100077674(v11);
  v7[45] = sub_100065948();
  v12 = type metadata accessor for URL();
  v7[46] = v12;
  sub_1000474C0(v12);
  v7[47] = v13;
  v7[48] = sub_100065948();
  v14 = type metadata accessor for Logger();
  v7[49] = v14;
  sub_1000474C0(v14);
  v7[50] = v15;
  v7[51] = sub_100065948();
  sub_1000658F8();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_1000D2D00()
{
  v1 = [*(v0 + 272) configuration];
  v2 = [v1 _appleIDContext];

  if (v2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000D5458();
    Logger.init(subsystem:category:)();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 400);
    v6 = *(v0 + 408);
    v8 = *(v0 + 392);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "_appleIDContext not set on URL Session - ravioli request likely to fail", v9, 2u);
      sub_1000488AC(v9);
    }

    (*(v7 + 8))(v6, v8);
  }

  v10 = *(v0 + 272);
  *(v0 + 416) = swift_allocObject();
  sub_1000D4FFC(v10);
  if (qword_1006C9818 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static ASDConfigurationManager.shared;
  sub_1000B05E4((v0 + 112));

  if (*(v0 + 152) == 1)
  {
    goto LABEL_20;
  }

  *(v0 + 240) = *(v0 + 192);
  sub_1000961E8(v0 + 240, v0 + 248);
  sub_10007C9CC(v0 + 112, &qword_1006CAC08);
  v12 = *(v0 + 240);
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = UUID.uuidString.getter();
  sub_1000555DC(v13, v14, v12);
  v16 = v15;
  sub_10007C9CC(v0 + 240, &qword_1006CB6F0);

  if (!v16)
  {
    goto LABEL_20;
  }

  v18 = *(v0 + 360);
  v17 = *(v0 + 368);
  URL.init(string:)();

  if (sub_100046EA4(v18, 1, v17) == 1)
  {
    sub_10007C9CC(*(v0 + 360), &qword_1006C9C48);
LABEL_20:
    type metadata accessor for RavioliFetcher.FetchError(0);
    sub_1000D53F4();
    v49 = sub_1000D51CC(v47, v48, &unk_1005CF3E4);
    sub_1000D5488(v49);
    v51 = v50;
    v52 = type metadata accessor for HTTPStatusCode();
    sub_1000485F8(v51, 7, 7, v52);
    swift_willThrow();

    sub_1000D54F4();

    sub_10006574C();

    return v53();
  }

  (*(*(v0 + 376) + 32))(*(v0 + 384), *(v0 + 360), *(v0 + 368));
  v19 = static ASDConfigurationManager.shared;
  sub_1000B05E4((v0 + 16));

  if (*(v0 + 56) == 1 || (*(v0 + 232) = *(v0 + 96), sub_1000961E8(v0 + 232, v0 + 256), sub_10007C9CC(v0 + 16, &qword_1006CAC08), (v20 = *(v0 + 232)) == 0) || (v21 = UUID.uuidString.getter(), v23 = sub_1000555DC(v21, v22, v20), v25 = v24, v27 = v26, v29 = v28, sub_10007C9CC(v0 + 232, &qword_1006CB6F0), , !v25))
  {
    (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
    goto LABEL_20;
  }

  v31 = *(v0 + 344);
  v30 = *(v0 + 352);
  v33 = *(v0 + 296);
  v32 = *(v0 + 304);
  (*(*(v0 + 376) + 16))(v30, *(v0 + 384), *(v0 + 368));
  v34 = type metadata accessor for DeviceInformation();
  v35 = static DeviceInformation.shared.getter();
  v36 = (v30 + v31[5]);
  v36[3] = v34;
  v36[4] = &protocol witness table for DeviceInformation;
  *v36 = v35;
  v37 = type metadata accessor for ODIiCloudAccountManager();
  v38 = static ODIiCloudAccountManager.shared.getter();
  v39 = (v30 + v31[6]);
  v39[3] = v37;
  v39[4] = &protocol witness table for ODIiCloudAccountManager;
  *v39 = v38;
  v40 = (v30 + v31[7]);
  *v40 = v33;
  v40[1] = v32;
  v41 = v30 + v31[8];
  *v41 = v23;
  *(v41 + 8) = v25;
  *(v41 + 16) = v27;
  *(v41 + 24) = v29 & 1;
  *(v41 + 25) = BYTE1(v29);
  *(v41 + 26) = BYTE2(v29);
  *(v41 + 27) = HIBYTE(v29);

  v42 = swift_task_alloc();
  *(v0 + 424) = v42;
  *v42 = v0;
  v42[1] = sub_1000D3244;
  v43 = *(v0 + 336);
  v44 = *(v0 + 280);
  v45 = *(v0 + 288);

  return sub_10007E2A0(v43, v44, v45);
}

uint64_t sub_1000D3244()
{
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;
  v3[54] = v0;

  if (v0)
  {
    sub_1000658F8();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[55] = v10;
    *v10 = v5;
    v10[1] = sub_1000D33A4;
    v11 = v3[42];

    return sub_1000D3764(v11, 1);
  }
}

uint64_t sub_1000D33A4(uint64_t a1, uint64_t a2)
{
  sub_1000657F8();
  v7 = v6;
  sub_10006564C();
  *v8 = v7;
  v9 = *v3;
  sub_1000655F4();
  *v10 = v9;
  v7[56] = v2;

  if (!v2)
  {
    v7[57] = a2;
    v7[58] = a1;
  }

  sub_1000658F8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000D34C0()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v4 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[40];

  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v1, v3);
  sub_1000D540C();
  sub_1000D53A0(v4, v8);

  v9 = v0[1];
  v11 = v0[57];
  v10 = v0[58];

  return v9(v10, v11);
}

uint64_t sub_1000D35C0()
{
  v1 = *(v0 + 352);

  v2 = sub_1000D554C();
  v3(v2);
  sub_1000D540C();
  sub_1000D53A0(v1, v4);
  sub_1000D54F4();

  sub_10006574C();

  return v5();
}

uint64_t sub_1000D367C()
{
  sub_10006ECA0();
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v4 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[40];

  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v1, v3);
  sub_1000D540C();
  sub_1000D53A0(v4, v8);
  sub_1000D54F4();

  sub_10006574C();

  return v9();
}

uint64_t sub_1000D3764(uint64_t a1, char a2)
{
  *(v3 + 224) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for HTTPStatusCode();
  *(v3 + 32) = v4;
  sub_1000474C0(v4);
  *(v3 + 40) = v5;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  v6 = sub_1000443DC(&qword_1006C9C48);
  sub_100077674(v6);
  *(v3 + 80) = sub_100065948();
  v7 = type metadata accessor for URLRequest();
  *(v3 + 88) = v7;
  sub_1000474C0(v7);
  *(v3 + 96) = v8;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  sub_1000658F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D38D0()
{
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[2];
  v0[16] = OBJC_IVAR____TtC3asd14RavioliFetcher_logger;
  v46 = *(v4 + 16);
  v46(v2, v5, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = sub_1000D5578(v7);
  v9 = v0[15];
  if (v8)
  {
    v10 = v0[10];
    sub_100053F78();
    v11 = sub_1000BBA6C();
    *v1 = 136315138;
    URLRequest.url.getter();
    v12 = type metadata accessor for URL();
    v13 = sub_100046EA4(v10, 1, v12);
    v14 = v0[10];
    if (v13 == 1)
    {
      sub_10007C9CC(v0[10], &qword_1006C9C48);
      v15 = 7104878;
    }

    else
    {
      v15 = URL.absoluteString.getter();
      (*(*(v12 - 8) + 8))(v14, v12);
    }

    (*(v0[12] + 8))(v0[15], v0[11]);
    v19 = sub_100052F7C(v15);

    *(v1 + 4) = v19;
    sub_100097C54(&_mh_execute_header, v20, v21, "Requesting ravioli: %s");
    sub_100044850(v11);
    sub_1000488AC(v11);
    sub_10007756C();
  }

  else
  {
    v16 = v0[11];
    v17 = v0[12];

    v18 = *(v17 + 8);
    v1 = v17 + 8;
    v18(v9, v16);
  }

  v46(v0[14], v0[2], v0[11]);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = sub_1000D5578(v23);
  v25 = v0[12];
  if (v24)
  {
    sub_100053F78();
    v47 = sub_1000BBA6C();
    *v1 = 136315138;
    v26 = URLRequest.debugDescription.getter();
    v27 = sub_1000D5594();
    v25(v27);
    v28 = sub_100052F7C(v26);

    *(v1 + 4) = v28;
    sub_100097C54(&_mh_execute_header, v29, v30, "Request: %s");
    sub_100044850(v47);
    sub_1000488AC(v47);
    sub_10007756C();
  }

  else
  {

    v31 = sub_1000D5594();
    v25(v31);
  }

  v46(v0[13], v0[2], v0[11]);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v34 = sub_1000D5578(v33);
  v35 = v0[13];
  if (v34)
  {
    sub_100053F78();
    v36 = sub_1000BBA6C();
    *v1 = 136315138;
    if (URLRequest.allHTTPHeaderFields.getter())
    {
      v37 = Dictionary.debugDescription.getter();
    }

    else
    {
      v37 = 0x6564616568206F4ELL;
    }

    (v25)(v0[13], v0[11]);
    v39 = sub_100052F7C(v37);

    *(v1 + 4) = v39;
    sub_100097C54(&_mh_execute_header, v40, v41, "Request: %s");
    sub_100044850(v36);
    sub_1000488AC(v36);
    sub_10007756C();
  }

  else
  {
    v38 = v0[11];

    (v25)(v35, v38);
  }

  v42 = swift_task_alloc();
  v0[17] = v42;
  *v42 = v0;
  v42[1] = sub_1000D3D3C;
  sub_1000D555C();

  return NSURLSession.data(for:delegate:)(v43);
}

uint64_t sub_1000D3D3C()
{
  sub_10006ECA0();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  *v4 = *v1;
  v3[18] = v5;
  v3[19] = v6;
  v3[20] = v7;

  if (v0)
  {

    sub_10006574C();
    sub_1000980C8();

    __asm { BRAA            X1, X16 }
  }

  sub_1000658F8();
  sub_1000980C8();

  return _swift_task_switch(v10, v11, v12);
}

void sub_1000D3EC0()
{
  v1 = *(v0 + 160);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 160);
    v5 = sub_100053F78();
    v95 = swift_slowAlloc();
    *v5 = 136315138;
    v6 = [v4 debugDescription];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_100052F7C(v7);

    *(v5 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Response: %s", v5, 0xCu);
    sub_100044850(v95);
    sub_10007756C();
    sub_1000488AC(v5);
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  v10 = *(v0 + 160);
  if (v9)
  {
    v11 = v9;
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    v16 = v10;
    sub_1000A93F4([v11 statusCode], v12);
    v17 = *(v15 + 16);
    v17(v13, v12, v14);
    v18 = (*(v15 + 88))(v13, v14);
    if (v18 == enum case for HTTPStatusCode.httpSuccess(_:))
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = *(v0 + 160);
        v22 = swift_slowAlloc();
        *v22 = 0;
        v94 = v19;
        _os_log_impl(&_mh_execute_header, v19, v20, "Requesting ravioli - data received", v22, 2u);
        v23 = v22;
LABEL_7:
        sub_1000488AC(v23);

        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (v18 == enum case for HTTPStatusCode.httpUnauthorized(_:))
    {
      if (*(v0 + 224) == 1)
      {
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "Requesting ravioli - Authorisation error will renew and retry only one retry will be attempted", v35, 2u);
          sub_1000488AC(v35);
        }

        type metadata accessor for ODIiCloudAccountManager();
        *(v0 + 168) = static ODIiCloudAccountManager.shared.getter();
        v36 = swift_task_alloc();
        *(v0 + 176) = v36;
        *v36 = v0;
        v36[1] = sub_1000D481C;
        sub_1000D555C();

        __asm { BR              X0 }
      }

      v17(*(v0 + 56), *(v0 + 72), *(v0 + 32));
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        sub_100053F78();
        v96 = sub_1000BBA6C();
        *v52 = 136315138;
        sub_1000D5440();
        sub_1000D51CC(v53, v54, &protocol conformance descriptor for HTTPStatusCode);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = sub_1000D5514();
        v57(v56);
        v58 = sub_100052F7C(v55);

        *(v52 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v51, v52, "Authorisation error not retrying or have already retried: %s", v52, 0xCu);
        sub_100044850(v96);
        sub_1000488AC(v96);
        sub_10007756C();
      }

      else
      {

        v68 = sub_1000D5514();
        v69(v68);
      }

      v70 = *(v0 + 152);
      v71 = *(v0 + 160);
      v72 = *(v0 + 144);
      v73 = *(v0 + 72);
      v74 = *(v0 + 32);
      type metadata accessor for RavioliFetcher.FetchError(0);
      sub_1000D53F4();
      v77 = sub_1000D51CC(v75, v76, &unk_1005CF3E4);
      sub_1000D5488(v77);
      v17(v78, v73, v74);
      sub_1000D55C8();
      sub_1000448B0(v72, v70);

      v93(v73, v74);
    }

    else
    {
      if (v18 == enum case for HTTPStatusCode.httpAuthKitReprovision(_:) || v18 == enum case for HTTPStatusCode.httpAuthKitResync(_:))
      {
        v46 = *(v0 + 160);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.fault.getter();
        v49 = os_log_type_enabled(v47, v48);
        v21 = *(v0 + 160);
        if (v49)
        {
          v50 = sub_100053F78();
          *v50 = 134217984;
          *(v50 + 4) = [v11 statusCode];

          v94 = v47;
          _os_log_impl(&_mh_execute_header, v47, v48, "Expected %ld to be handled by the AKAppleIDSession", v50, 0xCu);
          v23 = v50;
          goto LABEL_7;
        }

LABEL_20:
        v94 = *(v0 + 160);
LABEL_21:
        v39 = *(v0 + 160);
        v40 = *(v0 + 72);
        v41 = *(v0 + 40);
        v42 = *(v0 + 32);

        (*(v41 + 8))(v40, v42);

        sub_1000D555C();

        __asm { BRAA            X3, X16 }
      }

      v17(*(v0 + 48), *(v0 + 72), *(v0 + 32));
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        buf = sub_100053F78();
        v97 = swift_slowAlloc();
        *buf = 136315138;
        sub_1000D5440();
        sub_1000D51CC(v62, v63, &protocol conformance descriptor for HTTPStatusCode);
        v89 = v60;
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = sub_1000D5530();
        v66(v65);
        v67 = sub_100052F7C(v64);

        *(buf + 4) = v67;
        _os_log_impl(&_mh_execute_header, v59, v89, "FetchRavioli Failed - Response: %s", buf, 0xCu);
        sub_100044850(v97);
        sub_1000488AC(v97);
        sub_1000488AC(buf);
      }

      else
      {

        v79 = sub_1000D5530();
        v80(v79);
      }

      v81 = *(v0 + 160);
      v82 = *(v0 + 144);
      v83 = *(v0 + 72);
      bufa = *(v0 + 152);
      v92 = *(v0 + 64);
      v84 = *(v0 + 32);
      type metadata accessor for RavioliFetcher.FetchError(0);
      sub_1000D53F4();
      v87 = sub_1000D51CC(v85, v86, &unk_1005CF3E4);
      sub_1000D5488(v87);
      v17(v88, v83, v84);
      sub_1000D55C8();
      sub_1000448B0(v82, bufa);

      v93(v83, v84);
      v93(v92, v84);
    }
  }

  else
  {
    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    v26 = *(v0 + 32);
    type metadata accessor for RavioliFetcher.FetchError(0);
    sub_1000D53F4();
    v29 = sub_1000D51CC(v27, v28, &unk_1005CF3E4);
    sub_1000D5488(v29);
    sub_1000485F8(v30, 6, 7, v26);
    swift_willThrow();

    sub_1000448B0(v25, v24);
  }

  sub_1000D54D0();

  sub_10006574C();
  sub_1000D555C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000D481C()
{
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;
  v3[23] = v0;

  if (v0)
  {
    sub_1000658F8();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[24] = v10;
    *v10 = v5;
    v10[1] = sub_1000D49A0;
    v11 = v3[2];

    return sub_1000D3764(v11, 0);
  }
}

uint64_t sub_1000D49A0(uint64_t a1, uint64_t a2)
{
  sub_1000657F8();
  v7 = v6;
  sub_10006564C();
  *v8 = v7;
  v9 = *v3;
  sub_1000655F4();
  *v10 = v9;
  v7[25] = v2;

  if (!v2)
  {
    v7[26] = a2;
    v7[27] = a1;
  }

  sub_1000658F8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000D4ABC()
{
  sub_1000448B0(v0[18], v0[19]);
  v7 = v0[26];
  v8 = v0[27];
  v1 = v0[20];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[4];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5(v8, v7);
}

void sub_1000D4BCC()
{
  sub_10006ECA0();
  sub_1000D55A8();

  v1 = sub_1000D554C();
  v2(v1);
  sub_1000D54D0();

  sub_10006574C();
  sub_1000980C8();

  __asm { BRAA            X1, X16 }
}

void sub_1000D4C88()
{
  sub_10006ECA0();
  sub_1000D55A8();

  v1 = sub_1000D554C();
  v2(v1);
  sub_1000D54D0();

  sub_10006574C();
  sub_1000980C8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000D4D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTTPStatusCode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6, v7);
  sub_10004EAF4();
  v10 = v9 - v8;
  Error = type metadata accessor for RavioliFetcher.FetchError(0);
  v12 = sub_100077674(Error);
  __chkstk_darwin(v12, v13, v14);
  sub_10004EAF4();
  v17 = v16 - v15;
  v18 = sub_1000443DC(&qword_1006CCA90);
  v19 = sub_100077674(v18);
  __chkstk_darwin(v19, v20, v21);
  sub_10004EAF4();
  v24 = v23 - v22;
  v26 = *(v25 + 56);
  sub_1000D533C(a1, v23 - v22);
  sub_1000D533C(a2, v24 + v26);
  switch(sub_100046EA4(v24, 7, v4))
  {
    case 1u:
      if (sub_1000D5424() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (sub_1000D5424() != 2)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 3u:
      if (sub_1000D5424() != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 4u:
      if (sub_1000D5424() == 4)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 5u:
      if (sub_1000D5424() != 5)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 6u:
      if (sub_1000D5424() != 6)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 7u:
      if (sub_1000D5424() != 7)
      {
        goto LABEL_7;
      }

LABEL_5:
      sub_1000D54A8();
      v27 = 1;
      break;
    default:
      sub_1000D533C(v24, v17);
      if (sub_1000D5424())
      {
        (*(v5 + 8))(v17, v4);
LABEL_7:
        sub_10007C9CC(v24, &qword_1006CCA90);
        v27 = 0;
      }

      else
      {
        (*(v5 + 32))(v10, v24 + v26, v4);
        v27 = static HTTPStatusCode.== infix(_:_:)();
        v29 = *(v5 + 8);
        v29(v10, v4);
        v29(v17, v4);
        sub_1000D54A8();
      }

      break;
  }

  return v27 & 1;
}

uint64_t sub_1000D4FFC(uint64_t a1)
{
  sub_1000D5458();
  Logger.init(subsystem:category:)();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1000D504C()
{
  v1 = OBJC_IVAR____TtC3asd14RavioliFetcher_logger;
  type metadata accessor for Logger();
  sub_10007CB0C();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_1000D510C(uint64_t a1)
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

uint64_t sub_1000D51CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D5228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTTPStatusCode();
  v5 = sub_100046EA4(a1, a2, v4);
  if (v5 >= 8)
  {
    return v5 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D5284(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 7);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for HTTPStatusCode();

  return sub_1000485F8(a1, v5, a3, v6);
}

uint64_t sub_1000D52E4(uint64_t a1)
{
  v1 = type metadata accessor for HTTPStatusCode();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1000D533C(uint64_t a1, uint64_t a2)
{
  Error = type metadata accessor for RavioliFetcher.FetchError(0);
  (*(*(Error - 8) + 16))(a2, a1, Error);
  return a2;
}

uint64_t sub_1000D53A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10007CB0C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000D5424()
{

  return sub_100046EA4(v0 + v2, 7, v1);
}

uint64_t sub_1000D5488(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_1000D54A8()
{

  return sub_1000D53A0(v0, type metadata accessor for RavioliFetcher.FetchError);
}

uint64_t sub_1000D54D0()
{
}

uint64_t sub_1000D54F4()
{
}

BOOL sub_1000D5578(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000D55A8()
{
  v2 = *(v0 + 152);
  v3 = *(v0 + 144);

  return sub_1000448B0(v3, v2);
}

uint64_t sub_1000D55C8()
{
  sub_1000485F8(v0, 0, 7, v1);

  return swift_willThrow();
}

uint64_t sub_1000D5600()
{
  sub_1000657D4();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = type metadata accessor for ODIBindingsDict();
  v1[11] = v5;
  sub_1000474C0(v5);
  v1[12] = v6;
  v1[13] = sub_100065948();
  v7 = type metadata accessor for ODIClientGUID();
  v1[14] = v7;
  sub_1000474C0(v7);
  v1[15] = v8;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v9 = type metadata accessor for DsidType();
  v1[18] = v9;
  sub_1000474C0(v9);
  v1[19] = v10;
  v1[20] = sub_100065948();
  v11 = type metadata accessor for DIPClientGUIDFactory();
  v1[21] = v11;
  sub_1000474C0(v11);
  v1[22] = v12;
  v1[23] = sub_100065948();
  sub_1000658F8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_1000D57A4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[7];
  v5 = type metadata accessor for ProfileContent(0);
  (*(v2 + 16))(v1, v4 + *(v5 + 36), v3);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1000D587C;
  v7 = v0[23];
  v8 = v0[20];

  return DIPClientGUIDFactory.init(primaryDSIDBehavior:)(v7, v8);
}

uint64_t sub_1000D587C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  v4 = *v1;
  sub_1000773D4();
  *v5 = v4;
  *(v6 + 200) = v0;

  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000D5978()
{
  v1 = *(v0 + 200);
  DIPClientGUIDFactory.createNewAssessmentGUID(serverTime:)();
  if (v1)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
LABEL_7:

    sub_10006574C();
LABEL_8:

    return v18();
  }

  *(v0 + 208) = ODIClientGUID.asString.getter();
  *(v0 + 216) = v2;
  DIPClientGUIDFactory.createNewTrainingGUID(serverTime:)();
  *(v0 + 224) = ODIClientGUID.asString.getter();
  *(v0 + 232) = v3;
  type metadata accessor for DIPODNHelper();
  *(v0 + 240) = static DIPODNHelper.convertAssessmentGUIDToData(_:)();
  *(v0 + 248) = v4;
  v5 = *(v0 + 80);
  if (v4 >> 60 == 15)
  {

    type metadata accessor for AssessmentPayloadCacher(0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (sub_10009D6D8(v7))
    {
      sub_100097B40();
      *swift_slowAlloc() = 0;
      sub_10007FD74(&_mh_execute_header, v8, v9, "unable to convert assessment nonce to data");
      sub_100097AB8();
    }

    v10 = *(v0 + 176);
    v66 = *(v0 + 184);
    v11 = *(v0 + 168);
    v12 = *(v0 + 136);
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);

    sub_1000D8A4C();
    sub_1000D9624();
    swift_allocError();
    sub_1000D9688(v15, 1);
    swift_willThrow();
    v16 = *(v13 + 8);
    v17 = sub_1000D959C();
    v16(v17);
    (v16)(v12, v14);
    (*(v10 + 8))(v66, v11);
    goto LABEL_7;
  }

  *(v0 + 304) = *(type metadata accessor for AssessmentPayloadCacher(0) + 28);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  v22 = sub_10009D6D8(v21);
  v23 = *(v0 + 72);
  if (v22)
  {
    v24 = swift_slowAlloc();
    *v24 = 134349056;
    *(v24 + 4) = *(v23 + 16);

    _os_log_impl(&_mh_execute_header, v20, v5, "Trying to pregenerate %{public}ld assessments", v24, 0xCu);
    sub_100097AB8();
  }

  else
  {
  }

  v25 = *(v0 + 72);
  if (*(v25 + 16) >= 2uLL)
  {
    sub_100080C18();
    v25 = *(v0 + 72);
  }

  v68 = v25;

  sub_1000D8C70();
  *(v0 + 256) = v68;
  v26 = *(v68 + 16);
  *(v0 + 264) = v26;
  if (!v26)
  {
    v60 = *(v0 + 240);
    v62 = *(v0 + 248);
    v43 = *(v0 + 176);
    v44 = *(v0 + 184);
    v64 = *(v0 + 168);
    v45 = *(v0 + 128);
    v46 = *(v0 + 136);
    v47 = *(v0 + 112);
    v48 = *(v0 + 120);

    sub_10004489C(v60, v62);
    v49 = *(v48 + 8);
    v49(v45, v47);
    v49(v46, v47);
    (*(v43 + 8))(v44, v64);

    sub_10006574C();
    goto LABEL_8;
  }

  v27 = *(v0 + 96);
  v28 = *(v0 + 64);
  result = type metadata accessor for ODIDeviceInfo();
  *(v0 + 272) = result;
  v29 = *(v27 + 80);
  *(v0 + 308) = v29;
  *(v0 + 280) = 0;
  if (!*(v68 + 16))
  {
    __break(1u);
    return result;
  }

  (*(v27 + 16))(*(v0 + 104), v68 + ((v29 + 32) & ~v29), *(v0 + 88));
  v30 = static ODIDeviceInfo.isDeviceLocked()();
  if (v28 == 1 && (v30 & 1) != 0)
  {
    sub_1000D9658();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      sub_100097B40();
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "PGA mismatched DataProtectionClass", v33, 2u);
      sub_100097AB8();
    }

    v34 = *(v0 + 240);
    v35 = *(v0 + 176);
    v65 = *(v0 + 168);
    v67 = *(v0 + 184);
    v63 = *(v0 + 136);
    v59 = *(v0 + 248);
    v61 = *(v0 + 128);
    v37 = *(v0 + 112);
    v36 = *(v0 + 120);
    v39 = *(v0 + 96);
    v38 = *(v0 + 104);
    v40 = *(v0 + 88);

    sub_1000D8A4C();
    sub_1000D9624();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();
    sub_10004489C(v34, v59);
    (*(v39 + 8))(v38, v40);
    v42 = *(v36 + 8);
    v42(v61, v37);
    v42(v63, v37);
    (*(v35 + 8))(v67, v65);
    goto LABEL_7;
  }

  sub_1000D95F8();
  v50 = swift_task_alloc();
  *(v0 + 288) = v50;
  *v50 = v0;
  v51 = sub_1000D94FC(v50);

  return sub_1000D6CA8(v51, v52, v53, v54, v55, v56, v57, v58);
}

uint64_t sub_1000D6030()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_1000773D4();
  *v4 = v3;
  v5 = *v1;
  sub_1000773D4();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (v0)
  {
  }

  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000D6150()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 280) + 1;
  result = (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  if (v2 == v1)
  {
    v4 = *(v0 + 240);
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v41 = *(v0 + 248);
    v43 = *(v0 + 168);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);

    sub_10004489C(v4, v41);
    v11 = *(v9 + 8);
    v11(v8, v10);
    v11(v7, v10);
    (*(v6 + 8))(v5, v43);

    sub_10006574C();
LABEL_9:

    return v12();
  }

  v13 = *(v0 + 280) + 1;
  *(v0 + 280) = v13;
  v14 = *(v0 + 256);
  if (v13 >= *(v14 + 16))
  {
    __break(1u);
    return result;
  }

  v15 = *(v0 + 64);
  (*(*(v0 + 96) + 16))(*(v0 + 104), v14 + ((*(v0 + 308) + 32) & ~*(v0 + 308)) + *(*(v0 + 96) + 72) * v13, *(v0 + 88));
  v16 = static ODIDeviceInfo.isDeviceLocked()();
  if (v15 == 1 && (v16 & 1) != 0)
  {
    sub_1000D9658();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (sub_10009D6D8(v18))
    {
      sub_100097B40();
      *swift_slowAlloc() = 0;
      sub_10007FD74(&_mh_execute_header, v19, v20, "PGA mismatched DataProtectionClass");
      sub_100097AB8();
    }

    v21 = *(v0 + 240);
    v22 = *(v0 + 176);
    v45 = *(v0 + 168);
    v46 = *(v0 + 184);
    v44 = *(v0 + 136);
    v40 = *(v0 + 248);
    v42 = *(v0 + 128);
    v24 = *(v0 + 112);
    v23 = *(v0 + 120);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v27 = *(v0 + 88);

    sub_1000D8A4C();
    sub_1000D9624();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    sub_10004489C(v21, v40);
    (*(v26 + 8))(v25, v27);
    v29 = *(v23 + 8);
    v29(v42, v24);
    v29(v44, v24);
    (*(v22 + 8))(v46, v45);
    sub_1000D95D8();

    sub_10006574C();
    goto LABEL_9;
  }

  sub_1000D95F8();
  v30 = swift_task_alloc();
  *(v0 + 288) = v30;
  *v30 = v0;
  sub_1000D94FC(v30);
  sub_100097FD0();

  return sub_1000D6CA8(v31, v32, v33, v34, v35, v36, v37, v38);
}

uint64_t sub_1000D64C8(uint64_t a1)
{
  sub_1000D95D8();

  sub_10006574C();

  return v1();
}

uint64_t sub_1000D6554()
{
  v1 = v0[22];
  v13 = v0[23];
  v2 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[11];
  sub_10004489C(v0[30], v0[31]);
  (*(v7 + 8))(v8, v9);
  v10 = *(v6 + 8);
  v10(v4, v5);
  v10(v3, v5);
  (*(v1 + 8))(v13, v2);
  sub_1000D95D8();

  sub_10006574C();

  return v11();
}

uint64_t sub_1000D6670()
{
  sub_1000657D4();
  v0[23] = v1;
  v0[24] = v2;
  v3 = type metadata accessor for ODIBindingsDict();
  v0[25] = v3;
  sub_1000474C0(v3);
  v0[26] = v4;
  v0[27] = sub_100065948();
  sub_1000658F8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000D6718()
{
  v0[28] = sub_1000D876C(0x10uLL);
  v0[29] = v1;
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = [objc_allocWithZone(ASPrecomputationRunner) init];
  v0[30] = v6;
  (*(v3 + 16))(v2, v5, v4);
  ODIBindingsDict.subscript.setter();
  sub_100080E58();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[31] = isa;
  v8 = Data._bridgeToObjectiveC()().super.isa;
  v0[32] = v8;
  v9 = ODIBindingsDict.contents.getter();
  sub_1000A34A0(v9);

  v10 = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[33] = v10;

  v11 = Array._bridgeToObjectiveC()().super.isa;
  v0[34] = v11;
  sub_1000D967C();
  v12 = Data._bridgeToObjectiveC()().super.isa;
  v0[35] = v12;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000D69E8;
  v13 = swift_continuation_init();
  v0[17] = sub_1000443DC(&qword_1006CCA98);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000D8684;
  v0[13] = &unk_100695268;
  v0[14] = v13;
  [v6 runPrecomputationWithProfiles:isa profileInfo:v8 bindings:v10 externalDataArray:v11 nonce:v12 completion:?];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000D69E8()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = *(v3 + 48);
  sub_1000658F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000D6AE4()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  sub_1000448B0(v0[28], v0[29]);

  (*(v8 + 8))(v7, v9);
  v10 = v0[20];
  v11 = v0[21];
  sub_1000448B0(v0[18], v0[19]);
  sub_1000448B0(v10, v11);

  sub_10006574C();

  return v12();
}

void sub_1000D6BC8(uint64_t a1)
{
  v2 = v1[35];
  v3 = v1[34];
  v12 = v1[33];
  v13 = v1[32];
  v14 = v1[31];
  v4 = v1[29];
  v5 = v1[30];
  v7 = v1[27];
  v6 = v1[28];
  v8 = v1[25];
  v9 = v1[26];
  swift_willThrow();
  sub_1000448B0(v6, v4);

  (*(v9 + 8))(v7, v8);

  sub_10006574C();
  sub_100097FD0();

  __asm { BRAA            X1, X16 }
}
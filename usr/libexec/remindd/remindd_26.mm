void sub_1002A03A0(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for REMCKSharedEntitySyncActivity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [ObjCClassFromMetadata entity];
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v10 insertIntoManagedObjectContext:a1];
  v12 = a2;
  v13 = v11;
  [a1 assignObject:v13 toPersistentStore:v12];

  sub_1002A0038(a3);
  *a4 = v13;
}

id sub_1002A0464()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  *&v10 = __chkstk_darwin(v8 - 8, v9).n128_u64[0];
  v12 = &v17 - v11;
  v13 = [v1 uuidForChangeTracking];
  if (v13)
  {
    v14 = v13;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v12, v7, v3);
    (*(v4 + 56))(v12, 0, 1, v3);
    sub_1000050A4(v12, &unk_100939D90, "8\n\r");
  }

  else
  {
    (*(v4 + 56))(v12, 1, 1, v3);
    sub_1000050A4(v12, &unk_100939D90, "8\n\r");
    UUID.init()();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v7, v3);
    [v1 setUuidForChangeTracking:isa];
  }

  v17.receiver = v1;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "willSave");
}

id sub_1002A0758()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 uuidForChangeTracking];
  if (v9)
  {
    v10 = v9;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v32[1] = ObjectType;
    sub_1000F5104(&unk_10093E750, qword_10079FC30);
    String.init<A>(describing:)();
    v12 = v11;
    v13 = objc_allocWithZone(REMObjectID);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v15 = String._bridgeToObjectiveC()();
    v12, v16, v17, v18, v19, v20, v21, v22;
    v23 = [v13 initWithUUID:isa entityName:v15];

    (*(v4 + 8))(v8, v3);
  }

  else
  {
    if (qword_100935DF8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100940398);
    v25 = v1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = [v25 objectID];
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Cannot return a -remObjectID because REMCKSharedEntitySyncActivity does not have a UUID for change tracking {%@}", v28, 0xCu);
      sub_1000050A4(v29, &unk_100938E70, &unk_100797230);
    }

    return 0;
  }

  return v23;
}

void *sub_1002A0A50(void *a1, id a2)
{
  v3 = [a2 storeController];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 accountIdentifier];
    if (!v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
      v5 = String._bridgeToObjectiveC()();
      v7, v8, v9, v10, v11, v12, v13, v14;
    }

    v15 = [v4 storeForAccountIdentifier:v5];

    if (v15)
    {
      __chkstk_darwin(v16, v17);
      type metadata accessor for REMCKSharedEntitySyncActivity();
      NSManagedObjectContext.rem_performAndWait<A>(_:)();

      return v28;
    }

    if (qword_100935DF8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100940398);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_10000668C(0xD000000000000022, 0x80000001007F3470, &v28);
      _os_log_impl(&_mh_execute_header, v24, v25, "📓 REMCKSharedEntitySyncActivity:%s | Unable to get persistentStore for accountIdentifier.", v26, 0xCu);
      sub_10000607C(v27);
    }
  }

  else
  {
    if (qword_100935DF8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_100940398);
    v4 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10000668C(0xD000000000000022, 0x80000001007F3470, &v28);
      _os_log_impl(&_mh_execute_header, v4, v20, "📓 REMCKSharedEntitySyncActivity:%s | Unable to get storeController from RDStoreControllerManagedObjectContext", v21, 0xCu);
      sub_10000607C(v22);
    }
  }

  return 0;
}

uint64_t sub_1002A0D94(unsigned __int16 a1)
{
  if (a1 >= 6u)
  {
    return 6;
  }

  else
  {
    return (0x20504030100uLL >> (8 * a1));
  }
}

unint64_t sub_1002A0DC0(unint64_t a1)
{
  if (a1 < 6)
  {
    return 0x20504030100uLL >> (8 * a1);
  }

  v24[7] = v1;
  v24[8] = v2;
  if (qword_100935DF8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100940398);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10000668C(0xD000000000000026, 0x80000001007F3440, v24);
    *(v7 + 12) = 2082;
    v8._countAndFlagsBits = 0x206E776F6E6B6E75;
    v8._object = 0xEF746C7561666564;
    String.append(_:)(v8);
    0xEF746C7561666564, v9, v10, v11, v12, v13, v14, v15;
    v16 = sub_10000668C(0, 0xE000000000000000, v24);
    0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "📓 %s: An unexpected error occurred: unknown activityType: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for REMCKSharedEntitySyncActivity.ActivityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMCKSharedEntitySyncActivity.ActivityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002A112C()
{
  result = qword_1009403D8;
  if (!qword_1009403D8)
  {
    sub_1000F514C(&qword_1009403E0, qword_10079FDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009403D8);
  }

  return result;
}

unint64_t sub_1002A1194()
{
  result = qword_1009403E8;
  if (!qword_1009403E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009403E8);
  }

  return result;
}

void sub_1002A11E8(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v15[0] = *(i - 1);
      v15[1] = v7;

      (a1)(v15);
      if (v3)
      {
        break;
      }

      v7, v8, v9, v10, v11, v12, v13, v14;
      if (!--v4)
      {
        return;
      }
    }

    v7, v8, v9, v10, v11, v12, v13, v14;
  }
}

void sub_1002A127C(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v14 = v13[1];
      v29[0] = *v13;
      v29[1] = v14;

      (a1)(v29);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      v14, v15, v16, v17, v18, v19, v20, v21;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v14, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1002A13E0(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10018BA8C();
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        a1(&v26);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_19;
        }

        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      v18 = v20;
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_19:
      v18 = v5;
    }

    sub_10001B860(v18);
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1002A162C(void (*a1)(void *), uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v7 = ~v10;
    v6 = a3 + 64;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(a3 + 64);
    v9 = a3;
  }

  v13 = 0;
  v26 = v9;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v13;
  v15 = v8;
  v16 = v13;
  if (v8)
  {
LABEL_12:
    v8 = (v15 - 1) & v15;
    v17 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v18 = *(*(v9 + 56) + v17);
    v19 = *(*(v9 + 48) + v17);

    if (v19)
    {
      while (1)
      {
        v27[0] = v19;
        v27[1] = v18;
        a1(v27);

        if (v5)
        {
          break;
        }

        v13 = v16;
        v9 = v26;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v20 = __CocoaDictionary.Iterator.next()();
        if (!v20)
        {
          goto LABEL_19;
        }

        v22 = v21;
        v28 = v20;
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        swift_dynamicCast();
        v19 = v27[0];
        v28 = v22;
        a4(0);
        swift_dynamicCast();
        v18 = v27[0];
        v16 = v13;
        if (!v19)
        {
          goto LABEL_21;
        }
      }

      v23 = v26;
    }

    else
    {
LABEL_21:
      v9 = v26;
LABEL_19:
      v23 = v9;
    }

    sub_10001B860(v23);
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v6 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002A1878()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009403F0);
  v1 = sub_100006654(v0, qword_1009403F0);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002A1940(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v191 = a4;
  v192 = a3;
  v183 = a2;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v6 - 8, v7);
  v182 = v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v185 = v176 - v11;
  v187 = type metadata accessor for Date();
  v184 = *(v187 - 8);
  __chkstk_darwin(v187, v12);
  v181 = v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v186 = v176 - v16;
  __chkstk_darwin(v17, v18);
  v20 = (v176 - v19);
  v21 = type metadata accessor for RDUserNotificationType();
  v189 = *(v21 - 8);
  v190 = v21;
  __chkstk_darwin(v21, v22);
  v188 = v176 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for REMNotificationIdentifier();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24, v26);
  v28 = v176 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 1);
  v32 = __chkstk_darwin(v29, v31);
  v34 = (v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v4 + 32);
  *v34 = v35;
  (*(v30 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v29, v32);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  (*(v30 + 8))(v34, v29);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  v29 = *a1;
  if ([*a1 isCompleted])
  {
    if (qword_100935E00 == -1)
    {
LABEL_4:
      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_1009403F0);
      v38 = v29;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v39, v40))
      {
        goto LABEL_12;
      }

      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = [v38 objectID];
      *(v41 + 4) = v43;
      *v42 = v43;
      v44 = "Not presenting reminderAlarm banner for completed reminder. {reminderID: %@}";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v39, v40, v44, v41, 0xCu);
      sub_1000050A4(v42, &unk_100938E70, &unk_100797230);

LABEL_12:

      if (v192)
      {
        v192(0);
      }

      return 0;
    }

LABEL_60:
    swift_once();
    goto LABEL_4;
  }

  v180 = v4;
  v45 = [v29 list];
  v46 = [v45 objectID];

  v47 = [objc_opt_self() siriFoundInAppsListID];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  LOBYTE(v45) = static NSObject.== infix(_:_:)();

  if (v45)
  {
    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006654(v48, qword_1009403F0);
    v49 = v29;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_12;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    v50 = [v49 objectID];
    *(v41 + 4) = v50;
    *v42 = v50;
    v44 = "Not presenting reminderAlarm banner for SiriFoundInApps reminder. {reminderID: %@}";
    goto LABEL_11;
  }

  v52 = v29;
  REMNotificationIdentifier.init(reminder:)();
  v176[1] = REMNotificationIdentifier.requestIdentifier.getter();
  v177 = v53;
  (*(v25 + 8))(v28, v24);
  *&v200[9] = *(a1 + 17);
  *v200 = *(a1 + 8);
  v54 = v200[24];
  v55 = v52;
  v56 = (v189 + 104);
  sub_1002A6FF8(v200, aBlock);
  if (v54 > 3)
  {
    v57 = &enum case for RDUserNotificationType.dueDateDeltaAlarm(_:);
  }

  else
  {
    v57 = &enum case for RDUserNotificationType.reminderAlarm(_:);
  }

  v58 = v187;
  v59 = v186;
  v60 = v188;
  REMNotificationIdentifier.init(reminder:)();
  (*v56)(v60, *v57, v190);
  Date.init()();
  v61 = sub_1002D833C(v55, 0, 0);
  UNMutableNotificationContent.setFiresBeforeFirstUnlock(_:)(*(a1 + 34));
  sub_1002DA8FC(v61, a1, v20);
  v62 = v184;
  v64 = v184 + 8;
  v63 = *(v184 + 8);
  v63(v20, v58);
  Date.init()();
  v65 = *v200;
  v179 = v64;
  v178 = v63;
  if (v200[24] <= 1u)
  {
    if (!v200[24])
    {
      goto LABEL_23;
    }

LABEL_26:
    sub_1002A7068(v200);
    goto LABEL_27;
  }

  if (v200[24] == 2)
  {
    goto LABEL_26;
  }

  if (v200[24] == 3)
  {
    v66 = *&v200[16];

    v66, v67, v68, v69, v70, v71, v72, v73;
LABEL_27:
    v80 = 2;
    goto LABEL_37;
  }

LABEL_23:
  v176[0] = v61;
  v74 = *(v62 + 56);
  v74(v185, 1, 1, v58);
  v195 = [v65 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if (swift_dynamicCast())
  {
    sub_100054B6C(v193, aBlock);
    v75 = v197;
    v76 = v198;
    sub_10000F61C(aBlock, v197);
    v77 = v182;
    v78 = v75;
    v79 = v184;
    (*(v76 + 3))(v55, v59, v78, v76);
    if ((*(v79 + 48))(v77, 1, v58) == 1)
    {
      sub_1000050A4(v77, &unk_100938850, qword_100795AE0);
    }

    else
    {
      v81 = *(v79 + 32);
      v82 = v181;
      v81(v181, v77, v58);
      UNMutableNotificationContent.setLastRecurringFireDate(_:)();
      v83 = v185;
      sub_1000050A4(v185, &unk_100938850, qword_100795AE0);
      v81(v83, v82, v58);
      v74(v83, 0, 1, v58);
    }

    sub_10000607C(aBlock);
  }

  else
  {
    v194 = 0;
    memset(v193, 0, sizeof(v193));
    sub_1000050A4(v193, &qword_10093A718, &qword_100797B90);
  }

  v80 = sub_1002A6230(v55, v65, v59, v185);
  if (qword_100935E00 != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for Logger();
  v85 = sub_100006654(v84, qword_1009403F0);
  v86 = v55;
  v184 = v85;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    aBlock[0] = v91;
    *v89 = 136446466;
    LOBYTE(v193[0]) = v80;
    v92 = String.init<A>(describing:)();
    v93 = v80;
    v94 = v86;
    v96 = v95;
    v97 = sub_10000668C(v92, v95, aBlock);
    v98 = v96;
    v86 = v94;
    v80 = v93;
    v98, v99, v100, v101, v102, v103, v104, v105;
    *(v89 + 4) = v97;
    v59 = v186;
    *(v89 + 12) = 2114;
    v106 = [v86 objectID];
    *(v89 + 14) = v106;
    *v90 = v106;
    sub_1002A7068(v200);
    _os_log_impl(&_mh_execute_header, v87, v88, "bannerBehavior determined {bannerBehavior: %{public}s, reminderID: %{public}@}", v89, 0x16u);
    sub_1000050A4(v90, &unk_100938E70, &unk_100797230);

    sub_10000607C(v91);
    v58 = v187;
  }

  else
  {
    sub_1002A7068(v200);
  }

  sub_1000050A4(v185, &unk_100938850, qword_100795AE0);
  v61 = v176[0];
  if (!v80)
  {
    v177, v107, v108, v109, v110, v111, v112, v113;
    v170 = v86;
    v171 = Logger.logObject.getter();
    v172 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      *v173 = 138543362;
      v175 = [v170 objectID];
      *(v173 + 4) = v175;
      *v174 = v175;
      _os_log_impl(&_mh_execute_header, v171, v172, "notificationCenter.retainNotification will not be called because lastBannerPresentationDate is too recent {reminderID: %{public}@}", v173, 0xCu);
      sub_1000050A4(v174, &unk_100938E70, &unk_100797230);
    }

    if (v192)
    {
      v192(0);
    }

    v178(v59, v58);
    (*(v189 + 8))(v188, v190);
    return 0;
  }

LABEL_37:
  LODWORD(v185) = v80 == 2;
  LODWORD(v184) = v80 != 2;
  v114 = [v55 objectID];
  v115 = [v114 stringRepresentation];

  v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = v117;

  if (v200[24] <= 1u)
  {
    v182 = 0xE800000000000000;
    if (v200[24])
    {
      v119 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v119 = 0x6C61726F706D6574;
    }
  }

  else if (v200[24] == 2)
  {
    v182 = 0xE700000000000000;
    v119 = 0x656C6369686576;
  }

  else if (v200[24] == 3)
  {
    v182 = 0x80000001007F35B0;
    v119 = 0xD000000000000011;
  }

  else
  {
    v182 = 0xEC00000061746C65;
    v119 = 0x4465746144657564;
  }

  v181 = v119;
  if (qword_100935E00 != -1)
  {
    swift_once();
  }

  v120 = type metadata accessor for Logger();
  sub_100006654(v120, qword_1009403F0);

  v121 = v61;
  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.default.getter();

  v118, v124, v125, v126, v127, v128, v129, v130;
  if (os_log_type_enabled(v122, v123))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v131 = 136446722;
    *(v131 + 4) = sub_10000668C(v116, v118, aBlock);
    *(v131 + 12) = 2082;
    if (v80 == 2)
    {
      v133 = 78;
    }

    else
    {
      v133 = 89;
    }

    v134 = sub_10000668C(v133, 0xE100000000000000, aBlock);
    0xE100000000000000, v135, v136, v137, v138, v139, v140, v141;
    *(v131 + 14) = v134;
    *(v131 + 22) = 2112;
    *(v131 + 24) = v121;
    *v132 = v121;
    v142 = v121;
    _os_log_impl(&_mh_execute_header, v122, v123, "notificationCenter.retainNotification {reminderID: %{public}s, skipBanner: %{public}s, content: %@}", v131, 0x20u);
    sub_1000050A4(v132, &unk_100938E70, &unk_100797230);
    v58 = v187;

    swift_arrayDestroy();
    v59 = v186;
  }

  v143 = *(v180 + 16);
  v144 = v183[3];
  v145 = v183[4];
  sub_10000F61C(v183, v144);
  (*(v145 + 16))(v144, v145);
  v147 = v146;
  v148 = swift_allocObject();
  v150 = v191;
  v149 = v192;
  *(v148 + 16) = v192;
  *(v148 + 24) = v150;
  *(v148 + 32) = v116;
  *(v148 + 40) = v118;
  *(v148 + 48) = v80;
  v151 = v182;
  *(v148 + 56) = v181;
  *(v148 + 64) = v151;
  sub_10014D92C(v149, v150);
  v152 = v177;
  v153 = String._bridgeToObjectiveC()();
  v152, v154, v155, v156, v157, v158, v159, v160;
  v161 = String._bridgeToObjectiveC()();
  v147, v162, v163, v164, v165, v166, v167, v168;
  v198 = sub_1002A7054;
  v199 = v148;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  v197 = &unk_1008ECD98;
  v169 = _Block_copy(aBlock);

  [v143 retainNotificationWithIdentifier:v153 reference:v161 content:v121 skipBanner:v184 completion:v169];
  _Block_release(v169);

  v178(v59, v58);
  (*(v189 + 8))(v188, v190);
  return v185;
}

void sub_1002A2B0C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v105 = a7;
  v106 = a8;
  v108 = a6;
  v107 = a5;
  v109 = a2;
  v11 = type metadata accessor for DateComponents();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TimeZone();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date();
  __chkstk_darwin(v21, v22);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006654(v27, qword_1009403F0);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v110[0] = v31;
      *v30 = 136315138;
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v34 = v33;
      v35 = a1;
      v36 = sub_10000668C(v32, v33, v110);
      v34, v37, v38, v39, v40, v41, v42, v43;
      *(v30 + 4) = v36;
      a1 = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "RDAlarmNotificationConsumer: Unable to post Alarm notification {error: %s}", v30, 0xCu);
      sub_10000607C(v31);
    }

    else
    {
    }

    v44 = v109;
  }

  else
  {
    v95 = a4;
    v45 = v107;
    v96 = v24;
    v97 = v23;
    v98 = v20;
    v101 = v17;
    v99 = v16;
    v100 = v15;
    v102 = v12;
    v104 = a3;
    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100006654(v46, qword_1009403F0);
    v47 = v45;

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v47, v50, v51, v52, v53, v54, v55, v56;
    v57 = os_log_type_enabled(v48, v49);
    v58 = v11;
    v59 = v101;
    v103 = 0;
    if (v57)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v110[0] = v61;
      *v60 = 136446210;
      *(v60 + 4) = sub_10000668C(v95, v47, v110);
      _os_log_impl(&_mh_execute_header, v48, v49, "RDAlarmNotificationConsumer: Posted Alarm notification {reminderID: %{public}s}", v60, 0xCu);
      sub_10000607C(v61);
      v44 = v109;

      a1 = v103;

      v62 = v102;
    }

    else
    {

      v62 = v102;
      v44 = v109;
    }

    if (v108 == 2)
    {
      v63 = v44;
      v64 = objc_opt_self();
      Date.init()();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v96 + 8))(v26, v97);
      v66 = v98;
      static TimeZone.current.getter();
      v67 = TimeZone._bridgeToObjectiveC()().super.isa;
      (*(v59 + 8))(v66, v99);
      v68 = [v64 rem_dateComponentsWithDate:isa timeZone:v67 isAllDay:0];

      v69 = v100;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      DateComponents.hour.getter();
      LOBYTE(v67) = v70;
      (*(v62 + 8))(v69, v58);
      if (v67)
      {
        v71 = v106;

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        v71, v74, v75, v76, v77, v78, v79, v80;
        v81 = os_log_type_enabled(v72, v73);
        v82 = v105;
        if (v81)
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v110[0] = v84;
          *v83 = 136315138;
          *(v83 + 4) = sub_10000668C(v82, v71, v110);
          _os_log_impl(&_mh_execute_header, v72, v73, "Failed to compute current hour when posting analytics to event com.apple.reminders.notification with {type: %s}", v83, 0xCu);
          sub_10000607C(v84);
        }
      }

      else
      {
        type metadata accessor for Analytics();
        sub_1000F5104(&unk_100939240, &unk_100798990);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100791340;
        *(inited + 32) = 1701869940;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = String._bridgeToObjectiveC()();
        *(inited + 56) = 0x4872656767697274;
        *(inited + 64) = 0xEB0000000072756FLL;
        *(inited + 72) = Int._bridgeToObjectiveC()();
        v86 = sub_10038D880(inited);
        swift_setDeallocating();
        sub_1000F5104(&unk_100939250, &unk_100795D30);
        swift_arrayDestroy();
        static Analytics.postEvent(_:payload:duration:)();
        v86, v87, v88, v89, v90, v91, v92, v93;
      }

      v44 = v63;
      a1 = v103;
    }
  }

  if (v44)
  {
    v44(a1);
  }
}

void sub_1002A32C8(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = (aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v6 + 32);
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12, v15);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v17, v12);
  if (v18)
  {
    if (qword_100935E00 == -1)
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
  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_1009403F0);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  a2, v23, v24, v25, v26, v27, v28, v29;
  if (os_log_type_enabled(v21, v22))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136446210;
    *(v30 + 4) = sub_10000668C(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v21, v22, "notificationCenter.releaseNotification {identifier: %{public}s}", v30, 0xCu);
    sub_10000607C(v31);
  }

  v32 = *(v6 + 16);
  v33 = a3[3];
  v34 = a3[4];
  sub_10000F61C(a3, v33);
  (*(v34 + 16))(v33, v34);
  v36 = v35;
  v37 = String._bridgeToObjectiveC()();
  v38 = String._bridgeToObjectiveC()();
  v36, v39, v40, v41, v42, v43, v44, v45;
  if (a4)
  {
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100042968;
    aBlock[3] = &unk_1008ECD48;
    a4 = _Block_copy(aBlock);
  }

  [v32 releaseNotificationWithIdentifier:v37 reference:v38 completion:a4];
  _Block_release(a4);
}

uint64_t sub_1002A3604()
{
  swift_unknownObjectRelease();

  sub_10000CC4C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96) | (*(v0 + 100) << 32), v1, v2);

  return swift_deallocClassInstance();
}

void sub_1002A3694(uint64_t a1, void *a2)
{
  v494 = a2;
  v4 = type metadata accessor for Date();
  v481 = *(v4 - 8);
  v482 = v4;
  __chkstk_darwin(v4, v5);
  v475 = &v473 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v476 = &v473 - v9;
  v474 = v10;
  __chkstk_darwin(v11, v12);
  v493 = &v473 - v13;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v496 = &v473 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  isa = v18[-1].isa;
  __chkstk_darwin(v18, v19);
  v492 = (&v473 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v504 = type metadata accessor for REMNotificationIdentifier();
  v499 = *(v504 - 1);
  __chkstk_darwin(v504, v21);
  v497 = &v473 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v503 = (&v473 - v25);
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  v29 = __chkstk_darwin(v26, v28);
  v31 = (&v473 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v490 = v2;
  v32 = *(v2 + 32);
  *v31 = v32;
  (*(v27 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v26, v29);
  v480 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v31, v26);
  if ((v32 & 1) == 0)
  {
LABEL_118:
    __break(1u);
LABEL_119:
    swift_once();
    goto LABEL_44;
  }

  v483 = v18;
  v484 = v15;
  v487 = v14;
  v18 = *(a1 + 16);
  v33 = &_swiftEmptyArrayStorage;
  v501 = v18;
  v498 = a1;
  if (v18)
  {
    *&v508 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v18, 0);
    v33 = v508;
    v502 = v499 + 8;
    v34 = (a1 + 64);
    v35 = v18;
    do
    {
      v36 = *(v34 - 3);
      v37 = *(v34 - 2);
      v38 = *(v34 - 1);
      v39 = *v34;
      v40 = *(v34 - 4);
      sub_1001A3944(v36, v37, v38, v39);
      v41 = v503;
      REMNotificationIdentifier.init(reminder:)();
      v506 = REMNotificationIdentifier.requestIdentifier.getter();
      *&v505 = v42;
      sub_1001A39AC(v36, v37, v38, v39);

      (*v502)(v41, v504);
      *&v508 = v33;
      v44 = *v33->clientIdentity;
      v43 = *&v33->clientIdentity[8];
      if (v44 >= v43 >> 1)
      {
        sub_100026EF4((v43 > 1), v44 + 1, 1);
        v33 = v508;
      }

      v34 += 40;
      *v33->clientIdentity = v44 + 1;
      v45 = v33 + 16 * v44;
      v46 = v505;
      *(v45 + 4) = v506;
      *(v45 + 5) = v46;
      v35 = (v35 - 1);
    }

    while (v35);
    v18 = v501;
  }

  v485 = sub_1001A5660(v33);
  v33, v47, v48, v49, v50, v51, v52, v53;
  if (v18)
  {
    v54 = 0;
    v55 = (v498 + 66);
    v56 = &_swiftEmptyArrayStorage;
    v506 = (v498 + 66);
    while (1)
    {
      v500 = v56;
      v57 = v55 + 40 * v54;
      v58 = v54;
      while (1)
      {
        if (v58 >= v18)
        {
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        v54 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_117;
        }

        if (*(v57 - 1))
        {
          goto LABEL_12;
        }

        v59 = *(v57 - 26);
        v60 = *(v57 - 18);
        v61 = *(v57 - 10);
        v62 = *(v57 - 2);
        v63 = *v57;
        v64 = *(v57 - 34);
        sub_1001A3944(v59, v60, v61, v62);
        if (![v64 prefersUrgentPresentationStyleForDateAlarms])
        {
          break;
        }

        sub_1001A39AC(v59, v60, v61, v62);
        v18 = v501;
LABEL_12:
        ++v58;
        v57 += 40;
        if (v54 == v18)
        {
          v56 = v500;
          goto LABEL_24;
        }
      }

      v65 = v500;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v508 = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100253968(0, *v65->clientIdentity + 1, 1);
        v65 = v508;
      }

      v68 = *v65->clientIdentity;
      v67 = *&v65->clientIdentity[8];
      v69 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        *&v505 = v68 + 1;
        sub_100253968((v67 > 1), v68 + 1, 1);
        v69 = v505;
        v65 = v508;
      }

      *v65->clientIdentity = v69;
      v70 = v65 + 40 * v68;
      *(v70 + 4) = v64;
      *(v70 + 5) = v59;
      *(v70 + 6) = v60;
      *(v70 + 7) = v61;
      v70[64] = v62;
      v70[65] = 0;
      v70[66] = v63;
      v18 = v501;
      v56 = v65;
      v55 = v506;
      if (v54 == v501)
      {
LABEL_24:
        v71 = *v56->clientIdentity;
        if (!v71)
        {
          goto LABEL_31;
        }

LABEL_25:
        *&v508 = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v71, 0);
        v72 = v508;
        v502 = v499 + 8;
        v500 = v56;
        v73 = &v56->storeProvider[2];
        do
        {
          v74 = *(v73 - 3);
          v75 = *(v73 - 2);
          v76 = *(v73 - 1);
          v77 = *v73;
          v78 = *(v73 - 4);
          sub_1001A3944(v74, v75, v76, v77);
          v79 = v503;
          REMNotificationIdentifier.init(reminder:)();
          v506 = REMNotificationIdentifier.requestIdentifier.getter();
          *&v505 = v80;
          sub_1001A39AC(v74, v75, v76, v77);

          (*v502)(v79, v504);
          *&v508 = v72;
          v82 = *v72->clientIdentity;
          v81 = *&v72->clientIdentity[8];
          if (v82 >= v81 >> 1)
          {
            sub_100026EF4((v81 > 1), v82 + 1, 1);
            v72 = v508;
          }

          v73 += 40;
          *v72->clientIdentity = v82 + 1;
          v83 = v72 + 16 * v82;
          v84 = v505;
          *(v83 + 4) = v506;
          *(v83 + 5) = v84;
          --v71;
        }

        while (v71);

        v18 = v501;
        goto LABEL_32;
      }
    }
  }

  v56 = &_swiftEmptyArrayStorage;
  v71 = *_swiftEmptyArrayStorage.clientIdentity;
  if (v71)
  {
    goto LABEL_25;
  }

LABEL_31:

  v72 = &_swiftEmptyArrayStorage;
LABEL_32:
  v506 = sub_1001A5660(v72);
  v72, v85, v86, v87, v88, v89, v90, v91;
  v92 = v494[3];
  v93 = v494[4];
  sub_10000F61C(v494, v92);
  v478 = (*(v93 + 16))(v92, v93);
  v479 = v94;
  v95 = swift_allocObject();
  v489 = v95;
  *(v95 + 16) = 0;
  v491 = (v95 + 16);
  v96 = swift_allocObject();
  v486 = v96;
  *(v96 + 16) = 0;
  v488 = (v96 + 16);
  v97 = *(v490 + 40);
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if (v97)
  {

    v99 = dispatch_group_create();
    v100 = v491;
    v101 = *v491;
    *v491 = v99;

    if (*v100)
    {
      dispatch_group_enter(*v100);
    }

    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    sub_100006654(v102, qword_1009403F0);
    sub_10000A87C(v494, &v508);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v507[0] = v106;
      *v105 = 136446210;
      v107 = v510;
      v108 = v511;
      sub_10000F61C(&v508, v510);
      v109 = v108[2](v107, v108);
      v111 = v110;
      sub_10000607C(&v508);
      v112 = sub_10000668C(v109, v111, v507);
      v111, v113, v114, v115, v116, v117, v118, v119;
      *(v105 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v103, v104, "os_transaction INIT {name: com.apple.remindd.RDAlarmNotificationConsumer.consumeAlarms, producer: %{public}s}", v105, 0xCu);
      sub_10000607C(v106);
      v18 = v501;
    }

    else
    {

      sub_10000607C(&v508);
    }

    v120 = os_transaction_create();
    v121 = *v491;
    if (*v491)
    {
      sub_10000A87C(v494, v507);
      v122 = swift_allocObject();
      sub_100054B6C(v507, (v122 + 2));
      v122[7] = v120;
      *&v505 = v120;
      v122[8] = v486;
      v122[9] = v97;
      v511 = sub_1002A6220;
      v512 = v122;
      *&v508 = _NSConcreteStackBlock;
      *(&v508 + 1) = 1107296256;
      v509 = sub_100019200;
      v510 = &unk_1008ECD20;
      v123 = _Block_copy(&v508);

      v124 = v121;
      swift_unknownObjectRetain();

      v125 = v492;
      static DispatchQoS.unspecified.getter();
      v515[0] = &_swiftEmptyArrayStorage;
      sub_10000AB38();
      sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      sub_10000AB90();
      v126 = v496;
      v127 = v487;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v123);
      swift_unknownObjectRelease();

      (*v484->storeController)(v126, v127);
      v128 = v125;
      p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
      (*(isa + 8))(v128, v483);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  v514 = &_swiftEmptyArrayStorage;
  v513 = _swiftEmptySetSingleton;
  if (p_class_meths[448] != -1)
  {
    goto LABEL_119;
  }

LABEL_44:
  v129 = type metadata accessor for Logger();
  v130 = sub_100006654(v129, qword_1009403F0);
  sub_10000A87C(v494, &v508);
  v131 = v485;
  swift_bridgeObjectRetain_n();
  isa = v130;
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *&v507[0] = swift_slowAlloc();
    *v134 = 136446722;
    v135 = v510;
    v136 = v511;
    sub_10000F61C(&v508, v510);
    v137 = v136[2](v135, v136);
    v139 = v138;
    sub_10000607C(&v508);
    v140 = sub_10000668C(v137, v139, v507);
    v139, v141, v142, v143, v144, v145, v146, v147;
    *(v134 + 4) = v140;
    *(v134 + 12) = 2080;
    v148 = Set.description.getter();
    v150 = v149;
    v151 = sub_10000668C(v148, v149, v507);
    v150, v152, v153, v154, v155, v156, v157, v158;
    *(v134 + 14) = v151;
    *(v134 + 22) = 2050;
    v159 = *(v131 + 16);
    v131, v160, v161, v162, v163, v164, v165, v166;
    *(v134 + 24) = v159;
    v131, v167, v168, v169, v170, v171, v172, v173;
    _os_log_impl(&_mh_execute_header, v132, v133, "RDAlarmNotificationConsumer {identifier: %{public}s allowedSet: %s, count %{public}ld}", v134, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(&v508);
  }

  sub_10000A87C(v494, &v508);
  v174 = v506;
  swift_bridgeObjectRetain_n();
  v175 = Logger.logObject.getter();
  v176 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    *&v507[0] = swift_slowAlloc();
    *v177 = 136446722;
    v178 = v510;
    v179 = v511;
    sub_10000F61C(&v508, v510);
    v180 = v179[2](v178, v179);
    v182 = v181;
    sub_10000607C(&v508);
    v183 = sub_10000668C(v180, v182, v507);
    v182, v184, v185, v186, v187, v188, v189, v190;
    *(v177 + 4) = v183;
    *(v177 + 12) = 2080;
    v191 = Set.description.getter();
    v193 = v192;
    v194 = sub_10000668C(v191, v192, v507);
    v193, v195, v196, v197, v198, v199, v200, v201;
    *(v177 + 14) = v194;
    *(v177 + 22) = 2050;
    v202 = *v174->clientIdentity;
    v174, v203, v204, v205, v206, v207, v208, v209;
    *(v177 + 24) = v202;
    v174, v210, v211, v212, v213, v214, v215, v216;
    _os_log_impl(&_mh_execute_header, v175, v176, "RDAlarmNotificationConsumer {identifier: %{public}s createSet: %s, count: %{public}ld}", v177, 0x20u);
    swift_arrayDestroy();

    if (v18)
    {
LABEL_49:
      v496 = (v498 + 32);
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v224 = 0;
      v500 = (v499 + 8);
      *&v505 = &v506->clientIdentity[40];
      v492 = &_swiftEmptyArrayStorage;
      *&v225 = 136446466;
      v477 = v225;
      while (1)
      {
        v502 = v224;
        v245 = &v496[40 * v224];
        v246 = *v245;
        v247 = *(v245 + 1);
        v248 = *(v245 + 2);
        v249 = *(v245 + 3);
        v250 = v245[32];
        v251 = v245[33];
        LOBYTE(v245) = v245[34];
        v515[0] = v246;
        v515[1] = v247;
        v515[2] = v248;
        v515[3] = v249;
        v516 = v250;
        v517 = v251;
        v518 = v245;
        v252 = v246;
        sub_1001A3944(v247, v248, v249, v250);
        v253 = v497;
        REMNotificationIdentifier.init(reminder:)();
        v254 = REMNotificationIdentifier.requestIdentifier.getter();
        v256 = v255;
        v257 = v500->super.isa;
        (v500->super.isa)(v253, v504);
        if (*v506->clientIdentity)
        {
          v499 = v247;
          LODWORD(v498) = v250;
          v258 = v506;
          Hasher.init(_seed:)();
          String.hash(into:)();
          v259 = Hasher._finalize()();
          v266 = -1 << v258->clientIdentity[16];
          v267 = v259 & ~v266;
          if ((*(v505 + ((v267 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v267))
          {
            v268 = ~v266;
            while (1)
            {
              v269 = (*&v506->clientIdentity[32] + 16 * v267);
              v270 = v269[1];
              v271 = *v269 == v254 && v270 == v256;
              if (v271 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v267 = (v267 + 1) & v268;
              if (((*(v505 + ((v267 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v267) & 1) == 0)
              {
                goto LABEL_62;
              }
            }

            v256, v270, v260, v261, v262, v263, v264, v265;
            v272 = v252;
            v273 = v503;
            REMNotificationIdentifier.init(reminder:)();
            v274 = REMNotificationIdentifier.requestIdentifier.getter();
            v276 = v275;
            v257(v273, v504);
            v277 = v513;

            LOBYTE(v273) = sub_100240BDC(v274, v276, v277);
            v277, v278, v279, v280, v281, v282, v283, v284;
            if (v273)
            {

              v285 = Logger.logObject.getter();
              v286 = static os_log_type_t.default.getter();
              v276, v287, v288, v289, v290, v291, v292, v293;
              LODWORD(v487) = v286;
              v294 = os_log_type_enabled(v285, v286);
              v244 = v501;
              v295 = v499;
              if (v294)
              {
                v296 = swift_slowAlloc();
                v483 = v285;
                v297 = v296;
                *&v508 = swift_slowAlloc();
                v484 = v249;
                *v297 = v477;
                v298 = sub_10000668C(v274, v276, &v508);
                v276, v299, v300, v301, v302, v303, v304, v305;
                *(v297 + 4) = v298;
                *(v297 + 12) = 2082;

                v306 = Set.description.getter();
                v308 = v307;
                v277, v307, v309, v310, v311, v312, v313, v314;
                v315 = sub_10000668C(v306, v308, &v508);
                v308, v316, v317, v318, v319, v320, v321, v322;
                *(v297 + 14) = v315;
                v323 = v483;
                _os_log_impl(&_mh_execute_header, v483, v487, "RDAlarmNotificationConsumer skipping retain on alarm because already retained alarm for reminder in this consumeAlarms() run { identifier: %{public}s identifiersPresentedInThisRun:%{public}s }", v297, 0x16u);
                swift_arrayDestroy();

                sub_1001A39AC(v295, v248, v484, v498);
              }

              else
              {

                sub_1001A39AC(v295, v248, v249, v498);
                v276, v334, v335, v336, v337, v338, v339, v340;
              }
            }

            else
            {
              v244 = v501;
              if (*v491)
              {
                dispatch_group_enter(*v491);
              }

              v324 = v489;
              *v488 = 1;

              v325 = sub_1002A1940(v515, v494, sub_1002A713C, v324);

              v326 = v498;
              if (v325)
              {
                v492 = v272;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v514 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v514 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v492 = v514;
              }

              swift_beginAccess();
              sub_100378434(v507, v274, v276);
              swift_endAccess();

              sub_1001A39AC(v499, v248, v249, v326);
              *(&v507[0] + 1), v327, v328, v329, v330, v331, v332, v333;
            }

            goto LABEL_52;
          }

LABEL_62:

          v226 = v499;
          v227 = v248;
          v228 = v249;
          v229 = v498;
        }

        else
        {

          v226 = v247;
          v227 = v248;
          v228 = v249;
          v229 = v250;
        }

        sub_1001A39AC(v226, v227, v228, v229);
        v256, v230, v231, v232, v233, v234, v235, v236;
        v244 = v501;
LABEL_52:
        v224 = v502 + 1;
        if (v502 + 1 == v244)
        {
          v506, v237, v238, v239, v240, v241, v242, v243;
          v341 = v492;
          goto LABEL_77;
        }
      }
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(&v508);
    if (v18)
    {
      goto LABEL_49;
    }
  }

  v506, v217, v218, v219, v220, v221, v222, v223;
  v341 = &_swiftEmptyArrayStorage;
LABEL_77:
  v342 = v491;
  swift_beginAccess();
  v343 = v485;
  if (*v342)
  {
    dispatch_group_enter(*v342);
  }

  v344 = v490;
  sub_10000A87C(v494, &v508);
  v345 = swift_allocObject();
  v345[2] = v343;
  sub_100054B6C(&v508, (v345 + 3));
  v346 = v489;
  v347 = v486;
  v345[8] = v489;
  v345[9] = v347;
  v345[10] = v344;

  v348 = v479;
  sub_1005260B0(v478, v479, sub_1002A6160, v345);

  v348, v349, v350, v351, v352, v353, v354, v355;
  v363 = *(v346 + 16);
  if (v363)
  {
    dispatch_group_leave(v363);
  }

  if (!(v341 >> 62))
  {
    if (*((v341 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_83;
    }

LABEL_121:
    v341, v356, v357, v358, v359, v360, v361, v362;
LABEL_122:
    v465 = v513;

    v465, v466, v467, v468, v469, v470, v471, v472;
    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_121;
  }

LABEL_83:
  v504 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v490 + 48)];
  Date.init()();
  if (v341 >> 62)
  {
    v364 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v364 = *((v341 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v492 = v341;
  *&v505 = v341 >> 62;
  if (v364)
  {
    *&v508 = &_swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    if (v364 < 0)
    {
      __break(1u);
      goto LABEL_125;
    }

    v365 = 0;
    do
    {
      if ((v341 & 0xC000000000000001) != 0)
      {
        v366 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v366 = *&v341->clientIdentity[8 * v365 + 16];
      }

      v367 = v366;
      ++v365;
      v368 = [v366 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v364 != v365);
    v369 = v508;
  }

  else
  {

    v369 = &_swiftEmptyArrayStorage;
  }

  v371 = v481;
  v370 = v482;
  v372 = v476;
  v373 = (v481 + 16);
  v500 = *(v481 + 16);
  (v500)(v476, v493, v482);

  v374 = Logger.logObject.getter();
  v375 = static os_log_type_t.default.getter();
  v369, v376, v377, v378, v379, v380, v381, v382;
  v383 = os_log_type_enabled(v374, v375);
  v503 = v369;
  v501 = v373;
  if (v383)
  {
    v384 = swift_slowAlloc();
    *&v508 = swift_slowAlloc();
    *v384 = 136446466;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v385 = Array.description.getter();
    v387 = v386;
    v388 = sub_10000668C(v385, v386, &v508);
    v387, v389, v390, v391, v392, v393, v394, v395;
    *(v384 + 4) = v388;
    *(v384 + 12) = 2082;
    v396 = Date.description.getter();
    v398 = v397;
    v502 = *(v371 + 8);
    (v502)(v372, v370);
    v399 = sub_10000668C(v396, v398, &v508);
    v398, v400, v401, v402, v403, v404, v405, v406;
    *(v384 + 14) = v399;
    _os_log_impl(&_mh_execute_header, v374, v375, "Updating lastBannerPresentationDate {reminderIDs: %{public}s, lastBannerPresentationDate: %{public}s}", v384, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v502 = *(v371 + 8);
    (v502)(v372, v370);
  }

  v407 = objc_allocWithZone(REMSaveRequest);
  v408 = [v407 initWithStore:v504];
  [(RDXPCStorePerformer *)v408 setAuthor:RDNotificationConsumerLastBannerPresentationDateAuthor];
  [(RDXPCStorePerformer *)v408 setUpdateLastModifiedDates:0];
  v506 = v408;
  [(RDXPCStorePerformer *)v408 setSyncToCloudKit:0];
  v409 = v492;
  v492, v410, v411, v412, v413, v414, v415, v416;
  if (v505)
  {
    v425 = _CocoaArrayWrapper.endIndex.getter();
    if (!v425)
    {
LABEL_112:
      v409, v417, v418, v419, v420, v421, v422, v423;
      sub_10000A87C(v494, &v508);
      v437 = Logger.logObject.getter();
      v438 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v437, v438))
      {
        v439 = swift_slowAlloc();
        v440 = swift_slowAlloc();
        *&v507[0] = v440;
        *v439 = 136446210;
        v441 = v510;
        v442 = v511;
        sub_10000F61C(&v508, v510);
        v443 = v442[2](v441, v442);
        v445 = v444;
        sub_10000607C(&v508);
        v446 = sub_10000668C(v443, v445, v507);
        v445, v447, v448, v449, v450, v451, v452, v453;
        *(v439 + 4) = v446;
        _os_log_impl(&_mh_execute_header, v437, v438, "os_transaction INIT {name: com.apple.remindd.RDAlarmNotificationConsumer.updateLastBannerPresentationDate, producer: %{public}s}", v439, 0xCu);
        sub_10000607C(v440);
      }

      else
      {

        sub_10000607C(&v508);
      }

      v454 = v500;
      v455 = os_transaction_create();
      v456 = v475;
      v457 = v493;
      v458 = v482;
      (v454)(v475, v493, v482);
      sub_10000A87C(v494, v507);
      v459 = v481;
      v460 = (*(v481 + 80) + 24) & ~*(v481 + 80);
      v461 = (v474 + v460 + 7) & 0xFFFFFFFFFFFFFFF8;
      v462 = swift_allocObject();
      *(v462 + 16) = v503;
      (*(v459 + 32))(v462 + v460, v456, v458);
      sub_100054B6C(v507, v462 + v461);
      *(v462 + ((v461 + 47) & 0xFFFFFFFFFFFFFFF8)) = v455;
      v511 = sub_1002A6174;
      v512 = v462;
      *&v508 = _NSConcreteStackBlock;
      *(&v508 + 1) = 1107296256;
      v509 = sub_100042968;
      v510 = &unk_1008ECCD0;
      v463 = _Block_copy(&v508);
      swift_unknownObjectRetain();

      v464 = v506;
      [(RDXPCStorePerformer *)v506 saveWithQueue:v480 completion:v463];
      _Block_release(v463);

      swift_unknownObjectRelease();
      (v502)(v457, v458);
      goto LABEL_122;
    }
  }

  else
  {
    v425 = *((v409 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v425)
    {
      goto LABEL_112;
    }
  }

  if (v425 >= 1)
  {
    v426 = 0;
    v427 = v409 & 0xC000000000000001;
    *&v424 = 138543362;
    v505 = v424;
    do
    {
      if (v427)
      {
        v430 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v430 = *&v409->clientIdentity[8 * v426 + 16];
      }

      v431 = v430;
      if ([v430 isPhantom])
      {
        v431 = v431;
        v432 = Logger.logObject.getter();
        v433 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v432, v433))
        {
          v434 = swift_slowAlloc();
          v435 = swift_slowAlloc();
          *v434 = v505;
          v436 = [v431 objectID];
          *(v434 + 4) = v436;
          *v435 = v436;
          _os_log_impl(&_mh_execute_header, v432, v433, "Unable to update lastBannerPresentationDate reminder is Phantom {reminderID: %{public}@}", v434, 0xCu);
          sub_1000050A4(v435, &unk_100938E70, &unk_100797230);
          v409 = v492;

          v429.super.isa = v432;
        }

        else
        {
          v429.super.isa = v431;
          v431 = v432;
        }
      }

      else
      {
        v428 = [(RDXPCStorePerformer *)v506 updateReminder:v431];
        v429.super.isa = Date._bridgeToObjectiveC()().super.isa;
        [v428 setLastBannerPresentationDate:v429.super.isa];
      }

      ++v426;
    }

    while (v425 != v426);
    goto LABEL_112;
  }

LABEL_125:
  __break(1u);
}

void sub_1002A53E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a3 + 16) == 1)
  {
    sub_1002FFEA0();
  }

  sub_1002A6E18(a1);
}

void sub_1002A5444(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = &_swiftEmptyArrayStorage;
  v140 = a6;
  v141 = a4;
  v142 = a3;
  if (v12)
  {
    v144[0] = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return;
    }

    v138 = a2;
    v139 = a5;
    v14 = 0;
    v13 = v144[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = [v15 request];
      v18 = [v17 identifier];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v144[0] = v13;
      v23 = *v13->clientIdentity;
      v22 = *&v13->clientIdentity[8];
      if (v23 >= v22 >> 1)
      {
        sub_100026EF4((v22 > 1), v23 + 1, 1);
        v13 = v144[0];
      }

      ++v14;
      *v13->clientIdentity = v23 + 1;
      v24 = v13 + 16 * v23;
      *(v24 + 4) = v19;
      *(v24 + 5) = v21;
    }

    while (v12 != v14);
    a3 = v142;
    a2 = v138;
    a5 = v139;
  }

  v25 = sub_1001A5660(v13);
  v13, v26, v27, v28, v29, v30, v31, v32;
  if (*(a2 + 16) <= *(v25 + 16) >> 3)
  {
    v144[0] = v25;

    sub_10019BAF4(a2);
    v33 = v25;
  }

  else
  {

    v33 = sub_10019C4D4(a2, v25);
  }

  if (qword_100935E00 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100006654(v34, qword_1009403F0);
  sub_10000A87C(a3, v144);
  swift_bridgeObjectRetain_n();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v139 = a5 + 16;
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v143[0] = swift_slowAlloc();
    *v37 = 136446722;
    v38 = v145;
    v39 = v146;
    sub_10000F61C(v144, v145);
    v40 = (*(v39 + 16))(v38, v39);
    v42 = v41;
    sub_10000607C(v144);
    v43 = sub_10000668C(v40, v42, v143);
    v42, v44, v45, v46, v47, v48, v49, v50;
    *(v37 + 4) = v43;
    *(v37 + 12) = 2080;
    v51 = Set.description.getter();
    v53 = v52;
    v25, v52, v54, v55, v56, v57, v58, v59;
    v60 = sub_10000668C(v51, v53, v143);
    v53, v61, v62, v63, v64, v65, v66, v67;
    *(v37 + 14) = v60;
    *(v37 + 22) = 2050;
    v68 = *(v25 + 16);
    v25, v69, v70, v71, v72, v73, v74, v75;
    *(v37 + 24) = v68;
    v25, v76, v77, v78, v79, v80, v81, v82;
    _os_log_impl(&_mh_execute_header, v35, v36, "RDAlarmNotificationConsumer {identifier: %{public}s currentSet: %s, count: %{public}ld}", v37, 0x20u);
    swift_arrayDestroy();

    a3 = v142;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(v144);
  }

  sub_10000A87C(a3, v144);
  swift_bridgeObjectRetain_n();
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v143[0] = swift_slowAlloc();
    *v85 = 136446722;
    v86 = v145;
    v87 = v146;
    sub_10000F61C(v144, v145);
    v88 = (*(v87 + 16))(v86, v87);
    v90 = v89;
    sub_10000607C(v144);
    v91 = sub_10000668C(v88, v90, v143);
    v90, v92, v93, v94, v95, v96, v97, v98;
    *(v85 + 4) = v91;
    *(v85 + 12) = 2080;
    v99 = Set.description.getter();
    v101 = v100;
    v102 = sub_10000668C(v99, v100, v143);
    v101, v103, v104, v105, v106, v107, v108, v109;
    *(v85 + 14) = v102;
    *(v85 + 22) = 2050;
    v110 = *v33->clientIdentity;
    v33, v111, v112, v113, v114, v115, v116, v117;
    *(v85 + 24) = v110;
    v33, v118, v119, v120, v121, v122, v123, v124;
    _os_log_impl(&_mh_execute_header, v83, v84, "RDAlarmNotificationConsumer {identifier: %{public}s removeSet: %s, count: %{public}ld}", v85, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v125 = sub_10000607C(v144);
  }

  __chkstk_darwin(v125, v126);
  v127 = v141;
  v137[2] = v141;
  v137[3] = v128;
  v137[4] = v140;
  v137[5] = a3;
  sub_1002A127C(sub_1002A6FBC, v137, v33);
  v33, v129, v130, v131, v132, v133, v134, v135;
  swift_beginAccess();
  v136 = *(v127 + 16);
  if (v136)
  {
    dispatch_group_leave(v136);
  }
}

uint64_t sub_1002A5A60(uint64_t *a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5)
{
  v8 = *a1;
  v9 = a1[1];
  swift_beginAccess();
  v10 = *(a2 + 16);
  if (v10)
  {
    dispatch_group_enter(v10);
  }

  swift_beginAccess();
  *a3 = 1;

  sub_1002A32C8(v8, v9, a5, sub_1002A6FDC, a2);
}

void sub_1002A5B2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  if (v3)
  {
    dispatch_group_leave(v3);
  }
}

void sub_1002A5B74(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if (a1)
  {
    swift_errorRetain();
    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_1009403F0);
    swift_errorRetain();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    a2, v17, v18, v19, v20, v21, v22, v23;

    if (os_log_type_enabled(v15, v16))
    {
      v24 = swift_slowAlloc();
      v100[0] = swift_slowAlloc();
      *v24 = 136446466;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v25 = Array.description.getter();
      v27 = v26;
      v28 = sub_10000668C(v25, v26, v100);
      v27, v29, v30, v31, v32, v33, v34, v35;
      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = v37;
      v39 = sub_10000668C(v36, v37, v100);
      v38, v40, v41, v42, v43, v44, v45, v46;
      *(v24 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unable to update lastBannerPresentationDate {reminderIDs: %{public}s, error: %s}", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100006654(v47, qword_1009403F0);
    (*(v9 + 16))(v12, a3, v8);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    a2, v50, v51, v52, v53, v54, v55, v56;
    if (os_log_type_enabled(v48, v49))
    {
      v57 = swift_slowAlloc();
      v100[0] = swift_slowAlloc();
      *v57 = 136446466;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v58 = Array.description.getter();
      v60 = v59;
      v61 = sub_10000668C(v58, v59, v100);
      v60, v62, v63, v64, v65, v66, v67, v68;
      *(v57 + 4) = v61;
      *(v57 + 12) = 2082;
      v69 = Date.description.getter();
      v71 = v70;
      (*(v9 + 8))(v12, v8);
      v72 = sub_10000668C(v69, v71, v100);
      v71, v73, v74, v75, v76, v77, v78, v79;
      *(v57 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v48, v49, "Updated lastBannerPresentationDate {reminderIDs: %{public}s, lastBannerPresentationDate: %{public}s}", v57, 0x16u);
      swift_arrayDestroy();
      p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }

  if (p_class_meths[448] != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  sub_100006654(v80, qword_1009403F0);
  sub_10000A87C(a4, v100);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v99 = v84;
    *v83 = 136446210;
    v85 = v101;
    v86 = v102;
    sub_10000F61C(v100, v101);
    v87 = (*(v86 + 16))(v85, v86);
    v89 = v88;
    sub_10000607C(v100);
    v90 = sub_10000668C(v87, v89, &v99);
    v89, v91, v92, v93, v94, v95, v96, v97;
    *(v83 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v81, v82, "os_transaction RELEASE {name: com.apple.remindd.RDAlarmNotificationConsumer.updateLastBannerPresentationDate, producer: %{public}s}", v83, 0xCu);
    sub_10000607C(v84);
  }

  else
  {

    sub_10000607C(v100);
  }
}

void sub_1002A6174(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_1002A5B74(a1, v5, v1 + v4, v6);
}

uint64_t sub_1002A6230(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v160 = a3;
  v165 = a1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v159 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v158 = &v155 - v12;
  __chkstk_darwin(v13, v14);
  v162 = &v155 - v15;
  __chkstk_darwin(v16, v17);
  v156 = &v155 - v18;
  __chkstk_darwin(v19, v20);
  v163 = &v155 - v21;
  __chkstk_darwin(v22, v23);
  v164 = &v155 - v24;
  __chkstk_darwin(v25, v26);
  v28 = &v155 - v27;
  __chkstk_darwin(v29, v30);
  v32 = &v155 - v31;
  v33 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v33 - 8, v34);
  v157 = &v155 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v37);
  v39 = &v155 - v38;
  __chkstk_darwin(v40, v41);
  v43 = &v155 - v42;
  __chkstk_darwin(v44, v45);
  v47 = &v155 - v46;
  v50 = __chkstk_darwin(v48, v49);
  v51 = *(v7 + 56);
  v166 = &v155 - v52;
  v161 = v51;
  v51(v50);
  if (([a2 isSnooze] & 1) == 0)
  {
    sub_10012F78C(a4, v47);
    if ((*(v7 + 48))(v47, 1, v6) != 1)
    {
      v55 = v166;
      sub_1000050A4(v166, &unk_100938850, qword_100795AE0);
      v56 = *(v7 + 32);
      v56(v32, v47, v6);
      v56(v55, v32, v6);
      v161(v55, 0, 1, v6);
      goto LABEL_10;
    }

    sub_1000050A4(v47, &unk_100938850, qword_100795AE0);
  }

  v169 = [a2 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if (swift_dynamicCast())
  {
    sub_100054B6C(v167, v170);
    v53 = v171;
    v54 = v172;
    sub_10000F61C(v170, v171);
    (*(v54 + 8))(v165, v53, v54);
    if ((*(v7 + 48))(v43, 1, v6) == 1)
    {
      sub_1000050A4(v43, &unk_100938850, qword_100795AE0);
      sub_10000607C(v170);
      v55 = v166;
    }

    else
    {
      v57 = v166;
      sub_1000050A4(v166, &unk_100938850, qword_100795AE0);
      v58 = *(v7 + 32);
      v58(v28, v43, v6);
      v59 = v28;
      v55 = v57;
      v58(v57, v59, v6);
      v161(v57, 0, 1, v6);
      sub_10000607C(v170);
    }
  }

  else
  {
    v168 = 0;
    memset(v167, 0, sizeof(v167));
    sub_1000050A4(v167, &qword_10093A718, &qword_100797B90);
    v55 = v166;
  }

LABEL_10:
  sub_10012F78C(v55, v39);
  v60 = *(v7 + 48);
  v61 = v60(v39, 1, v6);
  v62 = v162;
  if (v61 == 1)
  {
    sub_1000050A4(v39, &unk_100938850, qword_100795AE0);
    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100006654(v63, qword_1009403F0);
    v64 = a2;
    v65 = v165;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.fault.getter();

    v68 = os_log_type_enabled(v66, v67);
    v69 = v166;
    if (v68)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v170[0] = v72;
      *v70 = 138412546;
      *(v70 + 4) = v64;
      *v71 = v64;
      *(v70 + 12) = 2080;
      v73 = v64;
      v74 = [v65 description];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v78 = sub_10000668C(v75, v77, v170);
      v77, v79, v80, v81, v82, v83, v84, v85;
      *(v70 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v66, v67, "Unable to determine fireDate. An alarm without fireDate shouldn't have reached here. {alarm: %@, reminder: %s}", v70, 0x16u);
      sub_1000050A4(v71, &unk_100938E70, &unk_100797230);

      sub_10000607C(v72);
    }

    sub_1000050A4(v69, &unk_100938850, qword_100795AE0);
    return 2;
  }

  else
  {
    v87 = *(v7 + 32);
    v87(v164, v39, v6);
    v88 = [v165 lastBannerPresentationDate];
    if (v88)
    {
      v89 = v156;
      v90 = v88;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v91 = v157;
      v87(v157, v89, v6);
      v161(v91, 0, 1, v6);
      v92 = v163;
      v87(v163, v91, v6);
      v94 = v159;
      v93 = v160;
    }

    else
    {
      v95 = v157;
      v161(v157, 1, 1, v6);
      v92 = v163;
      static Date.distantPast.getter();
      v96 = v60(v95, 1, v6);
      v94 = v159;
      v93 = v160;
      if (v96 != 1)
      {
        sub_1000050A4(v95, &unk_100938850, qword_100795AE0);
      }
    }

    v97 = v164;
    if (static Date.< infix(_:_:)())
    {
      LODWORD(v165) = static Date.< infix(_:_:)();
    }

    else
    {
      LODWORD(v165) = 0;
    }

    if (qword_100935E00 != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    sub_100006654(v98, qword_1009403F0);
    v99 = *(v7 + 16);
    v99(v62, v92, v6);
    v100 = v62;
    v101 = v158;
    v99(v158, v97, v6);
    v99(v94, v93, v6);
    v102 = v94;
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v170[0] = v161;
      *v105 = 136446978;
      LODWORD(v159) = v104;
      v106 = Date.description.getter();
      v108 = v107;
      v109 = v100;
      v110 = *(v7 + 8);
      v110(v109, v6);
      v111 = sub_10000668C(v106, v108, v170);
      v108, v112, v113, v114, v115, v116, v117, v118;
      *(v105 + 4) = v111;
      *(v105 + 12) = 2082;
      v119 = Date.description.getter();
      v121 = v120;
      v110(v101, v6);
      v122 = sub_10000668C(v119, v121, v170);
      v121, v123, v124, v125, v126, v127, v128, v129;
      *(v105 + 14) = v122;
      *(v105 + 22) = 2082;
      v130 = Date.description.getter();
      v132 = v131;
      v110(v102, v6);
      v133 = sub_10000668C(v130, v132, v170);
      v132, v134, v135, v136, v137, v138, v139, v140;
      *(v105 + 24) = v133;
      *(v105 + 32) = 2082;
      v141 = v166;
      if (v165)
      {
        v142 = 89;
      }

      else
      {
        v142 = 78;
      }

      v143 = sub_10000668C(v142, 0xE100000000000000, v170);
      0xE100000000000000, v144, v145, v146, v147, v148, v149, v150;
      *(v105 + 34) = v143;
      _os_log_impl(&_mh_execute_header, v103, v159, "allowBanner? {lastBannerPresentationDate: %{public}s, fireDate: %{public}s, now: %{public}s, showBanner: %{public}s}", v105, 0x2Au);
      swift_arrayDestroy();

      v97 = v164;
    }

    else
    {

      v151 = v100;
      v110 = *(v7 + 8);
      v110(v102, v6);
      v110(v101, v6);
      v110(v151, v6);
      v141 = v166;
    }

    v152 = v163;
    Date.timeIntervalSince(_:)();
    v154 = v153;
    v110(v152, v6);
    v110(v97, v6);
    sub_1000050A4(v141, &unk_100938850, qword_100795AE0);
    if (v154 >= 10.0)
    {
      if (v165)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }
}

void sub_1002A6E18(uint64_t a1)
{
  if (qword_100935E00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_1009403F0);
  sub_10000A87C(a1, v21);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136446210;
    v7 = v22;
    v8 = v23;
    sub_10000F61C(v21, v22);
    v9 = (*(v8 + 16))(v7, v8);
    v11 = v10;
    sub_10000607C(v21);
    v12 = sub_10000668C(v9, v11, &v20);
    v11, v13, v14, v15, v16, v17, v18, v19;
    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "os_transaction RELEASE {name: com.apple.remindd.RDAlarmNotificationConsumer.consumeAlarms, producer: %{public}s}", v5, 0xCu);
    sub_10000607C(v6);
  }

  else
  {

    sub_10000607C(v21);
  }
}

unint64_t sub_1002A70D0()
{
  result = qword_1009404F0;
  if (!qword_1009404F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009404F0);
  }

  return result;
}

id REMCDSavedReminder.parentSavedReminderObjectID.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v7, v8).n128_u64[0];
  v11 = &v18 - v10;
  v12 = [v1 parentSavedReminderIdentifier];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 32))(v11, v6, v2);
  type metadata accessor for REMCDSavedReminder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = [ObjCClassFromMetadata objectIDWithUUID:isa];

  (*(v3 + 8))(v11, v2);
  return v16;
}

uint64_t static REMCDSavedReminder.keyPathsForValuesAffectingEffectiveMinimumSupportedVersion()()
{
  v0 = sub_1001A5660(&off_1008E2A28);
  sub_100034610(&unk_1008E2A48);
  return v0;
}

Swift::Bool __swiftcall REMCDSavedReminder.isConnected(toAccountObject:)(NSMutableDictionary toAccountObject)
{
  v3 = [v1 remObjectID];
  if (v3)
  {
    v4 = v3;
    if ([(objc_class *)toAccountObject.super.super.isa objectForKeyedSubscript:v3])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      if (swift_dynamicCast())
      {

        LOBYTE(v3) = v12 == 1;
        return v3;
      }
    }

    else
    {
      sub_1000050A4(v15, &qword_100939ED0, &qword_100791B10);
    }

    v5 = v4;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)toAccountObject.super.super.isa setObject:isa forKeyedSubscript:v5];

    v7 = [v1 template];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 isConnectedToAccountObject:toAccountObject.super.super.isa];

      *&v15[0] = v9;
      type metadata accessor for REMObjectIsConnectedState(0);
      v10 = v5;
      [(objc_class *)toAccountObject.super.super.isa setObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() forKeyedSubscript:v10];

      swift_unknownObjectRelease();
      LOBYTE(v3) = v9;
    }

    else
    {

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

uint64_t sub_1002A767C()
{
  v2 = [v1 metadata];
  if (v2)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for RDSavedReminder(0);
    sub_100029F90(&qword_100940528, type metadata accessor for RDSavedReminder, &unk_100798E28);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return sub_10001BBA0(v4, v6);
  }

  else
  {
    v8 = objc_opt_self();
    type metadata accessor for REMCDSavedReminder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = String._bridgeToObjectiveC()();
    [v8 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v10];

    return swift_willThrow();
  }
}

void sub_1002A77E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v9, v10);
  v12 = &v36[-v11];
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17, v18);
  v20 = &v36[-v19];
  *&v23 = __chkstk_darwin(v21, v22).n128_u64[0];
  v25 = &v36[-v24];
  v39 = v2;
  v26 = [v2 parentSavedReminderIdentifier];
  v40 = v5;
  if (v26)
  {
    v27 = v26;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v40;
    (*(v40 + 56))(v25, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v25, 1, 1, v4);
  }

  v28 = *(v9 + 48);
  sub_10018E470(v25, v12);
  v38 = a1;
  sub_10018E470(a1, &v12[v28]);
  v29 = *(v5 + 48);
  if (v29(v12, 1, v4) == 1)
  {
    sub_1000050A4(v25, &unk_100939D90, "8\n\r");
    if (v29(&v12[v28], 1, v4) == 1)
    {
      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      return;
    }
  }

  else
  {
    sub_10018E470(v12, v20);
    if (v29(&v12[v28], 1, v4) != 1)
    {
      v34 = v40;
      (*(v40 + 32))(v8, &v12[v28], v4);
      sub_100029F90(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v34 + 8);
      v35(v8, v4);
      sub_1000050A4(v25, &unk_100939D90, "8\n\r");
      v35(v20, v4);
      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      if (v37)
      {
        return;
      }

      goto LABEL_10;
    }

    sub_1000050A4(v25, &unk_100939D90, "8\n\r");
    (*(v40 + 8))(v20, v4);
  }

  sub_1000050A4(v12, &unk_10093A3D0, &qword_100795770);
LABEL_10:
  sub_10018E470(v38, v16);
  if (v29(v16, 1, v4) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v40 + 8))(v16, v4);
  }

  v31 = v39;
  [v39 setParentSavedReminderIdentifier:isa];

  v32 = [v31 createResolutionTokenMapIfNecessary];
  v33 = String._bridgeToObjectiveC()();
  [v32 updateForKey:v33];
}

id REMCDSavedReminder.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDSavedReminder();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDSavedReminder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDSavedReminder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002A7DB4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v35 = a4;
  v5 = type metadata accessor for REMRemindersListDataView.Diff();
  v36 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v40 = &v31 - v11;
  v12 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v31 - v23;
  v39 = a1;
  v25 = v41;
  sub_1002A81EC(a1);
  if (!v25)
  {
    v33 = v5;
    v34 = v16;
    v41 = v17;
    v32 = v8;
    v26 = v36;
    v27 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v28 = [v37 fetchResultTokenToDiffAgainst];
    sub_100534D44(v28, v40);

    v29 = v41;
    v30 = v34;
    (*(v41 + 16))(v20, v24, v34);
    (*(v26 + 16))(v32, v40, v33);
    sub_1002A8588(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    sub_1002A8588(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v26 + 8))(v40, v33);
    (*(v29 + 8))(v24, v30);
  }
}

uint64_t sub_1002A8194(uint64_t a1)
{
  result = sub_1002A8588(&qword_100940550, &type metadata accessor for REMRemindersListDataView.SiriFoundInAppsInvocation, &protocol conformance descriptor for REMRemindersListDataView.SiriFoundInAppsInvocation);
  *(a1 + 8) = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002A81EC(uint64_t a1)
{
  v34 = a1;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v2 = *(Subtasks - 8);
  v32 = Subtasks;
  v33 = v2;
  __chkstk_darwin(Subtasks, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v13, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v20 = &v31 - v19;
  v21 = _s10PredicatesOMa(0);
  __chkstk_darwin(v21, v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v24 = sub_100043AA8();
  sub_1001A4F3C(v23, _s10PredicatesOMa);
  REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters.sortingStyle.getter();
  v25 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v26 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v26 - 8) + 104))(v16, v25, v26);
  v27 = v32;
  swift_storeEnumTagMultiPayload();
  sub_1005368D8(v12, v16, v20);
  v28 = v33;
  REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters.showCompleted.getter();
  (*(v28 + 104))(v5, enum case for REMRemindersListDataView.FetchSubtasks.off(_:), v27);
  v29 = sub_100536D54(v34, v24, v20, v8, v5, &_swiftEmptyArrayStorage, 0);

  (*(v28 + 8))(v5, v27);
  (*(v35 + 8))(v8, v36);
  sub_1001A4F3C(v20, _s9UtilitiesO12SortingStyleOMa);
  return v29;
}

uint64_t sub_1002A8588(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002A85D0(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC7remindd30REMNSPersistentHistoryTracking_storeController) newBackgroundContextWithAuthor:REMNSPersistentHistoryTrackingAuthor];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1002A8A80;
  *(v7 + 24) = v6;
  v11[4] = sub_1000529DC;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F160;
  v11[3] = &unk_1008ECED8;
  v8 = _Block_copy(v11);

  v9 = v5;

  [v9 performBlockAndWait:v8];

  _Block_release(v8);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

id sub_1002A8A04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMNSPersistentHistoryTracking();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002A8AB0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100940588);
  v1 = sub_100006654(v0, qword_100940588);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1002A8B78(uint64_t a1)
{
  v3 = [*v1 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1002A8D28(a1, v4, 0x40u, 0);
  v4, v6, v7, v8, v9, v10, v11, v12;
  return v5;
}

id sub_1002A8C1C(uint64_t a1)
{
  v3 = [*v1 smartListObjectID];
  if (qword_100935D60 != -1)
  {
    swift_once();
  }

  v4 = sub_1002A8D28(a1, v3, 1u, qword_100974CE0);

  return v4;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002A8CC4@<X0>(void **a1@<X0>, _TtC7remindd19RDXPCStorePerformer **a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for REMSmartListSectionStorageCDIngestor();
  swift_initStackObject();
  result = sub_1004FF6DC(v4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1002A8D28(uint64_t a1, unint64_t a2, unsigned __int8 a3, Class a4)
{
  v5 = v4;
  type metadata accessor for REMCDSmartListSection();
  v9 = sub_10024C42C();
  v10 = sub_10024C888();
  v11 = sub_10024B964(a2, a3);
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  [v12 setAffectedStores:0];
  [v12 setPredicate:v11];

  v14 = sub_10003450C(v9);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14, v16, v17, v18, v19, v20, v21, v22;
  [v12 setPropertiesToFetch:isa];

  v23 = Array._bridgeToObjectiveC()().super.isa;
  [v12 setRelationshipKeyPathsForPrefetching:v23];

  if (a4)
  {
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    a4 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v12 setSortDescriptors:a4];

  v24 = NSManagedObjectContext.fetch<A>(_:)();
  v25 = v4;
  v9, v26, v27, v28, v29, v30, v31, v32;
  v10, v33, v34, v35, v36, v37, v38, v39;

  if (!v4)
  {
    if (qword_100935E08 != -1)
    {
LABEL_28:
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    v41 = sub_100006654(v40, qword_100940588);
    __chkstk_darwin(v41, v42);
    sub_1000F5104(&qword_10094F210, &unk_1007A0140);
    sub_1000060C8(0, &qword_1009405A0, REMSmartListSectionStorage_ptr);
    sub_10000CB48(&qword_1009405A8, &qword_10094F210, &unk_1007A0140, &protocol conformance descriptor for [A]);
    v43 = Sequence.map<A>(skippingError:_:)();
    if (v25)
    {

      v131 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v131 = v43;
    }

    if (v24 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v51 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = 0;
    v25 = &selRef_setPublicLinkLastModifiedDate_;
    while (v51 != v52)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v52 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v53 = *(v24 + 8 * v52 + 32);
      }

      v54 = v53;
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v56 = [v53 smartList];

      ++v52;
      if (v56)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v52 = v55;
      }
    }

    v24, v44, v45, v46, v47, v48, v49, v50;
    sub_1000F5104(&qword_1009405B0, &unk_1007B4EC0);
    sub_10000CB48(&qword_1009405B8, &qword_1009405B0, &unk_1007B4EC0, &protocol conformance descriptor for [A]);
    sub_10000CE28(&qword_1009405C0, &unk_10093F770, off_1008D41E8);
    v57 = Sequence<>.unique()();
    &_swiftEmptyArrayStorage, v58, v59, v60, v61, v62, v63, v64;
    v66 = sub_100516DE8(v57);
    v57, v67, v68, v69, v70, v71, v72, v73;
    v74 = [v66 accountStorages];
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
    v75 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000F5104(&qword_1009405C8, &qword_1007A0150);
    sub_10000CB48(&qword_1009405D0, &qword_1009405C8, &qword_1007A0150, &protocol conformance descriptor for [A : B].Values);
    sub_10000CE28(&qword_10093A910, &unk_10093F580, REMAccountStorage_ptr);
    v76 = Sequence<>.unique()();
    v75, v77, v78, v79, v80, v81, v82, v83;
    v129 = sub_1005302C0(v76);
    v84 = [v66 smartListStorages];
    if (!v84)
    {
      sub_1000060C8(0, &qword_10093A228, REMSmartListStorage_ptr);
      v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = Array._bridgeToObjectiveC()().super.isa;
      v85, v86, v87, v88, v89, v90, v91, v92;
    }

    v93 = [v66 parentListStorages];
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v94 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000F5104(&qword_1009405D8, &qword_1007A0158);
    v130 = v66;
    sub_10000CB48(&qword_1009405E0, &qword_1009405D8, &qword_1007A0158, &protocol conformance descriptor for [A : B].Values);
    sub_10000CE28(&unk_100939BF0, &unk_10094F0C0, REMListStorage_ptr);
    v95 = Sequence<>.unique()();
    v94, v96, v97, v98, v99, v100, v101, v102;
    v103 = sub_1005302EC(v95);
    v104 = objc_allocWithZone(REMSmartListSectionsDataViewInvocationResult);
    v105 = Array._bridgeToObjectiveC()().super.isa;
    v129, v106, v107, v108, v109, v110, v111, v112;
    v113 = Array._bridgeToObjectiveC()().super.isa;
    v103, v114, v115, v116, v117, v118, v119, v120;
    v121 = Array._bridgeToObjectiveC()().super.isa;
    v131, v122, v123, v124, v125, v126, v127, v128;
    v5 = [v104 initWithAccountStorages:v105 smartListStorages:v84 groupStorages:v113 smartListSectionStorages:v121];
  }

  return v5;
}

void sub_1002A9558(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t (*a4)(void, void, void)@<X4>, uint64_t a5@<X8>)
{
  v172 = a2;
  v175 = a4;
  v160 = a3;
  v163 = a5;
  v6 = type metadata accessor for REMRemindersListDataView.DatesModel();
  v164 = *(v6 - 8);
  v165 = v6;
  __chkstk_darwin(v6, v7);
  v161 = v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v162 = v149 - v11;
  v12 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v12 - 8, v13);
  v158 = v149 - v14;
  v174 = type metadata accessor for REMRemindersListDataView.DatesModel.Group();
  v159 = *(v174 - 8);
  __chkstk_darwin(v174, v15);
  v170 = v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v173 = v149 - v19;
  v20 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v168 = *(v20 - 8);
  v169 = v20;
  __chkstk_darwin(v20, v21);
  v167 = (v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23, v24);
  v26 = v149 - v25;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v166 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v28);
  v30 = v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for REMRemindersListDataView.Diff();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31, v33);
  v35 = v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v37);
  v39 = v149 - v38;
  v40 = v176;
  v41 = sub_1002AA40C(a1, v175);
  if (v40)
  {
    return;
  }

  v151 = v30;
  v152 = Configuration;
  v176 = v41;
  v155 = v26;
  v153 = v35;
  v157 = v39;
  v154 = v32;
  v156 = v31;
  sub_1002AC9DC();
  v42 = a1;
  v44 = v43;
  v46 = v45;
  v47 = [v171 fetchResultTokenToDiffAgainst];
  v48 = v157;
  sub_100534D44(v47, v157);

  v171 = 0;
  v150 = v46;
  v49 = v151;
  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  v50 = v155;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (*v166->storeController)(v49, v152);
  v52 = v167;
  v51 = v168;
  v53 = v169;
  (*(v168 + 16))(v167, v50, v169);
  v54 = (*(v51 + 88))(v52, v53);
  v149[1] = v44;
  if (v54 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v88 = v153;
    if (v54 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      (*(v51 + 96))(v52, v53);
      sub_10053E698(*v52, v48, v42, v160, 0);
      (*(v51 + 8))(v50, v53);
      v90 = v164;
      v89 = v165;
      v91 = v161;
      v92 = v162;
      v93 = v156;
      v94 = v154;
LABEL_43:
      REMRemindersListDataView.DatesModel.init(groups:completedRemindersCount:prefetchedReminders:prefetchedDueReminders:)();
      (*(v90 + 16))(v91, v92, v89);
      v135 = v157;
      (*(v94 + 16))(v88, v157, v93);
      sub_1002ACC1C(&qword_100940638, &type metadata accessor for REMRemindersListDataView.DatesModel, &protocol conformance descriptor for REMRemindersListDataView.DatesModel);
      sub_1002ACC1C(&qword_100940640, &type metadata accessor for REMRemindersListDataView.DatesModel, &protocol conformance descriptor for REMRemindersListDataView.DatesModel);
      REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
      (*(v90 + 8))(v92, v89);
      (*(v94 + 8))(v135, v156);
      return;
    }

    v94 = v154;
    if (v54 != enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
    {
      v90 = v164;
      v136 = v161;
      v137 = v162;
      v138 = v156;
      if (v54 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
      {
        goto LABEL_57;
      }

      (*(v51 + 8))(v155, v53);
      v93 = v138;
      v91 = v136;
      v89 = v165;
      v92 = v137;
      goto LABEL_43;
    }

    v166 = v42;
    (*(v51 + 96))(v52, v53);
    v172 = *v52;
    v95 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100226AD8(v52 + *(v95 + 48), v158);
    v96 = *v176->clientIdentity;
    if (!v96)
    {
      v100 = &_swiftEmptyArrayStorage;
LABEL_48:
      v139 = v166;
      v140 = v160;
      sub_10053DB98(v172, v100, v166, v160, 0);
      v141 = v158;
      sub_10053EBE4(v158, v100, v139, v140, 0);
      v100, v142, v143, v144, v145, v146, v147, v148;
      sub_1000050A4(v141, &qword_10094B8E0, &unk_1007AABD0);
      (*(v168 + 8))(v155, v169);
      goto LABEL_42;
    }

    v97 = v159 + 16;
    v175 = *(v159 + 16);
    v98 = v176 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
    v173 = *(v159 + 72);
    v99 = (v159 + 8);
    v100 = &_swiftEmptyArrayStorage;
    v101 = v174;
    v102 = v170;
    while (1)
    {
      v103 = v102;
      v104 = v97;
      (v175)(v102, v98, v101);
      v105 = REMRemindersListDataView.DatesModel.Group.reminders.getter();
      (*v99)(v103, v101);
      v106 = *(v105 + 16);
      v107 = *v100->clientIdentity;
      v108 = v107 + v106;
      if (__OFADD__(v107, v106))
      {
        goto LABEL_53;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v108 <= *&v100->clientIdentity[8] >> 1)
      {
        if (*(v105 + 16))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v107 <= v108)
        {
          v117 = v107 + v106;
        }

        else
        {
          v117 = v107;
        }

        v100 = sub_100365A24(isUniquelyReferenced_nonNull_native, v117, 1, v100);
        if (*(v105 + 16))
        {
LABEL_36:
          v118 = (*&v100->clientIdentity[8] >> 1) - *v100->clientIdentity;
          type metadata accessor for REMRemindersListDataView.ReminderLite();
          if (v118 < v106)
          {
            goto LABEL_55;
          }

          swift_arrayInitWithCopy();
          v105, v119, v120, v121, v122, v123, v124, v125;
          v101 = v174;
          v102 = v170;
          if (v106)
          {
            v126 = *v100->clientIdentity;
            v86 = __OFADD__(v126, v106);
            v127 = v126 + v106;
            if (v86)
            {
              goto LABEL_56;
            }

            *v100->clientIdentity = v127;
          }

          goto LABEL_26;
        }
      }

      v105, v110, v111, v112, v113, v114, v115, v116;
      v101 = v174;
      v102 = v170;
      if (v106)
      {
        goto LABEL_54;
      }

LABEL_26:
      v98 = &v173[v98];
      --v96;
      v97 = v104;
      if (!v96)
      {
        goto LABEL_48;
      }
    }
  }

  v166 = a1;
  (*(v51 + 96))(v52, v53);
  v170 = *v52;
  v55 = *v176->clientIdentity;
  if (!v55)
  {
    v59 = &_swiftEmptyArrayStorage;
LABEL_41:
    sub_10053DB98(v170, v59, v166, v160, 0);
    v59, v128, v129, v130, v131, v132, v133, v134;
    (*(v168 + 8))(v155, v169);
LABEL_42:
    v90 = v164;
    v89 = v165;
    v91 = v161;
    v92 = v162;
    v93 = v156;
    v94 = v154;
    v88 = v153;
    goto LABEL_43;
  }

  v56 = v159 + 16;
  v175 = *(v159 + 16);
  v57 = v176 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
  v172 = *(v159 + 72);
  v58 = (v159 + 8);
  v59 = &_swiftEmptyArrayStorage;
  v60 = v173;
  while (1)
  {
    v61 = v60;
    v62 = v174;
    v63 = v56;
    (v175)(v60, v57, v174);
    v64 = REMRemindersListDataView.DatesModel.Group.reminders.getter();
    (*v58)(v61, v62);
    v65 = *(v64 + 16);
    v66 = *v59->clientIdentity;
    v67 = v66 + v65;
    if (__OFADD__(v66, v65))
    {
      break;
    }

    v68 = swift_isUniquelyReferenced_nonNull_native();
    if (v68 && v67 <= *&v59->clientIdentity[8] >> 1)
    {
      if (*(v64 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v66 <= v67)
      {
        v76 = v66 + v65;
      }

      else
      {
        v76 = v66;
      }

      v59 = sub_100365A24(v68, v76, 1, v59);
      if (*(v64 + 16))
      {
LABEL_16:
        v77 = (*&v59->clientIdentity[8] >> 1) - *v59->clientIdentity;
        type metadata accessor for REMRemindersListDataView.ReminderLite();
        if (v77 < v65)
        {
          goto LABEL_51;
        }

        swift_arrayInitWithCopy();
        v64, v78, v79, v80, v81, v82, v83, v84;
        v60 = v173;
        if (v65)
        {
          v85 = *v59->clientIdentity;
          v86 = __OFADD__(v85, v65);
          v87 = v85 + v65;
          if (v86)
          {
            goto LABEL_52;
          }

          *v59->clientIdentity = v87;
        }

        goto LABEL_6;
      }
    }

    v64, v69, v70, v71, v72, v73, v74, v75;
    v60 = v173;
    if (v65)
    {
      goto LABEL_50;
    }

LABEL_6:
    v57 += v172;
    --v55;
    v56 = v63;
    if (!v55)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_1002AA138(__n128 a1)
{
  v1 = _s9UtilitiesO12SortingStyleOMa(0);
  sub_1000EECAC(v1, qword_1009405E8);
  v2 = sub_100006654(v1, qword_1009405E8);
  v3 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v4 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v4 - 8) + 104))(v2, v3, v4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1002AA204(uint64_t a1)
{
  result = sub_1002ACC1C(&qword_100940620, &type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation, &protocol conformance descriptor for REMRemindersListDataView.ScheduledByDayInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1002AA25C(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = v3;
  while (v2 < v4)
  {
    if (__OFSUB__(v4, v2))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v5 = v2 + (v4 - v2) / 2;
    if (__OFADD__(v2, (v4 - v2) / 2))
    {
      goto LABEL_15;
    }

    type metadata accessor for Date();
    if (v5 >= v3)
    {
      goto LABEL_16;
    }

    sub_1002ACC1C(&qword_100938DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      return;
    }

    sub_1002ACC1C(&qword_1009464D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v2 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = v2 + (v4 - v2) / 2;
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1002AA40C(_TtC7remindd19RDXPCStorePerformer *a1, void *a2)
{
  v430 = a1;
  v3 = sub_1000F5104(&qword_10093F2B0, &qword_10079DBD8);
  __chkstk_darwin(v3 - 8, v4);
  v404 = &v399 - v5;
  v6 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  __chkstk_darwin(v6 - 8, v7);
  v442 = &v399 - v8;
  v454 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v435 = *(v454 - 8);
  __chkstk_darwin(v454, v9);
  v445 = &v399 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v444 = &v399 - v13;
  v449 = type metadata accessor for REMRemindersListDataView.DatesModel.Group();
  v429 = *(v449 - 8);
  __chkstk_darwin(v449, v14);
  v409 = &v399 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v436 = &v399 - v18;
  __chkstk_darwin(v19, v20);
  v408 = &v399 - v21;
  __chkstk_darwin(v22, v23);
  v407 = &v399 - v24;
  __chkstk_darwin(v25, v26);
  v432 = &v399 - v27;
  __chkstk_darwin(v28, v29);
  v431 = &v399 - v30;
  v31 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v31 - 8, v32);
  v411 = &v399 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v35);
  v443 = &v399 - v36;
  __chkstk_darwin(v37, v38);
  v455 = &v399 - v39;
  __chkstk_darwin(v40, v41);
  v457 = (&v399 - v42);
  __chkstk_darwin(v43, v44);
  v446 = (&v399 - v45);
  __chkstk_darwin(v46, v47);
  v452 = &v399 - v48;
  v417 = type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup();
  v416 = *(v417 - 8);
  __chkstk_darwin(v417, v49);
  v415 = &v399 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v459 = type metadata accessor for Date();
  v439 = *(v459 - 8);
  __chkstk_darwin(v459, v51);
  v405 = &v399 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53, v54);
  v410 = &v399 - v55;
  __chkstk_darwin(v56, v57);
  v406 = &v399 - v58;
  __chkstk_darwin(v59, v60);
  v437 = &v399 - v61;
  __chkstk_darwin(v62, v63);
  v450 = &v399 - v64;
  __chkstk_darwin(v65, v66);
  v440 = &v399 - v67;
  __chkstk_darwin(v68, v69);
  v433 = &v399 - v70;
  v414 = type metadata accessor for Calendar.Identifier();
  v413 = *(v414 - 8);
  __chkstk_darwin(v414, v71);
  v412 = &v399 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v460 = type metadata accessor for Calendar();
  v418 = *(v460 - 8);
  __chkstk_darwin(v460, v73);
  v456 = &v399 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v75, v76);
  v451 = &v399 - v77;
  v434 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v427 = *(v434 - 1);
  __chkstk_darwin(v434, v78);
  v423 = (&v399 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v80, v81);
  v426 = &v399 - v82;
  v425 = _s10PredicatesOMa(0);
  __chkstk_darwin(v425, v83);
  v424 = (&v399 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v447 = *(Subtasks - 8);
  v448 = Subtasks;
  __chkstk_darwin(Subtasks, v86);
  v421 = (&v399 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v88, v89);
  v422 = &v399 - v90;
  __chkstk_darwin(v91, v92);
  v441 = (&v399 - v93);
  __chkstk_darwin(v94, v95);
  v438 = &v399 - v96;
  v97 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v98 = *(v97 - 8);
  __chkstk_darwin(v97, v99);
  v101 = &v399 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v102, v103);
  v105 = &v399 - v104;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v107 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v108);
  v420 = (&v399 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v110, v111);
  v419 = &v399 - v112;
  __chkstk_darwin(v113, v114);
  v116 = &v399 - v115;
  v462 = a2;
  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v117 = *(v107 + 8);
  v461 = Configuration;
  v458 = (v107 + 8);
  v453 = v117;
  (v117)(v116, Configuration);
  v118 = *(v98 + 104);
  v118(v101, enum case for REMRemindersListDataView.SortingStyle.default(_:), v97);
  LOBYTE(a2) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
  v121 = *(v98 + 8);
  v119 = (v98 + 8);
  v120 = v121;
  v121(v101, v97);
  v121(v105, v97);
  if (a2 & 1) == 0 && (REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter(), REMRemindersListDataView.FetchConfiguration.sortingStyle.getter(), (v453)(v116, v461), v122 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:), v123 = type metadata accessor for REMRemindersListDataView.SortingDirection(), (*(*(v123 - 8) + 104))(v101, v122, v123), v118(v101, enum case for REMRemindersListDataView.SortingStyle.displayDate(_:), v97), LOBYTE(v122) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)(), v120(v101, v97), v120(v105, v97), (v122 & 1) == 0) || (REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter(), v124 = v438, REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter(), v125 = v453, (v453)(v116, v461), v126 = v447, v127 = *(v447 + 13), v119 = v441, v403 = enum case for REMRemindersListDataView.FetchSubtasks.on(_:), v128 = v448, v127(v441), sub_1002ACC1C(&qword_100940630, &type metadata accessor for REMRemindersListDataView.FetchSubtasks, &protocol conformance descriptor for REMRemindersListDataView.FetchSubtasks), v129 = dispatch thunk of static Equatable.== infix(_:_:)(), v130 = *(v126 + 1), (v130)(v119, v128), v441 = (v126 + 8), (v130)(v124, v128), v131 = v130, v132 = v461, (v129))
  {
    v190 = objc_opt_self();
    v191 = String._bridgeToObjectiveC()();
    [v190 internalErrorWithDebugDescription:v191];

    swift_willThrow();
    return v119;
  }

  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  v133 = v424;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  (v125)(v116, v132);
  swift_storeEnumTagMultiPayload();
  v134 = sub_100043AA8();
  sub_1000513B4(v133);
  if (qword_1009363F8 != -1)
  {
LABEL_65:
    swift_once();
  }

  v135 = qword_100974F68;
  v136 = qword_100936400;

  if (v136 != -1)
  {
    swift_once();
  }

  v438 = v131;
  v464 = v135;

  sub_100271A80(v137);
  v138 = v464;
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v139 = [objc_allocWithZone(NSFetchRequest) init];
  v140 = [swift_getObjCClassFromMetadata() entity];
  [v139 setEntity:v140];

  [v139 setAffectedStores:0];
  v402 = v134;
  [v139 setPredicate:v134];
  v464 = _swiftEmptySetSingleton;

  sub_100050AD0(v141);
  v138, v142, v143, v144, v145, v146, v147, v148;
  v149 = v464;
  v150 = v428;
  v151 = sub_1003FE014(v464);
  v119 = v150;
  v149, v152, v153, v154, v155, v156, v157, v158;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v151, v160, v161, v162, v163, v164, v165, v166;
  [v139 setPropertiesToFetch:isa];
  v138, v167, v168, v169, v170, v171, v172, v173;

  if (qword_100935E10 != -1)
  {
    swift_once();
  }

  v174 = _s9UtilitiesO12SortingStyleOMa(0);
  v175 = sub_100006654(v174, qword_1009405E8);
  v176 = v427;
  v177 = v426;
  v178 = v434;
  (*(v427 + 104))(v426, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v434);
  v179 = sub_10053CE0C(v175, v177, 0);
  v180 = *(v176 + 8);
  v180(v177, v178);
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v181 = Array._bridgeToObjectiveC()().super.isa;
  v179, v182, v183, v184, v185, v186, v187, v188;
  [v139 setSortDescriptors:v181];

  v189 = NSManagedObjectContext.fetch<A>(_:)();
  if (v150)
  {

    return v119;
  }

  v428 = v189;
  v401 = 0;
  v400 = v139;
  v193 = v419;
  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  v194 = v422;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v195 = v193;
  v196 = v461;
  v197 = v453;
  (v453)(v195, v461);
  v198 = v420;
  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  (v197)(v198, v196);
  v200 = v447;
  v199 = v448;
  v201 = v421;
  (*(v447 + 2))(v421, v194, v448);
  v202 = (*(v200 + 11))(v201, v199);
  if (v202 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:) || v202 == v403)
  {
    v430 = sub_10038E654(&_swiftEmptyArrayStorage);
    v119 = v457;
    v214 = v434;
    v134 = v459;
  }

  else
  {
    v119 = v457;
    v134 = v459;
    if (v202 != enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
    {
LABEL_98:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_99;
    }

    v203 = v428;
    v204 = v423;
    v205 = v401;
    sub_100539C70(v428, v423, v430, 0);
    v401 = v205;
    if (v205)
    {
      v203, v207, v208, v209, v210, v211, v212, v213;

      v180(v204, v434);
      (v438)(v422, v448);
      return v119;
    }

    v430 = v206;
    v214 = v434;
    v194 = v422;
  }

  v180(v423, v214);
  (v438)(v194, v448);
  v215 = v413;
  v216 = v412;
  v217 = v414;
  (*(v413 + 104))(v412, enum case for Calendar.Identifier.gregorian(_:), v414);
  Calendar.init(identifier:)();
  (*(v215 + 8))(v216, v217);
  v218 = v415;
  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.includeTodayGroup.getter();
  v219 = v416;
  v220 = v417;
  v221 = (*(v416 + 88))(v218, v417);
  LODWORD(v412) = enum case for REMRemindersListDataView.ScheduledTodayGroup.always(_:);
  LODWORD(v413) = v221;
  if (v221 == enum case for REMRemindersListDataView.ScheduledTodayGroup.always(_:))
  {
    (*(v219 + 96))(v218, v220);
    v222 = v439;
    v223 = v440;
    (*(v439 + 4))(v440, v218, v134);
    v224 = v452;
    v225 = v446;
    v131 = v456;
LABEL_24:
    Calendar.startOfDay(for:)();
    v226 = v222[1];
    v447 = (v222 + 1);
    v448 = v226;
    (v226)(v223, v134);
    v227 = v222[7];
    v461 = (v222 + 7);
    v458 = v227;
    (v227)(v224, 1, 1, v134);
    v234 = v428;
    if (v428 >> 62)
    {
      goto LABEL_67;
    }

    v235 = *((v428 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v235)
    {
      do
      {
        v236 = 0;
        v427 = v234 & 0xC000000000000001;
        v417 = v234 & 0xFFFFFFFFFFFFFF8;
        v426 = (v418 + 16);
        v237 = (v222 + 6);
        v223 = (v222 + 4);
        v434 = (v418 + 8);
        v424 = (v222 + 2);
        v416 = v429 + 16;
        v415 = (v429 + 32);
        v414 = v429 + 8;
        v423 = (v435 + 48);
        v422 = (v435 + 32);
        v420 = (v435 + 16);
        v419 = (v435 + 8);
        v453 = &_swiftEmptyArrayStorage;
        v421 = &_swiftEmptyArrayStorage;
        v222 = v225;
        v225 = v237;
        v425 = v235;
        v438 = v223;
        while (1)
        {
          if (v427)
          {
            v244 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v245 = (v236 + 1);
            if (__OFADD__(v236, 1))
            {
              goto LABEL_64;
            }

            goto LABEL_35;
          }

          if (v236 >= *(v417 + 16))
          {
            break;
          }

          v244 = *&v234->clientIdentity[8 * v236 + 16];
          v245 = (v236 + 1);
          if (__OFADD__(v236, 1))
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

LABEL_35:
          v246 = v225;
          v462 = v244;
          v247 = [v244 displayDateDate];
          v441 = v245;
          v248 = v222;
          if (v247)
          {
            v249 = v247;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v250 = 0;
          }

          else
          {
            v250 = 1;
          }

          v251 = 1;
          (v458)(v119, v250, 1, v134);
          (*v426)(v131, v451, v460);
          v252 = v455;
          sub_10012F78C(v119, v455);
          v253 = *v246;
          v254 = (*v246)(v252, 1, v134);
          v255 = v248;
          if (v254 != 1)
          {
            v256 = v440;
            (*v438)(v440, v455, v134);
            Calendar.startOfDay(for:)();
            v257 = v256;
            v119 = v457;
            v448(v257, v134);
            v251 = 0;
          }

          sub_1000050A4(v119, &unk_100938850, qword_100795AE0);
          (v458)(v248, v251, 1, v134);
          v119 = v134;
          v258 = *v434;
          (*v434)(v131, v460);
          v259 = v248;
          v225 = v246;
          v260 = v253(v259, 1, v119);
          v268 = v450;
          if (v260 == 1)
          {
            v453, v261, v262, v263, v264, v265, v266, v267;
            v421, v304, v305, v306, v307, v308, v309, v310;
            v428, v311, v312, v313, v314, v315, v316, v317;
            v430, v318, v319, v320, v321, v322, v323, v324;
            sub_1000050A4(v255, &unk_100938850, qword_100795AE0);
            v325 = objc_opt_self();
            v326 = String._bridgeToObjectiveC()();
            [v325 internalErrorWithDebugDescription:v326];

            swift_willThrow();
            sub_1000050A4(v452, &unk_100938850, qword_100795AE0);
            v448(v433, v119);
            v258(v451, v460);
            return v119;
          }

          v223 = v438;
          v269 = *v438;
          (*v438)(v450, v255, v119);
          v270 = v452;
          v271 = v443;
          sub_10012F78C(v452, v443);
          if (v253(v271, 1, v119) == 1)
          {
            sub_1000050A4(v270, &unk_100938850, qword_100795AE0);
            sub_1000050A4(v271, &unk_100938850, qword_100795AE0);
            (*v424)(v270, v268, v119);
            (v458)(v270, 0, 1, v119);
            v272 = v442;
            v273 = v268;
          }

          else
          {
            v274 = v437;
            v269(v437, v271, v119);
            sub_1002ACC1C(&qword_100938DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
            {
              v275 = v274;
              v276 = *v424;
              (*v424)(v440, v275, v119);
              static Date.== infix(_:_:)();
              v277 = v431;
              REMRemindersListDataView.DatesModel.Group.init(date:reminders:isToday:)();
              (*v416)(v432, v277, v449);
              v278 = v421;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v131 = v456;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v278 = sub_100365BB0(0, *v278->clientIdentity + 1, 1, v278);
              }

              v281 = *v278->clientIdentity;
              v280 = *&v278->clientIdentity[8];
              v273 = v450;
              if (v281 >= v280 >> 1)
              {
                v278 = sub_100365BB0((v280 > 1), v281 + 1, 1, v278);
              }

              *v278->clientIdentity = v281 + 1;
              v282 = v278;
              v283 = v429;
              v284 = (*(v283 + 80) + 32) & ~*(v283 + 80);
              v421 = v282;
              v285 = v449;
              (*(v429 + 32))(v282 + v284 + *(v429 + 72) * v281, v432, v449);
              (*(v283 + 8))(v431, v285);
              v286 = v459;
              v448(v437, v459);
              v287 = v452;
              sub_1000050A4(v452, &unk_100938850, qword_100795AE0);
              v276(v287, v273, v286);
              (v458)(v287, 0, 1, v286);
              v453 = &_swiftEmptyArrayStorage;
              v272 = v442;
              goto LABEL_51;
            }

            v273 = v268;
            v448(v274, v119);
            v272 = v442;
          }

          v131 = v456;
LABEL_51:
          v288 = v430;
          v289 = [v462 objectID];
          v290 = v289;
          if (*v288->clientIdentity && (v291 = sub_100363FF4(v289), (v292 & 1) != 0))
          {
            v293 = *(*&v288->clientIdentity[40] + 8 * v291);
          }

          else
          {
            v293 = 0;
          }

          v294 = v462;
          sub_1005384A4(v294, v293, 0, v272);
          v224 = v454;
          if ((*v423)(v272, 1, v454) == 1)
          {
            v134 = v459;
            v448(v273, v459);

            sub_1000050A4(v272, &qword_100940628, &unk_1007A6A20);
            v222 = v446;
          }

          else
          {
            v223 = *v422;
            v295 = v444;
            (*v422)(v444, v272, v224);
            (*v420)(v445, v295, v224);
            v296 = v453;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v296 = sub_100365A24(0, *v296->clientIdentity + 1, 1, v296);
            }

            v298 = *v296->clientIdentity;
            v297 = *&v296->clientIdentity[8];
            v224 = v298 + 1;
            if (v298 >= v297 >> 1)
            {
              v453 = sub_100365A24((v297 > 1), v298 + 1, 1, v296);
            }

            else
            {
              v453 = v296;
            }

            v299 = v435;
            v300 = v454;
            (*(v435 + 8))(v444, v454);
            v301 = v459;
            v448(v273, v459);
            v302 = v453;
            *v453->clientIdentity = v224;
            v303 = v302 + ((*(v299 + 80) + 32) & ~*(v299 + 80)) + *(v299 + 72) * v298;
            v134 = v301;
            (v223)(v303, v445, v300);
            v222 = v446;
            v131 = v456;
          }

          ++v236;
          v119 = v457;
          v234 = v428;
          if (v441 == v425)
          {
            v327 = v428;
            v430, v428, v238, v239, v240, v241, v242, v243;
            v224 = v452;
            v335 = v453;
            v223 = v440;
            v222 = v439;
            v336 = v411;
            v119 = v421;
            goto LABEL_69;
          }
        }

        __break(1u);
LABEL_67:
        v337 = v234;
        v338 = _CocoaArrayWrapper.endIndex.getter();
        v234 = v337;
        v235 = v338;
      }

      while (v338);
    }

    v327 = v234;
    v430, v234, v228, v229, v230, v231, v232, v233;
    v335 = &_swiftEmptyArrayStorage;
    v119 = &_swiftEmptyArrayStorage;
    v336 = v411;
LABEL_69:
    v327, v328, v329, v330, v331, v332, v333, v334;
    v453 = v335;
    if (*v335->clientIdentity)
    {
      sub_10012F78C(v224, v336);
      if (v222[6](v336, 1, v134) == 1)
      {
        sub_1000050A4(v336, &unk_100938850, qword_100795AE0);
      }

      else
      {
        v339 = v406;
        v222[4](v406, v336, v134);
        v222[2](v223, v339, v134);

        static Date.== infix(_:_:)();
        v340 = v407;
        REMRemindersListDataView.DatesModel.Group.init(date:reminders:isToday:)();
        (*(v429 + 16))(v408, v340, v449);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_100365BB0(0, *v119->clientIdentity + 1, 1, v119);
        }

        v342 = *v119->clientIdentity;
        v341 = *&v119->clientIdentity[8];
        if (v342 >= v341 >> 1)
        {
          v343 = sub_100365BB0((v341 > 1), v342 + 1, 1, v119);
        }

        else
        {
          v343 = v119;
        }

        v344 = v429;
        v345 = v449;
        (*(v429 + 8))(v407, v449);
        v448(v406, v134);
        *v343->clientIdentity = v342 + 1;
        v346 = v344;
        v119 = v343;
        (*(v346 + 32))(v343 + ((*(v346 + 80) + 32) & ~*(v346 + 80)) + *(v346 + 72) * v342, v408, v345);
        v222 = v439;
      }
    }

    if (v413 != v412)
    {

      sub_1000050A4(v224, &unk_100938850, qword_100795AE0);
      v448(v433, v134);
      (*(v418 + 8))(v451, v460);
      v453, v373, v374, v375, v376, v377, v378, v379;
      return v119;
    }

    v347 = (v222 + 2);
    v457 = v222[2];
    (v457)(v410, v433, v134);
    v355 = v222;
    v356 = *v119->clientIdentity;
    v421 = v119;
    if (v356)
    {
      v456 = v347;
      v463 = &_swiftEmptyArrayStorage;
      sub_100253574(0, v356, 0);
      v357 = v463;
      v358 = *(v429 + 16);
      v359 = v119 + ((*(v429 + 80) + 32) & ~*(v429 + 80));
      v461 = *(v429 + 72);
      v462 = v358;
      v360 = (v429 + 8);
      v458 = (v355 + 4);
      v361 = v405;
      do
      {
        v362 = v436;
        v363 = v449;
        (v462)(v436, v359, v449);
        REMRemindersListDataView.DatesModel.Group.date.getter();
        (*v360)(v362, v363);
        v463 = v357;
        v365 = *v357->clientIdentity;
        v364 = *&v357->clientIdentity[8];
        if (v365 >= v364 >> 1)
        {
          sub_100253574((v364 > 1), v365 + 1, 1);
          v357 = v463;
        }

        *v357->clientIdentity = v365 + 1;
        (*(v439 + 4))(v357 + ((v439[80] + 32) & ~v439[80]) + *(v439 + 9) * v365, v361, v459);
        v359 += v461;
        --v356;
      }

      while (v356);
      v453, v366, v367, v368, v369, v370, v371, v372;
      v224 = v452;
      v134 = v459;
      v223 = v440;
    }

    else
    {
      v453, v348, v349, v350, v351, v352, v353, v354;
      v357 = &_swiftEmptyArrayStorage;
    }

    v380 = v410;
    sub_1002AA25C(v410, v357);
    v382 = v381;
    v384 = v383;
    v357, v383, v385, v386, v387, v388, v389, v390;
    v391 = v448;
    v448(v380, v134);
    if (v384)
    {

      sub_1000050A4(v224, &unk_100938850, qword_100795AE0);
      v391(v433, v134);
      (*(v418 + 8))(v451, v460);
      return v421;
    }

    (v457)(v223, v433, v134);
    REMRemindersListDataView.DatesModel.Group.init(date:reminders:isToday:)();
    v392 = v421;
    v393 = *v421->clientIdentity;
    if (v393 < v382)
    {
      __break(1u);
    }

    else
    {
      v394 = v404;
      if ((v382 & 0x8000000000000000) == 0)
      {
        (*(v429 + 16))(v404, v409, v449);
        v395 = swift_isUniquelyReferenced_nonNull_native();
        v464 = v392;
        v396 = v392;
        v397 = v402;
        if (v395 && v393 < *&v396->clientIdentity[8] >> 1)
        {
          v398 = v396;
        }

        else
        {
          v398 = sub_100365BB0(v395, v393 + 1, 1, v396);
          v464 = v398;
        }

        sub_100260874(v382, v382, 1, v394);

        (*(v429 + 8))(v409, v449);
        sub_1000050A4(v224, &unk_100938850, qword_100795AE0);
        v448(v433, v134);
        (*(v418 + 8))(v451, v460);
        return v398;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

  v224 = v452;
  v223 = v440;
  v225 = v446;
  v131 = v456;
  v222 = v439;
  if (v221 == enum case for REMRemindersListDataView.ScheduledTodayGroup.asNeeded(_:))
  {
    Date.init()();
    goto LABEL_24;
  }

LABEL_99:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1002AC9DC()
{
  v0 = _s10PredicatesOMa(0);
  __chkstk_darwin(v0, v1);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v5 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  v9 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  (*(v5 + 8))(v8, Configuration);
  if (v9)
  {
    swift_storeEnumTagMultiPayload();
    v10 = sub_100043AA8();
    sub_1000513B4(v3);
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v11 = [objc_allocWithZone(NSFetchRequest) init];
    v12 = [swift_getObjCClassFromMetadata() entity];
    [v11 setEntity:v12];

    [v11 setAffectedStores:0];
    [v11 setPredicate:v10];
    NSManagedObjectContext.count<A>(for:)();
  }
}

uint64_t sub_1002ACC1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_1002ACC64(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  v2 = 0xE900000000000044;
  v3 = 0x80000001007EA4F0;
  v4 = 0x80000001007EA510;
  if (a1 != 4)
  {
    v4 = 0x80000001007EA530;
  }

  if (a1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xE600000000000000;
  if (a1 != 1)
  {
    v5 = 0x80000001007EA4D0;
  }

  if (a1)
  {
    v2 = v5;
  }

  if (a1 <= 2u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  String.hash(into:)();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return Hasher._finalize()();
}

Swift::Int sub_1002ACD78(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  v2 = 0xE800000000000000;
  v3 = 0x80000001007E8B20;
  v4 = 0x80000001007E8B40;
  if (a1 != 4)
  {
    v4 = 0x80000001007E8B60;
  }

  if (a1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xEC00000065746144;
  if (a1 != 1)
  {
    v5 = 0xE600000000000000;
  }

  if (a1)
  {
    v2 = v5;
  }

  if (a1 <= 2u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  String.hash(into:)();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return Hasher._finalize()();
}

Swift::Int sub_1002ACE88(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  v2 = 0xE800000000000000;
  v3 = 0xEC00000065746144;
  v4 = 0x80000001007E9F10;
  if (a1 != 4)
  {
    v4 = 0x80000001007EA730;
  }

  if (a1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x80000001007EA710;
  if (a1 != 1)
  {
    v5 = 0xEC00000061746C65;
  }

  if (a1)
  {
    v2 = v5;
  }

  if (a1 <= 2u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  String.hash(into:)();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return Hasher._finalize()();
}

Swift::Int sub_1002ACFA8(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  v3 = "alarm.reminder.completed";
  v4 = "sectionIdentifiers";
  if (a2 != 5)
  {
    v4 = "sectionByIdentifier";
  }

  v5 = "savedReminderByIdentifier";
  if (a2 != 3)
  {
    v5 = "ntsBySavedReminderIdentifier";
  }

  if (a2 <= 4u)
  {
    v4 = v5;
  }

  v6 = "inderIdentifiers";
  if (a2 != 1)
  {
    v6 = "dReminderIdentifier";
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  String.hash(into:)();
  (v7 | 0x8000000000000000), v8, v9, v10, v11, v12, v13, v14;
  return Hasher._finalize()();
}

Swift::Int sub_1002AD0B0(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  v3 = 0xE800000000000000;
  v4 = 0x80000001007E8B20;
  v5 = 0x80000001007E8B40;
  if (a2 != 4)
  {
    v5 = 0x80000001007E8B60;
  }

  if (a2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xEC00000065746144;
  if (a2 != 1)
  {
    v6 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  String.hash(into:)();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return Hasher._finalize()();
}

Swift::Int sub_1002AD1BC(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  v3 = 0xE900000000000044;
  v4 = 0x80000001007E9FB0;
  if (a2 != 5)
  {
    v4 = 0x80000001007E9FD0;
  }

  v5 = 0xEF4449746E756F63;
  if (a2 != 3)
  {
    v5 = 0xEC00000044497473;
  }

  if (a2 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0x80000001007E9F50;
  if (a2 != 1)
  {
    v6 = 0x80000001007E9F70;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  String.hash(into:)();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return Hasher._finalize()();
}

Swift::Int sub_1002AD304(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  v3 = 0xE800000000000000;
  v4 = 0xE500000000000000;
  if (a2 != 5)
  {
    v4 = 0xE600000000000000;
  }

  v5 = 0xE700000000000000;
  if (a2 != 3)
  {
    v5 = 0x80000001007EA7D0;
  }

  if (a2 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xE300000000000000;
  if (a2 != 1)
  {
    v6 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  String.hash(into:)();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return Hasher._finalize()();
}

Swift::Int sub_1002AD41C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  v3 = 0xE900000000000044;
  v4 = 0x80000001007EA4F0;
  v5 = 0x80000001007EA510;
  if (a2 != 4)
  {
    v5 = 0x80000001007EA530;
  }

  if (a2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xE600000000000000;
  if (a2 != 1)
  {
    v6 = 0x80000001007EA4D0;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  String.hash(into:)();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return Hasher._finalize()();
}

Swift::Int sub_1002AD52C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  v3 = 0xE800000000000000;
  v4 = 0xEC00000065746144;
  v5 = 0x80000001007E9F10;
  if (a2 != 4)
  {
    v5 = 0x80000001007EA730;
  }

  if (a2 != 3)
  {
    v4 = v5;
  }

  v6 = 0x80000001007EA710;
  if (a2 != 1)
  {
    v6 = 0xEC00000061746C65;
  }

  if (a2)
  {
    v3 = v6;
  }

  if (a2 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  String.hash(into:)();
  v7, v8, v9, v10, v11, v12, v13, v14;
  return Hasher._finalize()();
}

Swift::Int sub_1002AD648(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  if (a2 <= 2u)
  {
    v6 = 0xEA0000000000676ELL;
    if (a2 != 1)
    {
      v6 = 0xE700000000000000;
    }

    if (a2)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v3 = 0xEB000000006E656BLL;
    if (a2 != 5)
    {
      v3 = 0xE900000000000079;
    }

    v4 = 0x80000001007EA030;
    if (a2 != 3)
    {
      v4 = 0x80000001007EA050;
    }

    if (a2 <= 4u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }
  }

  String.hash(into:)();
  v5, v7, v8, v9, v10, v11, v12, v13;
  return Hasher._finalize()();
}

void sub_1002AD784(uint64_t a1, uint64_t (*a2)(_TtC7remindd19RDXPCStorePerformer *, uint64_t, void, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      return;
    }

    v39 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v36 = __CocoaSet.startIndex.getter();
    v37 = v6;
    v38 = 1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return;
  }

  v39 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v7 = _HashTable.startBucket.getter();
  v8 = *(a1 + 36);
  v36 = v7;
  v37 = v8;
  v38 = 0;
LABEL_7:
  v9 = 0;
  while (v9 < v5)
  {
    if (__OFADD__(v9++, 1))
    {
      goto LABEL_31;
    }

    v17 = v36;
    v18 = v37;
    v19 = v38;
    v20 = a2(v36, v37, v38, a1);
    v21 = [v20 objectID];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v33)
    {
      if (!v19)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1000F5104(a3, a4);
      v10 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      v10(v35, 0);
      if (v9 == v5)
      {
LABEL_28:
        sub_100010E34(v36, v37, v38, v11, v12, v13, v14, v15);
        return;
      }
    }

    else
    {
      if (v19)
      {
        goto LABEL_36;
      }

      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v22 = (1 << *(a1 + 32));
      if (v17 >= v22)
      {
        goto LABEL_32;
      }

      v23 = v17 >> 6;
      v24 = *(a1 + 56 + 8 * (v17 >> 6));
      if (((v24 >> v17) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v18)
      {
        goto LABEL_34;
      }

      v25 = v24 & (-2 << (v17 & 0x3F));
      if (v25)
      {
        v22 = (__clz(__rbit64(v25)) | v17 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v26 = v23 << 6;
        v27 = v23 + 1;
        v28 = (a1 + 64 + 8 * v23);
        while (v27 < &v22->storeProvider[1] >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_100010E34(v17, v18, 0, v11, v12, v13, v14, v15);
            v22 = (__clz(__rbit64(v29)) + v26);
            goto LABEL_27;
          }
        }

        sub_100010E34(v17, v18, 0, v11, v12, v13, v14, v15);
      }

LABEL_27:
      v36 = v22;
      v37 = v18;
      v38 = 0;
      if (v9 == v5)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1002ADA98(uint64_t a1)
{
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36, v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v34[1] = v1;
    v45 = &_swiftEmptyArrayStorage;
    sub_100253258(0, v7, 0);
    v8 = v45;
    v44 = a1 + 56;
    v9 = _HashTable.startBucket.getter();
    v10 = 0;
    v39 = v3 + 32;
    v40 = v3 + 16;
    v35 = a1 + 64;
    v11 = v36;
    v37 = v7;
    v38 = a1;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v44 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v41 = v10;
      v43 = *(a1 + 36);
      v14 = *(v3 + 72);
      (*(v3 + 16))(v6, *(a1 + 48) + v14 * v9, v11);
      v45 = v8;
      v15 = v11;
      v17 = *v8->clientIdentity;
      v16 = *&v8->clientIdentity[8];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v42 = (v17 + 1);
        sub_100253258((v16 > 1), v17 + 1, 1);
        v18 = v42;
        v8 = v45;
      }

      *v8->clientIdentity = v18;
      v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v42 = v8;
      v20 = v8 + v19 + v17 * v14;
      v21 = v3;
      (*(v3 + 32))(v20, v6, v15);
      v12 = 1 << *(v38 + 32);
      if (v9 >= v12)
      {
        goto LABEL_23;
      }

      v27 = *(v44 + 8 * v13);
      if ((v27 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v11 = v15;
      a1 = v38;
      if (v43 != *(v38 + 36))
      {
        goto LABEL_25;
      }

      v28 = v27 & (-2 << (v9 & 0x3F));
      if (v28)
      {
        v12 = __clz(__rbit64(v28)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v13 << 6;
        v30 = v13 + 1;
        v31 = (v35 + 8 * v13);
        while (v30 < (v12 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_100010E34(v9, v43, 0, v22, v23, v24, v25, v26);
            v12 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        sub_100010E34(v9, v43, 0, v22, v23, v24, v25, v26);
LABEL_19:
        v11 = v36;
      }

      v10 = v41 + 1;
      v9 = v12;
      v3 = v21;
      v8 = v42;
      if (v41 + 1 == v37)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_1002ADDBC(char a1)
{
  result = 0x44497463656A626FLL;
  switch(a1)
  {
    case 1:
      return 0xD00000000000001ELL;
    case 2:
      return 0xD000000000000012;
    case 3:
    case 6:
      return 0xD000000000000017;
    case 4:
      return 0x6F54636E79536164;
    case 5:
      return 0x654B687375506164;
    case 7:
      return 0xD000000000000011;
    case 8:
      v4 = 0x44656C746974;
      return v4 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
    case 9:
      return 0x6574656C706D6F63;
    case 10:
      return 0x6974656C706D6F63;
    case 11:
      return 0x797469726F697270;
    case 12:
      return 0x64656767616C66;
    case 13:
      return 0x6E6F697461657263;
    case 14:
      return 0xD000000000000010;
    case 15:
      return 0x6E65727275636572;
    case 16:
    case 36:
      return 0xD000000000000013;
    case 17:
      return 0xD000000000000011;
    case 18:
      return 0x656E6F5A656D6974;
    case 19:
      return 0x7961446C6C61;
    case 20:
      return 0xD000000000000011;
    case 21:
      v4 = 0x447365746F6ELL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
    case 22:
      v3 = 0x686361747461;
      goto LABEL_33;
    case 23:
      return 0x736D72616C61;
    case 24:
      v3 = 0x6E6769737361;
LABEL_33:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 25:
      result = 0x7367617468736168;
      break;
    case 26:
      result = 0xD000000000000016;
      break;
    case 27:
    case 37:
      result = 0xD00000000000001ALL;
      break;
    case 28:
      result = 0xD000000000000024;
      break;
    case 29:
      result = 0x48746361746E6F63;
      break;
    case 30:
      result = 0x6C70736944736369;
      break;
    case 31:
      result = 0x6C7255736369;
      break;
    case 32:
      result = 0x646574726F706D69;
      break;
    case 33:
      result = 0xD00000000000002BLL;
      break;
    case 34:
      result = 0x6974634172657375;
      break;
    case 35:
      result = 0x6572436863746162;
      break;
    case 38:
      result = 0xD000000000000029;
      break;
    case 39:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002AE228(uint64_t a1, unint64_t a2, unint64_t a3)
{
  isUniquelyReferenced_nonNull_native = type metadata accessor for UUID();
  v36 = *(isUniquelyReferenced_nonNull_native - 8);
  __chkstk_darwin(isUniquelyReferenced_nonNull_native, v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v46 = a1;
  if (a2 >> 62)
  {
LABEL_29:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_3;
    }

    return v40;
  }

  v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    return v40;
  }

LABEL_3:
  v11 = 0;
  v42 = a2 & 0xFFFFFFFFFFFFFF8;
  v43 = a2 & 0xC000000000000001;
  v35[1] = v36 + 16;
  v41 = (v36 + 8);
  v38 = a2;
  v39 = isUniquelyReferenced_nonNull_native;
  v37 = v10;
  while (1)
  {
    if (v43)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(v42 + 16))
      {
        goto LABEL_26;
      }

      v15 = *(a2 + 8 * v11 + 32);
    }

    v14 = v15;
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v17 = [v15 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(*a3 + 16))
    {
      break;
    }

    sub_100363F20(v9);
    if ((v18 & 1) == 0)
    {
      break;
    }

LABEL_6:
    (*v41)(v9, isUniquelyReferenced_nonNull_native);

    ++v11;
    if (v16 == v10)
    {
      return v40;
    }
  }

  v44 = v14;
  v19 = v14;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v40 = v46;
  a2 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *a3;
  v20 = v45;
  v21 = a3;
  *a3 = 0x8000000000000000;
  v22 = v9;
  a3 = sub_100363F20(v9);
  v24 = v20[2];
  v25 = (v23 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    goto LABEL_27;
  }

  v27 = v23;
  if (v20[3] >= v26)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100375548();
    }

    goto LABEL_21;
  }

  sub_10036E09C(v26, isUniquelyReferenced_nonNull_native);
  v28 = sub_100363F20(v22);
  if ((v27 & 1) == (v29 & 1))
  {
    a3 = v28;
LABEL_21:
    isUniquelyReferenced_nonNull_native = v39;
    v30 = v45;
    if (v27)
    {
      v12 = v45[7];
      v13 = *(v12 + 8 * a3);
      *(v12 + 8 * a3) = a2;

      a3 = v21;
      *v21 = v30;
      a2 = v38;
      v9 = v22;
    }

    else
    {
      v45[(a3 >> 6) + 8] |= 1 << a3;
      v9 = v22;
      (*(v36 + 16))(v30[6] + *(v36 + 72) * a3, v22, isUniquelyReferenced_nonNull_native);
      *(v30[7] + 8 * a3) = a2;
      v31 = v30[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_28;
      }

      v30[2] = v33;
      a3 = v21;
      *v21 = v30;
      a2 = v38;
    }

    v10 = v37;
    v14 = v44;
    goto LABEL_6;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002AE628(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1002ADDBC(*a1);
  v5 = v4;
  v6 = sub_1002ADDBC(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_1002AE6B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1002ADDBC(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_1002AE714(uint64_t a1)
{
  sub_1002ADDBC(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_1002AE768(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1002ADDBC(v2);
  v4 = v3;
  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_1002AE7C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002B3014(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1002AE7F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002ADDBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1002AE824@<X0>(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002B3014(a1, a2);
  *a3 = result;
  return result;
}

double sub_1002AE878(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0x80000001007EA4F0;
  v5 = 0x80000001007EA510;
  if (v2 != 4)
  {
    v5 = 0x80000001007EA530;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xE600000000000000;
  if (v2 != 1)
  {
    v6 = 0x80000001007EA4D0;
  }

  if (*v1)
  {
    v3 = v6;
  }

  if (*v1 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  String.hash(into:)();

  v7, v8, v9, v10, v11, v12, v13, v14;
  return result;
}

unint64_t sub_1002AE97C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002B3068(*a1);
  *a2 = result;
  return result;
}

void sub_1002AE9AC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0x49746E756F636361;
  v5 = 0xD000000000000014;
  v6 = 0x80000001007EA4F0;
  v7 = 0x80000001007EA510;
  v8 = 0xD00000000000001FLL;
  if (v2 == 4)
  {
    v8 = 0xD000000000000014;
  }

  else
  {
    v7 = 0x80000001007EA530;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0xD000000000000010;
  if (v2 == 1)
  {
    v10 = 0x44497473696CLL;
  }

  else
  {
    v9 = 0x80000001007EA4D0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1002AEA78@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1002B3068(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1002AEAA0()
{
  v1 = *v0;
  v2 = 0x49746E756F636361;
  v3 = 0xD000000000000014;
  v4 = 0xD00000000000001FLL;
  if (v1 == 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 == 1)
  {
    v5 = 0x44497473696CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void *sub_1002AEB78()
{
  result = sub_1002AEB98();
  qword_100974D20 = result;
  return result;
}

void *sub_1002AEB98()
{
  v0 = 0;
  while (1)
  {
    v11 = *(&off_1008DD570 + v0 + 32);
    if (v11 <= 0x27)
    {
      if (((1 << v11) & 0xFFFF7C0000) != 0)
      {
        goto LABEL_11;
      }

      if (v11 == 17)
      {
        v12 = 0xE700000000000000;
        v13 = 0x65746144657564;
        goto LABEL_12;
      }

      if (v11 == 23)
      {
        v13 = 0x6F74536D72616C61;
        v12 = 0xEC00000065676172;
        goto LABEL_12;
      }
    }

    if (v11 < 0x10)
    {
LABEL_11:
      v13 = sub_1002ADDBC(*(&off_1008DD570 + v0 + 32));
      v12 = v14;
      goto LABEL_12;
    }

    v12 = 0xE900000000000065;
    v13 = 0x7461447472617473;
LABEL_12:
    v15 = sub_1002ADDBC(v11);
    v17 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_100005F4C(v15, v17);
    v27 = _swiftEmptyDictionarySingleton[2];
    v28 = (v20 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v20;
    if (_swiftEmptyDictionarySingleton[3] < v30)
    {
      sub_10036A8F0(v30, isUniquelyReferenced_nonNull_native);
      v19 = sub_100005F4C(v15, v17);
      if ((v31 & 1) != (v20 & 1))
      {
        goto LABEL_70;
      }

LABEL_17:
      if ((v31 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_2;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v36 = v19;
    sub_100373664();
    v19 = v36;
    if ((v31 & 1) == 0)
    {
LABEL_18:
      _swiftEmptyDictionarySingleton[(v19 >> 6) + 8] |= 1 << v19;
      v32 = (_swiftEmptyDictionarySingleton[6] + 16 * v19);
      *v32 = v15;
      v32[1] = v17;
      v33 = (_swiftEmptyDictionarySingleton[7] + 16 * v19);
      *v33 = v13;
      v33[1] = v12;
      v34 = _swiftEmptyDictionarySingleton[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v29)
      {
        goto LABEL_68;
      }

      _swiftEmptyDictionarySingleton[2] = v35;
      goto LABEL_3;
    }

LABEL_2:
    v1 = v19;
    v17, v20, v21, v22, v23, v24, v25, v26;
    v2 = (_swiftEmptyDictionarySingleton[7] + 16 * v1);
    v3 = v2[1];
    *v2 = v13;
    v2[1] = v12;
    v3, v4, v5, v6, v7, v8, v9, v10;
LABEL_3:
    if (++v0 == 40)
    {
      v37 = 0;
      while (1)
      {
        v48 = &off_1008DD5B8 + v37++;
        v49 = v48[32];
        v50 = 0xD00000000000001FLL;
        if (v49 == 4)
        {
          v50 = 0xD000000000000014;
        }

        v51 = 0x80000001007EA530;
        if (v49 == 4)
        {
          v51 = 0x80000001007EA510;
        }

        if (v49 == 3)
        {
          v50 = 0xD000000000000014;
        }

        v52 = 0x80000001007EA4D0;
        if (v49 == 3)
        {
          v51 = 0x80000001007EA4F0;
        }

        v53 = 0x44497473696CLL;
        if (v49 == 1)
        {
          v52 = 0xE600000000000000;
        }

        else
        {
          v53 = 0xD000000000000010;
        }

        v54 = 1953720684;
        if (v49 != 1)
        {
          v54 = 0x6552746E65726170;
        }

        v55 = 0xE400000000000000;
        if (v49 != 1)
        {
          v55 = 0xEE007265646E696DLL;
        }

        if (!v49)
        {
          v53 = 0x49746E756F636361;
          v52 = 0xE900000000000044;
          v54 = 0x49746E756F636361;
          v55 = 0xE900000000000044;
        }

        if (v49 <= 2)
        {
          v56 = v53;
        }

        else
        {
          v56 = v50;
        }

        if (v49 <= 2)
        {
          v57 = v52;
        }

        else
        {
          v57 = v51;
        }

        if (v49 <= 2)
        {
          v58 = v54;
        }

        else
        {
          v58 = v50;
        }

        if (v49 <= 2)
        {
          v59 = v55;
        }

        else
        {
          v59 = v51;
        }

        v60 = swift_isUniquelyReferenced_nonNull_native();
        v61 = sub_100005F4C(v56, v57);
        v69 = _swiftEmptyDictionarySingleton[2];
        v70 = (v62 & 1) == 0;
        v29 = __OFADD__(v69, v70);
        v71 = v69 + v70;
        if (v29)
        {
          goto LABEL_67;
        }

        v72 = v62;
        if (_swiftEmptyDictionarySingleton[3] >= v71)
        {
          if (v60)
          {
            goto LABEL_59;
          }

          v77 = v61;
          sub_100373664();
          v61 = v77;
          if ((v72 & 1) == 0)
          {
            goto LABEL_60;
          }

LABEL_24:
          v38 = v61;
          v57, v62, v63, v64, v65, v66, v67, v68;
          v39 = (_swiftEmptyDictionarySingleton[7] + 16 * v38);
          v40 = v39[1];
          *v39 = v58;
          v39[1] = v59;
          v40, v41, v42, v43, v44, v45, v46, v47;
          if (v37 == 6)
          {
            return _swiftEmptyDictionarySingleton;
          }
        }

        else
        {
          sub_10036A8F0(v71, v60);
          v61 = sub_100005F4C(v56, v57);
          if ((v72 & 1) != (v62 & 1))
          {
            goto LABEL_70;
          }

LABEL_59:
          if (v72)
          {
            goto LABEL_24;
          }

LABEL_60:
          _swiftEmptyDictionarySingleton[(v61 >> 6) + 8] |= 1 << v61;
          v73 = (_swiftEmptyDictionarySingleton[6] + 16 * v61);
          *v73 = v56;
          v73[1] = v57;
          v74 = (_swiftEmptyDictionarySingleton[7] + 16 * v61);
          *v74 = v58;
          v74[1] = v59;
          v75 = _swiftEmptyDictionarySingleton[2];
          v29 = __OFADD__(v75, 1);
          v76 = v75 + 1;
          if (v29)
          {
            goto LABEL_69;
          }

          _swiftEmptyDictionarySingleton[2] = v76;
          if (v37 == 6)
          {
            return _swiftEmptyDictionarySingleton;
          }
        }
      }
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *sub_1002AF01C@<X0>(void **a1@<X0>, char **a2@<X8>)
{
  result = sub_1003BE0EC(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002AF04C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_10000F61C(a1, v4);
  result = (*(v5 + 8))(v4, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002AF0B8(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = _convertErrorToNSError(_:)();
  v4 = [v3 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v9;
  if (v5 == v8 && v7 == v9)
  {
    v7, v9, v10, v11, v12, v13, v14, v15;
    v16, v33, v34, v35, v36, v37, v38, v39;
LABEL_8:
    if ([v3 code] != -3005)
    {
      goto LABEL_18;
    }

    v40 = [v3 userInfo];
    v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v43;
    if (*(v41 + 16))
    {
      v51 = sub_100005F4C(v42, v43);
      v53 = v52;
      v50, v52, v54, v55, v56, v57, v58, v59;
      if (v53)
      {
        sub_100005EF0(*(v41 + 56) + 32 * v51, v199);
        v41, v67, v68, v69, v70, v71, v72, v73;
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_18;
        }

        if (v197 == 0x65656E6769737361 && v198 == 0xE800000000000000)
        {
          0xE800000000000000, v74, 0x65656E6769737361, v75, v76, v77, v78, v79;
        }

        else
        {
          v119 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v198, v120, v121, v122, v123, v124, v125, v126;
          if ((v119 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        if (qword_100935E18 != -1)
        {
          swift_once();
        }

        v127 = type metadata accessor for Logger();
        sub_100006654(v127, qword_100940648);
        v128 = v2;
        v82 = Logger.logObject.getter();
        v129 = static os_log_type_t.info.getter();

        if (!os_log_type_enabled(v82, v129))
        {
          goto LABEL_23;
        }

        v196 = v129;
        v130 = swift_slowAlloc();
        v199[0] = swift_slowAlloc();
        *v130 = 136315906;
        v131 = [v128 remObjectID];
        if (v131)
        {
          v132 = v131;
          v133 = [v131 description];

          v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v136 = v135;
        }

        else
        {
          v136 = 0xE300000000000000;
          v134 = 7104878;
        }

        v137 = sub_10000668C(v134, v136, v199);
        v136, v138, v139, v140, v141, v142, v143, v144;
        *(v130 + 4) = v137;
        *(v130 + 12) = 2080;
        v145 = [v128 originator];
        if (v145)
        {
          v146 = v145;
          v147 = [v145 remObjectID];
          if (v147)
          {
            v148 = v147;
            v149 = [v147 description];

            v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v152 = v151;

            v153 = v150;
            goto LABEL_36;
          }
        }

        v152 = 0xE300000000000000;
        v153 = 7104878;
LABEL_36:
        v154 = sub_10000668C(v153, v152, v199);
        v152, v155, v156, v157, v158, v159, v160, v161;
        *(v130 + 14) = v154;
        *(v130 + 22) = 2080;
        v162 = [v128 assignee];
        if (v162)
        {
          v163 = v162;
          v164 = [v162 remObjectID];
          if (v164)
          {
            v165 = v164;
            v166 = [v164 description];

            v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v169 = v168;

            v170 = v167;
LABEL_41:
            v171 = sub_10000668C(v170, v169, v199);
            v169, v172, v173, v174, v175, v176, v177, v178;
            *(v130 + 24) = v171;
            *(v130 + 32) = 2080;
            v179 = [v128 reminder];
            if (v179)
            {
              v180 = v179;
              v181 = [v179 remObjectID];
              if (v181)
              {
                v182 = v181;
                v183 = [v181 description];

                v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v186 = v185;

                v187 = v184;
              }

              else
              {

                v186 = 0xE300000000000000;
                v187 = 7104878;
              }
            }

            else
            {
              v186 = 0xEF3E44497265646ELL;
              v187 = 0x696D65725F6F6E3CLL;
            }

            v188 = sub_10000668C(v187, v186, v199);
            v186, v189, v190, v191, v192, v193, v194, v195;
            *(v130 + 34) = v188;
            _os_log_impl(&_mh_execute_header, v82, v196, "Found a dangling assignment with nullified assignee, we will skip it from the reminder.assignments {objectID: %s, originator: %s, assignee: %s, reminderID: %s}", v130, 0x2Au);
            swift_arrayDestroy();

            goto LABEL_22;
          }
        }

        v169 = 0xE300000000000000;
        v170 = 7104878;
        goto LABEL_41;
      }

      v80 = v41;
    }

    else
    {
      v41, v43, v44, v45, v46, v47, v48, v49;
      v80 = v50;
    }

    v80, v60, v61, v62, v63, v64, v65, v66;
    goto LABEL_18;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v7, v19, v20, v21, v22, v23, v24, v25;
  v16, v26, v27, v28, v29, v30, v31, v32;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_18:
  if (qword_100935E18 != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  sub_100006654(v81, qword_100940648);
  swift_errorRetain();
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v199[0] = swift_slowAlloc();
    *v84 = 136315650;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_1000F5104(&qword_100938868, &qword_100794FA8);
    v85 = String.init<A>(describing:)();
    v87 = v86;
    v88 = sub_10000668C(v85, v86, v199);
    v87, v89, v90, v91, v92, v93, v94, v95;
    *(v84 + 4) = v88;
    *(v84 + 12) = 2080;
    sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
    sub_1000F5104(&qword_100940990, &qword_1007A0290);
    v96 = String.init<A>(describing:)();
    v98 = v97;
    v99 = sub_10000668C(v96, v97, v199);
    v98, v100, v101, v102, v103, v104, v105, v106;
    *(v84 + 14) = v99;
    *(v84 + 22) = 2080;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v107 = String.init<A>(describing:)();
    v109 = v108;
    v110 = sub_10000668C(v107, v108, v199);
    v109, v111, v112, v113, v114, v115, v116, v117;
    *(v84 + 24) = v110;
    _os_log_impl(&_mh_execute_header, v82, v83, "Error occured when mapping object from %s to %s {error: %s}", v84, 0x20u);
    swift_arrayDestroy();

LABEL_22:
  }

LABEL_23:

  return 1;
}

uint64_t sub_1002AF880(void *a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = [v6 createResolutionTokenMapIfNecessary];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 mergeWithMap:a4 forKey:v13];

  if (a5)
  {
    if (v14 && a1)
    {
      v15 = a1;
      v16 = [v15 serializedData];
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = [v15 attributedString];
      v19 = [v18 string];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v17;
    }

    goto LABEL_13;
  }

  v21 = [v6 remObjectID];
  if (!v21)
  {
    if (qword_100935E18 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100940648);
    v26 = v6;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    a3, v29, v30, v31, v32, v33, v34, v35;

    if (os_log_type_enabled(v27, v28))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v48[0] = v38;
      *v36 = 138412546;
      v39 = [v26 objectID];
      *(v36 + 4) = v39;
      *v37 = v39;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_10000668C(a2, a3, v48);
      _os_log_impl(&_mh_execute_header, v27, v28, "Can't merge documents for reminder because remObjectID is nil {reminder.objectID: %@, key: %s}", v36, 0x16u);
      sub_1000050A4(v37, &unk_100938E70, &unk_100797230);

      sub_10000607C(v38);
    }

LABEL_13:
    return 0;
  }

  v22 = v21;
  v23 = String._bridgeToObjectiveC()();
  v24 = [v6 valueForKey:v23];

  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48[0] = v46;
  v48[1] = v47;
  if (*(&v47 + 1))
  {
    v40 = swift_dynamicCast();
    if (v40)
    {
      v41 = v44;
    }

    else
    {
      v41 = 0;
    }

    if (v40)
    {
      v42 = v45;
    }

    else
    {
      v42 = 0xF000000000000000;
    }
  }

  else
  {
    sub_1000050A4(v48, &qword_100939ED0, &qword_100791B10);
    v41 = 0;
    v42 = 0xF000000000000000;
  }

  v43 = sub_1002B6180(a1, v41, v42, a2, a3, v22);
  sub_100031A14(v41, v42);

  return v43;
}

uint64_t sub_1002AFC90(_OWORD *a1)
{
  if (qword_100936738 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_1006E32E8(a1);
}

_TtC7remindd19RDXPCStorePerformer *sub_1002AFCFC()
{
  v2 = [v0 cachedDeserializedDueDateDeltaAlerts];
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects];
    v4 = v2;
  }

  else
  {
    v6 = [v0 dueDateDeltaAlertsData];
    if (v6)
    {
      v7 = v6;
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = objc_autoreleasePoolPush();
      v3 = type metadata accessor for RDDueDateDeltaAlerts();
      sub_1002BB840(&qword_10093B7B8, type metadata accessor for RDDueDateDeltaAlerts, &unk_100795448);
      static REMJSONRepresentable.fromJSONData(_:)();
      if (!v1)
      {
        v3 = *&v12[OBJC_IVAR____TtC7remindd20RDDueDateDeltaAlerts_remObjects];
      }

      objc_autoreleasePoolPop(v11);
      sub_10001BBA0(v8, v10);
    }

    else
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_1002AFE68(unint64_t a1)
{
  v3 = v1;
  if (!a1)
  {
    goto LABEL_9;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:
    [v3 setDueDateDeltaAlertsData:0];
    [v3 setCachedDeserializedDueDateDeltaAlerts:0];
    return;
  }

  v11 = a1;
  v12 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v11;
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_4:
  v4 = sub_10012E8E4(a1);
  if (!v2)
  {
    v5 = v4;
    type metadata accessor for RDDueDateDeltaAlerts();
    sub_1002BB840(&qword_10093B7B8, type metadata accessor for RDDueDateDeltaAlerts, &unk_100795448);
    v6 = REMJSONRepresentable.toJSONData()();
    v8 = v6;
    v9 = v7;
    sub_100029344(v6, v7);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v8, v9);
    [v3 setDueDateDeltaAlertsData:isa];

    [v3 setCachedDeserializedDueDateDeltaAlerts:v5];
    sub_10001BBA0(v8, v9);
  }
}

id sub_1002AFFF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reminderID];
  *a2 = result;
  return result;
}

uint64_t sub_1002B003C(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  *&v7 = __chkstk_darwin(v4, v6).n128_u64[0];
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [v10 dueDateDelta];
  v12 = [v11 isEmpty];

  if (v12)
  {
    if (qword_100935E18 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100940648);
    v14 = v10;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v17 = 136315394;
      v18 = [v14 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1002BB840(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v16;
      v21 = v20;
      (*(v5 + 8))(v9, v4);
      v22 = sub_10000668C(v19, v21, &v40);
      v21, v23, v24, v25, v26, v27, v28, v29;
      *(v17 + 4) = v22;
      *(v17 + 12) = 2112;
      v30 = [v14 reminderID];
      *(v17 + 14) = v30;
      v31 = v38;
      *v38 = v30;
      _os_log_impl(&_mh_execute_header, v15, v37, "REMReminderStorageCDIngestor:applyDueDateDeltaAlertChanges: Found existing invalid empty early alert %s, dropping it from reminder %@", v17, 0x16u);
      sub_1000050A4(v31, &unk_100938E70, &unk_100797230);

      sub_10000607C(v39);
    }

    v32 = 0;
  }

  else
  {
    v33 = [v10 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = sub_100240CD4(v9, a2);
    (*(v5 + 8))(v9, v4);
    v32 = v34 ^ 1;
  }

  return v32 & 1;
}

void sub_1002B03BC(void *a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v18 = *(v13 + 8);
  v18(v16, v12);
  [v2 setIdentifier:isa];

  v19 = [a1 identifier];
  if (v19)
  {
    v20 = v19;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v13 + 56))(v7, v21, 1, v12);
  sub_100031B58(v7, v11, &unk_100939D90, "8\n\r");
  if ((*(v13 + 48))(v11, 1, v12))
  {
    sub_1000050A4(v11, &unk_100939D90, "8\n\r");
    v22 = 0;
  }

  else
  {
    (*(v13 + 16))(v16, v11, v12);
    sub_1000050A4(v11, &unk_100939D90, "8\n\r");
    UUID.uuidString.getter();
    v24 = v23;
    v18(v16, v12);
    v22 = String._bridgeToObjectiveC()();
    v24, v25, v26, v27, v28, v29, v30, v31;
  }

  [v2 setReminderIdentifier:v22];

  v32 = [a1 account];
  [v2 setAccount:v32];
}

void sub_1002B06A0(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = &v32 - v17;
  sub_1002B03BC(a2);
  v19 = [a3 externalIdentifier];
  [a1 setOldExternalIdentifier:v19];

  v20 = [a3 identifier];
  if (v20)
  {
    v21 = v20;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 56))(v14, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v14, 1, 1, v6);
  }

  sub_100031B58(v14, v18, &unk_100939D90, "8\n\r");
  if ((*(v7 + 48))(v18, 1, v6))
  {
    sub_1000050A4(v18, &unk_100939D90, "8\n\r");
    v22 = 0;
  }

  else
  {
    (*(v7 + 16))(v10, v18, v6);
    sub_1000050A4(v18, &unk_100939D90, "8\n\r");
    UUID.uuidString.getter();
    v24 = v23;
    (*(v7 + 8))(v10, v6);
    v22 = String._bridgeToObjectiveC()();
    v24, v25, v26, v27, v28, v29, v30, v31;
  }

  [a1 setOldListIdentifier:v22];
}

Swift::Void __swiftcall REMCDReminder.willChange(_:to:)(REMCDList_optional *_, REMCDList_optional *to)
{
  if (_)
  {
    v4 = _;
    v5 = [v2 managedObjectContext];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        if (to)
        {
          if (qword_100935E18 != -1)
          {
            swift_once();
          }

          v9 = type metadata accessor for Logger();
          sub_100006654(v9, qword_100940648);
          v10 = to;
          v11 = v2;
          v12 = v4;
          v13 = v11;
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            *v16 = 136446978;
            v145 = v8;
            v17 = [v13 remObjectID];
            sub_1000F5104(&unk_10093AF40, &unk_100795790);
            v144 = v15;
            v18 = Optional.descriptionOrNil.getter();
            v20 = v19;

            v21 = sub_10000668C(v18, v20, &v150);
            v20, v22, v23, v24, v25, v26, v27, v28;
            *(v16 + 4) = v21;
            *(v16 + 12) = 2082;
            v29 = [(REMCDList_optional *)v12 remObjectID];
            v30 = Optional.descriptionOrNil.getter();
            v32 = v31;

            v33 = sub_10000668C(v30, v32, &v150);
            v32, v34, v35, v36, v37, v38, v39, v40;
            *(v16 + 14) = v33;
            *(v16 + 22) = 2082;
            v148 = [(REMCDList_optional *)v10 remObjectID];
            v41 = Optional.descriptionOrNil.getter();
            v43 = v42;

            v44 = sub_10000668C(v41, v43, &v150);
            v45 = v43;
            v8 = v145;
            v45, v46, v47, v48, v49, v50, v51, v52;
            *(v16 + 24) = v44;
            *(v16 + 32) = 1026;
            LODWORD(v44) = [v13 isDeleted];

            *(v16 + 34) = v44;
            _os_log_impl(&_mh_execute_header, v14, v144, "Adding an auxiliary reminder change MOVE info {reminder: %{public}s, oldList: %{public}s, newList: %{public}s, isDeleted: %{BOOL,public}d}", v16, 0x26u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v55 = v12;
          v124 = v13;
          v125 = v124;
          v126 = &unk_100940998;
          v127 = off_1008D4170;
        }

        else
        {
          if (qword_100935E18 != -1)
          {
            swift_once();
          }

          v82 = type metadata accessor for Logger();
          sub_100006654(v82, qword_100940648);
          v83 = v2;
          v84 = v4;
          v85 = v83;
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            *v88 = 136446978;
            v146 = v8;
            v89 = [v85 remObjectID];
            sub_1000F5104(&unk_10093AF40, &unk_100795790);
            v90 = Optional.descriptionOrNil.getter();
            v92 = v91;

            v93 = sub_10000668C(v90, v92, &v150);
            v92, v94, v95, v96, v97, v98, v99, v100;
            *(v88 + 4) = v93;
            *(v88 + 12) = 2082;
            v101 = [(REMCDList_optional *)v84 remObjectID];
            v102 = Optional.descriptionOrNil.getter();
            v104 = v103;

            v8 = v146;
            v105 = sub_10000668C(v102, v104, &v150);
            v104, v106, v107, v108, v109, v110, v111, v112;
            *(v88 + 14) = v105;
            *(v88 + 22) = 2080;
            v113 = Optional.descriptionOrNil.getter();
            v115 = v114;
            v116 = sub_10000668C(v113, v114, &v150);
            v115, v117, v118, v119, v120, v121, v122, v123;
            *(v88 + 24) = v116;
            *(v88 + 32) = 1026;
            LODWORD(v115) = [v85 isDeleted];

            *(v88 + 34) = v115;
            _os_log_impl(&_mh_execute_header, v86, v87, "Adding an auxiliary reminder change DELETE info {reminder: %{public}s, oldList: %{public}s, newList: %s, isDeleted: %{BOOL,public}d}", v88, 0x26u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v55 = v84;
          v124 = v85;
          v125 = v124;
          v126 = &unk_1009409A0;
          v127 = off_1008D4168;
        }

        sub_1002B13DC(v124, v55, v8, v126, v127);

LABEL_34:
        return;
      }
    }

    v80 = objc_opt_self();
    v81 = String._bridgeToObjectiveC()();
    [v80 internalErrorWithDebugDescription:v81];

    swift_willThrow();
    if (qword_100935E18 != -1)
    {
      swift_once();
    }

    v128 = type metadata accessor for Logger();
    sub_100006654(v128, qword_100940648);
    v129 = v2;
    swift_errorRetain();
    v55 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v55, v130))
    {

      return;
    }

    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v150 = v132;
    *v131 = 136446466;
    swift_getErrorValue();
    v133 = Error.rem_errorDescription.getter();
    v135 = v134;
    v136 = sub_10000668C(v133, v134, &v150);
    v135, v137, v138, v139, v140, v141, v142, v143;
    *(v131 + 4) = v136;
    *(v131 + 12) = 1026;
    LODWORD(v135) = [v129 isDeleted];

    *(v131 + 14) = v135;
    _os_log_impl(&_mh_execute_header, v55, v130, "Failed to add auxiliary reminder change info due to error: %{public}s, isDeleted: %{BOOL,public}d", v131, 0x12u);
    sub_10000607C(v132);

    goto LABEL_34;
  }

  if (qword_100935E18 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_100006654(v53, qword_100940648);
  v54 = to;
  v147 = v2;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    *v57 = 67240962;
    *(v57 + 4) = [v147 isInserted];
    *(v57 + 8) = 2082;
    v149 = [v147 remObjectID];
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v58 = Optional.descriptionOrNil.getter();
    v60 = v59;

    v61 = sub_10000668C(v58, v60, &v150);
    v60, v62, v63, v64, v65, v66, v67, v68;
    *(v57 + 10) = v61;
    *(v57 + 18) = 2082;
    if (to)
    {
      to = [(REMCDList_optional *)v54 remObjectID];
    }

    v69 = Optional.descriptionOrNil.getter();
    v71 = v70;

    v72 = sub_10000668C(v69, v71, &v150);
    v71, v73, v74, v75, v76, v77, v78, v79;
    *(v57 + 20) = v72;
    *(v57 + 28) = 1026;
    LODWORD(v72) = [v147 isDeleted];

    *(v57 + 30) = v72;
    _os_log_impl(&_mh_execute_header, v55, v56, "Reminder has no oldList, no auxiliary reminder change info is needed {reminder.isInserted: %{BOOL,public}d, reminder: %{public}s, newList: %{public}s, isDeleted: %{BOOL,public}d}", v57, 0x22u);
    swift_arrayDestroy();

    goto LABEL_34;
  }
}

void sub_1002B13DC(void *a1, void *a2, void *a3, unint64_t *a4, void *a5)
{
  v172 = a1;
  sub_1000060C8(0, a4, a5);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata description];
  v170._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = [a3 transactionAuthor];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v170._object = v12;
  v171 = v14;
  sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  v15 = Optional.descriptionOrNil.getter();
  v17 = v16;
  v14, v16, v18, v19, v20, v21, v22, v23;
  sub_1002BD1D0(v172);
  if (!v24)
  {
    if (qword_100936008 != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    sub_100006654(v94, qword_100945730);

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.fault.getter();
    v9, v97, v98, v99, v100, v101, v102, v103;
    v17, v104, v105, v106, v107, v108, v109, v110;
    if (os_log_type_enabled(v95, v96))
    {
      v111 = swift_slowAlloc();
      v170._object = swift_slowAlloc();
      *v111 = 136446466;
      *(v111 + 4) = sub_10000668C(v15, v17, &v170._object);
      *(v111 + 12) = 2080;
      *(v111 + 14) = sub_10000668C(v170._countAndFlagsBits, v9, &v170._object);
      _os_log_impl(&_mh_execute_header, v95, v96, "Tried to insert an auxiliary change info before the related CD object is unlinked from its account. Bailing {author: %{public}s, cdType: %s}.", v111, 0x16u);
      swift_arrayDestroy();
    }

    v112 = objc_opt_self();
    v170._object = 0;
    v171 = 0xE000000000000000;
    _StringGuts.grow(_:)(133);
    v113 = 0xD000000000000075;
    v114 = 0x80000001007F37C0;
    goto LABEL_22;
  }

  v25 = v24;
  v26 = [a3 storeController];
  if (!v26)
  {
    v25, v27, v28, v29, v30, v31, v32, v33;
    if (qword_100936008 != -1)
    {
      swift_once();
    }

    v115 = type metadata accessor for Logger();
    sub_100006654(v115, qword_100945730);

    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.fault.getter();
    v9, v118, v119, v120, v121, v122, v123, v124;
    v17, v125, v126, v127, v128, v129, v130, v131;
    if (os_log_type_enabled(v116, v117))
    {
      v132 = swift_slowAlloc();
      v170._object = swift_slowAlloc();
      *v132 = 136446466;
      *(v132 + 4) = sub_10000668C(v15, v17, &v170._object);
      *(v132 + 12) = 2080;
      *(v132 + 14) = sub_10000668C(v170._countAndFlagsBits, v9, &v170._object);
      _os_log_impl(&_mh_execute_header, v116, v117, "Tried to insert an auxiliary change info but storeController is nil. Bailing {author: %{public}s, cdType: %s}.", v132, 0x16u);
      swift_arrayDestroy();
    }

    v112 = objc_opt_self();
    v170._object = 0;
    v171 = 0xE000000000000000;
    _StringGuts.grow(_:)(102);
    v114 = 0x80000001007F3840;
    v113 = 0xD000000000000056;
LABEL_22:
    String.append(_:)(*&v113);
    v133._countAndFlagsBits = v15;
    v133._object = v17;
    String.append(_:)(v133);
    v17, v134, v135, v136, v137, v138, v139, v140;
    v141._countAndFlagsBits = 0x657079546463202CLL;
    v141._object = 0xEA0000000000203ALL;
    String.append(_:)(v141);
    v142._countAndFlagsBits = v170._countAndFlagsBits;
    v142._object = v9;
    String.append(_:)(v142);
    v9, v143, v144, v145, v146, v147, v148, v149;
    v150._countAndFlagsBits = 11901;
    v150._object = 0xE200000000000000;
    String.append(_:)(v150);
    v151 = v171;
    v152 = String._bridgeToObjectiveC()();
    v151, v153, v154, v155, v156, v157, v158, v159;
    [v112 internalErrorWithDebugDescription:v152];

    swift_willThrow();
    return;
  }

  v34 = v26;
  v35 = String._bridgeToObjectiveC()();
  v25, v36, v37, v38, v39, v40, v41, v42;
  v168 = v34;
  v43 = [v34 storeForAccountIdentifier:v35];

  v44 = [ObjCClassFromMetadata entity];
  v45 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v44 insertIntoManagedObjectContext:a3];
  if (v43)
  {
    v46 = v43;
    v47 = v9;
    v48 = v15;
    v49 = v45;
    [a3 assignObject:v49 toPersistentStore:v46];

    v15 = v48;
    v9 = v47;
  }

  v50 = qword_100936008;
  v51 = v45;
  if (v50 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_100006654(v52, qword_100945730);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();
  v17, v55, v56, v57, v58, v59, v60, v61;
  v9, v62, v63, v64, v65, v66, v67, v68;
  if (os_log_type_enabled(v53, v54))
  {
    v167 = v51;
    v76 = swift_slowAlloc();
    v170._object = swift_slowAlloc();
    *v76 = 136315394;
    v77 = v43;
    v78 = sub_10000668C(v170._countAndFlagsBits, v9, &v170._object);
    v9, v79, v80, v81, v82, v83, v84, v85;
    *(v76 + 4) = v78;
    v43 = v77;
    *(v76 + 12) = 2082;
    v86 = sub_10000668C(v15, v17, &v170._object);
    v17, v87, v88, v89, v90, v91, v92, v93;
    *(v76 + 14) = v86;
    _os_log_impl(&_mh_execute_header, v53, v54, "Inserted %s {author: %{public}s}", v76, 0x16u);
    swift_arrayDestroy();

    v51 = v167;
  }

  else
  {
    v17, v69, v70, v71, v72, v73, v74, v75;
    v9, v160, v161, v162, v163, v164, v165, v166;
  }

  sub_1002B06A0(v51, v172, a2);
}

_TtC7remindd19RDXPCStorePerformer *sub_1002B1C5C(unint64_t a1, void *a2)
{
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyArrayStorage;
  }

  v14 = a1;
  v3 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v14;
  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_3:
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v6 = a1 + 32;
  while (!__OFSUB__(v3--, 1))
  {
    if (v4)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_17;
      }

      if (v3 >= *(v5 + 16))
      {
        goto LABEL_18;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    v10 = [v8 dueDateDelta];
    v11 = [v10 isEmpty];

    if (v11)
    {
      v12 = v9;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      if (!v3)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!v3)
      {
        return &_swiftEmptyArrayStorage;
      }
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002B1E24(unint64_t a1, _TtC7remindd19RDXPCStorePerformer **a2)
{
  v28 = a2;
  v27 = type metadata accessor for UUID();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27, v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &_swiftEmptyArrayStorage;
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyArrayStorage;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_3:
  v26[0] = v2;
  v26[1] = a1;
  v9 = a1 & 0xC000000000000001;
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v11 = a1 + 32;
  v12 = (v4 + 8);
  while (!__OFSUB__(v8--, 1))
  {
    if (v9)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_15;
      }

      if (v8 >= *(v10 + 16))
      {
        goto LABEL_16;
      }

      v14 = *(v11 + 8 * v8);
    }

    v15 = v14;
    v16 = *v28;

    v17 = [v15 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v17) = sub_100240CD4(v7, v16);
    v16, v18, v19, v20, v21, v22, v23, v24;
    (*v12)(v7, v27);
    if (v17)
    {

      if (!v8)
      {
        return v29;
      }
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!v8)
      {
        return v29;
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return v29;
}

uint64_t sub_1002B203C(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3)
{
  v361 = a3;
  v354 = a2;
  v5 = type metadata accessor for UUID();
  v365 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = &v352 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v359 = &v352 - v11;
  __chkstk_darwin(v12, v13);
  v358 = (&v352 - v14);
  __chkstk_darwin(v15, v16);
  v360 = &v352 - v17;
  __chkstk_darwin(v18, v19);
  v21 = &v352 - v20;
  v373 = &_swiftEmptyArrayStorage;
  v371 = &_swiftEmptyArrayStorage;
  v372 = _swiftEmptyDictionarySingleton;
  if (a1)
  {
    v22 = a1;
  }

  else
  {
    v22 = &_swiftEmptyArrayStorage;
  }

  v23 = sub_1002B1C5C(v22, &v371);
  v22, v24, v25, v26, v27, v28, v29, v30;
  v31 = sub_1002AE228(&_swiftEmptyArrayStorage, v23, &v372);
  v356 = v3;
  v23, v32, v33, v34, v35, v36, v37, v38;
  v39 = v371;
  v40 = v371 >> 62;
  if (v371 >> 62)
  {
    v41 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v41 = *((v371 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v367 = v5;
  v364 = v39;
  v362 = v8;
  v355 = v31;
  if (v41)
  {
    v370 = v39;

    sub_1000F5104(&qword_10093F5E0, &unk_1007B5240);
    v5 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CB48(&qword_100950F30, &qword_10093F5E0, &unk_1007B5240, &protocol conformance descriptor for [A]);
    v42 = sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
    v23 = &v370;
    v366 = v5;
    v43 = v356;
    v44 = Sequence.mapToSet<A>(_:)();
    v356 = v43;
    v39, v45, v46, v47, v48, v49, v50, v51;
    if (v40)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = &_swiftEmptyArrayStorage;
    if (v52)
    {
      v370 = &_swiftEmptyArrayStorage;
      sub_100253258(0, v52 & ~(v52 >> 63), 0);
      if (v52 < 0)
      {
        __break(1u);
        goto LABEL_102;
      }

      v357 = v44;
      v363 = v42;
      v54 = 0;
      v39 = v370;
      v55 = v364 & 0xC000000000000001;
      do
      {
        if (v55)
        {
          v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v56 = *&v364->clientIdentity[8 * v54 + 16];
        }

        v57 = v56;
        v58 = [v56 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v370 = v39;
        v5 = *v39->clientIdentity;
        v59 = *&v39->clientIdentity[8];
        if (v5 >= v59 >> 1)
        {
          sub_100253258((v59 > 1), v5 + 1, 1);
          v39 = v370;
        }

        ++v54;
        *v39->clientIdentity = v5 + 1;
        (*(v365 + 32))(v39 + ((*(v365 + 80) + 32) & ~*(v365 + 80)) + *(v365 + 72) * v5, v21, v367);
      }

      while (v52 != v54);
      v44 = v357;
    }

    if (qword_100935E18 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100006654(v60, qword_100940648);

    v23 = Logger.logObject.getter();
    v61 = static os_log_type_t.fault.getter();
    v39, v62, v63, v64, v65, v66, v67, v68;
    v44, v69, v70, v71, v72, v73, v74, v75;
    if (os_log_type_enabled(&v23->super, v61))
    {
      v83 = swift_slowAlloc();
      v370 = swift_slowAlloc();
      *v83 = 136446466;
      v84 = Set.description.getter();
      v85 = v44;
      v86 = v84;
      v88 = v87;
      v85, v87, v85, v89, v90, v91, v92, v93;
      v94 = sub_10000668C(v86, v88, &v370);
      v88, v95, v96, v97, v98, v99, v100, v101;
      *(v83 + 4) = v94;
      *(v83 + 12) = 2082;
      v102 = Array.description.getter();
      v104 = v103;
      v39, v103, v105, v106, v107, v108, v109, v110;
      v111 = sub_10000668C(v102, v104, &v370);
      v104, v112, v113, v114, v115, v116, v117, v118;
      *(v83 + 14) = v111;
      _os_log_impl(&_mh_execute_header, &v23->super, v61, "REMReminderStorageCDIngestor:applyDueDateDeltaAlertChanges: Detected attempts to insert/update invalid empty early alert with 0 delta {reminderIDs: %{public}s, ids: %{public}s}", v83, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v39, v76, v77, v78, v79, v80, v81, v82;
      v44, v119, v120, v121, v122, v123, v124, v125;
    }

    v53 = v361;
    v31 = v355;
  }

  else
  {
    v53 = v361;
  }

  v370 = _swiftEmptySetSingleton;
  v52 = v360;
  if (!(v31 >> 62))
  {
    v42 = v367;
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_47:
    v145 = v53;

    sub_1002723A0(v145);
    goto LABEL_48;
  }

  v143 = v53;
  v144 = _CocoaArrayWrapper.endIndex.getter();
  v53 = v143;
  v42 = v367;
  if (!v144)
  {
    goto LABEL_47;
  }

LABEL_29:
  if (v53 >> 62)
  {
    v216 = v53;
    v217 = _CocoaArrayWrapper.endIndex.getter();
    v53 = v216;
    v40 = v217;
    if (!v217)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v40 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_48;
    }
  }

  if (v40 < 1)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v126 = 0;
  v127 = v372;
  v363 = v53 & 0xC000000000000001;
  v128 = (v365 + 8);
  v357 = v40;
  v366 = v372;
  do
  {
    v130 = v53;
    if (v363)
    {
      v131 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v131 = *(v53 + 8 * v126 + 32);
    }

    v132 = v131;
    v133 = [v131 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (*v127->clientIdentity && (v134 = sub_100363F20(v52), (v135 & 1) != 0))
    {
      v136 = *v128;
      v137 = *(*&v366->clientIdentity[40] + 8 * v134);
      v136(v52, v42);
      v138 = v42;
      v139 = v137;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v373 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v373 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v140 = [v132 identifier];
      v141 = v359;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v142 = v358;
      sub_1003794C4(v358, v141);

      v136(v142, v138);
      v42 = v138;
      v52 = v360;
      v53 = v361;
      v40 = v357;
    }

    else
    {
      (*v128)(v52, v42);
      v129 = v132;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v373 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v373 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v40 = v357;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v53 = v130;
    }

    ++v126;
    v127 = v366;
  }

  while (v40 != v126);
LABEL_48:
  v146 = v355;
  v147 = v356;
  v52 = sub_1002B1E24(v355, &v370);
  v148 = v147;
  v146, v149, v150, v151, v152, v153, v154, v155;

  sub_1002723A0(v156);
  if (v354)
  {
    v40 = v354;
  }

  else
  {
    v40 = _swiftEmptySetSingleton;
  }

  v369 = &_swiftEmptyArrayStorage;
  v363 = v373;
  if (v373 >> 62)
  {
    goto LABEL_88;
  }

  for (i = *((v373 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v23 = v148;
    v366 = v40;
    if (!i)
    {
      break;
    }

    v361 = v52;
    v165 = 0;
    v52 = v363;
    v166 = v363 & 0xC000000000000001;
    v148 = v363 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v166)
      {
        v168 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v165 >= *(v148 + 16))
        {
          goto LABEL_87;
        }

        v168 = *(v52 + 8 * v165 + 32);
      }

      v169 = v168;
      v42 = (v165 + 1);
      if (__OFADD__(v165, 1))
      {
        break;
      }

      v368 = v168;
      v170 = sub_1002B003C(&v368, v40);
      if (v23)
      {
        goto LABEL_106;
      }

      if (v170)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v40 = v366;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v23 = 0;
        v52 = v363;
      }

      else
      {
      }

      ++v165;
      v167 = v42 == i;
      v42 = v367;
      if (v167)
      {
        v5 = v369;
        v52 = v361;
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    ;
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_67:
  v363, v158, v159, v160, v161, v162, v163, v164;
  v39 = v370;
  if (*v370->clientIdentity)
  {
    goto LABEL_70;
  }

  if (v52 >> 62)
  {
LABEL_103:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_70;
    }

    goto LABEL_104;
  }

  if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_70:
    v171 = 1;
    goto LABEL_71;
  }

LABEL_104:
  v171 = *(v40 + 16) != 0;
LABEL_71:
  LODWORD(v359) = v171;
  v361 = v23;
  v172 = qword_100935E18;

  if (v172 != -1)
  {
    swift_once();
  }

  v173 = type metadata accessor for Logger();
  v174 = sub_100006654(v173, qword_100940648);

  v175 = Logger.logObject.getter();
  v169 = static os_log_type_t.info.getter();
  v52, v176, v177, v178, v179, v180, v181, v182;
  v183 = os_log_type_enabled(v175, v169);
  v360 = v5;
  if (!v183)
  {
    v52, v184, v185, v186, v187, v188, v189, v190;
LABEL_94:

    v236 = Logger.logObject.getter();
    v237 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v236, v237))
    {
      v238 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v357 = v174;
      v240 = v239;
      v369 = v239;
      *v238 = 136315138;

      v242 = v361;
      sub_1002ADA98(v241);
      v244 = v243;
      v361 = v242;
      v245 = v39;
      v39, v246, v247, v248, v249, v250, v251, v252;
      v253 = Array.description.getter();
      v255 = v254;
      v244, v254, v256, v257, v258, v259, v260, v261;
      v262 = v253;
      v40 = v366;
      v263 = sub_10000668C(v262, v255, &v369);
      v255, v264, v265, v266, v267, v268, v269, v270;
      *(v238 + 4) = v263;
      _os_log_impl(&_mh_execute_header, v236, v237, "REMReminderStorageCDIngestor:applyDueDateDeltaAlertChanges:  UPDATED = %s", v238, 0xCu);
      sub_10000607C(v240);
    }

    else
    {
      v245 = v39;
    }

    v271 = Logger.logObject.getter();
    v272 = static os_log_type_t.info.getter();
    v40, v273, v274, v275, v276, v277, v278, v279;
    if (os_log_type_enabled(v271, v272))
    {
      v287 = swift_slowAlloc();
      v288 = swift_slowAlloc();
      v369 = v288;
      *v287 = 136315138;
      sub_1002ADA98(v40);
      v290 = v289;
      v358 = v245;
      v40, v291, v292, v293, v294, v295, v296, v297;
      v298 = Array.description.getter();
      v300 = v299;
      v290, v299, v301, v302, v303, v304, v305, v306;
      v307 = sub_10000668C(v298, v300, &v369);
      v300, v308, v309, v310, v311, v312, v313, v314;
      *(v287 + 4) = v307;

      _os_log_impl(&_mh_execute_header, v271, v272, "REMReminderStorageCDIngestor:applyDueDateDeltaAlertChanges:  DELETED = %s", v287, 0xCu);
      sub_10000607C(v288);

      v364, v315, v316, v317, v318, v319, v320, v321;
      v358, v322, v323, v324, v325, v326, v327, v328;
    }

    else
    {
      v364, v280, v281, v282, v283, v284, v285, v286;
      v245, v336, v337, v338, v339, v340, v341, v342;

      v40, v343, v344, v345, v346, v347, v348, v349;
    }

    v350 = v359;
    v372, v329, v330, v331, v332, v333, v334, v335;
    return v350;
  }

  v191 = swift_slowAlloc();
  v354 = swift_slowAlloc();
  v369 = v354;
  v355 = v191;
  *v191 = 136315138;
  if (!(v52 >> 62))
  {
    v199 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    LODWORD(v356) = v169;
    if (v199)
    {
      goto LABEL_76;
    }

LABEL_92:
    v52, v192, v193, v194, v195, v196, v197, v198;
    v201 = &_swiftEmptyArrayStorage;
LABEL_93:
    v218 = Array.description.getter();
    v220 = v219;
    v201, v219, v221, v222, v223, v224, v225, v226;
    v227 = sub_10000668C(v218, v220, &v369);
    v220, v228, v229, v230, v231, v232, v233, v234;
    v235 = v355;
    *(v355 + 1) = v227;
    _os_log_impl(&_mh_execute_header, v175, v356, "REMReminderStorageCDIngestor:applyDueDateDeltaAlertChanges: INSERTED = %s", v235, 0xCu);
    sub_10000607C(v354);

    goto LABEL_94;
  }

  v199 = _CocoaArrayWrapper.endIndex.getter();
  LODWORD(v356) = v169;
  if (!v199)
  {
    goto LABEL_92;
  }

LABEL_76:
  v367 = v199;
  v368 = &_swiftEmptyArrayStorage;
  sub_100253258(0, v199 & ~(v199 >> 63), 0);
  if ((v367 & 0x8000000000000000) == 0)
  {
    v353 = v175;
    v357 = v174;
    v358 = v39;
    v200 = 0;
    v201 = v368;
    v202 = v52;
    v363 = v52 & 0xC000000000000001;
    do
    {
      if (v363)
      {
        v203 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v203 = *&v202->clientIdentity[8 * v200 + 16];
      }

      v204 = v203;
      v205 = [v203 identifier];
      v206 = v362;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v368 = v201;
      v208 = *v201->clientIdentity;
      v207 = *&v201->clientIdentity[8];
      if (v208 >= v207 >> 1)
      {
        sub_100253258((v207 > 1), v208 + 1, 1);
        v201 = v368;
      }

      ++v200;
      *v201->clientIdentity = v208 + 1;
      (*(v365 + 32))(v201 + ((*(v365 + 80) + 32) & ~*(v365 + 80)) + *(v365 + 72) * v208, v206, v42);
      v40 = v366;
    }

    while (v367 != v200);
    v202, v209, v210, v211, v212, v213, v214, v215;
    v174 = v357;
    v39 = v358;
    v175 = v353;
    goto LABEL_93;
  }

  __break(1u);
LABEL_106:

  __break(1u);
  return result;
}

unint64_t sub_1002B3014(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0x28)
  {
    return 40;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002B3068(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E1738, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

id sub_1002B30B4()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() userActivityWithDictionaryData:isa error:&v5];

  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

char *sub_1002B3180(void *a1)
{
  v2 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v2 - 8, v3);
  v558 = &v549 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v561 = &v549 - v7;
  v8 = type metadata accessor for TimeZone();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v559 = &v549 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v557 = &v549 - v14;
  __chkstk_darwin(v15, v16);
  v562 = &v549 - v17;
  __chkstk_darwin(v18, v19);
  v576 = &v549 - v20;
  v569 = type metadata accessor for UUID();
  v568 = *(v569 - 1);
  __chkstk_darwin(v569, v21);
  v567 = &v549 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v575 = type metadata accessor for URL();
  v574 = *(v575 - 8);
  __chkstk_darwin(v575, v23);
  v573 = &v549 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DateComponents();
  v581 = *(v25 - 8);
  __chkstk_darwin(v25, v26);
  v572 = &v549 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v571 = (&v549 - v30);
  v31 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v31 - 8, v32);
  v565 = &v549 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v35);
  v37 = &v549 - v36;
  __chkstk_darwin(v38, v39);
  v580 = &v549 - v40;
  __chkstk_darwin(v41, v42);
  v564 = &v549 - v43;
  __chkstk_darwin(v44, v45);
  v577 = &v549 - v46;
  __chkstk_darwin(v47, v48);
  v50 = &v549 - v49;
  v585 = type metadata accessor for Date();
  v583 = *(v585 - 8);
  __chkstk_darwin(v585, v51);
  v570 = &v549 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53, v54);
  v560 = &v549 - v55;
  __chkstk_darwin(v56, v57);
  v59 = &v549 - v58;
  __chkstk_darwin(v60, v61);
  v566 = &v549 - v62;
  __chkstk_darwin(v63, v64);
  v579 = &v549 - v65;
  __chkstk_darwin(v66, v67);
  v582 = &v549 - v68;
  __chkstk_darwin(v69, v70);
  v578 = &v549 - v71;
  *&v74 = __chkstk_darwin(v72, v73).n128_u64[0];
  v76 = &v549 - v75;
  v588 = 0;
  v586 = [a1 remObjectIDWithError:{&v588, v74}];
  if (!v586)
  {
    v95 = v588;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v50;
  }

  v563 = v25;
  v554 = v9;
  v77 = v588;
  v78 = [a1 account];
  if (v78)
  {
    v79 = v78;
    v80 = [v78 remObjectID];

    v556 = v80;
    if (v80)
    {
      v81 = [a1 list];
      v550 = v8;
      if (v81)
      {
        v82 = v81;
        v83 = [v81 remObjectID];
      }

      else
      {
        v83 = 0;
      }

      v96 = v37;
      v97 = objc_allocWithZone(REMReminderStorage);
      v553 = v83;
      v587 = [v97 initWithObjectID:v586 listID:v83 accountID:v556];
      v98 = [a1 parentReminder];
      v99 = v583;
      if (v98)
      {
        v100 = v98;
        v101 = [v98 remObjectID];
      }

      else
      {
        v101 = 0;
      }

      v102 = v587;
      [v587 setParentReminderID:v101];

      v103 = [a1 daCalendarItemUniqueIdentifier];
      [v102 setDaCalendarItemUniqueIdentifier:v103];

      v104 = [a1 externalIdentifier];
      [v102 setExternalIdentifier:v104];

      v105 = [a1 externalModificationTag];
      [v102 setExternalModificationTag:v105];

      v106 = [a1 daSyncToken];
      [v102 setDaSyncToken:v106];

      v107 = [a1 daPushKey];
      [v102 setDaPushKey:v107];

      [v102 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
      [v102 setEffectiveMinimumSupportedVersion:{objc_msgSend(a1, "effectiveMinimumSupportedVersion")}];
      v108 = [a1 titleDocument];
      if (v108)
      {
        v109 = v108;
        v110 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;

        v113.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001BBA0(v110, v112);
      }

      else
      {
        v113.super.isa = 0;
      }

      v114 = v587;
      [v587 setTitleDocumentData:v113.super.isa];

      v115 = [a1 title];
      [v114 setTitleAsStringByCDIngestor:v115];

      [v114 setCompleted:{objc_msgSend(a1, "completed")}];
      v116 = [a1 completionDate];
      v551 = v59;
      v552 = v96;
      if (v116)
      {
        v117 = v116;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v118.super.isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v99 + 8))(v76, v585);
      }

      else
      {
        v118.super.isa = 0;
      }

      v119 = v587;
      [v587 setCompletionDate:v118.super.isa];

      [v119 setPrefersUrgentPresentationStyleForDateAlarms:{objc_msgSend(a1, "prefersUrgentPresentationStyleForDateAlarms")}];
      v120 = [a1 priority];
      [v119 setPriority:v120 & ~(v120 >> 63)];
      [v119 setFlagged:{objc_msgSend(a1, "flagged")}];
      v121 = [a1 creationDate];
      v555 = a1;
      if (v121)
      {
        v122 = v582;
        v123 = v121;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v124 = *(v99 + 32);
        v125 = v577;
        v126 = v122;
        v127 = v585;
        v124(v577, v126, v585);
        v128 = *(v99 + 56);
        v128(v125, 0, 1, v127);
        v124(v50, v125, v127);
        v129 = v127;
        v128(v50, 0, 1, v127);
        v130 = *(v99 + 48);
        v131 = v578;
        v132 = v552;
        v133 = v130(v50, 1, v127);
      }

      else
      {
        v128 = *(v99 + 56);
        v134 = 1;
        v135 = v577;
        v129 = v585;
        v128(v577, 1, 1, v585);
        v136 = [v119 lastModifiedDate];
        v137 = v564;
        if (v136)
        {
          v138 = v136;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v129 = v585;
          v134 = 0;
        }

        v128(v137, v134, 1, v129);
        sub_100031B58(v137, v50, &unk_100938850, qword_100795AE0);
        v130 = *(v99 + 48);
        v139 = v130(v135, 1, v129);
        v132 = v552;
        if (v139 != 1)
        {
          sub_1000050A4(v135, &unk_100938850, qword_100795AE0);
        }

        v131 = v578;
        v133 = v130(v50, 1, v129);
      }

      if (v133 == 1)
      {
        Date.init()();
        v140 = v129;
        if (v130(v50, 1, v129) != 1)
        {
          sub_1000050A4(v50, &unk_100938850, qword_100795AE0);
        }
      }

      else
      {
        (*(v99 + 32))(v131, v50, v129);
        v140 = v129;
      }

      isa = Date._bridgeToObjectiveC()().super.isa;
      v142 = *(v99 + 8);
      v577 = (v99 + 8);
      v578 = v142;
      (v142)(v131, v140);
      v50 = v587;
      [v587 setCreationDate:isa];

      v143 = v555;
      v144 = [v555 lastModifiedDate];
      if (v144)
      {
        v145 = v99;
        v146 = v582;
        v147 = v144;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v148 = *(v145 + 32);
        v148(v132, v146, v140);
        v128(v132, 0, 1, v140);
        v149 = v132;
        v150 = v580;
        v148(v580, v149, v140);
        v151 = v150;
        v128(v150, 0, 1, v140);
      }

      else
      {
        v152 = 1;
        v128(v132, 1, 1, v140);
        v153 = [v143 creationDate];
        if (v153)
        {
          v154 = v565;
          v155 = v153;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v156 = v154;
          v140 = v585;
          v152 = 0;
        }

        else
        {
          v156 = v565;
        }

        v128(v156, v152, 1, v140);
        v157 = v156;
        v151 = v580;
        sub_100031B58(v157, v580, &unk_100938850, qword_100795AE0);
        if (v130(v132, 1, v140) != 1)
        {
          sub_1000050A4(v132, &unk_100938850, qword_100795AE0);
        }
      }

      v158 = v130(v151, 1, v140);
      v159 = v578;
      v160 = v579;
      v161 = v563;
      if (v158 == 1)
      {
        Date.init()();
        v162 = v130(v151, 1, v140);
        v163 = v584;
        if (v162 != 1)
        {
          sub_1000050A4(v151, &unk_100938850, qword_100795AE0);
        }
      }

      else
      {
        (*(v583 + 32))(v579, v151, v140);
        v163 = v584;
      }

      v164 = Date._bridgeToObjectiveC()().super.isa;
      v159(v160, v140);
      [v50 setLastModifiedDate:v164];

      v165 = v555;
      v166 = [v555 recurrenceRules];
      if (v166)
      {
        v588 = v166;
        v167 = v166;
        sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
        sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
        sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
        v168 = Sequence.elements<A>(ofType:)();

        if (qword_100935E20 != -1)
        {
          swift_once();
        }

        v169 = type metadata accessor for Logger();
        v170 = sub_100006654(v169, qword_100940660);
        v588 = v168;
        __chkstk_darwin(v170, v171);
        *(&v549 - 2) = v172;
        sub_1000F5104(&qword_100940948, &qword_1007A0258);
        sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
        sub_10000CB48(&qword_100940950, &qword_100940948, &qword_1007A0258, &protocol conformance descriptor for [A]);
        v173 = v584;
        v174 = Sequence.map<A>(skippingError:_:)();
        v163 = v173;
        if (v173)
        {

          v168, v182, v183, v184, v185, v186, v187, v188;
          v163 = 0;
          v189 = &_swiftEmptyArrayStorage;
        }

        else
        {
          v189 = v174;
          v168, v175, v176, v177, v178, v179, v180, v181;
        }

        v190 = Array._bridgeToObjectiveC()().super.isa;
        v189, v191, v192, v193, v194, v195, v196, v197;
        v161 = v563;
      }

      else
      {
        v190 = 0;
      }

      [v50 setRecurrenceRules:v190];

      v198 = [v165 startDateComponents];
      v199 = v581;
      if (v198)
      {
        v200 = v571;
        v201 = v198;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v202.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
        (v199)[1](v200, v161);
      }

      else
      {
        v202.super.isa = 0;
      }

      [v50 setStartDateComponents:v202.super.isa];

      v203 = [v165 dueDateComponents];
      if (v203)
      {
        v204 = v572;
        v205 = v203;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v206.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
        (v199)[1](v204, v161);
      }

      else
      {
        v206.super.isa = 0;
      }

      [v50 setDueDateComponents:v206.super.isa];

      v207 = [v165 timeZone];
      [v50 setTimeZone:v207];

      [v50 setAllDay:{objc_msgSend(v165, "allDay")}];
      v208 = [v165 dueDateDeltaAlertsData];
      if (v208)
      {
        v209 = v208;
        v210 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v212 = v211;

        v213.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001BBA0(v210, v212);
      }

      else
      {
        v213.super.isa = 0;
      }

      [v50 setDueDateDeltaAlertsData:v213.super.isa];

      v214 = [v165 notesDocument];
      if (v214)
      {
        v215 = v214;
        v216 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v218 = v217;

        v219.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001BBA0(v216, v218);
      }

      else
      {
        v219.super.isa = 0;
      }

      [v50 setNotesDocumentData:v219.super.isa];

      v220 = [v165 notes];
      [v50 setNotesAsStringByCDIngestor:v220];

      v221 = [v165 attachments];
      if (v221)
      {
        v588 = v221;
        v222 = v221;
        sub_1000F5104(&qword_100940958, &qword_1007A0260);
        sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
        sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
        v223 = Sequence.elements<A>(ofType:)();

        if (qword_100935E20 != -1)
        {
          swift_once();
        }

        v224 = type metadata accessor for Logger();
        v225 = sub_100006654(v224, qword_100940660);
        v588 = v223;
        __chkstk_darwin(v225, v226);
        *(&v549 - 2) = v227;
        sub_1000F5104(&qword_100940960, &qword_1007A0268);
        sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
        sub_10000CB48(&qword_100940968, &qword_100940960, &qword_1007A0268, &protocol conformance descriptor for [A]);
        v228 = Sequence.map<A>(skippingError:_:)();
        if (v163)
        {

          v223, v236, v237, v238, v239, v240, v241, v242;
          v163 = 0;
          v243 = &_swiftEmptyArrayStorage;
        }

        else
        {
          v243 = v228;
          v223, v229, v230, v231, v232, v233, v234, v235;
        }

        v50 = v587;
        v244 = Array._bridgeToObjectiveC()().super.isa;
        v243, v245, v246, v247, v248, v249, v250, v251;
      }

      else
      {
        v244 = 0;
      }

      [v50 setAttachments:v244];

      type metadata accessor for REMAlarmCDIngestor();
      inited = swift_initStackObject();
      v253 = v556;
      v583 = inited;
      v254 = v586;
      *(inited + 16) = v556;
      *(inited + 24) = v254;
      v255 = v253;
      v256 = v254;
      v257 = [v165 alarmStorage];
      if (v257)
      {
        v586 = v255;
        v584 = v163;
        v588 = v257;
        v258 = v257;
        sub_1000060C8(0, &unk_100938870, off_1008D4128);
        sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
        sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
        v259 = Sequence.elements<A>(ofType:)();

        if (qword_100935E20 != -1)
        {
          swift_once();
        }

        v260 = type metadata accessor for Logger();
        v261 = sub_100006654(v260, qword_100940660);
        v588 = v259;
        __chkstk_darwin(v261, v262);
        *(&v549 - 2) = v263;
        sub_1000F5104(&qword_10094F450, &unk_1007A0270);
        sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
        sub_10000CB48(&qword_100940970, &qword_10094F450, &unk_1007A0270, &protocol conformance descriptor for [A]);
        v264 = v584;
        v265 = Sequence.map<A>(skippingError:_:)();
        v163 = v264;
        if (v264)
        {

          v259, v273, v274, v275, v276, v277, v278, v279;
          v163 = 0;
          v280 = &_swiftEmptyArrayStorage;
        }

        else
        {
          v280 = v265;
          v259, v266, v267, v268, v269, v270, v271, v272;
        }

        v50 = v587;
        v281 = Array._bridgeToObjectiveC()().super.isa;
        v280, v282, v283, v284, v285, v286, v287, v288;
        v255 = v586;
      }

      else
      {
        v281 = 0;
      }

      [v50 setAlarms:v281];

      type metadata accessor for REMAssignmentCDIngestor();
      v289 = swift_initStackObject();
      v289[2] = v255;
      v289[3] = v256;
      v586 = v289;
      v290 = v255;
      v291 = v256;
      v292 = [v165 assignments];
      if (!v292)
      {
LABEL_89:
        type metadata accessor for REMHashtagCDIngestor();
        v342 = swift_initStackObject();
        *(v342 + 16) = v290;
        *(v342 + 24) = v291;
        v581 = v290;
        v584 = v291;
        v343 = [v165 hashtags];
        if (!v343)
        {
          goto LABEL_100;
        }

        v344 = v343;
        sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
        sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
        v345 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v588 = v345;
        sub_1000F5104(&qword_10093B298, &qword_100798898);
        sub_10000CB48(&qword_10093B2A0, &qword_10093B298, &qword_100798898, &protocol conformance descriptor for Set<A>);
        v346 = Sequence.elements<A>(ofType:)();
        v345, v347, v348, v349, v350, v351, v352, v353;
        if (v346 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_92;
          }
        }

        else if (*((v346 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_92:
          v580 = v342;
          if (qword_100935E20 != -1)
          {
            swift_once();
          }

          v361 = type metadata accessor for Logger();
          v362 = sub_100006654(v361, qword_100940660);
          v588 = v346;
          __chkstk_darwin(v362, v363);
          *(&v549 - 2) = v364;
          sub_1000F5104(&qword_10094F560, &qword_1007AC6A0);
          sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
          sub_10000CB48(&unk_10093D0C0, &qword_10094F560, &qword_1007AC6A0, &protocol conformance descriptor for [A]);
          v365 = Sequence.map<A>(skippingError:_:)();
          if (v163)
          {

            v346, v373, v374, v375, v376, v377, v378, v379;
            v163 = 0;
            v380 = &_swiftEmptyArrayStorage;
          }

          else
          {
            v380 = v365;
            v346, v366, v367, v368, v369, v370, v371, v372;
          }

          v50 = v587;
          v381 = sub_1001A606C(v380);
          v380, v382, v383, v384, v385, v386, v387, v388;
          sub_10000CDE4(&qword_10093AA28, &unk_10093F600, REMHashtag_ptr, &protocol conformance descriptor for NSObject);
          v389 = Set._bridgeToObjectiveC()().super.isa;
          v381, v390, v391, v392, v393, v394, v395, v396;
          [v50 setHashtags:v389];

          v342 = v580;
LABEL_100:
          [v50 setResolutionTokenMap:0];
          v397 = [v165 resolutionTokenMapData];
          if (v397)
          {
            v398 = v397;
            v399 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v401 = v400;

            v402.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v399, v401);
          }

          else
          {
            v402.super.isa = 0;
          }

          [v50 setResolutionTokenMapData:v402.super.isa];

          v403 = [v165 contactHandles];
          if (v403)
          {
            v404 = v403;
            v405 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v407 = v406;

            sub_100029344(v405, v407);
            v408 = Data._bridgeToObjectiveC()().super.isa;
            v409 = [objc_opt_self() representationFromData:v408];

            sub_10001BBA0(v405, v407);
            [v50 setContactHandles:v409];

            sub_10001BBA0(v405, v407);
          }

          v410 = [v165 icsDisplayOrder];
          [v50 setIcsDisplayOrder:v410 & ~(v410 >> 63)];
          v411 = [v165 icsUrl];
          if (v411)
          {
            v412 = v573;
            v413 = v411;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            URL._bridgeToObjectiveC()(v414);
            v416 = v415;
            v574[1](v412, v575);
          }

          else
          {
            v416 = 0;
          }

          [v50 setIcsUrl:v416];

          v417 = [v165 importedICSData];
          if (v417)
          {
            v418 = v417;
            v419 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v421 = v420;

            v422.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v419, v421);
          }

          else
          {
            v422.super.isa = 0;
          }

          [v50 setImportedICSData:v422.super.isa];

          v423 = [v165 userActivity];
          if (v423)
          {
            v424 = v423;
            v425 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v427 = v426;

            sub_1000060C8(0, &qword_100940988, REMUserActivity_ptr);
            sub_100029344(v425, v427);
            v428 = sub_1002B30B4();
            if (v163)
            {
              sub_10001BBA0(v425, v427);

              v429 = v583;
              swift_setDeallocating();

              v430 = v586;
              swift_setDeallocating();

              v431 = v430[3];
              sub_10001BBA0(v425, v427);
              swift_setDeallocating();

              return v50;
            }

            v433 = v428;
            sub_10001BBA0(v425, v427);
            [v50 setUserActivity:v433];

            sub_10001BBA0(v425, v427);
          }

          v434 = [v165 batchCreationID];
          if (v434)
          {
            v435 = v567;
            v436 = v434;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v437.super.isa = UUID._bridgeToObjectiveC()().super.isa;
            (v568[1].isa)(v435, v569);
          }

          else
          {
            v437.super.isa = 0;
          }

          [v50 setBatchCreationID:v437.super.isa];

          v438 = [v165 siriFoundInAppsData];
          if (v438)
          {
            v439 = v438;
            v440 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v442 = v441;

            v443.super.isa = Data._bridgeToObjectiveC()().super.isa;
            sub_10001BBA0(v440, v442);
          }

          else
          {
            v443.super.isa = 0;
          }

          v444 = v576;
          [v50 setSiriFoundInAppsData:v443.super.isa];

          v445 = [v165 lastBannerPresentationDate];
          if (v445)
          {
            v446 = v566;
            v447 = v445;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v448.super.isa = Date._bridgeToObjectiveC()().super.isa;
            (v578)(v446, v585);
          }

          else
          {
            v448.super.isa = 0;
          }

          [v50 setLastBannerPresentationDate:v448.super.isa];

          v449 = [v165 displayDate];
          if (!v449)
          {
            goto LABEL_141;
          }

          v450 = v449;
          v451 = [v165 dueDate];
          if (!v451)
          {

LABEL_141:
            v480 = [v165 displayDate];
            [v50 setDisplayDate:v480];

            v481 = v585;
LABEL_142:
            v482 = [v165 alternativeDisplayDateDate_forCalendar];
            v483 = v553;
            if (v482)
            {
              v484 = v570;
              v485 = v481;
              v486 = v482;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v487.super.isa = Date._bridgeToObjectiveC()().super.isa;
              (v578)(v484, v485);
            }

            else
            {
              v487.super.isa = 0;
            }

            [v50 setAlternativeDisplayDateDate_forCalendar:v487.super.isa];

            v488 = v583;
            swift_setDeallocating();

            v489 = v586;
            swift_setDeallocating();

            swift_setDeallocating();
            v490 = *(v342 + 24);

            return v50;
          }

          v580 = v342;
          v452 = v551;
          v453 = v451;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v454 = [v450 date];
          v455 = v582;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v454) = static Date.== infix(_:_:)();
          v456 = v455;
          v457 = v585;
          v458 = v578;
          (v578)(v456, v585);
          if ((v454 & 1) == 0)
          {
            v458(v452, v457);

            v165 = v555;
            v50 = v587;
LABEL_140:
            v342 = v580;
            goto LABEL_141;
          }

          v459 = [v450 timeZone];
          if (v459)
          {
            v460 = v459;
            static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

            v165 = v555;
            v461 = [v555 timeZone];
            if (v461)
            {
              v462 = v461;
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v464 = v463;

              v465 = v561;
              TimeZone.init(identifier:)();
              v464, v466, v467, v468, v469, v470, v471, v472;
              v473 = v554;
              v474 = (v554 + 6);
              v475 = v550;
              v582 = v554[6];
              if ((v582)(v465, 1, v550) == 1)
              {

                (v473[1])(v576, v475);
                (v578)(v452, v585);
                sub_1000050A4(v465, &qword_10093F970, &unk_1007A7670);
LABEL_139:
                v50 = v587;
                goto LABEL_140;
              }

              v579 = v474;
              v477 = v562;
              (v473[4])(v562, v465, v475);
              sub_1002BB840(&qword_100940978, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
              v478 = v576;
              if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
              {
                if (qword_100935E18 != -1)
                {
                  swift_once();
                }

                v491 = type metadata accessor for Logger();
                sub_100006654(v491, qword_100940648);
                v492 = v554;
                v494 = v554 + 2;
                v493 = v554[2];
                v495 = v557;
                v493(v557, v576, v475);
                v575 = v494;
                v573 = v493;
                v493(v559, v562, v475);
                v496 = v165;
                v497 = Logger.logObject.getter();
                v498 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v497, v498))
                {
                  v499 = swift_slowAlloc();
                  v572 = v499;
                  v569 = swift_slowAlloc();
                  v571 = swift_slowAlloc();
                  v588 = v571;
                  *v499 = 136315650;
                  sub_1002BB840(&qword_100940980, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
                  v568 = v497;
                  v500 = dispatch thunk of CustomStringConvertible.description.getter();
                  v501 = v475;
                  v503 = v502;
                  v566 = v496;
                  LODWORD(v567) = v498;
                  v504 = v554[1];
                  v505 = v495;
                  v506 = v501;
                  (v504)(v505, v501);
                  v507 = sub_10000668C(v500, v503, &v588);
                  v503, v508, v509, v510, v511, v512, v513, v514;
                  v515 = v572;
                  *(v572 + 4) = v507;
                  *(v515 + 6) = 2080;
                  v516 = v559;
                  v517 = dispatch thunk of CustomStringConvertible.description.getter();
                  v519 = v518;
                  v574 = v504;
                  (v504)(v516, v506);
                  v520 = sub_10000668C(v517, v519, &v588);
                  v521 = v519;
                  v492 = v554;
                  v521, v522, v523, v524, v525, v526, v527, v528;
                  v529 = v572;
                  *(v572 + 14) = v520;
                  *(v529 + 11) = 2112;
                  v530 = v529;
                  v531 = [v566 objectID];
                  *(v530 + 3) = v531;
                  v532 = v569;
                  *v569 = v531;
                  v533 = v568;
                  _os_log_impl(&_mh_execute_header, v568, v567, "REMReminderStorageCDIngestor: Replacing displayDate.timeZone (%s) with cdReminder.timeZone (%s) for cdReminder %@", v530, 0x20u);
                  sub_1000050A4(v532, &unk_100938E70, &unk_100797230);

                  swift_arrayDestroy();
                }

                else
                {

                  v534 = v492[1];
                  (v534)(v559, v475);
                  v574 = v534;
                  (v534)(v495, v475);
                  v506 = v475;
                }

                v535 = [v450 date];
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                LODWORD(v572) = [v450 isAllDay];
                v536 = [v450 floatingDateSecondsFromGMT];
                v537 = v558;
                (v573)(v558, v562, v506);
                (v492[7])(v537, 0, 1, v506);
                v538 = v537;
                v539.super.isa = Date._bridgeToObjectiveC()().super.isa;
                if ((v582)(v537, 1, v506) == 1)
                {
                  v540 = 0;
                  v541 = v506;
                  v542 = v574;
                }

                else
                {
                  v540 = TimeZone._bridgeToObjectiveC()().super.isa;
                  v543 = v506;
                  v541 = v506;
                  v542 = v574;
                  (v574)(v538, v543);
                }

                v544 = objc_allocWithZone(REMDisplayDate);
                v545 = [v544 initWithDate:v539.super.isa allDay:v572 timeZone:v540 floatingDateSecondsFromGMT:v536];

                v546 = v587;
                [v587 setDisplayDate:v545];

                v547 = v585;
                v548 = v578;
                (v578)(v560, v585);
                (v542)(v562, v541);
                (v542)(v576, v541);
                v481 = v547;
                v548(v551, v547);
                v50 = v546;
                v342 = v580;
                goto LABEL_142;
              }

              v479 = v473[1];
              v479(v477, v475);
              v479(v478, v475);
              v476 = v551;
            }

            else
            {

              (v554[1])(v444, v550);
              v476 = v452;
            }

            (v578)(v476, v585);
            goto LABEL_139;
          }

          (v578)(v452, v585);

          v165 = v555;
          goto LABEL_139;
        }

        v346, v354, v355, v356, v357, v358, v359, v360;
        v50 = v587;
        goto LABEL_100;
      }

      v293 = v292;
      sub_1000060C8(0, &unk_10093F790, off_1008D4158);
      sub_10000CDE4(&qword_10093CC38, &unk_10093F790, off_1008D4158, &protocol conformance descriptor for NSObject);
      v294 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v588 = v294;
      sub_1000F5104(&qword_100940908, &qword_1007A0230);
      sub_10000CB48(&qword_100940910, &qword_100940908, &qword_1007A0230, &protocol conformance descriptor for Set<A>);
      v295 = Sequence.elements<A>(ofType:)();
      v294, v296, v297, v298, v299, v300, v301, v302;
      if (v295 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_83;
        }
      }

      else if (*((v295 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_83:
        v588 = v295;
        sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
        sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
        sub_10000CB48(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280, &protocol conformance descriptor for [A]);
        v310 = Sequence.map<A>(skippingError:_:)();
        if (v163)
        {

          v295, v318, v319, v320, v321, v322, v323, v324;
          v163 = 0;
          v325 = &_swiftEmptyArrayStorage;
        }

        else
        {
          v325 = v310;
          v295, v311, v312, v313, v314, v315, v316, v317;
        }

        v50 = v587;
        v326 = sub_1001A603C(v325);
        v325, v327, v328, v329, v330, v331, v332, v333;
        sub_10000CDE4(&qword_100939230, &unk_10093F5F0, REMAssignment_ptr, &protocol conformance descriptor for NSObject);
        v334 = Set._bridgeToObjectiveC()().super.isa;
        v326, v335, v336, v337, v338, v339, v340, v341;
        [v50 setAssignments:v334];

        goto LABEL_89;
      }

      v295, v303, v304, v305, v306, v307, v308, v309;
      v50 = v587;
      goto LABEL_89;
    }
  }

  if (qword_100935E20 != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for Logger();
  sub_100006654(v84, qword_100940660);
  v85 = v586;
  v86 = v586;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v89 = 138412290;
    *(v89 + 4) = v86;
    *v90 = v85;
    v91 = v86;
    _os_log_impl(&_mh_execute_header, v87, v88, "REMReminderStorageCDIngestor: cdReminder.account is nil {cdReminder.remObjectID: %@}", v89, 0xCu);
    sub_1000050A4(v90, &unk_100938E70, &unk_100797230);
  }

  v92 = objc_opt_self();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v94 = String._bridgeToObjectiveC()();
  [v92 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v94];

  swift_willThrow();
  return v50;
}

uint64_t sub_1002B6180(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, void *a6)
{
  v7 = a2;
  if (a1)
  {
    v10 = a1;
    v11 = v10;
    if (a3 >> 60 == 15)
    {
      v12 = [v10 serializedData];
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = [v11 attributedString];
      v14 = [v13 string];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      sub_1001CB4B8(v7, a3);
      v15 = [v11 replicaIDSource];
      v16 = objc_allocWithZone(REMCRMergeableStringDocument);
      sub_100029344(v7, a3);
      v42 = sub_1002F937C(v15);
      sub_100031A14(v7, a3);

      v54 = 0;
      v43 = [v42 mergedWithDocument:v11 error:&v54];
      if (v43)
      {
        v44 = v43;
        v45 = v54;
        v46 = [v44 serializedData];
        v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = [v44 attributedString];
        v49 = [v48 string];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100031A14(v7, a3);

        return v47;
      }

      else
      {
        v51 = v54;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100935E18 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100006654(v17, qword_100940648);
        v18 = a6;

        swift_errorRetain();
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        a5, v21, v22, v23, v24, v25, v26, v27;

        if (os_log_type_enabled(v19, v20))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v28 = 138412802;
          *(v28 + 4) = v18;
          *v29 = v18;
          log = v19;
          *(v28 + 12) = 2080;
          v30 = v18;
          *(v28 + 14) = sub_10000668C(a4, a5, &v54);
          *(v28 + 22) = 2080;
          swift_getErrorValue();
          v31 = Error.localizedDescription.getter();
          v33 = v32;
          v34 = sub_10000668C(v31, v32, &v54);
          v33, v35, v36, v37, v38, v39, v40, v41;
          *(v28 + 24) = v34;
          _os_log_impl(&_mh_execute_header, log, v20, "Failed to merge documents for reminder {reminder.objectID: %@, key: %s}: %s", v28, 0x20u);
          sub_1000050A4(v29, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          sub_100031A14(v7, a3);
        }

        else
        {
          sub_100031A14(v7, a3);
        }

        return 0;
      }
    }
  }

  else
  {
    sub_1001CB4B8(a2, a3);
  }

  return v7;
}
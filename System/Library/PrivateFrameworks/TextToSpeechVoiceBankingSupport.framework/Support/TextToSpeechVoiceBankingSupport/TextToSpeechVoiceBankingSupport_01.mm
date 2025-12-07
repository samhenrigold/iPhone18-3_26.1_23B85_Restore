uint64_t sub_10001FED0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10001FFC4;

  return v5(v2 + 32);
}

uint64_t sub_10001FFC4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_1000200D8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100031EC8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100020148()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000201A8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + 16);
  v4 = sub_100012250(a1, a2);
  v3();
}

uint64_t sub_100020204()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = v1;
  sub_10001CBF4(0x5220746E65696C43, 0xEE00747365757165, sub_100020484, v2);
}

unint64_t sub_10002029C()
{
  result = qword_100035470;
  if (!qword_100035470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035470);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoiceBankingDaemon.TTSVBSiriTrainingEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceBankingDaemon.TTSVBSiriTrainingEvent(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000204C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _StringGuts.grow(_:)(38);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  return 0xD000000000000024;
}

uint64_t sub_100020540()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000205CC()
{
  if (*(v0 + 16) == 1)
  {
    return sub_100015498(0x5220746E65696C43, 0xEE00747365757165);
  }

  return result;
}

unint64_t sub_10002061C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _StringGuts.grow(_:)(49);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  return 0xD00000000000002FLL;
}

uint64_t sub_100020698()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000206D8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000035EC;

  return sub_10001D83C(v3, v4, v5, v2);
}

unint64_t sub_10002076C()
{
  result = qword_100035530;
  if (!qword_100035530)
  {
    sub_10000F9B4(255, &qword_100035408, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035530);
  }

  return result;
}

uint64_t sub_1000207D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100020814(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100012208(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100020964()
{
  _StringGuts.grow(_:)(43);

  v0._countAndFlagsBits = TTSVBError.description.getter();
  String.append(_:)(v0);

  return 0xD000000000000029;
}

void sub_100020A60(unsigned __int8 a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10001AC78(a1);
  }
}

void sub_100020AB8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100012190(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___liveSpeechSyncController, type metadata accessor for LiveSpeechSyncController, VoiceBankingXPCServer.__allocating_init());

    sub_1000222DC();
  }
}

uint64_t sub_100020B90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020BC8()
{
  if (*(v0 + 16) == 1)
  {
    return sub_100015498(0x6E55207473726946, 0xEC0000006B636F6CLL);
  }

  return result;
}

unint64_t sub_100020C14()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(50);

  v2 = 0x656E696665646E75;
  v3 = 0xE400000000000000;
  v4 = 1701736292;
  if (v1 != 5)
  {
    v4 = 0x646573756170;
    v3 = 0xE600000000000000;
  }

  v5 = 0x656C6C65636E6163;
  v6 = 0xE600000000000000;
  if (v1 == 3)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v5 = 0x64656C696166;
  }

  if (v1 <= 4)
  {
    v4 = v5;
    v3 = v6;
  }

  v7 = 0x657474696D627573;
  v8 = 0xE700000000000000;
  if (v1 == 1)
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v7 = 0x676E696E6E7572;
  }

  if (v1)
  {
    v2 = v7;
    v9 = v8;
  }

  else
  {
    v9 = 0xE900000000000064;
  }

  if (v1 <= 2)
  {
    v10 = v2;
  }

  else
  {
    v10 = v4;
  }

  if (v1 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  return 0xD000000000000030;
}

uint64_t sub_100020D54()
{

  return _swift_deallocObject(v0, 25, 7);
}

void sub_100020D8C(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v7 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = a1;
  *(v5 + 25) = v4;
  v6 = v3;
  TTSVBVoiceBankingManager.fetchVoiceModels(completion:)();
}

uint64_t sub_100020E58()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_100020EA0()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100020EF0()
{

  return _swift_deallocObject(v0, 64, 7);
}

void sub_100020F38()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = sub_100012190(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager, type metadata accessor for VoiceBankingUserNotificationManager, VoiceBankingXPCServer.__allocating_init());
  sub_100002138(v1, v2, v3, v4, v5);
}

uint64_t sub_100020FE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100021030(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000060AC;

  return sub_1000188AC(a1, v6, v7, v5, v4);
}

uint64_t sub_1000210DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021114(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000060AC;

  return sub_10001FED0(a1, v4);
}

uint64_t sub_1000211CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000035EC;

  return sub_10001FED0(a1, v4);
}

uint64_t sub_100021284()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(83);
  v2._object = 0x800000010002BCF0;
  v2._countAndFlagsBits = 0xD000000000000051;
  String.append(_:)(v2);
  v3 = [v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  return 0;
}

uint64_t sub_100021338()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021380()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(63);
  v2._object = 0x800000010002BC70;
  v2._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v2);
  v3 = [v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x3D726F727245202ELL;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);
  sub_100001EE8(&qword_100035390, &unk_100027F60);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100021490()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(64);
  v2._object = 0x800000010002BC30;
  v2._countAndFlagsBits = 0xD00000000000003ELL;
  String.append(_:)(v2);
  v3 = [v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  return 0;
}

uint64_t sub_100021544()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(55);
  v2._object = 0x800000010002BCB0;
  v2._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v2);
  v3 = [v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  return 0;
}

void sub_1000215F8()
{
  v0 = sub_100012190(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager, type metadata accessor for VoiceBankingUserNotificationManager, VoiceBankingXPCServer.__allocating_init());
  sub_100002138(0xD000000000000012, 0x800000010002BD80, 0xD000000000000033, 0x800000010002BDA0, 1);
}

unint64_t sub_100021768()
{
  _StringGuts.grow(_:)(29);

  v0._countAndFlagsBits = TTSVBDataStoreEvent.description.getter();
  String.append(_:)(v0);

  return 0xD00000000000001BLL;
}

unint64_t sub_100021934()
{
  result = qword_100035408;
  if (!qword_100035408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100035408);
  }

  return result;
}

void sub_100021980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17[0] = swift_getObjectType();
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v18 = OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_queue;
  v9 = sub_100021934();
  v17[1] = "arting up with uid=";
  v17[2] = v9;
  static DispatchQoS.userInteractive.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_1000225D4(&qword_100035410, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001EE8(&qword_100035418, &qword_100027F80);
  sub_10002261C(&qword_100035420, &qword_100035418, &qword_100027F80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v19);
  *&v2[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static TTSVBLiveSpeechSupport.localPrefsDomain.getter();
  v10 = objc_allocWithZone(NSUserDefaults);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithSuiteName:v11];

  if (v12)
  {
    *&v3[OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_localDefaults] = v12;
    v13 = OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_cloudDefaults;
    static TTSVBLiveSpeechSupport.cloudPrefsDomain.getter();
    v14 = objc_allocWithZone(NSUbiquitousKeyValueStore);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v14 initWithStoreIdentifier:v15 type:0];

    *&v3[v13] = v16;
    *&v3[OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_favoritePhrasesPrefObservation] = 0;
    v20.receiver = v3;
    v20.super_class = v17[0];
    objc_msgSendSuper2(&v20, "init");
  }

  else
  {
    __break(1u);
  }
}

id sub_100021CF8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_opt_self() defaultCenter];
  [v4 removeObserver:v2];

  v6.receiver = v2;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_100021EA4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = [objc_opt_self() defaultCenter];
  v10 = OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_cloudDefaults;
  [v9 addObserver:a1 selector:"handleCloudPrefsChanged:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:*(a1 + OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_cloudDefaults)];

  v24 = *(a1 + OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_localDefaults);
  v11 = v24;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v11;
  v13 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v14 = *(a1 + OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_favoritePhrasesPrefObservation);
  *(a1 + OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_favoritePhrasesPrefObservation) = v13;

  static TTSVBLog.daemon.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Will synchronize Live Speech cloud prefs", v17, 2u);
  }

  v18 = *(v3 + 8);
  v18(v8, v2);
  result = [*(a1 + v10) synchronize];
  if ((result & 1) == 0)
  {
    static TTSVBLog.daemon.getter();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error occurred synchronizing Live Speech cloud prefs", v22, 2u);
    }

    return (v18)(v6, v2);
  }

  return result;
}

uint64_t sub_1000221B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000221F4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 liveSpeechPhrases];
  sub_100001EE8(&qword_1000355D0, &qword_100028150);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

void sub_100022264(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_100001EE8(&qword_1000355D0, &qword_100028150);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setLiveSpeechPhrases:isa];
}

uint64_t sub_100022304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v3[OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000218B0;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v12;
  v16 = v3;
  static DispatchQoS.unspecified.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_1000225D4(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001EE8(&qword_100035460, &qword_100027F88);
  sub_10002261C(&qword_100035468, &qword_100035460, &qword_100027F88);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  (*(v9 + 8))(v11, v19);
}

uint64_t sub_1000225BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000225D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002261C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100012208(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100022670()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v0 - 8);
  v51 = v0;
  __chkstk_darwin(v0);
  v2 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v43 - v11;
  static TTSVBLog.daemon.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Did receive cloud change for Live Speech prefs.", v15, 2u);
  }

  v16 = *(v7 + 8);
  v16(v12, v6);
  result = Notification.userInfo.getter();
  if (result)
  {
    v18 = result;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v19;
    AnyHashable.init<A>(_:)();
    if (!*(v18 + 16))
    {
      goto LABEL_12;
    }

    v20 = sub_100024604(aBlock);
    if ((v21 & 1) == 0)
    {
      goto LABEL_12;
    }

    sub_100005D8C(*(v18 + 56) + 32 * v20, v55);
    sub_100024648(aBlock);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    v22 = v53;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v23;
    AnyHashable.init<A>(_:)();
    if (*(v18 + 16) && (v24 = sub_100024604(aBlock), (v25 & 1) != 0))
    {
      sub_100005D8C(*(v18 + 56) + 32 * v24, v55);
      sub_100024648(aBlock);

      sub_100001EE8(&qword_100035598, &qword_100028120);
      result = swift_dynamicCast();
      if (result)
      {
        v26 = v53;
        static TTSVBLog.daemon.getter();

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v45 = v28;
          v30 = v29;
          v44 = swift_slowAlloc();
          aBlock[0] = v44;
          *v30 = 134218242;
          *(v30 + 4) = v22;
          *(v30 + 12) = 2080;
          v31 = Array.description.getter();
          v46 = v22;
          v33 = sub_100004A24(v31, v32, aBlock);
          v43 = v26;
          v34 = v33;
          v22 = v46;

          *(v30 + 14) = v34;
          _os_log_impl(&_mh_execute_header, v27, v45, "Cloud change reason=%ld changeKeys=%s", v30, 0x16u);
          sub_100005D40(v44);

          v16(v10, v6);
          v35 = v43;
        }

        else
        {

          v16(v10, v6);
          v35 = v26;
        }

        v36 = v47;
        v37 = *&v47[OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_queue];
        v38 = swift_allocObject();
        v38[2] = v35;
        v38[3] = v36;
        v38[4] = v22;
        aBlock[4] = sub_1000246DC;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000218B0;
        aBlock[3] = &unk_100032A90;
        v39 = _Block_copy(aBlock);
        v40 = v37;
        v41 = v36;
        static DispatchQoS.unspecified.getter();
        v55[0] = &_swiftEmptyArrayStorage;
        sub_1000225D4(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100001EE8(&qword_100035460, &qword_100027F88);
        sub_10002261C(&qword_100035468, &qword_100035460, &qword_100027F88);
        v42 = v51;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v39);

        (*(v50 + 8))(v2, v42);
        (*(v48 + 8))(v5, v49);
      }
    }

    else
    {
LABEL_12:

      return sub_100024648(aBlock);
    }
  }

  return result;
}

void sub_100022CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = __chkstk_darwin(v5);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v52 = &v51 - v10;
  v11 = __chkstk_darwin(v9);
  v51 = &v51 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v51 - v14;
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  *&v62 = static TTSVBLiveSpeechSupport.favoritePhrasesKey.getter();
  *(&v62 + 1) = v18;
  v58 = &v62;
  v19 = sub_1000247B0(sub_100025C78, v57, a1);

  v20 = 0;
  if (v19)
  {
    v21 = *(v56 + OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_cloudDefaults);
    static TTSVBLiveSpeechSupport.favoritePhrasesKey.getter();
    v22 = String._bridgeToObjectiveC()();

    v23 = [v21 objectForKey:v22];

    if (v23)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    v62 = v60;
    v63 = v61;
    if (*(&v61 + 1))
    {
      sub_100001EE8(&qword_1000355A0, &qword_100028128);
      if (swift_dynamicCast())
      {
        v20 = v59;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      sub_100025AE8(&v62);
      v20 = 0;
    }
  }

  *&v62 = static TTSVBLiveSpeechSupport.favoritePhraseCategoriesKey.getter();
  *(&v62 + 1) = v24;
  __chkstk_darwin(v62);
  *(&v51 - 2) = &v62;
  v25 = sub_1000247B0(sub_100025C78, (&v51 - 4), a1);

  if (v25)
  {
    v26 = *(v56 + OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_cloudDefaults);
    static TTSVBLiveSpeechSupport.favoritePhraseCategoriesKey.getter();
    v27 = String._bridgeToObjectiveC()();

    v28 = [v26 objectForKey:v27];

    if (v28)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    v62 = v60;
    v63 = v61;
    if (*(&v61 + 1))
    {
      sub_100001EE8(&qword_1000355F8, qword_100028188);
      if (swift_dynamicCast())
      {
        v29 = v59;
      }

      else
      {
        v29 = 0;
      }

      if (a3)
      {
LABEL_21:

        if (a3 == 1)
        {
          static TTSVBLog.daemon.getter();
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&_mh_execute_header, v30, v31, "Initial sync with cloud store. Merge cloud favorites into local favorites", v32, 2u);
          }

          (*(v55 + 8))(v15, v54);
          if (v20)
          {
            v33 = *(v56 + OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_localDefaults);
            v34 = [v33 liveSpeechPhrases];
            sub_100001EE8(&qword_1000355D0, &qword_100028150);
            v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            sub_100023504(v20, v35);

            isa = Array._bridgeToObjectiveC()().super.isa;

            [v33 setLiveSpeechPhrases:isa];
          }

          return;
        }

        if (a3 == 3)
        {
          v37 = v52;
          static TTSVBLog.daemon.getter();
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            v41 = "Cloud store account changed";
            goto LABEL_39;
          }
        }

        else if (a3 == 2)
        {
          v37 = v51;
          static TTSVBLog.daemon.getter();
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            v41 = "Cloud store quota violation";
LABEL_39:
            _os_log_impl(&_mh_execute_header, v38, v39, v41, v40, 2u);
LABEL_42:
          }
        }

        else
        {
          v37 = v53;
          static TTSVBLog.daemon.getter();
          v38 = Logger.logObject.getter();
          v49 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v38, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 134217984;
            *(v50 + 4) = a3;
            _os_log_impl(&_mh_execute_header, v38, v49, "Unknown Cloud change reason=%ld", v50, 0xCu);
            goto LABEL_42;
          }
        }

        (*(v55 + 8))(v37, v54);
        return;
      }
    }

    else
    {
      sub_100025AE8(&v62);
      v29 = 0;
      if (a3)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v29 = 0;
    if (a3)
    {
      goto LABEL_21;
    }
  }

  static TTSVBLog.daemon.getter();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Cloud content changed. Replacing local favorites with external favorites", v44, 2u);
  }

  (*(v55 + 8))(v17, v54);
  if (v20)
  {
    v45 = *(v56 + OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_localDefaults);
    sub_100001EE8(&qword_1000355D0, &qword_100028150);
    v46 = Array._bridgeToObjectiveC()().super.isa;

    [v45 setLiveSpeechPhrases:v46];
  }

  if (v29)
  {
    v47 = *(v56 + OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_localDefaults);
    sub_100001EE8(&qword_1000355F0, &unk_100028178);
    v48 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v47 setLiveSpeechCategories:v48];
  }
}

uint64_t sub_100023504(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
LABEL_42:
    __break(1u);

    __break(1u);
    return result;
  }

  v42 = a1;
  v11 = a2[2];
  if (!v11)
  {
    v43 = &_swiftEmptyArrayStorage;
    goto LABEL_23;
  }

  v12 = 0;
  v43 = &_swiftEmptyArrayStorage;
  while (2)
  {
    v13 = v12;
    while (1)
    {
      if (v13 >= v11)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_41;
      }

      v14 = a2[v13 + 4];

      v15 = static TTSVBLiveSpeechSupport.phraseTextKey.getter();
      if (*(v14 + 16))
      {
        break;
      }

LABEL_6:

LABEL_7:
      ++v13;
      if (v12 == v11)
      {
        goto LABEL_23;
      }
    }

    v17 = sub_1000117EC(v15, v16);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }

    sub_100005D8C(*(v14 + 56) + 32 * v17, v44);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_7;
    }

    v20 = v46;
    if (!v46)
    {
      goto LABEL_7;
    }

    v21 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_1000244F8(0, *(v43 + 2) + 1, 1, v43);
    }

    v24 = *(v43 + 2);
    v23 = *(v43 + 3);
    if (v24 >= v23 >> 1)
    {
      v43 = sub_1000244F8((v23 > 1), v24 + 1, 1, v43);
    }

    v25 = v43;
    *(v43 + 2) = v24 + 1;
    v26 = &v25[16 * v24];
    *(v26 + 4) = v21;
    *(v26 + 5) = v20;
    if (v12 != v11)
    {
      continue;
    }

    break;
  }

LABEL_23:
  v27 = *(v42 + 16);
  if (v27)
  {
    v28 = (v42 + 32);

    v29 = v43;
    while (1)
    {
      v30 = *v28;

      v31 = static TTSVBLiveSpeechSupport.phraseTextKey.getter();
      if (*(v30 + 16))
      {
        v33 = sub_1000117EC(v31, v32);
        v35 = v34;

        if (v35)
        {
          sub_100005D8C(*(v30 + 56) + 32 * v33, v44);
          v36 = swift_dynamicCast();
          if (v36)
          {
            v44[0] = v45;
            v44[1] = v46;
            __chkstk_darwin(v36);
            *(&v41 - 2) = v44;
            v37 = sub_1000247B0(sub_100025A50, (&v41 - 4), v29);

            if ((v37 & 1) == 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a2 = sub_1000243C4(0, a2[2] + 1, 1, a2);
              }

              v39 = a2[2];
              v38 = a2[3];
              if (v39 >= v38 >> 1)
              {
                a2 = sub_1000243C4((v38 > 1), v39 + 1, 1, a2);
              }

              a2[2] = v39 + 1;
              a2[v39 + 4] = v30;
              goto LABEL_36;
            }
          }
        }
      }

      else
      {
      }

LABEL_36:
      ++v28;
      if (!--v27)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_39:

  v44[0] = a2;

  sub_10002485C(v44);

  return v44[0];
}

void sub_100023A60()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Did receive local change for LiveSpeech prefs. ", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  sub_100023BB0();
}

void sub_100023BB0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v42 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v14)
  {
    v44 = v3;
    v45 = v2;
    v42 = OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_localDefaults;
    v15 = [*(v1 + OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_localDefaults) liveSpeechPhrases];
    sub_100001EE8(&qword_1000355D0, &qword_100028150);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    static TTSVBLog.daemon.getter();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v47 = v19;
      *v18 = 136315138;
      v20 = Array.description.getter();
      v21 = v1;
      v23 = v22;

      v24 = sub_100004A24(v20, v23, &v47);
      v1 = v21;

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Pushing local prefs up to cloud. favoritePhrases=%s", v18, 0xCu);
      sub_100005D40(v19);
    }

    else
    {
    }

    v25 = v45;
    v43 = *(v44 + 8);
    v43(v7, v45);
    v26 = v46;
    v44 = OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_cloudDefaults;
    v27 = *(v1 + OBJC_IVAR____TtC13voicebankingd24LiveSpeechSyncController_cloudDefaults);
    static TTSVBLiveSpeechSupport.favoritePhrasesKey.getter();
    v28 = String._bridgeToObjectiveC()();

    [v27 setObject:v15 forKey:v28];

    v29 = [*(v1 + v42) liveSpeechCategories];
    sub_100001EE8(&qword_1000355F0, &unk_100028178);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    static TTSVBLog.daemon.getter();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47 = v33;
      *v32 = 136315138;
      v34 = Dictionary.description.getter();
      v36 = sub_100004A24(v34, v35, &v47);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Pushing local prefs up to cloud. categories=%s", v32, 0xCu);
      sub_100005D40(v33);

      v38 = v45;
      v37 = v46;
    }

    else
    {

      v37 = v26;
      v38 = v25;
    }

    v43(v37, v38);
    v39 = *(v1 + v44);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    static TTSVBLiveSpeechSupport.favoritePhraseCategoriesKey.getter();
    v41 = String._bridgeToObjectiveC()();

    [v39 setObject:isa forKey:v41];
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_100024148(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static TTSVBLiveSpeechSupport.phraseTextKey.getter();
  if (*(v2 + 16))
  {
    v6 = sub_1000117EC(v4, v5);
    v8 = v7;

    if (v8)
    {
      sub_100005D8C(*(v2 + 56) + 32 * v6, v20);
      if (swift_dynamicCast())
      {
        v10 = v18;
        v9 = v19;
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v10 = 0;
  v9 = 0xE000000000000000;
LABEL_7:
  v11 = static TTSVBLiveSpeechSupport.phraseTextKey.getter();
  if (*(v3 + 16))
  {
    v13 = sub_1000117EC(v11, v12);
    v15 = v14;

    if (v15)
    {
      sub_100005D8C(*(v3 + 56) + 32 * v13, v20);
      swift_dynamicCast();
    }
  }

  else
  {
  }

  v20[0] = v10;
  v20[1] = v9;
  sub_1000108A0();
  v16 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

  return v16 == -1;
}

char *sub_1000242C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EE8(&qword_1000355E0, &qword_100028160);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_1000243C4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001EE8(&qword_1000355D8, &qword_100028158);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001EE8(&qword_1000355D0, &qword_100028150);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000244F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EE8(&qword_1000355E8, &unk_100028168);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100024604(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000246E8(a1, v4);
}

uint64_t sub_10002469C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000246E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100025B50(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100024648(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000247B0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Int sub_10002485C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100025908(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1000248C8(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000248C8(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100001EE8(&qword_1000355D0, &qword_100028150);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100024BEC(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000249D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000249D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v32 = *a4;
    v4 = (v32 + 8 * a3 - 8);
    v5 = result - a3;
LABEL_5:
    v28 = a3;
    v6 = *(v32 + 8 * a3);
    v26 = v5;
    v27 = v4;
    while (1)
    {
      v7 = *v4;

      v8 = static TTSVBLiveSpeechSupport.phraseTextKey.getter();
      if (*(v6 + 16))
      {
        v10 = sub_1000117EC(v8, v9);
        v12 = v11;

        if (v12)
        {
          sub_100005D8C(*(v6 + 56) + 32 * v10, v31);
          if (swift_dynamicCast())
          {
            v13 = v29;
            v14 = v30;
            goto LABEL_12;
          }
        }
      }

      else
      {
      }

      v13 = 0;
      v14 = 0xE000000000000000;
LABEL_12:
      v15 = static TTSVBLiveSpeechSupport.phraseTextKey.getter();
      if (*(v7 + 16))
      {
        v17 = sub_1000117EC(v15, v16);
        v19 = v18;

        if (v19)
        {
          sub_100005D8C(*(v7 + 56) + 32 * v17, v31);
          if (swift_dynamicCast())
          {
            v20 = v29;
            v21 = v30;
            goto LABEL_18;
          }
        }
      }

      else
      {
      }

      v20 = 0;
      v21 = 0xE000000000000000;
LABEL_18:
      v31[0] = v13;
      v31[1] = v14;
      v29 = v20;
      v30 = v21;
      sub_1000108A0();
      v22 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

      if (v22 != -1)
      {
        goto LABEL_4;
      }

      if (!v32)
      {
        __break(1u);
        return result;
      }

      v23 = *v4;
      v6 = v4[1];
      *v4 = v6;
      v4[1] = v23;
      --v4;
      if (__CFADD__(v5++, 1))
      {
LABEL_4:
        a3 = v28 + 1;
        v4 = v27 + 1;
        v5 = v26 - 1;
        if (v28 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_100024BEC(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3;
  v112 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = &_swiftEmptyArrayStorage;
LABEL_115:
    v6 = *v112;
    if (!*v112)
    {
      goto LABEL_157;
    }

    v4 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_151;
    }

    result = v4;
LABEL_118:
    v126 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*v8)
      {
        v103 = *(result + 16 * v4);
        v104 = result;
        v105 = *(result + 16 * (v4 - 1) + 40);
        sub_1000254D0((*v8 + 8 * v103), (*v8 + 8 * *(result + 16 * (v4 - 1) + 32)), (*v8 + 8 * v105), v6);
        if (v7)
        {
        }

        if (v105 < v103)
        {
          goto LABEL_144;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1000258F4(v104);
        }

        if (v4 - 2 >= *(v104 + 2))
        {
          goto LABEL_145;
        }

        v106 = &v104[16 * v4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v126 = v104;
        sub_100025868(v4 - 1);
        result = v126;
        v4 = *(v126 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_155;
    }
  }

  v10 = 0;
  v11 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v10 + 1;
    v113 = v10;
    if (v10 + 1 >= v9)
    {
      goto LABEL_31;
    }

    v6 = v10;
    v110 = v11;
    v4 = *v8;
    v124 = *(*v8 + 8 * v12);
    v122 = *(v4 + 8 * v10);

    v118 = sub_100024148(&v124, &v122);
    if (v7)
    {
    }

    v13 = v10 + 2;
    v120 = 8 * v10;
    v14 = (v4 + 8 * v10 + 16);
    v116 = v9;
    while (v9 != v13)
    {
      v19 = *(v14 - 1);
      v18 = *v14;

      v20 = static TTSVBLiveSpeechSupport.phraseTextKey.getter();
      if (*(v18 + 16))
      {
        v22 = sub_1000117EC(v20, v21);
        v24 = v23;

        if (v24)
        {
          sub_100005D8C(*(v18 + 56) + 32 * v22, &v124);
          if (swift_dynamicCast())
          {
            v4 = v122;
            v6 = v123;
            goto LABEL_17;
          }
        }
      }

      else
      {
      }

      v4 = 0;
      v6 = 0xE000000000000000;
LABEL_17:
      v25 = static TTSVBLiveSpeechSupport.phraseTextKey.getter();
      if (*(v19 + 16))
      {
        v27 = sub_1000117EC(v25, v26);
        v29 = v28;

        if (v29)
        {
          sub_100005D8C(*(v19 + 56) + 32 * v27, &v124);
          if (swift_dynamicCast())
          {
            v15 = v122;
            v16 = v123;
            goto LABEL_9;
          }
        }
      }

      else
      {
      }

      v15 = 0;
      v16 = 0xE000000000000000;
LABEL_9:
      v124 = v4;
      v125 = v6;
      v122 = v15;
      v123 = v16;
      sub_1000108A0();
      v17 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

      ++v13;
      ++v14;
      v9 = v116;
      if (((v118 ^ (v17 != -1)) & 1) == 0)
      {
        v9 = v13 - 1;
        break;
      }
    }

    v8 = a3;
    v7 = 0;
    v11 = v110;
    if (!v118)
    {
      goto LABEL_30;
    }

    v30 = v113;
    if (v9 < v113)
    {
      goto LABEL_150;
    }

    if (v113 < v9)
    {
      v31 = 8 * v9 - 8;
      v32 = v9;
      do
      {
        if (v30 != --v32)
        {
          v33 = *a3;
          if (!*a3)
          {
            goto LABEL_154;
          }

          v34 = *(v33 + v120);
          *(v33 + v120) = *(v33 + v31);
          *(v33 + v31) = v34;
        }

        ++v30;
        v31 -= 8;
        v120 += 8;
      }

      while (v30 < v32);
    }

LABEL_30:
    v12 = v9;
LABEL_31:
    v35 = v8[1];
    if (v12 >= v35)
    {
      goto LABEL_61;
    }

    if (__OFSUB__(v12, v113))
    {
      goto LABEL_147;
    }

    if (v12 - v113 >= a4)
    {
      goto LABEL_61;
    }

    if (__OFADD__(v113, a4))
    {
      goto LABEL_148;
    }

    if (v113 + a4 >= v35)
    {
      v36 = v8[1];
    }

    else
    {
      v36 = v113 + a4;
    }

    if (v36 < v113)
    {
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      result = sub_1000258F4(v4);
      goto LABEL_118;
    }

    v37 = v113;
    if (v12 == v36)
    {
      goto LABEL_62;
    }

    v109 = v7;
    v111 = v11;
    v121 = *v8;
    v38 = (*v8 + 8 * v12 - 8);
    v39 = v113 - v12;
    v114 = v36;
LABEL_42:
    v117 = v38;
    v119 = v12;
    v40 = *(v121 + 8 * v12);
    v115 = v39;
LABEL_43:
    v41 = *v38;

    v42 = static TTSVBLiveSpeechSupport.phraseTextKey.getter();
    if (*(v40 + 16))
    {
      v44 = sub_1000117EC(v42, v43);
      v46 = v45;

      if (v46)
      {
        sub_100005D8C(*(v40 + 56) + 32 * v44, &v124);
        if (swift_dynamicCast())
        {
          v4 = v122;
          v6 = v123;
          goto LABEL_49;
        }
      }
    }

    else
    {
    }

    v4 = 0;
    v6 = 0xE000000000000000;
LABEL_49:
    v47 = static TTSVBLiveSpeechSupport.phraseTextKey.getter();
    if (*(v41 + 16))
    {
      v49 = sub_1000117EC(v47, v48);
      v51 = v50;

      if (v51)
      {
        sub_100005D8C(*(v41 + 56) + 32 * v49, &v124);
        if (swift_dynamicCast())
        {
          v52 = v122;
          v53 = v123;
          goto LABEL_55;
        }
      }
    }

    else
    {
    }

    v52 = 0;
    v53 = 0xE000000000000000;
LABEL_55:
    v124 = v4;
    v125 = v6;
    v122 = v52;
    v123 = v53;
    sub_1000108A0();
    v54 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

    if (v54 != -1)
    {
      goto LABEL_41;
    }

    if (!v121)
    {
      break;
    }

    v55 = *v38;
    v40 = v38[1];
    *v38 = v40;
    v38[1] = v55;
    --v38;
    if (!__CFADD__(v39++, 1))
    {
      goto LABEL_43;
    }

LABEL_41:
    v12 = v119 + 1;
    v38 = v117 + 1;
    v39 = v115 - 1;
    if (v119 + 1 != v114)
    {
      goto LABEL_42;
    }

    v12 = v114;
    v8 = a3;
    v7 = v109;
    v11 = v111;
LABEL_61:
    v37 = v113;
LABEL_62:
    if (v12 < v37)
    {
      goto LABEL_146;
    }

    v57 = v11;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v11 = v57;
    }

    else
    {
      result = sub_1000242C0(0, v57[2] + 1, 1, v57);
      v11 = result;
    }

    v4 = v11[2];
    v58 = v11[3];
    v59 = v4 + 1;
    if (v4 >= v58 >> 1)
    {
      result = sub_1000242C0((v58 > 1), v4 + 1, 1, v11);
      v11 = result;
    }

    v11[2] = v59;
    v60 = &v11[2 * v4];
    *(v60 + 4) = v113;
    *(v60 + 5) = v12;
    v61 = *v112;
    if (!*v112)
    {
      goto LABEL_156;
    }

    v10 = v12;
    if (v4)
    {
      while (1)
      {
        v62 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v63 = v11[4];
          v64 = v11[5];
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_82:
          if (v66)
          {
            goto LABEL_135;
          }

          v79 = &v11[2 * v59];
          v81 = *v79;
          v80 = v79[1];
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_138;
          }

          v85 = &v11[2 * v62 + 4];
          v87 = *v85;
          v86 = v85[1];
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_141;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_142;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v59 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v89 = &v11[2 * v59];
        v91 = *v89;
        v90 = v89[1];
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_96:
        if (v84)
        {
          goto LABEL_137;
        }

        v92 = &v11[2 * v62];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_140;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_103:
        v4 = v62 - 1;
        if (v62 - 1 >= v59)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v8)
        {
          goto LABEL_153;
        }

        v6 = v11;
        v100 = v11[2 * v4 + 4];
        v101 = v11[2 * v62 + 5];
        sub_1000254D0((*v8 + 8 * v100), (*v8 + 8 * v11[2 * v62 + 4]), (*v8 + 8 * v101), v61);
        if (v7)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_131;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000258F4(v6);
        }

        if (v4 >= *(v6 + 2))
        {
          goto LABEL_132;
        }

        v102 = &v6[16 * v4];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v126 = v6;
        result = sub_100025868(v62);
        v11 = v126;
        v59 = *(v126 + 16);
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v11[2 * v59 + 4];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_133;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_134;
      }

      v74 = &v11[2 * v59];
      v76 = *v74;
      v75 = v74[1];
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_136;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_139;
      }

      if (v78 >= v70)
      {
        v96 = &v11[2 * v62 + 4];
        v98 = *v96;
        v97 = v96[1];
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_143;
        }

        if (v65 < v99)
        {
          v62 = v59 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v9 = v8[1];
    if (v10 >= v9)
    {
      goto LABEL_115;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
  return result;
}

uint64_t sub_1000254D0(char *__src, char *a2, char *a3, char *__dst)
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (__dst != __src || &__src[8 * v10] <= __dst)
    {
      v14 = __dst;
      memmove(__dst, __src, 8 * v10);
      __dst = v14;
    }

    v15 = &__dst[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      v16 = __dst;
      goto LABEL_54;
    }

    v16 = __dst;
    while (1)
    {
      v41 = *v6;
      v40 = *v16;

      v17 = sub_100024148(&v41, &v40);
      if (v4)
      {

        v29 = v15 - v16 + 7;
        if (v15 - v16 >= 0)
        {
          v29 = v15 - v16;
        }

        if (v7 < v16 || v7 >= &v16[v29 & 0xFFFFFFFFFFFFFFF8] || v7 != v16)
        {
          v30 = 8 * (v29 >> 3);
          v31 = v7;
          goto LABEL_60;
        }

        return 1;
      }

      v18 = v17;

      if (!v18)
      {
        break;
      }

      v19 = v6;
      v20 = v7 == v6++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 += 8;
      if (v16 >= v15 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_54;
      }
    }

    v19 = v16;
    v20 = v7 == v16;
    v16 += 8;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  v16 = __dst;
  if (__dst != a2 || &a2[8 * v13] <= __dst)
  {
    memmove(__dst, a2, 8 * v13);
  }

  v15 = &v16[8 * v13];
  if (v11 < 8 || v6 <= v7)
  {
LABEL_54:
    v35 = v15 - v16 + 7;
    if (v15 - v16 >= 0)
    {
      v35 = v15 - v16;
    }

    if (v6 >= v16 && v6 < &v16[v35 & 0xFFFFFFFFFFFFFFF8] && v6 == v16)
    {
      return 1;
    }

    v30 = 8 * (v35 >> 3);
    v31 = v6;
LABEL_60:
    v34 = v16;
LABEL_61:
    memmove(v31, v34, v30);
    return 1;
  }

  v21 = -v16;
  v39 = v16;
  v37 = -v16;
LABEL_28:
  v38 = v6;
  v22 = v6 - 1;
  v23 = &v15[v21];
  v5 -= 8;
  v24 = v15;
  while (1)
  {
    v25 = *(v24 - 1);
    v24 -= 8;
    v41 = v25;
    v6 = v22;
    v40 = *v22;

    v26 = sub_100024148(&v41, &v40);
    if (v4)
    {
      break;
    }

    v27 = v26;

    v28 = v5 + 8;
    if (v27)
    {
      if (v28 != v38)
      {
        *v5 = *v6;
      }

      v16 = v39;
      if (v15 <= v39)
      {
        goto LABEL_54;
      }

      v21 = v37;
      if (v6 <= v7)
      {
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    v22 = v6;
    if (v28 != v15)
    {
      *v5 = *v24;
    }

    v23 -= 8;
    v5 -= 8;
    v15 = v24;
    if (v24 <= v39)
    {
      v15 = v24;
      v16 = v39;
      v6 = v38;
      goto LABEL_54;
    }
  }

  if (v23 >= 0)
  {
    v32 = v23;
  }

  else
  {
    v32 = v23 + 7;
  }

  v33 = v32 >> 3;
  v31 = v38;
  v34 = v39;
  if (v38 < v39 || v38 >= &v39[v32 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v38, v39, 8 * v33);
    return 1;
  }

  if (v38 != v39)
  {
    v30 = 8 * v33;
    goto LABEL_61;
  }

  return 1;
}

uint64_t sub_100025868(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000258F4(v3);
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

void *sub_10002591C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001EE8(&qword_1000355D8, &qword_100028158);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001EE8(&qword_1000355D0, &qword_100028150);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100025A90(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100025AE8(uint64_t a1)
{
  v2 = sub_100001EE8(&qword_100035278, &qword_100027F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100025BB8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100025BF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100022304(&unk_100032A28, sub_100023BA8, &unk_100032A40);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  static TTSVBLog.daemon.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "**** voicebankingd starting up", v12, 2u);
  }

  v13 = *(v4 + 8);
  v13(v9, v3);
  type metadata accessor for VoiceBankingDaemon();
  qword_100035A08 = VoiceBankingXPCServer.__allocating_init()();
  VoiceBankingDaemon.run()();
  static TTSVBLog.daemon.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "**** voicebankingd shutting down", v16, 2u);
  }

  v13(v7, v3);
  return 0;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}
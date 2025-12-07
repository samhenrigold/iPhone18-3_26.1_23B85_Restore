void TUCallCenter.incomingAudioCall.getter()
{
  v1 = [v0 incomingCalls];
  sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
  sub_1000067CC();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100017230(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      v7 = [v0 resolvedIncomingCall];
      v8 = v7;
      if (!v7 || (v9 = [v7 isVideo], v8, (v9 & 1) != 0) || !objc_msgSend(v0, "resolvedIncomingCall"))
      {
        sub_10000898C();
        goto LABEL_17;
      }

LABEL_14:
      sub_100006FB8();
      sub_100005D1C();
      sub_100030170(v10, v11, v12);
      sub_100009778();
      sub_100030170(v13, v14, TUCall_ptr);
      sub_100025C88();
      sub_100030170(v15, v16, TUCall_ptr);
LABEL_17:
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
        goto LABEL_19;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (([v5 isVideo] & 1) == 0)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t TUCallCenter.prioritizedCall.getter()
{
  if ([v0 frontmostCall])
  {
    sub_100006FB8();
    sub_100005D1C();
    sub_100030170(v1, v2, v3);
    sub_100009778();
    sub_100030170(v4, v5, TUCall_ptr);
    sub_100025C88();
    sub_100030170(v6, v7, TUCall_ptr);
  }

  else
  {
    sub_10000898C();
  }

  return sub_100005558();
}

uint64_t sub_10003012C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
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

uint64_t sub_100030170(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000064BC(255, a2, a3);
    sub_100008524();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000301D4(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  return v2;
}

id sub_100030204(uint64_t a1)
{
  v4 = *(v2 + 3328);

  return [v1 v4];
}

void sub_10003024C(uint64_t a1)
{
  v3 = v1;

  String.append(_:)(*&a1);
}

void sub_100030264(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;

  os_unfair_lock_lock(v3 + 4);
}

uint64_t sub_10003027C()
{

  return swift_getObjectType();
}

uint64_t sub_1000302DC()
{
  v3 = *(v0 + 8);
  *(v2 - 264) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v1;
  *(v2 - 240) = v3;
  return result;
}

uint64_t sub_10003032C()
{

  return swift_allocObject();
}

id sub_100030394()
{

  return [v0 view];
}

uint64_t sub_1000303B0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_10003041C@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v2;

  return CallsPresentation.full.setter();
}

uint64_t sub_100030434(uint64_t a1)
{
  sub_100009878(a1, &v2, &unk_1003B0510, &unk_100301EC0);
  if (v3)
  {
    sub_1000304E0(&v2, v4);
    sub_10015E008(v4, &v2);
    sub_10014EA98(&qword_1003AB3C8, &unk_100301ED0);
    String.init<A>(reflecting:)();
    sub_1000089D4();
    sub_100005B2C(v4);
  }

  else
  {
    sub_100008360(&v2, &unk_1003B0510, &unk_100301EC0);
    sub_100008E00();
  }

  return sub_1000089C8();
}

uint64_t sub_1000304E0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000304F8(uint64_t a1)
{
  sub_100009878(a1, &v2, &qword_1003AB3D0, &qword_1002FBD10);
  if (v3)
  {
    sub_1000304E0(&v2, v4);
    sub_10015E008(v4, &v2);
    sub_10014EA98(&qword_1003AB3D8, &qword_100301EE0);
    String.init<A>(reflecting:)();
    sub_1000089D4();
    sub_100005B2C(v4);
  }

  else
  {
    sub_100008360(&v2, &qword_1003AB3D0, &qword_1002FBD10);
    sub_100008E00();
  }

  return sub_1000089C8();
}

uint64_t sub_1000305AC(void *a1)
{
  v2 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  sub_100006848(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  v7 = a1;
  sub_100162798();
}

uint64_t sub_1000306A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10014EA98(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10003077C()
{
  sub_1000058A8();
  sub_1000301C8();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_1000075E8(v1);

  return v4(v3);
}

uint64_t sub_10003080C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100030F54;

  return v5(v2 + 32);
}

uint64_t sub_100030900()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100005B88(v2);
  *v3 = v4;
  v5 = sub_100006D10(v3);

  return sub_10003099C(v5, v6, v7, v1);
}

uint64_t sub_10003099C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for AlertConfiguration.AlertSound();
  v4[4] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  sub_10014EA98(&qword_1003AD368, &qword_1002FE158);
  v4[7] = swift_task_alloc();
  sub_10014EA98(&qword_1003AD2A0, &qword_1002FE160);
  v4[8] = swift_task_alloc();
  v5 = sub_10014EA98(&qword_1003AD370, &qword_1002FE168);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100030D24, 0, 0);
}

const __CFString *sub_100030C10(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"call";
  }

  else
  {
    return *(&off_100356AE0 + a1 - 1);
  }
}

uint64_t sub_100030D24()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR___ICSAmbientActivityController_currentActivity);
  *(v0 + 96) = v1;
  if (v1)
  {
    v2 = *(v0 + 64);
    v10 = *(v0 + 56);
    v3 = type metadata accessor for Date();
    sub_100006848(v2, 1, 1, v3);
    sub_10002E73C();
    sub_10002E790();
    sub_10002E7E4();

    ActivityContent.init(state:staleDate:relevanceScore:)();
    LocalizedStringResource.init(stringLiteral:)();
    LocalizedStringResource.init(stringLiteral:)();
    static AlertConfiguration.AlertSound.named(_:)();
    AlertConfiguration.init(title:body:sound:)();
    v4 = type metadata accessor for AlertConfiguration();
    sub_100006848(v10, 0, 1, v4);
    v5 = sub_10000A4A0();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_100037294;
    v6 = *(v0 + 88);
    v7 = *(v0 + 56);

    return v10(v6, v7);
  }

  else
  {
    **(v0 + 16) = 1;

    sub_10000535C();

    return v9();
  }
}

uint64_t sub_100030F54()
{
  sub_100006610();
  sub_1000058C4();
  v2 = v1;
  sub_1000058F8();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  sub_100006870();
  *v7 = v6;

  *v5 = *(v2 + 32);
  sub_10000535C();

  return v8();
}

uint64_t sub_1000314C4(uint64_t a1, uint64_t a2)
{
  if (qword_1003B0F58 != -1)
  {
    sub_1002570A8();
  }

  return qword_1003B0F50;
}

void sub_100031654()
{
  sub_100006B50();
  sub_100007508();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_1000316D0()
{
  sub_100006610();

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    sub_10002D474();
    sub_10002DA10();
  }

  sub_10000535C();

  return v0();
}

uint64_t sub_100031744()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR___ICSAmbientActivityController_ambientActivityQueue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100031050;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E570;
  aBlock[3] = &unk_10035E838;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10002D92C(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
  sub_10002D9BC(&qword_1003B0540, &unk_1003AAAC0, &unk_1002FB790);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t *sub_100031A20(uint64_t a1)
{
  v28 = type metadata accessor for ActivityUIDismissalPolicy();
  v1 = *(v28 - 8);
  __chkstk_darwin(v28);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10014EA98(&qword_1003AD378, &qword_1002FE170);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_1003A9FB0 != -1)
    {
LABEL_20:
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008A14(v9, &unk_1003B8960);
    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v13 = os_log_type_enabled(v11, v12);
    v26 = v10;
    v27 = v1;
    if (v13)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136315138;
      if (*&v10[OBJC_IVAR___ICSAmbientActivityController_currentActivity])
      {
        v29 = *&v10[OBJC_IVAR___ICSAmbientActivityController_currentActivity];

        sub_10014EA98(&qword_1003AD380, &qword_1002FE178);
        v16 = String.init<A>(reflecting:)();
        v18 = v17;
      }

      else
      {
        v18 = 0xE300000000000000;
        v16 = 7104878;
      }

      v19 = sub_100008ADC(v16, v18, &v30);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "Ending ambient activity: %s", v14, 0xCu);
      sub_100005B2C(v15);
    }

    sub_10014EA98(&qword_1003AD380, &qword_1002FE178);
    v20 = static Activity.activities.getter();
    v21 = sub_100017230(v20);
    v22 = 0;
    v1 = v20 & 0xC000000000000001;
    v23 = (v27 + 8);
    v8 = &qword_1002FE170;
    while (v21 != v22)
    {
      if (v1)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }
      }

      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v24 = sub_10014EA98(&qword_1003AD370, &qword_1002FE168);
      sub_100006848(v6, 1, 1, v24);
      static ActivityUIDismissalPolicy.immediate.getter();
      dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

      (*v23)(v3, v28);
      sub_1000306A4(v6, &qword_1003AD378, &qword_1002FE170);
      ++v22;
    }

    v25 = v26;
    *&v26[OBJC_IVAR___ICSAmbientActivityController_currentActivity] = 0;
  }

  return result;
}

uint64_t sub_100031DE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000321BC(uint64_t a1, void *a2)
{
  type metadata accessor for Features();
  v4 = static Features.shared.getter();
  v5 = Features.isMoreMenuEnabled.getter();

  if ((v5 & 1) != 0 && a2)
  {
    type metadata accessor for FTMenuItemRegistry();
    v7 = static FTMenuItemRegistry.shared.getter();
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    FTMenuItemRegistry.clear(for:)(v6);
  }
}

void sub_1000322E4()
{
  sub_100005D28();
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  __chkstk_darwin(v3);
  sub_100005BD0();
  sub_100006634();
  v27 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100005BD0();
  v9 = v8 - v7;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  sub_10000688C();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100005BD0();
  v16 = v15 - v14;
  sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v10);
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v16, v10);
  sub_100006BE8();
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  *(v18 + 24) = v2;
  v28[4] = sub_100034218;
  v28[5] = v18;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 1107296256;
  sub_1000070E4();
  v28[2] = v19;
  v28[3] = &unk_10035B978;
  v20 = _Block_copy(v28);
  v21 = v2;
  v22 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100025A38();
  sub_10002D8E4(v23, v24, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
  sub_100032638();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  v25 = sub_100006628();
  v26(v25);
  (*(v5 + 8))(v9, v27);

  sub_100007B28();
}

uint64_t sub_1000325FC()
{
  sub_100006BE8();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_100032638()
{
  result = qword_1003B0540;
  if (!qword_1003B0540)
  {
    sub_100155B7C(&unk_1003AAAC0, &unk_1002FB790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B0540);
  }

  return result;
}

void sub_1000326E4(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v183 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 features];
  v12 = [v11 isNameAndPhotoC3Enabled];

  if (!v12 || !a2)
  {
    return;
  }

  v184 = a2;
  v13 = sub_1000140C4(v184);
  if (!v13)
  {
    goto LABEL_18;
  }

  if (!v13[2])
  {

    goto LABEL_14;
  }

  v177 = v5;
  v14 = v13[5];
  v179 = v13[4];

  if (qword_1003A9F40 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v182 = sub_100008A14(v15, &unk_1003B8820);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v181 = v14;
  if (v18)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "SNAP: writeToLastSeenPosterCacheIfNecessary", v19, 2u);
  }

  if (![objc_opt_self() posterSourceIsSyncedWithContacts:{objc_msgSend(a1, "currentDisplayedPosterSourceForCall:", v184)}])
  {

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "SNAP: Not updating last seen poster cache because displayed poster is not synced with contacts.", v28, 2u);
    }

LABEL_18:
    v29 = v184;

    return;
  }

  v176 = [a1 sharedProfileStateOracleForCall:v184];
  v20 = [v176 currentNickname];
  v21 = [v20 wallpaper];

  v175 = v21;
  if (v21)
  {
    v22 = v21;
    v172 = sub_100231C60(v22);
    v180 = v23;
    v178 = sub_100231CD0(v22);
    v25 = v24;
  }

  else
  {
    v178 = 0;
    v172 = 0;
    v180 = 0;
    v25 = 0xF000000000000000;
  }

  v184 = v184;
  v30 = sub_100013DA8(a2);
  if (v30)
  {
    sub_100014194(0xD000000000000013, 0x80000001002A6610, v30, &v189);

    if (v190)
    {
      if (swift_dynamicCast())
      {
        if (v180)
        {
          if (v172 == *&v188[0] && v180 == *(&v188[0] + 1))
          {

            goto LABEL_59;
          }

          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v32)
          {

LABEL_59:

            v102 = Logger.logObject.getter();
            v103 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              *v104 = 0;
              _os_log_impl(&_mh_execute_header, v102, v103, "SNAP: Not updating last seen poster cache because displayed poster is not different from the one in the cache.", v104, 2u);
            }

            sub_100034FE0(v178, v25);
LABEL_94:

            return;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      sub_10000830C(&v189, &unk_1003AAF50, &qword_1002FB170);
    }
  }

  v33 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v34[2])
  {

    v48 = v184;
    sub_100034FE0(v178, v25);

    goto LABEL_14;
  }

  v174 = v25;
  v36 = v34[4];
  v35 = v34[5];

  v186 = v36;
  v187 = v35;
  v37._countAndFlagsBits = 0xD000000000000018;
  v37._object = 0x80000001002A65B0;
  String.append(_:)(v37);
  v170 = objc_opt_self();
  v38 = [v170 defaultManager];
  v171 = v186;
  v173 = v187;
  v39 = String._bridgeToObjectiveC()();
  LOBYTE(v36) = [v38 fileExistsAtPath:v39 isDirectory:0];

  if (v36)
  {
LABEL_41:
    v53 = v174;
    if (v174 >> 60 == 15)
    {
      v171 = 0;
      v54 = 0;
    }

    else
    {
      sub_10016D1C4(v178, v174);
      UUID.init()();
      v55 = UUID.uuidString.getter();
      v57 = v56;
      (*(v183 + 8))(v10, v8);
      *&v189 = 47;
      *(&v189 + 1) = 0xE100000000000000;
      v58._countAndFlagsBits = v55;
      v58._object = v57;
      String.append(_:)(v58);

      v59 = sub_10022A58C(v189, *(&v189 + 1), v171, v173);
      v54 = v60;

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v183 = v54;
        v64 = v63;
        v65 = v59;
        v66 = swift_slowAlloc();
        *&v189 = v66;
        *v64 = 136315138;
        *(v64 + 4) = sub_100008ADC(7104878, 0xE300000000000000, &v189);
        _os_log_impl(&_mh_execute_header, v61, v62, "SNAP: Requesting to write last seen poster to cache path %s", v64, 0xCu);
        sub_100005B2C(v66);
        v59 = v65;

        v54 = v183;
      }

      URL.init(fileURLWithPath:)();
      v67 = v178;
      v53 = v174;
      Data.write(to:options:)();
      v171 = v59;
      (v177)[1](v7, v4);
      sub_100034FE0(v67, v53);
    }

    v83 = sub_100013DA8(a2);

    v183 = v54;
    if (v83)
    {
      sub_100014194(0xD000000000000013, 0x80000001002A65F0, v83, &v189);

      if (v190)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_65;
        }

        v84 = v188[0];

        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *&v188[0] = v88;
          *v87 = 136315138;
          v189 = v84;

          v89 = String.init<A>(reflecting:)();
          v91 = sub_100008ADC(v89, v90, v188);

          *(v87 + 4) = v91;
          _os_log_impl(&_mh_execute_header, v85, v86, "SNAP: Requesting to remove previous last seen poster file %s", v87, 0xCu);
          sub_100005B2C(v88);
        }

        v92 = v170;
        v93 = [v170 defaultManager];
        v94 = String._bridgeToObjectiveC()();
        v95 = [v93 contentsAtPath:v94];

        if (v95)
        {
          v96 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v98 = v97;

          sub_10016D16C(v96, v98);
          v99 = [v92 defaultManager];
          v100 = String._bridgeToObjectiveC()();
          *&v189 = 0;
          LODWORD(v98) = [v99 removeItemAtPath:v100 error:&v189];

          if (v98)
          {
            v101 = v189;

            v54 = v183;
            goto LABEL_65;
          }

          v155 = v189;

          v156 = _convertNSErrorToError(_:)();

          swift_willThrow();

          swift_errorRetain();
          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            *&v188[0] = swift_slowAlloc();
            *v159 = 136315394;
            v189 = v84;
            v160 = String.init<A>(reflecting:)();
            v162 = sub_100008ADC(v160, v161, v188);

            *(v159 + 4) = v162;
            *(v159 + 12) = 2080;
            *&v189 = v156;
            swift_errorRetain();
            sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
            v163 = String.init<A>(reflecting:)();
            v165 = sub_100008ADC(v163, v164, v188);

            *(v159 + 14) = v165;
            _os_log_impl(&_mh_execute_header, v157, v158, "SNAP: Failed to remove old last seen file path %s with error %s", v159, 0x16u);
            swift_arrayDestroy();

            sub_100034FE0(v178, v53);
          }

          else
          {

            sub_100034FE0(v178, v53);
          }

LABEL_14:

          return;
        }

        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.default.getter();
        v107 = os_log_type_enabled(v105, v106);
        v54 = v183;
        if (v107)
        {
          v108 = swift_slowAlloc();
          *v108 = 0;
          _os_log_impl(&_mh_execute_header, v105, v106, "SNAP: last seen poster file already doesn't exist, don't need to request FileManager to remove it, but we still need to replace the last seen poster data with current poster data)", v108, 2u);
        }
      }

      else
      {
        sub_10000830C(&v189, &unk_1003AAF50, &qword_1002FB170);
      }
    }

LABEL_65:

    swift_bridgeObjectRetain_n();
    v109 = v175;
    v110 = v175;
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();
    v177 = v110;

    if (os_log_type_enabled(v111, v112))
    {
      v113 = 7104878;
      v114 = v54;
      v115 = swift_slowAlloc();
      *&v188[0] = swift_slowAlloc();
      *v115 = 136315650;
      if (v114)
      {
        *&v189 = v171;
        *(&v189 + 1) = v114;
        v116 = String.init<A>(reflecting:)();
        v118 = v117;
      }

      else
      {
        v118 = 0xE300000000000000;
        v116 = 7104878;
      }

      v120 = sub_100008ADC(v116, v118, v188);

      *(v115 + 4) = v120;
      *(v115 + 12) = 2080;
      if (v180)
      {
        *&v189 = v172;
        *(&v189 + 1) = v180;

        v121 = String.init<A>(reflecting:)();
        v123 = v122;
      }

      else
      {
        v123 = 0xE300000000000000;
        v121 = 7104878;
      }

      v124 = sub_100008ADC(v121, v123, v188);

      *(v115 + 14) = v124;
      *(v115 + 22) = 2080;
      if (v109)
      {
        v125 = v177;
        *&v189 = v177;
        sub_1000064BC(0, &qword_1003AAF48, IMWallpaper_ptr);
        v126 = v125;
        v113 = String.init<A>(reflecting:)();
        v128 = v127;
      }

      else
      {
        v128 = 0xE300000000000000;
      }

      v119 = v181;
      v129 = sub_100008ADC(v113, v128, v188);

      *(v115 + 24) = v129;
      _os_log_impl(&_mh_execute_header, v111, v112, "SNAP: - filePath: %s, currentIMWallpaperFilePath: %s, currentIMWallpaper: %s ", v115, 0x20u);
      swift_arrayDestroy();

      v54 = v183;
    }

    else
    {

      v119 = v181;
    }

    if (v54)
    {
      if (!v180)
      {
LABEL_86:

        v136 = Dictionary.init(dictionaryLiteral:)();
LABEL_87:
        swift_bridgeObjectRetain_n();

        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          *&v189 = v140;
          *v139 = 136315138;
          sub_10014EA98(&qword_1003AAF38, &qword_1002FB7B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1002FAB60;
          *(inited + 32) = v179;
          *(inited + 40) = v119;
          *(inited + 48) = v136;

          sub_10014EA98(&qword_1003AAF30, &qword_1002FB7A8);
          *&v188[0] = Dictionary.init(dictionaryLiteral:)();
          sub_10014EA98(&qword_1003AAF40, &unk_1002FB7B8);
          v142 = String.init<A>(reflecting:)();
          v144 = sub_100008ADC(v142, v143, &v189);

          *(v139 + 4) = v144;
          _os_log_impl(&_mh_execute_header, v137, v138, "SNAP: Adding item to user defaults %s", v139, 0xCu);
          sub_100005B2C(v140);
        }

        else
        {
        }

        v145 = objc_opt_self();
        v146 = [v145 standardUserDefaults];
        v147 = String._bridgeToObjectiveC()();
        v148 = [v146 dictionaryForKey:v147];

        if (v148)
        {
          v149 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v190 = sub_10014EA98(&qword_1003AAF30, &qword_1002FB7A8);
          *&v189 = v136;
          sub_100034DBC(&v189, v188);
          swift_isUniquelyReferenced_nonNull_native();
          v185 = v149;
          sub_100034E40(v188, v179, v181);
        }

        else
        {
          sub_10014EA98(&qword_1003AAF28, &qword_1002FB7A0);
          v150 = swift_initStackObject();
          *(v150 + 16) = xmmword_1002FAB60;
          v151 = v181;
          *(v150 + 32) = v179;
          *(v150 + 40) = v151;
          *(v150 + 72) = sub_10014EA98(&qword_1003AAF30, &qword_1002FB7A8);
          *(v150 + 48) = v136;
          Dictionary.init(dictionaryLiteral:)();
        }

        v152 = [v145 standardUserDefaults];
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v154 = String._bridgeToObjectiveC()();
        [v152 setValue:isa forKey:v154];

        sub_100034FE0(v178, v174);

        goto LABEL_94;
      }

      if (v109)
      {
        sub_10014EA98(&qword_1003AAF28, &qword_1002FB7A0);
        v130 = swift_initStackObject();
        *(v130 + 16) = xmmword_1002FB3B0;
        *(v130 + 32) = 0xD000000000000013;
        *(v130 + 40) = 0x80000001002A65F0;
        *(v130 + 48) = v171;
        *(v130 + 56) = v54;
        *(v130 + 72) = &type metadata for String;
        *(v130 + 80) = 0xD000000000000013;
        v131 = v172;
        *(v130 + 88) = 0x80000001002A6610;
        *(v130 + 96) = v131;
        *(v130 + 104) = v180;
        *(v130 + 120) = &type metadata for String;
        strcpy((v130 + 128), "isSensitiveKey");
        *(v130 + 143) = -18;
        v132 = v177;

        *(v130 + 144) = [v132 contentIsSensitive];
        *(v130 + 168) = &type metadata for Bool;
        *(v130 + 176) = 0xD000000000000016;
        *(v130 + 184) = 0x80000001002A6630;
        v133 = [v132 metadata];
        v134 = v133;
        if (v133)
        {
          v135 = [v133 dictionaryRepresentation];

          v134 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        }

        *(v130 + 216) = sub_10014EA98(&qword_1003AAF30, &qword_1002FB7A8);
        if (!v134)
        {
          v134 = Dictionary.init(dictionaryLiteral:)();
        }

        *(v130 + 192) = v134;
        v136 = Dictionary.init(dictionaryLiteral:)();

        goto LABEL_87;
      }
    }

    goto LABEL_86;
  }

  v40 = v173;

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  v169 = v42;
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v168 = v43;
    v167 = swift_slowAlloc();
    *&v188[0] = v167;
    *v43 = 136315138;
    v166 = v41;
    *&v189 = v171;
    *(&v189 + 1) = v40;

    v44 = String.init<A>(reflecting:)();
    v46 = sub_100008ADC(v44, v45, v188);

    v47 = v168;
    *(v168 + 1) = v46;
    v41 = v166;
    _os_log_impl(&_mh_execute_header, v166, v169, "SNAP: Could not find existing cache path directory, so creating %s", v47, 0xCu);
    sub_100005B2C(v167);
  }

  v49 = [v170 defaultManager];
  v50 = String._bridgeToObjectiveC()();
  *&v189 = 0;
  v51 = [v49 createDirectoryAtPath:v50 withIntermediateDirectories:0 attributes:0 error:&v189];

  if (v51)
  {
    v52 = v189;
    goto LABEL_41;
  }

  v68 = v189;

  v69 = v184;

  v70 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v71 = v173;

  swift_errorRetain();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();

  v74 = os_log_type_enabled(v72, v73);
  v75 = v174;
  if (v74)
  {
    v76 = swift_slowAlloc();
    *&v188[0] = swift_slowAlloc();
    *v76 = 136315394;
    *&v189 = v171;
    *(&v189 + 1) = v71;
    v77 = String.init<A>(reflecting:)();
    v79 = sub_100008ADC(v77, v78, v188);

    *(v76 + 4) = v79;
    *(v76 + 12) = 2080;
    *&v189 = v70;
    swift_errorRetain();
    sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
    v80 = String.init<A>(reflecting:)();
    v82 = sub_100008ADC(v80, v81, v188);

    *(v76 + 14) = v82;
    _os_log_impl(&_mh_execute_header, v72, v73, "SNAP: Failed to create caches directory %s with error %s", v76, 0x16u);
    swift_arrayDestroy();

    sub_100034FE0(v178, v75);
  }

  else
  {

    sub_100034FE0(v178, v75);
  }
}

void sub_100034220(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_copyWeak(&v11, (a1 + 32));
  v10 = v8;
  TUDispatchMainIfNecessary();

  objc_destroyWeak(&v11);
}

uint64_t sub_10003430C()
{
  if (qword_1003AA100 != -1)
  {
    sub_1000081D4(&qword_1003AA100);
  }

  if (*(off_1003B07E8 + 2))
  {

    sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
    Task.cancel()();
  }

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  sub_100005C44();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t sub_100034418()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

id sub_10003444C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{

  return sub_10018F538(-1.0, -1.0, -1.0, -1.0);
}

uint64_t sub_100034484()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10003449C()
{
  sub_100006610();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  sub_100008DDC(v2);

  return sub_100034524(v0);
}

uint64_t sub_100034524(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000345E4, 0, 0);
}

uint64_t sub_1000345E4()
{
  sub_100006610();
  sub_100008D1C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    type metadata accessor for TPTipsHelper();
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v3 = sub_100008DDC(v2);

    return static TPTipsHelper.shared.getter(v3);
  }

  else
  {

    sub_10000535C();

    return v4();
  }
}

void sub_1000349B4(void *a1)
{
  if (a1)
  {
    v16 = a1;
    v15 = [v1 callRecordingButtonViewController];
    if (v15)
    {
      type metadata accessor for CallRecordingButtonViewController();
      v2 = swift_dynamicCastClass();
      if (v2)
      {
        v3 = v2;
        v4 = [v16 arrangedSubviews];
        sub_1000064BC(0, &qword_1003AAAD0, UIView_ptr);
        v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = v15;
        v7 = [v3 view];
        if (v7)
        {
          v8 = v7;

          v17 = v8;
          __chkstk_darwin(v9);
          v14[2] = &v17;
          sub_100170A48(sub_100171A80, v14, v5);
          v11 = v10;

          if ((v11 & 1) == 0)
          {

            goto LABEL_14;
          }

          [v3 willMoveToParentViewController:0];
          v12 = [v3 view];

          if (v12)
          {
            [v12 removeFromSuperview];

            [v3 removeFromParentViewController];
            [v16 layoutIfNeeded];

LABEL_14:
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v13 = v15;
    }

    else
    {
      v13 = v16;
    }
  }
}

BOOL sub_100034BE0()
{

  return os_log_type_enabled(v1, v0);
}

id sub_100034BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(*(a9 + 56) + 8 * a1);

  return v10;
}

uint64_t sub_100034C2C()
{
  v3 = *(*(v0 + v1) + 16);

  return sub_100216954(v3);
}

id sub_100034C4C()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

uint64_t sub_100034C64(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

BOOL sub_100034C80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t sub_100034CA0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___ICSCallManagerBridge_foregroundRingingCall;
  sub_100034C64(v2 + OBJC_IVAR___ICSCallManagerBridge_foregroundRingingCall, a2);
  *(v2 + v4) = 1;
  sub_100034CF4();
  return sub_100017014(a1);
}

_OWORD *sub_100034DBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100034E04(uint64_t a1)
{
  v2 = sub_100037240();

  return CodingKey.debugDescription.getter(a1, v2);
}

_OWORD *sub_100034E40(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  sub_10001411C(a2, a3);
  sub_100008194();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_10014EA98(&qword_1003AFB28, &qword_1003010F8);
  if (!sub_100012B50())
  {
    goto LABEL_5;
  }

  v12 = sub_10001411C(a2, a3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    sub_100005B2C((v14[7] + 32 * v10));
    sub_1001A0B10();

    return sub_100034DBC(v15, v16);
  }

  else
  {
    sub_1002318DC(v10, a2, a3, a1, v14);
    sub_1001A0B10();
  }
}

id sub_100034FC8()
{
  v3 = *(v1 + 1040);

  return [v0 v3];
}

uint64_t sub_100034FE0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10016D16C(result, a2);
  }

  return result;
}

void sub_100034FF4()
{
  v1 = type metadata accessor for URL();
  sub_100005568(v1);
  v2 = *(v0 + 16);

  sub_1001699AC(v2);
}

uint64_t sub_100035BCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100006848(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100035C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PillStateMonitor.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100035CF8(void *a1)
{
  if (a1)
  {
    v34 = a1;
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_presentedBanner);
    if (!v3)
    {
      return;
    }

    v34 = v3;
  }

  v4 = a1;
  v5 = sub_1001EBED8();
  if (v5)
  {
    v6 = v5;
    v7 = String._bridgeToObjectiveC()();
    v8 = [v34 requestIdentifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = v7;
    sub_10014EA98(&unk_1003AE200, &unk_1002FF020);
    v13 = Dictionary.init(dictionaryLiteral:)();
    v35 = 0;
    v14 = sub_1001ED130(v9, v11, v7, 1, v13, &v35, v6);

    v15 = v35;
    if (v14)
    {

      v16 = *(v1 + OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_presentedBanner);
      *(v1 + OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_presentedBanner) = 0;
    }

    else
    {
      v21 = v15;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C(&qword_1003A9F40);
      }

      v22 = type metadata accessor for Logger();
      sub_100008A14(v22, &unk_1003B8820);
      swift_errorRetain();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v35 = v26;
        *v25 = 136315138;
        swift_errorRetain();
        sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
        v27 = String.init<A>(describing:)();
        v29 = sub_100008ADC(v27, v28, &v35);

        *(v25 + 4) = v29;
        sub_100007B68();
        _os_log_impl(v30, v31, v32, v33, v25, 0xCu);
        sub_100005B2C(v26);
        sub_100005BB8(v26);
        sub_100005BB8(v25);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v17 = type metadata accessor for Logger();
    sub_100008A14(v17, &unk_1003B8820);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = sub_100005924();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "CarPlayBannerManager: Unable to obtain banner source", v20, 2u);
      sub_100005BB8(v20);
    }
  }
}

uint64_t sub_1000360C4()
{
  sub_100006610();
  sub_1000058C4();
  sub_1000085E4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = sub_100008184();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000361AC()
{

  return swift_unknownObjectRelease();
}

void sub_1000361FC()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2048;
  *(v1 + 14) = v0;
}

id sub_10003621C()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2080;
  v5 = *(v3 + 3240);

  return [v1 v5];
}

void sub_100036240(__n128 a1, __n128 a2)
{

  GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(v3, v2, 100.0, 100.0);
}

uint64_t sub_100036278(uint64_t result)
{
  *(v2 - 136) = v1;
  *(v2 - 128) = result;
  *(v2 - 168) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10003629C()
{
  sub_100006610();
  (*(v0[7] + 104))(v0[8], enum case for TPTipsHelper.Entry.Kind.waitOnHold(_:), v0[6]);
  v0[12] = type metadata accessor for MainActor();
  v0[13] = static MainActor.shared.getter();
  sub_10000594C();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = sub_100005B78();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100036348()
{
  sub_1000058A8();
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  dispatch thunk of TPTipsHelper.removeEntries(_:)();

  (*(v3 + 8))(v2, v4);
  v5 = sub_100008184();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000363DC()
{
  sub_100006610();
  *(v0 + 112) = static MainActor.shared.getter();
  sub_10000594C();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = sub_100005B78();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100036458()
{
  sub_100006610();
  v1 = *(v0 + 72);

  [v1 dismissWaitOnHoldTip];
  if (qword_1003AA100 != -1)
  {
    sub_1000081D4(&qword_1003AA100);
  }

  _s21WaitOnHoldTipUserInfoCMa_0();
  sub_100005C44();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  off_1003B07E8 = v2;

  v3 = sub_100008184();

  return _swift_task_switch(v3, v4, v5);
}

void sub_100036558()
{
  type metadata accessor for TPTipsHelper();
  dispatch thunk of static TPTipsHelper.updateCanDisplayWaitOnHoldTip(_:)();
  v1 = [v0 waitOnHoldTipView];
  if (v1)
  {
    v2 = v1;
    [v0 removeSubviewFromMiddleStackViewWithView:?];
    [v0 setWaitOnHoldTipView:0];
  }
}

uint64_t sub_100036634()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10003666C()
{
  sub_100006610();

  sub_10000535C();

  return v1();
}

id sub_100036D38(uint64_t a1)
{
  result = [*(a1 + 32) activePhoneCallExists];
  if ((result & 1) == 0)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100036E14;
    v4[3] = &unk_100356988;
    v5 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100036E94;
    v3[3] = &unk_1003569B0;
    v3[4] = v5;
    return [UIView animateWithDuration:v4 animations:v3 completion:0.349999994];
  }

  return result;
}

void sub_100036E14(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.5, 1.5);
  v2 = [*(a1 + 32) view];
  v4 = v5;
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) view];
  [v3 setAlpha:0.0];
}

void sub_100036E94(uint64_t a1)
{
  if (([*(a1 + 32) activePhoneCallExists] & 1) == 0)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:*(a1 + 32)];

    v6 = +[SOSManager sharedInstance];
    v7 = [v6 currentSOSInitiationState];

    if (v7 == 1)
    {
      v4 = sub_100004F84(v8);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      LOWORD(v14[0]) = 0;
      v9 = "Not dismissing PHCarplayInCallViewController's remoteViewControllerProxy because SOS is active";
    }

    else
    {
      v10 = [*(a1 + 32) _remoteViewControllerProxy];
      [v10 dismiss];

      v11 = +[UIApplication sharedApplication];
      v12 = [v11 delegate];
      [v12 hideCarPlayUI];

      v4 = sub_100004F84(v13);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      LOWORD(v14[0]) = 0;
      v9 = "Dismissing PHCarPlayInCallViewController";
    }

    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v9, v14, 2u);
    goto LABEL_10;
  }

  if (![*(a1 + 32) activePhoneCallExists])
  {
    return;
  }

  v2 = [*(a1 + 32) view];
  v3 = *&CGAffineTransformIdentity.c;
  v14[0] = *&CGAffineTransformIdentity.a;
  v14[1] = v3;
  v14[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v14];

  v4 = [*(a1 + 32) view];
  [v4 setAlpha:1.0];
LABEL_10:
}

unint64_t sub_100037240()
{
  result = qword_1003AD350;
  if (!qword_1003AD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD350);
  }

  return result;
}

uint64_t sub_100037294()
{
  sub_100006880();
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 56);
  v5 = *v0;
  sub_100006870();
  *v6 = v5;

  sub_1000306A4(v4, &qword_1003AD368, &qword_1002FE158);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100037430, 0, 0);
}

uint64_t sub_100037430()
{
  sub_100006880();
  **(v0 + 16) = *(v0 + 96) == 0;

  sub_10000535C();

  return v1();
}

void sub_100037558(void *a1)
{
  v2 = v1;
  v3 = [a1 session];
  v4 = [v3 persistentIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = sub_1000076E0(v5, v6);
  LOBYTE(v3) = sub_10000C348(v7, &type metadata for String, v8, v7, v9, v10, v11, v12, v15);

  if ((v3 & 1) == 0)
  {
    v13 = *(v2 + OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_carPlayWindow);
    *(v2 + OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_carPlayWindow) = 0;

    v14 = *(v2 + OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_hardwareControlsBroadcaster);
    *(v2 + OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_hardwareControlsBroadcaster) = 0;
  }
}

NSString sub_100038420@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10014F814(a2);
  *a1 = result;
  return result;
}

void sub_100038448(uint64_t a1@<X8>)
{
  sub_1000383D4();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

Swift::Int8 sub_10003851C(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return sub_100007E34(a1);
  }

  return UniqueAddress.init()()._placeholder;
}

uint64_t sub_100038530(uint64_t result, int a2, int a3)
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

Swift::Int8 sub_100038558(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return sub_100007E34(a1);
  }

  return UniqueAddress.init()()._placeholder;
}

uint64_t sub_10003856C(uint64_t result, int a2, int a3)
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

uint64_t sub_10003859C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000385E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100038624()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  v1 = sub_10000FF5C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100038664()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003869C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000386D8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100038738()
{
  v1 = type metadata accessor for UUID();
  sub_10000688C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

uint64_t sub_100038820()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038858()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000388D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038910()
{
  sub_100006BE8();

  return _swift_deallocObject(v1, v2, v3);
}

char *sub_100038954()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10014EA98(&unk_1003AAB30, &qword_1002FADA8);
  }

  else
  {
    return &type metadata for ()[8];
  }
}

uint64_t sub_100038984()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000389BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100038ADC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038B14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100038B5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038B94()
{
  swift_unknownObjectRelease();
  sub_100005B2C((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100038C48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038C80()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038CC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100038D04()
{

  sub_100006BE8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100038D5C()
{

  sub_100006BE8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100038D94()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100007608();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100038DC4()
{
  v1 = type metadata accessor for URL();
  sub_10000688C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100038E7C()
{
  v1 = sub_100007608();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100038EB0()
{
  swift_unknownObjectRelease();
  v0 = sub_100007608();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100038EE0()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100007608();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100038F10()
{
  type metadata accessor for ConversationControlsType();
  sub_100006B9C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100038FBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038FF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100039034()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100039074()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000390F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039130()
{

  swift_unknownObjectRelease();
  sub_100006BE8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003916C()
{
  swift_unknownObjectRelease();
  sub_100006BE8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000391A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000391E8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039220()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039258()
{

  sub_10017ED80(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000392B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003937C()
{
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000393B0()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000393F0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  sub_100030224();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003943C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  sub_100190880();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000394B4()
{
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000394E8()
{
  _Block_release(*(v0 + 16));
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003951C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100039560()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039598()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000395E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039628()
{
  sub_100006BE8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100039664()
{

  sub_100008C18();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000396A8()
{
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000396DC()
{
  sub_100008C18();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100039718()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000397AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000397E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039840()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003987C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000398B4()
{
  v1 = sub_10014EA98(&qword_1003AC210, &qword_1002FCB68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100039948()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000399B0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100039A3C()
{
  _Block_release(*(v0 + 24));

  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100039A94()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039ACC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039B04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100039B3C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isAnyAccountSubscribed];
  *a2 = result;
  return result;
}

char *sub_100039B70(void *a1)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for ()[8];
  }

  type metadata accessor for Optional();
  return type metadata accessor for Mutex();
}

char *sub_100039BBC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10014EA98(&qword_1003AC850, &qword_1002FD1C8);
  }

  else
  {
    return &type metadata for ()[8];
  }
}

char *sub_100039BEC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10014EA98(&qword_1003AC858, &qword_1002FD1D0);
  }

  else
  {
    return &type metadata for ()[8];
  }
}

char *sub_100039C1C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10014EA98(&qword_1003AC860, &unk_1002FD1D8);
  }

  else
  {
    return &type metadata for ()[8];
  }
}

char *sub_100039C4C(uint64_t a1)
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return type metadata accessor for Mutex();
  }

  else
  {
    return &type metadata for ()[8];
  }
}

uint64_t sub_100039C8C()
{
  _Block_release(*(v0 + 16));
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100039CC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039CF8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100039D40()
{
  v1 = type metadata accessor for Logger();
  sub_10000688C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100039DF8()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100039E2C()
{
  v1 = type metadata accessor for Logger();
  sub_10000688C();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = (v4 + 72) & ~v4;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  sub_100006998(v8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v13 = *(v12 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v6, v1);

  v14 = type metadata accessor for UUID();
  if (!sub_100006AC0(v0 + v11, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v0 + v11, v14);
  }

  return _swift_deallocObject(v0, v11 + v13, v4 | v10 | 7);
}

uint64_t sub_100039FC0()
{
  v1 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  sub_100006998(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v6 = *(v5 + 64);

  v7 = type metadata accessor for UUID();
  if (!sub_100006AC0(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_10003A0C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

__n128 sub_10003A108(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_10003A11C()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10003A15C(uint64_t a1)
{
  result = [sub_100025368(a1) transcriptionEnabled];
  *v1 = result;
  return result;
}

id sub_10003A190(uint64_t a1)
{
  result = [sub_100025368(a1) storageUsage];
  *v1 = result;
  return result;
}

id sub_10003A1C4(uint64_t a1)
{
  result = [sub_100025368(a1) isMessageWaiting];
  *v1 = result;
  return result;
}

uint64_t sub_10003A1F8()
{

  sub_100008C18();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003A22C()
{

  sub_100030224();

  return _swift_deallocObject(v0, v1, v2);
}

id sub_10003A260(uint64_t a1)
{
  result = [sub_100025368(a1) online];
  *v1 = result;
  return result;
}

id sub_10003A294(uint64_t a1)
{
  result = [sub_100025368(a1) anyAccountSubscribed];
  *v1 = result;
  return result;
}

uint64_t sub_10003A320()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003A360()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

char *sub_10003A394()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10014EA98(&qword_1003ACA70, &qword_1002FD528);
  }

  else
  {
    return &type metadata for ()[8];
  }
}

char *sub_10003A3C4()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10014EA98(&qword_1003ACA78, &qword_1002FD530);
  }

  else
  {
    return &type metadata for ()[8];
  }
}

char *sub_10003A3F4()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10014EA98(qword_1003ACA80, &unk_1002FD538);
  }

  else
  {
    return &type metadata for ()[8];
  }
}

char *sub_10003A424(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for ()[8];
  }

  type metadata accessor for FTMessage.Lazy.State(255, *a1, a3, a4);
  return type metadata accessor for Mutex();
}

uint64_t sub_10003A4A8()
{
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003A4DC()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003A510()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A594()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A5CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CameraStateMonitor.Snapshot(0);
  v5 = sub_100006AC0(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003A614(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for CameraStateMonitor.Snapshot(0);

  return sub_100006848(a1, v5, a3, v6);
}

uint64_t sub_10003A674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100006AC0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10003A730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100006848(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10003A7D8()
{
  _Block_release(*(v0 + 16));
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003A824()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A85C()
{

  sub_100006BE8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003A898()
{

  sub_100006BE8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003A8CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A90C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A97C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A9D8()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10003AA10()
{
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003AA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003AA60(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10003AAAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AAE4()
{
  v2 = sub_10014EA98(&qword_1003AD420, &qword_1002FE358);
  sub_100006998(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  type metadata accessor for _Glass._GlassVariant();
  sub_100006E40();
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = *(v11 + 64);

  v13 = type metadata accessor for _Glass._GlassVariant.Size();
  if (!sub_100006AC0(v1 + v5, 1, v13))
  {
    (*(*(v13 - 8) + 8))(v1 + v5, v13);
  }

  v14 = v4 | v10;
  v15 = (v5 + v7 + v10) & ~v10;
  (*(v9 + 8))(v1 + v15, v0);

  return _swift_deallocObject(v1, v15 + v12, v14 | 7);
}

uint64_t sub_10003AC58()
{
  sub_1000078AC();
  result = EnvironmentValues.lineLimit.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_10003AC8C()
{
  sub_1000078AC();
  result = EnvironmentValues.multilineTextAlignment.getter();
  *v0 = result;
  return result;
}

uint64_t sub_10003ACDC()
{
  sub_1000078AC();
  result = EnvironmentValues.foregroundColor.getter();
  *v0 = result;
  return result;
}

void sub_10003AD08()
{
  sub_1000078AC();
  EnvironmentValues.minimumScaleFactor.getter();
  *v0 = v1;
}

uint64_t sub_10003AD58()
{
  sub_1000078AC();
  result = EnvironmentValues.font.getter();
  *v0 = result;
  return result;
}

uint64_t sub_10003AD88()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AE14()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AE4C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10003AEC8()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100007608();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003AEF8()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_10003AF30()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100007608();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003AF60()
{
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003AF94()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003AFC8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003B008()
{
  sub_100155B7C(&qword_1003ADB18, &qword_1002FEB40);
  sub_1001DF2A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10003B07C()
{
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003B0B0()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003B134(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10014EA98(&qword_1003ADCC0, &unk_1002FEC70);
    v9 = a1 + *(a3 + 32);

    return sub_100006AC0(v9, a2, v8);
  }
}

void *sub_10003B1C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10014EA98(&qword_1003ADCC0, &unk_1002FEC70);
    v8 = v5 + *(a4 + 32);

    return sub_100006848(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003B258(uint64_t a1)
{
  sub_10014EA98(&qword_1003ADDB0, &unk_1002FED00);
  sub_1000058E8();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10003B2B8()
{
  sub_100155B7C(&qword_1003ADDB0, &unk_1002FED00);
  sub_1001E2E88();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10003B33C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B46C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B4A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_10003B4DC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10014EA98(&qword_1003AE198, &qword_1002FEF80);
  }

  else
  {
    return &type metadata for ()[8];
  }
}

char *sub_10003B50C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10014EA98(&qword_1003AC858, &qword_1002FD1D0);
  }

  else
  {
    return &type metadata for ()[8];
  }
}

uint64_t sub_10003B53C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B574()
{
  v1 = type metadata accessor for Logger();
  sub_10000688C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_10003B648()
{
  type metadata accessor for Logger();
  sub_100006B9C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10003B6D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B710()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B75C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B794()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003B838(__int128 *a1)
{
  type metadata accessor for Label();
  type metadata accessor for MultimodalNavigationTitleLabelStyle();
  sub_1000080FC();
  sub_1001F03E8();
  sub_10000C4C8();
  sub_100006A14();
  swift_getOpaqueTypeMetadata2();
  sub_100006A14();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  sub_100025B84();
  type metadata accessor for HStack();
  sub_100155B7C(&qword_1003AC2D0, &qword_1002FCCB0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_100006EB8();
  swift_getWitnessTable();
  sub_1001F0458();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10003BA2C()
{
  _Block_release(*(v0 + 16));
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003BA60()
{
  swift_unknownObjectRelease();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003BAB8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10003BAF0()
{

  sub_100006BE8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003BB24()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003BB8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003BBC4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003BBFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003BC34()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003BC7C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10003BCC0()
{
  sub_100025394();
  sub_1001FDB8C();
  *v0 = v1;
}

uint64_t sub_10003BCEC()
{
  sub_100025394();
  v0 = sub_1001FDA20();
  return sub_100025F0C(v0);
}

uint64_t sub_10003BD38()
{
  sub_100025394();
  v0 = sub_1001FD988();
  return sub_100025F0C(v0);
}

uint64_t sub_10003BD84()
{
  sub_100025394();
  v0 = sub_1001FD974();
  return sub_100025F0C(v0);
}

uint64_t sub_10003BDD0()
{
  sub_100025394();
  v0 = sub_1001FD960();
  return sub_100025F0C(v0);
}

uint64_t sub_10003BE1C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10003BE54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003BE94()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003BED0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003BF18()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003BF58()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003BFA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003BFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_100006AC0(a1, a2, v4);
}

uint64_t sub_10003C038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();

  return sub_100006848(a1, a2, a2, v4);
}

uint64_t sub_10003C088()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003C0BC()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10003C0FC()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  v1 = sub_10000FF5C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003C14C()
{

  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003C180()
{
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003C1B4()
{
  swift_unknownObjectRelease();

  v1 = sub_10000FF5C();

  return _swift_deallocObject(v1, v2, v3);
}

char *sub_10003C240()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10014EA98(&qword_1003AF068, &qword_1002FFFA0);
  }

  else
  {
    return &type metadata for ()[8];
  }
}

uint64_t sub_10003C284()
{
  _Block_release(*(v0 + 24));

  sub_100008C18();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003C2CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003C304()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003C344()
{

  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003C378()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003C3AC()
{
  swift_unknownObjectRelease();

  sub_100008C18();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003C3FC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003C434()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003C484()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10003C4C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 64);
  *a2 = v2;
  return v2;
}

uint64_t sub_10003C4D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_10003C560()
{

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_10003C5F0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10014EA98(&qword_1003AF498, &qword_100300498);
    v9 = a1 + *(a3 + 20);

    return sub_100006AC0(v9, a2, v8);
  }
}

void *sub_10003C684(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10014EA98(&qword_1003AF498, &qword_100300498);
    v8 = v5 + *(a4 + 20);

    return sub_100006848(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003C750()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003C7A8()
{
  v0 = sub_100155B7C(&qword_1003AF818, &qword_100300910);
  sub_100228294();
  v9 = sub_10022834C();
  return sub_10000C648(v9, v1, v2, v3, v4, v5, v6, v7, v0);
}

uint64_t sub_10003C804(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_1000085C0();
  v6[0] = sub_100155B7C(v3, v4);
  v6[1] = v1;
  v6[2] = sub_100027E08(&qword_1003AF930, &qword_1003AF928, &unk_1003009C8, &protocol conformance descriptor for VStack<A>);
  v6[3] = v2;
  type metadata accessor for ClarityUITitleHeader(255, v6);
  sub_100155B7C(&qword_1003AE898, &qword_1002FF7F0);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100027E08(&qword_1003AE890, &qword_1003AE898, &qword_1002FF7F0, &protocol conformance descriptor for _TraitWritingModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_10003C934()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003C97C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10003C9BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003CA24()
{
  v0 = sub_1000085C0();
  v2 = sub_100155B7C(v0, v1);
  sub_100007A60();
  sub_100027E08(v3, &qword_1003AA9C0, &qword_1002FACB0, v4);
  v13 = sub_100228988();
  return sub_10000C648(v13, v5, v6, v7, v8, v9, v10, v11, v2);
}

uint64_t sub_10003CAA4()
{
  v0 = sub_1000085C0();
  v2 = sub_100155B7C(v0, v1);
  sub_100007A60();
  sub_100027E08(v3, &qword_1003AF980, &qword_100300DB8, v4);
  v13 = sub_10022834C();
  return sub_10000C648(v13, v5, v6, v7, v8, v9, v10, v11, v2);
}

uint64_t sub_10003CBB0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003CC28()
{

  sub_100006BE8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003CC5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003CC94()
{
  v1 = type metadata accessor for URL();
  sub_10000688C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10003CD4C()
{
  sub_100006BE8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003CD88()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003CDC0()
{
  type metadata accessor for ConversationControlsType();
  sub_100006B9C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10003CE74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PillStateMonitor.Snapshot(0);
  v5 = sub_100006AC0(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003CEBC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PillStateMonitor.Snapshot(0);

  return sub_100006848(a1, v5, a3, v6);
}

uint64_t sub_10003CF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100006AC0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10003CFD8()
{
  _Block_release(*(v0 + 16));
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003D018()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10003D05C()
{
  sub_100025394();
  result = sub_10023E240();
  *v0 = result;
  return result;
}

void sub_10003D08C()
{
  sub_100025394();
  sub_10023E310();
  *v0 = v1;
}

uint64_t sub_10003D0B8()
{
  sub_100025394();
  result = sub_10023E820();
  *v0 = result & 1;
  return result;
}

uint64_t sub_10003D10C()
{
  sub_100025394();
  result = sub_10023E2B0();
  *v0 = result;
  return result;
}

void *sub_10003D1A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100242430();
  *a1 = result;
  return result;
}

uint64_t sub_10003D1E8()
{
  swift_unknownObjectWeakDestroy();
  sub_100005C44();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10003D21C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003D25C()
{
  type metadata accessor for WaitOnHoldTip();
  sub_100006E40();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_10003D334()
{
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003D368()
{
  type metadata accessor for UUID();
  sub_100006E40();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, v7 + 8, v4 | 7);
}

uint64_t sub_10003D430@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10024B0B8();
  *a1 = result;
  return result;
}

uint64_t sub_10003D460@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10024B11C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10003D4BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003D4FC()
{
  v1 = type metadata accessor for WaitOnHoldTip();
  sub_10000688C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_10003D5D8()
{
  sub_100005C44();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10003D60C()
{
  v1 = type metadata accessor for UUID();
  sub_10000688C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_10003D700@<X0>(uint64_t *a1@<X8>)
{
  result = Tips.Action.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003D744@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003D78C()
{
  sub_100155B7C(&qword_1003B08E0, &qword_100302388);
  sub_10025186C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10003D7F0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10003D828()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_10003D890(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_100007AA8(a3, result);
  }

  return result;
}

char *sub_10003D8B0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100007AA8(a3, result);
  }

  return result;
}

uint64_t sub_10003D8D8()
{
  v1 = sub_10000C254();
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_10003D900@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001CA510(*v1);
  *a1 = result;
  return result;
}

void sub_10003DFF4(id a1)
{
  v1 = +[PHUIConfiguration screenSize];
  if (v1 == 7 || v1 == 2)
  {
    qword_1003A7B20 = 0x3FB47AE147AE147BLL;
  }
}

unint64_t sub_10003E0C8(uint64_t a1)
{
  result = [*(a1 + 32) screenSize];
  if (result > 7)
  {
    v2 = 1;
  }

  else
  {
    v2 = qword_1002F8D50[result];
  }

  qword_1003B0B68 = v2;
  return result;
}

void sub_10003E14C(id a1)
{
  v1 = +[PHUIConfiguration screenSize];
  if (v1 == 7 || v1 == 2)
  {
    byte_1003B0B78 = 1;
  }
}

void sub_10003E1BC(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[PHUIConfiguration screenSize];
  v7 = v6 == 7 || v6 == 2;
  v8 = 3.40282347e38;
  if (v7)
  {
    v8 = 420.0;
  }

  if (v3 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v3;
  }

  if (v8 >= v9)
  {
    v8 = v9;
  }

  qword_1003B0B88 = *&v8;
}

void sub_10003E748(id a1)
{
  v1 = +[PHUIConfiguration inCallControlSize];
  v2 = 10.0;
  if ((v1 - 1) <= 3)
  {
    v2 = dbl_1002F8D90[(v1 - 1)];
  }

  v5 = [UIFont systemFontOfSize:v2];
  v3 = [v5 withCaseSensitiveAttribute];
  v4 = qword_1003B0BA8;
  qword_1003B0BA8 = v3;
}

void sub_10003E810(id a1)
{
  v1 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightMedium];
  v2 = qword_1003B0BB8;
  qword_1003B0BB8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10003E8A4(id a1)
{
  v1 = [UIFont monospacedDigitSystemFontOfSize:15.0 weight:UIFontWeightRegular];
  v2 = qword_1003B0BC8;
  qword_1003B0BC8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10003E938(id a1)
{
  v1 = [UIFont monospacedDigitSystemFontOfSize:18.0 weight:UIFontWeightRegular];
  v2 = qword_1003B0BD8;
  qword_1003B0BD8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10003E9CC(id a1)
{
  v1 = [UIFont monospacedDigitSystemFontOfSize:20.0 weight:UIFontWeightRegular];
  v2 = qword_1003B0BE8;
  qword_1003B0BE8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10003EBC4(id a1)
{
  v1 = +[PHUIConfiguration screenSize];
  v2 = 18.0;
  if (v1 == 6)
  {
    v2 = 20.0;
  }

  v3 = [UIFont monospacedDigitSystemFontOfSize:v2 weight:UIFontWeightRegular];
  v4 = qword_1003B0BF8;
  qword_1003B0BF8 = v3;

  _objc_release_x1(v3, v4);
}

void sub_10003ECEC(id a1)
{
  v1 = +[PHUIConfiguration inCallControlSize];
  v2 = 10.0;
  if ((v1 - 1) <= 3)
  {
    v2 = dbl_1002F8D90[(v1 - 1)];
  }

  v3 = [UIFont monospacedDigitSystemFontOfSize:v2 weight:UIFontWeightLight];
  v4 = qword_1003B0C08;
  qword_1003B0C08 = v3;

  _objc_release_x1(v3, v4);
}

void sub_10003EDA4(id a1)
{
  v3 = [UIFontDescriptor phPreferredFontDescriptorForTextStyle:UIFontTextStyleBody];
  [v3 pointSize];
  v1 = [UIFont monospacedDigitSystemFontOfSize:"monospacedDigitSystemFontOfSize:weight:" weight:?];
  v2 = qword_1003B0C18;
  qword_1003B0C18 = v1;
}

void sub_10003EE58(id a1)
{
  v1 = +[PHUIConfiguration screenSize];
  if (v1 == 7 || v1 == 2)
  {
    byte_1003B0C28 = 1;
  }
}

void sub_1000424E0(uint64_t a1)
{
  [*(a1 + 32) labelAlphaValueForActivityState:*(a1 + 40)];
  v6 = v5;
  v7 = [*(a1 + 32) participantMarqueeLabel];
  [v7 setAlpha:v6];

  v8 = [*(a1 + 32) isSwapEnabled];
  v9 = *(a1 + 32);
  if (v8)
  {
    [v9 activityState];
    v10 = [*(a1 + 32) participantMarqueeLabel];
    [v10 setPreferredVibrancy:1];

    v11 = [*(a1 + 32) statusLabel];
    v12 = [v11 text];
    v13 = &_sScI4next7ElementQzSgyYaKFTj_ptr;
    v14 = +[NSBundle conversationKit];
    v15 = [v14 localizedStringForKey:@"HOLD_LABEL" value:&stru_100361FD0 table:@"CallStatus"];
    if (v12 == v15)
    {
      v16 = 1.0;
    }

    else
    {
      v1 = [*(a1 + 32) statusLabel];
      v2 = [v1 text];
      v13 = +[NSBundle conversationKit];
      v3 = [v13 localizedStringForKey:@"SWAP_LABEL" value:&stru_100361FD0 table:@"CallStatus"];
      if (v2 == v3)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = 0.0;
      }
    }

    v17 = [*(a1 + 32) swapButton];
    [v17 setAlpha:v16];

    if (v12 != v15)
    {
    }

    v21 = [*(a1 + 32) swapButton];
    [v21 alpha];
    if (v18 == 0.0)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 0.0;
    }

    v20 = [*(a1 + 32) statusLabel];
    [v20 setAlpha:v19];
  }

  else
  {
    v21 = [v9 statusLabel];
    [v21 setAlpha:v6];
  }
}

void sub_100043A54(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

void sub_100043BF4(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void sub_100043C3C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 videoOverlayViewController:*(a1 + 32) isShowingOverlay:0];
}

void sub_1000442D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000442EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100044304(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000446B8(id a1)
{
  v1 = dispatch_queue_create("com.apple.mobilephone.tuRouteUI", 0);
  v2 = qword_1003B0C38;
  qword_1003B0C38 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000448DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) fetchFallbackAudioControlsGlyphWithCompletion:*(a1 + 40)];
  }
}

void sub_100044A1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_HeadphoneJackIsConnectedAttribute];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) != 0 || [WeakRetained isBluetoothLE])
  {
    v5 = *(a1 + 32);
    v6 = [UIImage headphonesRouteGlyphForDisplayStyle:1];
    (*(v5 + 16))(v5, v6);
LABEL_4:

    goto LABEL_5;
  }

  v7 = [WeakRetained isAuxiliary];
  v8 = *(a1 + 32);
  if (v7)
  {
    v6 = [UIImage bluetoothAudioRouteGlyphForDisplayStyle:1];
    (*(v8 + 16))(v8, v6);
    goto LABEL_4;
  }

  (*(v8 + 16))(v8, 0);
LABEL_5:
}

void sub_100045AA8(uint64_t a1, void *a2)
{
  v4 = a2;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100045D80(uint64_t a1, void *a2)
{
  v4 = a2;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100045E70(id a1, PHSingleCallParticipantLabelView *a2)
{
  v2 = a2;
  v3 = [(PHSingleCallParticipantLabelView *)v2 secondaryInfoLabel];
  [v3 setAlpha:1.0];

  v4 = [(PHSingleCallParticipantLabelView *)v2 callDisplayStyleManager];
  v5 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [v4 callDisplayStyle]);
  v6 = [(PHSingleCallParticipantLabelView *)v2 secondaryInfoLabel];
  [v6 setFont:v5];

  v7 = [(PHSingleCallParticipantLabelView *)v2 secondaryInfoLabel];
  [v7 setNumberOfLines:1];

  v8 = [(PHSingleCallParticipantLabelView *)v2 secondaryInfoLabel];
  [v8 _setTextEncapsulation:0];

  v9 = [(PHSingleCallParticipantLabelView *)v2 callDisplayStyleManager];
  v10 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [v9 callDisplayStyle]);
  v11 = [(PHAbstractCallParticipantLabelView *)v2 statusLabel];
  [v11 setFont:v10];

  v12 = [(PHAbstractCallParticipantLabelView *)v2 statusLabel];

  [v12 setAlpha:1.0];
}

void sub_100045FD4(id a1, PHSingleCallParticipantLabelView *a2)
{
  v2 = a2;
  v3 = [(PHSingleCallParticipantLabelView *)v2 secondaryInfoLabel];
  [v3 setAlpha:1.0];

  v4 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightLight];
  v5 = [(PHSingleCallParticipantLabelView *)v2 secondaryInfoLabel];
  [v5 setFont:v4];

  v6 = [(PHSingleCallParticipantLabelView *)v2 secondaryInfoLabel];
  [v6 setNumberOfLines:1];

  v14 = [[NSTextEncapsulation alloc] initWithShape:2];
  v7 = +[UIColor whiteColor];
  v8 = [v7 colorWithAlphaComponent:0.1];
  [v14 setColor:v8];

  [v14 setStyle:1];
  v9 = [(PHSingleCallParticipantLabelView *)v2 secondaryInfoLabel];
  [v9 _setTextEncapsulation:v14];

  v10 = [(PHSingleCallParticipantLabelView *)v2 callDisplayStyleManager];
  v11 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [v10 callDisplayStyle]);
  v12 = [(PHAbstractCallParticipantLabelView *)v2 statusLabel];
  [v12 setFont:v11];

  v13 = [(PHAbstractCallParticipantLabelView *)v2 statusLabel];

  [v13 setAlpha:1.0];
}

void sub_100046188(id a1, PHSingleCallParticipantLabelView *a2)
{
  v2 = a2;
  v3 = [(PHSingleCallParticipantLabelView *)v2 secondaryInfoLabel];
  [v3 setAlpha:1.0];

  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v5 = [(PHSingleCallParticipantLabelView *)v2 secondaryInfoLabel];
  [v5 setFont:v4];

  v6 = [(PHSingleCallParticipantLabelView *)v2 secondaryInfoLabel];
  [v6 setNumberOfLines:0];

  v7 = [(PHSingleCallParticipantLabelView *)v2 secondaryInfoLabel];
  [v7 _setTextEncapsulation:0];

  v8 = [(PHSingleCallParticipantLabelView *)v2 callDisplayStyleManager];
  v9 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [v8 callDisplayStyle]);
  v10 = [(PHAbstractCallParticipantLabelView *)v2 statusLabel];
  [v10 setFont:v9];

  v11 = [(PHAbstractCallParticipantLabelView *)v2 statusLabel];

  [v11 setAlpha:1.0];
}

void sub_100047A94(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) statusLabel];
  [v3 setHidden:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) iconView];
  [v5 setHidden:v4];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) badgeView];
  [v7 setHidden:v6];
}

void sub_100047BAC(uint64_t a1)
{
  v2 = [*(a1 + 32) iconView];
  [v2 setHidden:1];

  v3 = [*(a1 + 32) badgeView];
  [v3 setHidden:1];
}

void sub_1000486EC(uint64_t a1)
{
  CGAffineTransformMakeScale(&v4, 0.9, 0.9);
  v2 = [*(a1 + 32) participantMarqueeLabel];
  v3 = v4;
  [v2 setTransform:&v3];
}

void sub_100048758(uint64_t a1)
{
  v2 = [*(a1 + 32) participantMarqueeLabel];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) statusLabel];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) badgeView];
  [v4 setAlpha:0.0];
}

void sub_1000487E8(uint64_t a1)
{
  v2 = [*(a1 + 32) firstNameLabel];
  v7 = *&CGAffineTransformIdentity.c;
  v9 = *&CGAffineTransformIdentity.a;
  v8 = v9;
  v10 = v7;
  v11 = *&CGAffineTransformIdentity.tx;
  v6 = v11;
  [v2 setTransform:&v9];

  v3 = [*(a1 + 32) lastNameLabel];
  v9 = v8;
  v10 = v7;
  v11 = v6;
  [v3 setTransform:&v9];

  v4 = [*(a1 + 32) firstNameLabel];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) lastNameLabel];
  [v5 setAlpha:1.0];
}

void sub_100048BCC(uint64_t a1)
{
  CGAffineTransformMakeScale(&v6, 0.9, 0.9);
  v2 = [*(a1 + 32) firstNameLabel];
  v5 = v6;
  [v2 setTransform:&v5];

  CGAffineTransformMakeScale(&v4, 0.9, 0.9);
  v3 = [*(a1 + 32) lastNameLabel];
  v5 = v4;
  [v3 setTransform:&v5];
}

void sub_100048C80(uint64_t a1)
{
  v2 = [*(a1 + 32) firstNameLabel];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) lastNameLabel];
  [v3 setAlpha:0.0];
}

void sub_100048CF4(uint64_t a1)
{
  v2 = [*(a1 + 32) participantMarqueeLabel];
  v3 = *&CGAffineTransformIdentity.c;
  v7[0] = *&CGAffineTransformIdentity.a;
  v7[1] = v3;
  v7[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v7];

  v4 = [*(a1 + 32) participantMarqueeLabel];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) statusLabel];
  [v5 setAlpha:1.0];

  v6 = [*(a1 + 32) badgeView];
  [v6 setAlpha:1.0];
}

void sub_1000499D4(id *a1, uint64_t a2)
{
  v3 = a1;
  if (*(a1 + 48) == 1)
  {
    a1 = [a1[4] setWantsBlur:0];
  }

  if (!a2)
  {
    v4 = sub_100004F84(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100254230(v4);
    }

    v5 = [v3[5] sharedProfileStateOracle];
    v10 = 0;
    v6 = [v5 updateContactAndNicknamesForAutoUpdateWithError:&v10];
    v7 = v10;

    if (v7)
    {
      v9 = sub_100004F84(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100254274(v7, v9);
      }
    }
  }
}

void sub_10004AD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004AD98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained animateToFirstLabel];
    WeakRetained = v2;
  }
}

void sub_10004AEC4(uint64_t a1)
{
  v2 = [*(a1 + 32) statusLabel];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) posterNameViewModel];
  [v3 updatePosterNameAlpha:0.0];
}

id *sub_10004AF34(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [result[4] statusLabel];
    [v3 setAttributedOrPlainText:v2[5]];

    v4 = [v2[4] posterNameViewModel];
    v5 = [v2[4] statusLabel];
    v6 = [v5 text];
    [v4 updateStatus:v6];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004B030;
    v7[3] = &unk_100356988;
    v7[4] = v2[4];
    return [UIView animateWithDuration:v7 animations:0.200000003];
  }

  return result;
}

void sub_10004B030(uint64_t a1)
{
  v2 = [*(a1 + 32) firstNameLabel];
  v3 = [v2 text];
  if (v3)
  {
    v4 = [*(a1 + 32) lastNameLabel];
    v5 = [v4 text];
    if (v5)
    {
      v6 = [*(a1 + 32) firstNameLabel];
      v7 = [v6 text];
      if ([v7 length])
      {
        v8 = [*(a1 + 32) lastNameLabel];
        v9 = [v8 text];
        if ([v9 length])
        {
          v10 = 0.0;
        }

        else
        {
          v10 = 1.0;
        }
      }

      else
      {
        v10 = 1.0;
      }
    }

    else
    {
      v10 = 1.0;
    }
  }

  else
  {
    v10 = 1.0;
  }

  v11 = [*(a1 + 32) statusLabel];
  [v11 setAlpha:v10];

  v12 = [*(a1 + 32) posterNameViewModel];
  [v12 updatePosterNameAlpha:1.0];
}

void sub_10004C070(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (![v2 isCallRinging])
  {

    goto LABEL_5;
  }

  v3 = [*(a1 + 32) ambientLayout];

  if (!v3)
  {
LABEL_5:
    v4 = [*(a1 + 32) avatarView];
    v5 = v4;
    v7 = *&CGAffineTransformIdentity.c;
    v8 = *&CGAffineTransformIdentity.a;
    v9 = v7;
    v6 = *&CGAffineTransformIdentity.tx;
    goto LABEL_6;
  }

  CGAffineTransformMakeScale(&v11, 0.9, 0.9);
  v4 = [*(a1 + 32) avatarView];
  v5 = v4;
  v8 = *&v11.a;
  v9 = *&v11.c;
  v6 = *&v11.tx;
LABEL_6:
  v10 = v6;
  [v4 setTransform:&v8];
}

void sub_100050D54(id a1)
{
  v1 = [[PHPIPController alloc] initForScreenSharing:0];
  v2 = qword_1003B0C48;
  qword_1003B0C48 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100051180(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 5;
  }

  else
  {
    v2 = 4;
  }

  return [a2 setContentType:v2];
}

void sub_1000517FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_100051820(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setRotating:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"PHPIPControllerDidRotateNotification" object:*(a1 + 32)];

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  if ([WeakRetained wantsPreferredContentSizeUpdateAfterRotationFinishes])
  {
    [WeakRetained setWantsPreferredContentSizeUpdateAfterRotationFinishes:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100051914;
    block[3] = &unk_100356988;
    block[4] = WeakRetained;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100051914(uint64_t a1)
{
  v1 = [*(a1 + 32) pipProxy];
  [v1 preferredContentSizeDidChangeForViewController];
}

void sub_100051958(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setRotating:1];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"PHPIPControllerWillRotateNotification" object:*(a1 + 32)];

  v5 = [*(a1 + 32) pipProxy];
  [v5 rotateContentContainer:a2 withCompletionHandler:*(a1 + 40)];
}

void sub_100051F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100051F70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPipState:3];
}

id sub_10005256C(uint64_t a1)
{
  result = [*(a1 + 32) pipState];
  if (!result)
  {
    result = [*(a1 + 32) shouldObtainDismissalAssertions];
    if (result)
    {
      v3 = [objc_opt_class() inCallRootViewControllerClass];

      return [v3 releaseDismissalAssertionForReason:@"PHPIPPresenceReason"];
    }
  }

  return result;
}

BOOL sub_100053A08(id a1, TUConversationActivitySession *a2)
{
  v2 = a2;
  v3 = [(TUConversationActivitySession *)v2 state]== 1 || [(TUConversationActivitySession *)v2 state]== 0;

  return v3;
}

void sub_100054850(uint64_t a1)
{
  v3 = [*(a1 + 32) speechSynthesizer];
  v2 = [*(a1 + 32) speechRequest];
  [v3 cancelWithRequest:v2];
}

void sub_100054C78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_100054C94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didStartSpeaking];
}

void sub_100054CD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained speechSynthesizer];
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100054DBC;
  v5[3] = &unk_100356F88;
  objc_copyWeak(&v6, (a1 + 40));
  [v3 speakWithSpeechRequest:v4 didFinish:v5];

  [WeakRetained setPlayAnnouncementBlock:0];
  objc_destroyWeak(&v6);
}

void sub_100054DBC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didFinishSpeakingWithError:v3];
}

void sub_100054E18(uint64_t a1)
{
  [*(a1 + 32) setPlayAnnouncementBlock:*(a1 + 40)];
  [*(a1 + 32) delay];
  v3 = dispatch_time(0, (v2 * 1000000000.0));
  v4 = *(a1 + 40);

  dispatch_after(v3, &_dispatch_main_q, v4);
}

void sub_100054F40(uint64_t a1)
{
  block = [*(a1 + 32) playAnnouncementBlock];
  if (block)
  {
    dispatch_block_cancel(block);
  }

  [*(a1 + 32) setPlayAnnouncementBlock:0];
  v2 = [*(a1 + 32) speechSynthesizer];
  v3 = [*(a1 + 32) speechRequest];
  [v2 cancelWithRequest:v3];
}

id sub_100055660(uint64_t a1)
{
  result = [*(a1 + 32) currentState];
  if (result == 7)
  {
    v3 = *(a1 + 32);

    return [v3 setCurrentState:0];
  }

  return result;
}

void sub_100055B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100055BA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained suppressRingtone];
}

void sub_100056380(uint64_t a1, void *a2)
{
  v3 = [a2 response];
  if (v3 == 1)
  {
    v4 = 32;
  }

  else
  {
    if (v3 != 2)
    {
      return;
    }

    v4 = 40;
  }

  v5 = *(a1 + v4);
  if (v5)
  {
    v7 = v5;
    v6 = +[LSApplicationWorkspace defaultWorkspace];
    [v6 openSensitiveURL:v7 withOptions:0];
  }
}

uint64_t sub_100056690(uint64_t a1)
{
  result = +[PHUIConfiguration inCallBottomBarSpacing];
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v4 = 78.3000031;
        goto LABEL_17;
      }

      v3 = 0x404B000000000000;
      goto LABEL_13;
    }

    if (result == 5)
    {
      result = [*(a1 + 40) homeButtonOffsetForView:*(a1 + 32)];
      v6 = 124.0;
      goto LABEL_16;
    }

    if (result == 6)
    {
      result = [*(a1 + 40) homeButtonOffsetForView:*(a1 + 32)];
      v6 = 126.0;
LABEL_16:
      v4 = v6 - v5;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (!result)
  {
    v3 = 0x4049000000000000;
LABEL_13:
    v4 = *&v3;
    goto LABEL_17;
  }

  if (result != 2)
  {
LABEL_11:
    v4 = 61.0;
    goto LABEL_17;
  }

  v4 = 85.5;
LABEL_17:
  qword_1003B0C58 = *&v4;
  return result;
}

void sub_1000567A0(id a1)
{
  v1 = +[PHUIConfiguration inCallBottomBarLowerOffset];
  v2 = 0;
  if ((v1 - 1) <= 4)
  {
    v2 = qword_1002F8F80[(v1 - 1)];
  }

  qword_1003B0C68 = v2;
}

void sub_100056BDC(id a1)
{
  v1 = sub_100004F84(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "PHAudioCallViewController: Requested Punch Out presentation", buf, 2u);
  }

  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 frontmostAudioOrVideoCall];

  if (v3)
  {
    v4 = [v3 provider];
    v5 = [v4 bundleIdentifier];

    v6 = [v5 length];
    v7 = sub_100004F84(v6);
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Punching out to app with bundle identifier %@", buf, 0xCu);
      }

      v11[0] = FBSOpenApplicationOptionKeyUnlockDevice;
      v11[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
      v12[0] = &__kCFBooleanTrue;
      v12[1] = &__kCFBooleanTrue;
      v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
      v9 = objc_alloc_init(FBSOpenApplicationService);
      v10 = [FBSOpenApplicationOptions optionsWithDictionary:v8];
      [v9 openApplication:v5 withOptions:v10 completion:&stru_1003570E8];
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1002544D0(v3, v8);
    }
  }
}

void sub_100056DE4(id a1, BSProcessHandle *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_100004F84(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Punchout completed - Process: %@ Error: %@", &v7, 0x16u);
  }
}

void sub_100056FB4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) provider];
  v4 = [v3 bundleIdentifier];

  if ([v4 length])
  {
    [*(a1 + 40) activateProviderInBackgroundWithBundleID:v4];
  }

  else
  {
    v5 = sub_100004F84(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100254548(v2, v5);
    }
  }
}

void sub_10005718C(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100004F84(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Background activation completed - Error: %@", &v5, 0xCu);
  }
}

uint64_t sub_100057780(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1003B0C78;
  qword_1003B0C78 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100057BC4(id a1)
{
  v1 = objc_alloc_init(PHAudioInterruptionController);
  v2 = qword_1003B0C88;
  qword_1003B0C88 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100057EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100057ED4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100004F84(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Communication policy changed notification fired", v3, 2u);
  }

  [WeakRetained handleCommunicationPolicyChangedNotification];
}

BOOL sub_1000587DC(id a1, TUCall *a2)
{
  v2 = a2;
  if (([(TUCall *)v2 isSOS]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(TUCall *)v2 isEmergency];
  }

  return v3;
}

void sub_100059948(uint64_t a1)
{
  v2 = [*(a1 + 32) speechSynthesizer];
  [v2 speakWithSpeechRequest:*(a1 + 40) didFinish:&stru_100357218];
}

void sub_1000599A4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = sub_100004F84(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100254444(v3, v4);
    }
  }
}

void sub_100059DE0(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = *&CGAffineTransformIdentity.c;
  v5[0] = *&CGAffineTransformIdentity.a;
  v5[1] = v3;
  v5[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v5];

  v4 = [*(a1 + 32) view];
  [v4 setAlpha:1.0];
}

BOOL sub_100059FC4(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isConversation])
  {
    v3 = [(TUCall *)v2 status]== 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_10005C45C(uint64_t a1)
{
  v2 = [*(a1 + 32) isHighlighted];
  v5 = [*(a1 + 32) roundView];
  v3 = 0.649999976;
  if (!v2)
  {
    v3 = 0.100000001;
  }

  v4 = [UIColor colorWithWhite:1.0 alpha:v3];
  [v5 setBackgroundColor:v4];
}

void sub_10005F4A0(id a1)
{
  v1 = +[PHUIConfiguration inCallControlSpacing];
  v2 = 41.0;
  if (!v1)
  {
    v2 = 34.0;
  }

  qword_1003B0CA0 = *&v2;
}

void sub_100060B8C(id *a1)
{
  [a1[4] setAlpha:0.0];
  [a1[5] setAlpha:0.0];
  [a1[6] setAlpha:0.0];
  v2 = [a1[7] singleCallLabelView];
  [v2 setAlpha:1.0];
}

id sub_100060C04(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) removeFromSuperview];
  v2 = *(a1 + 48);

  return [v2 removeFromSuperview];
}

void sub_100060C48(id *a1)
{
  [a1[4] setAlpha:0.0];
  [a1[5] setAlpha:0.0];
  v2 = [a1[6] topMultipleCallLabelView];
  [v2 setAlpha:1.0];

  v3 = [a1[6] bottomMultipleCallLabelView];
  [v3 setAlpha:1.0];
}

id sub_100060CD0(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

id sub_100062CD0(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = +[NSDate date];
  }

  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateStyle:0];
  [v2 setTimeStyle:1];
  v3 = [v2 stringFromDate:v1];

  return v3;
}

BOOL sub_100062D68(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = +[NSDate date];
  }

  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setLocalizedDateFormatFromTemplate:@"j"];
  v3 = [v2 stringFromDate:v1];
  v4 = +[NSCharacterSet decimalDigitCharacterSet];
  v5 = [v4 invertedSet];

  v6 = [v3 componentsSeparatedByCharactersInSet:v5];
  v7 = [v6 componentsJoinedByString:&stru_100361FD0];

  v8 = objc_alloc_init(NSNumberFormatter);
  v9 = [v8 numberFromString:v7];

  v10 = [v9 intValue] == 1;
  return v10;
}

id sub_100062E8C(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = +[NSDate date];
  }

  v2 = sub_100062D68(v1);
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"SOS_KAPPA_RESTING_VIEW_TITLE_WITH_TIME_%@_SINGULAR";
  }

  else
  {
    v5 = @"SOS_KAPPA_RESTING_VIEW_TITLE_WITH_TIME_%@_PLURAL";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_100361FD0 table:@"Localizable-kappa"];
  v7 = sub_100062CD0(v1);
  v8 = [NSString stringWithFormat:v6, v7];

  return v8;
}

id sub_100062F88(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = +[NSDate date];
  }

  v2 = sub_100062D68(v1);
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"SOS_NEWTON_RESTING_VIEW_SUBTITLE_WITH_TIME_%@_SINGULAR";
  }

  else
  {
    v5 = @"SOS_NEWTON_RESTING_VIEW_SUBTITLE_WITH_TIME_%@_PLURAL";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_100361FD0 table:@"Localizable-Stewie"];
  v7 = sub_100062CD0(v1);
  v8 = [NSString stringWithFormat:v6, v7];

  return v8;
}

void sub_100063DF8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [PHEmergencyHandsetDialerNumberPadButton alloc];
  v7 = [v5 intValue];

  v8 = v7;
  v9 = [*(a1 + 32) traitCollection];
  v10 = -[PHEmergencyHandsetDialerNumberPadButton initForCharacter:style:](v6, "initForCharacter:style:", v8, [v9 userInterfaceStyle]);

  [*(a1 + 40) insertObject:v10 atIndex:a3];
}

id sub_100064C30(void *a1)
{
  v1 = a1;
  v7.width = 1.0;
  v7.height = 1.0;
  UIGraphicsBeginImageContext(v7);
  CurrentContext = UIGraphicsGetCurrentContext();
  v3 = [v1 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v3);
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 1.0;
  v8.size.height = 1.0;
  CGContextFillRect(CurrentContext, v8);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
}

uint64_t sub_100067D5C(void *a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) type] == 4)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = +[ICSApplicationServices sharedInstance];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = UIApplicationMain(a1, a2, 0, v7);

  objc_autoreleasePoolPop(v4);
  return v8;
}

void sub_1000689F8(id a1, UIButton *a2)
{
  v2 = a2;
  v3 = +[UIButtonConfiguration tintedButtonConfiguration];
  v22 = v2;
  if (([(UIButton *)v2 isHighlighted]& 1) != 0 || ([(UIButton *)v2 isSelected]& 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(UIButton *)v2 isFocused];
  }

  v5 = objc_alloc_init(NSMutableAttributedString);
  v6 = [UIImage systemImageNamed:@"phone.down.fill"];
  v7 = [NSTextAttachment textAttachmentWithImage:v6];

  v21 = v7;
  v8 = [NSAttributedString attributedStringWithAttachment:v7];
  [v5 appendAttributedString:v8];

  v9 = [NSAttributedString alloc];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"CARPLAY_END_BUTTON" value:&stru_100361FD0 table:@"PHCarPlay"];
  v12 = [@" " stringByAppendingString:v11];
  v25[0] = NSFontAttributeName;
  v13 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightMedium];
  v26[0] = v13;
  v25[1] = NSForegroundColorAttributeName;
  if (v4)
  {
    +[UIColor dynamicCarFocusedLabelColor];
  }

  else
  {
    +[UIColor systemRedColor];
  }
  v14 = ;
  v26[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  v16 = [v9 initWithString:v12 attributes:v15];
  [v5 appendAttributedString:v16];

  [v3 setAttributedTitle:v5];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100068D9C;
  v23[3] = &unk_100357488;
  v24 = v4;
  [v3 setTitleTextAttributesTransformer:v23];
  v17 = +[UIBackgroundConfiguration clearConfiguration];
  if (v4)
  {
    v18 = +[UIColor dynamicCarFocusedColor];
    [v17 setBackgroundColor:v18];

    [v17 setCornerRadius:16.0];
    [v3 setBackground:v17];
    +[UIColor dynamicCarFocusedLabelColor];
  }

  else
  {
    v19 = +[UIColor clearColor];
    [v17 setBackgroundColor:v19];

    [v17 setCornerRadius:16.0];
    [v3 setBackground:v17];
    +[UIColor labelColor];
  }
  v20 = ;
  [v3 setBaseForegroundColor:v20];

  [(UIButton *)v22 setConfiguration:v3];
}

id sub_100068D9C(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  if (*(a1 + 32))
  {
    +[UIColor dynamicCarFocusedLabelColor];
  }

  else
  {
    +[UIColor systemRedColor];
  }
  v4 = ;
  [v3 setObject:v4 forKeyedSubscript:NSForegroundColorAttributeName];

  return v3;
}

id sub_1000692DC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = PHCarPlayInCallKeypadViewController;
  objc_msgSendSuper2(&v4, "setLimitedSoftPhoneKeypad:", v2);
  return [*(a1 + 32) postMessageOverlayIfNeeded];
}

void sub_10006A0F8(uint64_t a1)
{
  v2 = objc_alloc_init(UIView);
  v3 = objc_alloc_init(CABackdropLayer);
  v4 = [CAFilter filterWithType:kCAFilterColorSaturate];
  [v4 setName:@"saturation"];
  [v4 setValue:&off_10036AF70 forKey:@"inputAmount"];
  v12 = v4;
  v5 = [NSArray arrayWithObjects:&v12 count:1];
  [v3 setFilters:v5];

  v6 = [v2 layer];
  [v6 addSublayer:v3];

  [v3 setScale:0.5];
  [v3 setFrame:{0.0, 0.0, *(a1 + 40), *(a1 + 48)}];
  [v3 setCornerRadius:*(a1 + 48) * 0.5];
  [v2 setUserInteractionEnabled:0];
  [*(a1 + 32) addSubview:v2];
  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  *(v7 + 64) = v2;
  v9 = v2;

  v10 = *(a1 + 32);
  v11 = *(v10 + 80);
  *(v10 + 80) = v3;
}

void sub_10006A2A0(uint64_t a1)
{
  v2 = objc_alloc_init(BackdropView);
  v3 = +[UIColorEffect inCallControls];
  v4 = [UIBlurEffect effectWithBlurRadius:40.0];
  v5 = [[UIVisualEffectView alloc] initWithEffect:0];

  v7[0] = v3;
  v7[1] = v4;
  v6 = [NSArray arrayWithObjects:v7 count:2];
  [v5 setBackgroundEffects:v6];

  [v5 setFrame:{0.0, 0.0, *(a1 + 40), *(a1 + 48)}];
  [v5 _setCornerRadius:*(a1 + 48) * 0.5];
  [v5 setUserInteractionEnabled:0];
  [*(a1 + 32) addSubview:v5];
  [*(a1 + 32) setBackdropEffectView:v5];
}

id sub_10006B858(uint64_t a1)
{
  v2 = [*(a1 + 32) isEnabled];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 isSelected];
    v5 = *(a1 + 32);
    if (v4)
    {

      return [v5 applySelectedState];
    }

    else
    {
      v6 = [v5 isHighlighted];
      v7 = *(a1 + 32);
      if (v6)
      {

        return [v7 applyHighlightedState];
      }

      else
      {

        return [v7 applyNormalState];
      }
    }
  }

  else
  {

    return [v3 applyDisabledState];
  }
}

id sub_10006BC48(uint64_t a1)
{
  v2 = sub_100004F84(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromCGPoint(*(a1 + 40));
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Presenting audio routing menu at location: %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 32) menuDataSource];
  v5 = [v4 menuForAudioControlsButton:*(a1 + 32)];

  return v5;
}

void sub_10006C950(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10006C96C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained lagunaActions];
    if ([v6 count])
    {
      v7 = v6;
      v8 = v3;
      if (v7)
      {
        v9 = v8;
        if ([v8 count])
        {
          v10 = [UIMenu menuWithTitle:&stru_100361FD0 image:0 identifier:0 options:1 children:v9];
          v11 = [UIMenu menuWithTitle:&stru_100361FD0 image:0 identifier:0 options:1 children:v7];
          v18[0] = v10;
          v18[1] = v11;
          v12 = [NSArray arrayWithObjects:v18 count:2];
          v13 = [UIMenu menuWithTitle:&stru_100361FD0 image:0 identifier:0 options:1 children:v12];

          [v5 setMenu:v13];
        }

        else
        {
          v10 = [v5 menu];
          v17 = [v10 menuByReplacingChildren:v7];
          [v5 setMenu:v17];
        }

        goto LABEL_10;
      }
    }

    else
    {
      v14 = v3;
    }

    v15 = [v5 menu];
    v16 = [v15 menuByReplacingChildren:v3];
    [v5 setMenu:v16];

    v7 = 0;
LABEL_10:
  }
}

void sub_10006CC40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 16);
  v4 = (v2 + 16);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
    v6 = [*(a1 + 32) menuChangeHandler];

    if (v6)
    {
      v7 = [*(a1 + 32) menuChangeHandler];
      v7[2](v7, *(a1 + 40));
    }
  }
}

void sub_10006CE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006CE94(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained reloadQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006CF70;
    block[3] = &unk_100357550;
    v9 = *(a1 + 32);
    block[4] = v5;
    v8 = v3;
    dispatch_async(v6, block);
  }
}

void sub_10006CF70(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) menuActionsWithRoutes:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

void sub_10006D59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006D5B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if ([WeakRetained style] == 3)
    {
      v3 = +[AVAudioSession sharedInstance];
      [v3 activateVoicemailAudioSession];
    }

    v4 = [v5 delegate];
    [v4 audioRoutingMenuController:v5 didSelectRoute:*(a1 + 32)];

    WeakRetained = v5;
  }
}

void sub_10006DA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006DA3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained delegate];
    v4 = objc_opt_respondsToSelector();

    WeakRetained = v6;
    if (v4)
    {
      v5 = [v6 delegate];
      [v5 audioRoutingMenuController:v6 didSelectLagunaActionForHandle:*(a1 + 32) conversation:*(a1 + 40)];

      WeakRetained = v6;
    }
  }
}

void sub_10006DC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006DC30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [WeakRetained isMuted];
    v3 = [v6 delegate];
    v4 = objc_opt_respondsToSelector();

    WeakRetained = v6;
    if (v4)
    {
      v5 = [v6 delegate];
      [v5 audioRoutingMenuController:v6 didToggleMute:v2 ^ 1];

      WeakRetained = v6;
    }
  }
}

void sub_10006E67C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[AVSystemController sharedAVSystemController];
  [v1 startObservingNotificationsForAVSystemController:v2];
}

void sub_10006F770(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PHRingtoneControllerAudioSessionIdentifierDidChangeNotification" object:*(a1 + 32) userInfo:0];
}

void sub_10006F930(uint64_t a1)
{
  [*(a1 + 32) stopObservingNotificationsForAVSystemController:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = +[AVSystemController sharedAVSystemController];
  [v2 startObservingNotificationsForAVSystemController:v3];
}

id sub_10006FB0C(uint64_t a1)
{
  v2 = [*(a1 + 32) audioSessionIdentifierForSessionDescriptors:*(a1 + 40)];
  v3 = *(a1 + 32);

  return [v3 setAudioSessionIdentifier:v2];
}

void sub_10007041C(id a1)
{
  v1 = objc_alloc_init(PHInCallUtilities);
  v2 = qword_1003B0CB0;
  qword_1003B0CB0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007076C(uint64_t a1)
{
  v1 = sub_100004F84(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "LockscreenMessagingChangedNotification", v2, 2u);
  }

  byte_1003B0CDA = 0;
}

void sub_1000707DC(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1003B0CC8, v2);
}

void sub_10007082C(uint64_t a1)
{
  v1 = sub_100004F84(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "LostMode changed", v2, 2u);
  }

  byte_1003B0CD8 = 0;
}

void sub_100071088(uint64_t a1)
{
  v2 = BYSetupAssistantNeedsToRun();
  byte_1003B0CE8 = v2;
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = *(a1 + 32);
    v5 = BYSetupAssistantFinishedDarwinNotification;

    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, sub_100071100, v5, 0, CFNotificationSuspensionBehaviorDrop);
  }
}

uint64_t sub_100071310(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = qword_1003B0CF0;
  v6 = qword_1003B0CF0;
  if (!qword_1003B0CF0)
  {
    v7 = *off_100357660;
    v8 = 0;
    v4[3] = _sl_dlopen();
    qword_1003B0CF0 = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_100071424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007143C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_1003B0CF8;
  v6 = qword_1003B0CF8;
  if (!qword_1003B0CF8)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10007159C;
    v2[3] = &unk_1003576A8;
    v2[4] = &v3;
    sub_10007159C(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000714EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100071504(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003B0CF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10007159C(uint64_t a1)
{
  v5 = 0;
  v2 = sub_100071310(&v5);
  v3 = v5;
  if (!v2)
  {
    v3 = abort_report_np("%s", v5);
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    free(v3);
  }

  result = dlsym(v2, "_AXSPhoneLockToEndCallEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003B0CF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10007222C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak((v13 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v14 - 56));
  _Unwind_Resume(a1);
}

void sub_100072264(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained pauseTimer];
    if ((v4 & 1) == 0)
    {
      if (--*(*(*(a1 + 32) + 8) + 24))
      {
        v5 = [v3 checkInViewModel];
        v6 = [v5 togglesFlash];

        if (v6)
        {
          [v3 toggleFlash];
        }
      }

      else
      {
        v7 = sub_100004F84(v4);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHCheckInView,check-in completed with no user interaction", v8, 2u);
        }

        [v3 stopAndNotifyResult:0];
      }
    }
  }
}

void sub_100072814(uint64_t a1)
{
  v2 = [*(a1 + 32) avCaptureDevice];
  v3 = [v2 hasTorch];

  if (v3)
  {
    v5 = [*(a1 + 32) avCaptureDevice];
    [v5 lockForConfiguration:0];

    v6 = [*(a1 + 32) avCaptureDevice];
    [v6 setTorchMode:1];

    v7 = [*(a1 + 32) avCaptureDevice];
    [v7 unlockForConfiguration];

    v8 = dispatch_time(0, 500000000);
    v9 = [*(a1 + 32) avCaptureDispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100072980;
    block[3] = &unk_100356988;
    block[4] = *(a1 + 32);
    dispatch_after(v8, v9, block);
  }

  else
  {
    v10 = sub_100004F84(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PHCheckInView,torch not available", buf, 2u);
    }
  }
}

void sub_100072A28(uint64_t a1)
{
  v2 = [*(a1 + 32) avCaptureDevice];
  v3 = [v2 hasTorch];

  if (v3)
  {
    v5 = [*(a1 + 32) avCaptureDevice];
    [v5 lockForConfiguration:0];

    v6 = [*(a1 + 32) avCaptureDevice];
    v7 = [v6 torchMode];

    if (v7 == 1)
    {
      v8 = [*(a1 + 32) avCaptureDevice];
      [v8 setTorchMode:0];
    }

    v10 = [*(a1 + 32) avCaptureDevice];
    [v10 unlockForConfiguration];
  }

  else
  {
    v9 = sub_100004F84(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PHCheckInView,torch not available", buf, 2u);
    }
  }
}

void sub_1000738E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100073900(id a1)
{
  v1 = objc_alloc_init(NSMutableArray);
  v2 = qword_1003B0D08;
  qword_1003B0D08 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10007393C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100073954(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = qword_1003B0D08;
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 removeObject:v3];
}

void sub_10007446C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100074488(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[UIApplication sharedApplication];
    v4 = [v3 delegate];
    v5 = [v4 sceneManager];
    v6 = [v5 callScene];

    if (v6)
    {
      v7 = v6;
      TUDispatchMainIfNecessary();
    }
  }

  [*(a1 + 32) setUsesLargeFormatUI:0];
}

void sub_100077074(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1000770D8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained openDialRequest:v8 forProcessHandle:v7 bypassUIPromptIfDefaultProvider:a4];
}

void sub_100077D48(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (v7)
  {
    [*(a1 + 32) openDialRequest:v7 application:*(a1 + 40) url:*(a1 + 48) options:*(a1 + 56)];
  }

  else if (v5)
  {
    [*(a1 + 32) openJoinConversationRequest:v5];
  }
}

void sub_100077DC4(id *a1)
{
  if (a1[4])
  {
    v2 = [a1[5] objectForKey:_UIApplicationOpenURLOptionsSourceProcessHandleKey];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      if ([a1[4] showUIPrompt])
      {
        v4 = 1;
      }

      else
      {
        v4 = [a1[6] shouldShowPromptForProcessHandle:v2];
      }

      [a1[4] setShowUIPrompt:v4];
      [a1[6] openJoinConversationRequest:a1[4]];
    }

    else
    {
      v5 = sub_100004F84(isKindOfClass);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100254904();
      }
    }
  }

  else
  {
    v2 = sub_100004F84(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1002549DC();
    }
  }
}

void sub_100077EC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004F84(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Screening request completed %@", &v5, 0xCu);
  }

  if (v3)
  {
    [*(a1 + 32) requestScreeningSceneIfNeeded:v3];
  }
}

void sub_100077F8C(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = a1[4];

    [v6 openDialRequest:a2 application:v3 url:v4 options:v5];
  }

  else
  {
    v7 = sub_100004F84(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100254A18();
    }
  }
}

void sub_1000781C0(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 applicationDelegateHelper];
  [v5 configureAndOpenDialRequestForDualSIMIfNecessary:v4 options:a1[5] url:a1[6]];
}

void sub_100078E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100078E68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [TUJoinConversationRequest alloc];
    v4 = *(a1 + 32);
    v5 = +[NSSet set];
    v6 = [v3 initWithConversationLink:v4 otherInvitedHandles:v5 sendLetMeInRequest:0];

    [v6 setVideoEnabled:1];
    [v6 setWantsStagingArea:1];
    v7 = +[TUConversationInvitationPreference standardInvitationPreferencesForLink];
    [v6 setInvitationPreferences:v7];

    if (v6)
    {
      v8 = [*(a1 + 40) openJoinConversationRequest:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100078F58(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100004F84(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to open FaceTime application with error: %@", &v6, 0xCu);
    }
  }
}

id sub_1000799C0(uint64_t a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100079AD4;
  v12 = sub_100079AE4;
  v13 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100079AEC;
  v5[3] = &unk_1003578D8;
  v6 = a2;
  v7 = &v8;
  v2 = v6;
  _os_activity_initiate(&_mh_execute_header, "StartCall", OS_ACTIVITY_FLAG_DEFAULT, v5);

  v3 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v3;
}

uint64_t sub_100079AD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100079AEC(uint64_t a1)
{
  v5 = +[TUCallCenter sharedInstance];
  v2 = [v5 dialWithRequest:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100079F38(uint64_t a1)
{
  v2 = sub_1000A6940(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "UUID: %@ request: %@", &v5, 0x16u);
  }
}

id sub_10007A184(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 bundleIdentifier];
    v6 = defaultDialingAppLSBundleIdentifier();
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10007A65C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained faceTimeAvailabilityHelper];
    [v8 isHandleAvailableForFaceTime:v9 completionHandler:v5];
  }
}

void sub_10007A95C(id *a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10007AA18;
  v3[3] = &unk_100357950;
  v7 = a2;
  v4 = a1[4];
  v6 = a1[6];
  v5 = a1[5];
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_10007AA18(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_100004F84(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handles are available for FaceTime using stripped dial request %@", &v13, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 40);
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handles are unavailable for FaceTime, dialing Telephony as fallback %@", &v13, 0xCu);
    }

    v7 = objc_alloc_init(TUCallProviderManager);
    v10 = a1 + 40;
    v8 = *(a1 + 40);
    v9 = *(v10 + 8);
    v11 = [v7 telephonyProvider];
    v12 = [v8 dialRequestByReplacingProvider:v11];
    (*(v9 + 16))(v9, v12);
  }
}

void sub_10007B538(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

BOOL sub_10007B574(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isClarityBoardActive])
  {
    v2 = 0;
  }

  else
  {
    v3 = [WeakRetained currentInCallScene];
    v2 = [v3 presentationMode] == 1;
  }

  return v2;
}

id sub_10007B5DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isClarityBoardActive])
  {
    v2 = 0;
  }

  else
  {
    v3 = [WeakRetained currentInCallScene];
    v4 = [v3 delegate];
    v2 = [v4 isAttachedToWindowedAccessoryWithValidFrameForCurrentScene];
  }

  return v2;
}

BOOL sub_10007B650(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isClarityBoardActive])
  {
    v2 = 0;
  }

  else
  {
    v3 = [WeakRetained sceneManager];
    v4 = [v3 ambientScene];

    if (v4 && ![v4 activationState])
    {
      v2 = 0;
    }

    else
    {
      v5 = [WeakRetained currentInCallScene];
      if ([v5 presentationMode])
      {
        v2 = 0;
      }

      else
      {
        v6 = +[PHPIPController defaultPIPController];
        v2 = [v6 pipState] == 0;
      }
    }
  }

  return v2;
}

void sub_10007B85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10007B87C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isClarityBoardActive])
  {
    v2 = 0;
  }

  else
  {
    v3 = [WeakRetained currentInCallScene];
    if ([v3 presentationMode])
    {
      v2 = 0;
    }

    else
    {
      v4 = +[PHPIPController defaultPIPController];
      v2 = [v4 isPIPProxyActive] ^ 1;
    }
  }

  return v2;
}

BOOL sub_10007B908(id a1)
{
  v1 = +[PHPIPController defaultPIPController];
  v2 = [v1 isPIPProxyActiveAndHidden];

  return v2;
}

BOOL sub_10007B948(id a1)
{
  v1 = +[PHInCallUtilities sharedInstance];
  v2 = [v1 hasStatusBarSuppressionReasons];

  return v2;
}

BOOL sub_10007D624(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isActive])
  {
    v3 = [(TUCall *)v2 provider];
    v4 = [v3 supportsDynamicSystemUI];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10007DBE8(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneManager];
  v3 = [v2 hasPendingOrExistingSceneOfType:*(a1 + 48)];

  if (v3)
  {
    v6 = sub_100009960(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Not requesting a new scene presentation because one already exists", buf, 2u);
    }
  }

  else
  {
    v7 = [*(a1 + 32) sceneManager];
    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) identifier];
    [v7 didRequestSceneOfType:v8 withIdentifier:v9];

    objc_initWeak(&location, *(a1 + 32));
    v10 = *(a1 + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10007DE3C;
    v16[3] = &unk_100357A88;
    objc_copyWeak(&v18, &location);
    v17 = *(a1 + 40);
    v11 = [SBSInCallPresentationRequest performPresentationWithConfiguration:v10 completion:v16];
    v13 = sub_100009960(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 40) preferredPresentationMode];
      v14 = SBSInCallPresentationModeDescription();
      v15 = [*(a1 + 40) isUserInitiated];
      *buf = 138543618;
      v21 = v14;
      v22 = 1024;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Requested a new scene with presentationMode=%{public}@ userInitiated=%d", buf, 0x12u);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void sub_10007DE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007DE3C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    if (WeakRetained)
    {
      v6 = [WeakRetained sceneManager];
      v7 = [*(a1 + 32) identifier];
      [v6 didInvalidatePendingSceneOfType:0 withIdentifier:v7];

      v10 = sub_100009960(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100254CC0();
      }
    }
  }
}

void sub_10007DFF4(id a1)
{
  v1 = objc_opt_new();
  byte_1003B0D10 = [v1 isClarityBoardEnabled];
}

void sub_10007E8D0(uint64_t a1)
{
  v2 = [*(a1 + 32) currentInCallScene];
  v3 = [*(a1 + 40) isOutgoing];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007E978;
  v4[3] = &unk_100357AF8;
  v4[4] = *(a1 + 32);
  [v2 ics_requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:v3 analyticsSource:0 completion:v4];
}

void sub_10007EB0C(id a1, NSError *a2)
{
  v2 = a2;
  v4 = v2;
  if (v2)
  {
    v5 = sub_100009960(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100254D44();
    }
  }
}

void sub_10007ECC4(id a1, NSError *a2)
{
  v2 = a2;
  v4 = sub_100009960(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error requesting ClarityBoard presentation: %@", &v5, 0xCu);
  }
}

void sub_10007F51C(uint64_t a1)
{
  v1 = [*(a1 + 32) bannerPresentationManager];
  [v1 showGreenTea3PHUD];
}

BOOL sub_10007F858(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 status]== 5 || [(TUCall *)v2 status]== 6)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(TUCall *)v2 provider];
    v3 = [v4 supportsDynamicSystemUI];
  }

  return v3;
}

void sub_10007FAC0(uint64_t a1)
{
  v1 = [*(a1 + 32) bannerPresentationManager];
  [v1 showWaitOnHoldHUD];
}

void sub_1000803D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = sub_100009960(WeakRetained, v7);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      v12 = v9;
      v13 = NSStringFromPGBackgroundPIPAuthorizationState();
      v14 = sub_100030C10(*(a1 + 56));
      *buf = 138543618;
      v38 = v13;
      v39 = 2114;
      v40 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PiP Background authorization changed to state: %{public}@ for scene type: %{public}@", buf, 0x16u);
    }

    if (a3 > 3)
    {
      if (a3 == 4)
      {
        v25 = sub_100009960(v10, v11);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 56);
          v27 = v25;
          v28 = sub_100030C10(v26);
          [*(a1 + 40) preferredPresentationMode];
          v29 = SBSInCallPresentationModeDescription();
          *buf = 138543618;
          v38 = v28;
          v39 = 2114;
          v40 = v29;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "PiP background authorization disallowed for %{public}@ scene; configuration.preferredPresentationMode: %{public}@", buf, 0x16u);
        }

        v30 = [v8 bannerPresentationManager];
        [v30 setApplicationState:1];

        [v8 revokeAndRemoveBackgroundPiPAuthorizationForSceneTypeIfNeeded:*(a1 + 56)];
        v31 = [v8 sceneManager];
        v32 = *(a1 + 56);
        v33 = [*(a1 + 40) identifier];
        [v31 didInvalidatePendingSceneOfType:v32 withIdentifier:v33];
      }

      else if (a3 == 5)
      {
LABEL_10:
        [v8 revokeAndRemoveBackgroundPiPAuthorizationForSceneTypeIfNeeded:*(a1 + 56)];
        v15 = [v8 sceneManager];
        v16 = *(a1 + 56);
        v17 = [*(a1 + 40) identifier];
        [v15 didInvalidatePendingSceneOfType:v16 withIdentifier:v17];
      }
    }

    else
    {
      if (a3 != 2)
      {
        if (a3 != 3)
        {
          goto LABEL_17;
        }

        goto LABEL_10;
      }

      v18 = sub_100009960(v10, v11);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Aquired authorization to open PiP in the background; requesting background presentation", buf, 2u);
      }

      v19 = [v8 bannerPresentationManager];
      [v19 setApplicationState:0];

      v20 = [v8 sceneManager];
      v21 = *(a1 + 56);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000807CC;
      v34[3] = &unk_100357BC0;
      objc_copyWeak(v36, (a1 + 48));
      v36[1] = *(a1 + 56);
      v35 = *(a1 + 32);
      [v20 waitForRegistrationOfSceneWithType:v21 completion:v34];

      v22 = [v8 sceneManager];
      v23 = *(a1 + 56);
      v24 = [*(a1 + 40) identifier];
      [v22 didInvalidatePendingSceneOfType:v23 withIdentifier:v24];

      [v8 performPresentationWithConfiguration:*(a1 + 40) forSceneType:*(a1 + 56)];
      objc_destroyWeak(v36);
    }
  }

LABEL_17:
}

void sub_1000807CC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained remoteAlertShellViewControllerForWindowScene:v3];
    v8 = sub_100009960(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      v10 = v8;
      v11 = sub_100030C10(v9);
      v12 = *(a1 + 32);
      v13 = [v6 pipController];
      v15 = 138543874;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Aquired scene of type %{public}@; setting clientSessionIdentifier '%{public}@' on PiP controller: %{public}@", &v15, 0x20u);
    }

    v14 = [v6 pipController];
    [v14 setClientSessionIdentifierFromPiPAuthorization:*(a1 + 32)];
  }
}

void sub_100080ADC(id a1, NSError *a2)
{
  v2 = a2;
  v4 = sub_100009960(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100254DF0();
  }
}

void sub_100080B9C(uint64_t a1)
{
  [*(a1 + 32) revokeAndRemoveBackgroundPiPAuthorizationForSceneTypeIfNeeded:*(a1 + 40)];
  v2 = [*(a1 + 32) sceneManager];
  v3 = [v2 sceneOfType:*(a1 + 40)];

  v4 = [v3 session];
  v5 = [v3 presentationMode];
  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v14 = v5;
    v15 = [*(a1 + 32) remoteAlertShellViewControllerForWindowScene:v3];
    v16 = [v15 pipController];
    [v16 cancelPIPIfNeeded];

    if (!*(a1 + 40))
    {
      v19 = [*(a1 + 32) bannerPresentationManager];
      [v19 bannerDismissedBySpringBoard];
    }

    v20 = sub_100009960(v17, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 40);
      v22 = v20;
      v23 = sub_100030C10(v21);
      v50 = 138543874;
      v51 = v23;
      v52 = 2112;
      v53 = v3;
      v54 = 2112;
      v55 = v4;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Requesting scene session destruction for type: %{public}@; scene: %@; with session: %@", &v50, 0x20u);
    }

    v24 = +[UIApplication sharedApplication];
    [v24 SBSUI_requestInCallSceneSessionDestruction:v4 withReason:0 completion:0];

    v27 = sub_100009960(v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 40);
      v29 = v27;
      v30 = sub_100030C10(v28);
      v50 = 138543362;
      v51 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Cleared the current active scene of type %{public}@", &v50, 0xCu);
    }

    v31 = [v15 pipController];
    [v31 setWindowForTransitionAnimation:0];

    v32 = [*(a1 + 32) sceneManager];
    [v32 didDismissSceneOfType:*(a1 + 40)];

    v35 = *(a1 + 40);
    if (v35 == 1)
    {
      if (v14 == 2)
      {
        v37 = sub_100009960(v33, v34);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v50) = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Requesting to return to fullscreen canvas due to end of screen sharing session", &v50, 2u);
        }

        v36 = [*(a1 + 32) sceneManager];
        v38 = [v36 callScene];
        [v38 requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0];

        goto LABEL_21;
      }
    }

    else if (!v35)
    {
      v36 = +[PHInCallUtilities sharedInstance];
      [v36 stopAllowingRingingCallStatusIndicator];
LABEL_21:
    }

    goto LABEL_23;
  }

  v8 = sub_100009960(v5, v6);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v11 = *(a1 + 40);
    v12 = v8;
    v13 = sub_100030C10(v11);
    v50 = 138543874;
    v51 = v13;
    v52 = 2112;
    v53 = v3;
    v54 = 2112;
    v55 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: Not requesting scene session destruction because there's no active scene of type: %{public}@; scene:%@ or session:%@ to destroy", &v50, 0x20u);
  }

LABEL_23:
  v39 = sub_100009960(v9, v10);
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
  if (v40)
  {
    v42 = *(a1 + 32);
    v43 = v39;
    v44 = [v42 allInCallScenes];
    v50 = 138412290;
    v51 = v44;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "The set of all tracked scenes is %@", &v50, 0xCu);
  }

  v45 = sub_100009960(v40, v41);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = *(a1 + 32);
    v47 = v45;
    v48 = [v46 allInCallScenes];
    v49 = [v48 count];
    v50 = 134217984;
    v51 = v49;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Number of scenes tracked is %lu", &v50, 0xCu);
  }
}

void sub_100081120(id a1, NSError *a2)
{
  v2 = a2;
  v4 = sub_100009960(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error destroying Assistive Access scene: %@", &v5, 0xCu);
  }
}

void sub_10008177C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentInCallScene];
  [v2 requestTransitionToPresentationMode:3 shouldDismissCMASAlerts:*(a1 + 40)];
}

void sub_100082E70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_100082E9C(uint64_t a1)
{
  v2 = +[TUCallCenter sharedInstance];
  [v2 launchAppForDialRequest:*(a1 + 32) completion:0];
}

void sub_100082EF8(uint64_t a1, int a2)
{
  v4 = sub_100004F84(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dial request UI prompt alert returned dial=%d", v8, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setCurrentAlert:0];
    v7 = +[NSDate now];
    [v6 setLastAlertPresentation:v7];
  }

  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100083000(uint64_t a1)
{
  [*(a1 + 32) show];
  v2 = +[NSDate now];
  [*(a1 + 40) setLastAlertPresentation:v2];
}

void sub_10008423C(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) originatingUIType];
  if (v4 == 51)
  {
    v4 = [PHInCallRootViewController releaseDismissalAssertionForReason:@"PHFallbackToTelephonyAssertionReason"];
  }

  if ((a2 & 1) == 0)
  {
    v5 = sub_100004F84(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "A call could not be initiated.", v14, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, TUCallCenterInCallServiceDialRequestFailureNotification, 0, 0, 1u);
    v7 = [*(a1 + 32) failureNotification];
    v8 = [v7 length];

    if (v8)
    {
      v9 = CFNotificationCenterGetDarwinNotifyCenter();
      v10 = [*(a1 + 32) failureNotification];
      CFNotificationCenterPostNotification(v9, v10, 0, 0, 1u);
    }

    v11 = [*(a1 + 32) provider];
    if ([(ICSTelephonyUnsuportedAlert *)v11 isTelephonyProvider])
    {
      v12 = +[UIDevice currentDevice];
      v13 = [v12 userInterfaceIdiom];

      if (v13 != 1)
      {
        return;
      }

      v11 = objc_alloc_init(ICSTelephonyUnsuportedAlert);
      [(ICSTelephonyUnsuportedAlert *)v11 show];
    }
  }
}

id sub_1000843B0(uint64_t a1)
{
  v2 = [*(a1 + 32) successNotification];
  v3 = [v2 length];

  if (v3)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v5 = [*(a1 + 32) successNotification];
    CFNotificationCenterPostNotification(DarwinNotifyCenter, v5, 0, 0, 1u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);

  return [v6 initiateCallForDialRequest:v7 completionHandler:v8];
}

uint64_t sub_100084444(uint64_t a1)
{
  v2 = sub_100004F84(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Will launch ICS for ScreenTime dial request: %@", buf, 0xCu);
  }

  v4 = +[ICSPreferences sharedPreferences];
  v5 = [v4 hasAdoptedModernInCallAPI];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) URL];
    [v6 startScreenTimeFlowWithURL:v7];
  }

  else
  {
    v8 = +[SOSInCallUILauncher sharedInCallUILauncher];
    v9 = [*(a1 + 32) URL];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000845E4;
    v11[3] = &unk_100357CA0;
    v12 = *(a1 + 48);
    [v8 launchInCallUIForReason:3 withRequestURL:v9 completion:v11];

    v7 = v12;
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_1000845E4(uint64_t a1, int a2)
{
  v4 = sub_100004F84(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did launch ICS for ScreenTime %d", v6, 8u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1000846A8(id *a1)
{
  v2 = sub_10001A58C(a1);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = +[PHInCallUIUtilities sharedInstance];
  if (([v4 isSpringBoardLocked] & 1) == 0)
  {

    goto LABEL_6;
  }

  v5 = [a1[4] contactIdentifier];

  if (!v5)
  {
LABEL_6:
    v8 = [a1[4] handle];
    v9 = [v8 value];
    goto LABEL_7;
  }

  v6 = +[TUCallCenter sharedContactStore];
  v7 = [a1[4] contactIdentifier];
  v8 = [v6 contactForIdentifier:v7];

  v9 = [v8 displayName];
LABEL_7:
  v10 = v9;

  v11 = [v10 destinationIdIsPhoneNumber];
  if (v11)
  {
    v12 = TUHomeCountryCode();
    v13 = TUFormattedPhoneNumber();

    v10 = v13;
  }

  v14 = sub_100004F84(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Presenting RTT/TTY call prompt for caller ID %@", buf, 0xCu);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008492C;
  v16[3] = &unk_100357CC8;
  v17 = a1[4];
  v18 = a1[5];
  v19 = a1[6];
  v15 = sub_100004F84([v3 displayCallPromptForContact:v10 withCompletion:v16]);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Finished executing RTT/TTY call prompt block %@", buf, 0xCu);
  }
}

void sub_10008492C(void *a1, uint64_t a2)
{
  v4 = sub_100004F84(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dismissing RTT/TTY call prompt. User chose TTYCallType %lu.", &v7, 0xCu);
  }

  if (a2 <= 2)
  {
    if ((a2 - 1) >= 2)
    {
      if (a2)
      {
        return;
      }

      v5 = a1[4];
      v6 = 1;
    }

    else
    {
      v5 = a1[4];
      v6 = 2;
    }

    goto LABEL_12;
  }

  if (a2 == 3)
  {
    v5 = a1[4];
    v6 = 3;
LABEL_12:
    [v5 setTtyType:v6];
    (*(a1[5] + 16))();
    return;
  }

  if (a2 == 4)
  {
    (*(a1[6] + 16))();
  }
}

void sub_100084A50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ICSEmergencyCallbackModeAlert alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100084B4C;
  v8[3] = &unk_100357D18;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v10 = v5;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v6 = v3;
  v7 = [(ICSEmergencyCallbackModeAlert *)v4 initWithDialRequest:v6 completion:v8];
  [(ICSEmergencyCallbackModeAlert *)v7 show];
}

uint64_t sub_100084B4C(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 == 1)
  {
    v5 = sub_100004F84(result);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Emergency callback mode is enabled and user chose to cancel the call.", v6, 2u);
    }

    return (*(*(v2 + 64) + 16))();
  }

  else if (!a2)
  {
    v3 = sub_100004F84(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Emergency callback mode is enabled and user chose to proceed with the call.", buf, 2u);
    }

    if ([*(v2 + 32) shouldShowRTTAlertForDialRequest:*(v2 + 40)])
    {
      v4 = *(v2 + 48);
    }

    else
    {
      v4 = *(v2 + 56);
    }

    return (*(v4 + 16))();
  }

  return result;
}

void sub_100084C44(uint64_t a1)
{
  v2 = [PHTelephonyAccountUnavailableAlert alloc];
  v3 = [*(a1 + 32) provider];
  v4 = [v3 prioritizedSenderIdentities];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100084DA8;
  v11[3] = &unk_100357D68;
  *&v5 = *(a1 + 32);
  *(&v5 + 1) = *(a1 + 40);
  v10 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v9 = [(PHTelephonyAccountUnavailableAlert *)v2 initWithSenderIdentities:v4 completion:v11];

  [(PHTelephonyAccountUnavailableAlert *)v9 show];
}

void sub_100084DA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004F84(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User chose to initiate dial request using sender identity %@.", &v8, 0xCu);
    }

    v6 = [v3 accountUUID];
    [*(a1 + 32) setLocalSenderIdentityAccountUUID:v6];

    if ([*(a1 + 40) shouldShowEmergencyCallbackModeAlertForDialRequest:*(a1 + 32)])
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if ([*(a1 + 40) shouldShowScreenTimeAlertForDialRequest:*(a1 + 32)])
      {
        v7 = *(a1 + 56);
      }

      else if ([*(a1 + 40) shouldShowRTTAlertForDialRequest:*(a1 + 32)])
      {
        v7 = *(a1 + 64);
      }

      else
      {
        v7 = *(a1 + 72);
      }

      (*(v7 + 16))();
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sender identity is nil; user cancelled the dial request.", &v8, 2u);
    }

    (*(*(a1 + 80) + 16))();
  }
}

uint64_t sub_100084F28(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = sub_100004F84(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User confirmed intent to initiate an emergency call using a Wi-Fi network.", v7, 2u);
    }

    if ([*(a1 + 32) shouldShowRTTAlertForDialRequest:*(a1 + 40)])
    {
      v4 = *(a1 + 48);
    }

    else
    {
      v4 = *(a1 + 56);
    }

    return (*(v4 + 16))();
  }

  else
  {
    v5 = *(*(a1 + 64) + 16);

    return v5();
  }
}

uint64_t sub_100084FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F84(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dial request UI prompt alert returned dial=%ld", &v10, 0xCu);
  }

  if (a2 == -1)
  {
    return (*(*(a1 + 56) + 16))();
  }

  v5 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v6 = [v5 UUID];
  [*(a1 + 32) setLocalSenderIdentityAccountUUID:v6];

  v7 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v8 = [v7 UUID];
  [*(a1 + 32) setLocalSenderIdentityUUID:v8];

  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_100085130(uint64_t a1, int a2)
{
  v4 = sub_100004F84(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dial request UI prompt alert returned dial=%d", v6, 8u);
  }

  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_10008520C(uint64_t a1, int a2)
{
  v4 = sub_100004F84(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dial request call end stewie alert returned dial=%d", v6, 8u);
  }

  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

id sub_1000852E8(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) show];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void sub_10008593C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1000859B8(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = TUCallCenterInCallServiceDialRequestFailureNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v2, 0, 0, 1u);
}

uint64_t sub_1000859F8(uint64_t a1, int a2)
{
  v4 = sub_100004F84(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did launch ICS for ScreenTime %d", v6, 8u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100085AB8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = sub_100004F84(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Join request UI prompt alert returned dial=%d", v7, 8u);
    }

    [v5 setProcessAssertionCompletion:0];
    if (a2)
    {
      [v5 showOrCreateCallForConversationRequest:*(a1 + 32)];
    }
  }
}

void sub_10008605C(id a1, SBSUIInCallWindowScene *a2)
{
  v2 = a2;
  v4 = sub_10010D6C4(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Retrieved InCall scene, showing keypad; scene=%{public}@", &v7, 0xCu);
  }

  v5 = [(SBSUIInCallWindowScene *)v2 keyWindow];
  v6 = [v5 rootViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 showKeypadIfPossible];
  }
}

void sub_100086388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000863B4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = [[ICSActivationContext alloc] initWithVideoMessageURL:v3];
    [v5 setActivationContext:v6];

    [v5 performPresentationForVideoMessage];
  }

  else
  {
    v7 = sub_100004F84(WeakRetained);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100255060(a1, v7);
    }
  }
}

void sub_1000869C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000869F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100004F84(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Process assertion timer fired...", v5, 2u);
  }

  if (WeakRetained)
  {
    [WeakRetained invalidatePreventSuspensionAssertion];
    v3 = [WeakRetained processAssertionCompletion];

    if (v3)
    {
      v4 = [WeakRetained processAssertionCompletion];
      v4[2]();
    }

    [WeakRetained setProcessAssertionCompletion:0];
    [WeakRetained setProcessAssertionTimer:0];
  }
}

void sub_100086E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100086E44(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_10010D6C4(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished creating InCall scene, will now show controls; scene=%{public}@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showCallControlsForCurrentContext];
}

void sub_1000872AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000872D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100087380;
  v2[3] = &unk_100357EE8;
  objc_copyWeak(&v3, (a1 + 40));
  [v1 ics_requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:1 analyticsSource:0 completion:v2];
  objc_destroyWeak(&v3);
}

void sub_100087380(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained bannerPresentationManager];
  [v1 showInCallHUD];
}

BOOL sub_100087B04(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isVideo])
  {
    v3 = [(TUCall *)v2 status]== 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_100087B50(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isConversation])
  {
    v3 = [(TUCall *)v2 status]== 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_100087C14(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isVideo])
  {
    v3 = [(TUCall *)v2 status]== 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_100087C60(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isConversation])
  {
    v3 = [(TUCall *)v2 status]== 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1000884E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10008851C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = sub_10010D6C4(WeakRetained, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "requestToPresentBanner timed out, presenting banner", v6, 2u);
  }

  v5 = WeakRetained[26];
  WeakRetained[26] = 0;

  (*(*(a1 + 32) + 16))();
}

id sub_1000885C0(id result)
{
  v1 = *(*(result + 6) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    v3 = [*(result + 4) bannerPresentationRequestTimer];
    [v3 invalidate];

    result = [v2[4] setBannerPresentationRequestTimer:0];
    if (v2[5])
    {
      v4 = +[TUCallCenter sharedInstance];
      v5 = +[TUCallCenter sharedInstance];
      v6 = [v5 frontmostAudioOrVideoCall];
      v7 = [v4 activeConversationForCall:v6];
      [v2[4] setShouldAttemptRePresentationOfBannerOnConversationUpdate:v7 == 0];

      v8 = *(v2[5] + 2);

      return v8();
    }
  }

  return result;
}

void sub_1000886D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 systemControlsShouldPresentAsEmbedded];
  v6 = sub_10010D6C4(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v4)
    {
      v7 = @"YES";
    }

    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Retrieved InCall scene, icsPresentingFullscreen:%{public}@; scene=%{public}@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000887C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_10010D6C4(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Retrieved Ambient InCall scene, scene=%{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000891D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    v7 = sub_10010D6C4(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100255290(a1, v6, v7);
    }
  }
}

void sub_10008B7E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10008B800(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  [WeakRetained interactiveStartTime];
  [WeakRetained setTimeTillCancelCall:v5 - v6];
  [WeakRetained interactiveStartTime];
  if (v7 <= 0.0 || ([WeakRetained timeTillCancelCall], v8 < 0.0))
  {
    [WeakRetained setTimeTillCancelCall:-1.0];
  }

  [WeakRetained setInteractiveStartTime:0.0];
  [WeakRetained setWasCallCancelled:1];
  [WeakRetained setSliderProgressDuration:a2];
  if (*(a1 + 40) == 1)
  {
    [WeakRetained setClawResolution:8];
    [WeakRetained setSlidingViewExitReason:4];
    [WeakRetained submitSOSUserActivityMetric];
    [WeakRetained setSlidingViewEntryReason:3];
  }

  else
  {
    [WeakRetained submitSOSUserActivityMetric];
  }

  if (a2 >= 0.2)
  {
    [WeakRetained raiseAccidentalSOSNotification];
  }
}

id sub_10008BD14(uint64_t a1)
{
  [*(a1 + 32) handleVolumeHUDEnablement];
  v2 = *(a1 + 32);

  return [v2 handleVolumeChanges];
}

void *sub_10008C4A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[4] != 2)
  {
    result = [result shouldDropBioAuthTokenOnDismiss];
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 32);

      return [v3 deactivateSOS];
    }
  }

  return result;
}

void sub_10008D3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008D3E0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 label];
  v8 = [v7 containsString:@"AMBULANCE"];

  if (v8)
  {
    v10 = sub_100004F84(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,ambulance handle found at %d", v11, 8u);
    }

    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_10008D9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008D9D4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (a2)
  {
    [WeakRetained setRequestedCallActive:0];
    [v5 setCallDialStartTime:-1.0];
    [v5 setPostCallMode];
  }

  else
  {
    v4 = [WeakRetained currentView];
    [v4 removeFromSuperview];
  }
}

void sub_10008DB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008DBB0(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((a2 & 1) == 0)
  {
    v7 = WeakRetained;
    v4 = [WeakRetained infoLabel];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"SOS_NOTIFICATION_FAILED" value:&stru_100361FD0 table:@"InCallService"];
    [v4 setText:v6];

    WeakRetained = v7;
  }
}

void sub_10008DFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10008E000(uint64_t a1)
{
  [*(a1 + 32) handleVolumeHUDEnablement];
  v2 = *(a1 + 32);

  return [v2 handleVolumeChanges];
}

void sub_10008E03C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setVolumeMaxedPending:0];
  [WeakRetained handleVolumeChanges];
  if (a2 == 2)
  {
    [WeakRetained setSosMode:3];
    v5 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    if (v5 < 0.0)
    {
      v5 = -1.0;
    }

    [WeakRetained setTimeTillCancelCall:v5];
    [WeakRetained setWasCallCancelled:1];
    [WeakRetained submitSOSResolutionMetric:0];
    v6 = [*(a1 + 32) getCheckInViewModel];
    [v6 timeout];
    v8 = v7;
    [*(a1 + 32) timeTillCancelCall];
    v10 = v8 - v9;

    v11 = [*(a1 + 32) coreAnalyticsReporter];
    [v11 reportSOSUserCancelled:objc_msgSend(*(a1 + 32) lastFlowState:"sosTrigger") countdownValue:{1, v10}];
  }

  else if (a2 == 1)
  {
    [WeakRetained setIsUserResponsive:1];
    [WeakRetained dialEmergencyCall];
  }

  else
  {
    v4 = WeakRetained;
    if (a2)
    {
      goto LABEL_10;
    }

    [WeakRetained setSosMode:1];
  }

  v4 = WeakRetained;
LABEL_10:
}

void sub_10008E808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008E82C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_6;
    }

    [WeakRetained setIsUserResponsive:1];
  }

  else
  {
    [WeakRetained setCallAutoDialled:1];
  }

  WeakRetained = v8;
LABEL_6:
  if (([WeakRetained sosTrigger] == 1 || objc_msgSend(v8, "sosTrigger") == 2) && (+[SOSUtilities clawReleaseToCallSupport](SOSUtilities, "clawReleaseToCallSupport"), v4 != 0.0) && (objc_msgSend(v8, "sosHandles"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6 <= 1))
  {
    [v8 setVolumeMaxedPending:1];
    [v8 handleVolumeChanges];
    [v8 setSlidingViewExitReason:11];
    [v8 submitSOSUserActivityMetric];
    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHCallBufferScreenAssertionReason"];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"PHCallBufferNotification" object:0 userInfo:0];
  }

  else
  {
    [v8 dialEmergencyCall];
  }
}

void sub_10008ED34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_10008ED7C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 <= 2)
  {
    if (!a2)
    {
      v10 = WeakRetained;
      [WeakRetained setCallAutoDialled:1];
      [v10 setClawResolution:3];
LABEL_17:
      [v10 handleAnimationSlidingCompletionResponse];
      goto LABEL_18;
    }

    if (a2 != 1)
    {
      if (a2 != 2)
      {
        goto LABEL_19;
      }

      v10 = WeakRetained;
      [WeakRetained setClawResolution:5];
      [v10 interactiveStartTime];
      v5 = v4;
      v6 = -1.0;
      if (v5 > 0.0)
      {
        +[NSDate timeIntervalSinceReferenceDate];
        v8 = v7;
        [v10 interactiveStartTime];
        v6 = v8 - v9;
      }

      [v10 setTimeTillCancelCall:v6];
      [v10 raiseAccidentalSOSNotification];
      [v10 setSlidingViewExitReason:5];
      [v10 submitSOSUserActivityMetric];
      [v10 setSlidingViewEntryReason:4];
      goto LABEL_18;
    }

    v10 = WeakRetained;
    [WeakRetained setCallAutoDialled:0];
    if ([v10 clawResolution] == 5)
    {
      [v10 setClawSwipeAfterRTCTimeout:1];
    }

    [v10 setSlidingViewExitReason:3];
    [v10 setClawResolution:9];
LABEL_16:
    [v10 submitSOSUserActivityMetric];
    goto LABEL_17;
  }

  if ((a2 - 4) < 2)
  {
    v10 = WeakRetained;
    [WeakRetained setClawResolution:3];
    [v10 setCallAutoDialled:1];
    [v10 setSlidingViewExitReason:12];
    goto LABEL_16;
  }

  if (a2 != 3)
  {
    goto LABEL_19;
  }

  v10 = WeakRetained;
  [WeakRetained setClawResolution:4];
  [v10 raiseAccidentalSOSNotification];
LABEL_18:
  WeakRetained = v10;
LABEL_19:
}

void sub_10008EF18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained clearStatusHeartbeatTimer];
  [WeakRetained setSosMode:7];
  [WeakRetained setSlidingViewExitReason:2];
  [WeakRetained submitSOSUserActivityMetric];
}

void sub_10008EF78(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setVolumeMaxedPending:a2];
  [WeakRetained handleVolumeChanges];
}

void sub_10008EFD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSlidingViewExitReason:1];
  [WeakRetained submitSOSUserActivityMetric];
}

void sub_10008F01C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [PHSOSViewController shouldShowMedicalID:v3];

  if (v4)
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = [WeakRetained slidingView];
  [v6 setMedicalIDSlidingButtonCompletionBlock:v5];

  v7 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v7, &stru_100358138);

  if ([WeakRetained currentInteractiveState] == 1)
  {
    v8 = [WeakRetained slidingView];
    v9 = [v8 slidingViewState];

    if (v9 != 1)
    {
      [WeakRetained interactiveStart];
    }
  }
}

void sub_10008F28C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained deactivateSOS];
}

void sub_10008F4A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPostContactNotificationMode];
}

void sub_10008F64C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPostContactNotificationMode];
}

void sub_10008F8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008F8F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSosMode:5];
  [WeakRetained notifyEmergencyContacts];
}

void sub_10008FC20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10008FC50(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained clearStatusHeartbeatTimer];
  if (a2 == 1)
  {
    [WeakRetained setSosMode:7];
  }

  else
  {
    if (a2)
    {
      goto LABEL_6;
    }

    [WeakRetained setIsUserResponsive:1];
    [WeakRetained dialEmergencyCall];
  }

  v3 = [WeakRetained coreAnalyticsReporter];
  v4 = [WeakRetained sosTrigger];
  v5 = [WeakRetained restingView];
  [v3 reportSOSRestingResponse:v4 restingResponse:a2 hasMedicalID:{objc_msgSend(v5, "hasMedicalIDSlider")}];

LABEL_6:
}

void sub_10008FD20(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [PHSOSViewController shouldShowMedicalID:v3];

  v5 = [WeakRetained restingView];
  [v5 setHasMedicalIDSlider:v4];
}

void sub_10008FF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008FF68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained sosMode] == 2 || (v2 = objc_msgSend(WeakRetained, "sosMode"), v2 == 9)) && (+[PHInCallRootViewController dismissalAssertions](PHInCallRootViewController, "dismissalAssertions"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "containsObject:", @"PHSOSCallAssertionReason"), v3, (v4))
  {
    v5 = sub_100004F84(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,status heartbeat timer fired", v7, 2u);
    }

    [WeakRetained sendFlowStateUpdateForCurrentSOSMode];
  }

  else
  {
    v6 = sub_100004F84(v2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100255814();
    }

    [WeakRetained clearStatusHeartbeatTimer];
  }
}

void sub_100090324(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_100090350(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2 == 1)
  {
    [WeakRetained setSosMode:7];
  }

  else if (!a2)
  {
    v5 = [@"messages://open?groupid=" stringByAppendingString:IMStewieChatIdentifier];
    v6 = [NSURL URLWithString:v5];
    v13 = 0;
    v7 = TUOpenURLWithError();
    v8 = 0;

    v10 = sub_100004F84(v9);
    v11 = v10;
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PHSOSViewController,successfully opened messages,deactivating SOS", v12, 2u);
      }

      [v4 deactivateSOS];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100255848(v8, v11);
      }
    }
  }
}

void sub_100090490(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [PHSOSViewController shouldShowMedicalID:v3];

  v5 = [WeakRetained alertRestingView];
  [v5 setHasMedicalIDSlider:v4];
}

void sub_100090640(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000906EC;
  v6[3] = &unk_1003581B0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t sub_1000906EC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_10009081C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_100090838(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [PHSOSViewController shouldShowMedicalID:v3];
  v6 = v5;
  v7 = sub_100004F84(v5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Medical ID data fetched", v18, 2u);
    }

    v9 = +[MIUIDisplayConfiguration lockScreenConfiguration];
    [v9 setIsHomeIndicatorHidden:1];
    v10 = [MIUIMedicalIDViewController alloc];
    v11 = [*(a1 + 32) healthStore];
    v12 = [v10 initWithHealthStore:v11 medicalIDData:v3 displayConfiguration:v9];

    v13 = [[UINavigationController alloc] initWithRootViewController:v12];
    [WeakRetained setMedicalIDNavigationController:v13];

    v14 = [WeakRetained medicalIDNavigationController];
    [v14 setModalPresentationStyle:6];

    v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:*(a1 + 32) action:"dismissMedicalIDViewController"];
    v16 = [v12 navigationItem];
    [v16 setRightBarButtonItem:v15];

    v17 = *(a1 + 40);
    if (v17)
    {
      (*(v17 + 16))();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1002558C0();
    }

    [WeakRetained deactivateSOS];
  }
}

void sub_100090C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100090C7C(uint64_t a1)
{
  v2 = sub_100004F84(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Presenting Medical ID...", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained medicalIDNavigationController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100090D64;
  v5[3] = &unk_100356988;
  v5[4] = WeakRetained;
  [WeakRetained presentViewController:v4 animated:1 completion:v5];
}

void sub_100090D64(uint64_t a1)
{
  if ([*(a1 + 32) sosMode] == 5 || objc_msgSend(*(a1 + 32), "sosMode") == 6)
  {
    v2 = [*(a1 + 32) infoLabel];
    v3 = [v2 text];

    if (v3)
    {
      v4 = [*(a1 + 32) infoLabel];
      [v4 setText:0];
    }
  }
}

void sub_100090FA4(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000910A0;
  v4[3] = &unk_100356988;
  v4[4] = *(a1 + 32);
  [UIView addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000910E8;
  v2[3] = &unk_100356988;
  v3 = *(a1 + 40);
  [UIView addKeyframeWithRelativeStartTime:v2 relativeDuration:0.5 animations:1.0];
}

void sub_1000910A0(uint64_t a1)
{
  v1 = [*(a1 + 32) currentView];
  [v1 setAlpha:0.0];
}

id sub_1000910F4(uint64_t a1)
{
  v2 = [*(a1 + 32) currentView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 setCurrentView:v4];
}

void sub_100091790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000917AC(uint64_t a1)
{
  v2 = [*(a1 + 32) confirmationTimeoutTimer];
  v3 = [v2 isValid];

  if (v3)
  {
    v4 = [*(a1 + 32) confirmationTimeoutTimer];
    [v4 invalidate];

    [*(a1 + 32) setConfirmationTimeoutTimer:0];
  }

  v5 = [*(a1 + 32) sosMode];
  v6 = *(a1 + 32);
  if (v5 == 8)
  {
    [v6 checkInView];
  }

  else
  {
    [v6 countdownView];
  }
  v7 = ;
  [v7 resume];

  v8 = *(a1 + 32);

  return [v8 sendFlowStateUpdateForCurrentSOSMode];
}

void sub_100091864(uint64_t a1)
{
  v2 = [*(a1 + 32) confirmationTimeoutTimer];
  v3 = [v2 isValid];

  if (v3)
  {
    v4 = [*(a1 + 32) confirmationTimeoutTimer];
    [v4 invalidate];

    [*(a1 + 32) setConfirmationTimeoutTimer:0];
  }

  v5 = [*(a1 + 32) sosMode];
  v6 = *(a1 + 32);
  if (v5 == 8)
  {
    [v6 checkInView];
  }

  else
  {
    [v6 countdownView];
  }
  v7 = ;
  [v7 stop];

  [*(a1 + 32) countdownPausedTime];
  v9 = v8;
  [*(a1 + 32) countdownStartedTime];
  v11 = v9 - v10;
  [*(a1 + 32) setCountdownStartedTime:0.0];
  [*(a1 + 32) setCountdownPausedTime:0.0];
  [*(a1 + 32) setTimeTillCancelCall:v11];
  [*(a1 + 32) setWasCallCancelled:1];
  v12 = [*(a1 + 32) sosMode];
  v13 = *(a1 + 32);
  if (v12 == 1)
  {
    [v13 setSosMode:3];
    v14 = [*(a1 + 32) sosTrigger];
    v15 = *(a1 + 32);
    if (v14 == 7)
    {
      v16 = [v15 getCheckInViewModel];
      v17 = *(a1 + 32);
      [v16 timeout];
      v19 = v18;
      [v17 timeTillCancelCall];
      [v17 setTimeTillCancelCall:v19 + v20];
      [*(a1 + 32) submitSOSResolutionMetric:0];
    }

    else
    {
      [v15 raiseAccidentalSOSNotification];
    }

    v21 = [*(a1 + 32) analyticsReporter];
    [v21 reportCanceledSOSCountdownToCall:v11];

    v22 = [*(a1 + 32) getSOSDialCountdownViewModel];
    v23 = [v22 countdown] - v11;

    if ([*(a1 + 32) sosTrigger] != 7)
    {
      v26 = 2;
      goto LABEL_17;
    }

    v24 = [*(a1 + 32) getCheckInViewModel];
    [(PHSOSNotifyCountdownViewModel *)v24 timeout];
    v23 = v23 + v25;
    v26 = 2;
  }

  else
  {
    if ([v13 sosMode] == 3)
    {
      return;
    }

    [*(a1 + 32) setSosMode:6];
    v27 = [*(a1 + 32) analyticsReporter];
    [v27 reportCanceledSOSCountdownToNotify:v11];

    v24 = objc_alloc_init(PHSOSNotifyCountdownViewModel);
    v23 = [(PHSOSNotifyCountdownViewModel *)v24 countdown]- v11;
    v26 = 5;
  }

LABEL_17:
  v28 = [*(a1 + 32) coreAnalyticsReporter];
  [v28 reportSOSUserCancelled:objc_msgSend(*(a1 + 32) lastFlowState:"sosTrigger") countdownValue:{v26, v23}];
}

void sub_100091B00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100091BBC;
  v5[3] = &unk_100356F60;
  objc_copyWeak(&v6, (a1 + 40));
  [v4 dismissViewControllerAnimated:1 completion:v5];
  objc_destroyWeak(&v6);
}

void sub_100091BBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained sosMode] == 8)
  {
    [WeakRetained checkInView];
  }

  else
  {
    [WeakRetained countdownView];
  }
  v1 = ;
  [v1 restart];

  v2 = [WeakRetained coreAnalyticsReporter];
  [v2 reportSOSCancelationTimeout:{objc_msgSend(WeakRetained, "sosTrigger")}];

  [WeakRetained sendFlowStateUpdateForCurrentSOSMode];
}

void sub_100091F84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((+[TUCallCapabilities isEmergencyCallbackModeEnabled]& 1) == 0)
  {
    if ([WeakRetained sosMode] == 4)
    {
      v1 = [WeakRetained countdownView];
      [v1 stop];

      v2 = +[TUCallCenter sharedInstance];
      v3 = [v2 hasCurrentCalls];

      if ((v3 & 1) == 0)
      {
        [WeakRetained startSOSNotificationCountdown];
      }
    }

    else if ([WeakRetained sosMode] == 7)
    {
      [WeakRetained setSosMode:7];
    }
  }
}

void sub_1000923AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004F84(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to add SOS notification request,error,%@", &v6, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully added SOS notification request", &v6, 2u);
    }

    +[SOSUtilities setShortSOSNotificationDisplayTimestamp];
    [*(a1 + 32) submitSOSResolutionMetric:1];
  }
}

uint64_t sub_100092B94(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100092BAC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100092FF8(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100093078;
    block[3] = &unk_100356988;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100093078(uint64_t a1)
{
  v1 = [*(a1 + 32) slidingView];
  [v1 didSuppressFindMy];
}

id sub_1000963FC(uint64_t a1)
{
  [*(a1 + 32) updateButtonColor];
  v2 = *(a1 + 32);

  return [v2 updateIcon];
}

void sub_100097CB0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 didFinishSlideForSlidingButton:*(a1 + 32)];
    }
  }
}
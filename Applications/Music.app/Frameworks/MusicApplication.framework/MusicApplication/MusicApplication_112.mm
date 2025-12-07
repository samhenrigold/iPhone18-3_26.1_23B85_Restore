uint64_t sub_9F8E68(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = sub_AB3470();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_unknownObjectWeakInit();
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v11 = sub_AB3440();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v19 = v11;
  v20 = v13;
  swift_unknownObjectWeakAssign();
  v18[8] = a2 & 1;
  v14 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_hasValidHandlerMapping;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  *(v4 + v14) = 0x8000000000000000;
  sub_9A3318(a3, v18, isUniquelyReferenced_nonNull_native);
  *(v4 + v14) = v17;
  swift_endAccess();
  sub_9F9048();
  return sub_9A5068(v18);
}

uint64_t JSSegueCoordinator.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  sub_F46A0(a3, &v5);

  return sub_12E1C(v4, &unk_E27200, &unk_B3BB90);
}

void sub_9F9048()
{
  v1 = sub_AB7C10();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB7C50();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v0[OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator__needsValidHandlerMappingCleanup] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator__needsValidHandlerMappingCleanup] = 1;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v9 = sub_ABA150();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    aBlock[4] = sub_9F99D4;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_263;
    v11 = _Block_copy(aBlock);
    v12 = v0;

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_8FFF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
    sub_D1010();
    sub_ABABB0();
    sub_ABA160();
    _Block_release(v11);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_9F92F4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_hasValidHandlerMapping;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_12:
    sub_9A500C(*(v3 + 48) + ((v8 << 11) | (32 * __clz(__rbit64(v6)))), v17);
    sub_99F510(v17, v16);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      swift_beginAccess();
      v11 = sub_9A1BBC(v16);
      if (v12)
      {
        v13 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *(a1 + v2);
        *(a1 + v2) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_A9B3B0();
        }

        sub_9A5068(*(v15 + 48) + 32 * v13);
        sub_9A273C(v13, v15);
        *(a1 + v2) = v15;
      }

      swift_endAccess();
    }

    v6 &= v6 - 1;
    sub_9A5068(v16);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      *(a1 + OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator__needsValidHandlerMappingCleanup) = 0;
      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
}

double sub_9F94A0(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong hash];

    v4 = v3;
  }

  else
  {
    sub_36A48();
    v4 = sub_ABAAD0();
  }

  sub_ABB5D0(v4);
  sub_AB93F0();

  return result;
}

Swift::Int sub_9F9574()
{
  sub_ABB5C0();
  sub_9F94A0(v1);
  return sub_ABB610();
}

Swift::Int sub_9F95B8(uint64_t a1)
{
  sub_ABB5C0();
  sub_9F94A0(v2);
  return sub_ABB610();
}

double sub_9F9628()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_seguePerformingDelegate);

  return result;
}

uint64_t sub_9F96F8()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E261B0);
  __swift_project_value_buffer(v0, qword_E261B0);
  return static Logger.music(_:)(0xD000000000000011, 0x8000000000B80B00);
}

uint64_t sub_9F975C()
{

  return swift_deallocObject();
}

unint64_t sub_9F97E4()
{
  result = qword_E26210;
  if (!qword_E26210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26210);
  }

  return result;
}

uint64_t sub_9F9838(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (!v5)
    {

      return 0;
    }

    sub_13C80(0, &qword_DFA720, NSObject_ptr);
    v7 = sub_ABA790();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {

      return 0;
    }

    v9 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (!v9 && (sub_ABB3C0() & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 8))
  {
    v10 = 0xD000000000000015;
  }

  else
  {
    v10 = 0x7463656C6573;
  }

  if (*(a1 + 8))
  {
    v11 = 0x8000000000B7C690;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (*(a2 + 8))
  {
    v12 = 0xD000000000000015;
  }

  else
  {
    v12 = 0x7463656C6573;
  }

  if (*(a2 + 8))
  {
    v13 = 0x8000000000B7C690;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {

    return 1;
  }

  else
  {
    v14 = sub_ABB3C0();

    return v14 & 1;
  }
}

uint64_t sub_9F999C()
{

  return swift_deallocObject();
}

double block_copy_helper_263(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_2Tm_1()
{

  return swift_deallocObject();
}

uint64_t *JSInterstellarViewModel.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_B10830;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v5 = 0;
  *(v5 + 1) = 0;
  return JSObject.init(type:)(a1);
}

uint64_t *JSInterstellarViewModel.init(type:)(uint64_t *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v3 = 0;
  v3[1] = 0;
  return JSObject.init(type:)(a1);
}

id JSInterstellarViewModel.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSInterstellarViewModel();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t *sub_9F9B84()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_pushNotificationObserver;
  *(v0 + v1) = *PushNotificationObserver.shared.unsafeMutableAddressor();
  v2 = OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_scriptingDrivenPushObservers;

  *(v0 + v2) = sub_99EA28(_swiftEmptyArrayStorage);
  v11[0] = _swiftEmptyArrayStorage;
  v11[1] = 1;
  memset(&v11[2], 0, 24);
  v12 = 0;
  v3 = JSObject.init(type:)(v11);
  v4 = qword_E23F48;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = static JSBridge.shared;
  sub_60044();
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000018;
  *(v7 + 24) = 0x8000000000B80C30;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  *(v7 + 48) = 1;
  v8 = v5;
  v9 = v6;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3204, v7);

  return v8;
}

Swift::Void __swiftcall JSPushNotificationObserver.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin();
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v43 - v9;
  __chkstk_darwin();
  v44 = &v43 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v45 = &v43 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24690, &qword_B3BB38);
  __chkstk_darwin();
  v14 = &v43 - v13;
  if (countAndFlagsBits == 0xD000000000000011 && 0x8000000000B80B50 == object || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_808B0(arguments._rawValue + 32, v49);
      if (swift_dynamicCast())
      {
        v16 = v47;
        v15 = v48;
        v17 = OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_scriptingDrivenPushObservers;
        swift_beginAccess();
        v18 = *&v2[v17];
        if (*(v18 + 16))
        {
          v19 = sub_2EBF88(v16, v15);
          if (v20)
          {
            v21 = *(v18 + 56);
            v22 = v46;
            sub_52B3F0(v21 + *(v46 + 72) * v19, v14);
            v23 = 0;
            goto LABEL_20;
          }

          v23 = 1;
        }

        else
        {
          v23 = 1;
        }

        v22 = v46;
LABEL_20:
        (*(v22 + 56))(v14, v23, 1, v6);
        swift_endAccess();
        if ((*(v22 + 48))(v14, 1, v6) == 1)
        {
          sub_12E1C(v14, &qword_E24690, &qword_B3BB38);
          v39 = sub_AB9990();
          v40 = v45;
          (*(*(v39 - 8) + 56))(v45, 1, 1, v39);
          v41 = swift_allocObject();
          v41[2] = 0;
          v41[3] = 0;
          v41[4] = v2;
          v41[5] = v16;
          v41[6] = v15;
          v42 = v2;
          sub_DBDC8(0, 0, v40, &unk_B3F988, v41);
        }

        else
        {

          sub_12E1C(v14, &qword_E24690, &qword_B3BB38);
        }
      }
    }
  }

  else if (countAndFlagsBits == 0xD000000000000013 && 0x8000000000B80B70 == object || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_808B0(arguments._rawValue + 32, v49);
      if (swift_dynamicCast())
      {
        v25 = v47;
        v24 = v48;
        v26 = OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_scriptingDrivenPushObservers;
        swift_beginAccess();
        v27 = *&v2[v26];
        if (*(v27 + 16) && (v28 = v2, v29 = sub_2EBF88(v25, v24), (v30 & 1) != 0))
        {
          v31 = v46;
          sub_52B3F0(*(v27 + 56) + *(v46 + 72) * v29, v10);
          v32 = v44;
          sub_52B328(v10, v44);
          swift_endAccess();
          v33 = sub_AB9990();
          v34 = v45;
          (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
          sub_52B3F0(v32, v8);
          v35 = (*(v31 + 80) + 40) & ~*(v31 + 80);
          v36 = swift_allocObject();
          v36[2] = 0;
          v36[3] = 0;
          v36[4] = v28;
          sub_52B328(v8, v36 + v35);
          v37 = (v36 + ((v7 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v37 = v25;
          v37[1] = v24;
          v38 = v28;
          sub_DBDC8(0, 0, v34, &unk_B3F978, v36);

          sub_6AC730(v32);
        }

        else
        {
          swift_endAccess();
        }
      }
    }
  }
}

uint64_t sub_9FA264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24690, &qword_B3BB38);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_9FA304, 0, 0);
}

uint64_t sub_9FA304()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_pushNotificationObserver);
  v2 = swift_allocObject();
  v0[9] = v2;
  swift_unknownObjectWeakInit();
  v3 = *&stru_68.segname[(swift_isaMask & *v1) - 8];

  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_9FA4A4;
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  return v9(v5, v7, v6, sub_9FAFB0, v2);
}

uint64_t sub_9FA4A4()
{

  return _swift_task_switch(sub_9FA5C0, 0, 0);
}

uint64_t sub_9FA5C0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  swift_beginAccess();
  sub_9A0C5C(v1, v3, v2);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

double sub_9FA6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v10 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_AF8820;
    v12 = type metadata accessor for JSPushNotificationObserver();
    *(v11 + 32) = v9;
    *(v11 + 88) = &type metadata for String;
    *(v11 + 56) = v12;
    *(v11 + 64) = a1;
    *(v11 + 72) = a2;
    *(v11 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
    *(v11 + 96) = a3;
    sub_60044();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = _swiftEmptyArrayStorage;
    *(v13 + 32) = 0xD000000000000016;
    *(v13 + 40) = 0x8000000000B80C50;
    *(v13 + 48) = v9;
    *(v13 + 56) = v10;
    *(v13 + 64) = 0;
    v14 = v9;

    v15 = v10;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v13);
  }

  return result;
}

uint64_t sub_9FA864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24690, &qword_B3BB38);
  v7[9] = swift_task_alloc();

  return _swift_task_switch(sub_9FA904, 0, 0);
}

uint64_t sub_9FA904()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_pushNotificationObserver);
  v0[10] = v1;
  v2 = ((swift_isaMask & *v1) + 120) & 0xFFFFFFFFFFFFLL | 0xDB0A000000000000;
  v0[11] = *&stru_68.segname[swift_isaMask & *v1];
  v0[12] = v2;
  return _swift_task_switch(sub_9FA95C, v1, 0);
}

uint64_t sub_9FA95C()
{
  (*(v0 + 88))(*(v0 + 48));

  return _swift_task_switch(sub_9FA9CC, 0, 0);
}

uint64_t sub_9FA9CC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  swift_beginAccess();

  sub_9A0C5C(v1, v3, v2);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

double sub_9FAAF8()
{

  return result;
}

uint64_t sub_9FABA8()
{
  v1 = (type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[8];
  v4 = sub_AB3470();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_9FACC0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_17BD0;

  return sub_9FA864(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_9FADFC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_9FAE44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_9FA264(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_9FAF30()
{

  return swift_deallocObject();
}

uint64_t sub_9FAF78()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_9FAFB8()
{

  return swift_deallocObject();
}

uint64_t sub_9FB020()
{
  type metadata accessor for JSViewModelRequestCoordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = _swiftEmptyArrayStorage;
  static JSViewModelRequestCoordinator.sharedCoordinator = result;
  return result;
}

uint64_t *JSViewModelRequestCoordinator.sharedCoordinator.unsafeMutableAddressor()
{
  if (qword_E23FD0 != -1)
  {
    swift_once();
  }

  return &static JSViewModelRequestCoordinator.sharedCoordinator;
}

double static JSViewModelRequestCoordinator.sharedCoordinator.getter()
{
  if (qword_E23FD0 != -1)
  {
    swift_once();
  }

  return result;
}

NSUUID __swiftcall JSViewModelRequestCoordinator.beginCoordinating()()
{
  v1 = [objc_allocWithZone(NSUUID) init];
  sub_60044();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;

  v3 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9FB58C, v2);

  return v3;
}

uint64_t sub_9FB1A8(uint64_t a1, void *a2)
{
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    goto LABEL_5;
  }

  type metadata accessor for JSViewModelRequestCoordinator.OperationGroup();
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  *(v13 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 16) = v13;
  swift_beginAccess();

  sub_AB9730();
  if (*(&dword_10 + (*(a1 + 24) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a1 + 24) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v19 = *(&dword_10 + (*(a1 + 24) & 0xFFFFFFFFFFFFFF8));
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  v12 = *(a1 + 16);
  if (v12)
  {
LABEL_5:
    swift_beginAccess();

    v14 = a2;
    sub_AB9730();
    if (*(&dword_10 + (*(v12 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v12 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v19 = *(&dword_10 + (*(v12 + 16) & 0xFFFFFFFFFFFFFF8));
      sub_AB97A0();
    }

    sub_AB97F0();
    swift_endAccess();
  }

  sub_60044();
  v15 = sub_ABA150();
  aBlock[4] = sub_9FBB8C;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_264;
  v16 = _Block_copy(aBlock);

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_8FFF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_D1010();
  sub_ABABB0();
  sub_ABA160();
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_9FB54C()
{

  return swift_deallocObject();
}

double JSViewModelRequestCoordinator.finishCoordinating(token:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_60044();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;

  v8 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9FBA98, v7);

  return result;
}

void sub_9FB640(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 >> 62)
  {
    goto LABEL_41;
  }

  v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  v7 = v6 != 0;
  if (v6)
  {
    v35 = a1;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
LABEL_5:
    v36 = v9;
    v40 = v11;
    v41 = v10;
    v12 = v8;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v13 = sub_9BB0B8(v12, v5);
        v8 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v12 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_40;
        }

        v13 = *(v5 + 8 * v12 + 32);

        v8 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v6 = sub_ABB060();
          goto LABEL_3;
        }
      }

      swift_beginAccess();
      a1 = *(v13 + 16);

      v14 = sub_A82398(a2, a1);
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = a3;
        *(v17 + 24) = a4;
        v37 = v17;
        swift_beginAccess();
        v18 = *(v13 + 24);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v13 + 24) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_6AA00(0, v18[2] + 1, 1, v18);
          *(v13 + 24) = v18;
        }

        v21 = v18[2];
        v20 = v18[3];
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v26 = sub_6AA00((v20 > 1), v21 + 1, 1, v18);
          v22 = v21 + 1;
          v18 = v26;
        }

        v18[2] = v22;
        v23 = &v18[2 * v21];
        v23[4] = sub_2D4D0;
        v23[5] = v37;
        *(v13 + 24) = v18;
        swift_endAccess();
        swift_beginAccess();
        v24 = sub_A82534(v14);
        swift_endAccess();

        v25 = *(v13 + 16);
        if (v25 >> 62)
        {
          a1 = sub_ABB060();
        }

        else
        {
          a1 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
        }

        v10 = v41;
        if (!a1)
        {
          v10 = v12;
        }

        v11 = (a1 != 0) & v40;
        v9 = 1;
        if (v8 == v6)
        {
          a1 = v35;
          v7 = 1;
          goto LABEL_27;
        }

        goto LABEL_5;
      }

      ++v12;
      if (v8 == v6)
      {
        v7 = v36;
        a1 = v35;
        v10 = v41;
        v11 = v40;
        goto LABEL_27;
      }
    }
  }

  v10 = 0;
  v11 = 1;
LABEL_27:

  if (!v7)
  {
    a3(v27);
    return;
  }

  if (v11)
  {
    return;
  }

  v28 = *(a1 + 24);
  if ((v28 & 0xC000000000000001) != 0)
  {

    v29 = sub_9BB0B8(v10, v28);

    goto LABEL_33;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v10 >= *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_44:
    __break(1u);
    return;
  }

  v29 = *(v28 + 8 * v10 + 32);

LABEL_33:
  swift_beginAccess();
  v30 = *(v29 + 24);

  swift_beginAccess();
  sub_A82534(v10);
  swift_endAccess();

  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v30 + 40;
    do
    {
      v33 = *(v32 - 8);

      v33(v34);

      v32 += 16;
      --v31;
    }

    while (v31);
  }
}

uint64_t sub_9FBA50()
{

  return swift_deallocObject();
}

uint64_t JSViewModelRequestCoordinator.deinit()
{

  return v0;
}

uint64_t JSViewModelRequestCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_9FBB54()
{

  return swift_deallocObject();
}

double sub_9FBB8C()
{
  *(v0 + 16) = 0;

  return result;
}

double block_copy_helper_264(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

MusicJSCore::JSPosterBadge::BadgeColor_optional __swiftcall JSPosterBadge.BadgeColor.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_D4D078;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSPosterBadge_BadgeColor_systemMaterial;
  }

  else
  {
    v4.value = MusicJSCore_JSPosterBadge_BadgeColor_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSPosterBadge.BadgeColor.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x614D6D6574737973;
  }

  else
  {
    return 0x726F6C6F4379656BLL;
  }
}

uint64_t sub_9FBC48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x614D6D6574737973;
  }

  else
  {
    v3 = 0x726F6C6F4379656BLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEE006C6169726574;
  }

  if (*a2)
  {
    v5 = 0x614D6D6574737973;
  }

  else
  {
    v5 = 0x726F6C6F4379656BLL;
  }

  if (*a2)
  {
    v6 = 0xEE006C6169726574;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_9FBCFC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_9FBD8C(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_9FBE08(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_9FBE94(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D4D078;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_9FBEF4(uint64_t *a1@<X8>)
{
  v2 = 0x726F6C6F4379656BLL;
  if (*v1)
  {
    v2 = 0x614D6D6574737973;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEE006C6169726574;
  }

  *a1 = v2;
  a1[1] = v3;
}

double sub_9FBF40(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeText);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t JSPosterBadge.badgeText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSPosterBadge.badgeColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeColor;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSPosterBadge.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  sub_F46A0(a3, v13);
  if (v13[3])
  {
    sub_F46A0(v13, v11);

    if (swift_dynamicCast())
    {
      if (a1 == 0x7865546567646162 && a2 == 0xE900000000000074 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = (v3 + OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeText);
        swift_beginAccess();
        *v6 = v10;

LABEL_7:
        __swift_destroy_boxed_opaque_existential_0(v11);
        sub_12E1C(v13, &unk_DE8E40, &unk_AF8050);

        return;
      }

      if (a1 == 0x6C6F436567646162 && a2 == 0xEA0000000000726FLL || (sub_ABB3C0() & 1) != 0)
      {
        v7._rawValue = &off_D4D078;
        v8 = sub_ABB140(v7, v10);

        if (v8 <= 1)
        {
          v9 = OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeColor;
          swift_beginAccess();
          *(v3 + v9) = v8;
        }

        goto LABEL_7;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
  }

  sub_12E1C(v12, &unk_E27200, &unk_B3BB90);
}

uint64_t *JSPosterBadge.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeText];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeColor] = 0;
  return JSMediaItem.init(type:)(a1);
}

uint64_t *JSPosterBadge.init(type:)(uint64_t *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeText);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeColor) = 0;
  return JSMediaItem.init(type:)(a1);
}

id JSPosterBadge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSPosterBadge(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSPosterBadge(uint64_t a1)
{
  result = qword_E26468;
  if (!qword_E26468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_9FC350()
{
  result = qword_E26438;
  if (!qword_E26438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26438);
  }

  return result;
}

double sub_9FC3A4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeText);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

void sub_9FC400(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeColor;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_9FC458(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeColor;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t *JSPersistence.init()()
{
  v1 = v0;
  v2 = type metadata accessor for JSCookieStorage(0);
  v3 = objc_allocWithZone(v2);
  v4 = JSCookieStorage.init()();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSPersistence_cookieStorage) = v4;
  v5 = type metadata accessor for JSLocalStorage();
  v6 = objc_allocWithZone(v5);
  v7 = v4;
  v8 = JSLocalStorage.init()();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSPersistence_localStorage) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580, &qword_AFBB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  strcpy((inited + 32), "cookieStorage");
  *(inited + 46) = -4864;
  *(inited + 48) = v7;
  *(inited + 72) = v2;
  strcpy((inited + 80), "localStorage");
  *(inited + 120) = v5;
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = v8;
  v10 = v8;
  v11 = v7;
  v12 = v10;
  v13 = sub_97420(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0, &qword_AFA4B0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF4EC0;
  *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
  *(v14 + 32) = v13;
  v23[0] = v14;
  v23[1] = 1;
  memset(&v23[2], 0, 24);
  v24 = 0;
  v15 = JSObject.init(type:)(v23);
  v16 = qword_E23F48;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = static JSBridge.shared;
  sub_60044();
  v19 = swift_allocObject();
  *(v19 + 16) = 0x6574736973726550;
  *(v19 + 24) = 0xEB0000000065636ELL;
  *(v19 + 32) = v17;
  *(v19 + 40) = v18;
  *(v19 + 48) = 1;
  v20 = v17;
  v21 = v18;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3204, v19);

  return v20;
}

void sub_9FC828()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSPersistence_localStorage);
}

uint64_t sub_9FC8B4()
{

  return swift_deallocObject();
}

uint64_t *JSGridItem.init(type:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E245E0, &unk_B3BA80);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v17 - v5;
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_titleText);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_subtitleText);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_overlayTitleText);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_overlaySubtitleText);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_descriptionText);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_headlineText);
  *v12 = 0;
  v12[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_headlineColor) = 2;
  v13 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_buttonText);
  *v13 = 0;
  v13[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_backgroundAccessoryArtwork) = 0;
  v14 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem__accessorySocialProfiles;
  v17[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E245D0, &qword_B3BA30);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v14, v6, v3);
  v15 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_pendingFollowButtonSelectionPerformedContexts;
  *(v1 + v15) = sub_99E3E0(_swiftEmptyArrayStorage);
  return JSMediaItem.init(type:)(a1);
}

void JSGridItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[0] = a1;
  v15[1] = a2;
  sub_F46A0(a3, v16);
  if (v16[3])
  {
    sub_F46A0(v16, v14);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_titleText;
LABEL_7:
        v8 = (v3 + v7);
        swift_beginAccess();
        *v8 = v13;

LABEL_8:
        __swift_destroy_boxed_opaque_existential_0(v14);
        sub_12E1C(v16, &unk_DE8E40, &unk_AF8050);

        return;
      }

      if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_subtitleText;
        goto LABEL_7;
      }

      if (a1 == 0x5479616C7265766FLL && a2 == 0xEC000000656C7469 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_overlayTitleText;
        goto LABEL_7;
      }

      if (a1 == 0x5379616C7265766FLL && a2 == 0xEF656C7469746275 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_overlaySubtitleText;
        goto LABEL_7;
      }

      if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_descriptionText;
        goto LABEL_7;
      }

      if (a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_headlineText;
        goto LABEL_7;
      }

      if (a1 == 0x656E696C64616568 && a2 == 0xED0000726F6C6F43 || (sub_ABB3C0() & 1) != 0)
      {
        v9._rawValue = &off_D4CFD8;
        v10 = sub_ABB140(v9, v13);

        if (v10)
        {
          if (v10 != 1)
          {
            goto LABEL_8;
          }

          v11 = 1;
        }

        else
        {
          v11 = 0;
        }

        v12 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_headlineColor;
        swift_beginAccess();
        *(v3 + v12) = v11;
        goto LABEL_8;
      }

      if (a1 == 0x65546E6F74747562 && a2 == 0xEA00000000007478 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_buttonText;
        goto LABEL_7;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
  }

  JSSocialMediaItem.updateProperty(_:value:)(a1, a2, a3);
  sub_12E1C(v15, &unk_E27200, &unk_B3BB90);
}

double sub_9FCEF4()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t JSGridItem.headlineColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_headlineColor;
  swift_beginAccess();
  return *(v0 + v1);
}

double JSGridItem.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*JSGridItem.delegate.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_425B94;
}

void JSGridItem.gridSection.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*JSGridItem.gridSection.modify(uint64_t *a1))(id **a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_gridSection;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_9B93B4;
}

MusicJSCore::JSGridItem::HeadlineColor_optional __swiftcall JSGridItem.HeadlineColor.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_D4CFD8;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSGridItem_HeadlineColor_tintColor;
  }

  else
  {
    v4.value = MusicJSCore_JSGridItem_HeadlineColor_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSGridItem.HeadlineColor.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F6C6F43746E6974;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_9FD344(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F6C6F43746E6974;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000072;
  }

  if (*a2)
  {
    v5 = 0x6F6C6F43746E6974;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xE900000000000072;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_9FD3F0()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_9FD478(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_9FD4EC(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_9FD570(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D4CFD8;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_9FD5D0(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x6F6C6F43746E6974;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000072;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_9FD648()
{

  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate);

  return swift_unknownObjectWeakDestroy();
}

id JSGridItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSGridItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSGridItem(uint64_t a1)
{
  result = qword_E264E0;
  if (!qword_E264E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_9FD874()
{
  result = qword_E264B0;
  if (!qword_E264B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E264B0);
  }

  return result;
}

void sub_9FD9D0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_headlineColor;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_9FDA28(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_headlineColor;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

Swift::Void __swiftcall JSOnboardingViewModel.didCompleteOnboarding()()
{
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v1 = static JSBridge.shared;
  sub_60044();
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  *(v2 + 32) = 0xD000000000000015;
  *(v2 + 40) = 0x8000000000B80E60;
  *(v2 + 48) = v0;
  *(v2 + 56) = v1;
  *(v2 + 64) = 0;
  v3 = v0;
  v4 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v2);
}

uint64_t sub_9FDC24()
{

  return swift_deallocObject();
}

uint64_t JSHeaderItem.TitleHeaderStyle.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x616441656772616CLL;
  }

  if (a1 == 1)
  {
    return 0x786946656772616CLL;
  }

  return 0x647261646E617473;
}

uint64_t sub_9FDD0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x786946656772616CLL;
  v4 = 0xEA00000000006465;
  if (v2 != 1)
  {
    v3 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x616441656772616CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006576697470;
  }

  v7 = 0x786946656772616CLL;
  v8 = 0xEA00000000006465;
  if (*a2 != 1)
  {
    v7 = 0x647261646E617473;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x616441656772616CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006576697470;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

Swift::Int sub_9FDE20()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_9FDED4(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_9FDF74(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_9FE024@<X0>(Swift::String *a1@<X0>, MusicJSCore::JSHeaderItem::TitleHeaderStyle_optional *a2@<X8>)
{
  result = _s11MusicJSCore12JSHeaderItemC16TitleHeaderStyleO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_9FE054(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006576697470;
  v4 = 0xEA00000000006465;
  v5 = 0x786946656772616CLL;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x616441656772616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t JSHeaderItem.Action.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0x6146747369747261;
    if (a1 != 6)
    {
      v4 = 0xD000000000000011;
    }

    v5 = 0xD00000000000001ELL;
    if (a1 == 4)
    {
      v5 = 0xD00000000000001CLL;
    }

    if (a1 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x657461676976616ELL;
    if (a1 != 2)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0xD000000000000010;
    if (a1)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_9FE218@<X0>(Swift::String *a1@<X0>, MusicJSCore::JSHeaderItem::Action_optional *a2@<X8>)
{
  result = _s11MusicJSCore12JSHeaderItemC6ActionO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_9FE248(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xEF64657469726F76;
    v9 = 0x6146747369747261;
    if (v2 != 6)
    {
      v9 = 0xD000000000000011;
      v8 = 0x8000000000B7CDE0;
    }

    v10 = 0x8000000000B7CD90;
    v11 = 0xD00000000000001ELL;
    if (v2 == 4)
    {
      v11 = 0xD00000000000001CLL;
    }

    else
    {
      v10 = 0x8000000000B7CDB0;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEC0000006B636142;
    v4 = 0x657461676976616ELL;
    if (v2 != 2)
    {
      v4 = 0xD000000000000014;
      v3 = 0x8000000000B7CD70;
    }

    v5 = 0xD000000000000010;
    v6 = 0x8000000000B7CD40;
    if (*v1)
    {
      v5 = 0xD000000000000015;
      v6 = 0x8000000000B48D50;
    }

    if (*v1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 1u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

double JSHeaderItem.headerItemDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*JSHeaderItem.headerItemDelegate.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_425B94;
}

void sub_9FE4D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v17);

  if (v17[0] == a1 && v17[1] == a2)
  {
  }

  else
  {
    v7 = sub_ABB3C0();

    if ((v7 & 1) == 0)
    {
      v8 = &v3[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 1);
        ObjectType = swift_getObjectType();
        (*(v9 + 8))(v3, ObjectType, v9);
        swift_unknownObjectRelease();
      }
    }
  }

  if ((v3[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v11 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v17);

    v17[3] = &type metadata for String;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    sub_15F84(v17, v16, &unk_DE8E40, &unk_AF8050);
    v12 = swift_allocObject();
    *(v12 + 16) = 1;
    v13 = v16[1];
    *(v12 + 24) = v16[0];
    *(v12 + 40) = v13;
    *(v12 + 56) = 0x656C746974627573;
    *(v12 + 64) = 0xE800000000000000;
    *(v12 + 72) = v3;
    *(v12 + 80) = v11;
    *(v12 + 88) = 0;
    v14 = v3;
    v15 = v11;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F1374, v12);

    sub_12E1C(v17, &unk_DE8E40, &unk_AF8050);
  }
}

void (*JSHeaderItem.subtitle.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v4 + 2);

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_9FE868;
}

uint64_t JSHeaderItem.$subtitle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0, &qword_B3CA10);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8, &unk_B09A00);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$subtitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0, &qword_B3CA10);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__subtitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8, &unk_B09A00);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

void sub_9FEB54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v17);

  if (v17[0] == a1 && v17[1] == a2)
  {
  }

  else
  {
    v7 = sub_ABB3C0();

    if ((v7 & 1) == 0)
    {
      v8 = &v3[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 1);
        ObjectType = swift_getObjectType();
        (*(v9 + 8))(v3, ObjectType, v9);
        swift_unknownObjectRelease();
      }
    }
  }

  if ((v3[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v11 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v17);

    v17[3] = &type metadata for String;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    sub_15F84(v17, v16, &unk_DE8E40, &unk_AF8050);
    v12 = swift_allocObject();
    *(v12 + 16) = 1;
    v13 = v16[1];
    *(v12 + 24) = v16[0];
    *(v12 + 40) = v13;
    *(v12 + 56) = 0x7469747265707573;
    *(v12 + 64) = 0xEA0000000000656CLL;
    *(v12 + 72) = v3;
    *(v12 + 80) = v11;
    *(v12 + 88) = 0;
    v14 = v3;
    v15 = v11;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F1374, v12);

    sub_12E1C(v17, &unk_DE8E40, &unk_AF8050);
  }
}

double sub_9FEE00(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v9 = *a1;
  v8 = a1[1];
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(&v14);

  v11 = v14;
  v12 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v9;
  v15 = v8;
  v10;
  sub_AB5520();
  a7(v11, v12);

  return result;
}

double sub_9FEF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v13);

  v9 = v13;
  v10 = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = a1;
  v14 = a2;
  v11 = v5;
  sub_AB5520();
  a5(v9, v10);

  return result;
}

void (*JSHeaderItem.supertitle.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v4 + 2);

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_9FF0B8;
}

uint64_t JSHeaderItem.$supertitle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0, &qword_B3CA10);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8, &unk_B09A00);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$supertitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0, &qword_B3CA10);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__supertitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8, &unk_B09A00);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

void sub_9FF3A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v17);

  if (v17[0] == a1 && v17[1] == a2)
  {
  }

  else
  {
    v7 = sub_ABB3C0();

    if ((v7 & 1) == 0)
    {
      v8 = &v3[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 1);
        ObjectType = swift_getObjectType();
        (*(v9 + 8))(v3, ObjectType, v9);
        swift_unknownObjectRelease();
      }
    }
  }

  if ((v3[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v11 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v17);

    v17[3] = &type metadata for String;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    sub_15F84(v17, v16, &unk_DE8E40, &unk_AF8050);
    v12 = swift_allocObject();
    *(v12 + 16) = 1;
    v13 = v16[1];
    *(v12 + 24) = v16[0];
    *(v12 + 40) = v13;
    *(v12 + 56) = 0x656C746974;
    *(v12 + 64) = 0xE500000000000000;
    *(v12 + 72) = v3;
    *(v12 + 80) = v11;
    *(v12 + 88) = 0;
    v14 = v3;
    v15 = v11;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F1374, v12);

    sub_12E1C(v17, &unk_DE8E40, &unk_AF8050);
  }
}

void (*JSHeaderItem.title.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v4 + 2);

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_9FF770;
}

void sub_9FF798(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v9 = **a1;
  v8 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v7[4];
  if (a2)
  {

    sub_AB5510(v7 + 2);

    v11 = v7[2];
    v12 = v7[3];
    swift_getKeyPath();
    swift_getKeyPath();
    v7[2] = v9;
    v7[3] = v8;
    v13 = v10;
    sub_AB5520();
    a5(v11, v12);
  }

  else
  {
    sub_AB5510(v7 + 2);

    v15 = v7[2];
    v14 = v7[3];
    swift_getKeyPath();
    swift_getKeyPath();
    v7[2] = v9;
    v7[3] = v8;
    v16 = v10;
    sub_AB5520();
    a5(v15, v14);
  }

  free(v7);
}

uint64_t JSHeaderItem.$title.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0, &qword_B3CA10);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8, &unk_B09A00);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$title.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9E0, &qword_B3CA10);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__title;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8, &unk_B09A00);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

void sub_9FFC14(char a1)
{
  v2 = v1;
  v4 = 0xED00006576697470;
  v5 = 0x616441656772616CLL;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v19);

  if (!a1)
  {
    v6 = 0x616441656772616CLL;
    v7 = 0xED00006576697470;
    if (LOBYTE(v19[0]))
    {
      goto LABEL_9;
    }

LABEL_13:
    v8 = 0xED00006576697470;
    if (v6 != 0x616441656772616CLL)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (a1 == 1)
  {
    v6 = 0x786946656772616CLL;
  }

  else
  {
    v6 = 0x647261646E617473;
  }

  if (a1 == 1)
  {
    v7 = 0xEA00000000006465;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (!LOBYTE(v19[0]))
  {
    goto LABEL_13;
  }

LABEL_9:
  if (LOBYTE(v19[0]) == 1)
  {
    v8 = 0xEA00000000006465;
    if (v6 != 0x786946656772616CLL)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = 0xE800000000000000;
    if (v6 != 0x647261646E617473)
    {
      goto LABEL_18;
    }
  }

LABEL_16:
  if (v7 == v8)
  {

    goto LABEL_21;
  }

LABEL_18:
  v9 = sub_ABB3C0();

  if ((v9 & 1) == 0)
  {
    v10 = &v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 1);
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(v2, ObjectType, v11);
      swift_unknownObjectRelease();
    }
  }

LABEL_21:
  if ((v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v13 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v19);

    if (LOBYTE(v19[0]))
    {
      if (LOBYTE(v19[0]) == 1)
      {
        v5 = 0x786946656772616CLL;
        v4 = 0xEA00000000006465;
      }

      else
      {
        v4 = 0xE800000000000000;
        v5 = 0x647261646E617473;
      }
    }

    v19[3] = &type metadata for String;
    v19[0] = v5;
    v19[1] = v4;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    sub_15F84(v19, v18, &unk_DE8E40, &unk_AF8050);
    v14 = swift_allocObject();
    *(v14 + 16) = 1;
    v15 = v18[1];
    *(v14 + 24) = v18[0];
    *(v14 + 40) = v15;
    *(v14 + 56) = 0xD000000000000010;
    *(v14 + 64) = 0x8000000000B81020;
    *(v14 + 72) = v2;
    *(v14 + 80) = v13;
    *(v14 + 88) = 0;
    v16 = v2;
    v17 = v13;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F1374, v14);

    sub_12E1C(v19, &unk_DE8E40, &unk_AF8050);
  }
}

uint64_t (*JSHeaderItem.titleHeaderStyle.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_A00090;
}

uint64_t JSHeaderItem.$titleHeaderStyle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26548, &unk_B3FDF8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26540, &qword_B3FDF0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$titleHeaderStyle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26548, &unk_B3FDF8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__titleHeaderStyle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26540, &qword_B3FDF0);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

void JSHeaderItem.videoDetailArtwork.setter(void *a1)
{
  sub_A0C5A4(a1);
}

void (*JSHeaderItem.videoDetailArtwork.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v4);

  v4[6] = *v4;
  return sub_A0048C;
}

void sub_A0048C(void ***a1, char a2)
{
  v3 = *a1;
  v4 = *a1 + 6;
  v5 = *v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v3[7];
  if (a2)
  {
    v7 = v5;
    sub_AB5510(v3);

    v8 = *v3;
    swift_getKeyPath();
    swift_getKeyPath();
    *v3 = v5;
    v9 = v6;
    v10 = v7;
    sub_AB5520();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v3);

    v11 = *v3;
    if (v8)
    {
      if (v11)
      {
        type metadata accessor for JSVideoArtwork();
        v12 = v8;
        v13 = sub_ABA790();

        if (v13)
        {

LABEL_15:
          v15 = *v4;
          goto LABEL_21;
        }
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    v20 = v3[7] + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = v3[7];
      v22 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      (*(v22 + 8))(v21, ObjectType, v22);
      swift_unknownObjectRelease();
    }

    v10 = v8;
    goto LABEL_15;
  }

  sub_AB5510(v3);

  v14 = *v3;
  swift_getKeyPath();
  swift_getKeyPath();
  *v3 = v5;
  v15 = v5;
  v16 = v6;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v3);

  v17 = *v3;
  if (v14)
  {
    if (v17)
    {
      type metadata accessor for JSVideoArtwork();
      v18 = v14;
      v19 = sub_ABA790();

      if (v19)
      {

        goto LABEL_21;
      }
    }
  }

  else
  {
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  v24 = v3[7] + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = v3[7];
    v26 = *(v24 + 8);
    v27 = swift_getObjectType();
    (*(v26 + 8))(v25, v27, v26);
    swift_unknownObjectRelease();
  }

  v15 = v14;
LABEL_21:

  free(v3);
}

uint64_t JSHeaderItem.$videoDetailArtwork.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9E8, &qword_AFDC60);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25988, &unk_B3E330);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$videoDetailArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEF9E8, &qword_AFDC60);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__videoDetailArtwork;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25988, &unk_B3E330);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

void sub_A00AC8(char *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v19);

  v4 = v19[0];
  if (a1)
  {
    if (v19[0])
    {

      if (v4 == a1)
      {
        return;
      }
    }

    v5 = &a1[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate];
    swift_beginAccess();
    *(v5 + 1) = 0;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (!v19[0])
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v19);

  v6 = v19[0];
  if (v19[0])
  {
    v7 = v19[0] + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
    swift_beginAccess();
    *(v7 + 1) = &protocol witness table for JSHeaderItem;
    swift_unknownObjectWeakAssign();
  }

  v8 = &v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v2, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  if ((v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v11 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v19);

    v12 = v19[0];
    if (v19[0])
    {
      v13 = type metadata accessor for JSArtwork(0);
    }

    else
    {
      v13 = 0;
      v19[1] = 0;
      v19[2] = 0;
    }

    v19[0] = v12;
    v19[3] = v13;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    sub_15F84(v19, v18, &unk_DE8E40, &unk_AF8050);
    v14 = swift_allocObject();
    *(v14 + 16) = 1;
    v15 = v18[1];
    *(v14 + 24) = v18[0];
    *(v14 + 40) = v15;
    *(v14 + 56) = 0xD00000000000001CLL;
    *(v14 + 64) = 0x8000000000B80EF0;
    *(v14 + 72) = v2;
    *(v14 + 80) = v11;
    *(v14 + 88) = 0;
    v16 = v2;
    v17 = v11;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F1374, v14);

    sub_12E1C(v19, &unk_DE8E40, &unk_AF8050);
  }
}

void (*JSHeaderItem.promotionalBackgroundArtwork.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(a1 + 1);

  *a1 = a1[1];
  return sub_A00EE4;
}

uint64_t JSHeaderItem.$promotionalBackgroundArtwork.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25968, &qword_B3E290);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960, &unk_B3FEA0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$promotionalBackgroundArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25968, &qword_B3E290);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalBackgroundArtwork;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960, &unk_B3FEA0);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

double sub_A011D0(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v11);

  v4 = v11[0];
  if (a1)
  {
    if (v11[0])
    {

      if (v4 == a1)
      {
        return result;
      }
    }

    v5 = &a1[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate];
    swift_beginAccess();
    *(v5 + 1) = 0;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (!v11[0])
    {
      return result;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v11);

  v6 = v11[0];
  if (v11[0])
  {
    v7 = v11[0] + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
    swift_beginAccess();
    *(v7 + 1) = &protocol witness table for JSHeaderItem;
    swift_unknownObjectWeakAssign();
  }

  v8 = v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v1, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  return result;
}

void (*JSHeaderItem.promotionalBackgroundArtworkForRegularWidth.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(a1 + 1);

  *a1 = a1[1];
  return sub_A0145C;
}

uint64_t JSHeaderItem.$promotionalBackgroundArtworkForRegularWidth.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25968, &qword_B3E290);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960, &unk_B3FEA0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$promotionalBackgroundArtworkForRegularWidth.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25968, &qword_B3E290);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalBackgroundArtworkForRegularWidth;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960, &unk_B3FEA0);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

void sub_A01748(char *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v19);

  v4 = v19[0];
  if (a1)
  {
    if (v19[0])
    {

      if (v4 == a1)
      {
        return;
      }
    }

    v5 = &a1[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate];
    swift_beginAccess();
    *(v5 + 1) = 0;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (!v19[0])
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v19);

  v6 = v19[0];
  if (v19[0])
  {
    v7 = v19[0] + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
    swift_beginAccess();
    *(v7 + 1) = &protocol witness table for JSHeaderItem;
    swift_unknownObjectWeakAssign();
  }

  v8 = &v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v2, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  if ((v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v11 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v19);

    v12 = v19[0];
    if (v19[0])
    {
      v13 = type metadata accessor for JSArtwork(0);
    }

    else
    {
      v13 = 0;
      v19[1] = 0;
      v19[2] = 0;
    }

    v19[0] = v12;
    v19[3] = v13;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    sub_15F84(v19, v18, &unk_DE8E40, &unk_AF8050);
    v14 = swift_allocObject();
    *(v14 + 16) = 1;
    v15 = v18[1];
    *(v14 + 24) = v18[0];
    *(v14 + 40) = v15;
    *(v14 + 56) = 0xD00000000000001BLL;
    *(v14 + 64) = 0x8000000000B80F40;
    *(v14 + 72) = v2;
    *(v14 + 80) = v11;
    *(v14 + 88) = 0;
    v16 = v2;
    v17 = v11;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F1374, v14);

    sub_12E1C(v19, &unk_DE8E40, &unk_AF8050);
  }
}

void (*JSHeaderItem.promotionalThumbnailArtwork.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(a1 + 1);

  *a1 = a1[1];
  return sub_A01B64;
}

uint64_t JSHeaderItem.$promotionalThumbnailArtwork.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25968, &qword_B3E290);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960, &unk_B3FEA0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$promotionalThumbnailArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25968, &qword_B3E290);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalThumbnailArtwork;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960, &unk_B3FEA0);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

double sub_A01E80(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v14);

  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x656C69666F7270;
    }

    else
    {
      v3 = 0x747369747261;
    }

    if (a1 == 1)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x746C7561666564;
  }

  v5 = 0xE700000000000000;
  v6 = 0x656C69666F7270;
  if (LOBYTE(v14[0]) != 1)
  {
    v6 = 0x747369747261;
    v5 = 0xE600000000000000;
  }

  if (LOBYTE(v14[0]))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (LOBYTE(v14[0]))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v3 == v7 && v4 == v8)
  {
  }

  else
  {
    v10 = sub_ABB3C0();

    if ((v10 & 1) == 0)
    {
      v11 = v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        (*(v12 + 8))(v1, ObjectType, v12);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_A02058(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v11);

  v9 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v8;
  sub_AB5520();
  return a7(v9);
}

uint64_t sub_A02158(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v9);

  v6 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v4;
  sub_AB5520();
  return a4(v6);
}

uint64_t (*JSHeaderItem.promotionalLayoutStyle.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_A022BC;
}

uint64_t sub_A022E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = *a1;
  sub_AB5510((a1 + 9));

  v9 = *(a1 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v7;
  v10 = v8;
  sub_AB5520();
  return a5(v9);
}

uint64_t JSHeaderItem.$promotionalLayoutStyle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26580, &qword_B3FF90);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26578, &qword_B3FF88);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$promotionalLayoutStyle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26580, &qword_B3FF90);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalLayoutStyle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26578, &qword_B3FF88);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

void JSHeaderItem.storeItemMetadata.setter(void *a1)
{
  sub_A0C960(a1);
}

void (*JSHeaderItem.storeItemMetadata.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v4);

  v4[6] = *v4;
  return sub_A027A0;
}

void sub_A027A0(void ***a1, char a2)
{
  v3 = *a1;
  v4 = *a1 + 6;
  v5 = *v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v3[7];
  if (a2)
  {
    v7 = v5;
    sub_AB5510(v3);

    v8 = *v3;
    swift_getKeyPath();
    swift_getKeyPath();
    *v3 = v5;
    v9 = v6;
    v10 = v7;
    sub_AB5520();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v3);

    v11 = *v3;
    if (v8)
    {
      if (v11)
      {
        sub_13C80(0, &unk_DF43D0, MPStoreItemMetadata_ptr);
        v12 = v8;
        v13 = sub_ABA790();

        if (v13)
        {

LABEL_15:
          v15 = *v4;
          goto LABEL_21;
        }
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    v20 = v3[7] + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = v3[7];
      v22 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      (*(v22 + 8))(v21, ObjectType, v22);
      swift_unknownObjectRelease();
    }

    v10 = v8;
    goto LABEL_15;
  }

  sub_AB5510(v3);

  v14 = *v3;
  swift_getKeyPath();
  swift_getKeyPath();
  *v3 = v5;
  v15 = v5;
  v16 = v6;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v3);

  v17 = *v3;
  if (v14)
  {
    if (v17)
    {
      sub_13C80(0, &unk_DF43D0, MPStoreItemMetadata_ptr);
      v18 = v14;
      v19 = sub_ABA790();

      if (v19)
      {

        goto LABEL_21;
      }
    }
  }

  else
  {
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  v24 = v3[7] + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = v3[7];
    v26 = *(v24 + 8);
    v27 = swift_getObjectType();
    (*(v26 + 8))(v25, v27, v26);
    swift_unknownObjectRelease();
  }

  v15 = v14;
LABEL_21:

  free(v3);
}

uint64_t JSHeaderItem.$storeItemMetadata.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265A0, &qword_B3FFF0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26598, &qword_B3FFE8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$storeItemMetadata.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265A0, &qword_B3FFF0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__storeItemMetadata;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26598, &qword_B3FFE8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

void sub_A02E10(char *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v22);

  v4 = v22[0];
  if (a1)
  {
    if (v22[0])
    {
      type metadata accessor for JSUpsellBanner();
      v5 = a1;
      v6 = sub_ABA790();

      if (v6)
      {
        return;
      }
    }

    else
    {
      v5 = a1;
    }

    v7 = &v5[OBJC_IVAR____TtC11MusicJSCore14JSUpsellBanner_upsellBannerDelegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_12;
    }

    v9 = Strong;
    v4 = a1;
    swift_unknownObjectRelease();
    if (v9 == v2)
    {
      *(v7 + 1) = 0;
      swift_unknownObjectWeakAssign();
    }
  }

  else if (!v22[0])
  {
    return;
  }

LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v22);

  v10 = v22[0];
  if (v22[0])
  {
    *(v22[0] + OBJC_IVAR____TtC11MusicJSCore14JSUpsellBanner_upsellBannerDelegate + 8) = &off_D55BB8;
    swift_unknownObjectWeakAssign();
  }

  v11 = &v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v2, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  if ((v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v14 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v22);

    v15 = v22[0];
    if (v22[0])
    {
      v16 = type metadata accessor for JSUpsellBanner();
    }

    else
    {
      v16 = 0;
      v22[1] = 0;
      v22[2] = 0;
    }

    v22[0] = v15;
    v22[3] = v16;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    sub_15F84(v22, v21, &unk_DE8E40, &unk_AF8050);
    v17 = swift_allocObject();
    *(v17 + 16) = 1;
    v18 = v21[1];
    *(v17 + 24) = v21[0];
    *(v17 + 40) = v18;
    strcpy((v17 + 56), "upsellBanner");
    *(v17 + 69) = 0;
    *(v17 + 70) = -5120;
    *(v17 + 72) = v2;
    *(v17 + 80) = v14;
    *(v17 + 88) = 0;
    v19 = v2;
    v20 = v14;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F12C0, v17);

    sub_12E1C(v22, &unk_DE8E40, &unk_AF8050);
  }
}

void (*JSHeaderItem.upsellBanner.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(a1 + 1);

  *a1 = a1[1];
  return sub_A03250;
}

uint64_t JSHeaderItem.$upsellBanner.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265C0, &qword_B40050);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265B8, &qword_B40048);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$upsellBanner.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265C0, &qword_B40050);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__upsellBanner;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265B8, &qword_B40048);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

double sub_A03550(char *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v15);

  v5 = v15[0];
  if (a1)
  {
    if (v15[0])
    {
      type metadata accessor for JSBarButtonItem(0);
      v6 = a1;
      v7 = sub_ABA790();

      if (v7)
      {
        return result;
      }
    }

    else
    {
      v6 = a1;
    }

    v8 = &v6[OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem_barButtonItemDelegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_12;
    }

    v10 = Strong;
    v5 = a1;
    swift_unknownObjectRelease();
    if (v10 == v2)
    {
      *(v8 + 1) = 0;
      swift_unknownObjectWeakAssign();
    }
  }

  else if (!v15[0])
  {
    return result;
  }

LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v15);

  v11 = v15[0];
  if (v15[0])
  {
    *(v15[0] + OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem_barButtonItemDelegate + 8) = &off_D55BA8;
    swift_unknownObjectWeakAssign();
  }

  v12 = v2 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(v2, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_A0374C(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *))
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v8;
  sub_AB5510(&v13);

  v11 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v8;
  v12 = v10;
  v9;
  sub_AB5520();
  a7(v11);
}

void sub_A03864(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v10);

  v7 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = a1;
  v8 = a1;
  v9 = v4;
  sub_AB5520();
  a4(v7);
}

void (*JSHeaderItem.trailingBarButtonItem.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(a1 + 1);

  *a1 = a1[1];
  return sub_A039D8;
}

void sub_A03A00(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  v8 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = *(a1 + 16);
  if (a2)
  {
    v10 = v8;
    sub_AB5510((a1 + 8));

    v11 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    *(a1 + 8) = v8;
    v12 = v9;
    v13 = v10;
    sub_AB5520();
    a5(v11);

    v14 = *a1;
  }

  else
  {
    sub_AB5510((a1 + 8));

    v17 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    *(a1 + 8) = v8;
    v15 = v8;
    v16 = v9;
    sub_AB5520();
    a5(v17);

    v14 = v17;
  }
}

uint64_t JSHeaderItem.$trailingBarButtonItem.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265E0, &unk_B400B0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265D8, &qword_B400A8);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$trailingBarButtonItem.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265E0, &unk_B400B0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__trailingBarButtonItem;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265D8, &qword_B400A8);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD154;
}

void sub_A03E70(uint64_t a1)
{
  v25 = a1;
  v2 = sub_AB31C0();
  v24 = *(v2 - 8);
  __chkstk_darwin();
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26760, &qword_B40610) - 8;
  __chkstk_darwin();
  v6 = &v21 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v21 - v9);
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v1;
  sub_AB5510(v10);

  v11 = *(v4 + 56);
  sub_15F84(v25, v6, &unk_DF2AE0, &qword_AFC930);
  v12 = v24;
  sub_15F84(v10, &v6[v11], &unk_DF2AE0, &qword_AFC930);
  v13 = *(v12 + 48);
  if (v13(v6, 1, v2) == 1)
  {
    sub_12E1C(v10, &unk_DF2AE0, &qword_AFC930);
    if (v13(&v6[v11], 1, v2) == 1)
    {
      sub_12E1C(v6, &unk_DF2AE0, &qword_AFC930);
      return;
    }
  }

  else
  {
    sub_15F84(v6, v8, &unk_DF2AE0, &qword_AFC930);
    if (v13(&v6[v11], 1, v2) != 1)
    {
      v18 = v22;
      (*(v12 + 32))(v22, &v6[v11], v2);
      sub_A0CED4(&qword_E26768, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v19 = sub_AB91C0();
      v20 = *(v12 + 8);
      v20(v18, v2);
      sub_12E1C(v10, &unk_DF2AE0, &qword_AFC930);
      v20(v8, v2);
      sub_12E1C(v6, &unk_DF2AE0, &qword_AFC930);
      v14 = v23;
      if (v19)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_12E1C(v10, &unk_DF2AE0, &qword_AFC930);
    (*(v12 + 8))(v8, v2);
  }

  sub_12E1C(v6, &qword_E26760, &qword_B40610);
  v14 = v23;
LABEL_7:
  v15 = v14 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(v14, ObjectType, v16);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_A042C8(uint64_t a1, void **a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = (&v12 - v6);
  __chkstk_darwin();
  v9 = &v12 - v8;
  sub_15F84(a1, &v12 - v8, &unk_DF2AE0, &qword_AFC930);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v7);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_15F84(v9, v5, &unk_DF2AE0, &qword_AFC930);
  v10;
  sub_AB5520();
  sub_A03E70(v7);
  sub_12E1C(v7, &unk_DF2AE0, &qword_AFC930);
  return sub_12E1C(v9, &unk_DF2AE0, &qword_AFC930);
}

uint64_t JSHeaderItem.contextualPlaybackProvidingURL.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = (&v9 - v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v6);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_15F84(a1, v4, &unk_DF2AE0, &qword_AFC930);
  v7 = v1;
  sub_AB5520();
  sub_A03E70(v6);
  sub_12E1C(a1, &unk_DF2AE0, &qword_AFC930);
  return sub_12E1C(v6, &unk_DF2AE0, &qword_AFC930);
}

void (*JSHeaderItem.contextualPlaybackProvidingURL.modify(void *a1))(void ***a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v4[3] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v4[3] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[4] = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v7);

  return sub_A04750;
}

void sub_A04750(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    sub_15F84((*a1)[4], v3, &unk_DF2AE0, &qword_AFC930);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v6);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_15F84(v3, v5, &unk_DF2AE0, &qword_AFC930);
    v8 = v7;
    sub_AB5520();
    sub_A03E70(v6);
    sub_12E1C(v6, &unk_DF2AE0, &qword_AFC930);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v3);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_15F84(v4, v6, &unk_DF2AE0, &qword_AFC930);
    v9 = v7;
    sub_AB5520();
    sub_A03E70(v3);
  }

  sub_12E1C(v3, &unk_DF2AE0, &qword_AFC930);
  sub_12E1C(v4, &unk_DF2AE0, &qword_AFC930);
  free(v4);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t JSHeaderItem.$contextualPlaybackProvidingURL.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265F8, &qword_B40110);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265F0, &unk_B42440);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$contextualPlaybackProvidingURL.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265F8, &qword_B40110);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__contextualPlaybackProvidingURL;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265F0, &unk_B42440);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

double sub_A04C48(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v14);

  if (LOBYTE(v14[0]) != v2)
  {
    if (v1[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS])
    {
      v4 = &v1[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 1);
        ObjectType = swift_getObjectType();
        (*(v5 + 8))(v1, ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (qword_E23F48 != -1)
      {
        swift_once();
      }

      v7 = static JSBridge.shared;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_AF85F0;
      *(v8 + 56) = type metadata accessor for JSHeaderItem(0);
      *(v8 + 32) = v1;
      swift_getKeyPath();
      swift_getKeyPath();
      v9 = v1;
      sub_AB5510(v14);

      v10 = v14[0];
      *(v8 + 88) = &type metadata for Bool;
      *(v8 + 64) = v10;
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v11 = swift_allocObject();
      *(v11 + 16) = v8;
      *(v11 + 24) = _swiftEmptyArrayStorage;
      *(v11 + 32) = 0xD000000000000018;
      *(v11 + 40) = 0x8000000000B812C0;
      *(v11 + 48) = v9;
      *(v11 + 56) = v7;
      *(v11 + 64) = 0;
      v12 = v9;
      v13 = v7;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v11);
    }
  }

  return result;
}

uint64_t JSHeaderItem.isContentFavorited.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_A04F28(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

double sub_A04FA8(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v5);

  v3 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_AB5520();
  return sub_A04C48(v3);
}

double JSHeaderItem.isContentFavorited.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v5);

  v2 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  sub_AB5520();
  return sub_A04C48(v2);
}

double (*JSHeaderItem.isContentFavorited.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_A051D4;
}

double sub_A051D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  sub_AB5510((a1 + 9));

  v4 = *(a1 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;
  v5 = v3;
  sub_AB5520();
  return sub_A04C48(v4);
}

uint64_t JSHeaderItem.$isContentFavorited.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650, &qword_B3E4A0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40, &qword_B05A30);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$isContentFavorited.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650, &qword_B3E4A0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__isContentFavorited;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40, &qword_B05A30);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

double sub_A0556C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v10);

  if (!a2)
  {
    if (!v11)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (!v11)
  {
    goto LABEL_9;
  }

  if (v10 == a1 && v11 == a2)
  {

    return result;
  }

  v6 = sub_ABB3C0();

  if ((v6 & 1) == 0)
  {
LABEL_9:
    v7 = v2 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(v2, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t JSHeaderItem.inlineBubbleTipPlacement.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

double sub_A05720@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

double sub_A057A0(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_AB5510(&v9);

  v5 = v9;
  v6 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v3;
  v10 = v2;
  v7 = v4;
  sub_AB5520();
  sub_A0556C(v5, v6);

  return result;
}

double JSHeaderItem.inlineBubbleTipPlacement.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v9);

  v5 = v9;
  v6 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a1;
  v10 = a2;
  v7 = v2;
  sub_AB5520();
  sub_A0556C(v5, v6);

  return result;
}

void (*JSHeaderItem.inlineBubbleTipPlacement.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510((v4 + 16));

  *v4 = *(v4 + 16);
  return sub_A05A2C;
}

void sub_A05A2C(uint64_t **a1, char a2)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v3[4];
  if (a2)
  {

    sub_AB5510(v3 + 2);

    v7 = v3[2];
    v8 = v3[3];
    swift_getKeyPath();
    swift_getKeyPath();
    v3[2] = v5;
    v3[3] = v4;
    v9 = v6;
    sub_AB5520();
    sub_A0556C(v7, v8);
  }

  else
  {
    sub_AB5510(v3 + 2);

    v11 = v3[2];
    v10 = v3[3];
    swift_getKeyPath();
    swift_getKeyPath();
    v3[2] = v5;
    v3[3] = v4;
    v12 = v6;
    sub_AB5520();
    sub_A0556C(v11, v10);
  }

  free(v3);
}

uint64_t JSHeaderItem.$inlineBubbleTipPlacement.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26000, &qword_B41FF0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8, &unk_B3F200);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$inlineBubbleTipPlacement.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26000, &qword_B41FF0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__inlineBubbleTipPlacement;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8, &unk_B3F200);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

void JSHeaderItem.unmappedMusicItem.getter(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26610, &unk_B401B0);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  v7 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem____lazy_storage___unmappedMusicItem;
  swift_beginAccess();
  sub_15F84(v1 + v7, v6, &qword_E26610, &unk_B401B0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24148, &qword_B3AF78);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_12E1C(v6, &qword_E26610, &unk_B401B0);
    sub_A0605C(v1, a1);
    sub_15F84(a1, v4, &unk_E24148, &qword_B3AF78);
    (*(v9 + 56))(v4, 0, 1, v8);
    swift_beginAccess();
    sub_A0CC28(v4, v1 + v7);
    swift_endAccess();
  }

  else
  {
    sub_A0CC98(v6, a1);
  }
}

void sub_A0605C(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24148, &qword_B3AF78);
  __chkstk_darwin();
  v5 = &v20 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v7 = &v20 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v21);

  v8 = v21;
  if (v21 && (v9 = [v21 effectiveStorePlatformDictionary], v8, v9) && (v10 = sub_AB8FF0(), v9, sub_16A5E8(v10), v12 = v11, , v12))
  {
    v13 = sub_AB9990();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_AB9940();
    v14 = a1;
    v15 = sub_AB9930();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v14;
    sub_DBDC8(0, 0, v7, &unk_B40608, v16);

    sub_AB3F90();
    v17 = sub_AB3F80();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v5, 1, v17) == 1)
    {
      sub_12E1C(v5, &unk_E24148, &qword_B3AF78);
      if (*&v14[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_mediaAPIIdentifier + 8])
      {
        sub_AB4140();

        sub_AB4130();
        sub_AB8050();
        sub_AB4120();
      }

      else
      {
        (*(v18 + 56))(a2, 1, 1, v17);
      }
    }

    else
    {
      (*(v18 + 32))(a2, v5, v17);
      (*(v18 + 56))(a2, 0, 1, v17);
    }
  }

  else
  {
    v19 = sub_AB3F80();
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }
}

uint64_t sub_A06410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_AB9940();
  *(v4 + 24) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_A064A8, v6, v5);
}

uint64_t sub_A064A8()
{

  v1.n128_f64[0] = sub_A09630();
  v2 = *(v0 + 8);

  return v2(v1);
}

double JSHeaderItem.unmappedMusicItem.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26610, &unk_B401B0);
  __chkstk_darwin();
  v4 = &v8 - v3;
  sub_A0CC98(a1, &v8 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24148, &qword_B3AF78);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem____lazy_storage___unmappedMusicItem;
  swift_beginAccess();
  sub_A0CC28(v4, v1 + v6);
  swift_endAccess();
  return result;
}

void (*JSHeaderItem.unmappedMusicItem.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26610, &unk_B401B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24148, &qword_B3AF78);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[10] = v9;
  JSHeaderItem.unmappedMusicItem.getter(v9);
  return sub_A0673C;
}

void sub_A0673C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 72) + 56);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  if (a2)
  {
    v7 = v2[6];
    sub_15F84(v2[10], v2[7], &unk_E24148, &qword_B3AF78);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem____lazy_storage___unmappedMusicItem;
    swift_beginAccess();
    sub_A0CC28(v5, v7 + v8);
    swift_endAccess();
    sub_12E1C(v4, &unk_E24148, &qword_B3AF78);
  }

  else
  {
    v9 = v2[6];
    sub_A0CC98(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v10 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem____lazy_storage___unmappedMusicItem;
    swift_beginAccess();
    sub_A0CC28(v5, v9 + v10);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t sub_A068B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v11 - v8;
  sub_15F84(a1, &v11 - v8, a2, a3);
  sub_15F84(v9, v7, a2, a3);
  sub_AB54D0();
  sub_12E1C(a1, a2, a3);
  return sub_12E1C(v9, a2, a3);
}

double sub_A069D8@<D0>(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(a3);

  return result;
}

double sub_A06A48@<D0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(a4);

  return result;
}

uint64_t sub_A06AC0(uint64_t a1, void **a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24148, &qword_B3AF78);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  sub_15F84(a1, &v11 - v6, &unk_E24148, &qword_B3AF78);
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_15F84(v7, v5, &unk_E24148, &qword_B3AF78);
  v9 = v8;
  sub_AB5520();
  return sub_12E1C(v7, &unk_E24148, &qword_B3AF78);
}

uint64_t JSHeaderItem.mappedMusicItem.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24148, &qword_B3AF78);
  __chkstk_darwin();
  v4 = &v7 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_15F84(a1, v4, &unk_E24148, &qword_B3AF78);
  v5 = v1;
  sub_AB5520();
  return sub_12E1C(a1, &unk_E24148, &qword_B3AF78);
}

void (*JSHeaderItem.mappedMusicItem.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6A82CC;
}

uint64_t JSHeaderItem.$mappedMusicItem.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26630, &qword_B40210);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26628, &qword_B40208);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$mappedMusicItem.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26630, &qword_B40210);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__mappedMusicItem;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26628, &qword_B40208);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BE0FC;
}

void JSHeaderItem.handleMetricsEvent(event:impressions:pageDetailsProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_9D0820(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 16)
  {
    if (EnumCaseMultiPayload > 30)
    {
      if (EnumCaseMultiPayload == 31)
      {
        v12 = 0;
      }

      else
      {
        if (EnumCaseMultiPayload != 48)
        {
          goto LABEL_56;
        }

        v12 = 1;
      }
    }

    else if (EnumCaseMultiPayload == 17)
    {
      v12 = 4;
    }

    else
    {
      if (EnumCaseMultiPayload != 18)
      {
        goto LABEL_56;
      }

      v12 = 5;
    }
  }

  else if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 9)
    {
      v12 = 6;
    }

    else
    {
      if (EnumCaseMultiPayload != 10)
      {
        goto LABEL_56;
      }

      v12 = 7;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = sub_AB31C0();
        (*(*(v11 - 8) + 8))(v9, v11);
        v12 = 3;
        goto LABEL_20;
      }

LABEL_56:
      sub_9D0884(v9);
      return;
    }

    v12 = 2;
  }

LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF8600;
  *(v13 + 56) = type metadata accessor for JSHeaderItem(0);
  *(v13 + 32) = v4;
  if (v12 > 3)
  {
    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v14 = 0xEF64657469726F76;
        v15 = 0x6146747369747261;
      }

      else
      {
        v14 = 0x8000000000B7CDE0;
        v15 = 0xD000000000000011;
      }
    }

    else if (v12 == 4)
    {
      v14 = 0x8000000000B7CD90;
      v15 = 0xD00000000000001CLL;
    }

    else
    {
      v14 = 0x8000000000B7CDB0;
      v15 = 0xD00000000000001ELL;
    }
  }

  else if (v12 > 1)
  {
    if (v12 == 2)
    {
      v14 = 0xEC0000006B636142;
      v15 = 0x657461676976616ELL;
    }

    else
    {
      v14 = 0x8000000000B7CD70;
      v15 = 0xD000000000000014;
    }
  }

  else if (v12)
  {
    v14 = 0x8000000000B48D50;
    v15 = 0xD000000000000015;
  }

  else
  {
    v14 = 0x8000000000B7CD40;
    v15 = 0xD000000000000010;
  }

  *(v13 + 88) = &type metadata for String;
  *(v13 + 64) = v15;
  *(v13 + 72) = v14;
  v16 = type metadata accessor for Metrics.Event(0);
  v17 = *(a1 + *(v16 + 20));
  if (v17 <= 1)
  {
    if (*(a1 + *(v16 + 20)))
    {
      v18 = 0x8000000000B6B920;
      v19 = 0xD000000000000010;
    }

    else
    {
      v18 = 0xE600000000000000;
      v19 = 0x6E6F74747562;
    }
  }

  else if (v17 == 2)
  {
    v18 = 0xE500000000000000;
    v19 = 0x6B63617274;
  }

  else if (v17 == 3)
  {
    v18 = 0xEB000000006E6F74;
    v19 = 0x7475426B63617274;
  }

  else
  {
    v18 = 0x8000000000B6B900;
    v19 = 0xD000000000000015;
  }

  *(v13 + 120) = &type metadata for String;
  *(v13 + 96) = v19;
  *(v13 + 104) = v18;
  if (!a2)
  {
    *(v13 + 152) = sub_13C80(0, &qword_DFA720, NSObject_ptr);
    v25 = v4;
LABEL_48:
    v24 = [objc_allocWithZone(NSNull) init];
    goto LABEL_49;
  }

  v20 = *(a1 + *(v16 + 28));
  objc_allocWithZone(type metadata accessor for JSImpressionsBatch());
  v21 = a3;
  v22 = v4;

  v24 = sub_9ED890(v23, v20, a3);

  *(v13 + 152) = sub_13C80(0, &qword_DFA720, NSObject_ptr);
  if (!v24)
  {
    goto LABEL_48;
  }

LABEL_49:
  *(v13 + 128) = v24;
  v26 = Metrics.Event.metricsDictionary.getter();
  if (v26)
  {
    v27 = v26;
    *(&v34 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
    *&v33 = v27;
    sub_9ACFC(&v33, (v13 + 160));
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v28 = [objc_allocWithZone(NSNull) init];
    *(v13 + 184) = sub_13C80(0, &qword_E27CD0, NSNull_ptr);
    *(v13 + 160) = v28;
    if (*(&v34 + 1))
    {
      sub_12E1C(&v33, &unk_DE8E40, &unk_AF8050);
    }
  }

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v29 = static JSBridge.shared;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v30 = swift_allocObject();
  *(v30 + 16) = v13;
  *(v30 + 24) = _swiftEmptyArrayStorage;
  *(v30 + 32) = 0xD000000000000011;
  *(v30 + 40) = 0x8000000000B80EB0;
  *(v30 + 48) = v4;
  *(v30 + 56) = v29;
  *(v30 + 64) = 0;
  v31 = v4;
  v32 = v29;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BE1A0, v30);
}

double sub_A075F8()
{
  type metadata accessor for JSHeaderItem(0);
  sub_A0CED4(&qword_E26638, type metadata accessor for JSHeaderItem, &protocol conformance descriptor for JSHeaderItem);
  sub_AB54A0();
  sub_AB54C0();

  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return result;
}

void JSHeaderItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v9 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = (&v105 - v10);
  __chkstk_darwin();
  v13 = (&v105 - v12);
  v14 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS;
  v15 = v4[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS];
  v4[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] = 1;
  v118[0] = a1;
  v118[1] = a2;
  sub_15F84(a3, v119, &unk_DE8E40, &unk_AF8050);
  if (!v120)
  {

    goto LABEL_12;
  }

  sub_15F84(v119, v111, &unk_DE8E40, &unk_AF8050);

  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v111);
    goto LABEL_12;
  }

  v108 = v15;
  v16 = v116;
  v17 = v117;
  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (sub_ABB3C0() & 1) == 0)
  {
    if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(&v113);

      v36 = v113;
      v37 = v114;
      swift_getKeyPath();
      swift_getKeyPath();
      v113 = v16;
      v114 = v17;
      v4;
      sub_AB5520();
      sub_9FE4D4(v36, v37);
      goto LABEL_7;
    }

    if (a1 == 0x7469747265707573 && a2 == 0xEA0000000000656CLL || (sub_ABB3C0() & 1) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(&v113);

      v44 = v113;
      v45 = v114;
      swift_getKeyPath();
      swift_getKeyPath();
      v113 = v16;
      v114 = v17;
      v4;
      sub_AB5520();
      sub_9FEB54(v44, v45);
      goto LABEL_7;
    }

    if (a1 == 0xD000000000000010 && 0x8000000000B81020 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      v49 = _s11MusicJSCore12JSHeaderItemC16TitleHeaderStyleO8rawValueAESgSS_tcfC_0(v16, v17);
      if (v49 != 3)
      {
        v50 = v49;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_AB5510(&v113);

        v51 = v113;
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v113) = v50;
        v52 = v4;
        sub_AB5520();
        sub_9FFC14(v51);
      }

      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_0(v111);
    v15 = v108;
LABEL_12:
    if (a1 == 0xD000000000000012 && 0x8000000000B80ED0 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      sub_15F84(a3, v111, &unk_DE8E40, &unk_AF8050);
      if (v112)
      {
        type metadata accessor for JSVideoArtwork();
        if (swift_dynamicCast())
        {
          v107 = a2;
          v108 = v15;
          v106 = v14;
          v20 = v4;
          v21 = v116;
          swift_getKeyPath();
          swift_getKeyPath();
          v22 = v21;
          sub_AB5510(v111);

          v23 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v21;
          v105 = v20;
          v24 = v20;
          v25 = v22;
          sub_AB5520();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_AB5510(v111);

          v26 = v111[0];
          v27 = v23;
          if (v23)
          {
            v14 = v106;
            v28 = v108;
            if (v111[0])
            {
              v29 = v27;
              v30 = sub_ABA790();

              if (v30)
              {

LABEL_48:
                v4 = v105;
                LOBYTE(v15) = v28;
                goto LABEL_49;
              }
            }
          }

          else
          {
            v14 = v106;
            v28 = v108;
            if (!v111[0])
            {

              goto LABEL_48;
            }
          }

          v38 = &v24[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v39 = *(v38 + 1);
            ObjectType = swift_getObjectType();
            (*(v39 + 8))(v24, ObjectType, v39);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          goto LABEL_48;
        }
      }

      else
      {
        sub_12E1C(v111, &unk_DE8E40, &unk_AF8050);
      }

LABEL_49:
      sub_12E1C(v119, &unk_DE8E40, &unk_AF8050);
LABEL_50:

      goto LABEL_51;
    }

    if (a1 == 0xD00000000000001CLL && 0x8000000000B80EF0 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      sub_15F84(a3, v111, &unk_DE8E40, &unk_AF8050);
      if (v112)
      {
        type metadata accessor for JSArtwork(0);
        if (swift_dynamicCast())
        {
          v31 = v14;
          v32 = v116;
          swift_getKeyPath();
          swift_getKeyPath();
          v33 = v32;
          sub_AB5510(v111);

          v34 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v32;
          v14 = v31;
          v4;
          v35 = v33;
          sub_AB5520();
          sub_A00AC8(v34);
LABEL_28:

LABEL_39:
          goto LABEL_49;
        }
      }

      else
      {
        sub_12E1C(v111, &unk_DE8E40, &unk_AF8050);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(v111);

      v34 = v111[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v111[0] = 0;
      v4;
      sub_AB5520();
      sub_A00AC8(v34);
      goto LABEL_39;
    }

    if (a1 == 0xD00000000000002BLL && 0x8000000000B80F10 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      sub_15F84(a3, v111, &unk_DE8E40, &unk_AF8050);
      if (v112)
      {
        type metadata accessor for JSArtwork(0);
        if (swift_dynamicCast())
        {
          v41 = v14;
          v42 = v116;
          swift_getKeyPath();
          swift_getKeyPath();
          v43 = v42;
          sub_AB5510(v111);

          v34 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v42;
          v14 = v41;
          v4;
          v35 = v43;
          sub_AB5520();
          sub_A011D0(v34);
          goto LABEL_28;
        }
      }

      else
      {
        sub_12E1C(v111, &unk_DE8E40, &unk_AF8050);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(v111);

      v34 = v111[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v111[0] = 0;
      v4;
      sub_AB5520();
      sub_A011D0(v34);
      goto LABEL_39;
    }

    if (a1 == 0xD00000000000001BLL && 0x8000000000B80F40 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      sub_15F84(a3, v111, &unk_DE8E40, &unk_AF8050);
      if (v112)
      {
        type metadata accessor for JSArtwork(0);
        if (swift_dynamicCast())
        {
          v46 = v14;
          v47 = v116;
          swift_getKeyPath();
          swift_getKeyPath();
          v48 = v47;
          sub_AB5510(v111);

          v34 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v47;
          v14 = v46;
          v4;
          v35 = v48;
          sub_AB5520();
          sub_A01748(v34);
          goto LABEL_28;
        }
      }

      else
      {
        sub_12E1C(v111, &unk_DE8E40, &unk_AF8050);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(v111);

      v34 = v111[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v111[0] = 0;
      v4;
      sub_AB5520();
      sub_A01748(v34);
      goto LABEL_39;
    }

    if (v120)
    {
      sub_15F84(v119, &v116, &unk_DE8E40, &unk_AF8050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
      if (swift_dynamicCast())
      {
        v107 = a2;
        v108 = v15;
        v53 = v115;
        if (a1 == 0xD000000000000017 && 0x8000000000B4F290 == v107 || (sub_ABB3C0() & 1) != 0)
        {
          v54 = v14;
          v55 = objc_allocWithZone(MPStoreItemMetadata);
          isa = sub_AB8FD0().super.isa;

          v57 = [v55 initWithStorePlatformDictionary:isa];

          swift_getKeyPath();
          swift_getKeyPath();
          sub_AB5510(v111);

          v58 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v57;
          v59 = v4;
          v60 = v57;
          sub_AB5520();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_AB5510(v111);

          v61 = v111[0];
          if (v58)
          {
            if (v111[0])
            {
              sub_13C80(0, &unk_DF43D0, MPStoreItemMetadata_ptr);
              v62 = v58;
              v63 = sub_ABA790();

              if (v63)
              {

                v60 = v62;
LABEL_110:

                v82 = &v59[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_mediaAPIIdentifier];
                *v82 = 0;
                *(v82 + 1) = 0;

                __swift_destroy_boxed_opaque_existential_0(&v116);
                sub_12E1C(v119, &unk_DE8E40, &unk_AF8050);

                v14 = v54;
                goto LABEL_9;
              }
            }
          }

          else
          {
            if (!v111[0])
            {
              goto LABEL_110;
            }
          }

          v70 = &v59[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v71 = *(v70 + 1);
            v72 = swift_getObjectType();
            (*(v71 + 8))(v59, v72, v71);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v60 = v58;
          goto LABEL_110;
        }

        v106 = v14;
        if (a1 == 0xD000000000000017 && 0x8000000000B81000 == v107 || (sub_ABB3C0() & 1) != 0)
        {
          v73 = objc_allocWithZone(MPStoreItemMetadata);
          v74 = sub_AB8FD0().super.isa;
          v75 = [v73 initWithStoreMusicAPIDictionary:v74];

          swift_getKeyPath();
          swift_getKeyPath();
          sub_AB5510(v111);

          v76 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v75;
          v77 = v4;
          v78 = v75;
          sub_AB5520();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_AB5510(v111);

          v79 = v111[0];
          if (v76)
          {
            if (v111[0])
            {
              sub_13C80(0, &unk_DF43D0, MPStoreItemMetadata_ptr);
              v80 = v76;
              v81 = sub_ABA790();

              if (v81)
              {

                v78 = v80;
                goto LABEL_129;
              }
            }
          }

          else
          {
            if (!v111[0])
            {
LABEL_129:
              LOBYTE(v15) = v108;

              v113 = 25705;
              v114 = 0xE200000000000000;
              sub_ABAD10();
              v14 = v106;
              if (*(v53 + 16) && (v89 = sub_2EC004(v111), (v90 & 1) != 0))
              {
                sub_808B0(*(v53 + 56) + 32 * v89, &v113);
                sub_8085C(v111);

                v91 = swift_dynamicCast();
                v92 = v109;
                v93 = v110;
                if (!v91)
                {
                  v92 = 0;
                  v93 = 0;
                }
              }

              else
              {

                sub_8085C(v111);
                v92 = 0;
                v93 = 0;
              }

              v94 = &v77[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_mediaAPIIdentifier];
              *v94 = v92;
              *(v94 + 1) = v93;

              __swift_destroy_boxed_opaque_existential_0(&v116);
              sub_12E1C(v119, &unk_DE8E40, &unk_AF8050);
              goto LABEL_50;
            }
          }

          v86 = &v77[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v87 = *(v86 + 1);
            v88 = swift_getObjectType();
            (*(v87 + 8))(v77, v88, v87);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v78 = v76;
          goto LABEL_129;
        }

        __swift_destroy_boxed_opaque_existential_0(&v116);
        v14 = v106;
        v15 = v108;
        a2 = v107;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v116);
      }
    }

    if (a1 == 0x61426C6C65737075 && a2 == 0xEC00000072656E6ELL || (sub_ABB3C0() & 1) != 0)
    {
      sub_15F84(a3, v111, &unk_DE8E40, &unk_AF8050);
      if (v112)
      {
        type metadata accessor for JSUpsellBanner();
        if (swift_dynamicCast())
        {
          v64 = v14;
          v65 = v116;
          swift_getKeyPath();
          swift_getKeyPath();
          v66 = v65;
          sub_AB5510(v111);

          v34 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v65;
          v14 = v64;
          v4;
          v35 = v66;
          sub_AB5520();
          sub_A02E10(v34);
          goto LABEL_28;
        }
      }

      else
      {
        sub_12E1C(v111, &unk_DE8E40, &unk_AF8050);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(v111);

      v34 = v111[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v111[0] = 0;
      v4;
      sub_AB5520();
      sub_A02E10(v34);
      goto LABEL_39;
    }

    if (a1 == 0xD000000000000015 && 0x8000000000B80F60 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      sub_15F84(a3, v111, &unk_DE8E40, &unk_AF8050);
      if (v112)
      {
        type metadata accessor for JSBarButtonItem(0);
        if (swift_dynamicCast())
        {
          v67 = v14;
          v68 = v116;
          swift_getKeyPath();
          swift_getKeyPath();
          v69 = v68;
          sub_AB5510(v111);

          v34 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v68;
          v14 = v67;
          v4;
          v35 = v69;
          sub_AB5520();
          sub_A03550(v34);
          goto LABEL_28;
        }
      }

      else
      {
        sub_12E1C(v111, &unk_DE8E40, &unk_AF8050);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(v111);

      v34 = v111[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v111[0] = 0;
      v4;
      sub_AB5520();
      sub_A03550(v34);
      goto LABEL_39;
    }

    v108 = v15;
    v106 = v14;
    if (a1 == 0xD000000000000016 && 0x8000000000B80F80 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      sub_15F84(a3, v111, &unk_DE8E40, &unk_AF8050);
      if (v112)
      {
        if (swift_dynamicCast())
        {
          v83 = _s11MusicJSCore22PromotionalLayoutStyleO8rawValueACSgSS_tcfC_0(v116, v117);
          if (v83 == 3)
          {
            v84 = 0;
          }

          else
          {
            v84 = v83;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          sub_AB5510(v111);

          v85 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v111[0]) = v84;
          goto LABEL_137;
        }
      }

      else
      {
        sub_12E1C(v111, &unk_DE8E40, &unk_AF8050);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(v111);

      v85 = v111[0];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v111[0]) = 0;
LABEL_137:
      v95 = v4;
      sub_AB5520();
      sub_A01E80(v85);
LABEL_138:
      sub_12E1C(v119, &unk_DE8E40, &unk_AF8050);

LABEL_139:
      v14 = v106;
      goto LABEL_9;
    }

    if (a1 == 0xD00000000000001ELL && 0x8000000000B80FA0 == a2 || (sub_ABB3C0() & 1) != 0)
    {
      sub_15F84(a3, v111, &unk_DE8E40, &unk_AF8050);
      if (v112)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_138;
        }

        sub_AB3180();

        swift_getKeyPath();
        swift_getKeyPath();
        sub_AB5510(v11);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_15F84(v13, v9, &unk_DF2AE0, &qword_AFC930);
        v4;
        sub_AB5520();
        sub_A03E70(v11);
        sub_12E1C(v11, &unk_DF2AE0, &qword_AFC930);
        v96 = v13;
        v97 = &unk_DF2AE0;
        v98 = &qword_AFC930;
      }

      else
      {
        v97 = &unk_DE8E40;
        v98 = &unk_AF8050;
        v96 = v111;
      }

      sub_12E1C(v96, v97, v98);
      goto LABEL_138;
    }

    if (v120)
    {
      sub_15F84(v119, v111, &unk_DE8E40, &unk_AF8050);
      if (swift_dynamicCast())
      {
        if (v99 = v116, a1 == 0xD000000000000012) && 0x8000000000B80FE0 == a2 || (sub_ABB3C0())
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_AB5510(&v113);

          v100 = v113;
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v113) = v99;
          v4;
          sub_AB5520();
          sub_A04C48(v100);
LABEL_159:
          __swift_destroy_boxed_opaque_existential_0(v111);
          goto LABEL_138;
        }
      }

      if (swift_dynamicCast())
      {
        v101 = v116;
        v102 = v117;
        if (a1 == 0xD000000000000018 && 0x8000000000B80FC0 == a2 || (sub_ABB3C0() & 1) != 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_AB5510(&v113);

          v103 = v113;
          v104 = v114;
          swift_getKeyPath();
          swift_getKeyPath();
          v113 = v101;
          v114 = v102;
          v4;
          sub_AB5520();
          sub_A0556C(v103, v104);

          goto LABEL_159;
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v111);
    }

    sub_12E1C(v118, &unk_E27200, &unk_B3BB90);
    goto LABEL_139;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v113);

  v18 = v113;
  v19 = v114;
  swift_getKeyPath();
  swift_getKeyPath();
  v113 = v16;
  v114 = v17;
  v4;
  sub_AB5520();
  sub_9FF3A4(v18, v19);
LABEL_7:

LABEL_8:
  __swift_destroy_boxed_opaque_existential_0(v111);
  sub_12E1C(v119, &unk_DE8E40, &unk_AF8050);

LABEL_9:
  LOBYTE(v15) = v108;
LABEL_51:
  v4[v14] = v15;
}

double sub_A09630()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA9F0, &qword_AF8BD0);
  __chkstk_darwin();
  v35 = &v30 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26700, &qword_B405C0);
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  __chkstk_darwin();
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26708, &qword_B405C8);
  v40 = *(v6 - 8);
  __chkstk_darwin();
  v39 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26710, &qword_B405D0);
  v38 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v30 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24148, &qword_B3AF78);
  __chkstk_darwin();
  v12 = &v30 - v11;
  v13 = sub_AB3F80();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v0;
  JSHeaderItem.unmappedMusicItem.getter(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_12E1C(v12, &unk_E24148, &qword_B3AF78);
  }

  else
  {
    v19 = *(v14 + 32);
    v34 = v16;
    v19(v16, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26718, &qword_B405D8);
    v20 = *(v14 + 80);
    v33 = v6;
    v21 = (v20 + 32) & ~v20;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_AF4EC0;
    (*(v14 + 16))(v22 + v21, v16, v13);
    sub_A0CED4(&qword_E26720, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    sub_AB40C0();
    v31 = v10;
    v32 = v8;
    sub_AB40D0();
    sub_36A00(&qword_E26728, &qword_E26710, &qword_B405D0, &protocol conformance descriptor for MusicLibraryMapping.Request<A>);
    *(v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_autoupdatingMappingResponse) = sub_AB4170();

    sub_AB4190();

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v23 = sub_ABA150();
    v41 = v23;
    v24 = sub_ABA130();
    v25 = v35;
    (*(*(v24 - 8) + 56))(v35, 1, 1, v24);
    sub_36A00(&qword_E26730, &qword_E26700, &qword_B405C0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_60090();
    v26 = v39;
    v27 = v36;
    sub_AB5590();
    sub_12E1C(v25, &unk_DFA9F0, &qword_AF8BD0);

    (*(v37 + 8))(v5, v27);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_36A00(&qword_E26738, &qword_E26708, &qword_B405C8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v28 = v33;
    v29 = sub_AB55C0();

    (*(v40 + 8))(v26, v28);
    (*(v38 + 8))(v31, v32);
    (*(v14 + 8))(v34, v13);
    *(v17 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_mappingResponseSubscription) = v29;
  }

  return result;
}

uint64_t sub_A09CA8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26740, &qword_B405E0);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26748, &qword_B405E8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24148, &qword_B3AF78);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v19 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_15F84(a1, v4, &qword_E26740, &qword_B405E0);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26750, &unk_B405F0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v4, 1, v14) == 1)
    {
      sub_12E1C(v4, &qword_E26740, &qword_B405E0);
    }

    else
    {
      v16 = sub_AB40F0();
      (*(v15 + 8))(v4, v14);
      if (*(v16 + 16))
      {
        (*(v6 + 16))(v8, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

        sub_AB40B0();
        (*(v6 + 8))(v8, v5);
        v17 = 0;
LABEL_8:
        v18 = sub_AB3F80();
        (*(*(v18 - 8) + 56))(v12, v17, 1, v18);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_15F84(v12, v10, &unk_E24148, &qword_B3AF78);
        sub_AB5520();
        return sub_12E1C(v12, &unk_E24148, &qword_B3AF78);
      }
    }

    v17 = 1;
    goto LABEL_8;
  }

  return result;
}

uint64_t *JSHeaderItem.init(type:)(uint64_t *a1)
{
  v99 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26628, &qword_B40208);
  v97 = *(v2 - 8);
  v98 = v2;
  __chkstk_darwin();
  v96 = &v61 - v3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24148, &qword_B3AF78);
  v92 = *(v94 - 8);
  __chkstk_darwin();
  v95 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8, &unk_B3F200);
  v90 = *(v6 - 8);
  v91 = v6;
  __chkstk_darwin();
  v89 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40, &qword_B05A30);
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin();
  v86 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265F0, &unk_B42440);
  v84 = *(v10 - 8);
  v85 = v10;
  __chkstk_darwin();
  v83 = &v61 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v81 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v61 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265D8, &qword_B400A8);
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v61 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265B8, &qword_B40048);
  v75 = *(v76 - 8);
  __chkstk_darwin();
  v74 = &v61 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26598, &qword_B3FFE8);
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v71 = &v61 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26578, &qword_B3FF88);
  v69 = *(v70 - 8);
  __chkstk_darwin();
  v68 = &v61 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960, &unk_B3FEA0);
  v66 = *(v67 - 8);
  __chkstk_darwin();
  v19 = &v61 - v18;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25988, &unk_B3E330);
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v63 = &v61 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26540, &qword_B3FDF0);
  v61 = *(v62 - 8);
  __chkstk_darwin();
  v22 = &v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8, &unk_B09A00);
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v61 - v25;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v27 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__subtitle;
  v100 = 0;
  v101 = 0xE000000000000000;
  sub_AB54D0();
  v28 = *(v24 + 32);
  v28(v1 + v27, v26, v23);
  v29 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__supertitle;
  v100 = 0;
  v101 = 0xE000000000000000;
  sub_AB54D0();
  v28(v1 + v29, v26, v23);
  v30 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__title;
  v100 = 0;
  v101 = 0xE000000000000000;
  sub_AB54D0();
  v28(v1 + v30, v26, v23);
  v31 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__titleHeaderStyle;
  LOBYTE(v100) = 0;
  sub_AB54D0();
  (*(v61 + 32))(v1 + v31, v22, v62);
  v32 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__videoDetailArtwork;
  v100 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25978, &qword_B3E2E0);
  v33 = v63;
  sub_AB54D0();
  (*(v64 + 32))(v1 + v32, v33, v65);
  v34 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalBackgroundArtwork;
  v100 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25950, &qword_B3FE50);
  sub_AB54D0();
  v35 = *(v66 + 32);
  v36 = v67;
  v35(v1 + v34, v19, v67);
  v37 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalBackgroundArtworkForRegularWidth;
  v100 = 0;
  sub_AB54D0();
  v35(v1 + v37, v19, v36);
  v38 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalThumbnailArtwork;
  v100 = 0;
  sub_AB54D0();
  v35(v1 + v38, v19, v36);
  v39 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalLayoutStyle;
  LOBYTE(v100) = 0;
  v40 = v68;
  sub_AB54D0();
  (*(v69 + 32))(v1 + v39, v40, v70);
  v41 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__storeItemMetadata;
  v100 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26588, &qword_B3FF98);
  v42 = v71;
  sub_AB54D0();
  (*(v72 + 32))(v1 + v41, v42, v73);
  v43 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__upsellBanner;
  v100 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265A8, &qword_B3FFF8);
  v44 = v74;
  sub_AB54D0();
  (*(v75 + 32))(v1 + v43, v44, v76);
  v45 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__trailingBarButtonItem;
  v100 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265C8, &qword_B40058);
  v46 = v77;
  sub_AB54D0();
  (*(v78 + 32))(v1 + v45, v46, v79);
  v47 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__contextualPlaybackProvidingURL;
  v48 = sub_AB31C0();
  v49 = v80;
  (*(*(v48 - 8) + 56))(v80, 1, 1, v48);
  sub_15F84(v49, v81, &unk_DF2AE0, &qword_AFC930);
  v50 = v83;
  sub_AB54D0();
  sub_12E1C(v49, &unk_DF2AE0, &qword_AFC930);
  (*(v84 + 32))(v1 + v47, v50, v85);
  v51 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__isContentFavorited;
  LOBYTE(v100) = 0;
  v52 = v86;
  sub_AB54D0();
  (*(v87 + 32))(v1 + v51, v52, v88);
  v53 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__inlineBubbleTipPlacement;
  v100 = 0;
  v101 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0, &unk_AF8970);
  v54 = v89;
  sub_AB54D0();
  (*(v90 + 32))(v1 + v53, v54, v91);
  (*(v92 + 56))(v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem____lazy_storage___unmappedMusicItem, 1, 1, v94);
  v55 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__mappedMusicItem;
  v56 = sub_AB3F80();
  v57 = v93;
  (*(*(v56 - 8) + 56))(v93, 1, 1, v56);
  sub_15F84(v57, v95, &unk_E24148, &qword_B3AF78);
  v58 = v96;
  sub_AB54D0();
  sub_12E1C(v57, &unk_E24148, &qword_B3AF78);
  (*(v97 + 32))(v1 + v55, v58, v98);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS) = 0;
  v59 = (v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_mediaAPIIdentifier);
  *v59 = 0;
  v59[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_autoupdatingMappingResponse) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_mappingResponseSubscription) = 0;
  return JSObject.init(type:)(v99);
}

double sub_A0AE4C()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate);
  v1 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__subtitle;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE9C8, &unk_B09A00);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__supertitle, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__title, v2);
  v4 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__titleHeaderStyle;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26540, &qword_B3FDF0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__videoDetailArtwork;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25988, &unk_B3E330);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalBackgroundArtwork;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960, &unk_B3FEA0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalBackgroundArtworkForRegularWidth, v9);
  v10(v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalThumbnailArtwork, v9);
  v11 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalLayoutStyle;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26578, &qword_B3FF88);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__storeItemMetadata;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26598, &qword_B3FFE8);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__upsellBanner;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265B8, &qword_B40048);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__trailingBarButtonItem;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265D8, &qword_B400A8);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__contextualPlaybackProvidingURL;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E265F0, &unk_B42440);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__isContentFavorited;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40, &qword_B05A30);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__inlineBubbleTipPlacement;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8, &unk_B3F200);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  sub_12E1C(v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem____lazy_storage___unmappedMusicItem, &qword_E26610, &unk_B401B0);
  v25 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__mappedMusicItem;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26628, &qword_B40208);
  (*(*(v26 - 8) + 8))(v0 + v25, v26);

  return result;
}

id JSHeaderItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSHeaderItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A0B7F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSHeaderItem(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t PromotionalLayoutStyle.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x746C7561666564;
  }

  if (a1 == 1)
  {
    return 0x656C69666F7270;
  }

  return 0x747369747261;
}

uint64_t sub_A0B88C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C69666F7270;
  if (v2 != 1)
  {
    v5 = 0x747369747261;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x656C69666F7270;
  if (*a2 != 1)
  {
    v8 = 0x747369747261;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

Swift::Int sub_A0B984()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_A0BA24(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_A0BAB0(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_A0BB4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore22PromotionalLayoutStyleO8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_A0BB7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C69666F7270;
  if (v2 != 1)
  {
    v5 = 0x747369747261;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t GenericMusicItem.mappingContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB3F80();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = enum case for MusicLibraryMapping.ItemContent.fetchedCatalogItem<A>(_:);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26660, &qword_B40218);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t GenericMusicItem.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_AB3F80();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for GenericMusicItem.album(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.album(_:);
LABEL_43:
    v11 = *v10;
    v12 = sub_AB40E0();
    v13 = *(v12 - 8);
    (*(v13 + 104))(a1, v11, v12);
    (*(v13 + 56))(a1, 0, 1, v12);
    return (*(v5 + 8))(v8, v4);
  }

  if (v9 == enum case for GenericMusicItem.artist(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.artist(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.composer(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.composer(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.creditArtist(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.creditArtist(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.curator(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.curator(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.editorialItem(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.editorialItem(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.genre(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.genre(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.musicMovie(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.musicMovie(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.musicVideo(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.playlist(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.playlist(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.playlistFolder(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.radioShow(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.radioShow(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.recordLabel(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.recordLabel(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.socialProfile(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.socialProfile(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.song(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.song(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.station(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.station(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.tvEpisode(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.tvSeason(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.tvSeason(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.tvShow(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.tvShow(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.uploadedAudio(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.uploadedVideo(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.other(_:))
  {
    (*(v5 + 8))(v8, v4);
    v15 = sub_AB40E0();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  v16 = sub_AB40E0();
  (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_A0C180(uint64_t a1, uint64_t a2)
{
  v4 = sub_A0CED4(&qword_E26758, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);

  return MusicLibraryMappingItem<>.mappingID.getter(a1, a2, v4);
}

uint64_t sub_A0C204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 16))(a2, v2, a1);
  v4 = enum case for MusicLibraryMapping.ItemContent.fetchedCatalogItem<A>(_:);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26660, &qword_B40218);
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

unint64_t _s11MusicJSCore12JSHeaderItemC16TitleHeaderStyleO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4E490;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t _s11MusicJSCore22PromotionalLayoutStyleO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4E4F8;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t _s11MusicJSCore12JSHeaderItemC6ActionO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4F730;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

void sub_A0C554(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_A0C5A4(v1);
}

void sub_A0C5A4(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v12);

  v3 = v12[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v12[0] = a1;
  v4 = a1;
  v5 = v1;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v12);

  v6 = v12[0];
  if (!v3)
  {
    if (!v12[0])
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v12[0] || (type metadata accessor for JSVideoArtwork(), v7 = v3, v8 = sub_ABA790(), v7, v6, (v8 & 1) == 0))
  {
LABEL_7:
    v9 = &v5[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 1);
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(v5, ObjectType, v10);
      swift_unknownObjectRelease();
    }

    v7 = v3;
  }
}

void sub_A0C910(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_A0C960(v1);
}

void sub_A0C960(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v12);

  v3 = v12[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v12[0] = a1;
  v4 = a1;
  v5 = v1;
  sub_AB5520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v12);

  v6 = v12[0];
  if (!v3)
  {
    if (!v12[0])
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v12[0] || (sub_13C80(0, &unk_DF43D0, MPStoreItemMetadata_ptr), v7 = v3, v8 = sub_ABA790(), v7, v6, (v8 & 1) == 0))
  {
LABEL_7:
    v9 = &v5[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 1);
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(v5, ObjectType, v10);
      swift_unknownObjectRelease();
    }

    v7 = v3;
  }
}

uint64_t sub_A0CC28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26610, &unk_B401B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_A0CC98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E24148, &qword_B3AF78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for JSHeaderItem(uint64_t a1)
{
  result = qword_E266B0;
  if (!qword_E266B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_A0CD88()
{
  result = qword_E26668;
  if (!qword_E26668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26668);
  }

  return result;
}

unint64_t sub_A0CDE0()
{
  result = qword_E26670;
  if (!qword_E26670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26670);
  }

  return result;
}

unint64_t sub_A0CE38()
{
  result = qword_E26678;
  if (!qword_E26678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26678);
  }

  return result;
}

uint64_t sub_A0CED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_A0CF24(uint64_t a1)
{
  sub_299798(319, &qword_DFE858, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_299798(319, &qword_E266C0, &type metadata for JSHeaderItem.TitleHeaderStyle);
    if (v2 <= 0x3F)
    {
      sub_A0D480(319, &qword_E259E0, &qword_E25978, &qword_B3E2E0, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_A0D480(319, &qword_E259D8, &qword_E25950, &qword_B3FE50, &type metadata accessor for Published);
        if (v4 <= 0x3F)
        {
          sub_299798(319, &qword_E266C8, &type metadata for PromotionalLayoutStyle);
          if (v5 <= 0x3F)
          {
            sub_A0D480(319, &qword_E266D0, &qword_E26588, &qword_B3FF98, &type metadata accessor for Published);
            if (v6 <= 0x3F)
            {
              sub_A0D480(319, &qword_E266D8, &qword_E265A8, &qword_B3FFF8, &type metadata accessor for Published);
              if (v7 <= 0x3F)
              {
                sub_A0D480(319, &qword_E266E0, &qword_E265C8, &qword_B40058, &type metadata accessor for Published);
                if (v8 <= 0x3F)
                {
                  sub_A0D480(319, &qword_E266E8, &unk_DF2AE0, &qword_AFC930, &type metadata accessor for Published);
                  if (v9 <= 0x3F)
                  {
                    sub_299798(319, &qword_DFC638, &type metadata for Bool);
                    if (v10 <= 0x3F)
                    {
                      sub_A0D480(319, &qword_E26098, &unk_DEE6F0, &unk_AF8970, &type metadata accessor for Published);
                      if (v11 <= 0x3F)
                      {
                        sub_A0D480(319, &qword_E266F0, &unk_E24148, &qword_B3AF78, &type metadata accessor for Optional);
                        if (v12 <= 0x3F)
                        {
                          sub_A0D480(319, &qword_E266F8, &unk_E24148, &qword_B3AF78, &type metadata accessor for Published);
                          if (v13 <= 0x3F)
                          {
                            swift_updateClassMetadata2();
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
  }
}

void sub_A0D480(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_A0D514()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_A0D554()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_A0D594(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17BD0;

  return sub_A06410(a1, v4, v5, v6);
}

char *JSCreditsItem.__allocating_init(titleText:subtitleText:artwork:audioTrait:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v29 = 3;
  v12 = objc_allocWithZone(type metadata accessor for JSCreditsItem(0));
  v13 = &v12[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_titleText];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v12[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_subtitleText];
  *v14 = 0;
  v14[1] = 0;
  v12[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_hasChevron] = 0;
  v15 = &v12[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_audioTrait];
  *v15 = 0;
  v15[1] = 0;
  *&v12[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet] = 0;
  v12[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_isUpdatingFromJS] = 0;
  v16 = JSMediaItem.init(type:)(v27);
  v17 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_backgroundArtwork;
  swift_beginAccess();
  v18 = *(v16 + v17);
  *(v16 + v17) = a5;
  v19 = v16;

  v20 = (v19 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_titleText);
  swift_beginAccess();
  *v20 = a1;
  v20[1] = a2;
  v21 = v19;

  v22 = v21 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_subtitleText;
  swift_beginAccess();
  *v22 = a3;
  *(v22 + 1) = a4;

  v23 = v21 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_audioTrait;
  swift_beginAccess();
  *v23 = a6;
  *(v23 + 1) = a7;

  return v21;
}

uint64_t JSCreditsItem.hasChevron.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_hasChevron;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_A0D884(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *JSCreditsItem.artistIdentifierSet.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSCreditsItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_isUpdatingFromJS;
  v8 = *(v3 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_isUpdatingFromJS);
  *(v3 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_isUpdatingFromJS) = 1;
  v19[0] = a1;
  v19[1] = a2;
  sub_F46A0(a3, v20);
  if (v20[3])
  {
    sub_F46A0(v20, v18);

    if (swift_dynamicCast())
    {
      v10 = v16;
      v9 = v17;
      if (a1 == 0x786554656C746974 && a2 == 0xE900000000000074 || (sub_ABB3C0() & 1) != 0)
      {
        v11 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_titleText;
LABEL_24:
        v13 = (v3 + v11);
        swift_beginAccess();
        *v13 = v10;
        v13[1] = v9;

        goto LABEL_25;
      }

      if (a1 == 0x656C746974627573 && a2 == 0xEC00000074786554 || (sub_ABB3C0() & 1) != 0)
      {
        v11 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_subtitleText;
        goto LABEL_24;
      }
    }

    if (swift_dynamicCast() && (a1 == 0x7276656843736168 && a2 == 0xEA00000000006E6FLL || (sub_ABB3C0() & 1) != 0))
    {
      v12 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_hasChevron;
      swift_beginAccess();
      *(v3 + v12) = v16;
LABEL_25:
      __swift_destroy_boxed_opaque_existential_0(v18);
      sub_12E1C(v20, &unk_DE8E40, &unk_AF8050);

      goto LABEL_26;
    }

    if (swift_dynamicCast())
    {
      v10 = v16;
      v9 = v17;
      if (a1 == 0x6172546F69647561 && a2 == 0xEA00000000007469 || (sub_ABB3C0() & 1) != 0)
      {
        v11 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_audioTrait;
        goto LABEL_24;
      }
    }

    type metadata accessor for JSIdentifierSet();
    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000013 && 0x8000000000B812E0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v14 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet;
        swift_beginAccess();
        v15 = *(v3 + v14);
        *(v3 + v14) = v16;

        goto LABEL_25;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
  }

  JSMediaItem.updateProperty(_:value:)(a1, a2, a3);
  sub_12E1C(v19, &unk_E27200, &unk_B3BB90);
LABEL_26:
  *(v3 + v7) = v8;
}

uint64_t *JSCreditsItem.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_titleText];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_subtitleText];
  *v5 = 0;
  v5[1] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_hasChevron] = 0;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_audioTrait];
  *v6 = 0;
  v6[1] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_isUpdatingFromJS] = 0;
  return JSMediaItem.init(type:)(a1);
}

uint64_t type metadata accessor for JSCreditsItem(uint64_t a1)
{
  result = qword_E267A0;
  if (!qword_E267A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *JSCreditsItem.init(type:)(uint64_t *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_titleText);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_subtitleText);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_hasChevron) = 0;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_audioTrait);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_isUpdatingFromJS) = 0;
  return JSMediaItem.init(type:)(a1);
}

void sub_A0DDEC()
{

  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet);
}

id JSCreditsItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSCreditsItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_A0DEE8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_hasChevron;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_A0DF40(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_hasChevron;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id sub_A0DFC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void *JSPushSegue.componentController.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_componentController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t JSPushSegue.hasInvokedDidLoadPreemptively.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_hasInvokedDidLoadPreemptively;
  swift_beginAccess();
  return *(v0 + v1);
}

double JSPushSegue.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*JSPushSegue.delegate.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_425B94;
}

void JSPushSegue.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a1;
  v20[1] = a2;
  sub_F46A0(a3, v21);
  if (v21[3])
  {
    sub_F46A0(v21, v19);
    type metadata accessor for JSComponentController(0);

    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000013 && 0x8000000000B4B0F0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_componentController;
        swift_beginAccess();
        v8 = *(v3 + v7);
        *(v3 + v7) = v18;
        v9 = v18;

        v10 = v3 + OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v10 + 8);
          ObjectType = swift_getObjectType();
          v13 = *(v3 + v7);
          v14 = *(v11 + 8);
          v15 = v13;
          v14(v3, v13, ObjectType, v11);
          swift_unknownObjectRelease();
        }

        goto LABEL_16;
      }
    }

    if (swift_dynamicCast() && (a1 == 0xD00000000000001DLL && 0x8000000000B4B260 == a2 || (sub_ABB3C0() & 1) != 0))
    {
      v16 = OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_hasInvokedDidLoadPreemptively;
      swift_beginAccess();
      *(v3 + v16) = v17;
LABEL_16:
      __swift_destroy_boxed_opaque_existential_0(v19);
      sub_12E1C(v21, &unk_DE8E40, &unk_AF8050);

      return;
    }

    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
  }

  JSSegue.updateProperty(_:value:)(a1, a2, a3);
  sub_12E1C(v20, &unk_E27200, &unk_B3BB90);
}

uint64_t *JSPushSegue.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_componentController] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_hasInvokedDidLoadPreemptively] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t *JSPushSegue.init(type:)(uint64_t *a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_componentController) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_hasInvokedDidLoadPreemptively) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent) = 0;

  return JSObject.init(type:)(a1);
}

uint64_t sub_A0E67C()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_delegate;

  return sub_176DC(v1);
}

double sub_A0E72C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore18JSSettingsItemText_text);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t JSSettingsItemText.text.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore18JSSettingsItemText_text);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSSettingsItemText.description.getter()
{
  v1 = v0;
  v12._countAndFlagsBits = 60;
  v12._object = 0xE100000000000000;
  sub_AB94A0(v12);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_AB92A0();
  v6 = v5;

  v13._countAndFlagsBits = v4;
  v13._object = v6;
  sub_AB94A0(v13);

  v14._countAndFlagsBits = 8250;
  v14._object = 0xE200000000000000;
  sub_AB94A0(v14);
  sub_ABAF70();
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore18JSSettingsItemText_text);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {

    v15._countAndFlagsBits = v9;
    v15._object = v8;
    sub_AB94A0(v15);

    v16._countAndFlagsBits = 34;
    v16._object = 0xE100000000000000;
    sub_AB94A0(v16);
    v17._countAndFlagsBits = 0x3D2074786574203BLL;
    v17._object = 0xEA00000000002220;
    sub_AB94A0(v17);
  }

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  sub_AB94A0(v18);
  return 0;
}

void JSSettingsItemText.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v10[1] = a2;
  sub_F46A0(a3, v11);
  if (v11[3])
  {
    sub_F46A0(v11, v9);

    if (swift_dynamicCast())
    {
      if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = (v3 + OBJC_IVAR____TtC11MusicJSCore18JSSettingsItemText_text);
        swift_beginAccess();
        *v6 = v7;
        v6[1] = v8;

        __swift_destroy_boxed_opaque_existential_0(v9);
        sub_12E1C(v11, &unk_DE8E40, &unk_AF8050);

        return;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
  }

  sub_12E1C(v10, &unk_E27200, &unk_B3BB90);
}

uint64_t *JSSettingsItemText.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore18JSSettingsItemText_text];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  return JSObject.init(type:)(a1);
}

uint64_t *JSSettingsItemText.init(type:)(uint64_t *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore18JSSettingsItemText_text);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  return JSObject.init(type:)(a1);
}

id JSSettingsItemText.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSSettingsItemText();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_A0EC38@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11MusicJSCore18JSSettingsItemText_text);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

MusicJSCore::JSSearchLandingItem::DisplayStyleType_optional __swiftcall JSSearchLandingItem.DisplayStyleType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_D4D298;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSSearchLandingItem_DisplayStyleType_prominent;
  }

  else
  {
    v4.value = MusicJSCore_JSSearchLandingItem_DisplayStyleType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSSearchLandingItem.DisplayStyleType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E656E696D6F7270;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_A0ED24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E656E696D6F7270;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000074;
  }

  if (*a2)
  {
    v5 = 0x6E656E696D6F7270;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*a2)
  {
    v6 = 0xE900000000000074;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_A0EDD0()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_A0EE58(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_A0EECC(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_A0EF50(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D4D298;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_A0EFB0(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x6E656E696D6F7270;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000074;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t JSSearchLandingItem.titleText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_titleText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSSearchLandingItem.displayStyle.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_displayStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSSearchLandingItem.isFeatured.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_isFeatured;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSSearchLandingItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a1;
  v14[1] = a2;
  sub_F46A0(a3, v15);
  if (v15[3])
  {
    sub_F46A0(v15, v13);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = (v3 + OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_titleText);
        swift_beginAccess();
        *v7 = v12;

LABEL_19:
        __swift_destroy_boxed_opaque_existential_0(v13);
        sub_12E1C(v15, &unk_DE8E40, &unk_AF8050);

        return;
      }

      if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_ABB3C0() & 1) != 0)
      {
        v8._rawValue = &off_D4D298;
        v9 = sub_ABB140(v8, v12);

        if (v9 <= 1)
        {
          v10 = OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_displayStyle;
          swift_beginAccess();
          *(v3 + v10) = v9;
        }

        goto LABEL_19;
      }
    }

    if (swift_dynamicCast() && (a1 == 0x7275746165467369 && a2 == 0xEA00000000006465 || (sub_ABB3C0() & 1) != 0))
    {
      v11 = OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_isFeatured;
      swift_beginAccess();
      *(v3 + v11) = v12._countAndFlagsBits;
      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
  }

  JSMediaItem.updateProperty(_:value:)(a1, a2, a3);
  sub_12E1C(v14, &unk_E27200, &unk_B3BB90);
}

uint64_t *JSSearchLandingItem.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_titleText];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_displayStyle] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_isFeatured] = 0;
  return JSMediaItem.init(type:)(a1);
}

uint64_t *JSSearchLandingItem.init(type:)(uint64_t *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_titleText);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_displayStyle) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_isFeatured) = 0;
  return JSMediaItem.init(type:)(a1);
}

unint64_t sub_A0F410()
{
  result = qword_E26820;
  if (!qword_E26820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26820);
  }

  return result;
}

uint64_t type metadata accessor for JSSearchLandingItem(uint64_t a1)
{
  result = qword_E26850;
  if (!qword_E26850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A0F52C()
{
  sub_A0F6D8();
  v0 = static ICStoreRequestContext.storeFlow.getter();
  v1 = [objc_allocWithZone(ICAMSBagAdapter) initWithRequestContext:v0];

  v2 = [objc_allocWithZone(AMSSharedStoreReview) initWithBag:v1];
  static JSAppReviewSegue.storeReview = v2;
}

uint64_t *JSAppReviewSegue.storeReview.unsafeMutableAddressor()
{
  if (qword_E23FD8 != -1)
  {
    swift_once();
  }

  return &static JSAppReviewSegue.storeReview;
}

id static JSAppReviewSegue.storeReview.getter()
{
  if (qword_E23FD8 != -1)
  {
    swift_once();
  }

  v1 = static JSAppReviewSegue.storeReview;

  return v1;
}

uint64_t *JSAppReviewSegue.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent] = 0;
  return JSObject.init(type:)(a1);
}

unint64_t sub_A0F6D8()
{
  result = qword_DEE560;
  if (!qword_DEE560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DEE560);
  }

  return result;
}

MusicJSCore::JSMenu::SelectionStyle_optional __swiftcall JSMenu.SelectionStyle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_D4E440;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSMenu_SelectionStyle_checkmark;
  }

  else
  {
    v4.value = MusicJSCore_JSMenu_SelectionStyle_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSMenu.SelectionStyle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x72616D6B63656863;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_A0F7AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72616D6B63656863;
  }

  else
  {
    v3 = 1701736302;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE90000000000006BLL;
  }

  if (*a2)
  {
    v5 = 0x72616D6B63656863;
  }

  else
  {
    v5 = 1701736302;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006BLL;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_A0F850()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_A0F8D0(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_A0F93C(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_A0F9B8(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D4E440;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_A0FA18(uint64_t *a1@<X8>)
{
  v2 = 1701736302;
  if (*v1)
  {
    v2 = 0x72616D6B63656863;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006BLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

NSString sub_A0FA54()
{
  result = sub_AB9260();
  static JSMenu.sectionsDidChangeNotification = result;
  return result;
}

uint64_t *JSMenu.sectionsDidChangeNotification.unsafeMutableAddressor()
{
  if (qword_E23FE0 != -1)
  {
    swift_once();
  }

  return &static JSMenu.sectionsDidChangeNotification;
}

id static JSMenu.sectionsDidChangeNotification.getter()
{
  if (qword_E23FE0 != -1)
  {
    swift_once();
  }

  v1 = static JSMenu.sectionsDidChangeNotification;

  return v1;
}

uint64_t JSMenu.sections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_A0FBFC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

uint64_t sub_A0FC80(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t JSMenu.sections.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_AB5520();
}

void (*JSMenu.sections.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6A82CC;
}

double JSMenu.$sections.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26890, &qword_B40870);
  sub_AB54E0();
  swift_endAccess();
  return result;
}

uint64_t JSMenu.$sections.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26898, &qword_B40878);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26890, &qword_B40870);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSMenu.$sections.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26898, &qword_B40878);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore6JSMenu__sections;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26890, &qword_B40870);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD158;
}

void *JSMenu.preselectedItem.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSMenu.preselectedItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t JSMenu.selectionStyle.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_selectionStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSMenu.selectionStyle.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_selectionStyle;
  swift_beginAccess();
  *(v1 + v3) = a1 & 1;
}

void JSMenu.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a1;
  v23[1] = a2;
  sub_F46A0(a3, v24);
  if (v25)
  {
    sub_F46A0(v24, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24680, &qword_B3BB30);
    if (swift_dynamicCast())
    {
      countAndFlagsBits = v21._countAndFlagsBits;
      if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v8 = sub_AB5500();
        *v9 = _swiftEmptyArrayStorage;

        v8(v20, 0);

        swift_getKeyPath();
        swift_getKeyPath();
        v10 = v3;
        v11 = sub_AB5500();
        sub_9A152C(countAndFlagsBits, v12);
        v11(v20, 0);

        v13 = [objc_opt_self() defaultCenter];
        if (qword_E23FE0 != -1)
        {
          swift_once();
        }

        [v13 postNotificationName:static JSMenu.sectionsDidChangeNotification object:v10];

LABEL_9:
        __swift_destroy_boxed_opaque_existential_0(v22);
LABEL_22:
        sub_12E1C(v24, &unk_DE8E40, &unk_AF8050);

        return;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
  }

  if (a1 == 0x63656C6573657270 && a2 == 0xEF6D657449646574 || (sub_ABB3C0() & 1) != 0)
  {
    sub_F46A0(a3, v22);
    if (v22[3])
    {
      type metadata accessor for JSMenuItem();
      if (swift_dynamicCast())
      {
        v14 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem;
        swift_beginAccess();
        v15 = *(v3 + v14);
        *(v3 + v14) = v20[0];
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      sub_12E1C(v22, &unk_DE8E40, &unk_AF8050);
    }

    v16 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem;
    swift_beginAccess();
    v15 = *(v3 + v16);
    *(v3 + v16) = 0;
    goto LABEL_21;
  }

  if (v25)
  {
    sub_F46A0(v24, v22);
    if (swift_dynamicCast())
    {
      if (a1 == 0x6F697463656C6573 && a2 == 0xEE00656C7974536ELL || (sub_ABB3C0() & 1) != 0)
      {
        v17._rawValue = &off_D4E440;
        v18 = sub_ABB140(v17, v21);

        if (v18 <= 1)
        {
          v19 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_selectionStyle;
          swift_beginAccess();
          *(v3 + v19) = v18;
        }

        goto LABEL_9;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  sub_12E1C(v23, &unk_E27200, &unk_B3BB90);
}

uint64_t *JSMenu.init(type:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26890, &qword_B40870);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC11MusicJSCore6JSMenu__sections;
  v11[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24680, &qword_B3BB30);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore6JSMenu_selectionStyle) = 0;
  v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v9 = 0;
  v9[1] = 0;
  return JSObject.init(type:)(a1);
}

void sub_A1095C()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore6JSMenu__sections;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26890, &qword_B40870);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem);
}

unint64_t sub_A109E4()
{
  result = qword_E268A0;
  if (!qword_E268A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E268A0);
  }

  return result;
}

uint64_t type metadata accessor for JSMenu(uint64_t a1)
{
  result = qword_E268D0;
  if (!qword_E268D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A10B14(uint64_t a1)
{
  sub_A10BB8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_A10BB8(uint64_t a1)
{
  if (!qword_E268E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E24680, &qword_B3BB30);
    v1 = sub_AB5540();
    if (!v2)
    {
      atomic_store(v1, &qword_E268E0);
    }
  }
}

uint64_t JSValueTransformerOptions.propertyName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_propertyName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSValueTransformerOptions.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_rawValue;
  swift_beginAccess();
  return sub_F46A0(v1 + v3, a1);
}

void JSValueTransformerOptions.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_F46A0(a3, v14);
  if (v14[3])
  {
    sub_F46A0(v14, v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26900, &qword_B409B0);
    if (swift_dynamicCast())
    {
      if (a1 == 0x726F66736E617274 && a2 == 0xEB0000000072656DLL || (sub_ABB3C0() & 1) != 0)
      {
        v7 = v3 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_transformer;
        swift_beginAccess();
        *(v7 + 8) = v11;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
LABEL_14:
        __swift_destroy_boxed_opaque_existential_0(v12);
        goto LABEL_21;
      }

      swift_unknownObjectRelease();
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0x79747265706F7270 && a2 == 0xEC000000656D614ELL || (sub_ABB3C0() & 1) != 0)
      {
        v8 = (v3 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_propertyName);
        swift_beginAccess();
        *v8 = v10;
        v8[1] = v11;

        goto LABEL_14;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
  }

  if ((a1 != 0x65756C6156776172 || a2 != 0xE800000000000000) && (sub_ABB3C0() & 1) == 0)
  {
    sub_12E1C(v13, &unk_E27200, &unk_B3BB90);
    return;
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_rawValue;
  swift_beginAccess();
  sub_A10FC4(a3, v3 + v9);
  swift_endAccess();
LABEL_21:
  sub_12E1C(v14, &unk_DE8E40, &unk_AF8050);
}

uint64_t sub_A10FC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E40, &unk_AF8050);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t *JSValueTransformerOptions.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_transformer + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_propertyName];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_rawValue];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  return JSObject.init(type:)(a1);
}

uint64_t *JSValueTransformerOptions.init(type:)(uint64_t *a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_transformer + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_propertyName);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_rawValue);
  *v4 = 0u;
  v4[1] = 0u;

  return JSObject.init(type:)(a1);
}

uint64_t sub_A11114()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_transformer);

  return sub_12E1C(v0 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_rawValue, &unk_DE8E40, &unk_AF8050);
}

uint64_t sub_A111F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_transformer;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_A11250(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_transformer;
  swift_beginAccess();
  *(v3 + 8) = v2;
  swift_unknownObjectWeakAssign();
  return result;
}

unint64_t JSGridSection.UniformCellType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6D75626C61;
  v2 = 0xD000000000000011;
  if (a1 != 5)
  {
    v2 = 1869768040;
  }

  v3 = 0x776F68537674;
  if (a1 != 3)
  {
    v3 = 0x65736163776F6873;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x747369747261;
  if (a1 != 1)
  {
    v4 = 0x6F526D6F74737563;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

double sub_A113CC(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

unint64_t sub_A114E0@<X0>(Swift::String *a1@<X0>, MusicJSCore::JSGridSection::UniformCellType_optional *a2@<X8>)
{
  result = _s11MusicJSCore13JSGridSectionC15UniformCellTypeO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_A11510(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6D75626C61;
  v5 = 0x8000000000B4E1D0;
  v6 = 0xD000000000000011;
  if (v2 != 5)
  {
    v6 = 1869768040;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x776F68537674;
  if (v2 != 3)
  {
    v8 = 0x65736163776F6873;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x747369747261;
  if (v2 != 1)
  {
    v10 = 0x6F526D6F74737563;
    v9 = 0xEF6D75626C416D6FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

double JSGridSection.items.getter()
{
  swift_beginAccess();

  return result;
}

void sub_A11634(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_items;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = sub_ABB060();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_360C78(v7, v4, v6);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = &v8[OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate];
      swift_beginAccess();
      *(v10 + 1) = &protocol witness table for JSGridSection;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }

    while (v5 != v7);
  }
}

uint64_t JSGridSection.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSGridSection.isRankedList.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_isRankedList;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSGridSection.uniformCellType.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSGridSection.description.getter()
{
  v1 = v0;
  v12._countAndFlagsBits = 60;
  v12._object = 0xE100000000000000;
  sub_AB94A0(v12);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_AB92A0();
  v6 = v5;

  v13._countAndFlagsBits = v4;
  v13._object = v6;
  sub_AB94A0(v13);

  v14._countAndFlagsBits = 8250;
  v14._object = 0xE200000000000000;
  sub_AB94A0(v14);
  sub_ABAF70();
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {

    v15._countAndFlagsBits = v9;
    v15._object = v8;
    sub_AB94A0(v15);

    v16._countAndFlagsBits = 34;
    v16._object = 0xE100000000000000;
    sub_AB94A0(v16);
    v17._countAndFlagsBits = 0x20656C746974203BLL;
    v17._object = 0xEB0000000022203DLL;
    sub_AB94A0(v17);
  }

  v18._countAndFlagsBits = 62;
  v18._object = 0xE100000000000000;
  sub_AB94A0(v18);
  return 0;
}

Swift::Void __swiftcall JSGridSection.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  v3 = _._countAndFlagsBits == 0x7449646E65707061 && _._object == 0xEB00000000736D65;
  if (v3 || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_808B0(arguments._rawValue + 32, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24670, &qword_B409F0);
      if (swift_dynamicCast())
      {
        sub_A11B28(v4);
      }
    }
  }
}

void sub_A11B28(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_items;
  swift_beginAccess();

  sub_9A14B4(v3, v4);
  swift_endAccess();
  v5 = *(v1 + v2);
  if (v5 >> 62)
  {
    v6 = sub_ABB060();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {

    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_360C78(v8, v5, v7);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = &v9[OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate];
      swift_beginAccess();
      *(v11 + 1) = &protocol witness table for JSGridSection;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }

    while (v6 != v8);
  }
}

void JSGridSection.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a1;
  v17[1] = a2;
  sub_F46A0(a3, &v18);
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
  {
    v16[0] = v18;
    v16[1] = v19;
    sub_F46A0(v16, v13);
    if (v13[3])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24670, &qword_B409F0);
      if (swift_dynamicCast())
      {
        sub_A11634(v14);
      }
    }

    else
    {

      sub_12E1C(v13, &unk_DE8E40, &unk_AF8050);
    }

    v6 = v16;
    goto LABEL_9;
  }

  if (!*(&v19 + 1))
  {

    goto LABEL_33;
  }

  sub_F46A0(&v18, v16);

  if (!swift_dynamicCast())
  {
LABEL_19:
    if (swift_dynamicCast() && (a1 == 0x64656B6E61527369 && a2 == 0xEC0000007473694CLL || (sub_ABB3C0() & 1) != 0))
    {
      v9 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_isRankedList;
      swift_beginAccess();
      *(v3 + v9) = v14;
      goto LABEL_30;
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0x436D726F66696E75 && a2 == 0xEF657079546C6C65 || (sub_ABB3C0() & 1) != 0)
      {
        v10 = _s11MusicJSCore13JSGridSectionC15UniformCellTypeO8rawValueAESgSS_tcfC_0(v14, v15);
        if (v10 != 7)
        {
          v11 = v10;
          v12 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType;
          swift_beginAccess();
          *(v3 + v12) = v11;
        }

        goto LABEL_30;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v16);
LABEL_33:
    sub_12E1C(v17, &unk_E27200, &unk_B3BB90);
    return;
  }

  v7 = v15;
  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (sub_ABB3C0() & 1) == 0)
  {

    goto LABEL_19;
  }

  v8 = (v3 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title);
  swift_beginAccess();
  *v8 = v14;
  v8[1] = v7;

LABEL_30:
  __swift_destroy_boxed_opaque_existential_0(v16);
  v6 = &v18;
LABEL_9:
  sub_12E1C(v6, &unk_DE8E40, &unk_AF8050);
}

double JSGridSection.gridItemAccessorySocialProfilesDidChange(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *JSGridSection.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore13JSGridSection_items] = _swiftEmptyArrayStorage;
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC11MusicJSCore13JSGridSection_isRankedList] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType] = 7;
  *&v3[OBJC_IVAR____TtC11MusicJSCore13JSGridSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  return JSObject.init(type:)(a1);
}

uint64_t *JSGridSection.init(type:)(uint64_t *a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_items) = _swiftEmptyArrayStorage;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_isRankedList) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType) = 7;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();

  return JSObject.init(type:)(a1);
}

uint64_t sub_A121C8()
{

  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_delegate;

  return sub_176DC(v1);
}

unint64_t _s11MusicJSCore13JSGridSectionC15UniformCellTypeO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4E5C8;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_A12314()
{
  result = qword_E26958;
  if (!qword_E26958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26958);
  }

  return result;
}

double sub_A12368@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t *JSApplication.__allocating_init(isDeployedScript:selectedTabIdentifier:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a1;
  v7 = objc_allocWithZone(v3);
  return JSApplication.init(isDeployedScript:selectedTabIdentifier:)(v6, a2, a3);
}

double JSApplication.didFinishLaunching(with:applicationScriptURL:)(char a1)
{
  v2 = v1;
  v4 = sub_97420(_swiftEmptyArrayStorage);
  v5 = 0x72616C75676572;
  if (a1)
  {
    v5 = 0x4C52556E65706FLL;
  }

  v18 = &type metadata for String;
  *&v17 = v5;
  *(&v17 + 1) = 0xE700000000000000;
  sub_9ACFC(&v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_9330C(v16, 0xD000000000000010, 0x8000000000B814F0, isUniquelyReferenced_nonNull_native);
  v7 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
  v18 = &type metadata for String;
  *&v17 = v7;
  *(&v17 + 1) = v8;
  sub_9ACFC(&v17, v16);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_9330C(v16, 0xD000000000000014, 0x8000000000B81510, v9);
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v10 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF4EC0;
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
  *(v11 + 32) = v4;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = _swiftEmptyArrayStorage;
  *(v12 + 32) = 0x68636E75614C6E6FLL;
  *(v12 + 40) = 0xE800000000000000;
  *(v12 + 48) = v2;
  *(v12 + 56) = v10;
  *(v12 + 64) = 0;
  v13 = v2;
  v14 = v10;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BE1A0, v12);

  return result;
}
uint64_t sub_100CED1E4(float a1)
{
  *(v2 + 40) = v1;
  *(v2 + 36) = a1;
  *(v2 + 48) = type metadata accessor for MainActor();
  *(v2 + 56) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 64) = v4;
  *(v2 + 72) = v3;

  return _swift_task_switch(sub_100CED284, v4, v3);
}

uint64_t sub_100CED284(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 36);
  v4 = *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 48) * v3;
  v5 = *(v2 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration + 56) * v3;
  v6 = static MainActor.shared.getter();
  *(v1 + 80) = v6;
  v7 = swift_task_alloc();
  *(v1 + 88) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  v8 = swift_task_alloc();
  *(v1 + 96) = v8;
  v9 = sub_1005B981C(qword_101A0BFA0, &unk_101481F90);
  *v8 = v1;
  v8[1] = sub_100CED3C8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 16, v6, &protocol witness table for MainActor, 0xD000000000000011, 0x800000010156F580, sub_100CF0314, v7, v9);
}

uint64_t sub_100CED3C8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_100CED558;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_100CED4EC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100CED4EC()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_100CED558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CED5D0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (qword_1019F1AB0 != -1)
  {
    v8 = a4;
    v9 = a3;
    swift_once();
    a3 = v9;
    a4 = v8;
  }

  result = sub_1009FC4E8(a2, a1, a3, a4);
  if ((result & 1) == 0)
  {
    sub_10086E6A0();
    swift_allocError();
    *v7 = 0xD000000000000018;
    *(v7 + 8) = 0x800000010159A790;
    *(v7 + 16) = 5;
    sub_1005B981C(&qword_101A1B3C0, &qword_1014859E0);
    return CheckedContinuation.resume(throwing:)();
  }

  return result;
}

uint64_t sub_100CED6CC@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_weakLoadStrong();
  v45 = a1;
  if (Strong && (v4 = *(Strong + 32), v5 = v4, , v4))
  {
    v44 = v5[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10MetalLayer_hasDrawnFrame];
  }

  else
  {
    v44 = 1;
  }

  v42 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_modelBounds + 16);
  v43 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_modelBounds);
  v6 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v7 = *(v1 + v6);
  sub_1005B981C(&unk_101A1B3B0, &unk_10149E990);
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  v10 = v7 + 64;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  v46 = v8 + 64;
  v51 = v7;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v19 = v16 | (v15 << 6);
      v20 = (*(v51 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      if (*(*(v51 + 56) + 16 * v19 + 8))
      {
        v50 = *v20;

        v49 = dispatch thunk of AnimationPlaybackController.isPaused.getter();
        v48 = dispatch thunk of AnimationPlaybackController.isComplete.getter();
        v47 = AnimationPlaybackController.isPlaying.getter();
        v23 = AnimationPlaybackController.isStopped.getter();
        AnimationPlaybackController.speed.getter();
        v25 = v24;

        v22 = v50;

        v26 = 256;
        if ((v48 & 1) == 0)
        {
          v26 = 0;
        }

        v27 = v26 & 0xFFFFFFFFFFFFFFFELL | v49 & 1;
        v28 = 0x10000;
        if ((v47 & 1) == 0)
        {
          v28 = 0;
        }

        v29 = 0x1000000;
        if ((v23 & 1) == 0)
        {
          v29 = 0;
        }

        v30 = v27 | v28 | v29 | (v25 << 32);
      }

      else
      {

        v30 = 2;
      }

      *(v46 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v31 = (v9[6] + 16 * v19);
      *v31 = v22;
      v31[1] = v21;
      *(v9[7] + 8 * v19) = v30;
      v32 = v9[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      v9[2] = v34;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

LABEL_31:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_9:
    v17 = v15;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v15 >= v14)
      {
        break;
      }

      v18 = *(v10 + 8 * v15);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    sub_100CEBA58(v35);
    v37 = v36;

    if (*(v37 + 16))
    {
      sub_1005B981C(&qword_101A0F110, &unk_1014ABFD0);
      v38 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v38 = _swiftEmptyDictionarySingleton;
    }

    v52 = v38;

    sub_100CEEE80(v39, 1, &v52);

    v41 = v52;
    *v45 = v43;
    *(v45 + 16) = v42;
    *(v45 + 32) = v9;
    *(v45 + 40) = v44;
    *(v45 + 48) = v41;
  }

  return result;
}

uint64_t sub_100CEDA50()
{
  v1[9] = v0;
  v1[10] = type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v3;
  v1[13] = v2;

  return _swift_task_switch(sub_100CEDAEC, v3, v2);
}

uint64_t sub_100CEDAEC()
{
  v1 = *(v0 + 72);
  sub_100CED6CC(v0 + 16);
  v2 = v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_sceneDescription;
  v4 = *(v0 + 32);
  v3 = *(v0 + 48);
  v5 = *(v0 + 64);
  *v2 = *(v0 + 16);
  *(v2 + 16) = v4;
  *(v2 + 48) = v5;
  *(v2 + 32) = v3;

  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    *(v0 + 120) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 128) = v8;
    *(v0 + 136) = v7;

    return _swift_task_switch(sub_100CEDC04, v8, v7);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100CEDC04()
{
  v1 = v0[14];
  v2 = v1[6];
  v0[18] = v2;
  v0[19] = v1[7];
  v0[20] = v1[8];
  v3 = v1[9];
  v0[21] = v3;
  v0[22] = v1[10];
  v0[23] = v1[11];
  v0[24] = v1[12];
  v0[25] = v1[13];
  v0[26] = v1[14];
  v0[27] = v1[15];
  v0[28] = v1[16];
  if (v3 >> 62 == 1 && v0[9] == v2)
  {

    v6 = swift_task_alloc();
    v0[29] = v6;
    *v6 = v0;
    v6[1] = sub_100CEDD54;

    return sub_100868BA4();
  }

  else
  {

    v4 = v0[12];
    v5 = v0[13];

    return _swift_task_switch(sub_1007102F8, v4, v5);
  }
}

uint64_t sub_100CEDD54()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_100CEDE74, v3, v2);
}

uint64_t sub_100CEDE74()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];

  sub_10086E484(v4, v3, v2, v1);

  v5 = v0[12];
  v6 = v0[13];

  return _swift_task_switch(sub_1007102F8, v5, v6);
}

uint64_t sub_100CEDF50()
{
  v1 = *(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration);
  BoundingBox.boundingRadius.getter();
  v3 = v2;
  v4 = ((v1 * 0.5) * 3.1416) / 180.0;
  if (v1 <= 0.0)
  {
    v4 = 0.0087266;
  }

  v5 = v3 / sinf(v4);
  sub_1005B981C(&qword_101A11B98, &unk_1014ABFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  sub_100CEF5FC(inited);
  swift_setDeallocating();
  type metadata accessor for AnchorEntity();
  HasTransform.position.setter();
  type metadata accessor for PerspectiveCamera();
  v7 = HasPerspectiveCamera.camera.modify();
  PerspectiveCameraComponent.fieldOfViewInDegrees.setter();
  v7(v9, 0);
  HasTransform.orientation.setter();
  sub_100CEF5FC(&off_101874CF8);
  return HasTransform.position.setter();
}

void sub_100CEE0F4()
{
  v1 = type metadata accessor for ImageBasedLightComponent.Source();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1005B981C(&unk_101A1B3A0, &qword_1014ABFB8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v15[-v7];
  v9 = *(v0 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_lighting);
  v10 = (v2 + 104);
  if (v9)
  {
    *v4 = v9;
    (*v10)(v4, enum case for ImageBasedLightComponent.Source.single(_:), v1, v6);
    swift_retain_n();
    ImageBasedLightComponent.init(source:intensityExponent:)();
    v11 = type metadata accessor for ImageBasedLightComponent();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    v12 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v12(v15, 0);
  }

  else
  {
    type metadata accessor for EnvironmentResource();
    *v4 = static EnvironmentResource.defaultObject()();
    (*v10)(v4, enum case for ImageBasedLightComponent.Source.single(_:), v1);
    ImageBasedLightComponent.init(source:intensityExponent:global:)();
    v13 = type metadata accessor for ImageBasedLightComponent();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    v14 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v14(v15, 0);
  }
}

void sub_100CEE3D0()
{
  v1 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_10:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(v2 + 56) + ((v7 << 10) | (16 * v9)) + 8))
    {

      if (AnimationPlaybackController.isValid.getter())
      {
        v10 = AnimationPlaybackController.isPlaying.getter();

        if (v10)
        {
LABEL_13:

          return;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_13;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_100CEE500()
{
  Hasher.init()();
  v1 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_animations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_11:
    v9 = (*(v2 + 56) + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
    v10 = *v9;
    v11 = v9[1];

    String.hash(into:)();

    Hasher._combine(_:)(v10);
    if (v11)
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v11);
      v12 = AnimationPlaybackController.isValid.getter();
      Hasher._combine(_:)(v12 & 1);
      v13 = AnimationPlaybackController.isPlaying.getter();
      Hasher._combine(_:)(v13 & 1);
      v14 = dispatch thunk of AnimationPlaybackController.isPaused.getter();
      Hasher._combine(_:)(v14 & 1);
      v15 = AnimationPlaybackController.isStopped.getter();
      Hasher._combine(_:)(v15 & 1);
      AnimationPlaybackController.speed.getter();
      if (v16 == 0.0)
      {
        v16 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v16));
      AnimationPlaybackController.time.getter();
      if (v17 == 0.0)
      {
        v17 = 0.0;
      }

      Hasher._combine(_:)(*&v17);
      AnimationPlaybackController.blendFactor.getter();
      if (v18 == 0.0)
      {
        v18 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v18));
      AnimationPlaybackController.duration.getter();
      if (v19 == 0.0)
      {
        v19 = 0.0;
      }

      Hasher._combine(_:)(*&v19);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      Hasher.finalize()();
      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Int sub_100CEE774()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100CEE7E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100CEE83C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101876AD8, *a1);

  *a2 = v3 != 0;
  return result;
}

double sub_100CEE8B0(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_metadata);
  *(v1 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_metadata) = a1;

  v8 = sub_100B34A48(v7, v6);

  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    type metadata accessor for MainActor();

    v11 = v1;
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    sub_10064191C(0, 0, v5, &unk_1014ABFB0, v13);
  }

  return result;
}

uint64_t sub_100CEEA1C()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100CEEB44()
{
  sub_100CEEA1C();

  return swift_deallocClassInstance();
}

uint64_t _s11ClientSceneCMa(uint64_t a1)
{
  result = qword_101A1B110;
  if (!qword_101A1B110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100CEEBF0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100CEED0C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_100CEED20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 12))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100CEED7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100CEEDE4()
{
  result = qword_101A1B360;
  if (!qword_101A1B360)
  {
    result = swift_getWitnessTable(byte_1014ABEF0, &_s11ClientSceneC11MetadataKeyON, v0, v1);
    atomic_store(result, &qword_101A1B360);
  }

  return result;
}

uint64_t sub_100CEEE80(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_10000BE7C(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_100A90D48(v15, v4 & 1);
    v10 = sub_10000BE7C(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_100AA8BA8();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v6;
  v21[1] = v5;
  v22 = (v20[7] + 16 * v10);
  *v22 = v7;
  v22[1] = v8;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x800000010159A770;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v24;
  if (v40 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v25 = *(v4 - 1);
      v8 = *v4;
      v26 = *a3;

      v27 = sub_10000BE7C(v6, v5);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_100A90D48(v31, 1);
        v27 = sub_10000BE7C(v6, v5);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v6;
      v34[1] = v5;
      v35 = (v33[7] + 16 * v27);
      *v35 = v25;
      v35[1] = v8;
      v36 = v33[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v33[2] = v37;
      v4 += 4;
      if (v40 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100CEF230(void *a1, char a2, void *a3)
{
  v46 = a1[2];
  if (!v46)
  {
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v11 = sub_10000BE7C(v5, v6);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if (a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_100AA8D20();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_28;
  }

  sub_100A91008(v14, a2 & 1);
  v16 = sub_10000BE7C(v5, v6);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_27:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(30);
    v44._object = 0x800000010159A770;
    v44._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v44);
    _print_unlocked<A, B>(_:_:)();
    v45._countAndFlagsBits = 39;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v11 = v16;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v19 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v20 = (v19[6] + 16 * v11);
  *v20 = v5;
  v20[1] = v6;
  v21 = (v19[7] + 16 * v11);
  *v21 = v7;
  v21[1] = v8;
  v22 = v19[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19[2] = v24;
  if (v46 != 1)
  {
    v25 = a1 + 11;
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 3);
      v27 = *(v25 - 2);
      v29 = *(v25 - 1);
      v30 = *v25;
      v31 = *a3;

      v32 = sub_10000BE7C(v28, v27);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v23 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v23)
      {
        goto LABEL_24;
      }

      v37 = v33;
      if (v31[3] < v36)
      {
        sub_100A91008(v36, 1);
        v32 = sub_10000BE7C(v28, v27);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_27;
        }
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v28;
      v40[1] = v27;
      v41 = (v39[7] + 16 * v32);
      *v41 = v29;
      v41[1] = v30;
      v42 = v39[2];
      v23 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v23)
      {
        goto LABEL_25;
      }

      ++v26;
      v39[2] = v43;
      v25 += 4;
      if (v46 == v26)
      {
      }
    }

    goto LABEL_26;
  }
}

uint64_t sub_100CEF5FC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

double sub_100CEF648()
{
  v0 = sub_1005B981C(&qword_101A1B380, &qword_1014ABF90);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for __REAnchoringType.Alignment();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  type metadata accessor for Entity();
  HasTransform.orientation.getter();
  v17 = v10;
  Scene.__anchoringType.getter();
  v11 = type metadata accessor for __REAnchoringType();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v2, 1, v11) == 1)
  {
    sub_100CF013C(v2);
  }

  else if ((*(v12 + 88))(v2, v11) == enum case for __REAnchoringType.surface(_:))
  {
    (*(v12 + 96))(v2, v11);
    v13 = *(sub_1005B981C(&qword_101A1B388, &unk_1014ABF98) + 48);
    (*(v4 + 32))(v9, v2, v3);
    v14 = type metadata accessor for __REAnchoringType.Classification();
    (*(*(v14 - 8) + 8))(&v2[v13], v14);
    static __REAnchoringType.Alignment.vertical.getter();
    sub_100CF01A4(&unk_101A1B390, &type metadata accessor for __REAnchoringType.Alignment, &protocol conformance descriptor for __REAnchoringType.Alignment);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v15 = *(v4 + 8);
    v15(v6, v3);
    if (v19 == v18)
    {
      if (qword_1019F2028 != -1)
      {
        swift_once();
      }

      v17 = xmmword_101A1B0D0;
    }

    v15(v9, v3);
  }

  else
  {
    (*(v12 + 8))(v2, v11);
  }

  return *&v17;
}

uint64_t sub_100CEF9B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  *&v64 = type metadata accessor for Scene.AnchorCollection();
  *&v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  v15 = v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_compression;
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_loadReceipt) = 0;
  v16 = v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_lighting;
  *v16 = 0;
  *(v16 + 8) = 0;
  v17 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_metadata;
  *(v7 + v17) = sub_100BD6A7C(_swiftEmptyArrayStorage);
  v18 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend_uuid;
  v19 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_uuid;
  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 16))(v7 + v19, a1 + v18, v20);
  v58[1] = a1;
  swift_weakAssign();
  *(v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_scene) = a2;
  *(v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_objectEntity) = a3;
  *v15 = a4;
  *(v15 + 8) = a5 & 1;
  v21 = v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_configuration;
  v22 = *(a6 + 48);
  *(v21 + 32) = *(a6 + 32);
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a6 + 64);
  v23 = *(a6 + 16);
  *v21 = *a6;
  *(v21 + 16) = v23;
  type metadata accessor for AnchorEntity();
  sub_100CEF5FC(&off_101874D28);
  v61 = v24;

  *(v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_modelAnchor) = AnchorEntity.__allocating_init(world:)();
  type metadata accessor for Entity();
  HasTransform.visualBounds(recursive:relativeTo:excludeInactive:)();
  v25 = (v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_modelBounds);
  *v25 = v26;
  v25[1] = v27;
  BoundingBox.center.getter();
  HasTransform.position.setter();

  HasHierarchy.addChild(_:preservingWorldTransform:)();

  type metadata accessor for PerspectiveCamera();
  swift_allocObject();
  *(v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_cameraEntity) = PerspectiveCamera.init()();
  sub_100CEF5FC(&off_101874D58);
  *(v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_cameraAnchor) = AnchorEntity.__allocating_init(world:)();

  HasHierarchy.addChild(_:preservingWorldTransform:)();

  dispatch thunk of Scene.addAnchor(_:)();

  dispatch thunk of Scene.addAnchor(_:)();

  *v28.i64 = sub_100CEF648();
  v61 = v28;
  HasTransform.orientation.getter();
  if ((vminv_u16(vmovn_s32(vceqq_f32(v61, v29))) & 1) == 0)
  {
    HasTransform.orientation.setter();
  }

  swift_allocObject();
  *(v7 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_environmentEntity) = Entity.init()();

  dispatch thunk of Entity.name.setter();

  Entity.turnIntoNinja()();

  v30 = v62;
  dispatch thunk of Scene.anchors.getter();

  Scene.AnchorCollection.appendNinja(_:)();

  (*(v63 + 8))(v30, v64);
  v31 = Entity.availableAnimations.getter();
  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v59 = a2;
    v60 = v7;
    if (v32)
    {
      goto LABEL_5;
    }

LABEL_23:

    v35 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_24:
      v48 = _swiftEmptyDictionarySingleton;
      goto LABEL_25;
    }

LABEL_19:
    sub_1005B981C(&unk_101A1B370, &unk_1014ABF80);
    v48 = static _DictionaryStorage.allocate(capacity:)();
LABEL_25:
    *&v67[0] = v48;
    sub_100CEF230(v35, 1, v67);
    v50 = v60;
    *(v60 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_animations) = *&v67[0];
    v51 = *(v50 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_modelBounds);
    v63 = *(v50 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_modelBounds + 16);
    v64 = v51;
    v52 = sub_100BD6B64(_swiftEmptyArrayStorage);
    v53 = sub_100BD6968(_swiftEmptyArrayStorage);
    v54 = v50 + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE11ClientScene_sceneDescription;
    v55 = v63;
    *v54 = v64;
    *(v54 + 16) = v55;
    *(v54 + 32) = v52;
    *(v54 + 40) = 0;
    *(v54 + 48) = v53;
    sub_100CEDF50();
    sub_100CEE0F4();
    sub_100CED6CC(v67);

    v56 = v67[1];
    *v54 = v67[0];
    *(v54 + 16) = v56;
    *(v54 + 32) = v67[2];
    *(v54 + 48) = v68;

    return v50;
  }

LABEL_22:
  v49 = v31;
  v32 = _CocoaArrayWrapper.endIndex.getter();
  v31 = v49;
  v59 = a2;
  v60 = v7;
  if (!v32)
  {
    goto LABEL_23;
  }

LABEL_5:
  v33 = v31;
  v66 = _swiftEmptyArrayStorage;
  v31 = sub_100776BE4(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v61.i64[0] = a3;
    v34 = 0;
    v35 = v66;
    v36 = v33;
    *&v64 = v33 & 0xC000000000000001;
    v62 = (v33 & 0xFFFFFFFFFFFFFF8);
    *&v63 = v33;
    v37 = v32;
    do
    {
      a3 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v64)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v34 >= *(v62 + 2))
        {
          goto LABEL_21;
        }

        v38 = *(v36 + 8 * v34 + 32);
      }

      v65 = ObjectIdentifier.hashValue.getter();
      *&v67[0] = dispatch thunk of CustomStringConvertible.description.getter();
      *(&v67[0] + 1) = v39;
      v40._countAndFlagsBits = 47;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      v41 = AnimationResource.name.getter();
      if (v42)
      {
        v43 = v42;
      }

      else
      {
        v41 = 0x64656D616E6E75;
        v43 = 0xE700000000000000;
      }

      v44 = v43;
      String.append(_:)(*&v41);

      v7 = *(&v67[0] + 1);
      v45 = *&v67[0];
      v66 = v35;
      a2 = v35[2];
      v46 = v35[3];
      if (a2 >= v46 >> 1)
      {
        v31 = sub_100776BE4((v46 > 1), a2 + 1, 1);
        v35 = v66;
      }

      v35[2] = a2 + 1;
      v47 = &v35[4 * a2];
      v47[4] = v45;
      v47[5] = v7;
      v47[6] = v38;
      v47[7] = 0;
      ++v34;
      v36 = v63;
    }

    while (a3 != v37);

    if (!v35[2])
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_100CF013C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A1B380, &qword_1014ABF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100CF01A4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100CF01EC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 == a2)
  {
    goto LABEL_10;
  }

  if ((a3 >> 1) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = (a3 >> 1) + ~a2;
  if (v3 > 3)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0uLL;
  do
  {
    v6 = *(result + 4 * a2 + 4 * v4);
    v7 = v5;
    *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3))) = v6;
    v5 = v7;
    ++v4;
  }

  while ((a3 >> 1) - a2 != v4);
  if (v3 != 3)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100CF0260()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D3D4;

  return sub_100867E24();
}

id sub_100CF051C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a5;
  v38 = a1;
  v39 = a2;
  swift_getObjectType();
  v9 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v9 - 8);
  v11 = &v30[-v10];
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v41;
  v17 = sub_100CF0DAC(v15, a3, a4);
  if (v16)
  {
    v40 = v16;

    swift_unknownObjectRelease();
    sub_10002640C(v38, v39);
  }

  else
  {
    v18 = v37;
    v31 = v17;
    v32 = a3;
    v33 = a4;
    v34 = v13;
    v35 = v11;
    Data.write(to:options:)();
    v36 = v6;
    v40 = 0;
    v19 = v18;
    v21 = v34;
    v20 = v35;
    v34[2](v35, v15, v12);
    (v21[7])(v20, 0, 1, v12);
    v22 = type metadata accessor for CRLPreinsertionAssetWrapper(0);
    v23 = objc_allocWithZone(v22);
    sub_10000BE14(v20, &v23[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url], &unk_1019F33C0, &unk_101468A60);
    v24 = &v23[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename];
    v25 = v33;
    *v24 = v32;
    v24[1] = v25;
    *&v23[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__owner] = v19;
    *&v23[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset] = 0;
    v26 = v31;
    *&v23[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__tempDir] = v31;
    v42.receiver = v23;
    v42.super_class = v22;
    v27 = v12;
    v28 = v26;
    swift_unknownObjectRetain();
    v13 = objc_msgSendSuper2(&v42, "init");
    sub_10002640C(v38, v39);
    swift_unknownObjectRelease();

    (v21[1])(v15, v27);
    sub_10000CAAC(v20, &unk_1019F33C0, &unk_101468A60);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

id sub_100CF0DAC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v20[1] = a1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v13 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
  }

  else
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v10 + 8))(v12, v9);
  }

  v14 = objc_allocWithZone(CRLTemporaryDirectory);
  v21 = 0;
  v15 = [v14 initWithError:&v21];
  if (v15)
  {
    v16 = v21;
    v17 = [v15 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.appendingPathComponent(_:isDirectory:)();

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v18 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v15;
}

uint64_t sub_100CF111C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v41 = a5;
  v39 = a2;
  ObjectType = swift_getObjectType();
  v10 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100CF0DAC(v16, a3, a4);
  if (v5)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v35 = v12;
    v36 = 0;
    v18 = v39;
    v38 = v17;
    v19 = a1;
    v20 = URL.isFileURL.getter();
    v37 = v13;
    v34 = a3;
    if (v20)
    {
      URL.path.getter();
    }

    else
    {
      URL.absoluteString.getter();
    }

    v21 = String._bridgeToObjectiveC()();

    v22 = v14;
    if (v18)
    {
      v23.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v23.super.isa = 0;
    }

    v24 = a4;
    v25 = sub_100511630(v19, v21, v23.super.isa);

    if (v25)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = v35;
      URL.init(fileURLWithPath:)();

      v27 = v16;
      v28 = v37;
      (*(v22 + 56))(v26, 0, 1, v37);
      v29 = type metadata accessor for CRLPreinsertionAssetWrapper(0);
      v30 = objc_allocWithZone(v29);
      sub_10000BE14(v26, &v30[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url], &unk_1019F33C0, &unk_101468A60);
      v31 = &v30[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename];
      *v31 = v34;
      v31[1] = v24;
      *&v30[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__owner] = v41;
      *&v30[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset] = 0;
      *&v30[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__tempDir] = v38;
      v40.receiver = v30;
      v40.super_class = v29;
      ObjectType = objc_msgSendSuper2(&v40, "init");

      (*(v22 + 8))(v27, v28);
      sub_10000CAAC(v26, &unk_1019F33C0, &unk_101468A60);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return ObjectType;
    }

    ObjectType = NSCocoaErrorDomain;
    [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:512 userInfo:0];
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v22 + 8))(v16, v37);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return ObjectType;
}

id sub_100CF1690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v9 = *(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  sub_100020E58((a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v8);
  v10 = (*(v9 + 16))(v8, v9);
  v12 = v11;
  v13 = type metadata accessor for CRLPreinsertionAssetWrapper(0);
  v14 = objc_allocWithZone(v13);
  sub_10000BE14(v6, &v14[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url], &unk_1019F33C0, &unk_101468A60);
  v15 = &v14[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename];
  *v15 = v10;
  v15[1] = v12;
  *&v14[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__owner] = a2;
  *&v14[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset] = a1;
  *&v14[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__tempDir] = 0;
  v18.receiver = v14;
  v18.super_class = v13;
  v16 = objc_msgSendSuper2(&v18, "init");
  sub_10000CAAC(v6, &unk_1019F33C0, &unk_101468A60);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

uint64_t sub_100CF18DC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for CRLAssetData(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100CF197C, 0, 0);
}

uint64_t sub_100CF197C()
{
  v1 = v0[9];
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset);
  if (v2)
  {
    sub_10000630C(v2 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, (v0 + 2));
    sub_1005B981C(&qword_1019FF208, &qword_10148C780);
    type metadata accessor for CRLAssetBackedAssetStorage(0);
    if (swift_dynamicCast())
    {
      v3 = v0[11];
      v4 = v0[12];
      v5 = v0[8];
      sub_1008786E0(v0[7] + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v3);

      sub_1006008F0(v3, v4);
      sub_1006008F0(v4, v5);

      v6 = v0[1];

      return v6();
    }

    v1 = v0[9];
  }

  v8 = swift_task_alloc();
  v0[13] = v8;
  *(v8 + 16) = v1;
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_100CF1B5C;
  v10 = v0[10];
  v11 = v0[8];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000012, 0x800000010159A9A0, sub_100CF5EB0, v8, v10);
}

uint64_t sub_100CF1B5C()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100CF1CAC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100CF1CAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CF1D24()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for CRLAssetData(0);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100CF1DB8, 0, 0);
}

uint64_t sub_100CF1DB8()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset);
  if (v2)
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[5] = v6;
    *(v6 + 16) = v1;
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_100CF1F08;
    v9 = v0[3];
    v8 = v0[4];

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD000000000000012, 0x800000010159A9A0, sub_100CF5C88, v6, v9);
  }
}

uint64_t sub_100CF1F08()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100CF20C0;
  }

  else
  {

    v2 = sub_100CF2024;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100CF2024()
{
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v3 = sub_1009F7AA0(v1, ObjectType);
  sub_10072C8E4(v1);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100CF20C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CF22A0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1007142A8;

  return sub_100CF1D24();
}

uint64_t sub_100CF2348(uint64_t a1, uint64_t a2)
{
  v98 = a1;
  v3 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v3 - 8);
  v96 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A1B430, &qword_1014AC058);
  __chkstk_darwin(v5);
  v7 = (&v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (&v78 - v9);
  v11 = sub_1005B981C(&qword_101A1B438, &qword_1014AC060);
  v12 = *(v11 - 8);
  v91 = *(v12 + 64);
  __chkstk_darwin(v11);
  v92 = &v78 - v13;
  v14 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v14 - 8);
  v97 = &v78 - v15;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16);
  v93 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v90 = &v78 - v20;
  __chkstk_darwin(v21);
  v23 = &v78 - v22;
  if (static Task<>.isCancelled.getter())
  {
LABEL_8:
    *v10 = [objc_opt_self() crl_errorWithCode:4 userInfo:0];
    swift_storeEnumTagMultiPayload();
    sub_10000BE14(v10, v7, &qword_101A1B430, &qword_1014AC058);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v99 = *v7;
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      sub_1006008F0(v7, v96);
      CheckedContinuation.resume(returning:)();
    }

    return sub_10000CAAC(v10, &qword_101A1B430, &qword_1014AC058);
  }

  v86 = v5;
  v24 = OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url;
  v25 = v17[6];
  v88 = v17 + 6;
  v87 = v25;
  v26 = v25(a2 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url, 1, v16);
  v89 = v16;
  v95 = v23;
  v94 = v17;
  if (v26 == 1)
  {
    v83 = v24;
    v82 = a2;
    v84 = v12;
    v85 = v11;
    v81 = objc_opt_self();
    v27 = [v81 _atomicIncrementAssertCount];
    v99 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v99, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("_createAssetData()", 18, 2);
    v80 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLPreinsertionAssetWrapper.swift", 99, 2);
    v28 = String._bridgeToObjectiveC()();

    v29 = [v28 lastPathComponent];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v79 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v27;
    v34 = sub_1005CF000();
    *(inited + 96) = v34;
    v35 = sub_1005CF04C();
    *(inited + 104) = v35;
    v36 = v80;
    *(inited + 72) = v80;
    *(inited + 136) = &type metadata for String;
    v37 = sub_1000053B0();
    *(inited + 112) = v30;
    *(inited + 120) = v32;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v37;
    *(inited + 152) = 118;
    v38 = v99;
    *(inited + 216) = v34;
    *(inited + 224) = v35;
    *(inited + 192) = v38;
    v39 = v36;
    v40 = v38;
    v41 = static os_log_type_t.error.getter();
    v42 = v79;
    sub_100005404(v79, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v42, &_mh_execute_header, v43, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v44 = swift_allocObject();
    v44[2] = 8;
    v44[3] = 0;
    v44[4] = 0;
    v44[5] = 0;
    v45 = __VaListBuilder.va_list()();
    StaticString.description.getter("_createAssetData()", 18, 2);
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLPreinsertionAssetWrapper.swift", 99, 2);
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v48 = String._bridgeToObjectiveC()();

    [v81 handleFailureInFunction:v46 file:v47 lineNumber:118 isFatal:0 format:v48 args:v45];

    v11 = v85;
    v17 = v94;
    v16 = v89;
    v23 = v95;
    v12 = v84;
    a2 = v82;
    v24 = v83;
  }

  v49 = a2 + v24;
  v50 = v97;
  sub_10000BE14(v49, v97, &unk_1019F33C0, &unk_101468A60);
  if (v87(v50, 1, v16) == 1)
  {
    sub_10000CAAC(v50, &unk_1019F33C0, &unk_101468A60);
    goto LABEL_8;
  }

  v52 = v17[4];
  v88 = v17 + 4;
  v87 = v52;
  v52(v23, v50, v16);
  v53 = *(a2 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename + 8);
  v96 = *(a2 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename);
  v54 = *(a2 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__owner);
  v97 = v53;

  v55 = [v54 store];
  v56 = *&v55[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v56 + 16));
  v57 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v58 = *&v55[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v58)
  {
    v86 = *&v55[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v59 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v60 = v55;
    v61 = sub_10001F1A0(v60);

    v62 = *&v55[v57];
    *&v55[v57] = v61;
    v86 = v61;

    v58 = 0;
  }

  v63 = *(v56 + 16);
  v64 = v58;
  os_unfair_lock_unlock(v63);

  v65 = v92;
  (*(v12 + 16))(v92, v98, v11);
  v66 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v98 = swift_allocObject();
  (*(v12 + 32))(v98 + v66, v65, v11);
  v67 = v94;
  v68 = v94[2];
  v69 = v90;
  v70 = v95;
  v71 = v89;
  v68(v90, v95, v89);
  v72 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v92 = swift_allocObject();
  v73 = v87;
  v87(v92 + v72, v69, v71);
  v74 = v93;
  v68(v93, v70, v71);
  v75 = swift_allocObject();
  v73(v75 + v72, v74, v71);
  v76 = v97;

  v77 = v86;
  sub_10108F508(v96, v76, sub_100CF5BC0, v92, sub_100CF5BEC, v75, sub_100CF5C90, v98);

  swift_bridgeObjectRelease_n();

  return (v94[1])(v95, v71);
}

uint64_t sub_100CF2EA0(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v64 = a1;
  v61 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v61);
  v63 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1005B981C(&qword_101A1B430, &qword_1014AC058);
  __chkstk_darwin(v67);
  v4 = (&v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = (&v54 - v6);
  __chkstk_darwin(v8);
  v62 = (&v54 - v9);
  __chkstk_darwin(v10);
  v66 = &v54 - v11;
  v12 = sub_1005B981C(&qword_101A1B428, &qword_1014AE150);
  __chkstk_darwin(v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v60 = &v54 - v16;
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  __chkstk_darwin(v23);
  v65 = &v54 - v24;
  v25 = sub_1005B981C(&unk_101A1B440, &unk_1014AC068);
  __chkstk_darwin(v25);
  v27 = (&v54 - v26);
  sub_10000BE14(v64, &v54 - v26, &unk_101A1B440, &unk_1014AC068);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v7 = *v27;
    swift_storeEnumTagMultiPayload();
    sub_10000BE14(v7, v4, &qword_101A1B430, &qword_1014AC058);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v69 = *v4;
      sub_1005B981C(&qword_101A1B438, &qword_1014AC060);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      sub_1006008F0(v4, v63);
      sub_1005B981C(&qword_101A1B438, &qword_1014AC060);
      CheckedContinuation.resume(returning:)();
    }

    v50 = &qword_101A1B430;
    v51 = &qword_1014AC058;
    v52 = v7;
  }

  else
  {
    v28 = v65;
    sub_100CF5C18(v27, v65);
    sub_10000BE14(v28, v22, &qword_101A1B428, &qword_1014AE150);
    v29 = &v22[*(v12 + 48)];
    v30 = *v29;
    v31 = *(v29 + 1);
    v32 = *(v12 + 64);
    v33 = type metadata accessor for UUID();
    v64 = *(v33 - 8);
    v34 = *(v64 + 32);
    v58 = v33;
    v59 = v34;
    v34(v19, v22, v33);
    v35 = &v19[*(v12 + 48)];
    *v35 = v30;
    *(v35 + 1) = v31;
    v36 = *(v12 + 64);
    v37 = type metadata accessor for URL();
    v38 = *(v37 - 8);
    (*(v38 + 32))(&v19[v36], &v22[v32], v37);
    v39 = v14;
    v40 = v60;
    v41 = v61;
    v56 = *(v61 + 24);
    sub_10000BE14(v19, v60, &qword_101A1B428, &qword_1014AE150);

    v57 = *(v12 + 64);
    sub_100CF5C18(v19, v39);
    v42 = (v39 + *(v12 + 48));
    v43 = *v42;
    v44 = v42[1];
    v55 = *(v12 + 64);
    v45 = v66;
    v46 = v58;
    v59(v66, v40, v58);
    v47 = (v45 + *(v41 + 20));
    *v47 = v43;
    v47[1] = v44;
    *(v45 + v56) = _swiftEmptyDictionarySingleton;
    v48 = *(v38 + 8);
    v48(v39 + v55, v37);
    (*(v64 + 8))(v39, v46);
    v48(v40 + v57, v37);
    swift_storeEnumTagMultiPayload();
    v49 = v62;
    sub_10000BE14(v45, v62, &qword_101A1B430, &qword_1014AC058);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v69 = *v49;
      sub_1005B981C(&qword_101A1B438, &qword_1014AC060);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      sub_1006008F0(v49, v63);
      sub_1005B981C(&qword_101A1B438, &qword_1014AC060);
      CheckedContinuation.resume(returning:)();
    }

    sub_10000CAAC(v66, &qword_101A1B430, &qword_1014AC058);
    v50 = &qword_101A1B428;
    v51 = &qword_1014AE150;
    v52 = v65;
  }

  return sub_10000CAAC(v52, v50, v51);
}

id sub_100CF34E8()
{
  v154 = sub_1005B981C(&qword_101A1B428, &qword_1014AE150);
  __chkstk_darwin(v154);
  v2 = &v129 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v129 - v4;
  __chkstk_darwin(v6);
  v8 = &v129 - v7;
  v9 = type metadata accessor for UUID();
  v155 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v12);
  v14 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v15 - 8);
  v17 = &v129 - v16;
  v18 = type metadata accessor for URL();
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v29 = __chkstk_darwin(v21);
  v30 = v0;
  v31 = *&v0[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset];
  v32 = v31;
  if (!v31)
  {
    v140 = v8;
    v141 = v5;
    v149 = 0;
    v150 = v17;
    v144 = v24;
    v145 = v23;
    v146 = v28;
    v147 = v27;
    v148 = v11;
    v151 = v26;
    v152 = &v129 - v25;
    v139 = v12;
    v33 = OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url;
    v34 = v26[6];
    v35 = v30;
    v153 = v22;
    v36 = v34(&v30[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url], 1, v29);
    v142 = v2;
    v143 = v9;
    v138 = v14;
    if (v36 == 1)
    {
      v134 = v35;
      v136 = v33;
      v137 = v34;
      v135 = objc_opt_self();
      v37 = [v135 _atomicIncrementAssertCount];
      v156[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v156, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("synchronouslyCreateAsset()", 26, 2);
      v38 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLPreinsertionAssetWrapper.swift", 99, 2);
      v39 = String._bridgeToObjectiveC()();

      v40 = [v39 lastPathComponent];

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v44 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v37;
      v46 = sub_1005CF000();
      *(inited + 96) = v46;
      v47 = sub_1005CF04C();
      *(inited + 104) = v47;
      *(inited + 72) = v38;
      *(inited + 136) = &type metadata for String;
      v48 = sub_1000053B0();
      *(inited + 112) = v41;
      *(inited + 120) = v43;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v48;
      *(inited + 152) = 143;
      v49 = v38;
      v50 = v156[0];
      *(inited + 216) = v46;
      *(inited + 224) = v47;
      *(inited + 192) = v50;
      v51 = v49;
      v52 = v50;
      v53 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v54 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v54, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v55 = swift_allocObject();
      v55[2] = 8;
      v55[3] = 0;
      v55[4] = 0;
      v55[5] = 0;
      v56 = __VaListBuilder.va_list()();
      StaticString.description.getter("synchronouslyCreateAsset()", 26, 2);
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLPreinsertionAssetWrapper.swift", 99, 2);
      v58 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v59 = String._bridgeToObjectiveC()();

      [v135 handleFailureInFunction:v57 file:v58 lineNumber:143 isFatal:0 format:v59 args:v56];

      v33 = v136;
      v34 = v137;
      v35 = v134;
    }

    v60 = v150;
    sub_10000BE14(&v35[v33], v150, &unk_1019F33C0, &unk_101468A60);
    v61 = v153;
    if ((v34)(v60, 1, v153) == 1)
    {
      sub_10000CAAC(v60, &unk_1019F33C0, &unk_101468A60);
      v62 = objc_opt_self();
      v63 = [v62 _atomicIncrementAssertCount];
      v156[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v156, "Preinsertion asset wrapper missing necessary data from init", 59, 2u);
      StaticString.description.getter("synchronouslyCreateAsset()", 26, 2);
      v64 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLPreinsertionAssetWrapper.swift", 99, 2);
      v65 = String._bridgeToObjectiveC()();

      v66 = [v65 lastPathComponent];

      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v70 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v71 = swift_initStackObject();
      *(v71 + 16) = xmmword_10146CA70;
      *(v71 + 56) = &type metadata for Int32;
      *(v71 + 64) = &protocol witness table for Int32;
      *(v71 + 32) = v63;
      v72 = sub_1005CF000();
      *(v71 + 96) = v72;
      v73 = sub_1005CF04C();
      *(v71 + 104) = v73;
      *(v71 + 72) = v64;
      *(v71 + 136) = &type metadata for String;
      v74 = sub_1000053B0();
      *(v71 + 112) = v67;
      *(v71 + 120) = v69;
      *(v71 + 176) = &type metadata for UInt;
      *(v71 + 184) = &protocol witness table for UInt;
      *(v71 + 144) = v74;
      *(v71 + 152) = 148;
      v75 = v156[0];
      *(v71 + 216) = v72;
      *(v71 + 224) = v73;
      *(v71 + 192) = v75;
      v76 = v64;
      v77 = v75;
      v78 = static os_log_type_t.error.getter();
      sub_100005404(v70, &_mh_execute_header, v78, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v71);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v79 = static os_log_type_t.error.getter();
      sub_100005404(v70, &_mh_execute_header, v79, "Preinsertion asset wrapper missing necessary data from init", 59, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v80 = swift_allocObject();
      v80[2] = 8;
      v80[3] = 0;
      v80[4] = 0;
      v80[5] = 0;
      v81 = __VaListBuilder.va_list()();
      StaticString.description.getter("synchronouslyCreateAsset()", 26, 2);
      v82 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLPreinsertionAssetWrapper.swift", 99, 2);
      v83 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Preinsertion asset wrapper missing necessary data from init", 59, 2);
      v84 = String._bridgeToObjectiveC()();

      [v62 handleFailureInFunction:v82 file:v83 lineNumber:148 isFatal:0 format:v84 args:v81];

      v32 = 0;
    }

    else
    {
      v85 = (v151 + 4);
      v86 = v151[4];
      v86(v152, v60, v61);
      v87 = *&v35[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename + 8];
      v135 = *&v35[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename];
      v88 = *&v35[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__owner];
      ObjectType = swift_getObjectType();

      v131 = v88;
      v89 = [v88 store];
      v90 = *&v89[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
      os_unfair_lock_lock(*(v90 + 16));
      v91 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
      v92 = *&v89[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
      v136 = v86;
      v137 = v85;
      v150 = v87;
      if (v92)
      {
        v134 = v92;
      }

      else
      {
        v93 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
        v94 = v89;
        v95 = sub_10001F1A0(v94);

        v96 = *&v89[v91];
        *&v89[v91] = v95;
        v134 = v95;

        v92 = 0;
      }

      v97 = *(v90 + 16);
      v98 = v92;
      os_unfair_lock_unlock(v97);

      v99 = v152;
      v100 = v151 + 2;
      v132 = v151[2];
      v101 = v144;
      v102 = v153;
      v132(v144, v152, v153);
      v103 = (*(v100 + 64) + 16) & ~*(v100 + 64);
      v133 = swift_allocObject();
      v104 = v136;
      v136(&v133[v103], v101, v102);
      v105 = v146;
      v132(v146, v99, v102);
      v106 = swift_allocObject();
      v104(v106 + v103, v105, v102);
      v108 = v147;
      v107 = v148;
      v109 = v134;
      sub_10108EA70(v148, v147, v135, v150, sub_100CF5BC0, v133, sub_100CF5BEC, v106);
      v113 = v112;
      v115 = v114;

      v150 = *(v155 + 32);
      v116 = v140;
      v117 = v143;
      v150(v140, v107, v143);
      v118 = v154;
      v119 = (v116 + *(v154 + 48));
      *v119 = v113;
      v119[1] = v115;
      v136(v116 + *(v118 + 64), v108, v102);
      v120 = v139;
      v148 = *(v139 + 24);
      v121 = v141;
      sub_10000BE14(v116, v141, &qword_101A1B428, &qword_1014AE150);

      v147 = *(v118 + 64);
      v122 = v142;
      sub_100CF5C18(v116, v142);
      v123 = (v122 + *(v118 + 48));
      v124 = *v123;
      v125 = v123[1];
      v154 = *(v118 + 64);
      v126 = v138;
      v150(v138, v121, v117);
      v127 = (v126 + *(v120 + 20));
      *v127 = v124;
      v127[1] = v125;
      *(v126 + v148) = _swiftEmptyDictionarySingleton;
      v128 = v151[1];
      v128(v122 + v154, v102);
      (*(v155 + 8))(v122, v143);
      v128(&v147[v121], v102);
      v32 = sub_1009F7AA0(v126, ObjectType);
      v128(v152, v102);
      sub_10072C8E4(v126);
    }

    v31 = v149;
  }

  v110 = v31;
  return v32;
}

CGDataProviderRef sub_100CF4BE4()
{
  v1 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset);
  if (v8)
  {
    v9 = *&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v10 = *&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v9);
    v11 = *(v10 + 40);
    v12 = v8;
    v13 = v11(v9, v10);

    return v13;
  }

  else
  {
    sub_10000BE14(v0 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url, v3, &unk_1019F33C0, &unk_101468A60);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10000CAAC(v3, &unk_1019F33C0, &unk_101468A60);
      return 0;
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      URL._bridgeToObjectiveC()(v15);
      v17 = v16;
      v18 = CGDataProviderCreateWithURL(v16);

      (*(v5 + 8))(v7, v4);
      return v18;
    }
  }
}

CGImageSourceRef sub_100CF4E34()
{
  v1 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset);
  if (v8)
  {
    v9 = *&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v10 = *&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v9);
    v11 = *(v10 + 40);
    v12 = v8;
    v13 = v11(v9, v10);

    if (!v13)
    {
      return 0;
    }

LABEL_7:
    v17 = CGImageSourceCreateWithDataProvider(v13, 0);

    return v17;
  }

  sub_10000BE14(v0 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url, v3, &unk_1019F33C0, &unk_101468A60);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CAAC(v3, &unk_1019F33C0, &unk_101468A60);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v13 = CGDataProviderCreateWithURL(v15);

    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      goto LABEL_7;
    }
  }

  return 0;
}

CGImageRef sub_100CF50A0()
{
  v1 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset);
  if (v8)
  {
    v9 = *&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v10 = *&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v8[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v9);
    v11 = *(v10 + 40);
    v12 = v8;
    v13 = v11(v9, v10);

    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    sub_10000BE14(v0 + OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url, v3, &unk_1019F33C0, &unk_101468A60);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10000CAAC(v3, &unk_1019F33C0, &unk_101468A60);
      return 0;
    }

    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v13 = CGDataProviderCreateWithURL(v15);

    (*(v5 + 8))(v7, v4);
    if (!v13)
    {
      return 0;
    }
  }

  v17 = CGImageSourceCreateWithDataProvider(v13, 0);

  if (v17)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v17, 0, 0);

    return ImageAtIndex;
  }

  return 0;
}

id sub_100CF53B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLPreinsertionAssetWrapper(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLPreinsertionAssetWrapper(uint64_t a1)
{
  result = qword_101A1B418;
  if (!qword_101A1B418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100CF54D4(uint64_t a1)
{
  sub_10084E720(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_100CF5584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class a5, uint64_t a6)
{
  v10 = objc_allocWithZone(a5);

  return sub_100CF55F4(a1, a2, a3, a4, v10);
}

id sub_100CF55F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  if (!a3)
  {
    a2 = URL.lastPathComponent.getter();
    a3 = v15;
  }

  v53 = a2;
  v54 = a3;
  v52 = type metadata accessor for CRLPreinsertionAssetWrapper(0);
  v16 = objc_allocWithZone(v52);
  v50 = v12;
  v51 = v14;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v46 = v13;
    v47 = a4;
    v48 = a1;
    v49 = a5;
    v45 = objc_opt_self();
    v17 = [v45 _atomicIncrementAssertCount];
    v56 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v56, "Invalid init arguments.", 23, 2u);
    StaticString.description.getter("init(url:filename:owner:alreadyInsertedAsset:tempDir:)", 54, 2);
    v18 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLPreinsertionAssetWrapper.swift", 99, 2);
    v19 = String._bridgeToObjectiveC()();

    v20 = [v19 lastPathComponent];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v17;
    v26 = sub_1005CF000();
    *(inited + 96) = v26;
    v27 = sub_1005CF04C();
    *(inited + 104) = v27;
    *(inited + 72) = v18;
    *(inited + 136) = &type metadata for String;
    v28 = sub_1000053B0();
    *(inited + 112) = v21;
    *(inited + 120) = v23;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v28;
    *(inited + 152) = 82;
    v29 = v56;
    *(inited + 216) = v26;
    *(inited + 224) = v27;
    *(inited + 192) = v29;
    v30 = v18;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v33, "Invalid init arguments.", 23, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
    v35 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(url:filename:owner:alreadyInsertedAsset:tempDir:)", 54, 2);
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLPreinsertionAssetWrapper.swift", 99, 2);
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Invalid init arguments.", 23, 2);
    v38 = String._bridgeToObjectiveC()();

    [v45 handleFailureInFunction:v36 file:v37 lineNumber:82 isFatal:0 format:v38 args:v35];

    a1 = v48;
    v13 = v46;
    a4 = v47;
  }

  v39 = v50;
  sub_10000BE14(v50, &v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url], &unk_1019F33C0, &unk_101468A60);
  v40 = &v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename];
  v41 = v54;
  *v40 = v53;
  v40[1] = v41;
  *&v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__owner] = a4;
  *&v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset] = 0;
  *&v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__tempDir] = 0;
  v55.receiver = v16;
  v55.super_class = v52;
  v42 = objc_msgSendSuper2(&v55, "init");
  (*(v51 + 8))(a1, v13);
  sub_10000CAAC(v39, &unk_1019F33C0, &unk_101468A60);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v42;
}

uint64_t sub_100CF5C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A1B428, &qword_1014AE150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100CF5C90(uint64_t a1)
{
  v3 = *(sub_1005B981C(&qword_101A1B438, &qword_1014AC060) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100CF2EA0(a1, v4);
}

uint64_t sub_100CF5E04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D3D4;

  return sub_100CF22A0(v2, v3);
}

double sub_100CF5EB4()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v22 - v4;
  v6 = [v0 layout];
  type metadata accessor for CRLUSDZLayout();
  swift_dynamicCastClassUnconditional();
  sub_1008B9664();

  v7 = [v0 layout];
  swift_dynamicCastClassUnconditional();
  v22 = matrix_identity_float4x4.columns[3];
  sub_1008B9810(v22);

  if ((*(*&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController] + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_visibilityState) | 4) != 4)
  {
    sub_100F97F98(1);
  }

  v8 = [v0 interactiveCanvasController];
  [v8 layoutIfNeeded];

  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_hideKnobsDueToBoundsUpdate] = 1;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  type metadata accessor for MainActor();
  v18 = v1;
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[1].n128_u64[0] = v19;
  v20[1].n128_u64[1] = &protocol witness table for MainActor;
  v20[2].n128_u64[0] = v18;
  v20[3] = v22;
  v20[4].n128_u64[0] = v14;
  v20[4].n128_u64[1] = v16;
  sub_10064191C(0, 0, v5, &unk_1014AC478, v20);

  return result;
}

char *sub_100CF61CC(void *a1, void *a2)
{
  v5 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v5);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_errorRecoveryAttempts] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_maxErrorRecoveryAttempts] = 10;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_suppressInvalidateForRenderingStateChange] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_hideKnobsDueToBoundsUpdate] = 0;
  v8 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for CRLUSDZKnobController()) init];
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_animationIsPaused] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_rendererHasBeenSuspended] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_cachedContentPlatformView] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_externallySetAlpha] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_spinnerViewXConstraint] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_spinnerViewYConstraint] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_spinnerViewSize] = vdupq_n_s64(0x4049000000000000uLL);
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_spinnerViewHiddenBecauseTooSmall] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isZooming] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isResizing] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobsWereVisibleBeforeDynamicOperation] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_shouldUpdateRenderingStateForSceneCapture] = 0;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_didAddNotificationCenterAddObservers] = 0;
  v9 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy;
  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy] = 4;
  if (!a2)
  {
    goto LABEL_8;
  }

  v10 = a2;
  if (![v10 isCanvasInteractive])
  {

LABEL_8:
    v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive] = 0;
    goto LABEL_9;
  }

  v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive] = 1;
  if (qword_1019F1AB8 != -1)
  {
    swift_once();
  }

  v11 = byte_101AD6F08;

  if (v11)
  {
    v2[v9] = 3;
  }

  else
  {
    v2[v9] = 1;
  }

LABEL_9:
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  swift_storeEnumTagMultiPayload();
  v12 = &v2[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
  *v12 = 0;
  v12[8] = -64;
  v13 = type metadata accessor for CRLUSDZRep(0);
  v22.receiver = v2;
  v22.super_class = v13;
  v14 = objc_msgSendSuper2(&v22, "initWithLayout:canvas:", a1, a2);
  if (([v14 hasBeenRemoved] & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_posterLoadingState;
    swift_beginAccess();
    sub_100D13C98(v14 + v15, v7, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {

        v19 = sub_1005B981C(&unk_101A1B858, &qword_1014AC368);
        sub_100D13C38(v7 + *(v19 + 48), type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError);
      }

      else
      {
        sub_100CFB5B4();
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_100D13C38(v7, type metadata accessor for CRLUSDZRep.PosterLoadingState);
      sub_100CFD188();
    }

    else
    {

      v17 = *(sub_1005B981C(&qword_101A1B828, &qword_1014AC348) + 48);
      v18 = type metadata accessor for UUID();
      (*(*(v18 - 8) + 8))(v7 + v17, v18);
    }

    sub_100CF979C();
  }

  sub_100CF8070();
  sub_100D0CB5C();

  return v14;
}

uint64_t sub_100CF6624()
{
  v39 = type metadata accessor for UUID();
  v1 = *(v39 - 8);
  __chkstk_darwin(v39);
  v3 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v4 - 8);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLAssetData(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 info];
  type metadata accessor for CRLUSDZItem(0);
  v12 = swift_dynamicCastClassUnconditional();
  v13 = [v0 info];
  if (**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_6;
  }

  v37[2] = v11;
  v38 = v1;
  swift_beginAccess();

  sub_1005B981C(&unk_101A2EF00, qword_101485680);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_100D13C98(v6, v10, type metadata accessor for CRLAssetData);
  sub_100D13C38(v6, type metadata accessor for CRLUSDZAssetDataStruct);
  v14 = [v12 store];
  v15 = *&v14[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v15 + 16));
  v16 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v17 = *&v14[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v17)
  {
    v18 = *&v14[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v19 = type metadata accessor for CRLAssetManager();
    v20 = objc_allocWithZone(v19);
    v37[0] = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
    swift_unknownObjectWeakInit();
    v21 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v22 = swift_allocObject();
    v37[1] = v12;
    v23 = v22;
    v24 = v14;
    v25 = swift_slowAlloc();
    *v25 = 0;
    *(v23 + 16) = v25;
    atomic_thread_fence(memory_order_acq_rel);
    *&v20[v21] = v23;
    *&v20[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v26 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v20[v26] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v20[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    swift_unknownObjectWeakAssign();
    v40.receiver = v20;
    v40.super_class = v19;
    v27 = objc_msgSendSuper2(&v40, "init");

    v28 = *&v14[v16];
    *&v14[v16] = v27;
    v18 = v27;

    v17 = 0;
  }

  v29 = *(v15 + 16);
  v30 = v17;
  os_unfair_lock_unlock(v29);

  v31 = sub_1011255E0();
  swift_unknownObjectRelease();

  sub_100D13C38(v10, type metadata accessor for CRLAssetData);
  v32 = *&v31[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  v33 = *&v31[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
  sub_100020E58(&v31[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v32);
  (*(v33 + 24))(v32, v33);

  if (qword_1019F2878 != -1)
  {
    goto LABEL_8;
  }

LABEL_6:
  v34 = v39;
  sub_1005EB3DC(v39, qword_101AD8F08);
  v35 = static UUID.== infix(_:_:)();
  (*(v38 + 8))(v3, v34);
  return v35 & 1;
}

BOOL sub_100CF6B20(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v3 == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_100CF6B5C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  sub_100D13C98(v2, &v19 - v12, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_100D13C98(v13, v10, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    v14 = *v10;
    v15 = *(sub_1005B981C(&unk_101A1B858, &qword_1014AC368) + 48);
    type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v17 = *(v5 + 32);
      v17(v7, v10 + v15, v4);
      v18 = *(sub_1005B981C(&qword_101A1B828, &qword_1014AC348) + 48);
      *a1 = v14;
      v17(&a1[v18], v7, v4);
      swift_storeEnumTagMultiPayload();
      return sub_100D13C38(v13, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    }

    sub_100D13C38(v10 + v15, type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError);
  }

  sub_100D13C98(v2, a1, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  return sub_100D13C38(v13, type metadata accessor for CRLUSDZRep.PosterLoadingState);
}

uint64_t sub_100CF6DD0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  sub_100D13C98(v2, &v19 - v12, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_100D13C98(v13, v10, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v14 = *v10;
    v15 = *(sub_1005B981C(&qword_101A1B818, &qword_1014AC338) + 48);
    type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v17 = *(v5 + 32);
      v17(v7, v10 + v15, v4);
      v18 = *(sub_1005B981C(&qword_101A1B828, &qword_1014AC348) + 48);
      *a1 = v14;
      v17(&a1[v18], v7, v4);
      swift_storeEnumTagMultiPayload();
      return sub_100D13C38(v13, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    }

    sub_100D13C38(v10 + v15, type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError);
  }

  sub_100D13C98(v2, a1, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  return sub_100D13C38(v13, type metadata accessor for CRLUSDZRep.AssetLoadingState);
}

uint64_t sub_100CF7044()
{
  v1 = type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D13C98(v0, v3, type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v10 = [objc_opt_self() mainBundle];
      v11 = String._bridgeToObjectiveC()();
      v12 = String._bridgeToObjectiveC()();
      v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v6 = [objc_opt_self() mainBundle];
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();
      v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100D13C38(v3, type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError);
    }
  }

  else
  {
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
  }

  return v5;
}

uint64_t sub_100CF729C(uint64_t a1)
{
  v3 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v3);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_posterLoadingState;
  swift_beginAccess();
  sub_100D15E6C(a1, v1 + v6, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  swift_endAccess();
  if (([v1 hasBeenRemoved] & 1) == 0)
  {
    sub_100D13C98(v1 + v6, v5, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {

        v10 = sub_1005B981C(&unk_101A1B858, &qword_1014AC368);
        sub_100D13C38(v5 + *(v10 + 48), type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError);
      }

      else
      {
        sub_100CFB5B4();
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_100D13C38(v5, type metadata accessor for CRLUSDZRep.PosterLoadingState);
      sub_100CFD188();
    }

    else
    {

      v8 = *(sub_1005B981C(&qword_101A1B828, &qword_1014AC348) + 48);
      v9 = type metadata accessor for UUID();
      (*(*(v9 - 8) + 8))(v5 + v8, v9);
    }

    sub_100CF979C();
  }

  return sub_100D13C38(a1, type metadata accessor for CRLUSDZRep.PosterLoadingState);
}

double sub_100CF749C()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_cachedContentPlatformView];
  *&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_cachedContentPlatformView] = 0;

  if ((v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_suppressInvalidateForRenderingStateChange] & 1) == 0 && v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive] == 1)
  {
    v3 = [v0 interactiveCanvasController];
    [v3 invalidateContentLayersForRep:v0];

    [v0 setNeedsDisplay];
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v6 = [v0 debugDescription];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *(inited + 56) = &type metadata for String;
    v10 = sub_1000053B0();
    *(inited + 64) = v10;
    *(inited + 32) = v7;
    *(inited + 40) = v9;
    v11 = &v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
    v12 = *&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
    LOBYTE(v7) = v11[8];
    sub_100D1548C(v12, v7);
    v13 = sub_100CF76B0(v12, v7);
    v15 = v14;
    sub_100D15590(v12, v7);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v10;
    *(inited + 72) = v13;
    *(inited + 80) = v15;
    v16 = static os_log_type_t.debug.getter();
    sub_100005404(v4, &_mh_execute_header, v16, "(USDZRep) [%{public}@] rendering state: %{public}@", 50, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
  }

  return result;
}

uint64_t sub_100CF76B0(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  *&v7 = __chkstk_darwin(v4).n128_u64[0];
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 >> 6) <= 1u)
  {
    if (!(a2 >> 6))
    {
      return 0xD000000000000011;
    }

    v14 = *(a1 + 24);
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    v17 = (v16 >> 4) & 3;
    if (v17)
    {
      v18 = v6;
      if (v17 == 1)
      {
        v74 = *(a1 + 40);
        v75 = 0;
        v76 = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        v19._object = 0x800000010159B030;
        v19._countAndFlagsBits = 0xD000000000000013;
        String.append(_:)(v19);
        ObjectType = swift_getObjectType();
        (*(v14 + 8))(ObjectType, v14);
        UUID.uuidString.getter();
        String.index(_:offsetBy:)();
        String.subscript.getter();

        v21 = static String._fromSubstring(_:)();
        v23 = v22;

        (*(v5 + 8))(v9, v18);
        v24._countAndFlagsBits = v21;
        v24._object = v23;
        String.append(_:)(v24);

        v25._countAndFlagsBits = 0xD000000000000012;
        v25._object = 0x800000010159B050;
        String.append(_:)(v25);
        v26 = [v15 description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30._countAndFlagsBits = v27;
        v30._object = v29;
        String.append(_:)(v30);

        v31._countAndFlagsBits = 0x6E69776F6873202CLL;
        v31._object = 0xEB00000000203A67;
        String.append(_:)(v31);
        v32._countAndFlagsBits = sub_100CF76B0(v74, v16 & 0xCF);
        String.append(_:)(v32);
      }

      else
      {
        v45 = [*(a1 + 32) layer];
        _s10MetalLayerCMa();
        v46 = swift_dynamicCastClass();
        if (v46)
        {
          v47 = v46;
          v75 = 0;
          v76 = 0xE000000000000000;
          _StringGuts.grow(_:)(39);

          v75 = 0xD000000000000013;
          v76 = 0x800000010159B030;
          v48 = swift_getObjectType();
          (*(v14 + 8))(v48, v14);
          UUID.uuidString.getter();
          String.index(_:offsetBy:)();
          String.subscript.getter();

          v49 = static String._fromSubstring(_:)();
          v51 = v50;

          (*(v5 + 8))(v9, v18);
          v52._countAndFlagsBits = v49;
          v52._object = v51;
          String.append(_:)(v52);

          v53._countAndFlagsBits = 0x206C6174656D202CLL;
          v53._object = 0xEF203A726579616CLL;
          String.append(_:)(v53);
          v54 = [v47 description];
          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          v58._countAndFlagsBits = v55;
          v58._object = v57;
          String.append(_:)(v58);

          v59._countAndFlagsBits = 41;
          v59._object = 0xE100000000000000;
          String.append(_:)(v59);

          return v75;
        }

        v75 = 0;
        v76 = 0xE000000000000000;
        _StringGuts.grow(_:)(33);

        v75 = 0xD000000000000013;
        v76 = 0x800000010159B030;
        v60 = swift_getObjectType();
        (*(v14 + 8))(v60, v14);
        UUID.uuidString.getter();
        String.index(_:offsetBy:)();
        String.subscript.getter();

        v61 = static String._fromSubstring(_:)();
        v63 = v62;

        (*(v5 + 8))(v9, v18);
        v64._countAndFlagsBits = v61;
        v64._object = v63;
        String.append(_:)(v64);

        v65._countAndFlagsBits = 0x3A726579616C202CLL;
        v65._object = 0xE900000000000020;
        String.append(_:)(v65);
        v66 = [v15 layer];
        v67 = [v66 description];
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;

        v71._countAndFlagsBits = v68;
        v71._object = v70;
        String.append(_:)(v71);
      }
    }

    else
    {
      v75 = 0;
      v76 = 0xE000000000000000;
      v33 = v6;
      _StringGuts.grow(_:)(32);

      v75 = 0xD000000000000013;
      v76 = 0x800000010159B030;
      v34 = swift_getObjectType();
      (*(v14 + 8))(v34, v14);
      UUID.uuidString.getter();
      String.index(_:offsetBy:)();
      String.subscript.getter();

      v35 = static String._fromSubstring(_:)();
      v37 = v36;

      (*(v5 + 8))(v9, v33);
      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      v39._countAndFlagsBits = 0x203A77656976202CLL;
      v39._object = 0xE800000000000000;
      String.append(_:)(v39);
      v40 = [v15 description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44._countAndFlagsBits = v41;
      v44._object = v43;
      String.append(_:)(v44);
    }

    v72._countAndFlagsBits = 41;
    v72._object = 0xE100000000000000;
    String.append(_:)(v72);
    return v75;
  }

  if (a2 >> 6 == 2)
  {
    v75 = 0x6D49726574736F70;
    v76 = 0xEB00000000656761;
    if (a2)
    {
      v11 = 0x6E6E6970732B2820;
    }

    else
    {
      v11 = 0;
    }

    if (a2)
    {
      v12 = 0xEB00000000297265;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v13 = v12;
    String.append(_:)(*&v11);

    return v75;
  }

  if (a1 | a2 ^ 0xC0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_100CF7EC0()
{
  LODWORD(v1) = [v0 isSelected];
  if (v1)
  {
    v1 = sub_100D0BF4C();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 boardItems];
      type metadata accessor for CRLBoardItem(0);
      sub_100D15398(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
      v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101465920;
      v6 = [v0 info];
      type metadata accessor for CRLUSDZItem(0);
      *(inited + 32) = swift_dynamicCastClassUnconditional();
      sub_1005BC5DC(inited);
      v8 = v7;
      swift_setDeallocating();
      swift_arrayDestroy();
      LOBYTE(inited) = sub_100BC5454(v4, v8);

      if (inited)
      {
        if (byte_1019F2C48 == 1)
        {
          LOBYTE(v1) = sub_100D0D22C();
        }

        else
        {
          LOBYTE(v1) = 1;
        }
      }

      else
      {
        LOBYTE(v1) = 0;
      }
    }
  }

  return v1 & 1;
}

void sub_100CF8070()
{
  *&v200 = type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
  __chkstk_darwin(v200);
  v201 = &v188 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v188 - v3;
  *&v202 = type metadata accessor for URL();
  v203 = *(v202 - 8);
  __chkstk_darwin(v202);
  v199 = &v188 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v188 - v7;
  __chkstk_darwin(v9);
  v11 = &v188 - v10;
  __chkstk_darwin(v12);
  v14 = &v188 - v13;
  __chkstk_darwin(v15);
  v17 = &v188 - v16;
  v18 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v18);
  v198 = (&v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = &v188 - v21;
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = (&v188 - v25);
  v204 = v0;
  if (([v0 hasBeenRemoved] & 1) == 0)
  {
    v196 = v22;
    v27 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    v28 = v204;
    swift_beginAccess();
    v195 = v27;
    sub_100D13C98(&v28[v27], v26, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v197 = v26;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = v18;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v199 = v18;
        v40 = v197;

        v41 = sub_1005B981C(&qword_101A1B818, &qword_1014AC338);
        sub_100D15784(v40 + *(v41 + 48), v201, type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError);
        if (qword_1019F21E0 != -1)
        {
          swift_once();
        }

        v42 = static OS_os_log.crlThreeDimensionalObjects;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        v202 = xmmword_10146BDE0;
        *(inited + 16) = xmmword_10146BDE0;
        v44 = [v204 debugDescription];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        *(inited + 56) = &type metadata for String;
        v48 = sub_1000053B0();
        *(inited + 64) = v48;
        *(inited + 32) = v45;
        *(inited + 40) = v47;
        v49 = sub_100CF7044();
        v50 = v204;
        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v48;
        *(inited + 72) = v49;
        *(inited + 80) = v51;
        v52 = static os_log_type_t.error.getter();
        v203 = v42;
        sub_100005404(v42, &_mh_execute_header, v52, "(USDZRep) [%{public}@] error: %{public}@", 40, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v53 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_errorRecoveryAttempts;
        v54 = *&v50[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_errorRecoveryAttempts];
        if (v54 <= 10)
        {
          *&v50[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_errorRecoveryAttempts] = v54 + 1;
          v97 = swift_initStackObject();
          *(v97 + 16) = v202;
          v98 = [v50 debugDescription];
          v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v101 = v100;

          *(v97 + 32) = v99;
          *(v97 + 56) = &type metadata for String;
          *(v97 + 64) = v48;
          *(v97 + 40) = v101;
          v102 = *&v50[v53];
          *(v97 + 96) = &type metadata for Int;
          *(v97 + 104) = &protocol witness table for Int;
          *(v97 + 72) = v102;
          v103 = static os_log_type_t.debug.getter();
          sub_100005404(v203, &_mh_execute_header, v103, "(USDZRep) [%{public}@] recovering from error with full reset (attempts: %{public}lld)", 85, 2, v97);
          swift_setDeallocating();
          swift_arrayDestroy();
          v104 = v196;
          swift_storeEnumTagMultiPayload();
          v105 = v195;
          swift_beginAccess();
          sub_100D15E6C(v104, &v50[v105], type metadata accessor for CRLUSDZRep.AssetLoadingState);
          swift_endAccess();
          sub_100CF8070();
          sub_100D13C38(v104, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          v64 = v201;
        }

        else
        {
          v55 = swift_initStackObject();
          *(v55 + 16) = v202;
          v56 = [v50 debugDescription];
          v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;

          *(v55 + 56) = &type metadata for String;
          *(v55 + 64) = v48;
          *(v55 + 32) = v57;
          *(v55 + 40) = v59;
          v60 = v201;
          v61 = sub_100CF7044();
          *(v55 + 96) = &type metadata for String;
          *(v55 + 104) = v48;
          *(v55 + 72) = v61;
          *(v55 + 80) = v62;
          v63 = static os_log_type_t.error.getter();
          sub_100005404(v203, &_mh_execute_header, v63, "(USDZRep) [%{public}@] out of recovery attempts, giving up", 58, 2, v55);
          swift_setDeallocating();
          swift_arrayDestroy();
          v64 = v60;
        }

        sub_100D13C38(v64, type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError);
      }

      else if (EnumCaseMultiPayload == 4)
      {
        sub_100CFD258();
      }

      goto LABEL_73;
    }

    if (EnumCaseMultiPayload)
    {
      v31 = v197;
      if (EnumCaseMultiPayload == 1)
      {

        v32 = *(v31 + 8);
        v33 = *(sub_1005B981C(&qword_101A1B820, &qword_1014AC340) + 64);
        v34 = v202;
        if (v32 != 1)
        {
          (*(v203 + 8))(v31 + v33, v202);
          return;
        }

        v35 = v203;
        v36 = v204[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy];
        if (v36 <= 1)
        {
          if (v204[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy])
          {
            sub_100D00BFC();
          }

          else
          {
            sub_100D00350();
          }
        }

        else if (v36 == 2)
        {
          sub_100CFFAE8();
        }

        else if (v36 == 3)
        {
          sub_100D01480();
        }

        (*(v35 + 8))(v31 + v33, v34);
        goto LABEL_73;
      }

      v65 = *v197;
      v66 = sub_1005B981C(&unk_101A1B808, &qword_1014AC330);
      v201 = v66[12];
      v67 = *(v31 + v66[16]);
      v68 = (v31 + v66[20]);
      v69 = v68[4];
      v70 = v68[5];
      v71 = v68[6];
      if (!(v70 >> 62))
      {
        v200 = v67;
        v198 = v65;

        v106 = v203;
        v107 = v202;
        (*(v203 + 32))(v8, v197 + v201, v202);
        v108 = v196;
        if ((byte_1019F2C48 & 1) != 0 && (sub_100D0D22C() & 1) == 0)
        {
          v141 = *(sub_1005B981C(&qword_101A1B820, &qword_1014AC340) + 64);
          v142 = v198;
          *v108 = v198;
          *(v108 + 8) = 0;
          (*(v106 + 16))(v108 + v141, v8, v107);
          swift_storeEnumTagMultiPayload();
          v143 = v195;
          v144 = v204;
          swift_beginAccess();
          v145 = v142;
          sub_100D15E6C(v108, &v144[v143], type metadata accessor for CRLUSDZRep.AssetLoadingState);
          swift_endAccess();
          sub_100CF8070();

          swift_unknownObjectRelease();
          sub_100D13C38(v108, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          (*(v106 + 8))(v8, v107);
        }

        else
        {
          v109 = swift_allocObject();
          v110 = v204;
          *(v109 + 16) = v204;
          v111 = type metadata accessor for TaskPriority();
          (*(*(v111 - 8) + 56))(v4, 1, 1, v111);
          type metadata accessor for MainActor();
          v112 = v107;
          v113 = v110;
          swift_unknownObjectRetain();

          v114 = static MainActor.shared.getter();
          v115 = swift_allocObject();
          *(v115 + 16) = v114;
          *(v115 + 24) = &protocol witness table for MainActor;
          *(v115 + 32) = v113;
          *(v115 + 40) = v200;
          *(v115 + 56) = &unk_1014AC3E8;
          *(v115 + 64) = v109;
          sub_10064191C(0, 0, v4, &unk_1014AC3F0, v115);

          swift_unknownObjectRelease();

          (*(v106 + 8))(v8, v112);
        }

        goto LABEL_73;
      }

      v73 = *v68;
      v72 = v68[1];
      v74 = v68[2];
      v75 = v68[3];
      if (v70 >> 62 != 1)
      {
        v116 = v74 | v72;
        v117 = v203;
        if (v70 != 0x8000000000000000 || v116 | v73 | v75 | v69 | v71)
        {
          if (v70 == 0x8000000000000000 && v73 == 1 && !(v71 | v69 | v116 | v75))
          {
            swift_unknownObjectRelease();
            v140 = v202;
            (*(v117 + 32))(v14, v197 + v201, v202);
            if (byte_1019F2C48 == 1 && (sub_100D0D22C() & 1) == 0)
            {
              v170 = *(sub_1005B981C(&qword_101A1B820, &qword_1014AC340) + 64);
              v171 = v196;
              *v196 = v65;
              *(v171 + 8) = 0;
              (*(v117 + 16))(v171 + v170, v14, v140);
              swift_storeEnumTagMultiPayload();
              v172 = v195;
              v173 = v204;
              swift_beginAccess();
              v174 = v65;
              sub_100D15E6C(v171, &v173[v172], type metadata accessor for CRLUSDZRep.AssetLoadingState);
              swift_endAccess();
              sub_100CF8070();

              sub_100D13C38(v171, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            }

            else
            {
            }

            (*(v117 + 8))(v14, v140);
          }

          else
          {
            swift_unknownObjectRelease();
            v146 = v202;
            (*(v117 + 32))(v11, v197 + v201, v202);
            if ((byte_1019F2C48 & 1) != 0 && (sub_100D0D22C() & 1) == 0)
            {
              v175 = *(sub_1005B981C(&qword_101A1B820, &qword_1014AC340) + 64);
              v176 = v196;
              *v196 = v65;
              *(v176 + 8) = 0;
              (*(v117 + 16))(v176 + v175, v11, v146);
              swift_storeEnumTagMultiPayload();
              v177 = v195;
              v178 = v204;
              swift_beginAccess();
              v179 = v65;
              sub_100D15E6C(v176, &v178[v177], type metadata accessor for CRLUSDZRep.AssetLoadingState);
              swift_endAccess();
              sub_100CF8070();

              sub_100D13C38(v176, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            }

            else
            {
            }

            (*(v117 + 8))(v11, v146);
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v118 = v202;
          (*(v117 + 32))(v17, v197 + v201, v202);
          if (byte_1019F2C48 == 1 && (sub_100D0D22C() & 1) == 0)
          {
            v165 = *(sub_1005B981C(&qword_101A1B820, &qword_1014AC340) + 64);
            v166 = v196;
            *v196 = v65;
            *(v166 + 8) = 0;
            (*(v117 + 16))(v166 + v165, v17, v118);
            swift_storeEnumTagMultiPayload();
            v167 = v195;
            v168 = v204;
            swift_beginAccess();
            v169 = v65;
            sub_100D15E6C(v166, &v168[v167], type metadata accessor for CRLUSDZRep.AssetLoadingState);
            swift_endAccess();
            sub_100CF8070();

            sub_100D13C38(v166, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          }

          else
          {
            sub_100D01D3C();
          }

          (*(v117 + 8))(v17, v118);
        }

        goto LABEL_73;
      }

      v189 = v68[3];
      v190 = v69;
      v191 = v71;
      v194 = v74;
      swift_unknownObjectRelease();
      v193 = v73;
      if (v194 == 4)
      {
        if (v72 == 1)
        {
          v76 = v203;
          v77 = v202;
          v78 = v199;
          v188 = *(v203 + 16);
          v188(v199, v197 + v201, v202);
          v79 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_errorRecoveryAttempts;
          if (*&v204[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_errorRecoveryAttempts] <= 9)
          {
            v80 = byte_1019F2C48;
            byte_1019F2C48 = 1;
            if ((v80 & 1) == 0)
            {
              if (qword_1019F21E0 != -1)
              {
                swift_once();
              }

              v81 = static OS_os_log.crlThreeDimensionalObjects;
              sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
              v82 = swift_initStackObject();
              *(v82 + 16) = xmmword_10146C6B0;
              v83 = byte_1019F2C48;
              *(v82 + 56) = &type metadata for Bool;
              *(v82 + 64) = &protocol witness table for Bool;
              *(v82 + 32) = v83;
              v84 = static os_log_type_t.error.getter();
              sub_100005404(v81, &_mh_execute_header, v84, "Last connection jetsamed set to: %d.", 36, 2, v82);
              swift_setDeallocating();
              sub_100005070((v82 + 32));
            }

            v85 = *&v204[v79];
            v86 = __OFADD__(v85, 1);
            v87 = v85 + 1;
            if (v86)
            {
              __break(1u);
            }

            else
            {
              *&v204[v79] = v87;
              if (qword_1019F21E0 == -1)
              {
LABEL_29:
                *&v200 = static OS_os_log.crlThreeDimensionalObjects;
                sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                v88 = swift_initStackObject();
                *(v88 + 16) = xmmword_10146C6B0;
                v89 = [v204 debugDescription];
                v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v92 = v91;

                *(v88 + 56) = &type metadata for String;
                *(v88 + 64) = sub_1000053B0();
                *(v88 + 32) = v90;
                *(v88 + 40) = v92;
                v93 = static os_log_type_t.error.getter();
                sub_100005404(v200, &_mh_execute_header, v93, "(USDZRep) [%{public}@] extension disconnected, falling back to low memory mode...", 81, 2, v88);
                swift_setDeallocating();
                sub_100005070((v88 + 32));
                *v198 = v65;
                LODWORD(v88) = byte_1019F2C48;
                v94 = v65;
                if (v88 == 1)
                {
                  v95 = sub_100D0D22C();
                  v78 = v199;
                  v96 = v95;
                }

                else
                {
                  v96 = 1;
                }

                v180 = *(sub_1005B981C(&qword_101A1B820, &qword_1014AC340) + 64);
                v181 = v96 & 1;
                v182 = v198;
                *(v198 + 8) = v181;
                v183 = v202;
                v188(&v182[v180], v78, v202);
                swift_storeEnumTagMultiPayload();
                v184 = v195;
                v185 = v78;
                v186 = v204;
                swift_beginAccess();
                sub_100D15E6C(v182, &v186[v184], type metadata accessor for CRLUSDZRep.AssetLoadingState);
                swift_endAccess();
                sub_100CF8070();
                sub_100863E8C(v193, 1uLL, v194, v189, v190, v70);

                sub_100D13C38(v182, type metadata accessor for CRLUSDZRep.AssetLoadingState);
                v187 = *(v203 + 8);
                v187(v185, v183);
                v187(v197 + v201, v183);
                goto LABEL_73;
              }
            }

            swift_once();
            goto LABEL_29;
          }

          (*(v76 + 8))(v78, v77);
          v73 = v193;
          v72 = 1;
        }

        v192 = v72;
        v198 = v65;
        v199 = v30;
        sub_10086756C(v73, v72, 4u);
        if (qword_1019F21E0 != -1)
        {
          swift_once();
        }

        v188 = static OS_os_log.crlThreeDimensionalObjects;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v147 = swift_initStackObject();
        *(v147 + 16) = xmmword_10146BDE0;
        v148 = v204;
        v149 = [v204 debugDescription];
        v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v152 = v151;

        *(v147 + 56) = &type metadata for String;
        v153 = sub_1000053B0();
        *(v147 + 64) = v153;
        *(v147 + 32) = v150;
        *(v147 + 40) = v152;
        v154 = v192;
        v205 = v193;
        v206 = v192;
        sub_1008CF11C();
        v155 = v148;
        v156 = Error.localizedDescription.getter();
        *(v147 + 96) = &type metadata for String;
        *(v147 + 104) = v153;
        *(v147 + 72) = v156;
        *(v147 + 80) = v157;
        v158 = static os_log_type_t.error.getter();
        sub_100005404(v188, &_mh_execute_header, v158, "(USDZRep) [%{public}@] extension error: %{public}@", 50, 2, v147);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v159 = *(sub_1005B981C(&qword_101A1B818, &qword_1014AC338) + 48);
        v133 = v196;
        v160 = v198;
        *v196 = v198;
        v161 = swift_allocError();
        v162 = v193;
        *v163 = v193;
        v163[1] = v154;
        *(v133 + v159) = v161;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v164 = v195;
        swift_beginAccess();
        v139 = v160;
        sub_100D15E6C(v133, &v155[v164], type metadata accessor for CRLUSDZRep.AssetLoadingState);
        swift_endAccess();
        sub_100CF8070();
        sub_100863E8C(v162, v154, v194, v189, v190, v70);
      }

      else
      {
        v192 = v72;
        v198 = v65;
        v199 = v30;
        if (qword_1019F21E0 != -1)
        {
          swift_once();
        }

        v191 = static OS_os_log.crlThreeDimensionalObjects;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v119 = swift_initStackObject();
        *(v119 + 16) = xmmword_10146BDE0;
        v120 = v204;
        v121 = [v204 debugDescription];
        v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v124 = v123;

        *(v119 + 56) = &type metadata for String;
        v125 = sub_1000053B0();
        *(v119 + 64) = v125;
        *(v119 + 32) = v122;
        *(v119 + 40) = v124;
        v126 = v193;
        v205 = v193;
        v206 = v192;
        v127 = v194;
        v207 = v194;
        sub_10086E6A0();
        v128 = v120;
        v129 = Error.localizedDescription.getter();
        *(v119 + 96) = &type metadata for String;
        *(v119 + 104) = v125;
        *(v119 + 72) = v129;
        *(v119 + 80) = v130;
        v131 = static os_log_type_t.error.getter();
        sub_100005404(v191, &_mh_execute_header, v131, "(USDZRep) [%{public}@] renderer error: %{public}@", 49, 2, v119);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v132 = *(sub_1005B981C(&qword_101A1B818, &qword_1014AC338) + 48);
        v133 = v196;
        v134 = v198;
        *v196 = v198;
        v135 = swift_allocError();
        v136 = v192;
        *v137 = v126;
        *(v137 + 8) = v136;
        *(v137 + 16) = v127;
        *(v133 + v132) = v135;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v138 = v195;
        swift_beginAccess();
        v139 = v134;
        sub_100D15E6C(v133, &v128[v138], type metadata accessor for CRLUSDZRep.AssetLoadingState);
        swift_endAccess();
        sub_100CF8070();
      }

      sub_100D13C38(v133, type metadata accessor for CRLUSDZRep.AssetLoadingState);
      (*(v203 + 8))(v197 + v201, v202);
    }

    else
    {
      v37 = v197;

      v38 = *(sub_1005B981C(&qword_101A1B828, &qword_1014AC348) + 48);
      v39 = type metadata accessor for UUID();
      (*(*(v39 - 8) + 8))(v37 + v38, v39);
    }

LABEL_73:
    sub_100CF979C();
  }
}

void sub_100CF979C()
{
  v273 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v273);
  v271 = v255 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = (v255 - v3);
  __chkstk_darwin(v5);
  v7 = (v255 - v6);
  __chkstk_darwin(v8);
  v10 = (v255 - v9);
  v11 = sub_1005B981C(&qword_101A1B868, &unk_1014AC3D0);
  __chkstk_darwin(v11);
  v13 = v255 - v12;
  v274 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v274);
  v15 = v255 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v255 - v17;
  *&v20 = __chkstk_darwin(v19).n128_u64[0];
  v22 = v255 - v21;
  if (([v0 hasBeenRemoved] & 1) == 0)
  {
    v269 = v7;
    v270 = v4;
    v23 = v0;
    v24 = v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy];
    v25 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_posterLoadingState;
    swift_beginAccess();
    sub_100D13C98(&v23[v25], v22, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    v26 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    v27 = &v13[*(v11 + 48)];
    v28 = &v13[*(v11 + 64)];
    v29 = v22;
    v30 = v27;
    sub_100D15784(v29, v27, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    v272 = v23;
    sub_100D13C98(&v23[v26], v28, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    if (v24 > 1)
    {
      if (v24 != 2)
      {
        if (v24 != 3)
        {
          v32 = v272;
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {

              v113 = v30;
              v114 = *(sub_1005B981C(&unk_101A1B858, &qword_1014AC368) + 48);
              v115 = sub_100D033E8(v32);
              v117 = v116;
              v118 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
              v119 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
              *v118 = v115;
              v120 = v118[8];
              v118[8] = v116;
              sub_100D1548C(v115, v116);
              sub_100D15590(v119, v120);
              sub_100CF749C();
              sub_100D15590(v115, v117);
              sub_100D13C38(v113 + v114, type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError);
              goto LABEL_71;
            }
          }

          else
          {
            if (EnumCaseMultiPayload)
            {
              v127 = *(v30 + 8);

              if (swift_getEnumCaseMultiPayload() == 2)
              {
                sub_100D13C98(v28, v10, type metadata accessor for CRLUSDZRep.AssetLoadingState);

                v128 = sub_1005B981C(&unk_101A1B808, &qword_1014AC330);
                v129 = *(v128 + 48);
                swift_unknownObjectRelease();
                v130 = (v10 + *(v128 + 80));
                v131 = *v130;
                v132 = v130[1];
                v133 = v130[2];
                v134 = v130[3];
                v135 = v130[4];
                v136 = v130[5];
                v137 = v130[6];
                if (v136 >> 62 == 2)
                {
                  if ((v138 = v133 | v132 | v134 | v135, !v137) && v136 == 0x8000000000000000 && v131 == 1 && !v138 || !v137 && v136 == 0x8000000000000000 && v131 == 2 && !v138)
                  {
                    v139 = type metadata accessor for URL();
                    (*(*(v139 - 8) + 8))(v10 + v129, v139);
                    sub_100D13C38(v28, type metadata accessor for CRLUSDZRep.AssetLoadingState);
                    if (byte_1019F2C48 == 1)
                    {
                      v140 = sub_100D0D22C();
                    }

                    else
                    {
                      v140 = 1;
                    }

                    v206 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
                    v207 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
                    *v206 = v127;
                    v208 = v206[8];
                    v206[8] = v140 & 1 | 0x80;
                    v209 = v127;
                    sub_100D15590(v207, v208);
                    sub_100CF749C();

                    goto LABEL_77;
                  }
                }

                sub_100863E8C(v131, v132, v133, v134, v135, v136);
                v167 = type metadata accessor for URL();
                (*(*(v167 - 8) + 8))(v10 + v129, v167);
              }

              v168 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
              v169 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
              *v168 = v127;
              v170 = v168[8];
              v168[8] = 0x80;
              v171 = v127;
              sub_100D15590(v169, v170);
              sub_100CF749C();

              goto LABEL_71;
            }

            v98 = *(sub_1005B981C(&qword_101A1B828, &qword_1014AC348) + 48);
            v99 = type metadata accessor for UUID();
            (*(*(v99 - 8) + 8))(v30 + v98, v99);
          }

          sub_100D13C38(v28, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          v121 = sub_100D033E8(v32);
          v123 = v122;
          v124 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          v125 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          *v124 = v121;
          v126 = v124[8];
          v124[8] = v122;
          sub_100D1548C(v121, v122);
          sub_100D15590(v125, v126);
          sub_100CF749C();
          sub_100D15590(v121, v123);
          goto LABEL_77;
        }

        v31 = swift_getEnumCaseMultiPayload();
        v32 = v272;
        if (v31 == 1)
        {
          sub_100D13C98(v30, v15, type metadata accessor for CRLUSDZRep.PosterLoadingState);

          v33 = *(v15 + 1);
          if (swift_getEnumCaseMultiPayload() == 2)
          {

            v34 = sub_1005B981C(&unk_101A1B808, &qword_1014AC330);
            v35 = *(v34 + 48);
            swift_unknownObjectRelease();
            v36 = v28 + *(v34 + 80);
            sub_100863E8C(*v36, *(v36 + 1), *(v36 + 2), *(v36 + 3), *(v36 + 4), *(v36 + 5));
            v37 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            v38 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            *v37 = v33;
            v39 = v37[8];
            v37[8] = 0x80;
            v40 = v33;
            sub_100D15590(v38, v39);
            sub_100CF749C();

            v41 = type metadata accessor for URL();
            (*(*(v41 - 8) + 8))(v28 + v35, v41);
LABEL_75:
            v195 = type metadata accessor for CRLUSDZRep.PosterLoadingState;
            v196 = v30;
            goto LABEL_76;
          }
        }

LABEL_69:
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          if (swift_getEnumCaseMultiPayload() == 5)
          {
            v197 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            v198 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            *v197 = 1;
            v199 = v197[8];
            v197[8] = -64;
            sub_100D15590(v198, v199);
            sub_100CF749C();
          }

          else
          {
            v200 = sub_100D033E8(v32);
            v202 = v201;
            v203 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            v204 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            *v203 = v200;
            v205 = v203[8];
            v203[8] = v201;
            sub_100D1548C(v200, v201);
            sub_100D15590(v204, v205);
            sub_100CF749C();
            sub_100D15590(v200, v202);
            sub_100D13C38(v28, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          }

          goto LABEL_75;
        }

        v188 = *(v30 + 8);

        v189 = v188;
        v190 = sub_100CF7EC0();
        v191 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
        v192 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
        *v191 = v189;
        v193 = v191[8];
        v191[8] = v190 & 1 | 0x80;
        v194 = v189;
        sub_100D15590(v192, v193);
        sub_100CF749C();

LABEL_71:
        v195 = type metadata accessor for CRLUSDZRep.AssetLoadingState;
        v196 = v28;
LABEL_76:
        sub_100D13C38(v196, v195);
LABEL_77:
        if (v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive] == 1)
        {
          [v32 invalidateKnobs];
        }

        return;
      }

      v64 = swift_getEnumCaseMultiPayload();
      v32 = v272;
      if (v64 != 2)
      {
        goto LABEL_69;
      }

      v267 = v28;
      v268 = v30;
      v65 = v270;
      sub_100D13C98(v28, v270, type metadata accessor for CRLUSDZRep.AssetLoadingState);

      v66 = sub_1005B981C(&unk_101A1B808, &qword_1014AC330);
      v271 = v66[12];
      v67 = *(v65 + v66[16]);
      v68 = (v65 + v66[20]);
      v69 = *v68;
      v70 = v68[1];
      v71 = v68[2];
      v72 = v68[3];
      v73 = v68[4];
      v74 = v68[5];
      _s13ARViewBackendCMa(0);
      v75 = swift_dynamicCastClass();
      if (v75)
      {
        if (!(v74 >> 62))
        {
          v76 = v75;
          swift_unknownObjectRetain();

          v77 = v76[9];
          v269 = v67;
          if (v77 >> 62 == 1)
          {
            v78 = v76[16];
            v79 = v76[14];
            v264 = v76[15];
            v265 = v78;
            v80 = v76[13];
            v260 = v76[12];
            v81 = v76[10];
            v273 = v76[11];
            v274 = v80;
            v266 = v81;
            v82 = v76[8];
            v255[0] = v76[7];
            v255[1] = v79;
            v262 = v76[6];
            v83 = v262;
            v263 = v82;
            v84 = *(v255[0] + 88);
            v85 = &v272[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            v257 = *&v272[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
            v258 = v84;
            v256 = v272[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
            v259 = v76;
            v86 = v77;
            v261 = v77;
            swift_unknownObjectRetain();
            v87 = v83;
            v88 = v255[0];
            sub_100D15C44(v87, v255[0], v82, v86);
            v89 = v88;

            v90 = v258;
            v91 = v257;
            v92 = v256;
            sub_100D1548C(v257, v256);
            v93 = sub_100D13EF4(v259, v90, v91, v92);
            v95 = v94;
            sub_100D15590(v91, v92);
            swift_unknownObjectRelease();

            v96 = *v85;
            *v85 = v93;
            LOBYTE(v92) = v85[8];
            v85[8] = v95;
            sub_100D1548C(v93, v95);
            sub_100D15590(v96, v92);
            sub_100CF749C();
            sub_100D15590(v93, v95);

            swift_unknownObjectRelease_n();
            sub_100D15CC4(v262, v89, v263, v261);
          }

          else
          {
            v274 = objc_opt_self();
            v144 = [v274 _atomicIncrementAssertCount];
            v275 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v275, "USD renderer state mismatch - expected to find view.", 52, 2u);
            StaticString.description.getter("updateRenderingStateIfNeeded()", 30, 2);
            v145 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
            v146 = String._bridgeToObjectiveC()();

            v147 = [v146 lastPathComponent];

            v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v150 = v149;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v151 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146CA70;
            *(inited + 56) = &type metadata for Int32;
            *(inited + 64) = &protocol witness table for Int32;
            *(inited + 32) = v144;
            v153 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
            *(inited + 96) = v153;
            v154 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
            *(inited + 104) = v154;
            *(inited + 72) = v145;
            *(inited + 136) = &type metadata for String;
            v155 = sub_1000053B0();
            *(inited + 112) = v148;
            *(inited + 120) = v150;
            *(inited + 176) = &type metadata for UInt;
            *(inited + 184) = &protocol witness table for UInt;
            *(inited + 144) = v155;
            *(inited + 152) = 824;
            v156 = v275;
            *(inited + 216) = v153;
            *(inited + 224) = v154;
            *(inited + 192) = v156;
            v157 = v145;
            v158 = v156;
            v159 = static os_log_type_t.error.getter();
            sub_100005404(v151, &_mh_execute_header, v159, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
            swift_arrayDestroy();
            v160 = static os_log_type_t.error.getter();
            sub_100005404(v151, &_mh_execute_header, v160, "USD renderer state mismatch - expected to find view.", 52, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v161 = swift_allocObject();
            v161[2] = 8;
            v161[3] = 0;
            v161[4] = 0;
            v161[5] = 0;
            v162 = __VaListBuilder.va_list()();
            StaticString.description.getter("updateRenderingStateIfNeeded()", 30, 2);
            v163 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
            v164 = String._bridgeToObjectiveC()();

            StaticString.description.getter("USD renderer state mismatch - expected to find view.", 52, 2);
            v165 = String._bridgeToObjectiveC()();

            [v274 handleFailureInFunction:v163 file:v164 lineNumber:824 isFatal:0 format:v165 args:v162];
            swift_unknownObjectRelease_n();
          }

          v166 = type metadata accessor for URL();
          (*(*(v166 - 8) + 8))(v270 + v271, v166);
LABEL_56:
          sub_100D13C38(v267, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          sub_100D13C38(v268, type metadata accessor for CRLUSDZRep.PosterLoadingState);
          v32 = v272;
          goto LABEL_77;
        }

        sub_100863E8C(v69, v70, v71, v72, v73, v74);
        swift_unknownObjectRelease();
        v142 = type metadata accessor for URL();
        (*(*(v142 - 8) + 8))(v270 + v271, v142);
      }

      else
      {
        sub_100863E8C(v69, v70, v71, v72, v73, v74);
        swift_unknownObjectRelease();
        v141 = type metadata accessor for URL();
        (*(*(v141 - 8) + 8))(v65 + v271, v141);
      }

      v32 = v272;
      v28 = v267;
      v30 = v268;
      goto LABEL_69;
    }

    if (!v24)
    {
      v42 = swift_getEnumCaseMultiPayload();
      v32 = v272;
      if (v42 != 2)
      {
        goto LABEL_69;
      }

      v268 = v30;
      v43 = v271;
      sub_100D13C98(v28, v271, type metadata accessor for CRLUSDZRep.AssetLoadingState);

      v44 = sub_1005B981C(&unk_101A1B808, &qword_1014AC330);
      v45 = v44[12];
      v46 = *(v43 + v44[16]);
      v47 = (v43 + v44[20]);
      v48 = *v47;
      v49 = v47[1];
      v50 = v47[2];
      v267 = v47[3];
      v51 = v47[5];
      v269 = v47[4];
      v270 = v45;
      if (object_getClass(v46) == _TtCOO8Freeform15CRLUSDRendering6CoreRE10RepBackend && v46 && (v266 = v46, !(v51 >> 62)))
      {
        v52 = v266;
        swift_unknownObjectRetain();

        if (v51)
        {
          v53 = *(v52 + 32);
          if (!v53)
          {
            v267 = v28;
            v274 = objc_opt_self();
            v210 = [v274 _atomicIncrementAssertCount];
            v275 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v275, "USD renderer configuration mismatch - expected to find metal layer.", 67, 2u);
            StaticString.description.getter("updateRenderingStateIfNeeded()", 30, 2);
            v273 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
            v211 = String._bridgeToObjectiveC()();

            v212 = [v211 lastPathComponent];

            v213 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v269 = v214;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v215 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v216 = swift_initStackObject();
            *(v216 + 16) = xmmword_10146CA70;
            *(v216 + 56) = &type metadata for Int32;
            *(v216 + 64) = &protocol witness table for Int32;
            *(v216 + 32) = v210;
            v217 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
            *(v216 + 96) = v217;
            v218 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
            *(v216 + 104) = v218;
            v219 = v273;
            *(v216 + 72) = v273;
            *(v216 + 136) = &type metadata for String;
            v220 = sub_1000053B0();
            v221 = v269;
            *(v216 + 112) = v213;
            *(v216 + 120) = v221;
            *(v216 + 176) = &type metadata for UInt;
            *(v216 + 184) = &protocol witness table for UInt;
            *(v216 + 144) = v220;
            *(v216 + 152) = 841;
            v222 = v275;
            *(v216 + 216) = v217;
            *(v216 + 224) = v218;
            *(v216 + 192) = v222;
            v223 = v219;
            v224 = v222;
            v225 = static os_log_type_t.error.getter();
            sub_100005404(v215, &_mh_execute_header, v225, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v216);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
            swift_arrayDestroy();
            v226 = static os_log_type_t.error.getter();
            sub_100005404(v215, &_mh_execute_header, v226, "USD renderer configuration mismatch - expected to find metal layer.", 67, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v227 = swift_allocObject();
            v227[2] = 8;
            v227[3] = 0;
            v227[4] = 0;
            v227[5] = 0;
            v228 = __VaListBuilder.va_list()();
            StaticString.description.getter("updateRenderingStateIfNeeded()", 30, 2);
            v229 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
            v230 = String._bridgeToObjectiveC()();

            StaticString.description.getter("USD renderer configuration mismatch - expected to find metal layer.", 67, 2);
            v231 = String._bridgeToObjectiveC()();

            [v274 handleFailureInFunction:v229 file:v230 lineNumber:841 isFatal:0 format:v231 args:v228];
            swift_unknownObjectRelease_n();

            v232 = type metadata accessor for URL();
            (*(*(v232 - 8) + 8))(v270 + v271, v232);
            v186 = v267;
            goto LABEL_85;
          }

          v54 = &v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          v55 = *&v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          v56 = v32[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
          swift_unknownObjectRetain();
          v57 = v53;
          sub_100D1548C(v55, v56);
          v58 = sub_100D13DF8(v52, v57, v55, v56);
          v60 = v59;
          sub_100D15590(v55, v56);
          swift_unknownObjectRelease();
          v61 = *v54;
          *v54 = v58;
          v62 = v54[8];
          v54[8] = v60;
          sub_100D1548C(v58, v60);
          sub_100D15590(v61, v62);
          sub_100CF749C();
          sub_100D15590(v58, v60);
          swift_unknownObjectRelease_n();

          v63 = type metadata accessor for URL();
          (*(*(v63 - 8) + 8))(v270 + v271, v63);
LABEL_64:
          v186 = v28;
LABEL_85:
          sub_100D13C38(v186, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          v195 = type metadata accessor for CRLUSDZRep.PosterLoadingState;
          v196 = v268;
          goto LABEL_76;
        }

        swift_unknownObjectRelease_n();
      }

      else
      {
        sub_100863E8C(v48, v49, v50, v267, v269, v51);
        swift_unknownObjectRelease();
      }

      v143 = type metadata accessor for URL();
      (*(*(v143 - 8) + 8))(v270 + v43, v143);
      v30 = v268;
      goto LABEL_69;
    }

    v100 = swift_getEnumCaseMultiPayload();
    v32 = v272;
    if (v100 != 2)
    {
      goto LABEL_69;
    }

    v101 = v269;
    sub_100D13C98(v28, v269, type metadata accessor for CRLUSDZRep.AssetLoadingState);

    v102 = sub_1005B981C(&unk_101A1B808, &qword_1014AC330);
    v103 = *(v102 + 48);
    v104 = v101 + *(v102 + 80);
    v105 = *(v104 + 5);
    if (v105 >> 62)
    {
      sub_100863E8C(*v104, *(v104 + 1), *(v104 + 2), *(v104 + 3), *(v104 + 4), *(v104 + 5));
      swift_unknownObjectRelease();
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v271 = v103;
        sub_100D13C98(v30, v18, type metadata accessor for CRLUSDZRep.PosterLoadingState);

        v106 = *(v18 + 1);
        v107 = v272;
        if (v272[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_shouldUpdateRenderingStateForSceneCapture] == 1)
        {
          swift_unknownObjectRelease();

          v108 = &v107[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          v109 = *&v107[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          *v108 = v106;
          v110 = v108[8];
          v108[8] = 0x80;
          v111 = v106;
          sub_100D15590(v109, v110);
          sub_100CF749C();

          v112 = type metadata accessor for URL();
          (*(*(v112 - 8) + 8))(v101 + v271, v112);
          sub_100D13C38(v28, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          sub_100D13C38(v30, type metadata accessor for CRLUSDZRep.PosterLoadingState);
          v32 = v107;
          goto LABEL_77;
        }

        v103 = v271;
      }

      _s15AppExRepBackendCMa(0);
      v172 = swift_dynamicCastClass();
      if (v172)
      {
        v173 = v172;
        swift_unknownObjectRetain();

        if (v105)
        {
          v174 = *&v173[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE15AppExRepBackend_metalLayer];
          v268 = v30;
          v271 = v103;
          if (!v174)
          {
            v267 = v28;
            v274 = objc_opt_self();
            v233 = [v274 _atomicIncrementAssertCount];
            v275 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v275, "USD renderer configuration mismatch - expected to find metal layer.", 67, 2u);
            StaticString.description.getter("updateRenderingStateIfNeeded()", 30, 2);
            v273 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
            v234 = String._bridgeToObjectiveC()();

            v235 = [v234 lastPathComponent];

            v270 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v237 = v236;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v238 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v239 = swift_initStackObject();
            *(v239 + 16) = xmmword_10146CA70;
            *(v239 + 56) = &type metadata for Int32;
            *(v239 + 64) = &protocol witness table for Int32;
            *(v239 + 32) = v233;
            v240 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
            *(v239 + 96) = v240;
            v241 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
            *(v239 + 104) = v241;
            v242 = v273;
            *(v239 + 72) = v273;
            *(v239 + 136) = &type metadata for String;
            v243 = sub_1000053B0();
            *(v239 + 112) = v270;
            *(v239 + 120) = v237;
            *(v239 + 176) = &type metadata for UInt;
            *(v239 + 184) = &protocol witness table for UInt;
            *(v239 + 144) = v243;
            *(v239 + 152) = 861;
            v244 = v275;
            *(v239 + 216) = v240;
            *(v239 + 224) = v241;
            *(v239 + 192) = v244;
            v245 = v242;
            v246 = v244;
            v247 = static os_log_type_t.error.getter();
            sub_100005404(v238, &_mh_execute_header, v247, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v239);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
            swift_arrayDestroy();
            v248 = static os_log_type_t.error.getter();
            sub_100005404(v238, &_mh_execute_header, v248, "USD renderer configuration mismatch - expected to find metal layer.", 67, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v249 = swift_allocObject();
            v249[2] = 8;
            v249[3] = 0;
            v249[4] = 0;
            v249[5] = 0;
            v250 = __VaListBuilder.va_list()();
            StaticString.description.getter("updateRenderingStateIfNeeded()", 30, 2);
            v251 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
            v252 = String._bridgeToObjectiveC()();

            StaticString.description.getter("USD renderer configuration mismatch - expected to find metal layer.", 67, 2);
            v253 = String._bridgeToObjectiveC()();

            [v274 handleFailureInFunction:v251 file:v252 lineNumber:861 isFatal:0 format:v253 args:v250];
            swift_unknownObjectRelease_n();

            v254 = type metadata accessor for URL();
            (*(*(v254 - 8) + 8))(v269 + v271, v254);
            goto LABEL_56;
          }

          v175 = v272;
          v176 = &v272[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          v177 = *&v272[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
          v178 = v272[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
          swift_unknownObjectRetain();
          v179 = v174;
          sub_100D1548C(v177, v178);
          v180 = sub_100D13D00(v173, v179, v177, v178);
          v182 = v181;
          sub_100D15590(v177, v178);
          swift_unknownObjectRelease();
          v183 = *v176;
          *v176 = v180;
          v184 = v176[8];
          v176[8] = v182;
          v32 = v175;
          sub_100D1548C(v180, v182);
          sub_100D15590(v183, v184);
          sub_100CF749C();
          sub_100D15590(v180, v182);
          swift_unknownObjectRelease_n();

          v185 = type metadata accessor for URL();
          (*(*(v185 - 8) + 8))(v269 + v271, v185);
          goto LABEL_64;
        }

        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v187 = type metadata accessor for URL();
    (*(*(v187 - 8) + 8))(v101 + v103, v187);
    v32 = v272;
    goto LABEL_69;
  }
}

void sub_100CFB5B4()
{
  v1 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v1 - 8);
  v3 = v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v4 - 8);
  v6 = v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v130 = v123 - v8;
  __chkstk_darwin(v9);
  v128 = v123 - v10;
  v11 = type metadata accessor for UUID();
  v133 = *(v11 - 1);
  v134 = v11;
  v12 = *(v133 + 64);
  __chkstk_darwin(v11);
  v13 = v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v129 = v123 - v15;
  __chkstk_darwin(v16);
  v132 = v123 - v17;
  v18 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v18);
  v127 = (v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v126 = (v123 - v21);
  __chkstk_darwin(v22);
  v24 = v123 - v23;
  __chkstk_darwin(v25);
  v27 = v123 - v26;
  v28 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_posterLoadingState;
  swift_beginAccess();
  sub_100D13C98(v0 + v28, v27, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  v131 = v18;
  LODWORD(v28) = swift_getEnumCaseMultiPayload();
  sub_100D13C38(v27, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  if (v28 == 3)
  {
    v29 = [v0 info];
    type metadata accessor for CRLUSDZItem(0);
    v30 = swift_dynamicCastClassUnconditional();
    v125 = v0;
    if (sub_100CF6624())
    {
      swift_unknownObjectRelease();
      return;
    }

    sub_1007FDD4C();
    if (v38)
    {
      v127 = v30;
      v130 = v38;
      v30 = &v38[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
      v39 = *&v38[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
      v40 = *&v38[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
      sub_100020E58(&v38[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v39);
      (*(v40 + 24))(v39, v40);
      v41 = *(v30 + 3);
      v42 = *(v30 + 4);
      sub_100020E58(v30, v41);
      if (((*(v42 + 64))(v41, v42) & 1) == 0)
      {
        v81 = *(v30 + 3);
        v82 = *(v30 + 4);
        sub_100020E58(v30, v81);
        v83 = (*(v82 + 40))(v81, v82);
        if (v83 && (v84 = v83, v85 = CGImageSourceCreateWithDataProvider(v83, 0), v84, v85) && (ImageAtIndex = CGImageSourceCreateImageAtIndex(v85, 0, 0), v85, ImageAtIndex))
        {
          v87 = v130;
          *v24 = v130;
          *(v24 + 1) = ImageAtIndex;
          swift_storeEnumTagMultiPayload();
          v88 = v87;
          v89 = ImageAtIndex;
          sub_100CF729C(v24);
        }

        else
        {
          v90 = v127;
          if (**(v127 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
          {
            __break(1u);
            return;
          }

          swift_beginAccess();

          sub_1005B981C(&unk_101A2EF00, qword_101485680);
          CRRegister.wrappedValue.getter();
          swift_endAccess();

          sub_100D13C98(v3, v128, type metadata accessor for CRLAssetData);
          sub_100D13C38(v3, type metadata accessor for CRLUSDZAssetDataStruct);
          v91 = [v90 store];
          v92 = *&v91[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
          os_unfair_lock_lock(*(v92 + 16));
          v93 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
          v94 = *&v91[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
          if (v94)
          {
            v95 = *&v91[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
          }

          else
          {
            v109 = type metadata accessor for CRLAssetManager();
            v110 = objc_allocWithZone(v109);
            v124 = v29;
            swift_unknownObjectWeakInit();
            v111 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
            type metadata accessor for CRLUnfairLock();
            v112 = swift_allocObject();
            v113 = v91;
            v114 = swift_slowAlloc();
            *v114 = 0;
            *(v112 + 16) = v114;
            atomic_thread_fence(memory_order_acq_rel);
            *&v110[v111] = v112;
            *&v110[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
            v115 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
            *&v110[v115] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
            *&v110[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
            swift_unknownObjectWeakAssign();
            v135.receiver = v110;
            v135.super_class = v109;
            v116 = objc_msgSendSuper2(&v135, "init");

            v117 = *&v91[v93];
            *&v91[v93] = v116;
            v95 = v116;

            v94 = 0;
          }

          sub_1005B981C(&unk_101A1B858, &qword_1014AC368);
          v118 = *(v92 + 16);
          v119 = v94;
          os_unfair_lock_unlock(v118);

          v120 = v128;
          v121 = sub_1011255E0();

          sub_100D13C38(v120, type metadata accessor for CRLAssetData);
          v122 = v126;
          *v126 = v121;
          type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_100CF729C(v122);
        }

        swift_unknownObjectRelease();
        (*(v133 + 8))(v132, v134);
        return;
      }

      v124 = v29;
      if (qword_1019F21E0 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_33;
    }

    v124 = v29;
    if (**&v30[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A2E658)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2EF00, qword_101485680);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      sub_100D13C98(v3, v130, type metadata accessor for CRLAssetData);
      sub_100D13C38(v3, type metadata accessor for CRLUSDZAssetDataStruct);
      v76 = [v30 store];
      v77 = *&v76[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
      os_unfair_lock_lock(*(v77 + 16));
      v78 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
      v79 = *&v76[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      if (v79)
      {
        v80 = *&v76[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      }

      else
      {
        v134 = type metadata accessor for CRLAssetManager();
        v96 = objc_allocWithZone(v134);
        swift_unknownObjectWeakInit();
        v97 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
        type metadata accessor for CRLUnfairLock();
        v98 = swift_allocObject();
        v99 = v76;
        v100 = swift_slowAlloc();
        *v100 = 0;
        *(v98 + 16) = v100;
        atomic_thread_fence(memory_order_acq_rel);
        *&v96[v97] = v98;
        *&v96[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
        v101 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
        *&v96[v101] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
        *&v96[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
        swift_unknownObjectWeakAssign();
        v136.receiver = v96;
        v136.super_class = v134;
        v102 = objc_msgSendSuper2(&v136, "init");

        v103 = *&v76[v78];
        *&v76[v78] = v102;
        v80 = v102;

        v79 = 0;
      }

      sub_1005B981C(&unk_101A1B858, &qword_1014AC368);
      v104 = *(v77 + 16);
      v105 = v79;
      os_unfair_lock_unlock(v104);

      v106 = v130;
      v107 = sub_1011255E0();

      sub_100D13C38(v106, type metadata accessor for CRLAssetData);
      v108 = v127;
      *v127 = v107;
      type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_100CF729C(v108);
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v30 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v24 = [v0 info];
    type metadata accessor for CRLUSDZItem(0);
    if (**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2EF00, qword_101485680);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      swift_unknownObjectRelease();
      sub_100D13C98(v3, v6, type metadata accessor for CRLAssetData);
      sub_100D13C38(v3, type metadata accessor for CRLUSDZAssetDataStruct);
      v33 = v133;
      v32 = v134;
      (*(v133 + 16))(v13, v6, v134);
      sub_100D13C38(v6, type metadata accessor for CRLAssetData);
      v34 = UUID.uuidString.getter();
      v36 = v35;
      (*(v33 + 8))(v13, v32);
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v34;
      *(inited + 40) = v36;
      v37 = static os_log_type_t.default.getter();
      sub_100005404(v30, &_mh_execute_header, v37, "Unexpected USDZ asset loading state for asset %{public}@", 56, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      return;
    }

    __break(1u);
  }

  __break(1u);
LABEL_33:
  swift_once();
LABEL_11:
  v43 = static OS_os_log.crlThreeDimensionalObjects;
  v127 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_10146C6B0;
  v45 = UUID.uuidString.getter();
  v47 = v46;
  *(v44 + 56) = &type metadata for String;
  v128 = sub_1000053B0();
  *(v44 + 64) = v128;
  *(v44 + 32) = v45;
  *(v44 + 40) = v47;
  v48 = static os_log_type_t.default.getter();
  sub_100005404(v43, &_mh_execute_header, v48, "USDZ poster asset needs download. Adding download observer to assetUUID %{public}@", 82, 2, v44);
  swift_setDeallocating();
  sub_100005070((v44 + 32));
  v49 = v129;
  UUID.init()();
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = v133;
  v52 = v134;
  v53 = *(v133 + 16);
  v123[1] = v133 + 16;
  v126 = v53;
  v53(v13, v49, v134);
  v54 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  (*(v51 + 32))(v55 + v54, v13, v52);
  v56 = *(v30 + 3);
  v57 = *(v30 + 4);
  sub_100020E58(v30, v56);
  v123[0] = *(v57 + 72);

  v58 = v129;
  (v123[0])(v129, 6, sub_100D159D4, v55, v56, v57);

  v59 = *(sub_1005B981C(&qword_101A1B828, &qword_1014AC348) + 48);
  v60 = v130;
  *v24 = v130;
  v126(&v24[v59], v58, v134);
  swift_storeEnumTagMultiPayload();
  v131 = v60;
  sub_100CF729C(v24);
  if (qword_1019F22C0 != -1)
  {
    swift_once();
  }

  v61 = static OS_os_log.assetManagement;
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_10146BDE0;
  v63 = v132;
  v64 = UUID.uuidString.getter();
  v65 = v128;
  *(v62 + 56) = &type metadata for String;
  *(v62 + 64) = v65;
  *(v62 + 32) = v64;
  *(v62 + 40) = v66;
  v67 = UUID.uuidString.getter();
  *(v62 + 96) = &type metadata for String;
  *(v62 + 104) = v65;
  *(v62 + 72) = v67;
  *(v62 + 80) = v68;
  v69 = static os_log_type_t.info.getter();
  sub_100005404(v61, &_mh_execute_header, v69, "Triggering poster asset download for asset UUID %{public}@, observerID %{public}@", 81, 2, v62);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v70 = *(v30 + 3);
  v71 = *(v30 + 4);
  sub_100020E58(v30, v70);
  if ((*(v71 + 64))(v70, v71))
  {
    v72 = *(v30 + 3);
    v73 = *(v30 + 4);
    sub_100020E58(v30, v72);
    (*(v73 + 88))(v72, v73);
  }

  swift_unknownObjectRelease();
  v74 = v134;
  v75 = *(v133 + 8);
  v75(v58, v134);
  v75(v63, v74);
}

uint64_t sub_100CFC64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CFC6E8, v8, v7);
}

uint64_t sub_100CFC6E8()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_100CFC760(v2, v1);
  v3 = v0[1];

  return v3();
}

void sub_100CFC760(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v4 - 8);
  v84 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v6 - 8);
  v83 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v89 = v8;
  v90 = v9;
  __chkstk_darwin(v8);
  v86 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v78 - v12;
  v13 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v13);
  v80 = (&v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v78 - v16;
  __chkstk_darwin(v18);
  v20 = &v78 - v19;
  if (qword_1019F22C0 != -1)
  {
    swift_once();
  }

  v21 = static OS_os_log.assetManagement;
  v87 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = a1;
  v23 = (inited + 32);
  v81 = a1;
  v24 = UUID.uuidString.getter();
  v26 = v25;
  *(inited + 96) = &type metadata for String;
  v85 = sub_1000053B0();
  *(inited + 104) = v85;
  *(inited + 72) = v24;
  *(inited + 80) = v26;
  v27 = static os_log_type_t.info.getter();
  sub_100005404(v21, &_mh_execute_header, v27, "posterDownloadComplete with status %d, observerID %{public}@", 60, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v28 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_posterLoadingState;
  v29 = v88;
  swift_beginAccess();
  sub_100D13C98(v29 + v28, v20, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  sub_100CF6B5C(v17);
  sub_100D13C38(v20, type metadata accessor for CRLUSDZRep.PosterLoadingState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100D13C38(v17, type metadata accessor for CRLUSDZRep.PosterLoadingState);
    v30 = v89;
LABEL_9:
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v43 = static OS_os_log.crlThreeDimensionalObjects;
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_10146C6B0;
    [v29 info];
    type metadata accessor for CRLUSDZItem(0);
    if (**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2EF00, qword_101485680);
      v45 = v84;
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      swift_unknownObjectRelease();
      v46 = v83;
      sub_100D13C98(v45, v83, type metadata accessor for CRLAssetData);
      sub_100D13C38(v45, type metadata accessor for CRLUSDZAssetDataStruct);
      v47 = v90;
      v48 = v86;
      v90[2](v86, v46, v30);
      sub_100D13C38(v46, type metadata accessor for CRLAssetData);
      v49 = UUID.uuidString.getter();
      v51 = v50;
      (v47[1])(v48, v30);
      v52 = v85;
      *(v44 + 56) = &type metadata for String;
      *(v44 + 64) = v52;
      *(v44 + 32) = v49;
      *(v44 + 40) = v51;
      v53 = static os_log_type_t.default.getter();
      sub_100005404(v43, &_mh_execute_header, v53, "Unexpected USDZ asset loading state for asset %{public}@", 56, 2, v44);
      swift_setDeallocating();
      sub_100005070((v44 + 32));
      return;
    }

    __break(1u);
LABEL_25:
    swift_once();
LABEL_22:
    v66 = static OS_os_log.crlThreeDimensionalObjects;
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_10146C6B0;
    v68 = &v30[*(v23 + 496)];
    v69 = *(v68 + 3);
    v70 = *(v68 + 4);
    sub_100020E58(v68, v69);
    v71 = v86;
    (*(v70 + 24))(v69, v70);
    v72 = UUID.uuidString.getter();
    v74 = v73;
    (v90)(v71, v89);
    v75 = v85;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 64) = v75;
    *(v67 + 32) = v72;
    *(v67 + 40) = v74;
    v76 = static os_log_type_t.default.getter();
    sub_100005404(v66, &_mh_execute_header, v76, "Asset downloaded but poster image missing for asset %{public}@", 62, 2, v67);
    swift_setDeallocating();
    sub_100005070((v67 + 32));
    sub_1005B981C(&unk_101A1B858, &qword_1014AC368);
    v77 = v80;
    *v80 = v30;
    type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v37 = v30;
    sub_100CF729C(v77);
    goto LABEL_23;
  }

  v31 = v13;
  v32 = *v17;
  v33 = sub_1005B981C(&qword_101A1B828, &qword_1014AC348);
  v30 = v89;
  v34 = v90;
  v23 = v82;
  v90[4](v82, &v17[*(v33 + 48)], v89);
  sub_100D15398(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v79 = a2;
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = v34[1];
  (v36)(v23, v30);
  if ((v35 & 1) == 0)
  {

    goto LABEL_9;
  }

  v37 = v32;
  v38 = [v29 info];
  type metadata accessor for CRLUSDZItem(0);
  swift_dynamicCastClassUnconditional();
  v39 = v81;
  if ((v81 - 2) < 2)
  {
    v40 = *(sub_1005B981C(&unk_101A1B858, &qword_1014AC368) + 48);
    v41 = v79;
    v42 = v80;
    *v80 = v37;
    v90[2]((v42 + v40), v41, v30);
    type metadata accessor for CRLUSDZRep.PosterLoadingState.LoadingError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v37 = v37;
    sub_100CF729C(v42);
LABEL_23:
    swift_unknownObjectRelease();

    return;
  }

  if (!v81)
  {
    goto LABEL_23;
  }

  v90 = v36;
  if (v81 == 1)
  {
    v30 = v37;
    sub_1007FDD4C();
    v23 = &unk_101A17000;
    v78 = v31;
    if (v54)
    {
      v55 = v54;
      v56 = &v54[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
      v58 = *(v56 + 3);
      v57 = *(v56 + 4);
      sub_100020E58(v56, v58);
      v59 = (*(v57 + 40))(v58, v57);
      if (v59 && (v60 = v59, v61 = CGImageSourceCreateWithDataProvider(v59, 0), v60, v61))
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v61, 0, 0);

        if (ImageAtIndex)
        {
          v63 = v80;
          *v80 = v30;
          *(v63 + 8) = ImageAtIndex;
          swift_storeEnumTagMultiPayload();
          v64 = v30;
          v65 = ImageAtIndex;
          sub_100CF729C(v63);
          swift_unknownObjectRelease();

          return;
        }
      }

      else
      {
      }
    }

    v84 = v38;
    if (qword_1019F21E0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  type metadata accessor for CRLAssetDownloadObserverStatus(0);
  v91 = v39;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

void sub_100CFD188()
{
  v1 = [v0 layout];
  type metadata accessor for CRLUSDZLayout();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = *(v2 + OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedHitTestManager);
  *(v2 + OBJC_IVAR____TtC8Freeform13CRLUSDZLayout_cachedHitTestManager) = 0;

  if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive) == 1)
  {
    [v0 invalidateKnobs];
    v4 = [v0 layout];
    [v4 invalidate];
  }

  *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_hideKnobsDueToBoundsUpdate) = 0;
}

void sub_100CFD258()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v2 - 8);
  v178 = v164 - v3;
  v4 = type metadata accessor for URL();
  v179 = *(v4 - 1);
  v180 = v4;
  __chkstk_darwin(v4);
  v176 = v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v177 = v164 - v7;
  v8 = type metadata accessor for UUID();
  v185 = *(v8 - 8);
  v9 = v185[8];
  __chkstk_darwin(v8);
  v183 = v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v182 = v164 - v11;
  __chkstk_darwin(v12);
  v184 = v164 - v13;
  v14 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v14 - 8);
  v16 = v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v17);
  v19 = (v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = v164 - v21;
  __chkstk_darwin(v23);
  v186 = v164 - v24;
  v25 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v25);
  __chkstk_darwin(v26);
  v28 = v164 - v27;
  __chkstk_darwin(v29);
  __chkstk_darwin(v30);
  v35 = v164 - v34;
  if (*(v1 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy) != 4)
  {
    v173 = v33;
    v174 = v32;
    v181 = v31;
    v175 = v8;
    if (sub_100CF6624())
    {
      v36 = v174;
      swift_storeEnumTagMultiPayload();
      v37 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
      swift_beginAccess();
      sub_100D15E6C(v36, v1 + v37, type metadata accessor for CRLUSDZRep.AssetLoadingState);
      swift_endAccess();
      sub_100CF8070();
      v38 = type metadata accessor for CRLUSDZRep.AssetLoadingState;
      v39 = v36;
LABEL_35:
      sub_100D13C38(v39, v38);
      return;
    }

    v40 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    v171 = v40;
    sub_100D13C98(v1 + v40, v35, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    LODWORD(v40) = swift_getEnumCaseMultiPayload();
    sub_100D13C38(v35, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    if (v40 == 4)
    {
      v165 = v28;
      v41 = [v1 info];
      type metadata accessor for CRLUSDZItem(0);
      v42 = swift_dynamicCastClassUnconditional();
      v166 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v19 = *(v42 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v19 == &off_101A2E658)
      {
        v43 = v42;
        swift_beginAccess();
        v172 = v41;
        swift_unknownObjectRetain();

        v164[1] = sub_1005B981C(&unk_101A2EF00, qword_101485680);
        CRRegister.wrappedValue.getter();
        swift_endAccess();

        sub_100D13C98(v16, v186, type metadata accessor for CRLAssetData);
        sub_100D13C38(v16, type metadata accessor for CRLUSDZAssetDataStruct);
        v169 = v43;
        v44 = [v43 store];
        v45 = *&v44[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
        os_unfair_lock_lock(*(v45 + 16));
        v46 = *&v44[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
        v170 = v1;
        v164[2] = v17;
        if (v46)
        {
          v47 = v46;
        }

        else
        {
          v167 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
          v58 = type metadata accessor for CRLAssetManager();
          v59 = objc_allocWithZone(v58);
          v168 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
          swift_unknownObjectWeakInit();
          v164[0] = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
          type metadata accessor for CRLUnfairLock();
          v60 = swift_allocObject();
          v61 = v44;
          v62 = swift_slowAlloc();
          *v62 = 0;
          *(v60 + 16) = v62;
          atomic_thread_fence(memory_order_acq_rel);
          *&v59[v164[0]] = v60;
          *&v59[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
          v63 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
          *&v59[v63] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
          *&v59[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
          swift_unknownObjectWeakAssign();
          v187.receiver = v59;
          v187.super_class = v58;
          v64 = objc_msgSendSuper2(&v187, "init");

          v65 = *(v167 + v44);
          *(v167 + v44) = v64;
          v47 = v64;

          v46 = 0;
        }

        v66 = *(v45 + 16);
        v67 = v46;
        os_unfair_lock_unlock(v66);

        v68 = v169;
        v69 = sub_1011255E0();

        v168 = v69;
        v70 = (v69 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
        v71 = *(v69 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
        v72 = *(v69 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
        sub_100020E58((v69 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v71);
        (*(v72 + 24))(v71, v72);
        v73 = v70[3];
        v74 = v70[4];
        v167 = v70;
        sub_100020E58(v70, v73);
        if ((*(v74 + 64))(v73, v74))
        {
          swift_unknownObjectRelease();
          v50 = v182;
          UUID.init()();
          if (qword_1019F21E0 == -1)
          {
LABEL_14:
            v180 = static OS_os_log.crlThreeDimensionalObjects;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146C4D0;
            v76 = [v170 debugDescription];
            v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v79 = v78;

            *(inited + 56) = &type metadata for String;
            v80 = sub_1000053B0();
            *(inited + 64) = v80;
            *(inited + 32) = v77;
            *(inited + 40) = v79;
            v81 = UUID.uuidString.getter();
            *(inited + 96) = &type metadata for String;
            *(inited + 104) = v80;
            *(inited + 72) = v81;
            *(inited + 80) = v82;
            v83 = UUID.uuidString.getter();
            *(inited + 136) = &type metadata for String;
            *(inited + 144) = v80;
            *(inited + 112) = v83;
            *(inited + 120) = v84;
            v85 = static os_log_type_t.debug.getter();
            sub_100005404(v180, &_mh_execute_header, v85, "(USDZRep) [%{public}@] USDZ asset needs download. Adding download observer to assetUUID %{public}@ observerUUID %{public}@", 122, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
            swift_arrayDestroy();
            v86 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v87 = v185;
            v180 = v185[2];
            v88 = v183;
            v89 = v50;
            v90 = v175;
            v180(v183, v89, v175);
            v91 = (*(v87 + 80) + 24) & ~*(v87 + 80);
            v92 = swift_allocObject();
            *(v92 + 16) = v86;
            (v87[4])(v92 + v91, v88, v90);
            v93 = v167;
            v95 = v167[3];
            v94 = v167[4];
            sub_100020E58(v167, v95);
            v183 = *(v94 + 72);

            v96 = v182;
            (v183)(v182, 6, sub_100D157EC, v92, v95, v94);

            v97 = *(sub_1005B981C(&qword_101A1B828, &qword_1014AC348) + 48);
            v99 = v174;
            v98 = v175;
            v100 = v168;
            *v174 = v168;
            v180((v99 + v97), v96, v98);
            swift_storeEnumTagMultiPayload();
            v102 = v170;
            v101 = v171;
            swift_beginAccess();
            v103 = v100;
            sub_100D15E6C(v99, v102 + v101, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            swift_endAccess();
            sub_100CF8070();
            sub_100D13C38(v99, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            v104 = v93[3];
            v105 = v93[4];
            sub_100020E58(v93, v104);
            if ((*(v105 + 64))(v104, v105))
            {
              v106 = v93[3];
              v107 = v93[4];
              sub_100020E58(v93, v106);
              (*(v107 + 88))(v106, v107);
            }

            swift_unknownObjectRelease();

            v108 = v185[1];
            v109 = v175;
            v108(v96, v175);
            v108(v184, v109);
            goto LABEL_34;
          }

LABEL_40:
          swift_once();
          goto LABEL_14;
        }

        if (**&v68[v166] == &off_101A2E658)
        {
          swift_beginAccess();

          CRRegister.wrappedValue.getter();
          swift_endAccess();

          sub_100D13C98(v16, v22, type metadata accessor for CRLAssetData);
          sub_100D13C38(v16, type metadata accessor for CRLUSDZAssetDataStruct);
          v110 = *&v68[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store];
          swift_unknownObjectRelease();
          v111 = *&v110[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
          os_unfair_lock_lock(*(v111 + 16));
          v112 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
          v113 = *&v110[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
          if (v113)
          {
            v114 = *&v110[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
          }

          else
          {
            v115 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
            v116 = v110;
            v117 = sub_10001F1A0(v116);

            v118 = *&v110[v112];
            *&v110[v112] = v117;
            v114 = v117;

            v113 = 0;
          }

          v119 = v165;
          v120 = *(v111 + 16);
          v121 = v113;
          os_unfair_lock_unlock(v120);
          v122 = v178;
          sub_10108CAF4(v22, 0, 3, 0, 0, v178);

          sub_100D13C38(v22, type metadata accessor for CRLAssetData);
          v124 = v179;
          v123 = v180;
          if ((*(v179 + 48))(v122, 1, v180) != 1)
          {
            v134 = v177;
            (*(v124 + 32))(v177, v122, v123);
            v135 = v168;
            *v119 = v168;
            v136 = byte_1019F2C48;
            v137 = v135;
            if (v136 == 1)
            {
              v138 = v170;
              v139 = sub_100D0D22C();
            }

            else
            {
              v139 = 1;
              v138 = v170;
            }

            v140 = *(sub_1005B981C(&qword_101A1B820, &qword_1014AC340) + 64);
            *(v119 + 8) = v139 & 1;
            (*(v124 + 16))(v119 + v140, v134, v123);
            swift_storeEnumTagMultiPayload();
            v141 = v171;
            swift_beginAccess();
            sub_100D15E6C(v119, v138 + v141, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            swift_endAccess();
            sub_100CF8070();
            swift_unknownObjectRelease();

            sub_100D13C38(v119, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            (*(v124 + 8))(v134, v123);
            goto LABEL_33;
          }

          sub_10000CAAC(v122, &unk_1019F33C0, &unk_101468A60);
          v125 = [objc_opt_self() mainBundle];
          v126 = String._bridgeToObjectiveC()();
          v127 = [v125 URLForResource:v126 withExtension:0];

          if (v127)
          {
            v128 = v176;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v129 = v168;
            *v173 = v168;
            v130 = byte_1019F2C48;
            v131 = v129;
            if (v130 == 1)
            {
              v132 = v170;
              v133 = sub_100D0D22C();
            }

            else
            {
              v133 = 1;
              v132 = v170;
            }

            v161 = *(sub_1005B981C(&qword_101A1B820, &qword_1014AC340) + 64);
            v162 = v173;
            *(v173 + 8) = v133 & 1;
            (*(v124 + 16))(v162 + v161, v128, v123);
            swift_storeEnumTagMultiPayload();
            v163 = v171;
            swift_beginAccess();
            sub_100D15E6C(v162, v132 + v163, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            swift_endAccess();
            sub_100CF8070();
            swift_unknownObjectRelease();

            sub_100D13C38(v162, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            (*(v124 + 8))(v128, v123);
LABEL_33:
            (v185[1])(v184, v175);
            goto LABEL_34;
          }

          if (qword_1019F21E0 == -1)
          {
LABEL_30:
            v182 = static OS_os_log.crlThreeDimensionalObjects;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v142 = swift_initStackObject();
            *(v142 + 16) = xmmword_10146BDE0;
            v143 = v170;
            v144 = [v170 debugDescription];
            v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v147 = v146;

            *(v142 + 56) = &type metadata for String;
            v148 = sub_1000053B0();
            *(v142 + 64) = v148;
            *(v142 + 32) = v145;
            *(v142 + 40) = v147;
            v149 = v167[3];
            v150 = v167[4];
            sub_100020E58(v167, v149);
            v151 = v183;
            (*(v150 + 24))(v149, v150);
            v152 = UUID.uuidString.getter();
            v154 = v153;
            v155 = v185[1];
            v155(v151, v175);
            *(v142 + 96) = &type metadata for String;
            *(v142 + 104) = v148;
            *(v142 + 72) = v152;
            *(v142 + 80) = v154;
            v156 = static os_log_type_t.debug.getter();
            sub_100005404(v182, &_mh_execute_header, v156, "(USDZRep) [%{public}@] Asset downloaded but URL missing for asset %{public}@", 76, 2, v142);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
            swift_arrayDestroy();
            sub_1005B981C(&qword_101A1B818, &qword_1014AC338);
            v157 = v174;
            v158 = v168;
            *v174 = v168;
            type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            v159 = v171;
            swift_beginAccess();
            v160 = v158;
            sub_100D15E6C(v157, v143 + v159, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            swift_endAccess();
            sub_100CF8070();
            swift_unknownObjectRelease();

            sub_100D13C38(v157, type metadata accessor for CRLUSDZRep.AssetLoadingState);
            v155(v184, v175);
LABEL_34:
            v38 = type metadata accessor for CRLAssetData;
            v39 = v186;
            goto LABEL_35;
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
        goto LABEL_30;
      }

      __break(1u);
    }

    else if (qword_1019F21E0 == -1)
    {
LABEL_9:
      v48 = static OS_os_log.crlThreeDimensionalObjects;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v49 = swift_initStackObject();
      *(v49 + 16) = xmmword_10146C6B0;
      v50 = [v1 info];
      type metadata accessor for CRLUSDZItem(0);
      if (**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
      {
        swift_beginAccess();

        sub_1005B981C(&unk_101A2EF00, qword_101485680);
        CRRegister.wrappedValue.getter();
        swift_endAccess();

        swift_unknownObjectRelease();
        sub_100D13C98(v16, v19, type metadata accessor for CRLAssetData);
        sub_100D13C38(v16, type metadata accessor for CRLUSDZAssetDataStruct);
        v51 = v185;
        v52 = v183;
        v53 = v175;
        (v185[2])(v183, v19, v175);
        sub_100D13C38(v19, type metadata accessor for CRLAssetData);
        v54 = UUID.uuidString.getter();
        v56 = v55;
        (v51[1])(v52, v53);
        *(v49 + 56) = &type metadata for String;
        *(v49 + 64) = sub_1000053B0();
        *(v49 + 32) = v54;
        *(v49 + 40) = v56;
        v57 = static os_log_type_t.default.getter();
        sub_100005404(v48, &_mh_execute_header, v57, "Unexpected USDZ asset loading state for asset %{public}@", 56, 2, v49);
        swift_setDeallocating();
        sub_100005070((v49 + 32));
        return;
      }

      __break(1u);
      goto LABEL_40;
    }

    swift_once();
    goto LABEL_9;
  }
}

void sub_100CFE798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    (*(v9 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
    type metadata accessor for MainActor();
    v17 = v15;
    v18 = static MainActor.shared.getter();
    v19 = *(v9 + 80);
    v22 = a5;
    v20 = (v19 + 48) & ~v19;
    v21 = swift_allocObject();
    *(v21 + 2) = v18;
    *(v21 + 3) = &protocol witness table for MainActor;
    *(v21 + 4) = v17;
    *(v21 + 5) = a1;
    (*(v9 + 32))(&v21[v20], &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    sub_10064191C(0, 0, v13, v22, v21);
  }
}

uint64_t sub_100CFE9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CFEA60, v8, v7);
}

uint64_t sub_100CFEA60()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_100CFEAD8(v2, v1);
  v3 = v0[1];

  return v3();
}

void sub_100CFEAD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v139 = a1;
  v140 = a2;
  v4 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v4 - 8);
  v143 = v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v6 - 8);
  v142 = v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v136 = v129 - v9;
  v10 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v10 - 8);
  v134 = v129 - v11;
  v12 = type metadata accessor for URL();
  v137 = *(v12 - 8);
  v138 = v12;
  __chkstk_darwin(v12);
  v135 = v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v145 = *(v14 - 8);
  __chkstk_darwin(v14);
  v144 = v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v129 - v17;
  v19 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v19);
  v21 = v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v129 - v23;
  __chkstk_darwin(v25);
  v27 = v129 - v26;
  __chkstk_darwin(v28);
  v30 = v129 - v29;
  v31 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  v146 = v3;
  sub_100D13C98(v3 + v31, v30, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  sub_100CF6DD0(v27);
  sub_100D13C38(v30, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload())
  {
    v32 = v145;
    v141 = v14;
    sub_100D13C38(v27, type metadata accessor for CRLUSDZRep.AssetLoadingState);
LABEL_7:
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v52 = v146;
    v53 = [v146 debugDescription];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    *(inited + 56) = &type metadata for String;
    v57 = sub_1000053B0();
    *(inited + 32) = v54;
    *(inited + 64) = v57;
    *(inited + 40) = v56;
    v58 = [v52 info];
    type metadata accessor for CRLUSDZItem(0);
    if (**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2EF00, qword_101485680);
      v146 = (inited + 32);
      v59 = v57;
      v60 = v143;
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      swift_unknownObjectRelease();
      v61 = v142;
      sub_100D13C98(v60, v142, type metadata accessor for CRLAssetData);
      sub_100D13C38(v60, type metadata accessor for CRLUSDZAssetDataStruct);
      v62 = v144;
      v63 = v141;
      (*(v32 + 16))(v144, v61, v141);
      sub_100D13C38(v61, type metadata accessor for CRLAssetData);
      v64 = UUID.uuidString.getter();
      v66 = v65;
      (*(v32 + 8))(v62, v63);
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v59;
      *(inited + 72) = v64;
      *(inited + 80) = v66;
      v67 = static os_log_type_t.debug.getter();
      sub_100005404(v50, &_mh_execute_header, v67, "(USDZRep) [%{public}@] Unexpected USDZ asset loading state for asset %{public}@", 79, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      return;
    }

    __break(1u);
    goto LABEL_28;
  }

  v132 = v21;
  v133 = v31;
  v131 = v24;
  v33 = *v27;
  v34 = sub_1005B981C(&qword_101A1B828, &qword_1014AC348);
  v35 = v145;
  (*(v145 + 32))(v18, &v27[*(v34 + 48)], v14);
  sub_100D15398(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v36 = v140;
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = v35;
  v40 = *(v35 + 8);
  v39 = v35 + 8;
  v38 = v40;
  v40(v18, v14);
  if ((v37 & 1) == 0)
  {
    v141 = v14;

    goto LABEL_7;
  }

  v130 = v38;
  v142 = v33;
  v41 = v146;
  v42 = [v146 info];
  type metadata accessor for CRLUSDZItem(0);
  v43 = swift_dynamicCastClassUnconditional();
  v44 = v139;
  if ((v139 - 2) < 2)
  {
    v45 = *(sub_1005B981C(&qword_101A1B818, &qword_1014AC338) + 48);
    v46 = v142;
    v47 = v132;
    *v132 = v142;
    (*(v32 + 16))(v47 + v45, v36, v14);
    type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v48 = v133;
    swift_beginAccess();
    v49 = v46;
    sub_100D15E6C(v47, v41 + v48, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    swift_endAccess();
    sub_100CF8070();

    swift_unknownObjectRelease();
    sub_100D13C38(v47, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    return;
  }

  if (!v139)
  {
    swift_unknownObjectRelease();

    return;
  }

  v141 = v14;
  if (v139 == 1)
  {
    v145 = v39;
    v68 = v136;
    if (**(v43 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v69 = v43;
    swift_beginAccess();
    swift_unknownObjectRetain();

    sub_1005B981C(&unk_101A2EF00, qword_101485680);
    v70 = v143;
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100D13C98(v70, v68, type metadata accessor for CRLAssetData);
    sub_100D13C38(v70, type metadata accessor for CRLUSDZAssetDataStruct);
    v71 = *(v69 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    swift_unknownObjectRelease();
    v72 = *&v71[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    os_unfair_lock_lock(*(v72 + 16));
    v73 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v74 = *&v71[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    if (v74)
    {
      v75 = *&v71[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v76 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
      v77 = v71;
      v78 = sub_10001F1A0(v77);

      v79 = *&v71[v73];
      *&v71[v73] = v78;
      v75 = v78;

      v74 = 0;
    }

    v80 = *(v72 + 16);
    v81 = v74;
    os_unfair_lock_unlock(v80);
    v82 = v134;
    sub_10108CAF4(v68, 0, 3, 0, 0, v134);

    sub_100D13C38(v68, type metadata accessor for CRLAssetData);
    v84 = v137;
    v83 = v138;
    v85 = (*(v137 + 48))(v82, 1, v138);
    v129[1] = v42;
    v129[2] = v19;
    if (v85 == 1)
    {
      sub_10000CAAC(v82, &unk_1019F33C0, &unk_101468A60);
      if (qword_1019F21E0 == -1)
      {
LABEL_20:
        v143 = static OS_os_log.crlThreeDimensionalObjects;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v86 = swift_initStackObject();
        *(v86 + 16) = xmmword_10146BDE0;
        v87 = v146;
        v88 = [v146 debugDescription];
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        *(v86 + 56) = &type metadata for String;
        v92 = sub_1000053B0();
        *(v86 + 64) = v92;
        *(v86 + 32) = v89;
        *(v86 + 40) = v91;
        v93 = v142;
        v95 = *&v142[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
        v94 = *&v142[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
        sub_100020E58(&v142[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v95);
        v96 = v144;
        (*(v94 + 24))(v95, v94);
        v97 = UUID.uuidString.getter();
        v99 = v98;
        v130(v96, v141);
        *(v86 + 96) = &type metadata for String;
        *(v86 + 104) = v92;
        *(v86 + 72) = v97;
        *(v86 + 80) = v99;
        v100 = static os_log_type_t.debug.getter();
        sub_100005404(v143, &_mh_execute_header, v100, "(USDZRep) [%{public}@] Asset downloaded but URL missing for asset %{public}@", 76, 2, v86);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        sub_1005B981C(&qword_101A1B818, &qword_1014AC338);
        v101 = v132;
        *v132 = v93;
        type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v102 = v133;
        swift_beginAccess();
        v103 = v93;
        sub_100D15E6C(v101, v87 + v102, type metadata accessor for CRLUSDZRep.AssetLoadingState);
        swift_endAccess();
        sub_100CF8070();

        swift_unknownObjectRelease();
        sub_100D13C38(v101, type metadata accessor for CRLUSDZRep.AssetLoadingState);
        return;
      }

LABEL_29:
      swift_once();
      goto LABEL_20;
    }

    (*(v84 + 32))(v135, v82, v83);
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v143 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v104 = swift_initStackObject();
    *(v104 + 16) = xmmword_10146C4D0;
    v105 = [v146 debugDescription];
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    *(v104 + 56) = &type metadata for String;
    v109 = sub_1000053B0();
    *(v104 + 64) = v109;
    *(v104 + 32) = v106;
    *(v104 + 40) = v108;
    v110 = v142;
    v112 = *&v142[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v111 = *&v142[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v142[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v112);
    v113 = v144;
    (*(v111 + 24))(v112, v111);
    v114 = UUID.uuidString.getter();
    v116 = v115;
    v130(v113, v141);
    *(v104 + 96) = &type metadata for String;
    *(v104 + 104) = v109;
    *(v104 + 72) = v114;
    *(v104 + 80) = v116;
    v117 = UUID.uuidString.getter();
    *(v104 + 136) = &type metadata for String;
    *(v104 + 144) = v109;
    *(v104 + 112) = v117;
    *(v104 + 120) = v118;
    v119 = static os_log_type_t.debug.getter();
    sub_100005404(v143, &_mh_execute_header, v119, "(USDZRep) [%{public}@] USDZ asset downloaded %@, observerUUID %@", 64, 2, v104);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v120 = v131;
    *v131 = v110;
    LODWORD(v114) = byte_1019F2C48;
    v121 = v110;
    if (v114 == 1)
    {
      v122 = v146;
      v123 = sub_100D0D22C();
    }

    else
    {
      v123 = 1;
      v122 = v146;
    }

    v124 = v135;
    v125 = *(sub_1005B981C(&qword_101A1B820, &qword_1014AC340) + 64);
    *(v120 + 8) = v123 & 1;
    v127 = v137;
    v126 = v138;
    (*(v137 + 16))(v120 + v125, v124, v138);
    swift_storeEnumTagMultiPayload();
    v128 = v133;
    swift_beginAccess();
    sub_100D15E6C(v120, v122 + v128, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    swift_endAccess();
    sub_100CF8070();

    swift_unknownObjectRelease();
    sub_100D13C38(v120, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    (*(v127 + 8))(v124, v126);
  }

  else
  {
    type metadata accessor for CRLAssetDownloadObserverStatus(0);
    v147 = v44;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }
}

uint64_t sub_100CFFAE8()
{
  v60 = type metadata accessor for UUID();
  v1 = *(v60 - 8);
  __chkstk_darwin(v60);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v10);
  v12 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy) == 2)
  {
    v58 = v1;
    v57 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    v55 = v19;
    v59 = v0;
    sub_100D13C98(v0 + v19, v15, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v56 = v10;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v53 = v12;
      v54 = v16;
      v20 = *v15;
      v21 = v15[8];
      v22 = *(sub_1005B981C(&qword_101A1B820, &qword_1014AC340) + 64);
      if (v21)
      {
        v60 = v20;
        v23 = v17;
        v24 = *(v17 + 32);
        v25 = v54;
        v24(v57, &v15[v22], v54);
        if (qword_1019F21E0 == -1)
        {
LABEL_5:
          v26 = static OS_os_log.crlThreeDimensionalObjects;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          v28 = v59;
          v29 = [v59 debugDescription];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v30;
          *(inited + 40) = v32;
          v33 = static os_log_type_t.debug.getter();
          sub_100005404(v26, &_mh_execute_header, v33, "(USDZRep) [%{public}@] loadInProcessRenderer()", 46, 2, inited);
          swift_setDeallocating();
          sub_100005070((inited + 32));
          _s13ARViewBackendCMa(0);
          v34 = swift_allocObject();
          *(v34 + 24) = 0;
          swift_unknownObjectWeakInit();
          UUID.init()();
          *(v34 + 24) = &off_1018A11E0;
          swift_unknownObjectWeakAssign();
          *(v34 + 32) = 0;
          *(v34 + 48) = 0;
          *(v34 + 56) = 0;
          *(v34 + 64) = 0;
          *(v34 + 72) = 0xC000000000000000;
          *(v34 + 80) = 0u;
          *(v34 + 96) = 0u;
          *(v34 + 112) = 0u;
          *(v34 + 128) = 0;
          v35 = sub_1005B981C(&unk_101A1B808, &qword_1014AC330);
          v36 = v35[12];
          v37 = v53;
          v38 = (v53 + v35[16]);
          v39 = v53 + v35[20];
          v40 = v60;
          *v53 = v60;
          v41 = v57;
          (*(v23 + 16))(v37 + v36, v57, v25);
          *v38 = v34;
          v38[1] = &off_1018B9FF0;
          *v39 = 0u;
          *(v39 + 1) = 0u;
          *(v39 + 4) = 0;
          *(v39 + 40) = xmmword_101481DF0;
          swift_storeEnumTagMultiPayload();
          v42 = v55;
          swift_beginAccess();
          v43 = v40;

          sub_100D15E6C(v37, v28 + v42, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          swift_endAccess();
          sub_100CF8070();

          sub_100D13C38(v37, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          return (*(v23 + 8))(v41, v25);
        }

LABEL_14:
        swift_once();
        goto LABEL_5;
      }

      (*(v17 + 8))(&v15[v22], v54);
    }

    else
    {
      sub_100D13C38(v15, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    }

    v1 = v58;
    v0 = v59;
  }

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v45 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_10146C6B0;
  v46 = [v0 info];
  type metadata accessor for CRLUSDZItem(0);
  v25 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v25 != &off_101A2E658)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_1005B981C(&unk_101A2EF00, qword_101485680);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_100D13C98(v6, v9, type metadata accessor for CRLAssetData);
  sub_100D13C38(v6, type metadata accessor for CRLUSDZAssetDataStruct);
  v47 = v60;
  (*(v1 + 16))(v3, v9, v60);
  sub_100D13C38(v9, type metadata accessor for CRLAssetData);
  v48 = UUID.uuidString.getter();
  v50 = v49;
  (*(v1 + 8))(v3, v47);
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_1000053B0();
  *(v23 + 32) = v48;
  *(v23 + 40) = v50;
  v51 = static os_log_type_t.default.getter();
  sub_100005404(v45, &_mh_execute_header, v51, "Cannot load USD renderer with unexpected loading state for asset %{public}@", 75, 2, v23);
  swift_setDeallocating();
  return sub_100005070((v23 + 32));
}

uint64_t sub_100D00350()
{
  v1 = v0;
  v64 = type metadata accessor for UUID();
  v2 = *(v64 - 1);
  __chkstk_darwin(v64);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v56 - v12;
  v14 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v20 = type metadata accessor for URL();
  __chkstk_darwin(v20);
  if (!*(v1 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy))
  {
    v59 = v13;
    v62 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = v23;
    v24 = v21;
    v25 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    v60 = v25;
    sub_100D13C98(v1 + v25, v19, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v58 = v16;
      v61 = v24;
      v26 = *v19;
      v27 = v19[8];
      v28 = *(sub_1005B981C(&qword_101A1B820, &qword_1014AC340) + 64);
      if (v27)
      {
        v57 = v26;
        v29 = v63;
        (*(v63 + 32))(v62, &v19[v28], v61);
        if (qword_1019F21E0 == -1)
        {
LABEL_5:
          v30 = static OS_os_log.crlThreeDimensionalObjects;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          v32 = [v1 debugDescription];
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v33;
          *(inited + 40) = v35;
          v36 = static os_log_type_t.debug.getter();
          sub_100005404(v30, &_mh_execute_header, v36, "(USDZRep) [%{public}@] loadInProcessCoreRERenderer()", 52, 2, inited);
          swift_setDeallocating();
          sub_100005070((inited + 32));
          v37 = v59;
          (*(v2 + 56))(v59, 1, 1, v64);
          _s10RepBackendCMa(0);
          swift_allocObject();
          v64 = v1;
          v38 = sub_100867730(v37, v1, &off_1018A11E0, 2);
          v39 = sub_1005B981C(&unk_101A1B808, &qword_1014AC330);
          v40 = v39[12];
          v41 = v58;
          v42 = (v58 + v39[16]);
          v43 = v58 + v39[20];
          v44 = v57;
          *v58 = v57;
          v45 = v62;
          v46 = v61;
          (*(v29 + 16))(v41 + v40, v62, v61);
          *v42 = v38;
          v42[1] = &off_101889DF8;
          *v43 = 0u;
          *(v43 + 1) = 0u;
          *(v43 + 4) = 0;
          *(v43 + 40) = xmmword_101481DF0;
          swift_storeEnumTagMultiPayload();
          v47 = v60;
          swift_beginAccess();
          v48 = v44;

          sub_100D15E6C(v41, v1 + v47, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          swift_endAccess();
          sub_100CF8070();

          sub_100D13C38(v41, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          return (*(v29 + 8))(v45, v46);
        }

LABEL_13:
        swift_once();
        goto LABEL_5;
      }

      (*(v63 + 8))(&v19[v28], v61);
    }

    else
    {
      sub_100D13C38(v19, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    }
  }

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v50 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_10146C6B0;
  v1 = [v1 info];
  type metadata accessor for CRLUSDZItem(0);
  if (**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();

  sub_1005B981C(&unk_101A2EF00, qword_101485680);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_100D13C98(v7, v10, type metadata accessor for CRLAssetData);
  sub_100D13C38(v7, type metadata accessor for CRLUSDZAssetDataStruct);
  v51 = v64;
  (*(v2 + 16))(v4, v10, v64);
  sub_100D13C38(v10, type metadata accessor for CRLAssetData);
  v52 = UUID.uuidString.getter();
  v54 = v53;
  (*(v2 + 8))(v4, v51);
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_1000053B0();
  *(v29 + 32) = v52;
  *(v29 + 40) = v54;
  v55 = static os_log_type_t.default.getter();
  sub_100005404(v50, &_mh_execute_header, v55, "Cannot load USD renderer with unexpected loading state for asset %{public}@", 75, 2, v29);
  swift_setDeallocating();
  return sub_100005070((v29 + 32));
}

uint64_t sub_100D00BFC()
{
  v1 = v0;
  v65 = type metadata accessor for UUID();
  v2 = *(v65 - 8);
  __chkstk_darwin(v65);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v11);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v57 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  if (v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy] != 1)
  {
    goto LABEL_13;
  }

  v64 = v2;
  v63 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1;
  v21 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  v61 = v21;
  v22 = &v20[v21];
  v1 = v20;
  sub_100D13C98(v22, v16, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  v62 = v11;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100D13C38(v16, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v2 = v64;
LABEL_13:
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v51 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v1 = [v1 info];
    type metadata accessor for CRLUSDZItem(0);
    v27 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v27 == &off_101A2E658)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2EF00, qword_101485680);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      swift_unknownObjectRelease();
      sub_100D13C98(v7, v10, type metadata accessor for CRLAssetData);
      sub_100D13C38(v7, type metadata accessor for CRLUSDZAssetDataStruct);
      v52 = v65;
      (*(v2 + 16))(v4, v10, v65);
      sub_100D13C38(v10, type metadata accessor for CRLAssetData);
      v53 = UUID.uuidString.getter();
      v55 = v54;
      (*(v2 + 8))(v4, v52);
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v53;
      *(inited + 40) = v55;
      v56 = static os_log_type_t.default.getter();
      sub_100005404(v51, &_mh_execute_header, v56, "Cannot load USD renderer with unexpected loading state for asset %{public}@", 75, 2, inited);
      swift_setDeallocating();
      return sub_100005070((inited + 32));
    }

    __break(1u);
    goto LABEL_18;
  }

  v60 = v18;
  v23 = *v16;
  v24 = v16[8];
  v59 = *(sub_1005B981C(&qword_101A1B820, &qword_1014AC340) + 64);
  v58 = v13;
  if (byte_1019F2C48 == 1)
  {
    v25 = sub_100D0D22C();
    v2 = v64;
    if (((v24 ^ v25) & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v2 = v64;
  if ((v24 & 1) == 0)
  {
LABEL_12:

    (*(v60 + 8))(&v16[v59], v17);
    goto LABEL_13;
  }

LABEL_5:
  inited = v23;
  v27 = v60;
  v10 = v63;
  (*(v60 + 32))(v63, &v16[v59], v17);
  v2 = v17;
  if (qword_1019F21E0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v28 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_10146C6B0;
  v30 = [v1 debugDescription];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_1000053B0();
  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  v34 = static os_log_type_t.debug.getter();
  sub_100005404(v28, &_mh_execute_header, v34, "(USDZRep) [%{public}@] loadOutOfProcessCoreRERenderer()", 55, 2, v29);
  swift_setDeallocating();
  sub_100005070((v29 + 32));
  if (byte_1019F2C48)
  {
    v35 = 8;
  }

  else
  {
    v35 = 0;
  }

  v36 = objc_allocWithZone(_s15AppExRepBackendCMa(0));
  v37 = v1;
  v38 = sub_1008657BC(v1, &off_1018A11E0, v35);

  v39 = sub_1005B981C(&unk_101A1B808, &qword_1014AC330);
  v40 = v39[12];
  v41 = v58;
  v42 = (v58 + v39[16]);
  v43 = v58 + v39[20];
  *v58 = inited;
  v44 = v10;
  v45 = v2;
  (*(v27 + 16))(v41 + v40, v44, v2);
  *v42 = v38;
  v42[1] = &off_1018897F8;
  *v43 = 0u;
  *(v43 + 1) = 0u;
  *(v43 + 4) = 0;
  *(v43 + 40) = xmmword_101481DF0;
  swift_storeEnumTagMultiPayload();
  v46 = v1;
  v47 = v61;
  swift_beginAccess();
  v48 = inited;
  v49 = v38;
  sub_100D15E6C(v41, &v46[v47], type metadata accessor for CRLUSDZRep.AssetLoadingState);
  swift_endAccess();
  sub_100CF8070();

  sub_100D13C38(v41, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  return (*(v27 + 8))(v63, v45);
}

uint64_t sub_100D01480()
{
  v61 = type metadata accessor for UUID();
  v1 = *(v61 - 8);
  __chkstk_darwin(v61);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v10);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingStrategy) == 3)
  {
    v59 = v1;
    v58 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    v56 = v19;
    v60 = v0;
    sub_100D13C98(v0 + v19, v15, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v57 = v10;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v54 = v12;
      v55 = v16;
      v20 = *v15;
      v21 = v15[8];
      v22 = *(sub_1005B981C(&qword_101A1B820, &qword_1014AC340) + 64);
      if (v21)
      {
        v61 = v20;
        v23 = &v15[v22];
        v24 = v55;
        (*(v17 + 32))(v58, v23, v55);
        if (qword_1019F21E0 == -1)
        {
LABEL_5:
          v25 = static OS_os_log.crlThreeDimensionalObjects;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          v27 = v60;
          v28 = [v60 debugDescription];
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v29;
          *(inited + 40) = v31;
          v32 = static os_log_type_t.debug.getter();
          sub_100005404(v25, &_mh_execute_header, v32, "(USDZRep) [%{public}@] loadQLRenderer()", 39, 2, inited);
          swift_setDeallocating();
          sub_100005070((inited + 32));
          _s17QLSnapshotBackendCMa(0);
          v33 = swift_allocObject();
          v33[1] = vdupq_n_s64(0x408F400000000000uLL);
          (*(v17 + 56))(v33->i64 + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_modelURL, 1, 1, v24);
          v34 = &v33->i8[OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_delegate];
          *(&v33->i64[1] + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_delegate) = 0;
          swift_unknownObjectWeakInit();
          UUID.init()();
          *(v34 + 1) = &off_1018A11E0;
          swift_unknownObjectWeakAssign();
          _s17QLSnapshotBackendC12BackendStateOMa(0);
          swift_storeEnumTagMultiPayload();
          v35 = sub_1005B981C(&unk_101A1B808, &qword_1014AC330);
          v36 = v35[12];
          v37 = v17;
          v38 = v54;
          v39 = (v54 + v35[16]);
          v40 = v54 + v35[20];
          v41 = v61;
          *v54 = v61;
          v42 = v58;
          (*(v37 + 16))(v38 + v36, v58, v24);
          *v39 = v33;
          v39[1] = &off_10188D2F0;
          *v40 = 0u;
          *(v40 + 1) = 0u;
          *(v40 + 4) = 0;
          *(v40 + 40) = xmmword_101481DF0;
          swift_storeEnumTagMultiPayload();
          v43 = v56;
          swift_beginAccess();
          v44 = v41;

          sub_100D15E6C(v38, v27 + v43, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          swift_endAccess();
          sub_100CF8070();

          sub_100D13C38(v38, type metadata accessor for CRLUSDZRep.AssetLoadingState);
          return (*(v37 + 8))(v42, v24);
        }

LABEL_14:
        swift_once();
        goto LABEL_5;
      }

      (*(v17 + 8))(&v15[v22], v55);
    }

    else
    {
      sub_100D13C38(v15, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    }

    v1 = v59;
    v0 = v60;
  }

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v46 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_10146C6B0;
  v24 = [v0 info];
  type metadata accessor for CRLUSDZItem(0);
  v17 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v17 != &off_101A2E658)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();

  sub_1005B981C(&unk_101A2EF00, qword_101485680);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_100D13C98(v6, v9, type metadata accessor for CRLAssetData);
  sub_100D13C38(v6, type metadata accessor for CRLUSDZAssetDataStruct);
  v48 = v61;
  (*(v1 + 16))(v3, v9, v61);
  sub_100D13C38(v9, type metadata accessor for CRLAssetData);
  v49 = UUID.uuidString.getter();
  v51 = v50;
  (*(v1 + 8))(v3, v48);
  *(v47 + 56) = &type metadata for String;
  *(v47 + 64) = sub_1000053B0();
  *(v47 + 32) = v49;
  *(v47 + 40) = v51;
  v52 = static os_log_type_t.default.getter();
  sub_100005404(v46, &_mh_execute_header, v52, "Cannot load USD renderer with unexpected loading state for asset %{public}@", 75, 2, v47);
  swift_setDeallocating();
  return sub_100005070((v47 + 32));
}

void sub_100D01D3C()
{
  v1 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v56 - v2;
  v4 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v4);
  v6 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = &v56 - v12;
  v13 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  sub_100D13C98(v0 + v13, v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {

    v14 = sub_1005B981C(&unk_101A1B808, &qword_1014AC330);
    v15 = v14[12];
    v16 = v14[16];
    v17 = (v6 + v14[20]);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = v17[4];
    v23 = v17[5];
    v58 = *(v6 + v16);
    sub_100863E8C(v18, v19, v20, v21, v22, v23);
    v57 = v3;
    v24 = *(v8 + 32);
    v25 = v6 + v15;
    v26 = v59;
    v24(v59, v25, v7);
    (*(v8 + 16))(v10, v26, v7);
    v27 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v0;
    v24((v28 + v27), v10, v7);
    v29 = type metadata accessor for TaskPriority();
    v30 = v57;
    (*(*(v29 - 8) + 56))(v57, 1, 1, v29);
    type metadata accessor for MainActor();
    v31 = v0;
    swift_unknownObjectRetain();

    v32 = static MainActor.shared.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = &protocol witness table for MainActor;
    *(v33 + 32) = v31;
    *(v33 + 40) = v58;
    *(v33 + 56) = &unk_1014AC3A0;
    *(v33 + 64) = v28;
    sub_10064191C(0, 0, v30, &unk_1014AC3A8, v33);
    swift_unknownObjectRelease();

    (*(v8 + 8))(v59, v7);
  }

  else
  {
    sub_100D13C38(v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v59 = objc_opt_self();
    v34 = [v59 _atomicIncrementAssertCount];
    v60 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v60, "Unexpected loading state for USD scene loading.", 47, 2u);
    StaticString.description.getter("loadSceneInRenderer()", 21, 2);
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
    v36 = String._bridgeToObjectiveC()();

    v37 = [v36 lastPathComponent];

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v41 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v34;
    v43 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v43;
    v44 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v44;
    *(inited + 72) = v35;
    *(inited + 136) = &type metadata for String;
    v45 = sub_1000053B0();
    *(inited + 112) = v38;
    *(inited + 120) = v40;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v45;
    *(inited + 152) = 1351;
    v46 = v60;
    *(inited + 216) = v43;
    *(inited + 224) = v44;
    *(inited + 192) = v46;
    v47 = v35;
    v48 = v46;
    v49 = static os_log_type_t.error.getter();
    sub_100005404(v41, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v50 = static os_log_type_t.error.getter();
    sub_100005404(v41, &_mh_execute_header, v50, "Unexpected loading state for USD scene loading.", 47, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v51 = swift_allocObject();
    v51[2] = 8;
    v51[3] = 0;
    v51[4] = 0;
    v51[5] = 0;
    v52 = __VaListBuilder.va_list()();
    StaticString.description.getter("loadSceneInRenderer()", 21, 2);
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unexpected loading state for USD scene loading.", 47, 2);
    v55 = String._bridgeToObjectiveC()();

    [v59 handleFailureInFunction:v53 file:v54 lineNumber:1351 isFatal:0 format:v55 args:v52];
  }
}

uint64_t sub_100D02490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for CRLUSDRendering.SceneRequest(0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[26] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[27] = v7;
  v4[28] = v6;

  return _swift_task_switch(sub_100D02644, v7, v6);
}

uint64_t sub_100D02644()
{
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v55 = v0[22];
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[13];
  v4 = v0[14];
  v5 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v7 = [v3 debugDescription];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  v11 = static os_log_type_t.debug.getter();
  sub_100005404(v5, &_mh_execute_header, v11, "(USDZRep) [%{public}@] loadSceneInRenderer()", 44, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v12 = *(v2 + 16);
  v12(v55, v4, v1);
  v13 = [v3 layout];
  type metadata accessor for CRLUSDZLayout();
  swift_dynamicCastClassUnconditional();
  sub_1008B7648();
  v53 = v14;

  [v3 layerFrameInScaledCanvas];
  v59 = CGRectIntegral(v58);
  width = v59.size.width;
  height = v59.size.height;
  [v3 layerFrameInScaledCanvas];
  sub_100D0C010(v17, v18);
  v20 = v19;
  v22 = v21;
  v23 = [v3 canvas];
  if (v23)
  {
    v24 = v23;
    [v23 contentsScale];
    v26 = v25;
  }

  else
  {
    v26 = 2.0;
  }

  v27 = v0[21];
  v28 = v0[19];
  v29 = v0[20];
  v30 = v0[17];
  v31 = v0[15];
  v12(v27, v0[22], v28);
  v12(v30, v27, v28);
  v12(v31, v27, v28);
  (*(v29 + 56))(v31, 0, 1, v28);
  v29 += 8;
  v32 = URL.bookmarkData(options:includingResourceValuesForKeys:relativeTo:)();
  v34 = v33;
  v35 = v0[24];
  v50 = v0[22];
  v51 = v0[23];
  v36 = v0[21];
  v38 = v0[18];
  v37 = v0[19];
  v39 = v0[17];
  v49 = v0[16];
  v56 = v0[12];
  v52 = v0[25];
  sub_10000CAAC(v0[15], &unk_1019F33C0, &unk_101468A60);
  v40 = *v29;
  (*v29)(v36, v37);
  v40(v50, v37);
  v41 = (v39 + *(v49 + 20));
  *v41 = v32;
  v41[1] = v34;
  sub_100D15784(v39, v38, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  sub_100D15784(v38, v35, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  v42 = v35 + *(v51 + 20);
  *v42 = 1103626240;
  *(v42 + 16) = v53;
  *(v42 + 32) = width;
  *(v42 + 40) = height;
  *(v42 + 48) = v20;
  *(v42 + 56) = v22;
  *(v42 + 64) = v26;
  v43 = (v35 + *(v51 + 24));
  *v43 = 0u;
  v43[1] = 0u;
  sub_100D15784(v35, v52, type metadata accessor for CRLUSDRendering.SceneRequest);
  ObjectType = swift_getObjectType();
  v54 = (*(v56 + 16) + **(v56 + 16));
  v45 = swift_task_alloc();
  v0[29] = v45;
  *v45 = v0;
  v45[1] = sub_100D02C24;
  v46 = v0[25];
  v47 = v0[12];

  return v54(v46, ObjectType, v47);
}

uint64_t sub_100D02C24()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_100D02E40;
  }

  else
  {
    v5 = sub_100D02D60;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D02D60()
{
  v1 = *(v0 + 200);

  sub_100D13C38(v1, type metadata accessor for CRLUSDRendering.SceneRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D02E40()
{
  v1 = *(v0 + 200);

  sub_100D13C38(v1, type metadata accessor for CRLUSDRendering.SceneRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D02F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  type metadata accessor for MainActor();
  v3[14] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v5;
  v3[16] = v4;

  return _swift_task_switch(sub_100D02FB8, v5, v4);
}

uint64_t sub_100D02FB8()
{
  v1 = *(v0 + 104);
  v2 = [v1 layout];
  type metadata accessor for CRLUSDZLayout();
  swift_dynamicCastClassUnconditional();
  sub_1008B7648();
  v20 = v3;

  [v1 layerFrameInScaledCanvas];
  v25 = CGRectIntegral(v24);
  width = v25.size.width;
  height = v25.size.height;
  [v1 layerFrameInScaledCanvas];
  sub_100D0C010(v6, v7);
  v9 = v8;
  v11 = v10;
  v12 = [v1 canvas];
  if (v12)
  {
    v13 = v12;
    [v12 contentsScale];
    v15 = v14;
  }

  else
  {
    v15 = 2.0;
  }

  v22 = *(v0 + 96);
  ObjectType = swift_getObjectType();
  *(v0 + 16) = 1103626240;
  *(v0 + 32) = v20;
  *(v0 + 48) = width;
  *(v0 + 56) = height;
  *(v0 + 64) = v9;
  *(v0 + 72) = v11;
  *(v0 + 80) = v15;
  v21 = (*(v22 + 24) + **(v22 + 24));
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  v17[1] = sub_100D031E4;
  v18 = *(v0 + 96);

  return v21(v0 + 16, ObjectType, v18);
}

uint64_t sub_100D031E4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_100D03384;
  }

  else
  {
    v5 = sub_100D03320;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D03320()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D03384()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100D033E8(char *a1)
{
  v59 = type metadata accessor for UUID();
  v2 = *(v59 - 8);
  __chkstk_darwin(v59);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  v8 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = sub_100D0BB70();
  v18 = v17;
  v19 = &a1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
  v20 = a1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
  if (v20 > 0x3F)
  {
    goto LABEL_11;
  }

  v53 = a1;
  v54 = v5;
  v57 = v20;
  v50 = v4;
  v51 = v10;
  v52 = &a1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
  v21 = *v19;
  v22 = *(*v19 + OBJC_IVAR____TtC8Freeform33CRLUndownloadedAssetDrawingHelper_asset);
  v23 = &unk_101A17000;
  v55 = *v19;
  v56 = v2;
  v58 = v17;
  if (v22)
  {
    v24 = v21;
    v26 = *&v22[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v25 = *&v22[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v22[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v26);
    v27 = *(v25 + 24);
    sub_100D1548C(v24, v57);
    v28 = v22;
    v29 = v26;
    v18 = v58;
    v2 = v56;
    v27(v29, v25);
    v23 = &unk_101A17000;

    v30 = *(v2 + 56);
    v31 = v59;
    v30(v16, 0, 1, v59);
  }

  else
  {
    v30 = *(v2 + 56);
    v31 = v59;
    v30(v16, 1, 1, v59);
    v32 = v21;
  }

  v33 = &v18[v23[496]];
  v34 = *(v33 + 3);
  v35 = *(v33 + 4);
  sub_100020E58(v33, v34);
  (*(v35 + 24))(v34, v35);
  v30(v13, 0, 1, v31);
  v36 = *(v54 + 48);
  sub_10000BE14(v16, v7, &qword_1019F6990, &qword_10146D2F0);
  sub_10000BE14(v13, &v7[v36], &qword_1019F6990, &qword_10146D2F0);
  v37 = *(v2 + 48);
  if (v37(v7, 1, v31) == 1)
  {
    sub_100D15590(v55, v57);
    sub_10000CAAC(v13, &qword_1019F6990, &qword_10146D2F0);
    sub_10000CAAC(v16, &qword_1019F6990, &qword_10146D2F0);
    if (v37(&v7[v36], 1, v31) == 1)
    {
      sub_10000CAAC(v7, &qword_1019F6990, &qword_10146D2F0);
      v18 = v58;
      v38 = v52;
LABEL_14:

      v42 = *v38;
      sub_100D1548C(*v38, v38[8]);
      return v42;
    }

    goto LABEL_10;
  }

  v39 = v51;
  sub_10000BE14(v7, v51, &qword_1019F6990, &qword_10146D2F0);
  if (v37(&v7[v36], 1, v31) == 1)
  {
    sub_100D15590(v55, v57);
    sub_10000CAAC(v13, &qword_1019F6990, &qword_10146D2F0);
    sub_10000CAAC(v16, &qword_1019F6990, &qword_10146D2F0);
    (*(v56 + 8))(v39, v31);
LABEL_10:
    sub_10000CAAC(v7, &unk_101A0AFE0, &unk_10146F3C0);
    a1 = v53;
    v18 = v58;
    goto LABEL_11;
  }

  v44 = v56;
  v45 = &v7[v36];
  v46 = v50;
  (*(v56 + 32))(v50, v45, v31);
  sub_100D15398(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = sub_100D15590(v55, v57);
  v49 = *(v44 + 8);
  v49(v46, v31, v48);
  sub_10000CAAC(v13, &qword_1019F6990, &qword_10146D2F0);
  sub_10000CAAC(v16, &qword_1019F6990, &qword_10146D2F0);
  (v49)(v39, v31);
  sub_10000CAAC(v7, &qword_1019F6990, &qword_10146D2F0);
  v38 = v52;
  a1 = v53;
  v18 = v58;
  if (v47)
  {
    goto LABEL_14;
  }

LABEL_11:
  v40 = objc_allocWithZone(type metadata accessor for CRLUndownloadedAssetDrawingHelper());
  v41 = a1;
  v42 = sub_101252E28(v41, v18);

  return v42;
}

uint64_t sub_100D039C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[22] = a4;
  v9 = type metadata accessor for URL();
  v8[27] = v9;
  v8[28] = *(v9 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[35] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[36] = v11;
  v8[37] = v10;

  return _swift_task_switch(sub_100D03B18, v11, v10);
}

uint64_t sub_100D03B18()
{
  v1 = v0[34];
  v2 = v0[22];
  v3 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  v0[38] = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  sub_100D13C98(v2 + v3, v1, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v14 = v0[34];

    sub_100D13C38(v14, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    goto LABEL_5;
  }

  v4 = v0[34];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[23];
  v8 = *v4;
  v0[39] = *v4;
  v9 = sub_1005B981C(&unk_101A1B808, &qword_1014AC330);
  v0[40] = v9;
  v10 = v9[12];
  v11 = *(v4 + v9[16]);
  v0[41] = v11;
  v12 = v4 + v9[20];
  sub_100863E8C(*v12, *(v12 + 1), *(v12 + 2), *(v12 + 3), *(v12 + 4), *(v12 + 5));
  v13 = *(v6 + 8);
  v0[42] = v13;
  v0[43] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v4 + v10, v5);
  if (v11 != v7)
  {

    swift_unknownObjectRelease();
LABEL_5:

    v15 = v0[1];

    return v15();
  }

  v20 = (v0[25] + *v0[25]);
  v17 = swift_task_alloc();
  v0[44] = v17;
  *v17 = v0;
  v17[1] = sub_100D03DB0;
  v19 = v0[23];
  v18 = v0[24];

  return v20(v19, v18);
}

uint64_t sub_100D03DB0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_100D03F9C;
  }

  else
  {
    v5 = sub_100D03EEC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D03EEC()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D03F9C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 248);
  v3 = *(v0 + 176);

  sub_100D13C98(v3 + v1, v2, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v4 = *(v0 + 360);
    v5 = *(v0 + 320);
    v6 = *(v0 + 264);
    v7 = *(v0 + 248);
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v10 = *(v0 + 216);
    v11 = *v7;
    v12 = v5[12];
    v13 = v7 + v5[20];
    v38 = *(v7 + v5[16]);
    sub_100863E8C(*v13, *(v13 + 1), *(v13 + 2), *(v13 + 3), *(v13 + 4), *(v13 + 5));
    (*(v9 + 32))(v8, v7 + v12, v10);
    v14 = v5[12];
    v15 = v5[16];
    *v6 = v11;
    (*(v9 + 16))(&v6[v14], v8, v10);
    *&v6[v15] = v38;
    *(v0 + 152) = v4;
    v37 = v11;
    swift_unknownObjectRetain();
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    if (swift_dynamicCast())
    {
      v16 = *(v0 + 112);
      v17 = *(v0 + 120);
      v18 = *(v0 + 128);
    }

    else
    {
      *(v0 + 160) = *(v0 + 360);
      swift_errorRetain();
      if (swift_dynamicCast())
      {
        v16 = *(v0 + 136);
        v17 = *(v0 + 144);
        v18 = 4;
      }

      else
      {
        swift_getErrorValue();
        v16 = Error.localizedDescription.getter();
        v18 = 5;
      }
    }

    v27 = *(v0 + 336);
    v29 = *(v0 + 304);
    v28 = *(v0 + 312);
    v30 = *(v0 + 264);
    v31 = *(v0 + 232);
    v32 = *(v0 + 216);
    v33 = *(v0 + 176);
    v34 = v30 + *(*(v0 + 320) + 80);
    *v34 = v16;
    *(v34 + 8) = v17;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    *(v34 + 16) = v18;
    *(v34 + 40) = xmmword_101465930;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100D15E6C(v30, v33 + v29, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    swift_endAccess();
    sub_100CF8070();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_100D13C38(v30, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    v27(v31, v32);
  }

  else
  {
    v19 = *(v0 + 360);
    v21 = *(v0 + 304);
    v20 = *(v0 + 312);
    v22 = *(v0 + 248);
    v23 = *(v0 + 256);
    v24 = *(v0 + 176);
    v25 = *(sub_1005B981C(&qword_101A1B818, &qword_1014AC338) + 48);
    *v23 = v20;
    *(v23 + v25) = v19;
    type metadata accessor for CRLUSDZRep.AssetLoadingState.LoadingError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    swift_errorRetain();
    v26 = v20;
    sub_100D15E6C(v23, v24 + v21, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    swift_endAccess();
    sub_100CF8070();
    swift_unknownObjectRelease();

    sub_100D13C38(v23, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    sub_100D13C38(v22, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_100D043BC(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10085E048;

  return v7(0, 0, ObjectType, a2);
}

void sub_100D0450C(char a1)
{
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8];
  if ((v6 & 0xC0) == 0x40)
  {
    v7 = *&v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState];
    v8 = swift_allocObject();
    v9 = type metadata accessor for TaskPriority();
    v15 = v7[1];
    *(v8 + 16) = a1 & 1;
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    type metadata accessor for MainActor();
    sub_100D1548C(v7, v6);
    v10 = v1;
    swift_unknownObjectRetain();

    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = &protocol witness table for MainActor;
    *(v12 + 32) = v10;
    *(v12 + 40) = v15;
    *(v12 + 56) = &unk_1014AC378;
    *(v12 + 64) = v8;
    sub_10064191C(0, 0, v5, &unk_1014AC388, v12);

    sub_100D15590(v7, v6);
  }

  else
  {
    sub_100006370(0, &qword_1019F6EE0, OS_os_log_ptr);
    *&v15 = static OS_os_log.default.getter();
    v13 = static os_log_type_t.default.getter();
    sub_100005404(v15, &_mh_execute_header, v13, "Incorrect renderingState to stop playback.", 42, 2, _swiftEmptyArrayStorage);
    v14 = v15;
  }
}

uint64_t sub_100D04764(uint64_t a1, uint64_t a2, char a3)
{
  v3[2] = type metadata accessor for MainActor();
  v3[3] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v10 = (*(a2 + 32) + **(a2 + 32));
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  if (a3)
  {
    v7[1] = sub_100D048E0;
    v8 = 4;
  }

  else
  {
    v7[1] = sub_100D04A3C;
    v8 = 5;
  }

  return v10(0, v8, ObjectType, a2);
}

uint64_t sub_100D048E0()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1007134B0;
  }

  else
  {
    v4 = sub_10085FBEC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100D04A3C()
{
  *(*v1 + 48) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100D04B98;
  }

  else
  {
    v4 = sub_100867724;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100D04B98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D04BFC(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10085E048;

  return v7(0, 3, ObjectType, a2);
}

uint64_t sub_100D04D4C(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100D04E9C;

  return v7(0, 2, ObjectType, a2);
}

uint64_t sub_100D04E9C()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10085FC50;
  }

  else
  {
    v4 = sub_100867724;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100D05140(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_knobController];
  v4 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_playPauseKnob);
  if (v4)
  {
    if (*(v4 + OBJC_IVAR____TtC8Freeform20CRLUSDZPlayPauseKnob_isPlaying) == 1)
    {
      v5 = OBJC_IVAR____TtC8Freeform21CRLUSDZKnobController_currentKnobs;
      v6 = swift_beginAccess();
      v7 = *(v3 + v5);
      v12 = a1;
      __chkstk_darwin(v6);
      v11[2] = &v12;

      v8 = sub_100C33540(sub_100D160D0, v11, v7);

      if (v8)
      {
        return 1;
      }
    }
  }

  v10 = type metadata accessor for CRLUSDZRep(0);
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "directlyManagesVisibilityOfKnob:", a1);
}

void sub_100D052F0(char a1)
{
  v3 = [v1 interactiveCanvasController];
  if (v3)
  {
    v11 = v3;
    v4 = [v3 layerHost];
    if (v4)
    {
      v5 = [v4 miniFormatterPresenter];
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = [v1 interactiveCanvasController];
        if (v6 && (v7 = v6, v8 = [v6 editorController], v7, v8) && (v9 = objc_msgSend(v8, "selectionPath"), v8, v9))
        {
          [v5 presentMiniFormatterForSelectionPath:v9];
          if (a1)
          {
            v10 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter;
            if (*(v1 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter) != 1)
            {
              [v1 performSelector:"hideMiniFormatterIfNecessary" withObject:0 afterDelay:3.25];
              swift_unknownObjectRelease();

              *(v1 + v10) = 1;
              return;
            }
          }

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

double sub_100D05494()
{
  v1 = [v0 interactiveCanvasController];
  if (v1)
  {
    v3 = v1;
    v4 = [v1 layerHost];

    if (v4)
    {
      v5 = [v4 miniFormatterPresenter];
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter;
        if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_waitingToHideMiniFormatter) == 1)
        {
          [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v0 selector:"hideMiniFormatterIfNecessary" object:0];
          *(v0 + v6) = 0;
        }

        v7 = [v0 interactiveCanvasController];
        if (!v7 || (v8 = v7, v9 = [v7 layerHost], v8, !v9) || (v10 = objc_msgSend(v9, "miniFormatterPresenter"), swift_unknownObjectRelease(), !v10) || (v11 = objc_msgSend(v10, "isPresentingSecondLayerPopover"), swift_unknownObjectRelease(), (v11 & 1) == 0))
        {
          [v5 dismissMiniFormatterForRep:v0];
        }

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_100D05668()
{
  v1 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = (&v23 - v5);
  v7 = type metadata accessor for URL();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v27 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
  swift_beginAccess();
  sub_100D13C98(v0 + v9, v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_100D13C38(v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  }

  v10 = sub_1005B981C(&unk_101A1B808, &qword_1014AC330);
  v11 = *(v10 + 48);
  swift_unknownObjectRelease();
  v12 = (v6 + *(v10 + 80));
  v13 = *v12;
  v25 = v12[1];
  v26 = v13;
  v14 = v12[2];
  v23 = v12[3];
  v24 = v14;
  v15 = v12[4];
  v16 = v12[5];
  v17 = v6 + v11;
  v18 = v7;
  v19 = v27;
  (*(v28 + 32))(v27, v17, v18);
  if (v16 >> 62)
  {
    sub_100863E8C(v26, v25, v24, v23, v15, v16);
    return (*(v28 + 8))(v19, v18);
  }

  else
  {

    v20 = *(sub_1005B981C(&qword_101A1B820, &qword_1014AC340) + 64);
    *v3 = sub_100D0BB70();
    v3[8] = 0;
    v21 = v28;
    (*(v28 + 16))(&v3[v20], v19, v18);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100D15E6C(v3, v0 + v9, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    swift_endAccess();
    sub_100CF8070();
    sub_100D13C38(v3, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    result = (*(v21 + 8))(v19, v18);
    *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_rendererHasBeenSuspended) = 1;
  }

  return result;
}

void sub_100D059F0()
{
  v1 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = (&v19 - v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_rendererHasBeenSuspended;
  if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_rendererHasBeenSuspended) == 1)
  {
    v12 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    sub_100D13C98(v0 + v12, v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v8;
      v13 = *v6;
      v19 = sub_1005B981C(&qword_101A1B820, &qword_1014AC340);
      v20 = v0;
      v21 = *(v19 + 64);
      v14 = sub_100D0BB70();
      type metadata accessor for CRLAsset();
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        v16 = v22;
        (*(v22 + 32))(v10, v6 + v21, v7);
        v17 = v20;
        v18 = *(v19 + 64);
        *v3 = sub_100D0BB70();
        v3[8] = 1;
        (*(v16 + 16))(&v3[v18], v10, v7);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100D15E6C(v3, v17 + v12, type metadata accessor for CRLUSDZRep.AssetLoadingState);
        swift_endAccess();
        sub_100CF8070();
        sub_100D13C38(v3, type metadata accessor for CRLUSDZRep.AssetLoadingState);
        (*(v16 + 8))(v10, v7);
        *(v17 + v11) = 0;
      }

      else
      {
        (*(v22 + 8))(v6 + v21, v7);
      }
    }

    else
    {
      sub_100D13C38(v6, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    }
  }
}

void sub_100D05DB0()
{
  if (v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isInteractive] != 1)
  {
    return;
  }

  v1 = [v0 interactiveCanvasController];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v1;
  v3 = [v1 editorController];
  if (!v3 || (v4 = v3, v5 = [v3 selectionPath], v4, !v5))
  {
    v5 = v2;
LABEL_11:

LABEL_12:
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      return;
    }

    goto LABEL_78;
  }

  v6 = [v2 selectionModelTranslator];
  if (!v6)
  {

    goto LABEL_11;
  }

  v7 = v6;
  v64 = v5;
  v8 = [v6 boardItemsForSelectionPath:v5];

  type metadata accessor for CRLBoardItem(0);
  sub_100D15398(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v69 = v2;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_83;
  }

  v10 = _swiftEmptySetSingleton;
LABEL_8:
  v74 = v10;
  v11 = v9;
  if ((v9 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v11 = v75;
    v12 = v76;
    v13 = v77;
    v14 = v78;
    v15 = v79;
  }

  else
  {
    v14 = 0;
    v16 = -1 << *(v9 + 32);
    v12 = v9 + 56;
    v17 = ~v16;
    v18 = -v16;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v15 = v19 & *(v9 + 56);
    v13 = v17;
  }

  v20 = (v13 + 64) >> 6;
  v21 = &selRef_rangeOfColumns_;
  v67 = v12;
  v68 = v11;
  v66 = v20;
  while (v11 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v25 = v73, v70 = v15, v71 = v14, !v73))
    {
LABEL_75:
      sub_100035F90(v68);

      return;
    }

LABEL_31:
    v26 = [v2 v21[284]];
    if (v26)
    {
      sub_100E6CD10(&v73, v26);
    }

    type metadata accessor for CRLGroupItem(0);
    if (!swift_dynamicCastClass())
    {

      goto LABEL_21;
    }

    v27 = sub_1005F36D4();
    v9 = v27;
    if (!(v27 >> 62))
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_36;
      }

      goto LABEL_73;
    }

    v28 = _CocoaArrayWrapper.endIndex.getter();
    if (v28)
    {
LABEL_36:
      v65 = v25;
      if (v28 >= 1)
      {
        v29 = v28;
        v30 = 0;
        v72 = v28;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v31 = *(v9 + 32 + 8 * v30);
          }

          v32 = v31;
          v33 = [v2 v21[284]];
          if (v33)
          {
            v34 = v74;
            if ((v74 & 0xC000000000000001) == 0)
            {
              v49 = v33;
              sub_100006370(0, &qword_1019FB7A0, off_10182F798);
              v50 = *(v34 + 40);
              v51 = v49;
              v52 = NSObject._rawHashValue(seed:)(v50);
              v53 = -1 << *(v34 + 32);
              v54 = v52 & ~v53;
              if ((*(v34 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
              {
                v55 = ~v53;
                while (1)
                {
                  v56 = *(*(v34 + 48) + 8 * v54);
                  v57 = static NSObject.== infix(_:_:)();

                  if (v57)
                  {
                    break;
                  }

                  v54 = (v54 + 1) & v55;
                  if (((*(v34 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
                  {
                    v34 = v74;
                    v2 = v69;
                    goto LABEL_60;
                  }
                }

                v2 = v69;
                v21 = &selRef_rangeOfColumns_;
                v29 = v72;
              }

              else
              {
LABEL_60:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v73 = v34;
                v59 = v51;
                sub_100E7D93C(v59, v54, isUniquelyReferenced_nonNull_native);

                v74 = v73;
                v21 = &selRef_rangeOfColumns_;
                v29 = v72;
              }

              goto LABEL_40;
            }

            if (v74 < 0)
            {
              v35 = v74;
            }

            else
            {
              v35 = v74 & 0xFFFFFFFFFFFFFF8;
            }

            v36 = v33;

            v37 = __CocoaSet.member(for:)();

            if (!v37)
            {
              v38 = __CocoaSet.count.getter();
              if (__OFADD__(v38, 1))
              {
                goto LABEL_77;
              }

              v39 = sub_100E72F04(v35, v38 + 1);
              v73 = v39;
              v40 = v39[2];
              if (v39[3] <= v40)
              {
                sub_100E75374(v40 + 1);
                v39 = v73;
              }

              v41 = v39[5];
              v42 = v36;
              v43 = NSObject._rawHashValue(seed:)(v41);
              v44 = (v39 + 7);
              v45 = -1 << *(v39 + 32);
              v46 = v43 & ~v45;
              v47 = v46 >> 6;
              if (((-1 << v46) & ~v39[(v46 >> 6) + 7]) != 0)
              {
                v48 = __clz(__rbit64((-1 << v46) & ~v39[(v46 >> 6) + 7])) | v46 & 0x7FFFFFFFFFFFFFC0;
                v29 = v72;
              }

              else
              {
                v60 = 0;
                v61 = (63 - v45) >> 6;
                v29 = v72;
                do
                {
                  if (++v47 == v61 && (v60 & 1) != 0)
                  {
                    __break(1u);
                    goto LABEL_76;
                  }

                  v62 = v47 == v61;
                  if (v47 == v61)
                  {
                    v47 = 0;
                  }

                  v60 |= v62;
                  v63 = *&v44[8 * v47];
                }

                while (v63 == -1);
                v48 = __clz(__rbit64(~v63)) + (v47 << 6);
              }

              *&v44[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
              *(v39[6] + 8 * v48) = v42;
              ++v39[2];

              v74 = v39;
              goto LABEL_40;
            }

            sub_100006370(0, &qword_1019FB7A0, off_10182F798);
            swift_dynamicCast();
          }

LABEL_40:
          if (++v30 == v29)
          {

            goto LABEL_74;
          }
        }
      }

      __break(1u);
LABEL_83:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1005BFCB4(_swiftEmptyArrayStorage);
      }

      else
      {
        v10 = _swiftEmptySetSingleton;
      }

      v2 = v69;
      goto LABEL_8;
    }

LABEL_73:

LABEL_74:

LABEL_21:
    v15 = v70;
    v14 = v71;
    v12 = v67;
    v11 = v68;
    v20 = v66;
  }

  v22 = v14;
  v23 = v15;
  v24 = v14;
  if (v15)
  {
LABEL_27:
    v70 = (v23 - 1) & v23;
    v71 = v24;
    v25 = *(*(v11 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v25)
    {
      goto LABEL_75;
    }

    goto LABEL_31;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      goto LABEL_75;
    }

    v23 = *(v12 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_27;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  if (_CocoaArrayWrapper.endIndex.getter())
  {

    sub_1005BFCB4(_swiftEmptyArrayStorage);
  }
}

void sub_100D0656C()
{
  v1 = [v0 repForSelecting];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isSelected];

    if (v3)
    {
      return;
    }
  }

  sub_100D05DB0();
  v5 = v4;
  v20 = v0;
  if ((v4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019FB7A0, off_10182F798);
    sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0, off_10182F798, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v8 = 0;
    v10 = -1 << *(v4 + 32);
    v6 = v4 + 56;
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

    v9 = v12 & *(v4 + 56);
  }

  v13 = (v7 + 64) >> 6;
  while (1)
  {
    if (v5 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100006370(0, &qword_1019FB7A0, off_10182F798), swift_dynamicCast(), (v16 = v21) == 0))
      {
LABEL_24:
        sub_100035F90(v5);
        return;
      }

      goto LABEL_21;
    }

    v14 = v8;
    v15 = v9;
    if (!v9)
    {
      break;
    }

LABEL_17:
    v9 = (v15 - 1) & v15;
    v16 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v16)
    {
      goto LABEL_24;
    }

LABEL_21:
    v17 = [v16 repForSelecting];
    if (v17)
    {
      v18 = v17;
      type metadata accessor for CRLUSDZRep(0);
      if (swift_dynamicCastClass())
      {

        goto LABEL_11;
      }

      [v18 frameInUnscaledCanvas];
      v19 = [v20 intersectsUnscaledRect:?];

      if (v19)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_11:
    }
  }

  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_24;
    }

    v15 = *(v6 + 8 * v8);
    ++v14;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_100D0686C()
{
  v1 = [v0 interactiveCanvasController];
  if (v1)
  {
    v2 = v1;
    if ([v1 isInDynamicOperation] && objc_msgSend(v0, "isSelected") && (v3 = objc_msgSend(v2, "tmCoordinator"), v4 = objc_msgSend(v3, "controllingTM"), v3, v4) && (v5 = objc_msgSend(v4, "tracker"), swift_unknownObjectRelease(), v5))
    {
      v6 = &OBJC_PROTOCOL___CRLCanvasRepRotateTracking;
      v7 = [v5 conformsToProtocol:v6];

      swift_unknownObjectRelease();
      if (v7)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_100D069C8()
{
  v1 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_cachedContentPlatformView;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_cachedContentPlatformView);
  v3 = v2;
  if (!v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState);
    v5 = *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8);
    v6 = v5 >> 6;
    if (v5 >> 6 > 1)
    {
      if (v6 == 2)
      {
        v20 = [objc_allocWithZone(UIImage) initWithCGImage:v4];
        v3 = [objc_allocWithZone(UIImageView) initWithImage:v20];

        [v3 setContentMode:2];
        if (v5)
        {
          v21 = sub_100D075C8();
          sub_100AC85E4();

          v22 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView;
          v23 = [*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView) superview];
          if (!v23 || (v24 = v23, sub_100006370(0, &qword_1019F6D00, UIView_ptr), v25 = v3, LODWORD(v53) = static NSObject.== infix(_:_:)(), v24, v25, (v53 & 1) == 0))
          {
            [*(v0 + v22) removeFromSuperview];
            sub_100D07114([v3 addSubview:*(v0 + v22)]);
          }

          [*(v0 + v22) setHidden:{0, v53}];
        }

        v26 = *(v0 + v1);
        *(v0 + v1) = v3;
        v27 = v3;

        goto LABEL_15;
      }

      if (v4 == 1 && v5 == 192)
      {
LABEL_21:
        v3 = 0;
        goto LABEL_22;
      }
    }

    else if (v6)
    {
      v3 = *(v4 + 32);
      v7 = *(v4 + 48);
      v8 = (v7 >> 4) & 3;
      if (!v8)
      {
        [v3 setAutoresizingMask:0];
        goto LABEL_22;
      }

      if (v8 == 1)
      {
        if ((v7 & 0xC0) == 0x80)
        {
          v9 = *(v4 + 40);

          [v3 frame];
          v11 = v10;
          v13 = v12;
          v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, v10, v12}];
          v15 = [objc_allocWithZone(UIImage) initWithCGImage:v9];
          v16 = [objc_allocWithZone(UIImageView) initWithImage:v15];

          [v3 setAlpha:0.0];
          [v3 setFrame:{0.0, 0.0, v11, v13}];
          v17 = v16;
          [v17 setFrame:{0.0, 0.0, v11, v13}];
          [v14 addSubview:v3];
          [v14 addSubview:v17];
          [v3 setAutoresizingMask:18];
          [v17 setAutoresizingMask:18];

          v18 = *(v0 + v1);
          *(v0 + v1) = v14;
          v19 = v14;

          sub_100D15590(v4, v5);
          v3 = v14;
          goto LABEL_22;
        }

        sub_100D1548C(*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState), *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8));
        v52 = v3;
        [v52 setAlpha:0.0];
        [v52 setAutoresizingMask:0];
LABEL_15:
        sub_100D15590(v4, v5);
        goto LABEL_22;
      }
    }

    v54 = objc_opt_self();
    v28 = [v54 _atomicIncrementAssertCount];
    v55 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v55, "Unexpectedly returning nil from contentPlatformView.", 52, 2u);
    StaticString.description.getter("contentPlatformView", 19, 2);
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
    v30 = String._bridgeToObjectiveC()();

    v31 = [v30 lastPathComponent];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v35 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v28;
    v37 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v37;
    v38 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v38;
    *(inited + 72) = v29;
    *(inited + 136) = &type metadata for String;
    v39 = sub_1000053B0();
    *(inited + 112) = v32;
    *(inited + 120) = v34;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v39;
    *(inited + 152) = 1895;
    v40 = v55;
    *(inited + 216) = v37;
    *(inited + 224) = v38;
    *(inited + 192) = v40;
    v41 = v29;
    v42 = v40;
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v44, "Unexpectedly returning nil from contentPlatformView.", 52, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v45 = swift_allocObject();
    v45[2] = 8;
    v45[3] = 0;
    v45[4] = 0;
    v45[5] = 0;
    v46 = __VaListBuilder.va_list()();
    StaticString.description.getter("contentPlatformView", 19, 2);
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unexpectedly returning nil from contentPlatformView.", 52, 2);
    v49 = String._bridgeToObjectiveC()();

    [v54 handleFailureInFunction:v47 file:v48 lineNumber:1895 isFatal:0 format:v49 args:v46];

    goto LABEL_21;
  }

LABEL_22:
  v50 = v2;
  return v3;
}

void sub_100D07114(uint64_t a1)
{
  v2 = sub_100D075C8();
  v38 = [v2 superview];

  if (v38)
  {
    v3 = [v1 canvas];
    if (v3)
    {
      v4 = v3;
      [v3 viewScale];
      v6 = v5;

      [v1 boundsForStandardKnobs];
      v11 = sub_100120414(v7, v8, v9, v10);
      v13 = sub_10011F340(v11, v12, v6);
      [*&v1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView] setFrame:{v13 + -25.0, v14 + -25.0, 50.0, 50.0}];
    }

    else
    {
      v15 = objc_opt_self();
      v16 = [v15 _atomicIncrementAssertCount];
      v39 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v39, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("updateSpinnerViewConstraints()", 30, 2);
      v17 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
      v18 = String._bridgeToObjectiveC()();

      v19 = [v18 lastPathComponent];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v23 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v16;
      v25 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v25;
      v26 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v26;
      *(inited + 72) = v17;
      *(inited + 136) = &type metadata for String;
      v27 = sub_1000053B0();
      *(inited + 112) = v20;
      *(inited + 120) = v22;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v27;
      *(inited + 152) = 2113;
      v28 = v39;
      *(inited + 216) = v25;
      *(inited + 224) = v26;
      *(inited + 192) = v28;
      v29 = v17;
      v30 = v28;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v32, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v33 = swift_allocObject();
      v33[2] = 8;
      v33[3] = 0;
      v33[4] = 0;
      v33[5] = 0;
      v34 = __VaListBuilder.va_list()();
      StaticString.description.getter("updateSpinnerViewConstraints()", 30, 2);
      v35 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
      v36 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v37 = String._bridgeToObjectiveC()();

      [v15 handleFailureInFunction:v35 file:v36 lineNumber:2113 isFatal:0 format:v37 args:v34];
    }
  }
}

char *sub_100D075C8()
{
  v1 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView];
  }

  else
  {
    v4 = sub_10011ECB4();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    objc_allocWithZone(type metadata accessor for CRLIndeterminateRoundSpinnerView());
    v11 = v0;
    v12 = sub_100AC7244(v0, "handleSpinnerTapWithSender:", v4, v6, v8, v10);
    [v12 setHidden:1];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = *&v0[v1];
    *&v11[v1] = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void sub_100D07734()
{
  v1 = [v0 canvas];
  if (v1)
  {
    v2 = v1;
    [v1 viewScale];
    v4 = v3;

    [v0 boundsForStandardKnobs];
    if (v4 * CGRectGetWidth(v33) <= 60.0 || ([v0 boundsForStandardKnobs], v4 * CGRectGetHeight(v34) <= 60.0))
    {
      v6 = sub_100D075C8();
      [v6 setHidden:1];

      *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_spinnerViewHiddenBecauseTooSmall) = 1;
    }

    else
    {
      sub_100D07114(v5);
      if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_spinnerViewHiddenBecauseTooSmall) == 1)
      {
        *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_spinnerViewHiddenBecauseTooSmall) = 0;
        if ((*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isZooming) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isResizing) & 1) == 0)
        {
          v30 = sub_100D075C8();
          [v30 setHidden:0];
        }
      }
    }
  }

  else
  {
    v7 = objc_opt_self();
    v8 = [v7 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("updateSpinnerView()", 19, 2);
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v17 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v17;
    v18 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 2167;
    v20 = v31;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter("updateSpinnerView()", 19, 2);
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v29 = String._bridgeToObjectiveC()();

    [v7 handleFailureInFunction:v27 file:v28 lineNumber:2167 isFatal:0 format:v29 args:v26];
  }
}

void sub_100D07C80(_BYTE *a1, uint64_t a2, char a3, const char **a4, void (*a5)(id))
{
  a1[OBJC_IVAR____TtC8Freeform10CRLUSDZRep_isZooming] = a3;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for CRLUSDZRep(0);
  v7 = *a4;
  v8 = v10.receiver;
  v9 = objc_msgSendSuper2(&v10, v7);
  a5(v9);
}

void sub_100D07CF8()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8) & 0xC0) == 0x80 && (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8))
  {
    v1 = sub_100D075C8();
    v2 = [v1 layer];

    if (v2)
    {
      v26 = v2;
      sub_100CE6920(0.15);
    }

    else
    {
      v3 = objc_opt_self();
      v4 = [v3 _atomicIncrementAssertCount];
      v27 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v27, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("fadeSpinnerIn()", 15, 2);
      v5 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
      v6 = String._bridgeToObjectiveC()();

      v7 = [v6 lastPathComponent];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v11 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v4;
      v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v13;
      v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v14;
      *(inited + 72) = v5;
      *(inited + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(inited + 112) = v8;
      *(inited + 120) = v10;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v15;
      *(inited + 152) = 2223;
      v16 = v27;
      *(inited + 216) = v13;
      *(inited + 224) = v14;
      *(inited + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v21 = swift_allocObject();
      v21[2] = 8;
      v21[3] = 0;
      v21[4] = 0;
      v21[5] = 0;
      v22 = __VaListBuilder.va_list()();
      StaticString.description.getter("fadeSpinnerIn()", 15, 2);
      v23 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v25 = String._bridgeToObjectiveC()();

      [v3 handleFailureInFunction:v23 file:v24 lineNumber:2223 isFatal:0 format:v25 args:v22];
    }
  }
}

void sub_100D08168()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8) & 0xC0) == 0x80 && (*(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8))
  {
    v50 = v0;
    v1 = sub_100D075C8();
    v2 = [v1 isHidden];

    if (v2)
    {
      v3 = objc_opt_self();
      v4 = [v3 _atomicIncrementAssertCount];
      v51[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v51, "Trying to fade out while spinner view is hidden.", 48, 2u);
      StaticString.description.getter("fadeSpinnerOut()", 16, 2);
      v5 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
      v6 = String._bridgeToObjectiveC()();

      v7 = [v6 lastPathComponent];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v11 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v4;
      v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v13;
      v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v14;
      *(inited + 72) = v5;
      *(inited + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(inited + 112) = v8;
      *(inited + 120) = v10;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v15;
      *(inited + 152) = 2231;
      v16 = v51[0];
      *(inited + 216) = v13;
      *(inited + 224) = v14;
      *(inited + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "Trying to fade out while spinner view is hidden.", 48, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v21 = swift_allocObject();
      v21[2] = 8;
      v21[3] = 0;
      v21[4] = 0;
      v21[5] = 0;
      v22 = __VaListBuilder.va_list()();
      StaticString.description.getter("fadeSpinnerOut()", 16, 2);
      v23 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Trying to fade out while spinner view is hidden.", 48, 2);
      v25 = String._bridgeToObjectiveC()();

      [v3 handleFailureInFunction:v23 file:v24 lineNumber:2231 isFatal:0 format:v25 args:v22];
    }

    v26 = [*(v50 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep____lazy_storage___spinnerView) layer];
    if (v26)
    {
      v27 = v26;
      sub_100CE67E4(0.15);
      v28 = v27;
    }

    else
    {
      v29 = objc_opt_self();
      v30 = [v29 _atomicIncrementAssertCount];
      v51[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v51, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("fadeSpinnerOut()", 16, 2);
      v31 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
      v32 = String._bridgeToObjectiveC()();

      v33 = [v32 lastPathComponent];

      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v37 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_10146CA70;
      *(v38 + 56) = &type metadata for Int32;
      *(v38 + 64) = &protocol witness table for Int32;
      *(v38 + 32) = v30;
      v39 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v38 + 96) = v39;
      v40 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v38 + 104) = v40;
      *(v38 + 72) = v31;
      *(v38 + 136) = &type metadata for String;
      v41 = sub_1000053B0();
      *(v38 + 112) = v34;
      *(v38 + 120) = v36;
      *(v38 + 176) = &type metadata for UInt;
      *(v38 + 184) = &protocol witness table for UInt;
      *(v38 + 144) = v41;
      *(v38 + 152) = 2233;
      v42 = v51[0];
      *(v38 + 216) = v39;
      *(v38 + 224) = v40;
      *(v38 + 192) = v42;
      v43 = v31;
      v44 = v42;
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v38);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v46 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v46, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v47 = swift_allocObject();
      v47[2] = 8;
      v47[3] = 0;
      v47[4] = 0;
      v47[5] = 0;
      v48 = __VaListBuilder.va_list()();
      StaticString.description.getter("fadeSpinnerOut()", 16, 2);
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUSDZRep.swift", 81, 2);
      v27 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v28 = String._bridgeToObjectiveC()();

      [v29 handleFailureInFunction:v49 file:v27 lineNumber:2233 isFatal:0 format:v28 args:v48];
    }
  }
}

void *sub_100D08A40()
{
  result = _swiftEmptyArrayStorage;
  v2 = v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform10CRLUSDZRep_renderingState + 8);
  if ((v3 & 0xC0) == 0x40)
  {
    v4 = *v2;
    v5 = *(*v2 + 48);
    if ((v5 & 0x30) == 0x20)
    {
      v6 = v4[4];
      v7 = v4[5];
      sub_100D1548C(v4, v3);
      sub_100D15ED4(v6, v7, v5);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_100D15590(v4, v3);
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void sub_100D08B34(uint64_t a1)
{
  v3 = type metadata accessor for CRLUSDZRep.AssetLoadingState(0);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLUSDZRep.PosterLoadingState(0);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLUSDZRep(0);
  v17.receiver = v1;
  v17.super_class = v9;
  objc_msgSendSuper2(&v17, "processChangedProperty:", a1);
  if (a1 == 19)
  {
    swift_storeEnumTagMultiPayload();
    v10 = OBJC_IVAR____TtC8Freeform10CRLUSDZRep_assetLoadingState;
    swift_beginAccess();
    sub_100D15E6C(v5, v1 + v10, type metadata accessor for CRLUSDZRep.AssetLoadingState);
    swift_endAccess();
    sub_100CF8070();
    sub_100D13C38(v5, type metadata accessor for CRLUSDZRep.AssetLoadingState);
  }

  else if (a1 == 44)
  {
    swift_storeEnumTagMultiPayload();
    sub_100CF729C(v8);
  }

  v11 = [v1 layout];
  [v11 invalidateFrame];

  v12 = [v1 layout];
  [v12 invalidateExteriorWrap];

  [v1 invalidateKnobPositions];
  [v1 setNeedsDisplay];
  v13 = [v1 canvas];
  if (v13)
  {
    v14 = v13;
    v15 = [v1 layout];
    [v14 canvasInvalidatedForLayout:v15];
  }
}
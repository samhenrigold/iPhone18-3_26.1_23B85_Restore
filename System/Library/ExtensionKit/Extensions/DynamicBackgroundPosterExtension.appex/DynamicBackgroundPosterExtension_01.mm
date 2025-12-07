void sub_100018608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  if ([qword_1000730A8 metalCapture])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1000186A4();
    }
  }
}

uint64_t sub_1000186A4()
{
  v42 = sub_10004CC9C();
  v39 = *(v42 - 8);
  v0 = v39;
  __chkstk_darwin(v42);
  v2 = v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000CC1C(&qword_10006F430, &qword_100050B98);
  __chkstk_darwin(v3 - 8);
  v5 = v38 - v4;
  v6 = sub_10004CD3C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v41 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v38 - v11;
  __chkstk_darwin(v10);
  v14 = v38 - v13;
  v40 = 0x8000000100053B50;
  v15 = NSTemporaryDirectory();
  v16 = sub_10004D08C();
  v38[1] = v17;
  v38[2] = v16;

  (*(v7 + 56))(v5, 1, 1, v6);
  v18 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v19 = *(v0 + 104);
  v20 = v42;
  v19(v2, enum case for URL.DirectoryHint.inferFromPath(_:), v42);
  sub_10004CD1C();
  v43[0] = 0xD000000000000014;
  v43[1] = v40;
  v21 = v18;
  v22 = v6;
  v19(v2, v21, v20);
  sub_100018B44();
  sub_10004CD2C();
  (*(v39 + 8))(v2, v20);
  v23 = *(v7 + 8);
  v23(v12, v6);
  v24 = *(v7 + 16);
  v25 = v41;
  v42 = v14;
  v24();
  v26 = sub_10004CEDC();
  v27 = sub_10004D36C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v23;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v43[0] = v30;
    *v29 = 136315138;
    sub_100018B98();
    v31 = sub_10004D73C();
    v32 = v22;
    v34 = v33;
    v28(v25, v32);
    v35 = sub_10000C618(v31, v34, v43);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "triggerProgrammaticCapture at %s", v29, 0xCu);
    sub_10000CF40(v30);

    v22 = v32;
    v36 = v28;
  }

  else
  {

    v23(v25, v22);
    v36 = v23;
  }

  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  [qword_1000730A8 setMetalCapture:0];
  return v36(v42, v22);
}

unint64_t sub_100018B44()
{
  result = qword_10006F438;
  if (!qword_10006F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F438);
  }

  return result;
}

unint64_t sub_100018B98()
{
  result = qword_10006F440;
  if (!qword_10006F440)
  {
    sub_10004CD3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F440);
  }

  return result;
}

uint64_t sub_100018BF0(uint64_t a1)
{
  sub_10001923C(a1);

  sub_100011DCC(v1 + 32);
  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_logger;
  v3 = sub_10004CEFC();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SimulationSpeedManager(uint64_t a1)
{
  result = qword_10006F480;
  if (!qword_10006F480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100018CFC(uint64_t a1)
{
  result = sub_10004CEFC();
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

uint64_t sub_100018DB8(double a1)
{
  v2 = v1;
  v3 = sub_10004CDDC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = aBlock - v9;
  if (!*(v1 + 16))
  {
    v11 = sub_10004CEDC();
    v12 = sub_10004D36C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Start monitoring VFXWorld simulation speed", v13, 2u);
    }

    sub_10004CDCC();
    sub_10004CD9C();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = objc_allocWithZone(NSTimer);

    isa = sub_10004CDAC().super.isa;
    aBlock[4] = sub_100019354;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001BB08;
    aBlock[3] = &unk_100066248;
    v17 = _Block_copy(aBlock);
    v18 = [v15 initWithFireDate:isa interval:1 repeats:v17 block:0.333333333];
    _Block_release(v17);

    v19 = *(v2 + 16);
    *(v2 + 16) = v18;
    v20 = v18;

    if (v20)
    {
      v21 = [objc_opt_self() mainRunLoop];
      [v21 addTimer:v20 forMode:NSRunLoopCommonModes];
    }

    v22 = *(v4 + 8);
    v22(v7, v3);
    return (v22)(v10, v3);
  }

  return result;
}

double sub_1000190C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 24);
    v6 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

    os_unfair_lock_lock(v6);
    v7 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
    v8 = sub_100019374();

    os_unfair_lock_unlock(v6);

    v9 = v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed;
    if ((v8 & 0x100000000) != 0)
    {
      if ((*(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed + 4) & 1) == 0)
      {
        v10 = *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed);
        goto LABEL_7;
      }
    }

    else
    {
      if (*(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed + 4))
      {
        goto LABEL_14;
      }

      v10 = *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed);
      if (*&v8 != v10)
      {
LABEL_7:
        if (v10 > 0.0)
        {
          if ((v8 & 0x100000000) == 0 && *&v8 > 0.0)
          {
            goto LABEL_19;
          }

          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_18;
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_10002E9A8(0xD000000000000012, 0x8000000100053BE0);
            swift_unknownObjectRelease();
          }

LABEL_17:
          swift_unknownObjectRelease();
LABEL_18:
          *v9 = v8;
          *(v9 + 4) = BYTE4(v8) & 1;
          goto LABEL_19;
        }

LABEL_14:
        if ((v8 & 0x100000000) != 0 || *&v8 <= 0.0)
        {
          goto LABEL_19;
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

LABEL_19:
  }

  return result;
}

void sub_10001923C(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v2 = v1;
    v3 = sub_10004CEDC();
    v4 = sub_10004D36C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stop monitoring VFXWorld simulation speed", v5, 2u);
    }

    [*(v2 + 16) invalidate];
    v6 = *(v2 + 16);
    *(v2 + 16) = 0;
  }
}

uint64_t sub_10001931C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001935C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000193B8(uint64_t a1, uint64_t a2)
{
  v3 = [v2 rootNode];
  v4 = sub_10004D05C();
  v5 = [v3 childNodeWithName:v4 recursively:1];

  if (!v5 || (v6 = [v5 presentationObject], v5, sub_10004D56C(), swift_unknownObjectRelease(), sub_100019710(), (swift_dynamicCast() & 1) == 0) || (v7 = objc_msgSend(v14[0], "parameters"), v14[0], !v7))
  {
    v16 = 0u;
    v17 = 0u;
LABEL_7:
    sub_1000196A8(&v16);
    v10 = 0;
    v11 = 1;
    goto LABEL_8;
  }

  v8 = sub_10004D05C();
  v9 = [v7 objectForKeyedSubscript:v8];

  swift_unknownObjectRelease();
  if (v9)
  {
    sub_10004D56C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v14 = 0u;
    v15 = 0u;
  }

  v16 = *v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    goto LABEL_7;
  }

  v13 = swift_dynamicCast();
  v10 = LODWORD(v14[0]);
  v11 = v13 ^ 1;
  if (!v13)
  {
    v10 = 0;
  }

LABEL_8:
  LOBYTE(v16) = v11;
  return v10 | (v11 << 32);
}

uint64_t sub_1000195B4()
{
  v1 = [v0 assetRegistry];
  v2 = [v1 rootNode];

  v3 = sub_10004D05C();
  v4 = [v2 childNodeWithAssetName:v3];

  if (v4)
  {
    v5 = [v4 asset];

    if (v5)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_1000196A8(uint64_t a1)
{
  v2 = sub_10000CC1C(&qword_1000703D0, &qword_100050E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100019710()
{
  result = qword_10006F5A8;
  if (!qword_10006F5A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006F5A8);
  }

  return result;
}

id sub_100019780()
{
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100073028 = result;
  return result;
}

void sub_1000197D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12CloudsEffect_rgIdle);
}

uint64_t sub_100019814()
{

  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12CloudsEffect_rgEffects);

  v4 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12CloudsEffect_rgIdle);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudsEffect(uint64_t a1)
{
  result = qword_10006F670;
  if (!qword_10006F670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001998C(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, char a6)
{
  v7 = a5;
  v12 = [a1 rootNode];
  v13 = sub_10004D05C();
  v14 = [v12 childNodeWithName:v13];

  if (v14)
  {
    v15 = sub_10003F3A8(a2, a3, a4, v7) - 2;
    if (v15 > 4)
    {
      v16 = 0;
    }

    else
    {
      v16 = qword_100050C68[v15];
    }

    v17 = [v14 parameters];
    if (v17)
    {
      v18 = v17;
      v19 = sub_10004D05C();
      v20 = [v18 objectForKeyedSubscript:v19];

      swift_unknownObjectRelease();
      if (v20)
      {
        sub_10004D56C();
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0u;
        v26 = 0u;
      }

      v27 = v25;
      v28 = v26;
      if (*(&v26 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && v25 == v16)
        {
LABEL_19:

          return;
        }

LABEL_15:
        v21 = [v14 parameters];
        if (v21)
        {
          v22 = v21;
          isa = sub_10004D32C().super.super.isa;
          v24 = sub_10004D05C();
          [v22 setObject:isa forKeyedSubscript:v24];
          swift_unknownObjectRelease();
        }

        if (a6)
        {
          [a1 restart];
        }

        goto LABEL_19;
      }
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    sub_1000196A8(&v27);
    goto LABEL_15;
  }
}

uint64_t sub_100019BF0()
{
  sub_100019D90(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension17EffectDataManager_logger);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EffectDataManager(uint64_t a1)
{
  result = qword_10006F7A0;
  if (!qword_10006F7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100019CA8(uint64_t a1)
{
  sub_100019D38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100019D38(uint64_t a1)
{
  if (!qword_10006F7B0)
  {
    sub_10004CEFC();
    v1 = sub_10004D53C();
    if (!v2)
    {
      atomic_store(v1, &qword_10006F7B0);
    }
  }
}

uint64_t sub_100019D90(uint64_t a1)
{
  v2 = sub_10000CC1C(&qword_10006F880, &qword_100050CA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019DF8@<X0>(uint64_t *a1@<X8>)
{
  sub_10004CFEC();
  swift_allocObject();
  sub_10004CFFC();
  sub_10004CFBC();
  swift_allocObject();

  sub_10004CFCC();
  sub_10000CC1C(&qword_10006F8C0, &qword_100050D48);
  sub_10004CE2C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100050CB0;
  sub_10001A4F0(&qword_10006F8C8, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_10004CE1C();
  sub_10001A4F0(&qword_10006F8D0, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_10004CE1C();

  *a1 = v2;
  return result;
}

char *sub_10001A028()
{
  v0 = sub_10004CEFC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006E098 != -1)
  {
    swift_once();
  }

  v4 = sub_1000132A8(v0, qword_10006F888);
  (*(v1 + 16))(v3, v4, v0);
  v5 = objc_allocWithZone(type metadata accessor for DynamicTranscriptBackgroundPosterController(0));
  return sub_100032100(v3);
}

double sub_10001A144()
{
  v0 = sub_10004CEFC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006E098 != -1)
  {
    swift_once();
  }

  v4 = sub_1000132A8(v0, qword_10006F888);
  v5 = *(v1 + 16);
  v5(v3, v4, v0);
  v6 = type metadata accessor for DynamicTranscriptBackgroundPosterDelegate(0);
  v7 = objc_allocWithZone(v6);
  v5(&v7[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension41DynamicTranscriptBackgroundPosterDelegate_logger], v3, v0);
  v10.receiver = v7;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, "init");
  (*(v1 + 8))(v3, v0);
  sub_10000CC1C(&qword_10006F8B0, &unk_100050CC0);
  swift_allocObject();
  v9[1] = sub_10004CFDC();
  sub_10001A7CC(&qword_10006F8B8, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_10004CE9C();

  return result;
}

uint64_t sub_10001A350()
{
  v0 = sub_10004CEFC();
  sub_10001A538(v0, qword_10006F888);
  sub_1000132A8(v0, qword_10006F888);
  return sub_10004CEEC();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10001A454();
  sub_10001A7CC(&qword_10006F8A8, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_10004CE7C();
  return 0;
}

unint64_t sub_10001A454()
{
  result = qword_10006F8A0;
  if (!qword_10006F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F8A0);
  }

  return result;
}

uint64_t sub_10001A4F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_10001A538(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10001A59C()
{
  v0 = sub_10004CECC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100028178(0);
  sub_10004D4BC();
  v5 = *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
  v6 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v1 + 16))(v3, v4 + v6, v0);
  v7 = v5;
  sub_10004CEAC();

  (*(v1 + 8))(v3, v0);
  if (qword_10006E0A0 != -1)
  {
    swift_once();
  }

  if (qword_10006E098 != -1)
  {
    swift_once();
  }

  v8 = sub_10004CEFC();
  v9 = sub_1000132A8(v8, qword_10006F888);
  return sub_1000217CC(v9, 0xD000000000000010, 0x8000000100053D10);
}

uint64_t sub_10001A7CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000CD64(&qword_10006F8B0, &unk_100050CC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10001A820(uint64_t inited, unint64_t a2, void *a3, char a4)
{
  if (a4 == 3)
  {
    result = a3;
    if (a3)
    {
      return result;
    }

    v8 = sub_10003F3A8(inited, a2, 0, 3);
    v9 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      sub_10000CC1C(&qword_10006F9C8, &qword_100050E38);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_100050D50;
      *(v10 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.894117647 green:0.584313725 blue:0.223529412 alpha:1.0];
      *(v10 + 40) = [objc_allocWithZone(UIColor) initWithRed:0.607843137 green:0.270588235 blue:0.17254902 alpha:1.0];
      result = [objc_allocWithZone(UIColor) initWithRed:0.615686275 green:0.603921569 blue:0.560784314 alpha:1.0];
      *(v10 + 48) = result;
      if ((v10 & 0xC000000000000001) == 0)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v9 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v11 = *(v10 + 32 + 8 * v9);
LABEL_8:
          v12 = v11;

          return v12;
        }

        __break(1u);
        return result;
      }
    }

    v11 = sub_10004D62C();
    goto LABEL_8;
  }

  v13 = [objc_opt_self() blackColor];

  return v13;
}

id sub_10001A9EC(uint64_t inited, unint64_t a2, void *a3, char a4)
{
  if (a4 != 3)
  {
    v10 = [objc_opt_self() blackColor];

    return v10;
  }

  v7 = a3;
  if (a3)
  {
    v8 = v7;
    v9 = sub_10001ABDC();

    return v9;
  }

  v12 = sub_10003F3A8(inited, a2, 0, 3);
  v13 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_10000CC1C(&qword_10006F9C8, &qword_100050E38);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_100050D50;
  *(v14 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.68627451 green:0.423529412 blue:0.168627451 alpha:1.0];
  *(v14 + 40) = [objc_allocWithZone(UIColor) initWithRed:0.68627451 green:0.356862745 blue:0.22745098 alpha:1.0];
  result = [objc_allocWithZone(UIColor) initWithRed:0.635294118 green:0.635294118 blue:0.62745098 alpha:1.0];
  *(v14 + 48) = result;
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v15 = sub_10004D62C();
    goto LABEL_12;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v14 + 32 + 8 * v13);
LABEL_12:
    v9 = v15;

    return v9;
  }

  __break(1u);
  return result;
}

id sub_10001ABDC()
{
  *v0.i64 = sub_10004B11C();
  __asm { FMOV            V1.4S, #0.75 }

  v9 = vmulq_f32(v0, _Q1);
  v6 = sub_10004D05C();
  v7 = sub_10004B21C(v6, v9);

  return v7;
}

uint64_t sub_10001AC34(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v4 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v3 + v4, v29);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (!swift_dynamicCast())
  {
    goto LABEL_20;
  }

  if (v28 != 3)
  {
    sub_100010F08(v25, v26, v27, v28);
    return 0;
  }

  sub_10000CEDC(v3 + v4, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = v28;
  if (v28 != 3)
  {
    goto LABEL_14;
  }

  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  if (![qword_1000730A8 enableFantasy])
  {
    v5 = 3;
LABEL_14:
    sub_100010F08(v25, v26, v27, v5);
    goto LABEL_15;
  }

  v6 = sub_10003F3A8(v25, v26, v27, 3);
  v7 = sub_10004A040(v25, v26, v27, 3u);
  if (v7 >> 62)
  {
    v8 = sub_10004D67C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_100010F08(v25, v26, v27, 3u);

  if (v6 == v8)
  {
    return 0;
  }

LABEL_15:
  sub_10000CEDC(v3 + v4, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    result = sub_10004D66C();
    __break(1u);
    return result;
  }

  v10 = sub_10001A820(v25, v26, v27, v28);
  sub_100010F08(v25, v26, v27, v28);
  v24 = v10;
  sub_10001CEF8(v10);
  v12 = v11;
  sub_10000D024(0, &qword_10006F9E0, UIAction_ptr);
  if (qword_10006E090 != -1)
  {
    swift_once();
  }

  v13 = qword_100073028;
  v23._countAndFlagsBits = 0x8000000100053F20;
  v30._countAndFlagsBits = 0x49505F524F4C4F43;
  v30._object = 0xEC00000052454B43;
  v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v32.value._object = 0xEB00000000656C62;
  v14.super.isa = qword_100073028;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10004CC4C(v30, v32, v14, v34, 0xD000000000000018, v23);
  sub_10004D05C();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  v17 = a1;
  v18 = v12;
  v19 = sub_10004D51C();
  v31._countAndFlagsBits = 0x49505F524F4C4F43;
  v31._object = 0xEC00000052454B43;
  v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v33.value._object = 0xEB00000000656C62;
  v20.super.isa = v13;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10004CC4C(v31, v33, v20, v35, 0xD000000000000018, 0x8000000100053F20);
  v21 = sub_10004D05C();

  [v19 setAccessibilityLabel:v21];

  sub_10000CC1C(&qword_10006F9C8, &qword_100050E38);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100050D60;
  *(v22 + 32) = v19;

  return v22;
}

void sub_10001B158(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10001B1B4(a3);
  }
}

void sub_10001B1B4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v4 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v3 + v4, aBlock);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    v5 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
    v9 = sub_10001A820(v19, v20, v21, v22);
    sub_100010F08(v5, v6, v7, v8);
    v10 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
    v11 = [objc_allocWithZone(PRPosterColor) initWithColor:v9];
    [v10 setSelectedColor:v11];

    v12 = sub_10004D05C();
    v13 = [a1 viewForMenuElementIdentifier:v12];

    [v10 setColorPickerSourceItem:v13];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a1;
    aBlock[4] = sub_10001D430;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001BB08;
    aBlock[3] = &unk_100066330;
    v16 = _Block_copy(aBlock);
    v17 = a1;

    [v17 presentColorPickerWithConfiguration:v10 changeHandler:v16];
    _Block_release(v16);
  }

  else
  {
    sub_10004D66C();
    __break(1u);
  }
}

void sub_10001B518(void *a1, uint64_t a2, void *a3)
{
  v4 = convert(a1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10001B594(v4, a3);
  }
}

void sub_10001B594(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v5 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v4 + v5, &v44);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    v6 = sub_10001A820(v40, v41, v42, v43);
    sub_100010F08(v40, v41, v42, v43);
    v7 = [a1 colorWithAlphaComponent:1.0];
    v8.n128_f64[0] = sub_10004B11C();
    v9 = sub_10004B44C(v8);
    v11 = v10;
    v12.n128_f64[0] = sub_10004B11C();
    if (v9 == sub_10004B44C(v12) && v11 == v13)
    {

      return;
    }

    v15 = sub_10004D74C();

    if (v15)
    {

LABEL_28:
      return;
    }

    sub_10000CEDC(v4 + v5, &v44);
    if (swift_dynamicCast())
    {
      if (v43 == 3)
      {
        v16 = sub_10003F3A8(v40, v41, v42, v43);
        v17 = sub_10004A040(v40, v41, v42, 3u);
        v18 = v17 >> 62 ? sub_10004D67C() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100010F08(v40, v41, v42, 3u);

        v19 = v18 < v16;
      }

      else
      {
        sub_100010F08(v40, v41, v42, v43);
        v19 = 0;
      }

      sub_10000CEDC(v4 + v5, &v44);
      if (swift_dynamicCast())
      {
        v38 = v19;
        v20 = sub_10004A040(v40, v41, v42, v43);
        if (v20 >> 62)
        {
          v21 = sub_10004D67C();
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (__OFADD__(v21, 1))
        {
          __break(1u);
        }

        else
        {
          *&v44 = v21 + 1;
          v22 = sub_10004D73C();
          v24 = v23;
          sub_100010F08(v40, v41, v42, v43);
          v45 = &type metadata for EffectType;
          v46 = &off_100066D68;
          v25 = swift_allocObject();
          *&v44 = v25;
          *(v25 + 16) = v22;
          *(v25 + 24) = v24;
          *(v25 + 32) = v7;
          *(v25 + 40) = 3;
          swift_beginAccess();
          v7 = v7;
          sub_10000CF40((v4 + v5));
          sub_10000CEC4(&v44, v4 + v5);
          swift_endAccess();
          if (qword_10006E0A8 == -1)
          {
LABEL_20:
            v26 = qword_1000730A8;
            v27.n128_f64[0] = sub_10004B11C();
            sub_10004B44C(v27);
            v28 = sub_10004D05C();

            [v26 setCustomGlitterVariant:v28];

            if (!v38)
            {
              [a2 updateLooksWithoutBuilding];
            }

            v29 = sub_100032974();
            if (v29)
            {
              v30 = *&v29[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
              v31 = v29;

              if (v30)
              {
                swift_unknownObjectWeakInit();
                v32 = *(v30 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
                os_unfair_lock_lock(v32);
                v33 = *(v30 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
                swift_beginAccess();
                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v35 = Strong;
                  v36 = v33;
                  v37 = sub_10001ABDC();
                  sub_10001CD0C(v36);
                }

                os_unfair_lock_unlock(v32);

                swift_unknownObjectWeakDestroy();
              }
            }

            [a2 updateActions];

            goto LABEL_28;
          }
        }

        swift_once();
        goto LABEL_20;
      }
    }
  }

  sub_10004D66C();
  __break(1u);
}

void sub_10001BB08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10001BB70(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 CGContext];
  v11 = [a2 CGColor];
  CGContextSetFillColorWithColor(v10, v11);

  v12 = [a1 CGContext];
  CGContextSetLineWidth(v12, a3);

  v13 = [a1 CGContext];
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v16 = [v14 resolvedColorWithTraitCollection:v15];

  v17 = [v16 CGColor];
  CGContextSetStrokeColorWithColor(v13, v17);

  v18 = [a1 CGContext];
  v21.origin.x = a3;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGContextAddEllipseInRect(v18, v21);

  v19 = [a1 CGContext];
  CGContextDrawPath(v19, kCGPathFillStroke);
}

void sub_10001BD5C(void *a1, unint64_t a2)
{

  v4 = sub_10004CEDC();
  v5 = sub_10004D39C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    sub_10000D024(0, &qword_10006F9D0, UIColor_ptr);
    v8 = sub_10004D24C();
    v10 = sub_10000C618(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "editor colors %s", v6, 0xCu);
    sub_10000CF40(v7);
  }

  if (a2 >> 62)
  {
    if (sub_10004D67C() != 1)
    {
      return;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    return;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v11 = sub_10004D62C();
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v11 = *(a2 + 32);
  }

  v12 = v11;
  sub_10001B594(v11, a1);
}

float sub_10001C88C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v5 = sub_10004D05C();
  [v4 floatForKey:v5];
  v7 = v6;

  return v7;
}

void sub_10001C91C(void *a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v6 = sub_10004D05C();
  *&v7 = a2;
  [v8 setFloat:v6 forKey:v7];
}

uint64_t type metadata accessor for GlitterEffect(uint64_t a1)
{
  result = qword_10006F908;
  if (!qword_10006F908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001CAE8(char a1, id a2, char a3)
{
  v6 = [a2 rootNode];
  v7 = sub_10004D05C();
  v8 = [v6 childNodeWithName:v7];

  if (v8)
  {
    v9 = [v8 parameters];
    if (v9)
    {
      v10 = v9;
      v11 = sub_10004D05C();
      v12 = [v10 objectForKeyedSubscript:v11];

      swift_unknownObjectRelease();
      if (v12)
      {
        sub_10004D56C();
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      v19 = v17;
      v20 = v18;
      if (*(&v18 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && v17 == (a1 & 1))
        {
LABEL_16:

          return;
        }

LABEL_12:
        v13 = [v8 parameters];
        if (v13)
        {
          v14 = v13;
          isa = sub_10004D28C().super.super.isa;
          v16 = sub_10004D05C();
          [v14 setObject:isa forKeyedSubscript:v16];
          swift_unknownObjectRelease();
        }

        if (a3)
        {
          [a2 restart];
        }

        goto LABEL_16;
      }
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    sub_1000196A8(&v19);
    goto LABEL_12;
  }
}

void sub_10001CD0C(void *a1)
{
  v1 = [a1 rootNode];
  v2 = sub_10004D05C();
  v14 = [v1 childNodeWithName:v2];

  if (v14)
  {
    v3 = [v14 parameters];
    if (v3)
    {
      v4 = v3;
      *&v5 = sub_10004B11C();
      v13 = v5;
      v6 = [objc_opt_self() valueWithVFXFloat4:*&v5];
      v7 = sub_10004D05C();
      [v4 setObject:v6 forKeyedSubscript:v7];
      swift_unknownObjectRelease();
    }

    v8 = [v14 parameters];
    if (v8)
    {
      v9 = v8;
      v10 = sub_10004B11C();
      v11 = [objc_opt_self() valueWithVFXFloat4:v10];
      v12 = sub_10004D05C();
      [v9 setObject:v11 forKeyedSubscript:v12];
      swift_unknownObjectRelease();
    }
  }
}

void sub_10001CEF8(void *a1)
{
  v2 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{35.0, 35.0}];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = xmmword_100050D70;
  *(v3 + 40) = 0x403D000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10001D488;
  *(v4 + 24) = v3;
  v7[4] = sub_10001D4A8;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10001F2FC;
  v7[3] = &unk_1000663A8;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v2 imageWithActions:v5];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void *sub_10001D0A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v1 + v2, v17);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    if (v16 != 3)
    {
      sub_100010F08(v13, v14, v15, v16);
      return &_swiftEmptyArrayStorage;
    }

    sub_10000CC1C(&qword_10006F9C8, &qword_100050E38);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100050D60;
    sub_10000CEDC(v1 + v2, v17);
    if (swift_dynamicCast())
    {
      v4 = sub_10001A820(v13, v14, v15, v16);
      sub_100010F08(v13, v14, v15, v16);
      *(v3 + 32) = v4;

      v5 = sub_10004CEDC();
      v6 = sub_10004D39C();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v17[0] = v8;
        *v7 = 136315138;
        sub_10000D024(0, &qword_10006F9D0, UIColor_ptr);
        v9 = sub_10004D24C();
        v11 = sub_10000C618(v9, v10, v17);

        *(v7 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v5, v6, "initialColors %s", v7, 0xCu);
        sub_10000CF40(v8);
      }

      return v3;
    }
  }

  result = sub_10004D66C();
  __break(1u);
  return result;
}

uint64_t sub_10001D36C()
{
  sub_100010F08(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10001D3AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D3F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001D450()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001D4BC(void *a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  v3 = a1;

  v4 = *(v1 + 16);
  swift_weakInit();
  v5 = *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v5);
  v6 = *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  sub_10001D554(v6, v8, v3);

  os_unfair_lock_unlock(v5);
  return swift_weakDestroy();
}

void sub_10001D554(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_10004CEFC();
  v71 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v65 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v72 = Strong;
  v12 = [a1 assets];
  v13 = [v12 rootNode];

  v14 = [v13 childNodes];
  v15 = sub_10000D024(0, &qword_10006FB18, VFXAssetNode_ptr);
  v16 = sub_10004D23C();

  v66 = a3;
  v67 = v8;
  v68 = v10;
  v69 = v5;
  v73 = a1;
  v70 = v15;
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_28:

    v29 = v73;
    p_attr = &stru_10006AFF8.attr;
    v31 = &stru_10006AFF8.attr;
    v32 = &stru_10006AFF8.attr;
    goto LABEL_29;
  }

LABEL_27:
  v17 = sub_10004D67C();
  if (!v17)
  {
    goto LABEL_28;
  }

LABEL_4:
  v18 = 0;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = sub_10004D62C();
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v22 = [v19 name];
    v23 = sub_10004D08C();
    v25 = v24;

    if (v23 == 0x47207265646E6552 && v25 == 0xEC00000068706172)
    {
      break;
    }

    v27 = sub_10004D74C();

    if (v27)
    {
      goto LABEL_18;
    }

    ++v18;
    if (v21 == v17)
    {
      goto LABEL_28;
    }
  }

LABEL_18:

  v28 = [v20 asset];

  v29 = v73;
  p_attr = (&stru_10006AFF8 + 8);
  v31 = (&stru_10006AFF8 + 8);
  v32 = (&stru_10006AFF8 + 8);
  v33 = v68;
  if (v28)
  {
    v34 = v73;
    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (v35)
    {
      v36 = v35;
      (*(v71 + 16))(v33, v72 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger, v69);
      v37 = sub_10004CEDC();
      v38 = sub_10004D39C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Found 'Render Graph'", v39, 2u);
      }

      (*(v71 + 8))(v33, v69);
      v40 = *(v72 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgEffects);
      *(v72 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgEffects) = v36;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v29 = v34;
  }

LABEL_29:
  v41 = [v29 p_attr[123]];
  v42 = [v41 v31[46]];

  v43 = [v42 v32[124]];
  v44 = sub_10004D23C();

  if (!(v44 >> 62))
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      goto LABEL_31;
    }

LABEL_55:

    return;
  }

LABEL_54:
  v45 = sub_10004D67C();
  if (!v45)
  {
    goto LABEL_55;
  }

LABEL_31:
  v46 = 0;
  v73 = (v44 & 0xC000000000000001);
  while (1)
  {
    if (v73)
    {
      v47 = sub_10004D62C();
    }

    else
    {
      if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v47 = *(v44 + 8 * v46 + 32);
    }

    v48 = v47;
    v49 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v50 = [v47 name];
    v51 = sub_10004D08C();
    v53 = v52;

    if (v51 == 0xD00000000000001CLL && 0x8000000100053FF0 == v53)
    {
      break;
    }

    v55 = sub_10004D74C();

    if (v55)
    {
      goto LABEL_45;
    }

    ++v46;
    if (v49 == v45)
    {
      goto LABEL_55;
    }
  }

LABEL_45:

  v56 = [v48 asset];

  v57 = v69;
  v58 = v67;
  if (!v56)
  {
LABEL_50:

    return;
  }

  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  if (v59)
  {
    v60 = v59;
    (*(v71 + 16))(v58, v72 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger, v57);
    v61 = sub_10004CEDC();
    v62 = sub_10004D39C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Found 'Render Graph without Rripple'", v63, 2u);
    }

    (*(v71 + 8))(v58, v57);
    v64 = *(v72 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgIdle);
    *(v72 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgIdle) = v60;
    swift_unknownObjectRetain_n();

    [v66 setRenderGraph:v60];
    swift_unknownObjectRelease_n();
    goto LABEL_50;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_10001DC78(char a1)
{
  v3 = *(v1 + 16);
  swift_weakInit();
  v4 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v4);
  sub_10001DE98(v6, a1 & 1);
  os_unfair_lock_unlock(v4);
  return swift_weakDestroy();
}

void sub_10001DCE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgIdle);
}

uint64_t sub_10001DD20()
{

  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgEffects);

  v4 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgIdle);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OceanEffect(uint64_t a1)
{
  result = qword_10006FA10;
  if (!qword_10006FA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10001DE98(uint64_t a1, char a2)
{
  v3 = sub_10004CEFC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + 24);

    v14 = [v13 renderGraph];
    v15 = v14;
    if (a2)
    {
      v16 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgIdle;
      v17 = *(v12 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgIdle);
      if (v14)
      {
        if (v17)
        {
          sub_10000D024(0, &qword_10006FB10, VFXRenderGraph_ptr);
          v18 = v17;
          v19 = sub_10004D50C();

          if ((v19 & 1) == 0)
          {
            goto LABEL_16;
          }

LABEL_14:

LABEL_26:

          return result;
        }
      }

      else if (!v17)
      {
        goto LABEL_14;
      }

LABEL_16:
      (*(v4 + 16))(v7, v12 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger, v3);
      v24 = sub_10004CEDC();
      v25 = sub_10004D39C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Switching to idle render graph", v26, 2u);
      }

      (*(v4 + 8))(v7, v3);
      v27 = *(v12 + 24);
      v28 = v27;

      if (!v27)
      {
        goto LABEL_26;
      }

      v29 = *(v12 + v16);
      goto LABEL_25;
    }

    v20 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgEffects;
    v21 = *(v12 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgEffects);
    if (v14)
    {
      if (v21)
      {
        sub_10000D024(0, &qword_10006FB10, VFXRenderGraph_ptr);
        v22 = v21;
        v23 = sub_10004D50C();

        if (v23)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    else if (!v21)
    {
      goto LABEL_14;
    }

    (*(v4 + 16))(v9, v12 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger, v3);

    v30 = sub_10004CEDC();
    v31 = sub_10004D39C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = *(v12 + v20);
      *(v32 + 4) = v34;
      *v33 = v34;
      v35 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Switching to effects render graph - %@", v32, 0xCu);
      sub_100017CC0(v33);
    }

    (*(v4 + 8))(v9, v3);
    v36 = *(v12 + 24);
    v28 = v36;

    if (!v36)
    {
      goto LABEL_26;
    }

    v29 = *(v12 + v20);
LABEL_25:
    v37 = v29;
    [v28 setRenderGraph:v37];

    goto LABEL_26;
  }

  return result;
}

void sub_10001E314()
{
  v1 = v0;
  [v0 bounds];
  v6 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation;
  if ((*&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  if ((*&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  if ((*&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  if ((*&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] - 3) <= 1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  sub_10000CC1C(&qword_10006F9C8, &qword_100050E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100050E70;
  v12 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_contentView];
  *(inited + 32) = v12;
  v69 = inited + 32;
  v13 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_label];
  *(inited + 40) = v13;
  v71 = *&CGAffineTransformIdentity.c;
  v72 = *&CGAffineTransformIdentity.a;
  v70 = *&CGAffineTransformIdentity.tx;
  v14 = inited & 0xC000000000000001;
  v66 = &v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_configuration];
  v15 = v12;
  v16 = v13;
  v17 = 0;
  v18 = 0;
  p_attr = &stru_10006AFF8.attr;
  v20 = (&stru_10006AFF8 + 8);
  *&v21 = 136315138;
  v65 = v21;
  v67 = v6;
  v68 = v15;
  do
  {
    v22 = v17;
    if (v14)
    {
      v23 = sub_10004D62C();
    }

    else
    {
      v23 = *(v69 + 8 * v18);
    }

    v24 = v23;
    v25 = p_attr[129];
    *&v73.a = v72;
    *&v73.c = v71;
    *&v73.tx = v70;
    [v23 v25];
    [v24 setBounds:{v7, v8, v9, v10}];
    v74.origin.x = v7;
    v74.origin.y = v8;
    v74.size.width = v9;
    v74.size.height = v10;
    MidX = CGRectGetMidX(v74);
    v75.origin.x = v7;
    v75.origin.y = v8;
    v75.size.width = v9;
    v75.size.height = v10;
    [v24 v20[131]];
    v27 = *&v1[v6];
    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v49 = v1;
        v50 = sub_10004CEDC();
        v51 = sub_10004D37C();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *&v73.a = v53;
          *v52 = v65;
          v54 = *(v66 + 4);
          v55 = *(v66 + 5);

          v56 = sub_10000C618(v54, v55, &v73);
          p_attr = &stru_10006AFF8.attr;

          *(v52 + 4) = v56;
          v15 = v68;
          _os_log_impl(&_mh_execute_header, v50, v51, "#%s updateLayout right", v52, 0xCu);
          sub_10000CF40(v53);
          v6 = v67;
        }

        v20 = &stru_10006AFF8.attr;
        v78.origin.x = v7;
        v78.origin.y = v8;
        v78.size.width = v9;
        v78.size.height = v10;
        MidY = CGRectGetMidY(v78);
        v79.origin.x = v7;
        v79.origin.y = v8;
        v79.size.width = v9;
        v79.size.height = v10;
        [v24 setCenter:{MidY, CGRectGetMidX(v79)}];
        v48 = 1.57079633;
        goto LABEL_33;
      }

      if (v27 == 4)
      {
        v36 = v1;
        v37 = sub_10004CEDC();
        v38 = sub_10004D37C();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *&v73.a = v40;
          *v39 = v65;
          v42 = *(v66 + 4);
          v41 = *(v66 + 5);

          v43 = sub_10000C618(v42, v41, &v73);
          v20 = &stru_10006AFF8.attr;

          *(v39 + 4) = v43;
          v6 = v67;
          _os_log_impl(&_mh_execute_header, v37, v38, "#%s updateLayout left", v39, 0xCu);
          sub_10000CF40(v40);
          v15 = v68;
        }

        v76.origin.x = v7;
        v76.origin.y = v8;
        v76.size.width = v9;
        v76.size.height = v10;
        v44 = CGRectGetMidY(v76);
        v77.origin.x = v7;
        v77.origin.y = v8;
        v77.size.width = v9;
        v77.size.height = v10;
        [v24 v20[131]];
        CGAffineTransformMakeRotation(&v73, -1.57079633);
        v45 = *&v73.a;
        v46 = *&v73.c;
        v47 = *&v73.tx;
        p_attr = (&stru_10006AFF8 + 8);
        goto LABEL_34;
      }

LABEL_35:

      goto LABEL_15;
    }

    if (v27 >= 2)
    {
      if (v27 == 2)
      {
        v48 = 3.14159265;
LABEL_33:
        CGAffineTransformMakeRotation(&v73, v48);
        v45 = *&v73.a;
        v46 = *&v73.c;
        v47 = *&v73.tx;
LABEL_34:
        v58 = p_attr[129];
        *&v73.a = v45;
        *&v73.c = v46;
        *&v73.tx = v47;
        [v24 v58];
        goto LABEL_35;
      }

      goto LABEL_35;
    }

    v28 = v1;
    v29 = sub_10004CEDC();
    v30 = sub_10004D37C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v73.a = v32;
      *v31 = v65;
      v33 = *(v66 + 4);
      v34 = *(v66 + 5);

      v35 = sub_10000C618(v33, v34, &v73);
      p_attr = (&stru_10006AFF8 + 8);

      *(v31 + 4) = v35;
      v15 = v68;
      _os_log_impl(&_mh_execute_header, v29, v30, "#%s updateLayout portrait", v31, 0xCu);
      sub_10000CF40(v32);
      v6 = v67;
    }

    v20 = &stru_10006AFF8.attr;
LABEL_15:
    v17 = 1;
    v18 = 1;
  }

  while ((v22 & 1) == 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  v59 = [v15 subviews];
  sub_10001F288();
  v60 = sub_10004D23C();

  if (v60 >> 62)
  {
    v61 = sub_10004D67C();
    if (!v61)
    {
      goto LABEL_45;
    }

LABEL_38:
    if (v61 >= 1)
    {
      v62 = 0;
      do
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v63 = sub_10004D62C();
        }

        else
        {
          v63 = *(v60 + 8 * v62 + 32);
        }

        v64 = v63;
        ++v62;
        [v15 bounds];
        [v64 setFrame:?];
      }

      while (v61 != v62);
      goto LABEL_45;
    }

    __break(1u);
  }

  else
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_38;
    }

LABEL_45:
  }
}

void sub_10001EA04(void *a1, _BYTE *a2)
{
  v3 = v2;
  v6 = [a1 superview];
  v7 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_contentView];
  if (!v6 || (v8 = v6, sub_10001F288(), v9 = v7, v10 = sub_10004D50C(), v8, v9, (v10 & 1) == 0))
  {
    v11 = v3;
    v12 = a1;
    v13 = sub_10004CEDC();
    v14 = sub_10004D37C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v15 = 136315650;
      v18 = &v11[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_configuration];
      v19 = *&v11[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_configuration + 32];
      v20 = *(v18 + 5);

      v21 = sub_10000C618(v19, v20, &v24);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v12;
      *(v15 + 22) = 2112;
      *(v15 + 24) = v7;
      *v16 = v12;
      v16[1] = v7;
      v22 = v7;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "#%s PlaceholderView add%@ to contentView %@", v15, 0x20u);
      sub_10000CC1C(&qword_1000703F0, &qword_100050B90);
      swift_arrayDestroy();

      sub_10000CF40(v17);
    }

    *a2 = 1;
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    [v7 addSubview:v12];
  }
}

id sub_10001EDAC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PlaceholderView(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for PlaceholderView(uint64_t a1)
{
  result = qword_10006FB60;
  if (!qword_10006FB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001EF0C(uint64_t a1)
{
  result = sub_10004CEFC();
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

char *sub_10001EFC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10004CEFC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_label;
  *&v3[v10] = [objc_allocWithZone(UILabel) init];
  *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] = 0;
  v11 = *(v7 + 16);
  v11(v9, a1, v6);
  objc_allocWithZone(type metadata accessor for SnapshotView(0));
  sub_10000CDAC(a2, v29);
  v12 = sub_100026A58(a2, v9);
  sub_10000CE08(a2);
  *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_snapshotView] = v12;
  v13 = &v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_configuration];
  v14 = *(a2 + 104);
  v15 = *(a2 + 112);
  v16 = *(a2 + 80);
  *(v13 + 4) = *(a2 + 64);
  *(v13 + 5) = v16;
  *(v13 + 6) = *(a2 + 96);
  *(v13 + 110) = *(a2 + 110);
  v17 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 1) = v17;
  v18 = *(a2 + 48);
  *(v13 + 2) = *(a2 + 32);
  *(v13 + 3) = v18;
  v11(&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_logger], a1, v6);
  v19 = objc_allocWithZone(UIView);
  sub_10000CDAC(a2, v29);
  v20 = [v19 initWithFrame:{0.0, 0.0, v14, v15}];
  *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_contentView] = v20;
  v21 = type metadata accessor for PlaceholderView(0);
  v28.receiver = v3;
  v28.super_class = v21;
  v22 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, v14, v15);
  v23 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_contentView;
  v24 = *&v22[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_contentView];
  v25 = v22;
  [v24 setAutoresizesSubviews:0];
  [*&v22[v23] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v25 addSubview:*&v22[v23]];
  sub_10001E314();
  v26 = *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_snapshotView];
  sub_10001EA04(v26, v29);

  sub_10001E314();
  (*(v7 + 8))(a1, v6);
  return v25;
}

unint64_t sub_10001F288()
{
  result = qword_10006FB70;
  if (!qword_10006FB70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006FB70);
  }

  return result;
}

void sub_10001F2FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_10001F348(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *(v6 + 45) = 0u;
  v7 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_logger;
  v8 = sub_10004CEFC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3 + v7, a2, v8);
  *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_isSnapshotMode) = *(a1 + 96);
  sub_1000427C8(v20);
  v10 = (v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
  v11 = v20[1];
  *v10 = v20[0];
  v10[1] = v11;
  v10[2] = v21[0];
  *(v10 + 45) = *(v21 + 13);
  v12 = *(a1 + 40);
  v13 = (v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID);
  *v13 = *(a1 + 32);
  v13[1] = v12;
  v14 = qword_10006E0B8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 16);
  v24[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
  v24[1] = v15;
  v25[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 32);
  *(v25 + 13) = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 45);
  sub_100044D30(v24, v22);
  sub_10000CE08(a1);
  (*(v9 + 8))(a2, v8);
  v16 = (v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v17 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16);
  v26[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v26[1] = v17;
  v27[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 32);
  *(v27 + 13) = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 45);
  v18 = v22[1];
  *v16 = v22[0];
  v16[1] = v18;
  v16[2] = v23[0];
  *(v16 + 45) = *(v23 + 13);
  sub_1000132E0(v26);
  return v3;
}

BOOL sub_10001F534()
{
  v1 = v0;
  if (qword_10006E0A0 != -1)
  {
    swift_once();
  }

  if (*(qword_100073070 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_shouldRunAsSnapshot) == 1)
  {

    v2 = sub_10004CEDC();
    v3 = sub_10004D36C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *&v23 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_10000C618(*(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID), *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8), &v23);
      _os_log_impl(&_mh_execute_header, v2, v3, "#%s PIDObserver: shouldRunAsSnapshot", v4, 0xCu);
      sub_10000CF40(v5);
    }

    return 0;
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_isSnapshotMode) != 1)
    {
      return 1;
    }

    v7 = (v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
    v8 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16);
    v19[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
    v19[1] = v8;
    v20[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 32);
    *(v20 + 13) = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 45);
    if (!*(&v19[0] + 1))
    {
      return 1;
    }

    v23 = v19[0];
    v9 = v7[2];
    v10 = *v7;
    v24 = v7[1];
    v25[0] = v9;
    *(v25 + 13) = *(v7 + 45);
    v17[0] = v10;
    v17[1] = v24;
    v18[0] = v9;
    *(v18 + 13) = *(v25 + 13);
    sub_1000131F8(v17, v21);
    v11 = sub_100042698();
    v13 = v12;
    sub_1000132E0(v19);
    v14 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 16);
    v21[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
    v21[1] = v14;
    v22[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 32);
    *(v22 + 13) = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 45);
    if (v11 == sub_100042698() && v13 == v15)
    {

      return 0;
    }

    v16 = sub_10004D74C();

    return (v16 & 1) == 0;
  }
}

void sub_10001F7C0(id a1, void (*a2)(uint64_t), void *a3)
{
  v5 = v3;
  v7 = (v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v8 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16);
  v102[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration);
  v102[1] = v8;
  v103[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 32);
  *(v103 + 13) = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 45);
  if (*(&v102[0] + 1))
  {
    v99[2] = v102[0];
    v9 = v7[2];
    v10 = *v7;
    v100 = v7[1];
    v101[0] = v9;
    *(v101 + 13) = *(v7 + 45);
    aBlock = v10;
    v93 = v100;
    v94[0] = v9;
    *(v94 + 13) = *(v101 + 13);
    sub_1000131F8(&aBlock, v98);
    v11 = sub_100042698();
    v13 = v12;
    sub_1000132E0(v102);
    v4 = v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration;
    v14 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 16);
    v98[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration);
    v98[1] = v14;
    v99[0] = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 32);
    *(v99 + 13) = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 45);
    if (v11 == sub_100042698() && v13 == v15)
    {

LABEL_6:

      v17 = sub_10004CEDC();
      v18 = sub_10004D39C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v90[0]._countAndFlagsBits = swift_slowAlloc();
        *v19 = 136315394;
        *(v19 + 4) = sub_10000C618(*(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID), *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8), &v90[0]._countAndFlagsBits);
        *(v19 + 12) = 2080;
        v20 = *(v4 + 16);
        v95 = *v4;
        v96 = v20;
        v97[0] = *(v4 + 32);
        *(v97 + 13) = *(v4 + 45);
        v21 = sub_1000428CC();
        v23 = sub_10000C618(v21, v22, &v90[0]._countAndFlagsBits);

        *(v19 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "#%s snapshot: exist for %s", v19, 0x16u);
        swift_arrayDestroy();
      }

      if (a2)
      {
        a2(1);
      }

      return;
    }

    v16 = sub_10004D74C();

    if (v16)
    {
      goto LABEL_6;
    }
  }

  [a1 bounds];
  x = v105.origin.x;
  y = v105.origin.y;
  width = v105.size.width;
  height = v105.size.height;
  v28 = CGRectGetWidth(v105);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v28 < 9.22337204e18)
  {
    v82 = a1;
    v4 = v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration;
    if (*(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_viewConfiguration + 40) != v28)
    {
LABEL_19:

      v30 = sub_10004CEDC();
      v31 = sub_10004D37C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        aBlock._countAndFlagsBits = swift_slowAlloc();
        *v32 = 136315906;
        *(v32 + 4) = sub_10000C618(*(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID), *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8), &aBlock._countAndFlagsBits);
        *(v32 + 12) = 2080;
        v33 = *(v4 + 16);
        v95 = *v4;
        v96 = v33;
        v97[0] = *(v4 + 32);
        *(v97 + 13) = *(v4 + 45);
        v34 = sub_1000428CC();
        v36 = sub_10000C618(v34, v35, &aBlock._countAndFlagsBits);

        *(v32 + 14) = v36;
        *(v32 + 22) = 2048;
        *(v32 + 24) = width;
        *(v32 + 32) = 2048;
        *(v32 + 34) = height;
        _os_log_impl(&_mh_execute_header, v30, v31, "#%s snapshot: size are not matching %s vs %fx%f", v32, 0x2Au);
        swift_arrayDestroy();
      }

LABEL_22:
      if (qword_10006E0A8 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_54;
    }

    v106.origin.x = x;
    v106.origin.y = y;
    v106.size.width = width;
    v106.size.height = height;
    v29 = CGRectGetHeight(v106);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        if (*(v4 + 48) == v29)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  swift_once();
LABEL_23:
  v37 = [qword_1000730A8 useVFXSnapshot];
  v38 = [qword_1000730A8 useCASnapshot];
  if (v37)
  {

    v39 = sub_10004CEDC();
    v40 = sub_10004D37C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock._countAndFlagsBits = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_10000C618(*(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8), &aBlock._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v39, v40, "#%s snapshot: from vfxview", v41, 0xCu);
      sub_10000CF40(v42);
    }

    v43 = [v82 snapshot];
    goto LABEL_27;
  }

  if ((v38 & 1) == 0)
  {
    v49 = v4;
    v50 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{width, height}];
    v51 = swift_allocObject();
    *(v51 + 2) = v82;
    v51[3] = x;
    v51[4] = y;
    v51[5] = width;
    v51[6] = height;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1000206AC;
    *(v52 + 24) = v51;
    v53 = v51;
    *&v94[0] = sub_1000206D8;
    *(&v94[0] + 1) = v52;
    aBlock._countAndFlagsBits = _NSConcreteStackBlock;
    aBlock._object = 1107296256;
    *&v93 = sub_10001F2FC;
    *(&v93 + 1) = &unk_100066420;
    v54 = _Block_copy(&aBlock);
    v55 = v82;

    v43 = [v50 imageWithActions:v54];

    _Block_release(v54);
    LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

    if ((v50 & 1) == 0)
    {
      v4 = v49;
      v45 = v53;
      v44 = sub_1000206AC;
      goto LABEL_34;
    }

LABEL_58:
    __break(1u);
    return;
  }

  v104.width = width;
  v104.height = height;
  UIGraphicsBeginImageContext(v104);
  v46 = UIGraphicsGetCurrentContext();
  if (v46)
  {
    v47 = v46;
    v48 = [v82 layer];
    [v48 renderInContext:v47];

    v43 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (v43)
    {

LABEL_27:
      v44 = 0;
      v45 = 0;
LABEL_34:

      v56 = v43;
      v57 = sub_10004CEDC();
      v58 = sub_10004D39C();

      if (os_log_type_enabled(v57, v58))
      {
        v83 = v45;
        v59 = v44;
        v60 = v4;
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        aBlock._countAndFlagsBits = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_10000C618(*(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8), &aBlock._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v57, v58, "#%s snapshot: generated", v61, 0xCu);
        sub_10000CF40(v62);

        v4 = v60;
        v44 = v59;
        v45 = v83;
      }

      if (qword_10006E0B8 != -1)
      {
        swift_once();
      }

      v63 = *(v4 + 16);
      aBlock = *v4;
      v93 = v63;
      v94[0] = *(v4 + 32);
      *(v94 + 13) = *(v4 + 45);
      v64 = sub_10004658C(v56, &aBlock, a2, a3);

      if (v64)
      {
        v65 = *(v4 + 16);
        v90[0] = *v4;
        v90[1] = v65;
        v91[0] = *(v4 + 32);
        *(v91 + 13) = *(v4 + 45);
        sub_100044D30(v90, v88);

        v66 = v7[1];
        v86[0] = *v7;
        v86[1] = v66;
        v87[0] = v7[2];
        *(v87 + 13) = *(v7 + 45);
        v67 = v88[1];
        *v7 = v88[0];
        v7[1] = v67;
        v7[2] = v89[0];
        *(v7 + 45) = *(v89 + 13);
        sub_1000132E0(v86);
        sub_100020718(v44, v45);
      }

      else
      {

        sub_100020718(v44, v45);
      }

      return;
    }

    v75 = sub_10004CEDC();
    v76 = sub_10004D37C();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v90[0]._countAndFlagsBits = swift_slowAlloc();
      *v77 = 136315394;
      *(v77 + 4) = sub_10000C618(*(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8), &v90[0]._countAndFlagsBits);
      *(v77 + 12) = 2080;
      v78 = *(v4 + 16);
      aBlock = *v4;
      v93 = v78;
      v94[0] = *(v4 + 32);
      *(v94 + 13) = *(v4 + 45);
      v79 = sub_1000428CC();
      v81 = sub_10000C618(v79, v80, &v90[0]._countAndFlagsBits);

      *(v77 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "#%s snapshot: cannot create image for %s", v77, 0x16u);
      swift_arrayDestroy();
    }

    if (a2)
    {
      a2(0);
    }
  }

  else
  {

    v68 = sub_10004CEDC();
    v69 = sub_10004D37C();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v90[0]._countAndFlagsBits = swift_slowAlloc();
      *v70 = 136315394;
      *(v70 + 4) = sub_10000C618(*(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID), *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_tagID + 8), &v90[0]._countAndFlagsBits);
      *(v70 + 12) = 2080;
      v71 = *(v4 + 16);
      aBlock = *v4;
      v93 = v71;
      v94[0] = *(v4 + 32);
      *(v94 + 13) = *(v4 + 45);
      v72 = sub_1000428CC();
      v74 = sub_10000C618(v72, v73, &v90[0]._countAndFlagsBits);

      *(v70 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v68, v69, "#%s snapshot: cannot create context for %s", v70, 0x16u);
      swift_arrayDestroy();
    }

    if (a2)
    {
      a2(0);
    }
  }
}

uint64_t sub_10002046C()
{
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100013368(*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration), *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 8), *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 16), *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotWriter_snapshotConfiguration + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SnapshotWriter(uint64_t a1)
{
  result = qword_10006FBC8;
  if (!qword_10006FBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000205BC(uint64_t a1)
{
  result = sub_10004CEFC();
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

uint64_t sub_100020674()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100020700(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_100020718(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

void sub_100020728()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager;
  if (*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager))
  {

    sub_10001923C(v3);

    v4 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor;
    if (*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor))
    {

      sub_100023FE8(v5);

      *(v0 + v2) = 0;

      *(v0 + v4) = 0;

      sub_100011DCC(v0 + 32);
      v6 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_logger;
      v7 = sub_10004CEFC();
      (*(*(v7 - 8) + 8))(v1 + v6, v7);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10002081C()
{
  sub_100020728();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LifecycleManager(uint64_t a1)
{
  result = qword_10006FCF8;
  if (!qword_10006FCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000208C8(uint64_t a1)
{
  result = sub_10004CEFC();
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

void sub_10002098C(uint64_t result)
{
  if ((*(v1 + 16) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning) & 1) == 0)
  {
    v2 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor);
    if (v2)
    {
      if ((*(v2 + 16) & 1) != 0 || *(v2 + 24) == 3)
      {
        v3 = sub_10004CEDC();
        v4 = sub_10004D36C();
        if (os_log_type_enabled(v3, v4))
        {
          v5 = swift_slowAlloc();
          *v5 = 0;
          _os_log_impl(&_mh_execute_header, v3, v4, "cannot Resume Running: shouldReduceResourcesUsage", v5, 2u);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100020A98(uint64_t a1, unint64_t a2)
{
  sub_10002098C(a1);
  if (v5)
  {
    v6 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager);
    if (v6)
    {
      v7 = v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed;
      if (*(v7 + 4))
      {
        return;
      }

      if (*v7 <= 0.0)
      {
        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v9 = Strong;
      v10 = *(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

        os_unfair_lock_lock(v11);
        v12 = *(v10 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
        sub_10002E258(v12, 1, v9, a1, a2);

        os_unfair_lock_unlock(v11);
        swift_unknownObjectRelease();

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

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10002E9A8(a1, a2);

    swift_unknownObjectRelease();
  }
}

void sub_100020BF4(uint64_t a1)
{
  if ((*(v1 + 16) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning) & 1) == 0)
  {
    v2 = sub_10004CEDC();
    v3 = sub_10004D36C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Set State to idle", v4, 2u);
    }

    sub_100020DC4(v5);
  }

  sub_10002098C(a1);
  v7 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = Strong;
  if (v7)
  {
    if (Strong)
    {
      v10 = *(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

        os_unfair_lock_lock(v11);
        v12 = *(v10 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
        sub_10002E258(v12, 1, v9, 0x6C616974696E69, 0xE700000000000000);

        os_unfair_lock_unlock(v11);
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    if (Strong)
    {
      sub_10002E9A8(0x206C616974696E69, 0xEE00636974617473);
      Strong = swift_unknownObjectRelease();
    }

    sub_100020F60(Strong);
  }
}

double sub_100020DC4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10004CEDC();
  v4 = sub_10004D36C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Set Idle State", v5, 2u);
  }

  v6 = *(v2 + 24);
  v7 = *(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

  os_unfair_lock_lock(v7);
  v8 = *(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  v9 = [v8 rootNode];
  v10 = sub_10004D05C();
  v11 = [v9 childNodeWithName:v10 recursively:1];

  if (v11)
  {
    v12 = sub_10004D05C();
    [v11 setStateNamed:v12];
  }

  os_unfair_lock_unlock(v7);

  return result;
}

double sub_100020F60(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10004CEDC();
  v4 = sub_10004D36C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Set Render Static", v5, 2u);
  }

  v6 = *(v2 + 24);
  v7 = *(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

  os_unfair_lock_lock(v7);
  v8 = *(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  sub_100021058(v8);

  os_unfair_lock_unlock(v7);

  return result;
}

void sub_100021058(void *a1)
{
  v1 = [a1 rootNode];
  v2 = sub_10004D05C();
  v3 = [v1 childNodeWithName:v2 recursively:1];

  if (v3)
  {
    v4 = [v3 parameters];

    if (v4)
    {
      isa = sub_10004D28C().super.super.isa;
      v6 = sub_10004D05C();
      [v4 setObject:isa forKeyedSubscript:v6];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10002118C()
{

  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TranscriptBackgroundEffect(uint64_t a1)
{
  result = qword_10006FF10;
  if (!qword_10006FF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002128C(uint64_t a1)
{
  result = sub_10004CEFC();
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

uint64_t sub_100021334(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_10000CC1C(&qword_100070418, &qword_100051220);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_10000CF8C(a1, a1[3]);
  sub_100025284();
  sub_10004D7FC();
  v11[15] = 0;
  sub_10004D72C();
  if (!v4)
  {
    v11[14] = 1;
    sub_10004D70C();
    v11[13] = 2;
    sub_10004D71C();
  }

  return (*(v7 + 8))(v9, v6);
}

Swift::Int sub_100021500()
{
  v1 = *v0;
  sub_10004D7BC();
  sub_10004D7CC(v1);
  return sub_10004D7DC();
}

Swift::Int sub_100021574()
{
  v1 = *v0;
  sub_10004D7BC();
  sub_10004D7CC(v1);
  return sub_10004D7DC();
}

uint64_t sub_1000215B8()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0x76696C4177656976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6580592;
  }
}

uint64_t sub_100021608@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100024F98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100021648(uint64_t a1)
{
  v2 = sub_100025284();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100021684(uint64_t a1)
{
  v2 = sub_100025284();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000216C0(uint64_t a1@<X8>, void *a2@<X0>)
{
  v6 = sub_1000250B8(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
  }
}

uint64_t sub_100021718()
{
  type metadata accessor for PIDObserver(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_logger;
  v2 = sub_10004CEFC();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v4 = v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_pid;
  *v4 = 0;
  *(v4 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_shouldRunAsSnapshot) = 0;
  qword_100073070 = v0;
  return result;
}

uint64_t sub_1000217CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10004CDDC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000CC1C(&qword_10006F880, &qword_100050CA8);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = sub_10004CEFC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_logger;
  swift_beginAccess();
  sub_100024D58(v14, v4 + v17);
  swift_endAccess();
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;

  v18 = [objc_opt_self() processInfo];
  v19 = [v18 processIdentifier];

  v20 = v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_pid;
  *v20 = v19;
  *(v20 + 4) = 0;
  sub_10004CDCC();
  sub_10004CDBC();
  v22 = v21;
  (*(v9 + 8))(v11, v8);
  v23 = sub_10004CEDC();
  v24 = sub_10004D36C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35 = v26;
    *v25 = 136315138;
    v36 = v19;
    v37 = v22;
    v38 = 0;
    v27 = sub_10004D0FC();
    v29 = sub_10000C618(v27, v28, &v35);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "pid: %s", v25, 0xCu);
    sub_10000CF40(v26);
  }

  v30 = sub_100022840();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_100047EE4(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_100047EE4((v31 > 1), v32 + 1, 1, v30);
  }

  *(v30 + 2) = v32 + 1;
  v33 = &v30[24 * v32];
  *(v33 + 8) = v19;
  *(v33 + 5) = v22;
  *(v33 + 6) = 0;
  sub_1000222AC(v30);

  return sub_100021B8C();
}

uint64_t sub_100021B8C()
{
  v1 = sub_10000CC1C(&qword_10006F880, &qword_100050CA8);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  sub_100022840();
  v4 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_logger;
  swift_beginAccess();
  sub_100024AEC(v0 + v4, v3);
  v5 = sub_10004CEFC();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v3, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_10004CEDC();
    v9 = sub_10004D36C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = sub_10004D24C();
      v14 = v13;

      v15 = sub_10000C618(v12, v14, &v16);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "pidList: %s", v10, 0xCu);
      sub_10000CF40(v11);
    }

    else
    {
    }

    return (*(v6 + 8))(v3, v5);
  }

  return result;
}

uint64_t sub_100021DB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_pid);
  v2 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_pid + 4);
  sub_100021B8C();
  v3 = sub_100022840();
  v4 = v3;
  v5 = *(v3 + 2);
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = v3 + 48;
  v7 = *(v3 + 2);
  while (1)
  {
    v8 = *(v6 - 4) == v1 ? v2 : 1;
    if ((v8 & 1) == 0)
    {
      break;
    }

    v6 += 3;
    if (!--v7)
    {
      goto LABEL_29;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *(v6 - 1);
  v12 = *v6;
  while (*&v3[v9 + 32] != v1)
  {
    ++v10;
    v9 += 24;
    if (v5 == v10)
    {
      v10 = *(v3 + 2);
      goto LABEL_19;
    }
  }

  v13 = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_15;
  }

  v4 = sub_100024C28(v4);
LABEL_15:
  v5 = *(v4 + 2);
  if (v13 != v5)
  {
    v14 = (v4 + 32);
    v19 = &v4[v9 + 72];
    while (v13 < v5)
    {
      v20 = *(v19 - 4);
      if (v20 != v1)
      {
        if (v13 != v10)
        {
          if (v10 >= v5)
          {
            goto LABEL_41;
          }

          v21 = v14 + 24 * v10;
          v22 = *v21;
          v23 = *(v21 + 8);
          v24 = *(v21 + 16);
          v25 = *(v19 - 1);
          v26 = *v19;
          *v21 = v20;
          *(v21 + 8) = v25;
          *(v21 + 16) = v26;
          *(v19 - 4) = v22;
          *(v19 - 1) = v23;
          *v19 = v24;
          v5 = *(v4 + 2);
        }

        ++v10;
      }

      v13 = (v13 + 1);
      v19 += 24;
      if (v13 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = v10 + 1;
LABEL_17:
  if (v5 < v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v10 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_19:
  v14 = v10 - v5;
  v13 = v10;
  if (__OFADD__(v5, v10 - v5))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v4;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v4 + 3) >> 1)
  {
    if (v5 <= v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    v4 = sub_100047EE4(isUniquelyReferenced_nonNull_native, v16, 1, v4);
    v27 = v4;
  }

  v13 = &v27;
  sub_100024CA0(v10, v5, 0);
  v10 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    goto LABEL_45;
  }

  v5 = *(v4 + 2);
  v14 = *(v4 + 3);
  v13 = (v5 + 1);
  if (v5 < v14 >> 1)
  {
    goto LABEL_28;
  }

LABEL_46:
  v4 = sub_100047EE4((v14 > 1), v13, 1, v4);
LABEL_28:
  *(v4 + 2) = v13;
  v17 = &v4[24 * v5];
  *(v17 + 8) = v1;
  *(v17 + 5) = v11;
  *(v17 + 6) = v10;
  sub_1000222AC(v4);
LABEL_29:

  return sub_100021B8C();
}

uint64_t sub_100022030()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_pid);
  v2 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_pid + 4);
  sub_100021B8C();
  v3 = sub_100022840();
  v4 = v3;
  v5 = *(v3 + 2);
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = v3 + 48;
  v7 = *(v3 + 2);
  while (1)
  {
    v8 = *(v6 - 4) == v1 ? v2 : 1;
    if ((v8 & 1) == 0)
    {
      break;
    }

    v6 += 3;
    if (!--v7)
    {
      goto LABEL_29;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *(v6 - 1);
  v12 = *v6;
  while (*&v3[v9 + 32] != v1)
  {
    ++v10;
    v9 += 24;
    if (v5 == v10)
    {
      v10 = *(v3 + 2);
      goto LABEL_19;
    }
  }

  v13 = (v10 + 1);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_15;
  }

  v4 = sub_100024C28(v4);
LABEL_15:
  v5 = *(v4 + 2);
  if (v13 != v5)
  {
    v14 = (v4 + 32);
    v19 = &v4[v9 + 72];
    while (v13 < v5)
    {
      v20 = *(v19 - 4);
      if (v20 != v1)
      {
        if (v13 != v10)
        {
          if (v10 >= v5)
          {
            goto LABEL_41;
          }

          v21 = v14 + 24 * v10;
          v22 = *v21;
          v23 = *(v21 + 8);
          v24 = *(v21 + 16);
          v25 = *(v19 - 1);
          v26 = *v19;
          *v21 = v20;
          *(v21 + 8) = v25;
          *(v21 + 16) = v26;
          *(v19 - 4) = v22;
          *(v19 - 1) = v23;
          *v19 = v24;
          v5 = *(v4 + 2);
        }

        ++v10;
      }

      v13 = (v13 + 1);
      v19 += 24;
      if (v13 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = v10 + 1;
LABEL_17:
  if (v5 < v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v10 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_19:
  v14 = v10 - v5;
  v13 = v10;
  if (__OFADD__(v5, v10 - v5))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v4;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v4 + 3) >> 1)
  {
    if (v5 <= v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    v4 = sub_100047EE4(isUniquelyReferenced_nonNull_native, v16, 1, v4);
    v27 = v4;
  }

  v13 = &v27;
  sub_100024CA0(v10, v5, 0);
  v10 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    goto LABEL_45;
  }

  v5 = *(v4 + 2);
  v14 = *(v4 + 3);
  v13 = (v5 + 1);
  if (v5 < v14 >> 1)
  {
    goto LABEL_28;
  }

LABEL_46:
  v4 = sub_100047EE4((v14 > 1), v13, 1, v4);
LABEL_28:
  *(v4 + 2) = v13;
  v17 = &v4[24 * v5];
  *(v17 + 8) = v1;
  *(v17 + 5) = v11;
  *(v17 + 6) = v10;
  sub_1000222AC(v4);
LABEL_29:

  return sub_100021B8C();
}

void sub_1000222AC(uint64_t a1)
{
  v2 = sub_10000CC1C(&qword_10006F880, &qword_100050CA8);
  __chkstk_darwin(v2 - 8);
  v27[0] = v27 - v3;
  v4 = sub_10004CDDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004CB8C();
  swift_allocObject();
  v27[2] = sub_10004CB7C();
  sub_10004CDCC();
  sub_10004CDBC();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 48);
    v12 = &_swiftEmptyArrayStorage;
    do
    {
      v16 = *(v11 - 1);
      if (v9 - v16 < 60.0)
      {
        v17 = *(v11 - 4);
        v18 = *v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10004BDBC(0, v12[2] + 1, 1);
          v12 = v28;
        }

        v14 = v12[2];
        v13 = v12[3];
        if (v14 >= v13 >> 1)
        {
          sub_10004BDBC((v13 > 1), v14 + 1, 1);
          v12 = v28;
        }

        v12[2] = v14 + 1;
        v15 = &v12[3 * v14];
        *(v15 + 8) = v17;
        *(v15 + 5) = v16;
        *(v15 + 6) = v18;
      }

      v11 += 3;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v28 = v12;
  sub_10000CC1C(&qword_1000703D8, &unk_100051198);
  sub_100024B5C(&qword_1000703F8, sub_100024BD4, &protocol conformance descriptor for <A> [A]);
  v20 = sub_10004CB6C();
  v22 = v21;
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  v23 = qword_1000730A8;
  v24.super.isa = sub_10004CD6C().super.isa;
  if (*(v27[1] + 24))
  {
    isa = v24.super.isa;

    v26 = sub_10004D05C();

    [v23 setObject:isa forKey:v26];

    sub_100017C6C(v20, v22);
  }

  else
  {
    __break(1u);
  }
}

void *sub_100022840()
{
  v1 = sub_10000CC1C(&qword_10006F880, &qword_100050CA8);
  result = __chkstk_darwin(v1 - 8);
  if (qword_10006E0A8 != -1)
  {
    result = swift_once();
    if (*(v0 + 24))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    __break(1u);
    return result;
  }

  if (!*(v0 + 24))
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = qword_1000730A8;

  v4 = sub_10004D05C();

  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    sub_10004D56C();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_10004CB5C();
      swift_allocObject();
      sub_10004CB4C();
      sub_10000CC1C(&qword_1000703D8, &unk_100051198);
      sub_100024B5C(&qword_1000703E0, sub_100024A98, &protocol conformance descriptor for <A> [A]);
      sub_10004CB3C();

      sub_100017C6C(v6, v7);
      return *&v10[0];
    }
  }

  else
  {
    sub_100024DC8(v10, &qword_1000703D0, &qword_100050E30);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100022C60()
{

  sub_100024DC8(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11PIDObserver_logger, &qword_10006F880, &qword_100050CA8);

  return swift_deallocClassInstance();
}

void sub_100022D04(uint64_t a1)
{
  sub_100019D38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100022DB4(uint64_t a1)
{
  sub_100023FE8(a1);
  sub_100011DCC(v1 + 32);
  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_logger;
  v3 = sub_10004CEFC();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_100022EA4()
{
  v0 = sub_10004CF1C();
  v33 = *(v0 - 8);
  v34 = v0;
  __chkstk_darwin(v0);
  v32 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10004D45C();
  v25 = *(v28 - 8);
  v26 = v25;
  __chkstk_darwin(v28);
  v27 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10004D3CC();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004D4CC();
  __chkstk_darwin(v6);
  v7 = sub_10004CF6C();
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000D024(0, &unk_100070360, OS_dispatch_queue_serial_ptr);
  v23[0] = "Thermal state changed ";
  v23[1] = v10;
  sub_10004CF5C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100024A50(&unk_100070AC0, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_10000CC1C(&unk_100070370, "dd");
  sub_1000249FC(&qword_100070AD0, &unk_100070370, "dd");
  sub_10004D57C();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v24);
  v11 = sub_10004D4DC();
  sub_10000D024(0, &qword_100070380, OS_dispatch_source_ptr);
  sub_10000CC1C(&qword_100070388, "fd");
  v12 = v26;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000505B0;
  sub_10004D41C();
  aBlock[0] = v13;
  sub_100024A50(&qword_100070390, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent, &protocol conformance descriptor for OS_dispatch_source.MemoryPressureEvent);
  sub_10000CC1C(&qword_100070398, &unk_100051180);
  sub_1000249FC(&unk_1000703A0, &qword_100070398, &unk_100051180);
  v14 = v27;
  v15 = v28;
  sub_10004D57C();
  v16 = v11;
  v17 = sub_10004D46C();

  (*(v12 + 8))(v14, v15);
  swift_getObjectType();
  v18 = swift_allocObject();
  v19 = v31;
  swift_weakInit();
  aBlock[4] = sub_1000249DC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002FBD0;
  aBlock[3] = &unk_100066490;
  v20 = _Block_copy(aBlock);

  sub_10004CF3C();
  v21 = v32;
  sub_100023D8C();
  sub_10004D47C();
  _Block_release(v20);
  (*(v33 + 8))(v21, v34);
  (*(v29 + 8))(v9, v30);

  sub_10004D48C();
  *(v19 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource) = v17;
  swift_unknownObjectRelease();
  v22 = *(v19 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_memoryPressureQueue);
  *(v19 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_memoryPressureQueue) = v11;
}

void sub_1000234B8(uint64_t a1)
{
  v1 = sub_10004D45C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v59 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v59 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v59 - v13;
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!*(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource))
    {

      return;
    }

    v62 = v5;
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10004D4EC();
    swift_unknownObjectRelease();
    (*(v2 + 32))(v16, v14, v1);
    sub_1000246C4();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_10000CC1C(&qword_1000703B0, &qword_100051190);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100051080;
    *(v24 + 56) = &type metadata for Float;
    *(v24 + 64) = &protocol witness table for Float;
    *(v24 + 32) = v19;
    *(v24 + 96) = &type metadata for Float;
    *(v24 + 104) = &protocol witness table for Float;
    *(v24 + 72) = v21;
    *(v24 + 136) = &type metadata for Float;
    *(v24 + 144) = &protocol witness table for Float;
    *(v24 + 112) = v23;
    v63 = sub_10004D0AC();
    v26 = v25;
    v27 = *(v2 + 16);
    v64 = v16;
    v61 = v27;
    (v27)(v11);
    sub_10004D42C();
    sub_100024A50(&qword_1000703B8, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent, &protocol conformance descriptor for OS_dispatch_source.MemoryPressureEvent);
    v28 = sub_10004D04C();
    v29 = *(v2 + 8);
    v29(v8, v1);
    if (v28)
    {
      v29(v11, v1);

      v30 = sub_10004CEDC();
      v31 = sub_10004D36C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v65 = v33;
        *v32 = 136315138;
        v34 = sub_10000C618(v63, v26, &v65);

        *(v32 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v30, v31, "MemoryFootprint: normal %s", v32, 0xCu);
        sub_10000CF40(v33);

LABEL_10:

LABEL_16:
        v29(v64, v1);
        return;
      }

      goto LABEL_15;
    }

    sub_10004D43C();
    v35 = sub_10004D04C();
    v29(v8, v1);
    if (v35)
    {
      v29(v11, v1);

      v30 = sub_10004CEDC();
      v36 = sub_10004D36C();

      if (os_log_type_enabled(v30, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v65 = v38;
        *v37 = 136315138;
        v39 = sub_10000C618(v63, v26, &v65);

        *(v37 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v30, v36, "MemoryFootprint: warning %s", v37, 0xCu);
        sub_10000CF40(v38);

        goto LABEL_10;
      }

LABEL_15:

      goto LABEL_16;
    }

    sub_10004D44C();
    v40 = sub_10004D04C();
    v29(v8, v1);
    v29(v11, v1);
    if (v40)
    {

      v30 = sub_10004CEDC();
      v41 = sub_10004D36C();

      if (os_log_type_enabled(v30, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v65 = v43;
        *v42 = 136315138;
        v44 = sub_10000C618(v63, v26, &v65);

        *(v42 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v30, v41, "MemoryFootprint: critical %s", v42, 0xCu);
        sub_10000CF40(v43);

        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v60 = v29;
    v45 = v62;
    v46 = v64;
    v61(v62, v64, v1);

    v47 = sub_10004CEDC();
    v48 = sub_10004D36C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v65 = v61;
      *v49 = 136315394;
      sub_100024A50(&unk_1000703C0, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent, &protocol conformance descriptor for OS_dispatch_source.MemoryPressureEvent);
      v50 = sub_10004D73C();
      v52 = v51;
      v53 = v45;
      v54 = v60;
      v60(v53, v1);
      v55 = sub_10000C618(v50, v52, &v65);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      v56 = sub_10000C618(v63, v26, &v65);

      *(v49 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v47, v48, "MemoryFootprint: state %s %s", v49, 0x16u);
      swift_arrayDestroy();

      v54(v64, v1);
    }

    else
    {

      v57 = v45;
      v58 = v60;
      v60(v57, v1);
      v58(v46, v1);
    }
  }
}

uint64_t sub_100023D8C()
{
  sub_10004CF1C();
  sub_100024A50(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
  return sub_10004D57C();
}

void sub_100023E64(uint64_t a1)
{
  if ((*(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_isMonitoring) & 1) == 0)
  {
    v2 = v1;
    *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_isMonitoring) = 1;
    v3 = sub_10004CEDC();
    v4 = sub_10004D36C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Start monitoring lower power and thermal state.", v5, 2u);
    }

    v6 = objc_opt_self();
    v7 = [v6 defaultCenter];
    [v7 addObserver:v2 selector:"thermalStateDidChangeWithNotification:" name:NSProcessInfoThermalStateDidChangeNotification object:0];

    v8 = [v6 defaultCenter];
    [v8 addObserver:v2 selector:"lowPowerModeStateDidChangeWithNotification:" name:NSProcessInfoPowerStateDidChangeNotification object:0];
  }
}

void sub_100023FE8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_isMonitoring) == 1)
  {
    v2 = v1;
    *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_isMonitoring) = 0;
    v3 = sub_10004CEDC();
    v4 = sub_10004D36C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stop monitoring lower power and thermal state.", v5, 2u);
    }

    v6 = [objc_opt_self() defaultCenter];
    [v6 removeObserver:v2];
  }
}

double sub_100024104()
{
  if (*(v0 + 16))
  {
    v1 = 0;
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = v4 > 3;
    LOBYTE(v4) = v4 & 0xF;
    v6 = 8u >> v4;
    v7 = 4u >> v4;
    v8 = 3u >> v4;
    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v6;
    }

    if (v5)
    {
      v1 = 0;
    }

    else
    {
      v1 = v7;
    }

    if (v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = v8;
    }
  }

  v9 = [objc_opt_self() processInfo];
  v10 = [v9 thermalState];

  *(v0 + 24) = v10;
  if (*(v0 + 16))
  {
LABEL_13:
    if (v3)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (v10 < 2)
  {
    goto LABEL_18;
  }

  if (v10 != 2)
  {
    if (v10 == 3)
    {
      goto LABEL_13;
    }

LABEL_18:
    if (v2)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (v1)
  {
    return result;
  }

LABEL_21:
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return result;
  }

  sub_10004D61C(24);

  v12 = *(v0 + 24);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = 0xE700000000000000;
      v14._countAndFlagsBits = 0x73756F69726573;
      goto LABEL_33;
    }

    if (v12 == 3)
    {
      v13 = 0xE800000000000000;
      v14._countAndFlagsBits = 0x6C61636974697263;
      goto LABEL_33;
    }

LABEL_30:
    v13 = 0xE600000000000000;
    v14._countAndFlagsBits = 0x6E776F6B6E75;
    goto LABEL_33;
  }

  if (!v12)
  {
    v13 = 0xE700000000000000;
    v14._countAndFlagsBits = 0x6C616E696D6F6ELL;
    goto LABEL_33;
  }

  if (v12 != 1)
  {
    goto LABEL_30;
  }

  v13 = 0xE400000000000000;
  v14._countAndFlagsBits = 1919508838;
LABEL_33:
  v14._object = v13;
  sub_10004D16C(v14);

  sub_100020A98(0xD000000000000016, 0x80000001000543F0);

  swift_unknownObjectRelease();
  return result;
}

double sub_10002433C()
{
  if (*(v0 + 16))
  {
    v1 = 0;
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = v4 > 3;
    LOBYTE(v4) = v4 & 0xF;
    v6 = 8u >> v4;
    v7 = 4u >> v4;
    v8 = 3u >> v4;
    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v6;
    }

    if (v5)
    {
      v1 = 0;
    }

    else
    {
      v1 = v7;
    }

    if (v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = v8;
    }
  }

  v9 = [objc_opt_self() processInfo];
  v10 = [v9 isLowPowerModeEnabled];

  *(v0 + 16) = v10;
  if (v10)
  {
LABEL_13:
    if (v3)
    {
      return result;
    }

    goto LABEL_21;
  }

  v12 = *(v0 + 24);
  if (v12 < 2)
  {
LABEL_18:
    if (v2)
    {
      return result;
    }

    goto LABEL_21;
  }

  if (v12 != 2)
  {
    if (v12 == 3)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (v1)
  {
    return result;
  }

LABEL_21:
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10004D61C(21);

    if (*(v0 + 16))
    {
      v13._countAndFlagsBits = 1702195828;
    }

    else
    {
      v13._countAndFlagsBits = 0x65736C6166;
    }

    if (*(v0 + 16))
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v13._object = v14;
    sub_10004D16C(v13);

    sub_100020A98(0xD000000000000013, 0x80000001000543D0);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100024510(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_10004CBAC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004CB9C();

  a4(v9);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100024604(uint64_t a1)
{
  result = sub_10004CEFC();
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

void sub_1000246C4()
{
  v0 = sub_10004D0EC();
  __chkstk_darwin(v0 - 8);
  memset(v12, 0, 372);
  v11 = 93;
  v1 = task_info(mach_task_self_, 0x16u, v12, &v11);
  if (v1)
  {
    if (mach_error_string(v1))
    {
      sub_10004D0DC();
      v3 = sub_10004D0BC();
      v4 = v2;
      if (v2)
      {
        v5 = v2;
      }

      else
      {
        v5 = 0xED0000726F727245;
      }

      v6 = sub_10004CEDC();
      v7 = sub_10004D38C();

      if (os_log_type_enabled(v6, v7))
      {
        if (!v4)
        {
          v3 = 0x206E776F6E6B6E55;
        }

        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v13 = v9;
        *v8 = 136315138;
        v10 = sub_10000C618(v3, v5, &v13);

        *(v8 + 4) = v10;
        _os_log_impl(&_mh_execute_header, v6, v7, "Error with task_info() in memoryUsageInMBytes: %s", v8, 0xCu);
        sub_10000CF40(v9);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000249A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000249E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000249FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CD64(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100024A50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100024A98()
{
  result = qword_1000703E8;
  if (!qword_1000703E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000703E8);
  }

  return result;
}

uint64_t sub_100024AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CC1C(&qword_10006F880, &qword_100050CA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024B5C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CD64(&qword_1000703D8, &unk_100051198);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100024BD4()
{
  result = qword_100070400;
  if (!qword_100070400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070400);
  }

  return result;
}

uint64_t sub_100024C3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_10004D67C();
  }

  return sub_10004D63C();
}

unint64_t sub_100024CA0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100024D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CC1C(&qword_10006F880, &qword_100050CA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024DC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000CC1C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100024E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for SnapshotManager.WeakObserver();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_10004D67C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_10004D67C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for PIDObserver.PidData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PIDObserver.PidData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PIDObserver.PidData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100024F98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580592 && a2 == 0xE300000000000000;
  if (v3 || (sub_10004D74C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_10004D74C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76696C4177656976 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_10004D74C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_1000250B8(void *a1)
{
  v2 = sub_10000CC1C(&qword_100070408, &qword_100051218);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  sub_10000CF8C(a1, a1[3]);
  sub_100025284();
  sub_10004D7EC();
  v12 = 0;
  sub_10004D6FC();
  v11 = 1;
  sub_10004D6DC();
  v8 = v7;
  v10 = 2;
  sub_10004D6EC();
  (*(v3 + 8))(v5, v2);
  sub_10000CF40(a1);
  return v8;
}

unint64_t sub_100025284()
{
  result = qword_100070410;
  if (!qword_100070410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070410);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PIDObserver.PidData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PIDObserver.PidData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002542C()
{
  result = qword_100070420;
  if (!qword_100070420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070420);
  }

  return result;
}

unint64_t sub_100025484()
{
  result = qword_100070428;
  if (!qword_100070428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070428);
  }

  return result;
}

unint64_t sub_1000254DC()
{
  result = qword_100070430;
  if (!qword_100070430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070430);
  }

  return result;
}

void sub_100025530(uint64_t a1)
{
  v3 = v1;
  sub_10000CDAC(a1, v10);
  v4 = sub_10004CEDC();
  v5 = sub_10004D37C();

  sub_10000CE08(a1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v10[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v8 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

    v9 = sub_10000C618(v7, v8, v10);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10000C618(*(a1 + 32), *(a1 + 40), v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "#%s snapshot: viewConfiguration updated old tagId: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_100025CD0();
}

id sub_1000256A4@<X0>(uint64_t a1@<X8>)
{
  v3 = &v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration];
  if (v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_shouldUsizeFromLayout] != 1)
  {
    v18 = *(v3 + 5);
    v27[4] = *(v3 + 4);
    v27[5] = v18;
    v28[0] = *(v3 + 6);
    *(v28 + 14) = *(v3 + 110);
    v19 = *(v3 + 1);
    v27[0] = *v3;
    v27[1] = v19;
    v20 = *(v3 + 3);
    v27[2] = *(v3 + 2);
    v27[3] = v20;
    sub_10000CDAC(v27, v21);
    sub_1000427C8(v21);
    result = sub_10000CE08(v27);
    v17 = v26;
    v13 = v25;
    v11 = v23;
    v12 = v24;
    v6 = v22;
    v5 = v21[2];
    v4 = v21[3];
    v14 = v21[0];
    v16 = v21[1];
    goto LABEL_10;
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  v6 = *(v3 + 25);

  result = [v1 frame];
  v9 = v8;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = [v1 frame];
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10 < 9.22337204e18)
  {
    v11 = v9;
    v12 = v10;
    v13 = *(v3 + 30);

    v14 = sub_10004B888(v5, v4);
    v16 = v15;

    v17 = 0;
LABEL_10:
    *a1 = v14;
    *(a1 + 8) = v16;
    *(a1 + 16) = v5;
    *(a1 + 24) = v4;
    *(a1 + 32) = v6;
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    *(a1 + 60) = v17;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_100025874()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_100026EAC;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10001BB08;
  v6[3] = &unk_1000665F8;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:1 repeats:v3 block:0.0166666667];
  _Block_release(v3);
  v5 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_timer);
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_timer) = v4;
}

void sub_10002598C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_10004C788();
    [v3 setBackgroundColor:v4];
  }
}

id sub_1000259FC(uint64_t a1)
{
  v3 = sub_10004CECC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100028178(0);
  sub_10004D4BC();
  v8 = *(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
  v9 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v4 + 16))(v6, v7 + v9, v3);
  v10 = v8;
  sub_10004CEAC();

  (*(v4 + 8))(v6, v3);
  v11 = v1;
  v12 = sub_10004CEDC();
  v13 = sub_10004D37C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v14 = 136315394;
    v17 = *&v11[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v18 = *&v11[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

    v19 = sub_10000C618(v17, v18, &v24);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = *&v11[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_imageView];
    *(v14 + 14) = v20;
    *v15 = v20;
    v21 = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "#%s snapshot: imageView %@", v14, 0x16u);
    sub_100017CC0(v15);

    sub_10000CF40(v16);
  }

  v22 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_imageView;
  [*&v11[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_imageView] setAlpha:1.0];
  return [*&v11[v22] setImage:a1];
}

void sub_100025CD0()
{
  v1 = v0;
  v2 = sub_10004CEFC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_snapshotManagerSet;
  if (v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_snapshotManagerSet] != 1)
  {
    goto LABEL_7;
  }

  v49 = v3;
  v7 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 80];
  v59[4] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 64];
  v59[5] = v7;
  v60[0] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 96];
  *(v60 + 14) = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 110];
  v8 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 16];
  v59[0] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration];
  v59[1] = v8;
  v9 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 48];
  v59[2] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
  v59[3] = v9;
  sub_10000CDAC(v59, v55);
  sub_1000427C8(v51);
  sub_10000CE08(v59);
  v10 = sub_100042698();
  v12 = v11;
  sub_100013254(v51);
  v13 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_snapshotReader];
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = (v13 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration);
  v16 = v14[1];
  v15 = v14[2];
  v17 = *v14;
  *(v58 + 13) = *(v14 + 45);
  v57[1] = v16;
  v58[0] = v15;
  v57[0] = v17;
  sub_1000131F8(v57, v55);
  v18 = sub_100042698();
  v20 = v19;
  sub_100013254(v57);
  if (v10 == v18 && v12 == v20)
  {

    return;
  }

  v21 = sub_10004D74C();

  v3 = v49;
  if ((v21 & 1) == 0)
  {
LABEL_7:
    sub_1000256A4(v52);
    v22 = v53;
    if (v53)
    {
      [*&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_imageView] setAlpha:0.0];
      v23 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_logger;
      sub_1000131F8(v52, v55);
      v24 = v1;
      v48 = v23;
      v25 = sub_10004CEDC();
      v26 = sub_10004D37C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v49 = v3;
        v28 = v27;
        v29 = swift_slowAlloc();
        v47 = v6;
        v45 = v29;
        *&v55[0] = v29;
        *v28 = 136315650;
        v46 = v5;
        v30 = v2;
        v32 = *&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
        v31 = *&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

        v33 = sub_10000C618(v32, v31, v55);
        v2 = v30;

        *(v28 + 4) = v33;
        v5 = v46;
        *(v28 + 12) = 2048;
        *(v28 + 14) = v22;
        *(v28 + 22) = 2048;
        sub_100013254(v52);
        *(v28 + 24) = v54;
        sub_100013254(v52);
        _os_log_impl(&_mh_execute_header, v25, v26, "#%s snapshot: update manager for size %ldx%ld", v28, 0x20u);
        sub_10000CF40(v45);
        v6 = v47;

        v3 = v49;
      }

      else
      {
        sub_100013254(v52);
        sub_100013254(v52);
      }

      v34 = *&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 48];
      v36 = *&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration];
      v35 = *&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 16];
      v55[2] = *&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
      v55[3] = v34;
      v55[0] = v36;
      v55[1] = v35;
      v38 = *&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 80];
      v37 = *&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 96];
      v39 = *&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 64];
      *(v56 + 14) = *&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 110];
      v55[5] = v38;
      v56[0] = v37;
      v55[4] = v39;
      (*(v3 + 16))(v5, &v1[v48], v2);
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = objc_allocWithZone(type metadata accessor for SnapshotReader(0));
      sub_10000CDAC(v55, &v50);
      v42 = sub_100012F8C(v55, v5, sub_100026EA4, v40);

      sub_10000CE08(v55);
      v43 = *&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_snapshotReader];
      *&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_snapshotReader] = v42;

      v1[v6] = 1;
    }

    else
    {
      sub_100013254(v52);
    }
  }
}

void sub_10002615C(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_10004CEDC();
    v8 = sub_10004D37C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v9 = 136315394;
      v10 = *&v6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
      v11 = *&v6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

      v12 = sub_10000C618(v10, v11, &v16);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      if (a2)
      {
        v13 = 1953066601;
      }

      else
      {
        v13 = 0x6163696669746F6ELL;
      }

      if (a2)
      {
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xEC0000006E6F6974;
      }

      v15 = sub_10000C618(v13, v14, &v16);

      *(v9 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "#%s snapshot: image updated from %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000259FC(a1);
  }
}

id sub_100026338()
{
  v66.receiver = v0;
  v66.super_class = type metadata accessor for SnapshotView(0);
  objc_msgSendSuper2(&v66, "layoutSubviews");
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D37C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v67[0] = v5;
    *v4 = 136315650;
    v6 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v7 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 40];

    v8 = sub_10000C618(v6, v7, v67);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    [v1 bounds];
    *(v4 + 14) = v9;
    *(v4 + 22) = 2048;
    [v1 bounds];
    *(v4 + 24) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s snapshotView layoutsubview %fx%f", v4, 0x20u);
    sub_10000CF40(v5);
  }

  result = [v1 bounds];
  if (v12 != 0.0)
  {
    v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_shouldUsizeFromLayout] = 1;
    v13 = &v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration];
    v14 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 48];
    v16 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration];
    v15 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 16];
    v54 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 32];
    v55 = v14;
    v52 = v16;
    v53 = v15;
    v18 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 80];
    v17 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 96];
    v19 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 64];
    *&v58[14] = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration + 110];
    v57 = v18;
    *v58 = v17;
    v56 = v19;
    sub_10000CDAC(&v52, v67);
    [v1 bounds];
    v21 = v20;
    v23 = v22;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v50 = v55;
    v27 = BYTE8(v55);
    v28 = v56;
    v48 = BYTE9(v56);
    v49 = BYTE8(v56);
    v46 = *(&v57 + 1);
    v47 = v57;
    v29 = v56;

    sub_10000CE08(&v52);
    v59[0] = v24;
    v59[1] = v25;
    v59[2] = v26;
    *&v60 = v50;
    BYTE8(v60) = v27;
    *&v61 = v28;
    BYTE8(v61) = v49;
    BYTE9(v61) = v48;
    *&v62 = v47;
    *(&v62 + 1) = v46;
    *v63 = *v58;
    v63[2] = v58[2];
    *&v63[4] = *&v58[4];
    *&v63[8] = v21;
    *&v63[16] = v23;
    *&v63[24] = *&v58[24];
    v63[28] = v58[28];
    v63[29] = v58[29];
    v30 = *v13;
    v31 = *(v13 + 1);
    v32 = *(v13 + 3);
    v67[2] = *(v13 + 2);
    v67[3] = v32;
    v67[0] = v30;
    v67[1] = v31;
    v33 = *(v13 + 4);
    v34 = *(v13 + 5);
    v35 = *(v13 + 6);
    *(v68 + 14) = *(v13 + 110);
    v67[5] = v34;
    v68[0] = v35;
    v67[4] = v33;
    v37 = *(v13 + 5);
    v36 = *(v13 + 6);
    v38 = *(v13 + 4);
    *(v65 + 14) = *(v13 + 110);
    v64[5] = v37;
    v65[0] = v36;
    v64[4] = v38;
    v39 = *v13;
    v40 = *(v13 + 1);
    v41 = *(v13 + 3);
    v64[2] = *(v13 + 2);
    v64[3] = v41;
    v64[0] = v39;
    v64[1] = v40;
    v42 = v60;
    *(v13 + 2) = v26;
    *(v13 + 3) = v42;
    *v13 = v24;
    *(v13 + 1) = v25;
    v43 = v61;
    v44 = v62;
    v45 = *v63;
    *(v13 + 110) = *&v63[14];
    *(v13 + 5) = v44;
    *(v13 + 6) = v45;
    *(v13 + 4) = v43;
    sub_10000CDAC(v67, v51);
    sub_10000CDAC(v59, v51);
    sub_10000CE08(v64);
    sub_100025530(v67);
    sub_10000CE08(v67);
    return sub_10000CE08(v59);
  }

  return result;
}

id sub_100026838()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnapshotView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SnapshotView(uint64_t a1)
{
  result = qword_100070490;
  if (!qword_100070490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100026998(uint64_t a1)
{
  result = sub_10004CEFC();
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

id sub_100026A58(uint64_t a1, uint64_t a2)
{
  v5 = sub_10004CECC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_snapshotManagerSet] = 0;
  *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_snapshotReader] = 0;
  v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_shouldUsizeFromLayout] = 0;
  *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_timer] = 0;
  v9 = sub_100028178(0);
  sub_10004D4BC();
  v10 = *(v9 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
  v11 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v6 + 16))(v8, v9 + v11, v5);
  v12 = v10;
  sub_10004CEAC();

  (*(v6 + 8))(v8, v5);
  v13 = &v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_viewConfiguration];
  v14 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v14;
  v13[6] = *(a1 + 96);
  *(v13 + 110) = *(a1 + 110);
  v15 = *(a1 + 16);
  *v13 = *a1;
  v13[1] = v15;
  v16 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v16;
  v17 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_logger;
  v18 = sub_10004CEFC();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v2[v17], a2, v18);
  v20 = objc_allocWithZone(UIImage);
  sub_10000CDAC(a1, v33);
  v21 = [v20 init];
  v22 = [objc_allocWithZone(UIImageView) initWithImage:v21];

  *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12SnapshotView_imageView] = v22;
  v23 = *(a1 + 104);
  v24 = *(a1 + 112);
  v25 = type metadata accessor for SnapshotView(0);
  v32.receiver = v2;
  v32.super_class = v25;
  v26 = v22;
  v27 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, v23, v24);
  v28 = v26;
  v29 = v27;
  [v29 bounds];
  [v28 setFrame:?];
  [v28 setAutoresizingMask:18];
  [v29 addSubview:v28];
  [v28 setContentMode:0];

  v30 = [objc_opt_self() blackColor];
  [v29 setBackgroundColor:v30];

  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  if ([qword_1000730A8 nullMode])
  {
    sub_100025874();
  }

  else
  {
    sub_100025CD0();
  }

  (*(v19 + 8))(a2, v18);
  return v29;
}

uint64_t sub_100026E6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026EB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100026ECC()
{
  result = sub_100026EEC();
  qword_1000730A8 = result;
  return result;
}

id sub_100026EEC()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_10004D05C();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    sub_10000CC1C(&qword_1000704A0, &unk_1000513B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000513A0;
    *(inited + 32) = 0x694B726574736F70;
    *(inited + 40) = 0xEF726F7469644574;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD000000000000013;
    *(inited + 88) = 0x8000000100054610;
    *(inited + 96) = 1;
    *(inited + 120) = &type metadata for Bool;
    strcpy((inited + 128), "useVFXSnapshot");
    *(inited + 143) = -18;
    *(inited + 144) = 1;
    *(inited + 168) = &type metadata for Bool;
    *(inited + 176) = 0xD000000000000016;
    *(inited + 184) = 0x80000001000546F0;
    *(inited + 216) = &type metadata for Bool;
    *(inited + 192) = 1;
    sub_100039DB0(inited);
    swift_setDeallocating();
    sub_10000CC1C(&qword_1000704A8, &unk_100051740);
    swift_arrayDestroy();
    isa = sub_10004D00C().super.isa;

    [v2 registerDefaults:isa];

    return v2;
  }

  else
  {
    v6 = [objc_opt_self() standardUserDefaults];

    return v6;
  }
}

id sub_10002791C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v5 = sub_10004D05C();
  v6 = [v4 BOOLForKey:v5];

  return v6;
}

void sub_1000279A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v6 = sub_10004D05C();
  [v7 setBool:a3 forKey:v6];
}

id sub_100027B68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v5 = sub_10004D05C();
  v6 = [v4 integerForKey:v5];

  return v6;
}

void sub_100027BF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v6 = sub_10004D05C();
  [v7 setInteger:a3 forKey:v6];
}

uint64_t sub_100027C70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E656964617247;
  }

  else
  {
    v3 = 0x63696D616E7944;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E656964617247;
  }

  else
  {
    v5 = 0x63696D616E7944;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
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
    v8 = sub_10004D74C();
  }

  return v8 & 1;
}

Swift::Int sub_100027D18()
{
  sub_10004D7BC();
  sub_10004D14C();

  return sub_10004D7DC();
}

uint64_t sub_100027D9C(uint64_t a1)
{
  sub_10004D14C();
}

Swift::Int sub_100027E0C()
{
  sub_10004D7BC();
  sub_10004D14C();

  return sub_10004D7DC();
}

uint64_t sub_100027E8C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000658F8;
  v8._object = v3;
  v5 = sub_10004D6CC(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100027EEC(uint64_t *a1@<X8>)
{
  v2 = 0x63696D616E7944;
  if (*v1)
  {
    v2 = 0x746E656964617247;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100027F2C()
{
  sub_100028360();
  v0 = sub_10004D52C();
  type metadata accessor for Signpost(0);
  v1 = swift_allocObject();
  v2 = v0;
  result = sub_10004CEBC();
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog) = v2;
  qword_1000730B0 = v1;
  return result;
}

uint64_t sub_100027FDC()
{
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  v2 = sub_10004CECC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Signpost(uint64_t a1)
{
  result = qword_1000704E8;
  if (!qword_1000704E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000280DC(uint64_t a1)
{
  result = sub_10004CECC();
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

uint64_t sub_100028178(char a1)
{
  v2 = sub_10004CECC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006E0B0 != -1)
  {
    swift_once();
  }

  v6 = qword_1000730B0;
  sub_100028360();
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  v13 = a1 & 1;

  sub_10004D65C();
  v14._countAndFlagsBits = 0x6F69736E65747845;
  v14._object = 0xE90000000000006ELL;
  sub_10004D16C(v14);
  v7 = sub_10004D52C();
  v8 = *(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
  *(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog) = v7;
  v9 = v7;

  sub_10004CEBC();
  v10 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v3 + 40))(v6 + v10, v5, v2);
  swift_endAccess();
  return v6;
}

unint64_t sub_100028360()
{
  result = qword_1000705B0;
  if (!qword_1000705B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000705B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Signpost.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Signpost.Category(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002850C()
{
  result = qword_1000705B8;
  if (!qword_1000705B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000705B8);
  }

  return result;
}

void sub_100028560(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (*&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager] && (v6 = , sub_10002098C(v6), v8 = v7, , (v8 & 1) != 0))
  {
    v9 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

      os_unfair_lock_lock(v10);
      v11 = *(v9 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
      sub_10002E258(v11, 1, v3, a1, a2);

      os_unfair_lock_unlock(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = v2;
    v13 = sub_10004CEDC();
    v14 = sub_10004D37C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = &v12[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v18 = *&v12[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v19 = *(v17 + 5);

      v20 = sub_10000C618(v18, v19, &v21);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "#%s resume running not allowed", v15, 0xCu);
      sub_10000CF40(v16);
    }
  }
}

void sub_100028734(__int128 *a1, int a2)
{
  v3 = v2;
  v6 = sub_10004CEFC();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v59 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger;
  sub_10000CDAC(a1, v74);
  v9 = sub_10004CEDC();
  v10 = sub_10004D39C();
  sub_10000CE08(a1);
  v11 = os_log_type_enabled(v9, v10);
  v60 = a2;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v74[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_10000C618(*(a1 + 4), *(a1 + 5), v74);
    *(v12 + 12) = 1024;
    *(v12 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "#%s vfxview update from editor %{BOOL}d", v12, 0x12u);
    sub_10000CF40(v13);
  }

  v14 = &v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
  v15 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
  v74[4] = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
  v74[5] = v15;
  v75[0] = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
  *(v75 + 14) = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
  v16 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
  v74[0] = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
  v74[1] = v16;
  v17 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
  v74[2] = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
  v74[3] = v17;
  sub_10000CDAC(v74, &v67);
  sub_1000427C8(v65);
  sub_10000CE08(v74);
  v18 = sub_100042698();
  v20 = v19;
  sub_100013254(v65);
  sub_1000427C8(v66);
  v21 = sub_100042698();
  v23 = v22;
  sub_100013254(v66);
  if (v18 == v21 && v20 == v23)
  {
  }

  else
  {
    v24 = sub_10004D74C();

    if ((v24 & 1) == 0)
    {
      sub_10000CDAC(a1, &v67);
      v25 = v3;
      v26 = sub_10004CEDC();
      v27 = sub_10004D39C();

      sub_10000CE08(a1);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v56 = v25;
        v29 = v28;
        v55 = swift_slowAlloc();
        v61 = v55;
        *v29 = 136315650;
        v52 = *(a1 + 4);
        v54 = v27;
        v30 = *(a1 + 5);
        *(v29 + 4) = sub_10000C618(v52, v30, &v61);
        *(v29 + 12) = 2080;
        v31 = *(v14 + 5);
        v71 = *(v14 + 4);
        v72 = v31;
        v73[0] = *(v14 + 6);
        *(v73 + 14) = *(v14 + 110);
        v32 = *(v14 + 1);
        v67 = *v14;
        v68 = v32;
        v33 = *(v14 + 3);
        v69 = *(v14 + 2);
        v70 = v33;
        v53 = v26;
        *v62 = v69;
        sub_10000CDAC(&v67, v63);

        v76._countAndFlagsBits = 8250;
        v76._object = 0xE200000000000000;
        sub_10004D16C(v76);
        sub_10004D16C(v68);
        v77._countAndFlagsBits = 32;
        v77._object = 0xE100000000000000;
        sub_10004D16C(v77);
        v78._countAndFlagsBits = sub_10004D2CC();
        sub_10004D16C(v78);

        v79._countAndFlagsBits = 120;
        v79._object = 0xE100000000000000;
        sub_10004D16C(v79);
        v80._countAndFlagsBits = sub_10004D2CC();
        sub_10004D16C(v80);

        sub_10000CE08(&v67);
        v34 = sub_10000C618(v62[0], v62[1], &v61);

        *(v29 + 14) = v34;
        *(v29 + 22) = 2080;
        *&v63[0] = v52;
        *(&v63[0] + 1) = v30;

        v81._countAndFlagsBits = 8250;
        v81._object = 0xE200000000000000;
        sub_10004D16C(v81);
        sub_10004D16C(*(a1 + 1));
        v82._countAndFlagsBits = 32;
        v82._object = 0xE100000000000000;
        sub_10004D16C(v82);
        v83._countAndFlagsBits = sub_10004D2CC();
        sub_10004D16C(v83);

        v84._countAndFlagsBits = 120;
        v84._object = 0xE100000000000000;
        sub_10004D16C(v84);
        v85._countAndFlagsBits = sub_10004D2CC();
        sub_10004D16C(v85);

        v35 = sub_10000C618(*&v63[0], *(&v63[0] + 1), &v61);

        *(v29 + 24) = v35;
        v36 = v53;
        _os_log_impl(&_mh_execute_header, v53, v54, "#%s vfxview update old '%s' -> '%s'", v29, 0x20u);
        swift_arrayDestroy();

        v25 = v56;
      }

      else
      {
      }

      v37 = *(v14 + 5);
      v63[4] = *(v14 + 4);
      v63[5] = v37;
      v64[0] = *(v14 + 6);
      *(v64 + 14) = *(v14 + 110);
      v38 = *(v14 + 1);
      v63[0] = *v14;
      v63[1] = v38;
      v39 = *(v14 + 3);
      v63[2] = *(v14 + 2);
      v63[3] = v39;
      v40 = *a1;
      v41 = a1[1];
      v42 = a1[3];
      *(v14 + 2) = a1[2];
      *(v14 + 3) = v42;
      *v14 = v40;
      *(v14 + 1) = v41;
      v43 = a1[4];
      v44 = a1[5];
      v45 = a1[6];
      *(v14 + 110) = *(a1 + 110);
      *(v14 + 5) = v44;
      *(v14 + 6) = v45;
      *(v14 + 4) = v43;
      sub_10000CE08(v63);
      v46 = *(v14 + 5);
      v71 = *(v14 + 4);
      v72 = v46;
      v73[0] = *(v14 + 6);
      *(v73 + 14) = *(v14 + 110);
      v47 = *(v14 + 1);
      v67 = *v14;
      v68 = v47;
      v48 = *(v14 + 3);
      v69 = *(v14 + 2);
      v70 = v48;
      v49 = v59;
      (*(v57 + 16))(v59, &v3[v8], v58);
      type metadata accessor for SnapshotWriter(0);
      swift_allocObject();
      sub_10000CDAC(a1, v62);
      sub_10000CDAC(&v67, v62);
      *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter] = sub_10001F348(&v67, v49);

      if (v60)
      {
        v50 = *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lock];
        os_unfair_lock_lock(v50);
        v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] = 0;
        sub_10002CFE8(v51);
        v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated] = 0;
        os_unfair_lock_unlock(v50);
      }
    }
  }
}

void sub_100028DC0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100028E14();
  }
}

uint64_t sub_100028E14()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D37C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000C618(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s worldRendered", v4, 0xCu);
    sub_10000CF40(v5);
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10002A5FC(sub_10002F8E8, v9);
}

uint64_t sub_1000290A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100029100()
{
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000291D4(uint64_t a1)
{
  result = sub_10004CEFC();
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

uint64_t sub_1000292A4(void *a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_10004D3CC();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v24 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004D4CC();
  __chkstk_darwin(v5);
  v6 = sub_10004CF6C();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  v22 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  *(v1 + v7) = [objc_allocWithZone(VFXView) init];
  v23 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager) = 0;
  v25 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager) = 0;
  v26 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect) = 0;
  v8 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  v20 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  type metadata accessor for WorldLoadingReceivedEventsHolder();
  v9 = swift_allocObject();
  *(v9 + 16) = swift_slowAlloc();
  *(v9 + 24) = 0;
  *(v9 + 32) = &_swiftEmptyArrayStorage;
  *(v1 + v8) = v9;
  v21 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot) = 1;
  v10 = v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime;
  *v10 = 0;
  *(v10 + 4) = 1;
  v19 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isScrolling) = 0;
  v18 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue;
  sub_10000D024(0, &unk_100070360, OS_dispatch_queue_serial_ptr);
  sub_10004CF4C();
  v30 = &_swiftEmptyArrayStorage;
  sub_10002F898(&unk_100070AC0, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_10000CC1C(&unk_100070370, "dd");
  sub_1000249FC(&qword_100070AD0, &unk_100070370, "dd");
  sub_10004D57C();
  (*(v27 + 104))(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v28);
  v11 = sub_10004D4DC();
  v12 = v18;
  *(v1 + v18) = v11;
  v13 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lock;
  v14 = swift_slowAlloc();

  *(v2 + v13) = v14;
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_inView) = 0;
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady) = 0;
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated) = 0;
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_frameCounter) = 0;
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented) = 0;
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting) = 0;
  v15 = (v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  *v15 = 0;
  v15[1] = 0;

  sub_100020718(*v15, v15[1]);
  type metadata accessor for TranscriptBackgroundView(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10002976C()
{
  v1 = sub_10004CEFC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager;
  v6 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager];
  if (v6)
  {
    if (!*(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_10001923C(v7);

    if (!*(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor))
    {
LABEL_15:
      __break(1u);
      return;
    }

    sub_100023FE8(v8);

    v9 = *&v0[v5];
    if (v9)
    {
      *(v9 + 40) = 0;
      swift_unknownObjectWeakAssign();
    }
  }

  *&v0[v5] = 0;

  if (qword_10006E0A0 != -1)
  {
    swift_once();
  }

  sub_100022030();
  v10 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation];
  *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation] = 0;

  if (__OFSUB__(qword_1000730B8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  --qword_1000730B8;
  (*(v2 + 16))(v4, &v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger], v1);
  v11 = v0;
  v12 = sub_10004CEDC();
  v13 = sub_10004D36C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v1;
    v25 = v15;
    *v14 = 136315650;
    v16 = &v11[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    v17 = *&v11[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v18 = *&v11[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v19 = sub_10000C618(v17, v18, &v25);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = *v16;
    v21 = v16[1];

    v22 = sub_10000C618(v20, v21, &v25);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2048;
    *(v14 + 24) = qword_1000730B8;
    _os_log_impl(&_mh_execute_header, v12, v13, "#%s deinit %s alive count %ld", v14, 0x20u);
    swift_arrayDestroy();

    (*(v2 + 8))(v4, v24);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v23 = type metadata accessor for TranscriptBackgroundView(0);
  v26.receiver = v11;
  v26.super_class = v23;
  objc_msgSendSuper2(&v26, "dealloc");
}

id sub_100029C88()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D39C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000C618(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s didMoveToWindow", v4, 0xCu);
    sub_10000CF40(v5);
  }

  v9 = type metadata accessor for TranscriptBackgroundView(0);
  v12.receiver = v1;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "didMoveToWindow");
}

void sub_100029E18()
{
  v59.receiver = v0;
  v59.super_class = type metadata accessor for TranscriptBackgroundView(0);
  objc_msgSendSuper2(&v59, "layoutSubviews");
  [v0 bounds];
  if (v1 == 0.0 || ([v0 bounds], CGRectGetHeight(v67) == 0.0))
  {
    v2 = v0;
    v3 = sub_10004CEDC();
    v4 = sub_10004D39C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *&v52 = swift_slowAlloc();
      *v5 = 136315394;
      v6 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v7 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v8 = sub_10000C618(v6, v7, &v52);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2080;
      [v2 bounds];
      *&v60 = v9;
      *(&v60 + 1) = v10;
      *&v61 = v11;
      *(&v61 + 1) = v12;
      type metadata accessor for CGRect(0);
      v13 = sub_10004D0FC();
      v15 = sub_10000C618(v13, v14, &v52);

      *(v5 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "#%s rejecting layout size 0 layoutSubviews %s", v5, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v16 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    [v0 bounds];
    [v16 setFrame:?];
    v17 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_inView;
    v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_inView] = 1;
    if (v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady] != 1)
    {
      goto LABEL_11;
    }

    v18 = [v16 world];
    if (v18)
    {
    }

    else
    {
      sub_10002A2A8();
      sub_10002C944();
    }

    if (v0[v17] != 1)
    {
      *&v66[14] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
      v39 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
      v40 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
      v60 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v61 = v40;
      v41 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
      v65 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
      *v66 = v39;
      v42 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
      v62 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v63 = v42;
      v64 = v41;
      v43 = v66[29];
      v37 = v66[28];
      v36 = *&v66[24];
      v23 = *(&v39 + 1);
      v25 = *&v66[16];
      v35 = DWORD1(v39);
      v34 = BYTE2(v39);
      v33 = BYTE1(v39);
      v32 = v39;
      v28 = *(&v62 + 1);
      v51 = v42;
      v29 = v41;
      v49 = BYTE8(v41);
      v50 = BYTE8(v42);
      v47 = BYTE9(v41);
      v30 = *(&v65 + 1);
      v27 = *(&v40 + 1);
      v48 = v62;
      v26 = *(&v60 + 1);
      v45 = v65;
      v46 = v40;
      v44 = v60;
      sub_10000CDAC(&v60, &v52);
      v38 = v43;
    }

    else
    {
LABEL_11:
      v19 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
      v64 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
      v65 = v19;
      *v66 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
      *&v66[14] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
      v20 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
      v60 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v61 = v20;
      v21 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
      v62 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v63 = v21;
      sub_10000CDAC(&v60, &v52);
      [v0 bounds];
      v23 = v22;
      v25 = v24;
      v26 = *(&v60 + 1);
      v27 = *(&v61 + 1);
      v46 = v61;
      v28 = *(&v62 + 1);
      v48 = v62;
      v51 = v63;
      v29 = v64;
      v49 = BYTE8(v64);
      v50 = BYTE8(v63);
      v47 = BYTE9(v64);
      v30 = *(&v65 + 1);
      v44 = v60;
      v45 = v65;
      v31 = v64;

      sub_10000CE08(&v60);
      v32 = v66[0];
      v33 = v66[1];
      v34 = v66[2];
      v35 = *&v66[4];
      v36 = *&v66[24];
      v37 = v66[28];
      v38 = v66[29];
    }

    *&v52 = v44;
    *(&v52 + 1) = v26;
    *&v53 = v46;
    *(&v53 + 1) = v27;
    *&v54 = v48;
    *(&v54 + 1) = v28;
    *&v55 = v51;
    BYTE8(v55) = v50;
    *&v56 = v29;
    BYTE8(v56) = v49;
    BYTE9(v56) = v47;
    *&v57 = v45;
    *(&v57 + 1) = v30;
    v58[0] = v32;
    v58[1] = v33;
    v58[2] = v34;
    *&v58[4] = v35;
    *&v58[8] = v23;
    *&v58[16] = v25;
    *&v58[24] = v36;
    v58[28] = v37;
    v58[29] = v38;
    v62 = v54;
    v63 = v55;
    v60 = v52;
    v61 = v53;
    *&v66[14] = *&v58[14];
    v65 = v57;
    *v66 = *v58;
    v64 = v56;
    sub_100028734(&v60, 0);
    sub_10000CE08(&v52);
  }
}

void sub_10002A2A8()
{
  v1 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager];
  if (v1)
  {

    v2 = v0;
    v3 = sub_10004CEDC();
    v4 = sub_10004D37C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16 = v6;
      *v5 = 136315138;
      v7 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v8 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v9 = sub_10000C618(v7, v8, &v16);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "#%s provideEmptyMaskIfNeeded", v5, 0xCu);
      sub_10000CF40(v6);
    }

    [v2 frame];
    v11 = v10;
    v13 = v12;
    sub_10000E8AC();
    v14 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_asset);
    v15 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_provider);
    sub_10000DCFC(0, v11, v13);
    swift_unknownObjectRelease();
    [v14 setTexture:*(v15 + 24)];
  }
}

uint64_t sub_10002A4D8(uint64_t a1)
{
  result = sub_10004CEFC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_10002A5FC(uint64_t a1, NSObject *a2)
{
  if (v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 125])
  {
    v5 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
    if (!v5)
    {
      return result;
    }

    v6 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

    os_unfair_lock_lock(v6);
    v7 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
    sub_10002A744(v7, v2, a1, a2);

    os_unfair_lock_unlock(v6);
  }

  else
  {
    v8 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;

    sub_10002F790(a1, a2);
    sub_10001F7C0(v8, sub_10002F7B0, v9);
  }

  return result;
}

void sub_10002A744(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  v7 = sub_10004CEFC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100019398();
  if ((v11 & 0x100000000) != 0)
  {
    v25 = a2;
    v53 = sub_10004CEDC();
    v26 = sub_10004D38C();

    if (os_log_type_enabled(v53, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v55[0] = v28;
      *v27 = 136315138;
      v29 = &v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v30 = *&v25[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v31 = *(v29 + 5);

      v32 = sub_10000C618(v30, v31, v55);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v53, v26, "#%s Could not get current internal time for Gradient snapshot", v27, 0xCu);
      sub_10000CF40(v28);
    }

    else
    {
      v49 = v53;
    }
  }

  else
  {
    v12 = *&v11;
    v13 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;
    v14 = a2;
    v15 = sub_10004CEDC();
    v16 = sub_10004D36C();

    v17 = os_log_type_enabled(v15, v16);
    if (v12 <= 10000.0)
    {
      if (v17)
      {
        v33 = swift_slowAlloc();
        v53 = a4;
        v34 = v33;
        v35 = swift_slowAlloc();
        v51 = v7;
        v36 = v35;
        *&v55[0] = v35;
        *v34 = 136315394;
        v52 = a3;
        v37 = *&v14[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
        v38 = *&v14[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

        v39 = sub_10000C618(v37, v38, v55);
        a3 = v52;

        *(v34 + 4) = v39;
        v13 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;
        *(v34 + 12) = 2048;
        *(v34 + 14) = v12;
        _os_log_impl(&_mh_execute_header, v15, v16, "#%s Snapshot internal time: %f", v34, 0x16u);
        sub_10000CF40(v36);
        v7 = v51;

        a4 = v53;
      }
    }

    else
    {
      if (v17)
      {
        v18 = swift_slowAlloc();
        v53 = a4;
        v19 = v18;
        v20 = swift_slowAlloc();
        v52 = a3;
        v21 = v20;
        *&v55[0] = v20;
        *v19 = 136315394;
        v51 = v7;
        v22 = *&v14[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
        v23 = *&v14[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

        v24 = sub_10000C618(v22, v23, v55);
        v13 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;

        *(v19 + 4) = v24;
        v7 = v51;
        *(v19 + 12) = 2048;
        *(v19 + 14) = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "#%s Restarting effect internal time next time: %f", v19, 0x16u);
        sub_10000CF40(v21);
        a3 = v52;

        a4 = v53;
      }

      v12 = 0.0;
    }

    v40 = &v14[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    *(v40 + 30) = v12;
    v41 = *v40;
    v42 = *(v40 + 1);
    v43 = *(v40 + 3);
    v55[2] = *(v40 + 2);
    v55[3] = v43;
    v55[0] = v41;
    v55[1] = v42;
    v44 = *(v40 + 4);
    v45 = *(v40 + 5);
    v46 = *(v40 + 6);
    *(v56 + 14) = *(v40 + 110);
    v55[5] = v45;
    v56[0] = v46;
    v55[4] = v44;
    (*(v8 + 16))(v10, &v14[v13[24]], v7);
    type metadata accessor for SnapshotWriter(0);
    swift_allocObject();
    sub_10000CDAC(v55, &v54);
    *&v14[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter] = sub_10001F348(v55, v10);

    v47 = *&v14[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    v48 = swift_allocObject();
    *(v48 + 16) = a3;
    *(v48 + 24) = a4;
    *(v48 + 32) = v12;
    sub_10002F790(a3, a4);
    sub_10001F7C0(v47, sub_10002F84C, v48);
  }
}

uint64_t sub_10002AC88()
{
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  result = [qword_1000730A8 baseFPS];
  if (result <= 0)
  {
    result = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80);
  }

  v2 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor);
    if (v3)
    {
      if ((*(v3 + 16) & 1) == 0)
      {
        v4 = *(v3 + 24);
        v5 = 30;
        if (result < 30)
        {
          v5 = result;
        }

        if (v4 == 2)
        {
          return v5;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10002AD3C()
{
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  result = [qword_1000730A8 scrollingFPS];
  if (result <= 0)
  {
    result = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 88);
  }

  v2 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor);
    if (v3)
    {
      if ((*(v3 + 16) & 1) == 0)
      {
        v4 = *(v3 + 24);
        v5 = 15;
        if (result < 15)
        {
          v5 = result;
        }

        if (v4 == 2)
        {
          return v5;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10002ADF0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isScrolling;
  if (*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isScrolling) == 1)
  {
    v3 = sub_10002AD3C();
  }

  else
  {
    v3 = sub_10002AC88();
  }

  if (*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 124))
  {
    v4 = v3 / 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(v0 + v2);
  v6 = sub_10004CEDC();
  v7 = sub_10004D39C();
  if (os_log_type_enabled(v6, v7))
  {
    if (v5)
    {
      v8 = "Scrolling - Reducing FPS to %ld";
    }

    else
    {
      v8 = "Using base FPS: %ld";
    }

    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, v8, v9, 0xCu);
  }

  v10 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView);

  return [v10 setPreferredFramesPerSecond:v4];
}

id sub_10002AF24(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v1 setBackgroundColor:v4];

  v5 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
  v6 = [v3 systemBackgroundColor];
  [v5 setBackgroundColor:v6];

  [v1 addSubview:v5];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 bounds];
  [v5 setFrame:?];
  [v5 setUserInteractionEnabled:0];
  [v5 setAntialiasingMode:0];
  [v5 setDelegate:v1];
  if (*(a1 + 24))
  {
    [v5 setWantsExtendedDynamicRange:1];
  }

  if (*(a1 + 16))
  {
    [v5 setColorSpace:?];
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    [v5 setPixelFormat:*a1];
  }

  return sub_10002ADF0();
}

void sub_10002B0B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v133[1] = a6;
  v134 = a5;
  v155 = a4;
  v154 = a2;
  v150 = sub_10004CECC();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10004CF1C();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_10004CF6C();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10004CD3C();
  v156 = *(v151 - 1);
  v11 = __chkstk_darwin(v151);
  v142 = v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v133 - v13;
  v157 = sub_10004CDDC();
  v15 = *(v157 - 8);
  __chkstk_darwin(v157);
  v17 = v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004CEFC();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v143 = v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v147 = v133 - v23;
  v24 = __chkstk_darwin(v22);
  v135 = v133 - v25;
  __chkstk_darwin(v24);
  v27 = v133 - v26;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v158 = a3;
  v152 = v18;
  if (Strong)
  {
    v29 = Strong;
    (*(v19 + 16))(v27, Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger, v18);

    v30 = v19;
    v31 = sub_10004CEDC();
    v32 = sub_10004D39C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = a1;
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v33 = 136315138;
      *(v33 + 4) = sub_10000C618(v154, v158, aBlock);
      _os_log_impl(&_mh_execute_header, v31, v32, "#%s------- task loading starting ..", v33, 0xCu);
      sub_10000CF40(v35);
      a1 = v34;
      v18 = v152;
    }

    (*(v30 + 8))(v27, v18);
    v19 = v30;
  }

  sub_10004CDCC();
  sub_10004CDBC();
  v37 = v36;
  v39 = *(v15 + 8);
  v38 = (v15 + 8);
  v144 = v39;
  v39(v17, v157);
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  v40 = [qword_1000730A8 allowsFuture];
  v153 = v19;
  v145 = v38;
  if (v40)
  {
    sub_10000CC1C(&qword_1000708B8, &qword_1000515C8);
    inited = swift_initStackObject();
    v42 = VFXWorldLoaderAllowLoadingEffectFromTheFuture;
    *(inited + 32) = VFXWorldLoaderAllowLoadingEffectFromTheFuture;
    *(inited + 16) = xmmword_1000505B0;
    *(inited + 64) = &type metadata for Bool;
    *(inited + 40) = 1;
    v43 = v42;
    v44 = sub_10003A210(inited);
    swift_setDeallocating();
    sub_10002F728(inited + 32);
  }

  else
  {
    v44 = sub_10003A210(&_swiftEmptyArrayStorage);
  }

  sub_10000D024(0, &qword_100070898, VFXWorld_ptr);
  (*(v156 + 2))(v14, v155, v151);
  v45 = sub_10002C6F4(v14, v44);
  sub_10004CDCC();
  sub_10004CDBC();
  v47 = v46;
  v144(v17, v157);
  swift_beginAccess();
  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    v146 = a1;
    v50 = (v48 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration);
    if (*(v48 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 73))
    {
      v51 = [v45 physicsWorld];
      [v51 setUseFixedTimeStep:1];
    }

    v142 = v50;
    v151 = v45;
    v134(v45);
    v52 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger;
    v53 = v158;

    v54 = v49;
    v55 = sub_10004CEDC();
    v56 = sub_10004D39C();

    v57 = os_log_type_enabled(v55, v56);
    v156 = v54;
    v155 = v52;
    v143 = v49;
    if (v57)
    {
      v58 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v58 = 136315394;
      *(v58 + 4) = sub_10000C618(v154, v53, aBlock);
      *(v58 + 12) = 2080;
      [*&v54[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView] bounds];
      v59 = NSStringFromRect(v161);
      v60 = sub_10004D08C();
      v62 = v61;

      v63 = sub_10000C618(v60, v62, aBlock);

      *(v58 + 14) = v63;
      v54 = v156;
      _os_log_impl(&_mh_execute_header, v55, v56, "#%s Prepare with size: %s", v58, 0x16u);
      swift_arrayDestroy();

      v49 = v143;
    }

    v64 = v153;
    v65 = v135;
    v135 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
    [v151 prepareForRenderer:*&v54[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView] progressHandler:0];
    sub_10004CDCC();
    sub_10004CDBC();
    v67 = v66;
    v144(v17, v157);

    v68 = sub_10004CEDC();
    v69 = sub_10004D37C();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock[0] = v71;
      *v70 = 136315394;
      *(v70 + 4) = sub_10000C618(v154, v53, aBlock);
      *(v70 + 12) = 2048;
      *(v70 + 14) = v47 - v37;
      _os_log_impl(&_mh_execute_header, v68, v69, "#%s Reading time: %fs", v70, 0x16u);
      sub_10000CF40(v71);
    }

    v72 = sub_10004CEDC();
    v73 = sub_10004D37C();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock[0] = v75;
      *v74 = 136315394;
      *(v74 + 4) = sub_10000C618(v154, v53, aBlock);
      *(v74 + 12) = 2048;
      *(v74 + 14) = v67 - v47;
      _os_log_impl(&_mh_execute_header, v72, v73, "#%s Preparing time: %fs", v74, 0x16u);
      sub_10000CF40(v75);
    }

    v76 = sub_10004CEDC();
    v77 = sub_10004D37C();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      aBlock[0] = v79;
      *v78 = 136315394;
      *(v78 + 4) = sub_10000C618(v154, v53, aBlock);
      *(v78 + 12) = 2048;
      *(v78 + 14) = v67 - v37;
      _os_log_impl(&_mh_execute_header, v76, v77, "#%s Total time: %fs", v78, 0x16u);
      sub_10000CF40(v79);
    }

    v80 = v156;
    v81 = sub_1000195B4();
    if (v81)
    {
      v82 = v81;
      v83 = *(v64 + 16);
      v83(v65, &v49[v155], v152);
      type metadata accessor for MaskManager(0);
      swift_allocObject();
      *&v80[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager] = sub_10000E09C(v65, v82);
      v84 = v82;

      if (v80[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_inView] == 1)
      {
        sub_10002A2A8();
      }

      v85 = v153;
    }

    else
    {
      v85 = v64;
      v83 = *(v64 + 16);
    }

    v145 = v83;
    v86 = v155;
    v87 = &v49[v155];
    v88 = v49;
    v89 = v152;
    v83(v65, v87, v152);
    type metadata accessor for WorldSerialAccessor(0);
    v90 = swift_allocObject();
    v91 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock;
    v92 = v151;
    v93 = swift_slowAlloc();
    *(v90 + v91) = v93;
    *v93 = 0;
    (*(v85 + 32))(v90 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_logger, v65, v89);
    v151 = v92;
    *(v90 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world) = v92;
    v157 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;
    *&v80[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor] = v90;

    v94 = v142;
    v95 = v80;
    v96 = v142[98];
    v145(v65, &v88[v86], v89);
    v97 = v95;
    sub_10002F36C(v90, v96, 0, v97, v65);
    v99 = v98;

    *&v97[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager] = v99;

    sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
    v100 = sub_10004D3DC();
    v101 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10002F708;
    aBlock[5] = v101;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002FBD0;
    aBlock[3] = &unk_1000666F0;
    v102 = _Block_copy(aBlock);

    v103 = v136;
    sub_10004CF3C();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10002F898(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
    sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
    v104 = v138;
    v105 = v141;
    sub_10004D57C();
    sub_10004D3EC();
    _Block_release(v102);

    (*(v140 + 8))(v104, v105);
    (*(v137 + 8))(v103, v139);
    v106 = *&v156[v157];
    if (v106)
    {
      v108 = *(v94 + 2);
      v107 = *(v94 + 3);

      v109 = sub_100041D04(v108, v107, v106, &v143[v155]);

      v110 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect;
      *&v97[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect] = v109;

      v111 = *&v97[v110];
      v112 = v158;
      if (v111)
      {
        v113 = *&v135[v156];
        v114 = *(*v111 + 136);

        v115 = v113;
        v114();
      }

      sub_10002CB60();

      v116 = v153;
      swift_beginAccess();
      v117 = swift_unknownObjectWeakLoadStrong();
      v118 = v147;
      if (v117)
      {
        v119 = v117;
        v120 = v152;
        (*(v116 + 16))(v147, v117 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger, v152);

        v121 = sub_10004CEDC();
        v122 = sub_10004D39C();

        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v160 = v124;
          *v123 = 136315138;
          *(v123 + 4) = sub_10000C618(v154, v112, &v160);
          _os_log_impl(&_mh_execute_header, v121, v122, "#%s------- task loading done", v123, 0xCu);
          sub_10000CF40(v124);
        }

        (*(v116 + 8))(v118, v120);
      }

      if (qword_10006E0B0 != -1)
      {
        swift_once();
      }

      v125 = qword_1000730B0;
      sub_10004D49C();
      v126 = *(v125 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
      v127 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
      swift_beginAccess();
      v128 = v149;
      v129 = v125 + v127;
      v130 = v148;
      v131 = v150;
      (*(v149 + 16))(v148, v129, v150);
      v132 = v126;
      sub_10004CEAC();

      (*(v128 + 8))(v130, v131);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

id sub_10002C6F4(uint64_t a1, uint64_t a2)
{
  sub_10004CCCC(__stack_chk_guard);
  v5 = v4;
  if (a2)
  {
    type metadata accessor for VFXWorldLoaderOption(0);
    sub_10002F898(&qword_10006E4E0, type metadata accessor for VFXWorldLoaderOption, &unk_1000504C0);
    v6.super.isa = sub_10004D00C().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v15 = 0;
  v7 = [swift_getObjCClassFromMetadata() worldWithURL:v5 options:v6.super.isa error:&v15];

  v8 = v15;
  if (v7)
  {
    v9 = sub_10004CD3C();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15;
    sub_10004CC6C();

    swift_willThrow();
    v13 = sub_10004CD3C();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

void sub_10002C8CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady) = 1;
    if (*(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_inView) == 1)
    {
      sub_10002C944();
    }
  }
}

void sub_10002C944()
{
  v1 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

    os_unfair_lock_lock(v2);
    v3 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    [v3 setWorld:*(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world)];
    os_unfair_lock_unlock(v2);

    v4 = v0;
    v5 = sub_10004CEDC();
    v6 = sub_10004D39C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v10 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v11 = sub_10000C618(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "#%s setting world", v7, 0xCu);
      sub_10000CF40(v8);
    }

    v12 = &v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    v13 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
    v14 = v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 56];
    v15 = *(v12 + 8);
    v16 = v12[72];
    v17 = v15;
    if (v16 == 1)
    {
      [v3 setWantsExtendedDynamicRange:1];
    }

    if (v15)
    {
      [v3 setColorSpace:v17];
    }

    if ((v14 & 1) == 0)
    {
      [v3 setPixelFormat:v13];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002CB60()
{
  v0 = sub_10004CF1C();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004CF6C();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
  v6 = sub_10004D3DC();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10002F7A0;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002FBD0;
  aBlock[3] = &unk_100066718;
  v8 = _Block_copy(aBlock);

  sub_10004CF3C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002F898(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
  sub_10004D57C();
  sub_10004D3EC();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

char *sub_10002CE44(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v13 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
    v3 = *&result[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder];
    *(v3 + 24) = 1;
    swift_beginAccess();
    v4 = *(v3 + 32);
    v5 = *(v4 + 16);
    v15 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;

    v14 = v5;
    if (v5)
    {
      v6 = 0;
      v7 = v4 + 32;
      while (v6 < *(v4 + 16))
      {
        sub_10000CEDC(v7, v16);
        v9 = v17;
        v8 = v18;
        result = sub_10000CF8C(v16, v17);
        if (!*&v2[v15])
        {
          goto LABEL_10;
        }

        ++v6;
        v10 = *(v8 + 8);

        v10(v11, v9, v8);

        result = sub_10000CF40(v16);
        v7 += 40;
        if (v14 == v6)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      __break(1u);
    }

    else
    {
LABEL_7:

      v12 = *&v2[v13];

      swift_beginAccess();
      *(v12 + 32) = &_swiftEmptyArrayStorage;
    }
  }

  return result;
}

void sub_10002CFE8(id result)
{
  if ((v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] & 1) == 0)
  {
    v2 = v1;
    v3 = sub_10004CEDC();
    v4 = sub_10004D39C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "show snapshot", v5, 2u);
    }

    [v2 setAlpha:0.0];
    *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] = 0;
  }
}

id sub_10002D0B8()
{
  v1 = v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting];
  v2 = v0;
  v3 = sub_10004CEDC();
  v4 = sub_10004D39C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315650;
    v6 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000C618(v6, v7, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    if (v1)
    {
      v9 = 0x676E69646968;
    }

    else
    {
      v9 = 0x676E69776F6873;
    }

    if (v1)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = sub_10000C618(v9, v10, &v14);

    *(v5 + 14) = v11;
    *(v5 + 22) = 1024;
    *(v5 + 24) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "#%s %s live view (isSnapshotting = %{BOOL}d", v5, 0x1Cu);
    swift_arrayDestroy();
  }

  v12 = 1.0;
  if (v1)
  {
    v12 = 0.0;
    if (v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot])
    {
      v12 = 1.0;
    }
  }

  return [v2 setAlpha:v12];
}

double sub_10002D2A0(void (*a1)(void), void (*a2)(void))
{
  v5 = (v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v6 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v7 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_10002F790(a1, a2);
  result = sub_100020718(v6, v7);
  if (a1)
  {
    v9 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lock);
    os_unfair_lock_lock(v9);
    v10 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented);
    os_unfair_lock_unlock(v9);
    if ((v10 & 1) != 0 || (, v11 = sub_10001F534(), , !v11))
    {
      a1();
      sub_100020718(a1, a2);
      v12 = *v5;
      v13 = v5[1];
      *v5 = 0;
      v5[1] = 0;
    }

    else
    {
      v12 = a1;
      v13 = a2;
    }

    return sub_100020718(v12, v13);
  }

  return result;
}

void sub_10002D3A0(uint64_t a1, uint64_t a2, char *a3)
{
  if ((a2 & 0x100000000) == 0)
  {
    v5 = a3;
    v6 = sub_10004CEDC();
    v7 = sub_10004D36C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315394;
      v10 = &v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v11 = *&v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v12 = *(v10 + 5);

      v13 = sub_10000C618(v11, v12, &v15);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2048;
      *(v8 + 14) = *&a2;
      _os_log_impl(&_mh_execute_header, v6, v7, "#%s Snapshot for PosterKit done. lastSnapshotTime: %f", v8, 0x16u);
      sub_10000CF40(v9);
    }
  }

  v14 = &a3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime];
  *v14 = a2;
  v14[4] = BYTE4(a2) & 1;
}

void sub_10002D50C(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10004CF1C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004CF6C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v74 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10004CF8C();
  v73 = *(v76 - 8);
  v12 = __chkstk_darwin(v76);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v75 = &v63 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  *(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot) = (a1 & 1) == 0;
  v18 = Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed;
  v19 = *(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v72 = v10;
  if (!v19)
  {

    v31 = sub_10001F534();

    if (v31)
    {
      sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
      v32 = sub_10004D3DC();
      v71 = v9;
      v76 = v32;
      v33 = swift_allocObject();
      *(v33 + 16) = v17;
      v81 = sub_10002F93C;
      v82 = v33;
      aBlock = _NSConcreteStackBlock;
      v78 = 1107296256;
      v79 = sub_10002FBD0;
      v80 = &unk_1000667E0;
      v34 = _Block_copy(&aBlock);
      v35 = v17;

      v36 = v74;
      sub_10004CF3C();
      aBlock = &_swiftEmptyArrayStorage;
      sub_10002F898(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
      sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
      sub_10004D57C();
      v37 = v76;
      sub_10004D3EC();
      _Block_release(v34);

      (*(v6 + 8))(v8, v5);
      (*(v72 + 8))(v36, v71);
    }

    else
    {
    }

    return;
  }

  v69 = v6;
  v70 = v5;
  v20 = *(v18 + 8);
  v71 = v9;
  v67 = v19;
  v68 = v8;
  v66 = v20;
  if (a1)
  {
    v21 = &v17[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime];
    *v21 = a2;
    v21[4] = BYTE4(a2) & 1;
    sub_10002F790(v19, v20);
    v22 = v17;
    v23 = sub_10004CEDC();
    v24 = sub_10004D39C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136315394;
      v27 = &v22[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v28 = *&v22[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v29 = *(v27 + 5);

      v30 = sub_10000C618(v28, v29, &aBlock);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      if (v21[4])
      {
        __break(1u);
        return;
      }

      *(v25 + 14) = *v21;
      _os_log_impl(&_mh_execute_header, v23, v24, "#%s snapshot succeeded: %f", v25, 0x16u);
      sub_10000CF40(v26);

      goto LABEL_11;
    }
  }

  else
  {

    [v17 setAlpha:1.0];
    v38 = v17;
    v23 = sub_10004CEDC();
    v39 = sub_10004D39C();

    if (os_log_type_enabled(v23, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock = v41;
      *v40 = 136315138;
      v42 = &v38[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v43 = *&v38[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v44 = *(v42 + 5);

      v45 = sub_10000C618(v43, v44, &aBlock);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v23, v39, "#%s Failed snapshot", v40, 0xCu);
      sub_10000CF40(v41);

LABEL_11:
    }
  }

  v46 = v17;
  v47 = sub_10004CEDC();
  v48 = sub_10004D39C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock = v50;
    *v49 = 136315138;
    v51 = *&v46[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v52 = *&v46[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v53 = sub_10000C618(v51, v52, &aBlock);

    *(v49 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v47, v48, "#%s readyForSnapshot", v49, 0xCu);
    sub_10000CF40(v50);
  }

  sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
  v65 = sub_10004D3DC();
  sub_10004CF7C();
  sub_10004CFAC();
  v73 = *(v73 + 8);
  (v73)(v14, v76);
  v54 = swift_allocObject();
  v55 = v66;
  v56 = v67;
  v54[2] = v67;
  v54[3] = v55;
  v54[4] = v46;
  v81 = sub_10002F984;
  v82 = v54;
  aBlock = _NSConcreteStackBlock;
  v78 = 1107296256;
  v79 = sub_10002FBD0;
  v80 = &unk_100066830;
  v57 = _Block_copy(&aBlock);
  sub_10002F790(v56, v55);
  v64 = v46;

  v58 = v74;
  sub_10004CF3C();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10002F898(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
  v59 = v68;
  v60 = v70;
  sub_10004D57C();
  v61 = v75;
  v62 = v65;
  sub_10004D3BC();
  _Block_release(v57);

  sub_100020718(v56, v55);
  (*(v69 + 8))(v59, v60);
  (*(v72 + 8))(v58, v71);
  (v73)(v61, v76);
}

void sub_10002DEA4(void *a1)
{
  v1 = a1;
  v2 = sub_10004CEDC();
  v3 = sub_10004D39C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12[0] = v5;
    *v4 = 136315138;
    v6 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000C618(v6, v7, v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s showing live view (worldRendered)", v4, 0xCu);
    sub_10000CF40(v5);
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_10002F9D8;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10002FBD0;
  v12[3] = &unk_100066858;
  v11 = _Block_copy(v12);

  [v9 animateWithDuration:v11 animations:0.25];
  _Block_release(v11);
}

void sub_10002E094(uint64_t a1)
{
  v1 = sub_10004CECC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10006E0B0 != -1)
  {
    swift_once();
  }

  v5 = qword_1000730B0;
  sub_10004D4BC();
  v6 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
  v7 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v7, v1);
  v8 = v6;
  sub_10004CEAC();

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong setAlpha:1.0];
  }
}

id sub_10002E258(void *a1, char a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = a3;

  v10 = sub_10004CEDC();
  v11 = sub_10004D39C();

  v12 = os_log_type_enabled(v10, v11);
  if (a2)
  {
    if (v12)
    {
      v13 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v13 = 136315394;
      v14 = *&v9[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v15 = *&v9[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v16 = sub_10000C618(v14, v15, &v31);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_10000C618(a4, a5, &v31);
      _os_log_impl(&_mh_execute_header, v10, v11, "#%s Starting VFXWorld clock and rendering, reason: %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = [a1 clock];
    [v17 setPaused:0];

    [*&v9[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView] setRendersContinuously:1];
    v18 = [a1 rootNode];
    v19 = sub_10004D05C();
    v20 = [v18 childNodeWithName:v19 recursively:1];

    if (v20)
    {
      v21 = [v20 parameters];

      if (v21)
      {
        isa = sub_10004D28C().super.super.isa;
        v23 = sub_10004D05C();
        [v21 setObject:isa forKeyedSubscript:v23];
        swift_unknownObjectRelease();
      }
    }

    return sub_10002ADF0();
  }

  else
  {
    if (v12)
    {
      v25 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = *&v9[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v27 = *&v9[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v28 = sub_10000C618(v26, v27, &v31);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_10000C618(a4, a5, &v31);
      _os_log_impl(&_mh_execute_header, v10, v11, "#%s Pausing VFXWorld clock and rendering, reason: %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v29 = [a1 clock];
    [v29 setPaused:1];

    v30 = *&v9[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView];

    return [v30 setRendersContinuously:0];
  }
}

uint64_t sub_10002E67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_isMonitoring) = 0;
  *(a3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource) = 0;
  *(a3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_memoryPressureQueue) = 0;
  *(a3 + 40) = &off_100066448;
  swift_unknownObjectWeakAssign();

  v5 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension18PerformanceMonitor_logger;
  v6 = sub_10004CEFC();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3 + v5, a2, v6);
  v8 = objc_opt_self();
  v9 = [v8 processInfo];
  v10 = [v9 thermalState];

  *(a3 + 24) = v10;
  v11 = [v8 processInfo];
  LOBYTE(v9) = [v11 isLowPowerModeEnabled];

  *(a3 + 16) = v9;

  v12 = sub_10004CEDC();
  v13 = sub_10004D36C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 67109378;
    *(v14 + 4) = *(a3 + 16);

    *(v14 + 8) = 2080;
    v16 = *(a3 + 24);
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = 0xE700000000000000;
        v18 = 0x73756F69726573;
        goto LABEL_13;
      }

      if (v16 == 3)
      {
        v17 = 0xE800000000000000;
        v18 = 0x6C61636974697263;
        goto LABEL_13;
      }
    }

    else
    {
      if (!v16)
      {
        v17 = 0xE700000000000000;
        v18 = 0x6C616E696D6F6ELL;
        goto LABEL_13;
      }

      if (v16 == 1)
      {
        v17 = 0xE400000000000000;
        v18 = 1919508838;
LABEL_13:
        v19 = sub_10000C618(v18, v17, &v21);

        *(v14 + 10) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "lowPowerEnabled base state: %{BOOL}d. thermalState: %s", v14, 0x12u);
        sub_10000CF40(v15);

        goto LABEL_14;
      }
    }

    v17 = 0xE600000000000000;
    v18 = 0x6E776F6B6E75;
    goto LABEL_13;
  }

LABEL_14:
  sub_100022EA4();
  (*(v7 + 8))(a2, v6);
  return a3;
}

void sub_10002E9A8(uint64_t a1, unint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
  if (v3)
  {
    v6 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

    os_unfair_lock_lock(v6);
    v7 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
    sub_10002E258(v7, 0, v2, a1, a2);

    os_unfair_lock_unlock(v6);

    if ((v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp] & 1) == 0)
    {
      v8 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect];
      if (v8)
      {
        v9 = *(*v8 + 144);

        v9(1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10002EAC0()
{
  v1 = sub_10004CF1C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004CF6C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lock];
  os_unfair_lock_lock(v9);
  v10 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented;
  v11 = (v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] & 1) != 0 || *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] > 1;
  if (v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated] == 1)
  {
    v12 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_frameCounter];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] = v14;
      os_unfair_lock_unlock(v9);
      if (!v11)
      {
        v27 = v6;
        v28 = v5;
        v29 = v2;
        v15 = v0;
        v30 = v0;
        v16 = sub_10004CEDC();
        v17 = sub_10004D37C();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v26[0] = swift_slowAlloc();
          aBlock[0] = v26[0];
          *v18 = 136315138;
          v26[1] = v15;
          v19 = *&v15[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
          v20 = *&v15[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

          v21 = sub_10000C618(v19, v20, aBlock);

          *(v18 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v16, v17, "#%s didPresent", v18, 0xCu);
          sub_10000CF40(v26[0]);
        }

        os_unfair_lock_lock(v9);
        v30[v10] = 1;
        sub_10002CFE8(v22);
        os_unfair_lock_unlock(v9);
        sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
        v23 = sub_10004D3DC();
        v24 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_10002F8E0;
        aBlock[5] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002FBD0;
        aBlock[3] = &unk_100066790;
        v25 = _Block_copy(aBlock);

        sub_10004CF3C();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_10002F898(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
        sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
        sub_10004D57C();
        sub_10004D3EC();
        _Block_release(v25);

        (*(v29 + 8))(v4, v1);
        (*(v27 + 8))(v8, v28);
      }
    }
  }

  else
  {

    os_unfair_lock_unlock(v9);
  }
}

void sub_10002EF78()
{
  v1 = v0;
  v2 = sub_10004D3CC();
  v15 = *(v2 - 8);
  v16 = v2;
  __chkstk_darwin(v2);
  v14 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004D4CC();
  __chkstk_darwin(v4);
  v5 = sub_10004CF6C();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  *(v0 + v6) = [objc_allocWithZone(VFXView) init];
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager) = 0;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager) = 0;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect) = 0;
  v7 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  type metadata accessor for WorldLoadingReceivedEventsHolder();
  v8 = swift_allocObject();
  *(v8 + 16) = swift_slowAlloc();
  *(v8 + 24) = 0;
  *(v8 + 32) = &_swiftEmptyArrayStorage;
  *(v0 + v7) = v8;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor) = 0;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot) = 1;
  v9 = v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime;
  *v9 = 0;
  *(v9 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation) = 0;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 0;
  *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isScrolling) = 0;
  v13 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue;
  sub_10000D024(0, &unk_100070360, OS_dispatch_queue_serial_ptr);
  sub_10004CF4C();
  v17 = &_swiftEmptyArrayStorage;
  sub_10002F898(&unk_100070AC0, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_10000CC1C(&unk_100070370, "dd");
  sub_1000249FC(&qword_100070AD0, &unk_100070370, "dd");
  sub_10004D57C();
  (*(v15 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  *(v0 + v13) = sub_10004D4DC();
  v10 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lock;
  *(v1 + v10) = swift_slowAlloc();
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_inView) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_frameCounter) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented) = 0;
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting) = 0;
  v11 = (v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  *v11 = 0;
  v11[1] = 0;
  sub_10004D66C();
  __break(1u);
}

void sub_10002F36C(uint64_t a1, char a2, char a3, void *a4, uint64_t a5)
{
  v10 = sub_10004CEFC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LifecycleManager(0);
  v14 = swift_allocObject();
  *(v14 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager) = 0;
  *(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor) = 0;
  *(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_hostAllowsRunning) = 1;
  v15 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning;
  *(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning) = 0;
  *(v14 + 40) = &off_1000666B0;
  v26 = a4;
  swift_unknownObjectWeakAssign();
  *(v14 + 16) = a2;
  *(v14 + 17) = a3;
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  *(v14 + v15) = [qword_1000730A8 alwaysRender];
  *(v14 + 24) = a1;
  v16 = *(v11 + 16);
  v16(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_logger, a5, v10);
  v16(v13, a5, v10);
  type metadata accessor for SimulationSpeedManager(0);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[5] = 0;
  swift_unknownObjectWeakInit();
  v18 = v17 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed;
  *v18 = 0;
  v18[4] = 1;
  v17[5] = &off_100066458;
  swift_unknownObjectWeakAssign();
  v17[3] = a1;
  v27 = v11;
  (*(v11 + 32))(v17 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension22SimulationSpeedManager_logger, v13, v10);
  v19 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager;
  *(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_simulationSpeedManager) = v17;
  swift_retain_n();

  v16(v13, a5, v10);
  type metadata accessor for PerformanceMonitor(0);
  v20 = swift_allocObject();

  v22 = sub_10002E67C(v21, v13, v20);
  v23 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor;
  *(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_performanceMonitor) = v22;

  if (*(v14 + v19))
  {

    sub_100018DB8(1.0);

    if (*(v14 + v23))
    {

      sub_100023E64(v24);

      sub_100020BF4(v25);
      (*(v27 + 8))(a5, v10);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10002F6D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F710(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F728(uint64_t a1)
{
  v2 = sub_10000CC1C(&unk_1000708C0, qword_1000515D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F790(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002F7B0(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1, 0);
  }

  return result;
}

uint64_t sub_10002F800(uint64_t a1)
{
  if (*(v1 + 16))
  {
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10002F84C(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1, *(v1 + 32));
  }

  return result;
}

uint64_t sub_10002F898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002F904()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F944()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_10002F984()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  v2 = (v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v3 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v4 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed + 8);
  *v2 = 0;
  v2[1] = 0;

  return sub_100020718(v3, v4);
}

__n128 sub_10002FA08(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10002FA34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 126))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002FA7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 126) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 126) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10002FAF0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10002FB04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10002FB60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

double sub_10002FBD0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

double sub_10002FC14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  swift_unknownObjectRelease();
  return result;
}

void *sub_10002FC7C(uint64_t a1)
{
  v2 = sub_10004D58C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_10003A4AC(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

void sub_10002FE4C(void *a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  swift_unknownObjectRetain();
  v6 = sub_10004CEDC();
  v7 = sub_10004D39C();
  swift_unknownObjectRelease();

  v62 = v5;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *&v63 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_10000C618(0xD00000000000001CLL, 0x8000000100055000, &v63);
    *(v8 + 12) = 2080;
    v9 = v5;
    v10 = [v9 description];
    v11 = v3;
    v12 = sub_10004D08C();
    v14 = v13;

    v15 = v12;
    v3 = v11;
    v16 = sub_10000C618(v15, v14, &v63);

    *(v8 + 14) = v16;
    *(v8 + 22) = 2080;
    swift_unknownObjectRetain();
    sub_10000CC1C(&qword_100070B60, &qword_1000517F0);
    v17 = sub_10004D0FC();
    v19 = sub_10000C618(v17, v18, &v63);

    *(v8 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "------ %s \n editor:%s environment:%s", v8, 0x20u);
    swift_arrayDestroy();
  }

  v20 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  sub_100010FE4([a2 deviceOrientation], 0.0);
  v21 = [a2 sourceContents];
  *&v63 = 0;
  v22 = [v21 loadUserInfoWithError:&v63];
  swift_unknownObjectRelease();
  v23 = v63;
  if (v22)
  {
    v24 = sub_10004D01C();
    v25 = v23;

    v35 = sub_100042188(v24);
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_10003E214(v35, v36, v38, v40);
    v42 = sub_10004CEDC();
    v43 = sub_10004D39C();
    sub_100010F08(v35, v37, v39, v41);
    if (os_log_type_enabled(v42, v43))
    {
      v60 = v43;
      v61 = v3;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v63 = v45;
      *v44 = 136315138;
      v66._countAndFlagsBits = v35;
      v66._object = v37;
      v46 = sub_10003EA74(v66, v39, v41);
      v48 = sub_10000C618(v46, v47, &v63);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v42, v60, "set initialEffectType: %s", v44, 0xCu);
      sub_10000CF40(v45);

      v3 = v61;
    }

    v49 = v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType;
    v50 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType);
    v51 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType + 8);
    v52 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType + 16);
    *v49 = v35;
    *(v49 + 8) = v37;
    *(v49 + 16) = v39;
    v53 = v3;
    v54 = *(v49 + 24);
    *(v49 + 24) = v41;
    sub_10003E214(v35, v37, v39, v41);
    v55 = v54;
    v3 = v53;
    sub_10003E080(v50, v51, v52, v55);
    v64 = &type metadata for EffectType;
    v65 = &off_100066D68;
    v56 = swift_allocObject();
    *&v63 = v56;
    *(v56 + 16) = v35;
    *(v56 + 24) = v37;
    *(v56 + 32) = v39;
    *(v56 + 40) = v41;
    v57 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
    swift_beginAccess();
    sub_10000CF40((v20 + v57));
    sub_10000CEC4(&v63, v20 + v57);
    swift_endAccess();
  }

  else
  {
    v26 = v63;
    sub_10004CC6C();

    swift_willThrow();
    v27 = sub_10004CEDC();
    v28 = sub_10004D39C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Reading userInfo failed", v29, 2u);
    }

    swift_errorRetain();
    v30 = sub_10004CEDC();
    v31 = sub_10004D39C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "%@", v32, 0xCu);
      sub_100024DC8(v33, &qword_1000703F0, &qword_100050B90);
    }

    else
    {
    }
  }

  v58 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor);
  *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor) = v62;
  v59 = v62;
}

uint64_t sub_1000308B4(void *a1)
{
  v2 = v1;
  v4 = sub_10004CEDC();
  v5 = sub_10004D39C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10000C618(0xD00000000000001ELL, 0x8000000100054F40, &v11);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000CF40(v7);
  }

  v8 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor);
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor) = a1;
  v9 = a1;

  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  return [qword_1000730A8 posterKitEditor] ^ 1;
}

void sub_100030A70(void *a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectRetain_n();
  v6 = sub_10004CEDC();
  v7 = sub_10004D39C();
  p_attr = &stru_10006AFF8.attr;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&aBlock = v10;
    *v9 = 136315650;
    v59 = a2;
    swift_unknownObjectRetain();
    sub_10000CC1C(&qword_100070A48, &qword_100051750);
    v11 = sub_10004D0FC();
    v13 = sub_10000C618(v11, v12, &aBlock);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    v14 = [a2 isPreview];
    swift_unknownObjectRelease();
    *(v9 + 14) = v14;
    swift_unknownObjectRelease();
    *(v9 + 18) = 1024;
    v15 = [a2 isSnapshot];
    swift_unknownObjectRelease();
    *(v9 + 20) = v15;
    swift_unknownObjectRelease();
    _os_log_impl(&_mh_execute_header, v6, v7, "didInitializeWith: %s isPreview: %{BOOL}d isSnapshot: %{BOOL}d", v9, 0x18u);
    sub_10000CF40(v10);

    p_attr = (&stru_10006AFF8 + 8);
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  v16 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_renderer);
  *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_renderer) = a1;
  v17 = a1;

  v18 = [a2 p_attr[198]];
  *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_isPreview) = v18;
  v19 = [a2 isSnapshot];
  *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_isSnapshotMode) = v19;
  v20 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  sub_100010FE4([a2 deviceOrientation], 0.0);
  v21 = [a2 contents];
  *&aBlock = 0;
  v22 = [v21 loadUserInfoWithError:&aBlock];
  swift_unknownObjectRelease();
  v23 = aBlock;
  if (v22)
  {
    v24 = sub_10004D01C();
    v25 = v23;

    v26 = sub_10004CEDC();
    v27 = sub_10004D39C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&aBlock = v29;
      *v28 = 136315138;
      v30 = sub_10004D02C();
      v32 = sub_10000C618(v30, v31, &aBlock);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s", v28, 0xCu);
      sub_10000CF40(v29);
    }

    v34 = sub_100042188(v24);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v56 = &type metadata for EffectType;
    v57 = &off_100066D68;
    v41 = swift_allocObject();
    *&aBlock = v41;
    *(v41 + 16) = v34;
    *(v41 + 24) = v36;
    *(v41 + 32) = v38;
    *(v41 + 40) = v40;
    v42 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
    swift_beginAccess();
    sub_10000CF40((v20 + v42));
    sub_10000CEC4(&aBlock, v20 + v42);
    swift_endAccess();
  }

  else
  {
    v33 = aBlock;
    sub_10004CC6C();

    swift_willThrow();
  }

  v43 = [v17 backgroundView];
  v44 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v20 + v44, &aBlock);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast() && (v45 = v59, v46 = v60, v47 = v61, v48 = v62, sub_100039528(v43, v59, v60, v61, v62, v20), v43, sub_100010F08(v45, v46, v47, v48), sub_10000CEDC(v20 + v44, &aBlock), (swift_dynamicCast() & 1) != 0))
  {
    v49 = v62 == 3;
    sub_100010F08(v59, v60, v61, v62);
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_10003E1D4;
    *(v51 + 24) = v50;
    v57 = sub_10003E1EC;
    v58 = v51;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v55 = sub_10002FC14;
    v56 = &unk_100066B48;
    v52 = _Block_copy(&aBlock);

    [v17 updatePreferences:v52];
    _Block_release(v52);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_10004D66C();
    __break(1u);
  }
}
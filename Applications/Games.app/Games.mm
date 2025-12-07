uint64_t sub_100001DF0()
{
  v0 = type metadata accessor for Logger();
  sub_100002BF0(v0, qword_100030938);
  sub_100002B24(v0, qword_100030938);
  String.init<A>(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100001EE8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonProxy];
  v3 = [v2 getGamedFiredUp];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *v1 = v4;
  v1[1] = v6;
  v7 = *(v0 + 8);

  return v7();
}

id sub_100001FE4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100002020(uint64_t *a1)
{
  if (sub_100020D14(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_100002088(uint64_t *a1)
{
  if (sub_100020D14(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_10000217C();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_100002B5C(&qword_100030990, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_10000217C()
{
  result = qword_100030988;
  if (!qword_100030988)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030988);
  }

  return result;
}

uint64_t sub_1000021C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002234()
{
  v0 = sub_1000021C8(&unk_100030AE0, &qword_100023650);
  __chkstk_darwin(v0 - 8);
  v2 = &v44 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v44 - v8;
  v10 = sub_1000021C8(&qword_100031130, &qword_100023658);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  [objc_opt_self() recordProcessLaunchTimestamp];
  static TaskPriority.high.getter();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_100003D7C(0, 0, v12, &unk_100023668, v14);

  sub_100002A70(v12);
  v15 = [objc_opt_self() sharedApplication];
  sub_100017938();

  v16 = objc_opt_self();
  v17 = [v16 sharedURLCache];
  [v17 setDiskCapacity:104857600];

  v18 = [v16 sharedURLCache];
  [v18 setMemoryCapacity:20971520];

  v19 = objc_opt_self();
  [v19 setFlushTimerEnabled:0];
  [v19 setDisableBackgroundMetrics:1];
  sub_100002AD8();
  static AVAudioSession.set(category:mode:options:completion:)();
  v20 = objc_opt_self();
  v21 = [v20 standardUserDefaults];
  if (__OFADD__(NSUserDefaults.appLaunchCount.getter(), 1))
  {
    __break(1u);
  }

  else
  {
    v46 = v9;
    NSUserDefaults.appLaunchCount.setter();

    if (qword_100030930 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v22 = type metadata accessor for Logger();
  sub_100002B24(v22, qword_100030938);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v44 = v3;
    v45 = v4;
    v26 = v2;
    v27 = v7;
    v28 = v25;
    *v25 = 134349056;
    v29 = [v20 standardUserDefaults];
    v30 = NSUserDefaults.appLaunchCount.getter();

    *(v28 + 1) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "appLaunchCount set to %{public}ld", v28, 0xCu);
    v7 = v27;
    v2 = v26;
    v3 = v44;
    v4 = v45;
  }

  v31 = v46;
  Date.init()();
  v32 = [v20 standardUserDefaults];
  v33 = *(v4 + 16);
  v33(v2, v31, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  NSUserDefaults.appLastLaunchDate.setter();

  v33(v7, v31, v3);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v47 = v37;
    *v36 = 136446210;
    sub_100002B5C(&qword_100030AF8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v41 = *(v4 + 8);
    v41(v7, v3);
    v42 = sub_100013C50(v38, v40, &v47);

    *(v36 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "appLastLaunchDate set to %{public}s", v36, 0xCu);
    sub_100002BA4(v37);
    v31 = v46;
  }

  else
  {

    v41 = *(v4 + 8);
    v41(v7, v3);
  }

  static MoltresTips.setup(shouldReset:)();
  return (v41)(v31, v3);
}

uint64_t sub_100002898()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000028D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000297C;

  return sub_100001EC8(a1);
}

uint64_t sub_10000297C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002A70(uint64_t a1)
{
  v2 = sub_1000021C8(&qword_100031130, &qword_100023658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100002AD8()
{
  result = qword_100030AF0;
  if (!qword_100030AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100030AF0);
  }

  return result;
}

uint64_t sub_100002B24(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002B5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002BA4(void *a1)
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

uint64_t *sub_100002BF0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100002C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CompoundAction();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_1000021C8(&qword_100030BC8, &unk_1000236F0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100002DA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CompoundAction();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 40) = -a2;
  }

  else
  {
    v11 = sub_1000021C8(&qword_100030BC8, &unk_1000236F0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100002EF8(uint64_t a1)
{
  type metadata accessor for CompoundAction();
  if (v1 <= 0x3F)
  {
    sub_100003838(319, &qword_100030C38, &qword_100030C40, &qword_100023728, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10000389C(319, &unk_100030C48, &type metadata accessor for OpaqueMetricsFieldsContext, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100002FF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000304C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BootstrapResult();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000021C8(&qword_100030C80, &qword_100023730);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000021C8(&qword_100030C88, &qword_100023738);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_1000031B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BootstrapResult();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000021C8(&qword_100030C80, &qword_100023730);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000021C8(&qword_100030C88, &qword_100023738);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

void sub_10000333C(uint64_t a1)
{
  type metadata accessor for BootstrapResult();
  if (v1 <= 0x3F)
  {
    sub_10000389C(319, &qword_100030CF8, &type metadata accessor for FlowAuthorityProvider, &type metadata accessor for Bindable);
    if (v2 <= 0x3F)
    {
      sub_100003838(319, &qword_100030D00, &unk_100030D08, &qword_100023768, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100003454(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Bootstrap();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100003514(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Bootstrap();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000035D8(uint64_t a1)
{
  sub_100003754(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bootstrap();
    if (v2 <= 0x3F)
    {
      sub_1000037E8();
      if (v3 <= 0x3F)
      {
        sub_10000389C(319, &qword_100030DC0, &type metadata accessor for GamesSettings, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100003838(319, &qword_100030DC8, &qword_100030DD0, &qword_100023788, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_10000389C(319, &unk_100030DD8, &type metadata accessor for ImpedimentFlowDestinationStates, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100003754(uint64_t a1)
{
  if (!qword_100030DA8)
  {
    type metadata accessor for NativeIntentDispatchableKinds();
    sub_1000126A0(&qword_100030DB0, &type metadata accessor for NativeIntentDispatchableKinds, &protocol conformance descriptor for NativeIntentDispatchableKinds);
    v1 = type metadata accessor for JSNativeIntentDispatcher();
    if (!v2)
    {
      atomic_store(v1, &qword_100030DA8);
    }
  }
}

void sub_1000037E8()
{
  if (!qword_100030DB8)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100030DB8);
    }
  }
}

void sub_100003838(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100002FF0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10000389C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100003914(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Bootstrap();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for BootstrapResult();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = type metadata accessor for Player();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for TabsInfoProvider();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_100003AC4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Bootstrap();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for BootstrapResult();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for Player();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for TabsInfoProvider();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100003C7C(uint64_t a1)
{
  type metadata accessor for Bootstrap();
  if (v1 <= 0x3F)
  {
    type metadata accessor for BootstrapResult();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Player();
      if (v3 <= 0x3F)
      {
        type metadata accessor for TabsInfoProvider();
        if (v4 <= 0x3F)
        {
          sub_100003754(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100003D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000021C8(&qword_100031130, &qword_100023658);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100016928(a3, v25 - v10, &qword_100031130, &qword_100023658);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000169B0(v11, &qword_100031130, &qword_100023658);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100004034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000021C8(&qword_100031130, &qword_100023658);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100016928(a3, v25 - v10, &qword_100031130, &qword_100023658);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000169B0(v11, &qword_100031130, &qword_100023658);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000042F4()
{
  v0 = type metadata accessor for Bag.Profile();
  sub_100002BF0(v0, qword_100030B60);
  sub_100002B24(v0, qword_100030B60);
  return Bag.Profile.init(name:version:)();
}

uint64_t sub_10000435C(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_10000441C;

  return makeGamesPrerequisites(objectGraph:jsNativeIntentDispatcher:)(a1, a2);
}

uint64_t sub_10000441C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100004604;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_10000459C;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_10000459C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_100004604()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100004668()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100015048(0, &qword_100031158, UIScene_ptr);
  sub_1000147DC();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100004804(v2);
  v4 = v3;

  v5 = sub_100004BF0(v4);

  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v8 isKeyWindow])
      {

        return v9;
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

void sub_100004804(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100015048(0, &qword_100031158, UIScene_ptr);
    sub_1000147DC();
    Set.Iterator.init(_cocoa:)();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100015048(0, &qword_100031158, UIScene_ptr), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_100014844(v1);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_100004A70(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage;
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v13 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = type metadata accessor for StoreTab();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v14, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v13;
        }

        if (v14)
        {
          break;
        }

        if (v8 == v6)
        {
          return v13;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v15;
    }

    while (v8 != v6);
  }

  return result;
}

void *sub_100004BF0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject windows];
      sub_100015048(0, &qword_100031168, UIWindow_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v32 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_100016DD4(&qword_100031178, &qword_100031170, &qword_100023B88, &protocol conformance descriptor for [A]);
            for (i = 0; i != v16; ++i)
            {
              sub_1000021C8(&qword_100031170, &qword_100023B88);
              v19 = sub_100014754(v31, i, v8);
              v21 = *v20;
              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v32;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v30;
      if (v30 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100004F84@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = type metadata accessor for StoreTab();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t sub_100005158()
{
  v0 = type metadata accessor for Logger();
  sub_100002BF0(v0, qword_100030B78);
  sub_100002B24(v0, qword_100030B78);
  String.init<A>(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000520C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v142 = a1;
  v141 = sub_1000021C8(&qword_100030998, &qword_100023608);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v154 = &v119 - v3;
  v138 = sub_1000021C8(&qword_100031000, &qword_100023A70);
  v139 = *(v138 - 8);
  __chkstk_darwin(v138);
  v137 = &v119 - v4;
  v136 = sub_1000021C8(&qword_100031008, &qword_100023A78);
  __chkstk_darwin(v136);
  v134 = &v119 - v5;
  v133 = sub_1000021C8(&qword_100031010, &qword_100023A80);
  v135 = *(v133 - 8);
  __chkstk_darwin(v133);
  v153 = &v119 - v6;
  v152 = sub_1000021C8(&qword_100031018, &qword_100023A88);
  v132 = *(v152 - 8);
  __chkstk_darwin(v152);
  v130 = &v119 - v7;
  v129 = sub_1000021C8(&qword_100031020, &qword_100023A90);
  v131 = *(v129 - 8);
  __chkstk_darwin(v129);
  v151 = (&v119 - v8);
  v150 = sub_1000021C8(&qword_100031028, &qword_100023A98);
  v128 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = (&v119 - v9);
  v127 = sub_1000021C8(&qword_100031030, &qword_100023AA0);
  v148 = *(v127 - 8);
  v10 = __chkstk_darwin(v127);
  v147 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v146 = &v119 - v12;
  v13 = type metadata accessor for AppBootstrapView(0);
  v14 = type metadata accessor for Bootstrap();
  __chkstk_darwin(v14);
  v126 = (&v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v16 + 16))();
  v18 = *(v13 - 8);
  v13 -= 8;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v144 = v2;
  sub_10001237C(v2, &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppBootstrapView);
  v20 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v125 = swift_allocObject();
  sub_1000123E8(&v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v125 + v20, type metadata accessor for AppBootstrapView);
  v21 = v2 + *(v13 + 32);
  v22 = *v21;
  v23 = *(v21 + 8);
  LOBYTE(v21) = *(v21 + 16);
  v157 = v22;
  v158 = v23;
  LOBYTE(v159) = v21;
  sub_1000021C8(&qword_100031038, &qword_100023AA8);
  Binding.projectedValue.getter();
  v124 = v161;
  v123 = v162;
  v122 = v163;
  v121 = sub_1000021C8(&qword_100031040, &qword_100023AB0);
  v120 = sub_100002FF0(&qword_100031048, &qword_100023AB8);
  v119 = sub_100002FF0(&unk_100031050, &unk_100023AC0);
  v24 = sub_100002FF0(&unk_1000309B0, &qword_100023618);
  v25 = sub_100002FF0(&qword_100031060, &qword_100023AD0);
  v26 = sub_100002FF0(&qword_100031068, &qword_100023AD8);
  v27 = sub_100013018();
  v28 = type metadata accessor for MediaArtwork.URLImageProtocol();
  v29 = sub_100002FF0(&qword_100030DD0, &qword_100023788);
  v30 = sub_1000126A0(&qword_1000310B8, &type metadata accessor for MediaArtwork.URLImageProtocol, &protocol conformance descriptor for MediaArtwork.URLImageProtocol);
  v31 = sub_100016DD4(&qword_1000310C0, &qword_100030DD0, &qword_100023788, &protocol conformance descriptor for LRUMultiCache<A, B>);
  v157 = v28;
  v158 = v29;
  v143 = v29;
  v159 = v30;
  v160 = v31;
  v32 = v31;
  v155 = v31;
  v156 = &opaque type descriptor for <<opaque return type of MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v157 = v25;
  v158 = v26;
  v159 = v27;
  v160 = OpaqueTypeConformance2;
  v145 = &opaque type descriptor for <<opaque return type of View.mediaArtworkProtocol<A>(_:)>>;
  v34 = swift_getOpaqueTypeConformance2();
  v157 = v24;
  v158 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = type metadata accessor for ThreeDimensionalAppIconProtocol();
  v37 = sub_1000126A0(&qword_1000310C8, &type metadata accessor for ThreeDimensionalAppIconProtocol, &protocol conformance descriptor for ThreeDimensionalAppIconProtocol);
  v157 = v36;
  v158 = v29;
  v159 = v37;
  v160 = v32;
  v38 = swift_getOpaqueTypeConformance2();
  v157 = v120;
  v158 = v119;
  v159 = v35;
  v160 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v146;
  BootstrapView.init<>(bootstrap:contentBuilder:isBootstrapping:)();
  v40 = v144;
  v41 = sub_100004668();
  v42 = [v41 rootViewController];

  v43 = v147;
  v44 = v127;
  BootstrapView.with(rootViewController:)();

  v45 = *(v148 + 8);
  v45(v39, v44);
  v124 = sub_100016DD4(&qword_1000310D0, &qword_100031030, &qword_100023AA0, &protocol conformance descriptor for BootstrapView<A, B, C>);
  View.optOutFromMetricsValidations()();
  v45(v43, v44);
  v125 = sub_1000021C8(&qword_1000310D8, &qword_100023B00);
  v126 = *(v125 - 8);
  __chkstk_darwin(v125);
  v47 = &v119 - v46;
  v48 = type metadata accessor for AppIconProtocol();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v51 = &v119 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppIconProtocol.init()();
  v52 = (v40 + *(v13 + 44));
  v53 = *v52;
  v147 = v52[1];
  v148 = v53;
  v157 = v53;
  v158 = v147;
  v146 = sub_1000021C8(&qword_1000310E0, &qword_100023B08);
  State.wrappedValue.getter();
  v54 = sub_1000126A0(&qword_1000310E8, &type metadata accessor for AppIconProtocol, &protocol conformance descriptor for AppIconProtocol);
  v55 = v143;
  v56 = v155;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  (*(v49 + 8))(v51, v48);
  v157 = v44;
  v158 = v124;
  v124 = swift_getOpaqueTypeConformance2();
  v157 = v48;
  v158 = v55;
  v159 = v54;
  v160 = v56;
  v127 = swift_getOpaqueTypeConformance2();
  v57 = v150;
  v58 = v125;
  v59 = v149;
  View.mediaArtworkProtocol<A>(_:)();
  v60 = v47;
  v61 = v58;
  v126[1](v60, v58);
  (*(v128 + 8))(v59, v57);
  v128 = sub_1000021C8(&qword_1000310F0, &qword_100023B10);
  v149 = *(v128 - 8);
  __chkstk_darwin(v128);
  v63 = &v119 - v62;
  v64 = type metadata accessor for PlayerMonogramProtocol();
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v119 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlayerMonogramProtocol.init()();
  v157 = v148;
  v158 = v147;
  State.wrappedValue.getter();
  v68 = sub_1000126A0(&qword_1000310F8, &type metadata accessor for PlayerMonogramProtocol, &protocol conformance descriptor for PlayerMonogramProtocol);
  v69 = v155;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  (*(v65 + 8))(v67, v64);
  v157 = v150;
  v158 = v61;
  v159 = v124;
  v160 = v127;
  v70 = swift_getOpaqueTypeConformance2();
  v157 = v64;
  v158 = v55;
  v159 = v68;
  v160 = v69;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v130;
  v73 = v129;
  v74 = v128;
  v75 = v151;
  View.mediaArtworkProtocol<A>(_:)();
  v76 = v74;
  v149[1](v63, v74);
  v77 = v73;
  (*(v131 + 8))(v75, v73);
  v78 = type metadata accessor for MediaArtwork.BundleImageProtocol();
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v81 = &v119 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009944();
  v157 = v77;
  v158 = v76;
  v159 = v70;
  v160 = v71;
  v149 = swift_getOpaqueTypeConformance2();
  v150 = sub_1000126A0(&qword_100031100, &type metadata accessor for MediaArtwork.BundleImageProtocol, &protocol conformance descriptor for MediaArtwork.BundleImageProtocol);
  v82 = v152;
  View.mediaArtworkProtocol<A>(_:)();
  (*(v79 + 8))(v81, v78);
  (*(v132 + 8))(v72, v82);
  v144 = sub_1000021C8(&qword_100031108, &qword_100023B18);
  v151 = *(v144 - 8);
  __chkstk_darwin(v144);
  v84 = &v119 - v83;
  v85 = type metadata accessor for ContactAvatarProtocol();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v88 = &v119 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContactAvatarProtocol.init()();
  v157 = v148;
  v158 = v147;
  State.wrappedValue.getter();
  v89 = sub_1000126A0(&qword_100031110, &type metadata accessor for ContactAvatarProtocol, &protocol conformance descriptor for ContactAvatarProtocol);
  v90 = v143;
  v91 = v155;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  (*(v86 + 8))(v88, v85);
  v157 = v152;
  v158 = v78;
  v159 = v149;
  v160 = v150;
  swift_getOpaqueTypeConformance2();
  v157 = v85;
  v158 = v90;
  v159 = v89;
  v160 = v91;
  swift_getOpaqueTypeConformance2();
  v92 = v134;
  v93 = v133;
  v94 = v144;
  v95 = v153;
  View.mediaArtworkProtocol<A>(_:)();
  v151[1](v84, v94);
  (*(v135 + 8))(v95, v93);
  v96 = static Edge.Set.all.getter();
  v97 = v136;
  *(v92 + *(v136 + 36)) = v96;
  v98 = sub_1000131B4();
  v99 = v137;
  View.registerGamesPPTs()();
  sub_1000169B0(v92, &qword_100031008, &qword_100023A78);
  v157 = v97;
  v158 = v98;
  swift_getOpaqueTypeConformance2();
  v100 = v138;
  View.withDebugNotificationView()();
  (*(v139 + 8))(v99, v100);
  type metadata accessor for MainActor();
  v101 = static MainActor.shared.getter();
  v102 = swift_allocObject();
  *(v102 + 16) = v101;
  *(v102 + 24) = &protocol witness table for MainActor;
  v103 = type metadata accessor for TaskPriority();
  v104 = *(v103 - 8);
  v105 = *(v104 + 64);
  __chkstk_darwin(v103);
  v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  v107 = &v119 - v106;
  static TaskPriority.userInitiated.getter();
  if (sub_100020D14(2, 26, 4, 0))
  {
    v155 = type metadata accessor for _TaskModifier2();
    v156 = &v119;
    v153 = *(v155 - 8);
    __chkstk_darwin(v155);
    v109 = &v119 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
    v157 = 0;
    v158 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v157 = 0xD000000000000029;
    v158 = 0x80000001000266A0;
    v161 = 203;
    v110._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v110);

    __chkstk_darwin(v111);
    (*(v104 + 16))(&v119 - v106, &v119 - v106, v103);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v104 + 8))(&v119 - v106, v103);
    v112 = v142;
    (*(v140 + 32))(v142, v154, v141);
    v113 = sub_1000021C8(&qword_1000309A0, &qword_100023610);
    return (*(v153 + 4))(v112 + *(v113 + 36), v109, v155);
  }

  else
  {
    v115 = sub_1000021C8(&qword_1000309A8, &unk_100023B40);
    v116 = v142;
    v117 = (v142 + *(v115 + 36));
    v118 = type metadata accessor for _TaskModifier();
    (*(v104 + 32))(&v117[*(v118 + 20)], v107, v103);
    *v117 = &unk_100023B30;
    *(v117 + 1) = v102;
    return (*(v140 + 32))(v116, v154, v141);
  }
}

uint64_t sub_100006858@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v140 = a3;
  v149 = a1;
  BootstrapResult.objectGraph.getter();
  type metadata accessor for ArtworkLoaderURLSession();
  BaseObjectGraph.inject<A>(_:)();

  v4 = v150;
  v5 = type metadata accessor for MediaArtwork.URLImageProtocol.Configuration();
  v147 = v5;
  v131 = *(v5 - 8);
  v6 = v131;
  v133 = *(v131 + 64);
  v7 = __chkstk_darwin(v5);
  v132 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v146 = &v111 - v132;
  __chkstk_darwin(v7);
  v10 = &v111 - v9;
  MediaArtwork.URLImageProtocol.Configuration.init()();
  v139 = v4;
  v11 = [v4 session];
  MediaArtwork.URLImageProtocol.Configuration.withURLSession(_:takeOwnership:)();

  v137 = *(v6 + 8);
  v138 = v6 + 8;
  v137(v10, v5);
  v12 = sub_1000021C8(&qword_100031048, &qword_100023AB8);
  v135 = *(v12 - 8);
  v136 = v12;
  __chkstk_darwin(v12);
  v145 = &v111 - v13;
  v144 = sub_1000021C8(&unk_1000309B0, &qword_100023618);
  v134 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = &v111 - v14;
  v148 = sub_1000021C8(&qword_100031060, &qword_100023AD0);
  __chkstk_darwin(v148);
  v141 = &v111 - v15;
  BootstrapResult.objectGraph.getter();
  v16 = type metadata accessor for Dependency();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImpedimentFlowDestinationStates();
  v20 = type metadata accessor for AppBootstrapView(0);
  v21 = (a2 + *(v20 + 40));
  v23 = *v21;
  v22 = v21[1];
  v150 = v23;
  v151 = v22;
  sub_1000021C8(&qword_100031180, &qword_100023B90);
  State.wrappedValue.getter();
  Dependency.init<A>(satisfying:with:)();
  v129 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v17 + 8))(v19, v16);
  v128 = sub_100004668();
  v24 = type metadata accessor for ImpedimentFlowConfig();
  __chkstk_darwin(v24 - 8);
  v127 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ImpedimentFlowConfig.UseCase();
  __chkstk_darwin(v26);
  (*(v28 + 104))(&v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ImpedimentFlowConfig.UseCase.moltres(_:));
  ImpedimentFlowConfig.init(useCase:suppressImpediments:)();
  v29 = *(v20 - 8);
  v130 = v20 - 8;
  v30 = *(v20 + 28);
  v142 = a2;
  v126 = *(a2 + v30);
  v31 = v29;
  v32 = __chkstk_darwin(a2);
  v34 = v33;
  v114 = v33;
  v125 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = &v111 - v125;
  v112 = type metadata accessor for AppBootstrapView;
  sub_10001237C(v32, &v111 - v125, type metadata accessor for AppBootstrapView);
  v36 = type metadata accessor for BootstrapResult();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v115 = v38;
  v119 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = &v111 - v119;
  v40 = *(v37 + 16);
  v117 = v37 + 16;
  v118 = v40;
  v113 = v36;
  v40(&v111 - v119, v149, v36);
  v116 = *(v31 + 80);
  v41 = (v116 + 16) & ~v116;
  v121 = *(v37 + 80);
  v122 = v34 + v121;
  v42 = (v34 + v121 + v41) & ~v121;
  v120 = v116 | v121;
  v43 = swift_allocObject();
  sub_1000123E8(v35, v43 + v41, type metadata accessor for AppBootstrapView);
  v44 = *(v37 + 32);
  v123 = v37 + 32;
  v124 = v44;
  v44(v43 + v42, v39, v36);
  type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  sub_1000126A0(&qword_100031188, type metadata accessor for AppBootstrapView.TabBasedRootView, &unk_1000237A4);

  v45 = v141;
  ImpedimentFlowView.init<>(objectGraph:window:config:inAppSettings:content:)();
  KeyPath = swift_getKeyPath();
  v47 = &v45[*(sub_1000021C8(&qword_100031080, &qword_100023AE0) + 36)];
  v48 = *(sub_1000021C8(&qword_1000310A0, &qword_100023AF0) + 28);
  v49 = enum case for ColorScheme.dark(_:);
  v50 = type metadata accessor for ColorScheme();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = KeyPath;
  v51 = static MoltresTint.selectiveAccent.getter();
  v52 = swift_getKeyPath();
  v150 = v51;
  v53 = AnyShapeStyle.init<A>(_:)();
  v54 = &v45[*(v148 + 36)];
  *v54 = v52;
  v54[1] = v53;
  v55 = sub_1000021C8(&qword_100031068, &qword_100023AD8);
  v56 = *(v55 - 8);
  v57 = __chkstk_darwin(v55);
  v59 = &v111 - v58;
  __chkstk_darwin(v57);
  (*(v131 + 16))(&v111 - v132, v146, v147);
  v60 = type metadata accessor for MediaArtwork.URLImageProtocol();
  swift_allocObject();
  v154 = MediaArtwork.URLImageProtocol.init(_:)();
  v61 = (v142 + *(v130 + 44));
  v63 = *v61;
  v62 = v61[1];
  v130 = v63;
  v150 = v63;
  v151 = v62;
  v129 = v62;
  v128 = sub_1000021C8(&qword_1000310E0, &qword_100023B08);
  State.wrappedValue.getter();
  v64 = sub_1000021C8(&qword_100030DD0, &qword_100023788);
  v65 = sub_1000126A0(&qword_1000310B8, &type metadata accessor for MediaArtwork.URLImageProtocol, &protocol conformance descriptor for MediaArtwork.URLImageProtocol);
  v66 = sub_100016DD4(&qword_1000310C0, &qword_100030DD0, &qword_100023788, &protocol conformance descriptor for LRUMultiCache<A, B>);
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  v67 = sub_100013018();
  v150 = v60;
  v151 = v64;
  v132 = v64;
  v152 = v65;
  v153 = v66;
  v131 = v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v127 = v67;
  v126 = OpaqueTypeConformance2;
  v69 = v141;
  View.mediaArtworkProtocol<A>(_:)();
  v70 = *(v56 + 8);
  v133 = v55;
  v70(v59, v55);
  v71 = sub_1000169B0(v69, &qword_100031060, &qword_100023AD0);
  __chkstk_darwin(v71);
  v72 = &v111 - v125;
  v73 = v112;
  v74 = sub_10001237C(v142, &v111 - v125, v112);
  __chkstk_darwin(v74);
  v75 = &v111 - v119;
  v76 = v113;
  v118(&v111 - v119, v149, v113);
  type metadata accessor for MainActor();
  v77 = static MainActor.shared.getter();
  v78 = (v116 + 32) & ~v116;
  v79 = (v122 + v78) & ~v121;
  v80 = swift_allocObject();
  *(v80 + 16) = v77;
  *(v80 + 24) = &protocol witness table for MainActor;
  sub_1000123E8(v72, v80 + v78, v73);
  v124(v80 + v79, v75, v76);
  v81 = type metadata accessor for TaskPriority();
  v82 = *(v81 - 8);
  v83 = *(v82 + 64);
  __chkstk_darwin(v81);
  v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
  v85 = &v111 - v84;
  static TaskPriority.userInitiated.getter();
  if (sub_100020D14(2, 26, 4, 0))
  {
    v141 = type metadata accessor for _TaskModifier2();
    v142 = &v111;
    v125 = *(v141 - 1);
    __chkstk_darwin(v141);
    v87 = &v111 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = 0;
    v151 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v150 = 0xD000000000000029;
    v151 = 0x80000001000266A0;
    v154 = 161;
    v88._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v88);

    __chkstk_darwin(v89);
    (*(v82 + 16))(&v111 - v84, v85, v81);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v82 + 8))(v85, v81);
    v90 = v145;
    (*(v134 + 32))(v145, v143, v144);
    v91 = sub_1000021C8(&unk_100031190, &qword_100023620);
    (*(v125 + 32))(&v90[*(v91 + 36)], v87, v141);
  }

  else
  {
    v92 = sub_1000021C8(&unk_1000309C0, &qword_100023C10);
    v93 = v145;
    v94 = &v145[*(v92 + 36)];
    v95 = type metadata accessor for _TaskModifier();
    (*(v82 + 32))(&v94[*(v95 + 20)], &v111 - v84, v81);
    *v94 = &unk_100023C00;
    *(v94 + 1) = v80;
    (*(v134 + 32))(v93, v143, v144);
  }

  v142 = sub_1000021C8(&unk_100031050, &unk_100023AC0);
  v143 = &v111;
  v96 = *(v142 - 1);
  __chkstk_darwin(v142);
  v98 = &v111 - v97;
  v99 = type metadata accessor for ThreeDimensionalAppIconProtocol();
  v141 = &v111;
  v100 = *(v99 - 8);
  __chkstk_darwin(v99);
  v102 = &v111 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  BootstrapResult.objectGraph.getter();
  ThreeDimensionalAppIconProtocol.init(objectGraph:)();
  v150 = v130;
  v151 = v129;
  State.wrappedValue.getter();
  v103 = sub_1000126A0(&qword_1000310C8, &type metadata accessor for ThreeDimensionalAppIconProtocol, &protocol conformance descriptor for ThreeDimensionalAppIconProtocol);
  v104 = v132;
  v105 = v131;
  MediaArtworkProtocol.cache<A>(_:allowStandaloneFetches:)();

  (*(v100 + 8))(v102, v99);
  v150 = v148;
  v151 = v133;
  v152 = v127;
  v153 = v126;
  v106 = swift_getOpaqueTypeConformance2();
  v150 = v144;
  v151 = v106;
  swift_getOpaqueTypeConformance2();
  v150 = v99;
  v151 = v104;
  v152 = v103;
  v153 = v105;
  swift_getOpaqueTypeConformance2();
  v107 = v136;
  v108 = v142;
  v109 = v145;
  View.mediaArtworkProtocol<A>(_:)();

  (*(v96 + 8))(v98, v108);
  (*(v135 + 8))(v109, v107);
  return (v137)(v146, v147);
}

void sub_100007AD0(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for AppBootstrapView(0) + 20);
  v9 = type metadata accessor for Bootstrap();
  (*(*(v9 - 8) + 16))(a4, a2 + v8, v9);
  v10 = type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  v11 = v10[5];
  v12 = type metadata accessor for BootstrapResult();
  (*(*(v12 - 8) + 16))(a4 + v11, a3, v12);
  v13 = v10[6];
  v14 = type metadata accessor for Player();
  (*(*(v14 - 8) + 16))(a4 + v13, a1, v14);
  sub_100007C68(a1, a4 + v10[7]);
  v15 = *a2;
  v16 = sub_100004668();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(a4 + v10[8]) = v15;
  swift_unknownObjectWeakInit();

  swift_unknownObjectWeakInit();
}

uint64_t sub_100007C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v27 = a2;
  v25 = type metadata accessor for Player();
  v23 = *(v25 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v25);
  v22 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000021C8(&qword_100030FE0, &unk_100023A50);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v19 = type metadata accessor for StoreTab.Identifier();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = static Bag.tabsKey.getter();
  sub_1000021C8(&qword_1000311D8, &qword_100023C58);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100023680;
  static StoreTab.Identifier.playNow.getter();
  sub_1000021C8(&qword_1000311E0, &qword_100023C60);
  type metadata accessor for StoreTab();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100023690;
  static StoreTab.Identifier.playNow.getter();
  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 56);
  v10(v5, 1, 1, v9);
  sub_100015160(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  static StoreTab.Identifier.playTogether.getter();
  v10(v5, 1, 1, v9);
  sub_100015160(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  static StoreTab.Identifier.library.getter();
  v10(v5, 1, 1, v9);
  sub_100015160(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  (*(v6 + 104))(v8, enum case for StoreTab.Identifier.search(_:), v19);
  v10(v5, 1, 1, v9);
  sub_100015160(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  v12 = v22;
  v11 = v23;
  v13 = v25;
  (*(v23 + 16))(v22, v26, v25);
  v14 = v11;
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v14 + 32))(v16 + v15, v12, v13);
  return TabsInfoProvider.init(tabsBagKey:defaultTabIdentifiers:fallbackTabs:overrideTabs:tabsToFlowActionsConverter:)();
}

uint64_t sub_100008154(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_10000821C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = type metadata accessor for BootstrapResult();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v4[6] = *(v6 + 64);
  v4[7] = swift_task_alloc();
  v7 = *(type metadata accessor for AppBootstrapView(0) - 8);
  v4[8] = v7;
  v4[9] = *(v7 + 64);
  v4[10] = swift_task_alloc();
  sub_1000021C8(&qword_100031130, &qword_100023658);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000083B0, v9, v8);
}

uint64_t sub_1000083B0()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v15 = v0[9];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  sub_10001237C(v8, v2, type metadata accessor for AppBootstrapView);
  (*(v5 + 16))(v3, v7, v6);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = (v15 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_1000123E8(v2, v12 + v10, type metadata accessor for AppBootstrapView);
  (*(v5 + 32))(v12 + v11, v3, v6);
  sub_100004034(0, 0, v1, &unk_100023C20, v12);

  sub_1000169B0(v1, &qword_100031130, &qword_100023658);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100008598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  v6 = swift_task_alloc();
  *(v5 + 32) = v6;
  *v6 = v5;
  v6[1] = sub_10000862C;

  return sub_100008D38();
}

uint64_t sub_10000862C()
{

  return _swift_task_switch(sub_100008728, 0, 0);
}

uint64_t sub_100008728(uint64_t a1)
{
  *(v1 + 40) = BootstrapResult.objectGraph.getter();
  v2 = type metadata accessor for ArcadeSubscriptionManager();
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v1;
  v3[1] = sub_1000087E4;

  return BaseObjectGraph.inject<A>(_:)(v1 + 16, v2, v2);
}

uint64_t sub_1000087E4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100008994;
  }

  else
  {

    v2 = sub_100008900;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100008900()
{
  v1 = *(v0 + 16);
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  v2 = v1;
  dispatch thunk of MetricsActivity.arcadeSubscriptionManager.setter();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100008994()
{

  *(v0 + 64) = type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100008A34, v2, v1);
}

uint64_t sub_100008A34()
{

  if (qword_100030958 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 80) = sub_100002B24(v1, qword_100030B78);

  return _swift_task_switch(sub_100008AE4, 0, 0);
}

uint64_t sub_100008AE4()
{
  *(v0 + 88) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100008B70, v2, v1);
}

uint64_t sub_100008B70()
{

  return _swift_task_switch(sub_100008BD8, 0, 0);
}

uint64_t sub_100008BD8()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to set arcadeSubscriptionManager: %@", v3, 0xCu);
    sub_1000169B0(v4, &qword_1000311A0, &qword_100023C30);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100008D38()
{
  v1 = type metadata accessor for UTType();
  v0[24] = v1;
  v0[25] = *(v1 - 8);
  v0[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[27] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[28] = v3;
  v0[29] = v2;

  return _swift_task_switch(sub_100008E28, v3, v2);
}

uint64_t sub_100008E28()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  static UTType.text.getter();
  v4 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v46 = [v4 initWithContentType:isa];
  *(v0 + 240) = v46;

  (*(v2 + 8))(v1, v3);
  v6._countAndFlagsBits = 0xD000000000000015;
  v6._object = 0x8000000100026780;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = localizedString(_:comment:)(v6, v7);
  v9._countAndFlagsBits = 0xD000000000000022;
  v9._object = 0x80000001000267A0;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = localizedString(_:comment:)(v9, v10);
  v12._countAndFlagsBits = 0xD000000000000018;
  v12._object = 0x80000001000267D0;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = localizedString(_:comment:)(v12, v13);
  if (v8._countAndFlagsBits == 0xD000000000000015 && 0x8000000100026780 == v8._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11._countAndFlagsBits == 0xD000000000000022 && 0x80000001000267A0 == v11._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v14._countAndFlagsBits == 0xD000000000000018 && 0x80000001000267D0 == v14._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (qword_100030970 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100002B24(v15, qword_100030BB0);
    v16 = static os_log_type_t.error.getter();
    v17 = Logger.logObject.getter();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, v16, "Skipping Spotlight Index. Reason: Title, Description and Keywords must be localised.", v18, 2u);
    }

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = String._bridgeToObjectiveC()();

    [v46 setTitle:v21];

    v22 = String._bridgeToObjectiveC()();

    [v46 setContentDescription:v22];

    *(v0 + 168) = v14;
    sub_100014FF4(v23, v24, v25);
    v26 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

    v27 = *(v26 + 16);
    if (v27)
    {
      sub_1000141F8(0, v27, 0);
      v28 = v26 + 56;
      do
      {

        v29 = static String._fromSubstring(_:)();
        v31 = v30;

        v33 = _swiftEmptyArrayStorage[2];
        v32 = _swiftEmptyArrayStorage[3];
        if (v33 >= v32 >> 1)
        {
          sub_1000141F8((v32 > 1), v33 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v33 + 1;
        v34 = &_swiftEmptyArrayStorage[2 * v33];
        v34[4] = v29;
        v34[5] = v31;
        v28 += 32;
        --v27;
      }

      while (v27);
    }

    v35 = Array._bridgeToObjectiveC()().super.isa;

    [v46 setKeywords:v35];

    v36 = objc_allocWithZone(CSSearchableItem);
    v37 = v46;
    v38 = String._bridgeToObjectiveC()();
    v39 = String._bridgeToObjectiveC()();
    v40 = [v36 initWithUniqueIdentifier:v38 domainIdentifier:v39 attributeSet:v37];
    *(v0 + 248) = v40;

    v41 = [objc_opt_self() defaultSearchableIndex];
    *(v0 + 256) = v41;
    sub_1000021C8(&qword_100031138, &qword_100023B78);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1000236A0;
    *(v42 + 32) = v40;
    sub_100015048(0, &qword_1000311B0, CSSearchableItem_ptr);
    v43 = v40;
    v44 = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 264) = v44;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1000094D4;
    v45 = swift_continuation_init();
    *(v0 + 136) = sub_1000021C8(&qword_1000311B8, &qword_100023C38);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000FB44;
    *(v0 + 104) = &unk_10002DF90;
    *(v0 + 112) = v45;
    [v41 indexSearchableItems:v44 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1000094D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_100009744;
  }

  else
  {
    v5 = sub_100009604;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100009604()
{
  v1 = v0[32];
  v2 = v0[33];

  if (qword_100030970 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100002B24(v3, qword_100030BB0);
  v4 = static os_log_type_t.info.getter();
  v5 = Logger.logObject.getter();
  v6 = os_log_type_enabled(v5, v4);
  v8 = v0[30];
  v7 = v0[31];
  if (v6)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, v4, "Index completed.", v9, 2u);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100009744()
{
  v17 = v0;
  v1 = v0[33];
  v2 = v0[32];

  swift_willThrow();

  if (qword_100030970 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100002B24(v3, qword_100030BB0);
  v4 = static os_log_type_t.error.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();

  v6 = os_log_type_enabled(v5, v4);
  v8 = v0[30];
  v7 = v0[31];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_100013C50(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v4, "%s", v9, 0xCu);
    sub_100002BA4(v10);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100009944()
{
  v0 = type metadata accessor for MediaArtwork.BundleImageProtocol.Configuration();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  MediaArtwork.BundleImageProtocol.Configuration.init()();
  sub_1000021C8(&qword_100031138, &qword_100023B78);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000236B0;
  *(v5 + 32) = [objc_opt_self() mainBundle];
  sub_100015048(0, &qword_100031140, NSBundle_ptr);
  *(v5 + 40) = static NSBundle.currentStoreKit.getter();
  v7[1] = v5;
  sub_1000021C8(&qword_100031148, &qword_100023B80);
  sub_100016DD4(&qword_100031150, &qword_100031148, &qword_100023B80, &protocol conformance descriptor for [A]);
  MediaArtwork.BundleImageProtocol.Configuration.withAllowedBundles<A>(_:)();

  (*(v1 + 8))(v4, v0);
  return MediaArtwork.BundleImageProtocol.init(_:)();
}

uint64_t sub_100009B34()
{
  sub_1000021C8(&qword_100031130, &qword_100023658);
  *(v0 + 16) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100009C00, v2, v1);
}

uint64_t sub_100009C00()
{
  v1 = *(v0 + 16);

  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_100004034(0, 0, v1, &unk_100023B58, v3);

  sub_1000169B0(v1, &qword_100031130, &qword_100023658);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100009D04()
{
  type metadata accessor for GameCenter();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000297C;

  return static GameCenter.notifyWillLaunchGameCenterUI()();
}

uint64_t sub_100009DA0()
{
  result = AppStorage.init<A>(wrappedValue:_:store:)();
  qword_100030B90 = result;
  return result;
}

uint64_t sub_100009E08@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v2);
  v7 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = type metadata accessor for TabsInfoProvider();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BootstrapResult();
  __chkstk_darwin(v14);
  (*(v16 + 16))(&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + *(v3 + 28));
  (*(v11 + 16))(v13, v1 + *(v3 + 36), v10);
  sub_10001237C(v1, v9, type metadata accessor for AppBootstrapView.TabBasedRootView);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_1000123E8(v9, v18 + v17, type metadata accessor for AppBootstrapView.TabBasedRootView);
  sub_10001237C(v1, v7, type metadata accessor for AppBootstrapView.TabBasedRootView);
  v19 = swift_allocObject();
  sub_1000123E8(v7, v19 + v17, type metadata accessor for AppBootstrapView.TabBasedRootView);
  sub_1000021C8(&qword_100031238, &qword_100023C90);
  sub_100016DD4(&qword_100031240, &qword_100031238, &qword_100023C90, &protocol conformance descriptor for TupleView<A>);
  v20 = v28;
  AppView.init(bootstrapResult:tabsInfoProvider:customDependencies:content:)();
  v21 = (v20 + *(sub_1000021C8(&qword_100031248, &qword_100023C98) + 36));
  *v21 = sub_10000CB30;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = 0;
  v22 = static Alignment.center.getter();
  v24 = v23;
  result = sub_1000021C8(&qword_100031250, &qword_100023CA0);
  v26 = (v20 + *(result + 36));
  *v26 = v22;
  v26[1] = v24;
  return result;
}

uint64_t sub_10000A194(uint64_t a1)
{
  v2 = type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = type metadata accessor for Dependency();
  v14 = *(v6 - 8);
  v15 = v6;
  __chkstk_darwin(v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  BootstrapResult.metricsPipelineTransformer.getter();
  v13[0] = MetricsPipelineTransformer.copy()();

  sub_10001F690(a1 + *(v3 + 32));

  v13[1] = static GameObjectGraphBuilder.frameworkObjects(metricsPipelineTransformer:)();
  sub_1000021C8(&qword_100030FC0, &qword_100023A40);
  sub_10001237C(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppBootstrapView.TabBasedRootView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_1000123E8(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for AppBootstrapView.TabBasedRootView);
  Dependency.init<A>(satisfying:with:)();
  static GameObjectGraphBuilder.playerDependentMetricsPipelineDependencies(player:bootstrapResult:metricsPipelineTransformer:)();

  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v11 = dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  (*(v14 + 8))(v8, v15);
  return v11;
}

uint64_t sub_10000A470@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v30 = a1;
  v40 = a2;
  v2 = sub_1000021C8(&qword_100031288, &qword_100023D18);
  v3 = __chkstk_darwin(v2 - 8);
  v39 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v38 = &v30 - v5;
  v6 = sub_1000021C8(&qword_100030EE0, &qword_100023920);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v34 = sub_1000021C8(&qword_100030FC0, &qword_100023A40);
  v37 = *(v34 - 8);
  v9 = __chkstk_darwin(v34);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v32 = &v30 - v11;
  v12 = sub_1000021C8(&qword_100030C80, &qword_100023730);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  v33 = type metadata accessor for BaseObjectGraph();
  v35 = static BaseObjectGraph.current.getter();
  type metadata accessor for FlowAuthorityProvider();
  BaseObjectGraph.inject<A>(_:)();
  sub_1000126A0(&qword_100031278, &type metadata accessor for FlowAuthorityProvider, &protocol conformance descriptor for FlowAuthorityProvider);
  Bindable<A>.init(wrappedValue:)();
  v31 = v18;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v19 = *(v13 + 8);
  v41 = v13 + 8;
  v42 = v19;
  v19(v16, v12);
  type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  type metadata accessor for FlowAction();
  sub_1000126A0(&qword_100030F38, &type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
  sub_1000126A0(&qword_100030F40, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  v21 = v32;
  static ActionDispatcherFactory.mainActionDispatcher<A>(following:windowScene:)();

  sub_1000169B0(v8, &qword_100030EE0, &qword_100023920);
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v42(v16, v12);
  v22 = swift_unknownObjectWeakLoadStrong();
  v23 = v36;
  static GameObjectGraphBuilder.actionDispatcher<A>(following:window:)();

  sub_1000169B0(v8, &qword_100030EE0, &qword_100023920);
  v24 = v37;
  v25 = v38;
  v26 = *(v37 + 16);
  v27 = v34;
  v26(v38, v21, v34);
  (*(v24 + 56))(v25, 0, 1, v27);
  v26(v40, v23, v27);
  sub_100016928(v25, v39, &qword_100031288, &qword_100023D18);
  ActionDispatcher.next.setter();

  sub_1000169B0(v25, &qword_100031288, &qword_100023D18);
  v28 = *(v24 + 8);
  v28(v23, v27);
  v28(v21, v27);
  return (v42)(v31, v12);
}

uint64_t sub_10000AA0C(uint64_t a1)
{
  v2 = sub_1000021C8(&unk_100030FF0, &unk_100023A60);
  __chkstk_darwin(v2 - 8);
  sub_100016928(a1, &v5 - v3, &unk_100030FF0, &unk_100023A60);
  return FlowAuthorityProvider.flowAuthority.setter();
}

uint64_t sub_10000AAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v85 = a2;
  v4 = BootstrapResult.objectGraph.getter();
  sub_1000021C8(&qword_1000311F8, &qword_100023C78);
  v86 = v4;
  BaseObjectGraph.inject<A>(_:)();
  v81 = sub_1000021C8(&qword_100031258, &qword_100023CA8);
  v5 = __chkstk_darwin(v81);
  v82 = v6;
  v83 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v80 = &v68 - v7;
  v78 = sub_1000021C8(&qword_100031260, &qword_100023CB0);
  __chkstk_darwin(v78);
  v79 = &v68 - v8;
  v9 = sub_1000021C8(&qword_100031268, &qword_100023CB8);
  v76 = *(v9 - 8);
  v77 = v9;
  __chkstk_darwin(v9);
  v75 = &v68 - v10;
  v11 = sub_1000021C8(&qword_100031270, &qword_100023CC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v68 - v12;
  v14 = type metadata accessor for BootstrapResult();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  type metadata accessor for FlowAuthorityProvider();
  BaseObjectGraph.inject<A>(_:)();
  v73 = type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  type metadata accessor for AppBootstrapView.AppContentView(0);
  sub_1000126A0(&qword_100031278, &type metadata accessor for FlowAuthorityProvider, &protocol conformance descriptor for FlowAuthorityProvider);
  Bindable<A>.init(wrappedValue:)();
  swift_unknownObjectWeakInit();

  v16 = sub_1000021C8(&unk_100030D08, &qword_100023768);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  type metadata accessor for FlowAction();
  sub_1000126A0(&qword_100030F38, &type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
  sub_1000126A0(&qword_100030F40, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  v20 = FlowFullScreenCoverAuthority.init()();
  __chkstk_darwin(v20);
  (*(v17 + 16))(&v68 - v19, &v68 - v19, v16);
  v74 = v13;
  State.init(wrappedValue:)();
  v21 = (*(v17 + 8))(&v68 - v19, v16);
  v22 = *(v73 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_10001237C(v85, &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppBootstrapView.TabBasedRootView);
  type metadata accessor for MainActor();
  v24 = v86;

  v25 = static MainActor.shared.getter();
  v26 = *(v22 + 80);
  v27 = (v26 + 32) & ~v26;
  v73 = v23;
  v71 = v23 + 7;
  v72 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  *(v28 + 24) = &protocol witness table for MainActor;
  sub_1000123E8(&v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for AppBootstrapView.TabBasedRootView);
  *(v28 + ((v23 + 7 + v27) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v29 = type metadata accessor for TaskPriority();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  static TaskPriority.userInitiated.getter();
  if (sub_100020D14(2, 26, 4, 0))
  {
    v69 = type metadata accessor for _TaskModifier2();
    v70 = &v68;
    v68 = *(v69 - 8);
    __chkstk_darwin(v69);
    v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v88 = 0;
    v89 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v88 = 0xD000000000000029;
    v89 = 0x80000001000266A0;
    v87 = 312;
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    __chkstk_darwin(v36);
    (*(v30 + 16))(&v68 - v32, &v68 - v32, v29);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v30 + 8))(&v68 - v32, v29);
    v37 = v75;
    sub_100015CA4(v74, v75, &qword_100031270, &qword_100023CC0);
    v38 = sub_1000021C8(&qword_1000309D0, &qword_100023628);
    (*(v68 + 32))(v37 + *(v38 + 36), v34, v69);
  }

  else
  {
    v39 = sub_1000021C8(&qword_1000309D8, &qword_100023CE0);
    v37 = v75;
    v40 = (v75 + *(v39 + 36));
    v41 = type metadata accessor for _TaskModifier();
    (*(v30 + 32))(&v40[*(v41 + 20)], &v68 - v32, v29);
    *v40 = &unk_100023CD0;
    *(v40 + 1) = v28;
    sub_100015CA4(v74, v37, &qword_100031270, &qword_100023CC0);
  }

  v42 = v72;
  sub_10001511C(v90, v90[3]);
  v43 = type metadata accessor for BoolSettingKey();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v68 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v44 + 104))(v46, enum case for BoolSettingKey.useArcadeOrangeAsAppKeyColor(_:), v43);
  v47 = dispatch thunk of DebugSettingsProvider.isEnabled(debugSetting:)();
  (*(v44 + 8))(v46, v43);
  if (v47)
  {
    v48 = static MoltresTint.selectiveAccent.getter();
  }

  else
  {
    v48 = static MoltresTint.standard.getter();
  }

  v49 = v48;
  KeyPath = swift_getKeyPath();
  v88 = v49;
  v51 = AnyShapeStyle.init<A>(_:)();
  v52 = v79;
  v53 = (*(v76 + 32))(v79, v37, v77);
  v54 = (v52 + *(v78 + 36));
  *v54 = KeyPath;
  v54[1] = v51;
  __chkstk_darwin(v53);
  v56 = &v68 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001237C(v85, v56, type metadata accessor for AppBootstrapView.TabBasedRootView);
  v57 = (v42 + 16) & ~v42;
  v58 = (v71 + v57) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  sub_1000123E8(v56, v59 + v57, type metadata accessor for AppBootstrapView.TabBasedRootView);
  *(v59 + v58) = v86;
  v60 = v80;
  sub_100015CA4(v52, v80, &qword_100031260, &qword_100023CB0);
  v61 = (v60 + *(v81 + 36));
  *v61 = sub_100015C18;
  v61[1] = v59;
  v61[2] = 0;
  v61[3] = 0;
  v62 = v60;
  v63 = v83;
  v64 = sub_100015CA4(v62, v83, &qword_100031258, &qword_100023CA8);
  __chkstk_darwin(v64);
  v66 = &v68 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015D0C(v63, v66);
  sub_100015D0C(v66, v84);
  sub_1000169B0(v63, &qword_100031258, &qword_100023CA8);
  sub_1000169B0(v66, &qword_100031258, &qword_100023CA8);
  return sub_100002BA4(v90);
}

uint64_t sub_10000B64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000B6E4, v6, v5);
}

uint64_t sub_10000B6E4()
{

  type metadata accessor for AppBootstrapView.TabBasedRootView(0);

  JSNativeIntentDispatcher.objectGraph.setter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000B764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000021C8(&qword_100031130, &qword_100023658);
  __chkstk_darwin(v8 - 8);
  v10 = v23 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v16 = v15;
  (*(v12 + 8))(v14, v11);
  if (qword_100030960 != -1)
  {
    swift_once();
  }

  AppStorage.wrappedValue.getter();

  if (v16 - v23[1] >= 86400.0)
  {
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    sub_10001237C(a1, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppBootstrapView.TabBasedRootView);
    type metadata accessor for MainActor();

    v19 = static MainActor.shared.getter();
    v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = &protocol witness table for MainActor;
    sub_1000123E8(v7, v22 + v20, type metadata accessor for AppBootstrapView.TabBasedRootView);
    *(v22 + v21) = a2;
    *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
    sub_10000C830(0, 0, v10, &unk_100023CF0, v22);
  }

  return result;
}

uint64_t sub_10000BA90(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a1;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  v7 = type metadata accessor for PrivateIdentifiersProvider();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 80) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 88) = v9;
  *(v6 + 96) = v8;

  return _swift_task_switch(sub_10000BB88, v9, v8);
}

uint64_t sub_10000BB88()
{
  type metadata accessor for AppBootstrapView.TabBasedRootView(0);
  v0[13] = Player.playerID.getter();
  v0[14] = v1;
  if (qword_100030968 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[15] = sub_100002B24(v2, qword_100030B98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TabBasedRootView: Posting map event.", v5, 2u);
  }

  v6 = sub_1000021C8(&qword_100031280, &qword_100023D10);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_10000BD20;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v6, v6);
}

uint64_t sub_10000BD20()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10000C3B8;
  }

  else
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10000BE3C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10000BE3C()
{
  v1 = v0[2];
  v0[18] = v1;
  swift_unknownObjectRetain();
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_10000BEEC;
  v3 = v0[9];

  return PrivateIdentifiersProvider.init(bag:)(v3, v1);
}

uint64_t sub_10000BEEC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10000C524;
  }

  else
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10000C008;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10000C008()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xEF73656D61672E65;
    v3 = 0x6C7070612E6D6F63;
  }

  v0[21] = v5;
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_10000C140;
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[9];

  return static GamesMapEventHelper.postGamesMapEvent(provider:canonicalID:actionType:hostAppBundleId:)(v9, v7, v8, 1802398060, 0xE400000000000000, v3, v5);
}

uint64_t sub_10000C140()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_10000C69C;
  }

  else
  {
    v5 = sub_10000C2AC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10000C2AC()
{

  if (qword_100030960 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v0[3] = v0[6];

  AppStorage.wrappedValue.setter();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000C3B8()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "TabBasedRootView: Error posting map event: %@", v3, 0xCu);
    sub_1000169B0(v4, &qword_1000311A0, &qword_100023C30);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000C524()
{

  swift_unknownObjectRelease();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "TabBasedRootView: Error posting map event: %@", v3, 0xCu);
    sub_1000169B0(v4, &qword_1000311A0, &qword_100023C30);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000C69C()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "TabBasedRootView: Error posting map event: %@", v6, 0xCu);
    sub_1000169B0(v7, &qword_1000311A0, &qword_100023C30);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10000C830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000021C8(&qword_100031130, &qword_100023658);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100016928(a3, v25 - v10, &qword_100031130, &qword_100023658);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000169B0(v11, &qword_100031130, &qword_100023658);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000169B0(a3, &qword_100031130, &qword_100023658);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000169B0(a3, &qword_100031130, &qword_100023658);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_10000CB30()
{
  v0 = objc_opt_self();
  [v0 setFlushTimerEnabled:1];

  return [v0 setDisableBackgroundMetrics:0];
}

uint64_t sub_10000CBD0@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v2 = type metadata accessor for TabBarOnlyTabViewStyle();
  v3 = *(v2 - 8);
  v97 = v2;
  v98 = v3;
  __chkstk_darwin(v2);
  v96 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MetricsPipeline();
  v6 = *(v5 - 8);
  v94 = v5;
  v95 = v6;
  __chkstk_darwin(v5);
  v92 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppBootstrapView.AppContentView(0);
  v9 = v8 - 8;
  v65 = *(v8 - 8);
  v10 = *(v65 + 64);
  __chkstk_darwin(v8);
  v11 = sub_1000021C8(&qword_100030EE0, &qword_100023920);
  __chkstk_darwin(v11 - 8);
  v64 = &v64 - v12;
  v13 = sub_1000021C8(&qword_100030C80, &qword_100023730);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v64 - v15;
  v71 = sub_1000021C8(&qword_100030EE8, &qword_100023928);
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v66 = &v64 - v17;
  v74 = sub_1000021C8(&qword_100030EF0, &qword_100023930);
  __chkstk_darwin(v74);
  v67 = &v64 - v18;
  v77 = sub_1000021C8(&qword_100030EF8, &qword_100023938);
  v79 = *(v77 - 8);
  __chkstk_darwin(v77);
  v69 = &v64 - v19;
  v80 = sub_1000021C8(&qword_100030F00, &qword_100023940);
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v73 = &v64 - v20;
  v82 = sub_1000021C8(&qword_100030F08, &qword_100023948);
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v75 = &v64 - v21;
  v87 = sub_1000021C8(&qword_100030F10, &qword_100023950);
  v88 = *(v87 - 8);
  __chkstk_darwin(v87);
  v76 = &v64 - v22;
  v90 = sub_1000021C8(&qword_100030F18, &qword_100023958);
  v93 = *(v90 - 8);
  __chkstk_darwin(v90);
  v78 = &v64 - v23;
  v91 = sub_1000021C8(&qword_100030F20, &qword_100023960);
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v84 = &v64 - v24;
  v86 = sub_1000021C8(&qword_100030F28, &qword_100023968);
  __chkstk_darwin(v86);
  v85 = &v64 - v25;
  v70 = *(v9 + 28);
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  v68 = v13;
  Bindable<A>.subscript.getter();

  (*(v14 + 8))(v16, v13);
  sub_10001237C(v1, &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppBootstrapView.AppContentView);
  v26 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v27 = swift_allocObject();
  sub_1000123E8(&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for AppBootstrapView.AppContentView);
  sub_10001237C(v1, &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppBootstrapView.AppContentView);
  v28 = swift_allocObject();
  sub_1000123E8(&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v26, type metadata accessor for AppBootstrapView.AppContentView);
  type metadata accessor for FlowAction();
  sub_1000021C8(&qword_100030F30, &qword_1000239A8);
  sub_1000126A0(&qword_100030F38, &type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
  v29 = sub_1000126A0(&qword_100030F40, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  sub_1000126E8(v29, v30, v31);
  v32 = type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView(255);
  v33 = sub_1000126A0(&qword_100030F50, type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView, &unk_100023DA0);
  v102 = v32;
  v103 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v66;
  FlowView.init(following:tabLabels:destinations:)();
  v101 = v1;
  sub_1000021C8(&qword_100030F58, &qword_1000239B0);
  sub_100016DD4(&qword_100030F60, &qword_100030F58, &qword_1000239B0, &protocol conformance descriptor for FlowFullScreenCoverViewModifier<A>);
  v35 = v67;
  v36 = v71;
  FlowView.customPresentation<A>(_:)();
  (*(v72 + 8))(v34, v36);
  v37 = type metadata accessor for GSKDeepLinkWithReferrerIntent();
  v38 = sub_10001279C();
  v39 = sub_1000126A0(&qword_100030F78, &type metadata accessor for GSKDeepLinkWithReferrerIntent, &protocol conformance descriptor for GSKDeepLinkWithReferrerIntent);
  v40 = v69;
  v41 = v74;
  View.onDeepLink<A>(prepare:recover:)();
  sub_1000169B0(v35, &qword_100030EF0, &qword_100023930);
  BootstrapResult.objectGraph.getter();
  v42 = v92;
  v43 = v94;
  BaseObjectGraph.inject<A>(_:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  v102 = v41;
  v103 = v37;
  v104 = v38;
  v105 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v73;
  v47 = v77;
  View.appMetrics(pipeline:scene:)();

  (*(v95 + 8))(v42, v43);
  (*(v79 + 8))(v40, v47);
  BootstrapResult.objectGraph.getter();
  v102 = v47;
  v103 = OpaqueTypeConformance2;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v75;
  v50 = v80;
  View.withInternalSettingsGesture(using:)();

  (*(v81 + 8))(v46, v50);
  BootstrapResult.objectGraph.getter();
  v102 = v50;
  v103 = v48;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v76;
  v53 = v82;
  View.withDebugMetricsOverlay(using:)();

  (*(v83 + 8))(v49, v53);
  BootstrapResult.objectGraph.getter();
  Bindable.wrappedValue.getter();
  v102 = v53;
  v103 = v51;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v78;
  v56 = v87;
  View.gameControllerTabNavigation(objectGraph:flowAuthorityProvider:)();

  (*(v88 + 8))(v52, v56);
  BootstrapResult.objectGraph.getter();
  v100 = v1;
  type metadata accessor for BaseObjectGraph();
  v102 = v56;
  v103 = v54;
  swift_getOpaqueTypeConformance2();
  v57 = v84;
  v58 = v90;
  View.actionDispatcher<A>(with:implementations:)();

  (*(v93 + 8))(v55, v58);
  v59 = v85;
  sub_10000EAFC(&v85[*(v86 + 36)]);
  v60 = v59;
  (*(v89 + 32))(v59, v57, v91);
  v61 = v96;
  TabBarOnlyTabViewStyle.init()();
  sub_100012888();
  v62 = v97;
  View.tabViewStyle<A>(_:)();
  (*(v98 + 8))(v61, v62);
  return sub_1000169B0(v60, &qword_100030F28, &qword_100023968);
}

uint64_t sub_10000DAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100012DA8(a1, a2);
  type metadata accessor for AppBootstrapView.AppContentView(0);
  sub_1000021C8(&qword_100030C80, &qword_100023730);
  Bindable.wrappedValue.getter();
  v3 = FlowAuthorityProvider.tabs.getter();

  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_10000DB28(uint64_t a1)
{
  v2 = type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowAction.Destination();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  *&v4[*(v2 + 20)] = BootstrapResult.objectGraph.getter();
  sub_1000126A0(&qword_100030F50, type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView, &unk_100023DA0);
  View.providePageContextMetrics()();
  return sub_100012D4C(v4);
}

uint64_t sub_10000DC48(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000021C8(&qword_100030FB0, &qword_100023A30);
  __chkstk_darwin(v2 - 8);
  type metadata accessor for AppBootstrapView.AppContentView(0);
  sub_1000021C8(&qword_100030C88, &qword_100023738);
  State.projectedValue.getter();

  sub_1000021C8(&qword_100030F30, &qword_1000239A8);
  type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView(255);
  sub_1000126A0(&qword_100030F50, type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView, &unk_100023DA0);
  swift_getOpaqueTypeConformance2();
  return FlowFullScreenCoverViewModifier.init(following:destinations:)();
}

uint64_t sub_10000DDA4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for DeepLink();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for ReferrerData();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_1000021C8(&qword_100030FE0, &unk_100023A50);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for AppStoreDeepLink();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  sub_1000021C8(&qword_100030FE8, &qword_1000241D0);
  v2[18] = swift_task_alloc();
  v7 = type metadata accessor for ReferrerData.Kind();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10000E05C, 0, 0);
}

uint64_t sub_10000E05C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  DeepLink.referrerKind.getter();
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[18];
  if (v5 == 1)
  {
    v10 = enum case for ReferrerData.Kind.unspecified(_:);
    v11 = *(v8 + 104);
    v11(v6, enum case for ReferrerData.Kind.unspecified(_:), v0[19]);
    if (v4(v9, 1, v7) != 1)
    {
      sub_1000169B0(v0[18], &qword_100030FE8, &qword_1000241D0);
    }
  }

  else
  {
    (*(v8 + 32))(v6, v0[18], v0[19]);
    v10 = enum case for ReferrerData.Kind.unspecified(_:);
    v11 = *(v8 + 104);
  }

  v12 = v0[21];
  v13 = v0[19];
  v14 = v0[20];
  v11(v12, v10, v13);
  v15 = static ReferrerData.Kind.== infix(_:_:)();
  v16 = *(v14 + 8);
  v16(v12, v13);
  if (v15)
  {
    v17 = DeepLink.sourceProcess.getter();
    if (v18)
    {
      if (v17 == 0xD000000000000012 && v18 == 0x8000000100026760)
      {
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v20 = v0[22];
      v21 = v0[19];
      v16(v20, v21);
      v11(v20, enum case for ReferrerData.Kind.appStore(_:), v21);
    }
  }

LABEL_12:
  v22 = v0[13];
  v23 = v0[11];
  v24 = v0[12];
  v25 = v0[10];
  DeepLink.url.getter();
  DeepLink.url.getter();
  DeepLink.sourceApplication.getter();
  static AppStoreDeepLink.sourceApplicationFromRefBundleID(url:refBundleID:)();

  v26 = *(v24 + 8);
  v26(v22, v23);
  DeepLink.referrerURL.getter();
  v43 = v16;
  if ((*(v24 + 48))(v25, 1, v23) == 1)
  {
    sub_1000169B0(v0[10], &qword_100030FE0, &unk_100023A50);
  }

  else
  {
    v28 = v0[10];
    v27 = v0[11];
    URL.absoluteString.getter();
    v26(v28, v27);
  }

  v29 = v0[22];
  v30 = v0[17];
  v31 = v0[16];
  v41 = v0[19];
  v42 = v0[15];
  v32 = v0[9];
  v33 = v0[8];
  v34 = v0[5];
  v39 = v0[6];
  v40 = v0[4];
  v37 = v0[7];
  v38 = v0[3];
  (*(v0[20] + 16))(v0[21], v29);
  AppStoreDeepLink.init(url:refApp:refUrl:refKind:)();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  AppStoreDeepLink.referral.getter();
  dispatch thunk of MetricsActivity.setReferrerData(_:)();

  (*(v33 + 8))(v32, v37);
  (*(v34 + 16))(v39, v38, v40);
  GSKDeepLinkWithReferrerIntent.init(with:)();
  (*(v31 + 8))(v30, v42);
  v43(v29, v41);

  v35 = v0[1];

  return v35();
}

uint64_t sub_10000E4E0@<X0>(uint64_t *a4@<X8>)
{
  a4[3] = type metadata accessor for Models.AlertAction();
  a4[4] = &protocol witness table for Models.AlertAction;
  sub_1000154BC(a4);
  swift_errorRetain();

  return Models.AlertAction.init(contentUnavailableError:retry:)();
}

uint64_t sub_10000E558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v47 = a2;
  v2 = sub_1000021C8(&qword_100030FA8, &qword_100023A28);
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  __chkstk_darwin(v2);
  v41 = v33 - v4;
  v5 = sub_1000021C8(&qword_100030FB0, &qword_100023A30);
  __chkstk_darwin(v5 - 8);
  v7 = v33 - v6;
  v8 = sub_1000021C8(&qword_100030FB8, &qword_100023A38);
  v9 = *(v8 - 8);
  v39 = v8;
  v40 = v9;
  __chkstk_darwin(v8);
  v11 = v33 - v10;
  v12 = sub_1000021C8(&qword_100030FC0, &qword_100023A40);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v33 - v18;
  __chkstk_darwin(v17);
  v21 = v33 - v20;
  v46 = v33 - v20;
  v37 = *(type metadata accessor for AppBootstrapView.AppContentView(0) + 28);
  v35 = sub_1000021C8(&qword_100030C88, &qword_100023738);
  v33[1] = v7;
  State.projectedValue.getter();
  v44 = type metadata accessor for BaseObjectGraph();
  FullScreenCoverFlowActionImplementation.init(following:)();
  ActionDispatcher.init()();
  v45 = *(v13 + 16);
  v45(v21, v19, v12);
  sub_100016DD4(&qword_100030FC8, &qword_100030FB8, &qword_100023A38, &protocol conformance descriptor for FullScreenCoverFlowActionImplementation<A>);
  v22 = v39;
  ActionDispatcher.add<A>(_:)();
  v23 = *(v13 + 8);
  v13 += 8;
  v23(v19, v12);
  v34 = v23;
  (*(v40 + 8))(v11, v22);
  State.projectedValue.getter();
  v24 = v41;
  FullScreenCoverFlowBackActionImplementation.init(following:)();
  ActionDispatcher.init()();
  v45(v19, v16, v12);
  sub_100016DD4(&qword_100030FD0, &qword_100030FA8, &qword_100023A28, &protocol conformance descriptor for FullScreenCoverFlowBackActionImplementation<A>);
  v25 = v42;
  v38 = v19;
  ActionDispatcher.add<A>(_:)();
  v23(v16, v12);
  (*(v43 + 8))(v24, v25);
  sub_1000021C8(&qword_100030FD8, &qword_100023A48);
  v26 = *(v13 + 64);
  v27 = (*(v13 + 72) + 32) & ~*(v13 + 72);
  v28 = swift_allocObject() + v27;
  v29 = v45;
  v45(v28, v46, v12);
  v29(v28 + v26, v19, v12);
  v30 = v29;
  ActionDispatcher.init()();
  v29(v16, v28, v12);
  ActionDispatcher.add(contentsOf:)();
  v31 = v34;
  v34(v16, v12);
  v30(v16, v28 + v26, v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  ActionDispatcher.add(contentsOf:)();
  v31(v16, v12);
  v31(v38, v12);
  return (v31)(v46, v12);
}

uint64_t sub_10000EAFC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ActionMetrics();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  static ActionMetrics.notInstrumented.getter();
  sub_1000021C8(&qword_100030F90, &qword_1000239C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000236C0;
  static ActionMetrics.notInstrumented.getter();
  *(v7 + 56) = type metadata accessor for ResetRequestReviewPropertiesIfNeededAction();
  *(v7 + 64) = sub_1000126A0(&qword_100030F98, &type metadata accessor for ResetRequestReviewPropertiesIfNeededAction, &protocol conformance descriptor for ResetRequestReviewPropertiesIfNeededAction);
  sub_1000154BC((v7 + 32));
  static ResetRequestReviewPropertiesIfNeededAction.appLaunch(actionMetrics:)();
  (*(v3 + 8))(v6, v2);
  *(v7 + 96) = type metadata accessor for PresentPromptAction();
  *(v7 + 104) = sub_1000126A0(&qword_100030FA0, &type metadata accessor for PresentPromptAction, &protocol conformance descriptor for PresentPromptAction);
  sub_1000154BC((v7 + 72));
  static PresentPromptAction.appLaunch()();
  CompoundAction.init(actionMetrics:subactions:)();
  v8 = type metadata accessor for PerformActionOnAppLaunchModifier(0);
  v9 = a1 + *(v8 + 20);
  *v9 = swift_getKeyPath();
  *(v9 + 40) = 0;
  v10 = *(v8 + 24);
  *(a1 + v10) = swift_getKeyPath();
  sub_1000021C8(&unk_100030EC8, &qword_1000238F0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000ED3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_1000021C8(&qword_1000313B8, &qword_100023E88);
  __chkstk_darwin(v3);
  v5 = &v24 - v4;
  v6 = sub_1000021C8(&qword_1000313C0, &qword_100023E90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_1000021C8(&qword_1000313C8, &qword_100023E98);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_1000021C8(&qword_1000313D0, &qword_100023EA0);
  v14 = *(v13 - 8);
  v25 = v13;
  v26 = v14;
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  sub_10000F0D8(v2, v5);
  type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView(0);
  v17 = sub_100016ADC();
  View.componentContentBuilder(with:)();
  sub_1000169B0(v5, &qword_1000313B8, &qword_100023E88);
  v28 = v3;
  v29 = v17;
  swift_getOpaqueTypeConformance2();
  View.videoPlaybackCoordinator(objectGraph:)();
  (*(v7 + 8))(v9, v6);
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v18 = v28;
  sub_1000126A0(&qword_100031400, &type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
  v19 = static ObservableObject.environmentStore.getter();
  v20 = &v12[*(v10 + 36)];
  *v20 = v19;
  v20[1] = v18;
  v21 = sub_100016C9C();
  View.limitDynamicTypeSizeForSeedBuild()();
  sub_1000169B0(v12, &qword_1000313C8, &qword_100023E98);
  v28 = v10;
  v29 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v25;
  View.gameControllerTabOcclusionReporting()();
  return (*(v26 + 8))(v16, v22);
}

uint64_t sub_10000F0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v71 = sub_1000021C8(&qword_100031420, &qword_100023EC8);
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = v50 - v3;
  v72 = sub_1000021C8(&qword_100031428, &qword_100023ED0);
  __chkstk_darwin(v72);
  v74 = v50 - v4;
  v5 = type metadata accessor for BackgroundThemeStyle();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v62 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  done = type metadata accessor for FlowSheetDoneButtonLabelStyle();
  v58 = *(done - 8);
  v59 = done;
  __chkstk_darwin(done);
  v56 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000021C8(&qword_1000313F8, &qword_100023EB8);
  v54 = *(v9 - 8);
  __chkstk_darwin(v9);
  v53 = v50 - v10;
  v11 = sub_1000021C8(&qword_1000313F0, &qword_100023EB0);
  v57 = *(v11 - 8);
  __chkstk_darwin(v11);
  v55 = v50 - v12;
  v13 = sub_1000021C8(&qword_100031430, &qword_100023ED8);
  v61 = *(v13 - 8);
  __chkstk_darwin(v13);
  v60 = v50 - v14;
  v15 = type metadata accessor for FlowDestination();
  v66 = *(v15 - 8);
  v67 = v15;
  v16 = __chkstk_darwin(v15);
  v65 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = type metadata accessor for FlowAction.Destination();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v70 = (v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v23 = v50 - v22;
  v24 = *(v19 + 16);
  v24(v50 - v22, a1, v18);
  v25 = *(v19 + 88);
  v75 = v23;
  v26 = v23;
  v27 = a1;
  v28 = v18;
  v29 = v74;
  if (v25(v26, v28) != enum case for FlowAction.Destination.games(_:))
  {
    goto LABEL_5;
  }

  v50[1] = v27;
  v51 = v11;
  v52 = v13;
  v30 = v70;
  v24(v70, v75, v28);
  (*(v19 + 96))(v30, v28);
  if (!swift_dynamicCast())
  {
    sub_100002BA4(v70);
    v29 = v74;
    v11 = v51;
LABEL_5:
    type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView(0);
    v44 = v68;
    static DestinationViewFactory.makeView(for:objectGraph:)();
    v45 = v69;
    v46 = v71;
    (*(v69 + 16))(v29, v44, v71);
    swift_storeEnumTagMultiPayload();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v76 = v9;
    v77 = OpaqueTypeConformance2;
    v48 = swift_getOpaqueTypeConformance2();
    v76 = v11;
    v77 = v48;
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v45 + 8))(v44, v46);
    return (*(v19 + 8))(v75, v28);
  }

  (*(v66 + 32))();
  type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView(0);
  v31 = v53;
  FlowDestination.callAsFunction(asPartOf:)();
  v33 = v58;
  v32 = v59;
  v34 = v56;
  (*(v58 + 104))(v56, enum case for FlowSheetDoneButtonLabelStyle.iconOnly(_:), v59);
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v55;
  View.flowSheetDoneButtonLabelStyle(_:)();
  (*(v33 + 8))(v34, v32);
  (*(v54 + 8))(v31, v9);
  v38 = v62;
  v37 = v63;
  v39 = v64;
  (*(v63 + 104))(v62, enum case for BackgroundThemeStyle.system(_:), v64);
  v76 = v9;
  v77 = v35;
  v69 = swift_getOpaqueTypeConformance2();
  v40 = v60;
  v41 = v51;
  View.backgroundTheme(_:)();
  (*(v37 + 8))(v38, v39);
  (*(v57 + 8))(v36, v41);
  v42 = v61;
  v43 = v52;
  (*(v61 + 16))(v74, v40, v52);
  swift_storeEnumTagMultiPayload();
  v76 = v41;
  v77 = v69;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  (*(v42 + 8))(v40, v43);
  (*(v66 + 8))(v65, v67);
  sub_100002BA4(v70);
  return (*(v19 + 8))(v75, v28);
}

uint64_t sub_10000FA94(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100002BF0(v3, a2);
  sub_100002B24(v3, a2);
  String.init<A>(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000FB44(uint64_t a1, void *a2)
{
  v3 = sub_10001511C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000021C8(&qword_1000311C8, &qword_100023C48);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10000FC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PerformActionOnAppLaunchModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  sub_10001237C(v2, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PerformActionOnAppLaunchModifier);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = &protocol witness table for MainActor;
  sub_1000123E8(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PerformActionOnAppLaunchModifier);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  static TaskPriority.userInitiated.getter();
  if (sub_100020D14(2, 26, 4, 0))
  {
    v29 = type metadata accessor for _TaskModifier2();
    v30 = &v26;
    v28 = *(v29 - 8);
    __chkstk_darwin(v29);
    v27 = a2;
    v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v32 = 0xD000000000000029;
    v33 = 0x80000001000266A0;
    v31 = 533;
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = a1;
    String.append(_:)(v17);

    __chkstk_darwin(v18);
    (*(v12 + 16))(&v26 - v14, &v26 - v14, v11);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v12 + 8))(&v26 - v14, v11);
    v19 = sub_1000021C8(&qword_1000309E0, &unk_100023900);
    v20 = v27;
    (*(*(v19 - 8) + 16))(v27, v26, v19);
    v21 = sub_1000021C8(&qword_1000309E8, &qword_100023630);
    return (*(v28 + 32))(v20 + *(v21 + 36), v16, v29);
  }

  else
  {
    v23 = (a2 + *(sub_1000021C8(&qword_1000309F0, &qword_100023910) + 36));
    v24 = type metadata accessor for _TaskModifier();
    (*(v12 + 32))(&v23[*(v24 + 20)], &v26 - v14, v11);
    *v23 = &unk_1000238F8;
    *(v23 + 1) = v10;
    v25 = sub_1000021C8(&qword_1000309E0, &unk_100023900);
    return (*(*(v25 - 8) + 16))(a2, a1, v25);
  }
}

uint64_t sub_1000100A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a3;
  v4 = type metadata accessor for OpaqueMetricsFieldsContext();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[16] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001019C, v6, v5);
}

uint64_t sub_10001019C()
{

  type metadata accessor for PerformActionOnAppLaunchModifier(0);
  sub_100011FE0((v0 + 2));
  if (v0[5])
  {
    v2 = v0[14];
    v1 = v0[15];
    v3 = v0[12];
    v4 = v0[13];
    sub_10001511C(v0 + 2, v0[5]);
    v5 = type metadata accessor for CompoundAction();
    v0[10] = v5;
    v0[11] = &protocol witness table for CompoundAction;
    v6 = sub_1000154BC(v0 + 7);
    (*(*(v5 - 8) + 16))(v6, v3, v5);
    sub_100012154(v1);
    PerformAction.callAsFunction(_:withMetrics:)();
    (*(v2 + 8))(v1, v4);
    sub_100002BA4(v0 + 7);
    sub_100002BA4(v0 + 2);
  }

  else
  {
    sub_1000169B0((v0 + 2), &qword_100030C40, &qword_100023728);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10001034C()
{
  v1 = type metadata accessor for PerformActionOnAppLaunchModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for CompoundAction();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + *(v1 + 20);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      sub_100002BA4(v6);
    }
  }

  else
  {
  }

  v7 = *(v1 + 24);
  sub_1000021C8(&unk_100030EC8, &qword_1000238F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OpaqueMetricsFieldsContext();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000104CC()
{
  v2 = *(type metadata accessor for PerformActionOnAppLaunchModifier(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100016FCC;

  return sub_1000100A8(v4, v5, v0 + v3);
}

uint64_t sub_1000105A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000021C8(&qword_100031368, &qword_100023E58);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v25 - v5;
  v28 = sub_1000021C8(&qword_100031370, &qword_100023E60);
  __chkstk_darwin(v28);
  v29 = v25 - v7;
  v30 = sub_1000021C8(&qword_100031378, &qword_100023E68);
  v27 = *(v30 - 8);
  __chkstk_darwin(v30);
  v26 = v25 - v8;
  v9 = sub_1000021C8(&qword_100031380, &qword_100023E70);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  v12 = type metadata accessor for StoreTab();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 40);
  v31 = v1;
  sub_100004F84(sub_100016990, v16, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000169B0(v11, &qword_100031380, &qword_100023E70);
    v32 = AnyHashable.description.getter();
    v33 = v17;
    sub_100014FF4(v32, v17, v18);
    Label<>.init<A>(_:systemImage:)();
    (*(v4 + 16))(v29, v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_100016DD4(&qword_100031388, &qword_100031378, &qword_100023E68, &protocol conformance descriptor for Label<A, B>);
    sub_100016DD4(&qword_100031390, &qword_100031368, &qword_100023E58, &protocol conformance descriptor for Label<A, B>);
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v20 = (*(v13 + 32))(v15, v11, v12);
    v25[2] = v25;
    v21 = __chkstk_darwin(v20);
    v25[-2] = v15;
    __chkstk_darwin(v21);
    v25[-2] = v15;
    v25[1] = sub_1000021C8(&qword_100031398, &qword_100023E78);
    v25[4] = v3;
    sub_1000021C8(&qword_1000313A0, &qword_100023E80);
    v25[3] = a1;
    sub_100016A20(&qword_1000313A8, &qword_100031398, &qword_100023E78, &protocol witness table for Text);
    sub_100016A20(&qword_1000313B0, &qword_1000313A0, &qword_100023E80, &protocol witness table for Image);
    v22 = v26;
    Label.init(title:icon:)();
    v23 = v27;
    v24 = v30;
    (*(v27 + 16))(v29, v22, v30);
    swift_storeEnumTagMultiPayload();
    sub_100016DD4(&qword_100031388, &qword_100031378, &qword_100023E68, &protocol conformance descriptor for Label<A, B>);
    sub_100016DD4(&qword_100031390, &qword_100031368, &qword_100023E58, &protocol conformance descriptor for Label<A, B>);
    _ConditionalContent<>.init(storage:)();
    (*(v23 + 8))(v22, v24);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_100010B9C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for StoreTab.Identifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  StoreTab.identifier.getter();
  v6 = StoreTab.Identifier.rawValue.getter();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v10[1] = v6;
  v10[2] = v8;
  AnyHashable.init<A>(_:)();
  LOBYTE(v6) = static AnyHashable.== infix(_:_:)();
  sub_100016A88(v11);
  return v6 & 1;
}

uint64_t sub_100010CCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = StoreTab.tabTitleText.getter();
  if (v3)
  {
    sub_100014FF4(v2, v3, v4);
    result = Text.init<A>(_:)();
    v8 = v7 & 1;
  }

  else
  {
    result = 0;
    v8 = 0;
    v6 = 0;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

uint64_t sub_100010D38@<X0>(uint64_t *a1@<X8>)
{
  StoreTab.tabImageName.getter();
  if (v2)
  {
    result = Image.init(_internalSystemName:)();
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

char *sub_100010D78(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for NetworkConnectionMonitor.ConnectionState();
  v71 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v70 = &v65 - v7;
  v90 = type metadata accessor for StoreTab.Identifier();
  v67 = *(v90 - 8);
  v8 = __chkstk_darwin(v90);
  v78 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v77 = &v65 - v11;
  v12 = __chkstk_darwin(v10);
  v87 = &v65 - v13;
  __chkstk_darwin(v12);
  v86 = &v65 - v14;
  v15 = type metadata accessor for StoreTab();
  v72 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v75 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v76 = &v65 - v19;
  v20 = __chkstk_darwin(v18);
  v85 = &v65 - v21;
  __chkstk_darwin(v20);
  v23 = &v65 - v22;
  v24 = type metadata accessor for BoolSettingKey();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000021C8(&qword_1000311F8, &qword_100023C78);
  v68 = a1;
  BaseObjectGraph.inject<A>(_:)();
  sub_10001511C(&v95, v97);
  (*(v25 + 104))(v27, enum case for BoolSettingKey.showArcadeTab(_:), v24);
  LOBYTE(a1) = dispatch thunk of DebugSettingsProvider.isEnabled(debugSetting:)();
  v28 = v27;
  v29 = v15;
  (*(v25 + 8))(v28, v24);
  sub_100002BA4(&v95);
  v89 = v15;
  if (a1)
  {
    v88 = a2;
  }

  else
  {
    v66 = v4;
    v30 = a2[2];
    if (v30)
    {
      v83 = *(v72 + 16);
      v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v31 = a2 + v74;
      v32 = *(v72 + 72);
      v82 = enum case for StoreTab.Identifier.arcade(_:);
      v80 = (v67 + 8);
      v81 = (v67 + 104);
      v79 = (v72 + 32);
      v84 = (v72 + 16);
      v73 = (v72 + 8);
      v88 = _swiftEmptyArrayStorage;
      v33 = v86;
      do
      {
        v91 = v30;
        v83(v23, v31, v29);
        StoreTab.identifier.getter();
        v34 = v23;
        v35 = v87;
        v36 = v29;
        v37 = v90;
        (*v81)(v87, v82, v90);
        sub_1000126A0(&qword_100031200, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v39 = *v80;
        (*v80)(v35, v37);
        v39(v33, v37);
        if (v38)
        {
          (*v73)(v34, v36);
          v23 = v34;
          v29 = v36;
        }

        else
        {
          v40 = *v79;
          (*v79)(v85, v34, v36);
          v41 = v88;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v95 = v41;
          v23 = v34;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100014218(0, v41[2] + 1, 1);
            v41 = v95;
          }

          v44 = v41[2];
          v43 = v41[3];
          if (v44 >= v43 >> 1)
          {
            sub_100014218((v43 > 1), v44 + 1, 1);
            v41 = v95;
          }

          v41[2] = v44 + 1;
          v88 = v41;
          v29 = v89;
          v40(v41 + v74 + v44 * v32, v85, v89);
        }

        v31 += v32;
        v30 = v91 - 1;
      }

      while (v91 != 1);
    }

    else
    {
      v88 = _swiftEmptyArrayStorage;
    }

    v4 = v66;
  }

  type metadata accessor for NetworkConnectionMonitor();
  BaseObjectGraph.inject<A>(_:)();
  v45 = v95;
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  v46 = ASKBagContract.offlineModeHideTabsDisabled.getter();

  if (v46)
  {
    goto LABEL_21;
  }

  NetworkConnectionMonitor.connectionStateObservationIgnored.getter();
  (*(v71 + 104))(v69, enum case for NetworkConnectionMonitor.ConnectionState.offline(_:), v4);
  sub_1000126A0(&qword_100031208, &type metadata accessor for NetworkConnectionMonitor.ConnectionState, &protocol conformance descriptor for NetworkConnectionMonitor.ConnectionState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v95 == v93 && v96 == v94)
  {
    v47 = *(v71 + 8);
    v47(v69, v4);
    v47(v70, v4);
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v49 = *(v71 + 8);
    v49(v69, v4);
    v49(v70, v4);

    if ((v48 & 1) == 0)
    {
LABEL_21:

      return v88;
    }
  }

  if (NetworkConnectionMonitor.hasEverBeenConfirmedOnlineObservationIgnored.getter())
  {
    goto LABEL_21;
  }

  v84 = v45;
  result = v88;
  v87 = v88[2];
  if (v87)
  {
    v51 = 0;
    v86 = (v72 + 16);
    v52 = (v67 + 8);
    v85 = (v72 + 8);
    v91 = (v72 + 32);
    v53 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v51 >= *(result + 2))
      {
        __break(1u);
        return result;
      }

      v54 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v55 = *(v72 + 72);
      (*(v72 + 16))(v76, &result[v54 + v55 * v51], v89);
      StoreTab.identifier.getter();
      static StoreTab.Identifier.library.getter();
      sub_1000126A0(&qword_100031210, &type metadata accessor for StoreTab.Identifier, &protocol conformance descriptor for StoreTab.Identifier);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v95 == v93 && v96 == v94)
      {
        break;
      }

      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v59 = *v52;
      v60 = v90;
      (*v52)(v78, v90);
      v59(v77, v60);

      if (v58)
      {
        goto LABEL_31;
      }

      (*v85)(v76, v89);
LABEL_25:
      ++v51;
      result = v88;
      if (v87 == v51)
      {
        goto LABEL_37;
      }
    }

    v56 = *v52;
    v57 = v90;
    (*v52)(v78, v90);
    v56(v77, v57);

LABEL_31:
    v61 = *v91;
    (*v91)(v75, v76, v89);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v53;
    if ((v62 & 1) == 0)
    {
      sub_100014218(0, v53[2] + 1, 1);
      v53 = v92;
    }

    v64 = v53[2];
    v63 = v53[3];
    if (v64 >= v63 >> 1)
    {
      sub_100014218((v63 > 1), v64 + 1, 1);
      v53 = v92;
    }

    v53[2] = v64 + 1;
    v61(v53 + v54 + v64 * v55, v75, v89);
    goto LABEL_25;
  }

  v53 = _swiftEmptyArrayStorage;
LABEL_37:

  return v53;
}

uint64_t sub_1000118B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v47 = a3;
  v46 = a2;
  v41 = a1;
  v58 = a4;
  v4 = type metadata accessor for FlowOrigin();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v57 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for FlowAnimationBehavior();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowPresentationContext();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v52 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v9 - 8);
  v50 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000021C8(&qword_1000311E8, &qword_100023C68);
  __chkstk_darwin(v11 - 8);
  v44 = &v41 - v12;
  v13 = sub_1000021C8(&qword_1000311F0, &qword_100023C70);
  __chkstk_darwin(v13 - 8);
  v43 = &v41 - v14;
  v15 = sub_1000021C8(&qword_100030FE0, &unk_100023A50);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v42 = type metadata accessor for FlowPage();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StoreTab.Identifier();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v41 - v25;
  StoreTab.identifier.getter();
  v27 = StoreTab.Identifier.rawValue.getter();
  v29 = v28;
  v30 = *(v21 + 8);
  v30(v26, v20);
  *&v59 = v27;
  *(&v59 + 1) = v29;
  v31 = v44;
  AnyHashable.init<A>(_:)();
  v32 = *(v45 + 13);
  v45 = v19;
  v33 = v43;
  v32(v19, enum case for FlowPage.games(_:), v42);
  v34 = type metadata accessor for URL();
  v35 = *(*(v34 - 8) + 56);
  v42 = v17;
  v35(v17, 1, 1, v34);
  v36 = type metadata accessor for ReferrerData();
  (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
  StoreTab.identifier.getter();
  StoreTab.Identifier.gamesTabDestination(player:asPartOf:)();
  v30(v24, v20);
  v37 = type metadata accessor for FlowDestination();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v31, 1, v37) == 1)
  {
    sub_1000169B0(v31, &qword_1000311E8, &qword_100023C68);
    v59 = 0u;
    v60 = 0u;
  }

  else
  {
    *(&v60 + 1) = v37;
    v39 = sub_1000154BC(&v59);
    (*(v38 + 32))(v39, v31, v37);
  }

  static ActionMetrics.notInstrumented.getter();
  static FlowActionPresentation.tabSelect.getter();
  (*(v48 + 104))(v52, enum case for FlowPresentationContext.infer(_:), v49);
  (*(v51 + 104))(v54, enum case for FlowAnimationBehavior.infer(_:), v53);
  (*(v55 + 104))(v57, enum case for FlowOrigin.inapp(_:), v56);
  type metadata accessor for FlowAction();
  swift_allocObject();
  result = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  *v58 = result;
  return result;
}

uint64_t sub_100011FE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100016928(v2, v11, &qword_100030ED8, &qword_100023918);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_100012154@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000021C8(&unk_100030EC8, &qword_1000238F0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100016928(v2, &v14 - v9, &unk_100030EC8, &qword_1000238F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for OpaqueMetricsFieldsContext();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10001237C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000123E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100012450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AppBootstrapView.AppContentView(0);

  return sub_10000DAA8(a1, a2);
}

uint64_t sub_1000124D0()
{
  v1 = (type metadata accessor for AppBootstrapView.AppContentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for BootstrapResult();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_1000021C8(&qword_100030C80, &qword_100023730);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  swift_unknownObjectWeakDestroy();
  v8 = v0 + v3 + v1[9];
  v9 = sub_1000021C8(&unk_100030D08, &qword_100023768);
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_1000021C8(&qword_100030C88, &qword_100023738);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000126A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000126E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100030F48;
  if (!qword_100030F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030F48);
  }

  return result;
}

uint64_t sub_10001275C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001279C()
{
  result = qword_100030F68;
  if (!qword_100030F68)
  {
    sub_100002FF0(&qword_100030EF0, &qword_100023930);
    sub_100016DD4(&qword_100030F70, &qword_100030EE8, &qword_100023928, &protocol conformance descriptor for FlowView<A, B, C>);
    sub_100016DD4(&qword_100030F60, &qword_100030F58, &qword_1000239B0, &protocol conformance descriptor for FlowFullScreenCoverViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030F68);
  }

  return result;
}

unint64_t sub_100012888()
{
  result = qword_100030F80;
  if (!qword_100030F80)
  {
    sub_100002FF0(&qword_100030F28, &qword_100023968);
    sub_100002FF0(&qword_100030F18, &qword_100023958);
    type metadata accessor for BaseObjectGraph();
    sub_100002FF0(&qword_100030F10, &qword_100023950);
    sub_100002FF0(&qword_100030F08, &qword_100023948);
    sub_100002FF0(&qword_100030F00, &qword_100023940);
    sub_100002FF0(&qword_100030EF8, &qword_100023938);
    sub_100002FF0(&qword_100030EF0, &qword_100023930);
    type metadata accessor for GSKDeepLinkWithReferrerIntent();
    sub_10001279C();
    sub_1000126A0(&qword_100030F78, &type metadata accessor for GSKDeepLinkWithReferrerIntent, &protocol conformance descriptor for GSKDeepLinkWithReferrerIntent);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000126A0(&qword_100030F88, type metadata accessor for PerformActionOnAppLaunchModifier, &unk_100023894);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030F80);
  }

  return result;
}

uint64_t sub_100012B24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000021C8(&qword_100031358, &unk_100023E40);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100016928(v2, &v13 - v9, &qword_100031358, &unk_100023E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100015CA4(v10, a1, &qword_100031360, &qword_1000240C0);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100012D4C(uint64_t a1)
{
  v2 = type metadata accessor for AppBootstrapView.AppContentView.DestinationWrapperView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012E04()
{
  v1 = (type metadata accessor for AppBootstrapView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for Bootstrap();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100012F80(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_100013018()
{
  result = qword_100031070;
  if (!qword_100031070)
  {
    sub_100002FF0(&qword_100031060, &qword_100023AD0);
    sub_1000130D0();
    sub_100016DD4(&qword_1000310A8, &qword_1000310B0, &qword_100023AF8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031070);
  }

  return result;
}

unint64_t sub_1000130D0()
{
  result = qword_100031078;
  if (!qword_100031078)
  {
    sub_100002FF0(&qword_100031080, &qword_100023AE0);
    sub_100016DD4(&qword_100031088, &qword_100031090, &qword_100023AE8, &protocol conformance descriptor for ImpedimentFlowView<A, B>);
    sub_100016DD4(&qword_100031098, &qword_1000310A0, &qword_100023AF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031078);
  }

  return result;
}

unint64_t sub_1000131B4()
{
  result = qword_100031118;
  if (!qword_100031118)
  {
    sub_100002FF0(&qword_100031008, &qword_100023A78);
    sub_100002FF0(&qword_100031010, &qword_100023A80);
    sub_100002FF0(&qword_100031108, &qword_100023B18);
    sub_100002FF0(&qword_100031018, &qword_100023A88);
    type metadata accessor for MediaArtwork.BundleImageProtocol();
    sub_100002FF0(&qword_100031020, &qword_100023A90);
    sub_100002FF0(&qword_1000310F0, &qword_100023B10);
    sub_100002FF0(&qword_100031028, &qword_100023A98);
    sub_100002FF0(&qword_1000310D8, &qword_100023B00);
    sub_100002FF0(&qword_100031030, &qword_100023AA0);
    sub_100016DD4(&qword_1000310D0, &qword_100031030, &qword_100023AA0, &protocol conformance descriptor for BootstrapView<A, B, C>);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for AppIconProtocol();
    sub_100002FF0(&qword_100030DD0, &qword_100023788);
    sub_1000126A0(&qword_1000310E8, &type metadata accessor for AppIconProtocol, &protocol conformance descriptor for AppIconProtocol);
    sub_100016DD4(&qword_1000310C0, &qword_100030DD0, &qword_100023788, &protocol conformance descriptor for LRUMultiCache<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PlayerMonogramProtocol();
    sub_1000126A0(&qword_1000310F8, &type metadata accessor for PlayerMonogramProtocol, &protocol conformance descriptor for PlayerMonogramProtocol);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000126A0(&qword_100031100, &type metadata accessor for MediaArtwork.BundleImageProtocol, &protocol conformance descriptor for MediaArtwork.BundleImageProtocol);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for ContactAvatarProtocol();
    sub_1000126A0(&qword_100031110, &type metadata accessor for ContactAvatarProtocol, &protocol conformance descriptor for ContactAvatarProtocol);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100016DD4(&qword_100031120, &qword_100031128, &qword_100023B20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031118);
  }

  return result;
}

uint64_t sub_1000135D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001360C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100016FCC;

  return sub_100009B34();
}

uint64_t sub_1000136A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100016FCC;

  return sub_100009D04();
}

uint64_t sub_100013750(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100013848;

  return v6(a1);
}

uint64_t sub_100013848()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100013940(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100016FCC;

  return sub_100013750(a1, v4);
}

unint64_t sub_1000139F8(uint64_t a1)
{
  type metadata accessor for EditorialPageKey();
  sub_1000126A0(&qword_100031228, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100013A90(a1, v2);
}

unint64_t sub_100013A90(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for EditorialPageKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1000126A0(&qword_100031230, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100013C50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100013D1C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000150A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002BA4(v11);
  return v7;
}

unint64_t sub_100013D1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100013E28(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

void *sub_100013E28(uint64_t a1, unint64_t a2)
{
  v3 = sub_100013E74(a1, a2);
  sub_100013FA4(&off_10002DCF8);
  return v3;
}

void *sub_100013E74(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100014090(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100014090(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100013FA4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100014104(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100014090(uint64_t a1, uint64_t a2)
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

  sub_1000021C8(&qword_1000311C0, &qword_100023C40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100014104(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C8(&qword_1000311C0, &qword_100023C40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1000141F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014238(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100014218(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014344(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100014238(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C8(&qword_1000311D0, &qword_100023C50);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100014344(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000021C8(&qword_1000311E0, &qword_100023C60);
  v10 = *(type metadata accessor for StoreTab() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for StoreTab() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10001451C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_100014610;

  return v5(v2 + 16);
}

uint64_t sub_100014610()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v6 = *v0;

  v3 = *(v1 + 24);
  *v2 = *(v1 + 16);
  v2[1] = v3;
  v4 = *(v6 + 8);

  return v4();
}

void (*sub_100014754(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000147D4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000147DC()
{
  result = qword_100031160;
  if (!qword_100031160)
  {
    sub_100015048(255, &qword_100031158, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031160);
  }

  return result;
}

uint64_t sub_10001484C()
{
  v1 = (type metadata accessor for AppBootstrapView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for BootstrapResult();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = (v0 + v3);

  v12 = v1[7];
  v13 = type metadata accessor for Bootstrap();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);

  swift_unknownObjectWeakDestroy();

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

void sub_100014A20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppBootstrapView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BootstrapResult() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_100007AD0(a1, (v2 + v6), v9, a2);
}

uint64_t sub_100014B2C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100014B88()
{
  v2 = *(type metadata accessor for AppBootstrapView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for BootstrapResult() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100016FCC;

  return sub_10000821C(v7, v8, v0 + v3, v0 + v6);
}

uint64_t sub_100014CC8()
{
  v1 = (type metadata accessor for AppBootstrapView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for BootstrapResult();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  swift_unknownObjectRelease();
  v11 = (v0 + v3);

  v12 = v1[7];
  v13 = type metadata accessor for Bootstrap();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);

  swift_unknownObjectWeakDestroy();

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100014EA4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppBootstrapView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for BootstrapResult() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100016FCC;

  return sub_100008598(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_100014FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000311A8;
  if (!qword_1000311A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000311A8);
  }

  return result;
}

uint64_t sub_100015048(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000150A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10001511C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100015160(uint64_t a1)
{
  v2 = sub_1000021C8(&qword_100031218, &qword_100023C80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000021C8(&qword_100031220, &qword_100023C88);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016928(v9, v5, &qword_100031218, &qword_100023C80);
      result = sub_1000139F8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for EditorialPageKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for URL();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100015380()
{
  v1 = type metadata accessor for Player();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void *sub_100015408(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Player() - 8);
  v7[2] = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7[3] = a1;
  return sub_100004A70(sub_1000154A0, v7, a2);
}

uint64_t *sub_1000154BC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100015524()
{
  v1 = *(type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10000A194(v2);
}

uint64_t sub_100015584()
{
  v1 = (type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for Bootstrap();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = type metadata accessor for BootstrapResult();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  v9 = type metadata accessor for Player();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[9];
  v11 = type metadata accessor for TabsInfoProvider();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001576C()
{
  v1 = (type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = type metadata accessor for Bootstrap();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = type metadata accessor for BootstrapResult();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[8];
  v10 = type metadata accessor for Player();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[9];
  v12 = type metadata accessor for TabsInfoProvider();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10001593C()
{
  v2 = *(type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000297C;

  return sub_10000B64C(v4, v5, v0 + v3, v6);
}

uint64_t sub_100015A50()
{
  v1 = (type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for Bootstrap();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = type metadata accessor for BootstrapResult();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[8];
  v10 = type metadata accessor for Player();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[9];
  v12 = type metadata accessor for TabsInfoProvider();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100015C18()
{
  v1 = *(type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10000B764(v0 + v2, v3);
}

uint64_t sub_100015CA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000021C8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100015D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C8(&qword_100031258, &qword_100023CA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015D7C()
{
  v1 = (type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = type metadata accessor for Bootstrap();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = type metadata accessor for BootstrapResult();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[8];
  v10 = type metadata accessor for Player();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[9];
  v12 = type metadata accessor for TabsInfoProvider();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100015F5C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100016FCC;

  return sub_10000BA90(v10, a1, v7, v8, v1 + v5, v9);
}

uint64_t sub_100016094()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000160CC@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for AppBootstrapView.TabBasedRootView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10000A470(v4, a1);
}

uint64_t sub_10001613C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100016FCC;

  return sub_10001451C(a1, v4);
}

uint64_t sub_1000161F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000297C;

  return sub_10001451C(a1, v4);
}

uint64_t sub_1000162C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FlowAction.Destination();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100016390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FlowAction.Destination();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100016448(uint64_t a1)
{
  result = type metadata accessor for FlowAction.Destination();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BaseObjectGraph();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_1000164CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000164E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100016528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100016584()
{
  sub_100002FF0(&qword_1000309E0, &unk_100023900);
  sub_100016DD4(&qword_100031320, &qword_1000309E0, &unk_100023900, &protocol conformance descriptor for _ViewModifier_Content<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001661C()
{
  sub_100002FF0(&qword_100030F28, &qword_100023968);
  type metadata accessor for TabBarOnlyTabViewStyle();
  sub_100012888();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100016698()
{
  sub_100002FF0(&qword_100030998, &qword_100023608);
  sub_100002FF0(&qword_100031000, &qword_100023A70);
  sub_100002FF0(&qword_100031008, &qword_100023A78);
  sub_1000131B4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100016780()
{
  result = qword_100031328;
  if (!qword_100031328)
  {
    sub_100002FF0(&qword_100031250, &qword_100023CA0);
    sub_100016838();
    sub_100016DD4(&qword_100031348, &qword_100031350, &qword_100023D98, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031328);
  }

  return result;
}

unint64_t sub_100016838()
{
  result = qword_100031330;
  if (!qword_100031330)
  {
    sub_100002FF0(&qword_100031248, &qword_100023C98);
    sub_100016DD4(&qword_100031338, &qword_100031340, "~ ", &protocol conformance descriptor for AppView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031330);
  }

  return result;
}

uint64_t sub_100016928(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000021C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000169B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000021C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100016A20(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002FF0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100016ADC()
{
  result = qword_1000313D8;
  if (!qword_1000313D8)
  {
    sub_100002FF0(&qword_1000313B8, &qword_100023E88);
    sub_100016B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000313D8);
  }

  return result;
}

unint64_t sub_100016B60()
{
  result = qword_1000313E0;
  if (!qword_1000313E0)
  {
    sub_100002FF0(&qword_1000313E8, &qword_100023EA8);
    sub_100002FF0(&qword_1000313F0, &qword_100023EB0);
    sub_100002FF0(&qword_1000313F8, &qword_100023EB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000313E0);
  }

  return result;
}

unint64_t sub_100016C9C()
{
  result = qword_100031408;
  if (!qword_100031408)
  {
    sub_100002FF0(&qword_1000313C8, &qword_100023E98);
    sub_100002FF0(&qword_1000313C0, &qword_100023E90);
    sub_100002FF0(&qword_1000313B8, &qword_100023E88);
    sub_100016ADC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100016DD4(&qword_100031410, &qword_100031418, &qword_100023EC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031408);
  }

  return result;
}

uint64_t sub_100016DD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002FF0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100016E20()
{
  result = qword_100031438;
  if (!qword_100031438)
  {
    sub_100002FF0(&unk_100031440, &unk_100023EE0);
    sub_100016DD4(&qword_100031388, &qword_100031378, &qword_100023E68, &protocol conformance descriptor for Label<A, B>);
    sub_100016DD4(&qword_100031390, &qword_100031368, &qword_100023E58, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031438);
  }

  return result;
}

uint64_t sub_100016F00()
{
  sub_100002FF0(&qword_1000313D0, &qword_100023EA0);
  sub_100002FF0(&qword_1000313C8, &qword_100023E98);
  sub_100016C9C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void *sub_100016FEC()
{
  result = BaseObjectGraph.optional<A>(_:)();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    type metadata accessor for ASDInAppPurchaseStateProvider();
    swift_allocObject();
    ASDInAppPurchaseStateProvider.init()();
    type metadata accessor for InAppPurchaseStateDataSource();
    swift_allocObject();
    InAppPurchaseStateDataSource.init(withStateProvider:)();
    InAppPurchaseStateDataSource.refreshData()();
    type metadata accessor for InAppPurchaseInstallPagePresenter();
    static InAppPurchaseInstallPagePresenter.use(stateDataSource:)();
    type metadata accessor for InAppPurchaseOfferButtonPresenter();
    static InAppPurchaseOfferButtonPresenter.use(stateDataSource:)();
    type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
    static StreamlinedInAppPurchaseOfferButtonPresenter.use(stateDataSource:)();
  }

  return result;
}

uint64_t sub_1000170D8(void *a1)
{
  v67 = a1;
  v1 = type metadata accessor for ModernAppStateDataSource();
  v2 = *(v1 - 8);
  v65 = v1;
  v66 = v2;
  v3 = __chkstk_darwin(v1);
  v71 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v73 = v56 - v5;
  v59 = type metadata accessor for AppStoreType();
  v6 = *(v59 - 1);
  __chkstk_darwin(v59);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceAppQuery();
  v58 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ASDDeviceAppFetcher();
  v64 = *(v13 - 8);
  v14 = v64;
  __chkstk_darwin(v13);
  v16 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016FEC();
  updated = type metadata accessor for DeviceUpdateRegistry();
  v70 = DeviceUpdateRegistry.__allocating_init()();
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  ASDDeviceAppFetcher.init(regulatoryLogger:)();
  v68 = type metadata accessor for DeviceAppStateDataSource();
  v17 = v10 + 104;
  v18 = *(v10 + 104);
  *&v57 = v17;
  v19 = v12;
  v18(v12, enum case for DeviceAppQuery.betaApps(_:), v9);
  v69 = v13;
  *(&v78 + 1) = v13;
  v79 = &protocol witness table for ASDDeviceAppFetcher;
  v20 = sub_1000154BC(&v77);
  v21 = *(v14 + 16);
  v61 = v16;
  v21(v20, v16, v13);
  v62 = v21;
  v63 = v14 + 16;
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v22 = enum case for AppStoreType.default(_:);
  v23 = v6 + 104;
  v24 = *(v6 + 104);
  v56[1] = v23;
  v25 = v59;
  v24(v8, enum case for AppStoreType.default(_:), v59);
  v56[0] = v19;
  v60 = DeviceAppStateDataSource.__allocating_init(query:fetcher:updateRegistry:store:)();
  v18(v19, enum case for DeviceAppQuery.allStoreApps(_:), v58);
  v26 = v69;
  *(&v78 + 1) = v69;
  v79 = &protocol witness table for ASDDeviceAppFetcher;
  v27 = sub_1000154BC(&v77);
  v21(v27, v16, v26);
  *(&v75 + 1) = updated;
  v76 = &protocol witness table for DeviceUpdateRegistry;
  *&v74 = v70;
  v24(v8, v22, v25);

  v58 = DeviceAppStateDataSource.__allocating_init(query:fetcher:updateRegistry:store:)();
  type metadata accessor for PurchaseHistoryAppStateDataSource();

  v28 = PurchaseHistoryAppStateDataSource.__allocating_init(asPartOf:)();
  sub_1000021C8(&qword_100031450, &qword_100023F48);
  v29 = type metadata accessor for App.Kind();
  v30 = *(v29 - 8);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = swift_allocObject();
  v57 = xmmword_100023680;
  *(v32 + 16) = xmmword_100023680;
  v33 = enum case for App.Kind.store(_:);
  v34 = *(v30 + 104);
  v34(v32 + v31, enum case for App.Kind.store(_:), v29);
  v59 = v28;
  ModernAppStateDataSource.init(_:isIncremental:supportedAppKinds:)();
  type metadata accessor for RemotePersonalizationAppStateDataSource();

  v35 = RemotePersonalizationAppStateDataSource.__allocating_init(asPartOf:)();
  v36 = swift_allocObject();
  *(v36 + 16) = v57;
  v34(v36 + v31, v33, v29);
  v67 = v35;
  v37 = v71;
  ModernAppStateDataSource.init(_:isIncremental:supportedAppKinds:)();
  sub_1000021C8(&qword_100031458, &qword_100023F50);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100023EF0;
  v39 = type metadata accessor for WaitingAppStateDataSource();
  swift_allocObject();
  v40 = WaitingAppStateDataSource.init()();
  *(v38 + 56) = v39;
  *(v38 + 64) = &protocol witness table for WaitingAppStateDataSource;
  *(v38 + 32) = v40;
  v41 = v68;
  *(v38 + 96) = v68;
  *(v38 + 104) = &protocol witness table for DeviceAppStateDataSource;
  *(v38 + 72) = v60;
  *(v38 + 136) = v41;
  *(v38 + 144) = &protocol witness table for DeviceAppStateDataSource;
  *(v38 + 112) = v58;
  v42 = v65;
  *(v38 + 176) = v65;
  v43 = sub_1000178E0();
  *(v38 + 184) = v43;
  v44 = sub_1000154BC((v38 + 152));
  v45 = v66;
  v46 = *(v66 + 16);
  v46(v44, v73, v42);
  *(v38 + 216) = v42;
  *(v38 + 224) = v43;
  v47 = sub_1000154BC((v38 + 192));
  v46(v47, v37, v42);
  v48 = type metadata accessor for DefaultAppStateDataSource();
  swift_allocObject();

  v49 = DefaultAppStateDataSource.init()();
  *(v38 + 256) = v48;
  *(v38 + 264) = &protocol witness table for DefaultAppStateDataSource;
  *(v38 + 232) = v49;
  v50 = v69;
  *(&v78 + 1) = v69;
  v79 = &protocol witness table for ASDDeviceAppFetcher;
  v51 = sub_1000154BC(&v77);
  v52 = v61;
  v62(v51, v61, v50);
  *(&v75 + 1) = updated;
  v76 = &protocol witness table for DeviceUpdateRegistry;
  *&v74 = v70;

  v53 = makeModernAppStateController(deviceAppFetcher:updateRegistry:dataSources:)();

  v54 = *(v45 + 8);
  v54(v71, v42);
  v54(v73, v42);
  (*(v64 + 8))(v52, v50);
  sub_100002BA4(&v74);
  sub_100002BA4(&v77);
  return v53;
}

unint64_t sub_1000178E0()
{
  result = qword_100031460;
  if (!qword_100031460)
  {
    type metadata accessor for ModernAppStateDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031460);
  }

  return result;
}

void sub_100017938()
{
  v1 = type metadata accessor for BoolSettingKey();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = [v0 launchedToTest];
  v5 = objc_opt_self();
  v6 = [v5 processInfo];
  v7 = [v6 environment];

  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v8 + 16) && (sub_100018070(0x446B636F4D657355, 0xEB00000000617461), (v9 & 1) != 0))
  {

    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 BOOLValue];
  }

  else
  {

    v11 = 2;
  }

  v12 = objc_opt_self();
  v13 = [v12 standardUserDefaults];
  v14 = *(v2 + 104);
  v45 = enum case for BoolSettingKey.mockPlayNowFeed(_:);
  v46 = v2 + 104;
  v44 = v14;
  v14(v4);
  BoolSettingKey.rawValue.getter();
  v43 = *(v2 + 8);
  v43(v4, v1);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v13 valueForKey:v15];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51[0] = v49;
  v51[1] = v50;
  if (*(&v50 + 1))
  {
    if (swift_dynamicCast())
    {
      v17 = v48;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    sub_1000180E8(v51);
    v17 = 2;
  }

  v18 = [v5 processInfo];
  v19 = [v18 environment];

  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v20 + 16) && (sub_100018070(0xD000000000000015, 0x8000000100026870), (v21 & 1) != 0))
  {

    v22 = String._bridgeToObjectiveC()();

    v47 = [v22 BOOLValue];
  }

  else
  {
  }

  v23 = v47;
  HIDWORD(v42) = v17;
  if (v17 != 2)
  {
    v23 = v17;
  }

  if (v11 == 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = v11;
  }

  if (qword_100030978 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100002B24(v25, qword_100031468);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *&v51[0] = swift_slowAlloc();
    *v28 = 67109890;
    *(v28 + 4) = v24 & 1;
    *(v28 + 8) = 2080;
    v29 = 1702195828;
    if ((v11 & 1) == 0)
    {
      v29 = 0x65736C6166;
    }

    v30 = 0xE500000000000000;
    if (v11)
    {
      v30 = 0xE400000000000000;
    }

    if (v11 == 2)
    {
      v31 = 7104878;
    }

    else
    {
      v31 = v29;
    }

    LODWORD(v42) = v24;
    if (v11 == 2)
    {
      v32 = 0xE300000000000000;
    }

    else
    {
      v32 = v30;
    }

    v33 = sub_100013C50(v31, v32, v51);

    *(v28 + 10) = v33;
    *(v28 + 18) = 2080;
    v34 = 0x65736C6166;
    if ((v42 & 0x100000000) != 0)
    {
      v34 = 1702195828;
    }

    v35 = 0xE400000000000000;
    if ((v42 & 0x100000000) == 0)
    {
      v35 = 0xE500000000000000;
    }

    if (HIDWORD(v42) == 2)
    {
      v36 = 7104878;
    }

    else
    {
      v36 = v34;
    }

    if (HIDWORD(v42) == 2)
    {
      v37 = 0xE300000000000000;
    }

    else
    {
      v37 = v35;
    }

    v38 = sub_100013C50(v36, v37, v51);

    *(v28 + 20) = v38;
    v39 = v42;
    *(v28 + 28) = 1024;
    *(v28 + 30) = v47;
    _os_log_impl(&_mh_execute_header, v26, v27, "Mock data enablement: %{BOOL}d; enabledViaEnvironment: %s, enabledViaUserDefaults: %s, isLaunchedForPerformanceTesting: %{BOOL}d", v28, 0x22u);
    swift_arrayDestroy();
  }

  else
  {

    v39 = v24;
  }

  v40 = [v12 standardUserDefaults];
  v44(v4, v45, v1);
  BoolSettingKey.rawValue.getter();
  v43(v4, v1);
  v41 = String._bridgeToObjectiveC()();

  [v40 setBool:v39 & 1 forKey:v41];
}

uint64_t sub_100017FC0()
{
  v0 = type metadata accessor for Logger();
  sub_100002BF0(v0, qword_100031468);
  sub_100002B24(v0, qword_100031468);
  String.init<A>(_:)();
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100018070(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100018194(a1, a2, v4);
}

uint64_t sub_1000180E8(uint64_t a1)
{
  v2 = sub_1000021C8(&qword_100031480, &qword_100023F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100018150(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001824C(a1, v4);
}

unint64_t sub_100018194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001824C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100012DA8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100016A88(v8);
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

uint64_t sub_100018314@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for MoltresApp(0);
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1000021C8(&qword_100031548, &qword_100023FF0);
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v8 = sub_1000021C8(&qword_100031550, &qword_100023FF8);
  v35 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = sub_1000021C8(&qword_100031558, &qword_100024000);
  v12 = *(v11 - 8);
  v36 = v11;
  v37 = v12;
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = sub_1000021C8(&qword_100031560, &qword_100024008);
  v16 = *(v15 - 8);
  v38 = v15;
  v39 = v16;
  __chkstk_darwin(v15);
  v18 = &v33 - v17;
  sub_10001E690(v2, &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MoltresApp);
  v19 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v20 = swift_allocObject();
  sub_10001E6FC(&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for MoltresApp);
  sub_1000021C8(&qword_100031568, &qword_100024010);
  v21 = sub_100002FF0(&qword_100031570, &qword_100024018);
  v22 = type metadata accessor for MoltresApp.WindowContentView(255);
  v23 = sub_10001D7A4(&qword_100031578, type metadata accessor for MoltresApp.WindowContentView, &unk_100024104);
  v41 = v22;
  v42 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v21;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  v25 = sub_100016DD4(&qword_100031580, &qword_100031548, &qword_100023FF0, &protocol conformance descriptor for WindowGroup<A>);
  Scene.extendedLaunchTestName(_:)();
  (*(v34 + 8))(v7, v5);
  sub_10001D95C(&off_10002DD20);
  sub_10001DAC4(&unk_10002DD40);
  v41 = v5;
  v42 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  Scene.handlesExternalEvents(matching:)();

  (*(v35 + 8))(v10, v8);
  v27 = sub_1000021C8(&qword_100031588, &qword_100024020);
  v41 = v8;
  v42 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_100016DD4(&qword_100031590, &qword_100031588, &qword_100024020, &protocol conformance descriptor for TupleCommandContent<A>);
  v30 = v36;
  Scene.commands<A>(content:)();
  (*(v37 + 8))(v14, v30);
  v41 = v30;
  v42 = v27;
  v43 = v28;
  v44 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v38;
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v39 + 8))(v18, v31);
}

uint64_t sub_10001893C()
{
  started = type metadata accessor for JetStartUpDecoration();
  v1 = *(started - 8);
  __chkstk_darwin(started);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MoltresApp.WindowContentView(0);
  __chkstk_darwin(v4);
  v6 = (v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000021C8(&qword_100031570, &qword_100024018);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - v9;
  sub_100018E90(0, v6);
  (*(v1 + 104))(v3, enum case for JetStartUpDecoration.tabBar(_:), started);
  v11 = sub_10001D7A4(&qword_100031578, type metadata accessor for MoltresApp.WindowContentView, &unk_100024104);
  View.startUpDecoration(_:)();
  (*(v1 + 8))(v3, started);
  sub_10001E630(v6, type metadata accessor for MoltresApp.WindowContentView);
  sub_10001D95C(&off_10002DD50);
  sub_10001DAC4(&unk_10002DD70);
  sub_10001D95C(&off_10002DD80);
  sub_10001DAC4(&unk_10002DDA0);
  v13[0] = v4;
  v13[1] = v11;
  swift_getOpaqueTypeConformance2();
  View.handlesExternalEvents(preferring:allowing:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100018C1C()
{
  v0 = sub_1000021C8(&qword_100031598, &qword_100024028);
  __chkstk_darwin(v0);
  v2 = &v15 - v1;
  v3 = type metadata accessor for CommandGroupPlacement();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000021C8(&qword_1000315A0, &qword_100024030);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  static CommandGroupPlacement.sidebar.getter();
  CommandGroup.init(replacing:addition:)();
  static CommandGroupPlacement.toolbar.getter();
  CommandGroup.init(replacing:addition:)();
  v11 = *(v0 + 48);
  v12 = *(v5 + 16);
  v12(v2, v10, v4);
  v12(&v2[v11], v8, v4);
  TupleCommandContent.init(_:)();
  v13 = *(v5 + 8);
  v13(v8, v4);
  return (v13)(v10, v4);
}

uint64_t sub_100018E90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = a1;
  v3 = sub_1000021C8(&qword_1000315B0, &qword_100024040);
  v4 = __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for OpenDeepLinkAction();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  JSNativeIntent = makeJSNativeIntentDispatcher()();
  sub_1000021C8(&qword_1000315B8, &qword_100024048);
  State.init(wrappedValue:)();
  v16 = v27;
  *a2 = v26;
  a2[1] = v16;
  v17 = type metadata accessor for MoltresApp.WindowContentView(0);
  OpenDeepLinkAction.init(forSceneDelegate:)();
  (*(v10 + 16))(v13, v15, v9);
  State.init(wrappedValue:)();
  (*(v10 + 8))(v15, v9);
  v18 = a2 + v17[6];
  LOBYTE(JSNativeIntent) = 0;
  State.init(wrappedValue:)();
  v19 = v27;
  *v18 = v26;
  *(v18 + 1) = v19;
  v20 = type metadata accessor for DeepLink();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  sub_100016928(v8, v6, &qword_1000315B0, &qword_100024040);
  State.init(wrappedValue:)();
  sub_1000169B0(v8, &qword_1000315B0, &qword_100024040);
  v21 = v17[8];
  *(a2 + v21) = swift_getKeyPath();
  sub_1000021C8(&qword_1000315C0, &qword_100024080);
  swift_storeEnumTagMultiPayload();
  v22 = v17[9];
  *(a2 + v22) = swift_getKeyPath();
  sub_1000021C8(&qword_100031358, &unk_100023E40);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v17[10]) = v24;
  return result;
}

uint64_t sub_1000191B4()
{
  v0 = type metadata accessor for Logger();
  sub_100002BF0(v0, qword_100031488);
  sub_100002B24(v0, qword_100031488);
  String.init<A>(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100019264@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000021C8(&qword_1000315C0, &qword_100024080);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MoltresApp.WindowContentView(0);
  sub_100016928(v1 + *(v10 + 32), v9, &qword_1000315C0, &qword_100024080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ScenePhase();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10001946C@<X0>(uint64_t a1@<X8>)
{
  v151 = a1;
  v152 = type metadata accessor for OpenDeepLinkAction();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v149 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for ScenePhase();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MoltresApp.WindowContentView(0);
  v145 = *(v4 - 8);
  __chkstk_darwin(v4);
  v158 = v5;
  v159 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for UserInterfaceSizeClass();
  v126 = *(v122 - 8);
  __chkstk_darwin(v122);
  v107 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1000021C8(&qword_1000316C0, &unk_100024158);
  __chkstk_darwin(v123);
  v125 = &v107 - v7;
  v8 = sub_1000021C8(&qword_100031360, &qword_1000240C0);
  v9 = __chkstk_darwin(v8 - 8);
  v108 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v154 = &v107 - v12;
  __chkstk_darwin(v11);
  v155 = &v107 - v13;
  v137 = type metadata accessor for TabBarScrollCollapseMode();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000021C8(&qword_100030FE0, &unk_100023A50);
  __chkstk_darwin(v15 - 8);
  v118 = &v107 - v16;
  v117 = type metadata accessor for ASKBootstrapV2.TargetType();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000021C8(&qword_1000316C8, &qword_100024168);
  __chkstk_darwin(v18 - 8);
  v114 = &v107 - v19;
  v113 = type metadata accessor for Bag.Profile();
  v20 = *(v113 - 8);
  __chkstk_darwin(v113);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000021C8(&qword_1000316D0, &qword_100024170);
  __chkstk_darwin(v23 - 8);
  v25 = &v107 - v24;
  v26 = type metadata accessor for AppBootstrapView(0);
  __chkstk_darwin(v26);
  v28 = (&v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = sub_1000021C8(&qword_1000316D8, &qword_100024178);
  v124 = *(v128 - 8);
  __chkstk_darwin(v128);
  v153 = &v107 - v29;
  v130 = sub_1000021C8(&qword_1000316E0, &qword_100024180);
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v127 = &v107 - v30;
  v134 = sub_1000021C8(&qword_1000316E8, &qword_100024188);
  v131 = *(v134 - 8);
  __chkstk_darwin(v134);
  v157 = &v107 - v31;
  v139 = sub_1000021C8(&qword_1000316F0, &qword_100024190);
  v135 = *(v139 - 8);
  __chkstk_darwin(v139);
  v132 = &v107 - v32;
  v142 = sub_1000021C8(&qword_1000316F8, &qword_100024198);
  v140 = *(v142 - 8);
  __chkstk_darwin(v142);
  v138 = &v107 - v33;
  v144 = sub_1000021C8(&qword_100031700, &qword_1000241A0);
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = &v107 - v34;
  v35 = v1 + *(v4 + 24);
  v36 = *v35;
  v37 = *(v35 + 1);
  v121 = v36;
  LOBYTE(v161) = v36;
  v120 = v37;
  *(&v161 + 1) = v37;
  v119 = sub_1000021C8(&qword_100031708, &qword_1000241A8);
  State.projectedValue.getter();
  v112 = v164;
  v111 = v165;
  v110 = v166;
  v38 = v1[1];
  v164 = *v1;
  v165 = v38;
  sub_1000021C8(&qword_100031710, &unk_1000241B0);
  State.wrappedValue.getter();
  v39 = v161;
  v156 = v4;
  v40 = *(v4 + 40);
  v160 = v1;
  v41 = *(v1 + v40);
  swift_unknownObjectWeakInit();
  v42 = (v28 + v26[9]);
  sub_1000021C8(&qword_100030DD0, &qword_100023788);
  swift_allocObject();
  v109 = v41;

  *&v161 = LRUMultiCache.init(keyLimit:valueLimit:)();
  State.init(wrappedValue:)();
  v43 = v165;
  *v42 = v164;
  v42[1] = v43;
  v44 = (v28 + v26[10]);
  v45 = sub_1000021C8(&qword_100031718, &qword_1000241C0);
  (*(*(v45 - 8) + 56))(v25, 1, 1, v45);
  type metadata accessor for ImpedimentFlowDestinationStates();
  swift_allocObject();
  *&v161 = ImpedimentFlowDestinationStates.init(completedWelcome:completedCrossUse:completedProfileCreation:lastRecordedSignedInPlayer:lastRecordedSignedInAppStoreDSID:)();
  State.init(wrappedValue:)();
  v46 = v165;
  *v44 = v164;
  v44[1] = v46;
  v47 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.registerGamesDefaults()();

  if (qword_100030950 != -1)
  {
    swift_once();
  }

  v48 = v113;
  v49 = sub_100002B24(v113, qword_100030B60);
  (*(v20 + 16))(v22, v49, v48);
  v50 = v114;
  static BagOfflinePolicy.standard.getter();
  v51 = type metadata accessor for BagOfflinePolicy();
  v52 = (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  v167 = &type metadata for ModernAppStateControllerFactory;
  v168 = sub_10001E40C(v52, v53, v54);
  (*(v115 + 104))(v116, enum case for ASKBootstrapV2.TargetType.app(_:), v117);
  *(swift_allocObject() + 16) = v39;
  v55 = type metadata accessor for URL();
  (*(*(v55 - 8) + 56))(v118, 1, 1, v55);
  v163 = 0;
  v161 = 0u;
  v162 = 0u;
  v56 = v39;
  Bootstrap.init(bagProfile:bagOfflinePolicy:appStateControllerFactory:targetType:objectGraphName:tokenServiceClient:processTreatmentNamespace:prerequisites:jetpackURL:languageSource:)();
  *v28 = v56;
  v57 = v28 + v26[6];
  v58 = v111;
  *v57 = v112;
  *(v57 + 1) = v58;
  v57[16] = v110;
  *(v28 + v26[7]) = v109;
  v59 = sub_10001D7A4(&qword_100031728, type metadata accessor for AppBootstrapView, &unk_1000237F4);
  View.limitDynamicTypeSizeForSeedBuild()();
  sub_10001E630(v28, type metadata accessor for AppBootstrapView);
  v60 = v155;
  sub_100012B24(v155);
  v61 = v126;
  v62 = v154;
  v63 = v122;
  (*(v126 + 104))(v154, enum case for UserInterfaceSizeClass.compact(_:), v122);
  (*(v61 + 56))(v62, 0, 1, v63);
  v64 = *(v123 + 48);
  v65 = v125;
  sub_100016928(v60, v125, &qword_100031360, &qword_1000240C0);
  sub_100016928(v62, v65 + v64, &qword_100031360, &qword_1000240C0);
  v66 = *(v61 + 48);
  if (v66(v65, 1, v63) == 1)
  {
    sub_1000169B0(v154, &qword_100031360, &qword_1000240C0);
    sub_1000169B0(v155, &qword_100031360, &qword_1000240C0);
    if (v66(v65 + v64, 1, v63) == 1)
    {
      sub_1000169B0(v65, &qword_100031360, &qword_1000240C0);
      v67 = v133;
      v68 = v153;
LABEL_11:
      static TabBarScrollCollapseMode.always.getter();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v69 = v108;
  sub_100016928(v65, v108, &qword_100031360, &qword_1000240C0);
  if (v66(v65 + v64, 1, v63) == 1)
  {
    sub_1000169B0(v154, &qword_100031360, &qword_1000240C0);
    sub_1000169B0(v155, &qword_100031360, &qword_1000240C0);
    (*(v61 + 8))(v69, v63);
LABEL_8:
    sub_1000169B0(v65, &qword_1000316C0, &unk_100024158);
    v67 = v133;
    v68 = v153;
    goto LABEL_9;
  }

  v70 = v107;
  (*(v61 + 32))(v107, v65 + v64, v63);
  sub_10001D7A4(&qword_100031738, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v71 = v69;
  v72 = dispatch thunk of static Equatable.== infix(_:_:)();
  v73 = *(v61 + 8);
  v73(v70, v63);
  sub_1000169B0(v154, &qword_100031360, &qword_1000240C0);
  sub_1000169B0(v155, &qword_100031360, &qword_1000240C0);
  v73(v71, v63);
  sub_1000169B0(v65, &qword_100031360, &qword_1000240C0);
  v67 = v133;
  v68 = v153;
  if (v72)
  {
    goto LABEL_11;
  }

LABEL_9:
  static TabBarScrollCollapseMode.automatic.getter();
LABEL_12:
  v164 = v26;
  v165 = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = v127;
  v76 = v128;
  View.tabBarCollapsesOnScroll(_:)();
  (*(v136 + 8))(v67, v137);
  (*(v124 + 8))(v68, v76);
  LOBYTE(v164) = v121;
  v165 = v120;
  State.wrappedValue.getter();
  v77 = v159;
  sub_10001E690(v160, v159, type metadata accessor for MoltresApp.WindowContentView);
  v78 = (*(v145 + 80) + 16) & ~*(v145 + 80);
  v155 = *(v145 + 80);
  v79 = swift_allocObject();
  sub_10001E6FC(v77, v79 + v78, type metadata accessor for MoltresApp.WindowContentView);
  v164 = v76;
  v165 = OpaqueTypeConformance2;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v130;
  View.onChange<A>(of:initial:_:)();

  (*(v129 + 8))(v75, v81);
  v82 = v146;
  v83 = v160;
  sub_100019264(v146);
  v84 = v83;
  v85 = v159;
  sub_10001E690(v84, v159, type metadata accessor for MoltresApp.WindowContentView);
  v86 = swift_allocObject();
  sub_10001E6FC(v85, v86 + v78, type metadata accessor for MoltresApp.WindowContentView);
  v164 = v81;
  v165 = &type metadata for Bool;
  v166 = v80;
  v167 = &protocol witness table for Bool;
  v154 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v153 = swift_getOpaqueTypeConformance2();
  v87 = sub_10001D7A4(&qword_100031730, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v88 = v132;
  v89 = v134;
  v90 = v148;
  v91 = v157;
  View.onChange<A>(of:initial:_:)();

  (*(v147 + 8))(v82, v90);
  (*(v131 + 8))(v91, v89);
  v93 = v159;
  v92 = v160;
  sub_10001E690(v160, v159, type metadata accessor for MoltresApp.WindowContentView);
  v94 = swift_allocObject();
  sub_10001E6FC(v93, v94 + v78, type metadata accessor for MoltresApp.WindowContentView);
  v164 = v89;
  v165 = v90;
  v166 = v153;
  v167 = v87;
  v95 = swift_getOpaqueTypeConformance2();
  v96 = v138;
  v97 = v139;
  View.onOpenURL(perform:)();

  (*(v135 + 8))(v88, v97);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v92;
  v99 = v159;
  sub_10001E690(v98, v159, type metadata accessor for MoltresApp.WindowContentView);
  v100 = swift_allocObject();
  sub_10001E6FC(v99, v100 + v78, type metadata accessor for MoltresApp.WindowContentView);
  v164 = v97;
  v165 = v95;
  v101 = swift_getOpaqueTypeConformance2();
  v102 = v141;
  v103 = v142;
  View.onContinueUserActivity(_:perform:)();

  (*(v140 + 8))(v96, v103);
  sub_1000021C8(&qword_1000315C8, &qword_1000240C8);
  v104 = v149;
  State.wrappedValue.getter();
  v164 = v103;
  v165 = v101;
  swift_getOpaqueTypeConformance2();
  v105 = v144;
  View.openDeepLinkAction(_:)();
  (*(v150 + 8))(v104, v152);
  return (*(v143 + 8))(v102, v105);
}

uint64_t sub_10001AB30(uint64_t a1, unsigned __int8 *a2)
{
  v3 = type metadata accessor for ScenePhase();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *a2;
  if (qword_100030980 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100002B24(v11, qword_100031488);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67240192;
    *(v14 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v12, v13, "isBootstrapping changed: %{BOOL,public}d", v14, 8u);
  }

  sub_100019264(v9);
  (*(v4 + 104))(v7, enum case for ScenePhase.active(_:), v3);
  v15 = static ScenePhase.== infix(_:_:)();
  v16 = *(v4 + 8);
  v16(v7, v3);
  v16(v9, v3);
  return sub_10001AD54(v10, v15 & 1);
}

uint64_t sub_10001AD54(char a1, char a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v82 = *(v5 - 8);
  v83 = v5;
  __chkstk_darwin(v5);
  v80 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DispatchQoS();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MoltresApp.WindowContentView(0);
  v72 = *(v8 - 8);
  __chkstk_darwin(v8);
  v73 = v9;
  v74 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchTime();
  v77 = *(v84 - 8);
  v10 = __chkstk_darwin(v84);
  v71 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v58 - v12;
  v13 = sub_1000021C8(&qword_1000315B0, &qword_100024040);
  v14 = __chkstk_darwin(v13 - 8);
  v70 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v58 - v17;
  __chkstk_darwin(v16);
  v20 = &v58 - v19;
  v21 = type metadata accessor for DeepLink();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v24 = __chkstk_darwin(v23);
  v26 = &v58 - v25;
  result = __chkstk_darwin(v24);
  if (a1 & 1) == 0 && (a2)
  {
    v30 = v29;
    v75 = &v58 - v28;
    v31 = *(v8 + 28);
    v69 = v2;
    v32 = v2 + v31;
    v33 = sub_1000021C8(&qword_1000315D0, &qword_1000240D0);
    State.wrappedValue.getter();
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      return sub_1000169B0(v20, &qword_1000315B0, &qword_100024040);
    }

    else
    {
      v62 = v33;
      v63 = v32;
      v34 = *(v22 + 32);
      v35 = v75;
      v67 = v22 + 32;
      v66 = v34;
      v34(v75, v20, v21);
      if (qword_100030980 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100002B24(v36, qword_100031488);
      v68 = *(v22 + 16);
      v68(v26, v35, v21);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        aBlock[0] = v60;
        *v39 = 141558274;
        *(v39 + 4) = 1752392040;
        *(v39 + 12) = 2080;
        v68(v30, v26, v21);
        v59 = String.init<A>(describing:)();
        v61 = v22 + 16;
        v41 = v40;
        v42 = *(v22 + 8);
        v64 = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v43 = v26;
        v44 = v30;
        v65 = v42;
        v42(v43, v21);
        v45 = sub_100013C50(v59, v41, aBlock);

        *(v39 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v37, v38, "isBootstrapping - calling openDeepLinkAction with pendingDeepLink %{mask.hash}s", v39, 0x16u);
        sub_100002BA4(v60);
      }

      else
      {

        v46 = *(v22 + 8);
        v64 = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v65 = v46;
        v46(v26, v21);
        v44 = v30;
      }

      (*(v22 + 56))(v18, 1, 1, v21);
      sub_100016928(v18, v70, &qword_1000315B0, &qword_100024040);
      State.wrappedValue.setter();
      sub_1000169B0(v18, &qword_1000315B0, &qword_100024040);
      sub_10001EF88();
      v70 = static OS_dispatch_queue.main.getter();
      v47 = v71;
      static DispatchTime.now()();
      v48 = v76;
      + infix(_:_:)();
      v77 = *(v77 + 8);
      (v77)(v47, v84);
      v49 = v74;
      sub_10001E690(v69, v74, type metadata accessor for MoltresApp.WindowContentView);
      v68(v44, v75, v21);
      v50 = (*(v72 + 80) + 16) & ~*(v72 + 80);
      v51 = (v73 + *(v22 + 80) + v50) & ~*(v22 + 80);
      v52 = swift_allocObject();
      sub_10001E6FC(v49, v52 + v50, type metadata accessor for MoltresApp.WindowContentView);
      v66(v52 + v51, v44, v21);
      aBlock[4] = sub_10001F348;
      aBlock[5] = v52;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001D350;
      aBlock[3] = &unk_10002E328;
      v53 = _Block_copy(aBlock);

      v54 = v78;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10001D7A4(&qword_100031790, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000021C8(&qword_100031798, &qword_100024220);
      sub_100016DD4(&qword_1000317A0, &qword_100031798, &qword_100024220, &protocol conformance descriptor for [A]);
      v55 = v80;
      v56 = v83;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v57 = v70;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v53);

      (*(v82 + 8))(v55, v56);
      (*(v79 + 8))(v54, v81);
      (v77)(v48, v84);
      return v65(v75, v21);
    }
  }

  return result;
}

uint64_t sub_10001B71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 104))(v7, enum case for ScenePhase.active(_:), v4);
  v8 = static ScenePhase.== infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  if (qword_100030980 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100002B24(v9, qword_100031488);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = v8 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "isAppActive changed: %{BOOL,public}d", v12, 8u);
  }

  v13 = a3 + *(type metadata accessor for MoltresApp.WindowContentView(0) + 24);
  v14 = *v13;
  v15 = *(v13 + 8);
  v17[16] = v14;
  v18 = v15;
  sub_1000021C8(&qword_100031708, &qword_1000241A8);
  State.wrappedValue.getter();
  return sub_10001AD54(v17[15], v8 & 1);
}

uint64_t sub_10001B934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C8(&qword_100031760, &qword_1000241F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DeepLink();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  sub_100016928(a2, v6, &qword_100031760, &qword_1000241F8);
  sub_10001BB24(v10, v6, v14);
  sub_10001C088(v14);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_10001BB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000021C8(&qword_100031760, &qword_1000241F8);
  v7 = __chkstk_darwin(v6 - 8);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v38 = &v37 - v10;
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = *(v14 + 16);
  v44 = a1;
  v16(&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v42 = a3;
  DeepLink.init(url:)();
  sub_1000021C8(&qword_100031768, &qword_100024200);
  v17 = (sub_1000021C8(&qword_100031770, &qword_100024208) - 8);
  v18 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100023680;
  v20 = (v19 + v18);
  v21 = v17[14];
  *v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20[1] = v22;
  v43 = a2;
  sub_100016928(a2, v12, &qword_100031760, &qword_1000241F8);
  v23 = type metadata accessor for OpenURLOptions();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  v26 = v25(v12, 1, v23);
  v40 = v14;
  v41 = v13;
  if (v26 == 1)
  {
    sub_1000169B0(v12, &qword_100031760, &qword_1000241F8);
    (*(v14 + 56))(v20 + v21, 1, 1, v13);
  }

  else
  {
    OpenURLOptions.referrerURL.getter();
    (*(v24 + 8))(v12, v23);
  }

  v27 = sub_10001EC24(v19);
  swift_setDeallocating();
  sub_1000169B0(v20, &qword_100031770, &qword_100024208);
  swift_deallocClassInstance();
  v46 = sub_1000021C8(&qword_100031778, &qword_100024210);
  v45 = v27;
  DeepLink.annotation.setter();
  v28 = v43;
  v29 = v38;
  sub_100016928(v43, v38, &qword_100031760, &qword_1000241F8);
  v30 = v25(v29, 1, v23);
  v31 = v39;
  if (v30 == 1)
  {
    sub_1000169B0(v29, &qword_100031760, &qword_1000241F8);
  }

  else
  {
    OpenURLOptions.sourceApplication.getter();
    (*(v24 + 8))(v29, v23);
  }

  DeepLink.sourceApplication.setter();
  sub_100016928(v28, v31, &qword_100031760, &qword_1000241F8);
  if (v25(v31, 1, v23) == 1)
  {
    sub_1000169B0(v31, &qword_100031760, &qword_1000241F8);
    v33 = v40;
    v32 = v41;
  }

  else
  {
    v34 = OpenURLOptions.originatingProcess.getter();
    (*(v24 + 8))(v31, v23);
    v33 = v40;
    if (v34)
    {
      v35 = [v34 bundleIdentifier];

      v32 = v41;
      if (v35)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    else
    {
      v32 = v41;
    }
  }

  DeepLink.sourceProcess.setter();
  sub_1000169B0(v28, &qword_100031760, &qword_1000241F8);
  return (*(v33 + 8))(v44, v32);
}

uint64_t sub_10001C088(char *a1)
{
  v67 = a1;
  v2 = sub_1000021C8(&qword_1000315B0, &qword_100024040);
  v3 = __chkstk_darwin(v2 - 8);
  v64 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v63 = &v59 - v5;
  v6 = type metadata accessor for OpenDeepLinkAction();
  v61 = *(v6 - 8);
  v62 = v6;
  __chkstk_darwin(v6);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DeepLink();
  v66 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v59 = &v59 - v13;
  __chkstk_darwin(v12);
  v15 = &v59 - v14;
  v16 = type metadata accessor for ScenePhase();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v59 - v21;
  sub_100019264(&v59 - v21);
  (*(v17 + 104))(v20, enum case for ScenePhase.active(_:), v16);
  v23 = static ScenePhase.== infix(_:_:)();
  v24 = *(v17 + 8);
  v24(v20, v16);
  v24(v22, v16);
  v25 = type metadata accessor for MoltresApp.WindowContentView(0);
  v26 = *(v25 + 24);
  v65 = v1;
  v27 = (v1 + v26);
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v69[0]) = v28;
  v69[1] = v29;
  sub_1000021C8(&qword_100031708, &qword_1000241A8);
  State.wrappedValue.getter();
  if ((v68 & 1) != 0 || (v23 & 1) == 0)
  {
    if (qword_100030980 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100002B24(v42, qword_100031488);
    v43 = v66;
    v44 = v67;
    v45 = *(v66 + 16);
    v45(v11, v67, v8);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v62 = v45;
      v50 = v49;
      v69[0] = v49;
      *v48 = 141558274;
      *(v48 + 4) = 1752392040;
      *(v48 + 12) = 2080;
      v62(v59, v11, v8);
      v51 = String.init<A>(describing:)();
      v53 = v52;
      (*(v66 + 8))(v11, v8);
      v54 = v51;
      v43 = v66;
      v55 = sub_100013C50(v54, v53, v69);

      *(v48 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v46, v47, "handleDeepLink - storing pendingDeepLink %{mask.hash}s", v48, 0x16u);
      sub_100002BA4(v50);
      v45 = v62;

      v44 = v67;
    }

    else
    {

      (*(v43 + 8))(v11, v8);
    }

    v56 = v63;
    v45(v63, v44, v8);
    (*(v43 + 56))(v56, 0, 1, v8);
    sub_100016928(v56, v64, &qword_1000315B0, &qword_100024040);
    sub_1000021C8(&qword_1000315D0, &qword_1000240D0);
    State.wrappedValue.setter();
    return sub_1000169B0(v56, &qword_1000315B0, &qword_100024040);
  }

  else
  {
    v64 = v25;
    if (qword_100030980 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100002B24(v30, qword_100031488);
    v31 = v66;
    v32 = *(v66 + 16);
    v32(v15, v67, v8);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v31;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v69[0] = v37;
      *v36 = 141558274;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2080;
      v32(v59, v15, v8);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      (*(v35 + 8))(v15, v8);
      v41 = sub_100013C50(v38, v40, v69);

      *(v36 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "handleDeepLink - calling openDeepLinkAction %{mask.hash}s", v36, 0x16u);
      sub_100002BA4(v37);
    }

    else
    {

      (*(v31 + 8))(v15, v8);
    }

    sub_1000021C8(&qword_1000315C8, &qword_1000240C8);
    v58 = v60;
    State.wrappedValue.getter();
    OpenDeepLinkAction.callAsFunction(_:)();
    return (*(v61 + 8))(v58, v62);
  }
}

void sub_10001C848(void *a1, uint64_t a2)
{
  v80 = a2;
  v3 = sub_1000021C8(&qword_100030FE8, &qword_1000241D0);
  __chkstk_darwin(v3 - 8);
  v78 = &v69 - v4;
  v79 = type metadata accessor for DeepLink();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000021C8(&qword_100030FE0, &unk_100023A50);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v69 - v12;
  __chkstk_darwin(v11);
  v15 = &v69 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v69 - v22;
  __chkstk_darwin(v21);
  v81 = &v69 - v24;
  v25 = [a1 userInfo];
  if (!v25)
  {
    v86 = 0u;
    v85 = 0u;
    goto LABEL_10;
  }

  v26 = v25;
  v74 = v6;
  v75 = v17;
  v76 = v16;
  v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v28;
  AnyHashable.init<A>(_:)();
  if (!*(v27 + 16) || (v29 = sub_100018150(v84), (v30 & 1) == 0))
  {

    sub_100016A88(v84);
    v85 = 0u;
    v86 = 0u;
    goto LABEL_10;
  }

  sub_1000150A0(*(v27 + 56) + 32 * v29, &v85);
  sub_100016A88(v84);

  if (!*(&v86 + 1))
  {
LABEL_10:
    v35 = &qword_100031480;
    v36 = &qword_100023F60;
    v37 = &v85;
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (qword_100030980 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100002B24(v38, qword_100031488);
    v39 = a1;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 141558274;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2112;
      *(v42 + 14) = v39;
      *v43 = v39;
      v44 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "Spotlight UserActivity not handled %{mask.hash}@", v42, 0x16u);
      sub_1000169B0(v43, &qword_1000311A0, &qword_100023C30);
    }

    return;
  }

  v31 = v84[0];
  v73 = v84[1];
  URL.init(string:)();
  v32 = v75;
  v33 = v75 + 48;
  v34 = v76;
  v72 = *(v75 + 48);
  if (v72(v15, 1, v76) == 1)
  {

    v35 = &qword_100030FE0;
    v36 = &unk_100023A50;
    v37 = v15;
LABEL_11:
    sub_1000169B0(v37, v35, v36);
    goto LABEL_12;
  }

  v71 = v33;
  v45 = *(v32 + 32);
  v45(v81, v15, v34);
  v46 = v73;
  if (v31 == 0xD000000000000014 && 0x80000001000267F0 == v73 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v70 = v31;
    URL.init(string:)();
    v47 = v76;
    if (v72(v13, 1, v76) == 1)
    {
      __break(1u);
    }

    else
    {
      v45(v23, v13, v47);
      v48 = v75;
      v72 = *(v75 + 16);
      v72(v20, v23, v47);
      v49 = v74;
      DeepLink.init(url:)();
      sub_1000021C8(&qword_100031740, &qword_1000241D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100023680;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v70;
      *(inited + 40) = v52;
      *(inited + 48) = v51;
      *(inited + 56) = v73;
      v53 = sub_10001EE04(inited);
      swift_setDeallocating();
      sub_1000169B0(inited + 32, &qword_100031748, &qword_1000241E0);
      v84[3] = sub_1000021C8(&qword_100031750, &qword_1000241E8);
      v84[0] = v53;
      DeepLink.annotation.setter();
      v54 = v81;
      v72(v10, v81, v47);
      (*(v48 + 56))(v10, 0, 1, v47);
      v55 = a1;
      v56 = v78;
      ReferrerData.Kind.init(userActivity:url:refApp:)();
      v57 = type metadata accessor for ReferrerData.Kind();
      (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
      DeepLink.referrerKind.setter();
      sub_10001C088(v49);
      (*(v77 + 8))(v49, v79);
      v58 = *(v48 + 8);
      v58(v23, v47);
      v58(v54, v47);
    }
  }

  else
  {
    v59 = v31;
    if (qword_100030980 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100002B24(v60, qword_100031488);
    v61 = a1;

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v84[0] = v66;
      *v64 = 141558786;
      *(v64 + 4) = 1752392040;
      *(v64 + 12) = 2080;
      v67 = sub_100013C50(v59, v46, v84);

      *(v64 + 14) = v67;
      *(v64 + 22) = 2160;
      *(v64 + 24) = 1752392040;
      *(v64 + 32) = 2112;
      *(v64 + 34) = v61;
      *v65 = v61;
      v68 = v61;
      _os_log_impl(&_mh_execute_header, v62, v63, "Spotlight UserActivity identifier not handled %{mask.hash}s, %{mask.hash}@", v64, 0x2Au);
      sub_1000169B0(v65, &qword_1000311A0, &qword_100023C30);

      sub_100002BA4(v66);
    }

    else
    {
    }

    (*(v75 + 8))(v81, v76);
  }
}

uint64_t sub_10001D250(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for OpenDeepLinkAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MoltresApp.WindowContentView(0);
  sub_1000021C8(&qword_1000315C8, &qword_1000240C8);
  State.wrappedValue.getter();
  OpenDeepLinkAction.callAsFunction(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10001D350(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10001D39C()
{
  v0 = type metadata accessor for AppDelegate();

  return UIApplicationDelegateAdaptor.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for MoltresApp(0);
  sub_10001D7A4(&qword_1000314A0, type metadata accessor for MoltresApp, &unk_100023FAC);
  static App.main()();
  return 0;
}

uint64_t sub_10001D47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C8(&qword_1000314A8, &qword_100023F90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001D508(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C8(&qword_1000314A8, &qword_100023F90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10001D584(uint64_t a1)
{
  sub_10001E21C(319, &unk_100031518, type metadata accessor for AppDelegate, &type metadata accessor for UIApplicationDelegateAdaptor);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10001D63C()
{
  v1 = *(type metadata accessor for MoltresApp(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1000021C8(&qword_1000314A8, &qword_100023F90);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001D714()
{
  type metadata accessor for MoltresApp(0);

  return sub_10001893C();
}

uint64_t sub_10001D7A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001D7EC(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

uint64_t sub_10001D8B4(uint64_t a1)
{
  v2 = sub_1000021C8(&qword_100031360, &qword_1000240C0);
  __chkstk_darwin(v2 - 8);
  sub_100016928(a1, &v5 - v3, &qword_100031360, &qword_1000240C0);
  return EnvironmentValues.verticalSizeClass.setter();
}

Swift::Int sub_10001D95C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000021C8(&qword_1000315A8, &qword_100024038);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10001DB7C(unint64_t *a1, uint64_t a2, int *a3)
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

  v8 = sub_1000021C8(&qword_1000315C8, &qword_1000240C8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_1000021C8(&qword_1000315D0, &qword_1000240D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_1000021C8(&qword_1000315D8, &qword_1000240D8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = sub_1000021C8(&qword_1000315E0, &unk_1000240E0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

char *sub_10001DD74(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1000021C8(&qword_1000315C8, &qword_1000240C8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1000021C8(&qword_1000315D0, &qword_1000240D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_1000021C8(&qword_1000315D8, &qword_1000240D8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = sub_1000021C8(&qword_1000315E0, &unk_1000240E0);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[9]];

  return v16(v17, a2, a2, v15);
}

void sub_10001DF58(uint64_t a1)
{
  sub_10001E1B8(319, &qword_100031650, &qword_1000315B8, &qword_100024048, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_10001E21C(319, &qword_100031658, &type metadata accessor for OpenDeepLinkAction, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_10001E168();
      if (v3 <= 0x3F)
      {
        sub_10001E1B8(319, &qword_100031668, &qword_1000315B0, &qword_100024040, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_10001E21C(319, &qword_100031670, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_10001E1B8(319, &unk_100031678, &qword_100031360, &qword_1000240C0, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_10001E21C(319, &qword_100030DC0, &type metadata accessor for GamesSettings, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10001E168()
{
  if (!qword_100031660)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100031660);
    }
  }
}

void sub_10001E1B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100002FF0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10001E21C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10001E280()
{
  sub_100002FF0(&qword_100031558, &qword_100024000);
  sub_100002FF0(&qword_100031588, &qword_100024020);
  sub_100002FF0(&qword_100031550, &qword_100023FF8);
  sub_100002FF0(&qword_100031548, &qword_100023FF0);
  sub_100016DD4(&qword_100031580, &qword_100031548, &qword_100023FF0, &protocol conformance descriptor for WindowGroup<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100016DD4(&qword_100031590, &qword_100031588, &qword_100024020, &protocol conformance descriptor for TupleCommandContent<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10001E40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100031720;
  if (!qword_100031720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031720);
  }

  return result;
}

uint64_t sub_10001E460()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E498(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001E534;

  return sub_10000435C(a1, v4);
}

uint64_t sub_10001E534(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10001E630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001E690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001E6FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001E764(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for MoltresApp.WindowContentView(0);

  return sub_10001AB30(a1, a2);
}

uint64_t sub_10001E7E4()
{
  v1 = type metadata accessor for MoltresApp.WindowContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  v7 = type metadata accessor for OpenDeepLinkAction();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_1000021C8(&qword_1000315C8, &qword_1000240C8);

  v8 = v0 + v3 + v1[7];
  v9 = type metadata accessor for DeepLink();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  sub_1000021C8(&qword_1000315D0, &qword_1000240D0);

  v11 = v1[8];
  sub_1000021C8(&qword_1000315C0, &qword_100024080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ScenePhase();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = v1[9];
  sub_1000021C8(&qword_100031358, &unk_100023E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v5 + v13, 1, v14))
    {
      (*(v15 + 8))(v5 + v13, v14);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001EB20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for MoltresApp.WindowContentView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

void sub_10001EBB4(void *a1)
{
  v3 = *(type metadata accessor for MoltresApp.WindowContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10001C848(a1, v4);
}

unint64_t sub_10001EC24(uint64_t a1)
{
  v2 = sub_1000021C8(&qword_100031770, &qword_100024208);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000021C8(&qword_100031780, &qword_100024218);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016928(v9, v5, &qword_100031770, &qword_100024208);
      v12 = *v5;
      v11 = v5[1];
      result = sub_100018070(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = sub_1000021C8(&qword_100030FE0, &unk_100023A50);
      result = sub_10001EF18(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001EE04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000021C8(&qword_100031758, &qword_1000241F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100018070(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10001EF18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C8(&qword_100030FE0, &unk_100023A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001EF88()
{
  result = qword_100031788;
  if (!qword_100031788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100031788);
  }

  return result;
}

uint64_t sub_10001EFD4()
{
  v1 = type metadata accessor for MoltresApp.WindowContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for DeepLink();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v18 = *(v4 + 64);
  v6 = (v0 + ((v2 + 16) & ~v2));

  v7 = v6 + v1[5];
  v8 = type metadata accessor for OpenDeepLinkAction();
  (*(*(v8 - 8) + 8))(v7, v8);
  sub_1000021C8(&qword_1000315C8, &qword_1000240C8);

  v9 = v6 + v1[7];
  if (!(*(v4 + 48))(v9, 1, v3))
  {
    (*(v4 + 8))(v9, v3);
  }

  sub_1000021C8(&qword_1000315D0, &qword_1000240D0);

  v10 = v1[8];
  sub_1000021C8(&qword_1000315C0, &qword_100024080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ScenePhase();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
  }

  v12 = v1[9];
  sub_1000021C8(&qword_100031358, &unk_100023E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v6 + v12, 1, v13))
    {
      (*(v14 + 8))(v6 + v12, v13);
    }
  }

  else
  {
  }

  v15 = v2 | v5;
  v16 = (((v2 + 16) & ~v2) + v19 + v5) & ~v5;

  (*(v4 + 8))(v0 + v16, v3);

  return _swift_deallocObject(v0, v16 + v18, v15 | 7);
}

uint64_t sub_10001F348()
{
  v1 = *(type metadata accessor for MoltresApp.WindowContentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for DeepLink() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10001D250(v0 + v2, v5);
}

uint64_t sub_10001F414(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F42C()
{
  sub_100002FF0(&qword_100031700, &qword_1000241A0);
  sub_100002FF0(&qword_1000316F8, &qword_100024198);
  sub_100002FF0(&qword_1000316F0, &qword_100024190);
  sub_100002FF0(&qword_1000316E8, &qword_100024188);
  type metadata accessor for ScenePhase();
  sub_100002FF0(&qword_1000316E0, &qword_100024180);
  sub_100002FF0(&qword_1000316D8, &qword_100024178);
  type metadata accessor for AppBootstrapView(255);
  sub_10001D7A4(&qword_100031728, type metadata accessor for AppBootstrapView, &unk_1000237F4);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10001D7A4(&qword_100031730, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001F690(uint64_t a1)
{
  v63 = type metadata accessor for PlayerID();
  __chkstk_darwin(v63);
  v58 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Player();
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = v3;
  v56 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000021C8(&qword_100031718, &qword_1000241C0);
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for ShimGameServicesRoot();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v52 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v8;
  __chkstk_darwin(v7);
  v10 = v45 - v9;
  v61 = type metadata accessor for Dependency();
  v53 = *(v61 - 8);
  v11 = __chkstk_darwin(v61);
  v62 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v60 = v45 - v14;
  v15 = __chkstk_darwin(v13);
  v59 = v45 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = v45 - v18;
  __chkstk_darwin(v17);
  v21 = v45 - v20;
  sub_1000021C8(&qword_1000317A8, &qword_100024228);
  v64 = v21;
  Dependency.init<A>(satisfying:with:)();
  v51 = a1;
  Player.id.getter();
  Ref<A>.init(internalID:)();
  v22 = v10;
  ShimGameServicesRoot.init(localPlayer:)();
  sub_1000021C8(&qword_1000317B0, &qword_100024238);
  v65[3] = v5;
  v65[4] = sub_100020B54(&qword_1000317B8, &type metadata accessor for ShimGameServicesRoot, &protocol conformance descriptor for ShimGameServicesRoot);
  v23 = sub_1000154BC(v65);
  v24 = *(v6 + 16);
  v49 = v22;
  v24(v23, v22, v5);
  v46 = v19;
  Dependency.init<A>(satisfying:with:)();
  v45[1] = type metadata accessor for LocalPlayerProvider();
  v25 = v54;
  v27 = v56;
  v26 = v57;
  (*(v54 + 16))(v56, v51, v57);
  v28 = v52;
  v29 = v22;
  v30 = v5;
  v47 = v5;
  v24(v52, v29, v5);
  v31 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v32 = v6;
  v48 = v6;
  v33 = (v55 + *(v6 + 80) + v31) & ~*(v6 + 80);
  v34 = swift_allocObject();
  (*(v25 + 32))(v34 + v31, v27, v26);
  (*(v32 + 32))(v34 + v33, v28, v30);
  v35 = v59;
  Dependency.init<A>(satisfying:with:)();
  Player.playerID.getter();
  PlayerID.init(playerID:)();
  v36 = v60;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for NetworkConnectionMonitor();
  v37 = v62;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_1000021C8(&qword_1000317C0, &qword_100024240);
  v38 = v53;
  v39 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100023680;
  v41 = v61;
  (*(v38 + 16))(v40 + v39, v64, v61);
  BaseObjectGraph.__allocating_init(name:_:)();
  v42 = v46;
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v63 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v43 = *(v38 + 8);
  v43(v37, v41);
  v43(v36, v41);
  v43(v35, v41);
  v43(v42, v41);
  (*(v48 + 8))(v49, v47);
  v43(v64, v41);
  return v63;
}

uint64_t sub_10001FDAC(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_1000021C8(&qword_1000317C8, &qword_100024248);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for NativeIntentDispatcher();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_10001FEEC, 0, 0);
}

uint64_t sub_10001FEEC()
{
  v1 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v14 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  type metadata accessor for DeepLinkWithReferrerIntent();
  sub_100020B54(&qword_1000317D0, &type metadata accessor for DeepLinkWithReferrerIntent, &protocol conformance descriptor for DeepLinkWithReferrerIntent);
  DeepLinkIntentImplementation.init(dispatching:routes:)();
  NativeIntentDispatcher.init()();
  sub_100020B9C();
  v7 = v1;
  NativeIntentDispatcher.registering<A>(_:)();
  v8 = *(v3 + 8);
  v0[21] = v8;
  v0[22] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v14);
  (*(v5 + 8))(v4, v6);
  sub_1000021C8(&qword_1000317E0, &qword_100024250);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = *(v3 + 16);
  v0[23] = v11;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v10 + v9, v7, v14);
  NativeIntentDispatcher.init()();
  v11(v2, v10 + v9, v14);
  swift_setDeallocating();
  v8(v10 + v9, v14);
  swift_deallocClassInstance();
  NativeIntentDispatcher.register(contentsOf:)();
  v8(v2, v14);
  v8(v7, v14);
  v12 = swift_task_alloc();
  v0[25] = v12;
  *v12 = v0;
  v12[1] = sub_100020180;

  return static GameObjectGraphBuilder.intentDispatcher()(v0 + 2);
}

uint64_t sub_100020180()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    (*(v2 + 168))(*(v2 + 160), *(v2 + 128));
    v3 = sub_1000203A4;
  }

  else
  {
    v3 = sub_1000202A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000202A4()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[12];
  v5[3] = v4;
  v5[4] = &protocol witness table for NativeIntentDispatcher;
  sub_1000154BC(v5);
  v1();
  sub_100020C00((v0 + 2), (v0 + 7));
  NativeIntentDispatcher.next.setter();
  sub_100020C70((v0 + 2));
  v2(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000203A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002043C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MainActor();
  v7[2] = a1;
  v7[3] = a2;
  result = sub_100020898(sub_100020AE4, v7, "Games/ObjectBuilders.swift", 26, 2, 38);
  *a3 = result;
  return result;
}

uint64_t sub_1000204C0()
{
  v1 = type metadata accessor for Player();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ShimGameServicesRoot();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100020608@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for Player() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ShimGameServicesRoot() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10002043C(v1 + v4, v7, a1);
}

uint64_t sub_1000206DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Player();
  __chkstk_darwin(v6);
  (*(v8 + 16))(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for ArcadeSubscription();
  BaseObjectGraph.inject<A>(_:)();

  v9 = type metadata accessor for ShimGameServicesRoot();
  v12[3] = v9;
  v12[4] = sub_100020B54(&qword_1000317B8, &type metadata accessor for ShimGameServicesRoot, &protocol conformance descriptor for ShimGameServicesRoot);
  v10 = sub_1000154BC(v12);
  (*(*(v9 - 8) + 16))(v10, a2, v9);
  type metadata accessor for LocalPlayerProvider();
  swift_allocObject();
  result = LocalPlayerProvider.init(current:gameServices:arcadeSubscription:)();
  *a3 = result;
  return result;
}

uint64_t sub_100020898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_100020B10(v17);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v17[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v14._object = 0x8000000100026910;
  v14._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v14);
  v15._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 46;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100020A50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  type metadata accessor for NetworkConnectionMonitor();
  swift_allocObject();
  v2 = NetworkConnectionMonitor.init(bagContract:)();

  *a1 = v2;
  return result;
}

void *sub_100020B10@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_100020B54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100020B9C()
{
  result = qword_1000317D8;
  if (!qword_1000317D8)
  {
    sub_100002FF0(&qword_1000317C8, &qword_100024248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000317D8);
  }

  return result;
}

uint64_t sub_100020C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C8(&qword_1000317E8, &qword_100024258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020C70(uint64_t a1)
{
  v2 = sub_1000021C8(&qword_1000317E8, &qword_100024258);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020D14(int a1, int a2, int a3, int a4)
{
  if (qword_100031D68 == -1)
  {
    if (qword_100031D70)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000211DC();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100031D70)
    {
      return _availability_version_check();
    }
  }

  if (qword_100031D60 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000211F4();
    a3 = v10;
    a4 = v9;
    v8 = dword_100031D50 < v11;
    if (dword_100031D50 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100031D54 > a3)
      {
        return 1;
      }

      if (dword_100031D54 >= a3)
      {
        return dword_100031D58 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100031D50 < a2;
  if (dword_100031D50 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100020EA8(uint64_t result)
{
  v1 = qword_100031D70;
  if (qword_100031D70)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100031D70 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100031D50, &dword_100031D54, &dword_100031D58);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

Swift::String __swiftcall localizedString(_:comment:)(Swift::String _, Swift::String comment)
{
  v2 = localizedString(_:comment:)(_._countAndFlagsBits, _._object, comment._countAndFlagsBits, comment._object);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t Dependency.init<A>(satisfying:with:)()
{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}
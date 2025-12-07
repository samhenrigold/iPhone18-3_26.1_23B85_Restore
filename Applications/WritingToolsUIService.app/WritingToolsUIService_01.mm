uint64_t sub_100020AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100020B6C, v5, v4);
}

uint64_t sub_100020B6C()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for WritingToolsView(0) + 84));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100020C40;

  return sub_1001A2C88();
}

uint64_t sub_100020C40()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10002B2C0, v3, v2);
}

uint64_t sub_100020D84(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_100153D18();
}

double sub_100020ED0@<D0>(_OWORD *a1@<X8>)
{
  sub_1000284C4();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100020F20(void *a1, uint64_t a2)
{
  sub_1000284C4();

  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100020F80(__int128 *a1)
{
  v1 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v1 - 8);
  type metadata accessor for WritingToolsView(0);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  State.wrappedValue.getter();
  sub_100025A68();
  NavigationPath.append<A>(_:)();
  return State.wrappedValue.setter();
}

uint64_t sub_100021098(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WritingToolsView(0);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  State.wrappedValue.getter();
  v7 = NavigationPath.isEmpty.getter();
  result = (*(v3 + 8))(v5, v2);
  if (v7)
  {
    sub_10000341C(&unk_10025B200, &qword_1001CFB18);
    State.wrappedValue.getter();
    if (v11)
    {
      sub_100028458(v10, v9);
      sub_10000F500(v10, &unk_10025B1C0, &unk_1001CFA90);
      sub_100027874(v9, v9[3]);
      if (qword_10025A5E0 != -1)
      {
        swift_once();
      }

      sub_10000E3E4(qword_100276DF0, *(a1 + *(v6 + 44)));
      return sub_10000F4B4(v9);
    }

    else
    {
      return sub_10000F500(v10, &unk_10025B1C0, &unk_1001CFA90);
    }
  }

  return result;
}

void sub_100021278(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = &v27;
  v27 = _swiftEmptyArrayStorage;
  NavigationPath.withCollectionProxy(_:)();
  v8 = v27[2];
  if (v8)
  {
    v9 = &v27[4 * v8];
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = *(v9 + 24);
    sub_10000F3F4(*v9, v11, v12, *(v9 + 24));

    v14 = *a3;
    v15 = *(a3 + 8);

    if ((v15 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      v14 = v27;
    }

    swift_getKeyPath();
    v27 = v14;
    sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      v18 = v10;
      v19 = v11;
      v20 = v12;
      v21 = v13;
      goto LABEL_14;
    }

    if (!v13)
    {
      [Strong setModalInPresentation:1];

      v18 = v10;
      v19 = v11;
      v20 = v12;
      v21 = 0;
      goto LABEL_14;
    }

    if (v13 == 1)
    {
      [Strong setModalInPresentation:1];

      v18 = v10;
      v19 = v11;
      v20 = v12;
      v21 = 1;
LABEL_14:
      sub_10000F428(v18, v19, v20, v21);
      return;
    }

    if (v12 | v11 | v10)
    {
      [Strong setModalInPresentation:1];
      goto LABEL_17;
    }

LABEL_11:
    [Strong setModalInPresentation:0];
LABEL_17:

    return;
  }

  v22 = *a3;
  v23 = *(a3 + 8);

  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v22 = v27;
  }

  swift_getKeyPath();
  v27 = v22;
  sub_10002B028(&qword_10025B1E0, type metadata accessor for CommonUIManager, &unk_1001DD4CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    goto LABEL_11;
  }
}

uint64_t sub_10002168C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for WritingToolsView(0);
  v5 = *(v4 - 8);
  v81 = v4;
  v82 = v5;
  __chkstk_darwin(v4);
  v83 = v6;
  v84 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v7 - 8);
  v85 = &v81 - v8;
  v88 = &v89;
  v89 = _swiftEmptyArrayStorage;
  NavigationPath.withCollectionProxy(_:)();
  v9 = v89;
  v89 = _swiftEmptyArrayStorage;
  v87 = &v89;
  NavigationPath.withCollectionProxy(_:)();
  v10 = v89;
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000F34C(v11, qword_100276F08);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  v86 = a3;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v89 = v16;
    *v15 = 136315138;
    v17 = Array.description.getter();
    v19 = sub_10002510C(v17, v18, &v89);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "old navigation path: %s", v15, 0xCu);
    sub_10000F4B4(v16);
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v89 = v23;
    *v22 = 136315138;
    v24 = Array.description.getter();
    v26 = sub_10002510C(v24, v25, &v89);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "new navigation path: %s", v22, 0xCu);
    sub_10000F4B4(v23);
  }

  v27 = v9[2];
  if (v27)
  {
    v28 = &v9[4 * v27];
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[2];
    v32 = *(v28 + 24);
    sub_10000F3F4(*v28, v30, v31, *(v28 + 24));
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 255;
  }

  v33 = v10[2];
  if (v33)
  {
    v34 = &v10[4 * v33];
    v36 = *v34;
    v35 = v34[1];
    v37 = v34[2];
    v38 = *(v34 + 24);
    sub_10000F3F4(*v34, v35, v37, *(v34 + 24));
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v37 = 0;
    v38 = 255;
  }

  if (v32 == 1)
  {
    if (v38 == 255)
    {
      v59 = type metadata accessor for TaskPriority();
      v60 = v85;
      (*(*(v59 - 8) + 56))(v85, 1, 1, v59);
      v61 = v84;
      sub_10002631C(v86, v84);
      type metadata accessor for MainActor();
      v62 = static MainActor.shared.getter();
      v63 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = v62;
      *(v64 + 24) = &protocol witness table for MainActor;
      sub_100029074(v61, v64 + v63, type metadata accessor for WritingToolsView);
      sub_10015C9C8(0, 0, v60, &unk_1001CFEA8, v64);

      v65 = v29;
      v66 = v30;
      v67 = v31;
LABEL_40:
      v74 = 1;
      return sub_1000278C0(v65, v66, v67, v74);
    }

    if (v30 == 1)
    {
      if (v38 == 1)
      {
        if (v35 == 1)
        {
          sub_1000278C0(v29, 1, v31, 1);
LABEL_28:
          v65 = v36;
          v66 = 1;
LABEL_39:
          v67 = v37;
          goto LABEL_40;
        }

        v75 = type metadata accessor for TaskPriority();
        v76 = v85;
        (*(*(v75 - 8) + 56))(v85, 1, 1, v75);
        v77 = v84;
        sub_10002631C(v86, v84);
        type metadata accessor for MainActor();
        v78 = static MainActor.shared.getter();
        v79 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        v80 = swift_allocObject();
        *(v80 + 16) = v78;
        *(v80 + 24) = &protocol witness table for MainActor;
        sub_100029074(v77, v80 + v79, type metadata accessor for WritingToolsView);
        sub_10015C9C8(0, 0, v76, &unk_1001CFE98, v80);

        sub_1000278C0(v29, 1, v31, 1);
LABEL_38:
        v65 = v36;
        v66 = v35;
        goto LABEL_39;
      }

      v55 = v29;
      v56 = 1;
    }

    else
    {
      v55 = v29;
      v56 = v30;
    }

    v57 = v31;
    v58 = 1;
LABEL_35:
    sub_1000278C0(v55, v56, v57, v58);
    goto LABEL_36;
  }

  if (v32 != 255)
  {
    v55 = v29;
    v56 = v30;
    v57 = v31;
    v58 = v32;
    goto LABEL_35;
  }

  if (v38 == 1)
  {
    if (v35 == 1)
    {
      goto LABEL_28;
    }

    if ((v37 & 1) == 0)
    {
      v68 = type metadata accessor for TaskPriority();
      v69 = v85;
      (*(*(v68 - 8) + 56))(v85, 1, 1, v68);
      v70 = v84;
      sub_10002631C(v86, v84);
      type metadata accessor for MainActor();
      v71 = static MainActor.shared.getter();
      v72 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v73 = swift_allocObject();
      *(v73 + 16) = v71;
      *(v73 + 24) = &protocol witness table for MainActor;
      sub_100029074(v70, v73 + v72, type metadata accessor for WritingToolsView);
      sub_10015C9C8(0, 0, v69, &unk_1001CFEB8, v73);
    }

    goto LABEL_38;
  }

  if (v38 != 255)
  {
LABEL_36:
    v65 = v36;
    v66 = v35;
    v67 = v37;
    v74 = v38;
    return sub_1000278C0(v65, v66, v67, v74);
  }

  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  v39 = v86;
  Bindable.wrappedValue.getter();
  v40 = v89;
  swift_getKeyPath();
  v89 = v40;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = v40[6];
  v42 = v40[7];
  v43 = v40[8];
  v44 = *(v40 + 72);
  sub_10000F3F4(v41, v42, v43, *(v40 + 72));

  if (v44 != 1)
  {
    return sub_10000F428(v41, v42, v43, v44);
  }

  if (v42 != 1)
  {
    v46 = type metadata accessor for TaskPriority();
    v47 = v85;
    (*(*(v46 - 8) + 56))(v85, 1, 1, v46);
    v48 = v84;
    sub_10002631C(v39, v84);
    type metadata accessor for MainActor();
    v49 = static MainActor.shared.getter();
    v50 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v51 = v50 + v83;
    v52 = (v50 + v83) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    *(v53 + 16) = v49;
    *(v53 + 24) = &protocol witness table for MainActor;
    sub_100029074(v48, v53 + v50, type metadata accessor for WritingToolsView);
    *(v53 + v51) = v43 & 1;
    v54 = v53 + v52;
    *(v54 + 8) = v41;
    *(v54 + 16) = v42;
    sub_10015C9C8(0, 0, v47, &unk_1001CFEF0, v53);
  }

  return result;
}

uint64_t sub_10002203C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 144) = a6;
  *(v7 + 152) = a7;
  *(v7 + 316) = a5;
  *(v7 + 136) = a4;
  *(v7 + 160) = type metadata accessor for MainActor();
  *(v7 + 168) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 176) = v9;
  *(v7 + 184) = v8;

  return _swift_task_switch(sub_1000220E0, v9, v8);
}

uint64_t sub_1000220E0()
{
  v1 = *(v0 + 316);
  *(v0 + 312) = *(type metadata accessor for WritingToolsView(0) + 80);
  *(v0 + 192) = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v2 = *(v0 + 16);
  swift_getKeyPath();
  *(v0 + 24) = v2;
  *(v0 + 200) = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 32);

  if (v1 == *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isHandoff))
  {
    *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isHandoff) = *(v0 + 316);
  }

  else
  {
    v4 = *(v0 + 316);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    *(v0 + 32) = v3;
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  *(v0 + 208) = 0;
  Bindable.wrappedValue.getter();
  v6 = *(v0 + 40);
  swift_getKeyPath();
  *(v0 + 48) = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 216) = *(v6 + 32);

  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  *v7 = v0;
  v7[1] = sub_1000223B0;

  return sub_10007AB54();
}

uint64_t sub_1000223B0()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_1000224F4, v3, v2);
}

uint64_t sub_1000224F4()
{
  Bindable.wrappedValue.getter();
  v1 = v0[7];
  swift_getKeyPath();
  v0[8] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 32);

  if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy) == 1)
  {
    *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy) = 1;

    v3 = v0[19];
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = 1;
    v0[9] = v2;
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v3 = v0[19];
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v5 = v0[18] & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    Bindable.wrappedValue.getter();
    v6 = v0[15];
    swift_getKeyPath();
    v0[16] = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[29] = *(v6 + 32);

    v0[30] = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v0[31] = v7;
    v0[32] = v8;
    v10 = sub_10002297C;
    goto LABEL_20;
  }

LABEL_10:
  Bindable.wrappedValue.getter();
  v11 = v0[10];
  swift_getKeyPath();
  v0[11] = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + 32);

  swift_getKeyPath();
  v0[12] = v12;
  sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v12 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24) == 255)
  {

LABEL_15:

    v14 = v0[1];

    return v14();
  }

  if (*(v12 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24))
  {
  }

  else
  {
    v13 = *(v12 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);

    if (v13 == 5)
    {
      goto LABEL_15;
    }
  }

  Bindable.wrappedValue.getter();
  v16 = v0[13];
  swift_getKeyPath();
  v0[14] = v16;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[34] = *(v16 + 32);

  v0[35] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v9 = v17;
  v0[36] = v7;
  v0[37] = v17;
  v10 = sub_100022BBC;
LABEL_20:

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_10002297C()
{
  v1 = v0[19];
  sub_10006CF60("Composition", 11, 2);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_100022A30;
  v3 = v0[18];

  return sub_10007DE34(v3, v1);
}

uint64_t sub_100022A30()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return _swift_task_switch(sub_100022B50, v3, v2);
}

uint64_t sub_100022B50(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 176);
  v4 = *(v2 + 184);

  return _swift_task_switch(sub_10002B2C4, v3, v4);
}

uint64_t sub_100022BBC()
{
  sub_10006CF60("Composition", 11, 2);
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_100022C68;

  return sub_10007DE34(0, 0xE000000000000000);
}

uint64_t sub_100022C68()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_100022D88, v3, v2);
}

uint64_t sub_100022D88(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 176);
  v4 = *(v2 + 184);

  return _swift_task_switch(sub_100022DF4, v3, v4);
}

uint64_t sub_100022DF4(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_100022E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100022EEC, v6, v5);
}

uint64_t sub_100022EEC()
{
  type metadata accessor for WritingToolsView(0);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v1 = v0[2];
  swift_getKeyPath();
  v0[3] = v1;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[8] = *(v1 + 32);

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_100013188;

  return sub_10007AB54();
}

uint64_t sub_10002303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002310C, v6, v5);
}

uint64_t sub_10002310C(uint64_t a1, uint64_t a2)
{
  v3 = v2[11];

  type metadata accessor for WritingToolsView(0);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v4 = v2[5];
  swift_getKeyPath();
  v2[6] = v4;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 32);

  swift_getKeyPath();
  v2[7] = v5;
  sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v5 + v6, v3, &unk_100262580, &qword_1001CFF70);

  v7 = type metadata accessor for CompositionModel.Session(0);
  LODWORD(v5) = (*(*(v7 - 8) + 48))(v3, 1, v7);
  sub_10000F500(v3, &unk_100262580, &qword_1001CFF70);
  if (v5 != 1)
  {
    Bindable.wrappedValue.getter();
    v8 = v2[8];
    swift_getKeyPath();
    v2[9] = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_10007CE14(0, 0, 0, 0);
  }

  v9 = v2[1];

  return v9();
}

void *sub_1000233EC(uint64_t a1)
{
  v2 = type metadata accessor for WritingToolsView(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (a1 + *(v2 + 100));
    v6 = *v5;
    v7 = *(v5 + 1);
    LOBYTE(v5) = v5[16];
    LOBYTE(v17) = v6;
    v18 = v7;
    v19 = v5;
    sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.wrappedValue.getter();
    [v4 enableIntelligentEntryFieldView:LOBYTE(v16[0])];
    swift_unknownObjectRelease();
  }

  v8 = sub_10000FE5C();
  v9 = (a1 + *(v2 + 92));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v17) = v10;
  v18 = v11;
  LOBYTE(v16[0]) = v8 & 1;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  v12 = (a1 + *(v2 + 100));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v12) = v12[16];
  LOBYTE(v17) = v13;
  v18 = v14;
  v19 = v12;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  result = FocusState.wrappedValue.getter();
  if (LOBYTE(v16[0]) == 1)
  {
    sub_10000341C(&unk_10025B200, &qword_1001CFB18);
    State.wrappedValue.getter();
    if (v20)
    {
      sub_100028458(&v17, v16);
      sub_10000F500(&v17, &unk_10025B1C0, &unk_1001CFA90);
      sub_100027874(v16, v16[3]);
      if (qword_10025A618 != -1)
      {
        swift_once();
      }

      sub_100009C54(qword_100276E28);
      return sub_10000F4B4(v16);
    }

    else
    {
      return sub_10000F500(&v17, &unk_10025B1C0, &unk_1001CFA90);
    }
  }

  return result;
}

uint64_t sub_100023600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100020B6C, v6, v5);
}

BOOL sub_100023698(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v11, 0);
    (*(v8 + 8))(v10, v7);
    v11 = v25;
  }

  if (v11)
  {
    swift_getKeyPath();
    v25 = v11;
    sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v11 + 57) == 1)
    {
      swift_getKeyPath();
      v25 = v11;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v14 = *(v11 + 32);
      v15 = *(v11 + 40);

      if ((v15 & 1) == 0 && v14 == 1)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v16 = objc_opt_self();
  v17 = [v16 currentTraitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (!v18)
  {
    return 1;
  }

  v19 = [v16 currentTraitCollection];
  v20 = [v19 userInterfaceIdiom];

  if (a4)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20 == 6;
  }

  return v21 && a1 == 5;
}

uint64_t sub_100023944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100013034, v6, v5);
}

uint64_t sub_1000239DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100023A74, v6, v5);
}

uint64_t sub_100023A74()
{
  type metadata accessor for WritingToolsView(0);
  sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v1 = v0[2];
  swift_getKeyPath();
  v0[3] = v1;
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[8] = *(v1 + 24);

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_100013188;

  return sub_1000B6880(0);
}

uint64_t sub_100023BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 160) = v13;
  *(v8 + 168) = v14;
  *(v8 + 324) = a8;
  *(v8 + 144) = a6;
  *(v8 + 152) = a7;
  *(v8 + 128) = a4;
  *(v8 + 136) = a5;
  *(v8 + 176) = type metadata accessor for MainActor();
  *(v8 + 184) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 192) = v10;
  *(v8 + 200) = v9;

  return _swift_task_switch(sub_100023C78, v10, v9);
}

uint64_t sub_100023C78()
{
  *(v0 + 320) = *(type metadata accessor for WritingToolsView(0) + 80);
  *(v0 + 208) = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  Bindable.wrappedValue.getter();
  v1 = *(v0 + 16);
  swift_getKeyPath();
  *(v0 + 24) = v1;
  *(v0 + 216) = sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 32);

  if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isHandoff) == 1)
  {
    *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isHandoff) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    *(v0 + 32) = v2;
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = *(v0 + 324);
  Bindable.wrappedValue.getter();
  v8 = *(v0 + 40);
  swift_getKeyPath();
  *(v0 + 48) = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10002879C(v6, v5, v4, v7);
  sub_1000752D8(v6, v5, v4, v7);

  Bindable.wrappedValue.getter();
  v9 = *(v0 + 56);
  swift_getKeyPath();
  *(v0 + 64) = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 224) = *(v9 + 32);

  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  *v10 = v0;
  v10[1] = sub_100023FE0;

  return sub_10007AB54();
}

uint64_t sub_100023FE0()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return _swift_task_switch(sub_100024124, v3, v2);
}

uint64_t sub_100024124()
{
  v1 = v0[21];
  if (v1)
  {
    if ((v1 & 0x2000000000000000) != 0 ? HIBYTE(v1) & 0xF : v0[20] & 0xFFFFFFFFFFFFLL)
    {
      Bindable.wrappedValue.getter();
      v3 = v0[14];
      swift_getKeyPath();
      v0[15] = v3;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v0[30] = *(v3 + 32);

      v0[31] = static MainActor.shared.getter();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
      v0[32] = v4;
      v0[33] = v5;
      v7 = sub_100024448;
LABEL_17:

      return _swift_task_switch(v7, v4, v6);
    }
  }

  Bindable.wrappedValue.getter();
  v8 = v0[9];
  swift_getKeyPath();
  v0[10] = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v8 + 32);

  swift_getKeyPath();
  v0[11] = v9;
  sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v9 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24) != 255)
  {
    if (*(v9 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24))
    {
    }

    else
    {
      v10 = *(v9 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);

      if (v10 == 5)
      {
        goto LABEL_12;
      }
    }

    Bindable.wrappedValue.getter();
    v13 = v0[12];
    swift_getKeyPath();
    v0[13] = v13;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[35] = *(v13 + 32);

    v0[36] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v14;
    v0[37] = v4;
    v0[38] = v14;
    v7 = sub_100024688;
    goto LABEL_17;
  }

LABEL_12:

  v11 = v0[1];

  return v11();
}

uint64_t sub_100024448()
{
  v1 = v0[21];
  sub_10006CF60("Composition", 11, 2);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_1000244FC;
  v3 = v0[20];

  return sub_10007DE34(v3, v1);
}

uint64_t sub_1000244FC()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return _swift_task_switch(sub_10002461C, v3, v2);
}

uint64_t sub_10002461C(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 192);
  v4 = *(v2 + 200);

  return _swift_task_switch(sub_10002B2C8, v3, v4);
}

uint64_t sub_100024688()
{
  sub_10006CF60("Composition", 11, 2);
  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_100024734;

  return sub_10007DE34(0, 0xE000000000000000);
}

uint64_t sub_100024734()
{
  v1 = *v0;

  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return _swift_task_switch(sub_100024854, v3, v2);
}

uint64_t sub_100024854(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 192);
  v4 = *(v2 + 200);

  return _swift_task_switch(sub_1000248C0, v3, v4);
}

uint64_t sub_1000248C0(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_100024948@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 10);
  v5 = static Alignment.center.getter();
  v7 = v6;
  v8 = static Edge.Set.vertical.getter();
  result = static SafeAreaRegions.all.getter();
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = result;
  *(a2 + 32) = v8;
  return result;
}

void *sub_1000249A4(uint64_t a1, unint64_t **a2)
{
  type metadata accessor for NavigationPath.CollectionProxy();
  sub_10002B028(&qword_10025B5E0, &type metadata accessor for NavigationPath.CollectionProxy, &protocol conformance descriptor for NavigationPath.CollectionProxy);
  v3 = dispatch thunk of Collection.count.getter();
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
LABEL_8:
    *a2 = v4;
  }

  v5 = v3;
  v22 = _swiftEmptyArrayStorage;
  sub_100163C80(0, v3 & ~(v3 >> 63), 0);
  v4 = _swiftEmptyArrayStorage;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v16 = a2;
    do
    {
      v7 = dispatch thunk of Collection.subscript.read();
      sub_100028458(v8, v18);
      v7(v17, 0);
      sub_100008198(v18, v17);
      sub_10000341C(&qword_10025B5E8, &qword_1001CFFA0);
      swift_dynamicCast();
      v9 = v19;
      v10 = v20;
      v11 = v21;
      v22 = v4;
      v13 = v4[2];
      v12 = v4[3];
      if (v13 >= v12 >> 1)
      {
        v15 = v19;
        sub_100163C80((v12 > 1), v13 + 1, 1);
        v9 = v15;
        v4 = v22;
      }

      v4[2] = v13 + 1;
      v14 = &v4[4 * v13];
      *(v14 + 2) = v9;
      v14[6] = v10;
      *(v14 + 56) = v11;
      dispatch thunk of Collection.formIndex(after:)();
      --v5;
    }

    while (v5);
    a2 = v16;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100024B98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allowedResultOptions);
  return result;
}

uint64_t sub_100024CC0@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t type metadata accessor for WritingToolsView(uint64_t a1)
{
  result = qword_10025B458;
  if (!qword_10025B458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024DF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

uint64_t sub_100024F00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002B028(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_10002510C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000251D8(v11, 0, 0, 1, a1, a2);
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
    sub_10002B0D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000F4B4(v11);
  return v7;
}

unint64_t sub_1000251D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000252E4(a5, a6);
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

void *sub_1000252E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100025330(a1, a2);
  sub_100025460(&off_100249E28);
  return v3;
}

void *sub_100025330(uint64_t a1, unint64_t a2)
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

  v6 = sub_100095E10(v5, 0);
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
        v7 = sub_100095E10(v10, 0);
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

uint64_t sub_100025460(uint64_t result)
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

  result = sub_10002554C(result, v11, 1, v3);
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

char *sub_10002554C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_10025BA00, &qword_1001D4100);
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

unint64_t sub_100025648()
{
  result = qword_10025B270;
  if (!qword_10025B270)
  {
    sub_100003E34(&qword_10025B268, &qword_1001CFC18);
    sub_100025700();
    sub_100007120(&qword_10025B388, &unk_10025B390, &unk_1001CFC90, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B270);
  }

  return result;
}

unint64_t sub_100025700()
{
  result = qword_10025B278;
  if (!qword_10025B278)
  {
    sub_100003E34(&qword_10025B280, &qword_1001CFC20);
    sub_10002578C();
    sub_100026044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B278);
  }

  return result;
}

unint64_t sub_10002578C()
{
  result = qword_10025B288;
  if (!qword_10025B288)
  {
    sub_100003E34(&qword_10025B290, &qword_1001CFC28);
    sub_100025818();
    sub_100025E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B288);
  }

  return result;
}

unint64_t sub_100025818()
{
  result = qword_10025B298;
  if (!qword_10025B298)
  {
    sub_100003E34(&qword_10025B2A0, &qword_1001CFC30);
    sub_100003E34(&qword_10025B2A8, &qword_1001CFC38);
    sub_100003E34(&qword_10025B2B0, &qword_1001CFC40);
    sub_100025928();
    sub_100025A68();
    sub_100025ABC();
    swift_getOpaqueTypeConformance2();
    sub_100025D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B298);
  }

  return result;
}

unint64_t sub_100025928()
{
  result = qword_10025B2B8;
  if (!qword_10025B2B8)
  {
    sub_100003E34(&qword_10025B2A8, &qword_1001CFC38);
    type metadata accessor for ProofreadingView(255);
    sub_10002B028(&qword_10025B2C0, type metadata accessor for ProofreadingView, &protocol conformance descriptor for ProofreadingView);
    swift_getOpaqueTypeConformance2();
    sub_100025A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B2B8);
  }

  return result;
}

unint64_t sub_100025A14()
{
  result = qword_10025B2C8;
  if (!qword_10025B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B2C8);
  }

  return result;
}

unint64_t sub_100025A68()
{
  result = qword_10025B2D0;
  if (!qword_10025B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B2D0);
  }

  return result;
}

unint64_t sub_100025ABC()
{
  result = qword_10025B2D8;
  if (!qword_10025B2D8)
  {
    sub_100003E34(&qword_10025B2B0, &qword_1001CFC40);
    sub_10002971C(&qword_10025B2E0, &qword_10025B2E8, &qword_1001CFC48, sub_100025BA0);
    sub_100007120(&qword_10025B310, &qword_10025B318, &qword_1001CFC60, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B2D8);
  }

  return result;
}

unint64_t sub_100025BA0()
{
  result = qword_10025B2F0;
  if (!qword_10025B2F0)
  {
    sub_100003E34(&qword_10025B2F8, &qword_1001CFC50);
    sub_100003E34(&unk_10025B300, &qword_1001CFC58);
    type metadata accessor for CompositionModel(255);
    type metadata accessor for CompositionView(255);
    type metadata accessor for WritingToolsModel(255);
    sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView, &unk_1001D93A8);
    sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    swift_getOpaqueTypeConformance2();
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B2F0);
  }

  return result;
}

unint64_t sub_100025D5C()
{
  result = qword_10025B320;
  if (!qword_10025B320)
  {
    sub_100003E34(&qword_10025B328, &qword_1001CFC68);
    type metadata accessor for ModelResponseView(255);
    sub_10002B028(&qword_10025B330, type metadata accessor for ModelResponseView, &protocol conformance descriptor for ModelResponseView);
    swift_getOpaqueTypeConformance2();
    sub_100025A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B320);
  }

  return result;
}

unint64_t sub_100025E48()
{
  result = qword_10025B338;
  if (!qword_10025B338)
  {
    sub_100003E34(&qword_10025B340, &qword_1001CFC70);
    sub_100003E34(&qword_10025B348, &qword_1001CFC78);
    sub_100003E34(&qword_10025B2B0, &qword_1001CFC40);
    sub_100025F58();
    sub_100025A68();
    sub_100025ABC();
    swift_getOpaqueTypeConformance2();
    sub_100025D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B338);
  }

  return result;
}

unint64_t sub_100025F58()
{
  result = qword_10025B350;
  if (!qword_10025B350)
  {
    sub_100003E34(&qword_10025B348, &qword_1001CFC78);
    type metadata accessor for RewritingView(255);
    sub_10002B028(&qword_10025B358, type metadata accessor for RewritingView, &protocol conformance descriptor for RewritingView);
    swift_getOpaqueTypeConformance2();
    sub_100025A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B350);
  }

  return result;
}

unint64_t sub_100026044()
{
  result = qword_10025B360;
  if (!qword_10025B360)
  {
    sub_100003E34(&qword_10025B368, &qword_1001CFC80);
    sub_100026208();
    sub_100003E34(&unk_10025B300, &qword_1001CFC58);
    type metadata accessor for CompositionModel(255);
    type metadata accessor for CompositionView(255);
    type metadata accessor for WritingToolsModel(255);
    sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView, &unk_1001D93A8);
    sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    swift_getOpaqueTypeConformance2();
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B360);
  }

  return result;
}

unint64_t sub_100026208()
{
  result = qword_10025B370;
  if (!qword_10025B370)
  {
    sub_100003E34(&qword_10025B378, &qword_1001CFC88);
    sub_10002B028(&qword_10025B380, type metadata accessor for QuestionnaireView, &unk_1001DDA64);
    sub_100025A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B370);
  }

  return result;
}

double sub_1000262C8@<D0>(_OWORD *a3@<X8>)
{
  sub_1000284C4();
  EnvironmentValues.subscript.getter();
  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t sub_10002631C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WritingToolsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026384(__int128 *a1)
{
  type metadata accessor for WritingToolsView(0);

  return sub_100020F80(a1);
}

unint64_t sub_100026404()
{
  result = qword_10025B3A0;
  if (!qword_10025B3A0)
  {
    sub_100003E34(&qword_10025B230, &qword_1001CFBE0);
    sub_1000264BC();
    sub_100007120(&qword_10025B3C8, &qword_10025B3D0, &unk_1001CFCD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B3A0);
  }

  return result;
}

unint64_t sub_1000264BC()
{
  result = qword_10025B3A8;
  if (!qword_10025B3A8)
  {
    sub_100003E34(&qword_10025B228, &qword_1001CFBD8);
    sub_100026548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B3A8);
  }

  return result;
}

unint64_t sub_100026548()
{
  result = qword_10025B3B0;
  if (!qword_10025B3B0)
  {
    sub_100003E34(&qword_10025B220, &qword_1001CFBD0);
    sub_100007120(&qword_10025B3B8, &qword_10025B3C0, &qword_1001CFCC8, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_100007120(&qword_10025B310, &qword_10025B318, &qword_1001CFC60, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B3B0);
  }

  return result;
}

uint64_t sub_10002662C()
{
  v1 = type metadata accessor for WritingToolsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  j__swift_release(*(v5 + 16), *(v5 + 24));
  v6 = v1[6];
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  swift_unknownObjectWeakDestroy();

  v8 = v5 + v1[17];
  v9 = type metadata accessor for NavigationPath();
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);

  if (*(v5 + v1[19] + 24))
  {
    sub_10000F4B4((v5 + v1[19]));
  }

  v10 = v1[20];
  v11 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  v12 = v1[24];
  sub_10000341C(&qword_10025A920, &qword_1001CFB10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000269BC()
{
  result = qword_10025B3D8;
  if (!qword_10025B3D8)
  {
    sub_100003E34(&qword_10025B240, &qword_1001CFBF0);
    sub_100003E34(&qword_10025B230, &qword_1001CFBE0);
    sub_100026404();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B3D8);
  }

  return result;
}

uint64_t sub_100026AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for WritingToolsView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_100026B60(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WritingToolsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100026C3C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[17];
      goto LABEL_3;
    }

    v14 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[20];
      goto LABEL_3;
    }

    v15 = sub_10000341C(&qword_10025B3F8, &qword_1001CFD68);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[24];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100026E38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
    return result;
  }

  v13 = sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[17];
    goto LABEL_3;
  }

  v14 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[20];
    goto LABEL_3;
  }

  v15 = sub_10000341C(&qword_10025B3F8, &qword_1001CFD68);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[24];

  return v16(v17, a2, a2, v15);
}

void sub_100027020(uint64_t a1)
{
  sub_100027440(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10002755C(319, &qword_10025B470, &unk_10025D690, &qword_1001D2750, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100027440(319, &qword_10025B480, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1000081B0(319, &qword_10025B488, BSAuditToken_ptr);
        if (v4 <= 0x3F)
        {
          sub_10002750C(319, &qword_10025B490, &type metadata for String, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1000274A4(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for UIWritingToolsResultOptions(319);
              if (v7 <= 0x3F)
              {
                sub_100027440(319, &qword_100264EB0, &type metadata accessor for NavigationPath, &type metadata accessor for State);
                if (v8 <= 0x3F)
                {
                  sub_10002750C(319, &qword_10025B4B0, &type metadata for String, &type metadata accessor for State);
                  if (v9 <= 0x3F)
                  {
                    sub_10002755C(319, &qword_10025B4B8, &unk_10025B1C0, &unk_1001CFA90, &type metadata accessor for State);
                    if (v10 <= 0x3F)
                    {
                      sub_100027440(319, &qword_10025B4C0, type metadata accessor for WritingToolsModel, &type metadata accessor for Bindable);
                      if (v11 <= 0x3F)
                      {
                        sub_100027440(319, &qword_10025B4C8, type metadata accessor for ProofreadingModel, &type metadata accessor for State);
                        if (v12 <= 0x3F)
                        {
                          sub_10002755C(319, &unk_10025B4D0, &unk_10025B1D0, &qword_1001D31D0, &type metadata accessor for State);
                          if (v13 <= 0x3F)
                          {
                            sub_10002750C(319, &qword_10025DE40, &type metadata for Bool, &type metadata accessor for State);
                            if (v14 <= 0x3F)
                            {
                              sub_10002755C(319, &unk_10025B4E0, &qword_10025AD60, &qword_1001CEA18, &type metadata accessor for Environment);
                              if (v15 <= 0x3F)
                              {
                                sub_1000275C0();
                                if (v16 <= 0x3F)
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
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100027440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000274A4(uint64_t a1)
{
  if (!qword_10025B498)
  {
    sub_1000081B0(255, &qword_10025B4A0, WTSmartReplyConfiguration_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10025B498);
    }
  }
}

void sub_10002750C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10002755C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003E34(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000275C0()
{
  if (!qword_10025B4F0)
  {
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_10025B4F0);
    }
  }
}

uint64_t sub_100027618()
{
  sub_100003E34(&qword_10025B258, &qword_1001CFC08);
  sub_100003E34(&qword_10025B250, &qword_1001CFC00);
  type metadata accessor for NavigationPath();
  sub_100003E34(&qword_10025B248, &qword_1001CFBF8);
  sub_100003E34(&qword_10025B240, &qword_1001CFBF0);
  sub_1000269BC();
  sub_10002B028(&qword_10025B3E0, &type metadata accessor for NavigationPath, &protocol conformance descriptor for NavigationPath);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000277A4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_1000277B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100027800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void *sub_100027874(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000278C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_10000F428(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1000278D4(uint64_t a1)
{
  v4 = *(type metadata accessor for WritingToolsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_100022E54(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000279C4()
{
  v1 = type metadata accessor for WritingToolsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  j__swift_release(*(v5 + 16), *(v5 + 24));
  v6 = v1[6];
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  swift_unknownObjectWeakDestroy();

  v8 = v5 + v1[17];
  v9 = type metadata accessor for NavigationPath();
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);

  if (*(v5 + v1[19] + 24))
  {
    sub_10000F4B4((v5 + v1[19]));
  }

  v10 = v1[20];
  v11 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  v12 = v1[24];
  sub_10000341C(&qword_10025A920, &qword_1001CFB10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100027D44(uint64_t a1)
{
  v4 = *(type metadata accessor for WritingToolsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_10002303C(a1, v6, v7, v1 + v5);
}

uint64_t sub_100027E34(uint64_t a1)
{
  v4 = *(type metadata accessor for WritingToolsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_100022E54(a1, v6, v7, v1 + v5);
}

uint64_t sub_100027F2C()
{
  v1 = type metadata accessor for WritingToolsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  j__swift_release(*(v5 + 16), *(v5 + 24));
  v6 = v1[6];
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  swift_unknownObjectWeakDestroy();

  v8 = v5 + v1[17];
  v9 = type metadata accessor for NavigationPath();
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);

  if (*(v5 + v1[19] + 24))
  {
    sub_10000F4B4((v5 + v1[19]));
  }

  v10 = v1[20];
  v11 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  v12 = v1[24];
  sub_10000341C(&qword_10025A920, &qword_1001CFB10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | 7);
}

uint64_t sub_1000282C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for WritingToolsView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + v7);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v1 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10002B2A0;

  return sub_10002203C(a1, v9, v10, v1 + v6, v8, v12, v13);
}

uint64_t sub_100028458(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000284C4()
{
  result = qword_10025B5F0;
  if (!qword_10025B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B5F0);
  }

  return result;
}

uint64_t sub_100028518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WritingToolsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100017680(a1, v6, a2);
}

uint64_t sub_1000285AC()
{
  v2 = *(type metadata accessor for WritingToolsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100028688;

  return sub_100011DE0(v4, v5, v0 + v3);
}

uint64_t sub_100028688()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002879C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_10000F3F4(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1000287B0()
{
  v1 = type metadata accessor for WritingToolsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  j__swift_release(*(v5 + 16), *(v5 + 24));
  v6 = v1[6];
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  swift_unknownObjectWeakDestroy();

  v8 = v5 + v1[17];
  v9 = type metadata accessor for NavigationPath();
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);

  if (*(v5 + v1[19] + 24))
  {
    sub_10000F4B4((v5 + v1[19]));
  }

  v10 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v11 = v1[20];
  v12 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  v13 = v1[24];
  sub_10000341C(&qword_10025A920, &qword_1001CFB10);
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

  v16 = *(v0 + v10 + 24);
  if (v16 != 255)
  {
    sub_10000F428(*(v0 + v10), *(v0 + v10 + 8), *(v0 + v10 + 16), v16);
  }

  return _swift_deallocObject(v0, ((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100028B6C(uint64_t a1)
{
  v3 = *(type metadata accessor for WritingToolsView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 24);
  v13 = *(v1 + 16);
  v6 = v1 + ((v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002B2A0;

  return sub_100023BC8(a1, v13, v5, v1 + v4, v7, v8, v9, v10);
}

uint64_t sub_100028CD4()
{
  v2 = *(type metadata accessor for WritingToolsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002B2A0;

  return sub_100012F9C(v4, v5, v0 + v3);
}

uint64_t sub_100028E34(uint64_t a1)
{
  v4 = *(type metadata accessor for WritingToolsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_1000239DC(a1, v6, v7, v1 + v5);
}

uint64_t sub_100028F98()
{
  v2 = *(type metadata accessor for WritingToolsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002B2A0;

  return sub_1000142DC(v4, v5, v0 + v3);
}

uint64_t sub_100029074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000290E4()
{
  result = qword_10025B6C0;
  if (!qword_10025B6C0)
  {
    sub_100003E34(&qword_10025B6B8, &qword_1001D01A0);
    sub_10002919C();
    sub_100007120(&qword_10025B310, &qword_10025B318, &qword_1001CFC60, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B6C0);
  }

  return result;
}

unint64_t sub_10002919C()
{
  result = qword_10025B6C8;
  if (!qword_10025B6C8)
  {
    sub_100003E34(&qword_10025B6D0, &qword_1001D01A8);
    sub_100029228();
    sub_100029424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B6C8);
  }

  return result;
}

unint64_t sub_100029228()
{
  result = qword_10025B6D8;
  if (!qword_10025B6D8)
  {
    sub_100003E34(&qword_10025B6E0, &qword_1001D01B0);
    sub_1000292E4();
    sub_10002B028(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier, &unk_1001DAD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B6D8);
  }

  return result;
}

unint64_t sub_1000292E4()
{
  result = qword_10025B6E8;
  if (!qword_10025B6E8)
  {
    sub_100003E34(&qword_10025B6F0, &qword_1001D01B8);
    sub_100003E34(&qword_10025B6F8, &qword_1001D01C0);
    sub_100003E34(&qword_10025B700, &qword_1001D01C8);
    sub_100007120(&qword_10025B708, &qword_10025B700, &qword_1001D01C8, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B6E8);
  }

  return result;
}

unint64_t sub_100029424()
{
  result = qword_10025B718;
  if (!qword_10025B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B718);
  }

  return result;
}

unint64_t sub_100029478()
{
  result = qword_10025B728;
  if (!qword_10025B728)
  {
    sub_100003E34(&qword_10025B6A8, &qword_1001D0190);
    sub_100003E34(&qword_10025B698, &qword_1001D0180);
    sub_100003E34(&qword_10025B690, &qword_1001D0178);
    sub_100007120(&qword_10025B720, &qword_10025B690, &qword_1001D0178, &protocol conformance descriptor for ScrollView<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B728);
  }

  return result;
}

uint64_t sub_1000295B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WritingToolsView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10001D638(a1, v6, a2);
}

unint64_t sub_100029638()
{
  result = qword_10025B738;
  if (!qword_10025B738)
  {
    sub_100003E34(&qword_10025B730, &qword_1001D01D0);
    sub_10002971C(&qword_10025B740, &qword_10025B748, &qword_1001D01D8, sub_100029798);
    sub_100007120(&qword_10025B310, &qword_10025B318, &qword_1001CFC60, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B738);
  }

  return result;
}

uint64_t sub_10002971C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100029798()
{
  result = qword_10025B750;
  if (!qword_10025B750)
  {
    sub_100003E34(&qword_10025B758, &qword_1001D01E0);
    sub_100029824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B750);
  }

  return result;
}

unint64_t sub_100029824()
{
  result = qword_10025B760;
  if (!qword_10025B760)
  {
    sub_100003E34(&qword_10025B768, &qword_1001D01E8);
    sub_1000298B0();
    sub_100029CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B760);
  }

  return result;
}

unint64_t sub_1000298B0()
{
  result = qword_10025B770;
  if (!qword_10025B770)
  {
    sub_100003E34(&qword_10025B778, &qword_1001D01F0);
    sub_10002993C();
    sub_1000299C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B770);
  }

  return result;
}

unint64_t sub_10002993C()
{
  result = qword_10025B780;
  if (!qword_10025B780)
  {
    sub_100003E34(&qword_10025B788, &qword_1001D01F8);
    sub_100025928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B780);
  }

  return result;
}

unint64_t sub_1000299C8()
{
  result = qword_10025B790;
  if (!qword_10025B790)
  {
    sub_100003E34(&qword_10025B798, &qword_1001D0200);
    sub_100029A54();
    sub_100029B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B790);
  }

  return result;
}

unint64_t sub_100029A54()
{
  result = qword_10025B7A0;
  if (!qword_10025B7A0)
  {
    sub_100003E34(&qword_10025B7A8, &qword_1001D0208);
    sub_100029AE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B7A0);
  }

  return result;
}

unint64_t sub_100029AE0()
{
  result = qword_10025B7B0;
  if (!qword_10025B7B0)
  {
    sub_100003E34(&qword_10025B7B8, &qword_1001D0210);
    sub_10002B028(&qword_10025B358, type metadata accessor for RewritingView, &protocol conformance descriptor for RewritingView);
    sub_100025A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B7B0);
  }

  return result;
}

unint64_t sub_100029B9C()
{
  result = qword_10025B7C0;
  if (!qword_10025B7C0)
  {
    sub_100003E34(&qword_10025B7C8, &qword_1001D0218);
    sub_100029C28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B7C0);
  }

  return result;
}

unint64_t sub_100029C28()
{
  result = qword_10025B7D0;
  if (!qword_10025B7D0)
  {
    sub_100003E34(&qword_10025B7D8, &qword_1001D0220);
    sub_10002B028(&qword_10025B330, type metadata accessor for ModelResponseView, &protocol conformance descriptor for ModelResponseView);
    sub_100025A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B7D0);
  }

  return result;
}

unint64_t sub_100029CE4()
{
  result = qword_10025B7E0;
  if (!qword_10025B7E0)
  {
    sub_100003E34(&qword_10025B7E8, &qword_1001D0228);
    sub_100003E34(&unk_10025B300, &qword_1001CFC58);
    type metadata accessor for CompositionModel(255);
    type metadata accessor for CompositionView(255);
    type metadata accessor for WritingToolsModel(255);
    sub_10002B028(&unk_1002651C0, type metadata accessor for CompositionView, &unk_1001D93A8);
    sub_10002B028(&unk_10025A9F0, type metadata accessor for WritingToolsModel, &protocol conformance descriptor for WritingToolsModel);
    swift_getOpaqueTypeConformance2();
    sub_10002B028(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
    swift_getOpaqueTypeConformance2();
    sub_100029EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B7E0);
  }

  return result;
}

unint64_t sub_100029EA0()
{
  result = qword_10025B7F0;
  if (!qword_10025B7F0)
  {
    sub_100003E34(&qword_10025B7F8, &qword_1001D0230);
    sub_100026208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B7F0);
  }

  return result;
}

uint64_t sub_100029FF8()
{
  v1 = type metadata accessor for WritingToolsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  j__swift_release(*(v5 + 16), *(v5 + 24));
  v6 = v1[6];
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  swift_unknownObjectWeakDestroy();

  v8 = v5 + v1[17];
  v9 = type metadata accessor for NavigationPath();
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);

  if (*(v5 + v1[19] + 24))
  {
    sub_10000F4B4((v5 + v1[19]));
  }

  v10 = v1[20];
  v11 = sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  v12 = v1[24];
  sub_10000341C(&qword_10025A920, &qword_1001CFB10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

  else
  {
  }

  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_10000F428(*(v0 + v15), *(v0 + v15 + 8), *(v0 + v15 + 16), *(v0 + v15 + 24));

  return _swift_deallocObject(v0, v15 + 25, v2 | 7);
}

void sub_10002A394(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WritingToolsView(0) - 8);
  v6 = v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_10001160C(a1, a2, *v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
}

uint64_t sub_10002A440()
{
  v2 = *(type metadata accessor for WritingToolsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002B2A0;

  return sub_100020AD4(v4, v5, v0 + v3);
}

uint64_t sub_10002A5A4()
{
  v2 = *(type metadata accessor for WritingToolsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002B2A0;

  return sub_10001C9F8(v4, v5, v0 + v3);
}

unint64_t sub_10002A6B0()
{
  result = qword_10025B8B0;
  if (!qword_10025B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B8B0);
  }

  return result;
}

unint64_t sub_10002A758()
{
  result = qword_10025B8D0;
  if (!qword_10025B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B8D0);
  }

  return result;
}

uint64_t sub_10002A894(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000341C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002A8FC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100007D98(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10002A940(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10002A984(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10002A984(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10002A99C()
{
  result = qword_10025B920;
  if (!qword_10025B920)
  {
    sub_100003E34(&qword_10025B918, &qword_1001D0378);
    sub_100007120(&qword_10025B928, &unk_10025B930, &qword_1001D0380, &protocol conformance descriptor for Button<A>);
    sub_10002AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B920);
  }

  return result;
}

unint64_t sub_10002AA54()
{
  result = qword_10025E040;
  if (!qword_10025E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025E040);
  }

  return result;
}

unint64_t sub_10002AAE8()
{
  result = qword_10025B958;
  if (!qword_10025B958)
  {
    sub_100003E34(&qword_10025B950, &qword_1001D03C8);
    sub_10002AB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B958);
  }

  return result;
}

unint64_t sub_10002AB74()
{
  result = qword_10025B960;
  if (!qword_10025B960)
  {
    sub_100003E34(&qword_10025B968, &unk_1001D03D0);
    sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B960);
  }

  return result;
}

unint64_t sub_10002AC34()
{
  result = qword_10025DAB0;
  if (!qword_10025DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025DAB0);
  }

  return result;
}

unint64_t sub_10002AC88()
{
  result = qword_10025B990;
  if (!qword_10025B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B990);
  }

  return result;
}

uint64_t sub_10002AD94(uint64_t a1)
{
  v4 = *(type metadata accessor for WritingToolsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_100023944(a1, v6, v7, v1 + v5);
}

uint64_t sub_10002AE94(uint64_t a1)
{
  v4 = *(type metadata accessor for WritingToolsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_100023600(a1, v6, v7, v1 + v5);
}

unint64_t sub_10002AF84()
{
  result = qword_10025B9D0;
  if (!qword_10025B9D0)
  {
    sub_100003E34(&qword_10025B9C0, &qword_1001D6190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B9D0);
  }

  return result;
}

uint64_t sub_10002B028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002B070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002B0D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10002B134()
{
  result = qword_10025BA08;
  if (!qword_10025BA08)
  {
    sub_100003E34(&qword_10025BA10, &qword_1001D0570);
    sub_100007120(&qword_10025BA18, &unk_10025BA20, &qword_1001D0578, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BA08);
  }

  return result;
}

uint64_t *sub_10002B2EC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10002B39C()
{
  v0 = type metadata accessor for Logger();
  sub_10002B2EC(v0, qword_100276F38);
  sub_10000F34C(v0, qword_100276F38);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002B41C()
{
  v0 = type metadata accessor for Logger();
  sub_10002B2EC(v0, qword_100276F50);
  sub_10000F34C(v0, qword_100276F50);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002B49C()
{
  v0 = type metadata accessor for Logger();
  sub_10002B2EC(v0, qword_100276F68);
  sub_10000F34C(v0, qword_100276F68);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002B56C()
{
  v0 = type metadata accessor for Logger();
  sub_10002B2EC(v0, qword_100276FB0);
  sub_10000F34C(v0, qword_100276FB0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002B65C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_10002B2EC(v5, a2);
  sub_10000F34C(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002B6D4(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  v4 = sub_10000341C(&qword_10025BA30, &qword_1001D0590);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v26 = &v25 - v6;
  v8 = sub_10000341C(&qword_10025BA38, &qword_1001D0598);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a3, v8);
  v17 = v7;
  v18 = v4;
  (*(v5 + 16))(v17, v27, v4);
  v19 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v20 = (v10 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v28;
  *(v21 + 4) = v28;
  (*(v9 + 32))(&v21[v19], v12, v8);
  (*(v5 + 32))(&v21[v20], v26, v18);
  v23 = v22;
  sub_10015C9C8(0, 0, v15, &unk_1001D05B0, v21);
}

uint64_t sub_10002B9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[41] = a5;
  v6[42] = a6;
  v6[40] = a4;
  v7 = sub_10000341C(&qword_10025BA40, &qword_1001D05B8);
  v6[43] = v7;
  v6[44] = *(v7 - 8);
  v6[45] = swift_task_alloc();
  v8 = sub_10000341C(&qword_10025BA48, &unk_1001D05C0);
  v6[46] = v8;
  v6[47] = *(v8 - 8);
  v6[48] = swift_task_alloc();

  return _swift_task_switch(sub_10002BAE0, 0, 0);
}

uint64_t sub_10002BAE0()
{
  v1 = v0[40];
  v0[49] = [objc_allocWithZone(NSMutableAttributedString) init];
  v2 = [v1 range];
  v0[34] = v2;
  v0[35] = v3;
  v0[50] = v2;
  v4 = sub_1000057A8(_swiftEmptyArrayStorage);
  sub_10000341C(&qword_10025BA38, &qword_1001D0598);
  AsyncThrowingStream.makeAsyncIterator()();
  v5 = TCTextCompositionAssistantOptionKeyUserFeedbackInputString;
  v0[51] = TCTextCompositionAssistantOptionKeyContentWarning;
  v0[52] = v5;
  v0[57] = 0;
  v0[58] = 0xE000000000000000;
  v0[55] = 0;
  v0[56] = 0xE000000000000000;
  v0[53] = 0;
  v0[54] = v4;
  v6 = swift_task_alloc();
  v0[59] = v6;
  *v6 = v0;
  v6[1] = sub_10002BC28;
  v7 = v0[46];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 20, 0, 0, v7, v0 + 36);
}

uint64_t sub_10002BC28()
{

  if (v0)
  {

    v1 = sub_10002C480;
  }

  else
  {
    v1 = sub_10002BD60;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10002BD60()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v4 = *(v0 + 184);

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v95 = v4;
    if (*(v4 + 16))
    {
      v8 = v5;
      v9 = v1;

      v10 = sub_10000511C(v8, v7);
      v12 = v11;

      if (v12)
      {
        sub_10002B0D0(*(v4 + 56) + 32 * v10, v0 + 192);
        if (swift_dynamicCast())
        {
          v13 = *(v0 + 312);
          if (v13 == 1)
          {
            v14 = 1;
          }

          else
          {
            v14 = 2 * (v13 == 2);
          }

          v92 = v14;
LABEL_15:
          v94 = sub_10009D1E0(v4);
          v86 = v41;
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = v1;
          if (*(v4 + 16))
          {
            v44 = sub_10000511C(v42, v43);
            v46 = v45;

            if (v46)
            {
              sub_10002B0D0(*(v4 + 56) + 32 * v44, v0 + 224);
              if (swift_dynamicCast())
              {
                v47 = *(v0 + 264);
                v85 = *(v0 + 256);
                goto LABEL_21;
              }
            }
          }

          else
          {
          }

          v85 = 0;
          v47 = 0xE000000000000000;
LABEL_21:
          v84 = v47;
          range = *(v0 + 424);
          v91 = *(v0 + 400);
          v48 = *(v0 + 272);
          v49 = *(v0 + 320);
          sub_10000341C(&qword_10025BA50, &qword_1001D0860);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_1001D0580;
          v97.location = v3;
          v87 = v2;
          v97.length = v2;
          v51 = NSStringFromRange(v97);
          v52 = v3;
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          *(v50 + 56) = &type metadata for String;
          v56 = sub_10002D7B0();
          *(v50 + 64) = v56;
          *(v50 + 32) = v53;
          *(v50 + 40) = v55;
          v98.location = [v49 range];
          v57 = NSStringFromRange(v98);
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          *(v50 + 96) = &type metadata for String;
          *(v50 + 104) = v56;
          *(v50 + 72) = v58;
          *(v50 + 80) = v60;
          v99.location = v48;
          v99.length = range;
          v61 = NSStringFromRange(v99);
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;

          *(v50 + 136) = &type metadata for String;
          *(v50 + 144) = v56;
          *(v50 + 112) = v62;
          *(v50 + 120) = v64;
          *(v50 + 176) = &type metadata for Int;
          *(v50 + 184) = &protocol witness table for Int;
          *(v50 + 152) = v92;
          sub_10002D804();
          v65 = static OS_os_log.default.getter();
          v66 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("Received partial result with replacement range %@, context.range = %@, accumulatedReplacementRange = %@, warnings (OptionSet) = %d", 130, 2, &_mh_execute_header, v65, v66, v50);

          v67 = v91 + range;
          if ((v91 + range) < v52)
          {
            v68 = v52 - v67;
            if (__OFSUB__(v52, v67))
            {
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v69 = *(v0 + 424);
            v70 = *(v0 + 392);
            v71 = [*(v0 + 320) attributedText];
            v72 = [v71 attributedSubstringFromRange:{v67, v52 - v67}];

            [v70 appendAttributedString:v72];
            v24 = __OFADD__(v69, v68);
            v73 = v69 + v68;
            if (!v24)
            {
LABEL_27:
              v19 = [*(v0 + 392) appendAttributedString:v88];
              v74 = v73 + v87;
              if (!__OFADD__(v73, v87))
              {
                v76 = *(v0 + 392);
                v75 = *(v0 + 400);
                v78 = *(v0 + 352);
                v77 = *(v0 + 360);
                rangea = *(v0 + 344);
                *(v0 + 88) = v76;
                *(v0 + 96) = v75;
                *(v0 + 104) = v74;
                *(v0 + 112) = v92;
                *(v0 + 120) = v94;
                *(v0 + 128) = v86;
                *(v0 + 136) = v85;
                *(v0 + 144) = v84;
                *(v0 + 152) = v95;
                v93 = v74;

                v79 = v76;

                sub_10000341C(&qword_10025BA30, &qword_1001D0590);
                AsyncThrowingStream.Continuation.yield(_:)();

                (*(v78 + 8))(v77, rangea);
                *(v0 + 456) = v94;
                *(v0 + 464) = v86;
                *(v0 + 440) = v85;
                *(v0 + 448) = v84;
                *(v0 + 424) = v93;
                *(v0 + 432) = v95;
                v80 = swift_task_alloc();
                *(v0 + 472) = v80;
                *v80 = v0;
                v80[1] = sub_10002BC28;
                v22 = *(v0 + 368);
                v23 = v0 + 288;
                v19 = (v0 + 160);
                v20 = 0;
                v21 = 0;

                return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v19, v20, v21, v22, v23);
              }

              __break(1u);
              goto LABEL_36;
            }

            __break(1u);
          }

          v73 = *(v0 + 424);
          goto LABEL_27;
        }
      }
    }

    else
    {
      v40 = v1;
    }

    v92 = 0;
    goto LABEL_15;
  }

  v15 = *(v0 + 424);
  v16 = *(v0 + 320);
  (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
  [v16 range];
  if (v15 >= v17)
  {
  }

  else
  {
    v18 = *(v0 + 424);
    v19 = [*(v0 + 320) range];
    v24 = __OFSUB__(v20, v18);
    v25 = v20 - v18;
    if (v24)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v26 = *(v0 + 424);
    v27 = *(v0 + 392);
    v28 = *(v0 + 400);
    v29 = [*(v0 + 320) attributedText];
    v30 = [v29 attributedSubstringFromRange:{v28 + v26, v25}];

    [v27 appendAttributedString:v30];
    if (__OFADD__(v26, v25))
    {
LABEL_38:
      __break(1u);
      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v19, v20, v21, v22, v23);
    }

    v31 = *(v0 + 456);
    v32 = *(v0 + 440);
    v33 = *(v0 + 432);
    v35 = *(v0 + 392);
    v34 = *(v0 + 400);
    v37 = *(v0 + 352);
    v36 = *(v0 + 360);
    v38 = *(v0 + 344);
    *(v0 + 16) = v35;
    *(v0 + 24) = v34;
    *(v0 + 32) = v26 + v25;
    *(v0 + 40) = 0;
    *(v0 + 48) = v31;
    *(v0 + 64) = v32;
    *(v0 + 80) = v33;
    v39 = v35;
    sub_10000341C(&qword_10025BA30, &qword_1001D0590);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v37 + 8))(v36, v38);
  }

  v81 = *(v0 + 392);
  *(v0 + 304) = 0;
  sub_10000341C(&qword_10025BA30, &qword_1001D0590);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v82 = *(v0 + 8);

  return v82();
}

uint64_t sub_10002C480()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);

  (*(v3 + 8))(v1, v2);
  *(v0 + 296) = *(v0 + 288);
  sub_10000341C(&qword_10025BA30, &qword_1001D0590);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10002C544()
{
  v1 = sub_10000341C(&qword_10025BA38, &qword_1001D0598);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10000341C(&qword_10025BA30, &qword_1001D0590);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10002C6B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10000341C(&qword_10025BA38, &qword_1001D0598) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10000341C(&qword_10025BA30, &qword_1001D0590) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002B2A0;

  return sub_10002B9A8(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10002C82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a7;
  v33 = a1;
  v36 = a5;
  v37 = a6;
  v34 = a3;
  v35 = a4;
  v8 = sub_10000341C(&qword_10025BA60, &unk_1001D05D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v31 = &v29 - v10;
  v12 = sub_10000341C(&qword_10025F420, &qword_1001D4390);
  v30 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_100028458(a2, v38);
  (*(v13 + 16))(v16, v32, v12);
  v21 = v11;
  v22 = v8;
  (*(v9 + 16))(v21, v33, v8);
  v23 = (*(v13 + 80) + 104) & ~*(v13 + 80);
  v24 = (v14 + *(v9 + 80) + v23) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  sub_100008198(v38, (v25 + 32));
  v26 = v35;
  *(v25 + 9) = v34;
  *(v25 + 10) = v26;
  v27 = v37;
  *(v25 + 11) = v36;
  *(v25 + 12) = v27;
  (*(v13 + 32))(&v25[v23], v16, v30);
  (*(v9 + 32))(&v25[v24], v31, v22);

  sub_10015C9C8(0, 0, v19, &unk_1001D0628, v25);
}

uint64_t sub_10002CB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = v14;
  v8[28] = v15;
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[22] = a4;
  v9 = sub_10000341C(&qword_10025BA68, &qword_1001D0630);
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();
  sub_10000341C(&qword_10025BA70, &qword_1001D0638);
  v8[32] = swift_task_alloc();
  v10 = type metadata accessor for Field.FieldType();
  v8[33] = v10;
  v8[34] = *(v10 - 8);
  v8[35] = swift_task_alloc();
  v11 = type metadata accessor for Field();
  v8[36] = v11;
  v8[37] = *(v11 - 8);
  v8[38] = swift_task_alloc();
  sub_10000341C(&qword_10025BA78, &qword_1001D0640);
  v8[39] = swift_task_alloc();

  return _swift_task_switch(sub_10002CD40, 0, 0);
}

uint64_t sub_10002CD40()
{
  v1 = *(v0 + 176);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  v2 = v1[3];
  v3 = sub_100027874(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  *(v0 + 40) = swift_getAssociatedTypeWitness();
  *(v0 + 48) = swift_getAssociatedConformanceWitness();
  sub_10002DB6C((v0 + 16));
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  swift_beginAccess();
  swift_beginAccess();
  *(v0 + 344) = enum case for Field.FieldType.string(_:);
  *(v0 + 320) = 0xE000000000000000;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_10002DBD0(v0 + 16, v6);
  v8 = swift_task_alloc();
  *(v0 + 328) = v8;
  *v8 = v0;
  v8[1] = sub_10002CF4C;
  v9 = *(v0 + 312);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, 0, 0, v0 + 152, v6, v7);
}

uint64_t sub_10002CF4C()
{
  *(*v1 + 336) = v0;

  if (v0)
  {

    v2 = sub_10002D6E0;
  }

  else
  {
    v2 = sub_10002D068;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002D068()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v6 = *(v0 + 344);
    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    v9 = *(v0 + 264);
    (*(v3 + 32))(*(v0 + 304), v1, v2);
    Field.data.getter();
    if ((*(v8 + 88))(v7, v9) == v6)
    {
      v10 = *(v0 + 280);
      v11 = *(v0 + 184);
      (*(*(v0 + 272) + 96))(v10, *(v0 + 264));
      String.append(_:)(*v10);

      if (*(v11 + 16) == 1)
      {
        (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
        goto LABEL_35;
      }

      v22 = *(v0 + 192);
      v24 = *(v0 + 120);
      v23 = *(v0 + 128);
      if (String.count.getter() > v22)
      {
        if ((v23 & 0x2000000000000000) != 0)
        {
          v25 = HIBYTE(v23) & 0xF;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFFFFFFLL;
        }

        v26 = String.index(_:offsetBy:limitedBy:)();
        if (v27)
        {
          v26 = 15;
        }

        if (4 * v25 < v26 >> 14)
        {
          __break(1u);
          return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v26, v27, v28, v29, v30, v31);
        }

        v32 = *(v0 + 200);
        v33 = String.subscript.getter();
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v40 = *(v0 + 208);
        if (v37 == v32)
        {
          v41 = (v40 & 0x2000000000000000) != 0 ? HIBYTE(v40) & 0xF : *(v0 + 200) & 0xFFFFFFFFFFFFLL;
          if (v39 == v40 && !(v33 >> 16) && v35 >> 16 == v41)
          {

LABEL_30:
            v43 = *(v0 + 336);
            sub_10000341C(&qword_10025F420, &qword_1001D4390);
            Regex.firstMatch(in:)();
            if (v43)
            {
              (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));

              sub_10000F4B4((v0 + 16));

              *(v0 + 160) = v43;
              sub_10000341C(&qword_10025BA60, &unk_1001D05D0);
              AsyncThrowingStream.Continuation.finish(throwing:)();
              goto LABEL_3;
            }

            v48 = *(v0 + 256);
            v49 = sub_10000341C(&qword_10025BA80, qword_1001D0648);
            v50 = (*(*(v49 - 8) + 48))(v48, 1, v49);
            v52 = *(v0 + 296);
            v51 = *(v0 + 304);
            v53 = *(v0 + 288);
            if (v50 != 1)
            {
              v57 = *(v0 + 184);
              (*(v52 + 8))(*(v0 + 304), *(v0 + 288));
              sub_10002DC20(v48);
              *(v57 + 16) = 1;
LABEL_35:
              v45 = *(v0 + 40);
              v46 = *(v0 + 48);
              sub_10002DBD0(v0 + 16, v45);
              v47 = swift_task_alloc();
              *(v0 + 328) = v47;
              *v47 = v0;
              v47[1] = sub_10002CF4C;
              v26 = *(v0 + 312);
              v29 = v0 + 152;
              v27 = 0;
              v28 = 0;
              v30 = v45;
              v31 = v46;

              return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v26, v27, v28, v29, v30, v31);
            }

            v55 = *(v0 + 240);
            v54 = *(v0 + 248);
            v58 = *(v0 + 232);
            v56._countAndFlagsBits = v24;
            v56._object = v23;
            String.append(_:)(v56);
            v44 = *(v0 + 112);
            *(v0 + 136) = *(v0 + 104);
            *(v0 + 144) = v44;

            sub_10000341C(&qword_10025BA60, &unk_1001D05D0);
            AsyncThrowingStream.Continuation.yield(_:)();
            (*(v55 + 8))(v54, v58);
            (*(v52 + 8))(v51, v53);
            sub_10002DC20(v48);

            *(v0 + 120) = 0;
            *(v0 + 128) = 0xE000000000000000;
LABEL_34:
            *(v0 + 320) = v44;
            goto LABEL_35;
          }
        }

        v42 = _stringCompareInternal(_:_:_:_:expecting:)();

        if (v42)
        {
          goto LABEL_30;
        }
      }

      (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    }

    else
    {
      if (qword_10025A6E0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10000F34C(v12, qword_100276F08);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Streaming: Unsupported field type.", v15, 2u);
      }

      v17 = *(v0 + 296);
      v16 = *(v0 + 304);
      v19 = *(v0 + 280);
      v18 = *(v0 + 288);
      v20 = *(v0 + 264);
      v21 = *(v0 + 272);

      (*(v17 + 8))(v16, v18);
      (*(v21 + 8))(v19, v20);
    }

    v44 = *(v0 + 320);
    goto LABEL_34;
  }

  sub_10000F4B4((v0 + 16));
  *(v0 + 168) = 0;
  sub_10000341C(&qword_10025BA60, &unk_1001D05D0);
  AsyncThrowingStream.Continuation.finish(throwing:)();

LABEL_3:

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10002D6E0()
{
  v1 = v0[19];
  sub_10000F4B4(v0 + 2);

  v0[20] = v1;
  sub_10000341C(&qword_10025BA60, &unk_1001D05D0);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v2 = v0[1];

  return v2();
}

unint64_t sub_10002D7B0()
{
  result = qword_10025F4D0;
  if (!qword_10025F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F4D0);
  }

  return result;
}

unint64_t sub_10002D804()
{
  result = qword_10025BA58;
  if (!qword_10025BA58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025BA58);
  }

  return result;
}

uint64_t sub_10002D850()
{
  v1 = sub_10000341C(&qword_10025F420, &qword_1001D4390);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10000341C(&qword_10025BA60, &unk_1001D05D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  sub_10000F4B4((v0 + 32));

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10002D9D0(uint64_t a1)
{
  sub_10000341C(&qword_10025F420, &qword_1001D4390);
  sub_10000341C(&qword_10025BA60, &unk_1001D05D0);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100028688;

  return sub_10002CB38(a1, v3, v4, (v1 + 4), v5, v6, v7, v8);
}

uint64_t *sub_10002DB6C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10002DBD0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10002DC20(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025BA70, &qword_1001D0638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10002DC88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10002DCB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002DCFC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10002DD74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v23 = sub_10000341C(&qword_10025BA88, &qword_1001D07F0);
  __chkstk_darwin(v23);
  v4 = (&v19 - v3);
  v5 = *v1;
  v29 = *(v1 + 8);
  v6 = *(v1 + 16);
  v21 = *(v1 + 24);
  v27 = v21;
  v28 = v5;
  v26 = *(v1 + 32);
  v7 = swift_allocObject();
  v8 = *(v1 + 16);
  *(v7 + 1) = *v1;
  *(v7 + 2) = v8;
  *(v7 + 3) = *(v1 + 32);
  v9 = swift_allocObject();
  v10 = *(v1 + 16);
  *(v9 + 1) = *v1;
  *(v9 + 2) = v10;
  *(v9 + 3) = *(v1 + 32);
  *v4 = sub_100034F9C;
  v4[1] = v7;
  v4[2] = sub_100034FB8;
  v4[3] = v9;
  v11 = (v4 + *(sub_10000341C(&qword_10025BA90, &qword_1001D07F8) + 40));
  *v11 = 0x4010000000000000;
  v20 = *(sub_10000341C(&qword_10025BA98, &qword_1001D0800) + 44);
  sub_1000081F8(&v28, v25, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v27, v25, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v26, v25, &unk_1002640F0, &qword_1001D3490);
  sub_1000081F8(&v28, v25, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v27, v25, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v26, v25, &unk_1002640F0, &qword_1001D3490);
  sub_10002E1EC(v1, v11 + v20);
  v12 = swift_allocObject();
  v13 = v2[1];
  v12[1] = *v2;
  v12[2] = v13;
  v12[3] = v2[2];
  v14 = (v4 + *(v23 + 36));
  type metadata accessor for _TaskModifier();
  sub_1000081F8(&v28, v25, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v27, v25, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v26, v25, &unk_1002640F0, &qword_1001D3490);
  static TaskPriority.userInitiated.getter();
  *v14 = &unk_1001D0828;
  v14[1] = v12;
  v25[0] = v6;
  v25[1] = v21;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v15 = v24;
  swift_getKeyPath();
  v25[0] = v15;
  sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v14) = *(v15 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState);

  LOBYTE(v24) = v14;
  v16 = swift_allocObject();
  v17 = v2[1];
  v16[1] = *v2;
  v16[2] = v17;
  v16[3] = v2[2];
  sub_1000081F8(&v28, v25, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v27, v25, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v26, v25, &unk_1002640F0, &qword_1001D3490);
  sub_1000350B0();
  sub_100035198();
  View.onChange<A>(of:initial:_:)();

  return sub_10000F500(v4, &qword_10025BA88, &qword_1001D07F0);
}

uint64_t sub_10002E1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_10000341C(&qword_10025BAD0, &qword_1001D0910);
  v4 = __chkstk_darwin(v3 - 8);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v45 - v6;
  v8 = sub_10000341C(&qword_10025BAD8, &qword_1001D0918);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = sub_10000341C(&qword_10025BAE0, &qword_1001D0920);
  sub_10002E800(a1, &v13[*(v14 + 44)]);
  v91[0] = *(a1 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v15 = v77;
  swift_getKeyPath();
  *&v91[0] = v15;
  sub_1000354A0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v15 + 112);

  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = &v13[*(v9 + 44)];
  *v19 = KeyPath;
  v19[1] = sub_10002AAC0;
  v19[2] = v18;
  v20 = static HorizontalAlignment.center.getter();
  v60 = 1;
  sub_100032B84(a1, v91);
  v71 = v91[2];
  v72 = v91[3];
  v73 = v91[4];
  v74 = v91[5];
  v69 = v91[0];
  v70 = v91[1];
  v76 = v91[5];
  v75[2] = v91[2];
  v75[3] = v91[3];
  v75[4] = v91[4];
  v75[0] = v91[0];
  v75[1] = v91[1];
  sub_1000081F8(&v69, &v77, &qword_10025BAE8, &qword_1001D0980);
  sub_10000F500(v75, &qword_10025BAE8, &qword_1001D0980);
  BYTE7(v91[5]) = v74;
  *(&v91[4] + 7) = v73;
  *(&v91[3] + 7) = v72;
  *(&v91[2] + 7) = v71;
  *(&v91[1] + 7) = v70;
  *(v91 + 7) = v69;
  v65 = v91[2];
  v66 = v91[3];
  v67 = v91[4];
  v63 = v91[0];
  v61[0] = v20;
  v61[1] = 0;
  v62 = v60;
  v68 = *&v91[5];
  v64 = v91[1];
  v21 = static Color.blue.getter();
  sub_1000E3EDC(v21, &v48);

  sub_10000F500(v61, &qword_10025BAF0, &qword_1001D0988);
  LOBYTE(v20) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v91[0]) = 0;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v30 = sub_10000341C(&qword_10025BAF8, &qword_1001D0990);
  sub_10002F81C(a1, &v7[*(v30 + 44)]);
  v31 = v47;
  sub_1000081F8(v13, v47, &qword_10025BAD8, &qword_1001D0918);
  v32 = v45;
  sub_1000081F8(v7, v45, &qword_10025BAD0, &qword_1001D0910);
  v33 = v31;
  v34 = v46;
  sub_1000081F8(v33, v46, &qword_10025BAD8, &qword_1001D0918);
  v35 = sub_10000341C(&qword_10025BB00, &qword_1001D0998);
  v36 = (v34 + *(v35 + 48));
  v85 = v56;
  v86 = v57;
  v87 = v58;
  v88 = v59;
  v81 = v52;
  v82 = v53;
  v83 = v54;
  v84 = v55;
  v77 = v48;
  v78 = v49;
  v79 = v50;
  v80 = v51;
  LOBYTE(v89) = v20;
  *(&v89 + 1) = v23;
  *&v90[0] = v25;
  *(&v90[0] + 1) = v27;
  *&v90[1] = v29;
  BYTE8(v90[1]) = 0;
  v37 = v57;
  v36[8] = v56;
  v36[9] = v37;
  v38 = v88;
  v36[10] = v87;
  v36[11] = v38;
  v39 = v82;
  v36[4] = v81;
  v36[5] = v39;
  v40 = v84;
  v36[6] = v83;
  v36[7] = v40;
  v41 = v78;
  *v36 = v77;
  v36[1] = v41;
  v42 = v80;
  v36[2] = v79;
  v36[3] = v42;
  v43 = v90[0];
  v36[12] = v89;
  v36[13] = v43;
  *(v36 + 217) = *(v90 + 9);
  sub_1000081F8(v32, v34 + *(v35 + 64), &qword_10025BAD0, &qword_1001D0910);
  sub_1000081F8(&v77, v91, &qword_10025BB08, &qword_1001D09A0);
  sub_10000F500(v7, &qword_10025BAD0, &qword_1001D0910);
  sub_10000F500(v13, &qword_10025BAD8, &qword_1001D0918);
  sub_10000F500(v32, &qword_10025BAD0, &qword_1001D0910);
  v91[8] = v56;
  v91[9] = v57;
  v91[10] = v58;
  v91[11] = v59;
  v91[4] = v52;
  v91[5] = v53;
  v91[6] = v54;
  v91[7] = v55;
  v91[0] = v48;
  v91[1] = v49;
  v91[2] = v50;
  v91[3] = v51;
  v92 = v20;
  v93 = v23;
  v94 = v25;
  v95 = v27;
  v96 = v29;
  v97 = 0;
  sub_10000F500(v91, &qword_10025BB08, &qword_1001D09A0);
  return sub_10000F500(v47, &qword_10025BAD8, &qword_1001D0918);
}

uint64_t sub_10002E800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v80 = type metadata accessor for FeedbackView(0);
  __chkstk_darwin(v80);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10000341C(&qword_10025BB50, &qword_1001E0EB0);
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v79 = &v74 - v5;
  v6 = sub_10000341C(&qword_10025BB58, &unk_1001D09D0);
  v7 = __chkstk_darwin(v6 - 8);
  v88 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v92 = &v74 - v9;
  v85 = type metadata accessor for ButtonToggleStyle();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10000341C(&qword_10025BB60, &unk_1001E0E60);
  v84 = *(v83 - 8);
  __chkstk_darwin(v83);
  v13 = &v74 - v12;
  v14 = sub_10000341C(&qword_10025BB68, &qword_1001D09E0);
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v87 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = (&v74 - v18);
  v103 = *(a1 + 16);
  v101 = *(a1 + 16);
  v90 = sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.projectedValue.getter();
  v21 = *(&v94 + 1);
  v20 = v94;
  v22 = v95;
  swift_getKeyPath();
  v101 = __PAIR128__(v21, v20);
  v102 = v22;
  sub_10000341C(&qword_10025BB70, &unk_1001D0A10);
  Binding.subscript.getter();

  v82 = v98;
  *(&v81 + 1) = v99;
  LODWORD(v81) = v100;

  sub_10000341C(&qword_10025BB78, &unk_1001DE2C0);
  v23 = sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
  v24 = type metadata accessor for IconOnlyLabelStyle();
  v25 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  v26 = sub_1000354A0(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  *&v94 = v23;
  *(&v94 + 1) = v24;
  v95 = v25;
  v96 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v91;
  Toggle.init(isOn:label:)();
  ButtonToggleStyle.init()();
  sub_100007120(&qword_10025BB80, &qword_10025BB60, &unk_1001E0E60, &protocol conformance descriptor for Toggle<A>);
  sub_1000354A0(&qword_10025BB88, &type metadata accessor for ButtonToggleStyle, &protocol conformance descriptor for ButtonToggleStyle);
  v28 = v83;
  v29 = v85;
  View.toggleStyle<A>(_:)();
  v30 = v93;
  v86[1](v11, v29);
  v31 = v13;
  v32 = v92;
  (*(v84 + 8))(v31, v28);
  v33 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v35 = *(v15 + 44);
  v86 = v19;
  v36 = (v19 + v35);
  *v36 = KeyPath;
  v36[1] = v33;
  v37 = type metadata accessor for FeedbackFeatureFlags();
  v96 = v37;
  v97 = sub_1000354A0(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v38 = sub_10002DB6C(&v94);
  (*(*(v37 - 8) + 104))(v38, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v37);
  LOBYTE(v37) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v94);
  v39 = 1;
  if (v37)
  {
    v94 = v103;
    State.wrappedValue.getter();
    v40 = v101;
    swift_getKeyPath();
    *&v94 = v40;
    sub_1000354A0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v41 = *(v40 + 80);
    v42 = *(v40 + 88);
    v43 = *(v40 + 96);
    v85 = *(v40 + 72);
    v84 = v41;
    v83 = v42;
    LODWORD(v82) = v43;
    sub_10002879C(v85, v41, v42, v43);

    v94 = v103;
    State.wrappedValue.getter();
    v44 = v101;
    swift_getKeyPath();
    *&v94 = v44;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v45 = *(v44 + 40);
    *&v81 = *(v44 + 32);
    *(&v81 + 1) = v45;

    v94 = v103;
    State.wrappedValue.getter();
    v46 = v101;
    swift_getKeyPath();
    *&v94 = v46;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v47 = *(v46 + 56);
    *&v78 = *(v46 + 48);
    *(&v78 + 1) = v47;

    v94 = v103;
    State.wrappedValue.getter();
    v48 = v101;
    swift_getKeyPath();
    *&v94 = v48;
    sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v49 = *(v48 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback + 8);
    v77 = *(v48 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback);

    v94 = v103;
    State.wrappedValue.getter();
    v76 = sub_1001A2480();
    v75 = v50;

    v94 = v103;
    State.wrappedValue.getter();
    v51 = v101;
    swift_getKeyPath();
    *&v94 = v51;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v52 = *(v51 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString);
    v53 = *(v51 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString + 8);

    v94 = v103;
    State.wrappedValue.getter();
    v54 = v101;
    swift_getKeyPath();
    *&v94 = v54;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v55 = *(v54 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);

    if (v55)
    {
      v94 = v103;
      State.wrappedValue.getter();
      v56 = v101;
      swift_getKeyPath();
      *&v94 = v56;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v57 = *(v56 + 112);
    }

    else
    {
      v57 = 1;
    }

    v94 = v103;
    State.wrappedValue.getter();
    v58 = v101;
    swift_getKeyPath();
    *&v94 = v58;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v60 = *(v58 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
    v59 = *(v58 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage + 8);

    *(v4 + 25) = 0;
    v61 = *(v80 + 92);
    *&v4[v61] = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    v62 = v84;
    *(v4 + 16) = v85;
    *(v4 + 17) = v62;
    *(v4 + 18) = v83;
    v4[152] = v82;
    v63 = v81;
    *(v4 + 24) = v78;
    *(v4 + 8) = v63;
    *(v4 + 5) = v77;
    *(v4 + 6) = v49;
    *(v4 + 7) = 0;
    *(v4 + 8) = 0;
    v64 = v75;
    *(v4 + 9) = v76;
    *(v4 + 10) = v64;
    *(v4 + 11) = v52;
    *(v4 + 12) = v53;
    *v4 = 0;
    v4[153] = v57;
    *(v4 + 77) = 0;
    v4[156] = 0;
    *&v101 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v65 = v94;
    *(v4 + 13) = _swiftEmptyArrayStorage;
    *(v4 + 14) = _swiftEmptyArrayStorage;
    *(v4 + 15) = _swiftEmptyArrayStorage;
    v66 = *(&v94 + 1);
    *(v4 + 26) = v65;
    *(v4 + 10) = 0u;
    *(v4 + 11) = 0u;
    *(v4 + 24) = 0;
    *(v4 + 27) = v66;
    *(v4 + 28) = v60;
    *(v4 + 29) = v59;
    LOBYTE(v94) = 0;
    sub_1000354A0(&qword_10025BBA0, type metadata accessor for FeedbackView, &unk_1001D8444);
    sub_1000354E8();
    v67 = v79;
    View.buttonStyle<A>(_:)();
    sub_10003553C(v4);
    v27 = v91;
    v32 = v92;
    v30 = v93;
    (*(v91 + 32))(v92, v67, v93);
    v39 = 0;
  }

  (*(v27 + 56))(v32, v39, 1, v30);
  v68 = v86;
  v69 = v87;
  sub_1000081F8(v86, v87, &qword_10025BB68, &qword_1001D09E0);
  v70 = v88;
  sub_1000081F8(v32, v88, &qword_10025BB58, &unk_1001D09D0);
  v71 = v89;
  sub_1000081F8(v69, v89, &qword_10025BB68, &qword_1001D09E0);
  v72 = sub_10000341C(&qword_10025BB90, &qword_1001D0A58);
  sub_1000081F8(v70, v71 + *(v72 + 48), &qword_10025BB58, &unk_1001D09D0);
  sub_10000F500(v32, &qword_10025BB58, &unk_1001D09D0);
  sub_10000F500(v68, &qword_10025BB68, &qword_1001D09E0);
  sub_10000F500(v70, &qword_10025BB58, &unk_1001D09D0);
  return sub_10000F500(v69, &qword_10025BB68, &qword_1001D09E0);
}

uint64_t sub_10002F594()
{
  v0 = type metadata accessor for IconOnlyLabelStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  Label.init(title:icon:)();
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  sub_1000354A0(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10002F7EC@<X0>(uint64_t *a1@<X8>)
{
  sub_100125454(17);
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10002F81C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_10000341C(&qword_10025BB10, &qword_1001D09A8);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v36 = &v34 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v34 - v10;
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = *a1;
  v44 = *(a1 + 8);
  v15 = a1[2];
  v42 = a1[3];
  v43 = v14;
  v16 = v42;
  v35 = v42;
  v41 = *(a1 + 2);
  v17 = swift_allocObject();
  v18 = *(a1 + 1);
  v17[1] = *a1;
  v17[2] = v18;
  v17[3] = *(a1 + 2);
  sub_1000081F8(&v43, &v39, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v42, &v39, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v41, &v39, &unk_1002640F0, &qword_1001D3490);
  sub_10000341C(&qword_10025BB18, &qword_1001D09B0);
  sub_100035280();
  Button.init(action:label:)();
  v39 = v15;
  v40 = v16;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v19 = sub_1001A13B8();

  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19 & 1;
  v22 = &v13[*(v4 + 44)];
  *v22 = KeyPath;
  v22[1] = sub_100035DEC;
  v22[2] = v21;
  v23 = swift_allocObject();
  v24 = *(a1 + 1);
  v23[1] = *a1;
  v23[2] = v24;
  v23[3] = *(a1 + 2);
  sub_1000081F8(&v43, &v39, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v42, &v39, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v41, &v39, &unk_1002640F0, &qword_1001D3490);
  Button.init(action:label:)();
  v39 = v15;
  v40 = v35;
  State.wrappedValue.getter();
  v25 = sub_1001A13B8();

  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v25 & 1;
  v28 = &v11[*(v4 + 44)];
  *v28 = v26;
  v28[1] = sub_100035DEC;
  v28[2] = v27;
  v29 = v36;
  sub_1000081F8(v13, v36, &qword_10025BB10, &qword_1001D09A8);
  v30 = v37;
  sub_1000081F8(v11, v37, &qword_10025BB10, &qword_1001D09A8);
  v31 = v38;
  sub_1000081F8(v29, v38, &qword_10025BB10, &qword_1001D09A8);
  v32 = sub_10000341C(&qword_10025BB30, &qword_1001D09B8);
  sub_1000081F8(v30, v31 + *(v32 + 48), &qword_10025BB10, &qword_1001D09A8);
  sub_10000F500(v11, &qword_10025BB10, &qword_1001D09A8);
  sub_10000F500(v13, &qword_10025BB10, &qword_1001D09A8);
  sub_10000F500(v30, &qword_10025BB10, &qword_1001D09A8);
  return sub_10000F500(v29, &qword_10025BB10, &qword_1001D09A8);
}

uint64_t sub_10002FCB4@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10002FCF4@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10002FD38(uint64_t a1)
{
  v1[13] = a1;
  type metadata accessor for MainActor();
  v1[14] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v3;
  v1[16] = v2;

  return _swift_task_switch(sub_10002FDD0, v3, v2);
}

uint64_t sub_10002FDD0()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = *(v1 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v2 = *(v0 + 64);
  swift_getKeyPath();
  *(v0 + 72) = v2;
  sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session))
  {

LABEL_4:

    v5 = *(v0 + 8);

    return v5();
  }

  *(v0 + 32) = *(v1 + 16);
  State.wrappedValue.getter();
  v3 = *(v0 + 80);
  swift_getKeyPath();
  *(v0 + 88) = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState);

  if (v4 == 1)
  {
    goto LABEL_4;
  }

  *(v0 + 48) = *(v1 + 16);
  State.wrappedValue.getter();
  *(v0 + 136) = *(v0 + 96);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_100030018;

  return sub_1001A2C88();
}

uint64_t sub_100030018()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_10003015C, v3, v2);
}

uint64_t sub_10003015C(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1000301F8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_10000341C(&qword_10025BBB0, &qword_1001D0B60);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (&v24 - v4);
  v6 = sub_10000341C(&qword_10025BBB8, &qword_1001D0B68);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  *v5 = 0x4010000000000000;
  v9 = sub_10000341C(&qword_10025BBC0, &qword_1001D0B70);
  sub_100030624(v1, v5 + *(v9 + 44));
  v10 = *v1;
  v31 = *(v1 + 8);
  v11 = *(v1 + 16);
  v29 = *(v1 + 24);
  v12 = v29;
  v30 = v10;
  v28 = *(v1 + 32);
  v13 = swift_allocObject();
  v14 = *(v1 + 16);
  v13[1] = *v1;
  v13[2] = v14;
  v13[3] = *(v1 + 32);
  v15 = (v5 + *(v3 + 44));
  type metadata accessor for _TaskModifier();
  sub_1000081F8(&v30, v27, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v29, v27, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v28, v27, &unk_1002640F0, &qword_1001D3490);
  static TaskPriority.userInitiated.getter();
  *v15 = &unk_1001D0B80;
  v15[1] = v13;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002A894(v5, v8, &qword_10025BBB0, &qword_1001D0B60);
  v16 = &v8[*(v6 + 36)];
  v17 = v27[5];
  *(v16 + 4) = v27[4];
  *(v16 + 5) = v17;
  *(v16 + 6) = v27[6];
  v18 = v27[1];
  *v16 = v27[0];
  *(v16 + 1) = v18;
  v19 = v27[3];
  *(v16 + 2) = v27[2];
  *(v16 + 3) = v19;
  v26[0] = v11;
  v26[1] = v12;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v20 = v25;
  swift_getKeyPath();
  v26[0] = v20;
  sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v15) = *(v20 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState);

  LOBYTE(v25) = v15;
  v21 = swift_allocObject();
  v22 = *(v1 + 16);
  v21[1] = *v1;
  v21[2] = v22;
  v21[3] = *(v1 + 32);
  sub_1000081F8(&v30, v26, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v29, v26, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v28, v26, &unk_1002640F0, &qword_1001D3490);
  sub_10003566C();
  sub_100035198();
  View.onChange<A>(of:initial:_:)();

  return sub_10000F500(v8, &qword_10025BBB8, &qword_1001D0B68);
}

uint64_t sub_100030624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_10000341C(&qword_10025BC18, &qword_1001D0BA0);
  __chkstk_darwin(v3 - 8);
  v69 = (&v63 - v4);
  v68 = sub_10000341C(&qword_10025BC20, &qword_1001D0BA8);
  v5 = __chkstk_darwin(v68);
  v72 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v71 = &v63 - v7;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000341C(&qword_10025BC28, &qword_1001D0BB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v63 - v13;
  v15 = sub_10000341C(&qword_10025BC30, &qword_1001D0BB8);
  v16 = __chkstk_darwin(v15);
  v70 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v74 = a1;
  v75 = &v63 - v18;
  v123 = *(a1 + 8);
  v122 = *a1;
  v19 = v122;
  LODWORD(a1) = v123;

  v20 = v19;
  v67 = a1;
  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v122, &qword_10025BAA0, &qword_1001D0808);
    (*(v9 + 8))(v11, v8);
    v20 = *&v89[0];
  }

  v63 = v11;
  v64 = v9;
  v65 = v8;
  if (v20)
  {
    swift_getKeyPath();
    *&v89[0] = v20;
    sub_1000354A0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v22 = sub_10000341C(&qword_10025BC38, &qword_1001D0BC0);
  v23 = v74;
  sub_100030F74(v74, &v14[*(v22 + 44)]);
  v24 = static Color.blue.getter();
  v25 = v75;
  sub_1000E40B8(v24, v75);

  sub_10000F500(v14, &qword_10025BC28, &qword_1001D0BB0);
  *(v25 + *(v15 + 36)) = 0x3FF0000000000000;
  v26 = static HorizontalAlignment.center.getter();
  v99 = 1;
  sub_100032B84(v23, v89);
  v102 = v89[2];
  v103 = v89[3];
  v104 = v89[4];
  v105 = v89[5];
  v100 = v89[0];
  v101 = v89[1];
  v107 = v89[5];
  v106[2] = v89[2];
  v106[3] = v89[3];
  v106[4] = v89[4];
  v106[0] = v89[0];
  v106[1] = v89[1];
  sub_1000081F8(&v100, v76, &qword_10025BAE8, &qword_1001D0980);
  sub_10000F500(v106, &qword_10025BAE8, &qword_1001D0980);
  *(&v89[4] + 7) = v104;
  *(&v89[3] + 7) = v103;
  *(&v89[2] + 7) = v102;
  *(&v89[1] + 7) = v101;
  *(v89 + 7) = v100;
  v128 = v89[2];
  v129 = v89[3];
  v130 = v89[4];
  v126 = v89[0];
  BYTE7(v89[5]) = v105;
  v124[0] = v26;
  v124[1] = 0;
  v125 = v99;
  v131 = *&v89[5];
  v127 = v89[1];
  v27 = static Color.blue.getter();
  sub_1000E3EDC(v27, &v110);

  sub_10000F500(v124, &qword_10025BAF0, &qword_1001D0988);
  v66 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  LOBYTE(v89[0]) = 0;

  if ((v67 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v37 = v63;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v122, &qword_10025BAA0, &qword_1001D0808);
    (*(v64 + 8))(v37, v65);
    v19 = *&v89[0];
  }

  if (v19)
  {
    swift_getKeyPath();
    *&v89[0] = v19;
    sub_1000354A0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  v38 = static VerticalAlignment.center.getter();
  v39 = v69;
  *v69 = v38;
  *(v39 + 8) = 0;
  *(v39 + 16) = 1;
  v40 = sub_10000341C(&qword_10025BC40, &qword_1001D0BC8);
  sub_1000331D0(v74, (v39 + *(v40 + 44)));
  v41 = static Color.blue.getter();
  v42 = v71;
  sub_1000E40DC(v41, v71);

  sub_10000F500(v39, &qword_10025BC18, &qword_1001D0BA0);
  *(v42 + *(v68 + 36)) = 0x3FF0000000000000;
  v43 = v75;
  v44 = v70;
  sub_1000081F8(v75, v70, &qword_10025BC30, &qword_1001D0BB8);
  v45 = v72;
  sub_1000081F8(v42, v72, &qword_10025BC20, &qword_1001D0BA8);
  v46 = v73;
  sub_1000081F8(v44, v73, &qword_10025BC30, &qword_1001D0BB8);
  v47 = sub_10000341C(&qword_10025BC48, &qword_1001D0BD0);
  v48 = v46 + *(v47 + 48);
  v81 = v118;
  v82 = v119;
  v83 = v120;
  v84 = v121;
  v77 = v114;
  v78 = v115;
  v79 = v116;
  v80 = v117;
  v76[0] = v110;
  v76[1] = v111;
  v76[2] = v112;
  v76[3] = v113;
  v49 = v66;
  LOBYTE(v85) = v66;
  *(&v85 + 1) = *v109;
  DWORD1(v85) = *&v109[3];
  *(&v85 + 1) = v29;
  *&v86 = v31;
  *(&v86 + 1) = v33;
  *&v87 = v35;
  BYTE8(v87) = 0;
  HIDWORD(v87) = *&v108[3];
  *(&v87 + 9) = *v108;
  v88 = 0x3FE0000000000000;
  v50 = v110;
  v51 = v111;
  v52 = v113;
  *(v48 + 32) = v112;
  *(v48 + 48) = v52;
  *v48 = v50;
  *(v48 + 16) = v51;
  v53 = v77;
  v54 = v78;
  v55 = v80;
  *(v48 + 96) = v79;
  *(v48 + 112) = v55;
  *(v48 + 64) = v53;
  *(v48 + 80) = v54;
  v56 = v81;
  v57 = v82;
  v58 = v84;
  *(v48 + 160) = v83;
  *(v48 + 176) = v58;
  *(v48 + 128) = v56;
  *(v48 + 144) = v57;
  v59 = v85;
  v60 = v86;
  v61 = v87;
  *(v48 + 240) = 0x3FE0000000000000;
  *(v48 + 208) = v60;
  *(v48 + 224) = v61;
  *(v48 + 192) = v59;
  sub_1000081F8(v45, v46 + *(v47 + 64), &qword_10025BC20, &qword_1001D0BA8);
  sub_1000081F8(v76, v89, &qword_10025BC50, &qword_1001D0BD8);
  sub_10000F500(v42, &qword_10025BC20, &qword_1001D0BA8);
  sub_10000F500(v43, &qword_10025BC30, &qword_1001D0BB8);
  sub_10000F500(v45, &qword_10025BC20, &qword_1001D0BA8);
  v89[8] = v118;
  v89[9] = v119;
  v89[10] = v120;
  v89[11] = v121;
  v89[4] = v114;
  v89[5] = v115;
  v89[6] = v116;
  v89[7] = v117;
  v89[0] = v110;
  v89[1] = v111;
  v89[2] = v112;
  v89[3] = v113;
  v90 = v49;
  *v91 = *v109;
  *&v91[3] = *&v109[3];
  v92 = v29;
  v93 = v31;
  v94 = v33;
  v95 = v35;
  v96 = 0;
  *v97 = *v108;
  *&v97[3] = *&v108[3];
  v98 = 0x3FE0000000000000;
  sub_10000F500(v89, &qword_10025BC50, &qword_1001D0BD8);
  return sub_10000F500(v44, &qword_10025BC30, &qword_1001D0BB8);
}

uint64_t sub_100030F74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000341C(&qword_10025BCC0, &unk_1001D0C50);
  v6 = __chkstk_darwin(v61);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = (&v55 - v8);
  v9 = sub_10000341C(&qword_10025D700, &unk_1001DE550);
  v10 = __chkstk_darwin(v9);
  v66 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = &v55 - v12;
  v59 = sub_10000341C(&qword_10025BCC8, &qword_1001E1150);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v14 = &v55 - v13;
  v15 = sub_10000341C(&qword_10025BCD0, &qword_1001D0C60);
  v63 = *(v15 - 8);
  __chkstk_darwin(v15);
  v57 = &v55 - v16;
  v17 = sub_10000341C(&qword_10025BCD8, &qword_1001D0C68);
  v18 = __chkstk_darwin(v17 - 8);
  v64 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v55 - v20;
  v78 = *(a1 + 2);
  v72[0] = *(a1 + 2);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  v68 = v21;
  if (v71)
  {
    v22 = 1;
  }

  else
  {
    v23 = *a1;
    v77 = *(a1 + 8);
    v75 = a1[3];
    v76 = v23;
    v24 = swift_allocObject();
    v25 = *(a1 + 1);
    v24[1] = *a1;
    v24[2] = v25;
    v24[3] = *(a1 + 2);
    sub_1000081F8(&v76, v72, &qword_10025BAA0, &qword_1001D0808);

    sub_1000081F8(&v75, v72, &qword_10025BAA8, &unk_1001D0810);
    sub_1000081F8(&v78, v72, &unk_1002640F0, &qword_1001D3490);
    v56 = v9;
    sub_10000341C(&qword_10025BCE0, &qword_1001D0C70);
    v55 = a1;
    v26 = v15;
    v27 = v14;
    v21 = v68;
    sub_1000359D4(&qword_10025BCE8, &qword_10025BCE0, &qword_1001D0C70, sub_100035B10);
    v28 = v26;
    a1 = v55;
    Button.init(action:label:)();
    sub_100007120(&qword_10025BCF8, &qword_10025BCC8, &qword_1001E1150, &protocol conformance descriptor for Button<A>);
    sub_100035980();
    LODWORD(v72[0]) = 0;
    v29 = v57;
    v30 = v59;
    View.buttonStyle<A>(_:)();
    (*(v58 + 8))(v27, v30);
    type metadata accessor for PresentationModel(0);
    sub_1000354A0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
    v9 = v56;
    v31 = Environment.init<A>(_:)();
    v15 = v28;
    v32 = v29 + *(v28 + 36);
    *v32 = v31;
    *(v32 + 8) = v33 & 1;
    sub_10002A894(v29, v21, &qword_10025BCD0, &qword_1001D0C60);
    v22 = 0;
  }

  (*(v63 + 56))(v21, v22, 1, v15);
  v34 = v69;
  Divider.init()();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v72);
  v35 = (v34 + *(v9 + 36));
  v36 = v72[1];
  *v35 = v72[0];
  v35[1] = v36;
  v35[2] = v72[2];
  v74 = *(a1 + 8);
  v37 = *a1;
  v73 = *a1;
  LOBYTE(v34) = v74;

  if ((v34 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v38 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v39 = v60;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v73, &qword_10025BAA0, &qword_1001D0808);
    (*(v4 + 8))(v39, v3);
    v37 = v71;
  }

  if (v37)
  {
    swift_getKeyPath();
    *&v71 = v37;
    sub_1000354A0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  v40 = static VerticalAlignment.center.getter();
  v41 = v65;
  *v65 = v40;
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  v42 = sub_10000341C(&qword_10025BD00, &qword_1001D0C78);
  sub_100031B64(a1, (v41 + *(v42 + 44)));
  v71 = *(a1 + 1);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v43 = v70;
  swift_getKeyPath();
  *&v71 = v43;
  sub_1000354A0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v43 + 112);

  KeyPath = swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v47 = (v41 + *(v61 + 36));
  *v47 = KeyPath;
  v47[1] = sub_100035DEC;
  v47[2] = v46;
  v48 = v64;
  sub_1000081F8(v21, v64, &qword_10025BCD8, &qword_1001D0C68);
  v49 = v69;
  v50 = v66;
  sub_1000081F8(v69, v66, &qword_10025D700, &unk_1001DE550);
  v51 = v62;
  sub_1000081F8(v41, v62, &qword_10025BCC0, &unk_1001D0C50);
  v52 = v67;
  sub_1000081F8(v48, v67, &qword_10025BCD8, &qword_1001D0C68);
  v53 = sub_10000341C(&qword_10025BD08, &unk_1001D0C80);
  sub_1000081F8(v50, v52 + *(v53 + 48), &qword_10025D700, &unk_1001DE550);
  sub_1000081F8(v51, v52 + *(v53 + 64), &qword_10025BCC0, &unk_1001D0C50);
  sub_10000F500(v41, &qword_10025BCC0, &unk_1001D0C50);
  sub_10000F500(v49, &qword_10025D700, &unk_1001DE550);
  sub_10000F500(v68, &qword_10025BCD8, &qword_1001D0C68);
  sub_10000F500(v51, &qword_10025BCC0, &unk_1001D0C50);
  sub_10000F500(v50, &qword_10025D700, &unk_1001DE550);
  return sub_10000F500(v48, &qword_10025BCD8, &qword_1001D0C68);
}

uint64_t sub_1000319B4(uint64_t a1)
{
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  sub_1001A7A44(0, 0, 0);

  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100031A7C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for PresentationModel(0);
  sub_1000354A0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  result = Environment.init<A>(_:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = v10 & 1;
  return result;
}

uint64_t sub_100031B64@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v88 = a2;
  v75 = type metadata accessor for FeedbackView(0);
  __chkstk_darwin(v75);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10000341C(&qword_10025BD10, &unk_1001DE680);
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v74 = &v68 - v5;
  v6 = sub_10000341C(&qword_10025BD18, &unk_1001D0C90);
  v7 = __chkstk_darwin(v6 - 8);
  v87 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v85 = &v68 - v9;
  v78 = type metadata accessor for ButtonToggleStyle();
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10000341C(&qword_10025BD20, &unk_1001E1170);
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v13 = &v68 - v12;
  v14 = sub_10000341C(&qword_10025BD28, &unk_1001D0CA0);
  v82 = *(v14 - 8);
  v83 = v14;
  v15 = __chkstk_darwin(v14);
  v81 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v68 - v17;
  v95 = *(a1 + 16);
  v94 = *(a1 + 16);
  v89 = sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.projectedValue.getter();
  v19 = v90;
  v20 = v91;
  swift_getKeyPath();
  v90 = v19;
  v91 = v20;
  sub_10000341C(&qword_10025BB70, &unk_1001D0A10);
  Binding.subscript.getter();

  sub_10000341C(&qword_10025BD30, &unk_1001E1180);
  sub_100035B64();
  Toggle.init(isOn:label:)();
  ButtonToggleStyle.init()();
  sub_100007120(&qword_10025BD40, &qword_10025BD20, &unk_1001E1170, &protocol conformance descriptor for Toggle<A>);
  sub_1000354A0(&qword_10025BB88, &type metadata accessor for ButtonToggleStyle, &protocol conformance descriptor for ButtonToggleStyle);
  v80 = v18;
  v21 = v76;
  v22 = v78;
  View.toggleStyle<A>(_:)();
  (*(v79 + 8))(v11, v22);
  (*(v77 + 8))(v13, v21);
  v23 = type metadata accessor for FeedbackFeatureFlags();
  v92 = v23;
  v93 = sub_1000354A0(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v24 = sub_10002DB6C(&v90);
  (*(*(v23 - 8) + 104))(v24, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v23);
  LOBYTE(v23) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v90);
  if (v23)
  {
    v90 = v95;
    State.wrappedValue.getter();
    v25 = v94;
    swift_getKeyPath();
    *&v90 = v25;
    sub_1000354A0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = *(v25 + 80);
    v27 = *(v25 + 88);
    v28 = *(v25 + 96);
    v79 = *(v25 + 72);
    v78 = v26;
    v77 = v27;
    LODWORD(v76) = v28;
    sub_10002879C(v79, v26, v27, v28);

    v90 = v95;
    State.wrappedValue.getter();
    v29 = v94;
    swift_getKeyPath();
    *&v90 = v29;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = *(v29 + 40);
    *&v73 = *(v29 + 32);
    *(&v73 + 1) = v30;

    v90 = v95;
    State.wrappedValue.getter();
    v31 = v94;
    swift_getKeyPath();
    *&v90 = v31;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = *(v31 + 56);
    *&v72 = *(v31 + 48);
    *(&v72 + 1) = v32;

    v90 = v95;
    State.wrappedValue.getter();
    v33 = v94;
    swift_getKeyPath();
    *&v90 = v33;
    sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = *(v33 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback + 8);
    v70 = *(v33 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback);
    v71 = v34;

    v90 = v95;
    State.wrappedValue.getter();
    v69 = sub_1001A2480();
    v68 = v35;

    v90 = v95;
    State.wrappedValue.getter();
    v36 = v94;
    swift_getKeyPath();
    *&v90 = v36;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v37 = *(v36 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString);
    v38 = *(v36 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString + 8);

    v90 = v95;
    State.wrappedValue.getter();
    v39 = v94;
    swift_getKeyPath();
    *&v90 = v39;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = *(v39 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);

    if (v40)
    {
      v90 = v95;
      State.wrappedValue.getter();
      v41 = v94;
      swift_getKeyPath();
      *&v90 = v41;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v42 = *(v41 + 112);
    }

    else
    {
      v42 = 1;
    }

    v90 = v95;
    State.wrappedValue.getter();
    v47 = v94;
    swift_getKeyPath();
    *&v90 = v47;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v49 = *(v47 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
    v48 = *(v47 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage + 8);

    *(v4 + 25) = 0;
    v50 = *(v75 + 92);
    *&v4[v50] = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    v51 = v78;
    *(v4 + 16) = v79;
    *(v4 + 17) = v51;
    *(v4 + 18) = v77;
    v4[152] = v76;
    v52 = v73;
    *(v4 + 24) = v72;
    *(v4 + 8) = v52;
    v53 = v71;
    *(v4 + 5) = v70;
    *(v4 + 6) = v53;
    *(v4 + 7) = 0;
    *(v4 + 8) = 0;
    v54 = v68;
    *(v4 + 9) = v69;
    *(v4 + 10) = v54;
    *(v4 + 11) = v37;
    *(v4 + 12) = v38;
    *v4 = 0;
    v4[153] = v42;
    *(v4 + 77) = 0;
    v4[156] = 0;
    *&v94 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v55 = v90;
    *(v4 + 13) = _swiftEmptyArrayStorage;
    *(v4 + 14) = _swiftEmptyArrayStorage;
    *(v4 + 15) = _swiftEmptyArrayStorage;
    v56 = *(&v90 + 1);
    *(v4 + 26) = v55;
    *(v4 + 10) = 0u;
    *(v4 + 11) = 0u;
    *(v4 + 24) = 0;
    *(v4 + 27) = v56;
    *(v4 + 28) = v49;
    *(v4 + 29) = v48;
    LODWORD(v90) = 0x1000000;
    sub_1000354A0(&qword_10025BBA0, type metadata accessor for FeedbackView, &unk_1001D8444);
    sub_100035980();
    v57 = v74;
    View.buttonStyle<A>(_:)();
    sub_10003553C(v4);
    v46 = v84;
    v45 = v85;
    v44 = v86;
    (*(v84 + 32))(v85, v57, v86);
    v43 = 0;
  }

  else
  {
    v43 = 1;
    v45 = v85;
    v44 = v86;
    v46 = v84;
  }

  (*(v46 + 56))(v45, v43, 1, v44);
  v59 = v82;
  v58 = v83;
  v60 = *(v82 + 16);
  v61 = v81;
  v62 = v80;
  v60(v81, v80, v83);
  v63 = v87;
  sub_1000081F8(v45, v87, &qword_10025BD18, &unk_1001D0C90);
  v64 = v88;
  v60(v88, v61, v58);
  v65 = sub_10000341C(&qword_10025BD48, &unk_1001D0CB0);
  sub_1000081F8(v63, &v64[*(v65 + 48)], &qword_10025BD18, &unk_1001D0C90);
  sub_10000F500(v45, &qword_10025BD18, &unk_1001D0C90);
  v66 = *(v59 + 8);
  v66(v62, v58);
  sub_10000F500(v63, &qword_10025BD18, &unk_1001D0C90);
  return (v66)(v61, v58);
}

uint64_t sub_100032858@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IconOnlyLabelStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  Label.init(title:icon:)();
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  sub_1000354A0(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  LOBYTE(v9) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = sub_10000341C(&qword_10025BD30, &unk_1001E1180);
  v19 = a1 + *(result + 36);
  *v19 = v9;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  return result;
}

uint64_t sub_100032B04@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_100032B84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v5 = __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_10002AC34();
  v8 = Text.init<A>(_:)();
  v33 = v9;
  v34 = v8;
  v32 = v10;
  v35 = v11;
  type metadata accessor for PresentationModel(0);
  sub_1000354A0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  v12 = Environment.init<A>(_:)();
  v31 = v13;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v14 = sub_1001A1610();

  if (!v14)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v27);
    v36 = *(a1 + 16);
    State.wrappedValue.getter();
    v28 = sub_10019F9C4();

    v22 = v12;
    if (v28 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v36 = v29;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v30._countAndFlagsBits = 0x65676E61686320;
    v30._object = 0xE700000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v30);
    LocalizedStringKey.init(stringInterpolation:)();
    Text.init(_:tableName:bundle:comment:)();
    goto LABEL_12;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
  v36 = *(a1 + 16);
  State.wrappedValue.getter();
  v16 = sub_1001A1610();
  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = sub_10019F9C4();
  v18 = sub_1001A1610();
  if (v18)
  {
    v19 = v18;
    v20 = sub_100048038(v18, v17);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      if (__OFADD__(v20, 1))
      {
        __break(1u);
      }

      else
      {
        LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v23._countAndFlagsBits = 543584032;
        v23._object = 0xE400000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
        v36 = *(a1 + 16);
        State.wrappedValue.getter();
        v24 = sub_10019F9C4();

        v22 = v12;
        if (!(v24 >> 62))
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

          *&v36 = v25;
          LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v26._countAndFlagsBits = 0;
          v26._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
          LocalizedStringKey.init(stringInterpolation:)();
          Text.init(_:tableName:bundle:comment:)();
LABEL_12:
          sub_10000341C(&qword_10025BB38, &unk_1001D09C0);
          sub_1000359D4(&qword_10025BB40, &qword_10025BB38, &unk_1001D09C0, sub_100035390);
          _ConditionalContent<>.init(storage:)();
          *a2 = v34;
          *(a2 + 8) = v33;
          *(a2 + 16) = v32 & 1;
          *(a2 + 24) = v35;
          *(a2 + 32) = v22;
          *(a2 + 40) = v31 & 1;
          *(a2 + 48) = v36;
          *(a2 + 64) = v37;
          *(a2 + 80) = v38;
          sub_100007D98(v34, v33, v32 & 1);

          j__swift_retain(v22);
          sub_1000353E8(v36, *(&v36 + 1), v37, *(&v37 + 1));
          sub_100035424(v36, *(&v36 + 1), v37, *(&v37 + 1));
          sub_10002A984(v34, v33, v32 & 1);

          j__swift_release(v22, v31 & 1);
          return;
        }
      }

      v25 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1000331D0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v90 = a2;
  v75 = sub_10000341C(&qword_10025BC58, &unk_1001E10B0);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = v72 - v3;
  v76 = sub_10000341C(&qword_10025BC60, &unk_1001D0C10);
  __chkstk_darwin(v76);
  v77 = v72 - v4;
  v91 = sub_10000341C(&qword_10025BC68, &unk_1001E10C0);
  v85 = *(v91 - 8);
  __chkstk_darwin(v91);
  v78 = v72 - v5;
  v6 = sub_10000341C(&qword_10025BC70, &unk_1001D0C20);
  v7 = __chkstk_darwin(v6 - 8);
  v89 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v92 = v72 - v9;
  v83 = sub_10000341C(&qword_10025D700, &unk_1001DE550) - 8;
  v10 = __chkstk_darwin(v83);
  v88 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = v72 - v12;
  v82 = sub_10000341C(&qword_10025BC78, &qword_1001D0C30);
  v96 = *(v82 - 8);
  __chkstk_darwin(v82);
  v14 = v72 - v13;
  v87 = sub_10000341C(&qword_10025BC80, &qword_1001D0C38);
  v86 = *(v87 - 8);
  v15 = __chkstk_darwin(v87);
  v84 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v95 = v72 - v18;
  v19 = __chkstk_darwin(v17);
  v97 = v72 - v20;
  __chkstk_darwin(v19);
  v22 = v72 - v21;
  v23 = *a1;
  v104 = *(a1 + 8);
  v24 = a1[2];
  v102 = a1[3];
  v25 = v102;
  v103 = v23;
  v101 = *(a1 + 2);
  v26 = swift_allocObject();
  v27 = *(a1 + 1);
  v26[1] = *a1;
  v26[2] = v27;
  v26[3] = *(a1 + 2);
  sub_1000081F8(&v103, v100, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v102, v100, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v101, v100, &unk_1002640F0, &qword_1001D3490);
  v81 = sub_10000341C(&qword_10025BB18, &qword_1001D09B0);
  v80 = sub_100035280();
  Button.init(action:label:)();
  *&v100[0] = v24;
  *(&v100[0] + 1) = v25;
  v28 = sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v29 = sub_1001A13B8();

  v100[0] = v101;
  v79 = sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  LOBYTE(v100[0]) = v29 & 1;
  BYTE1(v100[0]) = v99;
  WORD1(v100[0]) = 256;
  sub_100007120(&qword_10025BC88, &qword_10025BC78, &qword_1001D0C30, &protocol conformance descriptor for Button<A>);
  v30 = sub_100035980();
  v94 = v22;
  v31 = v82;
  View.buttonStyle<A>(_:)();
  v32 = *(v96 + 8);
  v96 += 8;
  v32(v14, v31);
  v33 = swift_allocObject();
  v34 = *(a1 + 1);
  v33[1] = *a1;
  v33[2] = v34;
  v33[3] = *(a1 + 2);
  sub_1000081F8(&v103, v100, &qword_10025BAA0, &qword_1001D0808);

  sub_1000081F8(&v102, v100, &qword_10025BAA8, &unk_1001D0810);
  sub_1000081F8(&v101, v100, &unk_1002640F0, &qword_1001D3490);
  Button.init(action:label:)();
  v72[0] = v24;
  *&v100[0] = v24;
  *(&v100[0] + 1) = v25;
  v81 = v25;
  v80 = v28;
  State.wrappedValue.getter();
  LOBYTE(v28) = sub_1001A13B8();

  v100[0] = v101;
  State.wrappedValue.getter();
  LOBYTE(v100[0]) = v28 & 1;
  BYTE1(v100[0]) = v99;
  WORD1(v100[0]) = 256;
  v72[1] = v30;
  View.buttonStyle<A>(_:)();
  v32(v14, v31);
  v36 = v92;
  v35 = v93;
  Divider.init()();
  static Alignment.center.getter();
  v37 = 1;
  _FrameLayout.init(width:height:alignment:)(v100);
  v38 = (v35 + *(v83 + 44));
  v39 = v100[1];
  *v38 = v100[0];
  v38[1] = v39;
  v40 = v101;
  v38[2] = v100[2];
  v99 = v40;
  State.wrappedValue.getter();
  if ((v98 & 1) == 0)
  {
    v41 = swift_allocObject();
    v42 = *(a1 + 1);
    v41[1] = *a1;
    v41[2] = v42;
    v41[3] = *(a1 + 2);
    sub_1000081F8(&v103, &v99, &qword_10025BAA0, &qword_1001D0808);
    v43 = v72[0];

    sub_1000081F8(&v102, &v99, &qword_10025BAA8, &unk_1001D0810);
    sub_1000081F8(&v101, &v99, &unk_1002640F0, &qword_1001D3490);
    sub_10000341C(&qword_10025BC98, &qword_1001D0C40);
    sub_1000359D4(&qword_10025BCA0, &qword_10025BC98, &qword_1001D0C40, sub_100035A58);
    v44 = v73;
    Button.init(action:label:)();
    v45 = v81;
    *&v99 = v43;
    *(&v99 + 1) = v81;
    State.wrappedValue.getter();
    v46 = v98;
    swift_getKeyPath();
    *&v99 = v46;
    sub_1000354A0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v47 = *(v46 + 112);

    LOBYTE(v99) = v47;
    *(&v99 + 1) = 0;
    BYTE3(v99) = 0;
    sub_100007120(&qword_10025BCB0, &qword_10025BC58, &unk_1001E10B0, &protocol conformance descriptor for Button<A>);
    v48 = v77;
    v49 = v75;
    View.buttonStyle<A>(_:)();
    (*(v74 + 8))(v44, v49);
    type metadata accessor for PresentationModel(0);
    sub_1000354A0(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
    v50 = Environment.init<A>(_:)();
    v51 = v48 + *(v76 + 36);
    *v51 = v50;
    *(v51 + 8) = v52 & 1;
    *&v99 = v43;
    *(&v99 + 1) = v45;
    State.wrappedValue.getter();
    v53 = v98;
    swift_getKeyPath();
    *&v99 = v53;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v53 + 112))
    {
      v54 = 1;
    }

    else
    {
      swift_getKeyPath();
      *&v99 = v53;
      sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v54 = *(v53 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session) == 0;
    }

    KeyPath = swift_getKeyPath();
    v56 = swift_allocObject();
    *(v56 + 16) = v54;
    v57 = v78;
    sub_10002A894(v48, v78, &qword_10025BC60, &unk_1001D0C10);
    v58 = (v57 + *(v91 + 36));
    *v58 = KeyPath;
    v58[1] = sub_100035DEC;
    v58[2] = v56;
    sub_10002A894(v57, v36, &qword_10025BC68, &unk_1001E10C0);
    v37 = 0;
  }

  (*(v85 + 56))(v36, v37, 1, v91);
  v59 = v86;
  v60 = v36;
  v61 = *(v86 + 16);
  v62 = v95;
  v63 = v87;
  v61(v95, v94, v87);
  v64 = v84;
  v61(v84, v97, v63);
  v65 = v93;
  v66 = v88;
  sub_1000081F8(v93, v88, &qword_10025D700, &unk_1001DE550);
  v67 = v89;
  sub_1000081F8(v60, v89, &qword_10025BC70, &unk_1001D0C20);
  v68 = v90;
  v61(v90, v62, v63);
  v69 = sub_10000341C(&qword_10025BCB8, &qword_1001D0C48);
  v61(&v68[v69[12]], v64, v63);
  sub_1000081F8(v66, &v68[v69[16]], &qword_10025D700, &unk_1001DE550);
  sub_1000081F8(v67, &v68[v69[20]], &qword_10025BC70, &unk_1001D0C20);
  sub_10000F500(v92, &qword_10025BC70, &unk_1001D0C20);
  sub_10000F500(v65, &qword_10025D700, &unk_1001DE550);
  v70 = *(v59 + 8);
  v70(v97, v63);
  v70(v94, v63);
  sub_10000F500(v67, &qword_10025BC70, &unk_1001D0C20);
  sub_10000F500(v66, &qword_10025D700, &unk_1001DE550);
  v70(v64, v63);
  return (v70)(v95, v63);
}

uint64_t sub_100034070(uint64_t a1, void (*a2)(void *))
{
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  v3 = State.wrappedValue.getter();
  a2(v3);
}

uint64_t sub_1000340D4(uint64_t a1)
{
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal);

  sub_1001A7A44((v1 & 1) == 0, 0, 0);

  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100034248@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000342B4(uint64_t a1)
{
  v1[13] = a1;
  type metadata accessor for MainActor();
  v1[14] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v3;
  v1[16] = v2;

  return _swift_task_switch(sub_10003434C, v3, v2);
}

uint64_t sub_10003434C()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = *(v1 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v2 = *(v0 + 64);
  swift_getKeyPath();
  *(v0 + 72) = v2;
  sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session))
  {

LABEL_4:

    v5 = *(v0 + 8);

    return v5();
  }

  *(v0 + 32) = *(v1 + 16);
  State.wrappedValue.getter();
  v3 = *(v0 + 80);
  swift_getKeyPath();
  *(v0 + 88) = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState);

  if (v4 == 1)
  {
    goto LABEL_4;
  }

  *(v0 + 48) = *(v1 + 16);
  State.wrappedValue.getter();
  *(v0 + 136) = *(v0 + 96);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_100034594;

  return sub_1001A2C88();
}

uint64_t sub_100034594()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_100035DF0, v3, v2);
}

uint64_t sub_1000346D8(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  result = __chkstk_darwin(v12 - 8);
  if (*a2 == 1)
  {
    v32 = a5;
    v33 = a6;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0x2065736F706D6F43;
    v14._object = 0xED00002068746977;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
    v15._countAndFlagsBits = sub_1000971C0();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v15);

    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_100149E4C();
    v17 = [objc_opt_self() mainBundle];
    v44._object = 0x80000001001E3AF0;
    v18._countAndFlagsBits = 0x402520657355;
    v18._object = 0xE600000000000000;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v44._countAndFlagsBits = 0xD000000000000069;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v44);

    sub_10000341C(&qword_10025BA50, &qword_1001D0860);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1001CF9D0;
    v21 = sub_1000971C0();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_10002D7B0();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    static String.localizedStringWithFormat(_:_:)();

    v24 = a3[3];
    aBlock = a3[2];
    v35 = v24;
    sub_10000341C(&unk_10025B658, &qword_1001D0830);
    State.wrappedValue.getter();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      if ([Strong respondsToSelector:"showAlertWithTitle:message:buttonTitle:buttonAction:"])
      {
        v41 = *a3;
        v42 = *(a3 + 8);
        v43 = v24;
        v40 = *(a3 + 2);
        v26 = swift_allocObject();
        v27 = *(a3 + 1);
        v26[1] = *a3;
        v26[2] = v27;
        v26[3] = *(a3 + 2);
        sub_1000081F8(&v41, &aBlock, &qword_10025BAA0, &qword_1001D0808);

        sub_1000081F8(&v43, &aBlock, &qword_10025BAA8, &unk_1001D0810);
        sub_1000081F8(&v40, &aBlock, &unk_1002640F0, &qword_1001D3490);
        v28 = String._bridgeToObjectiveC()();

        v29 = String._bridgeToObjectiveC()();

        v30 = String._bridgeToObjectiveC()();

        v38 = v32;
        v39 = v26;
        aBlock = _NSConcreteStackBlock;
        v35 = 1107296256;
        v36 = sub_1001256BC;
        v37 = v33;
        v31 = _Block_copy(&aBlock);
        [Strong showAlertWithTitle:v28 message:v29 buttonTitle:v30 buttonAction:v31];
        swift_unknownObjectRelease();
        _Block_release(v31);
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100034BBC(uint64_t a1)
{
  v12 = *(a1 + 16);
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v12 = v11[0];
  sub_1000354A0(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11[0] + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task))
  {

    Task.cancel()();
  }

  sub_10019F44C(0);

  v12 = *(a1 + 16);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v12 = v11[0];
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v11[0] + v2, &v12, &unk_10025B1C0, &unk_1001CFA90);

  if (v13)
  {
    sub_100028458(&v12, v11);
    sub_10000F500(&v12, &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v11, v11[3]);
    sub_10000ECC4();
    sub_10000F4B4(v11);
  }

  else
  {
    sub_10000F500(&v12, &unk_10025B1C0, &unk_1001CFA90);
  }

  v12 = *(a1 + 16);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"handoffFromUCBFromTool:withPrompt:"])
    {
      v12 = *(a1 + 16);
      State.wrappedValue.getter();
      v5 = v11[0];
      swift_getKeyPath();
      *&v12 = v5;
      sub_1000354A0(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v6 = *(v5 + 72);
      v7 = *(v5 + 80);
      v8 = *(v5 + 88);
      v9 = *(v5 + 96);
      sub_10002879C(v6, v7, v8, *(v5 + 96));

      if (v9 == 255)
      {
        result = swift_unknownObjectRelease();
        __break(1u);
        return result;
      }

      v10 = sub_100106D00(v6, v7, v8, v9);
      sub_1000278C0(v6, v7, v8, v9);
      [Strong handoffFromUCBFromTool:v10 withPrompt:0];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100034FD4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100028688;

  return sub_10002FD38(v0 + 16);
}

unint64_t sub_1000350B0()
{
  result = qword_10025BAB8;
  if (!qword_10025BAB8)
  {
    sub_100003E34(&qword_10025BA88, &qword_1001D07F0);
    sub_100007120(&qword_10025BAC0, &qword_10025BA90, &qword_1001D07F8, &unk_1001D6138);
    sub_1000354A0(&qword_10025A930, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BAB8);
  }

  return result;
}

unint64_t sub_100035198()
{
  result = qword_10025BAC8;
  if (!qword_10025BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BAC8);
  }

  return result;
}

uint64_t sub_100035208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100035280()
{
  result = qword_10025BB20;
  if (!qword_10025BB20)
  {
    sub_100003E34(&qword_10025BB18, &qword_1001D09B0);
    sub_10003530C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BB20);
  }

  return result;
}

unint64_t sub_10003530C()
{
  result = qword_10025BB28;
  if (!qword_10025BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BB28);
  }

  return result;
}

unint64_t sub_100035390()
{
  result = qword_10025BB48;
  if (!qword_10025BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BB48);
  }

  return result;
}

uint64_t sub_1000353E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_100007D98(a1, a2, a3 & 1);
}

uint64_t sub_100035424(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10002A984(a1, a2, a3 & 1);
}

uint64_t sub_1000354A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000354E8()
{
  result = qword_10025BBA8;
  if (!qword_10025BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BBA8);
  }

  return result;
}

uint64_t sub_10003553C(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100035598()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002B2A0;

  return sub_1000342B4(v0 + 16);
}

unint64_t sub_10003566C()
{
  result = qword_10025BBC8;
  if (!qword_10025BBC8)
  {
    sub_100003E34(&qword_10025BBB8, &qword_1001D0B68);
    sub_1000356F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BBC8);
  }

  return result;
}

unint64_t sub_1000356F8()
{
  result = qword_10025BBD0;
  if (!qword_10025BBD0)
  {
    sub_100003E34(&qword_10025BBB0, &qword_1001D0B60);
    sub_1000357B4();
    sub_1000354A0(&qword_10025A930, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BBD0);
  }

  return result;
}

unint64_t sub_1000357B4()
{
  result = qword_10025BBD8;
  if (!qword_10025BBD8)
  {
    sub_100003E34(&qword_10025BBE0, &qword_1001D0B88);
    sub_100035840();
    sub_100035924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BBD8);
  }

  return result;
}

unint64_t sub_100035840()
{
  result = qword_10025BBE8;
  if (!qword_10025BBE8)
  {
    sub_100003E34(&qword_10025BBC0, &qword_1001D0B70);
    sub_100007120(&qword_10025BBF0, &qword_10025BBF8, &qword_1001D0B90, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100007120(&qword_10025BC00, &qword_10025BC08, &qword_1001D0B98, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BBE8);
  }

  return result;
}

unint64_t sub_100035924()
{
  result = qword_10025BC10;
  if (!qword_10025BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BC10);
  }

  return result;
}

unint64_t sub_100035980()
{
  result = qword_10025BC90;
  if (!qword_10025BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BC90);
  }

  return result;
}

uint64_t sub_1000359D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100035A58()
{
  result = qword_10025BCA8;
  if (!qword_10025BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BCA8);
  }

  return result;
}

uint64_t sub_100035ABC()
{
  j__swift_release(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100035B10()
{
  result = qword_10025BCF0;
  if (!qword_10025BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BCF0);
  }

  return result;
}

unint64_t sub_100035B64()
{
  result = qword_10025BD38;
  if (!qword_10025BD38)
  {
    sub_100003E34(&qword_10025BD30, &unk_1001E1180);
    sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
    type metadata accessor for IconOnlyLabelStyle();
    sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
    sub_1000354A0(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025BD38);
  }

  return result;
}

uint64_t sub_100035D00(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  sub_100003E34(a2, a3);
  a4();
  sub_100035198();
  return swift_getOpaqueTypeConformance2();
}

void *sub_100035DF8()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_100035E70(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100038AB4();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_100035FC0()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_100036040(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_100036180()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_100036200(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_100036340()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

uint64_t sub_1000363B0(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100036498()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);
  sub_10002879C(v1, *(v3 + 80), *(v3 + 88), *(v3 + 96));
  return v1;
}

uint64_t sub_100036534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = *(v4 + 72);
  v10 = *(v4 + 80);
  v11 = *(v4 + 88);
  v12 = *(v4 + 96);
  if (sub_100037FBC(v9, v10, v11, v12, a1, a2, a3, a4))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_1000278C0(a1, a2, a3, v5);
  }

  else
  {
    *(v4 + 72) = a1;
    *(v4 + 80) = a2;
    *(v4 + 88) = a3;
    *(v4 + 96) = v5;

    return sub_1000278C0(v9, v10, v11, v12);
  }
}

uint64_t sub_1000366B4()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100036728(unint64_t a1)
{
  if (!*(v1 + 104))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_10017BCDC(v3, a1);

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 104) = a1;
}

uint64_t sub_100036860(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = a2;
}

uint64_t sub_10003689C(unsigned __int8 a1)
{
  v2 = v1[112];
  v1[112] = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong respondsToSelector:"setIsProcessing:"])
    {
      swift_getKeyPath();
      sub_100037F64();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [v4 setIsProcessing:v1[112]];
    }

    swift_unknownObjectRelease();
  }

  return (*(*v1 + 832))(v2);
}

uint64_t sub_100036994()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 112);
}

uint64_t sub_100036A04(char a1)
{
  if (*(v1 + 112) == (a1 & 1))
  {
    v4 = a1 & 1;

    return sub_10003689C(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100036B38()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 120);
  swift_errorRetain();
  return v1;
}

uint64_t sub_100036BB4(uint64_t a1, uint64_t a2)
{
  *(a1 + 120) = a2;
  swift_errorRetain();
}

uint64_t sub_100036BF0(uint64_t a1)
{
  if (a1)
  {
    swift_getErrorValue();
    v2 = sub_100149EB0(v9, v10);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v4 = swift_getKeyPath();
    __chkstk_darwin(v4);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v1 + 120))
  {
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 128) & 1) != 0 || (sub_100037954())
  {
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v1 + 120);
  v7 = *(*v1 + 848);
  swift_errorRetain();
  v7(0, v6, 0, 0);

  if (*(v1 + 128) == 1)
  {

    *(v1 + 128) = 1;
  }

  else
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100036F50()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 128);
}

uint64_t sub_100036FC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_100037038(uint64_t result)
{
  if (*(v1 + 128) == (result & 1))
  {
    *(v1 + 128) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_100037118(char a1)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v1 + 688))(v5) & 1) != 0 && (sub_100037954() & 1) == 0 && (a1)
  {
    swift_getKeyPath();
    v12[1] = v1;
    sub_100037F64();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((v1[144] & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        if ([Strong respondsToSelector:"showContentWarningWithTitle:message:"])
        {
          if (qword_10025A810 != -1)
          {
            swift_once();
          }

          v10 = sub_10000F34C(v3, qword_1002771D0);
          (*(v4 + 16))(v7, v10, v3);
          String.init(localized:)();
          v11 = String._bridgeToObjectiveC()();

          [v9 showContentWarningWithTitle:0 message:v11];
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

uint64_t sub_100037328()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 136);
}

void sub_100037398(uint64_t a1)
{
  if (*(v1 + 136) == a1)
  {
    sub_100037118(a1);
    *(v1 + 136) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000374BC(uint64_t result)
{
  if ((result & 1) == 0)
  {
    v2 = v1;
    swift_getKeyPath();
    sub_100037F64();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + 144) == 1)
    {
      (*(*v1 + 840))(result);
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + 120))
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if ((*(v1 + 128) & 1) == 0)
        {
          result = swift_unknownObjectWeakLoadStrong();
          if (result)
          {
            v3 = result;
            swift_getKeyPath();
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            if (*(v1 + 120))
            {
              swift_errorRetain();
              v4 = _convertErrorToNSError(_:)();
            }

            else
            {
              v4 = 0;
            }

            [v3 endWritingToolsWithError:v4];

            result = swift_unknownObjectRelease();
          }

          if (*(v2 + 128) == 1)
          {
            *(v2 + 128) = 1;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10003770C()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 144);
}

uint64_t sub_10003777C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 144);
  return result;
}

uint64_t sub_10003781C(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 144);
  if (v3 == v2)
  {
    *(v1 + 144) = v2;

    return sub_1000374BC(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037F64();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100037920(uint64_t a1, char a2)
{
  v3 = *(a1 + 144);
  *(a1 + 144) = a2;
  return sub_1000374BC(v3);
}

uint64_t sub_100037954()
{
  swift_getKeyPath();
  sub_100037F64();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[128] & 1) == 0 && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , (v0[136]))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1 = v0[144] ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_100037A50(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  if (a1)
  {
    sub_100037F64();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v4 = *(v2 + 136);
    v5 = v4 | 1;
    sub_100037118(v4 | 1);
    *(v2 + 136) = v5;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  else
  {
    sub_100037F64();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v7 = *(v2 + 136);
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    sub_100037118(v7 & 0xFE);
    *(v2 + 136) = v8;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    if (*(v2 + 144) == 1)
    {
      *(v2 + 144) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t ToolModel.deinit()
{
  sub_100037D88(v0 + 16);

  sub_1000278C0(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  v1 = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ToolModel.__deallocating_deinit()
{
  ToolModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ToolModel(uint64_t a1)
{
  result = qword_10025BD80;
  if (!qword_10025BD80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037E5C(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_100037F64()
{
  result = qword_10025C140;
  if (!qword_10025C140)
  {
    type metadata accessor for ToolModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C140);
  }

  return result;
}

BOOL sub_100037FBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 == -1)
  {
    return ~a8 != 0;
  }

  if (a8 == -1)
  {
    return 1;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a2 == 1)
        {
          return a6 != 1;
        }

        if (a6 != 1)
        {
          if (!a2)
          {
            return a6 || ((a3 ^ a7) & 1) != 0;
          }

          if (a6)
          {
            if (a1 == a5 && a2 == a6)
            {
              if ((a3 & 1) != (a7 & 1))
              {
                return 1;
              }
            }

            else
            {
              v9 = a3;
              v10 = a7;
              if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v9 ^ v10))
              {
                return 1;
              }
            }

            return 0;
          }
        }
      }
    }

    else
    {
      if (!(a3 | a2 | a1))
      {
        return a8 != 2 || a7 | a6 | a5;
      }

      if (a1 != 1 || a3 | a2)
      {
        if (a8 != 2 || a5 != 2)
        {
          return 1;
        }
      }

      else if (a8 != 2 || a5 != 1)
      {
        return 1;
      }

      if (!(a7 | a6))
      {
        return 0;
      }
    }
  }

  else
  {
    if (a8 || a5 != a1)
    {
      return 1;
    }

    if (a3)
    {
      return !a7 || (a2 != a6 || a3 != a7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
    }

    if (!a7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100038160()
{
  v44 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v49 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v38 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v4 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for GenerativeModelsAvailability();
  v7 = *(v45 - 1);
  __chkstk_darwin(v45);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  (*(v46 + 104))(v3, enum case for GenerativeModelsAvailability.LanguageOption.any(_:), v48);
  v17 = v11;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v4 + 8))(v6, v47);
  GenerativeModelsAvailability.availability.getter();
  (*(v7 + 8))(v9, v45);
  (*(v11 + 16))(v14, v16, v10);
  if ((*(v11 + 88))(v14, v10) != enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    v31 = *(v11 + 8);
    v31(v16, v10);
    return (v31)(v14, v10);
  }

  v47 = v16;
  v48 = v10;
  (*(v11 + 96))(v14, v10);
  v18 = v40;
  v19 = v41;
  v20 = v42;
  (*(v41 + 32))(v40, v14, v42);
  v21 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
  v22 = v49;
  v24 = v43;
  v23 = v44;
  v39 = *(v49 + 104);
  v39(v43, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.policyLimited(_:), v44);
  v46 = v21;
  LOBYTE(v21) = sub_100138244(v24, v21);
  v25 = *(v22 + 8);
  v49 = v22 + 8;
  v45 = v25;
  v25(v24, v23);
  v26 = v19;
  v27 = v18;
  if (v21)
  {
    v28 = v20;

    v29 = 2;
    v30 = v47;
LABEL_7:
    v36 = objc_allocWithZone(NSError);
    v37 = String._bridgeToObjectiveC()();
    [v36 initWithDomain:v37 code:v29 userInfo:0];

    swift_willThrow();
    (*(v26 + 8))(v27, v28);
    return (*(v17 + 8))(v30, v48);
  }

  v34 = v43;
  v33 = v44;
  v39(v43, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.regionalSafetyAssetPendingUpdate(_:), v44);
  v35 = sub_100138244(v34, v46);

  v45(v34, v33);
  v30 = v47;
  if (v35)
  {
    v29 = 3;
    v28 = v42;
    goto LABEL_7;
  }

  (*(v26 + 8))(v27, v42);
  return (*(v17 + 8))(v30, v48);
}

uint64_t sub_100038804()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 144);
  *(v1 + 144) = *(v0 + 24);
  return sub_1000374BC(v2);
}

void sub_100038840()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100037118(v2);
  *(v1 + 136) = v2;
}

uint64_t sub_100038898()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
  swift_errorRetain();
}

uint64_t sub_100038918()
{
  *(*(v0 + 16) + 104) = *(v0 + 24);
}

uint64_t sub_10003895C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v8 = *(v0 + 48);
  *(v2 + 72) = v1;
  *(v2 + 80) = v3;
  *(v2 + 88) = v4;
  v9 = *(v2 + 96);
  *(v2 + 96) = v8;
  sub_10002879C(v1, v3, v4, v8);
  return sub_1000278C0(v5, v6, v7, v9);
}

uint64_t sub_1000389EC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

uint64_t sub_100038A34()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

void sub_100038A7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

unint64_t sub_100038AB4()
{
  result = qword_10025B488;
  if (!qword_10025B488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025B488);
  }

  return result;
}

uint64_t sub_100038B48(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5 > result)
  {
    do
    {
      if (v5)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 16) = v4;
        if (result)
        {
          v13 = *(v4 + 16);
          if (!v13)
          {
            goto LABEL_27;
          }
        }

        else
        {
          result = sub_10017E480(v4);
          v4 = result;
          v13 = *(result + 16);
          if (!v13)
          {
LABEL_27:
            __break(1u);
            return result;
          }
        }

        *(v4 + 16) = v13 - 1;
        *(v2 + 16) = v4;
      }

      swift_beginAccess();
      v9 = *(v2 + 24);
      if (v9 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_14;
        }
      }

      else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v2 + 24) = v9;
      if (v9 >> 62 || (result & 1) == 0)
      {
        result = sub_10017FA8C();
        v9 = result;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        __break(1u);
        return result;
      }

      v11 = v10 - 1;
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20);
      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      *(v2 + 24) = v9;

LABEL_14:
      result = swift_endAccess();
      v4 = *(v2 + 16);
      v5 = *(v4 + 16);
    }

    while (v5 > v3);
  }

  if (v5 < v3)
  {
    do
    {
      [objc_allocWithZone(NSTextList) initWithMarkerFormat:NSTextListMarkerCircle options:0];
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v6 = *(v2 + 16);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 16) = v6;
      if ((result & 1) == 0)
      {
        result = sub_10017DC30(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
        *(v2 + 16) = result;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        result = sub_10017DC30((v7 > 1), v8 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + 8 * v8 + 32) = 0;
      *(v2 + 16) = v6;
    }

    while (*(v6 + 16) < v3);
  }

  return result;
}

uint64_t sub_100038DAC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    if (!*(*(v2 + 16) + 16))
    {
      return result;
    }

    v8 = *(v2 + 24);
    if (v8 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v14 - 1;
      if (!__OFSUB__(v14, 1))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 - 1;
      if (!__OFSUB__(v9, 1))
      {
LABEL_6:
        swift_beginAccess();
        v3 = *(v2 + 24);
        a2 = a2;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v2 + 24) = v3;
        if (!isUniquelyReferenced_nonNull_bridgeObject || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_10017FA8C();
          *(v2 + 24) = v3;
        }

        if ((v10 & 0x8000000000000000) == 0)
        {
          if (v10 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v12 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * v10;
            v13 = *(v12 + 0x20);
            *(v12 + 32) = a2;
            *(v2 + 24) = v3;
            swift_endAccess();

            a2 = *(v2 + 16);
            v3 = a2[2];
            result = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + 16) = a2;
            if (result)
            {
              if (v3)
              {
                goto LABEL_14;
              }

              goto LABEL_25;
            }

LABEL_24:
            result = sub_10017E480(a2);
            a2 = result;
            if (v3)
            {
LABEL_14:
              if (v3 <= a2[2])
              {
                a2[v3 + 3] = a1;
                *(v2 + 16) = a2;
                return result;
              }

LABEL_26:
              __break(1u);
              return result;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100038F3C()
{

  return swift_deallocClassInstance();
}

NSTextListMarkerFormat sub_100038FA0()
{
  sub_10000341C(&qword_10025C318, &qword_1001D1038);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001CF9F0;
  *(v0 + 32) = NSTextListMarkerDecimal;
  *(v0 + 40) = NSTextListMarkerLowercaseAlpha;
  *(v0 + 48) = NSTextListMarkerLowercaseRoman;
  off_10025C148 = v0;
  v1 = NSTextListMarkerDecimal;
  v2 = NSTextListMarkerLowercaseAlpha;

  return NSTextListMarkerLowercaseRoman;
}

unint64_t sub_100039044@<X0>(void (**a1)(char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v285 = a2;
  v282 = a1;
  v302 = a3;
  v254 = type metadata accessor for AttributedSubstring();
  v237 = *(v254 - 8);
  __chkstk_darwin(v254);
  v260 = &v219 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = sub_10000341C(&qword_10025C238, &qword_1001D0FC8);
  v4 = __chkstk_darwin(v289);
  v288 = &v219 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v299 = &v219 - v6;
  v290 = type metadata accessor for RestoreWhiteSpaceLocation(0);
  v291 = *(v290 - 8);
  v7 = __chkstk_darwin(v290);
  v300 = &v219 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v243 = &v219 - v9;
  v280 = type metadata accessor for PresentationIntent.Kind();
  v240 = *(v280 - 8);
  v10 = __chkstk_darwin(v280);
  v275 = &v219 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v269 = &v219 - v12;
  v281 = type metadata accessor for PresentationIntent.IntentType();
  v272 = *(v281 - 8);
  v13 = __chkstk_darwin(v281);
  v270 = &v219 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v273 = &v219 - v15;
  v16 = sub_10000341C(&qword_10025C240, &qword_1001D0FD0);
  v17 = __chkstk_darwin(v16 - 8);
  v253 = &v219 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v252 = &v219 - v20;
  v21 = __chkstk_darwin(v19);
  v256 = &v219 - v22;
  __chkstk_darwin(v21);
  v284 = (&v219 - v23);
  v276 = type metadata accessor for PresentationIntent();
  v239 = *(v276 - 8);
  v24 = __chkstk_darwin(v276);
  v264 = &v219 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v244 = &v219 - v26;
  v27 = sub_10000341C(&qword_10025C248, &qword_1001D0FD8);
  v28 = __chkstk_darwin(v27 - 8);
  v278 = (&v219 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v277 = (&v219 - v30);
  v31 = sub_10000341C(&qword_10025C250, &qword_1001D0FE0);
  v32 = __chkstk_darwin(v31 - 8);
  v265 = &v219 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v296 = &v219 - v34;
  v301 = sub_10000341C(&qword_10025C258, &qword_1001D0FE8);
  v251 = *(v301 - 8);
  __chkstk_darwin(v301);
  v242 = &v219 - v35;
  v292 = sub_10000341C(&qword_10025C260, &qword_1001D0FF0);
  v248 = *(v292 - 8);
  v36 = __chkstk_darwin(v292);
  v294 = (&v219 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v36);
  v297 = (&v219 - v38);
  v279 = type metadata accessor for AttributeContainer();
  v267 = *(v279 - 8);
  v39 = __chkstk_darwin(v279);
  v286 = (&v219 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v39);
  v298 = &v219 - v41;
  v293 = sub_10000341C(&qword_10025C268, &qword_1001D0FF8);
  v42 = __chkstk_darwin(v293);
  v268 = &v219 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v287 = &v219 - v45;
  v46 = __chkstk_darwin(v44);
  v295 = &v219 - v47;
  __chkstk_darwin(v46);
  v305 = (&v219 - v48);
  v308 = type metadata accessor for AttributedString.Index();
  v255 = *(v308 - 8);
  __chkstk_darwin(v308);
  v306 = &v219 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_10000341C(&qword_10025C270, &qword_1001D1000);
  __chkstk_darwin(v304);
  v303 = &v219 - v50;
  v250 = type metadata accessor for AttributedString.Runs();
  v259 = *(v250 - 8);
  __chkstk_darwin(v250);
  v249 = &v219 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10000341C(&qword_10025C278, &qword_1001D1008);
  __chkstk_darwin(v52 - 8);
  v263 = &v219 - v53;
  v258 = sub_10000341C(&qword_10025C280, &qword_1001D1010);
  __chkstk_darwin(v258);
  v55 = &v219 - v54;
  v56 = sub_10000341C(&qword_10025C288, &qword_1001D1018);
  __chkstk_darwin(v56 - 8);
  v274 = &v219 - v57;
  v271 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v58 = *(v271 - 8);
  __chkstk_darwin(v271);
  v60 = &v219 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v64 = &v219 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  __chkstk_darwin(v65 - 8);
  v283 = type metadata accessor for AttributedString();
  v247 = *(v283 - 8);
  v66 = __chkstk_darwin(v283);
  v68 = &v219 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v70 = &v219 - v69;
  (*(v62 + 104))(v64, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v61);
  (*(v58 + 104))(v60, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.returnPartiallyParsedIfPossible(_:), v271);
  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  v71 = type metadata accessor for URL();
  (*(*(v71 - 8) + 56))(v274, 1, 1, v71);
  v72 = v307;
  result = AttributedString.init(markdown:options:baseURL:)();
  if (v72)
  {
    return result;
  }

  v285 = v68;
  v230 = 0;
  (*(v247 + 32))(v302, v70, v283);
  v74 = objc_opt_self();
  v75 = [v74 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v76 = [v75 fontDescriptorWithSymbolicTraits:2];
  if (!v76)
  {
    v76 = v75;
  }

  v77 = [v75 fontDescriptorWithSymbolicTraits:1];
  if (!v77)
  {
    v77 = v75;
  }

  v78 = [v74 preferredFontDescriptorWithTextStyle:UIFontTextStyleLargeTitle];
  v235 = [v74 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1];
  v234 = [v74 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
  v79 = [v74 preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
  v80 = objc_opt_self();
  v229 = v75;
  v81 = [v80 fontWithDescriptor:v75 size:0.0];
  v228 = v76;
  v82 = [v80 fontWithDescriptor:v76 size:0.0];
  v227 = v77;
  v262 = [v80 fontWithDescriptor:v77 size:0.0];
  v226 = v78;
  v83 = [v80 fontWithDescriptor:v78 size:0.0];
  v84 = [v80 fontWithDescriptor:v235 size:0.0];
  v85 = [v80 fontWithDescriptor:v234 size:0.0];
  v225 = v79;
  v86 = [v80 fontWithDescriptor:v79 size:0.0];
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001D0F90;
  *(inited + 32) = v83;
  v266 = inited + 32;
  *(inited + 40) = v84;
  *(inited + 48) = v85;
  *(inited + 56) = v86;
  *(inited + 64) = v82;
  v232 = inited;
  *(inited + 72) = v82;
  v311 = v81;
  v88 = sub_10003BDAC();
  v261 = v82;
  v224 = v83;
  v223 = v84;
  v222 = v85;
  v221 = v86;
  v220 = v81;
  v271 = v88;
  AttributedString.subscript.setter();
  v89 = v249;
  AttributedString.runs.getter();
  v90 = sub_10003BE00();
  v91 = v263;
  v282 = v90;
  AttributedString.Runs.subscript.getter();
  v92 = *(v259 + 8);
  v259 += 8;
  v236 = v92;
  v92(v89, v250);
  v93 = sub_10000341C(&qword_10025C2A0, &qword_1001D1028);
  v94 = *(v93 - 8);
  (*(v94 + 16))(v55, v91, v93);
  sub_100007120(&qword_10025C2A8, &qword_10025C2A0, &qword_1001D1028, &protocol conformance descriptor for AttributedString.Runs.AttributesSlice1<A>);
  dispatch thunk of Collection.endIndex.getter();
  (*(v94 + 8))(v91, v93);
  v307 = (v255 + 8);
  while (1)
  {
    v96 = v306;
    dispatch thunk of Collection.startIndex.getter();
    v97 = sub_10003C154(&qword_10025C2B0, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
    v98 = v308;
    v99 = dispatch thunk of static Equatable.== infix(_:_:)();
    v100 = v98;
    v101 = *v307;
    (*v307)(v96, v100);
    if (v99)
    {
      break;
    }

    sub_100007120(&qword_10025C2B8, &qword_10025C2A0, &qword_1001D1028, &protocol conformance descriptor for AttributedString.Runs.AttributesSlice1<A>);
    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v102 = dispatch thunk of Collection.subscript.read();
    v103 = v303;
    sub_1000081F8(v104, v303, &qword_10025C270, &qword_1001D1000);
    v102(&v311, 0);
    v105 = *v103;
    v106 = *(v103 + 8);
    v107 = v103 + *(v304 + 12);
    v108 = v305;
    sub_10002A894(v107, v305, &qword_10025C268, &qword_1001D0FF8);
    if ((v106 & 1) == 0 && (v105 == 128 || v105 == 64))
    {
      v309 = 10;
      v310 = 0xE100000000000000;
      v95 = AttributedString.characters.modify();
      sub_10003BE54();
      AttributedString.CharacterView.replaceSubrange<A>(_:with:)();
      v95(&v311, 0);
    }

    sub_10000F500(v108, &qword_10025C268, &qword_1001D0FF8);
  }

  v305 = v101;
  v303 = v97;
  sub_10000F500(v55, &qword_10025C280, &qword_1001D1010);
  v109 = 0;
  v110 = (v267 + 1);
  v111 = v279;
  do
  {
    v117 = *(&off_10024A858 + v109 + 32);
    AttributeContainer.init()();
    if (v117 == 1)
    {
      v311 = 1;
      v312 = 0;
      AttributeContainer.subscript.setter();
      v112 = &v294;
      goto LABEL_16;
    }

    if (v117 == 2)
    {
      v311 = 2;
      v312 = 0;
      AttributeContainer.subscript.setter();
      v112 = &v293;
LABEL_16:
      v311 = *(v112 - 32);
      v113 = v311;
      AttributeContainer.subscript.setter();
      goto LABEL_17;
    }

    if (v117 == 32)
    {
      v311 = 32;
      v312 = 0;
      AttributeContainer.subscript.setter();
      v118 = v277;
      static Text.LineStyle.single.getter();
      v119 = type metadata accessor for Text.LineStyle();
      (*(*(v119 - 8) + 56))(v118, 0, 1, v119);
      sub_1000081F8(v118, v278, &qword_10025C248, &qword_1001D0FD8);
      sub_10003C200();
      AttributeContainer.subscript.setter();
      v120 = v118;
      v111 = v279;
      sub_10000F500(v120, &qword_10025C248, &qword_1001D0FD8);
    }

LABEL_17:
    v114 = v286;
    AttributeContainer.init()();
    v311 = v117;
    v312 = 0;
    AttributeContainer.subscript.setter();
    AttributedString.replaceAttributes(_:with:)();
    v115 = *v110;
    v116 = v298;
    (*v110)(v114, v111);
    v115(v116, v111);
    v109 += 8;
  }

  while (v109 != 64);
  v121 = v249;
  AttributedString.runs.getter();
  v122 = sub_10003BEA8();
  v123 = v242;
  v241 = v122;
  AttributedString.Runs.subscript.getter();
  v236(v121, v250);
  v124 = v301;
  AttributedString.Runs.AttributesSlice1.makeIterator()();
  v125 = *(v251 + 8);
  v251 += 8;
  v231 = v125;
  v125(v123, v124);
  v238 = 0;
  v233 = 0;
  v274 = (v239 + 48);
  v246 = (v239 + 32);
  v279 = v272 + 16;
  v278 = (v240 + 88);
  LODWORD(v298) = enum case for PresentationIntent.Kind.listItem(_:);
  LODWORD(v282) = enum case for PresentationIntent.Kind.paragraph(_:);
  v277 = (v272 + 8);
  v267 = (v240 + 8);
  v286 = (v255 + 16);
  v245 = (v239 + 8);
  v304 = _swiftEmptyArrayStorage;
  v126 = v292;
  v127 = v306;
  while (1)
  {
    AttributedString.Runs.AttributesSlice1.Iterator.next()();
    v128 = v296;
    v129 = sub_10000341C(&qword_10025C2D0, &qword_1001D1030);
    v130 = *(v129 - 8);
    v131 = *(v130 + 48);
    v132 = (v130 + 48);
    if (v131(v128, 1, v129) == 1)
    {
      break;
    }

    v133 = v128 + *(v129 + 48);
    v134 = v295;
    sub_10002A894(v133, v295, &qword_10025C268, &qword_1001D0FF8);
    v135 = v284;
    sub_10002A894(v128, v284, &qword_10025C240, &qword_1001D0FD0);
    if ((*v274)(v135, 1, v276) == 1)
    {
      sub_10000F500(v134, &qword_10025C268, &qword_1001D0FF8);
      sub_10000F500(v135, &qword_10025C240, &qword_1001D0FD0);
    }

    else
    {
      (*v246)(v244, v135, v276);
      v136 = PresentationIntent.components.getter();
      v137 = *(v136 + 16);
      if (v137)
      {
        LODWORD(v258) = 0;
        LODWORD(v263) = 0;
        v138 = (*(v272 + 80) + 32) & ~*(v272 + 80);
        v219 = v136;
        v139 = v136 + v138;
        v140 = *(v272 + 72);
        v141 = *(v272 + 16);
        v257 = 1;
        v142 = v281;
        v143 = v269;
        v144 = v233;
        while (1)
        {
          v146 = v273;
          v147 = v142;
          v141(v273, v139);
          PresentationIntent.IntentType.kind.getter();
          v148 = v280;
          v149 = (*v278)(v143, v280);
          if (v149 == v298)
          {
            (*v277)(v146, v147);
            v145 = &v295;
          }

          else
          {
            if (v149 != v282)
            {
              (*v277)(v273, v281);
              (*v267)(v269, v148);
              goto LABEL_31;
            }

            v150 = v273;
            v257 = v144 != PresentationIntent.IntentType.identity.getter();
            v144 = PresentationIntent.IntentType.identity.getter();
            (*v277)(v150, v281);
            v145 = &v290;
          }

          *(v145 - 64) = 1;
LABEL_31:
          v127 = v306;
          v139 += v140;
          --v137;
          v142 = v281;
          v143 = v269;
          if (!v137)
          {
            v233 = v144;

            v151 = v295;
            if (v238 & v257)
            {
              v152 = v258;
              v153 = v263;
              goto LABEL_39;
            }

            v154 = 0;
            v152 = v258;
            goto LABEL_41;
          }
        }
      }

      v152 = 0;
      v153 = 0;
      v154 = 0;
      v151 = v295;
      if (v238)
      {
LABEL_39:
        v154 = v153 ^ 1;
      }

LABEL_41:
      v155 = v243;
      (*v286)(v243, v151, v308);
      *(v155 + *(v290 + 20)) = v154 & 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v304 = sub_10017DD34(0, v304[2] + 1, 1, v304);
      }

      v157 = v304[2];
      v156 = v304[3];
      v158 = v244;
      if (v157 >= v156 >> 1)
      {
        v304 = sub_10017DD34((v156 > 1), v157 + 1, 1, v304);
        v158 = v244;
      }

      (*v245)(v158);
      sub_10000F500(v295, &qword_10025C268, &qword_1001D0FF8);
      v159 = v304;
      v304[2] = v157 + 1;
      sub_10003C19C(v243, v159 + ((*(v291 + 80) + 32) & ~*(v291 + 80)) + v291[9] * v157);
      v238 = v152;
      v126 = v292;
    }
  }

  v263 = v132;
  v269 = v131;
  v273 = v129;
  v160 = v248 + 8;
  v258 = *(v248 + 8);
  v258(v297, v126);
  v161 = v304[2];
  v248 = v160;
  v162 = v291;
  v163 = v301;
  v164 = v294;
  if (v161)
  {
    v298 = v304 + ((*(v291 + 80) + 32) & ~*(v291 + 80));
    v282 = (v247 + 8);
    v284 = (v255 + 32);
    while (v161 <= v304[2])
    {
      v161 = (v161 - 1);
      v165 = v300;
      sub_10003BEFC(v298 + v162[9] * v161, v300);
      AttributedString.startIndex.getter();
      v128 = v308;
      v166 = dispatch thunk of static Equatable.== infix(_:_:)();
      v167 = v127;
      v168 = v166;
      (v305)(v167, v128);
      if ((v168 & 1) == 0)
      {
        v169 = v285;
        if (*(v165 + *(v290 + 20)) == 1)
        {
          AttributedString.init(stringLiteral:)();
          sub_10003C154(&qword_10025C2F8, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
          v170 = v283;
          AttributedString.insert<A>(_:at:)();
          (*v282)(v169, v170);
        }

        v171 = AttributedString.characters.modify();
        v173 = v172;
        v309 = 10;
        v310 = 0xE100000000000000;
        sub_10003C154(&qword_10025C2D8, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
        v174 = v308;
        result = dispatch thunk of static Comparable.<= infix(_:_:)();
        v175 = v289;
        v176 = v299;
        if ((result & 1) == 0)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        v295 = v173;
        v296 = v171;
        v177 = *v286;
        (*v286)(v299, v165, v174);
        v177(v176 + *(v175 + 48), v165, v174);
        v178 = v288;
        sub_1000081F8(v176, v288, &qword_10025C238, &qword_1001D0FC8);
        v179 = *(v175 + 48);
        v180 = *v284;
        v181 = v287;
        (*v284)(v287, v178, v174);
        v297 = v161;
        v182 = v305;
        (v305)(v178 + v179, v174);
        sub_10002A894(v299, v178, &qword_10025C238, &qword_1001D0FC8);
        v180(v181 + *(v293 + 36), v178 + *(v175 + 48), v174);
        v183 = v178;
        v162 = v291;
        v182(v183, v174);
        v161 = v297;
        type metadata accessor for AttributedString.CharacterView();
        sub_10003C154(&qword_10025C2E0, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
        sub_10003BE54();
        v128 = v295;
        v126 = v292;
        dispatch thunk of RangeReplaceableCollection.replaceSubrange<A>(_:with:)();
        sub_10000F500(v181, &qword_10025C268, &qword_1001D0FF8);
        (v296)(&v311, 0);
        v164 = v294;
      }

      sub_10003BF60(v165);
      v163 = v301;
      v127 = v306;
      if (!v161)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_55:

    type metadata accessor for ListTracker();
    v184 = swift_initStackObject();
    *(v184 + 16) = _swiftEmptyArrayStorage;
    v299 = v184;
    *(v184 + 24) = _swiftEmptyArrayStorage;
    v185 = v184 + 24;
    v186 = v249;
    AttributedString.runs.getter();
    v187 = v242;
    AttributedString.Runs.subscript.getter();
    v236(v186, v250);
    AttributedString.Runs.AttributesSlice1.makeIterator()();
    v231(v187, v163);
    v295 = v185;
    swift_beginAccess();
    v188 = v265;
    AttributedString.Runs.AttributesSlice1.Iterator.next()();
    v128 = v188;
    v189 = v188;
    v126 = v273;
    v190 = (v269)(v189, 1, v273);
    v163 = v270;
    v127 = v256;
    if (v190 == 1)
    {
LABEL_56:
      v258(v164, v292);

      swift_setDeallocating();
    }
  }

  v305 = (v240 + 96);
  v303 = v232 & 0xC000000000000001;
  v301 = v232 & 0xFFFFFFFFFFFFFF8;
  v297 = (v239 + 56);
  v296 = (v237 + 8);
  LODWORD(v307) = enum case for PresentationIntent.Kind.header(_:);
  LODWORD(v304) = enum case for PresentationIntent.Kind.orderedList(_:);
  LODWORD(v300) = enum case for PresentationIntent.Kind.unorderedList(_:);
  v291 = NSTextListMarkerCircle;
  while (2)
  {
    v191 = v128 + *(v126 + 12);
    v192 = v268;
    sub_10002A894(v191, v268, &qword_10025C268, &qword_1001D0FF8);
    sub_10002A894(v128, v127, &qword_10025C240, &qword_1001D0FD0);
    v193 = v276;
    if ((*v274)(v127, 1, v276) == 1)
    {
      sub_10000F500(v192, &qword_10025C268, &qword_1001D0FF8);
      sub_10000F500(v127, &qword_10025C240, &qword_1001D0FD0);
      goto LABEL_60;
    }

    (*v246)(v264, v127, v193);
    v306 = sub_100007120(&qword_10025C2E8, &qword_10025C268, &qword_1001D0FF8, &protocol conformance descriptor for Range<A>);
    AttributedString.subscript.getter();
    v298 = PresentationIntent.indentationLevel.getter();
    sub_100038B48(v298);
    result = PresentationIntent.components.getter();
    v194 = result;
    v308 = *(result + 16);
    if (!v308)
    {
LABEL_77:

LABEL_91:
      v215 = v252;
      v216 = v276;
      (*v297)(v252, 1, 1, v276);
      v217 = v268;
      v218 = AttributedString.subscript.modify();
      sub_1000081F8(v215, v253, &qword_10025C240, &qword_1001D0FD0);
      AttributedSubstring.subscript.setter();
      sub_10000F500(v215, &qword_10025C240, &qword_1001D0FD0);
      v218(&v311, 0);
      (*v296)(v260, v254);
      (*v245)(v264, v216);
      sub_10000F500(v217, &qword_10025C268, &qword_1001D0FF8);
      v127 = v256;
LABEL_60:
      AttributedString.Runs.AttributesSlice1.Iterator.next()();
      v128 = v265;
      v126 = v273;
      if ((v269)(v265, 1, v273) == 1)
      {
        goto LABEL_56;
      }

      continue;
    }

    break;
  }

  v195 = 0;
  while (1)
  {
    if (v195 >= *(v194 + 16))
    {
      goto LABEL_93;
    }

    v198 = v272;
    v199 = v281;
    (*(v272 + 16))(v163, v194 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v195, v281);
    v200 = v163;
    v201 = PresentationIntent.IntentType.identity.getter();
    v202 = v275;
    PresentationIntent.IntentType.kind.getter();
    v203 = v280;
    (*(v198 + 8))(v200, v199);
    v204 = (*v278)(v202, v203);
    if (v204 == v307)
    {
      (*v305)(v202, v203);
      result = *v202 - 1;
      if (__OFSUB__(*v202, 1))
      {
        goto LABEL_94;
      }

      if (v303)
      {
        v196 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v164 = v294;
      }

      else
      {
        v164 = v294;
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_95;
        }

        if (result >= *(v301 + 16))
        {
          goto LABEL_96;
        }

        v196 = *(v266 + 8 * result);
      }

      v197 = AttributedString.subscript.modify();
      v313 = v196;
      AttributedSubstring.subscript.setter();
      result = v197(&v311, 0);
      goto LABEL_66;
    }

    if (v204 == v304)
    {
      break;
    }

    v164 = v294;
    if (v204 == v300)
    {

      v209 = *(v299 + 16);
      v210 = *(v209 + 16);
      if (!v210 || v201 != *(v209 + 8 * v210 + 24))
      {
        v211 = objc_allocWithZone(NSTextList);
        v212 = [v211 initWithMarkerFormat:v291 options:0];
        sub_100038DAC(v201, v212);
      }

      goto LABEL_90;
    }

    result = (*v267)(v275, v203);
LABEL_66:
    ++v195;
    v163 = v270;
    if (v308 == v195)
    {
      goto LABEL_77;
    }
  }

  v205 = *(v299 + 16);
  v206 = *(v205 + 16);
  v164 = v294;
  if (v206 && v201 == *(v205 + 8 * v206 + 24))
  {
    goto LABEL_90;
  }

  if (qword_10025A738 != -1)
  {
    result = swift_once();
  }

  if (__OFSUB__(v298, 1))
  {
    goto LABEL_97;
  }

  v207 = (v298 - 1) % 3;
  if (v207 < 0)
  {
    goto LABEL_98;
  }

  if (v207 < *(off_10025C148 + 2))
  {
    v208 = [objc_allocWithZone(NSTextList) initWithMarkerFormat:*(off_10025C148 + v207 + 4) options:0];
    sub_100038DAC(v201, v208);

LABEL_90:

    v213 = sub_10003BFBC();

    v214 = AttributedString.subscript.modify();
    v313 = v213;
    sub_10003C100();
    AttributedSubstring.subscript.setter();
    v214(&v311, 0);
    v163 = v270;
    goto LABEL_91;
  }

LABEL_99:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for RestoreWhiteSpaceLocation(uint64_t a1)
{
  result = qword_10025C378;
  if (!qword_10025C378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10003BDAC()
{
  result = qword_10025C290;
  if (!qword_10025C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C290);
  }

  return result;
}

unint64_t sub_10003BE00()
{
  result = qword_10025C298;
  if (!qword_10025C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C298);
  }

  return result;
}

unint64_t sub_10003BE54()
{
  result = qword_10025C2C0;
  if (!qword_10025C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C2C0);
  }

  return result;
}

unint64_t sub_10003BEA8()
{
  result = qword_10025C2C8;
  if (!qword_10025C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C2C8);
  }

  return result;
}

uint64_t sub_10003BEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RestoreWhiteSpaceLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BF60(uint64_t a1)
{
  v2 = type metadata accessor for RestoreWhiteSpaceLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10003BFBC()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultParagraphStyle];
  [v1 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000081B0(0, &qword_10025C308, NSMutableParagraphStyle_ptr);
  if (swift_dynamicCast())
  {
    sub_1000081B0(0, &qword_10025C310, NSTextList_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v5 setTextLists:isa];

    return v5;
  }

  else
  {
    v4 = [v0 defaultParagraphStyle];

    return v4;
  }
}

unint64_t sub_10003C100()
{
  result = qword_10025C2F0;
  if (!qword_10025C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C2F0);
  }

  return result;
}

uint64_t sub_10003C154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003C19C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RestoreWhiteSpaceLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003C200()
{
  result = qword_10025C300;
  if (!qword_10025C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025C300);
  }

  return result;
}

uint64_t sub_10003C268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString.Index();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10003C348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString.Index();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10003C400(uint64_t a1)
{
  result = type metadata accessor for AttributedString.Index();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_10003C474()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC21WritingToolsUIService24AttachmentCollectionView_attachmentCollectionViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC21WritingToolsUIService24AttachmentCollectionView_currentCellWidth] = 0x4073200000000000;
  v2 = sub_10003D844(306.0);
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v10, "initWithFrame:collectionViewLayout:", v2, 0.0, 0.0, 0.0, 0.0);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor:v6];

  [v5 contentInset];
  [v5 setContentInset:?];
  [v5 contentInset];
  [v5 setContentInset:?];

  type metadata accessor for AttachmentCollectionViewCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = String._bridgeToObjectiveC()();
  [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v8];

  return v5;
}

id sub_10003C69C()
{
  ObjectType = swift_getObjectType();
  [v0 bounds];
  v3 = v2 + -29.0;
  if (v2 + -29.0 != *&v0[OBJC_IVAR____TtC21WritingToolsUIService24AttachmentCollectionView_currentCellWidth])
  {
    *&v0[OBJC_IVAR____TtC21WritingToolsUIService24AttachmentCollectionView_currentCellWidth] = v3;
    v4 = sub_10003D844(v3);
    [v0 setCollectionViewLayout:v4];

    v5 = [v0 collectionViewLayout];
    [v5 invalidateLayout];
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "layoutSubviews", v3);
}

char *sub_10003C814(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_linkView] = 0;
  result = [objc_opt_self() roundButtonWithStyle:0];
  if (result)
  {
    *&v4[OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_closeButton] = result;
    v11 = OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_attachment;
    v12 = type metadata accessor for Attachment(0);
    (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
    v14.receiver = v4;
    v14.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
    [*&v13[OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_closeButton] addTarget:v13 action:"didTapCloseButton" forControlEvents:64];
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003C9A8(void *a1)
{
  v2 = v1;
  v90 = a1;
  v3 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  __chkstk_darwin(v3 - 8);
  v87 = &v85 - v4;
  v5 = type metadata accessor for Attachment(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v89 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v86 = &v85 - v9;
  v10 = sub_10000341C(&qword_100263020, &qword_1001DA210);
  v11 = __chkstk_darwin(v10 - 8);
  v88 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v85 - v13;
  v15 = sub_10000341C(&qword_10025C440, &unk_1001D1120);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v85 - v17;
  v19 = OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_attachment;
  swift_beginAccess();
  v20 = *(v16 + 56);
  v91 = v2;
  v21 = &v2[v19];
  v22 = v5;
  sub_1000081F8(v21, v18, &qword_100263020, &qword_1001DA210);
  sub_1000081F8(v90, &v18[v20], &qword_100263020, &qword_1001DA210);
  v23 = *(v6 + 48);
  if (v23(v18, 1, v5) == 1)
  {
    if (v23(&v18[v20], 1, v5) == 1)
    {
      v24 = v18;
LABEL_14:
      sub_10000F500(v24, &qword_100263020, &qword_1001DA210);
      return;
    }

    goto LABEL_6;
  }

  sub_1000081F8(v18, v14, &qword_100263020, &qword_1001DA210);
  if (v23(&v18[v20], 1, v5) == 1)
  {
    sub_10003D7E8(v14);
LABEL_6:
    sub_10000F500(v18, &qword_10025C440, &unk_1001D1120);
    goto LABEL_7;
  }

  v29 = v86;
  sub_10003D784(&v18[v20], v86);
  v30 = sub_10017EA28(v14, v29);
  sub_10003D7E8(v29);
  sub_10003D7E8(v14);
  sub_10000F500(v18, &qword_100263020, &qword_1001DA210);
  if (v30)
  {
    return;
  }

LABEL_7:
  v25 = OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_linkView;
  v26 = v91;
  v27 = *&v91[OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_linkView];
  if (v27)
  {
    [v27 removeFromSuperview];
    v28 = *&v26[v25];
  }

  else
  {
    v28 = 0;
  }

  v31 = v88;
  v32 = v89;
  *&v26[v25] = 0;

  sub_1000081F8(&v26[v19], v31, &qword_100263020, &qword_1001DA210);
  if (v23(v31, 1, v22) == 1)
  {
    v24 = v31;
    goto LABEL_14;
  }

  sub_10003D784(v31, v32);
  v33 = [objc_allocWithZone(LPLinkMetadata) init];
  v34 = [objc_allocWithZone(LPFileMetadata) init];
  v35 = String._bridgeToObjectiveC()();
  [v34 setName:v35];

  v36 = v22;
  v37 = v87;
  sub_1000081F8(v32 + *(v22 + 24), v87, &qword_10025F4E0, &unk_1001D1110);
  v38 = type metadata accessor for UTType();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    sub_10000F500(v37, &qword_10025F4E0, &unk_1001D1110);
    v40 = 0;
  }

  else
  {
    UTType.identifier.getter();
    (*(v39 + 8))(v37, v38);
    v40 = String._bridgeToObjectiveC()();
    v26 = v91;
  }

  [v34 setType:v40];

  v41 = v32 + *(v36 + 28);
  if ((*(v41 + 8) & 1) == 0)
  {
    if ((*v41 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    [v34 setSize:?];
  }

  v42 = *(v32 + *(v36 + 36));
  if (v42)
  {
    v43 = objc_allocWithZone(UIImage);
    v44 = v42;
    v45 = [v43 initWithCGImage:v44];
    v46 = [objc_allocWithZone(LPImage) initWithPlatformImage:v45];

    [v34 setThumbnail:v46];
  }

  v47 = [objc_allocWithZone(LPSharedObjectMetadata) init];
  [v47 setSpecialization:v34];
  [v33 setSpecialization:v47];
  v48 = [objc_allocWithZone(LPLinkView) initWithMetadata:v33];
  v49 = *&v26[v25];
  *&v26[v25] = v48;
  v50 = v48;

  if (!v50)
  {
    goto LABEL_36;
  }

  [v50 _setBytesLoaded:{objc_msgSend(v34, "size")}];

  v51 = *&v26[v25];
  if (!v51)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v51 _setDisableTapGesture:1];
  v52 = *&v26[v25];
  if (!v52)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v52 _setDisableHighlightGesture:1];
  v53 = *&v26[v25];
  if (!v53)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v90 = v33;
  v54 = objc_opt_self();
  v55 = v53;
  v56 = [v54 tertiarySystemFillColor];
  [v55 _setOverrideBackgroundColor:v56];

  v57 = *&v26[v25];
  if (!v57)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
  v58 = [v26 contentView];
  if (!*&v26[v25])
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v59 = v58;
  v88 = v47;
  [v58 addSubview:?];

  [v26 addSubview:*&v26[OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_closeButton]];
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1001CE090;
  v61 = *&v26[v25];
  if (!v61)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v62 = [v61 leadingAnchor];
  v63 = [v26 contentView];
  v64 = [v63 leadingAnchor];

  v65 = [v62 constraintEqualToAnchor:v64];
  *(v60 + 32) = v65;
  v66 = v91;
  v67 = *&v91[v25];
  if (!v67)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v68 = [v67 trailingAnchor];
  v69 = [v66 contentView];
  v70 = [v69 trailingAnchor];

  v71 = [v68 constraintEqualToAnchor:v70];
  *(v60 + 40) = v71;
  v72 = v91;
  v73 = *&v91[v25];
  if (!v73)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v74 = [v73 topAnchor];
  v75 = [v72 contentView];
  v76 = [v75 topAnchor];

  v77 = [v74 constraintEqualToAnchor:v76];
  *(v60 + 48) = v77;
  v78 = *&v72[v25];
  if (!v78)
  {
LABEL_45:
    __break(1u);
    return;
  }

  v79 = objc_opt_self();
  v80 = [v78 bottomAnchor];
  v81 = [v72 contentView];
  v82 = [v81 bottomAnchor];

  v83 = [v80 constraintEqualToAnchor:v82];
  *(v60 + 56) = v83;
  sub_1000081B0(0, &qword_10025AD00, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v79 activateConstraints:isa];

  sub_10003D7E8(v89);
}

void sub_10003D3F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();

    if (v3)
    {
      sub_1000A5E20(v0);

      swift_unknownObjectRelease();
    }
  }
}

id sub_10003D57C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AttachmentCollectionViewCell(uint64_t a1)
{
  result = qword_10025C428;
  if (!qword_10025C428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003D678(uint64_t a1)
{
  sub_10003D72C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10003D72C(uint64_t a1)
{
  if (!qword_10025C438)
  {
    type metadata accessor for Attachment(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10025C438);
    }
  }
}

uint64_t sub_10003D784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D7E8(uint64_t a1)
{
  v2 = type metadata accessor for Attachment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10003D844(double a1)
{
  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension:1.0];
  v4 = [v2 fractionalHeightDimension:1.0];
  v5 = objc_opt_self();
  v6 = [v5 sizeWithWidthDimension:v3 heightDimension:v4];

  v7 = [objc_opt_self() itemWithLayoutSize:v6];
  v8 = [v2 absoluteDimension:a1];
  v9 = [v2 fractionalHeightDimension:1.0];
  v10 = [v5 sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = objc_opt_self();
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001D1060;
  *(v12 + 32) = v7;
  sub_1000081B0(0, &qword_10025C448, NSCollectionLayoutItem_ptr);
  v13 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v11 verticalGroupWithLayoutSize:v10 subitems:isa];

  v16 = [objc_opt_self() sectionWithGroup:v15];
  [v16 setInterGroupSpacing:8.0];
  v17 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  [v17 setScrollDirection:1];
  v18 = [objc_allocWithZone(UICollectionViewCompositionalLayout) initWithSection:v16 configuration:v17];

  return v18;
}

void sub_10003DAE0()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_linkView) = 0;
  v1 = [objc_opt_self() roundButtonWithStyle:0];
  if (!v1)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_closeButton) = v1;
  v2 = OBJC_IVAR____TtC21WritingToolsUIService28AttachmentCollectionViewCell_attachment;
  v3 = type metadata accessor for Attachment(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10003DBE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000493CC(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_10003DCB4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_10003DE24(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  State.init(wrappedValue:)();
  return v3;
}

uint64_t ProofreadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for ProofreadingView(0);
  v41 = *(v3 - 8);
  v45 = *(v41 + 64);
  __chkstk_darwin(v3 - 8);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&qword_10025C450, &qword_1001D1130);
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  v49 = sub_10000341C(&qword_10025C458, &qword_1001D1138);
  v12 = *(v49 - 8);
  __chkstk_darwin(v49);
  v14 = &v37 - v13;
  v15 = sub_10000341C(&qword_10025C460, &qword_1001D1140);
  v16 = *(v15 - 8);
  v42 = v15;
  v43 = v16;
  __chkstk_darwin(v15);
  v40 = &v37 - v17;
  v18 = sub_10000341C(&qword_10025C468, &qword_1001D1148);
  v19 = *(v18 - 8);
  v46 = v18;
  v47 = v19;
  __chkstk_darwin(v18);
  v50 = &v37 - v20;
  sub_10003E570(v2, v11);
  (*(v6 + 104))(v8, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v5);
  v21 = sub_10003E92C();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v6 + 8))(v8, v5);
  sub_10000F500(v11, &qword_10025C450, &qword_1001D1130);
  v51 = v9;
  v52 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v49;
  View.navigationBarBackButtonHidden(_:)();
  (*(v12 + 8))(v14, v23);
  v24 = *(v2 + 16);
  v38 = *(v2 + 24);
  v39 = v24;
  v37 = v2;
  v51 = v24;
  v52 = v38;
  sub_10000341C(&unk_10025B658, &qword_1001D0830);
  State.wrappedValue.getter();
  v25 = v55;
  swift_getKeyPath();
  v51 = v25;
  sub_1000493CC(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v11) = v25[112];

  LOBYTE(v55) = v11;
  v26 = v44;
  sub_10003F030(v2, v44);
  v27 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v28 = swift_allocObject();
  sub_100048F74(v26, v28 + v27, type metadata accessor for ProofreadingView);
  v51 = v49;
  v52 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v42;
  v31 = v40;
  View.onChange<A>(of:initial:_:)();

  (*(v43 + 8))(v31, v30);
  v51 = v39;
  v52 = v38;
  State.wrappedValue.getter();
  v32 = sub_1001A1610();

  v55 = v32;
  sub_10003F030(v37, v26);
  v33 = swift_allocObject();
  sub_100048F74(v26, v33 + v27, type metadata accessor for ProofreadingView);
  sub_10000341C(&qword_10025C4D0, &qword_1001D11B0);
  v51 = v30;
  v52 = &type metadata for Bool;
  v53 = v29;
  v54 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_100047730();
  v34 = v46;
  v35 = v50;
  View.onChange<A>(of:initial:_:)();

  return (*(v47 + 8))(v35, v34);
}
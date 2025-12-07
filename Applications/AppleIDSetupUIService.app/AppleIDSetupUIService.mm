uint64_t sub_100001C98()
{
  v0 = type metadata accessor for Logger();
  sub_100006180(v0, qword_100022B18);
  v1 = sub_100005F58(v0, qword_100022B18);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v2 = sub_100005F58(v0, static AISLogger.uiService);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100001E70(char *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v87 = v4;
  ObjectType = swift_getObjectType();
  v8 = sub_1000061F4(&unk_100022CF0, &qword_1000130C8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = (&v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v14 = (&v79 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = &v79 - v16;
  __chkstk_darwin(v15);
  v19 = &v79 - v18;
  v20 = type metadata accessor for PresentationRequest(0);
  v21 = *(v20 - 1);
  v22 = __chkstk_darwin(v20);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v84 = &v79 - v26;
  __chkstk_darwin(v25);
  v85 = &v79 - v27;
  if (!a1)
  {
    __break(1u);
    goto LABEL_45;
  }

  v28 = [a1 userInfo];
  v88 = a3;
  if (!v28)
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100005F58(v38, static AISLogger.uiService);
    v20 = a1;
    v39 = Logger.logObject.getter();
    v19 = a1;
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v94[0] = v42;
      *v41 = 136315394;
      v43 = _typeName(_:qualified:)();
      v21 = sub_10000FA60(v43, v44, v94);

      *(v41 + 4) = v21;
      *(v41 + 12) = 2112;
      *(v41 + 14) = v20;
      *v14 = v19;
      v45 = v20;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s Could not find configuration context on remote alert: %@", v41, 0x16u);
      sub_100006CEC(v14, &qword_100022FE0, &qword_1000130D0);

      sub_1000067B8(v42);
    }

    if (a2)
    {
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_20;
  }

  v29 = v28;
  v89 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v83 = a1;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1000101D4(&_swiftEmptyArrayStorage);
    v30 = v78;
  }

  else
  {
    v30 = &_swiftEmptySetSingleton;
  }

  v82 = [objc_opt_self() sharedInstance];
  if (!v82)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v31 = type metadata accessor for FeatureManager();
  v32 = static FeatureManager.shared.getter();
  v94[3] = v31;
  v94[4] = &protocol witness table for FeatureManager;
  v94[0] = v32;
  v90 = 0x656369766564;
  v91 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  v33 = v89;
  if (*(v89 + 16) && (v34 = sub_1000100C8(v92), v33 = v89, (v35 & 1) != 0))
  {
    sub_100006868(*(v89 + 56) + 32 * v34, v93);
    sub_100006764(v92);
    sub_1000061F4(&qword_100022D10, &qword_1000130D8);
    if (swift_dynamicCast())
    {

      v36 = v82;
      sub_100008B08(v90, v82, v94, v17);

      goto LABEL_27;
    }

    v80 = v17;
    v81 = a2;
  }

  else
  {
    v80 = v17;
    v81 = a2;
    sub_100006764(v92);
  }

  sub_10000994C(v33, v14);
  v37 = *(v21 + 48);
  if (v37(v14, 1, v20) == 1)
  {
    sub_100006CEC(v14, &unk_100022CF0, &qword_1000130C8);
    sub_10000A458(v33, v30, v11);

    if (v37(v11, 1, v20) == 1)
    {
      sub_100006CEC(v11, &unk_100022CF0, &qword_1000130C8);
      v17 = v80;
      (*(v21 + 56))(v80, 1, 1, v20);
    }

    else
    {
      sub_100006628(v11, v24);
      v17 = v80;
      sub_100006628(v24, v80);
      (*(v21 + 56))(v17, 0, 1, v20);
    }

    a2 = v81;
    goto LABEL_27;
  }

LABEL_20:

  v46 = v14;
  v47 = v84;
  sub_100006628(v46, v84);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_100005F58(v48, static AISLogger.uiService);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  v51 = os_log_type_enabled(v49, v50);
  a2 = v81;
  v17 = v80;
  if (v51)
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Attempting to create a new presentation request launched for sharing", v52, 2u);
  }

  sub_100006628(v47, v17);
  (*(v21 + 56))(v17, 0, 1, v20);
LABEL_27:
  v53 = v83;
  sub_1000067B8(v94);
  v54 = v87;
  sub_100002978(v17, v19);
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {

    v66 = v85;
    sub_100006628(v19, v85);
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100005F58(v67, static AISLogger.uiService);
    v68 = v54;
    v69 = v53;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = v53;
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412546;
      *(v73 + 4) = v68;
      *(v73 + 12) = 2112;
      *(v73 + 14) = v69;
      *v74 = v68;
      v74[1] = v72;
      v75 = v68;
      v76 = v69;
      _os_log_impl(&_mh_execute_header, v70, v71, "Configuring remote alert (%@) with context: %@", v73, 0x16u);
      sub_1000061F4(&qword_100022FE0, &qword_1000130D0);
      swift_arrayDestroy();
    }

    v77 = OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_presentationRequest;
    swift_beginAccess();
    sub_100006804(v66, v68 + v77);
    swift_endAccess();
    if (a2)
    {
      goto LABEL_40;
    }

    goto LABEL_46;
  }

  sub_100006CEC(v19, &unk_100022CF0, &qword_1000130C8);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_100005F58(v55, static AISLogger.uiService);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v94[0] = swift_slowAlloc();
    *v58 = 136315394;
    v59 = _typeName(_:qualified:)();
    v61 = sub_10000FA60(v59, v60, v94);

    *(v58 + 4) = v61;
    *(v58 + 12) = 2080;
    v62 = Dictionary.description.getter();
    v64 = v63;

    v65 = sub_10000FA60(v62, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v56, v57, "%s Unable to build presentation request with user info: %s", v58, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (a2)
  {
LABEL_40:
    a2();
    return;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_100002978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000061F4(&qword_100022D18, &qword_1000130E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for ViewServiceConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PresentationRequest(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11))
  {
    goto LABEL_2;
  }

  v35 = a2;
  sub_1000065C4(a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v24 = &unk_100013270;
    v23 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_10000624C(v14);
      a2 = v35;
LABEL_2:
      if (qword_100022B30 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100005F58(v15, static AISLogger.uiService);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "No override action for this request, continuing", v18, 2u);
      }

      return sub_1000068C4(a1, a2);
    }

    v21 = *(v8 + 32);
    v21(&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v7);
    v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v23 = swift_allocObject();
    v21((v23 + v22), v10, v7);
    v24 = &unk_1000130F8;
  }

  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  type metadata accessor for MainActor();

  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v24;
  v27[5] = v23;
  sub_100004240(0, 0, v6, &unk_1000130F0, v27);

  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100005F58(v28, static AISLogger.uiService);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v35;
  if (v31)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Returning nil request due to override action being returned", v33, 2u);
  }

  (*(v12 + 56))(v32, 1, 1, v11);
  return sub_100006CEC(a1, &unk_100022CF0, &qword_1000130C8);
}

void sub_100002F20(NSObject *a1, void (*a2)(void), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1000061F4(&unk_100022CF0, &qword_1000130C8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v88 - v12;
  v14 = __chkstk_darwin(v11);
  v93 = v88 - v15;
  __chkstk_darwin(v14);
  v17 = v88 - v16;
  v18 = type metadata accessor for PresentationRequest(0);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v90 = v88 - v24;
  __chkstk_darwin(v23);
  v95 = v88 - v25;
  if (!a1)
  {
    __break(1u);
    goto LABEL_41;
  }

  v26 = [a1 userInfo];
  if (!v26)
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100005F58(v41, static AISLogger.uiService);
    v42 = a1;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v92 = a2;
      v48 = v47;
      v102[0] = v47;
      *v45 = 136315394;
      v49 = _typeName(_:qualified:)();
      v51 = sub_10000FA60(v49, v50, v102);

      *(v45 + 4) = v51;
      *(v45 + 12) = 2112;
      *(v45 + 14) = v42;
      *v46 = a1;
      v52 = v42;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s Could not find activation context on remote alert: %@", v45, 0x16u);
      sub_100006CEC(v46, &qword_100022FE0, &qword_1000130D0);

      sub_1000067B8(v48);
      a2 = v92;
    }

    if (a2)
    {
      a2();
      return;
    }

    goto LABEL_42;
  }

  v89 = v17;
  v88[1] = ObjectType;
  v91 = a3;
  v92 = a2;
  v27 = v26;
  v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v96 = a1;
  v29 = [a1 actions];
  sub_1000066CC(0, &qword_100022D00, BSAction_ptr);
  sub_100006714(&qword_100022FB0, &qword_100022D00, BSAction_ptr);
  v30 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = [objc_opt_self() sharedInstance];
  if (!v31)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v32 = v31;
  v33 = type metadata accessor for FeatureManager();
  v34 = static FeatureManager.shared.getter();
  v102[3] = v33;
  v102[4] = &protocol witness table for FeatureManager;
  v102[0] = v34;
  v98 = 0x656369766564;
  v99 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  v35 = *(v28 + 16);
  v36 = v96;
  v97 = v28;
  if (v35 && (v37 = sub_1000100C8(v100), v28 = v97, (v38 & 1) != 0))
  {
    sub_100006868(*(v97 + 56) + 32 * v37, v101);
    sub_100006764(v100);
    sub_1000061F4(&qword_100022D10, &qword_1000130D8);
    if (swift_dynamicCast())
    {

      v39 = v93;
      sub_100008B08(v98, v32, v102, v93);

LABEL_25:
      v58 = v89;
      goto LABEL_26;
    }
  }

  else
  {
    sub_100006764(v100);
  }

  sub_10000994C(v28, v13);
  v40 = *(v19 + 48);
  if (v40(v13, 1, v18) == 1)
  {
    sub_100006CEC(v13, &unk_100022CF0, &qword_1000130C8);
    sub_10000A458(v28, v30, v10);

    if (v40(v10, 1, v18) == 1)
    {
      sub_100006CEC(v10, &unk_100022CF0, &qword_1000130C8);
      v39 = v93;
      (*(v19 + 56))(v93, 1, 1, v18);
    }

    else
    {
      sub_100006628(v10, v22);
      v39 = v93;
      sub_100006628(v22, v93);
      (*(v19 + 56))(v39, 0, 1, v18);
    }

    v36 = v96;
    goto LABEL_25;
  }

  v53 = v90;
  sub_100006628(v13, v90);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_100005F58(v54, static AISLogger.uiService);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  v57 = os_log_type_enabled(v55, v56);
  v36 = v96;
  v58 = v89;
  if (v57)
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Attempting to create a new presentation request launched for sharing", v59, 2u);
  }

  v39 = v93;
  sub_100006628(v53, v93);
  (*(v19 + 56))(v39, 0, 1, v18);
LABEL_26:
  sub_1000067B8(v102);
  v60 = v39;
  v61 = v94;
  sub_100002978(v60, v58);
  if ((*(v19 + 48))(v58, 1, v18) == 1)
  {
    sub_100006CEC(v58, &unk_100022CF0, &qword_1000130C8);
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100005F58(v62, static AISLogger.uiService);

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      *v65 = 136315394;
      v66 = _typeName(_:qualified:)();
      v68 = sub_10000FA60(v66, v67, v102);

      *(v65 + 4) = v68;
      *(v65 + 12) = 2080;
      v69 = Dictionary.description.getter();
      v71 = v70;

      v72 = sub_10000FA60(v69, v71, v102);

      *(v65 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v63, v64, "%s Unable to build presentation request with user info: %s", v65, 0x16u);
      swift_arrayDestroy();

      goto LABEL_38;
    }
  }

  else
  {

    sub_100006628(v58, v95);
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_100005F58(v73, static AISLogger.uiService);
    v63 = v61;
    v74 = v36;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v102[0] = v79;
      *v77 = 136315650;
      v80 = _typeName(_:qualified:)();
      v82 = sub_10000FA60(v80, v81, v102);

      *(v77 + 4) = v82;
      *(v77 + 12) = 2112;
      *(v77 + 14) = v63;
      *(v77 + 22) = 2112;
      *(v77 + 24) = v74;
      *v78 = v63;
      v78[1] = v36;
      v83 = v63;
      v84 = v74;
      _os_log_impl(&_mh_execute_header, v75, v76, "%s Configuring remote alert (%@) with context: %@", v77, 0x20u);
      sub_1000061F4(&qword_100022FE0, &qword_1000130D0);
      swift_arrayDestroy();

      sub_1000067B8(v79);
    }

    v85 = OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_presentationRequest;
    swift_beginAccess();
    sub_100006804(v95, v63 + v85);
    v86 = swift_endAccess();
    v87 = v92;
    if (v92)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

LABEL_38:

  v87 = v92;
  if (v92)
  {
LABEL_39:
    (v87)(v86);
    return;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_100003BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100003C38, v7, v6);
}

uint64_t sub_100003C38()
{
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_100005F58(v1, static AISLogger.uiService);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Executing override action", v4, 2u);
  }

  v5 = v0[2];

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_100003DE4;

  return v8();
}

uint64_t sub_100003DE4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100004068;
  }

  else
  {
    v5 = sub_100003F20;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100003F20()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished executing override action", v3, 2u);
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "AppleIDSetupUIService is exiting after running override action", v6, 2u);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100004068()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to execute override action: %@", v3, 0xCu);
    sub_100006CEC(v4, &qword_100022FE0, &qword_1000130D0);
  }

  else
  {
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "AppleIDSetupUIService is exiting after running override action", v8, 2u);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100004240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000061F4(&qword_100022D18, &qword_1000130E0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100006C7C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006CEC(v11, &qword_100022D18, &qword_1000130E0);
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

      sub_100006CEC(a3, &qword_100022D18, &qword_1000130E0);

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

  sub_100006CEC(a3, &qword_100022D18, &qword_1000130E0);
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

void sub_100004570(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for PresentationRequest(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - v10;
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v28.receiver = v2;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "viewWillAppear:", a1 & 1);
  v14 = OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_presentationRequest;
  swift_beginAccess();
  sub_1000065C4(&v2[v14], v13);
  sub_1000065C4(v13, v11);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_10000624C(v13);
    sub_10000624C(v11);
  }

  else
  {
    sub_10000624C(v11);
    sub_100006628(v13, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_10000624C(v8);
    if (EnumCaseMultiPayload != 6)
    {
      v16 = OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController;
      if (!*&v2[OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController])
      {
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v18 = type metadata accessor for RemoteAlertRootViewController();
        v19 = objc_allocWithZone(v18);
        swift_unknownObjectWeakInit();
        v20 = &v19[OBJC_IVAR____TtC21AppleIDSetupUIService29RemoteAlertRootViewController_dismissHandler];
        *v20 = 0;
        v20[1] = 0;
        swift_unknownObjectWeakAssign();
        v21 = *v20;
        v22 = v20[1];
        *v20 = sub_1000066C4;
        v20[1] = v17;

        sub_10000651C(v21, v22);
        v27.receiver = v19;
        v27.super_class = v18;
        v23 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);

        [v23 setModalPresentationStyle:0];
        v24 = *&v2[v16];
        *&v2[v16] = v23;
        v25 = v23;

        [v2 presentViewController:v25 animated:0 completion:0];
      }
    }
  }
}

void sub_10000480C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000062B0(0, v2);
  }
}

void sub_1000048B8(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for PresentationRequest(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v38 - v10;
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v42.receiver = v2;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "viewDidAppear:", a1 & 1);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005F58(v14, static AISLogger.uiService);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v13;
    v19 = v18;
    v38 = swift_slowAlloc();
    v41[0] = v38;
    *v19 = 136315138;
    v20 = v15;
    v21 = [v20 description];
    v40 = v5;
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v11;
    v25 = v8;
    v27 = v26;

    v28 = sub_10000FA60(v23, v27, v41);
    v8 = v25;
    v11 = v24;

    *(v19 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: viewDidAppear", v19, 0xCu);
    sub_1000067B8(v38);

    v13 = v39;
  }

  v29 = *&v15[OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController];
  if (v29)
  {
    v30 = v29;
    v31 = [v30 presentedViewController];
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v33 = OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_presentationRequest;
      swift_beginAccess();
      sub_1000065C4(&v15[v33], v13);
      sub_100006628(v13, v11);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_10000624C(v11);
      if (EnumCaseMultiPayload == 5)
      {
      }

      else
      {
        v35 = sub_1000058B8();
        if (v35)
        {
          v36 = v35;
          v37 = String._bridgeToObjectiveC()();
          [v36 setIdleTimerDisabled:1 forReason:v37];

          swift_unknownObjectRelease();
        }

        sub_1000065C4(&v15[v33], v8);
        sub_100007074(v8);

        sub_10000624C(v8);
      }
    }
  }
}

id sub_100004C88(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_100022B10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005F58(v5, qword_100022B18);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v23 = ObjectType;
    v9 = a1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    v12 = v6;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10000FA60(v14, v16, &v24);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s viewDidDisappear", v10, 0xCu);
    sub_1000067B8(v11);

    a1 = v9;
    ObjectType = v23;
  }

  v18 = sub_1000058B8();
  if (v18)
  {
    v19 = v18;
    v20 = String._bridgeToObjectiveC()();
    [v19 setIdleTimerDisabled:0 forReason:v20];

    swift_unknownObjectRelease();
  }

  v21 = *&v6[OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController];
  if (v21)
  {
    [v21 dismissViewControllerAnimated:0 completion:0];
  }

  v25.receiver = v6;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, "viewDidDisappear:", a1 & 1, v23, v24);
}

void *sub_100004F1C(uint64_t a1)
{
  result = sub_1000058B8();
  if (result)
  {
    [result dismiss];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100005028(uint64_t a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000066CC(0, &qword_100022CE0, SBUIRemoteAlertButtonAction_ptr);
    sub_100006714(&qword_100022CE8, &qword_100022CE0, SBUIRemoteAlertButtonAction_ptr);
    Set.Iterator.init(_cocoa:)();
    v3 = v37[1];
    v2 = v37[2];
    v4 = v37[3];
    v5 = v37[4];
    v6 = v37[5];
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
    v3 = a1;
  }

  v10 = (v4 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (!v6)
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_20;
      }

      v12 = *(v2 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_13:
  v14 = (v12 - 1) & v12;
  v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
  if (!v15)
  {
LABEL_20:
    sub_1000062A8(v3);
    if (qword_100022B30 == -1)
    {
LABEL_21:
      v16 = type metadata accessor for Logger();
      sub_100005F58(v16, static AISLogger.uiService);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v37[0] = v20;
        *v19 = 136315138;
        sub_1000066CC(0, &qword_100022CE0, SBUIRemoteAlertButtonAction_ptr);
        sub_100006714(&qword_100022CE8, &qword_100022CE0, SBUIRemoteAlertButtonAction_ptr);
        v21 = Set.description.getter();
        v23 = sub_10000FA60(v21, v22, v37);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "Ignoring received button actions: %s", v19, 0xCu);
        sub_1000067B8(v20);
      }

      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_21;
  }

  while ([v15 events] != 16)
  {

    v5 = v13;
    v6 = v14;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000066CC(0, &qword_100022CE0, SBUIRemoteAlertButtonAction_ptr);
      swift_dynamicCast();
      v15 = v37[0];
      v13 = v5;
      v14 = v6;
      if (v37[0])
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  sub_1000062A8(v3);

  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100005F58(v24, static AISLogger.uiService);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Received home button press", v27, 2u);
  }

  v28 = OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController_homeButtonPressedWhileLocked;
  if (*(v36 + OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController_homeButtonPressedWhileLocked) & 1) != 0 || (v29 = sub_100005830()) == 0 || (v30 = v29, v31 = [v29 isUnlocked], v30, (v31))
  {
    if (qword_100022B10 != -1)
    {
      swift_once();
    }

    sub_100005F58(v24, qword_100022B18);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Ignoring first home button press to unlock", v34, 2u);
    }

    *(v36 + v28) = 1;
  }

  else
  {
    v35 = *(v36 + OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController);
    if (v35)
    {
      [v35 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_100005680()
{
  sub_10000624C(v0 + OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_presentationRequest);
  v1 = *(v0 + OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController);
}

id sub_1000056C0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for SetupAlertViewController(uint64_t a1)
{
  result = qword_100022B90;
  if (!qword_100022B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005798(uint64_t a1)
{
  result = type metadata accessor for PresentationRequest(319);
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

id sub_100005830()
{
  v1 = OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController____lazy_storage___device;
  v2 = *(v0 + OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController____lazy_storage___device);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1000061E4(v4);
  }

  sub_10000623C(v2);
  return v3;
}

uint64_t sub_1000058B8()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1000061F4(&qword_100022CD8, &qword_1000130C0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100006CEC(v5, &qword_100022C70, &unk_1000130B0);
    return 0;
  }
}

void *sub_100005988(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BaseProxFlowViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  v3 = sub_1000058B8();
  if (v3)
  {
    [v3 setStatusBarHidden:1 withDuration:0.3];
    swift_unknownObjectRelease();
  }

  v4 = sub_1000058B8();
  if (v4)
  {
    [v4 setAllowsBanners:1];
    swift_unknownObjectRelease();
  }

  v5 = sub_1000058B8();
  if (v5)
  {
    [v5 setDesiredHardwareButtonEvents:16 * (SFDeviceHomeButtonType() != 3)];
    swift_unknownObjectRelease();
  }

  result = sub_1000058B8();
  if (result)
  {
    [result setAllowsAlertStacking:1];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100005ACC(char a1, uint64_t a2)
{
  swift_getObjectType();
  v13.receiver = v2;
  v13.super_class = type metadata accessor for BaseProxFlowViewController();
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1);
  if (qword_100022B10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005F58(v4, qword_100022B18);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10000FA60(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s viewDidDisappear, exiting now", v7, 0xCu);
    sub_1000067B8(v8);
  }

  exit(0);
}

id sub_100005EDC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BaseProxFlowViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100005F58(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005F90(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100006088;

  return v6(a1);
}

uint64_t sub_100006088()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *sub_100006180(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1000061E4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000061F4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_10000623C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10000624C(uint64_t a1)
{
  v2 = type metadata accessor for PresentationRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000062B0(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_100022B10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005F58(v5, qword_100022B18);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v20 = ObjectType;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315394;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10000FA60(v13, v15, aBlock);

    *(v9 + 4) = v16;
    *(v9 + 12) = 1024;
    *(v9 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s dismiss animated: %{BOOL}d", v9, 0x12u);
    sub_1000067B8(v10);

    ObjectType = v20;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v6;
  aBlock[4] = sub_1000065A4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007924;
  aBlock[3] = &unk_10001CB08;
  v18 = _Block_copy(aBlock);
  v19 = v6;

  v21.receiver = v19;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "dismissViewControllerAnimated:completion:", a1 & 1, v18);
  _Block_release(v18);
}

uint64_t sub_10000651C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000652C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000656C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000065AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000065C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000668C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000066CC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100006714(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000066CC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000067B8(void *a1)
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

uint64_t sub_100006804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationRequest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006868(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000068C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000061F4(&unk_100022CF0, &qword_1000130C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006934()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100006A34;

  return sub_100003BA0(a1, v4, v5, v7, v6);
}

uint64_t sub_100006A34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100006B28()
{
  v1 = type metadata accessor for ViewServiceConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100006BB0()
{
  v2 = *(type metadata accessor for ViewServiceConfiguration() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100006A34;

  return sub_10000B164(v0 + v3);
}

uint64_t sub_100006C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000061F4(&qword_100022D18, &qword_1000130E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006CEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000061F4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006D4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006D84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006E48;

  return sub_100005F90(a1, v4);
}

void sub_100006EE4()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setClipsToBounds:0];
}

void sub_100007074(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PresentationRequest(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v37 - v9;
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100005F58(v13, static AISLogger.uiService);
  sub_1000065C4(a1, v12);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v37 = v14;
    v20 = v19;
    v39[0] = v19;
    *v18 = 136315138;
    sub_1000065C4(v12, v10);
    v21 = String.init<A>(describing:)();
    v22 = v2;
    v24 = v23;
    sub_10000624C(v12);
    v25 = sub_10000FA60(v21, v24, v39);
    v2 = v22;

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Presenting view controller in remote alert for request: %s", v18, 0xCu);
    sub_1000067B8(v20);

    v7 = v38;
  }

  else
  {

    sub_10000624C(v12);
  }

  v26 = sub_100007968();
  v39[1] = &OBJC_PROTOCOL___PRXCardContentProviding;
  v27 = swift_dynamicCastObjCProtocolConditional();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  v30 = os_log_type_enabled(v28, v29);
  if (v27)
  {
    if (v30)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Using prox card flow for remote alert presentation", v31, 2u);
    }

    v32 = [v2 presentProxCardFlowWithDelegate:v2 initialViewController:v27];
    v26 = v32;
  }

  else
  {
    if (v30)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Using modal UI flow for remote alert presentation", v33, 2u);
    }

    [v26 setModalPresentationStyle:0];
    v34 = [v26 presentationController];
    if (v34)
    {
      v35 = v34;
      [v34 setDelegate:v2];
    }

    sub_1000065C4(a1, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 5)
    {
      sub_10000624C(v7);
    }

    [v2 presentViewController:v26 animated:EnumCaseMultiPayload != 5 completion:0];
  }
}

void sub_1000074FC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1();
  }

  v4 = *(a3 + OBJC_IVAR____TtC21AppleIDSetupUIService29RemoteAlertRootViewController_dismissHandler);
  if (v4)
  {
    v5 = *(a3 + OBJC_IVAR____TtC21AppleIDSetupUIService29RemoteAlertRootViewController_dismissHandler + 8);

    v4(v6);
    sub_10000651C(v4, v5);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidate];
}

id sub_10000773C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoteAlertRootViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000077FC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007850(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007868(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100007878()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t AISLogger.uiService.unsafeMutableAddressor()
{
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100005F58(v0, static AISLogger.uiService);
}

uint64_t sub_100007924(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_100007968()
{
  v96 = type metadata accessor for Logger();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v81 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1000061F4(&qword_100023058, &qword_100013238);
  __chkstk_darwin(v1 - 8);
  v93 = &v81 - v2;
  v90 = type metadata accessor for AgeMigrationModel.State();
  __chkstk_darwin(v90);
  v88 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for RemoteRole();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v86 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000061F4(&qword_100023060, &qword_100013240);
  __chkstk_darwin(v5 - 8);
  v83 = &v81 - v6;
  v92 = type metadata accessor for AgeMigrationModel();
  v91 = *(v92 - 8);
  v7 = __chkstk_darwin(v92);
  v87 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v89 = &v81 - v9;
  v98 = type metadata accessor for IdMSAccount();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v110 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000061F4(&qword_100023068, &qword_100013248);
  __chkstk_darwin(v11 - 8);
  v108 = &v81 - v12;
  v13 = type metadata accessor for AISDeviceClass();
  v105 = *(v13 - 8);
  v106 = v13;
  __chkstk_darwin(v13);
  v104 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000061F4(&qword_100023070, &qword_100013250);
  __chkstk_darwin(v15 - 8);
  v103 = &v81 - v16;
  v17 = type metadata accessor for DiscoveryModel.CodeType();
  __chkstk_darwin(v17 - 8);
  v102 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DiscoveryModel.PairingState();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DiscoveryModel.State();
  v99 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DiscoveryModel();
  v111 = *(v24 - 8);
  v112 = v24;
  v25 = __chkstk_darwin(v24);
  v107 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v109 = &v81 - v27;
  v113 = type metadata accessor for BLEDevice();
  v28 = *(v113 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v113);
  v31 = __chkstk_darwin(v30);
  v33 = &v81 - v32;
  __chkstk_darwin(v31);
  v35 = &v81 - v34;
  v36 = type metadata accessor for PresentationRequest(0);
  __chkstk_darwin(v36);
  v38 = &v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065C4(v114, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      return [objc_allocWithZone(UIViewController) init];
    }

    if (EnumCaseMultiPayload == 3)
    {
      v40 = v28;
      v41 = v113;
      (*(v28 + 32))(&v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v113);
      (*(v100 + 104))(v20, enum case for DiscoveryModel.PairingState.notStarted(_:), v101);
      DiscoveryModel.Discovering.init(allowsManual:selectedManual:pairingState:)();
      (*(v99 + 104))(v23, enum case for DiscoveryModel.State.discovering(_:), v21);
      static DiscoveryModel.CodeType.platformDefault.getter();
      v42 = type metadata accessor for SymptomReport();
      (*(*(v42 - 8) + 56))(v103, 1, 1, v42);
      (*(v105 + 104))(v104, enum case for AISDeviceClass.unknown(_:), v106);
      v43 = v107;
      DiscoveryModel.init(role:flowKind:state:fixedPin:targetAuthTag:codeType:altDSID:symptomReport:shouldSkipConfirmation:name:serverDeviceModel:currentDeviceAgeRange:peerDeviceAgeRange:peerDeviceClass:)();
      v44 = *(v40 + 16);
      v45 = v108;
      v44(v108, &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v41);
      (*(v40 + 56))(v45, 0, 1, v41);
      v46 = v109;
      DiscoveryModel.updated(withPeer:)();
      sub_100006CEC(v45, &qword_100023068, &qword_100013248);
      v47 = [objc_opt_self() sharedInstance];
      v48 = v110;
      static IdMSAccount.fetchPrimary(with:)();

      v66 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v82 = v66;
      v67 = v97;
      v68 = *(v97 + 16);
      v69 = v43;
      v70 = v83;
      v114 = v40;
      v71 = v98;
      v68(v83, v48);
      (*(v67 + 56))(v70, 0, 1, v71);
      v72 = v86;
      v44(v86, v66, v41);
      (*(v84 + 104))(v72, enum case for RemoteRole.bleClient(_:), v85);
      v73 = v111;
      v74 = v112;
      (*(v111 + 16))(v69, v46, v112);
      swift_storeEnumTagMultiPayload();
      v75 = v89;
      AgeMigrationModel.init(account:remoteRole:discoveryModel:state:)();
      type metadata accessor for AgeMigrationController();
      v76 = type metadata accessor for XPCEndpoint();
      (*(*(v76 - 8) + 56))(v93, 1, 1, v76);
      v118 = 0;
      v116 = 0u;
      v117 = 0u;
      AgeMigrationController.__allocating_init(queue:endpoint:inactiveSession:)();
      v77 = v91;
      v78 = v92;
      (*(v91 + 16))(v87, v75, v92);
      v79 = objc_allocWithZone(type metadata accessor for AgeMigrationCardViewController());
      v80 = AgeMigrationCardViewController.init(ageMigrationController:model:terminationHandler:)();
      (*(v77 + 8))(v75, v78);
      (*(v97 + 8))(v48, v98);
      (*(v73 + 8))(v46, v74);
      (*(v114 + 8))(v82, v113);
    }

    else
    {
      v80 = [objc_allocWithZone(UIViewController) init];
      sub_10000624C(v38);
    }

    return v80;
  }

  if (!EnumCaseMultiPayload)
  {
    v57 = *(v28 + 32);
    v58 = v38;
    v51 = v113;
    v57(v35, v58, v113);
    (*(v28 + 16))(v33, v35, v51);
    v59 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v60 = swift_allocObject();
    v57((v60 + v59), v33, v51);
    v61 = objc_allocWithZone(type metadata accessor for SetupCardViewController());
    v55 = SetupCardViewController.init(contextBuilder:reportHandler:)();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v49 = *(v28 + 32);
    v50 = v38;
    v51 = v113;
    v49(v35, v50, v113);
    (*(v28 + 16))(v33, v35, v51);
    v52 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v53 = swift_allocObject();
    v49((v53 + v52), v33, v51);
    v54 = objc_allocWithZone(type metadata accessor for RepairCardViewController());
    v55 = RepairCardViewController.init(contextBuilder:reportHandler:)();
LABEL_10:
    v80 = v55;
    (*(v28 + 8))(v35, v51);
    return v80;
  }

  v62 = *v38;
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v63 = result;
  *(&v117 + 1) = sub_1000066CC(0, &qword_100023010, ACAccountStore_ptr);
  v118 = &protocol witness table for ACAccountStore;
  *&v116 = v63;
  v64 = type metadata accessor for BaseBoardActionsViewController();
  v65 = objc_allocWithZone(v64);
  *&v65[OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_viewSessionController] = 0;
  *&v65[OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_actions] = v62;
  sub_10000E488(&v116, &v65[OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_accountStore]);
  v115.receiver = v65;
  v115.super_class = v64;
  v80 = objc_msgSendSuper2(&v115, "initWithNibName:bundle:", 0, 0);
  sub_1000067B8(&v116);
  return v80;
}

uint64_t sub_1000089F4()
{
  v0 = type metadata accessor for Logger();
  sub_100006180(v0, static AISLogger.uiService);
  sub_100005F58(v0, static AISLogger.uiService);
  static AISLogger.subsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t static AISLogger.uiService.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100005F58(v2, static AISLogger.uiService);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100008B08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v118 = a3;
  v111 = a2;
  v123 = a4;
  v5 = type metadata accessor for BleAdvertisementFlags();
  v113 = *(v5 - 8);
  v114 = v5;
  v6 = __chkstk_darwin(v5);
  v112 = v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v115 = v104 - v8;
  v116 = type metadata accessor for AppleIDSetupFeature();
  v119 = *(v116 - 8);
  __chkstk_darwin(v116);
  v117 = v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BLEDevice.NearbyActionPayload();
  v120 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v104 - v14;
  v16 = type metadata accessor for BLEDevice();
  v122 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v104 - v21;
  __chkstk_darwin(v20);
  v24 = v104 - v23;
  v25 = objc_allocWithZone(CBDevice);

  v121 = a1;
  v27 = sub_10000D868(v26);
  v105 = v19;
  v106 = v15;
  v28 = v22;
  v104[0] = v13;
  v107 = v10;
  v29 = v27;
  CBDevice.into()();
  v108 = v29;

  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100005F58(v30, static AISLogger.uiService);
  v32 = *(v122 + 16);
  v33 = v28;
  v32(v28, v24, v16);
  v104[1] = v31;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v118;
  v38 = v105;
  v109 = v16;
  v110 = v24;
  if (v36)
  {
    v39 = swift_slowAlloc();
    v40 = v16;
    v41 = swift_slowAlloc();
    v124[0] = v41;
    *v39 = 136315138;
    v32(v38, v33, v40);
    v42 = String.init<A>(describing:)();
    v44 = v43;
    v45 = *(v122 + 8);
    v45(v33, v40);
    v46 = sub_10000FA60(v42, v44, v124);

    *(v39 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "Handling BLE device dictionary for presentation request: %s", v39, 0xCu);
    sub_1000067B8(v41);
  }

  else
  {

    v45 = *(v122 + 8);
    v45(v33, v16);
  }

  v47 = v106;
  v48 = v107;
  v49 = v117;
  BLEDevice.nearbyActionPayload.getter();
  v50 = BLEDevice.NearbyActionPayload.type.getter();
  v51 = v120 + 8;
  v52 = *(v120 + 8);
  v52(v47, v48);
  v53 = v123;
  v54 = v119;
  if (v50 == 95)
  {
    v120 = v51;
    v117 = v45;
    v59 = v37[4];
    sub_10000D9D0(v37, v37[3]);
    v60 = v49;
    v61 = v49;
    v62 = v116;
    v107 = *(v54 + 104);
    v107(v60, enum case for AppleIDSetupFeature.ageBasedAccountSupport(_:), v116);
    v118 = v59;
    LOBYTE(v59) = dispatch thunk of FeatureManagerProtocol.isFeatureEnabled(_:)();
    v63 = *(v54 + 8);
    v63(v61, v62);
    if (v59 & 1) != 0 || (v107(v61, enum case for AppleIDSetupFeature.ageMigration(_:), v62), v64 = dispatch thunk of FeatureManagerProtocol.isFeatureEnabled(_:)(), v63(v61, v62), (v64))
    {
      v65 = v104[0];
      BLEDevice.nearbyActionPayload.getter();
      v66 = v115;
      BLEDevice.NearbyActionPayload.advertisementFlags.getter();
      v52(v65, v48);
      v67 = v112;
      static BleAdvertisementFlags.ageMigration.getter();
      sub_10000DA14(&qword_100022FE8, &type metadata accessor for BleAdvertisementFlags, &protocol conformance descriptor for BleAdvertisementFlags);
      v68 = v114;
      v69 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v70 = *(v113 + 8);
      v70(v67, v68);
      if (v69 & 1) != 0 || (static BleAdvertisementFlags.teenSetup.getter(), v71 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v70(v67, v68), (v71))
      {
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();
        v74 = os_log_type_enabled(v72, v73);
        v75 = v123;
        v76 = v109;
        if (v74)
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "AppleIDSetupUIService will handle this nearby action", v77, 2u);
        }

        v78 = v110;
        sub_10000AC80(v110, v111, v75);

        v70(v66, v68);
        (v117)(v78, v76);
        v56 = type metadata accessor for PresentationRequest(0);
        v57 = *(*(v56 - 8) + 56);
        v58 = v75;
      }

      else
      {

        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.info.getter();

        v95 = os_log_type_enabled(v93, v94);
        v96 = v123;
        if (v95)
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v124[0] = v98;
          *v97 = 136315138;
          v99 = Dictionary.description.getter();
          v101 = sub_10000FA60(v99, v100, v124);

          *(v97 + 4) = v101;
          v68 = v114;
          _os_log_impl(&_mh_execute_header, v93, v94, "Determined that AppleIDSetupUIService should not be handling this nearby action: %s", v97, 0xCu);
          sub_1000067B8(v98);
        }

        v103 = v108;
        v102 = v109;
        sub_10000A86C(v108, v96);

        v70(v115, v68);
        (v117)(v110, v102);
        v56 = type metadata accessor for PresentationRequest(0);
        v57 = *(*(v56 - 8) + 56);
        v58 = v96;
      }
    }

    else
    {
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&_mh_execute_header, v88, v89, "Necessary feature not enabled, falling through to allow handling by other view service", v90, 2u);
      }

      v91 = v123;
      v92 = v108;
      sub_10000A86C(v108, v123);

      (v117)(v110, v109);
      v56 = type metadata accessor for PresentationRequest(0);
      v57 = *(*(v56 - 8) + 56);
      v58 = v91;
    }

    return v57(v58, 0, 1, v56);
  }

  if (v50 == 47)
  {
    v55 = v108;
    sub_10000A86C(v108, v123);

    v45(v110, v109);
    v56 = type metadata accessor for PresentationRequest(0);
    v57 = *(*(v56 - 8) + 56);
    v58 = v53;
    return v57(v58, 0, 1, v56);
  }

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v124[0] = v82;
    *v81 = 136315138;
    v83 = Dictionary.description.getter();
    v85 = sub_10000FA60(v83, v84, v124);

    *(v81 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v79, v80, "AppleIDSetupUIService did not expect to be handling this nearby action: %s, exiting early", v81, 0xCu);
    sub_1000067B8(v82);
  }

  v45(v110, v109);
  v86 = type metadata accessor for PresentationRequest(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v86 - 8) + 56))(v53, 0, 1, v86);
}

uint64_t sub_10000994C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BleAdvertisementFlags();
  __chkstk_darwin(v4 - 8);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BLEDevice.NearbyActionPayload();
  __chkstk_darwin(v7 - 8);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AISDeviceClass();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v66 - v15;
  v76 = 0xD000000000000010;
  v77 = 0x8000000100013810;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v17 = sub_1000100C8(v78), (v18 & 1) == 0))
  {
    sub_100006764(v78);
    goto LABEL_9;
  }

  sub_100006868(*(a1 + 56) + 32 * v17, &v79);
  sub_100006764(v78);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005F58(v21, static AISLogger.uiService);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v78[0] = v25;
      *v24 = 136315138;
      v26 = Dictionary.description.getter();
      v28 = sub_10000FA60(v26, v27, v78);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "No device identifier provided in user info: %s", v24, 0xCu);
      sub_1000067B8(v25);
    }

    v29 = type metadata accessor for PresentationRequest(0);
    v30 = *(*(v29 - 8) + 56);
    v31 = a2;
    return v30(v31, 1, 1, v29);
  }

  v74 = v76;
  v75 = v77;
  v79 = 0xD000000000000010;
  v80 = 0x8000000100013830;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v19 = sub_1000100C8(v78), (v20 & 1) == 0))
  {
    sub_100006764(v78);
    goto LABEL_16;
  }

  sub_100006868(*(a1 + 56) + 32 * v19, &v79);
  sub_100006764(v78);
  if (!swift_dynamicCast())
  {
LABEL_16:
    v71 = 0;
    goto LABEL_17;
  }

  v71 = v76;
LABEL_17:
  v79 = 0x6F6973726556736FLL;
  v80 = 0xE90000000000006ELL;
  AnyHashable.init<A>(_:)();
  v33 = *(a1 + 16);
  v69 = v6;
  if (!v33 || (v34 = sub_1000100C8(v78), (v35 & 1) == 0))
  {
    sub_100006764(v78);
    goto LABEL_22;
  }

  sub_100006868(*(a1 + 56) + 32 * v34, &v79);
  sub_100006764(v78);
  if (!swift_dynamicCast())
  {
LABEL_22:
    v36 = 0;
    goto LABEL_23;
  }

  v36 = v76;
LABEL_23:
  v76 = 0x556E6F6973736573;
  v77 = 0xEB00000000444955;
  AnyHashable.init<A>(_:)();
  v37 = *(a1 + 16);
  v72 = v9;
  if (!v37 || (v38 = sub_1000100C8(v78), (v39 & 1) == 0))
  {
    sub_100006764(v78);
    goto LABEL_28;
  }

  sub_100006868(*(a1 + 56) + 32 * v38, &v79);
  sub_100006764(v78);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v68 = 0;
    v40 = 0xE000000000000000;
    goto LABEL_29;
  }

  v40 = v77;
  v68 = v76;
LABEL_29:
  v79 = 1769173874;
  v80 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v41 = sub_1000100C8(v78), (v42 & 1) != 0))
  {
    sub_100006868(*(a1 + 56) + 32 * v41, &v79);
    sub_100006764(v78);
    if (swift_dynamicCast())
    {
      v67 = v76;
      goto LABEL_35;
    }
  }

  else
  {
    sub_100006764(v78);
  }

  v67 = 0;
LABEL_35:
  v73 = a2;
  (*(v11 + 104))(v16, enum case for AISDeviceClass.appletv(_:), v10);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v70 = v10;
  v43 = type metadata accessor for Logger();
  sub_100005F58(v43, static AISLogger.uiService);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v66 = v11;
    v78[0] = v47;
    *v46 = 136316162;
    *(v46 + 4) = sub_10000FA60(v74, v75, v78);
    *(v46 + 12) = 256;
    v48 = v71;
    *(v46 + 14) = v71;
    *(v46 + 15) = 256;
    *(v46 + 17) = v36;
    *(v46 + 18) = 2080;
    v49 = sub_10000FA60(v68, v40, v78);

    *(v46 + 20) = v49;
    *(v46 + 28) = 2048;
    *(v46 + 30) = v67;
    _os_log_impl(&_mh_execute_header, v44, v45, "Discovered BLE peer device with info deviceId: %s nearbyActionType: %hhu osVersion: %hhu sessionId: %s rssi: %ld", v46, 0x26u);
    swift_arrayDestroy();
    v11 = v66;

    v50 = v73;
  }

  else
  {

    v50 = v73;
    v48 = v71;
  }

  if (v48 == 43)
  {
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Repairing device requesting authenticate accounts with V2", v59, 2u);
    }

    v60 = v70;
    (*(v11 + 16))(v14, v16, v70);
    static BleAdvertisementFlags.none.getter();
    BLEDevice.NearbyActionPayload.init(type:flags:deviceClass:problemFlags:advertisementFlags:)();
    BLEDevice.init(identifier:proximityServicePSM:nearbyActionPayload:)();
    (*(v11 + 8))(v16, v60);
    v56 = type metadata accessor for PresentationRequest(0);
    goto LABEL_48;
  }

  if (v48 != 32)
  {

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    v63 = os_log_type_enabled(v61, v62);
    v64 = v70;
    if (v63)
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Cannot service unknown nearby action type", v65, 2u);
    }

    (*(v11 + 8))(v16, v64);
    v29 = type metadata accessor for PresentationRequest(0);
    v30 = *(*(v29 - 8) + 56);
    v31 = v50;
    return v30(v31, 1, 1, v29);
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();
  v53 = os_log_type_enabled(v51, v52);
  v54 = v70;
  if (v53)
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Setting up device requesting authenticate accounts with V1", v55, 2u);
  }

  (*(v11 + 16))(v14, v16, v54);
  static BleAdvertisementFlags.none.getter();
  BLEDevice.NearbyActionPayload.init(type:flags:deviceClass:problemFlags:advertisementFlags:)();
  BLEDevice.init(identifier:proximityServicePSM:nearbyActionPayload:)();
  (*(v11 + 8))(v16, v54);
  v56 = type metadata accessor for PresentationRequest(0);
LABEL_48:
  swift_storeEnumTagMultiPayload();
  return (*(*(v56 - 8) + 56))(v50, 0, 1, v56);
}

uint64_t sub_10000A458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v6 = sub_1000100C8(v27), (v7 & 1) == 0))
  {
    sub_100006764(v27);
    goto LABEL_11;
  }

  sub_100006868(*(a1 + 56) + 32 * v6, v28);
  sub_100006764(v27);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100005F58(v14, static AISLogger.uiService);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_16;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27[0] = v18;
    *v17 = 136315138;
    v19 = Dictionary.description.getter();
    v21 = sub_10000FA60(v19, v20, v27);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "AuthKit indicator not present in user info: %s", v17, 0xCu);
    sub_1000067B8(v18);

    goto LABEL_15;
  }

  if (v26 != 1)
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100005F58(v23, static AISLogger.uiService);
    v15 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v15, v24))
    {
      goto LABEL_16;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v15, v24, "AuthKit indicator is false, returning nil", v25, 2u);
LABEL_15:

LABEL_16:

    v22 = type metadata accessor for PresentationRequest(0);
    return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }

  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005F58(v8, static AISLogger.uiService);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "AuthKit indicator is true, returning proxy for authkit presentation request", v11, 2u);
  }

  *a3 = a2;
  v12 = type metadata accessor for PresentationRequest(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
}

uint64_t sub_10000A86C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for ViewServiceConfiguration();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v32 - v9;
  __chkstk_darwin(v8);
  v36 = &v32 - v11;
  v12 = type metadata accessor for XPCCodableObject();
  v33 = *(v12 - 8);
  v34 = v12;
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005F58(v15, static AISLogger.uiService);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "ProximityAppleIDSetup should be handling this BLE advertisement", v18, 2u);
  }

  v19 = [a1 xpcEventCompleteRepresentation];
  XPCCodableObject.init(copying:)();
  static ViewServiceConfiguration.proximityAppleIDSetupUIService.getter();
  v20 = v36;
  ViewServiceConfiguration.cbDeviceXpcRepresentation(_:)();
  v32 = v14;
  v21 = v4;
  v22 = *(v4 + 16);
  v22(v7, v20, v3);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v37 = v26;
    *v25 = 136315138;
    v22(v10, v7, v3);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    (*(v21 + 8))(v7, v3);
    v30 = sub_10000FA60(v27, v29, &v37);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Nearby action will launch another view service with configuration: %s", v25, 0xCu);
    sub_1000067B8(v26);
  }

  else
  {

    (*(v21 + 8))(v7, v3);
  }

  (*(v33 + 8))(v32, v34);
  (*(v21 + 32))(v35, v36, v3);
  type metadata accessor for PresentationRequest(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000AC80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BleAdvertisementFlags();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for BLEDevice.NearbyActionPayload();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  BLEDevice.nearbyActionPayload.getter();
  BLEDevice.NearbyActionPayload.advertisementFlags.getter();
  (*(v14 + 8))(v16, v13);
  static BleAdvertisementFlags.ageMigration.getter();
  sub_10000DA14(&qword_100022FE8, &type metadata accessor for BleAdvertisementFlags, &protocol conformance descriptor for BleAdvertisementFlags);
  LOBYTE(a1) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v17 = *(v7 + 8);
  v17(v10, v6);
  v17(v12, v6);
  if ((a1 & 1) == 0)
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100005F58(v23, static AISLogger.uiService);
    v19 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v19, v24, "Returning setupUsingBLE presentationRequest", v25, 2u);
    }

    goto LABEL_7;
  }

  if ([a2 hasLocalSecret])
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005F58(v18, static AISLogger.uiService);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Nearby action indicates this is an age migration request and device has passcode", v21, 2u);
    }

LABEL_7:

    v22 = type metadata accessor for BLEDevice();
    (*(*(v22 - 8) + 16))(a3, v32, v22);
    goto LABEL_18;
  }

  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100005F58(v26, static AISLogger.uiService);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Device does not have a local secret. Cannot handle age migration request.", v29, 2u);
  }

LABEL_18:
  type metadata accessor for PresentationRequest(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000B184()
{
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005F58(v1, static AISLogger.uiService);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Exiting after launchViewService", v4, 2u);
  }

  type metadata accessor for SetupController();
  v0[3] = SetupController.__allocating_init()();
  v8 = (&async function pointer to dispatch thunk of SetupController.launchViewService(with:) + async function pointer to dispatch thunk of SetupController.launchViewService(with:));
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_10000B300;
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_10000B300()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_10000B444;
  }

  else
  {
    v2 = sub_10000B414;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000B444()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10000B4C4()
{
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005F58(v0, static AISLogger.uiService);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Exiting early as override action", v3, 2u);
  }

  exit(0);
}

uint64_t sub_10000B5A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SetupContext.Builder();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  (*(v4 + 16))(v7, a1, v3);
  SetupContext.Builder.requireService(_:)();
  SetupContext.Builder.desireService(_:)();
  SetupContext.Builder.desireService(_:)();
  SetupContext.Builder._proximitySetupClient(for:)();
  return (*(v4 + 8))(a1, v3);
}

void sub_10000B758(uint64_t a1)
{
  v2 = type metadata accessor for SetupReport();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v31 - v8;
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = sub_1000061F4(&qword_100023078, &qword_100013258);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  sub_10000E63C(a1, &v31 - v13, &qword_100023078, &qword_100013258);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100005F58(v15, static AISLogger.uiService);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to setup apple ID with error: %@", v18, 0xCu);
      sub_100006CEC(v19, &qword_100022FE0, &qword_1000130D0);
    }

    exit(1);
  }

  (*(v3 + 32))(v11, v14, v2);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100005F58(v21, static AISLogger.uiService);
  v22 = *(v3 + 16);
  v22(v9, v11, v2);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136315138;
    v22(v6, v9, v2);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    (*(v3 + 8))(v9, v2);
    v30 = sub_10000FA60(v27, v29, &v32);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Successfully setup apple ID with report: %s", v25, 0xCu);
    sub_1000067B8(v26);

    exit(1);
  }

  (*(v3 + 8))(v9, v2);
  exit(1);
}

uint64_t sub_10000BBA0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RepairContext.Builder();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  RepairContext.Builder._proximityRepairClient(for:)();
  return (*(v4 + 8))(a1, v3);
}

void sub_10000BC9C(uint64_t a1)
{
  v2 = type metadata accessor for RepairReport();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v31 - v8;
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = sub_1000061F4(&unk_100023080, &qword_100013260);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  sub_10000E63C(a1, &v31 - v13, &unk_100023080, &qword_100013260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100005F58(v15, static AISLogger.uiService);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to repair apple ID with error: %@", v18, 0xCu);
      sub_100006CEC(v19, &qword_100022FE0, &qword_1000130D0);
    }

    exit(1);
  }

  (*(v3 + 32))(v11, v14, v2);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100005F58(v21, static AISLogger.uiService);
  v22 = *(v3 + 16);
  v22(v9, v11, v2);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136315138;
    v22(v6, v9, v2);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    (*(v3 + 8))(v9, v2);
    v30 = sub_10000FA60(v27, v29, &v32);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Successfully repaired apple ID with report: %s", v25, 0xCu);
    sub_1000067B8(v26);

    exit(1);
  }

  (*(v3 + 8))(v9, v2);
  exit(1);
}

void sub_10000C0E4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AISLogger.ageMigration.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Terminating view service by request", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  exit(0);
}

uint64_t sub_10000C2B8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v57 = a6;
  v58 = a7;
  v54 = a5;
  v55 = a3;
  v56 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v8 - 8);
  __chkstk_darwin(v8);
  v61 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000061F4(&qword_100023028, &qword_100013220);
  __chkstk_darwin(v11 - 8);
  v13 = &v52 - v12;
  v14 = type metadata accessor for ShieldError();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v52 - v19;
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100005F58(v21, static AISLogger.uiService);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v52 = v20;
    v53 = v8;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *(v24 + 4) = v26;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Child safety features completed with error: %@", v24, 0xCu);
    sub_100006CEC(v25, &qword_100022FE0, &qword_1000130D0);

    v20 = v52;
    v8 = v53;
  }

  if (!a1)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Child safety features succeeded (no error).";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v29, v30, v32, v31, 2u);
    }

LABEL_21:

    goto LABEL_22;
  }

  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000061F4(&qword_100023050, &qword_100013230);
  v28 = swift_dynamicCast();
  (*(v15 + 56))(v13, v28 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100006CEC(v13, &qword_100023028, &qword_100013220);
    goto LABEL_18;
  }

  v33 = v8;
  (*(v15 + 32))(v20, v13, v14);
  (*(v15 + 16))(v18, v20, v14);
  v34 = (*(v15 + 88))(v18, v14);
  v35 = *(v15 + 8);
  if (v34 != enum case for ShieldError.setupChildFeatures(_:))
  {
    v35(v20, v14);
    v35(v18, v14);
    v8 = v33;
LABEL_18:
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Child safety features failed with non-default error.";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v36 = v20;
  v35(v18, v14);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Child safety features succeeded with default error.", v39, 2u);
  }

  v35(v36, v14);
  v8 = v33;
LABEL_22:
  sub_1000066CC(0, &qword_100023030, OS_dispatch_queue_ptr);
  v40 = static OS_dispatch_queue.main.getter();
  v41 = swift_allocObject();
  v43 = v55;
  v42 = v56;
  v41[2] = v55;
  v41[3] = v42;
  v45 = v57;
  v44 = v58;
  v41[4] = v54;
  v41[5] = v45;
  v41[6] = v44;
  aBlock[4] = sub_10000E3CC;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007924;
  aBlock[3] = &unk_10001CDD8;
  v46 = _Block_copy(aBlock);
  v47 = v43;
  v48 = v42;

  v49 = v59;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000DA14(&qword_100023038, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000061F4(&qword_100023040, &qword_100013228);
  sub_10000E3DC();
  v50 = v61;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v46);

  (*(v63 + 8))(v50, v8);
  return (*(v60 + 8))(v49, v62);
}

void sub_10000CA80(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [objc_allocWithZone(FAURLConfiguration) init];
  [objc_opt_self() sharedInstance];
  sub_1000066CC(0, &qword_100023008, AKAccountManager_ptr);
  objc_allocWithZone(type metadata accessor for ConnectToFamilyViewController());

  v7 = a2;
  v8 = a1;
  v9 = ConnectToFamilyViewController.init(configuration:context:flowContext:faURLProvider:accountManager:completionHandler:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong pushViewController:v9 animated:1];
  }
}

void sub_10000CBBC(char a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v48.receiver = v3;
  v48.super_class = type metadata accessor for BaseBoardActionsViewController();
  objc_msgSendSuper2(&v48, "viewDidAppear:", a1 & 1);
  v6 = OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_viewSessionController;
  if (!*&v3[OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_viewSessionController])
  {
    v7 = [objc_allocWithZone(AKRemoteViewSessionController) initWithRootViewController:v3 sceneSession:0];
    v8 = *&v3[v6];
    *&v3[v6] = v7;
    v9 = v7;

    if (!v9)
    {
      __break(1u);
      return;
    }

    v45 = v6;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = ObjectType;
    v53 = sub_10000DB50;
    v54 = v11;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_10000D338;
    v52 = &unk_10001CD10;
    v12 = _Block_copy(&aBlock);

    [v9 setNewShieldViewController:v12];
    _Block_release(v12);

    v13 = *&v3[OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_actions];
    if ((v13 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_1000066CC(0, &qword_100022D00, BSAction_ptr);
      sub_10000D800();
      Set.Iterator.init(_cocoa:)();
      v13 = aBlock;
      v14 = v50;
      v15 = v51;
      v16 = v52;
      v17 = v53;
    }

    else
    {
      v18 = -1 << *(v13 + 32);
      v14 = v13 + 56;
      v15 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v17 = v20 & *(v13 + 56);

      v16 = 0;
    }

    v21 = (v15 + 64) >> 6;
    v44 = v3;
    while (1)
    {
      if (v13 < 0)
      {
        if (!__CocoaSet.Iterator.next()() || (sub_1000066CC(0, &qword_100022D00, BSAction_ptr), swift_dynamicCast(), v26 = v47, v24 = v16, v25 = v17, !v47))
        {
LABEL_32:
          sub_1000062A8(v13);
          return;
        }
      }

      else
      {
        v22 = v16;
        v23 = v17;
        v24 = v16;
        if (!v17)
        {
          while (1)
          {
            v24 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v24 >= v21)
            {
              goto LABEL_32;
            }

            v23 = *(v14 + 8 * v24);
            ++v22;
            if (v23)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_35:
          __break(1u);
        }

LABEL_17:
        v25 = (v23 - 1) & v23;
        v26 = *(*(v13 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
        if (!v26)
        {
          goto LABEL_32;
        }
      }

      v27 = *&v3[v45];
      if (!v27)
      {
        goto LABEL_35;
      }

      v46 = v25;
      v47 = 0;
      if ([v27 respondToAction:v26 error:&v47])
      {
        v28 = qword_100022B30;
        v29 = v47;
        if (v28 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_100005F58(v30, static AISLogger.uiService);
        v31 = v26;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = 138412290;
          *(v34 + 4) = v31;
          *v35 = v26;
          v36 = v31;
          _os_log_impl(&_mh_execute_header, v32, v33, "Responded to action %@", v34, 0xCu);
          sub_100006CEC(v35, &qword_100022FE0, &qword_1000130D0);

          v3 = v44;
        }

        else
        {
        }
      }

      else
      {
        v37 = v47;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100022B30 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_100005F58(v38, static AISLogger.uiService);
        swift_errorRetain();
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = 138412290;
          swift_errorRetain();
          v43 = _swift_stdlib_bridgeErrorToNSError();
          *(v41 + 4) = v43;
          *v42 = v43;
          _os_log_impl(&_mh_execute_header, v39, v40, "Failed to respond to action: %@", v41, 0xCu);
          sub_100006CEC(v42, &qword_100022FE0, &qword_1000130D0);
          v3 = v44;
        }

        else
        {
        }
      }

      v16 = v24;
      v17 = v46;
    }
  }
}

id sub_10000D1E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_10000DBB0(a1, (Strong + OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_accountStore), a2, a3);

    return v9;
  }

  else
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100005F58(v11, static AISLogger.uiService);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "PresentationRequest deallocated before completion", v14, 2u);
    }

    return [objc_allocWithZone(UIViewController) init];
  }
}

id sub_10000D338(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v7 = v4();

  return v7;
}

void sub_10000D3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = _convertErrorToNSError(_:)();
    if (a2)
    {
LABEL_3:
      sub_1000061F4(&qword_100022FF0, &qword_100013200);
      v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6.super.isa = 0;
LABEL_6:
  isa = v6.super.isa;
  (*(a3 + 16))(a3, v5);
}

id sub_10000D5B8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BaseBoardActionsViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for PresentationRequest(uint64_t a1)
{
  result = qword_100022F90;
  if (!qword_100022F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D700(uint64_t a1)
{
  type metadata accessor for BLEDevice();
  if (v1 <= 0x3F)
  {
    sub_10000D78C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ViewServiceConfiguration();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10000D78C(uint64_t a1)
{
  if (!qword_100022FA0)
  {
    sub_1000066CC(255, &qword_100022D00, BSAction_ptr);
    sub_10000D800();
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_100022FA0);
    }
  }
}

unint64_t sub_10000D800()
{
  result = qword_100022FB0;
  if (!qword_100022FB0)
  {
    sub_1000066CC(255, &qword_100022D00, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022FB0);
  }

  return result;
}

id sub_10000D868(uint64_t a1)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = 0;
  v3 = [v1 initWithDictionary:isa error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_10000D950(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void *sub_10000D9B0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void *sub_10000D9D0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000DA14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000DAB0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10000DAE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DB18()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DB58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DB70()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10000DBB0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000061F4(&unk_100022FF8, &unk_100013208);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for AppleIDSetupFeature();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(type metadata accessor for AISAppleIDSignInConfiguration()) init];
  (*(v12 + 104))(v14, enum case for AppleIDSetupFeature.ageBasedAccountSupport(_:), v11);
  v16 = AppleIDSetupFeature.isFeatureEnabled.getter();
  (*(v12 + 8))(v14, v11);
  if (v16)
  {
    v17 = [a1 protoAccount];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 proto_ageRange];
    }

    else
    {
      v19 = 0;
    }

    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005F58(v20, static AISLogger.uiService);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v21, v22, "Configuring Apple Account sign in for user age range: %lu", v23, 0xCu);
    }

    AISAppleIDSignInConfiguration.userAgeRange.setter();
    AISAppleIDSignInConfiguration.signInFlowType.setter();
  }

  sub_10000D9D0(a2, a2[3]);
  v24 = dispatch thunk of ACAccountStoreProtocol.aa_primaryAppleAccount()();
  if (v24)
  {
    v25 = v24;
    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 accountPropertyForKey:v26];

    if (v27)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    v58 = v55;
    v59 = v56;
    if (*(&v56 + 1))
    {
      v28 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v28 = 0;
LABEL_18:
  sub_100006CEC(&v58, &qword_100022C70, &unk_1000130B0);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100005F58(v29, static AISLogger.uiService);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v30, v31, "alreadyEnteredPendingMigrationState: %{BOOL}d", v32, 8u);
  }

  v33 = [a1 accountMigrationContext];
  if (!v33)
  {
    goto LABEL_25;
  }

  v34 = v33;
  if (v28)
  {

LABEL_25:
    v35 = objc_allocWithZone(FAURLConfiguration);
    v36 = v15;
    [v35 init];
    v37 = [objc_opt_self() sharedInstance];
    *(&v59 + 1) = sub_1000066CC(0, &qword_100023008, AKAccountManager_ptr);
    v60 = &protocol witness table for AKAccountManager;
    *&v58 = v37;
    objc_allocWithZone(type metadata accessor for ConnectToFamilyViewController());
    v38 = a1;

    v39 = ConnectToFamilyViewController.init(configuration:context:flowContext:faURLProvider:accountManager:completionHandler:)();
    v40 = dispatch thunk of ConnectToFamilyViewController.embeddedInNavigationController()();
LABEL_28:

    return v40;
  }

  v40 = [objc_allocWithZone(UINavigationController) init];
  [v40 setModalInPresentation:1];
  v41 = [v34 pendingDOB];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = type metadata accessor for Date();
  (*(*(v42 - 8) + 56))(v10, 0, 1, v42);
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  v44[2] = v15;
  v44[3] = a1;
  v44[4] = a3;
  v44[5] = a4;
  v44[6] = v43;
  v45 = objc_opt_self();
  v46 = v15;
  v47 = a1;

  v48 = [v45 sharedInstance];
  *(&v59 + 1) = sub_1000066CC(0, &qword_100023008, AKAccountManager_ptr);
  v60 = &protocol witness table for AKAccountManager;
  *&v58 = v48;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v50 = result;
    *(&v56 + 1) = sub_1000066CC(0, &qword_100023010, ACAccountStore_ptr);
    v57 = &protocol witness table for ACAccountStore;
    *&v55 = v50;
    v51 = objc_allocWithZone(type metadata accessor for ChildSafetyFeaturesViewController());
    v52 = ChildSafetyFeaturesViewController.init(pendingDOB:accountManager:accountStore:completionHandler:)();

    sub_1000061F4(&qword_100023018, &qword_100013218);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100013180;
    *(v53 + 32) = v52;
    sub_1000066CC(0, &qword_100023020, UIViewController_ptr);
    v39 = v52;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v40 setViewControllers:isa animated:0];

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E37C()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10000E3DC()
{
  result = qword_100023048;
  if (!qword_100023048)
  {
    sub_10000E440(&qword_100023040, &qword_100013228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023048);
  }

  return result;
}

uint64_t sub_10000E440(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000E488(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E508()
{
  v1 = type metadata accessor for BLEDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000E5A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for BLEDevice() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10000E63C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000061F4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E6B8()
{
  v0 = type metadata accessor for Logger();
  sub_100006180(v0, qword_100023090);
  v1 = sub_100005F58(v0, qword_100023090);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v2 = sub_100005F58(v0, static AISLogger.uiService);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10000E954()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000E9BC(void *a1)
{
  v2 = sub_1000061F4(&qword_1000230D8, "x)");
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  if (qword_100022B38 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005F58(v9, qword_100023090);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "DefaultSceneDelegate: sceneWillConnectTo", v12, 2u);
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = a1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v18 = 136315138;
      v19 = v15;
      v20 = [v14 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v6;
      v34 = v8;
      v22 = v21;
      v23 = v3;
      v25 = v24;

      v15 = v19;
      v26 = sub_10000FA60(v22, v25, &v36);
      v3 = v23;
      v8 = v34;

      *(v18 + 4) = v26;
      v6 = v33;
      _os_log_impl(&_mh_execute_header, v16, v17, "DefaultSceneDelegate: Received windowScene: %s. Hosting debugging UI for AirDropUI Launch Angel.", v18, 0xCu);
      sub_1000067B8(v32);
    }

    v27 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v14];
    ProgressView<>.init<>()();
    v28 = objc_allocWithZone(sub_1000061F4(&unk_1000230E0, qword_1000132C0));
    (*(v3 + 16))(v6, v8, v2);
    v29 = UIHostingController.init(rootView:)();
    (*(v3 + 8))(v8, v2);
    [v27 setRootViewController:v29];
    [v27 makeKeyAndVisible];

    v30 = *(v35 + OBJC_IVAR____TtC21AppleIDSetupUIService20DefaultSceneDelegate_window);
    *(v35 + OBJC_IVAR____TtC21AppleIDSetupUIService20DefaultSceneDelegate_window) = v27;
  }
}

void sub_10000ED60(const char *a1)
{
  if (qword_100022B38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005F58(v2, qword_100023090);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

id sub_10000EE98(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_10000EFC4(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10000F4CC(a1);
  (*(*(*(v2 + qword_100023470) - 8) + 8))(a1);
  return v5;
}

void *sub_10000F0A0(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100023470);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = UIHostingController.init(coder:rootView:)();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_10000F1D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SecureHostingController(0, *((swift_isaMask & *v4) + qword_100023470), *((swift_isaMask & *v4) + qword_100023470 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_10000F2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SecureHostingController(0, *((swift_isaMask & *v4) + qword_100023470), *((swift_isaMask & *v4) + qword_100023470 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

id sub_10000F474(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SecureWindow();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000F4CC(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - v1);
  return UIHostingController.init(rootView:)();
}

id sub_10000F81C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertSceneDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RemoteAlertSceneDelegate(uint64_t a1)
{
  result = qword_100023320;
  if (!qword_100023320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F8F4(uint64_t a1)
{
  result = type metadata accessor for PresentationRequest(319);
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

uint64_t sub_10000F990(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10000FA04(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10000FA60(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10000FA60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000FB2C(v11, 0, 0, 1, a1, a2);
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
    sub_100006868(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000067B8(v11);
  return v7;
}

unint64_t sub_10000FB2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000FC38(a5, a6);
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

char *sub_10000FC38(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000FC84(a1, a2);
  sub_10000FDB4(&off_10001CA90);
  return v3;
}

char *sub_10000FC84(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000FEA0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000FEA0(v10, 0);
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

uint64_t sub_10000FDB4(uint64_t result)
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

  result = sub_10000FF14(result, v11, 1, v3);
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

void *sub_10000FEA0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000061F4(&qword_100023348, qword_1000133D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000FF14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000061F4(&qword_100023348, qword_1000133D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

_BYTE **sub_100010008(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100010018(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10001008C(uint64_t (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

unint64_t sub_1000100C8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001010C(a1, v4);
}

unint64_t sub_10001010C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100011670(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100006764(v8);
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

void sub_1000101D4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000061F4(&unk_100023338, &qword_1000133D0);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100011624();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100011624();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1000104A0(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_1000061F4(&unk_100022CF0, &qword_1000130C8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v104 - v10;
  __chkstk_darwin(v9);
  v13 = &v104 - v12;
  v14 = type metadata accessor for PresentationRequest(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v111 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v104 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v104 - v22;
  __chkstk_darwin(v21);
  v112 = &v104 - v24;
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v114 = a1;
    v27 = [v26 configurationContext];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 userInfo];
      if (v29)
      {
        v108 = v28;
        v30 = v29;
        v110 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
        {
          sub_1000101D4(&_swiftEmptyArrayStorage);
          v107 = v103;
        }

        else
        {
          v107 = &_swiftEmptySetSingleton;
        }

        v109 = [objc_opt_self() sharedInstance];
        if (!v109)
        {
          __break(1u);
          return;
        }

        v31 = type metadata accessor for FeatureManager();
        v32 = static FeatureManager.shared.getter();
        v120[3] = v31;
        v120[4] = &protocol witness table for FeatureManager;
        v120[0] = v32;
        v116 = 0x656369766564;
        v117 = 0xE600000000000000;
        AnyHashable.init<A>(_:)();
        v33 = v110;
        v34 = *(v110 + 16);
        v106 = v3;
        v105 = v26;
        if (v34 && (v35 = sub_1000100C8(v118), (v36 & 1) != 0))
        {
          sub_100006868(*(v33 + 56) + 32 * v35, v119);
          sub_100006764(v118);
          sub_1000061F4(&qword_100022D10, &qword_1000130D8);
          if (swift_dynamicCast())
          {

            v37 = v109;
            sub_100008B08(v116, v109, v120, v13);

LABEL_34:
            sub_1000067B8(v120);
            if ((*(v15 + 48))(v13, 1, v14) == 1)
            {
              sub_100006CEC(v13, &unk_100022CF0, &qword_1000130C8);
              if (qword_100022B30 != -1)
              {
                swift_once();
              }

              v64 = type metadata accessor for Logger();
              sub_100005F58(v64, static AISLogger.uiService);

              v65 = Logger.logObject.getter();
              v66 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v65, v66))
              {
                v67 = swift_slowAlloc();
                v120[0] = swift_slowAlloc();
                *v67 = 136315394;
                v68 = _typeName(_:qualified:)();
                v70 = sub_10000FA60(v68, v69, v120);

                *(v67 + 4) = v70;
                *(v67 + 12) = 2080;
                v71 = Dictionary.description.getter();
                v73 = v72;

                v74 = sub_10000FA60(v71, v73, v120);

                *(v67 + 14) = v74;
                _os_log_impl(&_mh_execute_header, v65, v66, "%s Unable to build presentation request with user info: %s", v67, 0x16u);
                swift_arrayDestroy();
              }

              else
              {
              }
            }

            else
            {

              sub_100006628(v13, v112);
              if (qword_100022B30 != -1)
              {
                swift_once();
              }

              v75 = type metadata accessor for Logger();
              sub_100005F58(v75, static AISLogger.uiService);
              v76 = v114;
              v77 = v108;
              v78 = v108;
              v79 = Logger.logObject.getter();
              v80 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                v83 = swift_slowAlloc();
                v120[0] = v83;
                *v81 = 136315650;
                v84 = _typeName(_:qualified:)();
                v86 = sub_10000FA60(v84, v85, v120);

                *(v81 + 4) = v86;
                *(v81 + 12) = 2112;
                v87 = v105;
                *(v81 + 14) = v105;
                *(v81 + 22) = 2112;
                *(v81 + 24) = v78;
                *v82 = v87;
                v82[1] = v77;
                v88 = v76;
                v89 = v78;
                _os_log_impl(&_mh_execute_header, v79, v80, "%s Configuring remote alert scene: %@ with context: %@", v81, 0x20u);
                sub_1000061F4(&qword_100022FE0, &qword_1000130D0);
                swift_arrayDestroy();

                sub_1000067B8(v83);
              }

              else
              {

                v87 = v105;
              }

              v90 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v87];
              v91 = type metadata accessor for RemoteAlertRootViewController();
              v92 = objc_allocWithZone(v91);
              swift_unknownObjectWeakInit();
              v93 = &v92[OBJC_IVAR____TtC21AppleIDSetupUIService29RemoteAlertRootViewController_dismissHandler];
              *v93 = 0;
              v93[1] = 0;
              swift_unknownObjectWeakAssign();
              v94 = *v93;
              v95 = v93[1];
              *v93 = 0;
              v93[1] = 0;
              v96 = v76;
              sub_10000651C(v94, v95);
              v115.receiver = v92;
              v115.super_class = v91;
              v97 = objc_msgSendSuper2(&v115, "initWithNibName:bundle:", 0, 0);

              v98 = v90;
              [v98 setRootViewController:v97];
              [v98 makeKeyAndVisible];

              v99 = v106;
              v100 = *(v106 + OBJC_IVAR____TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate_window);
              *(v106 + OBJC_IVAR____TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate_window) = v98;

              v101 = v111;
              sub_100006628(v112, v111);
              v102 = OBJC_IVAR____TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate_presentationRequest;
              swift_beginAccess();
              sub_100006804(v101, v99 + v102);
              swift_endAccess();
            }

            return;
          }
        }

        else
        {
          sub_100006764(v118);
        }

        v46 = v110;
        sub_10000994C(v110, v11);
        v47 = *(v15 + 48);
        if (v47(v11, 1, v14) == 1)
        {
          sub_100006CEC(v11, &unk_100022CF0, &qword_1000130C8);
          sub_10000A458(v46, v107, v8);

          if (v47(v8, 1, v14) == 1)
          {
            sub_100006CEC(v8, &unk_100022CF0, &qword_1000130C8);
            (*(v15 + 56))(v13, 1, 1, v14);
          }

          else
          {
            sub_100006628(v8, v20);
            sub_100006628(v20, v13);
            (*(v15 + 56))(v13, 0, 1, v14);
          }
        }

        else
        {

          sub_100006628(v11, v23);
          if (qword_100022B30 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          sub_100005F58(v60, static AISLogger.uiService);
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 0;
            _os_log_impl(&_mh_execute_header, v61, v62, "Attempting to create a new presentation request launched for sharing", v63, 2u);
          }

          sub_100006628(v23, v13);
          (*(v15 + 56))(v13, 0, 1, v14);
        }

        goto LABEL_34;
      }
    }

    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100005F58(v48, static AISLogger.uiService);
    v49 = v114;
    v114 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v114, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v120[0] = v53;
      *v51 = 136315394;
      v54 = _typeName(_:qualified:)();
      v56 = v26;
      v57 = sub_10000FA60(v54, v55, v120);

      *(v51 + 4) = v57;
      *(v51 + 12) = 2112;
      *(v51 + 14) = v56;
      *v52 = v56;
      v58 = v49;
      _os_log_impl(&_mh_execute_header, v114, v50, "%s Could not find configuration context on remote alert scene: %@", v51, 0x16u);
      sub_100006CEC(v52, &qword_100022FE0, &qword_1000130D0);

      sub_1000067B8(v53);

      return;
    }
  }

  else
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100005F58(v38, static AISLogger.uiService);
    v39 = a1;
    v114 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v114, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v120[0] = v42;
      *v41 = 136315138;
      swift_getObjectType();
      v43 = _typeName(_:qualified:)();
      v45 = sub_10000FA60(v43, v44, v120);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v114, v40, "Cannot configure scene, expected a remote alert scene but got a scene of type: %s", v41, 0xCu);
      sub_1000067B8(v42);

      return;
    }
  }

  v59 = v114;
}

void sub_10001128C()
{
  v1 = v0;
  v2 = type metadata accessor for PresentationRequest(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v22 - v7;
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005F58(v11, static AISLogger.uiService);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "RemoteAlertSceneDelegate: sceneDidBecomeActive", v14, 2u);
  }

  v15 = *(v1 + OBJC_IVAR____TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate_window);
  if (v15)
  {
    v16 = [v15 rootViewController];
    if (v16)
    {
      v24 = v16;
      type metadata accessor for RemoteAlertRootViewController();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = [v17 presentedViewController];
        if (!v18)
        {
          v20 = OBJC_IVAR____TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate_presentationRequest;
          swift_beginAccess();
          sub_1000065C4(v1 + v20, v10);
          sub_100006628(v10, v8);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          sub_10000624C(v8);
          if (EnumCaseMultiPayload == 5)
          {
          }

          else
          {
            sub_1000065C4(v1 + v20, v5);
            sub_100007074(v5);

            sub_10000624C(v5);
          }

          return;
        }

        v23 = v18;

        v19 = v23;
      }

      else
      {
        v19 = v24;
      }
    }
  }
}

void sub_100011534(const char *a1)
{
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005F58(v2, static AISLogger.uiService);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

unint64_t sub_100011624()
{
  result = qword_100022D00;
  if (!qword_100022D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100022D00);
  }

  return result;
}
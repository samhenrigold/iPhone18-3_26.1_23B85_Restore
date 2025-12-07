uint64_t sub_10004DB74@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v6 = sub_1000077C8(&qword_1001740F0, &qword_10011ACF8);
  sub_10004C290(v3, v4, v5, (a1 + *(v6 + 44)));
  if (v5)
  {
    v7 = 0x402E000000000000;
  }

  else
  {
    v7 = 0x4030000000000000;
  }

  if (v5)
  {
    v8 = 0x4036000000000000;
  }

  else
  {
    v8 = 0x4030000000000000;
  }

  if (v5)
  {
    v9 = 0x4031000000000000;
  }

  else
  {
    v9 = 0x4030000000000000;
  }

  v10 = static Edge.Set.all.getter();
  result = sub_1000077C8(&qword_1001740F8, &qword_10011AD00);
  v12 = a1 + *(result + 36);
  *v12 = v10;
  *(v12 + 8) = v7;
  *(v12 + 16) = v8;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9;
  *(v12 + 40) = 0;
  return result;
}

void sub_10004DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    sub_10004DC90(a4, a5);
  }
}

uint64_t sub_10004DC90(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

void sub_10004DCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _TtC9AirDropUI33AirDropTransferSessionsController *a5)
{
  if (a2)
  {

    sub_10004DCF4(a4, a5, v7, v8, v9, v10, v11, v12);
  }
}

void sub_10004DCF4(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (&a2[-1].transfersBeingEnded[7] >= 2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

unint64_t sub_10004DD0C()
{
  result = qword_100173460;
  if (!qword_100173460)
  {
    type metadata accessor for AirDropTransferSession(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173460);
  }

  return result;
}

unint64_t sub_10004DD64()
{
  result = qword_100174120;
  if (!qword_100174120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100174120);
  }

  return result;
}

uint64_t sub_10004DDC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirDropDescriptionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100174138, &unk_10011AE80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004DEA0()
{
  result = qword_100174148;
  if (!qword_100174148)
  {
    sub_100007CCC(&qword_1001740F8, &qword_10011AD00);
    sub_10004DF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174148);
  }

  return result;
}

unint64_t sub_10004DF2C()
{
  result = qword_100174150;
  if (!qword_100174150)
  {
    sub_100007CCC(&qword_100174158, qword_10011AE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174150);
  }

  return result;
}

double sub_10004DFB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t sub_10004E06C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

__n128 sub_10004E0D8@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double sub_10004E1A8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

void (*sub_10004E218())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v1 = (v0 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel____lazy_storage___optionsChangedCallback);
  v2 = *(v0 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel____lazy_storage___optionsChangedCallback);
  v3 = *(v0 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel____lazy_storage___optionsChangedCallback + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel____lazy_storage___optionsChangedCallback);
  }

  else
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *v1;
    v7 = v1[1];
    v4 = sub_100058DD8;
    *v1 = sub_100058DD8;
    v1[1] = v5;

    sub_10002534C(v6, v7);
  }

  sub_1000253F8(v2, v3);
  return v4;
}

void sub_10004E2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = a6;
    v10 = a6;
    v11 = v9;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v12)
    {
      [v12 setShareOptions:v10];
      swift_unknownObjectRelease();
    }
  }
}

void sub_10004E3E8()
{
  v1 = v0;
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  type metadata accessor for ShockwaveAnimationCoordinator();
  sub_100055568(&qword_1001744A0, &type metadata accessor for ShockwaveAnimationCoordinator, &protocol conformance descriptor for ShockwaveAnimationCoordinator);
  v11[1] = ObservableObject<>.objectWillChange.getter();
  type metadata accessor for NearbySharingInteractionViewModel(0);
  sub_100055568(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel, &unk_10011AF84);
  v5 = ObservableObject<>.objectWillChange.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = j___s7Combine25ObservableObjectPublisherC4sendyyF;
  *(v6 + 24) = v5;
  type metadata accessor for ObservableObjectPublisher();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v1;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_1000E1D28(0, 0, v4, &unk_10011B218, v10);

  sub_100050750();
}

id sub_10004E67C()
{
  if (*&v0[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contactDetailsResolvingTask])
  {

    Task.cancel()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbySharingInteractionViewModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10004EB14(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v120 = *(v4 - 8);
  v121 = v4;
  __chkstk_darwin(v4);
  v119 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v106 - v7;
  v9 = type metadata accessor for UUID();
  v116 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SFNearbySharingInteraction();
  v122 = *(v12 - 8);
  __chkstk_darwin(v12);
  v113 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v114 = &v106 - v15;
  __chkstk_darwin(v16);
  v18 = &v106 - v17;
  __chkstk_darwin(v19);
  v21 = &v106 - v20;
  __chkstk_darwin(v22);
  v24 = &v106 - v23;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v110 = v18;
  v118 = v8;
  v25 = type metadata accessor for Logger();
  v26 = sub_100007D20(v25, qword_10017F350);
  v28 = v122 + 16;
  v27 = *(v122 + 16);
  v27(v24, a1, v12);
  v117 = v27;
  v27(v21, a1, v12);
  v109 = v26;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v115 = v2;
  v112 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v111 = a1;
    v33 = v32;
    v108 = swift_slowAlloc();
    v123 = v108;
    *v33 = 136315394;
    v107 = v30;
    SFNearbySharingInteraction.id.getter();
    sub_100055568(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v116[1](v11, v9);
    v37 = *(v122 + 8);
    (v37)(v24, v12);
    v38 = sub_10003E81C(v34, v36, &v123);
    v36, v39, v40, v41, v42, v43, v44, v45;
    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    v106 = v29;
    v46 = v12;
    v47 = v118;
    SFNearbySharingInteraction.state.getter();
    sub_100055568(&unk_1001764E0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.State);
    v48 = v121;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    v52 = v120;
    (*(v120 + 8))(v47, v48);
    v53 = v21;
    v54 = v46;
    v116 = v37;
    (v37)(v53, v46);
    v55 = sub_10003E81C(v49, v51, &v123);
    v56 = v51;
    v2 = v115;
    v56, v57, v58, v59, v60, v61, v62, v63;
    *(v33 + 14) = v55;
    v64 = v106;
    _os_log_impl(&_mh_execute_header, v106, v107, "Updating nearby sharing interaction ID: %s with state: %s", v33, 0x16u);
    swift_arrayDestroy();

    a1 = v111;
  }

  else
  {

    v65 = *(v122 + 8);
    (v65)(v21, v12);
    v54 = v12;
    v116 = v65;
    (v65)(v24, v12);
    v52 = v120;
    v48 = v121;
    v47 = v118;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v66 = v119;
  SFNearbySharingInteraction.state.getter();
  v67 = static SFAirDrop.NearbySharingInteraction.State.< infix(_:_:)();
  v68 = *(v52 + 8);
  v68(v66, v48);
  v68(v47, v48);
  v69 = v54;
  if (v67)
  {
    v108 = v68;
    v70 = v110;
    v117(v110, a1, v54);
    v71 = v2;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v111 = a1;
      v75 = v74;
      v109 = swift_slowAlloc();
      v123 = v109;
      *v75 = 136315394;
      v76 = v118;
      v107 = v73;
      SFNearbySharingInteraction.state.getter();
      sub_100055568(&unk_1001764E0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.State);
      v106 = v72;
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      v80 = v108;
      v108(v76, v121);
      (v116)(v70, v69);
      v81 = sub_10003E81C(v77, v79, &v123);
      v79, v82, v83, v84, v85, v86, v87, v88;
      *(v75 + 4) = v81;
      *(v75 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v48 = v121;

      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v90;
      v80(v76, v48);
      v92 = sub_10003E81C(v89, v91, &v123);
      v93 = v91;
      v94 = v80;
      v93, v95, v96, v97, v98, v99, v100, v101;
      *(v75 + 14) = v92;
      v102 = v106;
      _os_log_impl(&_mh_execute_header, v106, v107, "Nearby sharing interaction new state < previousState: %s < %s", v75, 0x16u);
      swift_arrayDestroy();

      a1 = v111;
    }

    else
    {

      (v116)(v70, v69);
      v76 = v118;
      v94 = v108;
    }

    SFNearbySharingInteraction.state.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v120 + 16))(v119, v76, v48);
    v103 = v71;
    static Published.subscript.setter();
    v94(v76, v48);
    v2 = v115;
  }

  v104 = v114;
  v105 = v117;
  v117(v114, a1, v69);
  swift_getKeyPath();
  swift_getKeyPath();
  v105(v113, v104, v69);
  v2;
  static Published.subscript.setter();
  (v116)(v104, v69);
  dispatch thunk of ShockwaveAnimationCoordinator.update(using:)();
  sub_100050750();
}

uint64_t sub_10004F4F8()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v34 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = enum case for SFAirDrop.NearbySharingInteraction.State.ended(_:);
  v40 = *(v3 + 104);
  v40(v5, enum case for SFAirDrop.NearbySharingInteraction.State.ended(_:), v2);
  sub_100055568(&unk_100174490, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.State);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  result = (v11)(v8, v2);
  if ((v10 & 1) == 0)
  {
    v39 = v11;
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100007D20(v13, qword_10017F350);
    v14 = v1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v37 = v16;
    v17 = v16;
    v18 = v15;
    if (os_log_type_enabled(v15, v17))
    {
      v19 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v19 = 136315138;
      v38 = v14;
      type metadata accessor for UUID();
      v36 = v9;
      sub_100055568(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      v23 = sub_10003E81C(v20, v21, &v41);
      v24 = v22;
      v14 = v38;
      v24, v25, v26, v27, v28, v29, v30, v31;
      v34[1] = v19;
      *(v19 + 4) = v23;
      v9 = v36;
      _os_log_impl(&_mh_execute_header, v18, v37, "Ending interaction with ID: %s", v19, 0xCu);
      sub_100007920(v35);
    }

    v32 = v39;
    dispatch thunk of ShockwaveAnimationCoordinator.stopIfNecessary()();
    v40(v8, v9, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v3 + 16))(v5, v8, v2);
    v33 = v14;
    static Published.subscript.setter();
    return v32(v8, v2);
  }

  return result;
}

uint64_t sub_10004F900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[47] = a4;
  sub_1000077C8(&qword_100172EE0, &qword_10011B220);
  v4[48] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[49] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[50] = v6;
  v4[51] = v5;

  return _swift_task_switch(sub_10004F9D0, v6, v5);
}

uint64_t sub_10004F9D0()
{
  v1 = swift_task_alloc();
  *(v0 + 416) = v1;
  *v1 = v0;
  v1[1] = sub_10004FA78;

  return sub_100091F48(v0 + 16, 2);
}

uint64_t sub_10004FA78()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);
  if (v0)
  {
    v5 = sub_1000504E8;
  }

  else
  {
    v5 = sub_10004FBB4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10004FBB4()
{
  v38 = v0;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 376);
  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_10017F350);
  sub_100007BA4(v0 + 16, v0 + 64, &qword_1001742D8, &unk_10011AED8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v6 = 136315394;
    sub_100007BA4(v0 + 64, v0 + 304, &qword_1001742D8, &unk_10011AED8);
    sub_1000077C8(&qword_1001742D8, &unk_10011AED8);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_1000159AC(v0 + 64, &qword_1001742D8, &unk_10011AED8);
    v10 = sub_10003E81C(v7, v9, &v37);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100055568(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = sub_10003E81C(v18, v19, &v37);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v6 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "Suggesting content to be be shared with the nearby interaction: %s for interaction ID: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000159AC(v0 + 64, &qword_1001742D8, &unk_10011AED8);
  }

  v29 = *(v0 + 376);
  sub_100007BA4(v0 + 16, v0 + 112, &qword_1001742D8, &unk_10011AED8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(v0 + 112, v0 + 160, &qword_1001742D8, &unk_10011AED8);
  v30 = v29;
  static Published.subscript.setter();
  sub_1000159AC(v0 + 112, &qword_1001742D8, &unk_10011AED8);
  sub_100007BA4(v0 + 16, v0 + 256, &qword_1001742D8, &unk_10011AED8);
  if (*(v0 + 280))
  {
    v31 = *(v0 + 288);
    *(v0 + 224) = *(v0 + 272);
    *(v0 + 240) = v31;
    *(v0 + 208) = *(v0 + 256);
    v33 = *(v0 + 232);
    v32 = *(v0 + 240);
    sub_100058CFC(v0 + 208, v33);
    v34 = swift_task_alloc();
    *(v0 + 432) = v34;
    *v34 = v0;
    v34[1] = sub_10004FFF0;

    return sub_1000886F8(v33, v32);
  }

  else
  {
    sub_1000159AC(v0 + 16, &qword_1001742D8, &unk_10011AED8);

    sub_1000159AC(v0 + 256, &qword_1001742D8, &unk_10011AED8);

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_10004FFF0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 440) = a1;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);

  return _swift_task_switch(sub_100050118, v4, v3);
}

uint64_t sub_100050118()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 384);
  v3 = *(v0 + 376);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 352) = v1;
  v4 = v3;
  static Published.subscript.setter();
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  sub_1000078DC((v0 + 208), v5);
  v7 = (*(v6 + 64))(v5, v6);
  v8 = sub_100050554(v7);
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v2, 1, 1, v16);
  v18.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v8, v19, v20, v21, v22, v23, v24, v25;
  v26 = (*(v17 + 48))(v2, 1, v16);
  v28 = 0;
  if (v26 != 1)
  {
    v29 = *(v0 + 384);
    URL._bridgeToObjectiveC()(v27);
    v28 = v30;
    (*(v17 + 8))(v29, v16);
  }

  v31 = *(v0 + 376);
  v32 = [objc_allocWithZone(SFCollaborationItemsProvider) initWithActivityItems:v18.super.isa delegate:v31 managedFileURL:v28 isURLProviderSupported:0];

  v33 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationsItemProvider;
  v34 = *(v31 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationsItemProvider);
  *(v31 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationsItemProvider) = v32;

  v35 = [objc_allocWithZone(type metadata accessor for PlaceholderSFCollaborationService()) init];
  v36 = *(v31 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationService);
  *(v31 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationService) = v35;

  v37 = *(v31 + v33);
  if (!v37)
  {
    goto LABEL_13;
  }

  v38 = [v37 collaborationItems];
  if (!v38)
  {
    goto LABEL_14;
  }

  sub_1000077C8(&qword_1001744A8, &qword_10011B2B8);
  v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v39 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_12:
    v39, v40, v41, v42, v43, v44, v45, v46;
LABEL_13:
    v38 = 0;
    goto LABEL_14;
  }

LABEL_7:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v38 = *(v39 + 32);
    swift_unknownObjectRetain();
  }

  v39, v48, v49, v50, v51, v52, v53, v54;
LABEL_14:
  v55 = *(v0 + 376);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 360) = v38;
  v56 = v55;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 368))
  {
    [*(v0 + 368) registerChangeObserver:*(v0 + 376)];
    swift_unknownObjectRelease();
  }

  sub_1000159AC(v0 + 16, &qword_1001742D8, &unk_10011AED8);
  sub_100056D60(v0 + 208);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1000504E8()
{

  v1 = *(v0 + 8);

  return v1();
}

_TtC9AirDropUI33AirDropTransferSessionsController *sub_100050554(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_10000E4D4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1000165C4(0, &unk_1001744B0, NSItemProvider_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = *v3->connection;
        v6 = *v3->airdropClient;
        if (v7 >= v6 >> 1)
        {
          sub_10000E4D4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *v3->connection = v7 + 1;
        sub_100058DC8(v12, &v3->airDropClient[32 * v7]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1000165C4(0, &unk_1001744B0, NSItemProvider_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *v3->connection;
        v10 = *v3->airdropClient;
        if (v11 >= v10 >> 1)
        {
          sub_10000E4D4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *v3->connection = v11 + 1;
        sub_100058DC8(v12, &v3->airDropClient[32 * v11]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_100050750()
{
  v1 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v1 - 8);
  v135 = &v124 - v2;
  v128 = sub_1000077C8(&unk_100174470, &unk_10011B1E0);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v129 = (&v124 - v3);
  v133 = sub_1000077C8(&qword_100175190, &qword_10011CCF0);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v4;
  __chkstk_darwin(v5);
  v134 = &v124 - v6;
  v7 = type metadata accessor for SFNearbySharingInteraction.InteractionType();
  v141 = *(v7 - 8);
  v142 = v7;
  __chkstk_darwin(v7);
  v140 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SFNearbySharingInteraction();
  v138 = *(v9 - 8);
  v139 = v9;
  __chkstk_darwin(v9);
  v137 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v11 = *(v143 - 8);
  __chkstk_darwin(v143);
  v13 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v124 - v19;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100007D20(v21, qword_10017F350);
  v23 = v0;
  v144 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v126 = v11;
    v27 = v26;
    v28 = swift_slowAlloc();
    v136 = v13;
    v125 = v28;
    v146 = v28;
    *v27 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_100055568(&unk_1001764E0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.State);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v15 + 8))(v20, v14);
    v32 = sub_10003E81C(v29, v31, &v146);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "resolveContactDetailsIfNecessary: state: %s", v27, 0xCu);
    sub_100007920(v125);
    v13 = v136;

    v11 = v126;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v15 + 88))(v17, v14) != enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:))
  {
    (*(v15 + 8))(v17, v14);
    goto LABEL_9;
  }

  v40 = v23;
  (*(v15 + 96))(v17, v14);
  v41 = v143;
  (*(v11 + 32))(v13, v17, v143);
  v42 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contactDetailsResolvingTask;
  if (*&v23[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contactDetailsResolvingTask])
  {
    (*(v11 + 8))(v13, v41);
LABEL_9:
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Can not resolve remote person details without a connectionContext or a non-nil contactDetailsResolvingTask", v45, 2u);
    }

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v46 = v137;
  static Published.subscript.getter();

  v47 = v140;
  SFNearbySharingInteraction.interactionType.getter();
  (*(v138 + 8))(v46, v139);
  v49 = v141;
  v48 = v142;
  v50 = (*(v141 + 88))(v47, v142);
  if (v50 != enum case for SFNearbySharingInteraction.InteractionType.connect(_:))
  {
    if (v50 != enum case for SFNearbySharingInteraction.InteractionType.handoff(_:))
    {
      (*(v11 + 8))(v13, v41);
      (*(v49 + 8))(v47, v48);
      return;
    }

    v78 = SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceName.getter();
    if (v79)
    {
      v80 = v78;
      v81 = v79;
      v82 = v40;
      v83 = SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceModel.getter();
      if (v84)
      {
        v91 = v83;
        v92 = v84;
        swift_getKeyPath();
        swift_getKeyPath();
        v146 = v80;
        v147 = v81;
        v148 = v91;
        v149 = v92;
        v150 = &_swiftEmptySetSingleton;
        v151 = 0x8000000000000000;
        v93 = v82;
        static Published.subscript.setter();
        (*(v11 + 8))(v13, v41);
        return;
      }

      v81, 0, v85, v86, v87, v88, v89, v90;
    }

    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v119, v120, "Can not resolve remote person details without a device name and model", v121, 2u);
    }

    goto LABEL_32;
  }

  v51 = SFAirDrop.NearbySharingInteraction.ConnectionContext.contactIdentifier.getter();
  if (v52)
  {
    v53 = v51;
    v54 = v52;
    v55 = *&v40[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contentResolver];
    v136 = v13;
    v56 = *(v55 + 32);
    v57 = v129;
    *v129 = 1;
    (*(v127 + 104))(v57, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v128);
    v58 = sub_100007878(v56 + 16, &v146);
    __chkstk_darwin(v58);
    *(&v124 - 4) = &v146;
    *(&v124 - 3) = v53;
    *(&v124 - 2) = v54;
    *(&v124 - 1) = v59;

    v60 = v134;
    AsyncStream.init(_:bufferingPolicy:_:)();

    v54, v61, v62, v63, v64, v65, v66, v67;
    sub_100007920(&v146);
    v68 = type metadata accessor for TaskPriority();
    (*(*(v68 - 8) + 56))(v135, 1, 1, v68);
    v69 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v144 = v40;
    v70 = v132;
    v71 = v131;
    v72 = v133;
    (*(v132 + 16))(v131, v60, v133);
    type metadata accessor for MainActor();

    v73 = static MainActor.shared.getter();
    v74 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v75 = (v130 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    *(v76 + 16) = v73;
    *(v76 + 24) = &protocol witness table for MainActor;
    (*(v70 + 32))(v76 + v74, v71, v72);
    *(v76 + v75) = v69;

    v77 = sub_1000F9860(0, 0, v135, &unk_10011B1F8, v76);
    (*(v70 + 8))(v134, v72);
    (*(v11 + 8))(v136, v143);
    *&v144[v42] = v77;

    return;
  }

  v94 = SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceName.getter();
  if (!v95)
  {
LABEL_30:
    v119 = Logger.logObject.getter();
    v122 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v119, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&_mh_execute_header, v119, v122, "Can not resolve remote person details without a provided contact identifier or device model and identifier, is this a boop to meet?", v123, 2u);
    }

LABEL_32:

    (*(v11 + 8))(v13, v41);
    return;
  }

  v96 = v94;
  v97 = v95;
  v98 = SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceModel.getter();
  if (!v99)
  {
    v97, 0, v100, v101, v102, v103, v104, v105;
    goto LABEL_30;
  }

  v106 = v98;
  v107 = v99;
  v108 = &_swiftEmptySetSingleton;
  v145 = &_swiftEmptySetSingleton;
  v109 = SFAirDrop.NearbySharingInteraction.ConnectionContext.accountID.getter();
  if (v110)
  {
    sub_10008D164(&v146, v109, v110, 0);
    v147, v111, v112, v113, v114, v115, v116, v117;
    v108 = v145;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v146 = v96;
  v147 = v97;
  v148 = v106;
  v149 = v107;
  v150 = v108;
  v151 = 0x4000000000000000;
  v118 = v40;
  static Published.subscript.setter();
  (*(v11 + 8))(v13, v143);
}

uint64_t sub_1000514BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  v6 = sub_1000077C8(&qword_100174480, &qword_10011B200);
  v5[46] = v6;
  v5[47] = *(v6 - 8);
  v5[48] = swift_task_alloc();
  v5[49] = type metadata accessor for MainActor();
  v5[50] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[51] = v8;
  v5[52] = v7;

  return _swift_task_switch(sub_1000515C0, v8, v7);
}

uint64_t sub_1000515C0()
{
  sub_1000077C8(&qword_100175190, &qword_10011CCF0);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v1 = static MainActor.shared.getter();
  v0[53] = v1;
  v2 = swift_task_alloc();
  v0[54] = v2;
  *v2 = v0;
  v2[1] = sub_1000516BC;
  v3 = v0[46];

  return AsyncStream.Iterator.next(isolation:)(v0 + 15, v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_1000516BC()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(sub_100051800, v3, v2);
}

uint64_t sub_100051800()
{
  v1 = *(v0 + 136);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 32) = v1;
  v2 = *(v0 + 168);
  *(v0 + 48) = *(v0 + 152);
  *(v0 + 64) = v2;
  v3 = *(v0 + 200);
  *(v0 + 80) = *(v0 + 184);
  *(v0 + 96) = v3;
  v4 = *(v0 + 216);
  *(v0 + 112) = v4;
  if (*(v0 + 24))
  {
    v17 = *(v0 + 16);
    v14 = *(v0 + 32);
    v15 = *(v0 + 48);
    v16 = *(v0 + 64);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 224) = v17;
      *(v0 + 240) = v14;
      *(v0 + 256) = v15;
      *(v0 + 272) = v16;
      *(v0 + 288) = v5;
      *(v0 + 296) = v6;
      *(v0 + 304) = v7;
      *(v0 + 312) = v8;
      *(v0 + 320) = v4;
      static Published.subscript.setter();
    }

    else
    {
      sub_1000159AC(v0 + 16, &qword_100174488, &qword_10011B208);
    }

    v11 = static MainActor.shared.getter();
    *(v0 + 424) = v11;
    v12 = swift_task_alloc();
    *(v0 + 432) = v12;
    *v12 = v0;
    v12[1] = sub_1000516BC;
    v13 = *(v0 + 368);

    return AsyncStream.Iterator.next(isolation:)(v0 + 120, v11, &protocol witness table for MainActor, v13);
  }

  else
  {
    (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));

    v9 = *(v0 + 8);

    return v9();
  }
}

void sub_100051C24(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100052028(319, &qword_1001742C0, &type metadata accessor for SFNearbySharingInteraction, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_100052028(319, &qword_1001742C8, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_100031B98(319, &qword_1001742D0, &qword_1001742D8, &unk_10011AED8);
        if (v4 <= 0x3F)
        {
          sub_100031B98(319, &qword_1001742E0, &qword_1001742E8, &qword_10011AEE8);
          if (v5 <= 0x3F)
          {
            sub_100031B98(319, &qword_1001742F0, &qword_1001742F8, &unk_10011AEF0);
            if (v6 <= 0x3F)
            {
              sub_100031B98(319, &unk_100174300, &qword_100173D68, &qword_10011A550);
              if (v7 <= 0x3F)
              {
                sub_100031B98(319, &unk_100174310, &unk_1001763B0, &qword_10011AF00);
                if (v8 <= 0x3F)
                {
                  sub_100031B98(319, &qword_100174320, &qword_100174328, &qword_10011AF08);
                  if (v9 <= 0x3F)
                  {
                    sub_100052028(319, &qword_100174330, &type metadata accessor for UUID, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
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

void sub_100052028(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10005208C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100052108@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NearbySharingInteractionViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id sub_100052258(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PlaceholderSFCollaborationService();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000522F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16 = a1;
  v17 = type metadata accessor for SFNearbySharingInteraction.InteractionType();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFNearbySharingInteraction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v10 = *(v15 - 8);
  __chkstk_darwin(v15);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  SFNearbySharingInteraction.interactionType.getter();
  (*(v7 + 8))(v9, v6);
  v13 = *(v2 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_animationCoordinator);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20[4] = v18[4];
  v20[5] = v18[5];
  v21 = v19;
  v20[0] = v18[0];
  v20[1] = v18[1];
  v20[2] = v18[2];
  v20[3] = v18[3];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000526C0(v12, v5, v13, v20, v18, v16);
  sub_1000159AC(v20, &unk_1001763B0, &qword_10011AF00);
  sub_1000159AC(v18, &qword_1001742D8, &unk_10011AED8);
  (*(v3 + 8))(v5, v17);
  return (*(v10 + 8))(v12, v15);
}

uint64_t sub_1000526C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v283 = a5;
  v284 = a4;
  v299 = a2;
  v300 = a3;
  v301 = a6;
  v7 = a4[5];
  v331 = a4[4];
  v332 = v7;
  v333 = *(a4 + 24);
  v8 = a4[1];
  v327 = *a4;
  v328 = v8;
  v9 = a4[3];
  v329 = a4[2];
  v330 = v9;
  v289 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v293 = *(v289 - 8);
  __chkstk_darwin(v289);
  v272 = &v269 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v271 = &v269 - v12;
  __chkstk_darwin(v13);
  v273 = &v269 - v14;
  __chkstk_darwin(v15);
  v274 = &v269 - v16;
  __chkstk_darwin(v17);
  v275 = &v269 - v18;
  __chkstk_darwin(v19);
  v276 = &v269 - v20;
  __chkstk_darwin(v21);
  v277 = &v269 - v22;
  __chkstk_darwin(v23);
  v278 = &v269 - v24;
  __chkstk_darwin(v25);
  v282 = &v269 - v26;
  __chkstk_darwin(v27);
  v286 = &v269 - v28;
  __chkstk_darwin(v29);
  v285 = &v269 - v30;
  __chkstk_darwin(v31);
  v288 = &v269 - v32;
  v33 = sub_1000077C8(&qword_1001743C8, &qword_10011B118);
  __chkstk_darwin(v33 - 8);
  v287 = &v269 - v34;
  v35 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v291 = *(v35 - 8);
  v292 = v35;
  __chkstk_darwin(v35);
  v290 = &v269 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SFShockwaveEffectState();
  v296 = *(v37 - 8);
  v297 = v37;
  __chkstk_darwin(v37);
  v295 = &v269 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SFNearbySharingInteraction.InteractionType();
  v298 = *(v39 - 8);
  __chkstk_darwin(v39);
  v270 = &v269 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v269 - v42;
  v44 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v281 = &v269 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v294 = &v269 - v48;
  __chkstk_darwin(v49);
  v51 = &v269 - v50;
  v52 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v53 = *(v52 - 8);
  v54 = __chkstk_darwin(v52);
  v56 = &v269 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = *(v45 + 16);
  v280 = v45 + 16;
  v279(v51, a1, v44, v54);
  if ((*(v45 + 88))(v51, v44) != enum case for SFAirDrop.NearbySharingInteraction.State.connectionInterrupted(_:))
  {
    v269 = v39;
    v60 = *(v45 + 8);
    v60(v51, v44);
    v61 = v295;
    v62 = v300;
    dispatch thunk of ShockwaveAnimationCoordinator.state.getter();
    v63 = SFShockwaveEffectState.isLogicallyComplete.getter();
    (*(v296 + 8))(v61, v297);
    if (v63 & 1) != 0 && (v64 = a1, v65 = *(v45 + 104), v66 = v294, v65(v294, enum case for SFAirDrop.NearbySharingInteraction.State.connecting(_:), v44), sub_100055568(&qword_1001743D0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.State), v67 = dispatch thunk of static Comparable.< infix(_:_:)(), v60(v66, v44), (v67))
    {
      v68 = v287;
      SFAirDrop.NearbySharingInteraction.State.connectionContext.getter();
      v69 = v64;
      v71 = v291;
      v70 = v292;
      if ((*(v291 + 48))(v68, 1, v292) == 1)
      {
        sub_1000159AC(v68, &qword_1001743C8, &qword_10011B118);
        v72 = v294;
        v73 = v44;
        v65(v294, enum case for SFAirDrop.NearbySharingInteraction.State.ended(_:), v44);
        v74 = static SFAirDrop.NearbySharingInteraction.State.== infix(_:_:)();
        v60(v72, v44);
        if ((v74 & 1) == 0)
        {
          if (qword_100172218 != -1)
          {
            swift_once();
          }

          v75 = type metadata accessor for Logger();
          sub_100007D20(v75, qword_10017F350);
          v76 = v281;
          (v279)(v281, v69, v73);
          sub_100007BA4(v283, &v303, &qword_1001742D8, &unk_10011AED8);
          v77 = v284;
          sub_100007BA4(v284, &v313, &unk_1001763B0, &qword_10011AF00);
          v78 = v77;
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.error.getter();
          sub_1000159AC(v78, &unk_1001763B0, &qword_10011AF00);
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            LODWORD(v299) = v80;
            v82 = v81;
            v300 = swift_slowAlloc();
            *&v313 = v300;
            *v82 = 136315650;
            sub_100055568(&unk_1001764E0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.State);
            v83 = v78;
            v84 = dispatch thunk of CustomStringConvertible.description.getter();
            v86 = v85;
            v60(v76, v73);
            v87 = sub_10003E81C(v84, v86, &v313);
            v86, v88, v89, v90, v91, v92, v93, v94;
            *(v82 + 4) = v87;
            *(v82 + 12) = 2080;
            if (*(v83 + 72) <= 0xFFFFFFFEFFFFFFFFLL)
            {
              v95 = 1701670771;
            }

            else
            {
              v95 = 1701736302;
            }

            v96 = sub_10003E81C(v95, 0xE400000000000000, &v313);
            0xE400000000000000, v97, v98, v99, v100, v101, v102, v103;
            *(v82 + 14) = v96;
            *(v82 + 22) = 2080;
            if (*(&v304 + 1))
            {
              v104 = 1701670771;
            }

            else
            {
              v104 = 1701736302;
            }

            sub_1000159AC(&v303, &qword_1001742D8, &unk_10011AED8);
            v105 = sub_10003E81C(v104, 0xE400000000000000, &v313);
            0xE400000000000000, v106, v107, v108, v109, v110, v111, v112;
            *(v82 + 24) = v105;
            _os_log_impl(&_mh_execute_header, v79, v299, "Encountered unknown state not represented by a view: %s resolvedRemotePerson: %s shareableContent: %s", v82, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            v60(v76, v73);
            sub_1000159AC(&v303, &qword_1001742D8, &unk_10011AED8);
          }
        }

        goto LABEL_33;
      }

      (*(v71 + 32))(v290, v68, v70);
      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v114 = v285;
      v297 = *(v293 + 104);
      v297(v285, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.generic(_:), v289);
      sub_100055568(&unk_100173E70, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v115 = *(&v313 + 1);
      v116 = *(&v303 + 1);
      if (v313 == v303)
      {
        v117 = 1;
      }

      else
      {
        v117 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v118 = v293 + 8;
      v119 = *(v293 + 8);
      v120 = v114;
      v121 = v289;
      v119(v120, v289);
      v293 = v118;
      v119(v288, v121);
      v115, v122, v123, v124, v125, v126, v127, v128;
      v116, v129, v130, v131, v132, v133, v134, v135;
      if (v117)
      {
LABEL_31:
        (*(v291 + 8))(v290, v292);
LABEL_33:
        type metadata accessor for NearbySharingInteractionViewState(0);
        return swift_storeEnumTagMultiPayload();
      }

      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v136 = v282;
      v297(v282, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.airDrop(_:), v121);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v137 = *(&v313 + 1);
      v138 = *(&v303 + 1);
      if (v313 == v303)
      {
        v119(v136, v121);
        v139 = v286;
LABEL_29:
        v119(v139, v121);
        v137, v140, v141, v142, v143, v144, v145, v146;
        v138, v147, v148, v149, v150, v151, v152, v153;
        goto LABEL_31;
      }

      v154 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v119(v136, v121);
      v119(v286, v121);
      v137, v155, v156, v157, v158, v159, v160, v161;
      v138, v162, v163, v164, v165, v166, v167, v168;
      if (v154)
      {
        goto LABEL_31;
      }

      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v169 = v277;
      v297(v277, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.unknown(_:), v121);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v137 = *(&v313 + 1);
      v138 = *(&v303 + 1);
      if (v313 == v303)
      {
        v119(v169, v121);
        v139 = v278;
        goto LABEL_29;
      }

      v170 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v119(v169, v121);
      v119(v278, v121);
      v137, v171, v172, v173, v174, v175, v176, v177;
      v138, v178, v179, v180, v181, v182, v183, v184;
      if (v170)
      {
        goto LABEL_31;
      }

      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v185 = v275;
      v297(v275, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.peerPayment(_:), v121);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v137 = *(&v313 + 1);
      v138 = *(&v303 + 1);
      if (v313 == v303)
      {
        v119(v185, v121);
        v139 = v276;
        goto LABEL_29;
      }

      v186 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v119(v185, v121);
      v119(v276, v121);
      v137, v187, v188, v189, v190, v191, v192, v193;
      v138, v194, v195, v196, v197, v198, v199, v200;
      if (v186)
      {
        goto LABEL_31;
      }

      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v201 = v273;
      v297(v273, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.DDUI(_:), v121);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v137 = *(&v313 + 1);
      v138 = *(&v303 + 1);
      if (v313 == v303)
      {
        v119(v201, v121);
        v139 = v274;
        goto LABEL_29;
      }

      v202 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v119(v201, v121);
      v119(v274, v121);
      v137, v203, v204, v205, v206, v207, v208, v209;
      v138, v210, v211, v212, v213, v214, v215, v216;
      if (v202)
      {
        goto LABEL_31;
      }

      v217 = v271;
      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v297(v272, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.meet(_:), v121);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v218 = *(&v313 + 1);
      v219 = *(&v303 + 1);
      if (v313 == v303)
      {
        v119(v272, v121);
        v119(v217, v121);
        v218, v220, v221, v222, v223, v224, v225, v226;
        v219, v227, v228, v229, v230, v231, v232, v233;
LABEL_47:
        v251 = v290;
        SFAirDrop.NearbySharingInteraction.ConnectionContext.transactionIdentifier.getter();
        (*(v291 + 8))(v251, v292);
        type metadata accessor for NearbySharingInteractionViewState(0);
        return swift_storeEnumTagMultiPayload();
      }

      v234 = v119;
      v235 = v300;
      v236 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v234(v272, v121);
      v234(v217, v121);
      v218, v237, v238, v239, v240, v241, v242, v243;
      v219, v244, v245, v246, v247, v248, v249, v250;
      if (v236)
      {
        goto LABEL_47;
      }

      v252 = *(v284 + 9);
      if (v252 <= 0xFFFFFFFEFFFFFFFFLL)
      {
        v253 = v284[3];
        v324 = v284[2];
        v325 = v253;
        v326 = *(v284 + 8);
        v254 = v284[1];
        v322 = *v284;
        v323 = v254;
        v320 = v284[5];
        v321 = *(v284 + 24);
        sub_100007BA4(v283, &v310, &qword_1001742D8, &unk_10011AED8);
        if (*(&v311 + 1))
        {
          v317 = v331;
          v318 = v332;
          v319 = v333;
          v313 = v327;
          v314 = v328;
          v315 = v329;
          v316 = v330;
          sub_1000555B0(&v313, &v303);
          (*(v291 + 8))(v290, v292);
          v255 = v325;
          v256 = v301;
          *(v301 + 32) = v324;
          *(v256 + 48) = v255;
          v257 = v326;
          v258 = v323;
          *v256 = v322;
          *(v256 + 16) = v258;
          *(v256 + 64) = v257;
          *(v256 + 72) = v252;
          *(v256 + 80) = v320;
          *(v256 + 96) = v321;
          v259 = v310;
          v260 = v311;
          *(v256 + 136) = v312;
          *(v256 + 120) = v260;
          *(v256 + 104) = v259;
          type metadata accessor for NearbySharingInteractionViewState(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_1000159AC(&v310, &qword_1001742D8, &unk_10011AED8);
        v307 = v331;
        v308 = v332;
        v309 = v333;
        v303 = v327;
        v304 = v328;
        v305 = v329;
        v306 = v330;
        v261 = v298;
        v262 = v269;
        v263 = v270;
        (*(v298 + 104))(v270, enum case for SFNearbySharingInteraction.InteractionType.connect(_:), v269);
        v317 = v331;
        v318 = v332;
        v319 = v333;
        v313 = v327;
        v314 = v328;
        v315 = v329;
        v316 = v330;
        sub_1000555B0(&v313, &v302);
        v264 = static SFNearbySharingInteraction.InteractionType.== infix(_:_:)();
        (*(v261 + 8))(v263, v262);
        (*(v291 + 8))(v290, v292);
        if (v264)
        {
          v265 = v308;
          v266 = v301;
          *(v301 + 64) = v307;
          *(v266 + 80) = v265;
          *(v266 + 96) = v309;
          v267 = v304;
          *v266 = v303;
          *(v266 + 16) = v267;
          v268 = v306;
          *(v266 + 32) = v305;
          *(v266 + 48) = v268;
          type metadata accessor for NearbySharingInteractionViewState(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_1000159AC(v284, &unk_1001763B0, &qword_10011AF00);
      }

      else
      {
        (*(v291 + 8))(v290, v292);
      }

      *v301 = v235;
      type metadata accessor for NearbySharingInteractionViewState(0);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      *v301 = v62;
      type metadata accessor for NearbySharingInteractionViewState(0);
      swift_storeEnumTagMultiPayload();
    }
  }

  (*(v45 + 96))(v51, v44);
  v57 = *(v53 + 32);
  v57(v56, v51, v52);
  v58 = v298;
  (*(v298 + 16))(v43, v299, v39);
  v59 = (*(v58 + 88))(v43, v39);
  if (v59 != enum case for SFNearbySharingInteraction.InteractionType.connect(_:))
  {
    if (v59 != enum case for SFNearbySharingInteraction.InteractionType.handoff(_:))
    {
      v57(v301, v56, v52);
      type metadata accessor for NearbySharingInteractionViewState(0);
      swift_storeEnumTagMultiPayload();
      return (*(v58 + 8))(v43, v39);
    }

    (*(v53 + 8))(v56, v52);
    goto LABEL_33;
  }

  v57(v301, v56, v52);
  type metadata accessor for NearbySharingInteractionViewState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100053BA8@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v41 = a1;
  ObjectType = swift_getObjectType();
  v38 = sub_1000077C8(&qword_1001743E0, &qword_10011B170);
  __chkstk_darwin(v38);
  v33 = &v26 - v4;
  v36 = sub_1000077C8(&qword_1001743E8, &qword_10011B178);
  __chkstk_darwin(v36);
  v32 = &v26 - v5;
  v35 = sub_1000077C8(&unk_1001743F0, &qword_10011B180);
  __chkstk_darwin(v35);
  v28 = &v26 - v6;
  v34 = sub_1000077C8(&qword_1001764C0, &qword_10011B188);
  __chkstk_darwin(v34);
  v37 = sub_1000077C8(&qword_100174400, &unk_10011B190);
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v31 = &v26 - v7;
  v8 = type metadata accessor for SFNearbySharingInteraction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SFNearbySharingInteraction.InteractionType();
  v12 = *(v30 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v27 = &v26 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  SFNearbySharingInteraction.interactionType.getter();
  (*(v9 + 8))(v11, v8);
  v26 = *(v3 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_animationCoordinator);
  swift_beginAccess();
  sub_1000077C8(&qword_100174408, &qword_10011E5C0);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  sub_1000077C8(&qword_100174410, &qword_10011B1A0);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  sub_1000077C8(&qword_100174418, &qword_10011B1A8);
  Published.projectedValue.getter();
  swift_endAccess();
  dispatch thunk of ShockwaveAnimationCoordinator.$state.getter();
  sub_1000199C8(&qword_100174420, &qword_1001764C0, &qword_10011B188, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000199C8(&qword_100174428, &unk_1001743F0, &qword_10011B180, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000199C8(&qword_100174430, &qword_1001743E8, &qword_10011B178, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000199C8(&qword_100174438, &qword_1001743E0, &qword_10011B170, &protocol conformance descriptor for Published<A>.Publisher);
  v16 = v31;
  Publishers.CombineLatest4.init(_:_:_:_:)();
  v18 = v29;
  v17 = v30;
  v19 = v27;
  (*(v12 + 16))(v29, v27, v30);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v12 + 32))(v22 + v20, v18, v17);
  *(v22 + v21) = v26;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_100056EAC;
  *(v23 + 24) = v22;
  type metadata accessor for NearbySharingInteractionViewState(0);
  sub_1000199C8(&qword_100174440, &qword_100174400, &unk_10011B190, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);

  v24 = v37;
  Publisher.map<A>(_:)();

  (*(v39 + 8))(v16, v24);
  return (*(v12 + 8))(v19, v17);
}

uint64_t sub_1000542A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for ContinuousClock.Instant();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NearbySharingInteractionViewState(0);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_1000522F8(&v18 - v13);
  swift_storeEnumTagMultiPayload();
  v15 = sub_100056260(v14, v11);
  sub_100056C74(v11);
  if (v15)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v8, v4, v5);
      ContinuousClock.Instant.advanced(by:)();
      (*(v6 + 8))(v8, v5);
      sub_100056C74(v14);
      v16 = 0;
      return (*(v6 + 56))(a1, v16, 1, v5);
    }

    sub_100056C74(v14);
    sub_1000159AC(v4, &qword_100174328, &qword_10011AF08);
  }

  else
  {
    sub_100056C74(v14);
  }

  v16 = 1;
  return (*(v6 + 56))(a1, v16, 1, v5);
}

uint64_t sub_100054568()
{
  v0 = type metadata accessor for NearbySharingInteractionViewState(0);
  __chkstk_darwin(v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v12 - v4;
  sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
  v6 = static NSUserDefaults.airdrop.getter();
  v7 = SFAirDropUserDefaults.shockwaveEffectEnabled.getter();

  if (v7)
  {
    sub_1000522F8(v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_100056C74(v5);
        return 0;
      }

      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 3)
    {
LABEL_16:
      v11 = v5;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_1000588EC(*v5, *(v5 + 1), *(v5 + 2), *(v5 + 3), *(v5 + 4), *(v5 + 5), *(v5 + 6), *(v5 + 7), *(v5 + 8), *(v5 + 9), *(v5 + 10), *(v5 + 11));
      sub_100056D60((v5 + 104));
      return 0;
    }

    return 2;
  }

  sub_1000522F8(v2);
  v10 = swift_getEnumCaseMultiPayload();
  if (v10 <= 2)
  {
    if (v10 >= 2)
    {
      sub_100056C74(v2);
      return 2;
    }

LABEL_14:
    v11 = v2;
LABEL_17:
    sub_100056C74(v11);
    return 1;
  }

  if (v10 == 3)
  {
    goto LABEL_14;
  }

  if (v10 != 4)
  {
    return 2;
  }

  sub_1000588EC(*v2, *(v2 + 1), *(v2 + 2), *(v2 + 3), *(v2 + 4), *(v2 + 5), *(v2 + 6), *(v2 + 7), *(v2 + 8), *(v2 + 9), *(v2 + 10), *(v2 + 11));
  sub_100056D60((v2 + 104));
  return 1;
}

uint64_t sub_100054770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[8] = v10;
  v8[9] = v9;

  return _swift_task_switch(sub_100054810, v10, v9);
}

uint64_t sub_100054810()
{
  v1 = v0[6];
  v2 = v0[2];
  v4 = v2[3];
  v3 = v2[4];
  sub_1000078DC(v2, v4);
  v5 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id;
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1000548E8;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return sub_10000815C(v9, v7, v8, v1 + v5, v4, v3);
}

uint64_t sub_1000548E8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_100054A8C;
  }

  else
  {
    v5 = sub_100054A24;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100054A24()
{

  sub_10004F4F8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100054A8C()
{

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007D20(v1, qword_10017F350);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error sending shareable content: %@", v4, 0xCu);
    sub_1000159AC(v5, &qword_100172EB0, &qword_100119410);
  }

  else
  {
  }

  sub_10004F4F8();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100054CE0(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v9 = (a5)(0, a2, a3, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v21 - v15;
  v17 = *(v10 + 16);
  v17(&v21 - v15, a1, v9, v14);
  v18 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  (v17)(v12, v16, v9);
  v19 = v18;
  static Published.subscript.setter();
  return (*(v10 + 8))(v16, v9);
}

double sub_100054EF0(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t sub_100054F6C(uint64_t a1, void **a2)
{
  sub_100007BA4(a1, v7, &qword_1001742D8, &unk_10011AED8);
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(v7, &v6, &qword_1001742D8, &unk_10011AED8);
  v4 = v3;
  static Published.subscript.setter();
  return sub_1000159AC(v7, &qword_1001742D8, &unk_10011AED8);
}

uint64_t sub_100055038(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v3 = v2;
  return static Published.subscript.setter();
}

void sub_1000550EC(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
}

uint64_t sub_10005517C(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  v9 = v7;
  return static Published.subscript.setter();
}

__n128 sub_1000551EC@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 96) = v10;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1000552B0(__int128 *a1, void **a2)
{
  v3 = a1[5];
  v20[4] = a1[4];
  v20[5] = v3;
  v21 = *(a1 + 24);
  v4 = a1[1];
  v20[0] = *a1;
  v20[1] = v4;
  v5 = a1[3];
  v20[2] = a1[2];
  v20[3] = v5;
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[5];
  v17 = a1[4];
  v18 = v7;
  v19 = *(a1 + 24);
  v8 = a1[1];
  v13 = *a1;
  v14 = v8;
  v9 = a1[3];
  v15 = a1[2];
  v16 = v9;
  sub_100007BA4(v20, v12, &unk_1001763B0, &qword_10011AF00);
  v10 = v6;
  return static Published.subscript.setter();
}

double sub_1000553A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t sub_10005541C(uint64_t a1, void **a2)
{
  v4 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_100007BA4(a1, &v13 - v8, &qword_100174328, &qword_10011AF08);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(v9, v6, &qword_100174328, &qword_10011AF08);
  v11 = v10;
  static Published.subscript.setter();
  return sub_1000159AC(v9, &qword_100174328, &qword_10011AF08);
}

uint64_t sub_100055568(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10005560C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (**a6)(char *, char *, uint64_t))
{
  v108 = a6;
  v97 = a3;
  v96 = a2;
  v9 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v9 - 8);
  v101 = &v91 - v10;
  v11 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  __chkstk_darwin(v11 - 8);
  v95 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v94 = &v91 - v14;
  __chkstk_darwin(v15);
  v100 = &v91 - v16;
  v17 = sub_1000077C8(&qword_100172F08, &unk_10011E530);
  __chkstk_darwin(v17 - 8);
  v99 = &v91 - v18;
  v19 = type metadata accessor for SFNearbySharingInteraction.InteractionType();
  v106 = *(v19 - 8);
  v107 = v19;
  __chkstk_darwin(v19);
  v105 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v104 = &v91 - v22;
  v103 = type metadata accessor for SFNearbySharingInteraction();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v98 = (&v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v30 = &v91 - v29;
  v31 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v93 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v33;
  __chkstk_darwin(v34);
  v36 = &v91 - v35;
  v111[3] = a5;
  v111[4] = v108;
  v37 = sub_100058F84(v111);
  (*(*(a5 - 8) + 16))(v37, a1, a5);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v26 + 88))(v30, v25) == enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:))
  {
    (*(v26 + 96))(v30, v25);
    v108 = v32;
    v98 = v32[4];
    v98(v36, v30, v31);
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = a4;
    static Published.subscript.getter();

    v39 = v104;
    SFNearbySharingInteraction.interactionType.getter();
    (*(v102 + 8))(v24, v103);
    v41 = v105;
    v40 = v106;
    v42 = v107;
    (*(v106 + 104))(v105, enum case for SFNearbySharingInteraction.InteractionType.connect(_:), v107);
    v43 = static SFNearbySharingInteraction.InteractionType.== infix(_:_:)();
    v44 = *(v40 + 8);
    v44(v41, v42);
    v44(v39, v42);
    if ((v43 & 1) != 0 && (v45 = v99, SFAirDrop.NearbySharingInteraction.ConnectionContext.endpointIdentifier.getter(), v46 = type metadata accessor for UUID(), v47 = (*(*(v46 - 8) + 48))(v45, 1, v46), sub_1000159AC(v45, &qword_100172F08, &unk_10011E530), v47 == 1))
    {
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_100007D20(v48, qword_10017F350);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      v51 = os_log_type_enabled(v49, v50);
      v52 = v108;
      if (v51)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Can not share content: we don't have a resolved endpoint.", v53, 2u);
      }

      (v52[1])(v36, v31);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v74 = v100;
      static Published.subscript.getter();

      v75 = type metadata accessor for ContinuousClock.Instant();
      v76 = *(v75 - 8);
      if ((*(v76 + 48))(v74, 1, v75) == 1)
      {
        v107 = v31;
        sub_1000159AC(v74, &qword_100174328, &qword_10011AF08);
        v77 = v94;
        static ContinuousClock.Instant.now.getter();
        (*(v76 + 56))(v77, 0, 1, v75);
        swift_getKeyPath();
        swift_getKeyPath();
        v91 = v36;
        sub_100007BA4(v77, v95, &qword_100174328, &qword_10011AF08);
        v78 = v38;
        static Published.subscript.setter();
        sub_1000159AC(v77, &qword_100174328, &qword_10011AF08);
        v79 = type metadata accessor for TaskPriority();
        (*(*(v79 - 8) + 56))(v101, 1, 1, v79);
        sub_100007878(v111, v110);
        sub_100007878(v96, v109);
        v80 = v107;
        v81 = v108;
        v82 = v93;
        v108[2](v93, v36, v107);
        type metadata accessor for MainActor();
        v83 = v97;
        v84 = v97;
        v85 = v78;
        v86 = static MainActor.shared.getter();
        v87 = (*(v81 + 80) + 120) & ~*(v81 + 80);
        v88 = (v92 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
        v89 = swift_allocObject();
        *(v89 + 2) = v86;
        *(v89 + 3) = &protocol witness table for MainActor;
        sub_1000590D8(v110, (v89 + 32));
        sub_1000590D8(v109, (v89 + 72));
        *(v89 + 14) = v83;
        v98(&v89[v87], v82, v80);
        *&v89[v88] = v85;
        sub_1000F9860(0, 0, v101, &unk_10011B380, v89);

        (v81[1])(v91, v80);
      }

      else
      {
        (v108[1])(v36, v31);
        sub_1000159AC(v74, &qword_100174328, &qword_10011AF08);
      }
    }
  }

  else
  {
    v54 = *(v26 + 8);
    (v54)(v30, v25);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100007D20(v55, qword_10017F350);
    v56 = a4;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v108 = v54;
      v60 = v59;
      v61 = swift_slowAlloc();
      *&v110[0] = v61;
      *v60 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      v62 = v98;
      static Published.subscript.getter();

      sub_100055568(&unk_1001764E0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.State);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      (v108)(v62, v25);
      v66 = sub_10003E81C(v63, v65, v110);
      v65, v67, v68, v69, v70, v71, v72, v73;
      *(v60 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v57, v58, "Can not share content as the state of the interaction is not connected: %s", v60, 0xCu);
      sub_100007920(v61);
    }
  }

  return sub_100007920(v111);
}

uint64_t sub_100056260(uint64_t a1, uint64_t a2)
{
  v106 = a2;
  v3 = type metadata accessor for UUID();
  v104 = *(v3 - 8);
  v105 = v3;
  __chkstk_darwin(v3);
  v101 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin(v5);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NearbySharingInteractionViewState(0);
  __chkstk_darwin(v8);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  __chkstk_darwin(v14);
  v16 = &v101 - v15;
  __chkstk_darwin(v17);
  v19 = &v101 - v18;
  __chkstk_darwin(v20);
  v22 = &v101 - v21;
  v23 = sub_1000077C8(&qword_1001743D8, &qword_10011B168);
  __chkstk_darwin(v23 - 8);
  v26 = &v101 + *(v25 + 56) - v24;
  v27 = a1;
  v28 = &v101 - v24;
  sub_100056CFC(v27, &v101 - v24);
  sub_100056CFC(v106, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_100056CFC(v28, v19);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v31 = v102;
          v30 = v103;
          (*(v102 + 32))(v7, v26, v103);
          v32 = static SFAirDrop.NearbySharingInteraction.FailureType.== infix(_:_:)();
          v33 = v28;
          v34 = *(v31 + 8);
          v34(v7, v30);
          v34(v19, v30);
LABEL_22:
          sub_100056C74(v33);
          return v32 & 1;
        }

        (*(v102 + 8))(v19, v103);
      }

      else
      {
        sub_100056CFC(v28, v16);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v58 = v104;
          v57 = v105;
          v59 = v101;
          (*(v104 + 32))(v101, v26, v105);
          v32 = static UUID.== infix(_:_:)();
          v33 = v28;
          v60 = *(v58 + 8);
          v60(v59, v57);
          v60(v16, v57);
          goto LABEL_22;
        }

        (*(v104 + 8))(v16, v105);
      }
    }

    else
    {
      sub_100056CFC(v28, v22);
      if (!swift_getEnumCaseMultiPayload())
      {
        type metadata accessor for ShockwaveAnimationCoordinator();
        v32 = static ShockwaveAnimationCoordinator.== infix(_:_:)();

        sub_100056C74(v28);
        return v32 & 1;
      }
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_100056CFC(v28, v13);
    v47 = *(v13 + 5);
    v123[2] = *(v13 + 4);
    v124 = v47;
    v125 = *(v13 + 24);
    v48 = *(v13 + 1);
    v121 = *v13;
    v122 = v48;
    v49 = *(v13 + 3);
    v123[0] = *(v13 + 2);
    v123[1] = v49;
    if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_28:
      sub_100056DB4(&v121);
      goto LABEL_30;
    }

    v50 = v28;
    v51 = *(v26 + 5);
    v118 = *(v26 + 4);
    v119 = v51;
    v120 = *(v26 + 24);
    v52 = *(v26 + 1);
    v114 = *v26;
    v115 = v52;
    v53 = *(v26 + 3);
    v116 = *(v26 + 2);
    v117 = v53;
    v55 = *(&v122 + 1);
    v54 = *&v123[0];
    v56 = v122;
    if (*(&v123[2] + 1) >> 62)
    {
      if (*(&v123[2] + 1) >> 62 == 1)
      {
        if (*(&v118 + 1) >> 62 != 1)
        {
          goto LABEL_46;
        }

        goto LABEL_39;
      }

      if (*(&v118 + 1) >> 62 == 2)
      {
LABEL_39:
        v65 = v115;
        v66 = v116;
        if (v121 != v114 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || __PAIR128__(v55, v56) != v65 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_46;
        }

        v63 = sub_10006B864(v54, v66);
LABEL_44:
        v67 = v63;
        sub_100056DB4(&v114);
        sub_100056DB4(&v121);
        if (v67)
        {
          v61 = v50;
          goto LABEL_25;
        }

LABEL_47:
        sub_100056C74(v50);
        goto LABEL_31;
      }
    }

    else
    {
      v126 = v121;
      v127 = v122;
      v129 = *(v123 + 8);
      v130 = *(&v123[1] + 8);
      v128 = *&v123[0];
      v131 = *(&v123[2] + 1) & 0x3FFFFFFFFFFFFFFFLL;
      v132 = v124;
      v133 = v125;
      if (!(*(&v118 + 1) >> 62))
      {
        v134 = v114;
        v135 = v115;
        v136 = v116;
        v137 = v117;
        v138 = v118;
        v139 = v119;
        v140 = v120;
        v63 = sub_10006BCA4(&v126, &v134);
        goto LABEL_44;
      }
    }

LABEL_46:
    sub_100056DB4(&v114);
    sub_100056DB4(&v121);
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (swift_getEnumCaseMultiPayload() != 5)
    {
LABEL_30:
      sub_1000159AC(v28, &qword_1001743D8, &qword_10011B168);
LABEL_31:
      v32 = 0;
      return v32 & 1;
    }

    v61 = v28;
LABEL_25:
    sub_100056C74(v61);
    v32 = 1;
    return v32 & 1;
  }

  sub_100056CFC(v28, v10);
  v35 = *(v10 + 5);
  v123[2] = *(v10 + 4);
  v124 = v35;
  v125 = *(v10 + 24);
  v36 = *(v10 + 1);
  v121 = *v10;
  v122 = v36;
  v37 = *(v10 + 3);
  v123[0] = *(v10 + 2);
  v123[1] = v37;
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_100056D60((v10 + 104));
    goto LABEL_28;
  }

  v38 = v28;
  v39 = *(v26 + 5);
  v118 = *(v26 + 4);
  v119 = v39;
  v120 = *(v26 + 24);
  v40 = *(v26 + 1);
  v114 = *v26;
  v115 = v40;
  v41 = *(v26 + 3);
  v116 = *(v26 + 2);
  v117 = v41;
  v42 = *(v10 + 120);
  v112[0] = *(v10 + 104);
  v112[1] = v42;
  v113 = *(v10 + 136);
  v43 = *(v26 + 120);
  v110[0] = *(v26 + 104);
  v110[1] = v43;
  v111 = *(v26 + 136);
  v45 = *(&v122 + 1);
  v44 = *&v123[0];
  v46 = v122;
  if (!(*(&v123[2] + 1) >> 62))
  {
    v126 = v121;
    v127 = v122;
    v129 = *(v123 + 8);
    v130 = *(&v123[1] + 8);
    v128 = *&v123[0];
    v131 = *(&v123[2] + 1) & 0x3FFFFFFFFFFFFFFFLL;
    v132 = v124;
    v133 = v125;
    if (!(*(&v118 + 1) >> 62))
    {
      v134 = v114;
      v135 = v115;
      v136 = v116;
      v137 = v117;
      v138 = v118;
      v139 = v119;
      v140 = v120;
      v64 = sub_10006BCA4(&v126, &v134);
      goto LABEL_54;
    }

    goto LABEL_61;
  }

  if (*(&v123[2] + 1) >> 62 == 1)
  {
    if (*(&v118 + 1) >> 62 != 1)
    {
      goto LABEL_61;
    }

    goto LABEL_49;
  }

  if (*(&v118 + 1) >> 62 != 2)
  {
LABEL_61:
    sub_100056DB4(&v114);
    sub_100056DB4(&v121);
    goto LABEL_62;
  }

LABEL_49:
  v68 = v115;
  v69 = v116;
  if (v121 != v114 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || __PAIR128__(v45, v46) != v68 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_61;
  }

  v64 = sub_10006B864(v44, v69);
LABEL_54:
  v70 = v64;
  sub_100056DB4(&v114);
  sub_100056DB4(&v121);
  if ((v70 & 1) == 0)
  {
LABEL_62:
    sub_100056D60(v110);
    sub_100056D60(v112);
    sub_100056C74(v38);
    goto LABEL_31;
  }

  v71 = *(&v113 + 1);
  v72 = *(*(&v113 + 1) + 16);
  v73 = &_swiftEmptyArrayStorage;
  if (v72)
  {
    v109 = &_swiftEmptyArrayStorage;
    sub_10000E414(0, v72, 0);
    v73 = v109;
    v74 = v71 + 32;
    do
    {
      sub_100007878(v74, v107);
      v75 = v108;
      sub_1000078DC(v107, v108);
      v76 = sub_10000814C(v75);
      sub_100007920(v107);
      v109 = v73;
      v78 = *v73->connection;
      v77 = *v73->airdropClient;
      if (v78 >= v77 >> 1)
      {
        sub_10000E414((v77 > 1), v78 + 1, 1);
        v73 = v109;
      }

      *v73->connection = v78 + 1;
      *&v73->airDropClient[8 * v78] = v76;
      v74 += 40;
      --v72;
    }

    while (v72);
  }

  v79 = *(&v111 + 1);
  v80 = *(*(&v111 + 1) + 16);
  v81 = &_swiftEmptyArrayStorage;
  if (v80)
  {
    v109 = &_swiftEmptyArrayStorage;
    sub_10000E414(0, v80, 0);
    v81 = v109;
    v82 = v79 + 32;
    do
    {
      sub_100007878(v82, v107);
      v83 = v108;
      sub_1000078DC(v107, v108);
      v84 = sub_10000814C(v83);
      sub_100007920(v107);
      v109 = v81;
      v86 = *v81->connection;
      v85 = *v81->airdropClient;
      if (v86 >= v85 >> 1)
      {
        sub_10000E414((v85 > 1), v86 + 1, 1);
        v81 = v109;
      }

      *v81->connection = v86 + 1;
      *&v81->airDropClient[8 * v86] = v84;
      v82 += 40;
      --v80;
    }

    while (v80);
  }

  v32 = sub_10000853C(v73, v81);
  v73, v87, v88, v89, v90, v91, v92, v93;
  v81, v94, v95, v96, v97, v98, v99, v100;
  sub_100056D60(v110);
  sub_100056D60(v112);
  sub_100056C74(v38);
  return v32 & 1;
}

uint64_t sub_100056C74(uint64_t a1)
{
  v2 = type metadata accessor for NearbySharingInteractionViewState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionViewState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100056E08()
{
  v1 = type metadata accessor for SFNearbySharingInteraction.InteractionType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100056EAC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for SFNearbySharingInteraction.InteractionType() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  return sub_1000526C0(a1, v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3, a4);
}

uint64_t sub_100056F64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056F9C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1000077C8(&qword_100174448, &qword_10011B1B0);
  v5 = a1 + v4[12];
  v6 = *(v5 + 80);
  v10[4] = *(v5 + 64);
  v10[5] = v6;
  v11 = *(v5 + 96);
  v7 = *(v5 + 16);
  v10[0] = *v5;
  v10[1] = v7;
  v8 = *(v5 + 48);
  v10[2] = *(v5 + 32);
  v10[3] = v8;
  return v3(a1, v10, a1 + v4[16], a1 + v4[20]);
}

id sub_100057034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v76 = a2;
  v84 = a1;
  v83 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v78 = &v54 - v6;
  v85 = type metadata accessor for UUID();
  v64 = *(v85 - 8);
  __chkstk_darwin(v85);
  v77 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v73 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for SFNearbySharingInteraction();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = &v54 - v11;
  v70 = sub_1000077C8(&unk_100174450, &qword_10011B1B8);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v54 - v12;
  v67 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  __chkstk_darwin(v67);
  v66 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v54 - v15;
  v63 = sub_1000077C8(&qword_100174410, &qword_10011B1A0);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v54 - v16;
  v60 = sub_1000077C8(&qword_100173D40, &qword_10011B1C0);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v54 - v17;
  v57 = sub_1000077C8(&qword_100174460, &qword_10011B1C8);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v19 = &v54 - v18;
  v55 = sub_1000077C8(&qword_100174468, &unk_10011B1D0);
  v20 = *(v55 - 8);
  __chkstk_darwin(v55);
  v22 = &v54 - v21;
  v23 = sub_1000077C8(&qword_100174418, &qword_10011B1A8);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v54 - v25;
  v27 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__shareableContent;
  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  sub_100007BA4(&v87, v96, &qword_1001742D8, &unk_10011AED8);
  sub_1000077C8(&qword_1001742D8, &unk_10011AED8);
  Published.init(initialValue:)();
  v28 = v64;
  sub_1000159AC(&v87, &qword_1001742D8, &unk_10011AED8);
  (*(v24 + 32))(&v3[v27], v26, v23);
  v29 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__collaborationItem;
  *&v87 = 0;
  sub_1000077C8(&qword_1001742E8, &qword_10011AEE8);
  Published.init(initialValue:)();
  (*(v20 + 32))(&v3[v29], v22, v55);
  v30 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__collaborationItemOptions;
  *&v87 = 0;
  sub_1000077C8(&qword_1001742F8, &unk_10011AEF0);
  Published.init(initialValue:)();
  (*(v56 + 32))(&v3[v30], v19, v57);
  v31 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__previewImage;
  *&v87 = 0;
  sub_1000077C8(&qword_100173D68, &qword_10011A550);
  v32 = v58;
  Published.init(initialValue:)();
  (*(v59 + 32))(&v3[v31], v32, v60);
  v33 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__resolvedRemotePerson;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v91 = 0;
  v92 = 0xFFFFFFFF00000000;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  sub_1000077C8(&unk_1001763B0, &qword_10011AF00);
  v34 = v61;
  Published.init(initialValue:)();
  (*(v62 + 32))(&v3[v33], v34, v63);
  v35 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__shareableContentActionBeginTime;
  v36 = type metadata accessor for ContinuousClock.Instant();
  v37 = v65;
  (*(*(v36 - 8) + 56))(v65, 1, 1, v36);
  sub_100007BA4(v37, v66, &qword_100174328, &qword_10011AF08);
  v38 = v68;
  Published.init(initialValue:)();
  sub_1000159AC(v37, &qword_100174328, &qword_10011AF08);
  (*(v69 + 32))(&v3[v35], v38, v70);
  (*(v28 + 56))(&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_interactionAssertionID], 1, 1, v85);
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contactDetailsResolvingTask] = 0;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1000908EC(&_swiftEmptyArrayStorage);
  }

  else
  {
    v39 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_subscriptions] = v39;
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationService] = 0;
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationsItemProvider] = 0;
  v40 = &v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel____lazy_storage___optionsChangedCallback];
  *v40 = 0;
  v40[1] = 0;
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contentResolver] = v76;
  type metadata accessor for ShockwaveAnimationCoordinator();
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_animationCoordinator] = ShockwaveAnimationCoordinator.init()();
  v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_includeRemotePersonDetails] = 1;
  v41 = v79;
  v42 = v84;
  v43 = v81;
  (*(v79 + 16))(v73, v84, v81);
  v44 = v71;
  SFNearbySharingInteraction.init(_:)();
  swift_beginAccess();
  v45 = v74;
  v46 = v75;
  (*(v74 + 16))(v72, v44, v75);
  Published.init(initialValue:)();
  (*(v45 + 8))(v44, v46);
  swift_endAccess();
  v47 = v77;
  SFAirDrop.NearbySharingInteraction.id.getter();
  (*(v28 + 32))(&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id], v47, v85);
  v48 = v78;
  SFAirDrop.NearbySharingInteraction.state.getter();
  swift_beginAccess();
  v49 = v82;
  v50 = v83;
  (*(v82 + 16))(v80, v48, v83);
  Published.init(initialValue:)();
  (*(v49 + 8))(v48, v50);
  swift_endAccess();
  v51 = type metadata accessor for NearbySharingInteractionViewModel(0);
  v86.receiver = v3;
  v86.super_class = v51;
  v52 = objc_msgSendSuper2(&v86, "init");
  sub_10004E3E8();

  (*(v41 + 8))(v42, v43);
  return v52;
}

id sub_100057C8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v76 = a2;
  v84 = a1;
  v83 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v78 = &v54 - v6;
  v85 = type metadata accessor for UUID();
  v64 = *(v85 - 8);
  __chkstk_darwin(v85);
  v77 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SFProximityHandoff.Interaction();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v73 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for SFNearbySharingInteraction();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = &v54 - v11;
  v70 = sub_1000077C8(&unk_100174450, &qword_10011B1B8);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v54 - v12;
  v67 = sub_1000077C8(&qword_100174328, &qword_10011AF08);
  __chkstk_darwin(v67);
  v66 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v54 - v15;
  v63 = sub_1000077C8(&qword_100174410, &qword_10011B1A0);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v54 - v16;
  v60 = sub_1000077C8(&qword_100173D40, &qword_10011B1C0);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v54 - v17;
  v57 = sub_1000077C8(&qword_100174460, &qword_10011B1C8);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v19 = &v54 - v18;
  v55 = sub_1000077C8(&qword_100174468, &unk_10011B1D0);
  v20 = *(v55 - 8);
  __chkstk_darwin(v55);
  v22 = &v54 - v21;
  v23 = sub_1000077C8(&qword_100174418, &qword_10011B1A8);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v54 - v25;
  v27 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__shareableContent;
  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  sub_100007BA4(&v87, v96, &qword_1001742D8, &unk_10011AED8);
  sub_1000077C8(&qword_1001742D8, &unk_10011AED8);
  Published.init(initialValue:)();
  v28 = v64;
  sub_1000159AC(&v87, &qword_1001742D8, &unk_10011AED8);
  (*(v24 + 32))(&v2[v27], v26, v23);
  v29 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__collaborationItem;
  *&v87 = 0;
  sub_1000077C8(&qword_1001742E8, &qword_10011AEE8);
  Published.init(initialValue:)();
  (*(v20 + 32))(&v2[v29], v22, v55);
  v30 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__collaborationItemOptions;
  *&v87 = 0;
  sub_1000077C8(&qword_1001742F8, &unk_10011AEF0);
  Published.init(initialValue:)();
  (*(v56 + 32))(&v2[v30], v19, v57);
  v31 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__previewImage;
  *&v87 = 0;
  sub_1000077C8(&qword_100173D68, &qword_10011A550);
  v32 = v58;
  Published.init(initialValue:)();
  (*(v59 + 32))(&v3[v31], v32, v60);
  v33 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__resolvedRemotePerson;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v91 = 0;
  v92 = 0xFFFFFFFF00000000;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  sub_1000077C8(&unk_1001763B0, &qword_10011AF00);
  v34 = v61;
  Published.init(initialValue:)();
  (*(v62 + 32))(&v3[v33], v34, v63);
  v35 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel__shareableContentActionBeginTime;
  v36 = type metadata accessor for ContinuousClock.Instant();
  v37 = v65;
  (*(*(v36 - 8) + 56))(v65, 1, 1, v36);
  sub_100007BA4(v37, v66, &qword_100174328, &qword_10011AF08);
  v38 = v68;
  Published.init(initialValue:)();
  sub_1000159AC(v37, &qword_100174328, &qword_10011AF08);
  (*(v69 + 32))(&v3[v35], v38, v70);
  (*(v28 + 56))(&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_interactionAssertionID], 1, 1, v85);
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contactDetailsResolvingTask] = 0;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1000908EC(&_swiftEmptyArrayStorage);
  }

  else
  {
    v39 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_subscriptions] = v39;
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationService] = 0;
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_collaborationsItemProvider] = 0;
  v40 = &v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel____lazy_storage___optionsChangedCallback];
  *v40 = 0;
  v40[1] = 0;
  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_contentResolver] = v76;
  type metadata accessor for ShockwaveAnimationCoordinator();
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_animationCoordinator] = ShockwaveAnimationCoordinator.init()();
  v41 = v84;
  v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_includeRemotePersonDetails] = SFProximityHandoff.Interaction.showDeviceDetails.getter() & 1;
  v42 = v79;
  v43 = v81;
  (*(v79 + 16))(v73, v41, v81);
  v44 = v71;
  SFNearbySharingInteraction.init(_:)();
  swift_beginAccess();
  v45 = v74;
  v46 = v75;
  (*(v74 + 16))(v72, v44, v75);
  Published.init(initialValue:)();
  (*(v45 + 8))(v44, v46);
  swift_endAccess();
  v47 = v77;
  SFProximityHandoff.Interaction.id.getter();
  (*(v28 + 32))(&v3[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id], v47, v85);
  v48 = v78;
  SFProximityHandoff.Interaction.state.getter();
  swift_beginAccess();
  v49 = v82;
  v50 = v83;
  (*(v82 + 16))(v80, v48, v83);
  Published.init(initialValue:)();
  (*(v49 + 8))(v48, v50);
  swift_endAccess();
  v51 = type metadata accessor for NearbySharingInteractionViewModel(0);
  v86.receiver = v3;
  v86.super_class = v51;
  v52 = objc_msgSendSuper2(&v86, "init");
  sub_10004E3E8();

  (*(v42 + 8))(v41, v43);
  return v52;
}

void sub_1000588EC(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2, void *a3, _TtC9AirDropUI33AirDropTransferSessionsController *a4, _TtC9AirDropUI33AirDropTransferSessionsController *a5, _TtC9AirDropUI33AirDropTransferSessionsController *a6, _TtC9AirDropUI33AirDropTransferSessionsController *a7, void *a8, _TtC9AirDropUI33AirDropTransferSessionsController *a9, unint64_t a10, uint64_t a11, _TtC9AirDropUI33AirDropTransferSessionsController *a12)
{
  if ((a10 >> 62) - 1 >= 2)
  {
    if (a10 >> 62 == 3)
    {
      return;
    }

    v12 = a12;
    v14 = a9;
    a2, a2, a3, a4, a5, a6, a7, a8;
    a4, v18, v19, v20, v21, v22, v23, v24;
    a6, v25, v26, v27, v28, v29, v30, v31;
    v13 = a7;
  }

  else
  {
    v12 = a5;
    v13 = a2;
    v14 = a4;
  }

  v13, a2, a3, a4, a5, a6, a7, a8;
  v14, v32, v33, v34, v35, v36, v37, v38;

  v12, v39, v40, v41, v42, v43, v44, v45;
}

uint64_t sub_1000589B4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_1000589EC()
{
  v1 = sub_1000077C8(&qword_100175190, &qword_10011CCF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100058AD0(uint64_t a1)
{
  v4 = *(sub_1000077C8(&qword_100175190, &qword_10011CCF0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000BCF0;

  return sub_1000514BC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100058C08()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058C48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BCF0;

  return sub_10004F900(a1, v4, v5, v6);
}

uint64_t sub_100058CFC(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

_OWORD *sub_100058DC8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100058E80(uint64_t a1)
{
  type metadata accessor for ShockwaveAnimationCoordinator();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        sub_100058F24();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_100058F24()
{
  if (!qword_100174550)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100174550);
    }
  }
}

uint64_t *sub_100058F84(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100058FE8()
{
  v1 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_100007920((v0 + 32));
  sub_100007920((v0 + 72));

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000590D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000590F0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext() - 8);
  v6 = (*(v5 + 80) + 120) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[14];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000167E4;

  return sub_100054770(a1, v7, v8, (v1 + 4), (v1 + 9), v9, v1 + v6, v10);
}

void sub_100059234(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000592C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10005931C()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_1001745E0);
  v1 = sub_100007D20(v0, qword_1001745E0);
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F350);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000593E4()
{
  result = SFProximityHandoffUIServerDomain.getter();
  qword_1001745F8 = result;
  unk_100174600 = v1;
  return result;
}

uint64_t sub_100059408()
{
  result = SFProximityHandoffUIServerService.getter();
  qword_100174608 = result;
  unk_100174610 = v1;
  return result;
}

id sub_10005942C()
{
  result = [objc_allocWithZone(type metadata accessor for ProximityHandoffUIService()) init];
  qword_10017F230 = result;
  return result;
}

id sub_10005945C()
{
  v1 = OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService____lazy_storage___interface;
  v2 = *(v0 + OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService____lazy_storage___interface);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService____lazy_storage___interface);
  }

  else
  {
    v4 = sub_10005A108();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1000594BC(__n128 a1)
{
  ObjectType = swift_getObjectType();
  v3 = &qword_100174000;
  *&v1[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_listener] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_connection] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService____lazy_storage___interface] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_proximityHandoffUIClient] = 0;
  v18.receiver = v1;
  v18.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v18, "init");
  v16[2] = v4;
  v16[3] = ObjectType;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10005A734;
  *(v5 + 24) = v16;
  aBlock[4] = sub_10005A778;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005A770;
  aBlock[3] = &unk_10015E5B0;
  v6 = _Block_copy(aBlock);
  v7 = objc_opt_self();
  v8 = v4;

  v9 = [v7 listenerWithConfigurator:v6];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v3 = OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_listener;
    v10 = *&v8[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_listener];
    *&v8[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_listener] = v9;

    if (qword_100172158 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  sub_100007D20(v11, qword_1001745E0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "ProximityHandoffUIService listener is activating...", v14, 2u);
  }

  result = *(v3 + v8);
  if (result)
  {
    [result activate];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100059744(void *a1, uint64_t a2)
{
  if (qword_100172160 != -1)
  {
    swift_once();
  }

  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  if (qword_100172168 != -1)
  {
    swift_once();
  }

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

void sub_100059A78(void *a1, uint64_t a2)
{
  sub_10005A6A8();
  v4 = static OS_dispatch_queue.main.getter();
  [a1 setTargetQueue:v4];

  v5 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v5];

  v6 = sub_10005945C();
  [a1 setInterface:v6];

  [a1 setInterfaceTarget:a2];
  v15 = sub_100059CE8;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100059234;
  v14 = &unk_10015E4E8;
  v7 = _Block_copy(&v11);
  [a1 setActivationHandler:v7];
  _Block_release(v7);
  v15 = sub_100059DD0;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100059234;
  v14 = &unk_10015E510;
  v8 = _Block_copy(&v11);
  [a1 setInterruptionHandler:v8];
  _Block_release(v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_10005A72C;
  v16 = v9;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100059234;
  v14 = &unk_10015E560;
  v10 = _Block_copy(&v11);

  [a1 setInvalidationHandler:v10];
  _Block_release(v10);
}

void sub_100059CE8()
{
  if (qword_100172158 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100007D20(v0, qword_1001745E0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "ProximityHandoffUIService: connection activated from client!", v2, 2u);
  }
}

id sub_100059DD0(void *a1)
{
  if (qword_100172158 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_1001745E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ProximityHandoffUIService: connection interrupted, reconnecting", v5, 2u);
  }

  return [a1 activate];
}

double sub_100059EC8(uint64_t a1, uint64_t a2)
{
  if (qword_100172158 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_1001745E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ProximityHandoffUIService: connection invalidated", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_connection];
    *&Strong[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_connection] = 0;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    *&v8[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_proximityHandoffUIClient] = 0;

    swift_unknownObjectRelease();
  }

  if (qword_1001721F0 != -1)
  {
    swift_once();
  }

  *(qword_10017F2E8 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_proximityHandoffClient) = 0;

  return sub_100095544();
}

id sub_10005A108()
{
  if (qword_100172168 != -1)
  {
    swift_once();
  }

  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() interfaceWithIdentifier:v0];

  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol:&OBJC_PROTOCOL____TtP7Sharing34SFProximityHandoffUIServerProtocol_];
  [v1 setServer:v3];

  v4 = [v2 protocolForProtocol:&OBJC_PROTOCOL____TtP7Sharing34SFProximityHandoffUIClientProtocol_];
  [v1 setClient:v4];

  [v1 setClientMessagingExpectation:0];
  return v1;
}

void sub_10005A238(void *a1)
{
  v2 = v1;
  if (qword_100172158 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007D20(v4, qword_1001745E0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "ProximityHandoffUIService received a connection! %@", v8, 0xCu);
    sub_1000159AC(v9, &qword_100172EB0, &qword_100119410);
  }

  v11 = OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_connection;
  v12 = *&v1[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_connection];
  if (v12)
  {
    v13 = v12;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "ProximityHandoffUIService: a connection already exists, invalidating old connection", v16, 2u);
    }

    [v13 invalidate];
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10005A660;
  *(v18 + 24) = v17;
  v28 = sub_10005A668;
  v29 = v18;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_10005A770;
  *(&v27 + 1) = &unk_10015E4C0;
  v19 = _Block_copy(&aBlock);
  v20 = v2;

  [v5 configureConnection:v19];
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    [v5 activate];
    v21 = *&v2[v11];
    *&v2[v11] = v5;
    v22 = v5;

    if ([v22 remoteTarget])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    aBlock = v24;
    v27 = v25;
    if (*(&v25 + 1))
    {
      sub_1000077C8(&qword_1001746C8, &qword_10011B3C8);
      if (swift_dynamicCast())
      {
        *&v20[OBJC_IVAR____TtC9AirDropUI25ProximityHandoffUIService_proximityHandoffUIClient] = v23;

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      sub_1000159AC(&aBlock, &qword_1001746C0, &qword_10011A510);
    }
  }
}

uint64_t sub_10005A628()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005A690(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10005A6A8()
{
  result = qword_100173D90;
  if (!qword_100173D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100173D90);
  }

  return result;
}

uint64_t sub_10005A6F4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10005A77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006264C();

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_10005A800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006264C();

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_10005A884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2 <= 0.75)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = (*v2 + -0.75) * 4.0;
  }

  v6 = sub_1000077C8(&qword_100174D50, &qword_10011C048);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = sub_1000077C8(&qword_100174D58, &unk_10011C050);
  *(a2 + *(result + 36)) = v5;
  return result;
}

double sub_10005A940@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_10005A94C(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_10005A958(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_10005A984;
}

double sub_10005A984(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t sub_10005A998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000077C8(&qword_100174C08, &qword_10011BD88);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v9 = *v2;
  v10 = sub_1000077C8(&qword_100174C10, &qword_10011BD90);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = &v8[*(v6 + 44)];
  v12 = 80.0;
  if (v9)
  {
    v13 = 0.0;
  }

  else
  {
    v12 = 0.0;
    v13 = 1.0;
  }

  *v11 = v12;
  v11[8] = 0;
  sub_100021A84(v8, a2, &qword_100174C08, &qword_10011BD88);
  result = sub_1000077C8(&qword_100174C18, &qword_10011BD98);
  *(a2 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_10005AAE0()
{
  v0 = sub_1000077C8(&qword_100174920, &qword_10011B678);
  sub_1000154C0(v0, qword_1001746D0);
  sub_100007D20(v0, qword_1001746D0);
  sub_1000077C8(&qword_100174928, &qword_10011B680);
  sub_100007CCC(&qword_100174930, &qword_10011B688);
  sub_100007CCC(&qword_100174938, &qword_10011B690);
  sub_100007CCC(&qword_100174940, &qword_10011B698);
  sub_100007CCC(&qword_100174948, &qword_10011B6A0);
  sub_1000199C8(&qword_100174950, &qword_100174940, &qword_10011B698, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  sub_1000199C8(&qword_100174958, &qword_100174948, &qword_10011B6A0, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  swift_getOpaqueTypeConformance2();
  sub_1000199C8(&qword_100174960, &qword_100174938, &qword_10011B690, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  swift_getOpaqueTypeConformance2();
  return KeyframeTimeline.init<A>(initialValue:content:)();
}

uint64_t sub_10005ACE4@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v1 = sub_1000077C8(&qword_100174928, &qword_10011B680);
  v2 = *(v1 - 8);
  v57 = v1;
  v58 = v2;
  __chkstk_darwin(v1);
  v55 = &v44 - v3;
  v54 = sub_1000077C8(&qword_100174930, &qword_10011B688);
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v44 - v4;
  v52 = sub_1000077C8(&qword_100174938, &qword_10011B690);
  v65 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v44 - v7;
  v8 = sub_1000077C8(&qword_100174948, &qword_10011B6A0);
  v9 = *(v8 - 8);
  v63 = v8;
  v64 = v9;
  __chkstk_darwin(v8);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v61 = &v44 - v12;
  v13 = sub_1000077C8(&qword_100174940, &qword_10011B698);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v16;
  __chkstk_darwin(v17);
  v62 = &v44 - v18;
  swift_getKeyPath();
  v19 = sub_1000077C8(&qword_100174968, &qword_10011B6C8);
  v20 = sub_1000199C8(&qword_100174970, &qword_100174968, &qword_10011B6C8, &protocol conformance descriptor for SpringKeyframe<A>);
  KeyframeTrack.init(_:content:)();
  v47 = sub_1000199C8(&qword_100174950, &qword_100174940, &qword_10011B698, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v44 = v13;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v21 = *(v14 + 8);
  v48 = v14 + 8;
  v49 = v21;
  v21(v16, v13);
  swift_getKeyPath();
  sub_1000077C8(&qword_100174978, &qword_10011B6F0);
  v22 = sub_100007CCC(&qword_100174980, &qword_10011B6F8);
  v23 = sub_1000199C8(&qword_100174988, &qword_100174980, &qword_10011B6F8, &protocol conformance descriptor for LinearKeyframe<A>);
  v66 = &type metadata for Double;
  v67 = v22;
  v68 = v19;
  v69 = v23;
  v70 = v20;
  swift_getOpaqueTypeConformance2();
  v24 = v46;
  KeyframeTrack.init(_:content:)();
  v25 = sub_1000199C8(&qword_100174958, &qword_100174948, &qword_10011B6A0, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v26 = v63;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v27 = *(v64 + 8);
  v64 += 8;
  v45 = v27;
  v27(v24, v26);
  swift_getKeyPath();
  sub_1000077C8(&qword_100174990, &qword_10011B720);
  v66 = &type metadata for Double;
  v67 = v22;
  v68 = v22;
  v69 = v23;
  v70 = v23;
  swift_getOpaqueTypeConformance2();
  v28 = v50;
  KeyframeTrack.init(_:content:)();
  v29 = sub_1000199C8(&qword_100174960, &qword_100174938, &qword_10011B690, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v30 = v51;
  v31 = v52;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v32 = *(v65 + 8);
  v65 += 8;
  v46 = v32;
  (v32)(v28, v31);
  v33 = v44;
  v34 = v47;
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  v35 = v53;
  v36 = v63;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v66 = &type metadata for SwoopTransitionViewModifier.Value;
  v67 = v33;
  v68 = v36;
  v69 = v34;
  v70 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v55;
  v39 = v35;
  v40 = v54;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v66 = &type metadata for SwoopTransitionViewModifier.Value;
  v67 = v40;
  v68 = v31;
  v69 = OpaqueTypeConformance2;
  v70 = v29;
  swift_getOpaqueTypeConformance2();
  v41 = v57;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v58 + 8))(v38, v41);
  (*(v56 + 8))(v39, v40);
  v42 = v49;
  v49(v60, v33);
  (v46)(v30, v31);
  v45(v61, v63);
  return v42(v62, v33);
}

uint64_t sub_10005B548@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for Spring();
  __chkstk_darwin(v1 - 8);
  v20 = sub_1000077C8(&qword_100174968, &qword_10011B6C8);
  v24 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for UnitCurve();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000077C8(&qword_100174980, &qword_10011B6F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v21 = &v19 - v13;
  v26 = 0x3FDCCCCCCCCCCCCDLL;
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  sub_1000199C8(&qword_100174988, &qword_100174980, &qword_10011B6F8, &protocol conformance descriptor for LinearKeyframe<A>);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v22 = *(v9 + 8);
  v23 = v9 + 8;
  v22(v11, v8);
  v28 = 0x3FF0000000000000;
  Spring.init(mass:stiffness:damping:allowOverDamping:)();
  v26 = 0;
  v27 = 1;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  sub_1000199C8(&qword_100174970, &qword_100174968, &qword_10011B6C8, &protocol conformance descriptor for SpringKeyframe<A>);
  v14 = v20;
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v15 = *(v24 + 8);
  v15(v3, v14);
  v16 = v21;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v17 = v22;
  v22(v11, v8);
  v15(v6, v14);
  return v17(v16, v8);
}

uint64_t sub_10005B984()
{
  v0 = sub_1000077C8(&qword_100174920, &qword_10011B678);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  if (qword_100172178 != -1)
  {
    swift_once();
  }

  v4 = sub_100007D20(v0, qword_1001746D0);
  (*(v1 + 16))(v3, v4, v0);
  KeyframeTimeline.duration.getter();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_10017F238 = v6;
  return result;
}

uint64_t sub_10005BAC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v5 = type metadata accessor for GlobalCoordinateSpace();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&qword_100174C60, &qword_10011BDC8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = sub_1000077C8(&qword_100174C58, &qword_10011BDC0);
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  static UnitPoint.center.getter();
  v17 = type metadata accessor for EmptyVisualEffect();
  v18 = sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  VisualEffect.scale(_:anchor:)();
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v6 + 8))(v8, v5);
  v36.origin.x = v20;
  v36.origin.y = v22;
  v36.size.width = v24;
  v36.size.height = v26;
  CGRectGetMidY(v36);
  GeometryProxy.size.getter();
  v34 = v17;
  v35 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  VisualEffect.offset(x:y:)();
  (*(v10 + 8))(v12, v9);
  v34 = v9;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v31;
  VisualEffect.blur(radius:opaque:)();
  return (*(v32 + 8))(v16, v28);
}

uint64_t sub_10005BE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006197C();

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_10005BED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006197C();

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

void sub_10005BF58()
{
  if (qword_100172178 != -1)
  {
    swift_once();
  }

  v0 = sub_1000077C8(&qword_100174920, &qword_10011B678);
  sub_100007D20(v0, qword_1001746D0);
  KeyframeTimeline.value(time:)();
  v1 = swift_allocObject();
  *(v1 + 16) = v2;
  *(v1 + 32) = v3;
  sub_1000077C8(&qword_100174C40, &qword_10011BDB0);
  sub_1000077C8(&qword_100174C48, &qword_10011BDB8);
  sub_1000199C8(&qword_100174C50, &qword_100174C40, &qword_10011BDB0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100007CCC(&qword_100174C58, &qword_10011BDC0);
  sub_100007CCC(&qword_100174C60, &qword_10011BDC8);
  type metadata accessor for EmptyVisualEffect();
  sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();
}

double (*sub_10005C1C8(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_100062938;
}

void sub_10005C1F4(uint64_t a1@<X0>, uint64_t a2@<X1>, _TtC9AirDropUI33AirDropTransferSessionsController **a3@<X8>, double a4@<D0>)
{
  v45 = a2;
  v5 = a1;
  v7 = sub_1000077C8(&qword_1001748F0, &qword_10011B640);
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  v46 = sub_1000077C8(&qword_1001748F8, &qword_10011B648);
  __chkstk_darwin(v46);
  v11 = &v45 - v10;
  v12 = sub_1000077C8(&qword_100174900, &unk_10011B650);
  __chkstk_darwin(v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  v48 = v5;
  v21 = TransitionPhase.isIdentity.getter();
  v47 = a3;
  if (v21)
  {
    sub_1000077C8(&qword_100174918, &qword_10011B670);
    v22 = swift_allocObject();
    *v22->connection = xmmword_1001186F0;
    v23 = [objc_opt_self() effectWithBlurRadius:25.0];
    if (!v23)
    {
      __break(1u);
      return;
    }

    v24 = v12;
    *v22->airDropClient = v23;
    v22->transfersMonitorTask[0] = 1;
  }

  else
  {
    v24 = v12;
    v22 = &_swiftEmptyArrayStorage;
  }

  v25 = a4 * 0.75;
  v26 = &v9[*(v7 + 36)];
  v27 = *(type metadata accessor for RoundedRectangle() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = v25;
  v26[1] = v25;
  *(v26 + *(sub_1000077C8(&qword_100177710, &qword_100119680) + 36)) = 256;
  v30 = sub_1000077C8(&qword_100174908, &qword_10011B660);
  (*(*(v30 - 8) + 16))(v9, v45, v30);
  v31 = 0;
  v32 = v24;
  if (TransitionPhase.isIdentity.getter())
  {
    if (qword_100172180 != -1)
    {
      swift_once();
    }

    v31 = qword_10017F238;
  }

  sub_100021A84(v9, v11, &qword_1001748F0, &qword_10011B640);
  *&v11[*(v46 + 36)] = v31;
  if (qword_100172180 != -1)
  {
    swift_once();
  }

  static Animation.linear(duration:)();
  v33 = Animation.speed(_:)();

  v34 = TransitionPhase.isIdentity.getter();
  sub_100021A84(v11, v17, &qword_1001748F8, &qword_10011B648);
  v35 = &v17[*(v32 + 36)];
  *v35 = v33;
  v35[8] = v34 & 1;
  sub_100021A84(v17, v20, &qword_100174900, &unk_10011B650);
  sub_100007BA4(v20, v14, &qword_100174900, &unk_10011B650);
  v36 = v47;
  *v47 = v22;
  *(v36 + 1) = xmmword_10011B3E0;
  v37 = sub_1000077C8(&qword_100174910, &qword_10011B668);
  sub_100007BA4(v14, v36 + *(v37 + 48), &qword_100174900, &unk_10011B650);

  sub_100060AB4(v20);
  sub_100060AB4(v14);
  v22, v38, v39, v40, v41, v42, v43, v44;
}

void sub_10005C68C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  *a3 = static Alignment.center.getter();
  a3[1] = v8;
  v9 = sub_1000077C8(&qword_1001748E8, &qword_10011B638);
  sub_10005C1F4(a2, a1, (a3 + *(v9 + 44)), v7);
}

uint64_t sub_10005C78C()
{
  sub_10002534C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_10005C8A4(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v16 - v8;
  if (a1 == 1)
  {
LABEL_9:
    v10 = &enum case for ColorScheme.light(_:);
    goto LABEL_10;
  }

  if (a1 != 2)
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100007D20(v11, qword_10017F350);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unknown background luminance level: %lu", v14, 0xCu);
    }

    goto LABEL_9;
  }

  v10 = &enum case for ColorScheme.dark(_:);
LABEL_10:
  (*(v3 + 104))(v9, *v10, v2, v7);
  (*(v3 + 16))(v5, v9, v2);
  sub_1000077C8(&qword_100174A60, &qword_10011B8C0);
  Binding.wrappedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

id sub_10005CAE4()
{
  sub_1000077C8(&qword_100174C70, &unk_10011BDD0);
  UIViewRepresentableContext.coordinator.getter();
  v0 = [objc_allocWithZone(_UILumaTrackingBackdropView) initWithTransitionBoundaries:v2 delegate:0.4 frame:{0.6, 0.0, 0.0, 0.0, 0.0}];

  [v0 setPaused:0];
  return v0;
}

double sub_10005CB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  sub_1000077C8(&qword_100174C70, &unk_10011BDD0);
  UIViewRepresentableContext.coordinator.getter();
  v7 = v13[1];
  sub_1000619D0(v4, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_100061A38(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  *(v7 + 16) = sub_100062960;
  *(v7 + 24) = v9;
  sub_10002534C(v10, v11);

  return result;
}

void sub_10005CCBC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  type metadata accessor for LumaTrackingBackdropView.Coordinator();
  v6 = swift_allocObject();
  sub_1000619D0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_100061A38(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *(v6 + 16) = sub_100061A9C;
  *(v6 + 24) = v8;
  sub_10002534C(0, 0);
  *a2 = v6;
}

uint64_t sub_10005CE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100061928(&qword_100174C78, type metadata accessor for LumaTrackingBackdropView, &unk_10011B920);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10005CEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100061928(&qword_100174C78, type metadata accessor for LumaTrackingBackdropView, &unk_10011B920);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10005CF40(uint64_t a1)
{
  sub_100061928(&qword_100174C78, type metadata accessor for LumaTrackingBackdropView, &unk_10011B920);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10005CF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(sub_1000077C8(&qword_100174998, &qword_10011B758) + 36));
  sub_1000077C8(&qword_1001749A0, &qword_10011B760);
  sub_1000077C8(&qword_100174838, &qword_10011B578);
  State.wrappedValue.getter();
  *v5 = KeyPath;
  v6 = sub_1000077C8(&qword_1001749A8, &qword_10011B768);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = a2 + *(sub_1000077C8(&qword_1001749B0, &qword_10011B770) + 36);
  State.projectedValue.getter();
  result = sub_1000077C8(&qword_1001749B8, &qword_10011B778);
  v12 = (v10 + *(result + 36));
  *v12 = v7;
  v12[1] = v9;
  return result;
}

uint64_t sub_10005D0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  sub_100061684((v22 - v9));
  (*(v5 + 104))(v7, enum case for ColorScheme.light(_:), v4);
  v11 = static ColorScheme.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  v13 = 1.718;
  if (v11)
  {
    v13 = 1.287;
  }

  v14 = -1.107;
  if (v11)
  {
    v14 = -0.715;
  }

  *v22 = v13;
  *&v22[1] = v14;
  v15 = -0.112;
  if (v11)
  {
    v15 = -0.072;
  }

  *&v22[2] = v15;
  v22[3] = 0;
  v16 = -0.329;
  if (v11)
  {
    v16 = -0.213;
  }

  v17 = 0.5;
  if (v11)
  {
    v17 = 0.0;
  }

  *&v22[4] = v17;
  *&v22[5] = v16;
  v18 = 0.941;
  if (v11)
  {
    v18 = 0.785;
  }

  v19 = 1.935;
  if (v11)
  {
    v19 = 1.428;
  }

  *&v22[6] = v18;
  *&v22[7] = v15;
  v22[8] = 0;
  *&v22[9] = v17;
  *&v22[10] = v16;
  *&v22[11] = v14;
  *&v22[12] = v19;
  v22[13] = 0;
  *&v22[14] = v17;
  v23 = xmmword_10011B3F0;
  v24 = 0;
  sub_1000077C8(&qword_100174BF0, &qword_10011BD70);
  View._colorMatrix(_:)();
  v20 = sub_1000077C8(&qword_100174BF8, &qword_10011BD78);
  return (*(*(v20 - 8) + 16))(a2, a1, v20);
}

id sub_10005D3AC@<X0>(id result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 1) == 0)
  {
    v5 = &_swiftEmptyArrayStorage;
    v3 = &_swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  sub_1000077C8(&qword_100174918, &qword_10011B670);
  v3 = swift_allocObject();
  *v3->connection = xmmword_10011B400;
  v4 = objc_opt_self();
  result = [v4 effectWithBlurRadius:35.0];
  if (result)
  {
    *v3->airDropClient = result;
    v3->transfersMonitorTask[0] = 1;
    *v3->interventionTasks = 0xBFC3333333333333;
    v3->nearbySharingInteractionCoordinator[0] = 2;
    v6[0] = xmmword_10011B410;
    v6[1] = xmmword_10011B420;
    v6[2] = xmmword_10011B430;
    v6[3] = xmmword_10011B420;
    v6[4] = xmmword_10011B440;
    v6[5] = xmmword_10011B450;
    v6[6] = xmmword_10011B460;
    v6[7] = xmmword_10011B470;
    v6[8] = vdupq_n_s64(0x3FABA5E353F7CED9uLL);
    v6[9] = xmmword_10011B480;
    *v3->userNotificationsCenter = [objc_opt_self() colorEffectMatrix:v6];
    v3->lockStateMonitor[0] = 0;
    v5 = swift_allocObject();
    *v5->connection = xmmword_1001186F0;
    result = [v4 effectWithBlurRadius:72.0];
    if (result)
    {
      *v5->airDropClient = result;
      v5->transfersMonitorTask[0] = 1;
LABEL_6:
      *a2 = v3;
      *(a2 + 8) = xmmword_10011B490;
      *(a2 + 24) = v5;
      *(a2 + 32) = xmmword_10011B4A0;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 sub_10005D580@<Q0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = static Alignment.center.getter();
  v7 = v6;
  sub_10005D3AC(v4, &v12);
  v8 = v12;
  v9 = v14;
  result = v13;
  v11 = v15;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = result;
  *(a2 + 40) = v9;
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_10005D5F0(double a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = type metadata accessor for GlobalCoordinateSpace();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    GeometryProxy.size.getter();
    static CoordinateSpaceProtocol<>.global.getter();
    GeometryProxy.frame<A>(in:)();
    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for EmptyVisualEffect();
  sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  return VisualEffect.offset(x:y:)();
}

void sub_10005D774()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_1000077C8(&qword_100174C20, &qword_10011BDA0);
  sub_1000077C8(&qword_100174C28, &qword_10011BDA8);
  sub_1000199C8(&qword_100174C30, &qword_100174C20, &qword_10011BDA0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  type metadata accessor for EmptyVisualEffect();
  sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();
}

uint64_t sub_10005D8EC()
{
  v0 = sub_1000077C8(&qword_100174BB8, &qword_10011BCE8);
  sub_1000154C0(v0, qword_1001746E8);
  sub_100007D20(v0, qword_1001746E8);
  sub_1000077C8(&qword_100174BC0, &qword_10011BCF0);
  sub_100007CCC(&qword_100174BC8, &qword_10011BCF8);
  sub_100007CCC(&qword_100174BD0, &qword_10011BD00);
  sub_100007CCC(&qword_100174BD8, &qword_10011BD08);
  sub_1000199C8(&qword_100174BE0, &qword_100174BD8, &qword_10011BD08, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  swift_getOpaqueTypeConformance2();
  sub_1000199C8(&qword_100174BE8, &qword_100174BD0, &qword_10011BD00, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  swift_getOpaqueTypeConformance2();
  return KeyframeTimeline.init<A>(initialValue:content:)();
}

uint64_t sub_10005DAB4@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1000077C8(&qword_100174BC0, &qword_10011BCF0);
  v2 = *(v1 - 8);
  v44 = v1;
  v45 = v2;
  __chkstk_darwin(v1);
  v42 = &v32 - v3;
  v41 = sub_1000077C8(&qword_100174BC8, &qword_10011BCF8);
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v32 - v4;
  v39 = sub_1000077C8(&qword_100174BD0, &qword_10011BD00);
  v49 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v32 - v7;
  v8 = sub_1000077C8(&qword_100174BD8, &qword_10011BD08);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v48 = &v32 - v16;
  swift_getKeyPath();
  sub_1000077C8(&qword_100174968, &qword_10011B6C8);
  sub_1000199C8(&qword_100174970, &qword_100174968, &qword_10011B6C8, &protocol conformance descriptor for SpringKeyframe<A>);
  KeyframeTrack.init(_:content:)();
  v17 = sub_1000199C8(&qword_100174BE0, &qword_100174BD8, &qword_10011BD08, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  static KeyframesBuilder.buildExpression<A>(_:)();
  v18 = *(v9 + 8);
  v47 = v14;
  v18(v14, v8);
  v35 = v18;
  v36 = v9 + 8;
  swift_getKeyPath();
  KeyframeTrack.init(_:content:)();
  static KeyframesBuilder.buildExpression<A>(_:)();
  v18(v11, v8);
  swift_getKeyPath();
  sub_1000077C8(&qword_100174980, &qword_10011B6F8);
  sub_1000199C8(&qword_100174988, &qword_100174980, &qword_10011B6F8, &protocol conformance descriptor for LinearKeyframe<A>);
  v19 = v37;
  KeyframeTrack.init(_:content:)();
  v20 = sub_1000199C8(&qword_100174BE8, &qword_100174BD0, &qword_10011BD00, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v21 = v38;
  v22 = v19;
  v23 = v39;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v24 = *(v49 + 8);
  v49 += 8;
  v34 = v24;
  v24(v22, v23);
  v33 = v11;
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  v25 = v40;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v50 = &type metadata for SwapOutTransitionViewModifier.Value;
  v51 = v8;
  v52 = v8;
  v53 = v17;
  v54 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v41;
  v28 = v42;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v50 = &type metadata for SwapOutTransitionViewModifier.Value;
  v51 = v27;
  v52 = v23;
  v53 = OpaqueTypeConformance2;
  v54 = v20;
  swift_getOpaqueTypeConformance2();
  v29 = v44;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v45 + 8))(v28, v29);
  (*(v43 + 8))(v25, v27);
  v30 = v35;
  v35(v33, v8);
  v34(v21, v23);
  v30(v47, v8);
  return (v30)(v48, v8);
}

uint64_t sub_10005E16C(double a1)
{
  v2 = type metadata accessor for Spring();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000077C8(&qword_100174968, &qword_10011B6C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  v14 = a1;
  Spring.init(mass:stiffness:damping:allowOverDamping:)();
  v12[1] = 0;
  v13 = 1;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  sub_1000199C8(&qword_100174970, &qword_100174968, &qword_10011B6C8, &protocol conformance descriptor for SpringKeyframe<A>);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v10 = *(v4 + 8);
  v10(v6, v3);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (v10)(v9, v3);
}

uint64_t sub_10005E3CC()
{
  v0 = type metadata accessor for UnitCurve();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000077C8(&qword_100174980, &qword_10011B6F8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v10 - v6;
  v10[1] = 0x4028000000000000;
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  sub_1000199C8(&qword_100174988, &qword_100174980, &qword_10011B6F8, &protocol conformance descriptor for LinearKeyframe<A>);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v8 = *(v2 + 8);
  v8(v4, v1);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (v8)(v7, v1);
}

uint64_t sub_10005E5C8()
{
  v0 = sub_1000077C8(&qword_100174BB8, &qword_10011BCE8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  if (qword_100172188 != -1)
  {
    swift_once();
  }

  v4 = sub_100007D20(v0, qword_1001746E8);
  (*(v1 + 16))(v3, v4, v0);
  KeyframeTimeline.duration.getter();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_10017F240 = v6;
  return result;
}

uint64_t sub_10005E704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000625F8();

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_10005E788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000625F8();

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

void sub_10005E80C()
{
  if (qword_100172188 != -1)
  {
    swift_once();
  }

  v0 = sub_1000077C8(&qword_100174BB8, &qword_10011BCE8);
  sub_100007D20(v0, qword_1001746E8);
  KeyframeTimeline.value(time:)();
  v1 = swift_allocObject();
  *(v1 + 16) = v2;
  *(v1 + 32) = v3;
  sub_1000077C8(&qword_100174D38, &qword_10011C040);
  sub_1000077C8(&qword_100174C48, &qword_10011BDB8);
  sub_1000199C8(&qword_100174D40, &qword_100174D38, &qword_10011C040, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100007CCC(&qword_100174C58, &qword_10011BDC0);
  sub_100007CCC(&qword_100174C60, &qword_10011BDC8);
  type metadata accessor for EmptyVisualEffect();
  sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();
}

uint64_t sub_10005EA7C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = sub_1000077C8(&qword_100174B98, &qword_10011BCC8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_1000077C8(&qword_100174BA0, &qword_10011BCD0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = a4 * 0.75;
  v15 = &v10[*(v8 + 44)];
  v16 = *(type metadata accessor for RoundedRectangle() + 20);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = v14;
  v15[1] = v14;
  *(v15 + *(sub_1000077C8(&qword_100177710, &qword_100119680) + 36)) = 256;
  v19 = sub_1000077C8(&qword_100174BA8, &qword_10011BCD8);
  (*(*(v19 - 8) + 16))(v10, a1, v19);
  v20 = 0;
  if ((TransitionPhase.isIdentity.getter() & 1) == 0)
  {
    if (qword_100172190 != -1)
    {
      swift_once();
    }

    v20 = qword_10017F240;
  }

  sub_100021A84(v10, v13, &qword_100174B98, &qword_10011BCC8);
  *&v13[*(v11 + 36)] = v20;
  if (qword_100172190 != -1)
  {
    swift_once();
  }

  v21 = static Animation.timingCurve(_:_:_:_:duration:)();
  v22 = TransitionPhase.isIdentity.getter();
  sub_100021A84(v13, a3, &qword_100174BA0, &qword_10011BCD0);
  result = sub_1000077C8(&qword_100174BB0, &qword_10011BCE0);
  v24 = a3 + *(result + 36);
  *v24 = v21;
  *(v24 + 8) = v22 & 1;
  return result;
}

uint64_t sub_10005ED60()
{
  v0 = sub_1000077C8(&qword_100174B60, &qword_10011BC40);
  sub_1000154C0(v0, qword_100174700);
  sub_100007D20(v0, qword_100174700);
  sub_1000077C8(&qword_100174B68, &qword_10011BC48);
  sub_100007CCC(&qword_100174B70, &qword_10011BC50);
  sub_100007CCC(&qword_100174B78, &qword_10011BC58);
  sub_100007CCC(&qword_100174B80, &qword_10011BC60);
  sub_1000199C8(&qword_100174B88, &qword_100174B80, &qword_10011BC60, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  swift_getOpaqueTypeConformance2();
  sub_1000199C8(&qword_100174B90, &qword_100174B78, &qword_10011BC58, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  swift_getOpaqueTypeConformance2();
  return KeyframeTimeline.init<A>(initialValue:content:)();
}

uint64_t sub_10005EF2C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_1000077C8(&qword_100174B68, &qword_10011BC48);
  v2 = *(v1 - 8);
  v47 = v1;
  v48 = v2;
  __chkstk_darwin(v1);
  v45 = &v35 - v3;
  v44 = sub_1000077C8(&qword_100174B70, &qword_10011BC50);
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v35 - v4;
  v42 = sub_1000077C8(&qword_100174B78, &qword_10011BC58);
  v54 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v41 = &v35 - v7;
  v8 = sub_1000077C8(&qword_100174B80, &qword_10011BC60);
  v53 = *(v8 - 8);
  __chkstk_darwin(v8);
  v50 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  __chkstk_darwin(v13);
  v52 = &v35 - v14;
  KeyPath = swift_getKeyPath();
  v35 = sub_1000077C8(&qword_100174978, &qword_10011B6F0);
  v15 = sub_100007CCC(&qword_100174980, &qword_10011B6F8);
  v36 = v15;
  v16 = sub_100007CCC(&qword_100174968, &qword_10011B6C8);
  v17 = sub_1000199C8(&qword_100174988, &qword_100174980, &qword_10011B6F8, &protocol conformance descriptor for LinearKeyframe<A>);
  v18 = sub_1000199C8(&qword_100174970, &qword_100174968, &qword_10011B6C8, &protocol conformance descriptor for SpringKeyframe<A>);
  v55 = &type metadata for Double;
  v56 = v15;
  v57 = v16;
  v58 = v17;
  v59 = v18;
  v38 = &opaque type descriptor for <<opaque return type of static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)>>;
  swift_getOpaqueTypeConformance2();
  KeyframeTrack.init(_:content:)();
  v37 = &protocol conformance descriptor for KeyframeTrack<A, B, C>;
  v19 = sub_1000199C8(&qword_100174B88, &qword_100174B80, &qword_10011BC60, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  static KeyframesBuilder.buildExpression<A>(_:)();
  v20 = v53 + 8;
  v21 = *(v53 + 8);
  v51 = v12;
  v21(v12, v8);
  KeyPath = v21;
  v53 = v20;
  swift_getKeyPath();
  v22 = v50;
  KeyframeTrack.init(_:content:)();
  static KeyframesBuilder.buildExpression<A>(_:)();
  v21(v22, v8);
  swift_getKeyPath();
  sub_1000077C8(&qword_100174990, &qword_10011B720);
  v55 = &type metadata for Double;
  v56 = v36;
  v57 = v36;
  v58 = v17;
  v59 = v17;
  swift_getOpaqueTypeConformance2();
  v23 = v40;
  KeyframeTrack.init(_:content:)();
  v24 = sub_1000199C8(&qword_100174B90, &qword_100174B78, &qword_10011BC58, v37);
  v26 = v41;
  v25 = v42;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v27 = *(v54 + 8);
  v54 += 8;
  v38 = v27;
  v27(v23, v25);
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  v28 = v43;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v55 = &type metadata for SwapInTransitionViewModifier.Value;
  v56 = v8;
  v57 = v8;
  v58 = v19;
  v59 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v44;
  v31 = v45;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v55 = &type metadata for SwapInTransitionViewModifier.Value;
  v56 = v30;
  v57 = v25;
  v58 = OpaqueTypeConformance2;
  v59 = v24;
  swift_getOpaqueTypeConformance2();
  v32 = v47;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v48 + 8))(v31, v32);
  (*(v46 + 8))(v28, v30);
  v33 = KeyPath;
  KeyPath(v50, v8);
  v38(v26, v25);
  v33(v51, v8);
  return (v33)(v52, v8);
}

uint64_t sub_10005F6BC@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a4@<D2>)
{
  v31 = a1;
  v6 = type metadata accessor for Spring();
  __chkstk_darwin(v6 - 8);
  v27 = sub_1000077C8(&qword_100174968, &qword_10011B6C8);
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v26 = &v25 - v10;
  v11 = type metadata accessor for UnitCurve();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1000077C8(&qword_100174980, &qword_10011B6F8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v28 = &v25 - v17;
  v32 = a2;
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  sub_1000199C8(&qword_100174988, &qword_100174980, &qword_10011B6F8, &protocol conformance descriptor for LinearKeyframe<A>);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v18 = *(v13 + 8);
  v25 = v13 + 8;
  v29 = v18;
  v18(v15, v12);
  v34 = a4;
  Spring.init(mass:stiffness:damping:allowOverDamping:)();
  v32 = 0.0;
  v33 = 1;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  sub_1000199C8(&qword_100174970, &qword_100174968, &qword_10011B6C8, &protocol conformance descriptor for SpringKeyframe<A>);
  v19 = v26;
  v20 = v27;
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v21 = *(v30 + 8);
  v21(v8, v20);
  v22 = v28;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v23 = v29;
  v29(v15, v12);
  v21(v19, v20);
  return v23(v22, v12);
}

uint64_t sub_10005FB10@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v20 = a1;
  v21 = a2;
  v5 = type metadata accessor for UnitCurve();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000077C8(&qword_100174980, &qword_10011B6F8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  v22 = a3;
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  sub_1000199C8(&qword_100174988, &qword_100174980, &qword_10011B6F8, &protocol conformance descriptor for LinearKeyframe<A>);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v16 = *(v7 + 8);
  v17 = v16(v12, v6);
  v22 = 0.0;
  v20(v17);
  LinearKeyframe.init(_:duration:timingCurve:)();
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v16(v9, v6);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v16(v9, v6);
  v16(v12, v6);
  return v16(v15, v6);
}

uint64_t sub_10005FDE4()
{
  v0 = sub_1000077C8(&qword_100174B60, &qword_10011BC40);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  if (qword_100172198 != -1)
  {
    swift_once();
  }

  v4 = sub_100007D20(v0, qword_100174700);
  (*(v1 + 16))(v3, v4, v0);
  KeyframeTimeline.duration.getter();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_10017F248 = v6;
  return result;
}

uint64_t sub_10005FF20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v5 = type metadata accessor for GlobalCoordinateSpace();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&qword_100174C60, &qword_10011BDC8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = sub_1000077C8(&qword_100174C58, &qword_10011BDC0);
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  static UnitPoint.center.getter();
  v17 = type metadata accessor for EmptyVisualEffect();
  v18 = sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  VisualEffect.scale(_:anchor:)();
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v6 + 8))(v8, v5);
  v36.origin.x = v20;
  v36.origin.y = v22;
  v36.size.width = v24;
  v36.size.height = v26;
  CGRectGetMidY(v36);
  GeometryProxy.size.getter();
  v34 = v17;
  v35 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  VisualEffect.offset(x:y:)();
  (*(v10 + 8))(v12, v9);
  v34 = v9;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v31;
  VisualEffect.blur(radius:opaque:)();
  return (*(v32 + 8))(v16, v28);
}

uint64_t sub_1000602B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000625A4();

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_100060338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000625A4();

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

void sub_1000603BC()
{
  if (qword_100172198 != -1)
  {
    swift_once();
  }

  v0 = sub_1000077C8(&qword_100174B60, &qword_10011BC40);
  sub_100007D20(v0, qword_100174700);
  KeyframeTimeline.value(time:)();
  v1 = swift_allocObject();
  *(v1 + 16) = v2;
  *(v1 + 32) = v3;
  sub_1000077C8(&qword_100174D20, &qword_10011C038);
  sub_1000077C8(&qword_100174C48, &qword_10011BDB8);
  sub_1000199C8(&qword_100174D28, &qword_100174D20, &qword_10011C038, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100007CCC(&qword_100174C58, &qword_10011BDC0);
  sub_100007CCC(&qword_100174C60, &qword_10011BDC8);
  type metadata accessor for EmptyVisualEffect();
  sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();
}

uint64_t sub_10006062C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = sub_1000077C8(&qword_100174B40, &qword_10011BC20);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_1000077C8(&qword_100174B48, &qword_10011BC28);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = a4 * 0.75;
  v15 = &v10[*(v8 + 44)];
  v16 = *(type metadata accessor for RoundedRectangle() + 20);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = v14;
  v15[1] = v14;
  *(v15 + *(sub_1000077C8(&qword_100177710, &qword_100119680) + 36)) = 256;
  v19 = sub_1000077C8(&qword_100174B50, &qword_10011BC30);
  (*(*(v19 - 8) + 16))(v10, a1, v19);
  v20 = 0;
  if (TransitionPhase.isIdentity.getter())
  {
    if (qword_1001721A0 != -1)
    {
      swift_once();
    }

    v20 = qword_10017F248;
  }

  sub_100021A84(v10, v13, &qword_100174B40, &qword_10011BC20);
  *&v13[*(v11 + 36)] = v20;
  if (qword_1001721A0 != -1)
  {
    swift_once();
  }

  v21 = static Animation.timingCurve(_:_:_:_:duration:)();
  v22 = TransitionPhase.isIdentity.getter();
  sub_100021A84(v13, a3, &qword_100174B48, &qword_10011BC28);
  result = sub_1000077C8(&qword_100174B58, &qword_10011BC38);
  v24 = a3 + *(result + 36);
  *v24 = v21;
  *(v24 + 8) = v22 & 1;
  return result;
}

uint64_t sub_100060910()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  [v1 displayCornerRadius];

  sub_100060A0C();
  AnyTransition.init<A>(_:)();
  v2 = [v0 currentTraitCollection];
  [v2 displayCornerRadius];

  sub_100060A60();
  AnyTransition.init<A>(_:)();
  v3 = static AnyTransition.asymmetric(insertion:removal:)();

  return v3;
}

unint64_t sub_100060A0C()
{
  result = qword_1001748D8;
  if (!qword_1001748D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001748D8);
  }

  return result;
}

unint64_t sub_100060A60()
{
  result = qword_1001748E0;
  if (!qword_1001748E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001748E0);
  }

  return result;
}

uint64_t sub_100060AB4(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_100174900, &unk_10011B650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s9AirDropUI27SwoopTransitionViewModifierV5ValueVwet_0(uint64_t a1, int a2)
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

uint64_t _s9AirDropUI27SwoopTransitionViewModifierV5ValueVwst_0(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MoveUpEffectModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MoveUpEffectModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_100060CE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_100060F94(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100060D5C(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100060E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = sub_1000077C8(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_100060EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = sub_1000077C8(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_100060F94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ColorScheme();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10006103C()
{
  result = qword_100174B10;
  if (!qword_100174B10)
  {
    sub_100007CCC(&qword_1001749B0, &qword_10011B770);
    sub_1000610F4();
    sub_1000199C8(&qword_100174B30, &qword_1001749B8, &qword_10011B778, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174B10);
  }

  return result;
}

unint64_t sub_1000610F4()
{
  result = qword_100174B18;
  if (!qword_100174B18)
  {
    sub_100007CCC(&qword_100174998, &qword_10011B758);
    sub_1000199C8(&qword_100174B20, &qword_1001749A8, &qword_10011B768, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000199C8(&qword_100174B28, &qword_1001749A0, &qword_10011B760, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174B18);
  }

  return result;
}

void *sub_1000612F0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10003E81C(0xD00000000000002FLL, 0x8000000100123B50, &v15);
      _os_log_impl(&_mh_execute_header, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      sub_100007920(v11);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v12 = sub_100007B90(a1, 0);
    (*(v5 + 8))(v7, v4, v12);
    return v15;
  }

  return a1;
}

uint64_t sub_1000614C4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10003E81C(1819242306, 0xE400000000000000, &v14);
      _os_log_impl(&_mh_execute_header, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      sub_100007920(v11);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v12 = sub_100023CC8(a1, 0);
    (*(v5 + 8))(v7, v4, v12);
    LOBYTE(a1) = v15;
  }

  return a1 & 1;
}

uint64_t sub_100061684@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000077C8(&qword_100174C00, &qword_10011BD80);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_100007BA4(v2, &v17 - v9, &qword_100174C00, &qword_10011BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10003E81C(0x686353726F6C6F43, 0xEB00000000656D65, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      sub_100007920(v16);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100061928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10006197C()
{
  result = qword_100174C68;
  if (!qword_100174C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174C68);
  }

  return result;
}

uint64_t sub_1000619D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LumaTrackingBackdropView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LumaTrackingBackdropView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061AA0()
{
  v1 = *(type metadata accessor for LumaTrackingBackdropView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(sub_1000077C8(&qword_100174A60, &qword_10011B8C0) + 32);
  v6 = type metadata accessor for ColorScheme();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100061BA0(uint64_t a1)
{
  type metadata accessor for LumaTrackingBackdropView(0);

  return sub_10005C8A4(a1);
}

uint64_t sub_100061CA4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    a4();
    sub_1000199C8(&qword_100174CA8, &qword_1001775B0, &qword_10011BE40, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100061D54()
{
  result = qword_100174C88;
  if (!qword_100174C88)
  {
    sub_100007CCC(&qword_100174B48, &qword_10011BC28);
    sub_100061DE0();
    sub_100061EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174C88);
  }

  return result;
}

unint64_t sub_100061DE0()
{
  result = qword_100174C90;
  if (!qword_100174C90)
  {
    sub_100007CCC(&qword_100174B40, &qword_10011BC20);
    sub_1000199C8(&qword_100174C98, &qword_100174B50, &qword_10011BC30, &protocol conformance descriptor for PlaceholderContentView<A>);
    sub_1000199C8(&qword_1001735B8, &qword_100177710, &qword_100119680, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174C90);
  }

  return result;
}

unint64_t sub_100061EC4()
{
  result = qword_100174CA0;
  if (!qword_100174CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174CA0);
  }

  return result;
}

unint64_t sub_100061F5C()
{
  result = qword_100174CB8;
  if (!qword_100174CB8)
  {
    sub_100007CCC(&qword_100174BA0, &qword_10011BCD0);
    sub_100061FE8();
    sub_1000620CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174CB8);
  }

  return result;
}

unint64_t sub_100061FE8()
{
  result = qword_100174CC0;
  if (!qword_100174CC0)
  {
    sub_100007CCC(&qword_100174B98, &qword_10011BCC8);
    sub_1000199C8(&qword_100174CC8, &qword_100174BA8, &qword_10011BCD8, &protocol conformance descriptor for PlaceholderContentView<A>);
    sub_1000199C8(&qword_1001735B8, &qword_100177710, &qword_100119680, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174CC0);
  }

  return result;
}

unint64_t sub_1000620CC()
{
  result = qword_100174CD0;
  if (!qword_100174CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174CD0);
  }

  return result;
}

unint64_t sub_100062168()
{
  result = qword_100174CE8;
  if (!qword_100174CE8)
  {
    sub_100007CCC(&qword_100174BF0, &qword_10011BD70);
    sub_1000199C8(&qword_100174CF0, &qword_100174BF8, &qword_10011BD78, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000199C8(&unk_100177AF0, &qword_100174CF8, &qword_10011BE50, &protocol conformance descriptor for _BackdropEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174CE8);
  }

  return result;
}

unint64_t sub_100062250()
{
  result = qword_100174D00;
  if (!qword_100174D00)
  {
    sub_100007CCC(&qword_100174C18, &qword_10011BD98);
    sub_1000622DC();
    sub_100062394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174D00);
  }

  return result;
}

unint64_t sub_1000622DC()
{
  result = qword_100174D08;
  if (!qword_100174D08)
  {
    sub_100007CCC(&qword_100174C08, &qword_10011BD88);
    sub_1000199C8(&qword_100174D10, &qword_100174C10, &qword_10011BD90, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174D08);
  }

  return result;
}

unint64_t sub_100062394()
{
  result = qword_100174D18;
  if (!qword_100174D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174D18);
  }

  return result;
}

uint64_t sub_1000623E8()
{
  sub_100007CCC(&qword_100174C20, &qword_10011BDA0);
  sub_100007CCC(&qword_100174C28, &qword_10011BDA8);
  sub_1000199C8(&qword_100174C30, &qword_100174C20, &qword_10011BDA0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  type metadata accessor for EmptyVisualEffect();
  sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000625A4()
{
  result = qword_100174D30;
  if (!qword_100174D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174D30);
  }

  return result;
}

unint64_t sub_1000625F8()
{
  result = qword_100174D48;
  if (!qword_100174D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174D48);
  }

  return result;
}

unint64_t sub_10006264C()
{
  result = qword_100174D60;
  if (!qword_100174D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174D60);
  }

  return result;
}

uint64_t sub_1000626D8(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_100007CCC(a2, a3);
  sub_100007CCC(&qword_100174C48, &qword_10011BDB8);
  sub_1000199C8(a4, a2, a3, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100007CCC(&qword_100174C58, &qword_10011BDC0);
  sub_100007CCC(&qword_100174C60, &qword_10011BDC8);
  type metadata accessor for EmptyVisualEffect();
  sub_100061928(&qword_100174C38, &type metadata accessor for EmptyVisualEffect, &protocol conformance descriptor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100062870()
{
  result = qword_100174D68;
  if (!qword_100174D68)
  {
    sub_100007CCC(&qword_100174D58, &unk_10011C050);
    sub_1000199C8(&qword_100174D70, &qword_100174D50, &qword_10011C048, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174D68);
  }

  return result;
}

uint64_t sub_100062968()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000629CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100062A14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100062A64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100062AC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100062B24()
{
  result = qword_100174E20;
  if (!qword_100174E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174E20);
  }

  return result;
}

id sub_100062B78(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1000077C8(&qword_100174E50, &unk_10011C258);
  UIViewRepresentableContext.coordinator.getter();
  v5 = *(v8 + 24);

  v6 = [v5 view];

  sub_1000639B8(a1, v3, v4);
  return v6;
}

void sub_100062C2C(uint64_t *a1@<X8>)
{
  type metadata accessor for ContactAvatarView.Coordinator();
  v2 = swift_allocObject();
  v3 = [objc_allocWithZone(CNContactStore) init];
  *(v2 + 16) = v3;
  v4 = [objc_opt_self() settingsWithContactStore:v3 threeDTouchEnabled:0];
  v5 = [objc_allocWithZone(CNAvatarViewController) initWithSettings:v4];

  *(v2 + 24) = v5;
  *a1 = v2;
}

uint64_t sub_100062CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000634B0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100062D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000634B0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100062DC4(uint64_t a1)
{
  sub_1000634B0();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100062DEC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v45 = a1;
  v5 = type metadata accessor for Image.ResizingMode();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000077C8(&qword_100174E38, &qword_10011C240);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for iosmacHardware();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = static Color.white.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v70[3] = *&v70[27];
  *&v70[11] = *&v70[35];
  *&v70[19] = *&v70[43];

  iosmacHardware.init(_:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000159AC(v10, &qword_100174E38, &qword_10011C240);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    (*(v12 + 32))(v46, v10, v11);
    iosmacHardware.image.getter();
    v27 = v43;
    v28 = v44;
    (*(v43 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v44);
    v45 = Image.resizable(capInsets:resizingMode:)();

    (*(v27 + 8))(v7, v28);
    LOBYTE(v27) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    LOBYTE(v69[0]) = 1;
    LOBYTE(v61[0]) = 0;
    v22 = 1;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    (*(v12 + 8))(v46, v11);
    v14 = v45;
    v15 = v71;
    v16 = v72;
    v17 = v73;
    v18 = v74;
    v21 = v27;
    v19 = v75;
    v20 = v76;
  }

  v33 = v47;
  *&v60[0] = v47;
  WORD4(v60[0]) = 256;
  *(v60 + 10) = *v70;
  *(&v60[1] + 10) = *&v70[8];
  *(&v60[2] + 10) = *&v70[16];
  *(&v60[3] + 1) = *&v70[23];
  v61[0] = v14;
  *&v52[47] = v60[1];
  *&v52[55] = v60[2];
  *&v52[39] = v60[0];
  v61[1] = 0;
  *&v62 = v22;
  *(&v62 + 1) = v21;
  *&v63 = v23;
  *(&v63 + 1) = v24;
  *&v64 = v25;
  *(&v64 + 1) = v26;
  *&v65 = 0;
  *(&v65 + 1) = v15;
  *&v66 = v16;
  *(&v66 + 1) = v17;
  *&v67 = v18;
  *(&v67 + 1) = v19;
  v68 = v20;
  v53 = v62;
  v54 = v63;
  *&v52[63] = v60[3];
  *&v52[71] = v14;
  v59 = v20;
  v57 = v66;
  v58 = v67;
  v55 = v64;
  v56 = v65;
  v34 = v60[0];
  v35 = v60[1];
  v36 = v60[3];
  *(a3 + 32) = v60[2];
  *(a3 + 48) = v36;
  *a3 = v34;
  *(a3 + 16) = v35;
  v37 = v53;
  v38 = v55;
  v39 = v56;
  *(a3 + 96) = v54;
  *(a3 + 112) = v38;
  *(a3 + 64) = v14;
  *(a3 + 80) = v37;
  v40 = v57;
  v41 = v58;
  *(a3 + 176) = v59;
  *(a3 + 144) = v40;
  *(a3 + 160) = v41;
  *(a3 + 128) = v39;
  v69[0] = v14;
  v69[1] = 0;
  v69[2] = v22;
  v69[3] = v21;
  v69[4] = v23;
  v69[5] = v24;
  v69[6] = v25;
  v69[7] = v26;
  v69[8] = 0;
  v69[9] = v15;
  v69[10] = v16;
  v69[11] = v17;
  v69[12] = v18;
  v69[13] = v19;
  v69[14] = v20;
  sub_100007BA4(v60, &v48, &qword_100174E40, &qword_10011C248);
  sub_100007BA4(v61, &v48, &qword_100174E48, &qword_10011C250);
  sub_1000159AC(v69, &qword_100174E48, &qword_10011C250);
  v48 = v33;
  v49 = 256;
  v50 = *v70;
  v51 = *&v70[8];
  *v52 = *&v70[16];
  *&v52[7] = *&v70[23];
  return sub_1000159AC(&v48, &qword_100174E40, &qword_10011C248);
}

double sub_10006335C@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = static Alignment.center.getter();
  v7 = v6;
  sub_100062DEC(v4, &v15);
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v39[8] = v23;
  v39[9] = v24;
  v39[10] = v25;
  v39[4] = v19;
  v39[5] = v20;
  v39[6] = v21;
  v39[7] = v22;
  v39[0] = v15;
  v39[1] = v16;
  v38 = v26;
  v40 = v26;
  v39[2] = v17;
  v39[3] = v18;
  sub_100007BA4(&v27, &v14, &qword_100174E30, &qword_10011C238);
  sub_1000159AC(v39, &qword_100174E30, &qword_10011C238);
  *a2 = v5;
  *(a2 + 8) = v7;
  v8 = v36;
  *(a2 + 144) = v35;
  *(a2 + 160) = v8;
  *(a2 + 176) = v37;
  *(a2 + 192) = v38;
  v9 = v32;
  *(a2 + 80) = v31;
  *(a2 + 96) = v9;
  v10 = v34;
  *(a2 + 112) = v33;
  *(a2 + 128) = v10;
  v11 = v28;
  *(a2 + 16) = v27;
  *(a2 + 32) = v11;
  result = *&v29;
  v13 = v30;
  *(a2 + 48) = v29;
  *(a2 + 64) = v13;
  return result;
}

unint64_t sub_1000634B0()
{
  result = qword_100174E28;
  if (!qword_100174E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174E28);
  }

  return result;
}

void sub_100063504(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = type metadata accessor for Image.ResizingMode();
  v4 = *(v54 - 8);
  __chkstk_darwin(v54);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 80);
  v81 = *(a1 + 64);
  v82 = v7;
  v83 = *(a1 + 96);
  v8 = *(a1 + 16);
  v77 = *a1;
  v78 = v8;
  v9 = *(a1 + 48);
  v79 = *(a1 + 32);
  v80 = v9;
  v10 = *(&v77 + 1);
  if (*(&v81 + 1) >> 62)
  {
    v12 = *(&v78 + 1);
    v11 = v79;
    v13 = v78;
    sub_1000555B0(&v77, &v63);
    v11, v14, v15, v16, v17, v18, v19, v20;
    v10, v21, v22, v23, v24, v25, v26, v27;
    v58 = __PAIR128__(v12, v13);
    *&v59 = 0x4049000000000000;
    BYTE8(v59) = 1;
    sub_100062B24();
    sub_100063CDC();
  }

  else
  {
    v58 = v77;
    *&v59 = 0;
    BYTE8(v59) = 0;
    sub_100062B24();
    sub_100063CDC();
  }

  _ConditionalContent<>.init(storage:)();
  v28 = v63;
  v29 = v64;
  v30 = v65;
  v31 = *(a1 + 104);
  if (v31)
  {
    v53 = v63;
    v52 = v31;
    Image.init(uiImage:)();
    v32 = v54;
    (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v54);
    v51 = Image.resizable(capInsets:resizingMode:)();

    (*(v4 + 8))(v6, v32);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v33 = v71;
    v34 = v72;
    v35 = v73;
    v36 = v30;
    v37 = v74;
    v38 = v75;
    v39 = v76;

    v40 = v51;
    v28 = v53;
    LOBYTE(v63) = v34;
    LOBYTE(v58) = v37;
    v30 = v36;
    v41 = v34;
    v42 = v58;
    v31 = 0x3FF0000000000000;
  }

  else
  {
    v40 = 0;
    v33 = 0;
    v35 = 0;
    v38 = 0;
    v39 = 0;
    v42 = 0;
    v41 = 0;
  }

  v57 = v30;
  *&v58 = v40;
  *(&v58 + 1) = v33;
  *&v59 = v41;
  *(&v59 + 1) = v35;
  *&v60 = v42;
  *(&v60 + 1) = v38;
  *&v61 = v39;
  *(&v61 + 1) = v31;
  v62 = v31;
  *(&v56[4] + 7) = v31;
  *(&v56[1] + 7) = v59;
  *(&v56[2] + 7) = v60;
  *(&v56[3] + 7) = v61;
  *(v56 + 7) = v58;
  *a2 = v28;
  *(a2 + 16) = v29;
  *(a2 + 24) = v30;
  v43 = v56[1];
  *(a2 + 25) = v56[0];
  v44 = v56[2];
  v45 = v56[3];
  *(a2 + 88) = *(&v56[3] + 15);
  *(a2 + 73) = v45;
  *(a2 + 57) = v44;
  *(a2 + 41) = v43;
  *&v63 = v40;
  *(&v63 + 1) = v33;
  v64 = v41;
  v65 = v35;
  v66 = v42;
  v67 = v38;
  v68 = v39;
  v69 = v31;
  v70 = v31;
  v46 = v28;
  sub_100063D30(v28, *(&v28 + 1));
  sub_100007BA4(&v58, &v55, &qword_100174E78, &qword_10011C3B8);
  sub_1000159AC(&v63, &qword_100174E78, &qword_10011C3B8);
  sub_100063D38(v46, *(&v46 + 1), v29, v30, v47, v48, v49, v50);
}

__n128 sub_1000638B8@<Q0>(uint64_t a2@<X8>)
{
  v4 = v2[5];
  v21[4] = v2[4];
  v21[5] = v4;
  v21[6] = v2[6];
  v5 = v2[1];
  v21[0] = *v2;
  v21[1] = v5;
  v6 = v2[3];
  v21[2] = v2[2];
  v21[3] = v6;
  v7 = static Alignment.bottomTrailing.getter();
  v9 = v8;
  sub_100063504(v21, &v14);
  v26 = v18;
  v27 = v19;
  v28 = v20;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v29[0] = v14;
  v29[1] = v15;
  v29[2] = v16;
  v29[3] = v17;
  v29[4] = v18;
  v29[5] = v19;
  v30 = v20;
  sub_100007BA4(&v22, &v13, &qword_100174E70, &qword_10011C3B0);
  sub_1000159AC(v29, &qword_100174E70, &qword_10011C3B0);
  *a2 = v7;
  *(a2 + 8) = v9;
  v10 = v27;
  *(a2 + 80) = v26;
  *(a2 + 96) = v10;
  *(a2 + 112) = v28;
  v11 = v23;
  *(a2 + 16) = v22;
  *(a2 + 32) = v11;
  result = v25;
  *(a2 + 48) = v24;
  *(a2 + 64) = result;
  return result;
}

void sub_1000639B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || (sub_1000077C8(&qword_100174E50, &unk_10011C258), UIViewRepresentableContext.coordinator.getter(), v3 = *(v17 + 16), , v4 = String._bridgeToObjectiveC()(), v5 = [v3 contactForIdentifier:v4], v3, v4, !v5))
  {
    v5 = [objc_allocWithZone(CNMutableContact) init];
  }

  sub_1000077C8(&qword_100174E50, &unk_10011C258);
  UIViewRepresentableContext.coordinator.getter();
  v6 = *(v17 + 24);

  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100118700;
  *(v7 + 32) = v5;
  sub_100063B3C();
  v8 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7, v10, v11, v12, v13, v14, v15, v16;
  [v6 setContacts:isa];
}

unint64_t sub_100063B3C()
{
  result = qword_100174E58;
  if (!qword_100174E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100174E58);
  }

  return result;
}

__n128 sub_100063B94(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100063BB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 76);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double sub_100063C08(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 112) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 0;
      *(a1 + 72) = (v4 >> 2) << 32;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100063CDC()
{
  result = qword_100177C10;
  if (!qword_100177C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177C10);
  }

  return result;
}

uint64_t sub_100063D70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100063DF4()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100174E90);
  v1 = sub_100007D20(v0, qword_100174E90);
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F338);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100063F24(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_activeLayoutMode) = a1;
  v2 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView;
  v3 = *(v1 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView);
  if (v3)
  {
    v4 = v3;
    [v4 setHidden:sub_10006769C() & 1];

    v5 = *(v1 + v2);
    if (v5)
    {
      v6 = v5;
      [*&v6[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progressMicaView] setHidden:sub_10006769C() & 1];
    }
  }
}

uint64_t sub_100064084(uint64_t a1)
{
  v2 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for SFAirDropSend.Transfer.State();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000159AC(v10, &qword_100172FD0, &qword_10011A210);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v15 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    swift_beginAccess();
    sub_100069EAC(a1 + v15, v4);
    v16 = sub_1000643D0(v7, v4);
    sub_1000159AC(v4, &unk_100174FA0, &qword_10011A700);
    (*(v19 + 8))(v7, v20);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = sub_100069F1C(v14);
    (*(v12 + 8))(v14, v11);
  }

  return v16;
}

uint64_t sub_1000643D0(uint64_t a1, uint64_t a2)
{
  v218 = a2;
  v3 = type metadata accessor for SFAirDropReceive.Failure();
  v216 = *(v3 - 8);
  v217 = v3;
  __chkstk_darwin(v3);
  v5 = &v214 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v215 = &v214 - v7;
  v8 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  __chkstk_darwin(v8 - 8);
  v10 = &v214 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v214 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v214 - v16;
  v18 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v214 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a1, v18, v20);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    (*(v19 + 96))(v22, v18);
    v24 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v24 - 8) + 8))(v22, v24);
    return 4;
  }

  v214 = v22;
  if (v23 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    v25 = v214;
    (*(v19 + 96))(v214, v18);
    v26 = &qword_100173088;
    v27 = &unk_10011C520;
LABEL_5:
    v28 = *(sub_1000077C8(v26, v27) + 48);
    v29 = &unk_100174F80;
    v30 = &unk_10011AE60;
LABEL_6:
    v31 = sub_1000077C8(v29, v30);
    (*(*(v31 - 8) + 8))(&v25[v28], v31);
    v32 = type metadata accessor for SFAirDrop.ContactInfo();
    (*(*(v32 - 8) + 8))(v25, v32);
    return 4;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
  {
    v34 = v214;
    (*(v19 + 96))(v214, v18);
    v35 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v35 - 8) + 8))(v34, v35);
    return 2;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
  {
    v36 = v214;
    (*(v19 + 96))(v214, v18);
    v37 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
    v38 = v37[12];
    *&v36[v37[16] + 8], v39, v40, v41, v42, v43, v44, v45;
    v46 = v37[20];
    v47 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v47 - 8) + 8))(&v36[v46], v47);
    v48 = type metadata accessor for SFAirDrop.Progress();
LABEL_16:
    (*(*(v48 - 8) + 8))(&v36[v38], v48);
    v57 = type metadata accessor for SFAirDropReceive.ItemDestination();
LABEL_17:
    (*(*(v57 - 8) + 8))(v36, v57);
    return 3;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
  {
    v36 = v214;
    (*(v19 + 96))(v214, v18);
    v49 = sub_1000077C8(&unk_100173CD0, &unk_10011C510);
    *&v36[*(v49 + 48)], v50, v51, v52, v53, v54, v55, v56;
    v38 = *(v49 + 80);
    v48 = type metadata accessor for SFAirDrop.DeclineAction();
    goto LABEL_16;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    v58 = v214;
    (*(v19 + 96))(v214, v18);
    v59 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    *&v58[*(v59 + 48)], v60, v61, v62, v63, v64, v65, v66;
    v67 = *(v59 + 64);
    v68 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v68 - 8) + 8))(&v58[v67], v68);
    v69 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v69 - 8) + 8))(v58, v69);
    return 4;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentIntervention(_:))
  {
    v70 = v214;
    (*(v19 + 96))(v214, v18);
    v71 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    *&v70[*(v71 + 48)], v72, v73, v74, v75, v76, v77, v78;
    v79 = *(v71 + 64);
LABEL_23:
    v80 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v80 - 8) + 8))(&v70[v79], v80);
    v81 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v81 - 8) + 8))(v70, v81);
    return 2;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.importing(_:))
  {
    v82 = v214;
    (*(v19 + 96))(v214, v18);
    v90 = *(sub_1000077C8(&unk_100174F60, &qword_10011C4C0) + 48);
LABEL_26:
    *&v82[v90], v83, v84, v85, v86, v87, v88, v89;
    v91 = type metadata accessor for SFAirDropReceive.ItemDestination();
LABEL_27:
    (*(*(v91 - 8) + 8))(v82, v91);
    return 3;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
  {
    v92 = v214;
    (*(v19 + 96))(v214, v18);
    v93 = sub_1000077C8(&qword_100173078, &unk_100118F60);
    *&v92[v93[12]], v94, v95, v96, v97, v98, v99, v100;
    *&v92[v93[16]], v101, v102, v103, v104, v105, v106, v107;
    v108 = v93[20];
    sub_100069EAC(v218, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1000159AC(v10, &unk_100174FA0, &qword_10011A700);
    }

    else
    {
      (*(v12 + 32))(v17, v10, v11);
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v125 = v124;
      v126 = *(v12 + 8);
      v126(v14, v11);
      v126(v17, v11);
      if (v125 > 7.0)
      {
        v127 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
        (*(*(v127 - 8) + 8))(&v92[v108], v127);
        v128 = type metadata accessor for SFAirDropReceive.ItemDestination();
        (*(*(v128 - 8) + 8))(v92, v128);
        return 2;
      }
    }

    v129 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v129 - 8) + 8))(&v92[v108], v129);
    v130 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v130 - 8) + 8))(v92, v130);
    return 4;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenDestinationResponse(_:))
  {
    v70 = v214;
    (*(v19 + 96))(v214, v18);
    v109 = sub_1000077C8(&qword_100173078, &unk_100118F60);
    *&v70[v109[12]], v110, v111, v112, v113, v114, v115, v116;
    *&v70[v109[16]], v117, v118, v119, v120, v121, v122, v123;
    v79 = v109[20];
    goto LABEL_23;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.opening(_:))
  {
    v82 = v214;
    (*(v19 + 96))(v214, v18);
    v131 = sub_1000077C8(&unk_100174FE0, &qword_10011C600);
    *&v82[*(v131 + 48)], v132, v133, v134, v135, v136, v137, v138;
    v90 = *(v131 + 64);
    goto LABEL_26;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:))
  {
    v25 = v214;
    (*(v19 + 96))(v214, v18);
    v28 = *(sub_1000077C8(&qword_100173080, &unk_100118F80) + 48);
    v29 = &unk_100173CB0;
    v30 = &unk_10011AE50;
    goto LABEL_6;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.importingReceivedContact(_:))
  {
    v82 = v214;
    (*(v19 + 96))(v214, v18);
    v91 = type metadata accessor for SFAirDrop.ContactInfo();
    goto LABEL_27;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:))
  {
    v25 = v214;
    (*(v19 + 96))(v214, v18);
    v26 = &unk_100174FD0;
    v27 = &unk_100118F70;
    goto LABEL_5;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.sharingContactBack(_:))
  {
    v139 = v214;
    (*(v19 + 96))(v214, v18);
    v140 = *(sub_1000077C8(&qword_100174FC8, &qword_100121680) + 48);
    v141 = type metadata accessor for SFAirDrop.ContactRequest();
    v142 = *(*(v141 - 8) + 8);
    v142(&v139[v140], v141);
    v142(v139, v141);
    return 3;
  }

  v143 = v23;
  if (v23 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
  {
    v36 = v214;
    (*(v19 + 96))(v214, v18);
    v144 = sub_1000077C8(&qword_100174FC0, &unk_10011C5F0);
    v145 = v144[12];
    *&v36[v144[16] + 8], v146, v147, v148, v149, v150, v151, v152;
    *&v36[v144[20]], v153, v154, v155, v156, v157, v158, v159;
    *&v36[v144[24]], v160, v161, v162, v163, v164, v165, v166;
    *&v36[v144[28]], v167, v168, v169, v170, v171, v172, v173;
    v174 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v174 - 8) + 8))(&v36[v145], v174);
    v57 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
    goto LABEL_17;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {
    v175 = v214;
    (*(v19 + 96))(v214, v18);
    v176 = sub_1000077C8(&qword_100174FB0, &unk_10011C5E0);
    v178 = v215;
    v177 = v216;
    v179 = &v175[*(v176 + 48)];
    v180 = v217;
    (*(v216 + 32))(v215, v179, v217);
    (*(v177 + 16))(v5, v178, v180);
    v181 = (*(v177 + 88))(v5, v180);
    if (v181 == enum case for SFAirDropReceive.Failure.unsupportedType(_:))
    {
      v182 = v216;
      v183 = v217;
      (*(v216 + 8))(v215, v217);
      (*(v182 + 96))(v5, v183);
      *(v5 + 1), v184, v185, v186, v187, v188, v189, v190;
      v191 = *(sub_1000077C8(&qword_100174FB8, &unk_100121C50) + 48);
      v192 = type metadata accessor for URL();
      (*(*(v192 - 8) + 8))(&v5[v191], v192);
LABEL_55:
      v195 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
      (*(*(v195 - 8) + 8))(v214, v195);
      return 4;
    }

    if (v181 == enum case for SFAirDropReceive.Failure.unexpected(_:))
    {
      v193 = *(v216 + 8);
      v194 = v217;
      v193(v215, v217);
      v193(v5, v194);
      goto LABEL_55;
    }

    if (v181 == enum case for SFAirDropReceive.Failure.declined(_:) || v181 == enum case for SFAirDropReceive.Failure.askDismissed(_:))
    {
LABEL_63:
      (*(v216 + 8))(v215, v217);
      v196 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
      (*(*(v196 - 8) + 8))(v214, v196);
      return 2;
    }

    if (v181 == enum case for SFAirDropReceive.Failure.senderCancelled(_:))
    {
      goto LABEL_65;
    }

    if (v181 == enum case for SFAirDropReceive.Failure.receiverCancelled(_:) || v181 == enum case for SFAirDropReceive.Failure.mixedTypes(_:))
    {
      goto LABEL_63;
    }

    if (v181 == enum case for SFAirDropReceive.Failure.missingDownloadDirectory(_:))
    {
      goto LABEL_65;
    }

    if (v181 == enum case for SFAirDropReceive.Failure.missingOwnContact(_:))
    {
      goto LABEL_63;
    }

    if (v181 == enum case for SFAirDropReceive.Failure.streamError(_:) || v181 == enum case for SFAirDropReceive.Failure.askNotHandled(_:) || v181 == enum case for SFAirDropReceive.Failure.incompleteTransfer(_:) || v181 == enum case for SFAirDropReceive.Failure.badRequest(_:) || v181 == enum case for SFAirDropReceive.Failure.moveToAppFailed(_:) || v181 == enum case for SFAirDropReceive.Failure.insufficientStorage(_:))
    {
LABEL_65:
      (*(v216 + 8))(v215, v217);
      goto LABEL_55;
    }

    v219 = 0;
    v220 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v197._countAndFlagsBits = 0xD00000000000002ALL;
    v197._object = 0x80000001001240F0;
    String.append(_:)(v197);
    _print_unlocked<A, B>(_:_:)();
LABEL_78:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v23 == enum case for SFAirDropReceive.Transfer.State.legacyTransferState(_:))
  {
    return sub_100065580();
  }

  result = 3;
  if (v143 != enum case for SFAirDropReceive.Transfer.State.created(_:) && v143 != enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:) && v143 != enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:))
  {
    if (v143 == enum case for SFAirDropReceive.Transfer.State.waitingForContactExchangeRequest(_:))
    {
      return 2;
    }

    v219 = 0;
    v220 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v220, v198, v199, v200, v201, v202, v203, v204;
    v219 = 0xD00000000000001CLL;
    v220 = 0x80000001001240D0;
    sub_10006A8F4(&qword_100173D78, &type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);
    v205._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v205._object;
    String.append(_:)(v205);
    object, v207, v208, v209, v210, v211, v212, v213;
    goto LABEL_78;
  }

  return result;
}

uint64_t sub_100065580()
{
  v0 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  __chkstk_darwin(v0 - 8);
  v2 = &v17[-v1];
  v3 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
  v7 = static NSUserDefaults.airdrop.getter();
  v8 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();

  if (qword_100172140 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v17[15];
  if (SFAirDropReceive.Transfer.State.sfTransferState.getter() == 9)
  {
    v10 = static NSUserDefaults.airdrop.getter();
    v11 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();
  }

  else
  {
    v11 = 0;
  }

  if (SFAirDropReceive.Transfer.State.sfTransferState.getter() != 3)
  {
    v9 &= v11;
  }

  v12 = SFAirDropReceive.Transfer.State.sfTransferState.getter() == 7;
  SFAirDropReceive.Transfer.State.permissionRequest.getter();
  (*(v4 + 8))(v6, v3);
  v13 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v14 = (*(*(v13 - 8) + 48))(v2, 1, v13);
  sub_1000159AC(v2, &qword_100173D50, &unk_10011D120);
  v15 = v9 | v12;
  if (v14 == 1)
  {
    if ((v15 & 1) == 0)
    {
      return 3;
    }
  }

  else if (((v15 | v8) & 1) == 0)
  {
    return 3;
  }

  return 4;
}

id sub_1000659BC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterView] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterViewCustomModeLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconViewDefaultModeLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressViewDefaultModeLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisView] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisViewMinimalModeLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_cancellableObservers] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_contentRole] = 2;
  v3 = &v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_overridePreferredLayoutMode];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_maximumLayoutMode] = 4;
  v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_preventsInteractiveDismissal] = 0;
  v4 = SBUISystemApertureElementIdentifierAirDrop;
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_elementIdentifier] = SBUISystemApertureElementIdentifierAirDrop;
  v5 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_keyColor;
  v6 = objc_allocWithZone(UIColor);
  v7 = v4;
  *&v1[v5] = [v6 initWithRed:0.246 green:0.6 blue:1.0 alpha:1.0];
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AirDropSystemApertureViewController();
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

void sub_100065B78()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v72 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v4 - 8);
  v6 = &v67 - v5;
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AirDropSystemApertureViewController();
  v78.receiver = v0;
  v78.super_class = v9;
  objc_msgSendSuper2(&v78, "viewDidLoad");
  v10 = [objc_allocWithZone(UIColor) initWithRed:0.043 green:0.608 blue:1.0 alpha:1.0];
  v70 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession;
  type metadata accessor for AirDropTransferSession(0);
  sub_10006A8F4(&qword_100173460, type metadata accessor for AirDropTransferSession, &unk_10011D344);

  v11 = ObservedObject.init(wrappedValue:)();
  v13 = v12;
  v14 = [objc_allocWithZone(UIColor) initWithRed:0.043 green:0.608 blue:1.0 alpha:1.0];
  if (qword_100172140 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v73;
  v16 = objc_allocWithZone(sub_1000077C8(&unk_100173470, &qword_100119520));
  v73 = v11;
  v74 = v13;
  v75 = 1;
  v76 = v14;
  v77 = v15;
  v17 = UIHostingController.init(rootView:)();
  v18 = [v17 view];
  if (v18)
  {
    v19 = v18;
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [v1 view];
    if (!v20)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v21 = v20;
    [v20 addSubview:v19];

    v22 = *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterView];
    *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterView] = v19;
  }

  v69 = v17;
  v23 = type metadata accessor for AirDropSystemApertureIconView(0);
  v24 = objc_allocWithZone(v23);
  sub_1000F43A4(2, 0x3FF0000000000000, 0);
  v26 = v25;
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [v1 view];
  if (!v27)
  {
    __break(1u);
    goto LABEL_19;
  }

  v28 = v27;
  [v27 addSubview:v26];

  v29 = *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView];
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView] = v26;
  v68 = v26;

  v30 = objc_allocWithZone(type metadata accessor for AirDropSystemApertureProgressView());
  v31 = v10;
  sub_100109044(v31, 8, 1, 0, 0x3FF0000000000000, 0);
  v33 = v32;
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [v1 view];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = v34;
  [v34 addSubview:v33];

  v36 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView;
  v37 = *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView];
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView] = v33;
  v67 = v33;

  v38 = objc_allocWithZone(v23);
  sub_1000F43A4(2, 0x3FF0000000000000, 0);
  v40 = v39;
  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v42 = v41;
  [v41 addSubview:v40];

  v43 = *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisView];
  *&v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisView] = v40;
  v44 = v40;

  v45 = [v1 view];
  if (!v45)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v46 = v45;
  [v45 setTranslatesAutoresizingMaskIntoConstraints:0];

  v47 = *&v1[v36];
  if (v47)
  {
    v48 = v47;
    [v48 setHidden:sub_10006769C() & 1];

    v49 = *&v1[v36];
    if (v49)
    {
      v50 = v49;
      [*&v50[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progressMicaView] setHidden:sub_10006769C() & 1];
    }
  }

  v51 = UIAccessibilityAnnouncementNotification;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v52 = type metadata accessor for SFAirDropSend.Transfer.State();
  (*(*(v52 - 8) + 48))(v6, 1, v52);
  sub_1000159AC(v6, &qword_100172FD0, &qword_10011A210);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v54 = v53;
  v55 = String._bridgeToObjectiveC()();
  v54, v56, v57, v58, v59, v60, v61, v62;
  UIAccessibilityPostNotification(v51, v55);

  if (qword_1001721A8 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_100007D20(v63, qword_100174E90);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "View did load", v66, 2u);
  }
}

void sub_10006634C()
{
  v1 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterView];
  if (!v1)
  {
    goto LABEL_21;
  }

  v2 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterViewCustomModeLayoutConstraints;
  v3 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterViewCustomModeLayoutConstraints];
  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_21;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001191F0;
  v5 = v1;
  v6 = [(AirDropTransferSessionsController *)v5 leadingAnchor];
  v7 = &off_10016E000;
  v8 = [v0 view];
  if (!v8)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v9 = v8;
  v10 = [v8 leadingAnchor];

  v11 = &off_10016E000;
  v12 = [v6 constraintEqualToAnchor:v10];

  *(v4 + 32) = v12;
  v13 = [(AirDropTransferSessionsController *)v5 trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v4 + 40) = v17;
  v18 = [(AirDropTransferSessionsController *)v5 topAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v4 + 48) = v22;
  v23 = [(AirDropTransferSessionsController *)v5 bottomAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v25 = v24;
  v26 = [v24 bottomAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v4 + 56) = v27;
  v28 = *&v0[v2];
  *&v0[v2] = v4;
  v28, v29, v30, v31, v32, v33, v34, v35;
  v36 = *&v0[v2];
  if (v36 >> 62)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
    if (v37)
    {
      goto LABEL_10;
    }

LABEL_20:

    goto LABEL_21;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v37 < 1)
  {
    __break(1u);
    goto LABEL_53;
  }

  v38 = 0;
  do
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v39 = *&v36->airDropClient[8 * v38];
    }

    v41 = v39;
    ++v38;
    LODWORD(v40) = 1144750080;
    [v39 setPriority:v40];
  }

  while (v37 != v38);

  v36, v42, v43, v44, v45, v46, v47, v48;
LABEL_21:
  if (!*&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView])
  {
    return;
  }

  v11 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView];
  if (!v11)
  {
    return;
  }

  v7 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisView];
  if (!v7)
  {
    return;
  }

  v161 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView];
  v49 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisViewMinimalModeLayoutConstraints;
  v50 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisViewMinimalModeLayoutConstraints];
  if (v50 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_26;
    }
  }

  else if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:
    v51 = v7;
    v52 = v161;
    v53 = v11;
    goto LABEL_38;
  }

  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_10011C3D0;
  v55 = v7;
  v56 = v161;
  v57 = v11;
  v58 = [v55 widthAnchor];
  v59 = [v58 constraintEqualToConstant:24.0];

  *(v54 + 32) = v59;
  v60 = [v55 heightAnchor];

  v61 = [v60 constraintEqualToConstant:24.0];
  *(v54 + 40) = v61;
  v62 = *&v0[v49];
  *&v0[v49] = v54;
  v62, v63, v64, v65, v66, v67, v68, v69;
  v5 = *&v0[v49];
  if (v5 >> 62)
  {
LABEL_53:
    v70 = _CocoaArrayWrapper.endIndex.getter();
    if (!v70)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  v70 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v70)
  {
    goto LABEL_38;
  }

LABEL_31:
  if (v70 < 1)
  {
    __break(1u);
    goto LABEL_79;
  }

  v71 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v72 = *&v5->airDropClient[8 * v71];
    }

    v74 = v72;
    ++v71;
    LODWORD(v73) = 1144750080;
    [v72 setPriority:v73];
  }

  while (v70 != v71);
  v5, v75, v76, v77, v78, v79, v80, v81;
LABEL_38:
  v82 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconViewDefaultModeLayoutConstraints;
  v83 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconViewDefaultModeLayoutConstraints];
  if (v83 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_57;
    }
  }

  else if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_57;
  }

  v159 = v7;
  v84 = [v0 view];
  if (!v84)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v85 = v84;
  v86 = [v84 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1001191F0;
  v88 = v161;
  v89 = [v88 centerXAnchor];
  v90 = [v86 centerXAnchor];
  v91 = [v89 constraintEqualToAnchor:v90];

  *(v87 + 32) = v91;
  v92 = [v88 centerYAnchor];
  v158 = v86;
  v93 = [v86 centerYAnchor];
  v94 = [v92 constraintEqualToAnchor:v93];

  *(v87 + 40) = v94;
  v95 = [v88 widthAnchor];
  v96 = [v95 constraintEqualToConstant:24.0];

  *(v87 + 48) = v96;
  v97 = [v88 heightAnchor];

  v98 = [v97 constraintEqualToConstant:24.0];
  *(v87 + 56) = v98;
  v99 = *&v0[v82];
  *&v0[v82] = v87;
  v99, v100, v101, v102, v103, v104, v105, v106;
  v107 = *&v0[v82];
  if (!(v107 >> 62))
  {
    v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v159;
    if (v108)
    {
      goto LABEL_43;
    }

LABEL_56:

    goto LABEL_57;
  }

  v108 = _CocoaArrayWrapper.endIndex.getter();
  v7 = v159;
  if (!v108)
  {
    goto LABEL_56;
  }

LABEL_43:
  if (v108 < 1)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v109 = 0;
  do
  {
    if ((v107 & 0xC000000000000001) != 0)
    {
      v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v110 = *&v107->airDropClient[8 * v109];
    }

    v112 = v110;
    ++v109;
    LODWORD(v111) = 1144750080;
    [v110 setPriority:v111];
  }

  while (v108 != v109);

  v107, v113, v114, v115, v116, v117, v118, v119;
LABEL_57:
  v120 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressViewDefaultModeLayoutConstraints;
  v121 = *&v0[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressViewDefaultModeLayoutConstraints];
  if (v121 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_59;
    }
  }

  else if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_59:

    v122 = v161;
LABEL_60:

    return;
  }

  v123 = [v0 view];
  if (!v123)
  {
LABEL_86:
    __break(1u);
    return;
  }

  v124 = v123;
  v160 = [v123 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_1001191F0;
  v126 = v11;
  v127 = [v126 centerXAnchor];
  v128 = [v160 centerXAnchor];
  v129 = [v127 constraintEqualToAnchor:v128];

  *(v125 + 32) = v129;
  v130 = [v126 centerYAnchor];
  v131 = [v160 centerYAnchor];
  v132 = [v130 constraintEqualToAnchor:v131];

  *(v125 + 40) = v132;
  v133 = [v126 widthAnchor];
  v134 = [v133 constraintEqualToConstant:24.0];

  *(v125 + 48) = v134;
  v135 = [v126 heightAnchor];

  v136 = [v135 constraintEqualToConstant:24.0];
  *(v125 + 56) = v136;
  v137 = *&v0[v120];
  *&v0[v120] = v125;
  v137, v138, v139, v140, v141, v142, v143, v144;
  v145 = *&v0[v120];
  if (!(v145 >> 62))
  {
    v146 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v146)
    {
      goto LABEL_67;
    }

LABEL_77:

    v122 = v160;
    goto LABEL_60;
  }

  v146 = _CocoaArrayWrapper.endIndex.getter();
  if (!v146)
  {
    goto LABEL_77;
  }

LABEL_67:
  if (v146 < 1)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v147 = 0;
  do
  {
    if ((v145 & 0xC000000000000001) != 0)
    {
      v148 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v148 = *&v145->airDropClient[8 * v147];
    }

    v150 = v148;
    ++v147;
    LODWORD(v149) = 1144750080;
    [v148 setPriority:v149];
  }

  while (v146 != v147);

  v145, v151, v152, v153, v154, v155, v156, v157;
}

void sub_100066ED0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for AirDropSystemApertureViewController();
  objc_msgSendSuper2(&v13, "viewWillAppear:", v3 & 1);
  if (qword_1001721A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007D20(v4, qword_100174E90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "View will appear", v7, 2u);
  }

  v8 = *&v2[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView];
  if (v8)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;

    static Published.subscript.getter();

    v10 = *&v9[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress];
    *&v9[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress] = v12;
    v11 = v12;

    sub_100108C54();
  }
}

void sub_1000670D0(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = sub_100069E44;
  v11 = v2;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_100106B84;
  v9 = &unk_10015EDF8;
  v3 = _Block_copy(&v6);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = sub_100069E4C;
  v11 = v4;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_100106B84;
  v9 = &unk_10015EE20;
  v5 = _Block_copy(&v6);

  [a1 animateAlongsideTransition:v3 completion:v5];
  _Block_release(v5);
  _Block_release(v3);
}

void sub_100067248(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1001721A8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100007D20(v4, qword_100174E90);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Updating views in viewWillLayoutSubviews(with:) coordinator animation block", v7, 2u);
    }

    [*&v3[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterView] invalidateIntrinsicContentSize];
    sub_1000680DC();
    sub_10006634C();
    v8 = *&v3[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_activeLayoutMode] - 2;
    if (v8 <= 2)
    {
      v9 = off_10015EE48[v8];
      v10 = off_10015EE60[v8];
      v11 = off_10015EE78[v8];
      v12 = objc_opt_self();
      v13 = *&v3[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisViewMinimalModeLayoutConstraints];
      sub_1000165C4(0, &qword_100173390, NSLayoutConstraint_ptr);

      isa = Array._bridgeToObjectiveC()().super.isa;
      v13, v15, v16, v17, v18, v19, v20, v21;
      [v12 *v9];

      v22 = *&v3[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconViewDefaultModeLayoutConstraints];

      v23 = Array._bridgeToObjectiveC()().super.isa;
      v22, v24, v25, v26, v27, v28, v29, v30;
      [v12 *v10];

      v31 = *&v3[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressViewDefaultModeLayoutConstraints];

      v32 = Array._bridgeToObjectiveC()().super.isa;
      v31, v33, v34, v35, v36, v37, v38, v39;
      [v12 *v10];

      v40 = *&v3[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterViewCustomModeLayoutConstraints];

      v41 = Array._bridgeToObjectiveC()().super.isa;
      v40, v42, v43, v44, v45, v46, v47, v48;
      [v12 *v11];
    }

    v49 = [v3 view];
    if (v49)
    {
      v50 = v49;
      [v49 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100067514(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_activeLayoutMode) == 4)
    {

      v4 = [v3 view];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14.origin.x = v7;
      v14.origin.y = v9;
      v14.size.width = v11;
      v14.size.height = v13;
      CGRectGetWidth(v14);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }
  }
}

uint64_t sub_10006769C()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v98 - v6;
  __chkstk_darwin(v8);
  v10 = &v98 - v9;
  v11 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v11 - 8);
  v13 = &v98 - v12;
  v14 = type metadata accessor for SFAirDropSend.Transfer.State();
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v17 = (&v98 - v16);
  __chkstk_darwin(v18);
  v105 = &v98 - v19;
  __chkstk_darwin(v20);
  v24 = &v98 - v23;
  if (*(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_activeLayoutMode) == 4)
  {
    return 1;
  }

  v100 = v22;
  v101 = v7;
  v99 = v4;
  v102 = v10;
  v103 = v2;
  v104 = v1;
  v25 = v21;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();
  v26 = v25;

  if ((*(v25 + 48))(v13, 1, v14) != 1)
  {
    v33 = *(v25 + 32);
    v33(v24, v13, v14);
    v34 = v105;
    v33(v105, v24, v14);
    v35 = (*(v26 + 88))(v34, v14);
    if (v35 == enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:))
    {
      (*(v26 + 16))(v17, v34, v14);
      (*(v26 + 96))(v17, v14);
      *v17, v36, v37, v38, v39, v40, v41, v42;
      v43 = *(sub_1000077C8(&qword_100174130, &qword_10011C540) + 64);
      v44 = type metadata accessor for SFAirDrop.DeclineAction();
    }

    else
    {
      if (v35 != enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:))
      {
        if (v35 == enum case for SFAirDropSend.Transfer.State.transferring(_:))
        {
          v74 = v100;
          (*(v26 + 16))(v100, v34, v14);
          (*(v26 + 96))(v74, v14);
          *(v74 + 8), v75, v76, v77, v78, v79, v80, v81;
          v82 = sub_1000077C8(&qword_100172F30, &unk_100118BC0);
          v83 = v82[12];
          *(v74 + v82[16] + 8), v84, v85, v86, v87, v88, v89, v90;
          v91 = v82[20];
          v92 = type metadata accessor for SFAirDrop.Progress();
          v93 = *(v92 - 8);
          v94 = (*(v93 + 88))(v74 + v83, v92);
          v95 = enum case for SFAirDrop.Progress.transferringIndeterminate(_:);
          v96 = type metadata accessor for SFAirDrop.DeclineAction();
          (*(*(v96 - 8) + 8))(v74 + v91, v96);
          if (v94 == v95)
          {
            goto LABEL_13;
          }

          (*(v93 + 8))(v74 + v83, v92);
        }

        else if (v35 == enum case for SFAirDropSend.Transfer.State.created(_:) || v35 == enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:))
        {
          goto LABEL_13;
        }

        (*(v26 + 8))(v34, v14);
        return 0;
      }

      (*(v26 + 16))(v17, v34, v14);
      (*(v26 + 96))(v17, v14);
      *v17, v49, v50, v51, v52, v53, v54, v55;
      v43 = *(sub_1000077C8(&qword_100174128, &unk_10011C530) + 48);
      v44 = sub_1000077C8(&unk_100174F90, &unk_10011AE70);
    }

    (*(*(v44 - 8) + 8))(v17 + v43, v44);
LABEL_13:
    (*(v26 + 8))(v34, v14);
    return 1;
  }

  sub_1000159AC(v13, &qword_100172FD0, &qword_10011A210);
  swift_getKeyPath();
  swift_getKeyPath();

  v27 = v102;
  static Published.subscript.getter();

  v29 = v103;
  v28 = v104;
  v30 = (*(v103 + 88))(v27, v104);
  if (v30 != enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    if (v30 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
    {
      v45 = v101;
      (*(v29 + 16))(v101, v27, v28);
      (*(v29 + 96))(v45, v28);
      v46 = *(sub_1000077C8(&qword_100173088, &unk_10011C520) + 48);
      v47 = sub_1000077C8(&unk_100174F80, &unk_10011AE60);
      (*(*(v47 - 8) + 8))(&v45[v46], v47);
      v48 = type metadata accessor for SFAirDrop.ContactInfo();
      (*(*(v48 - 8) + 8))(v45, v48);
      goto LABEL_9;
    }

    if (v30 != enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
    {
      if (v30 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
      {
        v57 = v99;
        (*(v29 + 16))(v99, v27, v28);
        (*(v29 + 96))(v57, v28);
        v58 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
        v59 = v58[12];
        *&v57[v58[16] + 8], v60, v61, v62, v63, v64, v65, v66;
        v67 = v58[20];
        v68 = type metadata accessor for SFAirDrop.Progress();
        v69 = *(v68 - 8);
        v70 = (*(v69 + 88))(&v57[v59], v68);
        v71 = enum case for SFAirDrop.Progress.transferringIndeterminate(_:);
        v72 = type metadata accessor for SFAirDrop.DeclineAction();
        (*(*(v72 - 8) + 8))(&v57[v67], v72);
        if (v70 == v71)
        {
          v73 = type metadata accessor for SFAirDropReceive.ItemDestination();
          (*(*(v73 - 8) + 8))(v57, v73);
          goto LABEL_9;
        }

        (*(v69 + 8))(&v57[v59], v68);
        v97 = type metadata accessor for SFAirDropReceive.ItemDestination();
        (*(*(v97 - 8) + 8))(v57, v97);
      }

      else if (v30 == enum case for SFAirDropReceive.Transfer.State.created(_:) || v30 == enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:) || v30 == enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:))
      {
        goto LABEL_9;
      }

      (*(v29 + 8))(v27, v28);
      return 0;
    }
  }

  v31 = v101;
  (*(v29 + 16))(v101, v27, v28);
  (*(v29 + 96))(v31, v28);
  v32 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  (*(*(v32 - 8) + 8))(v31, v32);
LABEL_9:
  (*(v29 + 8))(v27, v28);
  return 1;
}

uint64_t sub_1000680DC()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v115 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v114 = &v113 - v6;
  __chkstk_darwin(v7);
  v118 = (&v113 - v8);
  v9 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v9 - 8);
  v11 = &v113 - v10;
  v12 = type metadata accessor for SFAirDropSend.Transfer.State();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v117 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v116 = &v113 - v16;
  v119 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView;
  v17 = *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView);
  if (v17)
  {
    v18 = v17;
    [v18 setHidden:sub_10006769C() & 1];

    v19 = *(v0 + v119);
    if (v19)
    {
      v20 = v19;
      [*&v20[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progressMicaView] setHidden:sub_10006769C() & 1];
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000159AC(v11, &qword_100172FD0, &qword_10011A210);
    swift_getKeyPath();
    swift_getKeyPath();

    v21 = v118;
    static Published.subscript.getter();

    v117 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView;
    v22 = *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView);
    v113 = v3;
    if (v22)
    {
      v116 = *(v3 + 16);
      v23 = v114;
      (v116)(v114, v21, v2);
      v24 = OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_transferState;
      swift_beginAccess();
      v25 = *(v3 + 24);
      v26 = v22;
      v27 = &v22[v24];
      v21 = v118;
      v25(v27, v23, v2);
      v3 = v113;
      swift_endAccess();
      sub_1000F3614();

      (*(v3 + 8))(v23, v2);
      v28 = v116;
    }

    else
    {
      v28 = *(v3 + 16);
    }

    v65 = v115;
    (v28)(v115, v21, v2);
    v66 = (*(v3 + 88))(v65, v2);
    if (v66 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
    {
      (*(v3 + 96))(v65, v2);
      v67 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
      v68 = v67[12];
      *&v65[v67[16] + 8], v69, v70, v71, v72, v73, v74, v75;
      v76 = v67[20];
      v77 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v77 - 8) + 8))(&v65[v76], v77);
      v78 = type metadata accessor for SFAirDrop.Progress();
      (*(*(v78 - 8) + 8))(&v65[v68], v78);
    }

    else if (v66 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
    {
      (*(v3 + 96))(v65, v2);
      v79 = sub_1000077C8(&unk_100173CD0, &unk_10011C510);
      *&v65[*(v79 + 48)], v80, v81, v82, v83, v84, v85, v86;
      v87 = *(v79 + 80);
      v88 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v88 - 8) + 8))(&v65[v87], v88);
    }

    else
    {
      if (v66 != enum case for SFAirDropReceive.Transfer.State.importing(_:))
      {
        v112 = *(v3 + 8);
        v112(v21, v2);
        return (v112)(v65, v2);
      }

      (*(v3 + 96))(v65, v2);
      v104 = sub_1000077C8(&unk_100174F60, &qword_10011C4C0);
      *&v65[*(v104 + 48)], v105, v106, v107, v108, v109, v110, v111;
    }

    v89 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v89 - 8) + 8))(v65, v89);
    v90 = SFAirDropReceive.Transfer.State.currentProgressCount.getter();
    v91 = SFAirDropReceive.Transfer.State.totalProgressCount.getter();
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v92 = v120;
    [v120 setCompletedUnitCount:v90];

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v93 = v120;
    [v120 setTotalUnitCount:v91];

    v94 = *&v117[v1];
    if (v94)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v95 = v94;

      static Published.subscript.getter();

      v96 = v120;
      [v120 fractionCompleted];
      v98 = v97;

      *&v95[OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_progress] = v98;
      sub_1000F3614();
    }

    v99 = *(v1 + v119);
    if (v99)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v100 = v99;

      static Published.subscript.getter();

      v101 = v120;
      v102 = *&v100[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress];
      *&v100[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress] = v120;
      v103 = v101;

      sub_100108C54();
    }

    return (*(v113 + 8))(v118, v2);
  }

  else
  {
    v29 = v116;
    (*(v13 + 32))(v116, v11, v12);
    v30 = v117;
    (*(v13 + 16))(v117, v29, v12);
    if ((*(v13 + 88))(v30, v12) == enum case for SFAirDropSend.Transfer.State.transferring(_:))
    {
      (*(v13 + 96))(v30, v12);
      *(v30 + 1), v31, v32, v33, v34, v35, v36, v37;
      v118 = sub_1000077C8(&qword_100172F30, &unk_100118BC0);
      *&v30[v118[16] + 8], v38, v39, v40, v41, v42, v43, v44;
      v45 = SFAirDropSend.Transfer.State.currentProgressCount.getter();
      v115 = SFAirDropSend.Transfer.State.totalProgressCount.getter();
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v46 = v120;
      [v120 setCompletedUnitCount:v45];

      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v47 = v120;
      [v120 setTotalUnitCount:v115];

      v48 = *(v1 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView);
      if (v48)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v49 = v48;

        static Published.subscript.getter();

        v50 = v120;
        [v120 fractionCompleted];
        v52 = v51;

        *&v49[OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_progress] = v52;
        sub_1000F3614();
      }

      v53 = *(v1 + v119);
      if (v53)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v54 = v53;

        static Published.subscript.getter();

        v55 = v120;
        v56 = *&v54[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress];
        *&v54[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress] = v120;
        v57 = v55;

        sub_100108C54();
      }

      v58 = v118[12];
      v59 = v118[20];
      (*(v13 + 8))(v116, v12);
      v60 = type metadata accessor for SFAirDrop.DeclineAction();
      v61 = v117;
      (*(*(v60 - 8) + 8))(&v117[v59], v60);
      v62 = type metadata accessor for SFAirDrop.Progress();
      return (*(*(v62 - 8) + 8))(&v61[v58], v62);
    }

    else
    {
      v64 = *(v13 + 8);
      v64(v29, v12);
      return (v64)(v30, v12);
    }
  }
}

void sub_100068D80(uint64_t a1, uint64_t a2, _TtC9AirDropUI33AirDropTransferSessionsController *a3, uint64_t a4, char a5)
{
  if (qword_1001721A8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100007D20(v8, qword_100174E90);
  v9 = v5;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v12 = 136315394;

    v13 = a4;
    v14 = a3;
    v15 = sub_10007A538();
    v17 = v16;

    v18 = sub_10003E81C(v15, v17, &aBlock);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v26 = sub_10007A538();
    v28 = v27;
    v29 = sub_10003E81C(v26, v27, &aBlock);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v12 + 14) = v29;
    a3 = v14;
    a4 = v13;
    _os_log_impl(&_mh_execute_header, v10, v11, "Transitioning SystemAperture session %s -> %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v37 = *(*&v9[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropTransferSession] + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  v38 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v39 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

  v40._countAndFlagsBits = v38;
  v40._object = v39;
  v41 = String.hasPrefix(_:)(v40);
  v37, v42, v43, v44, v45, v46, v47, v48;
  v39, v49, v50, v51, v52, v53, v54, v55;
  if (v41)
  {

    v56 = sub_100080E48(a1);

    v57 = v56 ^ 1;
  }

  else
  {
    v57 = 1;
  }

  v136 = v57;
  v58 = &v9[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_overridePreferredLayoutMode];
  if (v9[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_overridePreferredLayoutMode + 8] == 1)
  {

    v60 = sub_100064084(v59);
  }

  else
  {
    v60 = *v58;
  }

  v61 = sub_100064084(a1);
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = swift_allocObject();
  v63[2] = v62;
  v63[3] = a1;
  v63[4] = a2;
  v63[5] = a3;
  v63[6] = a4;
  if (v60 != v61 || (a5 & 1) != 0)
  {
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v135 = a4;
      v73 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v73 = 136315394;
      v74 = SBUISystemApertureLayoutModeDescription();
      v133 = v58;
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v131 = v72;
      v76 = a3;
      v78 = v77;

      v79 = sub_10003E81C(v75, v78, &aBlock);
      v80 = v78;
      a3 = v76;
      v80, v81, v82, v83, v84, v85, v86, v87;
      *(v73 + 4) = v79;
      *(v73 + 12) = 2080;
      v88 = SBUISystemApertureLayoutModeDescription();
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v90;

      v92 = sub_10003E81C(v89, v91, &aBlock);
      v93 = v91;
      v58 = v133;
      v93, v94, v95, v96, v97, v98, v99, v100;
      *(v73 + 14) = v92;
      _os_log_impl(&_mh_execute_header, v71, v131, "Transitioning layout mode %s -> %s", v73, 0x16u);
      swift_arrayDestroy();

      a4 = v135;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v102 = Strong;

      sub_10007E610(a1, a2, a3, a4);
    }

    v103 = [v9 systemApertureElementContext];
    v144 = nullsub_1;
    v145 = 0;
    aBlock = _NSConcreteStackBlock;
    v141 = 1107296256;
    v142 = sub_100106B40;
    v143 = &unk_10015ECE0;
    v104 = _Block_copy(&aBlock);
    [v103 setElementNeedsLayoutUpdateWithOptions:1 coordinatedAnimations:v104];
  }

  else
  {
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();
    v66 = os_log_type_enabled(v64, v65);
    if (v60 == 4)
    {
      if (v66)
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "Updating layout between custom mode views", v67, 2u);
      }

      v68 = [v9 systemApertureElementContext];
      if ((v136 & 1) == 0)
      {
        v129 = swift_allocObject();
        *(v129 + 16) = sub_100069DA4;
        *(v129 + 24) = v63;
        v144 = sub_10006AB3C;
        v145 = v129;
        aBlock = _NSConcreteStackBlock;
        v141 = 1107296256;
        v142 = sub_100106B40;
        v143 = &unk_10015ED80;
        v130 = _Block_copy(&aBlock);

        [v68 setElementNeedsUpdateWithCoordinatedAnimations:v130];
        _Block_release(v130);

        swift_unknownObjectRelease();
        goto LABEL_30;
      }

      v69 = swift_allocObject();
      *(v69 + 16) = sub_100069DA4;
      *(v69 + 24) = v63;
      v144 = sub_100069E04;
      v145 = v69;
      aBlock = _NSConcreteStackBlock;
      v141 = 1107296256;
      v142 = sub_100106B40;
      v143 = &unk_10015EDD0;
      v70 = _Block_copy(&aBlock);

      [v68 setElementNeedsLayoutUpdateWithOptions:1 coordinatedAnimations:v70];
      _Block_release(v70);
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    if (v66)
    {
      v138 = a3;
      v105 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      aBlock = v134;
      *v105 = 136315138;
      v106 = SBUISystemApertureLayoutModeDescription();
      v107 = v58;
      v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v110 = v109;

      v111 = v108;
      v58 = v107;
      v112 = sub_10003E81C(v111, v110, &aBlock);
      v110, v113, v114, v115, v116, v117, v118, v119;
      *(v105 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v64, v65, "Updating layout between %s mode views", v105, 0xCu);
      sub_100007920(v134);

      a3 = v138;
    }

    v120 = [v9 systemApertureElementContext];
    v121 = swift_allocObject();
    *(v121 + 16) = sub_100069DA4;
    *(v121 + 24) = v63;
    v144 = sub_10006AB3C;
    v145 = v121;
    aBlock = _NSConcreteStackBlock;
    v141 = 1107296256;
    v142 = sub_100106B40;
    v143 = &unk_10015ED30;
    v104 = _Block_copy(&aBlock);

    [v120 setElementNeedsUpdateWithCoordinatedAnimations:v104];
  }

  _Block_release(v104);
  swift_unknownObjectRelease();
  if ((v136 & 1) == 0)
  {

    goto LABEL_29;
  }

LABEL_27:
  *v58 = 0;
  v58[8] = 1;

LABEL_29:

LABEL_30:

  a3, v122, v123, v124, v125, v126, v127, v128;
}

double sub_1000697C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    sub_10007E610(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_100069868()
{
  v1 = v0;
  if (qword_1001721A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100174E90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = SBUISystemApertureLayoutModeDescription();
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = sub_10003E81C(v7, v9, &v32);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    v18 = SBUISystemApertureLayoutModeDescription();
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10003E81C(v19, v21, &v32);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v5 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v3, v4, "Transitioning layout mode %s -> %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v30 = &v1[OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_overridePreferredLayoutMode];
  *v30 = 2;
  v30[8] = 0;
  [objc_msgSend(v1 "systemApertureElementContext")];

  return swift_unknownObjectRelease();
}

id sub_100069AC4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AirDropSystemApertureViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100069C1C(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
}

uint64_t sub_100069CAC(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100069D1C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100069D54()
{

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100069DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100069DCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100069EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069F1C(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropSend.Failure();
  v93 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v91 - v6;
  v8 = type metadata accessor for SFAirDropSend.Transfer.State();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v12);
  v15 = (&v91 - v14);
  v16 = *(v9 + 16);
  v16(&v91 - v14, a1, v8, v13);
  v17 = (*(v9 + 88))(v15, v8);
  if (v17 == enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:))
  {
    (*(v9 + 96))(v15, v8);
    *v15, v18, v19, v20, v21, v22, v23, v24;
    v25 = *(sub_1000077C8(&qword_100174130, &qword_10011C540) + 64);
    v26 = type metadata accessor for SFAirDrop.DeclineAction();
LABEL_5:
    (*(*(v26 - 8) + 8))(v15 + v25, v26);
    return 3;
  }

  if (v17 == enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    (*(v9 + 96))(v15, v8);
    *v15, v27, v28, v29, v30, v31, v32, v33;
    v25 = *(sub_1000077C8(&qword_100174128, &unk_10011C530) + 48);
    v26 = sub_1000077C8(&unk_100174F90, &unk_10011AE70);
    goto LABEL_5;
  }

  if (v17 == enum case for SFAirDropSend.Transfer.State.transferring(_:))
  {
    (*(v9 + 96))(v15, v8);
    v15[1], v35, v36, v37, v38, v39, v40, v41;
    v42 = sub_1000077C8(&qword_100172F30, &unk_100118BC0);
    v43 = v42[12];
    *(v15 + v42[16] + 8), v44, v45, v46, v47, v48, v49, v50;
    v51 = v42[20];
    v52 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v52 - 8) + 8))(v15 + v51, v52);
    v53 = type metadata accessor for SFAirDrop.Progress();
    (*(*(v53 - 8) + 8))(v15 + v43, v53);
    return 3;
  }

  if (v17 == enum case for SFAirDropSend.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    (*(v9 + 96))(v15, v8);
    v54 = *(sub_1000077C8(&qword_100175010, &qword_10011C618) + 48);
    v55 = &unk_100174F80;
    v56 = &unk_10011AE60;
LABEL_12:
    v57 = sub_1000077C8(v55, v56);
    (*(*(v57 - 8) + 8))(v15 + v54, v57);
    v58 = type metadata accessor for SFAirDrop.ContactInfo();
LABEL_15:
    (*(*(v58 - 8) + 8))(v15, v58);
    return 2;
  }

  if (v17 == enum case for SFAirDropSend.Transfer.State.exchanging(_:))
  {
    (*(v9 + 96))(v15, v8);
    v58 = type metadata accessor for SFAirDrop.ContactRequest();
    goto LABEL_15;
  }

  if (v17 == enum case for SFAirDropSend.Transfer.State.waitingForImportContactResponse(_:))
  {
    (*(v9 + 96))(v15, v8);
    v54 = *(sub_1000077C8(&qword_100175000, &unk_10011ECC0) + 48);
    v55 = &qword_100175008;
    v56 = &qword_10011C610;
    goto LABEL_12;
  }

  if (v17 == enum case for SFAirDropSend.Transfer.State.transferFailed(_:))
  {
    v59 = *(v9 + 96);
    v9 += 96;
    v59(v15, v8);
    v60 = sub_1000077C8(&qword_100172F20, &qword_100118F10);
    v11 = v93;
    v93[4](v7, v15 + *(v60 + 48), v2);
    v11[2](v4, v7, v2);
    v61 = (v11[11])(v4, v2);
    if (v61 == enum case for SFAirDropSend.Failure.missingEndpoint(_:))
    {
LABEL_20:
      v62 = v11[1];
      (v62)(v7, v2);
      (v62)(v4, v2);
LABEL_21:
      v63 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
      (*(*(v63 - 8) + 8))(v15, v63);
      return 4;
    }

    if (v61 == enum case for SFAirDropSend.Failure.resolveFailure(_:))
    {
      goto LABEL_25;
    }

    if (v61 == enum case for SFAirDropSend.Failure.unexpected(_:))
    {
      goto LABEL_20;
    }

    if (v61 == enum case for SFAirDropSend.Failure.receiverDeclined(_:) || v61 == enum case for SFAirDropSend.Failure.cancelled(_:))
    {
      goto LABEL_25;
    }

    if (v61 == enum case for SFAirDropSend.Failure.unsupportedConnection(_:) || v61 == enum case for SFAirDropSend.Failure.badRequest(_:) || v61 == enum case for SFAirDropSend.Failure.badResponse(_:))
    {
      (v11[1])(v7, v2);
      goto LABEL_21;
    }

    if (v61 == enum case for SFAirDropSend.Failure.missingDownloadDirectory(_:) || v61 == enum case for SFAirDropSend.Failure.streamError(_:) || v61 == enum case for SFAirDropSend.Failure.missingOwnContact(_:) || v61 == enum case for SFAirDropSend.Failure.missingRecordData(_:) || v61 == enum case for SFAirDropSend.Failure.serverError(_:))
    {
      (v93[1])(v7, v2);
      goto LABEL_21;
    }

    v11 = v93;
    if (v61 == enum case for SFAirDropSend.Failure.insufficientStorage(_:))
    {
LABEL_25:
      (v11[1])(v7, v2);
      v58 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
      goto LABEL_15;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_48;
  }

  if (v17 == enum case for SFAirDropSend.Transfer.State.completedSuccessfully(_:))
  {
    (*(v9 + 96))(v15, v8);
    v64 = sub_1000077C8(&unk_100174FF0, &qword_10011C608);
    *(v15 + *(v64 + 48) + 8), v65, v66, v67, v68, v69, v70, v71;
    v72 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
    (*(*(v72 - 8) + 8))(v15, v72);
    return 3;
  }

  if (v17 == enum case for SFAirDropSend.Transfer.State.created(_:))
  {
    return 3;
  }

  v73 = v17 == enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:);
  result = 3;
  if (!v73)
  {
    if (qword_1001721A8 == -1)
    {
LABEL_29:
      v74 = type metadata accessor for Logger();
      sub_100007D20(v74, qword_100174E90);
      (v16)(v11, a1, v8);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v92 = v77;
        v93 = swift_slowAlloc();
        v94 = v93;
        *v77 = 136315138;
        sub_10006A8F4(&qword_100173E38, &type metadata accessor for SFAirDropSend.Transfer.State, &protocol conformance descriptor for SFAirDropSend.Transfer.State);
        v78 = dispatch thunk of CustomStringConvertible.description.getter();
        v80 = v79;
        v81 = *(v9 + 8);
        v81(v11, v8);
        v82 = sub_10003E81C(v78, v80, &v94);
        v80, v83, v84, v85, v86, v87, v88, v89;
        v90 = v92;
        *(v92 + 1) = v82;
        _os_log_impl(&_mh_execute_header, v75, v76, "Unknown send state value %s", v90, 0xCu);
        sub_100007920(v93);
      }

      else
      {

        v81 = *(v9 + 8);
        v81(v11, v8);
      }

      v81(v15, v8);
      return 3;
    }

LABEL_48:
    swift_once();
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_10006A8F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10006A98C()
{
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterView) = 0;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropPlatterViewCustomModeLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconView) = 0;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconViewDefaultModeLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressView) = 0;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_progressViewDefaultModeLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisView) = 0;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_airDropIconMitosisViewMinimalModeLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_cancellableObservers) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_activeLayoutMode) = 0;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_contentRole) = 2;
  v1 = v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_overridePreferredLayoutMode;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_maximumLayoutMode) = 4;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_preventsInteractiveDismissal) = 0;
  v2 = SBUISystemApertureElementIdentifierAirDrop;
  *(v0 + OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_elementIdentifier) = SBUISystemApertureElementIdentifierAirDrop;
  v3 = OBJC_IVAR____TtC9AirDropUI35AirDropSystemApertureViewController_keyColor;
  v4 = objc_allocWithZone(UIColor);
  v5 = v2;
  *(v0 + v3) = [v4 initWithRed:0.246 green:0.6 blue:1.0 alpha:1.0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10006AB80@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_10011C670;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

__n128 sub_10006ABAC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10006ABD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 100))
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

uint64_t sub_10006AC20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 100) = 1;
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

    *(result + 100) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006AC8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 100))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 76);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double sub_10006ACDC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 96) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 100) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 0;
      *(a1 + 72) = (v4 >> 2) << 32;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      return result;
    }

    *(a1 + 100) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_10006AD80(uint64_t a1, uint64_t a2, int a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
  Hasher._combine(_:)(BYTE1(a3) & 1);
  Hasher._combine(_:)(BYTE2(a3) & 1);
  Hasher._combine(_:)(HIBYTE(a3) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10006AE0C()
{
  v2 = *v0;
  v1 = v0[1];
  v13 = v0[2];
  v14 = v0[3];
  v3 = v0[5];
  v15 = v0[4];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v10 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v6 >> 62)
  {
    if (v6 >> 62 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    Hasher._combine(_:)(v11);
    String.hash(into:)();
    String.hash(into:)();
    sub_10006BAFC(v16, v15);
  }

  else
  {
    v17 = v2;
    v18 = v1;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v3;
    v23 = v4;
    v24 = v5;
    v25 = v7;
    v26 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = v8;
    v28 = v9;
    v29 = v10;
    Hasher._combine(_:)(0);
    sub_10006B408(v16);
  }

  return Hasher._finalize()();
}

void sub_10006AF18(__int128 *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 72) >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    Hasher._combine(_:)(v5);
    String.hash(into:)();
    String.hash(into:)();

    sub_10006BAFC(a1, v3);
  }

  else
  {
    Hasher._combine(_:)(0);
    sub_10006B408(a1);
  }
}

Swift::Int sub_10006B028(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v4 = v1[5];
  v16 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v8 = v1[8];
  v7 = v1[9];
  v9 = v1[10];
  v10 = v1[11];
  v11 = *(v1 + 24);
  Hasher.init(_seed:)();
  if (v7 >> 62)
  {
    if (v7 >> 62 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    Hasher._combine(_:)(v12);
    String.hash(into:)();
    String.hash(into:)();
    sub_10006BAFC(v17, v16);
  }

  else
  {
    v18 = v3;
    v19 = v2;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v4;
    v24 = v5;
    v25 = v6;
    v26 = v8;
    v27 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v28 = v9;
    v29 = v10;
    v30 = v11;
    Hasher._combine(_:)(0);
    sub_10006B408(v17);
  }

  return Hasher._finalize()();
}

uint64_t sub_10006B130(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_10006BE4C(v11, v13) & 1;
}

unint64_t sub_10006B1A0()
{
  result = qword_100175018;
  if (!qword_100175018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175018);
  }

  return result;
}

Swift::Int sub_10006B1F4()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 16);
  if (*(v0 + 18))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + 19))
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = 0;
  }

  return sub_10006AD80(*v0, *(v0 + 8), v2 | v3 | v4);
}

void sub_10006B23C(uint64_t a1)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
}

Swift::Int sub_10006B2A8(uint64_t a1)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_10006B348(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 19);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 19);
  v8 = *(a1 + 18) ^ *(a2 + 18);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (((v2 ^ v5 | v3 ^ v6 | v8) & 1) == 0)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  else if (!((v2 ^ v5) & 1 | ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0) | ((v3 ^ v6) | v8) & 1))
  {
    return v4 ^ v7 ^ 1u;
  }

  return 0;
}

void sub_10006B408(__int128 *a1)
{
  v2 = v1;
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10006BAFC(a1, *(v2 + 48));
  if (*(v2 + 64))
  {
    v4 = *(v2 + 72);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    Hasher._combine(_:)(v4 & 1);
    Hasher._combine(_:)(BYTE1(v4) & 1);
    Hasher._combine(_:)(BYTE2(v4) & 1);
    v5 = HIBYTE(v4) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  Hasher._combine(_:)(v5);
  if (*(v2 + 88))
  {
    v6 = *(v2 + 96);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    Hasher._combine(_:)(v6 & 1);
    Hasher._combine(_:)(BYTE1(v6) & 1);
    Hasher._combine(_:)(BYTE2(v6) & 1);
    v7 = HIBYTE(v6) & 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  Hasher._combine(_:)(v7);
}

Swift::Int sub_10006B508()
{
  Hasher.init(_seed:)();
  sub_10006B408(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10006B54C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10006B408(v2);
  return Hasher._finalize()();
}

uint64_t sub_10006B588(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_10006BCA4(v11, v13) & 1;
}

unint64_t sub_10006B5F8()
{
  result = qword_100175020;
  if (!qword_100175020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175020);
  }

  return result;
}

Swift::Int sub_10006B64C()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10006BAFC(v3, v1);
  return Hasher._finalize()();
}

void sub_10006B6CC(__int128 *a1)
{
  v3 = *(v1 + 32);
  String.hash(into:)();
  String.hash(into:)();

  sub_10006BAFC(a1, v3);
}

Swift::Int sub_10006B72C(uint64_t a1)
{
  v2 = *(v1 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  sub_10006BAFC(v4, v2);
  return Hasher._finalize()();
}

uint64_t sub_10006B7A8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_10006B864(v3, v7);
}
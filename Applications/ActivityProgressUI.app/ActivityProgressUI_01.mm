uint64_t sub_10001BA08@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10001BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v37 = a8;
  v32 = a7;
  v33 = a5;
  v40 = a4;
  v41 = a6;
  v34 = a3;
  v39 = a2;
  v9 = type metadata accessor for UUID();
  v35 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v36 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v38 = &v32 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  type metadata accessor for MainActor();

  v37 = v37;

  v17 = static MainActor.shared.getter();
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v17;
  *(v23 + 3) = &protocol witness table for MainActor;
  *(v23 + 4) = v16;
  (*(v10 + 32))(&v23[v18], v36, v35);
  *&v23[v19] = v37;
  v24 = &v23[v20];
  v25 = v34;
  *v24 = v39;
  v24[1] = v25;
  v26 = &v23[v21];
  v27 = v33;
  *v26 = v40;
  v26[1] = v27;
  v28 = &v23[v22];
  v29 = v32;
  *v28 = v41;
  v28[1] = v29;
  v30 = &v23[(v22 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v30 = 0;
  *(v30 + 1) = 0;

  sub_100018ED4(0, 0, v38, &unk_10003FD80, v23);
}

uint64_t sub_10001BD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v41 = a5;
  v46 = a4;
  v47 = a8;
  v37 = a7;
  v38 = a3;
  v44 = a2;
  v45 = a6;
  v36 = a9;
  v42 = a10;
  v11 = type metadata accessor for UUID();
  v39 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v40 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v43 = &v35 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  type metadata accessor for MainActor();

  v42 = v42;

  v19 = static MainActor.shared.getter();
  v20 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = v19;
  *(v25 + 3) = &protocol witness table for MainActor;
  *(v25 + 4) = v18;
  (*(v12 + 32))(&v25[v20], v40, v39);
  *&v25[v21] = v42;
  v26 = &v25[v22];
  v27 = v38;
  *v26 = v44;
  v26[1] = v27;
  v28 = &v25[v23];
  v29 = v37;
  *v28 = v45;
  v28[1] = v29;
  v30 = &v25[v24];
  v31 = v36;
  *v30 = v47;
  v30[1] = v31;
  v32 = &v25[(v24 + 23) & 0xFFFFFFFFFFFFFFF8];
  v33 = v41;
  *v32 = v46;
  v32[1] = v33;

  sub_100018ED4(0, 0, v43, &unk_10003FCD0, v25);
}

uint64_t sub_10001C1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 480) = v17;
  *(v8 + 488) = v18;
  *(v8 + 448) = v15;
  *(v8 + 464) = v16;
  *(v8 + 432) = a7;
  *(v8 + 440) = a8;
  *(v8 + 416) = a5;
  *(v8 + 424) = a6;
  *(v8 + 408) = a4;
  v9 = type metadata accessor for Date();
  *(v8 + 496) = v9;
  *(v8 + 504) = *(v9 - 8);
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v8 + 528) = v10;
  *(v8 + 536) = *(v10 - 8);
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 552) = swift_task_alloc();
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 592) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 600) = v12;
  *(v8 + 608) = v11;

  return _swift_task_switch(sub_10001C368, v12, v11);
}

uint64_t sub_10001C368()
{
  v79 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 616) = Strong;
  if (!Strong)
  {

LABEL_17:

    v51 = *(v0 + 8);

    return v51();
  }

  v2 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(*(v0 + 352) + 16))
  {
    sub_100029BB8(*(v0 + 416));
    if (v3)
    {

      if (qword_10005A198 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 552);
      v5 = *(v0 + 536);
      v6 = *(v0 + 528);
      v7 = *(v0 + 416);
      v8 = type metadata accessor for Logger();
      sub_100005D84(v8, qword_10005B420);
      (*(v5 + 16))(v4, v7, v6);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 552);
      v13 = *(v0 + 536);
      v14 = *(v0 + 528);
      if (v11)
      {
        v15 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v78[0] = v77;
        *v15 = 136315138;
        sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v16 = v2;
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        (*(v13 + 8))(v12, v14);
        v20 = v17;
        v2 = v16;
        v21 = sub_100029504(v20, v19, v78);

        *(v15 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v9, v10, "BackgroundActivitySessionsController: Received call to start new activity for existing task ID %s, converting to an updateProgress call", v15, 0xCu);
        sub_100005E20(v77);
      }

      else
      {

        (*(v13 + 8))(v12, v14);
      }

      sub_10001D3A8(*(v0 + 424), *(v0 + 416));

      goto LABEL_17;
    }
  }

  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 584);
  v23 = *(v0 + 536);
  v24 = *(v0 + 528);
  v25 = *(v0 + 416);
  v26 = type metadata accessor for Logger();
  v27 = sub_100005D84(v26, qword_10005B420);
  v75 = *(v23 + 16);
  v75(v22, v25, v24);

  v59 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 584);
  v32 = *(v0 + 536);
  v33 = *(v0 + 528);
  if (v30)
  {
    v71 = *(v0 + 432);
    v73 = *(v0 + 440);
    v34 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v34 = 136315394;
    sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v76 = *(v32 + 8);
    v76(v31, v33);
    v38 = sub_100029504(v35, v37, v78);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_100029504(v71, v73, v78);
    _os_log_impl(&_mh_execute_header, v28, v29, "Starting new activity for task ID %s and bundle ID %s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v76 = *(v32 + 8);
    v76(v31, v33);
  }

  v39 = *(v0 + 576);
  v40 = *(v0 + 568);
  v60 = *(v0 + 560);
  v41 = *(v0 + 528);
  v69 = *(v0 + 520);
  v70 = *(v0 + 504);
  v72 = *(v0 + 512);
  v74 = *(v0 + 496);
  v66 = *(v0 + 464);
  v67 = *(v0 + 472);
  v64 = *(v0 + 448);
  v65 = *(v0 + 456);
  v62 = *(v0 + 432);
  v63 = *(v0 + 440);
  v43 = *(v0 + 416);
  v42 = *(v0 + 424);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 624) = *(*(v0 + 360) + 16);

  v44 = [v42 ns];
  *(v0 + 632) = v44;
  v75(v39, v43, v41);
  type metadata accessor for BackgroundActivitySessionTask(0);
  v45 = swift_allocObject();
  *(v0 + 640) = v45;
  v46 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__icon;
  *(v0 + 368) = 0;
  v61 = v44;
  sub_100005D3C(&qword_10005AD40, "ʎ");
  Published.init(initialValue:)();
  v47 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__iconImageOverride;
  *(v0 + 376) = 0;
  sub_100005D3C(&unk_10005B650, &qword_10003FCE0);
  Published.init(initialValue:)();
  v68 = v41;
  v75(v40, v39, v41);
  swift_beginAccess();
  v75(v60, v40, v41);
  Published.init(initialValue:)();
  v76(v40, v41);
  swift_endAccess();
  swift_beginAccess();
  *(v0 + 304) = v62;
  *(v0 + 312) = v63;

  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  *(v0 + 320) = v64;
  *(v0 + 328) = v65;

  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  *(v0 + 336) = v66;
  *(v0 + 344) = v67;

  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  *(v0 + 400) = v61;
  sub_100009E1C(0, &qword_10005AD30, NSProgress_ptr);
  v48 = v61;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v49 = sub_100005D3C(&unk_10005B660, &qword_10003F528);
  (*(*(v49 - 8) + 8))(v45 + v46, v49);
  *(v0 + 384) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v50 = sub_100005D3C(&qword_10005B3B8, &qword_10003F530);
  (*(*(v50 - 8) + 8))(v45 + v47, v50);
  *(v0 + 392) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  LOBYTE(v41) = sub_10000F0AC();
  swift_beginAccess();
  *(v0 + 656) = v41 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  *(v0 + 657) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  *(v0 + 658) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  Date.init()();
  swift_beginAccess();
  (*(v70 + 16))(v72, v69, v74);
  Published.init(initialValue:)();
  (*(v70 + 8))(v69, v74);
  swift_endAccess();

  v76(v39, v68);
  sub_10001A5C8(v45);
  sub_10001AA34(v45);
  v53 = swift_task_alloc();
  *(v0 + 648) = v53;
  *v53 = v0;
  v53[1] = sub_10001D148;
  v54 = *(v0 + 480);
  v55 = *(v0 + 488);
  v56 = *(v0 + 432);
  v57 = *(v0 + 440);
  v58 = *(v0 + 416);

  return sub_10001ABA8(v58, v56, v57, v54, v55);
}

uint64_t sub_10001D148()
{
  v1 = *v0;

  v2 = *(v1 + 608);
  v3 = *(v1 + 600);

  return _swift_task_switch(sub_10001D268, v3, v2);
}

uint64_t sub_10001D268()
{
  v1 = v0[78];

  v2 = v0[79];
  v3 = v0[77];
  if (v1)
  {
    v4 = *&v3[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_hapticGenerator];
    [v4 notificationOccurred:0];
  }

  else
  {

    v3[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_shouldPlayHapticOnSceneActivation] = 1;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001D3A8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();

  v13 = a1;
  v14 = static MainActor.shared.getter();
  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = v14;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = v12;
  (*(v5 + 32))(&v17[v15], v7, v4);
  *&v17[v16] = v13;

  sub_100018ED4(0, 0, v10, &unk_10003FCC0, v17);
}

uint64_t sub_10001D7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = type metadata accessor for UUID();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001D89C, v9, v8);
}

uint64_t sub_10001D89C()
{
  v34 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*(*(v0 + 40) + 16) && (sub_100029BB8(*(v0 + 64)), (v3 & 1) != 0))
    {
      v5 = *(v0 + 64);
      v4 = *(v0 + 72);

      v6 = [v4 ns];
      sub_10001125C(v6, v5);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (*(v0 + 48))
      {
        v7 = *(v0 + 64);
        v8 = [*(v0 + 72) ns];
        sub_10001125C(v8, v7);
      }

      else
      {
      }
    }

    else
    {

      if (qword_10005A198 != -1)
      {
        swift_once();
      }

      v10 = *(v0 + 88);
      v9 = *(v0 + 96);
      v12 = *(v0 + 72);
      v11 = *(v0 + 80);
      v13 = *(v0 + 64);
      v14 = type metadata accessor for Logger();
      sub_100005D84(v14, qword_10005B420);
      (*(v10 + 16))(v9, v13, v11);
      v15 = v12;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      v18 = os_log_type_enabled(v16, v17);
      v20 = *(v0 + 88);
      v19 = *(v0 + 96);
      v21 = *(v0 + 80);
      if (v18)
      {
        v31 = *(v0 + 72);
        v22 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = v32;
        *v22 = 136315394;
        sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        (*(v20 + 8))(v19, v21);
        v26 = sub_100029504(v23, v25, &v33);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2112;
        v27 = [v31 ns];
        *(v22 + 14) = v27;
        *v30 = v27;
        _os_log_impl(&_mh_execute_header, v16, v17, "BackgroundActivitySessionsController: No session found when updating progress for task ID %s to %@", v22, 0x16u);
        sub_10000619C(v30, &qword_10005BC80, &qword_10003E860);

        sub_100005E20(v32);
      }

      else
      {

        (*(v20 + 8))(v19, v21);
      }
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

void sub_10001DCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a1;
  v31 = a3;
  v26 = a2;
  v7 = type metadata accessor for UUID();
  v27 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v29 = &v26 - v11;
  sub_100009E1C(0, &unk_10005B640, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v7);
  type metadata accessor for MainActor();

  v16 = a4;

  v17 = isa;
  v18 = static MainActor.shared.getter();
  v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = v18;
  *(v22 + 3) = &protocol witness table for MainActor;
  *(v22 + 4) = v15;
  (*(v8 + 32))(&v22[v19], v28, v27);
  v23 = &v22[v20];
  v24 = v26;
  *v23 = v30;
  v23[1] = v24;
  v25 = &v22[v21];
  *v25 = v31;
  v25[1] = v16;
  *&v22[(v21 + 23) & 0xFFFFFFFFFFFFFFF8] = v17;

  sub_100018ED4(0, 0, v29, &unk_10003FCB0, v22);
}

uint64_t sub_10001DFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v31 = a5;
  v32 = a1;
  v27 = a4;
  v28 = a2;
  v33 = a3;
  v7 = type metadata accessor for UUID();
  v29 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v30 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v7);
  type metadata accessor for MainActor();

  v15 = v31;
  v16 = static MainActor.shared.getter();
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = v16;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = v14;
  (*(v8 + 32))(&v20[v17], v30, v29);
  v21 = &v20[v18];
  v22 = v28;
  *v21 = v32;
  v21[1] = v22;
  v23 = &v20[v19];
  v24 = v27;
  *v23 = v33;
  v23[1] = v24;
  *&v20[(v19 + 23) & 0xFFFFFFFFFFFFFFF8] = v15;

  sub_100018ED4(0, 0, v12, &unk_10003FC18, v20);
}

uint64_t sub_10001E398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v14;
  v8[20] = v15;
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v9 = type metadata accessor for UUID();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[25] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001E4AC, v11, v10);
}

uint64_t sub_10001E4AC()
{
  v67 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_18;
  }

  v2 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = *(v0 + 96);
  if (!*(v3 + 16))
  {
    goto LABEL_12;
  }

  v4 = sub_100029BB8(*(v0 + 120));
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  v7 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  if (*(*(v6 + v7) + 16))
  {
    v8 = *(v0 + 120);

    sub_100029BB8(v8);
    if (v9)
    {
      v64 = v2;

      if (qword_10005A198 != -1)
      {
        swift_once();
      }

      v10 = *(v0 + 192);
      v11 = *(v0 + 168);
      v12 = *(v0 + 176);
      v13 = *(v0 + 120);
      v14 = type metadata accessor for Logger();
      sub_100005D84(v14, qword_10005B420);
      (*(v12 + 16))(v10, v13, v11);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 192);
      v19 = *(v0 + 168);
      v20 = *(v0 + 176);
      if (v17)
      {
        v56 = *(v0 + 144);
        v58 = *(v0 + 152);
        v54 = *(v0 + 128);
        v55 = *(v0 + 136);
        v21 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v21 = 136315650;
        sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v23;
        (*(v20 + 8))(v18, v19);
        v25 = sub_100029504(v22, v24, &v66);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_100029504(v54, v55, &v66);
        *(v21 + 22) = 2080;
        *(v21 + 24) = sub_100029504(v56, v58, &v66);
        _os_log_impl(&_mh_execute_header, v15, v16, "Updating title and subtitle for task identifier %s to title: %s and subtitle: %s", v21, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v20 + 8))(v18, v19);
      }

      v44 = *(v0 + 144);
      v62 = *(v0 + 152);
      v45 = *(v0 + 128);
      v46 = *(v0 + 136);
      v47 = *(v0 + 120);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v48 = *(v0 + 72);
      v60 = *(v0 + 64);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v50 = *(v0 + 80);
      v49 = *(v0 + 88);
      sub_100011718(v45, v46, v44, v62, v47);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (*(v0 + 104))
      {
        sub_100011718(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 120));
      }

      if (![*(v0 + 160) BOOLValue])
      {

        goto LABEL_18;
      }

      if (v60 == *(v0 + 128) && v48 == *(v0 + 136))
      {
      }

      else
      {
        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v51 & 1) == 0)
        {

LABEL_36:
          v53 = *&v64[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_hapticGenerator];
          [v53 notificationOccurred:0];

          goto LABEL_18;
        }
      }

      if (v50 == *(v0 + 144) && v49 == *(v0 + 152))
      {

LABEL_34:

        goto LABEL_18;
      }

      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v52)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_13:
  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 176);
  v26 = *(v0 + 184);
  v28 = *(v0 + 168);
  v29 = *(v0 + 120);
  v30 = type metadata accessor for Logger();
  sub_100005D84(v30, qword_10005B420);
  (*(v27 + 16))(v26, v29, v28);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 176);
  v35 = *(v0 + 184);
  v36 = *(v0 + 168);
  if (v33)
  {
    v61 = *(v0 + 144);
    v63 = *(v0 + 152);
    v57 = *(v0 + 128);
    v59 = *(v0 + 136);
    v37 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v37 = 136315650;
    sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v65 = v2;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    (*(v34 + 8))(v35, v36);
    v41 = sub_100029504(v38, v40, &v66);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_100029504(v57, v59, &v66);
    *(v37 + 22) = 2080;
    *(v37 + 24) = sub_100029504(v61, v63, &v66);
    _os_log_impl(&_mh_execute_header, v31, v32, "BackgroundActivitySessionsController: No session found when updating name and description for task ID %s to name: %s and description: %s", v37, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v34 + 8))(v35, v36);
  }

LABEL_18:

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_10001EE60(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v11;
  *(v13 + 3) = &protocol witness table for MainActor;
  *(v13 + 4) = v10;
  (*(v3 + 32))(&v13[v12], v5, v2);

  sub_100018ED4(0, 0, v8, &unk_10003FC08, v13);
}

uint64_t sub_10001F088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = type metadata accessor for UUID();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001F17C, v8, v7);
}

uint64_t sub_10001F17C()
{
  v25 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*(v0[5] + 16) && (sub_100029BB8(v0[7]), (v3 & 1) != 0))
    {
      v4 = v0[7];

      sub_10001B02C(v4, 0);
    }

    else
    {

      if (qword_10005A198 != -1)
      {
        swift_once();
      }

      v6 = v0[9];
      v5 = v0[10];
      v8 = v0[7];
      v7 = v0[8];
      v9 = type metadata accessor for Logger();
      sub_100005D84(v9, qword_10005B420);
      (*(v6 + 16))(v5, v8, v7);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      v12 = os_log_type_enabled(v10, v11);
      v14 = v0[9];
      v13 = v0[10];
      v15 = v0[8];
      if (v12)
      {
        v16 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = v23;
        *v16 = 136315138;
        sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        (*(v14 + 8))(v13, v15);
        v20 = sub_100029504(v17, v19, &v24);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v10, v11, "BackgroundActivitySessionsController: No session found when end activity for task ID %s", v16, 0xCu);
        sub_100005E20(v23);
      }

      else
      {

        (*(v14 + 8))(v13, v15);
      }
    }
  }

  v21 = v0[1];

  return v21();
}

void sub_10001F574(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v37 - v9;
  v11 = [a1 integerValue];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v39[2])
  {
    sub_100029BB8(a2);
    if (v12)
    {

      if (qword_10005A198 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100005D84(v13, qword_10005B420);
      (*(v5 + 16))(v10, a2, v4);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v14, v15))
      {

        (*(v5 + 8))(v10, v4);
LABEL_29:
        sub_100013B28(v11, a2);

        return;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v39 = v17;
      *v16 = 136315394;
      LODWORD(v38) = v15;
      v37[1] = v17;
      if (v11 <= 2)
      {
        switch(v11)
        {
          case 0:
            v18 = v4;
            v19 = 0xEC00000073736572;
            v20 = 0x676F7250776F6C73;
            goto LABEL_28;
          case 1:
            v18 = v4;
            v19 = 0xE800000000000000;
            v20 = 0x6E69617244436F53;
            goto LABEL_28;
          case 2:
            v18 = v4;
            v19 = 0x8000000100045070;
            v20 = 0xD000000000000011;
LABEL_28:
            v32 = sub_100029504(v20, v19, &v39);

            *(v16 + 4) = v32;
            *(v16 + 12) = 2080;
            sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v33 = dispatch thunk of CustomStringConvertible.description.getter();
            v35 = v34;
            (*(v5 + 8))(v10, v18);
            v36 = sub_100029504(v33, v35, &v39);

            *(v16 + 14) = v36;
            _os_log_impl(&_mh_execute_header, v14, v38, "BackgroundActivitySessionsController handle event %s for task ID %s", v16, 0x16u);
            swift_arrayDestroy();

            goto LABEL_29;
        }
      }

      else
      {
        if (v11 <= 4)
        {
          v18 = v4;
          if (v11 == 3)
          {
            v19 = 0x8000000100045050;
            v20 = 0xD000000000000014;
          }

          else
          {
            v19 = 0x8000000100045030;
            v20 = 0xD000000000000012;
          }

          goto LABEL_28;
        }

        if (v11 == 5)
        {
          v18 = v4;
          v19 = 0x8000000100045010;
          v20 = 0xD000000000000016;
          goto LABEL_28;
        }

        if (v11 == 6)
        {
          v18 = v4;
          v20 = 0xD000000000000010;
          v19 = 0x8000000100044FF0;
          goto LABEL_28;
        }
      }

      v18 = v4;
      v19 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
      goto LABEL_28;
    }
  }

  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100005D84(v21, qword_10005B420);
  (*(v5 + 16))(v8, a2, v4);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v25 = 138412546;
    *(v25 + 4) = v22;
    *v26 = v22;
    *(v25 + 12) = 2080;
    sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27 = v22;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v5 + 8))(v8, v4);
    v31 = sub_100029504(v28, v30, &v39);

    *(v25 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "BackgroundActivitySessionsController can't handle unknown event %@ for task ID %s", v25, 0x16u);
    sub_10000619C(v26, &qword_10005BC80, &qword_10003E860);

    sub_100005E20(v38);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001FC5C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v12, v11);

  return (*(v9 + 8))(v11, v8);
}

void sub_10001FD68(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setTargetQueue:*(a2 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_queue)];
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v6];

  [a1 setInterface:a3];
  [a1 setInterfaceTarget:a2];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_100023D30;
  v17 = v7;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100006890;
  v15 = &unk_1000528A8;
  v8 = _Block_copy(&v12);

  [a1 setActivationHandler:v8];
  _Block_release(v8);
  v16 = sub_1000201C4;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100006890;
  v15 = &unk_1000528D0;
  v9 = _Block_copy(&v12);
  [a1 setInterruptionHandler:v9];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v16 = sub_100023D70;
  v17 = v10;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100006890;
  v15 = &unk_100052920;
  v11 = _Block_copy(&v12);

  [a1 setInvalidationHandler:v11];
  _Block_release(v11);
}

void sub_10001FFE4(void *a1, uint64_t a2)
{
  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005D84(v3, qword_10005B420);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "BackgroundActivitySessionsController: connection activated from client!", v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([a1 remoteTarget])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v10[0] = v11;
    v10[1] = v12;
    if (*(&v12 + 1))
    {
      sub_100005D3C(&unk_10005B630, &unk_10003FBF0);
      if (swift_dynamicCast())
      {
        *&v8[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient] = v9;

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      sub_10000619C(v10, &qword_10005A9B0, &qword_10003EA60);
    }
  }
}

id sub_1000201C4(void *a1)
{
  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005D84(v2, qword_10005B420);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BackgroundActivitySessionsController: connection interrupted, reconnecting", v5, 2u);
  }

  return [a1 activate];
}

uint64_t sub_1000202BC(uint64_t a1, uint64_t a2)
{
  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005D84(v2, qword_10005B420);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BackgroundActivitySessionsController: connection invalidated", v5, 2u);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = *&Strong[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_connection];
  *&Strong[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_connection] = 0;

  v8 = swift_unknownObjectUnownedLoadStrong();
  *&v8[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient] = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_1000203EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000204D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for APKDeviceLockState();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v35 = v10;
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005D84(v13, qword_10005B420);
  v34 = *(v8 + 16);
  v34(v12, a1, v7);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v6;
    v17 = v16;
    v31 = swift_slowAlloc();
    v37 = v31;
    *v17 = 136315138;
    sub_1000247B8(&qword_10005B598, &type metadata accessor for APKDeviceLockState, &protocol conformance descriptor for APKDeviceLockState);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = a1;
    v19 = v2;
    v21 = v20;
    (*(v8 + 8))(v12, v7);
    v22 = sub_100029504(v18, v21, &v37);
    v2 = v19;
    a1 = v32;

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Lock state changed to %s", v17, 0xCu);
    sub_100005E20(v31);

    v6 = v33;
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  v24 = v36;
  v34(v36, a1, v7);
  type metadata accessor for MainActor();
  v25 = v2;
  v26 = static MainActor.shared.getter();
  v27 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = v26;
  *(v28 + 3) = &protocol witness table for MainActor;
  *(v28 + 4) = v25;
  (*(v8 + 32))(&v28[v27], v24, v7);
  sub_100018ED4(0, 0, v6, &unk_10003FA80, v28);
}

uint64_t sub_1000208D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100020970, v7, v6);
}

uint64_t sub_100020970()
{
  v10 = v0;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1000219D4(*(v1 + 16), 0);
    v4 = sub_100023598(&v9, v3 + 4, v2, v1);
    sub_1000236EC(v9);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = &_swiftEmptyArrayStorage;
LABEL_5:
  v9 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v0[2])
  {

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v3 = v9;
  }

  v5 = v0[4];
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  sub_100020DC0(sub_1000236FC, v6, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100020B88(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for APKDeviceLockState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v16 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000247B8(&unk_10005B5A0, &type metadata accessor for APKDeviceLockState, &protocol conformance descriptor for APKDeviceLockState);
  v10 = a2;
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v5 + 8);
  result = v12(v9, v4);
  if ((v11 & 1) == 0)
  {
    v15[1] = v2;
    v14 = *(v5 + 16);
    v14(v9, v10, v4);
    v15[0] = swift_getKeyPath();
    swift_getKeyPath();
    v14(v16, v9, v4);

    static Published.subscript.setter();
    return v12(v9, v4);
  }

  return result;
}

void (*sub_100020DC0(void (*result)(uint64_t *), uint64_t a2, unint64_t a3))(uint64_t *)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100020ED8()
{
  v1 = type metadata accessor for APKDeviceLockState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100020FA4(uint64_t a1)
{
  v4 = *(type metadata accessor for APKDeviceLockState() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100007EE0;

  return sub_1000208D8(a1, v6, v7, v8, v1 + v5);
}

id sub_10002109C()
{
  result = sub_1000210BC();
  qword_10005B438 = result;
  return result;
}

id sub_1000210BC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() interfaceWithIdentifier:v0];

  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol:&OBJC_PROTOCOL___APKActivityProgressUIServer];
  [v1 setServer:v3];

  v4 = [v2 protocolForProtocol:&OBJC_PROTOCOL___APKActivityProgressUIClient];
  [v1 setClient:v4];

  [v1 setClientMessagingExpectation:0];
  return v1;
}

uint64_t sub_100021204@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  a4[1] = v7;
  return result;
}

uint64_t sub_100021294(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100021314@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_100021394(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10002140C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10002148C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100021500()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10002157C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for APKDeviceLockState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v10(v7, v9, v3);

  static Published.subscript.setter();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1000216EC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10002176C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000217E4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000218DC;

  return v6(a1);
}

uint64_t sub_1000218DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1000219D4(uint64_t a1, uint64_t a2)
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

  sub_100005D3C(&qword_10005BFE0, &qword_10003E530);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_100021A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021ACC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021B04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007EE0;

  return sub_1000217E4(a1, v4);
}

uint64_t sub_100021BBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007B74;

  return sub_1000217E4(a1, v4);
}

Swift::Int sub_100021CA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005D3C(&unk_10005A5B0, &qword_10003E440);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100021F4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_100005D3C(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_1000247B8(&qword_10005B288, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

Swift::Int sub_100022328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005D3C(&qword_10005A678, &qword_10003E538);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000225D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100022780(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1000247B8(&qword_10005B288, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_100022AA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100029C3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100021CA4(v16, a4 & 1);
      v11 = sub_100029C3C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100023040();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_100022C30(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_100029BB8(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_1000231B0(v26, v27);
      goto LABEL_7;
    }

    sub_100021F4C(v19, a3 & 1, v26, v27);
    v24 = sub_100029BB8(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_100022F88(v16, v13, a1, v22);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t sub_100022E0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100029C3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100022328(v16, a4 & 1);
      v11 = sub_100029C3C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100023428();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_100022F88(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_100023040()
{
  v1 = v0;
  sub_100005D3C(&unk_10005A5B0, &qword_10003E440);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000231B0(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005D3C(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

void *sub_100023428()
{
  v1 = v0;
  sub_100005D3C(&qword_10005A678, &qword_10003E538);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100023598(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100023720(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005D3C(&qword_10005B5B0, &qword_10003FB80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023798()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000237E0(void *a1)
{
  v2 = v1;
  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005D84(v4, qword_10005B420);
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
    _os_log_impl(&_mh_execute_header, v6, v7, "BackgroundActivitySessionsController received a connection! %@", v8, 0xCu);
    sub_10000619C(v9, &qword_10005BC80, &qword_10003E860);
  }

  if (qword_10005A1A8 != -1)
  {
    swift_once();
  }

  v11 = qword_10005B438;
  v12 = [v5 remoteProcess];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 hasEntitlement:v13];

  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    *(v15 + 24) = v11;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_100023CB0;
    *(v16 + 24) = v15;
    v31 = sub_100023CB8;
    v32 = v16;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v30 = sub_100024850;
    *(&v30 + 1) = &unk_100052858;
    v17 = _Block_copy(&aBlock);
    v18 = v2;
    v19 = v11;

    [v5 configureConnection:v17];
    _Block_release(v17);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if ((v17 & 1) == 0)
    {
      [v5 activate];
      v20 = *&v18[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_connection];
      *&v18[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_connection] = v5;
      v21 = v5;

      if ([v21 remoteTarget])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      aBlock = v27;
      v30 = v28;
      if (*(&v28 + 1))
      {
        sub_100005D3C(&unk_10005B630, &unk_10003FBF0);
        if (swift_dynamicCast())
        {
          v24 = v26;
LABEL_22:
          *&v18[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient] = v24;

          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
        sub_10000619C(&aBlock, &qword_10005A9B0, &qword_10003EA60);
      }

      v24 = 0;
      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v22, "BackgroundActivitySessionsController got a connection from an un-entitled process!", v23, 2u);
    }
  }
}

uint64_t sub_100023C70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023CE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100023CF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023D38()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023D78()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100023E44(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100007B74;

  return sub_10001F088(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100023F40(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v15 = v1[2];
  v8 = v1[4];
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100007EE0;

  return sub_10001E398(a1, v15, v7, v8, v1 + v4, v10, v11, v12);
}

uint64_t sub_10002414C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10002425C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10002433C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100007EE0;

  return sub_10001D7A4(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10002446C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v11 = *(v1 + v5);
  v12 = v1[4];
  v7 = *(v1 + v6 + 8);
  v10 = *(v1 + v6);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007EE0;

  return sub_10001C1B0(a1, v14, v13, v12, v1 + v4, v11, v10, v7);
}

uint64_t sub_100024614()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

unint64_t sub_100024754()
{
  result = qword_10005B698;
  if (!qword_10005B698)
  {
    sub_100005F90(&qword_10005B690, qword_10003FD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B698);
  }

  return result;
}

uint64_t sub_1000247B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100024858@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LayoutSubviews();
  sub_100027594(&qword_10005B998, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v9[4] == v9[0])
  {
    v2 = type metadata accessor for LayoutSubview();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = dispatch thunk of Collection.subscript.read();
    v6 = v5;
    v7 = type metadata accessor for LayoutSubview();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_100024A24(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) ^ *(a2 + 16) ^ 1u;
  }

  return 0;
}

double sub_100024A60@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_100024AE4(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return static EdgeInsets.== infix(_:_:)(a1[2], a1[3], a1[4], a1[5], a2[2], a2[3], a2[4], a2[5]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100024B14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100024B8C()
{
  v1 = OBJC_IVAR____TtC18ActivityProgressUI29APUISystemApertureLayoutState__metrics;
  v2 = sub_100005D3C(&qword_10005B950, &qword_100040390);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18ActivityProgressUI29APUISystemApertureLayoutState__context;
  v4 = sub_100005D3C(&qword_10005B958, &qword_100040398);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_100024C80@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for APUISystemApertureLayoutState(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100024CD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v38 = a1;
  v42 = a2;
  v41 = sub_100005D3C(&qword_10005B8D0, &qword_1000402B0);
  __chkstk_darwin(v41);
  v4 = v36 - v3;
  v39 = sub_100005D3C(&qword_10005B8D8, &qword_1000402B8);
  __chkstk_darwin(v39);
  v6 = v36 - v5;
  v40 = sub_100005D3C(&qword_10005B8E0, &qword_1000402C0);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v8 = v36 - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v2 + 8);
  v13 = *v2;
  v49 = *v2;
  if (v50 == 1)
  {
    if ((v13 & 1) == 0)
    {
LABEL_3:
      v47 = v2[2];
      v48 = *(v2 + 24);
      v46 = *(v2 + 2);
      v14 = swift_allocObject();
      v15 = *(v2 + 1);
      v14[1] = *v2;
      v14[2] = v15;
      v16 = *(v2 + 3);
      v14[3] = *(v2 + 2);
      v14[4] = v16;
      v17 = sub_100005D3C(&qword_10005B8F0, &qword_1000402D0);
      (*(*(v17 - 8) + 16))(v4, v38, v17);
      v18 = &v4[*(v41 + 36)];
      *v18 = 0;
      *(v18 + 1) = 0;
      *(v18 + 2) = sub_100026A04;
      *(v18 + 3) = v14;
      sub_1000064B0(v4, v6, &qword_10005B8D0, &qword_1000402B0);
      swift_storeEnumTagMultiPayload();
      sub_1000064B0(&v49, &v43, &qword_10005B8E8, &qword_1000402C8);
      sub_1000064B0(&v47, &v43, &qword_10005B8E8, &qword_1000402C8);
      sub_1000064B0(&v46, &v43, &qword_10005B8F8, &qword_1000402D8);
      v19 = sub_100006260(&qword_10005B900, &qword_10005B8F0, &qword_1000402D0, &protocol conformance descriptor for _ViewModifier_Content<A>);
      v20 = sub_100026A2C();

      *&v43 = v17;
      *(&v43 + 1) = &type metadata for APUISystemApertureLayoutState.Context;
      v44 = v19;
      v45 = v20;
      swift_getOpaqueTypeConformance2();
      sub_100026A80();
      _ConditionalContent<>.init(storage:)();
      return sub_10000619C(v4, &qword_10005B8D0, &qword_1000402B0);
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000619C(&v49, &qword_10005B8E8, &qword_1000402C8);
    (*(v10 + 8))(v12, v9);
    if (v43 != 1)
    {
      goto LABEL_3;
    }
  }

  v23 = v2[4];
  v36[1] = v2[5];
  BYTE8(v46) = *(v2 + 24);
  v24 = v2[2];
  *&v46 = v24;
  if (BYTE8(v46) == 1)
  {
    if ((v24 & 1) == 0)
    {
LABEL_7:
      v25 = 0;
      v26 = 0uLL;
      goto LABEL_11;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000619C(&v46, &qword_10005B8E8, &qword_1000402C8);
    (*(v10 + 8))(v12, v9);
    if ((v43 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (!v23)
  {
    type metadata accessor for APUISystemApertureLayoutState(0);
    sub_100027594(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v26 = v43;
  v25 = v44;
LABEL_11:
  v43 = v26;
  LOBYTE(v44) = v25;
  v28 = swift_allocObject();
  v29 = *(v2 + 1);
  v28[1] = *v2;
  v28[2] = v29;
  v30 = *(v2 + 3);
  v28[3] = *(v2 + 2);
  v28[4] = v30;
  sub_1000064B0(&v49, &v47, &qword_10005B8E8, &qword_1000402C8);
  sub_1000064B0(&v46, &v47, &qword_10005B8E8, &qword_1000402C8);

  v31 = sub_100005D3C(&qword_10005B8F0, &qword_1000402D0);
  v32 = sub_100006260(&qword_10005B900, &qword_10005B8F0, &qword_1000402D0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v33 = sub_100026A2C();
  View.onChange<A>(of:initial:_:)();

  v34 = v37;
  v35 = v40;
  (*(v37 + 16))(v6, v8, v40);
  swift_storeEnumTagMultiPayload();
  *&v43 = v31;
  *(&v43 + 1) = &type metadata for APUISystemApertureLayoutState.Context;
  v44 = v32;
  v45 = v33;
  swift_getOpaqueTypeConformance2();
  sub_100026A80();
  _ConditionalContent<>.init(storage:)();
  return (*(v34 + 8))(v8, v35);
}

uint64_t View.onDismiss(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  type metadata accessor for APUISystemApertureLayoutState(0);
  sub_100027594(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);
  EnvironmentObject.init()();

  View.modifier<A>(_:)();
}

uint64_t type metadata accessor for APUISystemApertureLayoutState(uint64_t a1)
{
  result = qword_10005B7B8;
  if (!qword_10005B7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100025648(uint64_t a1, char a2, double a3, double a4, uint64_t a5, char a6)
{
  v8 = sub_100005D3C(&qword_10005B990, &qword_100040520);
  __chkstk_darwin(v8 - 8);
  v10 = &v16[-v9];
  v11 = type metadata accessor for LayoutSubview();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100024858(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000619C(v10, &qword_10005B990, &qword_100040520);
  }

  (*(v12 + 32))(v14, v10, v11);
  v16[24] = a2 & 1;
  v16[16] = a6 & 1;
  LayoutSubview.sizeThatFits(_:)();
  static UnitPoint.topLeading.getter();
  v16[8] = 0;
  v16[0] = 0;
  LayoutSubview.place(at:anchor:proposal:)();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100025878(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_100005D3C(&qword_10005B990, &qword_100040520);
  __chkstk_darwin(v6 - 8);
  v8 = &v14[-v7];
  v9 = type metadata accessor for LayoutSubview();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100024858(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000619C(v8, &qword_10005B990, &qword_100040520);
  }

  (*(v10 + 32))(v12, v8, v9);
  v14[8] = a2 & 1;
  v14[0] = a4 & 1;
  LayoutSubview.sizeThatFits(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t (*sub_100025B30(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100025BB8;
}

void sub_100025BB8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void *sub_100025C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v25 = a5;
  v26 = a1;
  v28 = a6;
  v27 = sub_100005D3C(&qword_10005B918, &qword_100040328);
  __chkstk_darwin(v27);
  v10 = &v25 - v9;
  v11 = sub_100005D3C(&qword_10005B920, &qword_100040330);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000269F8(a2, 0);
    (*(v15 + 8))(v17, v14);
    if (v29 != 1)
    {
      goto LABEL_10;
    }
  }

  if (!a4)
  {
    type metadata accessor for APUISystemApertureLayoutState(0);
    sub_100027594(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (*&v29 >= 1.0 && *(&v29 + 1) >= 1.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v19 = v30;
    v20 = v31;
    *v13 = v29;
    *(v13 + 1) = v19;
    *(v13 + 2) = v20;
    v21 = *(v11 + 44);
    v22 = sub_100005D3C(&qword_10005B928, &qword_100040338);
    (*(*(v22 - 8) + 16))(&v13[v21], v26, v22);
    sub_1000064B0(v13, v10, &qword_10005B920, &qword_100040330);
    swift_storeEnumTagMultiPayload();
    sub_100026DF4();
    sub_100006260(&qword_10005B948, &qword_10005B928, &qword_100040338, &protocol conformance descriptor for _ViewModifier_Content<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_10000619C(v13, &qword_10005B920, &qword_100040330);
  }

LABEL_10:
  v24 = sub_100005D3C(&qword_10005B928, &qword_100040338);
  (*(*(v24 - 8) + 16))(v10, v26, v24);
  swift_storeEnumTagMultiPayload();
  sub_100026DF4();
  sub_100006260(&qword_10005B948, &qword_10005B928, &qword_100040338, &protocol conformance descriptor for _ViewModifier_Content<A>);
  return _ConditionalContent<>.init(storage:)();
}

Swift::Int _s18ActivityProgressUI35APUISystemApertureVerticalPlacementO9hashValueSivg_0(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000261C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100026208(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t View.systemApertureVerticalPlacement(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  type metadata accessor for APUISystemApertureLayoutState(0);
  sub_100027594(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);
  EnvironmentObject.init()();
  View.modifier<A>(_:)();
}

unint64_t sub_100026328()
{
  result = qword_10005B770;
  if (!qword_10005B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B770);
  }

  return result;
}

unint64_t sub_100026380()
{
  result = qword_10005B778;
  if (!qword_10005B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B778);
  }

  return result;
}

void sub_1000263DC(uint64_t a1)
{
  sub_10000F848(319, &qword_10005B7C8, &type metadata for APUISystemApertureLayoutState.Metrics);
  if (v1 <= 0x3F)
  {
    sub_10000F848(319, &unk_10005B7D0, &type metadata for APUISystemApertureLayoutState.Context);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000264FC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_10002658C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002666C()
{
  result = qword_10005B8C0;
  if (!qword_10005B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B8C0);
  }

  return result;
}

uint64_t sub_1000266E8(void *a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_100026758()
{
  result = qword_10005B8C8;
  if (!qword_10005B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B8C8);
  }

  return result;
}

__n128 sub_1000267C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000267DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100026824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for APUISystemApertureLayoutState.Context(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for APUISystemApertureLayoutState.Context(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for APUISystemApertureLayoutState.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100026940(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100026954(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100026974(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1000269F8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_100026A2C()
{
  result = qword_10005B908;
  if (!qword_10005B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B908);
  }

  return result;
}

unint64_t sub_100026A80()
{
  result = qword_10005B910;
  if (!qword_10005B910)
  {
    sub_100005F90(&qword_10005B8D0, &qword_1000402B0);
    sub_100006260(&qword_10005B900, &qword_10005B8F0, &qword_1000402D0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B910);
  }

  return result;
}

uint64_t sub_100026B38()
{
  sub_1000269F8(*(v0 + 16), *(v0 + 24));
  sub_1000269F8(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100026B90(uint64_t a1, uint64_t a2)
{
  if (*a2 == 3 && *(a2 + 16) != 0)
  {
    return (*(v2 + 64))(a1);
  }

  return a1;
}

double sub_100026BD0@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_100026C58(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_100026CE0@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_100026D6C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_100026DF4()
{
  result = qword_10005B930;
  if (!qword_10005B930)
  {
    sub_100005F90(&qword_10005B920, &qword_100040330);
    sub_100006260(&qword_10005B938, &qword_10005B940, &qword_100040340, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100006260(&qword_10005B948, &qword_10005B928, &qword_100040338, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B930);
  }

  return result;
}

id sub_100026EE0(void *a1, uint64_t a2)
{
  v3 = [a1 activeLayoutMode];
  result = [a1 view];
  if (result)
  {
    v5 = result;
    v6 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

    [v6 layoutFrame];
    v8 = v7;
    v10 = v9;

    if (v3 == 4)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v22[0] != v8 || v22[1] != v10)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v12 = static Published.subscript.modify();
        *v13 = v8;
        v13[1] = v10;
        v12(v22, 0);
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*&v22[0] != v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v14 = static Published.subscript.modify();
      *v15 = v3;
      v14(v22, 0);

      v16 = [objc_msgSend(a1 "systemApertureElementContext")];
      result = swift_unknownObjectRelease();
      if (v16)
      {
        v17 = [v16 fromLayoutMode];
        swift_getKeyPath();
        swift_getKeyPath();
        v18 = static Published.subscript.modify();
        *(v19 + 8) = v17;
        v18(v22, 0);

        LOBYTE(v17) = [v16 isUserInitiated];
        swift_getKeyPath();
        swift_getKeyPath();
        v20 = static Published.subscript.modify();
        *(v21 + 16) = v17;
        v20(v22, 0);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100027250(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1000272B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100027318()
{
  result = qword_10005B960;
  if (!qword_10005B960)
  {
    sub_100005F90(&qword_10005B968, &qword_100040410);
    sub_100005F90(&qword_10005B8F0, &qword_1000402D0);
    sub_100006260(&qword_10005B900, &qword_10005B8F0, &qword_1000402D0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100026A2C();
    swift_getOpaqueTypeConformance2();
    sub_100026A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B960);
  }

  return result;
}

unint64_t sub_10002742C()
{
  result = qword_10005B970;
  if (!qword_10005B970)
  {
    sub_100005F90(&qword_10005B978, qword_100040418);
    sub_100026DF4();
    sub_100006260(&qword_10005B948, &qword_10005B928, &qword_100040338, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B970);
  }

  return result;
}

unint64_t sub_1000274E8()
{
  result = qword_10005B980;
  if (!qword_10005B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B980);
  }

  return result;
}

unint64_t sub_100027540()
{
  result = qword_10005B988;
  if (!qword_10005B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B988);
  }

  return result;
}

uint64_t sub_100027594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100027628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100022AA0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100029C3C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_100023040();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_1000225D0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_100027720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100022E0C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100029C3C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_100023428();
        v14 = v16;
      }

      result = sub_1000225D0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_100027818()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005B9A0);
  v1 = sub_100005D84(v0, qword_10005B9A0);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t APUIRemoteAlertPresentationRequest.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t APUIRemoteAlertPresentationRequest.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_100027A4C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t APUIRemoteAlertPresentationHandle.onDismiss.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_1000177A8(v1, *(v0 + 72));
  return v1;
}

uint64_t APUIRemoteAlertPresentationHandle.onDismiss.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_100007E00(v5, v6);
}

void APUIRemoteAlertPresentationHandle.dismiss(animated:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_10005A1B0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005D84(v8, qword_10005B9A0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v13 = a2;
    v14 = a3;
    v15 = a1;
    v17 = *(v4 + 16);
    v16 = *(v4 + 24);

    v18 = sub_100029504(v17, v16, aBlock);
    a1 = v15;
    a3 = v14;
    a2 = v13;

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Received request to dismiss remote alert with ID: %s", v11, 0xCu);
    sub_100005E20(v12);
  }

  v29 = *(v4 + 32);
  v19 = [v29 presentingViewController];
  if (v19)
  {

    if ((*(v4 + 81) & 1) == 0)
    {
      *(v4 + 81) = 1;
      v20 = swift_allocObject();
      *(v20 + 16) = a2;
      *(v20 + 24) = a3;
      aBlock[4] = sub_100029AFC;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007578;
      aBlock[3] = &unk_100052F30;
      v21 = _Block_copy(aBlock);
      sub_1000177A8(a2, a3);

      [v29 dismissViewControllerAnimated:a1 & 1 completion:v21];
      _Block_release(v21);

      return;
    }
  }

  else
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      v26 = *(v4 + 16);
      v27 = *(v4 + 24);

      v28 = sub_100029504(v26, v27, aBlock);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Invalidating handle for remote alert which is not yet presented with ID: %s", v24, 0xCu);
      sub_100005E20(v25);
    }

    [*(v4 + 56) invalidate];
  }
}

uint64_t APUIRemoteAlertPresentationHandle.deinit()
{

  sub_100007E00(*(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t APUIRemoteAlertPresentationHandle.__deallocating_deinit()
{

  sub_100007E00(*(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

id sub_100027F90()
{
  result = [objc_allocWithZone(type metadata accessor for APUIRemoteAlertPresentationManager()) init];
  static APUIRemoteAlertPresentationManager.shared = result;
  return result;
}

id APUISystemApertureElementTransitionCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *APUIRemoteAlertPresentationManager.shared.unsafeMutableAddressor()
{
  if (qword_10005A1B8 != -1)
  {
    swift_once();
  }

  return &static APUIRemoteAlertPresentationManager.shared;
}

id static APUIRemoteAlertPresentationManager.shared.getter()
{
  if (qword_10005A1B8 != -1)
  {
    swift_once();
  }

  v1 = static APUIRemoteAlertPresentationManager.shared;

  return v1;
}

uint64_t APUIRemoteAlertPresentationManager.present(_:)(uint64_t *a1)
{
  if (qword_10005A1B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005D84(v2, qword_10005B9A0);
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33[0] = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100029504(v3, v4, v33);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Asked to present remote alert using request: %s view controller to present: %@", v9, 0x16u);
    sub_100007E58(v10);

    sub_100005E20(v11);
  }

  v13 = [objc_opt_self() identityOfCurrentProcess];
  if (v13)
  {
    v14 = v13;
    v15 = objc_allocWithZone(SBSRemoteAlertDefinition);

    v16 = v14;
    v17 = String._bridgeToObjectiveC()();
    v18 = [v15 initWithSceneProvidingProcess:v16 configurationIdentifier:v17];

    v19 = [objc_opt_self() newHandleWithDefinition:v18 configurationContext:0];
    type metadata accessor for APUIRemoteAlertPresentationHandle();
    v20 = swift_allocObject();
    *(v20 + 64) = 0;
    *(v20 + 72) = 0;
    *(v20 + 80) = 0;
    v21 = *(a1 + 1);
    *(v20 + 16) = *a1;
    *(v20 + 32) = v21;
    *(v20 + 48) = a1[4];
    *(v20 + 56) = v19;
    v22 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
    swift_beginAccess();

    v23 = v6;
    v24 = v19;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v31 + v22);
    *(v31 + v22) = 0x8000000000000000;
    sub_100022E0C(v20, v3, v4, isUniquelyReferenced_nonNull_native);

    *(v31 + v22) = v32;
    swift_endAccess();
    v26 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    [v26 setInitialSupportedInterfaceOrientations:a1[4]];
    [v24 registerObserver:v31];
    [v24 activateWithContext:v26];
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to get process identity of the current process, dropping request to present view controller", v29, 2u);
    }

    return 0;
  }

  return v20;
}

uint64_t APUIRemoteAlertPresentationManager.present(_:animated:contentOverlaysStatusBar:supportedInterfaceOrientations:)(void *a1, char a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v19[0] = v12;
  v19[1] = v14;
  v19[2] = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v15 = a1;
  v16 = APUIRemoteAlertPresentationManager.present(_:)(v19);

  return v16;
}

uint64_t APUIRemoteAlertPresentationManager.present(_:animated:contentOverlaysStatusBar:supportedInterfaceOrientations:onDismiss:)(void *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  v26[0] = v14;
  v26[1] = v16;
  v26[2] = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v17 = a1;
  v18 = APUIRemoteAlertPresentationManager.present(_:)(v26);

  if (v18)
  {
    swift_beginAccess();
    v20 = *(v18 + 64);
    v21 = *(v18 + 72);
    v22 = v24;
    v23 = v25;
    *(v18 + 64) = v24;
    *(v18 + 72) = v23;
    sub_1000177A8(v22, v23);
    sub_100007E00(v20, v21);
  }

  return result;
}

uint64_t APUIRemoteAlertPresentationManager.presentationHandle(for:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_100029C3C(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __swiftcall APUIRemoteAlertPresentationManager.presentationRequest(for:)(ActivityProgressUI::APUIRemoteAlertPresentationRequest_optional *__return_ptr retstr, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v6 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v13 = 0;
    v12 = 0;
    v18 = 0;
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v9 = sub_100029C3C(countAndFlagsBits, object);
  if ((v10 & 1) == 0)
  {

    v13 = 0;
    v12 = 0;
    v18 = 0;
    v8 = 0;
    goto LABEL_8;
  }

  v11 = *(*(v7 + 56) + 8 * v9);

  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  v14 = *(v11 + 32);
  v15 = *(v11 + 40);
  v16 = *(v11 + 41);
  v17 = *(v11 + 48);

  v18 = v14;

  v19 = 256;
  if (!v16)
  {
    v19 = 0;
  }

  v8 = v19 | v15;
LABEL_9:
  retstr->value.id._countAndFlagsBits = v13;
  retstr->value.id._object = v12;
  retstr->value.viewControllerToPresent.super.super.isa = v18;
  *&retstr->value.animated = v8;
  retstr->value.supportedInterfaceOrientations.rawValue = v17;
}

id APUIRemoteAlertPresentationManager.init()()
{
  v1 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  *&v0[v1] = sub_1000048C0(&_swiftEmptyArrayStorage);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for APUIRemoteAlertPresentationManager();
  return objc_msgSendSuper2(&v3, "init");
}

id APUIRemoteAlertPresentationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APUIRemoteAlertPresentationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void APUIRemoteAlertPresentationManager.remoteAlertHandleDidActivate(_:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  swift_beginAccess();
  v3 = *(v2 + v1);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v2 = *(*(v3 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));
      sub_10002A0D4();
      v10 = v2[7];

      v11 = v10;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v6 &= v6 - 1;

      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    if (qword_10005A1B0 == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_13:
  v13 = type metadata accessor for Logger();
  sub_100005D84(v13, qword_10005B9A0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    v18 = v2[2];
    v19 = v2[3];

    v20 = sub_100029504(v18, v19, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "RemoteAlertPresentationManager did activate alert for request: %s", v16, 0xCu);
    sub_100005E20(v17);
  }

  else
  {
  }
}

uint64_t APUIRemoteAlertPresentationManager.remoteAlertHandleDidDeactivate(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  swift_beginAccess();
  v4 = *(v3 + v1);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v3 = *(*(v4 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
      sub_10002A0D4();
      v11 = v3[7];

      v12 = v11;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v7 &= v7 - 1;

      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    if (qword_10005A1B0 == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
      }

      v7 = *(v4 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_13:
  v15 = type metadata accessor for Logger();
  sub_100005D84(v15, qword_10005B9A0);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315138;
    v20 = v3[2];
    v21 = v3[3];

    v22 = sub_100029504(v20, v21, &v23);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "RemoteAlertPresentationManager did deactivate for request: %s", v18, 0xCu);
    sub_100005E20(v19);
  }

  [a1 invalidate];
}

uint64_t APUIRemoteAlertPresentationManager.remoteAlertHandle(_:didInvalidateWithError:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v3 = *(*(v5 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
      sub_10002A0D4();
      v12 = *(v3 + 56);

      v13 = v12;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        break;
      }

      v8 &= v8 - 1;

      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    if (qword_10005A1B0 == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_13:
  v16 = type metadata accessor for Logger();
  sub_100005D84(v16, qword_10005B9A0);

  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36[0] = v21;
    *v19 = 136315394;
    v22 = *(v3 + 16);
    v23 = *(v3 + 24);

    v24 = sub_100029504(v22, v23, v36);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = v25;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    *(v19 + 14) = v25;
    *v20 = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "RemoteAlertPresentationManager did invalidate for request: %s with error: %@", v19, 0x16u);
    sub_100007E58(v20);

    sub_100005E20(v21);
  }

  else
  {
  }

  v27 = *(v3 + 16);
  v28 = *(v3 + 24);
  swift_beginAccess();

  sub_100027720(0, v27, v28);
  swift_endAccess();
  v29 = *(v3 + 80);
  *(v3 + 80) = 1;
  if (v29 != 1)
  {
    swift_beginAccess();
    v30 = *(v3 + 64);
    if (v30)
    {
      v31 = *(v3 + 72);

      v30(v32);
      sub_100007E00(v30, v31);
      v33 = *(v3 + 64);
    }

    else
    {
      v33 = 0;
    }

    v34 = *(v3 + 72);
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    sub_100007E00(v33, v34);
  }
}

uint64_t sub_100029404(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100029450(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_1000294A8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100029504(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100029504(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000295D0(v11, 0, 0, 1, a1, a2);
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
    sub_100016CE8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005E20(v11);
  return v7;
}

unint64_t sub_1000295D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000296DC(a5, a6);
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

char *sub_1000296DC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100029728(a1, a2);
  sub_100029858(&off_100051CA0);
  return v3;
}

char *sub_100029728(uint64_t a1, unint64_t a2)
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

  v6 = sub_100029944(v5, 0);
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
        v7 = sub_100029944(v10, 0);
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

uint64_t sub_100029858(uint64_t result)
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

  result = sub_1000299B8(result, v11, 1, v3);
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

void *sub_100029944(uint64_t a1, uint64_t a2)
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

  sub_100005D3C(&qword_10005BBA8, "t~");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000299B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005D3C(&qword_10005BBA8, "t~");
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

_BYTE **sub_100029AAC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100029ABC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029AFC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100029B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100029B44(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t sub_100029BB8(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10002A204(&qword_10005B288, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100029D48(a1, v2);
}

unint64_t sub_100029C3C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100029EF4(a1, a2, v4);
}

unint64_t sub_100029CB4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100029FAC(a1, v2);
}

unint64_t sub_100029D48(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UUID();
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
      sub_10002A204(&qword_10005BBA0, &protocol conformance descriptor for UUID);
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

unint64_t sub_100029EF4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100029FAC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10002A0D4()
{
  result = qword_10005B9C0;
  if (!qword_10005B9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005B9C0);
  }

  return result;
}

__n128 sub_10002A12C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002A140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10002A188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002A204(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10002A254(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002A268(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10002A2B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10002A32C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005D3C(&qword_10005BBB8, &qword_1000407D0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = sub_100005D3C(&qword_10005BBC0, &qword_1000407D8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_10002A558(&v19 - v13);
  sub_10002AAEC(v8);
  sub_10002B1E8(v14, v12);
  v15 = *(v3 + 16);
  v15(v6, v8, v2);
  sub_10002B1E8(v12, a1);
  v16 = sub_100005D3C(&qword_10005BBC8, &unk_1000407E0);
  v15((a1 + *(v16 + 48)), v6, v2);
  v17 = *(v3 + 8);
  v17(v8, v2);
  sub_10000619C(v14, &qword_10005BBC0, &qword_1000407D8);
  v17(v6, v2);
  return sub_10000619C(v12, &qword_10005BBC0, &qword_1000407D8);
}

__n128 sub_10002A558@<Q0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = sub_100005D3C(&qword_10005BBE8, &qword_100040828);
  __chkstk_darwin(v39);
  v2 = v38 - v1;
  type metadata accessor for BackgroundActivitySession(0);
  sub_10002B8A0(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);
  v3 = StateObject.wrappedValue.getter();
  v4 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v5 = *(v3 + v4);

  v6 = *(v5 + 16);

  if (v6 == 1)
  {
    if (qword_10005A208 != -1)
    {
      swift_once();
    }

    v7 = qword_10005C6E8;
    v8 = qword_10005A1E8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = &qword_10005C6C8;
  }

  else
  {
    if (qword_10005A210 != -1)
    {
      swift_once();
    }

    v7 = qword_10005C6F0;
    v10 = qword_10005A1F0;

    if (v10 != -1)
    {
      swift_once();
    }

    v9 = &qword_10005C6D0;
  }

  v38[0] = v7;
  v38[1] = *v9;

  StateObject.wrappedValue.getter();

  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_10002B8A0(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask, &unk_10003F0B0);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10002B5A4();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;

  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;

  sub_10002B5F8(v11, v13, v15 & 1);

  LODWORD(v41) = static HierarchicalShapeStyle.primary.getter();
  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_10002B5F8(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  v29 = &v2[*(v39 + 36)];
  v30 = *(sub_100005D3C(&qword_10005BBF0, &qword_100040830) + 28);
  v31 = enum case for Text.TruncationMode.tail(_:);
  v32 = type metadata accessor for Text.TruncationMode();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = swift_getKeyPath();
  *v2 = v21;
  *(v2 + 1) = v23;
  v2[16] = v25 & 1;
  *(v2 + 3) = v27;
  *(v2 + 4) = KeyPath;
  *(v2 + 5) = 1;
  v2[48] = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  v33 = v40;
  sub_10002B908(v2, v40, &qword_10005BBE8, &qword_100040828);
  v34 = v33 + *(sub_100005D3C(&qword_10005BBC0, &qword_1000407D8) + 36);
  v35 = v46;
  *(v34 + 64) = v45;
  *(v34 + 80) = v35;
  *(v34 + 96) = v47;
  v36 = v42;
  *v34 = v41;
  *(v34 + 16) = v36;
  result = v44;
  *(v34 + 32) = v43;
  *(v34 + 48) = result;
  return result;
}

uint64_t sub_10002AAEC@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v57 = sub_100005D3C(&qword_10005BBD0, &unk_1000412C0);
  __chkstk_darwin(v57);
  v3 = &v52[-v2];
  v58 = sub_100005D3C(&qword_10005BBD8, &qword_1000407F0);
  __chkstk_darwin(v58);
  v59 = &v52[-v4];
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v54 = v1;
  v7 = *(v1 + 40);
  v8 = type metadata accessor for BackgroundActivitySession(0);
  v9 = sub_10002B8A0(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);
  v65 = v6;
  v64 = v5;
  v63 = v7;
  v62 = v8;
  v61 = v9;
  v10 = StateObject.wrappedValue.getter();
  v11 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v12 = *(v10 + v11);

  v13 = *(v12 + 16);

  if (v13 == 1)
  {
    if (qword_10005A218 != -1)
    {
      swift_once();
    }

    v14 = qword_10005C6F8;
    v15 = qword_10005A1F8;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = &qword_10005C6D8;
  }

  else
  {
    if (qword_10005A220 != -1)
    {
      swift_once();
    }

    v14 = qword_10005C700;
    v17 = qword_10005A200;

    if (v17 != -1)
    {
      swift_once();
    }

    v16 = &qword_10005C6E0;
  }

  v18 = *v16;

  StateObject.wrappedValue.getter();

  v56 = v14;
  v55 = v18;

  v19 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

  if (v19 == 1)
  {
    v20 = static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    v20 = static HierarchicalShapeStyle.primary.getter();
  }

  v53 = v20;
  v21 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

  if (v21)
  {
    v22 = 0.6;
  }

  else
  {
    v22 = 1.0;
  }

  *&v66 = sub_10002B258(*v54, *(v54 + 8), *(v54 + 16));
  *(&v66 + 1) = v23;
  sub_10002B5A4();
  v24 = Text.init<A>(_:)();
  v26 = v25;
  v28 = v27;

  v29 = Text.font(_:)();
  v31 = v30;
  v33 = v32;

  sub_10002B5F8(v24, v26, v28 & 1);

  LODWORD(v66) = v53;
  v34 = Text.foregroundStyle<A>(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10002B5F8(v29, v31, v33 & 1);

  KeyPath = swift_getKeyPath();
  v42 = &v3[*(sub_100005D3C(&qword_10005BBE8, &qword_100040828) + 36)];
  v43 = *(sub_100005D3C(&qword_10005BBF0, &qword_100040830) + 28);
  v44 = enum case for Text.TruncationMode.tail(_:);
  v45 = type metadata accessor for Text.TruncationMode();
  (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
  *v42 = swift_getKeyPath();
  *v3 = v34;
  *(v3 + 1) = v36;
  v3[16] = v38 & 1;
  *(v3 + 3) = v40;
  *(v3 + 4) = KeyPath;
  *(v3 + 5) = 1;
  v3[48] = 0;
  *&v3[*(v57 + 36)] = v22;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v46 = v59;
  sub_10002B908(v3, v59, &qword_10005BBD0, &unk_1000412C0);
  v47 = &v46[*(v58 + 36)];
  v48 = v71;
  v47[4] = v70;
  v47[5] = v48;
  v47[6] = v72;
  v49 = v67;
  *v47 = v66;
  v47[1] = v49;
  v50 = v69;
  v47[2] = v68;
  v47[3] = v50;
  sub_10002B618();
  View.monospacedDigit()();

  return sub_10000619C(v46, &qword_10005BBD8, &qword_1000407F0);
}

uint64_t sub_10002B180@<X0>(uint64_t a7@<X8>)
{
  *a7 = static HorizontalAlignment.leading.getter();
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v8 = sub_100005D3C(&qword_10005BBB0, &qword_1000407C8);
  return sub_10002A32C(a7 + *(v8 + 44));
}

uint64_t sub_10002B1E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005D3C(&qword_10005BBC0, &qword_1000407D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B258(uint64_t a1, uint64_t a2, int a3)
{
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_10002B8A0(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask, &unk_10003F0B0);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v14;
  v12 = a3;
  v13 = a2;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v8;
  if (v14 == 1)
  {

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v9 = String.init(localized:table:bundle:locale:comment:)();
  }

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v14 == 1)
  {

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  return v9;
}

unint64_t sub_10002B5A4()
{
  result = qword_10005BBE0;
  if (!qword_10005BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BBE0);
  }

  return result;
}

uint64_t sub_10002B5F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10002B618()
{
  result = qword_10005BBF8;
  if (!qword_10005BBF8)
  {
    sub_100005F90(&qword_10005BBD8, &qword_1000407F0);
    sub_10002B6A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BBF8);
  }

  return result;
}

unint64_t sub_10002B6A4()
{
  result = qword_10005BC00;
  if (!qword_10005BC00)
  {
    sub_100005F90(&qword_10005BBD0, &unk_1000412C0);
    sub_10002B730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BC00);
  }

  return result;
}

unint64_t sub_10002B730()
{
  result = qword_10005BC08;
  if (!qword_10005BC08)
  {
    sub_100005F90(&qword_10005BBE8, &qword_100040828);
    sub_10002B7E8();
    sub_100006260(&qword_10005BC30, &qword_10005BBF0, &qword_100040830, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BC08);
  }

  return result;
}

unint64_t sub_10002B7E8()
{
  result = qword_10005BC10;
  if (!qword_10005BC10)
  {
    sub_100005F90(&qword_10005BC18, &qword_1000412D0);
    sub_100006260(&qword_10005BC20, &qword_10005BC28, &qword_100040870, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BC10);
  }

  return result;
}

uint64_t sub_10002B8A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002B908(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005D3C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002B9C0()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005BC50);
  v1 = sub_100005D84(v0, qword_10005BC50);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10002BA88()
{
  result = [objc_opt_self() defaultValue];
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      qword_10005C698 = result;
      return result;
    }

    result = swift_unknownObjectRelease();
  }

  qword_10005C698 = 0;
  return result;
}

void sub_10002BB34(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_10002BBA4()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_10005C6C0 = result;
  return result;
}

id sub_10002BBD8@<X0>(void *a1@<X8>)
{
  if (qword_10005A1C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_10005C698;
  *a1 = qword_10005C698;

  return v2;
}

uint64_t sub_10002BC98(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_10002BCF8()
{
  if (qword_10005A1E0 != -1)
  {
    swift_once();
  }

  return byte_10005C6C0;
}

void sub_10002BD50(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_10005A1C0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005D84(v6, qword_10005BC50);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "Update home icon style trait %@", v10, 0xCu);
      sub_100007E58(v11);
    }

    v13 = v5;
    UIViewController.traitOverrides.getter();
    sub_10002C870();
    v14 = v7;
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIViewController.traitOverrides.setter();
  }
}

char *APUIUIViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v6);
  v7 = OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeScreenService;
  *&v3[v7] = [objc_allocWithZone(SBSHomeScreenService) init];
  *&v3[OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeStyleObserver] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for APUIUIViewController();
  v25.receiver = v3;
  v25.super_class = v9;
  v10 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", v8, a3);

  v11 = qword_10005A1C0;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005D84(v13, qword_10005BC50);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = [*&v12[OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeScreenService] homeScreenIconStyleConfiguration];
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "Initial home icon style trait %@", v16, 0xCu);
    sub_100007E58(v17);
  }

  v19 = OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeScreenService;
  v20 = *&v12[OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeScreenService];
  v21 = v12;
  [v20 homeScreenIconStyleConfiguration];
  UIViewController.traitOverrides.getter();
  sub_10002C870();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIViewController.traitOverrides.setter();
  v22 = *&v12[v19];
  v23 = [v22 addHomeScreenIconStyleObserver:v21];

  *&v21[OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeStyleObserver] = v23;
  swift_unknownObjectRelease();
  return v21;
}

id APUISystemApertureView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void APUIUIViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeScreenService;
  *(v0 + v1) = [objc_allocWithZone(SBSHomeScreenService) init];
  *(v0 + OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeStyleObserver) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id APUIUIViewController.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeStyleObserver];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for APUIUIViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002C5A0(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C8D4();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10002C998;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007578;
  aBlock[3] = &unk_1000530D8;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002C9B8();
  sub_100005D3C(&qword_10005BD10, &qword_100040A60);
  sub_10002CA10();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_10002C870()
{
  result = qword_10005BC78;
  if (!qword_10005BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BC78);
  }

  return result;
}

unint64_t sub_10002C8D4()
{
  result = qword_10005B680;
  if (!qword_10005B680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005B680);
  }

  return result;
}

uint64_t sub_10002C920()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C958()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C9A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002C9B8()
{
  result = qword_10005B300;
  if (!qword_10005B300)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B300);
  }

  return result;
}

unint64_t sub_10002CA10()
{
  result = qword_10005B308;
  if (!qword_10005B308)
  {
    sub_100005F90(&qword_10005BD10, &qword_100040A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B308);
  }

  return result;
}

uint64_t sub_10002CAE0(uint64_t a1)
{
  v2 = sub_100005D3C(&qword_10005BD18, qword_100040A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002CBFC(double a1, uint64_t a2, double (*a3)(uint64_t), uint64_t *a4)
{
  v6 = sub_100005D3C(&qword_10005BD18, qword_100040A68);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  a3(v7);
  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = static Font.system(size:weight:design:)();
  result = sub_10002CAE0(v9);
  *a4 = v11;
  return result;
}

uint64_t sub_10002CCF4()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005BD20);
  v1 = sub_100005D84(v0, qword_10005BD20);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10002CDBC(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    if (qword_10005A228 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005D84(v6, qword_10005BD20);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100029504(a3, a4, &v19);
      _os_log_impl(&_mh_execute_header, oslog, v7, "App launch succeeded for bundle ID %s", v8, 0xCu);
      sub_100005E20(v9);

LABEL_16:

      return;
    }
  }

  else
  {
    if (qword_10005A228 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100005D84(v11, qword_10005BD20);

    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_100029504(a3, a4, &v19);
      *(v13 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 14) = v16;
      *v14 = v17;
      _os_log_impl(&_mh_execute_header, oslog, v12, "App launch for bundle ID %s failed: %@", v13, 0x16u);
      sub_100007E58(v14);

      sub_100005E20(v15);

      goto LABEL_16;
    }
  }
}

void sub_10002D0AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t APKActivityProgressEvent.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x676F7250776F6C73;
      case 1:
        return 0x6E69617244436F53;
      case 2:
        return 0xD000000000000011;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0xD000000000000016;
    }

    if (a1 == 6)
    {
      return 0xD000000000000010;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 3)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t APKActivityProgressEventResult.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6C41737961776C61;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6465696E6564;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6465776F6C6C61;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6D72657465646E75;
  }
}

uint64_t sub_10002D318()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x6C41737961776C61;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6465696E6564;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x6465776F6C6C61;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6D72657465646E75;
  }
}

void sub_10002D3EC(uint64_t a1, unint64_t a2)
{
  if (qword_10005A228 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005D84(v4, qword_10005BD20);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100029504(a1, a2, v22);
    _os_log_impl(&_mh_execute_header, v5, v6, "Launching app for bundle ID %s", v7, 0xCu);
    sub_100005E20(v8);
  }

  sub_100005D3C(&unk_10005BDD0, "(}");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003ED90;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v10;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v11;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  sub_100004E20(inited);
  swift_setDeallocating();
  sub_100005D3C(&qword_10005A6C8, &unk_10003E708);
  swift_arrayDestroy();
  v14 = [objc_allocWithZone(_LSOpenConfiguration) init];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v14 setFrontBoardOptions:isa];

  v16 = [objc_opt_self() defaultWorkspace];
  if (v16)
  {
    v17 = v16;

    v18 = String._bridgeToObjectiveC()();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    v22[4] = sub_10002D79C;
    v22[5] = v19;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_10002D0AC;
    v22[3] = &unk_100053128;
    v20 = _Block_copy(v22);

    v21 = v14;

    [v17 openApplicationWithBundleIdentifier:v18 usingConfiguration:v21 completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002D764()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002D7A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002D7BC()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005C708);
  sub_100005D84(v0, qword_10005C708);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002D83C()
{
  sub_10000E524();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10002D878()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005BDE0);
  v1 = sub_100005D84(v0, qword_10005BDE0);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id APUISystemApertureElementTransitionCoordinator.init()()
{
  v1 = &v0[OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_delegate];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v2 = &v0[OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_systemApertureLayoutModeCustomFrameInScreen];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_screenWidth;
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 bounds];
  v7 = v6;

  *&v0[v3] = v7;
  v8 = OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_animationPositionTransformYOffset;
  v9 = [v4 mainScreen];
  [v9 bounds];
  v11 = v10;

  *&v0[v8] = v11 / 3.0;
  v12 = OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_cornerRadius;
  v13 = objc_opt_self();
  v14 = [v13 sharedInstanceForEmbeddedDisplay];
  [v14 maximumContinuousCornerRadius];
  v16 = v15;

  *&v0[v12] = v16;
  v17 = OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_systemApertureEdgeInset;
  v18 = [v13 sharedInstanceForEmbeddedDisplay];
  [v18 minimumScreenEdgeInsets];
  v20 = v19;

  *&v0[v17] = v20;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for APUISystemApertureElementTransitionCoordinator();
  return objc_msgSendSuper2(&v22, "init");
}

void sub_10002DC24(void *a1)
{
  v2 = v1;
  v4 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v4)
  {
    __break(1u);
    goto LABEL_26;
  }

  v5 = v4;
  v6 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v6)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_isPresentingFullScreenOverlay;
  if (v1[OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_isPresentingFullScreenOverlay])
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  v54 = [v10 view];
  if (!v54)
  {
    goto LABEL_27;
  }

  v48 = OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_transitionCoordinator;
  v11 = (*&v1[OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_transitionCoordinator] + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_systemApertureLayoutModeCustomFrameInScreen);
  v13 = *v11;
  v12 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = &selRef_initialFrameForViewController_;
  if (v1[v8])
  {
    v16 = &selRef_finalFrameForViewController_;
  }

  v51 = v10;
  [a1 *v16];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [objc_opt_self() effectWithStyle:8];
  v26 = [objc_allocWithZone(UIVisualEffectView) init];
  [v26 setFrame:{v18, v20, v22, v24}];
  [v26 setAutoresizingMask:18];

  v52 = v7;
  if (v2[v8] == 1)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  [v26 setEffect:v27];

  v28 = [objc_allocWithZone(UIView) init];
  v29 = [objc_opt_self() whiteColor];
  [v28 setBackgroundColor:v29];

  [v28 setClipsToBounds:1];
  v30 = [v28 layer];
  [v30 setCornerRadius:*(*&v2[v48] + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_cornerRadius)];

  v31 = [v28 layer];
  [v31 setCornerCurve:kCACornerCurveID0];

  v32 = [a1 containerView];
  [v32 addSubview:v54];

  v33 = a1;
  v34 = [a1 containerView];
  [v34 addSubview:v26];

  [v54 setFrame:{v18, v20, v22, v24}];
  [v54 frame];
  [v54 setFrame:?];
  v35 = [a1 containerView];
  [v35 setMaskView:v28];

  if (v2[v8])
  {
    v36 = v13;
  }

  else
  {
    v36 = v18;
  }

  if (v2[v8])
  {
    v37 = v12;
  }

  else
  {
    v37 = v20;
  }

  if (v2[v8])
  {
    v38 = v14;
  }

  else
  {
    v38 = v22;
  }

  if (v2[v8])
  {
    v39 = v15;
  }

  else
  {
    v39 = v24;
  }

  [v28 setFrame:{v36, v37, v38, v39}];
  v53 = objc_opt_self();
  v40 = swift_allocObject();
  *(v40 + 16) = v26;
  *(v40 + 24) = v2;
  *(v40 + 32) = v25;
  *(v40 + 40) = v54;
  *(v40 + 48) = v18;
  *(v40 + 56) = v20;
  *(v40 + 64) = v22;
  *(v40 + 72) = v24;
  *(v40 + 80) = v28;
  *(v40 + 88) = v13;
  *(v40 + 96) = v12;
  *(v40 + 104) = v14;
  *(v40 + 112) = v15;
  v60 = sub_10002FCA8;
  v61 = v40;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_100007578;
  v59 = &unk_1000532F0;
  v49 = _Block_copy(&aBlock);
  v41 = v26;
  v50 = v25;
  v42 = v2;
  v55 = v54;
  v43 = v28;

  v44 = swift_allocObject();
  v44[2] = v41;
  v44[3] = v33;
  v44[4] = v42;
  v60 = sub_10002FD10;
  v61 = v44;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_10002E4C8;
  v59 = &unk_100053340;
  v45 = _Block_copy(&aBlock);
  v46 = v41;
  v47 = v42;
  swift_unknownObjectRetain();

  [v53 _animateUsingSpringWithDuration:0 delay:v49 options:v45 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];

  _Block_release(v45);
  _Block_release(v49);
}

id sub_10002E240(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v23 = OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_isPresentingFullScreenOverlay;
  if (*(a2 + OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_isPresentingFullScreenOverlay))
  {
    a3 = 0;
  }

  [a1 setEffect:a3];
  [a4 setFrame:{a6, a7, a8, a9}];
  [a4 frame];
  [a4 setFrame:?];
  if (*(a2 + v23))
  {
    v24 = a6;
  }

  else
  {
    v24 = a10;
  }

  if (*(a2 + v23))
  {
    v25 = a7;
  }

  else
  {
    v25 = a11;
  }

  if (*(a2 + v23))
  {
    v26 = a8;
  }

  else
  {
    v26 = a12;
  }

  v27 = a13;
  if (*(a2 + v23))
  {
    v27 = a9;
  }

  return [a5 setFrame:{v24, v25, v26, v27}];
}

uint64_t sub_10002E378(char a1, id a2, void *a3, uint64_t a4)
{
  [a2 removeFromSuperview];
  v7 = [a3 containerView];
  [v7 setMaskView:0];

  [a3 completeTransition:a1 & 1];
  v8 = *(a4 + OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_transitionCoordinator);
  sub_1000064B0(v8 + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_delegate, v16, &unk_10005BF70, &qword_100040CF8);
  if (!v17)
  {
    return sub_10000619C(v16, &unk_10005BF70, &qword_100040CF8);
  }

  sub_10002FD1C(v16, v13);
  v9 = v8;
  sub_10000619C(v16, &unk_10005BF70, &qword_100040CF8);
  v10 = v14;
  v11 = v15;
  sub_100015A8C(v13, v14);
  (*(v11 + 24))(v9, v10, v11);

  return sub_100005E20(v13);
}

double sub_10002E4C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_10002E5D0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_10002E61C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 != 1 || (*a1 & 1) != 0)
  {
    return result;
  }

  v41 = v12;
  v16 = (*(a3 + 40))();
  v51 = *(a3 + 8);
  v50 = *a3;
  v17 = v50;
  if (v51 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    v40 = v9;
    v19 = v6;
    v20 = v7;
    v21 = v18;
    os_log(_:dso:log:_:_:)();

    v7 = v20;
    v6 = v19;
    v9 = v40;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000619C(&v50, &qword_10005BEF8, &qword_100040CE0);
    (*(v11 + 8))(v15, v41);
    v17 = aBlock;
  }

  if (v17)
  {
    [v16 setModalPresentationStyle:4];
    [v16 setTransitioningDelegate:v17];
    swift_unknownObjectRelease();
    if (*(a3 + 33))
    {
LABEL_8:
      v22 = [objc_allocWithZone(SBSLockScreenService) init];
      if (qword_10005A238 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100005D84(v23, qword_10005BDE0);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Requesting device unlock if necessary", v26, 2u);
      }

      v49 = *(a3 + 16);
      v27 = swift_allocObject();
      v28 = *(a3 + 16);
      *(v27 + 24) = *a3;
      *(v27 + 16) = v16;
      *(v27 + 40) = v28;
      *(v27 + 56) = *(a3 + 32);
      *(v27 + 72) = *(a3 + 48);
      *(v27 + 80) = v22;
      v46 = sub_10002FB74;
      v47 = v27;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_10002E4C8;
      v45 = &unk_100053278;
      v29 = _Block_copy(&aBlock);
      sub_1000064B0(&v50, v48, &qword_10005BEF8, &qword_100040CE0);
      v30 = v16;
      sub_10002FA50(&v49, v48);

      v31 = v22;

      [v31 requestPasscodeUnlockUIWithOptions:0 withCompletion:v29];

      _Block_release(v29);
      return result;
    }
  }

  else
  {
    [v16 setModalPresentationStyle:0];
    if (*(a3 + 33))
    {
      goto LABEL_8;
    }
  }

  if (qword_10005A1B8 != -1)
  {
    swift_once();
  }

  v49 = *(a3 + 16);
  v32 = swift_allocObject();
  v33 = *(a3 + 16);
  *(v32 + 16) = *a3;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(a3 + 32);
  *(v32 + 64) = *(a3 + 48);
  sub_1000064B0(&v50, &aBlock, &qword_10005BEF8, &qword_100040CE0);

  sub_10002FA50(&v49, &aBlock);
  UUID.init()();
  v34 = UUID.uuidString.getter();
  v36 = v35;
  (*(v7 + 8))(v9, v6);
  aBlock = v34;
  v43 = v36;
  v44 = v16;
  LOWORD(v45) = 1;
  v46 = 2;
  v37 = APUIRemoteAlertPresentationManager.present(_:)(&aBlock);

  if (v37)
  {
    swift_beginAccess();
    v38 = *(v37 + 64);
    v39 = *(v37 + 72);
    *(v37 + 64) = sub_10002FE18;
    *(v37 + 72) = v32;

    sub_100007E00(v38, v39);
  }

  return result;
}

id sub_10002EC04(char a1, void *a2, uint64_t *a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    if (qword_10005A238 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100005D84(v12, qword_10005BDE0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Device was unlocked", v15, 2u);
    }

    if (qword_10005A1B8 != -1)
    {
      swift_once();
    }

    v16 = *a3;
    v34 = *(a3 + 8);
    v32 = a3[2];
    v33 = v16;
    v17 = swift_allocObject();
    v18 = *(a3 + 1);
    *(v17 + 16) = *a3;
    *(v17 + 32) = v18;
    *(v17 + 48) = *(a3 + 2);
    *(v17 + 64) = a3[6];

    sub_1000064B0(&v33, &v35, &qword_10005BEF8, &qword_100040CE0);
    sub_10002FA50(&v32, &v35);
    UUID.init()();
    v19 = UUID.uuidString.getter();
    v21 = v20;
    (*(v9 + 8))(v11, v8);
    *&v35 = v19;
    *(&v35 + 1) = v21;
    v36 = a2;
    v37 = 1;
    v38 = 2;
    v22 = a2;
    v23 = APUIRemoteAlertPresentationManager.present(_:)(&v35);

    if (v23)
    {
      swift_beginAccess();
      v24 = *(v23 + 64);
      v25 = *(v23 + 72);
      *(v23 + 64) = sub_10002FBF0;
      *(v23 + 72) = v17;

      sub_100007E00(v24, v25);
    }
  }

  else
  {
    if (qword_10005A238 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100005D84(v26, qword_10005BDE0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Device was not unlocked", v29, 2u);
    }

    v35 = *(a3 + 1);
    LOBYTE(v36) = *(a3 + 32);
    v31[0] = 0;
    sub_100005D3C(&qword_10005BEF0, &qword_100040CD8);
    Binding.wrappedValue.setter();
  }

  return [a4 invalidate];
}

double sub_10002EFF8()
{
  v1 = v0[3];
  v3 = *(v0 + 32);
  v4 = v0[6];
  v9 = v0[2];
  v2 = v9;
  v10 = v1;
  v11 = v3;
  sub_100005D3C(&qword_10005BEF0, &qword_100040CD8);
  Binding.wrappedValue.getter();
  v8 = v7;
  v9 = *v0;
  LOBYTE(v10) = *(v0 + 8);
  v12 = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = *v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  *(v5 + 48) = v3;
  *(v5 + 49) = *(v0 + 33);
  *(v5 + 56) = v0[5];
  *(v5 + 64) = v4;
  sub_1000064B0(&v9, &v7, &qword_10005BEF8, &qword_100040CE0);
  sub_10002FA50(&v12, &v7);

  sub_100005D3C(&qword_10005BF00, &unk_100040CE8);
  sub_10002FAAC();
  View.onChange<A>(of:initial:_:)();

  return result;
}

double View.remoteAlert(isPresented:requireUnlock:content:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getKeyPath();

  View.modifier<A>(_:)();

  return result;
}

double View.remoteAlert<A>(isPresented:requireUnlock:content:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a9;
  v14[5] = a10;
  v14[6] = a5;
  v14[7] = a6;
  swift_getKeyPath();

  View.modifier<A>(_:)();

  return result;
}

uint64_t sub_10002F384(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  __chkstk_darwin(a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for APUISecureHostingController(0, v10, v9, v10);
  a1();
  v14 = sub_10003AB2C(v8, v11, v12, v13);
  (*(v6 + 8))(v8, a4);
  return v14;
}

void sub_10002F478(void *a1, uint64_t a2)
{
  if ([a1 activeLayoutMode] == 4)
  {
    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = *(a2 + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_screenWidth) * 0.5;
      v18.origin.x = v7;
      v18.origin.y = v9;
      v18.size.width = v11;
      v18.size.height = v13;
      Width = CGRectGetWidth(v18);
      v16 = *(a2 + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_systemApertureEdgeInset);
      v17 = a2 + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_systemApertureLayoutModeCustomFrameInScreen;
      *v17 = v14 - Width * 0.5;
      *(v17 + 8) = v16;
      *(v17 + 16) = v11;
      *(v17 + 24) = v13;
    }

    else
    {
      __break(1u);
    }
  }
}

id _s18ActivityProgressUI46APUISystemApertureElementTransitionCoordinatorC19animationController12forPresented10presenting6sourceSo06UIViewJ21AnimatedTransitioning_pSgSo0oJ0C_A2KtF_0()
{
  v1 = v0;
  sub_1000064B0(v0 + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_delegate, v12, &unk_10005BF70, &qword_100040CF8);
  if (v13)
  {
    sub_10002FD1C(v12, v8);
    sub_10000619C(v12, &unk_10005BF70, &qword_100040CF8);
    v2 = v9;
    v3 = v10;
    sub_100015A8C(v8, v9);
    (*(v3 + 8))(v0, v2, v3);
    sub_100005E20(v8);
  }

  else
  {
    sub_10000619C(v12, &unk_10005BF70, &qword_100040CF8);
  }

  v4 = type metadata accessor for APUISystemApertureElementTransition();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_isPresentingFullScreenOverlay] = 1;
  *&v5[OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_transitionCoordinator] = v1;
  v11.receiver = v5;
  v11.super_class = v4;
  v6 = v1;
  return objc_msgSendSuper2(&v11, "init");
}

id _s18ActivityProgressUI46APUISystemApertureElementTransitionCoordinatorC19animationController12forDismissedSo06UIViewJ21AnimatedTransitioning_pSgSo0mJ0C_tF_0()
{
  v1 = v0;
  sub_1000064B0(v0 + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_delegate, v12, &unk_10005BF70, &qword_100040CF8);
  if (v13)
  {
    sub_10002FD1C(v12, v8);
    sub_10000619C(v12, &unk_10005BF70, &qword_100040CF8);
    v2 = v9;
    v3 = v10;
    sub_100015A8C(v8, v9);
    (*(v3 + 16))(v0, v2, v3);
    sub_100005E20(v8);
  }

  else
  {
    sub_10000619C(v12, &unk_10005BF70, &qword_100040CF8);
  }

  v4 = type metadata accessor for APUISystemApertureElementTransition();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_isPresentingFullScreenOverlay] = 0;
  *&v5[OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_transitionCoordinator] = v1;
  v11.receiver = v5;
  v11.super_class = v4;
  v6 = v1;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_10002F7C4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002F830(void *a1)
{
  type metadata accessor for ModifiedContent();
  sub_10002F894();
  return swift_getWitnessTable();
}

unint64_t sub_10002F894()
{
  result = qword_10005BEE8;
  if (!qword_10005BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BEE8);
  }

  return result;
}

uint64_t sub_10002F8E8(void *a1)
{
  type metadata accessor for ModifiedContent();
  sub_10002F894();
  return swift_getWitnessTable();
}

__n128 sub_10002F95C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10002F978(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10002F9C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10002FA3C(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

unint64_t sub_10002FAAC()
{
  result = qword_10005BF08;
  if (!qword_10005BF08)
  {
    sub_100005F90(&qword_10005BF00, &unk_100040CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BF08);
  }

  return result;
}

uint64_t sub_10002FB10()
{
  sub_10002FA3C(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10002FB84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002FB9C()
{
  sub_10002FA3C(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002FC50()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10002FCC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002FD1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002FD90()
{
  sub_100005F90(&qword_10005BF00, &unk_100040CE8);
  sub_10002FAAC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002FE24()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005BF80);
  v1 = sub_100005D84(v0, qword_10005BF80);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000300D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WindowSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100030204(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = qword_10005A240;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100005D84(v8, qword_10005BF80);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      v14 = [v5 description];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_100029504(v15, v17, &v24);

      *(v12 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "WindowSceneDelegate: Received windowScene: %s. Hosting debugging UI for ActivityProgressUI Launch Angel.", v12, 0xCu);
      sub_100005E20(v13);
    }

    v19 = [objc_allocWithZone(type metadata accessor for APUISecureWindow()) initWithWindowScene:v5];
    *(v2 + OBJC_IVAR____TtC18ActivityProgressUI19WindowSceneDelegate_testAppView) = 0;
    v20 = objc_allocWithZone(sub_100005D3C(&unk_10005BFD0, "|"));
    v23 = UIHostingController.init(rootView:)();
    v21 = v19;
    [v21 setRootViewController:v23];
    [v21 makeKeyAndVisible];
    v22 = *(v2 + OBJC_IVAR____TtC18ActivityProgressUI19WindowSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC18ActivityProgressUI19WindowSceneDelegate_window) = v21;

    if (qword_10005A1A0 != -1)
    {
      swift_once();
    }

    sub_10001B5F0();
  }
}

void sub_1000304C0(const char *a1)
{
  if (qword_10005A240 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005D84(v2, qword_10005BF80);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

double APUISystemApertureView.sizeThatFits(_:for:)(uint64_t a1)
{
  if ((a1 + 1) > 5)
  {
    return 48.3333;
  }

  else
  {
    return dbl_100040E20[a1 + 1];
  }
}

uint64_t APUISystemApertureView.createConstraints(forSubview:offset:alignedToEdge:)(void *a1, uint64_t a2, double a3)
{
  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
LABEL_4:
        sub_100005D3C(&qword_10005BFE0, &qword_10003E530);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_100040DB0;
        v8 = [a1 widthAnchor];
        v9 = [v3 widthAnchor];
        v10 = -a3;
        v11 = [v8 constraintEqualToAnchor:v9 constant:v10];

        *(v7 + 32) = v11;
        v12 = [a1 heightAnchor];
        v13 = [v3 heightAnchor];
        v14 = [v12 constraintEqualToAnchor:v13 constant:v10];

        result = v7;
        *(v7 + 40) = v14;
        return result;
      }

      goto LABEL_7;
    }

LABEL_10:
    sub_100005D3C(&qword_10005BFE0, &qword_10003E530);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100040DB0;
    v27 = [a1 widthAnchor];
    v28 = [v3 widthAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-a3];

    *(v26 + 32) = v29;
    v30 = [a1 heightAnchor];
    v31 = [a1 widthAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v26 + 40) = v32;
    v34 = v26;
    if (a2 == 1)
    {
      v23 = [a1 topAnchor];
      v24 = [v3 topAnchor];
    }

    else
    {
      v23 = [a1 bottomAnchor];
      v24 = [v3 bottomAnchor];
    }

    goto LABEL_9;
  }

  if (a2 == 4)
  {
    goto LABEL_10;
  }

  if (a2 != 8)
  {
    goto LABEL_4;
  }

LABEL_7:
  sub_100005D3C(&qword_10005BFE0, &qword_10003E530);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100040DB0;
  v17 = [a1 heightAnchor];
  v18 = [v3 heightAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-a3];

  *(v16 + 32) = v19;
  v20 = [a1 widthAnchor];
  v21 = [a1 heightAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v16 + 40) = v22;
  v34 = v16;
  if (a2 == 2)
  {
    v23 = [a1 leadingAnchor];
    v24 = [v3 leadingAnchor];
  }

  else
  {
    v23 = [a1 trailingAnchor];
    v24 = [v3 trailingAnchor];
  }

LABEL_9:
  v25 = [v23 constraintEqualToAnchor:v24];
  v33 = v25;

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v34;
}

uint64_t APUISystemApertureView.expanded.getter()
{
  v1 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t APUISystemApertureView.expanded.setter(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id APUISystemApertureView.init()()
{
  v0[OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APUISystemApertureView();
  return objc_msgSendSuper2(&v2, "initWithFrame:", 0.0, 0.0, 23.0, 23.0);
}

void APUISystemApertureView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double static APUISystemApertureView.size(forExpanded:)(char a1)
{
  result = 48.3333;
  if ((a1 & 1) == 0)
  {
    return 23.0;
  }

  return result;
}

double APUISystemApertureView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)()
{
  v1 = (*((swift_isaMask & *v0) + 0x58))();
  result = 48.3333;
  if ((v1 & 1) == 0)
  {
    return 23.0;
  }

  return result;
}

id APUISystemApertureView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id APUISystemApertureView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APUISystemApertureView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10003103C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100031060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000310A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100031110(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100031158(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000311C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v7 = sub_100005D3C(&qword_10005C018, &qword_100041108);
  __chkstk_darwin(v7 - 8);
  v50 = (v47 - v8);
  v53 = sub_100005D3C(&qword_10005C020, &qword_100041110);
  __chkstk_darwin(v53);
  v54 = v47 - v9;
  v10 = sub_100005D3C(&qword_10005C028, &qword_100041118);
  __chkstk_darwin(v10 - 8);
  v12 = v47 - v11;
  type metadata accessor for BackgroundActivitySession(0);
  v13 = sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);
  v14 = StateObject.wrappedValue.getter();
  v15 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v16 = *(v14 + v15);

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v17 - 1;
    v19 = type metadata accessor for UUID();
    v20 = a3;
    v21 = v13;
    v22 = a1;
    v23 = *(v19 - 8);
    (*(v23 + 16))(v12, v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v18, v19);

    (*(v23 + 56))(v12, 0, 1, v19);
    a1 = v22;
    v13 = v21;
    a3 = v20;
  }

  else
  {

    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  }

  v25 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);

  v52 = v12;
  if (v25 == 1)
  {
    v26 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

    if (v26)
    {
      v27 = 0x4030000000000000;
    }

    else
    {
      v27 = 0x402C000000000000;
    }

    v28 = 0x402A000000000000;
    if (v26)
    {
      v28 = 0x4034000000000000;
    }

    v48 = v28;
    v49 = v27;
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  v29 = static HorizontalAlignment.leading.getter();
  v30 = v50;
  *v50 = v29;
  *(v30 + 8) = 0;
  *(v30 + 16) = 0;
  v47[2] = *(sub_100005D3C(&qword_10005C030, &qword_100041120) + 44);
  v31 = StateObject.wrappedValue.getter();
  v51 = v13;
  v32 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v33 = *(v31 + v32);

  v56 = v33;
  v47[1] = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = a2;
  *(v34 + 32) = a3 & 1;
  sub_100006258(a1, a2);
  sub_100005D3C(&qword_10005B2B0, &qword_10003F0F8);
  sub_100005D3C(&qword_10005C038, &qword_100041160);
  sub_100006260(&qword_10005C040, &qword_10005B2B0, &qword_10003F0F8, &protocol conformance descriptor for [A]);
  sub_100036C68();
  ForEach<>.init(_:id:content:)();
  LODWORD(v31) = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

  if (v31 == 1 && (v35 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession), , v35 == 1))
  {
    v36 = static Color.black.getter();
  }

  else
  {
    v36 = static Color.clear.getter();
  }

  v37 = v36;
  v38 = v52;
  v39 = static Edge.Set.all.getter();
  v40 = v54;
  sub_10002B908(v30, v54, &qword_10005C018, &qword_100041108);
  v41 = v40 + *(v53 + 36);
  *v41 = v37;
  *(v41 + 8) = v39;
  LOBYTE(v37) = static Edge.Set.all.getter();
  sub_10000619C(v38, &qword_10005C028, &qword_100041118);
  v42 = v55;
  sub_10002B908(v40, v55, &qword_10005C020, &qword_100041110);
  result = sub_100005D3C(&qword_10005C058, &qword_100041168);
  v44 = v42 + *(result + 36);
  *v44 = v37;
  v46 = v48;
  v45 = v49;
  *(v44 + 8) = v49;
  *(v44 + 16) = v46;
  *(v44 + 24) = v45;
  *(v44 + 32) = v46;
  *(v44 + 40) = 0;
  return result;
}

uint64_t sub_100031808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for BackgroundActivityTaskView(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BackgroundActivitySession(0);
  sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);
  v14 = StateObject.wrappedValue.getter();
  v15 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v16 = *(v14 + v15);

  if (*(v16 + 16) && (v17 = sub_100029BB8(a1), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);

    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    *(v20 + 32) = a4 & 1;
    sub_100006258(a2, a3);
    type metadata accessor for APUISystemApertureLayoutState(0);
    sub_100039A08(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);
    v21 = EnvironmentObject.init()();
    v23 = v22;
    *&v13[*(v10 + 28)] = swift_getKeyPath();
    sub_100005D3C(&qword_10005C060, &qword_1000411A0);
    swift_storeEnumTagMultiPayload();
    *v13 = sub_100037D94;
    *(v13 + 1) = v20;
    v13[16] = 0;
    *(v13 + 3) = sub_1000088C4;
    *(v13 + 4) = v19;
    v13[40] = 0;
    *(v13 + 6) = v21;
    *(v13 + 7) = v23;
    sub_100037E04(v13, a5);
    v24 = 0;
  }

  else
  {

    v24 = 1;
  }

  return (*(v11 + 56))(a5, v24, 1, v10);
}

uint64_t sub_100031AC4(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for BackgroundActivitySession(0);
  sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);

  return StateObject.wrappedValue.getter();
}

uint64_t sub_100031B58@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005D3C(&qword_10005C060, &qword_1000411A0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for BackgroundActivityTaskView(0);
  sub_1000064B0(v1 + *(v10 + 28), v9, &qword_10005C060, &qword_1000411A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
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

uint64_t sub_100031D6C@<X0>(uint64_t *a1@<X8>)
{
  v295 = a1;
  v2 = type metadata accessor for ColorScheme();
  v244 = *(v2 - 8);
  v245 = v2;
  v3 = __chkstk_darwin(v2);
  v238 = v231 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v237 = v231 - v5;
  v234 = sub_100005D3C(&qword_10005C268, &qword_1000413D8);
  __chkstk_darwin(v234);
  v243 = v231 - v6;
  v240 = sub_100005D3C(&qword_10005C270, &qword_1000413E0);
  __chkstk_darwin(v240);
  v242 = v231 - v7;
  v239 = sub_100005D3C(&qword_10005C278, &qword_1000413E8);
  __chkstk_darwin(v239);
  v241 = v231 - v8;
  v9 = sub_100005D3C(&qword_10005C280, &qword_1000413F0);
  v271 = *(v9 - 8);
  v272 = v9;
  v10 = __chkstk_darwin(v9);
  v236 = v231 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v235 = v231 - v12;
  v13 = sub_100005D3C(&qword_10005C288, &qword_1000413F8);
  v14 = __chkstk_darwin(v13 - 8);
  v274 = v231 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v273 = v231 - v16;
  v17 = type metadata accessor for APKDeviceLockState();
  v264 = *(v17 - 8);
  v265 = v17;
  v18 = __chkstk_darwin(v17);
  v263 = v231 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v262 = v231 - v20;
  v293 = sub_100005D3C(&qword_10005C290, &qword_100041400);
  v267 = *(v293 - 8);
  v21 = __chkstk_darwin(v293);
  v292 = v231 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v291 = v231 - v23;
  v24 = type metadata accessor for BackgroundActivityTaskView(0);
  v254 = *(v24 - 8);
  v25 = __chkstk_darwin(v24 - 8);
  v232 = v231 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v285 = v231 - v28;
  v255 = v29;
  __chkstk_darwin(v27);
  v298 = v231 - v30;
  v266 = sub_100005D3C(&qword_10005C298, &qword_100041408);
  v287 = *(v266 - 8);
  v31 = __chkstk_darwin(v266);
  v286 = v231 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v290 = v231 - v33;
  v34 = sub_100005D3C(&qword_10005C2A0, &qword_100041410);
  v35 = __chkstk_darwin(v34 - 8);
  v270 = v231 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v294 = (v231 - v37);
  v284 = type metadata accessor for UUID();
  v296 = *(v284 - 8);
  __chkstk_darwin(v284);
  v250 = v231 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = sub_100005D3C(&qword_10005C2A8, &qword_100041418);
  v39 = __chkstk_darwin(v289);
  v261 = v231 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = v231 - v41;
  v43 = sub_100005D3C(&qword_10005C028, &qword_100041118);
  v44 = __chkstk_darwin(v43 - 8);
  v256 = v231 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v288 = v231 - v47;
  v48 = __chkstk_darwin(v46);
  v276 = v231 - v49;
  v50 = __chkstk_darwin(v48);
  v251 = v231 - v51;
  v52 = __chkstk_darwin(v50);
  v277 = v231 - v53;
  __chkstk_darwin(v52);
  v278 = v231 - v54;
  v55 = *v1;
  v56 = *(v1 + 8);
  v304 = v1;
  v57 = *(v1 + 16);
  v58 = type metadata accessor for BackgroundActivitySession(0);
  v59 = sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);
  v60 = StateObject.wrappedValue.getter();
  v61 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v62 = *(v60 + v61);

  v63 = v57;

  v303 = *(v62 + 16);

  LODWORD(v61) = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);

  v64 = 0x402A000000000000;
  v280 = 0x402A000000000000;
  v65 = 0x402A000000000000;
  if (v61 == 1)
  {
    v66 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

    if (v66)
    {
      v65 = 0x4036000000000000;
    }

    else
    {
      v65 = 0x402A000000000000;
    }

    v64 = 0x4031000000000000;
    if (!v66)
    {
      v64 = 0x402A000000000000;
    }

    v280 = 0;
  }

  v268 = v64;
  v269 = v65;
  v67 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);

  if (v67 == 1)
  {
    v68 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);
  }

  else
  {
    v68 = 0;
  }

  v260 = v42;
  v253 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

  v231[1] = v303 == 1;
  v69 = 0x4030000000000000;
  if (v303 == 1)
  {
    v69 = 0x4032000000000000;
  }

  v252 = v69;
  v70 = 32.0;
  if (v303 == 1)
  {
    v70 = 38.0;
  }

  LODWORD(v275) = v68;
  if (v68)
  {
    v71 = 6.0;
  }

  else
  {
    v71 = 11.0;
  }

  if (v68)
  {
    v72 = v70;
  }

  else
  {
    v72 = 38.0;
  }

  v302 = v55;
  v300 = v63;
  v73 = StateObject.wrappedValue.getter();
  v74 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v75 = *(v73 + v74);

  v76 = *(v75 + 16);
  v301 = v56;
  v297 = v58;
  v299 = v59;
  if (v76)
  {
    v77 = v296;
    v78 = v278;
    v79 = v284;
    (*(v296 + 16))(v278, v75 + ((*(v296 + 80) + 32) & ~*(v296 + 80)), v284);
    v80 = 0;
  }

  else
  {
    v80 = 1;
    v77 = v296;
    v79 = v284;
    v78 = v278;
  }

  v81 = *(v77 + 56);
  v81(v78, v80, 1, v79);
  v82 = *(v304 + 24);
  v83 = *(v304 + 32);
  v84 = *(v304 + 40);
  v85 = type metadata accessor for BackgroundActivitySessionTask(0);
  v86 = sub_100039A08(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask, &unk_10003F0B0);
  v283 = v83;
  v284 = v82;
  LODWORD(v282) = v84;
  v281 = v85;
  v279 = v86;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v277;
  static Published.subscript.getter();

  v258 = v81;
  v259 = v77 + 56;
  v81(v87, 0, 1, v79);
  v88 = *(v289 + 48);
  v89 = v78;
  v90 = v78;
  v91 = v260;
  sub_1000064B0(v90, v260, &qword_10005C028, &qword_100041118);
  sub_1000064B0(v87, v91 + v88, &qword_10005C028, &qword_100041118);
  v92 = *(v296 + 48);
  v93 = v92(v91, 1, v79);
  v94 = v79;
  v257 = v92;
  if (v93 == 1)
  {
    sub_10000619C(v87, &qword_10005C028, &qword_100041118);
    sub_10000619C(v89, &qword_10005C028, &qword_100041118);
    if (v92(v91 + v88, 1, v79) == 1)
    {
      sub_10000619C(v91, &qword_10005C028, &qword_100041118);
      LODWORD(v278) = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v95 = v251;
    sub_1000064B0(v91, v251, &qword_10005C028, &qword_100041118);
    if (v92(v91 + v88, 1, v79) != 1)
    {
      v97 = v296;
      v98 = v250;
      (*(v296 + 32))(v250, v91 + v88, v79);
      sub_100039A08(&qword_10005BBA0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v249) = dispatch thunk of static Equatable.== infix(_:_:)();
      v99 = *(v97 + 8);
      v99(v98, v79);
      sub_10000619C(v277, &qword_10005C028, &qword_100041118);
      sub_10000619C(v278, &qword_10005C028, &qword_100041118);
      v99(v251, v79);
      sub_10000619C(v91, &qword_10005C028, &qword_100041118);
      v96 = v249 ^ 1;
      goto LABEL_31;
    }

    sub_10000619C(v277, &qword_10005C028, &qword_100041118);
    sub_10000619C(v278, &qword_10005C028, &qword_100041118);
    (*(v296 + 8))(v95, v79);
  }

  sub_10000619C(v91, &qword_10005C2A8, &qword_100041418);
  v96 = 1;
LABEL_31:
  LODWORD(v278) = v96;
LABEL_32:
  v100 = v276;
  v101 = StateObject.wrappedValue.getter();
  v102 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v103 = *(v101 + v102);

  v104 = *(v103 + 16);
  if (v104)
  {
    (*(v296 + 16))(v100, v103 + ((*(v296 + 80) + 32) & ~*(v296 + 80)) + *(v296 + 72) * (v104 - 1), v79);
    v105 = 0;
  }

  else
  {
    v105 = 1;
  }

  v106 = v258;
  (v258)(v100, v105, 1, v94);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v107 = v288;
  static Published.subscript.getter();

  v106(v107, 0, 1, v94);
  v108 = v107;
  v109 = *(v289 + 48);
  v110 = v261;
  sub_1000064B0(v100, v261, &qword_10005C028, &qword_100041118);
  sub_1000064B0(v108, v110 + v109, &qword_10005C028, &qword_100041118);
  v111 = v257;
  if ((v257)(v110, 1, v94) == 1)
  {
    sub_10000619C(v108, &qword_10005C028, &qword_100041118);
    sub_10000619C(v100, &qword_10005C028, &qword_100041118);
    if (v111(v110 + v109, 1, v94) == 1)
    {
      sub_10000619C(v110, &qword_10005C028, &qword_100041118);
      v112 = 1;
LABEL_41:
      v116 = v275;
      goto LABEL_43;
    }

LABEL_40:
    sub_10000619C(v110, &qword_10005C2A8, &qword_100041418);
    v112 = 0;
    goto LABEL_41;
  }

  v113 = v256;
  sub_1000064B0(v110, v256, &qword_10005C028, &qword_100041118);
  v114 = v111(v110 + v109, 1, v94);
  v115 = v94;
  if (v114 == 1)
  {
    sub_10000619C(v288, &qword_10005C028, &qword_100041118);
    sub_10000619C(v100, &qword_10005C028, &qword_100041118);
    (*(v296 + 8))(v113, v94);
    goto LABEL_40;
  }

  v117 = v296;
  v118 = v250;
  (*(v296 + 32))(v250, v110 + v109, v115);
  sub_100039A08(&qword_10005BBA0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v112 = dispatch thunk of static Equatable.== infix(_:_:)();
  v119 = *(v117 + 8);
  v119(v118, v115);
  sub_10000619C(v288, &qword_10005C028, &qword_100041118);
  sub_10000619C(v276, &qword_10005C028, &qword_100041118);
  v119(v256, v115);
  v116 = v275;
  sub_10000619C(v110, &qword_10005C028, &qword_100041118);
LABEL_43:
  v120 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

  v121 = static HorizontalAlignment.leading.getter();
  v122 = v295;
  *v295 = v121;
  v122[1] = 0;
  *(v122 + 16) = 0;
  v233 = v120;
  LODWORD(v256) = v112;
  v246 = v116 ^ 1;
  LODWORD(v251) = v278 | v116 ^ 1;
  if ((v251 & 1) != 0 || v303 == 1)
  {
    goto LABEL_49;
  }

  if (!*(v304 + 48))
  {
    goto LABEL_83;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (*v331 < 1.0 || *&v331[8] < 1.0)
  {
LABEL_49:
    v278 = 0;
    v276 = 0;
    v260 = 0;
    v261 = 0;
    v258 = 0;
    v259 = 0;
    v257 = 0;
    LODWORD(v277) = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LODWORD(v277) = 0;
    v278 = v362;
    v276 = v364;
    v260 = v367;
    v261 = v366;
    LOBYTE(v314[0]) = 1;
    LOBYTE(v319[0]) = v363;
    LOBYTE(v316) = v365;
    v257 = 1;
    v258 = v363;
    v259 = v365;
    v331[0] = 0;
  }

  v123 = v303 != 1;
  v124 = static VerticalAlignment.center.getter();
  v125 = 0x4028000000000000;
  if (v253)
  {
    v125 = v252;
  }

  v126 = v294;
  *v294 = v124;
  v126[1] = v125;
  *(v126 + 16) = 0;
  v127 = v304;
  v128 = v298;
  sub_100038E90(v304, v298);
  v129 = *(v254 + 80);
  v130 = (v129 + 16) & ~v129;
  v131 = v130 + v255;
  v132 = swift_allocObject();
  sub_100037E04(v128, v132 + v130);
  v133 = v285;
  sub_100038E90(v127, v285);
  v134 = swift_allocObject();
  sub_100037E04(v133, v134 + v130);
  v337 = 0;
  v336 = 0;
  *v331 = sub_100039C60;
  *&v331[8] = v132;
  v331[16] = 0;
  *&v331[24] = sub_100039C68;
  *&v331[32] = v134;
  v331[40] = 0;
  *&v331[48] = v72;
  *&v331[56] = v71;
  v331[64] = 0;
  sub_100038E90(v127, v128);
  v288 = v131;
  v289 = v129;
  v135 = swift_allocObject();
  v296 = v130;
  sub_100037E04(v128, v135 + v130);
  sub_100008730();
  View.onTapGesture(count:perform:)();

  v338[2] = *&v331[32];
  v338[3] = *&v331[48];
  v339 = v331[64];
  v338[1] = *&v331[16];
  v338[0] = *v331;
  sub_100038EF8(v338);
  v136 = static HorizontalAlignment.leading.getter();
  v335 = 0;
  v255 = v136;
  if ((v251 | v123))
  {
    goto LABEL_53;
  }

  if (*(v304 + 48))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*v331 >= 1.0 && *&v331[8] >= 1.0)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v253 = 0;
      v254 = v347;
      v251 = v351;
      v252 = v349;
      LOBYTE(v314[0]) = 1;
      LOBYTE(v319[0]) = v348;
      LOBYTE(v316) = v350;
      v247 = 1;
      v248 = v348;
      v249 = v350;
      v250 = v352;
      v331[0] = 0;
      goto LABEL_58;
    }

LABEL_53:
    v254 = 0;
    v251 = 0;
    v252 = 0;
    v249 = 0;
    v250 = 0;
    v247 = 0;
    v248 = 0;
    v253 = 1;
LABEL_58:
    v137 = v304;
    v138 = v298;
    sub_100038E90(v304, v298);
    v139 = swift_allocObject();
    v140 = v296;
    sub_100037E04(v138, v139 + v296);
    v141 = v285;
    sub_100038E90(v137, v285);
    v142 = swift_allocObject();
    sub_100037E04(v141, v142 + v140);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v334 = 0;
    v333 = 0;
    *&v332[55] = v343;
    *&v332[71] = v344;
    *&v332[87] = v345;
    *&v332[103] = v346;
    *&v332[7] = v340;
    *&v332[23] = v341;
    *&v332[39] = v342;
    *&v316 = sub_100038F28;
    *(&v316 + 1) = v139;
    LOBYTE(v317) = 0;
    *(&v317 + 1) = sub_100038F40;
    *&v318[0] = v142;
    BYTE8(v318[0]) = 0;
    *(v318 + 9) = *v332;
    *(&v318[3] + 9) = *&v332[48];
    *(&v318[2] + 9) = *&v332[32];
    *(&v318[1] + 9) = *&v332[16];
    *(&v318[7] + 1) = *(&v346 + 1);
    *(&v318[6] + 9) = *&v332[96];
    *(&v318[5] + 9) = *&v332[80];
    *(&v318[4] + 9) = *&v332[64];
    *&v315[23] = v317;
    *&v315[7] = v316;
    *&v315[87] = v318[3];
    *&v315[71] = v318[2];
    *&v315[55] = v318[1];
    *&v315[39] = v318[0];
    *&v315[151] = v318[7];
    *&v315[135] = v318[6];
    *&v315[119] = v318[5];
    *&v315[103] = v318[4];
    v328 = *&v332[64];
    v329 = *&v332[80];
    *v330 = *&v332[96];
    v319[0] = sub_100038F28;
    v319[1] = v139;
    v320 = 0;
    v321 = sub_100038F40;
    v322 = v142;
    v323 = 0;
    *&v330[15] = *(&v346 + 1);
    v324 = *v332;
    v325 = *&v332[16];
    v326 = *&v332[32];
    v327 = *&v332[48];
    sub_1000064B0(&v316, v331, &qword_10005C2B0, &qword_100041468);
    sub_10000619C(v319, &qword_10005C2B0, &qword_100041468);
    *(&v314[25] + 1) = *&v315[112];
    *(&v314[27] + 1) = *&v315[128];
    *(&v314[29] + 1) = *&v315[144];
    *(&v314[17] + 1) = *&v315[48];
    *(&v314[19] + 1) = *&v315[64];
    *(&v314[21] + 1) = *&v315[80];
    *(&v314[23] + 1) = *&v315[96];
    *(&v314[11] + 1) = *v315;
    *(&v314[13] + 1) = *&v315[16];
    v314[0] = v255;
    v314[1] = 0;
    LOBYTE(v314[2]) = v335;
    v314[3] = 0;
    v314[4] = v247;
    v314[5] = v254;
    v314[6] = v248;
    v314[7] = v252;
    v314[8] = v249;
    v314[9] = v251;
    v314[10] = v250;
    LOBYTE(v314[11]) = v253;
    v314[31] = *&v315[159];
    *(&v314[15] + 1) = *&v315[32];
    LOBYTE(v314[32]) = 0;
    v143 = v298;
    sub_100038E90(v304, v298);
    v144 = swift_allocObject();
    sub_100037E04(v143, v144 + v140);
    sub_100005D3C(&qword_10005C2B8, &qword_100041470);
    sub_100038FB8();
    View.onTapGesture(count:perform:)();

    memcpy(v331, v314, sizeof(v331));
    sub_10000619C(v331, &qword_10005C2B8, &qword_100041470);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v145 = v262;
    static Published.subscript.getter();

    v147 = v263;
    v146 = v264;
    v148 = v265;
    (*(v264 + 104))(v263, enum case for APKDeviceLockState.unlocked(_:), v265);
    LOBYTE(v143) = static APKDeviceLockState.== infix(_:_:)();
    v149 = *(v146 + 8);
    v149(v147, v148);
    v149(v145, v148);
    if (v143 & 1) == 0 || (StateObject.wrappedValue.getter(), swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , (v314[0]) || (StateObject.wrappedValue.getter(), swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , LOBYTE(v314[0]) == 1))
    {
      v284 = 0;
      v285 = 0;
      v281 = 0;
      v282 = 0;
      v279 = 0;
      v275 = 0;
      v283 = 0;
      v264 = 0;
      v265 = 0;
      v262 = 0;
      v263 = 255;
    }

    else
    {
      v182 = v232;
      sub_100038E90(v304, v232);
      v183 = swift_allocObject();
      sub_100037E04(v182, v183 + v296);
      LODWORD(v182) = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

      if (v182 == 1)
      {
        v184 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);

        v185 = 0x10000;
        if (!v184)
        {
          v185 = 0;
        }
      }

      else
      {
        v185 = 0;
      }

      v262 = v185;
      v281 = v183;
      static Alignment.trailing.getter();
      _FrameLayout.init(width:height:alignment:)();
      LOBYTE(v314[0]) = 0;
      v279 = v353;
      v275 = v354;
      v282 = v357;
      v283 = v356;
      v265 = v358;
      v263 = 0;
      v284 = sub_100039C60;
      v285 = v355;
      v264 = 256;
    }

    v150 = sub_100005D3C(&qword_10005C2E8, &qword_1000414D0);
    v151 = v294 + *(v150 + 44);
    v152 = v286;
    v153 = *(v287 + 16);
    v154 = v266;
    v153(v286, v290, v266);
    v155 = v267;
    v156 = *(v267 + 16);
    v156(v292, v291, v293);
    v157 = v264 | v262 | v263;
    v153(v151, v152, v154);
    v158 = sub_100005D3C(&qword_10005C2F0, &qword_1000414D8);
    v159 = v293;
    v156(&v151[*(v158 + 48)], v292, v293);
    v160 = &v151[*(v158 + 64)];
    *&v309 = v284;
    *(&v309 + 1) = v281;
    *&v310 = v157;
    v161 = v279;
    *(&v310 + 1) = v279;
    v162 = v275;
    *&v311 = v275;
    *(&v311 + 1) = v285;
    *&v312 = v283;
    *(&v312 + 1) = v282;
    v163 = v265;
    v313 = v265;
    v164 = v312;
    *(v160 + 2) = v311;
    *(v160 + 3) = v164;
    *(v160 + 8) = v163;
    v165 = v310;
    *v160 = v309;
    *(v160 + 1) = v165;
    sub_1000064B0(&v309, v314, &qword_10005C2F8, &qword_1000414E0);
    v166 = *(v155 + 8);
    v166(v291, v159);
    v167 = *(v287 + 8);
    v167(v290, v154);
    v314[0] = v284;
    v314[1] = v281;
    v314[2] = v157;
    v314[3] = v161;
    v314[4] = v162;
    v314[5] = v285;
    v314[6] = v283;
    v314[7] = v282;
    v314[8] = v163;
    sub_10000619C(v314, &qword_10005C2F8, &qword_1000414E0);
    v166(v292, v293);
    v167(v286, v154);
    if (v256)
    {
      v168 = v303 == 1;
      v169 = v273;
      (*(v271 + 56))(v273, 1, 1, v272);
      if (((v246 | v168) & 1) == 0)
      {
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        LODWORD(v292) = 0;
        v293 = v359;
        v290 = v361;
        v291 = v360;
        v307 = 1;
        v306 = BYTE8(v359);
        v305 = BYTE8(v360);
        v284 = 1;
        v285 = BYTE8(v359);
        v286 = BYTE8(v360);
        v287 = *(&v361 + 1);
        v308 = 0;
LABEL_80:
        LODWORD(v303) = v303 == 1;
        v199 = sub_100005D3C(&qword_10005C300, &qword_1000414E8);
        v200 = v294;
        v201 = v295 + *(v199 + 44);
        v202 = v270;
        sub_1000064B0(v294, v270, &qword_10005C2A0, &qword_100041410);
        v203 = v274;
        sub_1000064B0(v169, v274, &qword_10005C288, &qword_1000413F8);
        v204 = v257;
        *v201 = 0;
        *(v201 + 1) = v204;
        v205 = v258;
        *(v201 + 2) = v278;
        *(v201 + 3) = v205;
        v206 = v259;
        *(v201 + 4) = v276;
        *(v201 + 5) = v206;
        v207 = v260;
        *(v201 + 6) = v261;
        *(v201 + 7) = v207;
        v201[64] = v277;
        v208 = v169;
        v209 = sub_100005D3C(&qword_10005C308, &qword_1000414F0);
        sub_1000064B0(v202, &v201[v209[12]], &qword_10005C2A0, &qword_100041410);
        sub_1000064B0(v203, &v201[v209[16]], &qword_10005C288, &qword_1000413F8);
        v210 = &v201[v209[20]];
        v211 = v284;
        *v210 = 0;
        *(v210 + 1) = v211;
        v212 = v285;
        *(v210 + 2) = v293;
        *(v210 + 3) = v212;
        v213 = v286;
        *(v210 + 4) = v291;
        *(v210 + 5) = v213;
        v214 = v287;
        *(v210 + 6) = v290;
        *(v210 + 7) = v214;
        v210[64] = v292;
        sub_10000619C(v208, &qword_10005C288, &qword_1000413F8);
        sub_10000619C(v200, &qword_10005C2A0, &qword_100041410);
        sub_10000619C(v203, &qword_10005C288, &qword_1000413F8);
        sub_10000619C(v202, &qword_10005C2A0, &qword_100041410);
        LOBYTE(v200) = static Edge.Set.all.getter();
        v215 = sub_100005D3C(&qword_10005C310, &qword_1000414F8);
        v216 = v295;
        v217 = v295 + *(v215 + 36);
        *v217 = v200;
        v218 = v280;
        v219 = v269;
        *(v217 + 1) = v280;
        *(v217 + 2) = v219;
        v220 = v268;
        *(v217 + 3) = v218;
        *(v217 + 4) = v220;
        v217[40] = 0;
        LOBYTE(v200) = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

        v221 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);

        v222 = v216 + *(sub_100005D3C(&qword_10005C318, &qword_100041500) + 36);
        *v222 = v200;
        v222[1] = v221;
        *(v222 + 1) = v303;
        v223 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);

        v224 = v298;
        sub_100038E90(v304, v298);
        v225 = swift_allocObject();
        sub_100037E04(v224, v225 + v296);
        type metadata accessor for APUISystemApertureLayoutState(0);
        sub_100039A08(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);
        v226 = EnvironmentObject.init()();
        v228 = v227;
        result = sub_100005D3C(&qword_10005C320, &qword_100041508);
        v230 = v216 + *(result + 36);
        *v230 = v223;
        *(v230 + 1) = v226;
        *(v230 + 2) = v228;
        *(v230 + 3) = sub_1000390A4;
        *(v230 + 4) = v225;
        return result;
      }
    }

    else
    {
      v170 = v272;
      v169 = v273;
      if (v303 == 1)
      {
        v171 = 1;
      }

      else
      {
        v172 = v243;
        Divider.init()();
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v173 = (v172 + *(v234 + 36));
        v174 = v360;
        *v173 = v359;
        v173[1] = v174;
        v173[2] = v361;
        v175 = v237;
        sub_100031B58(v237);
        v177 = v244;
        v176 = v245;
        v178 = v238;
        (*(v244 + 104))(v238, enum case for ColorScheme.dark(_:), v245);
        v179 = static ColorScheme.== infix(_:_:)();
        v180 = *(v177 + 8);
        v180(v178, v176);
        v180(v175, v176);
        if (v179)
        {
          v181 = static Color.white.getter();
        }

        else
        {
          v181 = static Color.black.getter();
        }

        v186 = v181;
        v187 = static Edge.Set.all.getter();
        v188 = v242;
        sub_10002B908(v172, v242, &qword_10005C268, &qword_1000413D8);
        v189 = v188 + *(v240 + 36);
        *v189 = v186;
        *(v189 + 8) = v187;
        if (v233)
        {
          v190 = 0x4048000000000000;
        }

        else
        {
          v190 = 0x4049800000000000;
        }

        v191 = static Edge.Set.all.getter();
        v192 = v188;
        v193 = v241;
        sub_10002B908(v192, v241, &qword_10005C270, &qword_1000413E0);
        v194 = v193 + *(v239 + 36);
        *v194 = v191;
        *(v194 + 8) = 0x4024000000000000;
        *(v194 + 16) = v190;
        *(v194 + 24) = xmmword_100040E50;
        *(v194 + 40) = 0;
        v195 = v193;
        v196 = v236;
        sub_10002B908(v195, v236, &qword_10005C278, &qword_1000413E8);
        *(v196 + *(v170 + 36)) = 0x3FB999999999999ALL;
        v197 = v196;
        v198 = v235;
        sub_10002B908(v197, v235, &qword_10005C280, &qword_1000413F0);
        sub_10002B908(v198, v169, &qword_10005C280, &qword_1000413F0);
        v171 = 0;
      }

      (*(v271 + 56))(v169, v171, 1, v170);
    }

    v293 = 0;
    v290 = 0;
    v291 = 0;
    v286 = 0;
    v287 = 0;
    v284 = 0;
    v285 = 0;
    LODWORD(v292) = 1;
    goto LABEL_80;
  }

LABEL_83:
  type metadata accessor for APUISystemApertureLayoutState(0);
  sub_100039A08(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}
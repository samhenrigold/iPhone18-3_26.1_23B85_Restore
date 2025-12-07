unint64_t sub_100016864()
{
  result = qword_100032CA0;
  if (!qword_100032CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032CA0);
  }

  return result;
}

uint64_t sub_1000168FC()
{
  *(v1 + 56) = v0;
  *(v1 + 24) = sub_10000E528;

  return swift_continuation_init();
}

uint64_t sub_100016A38(uint64_t a1)
{
}

void sub_100016B40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_100016B60()
{

  return swift_slowAlloc();
}

uint64_t sub_100016B78()
{

  return swift_slowAlloc();
}

uint64_t sub_100016B90()
{

  return sub_10001DE24();
}

uint64_t sub_100016BA8(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_100016BC0()
{
  sub_10001A3E4();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v11 = sub_100019FB4;
  v12 = v1;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v10 = sub_100016F60;
  *(&v10 + 1) = &unk_10002DB80;
  v2 = _Block_copy(&aBlock);
  v3 = v0;

  v4 = [v3 _remoteViewControllerProxyWithErrorHandler:v2];
  _Block_release(v2);
  if (v4)
  {
    sub_10001DF04();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  aBlock = v7;
  v10 = v8;
  if (*(&v8 + 1))
  {
    sub_100005A2C(&qword_100032ED0, &qword_100020ED0);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100019FD4(&aBlock, &qword_100032E68, &unk_100020EC0);
    return 0;
  }
}

void sub_100016D34(uint64_t a1, void *a2)
{
  v4 = sub_10001D694();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!WFLogCategoryFocusConfiguration)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_10001D664();
  swift_errorRetain();
  v8 = sub_10001D684();
  v9 = sub_10001DE94();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v10 + 4) = v12;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "Connection interrupted to focus configuration host process: %@", v10, 0xCu);
    sub_100019FD4(v11, &qword_100032C60, &qword_100020BE0);
  }

  (*(v5 + 8))(v7, v4);
  v14 = [a2 extensionContext];
  if (v14)
  {
    if (a1)
    {
      v15 = v14;
      v16 = sub_10001D544();
      [v15 cancelRequestWithError:v16];

      return;
    }

LABEL_12:
    __break(1u);
  }
}

void sub_100016F60(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_100016FCC()
{
  v0 = WFFocusConfigurationServiceXPCInterface();

  return v0;
}

id sub_100017020()
{
  v0 = WFFocusConfigurationHostXPCInterface();

  return v0;
}

void sub_100017074()
{
  v1 = v0;
  v2 = sub_100005A2C(&qword_100032ED8, &qword_100020F20);
  __chkstk_darwin(v2);
  v55.receiver = v0;
  v55.super_class = type metadata accessor for FocusConfigurationServiceViewController();
  objc_msgSendSuper2(&v55, "loadView");
  v3 = sub_10001A408();
  if (!v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 systemGroupedBackgroundColor];
  [v4 setBackgroundColor:v6];

  sub_10001D7A4();
  sub_100006B8C(&qword_100032EE0, &qword_100032ED8, &qword_100020F20, &protocol conformance descriptor for ProgressView<A, B>);
  sub_10001DC04();
  v7 = objc_allocWithZone(sub_100005A2C(&unk_100032EE8, &qword_100020F28));
  v8 = sub_10001D984();
  [v1 addChildViewController:v8];
  v9 = sub_10001A3F0();
  if (!v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v9;
  v11 = sub_10001A408();
  if (!v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  [v11 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v10 setFrame:{v14, v16, v18, v20}];
  v21 = sub_10001A3F0();

  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = sub_10001A3F0();
  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = [v5 systemGroupedBackgroundColor];
  [v22 setBackgroundColor:v23];

  v24 = sub_10001A408();
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = sub_10001A3F0();

  if (!v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v25 addSubview:v26];

  sub_100005A2C(&qword_1000323C0, &qword_100020790);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100020D30;
  v28 = sub_10001A3F0();

  if (!v28)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = [v28 topAnchor];

  v30 = sub_10001A408();
  if (!v30)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = v30;
  v32 = [v30 topAnchor];

  v33 = sub_10001A420();
  *(v27 + 32) = v33;
  v34 = sub_10001A3F0();

  if (!v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v35 = [v34 bottomAnchor];

  v36 = sub_10001A408();
  if (!v36)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v37 = v36;
  v38 = [v36 bottomAnchor];

  v39 = sub_10001A420();
  *(v27 + 40) = v39;
  v40 = sub_10001A3F0();

  if (!v40)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v41 = [v40 leadingAnchor];

  v42 = sub_10001A408();
  if (!v42)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v43 = v42;
  v44 = [v42 leadingAnchor];

  v45 = sub_10001A420();
  *(v27 + 48) = v45;
  v46 = sub_10001A3F0();

  if (!v46)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v47 = [v46 trailingAnchor];

  v48 = sub_10001A408();
  if (v48)
  {
    v49 = v48;
    v50 = objc_opt_self();
    v51 = [v49 trailingAnchor];

    v52 = [v47 constraintEqualToAnchor:v51];
    *(v27 + 56) = v52;
    sub_100006710(0, &qword_100032EF8, NSLayoutConstraint_ptr);
    isa = sub_10001DDC4().super.isa;

    [v50 activateConstraints:isa];

    v54 = *&v1[OBJC_IVAR___WFFocusConfigurationServiceViewController_hostingViewController];
    *&v1[OBJC_IVAR___WFFocusConfigurationServiceViewController_hostingViewController] = v8;

    return;
  }

LABEL_31:
  __break(1u);
}

id sub_1000176EC(uint64_t a1)
{
  v2 = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FocusConfigurationServiceViewController();
  objc_msgSendSuper2(&v4, "viewWillDisappear:", v2 & 1);
  return [objc_opt_self() invalidateAllConnections];
}

uint64_t sub_10001779C()
{
  sub_10001696C();
  v1[2] = v2;
  v1[3] = v0;
  sub_100005A2C(&unk_100032C28, &qword_100020D70);
  v1[4] = swift_task_alloc();
  v1[5] = sub_10001DE34();
  v1[6] = sub_10001DE24();
  v4 = sub_10001DE14();

  return _swift_task_switch(sub_10001786C, v4, v3);
}

uint64_t sub_10001786C()
{
  sub_100016AA8();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = *&v2[OBJC_IVAR___WFFocusConfigurationServiceViewController_request];
  *&v2[OBJC_IVAR___WFFocusConfigurationServiceViewController_request] = v3;
  v5 = v3;

  [v2 loadViewIfNeeded];
  v6 = sub_10001DE54();
  sub_10000619C(v1, 1, 1, v6);
  v7 = v5;
  v8 = v2;
  v9 = sub_10001DE24();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v7;
  v10[5] = v8;
  sub_10001867C(0, 0, v1, &unk_100020D80, v10);

  sub_1000169A0();

  return v11();
}

uint64_t sub_100017998(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[49] = a4;
  v5[50] = a5;
  v7 = sub_10001D694();
  v5[51] = v7;
  v5[52] = *(v7 - 8);
  v5[53] = swift_task_alloc();
  v5[54] = sub_10001DE34();
  v5[55] = sub_10001DE24();
  objc_allocWithZone(type metadata accessor for FocusConfigurationActionViewModel(0));
  v8 = a4;
  v9 = swift_task_alloc();
  v5[56] = v9;
  *v9 = v5;
  v9[1] = sub_100017AC8;

  return sub_10000D1C4();
}

uint64_t sub_100017AC8()
{
  sub_100016984();
  sub_100016A50();
  v2 = *v1;
  sub_10001A3A8();
  *v3 = v2;
  *(v5 + 456) = v4;
  *(v5 + 464) = v0;

  v7 = sub_10001DE14();
  if (v0)
  {
    v8 = sub_100018054;
  }

  else
  {
    v8 = sub_100017C18;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100017C18()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);

  sub_100006710(0, &unk_100032DB0, WFShowFocusConfigurationEvent_ptr);
  v3 = sub_1000148F4(v2);
  [v3 track];

  v4 = *(v1 + OBJC_IVAR___WFFocusConfigurationServiceViewController_hostingViewController);
  if (v4)
  {
    v5 = *(v0 + 456);
    KeyPath = swift_getKeyPath();
    v6 = *&v5[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action];
    v7 = *&v5[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_options];
    *(v0 + 360) = *&v5[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_configurableParameter];
    v8 = v4;
    v9 = v5;

    v10 = v6;

    sub_100005A2C(&qword_100032798, &qword_100020770);
    sub_10001DBA4();
    v11 = *(v0 + 336);
    v12 = *(v0 + 344);
    sub_10001A3E4();
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v14 = swift_getKeyPath();
    v15 = WFUserInterfaceFromViewController();
    *(v0 + 136) = sub_100019E28;
    *(v0 + 144) = v13;
    *(v0 + 152) = 0;
    *(v0 + 160) = v10;
    *(v0 + 168) = v7;
    *(v0 + 176) = v11;
    *(v0 + 184) = v12;
    *(v0 + 192) = KeyPath;
    *(v0 + 200) = 0;
    *(v0 + 208) = v14;
    *(v0 + 216) = v15;
    sub_100005A2C(&qword_100032E20, &qword_100020EA0);
    sub_100019E5C();
    *(v0 + 368) = sub_10001DC04();
    sub_10001D994();
  }

  v16 = *(v0 + 456);
  v17 = *(v0 + 400);
  *(v0 + 376) = *(v16 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationStateChange);
  sub_10001A3E4();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100005A2C(&qword_100032AE8, &unk_100020EB0);
  sub_100006B8C(&unk_100032E50, &qword_100032AE8, &unk_100020EB0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_10001D734();

  swift_beginAccess();
  sub_10001D6A4();
  swift_endAccess();

  *(v0 + 384) = *(v16 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationButtonTapped);
  sub_10001A3E4();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100019FA4;
  *(v19 + 24) = v18;

  sub_100005A2C(&qword_100032AF8, &qword_100020AF8);
  sub_100006B8C(&qword_100032E60, &qword_100032AF8, &qword_100020AF8, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_10001D734();

  swift_beginAccess();
  sub_10001D6A4();
  swift_endAccess();

  v20 = *(v17 + OBJC_IVAR___WFFocusConfigurationServiceViewController_configurationViewModel);
  *(v17 + OBJC_IVAR___WFFocusConfigurationServiceViewController_configurationViewModel) = v16;

  sub_1000169A0();

  return v21();
}

void sub_100018054()
{
  if (WFLogCategoryFocusConfiguration)
  {
    v1 = *(v0 + 392);

    sub_10001D664();
    v2 = v1;
    v3 = sub_10001D684();
    v4 = sub_10001DE94();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 392);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to prepare WFAction for focus configuration request %@", v6, 0xCu);
      sub_100019FD4(v7, &qword_100032C60, &qword_100020BE0);
    }

    v10 = *(v0 + 416);
    v9 = *(v0 + 424);
    v12 = *(v0 + 400);
    v11 = *(v0 + 408);

    (*(v10 + 8))(v9, v11);
    v13 = *(v12 + OBJC_IVAR___WFFocusConfigurationServiceViewController_hostingViewController);
    if (v13)
    {
      v36 = v13;
      sub_10001DD44();
      sub_10001DD44();
      if (qword_100032078 != -1)
      {
        swift_once();
      }

      v14 = static NSBundle._current;
      v15 = sub_10001DD04();
      v16 = sub_10001DD04();

      v17 = sub_10001DD04();

      v18 = [v14 localizedStringForKey:v15 value:v16 table:v17];

      v19 = sub_10001DD14();
      v21 = v20;

      *(v0 + 320) = v19;
      *(v0 + 328) = v21;
      sub_100005A7C();
      v22 = sub_10001DA74();
      v24 = v23;
      LOBYTE(v15) = v25;
      sub_10001DB44();
      v26 = sub_10001DA54();
      v28 = v27;
      v30 = v29;
      v32 = v31;

      sub_100006320(v22, v24, v15 & 1);

      KeyPath = swift_getKeyPath();
      v34 = swift_getKeyPath();
      sub_10001DC84();
      sub_10001D7B4();
      *&v37[39] = *(v0 + 256);
      *&v37[23] = *(v0 + 240);
      *&v37[7] = *(v0 + 224);
      *(v0 + 81) = *v37;
      *(v0 + 16) = v26;
      *(v0 + 24) = v28;
      *(v0 + 32) = v30 & 1;
      *(v0 + 40) = v32;
      *(v0 + 48) = KeyPath;
      *(v0 + 56) = 3;
      *(v0 + 64) = 0;
      *(v0 + 72) = v34;
      *(v0 + 80) = 1;
      *(v0 + 97) = *&v37[16];
      *(v0 + 113) = *&v37[32];
      *(v0 + 128) = *&v37[47];
      sub_100005A2C(&qword_100032D58, &qword_100020E00);
      sub_100019BD0();
      *(v0 + 352) = sub_10001DC04();
      sub_10001D994();
    }

    sub_1000169A0();

    v35();
  }

  else
  {
    __break(1u);
  }
}

void sub_10001849C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000184F8(v2);
  }
}

void *sub_1000184F8(uint64_t a1)
{
  result = sub_100016BC0();
  if (result)
  {
    [result configurationUIStateDidUpdate:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100018554(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_100016BC0();

    if (v13)
    {
      v14 = [a1 identifier];
      if (!v14)
      {
        sub_10001DD14();
        v14 = sub_10001DD04();
      }

      [v13 didPressButtonWithIdentifier:v14 cellFrame:{a3, a4, a5, a6}];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10001867C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005A2C(&unk_100032C28, &qword_100020D70);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_100016520(a3, v24 - v10);
  v12 = sub_10001DE54();
  v13 = sub_100016590(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100019FD4(v11, &unk_100032C28, &qword_100020D70);
  }

  else
  {
    sub_10001DE44();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10001DE14();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10001DD34() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100019FD4(a3, &unk_100032C28, &qword_100020D70);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100019FD4(a3, &unk_100032C28, &qword_100020D70);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000189D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_10001DE34();
  v3[5] = sub_10001DE24();
  v5 = sub_10001DE14();

  return _swift_task_switch(sub_100018A74, v5, v4);
}

uint64_t sub_100018A74()
{
  sub_100016984();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100018B34;

  return sub_10001779C();
}

uint64_t sub_100018B34()
{
  sub_100016AA8();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_10001A3A8();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[6];
  if (v2)
  {
    v10 = sub_10001D544();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v3[6], 0);
  }

  _Block_release(v4[6]);
  v11 = v8[1];

  return v11();
}

uint64_t sub_100018CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005A2C(&unk_100032C28, &qword_100020D70);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_10001DE54();
  sub_10000619C(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_100020EF0;
  v9[5] = v8;
  sub_100019758(0, 0, v6, &unk_100020F00, v9);
}

id sub_100018DD4(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___WFFocusConfigurationServiceViewController_request] = 0;
  *&v3[OBJC_IVAR___WFFocusConfigurationServiceViewController_configurationViewModel] = 0;
  *&v3[OBJC_IVAR___WFFocusConfigurationServiceViewController_observers] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR___WFFocusConfigurationServiceViewController_hostingViewController] = 0;
  if (a2)
  {
    v5 = sub_10001DD04();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for FocusConfigurationServiceViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_100018EEC(void *a1)
{
  *&v1[OBJC_IVAR___WFFocusConfigurationServiceViewController_request] = 0;
  *&v1[OBJC_IVAR___WFFocusConfigurationServiceViewController_configurationViewModel] = 0;
  *&v1[OBJC_IVAR___WFFocusConfigurationServiceViewController_observers] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR___WFFocusConfigurationServiceViewController_hostingViewController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FocusConfigurationServiceViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100018FC0(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FocusConfigurationServiceViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_10001908C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000190D4()
{
  sub_100016AA8();
  v0 = swift_task_alloc();
  v1 = sub_10001A3B8(v0);
  *v1 = v2;
  v1[1] = sub_100019174;
  v3 = sub_10001A3C8();

  return sub_100017998(v3, v4, v5, v6, v7);
}

uint64_t sub_100019174()
{
  sub_10001696C();
  sub_100016A50();
  v1 = *v0;
  sub_10001A3A8();
  *v2 = v1;

  sub_1000169A0();

  return v3();
}

uint64_t sub_100019254(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001934C;

  return v6(a1);
}

uint64_t sub_10001934C()
{
  sub_10001696C();
  sub_100016A50();
  v1 = *v0;
  sub_10001A3A8();
  *v2 = v1;

  sub_1000169A0();

  return v3();
}

uint64_t sub_100019430()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019468()
{
  sub_100016984();
  sub_10001A448();
  v0 = swift_task_alloc();
  v1 = sub_10001A3B8(v0);
  *v1 = v2;
  v3 = sub_10001A388(v1);

  return v4(v3);
}

uint64_t sub_1000194F8()
{
  sub_100016984();
  sub_10001A448();
  v0 = swift_task_alloc();
  v1 = sub_10001A3B8(v0);
  *v1 = v2;
  v3 = sub_10001A388(v1);

  return v4(v3);
}

uint64_t sub_100019588(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001A380;

  return v6();
}

uint64_t sub_100019670(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100019174;

  return v7();
}

uint64_t sub_100019758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005A2C(&unk_100032C28, &qword_100020D70);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_100016520(a3, v22 - v10);
  v12 = sub_10001DE54();
  if (sub_100016590(v11, 1, v12) == 1)
  {
    sub_100019FD4(v11, &unk_100032C28, &qword_100020D70);
  }

  else
  {
    sub_10001DE44();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_10001DE14();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_10001DD34() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_100019FD4(a3, &unk_100032C28, &qword_100020D70);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100019FD4(a3, &unk_100032C28, &qword_100020D70);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_100019A24(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001A384;

  return v6(a1);
}

uint64_t sub_100019B1C()
{
  sub_10001A43C();
  result = sub_10001D8D4();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_100019B80()
{
  sub_10001A43C();
  result = sub_10001D894();
  *v0 = result;
  return result;
}

unint64_t sub_100019BD0()
{
  result = qword_100032D60;
  if (!qword_100032D60)
  {
    sub_100005B4C(&qword_100032D58, &qword_100020E00);
    sub_100019C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032D60);
  }

  return result;
}

unint64_t sub_100019C5C()
{
  result = qword_100032D68;
  if (!qword_100032D68)
  {
    sub_100005B4C(&qword_100032D70, &qword_100020E08);
    sub_100019D14();
    sub_100006B8C(&qword_100032D98, &unk_100032DA0, &unk_100020E20, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032D68);
  }

  return result;
}

unint64_t sub_100019D14()
{
  result = qword_100032D78;
  if (!qword_100032D78)
  {
    sub_100005B4C(&qword_100032D80, &qword_100020E10);
    sub_100006B8C(&qword_100032D88, &qword_100032D90, &qword_100020E18, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032D78);
  }

  return result;
}

uint64_t sub_100019DCC()
{
  sub_10001A43C();
  result = sub_10001D824();
  *v0 = result;
  return result;
}

uint64_t sub_100019DF4()
{
  sub_10001A3E4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100019E30()
{
  sub_10001A43C();
  result = sub_10001D834();
  *v0 = result;
  return result;
}

unint64_t sub_100019E5C()
{
  result = qword_100032E28;
  if (!qword_100032E28)
  {
    sub_100005B4C(&qword_100032E20, &qword_100020EA0);
    sub_100019F14();
    sub_100006B8C(&qword_100032E38, &unk_100032E40, &qword_100020EA8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032E28);
  }

  return result;
}

unint64_t sub_100019F14()
{
  result = qword_100032E30;
  if (!qword_100032E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032E30);
  }

  return result;
}

uint64_t sub_100019F68()
{
  swift_unknownObjectWeakDestroy();
  sub_10001A3E4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100019FBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100019FD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005A2C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10001A034()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001A07C()
{
  sub_100016984();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001A380;

  return sub_1000189D8(v2, v3, v4);
}

uint64_t sub_10001A130()
{
  sub_100016AA8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001A380;

  return sub_100019588(v2, v3, v4);
}

uint64_t sub_10001A1EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001A22C()
{
  sub_100016AA8();
  v0 = swift_task_alloc();
  v1 = sub_10001A3B8(v0);
  *v1 = v2;
  v1[1] = sub_10001A380;
  v3 = sub_10001A3C8();

  return v4(v3);
}

uint64_t sub_10001A2D8()
{
  sub_100016984();
  sub_10001A448();
  v0 = swift_task_alloc();
  v1 = sub_10001A3B8(v0);
  *v1 = v2;
  v3 = sub_10001A388(v1);

  return v4(v3);
}

id sub_10001A3F0()
{
  v3 = *(v1 + 808);

  return [v0 v3];
}

id sub_10001A408()
{
  v3 = *(v1 + 808);

  return [v0 v3];
}

id sub_10001A420()
{
  v4 = *(v2 + 872);

  return [v0 v4];
}

uint64_t FocusConfigurationMastheadView.iconConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFFocusConfigurationMastheadView_iconConfiguration + 16);
  v2 = *(v0 + OBJC_IVAR___WFFocusConfigurationMastheadView_iconConfiguration + 24);
  v3 = sub_10000C8B4();
  sub_10001A4AC(v3, v4, v1, v2);
  return sub_10000C8B4();
}

id sub_10001A4AC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {

    return a3;
  }

  else
  {
  }
}

id FocusConfigurationMastheadView.init(bundleIdentifier:title:subtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6 + OBJC_IVAR___WFFocusConfigurationMastheadView_iconConfiguration;
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = (v6 + OBJC_IVAR___WFFocusConfigurationMastheadView_title);
  *v8 = a3;
  v8[1] = a4;
  v9 = (v6 + OBJC_IVAR___WFFocusConfigurationMastheadView_subtitle);
  *v9 = a5;
  v9[1] = a6;
  v15 = type metadata accessor for FocusConfigurationMastheadView();
  v10 = sub_10001B08C();
  v13 = objc_msgSendSuper2(v11, v12, v10, v6, v15);
  sub_10001A984();

  return v13;
}

objc_super *FocusConfigurationMastheadView.init(symbolName:color:title:subtitle:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7 + OBJC_IVAR___WFFocusConfigurationMastheadView_iconConfiguration;
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = 1;
  v10 = (v7 + OBJC_IVAR___WFFocusConfigurationMastheadView_title);
  *v10 = a4;
  v10[1] = a5;
  v11 = (v7 + OBJC_IVAR___WFFocusConfigurationMastheadView_subtitle);
  *v11 = a6;
  v11[1] = a7;
  v17 = type metadata accessor for FocusConfigurationMastheadView();
  v12 = a3;
  v13 = sub_10001B08C();
  v15 = [(objc_super *)v14 initWithFrame:v13, v7, v17];
  sub_10001A984();

  return v15;
}

void sub_10001A984()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setBackgroundColor:v3];

  if (*(v1 + OBJC_IVAR___WFFocusConfigurationMastheadView_iconConfiguration + 24))
  {
    v4 = objc_allocWithZone(sub_10001D654());
    v5 = sub_10001B0C0();
    sub_10001A4AC(v5, v6, v7, 1);

    v8 = sub_10001D644();
  }

  else
  {
    v9 = objc_allocWithZone(sub_10001D614());
    v10 = sub_10001B0C0();
    sub_10001A4AC(v10, v11, v12, 0);

    v8 = sub_10001D604();
  }

  v29 = v8;
  v13 = [v2 clearColor];
  [v29 setBackgroundColor:v13];

  [v1 addSubview:v29];
  v14 = objc_opt_self();
  sub_100005A2C(&qword_1000323C0, &qword_100020790);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100020D30;
  v16 = [v1 leadingAnchor];
  v17 = [v29 leadingAnchor];
  v18 = sub_10001B0A4();

  *(v15 + 32) = v18;
  v19 = [v1 trailingAnchor];
  v20 = [v29 trailingAnchor];
  v21 = sub_10001B0A4();

  *(v15 + 40) = v21;
  v22 = [v1 topAnchor];
  v23 = [v29 topAnchor];
  v24 = sub_10001B0A4();

  *(v15 + 48) = v24;
  v25 = [v1 bottomAnchor];
  v26 = [v29 bottomAnchor];

  v27 = [v25 constraintEqualToAnchor:v26 constant:36.0];
  *(v15 + 56) = v27;
  sub_10001B048();
  isa = sub_10001DDC4().super.isa;

  [v14 activateConstraints:isa];
}

id FocusConfigurationMastheadView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id FocusConfigurationMastheadView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id FocusConfigurationMastheadView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FocusConfigurationMastheadView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10001AF34(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10001AF48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001AF88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_10001AFEC(uint64_t a1, uint64_t a2, void *a3, char a4)
{

  if (a4)
  {
  }
}

unint64_t sub_10001B048()
{
  result = qword_100032EF8;
  if (!qword_100032EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100032EF8);
  }

  return result;
}

id sub_10001B0A4()
{
  v4 = *(v2 + 872);

  return [v0 v4];
}

void sub_10001BD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001BD90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 key];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

BOOL sub_10001BDD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 allowsMultipleValues] && (objc_msgSend(v3, "displaysMultipleValueEditor") & 1) != 0)
  {
    v4 = 1;
  }

  else if ([*(a1 + 32) showsParameterDescription])
  {
    v5 = [v3 localizedDescription];
    v4 = [v5 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10001BE60(uint64_t a1, unint64_t a2)
{
  if (a2 > *(*(*(a1 + 48) + 8) + 24))
  {
    v4 = [NSIndexSet indexSetWithIndexesInRange:?];
    v5 = [*(a1 + 32) objectsAtIndexes:v4];
    v6 = [WFDataConfigurationParametersSection alloc];
    ++*(*(*(a1 + 56) + 8) + 24);
    v7 = [(WFDataConfigurationParametersSection *)v6 initWithParameters:v5 sectionIndex:?];
    [*(a1 + 40) addObject:v7];
  }

  v8 = [WFDataConfigurationParametersSection alloc];
  v9 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v12 = v9;
  v10 = [NSArray arrayWithObjects:&v12 count:1];
  ++*(*(*(a1 + 56) + 8) + 24);
  v11 = [(WFDataConfigurationParametersSection *)v8 initWithParameters:v10 sectionIndex:?];

  [*(a1 + 40) addObject:v11];
  *(*(*(a1 + 48) + 8) + 24) = a2 + 1;
}

void sub_10001BFD4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = a2;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  [v3 appendSectionsWithIdentifiers:{v5, v9}];

  v6 = *(a1 + 32);
  v7 = [v4 parameters];
  v8 = [v7 valueForKey:@"key"];
  [v6 appendItemsWithIdentifiers:v8];
}

NSString *__cdecl sub_10001C0B0(id a1, WFFocusConfigurationButton *a2, unint64_t a3)
{
  v3 = [(WFFocusConfigurationButton *)a2 identifier];
  v4 = [@"_footerButton_" stringByAppendingString:v3];

  return v4;
}

void sub_10001CA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10001CAB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v9 hasPrefix:@"_footerButton_"])
  {
    v11 = [v9 substringFromIndex:{objc_msgSend(@"_footerButton_", "length")}];
    v12 = [WeakRetained footerButtons];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10001CDB4;
    v27[3] = &unk_10002DE60;
    v13 = v11;
    v28 = v13;
    v14 = [v12 if_firstObjectPassingTest:v27];

    v15 = [v7 dequeueReusableCellWithIdentifier:@"ButtonCell" forIndexPath:v8];
    v16 = +[UIListContentConfiguration cellConfiguration];
    v17 = [v14 localizedTitle];
    [v16 setText:v17];

    if ([v14 isDestructive])
    {
      +[UIColor systemRedColor];
    }

    else
    {
      +[UIColor tintColor];
    }
    v24 = ;
    v25 = [v16 textProperties];
    [v25 setColor:v24];

    [v15 setContentConfiguration:v16];
  }

  else
  {
    v18 = v9;
    v15 = [v7 dequeueReusableCellWithIdentifier:@"ParameterEditorHostingCell" forIndexPath:v8];
    [v15 setContainingViewController:WeakRetained];
    [v15 setDelegate:WeakRetained];
    v19 = [WeakRetained action];
    v13 = [v19 parameterForKey:v18];

    v20 = [WeakRetained action];
    v21 = [v20 parameterStateForKey:v18 fallingBackToDefaultValue:1];

    v22 = [[WFParameterEditorModel alloc] initWithParameter:v13 state:v21 widgetFamily:{objc_msgSend(WeakRetained, "widgetFamily")}];
    [v15 updateModel:v22];

    [v15 layoutIfNeeded];
    v23 = [WeakRetained action];
    [WeakRetained configureCell:v15 forAction:v23 parameter:v13];
  }

  return v15;
}

id sub_10001CDB4(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10001CFD0(uint64_t a1)
{
  [*(a1 + 32) preferredContentSize];
  v3 = v2;
  v5 = v4;
  v6 = [*(a1 + 32) tableView];
  [v6 contentSize];
  v8 = v7;
  v10 = v9;

  if (v3 != v8 || v5 != v10)
  {
    v12 = [*(a1 + 32) tableView];
    [v12 contentSize];
    [*(a1 + 32) setPreferredContentSize:?];
  }
}

void sub_10001D14C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v9 = v6;
  if (v6)
  {
    v8 = [*(a1 + 32) action];
    (*(v7 + 16))(v7, v8, v9, 0);
  }

  else
  {
    (*(v7 + 16))(v7, 0, 0, a4);
  }
}

void sub_10001D364(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v6 addEventObserver:v3];
  v4 = [v6 resourceManager];
  [v4 addTarget:*(a1 + 32) selector:"reloadActionParameterModels"];

  if (*(a1 + 40) == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [v6 setEditingContext:v5];
}

BOOL sub_10001D468(id a1, WFParameter *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (-[WFParameter key](v2, "key"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEqualToString:WFHandleIntentActionShowWhenRunKey], v3, (v4))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(WFParameter *)v2 key];
    if ([v6 isEqualToString:WFLinkActionShowWhenRunKey])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v7 = [(WFParameter *)v2 key];
      v5 = [v7 isEqualToString:WFLinkActionOpenWhenRunKey] ^ 1;
    }
  }

  return v5;
}
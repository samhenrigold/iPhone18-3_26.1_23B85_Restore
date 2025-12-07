Swift::Void __swiftcall MainHostViewController.loadView()()
{
  v2 = v1;
  sub_100016438(0x6569562064616F4CLL, 0xE900000000000077, v0, type metadata accessor for MainHostViewController, &qword_1000AE560, &qword_100089D48);
  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;
  sub_1000877DC(17);
  v14 = v10;
  v15._countAndFlagsBits = 0x6547656369766544;
  v15._object = 0xEF203A746C617473;
  sub_1000871BC(v15);
  if (qword_1000ADBE0 != -1)
  {
    swift_once();
  }

  v11 = xmmword_1000B3B60;
  v12 = *algn_1000B3B70;
  *v13 = xmmword_1000B3B80;
  *&v13[12] = *(&xmmword_1000B3B80 + 12);
  sub_1000878DC();
  sub_100016438(v14, *(&v14 + 1), v3, type metadata accessor for MainHostViewController, &qword_1000AE560, &qword_100089D48);

  v4 = [objc_allocWithZone(UIView) init];
  [v2 setView:v4];

  if (*&v2[OBJC_IVAR___MainHostViewController_contentVC])
  {
    [v2 wrapWithSubViewController:?];
  }

  v5 = *&v2[OBJC_IVAR___MainHostViewController_statusInfoViewCtrl];
  [v2 addChildViewController:v5];
  v6 = [v2 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 view];
    if (v8)
    {
      v9 = v8;
      [v7 addSubviewToBounds:v8 with:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

      [v5 didMoveToParentViewController:v2];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall MainHostViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  sub_100016438(0xD000000000000014, 0x800000010008E8E0, v7, type metadata accessor for MainHostViewController, &qword_1000AE560, &qword_100089D48);
  v8 = OBJC_IVAR___MainHostViewController_contentVC;
  v9 = *&v1[OBJC_IVAR___MainHostViewController_contentVC];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = v9;
  v11 = [v10 view];
  if (v11)
  {
    v12 = v11;
    [v11 removeFromSuperview];

    [v10 removeFromParentViewController];
    v9 = *&v2[v8];
LABEL_4:
    *&v2[v8] = 0;

    v13 = sub_10008742C();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    sub_1000873FC();
    v14 = sub_1000873EC();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = &protocol witness table for MainActor;
    sub_100016C64(0, 0, v6, &unk_100089AD0, v15);

    v16 = type metadata accessor for MainHostViewController();
    v17.receiver = v2;
    v17.super_class = v16;
    objc_msgSendSuper2(&v17, "viewDidDisappear:", a1);
    return;
  }

  __break(1u);
}

uint64_t sub_100019804()
{
  sub_1000873FC();
  v0[2] = sub_1000873EC();
  v2 = sub_1000873DC();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100019898, v2, v1);
}

uint64_t sub_100019898()
{
  if (qword_1000ADBD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1000B3B58;
  *(v0 + 40) = qword_1000B3B58;

  return _swift_task_switch(sub_100019930, v1, 0);
}

uint64_t sub_100019930()
{
  v0[6] = *(v0[5] + 112);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000199D4;

  return sub_100059BC8();
}

uint64_t sub_1000199D4()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100019B00, v1, 0);
}

uint64_t sub_100019B00()
{
  v0[8] = *(v0[5] + 120);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100019BA4;

  return sub_10006C43C();
}

uint64_t sub_100019BA4()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return _swift_task_switch(sub_100019CE8, v3, v2);
}

uint64_t sub_100019CE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100019D48()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100019D80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000324C;

  return sub_100019804();
}

id MainHostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10008714C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MainHostViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR___MainHostViewController_contentVC] = 0;
  *&v3[OBJC_IVAR___MainHostViewController_xpcCnx] = 0;
  memset(&v15[1], 0, 80);
  v16 = 2;
  v7 = objc_allocWithZone(sub_100001EEC(&qword_1000ADC18, &unk_100088750));
  v8 = sub_100086B5C();
  result = [v8 view];
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR___MainHostViewController_statusInfoViewCtrl;
    v12 = [objc_opt_self() clearColor];
    [v10 setBackgroundColor:v12];

    *&v4[v11] = v8;
    if (a2)
    {
      v13 = sub_10008714C();
    }

    else
    {
      v13 = 0;
    }

    v15[0].receiver = v4;
    v15[0].super_class = type metadata accessor for MainHostViewController();
    v14 = [(objc_super *)v15 initWithNibName:v13 bundle:a3];

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MainHostViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id MainHostViewController.init(coder:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___MainHostViewController_contentVC] = 0;
  *&v1[OBJC_IVAR___MainHostViewController_xpcCnx] = 0;
  memset(&v11[1], 0, 80);
  v12 = 2;
  v4 = objc_allocWithZone(sub_100001EEC(&qword_1000ADC18, &unk_100088750));
  v5 = sub_100086B5C();
  result = [v5 view];
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR___MainHostViewController_statusInfoViewCtrl;
    v9 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor:v9];

    *&v2[v8] = v5;
    v11[0].receiver = v2;
    v11[0].super_class = type metadata accessor for MainHostViewController();
    v10 = [(objc_super *)v11 initWithCoder:a1];

    if (v10)
    {
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall MainHostViewController.shouldAccept(_:)(NSXPCConnection a1)
{
  v2 = v1;
  strcpy(v19, "shouldAccept ");
  HIWORD(v19[1]) = -4864;
  v4 = [(objc_class *)a1.super.isa description];
  v5 = sub_10008715C();
  v7 = v6;

  v20._countAndFlagsBits = v5;
  v20._object = v7;
  sub_1000871BC(v20);

  sub_100016438(v19[0], v19[1], v8, type metadata accessor for MainHostViewController, &qword_1000AE560, &qword_100089D48);

  v18 = objc_opt_self();
  v9 = [v18 interfaceWithProtocol:&OBJC_PROTOCOL____TtP16HPSUIViewService22HostXPCServerInterface_];
  [(objc_class *)a1.super.isa setExportedInterface:v9];

  if ([(objc_class *)a1.super.isa exportedInterface]|| [(objc_class *)a1.super.isa exportedInterface])
  {
    sub_10001F93C();
    inited = swift_initStackObject();
    *(inited + 32) = sub_100023B40(0, &qword_1000AE410, NSUUID_ptr);
    *(inited + 40) = sub_100023B40(0, &qword_1000AE418, NSSet_ptr);
    v11 = [objc_allocWithZone(NSMutableSet) init];
    sub_100001EEC(qword_1000AE0C0, &qword_100089AE0);
    [v11 addObject:sub_100087A3C()];
    swift_unknownObjectRelease();
    [v11 addObject:sub_100087A3C()];
    swift_unknownObjectRelease();
    v19[0] = 0;
    v12 = v11;
    sub_1000874AC();

    result = sub_10008792C();
    __break(1u);
  }

  else
  {
    [(objc_class *)a1.super.isa setExportedObject:v2];
    v19[3] = &type metadata for Feature;
    v19[4] = sub_10000DF68();
    v13 = sub_1000860AC();
    sub_100001FF8(v19);
    if (v13)
    {
      v14 = [v18 interfaceWithProtocol:&OBJC_PROTOCOL____TtP16HPSUIViewService32BetaEnrollmentXPCClientInterface_];
      [(objc_class *)a1.super.isa setRemoteObjectInterface:v14];
    }

    v15 = *(v2 + OBJC_IVAR___MainHostViewController_xpcCnx);
    *(v2 + OBJC_IVAR___MainHostViewController_xpcCnx) = a1;
    v16 = a1.super.isa;

    [(objc_class *)v16 resume];
    return 1;
  }

  return result;
}

uint64_t MainHostViewController.receive(betaEnrollmentHomeID:identifiers:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v3[25] = swift_task_alloc();
  v3[26] = sub_1000873FC();
  v3[27] = sub_1000873EC();
  v5 = sub_1000873DC();
  v3[28] = v5;
  v3[29] = v4;

  return _swift_task_switch(sub_10001A968, v5, v4);
}

id sub_10001A968()
{
  if (qword_1000ADB40 != -1)
  {
    swift_once();
  }

  v2 = qword_1000B38F8;
  v1 = unk_1000B3900;
  v3 = byte_1000B3908;
  v4 = qword_1000B3910;
  v5 = *(*(v0 + 192) + OBJC_IVAR___MainHostViewController_statusInfoViewCtrl);

  result = [v5 view];
  if (result)
  {
    v7 = result;
    [result setHidden:0];

    v8 = sub_100086B6C();
    v10 = *(v9 + 16);
    *(v0 + 16) = *v9;
    *(v0 + 32) = v10;
    v11 = *(v9 + 32);
    v12 = *(v9 + 48);
    v13 = *(v9 + 64);
    *(v0 + 96) = *(v9 + 80);
    *(v0 + 64) = v12;
    *(v0 + 80) = v13;
    *(v0 + 48) = v11;
    *v9 = v2;
    *(v9 + 8) = v1;
    *(v9 + 16) = v3;
    *(v9 + 24) = v4;
    *(v9 + 32) = 0;
    v14 = *(v0 + 136);
    v15 = *(v0 + 120);
    *(v9 + 40) = *(v0 + 104);
    *(v9 + 56) = v15;
    *(v9 + 72) = v14;
    *(v9 + 80) = 0;

    sub_10000E018(v0 + 16);
    v8(v0 + 144, 0);

    sub_1000877DC(49);

    sub_10008609C();
    sub_100023834(&qword_1000AE420, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v21);

    v22._countAndFlagsBits = 0x6669746E65646920;
    v22._object = 0xED00002073726569;
    sub_1000871BC(v22);
    sub_100023834(&qword_1000AE428, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23._countAndFlagsBits = sub_1000874CC();
    sub_1000871BC(v23);

    sub_100016438(0xD000000000000020, 0x800000010008E900, v16, type metadata accessor for MainHostViewController, &qword_1000AE560, &qword_100089D48);

    if (qword_1000ADBD8 != -1)
    {
      swift_once();
    }

    v17 = swift_task_alloc();
    *(v0 + 240) = v17;
    *v17 = v0;
    v17[1] = sub_10001ACD0;
    v19 = *(v0 + 176);
    v18 = *(v0 + 184);

    return sub_100041740(v19, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001ACD0()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_10001AF24;
  }

  else
  {
    v5 = sub_10001AE0C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10001AE0C()
{
  v2 = v0[24];
  v1 = v0[25];

  v3 = sub_10008742C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = sub_1000873EC();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;
  sub_100016C64(0, 0, v1, &unk_100089AF8, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10001AF24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 168) = a4;
  sub_1000873FC();
  *(v4 + 176) = sub_1000873EC();
  v6 = sub_1000873DC();

  return _swift_task_switch(sub_10001B02C, v6, v5);
}

uint64_t sub_10001B02C()
{

  objc_allocWithZone(type metadata accessor for MainHostViewController.BetaEnrollmentContentViewController(0));
  if (qword_1000ADBD8 != -1)
  {
    swift_once();
  }

  sub_100001EEC(&qword_1000AE658, &qword_10008A0E8);
  swift_allocObject();

  sub_10002295C(v1);

  *(v0 + 184) = 0;
  sub_100086E7C();
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  sub_100006454(&qword_1000AE660, &qword_1000AE658, &qword_10008A0E8, &unk_10008A244);
  *(v0 + 56) = sub_1000868FC();
  *(v0 + 64) = v4;
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  v5 = sub_100086B5C();
  *(v0 + 40) = &type metadata for Feature;
  *(v0 + 48) = sub_10000DF68();
  v6 = sub_1000860AC();
  sub_100001FF8((v0 + 16));
  v7 = *(v0 + 168);
  if (v6)
  {
    v8 = objc_allocWithZone(UINavigationController);
    v46._object = v5;
    v9 = v5;
    v50 = [v8 initWithRootViewController:v9];
    v10 = objc_opt_self();
    v11 = [v10 mainBundle];
    v46._countAndFlagsBits = 0xE000000000000000;
    v52._object = 0x800000010008ECE0;
    v52._countAndFlagsBits = 0xD000000000000014;
    v55.value._countAndFlagsBits = 0;
    v55.value._object = 0;
    v12.super.isa = v11;
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    sub_100085FFC(v52, v55, v12, v58, 0, v46);

    v13 = sub_10008714C();

    [v9 setTitle:v13];

    v14 = [v9 navigationItem];
    v15 = [v10 mainBundle];
    v47._countAndFlagsBits = 0xE000000000000000;
    v53._countAndFlagsBits = 1162760004;
    v53._object = 0xE400000000000000;
    v56.value._countAndFlagsBits = 0;
    v56.value._object = 0;
    v16.super.isa = v15;
    v59._countAndFlagsBits = 0;
    v59._object = 0xE000000000000000;
    sub_100085FFC(v53, v56, v16, v59, 0, v47);

    *(v0 + 112) = type metadata accessor for MainHostViewController();
    *(v0 + 88) = v7;
    v17 = v7;
    v18 = sub_10008714C();

    v19 = *(v0 + 112);
    if (v19)
    {
      v20 = sub_100001FB4((v0 + 88), *(v0 + 112));
      v21 = *(v19 - 8);
      v22 = swift_task_alloc();
      (*(v21 + 16))(v22, v20, v19);
      v23 = sub_100087A0C();
      (*(v21 + 8))(v22, v19);

      sub_100001FF8((v0 + 88));
    }

    else
    {
      v23 = 0;
    }

    v26 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v18 style:2 target:v23 action:"closeButtonTapped"];
    swift_unknownObjectRelease();

    [v14 setRightBarButtonItem:v26];
    v27 = [v9 navigationItem];

    v28 = [v10 mainBundle];
    v48._countAndFlagsBits = 0xE000000000000000;
    v54._countAndFlagsBits = 1262698818;
    v54._object = 0xE400000000000000;
    v57.value._countAndFlagsBits = 0;
    v57.value._object = 0;
    v29.super.isa = v28;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    sub_100085FFC(v54, v57, v29, v60, 0, v48);

    *(v0 + 136) = 0u;
    *(v0 + 120) = 0u;
    v30 = sub_10008714C();

    v31 = *(v0 + 144);
    v5 = v49;
    if (v31)
    {
      v32 = sub_100001FB4((v0 + 120), *(v0 + 144));
      v33 = *(v31 - 8);
      v34 = swift_task_alloc();
      (*(v33 + 16))(v34, v32, v31);
      v35 = sub_100087A0C();
      (*(v33 + 8))(v34, v31);

      sub_100001FF8((v0 + 120));
    }

    else
    {
      v35 = 0;
    }

    v36 = *(v0 + 168);
    v37 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v30 style:0 target:v35 action:0];
    swift_unknownObjectRelease();

    [v27 setBackBarButtonItem:v37];
    v24 = *(v36 + OBJC_IVAR___MainHostViewController_contentVC);
    *(v36 + OBJC_IVAR___MainHostViewController_contentVC) = v50;
  }

  else
  {
    v24 = *&v7[OBJC_IVAR___MainHostViewController_contentVC];
    *&v7[OBJC_IVAR___MainHostViewController_contentVC] = v5;
    v25 = v5;
  }

  v38 = *(v0 + 168);

  v39 = [*(v38 + OBJC_IVAR___MainHostViewController_statusInfoViewCtrl) view];
  if (v39)
  {
    v40 = v39;
    [v39 setHidden:1];
  }

  v41 = *(v0 + 168);
  v42 = *&v41[OBJC_IVAR___MainHostViewController_contentVC];
  if (v42)
  {
    v43 = v42;
    [v41 wrapWithSubViewController:v43];
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_10001B858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10008609C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1000873FC();
  v4[9] = sub_1000873EC();
  v7 = sub_1000873DC();

  return _swift_task_switch(sub_10001B950, v7, v6);
}

uint64_t sub_10001B950()
{
  v1 = v0[5];
  v2 = v0[4];

  v0[10] = _Block_copy(v2);
  sub_10008607C();
  sub_100023834(&qword_1000AE428, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v3 = sub_1000874BC();
  v0[11] = v3;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_100023CEC;
  v6 = v0[8];

  return MainHostViewController.receive(betaEnrollmentHomeID:identifiers:)(v6, v3);
}

void sub_10001BA7C()
{
  v1 = *(v0 + OBJC_IVAR___MainHostViewController_xpcCnx);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 remoteObjectProxy];
    sub_10008769C();
    swift_unknownObjectRelease();
    sub_100001EEC(&qword_1000AE558, &qword_100089D20);
    if (swift_dynamicCast())
    {
      sub_100016438(0xD00000000000001FLL, 0x800000010008EB80, v4, type metadata accessor for MainHostViewController, &qword_1000AE560, &qword_100089D48);
      [v5 didFinishEnrollment];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t MainHostViewController.receive(betaEnrollmentHomeID:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_1000873FC();
  v2[20] = sub_1000873EC();
  v4 = sub_1000873DC();
  v2[21] = v4;
  v2[22] = v3;

  return _swift_task_switch(sub_10001BC60, v4, v3);
}

uint64_t sub_10001BC60()
{
  v1 = v0[19];
  isa = sub_10008606C().super.isa;
  v0[23] = isa;
  sub_10008609C();
  sub_100023834(&qword_1000AE428, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v3 = sub_10008749C().super.isa;
  v0[24] = v3;
  v0[2] = v0;
  v0[3] = sub_10001BDEC;
  v4 = swift_continuation_init();
  v0[17] = sub_100001EEC(&qword_1000AE430, &qword_100089B08);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001BF1C;
  v0[13] = &unk_1000A76F0;
  v0[14] = v4;
  [v1 receiveWithBetaEnrollmentHomeID:isa identifiers:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001BDEC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_100023CCC;
  }

  else
  {
    v5 = sub_100023C8C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10001BF1C(uint64_t a1, void *a2)
{
  v3 = sub_100001FB4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
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

uint64_t sub_10001C150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_10008609C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1000873FC();
  v3[8] = sub_1000873EC();
  v6 = sub_1000873DC();

  return _swift_task_switch(sub_10001C248, v6, v5);
}

uint64_t sub_10001C248()
{
  v1 = v0[3];
  v2 = v0[4];

  v0[9] = _Block_copy(v1);
  sub_10008607C();
  v3 = v2;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100023C88;
  v5 = v0[7];

  return MainHostViewController.receive(betaEnrollmentHomeID:)(v5);
}

id sub_10001C34C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

Class sub_10001C3E4()
{
  sub_100023B40(0, &qword_1000AE640, NSNumber_ptr);
  result = sub_10008762C(180513).super.super.isa;
  qword_1000AE3F0 = result;
  return result;
}

uint64_t MainHostViewController.receive(carrySettingsHomeID:identifiers:)(uint64_t a1, uint64_t a2)
{
  v3[71] = v2;
  v3[70] = a2;
  v3[69] = a1;
  sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v3[72] = swift_task_alloc();
  v3[73] = sub_1000873FC();
  v3[74] = sub_1000873EC();
  v5 = sub_1000873DC();
  v3[75] = v5;
  v3[76] = v4;

  return _swift_task_switch(sub_10001C510, v5, v4);
}

uint64_t sub_10001C510()
{
  if (qword_1000ADB40 != -1)
  {
    swift_once();
  }

  v2 = qword_1000B38F8;
  v1 = unk_1000B3900;
  v3 = byte_1000B3908;
  v4 = qword_1000B3910;
  v5 = *(*(v0 + 568) + OBJC_IVAR___MainHostViewController_statusInfoViewCtrl);

  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = v6;
  v10 = *(v0 + 568);
  [v6 setHidden:0];

  v11 = sub_100086B6C();
  *(v0 + 104) = v2;
  *(v0 + 112) = v1;
  *(v0 + 120) = v3;
  *(v0 + 128) = v4;
  *(v0 + 136) = 0;
  *(v0 + 184) = 0;
  v13 = *(v12 + 16);
  *(v0 + 16) = *v12;
  *(v0 + 32) = v13;
  v14 = *(v12 + 32);
  v15 = *(v12 + 48);
  v16 = *(v12 + 64);
  *(v0 + 96) = *(v12 + 80);
  *(v0 + 64) = v15;
  *(v0 + 80) = v16;
  *(v0 + 48) = v14;
  v17 = *(v0 + 104);
  *(v12 + 16) = *(v0 + 120);
  v18 = *(v0 + 168);
  v19 = *(v0 + 184);
  v20 = *(v0 + 152);
  *(v12 + 32) = *(v0 + 136);
  *(v12 + 48) = v20;
  *(v12 + 80) = v19;
  *(v12 + 64) = v18;
  *v12 = v17;
  sub_10001FAF0(v0 + 104, v0 + 192);
  sub_10000E018(v0 + 16);
  v11(v0 + 456, 0);

  v21 = *(v10 + OBJC_IVAR___MainHostViewController_xpcCnx);
  *(v0 + 616) = v21;
  if (v21)
  {
    v22 = v21;
    if (sub_100075294())
    {
      sub_1000877DC(48);

      sub_10008609C();
      sub_100023834(&qword_1000AE420, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v61._countAndFlagsBits = sub_1000879CC();
      sub_1000871BC(v61);

      v62._countAndFlagsBits = 0x6669746E65646920;
      v62._object = 0xED00002073726569;
      sub_1000871BC(v62);
      sub_100023834(&qword_1000AE428, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v63._countAndFlagsBits = sub_1000874CC();
      sub_1000871BC(v63);

      sub_100016438(0xD00000000000001FLL, 0x800000010008E950, v23, type metadata accessor for MainHostViewController, &qword_1000AE560, &qword_100089D48);

      if (qword_1000ADBD8 != -1)
      {
        swift_once();
      }

      v7 = qword_1000B3B58;
      *(v0 + 624) = qword_1000B3B58;
      v6 = sub_10001CC74;
      v8 = 0;

      return _swift_task_switch(v6, v7, v8);
    }

    if (qword_1000ADB18 != -1)
    {
      swift_once();
    }

    v38 = unk_1000B3860;
    v57 = qword_1000B3858;
    v59 = byte_1000B3868;
    v39 = qword_1000B3870;
    v40 = qword_1000ADB30;

    if (v40 != -1)
    {
      swift_once();
    }

    v41 = unk_1000B38C0;
    v55 = qword_1000B38B8;
    v42 = byte_1000B38C8;
    v43 = qword_1000B38D0;

    v6 = [v5 view];
    if (v6)
    {
      v44 = v6;
      [v6 setHidden:0];

      v45 = sub_100086B6C();
      v47 = *(v46 + 16);
      *(v0 + 368) = *v46;
      *(v0 + 384) = v47;
      v48 = *(v46 + 32);
      v49 = *(v46 + 48);
      v50 = *(v46 + 64);
      *(v0 + 448) = *(v46 + 80);
      *(v0 + 416) = v49;
      *(v0 + 432) = v50;
      *(v0 + 400) = v48;
      *v46 = v57;
      *(v46 + 8) = v38;
      *(v46 + 16) = v59;
      *(v46 + 24) = v39;
      *(v46 + 32) = 0;
      *(v46 + 40) = v55;
      *(v46 + 48) = v41;
      *(v46 + 56) = v42;
      *(v46 + 64) = v43;
      *(v46 + 72) = 0;
      *(v46 + 80) = 1;
      sub_10000E018(v0 + 368);
      v45(v0 + 520, 0);

      sub_10001FB4C();
      swift_allocError();
      *v51 = 0;
      swift_willThrow();

      goto LABEL_23;
    }

LABEL_28:
    __break(1u);
    return _swift_task_switch(v6, v7, v8);
  }

  if (qword_1000ADB18 != -1)
  {
    swift_once();
  }

  v24 = unk_1000B3860;
  v56 = qword_1000B3858;
  v58 = byte_1000B3868;
  v25 = qword_1000B3870;
  v26 = qword_1000ADB38;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = unk_1000B38E0;
  v54 = qword_1000B38D8;
  v28 = byte_1000B38E8;
  v29 = qword_1000B38F0;

  v6 = [v5 view];
  if (!v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v30 = v6;
  [v6 setHidden:0];

  v31 = sub_100086B6C();
  v33 = *(v32 + 16);
  *(v0 + 280) = *v32;
  *(v0 + 296) = v33;
  v34 = *(v32 + 32);
  v35 = *(v32 + 48);
  v36 = *(v32 + 64);
  *(v0 + 360) = *(v32 + 80);
  *(v0 + 328) = v35;
  *(v0 + 344) = v36;
  *(v0 + 312) = v34;
  *v32 = v56;
  *(v32 + 8) = v24;
  *(v32 + 16) = v58;
  *(v32 + 24) = v25;
  *(v32 + 32) = 0;
  *(v32 + 40) = v54;
  *(v32 + 48) = v27;
  *(v32 + 56) = v28;
  *(v32 + 64) = v29;
  *(v32 + 72) = 0;
  *(v32 + 80) = 1;
  sub_10000E018(v0 + 280);
  v31(v0 + 488, 0);

  sub_10001FB4C();
  swift_allocError();
  *v37 = 1;
  swift_willThrow();
LABEL_23:

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_10001CC74()
{
  v0[79] = *(v0[78] + 120);

  v1 = swift_task_alloc();
  v0[80] = v1;
  *v1 = v0;
  v1[1] = sub_10001CD24;
  v2 = v0[70];
  v3 = v0[69];

  return sub_100069C58(v3, v2);
}

uint64_t sub_10001CD24()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = v2[78];
    v4 = sub_10001CF74;
    v5 = 0;
  }

  else
  {

    v5 = v2[76];
    v3 = v2[75];
    v4 = sub_10001CE4C;
  }

  return _swift_task_switch(v4, v3, v5);
}

uint64_t sub_10001CE4C()
{
  v1 = v0[77];
  v2 = v0[72];
  v3 = v0[71];

  v4 = sub_10008742C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v3;
  v6 = sub_1000873EC();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_100016C64(0, 0, v2, &unk_100089B20, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10001CF74()
{

  v1 = *(v0 + 608);
  v2 = *(v0 + 600);

  return _swift_task_switch(sub_10001CFDC, v2, v1);
}

uint64_t sub_10001CFDC()
{
  v1 = *(v0 + 616);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001D050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[41] = a4;
  sub_1000873FC();
  v4[42] = sub_1000873EC();
  v6 = sub_1000873DC();
  v4[43] = v6;
  v4[44] = v5;

  return _swift_task_switch(sub_10001D0E8, v6, v5);
}

uint64_t sub_10001D0E8()
{
  v48 = v0 + 168;
  v1 = sub_10008714C();
  v2 = NSClassFromString(v1);

  if (v2)
  {
    v3 = [objc_allocWithZone(ACMobileAuthenticationContext) initWithHostViewController:*(v0 + 328)];
    *(v0 + 360) = v3;
    [v3 setEnvironment:0];
    if (qword_1000ADBE8 != -1)
    {
      swift_once();
    }

    v46 = v3;
    [v3 setAppID:qword_1000AE3F0];
    v4 = [objc_allocWithZone(ACAuthenticationRequest) init];
    *(v0 + 368) = v4;
    [v4 setAuthType:3];
    [v4 setOauthGrantType:2];
    v5 = sub_10008714C();
    [v4 setOauthClientID:v5];

    isa = sub_1000872BC().super.isa;
    [v4 setOauthScopes:isa];

    if (qword_1000ADB10 != -1)
    {
      swift_once();
    }

    v7 = qword_1000B3838;
    v8 = unk_1000B3840;
    v9 = byte_1000B3848;
    v10 = qword_1000B3850;
    v11 = *(*(v0 + 328) + OBJC_IVAR___MainHostViewController_statusInfoViewCtrl);
    *(v0 + 376) = v11;

    v12 = [v11 view];
    if (v12)
    {
      v13 = v12;
      [v12 setHidden:0];

      v14 = sub_100086B6C();
      v16 = *(v15 + 16);
      *(v0 + 80) = *v15;
      *(v0 + 96) = v16;
      v17 = *(v15 + 32);
      v18 = *(v15 + 48);
      v19 = *(v15 + 64);
      *(v0 + 160) = *(v15 + 80);
      *(v0 + 128) = v18;
      *(v0 + 144) = v19;
      *(v0 + 112) = v17;
      *v15 = v7;
      *(v15 + 8) = v8;
      *(v15 + 16) = v9;
      *(v15 + 24) = v10;
      *(v15 + 32) = 0;
      v20 = *(v0 + 288);
      v21 = *(v0 + 272);
      *(v15 + 40) = *(v0 + 256);
      *(v15 + 56) = v21;
      *(v15 + 72) = v20;
      *(v15 + 80) = 0;

      sub_10000E018(v0 + 80);
      v14(v48, 0);

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 296;
      *(v0 + 24) = sub_10001D76C;
      v22 = swift_continuation_init();
      *(v0 + 224) = sub_100001EEC(&qword_1000AE568, &qword_100089D50);
      *(v0 + 168) = _NSConcreteStackBlock;
      *(v0 + 176) = 1107296256;
      *(v0 + 184) = sub_10001DD08;
      *(v0 + 192) = &unk_1000A7A38;
      *(v0 + 200) = v22;
      [v46 authenticateWithRequest:v4 completion:v48];
      v12 = (v0 + 16);

      return _swift_continuation_await(v12);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return _swift_continuation_await(v12);
  }

  *(v0 + 80) = type metadata accessor for MainHostViewController();
  sub_100001EEC(&qword_1000AE560, &qword_100089D48);
  sub_10008716C();
  v23 = objc_allocWithZone(CULogHandle);
  v24 = sub_10008714C();
  v25 = sub_10008714C();

  v26 = [v23 initWithSubsystem:v24 category:v25];

  v27 = sub_10008714C();
  [v26 ulog:90 message:v27];

  if (qword_1000ADB18 != -1)
  {
    swift_once();
  }

  v28 = unk_1000B3860;
  v45 = qword_1000B3858;
  v47 = byte_1000B3868;
  v29 = qword_1000B3870;
  v30 = qword_1000ADB20;

  if (v30 != -1)
  {
    swift_once();
  }

  v32 = qword_1000B3878;
  v31 = unk_1000B3880;
  v33 = byte_1000B3888;
  v34 = qword_1000B3890;
  v35 = *(*(v0 + 328) + OBJC_IVAR___MainHostViewController_statusInfoViewCtrl);

  v12 = [v35 view];
  if (!v12)
  {
    goto LABEL_19;
  }

  v36 = v12;
  [v12 setHidden:0];

  v37 = sub_100086B6C();
  v39 = *(v38 + 16);
  *(v0 + 80) = *v38;
  *(v0 + 96) = v39;
  v40 = *(v38 + 32);
  v41 = *(v38 + 48);
  v42 = *(v38 + 64);
  *(v0 + 160) = *(v38 + 80);
  *(v0 + 128) = v41;
  *(v0 + 144) = v42;
  *(v0 + 112) = v40;
  *v38 = v45;
  *(v38 + 8) = v28;
  *(v38 + 16) = v47;
  *(v38 + 24) = v29;
  *(v38 + 32) = 0;
  *(v38 + 40) = v32;
  *(v38 + 48) = v31;
  *(v38 + 56) = v33;
  *(v38 + 64) = v34;
  *(v38 + 72) = 0;
  *(v38 + 80) = 1;
  sub_10000E018(v0 + 80);
  v37(v48, 0);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_10001D76C()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);

  return _swift_task_switch(sub_10001D874, v2, v1);
}

id sub_10001D874()
{

  v1 = *(v0 + 296);
  v2 = [v1 oauthIDToken];
  if (v2)
  {

    v3 = [v1 oauthIDToken];
    if (v3)
    {
      v4 = v3;
      v5 = sub_10008715C();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v28 = [v1 userName];
    if (v28)
    {
      v29 = v28;
      v30 = sub_10008715C();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = *(v0 + 376);
    v34 = *(v0 + 328);
    v35 = objc_allocWithZone(type metadata accessor for MainHostViewController.CarrySettingsContentViewController(0));
    v36 = sub_10001ECB0(v5, v7, v30, v32);
    v37 = OBJC_IVAR___MainHostViewController_contentVC;
    v38 = *(v34 + OBJC_IVAR___MainHostViewController_contentVC);
    *(v34 + OBJC_IVAR___MainHostViewController_contentVC) = v36;
    v39 = v36;

    v40 = [v33 view];
    if (v40)
    {
      v41 = v40;
      [v40 setHidden:1];
    }

    v42 = *(v34 + v37);
    v43 = *(v0 + 360);
    v44 = *(v0 + 368);
    if (v42)
    {
      v45 = *(v0 + 328);
      v46 = v42;
      [v45 wrapWithSubViewController:v46];
    }

    else
    {
    }
  }

  else
  {
    *(v0 + 168) = type metadata accessor for MainHostViewController();
    sub_100001EEC(&qword_1000AE560, &qword_100089D48);
    sub_10008716C();
    v8 = objc_allocWithZone(CULogHandle);
    v9 = sub_10008714C();
    v10 = sub_10008714C();

    v11 = [v8 initWithSubsystem:v9 category:v10];

    v12 = sub_10008714C();
    [v11 ulog:90 message:v12];

    if (qword_1000ADB18 != -1)
    {
      swift_once();
    }

    v13 = unk_1000B3860;
    v51 = qword_1000B3858;
    v52 = byte_1000B3868;
    v14 = qword_1000B3870;
    v15 = qword_1000ADB28;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 376);
    v17 = unk_1000B38A0;
    v49 = qword_1000B3898;
    v50 = byte_1000B38A8;
    v18 = qword_1000B38B0;

    result = [v16 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    v21 = *(v0 + 368);
    v48 = *(v0 + 360);
    [result setHidden:0];

    v22 = sub_100086B6C();
    v24 = *v23;
    *(v0 + 184) = v23[1];
    *(v0 + 168) = v24;
    v25 = v23[2];
    v26 = v23[3];
    v27 = v23[4];
    *(v0 + 248) = *(v23 + 80);
    *(v0 + 232) = v27;
    *(v0 + 216) = v26;
    *(v0 + 200) = v25;
    *v23 = v51;
    *(v23 + 1) = v13;
    *(v23 + 2) = v52;
    *(v23 + 3) = v14;
    *(v23 + 4) = 0;
    *(v23 + 5) = v49;
    *(v23 + 6) = v17;
    *(v23 + 7) = v50;
    *(v23 + 8) = v18;
    *(v23 + 9) = 0;
    *(v23 + 80) = 1;
    sub_10000E018(v0 + 168);
    v22(v0 + 296, 0);
  }

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_10001DD08(uint64_t a1, void *a2)
{
  v3 = sub_100001FB4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10001DEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10008609C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1000873FC();
  v4[9] = sub_1000873EC();
  v7 = sub_1000873DC();

  return _swift_task_switch(sub_10001DFF4, v7, v6);
}

uint64_t sub_10001DFF4()
{
  v1 = v0[5];
  v2 = v0[4];

  v0[10] = _Block_copy(v2);
  sub_10008607C();
  sub_100023834(&qword_1000AE428, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v3 = sub_1000874BC();
  v0[11] = v3;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_10001E120;
  v6 = v0[8];

  return MainHostViewController.receive(carrySettingsHomeID:identifiers:)(v6, v3);
}

uint64_t sub_10001E120()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *v1;

  (*(v6 + 8))(v5, v7);

  v10 = *(v3 + 80);
  if (v2)
  {
    v11 = sub_10008600C();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 80), 0);
  }

  _Block_release(*(v4 + 80));

  v12 = *(v9 + 8);

  return v12();
}

uint64_t MainHostViewController.receive(carrySettingsHomeID:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_1000873FC();
  v2[20] = sub_1000873EC();
  v4 = sub_1000873DC();
  v2[21] = v4;
  v2[22] = v3;

  return _swift_task_switch(sub_10001E3C8, v4, v3);
}

uint64_t sub_10001E3C8()
{
  v1 = v0[19];
  isa = sub_10008606C().super.isa;
  v0[23] = isa;
  sub_10008609C();
  sub_100023834(&qword_1000AE428, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v3 = sub_10008749C().super.isa;
  v0[24] = v3;
  v0[2] = v0;
  v0[3] = sub_10001E554;
  v4 = swift_continuation_init();
  v0[17] = sub_100001EEC(&qword_1000AE430, &qword_100089B08);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001BF1C;
  v0[13] = &unk_1000A7740;
  v0[14] = v4;
  [v1 receiveWithCarrySettingsHomeID:isa identifiers:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001E554()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_10001E6F4;
  }

  else
  {
    v5 = sub_10001E684;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10001E684()
{
  v1 = v0[23];
  v2 = v0[24];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001E6F4()
{
  v1 = v0[24];
  v2 = v0[23];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001E8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_10008609C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1000873FC();
  v3[8] = sub_1000873EC();
  v6 = sub_1000873DC();

  return _swift_task_switch(sub_10001E9F4, v6, v5);
}

uint64_t sub_10001E9F4()
{
  v1 = v0[3];
  v2 = v0[4];

  v0[9] = _Block_copy(v1);
  sub_10008607C();
  v3 = v2;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10001EAC4;
  v5 = v0[7];

  return MainHostViewController.receive(carrySettingsHomeID:)(v5);
}

uint64_t sub_10001EAC4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *v1;

  (*(v6 + 8))(v5, v7);

  v10 = *(v3 + 72);
  if (v2)
  {
    v11 = sub_10008600C();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 72), 0);
  }

  _Block_release(*(v4 + 72));

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_10001ECB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  if (a2)
  {
    v11 = sub_10008742C();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    sub_1000873FC();
    v12 = sub_1000873EC();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = a1;
    v13[5] = a2;
    sub_100016C64(0, 0, v10, &unk_100089D68, v13);
  }

  if (qword_1000ADBD8 != -1)
  {
    swift_once();
  }

  sub_100001EEC(&qword_1000AE570, &qword_100089D58);
  swift_allocObject();

  sub_100021CCC(v14, a3, a4);

  sub_100006454(&qword_1000AE578, &qword_1000AE570, &qword_100089D58, &unk_10008986C);
  v15 = sub_1000868FC();
  v17 = v16;
  v26 = 0;
  sub_100086E7C();
  v18 = v22;
  v19 = v23;
  v22 = v15;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  return sub_100086B5C();
}

uint64_t sub_10001EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1000873FC();
  v5[4] = sub_1000873EC();
  v7 = sub_1000873DC();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10001EF8C, v7, v6);
}

uint64_t sub_10001EF8C()
{
  sub_10005844C(0xD000000000000023, 0x800000010008EC90);
  if (qword_1000ADBD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1000B3B58;
  *(v0 + 56) = qword_1000B3B58;

  return _swift_task_switch(sub_10001F040, v1, 0);
}

uint64_t sub_10001F040()
{
  v0[8] = *(v0[7] + 120);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_10001F0EC;
  v3 = v0[2];
  v2 = v0[3];

  return sub_100068FBC(v3, v2);
}

uint64_t sub_10001F0EC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10001F230, v3, v2);
}

uint64_t sub_10001F230()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_10001F2A8(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = (a4)(0, a2);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_10001F3A4(unint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2 || !isUniquelyReferenced_nonNull_native)
    {
    }

    v34 = result;
    v6 = sub_10007504C(_swiftEmptyArrayStorage);
    v7 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
LABEL_37:
      v8 = sub_10008793C();
      if (v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_7:
        v35 = v7;
        v36 = v8;
        v9 = 0;
        v37 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        do
        {
          if (v37)
          {
            v12 = sub_10008781C();
          }

          else
          {
            if (v9 >= *(v35 + 16))
            {
              goto LABEL_35;
            }

            v12 = *(isUniquelyReferenced_nonNull_native + 8 * v9 + 32);
          }

          v13 = v12;
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v14 = [v12 programID];
          v15 = [v13 title];
          if (!v15)
          {
            v28 = sub_10006E704(v14);
            if (v29)
            {
              v7 = v28;
              if (!swift_isUniquelyReferenced_nonNull_native())
              {
                sub_100073CAC();
              }

              sub_100072570(v7, v6);
            }

            else
            {
            }

            goto LABEL_10;
          }

          v16 = isUniquelyReferenced_nonNull_native;
          v17 = v15;
          v18 = sub_10008715C();
          v20 = v19;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v7 = sub_10006E704(v14);
          v22 = v6[2];
          v23 = (v21 & 1) == 0;
          v24 = v22 + v23;
          if (__OFADD__(v22, v23))
          {
            goto LABEL_34;
          }

          v25 = v21;
          if (v6[3] >= v24)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v21 & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            else
            {
              sub_100073CAC();
              if ((v25 & 1) == 0)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
            sub_1000711D0(v24, isUniquelyReferenced_nonNull_native);
            v26 = sub_10006E704(v14);
            if ((v25 & 1) != (v27 & 1))
            {
              result = sub_100087A5C();
              __break(1u);
              return result;
            }

            v7 = v26;
            if ((v25 & 1) == 0)
            {
LABEL_28:
              v6[(v7 >> 6) + 8] |= 1 << v7;
              *(v6[6] + 8 * v7) = v14;
              v30 = (v6[7] + 16 * v7);
              *v30 = v18;
              v30[1] = v20;

              v31 = v6[2];
              v32 = __OFADD__(v31, 1);
              v33 = v31 + 1;
              if (v32)
              {
                goto LABEL_36;
              }

              v6[2] = v33;
              goto LABEL_9;
            }
          }

          v10 = (v6[7] + 16 * v7);
          v7 = v10[1];
          *v10 = v18;
          v10[1] = v20;

LABEL_9:
          isUniquelyReferenced_nonNull_native = v16;
          v8 = v36;
          v11 = v9 + 1;
LABEL_10:
          ++v9;
        }

        while (v11 != v8);
      }
    }

    *(v34 + *(*v34 + 136)) = v6;
  }

  return result;
}

uint64_t sub_10001F6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100023B40(0, &qword_1000AE688, SDBetaProgram_ptr);
    v4 = sub_1000872CC();
  }

  v5(v4, a3);
}

uint64_t sub_10001F74C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001F844;

  return v6(a1);
}

uint64_t sub_10001F844()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001F93C()
{
  v0 = sub_100001EEC(qword_1000AE0C0, &qword_100089AE0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1000AE690;
    v3 = &unk_10008A110;
  }

  else
  {
    v2 = qword_1000AE698;
    v3 = &qword_10008A118;
  }

  return sub_100001EEC(v2, v3);
}

uint64_t sub_10001F9B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000324C;

  return sub_10001AF94(a1, v4, v5, v6);
}

uint64_t sub_10001FA78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10001FB4C()
{
  result = qword_1000AE438;
  if (!qword_1000AE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE438);
  }

  return result;
}

void *sub_10001FBA0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_10008772C();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_10006F448(v2, 0);

    v1 = sub_100036F60(&v5, v3 + 4, v2, v1);
    sub_100023AA8(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

unint64_t *sub_10001FC50(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100022280(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_10001FCEC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10001FDE0;

  return v5(v2 + 32);
}

uint64_t sub_10001FDE0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t *sub_10001FEF4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_10008772C();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    v36 = _swiftEmptyArrayStorage;
    sub_10006F76C(0, v3 & ~(v3 >> 63), 0);
    v31 = _swiftEmptyArrayStorage;
    if (v30)
    {
      result = sub_1000876DC();
    }

    else
    {
      result = sub_1000876AC();
      v5 = *(v2 + 36);
    }

    v33 = result;
    v34 = v5;
    v35 = v30 != 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v28 = v2 + 56;
      v27 = v2 + 64;
      v29 = v3;
      while (v6 < v3)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v33;
        v10 = v34;
        v11 = v35;
        v12 = v2;
        v32[4] = sub_100082AFC(v33, v34, v35, v2);
        swift_getAtKeyPath();

        v13 = v31;
        v14 = v32[0];
        v36 = v31;
        v16 = v31[2];
        v15 = v31[3];
        if (v16 >= v15 >> 1)
        {
          result = sub_10006F76C((v15 > 1), v16 + 1, 1);
          v13 = v36;
        }

        v13[2] = v16 + 1;
        v13[v16 + 4] = v14;
        v31 = v13;
        if (v30)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v2 = v12;
          if (sub_1000876FC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v3 = v29;
          sub_100001EEC(&qword_1000AE620, &qword_10008A0B8);
          v7 = sub_1000874FC();
          sub_10008776C();
          result = v7(v32, 0);
          if (v6 == v29)
          {
LABEL_32:
            sub_100023A34(v33, v34, v35);
            return v31;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v2 = v12;
          v17 = (1 << *(v12 + 32));
          if (v9 >= v17)
          {
            goto LABEL_36;
          }

          v18 = v9 >> 6;
          v19 = *(v28 + 8 * (v9 >> 6));
          if (((v19 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v10)
          {
            goto LABEL_38;
          }

          v20 = v19 & (-2 << (v9 & 0x3F));
          if (v20)
          {
            v17 = (__clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v21 = v18 << 6;
            v22 = v18 + 1;
            v23 = (v27 + 8 * v18);
            while (v22 < (v17 + 63) >> 6)
            {
              v25 = *v23++;
              v24 = v25;
              v21 += 64;
              ++v22;
              if (v25)
              {
                result = sub_100023A34(v9, v10, 0);
                v17 = (__clz(__rbit64(v24)) + v21);
                goto LABEL_31;
              }
            }

            result = sub_100023A34(v9, v10, 0);
          }

LABEL_31:
          v26 = *(v12 + 36);
          v33 = v17;
          v34 = v26;
          v35 = 0;
          v3 = v29;
          if (v6 == v29)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

uint64_t sub_10002024C(uint64_t a1, char *a2)
{
  v190 = a2;
  v180 = a1;
  v194 = sub_1000861CC();
  v184 = *(v194 - 8);
  __chkstk_darwin(v194);
  v183 = &v154 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for ProfileListViewModel(0);
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v166 = (&v154 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100001EEC(&qword_1000AE5D8, &qword_10008A070);
  v5 = __chkstk_darwin(v4 - 8);
  v192 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v189 = &v154 - v8;
  __chkstk_darwin(v7);
  v156 = &v154 - v9;
  v177 = sub_10008614C();
  v187 = *(v177 - 8);
  v10 = __chkstk_darwin(v177);
  v171 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v185 = &v154 - v13;
  __chkstk_darwin(v12);
  v188 = &v154 - v14;
  v175 = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  v179 = *(v175 - 8);
  v15 = __chkstk_darwin(v175);
  v174 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v155 = &v154 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v154 - v20;
  __chkstk_darwin(v19);
  v186 = &v154 - v22;
  v182 = sub_100001EEC(&qword_1000AE5E0, &qword_10008A078);
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v178 = &v154 - v23;
  v176 = sub_100001EEC(&qword_1000AE5E8, &qword_10008A080);
  v24 = __chkstk_darwin(v176);
  v173 = (&v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v172 = &v154 - v26;
  v168 = sub_100001EEC(&qword_1000AE3E8, &qword_100089D70);
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v164 = &v154 - v27;
  v163 = sub_100001EEC(&qword_1000AE5F0, &qword_10008A088);
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v161 = &v154 - v28;
  v193 = sub_100001EEC(&qword_1000AE5F8, &unk_10008A090);
  v29 = __chkstk_darwin(v193);
  v191 = (&v154 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v158 = &v154 - v31;
  v160 = sub_100001EEC(&qword_1000AE600, &unk_10008D650);
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v33 = &v154 - v32;
  v157 = sub_100001EEC(&qword_1000AE608, &unk_10008A0A0);
  v34 = *(v157 - 8);
  __chkstk_darwin(v157);
  v36 = &v154 - v35;
  v37 = sub_100001EEC(&qword_1000AE3E0, &unk_100089E60);
  v38 = __chkstk_darwin(v37);
  v40 = &v154 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v154 - v41;
  v43 = qword_1000B03C0;
  v44 = sub_10008642C();
  (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
  sub_10000E4A4(v42, v40, &qword_1000AE3E0, &unk_100089E60);
  sub_1000867AC();
  sub_10000649C(v42, &qword_1000AE3E0, &unk_100089E60);
  v45 = v165;
  (*(v34 + 32))(v165 + v43, v36, v157);
  v46 = qword_1000B03D8;
  v200 = 0;
  v201 = 0;
  sub_100001EEC(&qword_1000AE610, &unk_10008C960);
  sub_1000867AC();
  (*(v159 + 32))(v45 + v46, v33, v160);
  v47 = qword_1000B03E0;
  v48 = sub_10008632C();
  v49 = *(v48 - 8);
  v159 = *(v49 + 56);
  v160 = v49 + 56;
  v50 = v158;
  (v159)(v158, 1, 1, v48);
  sub_10000E4A4(v50, v191, &qword_1000AE5F8, &unk_10008A090);
  v51 = v161;
  sub_1000867AC();
  sub_10000649C(v50, &qword_1000AE5F8, &unk_10008A090);
  v162 = *(v162 + 32);
  v52 = v45;
  v53 = v163;
  (v162)(v45 + v47, v51, v163);
  v54 = qword_1000B03E8;
  LOBYTE(v200) = 1;
  v55 = v164;
  sub_1000867AC();
  (*(v167 + 32))(v52 + v54, v55, v168);
  v56 = (v52 + qword_1000B3C30);
  *v56 = 0;
  v56[1] = 0;
  v57 = qword_1000B03F0;
  (v159)(v50, 1, 1, v48);
  sub_10000E4A4(v50, v191, &qword_1000AE5F8, &unk_10008A090);
  sub_1000867AC();
  v58 = v180;
  sub_10000649C(v50, &qword_1000AE5F8, &unk_10008A090);
  (v162)(v52 + v57, v51, v53);
  v59 = (v52 + qword_1000B3C38);
  *v59 = 0;
  v59[1] = 0;
  v60 = qword_1000B0400;
  v61 = sub_1000863FC();
  v62 = v172;
  (*(*(v61 - 8) + 56))(v172, 1, 1, v61);
  sub_10000E4A4(v62, v173, &qword_1000AE5E8, &qword_10008A080);
  v63 = v178;
  sub_1000867AC();
  sub_10000649C(v62, &qword_1000AE5E8, &qword_10008A080);
  (*(v181 + 32))(v52 + v60, v63, v182);
  *(v52 + qword_1000B3C40) = v58;
  *(v52 + qword_1000B3C48) = v190;
  v176 = *(v58 + 16);
  if (v176)
  {
    v200 = _swiftEmptyArrayStorage;

    result = sub_10008787C();
    v58 = v180;
    v65 = 0;
    v66 = v180 + ((*(v179 + 80) + 32) & ~*(v179 + 80));
    while (v65 < *(v58 + 16))
    {
      v67 = (v65 + 1);
      sub_10000E4A4(v66 + *(v179 + 72) * v65, v21, &qword_1000AE5D0, &qword_100089EB0);
      v68 = *&v21[*(v175 + 36)];
      sub_10000649C(v21, &qword_1000AE5D0, &qword_100089EB0);
      sub_10008784C();
      sub_10008788C();
      sub_10008789C();
      result = sub_10008785C();
      v58 = v180;
      v65 = v67;
      if (v176 == v67)
      {
        v69 = v200;
        goto LABEL_7;
      }
    }

LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v69 = _swiftEmptyArrayStorage;
LABEL_7:
  *(v165 + qword_1000B3C50) = v69;
  v70 = *(v58 + 16);
  v71 = v156;
  v72 = v188;
  v73 = v186;
  v193 = v70;
  if (v70)
  {
    v74 = 0;
    v191 = (v187 + 8);
    v182 = v70 - 1;
    v190 = _swiftEmptyArrayStorage;
LABEL_9:
    v75 = v74;
    while (v75 < *(v58 + 16))
    {
      sub_10000E4A4(v58 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v75, v73, &qword_1000AE5D0, &qword_100089EB0);
      v74 = v75 + 1;
      sub_10008645C();
      sub_1000860FC();
      v76 = sub_1000860EC();
      v77 = *(v76 - 8);
      if ((*(v77 + 48))(v71, 1, v76) != 1)
      {
        v78 = v189;
        sub_10000E4A4(v71, v189, &qword_1000AE5D8, &qword_10008A070);
        v181 = sub_1000860DC();
        v178 = v79;
        (*(v77 + 8))(v78, v76);
        sub_10000649C(v71, &qword_1000AE5D8, &qword_10008A070);
        (*v191)(v72, v177);
        sub_10000649C(v73, &qword_1000AE5D0, &qword_100089EB0);
        v80 = v190;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_10006EC0C(0, *(v80 + 2) + 1, 1, v80);
          v80 = result;
        }

        v82 = *(v80 + 2);
        v81 = *(v80 + 3);
        if (v82 >= v81 >> 1)
        {
          result = sub_10006EC0C((v81 > 1), v82 + 1, 1, v80);
          v80 = result;
        }

        *(v80 + 2) = v82 + 1;
        v190 = v80;
        v83 = &v80[16 * v82];
        v84 = v178;
        *(v83 + 4) = v181;
        *(v83 + 5) = v84;
        v58 = v180;
        v72 = v188;
        v73 = v186;
        v70 = v193;
        if (v182 != v75)
        {
          goto LABEL_9;
        }

        goto LABEL_21;
      }

      sub_10000649C(v71, &qword_1000AE5D8, &qword_10008A070);
      (*v191)(v72, v177);
      result = sub_10000649C(v73, &qword_1000AE5D0, &qword_100089EB0);
      ++v75;
      v70 = v193;
      v58 = v180;
      if (v193 == v74)
      {
        goto LABEL_21;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    return result;
  }

  v190 = _swiftEmptyArrayStorage;
LABEL_21:
  v85 = sub_100082D20(v190);

  if (*(v85 + 16) == 1)
  {
    v86 = sub_1000779F4(v85);
    v88 = v87;

    v89 = v185;
    if (v88)
    {
      goto LABEL_26;
    }
  }

  else
  {

    v89 = v185;
  }

  v86 = 0;
  v88 = 0xE000000000000000;
LABEL_26:
  swift_beginAccess();
  v195 = v86;
  v196 = v88;
  sub_1000867AC();
  result = swift_endAccess();
  if (v70)
  {
    v90 = 0;
    v191 = (v187 + 8);
    v186 = (v70 - 1);
    v188 = _swiftEmptyArrayStorage;
    v91 = &qword_100089EB0;
    v92 = v180;
    v93 = v155;
LABEL_28:
    v94 = v90;
    while (v94 < *(v92 + 16))
    {
      sub_10000E4A4(v92 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v94, v93, &qword_1000AE5D0, v91);
      v95 = v93;
      sub_10008645C();
      v96 = v91;
      v97 = v192;
      sub_1000860FC();
      v98 = sub_1000860EC();
      v99 = v89;
      v100 = *(v98 - 8);
      if ((*(v100 + 48))(v97, 1, v98) == 1)
      {
        sub_10000649C(v97, &qword_1000AE5D8, &qword_10008A070);
        (*v191)(v99, v177);
        result = sub_10000649C(v93, &qword_1000AE5D0, v96);
        v89 = v99;
        v91 = v96;
      }

      else
      {
        v101 = v189;
        sub_10000E4A4(v97, v189, &qword_1000AE5D8, &qword_10008A070);
        v102 = sub_1000860BC();
        v190 = v103;
        (*(v100 + 8))(v101, v98);
        sub_10000649C(v97, &qword_1000AE5D8, &qword_10008A070);
        (*v191)(v99, v177);
        result = sub_10000649C(v95, &qword_1000AE5D0, v96);
        v89 = v99;
        v93 = v95;
        v104 = v190;
        v91 = v96;
        if (v190)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_10006EC0C(0, *(v188 + 2) + 1, 1, v188);
            v188 = result;
          }

          v106 = *(v188 + 2);
          v105 = *(v188 + 3);
          if (v106 >= v105 >> 1)
          {
            result = sub_10006EC0C((v105 > 1), v106 + 1, 1, v188);
            v188 = result;
          }

          v90 = v94 + 1;
          v107 = v188;
          *(v188 + 2) = v106 + 1;
          v108 = &v107[16 * v106];
          *(v108 + 4) = v102;
          *(v108 + 5) = v104;
          v89 = v185;
          v92 = v180;
          if (v186 != v94)
          {
            goto LABEL_28;
          }

          goto LABEL_41;
        }
      }

      ++v94;
      v92 = v180;
      if (v193 == v94)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_80;
  }

  v188 = _swiftEmptyArrayStorage;
LABEL_41:
  v109 = sub_100082D20(v188);

  if (*(v109 + 16) == 1)
  {
    v110 = sub_1000779F4(v109);
    v112 = v111;

    if (v112)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v110 = 0;
  v112 = 0xE000000000000000;
LABEL_46:
  swift_beginAccess();
  v195 = v110;
  v196 = v112;
  sub_1000867AC();
  swift_endAccess();
  if (v176)
  {
    v199 = _swiftEmptyArrayStorage;
    result = sub_10006F728(0, v176, 0);
    v113 = 0;
    v114 = v179;
    v115 = v180;
    v168 = v180 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v173 = v199;
    v167 = v187 + 8;
    v182 = v184 + 16;
    v181 = v184 + 8;
    v116 = v166;
    v117 = v184;
    while (v113 < *(v115 + 16))
    {
      v118 = *(v114 + 72);
      v172 = v113;
      sub_10000E4A4(v168 + v118 * v113, v174, &qword_1000AE5D0, &qword_100089EB0);
      v119 = v171;
      sub_10008645C();
      v120 = sub_10008613C();
      (*v167)(v119, v177);
      v121 = *(v120 + 16);
      if (v121)
      {
        v198 = _swiftEmptyArrayStorage;
        sub_10008787C();
        v122 = (v120 + 64);
        result = sub_1000876AC();
        v123 = result;
        v124 = 0;
        v178 = (v120 + 72);
        v185 = v121;
        v186 = (v120 + 64);
        while ((v123 & 0x8000000000000000) == 0 && v123 < 1 << *(v120 + 32))
        {
          v126 = v123 >> 6;
          if ((*&v122[8 * (v123 >> 6)] & (1 << v123)) == 0)
          {
            goto LABEL_74;
          }

          v127 = *(v120 + 36);
          v187 = v124;
          v188 = v127;
          v128 = v183;
          (*(v117 + 16))(v183, *(v120 + 56) + *(v117 + 72) * v123, v194);
          v129 = sub_10008619C();
          v191 = v130;
          v192 = v129;
          v131 = sub_10008618C();
          v189 = v132;
          v190 = v131;
          LODWORD(v193) = sub_1000861BC();
          type metadata accessor for ProfileViewModel(0);
          v133 = swift_allocObject();
          *(v133 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_delegate + 8) = 0;
          swift_unknownObjectWeakInit();
          swift_beginAccess();
          v195 = 0;
          v196 = 0xE000000000000000;
          sub_1000867AC();
          swift_endAccess();
          swift_beginAccess();
          v195 = 0;
          v196 = 0xE000000000000000;
          sub_1000867AC();
          swift_endAccess();
          swift_beginAccess();
          v195 = 0;
          v196 = 0xE000000000000000;
          sub_1000867AC();
          swift_endAccess();
          v134 = (v133 + OBJC_IVAR____TtC16HPSUIViewService16ProfileViewModel_profileID);
          v135 = v189;
          *v134 = v190;
          v134[1] = v135;
          swift_beginAccess();
          v195 = v192;
          v196 = v191;
          sub_1000867AC();
          swift_endAccess();
          swift_beginAccess();
          v195 = 0;
          v196 = 0xE000000000000000;
          v197 = v193 & 1;
          sub_1000867AC();
          swift_endAccess();
          (*(v117 + 8))(v128, v194);
          sub_10008784C();
          sub_10008788C();
          sub_10008789C();
          result = sub_10008785C();
          v125 = 1 << *(v120 + 32);
          if (v123 >= v125)
          {
            goto LABEL_75;
          }

          v122 = v186;
          v136 = *&v186[8 * v126];
          if ((v136 & (1 << v123)) == 0)
          {
            goto LABEL_76;
          }

          if (v188 != *(v120 + 36))
          {
            goto LABEL_77;
          }

          v137 = v136 & (-2 << (v123 & 0x3F));
          if (v137)
          {
            v125 = __clz(__rbit64(v137)) | v123 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v138 = v126 << 6;
            v139 = v126 + 1;
            v140 = &v178[8 * v126];
            while (v139 < (v125 + 63) >> 6)
            {
              v142 = *v140++;
              v141 = v142;
              v138 += 64;
              ++v139;
              if (v142)
              {
                result = sub_100023A34(v123, v188, 0);
                v125 = __clz(__rbit64(v141)) + v138;
                goto LABEL_52;
              }
            }

            result = sub_100023A34(v123, v188, 0);
          }

LABEL_52:
          v124 = v187 + 1;
          v123 = v125;
          if ((v187 + 1) == v185)
          {

            v143 = v198;
            v115 = v180;
            v116 = v166;
            goto LABEL_67;
          }
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v143 = _swiftEmptyArrayStorage;
      v115 = v180;
LABEL_67:
      v116[3] = v175;
      v116[4] = &off_1000A8868;
      v144 = sub_10002396C(v116);
      v145 = v174;
      sub_10000E4A4(v174, v144, &qword_1000AE5D0, &qword_100089EB0);
      v116[5] = v143;
      sub_10008608C();
      sub_10000649C(v145, &qword_1000AE5D0, &qword_100089EB0);
      v146 = v173;
      v199 = v173;
      v147 = v116;
      v149 = v173[2];
      v148 = v173[3];
      if (v149 >= v148 >> 1)
      {
        sub_10006F728((v148 > 1), v149 + 1, 1);
        v115 = v180;
        v146 = v199;
      }

      v150 = v172 + 1;
      *(v146 + 16) = v149 + 1;
      v151 = (*(v169 + 80) + 32) & ~*(v169 + 80);
      v173 = v146;
      result = sub_1000239D0(v147, v146 + v151 + *(v169 + 72) * v149);
      v113 = v150;
      v116 = v147;
      v114 = v179;
      if (v150 == v176)
      {

        v152 = v173;
        goto LABEL_72;
      }
    }

    goto LABEL_81;
  }

  v152 = _swiftEmptyArrayStorage;
LABEL_72:
  v153 = v165;
  swift_beginAccess();
  v195 = v152;
  sub_100001EEC(&qword_1000AE618, &qword_10008A0B0);
  sub_1000867AC();
  swift_endAccess();
  return v153;
}

char *sub_100021CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a2;
  v44 = a3;
  v46 = *v3;
  v5 = v46;
  v47 = a1;
  v6 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v6 - 8);
  v45 = &v39 - v7;
  v42 = sub_100001EEC(&qword_1000AE3E8, &qword_100089D70);
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v10 = &v39 - v9;
  v11 = sub_100001EEC(&qword_1000AE580, &qword_100089D78);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - v13;
  v15 = sub_100001EEC(&qword_1000AE588, &qword_100089D80);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  v19 = *(v5 + 96);
  v48 = &_swiftEmptySetSingleton;
  v41 = sub_100001EEC(&qword_1000AE590, &qword_100089D88);
  sub_1000867AC();
  v40 = *(v16 + 32);
  v40(&v4[v19], v18, v15);
  v20 = *(*v4 + 104);
  v48 = 0;
  sub_100001EEC(&qword_1000AE598, &qword_100089D90);
  sub_1000867AC();
  (*(v12 + 32))(&v4[v20], v14, v11);
  v21 = *(*v4 + 112);
  LOBYTE(v48) = 1;
  sub_1000867AC();
  (*(v8 + 32))(&v4[v21], v10, v42);
  v22 = *(*v4 + 120);
  if (qword_1000ADB88 != -1)
  {
    swift_once();
  }

  v23 = &v4[v22];
  v24 = unk_1000B3A20;
  v25 = byte_1000B3A28;
  v26 = qword_1000B3A30;
  *v23 = qword_1000B3A18;
  *(v23 + 1) = v24;
  v23[16] = v25;
  *(v23 + 3) = v26;
  v27 = *(*v4 + 128);
  v48 = &_swiftEmptySetSingleton;

  sub_1000867AC();
  v40(&v4[v27], v18, v15);
  v28 = *(*v4 + 136);
  v29 = sub_10008642C();
  (*(*(v29 - 8) + 56))(&v4[v28], 1, 1, v29);
  *&v4[*(*v4 + 152)] = 0;
  v30 = v47;
  *&v4[*(*v4 + 160)] = v47;
  v31 = &v4[*(*v4 + 144)];
  v32 = v44;
  *v31 = v43;
  v31[1] = v32;
  v33 = sub_10008742C();
  v34 = v45;
  (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
  v35 = swift_allocObject();
  swift_weakInit();
  sub_1000873FC();
  swift_retain_n();

  v36 = sub_1000873EC();
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = &protocol witness table for MainActor;
  v37[4] = v35;
  v37[5] = v30;
  v37[6] = v46;

  sub_10005A070(0, 0, v34, &unk_100089DA0, v37);

  return v4;
}

unint64_t *sub_100022280(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v20 = 0;
  v21 = a4;
  v18 = a2;
  v19 = result;
  v4 = 0;
  v22 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v23 = *(*(v22 + 48) + 8 * v13);
    __chkstk_darwin(result);
    v17[2] = &v23;

    v14 = sub_10006E474(sub_100023CF0, v17, v21);

    if (v14)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        v16 = v22;

        return sub_100030C38(v19, v18, v20, v16);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002242C(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v29 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = &v24;
    v25 = v5;
    __chkstk_darwin(v7);
    v26 = &v24 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v6);
    v27 = 0;
    v28 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v30 = *(*(v28 + 48) + 8 * v17);
      __chkstk_darwin(v8);
      *(&v24 - 2) = &v30;

      v18 = sub_10006E474(sub_100023CF0, (&v24 - 4), v29);

      if (v18)
      {
        *&v26[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_100030C38(v26, v25, v27, v28);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v29;

  v20 = sub_10001FC50(v22, v5, v2, v23);

LABEL_17:

  return v20;
}

Swift::Int sub_1000226F0(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_10002242C(a1, a2);
  }

  v3 = &_swiftEmptySetSingleton;
  v22 = &_swiftEmptySetSingleton;

  sub_1000876EC();
  for (i = sub_10008775C(); i; i = sub_10008775C())
  {
    v20 = i;
    sub_100001EEC(&qword_1000AE5B8, &unk_10008DD20);
    v5 = swift_dynamicCast();
    v20 = v21;
    __chkstk_darwin(v5);
    v19[2] = &v20;
    v6 = sub_10006E474(sub_100023A40, v19, a2);
    v7 = v21;
    if (v6)
    {
      v8 = v3[2];
      if (v3[3] <= v8)
      {
        sub_1000806DC(v8 + 1);
        v3 = v22;
      }

      sub_100087ADC();
      sub_100087AEC(v7);
      result = sub_100087AFC();
      v10 = (v3 + 7);
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~v3[(v12 >> 6) + 7]) != 0)
      {
        v14 = __clz(__rbit64((-1 << v12) & ~v3[(v12 >> 6) + 7])) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = 0;
        v16 = (63 - v11) >> 6;
        do
        {
          if (++v13 == v16 && (v15 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v17 = v13 == v16;
          if (v13 == v16)
          {
            v13 = 0;
          }

          v15 |= v17;
          v18 = *&v10[8 * v13];
        }

        while (v18 == -1);
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
      }

      *&v10[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
      *(v3[6] + 8 * v14) = v7;
      ++v3[2];
    }

    else
    {
    }
  }

  return v3;
}

id sub_10002295C(uint64_t a1)
{
  v3 = sub_100001EEC(&qword_1000AE668, &qword_10008A0F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - v5;
  v7 = sub_100001EEC(&qword_1000AE670, &qword_10008A0F8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  v11 = *(*v1 + 96);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100001EEC(&qword_1000AE678, &qword_10008A100);
  sub_1000867AC();
  (*(v8 + 32))(v1 + v11, v10, v7);
  v12 = *(*v1 + 104);
  aBlock[0] = 0;
  sub_100001EEC(&qword_1000AE680, &qword_10008A108);
  sub_1000867AC();
  (*(v4 + 32))(v1 + v12, v6, v3);
  *(v1 + *(*v1 + 112)) = 0;
  *(v1 + *(*v1 + 120)) = 0;
  v13 = *(*v1 + 136);
  *(v1 + v13) = sub_10007504C(_swiftEmptyArrayStorage);
  *(v1 + *(*v1 + 128)) = a1;
  v14 = objc_opt_self();

  result = [v14 sharedManager];
  if (result)
  {
    v16 = result;
    v17 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100023B20;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001F6BC;
    aBlock[3] = &unk_1000A7B28;
    v18 = _Block_copy(aBlock);

    [v16 queryProgramsForSystemAccountsWithPlatforms:16 disableBuildPrefixMatching:1 completion:v18];
    _Block_release(v18);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100022CC0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100022D00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000324C;

  return sub_10001D050(a1, v4, v5, v6);
}

uint64_t sub_100022E08(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MainHostViewController.HostError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MainHostViewController.HostError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100022FE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000324C;

  return sub_10001FCEC(a1, v4);
}

uint64_t sub_10002309C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000324C;

  return sub_10001E8FC(v2, v3, v4);
}

uint64_t sub_100023168()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000324C;

  return sub_100040810(v2, v3, v4);
}

uint64_t sub_100023228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000324C;

  return sub_1000408FC(a1, v4, v5, v6);
}

uint64_t sub_1000232F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000324C;

  return sub_10001DEFC(v2, v3, v5, v4);
}

uint64_t sub_1000233B8()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_100023400()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000324C;

  return sub_10001C150(v2, v3, v4);
}

uint64_t sub_1000234B4()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_100023504()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000324C;

  return sub_10001B858(v2, v3, v5, v4);
}

uint64_t sub_1000235DC(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t sub_10002362C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002740;

  return sub_10001EEF4(a1, v4, v5, v7, v6);
}

uint64_t sub_1000236EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100023724()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002376C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002740;

  return sub_1000179E0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100023834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002387C()
{

  return swift_deallocObject();
}

__n128 sub_1000238D4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t *sub_10002396C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000239D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileListViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023A34(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100023AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE5D0, &qword_100089EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023B28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100023B40(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100023B88()
{

  return swift_deallocObject();
}

uint64_t sub_100023BC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000324C;

  return sub_10001F74C(a1, v4);
}

uint64_t sub_100023D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BetaSettingsRowViewModel(255, *(a1 + 80), *(a1 + 88), a4);
  sub_10008739C();
  result = sub_1000867FC();
  if (v5 <= 0x3F)
  {
    sub_10008767C();
    result = sub_1000867FC();
    if (v6 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_100023E30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100023E98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t sub_100023F4C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_100024004()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t sub_1000240B8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_100024170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  type metadata accessor for BetaSettingsRowViewModel(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_10008739C();
  v6 = sub_1000867FC();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = *(*v4 + 104);
  sub_10008767C();
  v8 = sub_1000867FC();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_1000242DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100024170(a1, a2, a3, a4);
  v5 = *(*v4 + 48);
  v6 = *(*v4 + 52);

  return _swift_deallocClassInstance(v4, v5, v6);
}

uint64_t sub_10002434C()
{
  v1[3] = v0;
  v1[4] = *v0;
  v1[5] = *v0;
  sub_1000873FC();
  v1[6] = sub_1000873EC();
  v3 = sub_1000873DC();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_100024434, v3, v2);
}

uint64_t sub_100024434()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_100059B74(0x68736572666552, 0xE700000000000000, v0[4], &off_1000A7C58);
  v0[9] = *(v2 + *(*v2 + 128));
  v3 = *(v1 + 88);
  v0[10] = v3;
  v4 = *(v3 + 48);
  v5 = *(v1 + 80);
  v0[11] = v5;
  v8 = (v4 + *v4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_100024598;

  return v8(v5, v3);
}

uint64_t sub_100024598()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100026A08;
  }

  else
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1000246BC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000246BC()
{
  if (sub_100024004())
  {

    v1 = sub_100024004();
    if (!v1)
    {
      type metadata accessor for BetaSettingsRowViewModel(0, v0[11], v0[10], v2);
      v1 = sub_10008732C();
    }

    sub_100023F4C(v1);
    v3 = v0[1];

    return v3();
  }

  else
  {
    v8 = (*(v0[10] + 40) + **(v0[10] + 40));
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_100024850;
    v6 = v0[10];
    v7 = v0[11];

    return v8(v7, v6);
  }
}

uint64_t sub_100024850(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_100024B38;
  }

  else
  {
    v4[15] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_100024978;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100024978()
{
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[3];
  v6 = v0[4];

  type metadata accessor for BetaSettingsRowViewModel(0, v2, v3, v7);
  v8 = *(v5 + *(*v5 + 136));

  v9 = sub_1000279A8(v1, v4, v8);

  v0[2] = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  sub_10008739C();
  swift_getWitnessTable();
  sub_1000879FC();

  sub_100059B74(0, 0xE000000000000000, v6, &off_1000A7C58);

  sub_100023F4C(v9);
  v13 = v0[1];

  return v13();
}

uint64_t sub_100024B38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100024BEC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_100059B74(a1, 0xEA00000000006C6CLL, *v2, &off_1000A7C58);
  sub_100023E98();
  type metadata accessor for BetaSettingsRowViewModel(255, *(v3 + 80), *(v3 + 88), v4);
  sub_10008739C();
  swift_getWitnessTable();
  sub_10008725C();
}

uint64_t sub_100024CF0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 112) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 32) = *v1;
  sub_1000873FC();
  *(v2 + 40) = sub_1000873EC();
  v4 = sub_1000873DC();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return _swift_task_switch(sub_100024DDC, v4, v3);
}

uint64_t sub_100024DDC()
{
  v18 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 112);
  strcpy(v17, "Set isActive=");
  HIWORD(v17[1]) = -4864;
  if (v4)
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_1000871BC(v5);

  sub_100059B74(v17[0], v17[1], v1, &off_1000A7C58);

  *(v3 + *(*v3 + 120)) = v4;
  *(v0 + 64) = *(v3 + *(*v3 + 128));
  v7 = *(v2 + 88);
  *(v0 + 72) = v7;
  v8 = *(v2 + 80);
  *(v0 + 80) = v8;
  if (v4 == 1)
  {
    v15 = (*(v7 + 48) + **(v7 + 48));
    v9 = swift_task_alloc();
    *(v0 + 88) = v9;
    *v9 = v0;
    v9[1] = sub_1000250F0;

    return v15(v8, v7);
  }

  else
  {
    v11 = *(v0 + 24);
    v16 = (*(v7 + 56) + **(v7 + 56));
    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    WitnessTable = swift_getWitnessTable();
    *v12 = v0;
    v12[1] = sub_100025400;
    v14 = *(v0 + 16);

    return v16(v14, v11, WitnessTable, v8, v7);
  }
}

uint64_t sub_1000250F0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v4 = v2[3];
  v11 = (*(v2[9] + 32) + **(v2[9] + 32));
  v5 = swift_task_alloc();
  v2[12] = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v3;
  v5[1] = sub_1000252E0;
  v8 = v2[9];
  v7 = v2[10];
  v9 = v2[2];

  return v11(v9, v4, WitnessTable, v7, v8);
}

uint64_t sub_1000252E0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10000B0A0, v3, v2);
}

uint64_t sub_100025400()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10000EAF0, v3, v2);
}

uint64_t sub_100025524()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002740;

  return sub_10002434C();
}

uint64_t sub_100025628(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000324C;

  return sub_100024CF0(a1);
}

uint64_t sub_1000256BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_100025784, 0, 0);
}

uint64_t sub_100025784()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = sub_10008742C();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_1000873FC();

  v7 = sub_1000873EC();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = *(v2 + 80);
  v8[5] = v3;
  v8[6] = *(v2 + 88);
  v8[7] = v6;
  v8[8] = v4;

  sub_100016950(0, 0, v1, &unk_10008A398, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000258FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a5;
  v7[8] = a7;
  v7[5] = a1;
  v7[6] = a4;
  sub_1000873FC();
  v7[9] = sub_1000873EC();
  v9 = sub_1000873DC();
  v7[10] = v9;
  v7[11] = v8;

  return _swift_task_switch(sub_100025998, v9, v8);
}

uint64_t sub_100025998()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_100025AA4;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);

    return sub_100025C5C(v4, v3);
  }

  else
  {

    **(v0 + 40) = *(v0 + 96) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100025AA4()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_100025BE8, v3, v2);
}

uint64_t sub_100025BE8()
{

  **(v0 + 40) = *(v0 + 96) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100025C5C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v3[7] = *v2;
  sub_1000873FC();
  v3[8] = sub_1000873EC();
  v5 = sub_1000873DC();

  return _swift_task_switch(sub_100025D48, v5, v4);
}

uint64_t sub_100025D48()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];

  sub_1000877DC(40);
  v18._object = 0x800000010008EE00;
  v18._countAndFlagsBits = 0xD000000000000026;
  sub_1000871BC(v18);
  v0[2] = v4;
  v8 = v1 + 80;
  v7 = *(v1 + 80);
  v6 = *(v8 + 8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa(255, v5, AssociatedConformanceWitness, v10);
  sub_10008739C();
  swift_getWitnessTable();
  sub_1000879FC();
  sub_100059B74(0, 0xE000000000000000, v3, &off_1000A7C58);

  type metadata accessor for BetaSettingsRowViewModel(0, v7, v6, v11);
  v12 = *(v2 + *(*v2 + 128));
  v13 = *(v2 + *(*v2 + 136));

  v14 = sub_1000279A8(v4, v12, v13);

  sub_100023F4C(v14);
  sub_100025F28(2.5);
  v15 = v0[1];

  return v15();
}

void sub_100025F28(double a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *(v1 + v4);
  if (v5)
  {
    [v5 invalidate];
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = *(v3 + 80);
  v8[3] = *(v3 + 88);
  v8[4] = v7;
  v12[4] = sub_10002699C;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100023E30;
  v12[3] = &unk_1000A7D08;
  v9 = _Block_copy(v12);

  v10 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:a1];
  _Block_release(v9);
  v11 = *(v1 + v4);
  *(v1 + v4) = v10;
}

uint64_t sub_1000260BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v22[0] = sub_100023E98();
  __chkstk_darwin(v22[0]);
  type metadata accessor for BetaSettingsRowViewModel(255, a3, a4, v7);
  v8 = sub_10008739C();
  swift_getWitnessTable();
  v9 = sub_10008783C();
  if (!sub_10008738C())
  {
    goto LABEL_15;
  }

  v10 = 4;
  v20 = v8;
  while (1)
  {
    v11 = v8;
    v12 = v10 - 4;
    v13 = sub_10008734C();
    sub_1000872FC();
    if (!v13)
    {
      break;
    }

    v14 = *(v9 + 8 * v10);

    v15 = v10 - 3;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_14;
    }

LABEL_8:
    v22[0] = sub_100023E98();
    v8 = v11;
    v16 = sub_10008783C();
    sub_100023F4C(v16);
    if (*(v14 + 16) && (v22[0] = *(v14 + 16), swift_getWitnessTable(), v17 = sub_1000875CC(), v22[4]))
    {
      __chkstk_darwin(v17);
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v19 = a4;
      swift_getKeyPath();

      v18 = sub_1000867CC();
      sub_10008737C();
      v18(v22, 0);
      a4 = v19;

      v8 = v20;
    }

    else
    {
    }

    ++v10;
    if (v15 == sub_10008738C())
    {
      goto LABEL_15;
    }
  }

  v14 = sub_10008780C();
  v15 = v10 - 3;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
LABEL_15:
}

BOOL sub_100026440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a1 + 40);
  v5 = v4 != 2 && (v4 & 1) == 0;
  if (!v5 || !*(*a1 + 16))
  {
    return 0;
  }

  type metadata accessor for BetaSettingsRowViewModel(0, a2, a3, a4);

  v6 = sub_10008736C();

  return v6 == 1;
}

BOOL sub_1000264C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BetaSettingsRowViewModel(0, *(*a2 + 80), *(*a2 + 88), a4);
  swift_getWitnessTable();
  v4 = sub_1000877FC();
  return v4 != sub_1000877FC();
}

uint64_t sub_100026580(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002740;

  return sub_1000256BC(a1, a2);
}

uint64_t sub_100026640(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000266A0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100026708@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100023E98();
  *a1 = result;
  return result;
}

__n128 sub_10002676C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000267A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100024004();
  *a1 = result;
  return result;
}

uint64_t sub_100026808()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100026840()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100026888(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002740;

  return sub_1000258FC(a1, v6, v7, v8, v9, v4, v5);
}

uint64_t sub_100026964()
{

  return swift_deallocObject();
}

uint64_t sub_1000269A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall UIViewController.wrap(subViewController:)(UIViewController subViewController)
{
  v3 = [(objc_class *)subViewController.super.super.isa view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 removeFromSuperview];

  [(objc_class *)subViewController.super.super.isa removeFromParentViewController];
  [(objc_class *)subViewController.super.super.isa willMoveToParentViewController:v1];
  [v1 addChildViewController:subViewController.super.super.isa];
  v5 = [(objc_class *)subViewController.super.super.isa view];
  if (v5)
  {
    v6 = v5;
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubviewToBounds:v6 with:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

      v9 = [objc_opt_self() systemGroupedBackgroundColor];
      [v6 setBackgroundColor:v9];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:

  [(objc_class *)subViewController.super.super.isa didMoveToParentViewController:v1];
}

uint64_t sub_100026BC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100026C0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100026C7C@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v23 = a4;
  v24 = a2;
  v25 = a3;
  v30 = a5;
  v31 = sub_100001EEC(&qword_1000AE7B8, &qword_10008A478);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v22[-v6];
  v7 = sub_100086A8C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100001EEC(&qword_1000AE7B0, &qword_10008A470);
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v32 = &v22[-v12];
  v33 = a1;
  v13 = qword_1000ADBB8;

  if (v13 != -1)
  {
    swift_once();
  }

  (*(v8 + 104))(v10, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v7);
  v14 = sub_1000272B4();
  sub_100086D8C();
  (*(v8 + 8))(v10, v7);

  if (qword_1000ADAF0 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = v25;
  *(v15 + 24) = v24;
  *(v15 + 32) = v16;
  *(v15 + 40) = v23 & 1;

  v17 = v28;
  sub_100086EEC();
  v33 = &type metadata for ProfileListView;
  v34 = v14;
  swift_getOpaqueTypeConformance2();
  sub_100006454(&qword_1000AE7C8, &qword_1000AE7B8, &qword_10008A478, &protocol conformance descriptor for Button<A>);
  v18 = v31;
  v19 = v27;
  v20 = v32;
  sub_100086D7C();
  (*(v29 + 8))(v17, v18);
  return (*(v26 + 8))(v20, v19);
}

uint64_t sub_10002709C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  sub_100001EEC(&qword_1000AE7D0, &qword_10008A480);
  sub_100086F6C();
  sub_100086F7C();
}

uint64_t sub_100027150()
{
  sub_100001EEC(&qword_1000AE7A8, &qword_10008A468);
  sub_100003200(&qword_1000AE7B0, &qword_10008A470);
  sub_100003200(&qword_1000AE7B8, &qword_10008A478);
  sub_1000272B4();
  swift_getOpaqueTypeConformance2();
  sub_100006454(&qword_1000AE7C8, &qword_1000AE7B8, &qword_10008A478, &protocol conformance descriptor for Button<A>);
  swift_getOpaqueTypeConformance2();
  return sub_1000868EC();
}

unint64_t sub_1000272B4()
{
  result = qword_1000AE7C0;
  if (!qword_1000AE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE7C0);
  }

  return result;
}

uint64_t sub_100027308()
{

  return swift_deallocObject();
}

uint64_t sub_1000273A4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 56))())
  {
    swift_getAssociatedTypeWitness();
    sub_10008739C();
    swift_getWitnessTable();
    v2 = sub_1000875DC();

    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_100027470(uint64_t a1, uint64_t a2)
{
  v4 = sub_10008672C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 72))(a1, a2);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for BetaEnrollment.State.notEnrolled(_:))
  {
    return (*(a2 + 96))(a1, a2);
  }

  if (v8 == enum case for BetaEnrollment.State.enrolled(_:))
  {
    return (*(a2 + 112))(a1, a2);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1000275E0(uint64_t a1)
{
  sub_10002B64C(319, &qword_1000AE8A0, &type metadata accessor for BetaEnrollment.Availability, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_10002B5F8(319, &qword_1000AE8A8, &qword_1000AE610, &unk_10008C960);
    if (v2 <= 0x3F)
    {
      sub_10002B64C(319, &qword_1000AE8B0, &type metadata accessor for BetaEnrollment.State, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_10002B5A8();
        if (v4 <= 0x3F)
        {
          sub_10002B5F8(319, &qword_1000AE8C0, &qword_1000AE8C8, &unk_10008A5A0);
          if (v5 <= 0x3F)
          {
            sub_10002B5F8(319, &qword_1000AE8D0, &qword_1000ADD60, &qword_100088920);
            if (v6 <= 0x3F)
            {
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
              sub_10008767C();
              if (v10 <= 0x3F)
              {
                sub_10002B64C(319, &qword_1000AE8D8, &type metadata accessor for BetaEnrollment.State, &type metadata accessor for Optional);
                if (v11 <= 0x3F)
                {
                  swift_initClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10002797C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10008648C();
  *a2 = result;
  return result;
}

uint64_t sub_1000279A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v64 = a2;
  v6 = *(v3 + 80);
  v74 = *(v3 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = sub_10008767C();
  v66 = *(v11 - 8);
  v67 = v11;
  __chkstk_darwin(v11);
  v68 = &v62 - v12;
  *&v103 = 0;
  *(&v103 + 1) = 0xE000000000000000;
  sub_1000877DC(36);
  v112._countAndFlagsBits = 0xD000000000000015;
  v112._object = 0x800000010008F000;
  sub_1000871BC(v112);
  *&v94 = a1;
  v75 = v10;
  v13 = sub_10008739C();
  swift_getWitnessTable();
  sub_1000879FC();
  v113._countAndFlagsBits = 0x726F7774656E202CLL;
  v113._object = 0xEB00000000203A6BLL;
  sub_1000871BC(v113);
  *&v94 = a2;
  sub_1000879EC();
  v14 = v103;
  v15 = v74;
  v63 = type metadata accessor for BetaSettingsRowViewModel(0, v6, v74, v16);
  sub_100059920(v14, *(&v14 + 1), v63, &off_1000A7F38);

  v18 = sub_100044564(a1, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  v78 = v19;
  *&v103 = v19;
  v84[2] = v6;
  v84[3] = v15;
  v76 = &protocol conformance descriptor for [A];
  WitnessTable = swift_getWitnessTable();
  v77 = sub_100013210(sub_10003136C, v84, v13, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v20);
  *&v103 = v18;
  sub_1000870CC();
  swift_getWitnessTable();
  *&v103 = sub_10008726C();
  v83[6] = v6;
  v83[7] = v15;
  v83[8] = v18;
  sub_100001EEC(&qword_1000AE2B0, &qword_10008D800);
  v79 = &protocol conformance descriptor for [A];
  sub_100006454(&qword_1000AE980, &qword_1000AE2B0, &qword_10008D800, &protocol conformance descriptor for [A]);
  v21 = sub_10008722C();
  v73 = v21;

  v22 = v63;

  *&v103 = v21;
  v83[2] = v6;
  v83[3] = v15;
  v23 = sub_10008739C();
  v24 = swift_getWitnessTable();
  sub_100013210(sub_1000313AC, v83, v23, &type metadata for String, &type metadata for Never, v24, &protocol witness table for Never, v25);
  *&v103 = 0;
  *(&v103 + 1) = 0xE000000000000000;
  sub_1000877DC(32);

  strcpy(&v103, "Found solos: ");
  HIWORD(v103) = -4864;
  v26 = sub_1000872DC();
  v28 = v27;

  v114._countAndFlagsBits = v26;
  v114._object = v28;
  sub_1000871BC(v114);

  v115._countAndFlagsBits = 0x756C6320646E6120;
  v115._object = 0xEF203A7372657473;
  sub_1000871BC(v115);
  v29 = sub_1000872DC();
  v31 = v30;

  v116._countAndFlagsBits = v29;
  v116._object = v31;
  sub_1000871BC(v116);
  v32 = v64;

  sub_100059920(v103, *(&v103 + 1), v22, &off_1000A7F38);

  *&v103 = v78;
  v72 = v6;
  v80 = v6;
  v81 = v74;
  v82 = v32;
  v70 = swift_getWitnessTable();
  v33 = sub_10008722C();
  v79 = 0;
  v34 = v73;

  v111 = v33;
  if (sub_10008738C())
  {
    v35 = v75;
    v69 = v75 - 8;
    ++v66;
    v36 = 4;
    v37 = v68;
    while (1)
    {
      v38 = v36 - 4;
      v39 = sub_10008734C();
      sub_1000872FC();
      v78 = v36;
      if (v39)
      {
        v40 = *(v34 + 8 * v36);

        v41 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v40 = sub_10008780C();
        v41 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v77 = v41;
      v102 = v40;
      sub_1000875CC();
      v42 = *(v35 - 8);
      if ((*(v42 + 48))(v37, 1, v35) == 1)
      {
        break;
      }

      v44 = &v37[*(v35 + 40)];
      v45 = *(v44 + 5);
      v90 = *(v44 + 4);
      v91 = v45;
      v46 = *(v44 + 7);
      v92 = *(v44 + 6);
      v93 = v46;
      v47 = *(v44 + 1);
      v86 = *v44;
      v87 = v47;
      v48 = *(v44 + 3);
      v88 = *(v44 + 2);
      v89 = v48;
      sub_1000333E8(&v86, &v85);
      (*(v42 + 8))(v37, v35);
      v98 = v90;
      v99 = v91;
      v100 = v92;
      v101 = v93;
      v94 = v86;
      v95 = v87;
      v96 = v88;
      v97 = v89;
      nullsub_1();
      if (*(&v90 + 1))
      {
        v49 = *(&v91 + 1);
        v50 = v91;
      }

      else
      {
        if (!*(&v86 + 1))
        {
          goto LABEL_7;
        }

        v49 = *(&v87 + 1);
        v50 = v87;
      }

      v75 = v50;
      v76 = v49;
      v107 = v98;
      v108 = v99;
      v109 = v100;
      v110 = v101;
      v103 = v94;
      v104 = v95;
      v105 = v96;
      v106 = v97;

LABEL_13:
      *&v86 = v40;
      __chkstk_darwin(v43);
      v51 = v74;
      *(&v62 - 4) = v72;
      *(&v62 - 3) = v51;
      *(&v62 - 2) = v32;
      v52 = v79;
      v53 = sub_10008722C();
      v79 = v52;

      v98 = v107;
      v99 = v108;
      v100 = v109;
      v101 = v110;
      v94 = v103;
      v95 = v104;
      v96 = v105;
      v97 = v106;
      if (sub_1000332FC(&v94) == 1)
      {
        LOBYTE(v54) = 0;
      }

      else
      {
        v54 = *(&v94 + 1);
        v55 = v94;
        v56 = v95;
        sub_100033360(v94, *(&v94 + 1), v95, *(&v95 + 1));
        sub_10000649C(&v103, &qword_1000AE988, &qword_10008A770);
        if (v54)
        {
          sub_1000333A4(v55, v54, v56, *(&v56 + 1));
          LOBYTE(v54) = 1;
        }

        v37 = v68;
      }

      swift_unknownObjectRetain();
      v57 = sub_100033270(v54, v75, v76, v53, v32);
      swift_unknownObjectRelease();
      *&v86 = v57;
      sub_10008739C();
      sub_10008737C();
      v34 = v73;
      if (v77 == sub_10008738C())
      {
        goto LABEL_23;
      }

      v36 = v78 + 1;
    }

    (*v66)(v37, v67);
    sub_1000332E4(&v94);
LABEL_7:
    v107 = v98;
    v108 = v99;
    v109 = v100;
    v110 = v101;
    v103 = v94;
    v104 = v95;
    v75 = 0x646F50656D6F48;
    v76 = 0xE700000000000000;
    v105 = v96;
    v106 = v97;
    goto LABEL_13;
  }

LABEL_23:

  v59 = v111;
  *&v103 = v111;
  __chkstk_darwin(v58);
  v60 = v62;
  *(&v62 - 2) = v65;
  *(&v62 - 1) = v60;
  sub_10008739C();

  swift_getWitnessTable();
  sub_10008725C();

  *&v103 = 0;
  *(&v103 + 1) = 0xE000000000000000;
  sub_1000877DC(22);
  v117._object = 0x800000010008F020;
  v117._countAndFlagsBits = 0xD000000000000014;
  sub_1000871BC(v117);
  *&v94 = v59;
  swift_getWitnessTable();
  sub_1000879FC();
  sub_100059920(v103, *(&v103 + 1), v22, &off_1000A7F38);

  return v59;
}

uint64_t sub_100028408()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v7 = type metadata accessor for BetaSettingsRowViewModel(0, *(v2 + 80), *(v2 + 88), v6);
  sub_100059B74(0xD000000000000010, 0x800000010008EF90, v7, &off_1000A7F38);
  v8 = sub_10008742C();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1000873FC();

  v9 = sub_1000873EC();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v1;
  sub_100016950(0, 0, v5, &unk_10008A758, v10);
}

uint64_t sub_100028588()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v3 - 8);
  v22 = &v21 - v4;
  v5 = sub_10008672C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v13 = type metadata accessor for BetaSettingsRowViewModel(0, *(v2 + 80), *(v2 + 88), v12);
  sub_100059B74(0xD000000000000010, 0x800000010008EF50, v13, &off_1000A7F38);
  sub_100029070();
  v14 = *(v6 + 104);
  v14(v9, enum case for BetaEnrollment.State.enrolled(_:), v5);
  sub_1000312FC(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v15 = *(v6 + 8);
  v15(v9, v5);
  v15(v11, v5);
  if (v24 == v23 || (sub_100029070(), v14(v9, enum case for BetaEnrollment.State.multiple(_:), v5), sub_10008729C(), sub_10008729C(), v15(v9, v5), result = (v15)(v11, v5), v24 == v23))
  {
    v17 = sub_10008742C();
    v18 = v22;
    (*(*(v17 - 8) + 56))(v22, 1, 1, v17);
    sub_1000873FC();

    v19 = sub_1000873EC();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v1;
    sub_100016950(0, 0, v18, &unk_10008A730, v20);
  }

  return result;
}

uint64_t sub_100028918(uint64_t a1, char a2)
{
  if (a2)
  {
    result = sub_100028994(a1);
    if (v3)
    {
      return result;
    }

    v5 = &off_1000A63E8;
    v4 = 19;
    return sub_10000F8C4(v5, v4);
  }

  if (*(a1 + 16) == 1)
  {
    if (*(a1 + 32))
    {
      v4 = 16;
    }

    else
    {
      v4 = 18;
    }

    v5 = &off_1000A6398;
    return sub_10000F8C4(v5, v4);
  }

  result = sub_100028994(a1);
  if (!v6)
  {
    v5 = &off_1000A63C0;
    v4 = 16;
    return sub_10000F8C4(v5, v4);
  }

  return result;
}

uint64_t sub_100028994(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 1)
  {
    v2 = *(a1 + 32);
    if (v2 >= 0)
    {
      v3 = 17;
    }

    else
    {
      v3 = 18;
    }

    if (v2 >= 0)
    {
      v4 = 15;
    }

    else
    {
      v4 = 16;
    }

    if (*(a1 + 32))
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    v6 = &off_1000A62A8;
  }

  else
  {
    if (!v1)
    {
      return v1;
    }

    v7 = (a1 + 32);
    v8 = _swiftEmptyArrayStorage;
    do
    {
      v10 = *v7++;
      v9 = v10;
      sub_100001EEC(&qword_1000AE9B8, &unk_10008D020);
      result = swift_allocObject();
      v12 = result;
      if (v10 < 0)
      {
        *(result + 16) = xmmword_10008A4E0;
        *(result + 32) = v9 & 1;
        *(result + 33) = v9 & 1;
        v13 = 2;
      }

      else
      {
        *(result + 16) = xmmword_100089AB0;
        *(result + 32) = v9;
        v13 = 1;
      }

      v14 = *(v8 + 2);
      v15 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v15 > *(v8 + 3) >> 1)
      {
        if (v14 <= v15)
        {
          v16 = v14 + v13;
        }

        else
        {
          v16 = v14;
        }

        result = sub_10006F00C(result, v16, 1, v8);
        v8 = result;
      }

      v17 = *(v8 + 2);
      if ((*(v8 + 3) >> 1) - v17 < v13)
      {
        goto LABEL_54;
      }

      memcpy(&v8[v17 + 32], (v12 + 32), v13);

      v18 = *(v8 + 2);
      if (__OFADD__(v18, v13))
      {
        goto LABEL_55;
      }

      *(v8 + 2) = v18 + v13;
      --v1;
    }

    while (v1);
    v19 = v13 + v18;
    v20 = 32;
    do
    {
      v23 = v8[v20];
      if ((v23 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10006F6A8(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v22 = _swiftEmptyArrayStorage[2];
        v21 = _swiftEmptyArrayStorage[3];
        if (v22 >= v21 >> 1)
        {
          sub_10006F6A8((v21 > 1), v22 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v22 + 1;
        *(&_swiftEmptyArrayStorage[4] + v22) = v23;
      }

      ++v20;
      --v19;
    }

    while (v19);
    v24 = _swiftEmptyArrayStorage[2];

    v25 = v13 + v18;
    v26 = 32;
    do
    {
      v29 = v8[v26];
      if (v29)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10006F6A8(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v28 = _swiftEmptyArrayStorage[2];
        v27 = _swiftEmptyArrayStorage[3];
        if (v28 >= v27 >> 1)
        {
          sub_10006F6A8((v27 > 1), v28 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v28 + 1;
        *(&_swiftEmptyArrayStorage[4] + v28) = v29;
      }

      ++v26;
      --v25;
    }

    while (v25);

    v30 = _swiftEmptyArrayStorage[2];

    if (!v24)
    {
      if (v30)
      {
        v6 = &off_1000A6320;
        v5 = 16;
        return sub_10000F8C4(v6, v5);
      }

      return 0;
    }

    if (v30)
    {
      v6 = &off_1000A62D0;
      v5 = 19;
    }

    else
    {
      v6 = &off_1000A62F8;
      v5 = 18;
    }
  }

  return sub_10000F8C4(v6, v5);
}

uint64_t sub_100028D98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t sub_100028E4C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_100028F20(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v6 + 16);
  v12(&v15 - v10, a1, v5);
  v12(v9, v11, v5);
  sub_1000867AC();
  v13 = *(v6 + 8);
  v13(a1, v5);
  return (v13)(v11, v5);
}

uint64_t sub_100029084()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();
}

uint64_t sub_100029160(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = a2(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  v15 = *(v6 + 80);
  v11 = v15;
  v12 = *(v6 + 88);
  v16 = v12;
  swift_getKeyPath();
  v14[0] = v11;
  v14[1] = v12;
  swift_getKeyPath();
  (*(v8 + 16))(v10, a1, v7);

  sub_1000867EC();
  return (*(v8 + 8))(a1, v7);
}

uint64_t sub_100029308()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t sub_1000293BC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_1000294C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t sub_10002957C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_10002968C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000867DC();

  return v1;
}

uint64_t sub_100029744(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000867EC();
}

uint64_t sub_100029808@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 192);
  swift_beginAccess();
  return sub_10000E4A4(v1 + v3, a1, &qword_1000AE970, &unk_10008A740);
}

uint64_t sub_10002987C(uint64_t a1)
{
  v3 = *(*v1 + 192);
  swift_beginAccess();
  sub_10003419C(a1, v1 + v3);
  swift_endAccess();
  sub_10002A174();
  return sub_10000649C(a1, &qword_1000AE970, &unk_10008A740);
}

uint64_t sub_100029904@<X0>(uint64_t a1@<X0>, _BYTE *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = sub_10008767C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  (*(v11 + 16))(&v20 - v12, *a1 + *(**a1 + 184), v10);
  v14 = *(v9 - 8);
  if ((*(v14 + 48))(v13, 1, v9) == 1)
  {
    (*(v11 + 8))(v13, v10);
    result = 254;
  }

  else
  {
    v16 = &v13[*(v9 + 40)];
    v17 = *(v16 + 6);
    v18 = *(v16 + 7);
    v19 = *(v14 + 8);

    v19(v13, v9);
    result = sub_1000676B0(v17, v18);
  }

  *a4 = result;
  return result;
}

unint64_t sub_100029B08(uint64_t a1)
{
  result = sub_1000294C8();
  if (result)
  {
    v3 = result;
    v4 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_16;
    }

    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (1)
      {
        v10 = v4;
        v14 = _swiftEmptyArrayStorage;
        sub_10008787C();
        if (v5 < 0)
        {
          break;
        }

        v6 = 0;
        while (1)
        {
          v4 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if ((v3 & 0xC000000000000001) != 0)
          {
            v7 = sub_10008781C();
          }

          else
          {
            if (v6 >= *(v10 + 16))
            {
              goto LABEL_15;
            }

            v7 = *(v3 + 8 * v6 + 32);
          }

          v8 = v7;
          v12 = v7;
          sub_100029CC0(&v12, a1, v11, &v13);

          sub_10008784C();
          sub_10008788C();
          sub_10008789C();
          sub_10008785C();
          ++v6;
          if (v4 == v5)
          {

            v9 = v14;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        v5 = sub_10008793C();
        if (!v5)
        {
          goto LABEL_17;
        }
      }

      __break(1u);

      __break(1u);
    }

    else
    {
LABEL_17:

      v9 = _swiftEmptyArrayStorage;
LABEL_18:

      return sub_10002957C(v9);
    }
  }

  return result;
}

id sub_100029CC0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = *a3;
  v7 = *a1;
  v8 = sub_10008648C();
  if (*(a2 + 16) && (v9 = sub_10006E704(v8), (v10 & 1) != 0))
  {
    v11 = (*(a2 + 56) + 16 * v9);
    v12 = *v11;
    v13 = v11[1];

    sub_1000877DC(38);

    sub_10008648C();
    v20._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v20);

    v21._countAndFlagsBits = 2564154;
    v21._object = 0xE300000000000000;
    sub_1000871BC(v21);
    v22._countAndFlagsBits = sub_1000864AC();
    sub_1000871BC(v22);

    v23._countAndFlagsBits = 0x2720949EE22027;
    v23._object = 0xA700000000000000;
    sub_1000871BC(v23);
    v24._countAndFlagsBits = v12;
    v24._object = v13;
    sub_1000871BC(v24);
    v25._countAndFlagsBits = 39;
    v25._object = 0xE100000000000000;
    sub_1000871BC(v25);
    v15 = type metadata accessor for BetaSettingsRowViewModel(0, *(v6 + 80), *(v6 + 88), v14);
    sub_100059B74(0xD000000000000015, 0x800000010008F140, v15, &off_1000A7F38);

    sub_10008648C();
    v16 = objc_allocWithZone(sub_1000864BC());
    result = sub_10008649C();
    *a4 = result;
  }

  else
  {
    sub_1000877DC(63);
    v26._countAndFlagsBits = 0xD000000000000025;
    v26._object = 0x800000010008F0F0;
    sub_1000871BC(v26);
    sub_10008648C();
    v27._countAndFlagsBits = sub_1000879CC();
    sub_1000871BC(v27);

    v28._object = 0x800000010008F120;
    v28._countAndFlagsBits = 0xD000000000000014;
    sub_1000871BC(v28);
    v29._countAndFlagsBits = sub_1000864AC();
    sub_1000871BC(v29);

    v30._countAndFlagsBits = 11815;
    v30._object = 0xE200000000000000;
    sub_1000871BC(v30);
    v19 = type metadata accessor for BetaSettingsRowViewModel(0, *(v6 + 80), *(v6 + 88), v18);
    sub_100059B74(0, 0xE000000000000000, v19, &off_1000A7F38);

    *a4 = v7;
    return v7;
  }

  return result;
}

uint64_t sub_100029FA4()
{
  v1 = *v0;
  v2 = sub_10008672C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000864CC();
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[23];
  v10 = v0[2];
  sub_10002A284(v0 + v9, v10, v8);
  sub_100028D20(v8);
  v11 = v1[10];
  v12 = v1[11];
  v13 = sub_1000313EC(v0 + v9, v10, v11, v12);
  sub_100028E4C(v13, v14);
  sub_10002A174();
  v15 = sub_10003182C(v0 + v9, v10, v11, v12);
  sub_10002957C(v15);
  sub_100029070();
  v16 = sub_10003220C(v0 + v9, v5, v10, v11, v12);
  LOBYTE(v11) = v17;
  (*(v3 + 8))(v5, v2);
  return sub_100029744(v16, v11 & 1);
}

uint64_t sub_10002A174()
{
  v1 = sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_10008672C();
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029808(v3);
  sub_10002A97C(v3, v0 + *(*v0 + 184), v0[2], v6);
  sub_10000649C(v3, &qword_1000AE970, &unk_10008A740);
  return sub_100029138(v6);
}

uint64_t sub_10002A284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  v57 = a3;
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = sub_10008767C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v16 = *(v10 - 8);
  __chkstk_darwin(v13);
  v52 = &v48 - v17;
  v18 = sub_1000864CC();
  v55 = *(v18 - 8);
  v56 = v18;
  __chkstk_darwin(v18);
  v50 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100001EEC(&qword_1000AE9C0, &qword_10008A810);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v51 = &v48 - v25;
  v54 = a2;
  if (a2 && (v58 = v54, type metadata accessor for BetaSettingsRowViewModel(255, v6, v5, v24), v26 = sub_10008739C(), WitnessTable = swift_getWitnessTable(), v49 = v26, v28 = WitnessTable, v29 = sub_1000875DC(), (v29 & 1) == 0))
  {
    v58 = v54;
    __chkstk_darwin(v29);
    *(&v48 - 2) = v35;
    *(&v48 - 1) = v5;
    KeyPath = swift_getKeyPath();
    v37 = v56;
    v39 = sub_100013210(sub_100034030, KeyPath, v49, v56, &type metadata for Never, v28, &protocol witness table for Never, v38);

    if (*(v39 + 16))
    {
      v40 = enum case for BetaEnrollment.Availability.unavailable(_:);
      v41 = v55;
      v42 = *(v55 + 104);
      v43 = v50;
      v42(v50, enum case for BetaEnrollment.Availability.unavailable(_:), v37);
      v44 = sub_100058558(v43, v39);

      (*(v41 + 8))(v43, v37);
      if (v44)
      {
        v45 = v40;
      }

      else
      {
        v45 = enum case for BetaEnrollment.Availability.publicBetaAvailable(_:);
      }

      v46 = v51;
      v42(v51, v45, v37);
      (*(v41 + 56))(v46, 0, 1, v37);
      return (*(v41 + 32))(v57, v46, v37);
    }

    else
    {

      v47 = v55;
      (*(v55 + 56))(v51, 1, 1, v37);
      return (*(v47 + 104))(v57, enum case for BetaEnrollment.Availability.unavailable(_:), v37);
    }
  }

  else
  {
    (*(v12 + 16))(v15, v53, v11);
    if ((*(v16 + 48))(v15, 1, v10) == 1)
    {
      (*(v12 + 8))(v15, v11);
      return (*(v55 + 104))(v57, enum case for BetaEnrollment.Availability.unavailable(_:), v56);
    }

    else
    {
      v31 = v52;
      (*(v16 + 32))(v52, v15, v10);
      sub_10000E4A4(v31, v23, &qword_1000AE9C0, &qword_10008A810);
      (*(v16 + 8))(v31, v10);
      v33 = v55;
      v32 = v56;
      v34 = *(v55 + 48);
      if (v34(v23, 1, v56) == 1)
      {
        (*(v33 + 104))(v57, enum case for BetaEnrollment.Availability.unavailable(_:), v32);
        result = v34(v23, 1, v32);
        if (result != 1)
        {
          return sub_10000649C(v23, &qword_1000AE9C0, &qword_10008A810);
        }
      }

      else
      {
        return (*(v33 + 32))(v57, v23, v32);
      }
    }
  }

  return result;
}

uint64_t sub_10002A920(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t sub_10002A97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a3;
  v64 = a4;
  v60 = a2;
  v6 = *(*v4 + 88);
  v7 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = v7;
  v62 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v59 = sub_10008767C();
  v57 = *(v59 - 1);
  v12 = __chkstk_darwin(v59);
  v14 = &v54 - v13;
  v58 = *(v11 - 8);
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = sub_10008672C();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v55 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v56 = &v54 - v21;
  v22 = sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v54 - v26;
  sub_10000E4A4(a1, &v54 - v26, &qword_1000AE970, &unk_10008A740);
  v28 = *(v18 + 48);
  if (v28(v27, 1, v17) != 1)
  {
    return (*(v18 + 32))(v64, v27, v17);
  }

  v54 = v18;
  sub_10000649C(v27, &qword_1000AE970, &unk_10008A740);
  if (v63 && (v66 = v63, type metadata accessor for BetaSettingsRowViewModel(255, v61, v62, v29), v30 = sub_10008739C(), WitnessTable = swift_getWitnessTable(), v32 = sub_1000875DC(), (v32 & 1) == 0))
  {
    v66 = v63;
    __chkstk_darwin(v32);
    v39 = v62;
    *(&v54 - 2) = v61;
    *(&v54 - 1) = v39;
    KeyPath = swift_getKeyPath();
    v60 = v30;
    v42 = sub_100013210(sub_1000342EC, KeyPath, v30, v17, &type metadata for Never, WitnessTable, &protocol witness table for Never, v41);

    sub_10004AE28(v42, v25);

    if (v28(v25, 1, v17) == 1)
    {
      v43 = v54;
      v44 = *(v54 + 104);
      (v44)(v56, enum case for BetaEnrollment.State.multiple(_:), v17);
      v45 = v17;
      if (v28(v25, 1, v17) != 1)
      {
        sub_10000649C(v25, &qword_1000AE970, &unk_10008A740);
      }

      v46 = v56;
    }

    else
    {
      v43 = v54;
      v46 = v56;
      (*(v54 + 32))(v56, v25, v17);
      v45 = v17;
      v44 = *(v43 + 104);
    }

    v47 = v55;
    v59 = v44;
    (v44)(v55, enum case for BetaEnrollment.State.enrolled(_:), v45);
    sub_1000312FC(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
    sub_10008729C();
    sub_10008729C();
    v48 = *(v43 + 8);
    v49 = v48(v47, v45);
    if (v66 == v65)
    {
      v58 = &v54;
      v66 = v63;
      __chkstk_darwin(v49);
      v50 = v62;
      *(&v54 - 2) = v61;
      *(&v54 - 1) = v50;
      swift_getWitnessTable();
      v51 = sub_10008722C();
      v52 = sub_100082DB8(v51);

      v53 = *(v52 + 16);

      if (v53 >= 2)
      {
        v48(v46, v45);
        (v59)(v46, enum case for BetaEnrollment.State.multiple(_:), v45);
      }
    }

    return (*(v43 + 32))(v64, v46, v45);
  }

  else
  {
    v33 = v57;
    v34 = v59;
    (*(v57 + 16))(v14, v60, v59);
    v35 = v58;
    v36 = (v58[6])(v14, 1, v11);
    v37 = v64;
    if (v36 == 1)
    {
      (*(v33 + 8))(v14, v34);
      return (*(v54 + 104))(v37, enum case for BetaEnrollment.State.notEnrolled(_:), v17);
    }

    else
    {
      (v35[4])(v16, v14, v11);
      (*(v54 + 16))(v37, &v16[*(v11 + 36)], v17);
      return (v35[1])(v16, v11);
    }
  }
}

uint64_t sub_10002B148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

char *sub_10002B21C()
{

  v1 = qword_1000AE7E8;
  v2 = sub_100001EEC(&qword_1000AE9B0, &unk_10008A7A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1000AE7F0;
  v4 = sub_100001EEC(&qword_1000AE600, &unk_10008D650);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_1000AE7F8;
  v6 = sub_100001EEC(&qword_1000AE9A8, &unk_10008A790);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = qword_1000AE800;
  v8 = sub_100001EEC(&qword_1000AE9A0, &qword_10008BC70);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = qword_1000AE808;
  v10 = sub_100001EEC(&qword_1000AE998, &unk_10008A780);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = qword_1000AE810;
  v12 = sub_100001EEC(&qword_1000AE990, &qword_10008A778);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  swift_unknownObjectRelease();
  v13 = *(*v0 + 184);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  v17 = sub_10008767C();
  (*(*(v17 - 8) + 8))(v0 + v13, v17);
  sub_10000649C(v0 + *(*v0 + 192), &qword_1000AE970, &unk_10008A740);
  return v0;
}

uint64_t sub_10002B538()
{
  sub_10002B21C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_10002B5A8()
{
  if (!qword_1000AE8B8)
  {
    v0 = sub_1000867FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AE8B8);
    }
  }
}

void sub_10002B5F8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100003200(a3, a4);
    v5 = sub_1000867FC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10002B64C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for GroupType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GroupType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002B810()
{
  result = qword_1000AE8E0;
  if (!qword_1000AE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE8E0);
  }

  return result;
}

uint64_t sub_10002B864(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1000873FC();
  v1[4] = sub_1000873EC();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_10002B914;

  return sub_10002BB0C();
}

uint64_t sub_10002B914()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = sub_1000873DC();
    v4 = v3;
    v5 = sub_1000342E8;
  }

  else
  {
    v2 = sub_1000873DC();
    v4 = v6;
    v5 = sub_10002BA98;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_10002BA98()
{
  v1 = v0[6];
  v2 = v0[2];

  *v2 = v1 != 0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10002BB0C()
{
  v1[5] = v0;
  v2 = *v0;
  v3 = sub_10008672C();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = *(v2 + 88);
  v1[11] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[12] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v1[13] = v7;
  v8 = sub_10008767C();
  v1[14] = v8;
  v1[15] = *(v8 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = *(v7 - 8);
  v1[18] = swift_task_alloc();
  sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  v1[19] = swift_task_alloc();
  v9 = sub_1000864CC();
  v1[20] = v9;
  v1[21] = *(v9 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  sub_1000873FC();
  v1[24] = sub_1000873EC();
  v11 = sub_1000873DC();
  v1[25] = v11;
  v1[26] = v10;

  return _swift_task_switch(sub_10002BDF8, v11, v10);
}

uint64_t sub_10002BDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[11].i64[0];
  v5 = v4[11].i64[1];
  v7 = v4[10].i64[0];
  v8 = v4[10].i64[1];
  v9 = type metadata accessor for BetaSettingsRowViewModel(0, v4[5].i64[1], v4[5].i64[0], a4);
  v4[13].i64[1] = v9;
  sub_100059B74(0x6E696C6C6F726E45, 0xE900000000000067, v9, &off_1000A7F38);
  sub_100028D0C();
  (*(v8 + 104))(v6, enum case for BetaEnrollment.Availability.unavailable(_:), v7);
  sub_1000312FC(&qword_1000AE978, &type metadata accessor for BetaEnrollment.Availability, &protocol conformance descriptor for BetaEnrollment.Availability);
  sub_10008729C();
  sub_10008729C();
  v10 = *(v8 + 8);
  v10(v6, v7);
  v10(v5, v7);
  if (v4[1].i64[0] == v4[1].i64[1])
  {

    sub_100059B74(0xD000000000000025, 0x800000010008EFD0, v9, &off_1000A7F38);
LABEL_19:

    v36 = v4->i64[1];

    return v36();
  }

  WitnessTable = swift_getWitnessTable();
  if (sub_1000273A4(v9, WitnessTable))
  {
    v12 = v4[9].i64[1];
    v13 = v4[3].i64[0];
    v14 = v4[3].i64[1];
    v15 = v4[2].i64[1];
    sub_100059B74(0xD000000000000012, 0x800000010008EFB0, v9, &off_1000A7F38);
    (*(v14 + 104))(v12, enum case for BetaEnrollment.State.enrolling(_:), v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    sub_10002987C(v12);
    v16 = *(v15 + 16);
    if (v16)
    {
      v4[2].i64[0] = v16;
      *(swift_task_alloc() + 16) = vextq_s8(v4[5], v4[5], 8uLL);
      sub_10008739C();

      swift_getWitnessTable();
      v17 = sub_10008783C();

      v18 = v17;
    }

    else
    {
      v18 = sub_10008732C();
    }

    v4[14].i64[0] = v18;
    if (sub_10008738C())
    {
      v32 = sub_10008734C();
      sub_1000872FC();
      if (v32)
      {
        v33 = *(v4[14].i64[0] + 32);
      }

      else
      {
        v33 = sub_10008780C();
      }

      v4[14].i64[1] = v33;
      v4[15].i64[0] = 1;
      v34 = swift_task_alloc();
      v4[15].i64[1] = v34;
      *v34 = v4;
      v34[1] = sub_10002C624;

      return sub_10002BB0C();
    }

LABEL_18:
    sub_10002FD4C();
    goto LABEL_19;
  }

  v19 = v4[8].i64[0];
  v20 = v4[8].i64[1];
  v21 = v4[6].i64[1];
  (*(v4[7].i64[1] + 16))(v19, v4[2].i64[1] + *(*v4[2].i64[1] + 184), v4[7].i64[0]);
  if ((*(v20 + 48))(v19, 1, v21) == 1)
  {
    v23 = v4[7].i64[1];
    v22 = v4[8].i64[0];
    v24 = v4[7].i64[0];

    (*(v23 + 8))(v22, v24);
    goto LABEL_18;
  }

  v25 = v4[4].i64[1];
  v26 = v4[3].i64[0];
  v27 = v4[3].i64[1];
  (*(v4[8].i64[1] + 32))(v4[9].i64[0], v4[8].i64[0], v4[6].i64[1]);
  v28 = enum case for BetaEnrollment.State.enrolled(_:);
  v29 = *(v27 + 104);
  v29(v25, enum case for BetaEnrollment.State.enrolled(_:), v26);
  sub_1000312FC(&qword_1000ADD50, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
  v30 = sub_10008713C();
  v31 = *(v27 + 8);
  v4[16].i64[1] = v31;
  v4[17].i64[0] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v25, v26);
  if (v30)
  {
    (*(v4[8].i64[1] + 8))(v4[9].i64[0], v4[6].i64[1]);

    goto LABEL_18;
  }

  v37 = v4[9].i64[1];
  v38 = v4[6].i64[0];
  v52 = v4[6].i64[1];
  v54 = v4[5].i64[0];
  v39 = v4[3].i64[1];
  v40 = v4[4].i64[0];
  v41 = v4[2].i64[1];
  v42 = v4[3].i64[0];
  v51 = v4[9].i64[0];
  v29(v37, enum case for BetaEnrollment.State.enrolling(_:), v42);
  (*(v39 + 56))(v37, 0, 1, v42);
  sub_10002987C(v37);
  v4[17].i64[1] = *(v41 + qword_1000AE818);
  v29(v40, v28, v42);
  sub_100030948(v38, v38);
  v43 = *(v38 - 8);
  swift_allocObject();
  swift_unknownObjectRetain();
  v44 = sub_1000872EC();
  (*(v43 + 16))(v45, v51 + *(v52 + 44), v38);
  v46 = sub_100013630(v44, v38);
  v4[18].i64[0] = v46;
  v53 = (*(v54 + 64) + **(v54 + 64));
  v47 = swift_task_alloc();
  v4[18].i64[1] = v47;
  *v47 = v4;
  v47[1] = sub_10002C900;
  v49 = v4[5].i64[0];
  v48 = v4[5].i64[1];
  v50 = v4[4].i64[0];

  return v53(v50, v46, v48, v49);
}

uint64_t sub_10002C624()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_10002CBB0;
  }

  else
  {
    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_10002C740;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10002C740()
{
  v1 = v0[30];

  if (v1 == sub_10008738C())
  {

    sub_10002FD4C();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[30];
    v5 = sub_10008734C();
    sub_1000872FC();
    if (v5)
    {
      v6 = *(v0[28] + 8 * v4 + 32);
    }

    else
    {
      result = sub_10008780C();
      v6 = result;
    }

    v0[29] = v6;
    v0[30] = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v7 = swift_task_alloc();
      v0[31] = v7;
      *v7 = v0;
      v7[1] = sub_10002C624;

      return sub_10002BB0C();
    }
  }

  return result;
}

uint64_t sub_10002C900()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  (*(v2 + 264))(*(v2 + 64), *(v2 + 48));

  swift_unknownObjectRelease();
  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_10002CC88;
  }

  else
  {
    v5 = sub_10002CAD0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002CAD0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[13];

  (*(v2 + 8))(v1, v3);
  sub_10002FD4C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002CBB0()
{

  sub_10002FD4C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002CC88()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[13];

  (*(v2 + 8))(v1, v3);
  sub_10002FD4C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002CD74()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_1000873FC();
  v1[4] = sub_1000873EC();
  v3 = sub_1000873DC();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10002CE34, v3, v2);
}

uint64_t sub_10002CE34()
{
  v2 = v0[2];
  v1 = v0[3];
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);

  v14._countAndFlagsBits = 0x6873657266655220;
  v14._object = 0xEB00000000676E69;
  sub_1000871BC(v14);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v6 = type metadata accessor for BetaSettingsRowViewModel(0, v3, v4, v5);
  sub_100059B74(v11, v12, v6, &off_1000A7F38);

  v0[7] = *(v2 + qword_1000AE818);
  v7 = *(v4 + 48);
  swift_unknownObjectRetain();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_10002CFD4;

  return v10(v3, v4);
}

uint64_t sub_10002CFD4()
{
  v2 = *v1;

  if (v0)
  {

    swift_unknownObjectRelease();
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100034334;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_10001F230;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10002D118(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1000873FC();
  v1[4] = sub_1000873EC();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_10002D1C8;

  return sub_10002D34C();
}

uint64_t sub_10002D1C8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
  }

  v3 = sub_1000873DC();

  return _swift_task_switch(sub_1000342E8, v3, v2);
}

uint64_t sub_10002D34C()
{
  v1[3] = v0;
  v2 = *v0;
  v3 = sub_10008672C();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = *(v2 + 88);
  v1[9] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[10] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v1[11] = v7;
  v8 = sub_10008767C();
  v1[12] = v8;
  v1[13] = *(v8 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = *(v7 - 8);
  v1[16] = swift_task_alloc();
  sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  v1[17] = swift_task_alloc();
  sub_1000873FC();
  v1[18] = sub_1000873EC();
  v10 = sub_1000873DC();
  v1[19] = v10;
  v1[20] = v9;

  return _swift_task_switch(sub_10002D5D0, v10, v9);
}

uint64_t sub_10002D5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for BetaSettingsRowViewModel(0, v4[4].i64[1], v4[4].i64[0], a4);
  v4[10].i64[1] = v5;
  sub_100059B74(0x676E69766F6D6552, 0xE800000000000000, v5, &off_1000A7F38);
  WitnessTable = swift_getWitnessTable();
  if (sub_1000273A4(v5, WitnessTable))
  {
    v7 = v4[8].i64[1];
    v8 = v4[2].i64[0];
    v9 = v4[2].i64[1];
    v10 = v4[1].i64[1];
    sub_100059B74(0xD000000000000011, 0x800000010008EF70, v5, &off_1000A7F38);
    (*(v9 + 104))(v7, enum case for BetaEnrollment.State.removing(_:), v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_10002987C(v7);
    v11 = *(v10 + 16);
    if (v11)
    {
      v4[1].i64[0] = v11;
      *(swift_task_alloc() + 16) = vextq_s8(v4[4], v4[4], 8uLL);
      sub_10008739C();

      swift_getWitnessTable();
      v12 = sub_10008783C();

      v13 = v12;
    }

    else
    {
      v13 = sub_10008732C();
    }

    v4[11].i64[0] = v13;
    if (sub_10008738C())
    {
      v27 = sub_10008734C();
      sub_1000872FC();
      if (v27)
      {
        v28 = *(v4[11].i64[0] + 32);
      }

      else
      {
        v28 = sub_10008780C();
      }

      v4[11].i64[1] = v28;
      v4[12].i64[0] = 1;
      v29 = swift_task_alloc();
      v4[12].i64[1] = v29;
      *v29 = v4;
      v29[1] = sub_10002DCDC;

      return sub_10002D34C();
    }

    goto LABEL_16;
  }

  v14 = v4[7].i64[0];
  v15 = v4[7].i64[1];
  v16 = v4[5].i64[1];
  (*(v4[6].i64[1] + 16))(v14, v4[1].i64[1] + *(*v4[1].i64[1] + 184), v4[6].i64[0]);
  if ((*(v15 + 48))(v14, 1, v16) == 1)
  {
    v18 = v4[6].i64[1];
    v17 = v4[7].i64[0];
    v19 = v4[6].i64[0];

    (*(v18 + 8))(v17, v19);
LABEL_16:
    sub_10002FD4C();

    v31 = v4->i64[1];

    return v31();
  }

  v20 = v4[3].i64[1];
  v21 = v4[2].i64[0];
  v22 = v4[2].i64[1];
  (*(v4[7].i64[1] + 32))(v4[8].i64[0], v4[7].i64[0], v4[5].i64[1]);
  v23 = enum case for BetaEnrollment.State.notEnrolled(_:);
  v24 = *(v22 + 104);
  v24(v20, enum case for BetaEnrollment.State.notEnrolled(_:), v21);
  sub_1000312FC(&qword_1000ADD50, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
  v25 = sub_10008713C();
  v26 = *(v22 + 8);
  v4[13].i64[1] = v26;
  v4[14].i64[0] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v20, v21);
  if (v25)
  {
    (*(v4[7].i64[1] + 8))(v4[8].i64[0], v4[5].i64[1]);

    goto LABEL_16;
  }

  v32 = v4[8].i64[1];
  v33 = v4[5].i64[0];
  v47 = v4[5].i64[1];
  v49 = v4[4].i64[0];
  v34 = v4[2].i64[1];
  v35 = v4[3].i64[0];
  v36 = v4[1].i64[1];
  v37 = v4[2].i64[0];
  v46 = v4[8].i64[0];
  v24(v32, enum case for BetaEnrollment.State.enrolling(_:), v37);
  (*(v34 + 56))(v32, 0, 1, v37);
  sub_10002987C(v32);
  v4[14].i64[1] = *(v36 + qword_1000AE818);
  v24(v35, v23, v37);
  sub_100030948(v33, v33);
  v38 = *(v33 - 8);
  swift_allocObject();
  swift_unknownObjectRetain();
  v39 = sub_1000872EC();
  (*(v38 + 16))(v40, v46 + *(v47 + 44), v33);
  v41 = sub_100013630(v39, v33);
  v4[15].i64[0] = v41;
  v48 = (*(v49 + 64) + **(v49 + 64));
  v42 = swift_task_alloc();
  v4[15].i64[1] = v42;
  *v42 = v4;
  v42[1] = sub_10002DFA8;
  v44 = v4[4].i64[0];
  v43 = v4[4].i64[1];
  v45 = v4[3].i64[0];

  return v48(v45, v41, v43, v44);
}

uint64_t sub_10002DCDC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_10002E248;
  }

  else
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_10002DDF8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10002DDF8()
{
  v1 = v0[24];

  if (v1 == sub_10008738C())
  {

    sub_10002FD4C();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[24];
    v5 = sub_10008734C();
    sub_1000872FC();
    if (v5)
    {
      v6 = *(v0[22] + 8 * v4 + 32);
    }

    else
    {
      result = sub_10008780C();
      v6 = result;
    }

    v0[23] = v6;
    v0[24] = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v7 = swift_task_alloc();
      v0[25] = v7;
      *v7 = v0;
      v7[1] = sub_10002DCDC;

      return sub_10002D34C();
    }
  }

  return result;
}

uint64_t sub_10002DFA8()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  (*(v2 + 216))(*(v2 + 48), *(v2 + 32));

  swift_unknownObjectRelease();
  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_10002E304;
  }

  else
  {
    v5 = sub_10002E178;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002E178()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);
  sub_10002FD4C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002E248()
{

  sub_10002FD4C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002E304()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);
  sub_10002FD4C();

  v4 = v0[1];

  return v4();
}

BOOL sub_10002E3D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = sub_10008672C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v15 - v10;
  sub_100029070();
  (*(v6 + 104))(v9, *a4, v5);
  sub_1000312FC(&qword_1000ADD50, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
  v12 = sub_10008713C();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  return (v12 & 1) == 0;
}

uint64_t sub_10002E564(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100001EEC(&qword_1000AEDC0, &qword_100088E40);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1000877DC(47);

  v18 = 0xD00000000000001DLL;
  v19 = 0x800000010008F090;
  v17[1] = a1;
  v20._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v20);

  v21._object = 0x800000010008F0B0;
  v21._countAndFlagsBits = 0xD000000000000010;
  sub_1000871BC(v21);
  v8 = v18;
  v9 = v19;
  v11 = type metadata accessor for BetaSettingsRowViewModel(0, *(v4 + 80), *(v4 + 88), v10);
  sub_100059B74(v8, v9, v11, &off_1000A7F38);

  v12 = sub_10008742C();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1000873FC();

  v14 = sub_1000873EC();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  v15[5] = a1;
  v15[6] = v2;

  sub_100016C64(0, 0, v7, &unk_10008A7B8, v15);
}

uint64_t sub_10002E7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[9] = a4;
  v6[10] = a5;
  v6[11] = *a6;
  sub_1000873FC();
  v6[12] = sub_1000873EC();
  v8 = sub_1000873DC();
  v6[13] = v8;
  v6[14] = v7;

  return _swift_task_switch(sub_10002E878, v8, v7);
}

uint64_t sub_10002E878()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_10002E970;
    v3 = v0[10];

    return sub_10002EC78(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10002E970()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_10002EAEC;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_10002EA8C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10002EA8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002EAEC()
{
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[10];

  sub_1000877DC(39);
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  v11._object = 0x800000010008F0D0;
  v11._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1000871BC(v11);
  v0[7] = v3;
  v12._countAndFlagsBits = sub_1000879CC();
  sub_1000871BC(v12);

  v13._countAndFlagsBits = 0x3A64656C69616620;
  v13._object = 0xE900000000000020;
  sub_1000871BC(v13);
  v0[8] = v1;
  sub_100001EEC(&unk_1000AEDF0, &qword_10008A0E0);
  sub_1000878DC();
  v4 = v0[5];
  v5 = v0[6];
  v7 = type metadata accessor for BetaSettingsRowViewModel(0, *(v2 + 80), *(v2 + 88), v6);
  sub_100059B74(v4, v5, v7, &off_1000A7F38);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10002EC78(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v2[7] = *(*v1 + 88);
  v2[8] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[9] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v2[10] = v7;
  v8 = sub_10008767C();
  v2[11] = v8;
  v2[12] = *(v8 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = *(v7 - 8);
  v2[15] = swift_task_alloc();
  sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  v2[16] = swift_task_alloc();
  v9 = sub_1000864CC();
  v2[17] = v9;
  v2[18] = *(v9 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  sub_1000873FC();
  v2[21] = sub_1000873EC();
  v11 = sub_1000873DC();
  v2[22] = v11;
  v2[23] = v10;

  return _swift_task_switch(sub_10002EEFC, v11, v10);
}

uint64_t sub_10002EEFC()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  sub_100028D0C();
  (*(v4 + 104))(v2, enum case for BetaEnrollment.Availability.unavailable(_:), v3);
  sub_1000312FC(&qword_1000AE978, &type metadata accessor for BetaEnrollment.Availability, &protocol conformance descriptor for BetaEnrollment.Availability);
  sub_10008729C();
  sub_10008729C();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  if (*(v0 + 16) == *(v0 + 24))
  {
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);

    v10 = type metadata accessor for BetaSettingsRowViewModel(0, v8, v7, v9);
    sub_100059B74(0xD000000000000025, 0x800000010008EFD0, v10, &off_1000A7F38);
LABEL_23:

    v53 = *(v0 + 8);

    return v53();
  }

  v11 = type metadata accessor for BetaSettingsRowViewModel(0, *(v0 + 64), *(v0 + 56), v6);
  *(v0 + 192) = v11;
  WitnessTable = swift_getWitnessTable();
  if (sub_1000273A4(v11, WitnessTable))
  {
    v13 = *(v0 + 128);
    v14 = *(v0 + 48);
    sub_100059B74(0xD000000000000012, 0x800000010008EFB0, v11, &off_1000A7F38);
    v15 = enum case for BetaEnrollment.State.enrolling(_:);
    v16 = sub_10008672C();
    v17 = *(v16 - 8);
    (*(v17 + 104))(v13, v15, v16);
    (*(v17 + 56))(v13, 0, 1, v16);
    sub_10002987C(v13);
    v18 = *(v14 + 16);
    if (v18)
    {
      v19 = *(v0 + 40);
      *(v0 + 32) = v18;
      v20 = swift_task_alloc();
      v20[1] = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
      v20[2].i64[0] = v19;
      sub_10008739C();

      swift_getWitnessTable();
      v21 = sub_10008783C();

      v22 = v21;
    }

    else
    {
      v22 = sub_10008732C();
    }

    *(v0 + 200) = v22;
    if (sub_10008738C())
    {
      v32 = sub_10008734C();
      sub_1000872FC();
      if (v32)
      {
        v33 = *(*(v0 + 200) + 32);
      }

      else
      {
        v33 = sub_10008780C();
      }

      *(v0 + 208) = v33;
      *(v0 + 216) = 1;
      v34 = swift_task_alloc();
      *(v0 + 224) = v34;
      *v34 = v0;
      v34[1] = sub_10002F6C8;
      v35 = *(v0 + 40);

      return sub_10002EC78(v35);
    }

LABEL_22:
    sub_10002FD4C();
    goto LABEL_23;
  }

  v23 = *(v0 + 104);
  v24 = *(v0 + 112);
  v25 = *(v0 + 80);
  (*(*(v0 + 96) + 16))(v23, *(v0 + 48) + *(**(v0 + 48) + 184), *(v0 + 88));
  if ((*(v24 + 48))(v23, 1, v25) == 1)
  {
    v27 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = *(v0 + 88);

    (*(v27 + 8))(v26, v28);
    goto LABEL_22;
  }

  v29 = *(v0 + 120);
  v30 = *(v0 + 80);
  (*(*(v0 + 112) + 32))(v29, *(v0 + 104), v30);
  v31 = v29 + *(v30 + 48);
  if ((*(v31 + 8) & 1) == 0 && *v31 == *(v0 + 40))
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 80));

    goto LABEL_22;
  }

  v38 = *(v0 + 120);
  v37 = *(v0 + 128);
  v39 = *(v0 + 72);
  v40 = *(v0 + 80);
  v41 = *(v0 + 48);
  v55 = *(v0 + 56);
  v42 = enum case for BetaEnrollment.State.enrolling(_:);
  v43 = sub_10008672C();
  v44 = *(v43 - 8);
  (*(v44 + 104))(v37, v42, v43);
  (*(v44 + 56))(v37, 0, 1, v43);
  sub_10002987C(v37);
  *(v0 + 240) = *(v41 + qword_1000AE818);
  sub_100030948(v39, v39);
  v45 = *(v39 - 8);
  swift_allocObject();
  swift_unknownObjectRetain();
  v46 = sub_1000872EC();
  (*(v45 + 16))(v47, v38 + *(v40 + 44), v39);
  v48 = sub_100013630(v46, v39);
  *(v0 + 248) = v48;
  v54 = (*(v55 + 80) + **(v55 + 80));
  v49 = swift_task_alloc();
  *(v0 + 256) = v49;
  *v49 = v0;
  v49[1] = sub_10002F98C;
  v51 = *(v0 + 56);
  v50 = *(v0 + 64);
  v52 = *(v0 + 40);

  return v54(v52, v48, v50, v51);
}

uint64_t sub_10002F6C8()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {

    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_10002FBC0;
  }

  else
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_10002F7E4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10002F7E4()
{
  v1 = v0[27];

  if (v1 == sub_10008738C())
  {

    sub_10002FD4C();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[27];
    v5 = sub_10008734C();
    sub_1000872FC();
    if (v5)
    {
      v6 = *(v0[25] + 8 * v4 + 32);
    }

    else
    {
      result = sub_10008780C();
      v6 = result;
    }

    v0[26] = v6;
    v0[27] = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v7 = swift_task_alloc();
      v0[28] = v7;
      *v7 = v0;
      v7[1] = sub_10002F6C8;
      v8 = v0[5];

      return sub_10002EC78(v8);
    }
  }

  return result;
}

uint64_t sub_10002F98C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_10002FC7C;
  }

  else
  {
    v5 = sub_10002FAFC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002FAFC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  sub_10002FD4C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002FBC0()
{

  sub_10002FD4C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002FC7C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  sub_10002FD4C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002FD4C()
{
  v0 = sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_10008672C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_10002987C(v2);
}

uint64_t sub_10002FE3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002740;

  return sub_10002CD74();
}

uint64_t sub_10002FED0()
{
  v1 = *(*v0 + 24);

  return v1;
}

uint64_t sub_10002FF04()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t sub_10002FF38@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for BetaSettingsRowViewModel(0, *(a1 + 80), *(a1 + 88), a3);
  result = sub_1000877FC();
  *a4 = result;
  return result;
}

uint64_t sub_10002FF80@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for BetaSettingsRowViewModel(0, *(a1 + 80), *(a1 + 88), a3);
  result = sub_10008676C();
  *a4 = result;
  return result;
}

uint64_t sub_10002FFE0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100030040@<X0>(uint64_t a1@<X0>, void *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = a1 + *(_s11DeviceModelVMa(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8) + 40);
  v10 = *(v9 + 40);
  *a4 = *(v9 + 32);
  a4[1] = v10;
}

uint64_t sub_1000300F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  sub_10008739C();

  sub_1000870FC();
}

uint64_t sub_1000301E4@<X0>(uint64_t *a1@<X0>, uint64_t *a4@<X8>)
{
  v32 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v9 = sub_10008767C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v31 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v30 = *a1;
  v33 = v30;
  sub_10008739C();
  WitnessTable = swift_getWitnessTable();
  sub_1000875CC();
  v15 = *(v8 - 8);
  v16 = *(v15 + 48);
  if (v16(v14, 1, v8) == 1)
  {
    (*(v10 + 8))(v14, v9);
  }

  else
  {
    v27 = v10;
    v28 = v9;
    v17 = &v14[*(v8 + 40)];
    v18 = v17[1];
    v20 = v17[2];
    v19 = v17[3];
    sub_100033360(*v17, v18, v20, v19);
    (*(v15 + 8))(v14, v8);
    if (v18)
    {
      goto LABEL_8;
    }

    v10 = v27;
    v9 = v28;
  }

  v21 = v31;
  v33 = v30;
  sub_1000875CC();
  if (v16(v21, 1, v8) == 1)
  {
    v20 = 0x656D614E206F4ELL;
    result = (*(v10 + 8))(v21, v9);
LABEL_10:
    v19 = 0xE700000000000000;
    goto LABEL_11;
  }

  v23 = &v21[*(v8 + 40)];
  v24 = v23[9];
  v20 = v23[10];
  v19 = v23[11];
  sub_100033360(v23[8], v24, v20, v19);
  result = (*(v15 + 8))(v21, v8);
  if (!v24)
  {
    v20 = 0x656D614E206F4ELL;
    goto LABEL_10;
  }

LABEL_8:

LABEL_11:
  v25 = v32;
  *v32 = v20;
  v25[1] = v19;
  return result;
}

uint64_t sub_100030504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  type metadata accessor for BetaSettingsRowViewModel(0, a3, a4, a4);
  swift_unknownObjectRetain();
  v10 = sub_100033D18(a1, a2, v8, v9);
  result = swift_unknownObjectRelease();
  *a5 = v10;
  return result;
}

uint64_t sub_100030578(uint64_t a1)
{
  v2 = sub_10008672C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = sub_1000864CC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  sub_100028D0C();
  sub_100029070();
  (*(v9 + 104))(v12, enum case for BetaEnrollment.Availability.unavailable(_:), v8);
  sub_1000312FC(&qword_1000AE978, &type metadata accessor for BetaEnrollment.Availability, &protocol conformance descriptor for BetaEnrollment.Availability);
  sub_10008729C();
  sub_10008729C();
  v15 = *(v9 + 8);
  v15(v12, v8);
  v25 = v7;
  if (v26 == v28)
  {
    v21 = a1;
    v22 = v15;
    v16 = v24;
    (*(v3 + 104))(v24, enum case for BetaEnrollment.State.enrolled(_:), v2);
    sub_1000312FC(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
    sub_10008729C();
    sub_10008729C();
    v17 = *(v3 + 8);
    v17(v16, v2);
    if (v26 == v28)
    {
      v26 = 0;
      v27 = 0xE000000000000000;
      v24 = v2;
      sub_1000877DC(73);
      v29._object = 0x800000010008F040;
      v29._countAndFlagsBits = 0xD000000000000047;
      sub_1000871BC(v29);
      v28 = v21;
      v19 = type metadata accessor for BetaSettingsRowViewModel(0, *(v23 + 80), *(v23 + 88), v18);
      sub_1000879EC();
      sub_100059920(v26, v27, v19, &off_1000A7F38);

      sub_100028588();
      v2 = v24;
    }

    v15 = v22;
  }

  else
  {
    v17 = *(v3 + 8);
  }

  v17(v25, v2);
  return (v15)(v14, v8);
}

uint64_t sub_100030948(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100001EEC(qword_1000AE698, &qword_10008A118);
  }

  else
  {

    return sub_1000879DC();
  }
}

void *sub_1000309BC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_100030E48(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100030A4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100001EEC(&qword_1000AE9C8, &qword_10008A890);
  result = sub_1000877CC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_100087ACC();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100030C38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100001EEC(&qword_1000AE9E0, qword_10008AA08);
  result = sub_1000877CC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_100087ADC();
    sub_100087AEC(v16);
    result = sub_100087AFC();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100030E48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 8 * v31);
      result = sub_100087ACC();
      v33 = -1 << *(a4 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(a4 + 48) + 8 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_100030A4C(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 8 * (v12 | (v6 << 6)));
      result = sub_100087ACC();
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 8 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 8 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(a4 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_10003112C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000324C;

  return sub_10002D118(a1);
}

uint64_t sub_100031208()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100031248(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000324C;

  return sub_10002B864(a1);
}

uint64_t sub_1000312FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000313EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = sub_10008767C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v29 - v14;
  v16 = *(v10 - 8);
  __chkstk_darwin(v13);
  v19 = v29 - v18;
  v31 = a2;
  if (a2 && (v32 = v31, type metadata accessor for BetaSettingsRowViewModel(255, a3, a4, v17), v20 = sub_10008739C(), swift_getWitnessTable(), v29[1] = v20, v21 = sub_1000875DC(), (v21 & 1) == 0))
  {
    v32 = v31;
    __chkstk_darwin(v21);
    v29[-2] = v25;
    v29[-1] = a4;
    swift_getKeyPath();
    swift_getWitnessTable();
    v26 = sub_10008722C();

    v27 = sub_100082D20(v26);

    if (!*(v27 + 16))
    {

      return 0;
    }

    v32 = v27;
    sub_100001EEC(&qword_1000AE9D0, &qword_10008A8D0);
    sub_100006454(&qword_1000AE9D8, &qword_1000AE9D0, &qword_10008A8D0, &protocol conformance descriptor for Set<A>);
    sub_1000064FC();
    v24 = sub_10008728C();
  }

  else
  {
    (*(v12 + 16))(v15, v30, v11);
    if ((*(v16 + 48))(v15, 1, v10) == 1)
    {
      (*(v12 + 8))(v15, v11);
      return 0;
    }

    (*(v16 + 32))(v19, v15, v10);
    v22 = &v19[*(v10 + 40)];
    v23 = v22[13];
    v24 = v22[14];
    sub_100033360(v22[12], v23, v24, v22[15]);
    (*(v16 + 8))(v19, v10);
    if (!v23)
    {
      return 0;
    }
  }

  return v24;
}

uint64_t sub_10003182C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = sub_10008767C();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v86 - v14;
  v16 = *(v10 - 8);
  __chkstk_darwin(v13);
  v18 = &v86 - v17;
  v93[3] = &type metadata for Feature;
  v93[4] = sub_10000DF68();
  v19 = sub_1000860AC();
  sub_100001FF8(v93);
  result = 0;
  if ((v19 & 1) == 0)
  {
    return result;
  }

  v90 = a1;
  if (!v91 || (v93[0] = v91, type metadata accessor for BetaSettingsRowViewModel(255, a3, a4, v20), sub_10008739C(), swift_getWitnessTable(), v22 = sub_1000875DC(), (v22 & 1) != 0))
  {
    (*(v12 + 16))(v15, v90, v11);
    if ((*(v16 + 48))(v15, 1, v10) != 1)
    {
      (*(v16 + 32))(v18, v15, v10);
      v23 = *&v18[*(v10 + 52)];
      v24 = *(v16 + 8);

      v24(v18, v10);
      return v23;
    }

    (*(v12 + 8))(v15, v11);
    return 0;
  }

  v93[0] = v91;
  __chkstk_darwin(v22);
  *(&v86 - 2) = a3;
  *(&v86 - 1) = a4;
  sub_100001EEC(&qword_1000ADE30, &qword_100088A48);
  swift_getWitnessTable();
  v25 = sub_10008722C();
  v88 = v25;
  v89 = 0;
  v26 = *(v25 + 16);
  if (v26)
  {
    v93[0] = _swiftEmptyArrayStorage;
    sub_10006F6C8(0, v26, 0);
    v27 = 0;
    v28 = v93[0];
    v86 = v26;
    v87 = v25 + 32;
    v29 = -1;
    while (1)
    {
      if (v27 >= *(v25 + 16))
      {
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v30 = *(v87 + 8 * v27);
      if (v30 >> 62)
      {
        v31 = sub_10008793C();
        v90 = v27;
        v91 = v28;
        if (v31)
        {
LABEL_12:
          v92 = _swiftEmptyArrayStorage;

          sub_10006F708(0, v31 & ~(v31 >> 63), 0);
          if (v31 < 0)
          {
            goto LABEL_70;
          }

          v32 = 0;
          v33 = v92;
          do
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              v34 = sub_10008781C();
            }

            else
            {
              v34 = *(v30 + 8 * v32 + 32);
            }

            v35 = v34;
            v36 = sub_10008648C();

            v92 = v33;
            v38 = v33[2];
            v37 = v33[3];
            v39 = v38 + 1;
            if (v38 >= v37 >> 1)
            {
              sub_10006F708((v37 > 1), v38 + 1, 1);
              v39 = v38 + 1;
              v33 = v92;
            }

            ++v32;
            v33[2] = v39;
            v33[v38 + 4] = v36;
          }

          while (v31 != v32);
          goto LABEL_23;
        }
      }

      else
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v90 = v27;
        v91 = v28;
        if (v31)
        {
          goto LABEL_12;
        }
      }

      v33 = _swiftEmptyArrayStorage;
LABEL_23:
      v40 = sub_1000874DC();
      v41 = v40;
      v42 = v33[2];
      if (v42)
      {
        v43 = 0;
        v44 = (v40 + 56);
        do
        {
          while (1)
          {
            v45 = v33[v43++ + 4];
            v46 = sub_100087ACC();
            v47 = -1 << *(v41 + 32);
            v48 = v46 & ~v47;
            if ((*(v44 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
            {
              break;
            }

LABEL_30:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v92 = v41;
            sub_100080DFC(v45, v48, isUniquelyReferenced_nonNull_native);
            v41 = v92;
            if (v43 == v42)
            {
              goto LABEL_32;
            }

            v44 = v92 + 7;
          }

          v49 = ~v47;
          while (*(v41[6] + 8 * v48) != v45)
          {
            v48 = (v48 + 1) & v49;
            if (((*(v44 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
            {
              goto LABEL_30;
            }
          }
        }

        while (v43 != v42);
      }

LABEL_32:

      v51 = v90;
      v28 = v91;
      v93[0] = v91;
      v53 = *(v91 + 16);
      v52 = *(v91 + 24);
      v54 = v53 + 1;
      v55 = v86;
      if (v53 >= v52 >> 1)
      {
        sub_10006F6C8((v52 > 1), v53 + 1, 1);
        v28 = v93[0];
      }

      v27 = v51 + 1;
      v28[2] = v54;
      v28[v53 + 4] = v41;
      v25 = v88;
      if (v27 == v55)
      {
        goto LABEL_37;
      }
    }
  }

  v28 = _swiftEmptyArrayStorage;
  v54 = _swiftEmptyArrayStorage[2];
  if (!v54)
  {
LABEL_66:

    return 0;
  }

LABEL_37:
  v29 = v28[4];

  v56 = v54 - 1;
  v91 = v28;
  if (v54 == 1)
  {
LABEL_38:

    if (*(v29 + 16) && *(v88 + 16))
    {
      v57 = *(v88 + 32);

      v93[0] = _swiftEmptyArrayStorage;
      v91 = v57;
      if (v57 >> 62)
      {
        goto LABEL_73;
      }

      for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10008793C())
      {
        v59 = 0;
        v60 = v91 & 0xC000000000000001;
        v61 = v91 & 0xFFFFFFFFFFFFFF8;
        v62 = v91 + 32;
        v63 = v29 + 56;
        while (1)
        {
          if (v60)
          {
            v64 = sub_10008781C();
          }

          else
          {
            if (v59 >= *(v61 + 16))
            {
              goto LABEL_72;
            }

            v64 = *(v62 + 8 * v59);
          }

          v65 = v64;
          if (__OFADD__(v59++, 1))
          {
            break;
          }

          v67 = sub_10008648C();
          if (*(v29 + 16) && (v68 = v67, v69 = sub_100087ACC(), v70 = -1 << *(v29 + 32), v71 = v69 & ~v70, ((*(v63 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) != 0))
          {
            v72 = ~v70;
            while (*(*(v29 + 48) + 8 * v71) != v68)
            {
              v71 = (v71 + 1) & v72;
              if (((*(v63 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            sub_10008784C();
            sub_10008788C();
            sub_10008789C();
            sub_10008785C();
            if (v59 == i)
            {
              goto LABEL_74;
            }
          }

          else
          {
LABEL_43:

            if (v59 == i)
            {
              goto LABEL_74;
            }
          }
        }

LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        ;
      }

LABEL_74:

      return v93[0];
    }

    goto LABEL_66;
  }

  v73 = v28 + 5;
  while (1)
  {
    v74 = *v73;
    v75 = *(v29 + 32);
    v76 = v75 & 0x3F;
    v77 = ((1 << v75) + 63) >> 6;
    v78 = 8 * v77;
    swift_bridgeObjectRetain_n();

    if (v76 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    v83 = swift_slowAlloc();

    v84 = v89;
    v85 = sub_1000309BC(v83, v77, v29, v74);
    v89 = v84;
    if (v84)
    {
      goto LABEL_76;
    }

    v82 = v85;

    swift_bridgeObjectRelease_n();

LABEL_61:
    v29 = v82;

    ++v73;
    if (!--v56)
    {
      goto LABEL_38;
    }
  }

  __chkstk_darwin(isStackAllocationSafe);
  bzero(&v86 - ((v78 + 15) & 0x3FFFFFFFFFFFFFF0), v78);
  v80 = v89;
  v81 = sub_100030E48(&v86 - ((v78 + 15) & 0x3FFFFFFFFFFFFFF0), v77, v29, v74);
  v89 = v80;
  if (!v80)
  {
    v82 = v81;

    goto LABEL_61;
  }

  swift_willThrow();

  __break(1u);
LABEL_76:

  __break(1u);
  return result;
}

unint64_t sub_10003220C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v47 = a3;
  v48 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = _s11DeviceModelVMa(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v12 = sub_10008767C();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = __chkstk_darwin(v12);
  v44 = &v40 - v14;
  v15 = *(v11 - 8);
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v18 = sub_10008672C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = &type metadata for Feature;
  v50[4] = sub_10000DF68();
  LOBYTE(AssociatedTypeWitness) = sub_1000860AC();
  sub_100001FF8(v50);
  if ((AssociatedTypeWitness & 1) == 0)
  {
    return 0;
  }

  v40 = v17;
  v41 = a1;
  v42 = v15;
  v43 = v11;
  v22 = *(v19 + 104);
  v22(v21, enum case for BetaEnrollment.State.notEnrolled(_:), v18);
  sub_1000312FC(qword_1000ADD68, &type metadata accessor for BetaEnrollment.State, &protocol conformance descriptor for BetaEnrollment.State);
  sub_10008729C();
  sub_10008729C();
  v23 = *(v19 + 8);
  v23(v21, v18);
  if (v50[0] == v49)
  {
    return 0;
  }

  v22(v21, enum case for BetaEnrollment.State.multiple(_:), v18);
  sub_10008729C();
  sub_10008729C();
  v23(v21, v18);
  if (v50[0] == v49)
  {
    return 0;
  }

  v25 = v47;
  if (v47)
  {
    v50[0] = v47;
    type metadata accessor for BetaSettingsRowViewModel(255, a4, a5, v24);
    sub_10008739C();
    swift_getWitnessTable();
    v26 = sub_1000875DC();
    if ((v26 & 1) == 0)
    {
      v50[0] = v25;
      __chkstk_darwin(v26);
      *(&v40 - 2) = a4;
      *(&v40 - 1) = a5;
      swift_getKeyPath();
      swift_getWitnessTable();
      v38 = sub_10008722C();

      if ((sub_100012298(v38, v38) & 1) != 0 && *(v38 + 16))
      {
        v39 = *(v38 + 32);

        return v39;
      }

      return 0;
    }
  }

  v28 = v44;
  v27 = v45;
  v29 = v46;
  (*(v45 + 16))(v44, v41, v46);
  v31 = v42;
  v30 = v43;
  if ((*(v42 + 48))(v28, 1, v43) == 1)
  {
    (*(v27 + 8))(v28, v29);
    return 0;
  }

  v32 = v40;
  (*(v31 + 32))(v40, v28, v30);
  v33 = &v32[*(v30 + 48)];
  if (v33[8] != 1)
  {
    v34 = *v33;
    goto LABEL_24;
  }

  v34 = *&v32[*(v30 + 52)];
  if (!v34)
  {
LABEL_24:
    (*(v31 + 8))(v32, v30);
    return v34;
  }

  if (!(v34 >> 62))
  {
    result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

LABEL_23:
    v34 = 0;
    goto LABEL_24;
  }

  result = sub_10008793C();
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_12:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = sub_10008781C();
    goto LABEL_15;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v34 + 32);
LABEL_15:
    v37 = v36;
    v34 = sub_10008648C();

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void *sub_1000327E4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v78 = a5;
  v74 = a4;
  v80 = a2;
  v81 = a3;
  v75 = a1;
  v7 = *v5;
  v71 = sub_100001EEC(&qword_1000AE990, &qword_10008A778);
  v79 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = v61 - v8;
  v9 = sub_100001EEC(&qword_1000AE998, &unk_10008A780);
  v76 = *(v9 - 8);
  v77 = v9;
  __chkstk_darwin(v9);
  v68 = v61 - v10;
  v82 = sub_100001EEC(&qword_1000AE9A0, &qword_10008BC70);
  v67 = *(v82 - 8);
  __chkstk_darwin(v82);
  v66 = v61 - v11;
  v73 = sub_100001EEC(&qword_1000AE9A8, &unk_10008A790);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v65 = v61 - v12;
  v64 = sub_10008672C();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001EEC(&qword_1000AE600, &unk_10008D650);
  v69 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v61 - v16;
  v18 = sub_100001EEC(&qword_1000AE9B0, &unk_10008A7A0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v61 - v20;
  v22 = sub_1000864CC();
  __chkstk_darwin(v22);
  v24 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 40) = 2;
  v25 = qword_1000AE7E8;
  (*(v26 + 104))(v24, enum case for BetaEnrollment.Availability.unavailable(_:));
  v62 = *(v7 + 80);
  v27 = *(v7 + 88);
  sub_100028F20(v24, v28, v29, &type metadata accessor for BetaEnrollment.Availability);
  v61[0] = v19;
  v30 = *(v19 + 32);
  v61[1] = v18;
  v30(v6 + v25, v21, v18);
  v31 = qword_1000AE7F0;
  v85 = 0;
  v86 = 0;
  sub_100001EEC(&qword_1000AE610, &unk_10008C960);
  sub_1000867AC();
  v32 = *(v69 + 32);
  v61[2] = v15;
  v32(v6 + v31, v17, v15);
  v33 = qword_1000AE7F8;
  v34 = v63;
  v35 = v64;
  (*(v63 + 104))(v14, enum case for BetaEnrollment.State.notEnrolled(_:), v64);
  v36 = v65;
  sub_100028F20(v14, v37, v38, &type metadata accessor for BetaEnrollment.State);
  v39 = v62;
  (*(v72 + 32))(v6 + v33, v36, v73);
  v40 = qword_1000AE800;
  v85 = 0;
  v86 = 0xE000000000000000;
  v41 = v66;
  sub_1000867AC();
  v42 = v67;
  (*(v67 + 32))(v6 + v40, v41, v82);
  v43 = qword_1000AE808;
  v85 = 0;
  sub_100001EEC(&qword_1000AE8C8, &unk_10008A5A0);
  v44 = v68;
  sub_1000867AC();
  (*(v76 + 32))(v6 + v43, v44, v77);
  v45 = qword_1000AE810;
  v85 = 0;
  LOBYTE(v86) = 1;
  sub_100001EEC(&qword_1000ADD60, &qword_100088920);
  v46 = v70;
  sub_1000867AC();
  (*(v79 + 32))(v6 + v45, v46);
  (*(v34 + 56))(v6 + *(*v6 + 192), 1, 1, v35);
  v47 = v74;
  v85 = v74;
  v83 = v39;
  v84 = v27;
  type metadata accessor for BetaSettingsRowViewModel(255, v39, v27, v48);
  sub_10008739C();
  swift_getWitnessTable();
  v49 = sub_10008722C();
  LOBYTE(v46) = v75 & 1;
  *(v6 + 40) = v75 & 1;
  v6[2] = v47;
  *(v6 + qword_1000AE818) = v78;
  v51 = v80;
  v50 = v81;
  v6[3] = v80;
  v6[4] = v50;
  swift_unknownObjectRetain();

  v52 = sub_100028918(v49, v46);
  v54 = v53;

  v6[6] = v52;
  v6[7] = v54;
  swift_beginAccess();
  (*(v42 + 8))(v6 + v40, v82);
  v87 = v51;
  v88 = v50;
  sub_1000867AC();
  swift_endAccess();
  v55 = *(*v6 + 184);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59 = _s11DeviceModelVMa(0, AssociatedTypeWitness, AssociatedConformanceWitness, v58);
  (*(*(v59 - 8) + 56))(v6 + v55, 1, 1, v59);
  sub_100029FA4();
  return v6;
}

void *sub_100033270(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for BetaSettingsRowViewModel(0, *(v5 + 80), *(v5 + 88), a4);
  swift_allocObject();
  return sub_1000327E4(a1 & 1, a2, a3, a4, a5);
}

double sub_1000332E4(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1000332FC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100033314(uint64_t *a1)
{
  v2 = *(v1 + 24);
  sub_100030578(*a1);
  return sub_100029B08(v2);
}

void sub_100033360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_1000333A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t *sub_100033460(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v87 = a1;
  v76 = *v2;
  v3 = sub_100001EEC(&qword_1000AE990, &qword_10008A778);
  v85 = *(v3 - 8);
  v86 = v3;
  __chkstk_darwin(v3);
  v84 = &v69 - v4;
  v5 = sub_100001EEC(&qword_1000AE998, &unk_10008A780);
  v82 = *(v5 - 8);
  v83 = v5;
  __chkstk_darwin(v5);
  v81 = &v69 - v6;
  v7 = sub_100001EEC(&qword_1000AE9A0, &qword_10008BC70);
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v77 = &v69 - v8;
  v9 = sub_100001EEC(&qword_1000AE9A8, &unk_10008A790);
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v73 = &v69 - v10;
  v11 = sub_10008672C();
  v70 = *(v11 - 8);
  v71 = v11;
  __chkstk_darwin(v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001EEC(&qword_1000AE600, &unk_10008D650);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v69 - v16;
  v18 = sub_100001EEC(&qword_1000AE9B0, &unk_10008A7A0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v69 - v20;
  v22 = sub_1000864CC();
  __chkstk_darwin(v22);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 40) = 2;
  v25 = qword_1000AE7E8;
  (*(v26 + 104))(v24, enum case for BetaEnrollment.Availability.unavailable(_:));
  v72 = *(v76 + 80);
  v76 = *(v76 + 88);
  sub_100028F20(v24, v27, v28, &type metadata accessor for BetaEnrollment.Availability);
  v29 = v21;
  v30 = v78;
  (*(v19 + 32))(v2 + v25, v29, v18);
  v31 = qword_1000AE7F0;
  v88 = 0;
  v89 = 0;
  sub_100001EEC(&qword_1000AE610, &unk_10008C960);
  sub_1000867AC();
  (*(v15 + 32))(v2 + v31, v17, v14);
  v32 = qword_1000AE7F8;
  v34 = v70;
  v33 = v71;
  (*(v70 + 104))(v13, enum case for BetaEnrollment.State.notEnrolled(_:), v71);
  v35 = v73;
  sub_100028F20(v13, v36, v37, &type metadata accessor for BetaEnrollment.State);
  (*(v74 + 32))(v2 + v32, v35, v75);
  v38 = qword_1000AE800;
  v88 = 0;
  v89 = 0xE000000000000000;
  v39 = v77;
  sub_1000867AC();
  (*(v79 + 32))(v2 + v38, v39, v80);
  v40 = qword_1000AE808;
  v88 = 0;
  sub_100001EEC(&qword_1000AE8C8, &unk_10008A5A0);
  v41 = v81;
  sub_1000867AC();
  (*(v82 + 32))(v2 + v40, v41, v83);
  v42 = qword_1000AE810;
  v88 = 0;
  LOBYTE(v89) = 1;
  sub_100001EEC(&qword_1000ADD60, &qword_100088920);
  v43 = v84;
  sub_1000867AC();
  (*(v85 + 32))(v2 + v42, v43, v86);
  (*(v34 + 56))(v2 + *(*v2 + 192), 1, 1, v33);
  v44 = v76;
  v45 = v72;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 = _s11DeviceModelVMa(0, AssociatedTypeWitness, AssociatedConformanceWitness, v48);
  v50 = v87;
  v51 = (v87 + *(v49 + 40));
  v52 = v51[6];
  v53 = v51[7];

  v54 = sub_1000676B0(v52, v53);
  type metadata accessor for BetaSettingsRowViewModel(0, v45, v44, v55);
  v2[2] = sub_10008732C();
  *(v2 + qword_1000AE818) = v30;
  v56 = *(*v2 + 184);
  v57 = *(v49 - 8);
  (*(v57 + 16))(v2 + v56, v50, v49);
  (*(v57 + 56))(v2 + v56, 0, 1, v49);
  v59 = v51[4];
  v58 = v51[5];
  v2[3] = v59;
  v2[4] = v58;
  if (v54 <= 0xFDu)
  {
    if ((v54 & 0x80u) == 0)
    {
      v62 = 17;
    }

    else
    {
      v62 = 18;
    }

    if ((v54 & 0x80u) == 0)
    {
      v63 = 15;
    }

    else
    {
      v63 = 16;
    }

    if (v54)
    {
      v64 = v63;
    }

    else
    {
      v64 = v62;
    }

    swift_unknownObjectRetain();

    v60 = &off_1000A62A8;
    v61 = v64;
  }

  else
  {
    swift_unknownObjectRetain();

    v60 = &off_1000A66E8;
    v61 = 15;
  }

  v2[6] = sub_10000F8C4(v60, v61);
  v2[7] = v65;
  if (v51[1])
  {
    v66 = 2;
    v67 = 3;
LABEL_17:
    v58 = v51[v67];
    v59 = v51[v66];
    goto LABEL_18;
  }

  if (v51[9])
  {
    v66 = 10;
    v67 = 11;
    goto LABEL_17;
  }

LABEL_18:

  sub_1000293BC(v59, v58);
  sub_100029FA4();
  return v2;
}

uint64_t *sub_100033D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BetaSettingsRowViewModel(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_100033460(a1, a2);
}

uint64_t sub_100033D6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100033DA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100033DEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002740;

  return sub_10002E7B8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100033EB4()
{
  v1 = *(v0 + 32);
  v2 = sub_10002968C() != v1;
  return (v3 | v2) & 1;
}

__n128 sub_100033F6C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100033F78@<X0>(uint64_t a1@<X8>)
{
  result = sub_10002968C();
  if (v3)
  {
    v4 = -1;
  }

  else
  {
    v4 = result;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_100034048@<X0>(uint64_t a1@<X8>)
{
  result = sub_10002968C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void *sub_1000340D8@<X0>(void *a1@<X8>)
{
  result = sub_1000294C8();
  v3 = _swiftEmptyArrayStorage;
  if (result)
  {
    v3 = result;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_100034124@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100028D98();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100034150(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100028E4C(v1, v2);
}

uint64_t sub_10003419C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EEC(&qword_1000AE970, &unk_10008A740);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003420C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000294C8();
  *a1 = result;
  return result;
}

uint64_t sub_100034270@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100029308();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003429C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000293BC(v1, v2);
}

uint64_t getEnumTagSinglePayload for Entitlement(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Entitlement(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100034424()
{
  result = qword_1000AE9E8;
  if (!qword_1000AE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE9E8);
  }

  return result;
}

Swift::Int sub_100034480()
{
  sub_100087ADC();
  sub_100087AEC(0);
  return sub_100087AFC();
}

Swift::Int sub_1000344EC(uint64_t a1)
{
  sub_100087ADC();
  sub_100087AEC(0);
  return sub_100087AFC();
}

void *sub_1000345C4(uint64_t a1, uint64_t (*a2)(void, void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = *(sub_100001EEC(a3, a4) - 8);
  v10 = sub_100036C10(&v12, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v5, a1, a3, a4);
  sub_100023AA8(v12);
  if (v10 != v5)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

uint64_t sub_1000346B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = v10 - v6 + 16;
  v12 = a1;

  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v10[8] = 0;
  swift_beginAccess();
  sub_10006C118(v10, v11);
  swift_endAccess();
}

uint64_t sub_100034868()
{
  *(v0 + 24) = *(*(v0 + 16) + 112);

  return _swift_task_switch(sub_1000348DC, 0, 0);
}

uint64_t sub_1000348DC()
{
  v1 = *(v0 + 24);
  if ((*(v1 + 40) & 1) == 0)
  {
    *(v1 + 40) = 1;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100034954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = v10 - v6 + 16;
  v11 = a1;

  sub_1000877EC();
  swift_getAssociatedConformanceWitness();
  sub_10008799C();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  swift_beginAccess();
  sub_10006C438(v12, v10);
  sub_100036E90(v10);
  sub_10000649C(v12, &qword_1000AEA68, &unk_10008CFB0);
  swift_endAccess();
}

uint64_t sub_100034AF4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_100001EEC(&qword_1000AEA58, qword_10008D310);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = sub_10008609C();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100034C44, v2, 0);
}

uint64_t sub_100034C70(unint64_t a1)
{
  v3 = *(v1 + 160) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 168) = v5;
  *v5 = v1;
  v5[1] = sub_100034D58;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_100034D58()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 80);

    return _swift_task_switch(sub_100034ED0, v6, 0);
  }
}

unint64_t sub_100034ED0()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[17];
    v43 = v0[11];
    v44 = v0[12];
    v52 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = (v3 + 8);
    v45 = v5;
    v51 = (v3 + 8);
    while (1)
    {
      v7 = v0[10];
      v52(v0[19], v4, v0[16]);
      v8 = *(v7 + 112);
      swift_beginAccess();
      v9 = *(v8 + 24);
      if (!*(v9 + 16))
      {
        goto LABEL_4;
      }

      v10 = v0[19];

      v11 = sub_10006E66C(v10);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = v0[15];
      v48 = v0[16];
      v49 = v0[19];
      v14 = v0[14];
      v50 = v0[13];
      v15 = v0[10];
      v16 = v0[8];
      v46 = *(v44 + 72);
      v47 = v0[18];
      sub_10000E4A4(*(v9 + 56) + v46 * v11, v14, &qword_1000AEA58, qword_10008D310);

      sub_100036EF8(v14, v13, &qword_1000AEA58, qword_10008D310);
      v17 = *(v43 + 36);
      v18 = sub_10008672C();
      (*(*(v18 - 8) + 24))(v13 + v17, v16, v18);
      v19 = *(v15 + 112);
      v52(v47, v49, v48);
      swift_beginAccess();
      sub_10000E4A4(v13, v50, &qword_1000AEA58, qword_10008D310);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v19 + 24);
      *(v19 + 24) = 0x8000000000000000;
      result = sub_10006E66C(v47);
      v24 = v21[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v28 = v23;
      if (v21[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v41 = result;
          sub_100073944();
          result = v41;
        }
      }

      else
      {
        v29 = v0[18];
        sub_100070D14(v27, isUniquelyReferenced_nonNull_native);
        result = sub_10006E66C(v29);
        if ((v28 & 1) != (v30 & 1))
        {

          return sub_100087A5C();
        }
      }

      v31 = v0[18];
      v32 = v0[16];
      v33 = v0[13];
      if (v28)
      {
        sub_100036B8C(v33, v21[7] + result * v46);
        v34 = *v51;
        (*v51)(v31, v32);
      }

      else
      {
        v21[(result >> 6) + 8] |= 1 << result;
        v35 = result;
        v52(v21[6] + result * v45, v31, v32);
        sub_100036EF8(v33, v21[7] + v35 * v46, &qword_1000AEA58, qword_10008D310);
        v34 = *v51;
        result = (*v51)(v31, v32);
        v36 = v21[2];
        v26 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v26)
        {
          goto LABEL_26;
        }

        v21[2] = v37;
      }

      v38 = v0[19];
      v40 = v0[15];
      v39 = v0[16];
      *(v19 + 24) = v21;

      swift_endAccess();

      v34(v38, v39);
      sub_10000649C(v40, &qword_1000AEA58, qword_10008D310);
      v5 = v45;
      v6 = v51;
LABEL_5:
      v4 += v5;
      if (!--v2)
      {
        goto LABEL_19;
      }
    }

LABEL_4:
    (*v6)(v0[19], v0[16]);
    goto LABEL_5;
  }

LABEL_19:
  v42 = swift_task_alloc();
  v0[22] = v42;
  *v42 = v0;
  v42[1] = sub_100037330;

  return sub_100035360();
}
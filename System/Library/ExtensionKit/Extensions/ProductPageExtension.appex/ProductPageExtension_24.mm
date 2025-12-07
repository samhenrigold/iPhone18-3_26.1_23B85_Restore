double sub_1002B3A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1002B3AB4()
{
  v1 = [v0 scrollEdgeAppearance];
  if (!v1)
  {
    v1 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v2 = [v0 standardAppearance];
  if (!v2)
  {
    v2 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v3 = v2;
  [v1 _setTitleControlHidden:0];
  [v3 _setTitleControlHidden:{objc_msgSend(v0, "largeTitleDisplayMode") != 2}];
  [v0 setScrollEdgeAppearance:v1];
  [v0 setStandardAppearance:v3];
}

void sub_1002B3BCC()
{
  v1 = [v0 scrollEdgeAppearance];
  if (!v1)
  {
    v1 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v2 = [v0 standardAppearance];
  if (!v2)
  {
    v2 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v3 = v2;
  [v1 _setTitleControlHidden:1];
  [v3 _setTitleControlHidden:1];
  [v0 setScrollEdgeAppearance:v1];
  [v0 setStandardAppearance:v3];
}

id sub_1002B3CD0()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = [objc_opt_self() buttonWithType:7];
  sub_10077109C();
  v11 = sub_10077111C();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_10077114C();
  sub_10077113C();
  if ((*(v12 + 48))(v6, 1, v11))
  {
    sub_10014D2A4(v6, v9);
    sub_10077114C();
    sub_10014D314(v6);
  }

  else
  {
    v13 = [objc_opt_self() configurationWithWeight:5];
    sub_100770F4C();
    sub_10077114C();
  }

  v14 = v10;
  [v14 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
  v15 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v14 addInteraction:v15];

  [v14 setShowsLargeContentViewer:1];
  [v14 setScalesLargeContentImage:1];
  (*(v1 + 104))(v3, enum case for SystemImage.xmark(_:), v0);
  v16 = sub_10076046C();
  (*(v1 + 8))(v3, v0);
  [v14 setLargeContentImage:v16];

  v20._object = 0x80000001007DD7A0;
  v20._countAndFlagsBits = 0xD00000000000001DLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_1007622EC(v20, v21);
  v17 = sub_10076FF6C();

  [v14 setLargeContentTitle:v17];

  return v14;
}

uint64_t sub_1002B406C()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_1009500F8);
  sub_10000A61C(v4, qword_1009500F8);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

id sub_1002B41C0()
{
  v0 = sub_1002B4BF0();

  return v0;
}

uint64_t sub_1002B41EC(uint64_t a1)
{
  v3 = sub_10076FBBC();
  v4 = __chkstk_darwin(v3);
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController);
  (*(v7 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  objc_allocWithZone(sub_100765D7C());
  v8 = v6;
  return sub_100765D8C();
}

void sub_1002B42E0()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  sub_10076DE3C();
  v3 = objc_allocWithZone(sub_10076DE6C());
  v4 = sub_10076DE5C();
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController);
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007841E0;
  *(v6 + 32) = v4;
  sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
  v7 = v4;
  isa = sub_1007701AC().super.isa;

  [v5 setViewControllers:isa];
}

char *sub_1002B441C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076162C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100747388(*(v3 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController), a2, a1);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    (*(v7 + 104))(v9, enum case for BootstrapPhase.initialBootstrap(_:), v6);
    sub_100769DBC();
    (*(v7 + 8))(v9, v6);
    if (*&v11[OBJC_IVAR___RootViewController_freshnessWatchdog])
    {

      sub_100764C7C();
    }

    [v11 loadDidFinish];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002B45B8()
{
  v1 = v0;
  v2 = sub_10075D86C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D85C();
  sub_10075D83C();
  sub_10075D82C();
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_askToBuy) == 1)
  {
    sub_10000A5D4(&qword_100950350, &qword_100799D20);
    sub_10075D7DC();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10075D7CC();
    sub_10075D7CC();
    sub_10075D7FC();
  }

  sub_10075D81C();
  return (*(v3 + 8))(v5, v2);
}

void sub_1002B47EC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10076DF1C();
  __chkstk_darwin(v3 - 8);
  sub_10076DF0C();
  v4 = objc_allocWithZone(sub_10076DF3C());

  swift_errorRetain();
  v5 = sub_10076DF2C();
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController);
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007841E0;
  *(v7 + 32) = v5;
  sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
  v8 = v5;
  isa = sub_1007701AC().super.isa;

  [v6 setViewControllers:isa];
}

void sub_1002B494C()
{

  sub_10000CC8C(v0 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController);
}

uint64_t sub_1002B49C0()
{
  sub_10000CC8C(v0 + 16);
  v1 = OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_logger;
  v2 = sub_10076F59C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000CC8C(v0 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_delegate);

  return v0;
}

uint64_t sub_1002B4AC0()
{
  sub_1002B49C0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeSubscribePageBootstrap(uint64_t a1)
{
  result = qword_100950168;
  if (!qword_100950168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002B4BF0()
{
  v1 = v0;
  v2 = sub_1007614EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076DE4C();
  __chkstk_darwin(v6 - 8);
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_isBootstrapping) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_isBootstrapping) = 1;
    sub_10076DE3C();
    v7 = objc_allocWithZone(sub_10076DE6C());
    v8 = sub_10076DE5C();
    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController);
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007841E0;
    *(v10 + 32) = v8;
    sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
    v11 = v8;
    isa = sub_1007701AC().super.isa;

    [v9 setViewControllers:isa];

    sub_100045B74(v5);
    sub_1007614DC();
    v13 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
    swift_retain_n();
    v14 = sub_10077068C();
    v17[3] = v13;
    v17[4] = &protocol witness table for OS_dispatch_queue;
    v17[0] = v14;
    sub_10076FC6C();

    sub_10000CD74(v17);
    sub_10075EABC();
    sub_10075EAAC();
    (*(v3 + 8))(v5, v2);
  }

  return *(v1 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController);
}

void sub_1002B4EB8(uint64_t a1)
{
  v81 = a1;
  v65 = sub_10076F68C();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&unk_10094A890, &unk_100786A70);
  __chkstk_darwin(v3 - 8);
  v78 = &v60 - v4;
  v5 = type metadata accessor for FlowDestination(0);
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v80 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_10075F65C();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v75 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100765F6C();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v73 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100766EDC();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v71 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F4FC();
  __chkstk_darwin(v10 - 8);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v12 - 8);
  v14 = &v60 - v13;
  v15 = sub_10076C15C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v19 - 8);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v60 - v23;
  v25 = sub_10075DB7C();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v1;
  sub_1002B45B8();
  v29 = v25;
  v30 = v26;
  if ((*(v26 + 48))(v24, 1, v29) == 1)
  {
    sub_10000CFBC(v24, &unk_1009435D0, &qword_100785850);
    if (qword_10093FD28 != -1)
    {
      swift_once();
    }

    v31 = sub_10076FD4C();
    sub_10000A61C(v31, qword_1009500F8);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();
  }

  else
  {
    (*(v26 + 32))(v28, v24, v29);
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
    (*(v16 + 104))(v18, enum case for FlowPage.arcadeSubscribe(_:), v15);
    v32 = *(v26 + 16);
    v61 = v28;
    v32(v21, v28, v29);
    v33 = *(v26 + 56);
    v62 = v29;
    v33(v21, 0, 1, v29);
    v34 = sub_10076096C();
    (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
    memset(v82, 0, sizeof(v82));
    sub_10076F4DC();
    (*(v66 + 104))(v71, enum case for FlowPresentationContext.infer(_:), v67);
    (*(v69 + 104))(v73, enum case for FlowAnimationBehavior.infer(_:), v70);
    (*(v72 + 104))(v75, enum case for FlowOrigin.inapp(_:), v74);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v35 = sub_10075F5EC();
    v36 = v79;
    v37 = [sub_1002B4BF0() traitCollection];
    v85 = 0;
    v83 = 0u;
    v84 = 0u;

    sub_10076B87C();
    v38 = v78;
    sub_10012062C(v35, v82, v78);
    v39 = v77;
    v40 = *(v76 + 48);
    v42 = v30;
    if (v40(v38, 1, v77) == 1)
    {
      v43 = v80;
      swift_storeEnumTagMultiPayload();
      v44 = v40(v38, 1, v39);
      v45 = v81;
      if (v44 != 1)
      {
        sub_10000CFBC(v38, &unk_10094A890, &unk_100786A70);
      }
    }

    else
    {
      v43 = v80;
      sub_10005DAD8(v38, v80, v41);
      v45 = v81;
    }

    v46 = sub_10075F57C();
    v48 = v47;
    sub_10075F59C();
    v49 = sub_10048B0C0(v43, v37, v46, v48, v14, &v83, v45, 1);

    sub_10000CFBC(v14, &unk_100958150, &unk_100786630);
    sub_10005C6E8(v43, v50);
    sub_10000CFBC(&v83, &unk_10094A8A0, &unk_10078DB90);
    if (v49)
    {
      v51 = *(v36 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController);
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1007841E0;
      *(v52 + 32) = v49;
      sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
      v53 = v49;
      isa = sub_1007701AC().super.isa;

      [v51 setViewControllers:isa];

      Strong = swift_unknownObjectWeakLoadStrong();
      v56 = v61;
      if (Strong)
      {
        sub_100747680(v45, v53, v61);
        swift_unknownObjectRelease();
      }

      sub_10076148C();
      sub_10076F5CC();
      sub_10076F64C();
      v57 = v63;
      v58 = v65;
      sub_10076FC1C();
      sub_1007612FC();
      sub_10075EC5C();

      (*(v64 + 8))(v57, v58);
      (*(v42 + 8))(v56, v62);
    }

    else
    {
      if (qword_10093FD28 != -1)
      {
        swift_once();
      }

      v59 = sub_10076FD4C();
      sub_10000A61C(v59, qword_1009500F8);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBEC();

      (*(v42 + 8))(v61, v62);
    }
  }
}

double sub_1002B5C3C(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_10077164C();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076E21C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076664C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007665FC();
  sub_1002B62A4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v19 = sub_10077124C();
  (*(v16 + 8))(v18, v15);
  swift_getObjectType();
  sub_100079BE0(a5, v14);
  type metadata accessor for InAppPurchaseLockupView(0);
  v20 = sub_1000CBBB0(a5, a1, a2);
  if (v19)
  {
    v21 = v20;
    sub_10076E1AC();
    v22 = v28;
    sub_10000CF78(v27, v28);
    sub_1000FF02C(v22);
    sub_10076D40C();
    (*(v25 + 8))(v10, v26);
    (*(v12 + 8))(v14, v11);
    sub_10000CD74(v27);
  }

  else
  {
    sub_100770AFC();
    v21 = v23;
    (*(v12 + 8))(v14, v11);
  }

  return v21;
}

uint64_t sub_1002B5F88(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  v28[1] = a1;
  v8 = sub_10076E21C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076B6EC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v17 = v16;
  type metadata accessor for InAppPurchaseLockupView(0);
  sub_1000CBBB0(a5, v17, a3);
  sub_10076B6BC();
  sub_1002B62A4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  sub_10077124C();
  (*(v13 + 8))(v15, v12);
  sub_100079BE0(a5, v11);
  sub_10076E1DC();
  (*(v9 + 8))(v11, v8);
  [a5 pageMarginInsets];
  v18 = [a5 traitCollection];
  LOBYTE(v8) = sub_1007706FC();

  if ((v8 & 1) != 0 || (JUScreenClassGetPortraitWidth(), v19 >= a2))
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v23 = v24;
  }

  else
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v21 = v20;
    PageTraitEnvironment.pageColumnMargin.getter();
    v23 = v21 - (v22 + v22);
  }

  v25 = [objc_opt_self() absoluteDimension:v23];
  v26 = sub_1007665BC();

  return v26;
}

uint64_t sub_1002B62A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002B62EC(uint64_t a1)
{
  result = sub_10076B15C();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1002B6424(unsigned int *a1, uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = sub_10075F2AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v5 + v10, v15, &unk_10094E1F0, qword_100783D20);
  if (v16)
  {
    sub_10000A570(v15, v14);
    sub_10000CFBC(v15, &unk_10094E1F0, qword_100783D20);
    sub_10000CF78(v14, v14[3]);
    (*(v7 + 104))(v9, *a1, v6);
    sub_10075F2BC();
    (*(v7 + 8))(v9, v6);
    v11 = sub_10000CD74(v14);
  }

  else
  {
    v11 = sub_10000CFBC(v15, &unk_10094E1F0, qword_100783D20);
  }

  return a2(v11);
}

uint64_t sub_1002B65E8()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v19 = swift_isaMask & *v0;
  sub_10000A5D4(&qword_100942480, &qword_100783D10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100799D60;
  v18 = *((v3 & v2) + 0x230);
  swift_getWitnessTable();
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v4 + 32) = sub_10076B16C();
  *(v4 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v5 = swift_allocObject();
  v6 = sub_1002C1B38(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_1007A81F8);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  swift_getWitnessTable();
  v7 = *&v1[qword_10099E390];

  v8 = v1;
  v9 = v7;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v10 = v8;
  *(v4 + 64) = sub_10076B04C();
  *(v4 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  v11 = *((v3 & v2) + 0x258);
  v20[0] = *((v3 & v2) + 0x228);
  v20[1] = v18;
  v12 = *(v19 + 584);
  v21 = *(v19 + 568);
  v22 = v12;
  v23 = v11;
  type metadata accessor for BaseDiffableShelfViewController(0, v20);
  swift_getWitnessTable();
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v4 + 80) = sub_10076A95C();
  *(v4 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v4 + 96) = sub_10076AFCC();
  *(v4 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v4 + 112) = sub_10076B2FC();
  *(v4 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v4 + 128) = sub_10076ACDC();
  *(v4 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v13 = *&v10[qword_1009503B8];
  v14 = sub_1002C1B38(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786258);
  *(v4 + 144) = v13;
  *(v4 + 152) = v14;
  v15 = *&v10[qword_1009503B0];
  v16 = sub_1002C1B38(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_1007A4CE8);
  *(v4 + 160) = v15;
  *(v4 + 168) = v16;
  swift_getWitnessTable();
  sub_10076AEFC();
  swift_allocObject();

  *(v4 + 176) = sub_10076AEEC();
  *(v4 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v4 + 192) = *&v10[qword_1009503A8];
  *(v4 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v4 + 208) = sub_10076A86C();
  *(v4 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  swift_getWitnessTable();
  sub_10076B0EC();
  swift_allocObject();
  *(v4 + 224) = sub_10076B0DC();
  *(v4 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

void sub_1002B6B48(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v35 = swift_isaMask & *v2;
  v6 = sub_10076DE4C();
  __chkstk_darwin(v6 - 8);
  v7 = *((v5 & v4) + 0x238);
  v8 = *((v5 & v4) + 0x240);
  v9 = *((v5 & v4) + 0x248);
  v10 = *((v5 & v4) + 0x250);
  v11 = *((v5 & v4) + 0x258);
  v33 = *((v5 & v4) + 0x228);
  v34 = v7;
  v36 = v33;
  v37 = v7;
  v38 = v8;
  v39 = v9;
  v40 = v10;
  v41 = v11;
  v12 = sub_100765D9C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v32 - v15;
  (*(v13 + 16))(&v32 - v15, a1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v13 + 8))(v16, v12);
    *(v2 + qword_10099E368) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (sub_10076843C())
    {
      sub_10076366C();
    }

    v18 = qword_1009503C0;
    swift_beginAccess();
    v19 = *(v2 + v18);
    if (v19)
    {
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 2) = v33;
      v22 = v34;
      *(v21 + 3) = *(v35 + 560);
      *(v21 + 4) = v22;
      *(v21 + 5) = v8;
      *(v21 + 6) = v9;
      *(v21 + 7) = v10;
      *(v21 + 8) = v11;
      *(v21 + 9) = v20;
      v23 = &v19[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v24 = *&v19[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v25 = *&v19[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
      *v23 = sub_1002C1460;
      v23[1] = v21;
      v26 = v19;

      sub_1000167E0(v24, v25);
    }

    sub_10076842C();
  }

  else if (v17 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v13 + 96))(v16, v12);
    v27 = *(v16 + 1);
    v28 = *(v16 + 2);
    sub_10076DF3C();
    swift_getWitnessTable();
    swift_errorRetain();

    sub_10001CE50(v27, v28);
    v29 = sub_10076DEFC();
    (*((swift_isaMask & *v2) + 0x168))(v29);
    sub_1000167E0(v27, v28);
  }

  else if (v17 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10076842C();
    sub_10076DE3C();
    v30 = objc_allocWithZone(sub_10076DE6C());
    v31 = sub_10076DE5C();
    (*((swift_isaMask & *v2) + 0x168))(v31);
    swift_getWitnessTable();
    sub_1007657EC();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_1002B7140@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10099E358;
  swift_beginAccess();
  v4 = sub_10076B15C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1002B71C8(uint64_t a1)
{
  v3 = qword_10099E358;
  swift_beginAccess();
  v4 = sub_10076B15C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double sub_1002B72F8(uint64_t a1)
{
  *(v1 + qword_1009503D0) = a1;

  return result;
}

uint64_t sub_1002B7310(uint64_t a1)
{
  v2 = *(v1 + qword_1009503D8);
  *(v1 + qword_1009503D8) = a1;
  return _objc_release_x1(a1, v2);
}

double sub_1002B7354()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + 0x258);
  v3 = *(v1 + 0x238);
  v6 = *(v1 + 0x228);
  v7 = v3;
  v8 = *(v1 + 584);
  v9 = v2;
  type metadata accessor for BaseDiffableShelfViewController(0, &v6);
  swift_getWitnessTable();
  sub_10076A64C();
  sub_10000A5D4(&unk_100950690, &qword_1007916B8);
  sub_10000A5D4(&qword_10094B640, &qword_1007916C0);
  if (swift_dynamicCast())
  {
    sub_10000CF78(&v6, *(&v7 + 1));
    sub_10076208C();
    sub_10000CD74(&v6);
  }

  else
  {
    *&v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_10000CFBC(&v6, &unk_1009506A0, qword_1007916C8);
  }

  type metadata accessor for TodayCardGridTracker();
  sub_10076F5AC();
  v5 = v10;
  if (v10)
  {
    swift_beginAccess();
    *(v5 + 16) = _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1002B7528(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100950600, &qword_100788CC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  v6 = sub_10000A5D4(&qword_10094B618, &qword_100791698);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_100016E2C(a1, &v16[-1] - v7, &qword_10094B618, &qword_100791698);
  v9 = sub_10000A5D4(&qword_100950560, &qword_10079A040);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000CFBC(v8, &qword_10094B618, &qword_100791698);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  else
  {
    sub_100761B9C();
    (*(v10 + 8))(v8, v9);
    v11 = sub_10076B09C();
    (*(v3 + 8))(v5, v2);
    v12 = sub_10000A5D4(&qword_100950680, &unk_10079A0D0);
    v13 = sub_100071820(&qword_100950688, &qword_100950680, &unk_10079A0D0, &protocol conformance descriptor for Set<A>);
  }

  v16[0] = v11;
  v17 = v12;
  v18 = v13;
  result = sub_10076560C();
  if (v17)
  {
    return sub_10000CD74(v16);
  }

  return result;
}

uint64_t sub_1002B77B4()
{
  if ((*(v0 + qword_10099E368) & 1) == 0)
  {
    return sub_1007684AC();
  }

  return result;
}

uint64_t sub_1002B77F0()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + 0x258);
  v3 = *(v1 + 0x238);
  v7[0] = *(v1 + 0x228);
  v7[1] = v3;
  v7[2] = *(v1 + 584);
  v8 = v2;
  type metadata accessor for BaseDiffableShelfViewController(0, v7);
  swift_getWitnessTable();
  sub_10076A6DC();
  type metadata accessor for GenericPageItemSupplementaryProvider();
  v4 = swift_allocObject();
  sub_10000A570(v7, v4 + 16);
  type metadata accessor for GenericPageSeparatorItemSupplementaryProvider();
  v5 = swift_allocObject();
  sub_100012498(v7, v5 + 16);
  *(v4 + 56) = v5;
  sub_1002C1B38(&qword_100947D38, type metadata accessor for GenericPageItemSupplementaryProvider, &unk_1007B4198);
  return v4;
}

void *sub_1002B7944(__n128 a1)
{
  v2 = v1;
  v120 = swift_isaMask & *v1;
  v3 = sub_1007621EC();
  v115 = *(v3 - 8);
  v116 = v3;
  __chkstk_darwin(v3);
  v107 = (&v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v110 = (&v102 - v6);
  v114 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v106 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v109 = &v102 - v9;
  v10 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v10 - 8);
  v111 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v102 - v13;
  v15 = sub_10076469C();
  v118 = *(v15 - 8);
  v119 = v15;
  __chkstk_darwin(v15);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v102 - v19;
  v121 = sub_10000A5D4(&qword_100944C40, &unk_10079A0C0);
  v21 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v102 - v24;
  v26 = sub_10076903C();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = (&v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = _swiftEmptyArrayStorage;
  sub_100765DFC();
  v30 = (*(v27 + 88))(v29, v26);
  v108 = v17;
  v112 = v20;
  if (v30 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    (*(v27 + 96))(v29, v26);
    sub_10000CD74(v29);
    v31 = [v1 traitCollection];
    if (qword_100941200 != -1)
    {
      swift_once();
    }

    v32 = sub_10076D9AC();
    sub_10000A61C(v32, qword_1009A2380);
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1007841E0;
    *(v33 + 32) = v31;
    v34 = v31;
    v35 = sub_10076DEEC();
    sub_10076D3EC();
    v37 = v36;

    v38 = objc_opt_self();
    v39 = [v38 fractionalWidthDimension:1.0];
    v40 = [v38 absoluteDimension:v37];
    v41 = [objc_opt_self() sizeWithWidthDimension:v39 heightDimension:v40];

    type metadata accessor for InfiniteScrollFooterView();
    v42 = v41;
    sub_1007708EC();
    v43 = sub_10076FF6C();

    v44 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v42 elementKind:v43 alignment:5];

    v45 = v44;
    sub_10077019C();
    if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v46 = v126;
  }

  else
  {
    (*(v27 + 8))(v29, v26);
    v46 = _swiftEmptyArrayStorage;
  }

  v47 = qword_1009503C8;
  swift_beginAccess();
  v48 = *(v2 + v47);
  if (!v48)
  {
    return v46;
  }

  v49 = v48;
  sub_10076E79C();

  v50 = v121;
  v51 = sub_10076E5EC();
  v54 = *(v21 + 8);
  v52 = v21 + 8;
  v53 = v54;
  v54(v25, v50);
  if (v51 < 1)
  {
    v58 = v118;
    v57 = v119;
    v59 = *(v2 + v47);
    if (!v59)
    {
      return v46;
    }

    goto LABEL_21;
  }

  v55 = *(v120 + 600);
  v56 = *(v120 + 568);
  v122 = *(v120 + 552);
  v123 = v56;
  v124 = *(v120 + 584);
  v125 = v55;
  type metadata accessor for BaseDiffableShelfViewController(0, &v122);
  swift_getWitnessTable();
  sub_10076A67C();
  v58 = v118;
  v57 = v119;
  if ((*(v118 + 48))(v14, 1, v119) == 1)
  {
    sub_10000CFBC(v14, &unk_10095DCF0, &unk_10078C910);
    v59 = *(v2 + v47);
    if (!v59)
    {
      return v46;
    }

    goto LABEL_21;
  }

  v103 = v46;
  v105 = v53;
  v104 = v52;
  v60 = v57;
  v61 = v112;
  (*(v58 + 32))(v112, v14, v60);
  v62 = v109;
  sub_10076468C();
  swift_getKeyPath();
  v63 = v58;
  v64 = v110;
  v65 = v114;
  sub_10076F49C();

  v66 = v65;
  v67 = v64;
  (*(v113 + 8))(v62, v66);
  v69 = v115;
  v68 = v116;
  if ((*(v115 + 88))(v64, v116) != enum case for ShelfBackground.color(_:))
  {
    v58 = v63;
    (*(v63 + 8))(v61, v60);
    (*(v69 + 8))(v67, v68);
    v57 = v60;
    v53 = v105;
    v46 = v103;
    v59 = *(v2 + v47);
    if (!v59)
    {
      return v46;
    }

    goto LABEL_21;
  }

  (*(v69 + 96))(v64, v68);

  v70 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
  v71 = sub_1007659CC();
  (*(*(v71 - 8) + 8))(v64 + v70, v71);
  v72 = objc_opt_self();
  v73 = [v72 fractionalWidthDimension:1.0];
  v74 = [v72 absoluteDimension:2000.0];
  v75 = [objc_opt_self() sizeWithWidthDimension:v73 heightDimension:v74];

  v76 = sub_10076FF6C();
  v77 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v75 elementKind:v76 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v77 setExtendsBoundary:0];
  v78 = v77;
  sub_10077019C();
  if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();

  v58 = v63;
  v57 = v60;
  (*(v63 + 8))(v112, v60);
  v46 = v126;
  v53 = v105;
  v59 = *(v2 + v47);
  if (v59)
  {
LABEL_21:
    v79 = v59;
    v80 = v117;
    sub_10076E79C();

    v81 = v121;
    v82 = sub_10076E5EC();
    v53(v80, v81);
    if (v82 >= 1)
    {
      v83 = *(v120 + 600);
      v84 = *(v120 + 568);
      v122 = *(v120 + 552);
      v123 = v84;
      v124 = *(v120 + 584);
      v125 = v83;
      type metadata accessor for BaseDiffableShelfViewController(0, &v122);
      swift_getWitnessTable();
      v85 = v111;
      sub_10076A67C();
      if ((*(v58 + 48))(v85, 1, v57) == 1)
      {
        sub_10000CFBC(v85, &unk_10095DCF0, &unk_10078C910);
      }

      else
      {
        v86 = v108;
        (*(v58 + 32))(v108, v85, v57);
        v87 = v106;
        sub_10076468C();
        swift_getKeyPath();
        v88 = v107;
        v89 = v114;
        sub_10076F49C();

        (*(v113 + 8))(v87, v89);
        v91 = v115;
        v90 = v116;
        if ((*(v115 + 88))(v88, v116) == enum case for ShelfBackground.color(_:))
        {
          (*(v91 + 96))(v88, v90);

          v92 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
          v93 = sub_1007659CC();
          (*(*(v93 - 8) + 8))(v88 + v92, v93);
          v94 = objc_opt_self();
          v95 = [v94 fractionalWidthDimension:1.0];
          v96 = [v94 absoluteDimension:2000.0];
          v97 = [objc_opt_self() sizeWithWidthDimension:v95 heightDimension:v96];

          v98 = sub_10076FF6C();
          v99 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v97 elementKind:v98 alignment:5 absoluteOffset:{0.0, 2000.0}];

          [v99 setExtendsBoundary:0];
          v100 = v99;
          sub_10077019C();
          if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();

          (*(v58 + 8))(v86, v57);
          return v126;
        }

        else
        {
          (*(v58 + 8))(v86, v57);
          (*(v91 + 8))(v88, v90);
        }
      }
    }
  }

  return v46;
}

double sub_1002B8890@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = swift_isaMask & *v3;
  type metadata accessor for InfiniteScrollFooterView();
  if (sub_1007708EC() == a1 && v8 == a2)
  {

    goto LABEL_11;
  }

  v10 = sub_10077167C();

  if (v10)
  {
LABEL_11:

    sub_1007708FC();
    *(a3 + 24) = sub_10000A5D4(&qword_100950658, &unk_10079A078);
    *(a3 + 32) = sub_100071820(&unk_100950660, &qword_100950658, &unk_10079A078, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_10000DB7C(a3);
    goto LABEL_12;
  }

  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (sub_10077167C() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001007D7F70 == a2 || (sub_10077167C() & 1) != 0)
  {
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = *(v7 + 552);
    *(v12 + 24) = *(v7 + 560);
    *(v12 + 40) = *(v7 + 576);
    *(v12 + 48) = *(v7 + 584);
    *(v12 + 64) = *(v7 + 600);
    *(v12 + 72) = v11;
    *(a3 + 24) = sub_10000A5D4(&qword_100950640, &qword_10079A070);
    *(a3 + 32) = sub_100071820(&qword_100950648, &qword_100950640, &qword_10079A070, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_10000DB7C(a3);
    sub_100016F40(0, &qword_100950650, UICollectionReusableView_ptr);
    swift_bridgeObjectRetain_n();
LABEL_12:
    sub_10076A3BC();
    return result;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1002B8CA0()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & v2;
  v5 = sub_10000A5D4(&qword_100950608, &unk_1007B4660);
  __chkstk_darwin(v5 - 8);
  v48 = v34 - v6;
  v7 = sub_10000A5D4(&unk_100950610, &unk_10079A060);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v34 - v8;
  v39 = *((v3 & v2) + 0x248);
  v38 = *((v3 & v2) + 0x250);
  v37 = *((v3 & v2) + 0x258);
  *&v51[24] = v39;
  v52 = v38;
  v53 = v37;
  v9 = *((v3 & v2) + 0x228);
  v35 = *(v4 + 568);
  v36 = (v4 + 560);
  *v51 = v9;
  *&v51[8] = v35;
  v41 = sub_100765D9C();
  v10 = sub_10076F76C();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v42 = v34 - v11;
  v12 = sub_10000A5D4(&unk_100950568, &qword_10079A048);
  v13 = *(v12 - 8);
  v49 = v12;
  v50 = v13;
  __chkstk_darwin(v12);
  v40 = v34 - v14;
  v15 = sub_10000A5D4(&qword_100946598, &qword_100788C98);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - v17;
  v34[1] = *(v1 + qword_10099E360);
  sub_100765DDC();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1002C17A0;
  *(v19 + 24) = 0;
  sub_10000A5D4(&unk_100950620, &qword_100788CA0);
  *&v20 = v9;
  *(&v20 + 1) = *v36;
  *v51 = v20;
  *&v51[16] = v35;
  v52 = v39;
  v53 = v38;
  v54 = v37;
  type metadata accessor for BaseDiffableShelfViewController(0, v51);
  v39 = &protocol conformance descriptor for SyncEvent<A>;
  sub_100071820(&qword_1009465A0, &unk_100950620, &qword_100788CA0, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  sub_10076F46C();

  sub_10000CD74(v51);
  (*(v16 + 8))(v18, v15);
  sub_100765DEC();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1002C1804;
  *(v21 + 24) = 0;
  v22 = sub_10000A5D4(&qword_100950578, &qword_10079A050);
  v23 = v39;
  v24 = sub_100071820(&qword_100950580, &qword_100950578, &qword_10079A050, v39);
  sub_10076F45C();
  v25 = v40;
  v37 = v22;
  v38 = v24;
  sub_10076F46C();

  sub_10000CD74(v51);
  (*(v50 + 8))(v25, v49);
  sub_10076847C();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1002C1868;
  *(v26 + 24) = 0;
  sub_10076FE1C();
  swift_getWitnessTable();
  sub_10076F45C();
  v27 = v42;
  sub_10076F46C();

  sub_10000CD74(v51);
  (*(v43 + 8))(v27, v44);
  sub_100765E4C();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1002C18CC;
  *(v28 + 24) = 0;
  sub_10000A5D4(&qword_100950630, &unk_1007B4680);
  sub_100071820(&qword_100950638, &qword_100950630, &unk_1007B4680, v23);
  sub_10076F45C();
  v29 = v45;
  sub_10076F46C();

  sub_10000CD74(v51);
  (*(v46 + 8))(v29, v47);
  if (*(v1 + qword_1009503D0))
  {
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1002C1958;
    *(v30 + 24) = 0;

    sub_10076F45C();
    v31 = v48;
    sub_10076F46C();

    sub_10000CD74(v51);
    v32 = 0;
  }

  else
  {
    v32 = 1;
    v31 = v48;
  }

  (*(v50 + 56))(v31, v32, 1, v49);
  return sub_10000CFBC(v31, &qword_100950608, &unk_1007B4660);
}

void sub_1002B9514(uint64_t a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v28 = sub_10000A5D4(&qword_100950600, &qword_100788CC0);
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - v6;
  v8 = sub_10000A5D4(&qword_10094B618, &qword_100791698);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_10000A5D4(&qword_100950560, &qword_10079A040);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_1002B7528(v10);
  sub_10000CFBC(v10, &qword_10094B618, &qword_100791698);
  v13 = sub_100761BAC();
  v14 = qword_1009503C8;
  if (v13)
  {
    swift_beginAccess();
    v15 = *&v2[v14];
    if (!v15)
    {
      goto LABEL_7;
    }

    v16 = v15;
    sub_100761B9C();
    sub_10076998C();
  }

  else
  {
    swift_beginAccess();
    v17 = *&v2[v14];
    if (!v17)
    {
      goto LABEL_7;
    }

    v16 = v17;
    sub_100761B9C();
    sub_100761BBC();
    sub_1007699FC();
  }

  (*(v5 + 8))(v7, v28);
LABEL_7:
  v18 = *(v4 + 600);
  v19 = *(v4 + 568);
  v29[0] = *(v4 + 552);
  v29[1] = v19;
  v29[2] = *(v4 + 584);
  v30 = v18;
  type metadata accessor for BaseDiffableShelfViewController(0, v29);
  swift_getWitnessTable();
  sub_10076B31C();
  v20 = [v2 collectionView];
  if (!v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [v20 window];

  if (v22)
  {

    v23 = [v2 collectionView];
    if (!v23)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v24 = v23;
    sub_10076666C();
  }

  v25 = [v2 view];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  [v25 bounds];

  sub_10076A6CC();
  if (sub_100761B8C())
  {
    sub_100760C1C();
  }
}

uint64_t sub_1002B9960(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_100016E2C(a2, v5, &unk_1009434C0, &qword_100783F60);

  sub_1002BA104(v2, v5);
  return sub_10000CFBC(&v4, &unk_1009505A0, &qword_1007B4690);
}

id sub_1002B99E0()
{
  v1 = swift_isaMask & *v0;
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];

    v4 = *(v1 + 600);
    v5 = *(v1 + 568);
    v6[0] = *(v1 + 552);
    v6[1] = v5;
    v6[2] = *(v1 + 584);
    v7 = v4;
    type metadata accessor for BaseDiffableShelfViewController(0, v6);
    swift_getWitnessTable();
    return sub_10076A6CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1002B9AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28[1] = a1;
  v28[0] = swift_isaMask & *v2;
  v5 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v5 - 8);
  v7 = v28 - v6;
  v8 = sub_10076341C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v33 = v28 - v13;
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = *(sub_10075E11C() - 8);
    v16 = (v9 + 48);
    v31 = v9;
    v17 = (v9 + 32);
    v18 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v34 = *(v15 + 72);
    v19 = _swiftEmptyArrayStorage;
    v29 = v16;
    v30 = v11;
    v32 = v3;
    do
    {
      sub_1002BEDBC(v18, v3);
      if ((*v16)(v7, 1, v8) == 1)
      {
        sub_10000CFBC(v7, &unk_1009428D0, &unk_100783DC0);
      }

      else
      {
        v20 = *v17;
        v21 = v33;
        (*v17)(v33, v7, v8);
        v20(v11, v21, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_10049CF18(0, v19[2] + 1, 1, v19);
        }

        v23 = v19[2];
        v22 = v19[3];
        if (v23 >= v22 >> 1)
        {
          v19 = sub_10049CF18((v22 > 1), v23 + 1, 1, v19);
        }

        v19[2] = v23 + 1;
        v24 = v19 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23;
        v11 = v30;
        v20(v24, v30, v8);
        v3 = v32;
        v16 = v29;
      }

      v18 += v34;
      --v14;
    }

    while (v14);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  if (v19[2])
  {
    v25 = *(v28[0] + 600);
    v26 = *(v28[0] + 568);
    v35[0] = *(v28[0] + 552);
    v35[1] = v26;
    v35[2] = *(v28[0] + 584);
    v36 = v25;
    type metadata accessor for BaseDiffableShelfViewController(0, v35);
    swift_getWitnessTable();
    sub_10076A6AC();
    swift_getObjectType();
    sub_1007686BC();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1002B9EE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  v11 = *(v2 + qword_1009503B0);
  v12 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  swift_beginAccess();
  sub_100016E2C(v11 + v12, v10, &unk_10094DE60, "ܱ\b");
  v13 = sub_10075E11C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v7, 1, 1, v13);
  swift_beginAccess();
  sub_10021560C(v7, v11 + v12);
  swift_endAccess();
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_10000CFBC(v10, &unk_10094DE60, "ܱ\b");
    return sub_100016E2C(a1, a2, &unk_10094DE60, "ܱ\b");
  }

  else
  {
    (*(v14 + 32))(a2, v10, v13);
    return (v15)(a2, 0, 1, v13);
  }
}

void sub_1002BA104(char *a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v56 - v5;
  v7 = sub_10075E11C();
  v59 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = &v56 - v11;
  v12 = sub_10076F13C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016E2C(a2, v92, &unk_1009434C0, &qword_100783F60);
  if (v92[3])
  {
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    if (swift_dynamicCast())
    {
      v16 = v61[1];
      [v16 bounds];
      LOBYTE(v86) = 1;
      *&v68 = v16;
      *(&v68 + 1) = v17;
      *&v69 = v18;
      *(&v69 + 1) = v19;
      *&v70 = v20;
      BYTE8(v70) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v71 = _Q0;
      v72 = _Q0;
      v73 = 15;
      sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
      *v15 = sub_10077068C();
      (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
      v26 = sub_10076F16C();
      v27 = *(v13 + 8);
      v13 += 8;
      v27(v15, v12);
      if (v26)
      {
        v76 = xmmword_10094FFF8;
        v77 = xmmword_100950008;
        v78 = xmmword_100950018;
        v74 = xmmword_10094FFD8;
        v75 = xmmword_10094FFE8;
        v82 = v70;
        v83 = v71;
        v84 = v72;
        v80 = v68;
        v81 = v69;
        v86 = xmmword_10094FFD8;
        v87 = xmmword_10094FFE8;
        v89 = xmmword_100950008;
        v90 = xmmword_100950018;
        v79 = qword_100950028;
        v85 = v73;
        v91 = qword_100950028;
        v88 = xmmword_10094FFF8;
        sub_100016E2C(&v74, &v62, &unk_1009505F0, &qword_1007A2110);
        xmmword_10094FFF8 = v82;
        xmmword_100950008 = v83;
        xmmword_100950018 = v84;
        qword_100950028 = v85;
        xmmword_10094FFD8 = v80;
        xmmword_10094FFE8 = v81;
        sub_10000CFBC(&v86, &unk_1009505F0, &qword_1007A2110);
        sub_1001F9960(&v68, &v62);
        sub_1002C03B4(v60, a1, v61);
        v64 = xmmword_10094FFF8;
        v65 = xmmword_100950008;
        v66 = xmmword_100950018;
        v67 = qword_100950028;
        v62 = xmmword_10094FFD8;
        v63 = xmmword_10094FFE8;
        xmmword_10094FFD8 = v74;
        xmmword_10094FFE8 = v75;
        xmmword_10094FFF8 = v76;
        xmmword_100950008 = v77;
        xmmword_100950018 = v78;
        qword_100950028 = v79;
        sub_10000CFBC(&v62, &unk_1009505F0, &qword_1007A2110);
        sub_1001F99BC(&v68);

        return;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    sub_10000CFBC(v92, &unk_1009434C0, &qword_100783F60);
  }

  v57 = a1;
  v28 = [v60 collectionView];
  if (!v28)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = v28;
  v30 = [v28 indexPathsForSelectedItems];

  if (v30)
  {
    v31 = sub_1007701BC();

    if (*(v31 + 16))
    {
      v32 = v59;
      (*(v59 + 16))(v9, v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v7);

      v33 = *(v32 + 32);
      v34 = v58;
      v56 = v7;
      v33(v58, v9, v7);
      v35 = [v60 collectionView];
      if (!v35)
      {
LABEL_22:
        __break(1u);

        v52 = *(v13 + 0x20 + 16);
        v64 = *(v13 + 0x20);
        v65 = v52;
        v66 = *(v13 + 0x40);
        v67 = *(v13 + 0x50);
        v53 = *(v13 + 16);
        v62 = *v13;
        v63 = v53;
        v54 = v77;
        *(v13 + 0x20) = v76;
        *(v13 + 0x20 + 16) = v54;
        *(v13 + 0x40) = v78;
        *(v13 + 0x50) = v79;
        v55 = v75;
        *v13 = v74;
        *(v13 + 16) = v55;
        sub_10000CFBC(&v62, &unk_1009505F0, &qword_1007A2110);
        __break(1u);
        return;
      }

      v36 = v35;
      v37 = v34;
      isa = sub_10075E02C().super.isa;
      v39 = [v36 cellForItemAtIndexPath:isa];

      if (v39)
      {
        v40 = v39;
        [v40 bounds];
        LOBYTE(v86) = 1;
        *&v68 = v39;
        *(&v68 + 1) = v41;
        *&v69 = v42;
        *(&v69 + 1) = v43;
        *&v70 = v44;
        BYTE8(v70) = 1;
        __asm { FMOV            V0.2D, #10.0 }

        v71 = _Q0;
        v72 = _Q0;
        v73 = 15;
        sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
        *v15 = sub_10077068C();
        (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
        v46 = sub_10076F16C();
        v47 = *(v13 + 8);
        v13 += 8;
        v47(v15, v12);
        v48 = v56;
        if (v46)
        {
          v76 = xmmword_10094FFF8;
          v77 = xmmword_100950008;
          v78 = xmmword_100950018;
          v74 = xmmword_10094FFD8;
          v75 = xmmword_10094FFE8;
          v82 = v70;
          v83 = v71;
          v84 = v72;
          v80 = v68;
          v81 = v69;
          v86 = xmmword_10094FFD8;
          v87 = xmmword_10094FFE8;
          v89 = xmmword_100950008;
          v90 = xmmword_100950018;
          v79 = qword_100950028;
          v85 = v73;
          v91 = qword_100950028;
          v88 = xmmword_10094FFF8;
          sub_100016E2C(&v74, &v62, &unk_1009505F0, &qword_1007A2110);
          xmmword_10094FFF8 = v82;
          xmmword_100950008 = v83;
          xmmword_100950018 = v84;
          qword_100950028 = v85;
          xmmword_10094FFD8 = v80;
          xmmword_10094FFE8 = v81;
          sub_10000CFBC(&v86, &unk_1009505F0, &qword_1007A2110);
          sub_1001F9960(&v68, &v62);
          sub_1002C03B4(v60, v57, v92);
          v64 = xmmword_10094FFF8;
          v65 = xmmword_100950008;
          v66 = xmmword_100950018;
          v67 = qword_100950028;
          v62 = xmmword_10094FFD8;
          v63 = xmmword_10094FFE8;
          xmmword_10094FFD8 = v74;
          xmmword_10094FFE8 = v75;
          xmmword_10094FFF8 = v76;
          xmmword_100950008 = v77;
          xmmword_100950018 = v78;
          qword_100950028 = v79;
          sub_10000CFBC(&v62, &unk_1009505F0, &qword_1007A2110);
          sub_1001F99BC(&v68);

          (*(v59 + 8))(v58, v48);

          return;
        }

        goto LABEL_20;
      }

      (*(v59 + 8))(v37, v56);
    }

    else
    {
    }
  }

  v49 = *&v60[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
  v50 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v6, 1, v50) == 1)
  {
    sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
  }

  else
  {
    sub_100263BF0(v57, 1, v49, v6);

    (*(v51 + 8))(v6, v50);
  }
}

id sub_1002BA9FC()
{
  v1 = [v0 navigationItem];

  return v1;
}

uint64_t sub_1002BAA34@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BaseShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_1002C1B38(&qword_1009505E8, type metadata accessor for BaseShelfComponentTypeMappingProvider, &unk_10079A628);
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_1002BAAE8@<X0>(uint64_t *a1@<X8>)
{
  sub_100760F1C();
  swift_allocObject();
  v2 = sub_100760F0C();
  a1[3] = &type metadata for GenericPageGridProvider;
  result = sub_100061F1C();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_1002BAB40@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for GenericPageShelfLayoutSpacingProvider;
  result = sub_1002C174C();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1002BAB74()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = type metadata accessor for GenericPageShelfSupplementaryProvider();
  v4 = *(v0 + qword_10099E360);
  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  v6 = *((v2 & v1) + 0x230);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1003822A4(v4, v5, v3, v6, WitnessTable);
  sub_1002C1B38(&qword_1009505D0, type metadata accessor for GenericPageShelfSupplementaryProvider, &unk_10079E0E0);

  return v8;
}

uint64_t sub_1002BAC6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + 0x258);
  v5 = *(v3 + 0x238);
  v22[0] = *(v3 + 0x228);
  v22[1] = v5;
  v22[2] = *(v3 + 584);
  v23 = v4;
  type metadata accessor for BaseDiffableShelfViewController(0, v22);
  swift_getWitnessTable();
  v6 = sub_10076A6BC();
  v24[3] = swift_getObjectType();
  v24[0] = v6;
  v7 = sub_10076A6AC();
  v25[3] = swift_getObjectType();
  v25[0] = v7;
  sub_10000CD08(v24, v22);
  sub_10000CD64(v22, v20);
  sub_10000A5D4(&qword_100942460, &unk_100786820);
  if (swift_dynamicCast() && v21)
  {
    v18 = v21;
    v8 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10049CD38(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_10049CD38((v9 > 1), v10 + 1, 1, v8);
    }

    v8[2] = v10 + 1;
    *&v8[2 * v10 + 4] = v18;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  sub_10000CD08(v25, v22);
  sub_10000CD64(v22, v20);
  sub_10000A5D4(&qword_100942460, &unk_100786820);
  if (swift_dynamicCast() && v21)
  {
    v19 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10049CD38(0, v8[2] + 1, 1, v8);
    }

    v12 = v8[2];
    v11 = v8[3];
    v13 = v19;
    if (v12 >= v11 >> 1)
    {
      v17 = sub_10049CD38((v11 > 1), v12 + 1, 1, v8);
      v13 = v19;
      v8 = v17;
    }

    v8[2] = v12 + 1;
    *&v8[2 * v12 + 4] = v13;
  }

  swift_arrayDestroy();
  sub_10076A6DC();
  v14 = type metadata accessor for GenericPageLayoutSectionProvider(0);
  swift_allocObject();
  sub_10000A570(v22, v20);

  v15 = sub_1007697CC();
  result = sub_10000CD74(v22);
  a1[3] = v14;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v15;
  return result;
}

id sub_1002BAFC0()
{
  v0 = sub_1002C1288();

  return v0;
}

id sub_1002BAFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void sub_1002BB068(uint64_t a1)
{
  v3 = qword_1009503C0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1002BB120(uint64_t a1)
{
  v3 = qword_1009503C8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1002BB1FC()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = sub_10000A5D4(&unk_100950568, &qword_10079A048);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = *((v3 & v2) + 0x258);
  v10 = *(v4 + 568);
  v47[0] = *(v4 + 552);
  v47[1] = v10;
  v47[2] = *(v4 + 584);
  v48 = v9;
  v11 = type metadata accessor for BaseDiffableShelfViewController(0, v47);
  v49.receiver = v1;
  v49.super_class = v11;
  objc_msgSendSuper2(&v49, "viewDidLoad");
  [v1 setInstallsStandardGestureForInteractiveMovement:0];
  sub_1004A5458(0, 0, 1);
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v14 = sub_100770D2C();
  [v13 setBackgroundColor:v14];

  v15 = [v1 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() systemBackgroundColor];
    [v16 setBackgroundColor:v17];
  }

  v18 = [v1 collectionView];
  if (v18)
  {
    v19 = v18;
    [v18 setAlwaysBounceVertical:1];
  }

  swift_getWitnessTable();
  sub_10076A69C();
  (*((swift_isaMask & *v1) + 0x498))();
  sub_100765DAC();
  v20 = [v1 collectionView];
  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = v20;
  [v20 setPrefetchDataSource:v1];

  v22 = qword_1009503C8;
  swift_beginAccess();
  v23 = *(v1 + v22);
  if (v23)
  {
    v46 = v5;
    v24 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
    type metadata accessor for DiffableFlowPreviewPresenter();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A5D4(&qword_100950578, &qword_10079A050);
    swift_allocObject();
    v26 = v23;
    v45 = v24;
    swift_retain_n();
    *(v25 + 32) = sub_10076FE0C();
    v44 = v26;
    swift_unknownObjectWeakAssign();
    *(v25 + 24) = v24;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1002C14D8;
    *(v27 + 24) = 0;
    sub_100071820(&qword_100950580, &qword_100950578, &qword_10079A050, &protocol conformance descriptor for SyncEvent<A>);
    sub_10076F45C();
    sub_10076F46C();

    sub_10000CD74(v47);
    (*(v6 + 8))(v8, v46);
    v28 = sub_1002C1B38(&qword_100950588, type metadata accessor for DiffableFlowPreviewPresenter, &unk_1007AAA94);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v25;
    v30[4] = v28;

    v31 = v1;
    v32 = sub_1002C15C4(v25, v31, sub_1002C15B8, v30, v45);

    v33 = *(v31 + qword_1009503D8);
    *(v31 + qword_1009503D8) = v32;
    v34 = v32;

    *(v31 + qword_1009503D0) = v25;

    v35 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v34];
    v36 = [v31 collectionView];
    if (v36)
    {
      v37 = v36;
      [v36 addInteraction:v35];

      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return;
  }

LABEL_10:
  if (*(v1 + qword_1009503E0))
  {
    v38 = [v1 collectionView];
    sub_10076812C();
  }

  v39 = *(v1 + qword_1009503E8);
  if (v39)
  {
    v40 = *((swift_isaMask & *v1) + 0x3F8);

    v42 = v40(v41);
    v43 = *(v39 + 16);
    *(v39 + 16) = v42;
  }
}

void sub_1002BB8C4(void *a1)
{
  v1 = a1;
  sub_1002BB1FC();
}

uint64_t sub_1002BB90C(char a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v2;
  v5 = *(v4 + 0x258);
  v6 = *(v4 + 0x238);
  v9[0] = *(v4 + 0x228);
  v9[1] = v6;
  v9[2] = *(v4 + 584);
  v10 = v5;
  v7 = type metadata accessor for BaseDiffableShelfViewController(0, v9);
  v11.receiver = v2;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, "viewWillAppear:", a1 & 1);
  if ((*(v2 + qword_10099E368) & 1) == 0)
  {
    sub_1007684AC();
  }

  sub_100765DCC();
  return sub_100760BDC();
}

void sub_1002BBA10(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002BB90C(a3);
}

void sub_1002BBA64(char a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v2;
  v5 = *(v4 + 0x258);
  v6 = *(v4 + 0x238);
  v10[0] = *(v4 + 0x228);
  v10[1] = v6;
  v10[2] = *(v4 + 584);
  v11 = v5;
  v7 = type metadata accessor for BaseDiffableShelfViewController(0, v10);
  v12.receiver = v2;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  sub_100765DBC();
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v8 = *&v10[0];
  sub_100767CDC();
  sub_100764FAC();
  sub_10076F63C();
  if (*&v10[0])
  {
    v9 = *&v10[0];
    sub_100764F8C();

    v8 = v9;
  }
}

void sub_1002BBBBC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002BBA64(a3);
}

void sub_1002BBC10(char a1, __n128 a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = swift_isaMask;
  v7 = swift_isaMask & *v3;
  v8 = sub_10076FAAC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *((v6 & v5) + 0x258);
  v13 = *(v7 + 568);
  v17[0] = *(v7 + 552);
  v17[1] = v13;
  v17[2] = *(v7 + 584);
  v18 = v12;
  v14 = type metadata accessor for BaseDiffableShelfViewController(0, v17);
  v19.receiver = v3;
  v19.super_class = v14;
  objc_msgSendSuper2(&v19, "viewWillDisappear:", a1 & 1);
  sub_10076FA9C();
  sub_100765E1C();
  (*(v9 + 8))(v11, v8);
  if (*(v3 + qword_10099E3A0) == 1)
  {
    sub_100767D5C();
    sub_10076F64C();
    sub_10076FC1C();
    v15 = *&v17[0];
    sub_100767CAC();
  }

  sub_100764FAC();
  sub_10076F64C();
  sub_10076FC1C();
  v16 = *&v17[0];
  sub_100764F7C();
}

void sub_1002BBE34(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  sub_1002BBC10(a3, v4);
}

uint64_t sub_1002BBE88(char a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v2;
  v5 = *(v4 + 0x258);
  v6 = *(v4 + 0x238);
  v9[0] = *(v4 + 0x228);
  v9[1] = v6;
  v9[2] = *(v4 + 584);
  v10 = v5;
  v7 = type metadata accessor for BaseDiffableShelfViewController(0, v9);
  v11.receiver = v2;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, "viewDidDisappear:", a1 & 1);
  sub_100765E0C();
  return sub_100760BDC();
}

void sub_1002BBF68(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002BBE88(a3);
}

void sub_1002BBFF0(void *a1)
{
  v1 = a1;
  sub_1002BC538(&selRef_didReceiveMemoryWarning, &protocol conformance descriptor for DiffablePagePresenter<A>, &ViewControllerPresenter.viewDidReceiveMemoryWarning());
}

uint64_t sub_1002BC06C()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + 0x258);
  v3 = *(v1 + 0x238);
  v6[0] = *(v1 + 0x228);
  v6[1] = v3;
  v6[2] = *(v1 + 584);
  v7 = v2;
  v4 = type metadata accessor for BaseDiffableShelfViewController(0, v6);
  v8.receiver = v0;
  v8.super_class = v4;
  objc_msgSendSuper2(&v8, "as_viewWillBecomePartiallyVisible");
  return sub_100765E6C();
}

void sub_1002BC12C(void *a1)
{
  v1 = a1;
  sub_1002BC06C();
}

void sub_1002BC174()
{
  v1 = swift_isaMask & *v0;
  v6 = *(v1 + 0x228);
  v2 = *(v1 + 576);
  v7 = *(v1 + 560);
  v8 = v2;
  v9 = *(v1 + 592);
  v3 = type metadata accessor for BaseDiffableShelfViewController(0, &v6);
  v10.receiver = v0;
  v10.super_class = v3;
  objc_msgSendSuper2(&v10, "as_viewDidBecomePartiallyVisible");
  swift_getWitnessTable();
  sub_10075F42C();
  if (*(v0 + qword_10099E3A0) == 1)
  {
    sub_100767D5C();
    sub_10076F64C();
    sub_10076FC1C();
    v4 = v6;
    sub_100767CAC();
  }

  sub_100760BDC();
  sub_100764FAC();
  sub_10076F64C();
  sub_10076FC1C();
  v5 = v6;
  sub_100764F7C();
}

void sub_1002BC314(void *a1)
{
  v1 = a1;
  sub_1002BC174();
}

void sub_1002BC35C()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + 0x258);
  v3 = *(v1 + 0x238);
  v8[0] = *(v1 + 0x228);
  v8[1] = v3;
  v8[2] = *(v1 + 584);
  v9 = v2;
  v4 = type metadata accessor for BaseDiffableShelfViewController(0, v8);
  v10.receiver = v0;
  v10.super_class = v4;
  objc_msgSendSuper2(&v10, "as_viewWillBecomeFullyVisible");
  sub_100765E5C();
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v5 = *&v8[0];
  sub_100767CDC();
  sub_100764FAC();
  sub_10076F63C();
  v6 = *&v8[0];
  if (*&v8[0])
  {
    v7 = *&v8[0];
    sub_100764F8C();
  }

  sub_100760BDC();
}

void sub_1002BC4BC(void *a1)
{
  v1 = a1;
  sub_1002BC35C();
}

uint64_t sub_1002BC538(SEL *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = swift_isaMask & *v3;
  v12 = *(v6 + 0x228);
  v7 = *(v6 + 576);
  v13 = *(v6 + 560);
  v11 = v13;
  v14 = v7;
  v15 = *(v6 + 592);
  v8 = type metadata accessor for BaseDiffableShelfViewController(0, &v12);
  v16.receiver = v3;
  v16.super_class = v8;
  objc_msgSendSuper2(&v16, *a1);
  WitnessTable = swift_getWitnessTable();
  return a3(v11, WitnessTable);
}

void sub_1002BC620(void *a1)
{
  v1 = a1;
  sub_1002BC538(&selRef_as_viewDidBecomeFullyVisible, &protocol conformance descriptor for DiffablePagePresenter<A>, &AppStoreViewControllerPresenter.viewDidBecomeFullyVisible());
}

id sub_1002BC69C(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = swift_isaMask & *v1;
  v6 = sub_10000A5D4(&qword_10094B618, &qword_100791698);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = *((v4 & v3) + 0x258);
  v10 = *(v5 + 568);
  v18[0] = *(v5 + 552);
  v18[1] = v10;
  v18[2] = *(v5 + 584);
  v19 = v9;
  v11 = type metadata accessor for BaseDiffableShelfViewController(0, v18);
  v20.receiver = v1;
  v20.super_class = v11;
  objc_msgSendSuper2(&v20, "traitCollectionDidChange:", a1);
  result = [v1 isViewLoaded];
  if (result)
  {
    v13 = [v1 collectionView];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 collectionViewLayout];

      [v15 invalidateLayout];
    }

    sub_1002B7354();
    v16 = sub_10000A5D4(&qword_100950560, &qword_10079A040);
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    sub_1002B7528(v8);
    sub_10000CFBC(v8, &qword_10094B618, &qword_100791698);
    result = [v1 view];
    if (result)
    {
      v17 = result;
      [result bounds];

      swift_getWitnessTable();
      sub_10076A6CC();
      return sub_1004A5458(0, 0, 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1002BC91C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1002BC69C(a3);
}

id sub_1002BC988(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = swift_isaMask;
  v10 = swift_isaMask & *v3;
  v11 = sub_10000A5D4(&qword_10094B618, &qword_100791698);
  __chkstk_darwin(v11 - 8);
  v13 = &aBlock - v12;
  v14 = *((v9 & v8) + 0x258);
  v15 = *(v10 + 568);
  aBlock = *(v10 + 552);
  v23 = v15;
  v24 = *(v10 + 584);
  v25 = v14;
  v16 = type metadata accessor for BaseDiffableShelfViewController(0, &aBlock);
  v26.receiver = v4;
  v26.super_class = v16;
  objc_msgSendSuper2(&v26, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  result = [v4 isViewLoaded];
  if (result)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = a2;
    *(v18 + 32) = a3;
    *&v24 = sub_1002C14CC;
    *(&v24 + 1) = v18;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v23 = sub_1006F5994;
    *(&v23 + 1) = &unk_10088FFF0;
    v19 = _Block_copy(&aBlock);
    v20 = v4;

    [a1 animateAlongsideTransition:v19 completion:0];
    _Block_release(v19);
    sub_1002B7354();
    v21 = sub_10000A5D4(&qword_100950560, &qword_10079A040);
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    sub_1002B7528(v13);
    sub_10000CFBC(v13, &qword_10094B618, &qword_100791698);
    swift_getWitnessTable();
    return sub_10076A6CC();
  }

  return result;
}

void sub_1002BCC30(double a1, double a2, uint64_t a3, void *a4)
{
  v5 = swift_isaMask & *a4;
  v8 = *(v5 + 0x258);
  v9 = *(v5 + 0x238);
  v13[0] = *(v5 + 0x228);
  v13[1] = v9;
  v13[2] = *(v5 + 584);
  v14 = v8;
  type metadata accessor for BaseDiffableShelfViewController(0, v13);
  sub_1004A5458(*&a1, *&a2, 0);
  v10 = [a4 collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 collectionViewLayout];

    [v12 invalidateLayout];
  }
}

void sub_1002BCD4C(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1002BC988(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_1002BCDCC()
{
  v1 = (swift_isaMask & *v0);
  result = [v0 collectionView];
  if (result)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v18 = v1[69];
    v4[2] = v18;
    v17 = v1[70];
    v4[3] = v17;
    v5 = v1[71];
    v4[4] = v5;
    v6 = v1[72];
    v4[5] = v6;
    v7 = v1[73];
    v4[6] = v7;
    v8 = v1[74];
    v4[7] = v8;
    v9 = v1[75];
    v4[8] = v9;
    v4[9] = v3;
    v10 = objc_allocWithZone(sub_10000A5D4(&qword_100950540, &unk_10079A010));
    v11 = sub_1007699EC();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *&v14 = v18;
    *(&v14 + 1) = v17;
    *&v15 = v5;
    *(&v15 + 1) = v6;
    *(v13 + 16) = v14;
    *(v13 + 32) = v15;
    *(v13 + 48) = v7;
    *(v13 + 56) = v8;
    *(v13 + 64) = v9;
    *(v13 + 72) = v12;
    v16 = v11;

    sub_10076E73C();

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1002BCFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v14 = sub_10000A5D4(&qword_100950548, &unk_1007AAAE0);
  __chkstk_darwin(v14 - 8);
  v16 = v27 - v15;
  v17 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v27 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = qword_1009503C8;
    swift_beginAccess();
    v24 = *&v22[v23];
    if (!v24)
    {

      (*(v18 + 56))(v16, 1, 1, v17);
      goto LABEL_6;
    }

    v25 = v24;
    sub_1007699AC();

    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

LABEL_6:
      sub_10000CFBC(v16, &qword_100950548, &unk_1007AAAE0);
      return 0;
    }

    v27[0] = a11;
    v27[1] = a2;
    (*(v18 + 32))(v20, v16, v17);

    v30[0] = a5;
    v30[1] = a6;
    v30[2] = v28;
    v30[3] = v29;
    v30[4] = a9;
    v30[5] = a10;
    v30[6] = v27[0];
    type metadata accessor for BaseDiffableShelfViewController(0, v30);
    swift_getWitnessTable();
    v26 = sub_10076A61C();

    (*(v18 + 8))(v20, v17);
    return v26;
  }

  return result;
}

uint64_t sub_1002BD294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v16 = Strong;
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
  }

  v21[0] = a6;
  v21[1] = a7;
  v21[2] = a8;
  v21[3] = a9;
  v21[4] = a10;
  v21[5] = a11;
  v21[6] = a12;
  type metadata accessor for BaseDiffableShelfViewController(0, v21);
  swift_getWitnessTable();
  v19 = sub_10076A62C();

  return v19;
}

id sub_1002BD430()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_isaMask & *v0;
  v4 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  result = [v0 view];
  if (result)
  {
    v6 = result;
    [result bounds];
    v8 = v7;
    v10 = v9;

    (*((swift_isaMask & *v1) + 0x488))(v8, v10);
    sub_100016F40(0, &qword_100948C70, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    isa = sub_1007701AC().super.isa;

    [v4 setBoundarySupplementaryItems:isa];

    v12 = (*(ObjectType + 784))();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = *(v3 + 552);
    *(v14 + 24) = *(v3 + 560);
    *(v14 + 40) = *(v3 + 576);
    *(v14 + 48) = *(v3 + 584);
    *(v14 + 64) = *(v3 + 600);
    *(v14 + 72) = v13;
    v15 = objc_allocWithZone(v12);
    v18[4] = sub_1002C12D0;
    v18[5] = v14;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_1002BAFEC;
    v18[3] = &unk_10088FF28;
    v16 = _Block_copy(v18);

    v17 = [v15 initWithSectionProvider:v16 configuration:v4];

    _Block_release(v16);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002BD6E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _UNKNOWN **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a4;
  v16 = sub_10076F1BC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v26 = a9;
  v27 = a10;
  v29 = a2;
  v21 = Strong;
  sub_10000A5D4(&qword_100950538, &qword_10079A008);
  v28 = a1;
  v31 = v21;
  v32 = &off_10088FE80;

  v22 = v21;
  sub_10076F19C();
  sub_10076F60C();

  (*(v17 + 8))(v19, v16);

  v31 = v30;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = v26;
  v37 = v27;
  type metadata accessor for BaseDiffableShelfViewController(0, &v31);
  swift_getWitnessTable();
  v23 = sub_10076A6EC();

  return v23;
}

uint64_t sub_1002BD918(void *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a9;
  v37 = a1;
  v15 = sub_1007621EC();
  v39 = *(v15 - 8);
  v40 = v15;
  __chkstk_darwin(v15);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v38 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  v21 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v21 - 8);
  v23 = &v36 - v22;
  v24 = sub_10076469C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v25 + 56))(v23, 1, 1, v24);
    return sub_10000CFBC(v23, &unk_10095DCF0, &unk_10078C910);
  }

  v29 = Strong;
  v42[0] = a7;
  v42[1] = a8;
  v42[2] = v41;
  v42[3] = a10;
  v42[4] = a11;
  v42[5] = a12;
  v42[6] = a13;
  type metadata accessor for BaseDiffableShelfViewController(0, v42);
  swift_getWitnessTable();
  sub_10076A67C();

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_10000CFBC(v23, &unk_10095DCF0, &unk_10078C910);
  }

  (*(v25 + 32))(v27, v23, v24);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v38 + 8))(v20, v18);
  v31 = v39;
  v30 = v40;
  if ((*(v39 + 88))(v17, v40) == enum case for ShelfBackground.color(_:))
  {
    (*(v31 + 96))(v17, v30);
    v32 = *v17;
    v33 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
    v34 = sub_1007659CC();
    (*(*(v34 - 8) + 8))(v17 + v33, v34);
    [v37 setBackgroundColor:v32];

    return (*(v25 + 8))(v27, v24);
  }

  else
  {
    (*(v25 + 8))(v27, v24);
    return (*(v31 + 8))(v17, v30);
  }
}

void sub_1002BDD88(void *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v53 = a8;
  v54 = a9;
  v52 = a7;
  v50 = sub_1007621EC();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v16 = &v45 - v15;
  v17 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v17 - 8);
  v19 = &v45 - v18;
  v20 = sub_10076469C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v55 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000A5D4(&qword_100944C40, &unk_10079A0C0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v45 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v46 = a1;
    v29 = qword_1009503C8;
    swift_beginAccess();
    v30 = *&v28[v29];
    if (!v30)
    {

      return;
    }

    v31 = v30;

    sub_10076E79C();
    v32 = sub_10076E5EC();
    (*(v24 + 8))(v26, v23);
    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      if (__OFSUB__(v32, 1))
      {
        __break(1u);
        return;
      }

      v34 = v33;
      v35 = v21;
      v56[0] = v52;
      v56[1] = v53;
      v56[2] = v54;
      v56[3] = a10;
      v56[4] = a11;
      v56[5] = a12;
      v56[6] = a13;
      type metadata accessor for BaseDiffableShelfViewController(0, v56);
      swift_getWitnessTable();
      sub_10076A67C();

      v36 = (*(v21 + 48))(v19, 1, v20);
      v37 = v55;
      if (v36 != 1)
      {
        (*(v35 + 32))(v55, v19, v20);
        sub_10076468C();
        swift_getKeyPath();
        v38 = v51;
        v39 = v48;
        sub_10076F49C();

        (*(v47 + 8))(v16, v39);
        v40 = v49;
        v41 = v50;
        if ((*(v49 + 88))(v38, v50) == enum case for ShelfBackground.color(_:))
        {
          (*(v40 + 96))(v38, v41);
          v42 = *v38;
          v43 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
          v44 = sub_1007659CC();
          (*(*(v44 - 8) + 8))(v38 + v43, v44);
          [v46 setBackgroundColor:v42];

          (*(v35 + 8))(v37, v20);
        }

        else
        {
          (*(v35 + 8))(v37, v20);
          (*(v40 + 8))(v38, v41);
        }

        return;
      }
    }

    else
    {
      (*(v21 + 56))(v19, 1, 1, v20);
    }

    sub_10000CFBC(v19, &unk_10095DCF0, &unk_10078C910);
  }
}

uint64_t sub_1002BE360(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  sub_100016E2C(a2, &v7, &unk_1009434C0, &qword_100783F60);
  sub_100016E2C(&v6, &v4, &unk_1009505A0, &qword_1007B4690);
  v2 = v4;

  sub_1002B9960(v2, v5);

  sub_10000CFBC(&v6, &unk_1009505A0, &qword_1007B4690);
  return sub_10000CFBC(v5, &unk_1009434C0, &qword_100783F60);
}

double sub_1002BE43C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    v5 = sub_10076843C();

    if (v5)
    {
      sub_10076366C();
    }
  }

  return result;
}

uint64_t sub_1002BE510(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, char *, uint64_t, void, uint64_t, uint64_t))
{
  v6 = v4;
  v9 = swift_isaMask & *v6;
  v10 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_10076341C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a2)
  {
    v24 = a1;
    v25 = a4;
    swift_getObjectType();
    v18 = a2;
    sub_1007645CC();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      return sub_10000CFBC(v12, &unk_1009428D0, &unk_100783DC0);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      v19 = *(v9 + 600);
      v20 = *(v9 + 568);
      v26[0] = *(v9 + 552);
      v26[1] = v20;
      v26[2] = *(v9 + 584);
      v27 = v19;
      type metadata accessor for BaseDiffableShelfViewController(0, v26);
      swift_getWitnessTable();
      sub_10076A6AC();
      v22 = v21;
      ObjectType = swift_getObjectType();
      v25(v18, v16, v24, *(v6 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph), ObjectType, v22);

      swift_unknownObjectRelease();
      return (*(v14 + 8))(v16, v13);
    }
  }

  return result;
}

uint64_t sub_1002BE7F8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *, uint64_t, void, uint64_t, uint64_t))
{
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_1002BE510(v14, v15, v17, a6);

  return (*(v11 + 8))(v13, v10);
}

void sub_1002BE95C(void *a1, uint64_t a2, void (*a3)(id, char *, void *, void, uint64_t, uint64_t))
{
  v6 = swift_isaMask & *v3;
  v7 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_10076341C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_10075E02C().super.isa;
  v25 = [a1 cellForItemAtIndexPath:isa];

  if (v25)
  {
    v24 = a1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v23 = a3;
      v15 = v25;
      sub_1007645CC();
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        sub_10000CFBC(v9, &unk_1009428D0, &unk_100783DC0);
      }

      else
      {
        (*(v11 + 32))(v13, v9, v10);
        v17 = *(v6 + 600);
        v18 = *(v6 + 568);
        v26[0] = *(v6 + 552);
        v26[1] = v18;
        v26[2] = *(v6 + 584);
        v27 = v17;
        type metadata accessor for BaseDiffableShelfViewController(0, v26);
        swift_getWitnessTable();
        sub_10076A6AC();
        v20 = v19;
        ObjectType = swift_getObjectType();
        v23(v15, v13, v24, *(v3 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph), ObjectType, v20);

        swift_unknownObjectRelease();
        (*(v11 + 8))(v13, v10);
      }
    }

    else
    {
      v16 = v25;
    }
  }
}

uint64_t sub_1002BECB0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *, void *, void, uint64_t, uint64_t))
{
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v12 = a3;
  v13 = a1;
  sub_1002BE95C(v12, v11, a5);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1002BEDBC(uint64_t a1, void *a2)
{
  v2 = swift_isaMask & *a2;
  v3 = *(v2 + 0x258);
  v4 = *(v2 + 0x238);
  v6[0] = *(v2 + 0x228);
  v6[1] = v4;
  v6[2] = *(v2 + 584);
  v7 = v3;
  type metadata accessor for BaseDiffableShelfViewController(0, v6);
  swift_getWitnessTable();
  return sub_10076A65C();
}

double sub_1002BEEB0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_10075E11C();
  v6 = sub_1007701BC();
  v7 = a3;
  v8 = a1;
  sub_1002B9AF0(v7, v6);

  return result;
}

uint64_t sub_1002BEF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v48 = a2;
  v49 = a5;
  v47 = a1;
  v9 = swift_isaMask & *v6;
  v10 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v10 - 8);
  v41 = (&v38 - v11);
  v46 = sub_10076341C();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = sub_10076469C();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v9 + 1168);
  v42 = a3;
  v43 = a4;
  v21(v56, a3, a4, v18);
  sub_100016E2C(v56, &v50, &unk_100950550, &unk_10079A030);
  v22 = (v9 + 552);
  v23 = (v9 + 568);
  v24 = (v9 + 584);
  if (*(&v51 + 1))
  {
    sub_100012498(&v50, &v54);
    v40 = *v22;
    v39 = *v23;
    v38 = *v24;
    v25 = *(v9 + 600);
    v50 = v40;
    v51 = v39;
    v52 = v38;
    v53 = v25;
    type metadata accessor for BaseDiffableShelfViewController(0, &v50);
    swift_getWitnessTable();
    sub_10076A6AC();
    swift_getObjectType();
    sub_1007686EC();
    swift_unknownObjectRelease();
    sub_10000CD74(&v54);
    v26 = v38;
    v27 = v39;
    v28 = v40;
  }

  else
  {
    sub_10000CFBC(&v50, &unk_100950550, &unk_10079A030);
    v28 = *v22;
    v27 = *v23;
    v26 = *v24;
    v25 = *(v9 + 600);
  }

  v50 = v28;
  v51 = v27;
  v52 = v26;
  v53 = v25;
  type metadata accessor for BaseDiffableShelfViewController(0, &v50);
  swift_getWitnessTable();
  sub_10076A66C();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000CFBC(v15, &unk_10095DCF0, &unk_10078C910);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    sub_10076A6BC();
    swift_getObjectType();
    sub_100768A8C();
    swift_unknownObjectRelease();
    if (v55)
    {
      sub_100012498(&v54, &v50);
      sub_10076A6AC();
      swift_getObjectType();
      sub_1007686DC();
      swift_unknownObjectRelease();
      sub_10000CD74(&v50);
      (*(v17 + 8))(v20, v16);
    }

    else
    {
      (*(v17 + 8))(v20, v16);
      sub_10000CFBC(&v54, &unk_100950550, &unk_10079A030);
    }
  }

  v29 = v41;
  sub_10076A65C();
  v30 = v45;
  v31 = v46;
  v32 = (*(v45 + 48))(v29, 1, v46);
  v33 = v44;
  if (v32 == 1)
  {
    sub_10000CFBC(v56, &unk_100950550, &unk_10079A030);
    v34 = &unk_1009428D0;
    v35 = &unk_100783DC0;
    v36 = v29;
  }

  else
  {
    (*(v30 + 32))(v44, v29, v31);
    sub_10076A68C();
    swift_getObjectType();
    sub_10076816C();
    swift_unknownObjectRelease();
    if (v55)
    {
      sub_100012498(&v54, &v50);
      sub_10076A6AC();
      swift_getObjectType();
      sub_1007686CC();
      swift_unknownObjectRelease();
      sub_10000CD74(&v50);
      (*(v30 + 8))(v33, v31);
      v34 = &unk_100950550;
      v35 = &unk_10079A030;
      v36 = v56;
    }

    else
    {
      (*(v30 + 8))(v33, v31);
      sub_10000CFBC(v56, &unk_100950550, &unk_10079A030);
      v36 = &v54;
      v34 = &unk_100950550;
      v35 = &unk_10079A030;
    }
  }

  return sub_10000CFBC(v36, v34, v35);
}

uint64_t sub_1002BF680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = a2;
  v50 = a5;
  v48 = a1;
  v9 = swift_isaMask & *v6;
  v10 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v10 - 8);
  v42 = (&v39 - v11);
  v12 = sub_10076341C();
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v14 - 8);
  v16 = &v39 - v15;
  v17 = sub_10076469C();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 + 1168);
  v43 = a3;
  v44 = a4;
  v22(&v51, a3, a4, v19);
  v23 = (v9 + 552);
  v24 = (v9 + 568);
  v25 = (v9 + 584);
  if (*(&v52 + 1))
  {
    sub_100012498(&v51, &v55);
    v41 = *v23;
    v40 = *v24;
    v39 = *v25;
    v26 = *(v9 + 600);
    v51 = v41;
    v52 = v40;
    v53 = v39;
    v54 = v26;
    type metadata accessor for BaseDiffableShelfViewController(0, &v51);
    swift_getWitnessTable();
    sub_10076A6AC();
    swift_getObjectType();
    sub_10076871C();
    swift_unknownObjectRelease();
    sub_10000CD74(&v55);
    v27 = v39;
    v28 = v40;
    v29 = v41;
  }

  else
  {
    sub_10000CFBC(&v51, &unk_100950550, &unk_10079A030);
    v29 = *v23;
    v28 = *v24;
    v27 = *v25;
    v26 = *(v9 + 600);
  }

  v51 = v29;
  v52 = v28;
  v53 = v27;
  v54 = v26;
  type metadata accessor for BaseDiffableShelfViewController(0, &v51);
  swift_getWitnessTable();
  sub_10076A66C();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000CFBC(v16, &unk_10095DCF0, &unk_10078C910);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    sub_10076A6BC();
    swift_getObjectType();
    sub_100768A8C();
    swift_unknownObjectRelease();
    if (v56)
    {
      sub_100012498(&v55, &v51);
      sub_10076A6AC();
      swift_getObjectType();
      sub_10076870C();
      swift_unknownObjectRelease();
      sub_10000CD74(&v51);
      (*(v18 + 8))(v21, v17);
    }

    else
    {
      (*(v18 + 8))(v21, v17);
      sub_10000CFBC(&v55, &unk_100950550, &unk_10079A030);
    }
  }

  v30 = v42;
  sub_10076A65C();
  v32 = v46;
  v31 = v47;
  v33 = (*(v46 + 48))(v30, 1, v47);
  v34 = v45;
  if (v33 == 1)
  {
    v35 = &unk_1009428D0;
    v36 = &unk_100783DC0;
    v37 = v30;
  }

  else
  {
    (*(v32 + 32))(v45, v30, v31);
    sub_10076A68C();
    swift_getObjectType();
    sub_10076816C();
    swift_unknownObjectRelease();
    if (v56)
    {
      sub_100012498(&v55, &v51);
      sub_10076A6AC();
      swift_getObjectType();
      sub_1007686FC();
      swift_unknownObjectRelease();
      sub_10000CD74(&v51);
      return (*(v32 + 8))(v34, v31);
    }

    (*(v32 + 8))(v34, v31);
    v35 = &unk_100950550;
    v36 = &unk_10079A030;
    v37 = &v55;
  }

  return sub_10000CFBC(v37, v35, v36);
}

uint64_t sub_1002BFD34(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(id, id, uint64_t, uint64_t, char *))
{
  v11 = sub_10075E11C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076FF9C();
  v17 = v16;
  sub_10075E06C();
  v18 = a3;
  v19 = a4;
  v20 = a1;
  a7(v18, v19, v15, v17, v14);

  return (*(v12 + 8))(v14, v11);
}

Class sub_1002BFE80(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  if (a4)
  {
    sub_10075E06C();
    v13 = sub_10075E11C();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v13 = sub_10075E11C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v15 = a1;
  sub_1002B9EE0(v9, v12);

  sub_10000CFBC(v9, &unk_10094DE60, "ܱ\b");
  sub_10075E11C();
  v16 = *(v13 - 8);
  v17 = (*(v16 + 48))(v12, 1, v13);
  v18 = 0;
  if (v17 != 1)
  {
    isa = sub_10075E02C().super.isa;
    (*(v16 + 8))(v12, v13);
    v18 = isa;
  }

  return v18;
}

void sub_1002C008C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1002C1034(a4, a5);

  swift_unknownObjectRelease();
}

void sub_1002C012C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002C0110(v4);
}

void sub_1002C01B0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002C0194(v4);
}

void sub_1002C0234(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002C0218(v4);
}

void sub_1002C02B8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002C029C(v4);
}

void sub_1002C0344(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_1002C0320(v6, a4);
}

uint64_t sub_1002C03B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  v10 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    result = sub_10000CFBC(v8, &unk_100943200, &unk_100785840);
    v13 = 0;
  }

  else
  {
    v13 = sub_100263BF0(a2, 1, v9, v8);
    result = (*(v11 + 8))(v8, v10);
  }

  *a3 = v13;
  return result;
}

void sub_1002C0524(void *a1)
{
  v1 = a1;
  sub_1002B63E4();
}

void sub_1002C056C(void *a1)
{
  v1 = a1;
  sub_1002B6404();
}

double sub_1002C05B4()
{

  v1 = qword_10099E358;
  v2 = sub_10076B15C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return result;
}

id sub_1002C070C()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + 0x258);
  v3 = *(v1 + 0x238);
  v6[0] = *(v1 + 0x228);
  v6[1] = v3;
  v6[2] = *(v1 + 584);
  v7 = v2;
  v4 = type metadata accessor for BaseDiffableShelfViewController(0, v6);
  v8.receiver = v0;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, "dealloc");
}

double sub_1002C07B4(uint64_t a1)
{

  v2 = qword_10099E358;
  v3 = sub_10076B15C();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  return result;
}

id sub_1002C0A1C()
{
  v1 = [v0 collectionView];

  return v1;
}

void sub_1002C0A54(void *a1)
{
  [v1 setCollectionView:a1];
}

void (*sub_1002C0A9C(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 collectionView];
  return sub_1002C0AF8;
}

void sub_1002C0AF8(id *a1)
{
  v1 = *a1;
  [a1[1] setCollectionView:?];
}

void *sub_1002C0B40()
{
  v0 = sub_1002C141C();
  v1 = v0;
  return v0;
}

uint64_t (*sub_1002C0B70(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002BB178(v2);
  return sub_10001D41C;
}

void *sub_1002C0BE0()
{
  v0 = sub_1002C13D8();
  v1 = v0;
  return v0;
}

uint64_t (*sub_1002C0C10(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002BB0C0(v2);
  return sub_10001D41C;
}

uint64_t (*sub_1002C0C88(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002B7258(v2);
  return sub_100019A4C;
}

double sub_1002C0F24()
{
  sub_1002C13C8();

  return result;
}

uint64_t sub_1002C1034(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = swift_isaMask;
  v5 = swift_isaMask & *v2;
  v6 = sub_10000A5D4(&unk_10095DCF0, &unk_10078C910);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_10076469C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *((v4 & v3) + 0x258);
  v14 = *(v5 + 568);
  v16[0] = *(v5 + 552);
  v16[1] = v14;
  v16[2] = *(v5 + 584);
  v17 = v13;
  type metadata accessor for BaseDiffableShelfViewController(0, v16);
  swift_getWitnessTable();
  sub_10076A67C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000CFBC(v8, &unk_10095DCF0, &unk_10078C910);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_10076665C();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1002C1298()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1002C1304(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002C131C()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1002C13D8()
{
  v1 = qword_1009503C0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1002C141C()
{
  v1 = qword_1009503C8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1002C1494()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t (*sub_1002C14D8(void *a1))(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002C1730;
}

uint64_t sub_1002C153C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002C1578()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1002C15C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1002C1B38(&qword_100950588, type metadata accessor for DiffableFlowPreviewPresenter, &unk_1007AAA94);
  v9 = sub_10000A5D4(&unk_100950590, &qword_10079A058);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_10094A6C8];
  *&v10[qword_10094A6C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_10094A6C0];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_10094A6D8] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_1002C16F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1002C174C()
{
  result = qword_1009505D8;
  if (!qword_1009505D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009505D8);
  }

  return result;
}

void (*sub_1002C17A0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002C1A9C;
}

uint64_t (*sub_1002C1804(void *a1))(uint64_t, uint64_t)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002C1BC8;
}

uint64_t (*sub_1002C1868(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002C1A40;
}

id (*sub_1002C18CC(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002C1A1C;
}

uint64_t (*sub_1002C1958(void *a1))(uint64_t, uint64_t)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002C1BC8;
}

uint64_t (*sub_1002C19BC())(uint64_t a1)
{
  v1 = (*(v0 + 16))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_1002C16F0;
}

uint64_t sub_1002C1B38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002C1BE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

uint64_t sub_1002C1C2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002C1CBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1002C1D04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1002C1D6C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_10077164C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(v5, *(v5 + 24));
  sub_10076D41C();
  v16 = enum case for FloatingPointRoundingRule.up(_:);
  v58 = *(v13 + 104);
  v58(v15, enum case for FloatingPointRoundingRule.up(_:), v12);
  [a1 displayScale];
  sub_10076C8DC();
  v59 = v17;
  v18 = *(v13 + 8);
  v18(v15, v12);
  sub_10000CF78(v6 + 5, v6[8]);
  sub_10076D41C();
  v58(v15, v16, v12);
  [a1 displayScale];
  sub_10076C8DC();
  v54 = v19;
  v18(v15, v12);
  sub_10000CF78(v6 + 13, v6[16]);
  sub_10076E0FC();
  v57 = v20;
  v55 = v21;
  v23 = v22 + 4.0;
  sub_10000CF78(v6 + 18, v6[21]);
  v24 = a4;
  sub_10076E0FC();
  v27 = v25;
  v58 = v28;
  v29 = v23;
  if (v23 <= v25)
  {
    v23 = v25;
  }

  v30 = v29;
  v51 = v29;
  v52 = v26;
  v56 = v25;
  v60.origin.x = a2;
  v60.origin.y = a3;
  v60.size.width = v24;
  v60.size.height = a5;
  v31 = CGRectGetMinX(v60) + (v23 - v30) * 0.5;
  v32 = v59;
  v49 = v59 - v55;
  v50 = v31;
  v61.origin.x = a2;
  v61.origin.y = a3;
  v61.size.width = v24;
  v61.size.height = a5;
  MinX = CGRectGetMinX(v61);
  v53 = v32 + v54;
  v54 = v32 + v54 - v52;
  v55 = MinX + (v23 - v27) * 0.5;
  v62.origin.x = a2;
  v62.origin.y = a3;
  v46 = a3;
  v62.size.width = v24;
  v62.size.height = a5;
  v34 = CGRectGetWidth(v62) - v23 - *(v5 + 88);
  sub_10000CF78((v5 + 184), *(v5 + 208));
  sub_10076E0FC();
  v59 = v36;
  v38 = v37;
  if (v34 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v34;
  }

  v63.origin.x = a2;
  v63.origin.y = a3;
  v63.size.width = v24;
  v63.size.height = a5;
  v40 = CGRectGetMaxX(v63) - v39;
  v41 = v53 - v38;
  v47 = v41;
  v48 = v39;
  sub_10000CF78((v5 + 224), *(v5 + 248));
  sub_10076E0FC();
  v45 = v43;
  if (v34 < v42)
  {
    v42 = v34;
  }

  if (*(v5 + 96) >= v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = *(v5 + 96);
  }

  v53 = v44;
  v64.origin.x = a2;
  v64.origin.y = v46;
  v64.size.width = v24;
  v64.size.height = a5;
  v52 = CGRectGetMaxX(v64) - v44;
  v65.origin.x = v40;
  v65.origin.y = v41;
  v65.size.width = v39;
  v65.size.height = v59;
  CGRectGetMinY(v65);
  sub_10000CF78((v5 + 104), *(v5 + 128));
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CF78((v5 + 144), *(v5 + 168));
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CF78((v5 + 184), *(v5 + 208));
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CF78((v5 + 224), *(v5 + 248));
  sub_1007709CC();
  sub_10076E0EC();
}

double sub_1002C22C4(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  sub_10000CF78(v3, v3[3]);
  sub_10076D41C();
  sub_10000CF78(v4 + 5, v4[8]);
  sub_10076D41C();
  sub_10000CF78(v4 + 18, v4[21]);
  sub_10076E0FC();
  return a2;
}

uint64_t sub_1002C23A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100083068();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_1002C2400()
{
  result = qword_100950710;
  if (!qword_100950710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950710);
  }

  return result;
}

unint64_t sub_1002C2458()
{
  result = qword_100950718;
  if (!qword_100950718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950718);
  }

  return result;
}

void sub_1002C2504(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupDataSource] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView] = 0;
  swift_weakInit();
  v13 = &v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver] = 0;
  v14 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v15 = objc_allocWithZone(sub_1007666AC());
  *&v4[v14] = sub_10076669C();
  v16 = &v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_listConfiguration];
  *v16 = 0;
  *(v16 + 1) = 1;
  v17 = [objc_allocWithZone(type metadata accessor for ImageHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_iconHeadingView;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_iconHeadingView] = v17;
  v19 = qword_10093FD30;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&v20[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView];
  v22 = qword_100950720;
  v23 = [v21 image];
  if (!v23 || (v24 = v23, sub_100016F40(0, &qword_10094F610, UIImage_ptr), v25 = v22, v26 = sub_100770EEC(), v24, v25, (v26 & 1) == 0))
  {
    [v21 setImage:v22];
    [v20 setNeedsLayout];
  }

  v27 = qword_10093FD38;
  v28 = *&v5[v18];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_10076D3DC();
  v30 = sub_10000A61C(v29, qword_100950728);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v12, v30, v29);
  v33 = *(v31 + 56);
  v33(v12, 0, 1, v29);
  sub_1005A806C(v12);

  v34 = qword_10093FD40;
  v35 = *&v5[v18];
  if (v34 != -1)
  {
    swift_once();
  }

  sub_1001E083C(&qword_100950740, v68);
  v36 = OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1001E0898(v68, v35 + v36);
  swift_endAccess();
  [v35 setNeedsLayout];

  sub_1001E08F4(v68);
  [*(*&v5[v18] + OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel) setNumberOfLines:1];
  v37 = [objc_allocWithZone(type metadata accessor for SearchHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_titleHeadingView;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_titleHeadingView] = v37;
  v39 = qword_10093FD48;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_10000A61C(v29, qword_100950768);
  v32(v12, v41, v29);
  v33(v12, 0, 1, v29);
  sub_100662DD4(v12);

  [*(*&v5[v38] + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel) setNumberOfLines:2];
  v42 = type metadata accessor for SearchLockupListCollectionViewCell();
  v67.receiver = v5;
  v67.super_class = v42;
  v43 = objc_msgSendSuper2(&v67, "initWithFrame:", a1, a2, a3, a4);
  v44 = sub_1002C3C8C();
  v45 = [objc_allocWithZone(UICollectionView) initWithFrame:v44 collectionViewLayout:{a1, a2, a3, a4}];

  v46 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView;
  v47 = *&v43[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
  *&v43[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView] = v45;
  v48 = v45;

  if (!v48)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_10076AEDC();
  swift_allocObject();
  *&v43[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator] = sub_10076AE7C();

  v49 = v43;
  v50 = [v49 contentView];
  [v50 addSubview:*&v49[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_iconHeadingView]];

  v51 = [v49 contentView];
  [v51 addSubview:*&v49[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_titleHeadingView]];

  v52 = *&v43[v46];
  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v52 setDelegate:v49];
  v53 = *&v43[v46];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v54 = objc_opt_self();
  v55 = v53;
  v56 = [v54 clearColor];
  [v55 setBackgroundColor:v56];

  v57 = *&v43[v46];
  if (!v57)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for SmallSearchLockupCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = v57;
  sub_1007708FC();
  v60 = sub_10076FF6C();

  [v59 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v60];

  v61 = *&v43[v46];
  if (!v61)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  type metadata accessor for SeparatorSpacerReusableView();
  v62 = swift_getObjCClassFromMetadata();
  v63 = v61;
  sub_1007708FC();
  v64 = sub_10076FF6C();

  sub_1007708FC();
  v65 = sub_10076FF6C();

  [v63 registerClass:v62 forSupplementaryViewOfKind:v64 withReuseIdentifier:v65];

  v66 = [v49 contentView];
  if (*&v43[v46])
  {
    [v66 addSubview:?];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_1002C2CF0()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    swift_beginAccess();
    swift_weakLoadStrong();

    sub_10076AE9C();

    if (swift_weakLoadStrong())
    {
      sub_10076813C();
      swift_allocObject();
      *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver) = sub_10076814C();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002C2DC0()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.appstore(_:), v0, v2);
  v5 = sub_10076046C();
  result = (*(v1 + 8))(v4, v0);
  qword_100950720 = v5;
  return result;
}

void sub_1002C2ECC()
{
  qword_100950758 = &type metadata for CGFloat;
  unk_100950760 = &protocol witness table for CGFloat;
  qword_100950740 = 0x4008000000000000;
}

uint64_t sub_1002C2F08()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_100950780);
  v1 = sub_10000A61C(v0, qword_100950780);
  if (qword_100940A10 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A0C40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002C2FD0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for CGFloat;
  v15 = &protocol witness table for CGFloat;
  *&v13 = 0x4010000000000000;
  if (qword_10093FD50 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v5 = sub_10000A61C(v4, qword_100950780);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11 = sub_10076D9AC();
  v12 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v6 = sub_10000DB7C(v9);
  (*(v1 + 16))(v6, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  sub_10003F19C(&v13, &unk_100950798);
  return sub_10003F19C(&v10, &unk_1009507C0);
}

id sub_1002C31CC(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_listConfiguration];
  if (v2[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_listConfiguration] == (result & 1) && *&v2[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_listConfiguration + 8] == a2)
  {
    return result;
  }

  v5 = result;
  *v3 = result & 1;
  *(v3 + 1) = a2;
  v6 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView;
  result = *&v2[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [result collectionViewLayout];
  [v7 invalidateLayout];

  result = *&v2[v6];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  [result setScrollEnabled:(v5 & 1) == 0];

  return [v2 setNeedsLayout];
}

void sub_1002C32A8()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v57 = *(v2 - 8);
  v58 = v2;
  __chkstk_darwin(v2);
  v56 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D1AC();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100766BEC();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v47 - v9;
  v10 = sub_10076443C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v47 - v15;
  v16 = sub_100763ADC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SearchLockupListCollectionViewCell();
  v68.receiver = v0;
  v68.super_class = v20;
  objc_msgSendSuper2(&v68, "layoutSubviews");
  v21 = [v0 contentView];
  [v21 bounds];
  v49 = v22;

  v23 = [v1 contentView];
  [v23 layoutMargins];

  v59 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_listConfiguration + 8];
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v16, qword_10099DDA0);
  v25 = [v1 traitCollection];
  (*(v17 + 16))(v19, v24, v16);
  v26 = sub_100763A4C();
  if ((v28 & 1) == 0 && ((v26 | v27) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v29 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v29 = qword_100944CA0;
    }

    v30 = sub_10000A61C(v10, v29);
    v31 = v13;
    (*(v11 + 16))(v13, v30, v10);
    v32 = v47;
    (*(v11 + 32))(v47, v31, v10);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v11 + 8))(v32, v10);
  }

  sub_10076398C();

  (*(v17 + 8))(v19, v16);
  if (__OFSUB__(v59, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_iconHeadingView];
  v67[3] = type metadata accessor for ImageHeadingView();
  v67[4] = &protocol witness table for UIView;
  v67[0] = v33;
  v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_titleHeadingView];
  v66[3] = type metadata accessor for SearchHeadingView();
  v66[4] = &protocol witness table for UIView;
  v66[0] = v34;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView])
  {
    v64[0] = *&v1[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
    sub_100016F40(0, &unk_10094D220, UICollectionView_ptr);
    v35 = v33;
    v36 = v34;
    sub_10076D28C();
    v64[3] = sub_10076D67C();
    v64[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v64);
    sub_10076D66C();
    if (qword_10093FD48 == -1)
    {
LABEL_16:
      v37 = sub_10076D3DC();
      v38 = sub_10000A61C(v37, qword_100950768);
      v39 = v48;
      (*(*(v37 - 8) + 16))(v48, v38, v37);
      v41 = v50;
      v40 = v51;
      (*(v50 + 104))(v39, enum case for FontSource.useCase(_:), v51);
      v63[3] = sub_10076D9AC();
      v63[4] = &protocol witness table for StaticDimension;
      sub_10000DB7C(v63);
      v61 = v40;
      v62 = &protocol witness table for FontSource;
      v42 = sub_10000DB7C(v60);
      (*(v41 + 16))(v42, v39, v40);
      sub_10076D9BC();
      (*(v41 + 8))(v39, v40);
      v61 = &type metadata for CGFloat;
      v62 = &protocol witness table for CGFloat;
      v60[0] = 0x4030000000000000;
      v43 = v53;
      sub_100766BDC();
      v45 = v54;
      v44 = v55;
      (*(v54 + 16))(v52, v43, v55);
      sub_10000A570(v67, v64);
      sub_10000A570(v66, v63);
      sub_10000A570(v65, v60);
      sub_100766C0C();
      swift_allocObject();
      v64[0] = sub_100766BFC();
      (*(v45 + 8))(v43, v44);
      sub_10000CD74(v65);
      sub_10000CD74(v66);
      sub_10000CD74(v67);
      sub_1002C5F34(&qword_100950880, &type metadata accessor for SearchLockupListLayout, &protocol conformance descriptor for SearchLockupListLayout);
      v46 = v56;
      sub_10076DFCC();
      (*(v57 + 8))(v46, v58);

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_16;
  }

  __break(1u);
}

id sub_1002C3C8C()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = ObjectType;
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v7[4] = sub_1002C5468;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1002BAFEC;
  v7[3] = &unk_100890550;
  v4 = _Block_copy(v7);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  return v5;
}

unsigned __int8 *sub_1002C3DB8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_listConfiguration];
    v6 = *&result[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_listConfiguration + 8];

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      v8 = [result contentView];

      if (v8)
      {
        [v8 layoutMargins];
        v11 = sub_1002C5488(v5, v6, a2, v9, v10);
        if (v11)
        {
          v12 = v11;
          v13 = swift_allocObject();
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();
          v15 = v12;
          v16 = v12;

          aBlock[4] = sub_1002C593C;
          aBlock[5] = v13;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100751F08;
          aBlock[3] = &unk_100890578;
          v17 = _Block_copy(aBlock);

          [v16 setVisibleItemsInvalidationHandler:v17];

          _Block_release(v17);
          v8 = v16;
        }

        else
        {
          v15 = 0;
        }

        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1002C3FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver);
    v5 = Strong;

    if (v4)
    {
      sub_10076813C();
      sub_10076194C();
    }
  }
}

id sub_1002C4268(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchLockupListCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1002C43E8(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
  sub_1002C2CF0();

  return result;
}

void (*sub_1002C444C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1002C44E4;
}

void sub_1002C44E4(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_1002C2CF0();
  }

  free(v3);
}

uint64_t sub_1002C456C()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_1002C45C8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

double sub_1002C4688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, void *a15, uint64_t a16)
{
  v85 = a8;
  v84 = a7;
  v81 = a5;
  v82 = a6;
  v79 = a3;
  v80 = a4;
  v78 = a1;
  v16 = sub_10076D1AC();
  v87 = *(v16 - 8);
  v88 = v16;
  __chkstk_darwin(v16);
  v86 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100766BEC();
  v91 = *(v18 - 8);
  v92 = v18;
  __chkstk_darwin(v18);
  v89 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v90 = &v72 - v21;
  v94 = sub_10076997C();
  v96 = *(v94 - 8);
  __chkstk_darwin(v94);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ImageHeadingView();
  if (qword_10093FD30 != -1)
  {
    swift_once();
  }

  v24 = qword_100950720;
  if (qword_10093FD38 != -1)
  {
    swift_once();
  }

  v83 = sub_10076D3DC();
  sub_10000A61C(v83, qword_100950728);
  if (qword_10093FD40 != -1)
  {
    swift_once();
  }

  v25 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  v26 = [a15 traitCollection];
  v93 = v25;
  v27 = sub_100770B3C();

  v28 = objc_opt_self();
  v76 = v27;
  v29 = [v28 configurationWithFont:v27];
  v30 = [v24 imageByApplyingSymbolConfiguration:v29];
  v31 = v30;
  if (v30)
  {
    [v30 size];
  }

  v32 = sub_10076DDDC();
  swift_allocObject();
  v33 = sub_10076DDBC();

  v95 = a15;
  v34 = [a15 traitCollection];
  sub_100770B3C();

  v35 = sub_10076C04C();
  *(&v104 + 1) = v35;
  v75 = sub_1002C5F34(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  *&v105 = v75;
  v36 = sub_10000DB7C(&v103);
  v37 = *(v35 - 8);
  v38 = *(v37 + 104);
  v74 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72 = v37 + 104;
  v73 = v38;
  v38(v36);
  sub_10076C90C();
  sub_10000CD74(&v103);
  sub_10076996C();
  v39 = sub_10076995C();
  v41 = v40;
  v42 = *(v96 + 8);
  v96 += 8;
  v42(v23, v94);
  v43 = *(v41 + 8);

  swift_unknownObjectRetain();
  sub_1005A8BB8(v33, &protocol witness table for LayoutViewPlaceholder, v39, v43, qword_100950740, &v103);

  swift_unknownObjectRelease();
  sub_10016C4BC(&v103, &v108);
  v44 = swift_allocObject();
  sub_1001A8FB8(&v108, (v44 + 16));
  swift_allocObject();
  v78 = sub_10076DD9C();

  swift_unknownObjectRelease();

  sub_10000CD74(&v103);
  if (qword_10093FD48 != -1)
  {
    swift_once();
  }

  v45 = v83;
  v46 = sub_10000A61C(v83, qword_100950768);
  if (qword_10093FD50 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v45, qword_100950780);
  if (qword_10093FD58 != -1)
  {
    swift_once();
  }

  v47 = [v95 traitCollection];
  v77 = v46;
  sub_100770B3C();

  *(&v104 + 1) = v35;
  *&v105 = v75;
  v48 = sub_10000DB7C(&v103);
  v73(v48, v74, v35);
  sub_10076C90C();
  sub_10000CD74(&v103);
  sub_10076996C();
  v49 = sub_10076995C();
  v51 = v50;
  v42(v23, v94);
  v52 = swift_allocObject();
  v53 = v82;
  *(v52 + 16) = v81;
  *(v52 + 24) = v53;
  swift_allocObject();

  v54 = sub_10076DD9C();
  sub_1001DFBC4(&unk_100950798, &v103);
  v55 = swift_allocObject();
  v56 = v106;
  *(v55 + 48) = v105;
  *(v55 + 64) = v56;
  *(v55 + 80) = v107;
  v57 = v104;
  *(v55 + 16) = v103;
  *(v55 + 32) = v57;
  *(v55 + 96) = v49;
  *(v55 + 104) = v51;
  *(v55 + 112) = v54;
  swift_allocObject();
  v58 = sub_10076DD9C();
  v59 = swift_allocObject();
  *(v59 + 16) = a16;
  *(v59 + 24) = v84 & 1;
  *(v59 + 32) = v85;
  swift_allocObject();
  v60 = sub_10076DD9C();
  *(&v104 + 1) = v32;
  *&v105 = &protocol witness table for LayoutViewPlaceholder;
  v102[4] = &protocol witness table for LayoutViewPlaceholder;
  *&v103 = v78;
  v109 = v32;
  v110 = &protocol witness table for LayoutViewPlaceholder;
  *&v108 = v58;
  v102[3] = v32;
  v102[0] = v60;
  v101[3] = sub_10076D67C();
  v101[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v101);

  sub_10076D66C();
  v61 = v86;
  (*(*(v45 - 8) + 16))(v86, v77, v45);
  v63 = v87;
  v62 = v88;
  (*(v87 + 104))(v61, enum case for FontSource.useCase(_:), v88);
  v100[3] = sub_10076D9AC();
  v100[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v100);
  v98 = v62;
  v99 = &protocol witness table for FontSource;
  v64 = sub_10000DB7C(v97);
  (*(v63 + 16))(v64, v61, v62);
  sub_10076D9BC();
  (*(v63 + 8))(v61, v62);
  v98 = &type metadata for CGFloat;
  v99 = &protocol witness table for CGFloat;
  v97[0] = 0x4030000000000000;
  v65 = v90;
  sub_100766BDC();
  v67 = v91;
  v66 = v92;
  (*(v91 + 16))(v89, v65, v92);
  sub_10000A570(&v103, v101);
  sub_10000A570(&v108, v100);
  sub_10000A570(v102, v97);
  sub_100766C0C();
  swift_allocObject();
  v68 = sub_100766BFC();
  (*(v67 + 8))(v65, v66);
  sub_10000CD74(v102);
  sub_10000CD74(&v108);
  sub_10000CD74(&v103);
  *&v103 = v68;
  sub_1002C5F34(&qword_10094D1E0, &type metadata accessor for SearchLockupListLayout, &protocol conformance descriptor for SearchLockupListLayout);
  sub_10076D2AC();
  v70 = v69;

  return v70;
}

uint64_t sub_1002C5238()
{
  sub_10000CD74((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1002C5270()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002C52A8()
{
  sub_10000CD74((v0 + 16));
  sub_10000CD74((v0 + 56));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

void sub_1002C5308()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v3 = objc_allocWithZone(sub_1007666AC());
  *(v0 + v2) = sub_10076669C();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1002C53F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002C5430()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1002C5470(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1002C5488(char a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, 16.0}];
  v9 = objc_opt_self();
  v10 = 1.0;
  v11 = [v9 fractionalWidthDimension:1.0];
  v12 = [v9 absoluteDimension:16.0];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  type metadata accessor for SeparatorSpacerReusableView();
  sub_1007708FC();
  v15 = v8;
  v16 = sub_10076FF6C();

  v17 = [objc_opt_self() supplementaryItemWithLayoutSize:v14 elementKind:v16 containerAnchor:v15];

  v18 = [v9 fractionalWidthDimension:1.0];
  v42 = a2;
  v19 = [v9 fractionalHeightDimension:1.0 / a2];
  v20 = [v13 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007841E0;
  *(v21 + 32) = v17;
  sub_100016F40(0, &unk_10095DD70, NSCollectionLayoutSupplementaryItem_ptr);
  v22 = v17;
  isa = sub_1007701AC().super.isa;

  v24 = [objc_opt_self() itemWithLayoutSize:v20 supplementaryItems:isa];

  [objc_msgSend(a3 "container")];
  v26 = v25;
  swift_unknownObjectRelease();
  if (v26 <= 0.0)
  {
    v29 = &selRef_estimatedDimension_;
    v28 = a1;
  }

  else
  {
    [objc_msgSend(a3 "container")];
    v10 = v27;
    swift_unknownObjectRelease();
    v28 = a1;
    if ((a1 & 1) == 0)
    {
      v10 = v10 - a4 - a5;
    }

    v29 = &selRef_absoluteDimension_;
  }

  v30 = [v9 *v29];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v9 fractionalHeightDimension:1.0];
  v34 = [v13 sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = [v31 verticalGroupWithLayoutSize:v34 subitem:v24 count:v42];
  v36 = [objc_opt_self() fixedSpacing:16.0];
  [v35 setInterItemSpacing:v36];

  v37 = [objc_opt_self() sectionWithGroup:v35];
  [v37 setInterGroupSpacing:8.0];
  [v37 setContentInsets:{0.0, a4, 0.0, a5}];
  if (v28)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  [v37 setOrthogonalScrollingBehavior:v38];

  return v37;
}

void sub_1002C5944(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10000A5D4(&qword_10094D1C0, &qword_10079A360);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_10000A5D4(&qword_10094D1C8, &qword_100793DD0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_objectGraph);
  if (v13)
  {
    v14 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupDataSource);
    if (v14)
    {

      v15 = v14;
      sub_10076E74C();

      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v12, v7, v8);
        sub_10076F44C();
        v19 = sub_10076B9FC();

        if (!v19)
        {
          (*(v9 + 8))(v12, v8);

          return;
        }

        v20 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
        sub_10076F5AC();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v4, 1, v20) != 1)
        {
          sub_100263BF0(v19, 1, v13, v4);

          (*(v9 + 8))(v12, v8);
          (*(v21 + 8))(v4, v20);
          return;
        }

        (*(v9 + 8))(v12, v8);

        v16 = &unk_100943200;
        v17 = &unk_100785840;
        v18 = v4;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8, v10);
    }

    v16 = &qword_10094D1C0;
    v17 = &qword_10079A360;
    v18 = v7;
LABEL_7:
    sub_10000CFBC(v18, v16, v17);
  }
}

uint64_t sub_1002C5CC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&qword_10094D1C0, &qword_10079A360);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-1] - v4;
  v6 = sub_10000A5D4(&qword_10094D1C8, &qword_100793DD0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15[-1] - v9;
  v11 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupDataSource);
  if (!v11)
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
    return sub_10000CFBC(v5, &qword_10094D1C0, &qword_10079A360);
  }

  v12 = v11;
  sub_10076E74C();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000CFBC(v5, &qword_10094D1C0, &qword_10079A360);
  }

  result = (*(v7 + 32))(v10, v5, v6);
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    v15[3] = sub_10076BC0C();
    v15[4] = sub_1002C5F34(&qword_100950870, &type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);

    sub_10076F44C();
    sub_10076AECC();

    (*(v7 + 8))(v10, v6);
    return sub_10000CD74(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002C5F34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002C5F90()
{
  result = qword_100950888;
  if (!qword_100950888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950888);
  }

  return result;
}

double sub_1002C5FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  sub_10076B4EC();
  sub_1002C6430(&qword_100949DE0, &type metadata accessor for Badge, &protocol conformance descriptor for Badge);
  sub_10076332C();
  v9 = v13;
  if (v13)
  {
    v10 = sub_1007633CC();
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076F49C();

    (*(v5 + 8))(v7, v4);
    v11 = *(v13 + 16);

    sub_1004FD0B0(v9, v10, 0, v11, 0, a2);
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_topSeparatorView] setHidden:1];
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_bottomSeparatorView] setHidden:1];
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_verticalSeparatorView] setHidden:1];
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1002C6218@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1002C6274(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1002C633C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  return sub_1004F6A7C();
}

uint64_t sub_1002C6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1002C6430(&unk_100950890, type metadata accessor for BadgeCollectionViewCell, &unk_10079A430);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1002C6430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002C6478@<X0>(uint64_t a2@<X8>)
{
  v23 = a2;
  v2 = sub_10076D1AC();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D9AC();
  sub_10000A61C(v11, qword_1009A2368);
  sub_10076D17C();
  sub_10076D40C();
  v13 = v12;
  v14 = *(v6 + 8);
  v14(v8, v5);
  v27 = v13;
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v11, qword_1009A2350);
  sub_10076D17C();
  sub_10076D40C();
  v16 = v15;
  v14(v8, v5);
  v24 = v16;
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FDEC();
  if (qword_100940CC0 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D3DC();
  v18 = sub_10000A61C(v17, qword_1009A1438);
  (*(*(v17 - 8) + 16))(v4, v18, v17);
  (*(v21 + 104))(v4, enum case for FontSource.useCase(_:), v22);
  sub_10075FE4C();
  v28 = &type metadata for CGFloat;
  v29 = &protocol witness table for CGFloat;
  v26 = &protocol witness table for CGFloat;
  v27 = 0x403E000000000000;
  v25 = &type metadata for CGFloat;
  v24 = 0x4064000000000000;
  return sub_100767B3C();
}

char *sub_1002C6858(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_itemLayoutContext;
  v15 = sub_10076341C();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsCalculator] = 0;
  v16 = &v4[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsUpdateBlock];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = sub_100770D2C();
  v18 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_bodyTextView] = sub_10073C780(v17, 0.0, 0.0, 0.0, 0.0);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_developerLinkView] = [objc_allocWithZone(type metadata accessor for DeveloperLinkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_tagRibbonView] = [objc_allocWithZone(type metadata accessor for TagFacetRibbonView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = type metadata accessor for ProductDescriptionCollectionViewCell(0);
  v43.receiver = v5;
  v43.super_class = v19;
  v20 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v21 = [v20 contentView];
  v22 = sub_100770D2C();
  [v21 setBackgroundColor:v22];

  v23 = v20;
  v24 = [v23 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_bodyTextView;
  v29 = *&v23[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_bodyTextView];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v30 = v29;
  sub_10076F95C();
  sub_10000CFBC(&v39, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v41, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v31 = *(v11 + 8);
  v31(v13, v10);
  v32 = OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_developerLinkView;
  v33 = *&v23[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_developerLinkView];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = v33;
  sub_10076F95C();
  sub_10000CFBC(&v39, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v41, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v31(v13, v10);
  v35 = [v23 contentView];
  [v35 addSubview:*&v23[v28]];

  v36 = [v23 contentView];
  [v36 addSubview:*&v23[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_tagRibbonView]];

  v37 = [v23 contentView];
  [v37 addSubview:*&v23[v32]];

  return v23;
}

uint64_t sub_1002C6DF4()
{
  v1 = v0;
  v26 = sub_10076D1FC();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100767B4C();
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100767B6C();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProductDescriptionCollectionViewCell(0);
  v38.receiver = v0;
  v38.super_class = v11;
  objc_msgSendSuper2(&v38, "layoutSubviews");
  v12 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();

  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_tagRibbonView];
  type metadata accessor for RibbonBarItemCollectionViewCell(0);

  v14 = sub_1007701EC();

  v15 = 0;
  if (v14)
  {
    v16 = v13;
    v15 = v13;
  }

  sub_1002C6478(v7);
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_bodyTextView];
  v36 = type metadata accessor for ExpandableTextView();
  v37 = &protocol witness table for UIView;
  v35 = v17;
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for TagFacetRibbonView(0);
    v19 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v31 = 0;
    v32 = 0;
  }

  v30 = v15;
  v33 = v18;
  v34 = v19;
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_developerLinkView];
  v28 = type metadata accessor for DeveloperLinkView();
  v29 = &protocol witness table for UIView;
  v27 = v20;
  v21 = v17;
  v22 = v15;
  v23 = v20;
  sub_100767B5C();
  sub_100767B2C();

  (*(v2 + 8))(v4, v26);
  return (*(v8 + 8))(v10, v25);
}

double sub_1002C7180(void *a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  if (a2)
  {
    v13 = a5 >= a4 ? a4 : a5;
    if (v13 != 0.0)
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v17 = a2;
      v18 = [a1 traitCollection];
      v19 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v20 = objc_allocWithZone(v19);
      v21 = &v20[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_layoutMargins];
      *v21 = UIEdgeInsetsZero.top;
      v21[1] = left;
      v21[2] = bottom;
      v21[3] = right;
      *&v20[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_numberOfLines] = a3;
      v22 = &v20[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize];
      *v22 = a4;
      v22[1] = a5;
      *&v20[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_traitCollection] = v18;
      *&v20[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_attributedText] = v17;
      v43.receiver = v20;
      v43.super_class = v19;
      v23 = objc_msgSendSuper2(&v43, "init");
      if (qword_1009415A0 != -1)
      {
        swift_once();
      }

      v24 = qword_1009678B0;
      v25 = [qword_1009678B0 objectForKey:v23];
      if (v25)
      {
        v26 = v25;

        a4 = *&v26[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
      }

      else
      {
        v27 = qword_100941598;
        v26 = v17;
        if (v27 != -1)
        {
          swift_once();
        }

        v28 = sub_10076D3DC();
        v29 = sub_10000A61C(v28, qword_100967898);
        v30 = *(v28 - 8);
        (*(v30 + 16))(v12, v29, v28);
        (*(v30 + 56))(v12, 0, 1, v28);
        sub_10076D80C();
        sub_10076D82C();
        sub_10076D81C();
        v32 = v31;
        v34 = v33;
        v36 = v35;

        sub_10000CFBC(v12, &unk_100943250, &unk_1007841D0);
        v37 = type metadata accessor for ExpandableTextView.CacheValue();
        v38 = objc_allocWithZone(v37);
        v39 = &v38[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
        *v39 = a4;
        v39[1] = UIEdgeInsetsZero.top + bottom + v32;
        *(v39 + 2) = v34;
        *(v39 + 3) = v36;
        v42.receiver = v38;
        v42.super_class = v37;
        v40 = objc_msgSendSuper2(&v42, "init");
        [v24 setObject:v40 forKey:v23];
      }
    }
  }

  return a4;
}

void sub_1002C7528(__n128 a1, double a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_100765A8C();
  __chkstk_darwin(v11 - 8);
  v12 = sub_100765A9C();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a7 traitCollection];
  sub_10076108C();
  if ((sub_1007701EC() & 1) == 0)
  {

    return;
  }

  v32 = a5;
  v18 = sub_10077073C();
  v33 = _swiftEmptyArrayStorage;
  if (!(a4 >> 62))
  {
    v19 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v18;
    if (v19)
    {
      goto LABEL_4;
    }

LABEL_18:
    v22 = _swiftEmptyArrayStorage;
LABEL_19:
    sub_10016E360(v22);

    sub_100765A7C();
    sub_100765A4C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1007841E0;
    v25 = v31;
    *(v24 + 32) = v31;
    v26 = v25;
    v27 = sub_10076DEEC();
    sub_100765A5C();

    (*(v13 + 8))(v16, v12);
    return;
  }

  v23 = v18;
  v19 = sub_10077158C();
  v31 = v23;
  if (!v19)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (v19 >= 1)
  {
    v28 = a6;
    v29 = v13;
    v30 = v12;
    if ((a4 & 0xC000000000000001) != 0)
    {
      v20 = 0;
      do
      {
        sub_10077149C();
        sub_10076DDDC();
        swift_allocObject();
        swift_unknownObjectRetain();
        sub_10076DD9C();

        sub_10077019C();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        ++v20;
        sub_10077025C();

        swift_unknownObjectRelease();
      }

      while (v19 != v20);
    }

    else
    {
      v21 = a4 + 32;
      sub_10076DDDC();
      do
      {
        swift_allocObject();
        swift_retain_n();
        sub_10076DD9C();

        sub_10077019C();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();

        v21 += 8;
        --v19;
      }

      while (v19);
    }

    v22 = v33;
    v13 = v29;
    v12 = v30;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_1002C7994(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    sub_10076611C();
  }

  *(v1 + v2) = 0;

  v3 = (v1 + OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_1000167E0(v4, v5);
  type metadata accessor for TagFacetRibbonView(0);
  sub_1002C8640(&qword_1009508E0, type metadata accessor for TagFacetRibbonView, &unk_100797FA8);
  return sub_10076A02C();
}

id sub_1002C7A9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductDescriptionCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductDescriptionCollectionViewCell(uint64_t a1)
{
  result = qword_1009508C8;
  if (!qword_1009508C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C7BC8(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1002C7C8C()
{
  swift_beginAccess();

  return result;
}

double sub_1002C7CD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1002C7D8C()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_1002C7DE8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

uint64_t sub_1002C7EA8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TagFacetRibbonView(0);
  sub_1002C8640(&qword_1009508E0, type metadata accessor for TagFacetRibbonView, &unk_100797FA8);
  return sub_10076A03C();
}

void sub_1002C7F38(__n128 a1, uint64_t a2, void *a3)
{
  v4 = sub_100767B4C();
  __chkstk_darwin(v4 - 8);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100767B6C();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076452C();
  v8 = sub_10076C5AC();

  v39 = a3;
  v9 = [a3 traitCollection];
  v10 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v8];
  v40 = [v8 length];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = v9;
  *(v11 + 32) = v10;
  *(v11 + 40) = 1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1000275EC;
  *(v12 + 24) = v11;
  v50 = sub_1000ACB04;
  v51 = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  v49 = &unk_100890690;
  v13 = _Block_copy(aBlock);
  v14 = v9;
  v15 = v10;

  [v8 enumerateAttributesInRange:0 options:v40 usingBlock:{0x100000, v13}];

  _Block_release(v13);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v16 = v15;
    v17 = sub_10076451C();
    v18 = sub_10076450C();
    v19 = sub_1007644FC();
    if (sub_1007644EC())
    {
      v40 = sub_10076B8EC();
      v21 = v20;
    }

    else
    {
      v40 = 0;
      v21 = 0;
    }

    type metadata accessor for ProductDescriptionCollectionViewCell(0);
    v22 = swift_allocObject();
    *(v22 + 16) = v16;
    *(v22 + 24) = 4;
    v23 = sub_10076DDDC();
    swift_allocObject();
    v24 = v16;
    v25 = sub_10076DD9C();
    v49 = v23;
    v50 = &protocol witness table for LayoutViewPlaceholder;
    aBlock[0] = v25;
    v26 = swift_allocObject();
    v26[2] = v17;
    v26[3] = v18;
    v26[4] = v19;
    v26[5] = v39;
    swift_allocObject();

    swift_unknownObjectRetain();
    v27 = sub_10076DD9C();
    v47[3] = v23;
    v47[4] = &protocol witness table for LayoutViewPlaceholder;
    v47[0] = v27;
    v28 = type metadata accessor for DeveloperLinkView();
    v29 = swift_allocObject();
    v30 = v40;
    v29[2] = v28;
    v29[3] = v30;
    v29[4] = v21;
    swift_allocObject();
    v31 = sub_10076DD9C();
    v46[3] = v23;
    v46[4] = &protocol witness table for LayoutViewPlaceholder;
    v46[0] = v31;
    sub_10076108C();
    LOBYTE(v28) = sub_1007701EC();

    if (v28)
    {
      sub_10000A570(v47, v44);
    }

    else
    {
      v45 = 0;
      memset(v44, 0, sizeof(v44));
    }

    sub_1002C6478(v35);
    sub_10000A570(aBlock, &v43);
    sub_10000A570(v47, &v42);
    sub_10000A570(v46, &v41);
    v32 = v36;
    sub_100767B5C();
    sub_1002C8640(&qword_10095EC90, &type metadata accessor for ProductDescriptionLayout, &protocol conformance descriptor for ProductDescriptionLayout);
    v33 = v38;
    sub_10076D2AC();

    (*(v37 + 8))(v32, v33);
    sub_10000CFBC(v44, &unk_10094DA00, &qword_100783FA0);
    sub_10000CD74(v46);
    sub_10000CD74(v47);
    sub_10000CD74(aBlock);
  }
}

uint64_t sub_1002C8500()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_1002C8558(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002C8570()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002C85B0()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002C85FC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002C8640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002C8704()
{
  v0 = sub_10076B6EC();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v27 - v3;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 != enum case for Shelf.ContentType.smallLockup(_:))
  {
    if (v13 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      v14 = type metadata accessor for MediumLockupCollectionViewCell(0);
      v15 = type metadata accessor for MediumLockupCollectionViewCell;
      sub_1002CC464(&qword_100950CE0, type metadata accessor for MediumLockupCollectionViewCell, &unk_10078F384);
      sub_1002CC464(&qword_100950CE8, type metadata accessor for MediumLockupCollectionViewCell, &unk_10079D684);
      v16 = &qword_10094AB00;
      v17 = &unk_1007AA3E8;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.largeLockup(_:))
    {
      v14 = type metadata accessor for LargeLockupCollectionViewCell(0);
      v15 = type metadata accessor for LargeLockupCollectionViewCell;
      sub_1002CC464(&qword_100950D00, type metadata accessor for LargeLockupCollectionViewCell, &unk_10078F48C);
      sub_1002CC464(&qword_100950D08, type metadata accessor for LargeLockupCollectionViewCell, &unk_10079B0E8);
      v16 = &qword_10094AAF0;
      v17 = &unk_10078F4BC;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.productTopLockup(_:))
    {
      v14 = type metadata accessor for ProductLockupCollectionViewCell(0);
      v15 = type metadata accessor for ProductLockupCollectionViewCell;
      sub_1002CC464(&qword_100950BB0, type metadata accessor for ProductLockupCollectionViewCell, &unk_10078E99C);
      sub_1002CC464(&unk_10094C320, type metadata accessor for ProductLockupCollectionViewCell, &unk_1007927F0);
      v16 = &qword_10094AB78;
      v17 = &unk_1007B1570;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:))
    {
      v14 = type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell(0);
      v15 = type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell;
      sub_1002CC464(&qword_100950D60, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell, &unk_10078F84C);
      sub_1002CC464(&qword_100950D68, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell, &unk_1007AFD58);
      v16 = &qword_10094AAD0;
      v17 = &unk_10078F87C;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:))
    {
      v14 = type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell(0);
      v15 = type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell;
      sub_1002CC464(&qword_100950D40, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell, &unk_10078F6FC);
      sub_1002CC464(&qword_100948170, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell, &unk_10078A7B8);
      v16 = &qword_10094AAD8;
      v17 = &unk_10078F72C;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:))
    {
      v14 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell(0);
      v15 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell;
      sub_1002CC464(&qword_100950A00, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell, &unk_1007A97C4);
      sub_1002CC464(&qword_100950A08, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell, &unk_1007A97A8);
      v16 = &qword_100950A10;
      v17 = &unk_1007A9760;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
    {
      v14 = type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell(0);
      v15 = type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell;
      sub_1002CC464(&qword_1009509F0, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell, &unk_1007915E4);
      sub_1002CC464(&qword_1009509F8, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell, &unk_1007915C8);
      v16 = &qword_10094B550;
      v17 = &unk_100791580;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.action(_:))
    {
      v14 = type metadata accessor for ActionCollectionViewCell(0);
      v15 = type metadata accessor for ActionCollectionViewCell;
      sub_1002CC464(&qword_100950EC8, type metadata accessor for ActionCollectionViewCell, &unk_100790428);
      sub_1002CC464(&unk_100950ED0, type metadata accessor for ActionCollectionViewCell, &unk_10079FAA0);
      v16 = &qword_10094AA40;
      v17 = &unk_1007A43A0;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.artwork(_:))
    {
      v14 = type metadata accessor for ArtworkCollectionViewCell(0);
      v15 = type metadata accessor for ArtworkCollectionViewCell;
      sub_1002CC464(&qword_100950E28, type metadata accessor for ArtworkCollectionViewCell, &unk_100790094);
      sub_1002CC464(&qword_10094B348, type metadata accessor for ArtworkCollectionViewCell, &unk_1007911A0);
      v16 = &unk_100950E30;
      v17 = &unk_1007900C4;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.ribbonBar(_:) || v13 == enum case for Shelf.ContentType.ribbonFlow(_:))
    {
      v14 = type metadata accessor for RibbonBarItemCollectionViewCell(0);
      v15 = type metadata accessor for RibbonBarItemCollectionViewCell;
      sub_1002CC464(&qword_100950E00, type metadata accessor for RibbonBarItemCollectionViewCell, &unk_100790E10);
      sub_1002CC464(&unk_10094FD70, type metadata accessor for RibbonBarItemCollectionViewCell, &unk_100798FB0);
      v16 = &qword_10094B058;
      v17 = &unk_100790E40;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.paragraph(_:))
    {
      v14 = type metadata accessor for ParagraphCollectionViewCell(0);
      v15 = type metadata accessor for ParagraphCollectionViewCell;
      sub_1002CC464(&qword_100950CC8, type metadata accessor for ParagraphCollectionViewCell, &unk_10078F27C);
      sub_1002CC464(&qword_100949368, type metadata accessor for ParagraphCollectionViewCell, &unk_10078BE70);
      v16 = &qword_10094AB08;
      v17 = &unk_1007B01E0;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.annotation(_:))
    {
      v19 = sub_10076C04C();
      v31 = v19;
      v32 = sub_1002CC464(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v20 = sub_10000DB7C(v30);
      (*(*(v19 - 8) + 104))(v20, enum case for Feature.annotations_update_2025A(_:), v19);
      LOBYTE(v19) = sub_10076C90C();
      sub_10000CD74(v30);
      if ((v19 & 1) == 0)
      {
        v14 = type metadata accessor for AnnotationCollectionViewCell(0);
        v15 = type metadata accessor for AnnotationCollectionViewCell;
        sub_1002CC464(&qword_100950EA0, type metadata accessor for AnnotationCollectionViewCell, &unk_1007903C8);
        sub_1002CC464(&qword_100950EA8, type metadata accessor for AnnotationCollectionViewCell, &unk_1007B75C0);
        v16 = &qword_10094AA48;
        v17 = &unk_1007A4358;
        goto LABEL_26;
      }

      v14 = type metadata accessor for AnnotationCollectionViewHostingCell(0);
      v15 = type metadata accessor for AnnotationCollectionViewHostingCell;
      sub_1002CC464(&qword_100950EB0, type metadata accessor for AnnotationCollectionViewHostingCell, &unk_10078DF20);
      sub_1002CC464(&qword_100950EB8, type metadata accessor for AnnotationCollectionViewHostingCell, &unk_1007935C8);
      v16 = &unk_100950EC0;
      goto LABEL_31;
    }

    if (v13 == enum case for Shelf.ContentType.footnote(_:))
    {
      v14 = type metadata accessor for FootnoteCollectionViewCell(0);
      v15 = type metadata accessor for FootnoteCollectionViewCell;
      sub_1002CC464(&qword_100950DC8, type metadata accessor for FootnoteCollectionViewCell, &unk_10078FBFC);
      sub_1002CC464(&qword_10094DC38, type metadata accessor for FootnoteCollectionViewCell, &unk_1007955D0);
      v16 = &qword_10094AAA8;
      v17 = &unk_10078FC2C;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.titledParagraph(_:))
    {
      v14 = type metadata accessor for TitledParagraphCollectionViewCell(0);
      v15 = type metadata accessor for TitledParagraphCollectionViewCell;
      sub_1002CC464(&qword_100950A80, type metadata accessor for TitledParagraphCollectionViewCell, &unk_10078E3D4);
      sub_1002CC464(&qword_10094EC20, type metadata accessor for TitledParagraphCollectionViewCell, &unk_1007977F8);
      v16 = &unk_100950A88;
      v17 = &unk_10078E404;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.editorialCard(_:))
    {
      v14 = type metadata accessor for EditorialCardCollectionViewCell(0);
      v15 = type metadata accessor for EditorialCardCollectionViewCell;
      sub_1002CC464(&qword_100950DF0, type metadata accessor for EditorialCardCollectionViewCell, &unk_10078FDF4);
      sub_1002CC464(&qword_100950DF8, type metadata accessor for EditorialCardCollectionViewCell, &unk_1007B2A68);
      v16 = &qword_10094AA98;
      v17 = &unk_10078FE24;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.videoCard(_:))
    {
      v14 = type metadata accessor for VideoCardCollectionViewCell(0);
      v15 = type metadata accessor for VideoCardCollectionViewCell;
      sub_1002CC464(&qword_100950A20, type metadata accessor for VideoCardCollectionViewCell, &unk_10078E1E0);
      sub_1002CC464(&qword_100950A28, type metadata accessor for VideoCardCollectionViewCell, &unk_1007AA1C4);
      v16 = &qword_10094ABB8;
      v17 = &unk_10078E210;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.brick(_:))
    {
      v14 = type metadata accessor for BrickCollectionViewCell(0);
      v15 = type metadata accessor for BrickCollectionViewCell;
      sub_1002CC464(&qword_100950E08, type metadata accessor for BrickCollectionViewCell, &unk_10078FF44);
      sub_1002CC464(&qword_1009428F0, type metadata accessor for BrickCollectionViewCell, &unk_100784468);
      v16 = &qword_10094AA88;
      v17 = &unk_10078FF74;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
LABEL_44:
      v14 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell(0);
      v15 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell;
      sub_1002CC464(&qword_100950B20, type metadata accessor for ChartOrCategoryBrickCollectionViewCell, &unk_10078FE9C);
      sub_1002CC464(&qword_10094AFC8, type metadata accessor for ChartOrCategoryBrickCollectionViewCell, &unk_100790B38);
      v16 = &qword_10094AA90;
      v17 = &unk_10078FECC;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.productCapability(_:))
    {
      v21 = sub_10076C04C();
      v31 = v21;
      v32 = sub_1002CC464(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v22 = sub_10000DB7C(v30);
      (*(*(v21 - 8) + 104))(v22, enum case for Feature.product_capability_update_2024E(_:), v21);
      LOBYTE(v21) = sub_10076C90C();
      sub_10000CD74(v30);
      if ((v21 & 1) == 0)
      {
        v14 = type metadata accessor for ProductCapabilityCell(0);
        v15 = type metadata accessor for ProductCapabilityCell;
        sub_1002CC464(&qword_100950C30, type metadata accessor for ProductCapabilityCell, &unk_10078ECF8);
        sub_1002CC464(&qword_100950C38, type metadata accessor for ProductCapabilityCell, &unk_1007AE890);
        v16 = &qword_10094AB48;
        v17 = &unk_10078ED28;
        goto LABEL_26;
      }
    }

    else
    {
      if (v13 == enum case for Shelf.ContentType.reviews(_:))
      {
        v14 = type metadata accessor for ProductReviewCollectionViewCell(0);
        v15 = type metadata accessor for ProductReviewCollectionViewCell;
        sub_1002CC464(&qword_100950B90, type metadata accessor for ProductReviewCollectionViewCell, &unk_10078EA2C);
        sub_1002CC464(&qword_100950B98, type metadata accessor for ProductReviewCollectionViewCell, &unk_1007AD668);
        v16 = &unk_100950BA0;
        v17 = &unk_10078EA5C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.reviewSummary(_:))
      {
        v14 = type metadata accessor for ReviewSummaryCollectionViewCell(0);
        v15 = type metadata accessor for ReviewSummaryCollectionViewCell;
        sub_1002CC464(&qword_100950B78, type metadata accessor for ReviewSummaryCollectionViewCell, &unk_10078E9CC);
        sub_1002CC464(&qword_100950B80, type metadata accessor for ReviewSummaryCollectionViewCell, &unk_1007B2D80);
        v16 = &unk_100950B88;
        v17 = &unk_1007A7304;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorsChoice(_:))
      {
        v14 = type metadata accessor for ProductEditorsChoiceCollectionViewCell(0);
        v15 = type metadata accessor for ProductEditorsChoiceCollectionViewCell;
        sub_1002CC464(&qword_100950DD0, type metadata accessor for ProductEditorsChoiceCollectionViewCell, &unk_100792974);
        sub_1002CC464(&qword_10094C3C8, type metadata accessor for ProductEditorsChoiceCollectionViewCell, &unk_100792958);
        v16 = &qword_10094C3E8;
        v17 = &unk_100792A18;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.todayCard(_:) || v13 == enum case for Shelf.ContentType.miniTodayCard(_:))
      {
        v14 = type metadata accessor for BaseTodayCardCollectionViewCell(0);
        v15 = type metadata accessor for BaseTodayCardCollectionViewCell;
        sub_1002CC464(&qword_100950A68, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007A1714);
        sub_1002CC464(&qword_100950A70, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007A15B8);
        v16 = &qword_100950A78;
        v17 = &unk_1007A1744;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialLink(_:))
      {
        v14 = type metadata accessor for LinkCollectionViewCell(0);
        v15 = type metadata accessor for LinkCollectionViewCell;
        sub_1002CC464(&qword_100950CF0, type metadata accessor for LinkCollectionViewCell, &unk_10078F3E4);
        sub_1002CC464(&qword_100950CF8, type metadata accessor for LinkCollectionViewCell, &unk_1007B0F20);
        v16 = &qword_10094AAF8;
        v17 = &unk_10078F414;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.quote(_:))
      {
        v14 = type metadata accessor for QuoteCollectionViewCell(0);
        v15 = type metadata accessor for QuoteCollectionViewCell;
        sub_1002CC464(&qword_100950BA8, type metadata accessor for QuoteCollectionViewCell, &unk_10078E8FC);
        sub_1002CC464(&unk_1009542F0, type metadata accessor for QuoteCollectionViewCell, &unk_10079D998);
        v16 = &qword_10094AB80;
        v17 = &unk_10078E92C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.horizontalRule(_:))
      {
        v14 = type metadata accessor for HorizontalRuleCollectionViewCell(0);
        v15 = type metadata accessor for HorizontalRuleCollectionViewCell;
        sub_1002CC464(&qword_100950D70, type metadata accessor for HorizontalRuleCollectionViewCell, &unk_10078F8F4);
        sub_1002CC464(&qword_100950D78, type metadata accessor for HorizontalRuleCollectionViewCell, &unk_1007B4420);
        v16 = &qword_10094AAC8;
        v17 = &unk_10078F924;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.framedArtwork(_:))
      {
        v14 = type metadata accessor for FramedArtworkCollectionViewCell(0);
        v15 = type metadata accessor for FramedArtworkCollectionViewCell;
        sub_1002CC464(&qword_100950DC0, type metadata accessor for FramedArtworkCollectionViewCell, &unk_10078FB9C);
        sub_1002CC464(&unk_10095BE40, type metadata accessor for FramedArtworkCollectionViewCell, &unk_1007A98A8);
        v16 = &qword_10094AAB0;
        v17 = &unk_1007B0B30;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.screenshots(_:))
      {
        v14 = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
        v15 = type metadata accessor for ScreenshotShelfCollectionViewCell;
        sub_1002CC464(&qword_100950B40, type metadata accessor for ScreenshotShelfCollectionViewCell, &unk_10078E7AC);
        sub_1002CC464(&qword_100950B48, type metadata accessor for ScreenshotShelfCollectionViewCell, &unk_1007A2F38);
        v16 = &unk_100950B50;
        v17 = &unk_10078E7DC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productMedia(_:))
      {
        v14 = type metadata accessor for ProductMediaCollectionViewCell(0);
        v15 = type metadata accessor for ProductMediaCollectionViewCell;
        sub_1002CC464(&qword_100950C10, type metadata accessor for ProductMediaCollectionViewCell, &unk_10078EC98);
        sub_1002CC464(&qword_100950C18, type metadata accessor for ProductMediaCollectionViewCell, &unk_1007B60F8);
        v16 = &qword_10094AB50;
        v17 = &unk_100789BC0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        v14 = type metadata accessor for ProductMediaItemCollectionViewCell(0);
        v15 = type metadata accessor for ProductMediaItemCollectionViewCell;
        sub_1002CC464(&qword_100950BF8, type metadata accessor for ProductMediaItemCollectionViewCell, &unk_100788120);
        sub_1002CC464(&qword_100950C00, type metadata accessor for ProductMediaItemCollectionViewCell, &unk_10079F3D8);
        v16 = &unk_100950C08;
        v17 = &unk_100788150;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appShowcase(_:))
      {
        v14 = type metadata accessor for AppShowcaseCollectionViewCell(0);
        v15 = type metadata accessor for AppShowcaseCollectionViewCell;
        sub_1002CC464(&qword_100950E78, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007902DC);
        sub_1002CC464(&qword_100950E80, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007B0C50);
        v16 = &qword_10094AA78;
        v17 = &unk_10079030C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:))
      {
        v14 = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(0);
        v15 = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell;
        sub_1002CC464(&qword_100950D48, type metadata accessor for InAppPurchaseShowcaseCollectionViewCell, &unk_10078F7A4);
        sub_1002CC464(&qword_100950D50, type metadata accessor for InAppPurchaseShowcaseCollectionViewCell, &unk_1007A0CE0);
        v16 = &unk_100950D58;
        v17 = &unk_10078F7D4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appTrailerLockup(_:))
      {
        v14 = type metadata accessor for AppTrailerLockupCollectionViewCell(0);
        v15 = type metadata accessor for AppTrailerLockupCollectionViewCell;
        sub_1002CC464(&qword_100950E60, type metadata accessor for AppTrailerLockupCollectionViewCell, &unk_10078F2DC);
        sub_1002CC464(&qword_100950E68, type metadata accessor for AppTrailerLockupCollectionViewCell, &unk_1007875F8);
        v16 = &unk_100950E70;
        v17 = &unk_10078F30C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        v14 = type metadata accessor for ProductPageLinkCollectionViewCell(0);
        v15 = type metadata accessor for ProductPageLinkCollectionViewCell;
        sub_1002CC464(&qword_100950BF0, type metadata accessor for ProductPageLinkCollectionViewCell, &unk_10078EAD4);
        sub_1002CC464(&unk_100960270, type metadata accessor for ProductPageLinkCollectionViewCell, &unk_1007AEE38);
        v16 = &qword_10094AB70;
        v17 = &unk_10078EB04;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productRatings(_:))
      {
        v14 = type metadata accessor for ProductRatingsCollectionViewCell(0);
        v15 = type metadata accessor for ProductRatingsCollectionViewCell;
        sub_1002CC464(&qword_100950BE0, type metadata accessor for ProductRatingsCollectionViewCell, &unk_1007B62D8);
        sub_1002CC464(&qword_10095E9C0, type metadata accessor for ProductRatingsCollectionViewCell, &unk_1007AD8B0);
        v16 = &unk_100950BE8;
        v17 = &unk_1007B6308;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productReview(_:))
      {
        v14 = type metadata accessor for GenericProductReviewCollectionViewCell(0);
        v15 = type metadata accessor for GenericProductReviewCollectionViewCell;
        sub_1002CC464(&qword_100950BC8, type metadata accessor for GenericProductReviewCollectionViewCell, &unk_1007B3C04);
        sub_1002CC464(&qword_100950BD0, type metadata accessor for GenericProductReviewCollectionViewCell, &unk_1007A4668);
        v16 = &unk_100950BD8;
        v17 = &unk_1007B3C34;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productReviewAction(_:))
      {
        v14 = type metadata accessor for GenericProductReviewActionCollectionViewCell(0);
        v15 = type metadata accessor for GenericProductReviewActionCollectionViewCell;
        sub_1002CC464(&qword_100950BB8, type metadata accessor for GenericProductReviewActionCollectionViewCell, &unk_1007B5098);
        sub_1002CC464(&qword_1009435F0, type metadata accessor for GenericProductReviewActionCollectionViewCell, &unk_100785858);
        v16 = &unk_100950BC0;
        v17 = &unk_1007B50C8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.linkableText(_:))
      {
        v14 = type metadata accessor for LinkableTextCollectionViewCell(0);
        v15 = type metadata accessor for LinkableTextCollectionViewCell;
        sub_1002CC464(&qword_100950B70, type metadata accessor for LinkableTextCollectionViewCell, &unk_10078EB4C);
        sub_1002CC464(&qword_100948AA8, type metadata accessor for LinkableTextCollectionViewCell, &unk_10078B358);
        v16 = &qword_10094AB68;
        v17 = &unk_1007B3358;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.framedVideo(_:))
      {
        v14 = type metadata accessor for FramedVideoCollectionViewCell(0);
        v15 = type metadata accessor for FramedVideoCollectionViewCell;
        sub_1002CC464(&qword_100950DB8, type metadata accessor for FramedVideoCollectionViewCell, &unk_10078FB14);
        sub_1002CC464(&unk_10094B470, type metadata accessor for FramedVideoCollectionViewCell, &unk_1007912E8);
        v16 = &qword_10094AAB8;
        v17 = &unk_1007890E8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productDescription(_:))
      {
        v14 = type metadata accessor for ProductDescriptionCollectionViewCell(0);
        v15 = type metadata accessor for ProductDescriptionCollectionViewCell;
        sub_1002CC464(&qword_100950C20, type metadata accessor for ProductDescriptionCollectionViewCell, &unk_10078EBF0);
        sub_1002CC464(&qword_100967030, type metadata accessor for ProductDescriptionCollectionViewCell, &unk_1007B6880);
        v16 = &unk_100950C28;
        v17 = &unk_10078EC20;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.banner(_:))
      {
        v14 = type metadata accessor for BannerCollectionViewCell(0);
        v15 = type metadata accessor for BannerCollectionViewCell;
        sub_1002CC464(&qword_100950E10, type metadata accessor for BannerCollectionViewCell, &unk_10078FFEC);
        sub_1002CC464(&qword_100950E18, type metadata accessor for BannerCollectionViewCell, &unk_10079DBD0);
        v16 = &unk_100950E20;
        v17 = &unk_10079001C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        v14 = type metadata accessor for ScreenshotsLockupCollectionViewCell(0);
        v15 = type metadata accessor for ScreenshotsLockupCollectionViewCell;
        sub_1002CC464(&qword_100950B28, type metadata accessor for ScreenshotsLockupCollectionViewCell, &unk_10078F2DC);
        sub_1002CC464(&qword_100950B30, type metadata accessor for ScreenshotsLockupCollectionViewCell, &unk_1007875F8);
        v16 = &unk_100950B38;
        v17 = &unk_10078F30C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.roundedButton(_:))
      {
        v14 = type metadata accessor for RoundedButtonCollectionViewCell(0);
        v15 = type metadata accessor for RoundedButtonCollectionViewCell;
        sub_1002CC464(&qword_100950B58, type metadata accessor for RoundedButtonCollectionViewCell, &unk_10078E854);
        sub_1002CC464(&qword_100950B60, type metadata accessor for RoundedButtonCollectionViewCell, &unk_1007A4E78);
        v16 = &unk_100950B68;
        v17 = &unk_10078E884;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.titledButtonStack(_:))
      {
        v14 = type metadata accessor for TitledButtonStackCollectionViewCell(0);
        v15 = type metadata accessor for TitledButtonStackCollectionViewCell;
        sub_1002CC464(&qword_100950A90, type metadata accessor for TitledButtonStackCollectionViewCell, &unk_10078E47C);
        sub_1002CC464(&qword_100950A98, type metadata accessor for TitledButtonStackCollectionViewCell, &unk_1007A1810);
        v16 = &unk_100950AA0;
        v17 = &unk_10078E4AC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        v14 = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
        v15 = type metadata accessor for BaseTodayBrickCollectionViewCell;
        sub_1002CC464(&qword_100950AA8, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007A785C);
        sub_1002CC464(&qword_100950AB0, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007A7738);
        v16 = &qword_100950AB8;
        v17 = &unk_1007A7814;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.largeHeroBreakout(_:))
      {
        v14 = type metadata accessor for LargeHeroBreakoutCollectionViewCell(0);
        v15 = type metadata accessor for LargeHeroBreakoutCollectionViewCell;
        sub_1002CC464(&qword_100950D10, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_10078F534);
        sub_1002CC464(&qword_10094EC18, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_1007977A4);
        v16 = &qword_10094AAE8;
        v17 = &unk_10078F564;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.upsellBreakout(_:))
      {
        v14 = type metadata accessor for UpsellBreakoutCollectionViewCell(0);
        v15 = type metadata accessor for UpsellBreakoutCollectionViewCell;
        sub_1002CC464(&qword_100950A30, type metadata accessor for UpsellBreakoutCollectionViewCell, &unk_10078E288);
        sub_1002CC464(&qword_100950A38, type metadata accessor for UpsellBreakoutCollectionViewCell, &unk_10079F2A8);
        v16 = &unk_100950A40;
        v17 = &unk_10078E2B8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        v14 = type metadata accessor for SmallBreakoutCollectionViewCell(0);
        v15 = type metadata accessor for SmallBreakoutCollectionViewCell;
        sub_1002CC464(&qword_100950AF0, type metadata accessor for SmallBreakoutCollectionViewCell, &unk_10078E6D4);
        sub_1002CC464(&qword_10094FE10, type metadata accessor for SmallBreakoutCollectionViewCell, &unk_100799150);
        v16 = &qword_10094AB88;
        v17 = &unk_10078E704;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        v14 = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
        v15 = type metadata accessor for EditorialStoryCardCollectionViewCell;
        sub_1002CC464(&qword_100950DD8, type metadata accessor for EditorialStoryCardCollectionViewCell, &unk_10078FCA4);
        sub_1002CC464(&qword_100944598, type metadata accessor for EditorialStoryCardCollectionViewCell, &unk_1007866F8);
        v16 = &unk_100950DE0;
        v17 = &unk_10078FCD4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
      {
        v14 = type metadata accessor for MixedMediaLockupCollectionViewCell(0);
        v15 = type metadata accessor for MixedMediaLockupCollectionViewCell;
        sub_1002CC464(&qword_100950CD0, type metadata accessor for MixedMediaLockupCollectionViewCell, &unk_10078F2DC);
        sub_1002CC464(&qword_1009451E0, type metadata accessor for MixedMediaLockupCollectionViewCell, &unk_1007875F8);
        v16 = &unk_100950CD8;
        v17 = &unk_10078F30C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeFooter(_:))
      {
        v14 = type metadata accessor for ArcadeFooterCollectionViewCell(0);
        v15 = type metadata accessor for ArcadeFooterCollectionViewCell;
        sub_1002CC464(&qword_100950E48, type metadata accessor for ArcadeFooterCollectionViewCell, &unk_100790234);
        sub_1002CC464(&qword_100950E50, type metadata accessor for ArcadeFooterCollectionViewCell, &unk_1007B4BF0);
        v16 = &unk_100950E58;
        v17 = &unk_100790264;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialQuote(_:))
      {
        v14 = type metadata accessor for EditorialQuoteCollectionViewCell(0);
        v15 = type metadata accessor for EditorialQuoteCollectionViewCell;
        sub_1002CC464(&qword_100950DE8, type metadata accessor for EditorialQuoteCollectionViewCell, &unk_10078FD4C);
        sub_1002CC464(&unk_100961230, type metadata accessor for EditorialQuoteCollectionViewCell, &unk_1007B0340);
        v16 = &qword_10094AAA0;
        v17 = &unk_10078FD7C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeShowcase(_:))
      {
        v14 = type metadata accessor for ArcadeShowcaseCollectionViewCell(0);
        v15 = type metadata accessor for ArcadeShowcaseCollectionViewCell;
        sub_1002CC464(&qword_100950E38, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_100790164);
        sub_1002CC464(&qword_100950E40, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_1007AC438);
        v16 = &qword_10094AA80;
        v17 = &unk_100790194;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
      {
        v14 = type metadata accessor for GameCenterActivityFeedCollectionViewCell(0);
        v15 = type metadata accessor for GameCenterActivityFeedCollectionViewCell;
        sub_1002CC464(&qword_100950DA0, type metadata accessor for GameCenterActivityFeedCollectionViewCell, &unk_10078DF20);
        sub_1002CC464(&qword_100950DA8, type metadata accessor for GameCenterActivityFeedCollectionViewCell, &unk_1007935C8);
        v16 = &unk_100950DB0;
        goto LABEL_31;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeDownloadPackCard(_:))
      {
        v14 = type metadata accessor for ArcadeDownloadPackCollectionViewCell(0);
        v15 = type metadata accessor for ArcadeDownloadPackCollectionViewCell;
        sub_1002CC464(&qword_1009509E0, type metadata accessor for ArcadeDownloadPackCollectionViewCell, &unk_10078DF98);
        sub_1002CC464(&qword_1009509E8, type metadata accessor for ArcadeDownloadPackCollectionViewCell, &unk_1007B5BC8);
        v16 = &qword_10094ABC0;
        v17 = &unk_10078DFC8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterReengagement(_:))
      {
        v14 = type metadata accessor for GameCenterReengagementCollectionViewCell(0);
        v15 = type metadata accessor for GameCenterReengagementCollectionViewCell;
        sub_1002CC464(&qword_100950D90, type metadata accessor for GameCenterReengagementCollectionViewCell, &unk_10078FA44);
        sub_1002CC464(&unk_1009544B0, type metadata accessor for GameCenterReengagementCollectionViewCell, &unk_10079DDE0);
        v16 = &qword_10094AAC0;
        v17 = &unk_10078FA74;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallGameCenterPlayer(_:))
      {
        v14 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell(0);
        v15 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell;
        sub_1002CC464(&qword_100950AD0, type metadata accessor for SmallGameCenterPlayerCollectionViewCell, &unk_10078E584);
        sub_1002CC464(&qword_10095CDB0, type metadata accessor for SmallGameCenterPlayerCollectionViewCell, &unk_1007AA828);
        v16 = &unk_100950AD8;
        v17 = &unk_10078E5B4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
      {
        v14 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell(0);
        v15 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell;
        sub_1002CC464(&qword_100950D18, type metadata accessor for LargeGameCenterPlayerCollectionViewCell, &unk_10078F5DC);
        sub_1002CC464(&qword_100950D20, type metadata accessor for LargeGameCenterPlayerCollectionViewCell, &unk_1007AD5C0);
        v16 = &unk_100950D28;
        v17 = &unk_10078F60C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:))
      {
        v14 = type metadata accessor for AchievementSummaryCollectionViewCell(0);
        v15 = type metadata accessor for AchievementSummaryCollectionViewCell;
        sub_1002CC464(&qword_100950D98, type metadata accessor for AchievementSummaryCollectionViewCell, &unk_100790488);
        sub_1002CC464(&unk_100947F90, type metadata accessor for AchievementSummaryCollectionViewCell, &unk_10078A2C8);
        v16 = &qword_10094AA38;
        v17 = &unk_1007904E0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.posterLockup(_:))
      {
        v14 = type metadata accessor for PosterLockupCollectionViewCell(0);
        v15 = type metadata accessor for PosterLockupCollectionViewCell;
        sub_1002CC464(&qword_100950CA0, type metadata accessor for PosterLockupCollectionViewCell, &unk_10078F190);
        sub_1002CC464(&qword_100950CA8, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007AA904);
        v16 = &qword_10094AB10;
        v17 = &unk_10078F1C0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v14 = type metadata accessor for SmallContactCardCollectionViewCell(0);
        v15 = type metadata accessor for SmallContactCardCollectionViewCell;
        sub_1002CC464(&qword_100950AE0, type metadata accessor for SmallContactCardCollectionViewCell, &unk_10078E62C);
        sub_1002CC464(&qword_100950AE8, type metadata accessor for SmallContactCardCollectionViewCell, &unk_1007B47C8);
        v16 = &qword_10094AB90;
        v17 = &unk_10078E65C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        v14 = type metadata accessor for InformationRibbonCollectionViewCell(0);
        v15 = type metadata accessor for InformationRibbonCollectionViewCell;
        sub_1002CC464(&qword_100950D30, type metadata accessor for InformationRibbonCollectionViewCell, &unk_10078F654);
        sub_1002CC464(&qword_100950D38, type metadata accessor for InformationRibbonCollectionViewCell, &unk_1007ADE88);
        v16 = &qword_10094AAE0;
        v17 = &unk_10078F684;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.preorderDisclaimer(_:))
      {
        v14 = type metadata accessor for PreorderDisclaimerCollectionViewCell(0);
        v15 = type metadata accessor for PreorderDisclaimerCollectionViewCell;
        sub_1002CC464(&qword_100950C80, type metadata accessor for PreorderDisclaimerCollectionViewCell, &unk_10078F0E8);
        sub_1002CC464(&unk_100965E40, type metadata accessor for PreorderDisclaimerCollectionViewCell, &unk_1007B4850);
        v16 = &qword_10094AB18;
        v17 = &unk_10078F118;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyHeader(_:))
      {
        v14 = type metadata accessor for PrivacyHeaderCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyHeaderCollectionViewCell;
        sub_1002CC464(&qword_100950C50, type metadata accessor for PrivacyHeaderCollectionViewCell, &unk_10078EE48);
        sub_1002CC464(&qword_100956E60, type metadata accessor for PrivacyHeaderCollectionViewCell, &unk_1007A2818);
        v16 = &qword_10094AB38;
        v17 = &unk_10078EE78;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyFooter(_:))
      {
        v14 = type metadata accessor for PrivacyFooterCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyFooterCollectionViewCell;
        sub_1002CC464(&qword_100950C58, type metadata accessor for PrivacyFooterCollectionViewCell, &unk_10078EEF0);
        sub_1002CC464(&qword_100944430, type metadata accessor for PrivacyFooterCollectionViewCell, &unk_1007863F8);
        v16 = &qword_10094AB30;
        v17 = &unk_10078EF20;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v14 = type metadata accessor for PrivacyTypeCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyTypeCollectionViewCell;
        sub_1002CC464(&qword_100950C48, type metadata accessor for PrivacyTypeCollectionViewCell, &unk_10078EDA0);
        sub_1002CC464(&qword_10094F860, type metadata accessor for PrivacyTypeCollectionViewCell, &unk_1007987C0);
        v16 = &qword_10094AB40;
        v17 = &unk_10078EDD0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyCategory(_:))
      {
        v14 = type metadata accessor for PrivacyCategoryCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyCategoryCollectionViewCell;
        sub_1002CC464(&qword_100950C70, type metadata accessor for PrivacyCategoryCollectionViewCell, &unk_10078F040);
        sub_1002CC464(&qword_100950C78, type metadata accessor for PrivacyCategoryCollectionViewCell, &unk_10079B738);
        v16 = &qword_10094AB20;
        v17 = &unk_10078F070;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyDefinition(_:))
      {
        v14 = type metadata accessor for PrivacyDefinitionCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyDefinitionCollectionViewCell;
        sub_1002CC464(&qword_100950C60, type metadata accessor for PrivacyDefinitionCollectionViewCell, &unk_10078EF98);
        sub_1002CC464(&qword_100950C68, type metadata accessor for PrivacyDefinitionCollectionViewCell, &unk_10079E690);
        v16 = &qword_10094AB28;
        v17 = &unk_10078EFC8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appPromotion(_:))
      {
        v14 = type metadata accessor for AppEventCollectionViewCell(0);
        v15 = type metadata accessor for AppEventCollectionViewCell;
        sub_1002CC464(&qword_100950E88, type metadata accessor for AppEventCollectionViewCell, &unk_1007B4F28);
        sub_1002CC464(&qword_100950E90, type metadata accessor for AppEventCollectionViewCell, &unk_1007B4EDC);
        v16 = &unk_100950E98;
        v17 = &unk_1007B4F58;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchResult(_:))
      {
        v14 = type metadata accessor for SearchResultCollectionViewCell(0);
        v15 = type metadata accessor for SearchResultCollectionViewCell;
        sub_1002CC464(&qword_100950B10, type metadata accessor for SearchResultCollectionViewCell, &unk_10078E74C);
        sub_1002CC464(&qword_100950078, type metadata accessor for SearchResultCollectionViewCell, &unk_100799800);
        v16 = &unk_100950B18;
        v17 = &unk_100799A3C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
      {
        v14 = type metadata accessor for SearchResultsContextCardCollectionViewCell(0);
        v15 = type metadata accessor for SearchResultsContextCardCollectionViewCell;
        sub_1002CC464(&qword_100950AF8, type metadata accessor for SearchResultsContextCardCollectionViewCell, &unk_10079FF80);
        sub_1002CC464(&qword_100950B00, type metadata accessor for SearchResultsContextCardCollectionViewCell, &unk_10079FEEC);
        v16 = &qword_100950B08;
        v17 = &unk_10079FF38;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
      {
        goto LABEL_44;
      }

      if (v13 == enum case for Shelf.ContentType.pageTabs(_:))
      {
        v14 = type metadata accessor for SegmentedControlCollectionViewCell(0);
        v15 = type metadata accessor for SegmentedControlCollectionViewCell;
        sub_1002CC464(&qword_100950A18, type metadata accessor for SegmentedControlCollectionViewCell, &unk_100797654);
        sub_1002CC464(&qword_10094EBD8, type metadata accessor for SegmentedControlCollectionViewCell, &unk_1007975C0);
        v16 = &qword_10094EBE0;
        v17 = &unk_10079760C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.heroCarousel(_:))
      {
        v14 = type metadata accessor for HeroCarouselCollectionViewCell(0);
        v15 = type metadata accessor for HeroCarouselCollectionViewCell;
        sub_1002CC464(&qword_100950D80, type metadata accessor for HeroCarouselCollectionViewCell, &unk_10078F99C);
        sub_1002CC464(&qword_100949360, type metadata accessor for HeroCarouselCollectionViewCell, &unk_10078BDE8);
        v16 = &unk_100950D88;
        v17 = &unk_10078F9CC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.uber(_:))
      {
        v14 = type metadata accessor for UberCollectionViewCell(0);
        v15 = type metadata accessor for UberCollectionViewCell;
        sub_1002CC464(&qword_100950A60, type metadata accessor for UberCollectionViewCell, &unk_10078E330);
        sub_1002CC464(&qword_100957710, type metadata accessor for UberCollectionViewCell, &unk_1007A3728);
        v16 = &qword_10094ABB0;
        v17 = &unk_1007B2B80;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productBadge(_:))
      {
        v14 = type metadata accessor for BadgeCollectionViewCell(0);
        v15 = type metadata accessor for BadgeCollectionViewCell;
        sub_1002CC464(&qword_100950C40, type metadata accessor for BadgeCollectionViewCell, &unk_10079A400);
        sub_1002CC464(&qword_100944E60, type metadata accessor for BadgeCollectionViewCell, &unk_100786FDC);
        v16 = &unk_100950890;
        v17 = &unk_10079A430;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.mediaPageHeader(_:))
      {
        v14 = type metadata accessor for MediaPageHeaderCollectionViewHostingCell(0);
        v15 = type metadata accessor for MediaPageHeaderCollectionViewHostingCell;
        sub_1002CC464(&qword_1009509A0, type metadata accessor for MediaPageHeaderCollectionViewHostingCell, &unk_10078DF20);
        sub_1002CC464(&qword_1009509A8, type metadata accessor for MediaPageHeaderCollectionViewHostingCell, &unk_1007935C8);
        v16 = &unk_1009509B0;
        goto LABEL_31;
      }

      if (v13 == enum case for Shelf.ContentType.tagBrick(_:))
      {
        goto LABEL_44;
      }

      if (v13 == enum case for Shelf.ContentType.placeholder(_:))
      {
        v14 = type metadata accessor for PlaceholderCollectionViewCell(0);
        v15 = type metadata accessor for PlaceholderCollectionViewCell;
        sub_1002CC464(&qword_100950CB0, type metadata accessor for PlaceholderCollectionViewCell, &unk_1007AAE90);
        sub_1002CC464(&qword_100950CB8, type metadata accessor for PlaceholderCollectionViewCell, &unk_1007A2398);
        v16 = &unk_100950CC0;
        v17 = &unk_1007AAEC0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.prefetchMarker(_:))
      {
        v14 = type metadata accessor for PrefetchMarkerCollectionViewCell(0);
        v15 = type metadata accessor for PrefetchMarkerCollectionViewCell;
        sub_1002CC464(&qword_100950C88, type metadata accessor for PrefetchMarkerCollectionViewCell, &unk_1007A3578);
        sub_1002CC464(&qword_100950C90, type metadata accessor for PrefetchMarkerCollectionViewCell, &unk_1007A34E4);
        v16 = &qword_100950C98;
        v17 = &unk_1007A3530;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.unifiedMessage(_:))
      {
        v14 = type metadata accessor for UnifiedMessageCollectionViewCell(0);
        v15 = type metadata accessor for UnifiedMessageCollectionViewCell;
        sub_1002CC464(&qword_100950A48, type metadata accessor for UnifiedMessageCollectionViewCell, &unk_10078E300);
        sub_1002CC464(&qword_100950A50, type metadata accessor for UnifiedMessageCollectionViewCell, &unk_1007AE910);
        v16 = &unk_100950A58;
        v17 = &unk_1007B5DB8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
      {
        sub_10076465C();
        v23 = v27;
        sub_10076B68C();
        sub_1002CC464(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
        v24 = v29;
        v25 = sub_10077124C();
        v26 = *(v28 + 8);
        v26(v23, v24);
        v26(v4, v24);
        if ((v25 & 1) == 0)
        {
          v14 = type metadata accessor for SwiftUIProductPageCardViewHostingCell(0);
          v15 = type metadata accessor for SwiftUIProductPageCardViewHostingCell;
          sub_1002CC464(&qword_1009509C8, type metadata accessor for SwiftUIProductPageCardViewHostingCell, &unk_10078DF20);
          sub_1002CC464(&qword_1009509D0, type metadata accessor for SwiftUIProductPageCardViewHostingCell, &unk_1007935C8);
          v16 = &unk_1009509D8;
          goto LABEL_31;
        }
      }

      else if (v13 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        (*(v6 + 8))(v8, v5);
        return 0;
      }
    }

    v14 = type metadata accessor for SwiftUIViewHostingCell(0);
    v15 = type metadata accessor for SwiftUIViewHostingCell;
    sub_1002CC464(&qword_1009509B8, type metadata accessor for SwiftUIViewHostingCell, &unk_10078DF20);
    sub_1002CC464(&qword_10094CE08, type metadata accessor for SwiftUIViewHostingCell, &unk_1007935C8);
    v16 = &unk_1009509C0;
LABEL_31:
    v17 = &unk_10078DF50;
    goto LABEL_26;
  }

  v14 = type metadata accessor for SmallLockupCollectionViewCell(0);
  v15 = type metadata accessor for SmallLockupCollectionViewCell;
  sub_1002CC464(&qword_100950AC0, type metadata accessor for SmallLockupCollectionViewCell, &unk_10078E524);
  sub_1002CC464(&qword_100950AC8, type metadata accessor for SmallLockupCollectionViewCell, &unk_1007ACDF4);
  v16 = &qword_10094AB98;
  v17 = &unk_10078C270;
LABEL_26:
  sub_1002CC464(v16, v15, v17);
  return v14;
}

uint64_t sub_1002CBF40(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v2 = sub_10076469C();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 != enum case for Shelf.ContentType.todayCard(_:))
  {
    if (v13 != enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      if (v13 == enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        sub_10076C84C();
        sub_1002CC464(&qword_100947150, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
        if ((sub_10076334C() & 1) == 0)
        {
          goto LABEL_14;
        }

        v17 = sub_100369728();
      }

      else
      {
        if (v13 != enum case for Shelf.ContentType.appPromotion(_:))
        {
          goto LABEL_14;
        }

        v17 = sub_10041A050();
      }

      v16 = v17;
      goto LABEL_17;
    }

    sub_10076C84C();
    sub_1002CC464(&qword_100947150, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
    if (sub_10076334C())
    {
      sub_10076332C();
      v16 = sub_1003DF554(v22, 4);

      goto LABEL_17;
    }

LABEL_14:
    sub_1007632FC();
    v16 = sub_1002C8704();
    (*(v20 + 8))(v4, v21);
    goto LABEL_17;
  }

  sub_10076C84C();
  sub_1002CC464(&qword_100947150, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  if ((sub_10076334C() & 1) == 0)
  {
    goto LABEL_14;
  }

  type metadata accessor for TodayCardGridTracker();
  sub_10076F5AC();
  if (v22)
  {

    sub_1003B1704();
    v15 = v14;
  }

  else
  {
    v15 = 7;
  }

  sub_10076332C();
  v16 = sub_1003DF554(v22, v15);

LABEL_17:
  (*(v6 + 8))(v8, v5);
  return v16;
}

uint64_t sub_1002CC464(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 ProductLockupLayout.init(metrics:iconView:titleLabel:developerLabel:taglineLabel:tertiaryTitleLabel:shareButton:offerButton:offerSubtitleLabel:expandedOfferTitleLabel:expandedOfferSubtitleLabel:hasExpandedOffer:offerSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1002CD0CC(a1, a9, type metadata accessor for ProductLockupLayout.Metrics);
  v23 = type metadata accessor for ProductLockupLayout(0);
  sub_100012498(a2, a9 + v23[5]);
  sub_100012498(a3, a9 + v23[6]);
  sub_100012498(a4, a9 + v23[7]);
  sub_100012498(a5, a9 + v23[8]);
  v24 = a9 + v23[9];
  v25 = *(a6 + 16);
  *v24 = *a6;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a6 + 32);
  v26 = a9 + v23[10];
  v27 = *(a7 + 16);
  *v26 = *a7;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a7 + 32);
  sub_100012498(a8, a9 + v23[11]);
  sub_100012498(a10, a9 + v23[12]);
  v28 = a9 + v23[13];
  v29 = *(a11 + 16);
  *v28 = *a11;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a11 + 32);
  v30 = a9 + v23[14];
  v31 = *(a12 + 16);
  *v30 = *a12;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a12 + 32);
  *(a9 + v23[15]) = a13;
  v32 = (a9 + v23[16]);
  *v32 = a14;
  v32[1] = a15;
  v33 = a9 + v23[17];
  *(v33 + 32) = *(a16 + 32);
  v34 = *(a16 + 16);
  *v33 = *a16;
  *(v33 + 16) = v34;
  v35 = a9 + v23[18];
  *(v35 + 32) = *(a17 + 32);
  result = *(a17 + 16);
  *v35 = *a17;
  *(v35 + 16) = result;
  return result;
}

uint64_t ProductLockupLayout.offerSubtitleText.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProductLockupLayout(0) + 64));

  return v1;
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v5 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v4 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.maxWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 24);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.leadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:iconHorizontalMargin:titleSpace:titleFont:titleMaxNumberOfLines:subtitleSpace:subtitleFont:subtitleMaxNumberOfLines:tertiaryTitleSpace:tertiaryTitleFont:tertiaryTitleMaxNumberOfLines:offerTopSpace:offerSubtitleMetrics:shareButtonLeadingMargin:expandedOfferSubtitleSpace:expandedOfferHorizontalMargin:compactExpandedOfferShareButtonTopSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 *a20, uint64_t a21, __int128 *a22, __int128 *a23, uint64_t a24, __int128 *a25, __int128 *a26)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_100012498(a1, (a9 + 4));
  sub_100012498(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v33 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v34 = v33[8];
  v35 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v44 = *(*(v35 - 8) + 32);
  v44(a9 + v34, a3, v35);
  v44(a9 + v33[9], a4, v35);
  v36 = v33[10];
  v37 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
  v43 = *(*(v37 - 8) + 32);
  v43(a9 + v36, a5, v37);
  v38 = v33[11];
  v39 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  v40 = *(*(v39 - 8) + 32);
  v40(a9 + v38, a6, v39);
  v44(a9 + v33[12], a7, v35);
  v43(a9 + v33[13], a8, v37);
  v40(a9 + v33[14], a16, v39);
  v44(a9 + v33[15], a17, v35);
  v43(a9 + v33[16], a18, v37);
  v40(a9 + v33[17], a19, v39);
  sub_100012498(a20, a9 + v33[18]);
  sub_1002CD0CC(a21, a9 + v33[19], type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_100012498(a22, a9 + v33[20]);
  sub_100012498(a23, a9 + v33[21]);
  v44(a9 + v33[22], a24, v35);
  sub_100012498(a25, a9 + v33[23]);
  v41 = a9 + v33[24];

  return sub_100012498(a26, v41);
}

uint64_t sub_1002CD0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void ShelfHeaderLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 32));

  return sub_100012498(a1, v1 + 32);
}

uint64_t TodayCardLockupLayout.Metrics.headingSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 72));

  return sub_100012498(a1, v1 + 72);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 40);
  v4 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 44);
  v4 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 52);
  v4 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 64);
  v4 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 72);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t sub_1002CDDDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ProductLockupLayout.Metrics.offerSubtitleMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);

  return sub_1002CDE88(a1, v3);
}

uint64_t sub_1002CDE88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ProductLockupLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 84);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.compactExpandedOfferShareButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 96);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

double ProductLockupLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();

  return sub_1002D2C70(a1, v3, ObjectType, a2, a3);
}

uint64_t ProductLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v267 = a6;
  v268 = a3;
  v249 = a2;
  v13 = sub_10077164C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v231 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*&v6 + 56);
  sub_10000CF78((*&v6 + 32), v17);
  sub_1000FF02C(v17);
  sub_10076D40C();
  v19 = v18;
  v22 = *(v14 + 8);
  v20 = v14 + 8;
  v21 = v22;
  v22(v16, v13);
  v23 = *(*&v6 + 96);
  sub_10000CF78((*&v7 + 72), *(*&v7 + 96));
  sub_1000FF02C(v23);
  sub_10076D40C();
  v25 = v24;
  v266 = v13;
  v22(v16, v13);
  v26 = **&v6;
  v27 = *(*&v6 + 8);
  v238 = v19;
  v239 = v25;
  v28 = sub_100102A30(a3, a4, a5, a6, v19 + v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = *(*&v6 + 112);
  v35 = *(*&v6 + 120);
  *&v37 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout(0));
  sub_10000CF78((*&v7 + v37[5]), *(*&v7 + v37[5] + 24));
  v264 = a4;
  v263 = a5;
  sub_100770A4C();
  sub_10076D23C();
  v285.origin.x = v28;
  v285.origin.y = v30;
  v285.size.width = v36;
  v250 = v35;
  v285.size.height = v35;
  MaxX = CGRectGetMaxX(v285);
  v38 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v279 = a1;
  *&v39 = COERCE_DOUBLE(sub_10000A5D4(&unk_100945BD0, qword_100796680));
  sub_10075FDCC();
  v40 = v282;
  v286.origin.x = v28;
  v286.origin.y = v30;
  v286.size.width = v32;
  v286.size.height = v34;
  MinY = CGRectGetMinY(v286);
  v287.origin.x = v28;
  v287.origin.y = v30;
  v287.size.width = v32;
  v287.size.height = v34;
  Width = CGRectGetWidth(v287);
  *&v279 = a1;
  v247 = *&v39;
  sub_10075FDCC();
  v251 = v36;
  v42 = v36 + v282;
  v273 = v28;
  v288.origin.x = v28;
  v274 = v30;
  v288.origin.y = v30;
  v288.size.width = v32;
  v288.size.height = v34;
  Height = CGRectGetHeight(v288);
  v257 = v37[10];
  sub_100016E2C(*&v6 + v257, &v282, &unk_10094DA00, &qword_100783FA0);
  v270 = v32;
  if (v283)
  {
    sub_10000CF78(&v282, v283);
    sub_10076D2BC();
    v259 = v43;
    v235 = v44;
    sub_10000CD74(&v282);
  }

  else
  {
    sub_10000CFBC(&v282, &unk_10094DA00, &qword_100783FA0);
    v259 = 0.0;
    v235 = 0.0;
  }

  v45 = v34;
  v46 = MaxX + v40;
  v47 = Width - v42;
  sub_100016E2C(*&v6 + v257, &v282, &unk_10094DA00, &qword_100783FA0);
  v48 = v283;
  sub_10000CFBC(&v282, &unk_10094DA00, &qword_100783FA0);
  v49 = 0.0;
  if (v48)
  {
    v50 = (*&v6 + *(v38 + 80));
    v51 = v50[3];
    sub_10000CF78(v50, v51);
    sub_1000FF02C(v51);
    sub_10076D40C();
    v49 = v52;
    v21(v16, v266);
  }

  v255 = v38;
  v53 = (*&v6 + v37[11]);
  v54 = v53[3];
  v248 = v53;
  sub_10000CF78(v53, v54);
  v289.origin.x = v46;
  v289.origin.y = MinY;
  v289.size.width = v47;
  v289.size.height = Height;
  CGRectGetWidth(v289);
  v272 = v47;
  v55 = v273;
  v290.origin.x = v273;
  v56 = v274;
  v290.origin.y = v274;
  v290.size.width = v270;
  v262 = v49;
  v57 = v270;
  v290.size.height = v45;
  CGRectGetHeight(v290);
  sub_10076D2BC();
  v59 = v58;
  v258 = v60;
  v291.origin.x = v55;
  v291.origin.y = v56;
  v291.size.width = v57;
  v291.size.height = v45;
  v269 = v45;
  CGRectGetWidth(v291);
  v61 = *&v6 + *(v38 + 76);
  v62 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v63 = (v61 + *(v62 + 28));
  v64 = v63[3];
  v233 = v63;
  sub_10000CF78(v63, v64);
  MaxX = v7;
  v65 = v37;
  v66 = a1;
  v67 = v21;
  sub_1000FF02C(v64);
  sub_10076D40C();
  v68 = v266;
  v67(v16, v266);
  v252 = v59;
  v69 = v46;
  v70 = v259;
  v71 = (v61 + *(v62 + 24));
  v72 = v71[3];
  v231 = v71;
  sub_10000CF78(v71, v72);
  sub_1000FF02C(v72);
  sub_10076D40C();
  v253 = v16;
  v254 = v20;
  v260 = v67;
  v67(v16, v68);
  v73 = v66;
  v74 = (*&MaxX + v65[12]);
  v75 = v74[3];
  v234 = v74;
  sub_10000CF78(v74, v75);
  v292.origin.x = v55;
  v76 = v56;
  v292.origin.y = v56;
  v77 = v270;
  v292.size.width = v270;
  v292.size.height = v45;
  CGRectGetHeight(v292);
  sub_10076D2AC();
  v246 = v78;
  v79 = [v66 traitCollection];
  LOBYTE(v75) = sub_1007706EC();

  v293.origin.x = v69;
  v80 = v69;
  v265 = v69;
  v81 = MinY;
  v293.origin.y = MinY;
  v293.size.width = v272;
  v82 = Height;
  v293.size.height = Height;
  v83 = CGRectGetWidth(v293);
  if (v75)
  {
    v84 = v83;
  }

  else
  {
    v84 = v83 - v70 - v262;
  }

  v245 = v84;
  v85 = (*&MaxX + v65[6]);
  sub_10000CF78(v85, v85[3]);
  v294.origin.x = v55;
  v294.origin.y = v76;
  v294.size.width = v77;
  v86 = v269;
  v294.size.height = v269;
  CGRectGetHeight(v294);
  sub_10076D2AC();
  v262 = v87;
  v243 = v88;
  v90 = v89;
  v256 = v89;
  v261 = v91;
  v92 = v255;
  *&v279 = v73;
  sub_10075FDCC();
  v93 = v55;
  v94 = v282;
  v295.origin.x = v80;
  v295.origin.y = v81;
  v295.size.width = v272;
  v295.size.height = v82;
  MinX = CGRectGetMinX(v295);
  v296.origin.x = v93;
  v95 = v274;
  v296.origin.y = v274;
  v296.size.width = v77;
  v296.size.height = v86;
  v96 = CGRectGetMinY(v296);
  if (v94 - v90 > 0.0)
  {
    v97 = v94 - v90;
  }

  else
  {
    v97 = 0.0;
  }

  sub_10000CF78(v85, v85[3]);
  sub_10076D6EC();
  if (v262 >= v245)
  {
    v99 = v245;
  }

  else
  {
    v99 = v262;
  }

  v100 = v96 + v97 + v98;
  v297.origin.x = MinX;
  v297.origin.y = v100;
  v297.size.width = v99;
  v101 = v243;
  v297.size.height = v243;
  v244 = CGRectGetMaxY(v297) - v261;
  sub_10000CF78(v85, v85[3]);
  v102 = v95;
  sub_100770A4C();
  sub_10076D23C();
  v232 = v85;
  sub_10000A570(v85, &v282);
  *&v279 = v73;
  sub_10000A5D4(&unk_10094C370, &qword_100792900);
  sub_10075FDCC();
  *&v245 = v65[9];
  sub_100016E2C(*&MaxX + *&v245, &v279, &qword_10094BB30, qword_100796E40);
  sub_10000CFBC(&v279, &qword_10094BB30, qword_100796E40);
  sub_10000CF78(&v282, v283);
  v298.var0 = v262;
  v298.var1 = v101;
  v298.var2 = v256;
  v298.var3 = v261;
  sub_10076D71C(v298);
  sub_10000CD74(&v282);
  v103 = (*&MaxX + v65[7]);
  sub_10000CF78(v103, v103[3]);
  sub_10076D6DC();
  v256 = *&v65;
  v104 = v65[8];
  v105 = *&MaxX;
  v106 = (*&MaxX + v104);
  sub_10000CF78((*&MaxX + v104), *(*&MaxX + v104 + 24));
  sub_10076D6DC();
  *&v279 = v73;
  sub_10075FDCC();
  v107 = v282;
  sub_10000CF78(v103, v103[3]);
  v108 = v265;
  v299.origin.x = v265;
  v109 = MinY;
  v299.origin.y = MinY;
  v110 = v272;
  v299.size.width = v272;
  v111 = Height;
  v299.size.height = Height;
  CGRectGetWidth(v299);
  v300.origin.x = v273;
  v300.origin.y = v102;
  v112 = v270;
  v300.size.width = v270;
  v300.size.height = v269;
  CGRectGetHeight(v300);
  sub_10076D2AC();
  v114 = v113;
  v243 = v115;
  v117 = v116;
  v237 = v118;
  v301.origin.x = v108;
  v301.origin.y = v109;
  v301.size.width = v110;
  v301.size.height = v111;
  MinX = CGRectGetMinX(v301);
  v302.origin.x = v108;
  v302.origin.y = v109;
  v302.size.width = v110;
  v302.size.height = v111;
  v119 = CGRectGetWidth(v302);
  if (v114 < v119)
  {
    v119 = v114;
  }

  v262 = v119;
  v120 = v244 + v107;
  v261 = v244 + v107 - v117;
  sub_10000CF78(v106, v106[3]);
  v303.origin.x = v108;
  v303.origin.y = v109;
  v303.size.width = v110;
  v303.size.height = v111;
  CGRectGetWidth(v303);
  v304.origin.x = v273;
  v304.origin.y = v274;
  v304.size.width = v112;
  v304.size.height = v269;
  CGRectGetHeight(v304);
  sub_10076D2AC();
  v122 = v121;
  v244 = v123;
  v125 = v124;
  v236 = v126;
  v305.origin.x = v108;
  v305.origin.y = v109;
  v305.size.width = v110;
  v305.size.height = v111;
  v241 = CGRectGetMinX(v305);
  v306.origin.x = v108;
  v306.origin.y = v109;
  v306.size.width = v110;
  v306.size.height = v111;
  v127 = CGRectGetWidth(v306);
  if (v122 >= v127)
  {
    v122 = v127;
  }

  v128 = v120 - v125;
  sub_10000CF78(v103, v103[3]);
  v129 = MinX;
  v130 = v243;
  sub_100770A4C();
  sub_10076D23C();
  sub_10000CF78(v106, v106[3]);
  v131 = v241;
  v240 = v128;
  v132 = v244;
  sub_100770A4C();
  sub_10076D23C();
  v307.origin.x = v131;
  v133 = v131;
  v307.origin.y = v128;
  v307.size.width = v122;
  v307.size.height = v132;
  v134 = v132;
  MaxY = CGRectGetMaxY(v307);
  v136 = v129;
  v308.origin.x = v129;
  v137 = v261;
  v308.origin.y = v261;
  v138 = v262;
  v308.size.width = v262;
  v308.size.height = v130;
  v139 = CGRectGetMaxY(v308) < MaxY;
  v140 = v133;
  if (v139)
  {
    v141 = v133;
  }

  else
  {
    v141 = v136;
  }

  v142 = v240;
  if (v139)
  {
    v143 = v240;
  }

  else
  {
    v143 = v137;
  }

  v144 = v122;
  if (!v139)
  {
    v122 = v138;
  }

  v145 = v134;
  if (!v139)
  {
    v134 = v130;
  }

  v244 = CGRectGetMaxY(*&v140);
  v309.origin.x = v136;
  v309.origin.y = v137;
  v309.size.width = v138;
  v309.size.height = v130;
  v146 = CGRectGetMaxY(v309);
  v310.origin.x = v141;
  v310.origin.y = v143;
  v310.size.width = v122;
  v310.size.height = v134;
  v147 = CGRectGetMaxY(v310);
  sub_100016E2C(v105 + *&v245, &v279, &qword_10094BB30, qword_100796E40);
  if (v280)
  {
    v148 = v237;
    if (v146 < v244)
    {
      v148 = v236;
    }

    v262 = v147 - v148;
    sub_100012498(&v279, &v282);
    *&v277 = v73;
    sub_10075FDCC();
    v261 = *&v279;
    sub_10000CF78(&v282, v283);
    v149 = v265;
    v311.origin.x = v265;
    v150 = MinY;
    v311.origin.y = MinY;
    v151 = v272;
    v311.size.width = v272;
    v152 = Height;
    v311.size.height = Height;
    CGRectGetWidth(v311);
    v312.origin.x = v273;
    v312.origin.y = v274;
    v312.size.width = v270;
    v312.size.height = v269;
    CGRectGetHeight(v312);
    sub_10076D2AC();
    v154 = v153;
    v156 = v155;
    v158 = v157;
    v313.origin.x = v149;
    v313.origin.y = v150;
    v313.size.width = v151;
    v313.size.height = v152;
    v159 = CGRectGetMinX(v313);
    v314.origin.x = v149;
    v314.origin.y = v150;
    v314.size.width = v151;
    v314.size.height = v152;
    v160 = CGRectGetWidth(v314);
    if (v154 >= v160)
    {
      v154 = v160;
    }

    v161 = v262 + v261 - v158;
    sub_10000CF78(&v282, v283);
    sub_100770A4C();
    sub_10076D23C();
    v315.origin.x = v159;
    v315.origin.y = v161;
    v315.size.width = v154;
    v315.size.height = v156;
    v162 = CGRectGetMaxY(v315);
    v316.origin.x = v159;
    v316.origin.y = v161;
    v316.size.width = v154;
    v316.size.height = v156;
    CGRectGetMaxY(v316);
    sub_10000CD74(&v282);
    v163 = v92;
  }

  else
  {
    sub_10000CFBC(&v279, &qword_10094BB30, qword_100796E40);
    v163 = v92;
    v162 = v147;
  }

  v164 = v248;
  sub_10000CF78(v248, v248[3]);
  v165 = sub_10076D24C();
  v317.origin.x = v273;
  v317.origin.y = v274;
  v317.size.width = v251;
  v317.size.height = v250;
  v166 = CGRectGetMaxY(v317);
  v167 = v246;
  if ((v165 & 1) == 0)
  {
    v167 = v258;
  }

  v168 = v166 - v167;
  v169 = (v105 + *(v163 + 72));
  v170 = v169[3];
  sub_10000CF78(v169, v170);
  v171 = v253;
  sub_1000FF02C(v170);
  sub_10076D40C();
  v173 = v172;
  v260(v171, v266);
  v247 = v162;
  v174 = v162 + v173;
  v318.origin.x = v265;
  v175 = MinY;
  v318.origin.y = MinY;
  v318.size.width = v272;
  v318.size.height = Height;
  v176 = CGRectGetMinX(v318);
  if (v168 <= v174)
  {
    v168 = v174;
  }

  sub_10000CF78(v164, v164[3]);
  v177 = v268;
  v178 = v267;
  v261 = v176;
  v262 = v168;
  v179 = v252;
  sub_100770A4C();
  sub_10076D23C();
  v180 = *&v256;
  if (*(v105 + *(*&v256 + 60)) == 1)
  {
    v181 = *(*&v256 + 52);
    sub_100016E2C(v105 + v181, &v279, &qword_10094BB30, qword_100796E40);
    if (v280)
    {
      sub_100012498(&v279, &v282);
      sub_100016E2C(v105 + v180[14], &v277, &qword_10094BB30, qword_100796E40);
      v182 = v178;
      v183 = v264;
      if (v278)
      {
        v184 = v163;
        sub_100012498(&v277, &v279);
        v185 = [v73 traitCollection];
        v186 = sub_1007706EC();

        v187 = v283;
        v188 = v284;
        v189 = sub_10000CF78(&v282, v283);
        v190 = v280;
        v191 = v281;
        v192 = sub_10000CF78(&v279, v280);
        v193 = *(v188 + 8);
        v194 = *(v191 + 8);
        if (v186)
        {
          sub_1002D1C1C(v273, v274, v251, v250, v259, v235, v261, v262, v189, v192, v73, v105, v187, v190, v193, v194, v179, v258, v247, v273, v274, v270, v269);
        }

        else
        {
          sub_1002D4A54(v259, v235, v261, v262, v179, v258, v273, v274, v189, v192, v73, v105, v187, v190, v193, v194, v270, v269, v265, v175, v272, Height);
        }

        sub_10000CD74(&v279);
        sub_10000CD74(&v282);
        v180 = *&v256;
        v163 = v184;
        goto LABEL_67;
      }

      sub_10000CFBC(&v277, &qword_10094BB30, qword_100796E40);
      sub_10000CD74(&v282);
    }

    else
    {
      sub_10000CFBC(&v279, &qword_10094BB30, qword_100796E40);
      v182 = v178;
      v183 = v264;
    }

    sub_100016E2C(v105 + v181, &v282, &qword_10094BB30, qword_100796E40);
    v200 = v263;
    if (v283)
    {
      sub_10000CF78(&v282, v283);
      sub_10076D23C();
      sub_10000CD74(&v282);
    }

    else
    {
      sub_10000CFBC(&v282, &qword_10094BB30, qword_100796E40);
    }

    sub_100016E2C(v105 + v180[14], &v282, &qword_10094BB30, qword_100796E40);
    if (v283)
    {
      sub_10000CF78(&v282, v283);
LABEL_81:
      sub_10076D23C();
      sub_10000CD74(&v282);
      goto LABEL_84;
    }

    v205 = &qword_10094BB30;
    v206 = qword_100796E40;
    v207 = &v282;
  }

  else
  {
    sub_100016E2C(v105 + *(*&v256 + 52), &v282, &qword_10094BB30, qword_100796E40);
    if (v283)
    {
      sub_10000CF78(&v282, v283);
      sub_10076D23C();
      sub_10000CD74(&v282);
    }

    else
    {
      sub_10000CFBC(&v282, &qword_10094BB30, qword_100796E40);
    }

    v195 = v270;
    v182 = v178;
    v183 = v264;
    sub_100016E2C(v105 + v180[14], &v282, &qword_10094BB30, qword_100796E40);
    if (v283)
    {
      sub_10000CF78(&v282, v283);
      sub_10076D23C();
      sub_10000CD74(&v282);
    }

    else
    {
      sub_10000CFBC(&v282, &qword_10094BB30, qword_100796E40);
    }

    v196 = Height;
    v197 = [v73 traitCollection];
    v198 = sub_1007706EC();

    if (v198)
    {
      sub_1002D0434(v73, v261, v262, v179, v258, v259, v235, v273, v274, v195, v269, v265, v175, v272, v196);
LABEL_67:
      v200 = v263;
      goto LABEL_84;
    }

    v199 = v234;
    sub_10000CF78(v234, v234[3]);
    if (sub_10076D24C())
    {
      sub_10000CF78(v199, v199[3]);
      sub_10076D23C();
      v163 = v255;
      v200 = v263;
    }

    else
    {
      sub_100016E2C(v105 + v257, &v282, &unk_10094DA00, &qword_100783FA0);
      v201 = v283;
      sub_10000CFBC(&v282, &unk_10094DA00, &qword_100783FA0);
      if (v201)
      {
        v202 = (v105 + *(v255 + 80));
        v203 = v202[3];
        sub_10000CF78(v202, v203);
        sub_1000FF02C(v203);
        sub_10076D40C();
        v251 = v204;
        v260(v171, v266);
      }

      else
      {
        v251 = 0.0;
      }

      v208 = v272;
      v209 = v261;
      sub_100016E2C(v105 + v257, &v282, &unk_10094DA00, &qword_100783FA0);
      if (v283)
      {
        sub_10000CF78(&v282, v283);
        sub_10076D2BC();
        sub_10000CD74(&v282);
      }

      else
      {
        sub_10000CFBC(&v282, &unk_10094DA00, &qword_100783FA0);
      }

      v319.origin.x = v265;
      v319.origin.y = v175;
      v319.size.width = v208;
      v319.size.height = v196;
      CGRectGetWidth(v319);
      v320.origin.x = v209;
      v210 = v262;
      v320.origin.y = v262;
      v320.size.width = v179;
      v211 = v258;
      v320.size.height = v258;
      CGRectGetWidth(v320);
      v212 = v233[3];
      sub_10000CF78(v233, v212);
      sub_1000FF02C(v212);
      sub_10076D40C();
      v213 = v171;
      v214 = v266;
      v215 = v171;
      v216 = v260;
      v260(v213, v266);
      v217 = v261;
      v218 = v179;
      v219 = v231[3];
      sub_10000CF78(v231, v219);
      sub_1000FF02C(v219);
      sub_10076D40C();
      v216(v215, v214);
      sub_10000CF78(v234, v234[3]);
      sub_10076D2AC();
      v221 = v220;
      v321.origin.x = v217;
      v321.origin.y = v210;
      v321.size.width = v218;
      v321.size.height = v211;
      CGRectGetMidY(v321);
      sub_10000CF78(v164, v164[3]);
      if ((sub_10076D24C() & 1) != 0 || (v322.origin.x = v217, v322.origin.y = v210, v322.size.width = v218, v322.size.height = v211, CGRectGetHeight(v322) < v221))
      {
        v323.origin.x = v217;
        v323.origin.y = v210;
        v323.size.width = v218;
        v323.size.height = v211;
        CGRectGetMinY(v323);
      }

      v200 = v263;
      sub_10000CF78(v164, v164[3]);
      v222 = sub_10076D24C();
      v171 = v253;
      v163 = v255;
      v223 = v217;
      v224 = v262;
      v225 = v252;
      v226 = v211;
      if (v222)
      {
        CGRectGetMinX(*&v223);
      }

      else
      {
        CGRectGetMaxX(*&v223);
        v227 = v233[3];
        sub_10000CF78(v233, v227);
        sub_1000FF02C(v227);
        sub_10076D40C();
        v260(v171, v266);
      }

      v183 = v264;
      sub_10000CF78(v234, v234[3]);
      sub_100770A4C();
      sub_10076D23C();
      v177 = v268;
      v175 = MinY;
      v196 = Height;
    }

    sub_100016E2C(v105 + v257, &v279, &unk_10094DA00, &qword_100783FA0);
    v180 = *&v256;
    if (v280)
    {
      sub_100012498(&v279, &v282);
      sub_10000CF78(v232, v232[3]);
      sub_10076D22C();
      CGRectGetMidY(v324);
      v325.size.height = v196;
      v325.origin.x = v265;
      v325.origin.y = v175;
      v325.size.width = v272;
      CGRectGetMaxX(v325);
      sub_10000CF78(&v282, v283);
      sub_100770A4C();
      goto LABEL_81;
    }

    v205 = &unk_10094DA00;
    v206 = &qword_100783FA0;
    v207 = &v279;
  }

  sub_10000CFBC(v207, v205, v206);
LABEL_84:
  sub_100016E2C(v105 + v180[17], &v279, &unk_10094DA00, &qword_100783FA0);
  if (v280)
  {
    sub_100012498(&v279, &v282);
    sub_10000CF78(&v282, v283);
    v326.origin.x = v177;
    v326.origin.y = v183;
    v326.size.width = v200;
    v326.size.height = v182;
    CGRectGetMinX(v326);
    v327.origin.x = v177;
    v327.origin.y = v183;
    v327.size.width = v200;
    v327.size.height = v182;
    CGRectGetMinY(v327);
    v328.origin.x = v177;
    v328.origin.y = v183;
    v328.size.width = v200;
    v328.size.height = v182;
    CGRectGetWidth(v328);
    sub_10076D23C();
    sub_10000CD74(&v282);
  }

  else
  {
    sub_10000CFBC(&v279, &unk_10094DA00, &qword_100783FA0);
  }

  sub_100016E2C(v105 + v180[18], &v279, &unk_10094DA00, &qword_100783FA0);
  if (v280)
  {
    sub_100012498(&v279, &v282);
    sub_10000CF78(&v282, v283);
    v329.origin.x = v177;
    v329.origin.y = v183;
    v329.size.width = v200;
    v329.size.height = v182;
    CGRectGetMinX(v329);
    v330.origin.x = v177;
    v330.origin.y = v183;
    v330.size.width = v200;
    v330.size.height = v182;
    CGRectGetMaxY(v330);
    v228 = (v105 + *(v163 + 96));
    v229 = v228[3];
    sub_10000CF78(v228, v229);
    sub_1000FF02C(v229);
    sub_10076D40C();
    v260(v171, v266);
    v331.origin.x = v177;
    v331.origin.y = v183;
    v331.size.width = v200;
    v331.size.height = v182;
    CGRectGetWidth(v331);
    sub_10076D23C();
    sub_10000CD74(&v282);
  }

  else
  {
    sub_10000CFBC(&v279, &unk_10094DA00, &qword_100783FA0);
  }

  return sub_10076D1BC();
}

uint64_t sub_1002D0434(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, double a10, double a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15)
{
  v16 = v15;
  v169 = a9;
  v168 = a8;
  v164 = a7;
  v174 = a2;
  v22 = a14;
  v23 = a15;
  v173 = a13;
  v24 = a12;
  v179 = sub_10076997C();
  v25 = *(v179 - 8);
  __chkstk_darwin(v179);
  v27 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v178 = &v145 - v29;
  v176 = sub_10075D78C();
  v151 = *(v176 - 1);
  __chkstk_darwin(v176);
  v150 = &v145 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10077164C();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for ProductLockupLayout(0);
  v171 = *(v177 + 40);
  sub_100016E2C(v15 + v171, v182, &unk_10094DA00, &qword_100783FA0);
  v35 = v183;
  sub_10000CFBC(v182, &unk_10094DA00, &qword_100783FA0);
  v147 = v27;
  v175 = v25;
  if (v35)
  {
    v36 = (v15 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80));
    v37 = v36[3];
    sub_10000CF78(v36, v37);
    sub_1000FF02C(v37);
    sub_10076D40C();
    v153 = v38;
    (*(v32 + 8))(v34, v31);
  }

  else
  {
    v153 = 0.0;
  }

  v166 = a11;
  v165 = a10;
  v185.origin.x = a12;
  v39 = v173;
  v185.origin.y = v173;
  v185.size.width = a14;
  v185.size.height = a15;
  Width = CGRectGetWidth(v185);
  v186.origin.x = v174;
  v186.origin.y = a3;
  v167 = a4;
  v186.size.width = a4;
  v172 = a5;
  v186.size.height = a5;
  v40 = CGRectGetWidth(v186);
  v148 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v41 = (v15 + *(v148 + 76));
  v42 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v43 = (v41 + *(v42 + 28));
  v44 = v43[3];
  v154 = v43;
  sub_10000CF78(v43, v44);
  sub_1000FF02C(v44);
  sub_10076D40C();
  v46 = v45;
  v47 = *(v32 + 8);
  v159 = v34;
  v160 = v32 + 8;
  v158 = v47;
  v47(v34, v31);
  v48 = v177;
  v49 = (v15 + *(v177 + 64));
  v50 = *(v49 + 1);
  v163 = *v49;
  v149 = v42;
  v182[0] = a1;
  sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
  v157 = v41;
  v51 = v50;
  sub_10075FDCC();
  v52 = v180;
  v53 = *(v15 + *(v48 + 60));
  v54 = (v15 + *(v48 + 44));
  v55 = v54[3];
  v170 = v54;
  sub_10000CF78(v54, v55);
  v56 = sub_10076D24C();
  v187.origin.x = a12;
  v187.origin.y = v39;
  v187.size.width = a14;
  v187.size.height = a15;
  CGRectGetWidth(v187);
  if (*&v51 == 0.0)
  {

    v59 = v172;
    v60 = v177;
    goto LABEL_21;
  }

  v57 = a6;
  v155 = a15;
  v156 = a14;
  v161 = a12;
  v162 = a3;
  v146 = v31;
  if (v56)
  {

    v58 = 0;
    v59 = v172;
LABEL_19:
    v74 = v177;
LABEL_20:
    v104 = (v16 + *(v74 + 48));
    v60 = v74;
    sub_10000CF78(v104, v104[3]);
    if ((sub_10076D24C() & 1) == 0)
    {
      v145 = v57;
      if (v58)
      {
        v106 = v174;
        sub_10000CF78(v104, v104[3]);
        sub_10076D2AC();
        v108 = v107;
        sub_10000CF78(v157, v157[3]);
        v179 = v108;
        sub_10076D42C();
        v189.origin.x = v106;
        v189.origin.y = a3;
        v109 = v167;
        v189.size.width = v167;
        v189.size.height = v59;
        CGRectGetMinX(v189);
        v190.origin.x = v106;
        v190.origin.y = a3;
        v190.size.width = v109;
        v190.size.height = v59;
        CGRectGetWidth(v190);
        sub_10000CF78(v170, v170[3]);
        v110 = sub_10076D24C();
        v111 = v106;
        v112 = a3;
        v113 = v109;
        v114 = v59;
        if (v110)
        {
          CGRectGetMinY(*&v111);
        }

        else
        {
          CGRectGetMaxY(*&v111);
        }

        v22 = v156;
        v105 = v171;
      }

      else
      {
        v115 = v171;
        sub_100016E2C(v16 + v171, v182, &unk_10094DA00, &qword_100783FA0);
        v116 = v183;
        sub_10000CFBC(v182, &unk_10094DA00, &qword_100783FA0);
        if (v116)
        {
          v117 = (v16 + *(v148 + 80));
          v118 = v117[3];
          sub_10000CF78(v117, v118);
          v119 = v159;
          sub_1000FF02C(v118);
          sub_10076D40C();
          v179 = v120;
          v158(v119, v146);
        }

        else
        {
          v179 = 0;
        }

        sub_100016E2C(v16 + v115, v182, &unk_10094DA00, &qword_100783FA0);
        if (v183)
        {
          sub_10000CF78(v182, v183);
          sub_10076D2BC();
          v178 = v121;
          sub_10000CD74(v182);
        }

        else
        {
          sub_10000CFBC(v182, &unk_10094DA00, &qword_100783FA0);
          v178 = 0;
        }

        v191.origin.x = v161;
        v191.origin.y = v173;
        v191.size.width = v22;
        v191.size.height = v23;
        CGRectGetWidth(v191);
        v122 = v174;
        v192.origin.x = v174;
        v192.origin.y = a3;
        v123 = v167;
        v192.size.width = v167;
        v124 = v172;
        v192.size.height = v172;
        CGRectGetWidth(v192);
        v125 = v154[3];
        sub_10000CF78(v154, v125);
        v126 = v159;
        sub_1000FF02C(v125);
        sub_10076D40C();
        v127 = a3;
        v128 = v146;
        v129 = v158;
        v158(v126, v146);
        v130 = v124;
        v131 = (v157 + *(v149 + 24));
        v132 = v131[3];
        sub_10000CF78(v131, v132);
        sub_1000FF02C(v132);
        sub_10076D40C();
        v133 = v126;
        v134 = v128;
        v129(v133, v128);
        sub_10000CF78(v104, v104[3]);
        sub_10076D2AC();
        v136 = v135;
        v193.origin.x = v122;
        v193.origin.y = v127;
        v193.size.width = v123;
        v193.size.height = v130;
        CGRectGetMidY(v193);
        sub_10000CF78(v170, v170[3]);
        if ((sub_10076D24C() & 1) != 0 || (v194.origin.x = v122, v194.origin.y = v127, v194.size.width = v123, v194.size.height = v130, CGRectGetHeight(v194) < v136))
        {
          v137 = v122;
          v195.origin.x = v122;
          v195.origin.y = v127;
          v195.size.width = v123;
          v195.size.height = v130;
          CGRectGetMinY(v195);
        }

        else
        {
          v137 = v122;
        }

        sub_10000CF78(v170, v170[3]);
        v138 = sub_10076D24C();
        v105 = v171;
        v139 = v137;
        v140 = v162;
        v141 = v123;
        v142 = v172;
        if (v138)
        {
          CGRectGetMinX(*&v139);
        }

        else
        {
          CGRectGetMaxX(*&v139);
          v143 = v154[3];
          sub_10000CF78(v154, v143);
          v144 = v159;
          sub_1000FF02C(v143);
          sub_10076D40C();
          v158(v144, v134);
        }

        v22 = v156;
      }

      sub_10000CF78(v104, v104[3]);
      sub_100770A4C();
      sub_10076D23C();
      v23 = v155;
      v24 = v161;
      v59 = v172;
      a3 = v162;
      goto LABEL_44;
    }

LABEL_21:
    sub_10000CF78((v16 + *(v60 + 48)), *(v16 + *(v60 + 48) + 24));
    sub_10076D23C();
    v105 = v171;
LABEL_44:
    sub_100016E2C(v16 + v105, &v180, &unk_10094DA00, &qword_100783FA0);
    if (!v181)
    {
      return sub_10000CFBC(&v180, &unk_10094DA00, &qword_100783FA0);
    }

    sub_100012498(&v180, v182);
    sub_10000CF78(v170, v170[3]);
    if (sub_10076D24C())
    {
      v196.origin.x = v174;
      v196.origin.y = a3;
      v196.size.width = v167;
      v196.size.height = v59;
      CGRectGetMinY(v196);
    }

    else
    {
      v197.origin.x = v174;
      v197.origin.y = a3;
      v197.size.width = v167;
      v197.size.height = v59;
      CGRectGetMidY(v197);
    }

    v198.origin.x = v24;
    v198.origin.y = v173;
    v198.size.width = v22;
    v198.size.height = v23;
    CGRectGetMaxX(v198);
    sub_10000CF78(v182, v183);
    sub_100770A4C();
    sub_10076D23C();
    return sub_10000CD74(v182);
  }

  v61 = v40;
  v62 = v57;
  v63 = objc_opt_self();

  v64 = [v63 mainScreen];
  [v64 bounds];
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v188.origin.x = v66;
  v188.origin.y = v68;
  v188.size.width = v70;
  v188.size.height = v72;
  v73 = CGRectGetWidth(v188);
  JUScreenClassGetPortraitWidth();
  v74 = v177;
  if (v73 <= v75)
  {
    v76 = v150;
    sub_10075D77C();
    v182[0] = v163;
    v182[1] = v51;
    sub_10002564C();
    sub_1007711EC();
    v78 = v77;
    (*(v151 + 8))(v76, v176);
    if ((v78 & 1) == 0)
    {

      v58 = 1;
      v57 = v62;
      v23 = v155;
      v22 = v156;
      v24 = v161;
      v59 = v172;
      a3 = v162;
      goto LABEL_20;
    }
  }

  v57 = v62;
  v22 = v156;
  a3 = v162;
  if (v53)
  {
    v79 = [a1 traitCollection];
    v80 = sub_1007706FC();

    if ((v80 & 1) == 0)
    {

      v58 = 1;
      v23 = v155;
      v24 = v161;
      v59 = v172;
      goto LABEL_20;
    }
  }

  v176 = v52;
  v151 = v16;
  v81 = Width - (v153 + v61 + v46 + v62);
  v153 = *&v51;
  result = sub_1002D16C0(v163, v51);
  v83 = result;
  v84 = *(result + 16);
  v85 = (v175 + 8);
  LODWORD(v175) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v86 = result + 40;
  v87 = -v84;
  v88 = -1;
  v24 = v161;
  v59 = v172;
  while (1)
  {
    if (v87 + v88 == -1)
    {

      v97 = sub_10076C04C();
      v183 = v97;
      v184 = sub_1002D57EC(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v98 = sub_10000DB7C(v182);
      (*(*(v97 - 8) + 104))(v98, v175, v97);
      v99 = v176;
      sub_10076C90C();
      sub_10000CD74(v182);
      v100 = v147;
      sub_10076996C();
      sub_1002D57EC(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
      v101 = v179;
      sub_10076D2AC();
      v103 = v102;

      (*v85)(v100, v101);
      v58 = v81 < v103;
      goto LABEL_18;
    }

    if (++v88 >= *(v83 + 16))
    {
      break;
    }

    v89 = v86 + 16;
    v90 = sub_10076C04C();
    v183 = v90;
    v184 = sub_1002D57EC(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v91 = sub_10000DB7C(v182);
    (*(*(v90 - 8) + 104))(v91, v175, v90);

    v92 = v176;
    sub_10076C90C();
    sub_10000CD74(v182);
    v93 = v178;
    sub_10076996C();
    sub_1002D57EC(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
    v94 = v179;
    sub_10076D2AC();
    v96 = v95;
    result = (*v85)(v93, v94);
    v86 = v89;
    if (v81 < v96)
    {

      v58 = 1;
LABEL_18:
      v23 = v155;
      v16 = v151;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D16C0(uint64_t a1, unint64_t a2)
{
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = (v2 + 16);

  sub_10000A5D4(&unk_100951190, qword_10079A7B8);
  sub_10002564C();
  sub_1002D63E8();
  sub_10077120C();

  swift_beginAccess();
  v4 = *v3;

  return v4;
}

double ProductLockupLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProductLockupLayout(0);
  sub_10000CF78((v3 + v12[11]), *(v3 + v12[11] + 24));
  sub_10076D2BC();
  v14 = rint(v13);
  v38 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v15 = (v3 + *(v38 + 96));
  v16 = v15[3];
  sub_10000CF78(v15, v16);
  sub_1000FF02C(v16);
  sub_10076D40C();
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v11, v8);
  v20 = *(v4 + 96);
  sub_10000CF78((v4 + 72), v20);
  sub_1000FF02C(v20);
  sub_10076D40C();
  v22 = v21;
  v19(v11, v8);
  swift_getObjectType();
  v23 = [a1 traitCollection];
  v24 = sub_1007706FC();

  if ((v24 & 1) == 0 && *(v4 + v12[15]) == 1)
  {
    v25 = sub_1002D41F8(a1, v4, a2, a3);
    v26 = (v4 + v12[12]);
    sub_10000CF78(v26, v26[3]);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000CF78(v26, v26[3]);
      sub_10076D2AC();
      v28 = v27;
      v30 = v29;
      v31 = (v4 + *(v38 + 76));
      v32 = v31[3];
      sub_10000CF78(v31, v32);
      sub_1000FF02C(v32);
      sub_10076D40C();
      v34 = v33;
      v19(v11, v8);
      v35 = v34 - v30;
      if (v34 - v30 <= 0.0)
      {
        v35 = 0.0;
      }

      v14 = v14 + v28 + v35;
    }

    if (v14 <= v25)
    {
      v14 = v25;
    }
  }

  return v18 + v22 + v14;
}

uint64_t sub_1002D1B38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(a8 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_10049D954(0, *(v11 + 2) + 1, 1, v11);
      *(a8 + 16) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_10049D954((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = a2;
    *(a8 + 16) = v11;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1002D1C1C(CGFloat a1, CGFloat a2, CGFloat a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CGFloat a17, CGFloat a18, double a19, CGFloat a20, CGFloat a21, CGFloat a22, CGFloat a23)
{
  v167 = a16;
  v162 = a15;
  v179 = *&a11;
  v177 = a8;
  v159 = a6;
  v176 = a4;
  v173 = a3;
  v171 = a2;
  v160 = a1;
  v29 = a22;
  v174 = a18;
  v30 = a17;
  *&v31 = COERCE_DOUBLE(sub_10077164C());
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a14 - 8);
  __chkstk_darwin(v36);
  v38 = &v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v39);
  v164 = v42;
  v43 = *(v42 + 16);
  v163 = &v150 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = a13;
  v43(v40);
  v166 = v35;
  v44 = *(v35 + 16);
  v165 = v38;
  v169 = a14;
  v44(v38, a10, a14);
  v45 = type metadata accessor for ProductLockupLayout(0);
  v46 = v45[10];
  sub_100016E2C(a12 + v46, &v181, &unk_10094DA00, &qword_100783FA0);
  v170 = a20;
  v172 = a7;
  if (v182)
  {
    sub_100012498(&v181, &v183);
    v47 = (a12 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92));
    v48 = v47[3];
    sub_10000CF78(v47, v48);
    sub_1000FF02C(v48);
    v49 = v179;
    sub_10076D40C();
    v161 = a17;
    v51 = v50;
    (*(v32 + 8))(v34, v31);
    v185.origin.x = v160;
    v185.origin.y = v171;
    v185.size.width = v173;
    v185.size.height = v176;
    MaxY = CGRectGetMaxY(v185);
    v53 = v159;
    v54 = MaxY - v159;
    if (v54 > v51 + a19)
    {
      v55 = v54;
    }

    else
    {
      v55 = v51 + a19;
    }

    v186.origin.x = a20;
    v186.origin.y = a21;
    v186.size.width = a22;
    v186.size.height = a23;
    v56 = CGRectGetMaxX(v186) - a5;
    sub_10000CF78(&v183, v184);
    sub_100770A4C();
    sub_10076D23C();
    v187.origin.x = v56;
    v187.origin.y = v55;
    a7 = v172;
    v30 = v161;
    v187.size.width = a5;
    v187.size.height = v53;
    v29 = a22;
    v176 = CGRectGetMaxY(v187);
    sub_10000CD74(&v183);
    v57 = v170;
  }

  else
  {
    sub_10000CFBC(&v181, &unk_10094DA00, &qword_100783FA0);
    v188.origin.x = v160;
    v188.origin.y = v171;
    v188.size.width = v173;
    v188.size.height = v176;
    v58 = CGRectGetMaxY(v188);
    if (v58 <= a19)
    {
      v58 = a19;
    }

    v176 = v58;
    v57 = a20;
    v49 = v179;
  }

  v178 = a21;
  v175 = v29;
  v189.origin.x = v57;
  v189.origin.y = a21;
  v189.size.width = v29;
  v189.size.height = a23;
  MaxX = CGRectGetMaxX(v189);
  v190.origin.x = a7;
  v60 = v177;
  v190.origin.y = v177;
  v190.size.width = v30;
  v61 = v174;
  v190.size.height = v174;
  v179 = MaxX - CGRectGetWidth(v190);
  v171 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout.Metrics(0));
  v62 = (a12 + *(*&v171 + 72));
  v63 = v62[3];
  sub_10000CF78(v62, v63);
  sub_1000FF02C(v63);
  sub_10076D40C();
  v65 = v64;
  v66 = *(v32 + 8);
  v158 = v34;
  v160 = *&v31;
  *&v159 = v32 + 8;
  v157 = v66;
  v66(v34, v31);
  v67 = v176 + v65;
  v191.origin.x = a7;
  v191.origin.y = v60;
  v191.size.width = v30;
  v191.size.height = v61;
  Width = CGRectGetWidth(v191);
  v192.origin.x = a7;
  v192.origin.y = v60;
  v69 = v30;
  v192.size.width = v30;
  v192.size.height = v61;
  Height = CGRectGetHeight(v192);
  v71 = (a12 + v45[11]);
  v72 = v49;
  sub_10000CF78(v71, v71[3]);
  v180 = a23;
  v176 = Height;
  sub_100770A4C();
  sub_10076D23C();
  sub_10000CF78(v71, v71[3]);
  v73 = sub_10076D24C();
  sub_10000CF78(v71, v71[3]);
  if ((sub_10076D24C() & 1) == 0)
  {
    v172 = v179;
    v177 = v67;
    v69 = Width;
    v174 = v176;
  }

  v74 = (a12 + v45[12]);
  sub_10000CF78(v74, v74[3]);
  v75 = sub_10076D24C();
  v173 = v67;
  if (v75)
  {
    sub_10000CF78(v74, v74[3]);
    sub_10076D23C();
    v76 = *&v171;
    v77 = v175;
    v78 = v180;
    v79 = v178;
    v80 = v57;
  }

  else
  {
    v76 = *&v171;
    v156 = Width;
    if (v73)
    {
      v81 = v57;
      sub_100016E2C(a12 + v46, &v183, &unk_10094DA00, &qword_100783FA0);
      v82 = v184;
      sub_10000CFBC(&v183, &unk_10094DA00, &qword_100783FA0);
      v161 = v69;
      v83 = v172;
      if (v82)
      {
        v84 = (a12 + v76[20]);
        v85 = v84[3];
        sub_10000CF78(v84, v85);
        v86 = v158;
        sub_1000FF02C(v85);
        sub_10076D40C();
        v155 = v87;
        v157(v86, *&v160);
      }

      else
      {
        v155 = 0.0;
      }

      v99 = v177;
      sub_100016E2C(a12 + v46, &v183, &unk_10094DA00, &qword_100783FA0);
      if (v184)
      {
        sub_10000CF78(&v183, v184);
        v100 = v175;
        v101 = v180;
        sub_10076D2BC();
        v153 = v102;
        sub_10000CD74(&v183);
      }

      else
      {
        sub_10000CFBC(&v183, &unk_10094DA00, &qword_100783FA0);
        v153 = 0;
        v101 = v180;
        v100 = v175;
      }

      v195.origin.x = v81;
      v195.origin.y = v178;
      v195.size.width = v100;
      v195.size.height = v101;
      CGRectGetWidth(v195);
      v196.origin.x = v83;
      v196.origin.y = v99;
      v177 = v99;
      v103 = v161;
      v196.size.width = v161;
      v104 = v174;
      v196.size.height = v174;
      CGRectGetWidth(v196);
      v105 = v76[19];
      v154 = a12;
      v106 = a12 + v105;
      v152 = a12 + v105;
      v107 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
      v108 = (v106 + *(v107 + 28));
      v109 = v108[3];
      v151 = v108;
      sub_10000CF78(v108, v109);
      v110 = v158;
      sub_1000FF02C(v109);
      sub_10076D40C();
      v111 = v83;
      v112 = v160;
      v113 = v157;
      v157(v110, *&v160);
      v114 = (v152 + *(v107 + 24));
      v115 = v114[3];
      sub_10000CF78(v114, v115);
      sub_1000FF02C(v115);
      sub_10076D40C();
      v113(v110, *&v112);
      v116 = v103;
      sub_10000CF78(v74, v74[3]);
      v78 = v101;
      v117 = v177;
      sub_10076D2AC();
      v119 = v118;
      v197.origin.x = v111;
      v197.origin.y = v117;
      v197.size.width = v116;
      v197.size.height = v104;
      CGRectGetMidY(v197);
      sub_10000CF78(v71, v71[3]);
      v120 = sub_10076D24C();
      v155 = v119;
      if ((v120 & 1) != 0 || (v198.origin.x = v111, v198.origin.y = v117, v198.size.width = v116, v198.size.height = v104, CGRectGetHeight(v198) < v119))
      {
        v199.size.width = v116;
        v121 = v111;
        v199.origin.x = v111;
        v199.origin.y = v117;
        v199.size.height = v104;
        CGRectGetMinY(v199);
      }

      else
      {
        v121 = v111;
      }

      sub_10000CF78(v71, v71[3]);
      v122 = sub_10076D24C();
      v76 = *&v171;
      a12 = v154;
      v123 = v121;
      v124 = v117;
      v125 = v161;
      v126 = v174;
      if (v122)
      {
        CGRectGetMinX(*&v123);
      }

      else
      {
        CGRectGetMaxX(*&v123);
        v127 = v151[3];
        sub_10000CF78(v151, v127);
        v128 = v158;
        sub_1000FF02C(v127);
        sub_10076D40C();
        v157(v128, *&v160);
      }

      v79 = v178;
      v80 = v170;
    }

    else
    {
      v88 = v172;
      v89 = v69;
      sub_10000CF78(v74, v74[3]);
      sub_10076D2AC();
      v91 = v90;
      sub_10000CF78((a12 + v76[19]), *(a12 + v76[19] + 24));
      v155 = v91;
      sub_10076D42C();
      v193.origin.x = v88;
      v92 = v177;
      v193.origin.y = v177;
      v193.size.width = v89;
      v93 = v174;
      v193.size.height = v174;
      CGRectGetMinX(v193);
      v194.origin.x = v88;
      v194.origin.y = v92;
      v194.size.width = v89;
      v194.size.height = v93;
      CGRectGetWidth(v194);
      sub_10000CF78(v71, v71[3]);
      v94 = sub_10076D24C();
      v95 = v88;
      v96 = v92;
      v97 = v89;
      v98 = v93;
      if (v94)
      {
        CGRectGetMinY(*&v95);
      }

      else
      {
        CGRectGetMaxY(*&v95);
      }

      v79 = v178;
      v80 = v170;
      v78 = v180;
    }

    sub_10000CF78(v74, v74[3]);
    v77 = v175;
    sub_100770A4C();
    sub_10076D23C();
    Width = v156;
  }

  v200.origin.x = v80;
  v200.origin.y = v79;
  v200.size.width = v77;
  v200.size.height = v78;
  v129 = CGRectGetWidth(v200);
  v201.origin.x = v179;
  v201.origin.y = v173;
  v201.size.width = Width;
  v201.size.height = v176;
  v130 = v77;
  v131 = v129 - CGRectGetWidth(v201);
  *&v181 = v72;
  sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10075FDCC();
  if (v131 - v183 > 0.0)
  {
    v132 = v131 - v183;
  }

  else
  {
    v132 = 0.0;
  }

  v202.origin.x = v80;
  v202.origin.y = v79;
  v202.size.width = v77;
  v133 = v180;
  v202.size.height = v180;
  CGRectGetHeight(v202);
  v134 = v163;
  v135 = v168;
  sub_10076D2AC();
  v136 = Width;
  v138 = v137;
  v140 = v139;
  v177 = v141;
  v203.origin.x = v80;
  v203.origin.y = v79;
  v203.size.width = v130;
  v203.size.height = v133;
  MinX = CGRectGetMinX(v203);
  v204.origin.x = v179;
  v204.origin.y = v173;
  v204.size.width = v136;
  v204.size.height = v176;
  MinY = CGRectGetMinY(v204);
  if (v132 < v138)
  {
    v138 = v132;
  }

  v205.origin.x = MinX;
  v205.origin.y = MinY;
  v205.size.width = v138;
  v205.size.height = v140;
  v179 = CGRectGetMaxY(v205) - v177;
  sub_100770A4C();
  sub_10076D23C();
  v206.origin.x = v80;
  v144 = v178;
  v206.origin.y = v178;
  v206.size.width = v130;
  v145 = v180;
  v206.size.height = v180;
  CGRectGetHeight(v206);
  v146 = v165;
  v147 = v169;
  sub_10076D2AC();
  v176 = v148;
  v207.origin.x = v80;
  v207.origin.y = v144;
  v207.size.width = v130;
  v207.size.height = v145;
  v177 = CGRectGetMinX(v207);
  sub_10000CF78((a12 + v76[21]), *(a12 + v76[21] + 24));
  sub_10076D42C();
  sub_100770A4C();
  sub_10076D23C();
  (*(v164 + 8))(v134, v135);
  return (*(v166 + 8))(v146, v147);
}

double sub_1002D2C70(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_10077164C();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  v25 = sub_1007706FC();

  v16 = *(a2 + 56);
  sub_10000CF78((a2 + 32), v16);
  sub_1000FF02C(v16);
  sub_10076D40C();
  v17 = *(v11 + 8);
  v17(v14, v10);
  v18 = *(a2 + 96);
  sub_10000CF78((a2 + 72), v18);
  sub_1000FF02C(v18);
  sub_10076D40C();
  v17(v14, v10);
  v19 = a4 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v20 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v26 = a1;
  sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10075FDCC();
  v24 = a3;
  sub_1002D2F68(a1, a2, a3, v19 - v27, a5);
  v21 = (a2 + *(v20 + 96));
  v22 = v21[3];
  sub_10000CF78(v21, v22);
  sub_1000FF02C(v22);
  sub_10076D40C();
  v17(v14, v10);
  if (v25 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_1002D350C(a1, a2, v24, a4, a5);
  }

  return a4;
}

double sub_1002D2F68(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_10077164C();
  v56 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_1007706FC();

  v57 = type metadata accessor for ProductLockupLayout(0);
  v16 = v57[10];
  sub_100016E2C(a2 + v16, v58, &unk_10094DA00, &qword_100783FA0);
  if (v59)
  {
    sub_10000CF78(v58, v59);
    sub_10076D2BC();
    v18 = v17;
    sub_10000CD74(v58);
  }

  else
  {
    sub_10000CFBC(v58, &unk_10094DA00, &qword_100783FA0);
    v18 = 0.0;
  }

  v19 = sub_1002D4474(a1, a2, a4, a5);
  sub_100016E2C(a2 + v16, v58, &unk_10094DA00, &qword_100783FA0);
  v20 = v59;
  sub_10000CFBC(v58, &unk_10094DA00, &qword_100783FA0);
  if (v20)
  {
    v21 = v57;
    if ((v15 & 1) == 0)
    {
      if (*(a2 + v57[15]))
      {
        v22 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92));
        v23 = v22[3];
        sub_10000CF78(v22, v23);
        sub_1000FF02C(v23);
        sub_10076D40C();
        v25 = v24;
        (*(v56 + 8))(v13, v10);
        v19 = v19 + v18 + v25;
      }

LABEL_9:
      if (*(a2 + v21[15]))
      {
        return v19;
      }
    }
  }

  else
  {
    v21 = v57;
    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v54 = *(a2 + 120);
  v26 = (a2 + v21[11]);
  v27 = v26[3];
  v53 = v26;
  sub_10000CF78(v26, v27);
  sub_10076D2BC();
  v29 = v28;
  sub_100016E2C(a2 + v16, v58, &unk_10094DA00, &qword_100783FA0);
  v30 = v59;
  sub_10000CFBC(v58, &unk_10094DA00, &qword_100783FA0);
  v55 = a3;
  if (v30)
  {
    v31 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80));
    v32 = v31[3];
    sub_10000CF78(v31, v32);
    sub_1000FF02C(v32);
    sub_10076D40C();
    v33 = a1;
    v34 = v56;
    (*(v56 + 8))(v13, v10);
    v35 = v10;
  }

  else
  {
    v35 = v10;
    v33 = a1;
    v34 = v56;
  }

  v52 = a2;
  v56 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v36 = a2 + *(v56 + 76);
  v37 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v38 = (v36 + *(v37 + 28));
  v39 = v38[3];
  sub_10000CF78(v38, v39);
  sub_1000FF02C(v39);
  sub_10076D40C();
  v40 = *(v34 + 8);
  v40(v13, v35);
  v41 = v40;
  v42 = (v36 + *(v37 + 24));
  v43 = v42[3];
  sub_10000CF78(v42, v43);
  sub_1000FF02C(v43);
  sub_10076D40C();
  v40(v13, v35);
  v44 = v52;
  sub_10000CF78((v52 + v57[12]), *(v52 + v57[12] + 24));
  sub_10076D2BC();
  v46 = v45;
  sub_10000CF78(v53, v53[3]);
  if (sub_10076D24C())
  {
    v29 = v46;
  }

  v47 = (v44 + *(v56 + 72));
  v48 = v47[3];
  sub_10000CF78(v47, v48);
  sub_1000FF02C(v48);
  sub_10076D40C();
  v50 = v49;
  v41(v13, v35);
  if (v19 < v54 - v50 - v29)
  {
    v19 = v54 - v50 - v29;
  }

  return sub_1002D350C(v33, v44, v55, a4, a5) + v19;
}
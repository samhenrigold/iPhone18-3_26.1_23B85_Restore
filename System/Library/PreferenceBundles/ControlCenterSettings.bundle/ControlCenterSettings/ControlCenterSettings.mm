void sub_1858()
{
  v1 = OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_packageLayer;
  [*&v0[OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_packageLayer] removeFromSuperlayer];
  v2 = *&v0[OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_package];
  if (v2)
  {
    v10 = v2;
    v3 = [v10 rootLayer];
    if (v3)
    {
      v4 = v3;
      [v3 setGeometryFlipped:{objc_msgSend(v10, "isGeometryFlipped")}];
      [v4 setContentsGravity:kCAGravityResizeAspect];
      [v4 setAnchorPoint:{0.5, 0.0}];
      [v4 setMasksToBounds:1];
      [v4 setFillMode:kCAFillModeBackwards];
      v5 = *&v0[v1];
      *&v0[v1] = v4;
      v6 = v4;

      v7 = [v0 layer];
      [v7 setShouldRasterize:1];

      v8 = [v0 layer];
      [v8 addSublayer:v6];

      [v0 invalidateIntrinsicContentSize];
      v9 = v6;
    }

    else
    {
      v9 = v10;
    }
  }
}

id sub_1A10(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_package] = 0;
  v4[OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_animating] = 0;
  *&v4[OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_packageLayer] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for AnimatingPackageView();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  [v9 setUserInteractionEnabled:0];
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor:v10];

  sub_1EB8();
  sub_2D4C(&qword_14778, &qword_C290);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_C220;
  *(v11 + 32) = sub_B48C();
  *(v11 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_BB2C();

  swift_unknownObjectRelease();

  return v9;
}

uint64_t sub_1B94(_BYTE *a1)
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1[OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_animating];
  a1[OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_animating] = 0;
  v3 = [a1 layer];
  [v3 convertTime:0 fromLayer:CACurrentMediaTime()];
  v5 = v4;

  v6 = [a1 layer];
  [v6 setSpeed:0.0];

  v7 = [a1 layer];
  [v7 setTimeOffset:v5];

  sub_1EB8();
  [a1 setNeedsDisplay];
  if (v2 == 1)
  {
    sub_22AC();
  }
}

uint64_t sub_1EB8()
{
  v1 = v0;
  v2 = sub_2D4C(&qword_14768, &qword_C288);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-v3];
  v5 = sub_B3CC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v18[-v10];
  sub_26B0(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_2DB8(v4);
  }

  (*(v6 + 32))(v11, v4, v5);
  sub_2E20();
  (*(v6 + 16))(v9, v11, v5);
  v13 = sub_BA3C();
  v15 = sub_20E4(v9, v13, v14, 0);
  v16 = *(v0 + OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_package);
  *(v1 + OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_package) = v15;
  v17 = v15;

  sub_1858();
  return (*(v6 + 8))(v11, v5);
}

id sub_20E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_B39C(__stack_chk_guard);
  v7 = v6;
  v8 = sub_BA2C();

  if (a4)
  {
    v9.super.isa = sub_B9EC().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v18 = 0;
  v10 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v7 type:v8 options:v9.super.isa error:&v18];

  v11 = v18;
  if (v10)
  {
    v12 = sub_B3CC();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a1, v12);
  }

  else
  {
    v15 = v18;
    sub_B35C();

    swift_willThrow();
    v16 = sub_B3CC();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  return v10;
}

void sub_22AC()
{
  v0[OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_animating] = 1;
  v1 = [v0 layer];
  [v1 timeOffset];
  v3 = v2;

  v4 = [v0 layer];
  LODWORD(v5) = 1.0;
  [v4 setSpeed:v5];

  v6 = [v0 layer];
  [v6 setTimeOffset:0.0];

  v7 = [v0 layer];
  [v7 setBeginTime:0.0];

  v8 = [v0 layer];
  [v8 convertTime:0 fromLayer:CACurrentMediaTime()];
  v10 = v9;

  v11 = [v0 layer];
  [v11 setBeginTime:v10 - v3];
}

id sub_26B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  result = [objc_opt_self() standardDefaults];
  if (result)
  {
    v5 = result;
    v6 = [result presentationGesture];

    if (v6 == &dword_0 + 1)
    {
      v7 = [v2 traitCollection];
      v8 = [v7 userInterfaceIdiom];

      if (v8 == &dword_0 + 1)
      {
        v9._countAndFlagsBits = 1684099117;
        v9._object = 0xE400000000000000;
      }

      else
      {
        v9._countAndFlagsBits = 0x656E6F68502DLL;
        v9._object = 0xE600000000000000;
      }
    }

    else
    {
      v9._object = 0x800000000000D0F0;
      v9._countAndFlagsBits = 0xD000000000000010;
    }

    sub_BA5C(v9);
    v10 = [v2 traitCollection];
    v11 = [v10 userInterfaceStyle];

    if (v11 == &dword_0 + 2)
    {
      v12._countAndFlagsBits = 0x6B7261442DLL;
      v12._object = 0xE500000000000000;
    }

    else
    {
      v12._countAndFlagsBits = 0x746867694C2DLL;
      v12._object = 0xE600000000000000;
    }

    sub_BA5C(v12);
    if ([v2 effectiveUserInterfaceLayoutDirection])
    {
      v13._countAndFlagsBits = 1280594477;
    }

    else
    {
      v13._countAndFlagsBits = 1381256237;
    }

    v13._object = 0xE400000000000000;
    sub_BA5C(v13);
    if (qword_146F8 != -1)
    {
      swift_once();
    }

    v14 = qword_15330;
    v15 = sub_BA2C();

    v16 = sub_BA2C();
    v17 = [v14 URLForResource:v15 withExtension:v16];

    if (v17)
    {
      sub_B3AC();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = sub_B3CC();
    v20 = *(*(v19 - 8) + 56);

    return v20(a1, v18, 1, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2968()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatingPackageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_29E8(uint64_t *a1)
{
  if (sub_AE34(2, 26, 0, 0))
  {
    sub_B69C();

    return sub_B56C();
  }

  else
  {
    sub_B59C();
    swift_getWitnessTable();
    sub_B68C();
    sub_B56C();
    sub_BB3C();
    swift_getWitnessTable();
    sub_B59C();
    swift_getWitnessTable();
    sub_B68C();
    return sub_B56C();
  }
}

uint64_t sub_2B4C(uint64_t *a1)
{
  if (sub_AE34(2, 26, 0, 0))
  {
    sub_B69C();
    sub_B56C();
  }

  else
  {
    sub_B59C();
    swift_getWitnessTable();
    sub_B68C();
    sub_B56C();
    sub_BB3C();
    swift_getWitnessTable();
    sub_B59C();
    swift_getWitnessTable();
    sub_B68C();
    sub_B56C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2D4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2DB8(uint64_t a1)
{
  v2 = sub_2D4C(&qword_14768, &qword_C288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2E20()
{
  result = qword_14770;
  if (!qword_14770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_14770);
  }

  return result;
}

Swift::Void __swiftcall ControlCenterSettingsViewController.viewDidLoad()()
{
  v1 = v0;
  v17.super_class = ControlCenterSettingsViewController;
  objc_msgSendSuper2(&v17, "viewDidLoad");
  type metadata accessor for ControlCenterSettingsViewModel(0);
  *(swift_allocObject() + 16) = 512;
  sub_B43C();
  sub_B7FC();
  v2 = objc_allocWithZone(sub_2D4C(&qword_14780, &qword_C298));
  v3 = sub_B5BC();
  if (qword_146F8 != -1)
  {
    swift_once();
  }

  v4 = qword_15330;
  v5 = sub_BA2C();
  v6 = [v4 localizedStringForKey:v5 value:0 table:0];

  if (!v6)
  {
    sub_BA3C();
    v6 = sub_BA2C();
  }

  [v1 setTitle:v6];

  v7 = [v3 view];
  if (!v7)
  {
    v8 = v3;
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 addSubview:v8];

    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      [v11 bounds];
      v14 = v13;
      v16 = v15;

      [v8 setFrame:{0.0, 0.0, v14, v16}];
      [v8 setAutoresizingMask:18];
      [v1 addChildViewController:v3];
      [v3 didMoveToParentViewController:v1];

LABEL_10:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __swiftcall ControlCenterSettingsViewController.init(nibName:bundle:)(ControlCenterSettingsViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_BA2C();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id ControlCenterSettingsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_BA2C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = ControlCenterSettingsViewController;
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id ControlCenterSettingsViewController.init(coder:)(void *a1)
{
  v4.super_class = ControlCenterSettingsViewController;
  v2 = objc_msgSendSuper2(&v4, "initWithCoder:", a1);

  if (v2)
  {
  }

  return v2;
}

unint64_t type metadata accessor for ControlCenterSettingsViewController()
{
  result = qword_147B0;
  if (!qword_147B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_147B0);
  }

  return result;
}

uint64_t sub_35A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = "CCUIAssociatedBundle";
  }

  else
  {
    v4 = "ACCESS_WITHIN_APP";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (*a2)
  {
    v7 = "ACCESS_WITHIN_APP";
  }

  else
  {
    v7 = "CCUIAssociatedBundle";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_BB7C();
  }

  return v9 & 1;
}

Swift::Int sub_3650()
{
  sub_BB8C();
  sub_BA4C();

  return sub_BB9C();
}

uint64_t sub_36D0(uint64_t a1)
{
  sub_BA4C();
}

Swift::Int sub_373C(uint64_t a1)
{
  sub_BB8C();
  sub_BA4C();

  return sub_BB9C();
}

uint64_t sub_37B8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10DA8;
  v8._object = v3;
  v5 = sub_BB6C(v4, v8);

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

void sub_3818(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1)
  {
    v3 = "ACCESS_WITHIN_APP";
  }

  else
  {
    v3 = "CCUIAssociatedBundle";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_3868()
{
  swift_getKeyPath();
  sub_4FB4(&qword_14898, type metadata accessor for ControlCenterSettingsViewModel, &unk_C400);
  sub_B40C();

  return *(v0 + 16);
}

uint64_t sub_3908@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4FB4(&qword_14898, type metadata accessor for ControlCenterSettingsViewModel, &unk_C400);
  sub_B40C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_39D8(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4FB4(&qword_14898, type metadata accessor for ControlCenterSettingsViewModel, &unk_C400);
    sub_B3FC();
  }

  return result;
}

uint64_t sub_3AE8()
{
  swift_getKeyPath();
  sub_4FB4(&qword_14898, type metadata accessor for ControlCenterSettingsViewModel, &unk_C400);
  sub_B40C();

  return *(v0 + 17);
}

uint64_t sub_3B88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4FB4(&qword_14898, type metadata accessor for ControlCenterSettingsViewModel, &unk_C400);
  sub_B40C();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_3C58(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 17);
  if (v3 == 2)
  {
    if (result == 2)
    {
      goto LABEL_22;
    }

LABEL_5:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4FB4(&qword_14898, type metadata accessor for ControlCenterSettingsViewModel, &unk_C400);
    sub_B3FC();
  }

  if (result == 2)
  {
    goto LABEL_5;
  }

  if (v3)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3)
  {
    v6 = "ACCESS_WITHIN_APP";
  }

  else
  {
    v6 = "CCUIAssociatedBundle";
  }

  v7 = v6 | 0x8000000000000000;
  if (v2)
  {
    v8 = 0xD000000000000014;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (v2)
  {
    v9 = "ACCESS_WITHIN_APP";
  }

  else
  {
    v9 = "CCUIAssociatedBundle";
  }

  if (v5 == v8 && v7 == (v9 | 0x8000000000000000))
  {
  }

  else
  {
    v10 = sub_BB7C();

    if ((v10 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_22:
  *(v1 + 17) = v2;
  return result;
}

id sub_3E14()
{
  swift_getKeyPath();
  sub_4FB4(&qword_14898, type metadata accessor for ControlCenterSettingsViewModel, &unk_C400);
  sub_B40C();

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result effectiveBoolValueForSetting:MCFeatureControlCenterInAppsAllowed];

    return (v2 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_3F00(char a1)
{
  v2 = [objc_opt_self() sharedConnection];
  if (v2)
  {
    v3 = v2;
    [v2 setBoolValue:a1 & 1 forSetting:MCFeatureControlCenterInAppsAllowed];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_3F7C(char a1, uint64_t a2)
{
  v4 = sub_B47C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  if (a1)
  {
    sub_B46C();
    v11 = sub_B45C();
    v12 = sub_BAFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Successfully reset Control Center layout to default.", v13, 2u);
      v8 = v10;
LABEL_10:

      goto LABEL_11;
    }

    v8 = v10;
  }

  else
  {
    sub_B46C();
    swift_errorRetain();
    v11 = sub_B45C();
    v14 = sub_BAEC();

    if (os_log_type_enabled(v11, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v15 + 4) = v17;
      *v16 = v18;
      _os_log_impl(&dword_0, v11, v14, "Failed to reset Control Center layout to default with %@.", v15, 0xCu);
      sub_50D4(v16);

      goto LABEL_10;
    }
  }

LABEL_11:

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_41C8(uint64_t a1, char a2)
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_5080();
  sub_B57C();
}

uint64_t sub_42A0(uint64_t a1, char a2)
{
  v3 = sub_B92C();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_B94C();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_B96C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_BA8C();
  v25 = sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_4ED4();
  v23 = sub_BB1C();
  sub_B95C();
  sub_B97C();
  v24 = *(v9 + 8);
  v24(v12, v8);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a2 & 1;
  aBlock[4] = sub_4F90;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4A64;
  aBlock[3] = &unk_10F00;
  v17 = _Block_copy(aBlock);

  sub_B93C();
  v31 = &_swiftEmptyArrayStorage;
  sub_4FB4(&qword_148A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2D4C(&qword_148B0, &qword_C448);
  sub_4FFC(&qword_148B8, &qword_148B0, &qword_C448, &protocol conformance descriptor for [A]);
  v18 = v28;
  v19 = v30;
  sub_BB4C();
  v20 = v23;
  sub_BB0C();
  _Block_release(v17);

  (*(v29 + 8))(v18, v19);
  (*(v26 + 8))(v7, v27);
  v24(v14, v8);
}

uint64_t sub_470C(uint64_t a1, char a2)
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 17) == 2)
    {
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_4FB4(&qword_14898, type metadata accessor for ControlCenterSettingsViewModel, &unk_C400);
      sub_B3FC();
    }
  }

  if (a2)
  {
  }

  else
  {
    v5 = sub_BB7C();

    if ((v5 & 1) == 0)
    {
    }
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (!v6)
  {
  }

  if (*(v6 + 16) == 1)
  {
    *(v6 + 16) = 1;
  }

  else
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    sub_4FB4(&qword_14898, type metadata accessor for ControlCenterSettingsViewModel, &unk_C400);
    sub_B3FC();
  }
}

uint64_t sub_4A64(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_4AA8()
{
  v1 = OBJC_IVAR____TtC21ControlCenterSettings30ControlCenterSettingsViewModel___observationRegistrar;
  v2 = sub_B44C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ControlCenterSettingsViewModel(uint64_t a1)
{
  result = qword_147E8;
  if (!qword_147E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4B98(uint64_t a1)
{
  result = sub_B44C();
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

uint64_t getEnumTagSinglePayload for ControlCenterSettingsViewModel.CellIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ControlCenterSettingsViewModel.CellIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_4DF8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_4E44()
{
  result = qword_14890;
  if (!qword_14890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14890);
  }

  return result;
}

unint64_t sub_4ED4()
{
  result = qword_148A0;
  if (!qword_148A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_148A0);
  }

  return result;
}

uint64_t sub_4F20()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4F58()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_4F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4FFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_4DF8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_5080()
{
  result = qword_148C0;
  if (!qword_148C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_148C0);
  }

  return result;
}

uint64_t sub_50D4(uint64_t a1)
{
  v2 = sub_2D4C(&qword_148C8, &qword_C478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_51AC()
{
  result = qword_14968;
  if (!qword_14968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14968);
  }

  return result;
}

uint64_t sub_521C@<X0>(void *a2@<X8>)
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ControlCenterSettingsViewModel(0);

  sub_B7FC();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_52E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_B55C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_B3CC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_2D4C(&qword_14988, &qword_C580);
  v3[11] = swift_task_alloc();
  v6 = sub_B34C();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  sub_BA8C();
  v3[15] = sub_BA7C();
  v8 = sub_BA6C();

  return _swift_task_switch(sub_54D0, v8, v7);
}

uint64_t sub_54D0()
{
  v1 = v0 + 13;
  v2 = v0[13];
  v4 = v0 + 12;
  v3 = v0[12];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];

  sub_B9BC();
  sub_B32C();
  (*(v8 + 8))(v6, v7);
  if ((*(v2 + 48))(v5, 1, v3) == 1)
  {
    sub_5B04(v0[11]);
LABEL_8:
    v9 = v0 + 7;
    sub_B9AC();
    sub_B9CC();
    v1 = v0 + 6;
    v4 = v0 + 5;
    goto LABEL_11;
  }

  v9 = v0 + 14;
  (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
  v10 = sub_B33C();
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v10;
  v13 = v11;
  v14._rawValue = &off_10DA8;
  v23._countAndFlagsBits = v12;
  v23._object = v13;
  v15 = sub_BB6C(v14, v23);

  if (!v15)
  {
    v16 = 0;
    goto LABEL_10;
  }

  if (v15 != 1)
  {
LABEL_7:
    (*(*v1 + 8))(*v9, *v4);
    goto LABEL_8;
  }

  v16 = 1;
LABEL_10:
  v18 = v0[6];
  v17 = v0[7];
  v19 = v0[5];
  sub_3C58(v16);
  sub_B9AC();
  sub_B9CC();
  (*(v18 + 8))(v17, v19);
LABEL_11:
  (*(*v1 + 8))(*v9, *v4);

  v20 = v0[1];

  return v20();
}

uint64_t sub_5708()
{
  v0 = sub_2D4C(&qword_14970, &qword_C568);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_58AC();

  sub_B9DC();
  sub_5AA0();

  sub_B99C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_5850@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ControlCenterSettingsViewModel(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 512;
  result = sub_B43C();
  *a1 = v2;
  return result;
}

unint64_t sub_58AC()
{
  result = qword_14978;
  if (!qword_14978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14978);
  }

  return result;
}

uint64_t sub_5900(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_59AC;

  return sub_52E8(a1, a2, v2);
}

uint64_t sub_59AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_5AA0()
{
  result = qword_14980;
  if (!qword_14980)
  {
    sub_4DF8(&qword_14970, &qword_C568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14980);
  }

  return result;
}

uint64_t sub_5B04(uint64_t a1)
{
  v2 = sub_2D4C(&qword_14988, &qword_C580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5B7C()
{
  sub_4DF8(&qword_14970, &qword_C568);
  sub_5AA0();
  return swift_getOpaqueTypeConformance2();
}

id sub_5BFC()
{
  v0 = objc_allocWithZone(type metadata accessor for AnimatingPackageView());

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

uint64_t sub_5CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5E20();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_5D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5E20();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_5DA0(uint64_t a1)
{
  sub_5E20();
  sub_B65C();
  __break(1u);
}

unint64_t sub_5DCC()
{
  result = qword_14990;
  if (!qword_14990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14990);
  }

  return result;
}

unint64_t sub_5E20()
{
  result = qword_14998;
  if (!qword_14998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14998);
  }

  return result;
}

__n128 sub_5E74(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_5E88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_5ED0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v10 = sub_2D4C(&qword_149A0, &qword_C748);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v14 = sub_2D4C(&qword_14718, &unk_C750);
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  v15 = &v13[*(sub_2D4C(&qword_14720, &unk_C240) + 36)];
  *v15 = HIBYTE(a4) & 1;
  v15[1] = 1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  sub_2D4C(&qword_149A8, &qword_C760);
  sub_B8BC();
  if (v31 == 2)
  {
    goto LABEL_2;
  }

  v18 = a4 & 0x100;
  if (v31)
  {
    v19 = 0xD000000000000014;
  }

  else
  {
    v19 = 0xD000000000000011;
  }

  if (v31)
  {
    v20 = "ACCESS_WITHIN_APP";
  }

  else
  {
    v20 = "CCUIAssociatedBundle";
  }

  v21 = v20 | 0x8000000000000000;
  if (v18)
  {
    v22 = 0xD000000000000014;
  }

  else
  {
    v22 = 0xD000000000000011;
  }

  if (v18)
  {
    v23 = "ACCESS_WITHIN_APP";
  }

  else
  {
    v23 = "CCUIAssociatedBundle";
  }

  if (v19 == v22 && v21 == (v23 | 0x8000000000000000))
  {

LABEL_19:
    v17 = sub_B7BC();
    goto LABEL_20;
  }

  v24 = sub_BB7C();

  if (v24)
  {
    goto LABEL_19;
  }

LABEL_2:
  v16 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v17 = sub_B7EC();
LABEL_20:
  v25 = v17;
  v26 = sub_B90C();
  v33 = a2;
  v34 = a3;
  v35 = v30;
  sub_B8BC();
  v31 = v25;
  v32 = v26;
  sub_2D4C(&qword_149B0, &qword_C768);
  sub_6268();
  v27 = sub_B8AC();
  (*(v11 + 32))(a5, v13, v10);
  result = sub_2D4C(&qword_149D0, &qword_C778);
  *(a5 + *(result + 36)) = v27;
  return result;
}

uint64_t sub_6248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_5F3C(a1, *v2, *(v2 + 8), v3 | *(v2 + 16), a2);
}

unint64_t sub_6268()
{
  result = qword_149B8;
  if (!qword_149B8)
  {
    sub_4DF8(&qword_149B0, &qword_C768);
    sub_4FFC(&qword_149C0, &qword_149C8, &qword_C770, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_149B8);
  }

  return result;
}

unint64_t sub_6324()
{
  result = qword_149D8;
  if (!qword_149D8)
  {
    sub_4DF8(&qword_149D0, &qword_C778);
    sub_4DF8(&qword_14718, &unk_C750);
    sub_4FFC(&qword_149E0, &qword_14718, &unk_C750, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_5080();
    swift_getOpaqueTypeConformance2();
    sub_4FFC(&qword_149E8, &qword_149F0, &unk_C780, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_149D8);
  }

  return result;
}

id sub_6460()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_15330 = result;
  return result;
}

unint64_t sub_64F0()
{
  result = qword_14A90;
  if (!qword_14A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14A90);
  }

  return result;
}

uint64_t sub_6544@<X0>(uint64_t a1@<X8>)
{
  sub_B54C();
  sub_7204(&qword_14AA8, &protocol conformance descriptor for LayoutSubviews);
  sub_BA9C();
  sub_BACC();
  if (v9[4] == v9[0])
  {
    v2 = sub_B52C();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_BADC();
    v6 = v5;
    v7 = sub_B52C();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t (*sub_67B0(uint64_t *a1))()
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
  *(v2 + 32) = sub_B49C();
  return sub_6838;
}

void sub_6838(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_6888()
{
  result = qword_14A98;
  if (!qword_14A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14A98);
  }

  return result;
}

double sub_68DC(uint64_t a1, int a2)
{
  v25 = a2;
  v3 = sub_2D4C(&qword_14AA0, &unk_C880);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_B52C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_B54C();
  sub_7204(&qword_14AA8, &protocol conformance descriptor for LayoutSubviews);
  sub_BA9C();
  sub_BACC();
  v16 = 0.0;
  if (sub_BABC() == 2)
  {
    sub_6544(v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_719C(v5);
    }

    else
    {
      v24 = a1;
      v17 = v5;
      v18 = *(v7 + 32);
      v18(v15, v17, v6);
      if (sub_BAAC())
      {
        (*(v7 + 8))(v15, v6);
      }

      else
      {
        sub_BACC();
        sub_7204(&qword_14AB0, &protocol conformance descriptor for LayoutSubviews);
        sub_B9FC();
        v19 = sub_BADC();
        (*(v7 + 16))(v10);
        v19(v26, 0);
        v18(v13, v10, v6);
        if (v25)
        {
          v20 = *(v7 + 8);
          v20(v13, v6);
          v20(v15, v6);
        }

        else
        {
          v16 = *&v24;
          LOBYTE(v26[0]) = 0;
          LOBYTE(v27) = 1;
          sub_B50C();
          LOBYTE(v26[0]) = 0;
          LOBYTE(v27) = 1;
          sub_B50C();
          v22 = *(v7 + 8);
          v22(v13, v6);
          v22(v15, v6);
        }
      }
    }
  }

  return v16;
}

uint64_t sub_6CCC(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  LODWORD(v33) = a2;
  v11 = sub_2D4C(&qword_14AA0, &unk_C880);
  __chkstk_darwin(v11 - 8);
  v13 = v32 - v12;
  v14 = sub_B52C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v32 - v20;
  __chkstk_darwin(v19);
  v23 = v32 - v22;
  sub_B54C();
  sub_7204(&qword_14AA8, &protocol conformance descriptor for LayoutSubviews);
  sub_BA9C();
  sub_BACC();
  result = sub_BABC();
  if (result == 2)
  {
    sub_6544(v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      return sub_719C(v13);
    }

    else
    {
      v32[1] = a1;
      v25 = v13;
      v26 = *(v15 + 32);
      v26(v23, v25, v14);
      if (sub_BAAC())
      {
        return (*(v15 + 8))(v23, v14);
      }

      else
      {
        sub_BACC();
        sub_7204(&qword_14AB0, &protocol conformance descriptor for LayoutSubviews);
        sub_B9FC();
        v27 = sub_BADC();
        (*(v15 + 16))(v18);
        v27(v34, 0);
        v26(v21, v18, v14);
        v36.origin.x = a3;
        v36.origin.y = a4;
        v36.size.width = a5;
        v36.size.height = a6;
        CGRectGetWidth(v36);
        LOBYTE(v34[0]) = 0;
        v28 = v33 & 1;
        LOBYTE(v35) = v33 & 1;
        sub_B50C();
        v32[0] = v29;
        v37.origin.x = a3;
        v37.origin.y = a4;
        v37.size.width = a5;
        v37.size.height = a6;
        CGRectGetWidth(v37);
        LOBYTE(v34[0]) = 0;
        LOBYTE(v35) = v28;
        sub_B50C();
        v33 = v30;
        v38.origin.x = a3;
        v38.origin.y = a4;
        v38.size.width = a5;
        v38.size.height = a6;
        CGRectGetMinX(v38);
        v39.origin.x = a3;
        v39.origin.y = a4;
        v39.size.width = a5;
        v39.size.height = a6;
        CGRectGetMinY(v39);
        sub_B91C();
        LOBYTE(v34[0]) = 0;
        LOBYTE(v35) = 0;
        sub_B51C();
        v40.origin.x = a3;
        v40.origin.y = a4;
        v40.size.width = a5;
        v40.size.height = a6;
        CGRectGetMaxX(v40);
        v41.origin.x = a3;
        v41.origin.y = a4;
        v41.size.width = a5;
        v41.size.height = a6;
        CGRectGetMinY(v41);
        sub_B91C();
        LOBYTE(v34[0]) = 0;
        LOBYTE(v35) = 0;
        sub_B51C();
        v31 = *(v15 + 8);
        v31(v21, v14);
        return (v31)(v23, v14);
      }
    }
  }

  return result;
}

uint64_t sub_719C(uint64_t a1)
{
  v2 = sub_2D4C(&qword_14AA0, &unk_C880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7204(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_B54C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_7248(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_7254(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_729C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_7304(BOOL *a2@<X8>)
{
  swift_getKeyPath();
  sub_A4D8();
  sub_B40C();

  v3 = [objc_opt_self() sharedConnection];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 effectiveBoolValueForSetting:MCFeatureControlCenterInAppsAllowed];

    *a2 = v5 == 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_73CC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_A4D8();
  sub_B3FC();
}

void sub_7468(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_74E0()
{
  v0 = sub_B98C();
  sub_A464(v0, qword_14AB8);
  v1 = sub_A3C8(v0, qword_14AB8);
  *v1 = 0xD000000000000025;
  v1[1] = 0x800000000000D400;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_7584()
{
  v0 = sub_B3EC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_B36C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_BA1C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_B37C();
  sub_A464(v6, qword_14AD0);
  sub_A3C8(v6, qword_14AD0);
  sub_BA0C();
  *v4 = type metadata accessor for ControlCenterSettingsViewController();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  sub_B3DC();
  return sub_B38C();
}

uint64_t sub_7774()
{
  v0 = sub_2D4C(&qword_14768, &qword_C288);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_B3CC();
  sub_A464(v3, qword_14AE8);
  v4 = sub_A3C8(v3, qword_14AE8);
  sub_B3BC();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_78A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = sub_2D4C(&qword_14B00, &qword_C930);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  v9 = sub_2D4C(&qword_14B08, &qword_C938);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v39 = sub_A3C0;
  v40 = v12;
  v13 = qword_14700;

  if (v13 != -1)
  {
    swift_once();
  }

  v35 = v11;
  v14 = sub_B98C();
  sub_A3C8(v14, qword_14AB8);
  if (qword_14708 != -1)
  {
    swift_once();
  }

  v15 = sub_B37C();
  sub_A3C8(v15, qword_14AD0);
  if (qword_14710 != -1)
  {
    swift_once();
  }

  v16 = sub_B3CC();
  sub_A3C8(v16, qword_14AE8);
  v17 = sub_2D4C(&qword_14B10, &unk_C940);
  v18 = sub_4FFC(&qword_14B18, &qword_14B10, &unk_C940, &protocol conformance descriptor for ScrollViewReader<A>);
  sub_B74C();

  v39 = v17;
  v40 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v35;
  sub_B73C();
  (*(v6 + 8))(v8, v5);
  if (qword_146F8 != -1)
  {
    swift_once();
  }

  v21 = qword_15330;
  v22 = sub_BA2C();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  v24 = sub_BA3C();
  v26 = v25;

  v39 = v24;
  v40 = v26;
  sub_A400();
  v27 = sub_B72C();
  v29 = v28;
  v31 = v30;
  v39 = v5;
  v40 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v32 = v37;
  sub_B78C();
  sub_A454(v27, v29, v31 & 1);

  return (*(v36 + 8))(v20, v32);
}

uint64_t sub_7D28@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a1;
  v26 = a4;
  v22 = sub_B58C();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v22);
  v20 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2D4C(&qword_14B28, &qword_C950);
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  sub_BA8C();
  v23 = sub_BA7C();
  sub_BA6C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  *(&v20 - 2) = a2;
  *(&v20 - 1) = a3;
  sub_2D4C(&qword_14B30, &qword_C958);
  sub_4FFC(&qword_14B38, &qword_14B30, &qword_C958, &protocol conformance descriptor for TupleView<A>);
  sub_B6DC();
  v28 = a2;
  v29 = a3;
  sub_2D4C(&qword_14B40, &qword_C960);
  sub_B80C();
  v12 = v27;
  swift_getKeyPath();
  v28 = v12;
  sub_A4D8();
  sub_B40C();

  v13 = v12[17];

  LOBYTE(v28) = v13;
  v14 = v20;
  v15 = v22;
  (*(v6 + 16))(v20, v21, v22);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v6 + 32))(v17 + v16, v14, v15);

  sub_2D4C(&qword_14B48, &qword_C990);
  sub_4FFC(&qword_14B50, &qword_14B28, &qword_C950, &protocol conformance descriptor for List<A, B>);
  sub_A680();
  v18 = v25;
  sub_B7AC();

  (*(v24 + 8))(v10, v18);
}

uint64_t sub_8110@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v70 = a3;
  v72 = sub_2D4C(&qword_14B60, &qword_C998);
  v71 = *(v72 - 8);
  v5 = __chkstk_darwin(v72);
  v79 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v78 = &v65 - v7;
  v73 = sub_2D4C(&qword_14B68, &qword_C9A0);
  v69 = *(v73 - 8);
  v8 = __chkstk_darwin(v73);
  v81 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v80 = &v65 - v10;
  v11 = sub_2D4C(&qword_14B70, &qword_C9A8);
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = __chkstk_darwin(v11);
  v75 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v65 - v14;
  sub_BA8C();
  v68 = sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2D4C(&qword_14B78, &qword_C9B0);
  sub_A768();
  v74 = v15;
  v16 = sub_B8DC();
  v66 = &v65;
  __chkstk_darwin(v16);
  *(&v65 - 2) = a1;
  *(&v65 - 1) = a2;
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v67 = a2;
  if (qword_146F8 != -1)
  {
    swift_once();
  }

  v17 = qword_15330;
  v18 = sub_BA2C();
  v19 = [v17 localizedStringForKey:v18 value:0 table:0];

  v20 = sub_BA3C();
  v22 = v21;

  v82 = v20;
  v83 = v22;
  v23 = sub_A400();
  v24 = sub_B72C();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v82 = v24;
  v83 = v26;
  LOBYTE(v84) = v28 & 1;
  v85 = v30;
  sub_2D4C(&qword_14BD8, &qword_C9E8);
  sub_A9C4();
  v31 = sub_B8EC();
  v66 = &v65;
  __chkstk_darwin(v31);
  v65 = &v65 - 4;
  v32 = v67;
  *(&v65 - 2) = a1;
  *(&v65 - 1) = v32;
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = sub_BA2C();
  v34 = [v17 localizedStringForKey:v33 value:0 table:0];

  v35 = sub_BA3C();
  v37 = v36;

  v82 = v35;
  v83 = v37;
  v38 = sub_B72C();
  v40 = v39;
  LOBYTE(v37) = v41;
  v43 = v42;

  v90 = v38;
  v91 = v40;
  v92 = v37 & 1;
  v93 = v43;
  sub_2D4C(&qword_14C00, &qword_C9F8);
  v44 = sub_4DF8(&qword_14C08, &qword_CA00);
  v45 = sub_4DF8(&qword_14C10, &qword_CA08);
  v46 = sub_AAD8();
  v47 = sub_4FFC(&qword_14C20, &qword_14C10, &qword_CA08, &protocol conformance descriptor for Button<A>);
  v82 = v44;
  v83 = &type metadata for String;
  v84 = v45;
  v85 = &type metadata for Text;
  v86 = v46;
  v87 = v23;
  v88 = v47;
  v89 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v48 = v78;
  sub_B8EC();
  v66 = *(v76 + 16);
  v49 = v75;
  v50 = v77;
  v66(v75, v74, v77);
  v51 = v69;
  v67 = *(v69 + 16);
  (v67)(v81, v80, v73);
  v52 = v71;
  v53 = *(v71 + 16);
  v54 = v48;
  v55 = v72;
  v53(v79, v54, v72);
  v56 = v70;
  v66(v70, v49, v50);
  v57 = sub_2D4C(&qword_14C28, &qword_CA10);
  v58 = v73;
  (v67)(&v56[*(v57 + 48)], v81, v73);
  v59 = v79;
  v53(&v56[*(v57 + 64)], v79, v55);
  v60 = *(v52 + 8);
  v60(v78, v55);
  v61 = *(v51 + 8);
  v61(v80, v58);
  v62 = v77;
  v63 = *(v76 + 8);
  v63(v74, v77);
  v60(v59, v55);
  v61(v81, v58);
  v63(v75, v62);
}

__n128 sub_89C0@<Q0>(uint64_t a1@<X8>)
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_8AD4(v12);
  v2 = [objc_opt_self() systemGray5Color];
  sub_B7EC();
  v3 = sub_B8AC();

  v4 = v12[3];
  *(a1 + 32) = v12[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v12[4];
  v5 = v13;
  v6 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v6;
  *(a1 + 80) = v5;
  *(a1 + 88) = v3;
  __asm { FMOV            V0.2D, #14.0 }

  *(a1 + 96) = result;
  *(a1 + 112) = result;
  *(a1 + 128) = 0;
  return result;
}

double sub_8AD4@<D0>(uint64_t a1@<X8>)
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_B5AC();
  LOBYTE(v18[0]) = 0;
  sub_8C88(v8);
  *&v7[7] = v8[0];
  *&v7[55] = v9;
  *&v7[39] = v8[2];
  *&v7[23] = v8[1];
  *&v10 = v2;
  *(&v10 + 1) = 0x4018000000000000;
  v11[0] = v18[0];
  *&v11[1] = *v7;
  *&v11[64] = *(&v9 + 1);
  *&v11[49] = *&v7[48];
  *&v11[33] = *&v7[32];
  *&v11[17] = *&v7[16];
  v12 = v10;
  v13 = *v11;
  v15 = *&v11[32];
  v16 = *&v11[48];
  v14 = *&v11[16];
  v17 = *&v11[64];
  v18[0] = v2;
  v18[1] = 0x4018000000000000;
  v19 = v11[0];
  v20 = *v7;
  *&v23[15] = *(&v9 + 1);
  *v23 = *&v7[48];
  v22 = *&v7[32];
  v21 = *&v7[16];
  sub_AC2C(&v10, &v6);
  sub_AC9C(v18, &unk_14C40, &qword_CA78);

  v3 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v3;
  *(a1 + 64) = v16;
  *(a1 + 80) = v17;
  result = *&v12;
  v5 = v13;
  *a1 = v12;
  *(a1 + 16) = v5;
  return result;
}

id sub_8C88@<X0>(uint64_t a1@<X8>)
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_146F8 != -1)
  {
    swift_once();
  }

  v2 = qword_15330;
  v3 = sub_BA2C();
  v39 = v2;
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  sub_BA3C();
  sub_A400();
  v5 = sub_B72C();
  v7 = v6;
  v9 = v8;
  sub_B6CC();
  v10 = sub_B71C();
  v12 = v11;
  v14 = v13;

  sub_A454(v5, v7, v9 & 1);

  v15 = sub_B70C();
  v41 = v16;
  v42 = v15;
  v40 = v17;
  v43 = v18;
  sub_A454(v10, v12, v14 & 1);

  result = [objc_opt_self() standardDefaults];
  if (result)
  {
    v20 = result;
    [result presentationGesture];

    v21 = sub_BA2C();
    v22 = [v39 localizedStringForKey:v21 value:0 table:0];

    sub_BA3C();
    v23 = sub_B72C();
    v25 = v24;
    v27 = v26;
    sub_B6CC();
    v28 = sub_B71C();
    v30 = v29;
    v32 = v31;

    sub_A454(v23, v25, v27 & 1);

    sub_B7DC();
    v33 = sub_B6EC();
    v35 = v34;
    LOBYTE(v20) = v36;
    v38 = v37;

    sub_A454(v28, v30, v32 & 1);

    *a1 = v42;
    *(a1 + 8) = v41;
    *(a1 + 16) = v40 & 1;
    *(a1 + 24) = v43;
    *(a1 + 32) = v33;
    *(a1 + 40) = v35;
    *(a1 + 48) = v20 & 1;
    *(a1 + 56) = v38;
    sub_ACFC(v42, v41, v40 & 1);

    sub_ACFC(v33, v35, v20 & 1);

    sub_A454(v33, v35, v20 & 1);

    sub_A454(v42, v41, v40 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_9098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2D4C(&qword_14B40, &qword_C960);
  sub_B81C();
  swift_getKeyPath();
  sub_2D4C(&qword_14C30, &qword_CA18);
  sub_B8CC();

  sub_B89C();
  sub_B81C();
  swift_getKeyPath();
  sub_B8CC();

  result = sub_2D4C(&qword_14BD8, &qword_C9E8);
  v6 = a3 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2;
  *(v6 + 16) = v8;
  *(v6 + 17) = 0;
  return result;
}

uint64_t sub_92BC@<X0>(uint64_t a1@<X8>)
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_146F8 != -1)
  {
    swift_once();
  }

  v2 = qword_15330;
  v3 = sub_BA2C();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  sub_BA3C();
  sub_A400();
  v5 = sub_B72C();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_9428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v33 = sub_2D4C(&qword_14C08, &qword_CA00);
  __chkstk_darwin(v33);
  v6 = &v28 - v5;
  sub_BA8C();
  v31 = sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_B82C();
  v36 = a1;
  v37 = a2;
  sub_2D4C(&qword_14B40, &qword_C960);
  sub_B81C();
  v8 = v39;
  v9 = v40;
  v29 = a2;
  v10 = v41;
  swift_getKeyPath();
  v39 = v8;
  v40 = v9;
  v41 = v10;
  sub_2D4C(&qword_14C30, &qword_CA18);
  sub_B8CC();

  v12 = v36;
  v11 = v37;
  v13 = v38;

  v14 = *(v33 + 36);
  v30 = v6;
  v15 = &v6[v14];
  *v15 = v12;
  *(v15 + 1) = v11;
  v15[16] = v13;
  v15[17] = 1;
  if (qword_146F8 != -1)
  {
    swift_once();
  }

  v16 = qword_15330;
  v17 = sub_BA2C();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  v19 = sub_BA3C();
  v21 = v20;
  v28 = v20;

  v34 = v19;
  v35 = v21;
  v36 = a1;
  v37 = v29;
  sub_B81C();
  v22 = v39;
  v23 = v40;
  v24 = v41;
  swift_getKeyPath();
  v39 = v22;
  v40 = v23;
  v41 = v24;
  sub_B8CC();

  __chkstk_darwin(v25);
  sub_2D4C(&qword_14C10, &qword_CA08);
  sub_AAD8();
  sub_A400();
  sub_4FFC(&qword_14C20, &qword_14C10, &qword_CA08, &protocol conformance descriptor for Button<A>);
  v26 = v30;
  sub_B79C();

  sub_AC9C(v26, &qword_14C08, &qword_CA00);
}

uint64_t sub_989C(uint64_t a1, uint64_t a2)
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2D4C(&qword_14B40, &qword_C960);
  sub_B80C();
  swift_getKeyPath();
  sub_A4D8();
  sub_B40C();

  swift_getKeyPath();
  sub_B42C();

  *(v3 + 16) = (*(v3 + 16) & 1) == 0;
  swift_getKeyPath();
  sub_B41C();
}

uint64_t sub_9A20@<X0>(uint64_t a1@<X8>)
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_146F8 != -1)
  {
    swift_once();
  }

  v2 = qword_15330;
  v3 = sub_BA2C();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  sub_BA3C();
  sub_A400();
  v5 = sub_B72C();
  v7 = v6;
  v9 = v8;
  sub_B7CC();
  v10 = sub_B6FC();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_A454(v5, v7, v9 & 1);

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_9C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2D4C(&qword_14C38, &qword_CA48);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - v5;
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_146F8 != -1)
  {
    swift_once();
  }

  v7 = qword_15330;
  v8 = sub_BA2C();
  v9 = [v7 localizedStringForKey:v8 value:0 table:0];

  v10 = sub_BA3C();
  v12 = v11;

  v16[0] = v10;
  v16[1] = v12;
  sub_B4BC();
  v13 = sub_B4CC();
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_A400();

  sub_B83C();
}

void sub_9E44()
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2D4C(&qword_14B40, &qword_C960);
  sub_B80C();

  v0 = [objc_opt_self() sharedInstance];
  aBlock[4] = sub_3F7C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_7468;
  aBlock[3] = &unk_11158;
  v1 = _Block_copy(aBlock);
  [v0 resetToDefaultLayoutWithCompletionHandler:v1];
  _Block_release(v1);
}

uint64_t sub_9FB8@<X0>(uint64_t a1@<X8>)
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_146F8 != -1)
  {
    swift_once();
  }

  v2 = qword_15330;
  v3 = sub_BA2C();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  sub_BA3C();
  sub_A400();
  v5 = sub_B72C();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_A124(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_B6BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v13 == 2)
  {
  }

  else
  {
    v18[4] = a3;
    v18[5] = a4;
    sub_2D4C(&qword_14B40, &qword_C960);
    v15 = sub_B80C();
    v18[1] = v18;
    v16 = v18[3];
    __chkstk_darwin(v15);
    v18[-2] = a5;
    LOBYTE(v18[-1]) = v13 & 1;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v13 & 1;

    sub_B8FC();
    sub_B6AC();
    sub_B53C();

    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_A3C8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_A400()
{
  result = qword_14B20;
  if (!qword_14B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14B20);
  }

  return result;
}

uint64_t sub_A454(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t *sub_A464(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_A4D8()
{
  result = qword_14898;
  if (!qword_14898)
  {
    type metadata accessor for ControlCenterSettingsViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14898);
  }

  return result;
}

uint64_t sub_A530()
{
  v1 = sub_B58C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_A5FC(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(sub_B58C() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_A124(a1, a2, v6, v7, v8);
}

unint64_t sub_A680()
{
  result = qword_14B58;
  if (!qword_14B58)
  {
    sub_4DF8(&qword_14B48, &qword_C990);
    sub_4E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14B58);
  }

  return result;
}

uint64_t sub_A724()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_A768()
{
  result = qword_14B80;
  if (!qword_14B80)
  {
    sub_4DF8(&qword_14B78, &qword_C9B0);
    sub_A820();
    sub_4FFC(&qword_14BC8, &qword_14BD0, &qword_C9E0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14B80);
  }

  return result;
}

unint64_t sub_A820()
{
  result = qword_14B88;
  if (!qword_14B88)
  {
    sub_4DF8(&qword_14B90, &qword_C9B8);
    sub_A8D8();
    sub_4FFC(&qword_149E8, &qword_149F0, &unk_C780, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14B88);
  }

  return result;
}

unint64_t sub_A8D8()
{
  result = qword_14B98;
  if (!qword_14B98)
  {
    sub_4DF8(&qword_14BA0, &qword_C9C0);
    sub_4FFC(&qword_14BA8, &qword_14BB0, &qword_C9C8, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_4FFC(&qword_14BB8, &qword_14BC0, &unk_C9D0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14B98);
  }

  return result;
}

unint64_t sub_A9C4()
{
  result = qword_14BE0;
  if (!qword_14BE0)
  {
    sub_4DF8(&qword_14BD8, &qword_C9E8);
    sub_4FFC(&qword_14BE8, &qword_14BF0, &qword_C9F0, &protocol conformance descriptor for Toggle<A>);
    sub_AA7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14BE0);
  }

  return result;
}

unint64_t sub_AA7C()
{
  result = qword_14BF8;
  if (!qword_14BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14BF8);
  }

  return result;
}

unint64_t sub_AAD8()
{
  result = qword_14C18;
  if (!qword_14C18)
  {
    sub_4DF8(&qword_14C08, &qword_CA00);
    sub_4FFC(&qword_14C20, &qword_14C10, &qword_CA08, &protocol conformance descriptor for Button<A>);
    sub_AA7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14C18);
  }

  return result;
}

uint64_t sub_ABA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_ABF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_AC2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2D4C(&unk_14C40, &qword_CA78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AC9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2D4C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_ACFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_AD0C()
{
  sub_4DF8(&qword_14B08, &qword_C938);
  sub_4DF8(&qword_14B00, &qword_C930);
  sub_4DF8(&qword_14B10, &unk_C940);
  sub_4FFC(&qword_14B18, &qword_14B10, &unk_C940, &protocol conformance descriptor for ScrollViewReader<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_AE34(int a1, int a2, int a3, int a4)
{
  if (qword_15320 == -1)
  {
    if (qword_15328)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_B2FC();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_15328)
    {
      return _availability_version_check();
    }
  }

  if (qword_15318 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_B314();
    a3 = v10;
    a4 = v9;
    v8 = dword_15308 < v11;
    if (dword_15308 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1530C > a3)
      {
        return 1;
      }

      if (dword_1530C >= a3)
      {
        return dword_15310 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_15308 < a2;
  if (dword_15308 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_AFC8(uint64_t result)
{
  v1 = qword_15328;
  if (qword_15328)
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
      qword_15328 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_15308, &dword_1530C, &dword_15310);
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
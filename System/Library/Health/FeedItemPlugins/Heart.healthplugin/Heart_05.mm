id sub_29D7070AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    v5 = [*&v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_viewControllerFactory] profile];
    sub_29D93A388();
    v6 = type metadata accessor for SummariesElectrocardiogramListDataProvider();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider____lazy_storage___dataFetcher] = 0;
    result = [v5 healthStore];
    if (result)
    {
      *&v7[OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider_store] = result;
      sub_29D6945AC(v14, &v7[OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider_healthExperienceStore]);
      v13.receiver = v7;
      v13.super_class = v6;
      v9 = objc_msgSendSuper2(&v13, sel_initWithDisplayType_profile_mode_, a1, v5, 2);

      sub_29D69417C(v14);
      return v9;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15.receiver = v3;
    v15.super_class = type metadata accessor for ElectrocardiogramDataTypeDetailViewController();
    v12 = objc_msgSendSuper2(&v15, sel_createDataProviderWithDisplayType_profile_mode_, a1, a2, a3);

    return v12;
  }

  return result;
}

uint64_t sub_29D707284()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ElectrocardiogramDataTypeDetailViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = sub_29D9354E8();
  v3 = v2;
  if (v1 == sub_29D9354E8() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_29D93AD78();

    if ((v6 & 1) == 0)
    {
      sub_29D7079F0();
    }
  }

  sub_29D708E70(&qword_2A17B2B28, &unk_29D943290);
  return sub_29D936EF8();
}

uint64_t sub_29D70742C()
{
  swift_getObjectType();
  sub_29D693E2C((v0 + OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_pinnedContentManager), *(v0 + OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_pinnedContentManager + 24));
  sub_29D93A1F8();
  v1 = sub_29D934318();

  if (v1 == 2)
  {
    if (qword_2A1A24670 != -1)
    {
      swift_once();
    }

    v2 = sub_29D937898();
    sub_29D69C6C0(v2, qword_2A1A2BF40);
    v3 = sub_29D937878();
    v4 = sub_29D93A2A8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      v7 = sub_29D93AF08();
      v9 = sub_29D6C2364(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s] Unable to fetch pinned status", v5, 0xCu);
      sub_29D69417C(v6);
      MEMORY[0x29ED6BE30](v6, -1, -1);
      MEMORY[0x29ED6BE30](v5, -1, -1);
    }

    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_29D707630(char a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2BF40);
  v5 = sub_29D937878();
  v6 = sub_29D93A2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446466;
    v9 = sub_29D93AF08();
    v11 = sub_29D6C2364(v9, v10, &v13);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s] Setting favorite: %{BOOL}d", v7, 0x12u);
    sub_29D69417C(v8);
    MEMORY[0x29ED6BE30](v8, -1, -1);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  sub_29D693E2C((v2 + OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_pinnedContentManager), *(v2 + OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_pinnedContentManager + 24));
  if (a1)
  {
    return sub_29D934328();
  }

  else
  {
    return sub_29D934338();
  }
}

void sub_29D7077E4()
{
  v1 = v0;
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_displayType];
  v8 = [*&v1[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_viewControllerFactory] profile];
  v9 = [v8 healthStore];

  if (v9)
  {
    v10 = [v1 resolvedHealthToolbox];
    sub_29D9339E8();
    v11 = sub_29D933958();
    (*(v3 + 8))(v6, v2);
    v12 = [v7 wd:v9 addDataViewControllerWithHealthStore:v10 healthToolBox:v11 initialStartDate:?];

    v13 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    [v1 presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D7079F0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_consumedHealthExperienceStore;
  swift_beginAccess();
  sub_29D708D30(&v1[v2], v19);
  v3 = v20;
  if (!v20)
  {
    goto LABEL_11;
  }

  v4 = sub_29D693E2C(v19, v20);
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v4, v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7);
  sub_29D708C88(v19, &qword_2A17B2B10, sub_29D708DB0);
  v8 = sub_29D933EC8();
  (*(v5 + 8))(v7, v3);
  v9 = *&v1[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_viewControllerFactory];
  v10 = [v9 profile];
  v11 = [v10 healthStore];

  if (!v11)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = [v11 profileIdentifier];

  v13 = [v9 profile];
  v14 = [v13 healthStore];

  if (!v14)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    sub_29D708C88(v19, &qword_2A17B2B10, sub_29D708DB0);
    sub_29D93AB28();
    __break(1u);
    return;
  }

  v15 = [v1 title];
  if (v15)
  {
    v16 = v15;
    sub_29D939D68();
  }

  type metadata accessor for ElectrocardiogramDataTypeDetailViewController();
  sub_29D708E70(&qword_2A17B2B18, &unk_29D9432AC);
  v17 = sub_29D936C98();

  if (v17)
  {
    swift_beginAccess();
    sub_29D938258();
    swift_endAccess();
  }

  else
  {
  }
}

void sub_29D707D60()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v40 = sub_29D937898();
  v38 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40, v3);
  v39 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D708E14(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v32[3] = v32 - v7;
  sub_29D708E14(0, &qword_2A17B2B20, MEMORY[0x29EDC4378]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v33 = v32 - v10;
  v11 = sub_29D939A78();
  v36 = *(v11 - 8);
  v37 = v11;
  v13 = MEMORY[0x2A1C7C4A8](v11, v12);
  v34 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v35 = v32 - v16;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = ObjectType;
  v41 = v1;
  v19 = *&v1[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_providedHealthStore];
  v20 = *MEMORY[0x29EDBA6D0];
  v21 = type metadata accessor for ECGFeatureRegulatoryInfoTransformProvider(0);
  swift_allocObject();
  v32[2] = v19;
  v32[1] = v20;
  v22 = sub_29D939A98();
  v43 = v21;
  v44 = MEMORY[0x29EDC43B8];
  v42 = v22;
  if (qword_2A17B0D58 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9336E8();

  v23 = v33;
  sub_29D939A48();
  v24 = sub_29D939A58();
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v25 = v40;
  v26 = sub_29D69C6C0(v40, qword_2A1A2BF40);
  (*(v38 + 16))(v39, v26, v25);
  v27 = v35;
  sub_29D939A68();
  v28 = objc_allocWithZone(type metadata accessor for ElectroCardiogramFeatureRegulatoryDetailViewController(0));
  v30 = v36;
  v29 = v37;
  (*(v36 + 16))(v34, v27, v37);
  v31 = sub_29D938CF8();
  (*(v30 + 8))(v27, v29);
  [v41 showAdaptively:v31 sender:0];
}

void sub_29D7082CC(uint64_t a1, uint64_t a2)
{
  if (qword_2A1A24670 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2BF40);
  v3 = sub_29D937878();
  v4 = sub_29D93A2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136446210;
    v7 = sub_29D93AF08();
    v9 = sub_29D6C2364(v7, v8, v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s] Reenable ECG button action selected", v5, 0xCu);
    sub_29D69417C(v6);
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong navigationController];
    if (v12)
    {
      v13 = v12;
    }

    [v11 didSelectReenableFeature];
  }
}

uint64_t sub_29D708498(uint64_t a1)
{
  v3 = sub_29D939A78();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D938CF8();
  (*(v4 + 8))(a1, v3);
  return v9;
}

uint64_t type metadata accessor for ElectroCardiogramFeatureRegulatoryDetailViewController(uint64_t a1)
{
  result = qword_2A17B2A90;
  if (!qword_2A17B2A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D708834(char a1)
{
  v3 = [v1 navigationItem];
  if (a1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:0 target:v1 action:sel_didTapDone_];
    v8 = v4;
    v7 = MEMORY[0x29EDCA190];
    if (v4)
    {
      v5 = v4;
      MEMORY[0x29ED6A300]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D939F78();
      }

      sub_29D939FA8();
    }
  }

  else
  {
    v8 = 0;
  }

  sub_29D708C88(&v8, &qword_2A17B2B00, sub_29D708CE4);
  sub_29D708CE4();
  v6 = sub_29D939F18();

  [v3 setRightBarButtonItems_];
}

uint64_t sub_29D708994(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_29D93A868();
  sub_29D936978();
  [v4 dismissViewControllerAnimated:1 completion:0];

  return sub_29D69417C(v6);
}

uint64_t sub_29D708A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D939A78();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v2);
  (*(v5 + 16))(v8, a2, v4);
  v10 = sub_29D938CE8();
  (*(v5 + 8))(a2, v4);
  return v10;
}

id sub_29D708B10(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for ElectroCardiogramFeatureRegulatoryDetailViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D708BA8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_29D708BE8(void *a1)
{
  v1 = a1;
  sub_29D708834(1);
}

void sub_29D708C38(void *a1)
{
  v1 = a1;
  sub_29D708834(0);
}

uint64_t sub_29D708C88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D708E14(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D708CE4()
{
  result = qword_2A17B2B08;
  if (!qword_2A17B2B08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B2B08);
  }

  return result;
}

uint64_t sub_29D708D30(uint64_t a1, uint64_t a2)
{
  sub_29D708E14(0, &qword_2A17B2B10, sub_29D708DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D708DB0()
{
  result = qword_2A17B50D0;
  if (!qword_2A17B50D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B50D0);
  }

  return result;
}

void sub_29D708E14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D708E70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ElectrocardiogramDataTypeDetailViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_29D708EB0(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5Heart50HypertensionNotificationsHowTheyWorkViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC5Heart50HypertensionNotificationsHowTheyWorkViewController_isOnboarding] = a1;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  v4 = sub_29D939D28();

  v5 = sub_29D939D28();

  v9.receiver = v1;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, sel_initWithTitle_detailText_icon_contentLayout_, v4, v5, 0, 4, 0xE000000000000000);

  if (a1)
  {
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243D3E0);
    swift_arrayDestroy();
    v7 = sub_29D939D28();
  }

  else
  {
    [v6 setAdditionalSafeAreaInsets_];
  }

  return v6;
}

void sub_29D7090E4()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243D420);
    swift_arrayDestroy();
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243D460);
    swift_arrayDestroy();
    v5 = sub_29D939D28();

    [v4 setTitleAccessibilityIdentifier_];

    v6 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243D4A0);
    swift_arrayDestroy();
    v7 = sub_29D939D28();

    [v6 setDetailTextAccessibilityIdentifier_];

    if (*(v0 + OBJC_IVAR____TtC5Heart50HypertensionNotificationsHowTheyWorkViewController_isOnboarding) == 1)
    {
    }

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v8 = qword_2A1A2C038;
    v9 = sub_29D939D28();
    v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

    v11 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
    v12 = v11;
    [v12 setContentMode_];
    v13 = [v0 contentView];
    [v13 addSubview_];

    v14 = [v0 contentView];
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];

    v16 = [v0 contentView];
    v17 = [v16 safeAreaLayoutGuide];

    [v12 hk:v17 alignConstraintsWithGuide:?];
    v18 = [v12 heightAnchor];

    v19 = [v0 view];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 heightAnchor];

      v22 = [v18 constraintEqualToAnchor:v21 multiplier:0.34];
      [v22 setActive_];

      sub_29D93A538();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29D709700(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5Heart50HypertensionNotificationsHowTheyWorkViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

uint64_t sub_29D70974C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D70B5E0(0);
  v5 = v4 - 8;
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70AB34(0, &qword_2A17B2B48, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548]);
  v10 = v9;
  sub_29D937BE8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, *a1, v10);
  sub_29D70AB34(0, &qword_2A17B2B50, MEMORY[0x29EDB86C8], MEMORY[0x29EDB86C0]);
  v13 = v12;
  sub_29D937F08();
  v14 = *(v5 + 56);
  v23 = v14;
  v15 = *(v13 - 8);
  (*(v15 + 16))(&v8[v14], a1[1], v13);
  sub_29D70ABCC(0);
  v17 = v16;
  sub_29D70ACCC(255);
  sub_29D70AD94(255);
  sub_29D70AF58(&qword_2A17B2B80, sub_29D70AD94, MEMORY[0x29EDB8618]);
  v18 = *(v5 + 72);
  v19 = a1[2];
  v20 = *(v17 - 8);
  (*(v20 + 16))(&v8[v18], v19, v17);
  (*(v11 + 32))(a2, v8, v10);
  (*(v15 + 32))(a2 + *(v5 + 56), &v8[v23], v13);
  return (*(v20 + 32))(a2 + *(v5 + 72), &v8[v18], v17);
}

void sub_29D7099E4()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  v1 = sub_29D939D28();
  [v0 setLocalizedDateFormatFromTemplate_];

  qword_2A17D0870 = v0;
}

uint64_t sub_29D709A58@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_29D937D68();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D937CB8();
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v5 = type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider(0);
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v8 = MEMORY[0x29EDB9D18];
  sub_29D70B704(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18]);
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = sub_29D933CC8();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D937CF8();
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  (*(v14 + 104))(v17, *MEMORY[0x29EDB9CD8], v13);
  v20 = sub_29D933CE8();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  sub_29D937CD8();
  sub_29D70B758(v12, &qword_2A17B1F98, v8);
  (*(v14 + 8))(v17, v13);
  sub_29D70A924(v26, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v22 = swift_allocObject();
  sub_29D70A988(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  sub_29D937CA8();
  sub_29D937D58();
  sub_29D70AA6C(0);
  sub_29D70AFA0();
  return sub_29D937F88();
}

uint64_t type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider(uint64_t a1)
{
  result = qword_2A17B2B98;
  if (!qword_2A17B2B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D709E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a2;
  v96 = a3;
  v4 = sub_29D937E18();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v83 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D937E48();
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v82 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70AD94(0);
  v90 = v10;
  v87 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v84 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70ACCC(0);
  v92 = v13;
  v91 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v88 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70ABCC(0);
  v95 = v16;
  v94 = *(v16 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v16, v17);
  v93 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v89 = &v77 - v21;
  v22 = sub_29D937EE8();
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v79 = sub_29D937F08();
  v24 = *(v79 - 8);
  MEMORY[0x2A1C7C4A8](v79, v25);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70AB34(0, &qword_2A17B2B50, MEMORY[0x29EDB86C8], MEMORY[0x29EDB86C0]);
  v86 = v28;
  v85 = *(v28 - 8);
  v30 = MEMORY[0x2A1C7C4A8](v28, v29);
  v100 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v99 = &v77 - v33;
  v34 = sub_29D937BE8();
  v35 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v36);
  v38 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70AB34(0, &qword_2A17B2B48, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548]);
  v98 = v39;
  v80 = *(v39 - 8);
  v41 = MEMORY[0x2A1C7C4A8](v39, v40);
  v97 = &v77 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v41, v43);
  v101 = &v77 - v44;
  v78 = a1;
  v45 = sub_29D937FF8();
  if (v45)
  {
    if (qword_2A17B0C98 != -1)
    {
      swift_once();
    }

    v77 = xmmword_2A17D0CF0;
    v46 = qword_2A17D0D00;
    v47 = qword_2A17D0D10;
    v45 = sub_29D935E88();
    v48 = v77;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v48 = 0uLL;
  }

  v110 = v48;
  v111 = v46;
  v112 = v45;
  v113 = v47;
  sub_29D937BD8();
  if (qword_2A17B0C88 != -1)
  {
    swift_once();
  }

  v49 = qword_2A17D0CC0;
  *&v106 = qword_2A17D0CC0;

  sub_29D937EB8();
  (*(v35 + 8))(v38, v34);
  if (qword_2A17B0C98 != -1)
  {
    swift_once();
  }

  v106 = xmmword_2A17D0CF0;
  v107 = qword_2A17D0D00;
  v108 = qword_2A17D0D08;
  v109 = qword_2A17D0D10;
  sub_29D935E88();
  sub_29D937ED8();
  sub_29D937EF8();
  v102 = v49;
  v50 = v79;
  sub_29D937EB8();

  (*(v24 + 8))(v27, v50);
  v51 = sub_29D937E28();
  MEMORY[0x2A1C7C4A8](v51, v52);
  sub_29D937E08();
  sub_29D70ADF8(0);
  v76[2] = v53;
  v76[3] = sub_29D70AEA8();
  v76[0] = sub_29D70B5D8;
  v76[1] = v76;
  v54 = v84;
  sub_29D937D18();
  if (qword_2A17B0CA0 != -1)
  {
    swift_once();
  }

  v102 = qword_2A17D0D18;
  v55 = sub_29D70AF58(&qword_2A17B2B80, sub_29D70AD94, MEMORY[0x29EDB8618]);
  v56 = MEMORY[0x29EDBCA98];
  v57 = MEMORY[0x29EDBCA88];
  v58 = v88;
  v59 = v90;
  sub_29D937EB8();
  (*(v87 + 8))(v54, v59);
  if (qword_2A17B0CA8 != -1)
  {
    swift_once();
  }

  v102 = v59;
  v103 = v56;
  v104 = v55;
  v105 = v57;
  swift_getOpaqueTypeConformance2();
  v60 = v89;
  v61 = v92;
  sub_29D937EC8();
  (*(v91 + 8))(v58, v61);
  v62 = v80;
  v63 = v97;
  (*(v80 + 16))(v97, v101, v98);
  v102 = v63;
  v64 = v85;
  v66 = v99;
  v65 = v100;
  v67 = v86;
  (*(v85 + 16))(v100, v99, v86);
  v103 = v65;
  v68 = v94;
  v69 = v93;
  v70 = v95;
  (*(v94 + 16))(v93, v60, v95);
  v104 = v69;
  sub_29D70974C(&v102, v96);
  v71 = *(v68 + 8);
  v71(v60, v70);
  v72 = *(v64 + 8);
  v72(v66, v67);
  v73 = *(v62 + 8);
  v74 = v98;
  v73(v101, v98);
  v71(v69, v70);
  v72(v100, v67);
  return (v73)(v97, v74);
}

uint64_t sub_29D70A924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D70A988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D70A9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFibBurdenPDFChartHorizontalAxisProvider(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D709E44(a1, v6, a2);
}

void sub_29D70AA6C(uint64_t a1)
{
  if (!qword_2A17B2B40)
  {
    sub_29D70AB34(255, &qword_2A17B2B48, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548]);
    sub_29D70AB34(255, &qword_2A17B2B50, MEMORY[0x29EDB86C8], MEMORY[0x29EDB86C0]);
    sub_29D70ABCC(255);
    v1 = sub_29D937BF8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2B40);
    }
  }
}

void sub_29D70AB34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29D70ABCC(uint64_t a1)
{
  if (!qword_2A17B2B58)
  {
    sub_29D70ACCC(255);
    sub_29D70AD94(255);
    sub_29D70AF58(&qword_2A17B2B80, sub_29D70AD94, MEMORY[0x29EDB8618]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2B58);
    }
  }
}

void sub_29D70ACCC(uint64_t a1)
{
  if (!qword_2A17B2B60)
  {
    sub_29D70AD94(255);
    sub_29D70AF58(&qword_2A17B2B80, sub_29D70AD94, MEMORY[0x29EDB8618]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2B60);
    }
  }
}

void sub_29D70AD94(uint64_t a1)
{
  if (!qword_2A17B2B68)
  {
    sub_29D70ADF8(255);
    sub_29D70AEA8();
    v1 = sub_29D937D28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2B68);
    }
  }
}

void sub_29D70ADF8(uint64_t a1)
{
  if (!qword_2A17B2B70)
  {
    sub_29D70AE58();
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2B70);
    }
  }
}

void sub_29D70AE58()
{
  if (!qword_2A17B17B8)
  {
    v0 = sub_29D939088();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B17B8);
    }
  }
}

unint64_t sub_29D70AEA8()
{
  result = qword_2A17B2B78;
  if (!qword_2A17B2B78)
  {
    sub_29D70ADF8(255);
    sub_29D70AF58(&qword_2A17B17F8, sub_29D70AE58, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2B78);
  }

  return result;
}

uint64_t sub_29D70AF58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D70AFA0()
{
  result = qword_2A17B2B88;
  if (!qword_2A17B2B88)
  {
    sub_29D70AA6C(255);
    sub_29D937BE8();
    swift_getOpaqueTypeConformance2();
    sub_29D937F08();
    swift_getOpaqueTypeConformance2();
    sub_29D70ACCC(255);
    sub_29D70AD94(255);
    sub_29D70AF58(&qword_2A17B2B80, sub_29D70AD94, MEMORY[0x29EDB8618]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2B88);
  }

  return result;
}

uint64_t sub_29D70B130@<X0>(uint64_t a2@<X8>)
{
  sub_29D70B1C4();
  sub_29D69AB60();
  v3 = sub_29D9392F8();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = result;
  *(a2 + 40) = 0x4000000000000000;
  return result;
}

uint64_t sub_29D70B1C4()
{
  v0 = sub_29D933CC8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9339F8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D70B704(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = v30 - v16;
  sub_29D937FD8();
  sub_29D6A0A20(v17, v14);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    v18 = MEMORY[0x29EDB9BC8];
    sub_29D70B758(v14, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    sub_29D70B758(v17, &qword_2A1A25780, v18);
    return 0;
  }

  (*(v6 + 32))(v9, v14, v5);
  (*(v1 + 104))(v4, *MEMORY[0x29EDB9CD8], v0);
  v20 = sub_29D933CD8();
  (*(v1 + 8))(v4, v0);
  v21 = v20 - 1;
  if (__OFSUB__(v20, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v20 == 1 || !sub_29D937FF8())
  {
    if (qword_2A17B0BF8 == -1)
    {
LABEL_10:
      v25 = qword_2A17D0870;
      v26 = sub_29D933958();
      v27 = [v25 stringFromDate_];

      v23 = sub_29D939D68();
      v24 = v28;

      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_10;
  }

  result = sub_29D933B88();
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v21 < *(result + 16))
  {
    v22 = result + 16 * v21;
    v23 = *(v22 + 32);
    v24 = *(v22 + 40);
    sub_29D935E88();

LABEL_11:
    v30[2] = v23;
    v30[3] = v24;
    sub_29D69AB60();
    v29 = sub_29D93A808();
    (*(v6 + 8))(v9, v5);
    sub_29D70B758(v17, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);

    return v29;
  }

  __break(1u);
  return result;
}

void sub_29D70B5E0(uint64_t a1)
{
  if (!qword_2A17B2B90)
  {
    sub_29D70AB34(255, &qword_2A17B2B48, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548]);
    sub_29D70AB34(255, &qword_2A17B2B50, MEMORY[0x29EDB86C8], MEMORY[0x29EDB86C0]);
    sub_29D70ABCC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B2B90);
    }
  }
}

void sub_29D70B704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D70B758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D70B704(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D70B7DC(uint64_t a1)
{
  result = sub_29D933CE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29D70B8FC(void *a1)
{
  v2 = v1;
  if (![a1 healthDataSource])
  {
    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

  v4 = sub_29D73F010(MEMORY[0x29EDCA190]);
  if (*(v2 + 16) > 1u)
  {
    if (*(v2 + 16) == 2)
    {
      v5 = 0x800000029D9576A0;
      v6 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x800000029D9576C0;
      v6 = 0xD000000000000014;
    }
  }

  else if (*(v2 + 16))
  {
    v5 = 0xED00007365636974;
    v6 = 0x6361725074736562;
  }

  else
  {
    v5 = 0xEF676E6967676F4CLL;
    v6 = 0x6574616974696E69;
  }

  v7 = MEMORY[0x29EDC99B0];
  v87 = MEMORY[0x29EDC99B0];
  *&v86 = v6;
  *(&v86 + 1) = v5;
  sub_29D6940E0(&v86, v85);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88 = v4;
  sub_29D69242C(v85, 1885697139, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v9 = v88;
  v10 = *(v2 + 17);
  if (v10 <= 2)
  {
    if (*(v2 + 17))
    {
      if (v10 == 1)
      {
        v11 = 0xE400000000000000;
        v12 = 1954047342;
      }

      else
      {
        v11 = 0xE900000000000073;
        v12 = 0x64616F4C77656976;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      v12 = 0x6C65636E6163;
    }
  }

  else if (*(v2 + 17) > 4u)
  {
    if (v10 == 5)
    {
      v11 = 0xE600000000000000;
      v12 = 0x776F4E746F6ELL;
    }

    else
    {
      v12 = 0x7461446465646461;
      v11 = 0xE900000000000061;
    }
  }

  else if (v10 == 3)
  {
    v11 = 0xE400000000000000;
    v12 = 1701736292;
  }

  else
  {
    v11 = 0xE600000000000000;
    v12 = 0x4A5042676F6CLL;
  }

  v87 = v7;
  *&v86 = v12;
  *(&v86 + 1) = v11;
  sub_29D6940E0(&v86, v85);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v85, 0x6E6F69746361, 0xE600000000000000, v13);
  v88 = v9;
  v14 = *(v2 + 18);
  v84 = a1;
  if (v14 <= 1)
  {
    if (*(v2 + 18))
    {
      v15 = 0x800000029D957700;
      v16 = 0xD000000000000013;
    }

    else
    {
      v15 = 0xEF4A50426D6F6F52;
      v16 = 0x6570795461746164;
    }

    goto LABEL_31;
  }

  if (v14 == 2)
  {
    v15 = 0xEA0000000000676ELL;
    v16 = 0x696472616F626E6FLL;
    goto LABEL_31;
  }

  if (v14 == 3)
  {
    v15 = 0x800000029D957720;
    v16 = 0xD000000000000014;
LABEL_31:
    v87 = v7;
    *&v86 = v16;
    *(&v86 + 1) = v15;
    sub_29D6940E0(&v86, v85);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v85, 0x6E616E65766F7270, 0xEA00000000006563, v18);
    v17 = v9;
    goto LABEL_32;
  }

  sub_29D8C42F8(0x6E616E65766F7270, 0xEA00000000006563, &v86);
  sub_29D6FE6B0(&v86);
  v17 = v88;
LABEL_32:
  v19 = *(v2 + 24);
  v20 = *(v2 + 32);
  v87 = v7;
  *&v86 = v19;
  *(&v86 + 1) = v20;
  sub_29D6940E0(&v86, v85);
  sub_29D935E88();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v85, 0x7954776F646E6977, 0xEA00000000006570, v21);
  v88 = v17;
  v22 = *(v2 + 40);
  v23 = MEMORY[0x29EDC9BA8];
  v87 = MEMORY[0x29EDC9BA8];
  *&v86 = v22;
  sub_29D6940E0(&v86, v85);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v85, 0xD000000000000011, 0x800000029D95B4C0, v24);
  v25 = v17;
  v26 = *(v2 + 48);
  v27 = MEMORY[0x29EDBA358];
  if (v26 == 2)
  {
    v28 = *MEMORY[0x29EDBA358];
  }

  else
  {
    v28 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v29 = v28;
  v30 = sub_29D6B73CC();
  v87 = v30;
  *&v86 = v29;
  sub_29D6940E0(&v86, v85);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v85, 0x676E616843646964, 0xED00006574614465, v31);
  v88 = v25;
  v32 = *(v2 + 49);
  if (v32 == 2)
  {
    v33 = *v27;
  }

  else
  {
    v33 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v87 = v30;
  *&v86 = v33;
  sub_29D6940E0(&v86, v85);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v85, 0x654C706154646964, 0xEF65726F4D6E7261, v34);
  v35 = *(v2 + 50);
  if (v35 == 2)
  {
    v36 = *v27;
  }

  else
  {
    v36 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  }

  v83 = v30;
  v87 = v30;
  *&v86 = v36;
  sub_29D6940E0(&v86, v85);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v85, 0xD000000000000010, 0x800000029D95B4F0, v37);
  v38 = v25;
  v39 = *(v2 + 56);
  v40 = *(v2 + 64);
  v41 = MEMORY[0x29EDC99B0];
  v87 = MEMORY[0x29EDC99B0];
  *&v86 = v39;
  *(&v86 + 1) = v40;
  sub_29D6940E0(&v86, v85);
  sub_29D935E88();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v85, 0x546C616E72756F6ALL, 0xEB00000000657079, v42);
  v43 = *(v2 + 72);
  v87 = v23;
  *&v86 = v43;
  sub_29D6940E0(&v86, v85);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v85, 0xD000000000000023, 0x800000029D95B510, v44);
  v45 = *(v2 + 80);
  v87 = v23;
  *&v86 = v45;
  sub_29D6940E0(&v86, v85);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v85, 0xD00000000000001BLL, 0x800000029D95B540, v46);
  v47 = v38;
  v88 = v38;
  v48 = sub_29D939D68();
  v50 = v49;
  v51 = [v84 environmentDataSource];
  v52 = [v51 activePairedDeviceOSBuildNumber];

  if (v52)
  {
    v53 = sub_29D939D68();
    v55 = v54;

    v87 = v41;
    *&v86 = v53;
    *(&v86 + 1) = v55;
    sub_29D6940E0(&v86, v85);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v85, v48, v50, v56);

    v88 = v47;
  }

  else
  {
    sub_29D8C42F8(v48, v50, &v86);

    sub_29D6FE6B0(&v86);
  }

  v57 = sub_29D939D68();
  v59 = v58;
  v60 = [v84 environmentDataSource];
  v61 = [v60 activePairedDeviceProductType];

  if (v61)
  {
    v62 = sub_29D939D68();
    v64 = v63;

    v87 = MEMORY[0x29EDC99B0];
    *&v86 = v62;
    *(&v86 + 1) = v64;
    sub_29D6940E0(&v86, v85);
    v65 = v88;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    sub_29D69242C(v85, v57, v59, v66);

    v88 = v65;
  }

  else
  {
    sub_29D8C42F8(v57, v59, &v86);

    sub_29D6FE6B0(&v86);
  }

  v67 = sub_29D939D68();
  v69 = v68;
  v70 = [v84 environmentDataSource];
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v71 = sub_29D937898();
  sub_29D69C6C0(v71, qword_2A1A2BF10);
  type metadata accessor for BloodPressureJournalLoggingAnalyticsEvent();
  v72 = sub_29D93A2F8();

  v87 = v83;
  *&v86 = v72;
  sub_29D6940E0(&v86, v85);
  v73 = v88;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v85, v67, v69, v74);

  v88 = v73;
  v75 = sub_29D939D68();
  v77 = v76;
  v78 = sub_29D93A308();
  v87 = MEMORY[0x29EDC99B0];
  *&v86 = v78;
  *(&v86 + 1) = v79;
  sub_29D6940E0(&v86, v85);
  v80 = v88;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  sub_29D69242C(v85, v75, v77, v81);

  sub_29D936978();
  return v80;
}

uint64_t sub_29D70C3E8()
{

  return swift_deallocClassInstance();
}

void sub_29D70C44C()
{
  if (!qword_2A1A24810)
  {
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24810);
    }
  }
}

uint64_t sub_29D70C4A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();
}

uint64_t sub_29D70C518()
{
  v1 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_subscriptions;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x29EDCA1A0];

  sub_29D69417C((v0 + 24));
  v2 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability__featureStatus;
  sub_29D70CFAC(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_29D70D96C(v0 + OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_status, sub_29D6B805C);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AtrialFibrillationFeatureStatusAvailability(uint64_t a1)
{
  result = qword_2A1A24D58;
  if (!qword_2A1A24D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D70C6A8(uint64_t a1)
{
  sub_29D70CFAC(319, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    sub_29D6B805C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29D70C7C4()
{
  v1 = v0;
  v29[1] = *v0;
  v2 = sub_29D9371A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v30 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D278C(0);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v32 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v29 - v11;
  sub_29D6B805C(0);
  v15 = MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v31 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = v29 - v19;
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = v29 - v22;
  sub_29D693E2C(v0 + 3, v0[6]);
  sub_29D937238();
  (*(v3 + 56))(v20, 0, 1, v2);
  sub_29D70D9CC(v20, v23);
  v24 = v31;
  v25 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_status;
  swift_beginAccess();
  sub_29D70D908(v23, v1 + v25);
  swift_endAccess();
  sub_29D6D27C0(v23, v24, sub_29D6B805C);
  if ((*(v3 + 48))(v24, 1, v2) == 1)
  {
    v26 = sub_29D9346E8();
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  }

  else
  {
    v27 = v30;
    (*(v3 + 32))(v30, v24, v2);

    sub_29D70CD74(v27, v12);
    (*(v3 + 8))(v27, v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D6D27C0(v12, v32, sub_29D6D278C);

  sub_29D9383D8();
  sub_29D70D96C(v12, sub_29D6D278C);
  return sub_29D70D96C(v23, sub_29D6B805C);
}

uint64_t sub_29D70CD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D9371B8();
  v5 = sub_29D93A648();

  if (v5)
  {
    if (sub_29D70D400())
    {
      v6 = sub_29D9371B8();
      v7 = sub_29D93A648();
      v8 = sub_29D93A648();

      if (v7 & 1) != 0 && (v8)
      {
        v9 = sub_29D70D5A0(a1);
        v10 = sub_29D9346E8();
        v11 = *(v10 - 8);
        v22 = (v11 + 56);
        if (v9)
        {
          v12 = MEMORY[0x29EDC1760];
        }

        else
        {
          v12 = MEMORY[0x29EDC1768];
        }

        (*(v11 + 104))(a2, *v12, v10);
        v14 = *v22;
        v16 = a2;
        v17 = 0;
        v15 = v10;
        goto LABEL_13;
      }

      v18 = MEMORY[0x29EDC1758];
    }

    else
    {
      v18 = MEMORY[0x29EDC1750];
    }

    v19 = *v18;
    v20 = sub_29D9346E8();
    v23 = *(v20 - 8);
    (*(v23 + 104))(a2, v19, v20);
    v14 = *(v23 + 56);
    v16 = a2;
    v17 = 0;
    v15 = v20;
  }

  else
  {
    v13 = sub_29D9346E8();
    v14 = *(*(v13 - 8) + 56);
    v15 = v13;
    v16 = a2;
    v17 = 1;
  }

LABEL_13:

  return v14(v16, v17, 1, v15);
}

void sub_29D70CFAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D70D010(uint64_t a1, uint64_t a2)
{
  sub_29D6D278C(0);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v20[-v9];
  sub_29D6B805C(0);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = sub_29D9371A8();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v14, a1, v17);
    (*(v18 + 56))(v14, 0, 1, v17);
    v19 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_status;
    swift_beginAccess();
    sub_29D70DA30(v14, v16 + v19);
    swift_endAccess();
    sub_29D70CD74(a1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D6D27C0(v10, v7, sub_29D6D278C);
    sub_29D9383D8();
    return sub_29D70D96C(v10, sub_29D6D278C);
  }

  return result;
}

uint64_t sub_29D70D258(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();
}

uint64_t sub_29D70D2D4(uint64_t a1, uint64_t *a2)
{
  sub_29D6D278C(0);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v12 - v9;
  sub_29D6D27C0(a1, &v12 - v9, sub_29D6D278C);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D6D27C0(v10, v7, sub_29D6D278C);

  sub_29D9383D8();
  return sub_29D70D96C(v10, sub_29D6D278C);
}

uint64_t sub_29D70D400()
{
  v0 = sub_29D9371B8();
  v1 = sub_29D93A648();

  v2 = sub_29D9371B8();
  v3 = sub_29D93A648();
  v4 = sub_29D93A648();

  v5 = sub_29D9371B8();
  v6 = sub_29D93A648();
  v7 = sub_29D93A648();

  if (sub_29D937198())
  {
    v8 = sub_29D9371B8();
    v9 = sub_29D93A648();
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_29D9371B8();
  v11 = sub_29D93A648();

  v12 = sub_29D9371B8();
  v13 = sub_29D93A648();

  if (v13)
  {
    v14 = v3 & v4 & v1 & v6 & v7 & v9 & v11;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_29D70D5A0(uint64_t a1)
{
  sub_29D69C75C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D937158();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D9371A8();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x29EDC2D70])
  {
    (*(v14 + 96))(v17, v13);
    (*(v9 + 32))(v12, v17, v8);
    v19 = sub_29D937148();
    sub_29D93A408();
    sub_29D93A428();

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
    v20 = v22[0];
    return v20 & 1;
  }

  if (v18 == *MEMORY[0x29EDC2D68])
  {
    (*(v14 + 8))(v17, v13);
    v20 = 0;
    return v20 & 1;
  }

  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD000000000000023, 0x800000029D95B6B0);
  sub_29D93AB08();
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

uint64_t sub_29D70D908(uint64_t a1, uint64_t a2)
{
  sub_29D6B805C(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D70D96C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D70D9CC(uint64_t a1, uint64_t a2)
{
  sub_29D6B805C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D70DA30(uint64_t a1, uint64_t a2)
{
  sub_29D6B805C(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D70DA94()
{
  v1 = OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell_item;
  swift_beginAccess();
  sub_29D69F108(v0 + v1, v20);
  if (v20[3])
  {
    sub_29D69F188();
    if (swift_dynamicCast())
    {
      v2 = v18;
      v3 = v19;
      v4 = sub_29D70DD5C();
      v5 = sub_29D939D28();
      v6 = sub_29D939D28();
      if (v17)
      {
        sub_29D935E88();
        v7 = sub_29D939D28();

        if (v18)
        {
LABEL_5:
          v16 = v18;
          v17 = v19;
          aBlock = MEMORY[0x29EDCA5F8];
          v13 = 1107296256;
          v14 = sub_29D6C1F10;
          v15 = &unk_2A24423E8;
          v8 = _Block_copy(&aBlock);

LABEL_8:
          [v4 populateWithTitle:v5 detail:v6 buttonText:v7 buttonAction:v8];
          _Block_release(v8);

          return sub_29D694784(v2, v3);
        }
      }

      else
      {
        v7 = 0;
        if (v18)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      goto LABEL_8;
    }

    v10 = v0;
  }

  else
  {
    v10 = v0;
    sub_29D69F230(v20);
  }

  aBlock = 0;
  v13 = 0xE000000000000000;
  sub_29D93AA18();

  v20[0] = 0xD000000000000026;
  v20[1] = 0x800000029D95B770;
  sub_29D69F108(v10 + v1, &aBlock);
  sub_29D70E348(0);
  v11 = sub_29D939DB8();
  MEMORY[0x29ED6A240](v11);

  result = sub_29D93AB28();
  __break(1u);
  return result;
}

id sub_29D70DD5C()
{
  v1 = OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell____lazy_storage___titleDetailOptionalButtonView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell____lazy_storage___titleDetailOptionalButtonView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell____lazy_storage___titleDetailOptionalButtonView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC4868]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_29D70DDE4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell____lazy_storage___titleDetailOptionalButtonView] = 0;
  v29.receiver = v4;
  v29.super_class = type metadata accessor for AFibBurdenLifeFactorDescriptionCell();
  v11 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = qword_2A1A24660;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_29D937898();
  sub_29D69C6C0(v14, qword_2A1A2BF28);
  v15 = sub_29D937878();
  v16 = sub_29D93A2A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    v30 = ObjectType;
    swift_getMetatypeMetadata();
    v19 = sub_29D939DA8();
    v21 = sub_29D6C2364(v19, v20, &v28);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_29D677000, v15, v16, "[%s] Initializing", v17, 0xCu);
    sub_29D69417C(v18);
    MEMORY[0x29ED6BE30](v18, -1, -1);
    MEMORY[0x29ED6BE30](v17, -1, -1);
  }

  v22 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v13 setBackgroundColor_];

  v23 = [v13 contentView];
  v24 = sub_29D70DD5C();
  [v23 addSubview_];

  v25 = *&v13[OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell____lazy_storage___titleDetailOptionalButtonView];
  v26 = [v13 contentView];
  [v25 hk:v26 alignConstraintsWithView:?];

  return v13;
}

id sub_29D70E12C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorDescriptionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D70E1D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell_item;
  swift_beginAccess();
  return sub_29D69F108(v1 + v3, a1);
}

uint64_t sub_29D70E228(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart35AFibBurdenLifeFactorDescriptionCell_item;
  swift_beginAccess();
  sub_29D69F2FC(a1, v1 + v3);
  swift_endAccess();
  sub_29D70DA94();
  return sub_29D69F230(a1);
}

uint64_t (*sub_29D70E294(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D70E2F8;
}

uint64_t sub_29D70E2F8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29D70DA94();
  }

  return result;
}

void sub_29D70E348(uint64_t a1)
{
  if (!qword_2A17B1830)
  {
    sub_29D69F188();
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1830);
    }
  }
}

uint64_t sub_29D70E3A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for BloodPressureClassificationDataManagementDataSource(uint64_t a1)
{
  result = qword_2A17B2BE8;
  if (!qword_2A17B2BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D70E474(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v69 = a4;
  v74 = a2;
  v64[1] = *v5;
  sub_29D710810(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v70 = v64 - v10;
  sub_29D710880(0);
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v71 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_29D9371A8();
  v65 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66, v14);
  v68 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_29D933A58();
  v16 = *(v67 - 8);
  MEMORY[0x2A1C7C4A8](v67, v17);
  v19 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + qword_2A17B2BC0) = MEMORY[0x29EDCA1A0];
  v77 = a1;
  v20 = [a1 objectType];
  v21 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:a3];
  *(v5 + qword_2A17B2BB8) = v21;
  *(v5 + qword_2A17B2BC8) = a3;
  v22 = objc_allocWithZone(MEMORY[0x29EDBAA48]);
  v23 = a3;
  v24 = [v22 initWithHealthStore_];
  *(v5 + qword_2A17B2BD0) = v24;
  *(v5 + qword_2A17B2BE0) = 0;
  sub_29D934B38();
  v75 = v23;
  v76 = v20;
  sub_29D934B08();
  v25 = sub_29D68FAC0(0, 1, 1, MEMORY[0x29EDCA190]);
  v84[0] = v25;
  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_29D68FAC0((v26 > 1), v27 + 1, 1, v25);
    v84[0] = v25;
  }

  v28 = v82;
  v29 = v83;
  v30 = sub_29D693DDC(v81, v82);
  MEMORY[0x2A1C7C4A8](v30, v30);
  v32 = v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  sub_29D693D44(v27, v32, v84, v28, v29);
  sub_29D69417C(v81);
  sub_29D934B18();
  if (v79)
  {
    sub_29D679D3C(&v78, v81);
    sub_29D6945AC(v81, &v78);
    v84[0] = v25;
    v35 = v25[2];
    v34 = v25[3];
    if (v35 >= v34 >> 1)
    {
      v25 = sub_29D68FAC0((v34 > 1), v35 + 1, 1, v25);
      v84[0] = v25;
    }

    sub_29D69417C(v81);
    v36 = v79;
    v37 = v80;
    v38 = sub_29D693DDC(&v78, v79);
    MEMORY[0x2A1C7C4A8](v38, v38);
    v40 = v64 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v40);
    sub_29D693D44(v35, v40, v84, v36, v37);
    sub_29D69417C(&v78);
    v42 = 2;
  }

  else
  {
    sub_29D710968(&v78, &qword_2A17B1830, &qword_2A17B1080, MEMORY[0x29EDC1910], sub_29D6B7318);
    v42 = 1;
  }

  *(v5 + qword_2A17B2BD8) = v42;
  sub_29D934B28();
  v84[0] = v25;
  v44 = v25[2];
  v43 = v25[3];
  if (v44 >= v43 >> 1)
  {
    v25 = sub_29D68FAC0((v43 > 1), v44 + 1, 1, v25);
    v84[0] = v25;
  }

  v45 = v82;
  v46 = v83;
  v47 = sub_29D693DDC(v81, v82);
  MEMORY[0x2A1C7C4A8](v47, v47);
  v49 = v64 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v50 + 16))(v49);
  sub_29D693D44(v44, v49, v84, v45, v46);
  sub_29D69417C(v81);
  sub_29D710810(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29D9359D8();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D775BD0(v25);

  sub_29D933A48();
  sub_29D933A18();
  (*(v16 + 8))(v19, v67);
  sub_29D9359C8();
  *(swift_allocObject() + 16) = v69;
  v51 = sub_29D936898();
  v52 = qword_2A17B2BB8;
  v53 = *(v51 + qword_2A17B2BB8);
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);

  v54 = v53;
  v55 = v68;
  sub_29D937278();

  sub_29D70F404();
  (*(v65 + 8))(v55, v66);
  v56 = *(v51 + v52);
  v57 = sub_29D937288();

  v81[0] = v57;
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v58 = sub_29D93A468();
  *&v78 = v58;
  v59 = sub_29D93A448();
  v60 = v70;
  (*(*(v59 - 8) + 56))(v70, 1, 1, v59);
  sub_29D6B7D8C(0);
  sub_29D7109D0(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
  sub_29D706380();
  v61 = v71;
  sub_29D938538();
  sub_29D710968(v60, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68], sub_29D710810);

  swift_allocObject();
  swift_weakInit();
  sub_29D7109D0(&qword_2A17B2C70, sub_29D710880, MEMORY[0x29EDB89E8]);
  v62 = v73;
  sub_29D938588();

  (*(v72 + 8))(v61, v62);
  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  return v51;
}

uint64_t sub_29D70F190(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D935D08();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CC8();
  sub_29D935CD8();
  sub_29D935F18();
  v7 = sub_29D935CF8();
  sub_29D936978();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_29D70F298(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D70F404();
  }

  return result;
}

void sub_29D70F2F8()
{

  v1 = *(v0 + qword_2A17B2BD0);
}

uint64_t sub_29D70F358()
{
  [*(v0 + qword_2A17B2BD0) stopObserving_];
  v1 = sub_29D9368B8();
  v2 = *(v1 + qword_2A17B2BB8);

  v3 = *(v1 + qword_2A17B2BD0);

  return swift_deallocClassInstance();
}

uint64_t sub_29D70F404()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_29D9371B8();
  v4 = [v3 areAllRequirementsSatisfied];

  if (v4)
  {
    v5 = *(v1 + qword_2A17B2BD0);
    result = [v5 isClassificationAgeGated];
    if ((result & 1) == 0)
    {
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v2;
      v13 = sub_29D710A28;
      v14 = v8;
      v11[0] = MEMORY[0x29EDCA5F8];
      v11[1] = 1107296256;
      v11[2] = sub_29D83C0B4;
      v12 = &unk_2A2442528;
      v9 = _Block_copy(v11);

      [v5 preferredClassificationGuidelinesWithCompletionHandler_];
      _Block_release(v9);
      return [v5 startObserving_];
    }
  }

  else
  {
    sub_29D935B58();
    v10 = v12;
    result = sub_29D710968(v11, &unk_2A17B2C58, &qword_2A17B1140, MEMORY[0x29EDC18F8], sub_29D6B7318);
    if (v10)
    {
      [*(v1 + qword_2A17B2BD0) stopObserving_];
      return sub_29D935B08();
    }
  }

  return result;
}

uint64_t sub_29D70F618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D939968();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D939998();
  v11 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v15 = sub_29D93A468();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a1;
  v16[4] = a3;
  aBlock[4] = sub_29D710804;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A24424B0;
  v17 = _Block_copy(aBlock);

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D7109D0(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D710810(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v14, v10, v17);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v20);
}

uint64_t sub_29D70F910(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D933DB8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D935DA8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    *(result + qword_2A17B2BE0) = a2;
    v15 = *(result + qword_2A17B2BC8);
    sub_29D70FC34(a2, v15, v12);

    sub_29D935B58();
    v16 = v19;
    sub_29D710968(v18, &unk_2A17B2C58, &qword_2A17B1140, MEMORY[0x29EDC18F8], sub_29D6B7318);
    v19 = v8;
    v20 = sub_29D7109D0(&qword_2A17B2708, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23E8]);
    v17 = sub_29D693F78(v18);
    (*(v9 + 16))(v17, v12, v8);
    if (v16)
    {
      sub_29D935B78();
    }

    else
    {
      MEMORY[0x29ED64160](*(v14 + qword_2A17B2BD8), 0);
      sub_29D935B68();

      (*(v4 + 8))(v7, v3);
    }

    (*(v9 + 8))(v12, v8);
    return sub_29D69417C(v18);
  }

  return result;
}

uint64_t sub_29D70FC34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v71 = a3;
  v72 = a1;
  v69 = sub_29D936BE8();
  v67 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69, v3);
  v68 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29D710810(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v66 = v54 - v8;
  v9 = sub_29D935C78();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v65 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D710810(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v5);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v59 = v54 - v14;
  v15 = sub_29D937928();
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x2A1C7C4A8](v15, v16);
  v57 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_29D9378C8();
  v56 = *(v58 - 8);
  MEMORY[0x2A1C7C4A8](v58, v18);
  v55 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v22 = sub_29D939D18();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v27 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25, v28);
  v30 = v54 - v29;
  v62 = sub_29D937B88();
  v31 = *(v62 - 8);
  MEMORY[0x2A1C7C4A8](v62, v32);
  v34 = v54 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B78();
  sub_29D939D08();
  if (qword_2A17B0D88 != -1)
  {
    swift_once();
  }

  v35 = qword_2A17D0F70;
  (*(v23 + 16))(v27, v30, v22);
  sub_29D935E88();
  v36 = v35;
  sub_29D933A98();
  sub_29D939D98();
  (*(v23 + 8))(v30, v22);
  sub_29D937B48();
  v37 = [objc_opt_self() localizedStringForBloodPressureClassificationGuidelinesName:v72 abbreviated:1];
  if (v37)
  {
    v38 = v37;
    sub_29D939D68();
  }

  sub_29D937A08();
  v54[1] = "selectedGuidelines";
  v39 = v62;
  v73[3] = v62;
  v73[4] = MEMORY[0x29EDC7800];
  v40 = sub_29D693F78(v73);
  (*(v31 + 16))(v40, v34, v39);
  sub_29D710810(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29D937948();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  v41 = v56;
  v42 = v55;
  v43 = v58;
  (*(v56 + 104))(v55, *MEMORY[0x29EDC7768], v58);
  v44 = sub_29D9378D8();
  (*(*(v44 - 8) + 56))(v59, 1, 1, v44);
  v45 = v57;
  sub_29D937918();
  sub_29D937908();
  (*(v60 + 8))(v45, v61);
  (*(v41 + 8))(v42, v43);
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  v48 = v72;
  v47[2] = v46;
  v47[3] = v48;
  v49 = v70;
  v47[4] = v70;
  v50 = v65;
  *v65 = 1;
  (*(v63 + 104))(v50, *MEMORY[0x29EDC22C0], v64);
  v51 = sub_29D9379E8();
  (*(*(v51 - 8) + 56))(v66, 1, 1, v51);
  (*(v67 + 104))(v68, *MEMORY[0x29EDC2A38], v69);

  v52 = v49;
  sub_29D935D98();
  (*(v31 + 8))(v34, v39);
}

void sub_29D71053C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    objc_allocWithZone(type metadata accessor for BloodPressureClassificationGuidelinesViewController(0));
    v9 = sub_29D91EAF8(a3, a4);
    [a1 showAdaptively:v9 sender:v8];
  }
}

uint64_t sub_29D710690(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(a1 + qword_2A17B2BD0);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  v11[4] = sub_29D7107E4;
  v11[5] = v7;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1107296256;
  v11[2] = sub_29D83C0B4;
  v11[3] = &unk_2A2442460;
  v8 = _Block_copy(v11);
  v9 = a3;

  [v5 preferredClassificationGuidelinesWithCompletionHandler_];
  _Block_release(v8);
}

uint64_t sub_29D7107EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D710810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D710880(uint64_t a1)
{
  if (!qword_2A17B2C68)
  {
    sub_29D6B7D8C(255);
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D7109D0(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
    sub_29D706380();
    v1 = sub_29D9381E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2C68);
    }
  }
}

uint64_t sub_29D710968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D7109D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D710A4C(uint64_t a1)
{
  sub_29D714178(319, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_29D710B30()
{
  v0 = type metadata accessor for HypertensionNotificationsStatusSectionDataSource.HypertensionNotificationStatusItemLinkModel(0);
  sub_29D6FD494(v0, qword_2A17D0888);
  v1 = sub_29D69C6C0(v0, qword_2A17D0888);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v2 = qword_2A17D0F10;
  sub_29D935E88();
  v3 = sub_29D9334A8();
  v5 = v4;

  if (qword_2A17B0C08 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
  v7 = sub_29D69C6C0(v6, qword_2A17D08A0);
  result = sub_29D714544(v7, v1 + *(v0 + 20), type metadata accessor for HypertensionNotificationsStatusURLDestination);
  *v1 = v3;
  v1[1] = v5;
  return result;
}

uint64_t sub_29D710C98()
{
  v0 = type metadata accessor for HypertensionNotificationsStatusURLDestination(0);
  sub_29D6FD494(v0, qword_2A17D08A0);
  v1 = sub_29D69C6C0(v0, qword_2A17D08A0);
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9336E8();

  sub_29D714178(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 2, v2);
}

void sub_29D710DE8()
{
  v1 = sub_29D933A58();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29D714178(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v33 = &v30 - v8;
  v9 = MEMORY[0x29EDC2D78];
  sub_29D714178(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], v5);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v30 - v12;
  v14 = sub_29D9371A8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v30 - v21;
  v23 = qword_2A17D08C0;
  swift_beginAccess();
  v34 = v0;
  sub_29D7142AC(v0 + v23, v13, &unk_2A1A24700, v9);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_29D71423C(v13, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
    sub_29D714178(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    sub_29D9359D8();
    *(swift_allocObject() + 16) = xmmword_29D93DDB0;
    sub_29D933A48();
    sub_29D933A18();
    (*(v31 + 8))(v4, v32);
    sub_29D9359C8();
    sub_29D935B38();
  }

  else
  {
    v32 = *(v15 + 32);
    v32(v22, v13, v14);
    v24 = sub_29D93A028();
    (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
    (*(v15 + 16))(v19, v22, v14);
    sub_29D939FF8();
    v25 = v34;

    v26 = sub_29D939FE8();
    v27 = (*(v15 + 80) + 40) & ~*(v15 + 80);
    v28 = swift_allocObject();
    v29 = MEMORY[0x29EDCA390];
    *(v28 + 2) = v26;
    *(v28 + 3) = v29;
    *(v28 + 4) = v25;
    v32(&v28[v27], v19, v14);
    sub_29D6BEBA4(0, 0, v33, &unk_29D943758, v28);

    (*(v15 + 8))(v22, v14);
  }
}

uint64_t sub_29D7112EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_29D933A58();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = type metadata accessor for HypertensionNotificationsStatusDataSourceItem(0);
  v5[24] = swift_task_alloc();
  sub_29D714178(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  sub_29D939FF8();
  v5[27] = sub_29D939FE8();
  v8 = sub_29D939FD8();
  v5[28] = v8;
  v5[29] = v7;

  return MEMORY[0x2A1C73D48](sub_29D711478, v8, v7);
}

uint64_t sub_29D711478()
{
  v1 = v0[25];
  v2 = *(v0[18] + qword_2A17D08D0);
  v3 = *MEMORY[0x29EDC51D8];
  v0[30] = v2;
  v0[31] = v3;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_29D7115BC;
  v4 = swift_continuation_init();
  sub_29D714424(0);
  v0[17] = v5;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D711CE0;
  v0[13] = &unk_2A24425A8;
  v0[14] = v4;
  [v2 dateForKey:v3 completion:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D7115BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_29D7119C4;
  }

  else
  {
    v5 = sub_29D7116EC;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29D7116EC()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[26];
  v4 = v0[25];

  sub_29D6B1204(v4, v3);

  v5 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  v14 = v0[20];
  sub_29D711EE4(v5, v6);
  sub_29D714178(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29D9359D8();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D7144EC(0, &qword_2A17B1138, &qword_2A17B1140, MEMORY[0x29EDC18F8]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D93DDB0;
  *(v10 + 56) = v7;
  *(v10 + 64) = sub_29D713AB8(&qword_2A17B2CB8, type metadata accessor for HypertensionNotificationsStatusDataSourceItem, &unk_29D943800);
  v11 = sub_29D693F78((v10 + 32));
  sub_29D714544(v6, v11, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
  sub_29D933A48();
  sub_29D933A18();
  (*(v9 + 8))(v8, v14);
  sub_29D9359C8();
  sub_29D935B38();

  sub_29D7145AC(v6, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
  sub_29D71423C(v5, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_29D7119C4()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[26];

  swift_willThrow();

  v5 = sub_29D9339F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[21];
  v9 = v0[22];
  v15 = v0[20];
  sub_29D711EE4(v6, v7);
  sub_29D714178(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29D9359D8();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D7144EC(0, &qword_2A17B1138, &qword_2A17B1140, MEMORY[0x29EDC18F8]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93DDB0;
  *(v11 + 56) = v8;
  *(v11 + 64) = sub_29D713AB8(&qword_2A17B2CB8, type metadata accessor for HypertensionNotificationsStatusDataSourceItem, &unk_29D943800);
  v12 = sub_29D693F78((v11 + 32));
  sub_29D714544(v7, v12, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
  sub_29D933A48();
  sub_29D933A18();
  (*(v10 + 8))(v9, v15);
  sub_29D9359C8();
  sub_29D935B38();

  sub_29D7145AC(v7, type metadata accessor for HypertensionNotificationsStatusDataSourceItem);
  sub_29D71423C(v6, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_29D711CE0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D714178(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v20 - v12;
  v14 = *sub_29D693E2C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
    swift_allocError();
    *v15 = a3;
    v16 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      sub_29D933998();
      v18 = sub_29D9339F8();
      (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
    }

    else
    {
      v19 = sub_29D9339F8();
      (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    }

    sub_29D6B1204(v10, v13);
    sub_29D6B1204(v13, *(*(v14 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

void sub_29D711EE4(uint64_t a2@<X1>, uint64_t *x8_0@<X8>)
{
  v5 = sub_29D7120A0(a2, v3);
  v7 = v6;
  v8 = sub_29D9371B8();
  v9 = [v8 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v10 = sub_29D939F38();

  v13 = *(v10 + 16);
  if (v13)
  {
    if (v13 == 1)
    {
      v16 = *MEMORY[0x29EDBA608];
      MEMORY[0x2A1C7C4A8](v11, v12);
      v15[2] = &v16;
      v14 = sub_29D76C424(sub_29D714870, v15, v10);

      if (v14)
      {
        sub_29D7126E4(v5, v7, x8_0);

        return;
      }
    }

    else
    {
    }

    sub_29D712A00(v8, x8_0);
  }

  else
  {

    sub_29D7123CC(v5, v7, x8_0);
  }
}

uint64_t sub_29D7120A0(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x29EDB9BC8];
  sub_29D714178(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v23 - v7;
  v9 = sub_29D9339F8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7142AC(a1, v8, &qword_2A1A25780, v4);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_29D71423C(v8, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    sub_29D7144EC(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_29D93DDB0;
    v16 = *(a2 + qword_2A17D08C8);
    v17 = sub_29D933958();
    v18 = [v16 stringFromDate_];

    v19 = sub_29D939D68();
    v21 = v20;

    *(v15 + 56) = MEMORY[0x29EDC99B0];
    *(v15 + 64) = sub_29D69AD24();
    *(v15 + 32) = v19;
    *(v15 + 40) = v21;
    v22 = sub_29D939D88();

    (*(v10 + 8))(v13, v9);
    return v22;
  }
}

double sub_29D7123CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v6 = sub_29D933A58();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + qword_2A17B2C78);
  v12 = qword_2A17B0D68;
  v34 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_29D9334A8();
  v31 = v14;
  v32 = v13;
  v33 = 0x800000029D95BC00;
  v15 = objc_opt_self();
  sub_29D935E88();
  v16 = [v15 systemGreenColor];
  type metadata accessor for HypertensionNotificationsStatusCollectionViewCell(0);
  sub_29D713AB8(&qword_2A17B2CA0, type metadata accessor for HypertensionNotificationsStatusCollectionViewCell, &unk_29D9539E0);
  v17 = sub_29D9350D8();
  v19 = v18;
  sub_29D933A48();
  v20 = sub_29D933A18();
  v22 = v21;
  (*(v7 + 8))(v10, v6);
  v23 = *(type metadata accessor for HypertensionNotificationsStatusDataSourceItem(0) + 52);
  v24 = sub_29D9336F8();
  (*(*(v24 - 8) + 56))(a3 + v23, 1, 1, v24);
  sub_29D714178(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v25 - 8) + 56))(a3 + v23, 0, 2, v25);
  *a3 = v17;
  *(a3 + 8) = v19;
  *(a3 + 16) = v34;
  *(a3 + 24) = v20;
  v27 = v31;
  v26 = v32;
  *(a3 + 32) = v22;
  *(a3 + 40) = v26;
  v28 = v35;
  *(a3 + 48) = v27;
  *(a3 + 56) = v28;
  *(a3 + 64) = a2;
  *(a3 + 72) = 0xD000000000000010;
  *(a3 + 80) = v33;
  *(a3 + 88) = v16;
  result = 0.0;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  return result;
}

uint64_t sub_29D7126E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v34 = sub_29D933A58();
  v5 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_2A17B0D68;
  v33 = *(v3 + qword_2A17B2C78);
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_29D9334A8();
  v30 = v11;
  v31 = v10;
  v32 = 0x800000029D95BC00;
  v12 = [objc_opt_self() systemGrayColor];
  v13 = sub_29D9334A8();
  v15 = v14;
  v16 = *(type metadata accessor for HypertensionNotificationsStatusDataSourceItem(0) + 52);
  sub_29D714178(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v17 - 8) + 56))(a3 + v16, 1, 2, v17);
  type metadata accessor for HypertensionNotificationsStatusCollectionViewCell(0);
  sub_29D713AB8(&qword_2A17B2CA0, type metadata accessor for HypertensionNotificationsStatusCollectionViewCell, &unk_29D9539E0);
  v18 = sub_29D9350D8();
  v20 = v19;
  sub_29D933A48();
  v21 = sub_29D933A18();
  v23 = v22;
  (*(v5 + 8))(v8, v34);
  *a3 = v18;
  a3[1] = v20;
  a3[2] = v33;
  a3[3] = v21;
  v25 = v30;
  v24 = v31;
  a3[4] = v23;
  a3[5] = v24;
  v27 = v35;
  v26 = v36;
  a3[6] = v25;
  a3[7] = v27;
  a3[8] = v26;
  a3[9] = 0xD000000000000010;
  a3[10] = v32;
  a3[11] = v12;
  a3[12] = v13;
  a3[13] = v15;
  a3[14] = 0;
  a3[15] = 0;
  return sub_29D935E88();
}

uint64_t sub_29D712A00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_29D933A58();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HypertensionNotificationsStatusSectionDataSource.HypertensionNotificationStatusItemLinkModel(0);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a1 unsatisfiedRequirementIdentifiers];
  type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
  v14 = sub_29D939F38();

  sub_29D712D90(v12, v14);

  v15 = *(v2 + qword_2A17B2C78);
  v16 = qword_2A17B0D68;
  v42 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_29D9334A8();
  v40 = v18;
  v41 = v17;
  v19 = [a1 unsatisfiedRequirementIdentifiers];
  v20 = sub_29D939F38();

  v21 = sub_29D7665A0(v20, sub_29D67BF28);
  v38 = v22;
  v39 = v21;

  v37 = 0x800000029D95BC00;
  v23 = [objc_opt_self() systemGrayColor];
  v25 = *v12;
  v24 = v12[1];
  v26 = *(v9 + 20);
  v27 = type metadata accessor for HypertensionNotificationsStatusDataSourceItem(0);
  sub_29D714544(v12 + v26, a2 + *(v27 + 52), type metadata accessor for HypertensionNotificationsStatusURLDestination);
  type metadata accessor for HypertensionNotificationsStatusCollectionViewCell(0);
  sub_29D713AB8(&qword_2A17B2CA0, type metadata accessor for HypertensionNotificationsStatusCollectionViewCell, &unk_29D9539E0);
  sub_29D935E88();
  v28 = sub_29D9350D8();
  v30 = v29;
  sub_29D933A48();
  v31 = sub_29D933A18();
  v33 = v32;
  (*(v43 + 8))(v8, v44);
  result = sub_29D7145AC(v12, type metadata accessor for HypertensionNotificationsStatusSectionDataSource.HypertensionNotificationStatusItemLinkModel);
  *a2 = v28;
  a2[1] = v30;
  v35 = v41;
  a2[2] = v42;
  a2[3] = v31;
  a2[4] = v33;
  a2[5] = v35;
  v36 = v39;
  a2[6] = v40;
  a2[7] = v36;
  a2[8] = v38;
  a2[9] = 0xD000000000000010;
  a2[10] = v37;
  a2[11] = v23;
  a2[12] = v25;
  a2[13] = v24;
  a2[14] = 0;
  a2[15] = 0;
  return result;
}

uint64_t sub_29D712D90@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v4 = sub_29D9346B8();
  v52 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D714178(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v51 - v12;
  v55 = *MEMORY[0x29EDBA650];
  v54 = &v55;
  v14 = sub_29D76C424(sub_29D7141DC, v53, a2);
  if (v14)
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v50 = 0xE000000000000000;
    v16 = sub_29D9334A8();
    v18 = v17;
    v19 = type metadata accessor for HypertensionNotificationsStatusSectionDataSource.HypertensionNotificationStatusItemLinkModel(0);
    result = (*(v10 + 56))(a1 + *(v19 + 20), 2, 2, v9);
    *a1 = v16;
    a1[1] = v18;
    return result;
  }

  v51 = v9;
  v55 = *MEMORY[0x29EDBA5D8];
  MEMORY[0x2A1C7C4A8](v14, v15);
  v50 = &v55;
  v21 = sub_29D76C424(sub_29D714870, (&v51 - 4), a2);
  if (v21 & 1) != 0 || (v55 = *MEMORY[0x29EDBA5D0], MEMORY[0x2A1C7C4A8](v21, v22), v50 = &v55, v23 = sub_29D76C424(sub_29D714870, (&v51 - 4), a2), (v23))
  {
    sub_29D73BA10();
    sub_29D9336E8();
LABEL_8:

    if (qword_2A17B0D68 != -1)
    {
      swift_once();
    }

    v50 = 0xE000000000000000;
LABEL_11:
    v25 = sub_29D9334A8();
    v27 = v26;
    v28 = *(type metadata accessor for HypertensionNotificationsStatusSectionDataSource.HypertensionNotificationStatusItemLinkModel(0) + 20);
    v29 = MEMORY[0x29EDB9B18];
    sub_29D7142AC(v13, a1 + v28, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
    (*(v10 + 56))(a1 + v28, 0, 2, v51);
    *a1 = v25;
    a1[1] = v27;
    return sub_29D71423C(v13, &qword_2A1A247B0, v29);
  }

  v55 = *MEMORY[0x29EDBA640];
  MEMORY[0x2A1C7C4A8](v23, v24);
  v50 = &v55;
  v30 = sub_29D76C424(sub_29D714870, (&v51 - 4), a2);
  if ((v30 & 1) == 0)
  {
    v55 = *MEMORY[0x29EDBA5C0];
    MEMORY[0x2A1C7C4A8](v30, v31);
    v50 = &v55;
    v32 = sub_29D76C424(sub_29D714870, (&v51 - 4), a2);
    if ((v32 & 1) == 0)
    {
      v55 = *MEMORY[0x29EDBA688];
      MEMORY[0x2A1C7C4A8](v32, v33);
      v50 = &v55;
      v36 = sub_29D76C424(sub_29D714870, (&v51 - 4), a2);
      if (v36)
      {
        v38 = [objc_opt_self() seedExpiredLinkURL];
      }

      else
      {
        v55 = *MEMORY[0x29EDBA600];
        MEMORY[0x2A1C7C4A8](v36, v37);
        v50 = &v55;
        v39 = sub_29D76C424(sub_29D714870, (&v51 - 4), a2);
        if ((v39 & 1) == 0)
        {
          v55 = *MEMORY[0x29EDBA620];
          MEMORY[0x2A1C7C4A8](v39, v40);
          v50 = &v55;
          v42 = sub_29D76C424(sub_29D714870, (&v51 - 4), a2);
          if (v42)
          {
            v44 = MEMORY[0x29EDC1720];
          }

          else
          {
            v55 = *MEMORY[0x29EDBA6A8];
            MEMORY[0x2A1C7C4A8](v42, v43);
            v50 = &v55;
            v45 = sub_29D76C424(sub_29D714870, (&v51 - 4), a2);
            if ((v45 & 1) == 0)
            {
              v55 = *MEMORY[0x29EDBA638];
              MEMORY[0x2A1C7C4A8](v45, v46);
              v50 = &v55;
              v48 = sub_29D76C424(sub_29D714870, (&v51 - 4), a2);
              if ((v48 & 1) == 0)
              {
                v55 = *MEMORY[0x29EDBA648];
                MEMORY[0x2A1C7C4A8](v48, v49);
                v50 = &v55;
                sub_29D76C424(sub_29D714870, (&v51 - 4), a2);
              }

              goto LABEL_14;
            }

            v44 = MEMORY[0x29EDC1728];
          }

          v47 = v52;
          (*(v52 + 104))(v7, *v44, v4);
          sub_29D934698();
          (*(v47 + 8))(v7, v4);
          if (qword_2A17B0D68 != -1)
          {
            swift_once();
          }

          v50 = 0xE000000000000000;
          goto LABEL_11;
        }

        v38 = [objc_opt_self() remoteDisabledLinkURL];
      }

      v41 = v38;
      sub_29D939D68();

      sub_29D9336E8();
      goto LABEL_8;
    }
  }

LABEL_14:
  if (qword_2A17B0C00 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for HypertensionNotificationsStatusSectionDataSource.HypertensionNotificationStatusItemLinkModel(0);
  v35 = sub_29D69C6C0(v34, qword_2A17D0888);
  return sub_29D714544(v35, a1, type metadata accessor for HypertensionNotificationsStatusSectionDataSource.HypertensionNotificationStatusItemLinkModel);
}

void sub_29D713690()
{
  sub_29D71423C(v0 + qword_2A17D08C0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);

  v1 = *(v0 + qword_2A17D08D0);
}

uint64_t sub_29D71370C()
{
  v0 = sub_29D935BA8();
  v1 = *(v0 + qword_2A17B2C78);

  sub_29D71423C(v0 + qword_2A17D08C0, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  v2 = *(v0 + qword_2A17D08D0);

  return swift_deallocClassInstance();
}

uint64_t sub_29D7137E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D937B88();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v4 = sub_29D934D58();
  sub_29D937B18();
  v5 = sub_29D934D48();
  a1[3] = v4;
  result = sub_29D713AB8(&qword_2A17B2C98, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
  a1[4] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_29D7138CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D935D08();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CB8();
  v7 = sub_29D935CF8();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_29D713A00()
{
  type metadata accessor for HypertensionNotificationsStatusCollectionViewCell(0);
  sub_29D713AB8(&qword_2A17B2CA0, type metadata accessor for HypertensionNotificationsStatusCollectionViewCell, &unk_29D9539E0);
  return sub_29D93A348();
}

uint64_t sub_29D713AB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_29D713B00(uint64_t a1)
{
  if (*(v1 + 80))
  {
    v2 = *(v1 + 88);
    if (v2)
    {
      v4 = objc_opt_self();
      v5 = v2;
      v6 = [v4 configurationWithFont:a1 scale:-1];
      sub_29D69567C(0, &qword_2A17B2CA8, 0x29EDC7AC8);
      v7 = sub_29D93A698();
      if (v7)
      {
        v8 = v7;
        v9 = [v7 imageWithConfiguration_];

        v10 = [v9 imageWithRenderingMode_];
        v11 = [v10 imageWithTintColor_];

        if (v11)
        {

          return v11;
        }
      }

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v13 = sub_29D937898();
      sub_29D69C6C0(v13, qword_2A1A2C008);
      v14 = sub_29D937878();
      v15 = sub_29D93A288();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_29D677000, v14, v15, "Unable to create image from symbol", v16, 2u);
        MEMORY[0x29ED6BE30](v16, -1, -1);
      }
    }
  }

  return 0;
}

uint64_t sub_29D713D00()
{
  v1 = *(v0 + 24);
  sub_29D935E88();
  return v1;
}

uint64_t sub_29D713D30(uint64_t a1)
{
  v2 = sub_29D713AB8(&qword_2A17B2CF0, type metadata accessor for HypertensionNotificationsStatusDataSourceItem, &unk_29D9437C0);

  return MEMORY[0x2A1C60910](a1, v2);
}

void sub_29D713DAC()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  v1 = sub_29D939D28();
  [v0 setLocalizedDateFormatFromTemplate_];

  qword_2A17D08B8 = v0;
}

uint64_t sub_29D713E24(void *a1)
{
  v3 = sub_29D933A58();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_2A17D08C0;
  v9 = sub_29D9371A8();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = qword_2A17D08C8;
  if (qword_2A17B0C10 != -1)
  {
    swift_once();
  }

  v11 = qword_2A17D08B8;
  *(v1 + v10) = qword_2A17D08B8;
  *(v1 + qword_2A17B2C78) = a1;
  v12 = *MEMORY[0x29EDC51D0];
  v13 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v14 = v11;
  v15 = [v13 initWithCategory:4 domainName:v12 healthStore:a1];
  *(v1 + qword_2A17D08D0) = v15;
  sub_29D714178(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29D9359D8();
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D775DB0(MEMORY[0x29EDCA190]);
  sub_29D933A48();
  sub_29D933A18();
  v16 = *(v4 + 8);
  v16(v7, v3);
  sub_29D9359C8();
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_29D93AA18();

  strcpy(v21, "MutableArray<");
  HIWORD(v21[1]) = -4864;
  sub_29D933A48();
  v17 = sub_29D933A18();
  v19 = v18;
  v16(v7, v3);
  MEMORY[0x29ED6A240](v17, v19);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  return sub_29D935B28();
}

void sub_29D714178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D71423C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D714178(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D7142AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D714178(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D71432C(uint64_t a1)
{
  v4 = *(sub_29D9371A8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29D6AC948;

  return sub_29D7112EC(a1, v6, v7, v8, v1 + v5);
}

void sub_29D714424(uint64_t a1)
{
  if (!qword_2A17B2CB0)
  {
    sub_29D714178(255, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    sub_29D6B7370(255, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
    v1 = sub_29D93A038();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2CB0);
    }
  }
}

void sub_29D7144EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D6B7370(255, a3, a4);
    v5 = sub_29D93AD48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D714544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7145AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D714634(uint64_t a1)
{
  result = type metadata accessor for HypertensionNotificationsStatusURLDestination(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_29D7146D8(uint64_t a1)
{
  sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
  if (v1 <= 0x3F)
  {
    sub_29D6BE91C();
    if (v2 <= 0x3F)
    {
      sub_29D7147C0(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for HypertensionNotificationsStatusURLDestination(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_29D7147C0(uint64_t a1)
{
  if (!qword_2A17B2CE0)
  {
    sub_29D69567C(255, &qword_2A17B2CE8, 0x29EDC7A00);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2CE0);
    }
  }
}

void sub_29D7148D4(uint64_t a1)
{
  sub_29D9339F8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKTimeScope(319);
    if (v2 <= 0x3F)
    {
      sub_29D714AAC(319, &qword_2A17B2D08, type metadata accessor for BloodPressureMinMaxCoordinate, MEMORY[0x29EDC9A40]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29D7149E8(uint64_t a1)
{
  result = sub_29D9339F8();
  if (v2 <= 0x3F)
  {
    result = sub_29D69567C(319, &qword_2A17B4700, 0x29EDBACF8);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_29D714AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D714B44(uint64_t a1)
{
  sub_29D714DD0(319, &unk_2A1A221C0, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    sub_29D714AAC(319, &qword_2A17B2120, type metadata accessor for BloodPressurePDFSampleInterval, MEMORY[0x29EDC9A40]);
    if (v2 <= 0x3F)
    {
      sub_29D714DD0(319, &qword_2A17B1378, &qword_2A17B1380, 0x29EDBAB10, MEMORY[0x29EDC9A40]);
      if (v3 <= 0x3F)
      {
        sub_29D9339F8();
        if (v4 <= 0x3F)
        {
          sub_29D69567C(319, &qword_2A17B2D38, 0x29EDBAA48);
          if (v5 <= 0x3F)
          {
            sub_29D714AAC(319, &qword_2A17B2D20, MEMORY[0x29EDB9950], MEMORY[0x29EDC9C68]);
            if (v6 <= 0x3F)
            {
              sub_29D714DD0(319, &qword_2A17B2D40, &qword_2A17B4920, 0x29EDBAE18, MEMORY[0x29EDC9C68]);
              if (v7 <= 0x3F)
              {
                sub_29D714AAC(319, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for HKBloodPressureClassificationGuidelines(319);
                  if (v9 <= 0x3F)
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

void sub_29D714DD0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D69567C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29D714E3C()
{
  result = qword_2A17B2D48;
  if (!qword_2A17B2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2D48);
  }

  return result;
}

uint64_t sub_29D714E90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D9339F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_29D714EF8(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D9339F8();
  sub_29D715264(&qword_2A17B1360, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29D939C98();
  sub_29D939C98();
  sub_29D93A718();
  sub_29D93A718();
  sub_29D93A718();
  MEMORY[0x29ED6B260](*(v1 + *(a1 + 36)));
  return sub_29D93AE98();
}

uint64_t sub_29D714FF4(uint64_t a1, uint64_t a2)
{
  sub_29D9339F8();
  sub_29D715264(&qword_2A17B1360, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29D939C98();
  sub_29D939C98();
  sub_29D93A718();
  sub_29D93A718();
  sub_29D93A718();
  return MEMORY[0x29ED6B260](*(v2 + *(a2 + 36)));
}

uint64_t sub_29D7150D8(uint64_t a1, uint64_t a2)
{
  sub_29D93AE58();
  sub_29D9339F8();
  sub_29D715264(&qword_2A17B1360, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29D939C98();
  sub_29D939C98();
  sub_29D93A718();
  sub_29D93A718();
  sub_29D93A718();
  MEMORY[0x29ED6B260](*(v2 + *(a2 + 36)));
  return sub_29D93AE98();
}

uint64_t sub_29D715264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D7152AC(uint64_t a1, uint64_t a2)
{
  if (sub_29D933988() & 1) != 0 && (v4 = type metadata accessor for BloodPressureMinMaxCoordinate(0), (sub_29D933988()) && (sub_29D69567C(0, &qword_2A1A21FD0, 0x29EDC9738), (sub_29D93A708()) && (sub_29D93A708() & 1) != 0 && (sub_29D93A708())
  {
    v5 = *(a1 + *(v4 + 36)) ^ *(a2 + *(v4 + 36)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_29D715378()
{
  v1 = *(v0 + 16);
  if (v1 <= 1)
  {
    if (!v1)
    {
      return v1;
    }

    v5 = 0xE500000000000000;
    v4 = 0x5045454C53;
  }

  else
  {
    v2 = 0xD000000000000013;
    v3 = 0x800000029D95BDC0;
    if (v1 != 3)
    {
      v2 = 0x5F4C5546444E494DLL;
      v3 = 0xEF534554554E494DLL;
    }

    if (v1 == 2)
    {
      v4 = 0x544847494557;
    }

    else
    {
      v4 = v2;
    }

    if (v1 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = v3;
    }
  }

  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD000000000000029, 0x800000029D95BD90);
  MEMORY[0x29ED6A240](v4, v5);

  MEMORY[0x29ED6A240](0x4C5449544255535FLL, 0xE900000000000045);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v1 = sub_29D9334A8();

  return v1;
}

void sub_29D715528(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_29D715840(v3, sub_29D716050, v1, *(v1 + 24));
  v6 = v5;
  if (!v3)
  {

    v4 = 0;
    v6 = 0;
  }

  sub_29D93AA18();
  sub_29D935E88();

  MEMORY[0x29ED6A240](0x4946415F444E415FLL, 0xEF454C5449545F42);
  v7 = sub_29D939D28();

  v8 = HKUIAFibBurdenLocalizedString();

  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = sub_29D939D68();
  v11 = v10;

  sub_29D93AA18();

  MEMORY[0x29ED6A240](0x4946415F444E415FLL, 0xEE0059444F425F42);
  v12 = sub_29D939D28();

  v13 = HKUIAFibBurdenLocalizedString();

  if (!v13)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v14 = sub_29D939D68();
  v16 = v15;

  sub_29D93AA18();

  MEMORY[0x29ED6A240](0xD000000000000011, 0x800000029D95BD70);
  v17 = sub_29D939D28();

  v18 = HKUIAFibBurdenLocalizedString();

  if (v18)
  {
    v19 = sub_29D939D68();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *a1 = v9;
  a1[1] = v11;
  a1[2] = v14;
  a1[3] = v16;
  a1[4] = v19;
  a1[5] = v21;
  a1[6] = v4;
  a1[7] = v6;
}

void (*sub_29D715840(char a1, uint64_t a2, uint64_t a3, void *a4))()
{
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = v4;
  v10 = a4;

  return sub_29D716058;
}

void sub_29D7158CC(void *a1, uint64_t a2, uint64_t (*a3)(void), NSObject *a4, uint64_t a5)
{
  v49 = a4;
  v7 = a2;
  v9 = sub_29D9339F8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 displayTypeController];
  if (v14)
  {
    v15 = v14;
    v16 = sub_29D73439C(v7);
    v17 = [v15 displayTypeForObjectType_];

    if (v17)
    {
      v18 = HKHRAFibBurdenLogForCategory();
      v19 = a5;
      v20 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v18 healthDataSource:a1];

      v21 = sub_29D73439C(v7);
      v22 = [objc_allocWithZone(MEMORY[0x29EDC43F8]) initWithSampleType:v21 context:1];

      v23 = swift_allocObject();
      *(v23 + 16) = v19;
      aBlock[4] = sub_29D71606C;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D8E44F0;
      aBlock[3] = &unk_2A24426B8;
      v24 = _Block_copy(aBlock);
      v25 = a3;
      v26 = v22;
      v27 = v20;
      v28 = v26;

      [v27 submitEvent:v28 completion:v24];
      _Block_release(v24);

      v29 = [objc_opt_self() sharedInstanceForHealthStore_];
      sub_29D9339E8();
      v30 = sub_29D933958();
      (*(v10 + 8))(v13, v9);
      v31 = [v17 wd:a1 addDataViewControllerWithHealthStore:v29 healthToolBox:v30 initialStartDate:?];

      v32 = v25();
      if (v32)
      {
        v33 = v32;
        v34 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
        [v33 presentViewController:v34 animated:1 completion:0];
      }
    }

    else
    {
      if (qword_2A1A24660 != -1)
      {
        swift_once();
      }

      v35 = sub_29D937898();
      sub_29D69C6C0(v35, qword_2A1A2BF28);
      v49 = sub_29D937878();
      v36 = sub_29D93A298();
      if (os_log_type_enabled(v49, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v51 = v38;
        *v37 = 136315394;
        aBlock[0] = a5;
        swift_getMetatypeMetadata();
        v39 = sub_29D939DA8();
        v41 = sub_29D6C2364(v39, v40, &v51);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        v42 = sub_29D73439C(v7);
        v43 = [v42 identifier];

        v44 = sub_29D939D68();
        v46 = v45;

        v47 = sub_29D6C2364(v44, v46, &v51);

        *(v37 + 14) = v47;
        _os_log_impl(&dword_29D677000, v49, v36, "[%s] Unable to find display type for sample type with identifier %s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v38, -1, -1);
        MEMORY[0x29ED6BE30](v37, -1, -1);
      }

      else
      {
        v48 = v49;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29D715DDC(int a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v6 = sub_29D937898();
    sub_29D69C6C0(v6, qword_2A1A2BF28);
    v7 = a2;
    v8 = sub_29D937878();
    v9 = sub_29D93A288();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      v20 = a3;
      *v10 = 136315394;
      swift_getMetatypeMetadata();
      v12 = sub_29D939DA8();
      v14 = sub_29D6C2364(v12, v13, &v19);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v20 = a2;
      v15 = a2;
      sub_29D6A0CD0();
      v16 = sub_29D939DA8();
      v18 = sub_29D6C2364(v16, v17, &v19);

      *(v10 + 14) = v18;
      _os_log_impl(&dword_29D677000, v8, v9, "[%s] Error when sending life factor logging initiated analytics event: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v11, -1, -1);
      MEMORY[0x29ED6BE30](v10, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_29D715FE4()
{
  sub_29D69417C((v0 + 32));
  MEMORY[0x29ED6BF30](v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_29D716074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D71608C(void *a1, char a2)
{
  sub_29D7186E8(0, &qword_2A1A21F88, MEMORY[0x29EDC9E88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v11[-v8];
  sub_29D693E2C(a1, a1[3]);
  sub_29D7184A8();
  sub_29D93AED8();
  v11[15] = a2;
  sub_29D7184FC();
  sub_29D93AD18();
  return (*(v6 + 8))(v9, v5);
}

void sub_29D7161F8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_29D71627C(uint64_t a1)
{
  v2 = sub_29D7184A8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D7162B8(uint64_t a1)
{
  v2 = sub_29D7184A8();

  return MEMORY[0x2A1C73280](a1, v2);
}

void *sub_29D7162F4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_29D718550(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_29D71633C()
{
  v1 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController____lazy_storage___tileView);
  }

  else
  {
    sub_29D936A88();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    [v6 setBackgroundColor_];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_29D71641C()
{
  v1 = v0;
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937858();
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_29D677000, v7, v8, "AFibBurdenRescindedTileViewController loaded", v9, 2u);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for AFibBurdenRescindedTileViewController(0);
  v13.receiver = v1;
  v13.super_class = v10;
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  sub_29D71667C();
  v11 = sub_29D71633C();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D936A48();
}

void sub_29D7165E0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_29D717134();
  }
}

void sub_29D71667C()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_29D71633C();
  [v2 addSubview_];

  sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D943A10;
  v5 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController____lazy_storage___tileView;
  v6 = [*&v0[OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController____lazy_storage___tileView] topAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v10;
  v11 = [*&v0[v5] bottomAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 bottomAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v4 + 40) = v15;
  v16 = [*&v0[v5] leadingAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v4 + 48) = v20;
  v21 = [*&v0[v5] trailingAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 trailingAnchor];

  v26 = [v21 constraintEqualToAnchor_];
  *(v4 + 56) = v26;
  sub_29D6D37A4();
  v27 = sub_29D939F18();

  [v24 activateConstraints_];

  v28 = sub_29D7169A0();

  sub_29D716BB4(v28);
}

uint64_t sub_29D7169A0()
{
  v1 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_context;
  swift_beginAccess();
  sub_29D718208(v0 + v1, v12);
  v2 = v13;
  if (v13)
  {
    v3 = sub_29D693E2C(v12, v13);
    v4 = *(v2 - 8);
    MEMORY[0x2A1C7C4A8](v3, v3);
    v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
    (*(v4 + 16))(v6);
    sub_29D7182DC(v12, &qword_2A17B8190, sub_29D7181A4);
    v7 = sub_29D9365B8();
    v9 = v8;
    (*(v4 + 8))(v6, v2);
    if (v9 >> 60 != 15)
    {
      sub_29D9330D8();
      swift_allocObject();
      sub_29D9330C8();
      sub_29D718428();
      sub_29D9330B8();
      sub_29D71847C(v7, v9);

      return LOBYTE(v12[0]);
    }
  }

  else
  {
    sub_29D7182DC(v12, &qword_2A17B8190, sub_29D7181A4);
  }

  return 5;
}

void sub_29D716BB4(unsigned __int8 a1)
{
  ObjectType = swift_getObjectType();
  if (a1 > 2u)
  {
    if (a1 - 3 < 2)
    {
      goto LABEL_7;
    }

    v8 = ObjectType;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v9, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v8;
    sub_29D9371C8();
LABEL_17:

    return;
  }

  if (!a1)
  {
    v6 = ObjectType;
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v7, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v6;
    sub_29D9371F8();
    goto LABEL_17;
  }

  if (a1 != 1)
  {
    if (qword_2A17B0D48 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_7:
  if (qword_2A17B0D48 != -1)
  {
LABEL_18:
    swift_once();
  }

LABEL_8:
  sub_29D9334A8();
  v4 = sub_29D939D28();

  [v1 setTitle_];

  v5 = sub_29D71633C();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D936A58();
}

uint64_t sub_29D716FA0(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D95BF60);
  MEMORY[0x29ED6A240](0xD00000000000001BLL, 0x800000029D95BFB0);
  return 91;
}

uint64_t sub_29D71706C(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000010, 0x800000029D95BF60);
  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D95BF80);
  return 91;
}

double sub_29D717134()
{
  v1 = 1 << sub_29D7169A0();
  if ((v1 & 0x1A) != 0)
  {
    v2 = [objc_opt_self() remoteDisabledLinkURL];
LABEL_8:
    v6 = v2;
    v7 = sub_29D939D68();
    v9 = v8;

    sub_29D717370(v7, v9);

    return result;
  }

  if ((v1 & 0x21) == 0)
  {
    v2 = [objc_opt_self() seedExpiredLinkURL];
    goto LABEL_8;
  }

  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v3, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = v0;
  v4 = v0;
  sub_29D9371F8();

  return result;
}

uint64_t sub_29D7172B0()
{
  BYTE8(v2) = 0;
  sub_29D93AA18();
  MEMORY[0x29ED6A240](0xD000000000000034, 0x800000029D95BE60);
  *&v2 = sub_29D7169A0();
  sub_29D6C5040(0, &qword_2A17B2D90, &type metadata for AFibBurdenRescindedState, MEMORY[0x29EDC9C68]);
  v0 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v0);

  return *(&v2 + 1);
}

uint64_t sub_29D717370(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_29D718288(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v26[-v5];
  v7 = sub_29D9336F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v26[-v14];
  sub_29D9336E8();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_29D7182DC(v6, &qword_2A1A247B0, MEMORY[0x29EDB9B18]);
  }

  v28 = *(v8 + 32);
  v29 = v8 + 32;
  v28(v15, v6, v7);
  v17 = [objc_opt_self() defaultWorkspace];
  if (v17)
  {
    v18 = v17;
    v19 = sub_29D9336B8();
    sub_29D73F010(MEMORY[0x29EDCA190]);
    v20 = sub_29D939C58();

    v27 = [v18 openSensitiveURL:v19 withOptions:v20];
  }

  else
  {
    v27 = 2;
  }

  v30 = ObjectType;
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v21, qword_2A1A2BF58);
  (*(v8 + 16))(v12, v15, v7);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = v22 + v9;
  v24 = (v22 + v9) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v28((v25 + v22), v12, v7);
  *(v25 + v23) = v27;
  *(v25 + v24 + 8) = v30;
  v31 = 0;
  sub_29D9371C8();

  return (*(v8 + 8))(v15, v7);
}

uint64_t sub_29D7176FC(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v3 = a2;
  sub_29D93AA18();

  v4 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v4);

  MEMORY[0x29ED6A240](0x696E65704F203A5DLL, 0xEB0000000020676ELL);
  sub_29D9336F8();
  sub_29D7183C8(&qword_2A17B5570, MEMORY[0x29EDB9B18], MEMORY[0x29EDB9B40]);
  v5 = sub_29D93AD38();
  MEMORY[0x29ED6A240](v5);

  MEMORY[0x29ED6A240](0x736563637573202CLL, 0xEB00000000203A73);
  if (v3 == 2)
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v7 = sub_29D939DA8();
    v6 = v8;
  }

  MEMORY[0x29ED6A240](v7, v6);

  return 91;
}

id sub_29D717880(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_context];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v3[OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController____lazy_storage___tileView] = 0;
  v7 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_detail;
  v8 = *MEMORY[0x29EDC2198];
  v9 = sub_29D935878();
  (*(*(v9 - 8) + 104))(&v3[v7], v8, v9);
  v3[OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_showsSeparator] = 0;
  if (a2)
  {
    v10 = sub_29D939D28();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for AFibBurdenRescindedTileViewController(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id sub_29D7179F8(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController____lazy_storage___tileView] = 0;
  v4 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_detail;
  v5 = *MEMORY[0x29EDC2198];
  v6 = sub_29D935878();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  v1[OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_showsSeparator] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AFibBurdenRescindedTileViewController(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_29D717B0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenRescindedTileViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AFibBurdenRescindedTileViewController(uint64_t a1)
{
  result = qword_2A17B2D68;
  if (!qword_2A17B2D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D717C40(uint64_t a1)
{
  result = sub_29D935878();
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

uint64_t sub_29D717CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_context;
  swift_beginAccess();
  return sub_29D718208(v1 + v3, a1);
}

uint64_t sub_29D717D44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_context;
  swift_beginAccess();
  sub_29D718124(a1, v1 + v3);
  swift_endAccess();
  if ([v1 isViewLoaded])
  {
    v4 = sub_29D7169A0();
    sub_29D716BB4(v4);
  }

  return sub_29D7182DC(a1, &qword_2A17B8190, sub_29D7181A4);
}

void (*sub_29D717DE4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D717E48;
}

void sub_29D717E48(uint64_t a1, char a2)
{
  swift_endAccess();
  if (a2 & 1) == 0 && ([*(a1 + 24) isViewLoaded])
  {
    v4 = sub_29D7169A0();
    sub_29D716BB4(v4);
  }
}

uint64_t sub_29D717EB8@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x29EDC22C0];
  v3 = sub_29D935C78();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D717F44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63158](a1, WitnessTable);
}

uint64_t sub_29D717FB0()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_29D939D68();

  return v3;
}

uint64_t sub_29D718018@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart37AFibBurdenRescindedTileViewController_detail;
  v5 = sub_29D935878();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D718124(uint64_t a1, uint64_t a2)
{
  sub_29D718288(0, &qword_2A17B8190, sub_29D7181A4);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D7181A4()
{
  result = qword_2A17B2D88;
  if (!qword_2A17B2D88)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B2D88);
  }

  return result;
}

uint64_t sub_29D718208(uint64_t a1, uint64_t a2)
{
  sub_29D718288(0, &qword_2A17B8190, sub_29D7181A4);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D718288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D7182DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D718288(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D718338()
{
  v1 = *(sub_29D9336F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);
  v5 = *(v0 + v3);

  return sub_29D7176FC(v0 + v2, v5, v4);
}

uint64_t sub_29D7183C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D718428()
{
  result = qword_2A17B2D98;
  if (!qword_2A17B2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2D98);
  }

  return result;
}

uint64_t sub_29D71847C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29D6AA284(result, a2);
  }

  return result;
}

unint64_t sub_29D7184A8()
{
  result = qword_2A1A23580;
  if (!qword_2A1A23580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23580);
  }

  return result;
}

unint64_t sub_29D7184FC()
{
  result = qword_2A1A24130[0];
  if (!qword_2A1A24130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A24130);
  }

  return result;
}

void *sub_29D718550(void *a1)
{
  sub_29D7186E8(0, &qword_2A17B2DA0, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v11[-v7];
  v9 = sub_29D693E2C(a1, a1[3]);
  sub_29D7184A8();
  sub_29D93AEC8();
  if (!v1)
  {
    sub_29D71874C();
    sub_29D93AC88();
    (*(v5 + 8))(v8, v4);
    v9 = v11[15];
  }

  sub_29D69417C(a1);
  return v9;
}

void sub_29D7186E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D7184A8();
    v7 = a3(a1, &type metadata for AFibBurdenRescindedFeedItemConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D71874C()
{
  result = qword_2A17B2DA8;
  if (!qword_2A17B2DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2DA8);
  }

  return result;
}

unint64_t sub_29D7187B4()
{
  result = qword_2A17B2DB0;
  if (!qword_2A17B2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2DB0);
  }

  return result;
}

unint64_t sub_29D71880C()
{
  result = qword_2A1A23570;
  if (!qword_2A1A23570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23570);
  }

  return result;
}

unint64_t sub_29D718864()
{
  result = qword_2A1A23578;
  if (!qword_2A1A23578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23578);
  }

  return result;
}

id sub_29D7188B8()
{
  v1 = OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___bulletLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___bulletLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___bulletLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v5 setAdjustsFontForContentSizeCategory_];
    sub_29D718DF8();
    v6 = sub_29D93A658();
    [v5 setFont_];

    LODWORD(v7) = 1148846080;
    [v5 setContentHuggingPriority:0 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [v5 setContentCompressionResistancePriority:0 forAxis:v8];
    v9 = sub_29D939D28();
    [v5 setText_];

    v10 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_29D718A00()
{
  v1 = OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___textLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___textLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___textLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v5 setAdjustsFontForContentSizeCategory_];
    sub_29D718DF8();
    v6 = sub_29D93A658();
    [v5 setFont_];

    [v5 setNumberOfLines_];
    v7 = v5;
    LODWORD(v8) = 1132068864;
    [v7 setContentHuggingPriority:0 forAxis:v8];
    LODWORD(v9) = 1132068864;
    [v7 setContentCompressionResistancePriority:0 forAxis:v9];
    v10 = sub_29D939D28();
    [v7 setText_];

    if (*(v4 + OBJC_IVAR____TtC5Heart17BulletedLabelView_textAccessibilityIdentifier + 8))
    {
      v11 = sub_29D939D28();
    }

    else
    {
      v11 = 0;
    }

    [v7 setAccessibilityIdentifier_];

    v12 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_29D718BA8()
{
  v1 = OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart17BulletedLabelView____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7C90]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAlignment_];
    [v4 setAxis_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D718D1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BulletedLabelView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29D718DF8()
{
  result = qword_2A17B47B0;
  if (!qword_2A17B47B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B47B0);
  }

  return result;
}

uint64_t sub_29D718E64()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D718F08()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D718FA8()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D71904C()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D6AA400();
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

id sub_29D719100()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;
  v1 = sub_29D939D28();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29D7191F0()
{
  sub_29D719C5C(0);
  v0 = sub_29D934548();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D943DC0;
  v52 = v4;
  v5 = v4 + v3;
  *v5 = sub_29D719100();
  *(v5 + 8) = 0;
  v6 = *(v1 + 104);
  (v6)(v5, *MEMORY[0x29EDC1608], v0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v7 = (v5 + v2);
  *v7 = sub_29D9334A8();
  v7[1] = v8;
  (v6)(v5 + v2, *MEMORY[0x29EDC1610], v0);
  v9 = (v5 + 2 * v2);
  *v9 = sub_29D9334A8();
  v9[1] = v10;
  v9[2] = 0;
  v53 = *MEMORY[0x29EDC15D0];
  v6(v9);
  v11 = v5 + 3 * v2;
  *v11 = sub_29D9334A8();
  *(v11 + 8) = v12;
  *(v11 + 16) = 0;
  v13 = *MEMORY[0x29EDC1630];
  (v6)(v11, v13, v0);
  v14 = v5 + 4 * v2;
  *v14 = sub_29D9334A8();
  *(v14 + 8) = v15;
  *(v14 + 16) = 0;
  (v6)(v14, v13, v0);
  v16 = v5 + 5 * v2;
  *v16 = sub_29D9334A8();
  *(v16 + 8) = v17;
  *(v16 + 16) = 0;
  (v6)(v16, v13, v0);
  v18 = v5 + 6 * v2;
  *v18 = sub_29D9334A8();
  *(v18 + 8) = v19;
  *(v18 + 16) = 0;
  (v6)(v18, v13, v0);
  v20 = (v5 + 7 * v2);
  *v20 = sub_29D9334A8();
  v20[1] = v21;
  v20[2] = 0;
  (v6)(v20, v53, v0);
  v22 = v5 + 8 * v2;
  *v22 = sub_29D9334A8();
  *(v22 + 8) = v23;
  *(v22 + 16) = 0;
  (v6)(v22, v13, v0);
  v24 = v5 + 9 * v2;
  *v24 = sub_29D9334A8();
  *(v24 + 8) = v25;
  *(v24 + 16) = 0;
  (v6)(v24, v13, v0);
  v26 = (v5 + 10 * v2);
  *v26 = sub_29D9334A8();
  v26[1] = v27;
  v26[2] = 0;
  (v6)(v26, v53, v0);
  v28 = v5 + 11 * v2;
  *v28 = sub_29D9334A8();
  *(v28 + 8) = v29;
  *(v28 + 16) = 0;
  (v6)(v28, v13, v0);
  v30 = (v5 + 12 * v2);
  *v30 = sub_29D9334A8();
  v30[1] = v31;
  v30[2] = 0;
  (v6)(v30, v53, v0);
  v32 = v5 + 13 * v2;
  *v32 = sub_29D9334A8();
  *(v32 + 8) = v33;
  *(v32 + 16) = 0;
  (v6)(v32, v13, v0);
  v34 = v5 + 14 * v2;
  *v34 = sub_29D9334A8();
  *(v34 + 8) = v35;
  *(v34 + 16) = 0;
  (v6)(v34, v13, v0);
  v36 = v5 + 15 * v2;
  *v36 = sub_29D9334A8();
  *(v36 + 8) = v37;
  *(v36 + 16) = 0;
  (v6)(v36, v13, v0);
  v38 = v5 + 16 * v2;
  *v38 = sub_29D9334A8();
  *(v38 + 8) = v39;
  *(v38 + 16) = 0;
  (v6)(v38, v13, v0);
  v40 = (v5 + 17 * v2);
  v54 = sub_29D9334A8();
  v42 = v41;
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29D943DD0;
  *(v43 + 32) = sub_29D9334A8();
  *(v43 + 40) = v44;
  *(v43 + 48) = sub_29D9334A8();
  *(v43 + 56) = v45;
  *(v43 + 64) = sub_29D9334A8();
  *(v43 + 72) = v46;
  *(v43 + 80) = sub_29D9334A8();
  *(v43 + 88) = v47;
  *(v43 + 96) = sub_29D9334A8();
  *(v43 + 104) = v48;
  *(v43 + 112) = sub_29D9334A8();
  *(v43 + 120) = v49;
  *(v43 + 128) = sub_29D9334A8();
  *(v43 + 136) = v50;
  *v40 = v54;
  v40[1] = v42;
  v40[2] = v43;
  (v6)(v40, *MEMORY[0x29EDC15F0], v0);
  return v52;
}

void sub_29D719C5C(uint64_t a1)
{
  if (!qword_2A17B1100)
  {
    sub_29D934548();
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1100);
    }
  }
}

BOOL sub_29D719D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_29D71BBF8(a4, a5, a6);
  }

  while ((sub_29D939CF8() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_29D719E5C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29D936DB8();
  *a3 = sub_29D9350D8();
  a3[1] = v6;
  a3[2] = 0xD000000000000013;
  a3[3] = 0x800000029D944030;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  a3[4] = sub_29D9334A8();
  a3[5] = v7;
  a3[6] = a1;

  return sub_29D679D3C(a2, (a3 + 7));
}

uint64_t sub_29D719F60@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D937B88();
  v3 = MEMORY[0x29EDC7800];
  a1[3] = v2;
  a1[4] = v3;
  sub_29D693F78(a1);
  sub_29D937B38();
  sub_29D935E88();
  return sub_29D937B48();
}

uint64_t sub_29D719FD0()
{
  v1 = *(v0 + 32);
  sub_29D935E88();
  return v1;
}

uint64_t sub_29D71A004()
{
  v1 = *(v0 + 16);
  sub_29D935E88();
  return v1;
}

uint64_t sub_29D71A034(uint64_t a1)
{
  v2 = sub_29D71AF54();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29D71A080(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_29D93AD78(), result = 0, (v5 & 1) != 0))
  {
    if (a1[4] == a2[4] && a1[5] == a2[5])
    {
      return 1;
    }

    else
    {

      return sub_29D93AD78();
    }
  }

  return result;
}

uint64_t sub_29D71A108()
{
  sub_29D93AE58();
  sub_29D939E18();
  sub_29D939E18();
  return sub_29D93AE98();
}

uint64_t sub_29D71A158(uint64_t a1)
{
  sub_29D939E18();

  return sub_29D939E18();
}

uint64_t sub_29D71A198(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D939E18();
  sub_29D939E18();
  return sub_29D93AE98();
}

uint64_t sub_29D71A1E4()
{
  sub_29D71B6B0(0, &unk_2A17B5520, MEMORY[0x29EDC7770], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = &v17 - v2;
  v4 = sub_29D937928();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9378C8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71B6B0(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29D937948();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D93DDB0;
  (*(v10 + 104))(v13, *MEMORY[0x29EDC7768], v9);
  v15 = sub_29D9378D8();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_29D937918();
  sub_29D937908();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  return v14;
}

uint64_t sub_29D71A4F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_29D71B058();
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_29D71B0AC(v2, v4 + 16);
}

uint64_t sub_29D71A550(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenOnboardingPresentationContext(0);
  v6 = MEMORY[0x2A1C7C4A8](v4, v5);
  v82 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v70 - v9;
  v11 = sub_29D9350C8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D93A3A8();
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v16, qword_2A1A2BF58);
  v91[0] = 0;
  sub_29D9371C8();
  v17 = *(a2 + 48);
  sub_29D93A388();
  sub_29D6945AC(a2 + 56, v90);
  (*(v12 + 16))(v10, v15, v11);
  swift_storeEnumTagMultiPayload();
  sub_29D71B6B0(0, &qword_2A17B2E10, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
  v81 = a1;
  v18 = *(v12 + 72);
  v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D943EA0;
  v21 = v20 + v19;
  v22 = *MEMORY[0x29EDC1D20];
  v80 = v12;
  v23 = *(v12 + 104);
  v23(v21, v22, v11);
  v23(v21 + v18, *MEMORY[0x29EDC1D68], v11);
  v24 = *MEMORY[0x29EDC1D80];
  v79 = v11;
  v23(v21 + 2 * v18, v24, v11);
  v25 = sub_29D719D54(v15, v20, MEMORY[0x29EDC1D90], &qword_2A17B2E20, MEMORY[0x29EDC1D90], MEMORY[0x29EDC1D98]);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = type metadata accessor for AFibBurdenOnboardingController();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = 0;
  v27[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_navigateToDetailRoomUponOnboardingCompletion] = v25;
  v89.receiver = v27;
  v89.super_class = v26;
  v77 = objc_msgSendSuper2(&v89, sel_initWithNibName_bundle_, 0, 0);
  [v77 setModalPresentationStyle_];
  v28 = *MEMORY[0x29EDBA6B0];
  v29 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
  v78 = v15;
  v30 = [v29 initWithFeatureIdentifier:v28 healthStore:v17];
  v31 = *MEMORY[0x29EDBA6F8];
  v32 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
  v73 = v17;
  v33 = [v32 initWithFeatureIdentifier:v31 healthStore:v17];
  v34 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
  v35 = v30;
  v75 = v35;
  v36 = [v34 initWithFeatureIdentifier:v28 healthStore:v17];
  sub_29D6945AC(v90, &v86);
  v76 = v33;
  v37 = sub_29D71B714(v35, v36, v76, &v86);
  v74 = v37;

  sub_29D6945AC(v91, &v86);
  sub_29D6945AC(v90, &v83);
  type metadata accessor for AFibBurdenOnboardingViewControllerFactory();
  v38 = swift_allocObject();
  sub_29D679D3C(&v86, v38 + 16);
  sub_29D679D3C(&v83, v38 + 64);
  *(v38 + 56) = 2;
  v39 = sub_29D933F18();

  v40 = sub_29D933F08();
  v41 = type metadata accessor for AFibBurdenOnboardingFlowManager();
  v87 = v41;
  v88 = &off_2A244DAB0;
  *&v86 = v37;
  v84 = v39;
  v85 = &off_2A24417F8;
  *&v83 = v40;
  v42 = type metadata accessor for AFibBurdenOnboardingModel();
  v43 = swift_allocObject();
  v44 = sub_29D693DDC(&v86, v41);
  v71 = &v70;
  MEMORY[0x2A1C7C4A8](v44, v44);
  v46 = (&v70 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = sub_29D693DDC(&v83, v84);
  v72 = v10;
  MEMORY[0x2A1C7C4A8](v48, v48);
  v50 = (&v70 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50);
  v52 = *v46;
  v53 = *v50;
  v43[5] = v41;
  v43[6] = &off_2A244DAB0;
  v43[2] = v52;
  v43[10] = v39;
  v43[11] = &off_2A24417F8;
  v43[7] = v53;
  sub_29D69417C(&v83);
  sub_29D69417C(&v86);
  v54 = v82;
  sub_29D71B998(v10, v82);

  v55 = HKHRAFibBurdenLogForCategory();
  v56 = objc_allocWithZone(MEMORY[0x29EDBAA00]);
  v57 = v73;
  v58 = [v56 initWithLoggingCategory:v55 healthDataSource:v73];

  v87 = v42;
  v88 = &off_2A2441928;
  *&v86 = v43;
  type metadata accessor for AFibBurdenOnboardingCoordinator(0);
  v59 = swift_allocObject();
  v60 = sub_29D693DDC(&v86, v42);
  v71 = &v70;
  MEMORY[0x2A1C7C4A8](v60, v60);
  v62 = (&v70 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = *v62;
  v84 = v42;
  v85 = &off_2A2441928;
  *&v83 = v64;
  *(v59 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber) = 0;
  v65 = v59 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
  *(v59 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_29D6945AC(&v83, v59 + 16);
  sub_29D71B998(v54, v59 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext);
  *(v65 + 8) = &off_2A24497D8;
  v66 = v77;
  swift_unknownObjectWeakAssign();

  *(v59 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_viewFactory) = v38;
  *(v59 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_healthStore) = v57;
  *(v59 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager) = v58;
  v67 = v57;

  v68 = v58;
  sub_29D862C98();

  sub_29D71B9FC(v54);
  sub_29D69417C(&v83);
  sub_29D69417C(&v86);

  sub_29D71B9FC(v72);
  sub_29D69417C(v90);
  sub_29D69417C(v91);
  *&v66[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = v59;

  [v81 presentViewController:v66 animated:1 completion:0];

  return (*(v80 + 8))(v78, v79);
}

unint64_t sub_29D71AF54()
{
  result = qword_2A17B2DE0;
  if (!qword_2A17B2DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2DE0);
  }

  return result;
}

unint64_t sub_29D71AFAC()
{
  result = qword_2A17B2DE8;
  if (!qword_2A17B2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2DE8);
  }

  return result;
}

unint64_t sub_29D71B004()
{
  result = qword_2A17B2DF0;
  if (!qword_2A17B2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2DF0);
  }

  return result;
}

unint64_t sub_29D71B058()
{
  result = qword_2A17B2DF8;
  if (!qword_2A17B2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2DF8);
  }

  return result;
}

uint64_t sub_29D71B0E4(void *a1)
{
  v38 = sub_29D937898();
  v36 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38, v3);
  v37 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29D71B6B0(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  sub_29D71B6B0(0, &qword_2A17B2B20, MEMORY[0x29EDC4378], v5);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = v33 - v10;
  v12 = sub_29D939A78();
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v35 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71B0AC(v1, &v40);
  v15 = swift_allocObject();
  v16 = v43;
  *(v15 + 56) = v42;
  *(v15 + 72) = v16;
  v17 = v45;
  *(v15 + 88) = v44;
  *(v15 + 104) = v17;
  v18 = v41;
  *(v15 + 24) = v40;
  *(v15 + 16) = a1;
  *(v15 + 40) = v18;
  v39 = v1;
  v19 = *(v1 + 48);
  v20 = *MEMORY[0x29EDBA6B0];
  v21 = type metadata accessor for AFibBurdenFeatureRegulatoryInfoTransformProvider(0);
  swift_allocObject();
  v34 = a1;
  v33[2] = v19;
  v33[1] = v20;
  v22 = sub_29D939A98();
  *(&v41 + 1) = v21;
  *&v42 = MEMORY[0x29EDC43B8];
  *&v40 = v22;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  v23 = objc_opt_self();

  v24 = [v23 remoteDisabledLinkURL];
  sub_29D939D68();

  sub_29D9336E8();

  sub_29D939A48();
  v25 = sub_29D939A58();
  (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v26 = v38;
  v27 = sub_29D69C6C0(v38, qword_2A1A2C008);
  (*(v36 + 16))(v37, v27, v26);
  sub_29D939A68();
  sub_29D71B61C(0);
  v29 = objc_allocWithZone(v28);
  v30 = sub_29D939A28();
  sub_29D71B0AC(v39, &v40);
  v31 = v30;
  [v34 showAdaptively:v31 sender:sub_29D93ADA8()];

  return sub_29D936978();
}

void sub_29D71B61C(uint64_t a1)
{
  if (!qword_2A17B2E00)
  {
    sub_29D939A78();
    sub_29D71BBF8(&qword_2A17B2E08, MEMORY[0x29EDC4398], MEMORY[0x29EDC4390]);
    v1 = sub_29D939A38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2E00);
    }
  }
}

void sub_29D71B6B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_29D71B714(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for AFibBurdenOnboardingFlowManager.State(0);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v13 = a2;
  v14 = HKPreferredRegulatoryDomainProvider();
  sub_29D6945AC(a4, v21);
  type metadata accessor for AFibBurdenOnboardingFlowManager();
  v15 = swift_allocObject();
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v16 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v16 = MEMORY[0x29EDCA1A0];
  }

  v15[12] = v16;
  v17 = sub_29D9371A8();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  *&v11[*(v8 + 20)] = 0;
  v11[*(v8 + 24)] = 0;
  sub_29D71BA60(0);
  v18 = swift_allocObject();
  *(v18 + ((*(*v18 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_29D71BAC8(v11, v18 + *(*v18 + *MEMORY[0x29EDC9DE8] + 16));
  v15[13] = v18;
  v15[2] = a1;
  v15[3] = sub_29D71BA58;
  v15[4] = v12;
  v15[5] = a3;
  v15[6] = v14;
  sub_29D6945AC(v21, (v15 + 7));

  swift_unknownObjectRetain();
  sub_29D8F0A70();

  sub_29D936978();
  sub_29D69417C(a4);
  sub_29D69417C(v21);
  return v15;
}

uint64_t sub_29D71B998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenOnboardingPresentationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D71B9FC(uint64_t a1)
{
  v2 = type metadata accessor for AFibBurdenOnboardingPresentationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D71BA60(uint64_t a1)
{
  if (!qword_2A17B2E18)
  {
    type metadata accessor for AFibBurdenOnboardingFlowManager.State(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_29D93AA88();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2E18);
    }
  }
}

uint64_t sub_29D71BAC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenOnboardingFlowManager.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_29D71BB2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_29D71BB48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_29D71BB90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D71BBF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_29D71BC44@<X0>(uint64_t a1@<X8>)
{
  sub_29D71BF90();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71BFE0(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D943EA0;
  v9 = objc_opt_self();
  result = [v9 _quantityTypeWithCode_];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = result;
  v16 = a1;
  *(v8 + 56) = &_s39AFibBurdenSharableSummaryChartComponentVN;
  *(v8 + 64) = sub_29D71C09C();
  *(v8 + 32) = v11;
  *(v8 + 40) = 0xD00000000000001ELL;
  *(v8 + 48) = 0x800000029D95C670;
  result = [v9 _quantityTypeWithCode_];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = result;
  type metadata accessor for NotOnboardedIsOnboardedProvider();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v17 = 0;
  sub_29D938338();
  sub_29D71C144(&qword_2A1A22340, sub_29D71BF90, MEMORY[0x29EDB8AB8]);
  v14 = sub_29D938418();
  (*(v4 + 8))(v7, v3);
  *(v13 + 24) = v14;
  *(v8 + 96) = &_s28AFibBurdenEducationComponentVN;
  *(v8 + 104) = sub_29D71C0F0();
  v15 = swift_allocObject();
  *(v8 + 72) = v15;
  *(v15 + 16) = v12;
  *(v15 + 24) = 0xD000000000000013;
  *(v15 + 32) = 0x800000029D95C690;
  *(v15 + 40) = v13;
  *(v15 + 48) = &off_2A24475D0;
  *(v15 + 56) = 1;
  result = [v9 _quantityTypeWithCode_];
  if (result)
  {
    *(v8 + 136) = sub_29D936258();
    *(v8 + 144) = sub_29D71C144(&qword_2A17B2E48, MEMORY[0x29EDC2668], MEMORY[0x29EDC2660]);
    sub_29D693F78((v8 + 112));
    sub_29D936238();
    return sub_29D9360B8();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_29D71BF90()
{
  if (!qword_2A1A24A48)
  {
    v0 = sub_29D938328();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24A48);
    }
  }
}

void sub_29D71BFE0(uint64_t a1)
{
  if (!qword_2A17B2E28)
  {
    sub_29D71C038();
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2E28);
    }
  }
}

unint64_t sub_29D71C038()
{
  result = qword_2A17B2E30;
  if (!qword_2A17B2E30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B2E30);
  }

  return result;
}

unint64_t sub_29D71C09C()
{
  result = qword_2A17B2E38;
  if (!qword_2A17B2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2E38);
  }

  return result;
}

unint64_t sub_29D71C0F0()
{
  result = qword_2A17B2E40;
  if (!qword_2A17B2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2E40);
  }

  return result;
}

uint64_t sub_29D71C144(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D71C1CC()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for BloodPressureJournalOnboardingAnalyticsProvenanceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BloodPressureJournalOnboardingAnalyticsProvenanceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D71C39C()
{
  result = qword_2A17B2E50;
  if (!qword_2A17B2E50)
  {
    sub_29D71C3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2E50);
  }

  return result;
}

void sub_29D71C3F4()
{
  if (!qword_2A17B2E58)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2E58);
    }
  }
}

unint64_t sub_29D71C448()
{
  result = qword_2A17B2E60;
  if (!qword_2A17B2E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2E60);
  }

  return result;
}

unint64_t sub_29D71C4A0()
{
  result = qword_2A17B2E68;
  if (!qword_2A17B2E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2E68);
  }

  return result;
}

id sub_29D71C528(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsHeartAttackWarning(0));
      return sub_29D82E43C();
    }

    else if (a1 == 4)
    {
      v3 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsPregnancyWarning(0));
      return sub_29D7DEF0C();
    }

    else
    {
      v7 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsCompleteViewController());
      return sub_29D8321E8();
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v1 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsHowTheyWorkViewController());
      return sub_29D708EB0(1);
    }

    else
    {
      v6 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsHypertensionWarning(0));
      return sub_29D8FCB70();
    }
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for HypertensionNotificationsConfirmDetailsViewController(0));
    return sub_29D6A0E48();
  }
}

uint64_t type metadata accessor for HeartArticlesGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A243D8;
  if (!qword_2A1A243D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D71C6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a2;
  v33 = *v5;
  v9 = sub_29D9341E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v13 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6C3178(0);
  v15 = v14;
  v36 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v34 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  if (sub_29D934198())
  {
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v10 + 16))(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
    v20 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = a4;
    v32 = v15;
    v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = v9;
    v24 = swift_allocObject();
    *(v24 + 16) = v19;
    (*(v10 + 32))(v24 + v20, v13, v30);
    *(v24 + v21) = v35;
    *(v24 + v22) = a3;
    *(v24 + v23) = v31;
    *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;
    v25 = MEMORY[0x29EDB89F8];
    sub_29D71DAB4(0, &qword_2A1A24AD8, sub_29D6CE0BC, MEMORY[0x29EDB89F8]);
    sub_29D71DB28(&qword_2A1A24AE0, &qword_2A1A24AD8, v25, MEMORY[0x29EDB8A00]);
    sub_29D935E88();
    sub_29D935E88();
    sub_29D935E88();
    v26 = v34;
    sub_29D938378();
    sub_29D71D938(&qword_2A1A24A20, sub_29D6C3178, MEMORY[0x29EDB8AE8]);
    v27 = v32;
    v18 = sub_29D938418();
    (*(v36 + 8))(v26, v27);
  }

  return v18;
}

uint64_t sub_29D71CA3C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v44 = a6;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v43 = sub_29D9341E8();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v43, v11);
  sub_29D71D980(0);
  v13 = v12;
  v49 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v48 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71DAB4(0, &qword_2A1A24A38, sub_29D6CE0BC, MEMORY[0x29EDB8AC0]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = v39 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    v23 = sub_29D9341A8();
    v24 = [objc_allocWithZone(MEMORY[0x29EDBAA48]) initWithHealthStore_];

    _s56CurrentClassificationGuidelinesPublisherWithInitialValueCMa();
    v42 = a7;
    swift_allocObject();
    v25 = v24;
    v40 = v13;
    v26 = v25;
    v50 = sub_29D8E2508(v25);
    sub_29D71D938(&qword_2A1A22148, _s56CurrentClassificationGuidelinesPublisherWithInitialValueCMa, &unk_29D954610);
    v27 = sub_29D938418();
    v39[1] = v27;

    v50 = v27;
    v28 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = a2;
    v30 = v43;
    (*(v9 + 16))(v28, v29, v43);
    v31 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v32 = (v10 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v34 = v46;
    *(v33 + 2) = v45;
    *(v33 + 3) = v34;
    *(v33 + 4) = v47;
    (*(v9 + 32))(&v33[v31], v28, v30);
    *&v33[v32] = v44;
    sub_29D71DAB4(0, &qword_2A1A223B8, type metadata accessor for HKBloodPressureClassificationGuidelines, MEMORY[0x29EDB89F8]);
    sub_29D6CE0BC();
    sub_29D71DA2C();
    sub_29D935E88();
    sub_29D935E88();
    sub_29D935E88();
    v35 = v48;
    a7 = v42;
    sub_29D938468();

    sub_29D71D938(&qword_2A1A225A0, sub_29D71D980, MEMORY[0x29EDB8908]);
    v36 = v40;
    v37 = sub_29D938418();

    result = (*(v49 + 8))(v35, v36);
  }

  else
  {
    sub_29D6CE0BC();
    sub_29D938348();
    sub_29D71DB28(&qword_2A1A24A40, &qword_2A1A24A38, MEMORY[0x29EDB8AC0], MEMORY[0x29EDB8AC8]);
    v37 = sub_29D938418();
    result = (*(v18 + 8))(v21, v17);
  }

  *a7 = v37;
  return result;
}

uint64_t sub_29D71CF54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v93 = a4;
  sub_29D71DC38(0);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D9341E8();
  v94 = *(v17 - 8);
  v95 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v96 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v97[1] = a2;
  if (*(a3 + 16) && (v21 = sub_29D6959E4(), (v22 & 1) != 0))
  {
    v23 = *(*(a3 + 56) + 8 * v21);
    v24 = qword_2A1A25718;
    sub_29D935E88();
    v91 = v23;
    sub_29D935E88();
    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_29D937898();
    sub_29D69C6C0(v25, qword_2A1A2C008);
    v26 = sub_29D937878();
    v27 = sub_29D93A268();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v97[0] = v29;
      *v28 = 136446466;
      v30 = sub_29D93AF08();
      v32 = sub_29D6C2364(v30, v31, v97);
      v92 = a6;
      v33 = a5;
      v34 = v16;
      v35 = a7;
      v36 = v32;

      *(v28 + 4) = v36;
      *(v28 + 12) = 2080;
      v37 = sub_29D93A628();
      v39 = sub_29D6C2364(v37, v38, v97);

      *(v28 + 14) = v39;
      a7 = v35;
      v16 = v34;
      a5 = v33;
      _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s] Adding classification specific articles for %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v29, -1, -1);
      MEMORY[0x29ED6BE30](v28, -1, -1);
    }

    v40 = v93;
    sub_29D88BDE4(v91);
    if (!*(v40 + 16))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v41 = qword_2A1A25718;
    sub_29D935E88();
    if (v41 != -1)
    {
      swift_once();
    }

    v42 = sub_29D937898();
    sub_29D69C6C0(v42, qword_2A1A2C008);
    v43 = sub_29D937878();
    v44 = sub_29D93A268();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v97[0] = v46;
      *v45 = 136446466;
      v47 = sub_29D93AF08();
      v49 = sub_29D6C2364(v47, v48, v97);
      v92 = a6;
      v50 = a5;
      v51 = v16;
      v52 = a7;
      v53 = v49;

      *(v45 + 4) = v53;
      *(v45 + 12) = 2080;
      v54 = sub_29D93A628();
      v56 = sub_29D6C2364(v54, v55, v97);

      *(v45 + 14) = v56;
      a7 = v52;
      v16 = v51;
      a5 = v50;
      _os_log_impl(&dword_29D677000, v43, v44, "[%{public}s] No classification specific articles found for %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v46, -1, -1);
      MEMORY[0x29ED6BE30](v45, -1, -1);
    }

    v40 = v93;
    if (!*(v93 + 16))
    {
      goto LABEL_20;
    }
  }

  v57 = sub_29D6959E4();
  if ((v58 & 1) == 0)
  {
LABEL_20:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v75 = sub_29D937898();
    sub_29D69C6C0(v75, qword_2A1A2C008);
    v76 = sub_29D937878();
    v77 = sub_29D93A268();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v97[0] = v79;
      *v78 = 136446466;
      v80 = sub_29D93AF08();
      v82 = sub_29D6C2364(v80, v81, v97);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2080;
      v83 = sub_29D93A628();
      v85 = sub_29D6C2364(v83, v84, v97);

      *(v78 + 14) = v85;
      _os_log_impl(&dword_29D677000, v76, v77, "[%{public}s] No hypertension notifications classification specific articles found for %s", v78, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v79, -1, -1);
      MEMORY[0x29ED6BE30](v78, -1, -1);
    }

    goto LABEL_25;
  }

  v93 = v20;
  v59 = *(*(v40 + 56) + 8 * v57);
  v60 = qword_2A1A25718;
  sub_29D935E88();
  if (v60 != -1)
  {
    swift_once();
  }

  v61 = sub_29D937898();
  sub_29D69C6C0(v61, qword_2A1A2C008);
  v62 = sub_29D937878();
  v63 = sub_29D93A268();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v97[0] = v65;
    *v64 = 136446466;
    v66 = sub_29D93AF08();
    v68 = a5;
    v69 = v16;
    v70 = a7;
    v71 = sub_29D6C2364(v66, v67, v97);

    *(v64 + 4) = v71;
    a7 = v70;
    v16 = v69;
    a5 = v68;
    *(v64 + 12) = 2080;
    v72 = sub_29D93A628();
    v74 = sub_29D6C2364(v72, v73, v97);

    *(v64 + 14) = v74;
    _os_log_impl(&dword_29D677000, v62, v63, "[%{public}s] Adding hypertension notifications classification specific articles for %s", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v65, -1, -1);
    MEMORY[0x29ED6BE30](v64, -1, -1);
  }

  sub_29D88BDE4(v59);
LABEL_25:
  (*(v94 + 16))(v96, a5, v95);
  v86 = sub_29D937748();
  (*(*(v86 - 8) + 56))(v16, 1, 1, v86);
  sub_29D71DC90(0);
  v88 = v87;
  swift_allocObject();
  v89 = sub_29D937728();
  a7[3] = v88;
  result = sub_29D71D938(&unk_2A1A24690, sub_29D71DC90, MEMORY[0x29EDC1588]);
  a7[4] = result;
  *a7 = v89;
  return result;
}

double sub_29D71D798()
{

  return result;
}

uint64_t sub_29D71D7E8()
{
  sub_29D937718();

  return swift_deallocClassInstance();
}

uint64_t sub_29D71D874@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D71CA3C(v1 + v4, v8, v9, v10, v11, a1);
}

uint64_t sub_29D71D938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D71D980(uint64_t a1)
{
  if (!qword_2A1A22598)
  {
    sub_29D71DAB4(255, &qword_2A1A223B8, type metadata accessor for HKBloodPressureClassificationGuidelines, MEMORY[0x29EDB89F8]);
    sub_29D6CE0BC();
    sub_29D71DA2C();
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22598);
    }
  }
}

unint64_t sub_29D71DA2C()
{
  result = qword_2A1A223C0;
  if (!qword_2A1A223C0)
  {
    sub_29D71DAB4(255, &qword_2A1A223B8, type metadata accessor for HKBloodPressureClassificationGuidelines, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A223C0);
  }

  return result;
}

void sub_29D71DAB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D71DB28(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D71DAB4(255, a2, sub_29D6CE0BC, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D71DB84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D71CF54(a1, v7, v8, v9, v2 + v6, v10, a2);
}

void sub_29D71DC38(uint64_t a1)
{
  if (!qword_2A1A24680)
  {
    sub_29D937748();
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24680);
    }
  }
}

void sub_29D71DC90(uint64_t a1)
{
  if (!qword_2A1A24688)
  {
    sub_29D71DCEC();
    v1 = sub_29D937738();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24688);
    }
  }
}

unint64_t sub_29D71DCEC()
{
  result = qword_2A1A23BA0;
  if (!qword_2A1A23BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A23BA0);
  }

  return result;
}

uint64_t type metadata accessor for BloodPressureJournalSettingsView(uint64_t a1)
{
  result = qword_2A17B2E78;
  if (!qword_2A17B2E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D71DDB4(uint64_t a1)
{
  sub_29D71DF0C(319, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
  if (v1 <= 0x3F)
  {
    sub_29D71DF0C(319, &qword_2A17B44C0, sub_29D71DF70, MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      sub_29D72819C(319, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29D71DF0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D71DF70()
{
  result = qword_2A17B2E88;
  if (!qword_2A17B2E88)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2A17B2E88);
  }

  return result;
}

uint64_t sub_29D71DFDC()
{
  sub_29D71DF0C(0, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
  sub_29D939848();
  swift_getKeyPath();
  sub_29D728154(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E18();

  v0 = *(v5 + 16);
  v1 = v0;

  if (v0)
  {
    [v1 journalType];

    sub_29D939848();
    swift_getKeyPath();
    sub_29D933E18();

    v2 = *(v5 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isJournalComplete);

    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_29D71E16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v70 = sub_29D938B78();
  v68 = *(v70 - 8);
  MEMORY[0x2A1C7C4A8](v70, v3);
  v67 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D939D18();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v57 - v15;
  sub_29D7271A8(0);
  v18 = v17;
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D727088(0);
  v64 = v22;
  v62 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22, v23);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D726F24(0);
  v65 = *(v26 - 8);
  v66 = v26;
  MEMORY[0x2A1C7C4A8](v26, v27);
  v63 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29D938C68();
  v30 = *(a1 + *(type metadata accessor for BloodPressureJournalSettingsView(0) + 48));
  *v21 = v29;
  *(v21 + 1) = v30;
  v21[16] = 0;
  sub_29D72ABCC(0, &qword_2A17B32F0, sub_29D727264, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29D71E7FC(a1, &v21[*(v31 + 44)]);
  v32 = sub_29D9390D8();
  v33 = &v21[*(v18 + 36)];
  *v33 = v32;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  v33[40] = 1;
  v71 = a1;
  sub_29D729A78(0);
  v35 = v34;
  v36 = sub_29D72A1E0();
  sub_29D729B40(255);
  v38 = v37;
  v39 = sub_29D72A13C(&qword_2A17B32A8, sub_29D729B40, sub_29D72A1AC, MEMORY[0x29EDBC2E0]);
  v72 = v38;
  v73 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v25;
  v60 = v18;
  v58 = v35;
  sub_29D9394C8();
  sub_29D72A794(v21, sub_29D7271A8);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v41 = qword_2A1A2BE98;
  (*(v9 + 16))(v13, v16, v8);
  sub_29D935E88();
  v42 = v41;
  sub_29D933A98();
  v43 = sub_29D939D98();
  v45 = v44;
  (*(v9 + 8))(v16, v8);
  v76 = v43;
  v77 = v45;
  v72 = v60;
  v73 = v58;
  v74 = v36;
  v75 = OpaqueTypeConformance2;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_29D69AB60();
  v48 = MEMORY[0x29EDC99B0];
  v50 = v63;
  v49 = v64;
  v51 = v61;
  sub_29D9393F8();

  (*(v62 + 8))(v51, v49);
  v53 = v67;
  v52 = v68;
  v54 = v70;
  (*(v68 + 104))(v67, *MEMORY[0x29EDBBF98], v70);
  v72 = v49;
  v73 = v48;
  v74 = v46;
  v75 = v47;
  swift_getOpaqueTypeConformance2();
  v55 = v66;
  sub_29D939468();
  (*(v52 + 8))(v53, v54);
  return (*(v65 + 8))(v50, v55);
}

uint64_t sub_29D71E7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  sub_29D729308(0);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v7 = v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v119 - v9;
  sub_29D7288B8(0);
  v12 = v11;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D727814(0, &qword_2A17B3300, sub_29D727334, sub_29D7288B8, MEMORY[0x29EDBC7E8]);
  v127 = v16;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v129 = v119 - v18;
  sub_29D727334(0);
  v128 = v19;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v22 = (v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D7279F0(0);
  v25 = MEMORY[0x2A1C7C4A8](v23 - 8, v24);
  v124 = v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v29 = v119 - v28;
  sub_29D7277CC(0);
  v32 = MEMORY[0x2A1C7C4A8](v30 - 8, v31);
  v123 = v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32, v34);
  v126 = v119 - v35;
  sub_29D7272EC(0);
  v38 = MEMORY[0x2A1C7C4A8](v36 - 8, v37);
  v125 = v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38, v40);
  v131 = v119 - v41;
  if (sub_29D71DFDC())
  {
    v42 = sub_29D9398A8();
    v44 = v43;
    sub_29D71F4B8(a1, &v164);
    v148 = v170;
    v149 = v171;
    v150 = v172;
    v144 = v166;
    v145 = v167;
    v146 = v168;
    v147 = v169;
    v142 = v164;
    v143 = v165;
    v151[6] = v170;
    v151[7] = v171;
    v151[8] = v172;
    v151[2] = v166;
    v151[3] = v167;
    v151[4] = v168;
    v151[5] = v169;
    v151[0] = v164;
    v151[1] = v165;
    sub_29D72AC38(&v142, v163, sub_29D727484);
    sub_29D72AEFC(v151, sub_29D727484);
    v159 = v148;
    v160 = v149;
    v161 = v150;
    v155 = v144;
    v156 = v145;
    v157 = v146;
    v158 = v147;
    v153 = v142;
    v154 = v143;
    *&v152 = v42;
    *(&v152 + 1) = v44;
    sub_29D71DF0C(0, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
    sub_29D939848();
    v45 = sub_29D7F2248();
    v119[0] = v29;
    v47 = v46;

    *&v164 = v45;
    *(&v164 + 1) = v47;
    sub_29D69AB60();
    v48 = sub_29D9392F8();
    v50 = v49;
    LOBYTE(v45) = v51;
    v119[1] = v12;
    v53 = v52;
    KeyPath = swift_getKeyPath();
    v121 = v10;
    v55 = KeyPath;
    v56 = sub_29D938EF8();
    v120 = a1;
    v57 = v56;
    v58 = sub_29D9391F8();
    v122 = v7;
    v59 = v58;
    v60 = swift_getKeyPath();
    LOBYTE(v132) = v45 & 1;
    *&v164 = v48;
    *(&v164 + 1) = v50;
    LOBYTE(v165) = v45 & 1;
    *(&v165 + 1) = v53;
    *&v166 = v55;
    BYTE8(v166) = 1;
    HIDWORD(v166) = v57;
    *&v167 = v60;
    *(&v167 + 1) = v59;
    *&v163[0] = 0;
    *(&v163[0] + 1) = 0xE000000000000000;
    sub_29D93AA18();
    v61 = sub_29D939D68();
    v63 = v62;

    *&v163[0] = v61;
    *(&v163[0] + 1) = v63;
    MEMORY[0x29ED6A240](0xD000000000000023, 0x800000029D95C8E0);
    sub_29D727898(0);
    sub_29D72AFC4();
    v64 = v126;
    a1 = v120;
    sub_29D939438();

    v162[0] = v164;
    v162[1] = v165;
    v162[2] = v166;
    v162[3] = v167;
    sub_29D72AEFC(v162, sub_29D727898);
    v65 = sub_29D938C78();
    v66 = v119[0];
    *v119[0] = v65;
    *(v66 + 8) = 0;
    *(v66 + 16) = 1;
    sub_29D72ABCC(0, &qword_2A17B3368, sub_29D727A84, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
    sub_29D71F8F4(a1, (v66 + *(v67 + 44)));
    v138 = v158;
    v139 = v159;
    v140 = v160;
    v141 = v161;
    v134 = v154;
    v135 = v155;
    v136 = v156;
    v137 = v157;
    v132 = v152;
    v133 = v153;
    v68 = v64;
    v69 = v123;
    sub_29D72AC38(v68, v123, sub_29D7277CC);
    v70 = v124;
    sub_29D72AF5C(v66, v124, sub_29D7279F0);
    v71 = v139;
    v163[6] = v138;
    v163[7] = v139;
    v72 = v140;
    v73 = v141;
    v163[8] = v140;
    v163[9] = v141;
    v74 = v134;
    v75 = v135;
    v163[2] = v134;
    v163[3] = v135;
    v76 = v136;
    v77 = v137;
    v163[4] = v136;
    v163[5] = v137;
    v78 = v132;
    v79 = v133;
    v163[0] = v132;
    v163[1] = v133;
    v22[6] = v138;
    v22[7] = v71;
    v22[8] = v72;
    v22[9] = v73;
    v22[2] = v74;
    v22[3] = v75;
    v22[4] = v76;
    v22[5] = v77;
    *v22 = v78;
    v22[1] = v79;
    sub_29D727368(0);
    v81 = v80;
    sub_29D72AC38(v69, v22 + *(v80 + 48), sub_29D7277CC);
    sub_29D72AF5C(v70, v22 + *(v81 + 64), sub_29D7279F0);
    sub_29D72AC38(&v152, &v164, sub_29D7273F0);
    sub_29D72AC38(v163, &v164, sub_29D7273F0);
    sub_29D72A794(v70, sub_29D7279F0);
    sub_29D72AEFC(v69, sub_29D7277CC);
    v170 = v138;
    v171 = v139;
    v172 = v140;
    v173 = v141;
    v166 = v134;
    v167 = v135;
    v168 = v136;
    v169 = v137;
    v164 = v132;
    v165 = v133;
    sub_29D72AEFC(&v164, sub_29D7273F0);
    sub_29D72AF5C(v22, v129, sub_29D727334);
    swift_storeEnumTagMultiPayload();
    sub_29D728154(&qword_2A17B3318, sub_29D727334, MEMORY[0x29EDBCC30]);
    sub_29D72ACA0();
    v7 = v122;
    sub_29D938DE8();
    sub_29D72AEFC(&v152, sub_29D7273F0);
    sub_29D72A794(v22, sub_29D727334);
    sub_29D72A794(v66, sub_29D7279F0);
    v82 = v126;
    v83 = sub_29D7277CC;
    v10 = v121;
  }

  else
  {
    *v15 = sub_29D938C68();
    *(v15 + 1) = 0;
    v15[16] = 1;
    sub_29D72ABCC(0, &qword_2A17B3308, sub_29D728A20, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
    v85 = &v15[*(v84 + 44)];
    v86 = sub_29D938B88();
    v87 = *(a1 + *(type metadata accessor for BloodPressureJournalSettingsView(0) + 48));
    *v85 = v86;
    *(v85 + 1) = v87;
    v85[16] = 0;
    sub_29D72ABCC(0, &qword_2A17B3310, sub_29D728AB4, MEMORY[0x29EDBC418], MEMORY[0x29EDBC410]);
    sub_29D725434(a1, &v85[*(v88 + 44)]);
    LOBYTE(v86) = sub_29D9390C8();
    sub_29D728964(0);
    v90 = &v15[*(v89 + 36)];
    *v90 = v86;
    *(v90 + 8) = 0u;
    *(v90 + 24) = 0u;
    v90[40] = 1;
    LOBYTE(v86) = sub_29D939138();
    sub_29D938618();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    sub_29D72893C(0);
    v100 = &v15[*(v99 + 36)];
    *v100 = v86;
    *(v100 + 1) = v92;
    *(v100 + 2) = v94;
    *(v100 + 3) = v96;
    *(v100 + 4) = v98;
    v100[40] = 0;
    v101 = [objc_opt_self() tertiarySystemBackgroundColor];
    v102 = sub_29D939528();
    v103 = sub_29D9390D8();
    sub_29D728900(0);
    v105 = &v15[*(v104 + 36)];
    *v105 = v102;
    v105[8] = v103;
    sub_29D933E48();
    v107 = v106;
    v108 = &v15[*(v12 + 36)];
    v109 = *(sub_29D9388D8() + 20);
    v110 = *MEMORY[0x29EDBC6F8];
    v111 = sub_29D938C38();
    (*(*(v111 - 8) + 104))(&v108[v109], v110, v111);
    *v108 = v107;
    *(v108 + 1) = v107;
    sub_29D7280C0(0);
    *&v108[*(v112 + 36)] = 256;
    sub_29D72AC38(v15, v129, sub_29D7288B8);
    swift_storeEnumTagMultiPayload();
    sub_29D728154(&qword_2A17B3318, sub_29D727334, MEMORY[0x29EDBCC30]);
    sub_29D72ACA0();
    sub_29D938DE8();
    v83 = sub_29D7288B8;
    v82 = v15;
  }

  sub_29D72AEFC(v82, v83);
  *v10 = sub_29D938C78();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_29D72ABCC(0, &qword_2A17B3348, sub_29D72939C, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29D722428(a1, &v10[*(v113 + 44)]);
  v114 = v131;
  v115 = v125;
  sub_29D72AF5C(v131, v125, sub_29D7272EC);
  sub_29D72AC38(v10, v7, sub_29D729308);
  v116 = v130;
  sub_29D72AF5C(v115, v130, sub_29D7272EC);
  sub_29D72750C(0, &qword_2A17B2EC0, sub_29D7272EC, sub_29D729308);
  sub_29D72AC38(v7, v116 + *(v117 + 48), sub_29D729308);
  sub_29D72AEFC(v10, sub_29D729308);
  sub_29D72A794(v114, sub_29D7272EC);
  sub_29D72AEFC(v7, sub_29D729308);
  return sub_29D72A794(v115, sub_29D7272EC);
}

uint64_t sub_29D71F4B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v26 = a1;
  v3 = sub_29D939628();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D72B554(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() tertiarySystemBackgroundColor];
  v27 = sub_29D939528();
  type metadata accessor for BloodPressureJournalSettingsView(0);
  sub_29D9398A8();
  sub_29D938718();
  *&v47[3] = *&v47[27];
  *&v47[11] = *&v47[35];
  *&v47[19] = *&v47[43];
  sub_29D939638();
  sub_29D938C98();
  v13 = sub_29D938CB8();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  sub_29D939648();

  sub_29D72AEFC(v11, sub_29D72B554);
  (*(v4 + 104))(v7, *MEMORY[0x29EDBCAB8], v3);
  v14 = sub_29D939668();

  (*(v4 + 8))(v7, v3);
  v15 = sub_29D939568();
  sub_29D9398A8();
  sub_29D938718();
  v16 = v27;
  *&v48[0] = v27;
  WORD4(v48[0]) = 256;
  *(v48 + 10) = *v47;
  *(&v48[1] + 10) = *&v47[8];
  *(&v48[2] + 10) = *&v47[16];
  *(&v48[3] + 1) = *&v47[23];
  v35 = v48[2];
  v36 = v48[3];
  v33 = v48[0];
  v34 = v48[1];
  v49 = v14;
  LOWORD(v50) = 1;
  WORD3(v50) = v46;
  *(&v50 + 2) = v45;
  *(&v50 + 1) = v15;
  v18 = v43;
  v17 = v44;
  v52 = v43;
  v53 = v44;
  v51 = v42;
  v40 = v43;
  v41 = v44;
  v38 = v50;
  v39 = v42;
  v37 = v14;
  v19 = v48[3];
  a2[2] = v48[2];
  a2[3] = v19;
  v20 = v34;
  *a2 = v33;
  a2[1] = v20;
  v22 = v41;
  v21 = v42;
  v23 = v39;
  a2[7] = v40;
  a2[8] = v22;
  v24 = v38;
  a2[4] = v37;
  a2[5] = v24;
  a2[6] = v23;
  v54[0] = v14;
  v54[1] = 0;
  v55 = 1;
  v56 = v45;
  v57 = v46;
  v58 = v15;
  v59 = v21;
  v60 = v18;
  v61 = v17;
  sub_29D72AC38(v48, &v28, sub_29D727588);
  sub_29D72AC38(&v49, &v28, sub_29D7276E4);
  sub_29D72AEFC(v54, sub_29D7276E4);
  v28 = v16;
  v29 = 256;
  v30 = *v47;
  v31 = *&v47[8];
  v32[0] = *&v47[16];
  *(v32 + 14) = *&v47[23];
  return sub_29D72AEFC(&v28, sub_29D727588);
}

uint64_t sub_29D71F8F4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v161 = a1;
  v170 = a2;
  v160 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v147 = *(v160 - 8);
  MEMORY[0x2A1C7C4A8](v160, v2);
  v148 = v3;
  v149 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_29D9339F8();
  v154 = *(v157 - 8);
  MEMORY[0x2A1C7C4A8](v157, v4);
  v152 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D72B1BC(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v145 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71DF0C(0, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
  v158 = v9;
  v144 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v143 = &v131 - v11;
  sub_29D727DE4(0);
  v151 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v146 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D727D10(0);
  v155 = v15;
  v153 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v150 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D727CC8(0);
  v167 = v18;
  MEMORY[0x2A1C7C4A8](v18, v19);
  v156 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D727814(0, &qword_2A17B3378, sub_29D727B9C, sub_29D727CC8, MEMORY[0x29EDBC7E8]);
  v164 = v21;
  MEMORY[0x2A1C7C4A8](v21, v22);
  v166 = &v131 - v23;
  sub_29D727B9C(0);
  v165 = v24;
  MEMORY[0x2A1C7C4A8](v24, v25);
  v131 = (&v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D727B54(0);
  v29 = MEMORY[0x2A1C7C4A8](v27 - 8, v28);
  v169 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v168 = &v131 - v32;
  sub_29D6F17D4(0);
  MEMORY[0x2A1C7C4A8](v33 - 8, v34);
  v163 = &v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_29D939238();
  v36 = *(v162 - 8);
  MEMORY[0x2A1C7C4A8](v162, v37);
  v39 = &v131 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v40 - 8, v41);
  v43 = &v131 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29D939D18();
  v45 = *(v44 - 8);
  v47 = MEMORY[0x2A1C7C4A8](v44, v46);
  v49 = &v131 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v47, v50);
  v52 = &v131 - v51;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v53 = qword_2A1A2BE98;
  v54 = unk_2A1A2BEA0;
  v55 = qword_2A1A2BEA8;
  v56 = *(v45 + 16);
  v135 = v45 + 16;
  v134 = v56;
  v56(v49, v52, v44);
  sub_29D935E88();
  v132 = v53;
  sub_29D933A98();
  v139 = v49;
  v137 = v54;
  v136 = v55;
  v138 = v53;
  v141 = v43;
  v57 = sub_29D939D98();
  v59 = v58;
  v60 = *(v45 + 8);
  v61 = v52;
  v142 = v44;
  v140 = v45 + 8;
  v133 = v60;
  v60(v52, v44);
  v175 = v57;
  v176 = v59;
  sub_29D69AB60();
  v62 = sub_29D9392F8();
  v64 = v63;
  v66 = v65;
  v77 = v162;
  (*(v36 + 104))(v39, *MEMORY[0x29EDBC9E8], v162);
  v67 = sub_29D939168();
  v68 = v163;
  (*(*(v67 - 8) + 56))(v163, 1, 1, v67);
  sub_29D9391B8();
  sub_29D72AEFC(v68, sub_29D6F17D4);
  (*(v36 + 8))(v39, v77);
  sub_29D939188();
  sub_29D9391D8();

  v69 = sub_29D9392C8();
  v71 = v70;
  LOBYTE(v77) = v72;

  sub_29D69ABB4(v62, v64, v66 & 1);

  LODWORD(v175) = sub_29D938EF8();
  v163 = sub_29D9392B8();
  v162 = v73;
  LOBYTE(v68) = v74;
  v76 = v75;
  sub_29D69ABB4(v69, v71, v77 & 1);

  LODWORD(v77) = sub_29D9390C8();
  v78 = v160;
  v79 = v161;
  sub_29D938618();
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v159 = v68 & 1;
  LOBYTE(v175) = v68 & 1;
  LOBYTE(v171) = 0;
  v88 = v158;
  sub_29D939848();
  v89 = v175;
  swift_getKeyPath();
  v175 = v89;
  sub_29D728154(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E18();

  v90 = *(v89 + 16);
  v91 = v90;

  if (v90 && (v92 = [v91 journalType], v91, !v92))
  {
    v118 = *(v79 + *(v78 + 64));
    v119 = sub_29D938C68();
    v114 = v131;
    *v131 = v119;
    *(v114 + 8) = v118;
    *(v114 + 16) = 0;
    sub_29D72ABCC(0, &qword_2A17B3390, sub_29D727C30, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
    sub_29D720B94(v79, v114 + *(v120 + 44));
    sub_29D72AF5C(v114, v166, sub_29D727B9C);
    swift_storeEnumTagMultiPayload();
    sub_29D728154(&qword_2A17B3380, sub_29D727B9C, MEMORY[0x29EDBCB58]);
    sub_29D72B208();
    v116 = v168;
    sub_29D938DE8();
    v117 = sub_29D727B9C;
  }

  else
  {
    sub_29D939D08();
    v93 = v142;
    v134(v139, v61, v142);
    sub_29D935E88();
    v94 = v132;
    sub_29D933A98();
    v95 = sub_29D939D98();
    v97 = v96;
    v133(v61, v93);
    LODWORD(v142) = v77;
    v98 = v143;
    sub_29D939858();
    v160 = v76;
    swift_getKeyPath();
    v99 = v145;
    sub_29D939878();

    (*(v144 + 8))(v98, v88);
    v77 = v146;
    sub_29D721A3C(v95, v97, v99, v146);

    sub_29D72AEFC(v99, sub_29D72B1BC);
    sub_29D939848();
    v100 = v175;
    swift_getKeyPath();
    v175 = v100;
    sub_29D933E18();

    v101 = OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__wakeupTime;
    swift_beginAccess();
    v102 = v154;
    v103 = v152;
    v104 = v157;
    (*(v154 + 16))(v152, v100 + v101, v157);

    v105 = v149;
    sub_29D72AC38(v79, v149, type metadata accessor for BloodPressureJournalSettingsView);
    v106 = (*(v147 + 80) + 16) & ~*(v147 + 80);
    v107 = swift_allocObject();
    sub_29D72BA58(v105, v107 + v106, type metadata accessor for BloodPressureJournalSettingsView);
    v108 = sub_29D72839C();
    v109 = sub_29D728154(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
    v110 = v150;
    v111 = v151;
    sub_29D9394D8();

    (*(v102 + 8))(v103, v104);
    v112 = v77;
    LOBYTE(v77) = v142;
    sub_29D72AEFC(v112, sub_29D727DE4);
    v175 = 0;
    v176 = 0xE000000000000000;
    sub_29D93AA18();
    v113 = sub_29D939D68();
    MEMORY[0x29ED6A240](v113);

    MEMORY[0x29ED6A240](0xD000000000000031, 0x800000029D95C960);
    v175 = v111;
    v176 = v104;
    v76 = v160;
    v177 = v108;
    v178 = v109;
    swift_getOpaqueTypeConformance2();
    v114 = v156;
    v115 = v155;
    sub_29D939438();

    (*(v153 + 8))(v110, v115);
    sub_29D72AF5C(v114, v166, sub_29D727CC8);
    swift_storeEnumTagMultiPayload();
    sub_29D728154(&qword_2A17B3380, sub_29D727B9C, MEMORY[0x29EDBCB58]);
    sub_29D72B208();
    v116 = v168;
    sub_29D938DE8();
    v117 = sub_29D727CC8;
  }

  sub_29D72A794(v114, v117);
  v121 = v169;
  sub_29D72AF5C(v116, v169, sub_29D727B54);
  v122 = v163;
  *&v171 = v163;
  v123 = v162;
  *(&v171 + 1) = v162;
  v124 = v159;
  LOBYTE(v172) = v159;
  *(&v172 + 1) = *v187;
  DWORD1(v172) = *&v187[3];
  *(&v172 + 1) = v76;
  LOBYTE(v173) = v77;
  *(&v173 + 1) = *v186;
  DWORD1(v173) = *&v186[3];
  *(&v173 + 1) = v81;
  *v174 = v83;
  *&v174[8] = v85;
  *&v174[16] = v87;
  v174[24] = 0;
  v125 = v171;
  v126 = v172;
  v127 = v170;
  *(v170 + 57) = *&v174[9];
  v128 = *v174;
  v127[2] = v173;
  v127[3] = v128;
  *v127 = v125;
  v127[1] = v126;
  sub_29D727AB8(0);
  sub_29D72AF5C(v121, v127 + *(v129 + 48), sub_29D727B54);
  sub_29D72B338(&v171, &v175);
  sub_29D72A794(v116, sub_29D727B54);
  sub_29D72A794(v121, sub_29D727B54);
  v175 = v122;
  v176 = v123;
  LOBYTE(v177) = v124;
  *(&v177 + 1) = *v187;
  HIDWORD(v177) = *&v187[3];
  v178 = v76;
  v179 = v77;
  *v180 = *v186;
  *&v180[3] = *&v186[3];
  v181 = v81;
  v182 = v83;
  v183 = v85;
  v184 = v87;
  v185 = 0;
  return sub_29D72B3C8(&v175, &qword_2A17B1688, MEMORY[0x29EDBC498]);
}

uint64_t sub_29D720B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a1;
  v136 = a2;
  v2 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v131 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v145 = v4;
  v146 = v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_29D9339F8();
  v150 = *(v135 - 8);
  MEMORY[0x2A1C7C4A8](v135, v5);
  v144 = v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D72B1BC(0);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v137 = v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D71DF0C(0, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
  v139 = v10;
  v147 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v138 = v104 - v12;
  v13 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D939D18();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v22 = v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = v104 - v24;
  sub_29D727DE4(0);
  v140 = v26;
  MEMORY[0x2A1C7C4A8](v26, v27);
  v141 = v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D727D10(0);
  v143 = v29;
  v149 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29, v30);
  v148 = v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D727CC8(0);
  v34 = MEMORY[0x2A1C7C4A8](v32 - 8, v33);
  v134 = v104 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v133 = v104 - v38;
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v132 = v104 - v41;
  MEMORY[0x2A1C7C4A8](v40, v42);
  v142 = v104 - v43;
  v44 = v25;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v45 = qword_2A1A2BE98;
  v126 = qword_2A1A2BE98;
  v125 = unk_2A1A2BEA0;
  v46 = qword_2A1A2BEA8;
  v47 = *(v18 + 16);
  v128 = v18 + 16;
  v129 = v47;
  v113 = v44;
  v47(v22, v44, v17);
  v120 = v46;
  sub_29D935E88();
  v127 = v45;
  sub_29D933A98();
  v48 = sub_29D939D98();
  v49 = v17;
  v110 = v17;
  v50 = v48;
  v119 = v16;
  v52 = v51;
  v53 = *(v18 + 8);
  v123 = v18 + 8;
  v124 = v53;
  v53(v44, v49);
  v54 = v138;
  v55 = v139;
  v56 = v130;
  sub_29D939858();
  v111 = v22;
  swift_getKeyPath();
  v57 = v137;
  sub_29D939878();

  v58 = *(v147 + 8);
  v147 += 8;
  v122 = v58;
  v58(v54, v55);
  v59 = v141;
  sub_29D721A3C(v50, v52, v57, v141);

  v121 = sub_29D72B1BC;
  sub_29D72AEFC(v57, sub_29D72B1BC);
  sub_29D939848();
  v60 = v153;
  swift_getKeyPath();
  v153 = v60;
  v118 = sub_29D728154(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E18();

  swift_beginAccess();
  v61 = v150;
  v62 = *(v150 + 16);
  v116 = v150 + 16;
  v117 = v62;
  v63 = v144;
  v64 = v135;
  v62();

  v115 = type metadata accessor for BloodPressureJournalSettingsView;
  v65 = v146;
  sub_29D72AC38(v56, v146, type metadata accessor for BloodPressureJournalSettingsView);
  v131 = *(v131 + 80);
  v66 = (v131 + 16) & ~v131;
  v112 = v66;
  v67 = swift_allocObject();
  v114 = type metadata accessor for BloodPressureJournalSettingsView;
  sub_29D72BA58(v65, v67 + v66, type metadata accessor for BloodPressureJournalSettingsView);
  v68 = sub_29D72839C();
  v69 = sub_29D728154(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
  v70 = v140;
  v104[0] = v68;
  v104[1] = v69;
  sub_29D9394D8();

  v71 = *(v61 + 8);
  v150 = v61 + 8;
  v109 = v71;
  v71(v63, v64);
  v108 = sub_29D727DE4;
  sub_29D72AEFC(v59, sub_29D727DE4);
  v153 = 0;
  v154 = 0xE000000000000000;
  sub_29D93AA18();
  v107 = *MEMORY[0x29EDC43E0];
  v72 = sub_29D939D68();
  MEMORY[0x29ED6A240](v72);

  MEMORY[0x29ED6A240](0xD000000000000033, 0x800000029D95C9C0);
  v153 = v70;
  v154 = v64;
  v155 = v68;
  v156 = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = v143;
  v74 = v148;
  sub_29D939438();

  v75 = *(v149 + 8);
  v149 += 8;
  v105 = v75;
  v75(v74, v73);
  v76 = v113;
  sub_29D939D08();
  v77 = v110;
  v129(v111, v76, v110);
  sub_29D935E88();
  v78 = v127;
  sub_29D933A98();
  v79 = sub_29D939D98();
  v81 = v80;
  v124(v76, v77);
  v82 = v138;
  v83 = v139;
  sub_29D939858();
  swift_getKeyPath();
  v84 = v137;
  sub_29D939878();

  v122(v82, v83);
  v85 = v141;
  sub_29D721A3C(v79, v81, v84, v141);

  sub_29D72AEFC(v84, v121);
  sub_29D939848();
  v86 = v153;
  swift_getKeyPath();
  v153 = v86;
  sub_29D933E18();

  v87 = OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__bedTime;
  swift_beginAccess();
  v88 = v144;
  (v117)(v144, v86 + v87, v64);

  v89 = v146;
  sub_29D72AC38(v56, v146, v115);
  v90 = v112;
  v91 = swift_allocObject();
  sub_29D72BA58(v89, v91 + v90, v114);
  v92 = v148;
  sub_29D9394D8();

  v109(v88, v64);
  sub_29D72AEFC(v85, v108);
  v151 = 0;
  v152 = 0xE000000000000000;
  sub_29D93AA18();
  v93 = sub_29D939D68();
  v95 = v94;

  v151 = v93;
  v152 = v95;
  MEMORY[0x29ED6A240](0xD000000000000030, 0x800000029D95CA20);
  v96 = v132;
  v97 = v143;
  sub_29D939438();

  v105(v92, v97);
  v98 = v142;
  v99 = v133;
  sub_29D72AF5C(v142, v133, sub_29D727CC8);
  v100 = v134;
  sub_29D72AF5C(v96, v134, sub_29D727CC8);
  v101 = v136;
  sub_29D72AF5C(v99, v136, sub_29D727CC8);
  sub_29D727C64(0);
  sub_29D72AF5C(v100, v101 + *(v102 + 48), sub_29D727CC8);
  sub_29D72A794(v96, sub_29D727CC8);
  sub_29D72A794(v98, sub_29D727CC8);
  sub_29D72A794(v100, sub_29D727CC8);
  return sub_29D72A794(v99, sub_29D727CC8);
}

void sub_29D721A3C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v81 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v83 = v12;
  v84 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D72A4D4(0, &qword_2A17B2FF8, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA90], MEMORY[0x29EDBC270]);
  v85 = *(v13 - 8);
  v86 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v82 = &v81 - v15;
  v16 = sub_29D938E18();
  MEMORY[0x2A1C7C4A8](v16 - 8, v17);
  sub_29D72B1BC(0);
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  sub_29D72AC38(a3, &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), sub_29D72B1BC);
  sub_29D938DF8();
  v87 = a1;
  v88 = a2;
  v21 = MEMORY[0x29EDBCA10];
  sub_29D9385E8();
  v22 = sub_29D939138();
  sub_29D938618();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_29D728058(0, &qword_2A17B2FB8, &qword_2A17B2FC0, v21, MEMORY[0x29EDBBE80]);
  v32 = a4 + *(v31 + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  v33 = sub_29D9390C8();
  sub_29D938618();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_29D727FCC(0);
  v43 = a4 + *(v42 + 36);
  *v43 = v33;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  v44 = [objc_opt_self() tertiarySystemBackgroundColor];
  v45 = sub_29D939528();
  v46 = sub_29D9390D8();
  sub_29D727EFC(0);
  v48 = a4 + *(v47 + 36);
  *v48 = v45;
  *(v48 + 8) = v46;
  sub_29D933E48();
  v50 = v49;
  sub_29D727814(0, &qword_2A17B2FA0, sub_29D727EFC, sub_29D7280C0, MEMORY[0x29EDBC558]);
  v52 = (a4 + *(v51 + 36));
  v53 = *(sub_29D9388D8() + 20);
  v54 = *MEMORY[0x29EDBC6F8];
  v55 = sub_29D938C38();
  (*(*(v55 - 8) + 104))(&v52[v53], v54, v55);
  *v52 = v50;
  *(v52 + 1) = v50;
  sub_29D7280C0(0);
  *&v52[*(v56 + 36)] = 256;
  sub_29D71DF0C(0, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
  sub_29D939848();
  v57 = v89;
  swift_getKeyPath();
  v89 = v57;
  sub_29D728154(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E18();

  LOBYTE(a1) = *(v57 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__notificationsAreDisabled);

  KeyPath = swift_getKeyPath();
  v59 = swift_allocObject();
  *(v59 + 16) = a1;
  sub_29D727E2C(0);
  v61 = (a4 + *(v60 + 36));
  *v61 = KeyPath;
  v61[1] = sub_29D72BD7C;
  v61[2] = v59;
  v62 = sub_29D9398A8();
  v64 = v63;
  sub_29D727DE4(0);
  v66 = a4 + *(v65 + 36);
  sub_29D939848();
  v67 = v89;
  swift_getKeyPath();
  v89 = v67;
  sub_29D933E18();

  LODWORD(v52) = *(v67 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__notificationsAreDisabled);

  if (v52 == 1)
  {
    v68 = v5;
    v69 = v84;
    sub_29D72AC38(v68, v84, type metadata accessor for BloodPressureJournalSettingsView);
    v70 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v71 = swift_allocObject();
    sub_29D72BA58(v69, v71 + v70, type metadata accessor for BloodPressureJournalSettingsView);
    v72 = v82;
    sub_29D9396C8();
    v73 = v85;
    v74 = v72;
    v75 = v86;
    (*(v85 + 32))(v66, v74, v86);
    v76 = 0;
    v77 = v75;
    v78 = v73;
  }

  else
  {
    v76 = 1;
    v78 = v85;
    v77 = v86;
  }

  (*(v78 + 56))(v66, v76, 1, v77);
  sub_29D7281EC(0);
  v80 = (v66 + *(v79 + 36));
  *v80 = v62;
  v80[1] = v64;
}

uint64_t sub_29D722148@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_29D728154(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E18();

  v7 = *a3;
  swift_beginAccess();
  v8 = sub_29D9339F8();
  return (*(*(v8 - 8) + 16))(a4, v6 + v7, v8);
}

uint64_t sub_29D72225C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_29D9339F8();
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);
  return a5(v10);
}

uint64_t sub_29D722330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D9339F8();
  sub_29D728154(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
  result = sub_29D939CF8();
  if ((result & 1) == 0)
  {
    type metadata accessor for BloodPressureJournalSettingsView(0);
    sub_29D72819C(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
    return sub_29D9396A8();
  }

  return result;
}

uint64_t sub_29D722428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v223 = a2;
  sub_29D7299D4(0);
  v215 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v196 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D727814(0, &qword_2A17B33A0, sub_29D729884, sub_29D7299D4, MEMORY[0x29EDBC7E8]);
  v212 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v214 = &v194 - v8;
  sub_29D729884(0);
  v213 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v205 = (&v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v209 = &v194 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_29D939D18();
  v210 = *(v211 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v211, v15);
  v207 = &v194 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v208 = &v194 - v19;
  sub_29D729930(0);
  v202 = v20;
  v22 = MEMORY[0x2A1C7C4A8](v20, v21);
  v203 = &v194 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v204 = &v194 - v25;
  sub_29D7297E8(0);
  v28 = MEMORY[0x2A1C7C4A8](v26 - 8, v27);
  v222 = &v194 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v221 = &v194 - v31;
  v206 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v216 = *(v206 - 8);
  MEMORY[0x2A1C7C4A8](v206, v32);
  v217 = v33;
  v34 = &v194 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7294E8(0);
  v218 = v35;
  MEMORY[0x2A1C7C4A8](v35, v36);
  v38 = &v194 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7294A0(0);
  v41 = MEMORY[0x2A1C7C4A8](v39 - 8, v40);
  v201 = &v194 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x2A1C7C4A8](v41, v43);
  v219 = &v194 - v45;
  MEMORY[0x2A1C7C4A8](v44, v46);
  v197 = &v194 - v47;
  sub_29D7275B0(0, &qword_2A17B3190, sub_29D7294A0, MEMORY[0x29EDBC498]);
  v49 = v48;
  v50 = *(v48 - 8);
  v52 = MEMORY[0x2A1C7C4A8](v48, v51);
  v54 = &v194 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v52, v55);
  v200 = &v194 - v56;
  sub_29D729424(0);
  v59 = MEMORY[0x2A1C7C4A8](v57 - 8, v58);
  v220 = &v194 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v59, v61);
  v63 = &v194 - v62;
  sub_29D71DF0C(0, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
  v199 = v64;
  sub_29D939848();
  v65 = v229;
  swift_getKeyPath();
  *&v229 = v65;
  v198 = sub_29D728154(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E18();

  v66 = *(v65 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__hasValidSamples);

  v67 = 1;
  if (v66 == 1)
  {
    v194 = v49;
    sub_29D72AC38(a1, v34, type metadata accessor for BloodPressureJournalSettingsView);
    v68 = (*(v216 + 80) + 16) & ~*(v216 + 80);
    v69 = swift_allocObject();
    v195 = v34;
    sub_29D72BA58(v34, v69 + v68, type metadata accessor for BloodPressureJournalSettingsView);
    sub_29D7295F8(0);
    sub_29D72968C();
    sub_29D9396C8();
    v70 = sub_29D9390D8();
    sub_29D72956C(0);
    v72 = &v38[*(v71 + 36)];
    *v72 = v70;
    *(v72 + 8) = 0u;
    *(v72 + 24) = 0u;
    v72[40] = 1;
    v73 = [objc_opt_self() tertiarySystemBackgroundColor];
    v74 = sub_29D939528();
    v75 = sub_29D9390D8();
    sub_29D729530(0);
    v77 = &v38[*(v76 + 36)];
    *v77 = v74;
    v77[8] = v75;
    sub_29D933E48();
    v79 = v78;
    v80 = &v38[*(v218 + 36)];
    v81 = *(sub_29D9388D8() + 20);
    v82 = *MEMORY[0x29EDBC6F8];
    v83 = sub_29D938C38();
    (*(*(v83 - 8) + 104))(&v80[v81], v82, v83);
    *v80 = v79;
    *(v80 + 1) = v79;
    sub_29D7280C0(0);
    *&v80[*(v84 + 36)] = 256;
    *&v229 = 0;
    *(&v229 + 1) = 0xE000000000000000;
    sub_29D93AA18();
    v85 = sub_29D939D68();
    v87 = v86;

    *&v229 = v85;
    *(&v229 + 1) = v87;
    MEMORY[0x29ED6A240](0xD00000000000002ELL, 0x800000029D95CBA0);
    sub_29D72B6F0();
    v88 = v197;
    sub_29D939438();

    sub_29D72AEFC(v38, sub_29D7294E8);
    LOBYTE(v87) = sub_29D9390E8();
    sub_29D71DFDC();
    sub_29D938618();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;
    sub_29D72BA58(v88, v54, sub_29D7294A0);
    v49 = v194;
    v97 = &v54[*(v194 + 36)];
    *v97 = v87;
    *(v97 + 1) = v90;
    *(v97 + 2) = v92;
    *(v97 + 3) = v94;
    *(v97 + 4) = v96;
    v97[40] = 0;
    v98 = v54;
    v99 = v200;
    sub_29D72B908(v98, v200);
    sub_29D72B908(v99, v63);
    v67 = 0;
    v34 = v195;
  }

  (*(v50 + 56))(v63, v67, 1, v49);
  if (sub_29D71DFDC())
  {
    v200 = v63;
    v206 = *(a1 + *(v206 + 68));
    sub_29D72AC38(a1, v34, type metadata accessor for BloodPressureJournalSettingsView);
    v100 = (*(v216 + 80) + 16) & ~*(v216 + 80);
    v101 = swift_allocObject();
    sub_29D72BA58(v34, v101 + v100, type metadata accessor for BloodPressureJournalSettingsView);
    sub_29D7295F8(0);
    sub_29D72968C();
    sub_29D9396C8();
    v102 = sub_29D9390D8();
    sub_29D72956C(0);
    v104 = &v38[*(v103 + 36)];
    *v104 = v102;
    *(v104 + 8) = 0u;
    *(v104 + 24) = 0u;
    v104[40] = 1;
    v105 = [objc_opt_self() tertiarySystemBackgroundColor];
    v106 = sub_29D939528();
    LOBYTE(v100) = sub_29D9390D8();
    sub_29D729530(0);
    v108 = &v38[*(v107 + 36)];
    *v108 = v106;
    v108[8] = v100;
    sub_29D933E48();
    v110 = v109;
    v111 = &v38[*(v218 + 36)];
    v112 = *(sub_29D9388D8() + 20);
    v113 = *MEMORY[0x29EDBC6F8];
    v114 = sub_29D938C38();
    (*(*(v114 - 8) + 104))(&v111[v112], v113, v114);
    *v111 = v110;
    *(v111 + 1) = v110;
    sub_29D7280C0(0);
    *&v111[*(v115 + 36)] = 256;
    *&v229 = 0;
    *(&v229 + 1) = 0xE000000000000000;
    sub_29D93AA18();
    v116 = sub_29D939D68();
    v118 = v117;

    *&v229 = v116;
    *(&v229 + 1) = v118;
    MEMORY[0x29ED6A240](0xD00000000000002FLL, 0x800000029D95CB00);
    sub_29D72B6F0();
    sub_29D939438();

    sub_29D72AEFC(v38, sub_29D7294E8);
    v119 = v208;
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v120 = qword_2A1A2BE98;
    v121 = v210;
    v122 = v211;
    (*(v210 + 16))(v207, v119, v211);
    sub_29D935E88();
    v123 = v120;
    sub_29D933A98();
    v124 = sub_29D939D98();
    v126 = v125;
    (*(v121 + 8))(v119, v122);
    *&v229 = v124;
    *(&v229 + 1) = v126;
    sub_29D69AB60();
    v127 = sub_29D9392F8();
    v129 = v128;
    v131 = v130;
    LODWORD(v229) = sub_29D938EF8();
    v132 = sub_29D9392B8();
    v134 = v133;
    v136 = v135;
    sub_29D69ABB4(v127, v129, v131 & 1);

    sub_29D939228();
    v137 = sub_29D9392C8();
    v139 = v138;
    v141 = v140;
    v143 = v142;

    sub_29D69ABB4(v132, v134, v136 & 1);

    KeyPath = swift_getKeyPath();
    *&v229 = v137;
    *(&v229 + 1) = v139;
    LOBYTE(v134) = v141 & 1;
    LOBYTE(v230) = v141 & 1;
    *(&v230 + 1) = v143;
    *&v231 = KeyPath;
    BYTE8(v231) = 0;
    *&v224 = 0;
    *(&v224 + 1) = 0xE000000000000000;
    sub_29D93AA18();
    v145 = sub_29D939D68();
    MEMORY[0x29ED6A240](v145);

    MEMORY[0x29ED6A240](0xD000000000000036, 0x800000029D95CB60);
    sub_29D69A8C4(0);
    sub_29D72B0B8();
    v146 = v204;
    sub_29D939438();

    sub_29D69ABB4(v137, v139, v134);

    v147 = sub_29D9390C8();
    v148 = v146 + *(v202 + 36);
    *v148 = v147;
    *(v148 + 8) = 0u;
    *(v148 + 24) = 0u;
    *(v148 + 40) = 1;
    v149 = v219;
    v150 = v201;
    sub_29D72AC38(v219, v201, sub_29D7294A0);
    v151 = v203;
    sub_29D72AC38(v146, v203, sub_29D729930);
    v152 = v205;
    *v205 = v206;
    *(v152 + 8) = 0;
    sub_29D7298B8(0);
    v154 = v153;
    sub_29D72AC38(v150, v152 + *(v153 + 48), sub_29D7294A0);
    sub_29D72AC38(v151, v152 + *(v154 + 64), sub_29D729930);
    sub_29D72AEFC(v151, sub_29D729930);
    sub_29D72AEFC(v150, sub_29D7294A0);
    sub_29D72AC38(v152, v214, sub_29D729884);
    swift_storeEnumTagMultiPayload();
    sub_29D728154(&qword_2A17B33A8, sub_29D729884, MEMORY[0x29EDBCC30]);
    sub_29D72ADC8(&qword_2A17B33B0, sub_29D7299D4, sub_29D72B588);
    v155 = v221;
    sub_29D938DE8();
    sub_29D72AEFC(v152, sub_29D729884);
    sub_29D72AEFC(v146, sub_29D729930);
    sub_29D72AEFC(v149, sub_29D7294A0);
    sub_29D727814(0, &qword_2A17B31D8, sub_29D729884, sub_29D7299D4, MEMORY[0x29EDBC7F0]);
    (*(*(v156 - 8) + 56))(v155, 0, 1, v156);
    v63 = v200;
  }

  else
  {
    sub_29D939848();
    v157 = v229;
    swift_getKeyPath();
    *&v229 = v157;
    sub_29D933E18();

    v158 = *(v157 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__hasValidSamples);

    if (v158 == 1)
    {
      v159 = v63;
      v160 = v208;
      sub_29D939D08();
      if (qword_2A1A242C0 != -1)
      {
        swift_once();
      }

      v161 = qword_2A1A2BE98;
      v162 = v210;
      v163 = v211;
      (*(v210 + 16))(v207, v160, v211);
      sub_29D935E88();
      v164 = v161;
      sub_29D933A98();
      v165 = sub_29D939D98();
      v167 = v166;
      (*(v162 + 8))(v160, v163);
      *&v229 = v165;
      *(&v229 + 1) = v167;
      sub_29D69AB60();
      v168 = sub_29D9392F8();
      v170 = v169;
      v172 = v171;
      LODWORD(v229) = sub_29D938EF8();
      v173 = sub_29D9392B8();
      v175 = v174;
      v177 = v176;
      v179 = v178;
      sub_29D69ABB4(v168, v170, v172 & 1);

      v180 = swift_getKeyPath();
      v181 = sub_29D9391F8();
      v182 = swift_getKeyPath();
      v228 = v177 & 1;
      *&v224 = v173;
      *(&v224 + 1) = v175;
      LOBYTE(v225) = v177 & 1;
      *(&v225 + 1) = v179;
      *&v226 = v180;
      BYTE8(v226) = 0;
      *&v227 = v182;
      *(&v227 + 1) = v181;
      *&v229 = 0;
      *(&v229 + 1) = 0xE000000000000000;
      sub_29D93AA18();
      v183 = sub_29D939D68();
      MEMORY[0x29ED6A240](v183);

      MEMORY[0x29ED6A240](0xD000000000000034, 0x800000029D95CAC0);
      sub_29D6F8CCC(0);
      sub_29D6F8DB8();
      v184 = v196;
      sub_29D939438();

      v229 = v224;
      v230 = v225;
      v231 = v226;
      v232 = v227;
      sub_29D72AEFC(&v229, sub_29D6F8CCC);
      v185 = sub_29D9390C8();
      v186 = v184 + *(v215 + 36);
      *v186 = v185;
      *(v186 + 8) = 0u;
      *(v186 + 24) = 0u;
      *(v186 + 40) = 1;
      sub_29D72AC38(v184, v214, sub_29D7299D4);
      swift_storeEnumTagMultiPayload();
      sub_29D728154(&qword_2A17B33A8, sub_29D729884, MEMORY[0x29EDBCC30]);
      sub_29D72ADC8(&qword_2A17B33B0, sub_29D7299D4, sub_29D72B588);
      v155 = v221;
      sub_29D938DE8();
      sub_29D72AEFC(v184, sub_29D7299D4);
      sub_29D727814(0, &qword_2A17B31D8, sub_29D729884, sub_29D7299D4, MEMORY[0x29EDBC7F0]);
      (*(*(v187 - 8) + 56))(v155, 0, 1, v187);
      v63 = v159;
    }

    else
    {
      sub_29D727814(0, &qword_2A17B31D8, sub_29D729884, sub_29D7299D4, MEMORY[0x29EDBC7F0]);
      v155 = v221;
      (*(*(v188 - 8) + 56))(v221, 1, 1, v188);
    }
  }

  v189 = v220;
  sub_29D72AC38(v63, v220, sub_29D729424);
  v190 = v222;
  sub_29D72AC38(v155, v222, sub_29D7297E8);
  v191 = v223;
  sub_29D72AC38(v189, v223, sub_29D729424);
  sub_29D72750C(0, &qword_2A17B3180, sub_29D729424, sub_29D7297E8);
  sub_29D72AC38(v190, v191 + *(v192 + 48), sub_29D7297E8);
  sub_29D72AEFC(v155, sub_29D7297E8);
  sub_29D72AEFC(v63, sub_29D729424);
  sub_29D72AEFC(v190, sub_29D7297E8);
  return sub_29D72AEFC(v189, sub_29D729424);
}

uint64_t sub_29D723D0C()
{
  v0 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v2 = sub_29D939D18();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v26 - v9;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A2BE98;
  (*(v3 + 16))(v7, v10, v2);
  sub_29D935E88();
  v12 = v11;
  sub_29D933A98();
  v13 = sub_29D939D98();
  v15 = v14;
  (*(v3 + 8))(v10, v2);
  *&v35[0] = v13;
  *(&v35[0] + 1) = v15;
  sub_29D69AB60();
  v16 = sub_29D9392F8();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_29D9398B8();
  sub_29D9388E8();
  v36 = v20 & 1;
  *&v26 = v16;
  *(&v26 + 1) = v18;
  LOBYTE(v27) = v20 & 1;
  *(&v27 + 1) = v22;
  *&v35[0] = 0;
  *(&v35[0] + 1) = 0xE000000000000000;
  sub_29D93AA18();
  v23 = sub_29D939D68();
  MEMORY[0x29ED6A240](v23);

  MEMORY[0x29ED6A240](0xD000000000000032, 0x800000029D95CC00);
  v24 = MEMORY[0x29EDBC5F8];
  sub_29D72A4D4(0, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  sub_29D72975C(&qword_2A17B24E8, &qword_2A17B24E0, v24);
  sub_29D939438();

  v35[6] = v32;
  v35[7] = v33;
  v35[8] = v34;
  v35[2] = v28;
  v35[3] = v29;
  v35[4] = v30;
  v35[5] = v31;
  v35[0] = v26;
  v35[1] = v27;
  return sub_29D72B3C8(v35, &qword_2A17B24E0, v24);
}

uint64_t sub_29D7240BC@<X0>(uint64_t a1@<X8>)
{
  v34[1] = a1;
  v1 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v34 - v10;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A2BE98;
  (*(v4 + 16))(v8, v11, v3);
  sub_29D935E88();
  v13 = v12;
  sub_29D933A98();
  v14 = sub_29D939D98();
  v16 = v15;
  (*(v4 + 8))(v11, v3);
  *&v44[0] = v14;
  *(&v44[0] + 1) = v16;
  sub_29D69AB60();
  v17 = sub_29D9392F8();
  v19 = v18;
  v21 = v20;
  *&v44[0] = sub_29D939548();
  v22 = sub_29D9392B8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_29D69ABB4(v17, v19, v21 & 1);

  sub_29D9398B8();
  sub_29D9388E8();
  v45 = v26 & 1;
  *&v35 = v22;
  *(&v35 + 1) = v24;
  LOBYTE(v36) = v26 & 1;
  *(&v36 + 1) = v28;
  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  sub_29D93AA18();
  v29 = sub_29D939D68();
  v31 = v30;

  *&v44[0] = v29;
  *(&v44[0] + 1) = v31;
  MEMORY[0x29ED6A240](0xD00000000000002DLL, 0x800000029D95CC70);
  v32 = MEMORY[0x29EDBC5F8];
  sub_29D72A4D4(0, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  sub_29D72975C(&qword_2A17B24E8, &qword_2A17B24E0, v32);
  sub_29D939438();

  v44[6] = v41;
  v44[7] = v42;
  v44[8] = v43;
  v44[2] = v37;
  v44[3] = v38;
  v44[4] = v39;
  v44[5] = v40;
  v44[0] = v35;
  v44[1] = v36;
  return sub_29D72B3C8(v44, &qword_2A17B24E0, v32);
}

uint64_t sub_29D7244CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D729BA8(0);
  v87 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v86 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D729B74(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D729EB0(0);
  v83 = v13;
  v80 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v78 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D729F64(0);
  v81 = v16;
  v77 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v76 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D729E7C(0);
  v21 = MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v79 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v85 = &v70 - v24;
  v25 = sub_29D938E68();
  MEMORY[0x2A1C7C4A8](v25 - 8, v26);
  sub_29D729F98(0, &qword_2A17B3240, sub_29D729C48, sub_29D729D1C);
  v84 = v27;
  v82 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v30 = &v70 - v29;
  sub_29D729B40(0);
  v88 = v31;
  v33 = MEMORY[0x2A1C7C4A8](v31, v32);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = &v70 - v37;
  if (sub_29D71DFDC())
  {
    v71 = v8;
    v72 = v9;
    v74 = v12;
    v75 = a2;
    v39 = sub_29D938E58();
    MEMORY[0x2A1C7C4A8](v39, v40);
    *(&v70 - 2) = a1;
    sub_29D729C48(0);
    sub_29D729D1C();
    v73 = v30;
    sub_29D9386E8();
    sub_29D71DF0C(0, &qword_2A17B2E70, type metadata accessor for BloodPressureJournalSettingsViewModel, MEMORY[0x29EDBCBA8]);
    sub_29D939848();
    v41 = v89;
    swift_getKeyPath();
    v89 = v41;
    sub_29D728154(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
    sub_29D933E18();

    v42 = *(v41 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isPresentedModally);

    if (v42 == 1)
    {
      v43 = sub_29D938E38();
      MEMORY[0x2A1C7C4A8](v43, v44);
      *(&v70 - 2) = a1;
      sub_29D72A014(0);
      sub_29D72A05C();
      v45 = v76;
      sub_29D9386E8();
      v46 = sub_29D728154(&qword_2A17B32A0, sub_29D729F64, MEMORY[0x29EDBBEC0]);
      v47 = v78;
      v48 = v81;
      MEMORY[0x29ED69290](v45, v81, v46);
      v50 = v79;
      v49 = v80;
      v51 = v83;
      (*(v80 + 16))(v79, v47, v83);
      (*(v49 + 56))(v50, 0, 1, v51);
      v89 = v48;
      v90 = v46;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v53 = v85;
      MEMORY[0x29ED692A0](v50, v51, OpaqueTypeConformance2);
      sub_29D72A794(v50, sub_29D729E7C);
      (*(v49 + 8))(v47, v51);
      (*(v77 + 8))(v45, v48);
    }

    else
    {
      v55 = v79;
      v56 = v83;
      (*(v80 + 56))(v79, 1, 1, v83);
      v57 = sub_29D728154(&qword_2A17B32A0, sub_29D729F64, MEMORY[0x29EDBBEC0]);
      v89 = v81;
      v90 = v57;
      v58 = swift_getOpaqueTypeConformance2();
      v53 = v85;
      MEMORY[0x29ED692A0](v55, v56, v58);
      sub_29D72A794(v55, sub_29D729E7C);
    }

    v59 = v86;
    v60 = *(v87 + 48);
    v61 = v82;
    v62 = v73;
    v63 = v84;
    (*(v82 + 16))(v86, v73, v84);
    sub_29D72AF5C(v53, &v59[v60], sub_29D729E7C);
    v64 = v74;
    sub_29D938CD8();
    v65 = v71;
    v66 = v72;
    (*(v72 + 16))(v35, v64, v71);
    (*(v66 + 56))(v35, 0, 1, v65);
    v67 = sub_29D72A1AC();
    MEMORY[0x29ED692A0](v35, v65, v67);
    sub_29D72A794(v35, sub_29D729B40);
    (*(v66 + 8))(v64, v65);
    sub_29D72A794(v53, sub_29D729E7C);
    (*(v61 + 8))(v62, v63);
  }

  else
  {
    (*(v9 + 56))(v35, 1, 1, v8);
    v54 = sub_29D72A1AC();
    MEMORY[0x29ED692A0](v35, v8, v54);
    sub_29D72A794(v35, sub_29D729B40);
  }

  v68 = sub_29D72A13C(&qword_2A17B32A8, sub_29D729B40, sub_29D72A1AC, MEMORY[0x29EDBC2E0]);
  MEMORY[0x29ED69290](v38, v88, v68);
  return sub_29D72A794(v38, sub_29D729B40);
}

uint64_t sub_29D724E50(uint64_t a1)
{
  v2 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  sub_29D729C90(0);
  v8 = v7;
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D72AC38(a1, &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for BloodPressureJournalSettingsView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_29D72BA58(&v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for BloodPressureJournalSettingsView);
  sub_29D9399C8();
  v14 = (a1 + *(v3 + 88));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v23) = v15;
  v24 = v16;
  sub_29D72819C(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29D939698();
  LOBYTE(v3) = v22[15];
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = (v3 & 1) == 0;
  v19 = &v11[*(v8 + 36)];
  *v19 = KeyPath;
  v19[1] = sub_29D72ABB4;
  v19[2] = v18;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_29D93AA18();
  v20 = sub_29D939D68();
  MEMORY[0x29ED6A240](v20);

  MEMORY[0x29ED6A240](0xD00000000000003BLL, 0x800000029D95C8A0);
  sub_29D729DCC();
  sub_29D939438();

  return sub_29D72AEFC(v11, sub_29D729C90);
}

uint64_t sub_29D725124(uint64_t a1)
{
  v2 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v5);
  v6 = sub_29D9399F8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D72AC38(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BloodPressureJournalSettingsView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_29D72BA58(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for BloodPressureJournalSettingsView);
  sub_29D9399C8();
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_29D93AA18();
  v13 = sub_29D939D68();
  MEMORY[0x29ED6A240](v13);

  MEMORY[0x29ED6A240](0xD000000000000036, 0x800000029D95C860);
  sub_29D728154(&qword_2A17B3298, MEMORY[0x29EDC4308], MEMORY[0x29EDC4300]);
  sub_29D939438();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D7253A0@<X0>(uint64_t a3@<X8>)
{
  sub_29D69AB60();
  sub_29D935E88();
  result = sub_29D9392F8();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_29D72540C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29D939588();
  *a1 = result;
  return result;
}

uint64_t sub_29D725434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v68 = a2;
  sub_29D728CE4(0);
  v4 = v3 - 8;
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D728CBC(0);
  v65 = v8 - 8;
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v67 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v63 = &v62 - v14;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v66 = &v62 - v16;
  v17 = sub_29D939628();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D72B554(0);
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D728B3C(0);
  v27 = v26 - 8;
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v62 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v33 = (&v62 - v32);
  sub_29D939638();
  sub_29D938C98();
  v34 = sub_29D938CB8();
  (*(*(v34 - 8) + 56))(v25, 0, 1, v34);
  sub_29D939648();

  sub_29D72AEFC(v25, sub_29D72B554);
  (*(v18 + 104))(v21, *MEMORY[0x29EDBCAB8], v17);
  v35 = sub_29D939668();

  (*(v18 + 8))(v21, v17);
  sub_29D728BFC(0);
  v37 = (v33 + *(v36 + 36));
  sub_29D728C88(0);
  v39 = *(v38 + 28);
  v40 = *MEMORY[0x29EDBCAD0];
  v41 = sub_29D939658();
  (*(*(v41 - 8) + 104))(v37 + v39, v40, v41);
  *v37 = swift_getKeyPath();
  *v33 = v35;
  v42 = sub_29D939568();
  sub_29D727F38(0, &qword_2A17B30C0, sub_29D728BFC, &qword_2A17B2468, MEMORY[0x29EDBC8E8]);
  *(v33 + *(v43 + 36)) = v42;
  sub_29D728B64(0);
  v45 = v33 + *(v44 + 36);
  *v45 = 0;
  *(v45 + 4) = 1;
  sub_29D9398A8();
  sub_29D938718();
  v46 = (v33 + *(v27 + 44));
  v47 = v70;
  *v46 = v69;
  v46[1] = v47;
  v46[2] = v71;
  *v7 = sub_29D938C78();
  *(v7 + 1) = 0x4018000000000000;
  v7[16] = 0;
  sub_29D72ABCC(0, &qword_2A17B33E0, sub_29D728E04, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29D725B3C(v64, &v7[*(v48 + 44)]);
  KeyPath = swift_getKeyPath();
  v50 = &v7[*(v4 + 44)];
  *v50 = KeyPath;
  v50[8] = 0;
  sub_29D9398A8();
  sub_29D9388E8();
  v51 = v63;
  sub_29D72BA58(v7, v63, sub_29D728CE4);
  v52 = (v51 + *(v65 + 44));
  v53 = v77;
  v52[4] = v76;
  v52[5] = v53;
  v52[6] = v78;
  v54 = v73;
  *v52 = v72;
  v52[1] = v54;
  v55 = v75;
  v52[2] = v74;
  v52[3] = v55;
  v56 = v66;
  sub_29D72BA58(v51, v66, sub_29D728CBC);
  v57 = v62;
  sub_29D72AC38(v33, v62, sub_29D728B3C);
  v58 = v67;
  sub_29D72AC38(v56, v67, sub_29D728CBC);
  v59 = v68;
  sub_29D72AC38(v57, v68, sub_29D728B3C);
  sub_29D72750C(0, &qword_2A17B30A8, sub_29D728B3C, sub_29D728CBC);
  sub_29D72AC38(v58, v59 + *(v60 + 48), sub_29D728CBC);
  sub_29D72AEFC(v56, sub_29D728CBC);
  sub_29D72AEFC(v33, sub_29D728B3C);
  sub_29D72AEFC(v58, sub_29D728CBC);
  return sub_29D72AEFC(v57, sub_29D728B3C);
}

uint64_t sub_29D725B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a1;
  v120 = a2;
  v111 = type metadata accessor for BloodPressureJournalSettingsView(0);
  v108 = *(v111 - 8);
  MEMORY[0x2A1C7C4A8](v111, v2);
  v109 = v3;
  v110 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D728EF4(0);
  v117 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v116 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D728EAC(0);
  v9 = MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v119 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v118 = &v97 - v12;
  v13 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D939D18();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v22 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v97 - v24;
  sub_29D6F90C0(0);
  v28 = MEMORY[0x2A1C7C4A8](v26 - 8, v27);
  v115 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v114 = &v97 - v32;
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v112 = &v97 - v35;
  MEMORY[0x2A1C7C4A8](v34, v36);
  v121 = &v97 - v37;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v38 = qword_2A1A2BE98;
  v104 = qword_2A1A2BE98;
  v103 = unk_2A1A2BEA0;
  v39 = qword_2A1A2BEA8;
  v40 = *(v18 + 16);
  v106 = v18 + 16;
  v107 = v40;
  v40(v22, v25, v17);
  v99 = v39;
  sub_29D935E88();
  v105 = v38;
  sub_29D933A98();
  v41 = sub_29D939D98();
  v100 = v16;
  v42 = v41;
  v98 = v22;
  v44 = v43;
  v102 = *(v18 + 8);
  v102(v25, v17);
  v124 = v42;
  v125 = v44;
  v101 = sub_29D69AB60();
  v45 = sub_29D9392F8();
  v47 = v46;
  LOBYTE(v38) = v48;
  sub_29D939198();
  v49 = sub_29D939298();
  v51 = v50;
  v97 = v17;
  v53 = v52;
  v55 = v54;
  sub_29D69ABB4(v45, v47, v38 & 1);

  v124 = v49;
  v125 = v51;
  v126 = v53 & 1;
  v127 = v55;
  v122 = 0;
  v123 = 0xE000000000000000;
  sub_29D93AA18();
  v56 = sub_29D939D68();
  MEMORY[0x29ED6A240](v56);

  MEMORY[0x29ED6A240](0xD000000000000035, 0x800000029D95CCA0);
  sub_29D939438();

  sub_29D69ABB4(v49, v51, v53 & 1);

  sub_29D939D08();
  v57 = v97;
  v107(v98, v25, v97);
  sub_29D935E88();
  v58 = v105;
  sub_29D933A98();
  v59 = sub_29D939D98();
  v61 = v60;
  v102(v25, v57);
  v124 = v59;
  v125 = v61;
  v62 = sub_29D9392F8();
  v64 = v63;
  v124 = v62;
  v125 = v63;
  LOBYTE(v47) = v65 & 1;
  v126 = v65 & 1;
  v127 = v66;
  v122 = 0;
  v123 = 0xE000000000000000;
  sub_29D93AA18();
  v67 = sub_29D939D68();
  MEMORY[0x29ED6A240](v67);

  MEMORY[0x29ED6A240](0xD000000000000038, 0x800000029D95CCE0);
  v68 = v112;
  sub_29D939438();

  sub_29D69ABB4(v62, v64, v47);

  v69 = v110;
  sub_29D72AC38(v113, v110, type metadata accessor for BloodPressureJournalSettingsView);
  v70 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v71 = swift_allocObject();
  sub_29D72BA58(v69, v71 + v70, type metadata accessor for BloodPressureJournalSettingsView);
  v72 = MEMORY[0x29EDBC558];
  sub_29D727814(0, &qword_2A17B3120, sub_29D729040, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  sub_29D729100();
  v73 = v116;
  sub_29D9396C8();
  sub_29D933E58();
  v75 = v74;
  sub_29D727814(0, &qword_2A17B3110, sub_29D728F98, sub_29D7280C0, v72);
  v77 = (v73 + *(v76 + 36));
  v78 = *(sub_29D9388D8() + 20);
  v79 = *MEMORY[0x29EDBC6F8];
  v80 = sub_29D938C38();
  (*(*(v80 - 8) + 104))(&v77[v78], v79, v80);
  *v77 = v75;
  *(v77 + 1) = v75;
  sub_29D7280C0(0);
  *&v77[*(v81 + 36)] = 256;
  LOBYTE(v79) = sub_29D939138();
  sub_29D938618();
  v82 = v73 + *(v117 + 36);
  *v82 = v79;
  *(v82 + 8) = v83;
  *(v82 + 16) = v84;
  *(v82 + 24) = v85;
  *(v82 + 32) = v86;
  *(v82 + 40) = 0;
  v124 = 0;
  v125 = 0xE000000000000000;
  sub_29D93AA18();
  v87 = sub_29D939D68();
  MEMORY[0x29ED6A240](v87);

  MEMORY[0x29ED6A240](0xD000000000000031, 0x800000029D95CD20);
  sub_29D72ADC8(&qword_2A17B33E8, sub_29D728EF4, sub_29D72BB34);
  v88 = v118;
  sub_29D939438();

  sub_29D72AEFC(v73, sub_29D728EF4);
  v89 = v121;
  v90 = v114;
  sub_29D72AC38(v121, v114, sub_29D6F90C0);
  v91 = v115;
  sub_29D72AC38(v68, v115, sub_29D6F90C0);
  v92 = v119;
  sub_29D72AC38(v88, v119, sub_29D728EAC);
  v93 = v120;
  sub_29D72AC38(v90, v120, sub_29D6F90C0);
  sub_29D728E38(0);
  v95 = v94;
  sub_29D72AC38(v91, v93 + *(v94 + 48), sub_29D6F90C0);
  sub_29D72AC38(v92, v93 + *(v95 + 64), sub_29D728EAC);
  sub_29D72AEFC(v88, sub_29D728EAC);
  sub_29D72AEFC(v68, sub_29D6F90C0);
  sub_29D72AEFC(v89, sub_29D6F90C0);
  sub_29D72AEFC(v92, sub_29D728EAC);
  sub_29D72AEFC(v91, sub_29D6F90C0);
  return sub_29D72AEFC(v90, sub_29D6F90C0);
}

uint64_t sub_29D726658@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v53 - v10;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A2BE98;
  (*(v4 + 16))(v8, v11, v3);
  sub_29D935E88();
  v13 = v12;
  sub_29D933A98();
  v14 = sub_29D939D98();
  v16 = v15;
  (*(v4 + 8))(v11, v3);
  *&v63[0] = v14;
  *(&v63[0] + 1) = v16;
  sub_29D69AB60();
  v17 = sub_29D9392F8();
  v19 = v18;
  v21 = v20;
  sub_29D939198();
  v22 = sub_29D939298();
  v24 = v23;
  v26 = v25;
  sub_29D69ABB4(v17, v19, v21 & 1);

  *&v63[0] = sub_29D939598();
  v27 = sub_29D9392B8();
  v29 = v28;
  LOBYTE(v16) = v30;
  v32 = v31;
  sub_29D69ABB4(v22, v24, v26 & 1);

  LOBYTE(v17) = sub_29D9390C8();
  sub_29D938618();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  LOBYTE(v24) = v16 & 1;
  LOBYTE(v54) = v16 & 1;
  v62 = 0;
  LOBYTE(v16) = sub_29D939138();
  sub_29D938618();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  LOBYTE(v63[0]) = 0;
  v49 = sub_29D939558();
  v50 = sub_29D9390D8();
  *&v54 = v27;
  *(&v54 + 1) = v29;
  LOBYTE(v55) = v24;
  *(&v55 + 1) = v32;
  LOBYTE(v56) = v17;
  *(&v56 + 1) = v34;
  *&v57 = v36;
  *(&v57 + 1) = v38;
  *&v58 = v40;
  BYTE8(v58) = 0;
  LOBYTE(v59) = v16;
  *(&v59 + 1) = v42;
  *&v60 = v44;
  *(&v60 + 1) = v46;
  *&v61[0] = v48;
  BYTE8(v61[0]) = 0;
  *&v61[1] = v49;
  BYTE8(v61[1]) = v50;
  *&v63[0] = 0;
  *(&v63[0] + 1) = 0xE000000000000000;
  sub_29D93AA18();
  v51 = sub_29D939D68();
  MEMORY[0x29ED6A240](v51);

  MEMORY[0x29ED6A240](0xD00000000000003ALL, 0x800000029D95CD60);
  sub_29D729040(0);
  sub_29D7285C8(&qword_2A17B3140, sub_29D729040, sub_29D729238, sub_29D7287B8);
  sub_29D939438();

  v63[6] = v60;
  v64[0] = v61[0];
  *(v64 + 9) = *(v61 + 9);
  v63[2] = v56;
  v63[3] = v57;
  v63[4] = v58;
  v63[5] = v59;
  v63[0] = v54;
  v63[1] = v55;
  return sub_29D72AEFC(v63, sub_29D729040);
}

void sub_29D726B18(uint64_t a2@<X8>)
{
  sub_29D9390B8();
  sub_29D726D88(0);
  sub_29D726F24(255);
  sub_29D727088(255);
  sub_29D7271A8(255);
  sub_29D729A78(255);
  sub_29D72A1E0();
  sub_29D729B40(255);
  sub_29D72A13C(&qword_2A17B32A8, sub_29D729B40, sub_29D72A1AC, MEMORY[0x29EDBC2E0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_29D69AB60();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_29D938688();
  v3 = [objc_opt_self() secondarySystemBackgroundColor];
  v4 = sub_29D939528();
  v5 = sub_29D938868();
  v6 = sub_29D9390D8();
  v7 = sub_29D9398A8();
  v9 = v8;
  sub_29D727814(0, &qword_2A17B32C8, sub_29D72A290, sub_29D72A444, MEMORY[0x29EDBC558]);
  v11 = a2 + *(v10 + 36);
  *v11 = v4;
  *(v11 + 8) = v5;
  *(v11 + 16) = v6;
  *(v11 + 24) = v7;
  *(v11 + 32) = v9;
}

void sub_29D726D88(uint64_t a1)
{
  if (!qword_2A17B2E90)
  {
    sub_29D726F24(255);
    sub_29D727088(255);
    sub_29D7271A8(255);
    sub_29D729A78(255);
    sub_29D72A1E0();
    sub_29D729B40(255);
    sub_29D72A13C(&qword_2A17B32A8, sub_29D729B40, sub_29D72A1AC, MEMORY[0x29EDBC2E0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D69AB60();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2E90);
    }
  }
}

void sub_29D726F24(uint64_t a1)
{
  if (!qword_2A17B2E98)
  {
    sub_29D727088(255);
    sub_29D7271A8(255);
    sub_29D729A78(255);
    sub_29D72A1E0();
    sub_29D729B40(255);
    sub_29D72A13C(&qword_2A17B32A8, sub_29D729B40, sub_29D72A1AC, MEMORY[0x29EDBC2E0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D69AB60();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2E98);
    }
  }
}

void sub_29D727088(uint64_t a1)
{
  if (!qword_2A17B2EA0)
  {
    sub_29D7271A8(255);
    sub_29D729A78(255);
    sub_29D72A1E0();
    sub_29D729B40(255);
    sub_29D72A13C(&qword_2A17B32A8, sub_29D729B40, sub_29D72A1AC, MEMORY[0x29EDBC2E0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2EA0);
    }
  }
}

void sub_29D7271D0(uint64_t a1)
{
  if (!qword_2A17B2EB0)
  {
    sub_29D727264(255);
    sub_29D728154(&qword_2A17B3218, sub_29D727264, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939758();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2EB0);
    }
  }
}

void sub_29D727264(uint64_t a1)
{
  if (!qword_2A17B2EB8)
  {
    sub_29D72750C(255, &qword_2A17B2EC0, sub_29D7272EC, sub_29D729308);
    v1 = sub_29D9398E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2EB8);
    }
  }
}

void sub_29D727368(uint64_t a1)
{
  if (!qword_2A17B2ED8)
  {
    sub_29D7273F0(255);
    sub_29D7277CC(255);
    sub_29D7279F0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B2ED8);
    }
  }
}

void sub_29D7273F0(uint64_t a1)
{
  if (!qword_2A17B2EE0)
  {
    sub_29D727484(255);
    sub_29D728154(&qword_2A17B2F20, sub_29D727484, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939768();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2EE0);
    }
  }
}

void sub_29D727484(uint64_t a1)
{
  if (!qword_2A17B2EE8)
  {
    sub_29D72750C(255, &qword_2A17B2EF0, sub_29D727588, sub_29D7276E4);
    v1 = sub_29D9398E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2EE8);
    }
  }
}

void sub_29D72750C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29D7275B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29D938838();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D727614(uint64_t a1)
{
  if (!qword_2A17B2F00)
  {
    sub_29D727690();
    v1 = sub_29D938698();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2F00);
    }
  }
}

unint64_t sub_29D727690()
{
  result = qword_2A17B2F08;
  if (!qword_2A17B2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2F08);
  }

  return result;
}

void sub_29D72770C(uint64_t a1)
{
  if (!qword_2A17B2F18)
  {
    sub_29D72A4D4(255, &qword_2A17B1748, MEMORY[0x29EDBCAF8], MEMORY[0x29EDBC728], MEMORY[0x29EDBC558]);
    sub_29D72A4D4(255, &qword_2A17B2468, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2F18);
    }
  }
}

void sub_29D727814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29D7278E0(uint64_t a1)
{
  if (!qword_2A17B2F38)
  {
    sub_29D69A8C4(255);
    sub_29D72A4D4(255, &qword_2A17B2F40, MEMORY[0x29EDBC870], MEMORY[0x29EDBC868], MEMORY[0x29EDBC8E8]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2F38);
    }
  }
}

void sub_29D727974(uint64_t a1)
{
  if (!qword_2A17B2420)
  {
    sub_29D72819C(255, &qword_2A17B2428, MEMORY[0x29EDBC9F0], MEMORY[0x29EDC9C68]);
    v1 = sub_29D939088();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2420);
    }
  }
}

void sub_29D7279F0(uint64_t a1)
{
  if (!qword_2A17B2F48)
  {
    sub_29D727A84(255);
    sub_29D728154(&qword_2A17B3068, sub_29D727A84, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939758();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2F48);
    }
  }
}

void sub_29D727AB8(uint64_t a1)
{
  if (!qword_2A17B2F58)
  {
    sub_29D72A4D4(255, &qword_2A17B1688, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
    sub_29D727B54(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B2F58);
    }
  }
}

void sub_29D727B9C(uint64_t a1)
{
  if (!qword_2A17B2F68)
  {
    sub_29D727C30(255);
    sub_29D728154(&qword_2A17B3060, sub_29D727C30, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939758();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2F68);
    }
  }
}

void sub_29D727C64(uint64_t a1)
{
  if (!qword_2A17B2F78)
  {
    sub_29D727CC8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B2F78);
    }
  }
}

void sub_29D727D10(uint64_t a1)
{
  if (!qword_2A17B2F88)
  {
    sub_29D727DE4(255);
    sub_29D9339F8();
    sub_29D72839C();
    sub_29D728154(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2F88);
    }
  }
}

void sub_29D727E2C(uint64_t a1)
{
  if (!qword_2A17B2F98)
  {
    sub_29D727814(255, &qword_2A17B2FA0, sub_29D727EFC, sub_29D7280C0, MEMORY[0x29EDBC558]);
    sub_29D72819C(255, &qword_2A17B2FE0, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC958]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2F98);
    }
  }
}
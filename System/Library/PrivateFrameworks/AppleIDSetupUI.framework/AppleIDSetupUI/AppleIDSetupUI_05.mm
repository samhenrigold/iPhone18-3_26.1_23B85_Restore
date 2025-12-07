uint64_t sub_24099B18C(void *a1, void *a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  if (a2)
  {
    v14 = a2;
    sub_240A2AE9C();
    v15 = a2;
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C2AC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v37 = v5;
      v19 = v18;
      v36 = swift_slowAlloc();
      v38 = v36;
      *v19 = 136315138;
      swift_getErrorValue();
      v20 = sub_240A2C6CC();
      v22 = sub_240925464(v20, v21, &v38);

      *(v19 + 4) = v22;
      _os_log_impl(&dword_2408FE000, v16, v17, "Safety settings completed with error: %s", v19, 0xCu);
      v23 = v36;
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x245CCDDB0](v23, -1, -1);
      v24 = v19;
      v5 = v37;
      MEMORY[0x245CCDDB0](v24, -1, -1);
    }

    else
    {
    }

    v30 = *(v5 + 8);
    v30(v13, v4);
  }

  else
  {
    sub_240A2AE9C();
    v25 = a1;
    v26 = sub_240A2AFFC();
    v27 = sub_240A2C28C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      v29 = a1 && ([v25 isSafetySettingsApplied]& 1) != 0;
      *(v28 + 4) = v29;

      _os_log_impl(&dword_2408FE000, v26, v27, "Safety settings completed successfully. Applied: %{BOOL}d", v28, 8u);
      MEMORY[0x245CCDDB0](v28, -1, -1);
    }

    else
    {

      v26 = v25;
    }

    v30 = *(v5 + 8);
    v30(v11, v4);
  }

  sub_24099A240();
  sub_240A2AE9C();
  v31 = sub_240A2AFFC();
  v32 = sub_240A2C28C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2408FE000, v31, v32, "Safety settings flow finished and sign-in completed", v33, 2u);
    MEMORY[0x245CCDDB0](v33, -1, -1);
  }

  return (v30)(v8, v4);
}

unint64_t sub_24099B560()
{
  result = qword_27E50D540;
  if (!qword_27E50D540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D548, &qword_240A34DC8);
    sub_24099B5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D540);
  }

  return result;
}

unint64_t sub_24099B5EC()
{
  result = qword_27E50D550;
  if (!qword_27E50D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D550);
  }

  return result;
}

unint64_t sub_24099B644()
{
  result = qword_27E50D560;
  if (!qword_27E50D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D560);
  }

  return result;
}

uint64_t sub_24099B6C4()
{
  type metadata accessor for SignInOptionCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D6C0, &qword_240A34F48);
  result = sub_240A2BF9C();
  qword_27E50D5D0 = result;
  *algn_27E50D5D8 = v1;
  return result;
}

id sub_24099B718()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_appleIDLogoMicaView;
  *&v0[OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_appleIDLogoMicaView] = 0;
  *&v0[OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v0[OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_viewModel];
  v4 = sub_240A2C06C();
  v6 = v5;
  v7 = sub_240A2C06C();
  v9 = v8;
  v10 = sub_24099CAF8();
  *v3 = v4;
  v3[1] = v6;
  v3[2] = v7;
  v3[3] = v9;
  v3[4] = 0x6F6C2E656C707061;
  v3[5] = 0xEA00000000006F67;
  v3[6] = v10;
  type metadata accessor for AISAppleIDMicaView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = *&v0[v2];
  *&v0[v2] = v11;

  v13 = sub_240A2BF1C();

  v14 = sub_240A2BF1C();

  v18.receiver = v0;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v13, v14, 0, 1);

  v16 = v15;
  sub_24099B8D0();
  [v16 setModalInPresentation_];

  return v16;
}

void sub_24099B8D0()
{
  v1 = v0;
  v2 = sub_240A2974C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277CED220], v2);
  v6 = sub_240A2973C();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = &selRef_accessoryButton;
  }

  else
  {
    v7 = &selRef_linkButton;
  }

  if (v6)
  {
    v8 = &selRef_headerView;
  }

  else
  {
    v8 = &selRef_buttonTray;
  }

  if (v6)
  {
    v9 = &selRef_addAccessoryButton_;
  }

  else
  {
    v9 = &selRef_addButton_;
  }

  v10 = [objc_opt_self() *v7];
  sub_240A2C06C();
  v11 = sub_240A2BF1C();

  [v10 setTitle:v11 forState:0];

  [v10 addTarget:v1 action:sel_createAccountAction forControlEvents:64];
  v12 = sub_240A2BF1C();
  [v10 setAccessibilityIdentifier_];

  v13 = [v1 *v8];
  [v13 *v9];
}

void sub_24099BB10()
{
  v50.receiver = v0;
  v50.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v50, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v2 = v1;
  v3 = sub_240A2BF1C();
  [v2 setAccessibilityIdentifier_];

  v4 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTableView_];

  v5 = [v0 tableView];
  if (!v5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v7 = [v0 tableView];
  if (!v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = v7;
  [v7 setRowHeight_];

  v9 = [v0 tableView];
  if (!v9)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = v9;
  [v9 setEstimatedRowHeight_];

  v11 = [v0 tableView];
  if (!v11)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = v11;
  v13 = [objc_opt_self() systemBackgroundColor];
  [v12 setBackgroundColor_];

  v14 = [v0 tableView];
  if (!v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = v14;
  type metadata accessor for SignInOptionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (qword_27E50AF60 != -1)
  {
    swift_once();
  }

  v17 = sub_240A2BF1C();
  [v15 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v17];

  v18 = [v0 tableView];
  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = v18;
  [v18 setDataSource_];

  v20 = [v0 tableView];
  if (!v20)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21 = v20;
  [v20 setDelegate_];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v23 = v22;
  [v22 layoutIfNeeded];

  type metadata accessor for AISAppleIDMicaView();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_appleIDLogoMicaView;
  v26 = *&v0[OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_appleIDLogoMicaView];
  *&v0[OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_appleIDLogoMicaView] = v24;

  v27 = *&v0[v25];
  if (v27)
  {
    [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v28 = [v0 headerView];
  v29 = [v28 animationView];

  if (v29)
  {
    v30 = *&v0[v25];
    if (v30)
    {
      v31 = v30;
      v32 = [v0 headerView];
      v33 = [v32 animationView];

      if (v33)
      {
        [v33 addSubview_];
      }

      v34 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_240A33530;
      v36 = v31;
      v37 = [v36 topAnchor];
      v38 = v29;
      v39 = [v38 topAnchor];
      v40 = [v37 constraintEqualToAnchor:v39 constant:0.0];

      *(v35 + 32) = v40;
      v41 = [v36 bottomAnchor];
      v42 = [v38 bottomAnchor];
      v43 = [v41 constraintEqualToAnchor:v42 constant:0.0];

      *(v35 + 40) = v43;
      v44 = [v36 leadingAnchor];
      v45 = [v38 leadingAnchor];
      v46 = [v44 constraintEqualToAnchor:v45 constant:0.0];

      *(v35 + 48) = v46;
      v47 = [v36 trailingAnchor];

      v48 = [v38 trailingAnchor];
      v49 = [v47 constraintEqualToAnchor:v48 constant:0.0];

      *(v35 + 56) = v49;
      sub_24092F234();
      v29 = sub_240A2C15C();

      [v34 activateConstraints_];
    }
  }
}

uint64_t sub_24099C2EC()
{
  v0 = sub_240A2B00C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2408FE000, v4, v5, "Create account tapped", v6, 2u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_createAccountActionHandler);

    v8(v9);
    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_24099C4DC(void *a1)
{
  if (qword_27E50AF60 != -1)
  {
    swift_once();
  }

  v3 = sub_240A2BF1C();
  v4 = sub_240A2963C();
  v5 = [a1 dequeueReusableCellWithIdentifier:v3 forIndexPath:v4];

  type metadata accessor for SignInOptionCell();
  v6 = swift_dynamicCastClassUnconditional();
  v7 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_viewModel + 48);
  result = sub_240A2965C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v7 + 16))
  {
    sub_240A0FF20(*(v7 + result + 32));
    v9 = v5;
    [v6 setAccessoryType_];
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 secondarySystemBackgroundColor];
    [v6 setBackgroundColor_];

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_24099C774(void *a1)
{
  v3 = sub_240A2963C();
  [a1 deselectRowAtIndexPath:v3 animated:1];

  v4 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_viewModel + 48);
  result = sub_240A2965C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result >= *(v4 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = *(v4 + result + 32);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2409D0A9C(v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_24099C958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_240A2966C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2964C();
  v8 = *MEMORY[0x277D76F30];
  (*(v5 + 8))(v7, v4);
  return v8;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24099CA54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24099CA9C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

char *sub_24099CAF8()
{
  if ([objc_opt_self() isProxAuthEnabled])
  {
    v0 = sub_240937AB8(0, 1, 1, MEMORY[0x277D84F90]);
    v2 = *(v0 + 2);
    v1 = *(v0 + 3);
    if (v2 >= v1 >> 1)
    {
      v0 = sub_240937AB8((v1 > 1), v2 + 1, 1, v0);
    }

    *(v0 + 2) = v2 + 1;
    v0[v2 + 32] = 0;
  }

  else
  {
    v0 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_240937AB8(0, *(v0 + 2) + 1, 1, v0);
  }

  v4 = *(v0 + 2);
  v3 = *(v0 + 3);
  if (v4 >= v3 >> 1)
  {
    v0 = sub_240937AB8((v3 > 1), v4 + 1, 1, v0);
  }

  *(v0 + 2) = v4 + 1;
  v0[v4 + 32] = 1;
  return v0;
}

uint64_t AuthenticationView.init(model:skipAction:remoteRole:role:serverDeviceModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v11 = sub_240A2975C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AuthenticationView(0);
  v16 = v15[7];
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F540, &unk_240A34F50);
  sub_240A2BC4C();
  *(a7 + v16) = v32;
  v17 = v15[8];
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D6F0, &qword_240A34B08);
  sub_240A2BC4C();
  *(a7 + v17) = v32;
  v18 = v15[9];
  v31 = 0;
  sub_240A2BC4C();
  *(a7 + v18) = v32;
  v19 = a7 + v15[12];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = a7 + v15[13];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v15[14];
  *&v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D248, &unk_240A34FB0);
  swift_allocObject();
  *(a7 + v21) = sub_240A2AF1C();
  sub_240919298(a1, a7 + v15[5], &qword_27E50D700, &qword_240A34A50);
  v22 = (a7 + v15[6]);
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  *a7 = a2;
  LOBYTE(v31) = v30 & 1;
  v24 = a2;
  sub_240A2BC4C();
  v25 = *(&v32 + 1);
  v26 = a7 + v15[10];
  *v26 = v32;
  *(v26 + 1) = v25;
  (*(v12 + 16))(v14, a3, v11);
  sub_240A2BC4C();

  (*(v12 + 8))(a3, v11);
  return sub_240919300(a1, &qword_27E50D700, &qword_240A34A50);
}

uint64_t type metadata accessor for AuthenticationView(uint64_t a1)
{
  result = qword_27E50D8B8;
  if (!qword_27E50D8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24099CF18()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50D6D0);
  __swift_project_value_buffer(v0, qword_27E50D6D0);
  return sub_240A2AE7C();
}

uint64_t sub_24099CF64()
{
  v1 = sub_240A2B52C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for AuthenticationView(0) + 52);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_240A2C2BC();
    v7 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24090C1E4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t AuthenticationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_240A2A8FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_240A2A9AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D708, &unk_240A34FC0);
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  sub_24099D338((v14 - v10));
  type metadata accessor for AuthenticationView(0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0](v12);
  sub_240A2A90C();
  (*(v6 + 8))(v8, v5);
  sub_24099E36C();
  sub_24099EC88(&qword_27E50D8B0, MEMORY[0x277CEDC88], MEMORY[0x277CEDC90]);
  sub_240A2BAFC();
  (*(v2 + 8))(v4, v1);
  return sub_240905D98(v11);
}

uint64_t sub_24099D338@<X0>(void *a1@<X8>)
{
  v68 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B8, &qword_240A35230);
  MEMORY[0x28223BE20](v59);
  v58 = &v49 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x28223BE20](v3);
  v57 = &v49 - v4;
  v56 = sub_240A2A8EC();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D738, &qword_240A34FD8);
  MEMORY[0x28223BE20](v66);
  v62 = (&v49 - v6);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9C0, &qword_240A35238);
  v61 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v60 = &v49 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9C8, &qword_240A35240);
  MEMORY[0x28223BE20](v63);
  v65 = &v49 - v8;
  v9 = type metadata accessor for AuthenticationView(0);
  v50 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = v10;
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D720, &unk_240A337B0);
  MEMORY[0x28223BE20](v64);
  v53 = &v49 - v11;
  v12 = sub_240A2A6FC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_240A2A9AC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v1;
  v49 = v3;
  MEMORY[0x245CCC9B0](v3);
  sub_240A2A76C();
  v20 = *(v17 + 8);
  v20(v19, v16);
  v21 = sub_240A2A6CC();
  v22 = *(v13 + 8);
  v22(v15, v12);
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
    sub_240974954();
    v23 = v53;
    sub_240A2B21C();
    v24 = v52;
    sub_2409AC4E4(v69, v52, type metadata accessor for AuthenticationView);
    v25 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v26 = swift_allocObject();
    sub_2409AC3A4(v24, v26 + v25);
    v27 = v65;
    v28 = (v23 + *(v64 + 36));
    *v28 = sub_2409AC408;
    v28[1] = v26;
    v28[2] = 0;
    v28[3] = 0;
    sub_240919298(v23, v27, &unk_27E50D720, &unk_240A337B0);
    swift_storeEnumTagMultiPayload();
    sub_240972F80();
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    v30 = sub_24099E490();
    v31 = sub_24091C4F8();
    v32 = sub_24099EBA0();
    v70 = v66;
    v71 = MEMORY[0x277D837D0];
    v72 = v29;
    v73 = MEMORY[0x277CE0BD8];
    v74 = v30;
    v75 = v31;
    v76 = v32;
    v77 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    return sub_240919300(v23, &unk_27E50D720, &unk_240A337B0);
  }

  else
  {
    v53 = v12;
    sub_2409A0060(v62);
    MEMORY[0x245CCC9B0](v49);
    sub_240A2A76C();
    v20(v19, v16);
    v34 = v54;
    sub_240A2A69C();
    v22(v15, v53);
    v35 = sub_240A2A8CC();
    v37 = v36;
    v53 = v36;
    (*(v55 + 8))(v34, v56);
    v78 = v35;
    v79 = v37;
    v38 = v57;
    sub_240A2BD1C();
    swift_getKeyPath();
    v39 = v58;
    sub_240A2BD0C();

    sub_240919300(v38, &qword_27E50D700, &qword_240A34A50);
    swift_getKeyPath();
    sub_240A2BD0C();

    v40 = sub_240919300(v39, &qword_27E50D9B8, &qword_240A35230);
    v41 = MEMORY[0x28223BE20](v40);
    MEMORY[0x28223BE20](v41);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D740, &qword_240A34FE0);
    v69 = sub_24099E490();
    v42 = sub_24091C4F8();
    v48 = sub_24099EBA0();
    v43 = v66;
    v44 = v60;
    v45 = v62;
    sub_240A2BA9C();

    sub_240919300(v45, &qword_27E50D738, &qword_240A34FD8);
    v46 = v61;
    v47 = v67;
    (*(v61 + 16))(v65, v44, v67);
    swift_storeEnumTagMultiPayload();
    sub_240972F80();
    v70 = v43;
    v71 = MEMORY[0x277D837D0];
    v72 = v59;
    v73 = MEMORY[0x277CE0BD8];
    v74 = v69;
    v75 = v42;
    v76 = v48;
    v77 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    return (*(v46 + 8))(v44, v47);
  }
}

uint64_t sub_24099DD64(void (*a1)(char *, uint64_t), char *a2)
{
  v4 = sub_240A2A8AC();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  v10 = sub_240A2A8FC();
  v11 = *(v10 - 8);
  v68 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v65 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v59 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v59 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - v22;
  if (qword_27E50AF68 != -1)
  {
    swift_once();
  }

  v24 = sub_240A2B00C();
  __swift_project_value_buffer(v24, qword_27E50D6D0);
  v73 = v11;
  v25 = *(v11 + 16);
  v70 = a1;
  v26 = a1;
  v27 = v25;
  v25(v23, v26, v10);
  v25(v21, a2, v10);
  v28 = sub_240A2AFFC();
  v64 = sub_240A2C29C();
  v29 = os_log_type_enabled(v28, v64);
  v66 = a2;
  v67 = v9;
  v63 = v7;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v74 = v62;
    *v30 = 136315394;
    v27(v18, v23, v10);
    v31 = sub_240A2BF9C();
    v60 = v27;
    v61 = v28;
    v32 = v31;
    v34 = v33;
    v35 = *(v73 + 8);
    v35(v23, v10);
    v36 = sub_240925464(v32, v34, &v74);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2080;
    v37 = v60;
    v60(v18, v21, v10);
    v38 = sub_240A2BF9C();
    v40 = v39;
    v35(v21, v10);
    v41 = sub_240925464(v38, v40, &v74);
    v42 = v71;

    *(v30 + 14) = v41;
    v43 = v61;
    _os_log_impl(&dword_2408FE000, v61, v64, "Auth: onChange, oldValue: %s, newValue: %s", v30, 0x16u);
    v44 = v62;
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v44, -1, -1);
    MEMORY[0x245CCDDB0](v30, -1, -1);

    v45 = v73;
    v27 = v37;
  }

  else
  {

    v45 = v73;
    v35 = *(v73 + 8);
    v35(v21, v10);
    v35(v23, v10);
    v42 = v71;
  }

  v46 = v69;
  v27(v69, v70, v10);
  v47 = *(v45 + 88);
  v48 = v47(v46, v10);
  if (v48 != *MEMORY[0x277CEDC70])
  {
    return (v35)(v46, v10);
  }

  v49 = v48;
  v50 = *(v45 + 96);
  v73 = v45 + 96;
  v70 = v50;
  v71 = v35;
  v50(v46, v10);
  v51 = v67;
  v69 = *(v42 + 4);
  (v69)(v67, v46, v72);
  v52 = v65;
  v27(v65, v66, v10);
  if (v47(v52, v10) == v49)
  {
    v70(v52, v10);
    v53 = v63;
    (v69)(v63, v52, v72);
    sub_240A2A87C();
    if (v54)
    {
      sub_240A2A87C();
    }

    v55 = *(v42 + 1);
    v56 = v53;
    v57 = v72;
    v55(v56, v72);
    return (v55)(v51, v57);
  }

  else
  {
    (*(v42 + 1))(v51, v72);
    return (v71)(v52, v10);
  }
}

unint64_t sub_24099E36C()
{
  result = qword_27E50D710;
  if (!qword_27E50D710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D708, &unk_240A34FC0);
    sub_240972F80();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D738, &qword_240A34FD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    sub_24099E490();
    sub_24091C4F8();
    sub_24099EBA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D710);
  }

  return result;
}

unint64_t sub_24099E490()
{
  result = qword_27E50D748;
  if (!qword_27E50D748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D738, &qword_240A34FD8);
    sub_24099E51C();
    sub_24099E9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D748);
  }

  return result;
}

unint64_t sub_24099E51C()
{
  result = qword_27E50D750;
  if (!qword_27E50D750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D758, &qword_240A34FE8);
    sub_24099E5A8();
    sub_24099E6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D750);
  }

  return result;
}

unint64_t sub_24099E5A8()
{
  result = qword_27E50D760;
  if (!qword_27E50D760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D768, &qword_240A34FF0);
    sub_24099E798(&qword_27E50D770, &qword_27E50D778, &qword_240A34FF8, sub_2409369EC);
    sub_24099EA98(&qword_27E50D7E8, &qword_27E50D7F0, &qword_240A35048, sub_24099E68C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D760);
  }

  return result;
}

unint64_t sub_24099E68C()
{
  result = qword_27E50D7F8;
  if (!qword_27E50D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D7F8);
  }

  return result;
}

unint64_t sub_24099E6E0()
{
  result = qword_27E50D800;
  if (!qword_27E50D800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D808, &qword_240A35050);
    sub_24099E798(&qword_27E50D810, &qword_27E50D818, &qword_240A35058, sub_24099E848);
    sub_24099E930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D800);
  }

  return result;
}

uint64_t sub_24099E798(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040, &unk_240A33440);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24099E848()
{
  result = qword_27E50D820;
  if (!qword_27E50D820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D828, &unk_240A35060);
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0, &protocol conformance descriptor for ProxCardView<A>);
    sub_24099EC88(&qword_27E50D840, type metadata accessor for LoginCard, &unk_240A309F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D820);
  }

  return result;
}

unint64_t sub_24099E930()
{
  result = qword_27E50D848;
  if (!qword_27E50D848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D850, &qword_240A35070);
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040, &unk_240A33440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D848);
  }

  return result;
}

unint64_t sub_24099E9E0()
{
  result = qword_27E50D858;
  if (!qword_27E50D858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D860, &qword_240A35078);
    sub_24099EA98(&qword_27E50D868, &qword_27E50D870, &qword_240A35080, sub_24099E930);
    sub_24099EB14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D858);
  }

  return result;
}

uint64_t sub_24099EA98(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24099EB14()
{
  result = qword_27E50D878;
  if (!qword_27E50D878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D880, &unk_240A35088);
    sub_24099E930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D878);
  }

  return result;
}

unint64_t sub_24099EBA0()
{
  result = qword_27E50D890;
  if (!qword_27E50D890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240, MEMORY[0x277CDF028]);
    sub_24099EC88(&qword_27E50CBC0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D890);
  }

  return result;
}

uint64_t sub_24099EC88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24099ECEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v34 = a1;
  v35 = a3;
  v33 = a2;
  v7 = type metadata accessor for AuthenticationView(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = sub_240A2B52C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v5 + *(v8 + 56);
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    v17 = v16;
  }

  else
  {

    sub_240A2C2BC();
    v18 = sub_240A2B84C();
    v32 = v5;
    v19 = v9;
    v20 = v18;
    sub_240A2AFEC();

    v9 = v19;
    v5 = v32;
    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24091C37C(v16, 0);
    (*(v12 + 8))(v14, v11);
    v16 = v36;
  }

  sub_2409AC4E4(v5, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AuthenticationView);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_2409AC3A4(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v21);
  v26 = v33;
  v25 = v34;
  *(v24 + v22) = v34;
  *(v24 + v23) = v16;
  v27 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  v28 = v35;
  *v27 = v26;
  v27[1] = v28;
  *a4 = sub_2409AD0E0;
  a4[1] = v24;
  a4[2] = sub_24099F6AC;
  a4[3] = 0;
  v29 = v25;
}

void sub_24099EF9C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void))
{
  type metadata accessor for AuthenticationView(0);
  sub_240A2AF2C();
  v9 = v29;
  if (v29)
  {
    [v29 _updateWithValuesFromContext_];
    if (a4)
    {
LABEL_3:
      v10 = qword_27E50AF68;
      v11 = a4;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = sub_240A2B00C();
      __swift_project_value_buffer(v12, qword_27E50D6D0);
      v13 = v9;
      v14 = sub_240A2AFFC();
      v15 = sub_240A2C29C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = a5;
        v19 = swift_slowAlloc();
        v29 = v19;
        *v16 = 136315394;
        *(v16 + 4) = sub_240925464(0xD000000000000012, 0x8000000240A350F0, &v29);
        *(v16 + 12) = 2112;
        *(v16 + 14) = v13;
        *v17 = v13;
        v20 = v13;
        _os_log_impl(&dword_2408FE000, v14, v15, "%s applying peerAnisetteClient (if needed) to %@", v16, 0x16u);
        sub_240919300(v17, &unk_27E50B730, &qword_240A30CE0);
        MEMORY[0x245CCDDB0](v17, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v19);
        v21 = v19;
        a5 = v18;
        MEMORY[0x245CCDDB0](v21, -1, -1);
        MEMORY[0x245CCDDB0](v16, -1, -1);
      }

      sub_24099F36C(v11);
      goto LABEL_14;
    }
  }

  else
  {
    sub_2409194E8(0, qword_27E50DAB0, 0x277CF0380);
    v22 = a3;
    v29 = sub_240A2C34C();
    v9 = v29;
    sub_240A2AF3C();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  if (qword_27E50AF68 != -1)
  {
    swift_once();
  }

  v23 = sub_240A2B00C();
  __swift_project_value_buffer(v23, qword_27E50D6D0);
  v24 = sub_240A2AFFC();
  v25 = sub_240A2C29C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_240925464(0xD000000000000012, 0x8000000240A350F0, &v29);
    _os_log_impl(&dword_2408FE000, v24, v25, "%s missing peerAnisetteClient - unexpected state", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x245CCDDB0](v27, -1, -1);
    MEMORY[0x245CCDDB0](v26, -1, -1);
  }

LABEL_14:
  [v9 setPresentingViewController_];
  v28 = swift_dynamicCastObjCProtocolUnconditional();
  a5(v28);
}

void sub_24099F36C(void *a1)
{
  v2 = v1;
  v4 = [v2 companionDevice];
  if (v4 && (v5 = v4, v6 = [v4 linkType], v5, v6 == 3) || (v7 = objc_msgSend(v2, sel_proxiedDevice)) != 0 && (v8 = v7, v9 = objc_msgSend(v7, sel_linkType), v8, v9 == 3))
  {
    if (qword_27E50AF68 != -1)
    {
      swift_once();
    }

    v10 = sub_240A2B00C();
    __swift_project_value_buffer(v10, qword_27E50D6D0);
    v11 = v2;
    v12 = a1;
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C28C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v15 = 138412546;
      *(v15 + 4) = v11;
      *v16 = v11;
      *(v15 + 12) = 2080;
      sub_240A29DEC();
      v18 = v11;
      v19 = v12;
      v20 = sub_240A2BF9C();
      v22 = sub_240925464(v20, v21, &v27);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_2408FE000, v13, v14, "%@: Applying anisette data provider: %s", v15, 0x16u);
      sub_240919300(v16, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x245CCDDB0](v17, -1, -1);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }

    [v11 setAnisetteDataProvider_];
  }

  else
  {
    if (qword_27E50AF68 != -1)
    {
      swift_once();
    }

    v23 = sub_240A2B00C();
    __swift_project_value_buffer(v23, qword_27E50D6D0);
    oslog = sub_240A2AFFC();
    v24 = sub_240A2C29C();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2408FE000, oslog, v24, "Neither companionDevice nor proxiedDevice is client-managed, skipping applying anisette data provider", v25, 2u);
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }
  }
}

uint64_t sub_24099F6AC()
{
  sub_240A2C06C();
  sub_24091C4F8();
  return sub_240A2B24C();
}

uint64_t sub_24099F710(uint64_t a1)
{
  v39 = sub_240A2A6AC();
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_240A2A6FC();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A2A9AC();
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AuthenticationView(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF68 != -1)
  {
    swift_once();
  }

  v12 = sub_240A2B00C();
  __swift_project_value_buffer(v12, qword_27E50D6D0);
  sub_2409AC4E4(a1, v11, type metadata accessor for AuthenticationView);
  v13 = sub_240A2AFFC();
  v14 = sub_240A2C29C();
  v15 = os_log_type_enabled(v13, v14);
  v35 = v6;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v34 = a1;
    v17 = v16;
    v31 = v16;
    v33 = swift_slowAlloc();
    v41 = v33;
    *v17 = 136315138;
    v32 = v14;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
    MEMORY[0x245CCC9B0](v18);
    sub_240A2A76C();
    v19 = v37;
    (*(v37 + 8))(v8, v6);
    sub_240A2A6BC();
    v20 = v38;
    (*(v38 + 8))(v5, v40);
    v21 = sub_240A2BF9C();
    v22 = v13;
    v24 = v23;
    sub_2409AC54C(v11, type metadata accessor for AuthenticationView);
    v25 = sub_240925464(v21, v24, &v41);

    v26 = v31;
    *(v31 + 4) = v25;
    _os_log_impl(&dword_2408FE000, v22, v32, "Calling dismiss(for substate: %s", v26, 0xCu);
    v27 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x245CCDDB0](v27, -1, -1);
    MEMORY[0x245CCDDB0](v26, -1, -1);
  }

  else
  {

    sub_2409AC54C(v11, type metadata accessor for AuthenticationView);
    v19 = v37;
    v20 = v38;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0](v28);
  sub_240A2A76C();
  (*(v19 + 8))(v8, v35);
  sub_240A2A6BC();
  (*(v20 + 8))(v5, v40);
  sub_24099FBCC(v3);
  return (*(v36 + 8))(v3, v39);
}

void sub_24099FBCC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_240A2A6AC();
  v38 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  if (qword_27E50AF68 != -1)
  {
    swift_once();
  }

  v13 = sub_240A2B00C();
  __swift_project_value_buffer(v13, qword_27E50D6D0);
  v14 = *(v38 + 16);
  v14(v12, a1, v4);
  v15 = sub_240A2AFFC();
  v16 = sub_240A2C29C();
  v17 = os_log_type_enabled(v15, v16);
  v37 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v35 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v34 = v2;
    v21 = v20;
    aBlock = v20;
    *v19 = 136315138;
    v14(v10, v12, v4);
    v22 = sub_240A2BF9C();
    v36 = v7;
    v24 = v23;
    v25 = *(v38 + 8);
    v25(v12, v4);
    v26 = sub_240925464(v22, v24, &aBlock);
    v27 = v25;
    v7 = v36;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_2408FE000, v15, v16, "dismiss(for substate: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x245CCDDB0](v21, -1, -1);
    v28 = v19;
    a1 = v35;
    MEMORY[0x245CCDDB0](v28, -1, -1);
  }

  else
  {

    v27 = *(v38 + 8);
    v27(v12, v4);
  }

  type metadata accessor for AuthenticationView(0);
  sub_240A2AF2C();
  v29 = aBlock;
  if (aBlock)
  {
    v45 = &unk_2852C77E8;
    v30 = swift_dynamicCastObjCProtocolUnconditional();
    v37(v7, a1, v4);
    v31 = (*(v38 + 88))(v7, v4);
    if (v31 == *MEMORY[0x277CEDBB8])
    {
      v43 = nullsub_1;
      v44 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_240A1EFE0;
      v42 = &block_descriptor_44;
      v32 = _Block_copy(&aBlock);
      [v30 dismissSecondFactorUIWithCompletion_];

      _Block_release(v32);
    }

    else if (v31 == *MEMORY[0x277CEDBD0])
    {
      v43 = nullsub_1;
      v44 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_240A1EFE0;
      v42 = &block_descriptor_41;
      v33 = _Block_copy(&aBlock);
      [v30 dismissServerProvidedUIWithCompletion_];
      _Block_release(v33);
    }

    else
    {

      v27(v7, v4);
    }
  }
}

uint64_t sub_2409A0060@<X0>(void *a1@<X8>)
{
  v359 = a1;
  v287 = sub_240A2A99C();
  v286 = *(v287 - 8);
  MEMORY[0x28223BE20](v287);
  v285 = &v281 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = sub_240A2A7BC();
  v292 = *(v293 - 8);
  MEMORY[0x28223BE20](v293);
  v291 = &v281 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = sub_240A2A81C();
  v301 = *(v302 - 8);
  v4 = MEMORY[0x28223BE20](v302);
  v300 = &v281 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v296 = &v281 - v6;
  v308 = sub_240A2A8AC();
  v307 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v306 = &v281 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = sub_240A2A59C();
  v316 = *(v317 - 8);
  v8 = MEMORY[0x28223BE20](v317);
  v311 = &v281 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v315 = &v281 - v10;
  v319 = sub_240A2B52C();
  v320 = *(v319 - 8);
  MEMORY[0x28223BE20](v319);
  v318 = &v281 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = sub_240A2A57C();
  v324 = *(v325 - 8);
  MEMORY[0x28223BE20](v325);
  v323 = &v281 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA30, &qword_240A352A8);
  MEMORY[0x28223BE20](v337);
  v339 = (&v281 - v13);
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA38, &qword_240A352B0);
  MEMORY[0x28223BE20](v333);
  v335 = (&v281 - v14);
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D818, &qword_240A35058);
  MEMORY[0x28223BE20](v338);
  v336 = &v281 - v15;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D808, &qword_240A35050);
  MEMORY[0x28223BE20](v364);
  v340 = &v281 - v16;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D828, &unk_240A35060);
  MEMORY[0x28223BE20](v334);
  v341 = (&v281 - v17);
  v18 = type metadata accessor for AuthenticationView(0);
  v342 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v284 = &v281 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v290 = &v281 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v299 = &v281 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v305 = &v281 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v314 = &v281 - v28;
  v343 = v29;
  MEMORY[0x28223BE20](v27);
  v344 = &v281 - v30;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA40, &qword_240A352B8);
  MEMORY[0x28223BE20](v362);
  v361 = (&v281 - v31);
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA48, &qword_240A352C0);
  MEMORY[0x28223BE20](v348);
  v350 = &v281 - v32;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA50, &qword_240A352C8);
  MEMORY[0x28223BE20](v357);
  v358 = &v281 - v33;
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA58, &unk_240A352D0);
  MEMORY[0x28223BE20](v354);
  v355 = (&v281 - v34);
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D778, &qword_240A34FF8);
  MEMORY[0x28223BE20](v347);
  v356 = &v281 - v35;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D768, &qword_240A34FF0);
  MEMORY[0x28223BE20](v349);
  v346 = &v281 - v36;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D758, &qword_240A34FE8);
  MEMORY[0x28223BE20](v360);
  v363 = &v281 - v37;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDE8, &unk_240A35000);
  MEMORY[0x28223BE20](v353);
  v345 = (&v281 - v38);
  v352 = sub_240A2A6AC();
  v351 = *(v352 - 8);
  MEMORY[0x28223BE20](v352);
  v40 = &v281 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_240A2A6FC();
  v42 = *(v41 - 8);
  v43 = MEMORY[0x28223BE20](v41);
  v283 = &v281 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v289 = &v281 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v298 = &v281 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v295 = &v281 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v304 = &v281 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v310 = &v281 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v313 = &v281 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v322 = &v281 - v58;
  MEMORY[0x28223BE20](v57);
  v60 = &v281 - v59;
  v61 = sub_240A2A9AC();
  v62 = *(v61 - 8);
  v63 = MEMORY[0x28223BE20](v61);
  v282 = &v281 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v288 = &v281 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v297 = &v281 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v294 = &v281 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v303 = &v281 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v309 = &v281 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v312 = &v281 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v321 = &v281 - v78;
  MEMORY[0x28223BE20](v77);
  v80 = &v281 - v79;
  v332 = v18;
  v81 = *(v18 + 20);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  v83 = v1;
  v326 = v81;
  v327 = v82;
  MEMORY[0x245CCC9B0]();
  sub_240A2A76C();
  v84 = *(v62 + 8);
  v329 = v61;
  v330 = v62 + 8;
  v328 = v84;
  v84(v80, v61);
  sub_240A2A6BC();
  v85 = *(v42 + 8);
  v86 = v60;
  v87 = v41;
  v331 = v42 + 8;
  v85(v86, v41);
  v88 = (*(v351 + 88))(v40, v352);
  if (v88 == *MEMORY[0x277CEDC10])
  {
    v89 = v345;
    sub_2409A475C(v345);
    sub_240919298(v89, v355, &qword_27E50BDE8, &unk_240A35000);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_2409369EC();
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040, &unk_240A33440);
    v90 = v356;
    sub_240A2B6EC();
    sub_240919298(v90, v358, &qword_27E50D778, &qword_240A34FF8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7F0, &qword_240A35048);
    sub_24099E798(&qword_27E50D770, &qword_27E50D778, &qword_240A34FF8, sub_2409369EC);
    sub_24099EA98(&qword_27E50D7E8, &qword_27E50D7F0, &qword_240A35048, sub_24099E68C);
    v91 = v346;
    sub_240A2B6EC();
    sub_240919300(v90, &qword_27E50D778, &qword_240A34FF8);
    sub_240919298(v91, v350, &qword_27E50D768, &qword_240A34FF0);
    swift_storeEnumTagMultiPayload();
    sub_24099E5A8();
    sub_24099E6E0();
    v92 = v363;
    sub_240A2B6EC();
    sub_240919300(v91, &qword_27E50D768, &qword_240A34FF0);
    sub_240919298(v92, v361, &qword_27E50D758, &qword_240A34FE8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
    sub_24099E51C();
    sub_24099E9E0();
    sub_240A2B6EC();
    sub_240919300(v92, &qword_27E50D758, &qword_240A34FE8);
    v93 = v89;
    v94 = &qword_27E50BDE8;
    v95 = &unk_240A35000;
    return sub_240919300(v93, v94, v95);
  }

  v96 = v355;
  v97 = v356;
  v98 = v358;
  if (v88 == *MEMORY[0x277CEDBD8])
  {
    v99 = v344;
    sub_2409AC4E4(v1, v344, type metadata accessor for AuthenticationView);
    v100 = (*(v342 + 80) + 16) & ~*(v342 + 80);
    v101 = swift_allocObject();
    sub_2409AC3A4(v99, v101 + v100);
    *v96 = sub_2409AC4B4;
    v96[1] = v101;
    v352 = v101;
    v96[2] = sub_24099F6AC;
    v96[3] = 0;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_2409369EC();
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040, &unk_240A33440);
    sub_240A2B6EC();
    sub_240919298(v97, v98, &qword_27E50D778, &qword_240A34FF8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7F0, &qword_240A35048);
    sub_24099E798(&qword_27E50D770, &qword_27E50D778, &qword_240A34FF8, sub_2409369EC);
    sub_24099EA98(&qword_27E50D7E8, &qword_27E50D7F0, &qword_240A35048, sub_24099E68C);
    v102 = v346;
    sub_240A2B6EC();
    sub_240919300(v97, &qword_27E50D778, &qword_240A34FF8);
    sub_240919298(v102, v350, &qword_27E50D768, &qword_240A34FF0);
    swift_storeEnumTagMultiPayload();
    sub_24099E5A8();
    sub_24099E6E0();
    v103 = v363;
    sub_240A2B6EC();
    sub_240919300(v102, &qword_27E50D768, &qword_240A34FF0);
    sub_240919298(v103, v361, &qword_27E50D758, &qword_240A34FE8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
    sub_24099E51C();
    sub_24099E9E0();
    sub_240A2B6EC();

    v93 = v103;
    v94 = &qword_27E50D758;
    v95 = &qword_240A34FE8;
    return sub_240919300(v93, v94, v95);
  }

  if (v88 == *MEMORY[0x277CEDC00])
  {
    v365[0] = 0;
    sub_24099E68C();
    sub_240A2B6EC();
    *v98 = v368[0];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7F0, &qword_240A35048);
    sub_24099E798(&qword_27E50D770, &qword_27E50D778, &qword_240A34FF8, sub_2409369EC);
    sub_24099EA98(&qword_27E50D7E8, &qword_27E50D7F0, &qword_240A35048, sub_24099E68C);
    v104 = v346;
    sub_240A2B6EC();
    sub_240919298(v104, v350, &qword_27E50D768, &qword_240A34FF0);
    swift_storeEnumTagMultiPayload();
    sub_24099E5A8();
    sub_24099E6E0();
    v105 = v363;
    sub_240A2B6EC();
    sub_240919300(v104, &qword_27E50D768, &qword_240A34FF0);
    sub_240919298(v105, v361, &qword_27E50D758, &qword_240A34FE8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
    sub_24099E51C();
    sub_24099E9E0();
    sub_240A2B6EC();
    v93 = v105;
LABEL_9:
    v94 = &qword_27E50D758;
    v95 = &qword_240A34FE8;
    return sub_240919300(v93, v94, v95);
  }

  v106 = v363;
  if (v88 == *MEMORY[0x277CEDC08])
  {
    v365[0] = 1;
    sub_24099E68C();
    sub_240A2B6EC();
    *v98 = v368[0];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7F0, &qword_240A35048);
    sub_24099E798(&qword_27E50D770, &qword_27E50D778, &qword_240A34FF8, sub_2409369EC);
    sub_24099EA98(&qword_27E50D7E8, &qword_27E50D7F0, &qword_240A35048, sub_24099E68C);
    v107 = v346;
    sub_240A2B6EC();
    sub_240919298(v107, v350, &qword_27E50D768, &qword_240A34FF0);
    swift_storeEnumTagMultiPayload();
    sub_24099E5A8();
    sub_24099E6E0();
    sub_240A2B6EC();
    sub_240919300(v107, &qword_27E50D768, &qword_240A34FF0);
    sub_240919298(v106, v361, &qword_27E50D758, &qword_240A34FE8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
    sub_24099E51C();
    sub_24099E9E0();
    sub_240A2B6EC();
    v93 = v106;
    goto LABEL_9;
  }

  if (v88 == *MEMORY[0x277CEDBB0])
  {
    v109 = v341;
    sub_2409A4CF8(v341);
    sub_240919298(v109, v335, &qword_27E50D828, &unk_240A35060);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_24099E848();
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040, &unk_240A33440);
    v110 = v336;
    sub_240A2B6EC();
    sub_240919298(v110, v339, &qword_27E50D818, &qword_240A35058);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
    sub_24099E798(&qword_27E50D810, &qword_27E50D818, &qword_240A35058, sub_24099E848);
    sub_24099E930();
    v111 = v340;
    sub_240A2B6EC();
    sub_240919300(v110, &qword_27E50D818, &qword_240A35058);
    sub_240919298(v111, v350, &qword_27E50D808, &qword_240A35050);
    swift_storeEnumTagMultiPayload();
    sub_24099E5A8();
    sub_24099E6E0();
    sub_240A2B6EC();
    sub_240919300(v111, &qword_27E50D808, &qword_240A35050);
    sub_240919298(v106, v361, &qword_27E50D758, &qword_240A34FE8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
    sub_24099E51C();
    sub_24099E9E0();
    sub_240A2B6EC();
    sub_240919300(v106, &qword_27E50D758, &qword_240A34FE8);
    v93 = v341;
    v94 = &qword_27E50D828;
    v95 = &unk_240A35060;
    return sub_240919300(v93, v94, v95);
  }

  if (v88 == *MEMORY[0x277CEDBE0])
  {
    v112 = v1;
    v113 = v321;
    MEMORY[0x245CCC9B0](v327);
    v114 = v322;
    sub_240A2A76C();
    v328(v113, v329);
    v115 = v323;
    sub_240A2A5BC();
    v85(v114, v41);
    v116 = sub_240A2A50C();
    (*(v324 + 8))(v115, v325);
    if (v116)
    {
      v117 = v83 + *(v332 + 48);
      v118 = *v117;
      v119 = v361;
      if (*(v117 + 8) == 1)
      {
        v120 = v118;
      }

      else
      {

        sub_240A2C2BC();
        v141 = sub_240A2B84C();
        sub_240A2AFEC();

        v142 = v318;
        sub_240A2B51C();
        swift_getAtKeyPath();
        sub_24091C37C(v118, 0);
        (*(v320 + 8))(v142, v319);
        v118 = *v368;
      }

      v143 = v344;
      sub_2409AC4E4(v112, v344, type metadata accessor for AuthenticationView);
      v144 = (*(v342 + 80) + 16) & ~*(v342 + 80);
      v145 = (v343 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
      v146 = (v145 + 15) & 0xFFFFFFFFFFFFFFF8;
      v147 = swift_allocObject();
      sub_2409AC3A4(v143, v147 + v144);
      *(v147 + v145) = v116;
      *(v147 + v146) = v118;
      v148 = (v147 + ((v146 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v148 = sub_2409A7F14;
      v148[1] = 0;
      v149 = v335;
      *v335 = sub_2409AD0E0;
      v149[1] = v147;
      v149[2] = sub_24099F6AC;
      v149[3] = 0;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
      sub_24099E848();
      sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040, &unk_240A33440);
      v150 = v336;
      sub_240A2B6EC();
      sub_240919298(v150, v339, &qword_27E50D818, &qword_240A35058);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
      sub_24099E798(&qword_27E50D810, &qword_27E50D818, &qword_240A35058, sub_24099E848);
      sub_24099E930();
      v151 = v340;
      sub_240A2B6EC();
      sub_240919300(v150, &qword_27E50D818, &qword_240A35058);
      sub_240919298(v151, v350, &qword_27E50D808, &qword_240A35050);
      swift_storeEnumTagMultiPayload();
      sub_24099E5A8();
      sub_24099E6E0();
      v152 = v363;
      sub_240A2B6EC();
      sub_240919300(v151, &qword_27E50D808, &qword_240A35050);
      sub_240919298(v152, v119, &qword_27E50D758, &qword_240A34FE8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
      sub_24099E51C();
      sub_24099E9E0();
LABEL_28:
      sub_240A2B6EC();

      v93 = v152;
LABEL_35:
      v94 = &qword_27E50D758;
      v95 = &qword_240A34FE8;
      return sub_240919300(v93, v94, v95);
    }

    __break(1u);
    goto LABEL_82;
  }

  v121 = v1;
  if (v88 == *MEMORY[0x277CEDBB8])
  {
    v122 = v312;
    MEMORY[0x245CCC9B0](v327);
    v123 = v313;
    sub_240A2A76C();
    v328(v122, v329);
    v124 = v315;
    sub_240A2A5CC();
    v85(v123, v87);
    v125 = sub_240A2A58C();
    (*(v316 + 8))(v124, v317);
    if (v125)
    {
      v126 = v314;
      sub_2409AC4E4(v83, v314, type metadata accessor for AuthenticationView);
      v127 = (*(v342 + 80) + 16) & ~*(v342 + 80);
      v128 = v127 + v343;
      v129 = swift_allocObject();
      sub_2409AC3A4(v126, v129 + v127);
      v130 = v83 + *(v332 + 48);
      v131 = *v130;
      if (*(v130 + 8) == 1)
      {
        v132 = v131;
      }

      else
      {

        sub_240A2C2BC();
        v164 = sub_240A2B84C();
        v121 = v83;
        sub_240A2AFEC();

        v165 = v318;
        sub_240A2B51C();
        swift_getAtKeyPath();
        sub_24091C37C(v131, 0);
        (*(v320 + 8))(v165, v319);
        v131 = *v368;
      }

      v166 = v344;
      sub_2409AC4E4(v121, v344, type metadata accessor for AuthenticationView);
      v167 = (v128 + 7) & 0xFFFFFFFFFFFFFFF8;
      v168 = (v167 + 15) & 0xFFFFFFFFFFFFFFF8;
      v169 = swift_allocObject();
      sub_2409AC3A4(v166, v169 + v127);
      *(v169 + v167) = v125;
      *(v169 + v168) = v131;
      v170 = (v169 + ((v168 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v170 = sub_2409AC49C;
      v170[1] = v129;
      *v365 = sub_2409AD0E0;
      *&v365[8] = v169;
      *&v365[16] = sub_24099F6AC;
      *&v365[24] = 0;
      LOBYTE(v366) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
      sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040, &unk_240A33440);
      sub_240A2B6EC();
      v171 = v369;
      v172 = *&v368[16];
      v173 = v339;
      *v339 = *v368;
      v173[1] = v172;
      *(v173 + 32) = v171;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
      sub_24099E798(&qword_27E50D810, &qword_27E50D818, &qword_240A35058, sub_24099E848);
      sub_24099E930();
      v174 = v340;
      sub_240A2B6EC();
      sub_240919298(v174, v350, &qword_27E50D808, &qword_240A35050);
      swift_storeEnumTagMultiPayload();
      sub_24099E5A8();
      sub_24099E6E0();
      v175 = v363;
      sub_240A2B6EC();
      sub_240919300(v174, &qword_27E50D808, &qword_240A35050);
      sub_240919298(v175, v361, &qword_27E50D758, &qword_240A34FE8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
      sub_24099E51C();
      sub_24099E9E0();
      sub_240A2B6EC();

      v93 = v175;
      goto LABEL_35;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v88 == *MEMORY[0x277CEDBF0])
  {
    v133 = v309;
    MEMORY[0x245CCC9B0](v327);
    v134 = v310;
    sub_240A2A76C();
    v328(v133, v329);
    v135 = v311;
    sub_240A2A5CC();
    v85(v134, v87);
    v136 = sub_240A2A58C();
    (*(v316 + 8))(v135, v317);
    if (v136)
    {
      v137 = v83 + *(v332 + 48);
      v138 = *v137;
      v139 = v361;
      if (*(v137 + 8) == 1)
      {
        v140 = v138;
      }

      else
      {

        sub_240A2C2BC();
        v187 = sub_240A2B84C();
        sub_240A2AFEC();

        v188 = v318;
        sub_240A2B51C();
        swift_getAtKeyPath();
        sub_24091C37C(v138, 0);
        (*(v320 + 8))(v188, v319);
        v138 = *v368;
      }

      v189 = v344;
      sub_2409AC4E4(v121, v344, type metadata accessor for AuthenticationView);
      v190 = (*(v342 + 80) + 16) & ~*(v342 + 80);
      v191 = (v343 + v190 + 7) & 0xFFFFFFFFFFFFFFF8;
      v192 = (v191 + 15) & 0xFFFFFFFFFFFFFFF8;
      v193 = swift_allocObject();
      sub_2409AC3A4(v189, v193 + v190);
      *(v193 + v191) = v136;
      *(v193 + v192) = v138;
      v194 = (v193 + ((v192 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v194 = sub_2409A80CC;
      v194[1] = 0;
      *v365 = sub_2409AD0E0;
      *&v365[8] = v193;
      *&v365[16] = sub_24099F6AC;
      *&v365[24] = 0;
      LOBYTE(v366) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
      sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040, &unk_240A33440);
      sub_240A2B6EC();
      v195 = v369;
      v196 = *&v368[16];
      v197 = v339;
      *v339 = *v368;
      v197[1] = v196;
      *(v197 + 32) = v195;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
      sub_24099E798(&qword_27E50D810, &qword_27E50D818, &qword_240A35058, sub_24099E848);
      sub_24099E930();
      v198 = v340;
      sub_240A2B6EC();
      sub_240919298(v198, v350, &qword_27E50D808, &qword_240A35050);
      swift_storeEnumTagMultiPayload();
      sub_24099E5A8();
      sub_24099E6E0();
      v152 = v363;
      sub_240A2B6EC();
      sub_240919300(v198, &qword_27E50D808, &qword_240A35050);
      sub_240919298(v152, v139, &qword_27E50D758, &qword_240A34FE8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
      sub_24099E51C();
      sub_24099E9E0();
      goto LABEL_28;
    }

    goto LABEL_83;
  }

  if (v88 == *MEMORY[0x277CEDBE8])
  {
    v153 = v303;
    MEMORY[0x245CCC9B0](v327);
    v154 = v304;
    sub_240A2A76C();
    v328(v153, v329);
    v155 = v306;
    sub_240A2A67C();
    v85(v154, v87);
    v156 = sub_240A2A58C();
    (*(v307 + 8))(v155, v308);
    if (!v156)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v157 = v305;
    sub_2409AC4E4(v1, v305, type metadata accessor for AuthenticationView);
    v158 = (*(v342 + 80) + 16) & ~*(v342 + 80);
    v159 = v158 + v343;
    v160 = swift_allocObject();
    sub_2409AC3A4(v157, v160 + v158);
    v161 = v1 + *(v332 + 48);
    v162 = *v161;
    if (*(v161 + 8) == 1)
    {
      v163 = v162;
    }

    else
    {

      sub_240A2C2BC();
      v207 = sub_240A2B84C();
      v121 = v83;
      sub_240A2AFEC();

      v208 = v318;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24091C37C(v162, 0);
      (*(v320 + 8))(v208, v319);
      v162 = *v368;
    }

    v209 = v344;
    sub_2409AC4E4(v121, v344, type metadata accessor for AuthenticationView);
    v210 = (v159 + 7) & 0xFFFFFFFFFFFFFFF8;
    v211 = (v210 + 15) & 0xFFFFFFFFFFFFFFF8;
    v212 = swift_allocObject();
    sub_2409AC3A4(v209, v212 + v158);
    *(v212 + v210) = v156;
    *(v212 + v211) = v162;
    v213 = (v212 + ((v211 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v213 = sub_2409AC484;
    v213[1] = v160;
    *v365 = sub_2409AD0E0;
    *&v365[8] = v212;
    *&v365[16] = sub_24099F6AC;
    *&v365[24] = 0;
    LOBYTE(v366) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040, &unk_240A33440);
    sub_240A2B6EC();
    *v365 = *v368;
    *&v365[16] = *&v368[16];
    v366 = v369;
    goto LABEL_54;
  }

  if (v88 == *MEMORY[0x277CEDBD0])
  {
    v176 = v297;
    MEMORY[0x245CCC9B0](v327);
    v177 = v298;
    sub_240A2A76C();
    v328(v176, v329);
    v178 = v300;
    sub_240A2A62C();
    v85(v177, v87);
    v179 = sub_240A2A7FC();
    (*(v301 + 8))(v178, v302);
    if (!v179)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v180 = v299;
    sub_2409AC4E4(v1, v299, type metadata accessor for AuthenticationView);
    v181 = (*(v342 + 80) + 16) & ~*(v342 + 80);
    v182 = v181 + v343;
    v183 = swift_allocObject();
    sub_2409AC3A4(v180, v183 + v181);
    v184 = v1 + *(v332 + 48);
    v185 = *v184;
    if (*(v184 + 8) == 1)
    {
      v186 = v185;
    }

    else
    {

      sub_240A2C2BC();
      v225 = sub_240A2B84C();
      v121 = v83;
      sub_240A2AFEC();

      v226 = v318;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24091C37C(v185, 0);
      (*(v320 + 8))(v226, v319);
      v185 = *v368;
    }

    v227 = v344;
    sub_2409AC4E4(v121, v344, type metadata accessor for AuthenticationView);
    v228 = (v182 + 7) & 0xFFFFFFFFFFFFFFF8;
    v229 = (v228 + 15) & 0xFFFFFFFFFFFFFFF8;
    v230 = swift_allocObject();
    sub_2409AC3A4(v227, v230 + v181);
    *(v230 + v228) = v179;
    *(v230 + v229) = v185;
    v231 = (v230 + ((v229 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v231 = sub_2409AC46C;
    v231[1] = v183;
    *v365 = sub_2409AD0E0;
    *&v365[8] = v230;
    *&v365[16] = sub_24099F6AC;
    *&v365[24] = 0;
    LOBYTE(v366) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040, &unk_240A33440);
    sub_240A2B6EC();
    *v365 = *v368;
    *&v365[16] = *&v368[16];
    LOBYTE(v366) = v369;
    HIBYTE(v366) = 1;
    goto LABEL_54;
  }

  if (v88 == *MEMORY[0x277CEDBF8])
  {
    v199 = v294;
    MEMORY[0x245CCC9B0](v327);
    v200 = v295;
    sub_240A2A76C();
    v328(v199, v329);
    v201 = v296;
    sub_240A2A62C();
    v85(v200, v87);
    v202 = sub_240A2A7FC();
    (*(v301 + 8))(v201, v302);
    if (!v202)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v203 = v83 + *(v332 + 48);
    v204 = *v203;
    v205 = v361;
    if (*(v203 + 8) == 1)
    {
      v206 = v204;
    }

    else
    {

      sub_240A2C2BC();
      v242 = sub_240A2B84C();
      sub_240A2AFEC();

      v243 = v318;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24091C37C(v204, 0);
      (*(v320 + 8))(v243, v319);
      v204 = *v368;
    }

    v244 = v344;
    sub_2409AC4E4(v121, v344, type metadata accessor for AuthenticationView);
    v245 = (*(v342 + 80) + 16) & ~*(v342 + 80);
    v246 = (v343 + v245 + 7) & 0xFFFFFFFFFFFFFFF8;
    v247 = (v246 + 15) & 0xFFFFFFFFFFFFFFF8;
    v248 = swift_allocObject();
    sub_2409AC3A4(v244, v248 + v245);
    *(v248 + v246) = v202;
    *(v248 + v247) = v204;
    v249 = (v248 + ((v247 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v249 = sub_2409A937C;
    v249[1] = 0;
    *v365 = sub_2409AD0E0;
    *&v365[8] = v248;
    *&v365[16] = sub_24099F6AC;
    *&v365[24] = 0;
    LOBYTE(v366) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040, &unk_240A33440);
    sub_240A2B6EC();
    *v365 = *v368;
    *&v365[16] = *&v368[16];
    v366 = v369;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
    sub_24099E930();
    sub_240A2B6EC();
    if (HIBYTE(v369))
    {
      v250 = 256;
    }

    else
    {
      v250 = 0;
    }

    *v365 = *v368;
    *&v365[16] = *&v368[16];
    v366 = v250 | v369;
    v367 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D870, &qword_240A35080);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D880, &unk_240A35088);
    sub_24099EA98(&qword_27E50D868, &qword_27E50D870, &qword_240A35080, sub_24099E930);
    sub_24099EB14();
    sub_240A2B6EC();
    v251 = v369;
    v252 = v370;
    v253 = *&v368[16];
    *v205 = *v368;
    v205[1] = v253;
    *(v205 + 16) = v251;
    *(v205 + 34) = v252;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
    sub_24099E51C();
    sub_24099E9E0();
LABEL_59:
    sub_240A2B6EC();
  }

  if (v88 == *MEMORY[0x277CEDBC8])
  {
    v214 = v288;
    MEMORY[0x245CCC9B0](v327);
    v215 = v289;
    sub_240A2A76C();
    v328(v214, v329);
    v216 = v291;
    sub_240A2A60C();
    v85(v215, v87);
    v217 = sub_240A2A70C();
    (*(v292 + 8))(v216, v293);
    if (!v217)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v218 = v290;
    sub_2409AC4E4(v1, v290, type metadata accessor for AuthenticationView);
    v219 = (*(v342 + 80) + 16) & ~*(v342 + 80);
    v220 = v219 + v343;
    v221 = swift_allocObject();
    sub_2409AC3A4(v218, v221 + v219);
    v222 = v1 + *(v332 + 48);
    v223 = *v222;
    if (*(v222 + 8) == 1)
    {
      v224 = v223;
    }

    else
    {

      sub_240A2C2BC();
      v265 = sub_240A2B84C();
      v121 = v83;
      sub_240A2AFEC();

      v266 = v318;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24091C37C(v223, 0);
      (*(v320 + 8))(v266, v319);
      v223 = *v368;
    }

    v267 = v344;
    sub_2409AC4E4(v121, v344, type metadata accessor for AuthenticationView);
    v268 = (v220 + 7) & 0xFFFFFFFFFFFFFFF8;
    v269 = (v268 + 15) & 0xFFFFFFFFFFFFFFF8;
    v270 = swift_allocObject();
    sub_2409AC3A4(v267, v270 + v219);
    *(v270 + v268) = v217;
    *(v270 + v269) = v223;
    v271 = (v270 + ((v269 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v271 = sub_2409AC454;
    v271[1] = v221;
    *v365 = sub_2409AD0E0;
    *&v365[8] = v270;
    *&v365[16] = sub_24099F6AC;
    *&v365[24] = 0;
    LOBYTE(v366) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040, &unk_240A33440);
    sub_240A2B6EC();
    *v365 = *v368;
    *&v365[16] = *&v368[16];
    LOBYTE(v366) = v369;
    HIBYTE(v366) = 1;
LABEL_54:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
    sub_24099E930();
    sub_240A2B6EC();
    if (HIBYTE(v369))
    {
      v232 = 256;
    }

    else
    {
      v232 = 0;
    }

    *v365 = *v368;
    *&v365[16] = *&v368[16];
    v366 = v232 | v369;
    v367 = 0;
LABEL_58:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D870, &qword_240A35080);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D880, &unk_240A35088);
    sub_24099EA98(&qword_27E50D868, &qword_27E50D870, &qword_240A35080, sub_24099E930);
    sub_24099EB14();
    sub_240A2B6EC();
    v233 = v369;
    v234 = v370;
    v235 = *&v368[16];
    v236 = v361;
    *v361 = *v368;
    v236[1] = v235;
    *(v236 + 16) = v233;
    *(v236 + 34) = v234;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
    sub_24099E51C();
    sub_24099E9E0();
    goto LABEL_59;
  }

  if (v88 != *MEMORY[0x277CEDBC0])
  {
    if (v88 != *MEMORY[0x277CEDC18])
    {
LABEL_89:
      result = sub_240A2C58C();
      __break(1u);
      return result;
    }

    v254 = v282;
    MEMORY[0x245CCC9B0](v327);
    v255 = v283;
    sub_240A2A76C();
    v328(v254, v329);
    v256 = v285;
    sub_240A2A6EC();
    v85(v255, v87);
    v257 = sub_240A2A97C();
    (*(v286 + 8))(v256, v287);
    if (!v257)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v258 = v284;
    sub_2409AC4E4(v83, v284, type metadata accessor for AuthenticationView);
    v259 = (*(v342 + 80) + 16) & ~*(v342 + 80);
    v260 = v259 + v343;
    v261 = swift_allocObject();
    sub_2409AC3A4(v258, v261 + v259);
    v262 = v83 + *(v332 + 48);
    v263 = *v262;
    if (*(v262 + 8) == 1)
    {
      v264 = v263;
    }

    else
    {

      sub_240A2C2BC();
      v272 = sub_240A2B84C();
      sub_240A2AFEC();

      v273 = v318;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24091C37C(v263, 0);
      (*(v320 + 8))(v273, v319);
      v263 = *v368;
    }

    v274 = v83;
    v275 = v344;
    sub_2409AC4E4(v274, v344, type metadata accessor for AuthenticationView);
    v276 = (v260 + 7) & 0xFFFFFFFFFFFFFFF8;
    v277 = (v276 + 15) & 0xFFFFFFFFFFFFFFF8;
    v278 = swift_allocObject();
    sub_2409AC3A4(v275, v278 + v259);
    *(v278 + v276) = v257;
    *(v278 + v277) = v263;
    v279 = (v278 + ((v277 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v279 = sub_2409AC438;
    v279[1] = v261;
    *v365 = sub_2409AC450;
    *&v365[8] = v278;
    *&v365[16] = sub_24099F6AC;
    *&v365[24] = 0;
    LOBYTE(v366) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
    sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040, &unk_240A33440);
    sub_240A2B6EC();
    *v365 = *v368;
    *&v365[16] = *&v368[16];
    v366 = v369;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
    sub_24099E930();
    sub_240A2B6EC();
    if (HIBYTE(v369))
    {
      v280 = 256;
    }

    else
    {
      v280 = 0;
    }

    *v365 = *v368;
    *&v365[16] = *&v368[16];
    v366 = v280 | v369;
    v367 = 1;
    goto LABEL_58;
  }

  sub_2409A5B78(v368);
  *v365 = *v368;
  *&v365[8] = *&v368[8];
  *&v365[24] = *&v368[24];
  LOBYTE(v366) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7E0, &qword_240A35040);
  sub_24091CE28(&qword_27E50D7D8, &qword_27E50D7E0, &qword_240A35040, &unk_240A33440);
  sub_240A2B6EC();
  *v365 = *v368;
  *&v365[16] = *&v368[16];
  v366 = v369;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D850, &qword_240A35070);
  sub_24099E930();
  sub_240A2B6EC();
  if (HIBYTE(v369))
  {
    v237 = 256;
  }

  else
  {
    v237 = 0;
  }

  *v365 = *v368;
  *&v365[16] = *&v368[16];
  v366 = v237 | v369;
  v367 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D870, &qword_240A35080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D880, &unk_240A35088);
  sub_24099EA98(&qword_27E50D868, &qword_27E50D870, &qword_240A35080, sub_24099E930);
  sub_24099EB14();
  sub_240A2B6EC();
  v238 = v369;
  v239 = v370;
  v240 = *&v368[16];
  v241 = v361;
  *v361 = *v368;
  v241[1] = v240;
  *(v241 + 16) = v238;
  *(v241 + 34) = v239;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D860, &qword_240A35078);
  sub_24099E51C();
  sub_24099E9E0();
  sub_240A2B6EC();
}

uint64_t sub_2409A3FD0(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D8A0, &unk_240A32240);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  v13[0] = sub_240A2C06C();
  v13[1] = v9;
  sub_2409AC4E4(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AuthenticationView);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_2409AC3A4(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_24091C4F8();
  sub_240A2BCCC();
  sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240, MEMORY[0x277CDF028]);
  sub_240A2BA6C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2409A4228()
{
  v0 = sub_240A2A9AC();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for AuthenticationView(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v2 = sub_240A2A75C();
  sub_240A2A66C();
  v2(v7, 0);
  sub_240A2BCFC();
  MEMORY[0x245CCC9B0](v1);
  v3 = sub_240A2A75C();
  v4 = sub_240A2A68C();
  sub_240A2A8BC();
  v4(v6, 0);
  v3(v7, 0);
  return sub_240A2BCFC();
}

uint64_t sub_2409A43A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = sub_240A2A8EC();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A2A6FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240A2A9AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AuthenticationView(0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0](v14);
  sub_240A2A76C();
  (*(v11 + 8))(v13, v10);
  sub_240A2A69C();
  (*(v7 + 8))(v9, v6);
  v15 = sub_240A2A8DC();
  v17 = v16;
  (*(v3 + 8))(v5, v23);
  v24 = v15;
  v25 = v17;
  sub_24091C4F8();
  result = sub_240A2B9CC();
  *a2 = result;
  *(a2 + 8) = v19;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_2409A4620()
{
  sub_240A2C06C();
  sub_24091C4F8();
  v0 = sub_240A2B9CC();
  v2 = v1;
  v4 = v3;
  sub_240A2B95C();
  v5 = sub_240A2B9AC();
  v7 = v6;
  v9 = v8;

  sub_240920658(v0, v2, v4 & 1);

  sub_240A2BA6C();
  sub_240920658(v5, v7, v9 & 1);
}

void *sub_2409A475C@<X0>(void *a1@<X8>)
{
  v3 = sub_240A2975C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA60, &unk_240A352E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDE0, &qword_240A31CB0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  if (sub_24099CF64())
  {
    v13 = (v1 + *(type metadata accessor for AuthenticationView(0) + 40));
    v14 = *v13;
    v15 = *(v13 + 1);
    LOBYTE(v51) = v14;
    *(&v51 + 1) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B630, &qword_240A30C80);
    sub_240A2BC5C();
    sub_2409A5ECC(v41);
    sub_240919298(v12, v9, &qword_27E50BDE0, &qword_240A31CB0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
    sub_240936A78();
    sub_240936B60();
    sub_240A2B6EC();
    return sub_240919300(v12, &qword_27E50BDE0, &qword_240A31CB0);
  }

  else
  {
    v39 = a1;
    v17 = type metadata accessor for AuthenticationView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
    sub_240A2BC5C();
    v18 = (*(v4 + 88))(v6, v3);
    v19 = (v4 + 8);
    if (v18 == *MEMORY[0x277CED240])
    {
      (*v19)(v6, v3);
      v20 = (v1 + *(v17 + 24));
      v21 = *v20;
      v22 = v20[1];
      started = type metadata accessor for SetupStartViewController();
      v24 = objc_allocWithZone(started);
      v25 = &v24[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
      *v25 = v21;
      *(v25 + 1) = v22;
      v40.receiver = v24;
      v40.super_class = started;

      v26 = objc_msgSendSuper2(&v40, sel_initWithContentView_, 0);
      LOBYTE(v41) = 1;
      sub_240A2BD3C();
      v27 = v51;
      v28 = v52;
      sub_240A2C06C();
      v29 = v26;
      v30 = sub_240A2BF1C();

      [v29 showActivityIndicatorWithStatus_];

      LOBYTE(v30) = sub_240A2B88C();
      v31 = sub_240A2B3AC();
      v49 = 0;
      v41 = v29;
      v42 = MEMORY[0x277D84F90];
      v43 = v27;
      v44 = v28;
      *v45 = *v50;
      *&v45[3] = *&v50[3];
      v46 = v31;
      v47 = v30;
      v48 = 0;
    }

    else
    {
      (*v19)(v6, v3);
      v32 = _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0();
      LOBYTE(v41) = 1;
      sub_240A2BD3C();
      v33 = v51;
      v34 = v52;
      sub_240A2C06C();
      v35 = v32;
      v36 = sub_240A2BF1C();

      [v35 showActivityIndicatorWithStatus_];

      LOBYTE(v36) = sub_240A2B88C();
      v37 = sub_240A2B3AC();
      v49 = 1;
      v41 = v35;
      v42 = MEMORY[0x277D84F90];
      v43 = v33;
      v44 = v34;
      *v45 = *v50;
      *&v45[3] = *&v50[3];
      v46 = v37;
      v47 = v36;
      v48 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7A0, &unk_240A35020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7C0, &unk_240A35030);
    sub_240936BEC();
    sub_240936CA4();
    sub_240A2B6EC();
    v38 = v52;
    *v9 = v51;
    *(v9 + 1) = v38;
    *(v9 + 2) = v53;
    *(v9 + 24) = v54;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
    sub_240936A78();
    sub_240936B60();
    return sub_240A2B6EC();
  }
}

void *sub_2409A4CF8@<X0>(void *a1@<X8>)
{
  v120 = a1;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA80, &qword_240A35328);
  v2 = MEMORY[0x28223BE20](v124);
  v116 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v112 = &v94 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v109 = &v94 - v7;
  MEMORY[0x28223BE20](v6);
  v106 = &v94 - v8;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B8, &qword_240A35230);
  v9 = MEMORY[0x28223BE20](v114);
  v113 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v110 = &v94 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v94 - v14;
  MEMORY[0x28223BE20](v13);
  v104 = &v94 - v15;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  v16 = MEMORY[0x28223BE20](v126);
  v111 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v108 = &v94 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v105 = &v94 - v21;
  MEMORY[0x28223BE20](v20);
  v103 = &v94 - v22;
  v119 = type metadata accessor for LoginCard(0);
  MEMORY[0x28223BE20](v119);
  v115 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DA88, &qword_240A35330);
  MEMORY[0x28223BE20](v117);
  v118 = (&v94 - v24);
  v25 = type metadata accessor for AuthenticationView(0);
  v26 = v25 - 8;
  v94 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v97 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v28;
  MEMORY[0x28223BE20](v27);
  v96 = &v94 - v29;
  *&v122 = sub_240A2A57C();
  v30 = *(v122 - 8);
  v31 = MEMORY[0x28223BE20](v122);
  v102 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v94 - v33;
  v35 = sub_240A2A6FC();
  v121 = *(v35 - 8);
  v36 = MEMORY[0x28223BE20](v35);
  v100 = &v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v94 - v38;
  v40 = sub_240A2A9AC();
  v41 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v94 - v45;
  v47 = *(v26 + 28);
  v125 = v1;
  v123 = v47;
  MEMORY[0x245CCC9B0](v126);
  sub_240A2A76C();
  v48 = *(v41 + 8);
  v99 = v40;
  v49 = v40;
  v50 = v121;
  v98 = v48;
  v48(v46, v49);
  sub_240A2A5BC();
  v51 = *(v50 + 8);
  v101 = v35;
  v51(v39, v35);
  v52 = sub_240A2A50C();
  v53 = *(v30 + 8);
  v54 = v34;
  v55 = v122;
  v121 = v30 + 8;
  result = v53(v54, v122);
  if (v52)
  {
    v57 = [v52 isUsernameEditable];

    if ((v57 & 1) != 0 || (MEMORY[0x245CCC9B0](v126), v58 = v100, sub_240A2A76C(), v98(v44, v99), v59 = v102, sub_240A2A5BC(), v51(v58, v101), v60 = sub_240A2A54C(), v62 = v61, v53(v59, v55), !v62))
    {
      v75 = v103;
      sub_240A2BD1C();
      swift_getKeyPath();
      v76 = v104;
      sub_240A2BD0C();

      sub_240919300(v75, &qword_27E50D700, &qword_240A34A50);
      swift_getKeyPath();
      v77 = v106;
      sub_240A2BD0C();

      sub_240919300(v76, &qword_27E50D9B8, &qword_240A35230);
      swift_getKeyPath();
      sub_240A2BD0C();

      sub_240919300(v77, &qword_27E50DA80, &qword_240A35328);
      v122 = v127;
      v121 = v128;
      v106 = v129;
      v78 = v105;
      sub_240A2BD1C();
      swift_getKeyPath();
      v79 = v107;
      sub_240A2BD0C();

      sub_240919300(v78, &qword_27E50D700, &qword_240A34A50);
      swift_getKeyPath();
      v80 = v109;
      sub_240A2BD0C();

      sub_240919300(v79, &qword_27E50D9B8, &qword_240A35230);
      swift_getKeyPath();
      v81 = v119;
      v82 = v115;
      sub_240A2BD0C();

      sub_240919300(v80, &qword_27E50DA80, &qword_240A35328);
      v83 = v108;
      sub_240A2BD1C();
      swift_getKeyPath();
      v84 = v110;
      sub_240A2BD0C();

      sub_240919300(v83, &qword_27E50D700, &qword_240A34A50);
      swift_getKeyPath();
      v85 = v112;
      sub_240A2BD0C();

      sub_240919300(v84, &qword_27E50D9B8, &qword_240A35230);
      swift_getKeyPath();
      sub_240A2BD0C();

      sub_240919300(v85, &qword_27E50DA80, &qword_240A35328);
      v86 = v111;
      sub_240A2BD1C();
      swift_getKeyPath();
      v87 = v113;
      sub_240A2BD0C();

      sub_240919300(v86, &qword_27E50D700, &qword_240A34A50);
      swift_getKeyPath();
      v88 = v116;
      sub_240A2BD0C();

      sub_240919300(v87, &qword_27E50D9B8, &qword_240A35230);
      swift_getKeyPath();
      sub_240A2BD0C();

      sub_240919300(v88, &qword_27E50DA80, &qword_240A35328);
      v89 = v131;
      v90 = v132;
      LOBYTE(v75) = v133;
      v91 = *(v81 + 32);
      *(v82 + v91) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
      swift_storeEnumTagMultiPayload();
      *v82 = v122;
      v92 = v106;
      *(v82 + 16) = v121;
      *(v82 + 24) = v92;
      v93 = v82 + *(v81 + 28);
      *v93 = v89;
      *(v93 + 8) = v90;
      *(v93 + 16) = v75;
      sub_2409AC4E4(v82, v118, type metadata accessor for LoginCard);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
      sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0, &protocol conformance descriptor for ProxCardView<A>);
      sub_24099EC88(&qword_27E50D840, type metadata accessor for LoginCard, &unk_240A309F0);
      sub_240A2B6EC();
      return sub_2409AC54C(v82, type metadata accessor for LoginCard);
    }

    else
    {
      v63 = v125;
      v64 = v96;
      sub_2409AC4E4(v125, v96, type metadata accessor for AuthenticationView);
      v65 = (*(v94 + 80) + 16) & ~*(v94 + 80);
      v66 = (v65 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      sub_2409AC3A4(v64, v67 + v65);
      v68 = (v67 + v66);
      *v68 = v60;
      v68[1] = v62;
      v69 = v97;
      sub_2409AC4E4(v63, v97, type metadata accessor for AuthenticationView);
      v70 = swift_allocObject();
      sub_2409AC3A4(v69, v70 + v65);

      sub_2409A7688(v60, v62, sub_2409AC5AC, v67, sub_2409AC65C, v70, &v127);

      v71 = v128;
      v72 = v129;
      v73 = v130;
      v74 = v118;
      *v118 = v127;
      *(v74 + 2) = v71;
      *(v74 + 3) = v72;
      *(v74 + 32) = v73;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
      sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0, &protocol conformance descriptor for ProxCardView<A>);
      sub_24099EC88(&qword_27E50D840, type metadata accessor for LoginCard, &unk_240A309F0);
      return sub_240A2B6EC();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2409A5B78(void *a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for AuthenticationView(0);
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v22 = v3;
  v23 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_240A2A74C();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A2A6FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_240A2A9AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  v20 = v1;
  MEMORY[0x245CCC9B0](v15);
  sub_240A2A76C();
  (*(v12 + 8))(v14, v11);
  sub_240A2A5EC();
  (*(v8 + 8))(v10, v7);
  v16 = sub_240A2A70C();
  (*(v4 + 8))(v6, v25);
  if (v16)
  {
    v17 = v23;
    sub_2409AC4E4(v20, v23, type metadata accessor for AuthenticationView);
    v18 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v19 = swift_allocObject();
    sub_2409AC3A4(v17, v19 + v18);
    sub_24099ECEC(v16, sub_2409AC950, v19, v24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2409A5ECC(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA70, &qword_240A352F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TeenSetupContinueOnParentOrGuardianView(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v12 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    sub_2409AC4E4(v12, v9, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
    swift_storeEnumTagMultiPayload();
    sub_24099EC88(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView, &unk_240A34008);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    sub_240A2B6EC();
    return sub_2409AC54C(v12, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
  }

  else
  {
    sub_240A2B22C();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_24099EC88(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView, &unk_240A34008);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    sub_240A2B6EC();
    return (*(v4 + 8))(v6, v3);
  }
}

void sub_2409A6208(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v45 = type metadata accessor for AuthenticationView(0);
  v50 = *(v45 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v45);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_240A299DC();
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v47 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A29A0C();
  v46 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v44 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_240A2A86C();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_240A2A6FC();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_240A2A9AC();
  v14 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF68 != -1)
  {
    swift_once();
  }

  v17 = sub_240A2B00C();
  __swift_project_value_buffer(v17, qword_27E50D6D0);
  v18 = sub_240A2AFFC();
  v19 = sub_240A2C28C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v7;
    v21 = a2;
    v22 = v20;
    *v20 = 0;
    _os_log_impl(&dword_2408FE000, v18, v19, "Running as client, attempting to repair if necessary.", v20, 2u);
    v23 = v22;
    a2 = v21;
    v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = v37;
    MEMORY[0x245CCDDB0](v23, -1, -1);
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0](v24);
  sub_240A2A76C();
  (*(v14 + 8))(v16, v38);
  v25 = v41;
  sub_240A2A64C();
  (*(v39 + 8))(v13, v40);
  v26 = v44;
  sub_240A2A84C();
  (*(v42 + 8))(v25, v43);
  v27 = v47;
  sub_240A299FC();
  (*(v46 + 8))(v26, v7);
  sub_240A299BC();
  (*(v48 + 8))(v27, v5);
  v28 = objc_allocWithZone(MEMORY[0x277CFDAE8]);
  v29 = sub_240A2BF1C();

  v30 = [v28 initWithAltDSID_];

  v31 = sub_240A2BF1C();
  [v30 setFeatureName_];

  [v30 setDeviceToDeviceEncryptionUpgradeUIStyle_];
  [v30 setDeviceToDeviceEncryptionUpgradeType_];
  [v30 setPresentingViewController_];
  [v30 setSecurityUpgradeContext_];
  v32 = [objc_allocWithZone(MEMORY[0x277CFDAF0]) initWithContext_];
  sub_2409AC4E4(a2, v4, type metadata accessor for AuthenticationView);
  v33 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v34 = swift_allocObject();
  sub_2409AC3A4(v4, v34 + v33);
  aBlock[4] = sub_2409AC4CC;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240A1EFE0;
  aBlock[3] = &block_descriptor_106;
  v35 = _Block_copy(aBlock);

  [v32 performDeviceToDeviceEncryptionStateRepairWithCompletion_];
  _Block_release(v35);
}

uint64_t sub_2409A68D0(int a1, void *a2, uint64_t a3)
{
  v84 = a3;
  v79 = sub_240A2A8FC();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A29A0C();
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A2A6FC();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  v72 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_240A2A86C();
  v10 = *(v83 - 8);
  v11 = MEMORY[0x28223BE20](v83);
  v65 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v65 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v71 = &v65 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v65 - v17;
  v70 = sub_240A2A9AC();
  v69 = *(v70 - 8);
  v19 = MEMORY[0x28223BE20](v70);
  v68 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v82 = &v65 - v21;
  LODWORD(v81) = a1;
  v85 = v10;
  if (a1)
  {
    if (qword_27E50AF68 != -1)
    {
      swift_once();
    }

    v22 = sub_240A2B00C();
    __swift_project_value_buffer(v22, qword_27E50D6D0);
    v23 = sub_240A2AFFC();
    v24 = sub_240A2C28C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2408FE000, v23, v24, "Repair successful, finished", v25, 2u);
LABEL_13:
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AF68 != -1)
    {
      swift_once();
    }

    v26 = sub_240A2B00C();
    __swift_project_value_buffer(v26, qword_27E50D6D0);
    v27 = a2;
    v23 = sub_240A2AFFC();
    v28 = sub_240A2C2AC();

    if (os_log_type_enabled(v23, v28))
    {
      v25 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v25 = 138412290;
      if (a2)
      {
        v30 = a2;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        v32 = v31;
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      *(v25 + 4) = v31;
      *v29 = v32;
      _os_log_impl(&dword_2408FE000, v23, v28, "Repair was not successful %@", v25, 0xCu);
      sub_240919300(v29, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v29, -1, -1);
      goto LABEL_13;
    }
  }

  v80 = v18;
  v66 = a2;
  if (a2)
  {
    sub_240A2952C();
  }

  v33 = *(type metadata accessor for AuthenticationView(0) + 20);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v35 = sub_240A2A75C();
  v36 = sub_240A2A63C();
  sub_240A2A82C();
  v36(v86, 0);
  v35(v87, 0);
  sub_240A2BCFC();
  MEMORY[0x245CCC9B0](v34);
  v37 = sub_240A2A75C();
  v38 = sub_240A2A63C();
  sub_240A2A85C();
  v38(v86, 0);
  v37(v87, 0);
  sub_240A2BCFC();
  v67 = v33;
  v39 = v68;
  MEMORY[0x245CCC9B0](v34);
  v40 = v72;
  sub_240A2A76C();
  (*(v69 + 8))(v39, v70);
  v41 = v71;
  sub_240A2A64C();
  (*(v73 + 8))(v40, v74);
  sub_240A2A84C();
  v42 = v85;
  v43 = *(v85 + 8);
  v44 = v83;
  v43(v41, v83);
  if (v66)
  {
    sub_240A2952C();
  }

  v45 = v80;
  v46 = v76;
  sub_240A2A83C();
  if (qword_27E50AF68 != -1)
  {
    swift_once();
  }

  v47 = sub_240A2B00C();
  __swift_project_value_buffer(v47, qword_27E50D6D0);
  v50 = *(v42 + 16);
  v48 = v42 + 16;
  v49 = v50;
  v50(v46, v45, v44);
  v51 = sub_240A2AFFC();
  v52 = sub_240A2C28C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v85 = v48;
    v81 = v54;
    v87[0] = v54;
    *v53 = 136315138;
    v49(v65, v46, v44);
    v55 = sub_240A2BF9C();
    v56 = v46;
    v57 = v55;
    v59 = v58;
    v43(v56, v83);
    v60 = sub_240925464(v57, v59, v87);
    v44 = v83;

    *(v53 + 4) = v60;
    _os_log_impl(&dword_2408FE000, v51, v52, "Setting state to dismiss with preflight repair result: %s", v53, 0xCu);
    v61 = v81;
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x245CCDDB0](v61, -1, -1);
    v62 = v53;
    v45 = v80;
    MEMORY[0x245CCDDB0](v62, -1, -1);
  }

  else
  {

    v43(v46, v44);
  }

  v63 = v78;
  v49(v78, v45, v44);
  (*(v77 + 104))(v63, *MEMORY[0x277CEDC78], v79);
  MEMORY[0x245CCC9B0](v34);
  sub_240A2A91C();
  sub_240A2BCFC();
  return (v43)(v45, v44);
}

uint64_t sub_2409A724C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_240A2A9AC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA90, &qword_240A30970);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19[-v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A8, &unk_240A30A60);
  *v12 = a4;
  v12[1] = a5;
  v20[0] = a1;
  v20[1] = a2;

  sub_240A29CEC();
  v13 = *MEMORY[0x277CEDB30];
  v14 = sub_240A2A4DC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  type metadata accessor for AuthenticationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v16 = sub_240A2A75C();
  v17 = sub_240A2A5AC();
  sub_240A2A4FC();
  v17(v19, 0);
  v16(v20, 0);
  return sub_240A2BCFC();
}

uint64_t sub_2409A7494()
{
  v0 = sub_240A2A9AC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA90, &qword_240A30970);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  v4 = *MEMORY[0x277CEDB38];
  v5 = sub_240A2A4DC();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v3, v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  type metadata accessor for AuthenticationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v7 = sub_240A2A75C();
  v8 = sub_240A2A5AC();
  sub_240A2A4FC();
  v8(v10, 0);
  v7(v11, 0);
  return sub_240A2BCFC();
}

void sub_2409A7688(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;

  v45 = sub_240A2C39C();
  v43 = [objc_allocWithZone(MEMORY[0x277D43378]) init];
  sub_240A2C06C();
  sub_240A2C06C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_240A305D0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_240913AEC();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  sub_240A2BF6C();

  sub_240A2BD3C();
  v47 = v51;
  v48 = aBlock;
  v46 = v52;
  v56 = 1;
  sub_240A2BD3C();
  v14 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
  [v14 setDismissalType_];
  v15 = sub_240A2BF1C();

  [v14 setTitle_];

  v16 = sub_240A2BF1C();

  [v14 setSubtitle_];

  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v19 = swift_allocObject();
  v19[2] = sub_2409AC6F0;
  v19[3] = v17;
  v19[4] = v18;

  v20 = v14;

  v21 = sub_240A2BF1C();
  v54 = sub_2409977DC;
  v55 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_2409DFF20;
  v53 = &block_descriptor_147_0;
  v22 = _Block_copy(&aBlock);
  v23 = objc_opt_self();
  v24 = [v23 actionWithTitle:v21 style:0 handler:v22];

  _Block_release(v22);

  [v20 setDismissButtonAction_];

  sub_240A2C06C();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v45;
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v28 = swift_allocObject();
  v28[2] = sub_2409AC6F8;
  v28[3] = v26;
  v28[4] = v27;
  v29 = v20;
  v30 = v45;

  v31 = sub_240A2BF1C();

  v54 = sub_2409977DC;
  v55 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_2409DFF20;
  v53 = &block_descriptor_160;
  v32 = _Block_copy(&aBlock);
  v33 = [v23 actionWithTitle:v31 style:0 handler:v32];

  _Block_release(v32);

  v34 = [v29 addAction_];

  v35 = swift_allocObject();
  v36 = MEMORY[0x277D84F90];
  *(v35 + 16) = v43;
  *(v35 + 24) = v30;
  *a7 = v29;
  *(a7 + 8) = v36;
  *(a7 + 16) = v48;
  *(a7 + 24) = v47;
  *(a7 + 32) = v46;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_2409AC700;
  *(v37 + 24) = v35;
  v38 = v30;
  v39 = v43;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_240937AA4(0, v36[2] + 1, 1, v36);
  }

  v41 = v36[2];
  v40 = v36[3];
  if (v41 >= v40 >> 1)
  {
    v36 = sub_240937AA4((v40 > 1), v41 + 1, 1, v36);
  }

  v36[2] = v41 + 1;
  v42 = &v36[2 * v41];
  v42[4] = sub_240997818;
  v42[5] = v37;
  *(a7 + 8) = v36;
}

uint64_t sub_2409A7D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_2409A7E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  sub_240919298(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

void sub_2409A7F48(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2409AC4E4(a2, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AuthenticationView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2409AC3A4(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  aBlock[4] = sub_2409AC708;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409AD0E4;
  aBlock[3] = &block_descriptor_175;
  v9 = _Block_copy(aBlock);

  [a1 presentSecondFactorUIWithCompletion_];
  _Block_release(v9);
}

void sub_2409A8100(void *a1, uint64_t a2)
{
  v99 = a2;
  v87 = a1;
  v2 = type metadata accessor for AuthenticationView(0);
  v3 = v2 - 8;
  v84 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v85 = v4;
  v86 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_240A2A95C();
  v90 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DAA8, &qword_240A35438);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v83 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v79 = (&v73 - v10);
  MEMORY[0x28223BE20](v9);
  v80 = &v73 - v11;
  v98 = sub_240A2A8AC();
  v12 = *(v98 - 8);
  v13 = MEMORY[0x28223BE20](v98);
  v82 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v77 = &v73 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v73 - v17;
  v19 = sub_240A2A6FC();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v81 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v75 = &v73 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v73 - v25;
  v27 = sub_240A2A9AC();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v78 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v73 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v73 - v34;
  v36 = *(v3 + 28);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  v94 = v36;
  MEMORY[0x245CCC9B0]();
  sub_240A2A76C();
  v37 = *(v28 + 8);
  v95 = v28 + 8;
  v96 = v27;
  v92 = v37;
  v37(v35, v27);
  v38 = v80;
  sub_240A2A67C();
  v39 = *(v20 + 8);
  v88 = v19;
  v97 = v20 + 8;
  v40 = v39(v26, v19);
  MEMORY[0x245CCB560](v40);
  v41 = *(v12 + 8);
  v89 = v12 + 8;
  v91 = v41;
  v41(v18, v98);
  v42 = *(v90 + 48);
  v43 = v76;
  if (v42(v38, 1))
  {
    sub_240919300(v38, &qword_27E50DAA8, &qword_240A35438);
LABEL_3:
    v80 = 0;
    goto LABEL_6;
  }

  v44 = sub_240A2A92C();
  sub_240919300(v38, &qword_27E50DAA8, &qword_240A35438);
  if (!v44)
  {
    goto LABEL_3;
  }

  v80 = sub_240A2952C();

LABEL_6:
  v45 = v88;
  v46 = v79;
  MEMORY[0x245CCC9B0](v93);
  v47 = v75;
  sub_240A2A76C();
  v92(v33, v96);
  v48 = v77;
  sub_240A2A67C();
  v79 = v39;
  v49 = v39(v47, v45);
  MEMORY[0x245CCB560](v49);
  v50 = v48;
  v51 = v98;
  v91(v50, v98);
  v52 = v43;
  if ((v42)(v46, 1, v43))
  {
    sub_240919300(v46, &qword_27E50DAA8, &qword_240A35438);
    v53 = 0;
  }

  else
  {
    v54 = v90;
    v55 = v74;
    (*(v90 + 16))(v74, v46, v43);
    sub_240919300(v46, &qword_27E50DAA8, &qword_240A35438);
    sub_240A2A93C();
    v57 = v56;
    (*(v54 + 8))(v55, v43);
    if (v57)
    {
      v53 = sub_240A2BF1C();
    }

    else
    {
      v53 = 0;
    }

    v51 = v98;
    v45 = v88;
  }

  v58 = v78;
  MEMORY[0x245CCC9B0](v93);
  v59 = v81;
  sub_240A2A76C();
  v92(v58, v96);
  v60 = v82;
  sub_240A2A67C();
  v61 = v79(v59, v45);
  v62 = v83;
  MEMORY[0x245CCB560](v61);
  v91(v60, v51);
  if ((v42)(v62, 1, v52))
  {
    sub_240919300(v62, &qword_27E50DAA8, &qword_240A35438);
  }

  else
  {
    v64 = v90;
    v65 = v74;
    (*(v90 + 16))(v74, v62, v52);
    sub_240919300(v62, &qword_27E50DAA8, &qword_240A35438);
    sub_240A2A94C();
    v67 = v66;
    (*(v64 + 8))(v65, v52);
    if (v67)
    {
      v63 = sub_240A2BF1C();

      goto LABEL_17;
    }
  }

  v63 = 0;
LABEL_17:
  v68 = v86;
  sub_2409AC4E4(v99, v86, type metadata accessor for AuthenticationView);
  v69 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v70 = swift_allocObject();
  sub_2409AC3A4(v68, v70 + v69);
  aBlock[4] = sub_2409AC748;
  aBlock[5] = v70;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409AD0E4;
  aBlock[3] = &block_descriptor_184_0;
  v71 = _Block_copy(aBlock);

  v72 = v80;
  [v87 presentSecondFactorAlertWithError:v80 title:v53 message:v63 completion:v71];
  _Block_release(v71);
}

uint64_t sub_2409A8A84(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *), void (*a5)(id, BOOL), void (*a6)(uint64_t))
{
  v9 = sub_240A2A9AC();
  MEMORY[0x28223BE20](v9 - 8);
  if (a1)
  {
    v10 = [a1 integerValue];
  }

  else
  {
    v10 = 0;
  }

  type metadata accessor for AuthenticationView(0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v12 = sub_240A2A75C();
  v13 = a4(v19);
  a5(v10, a1 == 0);
  v13(v19, 0);
  v12(v20, 0);
  sub_240A2BCFC();
  if (a2)
  {
    a2 = sub_240A2952C();
  }

  MEMORY[0x245CCC9B0](v11);
  v14 = sub_240A2A75C();
  v15 = a4(v19);
  a6(a2);
  v15(v19, 0);
  v14(v20, 0);
  return sub_240A2BCFC();
}

void sub_2409A8C98(void *a1, uint64_t a2)
{
  v27 = a1;
  v3 = type metadata accessor for AuthenticationView(0);
  v26 = *(v3 - 8);
  v25 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v24 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_240A2A81C();
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A2A6FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2A9AC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0](v16);
  sub_240A2A76C();
  (*(v13 + 8))(v15, v12);
  sub_240A2A62C();
  (*(v9 + 8))(v11, v8);
  v17 = sub_240A2A7CC();
  (*(v5 + 8))(v7, v23);
  v18 = v24;
  sub_2409AC4E4(a2, v24, type metadata accessor for AuthenticationView);
  v19 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v20 = swift_allocObject();
  sub_2409AC3A4(v18, v20 + v19);
  aBlock[4] = sub_2409AC81C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409A92B4;
  aBlock[3] = &block_descriptor_193;
  v21 = _Block_copy(aBlock);

  [v27 presentServerProvidedUIWithConfiguration:v17 completion:v21];
  _Block_release(v21);
}

uint64_t sub_2409A9044(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_240A2A9AC();
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for AuthenticationView(0);
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v8 = sub_240A2A75C();
  v9 = sub_240A2A61C();
  sub_240A2A7DC();
  v9(v16, 0);
  v8(v17, 0);
  sub_240A2BCFC();
  if (a2)
  {
    sub_240A2BE9C();
  }

  MEMORY[0x245CCC9B0](v7);
  v10 = sub_240A2A75C();
  v11 = sub_240A2A61C();
  sub_240A2A7EC();
  v11(v16, 0);
  v10(v17, 0);
  sub_240A2BCFC();
  if (a3)
  {
    sub_240A2952C();
  }

  MEMORY[0x245CCC9B0](v7);
  v12 = sub_240A2A75C();
  v13 = sub_240A2A61C();
  sub_240A2A80C();
  v13(v16, 0);
  v12(v17, 0);
  return sub_240A2BCFC();
}

uint64_t sub_2409A92B4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_240A2BEBC();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

void sub_2409A93A4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7[4] = a2;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_240A1EFE0;
  v7[3] = a3;
  v6 = _Block_copy(v7);
  [a1 *a4];
  _Block_release(v6);
}

void sub_2409A9448(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_27E50AF68 != -1)
  {
    swift_once();
  }

  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50D6D0);
  oslog = sub_240A2AFFC();
  v5 = sub_240A2C28C();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2408FE000, oslog, v5, a3, v6, 2u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }
}

void sub_2409A9538(void *a1, uint64_t a2)
{
  v27 = a1;
  v3 = type metadata accessor for AuthenticationView(0);
  v26 = *(v3 - 8);
  v25 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v24 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_240A2A7BC();
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A2A6FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2A9AC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0](v16);
  sub_240A2A76C();
  (*(v13 + 8))(v15, v12);
  sub_240A2A60C();
  (*(v9 + 8))(v11, v8);
  v17 = sub_240A2A72C();
  (*(v5 + 8))(v7, v23);
  v18 = v24;
  sub_2409AC4E4(a2, v24, type metadata accessor for AuthenticationView);
  v19 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v20 = swift_allocObject();
  sub_2409AC3A4(v18, v20 + v19);
  aBlock[4] = sub_2409AC8A4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409A9AD0;
  aBlock[3] = &block_descriptor_199;
  v21 = _Block_copy(aBlock);

  [v27 presentNativeRecoveryUIWithContext:v17 completion:v21];
  _Block_release(v21);
}

uint64_t sub_2409A98E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_240A2A9AC();
  MEMORY[0x28223BE20](v4);
  if (a1)
  {
    sub_240A2BE9C();
  }

  type metadata accessor for AuthenticationView(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v6 = sub_240A2A75C();
  v7 = sub_240A2A5FC();
  sub_240A2A71C();
  v7(v11, 0);
  v6(v12, 0);
  sub_240A2BCFC();
  if (a2)
  {
    sub_240A2952C();
  }

  MEMORY[0x245CCC9B0](v5);
  v8 = sub_240A2A75C();
  v9 = sub_240A2A5FC();
  sub_240A2A73C();
  v9(v11, 0);
  v8(v12, 0);
  return sub_240A2BCFC();
}

uint64_t sub_2409A9AD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_240A2BEBC();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_2409A9B7C(void *a1, uint64_t a2)
{
  v36 = a2;
  v44 = a1;
  v2 = type metadata accessor for AuthenticationView(0);
  v43 = *(v2 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_240A2A74C();
  v47 = *(v39 - 8);
  v4 = MEMORY[0x28223BE20](v39);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - v6;
  v8 = sub_240A2A6FC();
  v9 = *(v8 - 8);
  v45 = v8;
  v46 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = sub_240A2A9AC();
  v35 = v14;
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  sub_240A2A76C();
  v22 = *(v15 + 8);
  v22(v20, v14);
  sub_240A2A5EC();
  v23 = *(v46 + 8);
  v46 += 8;
  v23(v13, v45);
  v38 = sub_240A2A70C();
  v24 = *(v47 + 8);
  v47 += 8;
  v25 = v39;
  v24(v7, v39);
  v26 = v36;
  MEMORY[0x245CCC9B0](v21);
  v27 = v37;
  sub_240A2A76C();
  v22(v18, v35);
  v28 = v40;
  sub_240A2A5EC();
  v23(v27, v45);
  v29 = sub_240A2A72C();
  v24(v28, v25);
  v30 = v41;
  sub_2409AC4E4(v26, v41, type metadata accessor for AuthenticationView);
  v31 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v32 = swift_allocObject();
  sub_2409AC3A4(v30, v32 + v31);
  aBlock[4] = sub_2409AC9EC;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409AD0E4;
  aBlock[3] = &block_descriptor_208;
  v33 = _Block_copy(aBlock);

  v34 = v38;
  [v44 presentFidoAuthForContext:v38 fidoContext:v29 completion:v33];

  _Block_release(v33);
}

uint64_t sub_2409AA034(void *a1, uint64_t a2)
{
  v4 = sub_240A2A9AC();
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for AuthenticationView(0);
  v5 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v7 = sub_240A2A75C();
  v8 = sub_240A2A5DC();
  sub_240A2A73C();
  v8(v12, 0);
  v7(v13, 0);
  sub_240A2BCFC();
  if (a2)
  {
    sub_240A2952C();
  }

  MEMORY[0x245CCC9B0](v6);
  v9 = sub_240A2A75C();
  v10 = sub_240A2A5DC();
  sub_240A2A71C();
  v10(v12, 0);
  v9(v13, 0);
  return sub_240A2BCFC();
}

void sub_2409AA1EC(void *a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for AuthenticationView(0);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_240A2A99C();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A2A6FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2A9AC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  if ([a1 respondsToSelector_])
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
    v17 = v27;
    MEMORY[0x245CCC9B0](v16);
    sub_240A2A76C();
    (*(v13 + 8))(v15, v12);
    sub_240A2A6EC();
    (*(v9 + 8))(v11, v8);
    sub_240A2A98C();
    (*(v23 + 8))(v7, v24);
    v18 = v26;
    sub_2409AC4E4(v17, v26, type metadata accessor for AuthenticationView);
    v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v20 = swift_allocObject();
    sub_2409AC3A4(v18, v20 + v19);
    v21 = sub_240A2BF1C();
    aBlock[4] = sub_2409ACC1C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_240A1EFE0;
    aBlock[3] = &block_descriptor_214;
    v22 = _Block_copy(aBlock);

    [v28 presentKeepUsingUIForAppleID:v21 completion:v22];
    _Block_release(v22);
  }
}

uint64_t sub_2409AA5E4(char a1)
{
  v1 = sub_240A2A9AC();
  MEMORY[0x28223BE20](v1 - 8);
  type metadata accessor for AuthenticationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0]();
  v2 = sub_240A2A75C();
  v3 = sub_240A2A6DC();
  sub_240A2A96C();
  v3(v5, 0);
  v2(v6, 0);
  return sub_240A2BCFC();
}

uint64_t sub_2409AA710@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_240A2A8FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_240A2A9AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D708, &unk_240A34FC0);
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  sub_24099D338((v14 - v10));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  MEMORY[0x245CCC9B0](v12);
  sub_240A2A90C();
  (*(v6 + 8))(v8, v5);
  sub_24099E36C();
  sub_24099EC88(&qword_27E50D8B0, MEMORY[0x277CEDC88], MEMORY[0x277CEDC90]);
  sub_240A2BAFC();
  (*(v2 + 8))(v4, v1);
  return sub_240905D98(v11);
}

void sub_2409AA9B0(uint64_t a1)
{
  sub_2409306A4(319);
  if (v1 <= 0x3F)
  {
    sub_2409AAC70(319, &qword_27E50D8D8, MEMORY[0x277CEDC98], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_2409AACD4(319, &unk_27E50D8E0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2409AAD24(319, &qword_27E50F570, &unk_27E50F540, &unk_240A34F50, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_2409AAD24(319, &unk_27E50D8F0, &unk_27E50D6F0, &qword_240A34B08, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_2409AACD4(319, &qword_27E50B600, MEMORY[0x277CED748], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_2409AAC70(319, &unk_27E50D900, MEMORY[0x277CED260], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_2409AAD24(319, &qword_27E50B5F0, &unk_27E50D910, qword_240A35F80, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_2409AACD4(319, &qword_27E50B5F8, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    sub_2409AAD24(319, &qword_27E50D920, &unk_27E50D6F0, &qword_240A34B08, MEMORY[0x277CE4608]);
                    if (v10 <= 0x3F)
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

void sub_2409AAC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2409AACD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2409AAD24(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_2409AADD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_2409AC12C(a1, a2, a5, a6);
}

uint64_t sub_2409AAE2C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_27E50D928);
  *v3 = a1;
  v3[1] = a2;
}

void sub_2409AAEB4(void *a1, int a2, void (*a3)(), uint64_t a4)
{
  LODWORD(v7) = a2;
  v9 = *MEMORY[0x277D85000] & *v4;
  v10 = sub_240A2B00C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (a3)
    {
      v56 = a3;
      v57 = a4;
      aBlock = MEMORY[0x277D85DD0];
      v53 = 1107296256;
      v54 = sub_2409EC704;
      v55 = &block_descriptor_24;
      a3 = _Block_copy(&aBlock);
    }

    v15 = type metadata accessor for NavigationControllerCompat.Coordinator(0, *(v9 + 80), *(v9 + 88), v14);
    v51.receiver = v4;
    v51.super_class = v15;
    objc_msgSendSuper2(&v51, sel_presentViewController_animated_completion_, a1, v7 & 1, a3);
LABEL_5:
    _Block_release(a3);
    return;
  }

  v16 = [v4 presentedViewController];
  if (!v16)
  {
    [a1 setModalPresentationStyle_];
    if (a3)
    {
      v56 = a3;
      v57 = a4;
      aBlock = MEMORY[0x277D85DD0];
      v53 = 1107296256;
      v54 = sub_2409EC704;
      v55 = &block_descriptor_15;
      a3 = _Block_copy(&aBlock);
    }

    v35 = type metadata accessor for NavigationControllerCompat.Coordinator(0, *(v9 + 80), *(v9 + 88), v34);
    v58.receiver = v4;
    v58.super_class = v35;
    objc_msgSendSuper2(&v58, sel_presentViewController_animated_completion_, a1, v7 & 1, a3);
    goto LABEL_5;
  }

  v17 = v16;
  v49 = v4;
  sub_240A2AE7C();
  v18 = v17;
  v19 = sub_240A2AFFC();
  v20 = sub_240A2C28C();
  v50 = v18;

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44 = v21;
    v46 = swift_slowAlloc();
    aBlock = v46;
    *v21 = 136315138;
    v22 = v50;
    v45 = v20;
    v23 = v22;
    v24 = [v22 description];
    v47 = a4;
    v25 = v24;
    v26 = sub_240A2BF4C();
    v48 = v7;
    v7 = v27;

    v28 = sub_240925464(v26, v7, &aBlock);
    LOBYTE(v7) = v48;

    v29 = v44;
    *(v44 + 1) = v28;
    a4 = v47;
    v30 = v19;
    v31 = v19;
    v32 = v29;
    _os_log_impl(&dword_2408FE000, v31, v45, "presentedViewController: %s", v29, 0xCu);
    v33 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x245CCDDB0](v33, -1, -1);
    MEMORY[0x245CCDDB0](v32, -1, -1);
  }

  else
  {
  }

  (*(v11 + 8))(v13, v10);
  v36 = v49;
  v37 = swift_allocObject();
  *(v37 + 16) = a1;
  *(v37 + 24) = v36;
  *(v37 + 32) = v7 & 1;
  *(v37 + 40) = a3;
  *(v37 + 48) = a4;
  v56 = sub_2409AC384;
  v57 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_2409EC704;
  v55 = &block_descriptor_21;
  v38 = _Block_copy(&aBlock);
  v39 = a4;
  v40 = v38;
  sub_240964BBC(a3, v39);
  v41 = a1;
  v42 = v36;

  [v42 dismissViewControllerAnimated:v7 & 1 completion:v40];
  _Block_release(v40);
}

void sub_2409AB370(void *a1, void *a2, char a3, void *a4, uint64_t a5)
{
  v10 = *MEMORY[0x277D85000] & *a2;
  [a1 setModalPresentationStyle_];
  if (a4)
  {
    v13[4] = a4;
    v13[5] = a5;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_2409EC704;
    v13[3] = &block_descriptor_27;
    a4 = _Block_copy(v13);
  }

  v12 = type metadata accessor for NavigationControllerCompat.Coordinator(0, *(v10 + 80), *(v10 + 88), v11);
  v14.receiver = a2;
  v14.super_class = v12;
  objc_msgSendSuper2(&v14, sel_presentViewController_animated_completion_, a1, a3 & 1, a4);
  _Block_release(a4);
}

void sub_2409AB4A8(void *a1, int a2, void *a3, int a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_240964BC4;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = a1;
  sub_2409AAEB4(v10, a4, v8, v9);
  sub_24090C1A0(v8, v9);
}

void sub_2409AB580(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *MEMORY[0x277D85000] & *v3;
  v9 = sub_240A2B00C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE7C();
  v13 = sub_240A2AFFC();
  v14 = sub_240A2C28C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v4;
    v16 = a2;
    v17 = v8;
    v18 = a3;
    v19 = a1;
    v20 = v15;
    *v15 = 0;
    _os_log_impl(&dword_2408FE000, v13, v14, "Dismiss called", v15, 2u);
    v21 = v20;
    a1 = v19;
    a3 = v18;
    v8 = v17;
    a2 = v16;
    v4 = v26;
    MEMORY[0x245CCDDB0](v21, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  if (a2)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2409EC704;
    aBlock[3] = &block_descriptor_13;
    v23 = _Block_copy(aBlock);
  }

  else
  {
    v23 = 0;
  }

  v24 = type metadata accessor for NavigationControllerCompat.Coordinator(0, *(v8 + 80), *(v8 + 88), v22);
  v28.receiver = v4;
  v28.super_class = v24;
  objc_msgSendSuper2(&v28, sel_dismissViewControllerAnimated_completion_, a1 & 1, v23);
  _Block_release(v23);
}

void sub_2409AB7DC(void *a1, int a2, char a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_240963BB4;
  }

  else
  {
    v7 = 0;
  }

  v8 = a1;
  sub_2409AB580(a3, v6, v7);
  sub_24090C1A0(v6, v7);
}

uint64_t sub_2409AB898(void *a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *MEMORY[0x277D85000];
  v8 = sub_240A2B00C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NavigationControllerCompat.Coordinator(0, *((v7 & v6) + 0x50), *((v7 & v6) + 0x58), v12);
  v28.receiver = v3;
  v28.super_class = v13;
  v14 = a2 & 1;
  objc_msgSendSuper2(&v28, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  sub_240A2AE7C();
  v15 = a1;
  v16 = sub_240A2AFFC();
  v17 = sub_240A2C28C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v8;
    v19 = v18;
    v20 = swift_slowAlloc();
    *v19 = 138412546;
    *(v19 + 4) = v15;
    *v20 = a1;
    *(v19 + 12) = 1024;
    *(v19 + 14) = v14;
    v21 = v15;
    _os_log_impl(&dword_2408FE000, v16, v17, "View did move to window (%@), shouldAppear: %{BOOL}d", v19, 0x12u);
    sub_240919300(v20, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v20, -1, -1);
    v22 = v19;
    v8 = v27;
    MEMORY[0x245CCDDB0](v22, -1, -1);
  }

  result = (*(v9 + 8))(v11, v8);
  if (a1)
  {
    v24 = *&v3[qword_27E50D928];

    v24(v3);

    v25 = &v3[qword_27E50D928];
    *v25 = nullsub_1;
    v25[1] = 0;
  }

  return result;
}

void sub_2409ABB0C(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = a1;
  sub_2409AB898(a3, a4);
}

void sub_2409ABBC0(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_2409AC30C();
}

void sub_2409ABC30(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_2409AC33C();
}

id sub_2409ABCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NavigationControllerCompat.Coordinator(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id sub_2409ABD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_2409AADD0(*v4, v4[1], a2, a3, *(a1 + 16), *(a1 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_2409ABDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_2409ABE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_2409ABEB8(uint64_t a1)
{
  swift_getWitnessTable();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_2409ABEF8()
{
  sub_240A2C06C();
  sub_24091C4F8();
  v0 = sub_240A2B9CC();
  v2 = v1;
  v4 = v3;
  sub_240A2B95C();
  v5 = sub_240A2B9AC();
  v7 = v6;
  v9 = v8;

  sub_240920658(v0, v2, v4 & 1);

  sub_240A2BA6C();
  sub_240920658(v5, v7, v9 & 1);
}

uint64_t sub_2409AC034()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
  sub_240974954();

  return sub_240A2B21C();
}

id sub_2409AC0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x277D85000];
  v7 = (v4 + qword_27E50D928);
  *v7 = a1;
  v7[1] = a2;
  v8 = type metadata accessor for NavigationControllerCompat.Coordinator(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), a4);
  v10.receiver = v4;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_2409AC178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NavigationControllerCompat(255, a2, a3, a4);
  swift_getWitnessTable();
  sub_240A2B83C();
  sub_240A2B81C();
  return v5;
}

uint64_t sub_2409AC1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for NavigationControllerCompat(255, a6, a7, a4);
  swift_getWitnessTable();
  sub_240A2B83C();
  sub_240A2B81C();
  v9 = &v11[qword_27E50D928];
  *v9 = a2;
  *(v9 + 1) = a3;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2409AC3A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409AC4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2409AC54C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2409AC5AC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AuthenticationView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_2409A724C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_2409AC674(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AuthenticationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2409AC81C(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AuthenticationView(0);

  return sub_2409A9044(a1, a2, a3);
}

uint64_t sub_2409AC8BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AuthenticationView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_2409AC968(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AuthenticationView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_37Tm_0()
{
  v1 = (type metadata accessor for AuthenticationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[7];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50) + 32);
  v8 = sub_240A2A9AC();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  v9 = v0 + v3 + v1[13];
  v10 = sub_240A2975C();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);

  sub_24091C37C(*(v5 + v1[14]), *(v5 + v1[14] + 8));
  sub_24090C1E4(*(v5 + v1[15]), *(v5 + v1[15] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409ACC34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AuthenticationView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t objectdestroy_52Tm()
{
  v1 = (type metadata accessor for AuthenticationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;

  v7 = v6 + v1[7];

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50) + 32);
  v9 = sub_240A2A9AC();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  v10 = v6 + v1[13];
  v11 = sub_240A2975C();
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);

  sub_24091C37C(*(v6 + v1[14]), *(v6 + v1[14] + 8));
  sub_24090C1E4(*(v6 + v1[15]), *(v6 + v1[15] + 8));

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void sub_2409ACF20(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthenticationView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24099EF9C(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_2409ACFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2409AD124(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
      v9 = sub_240A2BEBC();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_2409AD22C()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50DC00);
  __swift_project_value_buffer(v0, qword_27E50DC00);
  return sub_240A2AE5C();
}

uint64_t sub_2409AD29C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD28, &qword_240A35808);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_240919298(a1, &v6 - v3, &qword_27E50DD28, &qword_240A35808);
  return sub_2409AD348(v4);
}

uint64_t sub_2409AD348(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD28, &qword_240A35808);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelUpdate;
  swift_beginAccess();
  sub_240919298(v1 + v6, v5, &qword_27E50DD28, &qword_240A35808);
  v7 = sub_2409B8BCC(v5, a1);
  sub_240919300(v5, &qword_27E50DD28, &qword_240A35808);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
    sub_240A296DC();
  }

  else
  {
    sub_240919298(a1, v5, &qword_27E50DD28, &qword_240A35808);
    swift_beginAccess();
    sub_2409B94E4(v5, v1 + v6, &qword_27E50DD28, &qword_240A35808);
    swift_endAccess();
  }

  return sub_240919300(a1, &qword_27E50DD28, &qword_240A35808);
}

uint64_t sub_2409AD550()
{
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender);
  sub_24090C23C(v1, *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender + 8));
  return v1;
}

uint64_t sub_2409AD610@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v4 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender);
  v5 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2409B964C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24090C23C(v4, v5);
}

uint64_t sub_2409AD708(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_2409B9290;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24090C23C(v2, v3);
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296DC();
  sub_24090C1A0(v5, v4);
}

id sub_2409AD864()
{
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager);

  return v1;
}

id sub_2409AD91C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v4 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager);
  *a2 = v4;

  return v4;
}

void sub_2409ADA08(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager;
  v5 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager);
  sub_2409194E8(0, &qword_27E50DD68, 0x277CED1D0);
  v6 = v5;
  v7 = sub_240A2C37C();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
    sub_240A296DC();
  }
}

uint64_t sub_2409ADB7C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v3 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__urlBag;
  swift_beginAccess();
  return sub_240919A14(v5 + v3, a1);
}

uint64_t sub_2409ADC44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v4 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__urlBag;
  swift_beginAccess();
  return sub_240919A14(v3 + v4, a2);
}

uint64_t sub_2409ADD0C(uint64_t a1, uint64_t *a2)
{
  sub_240919A14(a1, v3);
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296DC();

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_2409ADDEC(uint64_t a1, uint64_t a2)
{
  sub_240919A14(a2, v5);
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__urlBag;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((a1 + v3));
  sub_24090C218(v5, a1 + v3);
  return swift_endAccess();
}

uint64_t sub_2409ADEF0@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v10 = *a2;
  swift_beginAccess();
  return sub_240919298(v12 + v10, a5, a3, a4);
}

uint64_t sub_2409ADFF4@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v11 = *a3;
  swift_beginAccess();
  return sub_240919298(v10 + v11, a6, a4, a5);
}

uint64_t sub_2409AE0D8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCD0, &qword_240A33AF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_240919298(a1, &v9[-v5], &unk_27E50DCD0, &qword_240A33AF0);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296DC();

  return sub_240919300(v6, &unk_27E50DCD0, &qword_240A33AF0);
}

uint64_t sub_2409AE228(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  sub_240919298(a2, &v15 - v11, a3, a4);
  v13 = *a5;
  swift_beginAccess();
  sub_2409B94E4(v12, a1 + v13, a3, a4);
  return swift_endAccess();
}

uint64_t (*sub_2409AE30C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  *v4 = v1;
  swift_getKeyPath();
  sub_240A2970C();

  v4[7] = sub_2409ADE6C(v4);
  return sub_2409AE444;
}

void sub_2409AE444(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_240A296FC();

  free(v1);
}

void *sub_2409AE4D8()
{
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter);
  v2 = v1;
  return v1;
}

id sub_2409AE588@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v4 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter);
  *a2 = v4;

  return v4;
}

void sub_2409AE648(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2409AE678(v1);
}

void sub_2409AE678(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter;
  v5 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
    sub_240A296DC();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_2409194E8(0, &qword_27E50DD60, 0x277CECA58);
  v6 = v5;
  v7 = a1;
  v8 = sub_240A2C37C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_2409AE810()
{
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  return *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay);
}

uint64_t sub_2409AE8B8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
    sub_240A296DC();
  }

  return result;
}

uint64_t sub_2409AE9E0()
{
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2409AEABC()
{
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2409AEB68@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_2409AEC1C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
    sub_240A296DC();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
  v3 = v2;
  v4 = sub_240A2C37C();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2409AEDCC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v3 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v4 = sub_240A2A39C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_2409AEEC4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_240A2A39C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_2409B8508(&unk_27E50DD50, MEMORY[0x277CED960], MEMORY[0x277CED968]);
  v14[0] = a1;
  LOBYTE(a1) = sub_240A2BF0C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
    sub_240A296DC();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_2409AF164(uint64_t a1, uint64_t a2)
{
  v4 = sub_240A2A39C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

id sub_2409AF280()
{
  v1 = v0;
  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50DC00);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "AgeMigrationViewModel deinitialized", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for AgeMigrationViewModel(0);
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2409AF56C()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24097BAF4;

  return sub_2409AF618();
}

uint64_t sub_2409AF618()
{
  v1[16] = v0;
  v2 = sub_240A2A39C();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v3 = sub_240A2A4CC();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  sub_240A2C21C();
  v1[23] = sub_240A2C20C();
  v5 = sub_240A2C1BC();
  v1[24] = v5;
  v1[25] = v4;

  return MEMORY[0x2822009F8](sub_2409AF768, v5, v4);
}

uint64_t sub_2409AF768()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  swift_getKeyPath();
  v0[15] = v3;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v5 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v2 + 16))(v1, v3 + v5, v4);
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  sub_240A2C32C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = sub_240A2ADAC();
  v7 = MEMORY[0x277CEDD68];
  v0[10] = v6;
  v0[11] = v7;
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_240A2AD9C();
  sub_240A2A4BC();
  v8 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel_ageMigrationController + 8);
  ObjectType = swift_getObjectType();
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_2409AF98C;
  v11 = v0[22];

  return MEMORY[0x28213FE80](v0 + 2, v11, ObjectType, v8);
}

uint64_t sub_2409AF98C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_2409AFB44;
  }

  else
  {
    sub_2409B92C0(v2 + 16);
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_2409AFAA8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2409AFAA8()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2409AFB44()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2409AFBE0(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_240A2C21C();
  v3[12] = sub_240A2C20C();
  v5 = sub_240A2C1BC();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_2409AFC7C, v5, v4);
}

uint64_t sub_2409AFC7C()
{
  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  v0[15] = __swift_project_value_buffer(v1, qword_27E50DC00);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "Preparing for server migration flow", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_2409AFDD4;
  v6 = v0[10];
  v7 = v0[9];

  return sub_2409B31E8(v7, v6);
}

uint64_t sub_2409AFDD4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_2409B0460;
  }

  else
  {
    v4[18] = a1;
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_2409AFEFC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2409AFEFC()
{
  v1 = sub_240A1E87C(v0[18]);

  v2 = sub_240A2BF4C();
  if (!*(v1 + 16))
  {

LABEL_9:

    goto LABEL_10;
  }

  v4 = sub_240925A1C(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {

    goto LABEL_9;
  }

  sub_240913DC0(*(v1 + 56) + 32 * v4, (v0 + 2));

  if (swift_dynamicCast())
  {
    v8 = v0[6];
    v7 = v0[7];
    v0[19] = v7;
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = sub_2409B0150;

    return sub_2409B4468(v8, v7);
  }

LABEL_10:
  v11 = sub_240A2AFFC();
  v12 = sub_240A2C2AC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2408FE000, v11, v12, "Failed to get child identity token from auth results", v13, 2u);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  sub_240926FD4();
  swift_allocError();
  *v14 = xmmword_240A35530;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = 0;
  swift_willThrow();
  v15 = v0[1];

  return v15();
}

uint64_t sub_2409B0150()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_2409B04C4;
  }

  else
  {
    v5 = sub_2409B02A4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2409B02A4()
{

  v1 = sub_240A2AFFC();
  v2 = sub_240A2C29C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2408FE000, v1, v2, "Presenting migration RUI", v3, 2u);
    MEMORY[0x245CCDDB0](v3, -1, -1);
  }

  v4 = v0[11];

  if (*(v4 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay) == 1)
  {
    *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay) = 1;
  }

  else
  {
    v5 = v0[11];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v0[8] = v5;
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
    sub_240A296DC();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_2409B0460()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2409B04C4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2409B0528(uint64_t a1, uint64_t a2)
{
  v222 = a2;
  v216 = a1;
  v182 = sub_240A29E6C();
  v187 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v3 = &v178 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_240A2A08C();
  v203 = *(v199 - 8);
  v4 = MEMORY[0x28223BE20](v199);
  v193 = &v178 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v198 = &v178 - v6;
  v202 = sub_240A2A10C();
  v201 = *(v202 - 8);
  v7 = MEMORY[0x28223BE20](v202);
  v190 = &v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v196 = &v178 - v9;
  v192 = sub_240A29EEC();
  v185 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v191 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770);
  MEMORY[0x28223BE20](v11 - 8);
  v195 = &v178 - v12;
  v184 = sub_240A299DC();
  v197 = *(v184 - 8);
  v13 = MEMORY[0x28223BE20](v184);
  v183 = &v178 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v189 = &v178 - v15;
  v207 = sub_240A2A33C();
  MEMORY[0x28223BE20](v207);
  v209 = &v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7A0, &qword_240A33100);
  v218 = *(v17 - 8);
  v219 = v17;
  MEMORY[0x28223BE20](v17);
  v213 = &v178 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD28, &qword_240A35808);
  MEMORY[0x28223BE20](v19 - 8);
  v217 = (&v178 - v20);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD30, &qword_240A35810);
  v215 = *(v221 - 8);
  v21 = MEMORY[0x28223BE20](v221);
  v204 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v178 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v212 = &v178 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v178 - v28;
  v30 = sub_240A2A39C();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v188 = &v178 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v194 = &v178 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v205 = &v178 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v178 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v178 - v41;
  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v43 = sub_240A2B00C();
  v44 = __swift_project_value_buffer(v43, qword_27E50DC00);
  v45 = *(v31 + 16);
  v45(v42, v216, v30);
  v216 = v31 + 16;
  v211 = v45;
  v45(v40, v222, v30);
  v46 = sub_240A2AFFC();
  v47 = sub_240A2C29C();
  v48 = os_log_type_enabled(v46, v47);
  v186 = v3;
  v208 = v25;
  v206 = v31;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v180 = v47;
    v50 = v49;
    v181 = swift_slowAlloc();
    v227 = v181;
    *v50 = 136315394;
    sub_2409B8508(&unk_27E50DD40, MEMORY[0x277CED960], MEMORY[0x277CED970]);
    v179 = v46;
    v51 = sub_240A2C62C();
    v200 = v44;
    v53 = v52;
    v214 = v29;
    v54 = *(v31 + 8);
    v54(v42, v30);
    v55 = sub_240925464(v51, v53, &v227);
    v56 = v200;

    *(v50 + 4) = v55;
    *(v50 + 12) = 2080;
    v57 = sub_240A2C62C();
    v59 = v58;
    v210 = v54;
    v54(v40, v30);
    v60 = v220;
    v29 = v214;
    v61 = sub_240925464(v57, v59, &v227);

    *(v50 + 14) = v61;
    v62 = v179;
    _os_log_impl(&dword_2408FE000, v179, v180, "modelDidChange from oldValue: %s to newValue: %s", v50, 0x16u);
    v63 = v181;
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v63, -1, -1);
    MEMORY[0x245CCDDB0](v50, -1, -1);
  }

  else
  {

    v64 = *(v31 + 8);
    v64(v40, v30);
    v210 = v64;
    v64(v42, v30);
    v56 = v44;
    v60 = v220;
  }

  swift_getKeyPath();
  v227 = v60;
  v65 = sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v66 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelUpdate;
  swift_beginAccess();
  v67 = v217;
  sub_240919298(v60 + v66, v217, &qword_27E50DD28, &qword_240A35808);
  v68 = v218;
  v69 = v219;
  if ((*(v218 + 48))(v67, 1, v219))
  {
    sub_240919300(v67, &qword_27E50DD28, &qword_240A35808);
    v70 = sub_240A2AFFC();
    v71 = sub_240A2C2AC();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2408FE000, v70, v71, "modelDidChange: unable to send response because it is nil", v72, 2u);
      MEMORY[0x245CCDDB0](v72, -1, -1);
    }

    return;
  }

  v181 = v30;
  v73 = v213;
  (*(v68 + 16))(v213, v67, v69);
  sub_240919300(v67, &qword_27E50DD28, &qword_240A35808);
  v74 = v212;
  sub_240A29CAC();
  (*(v68 + 8))(v73, v69);
  (*(v215 + 32))(v29, v74, v221);
  swift_getKeyPath();
  v226 = v60;
  sub_240A296EC();

  v75 = *(v60 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender);
  if (v75)
  {
    v214 = v29;
    v76 = *(v60 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender + 8);
    swift_getKeyPath();
    v226 = v60;
    v219 = v76;

    v218 = v65;
    sub_240A296EC();

    v77 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
    swift_beginAccess();
    v78 = v60;
    v79 = v60 + v77;
    v80 = v205;
    v81 = v181;
    v211(v205, v79, v181);
    v82 = v209;
    sub_240A2A34C();
    v210(v80, v81);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v84 = v56;
    if (EnumCaseMultiPayload == 2)
    {
      sub_2409B9164(v82, MEMORY[0x277CED950]);
      v106 = sub_240A2AFFC();
      v107 = sub_240A2C28C();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&dword_2408FE000, v106, v107, "AgeMigrationViewModel detected failure. Dismissing RUI overlay.", v108, 2u);
        MEMORY[0x245CCDDB0](v108, -1, -1);
      }

      if (*(v78 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v178 - 2) = v78;
        *(&v178 - 8) = 0;
        v223 = v78;
        sub_240A296DC();
      }

      else
      {
        *(v78 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay) = 0;
      }

      v94 = v219;
      v90 = v208;
      goto LABEL_53;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v98 = sub_240A2AFFC();
      v99 = sub_240A2C28C();
      v100 = v78;
      if (os_log_type_enabled(v98, v99))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&dword_2408FE000, v98, v99, "AgeMigrationViewModel is requesting termination from delegate", v101, 2u);
        MEMORY[0x245CCDDB0](v101, -1, -1);
      }

      swift_getKeyPath();
      v223 = v78;
      sub_240A296EC();

      v102 = v78 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v94 = v219;
      v90 = v208;
      if (Strong)
      {
        v104 = *(v102 + 1);
        ObjectType = swift_getObjectType();
        (*(v104 + 24))(v100, ObjectType, v104);
        swift_unknownObjectRelease();
      }

      goto LABEL_53;
    }

    v85 = v78;
    if (EnumCaseMultiPayload == 5)
    {
      v86 = v195;
      sub_240A2A36C();
      v87 = sub_240A29A0C();
      v88 = *(v87 - 8);
      v89 = (*(v88 + 48))(v86, 1, v87);
      v90 = v208;
      if (v89 == 1)
      {
        sub_240919300(v86, &unk_27E50C790, &unk_240A35770);
        v91 = sub_240A2AFFC();
        v92 = sub_240A2C2AC();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&dword_2408FE000, v91, v92, "Migration finished but model does not have an accountID to pass to the delegate. CFU will remain.", v93, 2u);
          MEMORY[0x245CCDDB0](v93, -1, -1);
        }

        v94 = v219;
      }

      else
      {
        v132 = v183;
        sub_240A299FC();
        (*(v88 + 8))(v86, v87);
        v133 = v189;
        v134 = v184;
        (*(v197 + 32))(v189, v132, v184);
        v135 = sub_240A2AFFC();
        v136 = sub_240A2C28C();
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          *v137 = 0;
          _os_log_impl(&dword_2408FE000, v135, v136, "AgeMigrationViewModel is notifying delegate that migration finished", v137, 2u);
          v138 = v137;
          v133 = v189;
          MEMORY[0x245CCDDB0](v138, -1, -1);
        }

        swift_getKeyPath();
        v223 = v85;
        sub_240A296EC();

        v139 = v85 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate;
        v140 = swift_unknownObjectWeakLoadStrong();
        v90 = v208;
        if (v140)
        {
          v141 = *(v139 + 1);
          v142 = swift_getObjectType();
          (*(v141 + 8))(v85, v133, v142, v141);
          swift_unknownObjectRelease();
        }

        (*(v197 + 8))(v133, v134);
        v94 = v219;
      }

      goto LABEL_53;
    }

    v222 = v75;
    swift_getKeyPath();
    v223 = v78;
    sub_240A296EC();

    v110 = v194;
    v111 = v181;
    v211(v194, v78 + v77, v181);
    v112 = v196;
    sub_240A2A29C();
    v210(v110, v111);
    v113 = v198;
    sub_240A2A09C();
    v114 = v113;
    v115 = v201 + 8;
    v217 = *(v201 + 8);
    (v217)(v112, v202);
    v116 = v203;
    v117 = *(v203 + 88);
    v118 = v199;
    if (v117(v114, v199) == *MEMORY[0x277CED758])
    {
      v201 = v115;
      (*(v116 + 96))(v114, v118);
      v119 = v185;
      v120 = v114;
      v121 = v191;
      v122 = v192;
      (*(v185 + 32))(v191, v120, v192);
      if (sub_240A29ECC())
      {
        v123 = sub_240A2AFFC();
        v124 = sub_240A2C29C();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&dword_2408FE000, v123, v124, "Telling delegate to show other options", v125, 2u);
          MEMORY[0x245CCDDB0](v125, -1, -1);
        }

        swift_getKeyPath();
        v126 = v220;
        v223 = v220;
        sub_240A296EC();

        v127 = v126 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate;
        v128 = swift_unknownObjectWeakLoadStrong();
        v75 = v222;
        v129 = v191;
        if (v128)
        {
          v130 = *(v127 + 8);
          v131 = swift_getObjectType();
          (*(v130 + 16))(v126, v131, v130);
          swift_unknownObjectRelease();
        }

        (*(v119 + 8))(v129, v192);
        v90 = v208;
LABEL_52:
        v94 = v219;
        sub_2409B9164(v209, MEMORY[0x277CED950]);
LABEL_53:
        v158 = v215;
        v159 = *(v215 + 16);
        v159(v90, v214, v221);
        sub_24090C23C(v75, v94);
        v160 = sub_240A2AFFC();
        v161 = sub_240A2C29C();
        sub_24090C1A0(v75, v94);
        v162 = v75;
        if (os_log_type_enabled(v160, v161))
        {
          v163 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          v225 = v222;
          *v163 = 136315394;
          v164 = v221;
          v159(v204, v90, v221);
          v165 = sub_240A2BF9C();
          v167 = v166;
          v168 = *(v158 + 8);
          v168(v90, v164);
          v169 = sub_240925464(v165, v167, &v225);

          *(v163 + 4) = v169;
          *(v163 + 12) = 2080;
          v170 = swift_allocObject();
          v171 = v219;
          *(v170 + 16) = v162;
          *(v170 + 24) = v171;
          v223 = sub_2409976C4;
          v224 = v170;
          sub_24090C23C(v162, v219);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD38, &qword_240A35868);
          v172 = sub_240A2BF9C();
          v174 = sub_240925464(v172, v173, &v225);

          *(v163 + 14) = v174;
          _os_log_impl(&dword_2408FE000, v160, v161, "modelDidChange: Sending response %s using sender %s", v163, 0x16u);
          v175 = v222;
          swift_arrayDestroy();
          MEMORY[0x245CCDDB0](v175, -1, -1);
          v176 = v163;
          v94 = v219;
          MEMORY[0x245CCDDB0](v176, -1, -1);
        }

        else
        {

          v168 = *(v158 + 8);
          v168(v90, v221);
        }

        v177 = v214;
        v162(v214);
        sub_24090C1A0(v162, v94);
        v168(v177, v221);
        return;
      }

      v200 = v84;
      (*(v119 + 8))(v121, v122);
    }

    else
    {
      v200 = v84;
      (*(v116 + 8))(v114, v118);
    }

    swift_getKeyPath();
    v143 = v220;
    v223 = v220;
    sub_240A296EC();

    v144 = v143 + v77;
    v145 = v188;
    v146 = v181;
    v211(v188, v144, v181);
    v147 = v190;
    sub_240A2A29C();
    v210(v145, v146);
    v148 = v193;
    sub_240A2A09C();
    (v217)(v147, v202);
    if (v117(v148, v118) == *MEMORY[0x277CED750])
    {
      (*(v203 + 96))(v148, v118);
      v149 = v187;
      v150 = v186;
      v151 = v182;
      (*(v187 + 32))(v186, v148, v182);
      v152 = sub_240A29E3C();
      v75 = v222;
      if (v152)
      {
        swift_getKeyPath();
        v153 = v220;
        v223 = v220;
        sub_240A296EC();

        v154 = v153 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate;
        v155 = swift_unknownObjectWeakLoadStrong();
        v90 = v208;
        if (v155)
        {
          v156 = *(v154 + 8);
          v157 = swift_getObjectType();
          (*(v156 + 24))(v153, v157, v156);
          swift_unknownObjectRelease();
        }

        (*(v187 + 8))(v186, v151);
      }

      else
      {
        (*(v149 + 8))(v150, v151);
        v90 = v208;
      }
    }

    else
    {
      (*(v203 + 8))(v148, v118);
      v90 = v208;
      v75 = v222;
    }

    goto LABEL_52;
  }

  v95 = sub_240A2AFFC();
  v96 = sub_240A2C2AC();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_2408FE000, v95, v96, "modelDidChange: unable to send response because sender is nil", v97, 2u);
    MEMORY[0x245CCDDB0](v97, -1, -1);
  }

  (*(v215 + 8))(v29, v221);
}

uint64_t sub_2409B1F30()
{
  v1 = v0;
  v2 = sub_240A2A33C();
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E50B658, &unk_240A30CF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_240A2A45C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2A42C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_240919300(v7, qword_27E50B658, &unk_240A30CF0);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *&v19 = v0;
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
    sub_240A296EC();

    *&v19 = v0;
    swift_getKeyPath();
    sub_240A2970C();

    swift_beginAccess();
    sub_240A2A35C();
    swift_endAccess();
    *&v19 = v0;
    swift_getKeyPath();
    sub_240A296FC();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_2409B8508(&qword_27E50DD20, MEMORY[0x277CED988], MEMORY[0x277CED990]);
    v13 = swift_allocError();
    (*(v9 + 16))(v14, v11, v8);
    sub_240A2A47C();

    v15 = v20;
    *v4 = v19;
    *(v4 + 1) = v15;
    *(v4 + 4) = v21;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v18 = v1;
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
    sub_240A296EC();

    v18 = v1;
    swift_getKeyPath();
    sub_240A2970C();

    swift_beginAccess();
    sub_240A2A35C();
    swift_endAccess();
    v18 = v1;
    swift_getKeyPath();
    sub_240A296FC();

    result = (*(v9 + 8))(v11, v8);
  }

  if (*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v17 - 2) = v1;
    *(&v17 - 8) = 0;
    v18 = v1;
    sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
    sub_240A296DC();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay) = 0;
  }

  return result;
}

void sub_2409B2498()
{
  v1 = v0;
  v2 = sub_240A2A08C();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - v5;
  v46 = sub_240A2A10C();
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240A2A39C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_240A29EEC();
  v42 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel___observationRegistrar;
  v50[0] = v1;
  v43 = sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  v44 = v16;
  sub_240A296EC();

  v17 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v11 + 16))(v13, v1 + v17, v10);
  sub_240A2A29C();
  v18 = v13;
  v19 = v47;
  (*(v11 + 8))(v18, v10);
  sub_240A2A09C();
  v20 = v9;
  v21 = v48;
  (*(v7 + 8))(v20, v46);
  v22 = (*(v19 + 88))(v6, v21);
  if (v22 == *MEMORY[0x277CED758])
  {
    v23 = v22;
    (*(v19 + 96))(v6, v21);
    v24 = v42;
    (*(v42 + 32))(v15, v6, v49);
    v25 = v24;
    if (qword_27E50AF70 != -1)
    {
      swift_once();
    }

    v26 = sub_240A2B00C();
    __swift_project_value_buffer(v26, qword_27E50DC00);
    v27 = sub_240A2AFFC();
    v28 = sub_240A2C29C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v19;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2408FE000, v27, v28, "Re-enabling flow after selecting cancel from other options", v30, 2u);
      v31 = v30;
      v19 = v29;
      MEMORY[0x245CCDDB0](v31, -1, -1);
    }

    sub_240A29EDC();
    v32 = *(v25 + 16);
    v41 = v15;
    v33 = v45;
    v34 = v15;
    v35 = v49;
    v32(v45, v34, v49);
    (*(v19 + 104))(v33, v23, v21);
    swift_getKeyPath();
    v50[0] = v1;
    sub_240A296EC();

    v50[0] = v1;
    swift_getKeyPath();
    sub_240A2970C();

    swift_beginAccess();
    v36 = sub_240A2A28C();
    sub_240A2A0AC();
    v36(v50, 0);
    swift_endAccess();
    v50[0] = v1;
    swift_getKeyPath();
    sub_240A296FC();

    (*(v25 + 8))(v41, v35);
  }

  else
  {
    (*(v19 + 8))(v6, v21);
    if (qword_27E50AF70 != -1)
    {
      swift_once();
    }

    v37 = sub_240A2B00C();
    __swift_project_value_buffer(v37, qword_27E50DC00);
    v38 = sub_240A2AFFC();
    v39 = sub_240A2C2AC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2408FE000, v38, v39, "Starting state for enableFlowAfterSelectingCancelFromOtherOptions is incorrect.", v40, 2u);
      MEMORY[0x245CCDDB0](v40, -1, -1);
    }
  }
}

void sub_2409B2B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a2;
  v59 = a3;
  v60 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD28, &qword_240A35808);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v50 - v5;
  v6 = sub_240A2A39C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v16 = sub_240A2BE7C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
    *v19 = sub_240A2C32C();
    (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
    v22 = sub_240A2BE8C();
    (*(v17 + 8))(v19, v16);
    if (v22)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7A0, &qword_240A33100);
      MEMORY[0x245CCA960]();
      if (qword_27E50AF70 == -1)
      {
LABEL_4:
        v23 = sub_240A2B00C();
        __swift_project_value_buffer(v23, qword_27E50DC00);
        v24 = *(v7 + 16);
        v54 = v7 + 16;
        v55 = v15;
        v53 = v24;
        v24(v13, v15, v6);
        v25 = sub_240A2AFFC();
        v26 = sub_240A2C29C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v56 = v6;
          v28 = v27;
          v29 = swift_slowAlloc();
          v51 = v16;
          v52 = v10;
          v30 = v29;
          v61 = v29;
          *v28 = 136315138;
          sub_2409B8508(&unk_27E50DD40, MEMORY[0x277CED960], MEMORY[0x277CED970]);
          v31 = sub_240A2C62C();
          v33 = v32;
          v34 = *(v7 + 8);
          v34(v13, v56);
          v35 = v34;
          v36 = sub_240925464(v31, v33, &v61);

          *(v28 + 4) = v36;
          _os_log_impl(&dword_2408FE000, v25, v26, "AgeMigrationModel updated with %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v30);
          v37 = v30;
          v16 = v51;
          v10 = v52;
          MEMORY[0x245CCDDB0](v37, -1, -1);
          v38 = v28;
          v6 = v56;
          MEMORY[0x245CCDDB0](v38, -1, -1);
        }

        else
        {

          v43 = *(v7 + 8);
          v43(v13, v6);
          v35 = v43;
        }

        v44 = *(v16 - 8);
        v45 = v57;
        (*(v44 + 16))(v57, v60, v16);
        (*(v44 + 56))(v45, 0, 1, v16);
        sub_2409AD348(v45);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v48 = v58;
        v47 = v59;
        *(&v50 - 4) = v21;
        *(&v50 - 3) = v48;
        *(&v50 - 2) = v47;
        v61 = v21;
        sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
        sub_240A296DC();

        v49 = v55;
        v53(v10, v55, v6);
        sub_2409AEEC4(v10);

        v35(v49, v6);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v39 = sub_240A2B00C();
  __swift_project_value_buffer(v39, qword_27E50DC00);
  v40 = sub_240A2AFFC();
  v41 = sub_240A2C2BC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_2408FE000, v40, v41, "AgeMigrationViewModel deallocated", v42, 2u);
    MEMORY[0x245CCDDB0](v42, -1, -1);
  }
}

uint64_t sub_2409B31E8(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = sub_240A2B00C();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v5 = sub_240A2998C();
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();
  v6 = sub_240A2987C();
  v3[33] = v6;
  v3[34] = *(v6 - 8);
  v3[35] = swift_task_alloc();
  v7 = sub_240A298BC();
  v3[36] = v7;
  v3[37] = *(v7 - 8);
  v3[38] = swift_task_alloc();
  v8 = sub_240A2986C();
  v3[39] = v8;
  v3[40] = *(v8 - 8);
  v3[41] = swift_task_alloc();
  v9 = sub_240A299DC();
  v3[42] = v9;
  v3[43] = *(v9 - 8);
  v3[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770);
  v3[45] = swift_task_alloc();
  v10 = sub_240A2A39C();
  v3[46] = v10;
  v3[47] = *(v10 - 8);
  v3[48] = swift_task_alloc();
  v11 = sub_240A29A0C();
  v3[49] = v11;
  v3[50] = *(v11 - 8);
  v3[51] = swift_task_alloc();
  sub_240A2C21C();
  v3[52] = sub_240A2C20C();
  v13 = sub_240A2C1BC();
  v3[53] = v13;
  v3[54] = v12;

  return MEMORY[0x2822009F8](sub_2409B359C, v13, v12);
}

uint64_t sub_2409B359C()
{
  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v0[55] = __swift_project_value_buffer(v0[27], qword_27E50DC00);
  v1 = sub_240A2AFFC();
  v2 = sub_240A2C28C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2408FE000, v1, v2, "Performing ephemeral proxied auth", v3, 2u);
    MEMORY[0x245CCDDB0](v3, -1, -1);
  }

  v4 = v0[49];
  v5 = v0[50];
  v6 = v0[47];
  v7 = v0[48];
  v8 = v0[45];
  v9 = v0[46];
  v10 = v0[26];

  swift_getKeyPath();
  v0[21] = v10;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v11 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v6 + 16))(v7, v10 + v11, v9);
  sub_240A2A36C();
  (*(v6 + 8))(v7, v9);
  if ((*(v5 + 48))(v8, 1, v4) == 1)
  {
    v12 = v0[45];

    sub_240919300(v12, &unk_27E50C790, &unk_240A35770);
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C2AC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2408FE000, v13, v14, "Missing account", v15, 2u);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }

    sub_240926FD4();
    swift_allocError();
    *v16 = xmmword_240A35550;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 16) = 0;
    swift_willThrow();
LABEL_20:

    v66 = v0[1];

    return v66();
  }

  v17 = v0[44];
  v19 = v0[42];
  v18 = v0[43];
  v20 = v0[34];
  v21 = v0[35];
  v22 = v0[33];
  (*(v0[50] + 32))(v0[51], v0[45], v0[49]);
  sub_240A299FC();
  sub_240A299BC();
  (*(v18 + 8))(v17, v19);
  sub_240A298EC();
  if ((*(v20 + 88))(v21, v22) != *MEMORY[0x277CED390])
  {
    v44 = v0[34];
    v43 = v0[35];
    v45 = v0[33];

    (*(v44 + 8))(v43, v45);
    sub_240A2AE9C();
    v46 = sub_240A2AFFC();
    v47 = sub_240A2C2AC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2408FE000, v46, v47, "Missing migration companion device info", v48, 2u);
      MEMORY[0x245CCDDB0](v48, -1, -1);
    }

    v50 = v0[50];
    v49 = v0[51];
    v51 = v0[49];
    v53 = v0[28];
    v52 = v0[29];
    v54 = v0[27];

    (*(v53 + 8))(v52, v54);
    sub_240926FD4();
    swift_allocError();
    *v55 = xmmword_240A35540;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0;
    *(v55 + 16) = 0;
    swift_willThrow();
    (*(v50 + 8))(v49, v51);
    goto LABEL_20;
  }

  v23 = v0[40];
  v24 = v0[41];
  v26 = v0[38];
  v25 = v0[39];
  v27 = v0[36];
  v28 = v0[37];
  v29 = v0[35];
  v68 = v0[32];
  v69 = v0[31];
  v70 = v0[30];
  v71 = v0[26];
  (*(v0[34] + 96))(v29, v0[33]);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DD00, &unk_240A330F0) + 48);
  (*(v23 + 32))(v24, v29, v25);
  (*(v28 + 32))(v26, v29 + v30, v27);
  v31 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  v0[56] = v31;
  v32 = *MEMORY[0x277CEFF28];
  v33 = v31;
  [v33 setAppProvidedContext_];
  v34 = sub_240A2BF1C();

  [v33 setAltDSID_];

  [v33 setAuthenticationType_];
  [v33 setIsEphemeral_];
  v35 = sub_240A2989C();
  [v33 setProxiedDevice_];

  sub_240A2985C();
  v36 = sub_240A2996C();
  (*(v69 + 8))(v68, v70);
  [v33 setProxiedDeviceAnisetteData_];

  v37 = sub_240A2BF1C();

  [v33 setProxiedToken_];

  v38 = sub_240A2BF1C();
  [v33 setProxiedAppleID_];

  [v33 setIsUsernameEditable_];
  swift_getKeyPath();
  v0[22] = v71;
  sub_240A296EC();

  Strong = swift_unknownObjectWeakLoadStrong();
  [v33 setPresentingViewController_];

  v40 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  v0[57] = v40;
  if (!v40)
  {

    v56 = sub_240A2AFFC();
    v57 = sub_240A2C2AC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2408FE000, v56, v57, "Failed to create AKAppleIDAuthenticationController for ephemeral proxied auth", v58, 2u);
      MEMORY[0x245CCDDB0](v58, -1, -1);
    }

    v59 = v0[50];
    v74 = v0[51];
    v60 = v0[40];
    v72 = v0[41];
    v73 = v0[49];
    v62 = v0[38];
    v61 = v0[39];
    v64 = v0[36];
    v63 = v0[37];

    sub_240926FD4();
    swift_allocError();
    *v65 = 0u;
    *(v65 + 16) = 0u;
    *(v65 + 32) = 0;
    swift_willThrow();

    (*(v63 + 8))(v62, v64);
    (*(v60 + 8))(v72, v61);
    (*(v59 + 8))(v74, v73);
    goto LABEL_20;
  }

  v41 = v40;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_2409B3F74;
  v42 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DD10, &unk_240A357D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2409AD124;
  v0[13] = &block_descriptor_14;
  v0[14] = v42;
  [v41 authenticateWithContext:v33 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2409B3F74()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 464) = v2;
  v3 = *(v1 + 432);
  v4 = *(v1 + 424);
  if (v2)
  {
    v5 = sub_2409B430C;
  }

  else
  {
    v5 = sub_2409B40A4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2409B40A4()
{
  v1 = *(v0 + 448);

  v2 = *(v0 + 184);

  if (v2)
  {
    v3 = *(v0 + 400);
    v27 = *(v0 + 408);
    v29 = *(v0 + 448);
    v4 = *(v0 + 392);
    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
    v8 = *(v0 + 304);
    v7 = *(v0 + 312);
    v9 = v2;
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);

    (*(v10 + 8))(v8, v11);
    v12 = v9;
    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v27, v4);
  }

  else
  {
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C2AC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2408FE000, v13, v14, "Got empty results from ephemeral proxied auth", v15, 2u);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }

    v17 = *(v0 + 448);
    v16 = *(v0 + 456);
    v18 = *(v0 + 400);
    v28 = *(v0 + 392);
    v30 = *(v0 + 408);
    v19 = *(v0 + 320);
    v26 = *(v0 + 328);
    v21 = *(v0 + 304);
    v20 = *(v0 + 312);
    v23 = *(v0 + 288);
    v22 = *(v0 + 296);

    v12 = sub_24092624C(MEMORY[0x277D84F90]);
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v26, v20);
    (*(v18 + 8))(v30, v28);
  }

  v24 = *(v0 + 8);

  return v24(v12);
}

uint64_t sub_2409B430C()
{
  v1 = v0[57];
  v2 = v0[56];
  v3 = v0[50];
  v12 = v0[49];
  v13 = v0[51];
  v4 = v0[40];
  v11 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[36];
  v7 = v0[37];

  swift_willThrow();

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v11, v5);
  (*(v3 + 8))(v13, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2409B4468(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCD0, &qword_240A33AF0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v3[21] = swift_task_alloc();
  v4 = sub_240A2946C();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770);
  v3[25] = swift_task_alloc();
  v5 = sub_240A2987C();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = sub_240A298BC();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v7 = sub_240A2986C();
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = sub_240A2A33C();
  v3[36] = swift_task_alloc();
  v8 = sub_240A2A39C();
  v3[37] = v8;
  v3[38] = *(v8 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v9 = sub_240A2A31C();
  v3[41] = v9;
  v3[42] = *(v9 - 8);
  v3[43] = swift_task_alloc();
  sub_240A2C21C();
  v3[44] = sub_240A2C20C();
  v11 = sub_240A2C1BC();
  v3[45] = v11;
  v3[46] = v10;

  return MEMORY[0x2822009F8](sub_2409B4810, v11, v10);
}

uint64_t sub_2409B4810()
{
  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50DC00);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "Configuring migration request with child identity token", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[19];

  swift_getKeyPath();
  v0[47] = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel___observationRegistrar;
  v0[13] = v8;
  v0[48] = sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v9 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v50 = *(v6 + 16);
  v50(v5, v8 + v9, v7);
  sub_240A2A34C();
  v10 = *(v6 + 8);
  v10(v5, v7);
  if (swift_getEnumCaseMultiPayload())
  {
    v11 = v0[36];

    sub_2409B9164(v11, MEMORY[0x277CED950]);
    v12 = sub_240A2AFFC();
    v13 = sub_240A2C2AC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2408FE000, v12, v13, "Missing migrationInfo", v14, 2u);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }

    sub_240926FD4();
    swift_allocError();
    *v15 = xmmword_240A35560;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    *(v15 + 16) = 0;
    swift_willThrow();
LABEL_19:

    v49 = v0[1];

    return v49();
  }

  v16 = v0[39];
  v17 = v0[37];
  v52 = v0[25];
  v18 = v0[19];
  (*(v0[42] + 32))(v0[43], v0[36], v0[41]);
  swift_getKeyPath();
  v0[14] = v18;
  sub_240A296EC();

  v50(v16, v8 + v9, v17);
  sub_240A2A36C();
  v10(v16, v17);
  v19 = sub_240A29A0C();
  if ((*(*(v19 - 8) + 48))(v52, 1, v19))
  {
    v20 = v0[25];

    sub_240919300(v20, &unk_27E50C790, &unk_240A35770);
LABEL_16:
    v42 = sub_240A2AFFC();
    v43 = sub_240A2C2AC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2408FE000, v42, v43, "Missing migration companion device info", v44, 2u);
      MEMORY[0x245CCDDB0](v44, -1, -1);
    }

    v46 = v0[42];
    v45 = v0[43];
    v47 = v0[41];

    sub_2409B91C4();
    swift_allocError();
    *v48 = 2;
    swift_willThrow();
    (*(v46 + 8))(v45, v47);
    goto LABEL_19;
  }

  v21 = v0[27];
  v22 = v0[28];
  v23 = v0[25];
  v24 = v0[26];
  sub_240A298EC();
  sub_240919300(v23, &unk_27E50C790, &unk_240A35770);
  if ((*(v21 + 88))(v22, v24) != *MEMORY[0x277CED390])
  {
    v39 = v0[27];
    v40 = v0[28];
    v41 = v0[26];

    (*(v39 + 8))(v40, v41);
    goto LABEL_16;
  }

  v26 = v0[33];
  v25 = v0[34];
  v28 = v0[31];
  v27 = v0[32];
  v29 = v0[29];
  v30 = v0[30];
  v31 = v0[28];
  v51 = v0[21];
  v32 = v0[19];
  (*(v0[27] + 96))(v31, v0[26]);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DD00, &unk_240A330F0) + 48);

  (*(v26 + 32))(v25, v31, v27);
  (*(v30 + 32))(v28, v31 + v33, v29);
  swift_getKeyPath();
  v0[15] = v32;
  sub_240A296EC();

  v34 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__urlBag;
  swift_beginAccess();
  sub_240919A14(v32 + v34, (v0 + 2));
  sub_240A2A2FC();
  v35 = sub_240A2962C();
  (*(*(v35 - 8) + 56))(v51, 0, 1, v35);
  v36 = swift_task_alloc();
  v0[49] = v36;
  *v36 = v0;
  v36[1] = sub_2409B4FB0;
  v37 = v0[21];

  return sub_2409BE490((v0 + 2), v37);
}

uint64_t sub_2409B4FB0(uint64_t a1)
{
  v4 = *v2;
  v4[50] = v1;

  v5 = v4[21];
  if (v1)
  {
    sub_240919300(v5, &unk_27E50DCE0, &qword_240A32E20);
    __swift_destroy_boxed_opaque_existential_0(v4 + 2);
    v6 = v4[45];
    v7 = v4[46];
    v8 = sub_2409B5720;
  }

  else
  {
    v4[51] = a1;
    sub_240919300(v5, &unk_27E50DCE0, &qword_240A32E20);
    __swift_destroy_boxed_opaque_existential_0(v4 + 2);
    v6 = v4[45];
    v7 = v4[46];
    v8 = sub_2409B5128;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2409B5128()
{
  v1 = v0[51];
  v2 = v0[19];
  sub_240A2944C();

  v3 = [objc_allocWithZone(MEMORY[0x277CF0188]) init];
  v0[52] = v3;
  v4 = sub_240A2989C();
  [v3 setPairedDevice_];

  v5 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel_ageMigrationController + 8);
  ObjectType = swift_getObjectType();
  v7 = swift_task_alloc();
  v0[53] = v7;
  *v7 = v0;
  v7[1] = sub_2409B5244;

  return MEMORY[0x28213FE88](ObjectType, v5);
}

uint64_t sub_2409B5244(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 432) = a1;

  v3 = *(v2 + 368);
  v4 = *(v2 + 360);

  return MEMORY[0x2822009F8](sub_2409B536C, v4, v3);
}

uint64_t sub_2409B536C()
{
  v1 = v0[54];
  v2 = v0[52];
  v27 = v0[43];
  v29 = v0[42];
  v30 = v0[41];
  v4 = v0[33];
  v3 = v0[34];
  v31 = v0[32];
  v21 = v0[30];
  v23 = v0[29];
  v24 = v0[31];
  v5 = v0[24];
  v6 = v0[22];
  v7 = v0[23];
  v25 = v5;
  v8 = v0[20];
  v28 = v0[19];
  v20 = v0[18];
  v22 = v0[17];

  v26 = v2;
  [v2 setAnisetteDataProvider_];
  swift_unknownObjectRelease();
  v9 = [objc_opt_self() defaultSessionConfiguration];
  [v9 set:v2 appleIDContext:?];
  (*(v7 + 16))(v8, v5, v6);
  v10 = v9;

  v11 = sub_240A2A30C();
  v13 = v12;
  v14 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
  (*(v4 + 16))(v8 + v14[8], v3, v31);
  (*(v21 + 16))(v8 + v14[9], v24, v23);
  *(v8 + v14[5]) = v10;
  v15 = (v8 + v14[6]);
  *v15 = v22;
  v15[1] = v20;
  v16 = (v8 + v14[7]);
  *v16 = v11;
  v16[1] = v13;
  *(v8 + v14[10]) = 0;
  (*(*(v14 - 1) + 56))(v8, 0, 1, v14);
  swift_getKeyPath();
  v17 = swift_task_alloc();
  *(v17 + 16) = v28;
  *(v17 + 24) = v8;
  v0[16] = v28;
  sub_240A296DC();

  (*(v7 + 8))(v25, v6);
  (*(v21 + 8))(v24, v23);
  (*(v4 + 8))(v3, v31);
  (*(v29 + 8))(v27, v30);

  sub_240919300(v8, &unk_27E50DCD0, &qword_240A33AF0);

  v18 = v0[1];

  return v18();
}

uint64_t sub_2409B5720()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[42];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[29];
  v9 = v0[30];

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v10 = v0[1];

  return v10();
}

void sub_2409B58A8(uint64_t a1)
{
  sub_2409B5A3C(319);
  if (v1 <= 0x3F)
  {
    sub_2409B5AA0(319);
    if (v2 <= 0x3F)
    {
      sub_240A2A39C();
      if (v3 <= 0x3F)
      {
        sub_240A2972C();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2409B5A3C(uint64_t a1)
{
  if (!qword_27E50DC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50C7A0, &qword_240A33100);
    v1 = sub_240A2C3BC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50DC90);
    }
  }
}

void sub_2409B5AA0(uint64_t a1)
{
  if (!qword_27E50DCA0)
  {
    type metadata accessor for AgeMigrationViewModel.ServerUIContext(255);
    v1 = sub_240A2C3BC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50DCA0);
    }
  }
}

void sub_2409B5B18(void *a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_240A2998C();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCD0, &qword_240A33AF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v13 = sub_240A2B00C();
  __swift_project_value_buffer(v13, qword_27E50DC00);
  v14 = sub_240A2AFFC();
  v15 = sub_240A2C29C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2408FE000, v14, v15, "RemoteUI will load - attaching headers in AgeMigrationViewModel", v16, 2u);
    MEMORY[0x245CCDDB0](v16, -1, -1);
  }

  swift_getKeyPath();
  v29 = v2;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v17 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__serverUIContext;
  swift_beginAccess();
  sub_240919298(v2 + v17, v8, &unk_27E50DCD0, &qword_240A33AF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_240919300(v8, &unk_27E50DCD0, &qword_240A33AF0);
    v18 = sub_240A2AFFC();
    v19 = sub_240A2C2AC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2408FE000, v18, v19, "Missing serverUI context. RUI will probably not work correctly!", v20, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }
  }

  else
  {
    sub_2409B8550(v8, v12);
    v21 = sub_240A2BF1C();
    v22 = sub_240A2BF1C();
    v23 = v28;
    [v28 ak:v21 addProxiedAuthorizationHeaderWithIdentityToken:v22 forAltDSID:?];

    [v23 ak:*MEMORY[0x277CEFF28] addAppProvidedContext:?];
    sub_240A2985C();
    v24 = sub_240A2996C();
    (*(v26 + 8))(v5, v27);
    [v23 ak:v24 addProxiedAnisetteHeaders:?];
    sub_240A2988C();
    v25 = sub_240A2BF1C();

    [v23 ak:v25 addProxiedClientInfoHeader:?];

    sub_2409B9164(v12, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
  }
}

uint64_t sub_2409B6024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[13] = sub_240A2A33C();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v5 = sub_240A2A39C();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  sub_240A2C21C();
  v4[19] = sub_240A2C20C();
  v7 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409B6154, v7, v6);
}

uint64_t sub_2409B6154()
{
  v1 = v0;
  v2 = v0[18];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[12];

  swift_getKeyPath();
  v0[8] = v6;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v7 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v3 + 16))(v2, v6 + v7, v4);
  sub_240A2A34C();
  (*(v3 + 8))(v2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2409B9164(v5, MEMORY[0x277CED950]);
  if (EnumCaseMultiPayload)
  {
    if (qword_27E50AF70 != -1)
    {
      swift_once();
    }

    v9 = sub_240A2B00C();
    __swift_project_value_buffer(v9, qword_27E50DC00);
    v10 = sub_240A2AFFC();
    v11 = sub_240A2C2AC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2408FE000, v10, v11, "If we're presenting RUI, we should be in migrating state", v12, 2u);
      MEMORY[0x245CCDDB0](v12, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AF70 != -1)
    {
      swift_once();
    }

    v13 = sub_240A2B00C();
    __swift_project_value_buffer(v13, qword_27E50DC00);
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C28C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "Migration finished. Notifying child.", v16, 2u);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    v17 = v0[12];

    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[9] = v17;
    sub_240A296EC();

    v0[10] = v17;
    swift_getKeyPath();
    sub_240A2970C();

    swift_beginAccess();
    sub_240A2A35C();
    swift_endAccess();
    v0[11] = v17;
    swift_getKeyPath();
    sub_240A296FC();
  }

  v18 = v1[1];

  return v18();
}

uint64_t sub_2409B65F8(void *a1)
{
  v1 = [a1 allHeaderFields];
  v2 = sub_240A2BEBC();

  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v3 = sub_240A2B00C();
  __swift_project_value_buffer(v3, qword_27E50DC00);

  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26[0] = v7;
    *v6 = 136315138;
    v8 = sub_240A2BECC();
    v10 = sub_240925464(v8, v9, v26);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2408FE000, v4, v5, "Age migration remoteUI headers: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x245CCDDB0](v7, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v24 = sub_240A2BF4C();
  v25 = v11;
  sub_240A2C44C();
  if (!*(v2 + 16) || (v12 = sub_240925A94(v26), (v13 & 1) == 0))
  {

    return sub_2409266D4(v26);
  }

  sub_240913DC0(*(v2 + 56) + 32 * v12, v27);
  sub_2409266D4(v26);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (v24 == sub_240A2BF4C() && v25 == v15)
  {
  }

  else
  {
    v16 = sub_240A2C66C();

    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  v17 = sub_240A2AFFC();
  v18 = sub_240A2C28C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2408FE000, v17, v18, "Response headers indicated flow completion.", v19, 2u);
    MEMORY[0x245CCDDB0](v19, -1, -1);
  }

  v20 = sub_2409AE30C(v26);
  v22 = v21;
  v23 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    *(v22 + *(v23 + 40)) = 1;
  }

  return (v20)(v26, 0);
}

void sub_2409B6A10(uint64_t a1, void *a2)
{
  v5 = sub_240A2946C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  if (a2)
  {
    v15 = sub_240A2C24C();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    (*(v6 + 16))(v11, a1, v5);
    sub_240A2C21C();
    v16 = a2;
    v17 = a2;
    v32 = v2;
    v18 = sub_240A2C20C();
    v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    *(v21 + 16) = v18;
    *(v21 + 24) = v22;
    (*(v6 + 32))(v21 + v19, v11, v5);
    *(v21 + v20) = a2;
    *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
    sub_2409230D4(0, 0, v14, &unk_240A35750, v21);
  }

  else
  {
    if (qword_27E50AF70 != -1)
    {
      swift_once();
    }

    v23 = sub_240A2B00C();
    __swift_project_value_buffer(v23, qword_27E50DC00);
    (*(v6 + 16))(v9, a1, v5);
    v24 = sub_240A2AFFC();
    v25 = sub_240A2C29C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v28 = sub_240A2942C();
      v30 = v29;
      (*(v6 + 8))(v9, v5);
      v31 = sub_240925464(v28, v30, &v33);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_2408FE000, v24, v25, "Request %s completed", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x245CCDDB0](v27, -1, -1);
      MEMORY[0x245CCDDB0](v26, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }
  }
}

uint64_t sub_2409B6DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v6[20] = sub_240A2A33C();
  v6[21] = swift_task_alloc();
  v7 = sub_240A2946C();
  v6[22] = v7;
  v6[23] = *(v7 - 8);
  v6[24] = swift_task_alloc();
  sub_240A2C21C();
  v6[25] = sub_240A2C20C();
  v9 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409B6F1C, v9, v8);
}

uint64_t sub_2409B6F1C()
{
  v30 = v0;

  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = sub_240A2B00C();
  __swift_project_value_buffer(v6, qword_27E50DC00);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2AC();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 184);
  v11 = *(v0 + 192);
  v13 = *(v0 + 176);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315394;
    v16 = sub_240A2942C();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_240925464(v16, v18, &v29);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_240A2C6CC();
    v22 = sub_240925464(v20, v21, &v29);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_2408FE000, v8, v9, "Request %s completed with error %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v15, -1, -1);
    MEMORY[0x245CCDDB0](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  sub_240A2A47C();
  v25 = *(v0 + 16);
  v26 = *(v0 + 32);
  *(v23 + 32) = *(v0 + 48);
  *v23 = v25;
  *(v23 + 16) = v26;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  *(v0 + 104) = v24;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  *(v0 + 112) = v24;
  swift_getKeyPath();
  sub_240A2970C();

  swift_beginAccess();
  sub_240A2A35C();
  swift_endAccess();
  *(v0 + 120) = v24;
  swift_getKeyPath();
  sub_240A296FC();

  v27 = *(v0 + 8);

  return v27();
}

void sub_2409B73CC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v29 = sub_240A2BF4C();
  v30 = v7;
  sub_240A2C44C();
  if (*(a1 + 16) && (v8 = sub_240925A94(v31), (v9 & 1) != 0))
  {
    sub_240913DC0(*(a1 + 56) + 32 * v8, v32);
    sub_2409266D4(v31);
    if (swift_dynamicCast())
    {
      v11 = v29;
      v10 = v30;
      if (v11 == sub_240A2BF4C() && v10 == v12)
      {

LABEL_17:
        v23 = sub_240A2C24C();
        (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
        sub_240A2C21C();
        v24 = v2;
        v25 = sub_240A2C20C();
        v26 = swift_allocObject();
        v27 = MEMORY[0x277D85700];
        v26[2] = v25;
        v26[3] = v27;
        v26[4] = v24;
        sub_2409230D4(0, 0, v6, &unk_240A35740, v26);

        return;
      }

      v14 = sub_240A2C66C();

      if (v14)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    sub_2409266D4(v31);
  }

  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v15 = sub_240A2B00C();
  __swift_project_value_buffer(v15, qword_27E50DC00);

  v16 = sub_240A2AFFC();
  v17 = sub_240A2C29C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31[0] = v19;
    *v18 = 136315138;
    v20 = sub_240A2BECC();
    v22 = sub_240925464(v20, v21, v31);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_2408FE000, v16, v17, "AgeMigrationView RemoteUI handled button %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x245CCDDB0](v19, -1, -1);
    MEMORY[0x245CCDDB0](v18, -1, -1);
  }
}

uint64_t sub_2409B7734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[9] = sub_240A2A33C();
  v4[10] = swift_task_alloc();
  sub_240A2C21C();
  v4[11] = sub_240A2C20C();
  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409B77FC, v6, v5);
}

uint64_t sub_2409B77FC()
{

  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50DC00);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "User did not agree to family or iCloud terms. Tearing down flow", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[8];

  *v5 = xmmword_240A315B0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v0[5] = v6;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v0[6] = v6;
  swift_getKeyPath();
  sub_240A2970C();

  swift_beginAccess();
  sub_240A2A35C();
  swift_endAccess();
  v0[7] = v6;
  swift_getKeyPath();
  sub_240A296FC();

  v7 = v0[1];

  return v7();
}

uint64_t sub_2409B7AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[13] = sub_240A2A33C();
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCD0, &qword_240A33AF0);
  v4[15] = swift_task_alloc();
  v5 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  sub_240A2C21C();
  v4[19] = sub_240A2C20C();
  v7 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409B7C3C, v7, v6);
}

uint64_t sub_2409B7C3C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[12];

  swift_getKeyPath();
  v0[8] = v4;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v5 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__serverUIContext;
  swift_beginAccess();
  sub_240919298(v4 + v5, v3, &unk_27E50DCD0, &qword_240A33AF0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_240919300(v0[15], &unk_27E50DCD0, &qword_240A33AF0);
LABEL_10:
    if (qword_27E50AF70 != -1)
    {
      swift_once();
    }

    v14 = sub_240A2B00C();
    __swift_project_value_buffer(v14, qword_27E50DC00);
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C29C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2408FE000, v15, v16, "RemoteUI dismissed early, probably because user cancelled. Tearing down flow.", v17, 2u);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

    v18 = v0[14];
    v19 = v0[12];

    *v18 = xmmword_240A315B0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[9] = v19;
    sub_240A296EC();

    v0[10] = v19;
    swift_getKeyPath();
    sub_240A2970C();

    swift_beginAccess();
    sub_240A2A35C();
    swift_endAccess();
    v0[11] = v19;
    swift_getKeyPath();
    sub_240A296FC();

    goto LABEL_15;
  }

  v6 = v0[18];
  v7 = v0[16];
  sub_2409B8550(v0[15], v6);
  if (*(v6 + *(v7 + 40)) != 1)
  {
    sub_2409B9164(v0[18], type metadata accessor for AgeMigrationViewModel.ServerUIContext);
    goto LABEL_10;
  }

  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v8 = sub_240A2B00C();
  __swift_project_value_buffer(v8, qword_27E50DC00);
  v9 = sub_240A2AFFC();
  v10 = sub_240A2C29C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[18];
  if (v11)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2408FE000, v9, v10, "Ignoring dismiss message after migration flow completion because we want to continue to family server flow", v13, 2u);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  sub_2409B9164(v12, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
LABEL_15:

  v20 = v0[1];

  return v20();
}

uint64_t sub_2409B8378(uint64_t a1)
{
  result = sub_240A2946C();
  if (v2 <= 0x3F)
  {
    result = sub_2409194E8(319, &unk_27E50DCC0, 0x277CCAD38);
    if (v3 <= 0x3F)
    {
      result = sub_240A2986C();
      if (v4 <= 0x3F)
      {
        result = sub_240A298BC();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2409B8454(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240915E50;

  return sub_2409B7AE0(a1, v4, v5, v6);
}

uint64_t sub_2409B8508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2409B8550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409B85E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240916360;

  return sub_2409B7734(a1, v4, v5, v6);
}

uint64_t sub_2409B869C(uint64_t a1)
{
  v4 = *(sub_240A2946C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_240916360;

  return sub_2409B6DF4(a1, v7, v8, v1 + v5, v9, v10);
}

char *sub_2409B87D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v11 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelUpdate;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7A0, &qword_240A33100);
  v13 = *(*(v12 - 8) + 56);
  v13(&a5[v11], 1, 1, v12);
  v13(&a5[v11], 1, 1, v12);
  v14 = &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender];
  *v14 = 0;
  v14[1] = 0;
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v16 = result;
    v33 = sub_2409194E8(0, &unk_27E50DD80, 0x277CF02F0);
    v34 = MEMORY[0x277CEDE68];
    *&v32 = v16;
    sub_24090C218(&v32, &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__urlBag]);
    v17 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__serverUIContext;
    v18 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
    v19 = *(*(v18 - 8) + 56);
    v19(&a5[v17], 1, 1, v18);
    v19(&a5[v17], 1, 1, v18);
    *&a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter] = 0;
    v20 = &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate];
    *&a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *(v20 + 1) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    sub_240A2971C();
    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v21 = result;
      v22 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

      *&a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager] = v22;
      v23 = &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel_ageMigrationController];
      *v23 = a1;
      v23[1] = a7;
      v24 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
      v25 = sub_240A2A39C();
      v26 = *(v25 - 8);
      (*(v26 + 16))(&a5[v24], a2, v25);
      swift_unknownObjectRetain();
      sub_240964BB4(v20);
      *(v20 + 1) = a4;
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay] = 0;
      v31.receiver = a5;
      v31.super_class = type metadata accessor for AgeMigrationViewModel(0);
      v27 = objc_msgSendSuper2(&v31, sel_init);
      swift_getKeyPath();
      *&v32 = v27;
      sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
      v28 = v27;
      sub_240A296EC();

      v29 = *&v28[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager];
      [v29 setDelegate_];

      (*(v26 + 8))(a2, v25);
      return v28;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2409B8BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7A0, &qword_240A33100);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD28, &qword_240A35808);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD70, &qword_240A358F8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_240919298(a1, &v21 - v13, &qword_27E50DD28, &qword_240A35808);
  sub_240919298(a2, &v14[v15], &qword_27E50DD28, &qword_240A35808);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_240919298(v14, v10, &qword_27E50DD28, &qword_240A35808);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_2409B9580();
      v18 = sub_240A2BF0C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_240919300(v14, &qword_27E50DD28, &qword_240A35808);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_240919300(v14, &qword_27E50DD70, &qword_240A358F8);
    v17 = 1;
    return v17 & 1;
  }

  sub_240919300(v14, &qword_27E50DD28, &qword_240A35808);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_2409B8EC4(const char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, char *, uint64_t, void *))
{
  v8 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v12 = sub_240A2B00C();
  __swift_project_value_buffer(v12, qword_27E50DC00);
  v13 = sub_240A2AFFC();
  v14 = sub_240A2C29C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2408FE000, v13, v14, a1, v15, 2u);
    MEMORY[0x245CCDDB0](v15, -1, -1);
  }

  v16 = sub_240A2C24C();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_240A2C21C();
  v17 = v8;
  v18 = sub_240A2C20C();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  a4(0, 0, v11, a3, v19);
}

uint64_t sub_2409B90B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240916360;

  return sub_2409B6024(a1, v4, v5, v6);
}

uint64_t sub_2409B9164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2409B91C4()
{
  result = qword_27E50DCF8;
  if (!qword_27E50DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DCF8);
  }

  return result;
}

uint64_t sub_2409B9314()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_24090C23C(v1, v2);
  return sub_24090C1A0(v4, v5);
}

uint64_t sub_2409B936C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_240915E50;

  return sub_2409AF56C();
}

void sub_2409B9464()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter) = v2;
  v4 = v2;
}

void sub_2409B94A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager) = v2;
  v4 = v2;
}

uint64_t sub_2409B94E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2409B9580()
{
  result = qword_27E50DD78;
  if (!qword_27E50DD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50C7A0, &qword_240A33100);
    sub_2409B8508(&unk_27E50DD50, MEMORY[0x277CED960], MEMORY[0x277CED968]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DD78);
  }

  return result;
}

uint64_t type metadata accessor for DiscoveredView(uint64_t a1)
{
  result = qword_27E50DDB0;
  if (!qword_27E50DDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2409B96F4(uint64_t a1)
{
  sub_2409B9840(319, &qword_27E50DDC0, MEMORY[0x277CED678], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_24093CF64();
    if (v2 <= 0x3F)
    {
      sub_2409B9840(319, &qword_27E50BD80, MEMORY[0x277CED648], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2409B9840(319, &unk_27E50BD88, type metadata accessor for AKUserAgeRange, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2409B9840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2409B98C0()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50DD90);
  __swift_project_value_buffer(v0, qword_27E50DD90);
  return sub_240A2AE9C();
}

uint64_t sub_2409B990C@<X0>(void *a1@<X8>)
{
  v51 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x28223BE20](v2);
  v41 = &v39 - v3;
  v48 = type metadata accessor for PairingView(0);
  MEMORY[0x28223BE20](v48);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDC8, &qword_240A35988);
  MEMORY[0x28223BE20](v49);
  v50 = &v39 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDD0, &qword_240A35990);
  MEMORY[0x28223BE20](v43);
  v44 = (&v39 - v7);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDD8, &qword_240A35998);
  MEMORY[0x28223BE20](v46);
  v47 = &v39 - v8;
  v9 = sub_240A29EFC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v15 = sub_240A29E6C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v42 = v2;
  v45 = v1;
  MEMORY[0x245CCC9B0](v2);
  sub_240A29E0C();
  v22 = *(v16 + 8);
  v22(v21, v15);
  v23 = (*(v10 + 88))(v14, v9);
  if (v23 != *MEMORY[0x277CED6A0])
  {
    if (v23 == *MEMORY[0x277CED698] || v23 == *MEMORY[0x277CED6A8])
    {
      (*(v10 + 8))(v14, v9);
      goto LABEL_6;
    }

    if (v23 != *MEMORY[0x277CED6B0])
    {
      if (v23 == *MEMORY[0x277CED6B8])
      {
        (*(v10 + 8))(v14, v9);
      }

      else if (v23 != *MEMORY[0x277CED690])
      {
        v52 = 0;
        v53 = 0xE000000000000000;
        sub_240A2C47C();
        MEMORY[0x245CCCD90](0xD000000000000027, 0x8000000240A3DD30);
        MEMORY[0x245CCC9B0](v42);
        v38 = v40;
        sub_240A29E0C();
        v22(v19, v15);
        sub_240A2C57C();
        (*(v10 + 8))(v38, v9);
        result = sub_240A2C58C();
        __break(1u);
        return result;
      }

      sub_2409BA178(&v52);
      v32 = v52;
      v33 = v53;
      v34 = v55;
      v35 = v54;
      v36 = v44;
      *v44 = v52;
      v36[1] = v33;
      *(v36 + 8) = v35;
      *(v36 + 18) = v34;
      swift_storeEnumTagMultiPayload();
      sub_2409BD3C0(v32, v33, v35, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDE0, &qword_240A359F8);
      sub_2409BD084();
      sub_2409BE3BC(&qword_27E50C160, type metadata accessor for PairingView, &unk_240A37C7C);
      v37 = v47;
      sub_240A2B6EC();
      sub_2409BD294(v37, v50);
      swift_storeEnumTagMultiPayload();
      sub_2409BD304();
      sub_240A2B6EC();
      sub_2409BD3D0(v32, v33, v35, v34);
      return sub_240919300(v37, &qword_27E50DDD8, &qword_240A35998);
    }
  }

  (*(v10 + 96))(v14, v9);

  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  v25 = sub_240A2A0DC();
  (*(*(v25 - 8) + 8))(&v14[v24], v25);
LABEL_6:
  v26 = v41;
  v27 = v45;
  sub_240A2BD1C();
  swift_getKeyPath();
  sub_240A2BD0C();

  sub_240919300(v26, &qword_27E50DDA8, &unk_240A35910);
  LOBYTE(v27) = *(v27 + *(type metadata accessor for DiscoveredView(0) + 24));
  v28 = v48;
  v29 = *(v48 + 24);
  *&v5[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v5[*(v28 + 20)] = v27;
  sub_2409BD3E4(v5, v44, type metadata accessor for PairingView);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDE0, &qword_240A359F8);
  sub_2409BD084();
  sub_2409BE3BC(&qword_27E50C160, type metadata accessor for PairingView, &unk_240A37C7C);
  v30 = v47;
  sub_240A2B6EC();
  sub_2409BD294(v30, v50);
  swift_storeEnumTagMultiPayload();
  sub_2409BD304();
  sub_240A2B6EC();
  sub_240919300(v30, &qword_27E50DDD8, &qword_240A35998);
  return sub_240940380(v5);
}

void *sub_2409BA178@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_240A29DBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for DiscoveredView(0);
  sub_240945D78(v5);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CED638] || v6 == *MEMORY[0x277CED630])
  {
    sub_2409BAC44(&v18);
    *&v15 = v18;
    *(&v15 + 1) = BYTE8(v18);
    v16 = 0;
    v17 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDF8, &qword_240A35A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE08, &qword_240A35A08);
    sub_2409BD110();
    sub_2409BD18C();
    result = sub_240A2B6EC();
    v9 = v18;
    v10 = v19;
    v11 = v20;
  }

  else
  {
    v12 = sub_240A2A0EC();
    if (v12)
    {
      sub_2409BA528(&v18);
      v15 = v18;
      v16 = v19;
    }

    else
    {
      sub_2409BA80C(&v18);
      v15 = v18;
      LOBYTE(v16) = v19;
      HIBYTE(v16) = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE18, &qword_240A35A10);
    sub_2409BD210();
    sub_240A2B6EC();
    if (HIBYTE(v19))
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    v15 = v18;
    v16 = v13 | v19;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDF8, &qword_240A35A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE08, &qword_240A35A08);
    sub_2409BD110();
    sub_2409BD18C();
    sub_240A2B6EC();
    v14 = v18;
    v10 = v19;
    v11 = v20;
    result = (*(v3 + 8))(v5, v2);
    v9 = v14;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 18) = v11;
  return result;
}

uint64_t sub_2409BA460(uint64_t a1)
{
  v2 = sub_240A29EFC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_240A29E1C();
}

uint64_t sub_2409BA528@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v1 = type metadata accessor for DiscoveredView(0);
  v18 = *(v1 - 8);
  v2 = *(v18 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v17 = sub_240A2BFDC();
  *&v22 = v17;
  *(&v22 + 1) = v3;
  *&v23 = sub_240A2BFDC();
  *(&v23 + 1) = v4;
  v24 = 0xD00000000000001DLL;
  v25 = 0x8000000240A3DEB0;
  v26 = 0;
  v27 = 0;
  v28 = [objc_opt_self() systemBlueColor];
  v29 = xmmword_240A35900;
  v30 = 0;
  v31 = sub_240A2C06C();
  v32 = v5;
  v33 = sub_240A2C06C();
  v34 = v6;
  v35 = 0;
  v36 = 0;
  sub_2409BD3E4(v19, &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiscoveredView);
  v7 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v8 = swift_allocObject();
  sub_2409BD44C(&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = objc_allocWithZone(type metadata accessor for StartCardViewController());
  v10 = sub_240A1D920(&v22, 0, 0, sub_2409BD660, v8);
  v21 = 1;
  sub_240A2BD3C();
  v11 = v22;
  v12 = v23;
  *&v22 = v10;
  *(&v22 + 1) = MEMORY[0x277D84F90];
  v23 = v11;
  LOBYTE(v24) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE48, &qword_240A35A28);
  sub_2409BD678(&qword_27E50DE50, &qword_27E50DE48, &qword_240A35A28);
  v13 = sub_240A2BCDC();
  v14 = sub_240A2B88C();
  result = sub_240A2B3AC();
  v16 = v20;
  *v20 = v13;
  v16[1] = result;
  *(v16 + 16) = v14;
  return result;
}

uint64_t sub_2409BA80C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DiscoveredView(0);
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = v5;
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A29DBC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_240A2B52C();
  v12 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2 + *(v4 + 36);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    v43 = *v16;
  }

  else
  {
    v32 = v12;
    v33 = v8;
    v18 = v13;

    sub_240A2C2BC();
    v19 = sub_240A2B84C();
    v34 = v6;
    v20 = a1;
    v21 = v19;
    sub_240A2AFEC();

    a1 = v20;
    v6 = v34;
    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24090C1E4(v17, 0);
    (*(v18 + 8))(v15, v32);
    v8 = v33;
  }

  sub_240945D78(v10);
  v22 = sub_2409BB534(v44);
  (*(v8 + 8))(v10, v7, v22);
  sub_2409BD3E4(v2, v6, type metadata accessor for DiscoveredView);
  v23 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v24 = swift_allocObject();
  sub_2409BD44C(v6, v24 + v23);
  v25 = objc_allocWithZone(type metadata accessor for StartCardViewController());
  v26 = sub_240A1D920(v44, 0, 0, sub_2409BE330, v24);
  v42 = 1;
  sub_240A2BD3C();
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v37 = v26;
  v38 = MEMORY[0x277D84F90];
  v39 = v27;
  v40 = v28;
  v41 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE48, &qword_240A35A28);
  sub_2409BD678(&qword_27E50DE50, &qword_27E50DE48, &qword_240A35A28);
  v30 = sub_240A2BCDC();
  LOBYTE(v23) = sub_240A2B88C();
  result = sub_240A2B3AC();
  *a1 = v30;
  *(a1 + 8) = result;
  *(a1 + 16) = v23;
  return result;
}

void *sub_2409BAC44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_240A29DBC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DiscoveredView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = v1 + *(v11 + 20);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v33) = v15;
  *(&v33 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  sub_240A2BC5C();
  if (v30 == 1)
  {
    sub_2409BB91C(&v33);
    v30 = v33;
    v31 = v34;
    v32 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE38, &qword_240A35A20);
    sub_2409BD678(&qword_27E50DE40, &qword_27E50DE38, &qword_240A35A20);
    *&v30 = sub_240A2BCDC();
    BYTE8(v30) = 0;
  }

  else
  {
    sub_2409BD3E4(v1, v13, type metadata accessor for DiscoveredView);
    v17 = *(v7 + 80);
    v29 = a1;
    v18 = (v17 + 16) & ~v17;
    v19 = swift_allocObject();
    sub_2409BD44C(v13, v19 + v18);
    sub_2409BD3E4(v1, v10, type metadata accessor for DiscoveredView);
    v20 = swift_allocObject();
    sub_2409BD44C(v10, v20 + v18);
    v21 = *(v1 + *(v6 + 24));
    sub_240945D78(v5);
    v22 = objc_allocWithZone(type metadata accessor for AuthenticateAccountsStartViewController());
    v23 = AuthenticateAccountsStartViewController.init(connect:listAccounts:flowKind:deviceClass:)(sub_2409BD4B0, v19, sub_2409BD4C8, v20, v21, v5);
    LOBYTE(v30) = 1;
    sub_240A2BD3C();
    v24 = v33;
    v25 = v34;
    *&v33 = v23;
    *(&v33 + 1) = MEMORY[0x277D84F90];
    v34 = v24;
    v35 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE28, &qword_240A35A18);
    sub_2409BD678(&qword_27E50DE30, &qword_27E50DE28, &qword_240A35A18);
    *&v30 = sub_240A2BCDC();
    BYTE8(v30) = 1;
    a1 = v29;
  }

  result = sub_240A2B6EC();
  v27 = BYTE8(v33);
  *a1 = v33;
  *(a1 + 8) = v27;
  return result;
}

uint64_t sub_2409BAFD4(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveredView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_240A2C24C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_2409BD3E4(a1, v5, type metadata accessor for DiscoveredView);
  sub_240A2C21C();
  v10 = sub_240A2C20C();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_2409BD44C(v5, v12 + v11);
  sub_2409230D4(0, 0, v8, &unk_240A35A38, v12);
}

uint64_t sub_2409BB1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_240A2AD8C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_240A2C21C();
  v4[6] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_2409BB294, v7, v6);
}

uint64_t sub_2409BB294()
{
  sub_240A2AD7C();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_2409BB348;
  v2 = v0[5];
  v3 = v0[2];

  return sub_2409BD7BC(v2, v3);
}

uint64_t sub_2409BB348()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2409BB4CC, v6, v5);
}

uint64_t sub_2409BB4CC()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_2409BB534@<D0>(uint64_t a3@<X8>)
{
  v4 = sub_240A29DBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_240A2C00C();
  v9 = v8;
  v10 = sub_240A2BFFC();
  v12 = v11;
  (*(v5 + 104))(v7, *MEMORY[0x277CED628], v4);
  sub_2409BE3BC(&qword_27E50DE60, MEMORY[0x277CED648], MEMORY[0x277CED658]);
  sub_240A2C13C();
  sub_240A2C13C();
  (*(v5 + 8))(v7, v4);
  if (v27 == v26)
  {
    v13 = 0xD000000000000016;
  }

  else
  {
    v13 = 0xD000000000000018;
  }

  if (v27 == v26)
  {
    v14 = "proximity_generic_iphone";
  }

  else
  {
    v14 = "_DEVICE_SUBTITLE";
  }

  v15 = v14 | 0x8000000000000000;
  v16 = sub_240A2C06C();
  v18 = v17;
  v19 = sub_240A2C06C();
  v21 = v20;
  v22 = [objc_opt_self() labelColor];
  *a3 = v25;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  *(a3 + 40) = v15;
  *(a3 + 48) = 0;
  *(a3 + 56) = 2;
  *(a3 + 64) = v22;
  *&result = 3;
  *(a3 + 72) = xmmword_240A35900;
  *(a3 + 88) = 0;
  *(a3 + 96) = v16;
  *(a3 + 104) = v18;
  *(a3 + 112) = v19;
  *(a3 + 120) = v21;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  return result;
}

uint64_t sub_2409BB7B0()
{
  v0 = sub_240A29E6C();
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27E50AF78 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50DD90);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "User chose to connect. Updating model", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0]();
  sub_240A29E2C();
  return sub_240A2BCFC();
}

uint64_t sub_2409BB91C@<X0>(void *a1@<X8>)
{
  v53 = a1;
  v1 = type metadata accessor for DiscoveredView(0);
  v49 = *(v1 - 8);
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v1);
  v47 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_240A29DBC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = [objc_allocWithZone(MEMORY[0x277D43340]) init];
  v60[0] = 1;
  sub_240A2BD3C();
  v51 = v55;
  v52 = aBlock;
  v48 = v56;
  sub_240945D78(v6);
  sub_240A2C05C();
  v8 = *(v4 + 8);
  v8(v6, v3);
  sub_240A2C06C();

  v9 = sub_240A2BF1C();

  [v7 setTitle_];

  v10 = v46[1];
  v11 = v47;
  sub_240945D78(v6);
  sub_240A2C05C();
  v8(v6, v3);
  sub_240A2C06C();

  v12 = sub_240A2BF1C();

  [v7 setSubtitle_];

  v50 = v7;
  [v7 setDismissalType_];
  sub_2409BD3E4(v10, v11, type metadata accessor for DiscoveredView);
  v13 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v14 = swift_allocObject();
  sub_2409BD44C(v11, v14 + v13);
  v60[0] = v48;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2409BD4E0;
  *(v15 + 24) = v14;

  v16 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_240937BAC(0, v16[2] + 1, 1, v16);
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_240937BAC((v17 > 1), v18 + 1, 1, v16);
  }

  v16[2] = v18 + 1;
  v19 = &v16[2 * v18];
  v19[4] = sub_24093A2A0;
  v19[5] = v15;
  v20 = v60[0];
  sub_2409BD3E4(v10, v11, type metadata accessor for DiscoveredView);
  v21 = swift_allocObject();
  sub_2409BD44C(v11, v21 + v13);
  LOBYTE(aBlock) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2409BD4F8;
  *(v22 + 24) = v21;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_240937BAC(0, v16[2] + 1, 1, v16);
  }

  v24 = v16[2];
  v23 = v16[3];
  if (v24 >= v23 >> 1)
  {
    v16 = sub_240937BAC((v23 > 1), v24 + 1, 1, v16);
  }

  v16[2] = v24 + 1;
  v25 = &v16[2 * v24];
  v25[4] = sub_24093A8F0;
  v25[5] = v22;
  v26 = aBlock;
  sub_2409BD3E4(v10, v11, type metadata accessor for DiscoveredView);
  v27 = swift_allocObject();
  sub_2409BD44C(v11, v27 + v13);
  v60[0] = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2409BD594;
  *(v28 + 24) = v27;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_240937BAC(0, v16[2] + 1, 1, v16);
  }

  v30 = v16[2];
  v29 = v16[3];
  if (v30 >= v29 >> 1)
  {
    v16 = sub_240937BAC((v29 > 1), v30 + 1, 1, v16);
  }

  v16[2] = v30 + 1;
  v31 = &v16[2 * v30];
  v31[4] = sub_24093A8F0;
  v31[5] = v28;
  v32 = v60[0];
  sub_240A2C06C();
  sub_2409BD3E4(v10, v11, type metadata accessor for DiscoveredView);
  v33 = swift_allocObject();
  sub_2409BD44C(v11, v33 + v13);
  v34 = swift_allocObject();
  v35 = v50;
  swift_unknownObjectUnownedInit();
  v36 = swift_allocObject();
  v36[2] = sub_2409BD5AC;
  v36[3] = v33;
  v36[4] = v34;
  v37 = v35;

  v38 = sub_240A2BF1C();

  v58 = sub_2409977DC;
  v59 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v56 = sub_2409DFF20;
  v57 = &block_descriptor_15;
  v39 = _Block_copy(&aBlock);
  v40 = [objc_opt_self() actionWithTitle:v38 style:0 handler:v39];

  _Block_release(v39);

  v41 = v37;

  v44 = v52;
  v43 = v53;
  *v53 = v41;
  v43[1] = v16;
  v45 = v51;
  v43[2] = v44;
  v43[3] = v45;
  *(v43 + 32) = v32;
  return result;
}

uint64_t sub_2409BC108()
{
  v0 = sub_240A29E6C();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0]();
  sub_240A29E2C();
  return sub_240A2BCFC();
}

uint64_t sub_2409BC1B8(uint64_t a1)
{
  sub_240A2BE1C();
  sub_240A2B2DC();
}

uint64_t sub_2409BC224(uint64_t a1)
{
  type metadata accessor for DiscoveredView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  return sub_240A2BC6C();
}

uint64_t sub_2409BC2A0(void *a1)
{
  v27 = a1;
  v26 = sub_240A299DC();
  v1 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_240A29E6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_240A29A0C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0](v15);
  sub_240A29E5C();
  (*(v5 + 8))(v7, v4);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_240919300(v10, &unk_27E50C790, &unk_240A35770);
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_240A299FC();
  sub_240A299CC();
  v18 = v17;
  (*(v1 + 8))(v3, v26);
  if (!v18)
  {
    sub_240A2C06C();
  }

  v19 = sub_240A2BF1C();
  v20 = [objc_opt_self() systemImageNamed_];

  v21 = [objc_opt_self() systemBlueColor];
  v22 = objc_allocWithZone(MEMORY[0x277D43338]);
  v23 = sub_240A2BF1C();
  v24 = sub_240A2BF1C();

  v25 = [v22 initWithTitle:v23 detailText:v24 icon:v20 tintColor:v21 valueChangedBlock:0];

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2409BC6D4(void *a1)
{
  v28 = a1;
  v27 = sub_240A299DC();
  v1 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_240A29E6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_240A29A0C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0](v15);
  sub_240A29E5C();
  (*(v5 + 8))(v7, v4);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_240919300(v10, &unk_27E50C790, &unk_240A35770);
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_240A299FC();
  sub_240A299CC();
  v18 = v17;
  (*(v1 + 8))(v3, v27);
  v19 = v14;
  if (!v18)
  {
    sub_240A2C06C();
  }

  v20 = sub_240A2BF1C();
  v21 = [objc_opt_self() _systemImageNamed_];

  v22 = [objc_opt_self() systemBlueColor];
  v23 = objc_allocWithZone(MEMORY[0x277D43338]);
  v24 = sub_240A2BF1C();
  v25 = sub_240A2BF1C();

  v26 = [v23 initWithTitle:v24 detailText:v25 icon:v21 tintColor:v22 valueChangedBlock:0];

  return (*(v12 + 8))(v19, v11);
}

uint64_t sub_2409BCB0C(void *a1)
{
  v27 = a1;
  v26 = sub_240A299DC();
  v1 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_240A29E6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_240A29A0C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0](v15);
  sub_240A29E5C();
  (*(v5 + 8))(v7, v4);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_240919300(v10, &unk_27E50C790, &unk_240A35770);
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_240A299FC();
  sub_240A299CC();
  v18 = v17;
  (*(v1 + 8))(v3, v26);
  if (!v18)
  {
    sub_240A2C06C();
  }

  v19 = sub_240A2BF1C();
  v20 = [objc_opt_self() _systemImageNamed_];

  v21 = [objc_opt_self() systemBlueColor];
  v22 = objc_allocWithZone(MEMORY[0x277D43338]);
  v23 = sub_240A2BF1C();
  v24 = sub_240A2BF1C();

  v25 = [v22 initWithTitle:v23 detailText:v24 icon:v20 tintColor:v21 valueChangedBlock:0];

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2409BCF50(void *a1, void *a2)
{
  v4 = sub_240A29E6C();
  MEMORY[0x28223BE20](v4 - 8);
  [a2 setEnabled_];
  [a1 setDismissalType_];
  sub_240A2C06C();
  v5 = sub_240A2BF1C();

  [a1 showActivityIndicatorWithStatus_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0]();
  sub_240A29E2C();
  return sub_240A2BCFC();
}

unint64_t sub_2409BD084()
{
  result = qword_27E50DDE8;
  if (!qword_27E50DDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50DDE0, &qword_240A359F8);
    sub_2409BD110();
    sub_2409BD18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DDE8);
  }

  return result;
}

unint64_t sub_2409BD110()
{
  result = qword_27E50DDF0;
  if (!qword_27E50DDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50DDF8, &qword_240A35A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DDF0);
  }

  return result;
}

unint64_t sub_2409BD18C()
{
  result = qword_27E50DE00;
  if (!qword_27E50DE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50DE08, &qword_240A35A08);
    sub_2409BD210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DE00);
  }

  return result;
}

unint64_t sub_2409BD210()
{
  result = qword_27E50DE10;
  if (!qword_27E50DE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50DE18, &qword_240A35A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DE10);
  }

  return result;
}

uint64_t sub_2409BD294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDD8, &qword_240A35998);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2409BD304()
{
  result = qword_27E50DE20;
  if (!qword_27E50DE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50DDD8, &qword_240A35998);
    sub_2409BD084();
    sub_2409BE3BC(&qword_27E50C160, type metadata accessor for PairingView, &unk_240A37C7C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DE20);
  }

  return result;
}

uint64_t sub_2409BD3C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return j__swift_retain(a1);
  }

  else
  {
  }
}

uint64_t sub_2409BD3D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return j__swift_release(a1);
  }

  else
  {
  }
}

uint64_t sub_2409BD3E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2409BD44C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveredView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409BD510(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DiscoveredView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2409BD5AC(void *a1, void *a2)
{
  type metadata accessor for DiscoveredView(0);

  return sub_2409BCF50(a1, a2);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2409BD678(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2409BD6CC(uint64_t a1)
{
  v4 = *(type metadata accessor for DiscoveredView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240915E50;

  return sub_2409BB1A0(a1, v6, v7, v1 + v5);
}

uint64_t sub_2409BD7BC(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  sub_240A29E6C();
  v2[5] = swift_task_alloc();
  v3 = sub_240A29DBC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_240A2AD8C();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v2[11] = swift_task_alloc();
  (*(v5 + 16))();
  sub_240A2C21C();
  v2[12] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v2[13] = v7;
  v2[14] = v6;

  return MEMORY[0x2822009F8](sub_2409BD968, v7, v6);
}